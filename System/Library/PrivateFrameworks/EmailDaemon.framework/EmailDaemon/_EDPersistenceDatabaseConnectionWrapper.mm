@interface _EDPersistenceDatabaseConnectionWrapper
- (_EDPersistenceDatabaseConnectionWrapper)initWithConnection:(id)connection generation:(unint64_t)generation;
@end

@implementation _EDPersistenceDatabaseConnectionWrapper

- (_EDPersistenceDatabaseConnectionWrapper)initWithConnection:(id)connection generation:(unint64_t)generation
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = _EDPersistenceDatabaseConnectionWrapper;
  v8 = [(_EDPersistenceDatabaseConnectionWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, connection);
    v9->_generation = generation;
  }

  return v9;
}

@end