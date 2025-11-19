@interface _MBLLoadForClientJob
+ (OS_os_log)signpostLog;
+ (id)log;
- (id)initForClient:(id)a3 forMBLMailbox:(id)a4;
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
  block[4] = a1;
  if (qword_100185738 != -1)
  {
    dispatch_once(&qword_100185738, block);
  }

  v2 = qword_100185730;

  return v2;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100045FF8;
  block[3] = &unk_1001562E8;
  block[4] = a1;
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
  v4 = [(MBLSingleMessageClient *)self->_client message];
  v5 = [(MBLSingleMessageClient *)self->_client wantsContentsOfType:0];
  v6 = [(MBLSingleMessageClient *)self->_client wantsContentsOfType:1];
  v7 = [(MBLSingleMessageClient *)self->_client wantsContentsOfType:2];
  client = self->_client;
  v9 = [NSString stringWithFormat:@"com.apple.mobilemail.messagebodyloader_job.client.%@", objc_opt_class()];
  v10 = +[MFPowerController sharedInstance];
  v11 = [v4 account];
  [v10 retainAssertionWithIdentifier:v9 withAccount:v11];

  if ((v5 | v7))
  {
    v12 = [v4 summary];
    if (v12)
    {
      v39 = 0;
    }

    else
    {
      v13 = +[_MBLLoadForClientJob signpostLog];
      v14 = [(_MBLLoadForClientJob *)self signpostID];
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        v15 = [v4 messageID];
        *buf = 138412290;
        v41 = v15;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "MBL COPY SUMMARY", "Message=%@", buf, 0xCu);
      }

      v12 = [MessageBodyLoader copySummaryForMessage:v4 downloadIfNecessary:1];
      v16 = +[_MBLLoadForClientJob signpostLog];
      v17 = [(_MBLLoadForClientJob *)self signpostID];
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v17, "MBL COPY SUMMARY", "", buf, 2u);
      }

      v39 = [(__CFString *)v12 length]!= 0;
    }

    v18 = [v3 error];
    v19 = [v3 shouldCancel];
    if ((v18 == 0) | v19 & 1)
    {
      if (v19)
      {
        goto LABEL_30;
      }

LABEL_16:
      if ([v4 shouldSetSummary])
      {
        v22 = &stru_10015BEC8;
        if (v12)
        {
          v22 = v12;
        }

        v23 = v22;

        v24 = +[_MBLLoadForClientJob signpostLog];
        v25 = [(_MBLLoadForClientJob *)self signpostID];
        if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
        {
          v26 = [v4 messageID];
          *buf = 138412290;
          v41 = v26;
          v38 = v26;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, v25, "MBL WRITE SUMMARY", "Message=%@", buf, 0xCu);
        }

        [v4 setSummary:v23];
        v27 = +[_MBLLoadForClientJob signpostLog];
        v28 = [(_MBLLoadForClientJob *)self signpostID];
        if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v28, "MBL WRITE SUMMARY", "", buf, 2u);
        }

        v12 = v23;
      }

      [(MBLSingleMessageClient *)self->_client notifyContentsAvailable:v12 forMessage:v4];
      if ((v7 & 1) != 0 || v39 && ([v4 messageFlags] & 1) == 0)
      {
        v29 = [v4 mailbox];
        v30 = [v29 mailboxType];

        if ((v30 & 0xFFFFFFFFFFFFFFFDLL) != 1)
        {
          v31 = +[MessageAddressScanner sharedInstance];
          [v31 scanSummary:v12 forMessage:v4];
        }
      }

      goto LABEL_31;
    }

    v20 = [v18 domain];
    if ([MFMessageErrorDomain isEqualToString:v20])
    {
      v21 = [v18 code] == 1036;

      if (v21)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_30:
    [(MBLSingleMessageClient *)self->_client notifyContentsUnavailableForMessage:v4 error:v18];
LABEL_31:
  }

  if (v6)
  {
    v32 = [MFMessageLoadingContext alloc];
    v33 = +[MessageBodyLoader attachmentManager];
    v34 = [v32 initWithMessage:v4 attachmentManager:v33];

    v35 = +[EFScheduler immediateScheduler];
    [v34 load:1 scheduler:v35];

    if ([v3 shouldCancel])
    {
      v36 = [v3 error];
      [(MBLSingleMessageClient *)self->_client notifyFullMessageContentsUnavailableForMessage:v4 error:v36];
    }

    else
    {
      [(MBLSingleMessageClient *)self->_client notifyFullMessageContentsAvailableForMessage:v4];
    }
  }

  v37 = +[MFPowerController sharedInstance];
  [v37 releaseAssertionWithIdentifier:v9];
}

- (id)initForClient:(id)a3 forMBLMailbox:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _MBLLoadForClientJob;
  v9 = [(_MBLLoadForClientJob *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_client, a3);
    objc_storeWeak(p_isa + 1, v8);
  }

  return p_isa;
}

@end