@interface BWSoftISPProcessorControllerConfiguration
- (CGPoint)sensorCenterOffset;
- (void)dealloc;
@end

@implementation BWSoftISPProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSoftISPProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

- (CGPoint)sensorCenterOffset
{
  x = self->_sensorCenterOffset.x;
  y = self->_sensorCenterOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end