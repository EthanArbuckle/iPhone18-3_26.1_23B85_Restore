@interface SUUIShareTemplateTextItemProvider
- (SUUIShareTemplateTextItemProvider)initWithTemplateElement:(id)a3 clientContext:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
- (id)item;
@end

@implementation SUUIShareTemplateTextItemProvider

- (SUUIShareTemplateTextItemProvider)initWithTemplateElement:(id)a3 clientContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SUUIShareTemplateTextItemProvider;
  v9 = [(UIActivityItemProvider *)&v12 initWithPlaceholderItem:&stru_286AECDE0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, a4);
    objc_storeStrong(&v10->_templateElement, a3);
  }

  return v10;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  templateElement = self->_templateElement;
  v5 = [(UIActivityItemProvider *)self activityType:a3];
  v6 = [(SUUIShareTemplateViewElement *)templateElement activityForUIActivityType:v5];

  v7 = [v6 title];
  v8 = [v7 text];
  v9 = [v8 string];

  return v9;
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
  v4 = [(UIActivityItemProvider *)self activityType];
  v5 = [(SUUIShareTemplateViewElement *)templateElement activityForUIActivityType:v4];

  if (v5)
  {
    v6 = [v5 contentSourceURL];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v6];
      v8 = [MEMORY[0x277D69D40] consumer];
      [v7 setDataConsumer:v8];

      v9 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
      [v7 setStoreFrontSuffix:v9];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __41__SUUIShareTemplateTextItemProvider_item__block_invoke;
      v15[3] = &unk_2798F7258;
      v15[4] = &v16;
      [v7 setOutputBlock:v15];
      [v7 main];
    }

    else
    {
      v7 = [v5 message];
      v10 = [v7 text];
      v11 = [v10 string];
      v12 = v17[5];
      v17[5] = v11;
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