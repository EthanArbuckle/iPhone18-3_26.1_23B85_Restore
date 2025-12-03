@interface RTMapItem
+ (BOOL)addressDictionaryContainsContactsKeys:(id)keys;
+ (id)convertAddressDictionaryFromContactsToGeoServices:(id)services;
+ (id)extendedAttributesFromGEOMapItem:(id)item confidenceScalingFactor:(double)factor;
+ (id)extendedAttributesFromGEOMapItem:(id)item wifiLabelType:(int64_t)type wifiConfidence:(double)confidence;
+ (id)locationFromGEOMapItem:(id)item;
+ (id)nameFromGEOMapItem:(id)item fromSource:(unint64_t)source;
+ (int64_t)labelTypeFromFromGEOMapItem:(id)item;
+ (unint64_t)mapItemPlaceTypeFromGEOMapItem:(id)item source:(unint64_t)source;
+ (unint64_t)mapItemPlaceTypeFromGEOMapItemPlaceType:(int)type;
- (RTMapItem)initWithIdentifier:(id)identifier geoMapItem:(id)item geoMapItemHandle:(id)handle source:(unint64_t)source creationDate:(id)date expirationDate:(id)expirationDate confidenceScalingFactor:(double)factor;
- (RTMapItem)initWithIdentifier:(id)identifier geoMapItem:(id)item geoMapItemHandle:(id)handle source:(unint64_t)source creationDate:(id)date expirationDate:(id)expirationDate wifiLabelType:(int64_t)type wifiConfidence:(double)self0;
- (id)addressFromGeoMapItem:(id)item;
@end

@implementation RTMapItem

- (RTMapItem)initWithIdentifier:(id)identifier geoMapItem:(id)item geoMapItemHandle:(id)handle source:(unint64_t)source creationDate:(id)date expirationDate:(id)expirationDate confidenceScalingFactor:(double)factor
{
  itemCopy = item;
  expirationDateCopy = expirationDate;
  dateCopy = date;
  handleCopy = handle;
  identifierCopy = identifier;
  v37 = [RTMapItem nameFromGEOMapItem:itemCopy fromSource:source];
  _poiCategory = [itemCopy _poiCategory];
  _mapsCategoryMUID = [itemCopy _mapsCategoryMUID];
  v30 = [(RTMapItem *)self addressFromGeoMapItem:itemCopy];
  v29 = [RTMapItem locationFromGEOMapItem:itemCopy];
  v17 = [RTMapItem extendedAttributesFromGEOMapItem:itemCopy confidenceScalingFactor:factor];
  addressObject = [itemCopy addressObject];
  displayLanguage = [addressObject displayLanguage];

  _identifier = [itemCopy _identifier];

  if (_identifier)
  {
    _identifier2 = [itemCopy _identifier];
    v22 = [NSKeyedArchiver archivedDataWithRootObject:_identifier2 requiringSecureCoding:1 error:0];
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_class() mapItemPlaceTypeFromGEOMapItem:itemCopy source:source];
  _muid = [itemCopy _muid];
  _resultProviderID = [itemCopy _resultProviderID];
  LOBYTE(v27) = [itemCopy isDisputed];
  v28 = [(RTMapItem *)self initWithIdentifier:identifierCopy name:v37 category:_poiCategory categoryMUID:_mapsCategoryMUID address:v30 location:v29 source:source mapItemPlaceType:v23 muid:_muid resultProviderID:_resultProviderID geoMapItemHandle:handleCopy geoMapItemIdentifier:v22 creationDate:dateCopy expirationDate:expirationDateCopy extendedAttributes:v17 displayLanguage:displayLanguage disputed:v27];

  return v28;
}

- (RTMapItem)initWithIdentifier:(id)identifier geoMapItem:(id)item geoMapItemHandle:(id)handle source:(unint64_t)source creationDate:(id)date expirationDate:(id)expirationDate wifiLabelType:(int64_t)type wifiConfidence:(double)self0
{
  itemCopy = item;
  expirationDateCopy = expirationDate;
  dateCopy = date;
  handleCopy = handle;
  identifierCopy = identifier;
  sourceCopy = source;
  v38 = [RTMapItem nameFromGEOMapItem:itemCopy fromSource:source];
  _poiCategory = [itemCopy _poiCategory];
  _mapsCategoryMUID = [itemCopy _mapsCategoryMUID];
  v31 = [(RTMapItem *)self addressFromGeoMapItem:itemCopy];
  v30 = [RTMapItem locationFromGEOMapItem:itemCopy];
  v20 = [RTMapItem extendedAttributesFromGEOMapItem:itemCopy wifiLabelType:type wifiConfidence:confidence];
  _identifier = [itemCopy _identifier];

  if (_identifier)
  {
    _identifier2 = [itemCopy _identifier];
    _identifier = [NSKeyedArchiver archivedDataWithRootObject:_identifier2 requiringSecureCoding:1 error:0];
  }

  if (type == 1)
  {
    v23 = 2;
  }

  else
  {
    v23 = type == 2;
  }

  addressObject = [itemCopy addressObject];
  displayLanguage = [addressObject displayLanguage];

  _muid = [itemCopy _muid];
  _resultProviderID = [itemCopy _resultProviderID];
  LOBYTE(v28) = [itemCopy isDisputed];
  v36 = [(RTMapItem *)self initWithIdentifier:identifierCopy name:v38 category:_poiCategory categoryMUID:_mapsCategoryMUID address:v31 location:v30 source:sourceCopy mapItemPlaceType:v23 muid:_muid resultProviderID:_resultProviderID geoMapItemHandle:handleCopy geoMapItemIdentifier:_identifier creationDate:dateCopy expirationDate:expirationDateCopy extendedAttributes:v20 displayLanguage:displayLanguage disputed:v28];

  return v36;
}

- (id)addressFromGeoMapItem:(id)item
{
  itemCopy = item;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  _additionalPlaceInfos = [itemCopy _additionalPlaceInfos];
  v5 = [_additionalPlaceInfos countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(_additionalPlaceInfos);
        }

        if ([*(*(&v18 + 1) + 8 * i) placeType] == 11)
        {
          LODWORD(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [_additionalPlaceInfos countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if ([itemCopy _placeType] == 11)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  v9 = +[NSDate date];
  v10 = [v9 dateByAddingTimeInterval:4838400.0];
  v11 = [RTAddress alloc];
  v12 = +[NSUUID UUID];
  addressObject = [itemCopy addressObject];
  _iso3166CountryCode = [itemCopy _iso3166CountryCode];
  _iso3166SubdivisionCode = [itemCopy _iso3166SubdivisionCode];
  v16 = [v11 initWithIdentifier:v12 geoAddressObject:addressObject subPremises:0 isIsland:v8 creationDate:v9 expirationDate:v10 iso3166CountryCode:_iso3166CountryCode iso3166SubdivisionCode:_iso3166SubdivisionCode];

  return v16;
}

+ (id)nameFromGEOMapItem:(id)item fromSource:(unint64_t)source
{
  itemCopy = item;
  addressObject = [itemCopy addressObject];
  address = [addressObject address];
  structuredAddress = [address structuredAddress];
  name = [itemCopy name];
  v10 = [name length];

  areaOfInterests = [structuredAddress areaOfInterests];
  v12 = [areaOfInterests count];

  if (v10)
  {
    v13 = (source & 1) != 0 || source == 0;
    if (!v13 || v12)
    {
      name2 = [itemCopy name];
      goto LABEL_16;
    }
  }

  if ([address hasStructuredAddress])
  {
    if ([structuredAddress hasThoroughfare])
    {
      name2 = [structuredAddress thoroughfare];
LABEL_16:
      v15 = name2;
      goto LABEL_18;
    }

    if ([structuredAddress hasSubLocality])
    {
      name2 = [structuredAddress subLocality];
      goto LABEL_16;
    }

    if ([structuredAddress hasLocality])
    {
      name2 = [structuredAddress locality];
      goto LABEL_16;
    }
  }

  v15 = 0;
LABEL_18:

  return v15;
}

+ (int64_t)labelTypeFromFromGEOMapItem:(id)item
{
  LODWORD(result) = [item _wifiFingerprintLabelType];
  if (result < 3)
  {
    return result;
  }

  v4 = sub_1000011A0(&qword_1000B2958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "+[RTMapItem(GeoMapItem) labelTypeFromFromGEOMapItem:]";
    v7 = 1024;
    v8 = 240;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "unknown wifi fingerprint label (in %s:%d)", &v5, 0x12u);
  }

  return -1;
}

+ (id)extendedAttributesFromGEOMapItem:(id)item confidenceScalingFactor:(double)factor
{
  itemCopy = item;
  v6 = itemCopy;
  if (itemCopy)
  {
    _clientAttributes = [itemCopy _clientAttributes];
    addressBookAttributes = [_clientAttributes addressBookAttributes];
    addressIdentifier = [addressBookAttributes addressIdentifier];

    _clientAttributes2 = [v6 _clientAttributes];
    addressBookAttributes2 = [_clientAttributes2 addressBookAttributes];
    isMe = [addressBookAttributes2 isMe];

    v13 = [v6 _wifiFingerprintConfidence] * factor;
    if (v13 < 0.0)
    {
      v13 = 0.0;
    }

    v14 = fmin(v13, 1.0);
    v15 = [RTMapItem labelTypeFromFromGEOMapItem:v6];
    if (addressIdentifier || (v14 > 0.0 ? (v19 = 1) : (v19 = isMe), (v19 & 1) != 0 || v15))
    {
      v16 = [[RTMapItemExtendedAttributes alloc] initWithAddressIdentifier:addressIdentifier isMe:isMe wifiConfidence:v15 wifiFingerprintLabelType:v14];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v17 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: geoMapItem", v20, 2u);
    }

    v16 = 0;
  }

  return v16;
}

+ (id)extendedAttributesFromGEOMapItem:(id)item wifiLabelType:(int64_t)type wifiConfidence:(double)confidence
{
  itemCopy = item;
  v8 = itemCopy;
  if (itemCopy)
  {
    _clientAttributes = [itemCopy _clientAttributes];
    addressBookAttributes = [_clientAttributes addressBookAttributes];
    addressIdentifier = [addressBookAttributes addressIdentifier];

    _clientAttributes2 = [v8 _clientAttributes];
    addressBookAttributes2 = [_clientAttributes2 addressBookAttributes];
    isMe = [addressBookAttributes2 isMe];

    if (addressIdentifier || (confidence <= 0.0 ? (v15 = type == 0) : (v15 = 0), !v15 ? (v16 = 1) : (v16 = isMe), v16 == 1))
    {
      v17 = [[RTMapItemExtendedAttributes alloc] initWithAddressIdentifier:addressIdentifier isMe:isMe wifiConfidence:type wifiFingerprintLabelType:confidence];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v18 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: geoMapItem", v20, 2u);
    }

    v17 = 0;
  }

  return v17;
}

+ (id)locationFromGEOMapItem:(id)item
{
  itemCopy = item;
  v4 = itemCopy;
  if (itemCopy)
  {
    _clientAttributes = [itemCopy _clientAttributes];
    correctedLocationAttributes = [_clientAttributes correctedLocationAttributes];
    if ([correctedLocationAttributes hasCorrectedCoordinate])
    {
      _clientAttributes2 = [v4 _clientAttributes];
      correctedLocationAttributes2 = [_clientAttributes2 correctedLocationAttributes];
      correctedCoordinate = [correctedLocationAttributes2 correctedCoordinate];
      [correctedCoordinate coordinate];
      v11 = v10;
      v13 = fabs(v12);

      if (v13 <= 180.0 && fabs(v11) <= 90.0)
      {
        v14 = [RTLocation alloc];
        _clientAttributes3 = [v4 _clientAttributes];
        correctedLocationAttributes3 = [_clientAttributes3 correctedLocationAttributes];
        correctedCoordinate2 = [correctedLocationAttributes3 correctedCoordinate];
        [correctedCoordinate2 lat];
        v19 = v18;
        _clientAttributes4 = [v4 _clientAttributes];
        correctedLocationAttributes4 = [_clientAttributes4 correctedLocationAttributes];
        correctedCoordinate3 = [correctedLocationAttributes4 correctedCoordinate];
        [correctedCoordinate3 lng];
        v24 = [v14 initWithLatitude:0 longitude:objc_msgSend(v4 horizontalUncertainty:"referenceFrame") date:v19 referenceFrame:{v23, 1.0}];

        goto LABEL_20;
      }
    }

    else
    {
    }

    _clientAttributes3 = [CLPlacemark placemarkWithGEOMapItem:v4];
    correctedLocationAttributes3 = [_clientAttributes3 region];
    if (correctedLocationAttributes3)
    {
      v26 = [RTLocation alloc];
      [correctedLocationAttributes3 center];
      v28 = v27;
      [correctedLocationAttributes3 center];
      v30 = v29;
      [correctedLocationAttributes3 radius];
      v32 = v31;
      referenceFrame = [v4 referenceFrame];
      v34 = v26;
      v35 = v28;
      v36 = v30;
      v37 = v32;
    }

    else
    {
      [v4 centerCoordinate];
      if (fabs(v39) > 180.0 || fabs(v38) > 90.0)
      {
        [v4 coordinate];
        if (fabs(v45) > 180.0 || fabs(v44) > 90.0)
        {
          v49 = sub_1000011A0(&qword_1000B2958);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v50 = 136315394;
            v51 = "+[RTMapItem(GeoMapItem) locationFromGEOMapItem:]";
            v52 = 1024;
            v53 = 337;
            _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "we should have extracted a coordinate out this map item (in %s:%d)", &v50, 0x12u);
          }

          v24 = 0;
          goto LABEL_20;
        }

        v40 = [RTLocation alloc];
        [v4 coordinate];
        v42 = v46;
        [v4 coordinate];
      }

      else
      {
        v40 = [RTLocation alloc];
        [v4 centerCoordinate];
        v42 = v41;
        [v4 centerCoordinate];
      }

      v47 = v43;
      referenceFrame = [v4 referenceFrame];
      v37 = 1.0;
      v34 = v40;
      v35 = v42;
      v36 = v47;
    }

    v24 = [v34 initWithLatitude:0 longitude:referenceFrame horizontalUncertainty:v35 date:v36 referenceFrame:v37];
LABEL_20:

    goto LABEL_21;
  }

  v25 = sub_1000011A0(&qword_1000B2958);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v50 = 136315394;
    v51 = "+[RTMapItem(GeoMapItem) locationFromGEOMapItem:]";
    v52 = 1024;
    v53 = 299;
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: geoMapItem (in %s:%d)", &v50, 0x12u);
  }

  v24 = 0;
LABEL_21:

  return v24;
}

+ (BOOL)addressDictionaryContainsContactsKeys:(id)keys
{
  keysCopy = keys;
  allKeys = [keysCopy allKeys];
  if ([allKeys containsObject:CNPostalAddressStreetKey])
  {
    v5 = 1;
  }

  else
  {
    allKeys2 = [keysCopy allKeys];
    if ([allKeys2 containsObject:CNPostalAddressCityKey])
    {
      v5 = 1;
    }

    else
    {
      allKeys3 = [keysCopy allKeys];
      if ([allKeys3 containsObject:CNPostalAddressStateKey])
      {
        v5 = 1;
      }

      else
      {
        allKeys4 = [keysCopy allKeys];
        if ([allKeys4 containsObject:CNPostalAddressPostalCodeKey])
        {
          v5 = 1;
        }

        else
        {
          allKeys5 = [keysCopy allKeys];
          if ([allKeys5 containsObject:CNPostalAddressCountryKey])
          {
            v5 = 1;
          }

          else
          {
            allKeys6 = [keysCopy allKeys];
            v5 = [allKeys6 containsObject:CNPostalAddressISOCountryCodeKey];
          }
        }
      }
    }
  }

  return v5;
}

+ (id)convertAddressDictionaryFromContactsToGeoServices:(id)services
{
  servicesCopy = services;
  +[NSMutableDictionary dictionary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001D2C4;
  v4 = v6[3] = &unk_1000A8BB8;
  v7 = v4;
  [servicesCopy enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

+ (unint64_t)mapItemPlaceTypeFromGEOMapItem:(id)item source:(unint64_t)source
{
  sourceCopy = source;
  itemCopy = item;
  if ((sourceCopy & 0x4000) == 0)
  {
    goto LABEL_2;
  }

  v7 = [objc_opt_class() labelTypeFromFromGEOMapItem:itemCopy];
  if (v7)
  {
    if (v7 == 2)
    {
      v6 = 1;
      goto LABEL_10;
    }

    if (v7 == 1)
    {
LABEL_9:
      v6 = 2;
      goto LABEL_10;
    }
  }

  else if ([itemCopy _muid])
  {
    goto LABEL_9;
  }

LABEL_2:
  v6 = [objc_opt_class() mapItemPlaceTypeFromGEOMapItemPlaceType:{objc_msgSend(itemCopy, "_placeType")}];
LABEL_10:

  return v6;
}

+ (unint64_t)mapItemPlaceTypeFromGEOMapItemPlaceType:(int)type
{
  if ((type - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return qword_100092310[type - 1];
  }
}

@end