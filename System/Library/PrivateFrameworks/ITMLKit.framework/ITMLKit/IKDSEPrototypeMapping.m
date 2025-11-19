@interface IKDSEPrototypeMapping
+ (id)prototypeMappingFromAppPrototype:(id)a3 dataSourceElement:(id)a4 elementFactory:(id)a5;
- (IKDSEPrototypeMapping)initWithIdentifier:(id)a3 viewElement:(id)a4 usageIndexes:(id)a5;
@end

@implementation IKDSEPrototypeMapping

+ (id)prototypeMappingFromAppPrototype:(id)a3 dataSourceElement:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 dsepm_viewElement];
  v12 = [v9 updateType];
  if (!v11 || v12 == 4)
  {
    v13 = [v8 prototype];
    v14 = [v13 domElement];

    v15 = [v8 prototype];
    v16 = [v15 grouping];

    if (v16)
    {
      v17 = +[IKAppContext currentAppContext];
      v18 = [v17 jsContext];

      v19 = [v14 cloneNode:1];
      [v19 _setAliasOf:v14];
      v20 = MEMORY[0x277CD4658];
      v21 = [v8 groupingValues];
      v22 = [v20 valueWithObject:v21 inContext:v18];
      [v19 setDataItem:v22];

      v14 = v19;
    }

    v23 = [v10 elementForDOMElement:v14 parent:v9];

    [v8 dsepm_setViewElement:v23];
    v11 = v23;
  }

  v24 = [a1 alloc];
  v25 = [v8 identifier];
  v26 = [v8 usageIndexes];
  v27 = [v24 initWithIdentifier:v25 viewElement:v11 usageIndexes:v26];

  return v27;
}

- (IKDSEPrototypeMapping)initWithIdentifier:(id)a3 viewElement:(id)a4 usageIndexes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = IKDSEPrototypeMapping;
  v12 = [(IKDSEPrototypeMapping *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_viewElement, a4);
    v14 = [v11 copy];
    usageIndexes = v13->_usageIndexes;
    v13->_usageIndexes = v14;
  }

  return v13;
}

@end