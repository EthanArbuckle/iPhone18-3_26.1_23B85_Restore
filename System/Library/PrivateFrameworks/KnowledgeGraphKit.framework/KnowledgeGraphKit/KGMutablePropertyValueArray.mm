@interface KGMutablePropertyValueArray
- (KGMutablePropertyValueArray)init;
- (void)appendValue:(id)a3 forIdentifier:(unint64_t)a4;
@end

@implementation KGMutablePropertyValueArray

- (void)appendValue:(id)a3 forIdentifier:(unint64_t)a4
{
  v6 = a3;
  v8 = [(KGPropertyValueArray *)self elementIdentifiers];
  [v8 addIdentifier:a4];
  v7 = [(KGPropertyValueArray *)self values];
  [v7 addObject:v6];
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