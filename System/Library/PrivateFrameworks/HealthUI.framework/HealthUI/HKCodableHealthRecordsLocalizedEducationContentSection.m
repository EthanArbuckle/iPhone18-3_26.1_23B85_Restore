@interface HKCodableHealthRecordsLocalizedEducationContentSection
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSectionAttributions:(id)a3;
- (void)addSectionCitations:(id)a3;
- (void)addSectionValidRegionCodes:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableHealthRecordsLocalizedEducationContentSection

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
  v8.super_class = HKCodableHealthRecordsLocalizedEducationContentSection;
  v4 = [(HKCodableHealthRecordsLocalizedEducationContentSection *)&v8 description];
  v5 = [(HKCodableHealthRecordsLocalizedEducationContentSection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_type];
    [v3 setObject:v4 forKey:@"type"];
  }

  sectionLocalizedContent = self->_sectionLocalizedContent;
  if (sectionLocalizedContent)
  {
    [v3 setObject:sectionLocalizedContent forKey:@"sectionLocalizedContent"];
  }

  sectionLocaleIdentifier = self->_sectionLocaleIdentifier;
  if (sectionLocaleIdentifier)
  {
    [v3 setObject:sectionLocaleIdentifier forKey:@"sectionLocaleIdentifier"];
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
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_sectionLocalizedContent)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sectionLocaleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_sectionValidRegionCodes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_sectionAttributions;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_sectionCitations;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteStringField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_type;
    *(v4 + 56) |= 1u;
  }

  v17 = v4;
  if (self->_sectionLocalizedContent)
  {
    [v4 setSectionLocalizedContent:?];
  }

  if (self->_sectionLocaleIdentifier)
  {
    [v17 setSectionLocaleIdentifier:?];
  }

  if ([(HKCodableHealthRecordsLocalizedEducationContentSection *)self sectionValidRegionCodesCount])
  {
    [v17 clearSectionValidRegionCodes];
    v5 = [(HKCodableHealthRecordsLocalizedEducationContentSection *)self sectionValidRegionCodesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HKCodableHealthRecordsLocalizedEducationContentSection *)self sectionValidRegionCodesAtIndex:i];
        [v17 addSectionValidRegionCodes:v8];
      }
    }
  }

  if ([(HKCodableHealthRecordsLocalizedEducationContentSection *)self sectionAttributionsCount])
  {
    [v17 clearSectionAttributions];
    v9 = [(HKCodableHealthRecordsLocalizedEducationContentSection *)self sectionAttributionsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(HKCodableHealthRecordsLocalizedEducationContentSection *)self sectionAttributionsAtIndex:j];
        [v17 addSectionAttributions:v12];
      }
    }
  }

  if ([(HKCodableHealthRecordsLocalizedEducationContentSection *)self sectionCitationsCount])
  {
    [v17 clearSectionCitations];
    v13 = [(HKCodableHealthRecordsLocalizedEducationContentSection *)self sectionCitationsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(HKCodableHealthRecordsLocalizedEducationContentSection *)self sectionCitationsAtIndex:k];
        [v17 addSectionCitations:v16];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_type;
    *(v5 + 56) |= 1u;
  }

  v7 = [(NSString *)self->_sectionLocalizedContent copyWithZone:a3];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(NSString *)self->_sectionLocaleIdentifier copyWithZone:a3];
  v10 = v6[4];
  v6[4] = v9;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = self->_sectionValidRegionCodes;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      v15 = 0;
      do
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v38 + 1) + 8 * v15) copyWithZone:a3];
        [v6 addSectionValidRegionCodes:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v13);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = self->_sectionAttributions;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      v21 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v34 + 1) + 8 * v21) copyWithZone:a3];
        [v6 addSectionAttributions:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = self->_sectionCitations;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      v27 = 0;
      do
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v30 + 1) + 8 * v27) copyWithZone:{a3, v30}];
        [v6 addSectionCitations:v28];

        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v25);
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
    if ((*(v4 + 56) & 1) == 0 || self->_type != *(v4 + 1))
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

  sectionLocaleIdentifier = self->_sectionLocaleIdentifier;
  if (sectionLocaleIdentifier | *(v4 + 4))
  {
    if (![(NSString *)sectionLocaleIdentifier isEqual:?])
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
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_sectionLocalizedContent hash]^ v3;
  v5 = [(NSString *)self->_sectionLocaleIdentifier hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_sectionValidRegionCodes hash];
  v7 = [(NSMutableArray *)self->_sectionAttributions hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_sectionCitations hash];
}

- (void)mergeFrom:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4[7])
  {
    self->_type = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[5])
  {
    [(HKCodableHealthRecordsLocalizedEducationContentSection *)self setSectionLocalizedContent:?];
  }

  if (*(v5 + 4))
  {
    [(HKCodableHealthRecordsLocalizedEducationContentSection *)self setSectionLocaleIdentifier:?];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = *(v5 + 6);
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(HKCodableHealthRecordsLocalizedEducationContentSection *)self addSectionValidRegionCodes:*(*(&v29 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = *(v5 + 2);
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

        [(HKCodableHealthRecordsLocalizedEducationContentSection *)self addSectionAttributions:*(*(&v25 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = *(v5 + 3);
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

        [(HKCodableHealthRecordsLocalizedEducationContentSection *)self addSectionCitations:*(*(&v21 + 1) + 8 * k), v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }
}

@end