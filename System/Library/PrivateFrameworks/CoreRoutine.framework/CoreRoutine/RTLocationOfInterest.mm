@interface RTLocationOfInterest
+ (id)geoMapItemSourceToString:(unint64_t)a3;
+ (id)locationOfInterestTypeSourceToString:(unint64_t)a3;
+ (id)locationOfInterestTypeToString:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)preferredName;
- (RTLocationOfInterest)initWithCoder:(id)a3;
- (RTLocationOfInterest)initWithLocation:(id)a3 confidence:(double)a4 identifier:(id)a5 type:(int64_t)a6 typeSource:(unint64_t)a7 visits:(id)a8 customLabel:(id)a9 mapItem:(id)a10;
- (id)description;
- (id)nameFromType:(int64_t)a3;
- (id)pruneVisitsWithDateInterval:(id)a3;
- (int64_t)recentCompare:(id)a3;
- (unint64_t)geoMapItemSource;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTLocationOfInterest

- (NSString)preferredName
{
  if ([(NSString *)self->_customLabel length])
  {
    v3 = self->_customLabel;
    goto LABEL_9;
  }

  v4 = [(RTLocationOfInterest *)self nameFromType:self->_type];
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v6 = [(RTMapItem *)self->_mapItem name];
    v7 = [v6 length];

    mapItem = self->_mapItem;
    if (!v7)
    {
      v10 = [(RTMapItem *)mapItem address];
      v3 = [v10 mergedThoroughfare];

      goto LABEL_8;
    }

    v5 = [(RTMapItem *)mapItem name];
  }

  v3 = v5;
LABEL_8:

LABEL_9:

  return v3;
}

+ (id)locationOfInterestTypeToString:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80B4D38[a3];
  }
}

+ (id)locationOfInterestTypeSourceToString:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = v4;
  if (!a3)
  {
    v6 = @"None";
LABEL_18:
    [v5 addObject:v6];
    goto LABEL_19;
  }

  if (a3)
  {
    [v4 addObject:@"MeCard"];
    if ((a3 & 0x40) == 0)
    {
LABEL_4:
      if ((a3 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((a3 & 0x40) == 0)
  {
    goto LABEL_4;
  }

  [v5 addObject:@"Maps"];
  if ((a3 & 2) == 0)
  {
LABEL_5:
    if ((a3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v5 addObject:@"Aggregate Inferred"];
  if ((a3 & 4) == 0)
  {
LABEL_6:
    if ((a3 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v5 addObject:@"Pattern Based"];
  if ((a3 & 8) == 0)
  {
LABEL_7:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    [v5 addObject:@"User"];
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_15:
  [v5 addObject:@"Top Median"];
  if ((a3 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
LABEL_17:
    v6 = @"Fallback";
    goto LABEL_18;
  }

LABEL_19:
  v7 = [v5 componentsJoinedByString:{@", "}];

  return v7;
}

- (unint64_t)geoMapItemSource
{
  v3 = [(RTMapItem *)self->_mapItem source]& 1;
  v4 = v3 | (2 * (([(RTMapItem *)self->_mapItem source]>> 2) & 1));
  v5 = [(RTMapItem *)self->_mapItem source]& 8;
  v6 = v5 | [(RTMapItem *)self->_mapItem source]& 0x10;
  v7 = v4 | v6 | [(RTMapItem *)self->_mapItem source]& 0x40;
  v8 = [(RTMapItem *)self->_mapItem source]& 0x80;
  v9 = v8 | [(RTMapItem *)self->_mapItem source]& 0x100;
  v10 = v9 | [(RTMapItem *)self->_mapItem source]& 0x200;
  v11 = v7 | v10 | [(RTMapItem *)self->_mapItem source]& 0x400;
  v12 = ([(RTMapItem *)self->_mapItem source]<< 10) & 0x800;
  v13 = v12 | (2 * [(RTMapItem *)self->_mapItem source]) & 0x1000;
  v14 = v13 | (2 * [(RTMapItem *)self->_mapItem source]) & 0x2000;
  v15 = v11 | v14 | (2 * [(RTMapItem *)self->_mapItem source]) & 0x4000;
  v16 = (2 * [(RTMapItem *)self->_mapItem source]) & 0x8000;
  return v15 | v16 | (2 * [(RTMapItem *)self->_mapItem source]) & 0x10000;
}

+ (id)geoMapItemSourceToString:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = v4;
  if (!a3)
  {
    v6 = @"None";
LABEL_38:
    [v5 addObject:v6];
    goto LABEL_39;
  }

  if (a3)
  {
    [v4 addObject:@"Reverse Geocode"];
    if ((a3 & 2) == 0)
    {
LABEL_4:
      if ((a3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v5 addObject:@"Contacts"];
  if ((a3 & 4) == 0)
  {
LABEL_5:
    if ((a3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v5 addObject:@"Maps Support"];
  if ((a3 & 8) == 0)
  {
LABEL_6:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v5 addObject:@"User"];
  if ((a3 & 0x10) == 0)
  {
LABEL_7:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v5 addObject:@"Maps Support Favorite"];
  if ((a3 & 0x20) == 0)
  {
LABEL_8:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v5 addObject:@"Maps Support History Entry"];
  if ((a3 & 0x40) == 0)
  {
LABEL_9:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v5 addObject:@"Maps Support History Entry Route"];
  if ((a3 & 0x80) == 0)
  {
LABEL_10:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v5 addObject:@"Maps Support History Entry Place Display"];
  if ((a3 & 0x100) == 0)
  {
LABEL_11:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v5 addObject:@"Event Kit"];
  if ((a3 & 0x200) == 0)
  {
LABEL_12:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v5 addObject:@"Local Search"];
  if ((a3 & 0x400) == 0)
  {
LABEL_13:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v5 addObject:@"MapItem Handle"];
  if ((a3 & 0x800) == 0)
  {
LABEL_14:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v5 addObject:@"Forward Geocode"];
  if ((a3 & 0x1000) == 0)
  {
LABEL_15:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v5 addObject:@"Proactive Experts"];
  if ((a3 & 0x2000) == 0)
  {
LABEL_16:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v5 addObject:@"Portrait"];
  if ((a3 & 0x4000) == 0)
  {
LABEL_17:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    [v5 addObject:@"Blue POI"];
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_35:
  [v5 addObject:@"Learned Place"];
  if ((a3 & 0x8000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((a3 & 0x10000) != 0)
  {
LABEL_37:
    v6 = @"MapItemURL";
    goto LABEL_38;
  }

LABEL_39:
  v7 = [v5 componentsJoinedByString:{@", "}];

  return v7;
}

- (RTLocationOfInterest)initWithLocation:(id)a3 confidence:(double)a4 identifier:(id)a5 type:(int64_t)a6 typeSource:(unint64_t)a7 visits:(id)a8 customLabel:(id)a9 mapItem:(id)a10
{
  v31 = a3;
  v18 = a5;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  if (v18)
  {
    v32.receiver = self;
    v32.super_class = RTLocationOfInterest;
    v22 = [(RTLocationOfInterest *)&v32 init];
    v23 = v22;
    if (v22)
    {
      objc_storeStrong(&v22->_location, a3);
      v23->_confidence = a4;
      v24 = [v18 copy];
      identifier = v23->_identifier;
      v23->_identifier = v24;

      v23->_type = a6;
      v23->_typeSource = a7;
      v26 = [v19 copy];
      visits = v23->_visits;
      v23->_visits = v26;

      objc_storeStrong(&v23->_customLabel, a9);
      objc_storeStrong(&v23->_mapItem, a10);
    }

    self = v23;
    v28 = self;
  }

  else
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v28 = 0;
  }

  return v28;
}

- (RTLocationOfInterest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  [v4 decodeDoubleForKey:@"confidence"];
  v7 = v6;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v9 = [v4 decodeIntegerForKey:@"type"];
  v10 = [v4 decodeIntegerForKey:@"typeSource"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"visits"];

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customLabel"];
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapItem"];

  v17 = [(RTLocationOfInterest *)self initWithLocation:v5 confidence:v8 identifier:v9 type:v10 typeSource:v14 visits:v15 customLabel:v7 mapItem:v16];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  location = self->_location;
  v5 = a3;
  [v5 encodeObject:location forKey:@"location"];
  [v5 encodeDouble:@"confidence" forKey:self->_confidence];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeInteger:self->_typeSource forKey:@"typeSource"];
  [v5 encodeObject:self->_visits forKey:@"visits"];
  [v5 encodeObject:self->_customLabel forKey:@"customLabel"];
  [v5 encodeObject:self->_mapItem forKey:@"mapItem"];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 == self)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(RTLocationOfInterest *)self identifier];
        if (v8 || ([(RTLocationOfInterest *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(RTLocationOfInterest *)self identifier];
          v10 = [(RTLocationOfInterest *)v7 identifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (unint64_t)hash
{
  v2 = [(RTLocationOfInterest *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTLocationOfInterest *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [(RTLocationOfInterest *)self location];
  [(RTLocationOfInterest *)self confidence];
  v8 = v7;
  v9 = [RTLocationOfInterest locationOfInterestTypeToString:[(RTLocationOfInterest *)self type]];
  v10 = [RTLocationOfInterest locationOfInterestTypeSourceToString:[(RTLocationOfInterest *)self typeSource]];
  v11 = [(RTLocationOfInterest *)self mapItem];
  v12 = [(RTLocationOfInterest *)self customLabel];
  v13 = [(RTLocationOfInterest *)self preferredName];
  v14 = [v3 stringWithFormat:@"id, %@, %@, confidence, %f, type, %@, typeSource, %@, mapItem, %@, customLabel, %@, preferredName, %@", v5, v6, v8, v9, v10, v11, v12, v13];

  return v14;
}

- (id)nameFromType:(int64_t)a3
{
  if (a3 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] _coreroutine_LocalizedStringForKey:{off_1E80B4D38[a3], v3}];
  }

  return v5;
}

- (int64_t)recentCompare:(id)a3
{
  v4 = a3;
  v5 = [(RTLocationOfInterest *)self visits];
  v6 = [v5 lastObject];

  v7 = [v6 exitDate];
  v8 = [v4 visits];
  v9 = [v8 lastObject];

  v10 = [v9 exitDate];
  v11 = [v7 compare:v10];
  if (!v11)
  {
    v12 = [(RTLocationOfInterest *)self visits];
    v13 = [v12 count];

    v14 = [v4 visits];
    v15 = [v14 count];

    if (v13 < v15)
    {
      v11 = -1;
    }

    else
    {
      v11 = v13 > v15;
    }
  }

  return v11;
}

- (id)pruneVisitsWithDateInterval:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = a3;
  if (v36)
  {
    v35 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v34 = self;
    obj = [(RTLocationOfInterest *)self visits];
    v4 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v39;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v39 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v38 + 1) + 8 * i);
          v9 = objc_autoreleasePoolPush();
          v10 = [v8 exitDate];
          v11 = [v8 entryDate];
          v12 = [v10 isOnOrBefore:v11];

          if (v12)
          {
            v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = [v8 identifier];
              v15 = [v8 entryDate];
              v16 = [v15 stringFromDate];
              v17 = [v8 exitDate];
              v18 = [v17 stringFromDate];
              *buf = 138740995;
              v43 = v14;
              v44 = 2112;
              v45 = v16;
              v46 = 2112;
              v47 = v18;
              v48 = 2080;
              v49 = "[RTLocationOfInterest pruneVisitsWithDateInterval:]";
              v50 = 1024;
              v51 = 460;
              _os_log_error_impl(&dword_1BF1C4000, v13, OS_LOG_TYPE_ERROR, "location of interest visit, %{sensitive}@, has one or more malformed dates, entry, %@, exit, %@ (in %s:%d)", buf, 0x30u);
            }
          }

          else
          {
            v19 = objc_alloc(MEMORY[0x1E696AB80]);
            v20 = [v8 entryDate];
            v21 = [v8 exitDate];
            v13 = [v19 initWithStartDate:v20 endDate:v21];

            if ([v13 intersectsDateInterval:v36])
            {
              [v35 addObject:v8];
            }
          }

          objc_autoreleasePoolPop(v9);
        }

        v5 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
      }

      while (v5);
    }

    v22 = [RTLocationOfInterest alloc];
    v23 = [(RTLocationOfInterest *)v34 location];
    [(RTLocationOfInterest *)v34 confidence];
    v25 = v24;
    v26 = [(RTLocationOfInterest *)v34 identifier];
    v27 = [(RTLocationOfInterest *)v34 type];
    v28 = [(RTLocationOfInterest *)v34 typeSource];
    v29 = [(RTLocationOfInterest *)v34 customLabel];
    v30 = [(RTLocationOfInterest *)v34 mapItem];
    v31 = [(RTLocationOfInterest *)v22 initWithLocation:v23 confidence:v26 identifier:v27 type:v28 typeSource:v35 visits:v29 customLabel:v25 mapItem:v30];
  }

  else
  {
    v31 = self;
  }

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

@end