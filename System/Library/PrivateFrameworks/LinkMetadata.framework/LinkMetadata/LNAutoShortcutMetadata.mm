@interface LNAutoShortcutMetadata
- (BOOL)isEqual:(id)equal;
- (LNAutoShortcutMetadata)initWithActionIdentifier:(id)identifier phraseTemplates:(id)templates shortTitle:(id)title autoShortcutDescription:(id)description systemImageName:(id)name parameterPresentation:(id)presentation availabilityAnnotations:(id)annotations;
- (LNAutoShortcutMetadata)initWithActionIdentifier:(id)identifier phraseTemplates:(id)templates title:(id)title shortTitle:(id)shortTitle autoShortcutDescription:(id)description systemImageName:(id)name;
- (LNAutoShortcutMetadata)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAutoShortcutMetadata

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
LABEL_69:

      goto LABEL_70;
    }

    actionIdentifier = [(LNAutoShortcutMetadata *)self actionIdentifier];
    actionIdentifier2 = [(LNAutoShortcutMetadata *)v6 actionIdentifier];
    v9 = actionIdentifier;
    v10 = actionIdentifier2;
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

    phraseTemplates = [(LNAutoShortcutMetadata *)self phraseTemplates];
    phraseTemplates2 = [(LNAutoShortcutMetadata *)v6 phraseTemplates];
    v14 = phraseTemplates;
    v18 = phraseTemplates2;
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

    title = [(LNAutoShortcutMetadata *)self title];
    title2 = [(LNAutoShortcutMetadata *)v6 title];
    v20 = title;
    v24 = title2;
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
    shortTitle = [(LNAutoShortcutMetadata *)self shortTitle];
    shortTitle2 = [(LNAutoShortcutMetadata *)v6 shortTitle];
    v28 = shortTitle;
    v29 = shortTitle2;
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

    autoShortcutDescription = [(LNAutoShortcutMetadata *)self autoShortcutDescription];
    autoShortcutDescription2 = [(LNAutoShortcutMetadata *)v6 autoShortcutDescription];
    v28 = autoShortcutDescription;
    v34 = autoShortcutDescription2;
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
          systemImageName = [(LNAutoShortcutMetadata *)self systemImageName];
          systemImageName2 = [(LNAutoShortcutMetadata *)v6 systemImageName];
          v39 = systemImageName;
          v40 = systemImageName2;
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

          parameterPresentation = [(LNAutoShortcutMetadata *)self parameterPresentation];
          parameterPresentation2 = [(LNAutoShortcutMetadata *)v6 parameterPresentation];
          v39 = parameterPresentation;
          v45 = parameterPresentation2;
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

          availabilityAnnotations = [(LNAutoShortcutMetadata *)self availabilityAnnotations];
          availabilityAnnotations2 = [(LNAutoShortcutMetadata *)v6 availabilityAnnotations];
          v50 = availabilityAnnotations;
          v51 = availabilityAnnotations2;
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
  actionIdentifier = [(LNAutoShortcutMetadata *)self actionIdentifier];
  v4 = [actionIdentifier hash];
  phraseTemplates = [(LNAutoShortcutMetadata *)self phraseTemplates];
  v6 = [phraseTemplates hash] ^ v4;
  title = [(LNAutoShortcutMetadata *)self title];
  v8 = [title hash];
  shortTitle = [(LNAutoShortcutMetadata *)self shortTitle];
  v10 = v6 ^ v8 ^ [shortTitle hash];
  autoShortcutDescription = [(LNAutoShortcutMetadata *)self autoShortcutDescription];
  v12 = [autoShortcutDescription hash];
  systemImageName = [(LNAutoShortcutMetadata *)self systemImageName];
  v14 = v12 ^ [systemImageName hash];
  parameterPresentation = [(LNAutoShortcutMetadata *)self parameterPresentation];
  v16 = v10 ^ v14 ^ [parameterPresentation hash];
  availabilityAnnotations = [(LNAutoShortcutMetadata *)self availabilityAnnotations];
  v18 = [availabilityAnnotations hash];

  return v16 ^ v18;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  actionIdentifier = [(LNAutoShortcutMetadata *)self actionIdentifier];
  phraseTemplates = [(LNAutoShortcutMetadata *)self phraseTemplates];
  title = [(LNAutoShortcutMetadata *)self title];
  shortTitle = [(LNAutoShortcutMetadata *)self shortTitle];
  autoShortcutDescription = [(LNAutoShortcutMetadata *)self autoShortcutDescription];
  systemImageName = [(LNAutoShortcutMetadata *)self systemImageName];
  parameterPresentation = [(LNAutoShortcutMetadata *)self parameterPresentation];
  availabilityAnnotations = [(LNAutoShortcutMetadata *)self availabilityAnnotations];
  v13 = [v15 stringWithFormat:@"<%@: %p, actionIdentifier: %@, phraseTemplates: %@, title: %@, shortTitle: %@, autoShortcutDescription: %@, systemImageName: %@, parameterPresentation: %@, availabilityAnnotation: %@>", v4, self, actionIdentifier, phraseTemplates, title, shortTitle, autoShortcutDescription, systemImageName, parameterPresentation, availabilityAnnotations];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionIdentifier = [(LNAutoShortcutMetadata *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];

  phraseTemplates = [(LNAutoShortcutMetadata *)self phraseTemplates];
  [coderCopy encodeObject:phraseTemplates forKey:@"phraseTemplates"];

  title = [(LNAutoShortcutMetadata *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  shortTitle = [(LNAutoShortcutMetadata *)self shortTitle];
  [coderCopy encodeObject:shortTitle forKey:@"shortTitle"];

  autoShortcutDescription = [(LNAutoShortcutMetadata *)self autoShortcutDescription];
  [coderCopy encodeObject:autoShortcutDescription forKey:@"autoShortcutDescription"];

  systemImageName = [(LNAutoShortcutMetadata *)self systemImageName];
  [coderCopy encodeObject:systemImageName forKey:@"systemImageName"];

  parameterPresentation = [(LNAutoShortcutMetadata *)self parameterPresentation];
  [coderCopy encodeObject:parameterPresentation forKey:@"parameterPresentation"];

  availabilityAnnotations = [(LNAutoShortcutMetadata *)self availabilityAnnotations];
  [coderCopy encodeObject:availabilityAnnotations forKey:@"availabilityAnnotations"];
}

- (LNAutoShortcutMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"phraseTemplates"];

    if (v9)
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
      if (v10)
      {
        v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortTitle"];
        v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoShortcutDescription"];
        v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemImageName"];
        if (v12)
        {
          [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterPresentation"];
          v13 = v22 = v11;
          v14 = MEMORY[0x1E695DFD8];
          v15 = objc_opt_class();
          v16 = objc_opt_class();
          v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
          v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"availabilityAnnotations"];

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

- (LNAutoShortcutMetadata)initWithActionIdentifier:(id)identifier phraseTemplates:(id)templates shortTitle:(id)title autoShortcutDescription:(id)description systemImageName:(id)name parameterPresentation:(id)presentation availabilityAnnotations:(id)annotations
{
  identifierCopy = identifier;
  templatesCopy = templates;
  titleCopy = title;
  descriptionCopy = description;
  nameCopy = name;
  presentationCopy = presentation;
  annotationsCopy = annotations;
  if (identifierCopy)
  {
    if (templatesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAutoShortcutMetadata.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (templatesCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAutoShortcutMetadata.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"phraseTemplates"}];

LABEL_3:
  v42.receiver = self;
  v42.super_class = LNAutoShortcutMetadata;
  v23 = [(LNAutoShortcutMetadata *)&v42 init];
  if (v23)
  {
    v24 = [identifierCopy copy];
    actionIdentifier = v23->_actionIdentifier;
    v23->_actionIdentifier = v24;

    v26 = [templatesCopy copy];
    phraseTemplates = v23->_phraseTemplates;
    v23->_phraseTemplates = v26;

    v28 = [titleCopy copy];
    shortTitle = v23->_shortTitle;
    v23->_shortTitle = v28;

    v30 = [descriptionCopy copy];
    autoShortcutDescription = v23->_autoShortcutDescription;
    v23->_autoShortcutDescription = v30;

    v32 = [nameCopy copy];
    systemImageName = v23->_systemImageName;
    v23->_systemImageName = v32;

    v34 = [presentationCopy copy];
    parameterPresentation = v23->_parameterPresentation;
    v23->_parameterPresentation = v34;

    v36 = [annotationsCopy copy];
    availabilityAnnotations = v23->_availabilityAnnotations;
    v23->_availabilityAnnotations = v36;

    v38 = v23;
  }

  return v23;
}

- (LNAutoShortcutMetadata)initWithActionIdentifier:(id)identifier phraseTemplates:(id)templates title:(id)title shortTitle:(id)shortTitle autoShortcutDescription:(id)description systemImageName:(id)name
{
  nameCopy = name;
  descriptionCopy = description;
  shortTitleCopy = shortTitle;
  templatesCopy = templates;
  identifierCopy = identifier;
  if ([nameCopy length])
  {
    v18 = nameCopy;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(LNAutoShortcutMetadata *)self initWithActionIdentifier:identifierCopy phraseTemplates:templatesCopy shortTitle:shortTitleCopy autoShortcutDescription:descriptionCopy systemImageName:v18];

  return v19;
}

@end