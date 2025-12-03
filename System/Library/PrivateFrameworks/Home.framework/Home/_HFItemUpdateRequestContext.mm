@interface _HFItemUpdateRequestContext
- (NSDictionary)updateOptions;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _HFItemUpdateRequestContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSenderSelector:{-[_HFItemUpdateRequestContext senderSelector](self, "senderSelector")}];
  updateOptions = [(_HFItemUpdateRequestContext *)self updateOptions];
  [v4 setUpdateOptions:updateOptions];

  logger = [(_HFItemUpdateRequestContext *)self logger];
  [v4 setLogger:logger];

  readPolicy = [(_HFItemUpdateRequestContext *)self readPolicy];
  [v4 setReadPolicy:readPolicy];

  return v4;
}

- (NSDictionary)updateOptions
{
  if (self->_updateOptions)
  {
    return self->_updateOptions;
  }

  else
  {
    return MEMORY[0x277CBEC10];
  }
}

@end