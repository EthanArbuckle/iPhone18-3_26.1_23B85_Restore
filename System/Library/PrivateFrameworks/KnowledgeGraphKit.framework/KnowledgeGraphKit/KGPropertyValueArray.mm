@interface KGPropertyValueArray
- (KGPropertyValueArray)initWithValues:(id)values elementIdentifiers:(id)identifiers;
- (void)enumerateUsingBlock:(id)block;
@end

@implementation KGPropertyValueArray

- (void)enumerateUsingBlock:(id)block
{
  blockCopy = block;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  elementIdentifiers = self->_elementIdentifiers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__KGPropertyValueArray_enumerateUsingBlock___block_invoke;
  v7[3] = &unk_2797FF868;
  v7[4] = self;
  v9 = v10;
  v6 = blockCopy;
  v8 = v6;
  [(KGElementIdentifierSet *)elementIdentifiers enumerateIdentifiersWithBlock:v7];

  _Block_object_dispose(v10, 8);
}

void __44__KGPropertyValueArray_enumerateUsingBlock___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  ++*(*(a1[6] + 8) + 24);
  v3 = [v2 objectAtIndexedSubscript:?];
  (*(a1[5] + 16))();
}

- (KGPropertyValueArray)initWithValues:(id)values elementIdentifiers:(id)identifiers
{
  valuesCopy = values;
  identifiersCopy = identifiers;
  v12.receiver = self;
  v12.super_class = KGPropertyValueArray;
  v9 = [(KGPropertyValueArray *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_values, values);
    objc_storeStrong(&v10->_elementIdentifiers, identifiers);
  }

  return v10;
}

@end