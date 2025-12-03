@interface ODCurareReportFillerReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMetadataList:(id)list;
- (void)addModelEvaluationSummaries:(id)summaries;
- (void)addModelInformationList:(id)list;
- (void)addPersonalizationEvaluationSummaries:(id)summaries;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ODCurareReportFillerReport

- (void)addModelInformationList:(id)list
{
  listCopy = list;
  modelInformationLists = self->_modelInformationLists;
  v8 = listCopy;
  if (!modelInformationLists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_modelInformationLists;
    self->_modelInformationLists = v6;

    listCopy = v8;
    modelInformationLists = self->_modelInformationLists;
  }

  [(NSMutableArray *)modelInformationLists addObject:listCopy];
}

- (void)addMetadataList:(id)list
{
  listCopy = list;
  metadataLists = self->_metadataLists;
  v8 = listCopy;
  if (!metadataLists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_metadataLists;
    self->_metadataLists = v6;

    listCopy = v8;
    metadataLists = self->_metadataLists;
  }

  [(NSMutableArray *)metadataLists addObject:listCopy];
}

- (void)addModelEvaluationSummaries:(id)summaries
{
  summariesCopy = summaries;
  modelEvaluationSummaries = self->_modelEvaluationSummaries;
  v8 = summariesCopy;
  if (!modelEvaluationSummaries)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_modelEvaluationSummaries;
    self->_modelEvaluationSummaries = v6;

    summariesCopy = v8;
    modelEvaluationSummaries = self->_modelEvaluationSummaries;
  }

  [(NSMutableArray *)modelEvaluationSummaries addObject:summariesCopy];
}

- (void)addPersonalizationEvaluationSummaries:(id)summaries
{
  summariesCopy = summaries;
  personalizationEvaluationSummaries = self->_personalizationEvaluationSummaries;
  v8 = summariesCopy;
  if (!personalizationEvaluationSummaries)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_personalizationEvaluationSummaries;
    self->_personalizationEvaluationSummaries = v6;

    summariesCopy = v8;
    personalizationEvaluationSummaries = self->_personalizationEvaluationSummaries;
  }

  [(NSMutableArray *)personalizationEvaluationSummaries addObject:summariesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ODCurareReportFillerReport;
  v4 = [(ODCurareReportFillerReport *)&v8 description];
  dictionaryRepresentation = [(ODCurareReportFillerReport *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v56 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_modelInformationLists count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_modelInformationLists, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v5 = self->_modelInformationLists;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v49;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v49 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v48 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"modelInformationList"];
  }

  if ([(NSMutableArray *)self->_metadataLists count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_metadataLists, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v12 = self->_metadataLists;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v45;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v45 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v44 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"metadataList"];
  }

  if ([(NSMutableArray *)self->_modelEvaluationSummaries count])
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_modelEvaluationSummaries, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = self->_modelEvaluationSummaries;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v41;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v40 + 1) + 8 * k) dictionaryRepresentation];
          [v18 addObject:dictionaryRepresentation3];
        }

        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v40 objects:v53 count:16];
      }

      while (v21);
    }

    [dictionary setObject:v18 forKey:@"modelEvaluationSummaries"];
  }

  if ([(NSMutableArray *)self->_personalizationEvaluationSummaries count])
  {
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_personalizationEvaluationSummaries, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = self->_personalizationEvaluationSummaries;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v36 objects:v52 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v37;
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(v26);
          }

          dictionaryRepresentation4 = [*(*(&v36 + 1) + 8 * m) dictionaryRepresentation];
          [v25 addObject:dictionaryRepresentation4];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v36 objects:v52 count:16];
      }

      while (v28);
    }

    [dictionary setObject:v25 forKey:@"personalizationEvaluationSummaries"];
  }

  v32 = [MEMORY[0x277CCABB0] numberWithBool:{self->_frameworkFailure, v36}];
  [dictionary setObject:v32 forKey:@"frameworkFailure"];

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [dictionary setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  v34 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v51 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = self->_modelInformationLists;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    do
    {
      v9 = 0;
      do
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v7);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = self->_metadataLists;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      v15 = 0;
      do
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v39 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v13);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = self->_modelEvaluationSummaries;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      v21 = 0;
      do
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v35 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v19);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = self->_personalizationEvaluationSummaries;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v31 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v25);
  }

  frameworkFailure = self->_frameworkFailure;
  PBDataWriterWriteBOOLField();
  if (!self->_bundleIdentifier)
  {
    [ODCurareReportFillerReport writeTo:];
  }

  PBDataWriterWriteStringField();

  v30 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(ODCurareReportFillerReport *)self modelInformationListsCount])
  {
    [toCopy clearModelInformationLists];
    modelInformationListsCount = [(ODCurareReportFillerReport *)self modelInformationListsCount];
    if (modelInformationListsCount)
    {
      v5 = modelInformationListsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ODCurareReportFillerReport *)self modelInformationListAtIndex:i];
        [toCopy addModelInformationList:v7];
      }
    }
  }

  if ([(ODCurareReportFillerReport *)self metadataListsCount])
  {
    [toCopy clearMetadataLists];
    metadataListsCount = [(ODCurareReportFillerReport *)self metadataListsCount];
    if (metadataListsCount)
    {
      v9 = metadataListsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ODCurareReportFillerReport *)self metadataListAtIndex:j];
        [toCopy addMetadataList:v11];
      }
    }
  }

  if ([(ODCurareReportFillerReport *)self modelEvaluationSummariesCount])
  {
    [toCopy clearModelEvaluationSummaries];
    modelEvaluationSummariesCount = [(ODCurareReportFillerReport *)self modelEvaluationSummariesCount];
    if (modelEvaluationSummariesCount)
    {
      v13 = modelEvaluationSummariesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(ODCurareReportFillerReport *)self modelEvaluationSummariesAtIndex:k];
        [toCopy addModelEvaluationSummaries:v15];
      }
    }
  }

  if ([(ODCurareReportFillerReport *)self personalizationEvaluationSummariesCount])
  {
    [toCopy clearPersonalizationEvaluationSummaries];
    personalizationEvaluationSummariesCount = [(ODCurareReportFillerReport *)self personalizationEvaluationSummariesCount];
    if (personalizationEvaluationSummariesCount)
    {
      v17 = personalizationEvaluationSummariesCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(ODCurareReportFillerReport *)self personalizationEvaluationSummariesAtIndex:m];
        [toCopy addPersonalizationEvaluationSummaries:v19];
      }
    }
  }

  toCopy[48] = self->_frameworkFailure;
  [toCopy setBundleIdentifier:self->_bundleIdentifier];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = self->_modelInformationLists;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    do
    {
      v10 = 0;
      do
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v46 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addModelInformationList:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v8);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = self->_metadataLists;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v43;
    do
    {
      v16 = 0;
      do
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v42 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addMetadataList:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v14);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v18 = self->_modelEvaluationSummaries;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v39;
    do
    {
      v22 = 0;
      do
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v38 + 1) + 8 * v22) copyWithZone:zone];
        [v5 addModelEvaluationSummaries:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v20);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = self->_personalizationEvaluationSummaries;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      v28 = 0;
      do
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v34 + 1) + 8 * v28) copyWithZone:{zone, v34}];
        [v5 addPersonalizationEvaluationSummaries:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v26);
  }

  *(v5 + 48) = self->_frameworkFailure;
  v30 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v31 = *(v5 + 8);
  *(v5 + 8) = v30;

  v32 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  modelInformationLists = self->_modelInformationLists;
  if (modelInformationLists | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)modelInformationLists isEqual:?])
    {
      goto LABEL_12;
    }
  }

  metadataLists = self->_metadataLists;
  if (metadataLists | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)metadataLists isEqual:?])
    {
      goto LABEL_12;
    }
  }

  modelEvaluationSummaries = self->_modelEvaluationSummaries;
  if (modelEvaluationSummaries | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)modelEvaluationSummaries isEqual:?])
    {
      goto LABEL_12;
    }
  }

  personalizationEvaluationSummaries = self->_personalizationEvaluationSummaries;
  if (personalizationEvaluationSummaries | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)personalizationEvaluationSummaries isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v9 = *(equalCopy + 48);
  if (self->_frameworkFailure)
  {
    if ((*(equalCopy + 48) & 1) == 0)
    {
LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_12;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 1))
  {
    v10 = [(NSString *)bundleIdentifier isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_13:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_modelInformationLists hash];
  v4 = [(NSMutableArray *)self->_metadataLists hash]^ v3;
  v5 = [(NSMutableArray *)self->_modelEvaluationSummaries hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_personalizationEvaluationSummaries hash];
  v7 = 2654435761 * self->_frameworkFailure;
  return v6 ^ [(NSString *)self->_bundleIdentifier hash]^ v7;
}

- (void)mergeFrom:(id)from
{
  v46 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = *(fromCopy + 4);
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ODCurareReportFillerReport *)self addModelInformationList:*(*(&v38 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v7);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = *(fromCopy + 2);
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(ODCurareReportFillerReport *)self addMetadataList:*(*(&v34 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v12);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = *(fromCopy + 3);
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(ODCurareReportFillerReport *)self addModelEvaluationSummaries:*(*(&v30 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v17);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = *(fromCopy + 5);
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(ODCurareReportFillerReport *)self addPersonalizationEvaluationSummaries:*(*(&v26 + 1) + 8 * m), v26];
      }

      v22 = [v20 countByEnumeratingWithState:&v26 objects:v42 count:16];
    }

    while (v22);
  }

  self->_frameworkFailure = *(fromCopy + 48);
  if (*(fromCopy + 1))
  {
    [(ODCurareReportFillerReport *)self setBundleIdentifier:?];
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end