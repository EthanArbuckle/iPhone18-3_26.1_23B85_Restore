@interface SUUIModernChartsDocumentViewController
- (CGRect)_computedFrameForActivityIndicatorView;
- (SUUIModernChartsDocumentViewController)initWithTemplateElement:(id)a3;
- (UIEdgeInsets)_contentInset;
- (id)_layoutCache;
- (id)_newColumnViewControllersWithReusableViewControllers:(id)a3;
- (id)_resourceLoader;
- (id)_viewLayoutContext;
- (void)_hideActivityIndicator;
- (void)_reloadWithTemplateElement:(id)a3;
- (void)_showActivityIndicator;
- (void)documentDidUpdate:(id)a3;
- (void)documentMediaQueriesDidUpdate:(id)a3;
- (void)getModalSourceViewForElementIdentifier:(id)a3 completionBlock:(id)a4;
- (void)loadView;
- (void)resourceLoader:(id)a3 didLoadAllForReason:(int64_t)a4;
- (void)resourceLoaderDidBeginLoading:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SUUIModernChartsDocumentViewController

- (SUUIModernChartsDocumentViewController)initWithTemplateElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUUIModernChartsDocumentViewController;
  v5 = [(SUUIModernChartsDocumentViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SUUIModernChartsDocumentViewController *)v5 _reloadWithTemplateElement:v4];
  }

  return v6;
}

- (void)documentDidUpdate:(id)a3
{
  v4 = [a3 templateElement];
  [(SUUIModernChartsDocumentViewController *)self _reloadWithTemplateElement:?];
  if ([(SUUIResourceLoader *)self->_resourceLoader isIdleForReason:1])
  {
    [(SUUIModernChartsDocumentViewController *)self resourceLoader:self->_resourceLoader didLoadAllForReason:1];
  }
}

- (void)documentMediaQueriesDidUpdate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_columnViewControllers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidateAndReload];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)getModalSourceViewForElementIdentifier:(id)a3 completionBlock:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22 = a4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_columnViewControllers;
  v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  v7 = 0;
  if (v25)
  {
    v24 = *v31;
    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v30 + 1) + 8 * i) sections];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v26 + 1) + 8 * v14);
            v16 = [v15 pageComponent];
            v17 = [v16 viewElement];

            v18 = [v17 elementWithIdentifier:v6];

            if (v18)
            {
              break;
            }

            v7 = 0;
            if (v12 == ++v14)
            {
              v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
              v7 = 0;
              v19 = 0;
              if (v12)
              {
                goto LABEL_8;
              }

              goto LABEL_18;
            }
          }

          v20 = v15;

          if (!v20)
          {
            v7 = v18;
            continue;
          }

          v21 = v22;
          [v20 getModalSourceViewForViewElement:v18 completionBlock:v22];

          goto LABEL_23;
        }

        v19 = v7;
LABEL_18:

        v7 = v19;
      }

      v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v21 = v22;
  (*(v22 + 2))(v22, 0);
  v18 = v7;
LABEL_23:
}

- (void)loadView
{
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v5 setAutoresizingMask:18];
  v3 = objc_alloc_init(SUUIModernChartsView);
  chartsView = self->_chartsView;
  self->_chartsView = v3;

  [(SUUIModernChartsView *)self->_chartsView setAutoresizingMask:18];
  [(SUUIModernChartsView *)self->_chartsView setColumnViewControllers:self->_columnViewControllers];
  [v5 addSubview:self->_chartsView];
  [(SUUIModernChartsDocumentViewController *)self setView:v5];
}

- (void)viewWillLayoutSubviews
{
  chartsView = self->_chartsView;
  [(SUUIModernChartsDocumentViewController *)self _contentInset];
  [(SUUIModernChartsView *)chartsView setContentInset:?];
  activityIndicatorView = self->_activityIndicatorView;
  if (activityIndicatorView)
  {
    [(SUUIModernChartsDocumentViewController *)self _computedFrameForActivityIndicatorView];
    [(SUUIActivityIndicatorView *)activityIndicatorView setFrame:?];
  }

  v5.receiver = self;
  v5.super_class = SUUIModernChartsDocumentViewController;
  [(SUUIModernChartsDocumentViewController *)&v5 viewWillLayoutSubviews];
}

- (void)resourceLoaderDidBeginLoading:(id)a3
{
  v5 = a3;
  v4 = [(SUUIModernChartsDocumentViewController *)self parentViewController];
  if ([v4 conformsToProtocol:&unk_286BDF918] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 resourceLoaderDidBeginLoading:v5];
  }
}

- (void)resourceLoader:(id)a3 didLoadAllForReason:(int64_t)a4
{
  v7 = a3;
  if (a4 == 1)
  {
    [(SUUIChartsTemplateViewElement *)self->_templateElement dispatchEvent:@"visibleimagesloaded" eventAttribute:@"onvisibleimagesloaded" canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }

  v6 = [(SUUIModernChartsDocumentViewController *)self parentViewController];
  if ([v6 conformsToProtocol:&unk_286BDF918] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 resourceLoader:v7 didLoadAllForReason:a4];
  }
}

- (UIEdgeInsets)_contentInset
{
  v3 = [(SUUIModernChartsDocumentViewController *)self topLayoutGuide];
  [v3 length];
  v5 = v4;

  v6 = [(SUUIModernChartsDocumentViewController *)self bottomLayoutGuide];
  [v6 length];
  v8 = v7;

  v9 = 0.0;
  v10 = 0.0;
  v11 = v5;
  v12 = v8;
  result.right = v10;
  result.bottom = v12;
  result.left = v9;
  result.top = v11;
  return result;
}

- (void)_hideActivityIndicator
{
  [(SUUIActivityIndicatorView *)self->_activityIndicatorView removeFromSuperview];
  activityIndicatorView = self->_activityIndicatorView;
  self->_activityIndicatorView = 0;
}

- (id)_layoutCache
{
  layoutCache = self->_layoutCache;
  if (!layoutCache)
  {
    v4 = objc_alloc_init(SUUILayoutCache);
    v5 = self->_layoutCache;
    self->_layoutCache = v4;

    layoutCache = self->_layoutCache;
  }

  return layoutCache;
}

- (id)_newColumnViewControllersWithReusableViewControllers:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = [(SUUIViewController *)self clientContext];
  [(SUUIChartsTemplateViewElement *)self->_templateElement columns];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v34 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v34)
  {
    v33 = *v41;
    v30 = self;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v40 + 1) + 8 * i);
        v6 = [objc_alloc(SUUIPageComponentClassForComponentType(objc_msgSend(v5 "pageComponentType")))];
        if (v6)
        {
          v7 = [v5 headerElement];
          v8 = [v7 titleLabels];
          v9 = [v8 firstObject];

          v35 = v9;
          v10 = [v9 text];
          v11 = [v10 string];

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v12 = v31;
          v13 = [v12 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v37;
LABEL_9:
            v16 = 0;
            while (1)
            {
              if (*v37 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v36 + 1) + 8 * v16);
              v18 = [v17 title];
              v19 = [v18 isEqualToString:v11];

              if (v19)
              {
                break;
              }

              if (v14 == ++v16)
              {
                v14 = [v12 countByEnumeratingWithState:&v36 objects:v45 count:16];
                if (v14)
                {
                  goto LABEL_9;
                }

                goto LABEL_15;
              }
            }

            v21 = v17;

            v20 = v30;
            if (v21)
            {
              goto LABEL_21;
            }
          }

          else
          {
LABEL_15:

            v20 = v30;
          }

          v21 = [[SUUIStorePageSectionsViewController alloc] initWithLayoutStyle:0];
          [(SUUIViewController *)v21 setClientContext:v28];
          v22 = [(SUUIViewController *)v20 operationQueue];
          [(SUUIViewController *)v21 setOperationQueue:v22];

          v23 = [(SUUIModernChartsDocumentViewController *)v20 _resourceLoader];
          [(SUUIStorePageSectionsViewController *)v21 setResourceLoader:v23];

          if (v11)
          {
            v24 = v11;
          }

          else
          {
            v24 = &stru_286AECDE0;
          }

          [(SUUIStorePageSectionsViewController *)v21 setTitle:v24];
          v25 = objc_alloc_init(SUUIMetricsImpressionSession);
          [(SUUIStorePageSectionsViewController *)v21 setActiveMetricsImpressionSession:v25];

LABEL_21:
          v44 = v6;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
          [(SUUIStorePageSectionsViewController *)v21 setSectionsWithPageComponents:v26];

          [(SUUIModernChartsDocumentViewController *)v20 addChildViewController:v21];
          [v32 addObject:v21];
        }
      }

      v34 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v34);
  }

  return v32;
}

- (void)_reloadWithTemplateElement:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_templateElement, a3);
  v6 = self->_columnViewControllers;
  v7 = [(SUUIModernChartsDocumentViewController *)self _newColumnViewControllersWithReusableViewControllers:v6];
  columnViewControllers = self->_columnViewControllers;
  self->_columnViewControllers = v7;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_columnViewControllers containsObject:v14, v17]& 1) == 0)
        {
          [v14 removeFromParentViewController];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  chartsView = self->_chartsView;
  if (chartsView)
  {
    [(SUUIModernChartsView *)chartsView setColumnViewControllers:self->_columnViewControllers];
  }

  v16 = [(SUUIChartsTemplateViewElement *)self->_templateElement activityIndicator];

  if (v16)
  {
    [(SUUIModernChartsDocumentViewController *)self _showActivityIndicator];
  }

  else
  {
    [(SUUIModernChartsDocumentViewController *)self _hideActivityIndicator];
  }
}

- (void)_showActivityIndicator
{
  v14 = [(SUUIModernChartsDocumentViewController *)self view];
  if (!self->_activityIndicatorView)
  {
    v3 = objc_alloc_init(SUUIActivityIndicatorView);
    activityIndicatorView = self->_activityIndicatorView;
    self->_activityIndicatorView = v3;
  }

  v5 = [(SUUIChartsTemplateViewElement *)self->_templateElement activityIndicator];
  v6 = [(SUUIModernChartsDocumentViewController *)self _viewLayoutContext];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = v8;

  [objc_opt_class() requestLayoutForViewElement:v5 width:v6 context:v9];
  v10 = [(SUUIModernChartsDocumentViewController *)self _layoutCache];
  [v10 commitLayoutRequests];

  [(SUUIActivityIndicatorView *)self->_activityIndicatorView reloadWithViewElement:v5 width:v6 context:v9];
  [(SUUIActivityIndicatorView *)self->_activityIndicatorView setAutoresizingMask:45];
  v11 = self->_activityIndicatorView;
  v12 = [MEMORY[0x277D75348] clearColor];
  [(SUUIViewReuseView *)v11 setBackgroundColor:v12];

  v13 = self->_activityIndicatorView;
  [(SUUIModernChartsDocumentViewController *)self _computedFrameForActivityIndicatorView];
  [(SUUIActivityIndicatorView *)v13 setFrame:?];
  [v14 addSubview:self->_activityIndicatorView];
}

- (CGRect)_computedFrameForActivityIndicatorView
{
  v3 = [(SUUIModernChartsDocumentViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(SUUIActivityIndicatorView *)self->_activityIndicatorView frame];
  [(SUUIActivityIndicatorView *)self->_activityIndicatorView sizeThatFits:v5, v7];
  v9 = v8;
  v11 = v10;
  *&v8 = (v5 - v8) * 0.5;
  v12 = floorf(*&v8);
  *&v10 = v7 * 0.5 - v10;
  v13 = floorf(*&v10);
  result.size.height = v11;
  result.size.width = v9;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)_viewLayoutContext
{
  viewLayoutContext = self->_viewLayoutContext;
  if (!viewLayoutContext)
  {
    v4 = objc_alloc_init(SUUIViewElementLayoutContext);
    v5 = self->_viewLayoutContext;
    self->_viewLayoutContext = v4;

    [(SUUIViewElementLayoutContext *)self->_viewLayoutContext setParentViewController:self];
    v6 = [(SUUIViewController *)self clientContext];
    [(SUUIViewElementLayoutContext *)self->_viewLayoutContext setClientContext:v6];
    v7 = [SUUIViewElementTextLayoutCache alloc];
    v8 = [(SUUIModernChartsDocumentViewController *)self _layoutCache];
    v9 = [(SUUIViewElementTextLayoutCache *)v7 initWithLayoutCache:v8];

    [(SUUIViewElementLayoutContext *)self->_viewLayoutContext setLabelLayoutCache:v9];
    v10 = [[SUUIResourceLoader alloc] initWithClientContext:v6];
    [(SUUIViewElementLayoutContext *)self->_viewLayoutContext setResourceLoader:v10];

    viewLayoutContext = self->_viewLayoutContext;
  }

  return viewLayoutContext;
}

- (id)_resourceLoader
{
  resourceLoader = self->_resourceLoader;
  if (!resourceLoader)
  {
    v4 = [SUUIResourceLoader alloc];
    v5 = [(SUUIViewController *)self clientContext];
    v6 = [(SUUIResourceLoader *)v4 initWithClientContext:v5];
    v7 = self->_resourceLoader;
    self->_resourceLoader = v6;

    v8 = self->_resourceLoader;
    v9 = SUUIResourceLoaderGetNameForObject(self);
    [(SUUIResourceLoader *)v8 setName:v9];

    [(SUUIResourceLoader *)self->_resourceLoader setDelegate:self];
    resourceLoader = self->_resourceLoader;
  }

  return resourceLoader;
}

@end