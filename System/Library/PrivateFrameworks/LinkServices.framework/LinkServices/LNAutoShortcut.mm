@interface LNAutoShortcut
- (LNAutoShortcut)initWithBundleIdentifier:(id)a3 actionIdentifier:(id)a4 localizedPhrases:(id)a5 localizedTitle:(id)a6 localizedShortTitle:(id)a7 localizedAutoShortcutDescription:(id)a8 systemImageName:(id)a9;
- (LNAutoShortcut)initWithBundleIdentifier:(id)a3 localeIdentifier:(id)a4 actionIdentifier:(id)a5 orderedPhrases:(id)a6 localizedShortTitle:(id)a7 localizedAutoShortcutDescription:(id)a8 systemImageName:(id)a9;
- (LNAutoShortcut)initWithBundleIdentifier:(id)a3 localeIdentifier:(id)a4 actionIdentifier:(id)a5 orderedPhrases:(id)a6 localizedShortTitle:(id)a7 localizedAutoShortcutDescription:(id)a8 systemImageName:(id)a9 shortcutTileColor:(int64_t)a10 parameterPresentation:(id)a11 attributionBundleIdentifier:(id)a12 basePhraseTemplates:(id)a13;
- (LNAutoShortcut)initWithCoder:(id)a3;
- (LNAutoShortcut)initWithLocaleIdentifier:(id)a3 localizedApplicationName:(id)a4 basePhraseTemplateSubstitutions:(id)a5 actionIdentifier:(id)a6 phraseTemplates:(id)a7 title:(id)a8 shortTitle:(id)a9 actionDescription:(id)a10 systemImage:(id)a11;
- (NSArray)localizedPhrases;
- (NSDictionary)localizedPhrasesByBasePhraseTemplate;
- (NSString)systemImage;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAutoShortcut

- (id)description
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  v14 = [(LNAutoShortcut *)self bundleIdentifier];
  v4 = [(LNAutoShortcut *)self localeIdentifier];
  v5 = [(LNAutoShortcut *)self actionIdentifier];
  v6 = [(LNAutoShortcut *)self orderedPhrases];
  v7 = [(LNAutoShortcut *)self localizedShortTitle];
  v8 = [(LNAutoShortcut *)self localizedAutoShortcutDescription];
  v9 = [(LNAutoShortcut *)self systemImageName];
  v10 = [(LNAutoShortcut *)self parameterPresentation];
  v11 = [(LNAutoShortcut *)self attributionBundleIdentifier];
  v12 = [v16 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, localeIdentifier: %@, actionIdentifier: %@, orderedPhrases:%@, localizedShortTitle: %@, localizedAutoShortcut: %@, systemImageName: %@, parameterPresentation: %@, attributionBundleIdentifier: %@>", v15, self, v14, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAutoShortcut *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(LNAutoShortcut *)self localeIdentifier];
  [v4 encodeObject:v6 forKey:@"localeIdentifier"];

  v7 = [(LNAutoShortcut *)self actionIdentifier];
  [v4 encodeObject:v7 forKey:@"actionIdentifier"];

  v8 = [(LNAutoShortcut *)self orderedPhrases];
  [v4 encodeObject:v8 forKey:@"orderedPhrases"];

  v9 = [(LNAutoShortcut *)self localizedShortTitle];
  [v4 encodeObject:v9 forKey:@"localizedShortTitle"];

  v10 = [(LNAutoShortcut *)self localizedAutoShortcutDescription];
  [v4 encodeObject:v10 forKey:@"localizedAutoShortcutDescription"];

  v11 = [(LNAutoShortcut *)self systemImageName];
  [v4 encodeObject:v11 forKey:@"systemImageName"];

  [v4 encodeInteger:-[LNAutoShortcut shortcutTileColor](self forKey:{"shortcutTileColor"), @"shortcutTileColor"}];
  v12 = [(LNAutoShortcut *)self parameterPresentation];
  [v4 encodeObject:v12 forKey:@"parameterPresentation"];

  v13 = [(LNAutoShortcut *)self attributionBundleIdentifier];
  [v4 encodeObject:v13 forKey:@"attributionBundleIdentifier"];

  v14 = [(LNAutoShortcut *)self basePhraseTemplates];
  [v4 encodeObject:v14 forKey:@"basePhraseTemplates"];
}

- (LNAutoShortcut)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
      if (v7)
      {
        v8 = MEMORY[0x1E695DFD8];
        v9 = objc_opt_class();
        v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
        v11 = [v4 decodeObjectOfClasses:v10 forKey:@"orderedPhrases"];

        if (v11)
        {
          v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedShortTitle"];
          v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedAutoShortcutDescription"];
          v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemImageName"];
          if (v13)
          {
            v24 = v13;
            v23 = [v4 decodeIntegerForKey:@"shortcutTileColor"];
            v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterPresentation"];
            v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributionBundleIdentifier"];
            v14 = MEMORY[0x1E695DFD8];
            v15 = objc_opt_class();
            v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
            v17 = [v4 decodeObjectOfClasses:v16 forKey:@"basePhraseTemplates"];

            v18 = v25;
            self = [(LNAutoShortcut *)self initWithBundleIdentifier:v5 localeIdentifier:v6 actionIdentifier:v7 orderedPhrases:v11 localizedShortTitle:v12 localizedAutoShortcutDescription:v25 systemImageName:v24 shortcutTileColor:v23 parameterPresentation:v22 attributionBundleIdentifier:v21 basePhraseTemplates:v17];

            v13 = v24;
            v19 = self;
          }

          else
          {
            v19 = 0;
            v18 = v25;
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (NSDictionary)localizedPhrasesByBasePhraseTemplate
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(LNAutoShortcut *)self orderedPhrases];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 basePhraseTemplate];
        v11 = [v3 objectForKeyedSubscript:v10];

        if (v11)
        {
          [v11 addObject:v9];
        }

        else
        {
          v12 = [MEMORY[0x1E695DF70] arrayWithObject:v9];
          v13 = [v9 basePhraseTemplate];
          [v3 setObject:v12 forKeyedSubscript:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v4 = [(LNAutoShortcut *)self localizedPhrasesByBasePhraseTemplate];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v4 objectForKeyedSubscript:{v9, 0}];
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

              v15 = [*(*(&v18 + 1) + 8 * j) localizedPhrase];
              [v3 addObject:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
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

- (LNAutoShortcut)initWithBundleIdentifier:(id)a3 localeIdentifier:(id)a4 actionIdentifier:(id)a5 orderedPhrases:(id)a6 localizedShortTitle:(id)a7 localizedAutoShortcutDescription:(id)a8 systemImageName:(id)a9 shortcutTileColor:(int64_t)a10 parameterPresentation:(id)a11 attributionBundleIdentifier:(id)a12 basePhraseTemplates:(id)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v52 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a11;
  v51 = a12;
  v25 = a13;
  v53 = v18;
  if (v18)
  {
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (v19)
    {
LABEL_3:
      if (v20)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v45 = [MEMORY[0x1E696AAA8] currentHandler];
  [v45 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"localeIdentifier"}];

  if (v20)
  {
LABEL_4:
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_12:
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"orderedPhrases"}];

    if (v23)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  v46 = [MEMORY[0x1E696AAA8] currentHandler];
  [v46 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

  if (!v21)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v23)
  {
    goto LABEL_6;
  }

LABEL_13:
  v48 = [MEMORY[0x1E696AAA8] currentHandler];
  [v48 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"systemImageName"}];

LABEL_6:
  v54.receiver = self;
  v54.super_class = LNAutoShortcut;
  v26 = [(LNAutoShortcut *)&v54 init];
  if (v26)
  {
    v27 = [v53 copy];
    bundleIdentifier = v26->_bundleIdentifier;
    v26->_bundleIdentifier = v27;

    v29 = [v19 copy];
    localeIdentifier = v26->_localeIdentifier;
    v26->_localeIdentifier = v29;

    v31 = [v20 copy];
    actionIdentifier = v26->_actionIdentifier;
    v26->_actionIdentifier = v31;

    v33 = [v21 copy];
    orderedPhrases = v26->_orderedPhrases;
    v26->_orderedPhrases = v33;

    localizedTitle = v26->_localizedTitle;
    v26->_localizedTitle = @"DEPRECATED, DO NOT USE";

    v36 = [v52 copy];
    localizedShortTitle = v26->_localizedShortTitle;
    v26->_localizedShortTitle = v36;

    v38 = [v22 copy];
    localizedAutoShortcutDescription = v26->_localizedAutoShortcutDescription;
    v26->_localizedAutoShortcutDescription = v38;

    v40 = [v23 copy];
    systemImageName = v26->_systemImageName;
    v26->_systemImageName = v40;

    v26->_shortcutTileColor = a10;
    objc_storeStrong(&v26->_parameterPresentation, a11);
    objc_storeStrong(&v26->_attributionBundleIdentifier, a12);
    objc_storeStrong(&v26->_basePhraseTemplates, a13);
    v42 = v26;
  }

  return v26;
}

- (LNAutoShortcut)initWithLocaleIdentifier:(id)a3 localizedApplicationName:(id)a4 basePhraseTemplateSubstitutions:(id)a5 actionIdentifier:(id)a6 phraseTemplates:(id)a7 title:(id)a8 shortTitle:(id)a9 actionDescription:(id)a10 systemImage:(id)a11
{
  v44 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  if (v20)
  {
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (v21)
    {
      goto LABEL_3;
    }
  }

  v43 = [MEMORY[0x1E696AAA8] currentHandler];
  [v43 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:274 description:{@"Invalid parameter not satisfying: %@", @"phraseTemplates"}];

LABEL_3:
  v45.receiver = self;
  v45.super_class = LNAutoShortcut;
  v26 = [(LNAutoShortcut *)&v45 init];
  v27 = v26;
  if (v26)
  {
    bundleIdentifier = v26->_bundleIdentifier;
    v26->_bundleIdentifier = @"com.apple.unknown";

    v29 = [v20 copy];
    actionIdentifier = v27->_actionIdentifier;
    v27->_actionIdentifier = v29;

    orderedPhrases = v27->_orderedPhrases;
    v27->_orderedPhrases = MEMORY[0x1E695E0F0];

    v32 = [v22 key];
    localizedTitle = v27->_localizedTitle;
    v27->_localizedTitle = v32;

    v34 = [v23 key];
    localizedShortTitle = v27->_localizedShortTitle;
    v27->_localizedShortTitle = v34;

    v36 = [v24 key];
    localizedAutoShortcutDescription = v27->_localizedAutoShortcutDescription;
    v27->_localizedAutoShortcutDescription = v36;

    if (v25)
    {
      v38 = v25;
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

- (LNAutoShortcut)initWithBundleIdentifier:(id)a3 actionIdentifier:(id)a4 localizedPhrases:(id)a5 localizedTitle:(id)a6 localizedShortTitle:(id)a7 localizedAutoShortcutDescription:(id)a8 systemImageName:(id)a9
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
    [v40 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (v17)
    {
LABEL_3:
      if (v18)
      {
        goto LABEL_4;
      }

LABEL_10:
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      [v42 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"localizedPhrases"}];

      if (v22)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v41 = [MEMORY[0x1E696AAA8] currentHandler];
  [v41 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:244 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v22)
  {
    goto LABEL_5;
  }

LABEL_11:
  v43 = [MEMORY[0x1E696AAA8] currentHandler];
  [v43 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"systemImageName"}];

LABEL_5:
  v44.receiver = self;
  v44.super_class = LNAutoShortcut;
  v23 = [(LNAutoShortcut *)&v44 init];
  if (v23)
  {
    v24 = [v16 copy];
    bundleIdentifier = v23->_bundleIdentifier;
    v23->_bundleIdentifier = v24;

    v26 = [v17 copy];
    actionIdentifier = v23->_actionIdentifier;
    v23->_actionIdentifier = v26;

    v28 = [v18 copy];
    orderedPhrases = v23->_orderedPhrases;
    v23->_orderedPhrases = v28;

    v30 = [v19 copy];
    localizedTitle = v23->_localizedTitle;
    v23->_localizedTitle = v30;

    v32 = [v20 copy];
    localizedShortTitle = v23->_localizedShortTitle;
    v23->_localizedShortTitle = v32;

    v34 = [v21 copy];
    localizedAutoShortcutDescription = v23->_localizedAutoShortcutDescription;
    v23->_localizedAutoShortcutDescription = v34;

    v36 = [v22 copy];
    systemImageName = v23->_systemImageName;
    v23->_systemImageName = v36;

    v23->_shortcutTileColor = 14;
    v38 = v23;
  }

  return v23;
}

- (LNAutoShortcut)initWithBundleIdentifier:(id)a3 localeIdentifier:(id)a4 actionIdentifier:(id)a5 orderedPhrases:(id)a6 localizedShortTitle:(id)a7 localizedAutoShortcutDescription:(id)a8 systemImageName:(id)a9
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
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (v17)
    {
LABEL_3:
      if (v18)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v42 = [MEMORY[0x1E696AAA8] currentHandler];
  [v42 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"localeIdentifier"}];

  if (v18)
  {
LABEL_4:
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_12:
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"orderedPhrases"}];

    if (v22)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  v43 = [MEMORY[0x1E696AAA8] currentHandler];
  [v43 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

  if (!v19)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v22)
  {
    goto LABEL_6;
  }

LABEL_13:
  v45 = [MEMORY[0x1E696AAA8] currentHandler];
  [v45 handleFailureInMethod:a2 object:self file:@"LNAutoShortcut.m" lineNumber:218 description:{@"Invalid parameter not satisfying: %@", @"systemImageName"}];

LABEL_6:
  v46.receiver = self;
  v46.super_class = LNAutoShortcut;
  v23 = [(LNAutoShortcut *)&v46 init];
  if (v23)
  {
    v24 = [v16 copy];
    bundleIdentifier = v23->_bundleIdentifier;
    v23->_bundleIdentifier = v24;

    v26 = [v17 copy];
    localeIdentifier = v23->_localeIdentifier;
    v23->_localeIdentifier = v26;

    v28 = [v18 copy];
    actionIdentifier = v23->_actionIdentifier;
    v23->_actionIdentifier = v28;

    v30 = [v19 copy];
    orderedPhrases = v23->_orderedPhrases;
    v23->_orderedPhrases = v30;

    localizedTitle = v23->_localizedTitle;
    v23->_localizedTitle = @"DEPRECATED, DO NOT USE";

    v33 = [v20 copy];
    localizedShortTitle = v23->_localizedShortTitle;
    v23->_localizedShortTitle = v33;

    v35 = [v21 copy];
    localizedAutoShortcutDescription = v23->_localizedAutoShortcutDescription;
    v23->_localizedAutoShortcutDescription = v35;

    v37 = [v22 copy];
    systemImageName = v23->_systemImageName;
    v23->_systemImageName = v37;

    v23->_shortcutTileColor = 14;
    v39 = v23;
  }

  return v23;
}

@end