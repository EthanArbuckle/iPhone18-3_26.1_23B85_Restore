@interface IDEDataProvider_SceneKit
+ (id)sharedDataProvider;
- (BOOL)captureAttributes:(id)attributes toDictionary:(id)dictionary forPID:(id)d;
- (BOOL)captureShadersToDictionary:(id)dictionary forPID:(id)d;
- (IDEDataProvider_SceneKit)init;
- (id)captureAttributes:(id)attributes forPIDs:(id)ds;
- (id)startSamplingForPIDs:(id)ds;
- (id)stopSamplingForPIDs:(id)ds;
- (id)supportedAttributes;
@end

@implementation IDEDataProvider_SceneKit

+ (id)sharedDataProvider
{
  if (qword_15260 != -1)
  {
    sub_8120();
  }

  v3 = qword_15258;

  return v3;
}

- (IDEDataProvider_SceneKit)init
{
  v8.receiver = self;
  v8.super_class = IDEDataProvider_SceneKit;
  v2 = [(IDEDataProvider_SceneKit *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    collectionStartedForPidDictionary = v2->_collectionStartedForPidDictionary;
    v2->_collectionStartedForPidDictionary = v3;

    v5 = dispatch_queue_create("Lock to protect multithread access during capturing", 0);
    capture_lock = v2->_capture_lock;
    v2->_capture_lock = v5;
  }

  return v2;
}

- (id)supportedAttributes
{
  if (qword_15270 != -1)
  {
    sub_8134();
  }

  v3 = qword_15268;

  return v3;
}

- (id)startSamplingForPIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[NSMutableSet set];
  capture_lock = self->_capture_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5F18;
  block[3] = &unk_10470;
  v13 = dsCopy;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  v8 = dsCopy;
  dispatch_sync(capture_lock, block);
  v9 = v15;
  v10 = v7;

  return v7;
}

- (BOOL)captureAttributes:(id)attributes toDictionary:(id)dictionary forPID:(id)d
{
  dictionaryCopy = dictionary;
  dCopy = d;
  v9 = [(NSMutableDictionary *)self->_collectionStartedForPidDictionary objectForKey:dCopy];
  if ([v9 BOOLValue])
  {
    [dCopy intValue];
    v10 = _SCNGetPerformanceStatisticsForPid();
    v11 = v10 != 0;
    if (v10)
    {
      [dictionaryCopy addEntriesFromDictionary:v10];
      initialQueryTimeForPidDictionary = [(IDEDataProvider *)self initialQueryTimeForPidDictionary];
      v13 = [initialQueryTimeForPidDictionary objectForKeyedSubscript:dCopy];
      +[NSDate date];
      if (v13)
        v14 = {;
        [v14 timeIntervalSinceDate:v13];
        v16 = v15;

        v17 = [NSNumber numberWithUnsignedInteger:vcvtpd_u64_f64(v16)];
        [dictionaryCopy setObject:v17 forKeyedSubscript:@"kIDEGaugeSecondsSinceInitialQueryKey"];
      }

      else
        v13 = {;
        [initialQueryTimeForPidDictionary setObject:v13 forKeyedSubscript:dCopy];
        [dictionaryCopy setObject:&off_11958 forKeyedSubscript:@"kIDEGaugeSecondsSinceInitialQueryKey"];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)captureShadersToDictionary:(id)dictionary forPID:(id)d
{
  dictionaryCopy = dictionary;
  dCopy = d;
  v8 = [(NSMutableDictionary *)self->_collectionStartedForPidDictionary objectForKey:dCopy];
  if ([v8 BOOLValue])
  {
    [dCopy intValue];
    v9 = _SCNGetCollectedShadersForPid();
    v10 = v9 != 0;
    if (v9)
    {
      [dictionaryCopy addEntriesFromDictionary:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)stopSamplingForPIDs:(id)ds
{
  dsCopy = ds;
  capture_lock = self->_capture_lock;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_644C;
  v9[3] = &unk_10498;
  v6 = dsCopy;
  v10 = v6;
  selfCopy = self;
  dispatch_sync(capture_lock, v9);
  v7 = v6;

  return v6;
}

- (id)captureAttributes:(id)attributes forPIDs:(id)ds
{
  attributesCopy = attributes;
  dsCopy = ds;
  v8 = +[NSMutableDictionary dictionary];
  capture_lock = self->_capture_lock;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_66D8;
  v16[3] = &unk_104C0;
  v17 = dsCopy;
  v18 = attributesCopy;
  selfCopy = self;
  v10 = v8;
  v20 = v10;
  v11 = attributesCopy;
  v12 = dsCopy;
  dispatch_sync(capture_lock, v16);
  v13 = v20;
  v14 = v10;

  return v10;
}

@end