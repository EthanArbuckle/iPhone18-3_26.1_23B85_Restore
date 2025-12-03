@interface CESRFieldTypeMapping
- (BOOL)isEqual:(id)equal;
- (CESRFieldTypeMapping)initWithFieldTypeName:(id)name vocabularyLabel:(id)label;
- (unint64_t)hash;
@end

@implementation CESRFieldTypeMapping

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
  fieldTypeName = [(CESRFieldTypeMapping *)self fieldTypeName];
  if (fieldTypeName || ([(CESRFieldTypeMapping *)v7 fieldTypeName], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    fieldTypeName2 = [(CESRFieldTypeMapping *)self fieldTypeName];
    fieldTypeName3 = [(CESRFieldTypeMapping *)v7 fieldTypeName];
    if (![fieldTypeName2 isEqualToString:fieldTypeName3])
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

  vocabularyLabel = [(CESRFieldTypeMapping *)self vocabularyLabel];
  if (vocabularyLabel || ([(CESRFieldTypeMapping *)v7 vocabularyLabel], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(CESRFieldTypeMapping *)self vocabularyLabel:v15];
    vocabularyLabel2 = [(CESRFieldTypeMapping *)v7 vocabularyLabel];
    v10 = [v12 isEqual:vocabularyLabel2];

    if (vocabularyLabel)
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
  if (!fieldTypeName)
  {
  }

LABEL_22:
  return v10;
}

- (unint64_t)hash
{
  fieldTypeName = [(CESRFieldTypeMapping *)self fieldTypeName];
  v4 = [fieldTypeName hash];
  vocabularyLabel = [(CESRFieldTypeMapping *)self vocabularyLabel];
  v6 = [vocabularyLabel hash];

  return v6 ^ v4;
}

- (CESRFieldTypeMapping)initWithFieldTypeName:(id)name vocabularyLabel:(id)label
{
  nameCopy = name;
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = CESRFieldTypeMapping;
  v9 = [(CESRFieldTypeMapping *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fieldTypeName, name);
    objc_storeStrong(&v10->_vocabularyLabel, label);
  }

  return v10;
}

@end