@interface CPSBannerView
- (CPSBannerView)initWithBannerItem:(id)a3;
- (void)applicationIconImageWithCompletion:(id)a3;
- (void)updateBannerWithBannerItem:(id)a3;
@end

@implementation CPSBannerView

- (CPSBannerView)initWithBannerItem:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v16;
  v16 = 0;
  v14.receiver = v3;
  v14.super_class = CPSBannerView;
  v16 = [(CPSBannerView *)&v14 init];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    objc_storeStrong(&v16->_bannerItem, location[0]);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INTERACTIVE, 0);
    *&v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.carplaysupport.CPSBannerView-%p", v4, v16];
    v5 = v12;
    v6 = [v12 UTF8String];
    v7 = dispatch_queue_create(v6, v13);
    iconImageQueue = v16->_iconImageQueue;
    v16->_iconImageQueue = v7;
    MEMORY[0x277D82BD8](iconImageQueue);
    MEMORY[0x277D82BD8](v12);
    objc_storeStrong(&v13, 0);
  }

  v10 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v10;
}

- (void)updateBannerWithBannerItem:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSBannerView *)v4 setBannerItem:location[0]];
  objc_storeStrong(location, 0);
}

- (void)applicationIconImageWithCompletion:(id)a3
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  v10 = [(CPSBannerView *)v25 traitCollection];
  v22 = [v10 objectForTrait:objc_opt_class()];
  *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v22)
  {
    v9 = [(CPSBannerView *)v25 traitCollection];
    v21 = [v9 userInterfaceStyle] == 2;
    v23 = [v22 iconServicesAppearanceUsingDarkInterfaceStyle:{v21, MEMORY[0x277D82BD8](v9).n128_f64[0]}];
  }

  v20 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:{*MEMORY[0x277D1B208], v3}];
  [v20 setAppearance:v23];
  v5 = objc_alloc(MEMORY[0x277D1B1A8]);
  v7 = [(CPSBannerView *)v25 bannerItem];
  v6 = [(CPSBannerItem *)v7 bundleIdentifier];
  v19 = [v5 initWithBundleIdentifier:?];
  MEMORY[0x277D82BD8](v6);
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  queue = [(CPSBannerView *)v25 iconImageQueue];
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __52__CPSBannerView_applicationIconImageWithCompletion___block_invoke;
  v15 = &unk_278D91DC0;
  v16 = MEMORY[0x277D82BE0](v19);
  v17 = MEMORY[0x277D82BE0](v20);
  v18 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v11);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

void __52__CPSBannerView_applicationIconImageWithCompletion___block_invoke(uint64_t a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v8[0] = [*(a1 + 32) prepareImageForDescriptor:*(a1 + 40)];
  v5 = 0;
  if (v8[0])
  {
    v2 = MEMORY[0x277D755B8];
    v3 = [v8[0] CGImage];
    [v8[0] scale];
    v6 = [v2 imageWithCGImage:v3 scale:0 orientation:?];
    v5 = 1;
    v1 = MEMORY[0x277D82BE0](v6);
  }

  else
  {
    v1 = MEMORY[0x277D82BE0](0);
  }

  v7 = v1;
  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  (*(*(a1 + 48) + 16))();
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);
}

@end