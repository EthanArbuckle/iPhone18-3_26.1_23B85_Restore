@interface CESRVocabularyLabel
- (BOOL)isEqual:(id)equal;
- (CESRVocabularyLabel)initWithLmeTemplate:(id)template lmeTag:(id)tag;
- (unint64_t)hash;
@end

@implementation CESRVocabularyLabel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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

  v7 = equalCopy;
  lmeTemplate = [(CESRVocabularyLabel *)self lmeTemplate];
  if (lmeTemplate || ([(CESRVocabularyLabel *)v7 lmeTemplate], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    lmeTemplate2 = [(CESRVocabularyLabel *)self lmeTemplate];
    lmeTemplate3 = [(CESRVocabularyLabel *)v7 lmeTemplate];
    if (![lmeTemplate2 isEqualToString:lmeTemplate3])
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

  lmeTag = [(CESRVocabularyLabel *)self lmeTag];
  if (lmeTag || ([(CESRVocabularyLabel *)v7 lmeTag], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(CESRVocabularyLabel *)self lmeTag:v15];
    lmeTag2 = [(CESRVocabularyLabel *)v7 lmeTag];
    v10 = [v12 isEqualToString:lmeTag2];

    if (lmeTag)
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
  if (!lmeTemplate)
  {
  }

LABEL_22:
  return v10;
}

- (unint64_t)hash
{
  lmeTemplate = [(CESRVocabularyLabel *)self lmeTemplate];
  v4 = [lmeTemplate hash];
  lmeTag = [(CESRVocabularyLabel *)self lmeTag];
  v6 = [lmeTag hash];

  return v6 ^ v4;
}

- (CESRVocabularyLabel)initWithLmeTemplate:(id)template lmeTag:(id)tag
{
  templateCopy = template;
  tagCopy = tag;
  v12.receiver = self;
  v12.super_class = CESRVocabularyLabel;
  v9 = [(CESRVocabularyLabel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lmeTemplate, template);
    objc_storeStrong(&v10->_lmeTag, tag);
  }

  return v10;
}

@end