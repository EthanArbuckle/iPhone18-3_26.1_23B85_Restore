@interface RTPBluepoiTile
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)deniedMuidCategoryAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addPoiMetadata:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RTPBluepoiTile

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = RTPBluepoiTile;
  [(RTPBluepoiTile *)&v3 dealloc];
}

- (void)addPoiMetadata:(id)a3
{
  v4 = a3;
  poiMetadatas = self->_poiMetadatas;
  v8 = v4;
  if (!poiMetadatas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_poiMetadatas;
    self->_poiMetadatas = v6;

    v4 = v8;
    poiMetadatas = self->_poiMetadatas;
  }

  [(NSMutableArray *)poiMetadatas addObject:v4];
}

- (unint64_t)deniedMuidCategoryAtIndex:(unint64_t)a3
{
  p_deniedMuidCategorys = &self->_deniedMuidCategorys;
  count = self->_deniedMuidCategorys.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_deniedMuidCategorys->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RTPBluepoiTile;
  v3 = [(RTPBluepoiTile *)&v7 description];
  v4 = [(RTPBluepoiTile *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v6 = [(RTPModelTile *)modelTile dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"model_tile"];
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

          v13 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
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
    v15 = [(RTPCalibrationParameter *)applePayCalibration dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"apple_pay_calibration"];
  }

  nonApplePayCalibration = self->_nonApplePayCalibration;
  if (nonApplePayCalibration)
  {
    v17 = [(RTPCalibrationParameter *)nonApplePayCalibration dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"non_apple_pay_calibration"];
  }

  globalConfig = self->_globalConfig;
  if (globalConfig)
  {
    v19 = [(RTPBluepoiConfig *)globalConfig dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"global_config"];
  }

  v20 = PBRepeatedUInt64NSArray();
  [v3 setObject:v20 forKey:@"denied_muid_category"];

  return v3;
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v40 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
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
              v28 = [a3 position] + 1;
              if (v28 >= [a3 position] && (v29 = objc_msgSend(a3, "position") + 1, v29 <= objc_msgSend(a3, "length")))
              {
                v30 = [a3 data];
                [v30 getBytes:&v40 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
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

            if ([a3 hasError])
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
            if (!PBReaderPlaceMark() || !RTPModelTileReadFrom(v15, a3))
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
            if (!PBReaderPlaceMark() || !RTPPoiMetadataReadFrom(v15, a3))
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
          if (!PBReaderPlaceMark() || !RTPBluepoiConfigReadFrom(v15, a3))
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
              v18 = [a3 position];
              if (v18 >= [a3 length] || (objc_msgSend(a3, "hasError") & 1) != 0)
              {
                break;
              }

              v19 = 0;
              v20 = 0;
              v21 = 0;
              while (1)
              {
                v42 = 0;
                v22 = [a3 position] + 1;
                if (v22 >= [a3 position] && (v23 = objc_msgSend(a3, "position") + 1, v23 <= objc_msgSend(a3, "length")))
                {
                  v24 = [a3 data];
                  [v24 getBytes:&v42 range:{objc_msgSend(a3, "position"), 1}];

                  [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
                }

                else
                {
                  [a3 _setError];
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

              [a3 hasError];
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
              v36 = [a3 position] + 1;
              if (v36 >= [a3 position] && (v37 = objc_msgSend(a3, "position") + 1, v37 <= objc_msgSend(a3, "length")))
              {
                v38 = [a3 data];
                [v38 getBytes:&v40 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
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

            [a3 hasError];
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
          if (!PBReaderPlaceMark() || !RTPCalibrationParameterReadFrom(v15, a3))
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
      v32 = [a3 position];
    }

    while (v32 < [a3 length]);
  }

  LOBYTE(v17) = [a3 hasError] ^ 1;
  return v17;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_tileKey;
    *(v4 + 80) |= 1u;
  }

  v12 = v4;
  if (self->_modelTile)
  {
    [v4 setModelTile:?];
  }

  if ([(RTPBluepoiTile *)self poiMetadatasCount])
  {
    [v12 clearPoiMetadatas];
    v5 = [(RTPBluepoiTile *)self poiMetadatasCount];
    if (v5)
    {
      v6 = v5;
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
    v9 = [(RTPBluepoiTile *)self deniedMuidCategorysCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v12 addDeniedMuidCategory:{-[RTPBluepoiTile deniedMuidCategoryAtIndex:](self, "deniedMuidCategoryAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[4] = self->_tileKey;
    *(v5 + 80) |= 1u;
  }

  v7 = [(RTPModelTile *)self->_modelTile copyWithZone:a3];
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

        v14 = [*(*(&v22 + 1) + 8 * i) copyWithZone:{a3, v22}];
        [v6 addPoiMetadata:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v15 = [(RTPCalibrationParameter *)self->_applePayCalibration copyWithZone:a3];
  v16 = v6[5];
  v6[5] = v15;

  v17 = [(RTPCalibrationParameter *)self->_nonApplePayCalibration copyWithZone:a3];
  v18 = v6[8];
  v6[8] = v17;

  v19 = [(RTPBluepoiConfig *)self->_globalConfig copyWithZone:a3];
  v20 = v6[6];
  v6[6] = v19;

  PBRepeatedUInt64Copy();
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 80);
  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_tileKey != *(v4 + 4))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 80))
  {
LABEL_18:
    IsEqual = 0;
    goto LABEL_19;
  }

  modelTile = self->_modelTile;
  if (modelTile | *(v4 + 7) && ![(RTPModelTile *)modelTile isEqual:?])
  {
    goto LABEL_18;
  }

  poiMetadatas = self->_poiMetadatas;
  if (poiMetadatas | *(v4 + 9))
  {
    if (![(NSMutableArray *)poiMetadatas isEqual:?])
    {
      goto LABEL_18;
    }
  }

  applePayCalibration = self->_applePayCalibration;
  if (applePayCalibration | *(v4 + 5))
  {
    if (![(RTPCalibrationParameter *)applePayCalibration isEqual:?])
    {
      goto LABEL_18;
    }
  }

  nonApplePayCalibration = self->_nonApplePayCalibration;
  if (nonApplePayCalibration | *(v4 + 8))
  {
    if (![(RTPCalibrationParameter *)nonApplePayCalibration isEqual:?])
    {
      goto LABEL_18;
    }
  }

  globalConfig = self->_globalConfig;
  if (globalConfig | *(v4 + 6))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[10])
  {
    self->_tileKey = v4[4];
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

  v19 = [v5 deniedMuidCategorysCount];
  if (v19)
  {
    v20 = v19;
    for (j = 0; j != v20; ++j)
    {
      -[RTPBluepoiTile addDeniedMuidCategory:](self, "addDeniedMuidCategory:", [v5 deniedMuidCategoryAtIndex:j]);
    }
  }
}

@end