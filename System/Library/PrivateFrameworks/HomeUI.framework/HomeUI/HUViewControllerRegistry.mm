@interface HUViewControllerRegistry
+ (id)sharedInstance;
- (Class)viewControllerClassForIdentifier:(id)identifier;
- (HUViewControllerRegistry)init;
- (void)registerViewControllerClass:(Class)class forIdentifier:(id)identifier;
@end

@implementation HUViewControllerRegistry

+ (id)sharedInstance
{
  if (_MergedGlobals_626 != -1)
  {
    dispatch_once(&_MergedGlobals_626, &__block_literal_global_4_0);
  }

  v3 = qword_281121F90;

  return v3;
}

void __42__HUViewControllerRegistry_sharedInstance__block_invoke_2()
{
  v0 = objc_alloc_init(HUViewControllerRegistry);
  v1 = qword_281121F90;
  qword_281121F90 = v0;
}

- (HUViewControllerRegistry)init
{
  v6.receiver = self;
  v6.super_class = HUViewControllerRegistry;
  v2 = [(HUViewControllerRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    viewControllerClassesByIdentifier = v2->_viewControllerClassesByIdentifier;
    v2->_viewControllerClassesByIdentifier = v3;
  }

  return v2;
}

- (Class)viewControllerClassForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewControllerClassesByIdentifier = [(HUViewControllerRegistry *)self viewControllerClassesByIdentifier];
  v6 = [viewControllerClassesByIdentifier objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (void)registerViewControllerClass:(Class)class forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewControllerClassesByIdentifier = [(HUViewControllerRegistry *)self viewControllerClassesByIdentifier];
  [viewControllerClassesByIdentifier setObject:class forKeyedSubscript:identifierCopy];
}

@end