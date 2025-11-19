@interface CLSNatureQueryPerformer
- (BOOL)shouldQueryItemsForRegion:(id)a3 selectedRegions:(id)a4;
- (CLSNatureQueryPerformer)initWithNatureCache:(id)a3 locationCache:(id)a4;
@end

@implementation CLSNatureQueryPerformer

- (BOOL)shouldQueryItemsForRegion:(id)a3 selectedRegions:(id)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = CLSNatureQueryPerformer;
  if ([(CLSBusinessItemGenericQueryPerformer *)&v16 shouldQueryItemsForRegion:v6 selectedRegions:a4])
  {
    v7 = objc_alloc(MEMORY[0x277CBFBC8]);
    [v6 center];
    v9 = v8;
    v11 = v10;
    v12 = [v6 identifier];
    v13 = [v7 initWithCenter:v12 radius:v9 identifier:{v11, 1000.0}];

    v14 = [(CLSBusinessCategoryCache *)self->super._businessCategoryCache numberOfBusinessItemsForRegion:v13]< 0x96;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CLSNatureQueryPerformer)initWithNatureCache:(id)a3 locationCache:(id)a4
{
  v5.receiver = self;
  v5.super_class = CLSNatureQueryPerformer;
  return [(CLSBusinessItemGenericQueryPerformer *)&v5 initWithBusinessCategoryCache:a3 locationCache:a4];
}

@end