@interface _ML3DatabaseConnectionWrapper
- (_ML3DatabaseConnectionWrapper)initWithConnection:(id)connection;
- (id)debugDescription;
- (id)description;
@end

@implementation _ML3DatabaseConnectionWrapper

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  useCount = self->_useCount;
  owningThread = self->_owningThread;
  v8 = [(ML3DatabaseConnection *)self->_connection debugDescription];
  v9 = [v3 stringWithFormat:@"<%@ %p use = %lld, thread = %@, conn = %p>", v5, self, useCount, owningThread, v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p use = %lld, thread = %@, conn = %p>", v5, self, self->_useCount, self->_owningThread, self->_connection];

  return v6;
}

- (_ML3DatabaseConnectionWrapper)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = _ML3DatabaseConnectionWrapper;
  v6 = [(_ML3DatabaseConnectionWrapper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    owningThread = v7->_owningThread;
    v7->_owningThread = 0;

    v7->_useCount = 0;
  }

  return v7;
}

@end