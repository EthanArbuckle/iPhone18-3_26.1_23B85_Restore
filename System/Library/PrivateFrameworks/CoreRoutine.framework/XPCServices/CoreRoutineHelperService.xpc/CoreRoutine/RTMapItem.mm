@interface RTMapItem
+ (BOOL)addressDictionaryContainsContactsKeys:(id)a3;
+ (id)convertAddressDictionaryFromContactsToGeoServices:(id)a3;
+ (id)extendedAttributesFromGEOMapItem:(id)a3 confidenceScalingFactor:(double)a4;
+ (id)extendedAttributesFromGEOMapItem:(id)a3 wifiLabelType:(int64_t)a4 wifiConfidence:(double)a5;
+ (id)locationFromGEOMapItem:(id)a3;
+ (id)nameFromGEOMapItem:(id)a3 fromSource:(unint64_t)a4;
+ (int64_t)labelTypeFromFromGEOMapItem:(id)a3;
+ (unint64_t)mapItemPlaceTypeFromGEOMapItem:(id)a3 source:(unint64_t)a4;
+ (unint64_t)mapItemPlaceTypeFromGEOMapItemPlaceType:(int)a3;
- (RTMapItem)initWithIdentifier:(id)a3 geoMapItem:(id)a4 geoMapItemHandle:(id)a5 source:(unint64_t)a6 creationDate:(id)a7 expirationDate:(id)a8 confidenceScalingFactor:(double)a9;
- (RTMapItem)initWithIdentifier:(id)a3 geoMapItem:(id)a4 geoMapItemHandle:(id)a5 source:(unint64_t)a6 creationDate:(id)a7 expirationDate:(id)a8 wifiLabelType:(int64_t)a9 wifiConfidence:(double)a10;
- (id)addressFromGeoMapItem:(id)a3;
@end

@implementation RTMapItem

- (RTMapItem)initWithIdentifier:(id)a3 geoMapItem:(id)a4 geoMapItemHandle:(id)a5 source:(unint64_t)a6 creationDate:(id)a7 expirationDate:(id)a8 confidenceScalingFactor:(double)a9
{
  v16 = a4;
  v35 = a8;
  v34 = a7;
  v32 = a5;
  v31 = a3;
  v37 = [RTMapItem nameFromGEOMapItem:v16 fromSource:a6];
  v36 = [v16 _poiCategory];
  v33 = [v16 _mapsCategoryMUID];
  v30 = [(RTMapItem *)self addressFromGeoMapItem:v16];
  v29 = [RTMapItem locationFromGEOMapItem:v16];
  v17 = [RTMapItem extendedAttributesFromGEOMapItem:v16 confidenceScalingFactor:a9];
  v18 = [v16 addressObject];
  v19 = [v18 displayLanguage];

  v20 = [v16 _identifier];

  if (v20)
  {
    v21 = [v16 _identifier];
    v22 = [NSKeyedArchiver archivedDataWithRootObject:v21 requiringSecureCoding:1 error:0];
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_class() mapItemPlaceTypeFromGEOMapItem:v16 source:a6];
  v24 = [v16 _muid];
  v25 = [v16 _resultProviderID];
  LOBYTE(v27) = [v16 isDisputed];
  v28 = [(RTMapItem *)self initWithIdentifier:v31 name:v37 category:v36 categoryMUID:v33 address:v30 location:v29 source:a6 mapItemPlaceType:v23 muid:v24 resultProviderID:v25 geoMapItemHandle:v32 geoMapItemIdentifier:v22 creationDate:v34 expirationDate:v35 extendedAttributes:v17 displayLanguage:v19 disputed:v27];

  return v28;
}

- (RTMapItem)initWithIdentifier:(id)a3 geoMapItem:(id)a4 geoMapItemHandle:(id)a5 source:(unint64_t)a6 creationDate:(id)a7 expirationDate:(id)a8 wifiLabelType:(int64_t)a9 wifiConfidence:(double)a10
{
  v17 = a4;
  v34 = a8;
  v33 = a7;
  v18 = a5;
  v19 = a3;
  v35 = a6;
  v38 = [RTMapItem nameFromGEOMapItem:v17 fromSource:a6];
  v37 = [v17 _poiCategory];
  v32 = [v17 _mapsCategoryMUID];
  v31 = [(RTMapItem *)self addressFromGeoMapItem:v17];
  v30 = [RTMapItem locationFromGEOMapItem:v17];
  v20 = [RTMapItem extendedAttributesFromGEOMapItem:v17 wifiLabelType:a9 wifiConfidence:a10];
  v21 = [v17 _identifier];

  if (v21)
  {
    v22 = [v17 _identifier];
    v21 = [NSKeyedArchiver archivedDataWithRootObject:v22 requiringSecureCoding:1 error:0];
  }

  if (a9 == 1)
  {
    v23 = 2;
  }

  else
  {
    v23 = a9 == 2;
  }

  v24 = [v17 addressObject];
  v29 = [v24 displayLanguage];

  v25 = [v17 _muid];
  v26 = [v17 _resultProviderID];
  LOBYTE(v28) = [v17 isDisputed];
  v36 = [(RTMapItem *)self initWithIdentifier:v19 name:v38 category:v37 categoryMUID:v32 address:v31 location:v30 source:v35 mapItemPlaceType:v23 muid:v25 resultProviderID:v26 geoMapItemHandle:v18 geoMapItemIdentifier:v21 creationDate:v33 expirationDate:v34 extendedAttributes:v20 displayLanguage:v29 disputed:v28];

  return v36;
}

- (id)addressFromGeoMapItem:(id)a3
{
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 _additionalPlaceInfos];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v18 + 1) + 8 * i) placeType] == 11)
        {
          LODWORD(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if ([v3 _placeType] == 11)
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
  v13 = [v3 addressObject];
  v14 = [v3 _iso3166CountryCode];
  v15 = [v3 _iso3166SubdivisionCode];
  v16 = [v11 initWithIdentifier:v12 geoAddressObject:v13 subPremises:0 isIsland:v8 creationDate:v9 expirationDate:v10 iso3166CountryCode:v14 iso3166SubdivisionCode:v15];

  return v16;
}

+ (id)nameFromGEOMapItem:(id)a3 fromSource:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 addressObject];
  v7 = [v6 address];
  v8 = [v7 structuredAddress];
  v9 = [v5 name];
  v10 = [v9 length];

  v11 = [v8 areaOfInterests];
  v12 = [v11 count];

  if (v10)
  {
    v13 = (a4 & 1) != 0 || a4 == 0;
    if (!v13 || v12)
    {
      v14 = [v5 name];
      goto LABEL_16;
    }
  }

  if ([v7 hasStructuredAddress])
  {
    if ([v8 hasThoroughfare])
    {
      v14 = [v8 thoroughfare];
LABEL_16:
      v15 = v14;
      goto LABEL_18;
    }

    if ([v8 hasSubLocality])
    {
      v14 = [v8 subLocality];
      goto LABEL_16;
    }

    if ([v8 hasLocality])
    {
      v14 = [v8 locality];
      goto LABEL_16;
    }
  }

  v15 = 0;
LABEL_18:

  return v15;
}

+ (int64_t)labelTypeFromFromGEOMapItem:(id)a3
{
  LODWORD(result) = [a3 _wifiFingerprintLabelType];
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

+ (id)extendedAttributesFromGEOMapItem:(id)a3 confidenceScalingFactor:(double)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _clientAttributes];
    v8 = [v7 addressBookAttributes];
    v9 = [v8 addressIdentifier];

    v10 = [v6 _clientAttributes];
    v11 = [v10 addressBookAttributes];
    v12 = [v11 isMe];

    v13 = [v6 _wifiFingerprintConfidence] * a4;
    if (v13 < 0.0)
    {
      v13 = 0.0;
    }

    v14 = fmin(v13, 1.0);
    v15 = [RTMapItem labelTypeFromFromGEOMapItem:v6];
    if (v9 || (v14 > 0.0 ? (v19 = 1) : (v19 = v12), (v19 & 1) != 0 || v15))
    {
      v16 = [[RTMapItemExtendedAttributes alloc] initWithAddressIdentifier:v9 isMe:v12 wifiConfidence:v15 wifiFingerprintLabelType:v14];
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

+ (id)extendedAttributesFromGEOMapItem:(id)a3 wifiLabelType:(int64_t)a4 wifiConfidence:(double)a5
{
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _clientAttributes];
    v10 = [v9 addressBookAttributes];
    v11 = [v10 addressIdentifier];

    v12 = [v8 _clientAttributes];
    v13 = [v12 addressBookAttributes];
    v14 = [v13 isMe];

    if (v11 || (a5 <= 0.0 ? (v15 = a4 == 0) : (v15 = 0), !v15 ? (v16 = 1) : (v16 = v14), v16 == 1))
    {
      v17 = [[RTMapItemExtendedAttributes alloc] initWithAddressIdentifier:v11 isMe:v14 wifiConfidence:a4 wifiFingerprintLabelType:a5];
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

+ (id)locationFromGEOMapItem:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _clientAttributes];
    v6 = [v5 correctedLocationAttributes];
    if ([v6 hasCorrectedCoordinate])
    {
      v7 = [v4 _clientAttributes];
      v8 = [v7 correctedLocationAttributes];
      v9 = [v8 correctedCoordinate];
      [v9 coordinate];
      v11 = v10;
      v13 = fabs(v12);

      if (v13 <= 180.0 && fabs(v11) <= 90.0)
      {
        v14 = [RTLocation alloc];
        v15 = [v4 _clientAttributes];
        v16 = [v15 correctedLocationAttributes];
        v17 = [v16 correctedCoordinate];
        [v17 lat];
        v19 = v18;
        v20 = [v4 _clientAttributes];
        v21 = [v20 correctedLocationAttributes];
        v22 = [v21 correctedCoordinate];
        [v22 lng];
        v24 = [v14 initWithLatitude:0 longitude:objc_msgSend(v4 horizontalUncertainty:"referenceFrame") date:v19 referenceFrame:{v23, 1.0}];

        goto LABEL_20;
      }
    }

    else
    {
    }

    v15 = [CLPlacemark placemarkWithGEOMapItem:v4];
    v16 = [v15 region];
    if (v16)
    {
      v26 = [RTLocation alloc];
      [v16 center];
      v28 = v27;
      [v16 center];
      v30 = v29;
      [v16 radius];
      v32 = v31;
      v33 = [v4 referenceFrame];
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
      v33 = [v4 referenceFrame];
      v37 = 1.0;
      v34 = v40;
      v35 = v42;
      v36 = v47;
    }

    v24 = [v34 initWithLatitude:0 longitude:v33 horizontalUncertainty:v35 date:v36 referenceFrame:v37];
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

+ (BOOL)addressDictionaryContainsContactsKeys:(id)a3
{
  v3 = a3;
  v4 = [v3 allKeys];
  if ([v4 containsObject:CNPostalAddressStreetKey])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 allKeys];
    if ([v6 containsObject:CNPostalAddressCityKey])
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 allKeys];
      if ([v7 containsObject:CNPostalAddressStateKey])
      {
        v5 = 1;
      }

      else
      {
        v8 = [v3 allKeys];
        if ([v8 containsObject:CNPostalAddressPostalCodeKey])
        {
          v5 = 1;
        }

        else
        {
          v9 = [v3 allKeys];
          if ([v9 containsObject:CNPostalAddressCountryKey])
          {
            v5 = 1;
          }

          else
          {
            v10 = [v3 allKeys];
            v5 = [v10 containsObject:CNPostalAddressISOCountryCodeKey];
          }
        }
      }
    }
  }

  return v5;
}

+ (id)convertAddressDictionaryFromContactsToGeoServices:(id)a3
{
  v3 = a3;
  +[NSMutableDictionary dictionary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001D2C4;
  v4 = v6[3] = &unk_1000A8BB8;
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

+ (unint64_t)mapItemPlaceTypeFromGEOMapItem:(id)a3 source:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  if ((v4 & 0x4000) == 0)
  {
    goto LABEL_2;
  }

  v7 = [objc_opt_class() labelTypeFromFromGEOMapItem:v5];
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

  else if ([v5 _muid])
  {
    goto LABEL_9;
  }

LABEL_2:
  v6 = [objc_opt_class() mapItemPlaceTypeFromGEOMapItemPlaceType:{objc_msgSend(v5, "_placeType")}];
LABEL_10:

  return v6;
}

+ (unint64_t)mapItemPlaceTypeFromGEOMapItemPlaceType:(int)a3
{
  if ((a3 - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return qword_100092310[a3 - 1];
  }
}

@end