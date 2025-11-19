@interface CESRAppEntityMapping
- (BOOL)isEqual:(id)a3;
- (CESRAppEntityMapping)initWithSourceBundleId:(id)a3 assistantSchemaType:(id)a4 appEntityName:(id)a5 primaryVocabLabel:(id)a6 extractionVocabLabels:(id)a7;
- (unint64_t)hash;
@end

@implementation CESRAppEntityMapping

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (v8 == self)
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

  v9 = v8;
  v10 = [(CESRAppEntityMapping *)self sourceBundleId];
  if (v10 || ([(CESRAppEntityMapping *)v9 sourceBundleId], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(CESRAppEntityMapping *)self sourceBundleId];
    v4 = [(CESRAppEntityMapping *)v9 sourceBundleId];
    v44 = v3;
    if (([v3 isEqualToString:v4] & 1) == 0)
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

  v12 = [(CESRAppEntityMapping *)self assistantSchemaType];
  if (!v12)
  {
    v40 = [(CESRAppEntityMapping *)v9 assistantSchemaType];
    if (!v40)
    {
      v42 = v9;
      v40 = 0;
      v41 = 0;
      goto LABEL_21;
    }
  }

  v13 = v5;
  v14 = [(CESRAppEntityMapping *)self assistantSchemaType];
  v15 = [(CESRAppEntityMapping *)v9 assistantSchemaType];
  if ([v14 isEqualToString:v15])
  {
    v42 = v9;
    v36 = v14;
    v41 = 1;
    v5 = v13;
    v6 = v15;
LABEL_21:
    v16 = [(CESRAppEntityMapping *)self appEntityName];
    if (v16 || ([(CESRAppEntityMapping *)v42 appEntityName], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = [(CESRAppEntityMapping *)self appEntityName];
      v38 = [(CESRAppEntityMapping *)v42 appEntityName];
      v39 = v3;
      if (![v3 isEqualToString:?])
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
      v17 = [(CESRAppEntityMapping *)self primaryVocabLabel];
      v18 = [(CESRAppEntityMapping *)v42 primaryVocabLabel];
      v34 = v17;
      v19 = v17;
      v3 = v18;
      if (![v19 isEqual:v18])
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
          if (!v16)
          {
          }

          if (v41)
          {
          }

          if (!v12)
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

      v31 = v16;
      v32 = v6;
      v30 = 1;
    }

    else
    {
      v31 = v16;
      v32 = v6;
      v28 = 0;
      v30 = 0;
    }

    v20 = [(CESRAppEntityMapping *)self extractionVocabLabels];
    if (v20 || ([(CESRAppEntityMapping *)v42 extractionVocabLabels], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v29 = v5;
      v21 = [(CESRAppEntityMapping *)self extractionVocabLabels:v26];
      v22 = [(CESRAppEntityMapping *)v42 extractionVocabLabels];
      v11 = [v21 isEqualToDictionary:v22];

      if (v20)
      {

        if (!v30)
        {
          v5 = v29;
          v16 = v31;
          v6 = v32;
          goto LABEL_43;
        }

        v5 = v29;
        v16 = v31;
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

    v16 = v31;
    if ((v30 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v12)
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
  if (!v10)
  {
  }

LABEL_58:
  return v11;
}

- (unint64_t)hash
{
  v3 = [(CESRAppEntityMapping *)self sourceBundleId];
  v4 = [v3 hash];
  v5 = [(CESRAppEntityMapping *)self assistantSchemaType];
  v6 = [v5 hash] ^ v4;
  v7 = [(CESRAppEntityMapping *)self appEntityName];
  v8 = [v7 hash];
  v9 = [(CESRAppEntityMapping *)self primaryVocabLabel];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(CESRAppEntityMapping *)self extractionVocabLabels];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (CESRAppEntityMapping)initWithSourceBundleId:(id)a3 assistantSchemaType:(id)a4 appEntityName:(id)a5 primaryVocabLabel:(id)a6 extractionVocabLabels:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CESRAppEntityMapping;
  v17 = [(CESRAppEntityMapping *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sourceBundleId, a3);
    objc_storeStrong(&v18->_assistantSchemaType, a4);
    objc_storeStrong(&v18->_appEntityName, a5);
    objc_storeStrong(&v18->_primaryVocabLabel, a6);
    objc_storeStrong(&v18->_extractionVocabLabels, a7);
  }

  return v18;
}

@end