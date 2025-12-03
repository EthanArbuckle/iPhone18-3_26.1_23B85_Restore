@interface RTMapItem
+ (BOOL)hasKnownTypeItem:(id)item;
+ (double)weightForExtendedAttributes:(id)attributes;
+ (double)weightForSource:(unint64_t)source;
+ (id)placeTypeToString:(unint64_t)string;
+ (id)sourceToString:(unint64_t)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMapItem:(id)item;
- (RTMapItem)initWithCoder:(id)coder;
- (RTMapItem)initWithIdentifier:(id)identifier name:(id)name category:(id)category categoryMUID:(id)d address:(id)address location:(id)location source:(unint64_t)source mapItemPlaceType:(unint64_t)self0 muid:(unint64_t)self1 resultProviderID:(int64_t)self2 geoMapItemHandle:(id)self3 geoMapItemIdentifier:(id)self4 creationDate:(id)self5 expirationDate:(id)self6 extendedAttributes:(id)self7 displayLanguage:(id)self8 disputed:(BOOL)self9;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)outputToDictionary;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setExtendedAttributes:(id)attributes;
- (void)setSource:(unint64_t)source;
- (void)updateWeightWithSource:(unint64_t)source extendedAttributes:(id)attributes;
@end

@implementation RTMapItem

- (RTMapItem)initWithIdentifier:(id)identifier name:(id)name category:(id)category categoryMUID:(id)d address:(id)address location:(id)location source:(unint64_t)source mapItemPlaceType:(unint64_t)self0 muid:(unint64_t)self1 resultProviderID:(int64_t)self2 geoMapItemHandle:(id)self3 geoMapItemIdentifier:(id)self4 creationDate:(id)self5 expirationDate:(id)self6 extendedAttributes:(id)self7 displayLanguage:(id)self8 disputed:(BOOL)self9
{
  identifierCopy = identifier;
  nameCopy = name;
  nameCopy2 = name;
  categoryCopy = category;
  categoryCopy2 = category;
  dCopy = d;
  dCopy2 = d;
  addressCopy = address;
  addressCopy2 = address;
  locationCopy = location;
  locationCopy2 = location;
  handleCopy = handle;
  itemIdentifierCopy = itemIdentifier;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  attributesCopy = attributes;
  languageCopy = language;
  if (!identifierCopy)
  {
    v32 = languageCopy;
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v31 = 0;
    selfCopy3 = self;
    goto LABEL_24;
  }

  if (!addressCopy2)
  {
    v32 = languageCopy;
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    selfCopy3 = self;
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

  selfCopy3 = self;
  if (!locationCopy2)
  {
    v32 = languageCopy;
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: location";
    goto LABEL_22;
  }

  if (!handleCopy)
  {
    v32 = languageCopy;
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: geoMapItemHandle";
    goto LABEL_22;
  }

  if (!dateCopy)
  {
    v32 = languageCopy;
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: creationDate";
    goto LABEL_22;
  }

  if (!expirationDateCopy)
  {
    v32 = languageCopy;
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
    languageCopy = v32;
    goto LABEL_25;
  }

  if ((source & 0xFFFFFFFFFFC00020) != 0)
  {
    v31 = 0;
  }

  else
  {
    v37 = languageCopy;
    v53.receiver = self;
    v53.super_class = RTMapItem;
    v38 = [(RTMapItem *)&v53 init];
    v39 = v38;
    if (v38)
    {
      objc_storeStrong(&v38->_identifier, identifier);
      objc_storeStrong(&v39->_name, nameCopy);
      objc_storeStrong(&v39->_category, categoryCopy);
      objc_storeStrong(&v39->_categoryMUID, dCopy);
      objc_storeStrong(&v39->_address, addressCopy);
      objc_storeStrong(&v39->_location, locationCopy);
      v39->_source = source;
      v39->_mapItemPlaceType = type;
      v39->_muid = muid;
      v39->_resultProviderID = iD;
      objc_storeStrong(&v39->_geoMapItemHandle, handle);
      objc_storeStrong(&v39->_geoMapItemIdentifier, itemIdentifier);
      objc_storeStrong(&v39->_creationDate, date);
      objc_storeStrong(&v39->_expirationDate, expirationDate);
      objc_storeStrong(&v39->_extendedAttributes, attributes);
      objc_storeStrong(&v39->_displayLanguage, language);
      v39->_disputed = disputed;
      [(RTMapItem *)v39 updateWeightWithSource:v39->_source extendedAttributes:v39->_extendedAttributes];
    }

    selfCopy3 = v39;
    v31 = selfCopy3;
    languageCopy = v37;
  }

LABEL_25:

  return v31;
}

- (id)description
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = objc_opt_class();
  geoMapItemIdentifier = [(RTMapItem *)self geoMapItemIdentifier];
  v6 = [v3 unarchivedObjectOfClass:v4 fromData:geoMapItemIdentifier error:0];

  v23 = MEMORY[0x1E696AEC0];
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  mapsIdentifierString = [v6 mapsIdentifierString];
  v22 = *&self->_name;
  categoryMUID = self->_categoryMUID;
  address = self->_address;
  location = self->_location;
  v10 = [objc_opt_class() sourceToString:self->_source];
  v11 = [objc_opt_class() placeTypeToString:self->_mapItemPlaceType];
  muid = self->_muid;
  resultProviderID = self->_resultProviderID;
  weight = self->_weight;
  stringFromDate = [(NSDate *)self->_creationDate stringFromDate];
  v16 = stringFromDate;
  if (self->_disputed)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = [v23 stringWithFormat:@"identifier, %@, geoMapItemIdentifier, %@ (%@), name, %@, category, %@, categoryMUID, %@, address, %@, location, %@, source, %@, map item place type, %@, muid, %lu, result provider ID: %ld, weight, %lf, creationDate, %@, extended attributes, %@, display language, %@, disputed, %@", uUIDString, v6, mapsIdentifierString, v22, categoryMUID, address, location, v10, v11, muid, resultProviderID, *&weight, stringFromDate, self->_extendedAttributes, self->_displayLanguage, v17];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTMapItem *)self isEqualToMapItem:v5];
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

- (BOOL)isEqualToMapItem:(id)item
{
  itemCopy = item;
  identifier = self->_identifier;
  identifier = [itemCopy identifier];
  LOBYTE(identifier) = [(NSUUID *)identifier isEqual:identifier];

  if (identifier)
  {
    goto LABEL_2;
  }

  muid = self->_muid;
  if (!muid)
  {
    if (![itemCopy muid])
    {
      goto LABEL_8;
    }

    muid = self->_muid;
  }

  if (muid == [itemCopy muid])
  {
    resultProviderID = self->_resultProviderID;
    if (resultProviderID == [itemCopy resultProviderID])
    {
LABEL_2:
      v7 = 1;
      goto LABEL_15;
    }
  }

LABEL_8:
  referenceFrame = [(RTLocation *)self->_location referenceFrame];
  location = [itemCopy location];
  referenceFrame2 = [location referenceFrame];

  if (referenceFrame == referenceFrame2)
  {
    v13 = objc_alloc(MEMORY[0x1E6985C40]);
    [(RTLocation *)self->_location latitude];
    v15 = v14;
    [(RTLocation *)self->_location longitude];
    v17 = [v13 initWithLatitude:v15 longitude:v16];
    v18 = objc_alloc(MEMORY[0x1E6985C40]);
    location2 = [itemCopy location];
    [location2 latitude];
    v21 = v20;
    location3 = [itemCopy location];
    [location3 longitude];
    v24 = [v18 initWithLatitude:v21 longitude:v23];

    [v17 distanceFromLocation:v24];
    if (v25 <= 1000.0 && (disputed = self->_disputed, disputed == [itemCopy disputed]))
    {
      address = self->_address;
      address = [itemCopy address];
      v7 = [(RTAddress *)address isEqualToAddress:address];
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  weight = self->_weight;
  [compareCopy weight];
  if (weight >= v6)
  {
    v8 = self->_weight;
    [compareCopy weight];
    v7 = v8 > v9;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (RTMapItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoMapItemHandle"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoMapItemIdentifier"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapItemPlaceType"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"muid"];
  unsignedIntegerValue2 = [v7 unsignedIntegerValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resultProviderID"];
  integerValue = [v8 integerValue];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryMUID"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  unsignedIntegerValue3 = [v11 unsignedIntegerValue];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"xattrs"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayLanguage"];
  v15 = [coderCopy decodeBoolForKey:@"disputed"];

  LOBYTE(v17) = v15;
  v26 = [(RTMapItem *)self initWithIdentifier:v28 name:v18 category:v9 categoryMUID:v10 address:v24 location:v23 source:unsignedIntegerValue3 mapItemPlaceType:unsignedIntegerValue muid:unsignedIntegerValue2 resultProviderID:integerValue geoMapItemHandle:v20 geoMapItemIdentifier:v5 creationDate:v27 expirationDate:v4 extendedAttributes:v13 displayLanguage:v14 disputed:v17];

  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_address forKey:@"address"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeObject:self->_geoMapItemHandle forKey:@"geoMapItemHandle"];
  [coderCopy encodeObject:self->_geoMapItemIdentifier forKey:@"geoMapItemIdentifier"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_mapItemPlaceType];
  [coderCopy encodeObject:v5 forKey:@"mapItemPlaceType"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_muid];
  [coderCopy encodeObject:v6 forKey:@"muid"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resultProviderID];
  [coderCopy encodeObject:v7 forKey:@"resultProviderID"];

  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_category forKey:@"category"];
  [coderCopy encodeObject:self->_categoryMUID forKey:@"categoryMUID"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_source];
  [coderCopy encodeObject:v8 forKey:@"source"];

  [coderCopy encodeObject:self->_extendedAttributes forKey:@"xattrs"];
  [coderCopy encodeObject:self->_displayLanguage forKey:@"displayLanguage"];
  [coderCopy encodeBool:self->_disputed forKey:@"disputed"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  source = self->_source;
  LOBYTE(v7) = self->_disputed;
  return [v4 initWithIdentifier:self->_identifier name:self->_name category:self->_category categoryMUID:self->_categoryMUID address:self->_address location:self->_location source:source mapItemPlaceType:self->_mapItemPlaceType muid:self->_muid resultProviderID:self->_resultProviderID geoMapItemHandle:self->_geoMapItemHandle geoMapItemIdentifier:self->_geoMapItemIdentifier creationDate:self->_creationDate expirationDate:self->_expirationDate extendedAttributes:self->_extendedAttributes displayLanguage:self->_displayLanguage disputed:v7];
}

- (id)outputToDictionary
{
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  [v3 setValue:uUIDString forKey:@"identifier"];

  geoAddressObject = [(RTAddress *)self->_address geoAddressObject];
  v6 = [geoAddressObject fullAddressWithMultiline:0];
  [v3 setValue:v6 forKey:@"address"];

  outputToDictionary = [(RTLocation *)self->_location outputToDictionary];
  [v3 setValue:outputToDictionary forKey:@"location"];

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

+ (BOOL)hasKnownTypeItem:(id)item
{
  itemCopy = item;
  if ([itemCopy count])
  {
    v4 = [itemCopy indexOfObjectPassingTest:&__block_literal_global_0] != 0x7FFFFFFFFFFFFFFFLL;
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

+ (id)placeTypeToString:(unint64_t)string
{
  result = @"AreaOfInterest";
  switch(string)
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
      if (string == 1000)
      {
        result = @"Undefined";
      }

      break;
  }

  return result;
}

+ (id)sourceToString:(unint64_t)string
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v6 = array;
  if (!string)
  {
    v7 = @"Unknown";
LABEL_46:
    [v6 addObject:v7];
    goto LABEL_47;
  }

  if (string)
  {
    [array addObject:@"ReverseGeocode"];
    if ((string & 2) == 0)
    {
LABEL_4:
      if ((string & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  else if ((string & 2) == 0)
  {
    goto LABEL_4;
  }

  [v6 addObject:@"ForwardGeocode"];
  if ((string & 4) == 0)
  {
LABEL_5:
    if ((string & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v6 addObject:@"Contacts"];
  if ((string & 8) == 0)
  {
LABEL_6:
    if ((string & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v6 addObject:@"User"];
  if ((string & 0x10) == 0)
  {
LABEL_7:
    if ((string & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v6 addObject:@"MapsSupportFavorite"];
  if ((string & 0x40) == 0)
  {
LABEL_8:
    if ((string & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v6 addObject:@"MapsSupportHistoryEntryRoute"];
  if ((string & 0x80) == 0)
  {
LABEL_9:
    if ((string & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v6 addObject:@"MapsSupportHistoryEntryPlaceDisplay"];
  if ((string & 0x100) == 0)
  {
LABEL_10:
    if ((string & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v6 addObject:@"EventKit"];
  if ((string & 0x200) == 0)
  {
LABEL_11:
    if ((string & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v6 addObject:@"LocalSearch"];
  if ((string & 0x400) == 0)
  {
LABEL_12:
    if ((string & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v6 addObject:@"MapItemHandle"];
  if ((string & 0x800) == 0)
  {
LABEL_13:
    if ((string & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v6 addObject:@"ProactiveExperts"];
  if ((string & 0x1000) == 0)
  {
LABEL_14:
    if ((string & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v6 addObject:@"Portrait"];
  if ((string & 0x2000) == 0)
  {
LABEL_15:
    if ((string & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v6 addObject:@"LearnedPlace"];
  if ((string & 0x4000) == 0)
  {
LABEL_16:
    if ((string & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v6 addObject:@"BluePOI"];
  if ((string & 0x8000) == 0)
  {
LABEL_17:
    if ((string & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v6 addObject:@"MapItemURL"];
  if ((string & 0x10000) == 0)
  {
LABEL_18:
    if ((string & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v6 addObject:@"CurrentPOI"];
  if ((string & 0x20000) == 0)
  {
LABEL_19:
    if ((string & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v6 addObject:@"CurrentLocation"];
  if ((string & 0x40000) == 0)
  {
LABEL_20:
    if ((string & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v6 addObject:@"ReverseGeocodeRelatedPlaces"];
  if ((string & 0x80000) == 0)
  {
LABEL_21:
    if ((string & 0x100000) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    [v6 addObject:@"LocalBluePOI"];
    if ((string & 0x200000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

LABEL_43:
  [v6 addObject:@"POIHistory"];
  if ((string & 0x100000) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((string & 0x200000) != 0)
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
      stringCopy = string;
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

- (void)setExtendedAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (![(RTMapItemExtendedAttributes *)self->_extendedAttributes isEqualToMapItemExtendedAttributes:?])
  {
    objc_storeStrong(&self->_extendedAttributes, attributes);
    [(RTMapItem *)self updateWeightWithSource:self->_source extendedAttributes:self->_extendedAttributes];
  }
}

- (void)setSource:(unint64_t)source
{
  if (self->_source != source)
  {
    self->_source = source;
    extendedAttributes = self->_extendedAttributes;
    [RTMapItem updateWeightWithSource:"updateWeightWithSource:extendedAttributes:" extendedAttributes:?];
  }
}

- (void)updateWeightWithSource:(unint64_t)source extendedAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7 = 0.0;
  if ([(RTMapItem *)self validMUID])
  {
    name = self->_name;
    thoroughfare = [(RTAddress *)self->_address thoroughfare];
    LOBYTE(name) = [(NSString *)name isEqualToString:thoroughfare];

    if (name)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 50.0;
    }
  }

  [objc_opt_class() weightForSource:source];
  v11 = v7 + v10;
  [objc_opt_class() weightForExtendedAttributes:attributesCopy];
  v13 = v12;

  self->_weight = v11 + v13;
}

+ (double)weightForExtendedAttributes:(id)attributes
{
  if (!attributes)
  {
    return 0.0;
  }

  attributesCopy = attributes;
  [attributesCopy wifiConfidence];
  v5 = v4 + 0.0;
  isMe = [attributesCopy isMe];

  result = v5 + 70.0;
  if (!isMe)
  {
    return v5;
  }

  return result;
}

+ (double)weightForSource:(unint64_t)source
{
  v3 = 0.0;
  if (source)
  {
    v3 = 1.0;
  }

  if ((source & 0x40000) != 0)
  {
    v3 = v3 + 1.0;
  }

  if ((source & 2) != 0)
  {
    v3 = v3 + 1.0;
  }

  result = v3 + 1.0;
  if ((source & 0x1000) == 0)
  {
    result = v3;
  }

  if ((source & 0x800) != 0)
  {
    result = result + 5.0;
  }

  if ((source & 0x200) != 0)
  {
    result = result + 7.0;
  }

  if ((source & 0x4000) != 0)
  {
    result = result + 9.0;
  }

  if ((source & 0x80000) != 0)
  {
    result = result + 9.0;
  }

  if ((source & 0x100) != 0)
  {
    result = result + 11.0;
  }

  if ((source & 0x40) != 0)
  {
    result = result + 13.0;
  }

  if ((source & 0x80) != 0)
  {
    result = result + 13.0;
  }

  if ((source & 8) != 0)
  {
    result = result + 23.0;
  }

  if ((source & 4) != 0)
  {
    result = result + 23.0;
  }

  if ((source & 0x10) != 0)
  {
    return result + 23.0;
  }

  return result;
}

@end