@interface _CRSQLiteConnectionWrapper
- (_CRSQLiteConnectionWrapper)initWithConnection:(id)a3 generation:(unint64_t)a4;
- (void)dealloc;
@end

@implementation _CRSQLiteConnectionWrapper

- (_CRSQLiteConnectionWrapper)initWithConnection:(id)a3 generation:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = _CRSQLiteConnectionWrapper;
  v6 = [(_CRSQLiteConnectionWrapper *)&v8 init];
  if (v6)
  {
    v6->_connection = a3;
    v6->_generation = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CRSQLiteConnectionWrapper;
  [(_CRSQLiteConnectionWrapper *)&v3 dealloc];
}

@end