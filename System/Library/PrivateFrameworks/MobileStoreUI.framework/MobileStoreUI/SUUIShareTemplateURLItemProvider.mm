@interface SUUIShareTemplateURLItemProvider
- (SUUIShareTemplateURLItemProvider)initWithTemplateElement:(id)element;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
- (id)item;
@end

@implementation SUUIShareTemplateURLItemProvider

- (SUUIShareTemplateURLItemProvider)initWithTemplateElement:(id)element
{
  elementCopy = element;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__79;
  v17 = __Block_byref_object_dispose__79;
  v18 = 0;
  activities = [elementCopy activities];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__SUUIShareTemplateURLItemProvider_initWithTemplateElement___block_invoke;
  v12[3] = &unk_2798FCAE0;
  v12[4] = &v13;
  [activities enumerateObjectsUsingBlock:v12];

  v7 = v14[5];
  v11.receiver = self;
  v11.super_class = SUUIShareTemplateURLItemProvider;
  v8 = [(UIActivityItemProvider *)&v11 initWithPlaceholderItem:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_templateElement, element);
  }

  _Block_object_dispose(&v13, 8);

  return v9;
}

void __60__SUUIShareTemplateURLItemProvider_initWithTemplateElement___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = [a2 URL];
  if (v6)
  {
    v10 = v6;
    v7 = [v6 URL];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = v10;
    *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
  }
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  templateElement = self->_templateElement;
  v5 = [(UIActivityItemProvider *)self activityType:controller];
  v6 = [(SUUIShareTemplateViewElement *)templateElement activityForUIActivityType:v5];

  title = [v6 title];
  text = [title text];
  string = [text string];

  return string;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  typeCopy = type;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__79;
  v25 = __Block_byref_object_dispose__79;
  v26 = 0;
  templateElement = self->_templateElement;
  activityType = [(UIActivityItemProvider *)self activityType];
  v13 = [(SUUIShareTemplateViewElement *)templateElement activityForUIActivityType:activityType];

  image = [v13 image];
  v15 = [image URL];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v15];
    [v16 setITunesStoreRequest:0];
    v17 = [[SUUIStyledImageDataConsumer alloc] initWithViewElement:image];
    [(SUUIStyledImageDataConsumer *)v17 setImageSize:width, height];
    [v16 setDataConsumer:v17];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __103__SUUIShareTemplateURLItemProvider_activityViewController_thumbnailImageForActivityType_suggestedSize___block_invoke;
    v20[3] = &unk_2798F6580;
    v20[4] = &v21;
    [v16 setOutputBlock:v20];
    [v16 main];
  }

  v18 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v18;
}

- (id)item
{
  templateElement = self->_templateElement;
  activityType = [(UIActivityItemProvider *)self activityType];
  v4 = [(SUUIShareTemplateViewElement *)templateElement activityForUIActivityType:activityType];

  v5 = [v4 URL];
  v5URL = [v5 URL];

  return v5URL;
}

@end