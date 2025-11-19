@interface _HFItemUpdateRequestContext
- (NSDictionary)updateOptions;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _HFItemUpdateRequestContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSenderSelector:{-[_HFItemUpdateRequestContext senderSelector](self, "senderSelector")}];
  v5 = [(_HFItemUpdateRequestContext *)self updateOptions];
  [v4 setUpdateOptions:v5];

  v6 = [(_HFItemUpdateRequestContext *)self logger];
  [v4 setLogger:v6];

  v7 = [(_HFItemUpdateRequestContext *)self readPolicy];
  [v4 setReadPolicy:v7];

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