@interface ISCompositorElement
- (ISCompositorElement)initWithRecipe:(id)a3 resourceProvider:(id)a4;
- (ISCompositorElement)initWithRecipe:(id)a3 resourceProvider:(id)a4 additionalResources:(id)a5;
- (ISCompositorResourceProvider)resourceProvider;
- (id)resourceForKey:(id)a3;
- (id)resourceNamed:(id)a3;
@end

@implementation ISCompositorElement

- (ISCompositorElement)initWithRecipe:(id)a3 resourceProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ISCompositorElement;
  v9 = [(ISCompositorElement *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recipe, a3);
    objc_storeStrong(&v10->_resourceProvider, a4);
  }

  return v10;
}

- (ISCompositorElement)initWithRecipe:(id)a3 resourceProvider:(id)a4 additionalResources:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ISCompositorElement;
  v12 = [(ISCompositorElement *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_recipe, a3);
    objc_storeStrong(&v13->_resourceProvider, a4);
    v14 = [v11 copy];
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

  v2 = self;

  return v2;
}

- (id)resourceForKey:(id)a3
{
  resourceProvider = self->_resourceProvider;
  v5 = a3;
  v6 = objc_opt_respondsToSelector();
  v7 = self->_resourceProvider;
  if (v6)
  {
    v8 = [(ISCompositorResourceProvider *)v7 resourceForKey:v5];
  }

  else
  {
    v9 = [v5 name];

    v8 = [(ISCompositorResourceProvider *)v7 resourceNamed:v9];
    v5 = v9;
  }

  return v8;
}

- (id)resourceNamed:(id)a3
{
  v4 = a3;
  v5 = [(ISCompositorResourceProvider *)self->_resourceProvider resourceNamed:v4];
  if (!v5)
  {
    v5 = [(NSDictionary *)self->_additionalResources _IS_resourceNamed:v4];
  }

  return v5;
}

@end