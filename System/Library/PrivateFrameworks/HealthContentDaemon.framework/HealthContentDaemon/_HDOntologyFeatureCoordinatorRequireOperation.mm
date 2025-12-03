@interface _HDOntologyFeatureCoordinatorRequireOperation
- (_HDOntologyFeatureCoordinatorRequireOperation)init;
- (_HDOntologyFeatureCoordinatorRequireOperation)initWithCoder:(id)coder;
- (id)initWithItems:(id *)items;
- (id)transactionContext;
@end

@implementation _HDOntologyFeatureCoordinatorRequireOperation

- (id)transactionContext
{
  contextForReadingProtectedData = [MEMORY[0x277D10788] contextForReadingProtectedData];
  [contextForReadingProtectedData setAllowsJournalingDuringProtectedRead:1];
  v3 = [contextForReadingProtectedData copy];

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

- (_HDOntologyFeatureCoordinatorRequireOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _HDOntologyFeatureCoordinatorRequireOperation;
  v5 = [(_HDOntologyFeatureCoordinatorRequireOperation *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"items"];
    items = v5->_items;
    v5->_items = v7;
  }

  return v5;
}

- (id)initWithItems:(id *)items
{
  v4 = a2;
  if (items)
  {
    v7.receiver = items;
    v7.super_class = _HDOntologyFeatureCoordinatorRequireOperation;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    items = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
    }
  }

  return items;
}

@end