@interface ISCompositorElement
- (ISCompositorElement)initWithRecipe:(id)recipe resourceProvider:(id)provider;
- (ISCompositorElement)initWithRecipe:(id)recipe resourceProvider:(id)provider additionalResources:(id)resources;
- (ISCompositorResourceProvider)resourceProvider;
- (id)resourceForKey:(id)key;
- (id)resourceNamed:(id)named;
@end

@implementation ISCompositorElement

- (ISCompositorElement)initWithRecipe:(id)recipe resourceProvider:(id)provider
{
  recipeCopy = recipe;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = ISCompositorElement;
  v9 = [(ISCompositorElement *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recipe, recipe);
    objc_storeStrong(&v10->_resourceProvider, provider);
  }

  return v10;
}

- (ISCompositorElement)initWithRecipe:(id)recipe resourceProvider:(id)provider additionalResources:(id)resources
{
  recipeCopy = recipe;
  providerCopy = provider;
  resourcesCopy = resources;
  v17.receiver = self;
  v17.super_class = ISCompositorElement;
  v12 = [(ISCompositorElement *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_recipe, recipe);
    objc_storeStrong(&v13->_resourceProvider, provider);
    v14 = [resourcesCopy copy];
    additionalResources = v13->_additionalResources;
    v13->_additionalResources = v14;
  }

  return v13;
}

- (ISCompositorResourceProvider)resourceProvider
{
  if (!self->_additionalResources)
  {
    self = self->_resourceProvider;
  }

  selfCopy = self;

  return selfCopy;
}

- (id)resourceForKey:(id)key
{
  resourceProvider = self->_resourceProvider;
  keyCopy = key;
  v6 = objc_opt_respondsToSelector();
  v7 = self->_resourceProvider;
  if (v6)
  {
    v8 = [(ISCompositorResourceProvider *)v7 resourceForKey:keyCopy];
  }

  else
  {
    name = [keyCopy name];

    v8 = [(ISCompositorResourceProvider *)v7 resourceNamed:name];
    keyCopy = name;
  }

  return v8;
}

- (id)resourceNamed:(id)named
{
  namedCopy = named;
  v5 = [(ISCompositorResourceProvider *)self->_resourceProvider resourceNamed:namedCopy];
  if (!v5)
  {
    v5 = [(NSDictionary *)self->_additionalResources _IS_resourceNamed:namedCopy];
  }

  return v5;
}

@end