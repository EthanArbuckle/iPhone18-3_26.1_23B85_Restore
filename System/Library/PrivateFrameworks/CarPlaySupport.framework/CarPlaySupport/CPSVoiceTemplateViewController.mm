@interface CPSVoiceTemplateViewController
- (CPSVoiceTemplateViewController)initWithVoiceTemplate:(id)template templateDelegate:(id)delegate templateEnvironment:(id)environment;
- (id)_stateWithIdentifier:(id)identifier;
- (id)voiceTemplate;
- (void)_activateStateWithIdentifier:(id)identifier;
- (void)_backGestureFired:(id)fired;
- (void)_viewDidLoad;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CPSVoiceTemplateViewController

- (CPSVoiceTemplateViewController)initWithVoiceTemplate:(id)template templateDelegate:(id)delegate templateEnvironment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v16 = 0;
  objc_storeStrong(&v16, delegate);
  v15 = 0;
  objc_storeStrong(&v15, environment);
  v5 = selfCopy;
  selfCopy = 0;
  v14.receiver = v5;
  v14.super_class = CPSVoiceTemplateViewController;
  v13 = [(CPSBaseTemplateViewController *)&v14 initWithTemplate:location[0] templateDelegate:v16 templateEnvironment:v15];
  selfCopy = v13;
  objc_storeStrong(&selfCopy, v13);
  if (v13)
  {
    v6 = [CPSVoiceView alloc];
    v7 = [(CPSVoiceView *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    titleView = selfCopy->_titleView;
    selfCopy->_titleView = v7;
    MEMORY[0x277D82BD8](titleView);
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (id)voiceTemplate
{
  v3 = objc_opt_class();
  associatedTemplate = [(CPSBaseTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast(v3, associatedTemplate);
  MEMORY[0x277D82BD8](associatedTemplate);

  return v5;
}

- (void)_viewDidLoad
{
  v44[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v42 = a2;
  v41.receiver = self;
  v41.super_class = CPSVoiceTemplateViewController;
  [(CPSBaseTemplateViewController *)&v41 _viewDidLoad];
  tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
  view = [(CPSVoiceTemplateViewController *)selfCopy view];
  [view setBackgroundColor:tableBackgroundColor];
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](tableBackgroundColor);
  view2 = [(CPSVoiceTemplateViewController *)selfCopy view];
  titleView = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  [view2 addSubview:?];
  MEMORY[0x277D82BD8](titleView);
  MEMORY[0x277D82BD8](view2);
  titleView2 = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  imageView = [(CPSVoiceView *)titleView2 imageView];
  [(UIImageView *)imageView sizeToFit];
  MEMORY[0x277D82BD8](imageView);
  MEMORY[0x277D82BD8](titleView2);
  v9 = MEMORY[0x277CCAAD0];
  titleView3 = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  topAnchor = [(CPSVoiceView *)titleView3 topAnchor];
  view3 = [(CPSVoiceTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:?];
  v44[0] = v29;
  titleView4 = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  leadingAnchor = [(CPSVoiceView *)titleView4 leadingAnchor];
  view4 = [(CPSVoiceTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:?];
  v44[1] = v23;
  titleView5 = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  trailingAnchor = [(CPSVoiceView *)titleView5 trailingAnchor];
  view5 = [(CPSVoiceTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:?];
  v44[2] = v17;
  titleView6 = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  bottomAnchor = [(CPSVoiceView *)titleView6 bottomAnchor];
  view6 = [(CPSVoiceTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:?];
  v44[3] = v11;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
  [v9 activateConstraints:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](view6);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](titleView6);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](titleView5);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](titleView4);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](titleView3);
  v2 = objc_alloc(MEMORY[0x277D751E0]);
  v36 = [v2 initWithBarButtonSystemItem:1 target:selfCopy action:sel__dismissTemplateViewController];
  navigationItem = [(CPSVoiceTemplateViewController *)selfCopy navigationItem];
  [navigationItem setLeftBarButtonItem:v36];
  MEMORY[0x277D82BD8](navigationItem);
  MEMORY[0x277D82BD8](v36);
  voiceTemplate = [(CPSVoiceTemplateViewController *)selfCopy voiceTemplate];
  voiceControlStates = [voiceTemplate voiceControlStates];
  firstObject = [voiceControlStates firstObject];
  location = [firstObject identifier];
  MEMORY[0x277D82BD8](firstObject);
  MEMORY[0x277D82BD8](voiceControlStates);
  MEMORY[0x277D82BD8](voiceTemplate);
  if (location)
  {
    [(CPSVoiceTemplateViewController *)selfCopy _activateStateWithIdentifier:location];
  }

  objc_storeStrong(&location, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v9 = a2;
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = CPSVoiceTemplateViewController;
  [(CPSBaseTemplateViewController *)&v7 viewDidAppear:appear];
  v3 = objc_alloc(MEMORY[0x277D75B80]);
  v6 = [v3 initWithTarget:selfCopy action:sel__backGestureFired_];
  [v6 setAllowedPressTypes:&unk_2855C4F28];
  navigationController = [(CPSVoiceTemplateViewController *)selfCopy navigationController];
  view = [navigationController view];
  [view addGestureRecognizer:v6];
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](navigationController);
  [(CPSVoiceTemplateViewController *)selfCopy setBackGestureRecognizer:v6];
  objc_storeStrong(&v6, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = CPSVoiceTemplateViewController;
  [(CPSBaseTemplateViewController *)&v5 viewWillAppear:appear];
  titleView = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  imageView = [(CPSVoiceView *)titleView imageView];
  [(UIImageView *)imageView startAnimating];
  MEMORY[0x277D82BD8](imageView);
  MEMORY[0x277D82BD8](titleView);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v7 = a2;
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = CPSVoiceTemplateViewController;
  [(CPSBaseTemplateViewController *)&v5 viewWillDisappear:disappear];
  titleView = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  imageView = [(CPSVoiceView *)titleView imageView];
  [(UIImageView *)imageView stopAnimating];
  MEMORY[0x277D82BD8](imageView);
  MEMORY[0x277D82BD8](titleView);
}

- (void)_backGestureFired:(id)fired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fired);
  if ([location[0] state] == 3)
  {
    [(CPSBaseTemplateViewController *)selfCopy _dismissTemplateViewController];
  }

  objc_storeStrong(location, 0);
}

- (id)_stateWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  voiceTemplate = [(CPSVoiceTemplateViewController *)selfCopy voiceTemplate];
  voiceControlStates = [voiceTemplate voiceControlStates];
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __55__CPSVoiceTemplateViewController__stateWithIdentifier___block_invoke;
  v14 = &unk_278D910B0;
  v15 = MEMORY[0x277D82BE0](location[0]);
  v9 = [voiceControlStates indexOfObjectPassingTest:&v10];
  MEMORY[0x277D82BD8](voiceControlStates);
  MEMORY[0x277D82BD8](voiceTemplate);
  v16 = v9;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    voiceTemplate2 = [(CPSVoiceTemplateViewController *)selfCopy voiceTemplate];
    voiceControlStates2 = [voiceTemplate2 voiceControlStates];
    v19 = [voiceControlStates2 objectAtIndexedSubscript:v16];
    MEMORY[0x277D82BD8](voiceControlStates2);
    MEMORY[0x277D82BD8](voiceTemplate2);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  v3 = v19;

  return v3;
}

uint64_t __55__CPSVoiceTemplateViewController__stateWithIdentifier___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [location[0] identifier];
  v5 = [v4 isEqualToString:a1[4]];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)_activateStateWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __63__CPSVoiceTemplateViewController__activateStateWithIdentifier___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __63__CPSVoiceTemplateViewController__activateStateWithIdentifier___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = [*(a1 + 32) _stateWithIdentifier:*(a1 + 40)];
  if (location[0])
  {
    [*(a1 + 32) lastVoiceTemplateStateChangeTime];
    if (v1 <= 0.0 || ([MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate], v12 = v2, objc_msgSend(*(a1 + 32), "lastVoiceTemplateStateChangeTime"), v12 - v3 >= 0.5))
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      [*(a1 + 32) setLastVoiceTemplateStateChangeTime:?];
      v6 = [*(a1 + 32) titleView];
      v5 = [v6 titleLabel];
      v4 = [location[0] titleVariants];
      [v5 setTextVariants:?];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      v9 = [*(a1 + 32) titleView];
      v8 = [v9 imageView];
      v7 = [location[0] image];
      [v8 setImage:?];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      v11 = [*(a1 + 32) titleView];
      v10 = [v11 imageView];
      [v10 setAnimationRepeatCount:{(objc_msgSend(location[0], "repeats") & 1) == 0}];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
    }
  }

  objc_storeStrong(location, 0);
}

@end