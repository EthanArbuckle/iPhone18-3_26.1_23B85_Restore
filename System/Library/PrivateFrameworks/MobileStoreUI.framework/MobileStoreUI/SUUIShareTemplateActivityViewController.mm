@interface SUUIShareTemplateActivityViewController
- (SUUIShareTemplateActivityViewController)initWithTemplateElement:(id)element clientContext:(id)context;
- (id)_activityItemsWithTemplateElement:(id)element clientContext:(id)context;
- (id)_applicationActivitiesWithTemplateElement:(id)element clientContext:(id)context;
- (id)_titleForActivity:(id)activity;
@end

@implementation SUUIShareTemplateActivityViewController

- (SUUIShareTemplateActivityViewController)initWithTemplateElement:(id)element clientContext:(id)context
{
  v19[6] = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  v9 = [(SUUIShareTemplateActivityViewController *)self _activityItemsWithTemplateElement:elementCopy clientContext:contextCopy];
  v10 = [(SUUIShareTemplateActivityViewController *)self _applicationActivitiesWithTemplateElement:elementCopy clientContext:contextCopy];
  v18.receiver = self;
  v18.super_class = SUUIShareTemplateActivityViewController;
  v11 = [(SUUIShareTemplateActivityViewController *)&v18 initWithActivityItems:v9 applicationActivities:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_clientContext, context);
    objc_storeStrong(&v12->_templateElement, element);
    v13 = *MEMORY[0x277D54718];
    v19[0] = *MEMORY[0x277D54708];
    v19[1] = v13;
    v14 = *MEMORY[0x277D54768];
    v19[2] = *MEMORY[0x277D54750];
    v19[3] = v14;
    v15 = *MEMORY[0x277D54780];
    v19[4] = *MEMORY[0x277D54778];
    v19[5] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:6];
    [(SUUIShareTemplateActivityViewController *)v12 setExcludedActivityTypes:v16];
  }

  return v12;
}

- (id)_titleForActivity:(id)activity
{
  activityCopy = activity;
  if (*MEMORY[0x277D54720] == activityCopy)
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"ACTIVITY_COPY_LINK"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"ACTIVITY_COPY_LINK" inBundles:0];
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_activityItemsWithTemplateElement:(id)element clientContext:(id)context
{
  v12[3] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  elementCopy = element;
  v7 = [[SUUIShareTemplateImageItemProvider alloc] initWithTemplateElement:elementCopy];
  v8 = [[SUUIShareTemplateTextItemProvider alloc] initWithTemplateElement:elementCopy clientContext:contextCopy];

  v9 = [[SUUIShareTemplateURLItemProvider alloc] initWithTemplateElement:elementCopy];
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  return v10;
}

- (id)_applicationActivitiesWithTemplateElement:(id)element clientContext:(id)context
{
  v16[1] = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  v15 = @"wishlist";
  v8 = &v15;
  v16[0] = @"gift";
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = [elementCopy activityForShareSheetActivityType:*v8];
    if (v11)
    {
      v12 = [[SUUIShareTemplateActivity alloc] initWithActivityViewElement:v11 clientContext:contextCopy];
      [array addObject:v12];
    }

    v9 = 0;
    v8 = v16;
  }

  while ((v10 & 1) != 0);
  for (i = 1; i != -1; --i)
  {
  }

  return array;
}

@end