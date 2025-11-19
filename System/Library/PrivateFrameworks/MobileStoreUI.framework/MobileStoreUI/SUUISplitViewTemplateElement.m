@interface SUUISplitViewTemplateElement
+ (id)supportedFeatures;
- (BOOL)usesInlineSplitContent;
- (SUUISplitViewTemplateElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)_splitElementForIndex:(int64_t)a3;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUISplitViewTemplateElement

- (SUUISplitViewTemplateElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v18.receiver = self;
  v18.super_class = SUUISplitViewTemplateElement;
  v9 = [(SUUIViewElement *)&v18 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [(SUUIViewElement *)v9 featureWithName:0x286AF5E20];
    leftNavigationDocument = v10->_leftNavigationDocument;
    v10->_leftNavigationDocument = v11;

    v13 = [(SUUIViewElement *)v10 featureWithName:0x286AF5E40];
    rightNavigationDocument = v10->_rightNavigationDocument;
    v10->_rightNavigationDocument = v13;

    v15 = [v8 getAttribute:@"displayMode"];
    if ([v15 isEqualToString:@"all"])
    {
      v16 = 2;
    }

    else if ([v15 isEqualToString:@"hidden"])
    {
      v16 = 1;
    }

    else
    {
      if (![v15 isEqualToString:@"overlay"])
      {
        v10->_preferredDisplayMode = 0;
        goto LABEL_9;
      }

      v16 = 3;
    }

    v10->_preferredDisplayMode = v16;
LABEL_9:
  }

  return v10;
}

- (BOOL)usesInlineSplitContent
{
  v3 = [(SUUISplitViewTemplateElement *)self leftSplitElement];
  v4 = [v3 children];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SUUISplitViewTemplateElement *)self rightSplitElement];
    v7 = [v6 children];
    v5 = [v7 count] != 0;
  }

  return v5;
}

+ (id)supportedFeatures
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0x286AF5E20;
  v4[1] = 0x286AF5E40;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUUISplitViewTemplateElement;
  v5 = [(SUUIViewElement *)&v8 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self && v5 == self)
  {
    self->_preferredDisplayMode = [(SUUISplitViewTemplateElement *)v4 preferredDisplayMode];
  }

  return v6;
}

- (id)_splitElementForIndex:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__85;
  v13 = __Block_byref_object_dispose__85;
  v14 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v4 = [(SUUISplitViewTemplateElement *)self children];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SUUISplitViewTemplateElement__splitElementForIndex___block_invoke;
  v7[3] = &unk_2798FCF78;
  v7[5] = &v9;
  v7[6] = a3;
  v7[4] = v8;
  [v4 enumerateObjectsUsingBlock:v7];

  v5 = v10[5];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __54__SUUISplitViewTemplateElement__splitElementForIndex___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 elementType] == 128)
  {
    v7 = *(a1[4] + 8);
    v8 = *(v7 + 24);
    if (v8 == a1[6])
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
      *a4 = 1;
      v7 = *(a1[4] + 8);
      v8 = *(v7 + 24);
    }

    *(v7 + 24) = v8 + 1;
  }
}

@end