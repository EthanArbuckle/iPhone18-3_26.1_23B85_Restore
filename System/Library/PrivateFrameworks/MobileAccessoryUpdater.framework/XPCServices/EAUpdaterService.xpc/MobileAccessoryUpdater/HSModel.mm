@interface HSModel
- (BOOL)getHSModelForEngineMajorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion numHSModels:(unint64_t)models modelBuffer:(char *)buffer length:(unint64_t)length;
- (HSModel)init;
- (void)scheduleCoreSpeechTask:(unint64_t)task minorVersion:(unint64_t)version downloadedModels:(id)models preinstalledModels:(id)preinstalledModels;
- (void)setDelegate:(id)delegate;
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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000123C;
  v7[3] = &unk_1000204C8;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)getHSModelForEngineMajorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion numHSModels:(unint64_t)models modelBuffer:(char *)buffer length:(unint64_t)length
{
  v13 = +[NSMutableArray array];
  v14 = +[NSMutableArray array];
  v15 = "valid";
  if (!buffer)
  {
    v15 = "NULL";
  }

  lengthCopy = length;
  NSLog(@"getHSModelForEngineMajorVersion: majorVersion=%lu minorVersion=%lu numHSModels=%lu buffer=%s length=%zu\n", version, minorVersion, models, v15, length);
  if (!buffer)
  {
    NSLog(@"Empty buffer\n", v36);
    goto LABEL_30;
  }

  versionCopy = version;
  minorVersionCopy = minorVersion;
  selfCopy = self;
  modelsCopy = models;
  if (!models)
  {
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
LABEL_25:
    if (v21 == modelsCopy)
    {
      NSLog(@"Requesting HSModel: majorVersion=%lu minorVersion=%lu assetCount=%d downloaded[%lu] preInstalled[%lu], on Queue: %@\n", versionCopy, minorVersionCopy, v21, [v13 count], objc_msgSend(v14, "count"), selfCopy->_queue);
      [(HSModel *)selfCopy scheduleCoreSpeechTask:versionCopy minorVersion:minorVersionCopy downloadedModels:v13 preinstalledModels:v14];

      LOBYTE(v20) = 1;
      goto LABEL_27;
    }

    NSLog(@"assetCount %u != numHSModels %lu\n", v21, modelsCopy);
LABEL_29:

LABEL_30:
    LOBYTE(v20) = 0;
    goto LABEL_27;
  }

  lengthCopy2 = length;
  if (length < 4)
  {
    NSLog(@"Invalid length=%zu\n", length);
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
    v23 = buffer[v17];
    if (v23 >= 2)
    {
      NSLog(@"Unexpected modelType = 0x%x\n", buffer[v17], v37);
      goto LABEL_29;
    }

    v24 = v13;
    v25 = (v22 + 2);
    v26 = buffer[v22 + 1];
    if (lengthCopy2 - v25 <= v26)
    {
      NSLog(@"Bad buffer: remaining bytes %lu is less than localeCodeLen %d\n", lengthCopy2 - v25, v26);
LABEL_34:

      goto LABEL_37;
    }

    if (v20)
    {
    }

    v20 = [[NSString alloc] initWithBytes:&buffer[v25] length:v26 encoding:4];
    if (!v20)
    {
      NSLog(@"Failed to create localeCode\n");

      goto LABEL_39;
    }

    v27 = v25 + v26;
    v28 = (v25 + v26 + 1);
    v29 = buffer[v27];
    if (lengthCopy - v28 < v29)
    {
      NSLog(@"Bad buffer: remaining bytes %lu is less than hashLen %d\n", lengthCopy - v28, v29);
      goto LABEL_34;
    }

    if (v19)
    {
    }

    v30 = [[NSString alloc] initWithBytes:&buffer[v28] length:v29 encoding:4];
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
    v31 = qword_10002AD98;
    v47 = qword_10002AD98;
    if (!qword_10002AD98)
    {
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100001B98;
      v43[3] = &unk_100020540;
      v43[4] = &v44;
      sub_100001B98(v43);
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
    lengthCopy2 = lengthCopy;
    v22 = v17;
    if (lengthCopy - 3 <= v17)
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

- (void)scheduleCoreSpeechTask:(unint64_t)task minorVersion:(unint64_t)version downloadedModels:(id)models preinstalledModels:(id)preinstalledModels
{
  modelsCopy = models;
  preinstalledModelsCopy = preinstalledModels;
  if (self->delegate)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100001858;
    v15[3] = &unk_100020518;
    v15[4] = self;
    v12 = objc_retainBlock(v15);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v13 = qword_10002ADA8;
    v19 = qword_10002ADA8;
    if (!qword_10002ADA8)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v21 = sub_100001D60;
      v22 = &unk_100020540;
      v23 = &v16;
      sub_100001D60(&buf);
      v13 = v17[3];
    }

    v14 = v13;
    _Block_object_dispose(&v16, 8);
    [v13 voiceTriggerRTModelForVersion:task minorVersion:version downloadedModels:modelsCopy preinstalledModels:preinstalledModelsCopy completion:v12];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[HSModel scheduleCoreSpeechTask:minorVersion:downloadedModels:preinstalledModels:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: delegate is nil", &buf, 0xCu);
  }
}

@end