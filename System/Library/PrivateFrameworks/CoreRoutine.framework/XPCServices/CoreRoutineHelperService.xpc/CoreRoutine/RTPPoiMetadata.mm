@interface RTPPoiMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)parentAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasFullyCoversTile:(BOOL)tile;
- (void)setHasIsApplePaySupported:(BOOL)supported;
- (void)setHasIsCategoryFiltered:(BOOL)filtered;
- (void)writeTo:(id)to;
@end

@implementation RTPPoiMetadata

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = RTPPoiMetadata;
  [(RTPPoiMetadata *)&v3 dealloc];
}

- (void)setHasFullyCoversTile:(BOOL)tile
{
  if (tile)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsCategoryFiltered:(BOOL)filtered
{
  if (filtered)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (unint64_t)parentAtIndex:(unint64_t)index
{
  p_parents = &self->_parents;
  count = self->_parents.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_parents->list[index];
}

- (void)setHasIsApplePaySupported:(BOOL)supported
{
  if (supported)
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
  dictionaryRepresentation = [(RTPPoiMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
    dictionaryRepresentation = [(RTPLatLng *)location dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"location"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v12 = toCopy;
  if (has)
  {
    muid = self->_muid;
    PBDataWriterWriteUint64Field();
    toCopy = v12;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    fullyCoversTile = self->_fullyCoversTile;
    PBDataWriterWriteBOOLField();
    toCopy = v12;
  }

  if (self->_poiGeometry)
  {
    PBDataWriterWriteDataField();
    toCopy = v12;
  }

  if (self->_location)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  if ((*&self->_has & 8) != 0)
  {
    isCategoryFiltered = self->_isCategoryFiltered;
    PBDataWriterWriteBOOLField();
    toCopy = v12;
  }

  if (self->_parents.count)
  {
    v9 = 0;
    do
    {
      v10 = self->_parents.list[v9];
      PBDataWriterWriteUint64Field();
      toCopy = v12;
      ++v9;
    }

    while (v9 < self->_parents.count);
  }

  if ((*&self->_has & 4) != 0)
  {
    isApplePaySupported = self->_isApplePaySupported;
    PBDataWriterWriteBOOLField();
    toCopy = v12;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[4] = self->_muid;
    *(toCopy + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 56) = self->_fullyCoversTile;
    *(toCopy + 60) |= 2u;
  }

  v9 = toCopy;
  if (self->_poiGeometry)
  {
    [toCopy setPoiGeometry:?];
    toCopy = v9;
  }

  if (self->_location)
  {
    [v9 setLocation:?];
    toCopy = v9;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 58) = self->_isCategoryFiltered;
    *(toCopy + 60) |= 8u;
  }

  if ([(RTPPoiMetadata *)self parentsCount])
  {
    [v9 clearParents];
    parentsCount = [(RTPPoiMetadata *)self parentsCount];
    if (parentsCount)
    {
      v7 = parentsCount;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSData *)self->_poiGeometry copyWithZone:zone];
  v9 = v6[6];
  v6[6] = v8;

  v10 = [(RTPLatLng *)self->_location copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(equalCopy + 60);
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_muid != *(equalCopy + 4))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0)
    {
      goto LABEL_22;
    }

    v11 = *(equalCopy + 56);
    if (self->_fullyCoversTile)
    {
      if ((*(equalCopy + 56) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*(equalCopy + 56))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_22;
  }

  poiGeometry = self->_poiGeometry;
  if (poiGeometry | *(equalCopy + 6) && ![(NSData *)poiGeometry isEqual:?])
  {
    goto LABEL_22;
  }

  location = self->_location;
  if (location | *(equalCopy + 5))
  {
    if (![(RTPLatLng *)location isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v8 = *(equalCopy + 60);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 60) & 8) == 0)
    {
      goto LABEL_22;
    }

    v12 = *(equalCopy + 58);
    if (self->_isCategoryFiltered)
    {
      if ((*(equalCopy + 58) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*(equalCopy + 58))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 60) & 8) != 0)
  {
    goto LABEL_22;
  }

  if (!PBRepeatedUInt64IsEqual())
  {
    goto LABEL_22;
  }

  v9 = (*(equalCopy + 60) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) != 0)
    {
      if (self->_isApplePaySupported)
      {
        if (*(equalCopy + 57))
        {
          goto LABEL_36;
        }
      }

      else if (!*(equalCopy + 57))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 60);
  if (v6)
  {
    self->_muid = *(fromCopy + 4);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 60);
  }

  if ((v6 & 2) != 0)
  {
    self->_fullyCoversTile = *(fromCopy + 56);
    *&self->_has |= 2u;
  }

  v12 = fromCopy;
  if (*(fromCopy + 6))
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

  parentsCount = [v5 parentsCount];
  if (parentsCount)
  {
    v10 = parentsCount;
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