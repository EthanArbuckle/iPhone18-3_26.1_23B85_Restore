@interface _CPLPrequeliteHasCompletedGeneration
- (_CPLPrequeliteHasCompletedGeneration)initWithSQL:(id)a3 generation:(int64_t)a4 now:(id)a5;
- (int)bindWithStatement:(sqlite3_stmt *)a3 startingAtIndex:(int)a4;
@end

@implementation _CPLPrequeliteHasCompletedGeneration

- (_CPLPrequeliteHasCompletedGeneration)initWithSQL:(id)a3 generation:(int64_t)a4 now:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _CPLPrequeliteHasCompletedGeneration;
  v11 = [(_CPLPrequeliteHasCompletedGeneration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_generation = a4;
    objc_storeStrong(&v11->_sql, a3);
    objc_storeStrong(&v12->_now, a5);
  }

  return v12;
}

- (int)bindWithStatement:(sqlite3_stmt *)a3 startingAtIndex:(int)a4
{
  sqlite3_bind_int64(a3, a4, self->_generation);
  now = self->_now;
  if (!now)
  {
    return 1;
  }

  [(PQLBindable *)now sqliteBind:a3 index:(a4 + 1)];
  return 2;
}

@end