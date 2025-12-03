@interface MFSMTPDelivery
+ (id)log;
- (id)deliverMessageData:(id)data toRecipients:(id)recipients;
- (void)_openConnection;
- (void)setAccount:(id)account;
@end

@implementation MFSMTPDelivery

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__MFSMTPDelivery_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_38 != -1)
  {
    dispatch_once(&log_onceToken_38, block);
  }

  v2 = log_log_38;

  return v2;
}

void __21__MFSMTPDelivery_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_38;
  log_log_38 = v1;
}

- (void)_openConnection
{
  if (![(MFConnection *)self->_connection isValid])
  {
    v3 = [(DeliveryAccount *)self->super._account authenticatedConnection:(*(&self->super + 104) >> 1) & 1];
    connection = self->_connection;
    self->_connection = v3;
  }
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  v5 = accountCopy;
  connection = self->_connection;
  if (connection && self->super._account != accountCopy)
  {
    self->_connection = 0;
  }

  v7.receiver = self;
  v7.super_class = MFSMTPDelivery;
  [(MFMailDelivery *)&v7 setAccount:v5];
}

- (id)deliverMessageData:(id)data toRecipients:(id)recipients
{
  v92[6] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  recipientsCopy = recipients;
  hostname = [(MFAccount *)self->super._account hostname];
  v89 = 1030;
  v88 = 0;
  v81 = +[MFActivityMonitor currentMonitor];
  [v81 resetConnectionStats];
  v76 = [objc_alloc(MEMORY[0x1E699B310]) initWithDomain:21 type:21];
  [v76 startActivity];
  if (![(MFConnection *)self->_connection isValid])
  {
    [(MFSMTPDelivery *)self _openConnection];
  }

  if (hostname)
  {
    v6 = 0;
  }

  else
  {
    v89 = 1044;
    v6 = MFLookupLocalizedString(@"NO_SMTP_HOST", @"You have not specified an SMTP server in Mail Preferences. You must specify a server before you can send mail.", @"Delayed");
  }

  if ([(MFConnection *)self->_connection isValid])
  {
    connection = self->_connection;
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [(MFSMTPConnection *)connection setDelegate:WeakRetained];

    v9 = objc_loadWeakRetained(&self->super._delegate);
    [v9 setPercentDone:0.1];

    if (!hostname)
    {
      v22 = 0;
      v23 = 0;
      v78 = 0;
      v24 = 1;
      goto LABEL_30;
    }

    headers = [(MFMailMessage *)self->super._message headers];
    copyAddressListForResentFrom = [headers copyAddressListForResentFrom];
    if (![copyAddressListForResentFrom count])
    {
      goto LABEL_21;
    }

    v12 = [copyAddressListForResentFrom objectAtIndex:0];
    emailAddressValue = [v12 emailAddressValue];
    simpleAddress = [emailAddressValue simpleAddress];
    v15 = simpleAddress;
    if (simpleAddress)
    {
      stringValue = simpleAddress;
    }

    else
    {
      stringValue = [v12 stringValue];
    }

    v25 = stringValue;

    if (v25)
    {
      v79 = v25;
      if (![v25 isEqualToString:&stru_1F273A5E0])
      {
        v26 = v25;
LABEL_29:
        v78 = v26;
        v34 = [v26 dataUsingEncoding:1];
        v23 = v34 == 0;

        v24 = 0;
        v22 = 1;
        goto LABEL_30;
      }
    }

    else
    {
LABEL_21:
      v79 = 0;
    }

    senders = [(MFMailMessage *)self->super._message senders];

    if ([senders count])
    {
      v28 = [senders objectAtIndex:0];
      emailAddressValue2 = [v28 emailAddressValue];
      simpleAddress2 = [emailAddressValue2 simpleAddress];
      v31 = simpleAddress2;
      if (simpleAddress2)
      {
        stringValue2 = simpleAddress2;
      }

      else
      {
        stringValue2 = [v28 stringValue];
      }

      v33 = stringValue2;
    }

    else
    {
      v33 = 0;
      v28 = v79;
    }

    copyAddressListForResentFrom = senders;
    v26 = v33;
    goto LABEL_29;
  }

  error = [v81 error];

  if (!error)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = MFLookupLocalizedString(@"SMTP_NO_CONNECTION", @"The connection to the outgoing server “%@” failed. Additional Outgoing Mail Servers can be configured for Mail accounts in Settings > Apps > Mail > Accounts.", @"Delayed");
    v20 = [v18 stringWithFormat:v19, hostname];

    v89 = 1051;
    v6 = v20;
  }

  v21 = +[MFSMTPDelivery log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [MFSMTPDelivery deliverMessageData:v21 toRecipients:?];
  }

  v22 = 0;
  v23 = 0;
  v78 = 0;
  v24 = 5;
LABEL_30:
  v35 = *MEMORY[0x1E699B098];
  v92[0] = *MEMORY[0x1E699B180];
  v92[1] = v35;
  v36 = *MEMORY[0x1E699B170];
  v92[2] = *MEMORY[0x1E699B088];
  v92[3] = v36;
  v37 = *MEMORY[0x1E699B150];
  v92[4] = *MEMORY[0x1E699B158];
  v92[5] = v37;
  v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:6];
  headersForDelivery = [(MFMailDelivery *)self headersForDelivery];
  headersRequiringSMTPUTF8Support = [headersForDelivery headersRequiringSMTPUTF8Support];

  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __50__MFSMTPDelivery_deliverMessageData_toRecipients___block_invoke;
  v86[3] = &unk_1E7AA66D0;
  v72 = v73;
  v87 = v72;
  if ((v23 | [headersRequiringSMTPUTF8Support ef_any:v86]))
  {
    if (![(MFSMTPConnection *)self->_connection supportsSMTPUTF8])
    {
      v60 = +[MFSMTPDelivery log];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        message = self->super._message;
        *buf = 138412290;
        v91 = message;
        _os_log_impl(&dword_1B0389000, v60, OS_LOG_TYPE_DEFAULT, "SMTPUTF8 is not supported: %@", buf, 0xCu);
      }

      v42 = MFLookupLocalizedString(@"SMTP_SENDING_FAILED_TITLE", @"Unable to Send Email", @"Delayed");
      if (v23)
      {
        v62 = 1047;
      }

      else
      {
        v62 = 1049;
      }

      v89 = v62;
      if (v23)
      {
        MFLookupLocalizedString(@"SMTP_INVALID_SENDER_ADDRESS", @"The sender address “%@” was rejected by the server.", @"Delayed");
      }

      else
      {
        MFLookupLocalizedString(@"MF_SMTP_RECIPIENT_INVALID_ADDRESS", @"The recipient “%@” was rejected by the server because it is not a valid email address.", @"Delayed");
      }
      v46 = ;
      v24 = 1;
      goto LABEL_52;
    }

    v39 = +[MFSMTPDelivery log];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = self->super._message;
      *buf = 138412290;
      v91 = v40;
      _os_log_impl(&dword_1B0389000, v39, OS_LOG_TYPE_DEFAULT, "Enabling SMTPUTF8 support for message delivery: %@", buf, 0xCu);
    }

    v41 = 0;
    if (!v22)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v41 = 1;
    if (!v22)
    {
LABEL_35:
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0.0;
      v46 = v6;
      goto LABEL_53;
    }
  }

  maximumMessageBytes = [(MFSMTPConnection *)self->_connection maximumMessageBytes];
  if (maximumMessageBytes)
  {
    v48 = [dataCopy length];
    v49 = [dataCopy numberOfNewlinesNeedingConversion:0] + v48;
    if (maximumMessageBytes < v49)
    {
      v50 = MEMORY[0x1E696AEC0];
      v51 = MFLookupLocalizedString(@"MESSAGE_TOO_LARGE", @"Your message has size %@, which exceeds %@, the maximum allowed by the server.", @"Message");
      v52 = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:v49];
      v53 = [MEMORY[0x1E696AEC0] mf_stringRepresentationForBytes:maximumMessageBytes];
      v46 = [v50 stringWithFormat:v51, v52, v53];

      v42 = 0;
      v24 = 7;
      v6 = v51;
LABEL_52:

      v43 = 0;
      v44 = 0;
      v45 = 0.0;
      goto LABEL_53;
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(MFConnection *)self->_connection enableThroughputMonitoring:1];
  [(MFConnection *)self->_connection startActivity];
  v55 = self->_connection;
  v84 = v6;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v24 = [(MFSMTPConnection *)v55 mailFrom:v78 recipients:recipientsCopy withData:dataCopy host:hostname emailFormatStyle:v41 errorTitle:&v85 errorMessage:&v84 serverResponse:&v83 displayError:&v88 errorCode:&v89 errorUserInfo:&v82];
  v42 = v85;
  v46 = v84;

  v44 = v83;
  v43 = v82;
  [(MFConnection *)self->_connection stopActivity];
  [(MFConnection *)self->_connection enableThroughputMonitoring:0];
  v56 = CFAbsoluteTimeGetCurrent();
  [(DeliveryAccount *)self->super._account setSupportsOutboxCopy:0];
  v45 = v56 - Current;
  if (!v24)
  {
    account = [(MFMailDelivery *)self account];
    [account checkInConnection:self->_connection];

    v24 = 0;
    v58 = 1;
    if (v46)
    {
LABEL_56:
      v63 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:v89 localizedDescription:0 title:v42 userInfo:v43];
      if (v88 == 1)
      {
        v64 = MFLookupLocalizedString(@"FAILED_SEND_TITLE", @"Cannot Send Mail", @"Delayed");
        [v63 setShortDescription:v64];
      }

      [v63 setLocalizedDescription:v46];
      [v63 setMoreInfo:v44];
      v65 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v63 setUserInfoObject:v65 forKey:@"MailErrorHandlerDoNotSanitize"];

      [v81 setError:v63];
      v66 = +[MFSMTPDelivery log];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        messageID = [(MFMailMessage *)self->super._message messageID];
        ef_publicDescription = [v63 ef_publicDescription];
        [(MFSMTPDelivery *)messageID deliverMessageData:ef_publicDescription toRecipients:buf, v66];
      }

      goto LABEL_61;
    }

LABEL_42:
    v59 = 0;
    goto LABEL_62;
  }

LABEL_53:
  [(MFSMTPConnection *)self->_connection quit];
  if (v24 != 4)
  {
    v58 = 0;
    if (v46)
    {
      goto LABEL_56;
    }

    goto LABEL_42;
  }

  v63 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1028 localizedDescription:0];
  [v81 setError:v63];
  v58 = 0;
  v24 = 4;
LABEL_61:

  v59 = v46;
LABEL_62:
  v69 = [[MFDeliveryResult alloc] initWithStatus:v24];
  [(MFDeliveryResult *)v69 setDuration:v45];
  -[MFDeliveryResult setBytesSent:](v69, "setBytesSent:", [v81 bytesWritten]);
  [v76 stopActivityWithSuccess:v58];

  v70 = *MEMORY[0x1E69E9840];

  return v69;
}

- (void)deliverMessageData:(uint8_t *)buf toRecipients:(os_log_t)log .cold.2(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "SMTP Delivery for messageID %@ failed with error %{public}@", buf, 0x16u);
}

@end