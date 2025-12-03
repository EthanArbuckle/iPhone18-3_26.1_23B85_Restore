@interface _ML3DatabaseConnectionPoolDiagnostic
- (id)_copyWithZone:(_NSZone *)zone usingConcreteClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation _ML3DatabaseConnectionPoolDiagnostic

- (id)_copyWithZone:(_NSZone *)zone usingConcreteClass:(Class)class
{
  v5 = objc_alloc_init(class);
  v6 = [(NSArray *)self->_readerAvailableConnections copy];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSArray *)self->_readerBusyConnections copy];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSArray *)self->_writerAvailableConnections copy];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSArray *)self->_writerBusyConnections copy];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(_ML3DatabaseConnectionPoolDiagnostic *)self _copyWithZone:zone usingConcreteClass:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(_ML3DatabaseConnectionPoolDiagnostic *)self _copyWithZone:zone usingConcreteClass:v5];
}

@end