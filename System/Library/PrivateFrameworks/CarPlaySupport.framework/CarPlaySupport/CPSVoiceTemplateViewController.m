@interface CPSVoiceTemplateViewController
- (CPSVoiceTemplateViewController)initWithVoiceTemplate:(id)a3 templateDelegate:(id)a4 templateEnvironment:(id)a5;
- (id)_stateWithIdentifier:(id)a3;
- (id)voiceTemplate;
- (void)_activateStateWithIdentifier:(id)a3;
- (void)_backGestureFired:(id)a3;
- (void)_viewDidLoad;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CPSVoiceTemplateViewController

- (CPSVoiceTemplateViewController)initWithVoiceTemplate:(id)a3 templateDelegate:(id)a4 templateEnvironment:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v5 = v18;
  v18 = 0;
  v14.receiver = v5;
  v14.super_class = CPSVoiceTemplateViewController;
  v13 = [(CPSBaseTemplateViewController *)&v14 initWithTemplate:location[0] templateDelegate:v16 templateEnvironment:v15];
  v18 = v13;
  objc_storeStrong(&v18, v13);
  if (v13)
  {
    v6 = [CPSVoiceView alloc];
    v7 = [(CPSVoiceView *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    titleView = v18->_titleView;
    v18->_titleView = v7;
    MEMORY[0x277D82BD8](titleView);
  }

  v10 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v10;
}

- (id)voiceTemplate
{
  v3 = objc_opt_class();
  v4 = [(CPSBaseTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast(v3, v4);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)_viewDidLoad
{
  v44[4] = *MEMORY[0x277D85DE8];
  v43 = self;
  v42 = a2;
  v41.receiver = self;
  v41.super_class = CPSVoiceTemplateViewController;
  [(CPSBaseTemplateViewController *)&v41 _viewDidLoad];
  v4 = [MEMORY[0x277D75348] tableBackgroundColor];
  v3 = [(CPSVoiceTemplateViewController *)v43 view];
  [v3 setBackgroundColor:v4];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v6 = [(CPSVoiceTemplateViewController *)v43 view];
  v5 = [(CPSVoiceTemplateViewController *)v43 titleView];
  [v6 addSubview:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v8 = [(CPSVoiceTemplateViewController *)v43 titleView];
  v7 = [(CPSVoiceView *)v8 imageView];
  [(UIImageView *)v7 sizeToFit];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = MEMORY[0x277CCAAD0];
  v34 = [(CPSVoiceTemplateViewController *)v43 titleView];
  v33 = [(CPSVoiceView *)v34 topAnchor];
  v32 = [(CPSVoiceTemplateViewController *)v43 view];
  v31 = [v32 safeAreaLayoutGuide];
  v30 = [v31 topAnchor];
  v29 = [v33 constraintEqualToAnchor:?];
  v44[0] = v29;
  v28 = [(CPSVoiceTemplateViewController *)v43 titleView];
  v27 = [(CPSVoiceView *)v28 leadingAnchor];
  v26 = [(CPSVoiceTemplateViewController *)v43 view];
  v25 = [v26 safeAreaLayoutGuide];
  v24 = [v25 leadingAnchor];
  v23 = [v27 constraintEqualToAnchor:?];
  v44[1] = v23;
  v22 = [(CPSVoiceTemplateViewController *)v43 titleView];
  v21 = [(CPSVoiceView *)v22 trailingAnchor];
  v20 = [(CPSVoiceTemplateViewController *)v43 view];
  v19 = [v20 safeAreaLayoutGuide];
  v18 = [v19 trailingAnchor];
  v17 = [v21 constraintEqualToAnchor:?];
  v44[2] = v17;
  v16 = [(CPSVoiceTemplateViewController *)v43 titleView];
  v15 = [(CPSVoiceView *)v16 bottomAnchor];
  v14 = [(CPSVoiceTemplateViewController *)v43 view];
  v13 = [v14 safeAreaLayoutGuide];
  v12 = [v13 bottomAnchor];
  v11 = [v15 constraintEqualToAnchor:?];
  v44[3] = v11;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
  [v9 activateConstraints:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  v2 = objc_alloc(MEMORY[0x277D751E0]);
  v36 = [v2 initWithBarButtonSystemItem:1 target:v43 action:sel__dismissTemplateViewController];
  v35 = [(CPSVoiceTemplateViewController *)v43 navigationItem];
  [v35 setLeftBarButtonItem:v36];
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  v39 = [(CPSVoiceTemplateViewController *)v43 voiceTemplate];
  v38 = [v39 voiceControlStates];
  v37 = [v38 firstObject];
  location = [v37 identifier];
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  if (location)
  {
    [(CPSVoiceTemplateViewController *)v43 _activateStateWithIdentifier:location];
  }

  objc_storeStrong(&location, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7.receiver = self;
  v7.super_class = CPSVoiceTemplateViewController;
  [(CPSBaseTemplateViewController *)&v7 viewDidAppear:a3];
  v3 = objc_alloc(MEMORY[0x277D75B80]);
  v6 = [v3 initWithTarget:v10 action:sel__backGestureFired_];
  [v6 setAllowedPressTypes:&unk_2855C4F28];
  v5 = [(CPSVoiceTemplateViewController *)v10 navigationController];
  v4 = [v5 view];
  [v4 addGestureRecognizer:v6];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  [(CPSVoiceTemplateViewController *)v10 setBackGestureRecognizer:v6];
  objc_storeStrong(&v6, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = CPSVoiceTemplateViewController;
  [(CPSBaseTemplateViewController *)&v5 viewWillAppear:a3];
  v4 = [(CPSVoiceTemplateViewController *)v8 titleView];
  v3 = [(CPSVoiceView *)v4 imageView];
  [(UIImageView *)v3 startAnimating];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = CPSVoiceTemplateViewController;
  [(CPSBaseTemplateViewController *)&v5 viewWillDisappear:a3];
  v4 = [(CPSVoiceTemplateViewController *)v8 titleView];
  v3 = [(CPSVoiceView *)v4 imageView];
  [(UIImageView *)v3 stopAnimating];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
}

- (void)_backGestureFired:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] state] == 3)
  {
    [(CPSBaseTemplateViewController *)v4 _dismissTemplateViewController];
  }

  objc_storeStrong(location, 0);
}

- (id)_stateWithIdentifier:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [(CPSVoiceTemplateViewController *)v18 voiceTemplate];
  v7 = [v8 voiceControlStates];
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __55__CPSVoiceTemplateViewController__stateWithIdentifier___block_invoke;
  v14 = &unk_278D910B0;
  v15 = MEMORY[0x277D82BE0](location[0]);
  v9 = [v7 indexOfObjectPassingTest:&v10];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v16 = v9;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    v6 = [(CPSVoiceTemplateViewController *)v18 voiceTemplate];
    v5 = [v6 voiceControlStates];
    v19 = [v5 objectAtIndexedSubscript:v16];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
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

- (void)_activateStateWithIdentifier:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __63__CPSVoiceTemplateViewController__activateStateWithIdentifier___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](v14);
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