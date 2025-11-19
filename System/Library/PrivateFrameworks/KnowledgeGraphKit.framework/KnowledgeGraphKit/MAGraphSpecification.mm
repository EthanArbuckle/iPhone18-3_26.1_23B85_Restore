@interface MAGraphSpecification
- (MAGraphSpecification)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MAGraphSpecification

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  *(v4 + 8) = self->_persistenceOptions;
  objc_storeStrong((v4 + 16), self->_defaultNodeClass);
  objc_storeStrong((v4 + 24), self->_defaultEdgeClass);
  objc_storeStrong((v4 + 32), self->_rootGraphReference);
  return v4;
}

- (MAGraphSpecification)init
{
  v8.receiver = self;
  v8.super_class = MAGraphSpecification;
  v2 = [(MAGraphSpecification *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_class();
    defaultNodeClass = v2->_defaultNodeClass;
    v2->_defaultNodeClass = v3;

    v5 = objc_opt_class();
    defaultEdgeClass = v2->_defaultEdgeClass;
    v2->_defaultEdgeClass = v5;
  }

  return v2;
}

@end