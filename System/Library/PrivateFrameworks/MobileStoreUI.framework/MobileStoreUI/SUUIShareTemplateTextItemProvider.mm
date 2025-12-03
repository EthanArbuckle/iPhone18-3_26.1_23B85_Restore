@interface SUUIShareTemplateTextItemProvider
- (SUUIShareTemplateTextItemProvider)initWithTemplateElement:(id)element clientContext:(id)context;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)item;
@end

@implementation SUUIShareTemplateTextItemProvider

- (SUUIShareTemplateTextItemProvider)initWithTemplateElement:(id)element clientContext:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SUUIShareTemplateTextItemProvider;
  v9 = [(UIActivityItemProvider *)&v12 initWithPlaceholderItem:&stru_286AECDE0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, context);
    objc_storeStrong(&v10->_templateElement, element);
  }

  return v10;
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

- (id)item
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__14;
  v20 = __Block_byref_object_dispose__14;
  v21 = 0;
  templateElement = self->_templateElement;
  activityType = [(UIActivityItemProvider *)self activityType];
  v5 = [(SUUIShareTemplateViewElement *)templateElement activityForUIActivityType:activityType];

  if (v5)
  {
    contentSourceURL = [v5 contentSourceURL];
    if (contentSourceURL)
    {
      message = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:contentSourceURL];
      consumer = [MEMORY[0x277D69D40] consumer];
      [message setDataConsumer:consumer];

      v9 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
      [message setStoreFrontSuffix:v9];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __41__SUUIShareTemplateTextItemProvider_item__block_invoke;
      v15[3] = &unk_2798F7258;
      v15[4] = &v16;
      [message setOutputBlock:v15];
      [message main];
    }

    else
    {
      message = [v5 message];
      text = [message text];
      string = [text string];
      v12 = v17[5];
      v17[5] = string;
    }
  }

  v13 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v13;
}

void __41__SUUIShareTemplateTextItemProvider_item__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = a2;
    v5 = [[v3 alloc] initWithData:v4 encoding:4];

    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

@end