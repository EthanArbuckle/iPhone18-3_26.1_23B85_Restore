@interface _CPLPrequeliteScopeBase
- (_CPLPrequeliteScopeBase)init;
@end

@implementation _CPLPrequeliteScopeBase

- (_CPLPrequeliteScopeBase)init
{
  v3 = +[CPLPrequeliteType stringType];
  v4 = [CPLPrequeliteVariable variableWithName:@"scopeIdentifier" defaultValue:0 type:v3];

  [v4 setUnique:1];
  [v4 setAllowsNull:0];
  v5 = +[CPLPrequeliteType integerType];
  v6 = [CPLPrequeliteVariable variableWithName:@"scopeType" defaultValue:&off_10028F028 type:v5];

  v7 = +[CPLPrequeliteType integerType];
  v8 = [CPLPrequeliteVariable variableWithName:@"localIndex" defaultValue:0 type:v7];

  [v8 setUnique:1];
  [v8 setAllowsNull:0];
  v9 = +[CPLPrequeliteType integerType];
  v10 = [CPLPrequeliteVariable variableWithName:@"cloudIndex" defaultValue:0 type:v9];

  [v10 setUnique:1];
  [v10 setAllowsNull:0];
  v11 = +[CPLPrequeliteType integerType];
  v12 = [CPLPrequeliteVariable variableWithName:@"stableIndex" defaultValue:0 type:v11];

  [v12 setUnique:1];
  [v12 setAllowsNull:0];
  v13 = +[CPLPrequeliteType dateType];
  v14 = [CPLPrequeliteVariable variableWithName:@"creationDate" defaultValue:0 type:v13];

  [v14 setAllowsNull:0];
  v19[0] = v4;
  v19[1] = v6;
  v19[2] = v8;
  v19[3] = v10;
  v19[4] = v12;
  v19[5] = v14;
  v15 = [NSArray arrayWithObjects:v19 count:6];
  v18.receiver = self;
  v18.super_class = _CPLPrequeliteScopeBase;
  v16 = [(CPLPrequeliteVariableGroup *)&v18 initWithVariables:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_scopeIdentifierVar, v4);
    objc_storeStrong(&v16->_scopeTypeVar, v6);
    objc_storeStrong(&v16->_localIndexVar, v8);
    objc_storeStrong(&v16->_cloudIndexVar, v10);
    objc_storeStrong(&v16->_stableIndexVar, v12);
    objc_storeStrong(&v16->_creationDateVar, v14);
  }

  return v16;
}

@end