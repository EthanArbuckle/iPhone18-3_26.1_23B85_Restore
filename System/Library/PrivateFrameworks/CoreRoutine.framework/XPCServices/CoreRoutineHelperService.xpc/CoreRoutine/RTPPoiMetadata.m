@interface RTPPoiMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)parentAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasFullyCoversTile:(BOOL)a3;
- (void)setHasIsApplePaySupported:(BOOL)a3;
- (void)setHasIsCategoryFiltered:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RTPPoiMetadata

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = RTPPoiMetadata;
  [(RTPPoiMetadata *)&v3 dealloc];
}

- (void)setHasFullyCoversTile:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsCategoryFiltered:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (unint64_t)parentAtIndex:(unint64_t)a3
{
  p_parents = &self->_parents;
  count = self->_parents.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_parents->list[a3];
}

- (void)setHasIsApplePaySupported:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RTPPoiMetadata;
  v3 = [(RTPPoiMetadata *)&v7 description];
  v4 = [(RTPPoiMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:self->_muid];
    [v3 setObject:v5 forKey:@"muid"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithBool:self->_fullyCoversTile];
    [v3 setObject:v6 forKey:@"fully_covers_tile"];
  }

  poiGeometry = self->_poiGeometry;
  if (poiGeometry)
  {
    [v3 setObject:poiGeometry forKey:@"poi_geometry"];
  }

  location = self->_location;
  if (location)
  {
    v9 = [(RTPLatLng *)location dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"location"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v10 = [NSNumber numberWithBool:self->_isCategoryFiltered];
    [v3 setObject:v10 forKey:@"is_category_filtered"];
  }

  v11 = PBRepeatedUInt64NSArray();
  [v3 setObject:v11 forKey:@"parent"];

  if ((*&self->_has & 4) != 0)
  {
    v12 = [NSNumber numberWithBool:self->_isApplePaySupported];
    [v3 setObject:v12 forKey:@"is_apple_pay_supported"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v12 = v4;
  if (has)
  {
    muid = self->_muid;
    PBDataWriterWriteUint64Field();
    v4 = v12;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    fullyCoversTile = self->_fullyCoversTile;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

  if (self->_poiGeometry)
  {
    PBDataWriterWriteDataField();
    v4 = v12;
  }

  if (self->_location)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  if ((*&self->_has & 8) != 0)
  {
    isCategoryFiltered = self->_isCategoryFiltered;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

  if (self->_parents.count)
  {
    v9 = 0;
    do
    {
      v10 = self->_parents.list[v9];
      PBDataWriterWriteUint64Field();
      v4 = v12;
      ++v9;
    }

    while (v9 < self->_parents.count);
  }

  if ((*&self->_has & 4) != 0)
  {
    isApplePaySupported = self->_isApplePaySupported;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[4] = self->_muid;
    *(v4 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 56) = self->_fullyCoversTile;
    *(v4 + 60) |= 2u;
  }

  v9 = v4;
  if (self->_poiGeometry)
  {
    [v4 setPoiGeometry:?];
    v4 = v9;
  }

  if (self->_location)
  {
    [v9 setLocation:?];
    v4 = v9;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 58) = self->_isCategoryFiltered;
    *(v4 + 60) |= 8u;
  }

  if ([(RTPPoiMetadata *)self parentsCount])
  {
    [v9 clearParents];
    v6 = [(RTPPoiMetadata *)self parentsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v9 addParent:{-[RTPPoiMetadata parentAtIndex:](self, "parentAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v9[57] = self->_isApplePaySupported;
    v9[60] |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[4] = self->_muid;
    *(v5 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 56) = self->_fullyCoversTile;
    *(v5 + 60) |= 2u;
  }

  v8 = [(NSData *)self->_poiGeometry copyWithZone:a3];
  v9 = v6[6];
  v6[6] = v8;

  v10 = [(RTPLatLng *)self->_location copyWithZone:a3];
  v11 = v6[5];
  v6[5] = v10;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 58) = self->_isCategoryFiltered;
    *(v6 + 60) |= 8u;
  }

  PBRepeatedUInt64Copy();
  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 57) = self->_isApplePaySupported;
    *(v6 + 60) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(v4 + 60);
  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_muid != *(v4 + 4))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0)
    {
      goto LABEL_22;
    }

    v11 = *(v4 + 56);
    if (self->_fullyCoversTile)
    {
      if ((*(v4 + 56) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*(v4 + 56))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
    goto LABEL_22;
  }

  poiGeometry = self->_poiGeometry;
  if (poiGeometry | *(v4 + 6) && ![(NSData *)poiGeometry isEqual:?])
  {
    goto LABEL_22;
  }

  location = self->_location;
  if (location | *(v4 + 5))
  {
    if (![(RTPLatLng *)location isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v8 = *(v4 + 60);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 60) & 8) == 0)
    {
      goto LABEL_22;
    }

    v12 = *(v4 + 58);
    if (self->_isCategoryFiltered)
    {
      if ((*(v4 + 58) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*(v4 + 58))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 60) & 8) != 0)
  {
    goto LABEL_22;
  }

  if (!PBRepeatedUInt64IsEqual())
  {
    goto LABEL_22;
  }

  v9 = (*(v4 + 60) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 60) & 4) != 0)
    {
      if (self->_isApplePaySupported)
      {
        if (*(v4 + 57))
        {
          goto LABEL_36;
        }
      }

      else if (!*(v4 + 57))
      {
LABEL_36:
        v9 = 1;
        goto LABEL_23;
      }
    }

LABEL_22:
    v9 = 0;
  }

LABEL_23:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_muid;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_fullyCoversTile;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSData *)self->_poiGeometry hash];
  v6 = [(RTPLatLng *)self->_location hash];
  if ((*&self->_has & 8) != 0)
  {
    v7 = 2654435761 * self->_isCategoryFiltered;
  }

  else
  {
    v7 = 0;
  }

  v8 = PBRepeatedUInt64Hash();
  if ((*&self->_has & 4) != 0)
  {
    v9 = 2654435761 * self->_isApplePaySupported;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 60);
  if (v6)
  {
    self->_muid = *(v4 + 4);
    *&self->_has |= 1u;
    v6 = *(v4 + 60);
  }

  if ((v6 & 2) != 0)
  {
    self->_fullyCoversTile = *(v4 + 56);
    *&self->_has |= 2u;
  }

  v12 = v4;
  if (*(v4 + 6))
  {
    [(RTPPoiMetadata *)self setPoiGeometry:?];
    v5 = v12;
  }

  location = self->_location;
  v8 = *(v5 + 5);
  if (location)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(RTPLatLng *)location mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(RTPPoiMetadata *)self setLocation:?];
  }

  v5 = v12;
LABEL_13:
  if ((v5[60] & 8) != 0)
  {
    self->_isCategoryFiltered = v5[58];
    *&self->_has |= 8u;
  }

  v9 = [v5 parentsCount];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      -[RTPPoiMetadata addParent:](self, "addParent:", [v12 parentAtIndex:i]);
    }
  }

  if ((v12[60] & 4) != 0)
  {
    self->_isApplePaySupported = v12[57];
    *&self->_has |= 4u;
  }
}

@end