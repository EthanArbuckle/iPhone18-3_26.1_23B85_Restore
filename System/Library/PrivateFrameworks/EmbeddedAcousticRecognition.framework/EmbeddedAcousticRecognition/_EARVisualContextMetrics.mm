@interface _EARVisualContextMetrics
- (_EARVisualContextMetrics)initWithEntityCategory:(id)a3 visualContextCategories:(id)a4 speechProfileCategories:(id)a5;
@end

@implementation _EARVisualContextMetrics

- (_EARVisualContextMetrics)initWithEntityCategory:(id)a3 visualContextCategories:(id)a4 speechProfileCategories:(id)a5
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = &stru_1F2D44B60;
  }

  objc_storeStrong(&self->_entityTaggerCategory, v9);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = MEMORY[0x1E695E0F0];
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong(&self->_visualContextCategories, v14);
  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v13;
  }

  objc_storeStrong(&self->_speechProfileCategories, v15);

  return self;
}

@end