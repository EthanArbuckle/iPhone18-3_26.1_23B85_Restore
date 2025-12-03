@interface KGMutablePropertyValueArray
- (KGMutablePropertyValueArray)init;
- (void)appendValue:(id)value forIdentifier:(unint64_t)identifier;
@end

@implementation KGMutablePropertyValueArray

- (void)appendValue:(id)value forIdentifier:(unint64_t)identifier
{
  valueCopy = value;
  elementIdentifiers = [(KGPropertyValueArray *)self elementIdentifiers];
  [elementIdentifiers addIdentifier:identifier];
  values = [(KGPropertyValueArray *)self values];
  [values addObject:valueCopy];
}

- (KGMutablePropertyValueArray)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(KGMutableElementIdentifierSet);
  v7.receiver = self;
  v7.super_class = KGMutablePropertyValueArray;
  v5 = [(KGPropertyValueArray *)&v7 initWithValues:v3 elementIdentifiers:v4];

  return v5;
}

@end