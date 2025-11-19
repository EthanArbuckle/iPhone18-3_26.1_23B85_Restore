@interface TKApplication
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)shared;
- (Class)loadClass:(id)a3;
- (TKApplicationDelegate)delegate;
- (id)absoluteURL:(id)a3;
- (id)loadObject:(id)a3;
- (id)loadPage:(id)a3;
- (id)loadPage:(id)a3 withData:(id)a4;
- (id)loadPage:(id)a3 withDataRequest:(id)a4;
- (id)loadPageWithDataRequest:(id)a3;
- (id)loadView:(id)a3;
- (id)newErrorViewController:(id)a3;
- (id)newLoadingViewController;
- (id)tmlPathForName:(id)a3;
- (void)didLoadRepository:(id)a3;
- (void)loadBundle:(id)a3 completion:(id)a4;
@end

@implementation TKApplication

+ (id)shared
{
  v11 = a1;
  v10 = a2;
  obj = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __23__TKApplication_shared__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  v9 = a1;
  v13 = &shared_onceToken_0;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = shared_shared;

  return v2;
}

uint64_t __23__TKApplication_shared__block_invoke(uint64_t a1)
{
  v6 = a1;
  v5 = a1;
  v4.receiver = *(a1 + 32);
  v4.super_class = &OBJC_METACLASS___TKApplication;
  v1 = [objc_msgSendSuper2(&v4 allocWithZone_];
  v2 = shared_shared;
  shared_shared = v1;
  MEMORY[0x277D82BD8](v2);
  +[TKDefaultImageServices setup];
  return [MEMORY[0x277D73400] setExceptionHandlerBlock:&__block_literal_global_5];
}

void __23__TKApplication_shared__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSLog(&cfstr_JitappkitExcep.isa, location[0]);
  objc_storeStrong(location, 0);
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [a1 shared];

  return v3;
}

- (void)loadBundle:(id)a3 completion:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  [(TKApplication *)v14 willChangeValueForKey:?];
  v14->_ready = 0;
  objc_storeStrong(&v14->_repository, 0);
  [(TKApplication *)v14 didChangeValueForKey:@"ready"];
  v5 = location[0];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __39__TKApplication_loadBundle_completion___block_invoke;
  v9 = &unk_2797EE538;
  v10 = MEMORY[0x277D82BE0](v14);
  v11 = MEMORY[0x277D82BE0](v12);
  [TKRepository loadWithURL:v5 completion:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void __39__TKApplication_loadBundle_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (location[0])
  {
    [*(a1 + 32) didLoadRepository:location[0]];
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)didLoadRepository:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(TKApplication *)v4 willChangeValueForKey:?];
  objc_storeStrong(&v4->_repository, location[0]);
  v4->_ready = 1;
  [(TKApplication *)v4 didChangeValueForKey:@"ready"];
  objc_storeStrong(location, 0);
}

- (id)loadPageWithDataRequest:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [TKDefaultPage alloc];
  v7 = [(TKDefaultPage *)v3 initWithDataRequest:location[0]];
  v6 = [(TKPage *)v7 viewController];
  [(TKPage *)v7 load];
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)loadPage:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [TKPage alloc];
  v7 = [(TKPage *)v3 initWithViewName:location[0]];
  v6 = [(TKPage *)v7 viewController];
  [(TKPage *)v7 load];
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)loadPage:(id)a3 withData:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = [TKPage alloc];
  v9 = [(TKPage *)v4 initWithViewName:location[0]];
  [(TKPage *)v9 setData:v10];
  v8 = [(TKPage *)v9 viewController];
  [(TKPage *)v9 load];
  v7 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)loadPage:(id)a3 withDataRequest:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = [TKPage alloc];
  v9 = [(TKPage *)v4 initWithViewName:location[0]];
  [(TKPage *)v9 setDataRequest:v10];
  v8 = [(TKPage *)v9 viewController];
  [(TKPage *)v9 load];
  v7 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)loadView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = +[TKApplication shared];
  v8 = [v9 repository];
  v11 = [v8 tmlPathForName:location[0]];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  if ([v11 length])
  {
    v13 = [MEMORY[0x277D75D18] tmlLoadViewFromPath:v11];
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x277D756B8]);
    v10 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v10 setNumberOfLines:0];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v10 setFont:?];
    MEMORY[0x277D82BD8](v6);
    [v10 setTextAlignment:1];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"View not found: %@", location[0]];
    [v10 setText:?];
    MEMORY[0x277D82BD8](v7);
    v13 = MEMORY[0x277D82BE0](v10);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  v4 = v13;

  return v4;
}

- (id)loadObject:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = +[TKApplication shared];
  v4 = [v5 repository];
  v7 = [v4 tmlPathForName:location[0]];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  v6 = [MEMORY[0x277D82BB8] tmlLoadObjectFromPath:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (Class)loadClass:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = +[TKApplication shared];
  v5 = [v6 repository];
  v7 = [v5 tmlPathForName:location[0]];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  if ([v7 length])
  {
    v9 = [MEMORY[0x277D733F8] createClassFromPath:v7];
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

- (id)newLoadingViewController
{
  location[2] = self;
  location[1] = a2;
  location[0] = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [location[0] newLoadingViewController];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4;
}

- (id)newErrorViewController:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  WeakRetained = objc_loadWeakRetained(&v6->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained newErrorViewController:location[0]];
  }

  else
  {
    v7 = [TKErrorViewController viewControllerForMessage:location[0]];
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)absoluteURL:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [location[0] scheme];
  v12 = 0;
  if (![v11 length])
  {
    v12 = v14->_baseURL != 0;
  }

  MEMORY[0x277D82BD8](v11);
  if (v12)
  {
    v8 = MEMORY[0x277CBEBC0];
    v10 = [location[0] absoluteString];
    baseURL = v14->_baseURL;
    v9 = [v8 URLWithString:? relativeToURL:?];
    v4 = [v9 absoluteURL];
    v5 = location[0];
    location[0] = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
  }

  v7 = MEMORY[0x277D82BE0](location[0]);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)tmlPathForName:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = +[TKApplication shared];
  v4 = [v5 repository];
  v6 = [v4 tmlPathForName:location[0]];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);

  return v6;
}

- (TKApplicationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end