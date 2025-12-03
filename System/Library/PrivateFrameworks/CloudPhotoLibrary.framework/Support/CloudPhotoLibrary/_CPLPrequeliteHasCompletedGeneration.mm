@interface _CPLPrequeliteHasCompletedGeneration
- (_CPLPrequeliteHasCompletedGeneration)initWithSQL:(id)l generation:(int64_t)generation now:(id)now;
- (int)bindWithStatement:(sqlite3_stmt *)statement startingAtIndex:(int)index;
@end

@implementation _CPLPrequeliteHasCompletedGeneration

- (_CPLPrequeliteHasCompletedGeneration)initWithSQL:(id)l generation:(int64_t)generation now:(id)now
{
  lCopy = l;
  nowCopy = now;
  v14.receiver = self;
  v14.super_class = _CPLPrequeliteHasCompletedGeneration;
  v11 = [(_CPLPrequeliteHasCompletedGeneration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_generation = generation;
    objc_storeStrong(&v11->_sql, l);
    objc_storeStrong(&v12->_now, now);
  }

  return v12;
}

- (int)bindWithStatement:(sqlite3_stmt *)statement startingAtIndex:(int)index
{
  sqlite3_bind_int64(statement, index, self->_generation);
  now = self->_now;
  if (!now)
  {
    return 1;
  }

  [(PQLBindable *)now sqliteBind:statement index:(index + 1)];
  return 2;
}

@end