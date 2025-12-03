@interface OUPipelineOnlineConfig
- (OUPipelineOnlineConfig)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation OUPipelineOnlineConfig

- (OUPipelineOnlineConfig)init
{
  v3.receiver = self;
  v3.super_class = OUPipelineOnlineConfig;
  result = [(OUPipelineOnlineConfig *)&v3 init];
  if (result)
  {
    *&result->_enableRgbRefinement = 257;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 8) = self->_enableRgbRefinement;
  *(result + 9) = self->_enable3DOROnline;
  return result;
}

@end