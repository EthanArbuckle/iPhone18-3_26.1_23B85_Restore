@interface WFAppDisplayRepresentation
+ (id)withTitle:(id)title;
- (BOOL)isEqual:(id)equal;
- (WFAppDisplayRepresentation)initWithCoder:(id)coder;
- (WFAppDisplayRepresentation)initWithTitle:(id)title subtitle:(id)subtitle altText:(id)text imageData:(id)data snippetPluginModelData:(id)modelData snippetPluginModelBundleIdentifier:(id)identifier synonyms:(id)synonyms;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAppDisplayRepresentation

- (unint64_t)hash
{
  v22.receiver = self;
  v22.super_class = WFAppDisplayRepresentation;
  v3 = [(WFAppDisplayRepresentation *)&v22 hash];
  title = [(WFAppDisplayRepresentation *)self title];
  v5 = [title hash];
  subtitle = [(WFAppDisplayRepresentation *)self subtitle];
  v7 = subtitle;
  if (!subtitle)
  {
    subtitle = &stru_282F53518;
  }

  v8 = v5 ^ [(__CFString *)subtitle hash];
  altText = [(WFAppDisplayRepresentation *)self altText];
  v10 = altText;
  if (!altText)
  {
    altText = &stru_282F53518;
  }

  v11 = v8 ^ [(__CFString *)altText hash]^ v3;
  imageData = [(WFAppDisplayRepresentation *)self imageData];
  v13 = [imageData hash];
  snippetPluginModelData = [(WFAppDisplayRepresentation *)self snippetPluginModelData];
  v15 = v13 ^ [snippetPluginModelData hash];
  snippetPluginModelBundleIdentifier = [(WFAppDisplayRepresentation *)self snippetPluginModelBundleIdentifier];
  v17 = snippetPluginModelBundleIdentifier;
  if (!snippetPluginModelBundleIdentifier)
  {
    snippetPluginModelBundleIdentifier = &stru_282F53518;
  }

  v18 = v15 ^ [(__CFString *)snippetPluginModelBundleIdentifier hash];
  synonyms = [(WFAppDisplayRepresentation *)self synonyms];
  v20 = v18 ^ [synonyms hash];

  return v11 ^ v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    v56.receiver = self;
    v56.super_class = WFAppDisplayRepresentation;
    if (![(WFAppDisplayRepresentation *)&v56 isEqual:v6])
    {
      LOBYTE(v12) = 0;
LABEL_60:

      goto LABEL_61;
    }

    title = [(WFAppDisplayRepresentation *)self title];
    title2 = [(WFAppDisplayRepresentation *)v6 title];
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
        goto LABEL_58;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_59:

        goto LABEL_60;
      }
    }

    subtitle = [(WFAppDisplayRepresentation *)self subtitle];
    subtitle2 = [(WFAppDisplayRepresentation *)v6 subtitle];
    v14 = subtitle;
    v18 = subtitle2;
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
        goto LABEL_57;
      }

      v21 = [v14 isEqualToString:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_58:

        goto LABEL_59;
      }
    }

    altText = [(WFAppDisplayRepresentation *)self altText];
    altText2 = [(WFAppDisplayRepresentation *)v6 altText];
    v20 = altText;
    v24 = altText2;
    v19 = v24;
    v55 = v20;
    if (v20 == v24)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v25 = v24;
      if (!v20 || !v24)
      {
        goto LABEL_56;
      }

      v12 = [v20 isEqualToString:v24];

      if (!v12)
      {
        goto LABEL_57;
      }
    }

    v54 = v19;
    imageData = [(WFAppDisplayRepresentation *)self imageData];
    imageData2 = [(WFAppDisplayRepresentation *)v6 imageData];
    v28 = imageData;
    v29 = imageData2;
    v52 = v29;
    v53 = v28;
    if (v28 == v29)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      if (!v28)
      {
        v30 = v29;
        v19 = v54;
        goto LABEL_54;
      }

      v30 = v29;
      v19 = v54;
      if (!v29)
      {
LABEL_54:

        goto LABEL_55;
      }

      v31 = [v28 isEqual:v29];

      if (!v31)
      {
        LOBYTE(v12) = 0;
        v19 = v54;
LABEL_55:
        v25 = v52;
        v20 = v53;
LABEL_56:

        v20 = v55;
LABEL_57:

        goto LABEL_58;
      }
    }

    snippetPluginModelData = [(WFAppDisplayRepresentation *)self snippetPluginModelData];
    snippetPluginModelData2 = [(WFAppDisplayRepresentation *)v6 snippetPluginModelData];
    v28 = snippetPluginModelData;
    v34 = snippetPluginModelData2;
    v50 = v28;
    v51 = v34;
    if (v28 != v34)
    {
      LOBYTE(v12) = 0;
      if (v28)
      {
        v35 = v34;
        v19 = v54;
        if (v34)
        {
          v36 = [v28 isEqual:v34];

          if (!v36)
          {
            LOBYTE(v12) = 0;
            v19 = v54;
            v30 = v51;
            goto LABEL_54;
          }

LABEL_35:
          snippetPluginModelBundleIdentifier = [(WFAppDisplayRepresentation *)self snippetPluginModelBundleIdentifier];
          snippetPluginModelBundleIdentifier2 = [(WFAppDisplayRepresentation *)v6 snippetPluginModelBundleIdentifier];
          v39 = snippetPluginModelBundleIdentifier;
          v40 = snippetPluginModelBundleIdentifier2;
          v48 = v40;
          v49 = v39;
          if (v39 == v40)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
            if (!v39)
            {
              v41 = v40;
              v19 = v54;
              goto LABEL_51;
            }

            v41 = v40;
            v19 = v54;
            if (!v40)
            {
LABEL_51:

              goto LABEL_52;
            }

            v42 = [v39 isEqualToString:v40];

            if (!v42)
            {
              LOBYTE(v12) = 0;
              v19 = v54;
LABEL_52:
              v35 = v48;
              v28 = v49;
              goto LABEL_53;
            }
          }

          v43 = [(WFAppDisplayRepresentation *)self synonyms:v48];
          synonyms = [(WFAppDisplayRepresentation *)v6 synonyms];
          v39 = v43;
          v45 = synonyms;
          v46 = v45;
          if (v39 == v45)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            LOBYTE(v12) = 0;
            if (v39)
            {
              v19 = v54;
              if (v45)
              {
                LOBYTE(v12) = [v39 isEqual:v45];
              }

              goto LABEL_49;
            }
          }

          v19 = v54;
LABEL_49:

          v41 = v46;
          goto LABEL_51;
        }
      }

      else
      {
        v35 = v34;
        v19 = v54;
      }

LABEL_53:

      v28 = v50;
      v30 = v51;
      goto LABEL_54;
    }

    goto LABEL_35;
  }

  LOBYTE(v12) = 1;
LABEL_61:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(WFAppDisplayRepresentation *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(WFAppDisplayRepresentation *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  altText = [(WFAppDisplayRepresentation *)self altText];
  [coderCopy encodeObject:altText forKey:@"altText"];

  imageData = [(WFAppDisplayRepresentation *)self imageData];
  [coderCopy encodeObject:imageData forKey:@"imageData"];

  snippetPluginModelData = [(WFAppDisplayRepresentation *)self snippetPluginModelData];
  [coderCopy encodeObject:snippetPluginModelData forKey:@"snippetPluginModelData"];

  snippetPluginModelBundleIdentifier = [(WFAppDisplayRepresentation *)self snippetPluginModelBundleIdentifier];
  [coderCopy encodeObject:snippetPluginModelBundleIdentifier forKey:@"snippetPluginModelBundleIdentifier"];

  synonyms = [(WFAppDisplayRepresentation *)self synonyms];
  [coderCopy encodeObject:synonyms forKey:@"synonyms"];
}

- (WFAppDisplayRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altText"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snippetPluginModelData"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snippetPluginModelBundleIdentifier"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"synonyms"];
    self = [(WFAppDisplayRepresentation *)self initWithTitle:v5 subtitle:v6 altText:v7 imageData:v8 snippetPluginModelData:v9 snippetPluginModelBundleIdentifier:v10 synonyms:v11];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFAppDisplayRepresentation)initWithTitle:(id)title subtitle:(id)subtitle altText:(id)text imageData:(id)data snippetPluginModelData:(id)modelData snippetPluginModelBundleIdentifier:(id)identifier synonyms:(id)synonyms
{
  titleCopy = title;
  subtitleCopy = subtitle;
  textCopy = text;
  dataCopy = data;
  modelDataCopy = modelData;
  identifierCopy = identifier;
  synonymsCopy = synonyms;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFApp.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"title"}];
  }

  v29.receiver = self;
  v29.super_class = WFAppDisplayRepresentation;
  v18 = [(WFAppDisplayRepresentation *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_title, title);
    objc_storeStrong(&v19->_subtitle, subtitle);
    objc_storeStrong(&v19->_altText, text);
    objc_storeStrong(&v19->_imageData, data);
    objc_storeStrong(&v19->_snippetPluginModelData, modelData);
    objc_storeStrong(&v19->_snippetPluginModelBundleIdentifier, identifier);
    objc_storeStrong(&v19->_synonyms, synonyms);
    v20 = v19;
  }

  return v19;
}

+ (id)withTitle:(id)title
{
  titleCopy = title;
  v4 = [WFAppDisplayRepresentation alloc];
  v5 = [(WFAppDisplayRepresentation *)v4 initWithTitle:titleCopy subtitle:0 altText:0 imageData:0 snippetPluginModelData:0 snippetPluginModelBundleIdentifier:0 synonyms:MEMORY[0x277CBEBF8]];

  return v5;
}

@end