@interface BCSCallerIdMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsVerified:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BCSCallerIdMessage

- (void)setHasIsVerified:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSCallerIdMessage;
  v4 = [(BCSCallerIdMessage *)&v8 description];
  v5 = [(BCSCallerIdMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_phoneHash];
    [v3 setObject:v4 forKey:@"phone_hash"];
  }

  companyId = self->_companyId;
  if (companyId)
  {
    [v3 setObject:companyId forKey:@"company_id"];
  }

  businessId = self->_businessId;
  if (businessId)
  {
    [v3 setObject:businessId forKey:@"business_id"];
  }

  locationId = self->_locationId;
  if (locationId)
  {
    [v3 setObject:locationId forKey:@"location_id"];
  }

  name = self->_name;
  if (name)
  {
    v9 = [(BCSCallerIdLocalizedString *)name dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"name"];
  }

  logoUrl = self->_logoUrl;
  if (logoUrl)
  {
    [v3 setObject:logoUrl forKey:@"logo_url"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_isVerified];
    [v3 setObject:v11 forKey:@"is_verified"];
  }

  intent = self->_intent;
  if (intent)
  {
    v13 = [(BCSCallerIdLocalizedString *)intent dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"intent"];
  }

  conflatedMuid = self->_conflatedMuid;
  if (conflatedMuid)
  {
    [v3 setObject:conflatedMuid forKey:@"conflated_muid"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*&self->_has)
  {
    phoneHash = self->_phoneHash;
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }

  if (self->_companyId)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_businessId)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_locationId)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_name)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (self->_logoUrl)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    isVerified = self->_isVerified;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_intent)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (self->_conflatedMuid)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_phoneHash;
    *(v4 + 76) |= 1u;
  }

  v5 = v4;
  if (self->_companyId)
  {
    [v4 setCompanyId:?];
    v4 = v5;
  }

  if (self->_businessId)
  {
    [v5 setBusinessId:?];
    v4 = v5;
  }

  if (self->_locationId)
  {
    [v5 setLocationId:?];
    v4 = v5;
  }

  if (self->_name)
  {
    [v5 setName:?];
    v4 = v5;
  }

  if (self->_logoUrl)
  {
    [v5 setLogoUrl:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 72) = self->_isVerified;
    *(v4 + 76) |= 2u;
  }

  if (self->_intent)
  {
    [v5 setIntent:?];
    v4 = v5;
  }

  if (self->_conflatedMuid)
  {
    [v5 setConflatedMuid:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_phoneHash;
    *(v5 + 76) |= 1u;
  }

  v7 = [(NSString *)self->_companyId copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(NSString *)self->_businessId copyWithZone:a3];
  v10 = *(v6 + 16);
  *(v6 + 16) = v9;

  v11 = [(NSString *)self->_locationId copyWithZone:a3];
  v12 = *(v6 + 48);
  *(v6 + 48) = v11;

  v13 = [(BCSCallerIdLocalizedString *)self->_name copyWithZone:a3];
  v14 = *(v6 + 64);
  *(v6 + 64) = v13;

  v15 = [(NSString *)self->_logoUrl copyWithZone:a3];
  v16 = *(v6 + 56);
  *(v6 + 56) = v15;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 72) = self->_isVerified;
    *(v6 + 76) |= 2u;
  }

  v17 = [(BCSCallerIdLocalizedString *)self->_intent copyWithZone:a3];
  v18 = *(v6 + 40);
  *(v6 + 40) = v17;

  v19 = [(NSString *)self->_conflatedMuid copyWithZone:a3];
  v20 = *(v6 + 32);
  *(v6 + 32) = v19;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = *(v4 + 76);
  if (*&self->_has)
  {
    if ((*(v4 + 76) & 1) == 0 || self->_phoneHash != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 76))
  {
    goto LABEL_24;
  }

  companyId = self->_companyId;
  if (companyId | *(v4 + 3) && ![(NSString *)companyId isEqual:?])
  {
    goto LABEL_24;
  }

  businessId = self->_businessId;
  if (businessId | *(v4 + 2))
  {
    if (![(NSString *)businessId isEqual:?])
    {
      goto LABEL_24;
    }
  }

  locationId = self->_locationId;
  if (locationId | *(v4 + 6))
  {
    if (![(NSString *)locationId isEqual:?])
    {
      goto LABEL_24;
    }
  }

  name = self->_name;
  if (name | *(v4 + 8))
  {
    if (![(BCSCallerIdLocalizedString *)name isEqual:?])
    {
      goto LABEL_24;
    }
  }

  logoUrl = self->_logoUrl;
  if (logoUrl | *(v4 + 7))
  {
    if (![(NSString *)logoUrl isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v11 = *(v4 + 76);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 76) & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    v14 = 0;
    goto LABEL_25;
  }

  if ((*(v4 + 76) & 2) == 0)
  {
    goto LABEL_24;
  }

  v16 = *(v4 + 72);
  if (self->_isVerified)
  {
    if ((*(v4 + 72) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_24;
  }

LABEL_19:
  intent = self->_intent;
  if (intent | *(v4 + 5) && ![(BCSCallerIdLocalizedString *)intent isEqual:?])
  {
    goto LABEL_24;
  }

  conflatedMuid = self->_conflatedMuid;
  if (conflatedMuid | *(v4 + 4))
  {
    v14 = [(NSString *)conflatedMuid isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_25:

  return v14;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_phoneHash;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_companyId hash];
  v5 = [(NSString *)self->_businessId hash];
  v6 = [(NSString *)self->_locationId hash];
  v7 = [(BCSCallerIdLocalizedString *)self->_name hash];
  v8 = [(NSString *)self->_logoUrl hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_isVerified;
  }

  else
  {
    v9 = 0;
  }

  v10 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v11 = [(BCSCallerIdLocalizedString *)self->_intent hash];
  return v10 ^ v11 ^ [(NSString *)self->_conflatedMuid hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 76))
  {
    self->_phoneHash = v4[1];
    *&self->_has |= 1u;
  }

  v10 = v4;
  if (v4[3])
  {
    [(BCSCallerIdMessage *)self setCompanyId:?];
    v5 = v10;
  }

  if (v5[2])
  {
    [(BCSCallerIdMessage *)self setBusinessId:?];
    v5 = v10;
  }

  if (v5[6])
  {
    [(BCSCallerIdMessage *)self setLocationId:?];
    v5 = v10;
  }

  name = self->_name;
  v7 = v5[8];
  if (name)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    [(BCSCallerIdLocalizedString *)name mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    [(BCSCallerIdMessage *)self setName:?];
  }

  v5 = v10;
LABEL_15:
  if (v5[7])
  {
    [(BCSCallerIdMessage *)self setLogoUrl:?];
    v5 = v10;
  }

  if ((*(v5 + 76) & 2) != 0)
  {
    self->_isVerified = *(v5 + 72);
    *&self->_has |= 2u;
  }

  intent = self->_intent;
  v9 = v5[5];
  if (intent)
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    intent = [(BCSCallerIdLocalizedString *)intent mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    intent = [(BCSCallerIdMessage *)self setIntent:?];
  }

  v5 = v10;
LABEL_25:
  if (v5[4])
  {
    intent = [(BCSCallerIdMessage *)self setConflatedMuid:?];
    v5 = v10;
  }

  MEMORY[0x2821F96F8](intent, v5);
}

@end