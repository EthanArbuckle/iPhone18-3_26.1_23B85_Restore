@interface RTLocationOfInterest
+ (id)geoMapItemSourceToString:(unint64_t)string;
+ (id)locationOfInterestTypeSourceToString:(unint64_t)string;
+ (id)locationOfInterestTypeToString:(int64_t)string;
- (BOOL)isEqual:(id)equal;
- (NSString)preferredName;
- (RTLocationOfInterest)initWithCoder:(id)coder;
- (RTLocationOfInterest)initWithLocation:(id)location confidence:(double)confidence identifier:(id)identifier type:(int64_t)type typeSource:(unint64_t)source visits:(id)visits customLabel:(id)label mapItem:(id)self0;
- (id)description;
- (id)nameFromType:(int64_t)type;
- (id)pruneVisitsWithDateInterval:(id)interval;
- (int64_t)recentCompare:(id)compare;
- (unint64_t)geoMapItemSource;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTLocationOfInterest

- (NSString)preferredName
{
  if ([(NSString *)self->_customLabel length])
  {
    mergedThoroughfare = self->_customLabel;
    goto LABEL_9;
  }

  v4 = [(RTLocationOfInterest *)self nameFromType:self->_type];
  if ([v4 length])
  {
    name2 = v4;
  }

  else
  {
    name = [(RTMapItem *)self->_mapItem name];
    v7 = [name length];

    mapItem = self->_mapItem;
    if (!v7)
    {
      address = [(RTMapItem *)mapItem address];
      mergedThoroughfare = [address mergedThoroughfare];

      goto LABEL_8;
    }

    name2 = [(RTMapItem *)mapItem name];
  }

  mergedThoroughfare = name2;
LABEL_8:

LABEL_9:

  return mergedThoroughfare;
}

+ (id)locationOfInterestTypeToString:(int64_t)string
{
  if (string > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80B4D38[string];
  }
}

+ (id)locationOfInterestTypeSourceToString:(unint64_t)string
{
  array = [MEMORY[0x1E695DF70] array];
  v5 = array;
  if (!string)
  {
    v6 = @"None";
LABEL_18:
    [v5 addObject:v6];
    goto LABEL_19;
  }

  if (string)
  {
    [array addObject:@"MeCard"];
    if ((string & 0x40) == 0)
    {
LABEL_4:
      if ((string & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((string & 0x40) == 0)
  {
    goto LABEL_4;
  }

  [v5 addObject:@"Maps"];
  if ((string & 2) == 0)
  {
LABEL_5:
    if ((string & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v5 addObject:@"Aggregate Inferred"];
  if ((string & 4) == 0)
  {
LABEL_6:
    if ((string & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v5 addObject:@"Pattern Based"];
  if ((string & 8) == 0)
  {
LABEL_7:
    if ((string & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    [v5 addObject:@"User"];
    if ((string & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_15:
  [v5 addObject:@"Top Median"];
  if ((string & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((string & 0x20) != 0)
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

+ (id)geoMapItemSourceToString:(unint64_t)string
{
  array = [MEMORY[0x1E695DF70] array];
  v5 = array;
  if (!string)
  {
    v6 = @"None";
LABEL_38:
    [v5 addObject:v6];
    goto LABEL_39;
  }

  if (string)
  {
    [array addObject:@"Reverse Geocode"];
    if ((string & 2) == 0)
    {
LABEL_4:
      if ((string & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  else if ((string & 2) == 0)
  {
    goto LABEL_4;
  }

  [v5 addObject:@"Contacts"];
  if ((string & 4) == 0)
  {
LABEL_5:
    if ((string & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v5 addObject:@"Maps Support"];
  if ((string & 8) == 0)
  {
LABEL_6:
    if ((string & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v5 addObject:@"User"];
  if ((string & 0x10) == 0)
  {
LABEL_7:
    if ((string & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v5 addObject:@"Maps Support Favorite"];
  if ((string & 0x20) == 0)
  {
LABEL_8:
    if ((string & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v5 addObject:@"Maps Support History Entry"];
  if ((string & 0x40) == 0)
  {
LABEL_9:
    if ((string & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v5 addObject:@"Maps Support History Entry Route"];
  if ((string & 0x80) == 0)
  {
LABEL_10:
    if ((string & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v5 addObject:@"Maps Support History Entry Place Display"];
  if ((string & 0x100) == 0)
  {
LABEL_11:
    if ((string & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v5 addObject:@"Event Kit"];
  if ((string & 0x200) == 0)
  {
LABEL_12:
    if ((string & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v5 addObject:@"Local Search"];
  if ((string & 0x400) == 0)
  {
LABEL_13:
    if ((string & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v5 addObject:@"MapItem Handle"];
  if ((string & 0x800) == 0)
  {
LABEL_14:
    if ((string & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v5 addObject:@"Forward Geocode"];
  if ((string & 0x1000) == 0)
  {
LABEL_15:
    if ((string & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v5 addObject:@"Proactive Experts"];
  if ((string & 0x2000) == 0)
  {
LABEL_16:
    if ((string & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v5 addObject:@"Portrait"];
  if ((string & 0x4000) == 0)
  {
LABEL_17:
    if ((string & 0x8000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    [v5 addObject:@"Blue POI"];
    if ((string & 0x10000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_35:
  [v5 addObject:@"Learned Place"];
  if ((string & 0x8000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((string & 0x10000) != 0)
  {
LABEL_37:
    v6 = @"MapItemURL";
    goto LABEL_38;
  }

LABEL_39:
  v7 = [v5 componentsJoinedByString:{@", "}];

  return v7;
}

- (RTLocationOfInterest)initWithLocation:(id)location confidence:(double)confidence identifier:(id)identifier type:(int64_t)type typeSource:(unint64_t)source visits:(id)visits customLabel:(id)label mapItem:(id)self0
{
  locationCopy = location;
  identifierCopy = identifier;
  visitsCopy = visits;
  labelCopy = label;
  itemCopy = item;
  if (identifierCopy)
  {
    v32.receiver = self;
    v32.super_class = RTLocationOfInterest;
    v22 = [(RTLocationOfInterest *)&v32 init];
    v23 = v22;
    if (v22)
    {
      objc_storeStrong(&v22->_location, location);
      v23->_confidence = confidence;
      v24 = [identifierCopy copy];
      identifier = v23->_identifier;
      v23->_identifier = v24;

      v23->_type = type;
      v23->_typeSource = source;
      v26 = [visitsCopy copy];
      visits = v23->_visits;
      v23->_visits = v26;

      objc_storeStrong(&v23->_customLabel, label);
      objc_storeStrong(&v23->_mapItem, item);
    }

    self = v23;
    selfCopy = self;
  }

  else
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (RTLocationOfInterest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  [coderCopy decodeDoubleForKey:@"confidence"];
  v7 = v6;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v9 = [coderCopy decodeIntegerForKey:@"type"];
  v10 = [coderCopy decodeIntegerForKey:@"typeSource"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"visits"];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customLabel"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapItem"];

  v17 = [(RTLocationOfInterest *)self initWithLocation:v5 confidence:v8 identifier:v9 type:v10 typeSource:v14 visits:v15 customLabel:v7 mapItem:v16];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  location = self->_location;
  coderCopy = coder;
  [coderCopy encodeObject:location forKey:@"location"];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_typeSource forKey:@"typeSource"];
  [coderCopy encodeObject:self->_visits forKey:@"visits"];
  [coderCopy encodeObject:self->_customLabel forKey:@"customLabel"];
  [coderCopy encodeObject:self->_mapItem forKey:@"mapItem"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        identifier = [(RTLocationOfInterest *)self identifier];
        if (identifier || ([(RTLocationOfInterest *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(RTLocationOfInterest *)self identifier];
          identifier3 = [(RTLocationOfInterest *)v7 identifier];
          v11 = [identifier2 isEqual:identifier3];

          if (identifier)
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
  identifier = [(RTLocationOfInterest *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(RTLocationOfInterest *)self identifier];
  uUIDString = [identifier UUIDString];
  location = [(RTLocationOfInterest *)self location];
  [(RTLocationOfInterest *)self confidence];
  v8 = v7;
  v9 = [RTLocationOfInterest locationOfInterestTypeToString:[(RTLocationOfInterest *)self type]];
  v10 = [RTLocationOfInterest locationOfInterestTypeSourceToString:[(RTLocationOfInterest *)self typeSource]];
  mapItem = [(RTLocationOfInterest *)self mapItem];
  customLabel = [(RTLocationOfInterest *)self customLabel];
  preferredName = [(RTLocationOfInterest *)self preferredName];
  v14 = [v3 stringWithFormat:@"id, %@, %@, confidence, %f, type, %@, typeSource, %@, mapItem, %@, customLabel, %@, preferredName, %@", uUIDString, location, v8, v9, v10, mapItem, customLabel, preferredName];

  return v14;
}

- (id)nameFromType:(int64_t)type
{
  if (type > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] _coreroutine_LocalizedStringForKey:{off_1E80B4D38[type], v3}];
  }

  return v5;
}

- (int64_t)recentCompare:(id)compare
{
  compareCopy = compare;
  visits = [(RTLocationOfInterest *)self visits];
  lastObject = [visits lastObject];

  exitDate = [lastObject exitDate];
  visits2 = [compareCopy visits];
  lastObject2 = [visits2 lastObject];

  exitDate2 = [lastObject2 exitDate];
  v11 = [exitDate compare:exitDate2];
  if (!v11)
  {
    visits3 = [(RTLocationOfInterest *)self visits];
    v13 = [visits3 count];

    visits4 = [compareCopy visits];
    v15 = [visits4 count];

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

- (id)pruneVisitsWithDateInterval:(id)interval
{
  v53 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  if (intervalCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    selfCopy = self;
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
          exitDate = [v8 exitDate];
          entryDate = [v8 entryDate];
          v12 = [exitDate isOnOrBefore:entryDate];

          if (v12)
          {
            v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              identifier = [v8 identifier];
              entryDate2 = [v8 entryDate];
              stringFromDate = [entryDate2 stringFromDate];
              exitDate2 = [v8 exitDate];
              stringFromDate2 = [exitDate2 stringFromDate];
              *buf = 138740995;
              v43 = identifier;
              v44 = 2112;
              v45 = stringFromDate;
              v46 = 2112;
              v47 = stringFromDate2;
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
            entryDate3 = [v8 entryDate];
            exitDate3 = [v8 exitDate];
            v13 = [v19 initWithStartDate:entryDate3 endDate:exitDate3];

            if ([v13 intersectsDateInterval:intervalCopy])
            {
              [array addObject:v8];
            }
          }

          objc_autoreleasePoolPop(v9);
        }

        v5 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
      }

      while (v5);
    }

    v22 = [RTLocationOfInterest alloc];
    location = [(RTLocationOfInterest *)selfCopy location];
    [(RTLocationOfInterest *)selfCopy confidence];
    v25 = v24;
    identifier2 = [(RTLocationOfInterest *)selfCopy identifier];
    type = [(RTLocationOfInterest *)selfCopy type];
    typeSource = [(RTLocationOfInterest *)selfCopy typeSource];
    customLabel = [(RTLocationOfInterest *)selfCopy customLabel];
    mapItem = [(RTLocationOfInterest *)selfCopy mapItem];
    selfCopy2 = [(RTLocationOfInterest *)v22 initWithLocation:location confidence:identifier2 identifier:type type:typeSource typeSource:array visits:customLabel customLabel:v25 mapItem:mapItem];
  }

  else
  {
    selfCopy2 = self;
  }

  v32 = *MEMORY[0x1E69E9840];

  return selfCopy2;
}

@end