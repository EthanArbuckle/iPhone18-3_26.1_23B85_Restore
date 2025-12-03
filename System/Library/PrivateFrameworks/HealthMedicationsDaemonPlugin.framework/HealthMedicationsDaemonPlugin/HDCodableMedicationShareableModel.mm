@interface HDCodableMedicationShareableModel
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addIngredientComponentStrings:(id)strings;
- (void)addMonthHighlights:(id)highlights;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasArchived:(BOOL)archived;
- (void)setHasFreeTextMedicationLoggingUnit:(BOOL)unit;
- (void)setHasIsLactationDescriptionCritical:(BOOL)critical;
- (void)setHasIsPregnancyDescriptionCritical:(BOOL)critical;
- (void)setHasLatestSupportedVersion:(BOOL)version;
- (void)setHasMinimumSupportedVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HDCodableMedicationShareableModel

- (void)addIngredientComponentStrings:(id)strings
{
  stringsCopy = strings;
  ingredientComponentStrings = self->_ingredientComponentStrings;
  v8 = stringsCopy;
  if (!ingredientComponentStrings)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ingredientComponentStrings;
    self->_ingredientComponentStrings = v6;

    stringsCopy = v8;
    ingredientComponentStrings = self->_ingredientComponentStrings;
  }

  [(NSMutableArray *)ingredientComponentStrings addObject:stringsCopy];
}

- (void)setHasFreeTextMedicationLoggingUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addMonthHighlights:(id)highlights
{
  highlightsCopy = highlights;
  monthHighlights = self->_monthHighlights;
  v8 = highlightsCopy;
  if (!monthHighlights)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_monthHighlights;
    self->_monthHighlights = v6;

    highlightsCopy = v8;
    monthHighlights = self->_monthHighlights;
  }

  [(NSMutableArray *)monthHighlights addObject:highlightsCopy];
}

- (void)setHasArchived:(BOOL)archived
{
  if (archived)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasLatestSupportedVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMinimumSupportedVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsPregnancyDescriptionCritical:(BOOL)critical
{
  if (critical)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsLactationDescriptionCritical:(BOOL)critical
{
  if (critical)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicationShareableModel;
  v4 = [(HDCodableMedicationShareableModel *)&v8 description];
  dictionaryRepresentation = [(HDCodableMedicationShareableModel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v54 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  conceptIdentifier = self->_conceptIdentifier;
  if (conceptIdentifier)
  {
    [dictionary setObject:conceptIdentifier forKey:@"conceptIdentifier"];
  }

  audienceRawValue = self->_audienceRawValue;
  if (audienceRawValue)
  {
    [v4 setObject:audienceRawValue forKey:@"audienceRawValue"];
  }

  baseUnitStrength = self->_baseUnitStrength;
  if (baseUnitStrength)
  {
    [v4 setObject:baseUnitStrength forKey:@"baseUnitStrength"];
  }

  ingredientComponentStrings = self->_ingredientComponentStrings;
  if (ingredientComponentStrings)
  {
    [v4 setObject:ingredientComponentStrings forKey:@"ingredientComponentStrings"];
  }

  ontologyLoggingUnitSingular = self->_ontologyLoggingUnitSingular;
  if (ontologyLoggingUnitSingular)
  {
    [v4 setObject:ontologyLoggingUnitSingular forKey:@"ontologyLoggingUnitSingular"];
  }

  ontologyLoggingUnitPlural = self->_ontologyLoggingUnitPlural;
  if (ontologyLoggingUnitPlural)
  {
    [v4 setObject:ontologyLoggingUnitPlural forKey:@"ontologyLoggingUnitPlural"];
  }

  eduContentString = self->_eduContentString;
  if (eduContentString)
  {
    [v4 setObject:eduContentString forKey:@"eduContentString"];
  }

  sideEffectsContentString = self->_sideEffectsContentString;
  if (sideEffectsContentString)
  {
    [v4 setObject:sideEffectsContentString forKey:@"sideEffectsContentString"];
  }

  medicationVisualizationConfigJSONString = self->_medicationVisualizationConfigJSONString;
  if (medicationVisualizationConfigJSONString)
  {
    [v4 setObject:medicationVisualizationConfigJSONString forKey:@"medicationVisualizationConfigJSONString"];
  }

  has = self->_has;
  if (has)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_freeTextMedicationForm];
    [v4 setObject:v15 forKey:@"freeTextMedicationForm"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_freeTextMedicationLoggingUnit];
    [v4 setObject:v16 forKey:@"freeTextMedicationLoggingUnit"];
  }

  schedule = self->_schedule;
  if (schedule)
  {
    dictionaryRepresentation = [(HDCodableMedicationSchedule *)schedule dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"schedule"];
  }

  mostRecentDose = self->_mostRecentDose;
  if (mostRecentDose)
  {
    dictionaryRepresentation2 = [(HDCodableMedicationDoseEvent *)mostRecentDose dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"mostRecentDose"];
  }

  if ([(NSMutableArray *)self->_monthHighlights count])
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_monthHighlights, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v22 = self->_monthHighlights;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v50;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v50 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation3 = [*(*(&v49 + 1) + 8 * i) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation3];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v24);
    }

    [v4 setObject:v21 forKey:@"monthHighlights"];
  }

  v28 = self->_has;
  if ((v28 & 0x10) != 0)
  {
    v47 = [MEMORY[0x277CCABB0] numberWithBool:self->_archived];
    [v4 setObject:v47 forKey:@"archived"];

    v28 = self->_has;
    if ((v28 & 4) == 0)
    {
LABEL_38:
      if ((v28 & 8) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_38;
  }

  v48 = [MEMORY[0x277CCABB0] numberWithLongLong:{self->_latestSupportedVersion, v49}];
  [v4 setObject:v48 forKey:@"latestSupportedVersion"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_39:
    v29 = [MEMORY[0x277CCABB0] numberWithLongLong:{self->_minimumSupportedVersion, v49}];
    [v4 setObject:v29 forKey:@"minimumSupportedVersion"];
  }

LABEL_40:
  chartSeries = self->_chartSeries;
  if (chartSeries)
  {
    dictionaryRepresentation4 = [(HDCodableMedicationChartSeries *)chartSeries dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"chartSeries"];
  }

  preferredName = self->_preferredName;
  if (preferredName)
  {
    [v4 setObject:preferredName forKey:@"preferredName"];
  }

  brandName = self->_brandName;
  if (brandName)
  {
    [v4 setObject:brandName forKey:@"brandName"];
  }

  genericName = self->_genericName;
  if (genericName)
  {
    [v4 setObject:genericName forKey:@"genericName"];
  }

  manufacturedDoseForm = self->_manufacturedDoseForm;
  if (manufacturedDoseForm)
  {
    [v4 setObject:manufacturedDoseForm forKey:@"manufacturedDoseForm"];
  }

  basicDoseForm = self->_basicDoseForm;
  if (basicDoseForm)
  {
    [v4 setObject:basicDoseForm forKey:@"basicDoseForm"];
  }

  freeTextMedicationName = self->_freeTextMedicationName;
  if (freeTextMedicationName)
  {
    [v4 setObject:freeTextMedicationName forKey:@"freeTextMedicationName"];
  }

  freeTextMedicationStrengthQuantity = self->_freeTextMedicationStrengthQuantity;
  if (freeTextMedicationStrengthQuantity)
  {
    dictionaryRepresentation5 = [(HDCodableQuantity *)freeTextMedicationStrengthQuantity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"freeTextMedicationStrengthQuantity"];
  }

  pregnancyDescriptionContentString = self->_pregnancyDescriptionContentString;
  if (pregnancyDescriptionContentString)
  {
    [v4 setObject:pregnancyDescriptionContentString forKey:@"pregnancyDescriptionContentString"];
  }

  lactationDescriptionContentString = self->_lactationDescriptionContentString;
  if (lactationDescriptionContentString)
  {
    [v4 setObject:lactationDescriptionContentString forKey:@"lactationDescriptionContentString"];
  }

  v42 = self->_has;
  if ((v42 & 0x40) != 0)
  {
    v43 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPregnancyDescriptionCritical];
    [v4 setObject:v43 forKey:@"isPregnancyDescriptionCritical"];

    v42 = self->_has;
  }

  if ((v42 & 0x20) != 0)
  {
    v44 = [MEMORY[0x277CCABB0] numberWithBool:self->_isLactationDescriptionCritical];
    [v4 setObject:v44 forKey:@"isLactationDescriptionCritical"];
  }

  v45 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)to
{
  v37 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_conceptIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_audienceRawValue)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_baseUnitStrength)
  {
    PBDataWriterWriteStringField();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->_ingredientComponentStrings;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  if (self->_ontologyLoggingUnitSingular)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ontologyLoggingUnitPlural)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_eduContentString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sideEffectsContentString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_medicationVisualizationConfigJSONString)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    freeTextMedicationForm = self->_freeTextMedicationForm;
    PBDataWriterWriteInt64Field();
  }

  if (self->_schedule)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_mostRecentDose)
  {
    PBDataWriterWriteSubmessage();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = self->_monthHighlights;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v14);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    archived = self->_archived;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_39:
      if ((has & 8) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_39;
  }

  latestSupportedVersion = self->_latestSupportedVersion;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_40:
    minimumSupportedVersion = self->_minimumSupportedVersion;
    PBDataWriterWriteInt64Field();
  }

LABEL_41:
  if (self->_chartSeries)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_preferredName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_brandName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_genericName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_manufacturedDoseForm)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_basicDoseForm)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_freeTextMedicationName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_freeTextMedicationStrengthQuantity)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    freeTextMedicationLoggingUnit = self->_freeTextMedicationLoggingUnit;
    PBDataWriterWriteInt64Field();
  }

  if (self->_pregnancyDescriptionContentString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_lactationDescriptionContentString)
  {
    PBDataWriterWriteStringField();
  }

  v21 = self->_has;
  if ((v21 & 0x40) != 0)
  {
    isPregnancyDescriptionCritical = self->_isPregnancyDescriptionCritical;
    PBDataWriterWriteBOOLField();
    v21 = self->_has;
  }

  if ((v21 & 0x20) != 0)
  {
    isLactationDescriptionCritical = self->_isLactationDescriptionCritical;
    PBDataWriterWriteBOOLField();
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_conceptIdentifier)
  {
    [toCopy setConceptIdentifier:?];
  }

  if (self->_audienceRawValue)
  {
    [toCopy setAudienceRawValue:?];
  }

  if (self->_baseUnitStrength)
  {
    [toCopy setBaseUnitStrength:?];
  }

  if ([(HDCodableMedicationShareableModel *)self ingredientComponentStringsCount])
  {
    [toCopy clearIngredientComponentStrings];
    ingredientComponentStringsCount = [(HDCodableMedicationShareableModel *)self ingredientComponentStringsCount];
    if (ingredientComponentStringsCount)
    {
      v5 = ingredientComponentStringsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCodableMedicationShareableModel *)self ingredientComponentStringsAtIndex:i];
        [toCopy addIngredientComponentStrings:v7];
      }
    }
  }

  if (self->_ontologyLoggingUnitSingular)
  {
    [toCopy setOntologyLoggingUnitSingular:?];
  }

  v8 = toCopy;
  if (self->_ontologyLoggingUnitPlural)
  {
    [toCopy setOntologyLoggingUnitPlural:?];
    v8 = toCopy;
  }

  if (self->_eduContentString)
  {
    [toCopy setEduContentString:?];
    v8 = toCopy;
  }

  if (self->_sideEffectsContentString)
  {
    [toCopy setSideEffectsContentString:?];
    v8 = toCopy;
  }

  if (self->_medicationVisualizationConfigJSONString)
  {
    [toCopy setMedicationVisualizationConfigJSONString:?];
    v8 = toCopy;
  }

  if (*&self->_has)
  {
    v8[1] = self->_freeTextMedicationForm;
    *(v8 + 220) |= 1u;
  }

  if (self->_schedule)
  {
    [toCopy setSchedule:?];
  }

  if (self->_mostRecentDose)
  {
    [toCopy setMostRecentDose:?];
  }

  if ([(HDCodableMedicationShareableModel *)self monthHighlightsCount])
  {
    [toCopy clearMonthHighlights];
    monthHighlightsCount = [(HDCodableMedicationShareableModel *)self monthHighlightsCount];
    if (monthHighlightsCount)
    {
      v10 = monthHighlightsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(HDCodableMedicationShareableModel *)self monthHighlightsAtIndex:j];
        [toCopy addMonthHighlights:v12];
      }
    }
  }

  has = self->_has;
  v14 = toCopy;
  if ((has & 0x10) != 0)
  {
    *(toCopy + 216) = self->_archived;
    *(toCopy + 220) |= 0x10u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_33:
      if ((has & 8) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_33;
  }

  *(toCopy + 3) = self->_latestSupportedVersion;
  *(toCopy + 220) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_34:
    *(toCopy + 4) = self->_minimumSupportedVersion;
    *(toCopy + 220) |= 8u;
  }

LABEL_35:
  if (self->_chartSeries)
  {
    [toCopy setChartSeries:?];
    v14 = toCopy;
  }

  if (self->_preferredName)
  {
    [toCopy setPreferredName:?];
    v14 = toCopy;
  }

  if (self->_brandName)
  {
    [toCopy setBrandName:?];
    v14 = toCopy;
  }

  if (self->_genericName)
  {
    [toCopy setGenericName:?];
    v14 = toCopy;
  }

  if (self->_manufacturedDoseForm)
  {
    [toCopy setManufacturedDoseForm:?];
    v14 = toCopy;
  }

  if (self->_basicDoseForm)
  {
    [toCopy setBasicDoseForm:?];
    v14 = toCopy;
  }

  if (self->_freeTextMedicationName)
  {
    [toCopy setFreeTextMedicationName:?];
    v14 = toCopy;
  }

  if (self->_freeTextMedicationStrengthQuantity)
  {
    [toCopy setFreeTextMedicationStrengthQuantity:?];
    v14 = toCopy;
  }

  if ((*&self->_has & 2) != 0)
  {
    v14[2] = self->_freeTextMedicationLoggingUnit;
    *(v14 + 220) |= 2u;
  }

  if (self->_pregnancyDescriptionContentString)
  {
    [toCopy setPregnancyDescriptionContentString:?];
    v14 = toCopy;
  }

  if (self->_lactationDescriptionContentString)
  {
    [toCopy setLactationDescriptionContentString:?];
    v14 = toCopy;
  }

  v15 = self->_has;
  if ((v15 & 0x40) != 0)
  {
    *(v14 + 218) = self->_isPregnancyDescriptionCritical;
    *(v14 + 220) |= 0x40u;
    v15 = self->_has;
  }

  if ((v15 & 0x20) != 0)
  {
    *(v14 + 217) = self->_isLactationDescriptionCritical;
    *(v14 + 220) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_conceptIdentifier copyWithZone:zone];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v8 = [(NSString *)self->_audienceRawValue copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_baseUnitStrength copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v12 = self->_ingredientComponentStrings;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v67;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v67 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v66 + 1) + 8 * i) copyWithZone:zone];
        [v5 addIngredientComponentStrings:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_ontologyLoggingUnitSingular copyWithZone:zone];
  v19 = *(v5 + 176);
  *(v5 + 176) = v18;

  v20 = [(NSString *)self->_ontologyLoggingUnitPlural copyWithZone:zone];
  v21 = *(v5 + 168);
  *(v5 + 168) = v20;

  v22 = [(NSString *)self->_eduContentString copyWithZone:zone];
  v23 = *(v5 + 88);
  *(v5 + 88) = v22;

  v24 = [(NSString *)self->_sideEffectsContentString copyWithZone:zone];
  v25 = *(v5 + 208);
  *(v5 + 208) = v24;

  v26 = [(NSString *)self->_medicationVisualizationConfigJSONString copyWithZone:zone];
  v27 = *(v5 + 144);
  *(v5 + 144) = v26;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_freeTextMedicationForm;
    *(v5 + 220) |= 1u;
  }

  v28 = [(HDCodableMedicationSchedule *)self->_schedule copyWithZone:zone];
  v29 = *(v5 + 200);
  *(v5 + 200) = v28;

  v30 = [(HDCodableMedicationDoseEvent *)self->_mostRecentDose copyWithZone:zone];
  v31 = *(v5 + 160);
  *(v5 + 160) = v30;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v32 = self->_monthHighlights;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v63;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v63 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v62 + 1) + 8 * j) copyWithZone:{zone, v62}];
        [v5 addMonthHighlights:v37];
      }

      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v34);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 216) = self->_archived;
    *(v5 + 220) |= 0x10u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_19:
      if ((has & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_19;
  }

  *(v5 + 24) = self->_latestSupportedVersion;
  *(v5 + 220) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_20:
    *(v5 + 32) = self->_minimumSupportedVersion;
    *(v5 + 220) |= 8u;
  }

LABEL_21:
  v39 = [(HDCodableMedicationChartSeries *)self->_chartSeries copyWithZone:zone, v62];
  v40 = *(v5 + 72);
  *(v5 + 72) = v39;

  v41 = [(NSString *)self->_preferredName copyWithZone:zone];
  v42 = *(v5 + 184);
  *(v5 + 184) = v41;

  v43 = [(NSString *)self->_brandName copyWithZone:zone];
  v44 = *(v5 + 64);
  *(v5 + 64) = v43;

  v45 = [(NSString *)self->_genericName copyWithZone:zone];
  v46 = *(v5 + 112);
  *(v5 + 112) = v45;

  v47 = [(NSString *)self->_manufacturedDoseForm copyWithZone:zone];
  v48 = *(v5 + 136);
  *(v5 + 136) = v47;

  v49 = [(NSString *)self->_basicDoseForm copyWithZone:zone];
  v50 = *(v5 + 56);
  *(v5 + 56) = v49;

  v51 = [(NSString *)self->_freeTextMedicationName copyWithZone:zone];
  v52 = *(v5 + 96);
  *(v5 + 96) = v51;

  v53 = [(HDCodableQuantity *)self->_freeTextMedicationStrengthQuantity copyWithZone:zone];
  v54 = *(v5 + 104);
  *(v5 + 104) = v53;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_freeTextMedicationLoggingUnit;
    *(v5 + 220) |= 2u;
  }

  v55 = [(NSString *)self->_pregnancyDescriptionContentString copyWithZone:zone];
  v56 = *(v5 + 192);
  *(v5 + 192) = v55;

  v57 = [(NSString *)self->_lactationDescriptionContentString copyWithZone:zone];
  v58 = *(v5 + 128);
  *(v5 + 128) = v57;

  v59 = self->_has;
  if ((v59 & 0x40) != 0)
  {
    *(v5 + 218) = self->_isPregnancyDescriptionCritical;
    *(v5 + 220) |= 0x40u;
    v59 = self->_has;
  }

  if ((v59 & 0x20) != 0)
  {
    *(v5 + 217) = self->_isLactationDescriptionCritical;
    *(v5 + 220) |= 0x20u;
  }

  v60 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_89;
  }

  conceptIdentifier = self->_conceptIdentifier;
  if (conceptIdentifier | *(equalCopy + 10))
  {
    if (![(NSString *)conceptIdentifier isEqual:?])
    {
      goto LABEL_89;
    }
  }

  audienceRawValue = self->_audienceRawValue;
  if (audienceRawValue | *(equalCopy + 5))
  {
    if (![(NSString *)audienceRawValue isEqual:?])
    {
      goto LABEL_89;
    }
  }

  baseUnitStrength = self->_baseUnitStrength;
  if (baseUnitStrength | *(equalCopy + 6))
  {
    if (![(NSString *)baseUnitStrength isEqual:?])
    {
      goto LABEL_89;
    }
  }

  ingredientComponentStrings = self->_ingredientComponentStrings;
  if (ingredientComponentStrings | *(equalCopy + 15))
  {
    if (![(NSMutableArray *)ingredientComponentStrings isEqual:?])
    {
      goto LABEL_89;
    }
  }

  ontologyLoggingUnitSingular = self->_ontologyLoggingUnitSingular;
  if (ontologyLoggingUnitSingular | *(equalCopy + 22))
  {
    if (![(NSString *)ontologyLoggingUnitSingular isEqual:?])
    {
      goto LABEL_89;
    }
  }

  ontologyLoggingUnitPlural = self->_ontologyLoggingUnitPlural;
  if (ontologyLoggingUnitPlural | *(equalCopy + 21))
  {
    if (![(NSString *)ontologyLoggingUnitPlural isEqual:?])
    {
      goto LABEL_89;
    }
  }

  eduContentString = self->_eduContentString;
  if (eduContentString | *(equalCopy + 11))
  {
    if (![(NSString *)eduContentString isEqual:?])
    {
      goto LABEL_89;
    }
  }

  sideEffectsContentString = self->_sideEffectsContentString;
  if (sideEffectsContentString | *(equalCopy + 26))
  {
    if (![(NSString *)sideEffectsContentString isEqual:?])
    {
      goto LABEL_89;
    }
  }

  medicationVisualizationConfigJSONString = self->_medicationVisualizationConfigJSONString;
  if (medicationVisualizationConfigJSONString | *(equalCopy + 18))
  {
    if (![(NSString *)medicationVisualizationConfigJSONString isEqual:?])
    {
      goto LABEL_89;
    }
  }

  v14 = *(equalCopy + 220);
  if (*&self->_has)
  {
    if ((*(equalCopy + 220) & 1) == 0 || self->_freeTextMedicationForm != *(equalCopy + 1))
    {
      goto LABEL_89;
    }
  }

  else if (*(equalCopy + 220))
  {
    goto LABEL_89;
  }

  schedule = self->_schedule;
  if (schedule | *(equalCopy + 25) && ![(HDCodableMedicationSchedule *)schedule isEqual:?])
  {
    goto LABEL_89;
  }

  mostRecentDose = self->_mostRecentDose;
  if (mostRecentDose | *(equalCopy + 20))
  {
    if (![(HDCodableMedicationDoseEvent *)mostRecentDose isEqual:?])
    {
      goto LABEL_89;
    }
  }

  monthHighlights = self->_monthHighlights;
  if (monthHighlights | *(equalCopy + 19))
  {
    if (![(NSMutableArray *)monthHighlights isEqual:?])
    {
      goto LABEL_89;
    }
  }

  v18 = *(equalCopy + 220);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 220) & 0x10) == 0)
    {
      goto LABEL_89;
    }

    v19 = *(equalCopy + 216);
    if (self->_archived)
    {
      if ((*(equalCopy + 216) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 216))
    {
      goto LABEL_89;
    }
  }

  else if ((*(equalCopy + 220) & 0x10) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 220) & 4) == 0 || self->_latestSupportedVersion != *(equalCopy + 3))
    {
      goto LABEL_89;
    }
  }

  else if ((*(equalCopy + 220) & 4) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 220) & 8) == 0 || self->_minimumSupportedVersion != *(equalCopy + 4))
    {
      goto LABEL_89;
    }
  }

  else if ((*(equalCopy + 220) & 8) != 0)
  {
    goto LABEL_89;
  }

  chartSeries = self->_chartSeries;
  if (chartSeries | *(equalCopy + 9) && ![(HDCodableMedicationChartSeries *)chartSeries isEqual:?])
  {
    goto LABEL_89;
  }

  preferredName = self->_preferredName;
  if (preferredName | *(equalCopy + 23))
  {
    if (![(NSString *)preferredName isEqual:?])
    {
      goto LABEL_89;
    }
  }

  brandName = self->_brandName;
  if (brandName | *(equalCopy + 8))
  {
    if (![(NSString *)brandName isEqual:?])
    {
      goto LABEL_89;
    }
  }

  genericName = self->_genericName;
  if (genericName | *(equalCopy + 14))
  {
    if (![(NSString *)genericName isEqual:?])
    {
      goto LABEL_89;
    }
  }

  manufacturedDoseForm = self->_manufacturedDoseForm;
  if (manufacturedDoseForm | *(equalCopy + 17))
  {
    if (![(NSString *)manufacturedDoseForm isEqual:?])
    {
      goto LABEL_89;
    }
  }

  basicDoseForm = self->_basicDoseForm;
  if (basicDoseForm | *(equalCopy + 7))
  {
    if (![(NSString *)basicDoseForm isEqual:?])
    {
      goto LABEL_89;
    }
  }

  freeTextMedicationName = self->_freeTextMedicationName;
  if (freeTextMedicationName | *(equalCopy + 12))
  {
    if (![(NSString *)freeTextMedicationName isEqual:?])
    {
      goto LABEL_89;
    }
  }

  freeTextMedicationStrengthQuantity = self->_freeTextMedicationStrengthQuantity;
  if (freeTextMedicationStrengthQuantity | *(equalCopy + 13))
  {
    if (![(HDCodableQuantity *)freeTextMedicationStrengthQuantity isEqual:?])
    {
      goto LABEL_89;
    }
  }

  v28 = *(equalCopy + 220);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 220) & 2) == 0 || self->_freeTextMedicationLoggingUnit != *(equalCopy + 2))
    {
      goto LABEL_89;
    }
  }

  else if ((*(equalCopy + 220) & 2) != 0)
  {
    goto LABEL_89;
  }

  pregnancyDescriptionContentString = self->_pregnancyDescriptionContentString;
  if (pregnancyDescriptionContentString | *(equalCopy + 24) && ![(NSString *)pregnancyDescriptionContentString isEqual:?])
  {
    goto LABEL_89;
  }

  lactationDescriptionContentString = self->_lactationDescriptionContentString;
  if (lactationDescriptionContentString | *(equalCopy + 16))
  {
    if (![(NSString *)lactationDescriptionContentString isEqual:?])
    {
      goto LABEL_89;
    }
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 220) & 0x40) == 0)
    {
      goto LABEL_89;
    }

    v32 = *(equalCopy + 218);
    if (self->_isPregnancyDescriptionCritical)
    {
      if ((*(equalCopy + 218) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 218))
    {
      goto LABEL_89;
    }
  }

  else if ((*(equalCopy + 220) & 0x40) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 220) & 0x20) != 0)
    {
      if (self->_isLactationDescriptionCritical)
      {
        if (*(equalCopy + 217))
        {
          goto LABEL_91;
        }
      }

      else if (!*(equalCopy + 217))
      {
LABEL_91:
        v31 = 1;
        goto LABEL_90;
      }
    }

LABEL_89:
    v31 = 0;
    goto LABEL_90;
  }

  v31 = (*(equalCopy + 220) & 0x20) == 0;
LABEL_90:

  return v31;
}

- (unint64_t)hash
{
  v32 = [(NSString *)self->_conceptIdentifier hash];
  v31 = [(NSString *)self->_audienceRawValue hash];
  v30 = [(NSString *)self->_baseUnitStrength hash];
  v29 = [(NSMutableArray *)self->_ingredientComponentStrings hash];
  v28 = [(NSString *)self->_ontologyLoggingUnitSingular hash];
  v27 = [(NSString *)self->_ontologyLoggingUnitPlural hash];
  v26 = [(NSString *)self->_eduContentString hash];
  v25 = [(NSString *)self->_sideEffectsContentString hash];
  v24 = [(NSString *)self->_medicationVisualizationConfigJSONString hash];
  if (*&self->_has)
  {
    v23 = 2654435761 * self->_freeTextMedicationForm;
  }

  else
  {
    v23 = 0;
  }

  v22 = [(HDCodableMedicationSchedule *)self->_schedule hash];
  v21 = [(HDCodableMedicationDoseEvent *)self->_mostRecentDose hash];
  v20 = [(NSMutableArray *)self->_monthHighlights hash];
  if ((*&self->_has & 0x10) == 0)
  {
    v19 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v18 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v19 = 2654435761 * self->_archived;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v18 = 2654435761 * self->_latestSupportedVersion;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v17 = 2654435761 * self->_minimumSupportedVersion;
    goto LABEL_11;
  }

LABEL_10:
  v17 = 0;
LABEL_11:
  v16 = [(HDCodableMedicationChartSeries *)self->_chartSeries hash];
  v15 = [(NSString *)self->_preferredName hash];
  v14 = [(NSString *)self->_brandName hash];
  v3 = [(NSString *)self->_genericName hash];
  v4 = [(NSString *)self->_manufacturedDoseForm hash];
  v5 = [(NSString *)self->_basicDoseForm hash];
  v6 = [(NSString *)self->_freeTextMedicationName hash];
  v7 = [(HDCodableQuantity *)self->_freeTextMedicationStrengthQuantity hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_freeTextMedicationLoggingUnit;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSString *)self->_pregnancyDescriptionContentString hash];
  v10 = [(NSString *)self->_lactationDescriptionContentString hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v11 = 2654435761 * self->_isPregnancyDescriptionCritical;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    v12 = 0;
    return v31 ^ v32 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  v12 = 2654435761 * self->_isLactationDescriptionCritical;
  return v31 ^ v32 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  v36 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 10))
  {
    [(HDCodableMedicationShareableModel *)self setConceptIdentifier:?];
  }

  if (*(fromCopy + 5))
  {
    [(HDCodableMedicationShareableModel *)self setAudienceRawValue:?];
  }

  if (*(fromCopy + 6))
  {
    [(HDCodableMedicationShareableModel *)self setBaseUnitStrength:?];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = *(fromCopy + 15);
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HDCodableMedicationShareableModel *)self addIngredientComponentStrings:*(*(&v30 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 22))
  {
    [(HDCodableMedicationShareableModel *)self setOntologyLoggingUnitSingular:?];
  }

  if (*(fromCopy + 21))
  {
    [(HDCodableMedicationShareableModel *)self setOntologyLoggingUnitPlural:?];
  }

  if (*(fromCopy + 11))
  {
    [(HDCodableMedicationShareableModel *)self setEduContentString:?];
  }

  if (*(fromCopy + 26))
  {
    [(HDCodableMedicationShareableModel *)self setSideEffectsContentString:?];
  }

  if (*(fromCopy + 18))
  {
    [(HDCodableMedicationShareableModel *)self setMedicationVisualizationConfigJSONString:?];
  }

  if (*(fromCopy + 220))
  {
    self->_freeTextMedicationForm = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  schedule = self->_schedule;
  v11 = *(fromCopy + 25);
  if (schedule)
  {
    if (v11)
    {
      [(HDCodableMedicationSchedule *)schedule mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(HDCodableMedicationShareableModel *)self setSchedule:?];
  }

  mostRecentDose = self->_mostRecentDose;
  v13 = *(fromCopy + 20);
  if (mostRecentDose)
  {
    if (v13)
    {
      [(HDCodableMedicationDoseEvent *)mostRecentDose mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(HDCodableMedicationShareableModel *)self setMostRecentDose:?];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = *(fromCopy + 19);
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(HDCodableMedicationShareableModel *)self addMonthHighlights:*(*(&v26 + 1) + 8 * j), v26];
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v16);
  }

  v19 = *(fromCopy + 220);
  if ((v19 & 0x10) != 0)
  {
    self->_archived = *(fromCopy + 216);
    *&self->_has |= 0x10u;
    v19 = *(fromCopy + 220);
    if ((v19 & 4) == 0)
    {
LABEL_45:
      if ((v19 & 8) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else if ((*(fromCopy + 220) & 4) == 0)
  {
    goto LABEL_45;
  }

  self->_latestSupportedVersion = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((*(fromCopy + 220) & 8) != 0)
  {
LABEL_46:
    self->_minimumSupportedVersion = *(fromCopy + 4);
    *&self->_has |= 8u;
  }

LABEL_47:
  chartSeries = self->_chartSeries;
  v21 = *(fromCopy + 9);
  if (chartSeries)
  {
    if (v21)
    {
      [(HDCodableMedicationChartSeries *)chartSeries mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(HDCodableMedicationShareableModel *)self setChartSeries:?];
  }

  if (*(fromCopy + 23))
  {
    [(HDCodableMedicationShareableModel *)self setPreferredName:?];
  }

  if (*(fromCopy + 8))
  {
    [(HDCodableMedicationShareableModel *)self setBrandName:?];
  }

  if (*(fromCopy + 14))
  {
    [(HDCodableMedicationShareableModel *)self setGenericName:?];
  }

  if (*(fromCopy + 17))
  {
    [(HDCodableMedicationShareableModel *)self setManufacturedDoseForm:?];
  }

  if (*(fromCopy + 7))
  {
    [(HDCodableMedicationShareableModel *)self setBasicDoseForm:?];
  }

  if (*(fromCopy + 12))
  {
    [(HDCodableMedicationShareableModel *)self setFreeTextMedicationName:?];
  }

  freeTextMedicationStrengthQuantity = self->_freeTextMedicationStrengthQuantity;
  v23 = *(fromCopy + 13);
  if (freeTextMedicationStrengthQuantity)
  {
    if (v23)
    {
      [(HDCodableQuantity *)freeTextMedicationStrengthQuantity mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(HDCodableMedicationShareableModel *)self setFreeTextMedicationStrengthQuantity:?];
  }

  if ((*(fromCopy + 220) & 2) != 0)
  {
    self->_freeTextMedicationLoggingUnit = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 24))
  {
    [(HDCodableMedicationShareableModel *)self setPregnancyDescriptionContentString:?];
  }

  if (*(fromCopy + 16))
  {
    [(HDCodableMedicationShareableModel *)self setLactationDescriptionContentString:?];
  }

  v24 = *(fromCopy + 220);
  if ((v24 & 0x40) != 0)
  {
    self->_isPregnancyDescriptionCritical = *(fromCopy + 218);
    *&self->_has |= 0x40u;
    v24 = *(fromCopy + 220);
  }

  if ((v24 & 0x20) != 0)
  {
    self->_isLactationDescriptionCritical = *(fromCopy + 217);
    *&self->_has |= 0x20u;
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end