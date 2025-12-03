@interface SUUICategoryController
- (NSOperationQueue)operationQueue;
- (SUUICategoryController)initWithContentsController:(id)controller;
- (SUUICategoryControllerDelegate)delegate;
- (UIBarButtonItem)categoryButton;
- (UISegmentedControl)segmentedControl;
- (id)_artworkLoader;
- (id)_metricsLocationsWithIndex:(int64_t)index;
- (id)_rootMetricsLocations;
- (id)_tableViewControllerWithCategory:(id)category;
- (id)metricsPageContextForCategoryTableView:(id)view;
- (void)_precacheArtworkForCategory:(id)category;
- (void)_recordClickEventWithCategory:(id)category index:(int64_t)index;
- (void)_reloadSegmentedControl;
- (void)_reloadSelectedSegment;
- (void)_setResponse:(id)response error:(id)error;
- (void)buttonAction:(id)action;
- (void)categoryTableView:(id)view didSelectCategory:(id)category;
- (void)dealloc;
- (void)dismiss;
- (void)loadFromURL:(id)l withCompletionBlock:(id)block;
- (void)popoverControllerDidDismissPopover:(id)popover;
- (void)segmentedControlAction:(id)action;
- (void)setCategory:(id)category;
- (void)setDefaultURL:(id)l;
- (void)setSegmentedControlLength:(int64_t)length;
- (void)setSelectedURL:(id)l;
@end

@implementation SUUICategoryController

- (SUUICategoryController)initWithContentsController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = SUUICategoryController;
  v5 = [(SUUICategoryController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contentsController, controllerCopy);
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

- (void)loadFromURL:(id)l withCompletionBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  [(SSVLoadURLOperation *)self->_loadOperation cancel];
  v8 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:lCopy];
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
  v15 = blockCopy;
  v18 = v15;
  [(SSVLoadURLOperation *)v14 setOutputBlock:v17];
  operationQueue = [(SUUICategoryController *)self operationQueue];
  [operationQueue addOperation:self->_loadOperation];

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

- (void)setCategory:(id)category
{
  categoryCopy = category;
  p_rootCategory = &self->_rootCategory;
  if (self->_rootCategory != categoryCopy)
  {
    v7 = categoryCopy;
    objc_storeStrong(p_rootCategory, category);
    [(SUUICategoryController *)self _precacheArtworkForCategory:self->_rootCategory];
    p_rootCategory = [(SUUICategoryController *)self _reloadSegmentedControl];
    categoryCopy = v7;
  }

  MEMORY[0x2821F96F8](p_rootCategory, categoryCopy);
}

- (void)setSegmentedControlLength:(int64_t)length
{
  if (self->_segmentedControlLength != length)
  {
    self->_segmentedControlLength = length;
    [(SUUICategoryController *)self _reloadSegmentedControl];
  }
}

- (void)setSelectedURL:(id)l
{
  lCopy = l;
  if (([lCopy isEqual:self->_selectedURL] & 1) == 0)
  {
    objc_storeStrong(&self->_selectedURL, l);
    [(SUUICategoryController *)self _reloadSelectedSegment];
  }
}

- (void)setDefaultURL:(id)l
{
  lCopy = l;
  if (([lCopy isEqual:self->_defaultURL] & 1) == 0)
  {
    objc_storeStrong(&self->_defaultURL, l);
    [(SUUICategoryController *)self _reloadSelectedSegment];
  }
}

- (void)buttonAction:(id)action
{
  [(SUUICategoryController *)self dismiss];
  _rootMetricsLocations = [(SUUICategoryController *)self _rootMetricsLocations];
  v4 = [(SUUICategoryController *)self _tableViewControllerWithCategory:self->_rootCategory];
  tableViewController = self->_tableViewController;
  self->_tableViewController = v4;

  [(SUUICategoryTableViewController *)self->_tableViewController setMetricsLocations:_rootMetricsLocations];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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
        children = [v15 children];
        v18 = [children count];

        if (!v18)
        {
          break;
        }

        v19 = [(SUUICategoryController *)self _tableViewControllerWithCategory:v15];
        children2 = [(SUUICategory *)v13 children];
        v21 = [children2 indexOfObjectIdenticalTo:v15];

        if (v21 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = objc_alloc_init(MEMORY[0x277D69B90]);
          [v22 setLocationPosition:v21 + 1];
          [v22 setLocationType:v16];
          [_rootMetricsLocations insertObject:v22 atIndex:0];
          [v19 setMetricsLocations:_rootMetricsLocations];
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

- (void)segmentedControlAction:(id)action
{
  [(SUUICategoryController *)self dismiss];
  selectedSegmentIndex = [(SUUISegmentedControl *)self->_segmentedControl selectedSegmentIndex];
  v28 = [(NSArray *)self->_segmentedControlSegments objectAtIndex:selectedSegmentIndex];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  rootCategory = self->_rootCategory;
  if (isKindOfClass)
  {
    v7 = [(SUUICategoryController *)self _tableViewControllerWithCategory:rootCategory];
    tableViewController = self->_tableViewController;
    self->_tableViewController = v7;

    v9 = self->_tableViewController;
    v10 = [(SUUICategoryController *)self _metricsLocationsWithIndex:selectedSegmentIndex];
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
    [(SUUISegmentedControl *)self->_segmentedControl frameForSegmentAtIndex:selectedSegmentIndex];
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
    children = [(SUUICategory *)v28 children];
    v12 = [children count];

    if (v12)
    {
      v13 = [(SUUICategoryController *)self _tableViewControllerWithCategory:v28];
      v14 = self->_tableViewController;
      self->_tableViewController = v13;

      v15 = self->_tableViewController;
      v16 = [(SUUICategoryController *)self _metricsLocationsWithIndex:selectedSegmentIndex];
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
    [(SUUICategoryController *)self _recordClickEventWithCategory:v28 index:selectedSegmentIndex];
    v22 = [(SUUICategoryController *)self categoryTableView:0 didSelectCategory:v28];
    goto LABEL_7;
  }

LABEL_8:

  MEMORY[0x2821F96F8](v22, v23);
}

- (void)popoverControllerDidDismissPopover:(id)popover
{
  [(SUUICategoryController *)self dismiss];

  [(SUUICategoryController *)self _reloadSelectedSegment];
}

- (void)categoryTableView:(id)view didSelectCategory:(id)category
{
  categoryCopy = category;
  [(SUUICategoryController *)self dismiss];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 categoryController:self didSelectCategory:categoryCopy];
  }
}

- (id)metricsPageContextForCategoryTableView:(id)view
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

- (id)_metricsLocationsWithIndex:(int64_t)index
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D69B90]);
  [v4 setLocationPosition:index];
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
    children = [(SUUICategory *)self->_rootCategory children];
    objectEnumerator = [children objectEnumerator];

    parentLabel = [(SUUICategory *)self->_rootCategory parentLabel];

    if (parentLabel)
    {
      [(NSArray *)v3 addObject:self->_rootCategory];
    }

    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      while ([(NSArray *)v3 count]< self->_segmentedControlLength)
      {
        [(NSArray *)v3 addObject:nextObject2];

        nextObject2 = [objectEnumerator nextObject];
        if (!nextObject2)
        {
          goto LABEL_10;
        }
      }

      [(NSArray *)v3 removeLastObject];
      null = [MEMORY[0x277CBEB68] null];
      [(NSArray *)v3 addObject:null];
    }

LABEL_10:
    segmentedControlSegments = self->_segmentedControlSegments;
    self->_segmentedControlSegments = v3;
    v11 = v3;

    selectedSegmentIndex = [(SUUISegmentedControl *)self->_segmentedControl selectedSegmentIndex];
    [(SUUISegmentedControl *)self->_segmentedControl removeAllSegments];
    v13 = self->_segmentedControlSegments;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__SUUICategoryController__reloadSegmentedControl__block_invoke;
    v14[3] = &unk_2798FA608;
    v14[4] = self;
    [(NSArray *)v13 enumerateObjectsUsingBlock:v14];
    [(SUUISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:selectedSegmentIndex];
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

- (void)_precacheArtworkForCategory:(id)category
{
  v16 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  _artworkLoader = [(SUUICategoryController *)self _artworkLoader];
  [_artworkLoader loadImageForCategory:categoryCopy reason:-1];
  children = [categoryCopy children];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(children);
        }

        [(SUUICategoryController *)self _precacheArtworkForCategory:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_recordClickEventWithCategory:(id)category index:(int64_t)index
{
  categoryCopy = category;
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
  v14 = categoryCopy;
  indexCopy = index;
  v10 = categoryCopy;
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
      children = [(SUUICategory *)self->_rootCategory children];
      if ([children count])
      {
        v8 = 0;
        while (1)
        {
          v9 = [children objectAtIndex:v8];
          v10 = [v9 containsURL:self->_selectedURL];

          if (v10)
          {
            break;
          }

          if (++v8 >= [children count])
          {
            goto LABEL_12;
          }
        }

        segmentedControlSegments = self->_segmentedControlSegments;
        v14 = [children objectAtIndex:v8];
        v6 = [(NSArray *)segmentedControlSegments indexOfObject:v14];

        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = self->_segmentedControlSegments;
          null = [MEMORY[0x277CBEB68] null];
          v6 = [(NSArray *)v15 indexOfObject:null];
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

- (void)_setResponse:(id)response error:(id)error
{
  responseCopy = response;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SUUICategory alloc] initWithCategoryDictionary:responseCopy];
    rootCategory = self->_rootCategory;
    self->_rootCategory = v6;

    [(SUUICategoryController *)self _precacheArtworkForCategory:self->_rootCategory];
    [(SUUICategoryController *)self _reloadSegmentedControl];
  }
}

- (id)_tableViewControllerWithCategory:(id)category
{
  categoryCopy = category;
  v5 = objc_alloc_init(SUUICategoryTableViewController);
  _artworkLoader = [(SUUICategoryController *)self _artworkLoader];
  [(SUUICategoryTableViewController *)v5 setArtworkLoader:_artworkLoader];

  [(SUUICategoryTableViewController *)v5 setClientContext:self->_clientContext];
  [(SUUICategoryTableViewController *)v5 setCategory:categoryCopy];
  [(SUUICategoryTableViewController *)v5 setPreferredContentSize:320.0, 472.0];
  [(SUUICategoryTableViewController *)v5 setSelectedURL:self->_selectedURL];
  [(SUUICategoryTableViewController *)v5 setDefaultURL:self->_defaultURL];
  v7 = self->_rootCategory == categoryCopy;

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