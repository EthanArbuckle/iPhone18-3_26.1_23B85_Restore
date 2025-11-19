@interface NMSObfuscatableDescriptionItem
- (NMSObfuscatableDescriptionItem)initWithPrefix:(id)a3 value:(id)a4 obfuscated:(BOOL)a5;
@end

@implementation NMSObfuscatableDescriptionItem

- (NMSObfuscatableDescriptionItem)initWithPrefix:(id)a3 value:(id)a4 obfuscated:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = NMSObfuscatableDescriptionItem;
  v11 = [(NMSObfuscatableDescriptionItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_prefix, a3);
    objc_storeStrong(&v12->_value, a4);
    v12->_obfuscated = a5;
  }

  return v12;
}

@end