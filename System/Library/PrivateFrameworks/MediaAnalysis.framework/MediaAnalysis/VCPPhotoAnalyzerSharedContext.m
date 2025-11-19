@interface VCPPhotoAnalyzerSharedContext
+ (id)sharedContext;
- (id)_init;
@end

@implementation VCPPhotoAnalyzerSharedContext

- (id)_init
{
  v23.receiver = self;
  v23.super_class = VCPPhotoAnalyzerSharedContext;
  v2 = [(VCPPhotoAnalyzerSharedContext *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("VCPPhotoAnalyzer.decode", v3);
    queueDecode = v2->_queueDecode;
    v2->_queueDecode = v4;

    v6 = dispatch_queue_create("VCPPhotoAnalyzer.blur", v3);
    queueBlur = v2->_queueBlur;
    v2->_queueBlur = v6;

    v8 = dispatch_queue_create("VCPPhotoAnalyzer.descriptor", v3);
    queueDescriptor = v2->_queueDescriptor;
    v2->_queueDescriptor = v8;

    v10 = dispatch_queue_create("VCPPhotoAnalyzer.exposure", v3);
    queueExposure = v2->_queueExposure;
    v2->_queueExposure = v10;

    v12 = dispatch_queue_create("VCPPhotoAnalyzer.face", v3);
    queueFace = v2->_queueFace;
    v2->_queueFace = v12;

    v14 = dispatch_queue_create("VCPPhotoAnalyzer.humanAction", v3);
    queueHumanAction = v2->_queueHumanAction;
    v2->_queueHumanAction = v14;

    v16 = dispatch_queue_create("VCPPhotoAnalyzer.humanPose", v3);
    queueHumanPose = v2->_queueHumanPose;
    v2->_queueHumanPose = v16;

    v18 = dispatch_queue_create("VCPPhotoAnalyzer.backbone", v3);
    queueBackbone = v2->_queueBackbone;
    v2->_queueBackbone = v18;

    v20 = dispatch_queue_create("VCPPhotoAnalyzer.caption", v3);
    queueCaption = v2->_queueCaption;
    v2->_queueCaption = v20;
  }

  return v2;
}

+ (id)sharedContext
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_92];

  return v5;
}

id __46__VCPPhotoAnalyzerSharedContext_sharedContext__block_invoke()
{
  v0 = [[VCPPhotoAnalyzerSharedContext alloc] _init];

  return v0;
}

@end