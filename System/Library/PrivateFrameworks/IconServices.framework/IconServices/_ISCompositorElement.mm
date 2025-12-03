@interface _ISCompositorElement
- (_ISCompositorElement)init;
- (_ISCompositorElement)initWithRecipe:(id)recipe resources:(id)resources;
- (id)resourceNamed:(id)named;
- (void)addResourcesFromDictionary:(id)dictionary;
- (void)clearResources;
- (void)setResource:(id)resource forName:(id)name;
@end

@implementation _ISCompositorElement

- (_ISCompositorElement)init
{
  v3 = objc_alloc_init(ISGenericRecipe);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = [(_ISCompositorElement *)self initWithRecipe:v3 resources:dictionary];

  return v5;
}

- (_ISCompositorElement)initWithRecipe:(id)recipe resources:(id)resources
{
  recipeCopy = recipe;
  resourcesCopy = resources;
  v13.receiver = self;
  v13.super_class = _ISCompositorElement;
  v9 = [(_ISCompositorElement *)&v13 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:resourcesCopy];
    resourceByName = v9->_resourceByName;
    v9->_resourceByName = v10;

    objc_storeStrong(&v9->_recipe, recipe);
  }

  return v9;
}

- (void)setResource:(id)resource forName:(id)name
{
  resourceCopy = resource;
  nameCopy = name;
  resourceByName = [(_ISCompositorElement *)self resourceByName];
  v8 = resourceByName;
  if (resourceCopy)
  {
    [resourceByName setObject:resourceCopy forKey:nameCopy];
  }

  else
  {
    [resourceByName removeObjectForKey:nameCopy];
  }
}

- (void)addResourcesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  resourceByName = [(_ISCompositorElement *)self resourceByName];
  [resourceByName addEntriesFromDictionary:dictionaryCopy];
}

- (void)clearResources
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  resourceByName = self->_resourceByName;
  self->_resourceByName = dictionary;

  MEMORY[0x1EEE66BB8]();
}

- (id)resourceNamed:(id)named
{
  namedCopy = named;
  resourceByName = [(_ISCompositorElement *)self resourceByName];
  v6 = [resourceByName _IS_resourceNamed:namedCopy];

  return v6;
}

@end