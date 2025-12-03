@interface MFSMTPDelivery
- (id)deliverMessageData:(id)data toRecipients:(id)recipients;
- (void)_openConnection;
- (void)dealloc;
- (void)setAccount:(id)account;
@end

@implementation MFSMTPDelivery

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFSMTPDelivery;
  [(MFMailDelivery *)&v3 dealloc];
}

- (void)_openConnection
{
  if (![(MFConnection *)self->_connection isValid])
  {

    self->_connection = [(DeliveryAccount *)self->super._account authenticatedConnection:(*(&self->super + 112) >> 1) & 1];
  }
}

- (void)setAccount:(id)account
{
  connection = self->_connection;
  if (connection && self->super._account != account)
  {

    self->_connection = 0;
  }

  v6.receiver = self;
  v6.super_class = MFSMTPDelivery;
  [(MFMailDelivery *)&v6 setAccount:account];
}

- (id)deliverMessageData:(id)data toRecipients:(id)recipients
{
  hostname = [(MFAccount *)self->super._account hostname];
  v39 = 1030;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v8 = +[MFActivityMonitor currentMonitor];
  [v8 resetConnectionStats];
  if (![(MFConnection *)self->_connection isValid])
  {
    [(MFSMTPDelivery *)self _openConnection];
  }

  if (!hostname)
  {
    v39 = 1044;
    v10 = 0;
    v37 = MFLookupLocalizedString(@"NO_SMTP_HOST", @"You have not specified an SMTP server in Mail Preferences. You must specify a server before you can send mail.", @"Delayed");
    goto LABEL_13;
  }

  v9 = [-[MFMessage headers](self->super._message "headers")];
  if (![v9 count])
  {

LABEL_10:
    senders = [(MFMessage *)self->super._message senders];
    if ([senders count])
    {
      v10 = [objc_msgSend(senders objectAtIndex:{0), "mf_uncommentedAddress"}];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_13;
  }

  v10 = [objc_msgSend(v9 objectAtIndex:{0), "mf_uncommentedAddress"}];

  if (!v10 || [v10 isEqualToString:&stru_2869ED3E0])
  {
    goto LABEL_10;
  }

LABEL_13:
  if (![(MFConnection *)self->_connection isValid])
  {
    if (![v8 error])
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"SMTP_NO_CONNECTION", @"The connection to the outgoing server “%@” failed. Additional Outgoing Mail Servers can be configured for Mail accounts in Settings > Accounts & Passwords.", @"Delayed", hostname];
      v39 = 1051;
    }

    v20 = 5;
    goto LABEL_24;
  }

  [(MFSMTPConnection *)self->_connection setDelegate:self->super._delegate];
  [self->super._delegate setPercentDone:0.1];
  if (!hostname)
  {
    v20 = 1;
    goto LABEL_24;
  }

  recipientsCopy = recipients;
  maximumMessageBytes = [(MFSMTPConnection *)self->_connection maximumMessageBytes];
  if (maximumMessageBytes)
  {
    v13 = maximumMessageBytes;
    supportsBinaryMime = [(MFSMTPConnection *)self->_connection supportsBinaryMime];
    v15 = [data length];
    v16 = [data numberOfNewlinesNeedingConversion:supportsBinaryMime] + v15;
    if (v13 < v16)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = MFLookupLocalizedString(@"MESSAGE_TOO_LARGE", @"Your message has size %@, which exceeds %@, the maximum allowed by the server.", 0);
      v19 = [MEMORY[0x277CCACA8] mf_stringRepresentationForBytes:v16];
      v37 = [v17 stringWithFormat:v18, v19, objc_msgSend(MEMORY[0x277CCACA8], "mf_stringRepresentationForBytes:", v13)];
      v20 = 7;
LABEL_24:
      [(MFSMTPConnection *)self->_connection quit];
      v25 = 0.0;
      goto LABEL_25;
    }
  }

  archiveAccount = [(MFMailDelivery *)self archiveAccount];
  v22 = [(DeliveryAccount *)self->super._account shouldUseSaveSentForAccount:archiveAccount];
  connection = self->_connection;
  if (v22)
  {
    saveSentFolder = [archiveAccount saveSentFolder];
  }

  else
  {
    saveSentFolder = 0;
  }

  [(MFSMTPConnection *)connection setUseSaveSent:v22 toFolder:saveSentFolder];
  Current = CFAbsoluteTimeGetCurrent();
  [(MFConnection *)self->_connection enableThroughputMonitoring:1];
  v20 = [(MFSMTPConnection *)self->_connection mailFrom:v10 recipients:recipientsCopy withData:data host:hostname errorTitle:&v38 errorMessage:&v37 serverResponse:&v35 displayError:&v34 errorCode:&v39 errorUserInfo:&v36];
  [(MFConnection *)self->_connection enableThroughputMonitoring:0];
  v30 = CFAbsoluteTimeGetCurrent();
  supportsOutboxCopy = 0;
  account = self->super._account;
  if (v22)
  {
    supportsOutboxCopy = [(MFSMTPConnection *)self->_connection supportsOutboxCopy];
  }

  v25 = v30 - Current;
  [(DeliveryAccount *)account setSupportsOutboxCopy:supportsOutboxCopy];
  if (v20)
  {
    [(MFSMTPConnection *)self->_connection quit];
    if (v20 == 4)
    {
      v26 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1028 localizedDescription:0];
LABEL_29:
      [v8 setError:v26];
      goto LABEL_30;
    }
  }

  else
  {
    [-[MFMailDelivery account](self "account")];
  }

LABEL_25:
  if (v37)
  {
    v26 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:v39 localizedDescription:0 title:v38 userInfo:v36];
    if (v34 == 1)
    {
      [(MFError *)v26 setShortDescription:MFLookupLocalizedString(@"FAILED_SEND_TITLE", @"Cannot Send Mail", @"Delayed")];
    }

    [(MFError *)v26 setLocalizedDescription:v37];
    [(MFError *)v26 setMoreInfo:v35];
    -[MFError setUserInfoObject:forKey:](v26, "setUserInfoObject:forKey:", [MEMORY[0x277CCABB0] numberWithBool:1], @"MailErrorHandlerDoNotSanitize");
    goto LABEL_29;
  }

LABEL_30:
  v27 = [[MFDeliveryResult alloc] initWithStatus:v20];
  [(MFDeliveryResult *)v27 setDuration:v25];
  -[MFDeliveryResult setBytesSent:](v27, "setBytesSent:", [v8 bytesWritten]);
  return v27;
}

@end