@interface MUActivityViewController
- (MUActivityViewController)initWithShareItem:(id)item;
- (MUActivityViewControllerDelegate)activityControllerDelegate;
- (id)_activityHandler;
- (id)_completionHandler;
- (void)_registerPreload;
@end

@implementation MUActivityViewController

- (MUActivityViewControllerDelegate)activityControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_activityControllerDelegate);

  return WeakRetained;
}

- (id)_activityHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__MUActivityViewController__activityHandler__block_invoke;
  v4[3] = &unk_1E821A1A0;
  v4[4] = self;
  v2 = [v4 copy];

  return v2;
}

void __44__MUActivityViewController__activityHandler__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 activityControllerDelegate];
  [v7 mapkitActivityViewController:*(a1 + 32) preCompletedActivityOfType:v6 completed:a3];
}

- (id)_completionHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MUActivityViewController__completionHandler__block_invoke;
  v4[3] = &unk_1E821A178;
  v4[4] = self;
  v2 = [v4 copy];

  return v2;
}

void __46__MUActivityViewController__completionHandler__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 activityControllerDelegate];
  [v7 mapkitActivityViewController:*(a1 + 32) postCompletedActivityOfType:v6 completed:a3];
}

- (void)_registerPreload
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__MUActivityViewController__registerPreload__block_invoke;
  v3[3] = &unk_1E821BAC8;
  objc_copyWeak(&v4, &location);
  [(MUActivityViewController *)self _setShareSheetReadyToInteractHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __44__MUActivityViewController__registerPreload__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained shareItem];
    [v2 preloadResources];

    WeakRetained = v3;
  }
}

- (MUActivityViewController)initWithShareItem:(id)item
{
  itemCopy = item;
  activityProviders = [itemCopy activityProviders];
  applicationActivities = [itemCopy applicationActivities];
  v14.receiver = self;
  v14.super_class = MUActivityViewController;
  v8 = [(MUActivityViewController *)&v14 initWithActivityItems:activityProviders applicationActivities:applicationActivities];

  if (v8)
  {
    objc_storeStrong(&v8->_shareItem, item);
    excludedActivityTypes = [itemCopy excludedActivityTypes];
    [(MUActivityViewController *)v8 setExcludedActivityTypes:excludedActivityTypes];

    includedActivityTypes = [itemCopy includedActivityTypes];
    [(MUActivityViewController *)v8 setIncludedActivityTypes:includedActivityTypes];

    _activityHandler = [(MUActivityViewController *)v8 _activityHandler];
    [(MUActivityViewController *)v8 setPreCompletionHandler:_activityHandler];

    _completionHandler = [(MUActivityViewController *)v8 _completionHandler];
    [(MUActivityViewController *)v8 setCompletionWithItemsHandler:_completionHandler];

    [(MUActivityViewController *)v8 setShowKeyboardAutomatically:1];
    [(MUActivityViewController *)v8 setAirDropDelegate:v8];
    [(MUActivityViewController *)v8 _registerPreload];
  }

  return v8;
}

@end