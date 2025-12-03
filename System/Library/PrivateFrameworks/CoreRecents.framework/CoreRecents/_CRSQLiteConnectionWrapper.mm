@interface _CRSQLiteConnectionWrapper
- (_CRSQLiteConnectionWrapper)initWithConnection:(id)connection generation:(unint64_t)generation;
- (void)dealloc;
@end

@implementation _CRSQLiteConnectionWrapper

- (_CRSQLiteConnectionWrapper)initWithConnection:(id)connection generation:(unint64_t)generation
{
  v8.receiver = self;
  v8.super_class = _CRSQLiteConnectionWrapper;
  v6 = [(_CRSQLiteConnectionWrapper *)&v8 init];
  if (v6)
  {
    v6->_connection = connection;
    v6->_generation = generation;
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