@interface JFXEffectAssetRequestOptions
- (JFXEffectAssetRequestOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation JFXEffectAssetRequestOptions

- (JFXEffectAssetRequestOptions)init
{
  v3.receiver = self;
  v3.super_class = JFXEffectAssetRequestOptions;
  result = [(JFXEffectAssetRequestOptions *)&v3 init];
  if (result)
  {
    result->_priority = 2;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 24) = self->_priority;
  *(v4 + 8) = self->_networkAccessDisabled;
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_filterOptionsArray copyItems:1];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  return v4;
}

@end