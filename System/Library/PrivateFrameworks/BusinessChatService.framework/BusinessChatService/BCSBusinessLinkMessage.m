@interface BCSBusinessLinkMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAction:(id)a3;
- (int)action;
- (unint64_t)hash;
- (void)addBusinessLinkContents:(id)a3;
- (void)addCategoryStyleAttributes:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsPoweredBy:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BCSBusinessLinkMessage

- (void)addBusinessLinkContents:(id)a3
{
  v4 = a3;
  businessLinkContents = self->_businessLinkContents;
  v8 = v4;
  if (!businessLinkContents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_businessLinkContents;
    self->_businessLinkContents = v6;

    v4 = v8;
    businessLinkContents = self->_businessLinkContents;
  }

  [(NSMutableArray *)businessLinkContents addObject:v4];
}

- (int)action
{
  if (*&self->_has)
  {
    return self->_action;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsAction:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"OPEN"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"VIEW"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PLAY"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIsPoweredBy:(BOOL)a3
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

- (void)addCategoryStyleAttributes:(id)a3
{
  v4 = a3;
  categoryStyleAttributes = self->_categoryStyleAttributes;
  v8 = v4;
  if (!categoryStyleAttributes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_categoryStyleAttributes;
    self->_categoryStyleAttributes = v6;

    v4 = v8;
    categoryStyleAttributes = self->_categoryStyleAttributes;
  }

  [(NSMutableArray *)categoryStyleAttributes addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSBusinessLinkMessage;
  v4 = [(BCSBusinessLinkMessage *)&v8 description];
  v5 = [(BCSBusinessLinkMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  link = self->_link;
  if (link)
  {
    [v3 setObject:link forKey:@"link"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v4 setObject:bundleId forKey:@"bundle_id"];
  }

  heroImage = self->_heroImage;
  if (heroImage)
  {
    [v4 setObject:heroImage forKey:@"hero_image"];
  }

  iconImage = self->_iconImage;
  if (iconImage)
  {
    [v4 setObject:iconImage forKey:@"icon_image"];
  }

  redirectUrl = self->_redirectUrl;
  if (redirectUrl)
  {
    [v4 setObject:redirectUrl forKey:@"redirect_url"];
  }

  if ([(NSMutableArray *)self->_businessLinkContents count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_businessLinkContents, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = self->_businessLinkContents;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"business_link_contents"];
  }

  has = self->_has;
  if (has)
  {
    v18 = self->_action - 1;
    if (v18 >= 3)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_action];
    }

    else
    {
      v19 = off_278D39DA0[v18];
    }

    [v4 setObject:v19 forKey:@"action"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPoweredBy];
    [v4 setObject:v20 forKey:@"is_powered_by"];
  }

  muid = self->_muid;
  if (muid)
  {
    [v4 setObject:muid forKey:@"muid"];
  }

  if ([(NSMutableArray *)self->_categoryStyleAttributes count])
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_categoryStyleAttributes, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = self->_categoryStyleAttributes;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v32;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v31 + 1) + 8 * j) dictionaryRepresentation];
          [v22 addObject:v28];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v25);
    }

    [v4 setObject:v22 forKey:@"category_style_attributes"];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_link)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_heroImage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iconImage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_redirectUrl)
  {
    PBDataWriterWriteStringField();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_businessLinkContents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if (has)
  {
    action = self->_action;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isPoweredBy = self->_isPoweredBy;
    PBDataWriterWriteBOOLField();
  }

  if (self->_muid)
  {
    PBDataWriterWriteStringField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_categoryStyleAttributes;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v13 = a3;
  if (self->_link)
  {
    [v13 setLink:?];
  }

  if (self->_bundleId)
  {
    [v13 setBundleId:?];
  }

  if (self->_heroImage)
  {
    [v13 setHeroImage:?];
  }

  if (self->_iconImage)
  {
    [v13 setIconImage:?];
  }

  if (self->_redirectUrl)
  {
    [v13 setRedirectUrl:?];
  }

  if ([(BCSBusinessLinkMessage *)self businessLinkContentsCount])
  {
    [v13 clearBusinessLinkContents];
    v4 = [(BCSBusinessLinkMessage *)self businessLinkContentsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BCSBusinessLinkMessage *)self businessLinkContentsAtIndex:i];
        [v13 addBusinessLinkContents:v7];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(v13 + 2) = self->_action;
    *(v13 + 84) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v13 + 80) = self->_isPoweredBy;
    *(v13 + 84) |= 2u;
  }

  if (self->_muid)
  {
    [v13 setMuid:?];
  }

  if ([(BCSBusinessLinkMessage *)self categoryStyleAttributesCount])
  {
    [v13 clearCategoryStyleAttributes];
    v9 = [(BCSBusinessLinkMessage *)self categoryStyleAttributesCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(BCSBusinessLinkMessage *)self categoryStyleAttributesAtIndex:j];
        [v13 addCategoryStyleAttributes:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_link copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_bundleId copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_heroImage copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_iconImage copyWithZone:a3];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSString *)self->_redirectUrl copyWithZone:a3];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = self->_businessLinkContents;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v37 + 1) + 8 * i) copyWithZone:a3];
        [v5 addBusinessLinkContents:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v18);
  }

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_action;
    *(v5 + 84) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 80) = self->_isPoweredBy;
    *(v5 + 84) |= 2u;
  }

  v23 = [(NSString *)self->_muid copyWithZone:a3];
  v24 = *(v5 + 64);
  *(v5 + 64) = v23;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = self->_categoryStyleAttributes;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v34;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v33 + 1) + 8 * j) copyWithZone:{a3, v33}];
        [v5 addCategoryStyleAttributes:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v27);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  link = self->_link;
  if (link | *(v4 + 7))
  {
    if (![(NSString *)link isEqual:?])
    {
      goto LABEL_26;
    }
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 2))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_26;
    }
  }

  heroImage = self->_heroImage;
  if (heroImage | *(v4 + 5))
  {
    if (![(NSString *)heroImage isEqual:?])
    {
      goto LABEL_26;
    }
  }

  iconImage = self->_iconImage;
  if (iconImage | *(v4 + 6))
  {
    if (![(NSString *)iconImage isEqual:?])
    {
      goto LABEL_26;
    }
  }

  redirectUrl = self->_redirectUrl;
  if (redirectUrl | *(v4 + 9))
  {
    if (![(NSString *)redirectUrl isEqual:?])
    {
      goto LABEL_26;
    }
  }

  businessLinkContents = self->_businessLinkContents;
  if (businessLinkContents | *(v4 + 3))
  {
    if (![(NSMutableArray *)businessLinkContents isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v11 = *(v4 + 84);
  if (*&self->_has)
  {
    if ((*(v4 + 84) & 1) == 0 || self->_action != *(v4 + 2))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 84))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 84) & 2) == 0)
    {
      goto LABEL_21;
    }

LABEL_26:
    v14 = 0;
    goto LABEL_27;
  }

  if ((*(v4 + 84) & 2) == 0)
  {
    goto LABEL_26;
  }

  v16 = *(v4 + 80);
  if (self->_isPoweredBy)
  {
    if ((*(v4 + 80) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 80))
  {
    goto LABEL_26;
  }

LABEL_21:
  muid = self->_muid;
  if (muid | *(v4 + 8) && ![(NSString *)muid isEqual:?])
  {
    goto LABEL_26;
  }

  categoryStyleAttributes = self->_categoryStyleAttributes;
  if (categoryStyleAttributes | *(v4 + 4))
  {
    v14 = [(NSMutableArray *)categoryStyleAttributes isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_27:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_link hash];
  v4 = [(NSString *)self->_bundleId hash];
  v5 = [(NSString *)self->_heroImage hash];
  v6 = [(NSString *)self->_iconImage hash];
  v7 = [(NSString *)self->_redirectUrl hash];
  v8 = [(NSMutableArray *)self->_businessLinkContents hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_action;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = 2654435761 * self->_isPoweredBy;
LABEL_6:
  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v12 = v10 ^ [(NSString *)self->_muid hash];
  return v11 ^ v12 ^ [(NSMutableArray *)self->_categoryStyleAttributes hash];
}

- (void)mergeFrom:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 7))
  {
    [(BCSBusinessLinkMessage *)self setLink:?];
  }

  if (*(v4 + 2))
  {
    [(BCSBusinessLinkMessage *)self setBundleId:?];
  }

  if (*(v4 + 5))
  {
    [(BCSBusinessLinkMessage *)self setHeroImage:?];
  }

  if (*(v4 + 6))
  {
    [(BCSBusinessLinkMessage *)self setIconImage:?];
  }

  if (*(v4 + 9))
  {
    [(BCSBusinessLinkMessage *)self setRedirectUrl:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(v4 + 3);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BCSBusinessLinkMessage *)self addBusinessLinkContents:*(*(&v21 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v10 = *(v4 + 84);
  if (v10)
  {
    self->_action = *(v4 + 2);
    *&self->_has |= 1u;
    v10 = *(v4 + 84);
  }

  if ((v10 & 2) != 0)
  {
    self->_isPoweredBy = *(v4 + 80);
    *&self->_has |= 2u;
  }

  if (*(v4 + 8))
  {
    [(BCSBusinessLinkMessage *)self setMuid:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(v4 + 4);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(BCSBusinessLinkMessage *)self addCategoryStyleAttributes:*(*(&v17 + 1) + 8 * j), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end