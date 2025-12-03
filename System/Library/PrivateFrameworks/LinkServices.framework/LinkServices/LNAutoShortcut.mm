@interface LNAutoShortcut
- (LNAutoShortcut)initWithBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier localizedPhrases:(id)phrases localizedTitle:(id)title localizedShortTitle:(id)shortTitle localizedAutoShortcutDescription:(id)description systemImageName:(id)name;
- (LNAutoShortcut)initWithBundleIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier actionIdentifier:(id)actionIdentifier orderedPhrases:(id)phrases localizedShortTitle:(id)title localizedAutoShortcutDescription:(id)description systemImageName:(id)name;
- (LNAutoShortcut)initWithBundleIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier actionIdentifier:(id)actionIdentifier orderedPhrases:(id)phrases localizedShortTitle:(id)title localizedAutoShortcutDescription:(id)description systemImageName:(id)name shortcutTileColor:(int64_t)self0 parameterPresentation:(id)self1 attributionBundleIdentifier:(id)self2 basePhraseTemplates:(id)self3;
- (LNAutoShortcut)initWithCoder:(id)coder;
- (LNAutoShortcut)initWithLocaleIdentifier:(id)identifier localizedApplicationName:(id)name basePhraseTemplateSubstitutions:(id)substitutions actionIdentifier:(id)actionIdentifier phraseTemplates:(id)templates title:(id)title shortTitle:(id)shortTitle actionDescription:(id)self0 systemImage:(id)self1;
- (NSArray)localizedPhrases;
- (NSDictionary)localizedPhrasesByBasePhraseTemplate;
- (NSString)systemImage;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAutoShortcut

- (id)description
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  bundleIdentifier = [(LNAutoShortcut *)self bundleIdentifier];
  localeIdentifier = [(LNAutoShortcut *)self localeIdentifier];
  actionIdentifier = [(LNAutoShortcut *)self actionIdentifier];
  orderedPhrases = [(LNAutoShortcut *)self orderedPhrases];
  localizedShortTitle = [(LNAutoShortcut *)self localizedShortTitle];
  localizedAutoShortcutDescription = [(LNAutoShortcut *)self localizedAutoShortcutDescription];
  systemImageName = [(LNAutoShortcut *)self systemImageName];
  parameterPresentation = [(LNAutoShortcut *)self parameterPresentation];
  attributionBundleIdentifier = [(LNAutoShortcut *)self attributionBundleIdentifier];
  v12 = [v16 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, localeIdentifier: %@, actionIdentifier: %@, orderedPhrases:%@, localizedShortTitle: %@, localizedAutoShortcut: %@, systemImageName: %@, parameterPresentation: %@, attributionBundleIdentifier: %@>", v15, self, bundleIdentifier, localeIdentifier, actionIdentifier, orderedPhrases, localizedShortTitle, localizedAutoShortcutDescription, systemImageName, parameterPresentation, attributionBundleIdentifier];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(LNAutoShortcut *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  localeIdentifier = [(LNAutoShortcut *)self localeIdentifier];
  [coderCopy encodeObject:localeIdentifier forKey:@"localeIdentifier"];

  actionIdentifier = [(LNAutoShortcut *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];

  orderedPhrases = [(LNAutoShortcut *)self orderedPhrases];
  [coderCopy encodeObject:orderedPhrases forKey:@"orderedPhrases"];

  localizedShortTitle = [(LNAutoShortcut *)self localizedShortTitle];
  [coderCopy encodeObject:localizedShortTitle forKey:@"localizedShortTitle"];

  localizedAutoShortcutDescription = [(LNAutoShortcut *)self localizedAutoShortcutDescription];
  [coderCopy encodeObject:localizedAutoShortcutDescription forKey:@"localizedAutoShortcutDescription"];

  systemImageName = [(LNAutoShortcut *)self systemImageName];
  [coderCopy encodeObject:systemImageName forKey:@"systemImageName"];

  [coderCopy encodeInteger:-[LNAutoShortcut shortcutTileColor](self forKey:{"shortcutTileColor"), @"shortcutTileColor"}];
  parameterPresentation = [(LNAutoShortcut *)self parameterPresentation];
  [coderCopy encodeObject:parameterPresentation forKey:@"parameterPresentation"];

  attributionBundleIdentifier = [(LNAutoShortcut *)self attributionBundleIdentifier];
  [coderCopy encodeObject:attributionBundleIdentifier forKey:@"attributionBundleIdentifier"];

  basePhraseTemplates = [(LNAutoShortcut *)self basePhraseTemplates];
  [coderCopy encodeObject:basePhraseTemplates forKey:@"basePhraseTemplates"];
}

- (LNAutoShortcut)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
      if (v7)
      {
        v8 = MEMORY[0x1E695DFD8];
        v9 = objc_opt_class();
        v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
        v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"orderedPhrases"];

        if (v11)
        {
          v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedShortTitle"];
          v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedAutoShortcutDescription"];
          v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemImageName"];
          if (v13)
          {
            v24 = v13;
            v23 = [coderCopy decodeIntegerForKey:@"shortcutTileColor"];
            v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterPresentation"];
            v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributionBundleIdentifier"];
            v14 = MEMORY[0x1E695DFD8];
            v15 = objc_opt_class();
            v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
            v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"basePhraseTemplates"];

            v18 = v25;
            self = [(LNAutoShortcut *)self initWithBundleIdentifier:v5 localeIdentifier:v6 actionIdentifier:v7 orderedPhrases:v11 localizedShortTitle:v12 localizedAutoShortcutDescription:v25 systemImageName:v24 shortcutTileColor:v23 parameterPresentation:v22 attributionBundleIdentifier:v21 basePhraseTemplates:v17];

            v13 = v24;
            selfCopy = self;
          }

          else
          {
            selfCopy = 0;
            v18 = v25;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSDictionary)localizedPhrasesByBasePhraseTemplate
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  orderedPhrases = [(LNAutoShortcut *)self orderedPhrases];
  v5 = [orderedPhrases countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(orderedPhrases);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        basePhraseTemplate = [v9 basePhraseTemplate];
        v11 = [v3 objectForKeyedSubscript:basePhraseTemplate];

        if (v11)
        {
          [v11 addObject:v9];
        }

        else
        {
          v12 = [MEMORY[0x1E695DF70] arrayWithObject:v9];
          basePhraseTemplate2 = [v9 basePhraseTemplate];
          [v3 setObject:v12 forKeyedSubscript:basePhraseTemplate2];
        }
      }

      v6 = [orderedPhrases countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSArray)localizedPhrases
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  localizedPhrasesByBasePhraseTemplate = [(LNAutoShortcut *)self localizedPhrasesByBasePhraseTemplate];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [localizedPhrasesByBasePhraseTemplate countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(localizedPhrasesByBasePhraseTemplate);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [localizedPhrasesByBasePhraseTemplate objectForKeyedSubscript:{v9, 0}];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              localizedPhrase = [*(*(&v18 + 1) + 8 * j) localizedPhrase];
              [v3 addObject:localizedPhrase];
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [localizedPhrasesByBasePhraseTemplate countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSString)systemImage
{
  v2 = [(NSString *)self->_systemImageName copy];

  return v2;
}

- (LNAutoShortcut)initWithBundleIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier actionIdentifier:(id)actionIdentifier orderedPhrases:(id)phrases localizedShortTitle:(id)title localizedAutoShortcutDescription:(id)description systemImageName:(id)name shortcutTileColor:(int64_t)self0 parameterPresentation:(id)self1 attributionBundleIdentifier:(id)self2 basePhraseTemplates:(id)self3
{
  identifierCopy = identifier;
  localeIdentifierCopy = localeIdentifier;
  actionIdentifierCopy = actionIdentifier;
  phrasesCopy = phrases;
  titleCopy = title;
  descriptionCopy = description;
  nameCopy = name;
  presentationCopy = presentation;
  bundleIdentifierCopy = bundleIdentifier;
  templatesCopy = templates;
  v53 = identifierCopy;
  if (identifierCopy)
  {
    if (localeIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (localeIdentifierCopy)
    {
LABEL_3:
      if (actionIdentifierCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"localeIdentifier"}];

  if (actionIdentifierCopy)
  {
LABEL_4:
    if (phrasesCopy)
    {
      goto LABEL_5;
    }

LABEL_12:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"orderedPhrases"}];

    if (nameCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

  if (!phrasesCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (nameCopy)
  {
    goto LABEL_6;
  }

LABEL_13:
  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"systemImageName"}];

LABEL_6:
  v54.receiver = self;
  v54.super_class = LNAutoShortcut;
  v26 = [(LNAutoShortcut *)&v54 init];
  if (v26)
  {
    v27 = [v53 copy];
    bundleIdentifier = v26->_bundleIdentifier;
    v26->_bundleIdentifier = v27;

    v29 = [localeIdentifierCopy copy];
    localeIdentifier = v26->_localeIdentifier;
    v26->_localeIdentifier = v29;

    v31 = [actionIdentifierCopy copy];
    actionIdentifier = v26->_actionIdentifier;
    v26->_actionIdentifier = v31;

    v33 = [phrasesCopy copy];
    orderedPhrases = v26->_orderedPhrases;
    v26->_orderedPhrases = v33;

    localizedTitle = v26->_localizedTitle;
    v26->_localizedTitle = @"DEPRECATED, DO NOT USE";

    v36 = [titleCopy copy];
    localizedShortTitle = v26->_localizedShortTitle;
    v26->_localizedShortTitle = v36;

    v38 = [descriptionCopy copy];
    localizedAutoShortcutDescription = v26->_localizedAutoShortcutDescription;
    v26->_localizedAutoShortcutDescription = v38;

    v40 = [nameCopy copy];
    systemImageName = v26->_systemImageName;
    v26->_systemImageName = v40;

    v26->_shortcutTileColor = color;
    objc_storeStrong(&v26->_parameterPresentation, presentation);
    objc_storeStrong(&v26->_attributionBundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v26->_basePhraseTemplates, templates);
    v42 = v26;
  }

  return v26;
}

- (LNAutoShortcut)initWithLocaleIdentifier:(id)identifier localizedApplicationName:(id)name basePhraseTemplateSubstitutions:(id)substitutions actionIdentifier:(id)actionIdentifier phraseTemplates:(id)templates title:(id)title shortTitle:(id)shortTitle actionDescription:(id)self0 systemImage:(id)self1
{
  identifierCopy = identifier;
  nameCopy = name;
  substitutionsCopy = substitutions;
  actionIdentifierCopy = actionIdentifier;
  templatesCopy = templates;
  titleCopy = title;
  shortTitleCopy = shortTitle;
  descriptionCopy = description;
  imageCopy = image;
  if (actionIdentifierCopy)
  {
    if (templatesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (templatesCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:274 description:{@"Invalid parameter not satisfying: %@", @"phraseTemplates"}];

LABEL_3:
  v45.receiver = self;
  v45.super_class = LNAutoShortcut;
  v26 = [(LNAutoShortcut *)&v45 init];
  v27 = v26;
  if (v26)
  {
    bundleIdentifier = v26->_bundleIdentifier;
    v26->_bundleIdentifier = @"com.apple.unknown";

    v29 = [actionIdentifierCopy copy];
    actionIdentifier = v27->_actionIdentifier;
    v27->_actionIdentifier = v29;

    orderedPhrases = v27->_orderedPhrases;
    v27->_orderedPhrases = MEMORY[0x1E695E0F0];

    v32 = [titleCopy key];
    localizedTitle = v27->_localizedTitle;
    v27->_localizedTitle = v32;

    v34 = [shortTitleCopy key];
    localizedShortTitle = v27->_localizedShortTitle;
    v27->_localizedShortTitle = v34;

    v36 = [descriptionCopy key];
    localizedAutoShortcutDescription = v27->_localizedAutoShortcutDescription;
    v27->_localizedAutoShortcutDescription = v36;

    if (imageCopy)
    {
      v38 = imageCopy;
    }

    else
    {
      v38 = @"play.circle";
    }

    systemImageName = v27->_systemImageName;
    v27->_systemImageName = &v38->isa;

    v27->_shortcutTileColor = 14;
    v40 = v27;
  }

  return v27;
}

- (LNAutoShortcut)initWithBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier localizedPhrases:(id)phrases localizedTitle:(id)title localizedShortTitle:(id)shortTitle localizedAutoShortcutDescription:(id)description systemImageName:(id)name
{
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
  phrasesCopy = phrases;
  titleCopy = title;
  shortTitleCopy = shortTitle;
  descriptionCopy = description;
  nameCopy = name;
  if (identifierCopy)
  {
    if (actionIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (actionIdentifierCopy)
    {
LABEL_3:
      if (phrasesCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"localizedPhrases"}];

      if (nameCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:244 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

  if (!phrasesCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (nameCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"systemImageName"}];

LABEL_5:
  v44.receiver = self;
  v44.super_class = LNAutoShortcut;
  v23 = [(LNAutoShortcut *)&v44 init];
  if (v23)
  {
    v24 = [identifierCopy copy];
    bundleIdentifier = v23->_bundleIdentifier;
    v23->_bundleIdentifier = v24;

    v26 = [actionIdentifierCopy copy];
    actionIdentifier = v23->_actionIdentifier;
    v23->_actionIdentifier = v26;

    v28 = [phrasesCopy copy];
    orderedPhrases = v23->_orderedPhrases;
    v23->_orderedPhrases = v28;

    v30 = [titleCopy copy];
    localizedTitle = v23->_localizedTitle;
    v23->_localizedTitle = v30;

    v32 = [shortTitleCopy copy];
    localizedShortTitle = v23->_localizedShortTitle;
    v23->_localizedShortTitle = v32;

    v34 = [descriptionCopy copy];
    localizedAutoShortcutDescription = v23->_localizedAutoShortcutDescription;
    v23->_localizedAutoShortcutDescription = v34;

    v36 = [nameCopy copy];
    systemImageName = v23->_systemImageName;
    v23->_systemImageName = v36;

    v23->_shortcutTileColor = 14;
    v38 = v23;
  }

  return v23;
}

- (LNAutoShortcut)initWithBundleIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier actionIdentifier:(id)actionIdentifier orderedPhrases:(id)phrases localizedShortTitle:(id)title localizedAutoShortcutDescription:(id)description systemImageName:(id)name
{
  identifierCopy = identifier;
  localeIdentifierCopy = localeIdentifier;
  actionIdentifierCopy = actionIdentifier;
  phrasesCopy = phrases;
  titleCopy = title;
  descriptionCopy = description;
  nameCopy = name;
  if (identifierCopy)
  {
    if (localeIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (localeIdentifierCopy)
    {
LABEL_3:
      if (actionIdentifierCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"localeIdentifier"}];

  if (actionIdentifierCopy)
  {
LABEL_4:
    if (phrasesCopy)
    {
      goto LABEL_5;
    }

LABEL_12:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"orderedPhrases"}];

    if (nameCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

  if (!phrasesCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (nameCopy)
  {
    goto LABEL_6;
  }

LABEL_13:
  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:218 description:{@"Invalid parameter not satisfying: %@", @"systemImageName"}];

LABEL_6:
  v46.receiver = self;
  v46.super_class = LNAutoShortcut;
  v23 = [(LNAutoShortcut *)&v46 init];
  if (v23)
  {
    v24 = [identifierCopy copy];
    bundleIdentifier = v23->_bundleIdentifier;
    v23->_bundleIdentifier = v24;

    v26 = [localeIdentifierCopy copy];
    localeIdentifier = v23->_localeIdentifier;
    v23->_localeIdentifier = v26;

    v28 = [actionIdentifierCopy copy];
    actionIdentifier = v23->_actionIdentifier;
    v23->_actionIdentifier = v28;

    v30 = [phrasesCopy copy];
    orderedPhrases = v23->_orderedPhrases;
    v23->_orderedPhrases = v30;

    localizedTitle = v23->_localizedTitle;
    v23->_localizedTitle = @"DEPRECATED, DO NOT USE";

    v33 = [titleCopy copy];
    localizedShortTitle = v23->_localizedShortTitle;
    v23->_localizedShortTitle = v33;

    v35 = [descriptionCopy copy];
    localizedAutoShortcutDescription = v23->_localizedAutoShortcutDescription;
    v23->_localizedAutoShortcutDescription = v35;

    v37 = [nameCopy copy];
    systemImageName = v23->_systemImageName;
    v23->_systemImageName = v37;

    v23->_shortcutTileColor = 14;
    v39 = v23;
  }

  return v23;
}

@end