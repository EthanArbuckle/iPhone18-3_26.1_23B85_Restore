@interface BMPBAskToBuyEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)status;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsActionUserDevice:(BOOL)device;
- (void)setHasStarRating:(BOOL)rating;
- (void)setHasStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation BMPBAskToBuyEvent

- (int)status
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"pending"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"declined"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"approved"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasStarRating:(BOOL)rating
{
  if (rating)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsActionUserDevice:(BOOL)device
{
  if (device)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBAskToBuyEvent;
  v4 = [(BMPBAskToBuyEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBAskToBuyEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  requestID = self->_requestID;
  if (requestID)
  {
    [dictionary setObject:requestID forKey:@"requestID"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventTime];
    [v5 setObject:v7 forKey:@"eventTime"];
  }

  userID = self->_userID;
  if (userID)
  {
    [v5 setObject:userID forKey:@"userID"];
  }

  actionUserID = self->_actionUserID;
  if (actionUserID)
  {
    [v5 setObject:actionUserID forKey:@"actionUserID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    status = self->_status;
    if (status >= 4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v11 = off_1E6E53140[status];
    }

    [v5 setObject:v11 forKey:@"status"];
  }

  itemTitle = self->_itemTitle;
  if (itemTitle)
  {
    [v5 setObject:itemTitle forKey:@"itemTitle"];
  }

  itemDescription = self->_itemDescription;
  if (itemDescription)
  {
    [v5 setObject:itemDescription forKey:@"itemDescription"];
  }

  itemLocalizedPrice = self->_itemLocalizedPrice;
  if (itemLocalizedPrice)
  {
    [v5 setObject:itemLocalizedPrice forKey:@"itemLocalizedPrice"];
  }

  thumbnailPath = self->_thumbnailPath;
  if (thumbnailPath)
  {
    [v5 setObject:thumbnailPath forKey:@"thumbnailPath"];
  }

  ageRating = self->_ageRating;
  if (ageRating)
  {
    [v5 setObject:ageRating forKey:@"ageRating"];
  }

  if ((*&self->_has & 2) != 0)
  {
    *&v4 = self->_starRating;
    v17 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v5 setObject:v17 forKey:@"starRating"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v5 setObject:productType forKey:@"productType"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_isActionUserDevice];
    [v5 setObject:v19 forKey:@"isActionUserDevice"];
  }

  storeLink = self->_storeLink;
  if (storeLink)
  {
    [v5 setObject:storeLink forKey:@"storeLink"];
  }

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (*&self->_has)
  {
    eventTime = self->_eventTime;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

  if (self->_userID)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_actionUserID)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  if (self->_itemTitle)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_itemDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_itemLocalizedPrice)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_thumbnailPath)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_ageRating)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    starRating = self->_starRating;
    PBDataWriterWriteFloatField();
    toCopy = v9;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if ((*&self->_has & 8) != 0)
  {
    isActionUserDevice = self->_isActionUserDevice;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

  if (self->_storeLink)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestID)
  {
    [toCopy setRequestID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_eventTime;
    *(toCopy + 108) |= 1u;
  }

  if (self->_userID)
  {
    [v5 setUserID:?];
    toCopy = v5;
  }

  if (self->_actionUserID)
  {
    [v5 setActionUserID:?];
    toCopy = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 19) = self->_status;
    *(toCopy + 108) |= 4u;
  }

  if (self->_itemTitle)
  {
    [v5 setItemTitle:?];
    toCopy = v5;
  }

  if (self->_itemDescription)
  {
    [v5 setItemDescription:?];
    toCopy = v5;
  }

  if (self->_itemLocalizedPrice)
  {
    [v5 setItemLocalizedPrice:?];
    toCopy = v5;
  }

  if (self->_thumbnailPath)
  {
    [v5 setThumbnailPath:?];
    toCopy = v5;
  }

  if (self->_ageRating)
  {
    [v5 setAgeRating:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 18) = LODWORD(self->_starRating);
    *(toCopy + 108) |= 2u;
  }

  if (self->_productType)
  {
    [v5 setProductType:?];
    toCopy = v5;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 104) = self->_isActionUserDevice;
    *(toCopy + 108) |= 8u;
  }

  if (self->_storeLink)
  {
    [v5 setStoreLink:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestID copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_eventTime;
    *(v5 + 108) |= 1u;
  }

  v8 = [(NSString *)self->_userID copyWithZone:zone];
  v9 = *(v5 + 96);
  *(v5 + 96) = v8;

  v10 = [(NSString *)self->_actionUserID copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 76) = self->_status;
    *(v5 + 108) |= 4u;
  }

  v12 = [(NSString *)self->_itemTitle copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSString *)self->_itemDescription copyWithZone:zone];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  v16 = [(NSString *)self->_itemLocalizedPrice copyWithZone:zone];
  v17 = *(v5 + 40);
  *(v5 + 40) = v16;

  v18 = [(NSString *)self->_thumbnailPath copyWithZone:zone];
  v19 = *(v5 + 88);
  *(v5 + 88) = v18;

  v20 = [(NSString *)self->_ageRating copyWithZone:zone];
  v21 = *(v5 + 24);
  *(v5 + 24) = v20;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 72) = self->_starRating;
    *(v5 + 108) |= 2u;
  }

  v22 = [(NSString *)self->_productType copyWithZone:zone];
  v23 = *(v5 + 56);
  *(v5 + 56) = v22;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 104) = self->_isActionUserDevice;
    *(v5 + 108) |= 8u;
  }

  v24 = [(NSString *)self->_storeLink copyWithZone:zone];
  v25 = *(v5 + 80);
  *(v5 + 80) = v24;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  requestID = self->_requestID;
  if (requestID | *(equalCopy + 8))
  {
    if (![(NSString *)requestID isEqual:?])
    {
      goto LABEL_41;
    }
  }

  v6 = *(equalCopy + 108);
  if (*&self->_has)
  {
    if ((*(equalCopy + 108) & 1) == 0 || self->_eventTime != *(equalCopy + 1))
    {
      goto LABEL_41;
    }
  }

  else if (*(equalCopy + 108))
  {
    goto LABEL_41;
  }

  userID = self->_userID;
  if (userID | *(equalCopy + 12) && ![(NSString *)userID isEqual:?])
  {
    goto LABEL_41;
  }

  actionUserID = self->_actionUserID;
  if (actionUserID | *(equalCopy + 2))
  {
    if (![(NSString *)actionUserID isEqual:?])
    {
      goto LABEL_41;
    }
  }

  v9 = *(equalCopy + 108);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 108) & 4) == 0 || self->_status != *(equalCopy + 19))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 108) & 4) != 0)
  {
    goto LABEL_41;
  }

  itemTitle = self->_itemTitle;
  if (itemTitle | *(equalCopy + 6) && ![(NSString *)itemTitle isEqual:?])
  {
    goto LABEL_41;
  }

  itemDescription = self->_itemDescription;
  if (itemDescription | *(equalCopy + 4))
  {
    if (![(NSString *)itemDescription isEqual:?])
    {
      goto LABEL_41;
    }
  }

  itemLocalizedPrice = self->_itemLocalizedPrice;
  if (itemLocalizedPrice | *(equalCopy + 5))
  {
    if (![(NSString *)itemLocalizedPrice isEqual:?])
    {
      goto LABEL_41;
    }
  }

  thumbnailPath = self->_thumbnailPath;
  if (thumbnailPath | *(equalCopy + 11))
  {
    if (![(NSString *)thumbnailPath isEqual:?])
    {
      goto LABEL_41;
    }
  }

  ageRating = self->_ageRating;
  if (ageRating | *(equalCopy + 3))
  {
    if (![(NSString *)ageRating isEqual:?])
    {
      goto LABEL_41;
    }
  }

  has = self->_has;
  v16 = *(equalCopy + 108);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 108) & 2) == 0 || self->_starRating != *(equalCopy + 18))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 108) & 2) != 0)
  {
    goto LABEL_41;
  }

  productType = self->_productType;
  if (productType | *(equalCopy + 7))
  {
    if (![(NSString *)productType isEqual:?])
    {
      goto LABEL_41;
    }

    has = self->_has;
  }

  v18 = *(equalCopy + 108);
  if ((has & 8) == 0)
  {
    if ((*(equalCopy + 108) & 8) == 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    v20 = 0;
    goto LABEL_42;
  }

  if ((*(equalCopy + 108) & 8) == 0)
  {
    goto LABEL_41;
  }

  v22 = *(equalCopy + 104);
  if (self->_isActionUserDevice)
  {
    if ((*(equalCopy + 104) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (*(equalCopy + 104))
  {
    goto LABEL_41;
  }

LABEL_38:
  storeLink = self->_storeLink;
  if (storeLink | *(equalCopy + 10))
  {
    v20 = [(NSString *)storeLink isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_42:

  return v20;
}

- (unint64_t)hash
{
  v27 = [(NSString *)self->_requestID hash];
  if (*&self->_has)
  {
    eventTime = self->_eventTime;
    if (eventTime < 0.0)
    {
      eventTime = -eventTime;
    }

    *v3.i64 = floor(eventTime + 0.5);
    v7 = (eventTime - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v26 = [(NSString *)self->_userID hash];
  v25 = [(NSString *)self->_actionUserID hash];
  if ((*&self->_has & 4) != 0)
  {
    v9 = [(NSString *)self->_itemTitle hash];
  }

  else
  {
    v9 = [(NSString *)self->_itemTitle hash];
  }

  v10 = v9;
  v11 = [(NSString *)self->_itemDescription hash];
  v12 = [(NSString *)self->_itemLocalizedPrice hash];
  v13 = [(NSString *)self->_thumbnailPath hash];
  v14 = [(NSString *)self->_ageRating hash];
  if ((*&self->_has & 2) != 0)
  {
    starRating = self->_starRating;
    if (starRating < 0.0)
    {
      starRating = -starRating;
    }

    *v15.i32 = floorf(starRating + 0.5);
    v19 = (starRating - *v15.i32) * 1.8447e19;
    *v16.i32 = *v15.i32 - (truncf(*v15.i32 * 5.421e-20) * 1.8447e19);
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v17 = 2654435761u * *vbslq_s8(v20, v16, v15).i32;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabsf(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = [(NSString *)self->_productType hash];
  if ((*&self->_has & 8) != 0)
  {
    v22 = 2654435761 * self->_isActionUserDevice;
  }

  else
  {
    v22 = 0;
  }

  return v5 ^ v27 ^ v26 ^ v25 ^ v24 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v17 ^ v21 ^ v22 ^ [(NSString *)self->_storeLink hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 8))
  {
    [(BMPBAskToBuyEvent *)self setRequestID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 108))
  {
    self->_eventTime = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 12))
  {
    [(BMPBAskToBuyEvent *)self setUserID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(BMPBAskToBuyEvent *)self setActionUserID:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 108) & 4) != 0)
  {
    self->_status = *(fromCopy + 19);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 6))
  {
    [(BMPBAskToBuyEvent *)self setItemTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(BMPBAskToBuyEvent *)self setItemDescription:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(BMPBAskToBuyEvent *)self setItemLocalizedPrice:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 11))
  {
    [(BMPBAskToBuyEvent *)self setThumbnailPath:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(BMPBAskToBuyEvent *)self setAgeRating:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 108) & 2) != 0)
  {
    self->_starRating = *(fromCopy + 18);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 7))
  {
    [(BMPBAskToBuyEvent *)self setProductType:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 108) & 8) != 0)
  {
    self->_isActionUserDevice = *(fromCopy + 104);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 10))
  {
    [(BMPBAskToBuyEvent *)self setStoreLink:?];
    fromCopy = v5;
  }
}

@end