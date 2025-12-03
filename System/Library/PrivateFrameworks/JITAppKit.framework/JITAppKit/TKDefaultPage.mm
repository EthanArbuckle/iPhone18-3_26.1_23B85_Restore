@interface TKDefaultPage
- (TKDefaultPage)initWithDataRequest:(id)request;
- (id)createViewController;
- (void)dataLoaded:(id)loaded withError:(id)error;
- (void)loadChildPage:(id)page withError:(id)error;
@end

@implementation TKDefaultPage

- (TKDefaultPage)initWithDataRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = TKDefaultPage;
  selfCopy = [(TKPage *)&v6 initWithViewName:@"_"];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(TKPage *)selfCopy setDataRequest:location[0]];
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)createViewController
{
  selfCopy = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(TKContainerViewController);
  [v4[0] setTkPage:selfCopy];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (void)dataLoaded:(id)loaded withError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, loaded);
  v16 = 0;
  objc_storeStrong(&v16, error);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __38__TKDefaultPage_dataLoaded_withError___block_invoke;
  v12 = &unk_2797EE1D0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)loadChildPage:(id)page withError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, page);
  v17 = 0;
  objc_storeStrong(&v17, error);
  viewController = [(TKPage *)selfCopy viewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [location[0] objectForKeyedSubscript:@"view"];
    if ([v14 length])
    {
      v13 = [[TKPage alloc] initWithViewName:v14];
      dataRequest = [(TKPage *)selfCopy dataRequest];
      [(TKPage *)v13 setDataRequest:?];
      MEMORY[0x277D82BD8](dataRequest);
      [(TKPage *)v13 setData:location[0]];
      viewController2 = [(TKPage *)v13 viewController];
      [viewController setChildViewController:viewController2];
      [(TKPage *)selfCopy didLoadData:1];
      [(TKPage *)v13 didLoadData:1];
      objc_storeStrong(&viewController2, 0);
      objc_storeStrong(&v13, 0);
      v15 = 0;
    }

    else
    {
      viewController3 = [(TKPage *)selfCopy viewController];
      v8 = [TKApplicationViewController applicationViewController:?];
      handleApplicationControllerError = [v8 handleApplicationControllerError];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](viewController3);
      if ((handleApplicationControllerError & 1) == 0)
      {
        v7 = +[TKApplication shared];
        localizedDescription = [v17 localizedDescription];
        v5 = [v7 newErrorViewController:?];
        [viewController setChildViewController:?];
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](localizedDescription);
        MEMORY[0x277D82BD8](v7);
      }

      [(TKPage *)selfCopy dataError];
      v15 = 1;
    }

    objc_storeStrong(&v14, 0);
  }

  else
  {
    v15 = 1;
  }

  objc_storeStrong(&viewController, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

@end