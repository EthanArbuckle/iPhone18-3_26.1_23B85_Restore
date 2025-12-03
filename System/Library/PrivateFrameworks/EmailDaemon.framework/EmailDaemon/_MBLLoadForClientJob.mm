@interface _MBLLoadForClientJob
+ (OS_os_log)signpostLog;
+ (id)log;
- (id)initForClient:(id)client forMBLMailbox:(id)mailbox;
- (unint64_t)signpostID;
- (void)run;
@end

@implementation _MBLLoadForClientJob

+ (OS_os_log)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100045E90;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185738 != -1)
  {
    dispatch_once(&qword_100185738, block);
  }

  v2 = qword_100185730;

  return v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100045FF8;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185748 != -1)
  {
    dispatch_once(&qword_100185748, block);
  }

  v2 = qword_100185740;

  return v2;
}

- (void)run
{
  v3 = +[MFActivityMonitor currentMonitor];
  message = [(MBLSingleMessageClient *)self->_client message];
  v5 = [(MBLSingleMessageClient *)self->_client wantsContentsOfType:0];
  v6 = [(MBLSingleMessageClient *)self->_client wantsContentsOfType:1];
  v7 = [(MBLSingleMessageClient *)self->_client wantsContentsOfType:2];
  client = self->_client;
  v9 = [NSString stringWithFormat:@"com.apple.mobilemail.messagebodyloader_job.client.%@", objc_opt_class()];
  v10 = +[MFPowerController sharedInstance];
  account = [message account];
  [v10 retainAssertionWithIdentifier:v9 withAccount:account];

  if ((v5 | v7))
  {
    summary = [message summary];
    if (summary)
    {
      v39 = 0;
    }

    else
    {
      v13 = +[_MBLLoadForClientJob signpostLog];
      signpostID = [(_MBLLoadForClientJob *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        messageID = [message messageID];
        *buf = 138412290;
        v41 = messageID;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MBL COPY SUMMARY", "Message=%@", buf, 0xCu);
      }

      summary = [MessageBodyLoader copySummaryForMessage:message downloadIfNecessary:1];
      v16 = +[_MBLLoadForClientJob signpostLog];
      signpostID2 = [(_MBLLoadForClientJob *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, signpostID2, "MBL COPY SUMMARY", "", buf, 2u);
      }

      v39 = [(__CFString *)summary length]!= 0;
    }

    error = [v3 error];
    shouldCancel = [v3 shouldCancel];
    if ((error == 0) | shouldCancel & 1)
    {
      if (shouldCancel)
      {
        goto LABEL_30;
      }

LABEL_16:
      if ([message shouldSetSummary])
      {
        v22 = &stru_10015BEC8;
        if (summary)
        {
          v22 = summary;
        }

        v23 = v22;

        v24 = +[_MBLLoadForClientJob signpostLog];
        signpostID3 = [(_MBLLoadForClientJob *)self signpostID];
        if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
        {
          messageID2 = [message messageID];
          *buf = 138412290;
          v41 = messageID2;
          v38 = messageID2;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, signpostID3, "MBL WRITE SUMMARY", "Message=%@", buf, 0xCu);
        }

        [message setSummary:v23];
        v27 = +[_MBLLoadForClientJob signpostLog];
        signpostID4 = [(_MBLLoadForClientJob *)self signpostID];
        if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, signpostID4, "MBL WRITE SUMMARY", "", buf, 2u);
        }

        summary = v23;
      }

      [(MBLSingleMessageClient *)self->_client notifyContentsAvailable:summary forMessage:message];
      if ((v7 & 1) != 0 || v39 && ([message messageFlags] & 1) == 0)
      {
        mailbox = [message mailbox];
        mailboxType = [mailbox mailboxType];

        if ((mailboxType & 0xFFFFFFFFFFFFFFFDLL) != 1)
        {
          v31 = +[MessageAddressScanner sharedInstance];
          [v31 scanSummary:summary forMessage:message];
        }
      }

      goto LABEL_31;
    }

    domain = [error domain];
    if ([MFMessageErrorDomain isEqualToString:domain])
    {
      v21 = [error code] == 1036;

      if (v21)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_30:
    [(MBLSingleMessageClient *)self->_client notifyContentsUnavailableForMessage:message error:error];
LABEL_31:
  }

  if (v6)
  {
    v32 = [MFMessageLoadingContext alloc];
    v33 = +[MessageBodyLoader attachmentManager];
    v34 = [v32 initWithMessage:message attachmentManager:v33];

    v35 = +[EFScheduler immediateScheduler];
    [v34 load:1 scheduler:v35];

    if ([v3 shouldCancel])
    {
      error2 = [v3 error];
      [(MBLSingleMessageClient *)self->_client notifyFullMessageContentsUnavailableForMessage:message error:error2];
    }

    else
    {
      [(MBLSingleMessageClient *)self->_client notifyFullMessageContentsAvailableForMessage:message];
    }
  }

  v37 = +[MFPowerController sharedInstance];
  [v37 releaseAssertionWithIdentifier:v9];
}

- (id)initForClient:(id)client forMBLMailbox:(id)mailbox
{
  clientCopy = client;
  mailboxCopy = mailbox;
  v12.receiver = self;
  v12.super_class = _MBLLoadForClientJob;
  v9 = [(_MBLLoadForClientJob *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_client, client);
    objc_storeWeak(p_isa + 1, mailboxCopy);
  }

  return p_isa;
}

@end