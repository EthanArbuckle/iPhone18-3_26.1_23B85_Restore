@interface VCPMADImageEmbeddingResource
+ (id)sharedResourceForRevision:(unint64_t)a3;
- (VCPImageBackboneAnalyzer)imageBackbone;
- (VCPMADImageEmbeddingResource)initWithRevision:(unint64_t)a3;
- (int64_t)activeCost;
- (int64_t)inactiveCost;
- (void)purge;
@end

@implementation VCPMADImageEmbeddingResource

- (VCPMADImageEmbeddingResource)initWithRevision:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = VCPMADImageEmbeddingResource;
  v4 = [(VCPMADImageEmbeddingResource *)&v9 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("VCPMADImageEmbeddingResource", v5);
    queue = v4->_queue;
    v4->_queue = v6;

    v4->_version = a3;
  }

  return v4;
}

+ (id)sharedResourceForRevision:(unint64_t)a3
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [v6 stringValue];
  v8 = [NSString stringWithFormat:@"%@_%@", v5, v7];

  v9 = +[VCPSharedInstanceManager sharedManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001AD1AC;
  v12[3] = &unk_100288738;
  v12[4] = a3;
  v10 = [v9 sharedInstanceWithIdentifier:v8 andCreationBlock:v12];

  return v10;
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

- (VCPImageBackboneAnalyzer)imageBackbone
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1001AD338;
  v10 = sub_1001AD348;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001AD350;
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
  block[2] = sub_1001AD664;
  block[3] = &unk_100283210;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end