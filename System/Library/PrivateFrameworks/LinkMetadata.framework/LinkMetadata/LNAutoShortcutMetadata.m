@interface LNAutoShortcutMetadata
- (BOOL)isEqual:(id)a3;
- (LNAutoShortcutMetadata)initWithActionIdentifier:(id)a3 phraseTemplates:(id)a4 shortTitle:(id)a5 autoShortcutDescription:(id)a6 systemImageName:(id)a7 parameterPresentation:(id)a8 availabilityAnnotations:(id)a9;
- (LNAutoShortcutMetadata)initWithActionIdentifier:(id)a3 phraseTemplates:(id)a4 title:(id)a5 shortTitle:(id)a6 autoShortcutDescription:(id)a7 systemImageName:(id)a8;
- (LNAutoShortcutMetadata)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAutoShortcutMetadata

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
LABEL_69:

      goto LABEL_70;
    }

    v7 = [(LNAutoShortcutMetadata *)self actionIdentifier];
    v8 = [(LNAutoShortcutMetadata *)v6 actionIdentifier];
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
        goto LABEL_67;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_68:

        goto LABEL_69;
      }
    }

    v16 = [(LNAutoShortcutMetadata *)self phraseTemplates];
    v17 = [(LNAutoShortcutMetadata *)v6 phraseTemplates];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_66;
      }

      v21 = [v14 isEqualToArray:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_67:

        goto LABEL_68;
      }
    }

    v22 = [(LNAutoShortcutMetadata *)self title];
    v23 = [(LNAutoShortcutMetadata *)v6 title];
    v20 = v22;
    v24 = v23;
    v19 = v24;
    v65 = v20;
    if (v20 == v24)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v25 = v24;
      if (!v20 || !v24)
      {
        goto LABEL_65;
      }

      v12 = [v20 isEqual:v24];

      if (!v12)
      {
        goto LABEL_66;
      }
    }

    v64 = v19;
    v26 = [(LNAutoShortcutMetadata *)self shortTitle];
    v27 = [(LNAutoShortcutMetadata *)v6 shortTitle];
    v28 = v26;
    v29 = v27;
    v62 = v29;
    v63 = v28;
    if (v28 == v29)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      if (!v28)
      {
        v30 = v29;
        v19 = v64;
        goto LABEL_63;
      }

      v30 = v29;
      v19 = v64;
      if (!v29)
      {
LABEL_63:

        goto LABEL_64;
      }

      v31 = [v28 isEqual:v29];

      if (!v31)
      {
        LOBYTE(v12) = 0;
        v19 = v64;
LABEL_64:
        v25 = v62;
        v20 = v63;
LABEL_65:

        v20 = v65;
LABEL_66:

        goto LABEL_67;
      }
    }

    v32 = [(LNAutoShortcutMetadata *)self autoShortcutDescription];
    v33 = [(LNAutoShortcutMetadata *)v6 autoShortcutDescription];
    v28 = v32;
    v34 = v33;
    v60 = v28;
    v61 = v34;
    if (v28 != v34)
    {
      LOBYTE(v12) = 0;
      if (v28)
      {
        v35 = v34;
        v19 = v64;
        if (v34)
        {
          v36 = [v28 isEqual:v34];

          if (!v36)
          {
            LOBYTE(v12) = 0;
            v19 = v64;
            v30 = v61;
            goto LABEL_63;
          }

LABEL_36:
          v37 = [(LNAutoShortcutMetadata *)self systemImageName];
          v38 = [(LNAutoShortcutMetadata *)v6 systemImageName];
          v39 = v37;
          v40 = v38;
          v58 = v40;
          v59 = v39;
          if (v39 == v40)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
            if (!v39)
            {
              v41 = v40;
              v19 = v64;
              goto LABEL_60;
            }

            v41 = v40;
            v19 = v64;
            if (!v40)
            {
LABEL_60:

              goto LABEL_61;
            }

            v42 = [v39 isEqualToString:v40];

            if (!v42)
            {
              LOBYTE(v12) = 0;
              v19 = v64;
LABEL_61:
              v35 = v58;
              v28 = v59;
              goto LABEL_62;
            }
          }

          v43 = [(LNAutoShortcutMetadata *)self parameterPresentation];
          v44 = [(LNAutoShortcutMetadata *)v6 parameterPresentation];
          v39 = v43;
          v45 = v44;
          v56 = v39;
          v57 = v45;
          if (v39 == v45)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
            if (!v39)
            {
              v46 = v45;
              v19 = v64;
              goto LABEL_59;
            }

            v46 = v45;
            v19 = v64;
            if (!v45)
            {
LABEL_59:

              v39 = v56;
              v41 = v57;
              goto LABEL_60;
            }

            v47 = [v39 isEqual:v45];

            if (!v47)
            {
              LOBYTE(v12) = 0;
              v19 = v64;
              v41 = v57;
              goto LABEL_60;
            }
          }

          v48 = [(LNAutoShortcutMetadata *)self availabilityAnnotations];
          v49 = [(LNAutoShortcutMetadata *)v6 availabilityAnnotations];
          v50 = v48;
          v51 = v49;
          v52 = v50;
          v53 = v50 == v51;
          v54 = v51;
          if (v53)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            LOBYTE(v12) = 0;
            if (v52)
            {
              v19 = v64;
              if (v51)
              {
                LOBYTE(v12) = [v52 isEqual:v51];
              }

              goto LABEL_57;
            }
          }

          v19 = v64;
LABEL_57:

          v46 = v54;
          v39 = v52;
          goto LABEL_59;
        }
      }

      else
      {
        v35 = v34;
        v19 = v64;
      }

LABEL_62:

      v28 = v60;
      v30 = v61;
      goto LABEL_63;
    }

    goto LABEL_36;
  }

  LOBYTE(v12) = 1;
LABEL_70:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNAutoShortcutMetadata *)self actionIdentifier];
  v4 = [v3 hash];
  v5 = [(LNAutoShortcutMetadata *)self phraseTemplates];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNAutoShortcutMetadata *)self title];
  v8 = [v7 hash];
  v9 = [(LNAutoShortcutMetadata *)self shortTitle];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(LNAutoShortcutMetadata *)self autoShortcutDescription];
  v12 = [v11 hash];
  v13 = [(LNAutoShortcutMetadata *)self systemImageName];
  v14 = v12 ^ [v13 hash];
  v15 = [(LNAutoShortcutMetadata *)self parameterPresentation];
  v16 = v10 ^ v14 ^ [v15 hash];
  v17 = [(LNAutoShortcutMetadata *)self availabilityAnnotations];
  v18 = [v17 hash];

  return v16 ^ v18;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(LNAutoShortcutMetadata *)self actionIdentifier];
  v6 = [(LNAutoShortcutMetadata *)self phraseTemplates];
  v7 = [(LNAutoShortcutMetadata *)self title];
  v8 = [(LNAutoShortcutMetadata *)self shortTitle];
  v9 = [(LNAutoShortcutMetadata *)self autoShortcutDescription];
  v10 = [(LNAutoShortcutMetadata *)self systemImageName];
  v11 = [(LNAutoShortcutMetadata *)self parameterPresentation];
  v12 = [(LNAutoShortcutMetadata *)self availabilityAnnotations];
  v13 = [v15 stringWithFormat:@"<%@: %p, actionIdentifier: %@, phraseTemplates: %@, title: %@, shortTitle: %@, autoShortcutDescription: %@, systemImageName: %@, parameterPresentation: %@, availabilityAnnotation: %@>", v4, self, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAutoShortcutMetadata *)self actionIdentifier];
  [v4 encodeObject:v5 forKey:@"actionIdentifier"];

  v6 = [(LNAutoShortcutMetadata *)self phraseTemplates];
  [v4 encodeObject:v6 forKey:@"phraseTemplates"];

  v7 = [(LNAutoShortcutMetadata *)self title];
  [v4 encodeObject:v7 forKey:@"title"];

  v8 = [(LNAutoShortcutMetadata *)self shortTitle];
  [v4 encodeObject:v8 forKey:@"shortTitle"];

  v9 = [(LNAutoShortcutMetadata *)self autoShortcutDescription];
  [v4 encodeObject:v9 forKey:@"autoShortcutDescription"];

  v10 = [(LNAutoShortcutMetadata *)self systemImageName];
  [v4 encodeObject:v10 forKey:@"systemImageName"];

  v11 = [(LNAutoShortcutMetadata *)self parameterPresentation];
  [v4 encodeObject:v11 forKey:@"parameterPresentation"];

  v12 = [(LNAutoShortcutMetadata *)self availabilityAnnotations];
  [v4 encodeObject:v12 forKey:@"availabilityAnnotations"];
}

- (LNAutoShortcutMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"phraseTemplates"];

    if (v9)
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
      if (v10)
      {
        v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortTitle"];
        v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoShortcutDescription"];
        v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemImageName"];
        if (v12)
        {
          [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterPresentation"];
          v13 = v22 = v11;
          v14 = MEMORY[0x1E695DFD8];
          v15 = objc_opt_class();
          v16 = objc_opt_class();
          v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
          v18 = [v4 decodeObjectOfClasses:v17 forKey:@"availabilityAnnotations"];

          v19 = v22;
          v20 = [[LNAutoShortcutMetadata alloc] initWithActionIdentifier:v5 phraseTemplates:v9 shortTitle:v22 autoShortcutDescription:v23 systemImageName:v12 parameterPresentation:v13 availabilityAnnotations:v18];
        }

        else
        {
          v20 = 0;
          v19 = v11;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (LNAutoShortcutMetadata)initWithActionIdentifier:(id)a3 phraseTemplates:(id)a4 shortTitle:(id)a5 autoShortcutDescription:(id)a6 systemImageName:(id)a7 parameterPresentation:(id)a8 availabilityAnnotations:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"LNAutoShortcutMetadata.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (v17)
    {
      goto LABEL_3;
    }
  }

  v41 = [MEMORY[0x1E696AAA8] currentHandler];
  [v41 handleFailureInMethod:a2 object:self file:@"LNAutoShortcutMetadata.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"phraseTemplates"}];

LABEL_3:
  v42.receiver = self;
  v42.super_class = LNAutoShortcutMetadata;
  v23 = [(LNAutoShortcutMetadata *)&v42 init];
  if (v23)
  {
    v24 = [v16 copy];
    actionIdentifier = v23->_actionIdentifier;
    v23->_actionIdentifier = v24;

    v26 = [v17 copy];
    phraseTemplates = v23->_phraseTemplates;
    v23->_phraseTemplates = v26;

    v28 = [v18 copy];
    shortTitle = v23->_shortTitle;
    v23->_shortTitle = v28;

    v30 = [v19 copy];
    autoShortcutDescription = v23->_autoShortcutDescription;
    v23->_autoShortcutDescription = v30;

    v32 = [v20 copy];
    systemImageName = v23->_systemImageName;
    v23->_systemImageName = v32;

    v34 = [v21 copy];
    parameterPresentation = v23->_parameterPresentation;
    v23->_parameterPresentation = v34;

    v36 = [v22 copy];
    availabilityAnnotations = v23->_availabilityAnnotations;
    v23->_availabilityAnnotations = v36;

    v38 = v23;
  }

  return v23;
}

- (LNAutoShortcutMetadata)initWithActionIdentifier:(id)a3 phraseTemplates:(id)a4 title:(id)a5 shortTitle:(id)a6 autoShortcutDescription:(id)a7 systemImageName:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  if ([v13 length])
  {
    v18 = v13;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(LNAutoShortcutMetadata *)self initWithActionIdentifier:v17 phraseTemplates:v16 shortTitle:v15 autoShortcutDescription:v14 systemImageName:v18];

  return v19;
}

@end