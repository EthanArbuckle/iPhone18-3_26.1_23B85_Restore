@interface RTMapItem
+ (BOOL)hasKnownTypeItem:(id)a3;
+ (double)weightForExtendedAttributes:(id)a3;
+ (double)weightForSource:(unint64_t)a3;
+ (id)placeTypeToString:(unint64_t)a3;
+ (id)sourceToString:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMapItem:(id)a3;
- (RTMapItem)initWithCoder:(id)a3;
- (RTMapItem)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5 categoryMUID:(id)a6 address:(id)a7 location:(id)a8 source:(unint64_t)a9 mapItemPlaceType:(unint64_t)a10 muid:(unint64_t)a11 resultProviderID:(int64_t)a12 geoMapItemHandle:(id)a13 geoMapItemIdentifier:(id)a14 creationDate:(id)a15 expirationDate:(id)a16 extendedAttributes:(id)a17 displayLanguage:(id)a18 disputed:(BOOL)a19;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)outputToDictionary;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setExtendedAttributes:(id)a3;
- (void)setSource:(unint64_t)a3;
- (void)updateWeightWithSource:(unint64_t)a3 extendedAttributes:(id)a4;
@end

@implementation RTMapItem

- (RTMapItem)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5 categoryMUID:(id)a6 address:(id)a7 location:(id)a8 source:(unint64_t)a9 mapItemPlaceType:(unint64_t)a10 muid:(unint64_t)a11 resultProviderID:(int64_t)a12 geoMapItemHandle:(id)a13 geoMapItemIdentifier:(id)a14 creationDate:(id)a15 expirationDate:(id)a16 extendedAttributes:(id)a17 displayLanguage:(id)a18 disputed:(BOOL)a19
{
  v52 = a3;
  v41 = a4;
  v51 = a4;
  v42 = a5;
  v50 = a5;
  v43 = a6;
  v49 = a6;
  v44 = a7;
  v24 = a7;
  v45 = a8;
  v25 = a8;
  v26 = a13;
  v48 = a14;
  v27 = a15;
  v28 = a16;
  v47 = a17;
  v29 = a18;
  if (!v52)
  {
    v32 = v29;
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v31 = 0;
    v30 = self;
    goto LABEL_24;
  }

  if (!v24)
  {
    v32 = v29;
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v30 = self;
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: address";
LABEL_22:
    _os_log_error_impl(&dword_1BF1C4000, v34, OS_LOG_TYPE_ERROR, v35, buf, 2u);
    goto LABEL_23;
  }

  v30 = self;
  if (!v25)
  {
    v32 = v29;
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: location";
    goto LABEL_22;
  }

  if (!v26)
  {
    v32 = v29;
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: geoMapItemHandle";
    goto LABEL_22;
  }

  if (!v27)
  {
    v32 = v29;
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: creationDate";
    goto LABEL_22;
  }

  if (!v28)
  {
    v32 = v29;
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v35 = "Invalid parameter not satisfying: expirationDate";
      goto LABEL_22;
    }

LABEL_23:

    v31 = 0;
LABEL_24:
    v29 = v32;
    goto LABEL_25;
  }

  if ((a9 & 0xFFFFFFFFFFC00020) != 0)
  {
    v31 = 0;
  }

  else
  {
    v37 = v29;
    v53.receiver = self;
    v53.super_class = RTMapItem;
    v38 = [(RTMapItem *)&v53 init];
    v39 = v38;
    if (v38)
    {
      objc_storeStrong(&v38->_identifier, a3);
      objc_storeStrong(&v39->_name, v41);
      objc_storeStrong(&v39->_category, v42);
      objc_storeStrong(&v39->_categoryMUID, v43);
      objc_storeStrong(&v39->_address, v44);
      objc_storeStrong(&v39->_location, v45);
      v39->_source = a9;
      v39->_mapItemPlaceType = a10;
      v39->_muid = a11;
      v39->_resultProviderID = a12;
      objc_storeStrong(&v39->_geoMapItemHandle, a13);
      objc_storeStrong(&v39->_geoMapItemIdentifier, a14);
      objc_storeStrong(&v39->_creationDate, a15);
      objc_storeStrong(&v39->_expirationDate, a16);
      objc_storeStrong(&v39->_extendedAttributes, a17);
      objc_storeStrong(&v39->_displayLanguage, a18);
      v39->_disputed = a19;
      [(RTMapItem *)v39 updateWeightWithSource:v39->_source extendedAttributes:v39->_extendedAttributes];
    }

    v30 = v39;
    v31 = v30;
    v29 = v37;
  }

LABEL_25:

  return v31;
}

- (id)description
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = objc_opt_class();
  v5 = [(RTMapItem *)self geoMapItemIdentifier];
  v6 = [v3 unarchivedObjectOfClass:v4 fromData:v5 error:0];

  v23 = MEMORY[0x1E696AEC0];
  v7 = [(NSUUID *)self->_identifier UUIDString];
  v8 = [v6 mapsIdentifierString];
  v22 = *&self->_name;
  categoryMUID = self->_categoryMUID;
  address = self->_address;
  location = self->_location;
  v10 = [objc_opt_class() sourceToString:self->_source];
  v11 = [objc_opt_class() placeTypeToString:self->_mapItemPlaceType];
  muid = self->_muid;
  resultProviderID = self->_resultProviderID;
  weight = self->_weight;
  v15 = [(NSDate *)self->_creationDate stringFromDate];
  v16 = v15;
  if (self->_disputed)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = [v23 stringWithFormat:@"identifier, %@, geoMapItemIdentifier, %@ (%@), name, %@, category, %@, categoryMUID, %@, address, %@, location, %@, source, %@, map item place type, %@, muid, %lu, result provider ID: %ld, weight, %lf, creationDate, %@, extended attributes, %@, display language, %@, disputed, %@", v7, v6, v8, v22, categoryMUID, address, location, v10, v11, muid, resultProviderID, *&weight, v15, self->_extendedAttributes, self->_displayLanguage, v17];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTMapItem *)self isEqualToMapItem:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_muid];
  v4 = [v3 hash];
  if (!v4)
  {
    v5 = [(NSUUID *)self->_identifier hash];
    v4 = [(NSDate *)self->_creationDate hash]^ v5;
  }

  return v4;
}

- (BOOL)isEqualToMapItem:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = [v4 identifier];
  LOBYTE(identifier) = [(NSUUID *)identifier isEqual:v6];

  if (identifier)
  {
    goto LABEL_2;
  }

  muid = self->_muid;
  if (!muid)
  {
    if (![v4 muid])
    {
      goto LABEL_8;
    }

    muid = self->_muid;
  }

  if (muid == [v4 muid])
  {
    resultProviderID = self->_resultProviderID;
    if (resultProviderID == [v4 resultProviderID])
    {
LABEL_2:
      v7 = 1;
      goto LABEL_15;
    }
  }

LABEL_8:
  v10 = [(RTLocation *)self->_location referenceFrame];
  v11 = [v4 location];
  v12 = [v11 referenceFrame];

  if (v10 == v12)
  {
    v13 = objc_alloc(MEMORY[0x1E6985C40]);
    [(RTLocation *)self->_location latitude];
    v15 = v14;
    [(RTLocation *)self->_location longitude];
    v17 = [v13 initWithLatitude:v15 longitude:v16];
    v18 = objc_alloc(MEMORY[0x1E6985C40]);
    v19 = [v4 location];
    [v19 latitude];
    v21 = v20;
    v22 = [v4 location];
    [v22 longitude];
    v24 = [v18 initWithLatitude:v21 longitude:v23];

    [v17 distanceFromLocation:v24];
    if (v25 <= 1000.0 && (disputed = self->_disputed, disputed == [v4 disputed]))
    {
      address = self->_address;
      v28 = [v4 address];
      v7 = [(RTAddress *)address isEqualToAddress:v28];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_15:

  return v7;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  weight = self->_weight;
  [v4 weight];
  if (weight >= v6)
  {
    v8 = self->_weight;
    [v4 weight];
    v7 = v8 > v9;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (RTMapItem)initWithCoder:(id)a3
{
  v3 = a3;
  v28 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  v27 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"geoMapItemHandle"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"geoMapItemIdentifier"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"mapItemPlaceType"];
  v22 = [v6 unsignedIntegerValue];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"muid"];
  v21 = [v7 unsignedIntegerValue];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"resultProviderID"];
  v19 = [v8 integerValue];

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"categoryMUID"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"xattrs"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"displayLanguage"];
  v15 = [v3 decodeBoolForKey:@"disputed"];

  LOBYTE(v17) = v15;
  v26 = [(RTMapItem *)self initWithIdentifier:v28 name:v18 category:v9 categoryMUID:v10 address:v24 location:v23 source:v12 mapItemPlaceType:v22 muid:v21 resultProviderID:v19 geoMapItemHandle:v20 geoMapItemIdentifier:v5 creationDate:v27 expirationDate:v4 extendedAttributes:v13 displayLanguage:v14 disputed:v17];

  return v26;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v9 = a3;
  [v9 encodeObject:identifier forKey:@"identifier"];
  [v9 encodeObject:self->_address forKey:@"address"];
  [v9 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v9 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v9 encodeObject:self->_geoMapItemHandle forKey:@"geoMapItemHandle"];
  [v9 encodeObject:self->_geoMapItemIdentifier forKey:@"geoMapItemIdentifier"];
  [v9 encodeObject:self->_location forKey:@"location"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_mapItemPlaceType];
  [v9 encodeObject:v5 forKey:@"mapItemPlaceType"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_muid];
  [v9 encodeObject:v6 forKey:@"muid"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resultProviderID];
  [v9 encodeObject:v7 forKey:@"resultProviderID"];

  [v9 encodeObject:self->_name forKey:@"name"];
  [v9 encodeObject:self->_category forKey:@"category"];
  [v9 encodeObject:self->_categoryMUID forKey:@"categoryMUID"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_source];
  [v9 encodeObject:v8 forKey:@"source"];

  [v9 encodeObject:self->_extendedAttributes forKey:@"xattrs"];
  [v9 encodeObject:self->_displayLanguage forKey:@"displayLanguage"];
  [v9 encodeBool:self->_disputed forKey:@"disputed"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  source = self->_source;
  LOBYTE(v7) = self->_disputed;
  return [v4 initWithIdentifier:self->_identifier name:self->_name category:self->_category categoryMUID:self->_categoryMUID address:self->_address location:self->_location source:source mapItemPlaceType:self->_mapItemPlaceType muid:self->_muid resultProviderID:self->_resultProviderID geoMapItemHandle:self->_geoMapItemHandle geoMapItemIdentifier:self->_geoMapItemIdentifier creationDate:self->_creationDate expirationDate:self->_expirationDate extendedAttributes:self->_extendedAttributes displayLanguage:self->_displayLanguage disputed:v7];
}

- (id)outputToDictionary
{
  v3 = objc_opt_new();
  v4 = [(NSUUID *)self->_identifier UUIDString];
  [v3 setValue:v4 forKey:@"identifier"];

  v5 = [(RTAddress *)self->_address geoAddressObject];
  v6 = [v5 fullAddressWithMultiline:0];
  [v3 setValue:v6 forKey:@"address"];

  v7 = [(RTLocation *)self->_location outputToDictionary];
  [v3 setValue:v7 forKey:@"location"];

  v8 = [objc_opt_class() placeTypeToString:self->_mapItemPlaceType];
  [v3 setValue:v8 forKey:@"mapItemPlaceType"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_muid];
  [v3 setValue:v9 forKey:@"muid"];

  [v3 setValue:self->_name forKey:@"name"];
  [v3 setValue:self->_category forKey:@"category"];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_disputed];
  [v3 setValue:v10 forKey:@"disputed"];

  return v3;
}

+ (BOOL)hasKnownTypeItem:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_0] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __30__RTMapItem_hasKnownTypeItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 extendedAttributes];
  v3 = [v2 isMe];

  return v3;
}

+ (id)placeTypeToString:(unint64_t)a3
{
  result = @"AreaOfInterest";
  switch(a3)
  {
    case 0uLL:
      result = @"Unknown";
      break;
    case 1uLL:
      return result;
    case 2uLL:
      result = @"PointOfInterest";
      break;
    case 3uLL:
      result = @"Address";
      break;
    case 4uLL:
    case 5uLL:
      result = @"Country";
      break;
    case 6uLL:
      result = @"AdministrativeArea";
      break;
    case 7uLL:
      result = @"Locality";
      break;
    case 8uLL:
      result = @"TimeZone";
      break;
    case 9uLL:
      result = @"SubLocality";
      break;
    case 0xAuLL:
      result = @"Ocean";
      break;
    case 0xBuLL:
      result = @"InlandWater";
      break;
    case 0xCuLL:
      result = @"Island";
      break;
    case 0xDuLL:
      result = @"Street";
      break;
    case 0xEuLL:
      result = @"Admin";
      break;
    case 0xFuLL:
      result = @"Postal";
      break;
    case 0x10uLL:
      result = @"Intersection";
      break;
    case 0x11uLL:
      result = @"Building";
      break;
    case 0x12uLL:
      result = @"Continent";
      break;
    case 0x13uLL:
      result = @"Region";
      break;
    case 0x14uLL:
      result = @"Division";
      break;
    default:
      if (a3 == 1000)
      {
        result = @"Undefined";
      }

      break;
  }

  return result;
}

+ (id)sourceToString:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = v5;
  if (!a3)
  {
    v7 = @"Unknown";
LABEL_46:
    [v6 addObject:v7];
    goto LABEL_47;
  }

  if (a3)
  {
    [v5 addObject:@"ReverseGeocode"];
    if ((a3 & 2) == 0)
    {
LABEL_4:
      if ((a3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v6 addObject:@"ForwardGeocode"];
  if ((a3 & 4) == 0)
  {
LABEL_5:
    if ((a3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v6 addObject:@"Contacts"];
  if ((a3 & 8) == 0)
  {
LABEL_6:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v6 addObject:@"User"];
  if ((a3 & 0x10) == 0)
  {
LABEL_7:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v6 addObject:@"MapsSupportFavorite"];
  if ((a3 & 0x40) == 0)
  {
LABEL_8:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v6 addObject:@"MapsSupportHistoryEntryRoute"];
  if ((a3 & 0x80) == 0)
  {
LABEL_9:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v6 addObject:@"MapsSupportHistoryEntryPlaceDisplay"];
  if ((a3 & 0x100) == 0)
  {
LABEL_10:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v6 addObject:@"EventKit"];
  if ((a3 & 0x200) == 0)
  {
LABEL_11:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v6 addObject:@"LocalSearch"];
  if ((a3 & 0x400) == 0)
  {
LABEL_12:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v6 addObject:@"MapItemHandle"];
  if ((a3 & 0x800) == 0)
  {
LABEL_13:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v6 addObject:@"ProactiveExperts"];
  if ((a3 & 0x1000) == 0)
  {
LABEL_14:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v6 addObject:@"Portrait"];
  if ((a3 & 0x2000) == 0)
  {
LABEL_15:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v6 addObject:@"LearnedPlace"];
  if ((a3 & 0x4000) == 0)
  {
LABEL_16:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v6 addObject:@"BluePOI"];
  if ((a3 & 0x8000) == 0)
  {
LABEL_17:
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v6 addObject:@"MapItemURL"];
  if ((a3 & 0x10000) == 0)
  {
LABEL_18:
    if ((a3 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v6 addObject:@"CurrentPOI"];
  if ((a3 & 0x20000) == 0)
  {
LABEL_19:
    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v6 addObject:@"CurrentLocation"];
  if ((a3 & 0x40000) == 0)
  {
LABEL_20:
    if ((a3 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v6 addObject:@"ReverseGeocodeRelatedPlaces"];
  if ((a3 & 0x80000) == 0)
  {
LABEL_21:
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    [v6 addObject:@"LocalBluePOI"];
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

LABEL_43:
  [v6 addObject:@"POIHistory"];
  if ((a3 & 0x100000) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((a3 & 0x200000) != 0)
  {
LABEL_45:
    v7 = @"POIHistorySynced";
    goto LABEL_46;
  }

LABEL_47:
  if (![v6 count])
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = 138413058;
      v14 = v12;
      v15 = 2048;
      v16 = a3;
      v17 = 2080;
      v18 = "+[RTMapItem sourceToString:]";
      v19 = 1024;
      v20 = 548;
      _os_log_error_impl(&dword_1BF1C4000, v8, OS_LOG_TYPE_ERROR, "%@ does not handle RTMapItemSource, %lu (in %s:%d)", &v13, 0x26u);
    }
  }

  if ([v6 count])
  {
    v9 = [v6 componentsJoinedByString:{@", "}];
  }

  else
  {
    v9 = &stru_1F3DD00E8;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setExtendedAttributes:(id)a3
{
  v5 = a3;
  if (![(RTMapItemExtendedAttributes *)self->_extendedAttributes isEqualToMapItemExtendedAttributes:?])
  {
    objc_storeStrong(&self->_extendedAttributes, a3);
    [(RTMapItem *)self updateWeightWithSource:self->_source extendedAttributes:self->_extendedAttributes];
  }
}

- (void)setSource:(unint64_t)a3
{
  if (self->_source != a3)
  {
    self->_source = a3;
    extendedAttributes = self->_extendedAttributes;
    [RTMapItem updateWeightWithSource:"updateWeightWithSource:extendedAttributes:" extendedAttributes:?];
  }
}

- (void)updateWeightWithSource:(unint64_t)a3 extendedAttributes:(id)a4
{
  v6 = a4;
  v7 = 0.0;
  if ([(RTMapItem *)self validMUID])
  {
    name = self->_name;
    v9 = [(RTAddress *)self->_address thoroughfare];
    LOBYTE(name) = [(NSString *)name isEqualToString:v9];

    if (name)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 50.0;
    }
  }

  [objc_opt_class() weightForSource:a3];
  v11 = v7 + v10;
  [objc_opt_class() weightForExtendedAttributes:v6];
  v13 = v12;

  self->_weight = v11 + v13;
}

+ (double)weightForExtendedAttributes:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = a3;
  [v3 wifiConfidence];
  v5 = v4 + 0.0;
  v6 = [v3 isMe];

  result = v5 + 70.0;
  if (!v6)
  {
    return v5;
  }

  return result;
}

+ (double)weightForSource:(unint64_t)a3
{
  v3 = 0.0;
  if (a3)
  {
    v3 = 1.0;
  }

  if ((a3 & 0x40000) != 0)
  {
    v3 = v3 + 1.0;
  }

  if ((a3 & 2) != 0)
  {
    v3 = v3 + 1.0;
  }

  result = v3 + 1.0;
  if ((a3 & 0x1000) == 0)
  {
    result = v3;
  }

  if ((a3 & 0x800) != 0)
  {
    result = result + 5.0;
  }

  if ((a3 & 0x200) != 0)
  {
    result = result + 7.0;
  }

  if ((a3 & 0x4000) != 0)
  {
    result = result + 9.0;
  }

  if ((a3 & 0x80000) != 0)
  {
    result = result + 9.0;
  }

  if ((a3 & 0x100) != 0)
  {
    result = result + 11.0;
  }

  if ((a3 & 0x40) != 0)
  {
    result = result + 13.0;
  }

  if ((a3 & 0x80) != 0)
  {
    result = result + 13.0;
  }

  if ((a3 & 8) != 0)
  {
    result = result + 23.0;
  }

  if ((a3 & 4) != 0)
  {
    result = result + 23.0;
  }

  if ((a3 & 0x10) != 0)
  {
    return result + 23.0;
  }

  return result;
}

@end