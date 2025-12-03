@interface RTPBluepoiTile
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)deniedMuidCategoryAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addPoiMetadata:(id)metadata;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation RTPBluepoiTile

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = RTPBluepoiTile;
  [(RTPBluepoiTile *)&v3 dealloc];
}

- (void)addPoiMetadata:(id)metadata
{
  metadataCopy = metadata;
  poiMetadatas = self->_poiMetadatas;
  v8 = metadataCopy;
  if (!poiMetadatas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_poiMetadatas;
    self->_poiMetadatas = v6;

    metadataCopy = v8;
    poiMetadatas = self->_poiMetadatas;
  }

  [(NSMutableArray *)poiMetadatas addObject:metadataCopy];
}

- (unint64_t)deniedMuidCategoryAtIndex:(unint64_t)index
{
  p_deniedMuidCategorys = &self->_deniedMuidCategorys;
  count = self->_deniedMuidCategorys.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_deniedMuidCategorys->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RTPBluepoiTile;
  v3 = [(RTPBluepoiTile *)&v7 description];
  dictionaryRepresentation = [(RTPBluepoiTile *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_tileKey];
    [v3 setObject:v4 forKey:@"tile_key"];
  }

  modelTile = self->_modelTile;
  if (modelTile)
  {
    dictionaryRepresentation = [(RTPModelTile *)modelTile dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"model_tile"];
  }

  if ([(NSMutableArray *)self->_poiMetadatas count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_poiMetadatas, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = self->_poiMetadatas;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation2];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"poi_metadata"];
  }

  applePayCalibration = self->_applePayCalibration;
  if (applePayCalibration)
  {
    dictionaryRepresentation3 = [(RTPCalibrationParameter *)applePayCalibration dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"apple_pay_calibration"];
  }

  nonApplePayCalibration = self->_nonApplePayCalibration;
  if (nonApplePayCalibration)
  {
    dictionaryRepresentation4 = [(RTPCalibrationParameter *)nonApplePayCalibration dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"non_apple_pay_calibration"];
  }

  globalConfig = self->_globalConfig;
  if (globalConfig)
  {
    dictionaryRepresentation5 = [(RTPBluepoiConfig *)globalConfig dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation5 forKey:@"global_config"];
  }

  v20 = PBRepeatedUInt64NSArray();
  [v3 setObject:v20 forKey:@"denied_muid_category"];

  return v3;
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v40 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v40 & 0x7F) << v6;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) <= 3)
      {
        switch(v14)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *&self->_has |= 1u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v28 = [from position] + 1;
              if (v28 >= [from position] && (v29 = objc_msgSend(from, "position") + 1, v29 <= objc_msgSend(from, "length")))
              {
                data2 = [from data];
                [data2 getBytes:&v40 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v27 |= (v40 & 0x7F) << v25;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v12 = v26++ >= 9;
              if (v12)
              {
                v31 = 0;
                goto LABEL_71;
              }
            }

            if ([from hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v27;
            }

LABEL_71:
            self->_tileKey = v31;
            goto LABEL_66;
          case 2:
            v15 = objc_alloc_init(RTPModelTile);
            objc_storeStrong(&self->_modelTile, v15);
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !RTPModelTileReadFrom(v15, from))
            {
LABEL_86:

LABEL_87:
              LOBYTE(v17) = 0;
              return v17;
            }

            goto LABEL_65;
          case 3:
            v15 = objc_alloc_init(RTPPoiMetadata);
            [(RTPBluepoiTile *)self addPoiMetadata:v15];
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !RTPPoiMetadataReadFrom(v15, from))
            {
              goto LABEL_86;
            }

            goto LABEL_65;
        }
      }

      else if (v14 > 9)
      {
        if (v14 == 10)
        {
          v15 = objc_alloc_init(RTPBluepoiConfig);
          objc_storeStrong(&self->_globalConfig, v15);
          v40 = 0;
          v41 = 0;
          if (!PBReaderPlaceMark() || !RTPBluepoiConfigReadFrom(v15, from))
          {
            goto LABEL_86;
          }

          goto LABEL_65;
        }

        if (v14 == 11)
        {
          if ((v13 & 7) == 2)
          {
            v40 = 0;
            v41 = 0;
            v17 = PBReaderPlaceMark();
            if (!v17)
            {
              return v17;
            }

            while (1)
            {
              position2 = [from position];
              if (position2 >= [from length] || (objc_msgSend(from, "hasError") & 1) != 0)
              {
                break;
              }

              v19 = 0;
              v20 = 0;
              v21 = 0;
              while (1)
              {
                v42 = 0;
                v22 = [from position] + 1;
                if (v22 >= [from position] && (v23 = objc_msgSend(from, "position") + 1, v23 <= objc_msgSend(from, "length")))
                {
                  data3 = [from data];
                  [data3 getBytes:&v42 range:{objc_msgSend(from, "position"), 1}];

                  [from setPosition:{objc_msgSend(from, "position") + 1}];
                }

                else
                {
                  [from _setError];
                }

                v21 |= (v42 & 0x7F) << v19;
                if ((v42 & 0x80) == 0)
                {
                  break;
                }

                v19 += 7;
                v12 = v20++ >= 9;
                if (v12)
                {
                  goto LABEL_44;
                }
              }

              [from hasError];
LABEL_44:
              PBRepeatedUInt64Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            while (1)
            {
              LOBYTE(v40) = 0;
              v36 = [from position] + 1;
              if (v36 >= [from position] && (v37 = objc_msgSend(from, "position") + 1, v37 <= objc_msgSend(from, "length")))
              {
                data4 = [from data];
                [data4 getBytes:&v40 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v35 |= (v40 & 0x7F) << v33;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v12 = v34++ >= 9;
              if (v12)
              {
                goto LABEL_83;
              }
            }

            [from hasError];
LABEL_83:
            PBRepeatedUInt64Add();
          }

          goto LABEL_66;
        }
      }

      else
      {
        if (v14 == 4)
        {
          v15 = objc_alloc_init(RTPCalibrationParameter);
          v16 = 40;
          goto LABEL_57;
        }

        if (v14 == 5)
        {
          v15 = objc_alloc_init(RTPCalibrationParameter);
          v16 = 64;
LABEL_57:
          objc_storeStrong(&self->PBCodable_opaque[v16], v15);
          v40 = 0;
          v41 = 0;
          if (!PBReaderPlaceMark() || !RTPCalibrationParameterReadFrom(v15, from))
          {
            goto LABEL_86;
          }

LABEL_65:
          PBReaderRecallMark();

          goto LABEL_66;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_87;
      }

LABEL_66:
      position3 = [from position];
    }

    while (position3 < [from length]);
  }

  LOBYTE(v17) = [from hasError] ^ 1;
  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    tileKey = self->_tileKey;
    PBDataWriterWriteUint64Field();
  }

  if (self->_modelTile)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_poiMetadatas;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (self->_applePayCalibration)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_nonApplePayCalibration)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_globalConfig)
  {
    PBDataWriterWriteSubmessage();
  }

  p_deniedMuidCategorys = &self->_deniedMuidCategorys;
  if (p_deniedMuidCategorys->count)
  {
    v13 = 0;
    do
    {
      v14 = p_deniedMuidCategorys->list[v13];
      PBDataWriterWriteUint64Field();
      ++v13;
    }

    while (v13 < p_deniedMuidCategorys->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_tileKey;
    *(toCopy + 80) |= 1u;
  }

  v12 = toCopy;
  if (self->_modelTile)
  {
    [toCopy setModelTile:?];
  }

  if ([(RTPBluepoiTile *)self poiMetadatasCount])
  {
    [v12 clearPoiMetadatas];
    poiMetadatasCount = [(RTPBluepoiTile *)self poiMetadatasCount];
    if (poiMetadatasCount)
    {
      v6 = poiMetadatasCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(RTPBluepoiTile *)self poiMetadataAtIndex:i];
        [v12 addPoiMetadata:v8];
      }
    }
  }

  if (self->_applePayCalibration)
  {
    [v12 setApplePayCalibration:?];
  }

  if (self->_nonApplePayCalibration)
  {
    [v12 setNonApplePayCalibration:?];
  }

  if (self->_globalConfig)
  {
    [v12 setGlobalConfig:?];
  }

  if ([(RTPBluepoiTile *)self deniedMuidCategorysCount])
  {
    [v12 clearDeniedMuidCategorys];
    deniedMuidCategorysCount = [(RTPBluepoiTile *)self deniedMuidCategorysCount];
    if (deniedMuidCategorysCount)
    {
      v10 = deniedMuidCategorysCount;
      for (j = 0; j != v10; ++j)
      {
        [v12 addDeniedMuidCategory:{-[RTPBluepoiTile deniedMuidCategoryAtIndex:](self, "deniedMuidCategoryAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[4] = self->_tileKey;
    *(v5 + 80) |= 1u;
  }

  v7 = [(RTPModelTile *)self->_modelTile copyWithZone:zone];
  v8 = v6[7];
  v6[7] = v7;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = self->_poiMetadatas;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v22 + 1) + 8 * i) copyWithZone:{zone, v22}];
        [v6 addPoiMetadata:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v15 = [(RTPCalibrationParameter *)self->_applePayCalibration copyWithZone:zone];
  v16 = v6[5];
  v6[5] = v15;

  v17 = [(RTPCalibrationParameter *)self->_nonApplePayCalibration copyWithZone:zone];
  v18 = v6[8];
  v6[8] = v17;

  v19 = [(RTPBluepoiConfig *)self->_globalConfig copyWithZone:zone];
  v20 = v6[6];
  v6[6] = v19;

  PBRepeatedUInt64Copy();
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(equalCopy + 80);
  if (*&self->_has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_tileKey != *(equalCopy + 4))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 80))
  {
LABEL_18:
    IsEqual = 0;
    goto LABEL_19;
  }

  modelTile = self->_modelTile;
  if (modelTile | *(equalCopy + 7) && ![(RTPModelTile *)modelTile isEqual:?])
  {
    goto LABEL_18;
  }

  poiMetadatas = self->_poiMetadatas;
  if (poiMetadatas | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)poiMetadatas isEqual:?])
    {
      goto LABEL_18;
    }
  }

  applePayCalibration = self->_applePayCalibration;
  if (applePayCalibration | *(equalCopy + 5))
  {
    if (![(RTPCalibrationParameter *)applePayCalibration isEqual:?])
    {
      goto LABEL_18;
    }
  }

  nonApplePayCalibration = self->_nonApplePayCalibration;
  if (nonApplePayCalibration | *(equalCopy + 8))
  {
    if (![(RTPCalibrationParameter *)nonApplePayCalibration isEqual:?])
    {
      goto LABEL_18;
    }
  }

  globalConfig = self->_globalConfig;
  if (globalConfig | *(equalCopy + 6))
  {
    if (![(RTPBluepoiConfig *)globalConfig isEqual:?])
    {
      goto LABEL_18;
    }
  }

  IsEqual = PBRepeatedUInt64IsEqual();
LABEL_19:

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_tileKey;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(RTPModelTile *)self->_modelTile hash]^ v3;
  v5 = [(NSMutableArray *)self->_poiMetadatas hash];
  v6 = v4 ^ v5 ^ [(RTPCalibrationParameter *)self->_applePayCalibration hash];
  v7 = [(RTPCalibrationParameter *)self->_nonApplePayCalibration hash];
  v8 = v7 ^ [(RTPBluepoiConfig *)self->_globalConfig hash];
  return v6 ^ v8 ^ PBRepeatedUInt64Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[10])
  {
    self->_tileKey = fromCopy[4];
    *&self->_has |= 1u;
  }

  modelTile = self->_modelTile;
  v7 = *(v5 + 7);
  if (modelTile)
  {
    if (v7)
    {
      [(RTPModelTile *)modelTile mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(RTPBluepoiTile *)self setModelTile:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = *(v5 + 9);
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(RTPBluepoiTile *)self addPoiMetadata:*(*(&v22 + 1) + 8 * i), v22];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  applePayCalibration = self->_applePayCalibration;
  v14 = *(v5 + 5);
  if (applePayCalibration)
  {
    if (v14)
    {
      [(RTPCalibrationParameter *)applePayCalibration mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(RTPBluepoiTile *)self setApplePayCalibration:?];
  }

  nonApplePayCalibration = self->_nonApplePayCalibration;
  v16 = *(v5 + 8);
  if (nonApplePayCalibration)
  {
    if (v16)
    {
      [(RTPCalibrationParameter *)nonApplePayCalibration mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(RTPBluepoiTile *)self setNonApplePayCalibration:?];
  }

  globalConfig = self->_globalConfig;
  v18 = *(v5 + 6);
  if (globalConfig)
  {
    if (v18)
    {
      [(RTPBluepoiConfig *)globalConfig mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(RTPBluepoiTile *)self setGlobalConfig:?];
  }

  deniedMuidCategorysCount = [v5 deniedMuidCategorysCount];
  if (deniedMuidCategorysCount)
  {
    v20 = deniedMuidCategorysCount;
    for (j = 0; j != v20; ++j)
    {
      -[RTPBluepoiTile addDeniedMuidCategory:](self, "addDeniedMuidCategory:", [v5 deniedMuidCategoryAtIndex:j]);
    }
  }
}

@end