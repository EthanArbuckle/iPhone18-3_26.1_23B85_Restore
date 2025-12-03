@interface CLSNatureQueryPerformer
- (BOOL)shouldQueryItemsForRegion:(id)region selectedRegions:(id)regions;
- (CLSNatureQueryPerformer)initWithNatureCache:(id)cache locationCache:(id)locationCache;
@end

@implementation CLSNatureQueryPerformer

- (BOOL)shouldQueryItemsForRegion:(id)region selectedRegions:(id)regions
{
  regionCopy = region;
  v16.receiver = self;
  v16.super_class = CLSNatureQueryPerformer;
  if ([(CLSBusinessItemGenericQueryPerformer *)&v16 shouldQueryItemsForRegion:regionCopy selectedRegions:regions])
  {
    v7 = objc_alloc(MEMORY[0x277CBFBC8]);
    [regionCopy center];
    v9 = v8;
    v11 = v10;
    identifier = [regionCopy identifier];
    v13 = [v7 initWithCenter:identifier radius:v9 identifier:{v11, 1000.0}];

    v14 = [(CLSBusinessCategoryCache *)self->super._businessCategoryCache numberOfBusinessItemsForRegion:v13]< 0x96;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CLSNatureQueryPerformer)initWithNatureCache:(id)cache locationCache:(id)locationCache
{
  v5.receiver = self;
  v5.super_class = CLSNatureQueryPerformer;
  return [(CLSBusinessItemGenericQueryPerformer *)&v5 initWithBusinessCategoryCache:cache locationCache:locationCache];
}

@end