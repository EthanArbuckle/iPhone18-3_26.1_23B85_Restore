@interface SUUICategoryController
- (NSOperationQueue)operationQueue;
- (SUUICategoryController)initWithContentsController:(id)a3;
- (SUUICategoryControllerDelegate)delegate;
- (UIBarButtonItem)categoryButton;
- (UISegmentedControl)segmentedControl;
- (id)_artworkLoader;
- (id)_metricsLocationsWithIndex:(int64_t)a3;
- (id)_rootMetricsLocations;
- (id)_tableViewControllerWithCategory:(id)a3;
- (id)metricsPageContextForCategoryTableView:(id)a3;
- (void)_precacheArtworkForCategory:(id)a3;
- (void)_recordClickEventWithCategory:(id)a3 index:(int64_t)a4;
- (void)_reloadSegmentedControl;
- (void)_reloadSelectedSegment;
- (void)_setResponse:(id)a3 error:(id)a4;
- (void)buttonAction:(id)a3;
- (void)categoryTableView:(id)a3 didSelectCategory:(id)a4;
- (void)dealloc;
- (void)dismiss;
- (void)loadFromURL:(id)a3 withCompletionBlock:(id)a4;
- (void)popoverControllerDidDismissPopover:(id)a3;
- (void)segmentedControlAction:(id)a3;
- (void)setCategory:(id)a3;
- (void)setDefaultURL:(id)a3;
- (void)setSegmentedControlLength:(int64_t)a3;
- (void)setSelectedURL:(id)a3;
@end

@implementation SUUICategoryController

- (SUUICategoryController)initWithContentsController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUUICategoryController;
  v5 = [(SUUICategoryController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contentsController, v4);
  }

  return v6;
}

- (void)dealloc
{
  [(SUUICategoryController *)self dismiss];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = SUUICategoryController;
  [(SUUICategoryController *)&v3 dealloc];
}

- (UIBarButtonItem)categoryButton
{
  button = self->_button;
  if (!button)
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"CATEGORIES_BUTTON"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"CATEGORIES_BUTTON" inBundles:0];
    }
    v5 = ;
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v5 style:0 target:self action:sel_buttonAction_];
    v7 = self->_button;
    self->_button = v6;

    button = self->_button;
  }

  return button;
}

- (void)dismiss
{
  [(UIPopoverController *)self->_popover setDelegate:0];
  [(UIPopoverController *)self->_popover dismissPopoverAnimated:1];
  popover = self->_popover;
  self->_popover = 0;

  [(SUUICategoryTableViewController *)self->_tableViewController dismissViewControllerAnimated:1 completion:0];
  [(SUUICategoryTableViewController *)self->_tableViewController setDelegate:0];
  tableViewController = self->_tableViewController;
  self->_tableViewController = 0;
}

- (void)loadFromURL:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  [(SSVLoadURLOperation *)self->_loadOperation cancel];
  v8 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v6];
  loadOperation = self->_loadOperation;
  self->_loadOperation = v8;

  v10 = self->_loadOperation;
  v11 = +[(SSVURLDataConsumer *)SUUIJSONDataConsumer];
  [(SSVLoadURLOperation *)v10 setDataConsumer:v11];

  v12 = self->_loadOperation;
  v13 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
  [(SSVLoadURLOperation *)v12 setStoreFrontSuffix:v13];

  objc_initWeak(&location, self);
  v14 = self->_loadOperation;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__SUUICategoryController_loadFromURL_withCompletionBlock___block_invoke;
  v17[3] = &unk_2798F7410;
  objc_copyWeak(&v19, &location);
  v15 = v7;
  v18 = v15;
  [(SSVLoadURLOperation *)v14 setOutputBlock:v17];
  v16 = [(SUUICategoryController *)self operationQueue];
  [v16 addOperation:self->_loadOperation];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __58__SUUICategoryController_loadFromURL_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__SUUICategoryController_loadFromURL_withCompletionBlock___block_invoke_2;
  v9[3] = &unk_2798F73E8;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

uint64_t __58__SUUICategoryController_loadFromURL_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _setResponse:*(a1 + 32) error:*(a1 + 40)];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:2];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (UISegmentedControl)segmentedControl
{
  segmentedControl = self->_segmentedControl;
  if (!segmentedControl)
  {
    v4 = [SUUISegmentedControl alloc];
    v5 = [(SUUISegmentedControl *)v4 initWithItems:MEMORY[0x277CBEBF8]];
    v6 = self->_segmentedControl;
    self->_segmentedControl = v5;

    [(SUUISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:0];
    [(SUUISegmentedControl *)self->_segmentedControl addTarget:self action:sel_segmentedControlAction_ forControlEvents:4096];
    [(SUUISegmentedControl *)self->_segmentedControl _setAutosizeText:1];
    [(SUUICategoryController *)self _reloadSegmentedControl];
    segmentedControl = self->_segmentedControl;
  }

  return segmentedControl;
}

- (void)setCategory:(id)a3
{
  v5 = a3;
  p_rootCategory = &self->_rootCategory;
  if (self->_rootCategory != v5)
  {
    v7 = v5;
    objc_storeStrong(p_rootCategory, a3);
    [(SUUICategoryController *)self _precacheArtworkForCategory:self->_rootCategory];
    p_rootCategory = [(SUUICategoryController *)self _reloadSegmentedControl];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_rootCategory, v5);
}

- (void)setSegmentedControlLength:(int64_t)a3
{
  if (self->_segmentedControlLength != a3)
  {
    self->_segmentedControlLength = a3;
    [(SUUICategoryController *)self _reloadSegmentedControl];
  }
}

- (void)setSelectedURL:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_selectedURL] & 1) == 0)
  {
    objc_storeStrong(&self->_selectedURL, a3);
    [(SUUICategoryController *)self _reloadSelectedSegment];
  }
}

- (void)setDefaultURL:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_defaultURL] & 1) == 0)
  {
    objc_storeStrong(&self->_defaultURL, a3);
    [(SUUICategoryController *)self _reloadSelectedSegment];
  }
}

- (void)buttonAction:(id)a3
{
  [(SUUICategoryController *)self dismiss];
  v26 = [(SUUICategoryController *)self _rootMetricsLocations];
  v4 = [(SUUICategoryController *)self _tableViewControllerWithCategory:self->_rootCategory];
  tableViewController = self->_tableViewController;
  self->_tableViewController = v4;

  [(SUUICategoryTableViewController *)self->_tableViewController setMetricsLocations:v26];
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    v8 = objc_alloc(MEMORY[0x277D758A0]);
    v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_tableViewController];
    v10 = [v8 initWithContentViewController:v9];
    popover = self->_popover;
    self->_popover = v10;

    [(UIPopoverController *)self->_popover _setPopoverBackgroundStyle:3];
    [(UIPopoverController *)self->_popover setDelegate:self];
    [(UIPopoverController *)self->_popover presentPopoverFromBarButtonItem:self->_button permittedArrowDirections:1 animated:1];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_tableViewController];
    [v12 _setClipUnderlapWhileTransitioning:1];
    v13 = self->_rootCategory;
    v14 = [(SUUICategory *)v13 subcategoryContainingURL:self->_selectedURL];
    if (v14)
    {
      v15 = v14;
      v16 = *MEMORY[0x277D6A4E8];
      while (1)
      {
        v17 = [v15 children];
        v18 = [v17 count];

        if (!v18)
        {
          break;
        }

        v19 = [(SUUICategoryController *)self _tableViewControllerWithCategory:v15];
        v20 = [(SUUICategory *)v13 children];
        v21 = [v20 indexOfObjectIdenticalTo:v15];

        if (v21 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = objc_alloc_init(MEMORY[0x277D69B90]);
          [v22 setLocationPosition:v21 + 1];
          [v22 setLocationType:v16];
          [v26 insertObject:v22 atIndex:0];
          [v19 setMetricsLocations:v26];
        }

        [v12 pushViewController:v19 animated:0];
        v23 = v15;

        v15 = [(SUUICategory *)v23 subcategoryContainingURL:self->_selectedURL];

        v13 = v23;
        if (!v15)
        {
          v13 = v23;
          break;
        }
      }
    }

    v24 = [[SUUIBackdropContentViewController alloc] initWithContentViewController:v12];
    WeakRetained = objc_loadWeakRetained(&self->_contentsController);
    [WeakRetained presentViewController:v24 animated:1 completion:0];
  }
}

- (void)segmentedControlAction:(id)a3
{
  [(SUUICategoryController *)self dismiss];
  v4 = [(SUUISegmentedControl *)self->_segmentedControl selectedSegmentIndex];
  v28 = [(NSArray *)self->_segmentedControlSegments objectAtIndex:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  rootCategory = self->_rootCategory;
  if (isKindOfClass)
  {
    v7 = [(SUUICategoryController *)self _tableViewControllerWithCategory:rootCategory];
    tableViewController = self->_tableViewController;
    self->_tableViewController = v7;

    v9 = self->_tableViewController;
    v10 = [(SUUICategoryController *)self _metricsLocationsWithIndex:v4];
    [(SUUICategoryTableViewController *)v9 setMetricsLocations:v10];

    [(SUUICategoryTableViewController *)self->_tableViewController setNumberOfHiddenRows:[(NSArray *)self->_segmentedControlSegments count]- 1];
LABEL_6:
    v17 = objc_alloc(MEMORY[0x277D758A0]);
    v18 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_tableViewController];
    v19 = [v17 initWithContentViewController:v18];
    popover = self->_popover;
    self->_popover = v19;

    [(UIPopoverController *)self->_popover _setPopoverBackgroundStyle:3];
    [(UIPopoverController *)self->_popover setDelegate:self];
    v21 = self->_popover;
    [(SUUISegmentedControl *)self->_segmentedControl frameForSegmentAtIndex:v4];
    v22 = [(UIPopoverController *)v21 presentPopoverFromRect:self->_segmentedControl inView:1 permittedArrowDirections:1 animated:?];
LABEL_7:
    v23 = v28;
    goto LABEL_8;
  }

  if (v28 == rootCategory)
  {
    v24 = [(SUUICategory *)v28 URL];
    if ([v24 isEqual:self->_selectedURL])
    {

      goto LABEL_7;
    }

    selectedURL = self->_selectedURL;
    defaultURL = self->_defaultURL;
  }

  else
  {
    v11 = [(SUUICategory *)v28 children];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [(SUUICategoryController *)self _tableViewControllerWithCategory:v28];
      v14 = self->_tableViewController;
      self->_tableViewController = v13;

      v15 = self->_tableViewController;
      v16 = [(SUUICategoryController *)self _metricsLocationsWithIndex:v4];
      [(SUUICategoryTableViewController *)v15 setMetricsLocations:v16];

      goto LABEL_6;
    }

    selectedURL = [(SUUICategory *)v28 URL];
    v24 = selectedURL;
    defaultURL = self->_selectedURL;
  }

  v27 = [selectedURL isEqual:defaultURL];

  v23 = v28;
  if ((v27 & 1) == 0)
  {
    [(SUUICategoryController *)self _recordClickEventWithCategory:v28 index:v4];
    v22 = [(SUUICategoryController *)self categoryTableView:0 didSelectCategory:v28];
    goto LABEL_7;
  }

LABEL_8:

  MEMORY[0x2821F96F8](v22, v23);
}

- (void)popoverControllerDidDismissPopover:(id)a3
{
  [(SUUICategoryController *)self dismiss];

  [(SUUICategoryController *)self _reloadSelectedSegment];
}

- (void)categoryTableView:(id)a3 didSelectCategory:(id)a4
{
  v8 = a4;
  [(SUUICategoryController *)self dismiss];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 categoryController:self didSelectCategory:v8];
  }
}

- (id)metricsPageContextForCategoryTableView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_contentsController);
  if (WeakRetained)
  {
    v5 = [(SUUIClientContext *)self->_clientContext metricsPageContextForViewController:WeakRetained];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_artworkLoader
{
  artworkLoader = self->_artworkLoader;
  if (!artworkLoader)
  {
    v4 = [[SUUIResourceLoader alloc] initWithClientContext:self->_clientContext];
    v5 = [[SUUICategoryArtworkLoader alloc] initWithArtworkLoader:v4];
    v6 = self->_artworkLoader;
    self->_artworkLoader = v5;

    v7 = self->_artworkLoader;
    v8 = +[SUUIStyledImageDataConsumer categoryIconConsumer];
    [(SUUICategoryArtworkLoader *)v7 setImageDataConsumer:v8];

    artworkLoader = self->_artworkLoader;
  }

  return artworkLoader;
}

- (id)_metricsLocationsWithIndex:(int64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D69B90]);
  [v4 setLocationPosition:a3];
  [v4 setLocationType:*MEMORY[0x277D6A4E8]];
  v5 = objc_alloc_init(MEMORY[0x277D69B90]);
  [v5 setLocationPosition:0];
  [v5 setLocationType:@"topNav"];
  v8[0] = v4;
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  return v6;
}

- (void)_reloadSegmentedControl
{
  if (self->_segmentedControl)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = [(SUUICategory *)self->_rootCategory children];
    v5 = [v4 objectEnumerator];

    v6 = [(SUUICategory *)self->_rootCategory parentLabel];

    if (v6)
    {
      [(NSArray *)v3 addObject:self->_rootCategory];
    }

    v7 = [v5 nextObject];
    if (v7)
    {
      v8 = v7;
      while ([(NSArray *)v3 count]< self->_segmentedControlLength)
      {
        [(NSArray *)v3 addObject:v8];

        v8 = [v5 nextObject];
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      [(NSArray *)v3 removeLastObject];
      v9 = [MEMORY[0x277CBEB68] null];
      [(NSArray *)v3 addObject:v9];
    }

LABEL_10:
    segmentedControlSegments = self->_segmentedControlSegments;
    self->_segmentedControlSegments = v3;
    v11 = v3;

    v12 = [(SUUISegmentedControl *)self->_segmentedControl selectedSegmentIndex];
    [(SUUISegmentedControl *)self->_segmentedControl removeAllSegments];
    v13 = self->_segmentedControlSegments;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__SUUICategoryController__reloadSegmentedControl__block_invoke;
    v14[3] = &unk_2798FA608;
    v14[4] = self;
    [(NSArray *)v13 enumerateObjectsUsingBlock:v14];
    [(SUUISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:v12];
    [(SUUICategoryController *)self _reloadSelectedSegment];
  }
}

void __49__SUUICategoryController__reloadSegmentedControl__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = v5;
  if (*(*(a1 + 32) + 80) == v5)
  {
    v6 = [v5 parentLabel];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v9 name];
    }

    else
    {
      v7 = *(*(a1 + 32) + 24);
      if (v7)
      {
        [v7 localizedStringForKey:@"CATEGORIES_MORE_SEGMENT"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"CATEGORIES_MORE_SEGMENT" inBundles:0];
      }
      v6 = ;
    }
  }

  v8 = v6;
  [*(*(a1 + 32) + 96) insertSegmentWithTitle:v6 atIndex:a3 animated:0];
}

- (void)_precacheArtworkForCategory:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUUICategoryController *)self _artworkLoader];
  [v5 loadImageForCategory:v4 reason:-1];
  v6 = [v4 children];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SUUICategoryController *)self _precacheArtworkForCategory:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_recordClickEventWithCategory:(id)a3 index:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentsController);
  if (WeakRetained)
  {
    v8 = [(SUUIClientContext *)self->_clientContext metricsPageContextForViewController:WeakRetained];
  }

  else
  {
    v8 = 0;
  }

  clientContext = self->_clientContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__SUUICategoryController__recordClickEventWithCategory_index___block_invoke;
  v12[3] = &unk_2798FA630;
  v13 = v8;
  v14 = v6;
  v15 = a4;
  v10 = v6;
  v11 = v8;
  [(SUUIClientContext *)clientContext getDefaultMetricsControllerWithCompletionBlock:v12];
}

void __62__SUUICategoryController__recordClickEventWithCategory_index___block_invoke(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 canRecordEventWithType:*MEMORY[0x277D6A478]])
  {
    v4 = objc_alloc_init(MEMORY[0x277D69B68]);
    [v4 setActionType:*MEMORY[0x277D6A458]];
    [v4 setPageContext:*(a1 + 32)];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(*(a1 + 40), "categoryIdentifier")];
    [v4 setTargetIdentifier:v5];

    v6 = *MEMORY[0x277D6A4E8];
    [v4 setTargetType:*MEMORY[0x277D6A4E8]];
    v7 = [*(a1 + 40) URL];
    v8 = [v7 absoluteString];
    [v4 setTargetURL:v8];

    v9 = [v3 locationWithPosition:0 type:@"topNav" fieldData:0];
    v10 = [v3 locationWithPosition:*(a1 + 48) type:v6 fieldData:0];
    v12[0] = v10;
    v12[1] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    [v4 setLocationWithEventLocations:v11];

    [v3 recordEvent:v4];
  }
}

- (void)_reloadSelectedSegment
{
  if (!self->_segmentedControl || self->_popover)
  {
    return;
  }

  selectedURL = self->_selectedURL;
  v4 = [(SUUICategory *)self->_rootCategory URL];
  if (([(NSURL *)selectedURL isEqual:v4]& 1) != 0)
  {
  }

  else
  {
    v5 = [(NSURL *)self->_selectedURL isEqual:self->_defaultURL];

    if ((v5 & 1) == 0)
    {
      v7 = [(SUUICategory *)self->_rootCategory children];
      if ([v7 count])
      {
        v8 = 0;
        while (1)
        {
          v9 = [v7 objectAtIndex:v8];
          v10 = [v9 containsURL:self->_selectedURL];

          if (v10)
          {
            break;
          }

          if (++v8 >= [v7 count])
          {
            goto LABEL_12;
          }
        }

        segmentedControlSegments = self->_segmentedControlSegments;
        v14 = [v7 objectAtIndex:v8];
        v6 = [(NSArray *)segmentedControlSegments indexOfObject:v14];

        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = self->_segmentedControlSegments;
          v16 = [MEMORY[0x277CBEB68] null];
          v6 = [(NSArray *)v15 indexOfObject:v16];
        }
      }

      else
      {
LABEL_12:
        v6 = 0x7FFFFFFFFFFFFFFFLL;
      }

      goto LABEL_14;
    }
  }

  v6 = [(NSArray *)self->_segmentedControlSegments indexOfObject:self->_rootCategory];
LABEL_14:
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = -1;
  }

  else
  {
    v11 = v6;
  }

  segmentedControl = self->_segmentedControl;

  [(SUUISegmentedControl *)segmentedControl setSelectedSegmentIndex:v11];
}

- (id)_rootMetricsLocations
{
  v2 = objc_alloc_init(MEMORY[0x277D69B90]);
  [v2 setLocationPosition:0];
  [v2 setLocationType:@"topNav"];
  v3 = [MEMORY[0x277CBEB18] arrayWithObject:v2];

  return v3;
}

- (void)_setResponse:(id)a3 error:(id)a4
{
  v8 = a3;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SUUICategory alloc] initWithCategoryDictionary:v8];
    rootCategory = self->_rootCategory;
    self->_rootCategory = v6;

    [(SUUICategoryController *)self _precacheArtworkForCategory:self->_rootCategory];
    [(SUUICategoryController *)self _reloadSegmentedControl];
  }
}

- (id)_tableViewControllerWithCategory:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SUUICategoryTableViewController);
  v6 = [(SUUICategoryController *)self _artworkLoader];
  [(SUUICategoryTableViewController *)v5 setArtworkLoader:v6];

  [(SUUICategoryTableViewController *)v5 setClientContext:self->_clientContext];
  [(SUUICategoryTableViewController *)v5 setCategory:v4];
  [(SUUICategoryTableViewController *)v5 setPreferredContentSize:320.0, 472.0];
  [(SUUICategoryTableViewController *)v5 setSelectedURL:self->_selectedURL];
  [(SUUICategoryTableViewController *)v5 setDefaultURL:self->_defaultURL];
  v7 = self->_rootCategory == v4;

  [(SUUICategoryTableViewController *)v5 setRoot:v7];
  [(SUUICategoryTableViewController *)v5 setDelegate:self];

  return v5;
}

- (SUUICategoryControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end