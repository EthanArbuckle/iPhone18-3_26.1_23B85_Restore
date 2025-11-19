@interface FTRegion
- (FTRegion)regionWithID:(id)a3;
- (id)_initWithDictionary:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation FTRegion

- (id)_initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22.receiver = self;
  v22.super_class = FTRegion;
  v6 = [(FTRegion *)&v22 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [p_isa[1] objectForKey:{@"subregions", 0}];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[FTRegion alloc] _initWithDictionary:*(*(&v18 + 1) + 8 * v13)];
          v15 = v14;
          if (v14)
          {
            [v14 _setParentRegion:p_isa];
            [v8 addObject:v15];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      objc_storeStrong(p_isa + 2, v8);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (void)dealloc
{
  [(NSArray *)self->_subRegions makeObjectsPerformSelector:sel__setParentRegion_ withObject:0];
  v3.receiver = self;
  v3.super_class = FTRegion;
  [(FTRegion *)&v3 dealloc];
}

- (FTRegion)regionWithID:(id)a3
{
  v4 = a3;
  v5 = [(FTRegion *)self regionID];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = self;
  }

  else
  {
    v8 = [(FTRegion *)self subRegions];
    v7 = sub_1959554C8(v4, v8);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FTRegion *)self label];
  v5 = [(FTRegion *)self isoCode];
  v6 = [(FTRegion *)self basePhoneNumber];
  v7 = [(FTRegion *)self regionID];
  v8 = [v3 stringWithFormat:@"[FTRegion] Label: %@   ISO: %@    BaseNumber: %@  Region ID: %@", v4, v5, v6, v7];

  return v8;
}

@end