@interface IEValidationResult
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation IEValidationResult

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(IEValidationResult *)self type];
      v8 = [v6 type];
      if (v7 != v8)
      {
        v9 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v23 = [(IEValidationResult *)self text];
      v10 = [v6 text];
      if (v23 != v10)
      {
        v21 = [(IEValidationResult *)self text];
        v19 = [v6 text];
        if (![v21 isEqualToString:?])
        {
          v9 = 0;
          goto LABEL_20;
        }
      }

      v22 = [(IEValidationResult *)self filename];
      v11 = [v6 filename];
      if (v22 != v11)
      {
        v20 = [(IEValidationResult *)self filename];
        v17 = [v6 filename];
        if (![v20 isEqualToString:?])
        {
          v9 = 0;
          v12 = v22;
LABEL_18:

LABEL_19:
          if (v23 == v10)
          {
LABEL_21:

            goto LABEL_22;
          }

LABEL_20:

          goto LABEL_21;
        }
      }

      v13 = [(IEValidationResult *)self code];
      v14 = [v6 code];
      if (v13 == v14 || (-[IEValidationResult code](self, "code"), v18 = objc_claimAutoreleasedReturnValue(), [v6 code], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "isEqualToString:", v3)))
      {
        v15 = [(IEValidationResult *)self lineNumber];
        v9 = v15 == [v6 lineNumber];
        if (v13 == v14)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_17:
      v12 = v22;
      if (v22 == v11)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  v9 = 0;
LABEL_23:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(IEValidationResult *)self type];
  v4 = [v3 hash];

  v5 = [(IEValidationResult *)self text];
  v6 = [v5 hash];

  v7 = [(IEValidationResult *)self filename];
  v8 = [v7 hash];

  v9 = [(IEValidationResult *)self code];
  v10 = [v9 hash];
  v11 = v8 - (v6 - v4 + 32 * v4) + 32 * (v6 - v4 + 32 * v4);
  v12 = 31 * (v10 - v11 + 32 * v11);

  return v12 + [(IEValidationResult *)self lineNumber]+ 28629151;
}

@end