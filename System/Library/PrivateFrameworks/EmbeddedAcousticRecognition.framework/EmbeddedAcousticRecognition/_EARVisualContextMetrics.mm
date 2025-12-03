@interface _EARVisualContextMetrics
- (_EARVisualContextMetrics)initWithEntityCategory:(id)category visualContextCategories:(id)categories speechProfileCategories:(id)profileCategories;
@end

@implementation _EARVisualContextMetrics

- (_EARVisualContextMetrics)initWithEntityCategory:(id)category visualContextCategories:(id)categories speechProfileCategories:(id)profileCategories
{
  if (category)
  {
    categoryCopy = category;
  }

  else
  {
    categoryCopy = &stru_1F2D44B60;
  }

  objc_storeStrong(&self->_entityTaggerCategory, categoryCopy);
  profileCategoriesCopy = profileCategories;
  categoriesCopy = categories;
  categoryCopy2 = category;
  v13 = MEMORY[0x1E695E0F0];
  if (categoriesCopy)
  {
    v14 = categoriesCopy;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong(&self->_visualContextCategories, v14);
  if (profileCategoriesCopy)
  {
    v15 = profileCategoriesCopy;
  }

  else
  {
    v15 = v13;
  }

  objc_storeStrong(&self->_speechProfileCategories, v15);

  return self;
}

@end