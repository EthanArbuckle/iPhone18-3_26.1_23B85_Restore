@interface LNDisplayRepresentation
- (BOOL)isEqual:(id)equal;
- (LNDisplayRepresentation)initWithCoder:(id)coder;
- (LNDisplayRepresentation)initWithTitle:(id)title snippetPluginModelData:(id)data;
- (LNDisplayRepresentation)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image synonyms:(id)synonyms descriptionText:(id)text snippetPluginModel:(id)model;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNDisplayRepresentation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(LNDisplayRepresentation *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(LNDisplayRepresentation *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  image = [(LNDisplayRepresentation *)self image];
  [coderCopy encodeObject:image forKey:@"image"];

  synonyms = [(LNDisplayRepresentation *)self synonyms];
  [coderCopy encodeObject:synonyms forKey:@"synonyms"];

  descriptionText = [(LNDisplayRepresentation *)self descriptionText];
  [coderCopy encodeObject:descriptionText forKey:@"descriptionText"];

  snippetPluginModel = [(LNDisplayRepresentation *)self snippetPluginModel];
  [coderCopy encodeObject:snippetPluginModel forKey:@"snippetPluginModel"];
}

- (LNDisplayRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"image"];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"synonyms"];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snippetPluginModel"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptionText"];
    self = [(LNDisplayRepresentation *)self initWithTitle:v5 subtitle:v6 image:v11 synonyms:v15 descriptionText:v17 snippetPluginModel:v16];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  title = [(LNDisplayRepresentation *)self title];
  v4 = [title hash];
  subtitle = [(LNDisplayRepresentation *)self subtitle];
  v6 = [subtitle hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_54:

      goto LABEL_55;
    }

    title = [(LNDisplayRepresentation *)self title];
    title2 = [(LNDisplayRepresentation *)v6 title];
    v9 = title;
    v10 = title2;
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

    subtitle = [(LNDisplayRepresentation *)self subtitle];
    subtitle2 = [(LNDisplayRepresentation *)v6 subtitle];
    v14 = subtitle;
    v18 = subtitle2;
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

    image = [(LNDisplayRepresentation *)self image];
    image2 = [(LNDisplayRepresentation *)v6 image];
    v20 = image;
    v25 = image2;
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
    synonyms = [(LNDisplayRepresentation *)self synonyms];
    synonyms2 = [(LNDisplayRepresentation *)v6 synonyms];
    v30 = synonyms;
    v31 = synonyms2;
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
          descriptionText = [(LNDisplayRepresentation *)self descriptionText];
          descriptionText2 = [(LNDisplayRepresentation *)v6 descriptionText];
          v33 = descriptionText;
          v37 = descriptionText2;
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
          snippetPluginModel = [(LNDisplayRepresentation *)self snippetPluginModel];
          snippetPluginModel2 = [(LNDisplayRepresentation *)v6 snippetPluginModel];
          v44 = snippetPluginModel;
          v45 = snippetPluginModel2;
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
  title = [(LNDisplayRepresentation *)self title];
  subtitle = [(LNDisplayRepresentation *)self subtitle];
  image = [(LNDisplayRepresentation *)self image];
  synonyms = [(LNDisplayRepresentation *)self synonyms];
  descriptionText = [(LNDisplayRepresentation *)self descriptionText];
  snippetPluginModel = [(LNDisplayRepresentation *)self snippetPluginModel];
  v12 = [v3 stringWithFormat:@"<%@: %p, title: %@, subtitle: %@, image: %@, synonyms: %@, descriptionText: %@, snippetPluginModel: %@>", v5, self, title, subtitle, image, synonyms, descriptionText, snippetPluginModel];

  return v12;
}

- (LNDisplayRepresentation)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image synonyms:(id)synonyms descriptionText:(id)text snippetPluginModel:(id)model
{
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  synonymsCopy = synonyms;
  textCopy = text;
  modelCopy = model;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNDisplayRepresentation.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"title"}];
  }

  v29.receiver = self;
  v29.super_class = LNDisplayRepresentation;
  v19 = [(LNDisplayRepresentation *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v20->_subtitle, subtitle);
    objc_storeStrong(&v20->_image, image);
    v21 = [synonymsCopy copy];
    synonyms = v20->_synonyms;
    v20->_synonyms = v21;

    objc_storeStrong(&v20->_descriptionText, text);
    objc_storeStrong(&v20->_snippetPluginModel, model);
    v23 = v20;
  }

  return v20;
}

- (LNDisplayRepresentation)initWithTitle:(id)title snippetPluginModelData:(id)data
{
  titleCopy = title;
  dataCopy = data;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNDisplayRepresentation.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"title"}];
  }

  v9 = [(LNDisplayRepresentation *)self initWithTitle:titleCopy subtitle:0 image:0 synonyms:0 descriptionText:0 snippetPluginModel:dataCopy];

  return v9;
}

@end