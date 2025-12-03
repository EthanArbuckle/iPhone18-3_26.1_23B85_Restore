@interface IKDSEPrototypeMapping
+ (id)prototypeMappingFromAppPrototype:(id)prototype dataSourceElement:(id)element elementFactory:(id)factory;
- (IKDSEPrototypeMapping)initWithIdentifier:(id)identifier viewElement:(id)element usageIndexes:(id)indexes;
@end

@implementation IKDSEPrototypeMapping

+ (id)prototypeMappingFromAppPrototype:(id)prototype dataSourceElement:(id)element elementFactory:(id)factory
{
  prototypeCopy = prototype;
  elementCopy = element;
  factoryCopy = factory;
  dsepm_viewElement = [prototypeCopy dsepm_viewElement];
  updateType = [elementCopy updateType];
  if (!dsepm_viewElement || updateType == 4)
  {
    prototype = [prototypeCopy prototype];
    domElement = [prototype domElement];

    prototype2 = [prototypeCopy prototype];
    grouping = [prototype2 grouping];

    if (grouping)
    {
      v17 = +[IKAppContext currentAppContext];
      jsContext = [v17 jsContext];

      v19 = [domElement cloneNode:1];
      [v19 _setAliasOf:domElement];
      v20 = MEMORY[0x277CD4658];
      groupingValues = [prototypeCopy groupingValues];
      v22 = [v20 valueWithObject:groupingValues inContext:jsContext];
      [v19 setDataItem:v22];

      domElement = v19;
    }

    v23 = [factoryCopy elementForDOMElement:domElement parent:elementCopy];

    [prototypeCopy dsepm_setViewElement:v23];
    dsepm_viewElement = v23;
  }

  v24 = [self alloc];
  identifier = [prototypeCopy identifier];
  usageIndexes = [prototypeCopy usageIndexes];
  v27 = [v24 initWithIdentifier:identifier viewElement:dsepm_viewElement usageIndexes:usageIndexes];

  return v27;
}

- (IKDSEPrototypeMapping)initWithIdentifier:(id)identifier viewElement:(id)element usageIndexes:(id)indexes
{
  identifierCopy = identifier;
  elementCopy = element;
  indexesCopy = indexes;
  v17.receiver = self;
  v17.super_class = IKDSEPrototypeMapping;
  v12 = [(IKDSEPrototypeMapping *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_viewElement, element);
    v14 = [indexesCopy copy];
    usageIndexes = v13->_usageIndexes;
    v13->_usageIndexes = v14;
  }

  return v13;
}

@end