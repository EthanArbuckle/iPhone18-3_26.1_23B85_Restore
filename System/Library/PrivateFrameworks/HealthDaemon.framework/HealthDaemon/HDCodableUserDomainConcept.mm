@interface HDCodableUserDomainConcept
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCodings:(id)a3;
- (void)addLinks:(id)a3;
- (void)addLocalizedStringProperties:(id)a3;
- (void)addNamedQuantities:(id)a3;
- (void)addProperties:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeleted:(BOOL)a3;
- (void)setHasMajorVersion:(BOOL)a3;
- (void)setHasMinorVersion:(BOOL)a3;
- (void)setHasModificationDate:(BOOL)a3;
- (void)setHasPatchVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableUserDomainConcept

- (void)setHasModificationDate:(BOOL)a3
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

- (void)setHasDeleted:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasMajorVersion:(BOOL)a3
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

- (void)setHasMinorVersion:(BOOL)a3
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

- (void)setHasPatchVersion:(BOOL)a3
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

- (void)addCodings:(id)a3
{
  v4 = a3;
  codings = self->_codings;
  v8 = v4;
  if (!codings)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_codings;
    self->_codings = v6;

    v4 = v8;
    codings = self->_codings;
  }

  [(NSMutableArray *)codings addObject:v4];
}

- (void)addLinks:(id)a3
{
  v4 = a3;
  links = self->_links;
  v8 = v4;
  if (!links)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_links;
    self->_links = v6;

    v4 = v8;
    links = self->_links;
  }

  [(NSMutableArray *)links addObject:v4];
}

- (void)addProperties:(id)a3
{
  v4 = a3;
  properties = self->_properties;
  v8 = v4;
  if (!properties)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_properties;
    self->_properties = v6;

    v4 = v8;
    properties = self->_properties;
  }

  [(NSMutableArray *)properties addObject:v4];
}

- (void)addLocalizedStringProperties:(id)a3
{
  v4 = a3;
  localizedStringProperties = self->_localizedStringProperties;
  v8 = v4;
  if (!localizedStringProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_localizedStringProperties;
    self->_localizedStringProperties = v6;

    v4 = v8;
    localizedStringProperties = self->_localizedStringProperties;
  }

  [(NSMutableArray *)localizedStringProperties addObject:v4];
}

- (void)addNamedQuantities:(id)a3
{
  v4 = a3;
  namedQuantities = self->_namedQuantities;
  v8 = v4;
  if (!namedQuantities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_namedQuantities;
    self->_namedQuantities = v6;

    v4 = v8;
    namedQuantities = self->_namedQuantities;
  }

  [(NSMutableArray *)namedQuantities addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableUserDomainConcept;
  v4 = [(HDCodableUserDomainConcept *)&v8 description];
  v5 = [(HDCodableUserDomainConcept *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    v7 = [(HDCodableUserDomainConceptTypeIdentifier *)identifier dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"identifier"];
  }

  has = self->_has;
  if (has)
  {
    v56 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
    [v4 setObject:v56 forKey:@"creationDate"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  v57 = [MEMORY[0x277CCABB0] numberWithDouble:self->_modificationDate];
  [v4 setObject:v57 forKey:@"modificationDate"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_deleted];
    [v4 setObject:v9 forKey:@"deleted"];
  }

LABEL_9:
  build = self->_build;
  if (build)
  {
    [v4 setObject:build forKey:@"build"];
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    v58 = [MEMORY[0x277CCABB0] numberWithInt:self->_majorVersion];
    [v4 setObject:v58 forKey:@"majorVersion"];

    v11 = self->_has;
    if ((v11 & 8) == 0)
    {
LABEL_13:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

  v59 = [MEMORY[0x277CCABB0] numberWithInt:self->_minorVersion];
  [v4 setObject:v59 forKey:@"minorVersion"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_patchVersion];
    [v4 setObject:v12 forKey:@"patchVersion"];
  }

LABEL_15:
  linksData = self->_linksData;
  if (linksData)
  {
    [v4 setObject:linksData forKey:@"linksData"];
  }

  if ([(NSMutableArray *)self->_codings count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_codings, "count")}];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v15 = self->_codings;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v76 objects:v84 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v77;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v77 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v76 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v76 objects:v84 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"codings"];
  }

  if ([(NSMutableArray *)self->_links count])
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_links, "count")}];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v22 = self->_links;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v72 objects:v83 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v73;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v73 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v72 + 1) + 8 * j) dictionaryRepresentation];
          [v21 addObject:v27];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v72 objects:v83 count:16];
      }

      while (v24);
    }

    [v4 setObject:v21 forKey:@"links"];
  }

  if ([(NSMutableArray *)self->_properties count])
  {
    v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_properties, "count")}];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v29 = self->_properties;
    v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v68 objects:v82 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v69;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v69 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v68 + 1) + 8 * k) dictionaryRepresentation];
          [v28 addObject:v34];
        }

        v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v68 objects:v82 count:16];
      }

      while (v31);
    }

    [v4 setObject:v28 forKey:@"properties"];
  }

  if ([(NSMutableArray *)self->_localizedStringProperties count])
  {
    v35 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_localizedStringProperties, "count")}];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v36 = self->_localizedStringProperties;
    v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v64 objects:v81 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v65;
      do
      {
        for (m = 0; m != v38; ++m)
        {
          if (*v65 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [*(*(&v64 + 1) + 8 * m) dictionaryRepresentation];
          [v35 addObject:v41];
        }

        v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v64 objects:v81 count:16];
      }

      while (v38);
    }

    [v4 setObject:v35 forKey:@"localizedStringProperties"];
  }

  ontologyLocalizedEducationContent = self->_ontologyLocalizedEducationContent;
  if (ontologyLocalizedEducationContent)
  {
    v43 = [(HDCodableOntologyLocalizedEducationContent *)ontologyLocalizedEducationContent dictionaryRepresentation];
    [v4 setObject:v43 forKey:@"ontologyLocalizedEducationContent"];
  }

  if ([(NSMutableArray *)self->_namedQuantities count])
  {
    v44 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_namedQuantities, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v45 = self->_namedQuantities;
    v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v60 objects:v80 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v61;
      do
      {
        for (n = 0; n != v47; ++n)
        {
          if (*v61 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = [*(*(&v60 + 1) + 8 * n) dictionaryRepresentation];
          [v44 addObject:v50];
        }

        v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v60 objects:v80 count:16];
      }

      while (v47);
    }

    [v4 setObject:v44 forKey:@"namedQuantities"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v52 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:v52 forKey:@"syncIdentity"];
  }

  typeData = self->_typeData;
  if (typeData)
  {
    [v4 setObject:typeData forKey:@"typeData"];
  }

  v54 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  modificationDate = self->_modificationDate;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    deleted = self->_deleted;
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
  if (self->_build)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 4) != 0)
  {
    majorVersion = self->_majorVersion;
    PBDataWriterWriteInt32Field();
    v7 = self->_has;
    if ((v7 & 8) == 0)
    {
LABEL_13:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

  minorVersion = self->_minorVersion;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    patchVersion = self->_patchVersion;
    PBDataWriterWriteInt32Field();
  }

LABEL_15:
  if (self->_linksData)
  {
    PBDataWriterWriteDataField();
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v9 = self->_codings;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v61;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v61 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v60 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v11);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v15 = self->_links;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v57;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v57 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v56 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v56 objects:v67 count:16];
    }

    while (v17);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v21 = self->_properties;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v53;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v53 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v52 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v52 objects:v66 count:16];
    }

    while (v23);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v27 = self->_localizedStringProperties;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v48 objects:v65 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v49;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v49 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v48 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v48 objects:v65 count:16];
    }

    while (v29);
  }

  if (self->_ontologyLocalizedEducationContent)
  {
    PBDataWriterWriteSubmessage();
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v33 = self->_namedQuantities;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v44 objects:v64 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v45;
    do
    {
      for (n = 0; n != v35; ++n)
      {
        if (*v45 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v44 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v44 objects:v64 count:16];
    }

    while (v35);
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_typeData)
  {
    PBDataWriterWriteDataField();
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v28 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v28;
  }

  if (self->_identifier)
  {
    [v28 setIdentifier:?];
    v4 = v28;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_creationDate;
    *(v4 + 140) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 2) = *&self->_modificationDate;
  *(v4 + 140) |= 2u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    *(v4 + 136) = self->_deleted;
    *(v4 + 140) |= 0x20u;
  }

LABEL_9:
  if (self->_build)
  {
    [v28 setBuild:?];
    v4 = v28;
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    *(v4 + 18) = self->_majorVersion;
    *(v4 + 140) |= 4u;
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_13:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

  *(v4 + 19) = self->_minorVersion;
  *(v4 + 140) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    *(v4 + 24) = self->_patchVersion;
    *(v4 + 140) |= 0x10u;
  }

LABEL_15:
  if (self->_linksData)
  {
    [v28 setLinksData:?];
  }

  if ([(HDCodableUserDomainConcept *)self codingsCount])
  {
    [v28 clearCodings];
    v7 = [(HDCodableUserDomainConcept *)self codingsCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(HDCodableUserDomainConcept *)self codingsAtIndex:i];
        [v28 addCodings:v10];
      }
    }
  }

  if ([(HDCodableUserDomainConcept *)self linksCount])
  {
    [v28 clearLinks];
    v11 = [(HDCodableUserDomainConcept *)self linksCount];
    if (v11)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(HDCodableUserDomainConcept *)self linksAtIndex:j];
        [v28 addLinks:v14];
      }
    }
  }

  if ([(HDCodableUserDomainConcept *)self propertiesCount])
  {
    [v28 clearProperties];
    v15 = [(HDCodableUserDomainConcept *)self propertiesCount];
    if (v15)
    {
      v16 = v15;
      for (k = 0; k != v16; ++k)
      {
        v18 = [(HDCodableUserDomainConcept *)self propertiesAtIndex:k];
        [v28 addProperties:v18];
      }
    }
  }

  if ([(HDCodableUserDomainConcept *)self localizedStringPropertiesCount])
  {
    [v28 clearLocalizedStringProperties];
    v19 = [(HDCodableUserDomainConcept *)self localizedStringPropertiesCount];
    if (v19)
    {
      v20 = v19;
      for (m = 0; m != v20; ++m)
      {
        v22 = [(HDCodableUserDomainConcept *)self localizedStringPropertiesAtIndex:m];
        [v28 addLocalizedStringProperties:v22];
      }
    }
  }

  if (self->_ontologyLocalizedEducationContent)
  {
    [v28 setOntologyLocalizedEducationContent:?];
  }

  if ([(HDCodableUserDomainConcept *)self namedQuantitiesCount])
  {
    [v28 clearNamedQuantities];
    v23 = [(HDCodableUserDomainConcept *)self namedQuantitiesCount];
    if (v23)
    {
      v24 = v23;
      for (n = 0; n != v24; ++n)
      {
        v26 = [(HDCodableUserDomainConcept *)self namedQuantitiesAtIndex:n];
        [v28 addNamedQuantities:v26];
      }
    }
  }

  if (self->_syncIdentity)
  {
    [v28 setSyncIdentity:?];
  }

  v27 = v28;
  if (self->_typeData)
  {
    [v28 setTypeData:?];
    v27 = v28;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:a3];
  v7 = *(v5 + 128);
  *(v5 + 128) = v6;

  v8 = [(HDCodableUserDomainConceptTypeIdentifier *)self->_identifier copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_creationDate;
    *(v5 + 140) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_modificationDate;
  *(v5 + 140) |= 2u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    *(v5 + 136) = self->_deleted;
    *(v5 + 140) |= 0x20u;
  }

LABEL_5:
  v11 = [(NSString *)self->_build copyWithZone:a3];
  v12 = *(v5 + 24);
  *(v5 + 24) = v11;

  v13 = self->_has;
  if ((v13 & 4) != 0)
  {
    *(v5 + 72) = self->_majorVersion;
    *(v5 + 140) |= 4u;
    v13 = self->_has;
    if ((v13 & 8) == 0)
    {
LABEL_7:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  *(v5 + 76) = self->_minorVersion;
  *(v5 + 140) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_8:
    *(v5 + 96) = self->_patchVersion;
    *(v5 + 140) |= 0x10u;
  }

LABEL_9:
  v14 = [(NSData *)self->_linksData copyWithZone:a3];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v16 = self->_codings;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v71;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v71 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v70 + 1) + 8 * i) copyWithZone:a3];
        [v5 addCodings:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v70 objects:v78 count:16];
    }

    while (v18);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v22 = self->_links;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v67;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v67 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v66 + 1) + 8 * j) copyWithZone:a3];
        [v5 addLinks:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v24);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v28 = self->_properties;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v63;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v63 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v62 + 1) + 8 * k) copyWithZone:a3];
        [v5 addProperties:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v62 objects:v76 count:16];
    }

    while (v30);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v34 = self->_localizedStringProperties;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v58 objects:v75 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v59;
    do
    {
      for (m = 0; m != v36; ++m)
      {
        if (*v59 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v58 + 1) + 8 * m) copyWithZone:a3];
        [v5 addLocalizedStringProperties:v39];
      }

      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v58 objects:v75 count:16];
    }

    while (v36);
  }

  v40 = [(HDCodableOntologyLocalizedEducationContent *)self->_ontologyLocalizedEducationContent copyWithZone:a3];
  v41 = *(v5 + 88);
  *(v5 + 88) = v40;

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v42 = self->_namedQuantities;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v54 objects:v74 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v55;
    do
    {
      for (n = 0; n != v44; ++n)
      {
        if (*v55 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [*(*(&v54 + 1) + 8 * n) copyWithZone:{a3, v54}];
        [v5 addNamedQuantities:v47];
      }

      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v54 objects:v74 count:16];
    }

    while (v44);
  }

  v48 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v49 = *(v5 + 112);
  *(v5 + 112) = v48;

  v50 = [(NSData *)self->_typeData copyWithZone:a3];
  v51 = *(v5 + 120);
  *(v5 + 120) = v50;

  v52 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_60;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 16))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_60;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 5))
  {
    if (![(HDCodableUserDomainConceptTypeIdentifier *)identifier isEqual:?])
    {
      goto LABEL_60;
    }
  }

  has = self->_has;
  v8 = *(v4 + 140);
  if (has)
  {
    if ((*(v4 + 140) & 1) == 0 || self->_creationDate != *(v4 + 1))
    {
      goto LABEL_60;
    }
  }

  else if (*(v4 + 140))
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 140) & 2) == 0 || self->_modificationDate != *(v4 + 2))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 140) & 2) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 140) & 0x20) == 0)
    {
      goto LABEL_60;
    }

    v10 = *(v4 + 136);
    if (self->_deleted)
    {
      if ((*(v4 + 136) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (*(v4 + 136))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 140) & 0x20) != 0)
  {
    goto LABEL_60;
  }

  build = self->_build;
  if (!(build | *(v4 + 3)))
  {
    goto LABEL_21;
  }

  if (![(NSString *)build isEqual:?])
  {
LABEL_60:
    v20 = 0;
    goto LABEL_61;
  }

  has = self->_has;
  v8 = *(v4 + 140);
LABEL_21:
  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_majorVersion != *(v4 + 18))
    {
      goto LABEL_60;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_minorVersion != *(v4 + 19))
    {
      goto LABEL_60;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_patchVersion != *(v4 + 24))
    {
      goto LABEL_60;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_60;
  }

  linksData = self->_linksData;
  if (linksData | *(v4 + 7) && ![(NSData *)linksData isEqual:?])
  {
    goto LABEL_60;
  }

  codings = self->_codings;
  if (codings | *(v4 + 4))
  {
    if (![(NSMutableArray *)codings isEqual:?])
    {
      goto LABEL_60;
    }
  }

  links = self->_links;
  if (links | *(v4 + 6))
  {
    if (![(NSMutableArray *)links isEqual:?])
    {
      goto LABEL_60;
    }
  }

  properties = self->_properties;
  if (properties | *(v4 + 13))
  {
    if (![(NSMutableArray *)properties isEqual:?])
    {
      goto LABEL_60;
    }
  }

  localizedStringProperties = self->_localizedStringProperties;
  if (localizedStringProperties | *(v4 + 8))
  {
    if (![(NSMutableArray *)localizedStringProperties isEqual:?])
    {
      goto LABEL_60;
    }
  }

  ontologyLocalizedEducationContent = self->_ontologyLocalizedEducationContent;
  if (ontologyLocalizedEducationContent | *(v4 + 11))
  {
    if (![(HDCodableOntologyLocalizedEducationContent *)ontologyLocalizedEducationContent isEqual:?])
    {
      goto LABEL_60;
    }
  }

  namedQuantities = self->_namedQuantities;
  if (namedQuantities | *(v4 + 10))
  {
    if (![(NSMutableArray *)namedQuantities isEqual:?])
    {
      goto LABEL_60;
    }
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 14))
  {
    if (![(HDCodableSyncIdentity *)syncIdentity isEqual:?])
    {
      goto LABEL_60;
    }
  }

  typeData = self->_typeData;
  if (typeData | *(v4 + 15))
  {
    v20 = [(NSData *)typeData isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_61:

  return v20;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_uuid hash];
  v4 = [(HDCodableUserDomainConceptTypeIdentifier *)self->_identifier hash];
  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    if (creationDate < 0.0)
    {
      creationDate = -creationDate;
    }

    *v5.i64 = floor(creationDate + 0.5);
    v9 = (creationDate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
    v7 = 2654435761u * *v5.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    modificationDate = self->_modificationDate;
    if (modificationDate < 0.0)
    {
      modificationDate = -modificationDate;
    }

    *v5.i64 = floor(modificationDate + 0.5);
    v13 = (modificationDate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v6, v5).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v15 = 2654435761 * self->_deleted;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(NSString *)self->_build hash];
  if ((*&self->_has & 4) == 0)
  {
    v17 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    v18 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    v19 = 0;
    goto LABEL_27;
  }

  v17 = 2654435761 * self->_majorVersion;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v18 = 2654435761 * self->_minorVersion;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v19 = 2654435761 * self->_patchVersion;
LABEL_27:
  v20 = v4 ^ v3 ^ v7 ^ v11 ^ v15 ^ v16;
  v21 = v17 ^ v18 ^ v19 ^ [(NSData *)self->_linksData hash];
  v22 = v20 ^ v21 ^ [(NSMutableArray *)self->_codings hash];
  v23 = [(NSMutableArray *)self->_links hash];
  v24 = v23 ^ [(NSMutableArray *)self->_properties hash];
  v25 = v24 ^ [(NSMutableArray *)self->_localizedStringProperties hash];
  v26 = v22 ^ v25 ^ [(HDCodableOntologyLocalizedEducationContent *)self->_ontologyLocalizedEducationContent hash];
  v27 = [(NSMutableArray *)self->_namedQuantities hash];
  v28 = v27 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  return v26 ^ v28 ^ [(NSData *)self->_typeData hash];
}

- (void)mergeFrom:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 16))
  {
    [(HDCodableUserDomainConcept *)self setUuid:?];
  }

  identifier = self->_identifier;
  v6 = *(v4 + 5);
  if (identifier)
  {
    if (v6)
    {
      [(HDCodableUserDomainConceptTypeIdentifier *)identifier mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableUserDomainConcept *)self setIdentifier:?];
  }

  v7 = *(v4 + 140);
  if (v7)
  {
    self->_creationDate = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 140);
    if ((v7 & 2) == 0)
    {
LABEL_10:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 140) & 2) == 0)
  {
    goto LABEL_10;
  }

  self->_modificationDate = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 140) & 0x20) != 0)
  {
LABEL_11:
    self->_deleted = *(v4 + 136);
    *&self->_has |= 0x20u;
  }

LABEL_12:
  if (*(v4 + 3))
  {
    [(HDCodableUserDomainConcept *)self setBuild:?];
  }

  v8 = *(v4 + 140);
  if ((v8 & 4) != 0)
  {
    self->_majorVersion = *(v4 + 18);
    *&self->_has |= 4u;
    v8 = *(v4 + 140);
    if ((v8 & 8) == 0)
    {
LABEL_16:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*(v4 + 140) & 8) == 0)
  {
    goto LABEL_16;
  }

  self->_minorVersion = *(v4 + 19);
  *&self->_has |= 8u;
  if ((*(v4 + 140) & 0x10) != 0)
  {
LABEL_17:
    self->_patchVersion = *(v4 + 24);
    *&self->_has |= 0x10u;
  }

LABEL_18:
  if (*(v4 + 7))
  {
    [(HDCodableUserDomainConcept *)self setLinksData:?];
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v9 = *(v4 + 4);
  v10 = [v9 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v56;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(HDCodableUserDomainConcept *)self addCodings:*(*(&v55 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v11);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v14 = *(v4 + 6);
  v15 = [v14 countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v52;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v52 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(HDCodableUserDomainConcept *)self addLinks:*(*(&v51 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v16);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v19 = *(v4 + 13);
  v20 = [v19 countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v48;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v48 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(HDCodableUserDomainConcept *)self addProperties:*(*(&v47 + 1) + 8 * k)];
      }

      v21 = [v19 countByEnumeratingWithState:&v47 objects:v61 count:16];
    }

    while (v21);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v24 = *(v4 + 8);
  v25 = [v24 countByEnumeratingWithState:&v43 objects:v60 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v44;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v44 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(HDCodableUserDomainConcept *)self addLocalizedStringProperties:*(*(&v43 + 1) + 8 * m)];
      }

      v26 = [v24 countByEnumeratingWithState:&v43 objects:v60 count:16];
    }

    while (v26);
  }

  ontologyLocalizedEducationContent = self->_ontologyLocalizedEducationContent;
  v30 = *(v4 + 11);
  if (ontologyLocalizedEducationContent)
  {
    if (v30)
    {
      [(HDCodableOntologyLocalizedEducationContent *)ontologyLocalizedEducationContent mergeFrom:?];
    }
  }

  else if (v30)
  {
    [(HDCodableUserDomainConcept *)self setOntologyLocalizedEducationContent:?];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = *(v4 + 10);
  v32 = [v31 countByEnumeratingWithState:&v39 objects:v59 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v40;
    do
    {
      for (n = 0; n != v33; ++n)
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(HDCodableUserDomainConcept *)self addNamedQuantities:*(*(&v39 + 1) + 8 * n), v39];
      }

      v33 = [v31 countByEnumeratingWithState:&v39 objects:v59 count:16];
    }

    while (v33);
  }

  syncIdentity = self->_syncIdentity;
  v37 = *(v4 + 14);
  if (syncIdentity)
  {
    if (v37)
    {
      [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
    }
  }

  else if (v37)
  {
    [(HDCodableUserDomainConcept *)self setSyncIdentity:?];
  }

  if (*(v4 + 15))
  {
    [(HDCodableUserDomainConcept *)self setTypeData:?];
  }

  v38 = *MEMORY[0x277D85DE8];
}

@end