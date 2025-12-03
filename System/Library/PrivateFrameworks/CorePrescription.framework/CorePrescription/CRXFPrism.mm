@interface CRXFPrism
- (BOOL)isPrismEnabledForLocation:(id)location;
- (CRXFPrism)init;
@end

@implementation CRXFPrism

- (CRXFPrism)init
{
  v9.receiver = self;
  v9.super_class = CRXFPrism;
  v2 = [(CRXFPrism *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 pathForResource:@"OcularActivationLocations" ofType:@"json"];
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4];
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:0];
    prismActivationList = v2->_prismActivationList;
    v2->_prismActivationList = v6;
  }

  return v2;
}

- (BOOL)isPrismEnabledForLocation:(id)location
{
  v3 = [(NSDictionary *)self->_prismActivationList objectForKeyedSubscript:location];
  v4 = [v3 objectForKeyedSubscript:@"enabled"];
  v5 = [v4 isEqual:@"YES"];

  return v5;
}

@end