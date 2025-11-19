@interface SUUIShareTemplateImageItemProvider
- (SUUIShareTemplateImageItemProvider)initWithTemplateElement:(id)a3;
- (id)item;
@end

@implementation SUUIShareTemplateImageItemProvider

- (SUUIShareTemplateImageItemProvider)initWithTemplateElement:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277D755B8]);
  v10.receiver = self;
  v10.super_class = SUUIShareTemplateImageItemProvider;
  v7 = [(UIActivityItemProvider *)&v10 initWithPlaceholderItem:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_templateElement, a3);
  }

  return v8;
}

- (id)item
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v3 = [(UIActivityItemProvider *)self activityType];
  if ([MEMORY[0x277D546D0] activityTypeShouldProvideImage:v3])
  {
    v4 = [(SUUIShareTemplateViewElement *)self->_templateElement activityForUIActivityType:v3];
    v5 = [v4 image];
    v6 = [v5 URL];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v6];
      [v7 setITunesStoreRequest:0];
      v8 = [[SUUIStyledImageDataConsumer alloc] initWithViewElement:v5];
      [(SUUIStyledImageDataConsumer *)v8 setImageSize:100.0, 100.0];
      [v7 setDataConsumer:v8];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __42__SUUIShareTemplateImageItemProvider_item__block_invoke;
      v11[3] = &unk_2798F6580;
      v11[4] = &v12;
      [v7 setOutputBlock:v11];
      [v7 main];
    }
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

@end