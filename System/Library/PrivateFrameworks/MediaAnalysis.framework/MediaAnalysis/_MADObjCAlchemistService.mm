@interface _MADObjCAlchemistService
- (_MADObjCAlchemistService)init;
- (void)convertAlchemist:(__CVBuffer *)alchemist focalLengthPX:(float)x preset:(id)preset resolution:(id)resolution client:(id)client completion:(id)completion;
@end

@implementation _MADObjCAlchemistService

- (_MADObjCAlchemistService)init
{
  sub_1C9F3FCB0();
  v4.receiver = self;
  v4.super_class = type metadata accessor for _MADObjCAlchemistService();
  return [(_MADObjCAlchemistService *)&v4 init];
}

- (void)convertAlchemist:(__CVBuffer *)alchemist focalLengthPX:(float)x preset:(id)preset resolution:(id)resolution client:(id)client completion:(id)completion
{
  v14 = _Block_copy(completion);
  _Block_copy(v14);
  alchemistCopy = alchemist;
  presetCopy = preset;
  resolutionCopy = resolution;
  clientCopy = client;
  selfCopy = self;
  sub_1C9EEE644(alchemistCopy, presetCopy, resolutionCopy, client, selfCopy, v14, x);
  _Block_release(v14);
  _Block_release(v14);
}

@end