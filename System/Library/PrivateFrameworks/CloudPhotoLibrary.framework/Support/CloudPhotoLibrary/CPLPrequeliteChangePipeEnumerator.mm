@interface CPLPrequeliteChangePipeEnumerator
- (CPLPrequeliteChangePipeEnumerator)initWithStore:(id)store table:(id)table;
- (void)enumerateChangesWithBlock:(id)block;
@end

@implementation CPLPrequeliteChangePipeEnumerator

- (CPLPrequeliteChangePipeEnumerator)initWithStore:(id)store table:(id)table
{
  storeCopy = store;
  tableCopy = table;
  v16.receiver = self;
  v16.super_class = CPLPrequeliteChangePipeEnumerator;
  v9 = [(CPLPrequeliteChangePipeEnumerator *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    objc_storeStrong(&v10->_table, table);
    table = v10->_table;
    v12 = +[CPLPrequeliteType integerType];
    v13 = [CPLPrequeliteVariable variableWithName:@"pullMarker" forTable:table type:v12];
    pullGenerationVar = v10->_pullGenerationVar;
    v10->_pullGenerationVar = v13;

    v10->_hasAlterationFlags = [storeCopy table:v10->_table hasColumnWithName:@"flags"];
  }

  return v10;
}

- (void)enumerateChangesWithBlock:(id)block
{
  blockCopy = block;
  pqlConnection = [(CPLPrequeliteStore *)self->_store pqlConnection];
  v6 = [(CPLPrequeliteStore *)self->_store valueForGlobalVariable:self->_pullGenerationVar];
  integerValue = [v6 integerValue];

  if (self->_hasAlterationFlags)
  {
    v8 = @"SELECT serializedRecord, flags FROM %@ WHERE batch_marker >= %lu";
  }

  else
  {
    v8 = @"SELECT serializedRecord FROM %@ WHERE batch_marker >= %lu";
  }

  v9 = [pqlConnection cplFetch:{v8, self->_table, integerValue}];
  do
  {
    if (![v9 next])
    {
      break;
    }

    v10 = objc_autoreleasePoolPush();
    v11 = [v9 cplChangeAtIndex:0];
    v12 = self->_hasAlterationFlags ? [v9 unsignedIntegerAtIndex:1] : 0;
    v14 = 0;
    blockCopy[2](blockCopy, v11, v12, &v14);
    v13 = v14;

    objc_autoreleasePoolPop(v10);
  }

  while (v13 != 1);
}

@end