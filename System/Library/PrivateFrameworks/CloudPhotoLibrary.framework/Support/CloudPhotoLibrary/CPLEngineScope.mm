@interface CPLEngineScope
- (CPLEngineScope)initWithPrequeliteDictionary:(id)dictionary base:(id)base;
@end

@implementation CPLEngineScope

- (CPLEngineScope)initWithPrequeliteDictionary:(id)dictionary base:(id)base
{
  dictionaryCopy = dictionary;
  baseCopy = base;
  scopeIdentifierVar = [baseCopy scopeIdentifierVar];
  v10 = [dictionaryCopy objectForKeyedSubscript:scopeIdentifierVar];

  if (!v10)
  {
    sub_1001B6FF4(a2, self);
  }

  scopeTypeVar = [baseCopy scopeTypeVar];
  v12 = [dictionaryCopy objectForKeyedSubscript:scopeTypeVar];
  integerValue = [v12 integerValue];

  v14 = [(CPLEngineScope *)self initWithScopeIdentifier:v10 scopeType:integerValue];
  if (v14)
  {
    localIndexVar = [baseCopy localIndexVar];
    v16 = [dictionaryCopy objectForKeyedSubscript:localIndexVar];
    -[CPLEngineScope setLocalIndex:](v14, "setLocalIndex:", [v16 integerValue]);

    cloudIndexVar = [baseCopy cloudIndexVar];
    v18 = [dictionaryCopy objectForKeyedSubscript:cloudIndexVar];
    -[CPLEngineScope setCloudIndex:](v14, "setCloudIndex:", [v18 integerValue]);

    stableIndexVar = [baseCopy stableIndexVar];
    v20 = [dictionaryCopy objectForKeyedSubscript:stableIndexVar];
    -[CPLEngineScope setStableIndex:](v14, "setStableIndex:", [v20 integerValue]);

    creationDateVar = [baseCopy creationDateVar];
    v22 = [dictionaryCopy objectForKeyedSubscript:creationDateVar];
    [(CPLEngineScope *)v14 setCreationDate:v22];
  }

  return v14;
}

@end