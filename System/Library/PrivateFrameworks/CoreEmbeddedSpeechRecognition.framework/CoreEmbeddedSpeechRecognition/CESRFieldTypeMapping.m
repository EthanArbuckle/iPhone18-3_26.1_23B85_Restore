@interface CESRFieldTypeMapping
- (BOOL)isEqual:(id)a3;
- (CESRFieldTypeMapping)initWithFieldTypeName:(id)a3 vocabularyLabel:(id)a4;
- (unint64_t)hash;
@end

@implementation CESRFieldTypeMapping

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
  v8 = [(CESRFieldTypeMapping *)self fieldTypeName];
  if (v8 || ([(CESRFieldTypeMapping *)v7 fieldTypeName], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(CESRFieldTypeMapping *)self fieldTypeName];
    v4 = [(CESRFieldTypeMapping *)v7 fieldTypeName];
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

  v11 = [(CESRFieldTypeMapping *)self vocabularyLabel];
  if (v11 || ([(CESRFieldTypeMapping *)v7 vocabularyLabel], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(CESRFieldTypeMapping *)self vocabularyLabel:v15];
    v13 = [(CESRFieldTypeMapping *)v7 vocabularyLabel];
    v10 = [v12 isEqual:v13];

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
  v3 = [(CESRFieldTypeMapping *)self fieldTypeName];
  v4 = [v3 hash];
  v5 = [(CESRFieldTypeMapping *)self vocabularyLabel];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (CESRFieldTypeMapping)initWithFieldTypeName:(id)a3 vocabularyLabel:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CESRFieldTypeMapping;
  v9 = [(CESRFieldTypeMapping *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fieldTypeName, a3);
    objc_storeStrong(&v10->_vocabularyLabel, a4);
  }

  return v10;
}

@end