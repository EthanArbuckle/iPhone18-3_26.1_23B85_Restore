@interface _CPLPrequeliteHasSomethingTodoNow
- (_CPLPrequeliteHasSomethingTodoNow)initWithSQL:(id)a3 now:(id)a4;
- (int)bindWithStatement:(sqlite3_stmt *)a3 startingAtIndex:(int)a4;
@end

@implementation _CPLPrequeliteHasSomethingTodoNow

- (_CPLPrequeliteHasSomethingTodoNow)initWithSQL:(id)a3 now:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _CPLPrequeliteHasSomethingTodoNow;
  v9 = [(_CPLPrequeliteHasSomethingTodoNow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_now, a4);
    objc_storeStrong(&v10->_sql, a3);
  }

  return v10;
}

- (int)bindWithStatement:(sqlite3_stmt *)a3 startingAtIndex:(int)a4
{
  [PQLBindable sqliteBind:"sqliteBind:index:" index:?];
  [(PQLBindable *)self->_now sqliteBind:a3 index:(a4 + 1)];
  return 2;
}

@end