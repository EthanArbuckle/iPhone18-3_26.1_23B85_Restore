@interface DEFaceTimeExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation DEFaceTimeExtension

- (id)attachmentsForParameters:(id)a3
{
  v3 = a3;
  v26[0] = @"collectionFlags";
  v4 = [NSNumber numberWithInteger:223];
  v27[0] = v4;
  v27[1] = @"FaceTime Log Dump";
  v26[1] = @"title";
  v26[2] = @"displayFlags";
  v27[2] = &off_1000041F8;
  v5 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100000F74;
  v23 = sub_100000F84;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100000F8C;
  v16[3] = &unk_100004128;
  v18 = &v19;
  v6 = dispatch_semaphore_create(0);
  v17 = v6;
  v7 = objc_retainBlock(v16);
  v8 = dispatch_get_global_queue(0, 0);
  v9 = DLCCollectLogsWithCompletionHandler();

  if (!v9)
  {
    v11 = +[DELogging fwHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v12 = "FaceTime logging failed";
      goto LABEL_7;
    }

LABEL_8:
    v13 = &__NSArray0__struct;
LABEL_9:

    goto LABEL_10;
  }

  v10 = dispatch_time(0, 120000000000);
  if (dispatch_semaphore_wait(v6, v10))
  {
    v11 = +[DELogging fwHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v12 = "FaceTime logging timed out";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, v15, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v20[5])
  {
    v11 = [DEAttachmentItem attachmentWithPath:?];
    v25 = v11;
    v13 = [NSArray arrayWithObjects:&v25 count:1];
    goto LABEL_9;
  }

  v13 = &__NSArray0__struct;
LABEL_10:

  _Block_object_dispose(&v19, 8);

  return v13;
}

@end