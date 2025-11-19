@interface SUUIMenuBarTemplateElement
- (SUUIMenuBarViewElement)menuBar;
- (id)_menuBarChildOfElement:(id)a3;
@end

@implementation SUUIMenuBarTemplateElement

- (SUUIMenuBarViewElement)menuBar
{
  v3 = [(SUUIMenuBarTemplateElement *)self _menuBarChildOfElement:self];
  if (!v3)
  {
    v4 = [(SUUIMenuBarTemplateElement *)self navigationBarElement];
    v3 = [(SUUIMenuBarTemplateElement *)self _menuBarChildOfElement:v4];
  }

  return v3;
}

- (id)_menuBarChildOfElement:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  [a3 children];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 conformsToProtocol:{&unk_286C233F8, v9}])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

@end