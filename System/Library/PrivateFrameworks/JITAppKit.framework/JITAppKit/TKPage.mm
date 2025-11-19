@interface TKPage
- (TKPage)initWithViewName:(id)a3;
- (UIViewController)viewController;
- (id)createViewController;
- (void)dataError;
- (void)dataLoaded:(id)a3 withError:(id)a4;
- (void)dealloc;
- (void)didFinishLoading:(id)a3 data:(id)a4 responseError:(id)a5;
- (void)didLoadData:(BOOL)a3;
- (void)dispose;
- (void)hideLoadingViewController;
- (void)load;
- (void)loadData:(id)a3 postData:(id)a4;
- (void)loadRequest:(id)a3;
- (void)reloadWithDelayedShowLoading:(BOOL)a3;
- (void)setData:(id)a3;
- (void)showLoadingViewController;
@end

@implementation TKPage

- (TKPage)initWithViewName:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v14;
  v14 = 0;
  v12.receiver = v3;
  v12.super_class = TKPage;
  v14 = [(TKPage *)&v12 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    v4 = [location[0] copy];
    viewName = v14->_viewName;
    v14->_viewName = v4;
    MEMORY[0x277D82BD8](viewName);
    v10 = objc_alloc(MEMORY[0x277D73408]);
    v11 = objc_alloc_init(MEMORY[0x277D73410]);
    v6 = [v10 initWithSchema:?];
    dataObject = v14->_dataObject;
    v14->_dataObject = v6;
    MEMORY[0x277D82BD8](dataObject);
    MEMORY[0x277D82BD8](v11);
    v14->_shouldShowLoading = 1;
  }

  v9 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v9;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(TKPage *)self dispose];
  v2.receiver = v4;
  v2.super_class = TKPage;
  [(TKPage *)&v2 dealloc];
}

- (UIViewController)viewController
{
  v5 = self;
  obj[1] = a2;
  obj[0] = objc_loadWeakRetained(&self->_weakViewController);
  if (!obj[0])
  {
    obj[0] = [(TKPage *)v5 createViewController];
    MEMORY[0x277D82BD8](0);
    objc_storeWeak(&v5->_weakViewController, obj[0]);
  }

  v6 = MEMORY[0x277D82BE0](obj[0]);
  objc_storeStrong(obj, 0);
  v2 = v6;

  return v2;
}

- (id)createViewController
{
  v25 = self;
  v24[1] = a2;
  v13 = +[TKApplication shared];
  v12 = [v13 repository];
  v24[0] = [v12 tmlPathForName:v25->_viewName];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  if ([v24[0] length])
  {
    v22 = objc_alloc_init(MEMORY[0x277D733F8]);
    v9 = [MEMORY[0x277D73420] weakReferenceWithObject:v25];
    [v22 addObject:? withIdentifier:?];
    MEMORY[0x277D82BD8](v9);
    [v22 addObject:v25->_dataObject withIdentifier:@"data"];
    [v22 makeWeakObjectWithIdentifier:@"owner"];
    if ([v22 loadSourceFromPath:v24[0]])
    {
      v21 = [v22 rootObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v21 setTkPage:v25];
        objc_storeStrong(&v25->_context, v22);
        objc_initWeak(&location, v25);
        v4 = MEMORY[0x277D73418];
        v14 = MEMORY[0x277D85DD0];
        v15 = -1073741824;
        v16 = 0;
        v17 = __30__TKPage_createViewController__block_invoke;
        v18 = &unk_2797EE450;
        objc_copyWeak(&v19, &location);
        [v4 runBlock:&v14 onFinalize:v21];
        v26 = MEMORY[0x277D82BE0](v21);
        v23 = 1;
        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);
      }

      else
      {
        v6 = +[TKApplication shared];
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"View failed to load (invalid root object): %@", v24[0]];
        v26 = [v6 newErrorViewController:?];
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v6);
        v23 = 1;
      }

      objc_storeStrong(&v21, 0);
    }

    else
    {
      v8 = +[TKApplication shared];
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"View failed to load: %@", v24[0]];
      v26 = [v8 newErrorViewController:?];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      v23 = 1;
    }

    objc_storeStrong(&v22, 0);
  }

  else
  {
    v11 = +[TKApplication shared];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"View not found: %@", v25->_viewName];
    v26 = [v11 newErrorViewController:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    v23 = 1;
  }

  objc_storeStrong(v24, 0);
  v2 = v26;

  return v2;
}

uint64_t __30__TKPage_createViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dispose];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)dispose
{
  v7 = self;
  v6[1] = a2;
  v6[0] = MEMORY[0x277D82BE0](self->_context);
  objc_storeStrong(&v7->_context, 0);
  [v6[0] dispose];
  v4 = objc_alloc(MEMORY[0x277D73408]);
  v5 = [(TMLJSONObject *)v7->_dataObject SCHEMA];
  v2 = [v4 initWithSchema:?];
  dataObject = v7->_dataObject;
  v7->_dataObject = v2;
  MEMORY[0x277D82BD8](dataObject);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v7->_dataRequest, 0);
  objc_storeStrong(v6, 0);
}

- (void)setData:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(TMLJSONObject *)v4->_dataObject setRawJSONSync:location[0]];
  objc_storeStrong(location, 0);
}

- (void)load
{
  if (!self->_ready)
  {
    if (self->_dataRequest)
    {
      [(TKPage *)self reloadWithDelayedShowLoading:1];
    }
  }
}

- (void)loadData:(id)a3 postData:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v7 = [location[0] absoluteString];
  v8 = [v7 length];
  MEMORY[0x277D82BD8](v7);
  if (v8)
  {
    v4 = objc_alloc(MEMORY[0x277CCAB70]);
    v9 = [v4 initWithURL:location[0]];
    if ([v11 count])
    {
      v5 = [TKUtils httpDataURLEncoded:v11];
      [v9 setHTTPBody:?];
      MEMORY[0x277D82BD8](v5);
    }

    [(TKPage *)v13 loadRequest:v9];
    objc_storeStrong(&v9, 0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)loadRequest:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(TKPage *)v4 setDataRequest:location[0]];
  [(TKPage *)v4 reloadWithDelayedShowLoading:1];
  objc_storeStrong(location, 0);
}

- (void)reloadWithDelayedShowLoading:(BOOL)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  if (self->_networkTask)
  {
    [(TKNetworkTask *)v17->_networkTask cancel];
    objc_storeStrong(&v17->_networkTask, 0);
  }

  v7 = [(NSURLRequest *)v17->_dataRequest URL];
  MEMORY[0x277D82BD8](v7);
  if (v7)
  {
    [(TKPage *)v17 willChangeValueForKey:?];
    v17->_dataLoading = 1;
    [(TKPage *)v17 didChangeValueForKey:@"dataLoading"];
    [(TKPage *)v17 showLoadingViewController];
    objc_initWeak(&location, v17);
    v5 = +[TKNetwork shared];
    dataRequest = v17->_dataRequest;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __39__TKPage_reloadWithDelayedShowLoading___block_invoke;
    v12 = &unk_2797EE478;
    objc_copyWeak(v13, &location);
    v3 = [v5 loadRequest:dataRequest priority:1 completion:&v8];
    networkTask = v17->_networkTask;
    v17->_networkTask = v3;
    MEMORY[0x277D82BD8](networkTask);
    MEMORY[0x277D82BD8](v5);
    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

void __39__TKPage_reloadWithDelayedShowLoading___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained didFinishLoading:location[0] data:v9 responseError:v8];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)didFinishLoading:(id)a3 data:(id)a4 responseError:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10 = MEMORY[0x277D82BE0](v11);
  if (location[0] && v12)
  {
    v8 = v10;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v12 options:0 error:&v8];
    objc_storeStrong(&v10, v8);
    v9 = v5;
    [(TKPage *)v14 dataLoaded:v5 withError:v10];
    objc_storeStrong(&v9, 0);
  }

  else
  {
    [(TKPage *)v14 dataLoaded:0 withError:v10];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)dataLoaded:(id)a3 withError:(id)a4
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  objc_initWeak(&from, v25);
  if (location[0])
  {
    dataObject = v25->_dataObject;
    v8 = location[0];
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __31__TKPage_dataLoaded_withError___block_invoke;
    v20 = &unk_2797EE4C8;
    objc_copyWeak(&v21, &from);
    [(TMLJSONObject *)dataObject setRawJSONAsync:v8 completion:&v16];
    objc_destroyWeak(&v21);
  }

  else
  {
    v5 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    queue = v5;
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __31__TKPage_dataLoaded_withError___block_invoke_3;
    v14 = &unk_2797EE450;
    objc_copyWeak(&v15, &from);
    dispatch_async(queue, &v10);
    MEMORY[0x277D82BD8](queue);
    objc_destroyWeak(&v15);
  }

  objc_destroyWeak(&from);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

void __31__TKPage_dataLoaded_withError___block_invoke(uint64_t a1, char a2)
{
  v15 = a1;
  v14 = a2;
  v13 = a1;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __31__TKPage_dataLoaded_withError___block_invoke_2;
  v10 = &unk_2797EE4A0;
  objc_copyWeak(&v11, (a1 + 32));
  v12 = v14 & 1;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_destroyWeak(&v11);
}

uint64_t __31__TKPage_dataLoaded_withError___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didLoadData:*(a1 + 40) & 1];
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __31__TKPage_dataLoaded_withError___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dataError];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)dataError
{
  [(TKPage *)self willChangeValueForKey:?];
  self->_dataLoading = 0;
  [(TKPage *)self didChangeValueForKey:@"dataLoading"];
  [(TKPage *)self hideLoadingViewController];
  [(TKPage *)self emitTMLSignal:@"dataError" withArguments:&unk_286780EF8];
}

- (void)didLoadData:(BOOL)a3
{
  [(TKPage *)self willChangeValueForKey:?];
  self->_dataLoading = 0;
  [(TKPage *)self didChangeValueForKey:@"dataLoading"];
  [(TKPage *)self hideLoadingViewController];
  if (a3)
  {
    [(TKPage *)self emitTMLSignal:@"dataLoaded" withArguments:0];
  }
}

- (void)showLoadingViewController
{
  v40 = self;
  v39[1] = a2;
  if (self->_shouldShowLoading)
  {
    v39[0] = objc_loadWeakRetained(&v40->_loadingViewController);
    WeakRetained = objc_loadWeakRetained(&v40->_weakViewController);
    if (v39[0] || !WeakRetained || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v37 = 1;
    }

    else
    {
      v36 = [WeakRetained view];
      v13 = +[TKApplication shared];
      v2 = [v13 newLoadingViewController];
      v3 = v39[0];
      v39[0] = v2;
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v13);
      if (v39[0])
      {
        [WeakRetained addChildViewController:v39[0]];
        v35 = [v39[0] view];
        [v36 bounds];
        *&v33 = v4;
        *(&v33 + 1) = v5;
        *&v34 = v6;
        *(&v34 + 1) = v7;
        v31 = v33;
        v32 = v34;
        [v35 setFrame:{v4, v5, v6, v7}];
        [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
        objc_opt_class();
        v30 = (objc_opt_isKindOfClass() ^ 1) & 1;
        [v35 setAutoresizingMask:18];
        v9 = [MEMORY[0x277D75128] sharedApplication];
        [v9 statusBarOrientationAnimationDuration];
        v10 = v8 / 2.0;
        MEMORY[0x277D82BD8](v9);
        v29 = v10;
        v12 = MEMORY[0x277D75D18];
        v11 = v36;
        v21 = MEMORY[0x277D85DD0];
        v22 = -1073741824;
        v23 = 0;
        v24 = __35__TKPage_showLoadingViewController__block_invoke;
        v25 = &unk_2797EE4F0;
        v26 = MEMORY[0x277D82BE0](v36);
        v27 = MEMORY[0x277D82BE0](v35);
        v28 = v30 & 1;
        v14 = MEMORY[0x277D85DD0];
        v15 = -1073741824;
        v16 = 0;
        v17 = __35__TKPage_showLoadingViewController__block_invoke_2;
        v18 = &unk_2797EE1F8;
        v19 = MEMORY[0x277D82BE0](v39[0]);
        v20 = MEMORY[0x277D82BE0](WeakRetained);
        [v12 transitionWithView:v11 duration:5243008 options:&v21 animations:&v14 completion:v10];
        objc_storeWeak(&v40->_loadingViewController, v39[0]);
        objc_storeStrong(&v20, 0);
        objc_storeStrong(&v19, 0);
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v26, 0);
        objc_storeStrong(&v35, 0);
        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&WeakRetained, 0);
    objc_storeStrong(v39, 0);
  }
}

uint64_t __35__TKPage_showLoadingViewController__block_invoke(uint64_t a1)
{
  v17[4] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addSubview:*(a1 + 40)];
  result = a1;
  if (*(a1 + 48))
  {
    v2 = MEMORY[0x277CCAAD0];
    v15 = [*(a1 + 40) leftAnchor];
    v14 = [*(a1 + 32) leftAnchor];
    v13 = [v15 constraintEqualToAnchor:?];
    v17[0] = v13;
    v12 = [*(a1 + 40) rightAnchor];
    v11 = [*(a1 + 32) rightAnchor];
    v10 = [v12 constraintEqualToAnchor:?];
    v17[1] = v10;
    v9 = [*(a1 + 40) topAnchor];
    v8 = [*(a1 + 32) topAnchor];
    v7 = [v9 constraintEqualToAnchor:?];
    v17[2] = v7;
    v6 = [*(a1 + 40) bottomAnchor];
    v5 = [*(a1 + 32) bottomAnchor];
    v4 = [v6 constraintEqualToAnchor:?];
    v17[3] = v4;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
    [v2 activateConstraints:?];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    result = MEMORY[0x277D82BD8](v15);
  }

  *MEMORY[0x277D85DE8];
  return result;
}

- (void)hideLoadingViewController
{
  v23 = self;
  v22[1] = a2;
  v22[0] = objc_loadWeakRetained(&self->_loadingViewController);
  WeakRetained = objc_loadWeakRetained(&v23->_weakViewController);
  v21 = [WeakRetained viewIfLoaded];
  MEMORY[0x277D82BD8](WeakRetained);
  if (v22[0] && v21)
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    [v3 statusBarOrientationAnimationDuration];
    v4 = v2 / 2.0;
    MEMORY[0x277D82BD8](v3);
    v19[1] = *&v4;
    [v22[0] willMoveToParentViewController:?];
    v6 = MEMORY[0x277D75D18];
    v5 = v21;
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __35__TKPage_hideLoadingViewController__block_invoke;
    v18 = &unk_2797EE220;
    v19[0] = MEMORY[0x277D82BE0](v22[0]);
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __35__TKPage_hideLoadingViewController__block_invoke_2;
    v12 = &unk_2797EE248;
    v13 = MEMORY[0x277D82BE0](v22[0]);
    [v6 transitionWithView:v5 duration:5243008 options:&v14 animations:&v8 completion:v4];
    objc_storeWeak(&v23->_loadingViewController, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(v19, 0);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(v22, 0);
}

uint64_t __35__TKPage_hideLoadingViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];
  return MEMORY[0x277D82BD8](v2);
}

@end