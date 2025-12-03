@interface _CPLPrequeliteHasSomethingTodoNow
- (_CPLPrequeliteHasSomethingTodoNow)initWithSQL:(id)l now:(id)now;
- (int)bindWithStatement:(sqlite3_stmt *)statement startingAtIndex:(int)index;
@end

@implementation _CPLPrequeliteHasSomethingTodoNow

- (_CPLPrequeliteHasSomethingTodoNow)initWithSQL:(id)l now:(id)now
{
  lCopy = l;
  nowCopy = now;
  v12.receiver = self;
  v12.super_class = _CPLPrequeliteHasSomethingTodoNow;
  v9 = [(_CPLPrequeliteHasSomethingTodoNow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_now, now);
    objc_storeStrong(&v10->_sql, l);
  }

  return v10;
}

- (int)bindWithStatement:(sqlite3_stmt *)statement startingAtIndex:(int)index
{
  [PQLBindable sqliteBind:"sqliteBind:index:" index:?];
  [(PQLBindable *)self->_now sqliteBind:statement index:(index + 1)];
  return 2;
}

@end