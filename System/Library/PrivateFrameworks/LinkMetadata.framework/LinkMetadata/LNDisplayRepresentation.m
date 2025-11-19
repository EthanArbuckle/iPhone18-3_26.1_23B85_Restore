@interface LNDisplayRepresentation
- (BOOL)isEqual:(id)a3;
- (LNDisplayRepresentation)initWithCoder:(id)a3;
- (LNDisplayRepresentation)initWithTitle:(id)a3 snippetPluginModelData:(id)a4;
- (LNDisplayRepresentation)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 synonyms:(id)a6 descriptionText:(id)a7 snippetPluginModel:(id)a8;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNDisplayRepresentation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNDisplayRepresentation *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(LNDisplayRepresentation *)self subtitle];
  [v4 encodeObject:v6 forKey:@"subtitle"];

  v7 = [(LNDisplayRepresentation *)self image];
  [v4 encodeObject:v7 forKey:@"image"];

  v8 = [(LNDisplayRepresentation *)self synonyms];
  [v4 encodeObject:v8 forKey:@"synonyms"];

  v9 = [(LNDisplayRepresentation *)self descriptionText];
  [v4 encodeObject:v9 forKey:@"descriptionText"];

  v10 = [(LNDisplayRepresentation *)self snippetPluginModel];
  [v4 encodeObject:v10 forKey:@"snippetPluginModel"];
}

- (LNDisplayRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"image"];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"synonyms"];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snippetPluginModel"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptionText"];
    self = [(LNDisplayRepresentation *)self initWithTitle:v5 subtitle:v6 image:v11 synonyms:v15 descriptionText:v17 snippetPluginModel:v16];

    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(LNDisplayRepresentation *)self title];
  v4 = [v3 hash];
  v5 = [(LNDisplayRepresentation *)self subtitle];
  v6 = [v5 hash];

  return v6 ^ v4;
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

    v7 = [(LNDisplayRepresentation *)self title];
    v8 = [(LNDisplayRepresentation *)v6 title];
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

    v16 = [(LNDisplayRepresentation *)self subtitle];
    v17 = [(LNDisplayRepresentation *)v6 subtitle];
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

    v23 = [(LNDisplayRepresentation *)self image];
    v24 = [(LNDisplayRepresentation *)v6 image];
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
    v28 = [(LNDisplayRepresentation *)self synonyms];
    v29 = [(LNDisplayRepresentation *)v6 synonyms];
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
          v35 = [(LNDisplayRepresentation *)self descriptionText];
          v36 = [(LNDisplayRepresentation *)v6 descriptionText];
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
          v42 = [(LNDisplayRepresentation *)self snippetPluginModel];
          v43 = [(LNDisplayRepresentation *)v6 snippetPluginModel];
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNDisplayRepresentation *)self title];
  v7 = [(LNDisplayRepresentation *)self subtitle];
  v8 = [(LNDisplayRepresentation *)self image];
  v9 = [(LNDisplayRepresentation *)self synonyms];
  v10 = [(LNDisplayRepresentation *)self descriptionText];
  v11 = [(LNDisplayRepresentation *)self snippetPluginModel];
  v12 = [v3 stringWithFormat:@"<%@: %p, title: %@, subtitle: %@, image: %@, synonyms: %@, descriptionText: %@, snippetPluginModel: %@>", v5, self, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (LNDisplayRepresentation)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 synonyms:(id)a6 descriptionText:(id)a7 snippetPluginModel:(id)a8
{
  v15 = a3;
  v28 = a4;
  v27 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (!v15)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"LNDisplayRepresentation.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"title"}];
  }

  v29.receiver = self;
  v29.super_class = LNDisplayRepresentation;
  v19 = [(LNDisplayRepresentation *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_title, a3);
    objc_storeStrong(&v20->_subtitle, a4);
    objc_storeStrong(&v20->_image, a5);
    v21 = [v16 copy];
    synonyms = v20->_synonyms;
    v20->_synonyms = v21;

    objc_storeStrong(&v20->_descriptionText, a7);
    objc_storeStrong(&v20->_snippetPluginModel, a8);
    v23 = v20;
  }

  return v20;
}

- (LNDisplayRepresentation)initWithTitle:(id)a3 snippetPluginModelData:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LNDisplayRepresentation.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"title"}];
  }

  v9 = [(LNDisplayRepresentation *)self initWithTitle:v7 subtitle:0 image:0 synonyms:0 descriptionText:0 snippetPluginModel:v8];

  return v9;
}

@end