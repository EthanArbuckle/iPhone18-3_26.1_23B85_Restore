@interface NMSObfuscatableDescriptionItem
- (NMSObfuscatableDescriptionItem)initWithPrefix:(id)prefix value:(id)value obfuscated:(BOOL)obfuscated;
@end

@implementation NMSObfuscatableDescriptionItem

- (NMSObfuscatableDescriptionItem)initWithPrefix:(id)prefix value:(id)value obfuscated:(BOOL)obfuscated
{
  prefixCopy = prefix;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = NMSObfuscatableDescriptionItem;
  v11 = [(NMSObfuscatableDescriptionItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_prefix, prefix);
    objc_storeStrong(&v12->_value, value);
    v12->_obfuscated = obfuscated;
  }

  return v12;
}

@end