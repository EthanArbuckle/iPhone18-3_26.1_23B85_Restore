@interface HKCodableHealthRecordsEduSection
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSectionAttributions:(id)a3;
- (void)addSectionCitations:(id)a3;
- (void)addSectionLocaleIdentifiers:(id)a3;
- (void)addSectionValidRegionCodes:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableHealthRecordsEduSection

- (void)addSectionLocaleIdentifiers:(id)a3
{
  v4 = a3;
  sectionLocaleIdentifiers = self->_sectionLocaleIdentifiers;
  v8 = v4;
  if (!sectionLocaleIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sectionLocaleIdentifiers;
    self->_sectionLocaleIdentifiers = v6;

    v4 = v8;
    sectionLocaleIdentifiers = self->_sectionLocaleIdentifiers;
  }

  [(NSMutableArray *)sectionLocaleIdentifiers addObject:v4];
}

- (void)addSectionValidRegionCodes:(id)a3
{
  v4 = a3;
  sectionValidRegionCodes = self->_sectionValidRegionCodes;
  v8 = v4;
  if (!sectionValidRegionCodes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sectionValidRegionCodes;
    self->_sectionValidRegionCodes = v6;

    v4 = v8;
    sectionValidRegionCodes = self->_sectionValidRegionCodes;
  }

  [(NSMutableArray *)sectionValidRegionCodes addObject:v4];
}

- (void)addSectionAttributions:(id)a3
{
  v4 = a3;
  sectionAttributions = self->_sectionAttributions;
  v8 = v4;
  if (!sectionAttributions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sectionAttributions;
    self->_sectionAttributions = v6;

    v4 = v8;
    sectionAttributions = self->_sectionAttributions;
  }

  [(NSMutableArray *)sectionAttributions addObject:v4];
}

- (void)addSectionCitations:(id)a3
{
  v4 = a3;
  sectionCitations = self->_sectionCitations;
  v8 = v4;
  if (!sectionCitations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sectionCitations;
    self->_sectionCitations = v6;

    v4 = v8;
    sectionCitations = self->_sectionCitations;
  }

  [(NSMutableArray *)sectionCitations addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableHealthRecordsEduSection;
  v4 = [(HKCodableHealthRecordsEduSection *)&v8 description];
  v5 = [(HKCodableHealthRecordsEduSection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sectionType];
    [v3 setObject:v4 forKey:@"sectionType"];
  }

  sectionLocalizedContent = self->_sectionLocalizedContent;
  if (sectionLocalizedContent)
  {
    [v3 setObject:sectionLocalizedContent forKey:@"sectionLocalizedContent"];
  }

  sectionLocaleIdentifiers = self->_sectionLocaleIdentifiers;
  if (sectionLocaleIdentifiers)
  {
    [v3 setObject:sectionLocaleIdentifiers forKey:@"sectionLocaleIdentifiers"];
  }

  sectionValidRegionCodes = self->_sectionValidRegionCodes;
  if (sectionValidRegionCodes)
  {
    [v3 setObject:sectionValidRegionCodes forKey:@"sectionValidRegionCodes"];
  }

  sectionAttributions = self->_sectionAttributions;
  if (sectionAttributions)
  {
    [v3 setObject:sectionAttributions forKey:@"sectionAttributions"];
  }

  sectionCitations = self->_sectionCitations;
  if (sectionCitations)
  {
    [v3 setObject:sectionCitations forKey:@"sectionCitations"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_sectionLocalizedContent)
  {
    PBDataWriterWriteStringField();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_sectionLocaleIdentifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_sectionValidRegionCodes;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_sectionAttributions;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteStringField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self->_sectionCitations;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteStringField();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_sectionType;
    *(v4 + 56) |= 1u;
  }

  v21 = v4;
  if (self->_sectionLocalizedContent)
  {
    [v4 setSectionLocalizedContent:?];
  }

  if ([(HKCodableHealthRecordsEduSection *)self sectionLocaleIdentifiersCount])
  {
    [v21 clearSectionLocaleIdentifiers];
    v5 = [(HKCodableHealthRecordsEduSection *)self sectionLocaleIdentifiersCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HKCodableHealthRecordsEduSection *)self sectionLocaleIdentifiersAtIndex:i];
        [v21 addSectionLocaleIdentifiers:v8];
      }
    }
  }

  if ([(HKCodableHealthRecordsEduSection *)self sectionValidRegionCodesCount])
  {
    [v21 clearSectionValidRegionCodes];
    v9 = [(HKCodableHealthRecordsEduSection *)self sectionValidRegionCodesCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(HKCodableHealthRecordsEduSection *)self sectionValidRegionCodesAtIndex:j];
        [v21 addSectionValidRegionCodes:v12];
      }
    }
  }

  if ([(HKCodableHealthRecordsEduSection *)self sectionAttributionsCount])
  {
    [v21 clearSectionAttributions];
    v13 = [(HKCodableHealthRecordsEduSection *)self sectionAttributionsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(HKCodableHealthRecordsEduSection *)self sectionAttributionsAtIndex:k];
        [v21 addSectionAttributions:v16];
      }
    }
  }

  if ([(HKCodableHealthRecordsEduSection *)self sectionCitationsCount])
  {
    [v21 clearSectionCitations];
    v17 = [(HKCodableHealthRecordsEduSection *)self sectionCitationsCount];
    if (v17)
    {
      v18 = v17;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(HKCodableHealthRecordsEduSection *)self sectionCitationsAtIndex:m];
        [v21 addSectionCitations:v20];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_sectionType;
    *(v5 + 56) |= 1u;
  }

  v7 = [(NSString *)self->_sectionLocalizedContent copyWithZone:a3];
  v8 = v6[5];
  v6[5] = v7;

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = self->_sectionLocaleIdentifiers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    do
    {
      v13 = 0;
      do
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v46 + 1) + 8 * v13) copyWithZone:a3];
        [v6 addSectionLocaleIdentifiers:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v11);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v15 = self->_sectionValidRegionCodes;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v43;
    do
    {
      v19 = 0;
      do
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v42 + 1) + 8 * v19) copyWithZone:a3];
        [v6 addSectionValidRegionCodes:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v17);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v21 = self->_sectionAttributions;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v39;
    do
    {
      v25 = 0;
      do
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v38 + 1) + 8 * v25) copyWithZone:a3];
        [v6 addSectionAttributions:v26];

        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v23);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = self->_sectionCitations;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v35;
    do
    {
      v31 = 0;
      do
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v34 + 1) + 8 * v31) copyWithZone:{a3, v34}];
        [v6 addSectionCitations:v32];

        ++v31;
      }

      while (v29 != v31);
      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v29);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_sectionType != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  sectionLocalizedContent = self->_sectionLocalizedContent;
  if (sectionLocalizedContent | *(v4 + 5) && ![(NSString *)sectionLocalizedContent isEqual:?])
  {
    goto LABEL_17;
  }

  sectionLocaleIdentifiers = self->_sectionLocaleIdentifiers;
  if (sectionLocaleIdentifiers | *(v4 + 4))
  {
    if (![(NSMutableArray *)sectionLocaleIdentifiers isEqual:?])
    {
      goto LABEL_17;
    }
  }

  sectionValidRegionCodes = self->_sectionValidRegionCodes;
  if (sectionValidRegionCodes | *(v4 + 6))
  {
    if (![(NSMutableArray *)sectionValidRegionCodes isEqual:?])
    {
      goto LABEL_17;
    }
  }

  sectionAttributions = self->_sectionAttributions;
  if (sectionAttributions | *(v4 + 2))
  {
    if (![(NSMutableArray *)sectionAttributions isEqual:?])
    {
      goto LABEL_17;
    }
  }

  sectionCitations = self->_sectionCitations;
  if (sectionCitations | *(v4 + 3))
  {
    v10 = [(NSMutableArray *)sectionCitations isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_18:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_sectionType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_sectionLocalizedContent hash]^ v3;
  v5 = [(NSMutableArray *)self->_sectionLocaleIdentifiers hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_sectionValidRegionCodes hash];
  v7 = [(NSMutableArray *)self->_sectionAttributions hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_sectionCitations hash];
}

- (void)mergeFrom:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 56))
  {
    self->_sectionType = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(HKCodableHealthRecordsEduSection *)self setSectionLocalizedContent:?];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = v5[4];
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(HKCodableHealthRecordsEduSection *)self addSectionLocaleIdentifiers:*(*(&v38 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v5[6];
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(HKCodableHealthRecordsEduSection *)self addSectionValidRegionCodes:*(*(&v34 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v13);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v5[2];
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(HKCodableHealthRecordsEduSection *)self addSectionAttributions:*(*(&v30 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v18);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = v5[3];
  v22 = [v21 countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(HKCodableHealthRecordsEduSection *)self addSectionCitations:*(*(&v26 + 1) + 8 * m), v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v26 objects:v42 count:16];
    }

    while (v23);
  }
}

@end