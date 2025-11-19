@interface SUUIMenuBarSectionsViewController
- (SUUIMenuBarSectionsViewController)initWithLayoutStyle:(int64_t)a3;
- (id)defaultSectionForComponent:(id)a3;
@end

@implementation SUUIMenuBarSectionsViewController

- (SUUIMenuBarSectionsViewController)initWithLayoutStyle:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = SUUIMenuBarSectionsViewController;
  result = [(SUUIStorePageSectionsViewController *)&v4 initWithLayoutStyle:a3];
  if (result)
  {
    result->_numberOfIterationsForShelfPageSections = 1;
  }

  return result;
}

- (id)defaultSectionForComponent:(id)a3
{
  v4 = a3;
  if ([v4 componentType] == 22)
  {
    v5 = [[SUUIMenuBarTemplateShelfPageSectionConfiguration alloc] initWithNumberOfIterations:[(SUUIMenuBarSectionsViewController *)self numberOfIterationsForShelfPageSections]];
    v6 = objc_opt_class();
    v7 = [v4 viewElement];
    v8 = [v7 isDynamicContainer];

    if (v8)
    {
      v6 = objc_opt_class();
    }

    v9 = [[v6 alloc] initWithPageComponent:v4 configuration:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end