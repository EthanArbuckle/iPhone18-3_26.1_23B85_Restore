@interface CLSBusinessItem
+ (double)_defaultRadiusForCategories:(id)a3;
+ (id)_businessCategoriesFromGeoMapItems:(id)a3;
+ (id)_regionFromMapItem:(id)a3;
- (BOOL)isEnriched;
- (CLSBusinessItem)initWithCoder:(id)a3;
- (CLSBusinessItem)initWithName:(id)a3 region:(id)a4 categories:(id)a5;
- (id)description;
- (id)initFromMapItem:(id)a3 isoCountryCode:(id)a4 categoryOnly:(BOOL)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLSBusinessItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = self->_name;
  muid = self->_muid;
  venueCapacity = self->_venueCapacity;
  v7 = [(NSArray *)self->_categories flattenWithSeparator:@", "];
  region = self->_region;
  v9 = [(NSArray *)self->_businessCategories flattenWithSeparator:@", "];
  v10 = [v3 stringWithFormat:@"Business Item: name:[%@] muid:[%lu] venueCapacity:[%lu] categories:[%@] region:[%@] businessCategories:[%@]", name, muid, venueCapacity, v7, region, v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  cached = self->_cached;
  v5 = a3;
  [v5 encodeBool:cached forKey:@"cached"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_region forKey:@"region"];
  [v5 encodeObject:self->_categories forKey:@"categories"];
  [v5 encodeObject:self->_businessCategories forKey:@"businessCategories"];
  [v5 encodeInt64:self->_muid forKey:@"muid"];
  [v5 encodeInteger:self->_venueCapacity forKey:@"venueCapacity"];
}

- (CLSBusinessItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CLSBusinessItem *)self init];
  if (v5)
  {
    v5->_cached = [v4 decodeBoolForKey:@"cached"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    region = v5->_region;
    v5->_region = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"categories"];
    categories = v5->_categories;
    v5->_categories = v13;

    v5->_muid = [v4 decodeInt64ForKey:@"muid"];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"businessCategories"];
    businessCategories = v5->_businessCategories;
    v5->_businessCategories = v18;

    v5->_venueCapacity = [v4 decodeIntegerForKey:@"venueCapacity"];
  }

  return v5;
}

- (BOOL)isEnriched
{
  v2 = [(CLSBusinessItem *)self name];
  v3 = [v2 length] != 0;

  return v3;
}

- (CLSBusinessItem)initWithName:(id)a3 region:(id)a4 categories:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CLSBusinessItem;
  v12 = [(CLSBusinessItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_cached = 0;
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_region, a4);
    objc_storeStrong(&v13->_categories, a5);
  }

  return v13;
}

- (id)initFromMapItem:(id)a3 isoCountryCode:(id)a4 categoryOnly:(BOOL)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 _hasMUID])
  {
    v35.receiver = self;
    v35.super_class = CLSBusinessItem;
    v10 = [(CLSBusinessItem *)&v35 init];
    if (v10)
    {
      v11 = [v8 spatialMappedCategories];
      v12 = [objc_opt_class() _regionFromMapItem:v8];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
        region = v10->_region;
        v10->_region = v14;
      }

      else
      {
        [objc_opt_class() _defaultRadiusForCategories:v11];
        v18 = v17;
        [v8 centerCoordinate];
        v20 = v19;
        v22 = v21;
        v23 = objc_alloc(MEMORY[0x277CBFBC8]);
        v24 = CLLocationCoordinate2DMake(v20, v22);
        region = [MEMORY[0x277CCAD78] UUID];
        v25 = [region UUIDString];
        v26 = [v23 initWithCenter:v25 radius:v24.latitude identifier:{v24.longitude, v18}];
        v27 = v10->_region;
        v10->_region = v26;
      }

      objc_storeStrong(&v10->_isoCountryCode, a4);
      v28 = [MEMORY[0x277D3AD60] currentRevGeoProvider];
      geoServiceProvider = v10->_geoServiceProvider;
      v10->_geoServiceProvider = v28;

      v10->_cached = 0;
      objc_storeStrong(&v10->_categories, v11);
      v10->_muid = [v8 _muid];
      if (!a5)
      {
        v10->_venueCapacity = [v8 venueCapacity];
        v30 = [v8 name];
        name = v10->_name;
        v10->_name = v30;

        v32 = [objc_opt_class() _businessCategoriesFromGeoMapItems:v8];
        businessCategories = v10->_businessCategories;
        v10->_businessCategories = v32;
      }
    }

    self = v10;
    v16 = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v37 = v8;
      _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot create BusinessItem from MapItem %{private}@ with no MUID", buf, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

+ (id)_businessCategoriesFromGeoMapItems:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = v3;
  v5 = [v3 _place];
  v6 = [v5 business];

  obj = v6;
  v26 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v26)
  {
    v25 = *v37;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        if ([v8 localizedCategoriesCount])
        {
          v27 = i;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v9 = [v8 localizedCategories];
          v10 = [v9 reverseObjectEnumerator];

          v11 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v33;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v33 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v32 + 1) + 8 * j);
                v28 = 0u;
                v29 = 0u;
                v30 = 0u;
                v31 = 0u;
                v16 = [v15 localizedNames];
                v17 = [v16 countByEnumeratingWithState:&v28 objects:v40 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v29;
                  do
                  {
                    for (k = 0; k != v18; ++k)
                    {
                      if (*v29 != v19)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v21 = [*(*(&v28 + 1) + 8 * k) name];
                      if ([v21 length])
                      {
                        [v4 addObject:v21];
                      }
                    }

                    v18 = [v16 countByEnumeratingWithState:&v28 objects:v40 count:16];
                  }

                  while (v18);
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
            }

            while (v12);
          }

          i = v27;
        }
      }

      v26 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v26);
  }

  return v4;
}

+ (double)_defaultRadiusForCategories:(id)a3
{
  v3 = a3;
  if ([v3 containsObject:&unk_28449B818])
  {
    v4 = 500.0;
  }

  else if ([v3 containsObject:&unk_28449B830])
  {
    v4 = 2000.0;
  }

  else
  {
    v4 = 50.0;
  }

  return v4;
}

+ (id)_regionFromMapItem:(id)a3
{
  v3 = [a3 geoFenceMapRegion];
  if ([v3 hasNorthLat] && objc_msgSend(v3, "hasSouthLat") && objc_msgSend(v3, "hasEastLng") && objc_msgSend(v3, "hasWestLng"))
  {
    [v3 northLat];
    v5 = v4;
    [v3 southLat];
    v7 = v6;
    [v3 westLng];
    v9 = v8;
    [v3 eastLng];
    v11 = (v5 + v7) * 0.5;
    if (v9 <= v10)
    {
      v13 = (v9 + v10) * 0.5;
    }

    else
    {
      v12 = (v10 + 360.0 - v9) * 0.5 + v9;
      if (v12 <= 180.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 + -360.0;
      }
    }

    [v3 southLat];
    v17 = v16;
    [v3 westLng];
    CLSCommonCalculateDistanceRadius(1, v11, v13, v17, v18);
    v20 = v19;
    v21 = objc_alloc(MEMORY[0x277CBFBC8]);
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%+.8f, %+.8f> radius %.2f", *&v11, *&v13, *&v20];
    v14 = [v21 initWithCenter:v22 radius:v11 identifier:{v13, v20}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end