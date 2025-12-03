@interface _CRKCardSectionViewControllerFactory
+ (id)_sharedInstance;
+ (id)cardSectionViewControllerForCardSection:(id)section;
+ (void)registerCardSectionViewControllerClass:(Class)class;
- (_CRKCardSectionViewControllerFactory)init;
- (id)_cardSectionViewControllerForCardSection:(id)section;
- (void)_registerCardSectionViewControllerClass:(Class)class;
@end

@implementation _CRKCardSectionViewControllerFactory

- (_CRKCardSectionViewControllerFactory)init
{
  v6.receiver = self;
  v6.super_class = _CRKCardSectionViewControllerFactory;
  v2 = [(_CRKCardSectionViewControllerFactory *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_CRKCardSectionViewControllerRegistry);
    registry = v2->_registry;
    v2->_registry = v3;
  }

  return v2;
}

+ (id)_sharedInstance
{
  if (_sharedInstance_onceToken != -1)
  {
    +[_CRKCardSectionViewControllerFactory _sharedInstance];
  }

  v3 = _sharedInstance_sStaticFactory;

  return v3;
}

+ (void)registerCardSectionViewControllerClass:(Class)class
{
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _registerCardSectionViewControllerClass:class];
}

- (void)_registerCardSectionViewControllerClass:(Class)class
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  cardSectionClasses = [(objc_class *)class cardSectionClasses];
  v6 = [cardSectionClasses countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(cardSectionClasses);
        }

        [(_CRKCardSectionViewControllerRegistry *)self->_registry registerCardSectionViewControllerClass:class forCardSectionClass:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [cardSectionClasses countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

+ (id)cardSectionViewControllerForCardSection:(id)section
{
  sectionCopy = section;
  _sharedInstance = [self _sharedInstance];
  v6 = [_sharedInstance _cardSectionViewControllerForCardSection:sectionCopy];

  return v6;
}

- (id)_cardSectionViewControllerForCardSection:(id)section
{
  sectionCopy = section;
  registry = self->_registry;
  v6 = sectionCopy;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 backingCardSection], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = objc_opt_class();
  }

  else
  {
    v9 = objc_opt_class();
  }

  v10 = v9;

  v11 = [objc_alloc(-[_CRKCardSectionViewControllerRegistry cardSectionViewControllerClassForCardSectionClass:](registry cardSectionViewControllerClassForCardSectionClass:{v9)), "_initWithCardSection:", v6}];

  return v11;
}

@end