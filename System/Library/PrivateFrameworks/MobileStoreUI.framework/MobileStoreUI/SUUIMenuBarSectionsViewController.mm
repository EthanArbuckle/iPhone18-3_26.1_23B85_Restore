@interface SUUIMenuBarSectionsViewController
- (SUUIMenuBarSectionsViewController)initWithLayoutStyle:(int64_t)style;
- (id)defaultSectionForComponent:(id)component;
@end

@implementation SUUIMenuBarSectionsViewController

- (SUUIMenuBarSectionsViewController)initWithLayoutStyle:(int64_t)style
{
  v4.receiver = self;
  v4.super_class = SUUIMenuBarSectionsViewController;
  result = [(SUUIStorePageSectionsViewController *)&v4 initWithLayoutStyle:style];
  if (result)
  {
    result->_numberOfIterationsForShelfPageSections = 1;
  }

  return result;
}

- (id)defaultSectionForComponent:(id)component
{
  componentCopy = component;
  if ([componentCopy componentType] == 22)
  {
    v5 = [[SUUIMenuBarTemplateShelfPageSectionConfiguration alloc] initWithNumberOfIterations:[(SUUIMenuBarSectionsViewController *)self numberOfIterationsForShelfPageSections]];
    v6 = objc_opt_class();
    viewElement = [componentCopy viewElement];
    isDynamicContainer = [viewElement isDynamicContainer];

    if (isDynamicContainer)
    {
      v6 = objc_opt_class();
    }

    v9 = [[v6 alloc] initWithPageComponent:componentCopy configuration:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end