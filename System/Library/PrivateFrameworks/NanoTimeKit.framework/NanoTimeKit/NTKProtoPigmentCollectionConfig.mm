@interface NTKProtoPigmentCollectionConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDefaultGalleryColorNames:(id)a3;
- (void)addExclusions:(id)a3;
- (void)addMigration:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsAddable:(BOOL)a3;
- (void)setHasSensitivity:(BOOL)a3;
- (void)setHasSortedByHue:(BOOL)a3;
- (void)setHasSupportsSlider:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NTKProtoPigmentCollectionConfig

- (void)addDefaultGalleryColorNames:(id)a3
{
  v4 = a3;
  defaultGalleryColorNames = self->_defaultGalleryColorNames;
  v8 = v4;
  if (!defaultGalleryColorNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_defaultGalleryColorNames;
    self->_defaultGalleryColorNames = v6;

    v4 = v8;
    defaultGalleryColorNames = self->_defaultGalleryColorNames;
  }

  [(NSMutableArray *)defaultGalleryColorNames addObject:v4];
}

- (void)setHasSensitivity:(BOOL)a3
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

- (void)setHasIsAddable:(BOOL)a3
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

- (void)setHasSortedByHue:(BOOL)a3
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

- (void)setHasSupportsSlider:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addExclusions:(id)a3
{
  v4 = a3;
  exclusions = self->_exclusions;
  v8 = v4;
  if (!exclusions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_exclusions;
    self->_exclusions = v6;

    v4 = v8;
    exclusions = self->_exclusions;
  }

  [(NSMutableArray *)exclusions addObject:v4];
}

- (void)addMigration:(id)a3
{
  v4 = a3;
  migrations = self->_migrations;
  v8 = v4;
  if (!migrations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_migrations;
    self->_migrations = v6;

    v4 = v8;
    migrations = self->_migrations;
  }

  [(NSMutableArray *)migrations addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NTKProtoPigmentCollectionConfig;
  v4 = [(NTKProtoPigmentCollectionConfig *)&v8 description];
  v5 = [(NTKProtoPigmentCollectionConfig *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  defaultColorOptionName = self->_defaultColorOptionName;
  if (defaultColorOptionName)
  {
    [v3 setObject:defaultColorOptionName forKey:@"defaultColorOptionName"];
  }

  fallbackDefaultColorOptionName = self->_fallbackDefaultColorOptionName;
  if (fallbackDefaultColorOptionName)
  {
    [v4 setObject:fallbackDefaultColorOptionName forKey:@"fallbackDefaultColorOptionName"];
  }

  defaultConfigAttributeName = self->_defaultConfigAttributeName;
  if (defaultConfigAttributeName)
  {
    [v4 setObject:defaultConfigAttributeName forKey:@"defaultConfigAttributeName"];
  }

  defaultGalleryColorNames = self->_defaultGalleryColorNames;
  if (defaultGalleryColorNames)
  {
    [v4 setObject:defaultGalleryColorNames forKey:@"defaultGalleryColorNames"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_sensitivity];
    [v4 setObject:v23 forKey:@"sensitivity"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_36;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAddable];
  [v4 setObject:v24 forKey:@"isAddable"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_36:
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_sortedByHue];
  [v4 setObject:v25 forKey:@"sortedByHue"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsSlider];
    [v4 setObject:v10 forKey:@"supportsSlider"];
  }

LABEL_14:
  featureFlag = self->_featureFlag;
  if (featureFlag)
  {
    [v4 setObject:featureFlag forKey:@"featureFlag"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_excludesDuotone];
    [v4 setObject:v12 forKey:@"excludesDuotone"];
  }

  exclusions = self->_exclusions;
  if (exclusions)
  {
    [v4 setObject:exclusions forKey:@"exclusions"];
  }

  if ([(NSMutableArray *)self->_migrations count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_migrations, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = self->_migrations;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"migration"];
  }

  collectionOverride = self->_collectionOverride;
  if (collectionOverride)
  {
    [v4 setObject:collectionOverride forKey:@"collectionOverride"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_defaultColorOptionName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fallbackDefaultColorOptionName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_defaultConfigAttributeName)
  {
    PBDataWriterWriteStringField();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_defaultGalleryColorNames;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_16:
      if ((has & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_42;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_16;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_17:
    if ((has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_42:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    PBDataWriterWriteBOOLField();
  }

LABEL_19:
  if (self->_featureFlag)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_exclusions;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteStringField();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self->_migrations;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteSubmessage();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }

  if (self->_collectionOverride)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v18 = a3;
  if (self->_defaultColorOptionName)
  {
    [v18 setDefaultColorOptionName:?];
  }

  if (self->_fallbackDefaultColorOptionName)
  {
    [v18 setFallbackDefaultColorOptionName:?];
  }

  if (self->_defaultConfigAttributeName)
  {
    [v18 setDefaultConfigAttributeName:?];
  }

  if ([(NTKProtoPigmentCollectionConfig *)self defaultGalleryColorNamesCount])
  {
    [v18 clearDefaultGalleryColorNames];
    v4 = [(NTKProtoPigmentCollectionConfig *)self defaultGalleryColorNamesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NTKProtoPigmentCollectionConfig *)self defaultGalleryColorNamesAtIndex:i];
        [v18 addDefaultGalleryColorNames:v7];
      }
    }
  }

  has = self->_has;
  v9 = v18;
  if ((has & 4) != 0)
  {
    v18[74] = self->_sensitivity;
    v18[80] |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  v18[73] = self->_isAddable;
  v18[80] |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_35:
  v18[75] = self->_sortedByHue;
  v18[80] |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_15:
    v18[76] = self->_supportsSlider;
    v18[80] |= 0x10u;
  }

LABEL_16:
  if (self->_featureFlag)
  {
    [v18 setFeatureFlag:?];
    v9 = v18;
  }

  if (*&self->_has)
  {
    v9[72] = self->_excludesDuotone;
    v9[80] |= 1u;
  }

  if ([(NTKProtoPigmentCollectionConfig *)self exclusionsCount])
  {
    [v18 clearExclusions];
    v10 = [(NTKProtoPigmentCollectionConfig *)self exclusionsCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(NTKProtoPigmentCollectionConfig *)self exclusionsAtIndex:j];
        [v18 addExclusions:v13];
      }
    }
  }

  if ([(NTKProtoPigmentCollectionConfig *)self migrationsCount])
  {
    [v18 clearMigrations];
    v14 = [(NTKProtoPigmentCollectionConfig *)self migrationsCount];
    if (v14)
    {
      v15 = v14;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(NTKProtoPigmentCollectionConfig *)self migrationAtIndex:k];
        [v18 addMigration:v17];
      }
    }
  }

  if (self->_collectionOverride)
  {
    [v18 setCollectionOverride:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_defaultColorOptionName copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_fallbackDefaultColorOptionName copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_defaultConfigAttributeName copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = self->_defaultGalleryColorNames;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v44 + 1) + 8 * i) copyWithZone:a3];
        [v5 addDefaultGalleryColorNames:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v14);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 74) = self->_sensitivity;
    *(v5 + 80) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_10:
      if ((has & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 73) = self->_isAddable;
  *(v5 + 80) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_32:
  *(v5 + 75) = self->_sortedByHue;
  *(v5 + 80) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_12:
    *(v5 + 76) = self->_supportsSlider;
    *(v5 + 80) |= 0x10u;
  }

LABEL_13:
  v19 = [(NSString *)self->_featureFlag copyWithZone:a3];
  v20 = *(v5 + 56);
  *(v5 + 56) = v19;

  if (*&self->_has)
  {
    *(v5 + 72) = self->_excludesDuotone;
    *(v5 + 80) |= 1u;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v21 = self->_exclusions;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v41;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v40 + 1) + 8 * j) copyWithZone:a3];
        [v5 addExclusions:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v23);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = self->_migrations;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v37;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v36 + 1) + 8 * k) copyWithZone:{a3, v36}];
        [v5 addMigration:v32];
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v29);
  }

  v33 = [(NSString *)self->_collectionOverride copyWithZone:a3];
  v34 = *(v5 + 8);
  *(v5 + 8) = v33;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  defaultColorOptionName = self->_defaultColorOptionName;
  if (defaultColorOptionName | *(v4 + 2))
  {
    if (![(NSString *)defaultColorOptionName isEqual:?])
    {
      goto LABEL_58;
    }
  }

  fallbackDefaultColorOptionName = self->_fallbackDefaultColorOptionName;
  if (fallbackDefaultColorOptionName | *(v4 + 6))
  {
    if (![(NSString *)fallbackDefaultColorOptionName isEqual:?])
    {
      goto LABEL_58;
    }
  }

  defaultConfigAttributeName = self->_defaultConfigAttributeName;
  if (defaultConfigAttributeName | *(v4 + 3))
  {
    if (![(NSString *)defaultConfigAttributeName isEqual:?])
    {
      goto LABEL_58;
    }
  }

  defaultGalleryColorNames = self->_defaultGalleryColorNames;
  if (defaultGalleryColorNames | *(v4 + 4))
  {
    if (![(NSMutableArray *)defaultGalleryColorNames isEqual:?])
    {
      goto LABEL_58;
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 80) & 4) == 0)
    {
      goto LABEL_58;
    }

    if (self->_sensitivity)
    {
      if ((*(v4 + 74) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (*(v4 + 74))
    {
      goto LABEL_58;
    }
  }

  else if ((*(v4 + 80) & 4) != 0)
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0)
    {
      goto LABEL_58;
    }

    if (self->_isAddable)
    {
      if ((*(v4 + 73) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (*(v4 + 73))
    {
      goto LABEL_58;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 80) & 8) == 0)
    {
      goto LABEL_58;
    }

    if (self->_sortedByHue)
    {
      if ((*(v4 + 75) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (*(v4 + 75))
    {
      goto LABEL_58;
    }
  }

  else if ((*(v4 + 80) & 8) != 0)
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 80) & 0x10) == 0)
    {
      goto LABEL_58;
    }

    if (self->_supportsSlider)
    {
      if ((*(v4 + 76) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (*(v4 + 76))
    {
      goto LABEL_58;
    }
  }

  else if ((*(v4 + 80) & 0x10) != 0)
  {
    goto LABEL_58;
  }

  featureFlag = self->_featureFlag;
  if (featureFlag | *(v4 + 7))
  {
    if (![(NSString *)featureFlag isEqual:?])
    {
      goto LABEL_58;
    }

    has = self->_has;
  }

  if ((has & 1) == 0)
  {
    if ((*(v4 + 80) & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_58:
    v14 = 0;
    goto LABEL_59;
  }

  if ((*(v4 + 80) & 1) == 0)
  {
    goto LABEL_58;
  }

  if (self->_excludesDuotone)
  {
    if ((*(v4 + 72) & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_58;
  }

LABEL_23:
  exclusions = self->_exclusions;
  if (exclusions | *(v4 + 5) && ![(NSMutableArray *)exclusions isEqual:?])
  {
    goto LABEL_58;
  }

  migrations = self->_migrations;
  if (migrations | *(v4 + 8))
  {
    if (![(NSMutableArray *)migrations isEqual:?])
    {
      goto LABEL_58;
    }
  }

  collectionOverride = self->_collectionOverride;
  if (collectionOverride | *(v4 + 1))
  {
    v14 = [(NSString *)collectionOverride isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_59:

  return v14;
}

- (unint64_t)hash
{
  v16 = [(NSString *)self->_defaultColorOptionName hash];
  v3 = [(NSString *)self->_fallbackDefaultColorOptionName hash];
  v4 = [(NSString *)self->_defaultConfigAttributeName hash];
  v5 = [(NSMutableArray *)self->_defaultGalleryColorNames hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_sensitivity;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_isAddable;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761 * self->_sortedByHue;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v9 = 2654435761 * self->_supportsSlider;
    goto LABEL_10;
  }

LABEL_9:
  v9 = 0;
LABEL_10:
  v10 = [(NSString *)self->_featureFlag hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_excludesDuotone;
  }

  else
  {
    v11 = 0;
  }

  v12 = v3 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  v13 = [(NSMutableArray *)self->_exclusions hash];
  v14 = v13 ^ [(NSMutableArray *)self->_migrations hash];
  return v12 ^ v14 ^ [(NSString *)self->_collectionOverride hash];
}

- (void)mergeFrom:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(NTKProtoPigmentCollectionConfig *)self setDefaultColorOptionName:?];
  }

  if (*(v4 + 6))
  {
    [(NTKProtoPigmentCollectionConfig *)self setFallbackDefaultColorOptionName:?];
  }

  if (*(v4 + 3))
  {
    [(NTKProtoPigmentCollectionConfig *)self setDefaultConfigAttributeName:?];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = *(v4 + 4);
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NTKProtoPigmentCollectionConfig *)self addDefaultGalleryColorNames:*(*(&v29 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v10 = *(v4 + 80);
  if ((v10 & 4) != 0)
  {
    self->_sensitivity = *(v4 + 74);
    *&self->_has |= 4u;
    v10 = *(v4 + 80);
    if ((v10 & 2) == 0)
    {
LABEL_16:
      if ((v10 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_42;
    }
  }

  else if ((*(v4 + 80) & 2) == 0)
  {
    goto LABEL_16;
  }

  self->_isAddable = *(v4 + 73);
  *&self->_has |= 2u;
  v10 = *(v4 + 80);
  if ((v10 & 8) == 0)
  {
LABEL_17:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_42:
  self->_sortedByHue = *(v4 + 75);
  *&self->_has |= 8u;
  if ((*(v4 + 80) & 0x10) != 0)
  {
LABEL_18:
    self->_supportsSlider = *(v4 + 76);
    *&self->_has |= 0x10u;
  }

LABEL_19:
  if (*(v4 + 7))
  {
    [(NTKProtoPigmentCollectionConfig *)self setFeatureFlag:?];
  }

  if (*(v4 + 80))
  {
    self->_excludesDuotone = *(v4 + 72);
    *&self->_has |= 1u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = *(v4 + 5);
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(NTKProtoPigmentCollectionConfig *)self addExclusions:*(*(&v25 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = *(v4 + 8);
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(NTKProtoPigmentCollectionConfig *)self addMigration:*(*(&v21 + 1) + 8 * k), v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }

  if (*(v4 + 1))
  {
    [(NTKProtoPigmentCollectionConfig *)self setCollectionOverride:?];
  }
}

@end