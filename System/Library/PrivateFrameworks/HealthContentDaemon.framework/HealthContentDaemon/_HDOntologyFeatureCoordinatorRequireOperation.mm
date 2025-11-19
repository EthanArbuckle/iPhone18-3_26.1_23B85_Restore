@interface _HDOntologyFeatureCoordinatorRequireOperation
- (_HDOntologyFeatureCoordinatorRequireOperation)init;
- (_HDOntologyFeatureCoordinatorRequireOperation)initWithCoder:(id)a3;
- (id)initWithItems:(id *)a1;
- (id)transactionContext;
@end

@implementation _HDOntologyFeatureCoordinatorRequireOperation

- (id)transactionContext
{
  v2 = [MEMORY[0x277D10788] contextForReadingProtectedData];
  [v2 setAllowsJournalingDuringProtectedRead:1];
  v3 = [v2 copy];

  return v3;
}

- (_HDOntologyFeatureCoordinatorRequireOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (_HDOntologyFeatureCoordinatorRequireOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _HDOntologyFeatureCoordinatorRequireOperation;
  v5 = [(_HDOntologyFeatureCoordinatorRequireOperation *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"items"];
    items = v5->_items;
    v5->_items = v7;
  }

  return v5;
}

- (id)initWithItems:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _HDOntologyFeatureCoordinatorRequireOperation;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
    }
  }

  return a1;
}

@end