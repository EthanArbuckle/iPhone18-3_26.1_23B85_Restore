@interface CESRAppEntityMapping
- (BOOL)isEqual:(id)equal;
- (CESRAppEntityMapping)initWithSourceBundleId:(id)id assistantSchemaType:(id)type appEntityName:(id)name primaryVocabLabel:(id)label extractionVocabLabels:(id)labels;
- (unint64_t)hash;
@end

@implementation CESRAppEntityMapping

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
    goto LABEL_58;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_58;
  }

  v9 = equalCopy;
  sourceBundleId = [(CESRAppEntityMapping *)self sourceBundleId];
  if (sourceBundleId || ([(CESRAppEntityMapping *)v9 sourceBundleId], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    sourceBundleId2 = [(CESRAppEntityMapping *)self sourceBundleId];
    sourceBundleId3 = [(CESRAppEntityMapping *)v9 sourceBundleId];
    v44 = sourceBundleId2;
    if (([sourceBundleId2 isEqualToString:sourceBundleId3] & 1) == 0)
    {

      v11 = 0;
      goto LABEL_55;
    }

    v43 = 1;
  }

  else
  {
    v43 = 0;
  }

  assistantSchemaType = [(CESRAppEntityMapping *)self assistantSchemaType];
  if (!assistantSchemaType)
  {
    assistantSchemaType2 = [(CESRAppEntityMapping *)v9 assistantSchemaType];
    if (!assistantSchemaType2)
    {
      v42 = v9;
      assistantSchemaType2 = 0;
      v41 = 0;
      goto LABEL_21;
    }
  }

  v13 = v5;
  assistantSchemaType3 = [(CESRAppEntityMapping *)self assistantSchemaType];
  assistantSchemaType4 = [(CESRAppEntityMapping *)v9 assistantSchemaType];
  if ([assistantSchemaType3 isEqualToString:assistantSchemaType4])
  {
    v42 = v9;
    v36 = assistantSchemaType3;
    v41 = 1;
    v5 = v13;
    v6 = assistantSchemaType4;
LABEL_21:
    appEntityName = [(CESRAppEntityMapping *)self appEntityName];
    if (appEntityName || ([(CESRAppEntityMapping *)v42 appEntityName], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      sourceBundleId2 = [(CESRAppEntityMapping *)self appEntityName];
      appEntityName2 = [(CESRAppEntityMapping *)v42 appEntityName];
      v39 = sourceBundleId2;
      if (![sourceBundleId2 isEqualToString:?])
      {
        v11 = 0;
        v9 = v42;
        goto LABEL_46;
      }

      v35 = 1;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    [(CESRAppEntityMapping *)self primaryVocabLabel];
    v37 = v9 = v42;
    if (v37 || ([(CESRAppEntityMapping *)v42 primaryVocabLabel], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      primaryVocabLabel = [(CESRAppEntityMapping *)self primaryVocabLabel];
      primaryVocabLabel2 = [(CESRAppEntityMapping *)v42 primaryVocabLabel];
      v34 = primaryVocabLabel;
      v19 = primaryVocabLabel;
      sourceBundleId2 = primaryVocabLabel2;
      if (![v19 isEqual:primaryVocabLabel2])
      {
        v11 = 0;
LABEL_42:

LABEL_43:
        v24 = v37;
        if (!v37)
        {

          v24 = 0;
        }

        if (!v35)
        {
LABEL_47:
          if (!appEntityName)
          {
          }

          if (v41)
          {
          }

          if (!assistantSchemaType)
          {
          }

          if (!v43)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

LABEL_46:

        goto LABEL_47;
      }

      v31 = appEntityName;
      v32 = v6;
      v30 = 1;
    }

    else
    {
      v31 = appEntityName;
      v32 = v6;
      v28 = 0;
      v30 = 0;
    }

    extractionVocabLabels = [(CESRAppEntityMapping *)self extractionVocabLabels];
    if (extractionVocabLabels || ([(CESRAppEntityMapping *)v42 extractionVocabLabels], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v29 = v5;
      v21 = [(CESRAppEntityMapping *)self extractionVocabLabels:v26];
      extractionVocabLabels2 = [(CESRAppEntityMapping *)v42 extractionVocabLabels];
      v11 = [v21 isEqualToDictionary:extractionVocabLabels2];

      if (extractionVocabLabels)
      {

        if (!v30)
        {
          v5 = v29;
          appEntityName = v31;
          v6 = v32;
          goto LABEL_43;
        }

        v5 = v29;
        appEntityName = v31;
        v6 = v32;
        goto LABEL_42;
      }

      v5 = v29;
      v6 = v32;
      v23 = v27;
    }

    else
    {
      v23 = 0;
      v11 = 1;
      v6 = v32;
    }

    appEntityName = v31;
    if ((v30 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (assistantSchemaType)
  {
  }

  else
  {
  }

  v11 = 0;
  v5 = v13;
  if (v43)
  {
LABEL_54:
  }

LABEL_55:
  if (!sourceBundleId)
  {
  }

LABEL_58:
  return v11;
}

- (unint64_t)hash
{
  sourceBundleId = [(CESRAppEntityMapping *)self sourceBundleId];
  v4 = [sourceBundleId hash];
  assistantSchemaType = [(CESRAppEntityMapping *)self assistantSchemaType];
  v6 = [assistantSchemaType hash] ^ v4;
  appEntityName = [(CESRAppEntityMapping *)self appEntityName];
  v8 = [appEntityName hash];
  primaryVocabLabel = [(CESRAppEntityMapping *)self primaryVocabLabel];
  v10 = v6 ^ v8 ^ [primaryVocabLabel hash];
  extractionVocabLabels = [(CESRAppEntityMapping *)self extractionVocabLabels];
  v12 = [extractionVocabLabels hash];

  return v10 ^ v12;
}

- (CESRAppEntityMapping)initWithSourceBundleId:(id)id assistantSchemaType:(id)type appEntityName:(id)name primaryVocabLabel:(id)label extractionVocabLabels:(id)labels
{
  idCopy = id;
  typeCopy = type;
  nameCopy = name;
  labelCopy = label;
  labelsCopy = labels;
  v21.receiver = self;
  v21.super_class = CESRAppEntityMapping;
  v17 = [(CESRAppEntityMapping *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sourceBundleId, id);
    objc_storeStrong(&v18->_assistantSchemaType, type);
    objc_storeStrong(&v18->_appEntityName, name);
    objc_storeStrong(&v18->_primaryVocabLabel, label);
    objc_storeStrong(&v18->_extractionVocabLabels, labels);
  }

  return v18;
}

@end