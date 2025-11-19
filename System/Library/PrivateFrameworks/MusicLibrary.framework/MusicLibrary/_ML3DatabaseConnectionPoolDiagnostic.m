@interface _ML3DatabaseConnectionPoolDiagnostic
- (id)_copyWithZone:(_NSZone *)a3 usingConcreteClass:(Class)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation _ML3DatabaseConnectionPoolDiagnostic

- (id)_copyWithZone:(_NSZone *)a3 usingConcreteClass:(Class)a4
{
  v5 = objc_alloc_init(a4);
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(_ML3DatabaseConnectionPoolDiagnostic *)self _copyWithZone:a3 usingConcreteClass:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(_ML3DatabaseConnectionPoolDiagnostic *)self _copyWithZone:a3 usingConcreteClass:v5];
}

@end