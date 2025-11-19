@interface TKDefaultPage
- (TKDefaultPage)initWithDataRequest:(id)a3;
- (id)createViewController;
- (void)dataLoaded:(id)a3 withError:(id)a4;
- (void)loadChildPage:(id)a3 withError:(id)a4;
@end

@implementation TKDefaultPage

- (TKDefaultPage)initWithDataRequest:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = TKDefaultPage;
  v8 = [(TKPage *)&v6 initWithViewName:@"_"];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    [(TKPage *)v8 setDataRequest:location[0]];
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (id)createViewController
{
  v5 = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(TKContainerViewController);
  [v4[0] setTkPage:v5];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (void)dataLoaded:(id)a3 withError:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __38__TKDefaultPage_dataLoaded_withError___block_invoke;
  v12 = &unk_2797EE1D0;
  v13 = MEMORY[0x277D82BE0](v18);
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

- (void)loadChildPage:(id)a3 withError:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = [(TKPage *)v19 viewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [location[0] objectForKeyedSubscript:@"view"];
    if ([v14 length])
    {
      v13 = [[TKPage alloc] initWithViewName:v14];
      v4 = [(TKPage *)v19 dataRequest];
      [(TKPage *)v13 setDataRequest:?];
      MEMORY[0x277D82BD8](v4);
      [(TKPage *)v13 setData:location[0]];
      v12 = [(TKPage *)v13 viewController];
      [v16 setChildViewController:v12];
      [(TKPage *)v19 didLoadData:1];
      [(TKPage *)v13 didLoadData:1];
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
      v15 = 0;
    }

    else
    {
      v9 = [(TKPage *)v19 viewController];
      v8 = [TKApplicationViewController applicationViewController:?];
      v10 = [v8 handleApplicationControllerError];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      if ((v10 & 1) == 0)
      {
        v7 = +[TKApplication shared];
        v6 = [v17 localizedDescription];
        v5 = [v7 newErrorViewController:?];
        [v16 setChildViewController:?];
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v7);
      }

      [(TKPage *)v19 dataError];
      v15 = 1;
    }

    objc_storeStrong(&v14, 0);
  }

  else
  {
    v15 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

@end