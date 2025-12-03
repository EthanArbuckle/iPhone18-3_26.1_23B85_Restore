@interface TKPage
- (TKPage)initWithViewName:(id)name;
- (UIViewController)viewController;
- (id)createViewController;
- (void)dataError;
- (void)dataLoaded:(id)loaded withError:(id)error;
- (void)dealloc;
- (void)didFinishLoading:(id)loading data:(id)data responseError:(id)error;
- (void)didLoadData:(BOOL)data;
- (void)dispose;
- (void)hideLoadingViewController;
- (void)load;
- (void)loadData:(id)data postData:(id)postData;
- (void)loadRequest:(id)request;
- (void)reloadWithDelayedShowLoading:(BOOL)loading;
- (void)setData:(id)data;
- (void)showLoadingViewController;
@end

@implementation TKPage

- (TKPage)initWithViewName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v3 = selfCopy;
  selfCopy = 0;
  v12.receiver = v3;
  v12.super_class = TKPage;
  selfCopy = [(TKPage *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] copy];
    viewName = selfCopy->_viewName;
    selfCopy->_viewName = v4;
    MEMORY[0x277D82BD8](viewName);
    v10 = objc_alloc(MEMORY[0x277D73408]);
    v11 = objc_alloc_init(MEMORY[0x277D73410]);
    v6 = [v10 initWithSchema:?];
    dataObject = selfCopy->_dataObject;
    selfCopy->_dataObject = v6;
    MEMORY[0x277D82BD8](dataObject);
    MEMORY[0x277D82BD8](v11);
    selfCopy->_shouldShowLoading = 1;
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(TKPage *)self dispose];
  v2.receiver = selfCopy;
  v2.super_class = TKPage;
  [(TKPage *)&v2 dealloc];
}

- (UIViewController)viewController
{
  selfCopy = self;
  obj[1] = a2;
  obj[0] = objc_loadWeakRetained(&self->_weakViewController);
  if (!obj[0])
  {
    obj[0] = [(TKPage *)selfCopy createViewController];
    MEMORY[0x277D82BD8](0);
    objc_storeWeak(&selfCopy->_weakViewController, obj[0]);
  }

  v6 = MEMORY[0x277D82BE0](obj[0]);
  objc_storeStrong(obj, 0);
  v2 = v6;

  return v2;
}

- (id)createViewController
{
  selfCopy = self;
  v24[1] = a2;
  v13 = +[TKApplication shared];
  repository = [v13 repository];
  v24[0] = [repository tmlPathForName:selfCopy->_viewName];
  MEMORY[0x277D82BD8](repository);
  MEMORY[0x277D82BD8](v13);
  if ([v24[0] length])
  {
    v22 = objc_alloc_init(MEMORY[0x277D733F8]);
    v9 = [MEMORY[0x277D73420] weakReferenceWithObject:selfCopy];
    [v22 addObject:? withIdentifier:?];
    MEMORY[0x277D82BD8](v9);
    [v22 addObject:selfCopy->_dataObject withIdentifier:@"data"];
    [v22 makeWeakObjectWithIdentifier:@"owner"];
    if ([v22 loadSourceFromPath:v24[0]])
    {
      rootObject = [v22 rootObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [rootObject setTkPage:selfCopy];
        objc_storeStrong(&selfCopy->_context, v22);
        objc_initWeak(&location, selfCopy);
        v4 = MEMORY[0x277D73418];
        v14 = MEMORY[0x277D85DD0];
        v15 = -1073741824;
        v16 = 0;
        v17 = __30__TKPage_createViewController__block_invoke;
        v18 = &unk_2797EE450;
        objc_copyWeak(&v19, &location);
        [v4 runBlock:&v14 onFinalize:rootObject];
        v26 = MEMORY[0x277D82BE0](rootObject);
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

      objc_storeStrong(&rootObject, 0);
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
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"View not found: %@", selfCopy->_viewName];
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
  selfCopy = self;
  v6[1] = a2;
  v6[0] = MEMORY[0x277D82BE0](self->_context);
  objc_storeStrong(&selfCopy->_context, 0);
  [v6[0] dispose];
  v4 = objc_alloc(MEMORY[0x277D73408]);
  sCHEMA = [(TMLJSONObject *)selfCopy->_dataObject SCHEMA];
  v2 = [v4 initWithSchema:?];
  dataObject = selfCopy->_dataObject;
  selfCopy->_dataObject = v2;
  MEMORY[0x277D82BD8](dataObject);
  MEMORY[0x277D82BD8](sCHEMA);
  objc_storeStrong(&selfCopy->_dataRequest, 0);
  objc_storeStrong(v6, 0);
}

- (void)setData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  [(TMLJSONObject *)selfCopy->_dataObject setRawJSONSync:location[0]];
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

- (void)loadData:(id)data postData:(id)postData
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v11 = 0;
  objc_storeStrong(&v11, postData);
  absoluteString = [location[0] absoluteString];
  v8 = [absoluteString length];
  MEMORY[0x277D82BD8](absoluteString);
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

    [(TKPage *)selfCopy loadRequest:v9];
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

- (void)loadRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  [(TKPage *)selfCopy setDataRequest:location[0]];
  [(TKPage *)selfCopy reloadWithDelayedShowLoading:1];
  objc_storeStrong(location, 0);
}

- (void)reloadWithDelayedShowLoading:(BOOL)loading
{
  selfCopy = self;
  v16 = a2;
  loadingCopy = loading;
  if (self->_networkTask)
  {
    [(TKNetworkTask *)selfCopy->_networkTask cancel];
    objc_storeStrong(&selfCopy->_networkTask, 0);
  }

  v7 = [(NSURLRequest *)selfCopy->_dataRequest URL];
  MEMORY[0x277D82BD8](v7);
  if (v7)
  {
    [(TKPage *)selfCopy willChangeValueForKey:?];
    selfCopy->_dataLoading = 1;
    [(TKPage *)selfCopy didChangeValueForKey:@"dataLoading"];
    [(TKPage *)selfCopy showLoadingViewController];
    objc_initWeak(&location, selfCopy);
    v5 = +[TKNetwork shared];
    dataRequest = selfCopy->_dataRequest;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __39__TKPage_reloadWithDelayedShowLoading___block_invoke;
    v12 = &unk_2797EE478;
    objc_copyWeak(v13, &location);
    v3 = [v5 loadRequest:dataRequest priority:1 completion:&v8];
    networkTask = selfCopy->_networkTask;
    selfCopy->_networkTask = v3;
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

- (void)didFinishLoading:(id)loading data:(id)data responseError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, loading);
  v12 = 0;
  objc_storeStrong(&v12, data);
  v11 = 0;
  objc_storeStrong(&v11, error);
  v10 = MEMORY[0x277D82BE0](v11);
  if (location[0] && v12)
  {
    v8 = v10;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v12 options:0 error:&v8];
    objc_storeStrong(&v10, v8);
    v9 = v5;
    [(TKPage *)selfCopy dataLoaded:v5 withError:v10];
    objc_storeStrong(&v9, 0);
  }

  else
  {
    [(TKPage *)selfCopy dataLoaded:0 withError:v10];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)dataLoaded:(id)loaded withError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, loaded);
  v23 = 0;
  objc_storeStrong(&v23, error);
  objc_initWeak(&from, selfCopy);
  if (location[0])
  {
    dataObject = selfCopy->_dataObject;
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

- (void)didLoadData:(BOOL)data
{
  [(TKPage *)self willChangeValueForKey:?];
  self->_dataLoading = 0;
  [(TKPage *)self didChangeValueForKey:@"dataLoading"];
  [(TKPage *)self hideLoadingViewController];
  if (data)
  {
    [(TKPage *)self emitTMLSignal:@"dataLoaded" withArguments:0];
  }
}

- (void)showLoadingViewController
{
  selfCopy = self;
  v39[1] = a2;
  if (self->_shouldShowLoading)
  {
    v39[0] = objc_loadWeakRetained(&selfCopy->_loadingViewController);
    WeakRetained = objc_loadWeakRetained(&selfCopy->_weakViewController);
    if (v39[0] || !WeakRetained || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v37 = 1;
    }

    else
    {
      view = [WeakRetained view];
      v13 = +[TKApplication shared];
      newLoadingViewController = [v13 newLoadingViewController];
      v3 = v39[0];
      v39[0] = newLoadingViewController;
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v13);
      if (v39[0])
      {
        [WeakRetained addChildViewController:v39[0]];
        view2 = [v39[0] view];
        [view bounds];
        *&v33 = v4;
        *(&v33 + 1) = v5;
        *&v34 = v6;
        *(&v34 + 1) = v7;
        v31 = v33;
        v32 = v34;
        [view2 setFrame:{v4, v5, v6, v7}];
        [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
        objc_opt_class();
        v30 = (objc_opt_isKindOfClass() ^ 1) & 1;
        [view2 setAutoresizingMask:18];
        mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
        [mEMORY[0x277D75128] statusBarOrientationAnimationDuration];
        v10 = v8 / 2.0;
        MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
        v29 = v10;
        v12 = MEMORY[0x277D75D18];
        v11 = view;
        v21 = MEMORY[0x277D85DD0];
        v22 = -1073741824;
        v23 = 0;
        v24 = __35__TKPage_showLoadingViewController__block_invoke;
        v25 = &unk_2797EE4F0;
        v26 = MEMORY[0x277D82BE0](view);
        v27 = MEMORY[0x277D82BE0](view2);
        v28 = v30 & 1;
        v14 = MEMORY[0x277D85DD0];
        v15 = -1073741824;
        v16 = 0;
        v17 = __35__TKPage_showLoadingViewController__block_invoke_2;
        v18 = &unk_2797EE1F8;
        v19 = MEMORY[0x277D82BE0](v39[0]);
        v20 = MEMORY[0x277D82BE0](WeakRetained);
        [v12 transitionWithView:v11 duration:5243008 options:&v21 animations:&v14 completion:v10];
        objc_storeWeak(&selfCopy->_loadingViewController, v39[0]);
        objc_storeStrong(&v20, 0);
        objc_storeStrong(&v19, 0);
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v26, 0);
        objc_storeStrong(&view2, 0);
        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      objc_storeStrong(&view, 0);
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
  selfCopy = self;
  v22[1] = a2;
  v22[0] = objc_loadWeakRetained(&self->_loadingViewController);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_weakViewController);
  viewIfLoaded = [WeakRetained viewIfLoaded];
  MEMORY[0x277D82BD8](WeakRetained);
  if (v22[0] && viewIfLoaded)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] statusBarOrientationAnimationDuration];
    v4 = v2 / 2.0;
    MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
    v19[1] = *&v4;
    [v22[0] willMoveToParentViewController:?];
    v6 = MEMORY[0x277D75D18];
    v5 = viewIfLoaded;
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
    objc_storeWeak(&selfCopy->_loadingViewController, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(v19, 0);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  objc_storeStrong(&viewIfLoaded, 0);
  objc_storeStrong(v22, 0);
}

uint64_t __35__TKPage_hideLoadingViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];
  return MEMORY[0x277D82BD8](v2);
}

@end