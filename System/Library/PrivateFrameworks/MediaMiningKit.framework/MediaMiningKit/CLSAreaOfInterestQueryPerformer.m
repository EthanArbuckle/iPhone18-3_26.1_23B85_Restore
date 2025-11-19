@interface CLSAreaOfInterestQueryPerformer
- (BOOL)shouldQueryItemsForRegion:(id)a3 selectedRegions:(id)a4;
- (CLSAreaOfInterestQueryPerformer)initWithAOICache:(id)a3 locationCache:(id)a4;
@end

@implementation CLSAreaOfInterestQueryPerformer

- (BOOL)shouldQueryItemsForRegion:(id)a3 selectedRegions:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18.receiver = self;
  v18.super_class = CLSAreaOfInterestQueryPerformer;
  if ([(CLSBusinessItemGenericQueryPerformer *)&v18 shouldQueryItemsForRegion:v6 selectedRegions:a4])
  {
    [(CLSLocationCache *)self->super._locationCache placemarksForLocation:v6];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) areasOfInterest];
          v12 = [v11 count];

          if (v12)
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (CLSAreaOfInterestQueryPerformer)initWithAOICache:(id)a3 locationCache:(id)a4
{
  v5.receiver = self;
  v5.super_class = CLSAreaOfInterestQueryPerformer;
  return [(CLSBusinessItemGenericQueryPerformer *)&v5 initWithBusinessCategoryCache:a3 locationCache:a4];
}

@end