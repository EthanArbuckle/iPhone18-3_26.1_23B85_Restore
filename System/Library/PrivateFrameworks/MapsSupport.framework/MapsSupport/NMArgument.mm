@interface NMArgument
- (BOOL)isEqual:(id)equal;
- (NMLocation)locationValue;
- (id)_nm_arrayValue;
- (id)_nm_compressedArgument:(int)argument;
- (id)_nm_dictionaryValue;
- (id)_nm_errorValue;
- (id)_nm_locationValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsTag:(id)tag;
- (int)tag;
- (unint64_t)hash;
- (unint64_t)unsignedIntListValueAtIndex:(unint64_t)index;
- (void)addDataListValue:(id)value;
- (void)addStringListValue:(id)value;
- (void)addStringToObjectMap:(id)map;
- (void)addTileRequestValue:(id)value;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasBoolValue:(BOOL)value;
- (void)setHasDoubleValue:(BOOL)value;
- (void)setHasIntValue:(BOOL)value;
- (void)setHasTag:(BOOL)tag;
- (void)setLocationValue:(NMLocation *)value;
- (void)writeTo:(id)to;
@end

@implementation NMArgument

- (int)tag
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_tag;
  }

  else
  {
    return 1;
  }
}

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = NMArgument;
  [(NMArgument *)&v3 dealloc];
}

- (void)setHasTag:(BOOL)tag
{
  if (tag)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsTag:(id)tag
{
  tagCopy = tag;
  if ([tagCopy isEqualToString:@"DATA"])
  {
    v4 = 1;
  }

  else if ([tagCopy isEqualToString:@"USER_INFO"])
  {
    v4 = 2;
  }

  else if ([tagCopy isEqualToString:@"ERROR"])
  {
    v4 = 3;
  }

  else if ([tagCopy isEqualToString:@"BUNDLE_IDENTIFIER"])
  {
    v4 = 4;
  }

  else if ([tagCopy isEqualToString:@"FLAG"])
  {
    v4 = 5;
  }

  else if ([tagCopy isEqualToString:@"SHA256_HASH"])
  {
    v4 = 6;
  }

  else if ([tagCopy isEqualToString:@"OFFLINE_COHORT_ID"])
  {
    v4 = 7;
  }

  else if ([tagCopy isEqualToString:@"TILE_KEY"])
  {
    v4 = 100;
  }

  else if ([tagCopy isEqualToString:@"ETAG"])
  {
    v4 = 101;
  }

  else if ([tagCopy isEqualToString:@"TILE_REQUESTS"])
  {
    v4 = 102;
  }

  else if ([tagCopy isEqualToString:@"REQUEST_IDENTIFIER"])
  {
    v4 = 103;
  }

  else if ([tagCopy isEqualToString:@"BASE_TILE_DATA"])
  {
    v4 = 104;
  }

  else if ([tagCopy isEqualToString:@"BASE_TILE_ETAG"])
  {
    v4 = 105;
  }

  else if ([tagCopy isEqualToString:@"LOCALIZATION_TILE_DATA"])
  {
    v4 = 106;
  }

  else if ([tagCopy isEqualToString:@"LOCALIZATION_TILE_ETAG"])
  {
    v4 = 107;
  }

  else if ([tagCopy isEqualToString:@"TILE_GROUP_IDENTIFIER"])
  {
    v4 = 200;
  }

  else if ([tagCopy isEqualToString:@"CURRENT_RESOURCES"])
  {
    v4 = 201;
  }

  else if ([tagCopy isEqualToString:@"BUNDLED_RESOURCES_IN_FRAMEWORK"])
  {
    v4 = 202;
  }

  else if ([tagCopy isEqualToString:@"RESOURCE_NAME"])
  {
    v4 = 205;
  }

  else if ([tagCopy isEqualToString:@"RESOURCE_IS_REGIONAL"])
  {
    v4 = 206;
  }

  else if ([tagCopy isEqualToString:@"URL"])
  {
    v4 = 302;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_TRANSPORT_TYPE"])
  {
    v4 = 400;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_ROUTE_DETAILS"])
  {
    v4 = 401;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_ROUTE_STATUS"])
  {
    v4 = 402;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_SAFETY_WARNING_TYPE"])
  {
    v4 = 403;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_SOURCE"])
  {
    v4 = 404;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_DESTINATION"])
  {
    v4 = 405;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_ROUTE_CONTEXT"])
  {
    v4 = 406;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_START_DATE"])
  {
    v4 = 407;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_END_DATE"])
  {
    v4 = 408;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_ROUTE_INDEX"])
  {
    v4 = 409;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_NUMBER_OF_ROUTES"])
  {
    v4 = 410;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_ROUTE_ID"])
  {
    v4 = 411;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_ROUTE_UPDATE"])
  {
    v4 = 412;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_AUTOMOBILE_OPTIONS"])
  {
    v4 = 413;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_TRANSIT_OPTIONS"])
  {
    v4 = 414;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_WALKING_OPTIONS"])
  {
    v4 = 415;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_CYCLING_OPTIONS"])
  {
    v4 = 416;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_WAYPOINTS"])
  {
    v4 = 417;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_DISPLAYED_STEP"])
  {
    v4 = 418;
  }

  else if ([tagCopy isEqualToString:@"DIRECTIONS_ROUTE_PERSISTENT_DATA"])
  {
    v4 = 419;
  }

  else if ([tagCopy isEqualToString:@"MUIDs"])
  {
    v4 = 500;
  }

  else if ([tagCopy isEqualToString:@"TRAITS"])
  {
    v4 = 501;
  }

  else if ([tagCopy isEqualToString:@"IDENTIFIERS"])
  {
    v4 = 502;
  }

  else if ([tagCopy isEqualToString:@"REQUEST"])
  {
    v4 = 503;
  }

  else if ([tagCopy isEqualToString:@"REQUEST_TYPE"])
  {
    v4 = 504;
  }

  else if ([tagCopy isEqualToString:@"TRANSIENT_CL_AUTH_INFO"])
  {
    v4 = 600;
  }

  else if ([tagCopy isEqualToString:@"PING_REQUIRE_MAPS_RUNNING"])
  {
    v4 = 1000;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIntValue:(BOOL)value
{
  if (value)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasBoolValue:(BOOL)value
{
  if (value)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addStringToObjectMap:(id)map
{
  mapCopy = map;
  stringToObjectMaps = self->_stringToObjectMaps;
  v8 = mapCopy;
  if (!stringToObjectMaps)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_stringToObjectMaps;
    self->_stringToObjectMaps = v6;

    mapCopy = v8;
    stringToObjectMaps = self->_stringToObjectMaps;
  }

  [(NSMutableArray *)stringToObjectMaps addObject:mapCopy];
}

- (void)addStringListValue:(id)value
{
  valueCopy = value;
  stringListValues = self->_stringListValues;
  v8 = valueCopy;
  if (!stringListValues)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_stringListValues;
    self->_stringListValues = v6;

    valueCopy = v8;
    stringListValues = self->_stringListValues;
  }

  [(NSMutableArray *)stringListValues addObject:valueCopy];
}

- (void)setLocationValue:(NMLocation *)value
{
  *&self->_has |= 1u;
  v3 = *&value->_longitude;
  v5 = *&value->_altitude;
  v4 = *&value->_courseAccuracy;
  *&self->_locationValue._latitude = *&value->_latitude;
  *&self->_locationValue._longitude = v3;
  *&self->_locationValue._altitude = v5;
  *&self->_locationValue._courseAccuracy = v4;
  v6 = *&value->_confidence;
  v8 = *&value->_rawLatitude;
  v7 = *&value->_speed;
  *&self->_locationValue._timestamp = *&value->_timestamp;
  *&self->_locationValue._confidence = v6;
  *&self->_locationValue._rawLatitude = v8;
  *&self->_locationValue._speed = v7;
}

- (unint64_t)unsignedIntListValueAtIndex:(unint64_t)index
{
  p_unsignedIntListValues = &self->_unsignedIntListValues;
  count = self->_unsignedIntListValues.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_unsignedIntListValues->list[index];
}

- (void)addDataListValue:(id)value
{
  valueCopy = value;
  dataListValues = self->_dataListValues;
  v8 = valueCopy;
  if (!dataListValues)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_dataListValues;
    self->_dataListValues = v6;

    valueCopy = v8;
    dataListValues = self->_dataListValues;
  }

  [(NSMutableArray *)dataListValues addObject:valueCopy];
}

- (void)addTileRequestValue:(id)value
{
  valueCopy = value;
  tileRequestValues = self->_tileRequestValues;
  v8 = valueCopy;
  if (!tileRequestValues)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_tileRequestValues;
    self->_tileRequestValues = v6;

    valueCopy = v8;
    tileRequestValues = self->_tileRequestValues;
  }

  [(NSMutableArray *)tileRequestValues addObject:valueCopy];
}

- (void)setHasDoubleValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NMArgument;
  v3 = [(NMArgument *)&v7 description];
  dictionaryRepresentation = [(NMArgument *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 8) != 0)
  {
    tag = self->_tag;
    if (tag <= 399)
    {
      if (tag <= 102)
      {
        if (tag > 5)
        {
          if (tag > 99)
          {
            if (tag == 100)
            {
              v5 = @"TILE_KEY";
            }

            else if (tag == 101)
            {
              v5 = @"ETAG";
            }

            else
            {
              v5 = @"TILE_REQUESTS";
            }

            goto LABEL_87;
          }

          if (tag == 6)
          {
            v5 = @"SHA256_HASH";
            goto LABEL_87;
          }

          if (tag == 7)
          {
            v5 = @"OFFLINE_COHORT_ID";
            goto LABEL_87;
          }
        }

        else
        {
          if (tag > 2)
          {
            if (tag == 3)
            {
              v5 = @"ERROR";
            }

            else if (tag == 4)
            {
              v5 = @"BUNDLE_IDENTIFIER";
            }

            else
            {
              v5 = @"FLAG";
            }

            goto LABEL_87;
          }

          if (tag == 1)
          {
            v5 = @"DATA";
            goto LABEL_87;
          }

          if (tag == 2)
          {
            v5 = @"USER_INFO";
            goto LABEL_87;
          }
        }
      }

      else if (tag <= 199)
      {
        if (tag <= 104)
        {
          if (tag == 103)
          {
            v5 = @"REQUEST_IDENTIFIER";
          }

          else
          {
            v5 = @"BASE_TILE_DATA";
          }

          goto LABEL_87;
        }

        switch(tag)
        {
          case 'i':
            v5 = @"BASE_TILE_ETAG";
            goto LABEL_87;
          case 'j':
            v5 = @"LOCALIZATION_TILE_DATA";
            goto LABEL_87;
          case 'k':
            v5 = @"LOCALIZATION_TILE_ETAG";
            goto LABEL_87;
        }
      }

      else if (tag > 204)
      {
        switch(tag)
        {
          case 205:
            v5 = @"RESOURCE_NAME";
            goto LABEL_87;
          case 206:
            v5 = @"RESOURCE_IS_REGIONAL";
            goto LABEL_87;
          case 302:
            v5 = @"URL";
            goto LABEL_87;
        }
      }

      else
      {
        switch(tag)
        {
          case 200:
            v5 = @"TILE_GROUP_IDENTIFIER";
            goto LABEL_87;
          case 201:
            v5 = @"CURRENT_RESOURCES";
            goto LABEL_87;
          case 202:
            v5 = @"BUNDLED_RESOURCES_IN_FRAMEWORK";
LABEL_87:
            [v3 setObject:v5 forKey:@"tag"];

            goto LABEL_88;
        }
      }
    }

    else
    {
      if (tag <= 499)
      {
        switch(tag)
        {
          case 400:
            v5 = @"DIRECTIONS_TRANSPORT_TYPE";
            break;
          case 401:
            v5 = @"DIRECTIONS_ROUTE_DETAILS";
            break;
          case 402:
            v5 = @"DIRECTIONS_ROUTE_STATUS";
            break;
          case 403:
            v5 = @"DIRECTIONS_SAFETY_WARNING_TYPE";
            break;
          case 404:
            v5 = @"DIRECTIONS_SOURCE";
            break;
          case 405:
            v5 = @"DIRECTIONS_DESTINATION";
            break;
          case 406:
            v5 = @"DIRECTIONS_ROUTE_CONTEXT";
            break;
          case 407:
            v5 = @"DIRECTIONS_START_DATE";
            break;
          case 408:
            v5 = @"DIRECTIONS_END_DATE";
            break;
          case 409:
            v5 = @"DIRECTIONS_ROUTE_INDEX";
            break;
          case 410:
            v5 = @"DIRECTIONS_NUMBER_OF_ROUTES";
            break;
          case 411:
            v5 = @"DIRECTIONS_ROUTE_ID";
            break;
          case 412:
            v5 = @"DIRECTIONS_ROUTE_UPDATE";
            break;
          case 413:
            v5 = @"DIRECTIONS_AUTOMOBILE_OPTIONS";
            break;
          case 414:
            v5 = @"DIRECTIONS_TRANSIT_OPTIONS";
            break;
          case 415:
            v5 = @"DIRECTIONS_WALKING_OPTIONS";
            break;
          case 416:
            v5 = @"DIRECTIONS_CYCLING_OPTIONS";
            break;
          case 417:
            v5 = @"DIRECTIONS_WAYPOINTS";
            break;
          case 418:
            v5 = @"DIRECTIONS_DISPLAYED_STEP";
            break;
          case 419:
            v5 = @"DIRECTIONS_ROUTE_PERSISTENT_DATA";
            break;
          default:
            goto LABEL_86;
        }

        goto LABEL_87;
      }

      if (tag <= 502)
      {
        if (tag == 500)
        {
          v5 = @"MUIDs";
        }

        else if (tag == 501)
        {
          v5 = @"TRAITS";
        }

        else
        {
          v5 = @"IDENTIFIERS";
        }

        goto LABEL_87;
      }

      if (tag > 599)
      {
        if (tag == 600)
        {
          v5 = @"TRANSIENT_CL_AUTH_INFO";
          goto LABEL_87;
        }

        if (tag == 1000)
        {
          v5 = @"PING_REQUIRE_MAPS_RUNNING";
          goto LABEL_87;
        }
      }

      else
      {
        if (tag == 503)
        {
          v5 = @"REQUEST";
          goto LABEL_87;
        }

        if (tag == 504)
        {
          v5 = @"REQUEST_TYPE";
          goto LABEL_87;
        }
      }
    }

LABEL_86:
    v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_tag];
    goto LABEL_87;
  }

LABEL_88:
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v3 setObject:stringValue forKey:@"stringValue"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_intValue];
    [v3 setObject:v8 forKey:@"intValue"];

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v9 = [NSNumber numberWithBool:self->_BOOLValue];
    [v3 setObject:v9 forKey:@"BOOLValue"];
  }

  dataValue = self->_dataValue;
  if (dataValue)
  {
    [v3 setObject:dataValue forKey:@"dataValue"];
  }

  if ([(NSMutableArray *)self->_stringToObjectMaps count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_stringToObjectMaps, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = self->_stringToObjectMaps;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"stringToObjectMap"];
  }

  stringListValues = self->_stringListValues;
  if (stringListValues)
  {
    [v3 setObject:stringListValues forKey:@"stringListValue"];
  }

  if (*&self->_has)
  {
    v19 = NMLocationDictionaryRepresentation(&self->_locationValue);
    [v3 setObject:v19 forKey:@"locationValue"];
  }

  v20 = PBRepeatedUInt64NSArray();
  [v3 setObject:v20 forKey:@"unsignedIntListValue"];

  dataListValues = self->_dataListValues;
  if (dataListValues)
  {
    [v3 setObject:dataListValues forKey:@"dataListValue"];
  }

  if ([(NSMutableArray *)self->_tileRequestValues count])
  {
    v22 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_tileRequestValues, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = self->_tileRequestValues;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v32;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation2 = [*(*(&v31 + 1) + 8 * j) dictionaryRepresentation];
          [v22 addObject:dictionaryRepresentation2];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKey:@"tileRequestValue"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v29 = [NSNumber numberWithDouble:self->_doubleValue];
    [v3 setObject:v29 forKey:@"doubleValue"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 8) != 0)
  {
    tag = self->_tag;
    PBDataWriterWriteInt32Field();
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    intValue = self->_intValue;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    BOOLValue = self->_BOOLValue;
    PBDataWriterWriteBOOLField();
  }

  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = self->_stringToObjectMaps;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v50;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v49 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v11);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v15 = self->_stringListValues;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v46;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v45 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v17);
  }

  if (*&self->_has)
  {
    v44 = 0;
    PBDataWriterPlaceMark();
    NMLocationWriteTo(&self->_locationValue, toCopy);
    PBDataWriterRecallMark();
  }

  if (self->_unsignedIntListValues.count)
  {
    v21 = 0;
    do
    {
      v22 = self->_unsignedIntListValues.list[v21];
      PBDataWriterWriteUint64Field();
      ++v21;
    }

    while (v21 < self->_unsignedIntListValues.count);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v23 = self->_dataListValues;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      for (k = 0; k != v25; k = k + 1)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v40 + 1) + 8 * k);
        PBDataWriterWriteDataField();
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v25);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = self->_tileRequestValues;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v53 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v37;
    do
    {
      for (m = 0; m != v31; m = m + 1)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v36 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v53 count:16];
    }

    while (v31);
  }

  if ((*&self->_has & 2) != 0)
  {
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 8) != 0)
  {
    toCopy[54] = self->_tag;
    *(toCopy + 236) |= 8u;
  }

  v31 = toCopy;
  if (self->_stringValue)
  {
    [toCopy setStringValue:?];
    toCopy = v31;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 21) = self->_intValue;
    *(toCopy + 236) |= 4u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(toCopy + 232) = self->_BOOLValue;
    *(toCopy + 236) |= 0x10u;
  }

  if (self->_dataValue)
  {
    [v31 setDataValue:?];
  }

  if ([(NMArgument *)self stringToObjectMapsCount])
  {
    [v31 clearStringToObjectMaps];
    stringToObjectMapsCount = [(NMArgument *)self stringToObjectMapsCount];
    if (stringToObjectMapsCount)
    {
      v7 = stringToObjectMapsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(NMArgument *)self stringToObjectMapAtIndex:i];
        [v31 addStringToObjectMap:v9];
      }
    }
  }

  if ([(NMArgument *)self stringListValuesCount])
  {
    [v31 clearStringListValues];
    stringListValuesCount = [(NMArgument *)self stringListValuesCount];
    if (stringListValuesCount)
    {
      v11 = stringListValuesCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(NMArgument *)self stringListValueAtIndex:j];
        [v31 addStringListValue:v13];
      }
    }
  }

  if (*&self->_has)
  {
    v14 = *&self->_locationValue._longitude;
    v16 = *&self->_locationValue._altitude;
    v15 = *&self->_locationValue._courseAccuracy;
    *(v31 + 40) = *&self->_locationValue._latitude;
    *(v31 + 56) = v14;
    *(v31 + 8) = v16;
    *(v31 + 24) = v15;
    v17 = *&self->_locationValue._confidence;
    v19 = *&self->_locationValue._rawLatitude;
    v18 = *&self->_locationValue._speed;
    *(v31 + 104) = *&self->_locationValue._timestamp;
    *(v31 + 120) = v17;
    *(v31 + 72) = v19;
    *(v31 + 88) = v18;
    v31[236] |= 1u;
  }

  if ([(NMArgument *)self unsignedIntListValuesCount])
  {
    [v31 clearUnsignedIntListValues];
    unsignedIntListValuesCount = [(NMArgument *)self unsignedIntListValuesCount];
    if (unsignedIntListValuesCount)
    {
      v21 = unsignedIntListValuesCount;
      for (k = 0; k != v21; ++k)
      {
        [v31 addUnsignedIntListValue:{-[NMArgument unsignedIntListValueAtIndex:](self, "unsignedIntListValueAtIndex:", k)}];
      }
    }
  }

  if ([(NMArgument *)self dataListValuesCount])
  {
    [v31 clearDataListValues];
    dataListValuesCount = [(NMArgument *)self dataListValuesCount];
    if (dataListValuesCount)
    {
      v24 = dataListValuesCount;
      for (m = 0; m != v24; ++m)
      {
        v26 = [(NMArgument *)self dataListValueAtIndex:m];
        [v31 addDataListValue:v26];
      }
    }
  }

  if ([(NMArgument *)self tileRequestValuesCount])
  {
    [v31 clearTileRequestValues];
    tileRequestValuesCount = [(NMArgument *)self tileRequestValuesCount];
    if (tileRequestValuesCount)
    {
      v28 = tileRequestValuesCount;
      for (n = 0; n != v28; ++n)
      {
        v30 = [(NMArgument *)self tileRequestValueAtIndex:n];
        [v31 addTileRequestValue:v30];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v31 + 20) = *&self->_doubleValue;
    v31[236] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 54) = self->_tag;
    v5[236] |= 8u;
  }

  v7 = [(NSString *)self->_stringValue copyWithZone:zone];
  v8 = *(v6 + 26);
  *(v6 + 26) = v7;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 21) = self->_intValue;
    v6[236] |= 4u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v6[232] = self->_BOOLValue;
    v6[236] |= 0x10u;
  }

  v10 = [(NSData *)self->_dataValue copyWithZone:zone];
  v11 = *(v6 + 23);
  *(v6 + 23) = v10;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v12 = self->_stringToObjectMaps;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v56;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v56 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v55 + 1) + 8 * i) copyWithZone:zone];
        [v6 addStringToObjectMap:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v14);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v18 = self->_stringListValues;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v52;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v52 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v51 + 1) + 8 * j) copyWithZone:zone];
        [v6 addStringListValue:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v20);
  }

  if (*&self->_has)
  {
    v24 = *&self->_locationValue._longitude;
    v26 = *&self->_locationValue._altitude;
    v25 = *&self->_locationValue._courseAccuracy;
    *(v6 + 40) = *&self->_locationValue._latitude;
    *(v6 + 56) = v24;
    *(v6 + 8) = v26;
    *(v6 + 24) = v25;
    v27 = *&self->_locationValue._confidence;
    v29 = *&self->_locationValue._rawLatitude;
    v28 = *&self->_locationValue._speed;
    *(v6 + 104) = *&self->_locationValue._timestamp;
    *(v6 + 120) = v27;
    *(v6 + 72) = v29;
    *(v6 + 88) = v28;
    v6[236] |= 1u;
  }

  PBRepeatedUInt64Copy();
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v30 = self->_dataListValues;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v48;
    do
    {
      for (k = 0; k != v32; k = k + 1)
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v47 + 1) + 8 * k) copyWithZone:zone];
        [v6 addDataListValue:v35];
      }

      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v32);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = self->_tileRequestValues;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v43 objects:v59 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v44;
    do
    {
      for (m = 0; m != v38; m = m + 1)
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v43 + 1) + 8 * m) copyWithZone:{zone, v43}];
        [v6 addTileRequestValue:v41];
      }

      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v43 objects:v59 count:16];
    }

    while (v38);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = *&self->_doubleValue;
    v6[236] |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  has = self->_has;
  v6 = equalCopy[236];
  if ((has & 8) != 0)
  {
    if ((equalCopy[236] & 8) == 0 || self->_tag != *(equalCopy + 54))
    {
      goto LABEL_39;
    }
  }

  else if ((equalCopy[236] & 8) != 0)
  {
    goto LABEL_39;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(equalCopy + 26))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_39;
    }

    has = self->_has;
  }

  v8 = equalCopy[236];
  if ((has & 4) != 0)
  {
    if ((equalCopy[236] & 4) == 0 || self->_intValue != *(equalCopy + 21))
    {
      goto LABEL_39;
    }
  }

  else if ((equalCopy[236] & 4) != 0)
  {
    goto LABEL_39;
  }

  if ((has & 0x10) == 0)
  {
    if ((equalCopy[236] & 0x10) == 0)
    {
      goto LABEL_17;
    }

LABEL_39:
    v15 = 0;
    goto LABEL_40;
  }

  if ((equalCopy[236] & 0x10) == 0)
  {
    goto LABEL_39;
  }

  v17 = equalCopy[232];
  if (self->_BOOLValue)
  {
    if ((equalCopy[232] & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (equalCopy[232])
  {
    goto LABEL_39;
  }

LABEL_17:
  dataValue = self->_dataValue;
  if (dataValue | *(equalCopy + 23) && ![(NSData *)dataValue isEqual:?])
  {
    goto LABEL_39;
  }

  stringToObjectMaps = self->_stringToObjectMaps;
  if (stringToObjectMaps | *(equalCopy + 25))
  {
    if (![(NSMutableArray *)stringToObjectMaps isEqual:?])
    {
      goto LABEL_39;
    }
  }

  stringListValues = self->_stringListValues;
  if (stringListValues | *(equalCopy + 24))
  {
    if (![(NSMutableArray *)stringListValues isEqual:?])
    {
      goto LABEL_39;
    }
  }

  v12 = self->_has;
  if (v12 & 1) != 0 && (equalCopy[236])
  {
    if (NMLocationEquals(&self->_locationValue, equalCopy + 8))
    {
      goto LABEL_29;
    }

    v12 = self->_has;
  }

  if (v12 & 1) != 0 || (equalCopy[236])
  {
    goto LABEL_39;
  }

LABEL_29:
  if (!PBRepeatedUInt64IsEqual())
  {
    goto LABEL_39;
  }

  dataListValues = self->_dataListValues;
  if (dataListValues | *(equalCopy + 22))
  {
    if (![(NSMutableArray *)dataListValues isEqual:?])
    {
      goto LABEL_39;
    }
  }

  tileRequestValues = self->_tileRequestValues;
  if (tileRequestValues | *(equalCopy + 28))
  {
    if (![(NSMutableArray *)tileRequestValues isEqual:?])
    {
      goto LABEL_39;
    }
  }

  v15 = (equalCopy[236] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[236] & 2) == 0 || self->_doubleValue != *(equalCopy + 20))
    {
      goto LABEL_39;
    }

    v15 = 1;
  }

LABEL_40:

  return v15;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v21 = 2654435761 * self->_tag;
  }

  else
  {
    v21 = 0;
  }

  v19 = [(NSString *)self->_stringValue hash];
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761u * self->_intValue;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_6:
      v4 = 2654435761 * self->_BOOLValue;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  v5 = [(NSData *)self->_dataValue hash];
  v6 = [(NSMutableArray *)self->_stringToObjectMaps hash];
  v7 = [(NSMutableArray *)self->_stringListValues hash];
  if (*&self->_has)
  {
    v8 = PBHashBytes();
  }

  else
  {
    v8 = 0;
  }

  v9 = PBRepeatedUInt64Hash();
  v10 = [(NSMutableArray *)self->_dataListValues hash];
  v11 = [(NSMutableArray *)self->_tileRequestValues hash];
  if ((*&self->_has & 2) != 0)
  {
    doubleValue = self->_doubleValue;
    if (doubleValue < 0.0)
    {
      doubleValue = -doubleValue;
    }

    *v12.i64 = floor(doubleValue + 0.5);
    v16 = (doubleValue - *v12.i64) * 1.84467441e19;
    *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v13, v12).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v20 ^ v21 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v14;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[236] & 8) != 0)
  {
    self->_tag = *(fromCopy + 54);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 26))
  {
    [(NMArgument *)self setStringValue:?];
  }

  v6 = v5[236];
  if ((v6 & 4) != 0)
  {
    self->_intValue = *(v5 + 21);
    *&self->_has |= 4u;
    v6 = v5[236];
  }

  if ((v6 & 0x10) != 0)
  {
    self->_BOOLValue = v5[232];
    *&self->_has |= 0x10u;
  }

  if (*(v5 + 23))
  {
    [(NMArgument *)self setDataValue:?];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = *(v5 + 25);
  v8 = [v7 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NMArgument *)self addStringToObjectMap:*(*(&v48 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v9);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = *(v5 + 24);
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(NMArgument *)self addStringListValue:*(*(&v44 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v14);
  }

  if (v5[236])
  {
    v17 = *(v5 + 56);
    v19 = *(v5 + 8);
    v18 = *(v5 + 24);
    *&self->_locationValue._latitude = *(v5 + 40);
    *&self->_locationValue._longitude = v17;
    *&self->_locationValue._altitude = v19;
    *&self->_locationValue._courseAccuracy = v18;
    v20 = *(v5 + 120);
    v22 = *(v5 + 72);
    v21 = *(v5 + 88);
    *&self->_locationValue._timestamp = *(v5 + 104);
    *&self->_locationValue._confidence = v20;
    *&self->_locationValue._rawLatitude = v22;
    *&self->_locationValue._speed = v21;
    *&self->_has |= 1u;
  }

  unsignedIntListValuesCount = [v5 unsignedIntListValuesCount];
  if (unsignedIntListValuesCount)
  {
    v24 = unsignedIntListValuesCount;
    for (k = 0; k != v24; ++k)
    {
      -[NMArgument addUnsignedIntListValue:](self, "addUnsignedIntListValue:", [v5 unsignedIntListValueAtIndex:k]);
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v26 = *(v5 + 22);
  v27 = [v26 countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v41;
    do
    {
      for (m = 0; m != v28; m = m + 1)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(NMArgument *)self addDataListValue:*(*(&v40 + 1) + 8 * m)];
      }

      v28 = [v26 countByEnumeratingWithState:&v40 objects:v53 count:16];
    }

    while (v28);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v31 = *(v5 + 28);
  v32 = [v31 countByEnumeratingWithState:&v36 objects:v52 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v37;
    do
    {
      for (n = 0; n != v33; n = n + 1)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(NMArgument *)self addTileRequestValue:*(*(&v36 + 1) + 8 * n), v36];
      }

      v33 = [v31 countByEnumeratingWithState:&v36 objects:v52 count:16];
    }

    while (v33);
  }

  if ((v5[236] & 2) != 0)
  {
    self->_doubleValue = *(v5 + 20);
    *&self->_has |= 2u;
  }
}

- (NMLocation)locationValue
{
  v3 = *&self->_speedAccuracy;
  *&retstr->_rawLatitude = *&self->_rawLongitude;
  *&retstr->_speed = v3;
  v4 = *&self->_has;
  *&retstr->_timestamp = *&self->_verticalAccuracy;
  *&retstr->_confidence = v4;
  v5 = *&self->_horizontalAccuracy;
  *&retstr->_altitude = *&self->_course;
  *&retstr->_courseAccuracy = v5;
  v6 = *&self->_rawCourse;
  *&retstr->_latitude = *&self->_lifespan;
  *&retstr->_longitude = v6;
  return self;
}

- (id)_nm_compressedArgument:(int)argument
{
  data = [(NMArgument *)self data];
  v5 = data;
  if (argument == 1)
  {
    [data bytes];
    [v5 length];
    GEOZlibCompress();
  }

  else if (argument == 2)
  {
    [data bytes];
    [v5 length];
    GEOBZ2Compress();
  }

  return 0;
}

- (id)_nm_dictionaryValue
{
  dataValue = [(NMArgument *)self dataValue];
  if (dataValue)
  {

LABEL_4:
    if (![(NMArgument *)self stringToObjectMapsCount])
    {
      v16 = [NSKeyedUnarchiver alloc];
      dataValue2 = [(NMArgument *)self dataValue];
      stringToObjectMaps = [v16 initForReadingFromData:dataValue2 error:0];

      v18 = objc_opt_class();
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      v22 = [NSSet setWithObjects:v18, v19, v20, v21, objc_opt_class(), 0];
      v4 = [stringToObjectMaps decodeObjectOfClasses:v22 forKey:@"d"];

      [stringToObjectMaps finishDecoding];
      goto LABEL_27;
    }

    v4 = +[NSMutableDictionary dictionary];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    stringToObjectMaps = [(NMArgument *)self stringToObjectMaps];
    v6 = [stringToObjectMaps countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v6)
    {
      goto LABEL_27;
    }

    v7 = v6;
    v8 = *v25;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(stringToObjectMaps);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        if ([v10 hasStringValue])
        {
          stringValue = [v10 stringValue];
        }

        else if ([v10 hasDataValue])
        {
          stringValue = [v10 dataValue];
        }

        else if ([v10 hasBoolValue])
        {
          stringValue = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 BOOLValue]);
        }

        else
        {
          if (![v10 hasIntValue])
          {
            v12 = 0;
            goto LABEL_21;
          }

          stringValue = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 intValue]);
        }

        v12 = stringValue;
        if (stringValue)
        {
          v13 = [v10 key];

          if (v13)
          {
            v14 = [v10 key];
            [v4 setObject:v12 forKey:v14];
          }
        }

LABEL_21:

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v15 = [stringToObjectMaps countByEnumeratingWithState:&v24 objects:v28 count:16];
      v7 = v15;
      if (!v15)
      {
LABEL_27:

        goto LABEL_28;
      }
    }
  }

  if ([(NMArgument *)self stringToObjectMapsCount])
  {
    goto LABEL_4;
  }

  v4 = 0;
LABEL_28:

  return v4;
}

- (id)_nm_arrayValue
{
  dataValue = [(NMArgument *)self dataValue];
  if (dataValue)
  {
  }

  else if (![(NMArgument *)self stringListValuesCount])
  {
    stringListValues = 0;
    goto LABEL_8;
  }

  if ([(NMArgument *)self stringListValuesCount])
  {
    stringListValues = [(NMArgument *)self stringListValues];
  }

  else
  {
    v5 = [NSKeyedUnarchiver alloc];
    dataValue2 = [(NMArgument *)self dataValue];
    v7 = [v5 initForReadingFromData:dataValue2 error:0];

    stringListValues = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    [v7 finishDecoding];
  }

LABEL_8:

  return stringListValues;
}

- (id)_nm_errorValue
{
  dataValue = [(NMArgument *)self dataValue];

  if (dataValue)
  {
    v4 = [NSKeyedUnarchiver alloc];
    dataValue2 = [(NMArgument *)self dataValue];
    v6 = [v4 initForReadingFromData:dataValue2 error:0];

    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    v9 = [v6 decodeObjectOfClasses:v8 forKey:@"d"];

    [v6 finishDecoding];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_nm_locationValue
{
  if ([(NMArgument *)self hasLocationValue])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    memset(v28, 0, sizeof(v28));
    [(NMArgument *)self locationValue];
    v3 = vceqz_s32(vand_s8(vdup_n_s32(WORD4(v34)), 0x400000002));
    v4.i64[0] = v3.i32[0];
    v4.i64[1] = v3.i32[1];
    __asm { FMOV            V2.2D, #-1.0 }

    v12 = 0;
    v13 = v29;
    v14 = v30;
    v15 = v28[3];
    v16 = v28[0];
    v17 = *(&v33 + 1);
    v18 = v32;
    v19 = vbslq_s8(v4, _Q2, *&v28[1]);
    v20 = v33;
    v21 = v34;
    v22 = *(&v29 + 1);
    v23 = DWORD1(v34);
    v24 = v31;
    v25 = *(&v30 + 1);
    v26 = 0u;
    v27 = 0u;
    v10 = [[CLLocation alloc] initWithClientLocation:&v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end