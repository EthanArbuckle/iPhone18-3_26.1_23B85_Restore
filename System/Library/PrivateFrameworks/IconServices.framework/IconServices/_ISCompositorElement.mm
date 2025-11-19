@interface _ISCompositorElement
- (_ISCompositorElement)init;
- (_ISCompositorElement)initWithRecipe:(id)a3 resources:(id)a4;
- (id)resourceNamed:(id)a3;
- (void)addResourcesFromDictionary:(id)a3;
- (void)clearResources;
- (void)setResource:(id)a3 forName:(id)a4;
@end

@implementation _ISCompositorElement

- (_ISCompositorElement)init
{
  v3 = objc_alloc_init(ISGenericRecipe);
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [(_ISCompositorElement *)self initWithRecipe:v3 resources:v4];

  return v5;
}

- (_ISCompositorElement)initWithRecipe:(id)a3 resources:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _ISCompositorElement;
  v9 = [(_ISCompositorElement *)&v13 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];
    resourceByName = v9->_resourceByName;
    v9->_resourceByName = v10;

    objc_storeStrong(&v9->_recipe, a3);
  }

  return v9;
}

- (void)setResource:(id)a3 forName:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(_ISCompositorElement *)self resourceByName];
  v8 = v7;
  if (v9)
  {
    [v7 setObject:v9 forKey:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }
}

- (void)addResourcesFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [(_ISCompositorElement *)self resourceByName];
  [v5 addEntriesFromDictionary:v4];
}

- (void)clearResources
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  resourceByName = self->_resourceByName;
  self->_resourceByName = v3;

  MEMORY[0x1EEE66BB8]();
}

- (id)resourceNamed:(id)a3
{
  v4 = a3;
  v5 = [(_ISCompositorElement *)self resourceByName];
  v6 = [v5 _IS_resourceNamed:v4];

  return v6;
}

@end