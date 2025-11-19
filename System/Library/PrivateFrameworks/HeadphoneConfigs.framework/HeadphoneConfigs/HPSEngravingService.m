@interface HPSEngravingService
- (BOOL)isEngravingSupported;
- (HPSEngravingService)initWithDevice:(id)a3;
- (void)getEngravedCaseView:(id)a3;
@end

@implementation HPSEngravingService

- (BOOL)isEngravingSupported
{
  v2 = [(BTSDevice *)self->_device classicDevice];
  v3 = [v2 productId];

  return ((v3 - 8212) < 0x11) & (0x114A1u >> (v3 - 20));
}

- (HPSEngravingService)initWithDevice:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HPSEngravingService;
  v6 = [(HPSEngravingService *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [(BTSDevice *)v7->_device classicDevice];
    v9 = [v8 address];
    engravingData = v7->_engravingData;
    v7->_engravingData = v9;
  }

  return v7;
}

- (void)getEngravedCaseView:(id)a3
{
  v4 = a3;
  engravingData = self->_engravingData;
  v6 = [(BTSDevice *)self->_device classicDevice];
  v7 = [v6 productId];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HPSEngravingService_getEngravedCaseView___block_invoke;
  v9[3] = &unk_2796ADB48;
  v10 = v4;
  v8 = v4;
  [_TtC16HeadphoneConfigs20HPSCaseEngravingView getEngravedCaseImage:engravingData productID:v7 completionHandler:v9];
}

void __43__HPSEngravingService_getEngravedCaseView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__HPSEngravingService_getEngravedCaseView___block_invoke_2;
  v5[3] = &unk_2796ADB20;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __43__HPSEngravingService_getEngravedCaseView___block_invoke_2(uint64_t a1)
{
  v3 = (*(*(a1 + 32) + 16))();
  v2 = [v3 description];
  NSLog(&cfstr_HeadphoneEngra.isa, v2);

  (*(*(a1 + 40) + 16))();
}

@end