@interface MKMapCamera(CPSUtilities)
+ (id)_CPS_cameraForRegion:()CPSUtilities withSize:;
@end

@implementation MKMapCamera(CPSUtilities)

+ (id)_CPS_cameraForRegion:()CPSUtilities withSize:
{
  v22 = a3;
  v23 = a4.n128_u64[0];
  v24 = a5.n128_u64[0];
  v25 = a6.n128_u64[0];
  v20 = a7;
  v21 = a8;
  selfCopy = self;
  v18 = a2;
  v14 = MEMORY[0x245D2A010](*&a3, a4, a5, a6);
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v13 = [MEMORY[0x277CD4E58] _cameraLookingAtMapRect:v14 forViewSize:{v8, v9, v10, v20, v21}];
  v12 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);

  return v12;
}

@end