@interface HSModel
- (BOOL)getHSModelForEngineMajorVersion:(unint64_t)a3 minorVersion:(unint64_t)a4 numHSModels:(unint64_t)a5 modelBuffer:(char *)a6 length:(unint64_t)a7;
- (HSModel)init;
- (void)scheduleCoreSpeechTask:(unint64_t)a3 minorVersion:(unint64_t)a4 downloadedModels:(id)a5 preinstalledModels:(id)a6;
- (void)setDelegate:(id)a3;
@end

@implementation HSModel

- (HSModel)init
{
  v7.receiver = self;
  v7.super_class = HSModel;
  v2 = [(HSModel *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.MobileAccessoryUpdater.EAFirmwareUpdater.HSQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E240;
  v7[3] = &unk_10002C920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (BOOL)getHSModelForEngineMajorVersion:(unint64_t)a3 minorVersion:(unint64_t)a4 numHSModels:(unint64_t)a5 modelBuffer:(char *)a6 length:(unint64_t)a7
{
  v13 = +[NSMutableArray array];
  v14 = +[NSMutableArray array];
  v15 = "valid";
  if (!a6)
  {
    v15 = "NULL";
  }

  v42 = a7;
  NSLog(@"getHSModelForEngineMajorVersion: majorVersion=%lu minorVersion=%lu numHSModels=%lu buffer=%s length=%zu\n", a3, a4, a5, v15, a7);
  if (!a6)
  {
    NSLog(@"Empty buffer\n", v36);
    goto LABEL_30;
  }

  v39 = a3;
  v40 = a4;
  v38 = self;
  v41 = a5;
  if (!a5)
  {
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
LABEL_25:
    if (v21 == v41)
    {
      NSLog(@"Requesting HSModel: majorVersion=%lu minorVersion=%lu assetCount=%d downloaded[%lu] preInstalled[%lu], on Queue: %@\n", v39, v40, v21, [v13 count], objc_msgSend(v14, "count"), v38->_queue);
      [(HSModel *)v38 scheduleCoreSpeechTask:v39 minorVersion:v40 downloadedModels:v13 preinstalledModels:v14];

      LOBYTE(v20) = 1;
      goto LABEL_27;
    }

    NSLog(@"assetCount %u != numHSModels %lu\n", v21, v41);
LABEL_29:

LABEL_30:
    LOBYTE(v20) = 0;
    goto LABEL_27;
  }

  v16 = a7;
  if (a7 < 4)
  {
    NSLog(@"Invalid length=%zu\n", a7);
    goto LABEL_30;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  LODWORD(v21) = 0;
  v22 = 0;
  while (1)
  {
    v23 = a6[v17];
    if (v23 >= 2)
    {
      NSLog(@"Unexpected modelType = 0x%x\n", a6[v17], v37);
      goto LABEL_29;
    }

    v24 = v13;
    v25 = (v22 + 2);
    v26 = a6[v22 + 1];
    if (v16 - v25 <= v26)
    {
      NSLog(@"Bad buffer: remaining bytes %lu is less than localeCodeLen %d\n", v16 - v25, v26);
LABEL_34:

      goto LABEL_37;
    }

    if (v20)
    {
    }

    v20 = [[NSString alloc] initWithBytes:&a6[v25] length:v26 encoding:4];
    if (!v20)
    {
      NSLog(@"Failed to create localeCode\n");

      goto LABEL_39;
    }

    v27 = v25 + v26;
    v28 = (v25 + v26 + 1);
    v29 = a6[v27];
    if (v42 - v28 < v29)
    {
      NSLog(@"Bad buffer: remaining bytes %lu is less than hashLen %d\n", v42 - v28, v29);
      goto LABEL_34;
    }

    if (v19)
    {
    }

    v30 = [[NSString alloc] initWithBytes:&a6[v28] length:v29 encoding:4];
    if (!v30)
    {
      NSLog(@"Failed to create hash\n");

      goto LABEL_38;
    }

    v19 = v30;
    if (v18)
    {
    }

    v44 = 0;
    v45 = &v44;
    v46 = 0x2050000000;
    v31 = qword_100038F90;
    v47 = qword_100038F90;
    if (!qword_100038F90)
    {
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_10000EB9C;
      v43[3] = &unk_10002CC50;
      v43[4] = &v44;
      sub_10000EB9C(v43);
      v31 = v45[3];
    }

    v32 = v31;
    _Block_object_dispose(&v44, 8);
    v33 = [[v31 alloc] initWithData:0 hash:v19 locale:v20 digest:0 signature:0 certificate:0];
    if (!v33)
    {
      break;
    }

    v18 = v33;
    v17 = (v28 + v29);
    v13 = v24;
    if (v23)
    {
      v34 = v14;
    }

    else
    {
      v34 = v24;
    }

    [v34 addObject:v18];
    v21 = (v21 + 1);
    v16 = v42;
    v22 = v17;
    if (v42 - 3 <= v17)
    {
      goto LABEL_25;
    }
  }

  NSLog(@"Failed to create CSVoiceTriggerRTModel asset\n");
LABEL_37:

LABEL_38:
  LOBYTE(v20) = 0;
LABEL_39:
  v13 = v24;
LABEL_27:

  return v20;
}

- (void)scheduleCoreSpeechTask:(unint64_t)a3 minorVersion:(unint64_t)a4 downloadedModels:(id)a5 preinstalledModels:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (self->delegate)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000E85C;
    v15[3] = &unk_10002CC28;
    v15[4] = self;
    v12 = objc_retainBlock(v15);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v13 = qword_100038FA0;
    v19 = qword_100038FA0;
    if (!qword_100038FA0)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v21 = sub_10000ED64;
      v22 = &unk_10002CC50;
      v23 = &v16;
      sub_10000ED64(&buf);
      v13 = v17[3];
    }

    v14 = v13;
    _Block_object_dispose(&v16, 8);
    [v13 voiceTriggerRTModelForVersion:a3 minorVersion:a4 downloadedModels:v10 preinstalledModels:v11 completion:v12];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[HSModel scheduleCoreSpeechTask:minorVersion:downloadedModels:preinstalledModels:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: delegate is nil", &buf, 0xCu);
  }
}

@end