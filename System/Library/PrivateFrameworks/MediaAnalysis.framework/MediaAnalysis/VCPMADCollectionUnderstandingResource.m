@interface VCPMADCollectionUnderstandingResource
+ (id)sharedResource;
- (VCPMADCollectionUnderstandingResource)init;
- (_MADObjCThemeGenerator)themeGenerator;
- (int64_t)activeCost;
- (int64_t)inactiveCost;
- (void)purge;
@end

@implementation VCPMADCollectionUnderstandingResource

- (VCPMADCollectionUnderstandingResource)init
{
  v7.receiver = self;
  v7.super_class = VCPMADCollectionUnderstandingResource;
  v2 = [(VCPMADCollectionUnderstandingResource *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("VCPMADCollectionUnderstandingResource", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

+ (id)sharedResource
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [NSString stringWithFormat:@"%@", v3];

  v5 = +[VCPSharedInstanceManager sharedManager];
  v6 = [v5 sharedInstanceWithIdentifier:v4 andCreationBlock:&stru_100288958];

  return v6;
}

- (int64_t)activeCost
{
  if (DeviceHasANE())
  {
    return 10;
  }

  else
  {
    return 100;
  }
}

- (int64_t)inactiveCost
{
  if (DeviceHasANE())
  {
    return 10;
  }

  else
  {
    return 100;
  }
}

- (_MADObjCThemeGenerator)themeGenerator
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1001B8740;
  v10 = sub_1001B8750;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B8758;
  v5[3] = &unk_100283150;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)purge
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B8920;
  block[3] = &unk_100283210;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end