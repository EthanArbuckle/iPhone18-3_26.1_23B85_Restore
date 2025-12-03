@interface _MBLLoadMessageJob
+ (OS_os_log)signpostLog;
+ (id)log;
- (id)initForMessage:(id)message forMBLMailbox:(id)mailbox;
- (unint64_t)signpostID;
- (void)run;
@end

@implementation _MBLLoadMessageJob

+ (OS_os_log)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000455B4;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185718 != -1)
  {
    dispatch_once(&qword_100185718, block);
  }

  v2 = qword_100185710;

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
  block[2] = sub_10004571C;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185728 != -1)
  {
    dispatch_once(&qword_100185728, block);
  }

  v2 = qword_100185720;

  return v2;
}

- (void)run
{
  v3 = +[MFPowerController sharedInstance];
  account = [(MFMailMessage *)self->_message account];
  [v3 retainAssertionWithIdentifier:@"com.apple.mobilemail.messagebodyloader_job.message" withAccount:account];

  messageStore = [(MFMailMessage *)self->_message messageStore];
  LODWORD(account) = [messageStore shouldDownloadBodyDataForMessage:self->_message];

  if (account)
  {
    v6 = [MFMessageLoadingContext alloc];
    message = self->_message;
    v8 = +[MessageBodyLoader attachmentManager];
    v9 = [v6 initWithMessage:message attachmentManager:v8];

    v10 = +[EFScheduler immediateScheduler];
    [v9 load:1 scheduler:v10];

    v11 = +[CPAggregateDictionary sharedAggregateDictionary];
    [v11 incrementKey:@"com.apple.mobilemail.receievedMessagesLoadedKey"];
  }

  if ([(MFMailMessage *)self->_message shouldSetSummary])
  {
    v12 = +[_MBLLoadMessageJob signpostLog];
    signpostID = [(_MBLLoadMessageJob *)self signpostID];
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      messageID = [(MFMailMessage *)self->_message messageID];
      v32 = 138412290;
      v33 = messageID;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MBL COPY SUMMARY", "Message=%@", &v32, 0xCu);
    }

    v15 = [MessageBodyLoader copySummaryForMessage:self->_message downloadIfNecessary:1];
    v16 = +[_MBLLoadMessageJob signpostLog];
    signpostID2 = [(_MBLLoadMessageJob *)self signpostID];
    if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LOWORD(v32) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, signpostID2, "MBL COPY SUMMARY", "", &v32, 2u);
    }

    v18 = +[MFActivityMonitor currentMonitor];
    error = [v18 error];
    if (error)
    {
    }

    else
    {
      v20 = +[MFActivityMonitor currentMonitor];
      shouldCancel = [v20 shouldCancel];

      if (shouldCancel)
      {
        goto LABEL_26;
      }

      v22 = &stru_10015BEC8;
      if (v15)
      {
        v22 = v15;
      }

      v23 = v22;

      v24 = +[_MBLLoadMessageJob signpostLog];
      signpostID3 = [(_MBLLoadMessageJob *)self signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        messageID2 = [(MFMailMessage *)self->_message messageID];
        v32 = 138412290;
        v33 = messageID2;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, signpostID3, "MBL WRITE SUMMARY", "Message=%@", &v32, 0xCu);
      }

      [(MFMailMessage *)self->_message setSummary:v23];
      v27 = +[_MBLLoadMessageJob signpostLog];
      signpostID4 = [(_MBLLoadMessageJob *)self signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        LOWORD(v32) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, signpostID4, "MBL WRITE SUMMARY", "", &v32, 2u);
      }

      if (!-[__CFString length](v23, "length") || (-[MFMailMessage messageFlags](self->_message, "messageFlags") & 1) != 0 || (-[MFMailMessage mailbox](self->_message, "mailbox"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 mailboxType], v29, (v30 & 0xFFFFFFFFFFFFFFFDLL) == 1))
      {
        v15 = v23;
        goto LABEL_26;
      }

      v18 = +[MessageAddressScanner sharedInstance];
      [v18 scanSummary:v23 forMessage:self->_message];
      v15 = v23;
    }

LABEL_26:
  }

  v31 = +[MFPowerController sharedInstance];
  [v31 releaseAssertionWithIdentifier:@"com.apple.mobilemail.messagebodyloader_job.message"];
}

- (id)initForMessage:(id)message forMBLMailbox:(id)mailbox
{
  messageCopy = message;
  mailboxCopy = mailbox;
  v12.receiver = self;
  v12.super_class = _MBLLoadMessageJob;
  v9 = [(_MBLLoadMessageJob *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_message, message);
    objc_storeWeak(p_isa + 1, mailboxCopy);
  }

  return p_isa;
}

@end