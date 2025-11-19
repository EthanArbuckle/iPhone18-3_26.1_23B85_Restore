@interface CESRVocabularyLabel
- (BOOL)isEqual:(id)a3;
- (CESRVocabularyLabel)initWithLmeTemplate:(id)a3 lmeTag:(id)a4;
- (unint64_t)hash;
@end

@implementation CESRVocabularyLabel

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (v6 == self)
  {
    v10 = 1;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_22;
  }

  v7 = v6;
  v8 = [(CESRVocabularyLabel *)self lmeTemplate];
  if (v8 || ([(CESRVocabularyLabel *)v7 lmeTemplate], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(CESRVocabularyLabel *)self lmeTemplate];
    v4 = [(CESRVocabularyLabel *)v7 lmeTemplate];
    if (![v3 isEqualToString:v4])
    {
      v10 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v9 = 1;
  }

  else
  {
    v17 = 0;
    v9 = 0;
  }

  v11 = [(CESRVocabularyLabel *)self lmeTag];
  if (v11 || ([(CESRVocabularyLabel *)v7 lmeTag], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(CESRVocabularyLabel *)self lmeTag:v15];
    v13 = [(CESRVocabularyLabel *)v7 lmeTag];
    v10 = [v12 isEqualToString:v13];

    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    v10 = 1;
  }

LABEL_17:
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (!v8)
  {
  }

LABEL_22:
  return v10;
}

- (unint64_t)hash
{
  v3 = [(CESRVocabularyLabel *)self lmeTemplate];
  v4 = [v3 hash];
  v5 = [(CESRVocabularyLabel *)self lmeTag];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (CESRVocabularyLabel)initWithLmeTemplate:(id)a3 lmeTag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CESRVocabularyLabel;
  v9 = [(CESRVocabularyLabel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lmeTemplate, a3);
    objc_storeStrong(&v10->_lmeTag, a4);
  }

  return v10;
}

@end