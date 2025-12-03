@interface TKApplication
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)shared;
- (Class)loadClass:(id)class;
- (TKApplicationDelegate)delegate;
- (id)absoluteURL:(id)l;
- (id)loadObject:(id)object;
- (id)loadPage:(id)page;
- (id)loadPage:(id)page withData:(id)data;
- (id)loadPage:(id)page withDataRequest:(id)request;
- (id)loadPageWithDataRequest:(id)request;
- (id)loadView:(id)view;
- (id)newErrorViewController:(id)controller;
- (id)newLoadingViewController;
- (id)tmlPathForName:(id)name;
- (void)didLoadRepository:(id)repository;
- (void)loadBundle:(id)bundle completion:(id)completion;
@end

@implementation TKApplication

+ (id)shared
{
  selfCopy = self;
  v10 = a2;
  obj = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __23__TKApplication_shared__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  selfCopy2 = self;
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

+ (id)allocWithZone:(_NSZone *)zone
{
  shared = [self shared];

  return shared;
}

- (void)loadBundle:(id)bundle completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bundle);
  v12 = 0;
  objc_storeStrong(&v12, completion);
  [(TKApplication *)selfCopy willChangeValueForKey:?];
  selfCopy->_ready = 0;
  objc_storeStrong(&selfCopy->_repository, 0);
  [(TKApplication *)selfCopy didChangeValueForKey:@"ready"];
  v5 = location[0];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __39__TKApplication_loadBundle_completion___block_invoke;
  v9 = &unk_2797EE538;
  v10 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)didLoadRepository:(id)repository
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, repository);
  [(TKApplication *)selfCopy willChangeValueForKey:?];
  objc_storeStrong(&selfCopy->_repository, location[0]);
  selfCopy->_ready = 1;
  [(TKApplication *)selfCopy didChangeValueForKey:@"ready"];
  objc_storeStrong(location, 0);
}

- (id)loadPageWithDataRequest:(id)request
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v3 = [TKDefaultPage alloc];
  v7 = [(TKDefaultPage *)v3 initWithDataRequest:location[0]];
  viewController = [(TKPage *)v7 viewController];
  [(TKPage *)v7 load];
  v5 = MEMORY[0x277D82BE0](viewController);
  objc_storeStrong(&viewController, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)loadPage:(id)page
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, page);
  v3 = [TKPage alloc];
  v7 = [(TKPage *)v3 initWithViewName:location[0]];
  viewController = [(TKPage *)v7 viewController];
  [(TKPage *)v7 load];
  v5 = MEMORY[0x277D82BE0](viewController);
  objc_storeStrong(&viewController, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)loadPage:(id)page withData:(id)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, page);
  v10 = 0;
  objc_storeStrong(&v10, data);
  v4 = [TKPage alloc];
  v9 = [(TKPage *)v4 initWithViewName:location[0]];
  [(TKPage *)v9 setData:v10];
  viewController = [(TKPage *)v9 viewController];
  [(TKPage *)v9 load];
  v7 = MEMORY[0x277D82BE0](viewController);
  objc_storeStrong(&viewController, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)loadPage:(id)page withDataRequest:(id)request
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, page);
  v10 = 0;
  objc_storeStrong(&v10, request);
  v4 = [TKPage alloc];
  v9 = [(TKPage *)v4 initWithViewName:location[0]];
  [(TKPage *)v9 setDataRequest:v10];
  viewController = [(TKPage *)v9 viewController];
  [(TKPage *)v9 load];
  v7 = MEMORY[0x277D82BE0](viewController);
  objc_storeStrong(&viewController, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)loadView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v9 = +[TKApplication shared];
  repository = [v9 repository];
  v11 = [repository tmlPathForName:location[0]];
  MEMORY[0x277D82BD8](repository);
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

- (id)loadObject:(id)object
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, object);
  v5 = +[TKApplication shared];
  repository = [v5 repository];
  v7 = [repository tmlPathForName:location[0]];
  MEMORY[0x277D82BD8](repository);
  MEMORY[0x277D82BD8](v5);
  v6 = [MEMORY[0x277D82BB8] tmlLoadObjectFromPath:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (Class)loadClass:(id)class
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, class);
  v6 = +[TKApplication shared];
  repository = [v6 repository];
  v7 = [repository tmlPathForName:location[0]];
  MEMORY[0x277D82BD8](repository);
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
    newLoadingViewController = [location[0] newLoadingViewController];
  }

  else
  {
    newLoadingViewController = 0;
  }

  objc_storeStrong(location, 0);
  return newLoadingViewController;
}

- (id)newErrorViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
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

- (id)absoluteURL:(id)l
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  scheme = [location[0] scheme];
  v12 = 0;
  if (![scheme length])
  {
    v12 = selfCopy->_baseURL != 0;
  }

  MEMORY[0x277D82BD8](scheme);
  if (v12)
  {
    v8 = MEMORY[0x277CBEBC0];
    absoluteString = [location[0] absoluteString];
    baseURL = selfCopy->_baseURL;
    v9 = [v8 URLWithString:? relativeToURL:?];
    absoluteURL = [v9 absoluteURL];
    v5 = location[0];
    location[0] = absoluteURL;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](absoluteString);
  }

  v7 = MEMORY[0x277D82BE0](location[0]);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)tmlPathForName:(id)name
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v5 = +[TKApplication shared];
  repository = [v5 repository];
  v6 = [repository tmlPathForName:location[0]];
  MEMORY[0x277D82BD8](repository);
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