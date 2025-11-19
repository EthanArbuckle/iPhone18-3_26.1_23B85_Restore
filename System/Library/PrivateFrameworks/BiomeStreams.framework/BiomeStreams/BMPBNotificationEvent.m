@interface BMPBNotificationEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsUsageType:(id)a3;
- (int)usageType;
- (unint64_t)hash;
- (void)addContactIDs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBadge:(BOOL)a3;
- (void)setHasIsGroupMessage:(BOOL)a3;
- (void)setHasUsageType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBNotificationEvent

- (int)usageType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_usageType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUsageType:(BOOL)a3
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

- (int)StringAsUsageType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Receive"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DefaultAction"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SuppAction"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Clear"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ClearAll"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"IndirectClear"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Hidden"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Orb"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Dismiss"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"AppLaunch"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"Expired"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"TapCoalesce"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"Deduped"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"DevActivated"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"DevUnlocked"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"Pulldown"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"ReceivedAndDeliveredActively"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"ReceivedAndDeliveredPassively"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"Modified"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"TapExpand"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasBadge:(BOOL)a3
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

- (void)addContactIDs:(id)a3
{
  v4 = a3;
  contactIDs = self->_contactIDs;
  v8 = v4;
  if (!contactIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contactIDs;
    self->_contactIDs = v6;

    v4 = v8;
    contactIDs = self->_contactIDs;
  }

  [(NSMutableArray *)contactIDs addObject:v4];
}

- (void)setHasIsGroupMessage:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBNotificationEvent;
  v4 = [(BMPBNotificationEvent *)&v8 description];
  v5 = [(BMPBNotificationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    [v3 setObject:uniqueID forKey:@"uniqueID"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v4 setObject:v7 forKey:@"absoluteTimestamp"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    usageType = self->_usageType;
    if (usageType >= 0x15)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_usageType];
    }

    else
    {
      v9 = off_1E6E540D0[usageType];
    }

    [v4 setObject:v9 forKey:@"usageType"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v4 setObject:bundleID forKey:@"bundleID"];
  }

  notificationID = self->_notificationID;
  if (notificationID)
  {
    [v4 setObject:notificationID forKey:@"notificationID"];
  }

  deviceID = self->_deviceID;
  if (deviceID)
  {
    [v4 setObject:deviceID forKey:@"deviceID"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v4 setObject:subtitle forKey:@"subtitle"];
  }

  body = self->_body;
  if (body)
  {
    [v4 setObject:body forKey:@"body"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_badge];
    [v4 setObject:v16 forKey:@"badge"];
  }

  threadID = self->_threadID;
  if (threadID)
  {
    [v4 setObject:threadID forKey:@"threadID"];
  }

  categoryID = self->_categoryID;
  if (categoryID)
  {
    [v4 setObject:categoryID forKey:@"categoryID"];
  }

  sectionID = self->_sectionID;
  if (sectionID)
  {
    [v4 setObject:sectionID forKey:@"sectionID"];
  }

  contactIDs = self->_contactIDs;
  if (contactIDs)
  {
    [v4 setObject:contactIDs forKey:@"contactIDs"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_isGroupMessage];
    [v4 setObject:v21 forKey:@"isGroupMessage"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    usageType = self->_usageType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_notificationID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_body)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    badge = self->_badge;
    PBDataWriterWriteUint64Field();
  }

  if (self->_threadID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_categoryID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_contactIDs;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if ((*&self->_has & 8) != 0)
  {
    isGroupMessage = self->_isGroupMessage;
    PBDataWriterWriteBOOLField();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_uniqueID)
  {
    [v4 setUniqueID:?];
    v4 = v10;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_absoluteTimestamp;
    v4[120] |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 28) = self->_usageType;
    v4[120] |= 4u;
  }

  if (self->_bundleID)
  {
    [v10 setBundleID:?];
    v4 = v10;
  }

  if (self->_notificationID)
  {
    [v10 setNotificationID:?];
    v4 = v10;
  }

  if (self->_deviceID)
  {
    [v10 setDeviceID:?];
    v4 = v10;
  }

  if (self->_title)
  {
    [v10 setTitle:?];
    v4 = v10;
  }

  if (self->_subtitle)
  {
    [v10 setSubtitle:?];
    v4 = v10;
  }

  if (self->_body)
  {
    [v10 setBody:?];
    v4 = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = self->_badge;
    v4[120] |= 2u;
  }

  if (self->_threadID)
  {
    [v10 setThreadID:?];
  }

  if (self->_categoryID)
  {
    [v10 setCategoryID:?];
  }

  if (self->_sectionID)
  {
    [v10 setSectionID:?];
  }

  if ([(BMPBNotificationEvent *)self contactIDsCount])
  {
    [v10 clearContactIDs];
    v6 = [(BMPBNotificationEvent *)self contactIDsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(BMPBNotificationEvent *)self contactIDsAtIndex:i];
        [v10 addContactIDs:v9];
      }
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    v10[116] = self->_isGroupMessage;
    v10[120] |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueID copyWithZone:a3];
  v7 = *(v5 + 104);
  *(v5 + 104) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 120) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 112) = self->_usageType;
    *(v5 + 120) |= 4u;
  }

  v9 = [(NSString *)self->_bundleID copyWithZone:a3];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  v11 = [(NSString *)self->_notificationID copyWithZone:a3];
  v12 = *(v5 + 64);
  *(v5 + 64) = v11;

  v13 = [(NSString *)self->_deviceID copyWithZone:a3];
  v14 = *(v5 + 56);
  *(v5 + 56) = v13;

  v15 = [(NSString *)self->_title copyWithZone:a3];
  v16 = *(v5 + 96);
  *(v5 + 96) = v15;

  v17 = [(NSString *)self->_subtitle copyWithZone:a3];
  v18 = *(v5 + 80);
  *(v5 + 80) = v17;

  v19 = [(NSString *)self->_body copyWithZone:a3];
  v20 = *(v5 + 24);
  *(v5 + 24) = v19;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_badge;
    *(v5 + 120) |= 2u;
  }

  v21 = [(NSString *)self->_threadID copyWithZone:a3];
  v22 = *(v5 + 88);
  *(v5 + 88) = v21;

  v23 = [(NSString *)self->_categoryID copyWithZone:a3];
  v24 = *(v5 + 40);
  *(v5 + 40) = v23;

  v25 = [(NSString *)self->_sectionID copyWithZone:a3];
  v26 = *(v5 + 72);
  *(v5 + 72) = v25;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = self->_contactIDs;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v35 + 1) + 8 * i) copyWithZone:{a3, v35}];
        [v5 addContactIDs:v32];
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v29);
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 116) = self->_isGroupMessage;
    *(v5 + 120) |= 8u;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  uniqueID = self->_uniqueID;
  if (uniqueID | *(v4 + 13))
  {
    if (![(NSString *)uniqueID isEqual:?])
    {
      goto LABEL_41;
    }
  }

  v6 = *(v4 + 120);
  if (*&self->_has)
  {
    if ((*(v4 + 120) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_41;
    }
  }

  else if (*(v4 + 120))
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 120) & 4) == 0 || self->_usageType != *(v4 + 28))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 120) & 4) != 0)
  {
    goto LABEL_41;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(v4 + 4) && ![(NSString *)bundleID isEqual:?])
  {
    goto LABEL_41;
  }

  notificationID = self->_notificationID;
  if (notificationID | *(v4 + 8))
  {
    if (![(NSString *)notificationID isEqual:?])
    {
      goto LABEL_41;
    }
  }

  deviceID = self->_deviceID;
  if (deviceID | *(v4 + 7))
  {
    if (![(NSString *)deviceID isEqual:?])
    {
      goto LABEL_41;
    }
  }

  title = self->_title;
  if (title | *(v4 + 12))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_41;
    }
  }

  subtitle = self->_subtitle;
  if (subtitle | *(v4 + 10))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_41;
    }
  }

  body = self->_body;
  if (body | *(v4 + 3))
  {
    if (![(NSString *)body isEqual:?])
    {
      goto LABEL_41;
    }
  }

  v13 = *(v4 + 120);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 120) & 2) == 0 || self->_badge != *(v4 + 2))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 120) & 2) != 0)
  {
    goto LABEL_41;
  }

  threadID = self->_threadID;
  if (threadID | *(v4 + 11) && ![(NSString *)threadID isEqual:?])
  {
    goto LABEL_41;
  }

  categoryID = self->_categoryID;
  if (categoryID | *(v4 + 5))
  {
    if (![(NSString *)categoryID isEqual:?])
    {
      goto LABEL_41;
    }
  }

  sectionID = self->_sectionID;
  if (sectionID | *(v4 + 9))
  {
    if (![(NSString *)sectionID isEqual:?])
    {
      goto LABEL_41;
    }
  }

  contactIDs = self->_contactIDs;
  if (contactIDs | *(v4 + 6))
  {
    if (![(NSMutableArray *)contactIDs isEqual:?])
    {
      goto LABEL_41;
    }
  }

  v18 = (*(v4 + 120) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 120) & 8) == 0)
    {
LABEL_41:
      v18 = 0;
      goto LABEL_42;
    }

    if (self->_isGroupMessage)
    {
      if ((*(v4 + 116) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (*(v4 + 116))
    {
      goto LABEL_41;
    }

    v18 = 1;
  }

LABEL_42:

  return v18;
}

- (unint64_t)hash
{
  v24 = [(NSString *)self->_uniqueID hash];
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v3.i64 = floor(absoluteTimestamp + 0.5);
    v7 = (absoluteTimestamp - *v3.i64) * 1.84467441e19;
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

  v23 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v22 = 2654435761 * self->_usageType;
  }

  else
  {
    v22 = 0;
  }

  v21 = [(NSString *)self->_bundleID hash];
  v20 = [(NSString *)self->_notificationID hash];
  v19 = [(NSString *)self->_deviceID hash];
  v9 = [(NSString *)self->_title hash];
  v10 = [(NSString *)self->_subtitle hash];
  v11 = [(NSString *)self->_body hash];
  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761u * self->_badge;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSString *)self->_threadID hash];
  v14 = [(NSString *)self->_categoryID hash];
  v15 = [(NSString *)self->_sectionID hash];
  v16 = [(NSMutableArray *)self->_contactIDs hash];
  if ((*&self->_has & 8) != 0)
  {
    v17 = 2654435761 * self->_isGroupMessage;
  }

  else
  {
    v17 = 0;
  }

  return v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v19 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 13))
  {
    [(BMPBNotificationEvent *)self setUniqueID:?];
  }

  v5 = *(v4 + 120);
  if (v5)
  {
    self->_absoluteTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 120);
  }

  if ((v5 & 4) != 0)
  {
    self->_usageType = *(v4 + 28);
    *&self->_has |= 4u;
  }

  if (*(v4 + 4))
  {
    [(BMPBNotificationEvent *)self setBundleID:?];
  }

  if (*(v4 + 8))
  {
    [(BMPBNotificationEvent *)self setNotificationID:?];
  }

  if (*(v4 + 7))
  {
    [(BMPBNotificationEvent *)self setDeviceID:?];
  }

  if (*(v4 + 12))
  {
    [(BMPBNotificationEvent *)self setTitle:?];
  }

  if (*(v4 + 10))
  {
    [(BMPBNotificationEvent *)self setSubtitle:?];
  }

  if (*(v4 + 3))
  {
    [(BMPBNotificationEvent *)self setBody:?];
  }

  if ((*(v4 + 120) & 2) != 0)
  {
    self->_badge = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 11))
  {
    [(BMPBNotificationEvent *)self setThreadID:?];
  }

  if (*(v4 + 5))
  {
    [(BMPBNotificationEvent *)self setCategoryID:?];
  }

  if (*(v4 + 9))
  {
    [(BMPBNotificationEvent *)self setSectionID:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v4 + 6);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BMPBNotificationEvent *)self addContactIDs:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if ((*(v4 + 120) & 8) != 0)
  {
    self->_isGroupMessage = *(v4 + 116);
    *&self->_has |= 8u;
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end