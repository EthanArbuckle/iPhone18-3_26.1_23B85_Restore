@interface LNAppShortcutSpanData
- (BOOL)isEqual:(id)a3;
- (LNAppShortcutSpanData)initWithCoder:(id)a3;
- (LNAppShortcutSpanData)initWithValue:(id)a3 propertyTitle:(id)a4 propertyTitleKey:(id)a5 providerClassName:(id)a6 parameterTypeIdentifier:(id)a7 synonyms:(id)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAppShortcutSpanData

- (unint64_t)hash
{
  v3 = [(LNAppShortcutSpanData *)self propertyTitle];
  v4 = [v3 hash];
  v5 = [(LNAppShortcutSpanData *)self propertyTitleKey];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNAppShortcutSpanData *)self providerClassName];
  v8 = [v7 hash];
  v9 = [(LNAppShortcutSpanData *)self parameterTypeIdentifier];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(LNAppShortcutSpanData *)self synonyms];
  v12 = [v11 hash];
  v13 = [(LNAppShortcutSpanData *)self value];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAppShortcutSpanData *)self propertyTitle];
  [v4 encodeObject:v5 forKey:@"propertyTitle"];

  v6 = [(LNAppShortcutSpanData *)self propertyTitleKey];
  [v4 encodeObject:v6 forKey:@"propertyTitleKey"];

  v7 = [(LNAppShortcutSpanData *)self providerClassName];
  [v4 encodeObject:v7 forKey:@"providerClassName"];

  v8 = [(LNAppShortcutSpanData *)self value];
  [v4 encodeObject:v8 forKey:@"value"];

  v9 = [(LNAppShortcutSpanData *)self parameterTypeIdentifier];
  [v4 encodeObject:v9 forKey:@"parameterTypeIdentifier"];

  v10 = [(LNAppShortcutSpanData *)self synonyms];
  [v4 encodeObject:v10 forKey:@"synonyms"];
}

- (LNAppShortcutSpanData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"propertyTitle"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"propertyTitleKey"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerClassName"];
      if (v7)
      {
        v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
        if (v8)
        {
          v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterTypeIdentifier"];
          if (v9)
          {
            v10 = MEMORY[0x1E695DFD8];
            v11 = objc_opt_class();
            v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
            v13 = [v4 decodeObjectOfClasses:v12 forKey:@"synonyms"];

            if (v13)
            {
              self = [(LNAppShortcutSpanData *)self initWithValue:v8 propertyTitle:v5 propertyTitleKey:v6 providerClassName:v7 parameterTypeIdentifier:v9 synonyms:v13];
              v14 = self;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_54:

      goto LABEL_55;
    }

    v7 = [(LNAppShortcutSpanData *)self propertyTitle];
    v8 = [(LNAppShortcutSpanData *)v6 propertyTitle];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_52;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_53:

        goto LABEL_54;
      }
    }

    v16 = [(LNAppShortcutSpanData *)self propertyTitleKey];
    v17 = [(LNAppShortcutSpanData *)v6 propertyTitleKey];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {

      v54 = v14;
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_51;
      }

      v21 = v14;
      v22 = [v14 isEqual:v18];

      v54 = v21;
      if (!v22)
      {
        LOBYTE(v12) = 0;
        v14 = v21;
LABEL_52:

        goto LABEL_53;
      }
    }

    v23 = [(LNAppShortcutSpanData *)self providerClassName];
    v24 = [(LNAppShortcutSpanData *)v6 providerClassName];
    v20 = v23;
    v25 = v24;
    v19 = v25;
    if (v20 == v25)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v26 = v25;
      v27 = v20;
      if (!v20 || !v25)
      {
        goto LABEL_49;
      }

      v12 = [v20 isEqual:v25];

      if (!v12)
      {
        goto LABEL_50;
      }
    }

    v53 = v20;
    v28 = [(LNAppShortcutSpanData *)self parameterTypeIdentifier];
    v29 = [(LNAppShortcutSpanData *)v6 parameterTypeIdentifier];
    v30 = v28;
    v31 = v29;
    v51 = v31;
    v52 = v30;
    if (v30 != v31)
    {
      LOBYTE(v12) = 0;
      if (v30)
      {
        v32 = v31;
        v33 = v30;
        v20 = v53;
        if (v31)
        {
          v34 = [v52 isEqual:v31];

          if (!v34)
          {
            LOBYTE(v12) = 0;
            v20 = v53;
LABEL_48:
            v26 = v51;
            v27 = v52;
LABEL_49:

LABEL_50:
            v14 = v54;
LABEL_51:

            goto LABEL_52;
          }

LABEL_30:
          v35 = [(LNAppShortcutSpanData *)self synonyms];
          v36 = [(LNAppShortcutSpanData *)v6 synonyms];
          v33 = v35;
          v37 = v36;
          v50 = v37;
          if (v33 != v37)
          {
            LOBYTE(v12) = 0;
            if (v33)
            {
              v38 = v37;
              v39 = v33;
              v20 = v53;
              if (v37)
              {
                v40 = v33;
                v41 = [v33 isEqual:v37];

                v48 = v40;
                if (!v41)
                {
                  LOBYTE(v12) = 0;
                  v20 = v53;
                  v33 = v48;
LABEL_46:
                  v32 = v50;
                  goto LABEL_47;
                }

                goto LABEL_36;
              }
            }

            else
            {
              v38 = v37;
              v39 = 0;
              v20 = v53;
            }

LABEL_45:
            v46 = v39;

            goto LABEL_46;
          }

          v48 = v33;
LABEL_36:
          v42 = [(LNAppShortcutSpanData *)self value];
          v43 = [(LNAppShortcutSpanData *)v6 value];
          v44 = v42;
          v45 = v43;
          v49 = v45;
          if (v44 == v45)
          {
            LOBYTE(v12) = 1;
            v20 = v53;
            v33 = v48;
          }

          else
          {
            LOBYTE(v12) = 0;
            v33 = v48;
            if (v44)
            {
              v20 = v53;
              if (v45)
              {
                LOBYTE(v12) = [v44 isEqual:v45];
              }
            }

            else
            {
              v20 = v53;
            }
          }

          v38 = v49;
          v39 = v44;
          goto LABEL_45;
        }
      }

      else
      {
        v32 = v31;
        v33 = 0;
        v20 = v53;
      }

LABEL_47:

      goto LABEL_48;
    }

    goto LABEL_30;
  }

  LOBYTE(v12) = 1;
LABEL_55:

  return v12;
}

- (LNAppShortcutSpanData)initWithValue:(id)a3 propertyTitle:(id)a4 propertyTitleKey:(id)a5 providerClassName:(id)a6 parameterTypeIdentifier:(id)a7 synonyms:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  obj = a6;
  v17 = a6;
  v32 = a7;
  v18 = a7;
  v33 = a8;
  v19 = a8;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"LNAppShortcutSpanData.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"value"}];

    if (v15)
    {
LABEL_3:
      if (v16)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"LNAppShortcutSpanData.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"propertyTitle"}];

  if (v16)
  {
LABEL_4:
    if (v17)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"LNAppShortcutSpanData.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"propertyTitleKey"}];

  if (v17)
  {
LABEL_5:
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_14:
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"LNAppShortcutSpanData.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"parameterTypeIdentifier"}];

    if (v19)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_13:
  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"LNAppShortcutSpanData.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"providerClassName"}];

  if (!v18)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v19)
  {
    goto LABEL_7;
  }

LABEL_15:
  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"LNAppShortcutSpanData.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"synonyms"}];

LABEL_7:
  v35.receiver = self;
  v35.super_class = LNAppShortcutSpanData;
  v20 = [(LNAppShortcutSpanData *)&v35 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_value, a3);
    objc_storeStrong(&v21->_propertyTitle, a4);
    objc_storeStrong(&v21->_propertyTitleKey, a5);
    objc_storeStrong(&v21->_providerClassName, obj);
    objc_storeStrong(&v21->_parameterTypeIdentifier, v32);
    objc_storeStrong(&v21->_synonyms, v33);
    v22 = v21;
  }

  return v21;
}

@end