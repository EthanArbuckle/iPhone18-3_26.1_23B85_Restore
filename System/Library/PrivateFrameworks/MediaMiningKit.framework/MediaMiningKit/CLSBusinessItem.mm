@interface CLSBusinessItem
+ (double)_defaultRadiusForCategories:(id)categories;
+ (id)_businessCategoriesFromGeoMapItems:(id)items;
+ (id)_regionFromMapItem:(id)item;
- (BOOL)isEnriched;
- (CLSBusinessItem)initWithCoder:(id)coder;
- (CLSBusinessItem)initWithName:(id)name region:(id)region categories:(id)categories;
- (id)description;
- (id)initFromMapItem:(id)item isoCountryCode:(id)code categoryOnly:(BOOL)only;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  cached = self->_cached;
  coderCopy = coder;
  [coderCopy encodeBool:cached forKey:@"cached"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_region forKey:@"region"];
  [coderCopy encodeObject:self->_categories forKey:@"categories"];
  [coderCopy encodeObject:self->_businessCategories forKey:@"businessCategories"];
  [coderCopy encodeInt64:self->_muid forKey:@"muid"];
  [coderCopy encodeInteger:self->_venueCapacity forKey:@"venueCapacity"];
}

- (CLSBusinessItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CLSBusinessItem *)self init];
  if (v5)
  {
    v5->_cached = [coderCopy decodeBoolForKey:@"cached"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    region = v5->_region;
    v5->_region = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"categories"];
    categories = v5->_categories;
    v5->_categories = v13;

    v5->_muid = [coderCopy decodeInt64ForKey:@"muid"];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"businessCategories"];
    businessCategories = v5->_businessCategories;
    v5->_businessCategories = v18;

    v5->_venueCapacity = [coderCopy decodeIntegerForKey:@"venueCapacity"];
  }

  return v5;
}

- (BOOL)isEnriched
{
  name = [(CLSBusinessItem *)self name];
  v3 = [name length] != 0;

  return v3;
}

- (CLSBusinessItem)initWithName:(id)name region:(id)region categories:(id)categories
{
  nameCopy = name;
  regionCopy = region;
  categoriesCopy = categories;
  v15.receiver = self;
  v15.super_class = CLSBusinessItem;
  v12 = [(CLSBusinessItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_cached = 0;
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_region, region);
    objc_storeStrong(&v13->_categories, categories);
  }

  return v13;
}

- (id)initFromMapItem:(id)item isoCountryCode:(id)code categoryOnly:(BOOL)only
{
  v38 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  codeCopy = code;
  if ([itemCopy _hasMUID])
  {
    v35.receiver = self;
    v35.super_class = CLSBusinessItem;
    v10 = [(CLSBusinessItem *)&v35 init];
    if (v10)
    {
      spatialMappedCategories = [itemCopy spatialMappedCategories];
      v12 = [objc_opt_class() _regionFromMapItem:itemCopy];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
        region = v10->_region;
        v10->_region = v14;
      }

      else
      {
        [objc_opt_class() _defaultRadiusForCategories:spatialMappedCategories];
        v18 = v17;
        [itemCopy centerCoordinate];
        v20 = v19;
        v22 = v21;
        v23 = objc_alloc(MEMORY[0x277CBFBC8]);
        v24 = CLLocationCoordinate2DMake(v20, v22);
        region = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [region UUIDString];
        v26 = [v23 initWithCenter:uUIDString radius:v24.latitude identifier:{v24.longitude, v18}];
        v27 = v10->_region;
        v10->_region = v26;
      }

      objc_storeStrong(&v10->_isoCountryCode, code);
      currentRevGeoProvider = [MEMORY[0x277D3AD60] currentRevGeoProvider];
      geoServiceProvider = v10->_geoServiceProvider;
      v10->_geoServiceProvider = currentRevGeoProvider;

      v10->_cached = 0;
      objc_storeStrong(&v10->_categories, spatialMappedCategories);
      v10->_muid = [itemCopy _muid];
      if (!only)
      {
        v10->_venueCapacity = [itemCopy venueCapacity];
        name = [itemCopy name];
        name = v10->_name;
        v10->_name = name;

        v32 = [objc_opt_class() _businessCategoriesFromGeoMapItems:itemCopy];
        businessCategories = v10->_businessCategories;
        v10->_businessCategories = v32;
      }
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v37 = itemCopy;
      _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot create BusinessItem from MapItem %{private}@ with no MUID", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)_businessCategoriesFromGeoMapItems:(id)items
{
  v43 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = itemsCopy;
  _place = [itemsCopy _place];
  business = [_place business];

  obj = business;
  v26 = [business countByEnumeratingWithState:&v36 objects:v42 count:16];
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
          localizedCategories = [v8 localizedCategories];
          reverseObjectEnumerator = [localizedCategories reverseObjectEnumerator];

          v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v32 objects:v41 count:16];
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
                  objc_enumerationMutation(reverseObjectEnumerator);
                }

                v15 = *(*(&v32 + 1) + 8 * j);
                v28 = 0u;
                v29 = 0u;
                v30 = 0u;
                v31 = 0u;
                localizedNames = [v15 localizedNames];
                v17 = [localizedNames countByEnumeratingWithState:&v28 objects:v40 count:16];
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
                        objc_enumerationMutation(localizedNames);
                      }

                      name = [*(*(&v28 + 1) + 8 * k) name];
                      if ([name length])
                      {
                        [array addObject:name];
                      }
                    }

                    v18 = [localizedNames countByEnumeratingWithState:&v28 objects:v40 count:16];
                  }

                  while (v18);
                }
              }

              v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v32 objects:v41 count:16];
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

  return array;
}

+ (double)_defaultRadiusForCategories:(id)categories
{
  categoriesCopy = categories;
  if ([categoriesCopy containsObject:&unk_28449B818])
  {
    v4 = 500.0;
  }

  else if ([categoriesCopy containsObject:&unk_28449B830])
  {
    v4 = 2000.0;
  }

  else
  {
    v4 = 50.0;
  }

  return v4;
}

+ (id)_regionFromMapItem:(id)item
{
  geoFenceMapRegion = [item geoFenceMapRegion];
  if ([geoFenceMapRegion hasNorthLat] && objc_msgSend(geoFenceMapRegion, "hasSouthLat") && objc_msgSend(geoFenceMapRegion, "hasEastLng") && objc_msgSend(geoFenceMapRegion, "hasWestLng"))
  {
    [geoFenceMapRegion northLat];
    v5 = v4;
    [geoFenceMapRegion southLat];
    v7 = v6;
    [geoFenceMapRegion westLng];
    v9 = v8;
    [geoFenceMapRegion eastLng];
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

    [geoFenceMapRegion southLat];
    v17 = v16;
    [geoFenceMapRegion westLng];
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