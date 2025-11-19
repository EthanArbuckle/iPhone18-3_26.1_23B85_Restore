@interface CPSFullScreenAlertViewController
- (CPAlertTemplate)alert;
- (CPSFullScreenAlertViewController)initWithAlert:(id)a3 alertDelegate:(id)a4 templateEnvironment:(id)a5;
- (id)_titleFont;
- (void)_viewDidLoad;
- (void)didSelectButton:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CPSFullScreenAlertViewController

- (CPSFullScreenAlertViewController)initWithAlert:(id)a3 alertDelegate:(id)a4 templateEnvironment:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v5 = v15;
  v15 = 0;
  v11.receiver = v5;
  v11.super_class = CPSFullScreenAlertViewController;
  v10 = [(CPSBaseTemplateViewController *)&v11 initWithTemplate:location[0] templateDelegate:v13 templateEnvironment:v12];
  v15 = v10;
  objc_storeStrong(&v15, v10);
  if (v10)
  {
    objc_storeStrong(&v15->_alertButtons, MEMORY[0x277CBEBF8]);
  }

  v7 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

- (CPAlertTemplate)alert
{
  v3 = objc_opt_class();
  v4 = [(CPSBaseTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast_21(v3, v4);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)_viewDidLoad
{
  v73[9] = *MEMORY[0x277D85DE8];
  v72 = self;
  v71 = a2;
  v70.receiver = self;
  v70.super_class = CPSFullScreenAlertViewController;
  [(CPSBaseTemplateViewController *)&v70 _viewDidLoad];
  v69 = [(CPSFullScreenAlertViewController *)v72 view];
  v8 = v69;
  v9 = [MEMORY[0x277D75348] tableBackgroundColor];
  [v8 setBackgroundColor:?];
  MEMORY[0x277D82BD8](v9);
  v68[1] = 1;
  v2 = [CPSAbridgableLabel alloc];
  v68[0] = [(CPSAbridgableLabel *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [v68[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = v68[0];
  v11 = [(CPSFullScreenAlertViewController *)v72 _titleFont];
  [v10 setFont:?];
  *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  [v68[0] setTextAlignment:{1, v3}];
  v12 = v68[0];
  v13 = [MEMORY[0x277D75348] labelColor];
  [v12 setTextColor:?];
  *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  [v68[0] setNumberOfLines:{4, v4}];
  v14 = v68[0];
  v16 = [(CPSFullScreenAlertViewController *)v72 alert];
  v15 = [(CPAlertTemplate *)v16 titleVariants];
  [v14 setTextVariants:?];
  MEMORY[0x277D82BD8](v15);
  *&v5 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  [v69 addSubview:{v68[0], v5}];
  v67 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v67 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v67 setDistribution:1];
  [v67 setAxis:0];
  [v67 setSpacing:20.0];
  [v69 addSubview:v67];
  v18 = [(CPSFullScreenAlertViewController *)v72 alert];
  v17 = [(CPAlertTemplate *)v18 actions];
  v64[1] = MEMORY[0x277D85DD0];
  v64[2] = 3221225472;
  v64[3] = __48__CPSFullScreenAlertViewController__viewDidLoad__block_invoke;
  v64[4] = &unk_278D92050;
  v65 = MEMORY[0x277D82BE0](v72);
  v66 = MEMORY[0x277D82BE0](v67);
  [(NSArray *)v17 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v64[0] = objc_alloc_init(MEMORY[0x277D756D0]);
  v19 = [(CPSFullScreenAlertViewController *)v72 view];
  [v19 addLayoutGuide:v64[0]];
  *&v6 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v62 = [v64[0] heightAnchor];
  v61 = [(CPSFullScreenAlertViewController *)v72 view];
  v60 = [v61 safeAreaLayoutGuide];
  v59 = [v60 heightAnchor];
  v58 = [v62 constraintEqualToAnchor:0.15 multiplier:?];
  v73[0] = v58;
  v57 = [v64[0] topAnchor];
  v56 = [(CPSFullScreenAlertViewController *)v72 view];
  v55 = [v56 safeAreaLayoutGuide];
  v54 = [v55 topAnchor];
  v53 = [v57 constraintEqualToAnchor:?];
  v73[1] = v53;
  v52 = [v68[0] topAnchor];
  v51 = [v64[0] bottomAnchor];
  v50 = [v52 constraintEqualToAnchor:?];
  v73[2] = v50;
  v49 = [v68[0] leftAnchor];
  v48 = [(CPSFullScreenAlertViewController *)v72 view];
  v47 = [v48 safeAreaLayoutGuide];
  v46 = [v47 leftAnchor];
  v45 = [v49 constraintEqualToAnchor:12.0 constant:?];
  v73[3] = v45;
  v44 = [v68[0] rightAnchor];
  v43 = [(CPSFullScreenAlertViewController *)v72 view];
  v42 = [v43 safeAreaLayoutGuide];
  v41 = [v42 rightAnchor];
  v40 = [v44 constraintEqualToAnchor:-12.0 constant:?];
  v73[4] = v40;
  v39 = [v67 bottomAnchor];
  v38 = [(CPSFullScreenAlertViewController *)v72 view];
  v37 = [v38 safeAreaLayoutGuide];
  v36 = [v37 bottomAnchor];
  v35 = [v39 constraintEqualToAnchor:-24.0 constant:?];
  v73[5] = v35;
  v34 = [v67 centerXAnchor];
  v33 = [(CPSFullScreenAlertViewController *)v72 view];
  v32 = [v33 safeAreaLayoutGuide];
  v31 = [v32 centerXAnchor];
  v30 = [v34 constraintEqualToAnchor:?];
  v73[6] = v30;
  v29 = [v67 leftAnchor];
  v28 = [(CPSFullScreenAlertViewController *)v72 view];
  v27 = [v28 safeAreaLayoutGuide];
  v26 = [v27 leftAnchor];
  v25 = [v29 constraintGreaterThanOrEqualToAnchor:12.0 constant:?];
  v73[7] = v25;
  v24 = [v67 rightAnchor];
  v23 = [(CPSFullScreenAlertViewController *)v72 view];
  v22 = [v23 safeAreaLayoutGuide];
  v21 = [v22 rightAnchor];
  v20 = [v24 constraintLessThanOrEqualToAnchor:-12.0 constant:?];
  v73[8] = v20;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:9];
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
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v61);
  *&v7 = MEMORY[0x277D82BD8](v62).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v63, v7}];
  objc_storeStrong(&v63, 0);
  objc_storeStrong(v64, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(v68, 0);
  objc_storeStrong(&v69, 0);
}

void __48__CPSFullScreenAlertViewController__viewDidLoad__block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18[3] = a3;
  v18[2] = a4;
  v18[1] = a1;
  v18[0] = [CPSAlertButton buttonWithCPAlertAction:location[0]];
  [v18[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18[0] setDelegate:a1[4]];
  v10 = v18[0];
  v15 = [v18[0] widthAnchor];
  v14 = [v15 constraintEqualToConstant:241.0];
  v20[0] = v14;
  v13 = [v18[0] heightAnchor];
  v12 = [v13 constraintEqualToConstant:40.0];
  v20[1] = v12;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [v10 addConstraints:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  *&v4 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  [a1[5] addArrangedSubview:{v18[0], v4}];
  v17 = [a1[4] alertButtons];
  v5 = [v17 arrayByAddingObject:v18[0]];
  v6 = (a1[4] + 1048);
  v7 = *v6;
  *v6 = v5;
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v17);
  objc_storeStrong(v18, 0);
  objc_storeStrong(location, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = CPSFullScreenAlertViewController;
  [(CPSBaseTemplateViewController *)&v4 viewWillAppear:a3];
  v3 = [(CPSFullScreenAlertViewController *)v7 navigationController];
  [v3 setNavigationBarHidden:1];
  MEMORY[0x277D82BD8](v3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = CPSFullScreenAlertViewController;
  [(CPSBaseTemplateViewController *)&v4 viewWillDisappear:a3];
  v3 = [(CPSFullScreenAlertViewController *)v7 navigationController];
  [v3 setNavigationBarHidden:0];
  MEMORY[0x277D82BD8](v3);
}

- (id)_titleFont
{
  v18[1] = *MEMORY[0x277D85DE8];
  v14[2] = self;
  v14[1] = a2;
  v7 = MEMORY[0x277D74310];
  v6 = *MEMORY[0x277D76A20];
  v8 = [(CPSFullScreenAlertViewController *)self traitCollection];
  v14[0] = [v7 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](v8);
  v17 = *MEMORY[0x277D74430];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v18[0] = v9;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:?];
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = v14[0];
  v15 = *MEMORY[0x277D74380];
  v16 = v13;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:{1, v2}];
  v3 = [v10 fontDescriptorByAddingAttributes:?];
  v4 = v14[0];
  v14[0] = v3;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v11);
  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v14[0] size:0.0];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);

  return v12;
}

- (void)didSelectButton:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_opt_class();
  v9 = CPSSafeCast_21(v3, location[0]);
  v8 = [v9 identifier];
  v6 = [(CPSBaseTemplateViewController *)v11 templateDelegate];
  v7 = [(CPTemplateDelegate *)v6 conformsToProtocol:&unk_28562C040];
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    v5 = [(CPSBaseTemplateViewController *)v11 templateDelegate];
    [(CPTemplateDelegate *)v5 handleAlertActionForIdentifier:v8];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end