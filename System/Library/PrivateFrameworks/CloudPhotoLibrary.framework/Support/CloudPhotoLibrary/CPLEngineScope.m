@interface CPLEngineScope
- (CPLEngineScope)initWithPrequeliteDictionary:(id)a3 base:(id)a4;
@end

@implementation CPLEngineScope

- (CPLEngineScope)initWithPrequeliteDictionary:(id)a3 base:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 scopeIdentifierVar];
  v10 = [v7 objectForKeyedSubscript:v9];

  if (!v10)
  {
    sub_1001B6FF4(a2, self);
  }

  v11 = [v8 scopeTypeVar];
  v12 = [v7 objectForKeyedSubscript:v11];
  v13 = [v12 integerValue];

  v14 = [(CPLEngineScope *)self initWithScopeIdentifier:v10 scopeType:v13];
  if (v14)
  {
    v15 = [v8 localIndexVar];
    v16 = [v7 objectForKeyedSubscript:v15];
    -[CPLEngineScope setLocalIndex:](v14, "setLocalIndex:", [v16 integerValue]);

    v17 = [v8 cloudIndexVar];
    v18 = [v7 objectForKeyedSubscript:v17];
    -[CPLEngineScope setCloudIndex:](v14, "setCloudIndex:", [v18 integerValue]);

    v19 = [v8 stableIndexVar];
    v20 = [v7 objectForKeyedSubscript:v19];
    -[CPLEngineScope setStableIndex:](v14, "setStableIndex:", [v20 integerValue]);

    v21 = [v8 creationDateVar];
    v22 = [v7 objectForKeyedSubscript:v21];
    [(CPLEngineScope *)v14 setCreationDate:v22];
  }

  return v14;
}

@end