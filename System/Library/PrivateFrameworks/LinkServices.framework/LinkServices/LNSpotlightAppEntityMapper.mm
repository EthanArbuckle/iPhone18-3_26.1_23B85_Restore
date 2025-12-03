@interface LNSpotlightAppEntityMapper
+ (void)tagCSSearchableItem:(id)item entityInstanceIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier displayTitle:(id)title displaySubtitle:(id)subtitle displaySynonyms:(id)synonyms typeDisplayName:(id)name typeDisplaySynonyms:(id)self0 propertyDictionary:(id)self1 priority:(id)self2;
@end

@implementation LNSpotlightAppEntityMapper

+ (void)tagCSSearchableItem:(id)item entityInstanceIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier displayTitle:(id)title displaySubtitle:(id)subtitle displaySynonyms:(id)synonyms typeDisplayName:(id)name typeDisplaySynonyms:(id)self0 propertyDictionary:(id)self1 priority:(id)self2
{
  v53 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  synonymsCopy = synonyms;
  nameCopy = name;
  displaySynonymsCopy = displaySynonyms;
  dictionaryCopy = dictionary;
  priorityCopy = priority;
  if (itemCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNSpotlightAppEntityMapper.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"attributes"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNSpotlightAppEntityMapper.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"instanceIdentifier"}];

LABEL_3:
  if (typeIdentifierCopy)
  {
    if (titleCopy)
    {
      goto LABEL_5;
    }

LABEL_27:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNSpotlightAppEntityMapper.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    if (priorityCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"LNSpotlightAppEntityMapper.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"typeIdentifier"}];

  if (!titleCopy)
  {
    goto LABEL_27;
  }

LABEL_5:
  if (priorityCopy)
  {
    goto LABEL_6;
  }

LABEL_28:
  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"LNSpotlightAppEntityMapper.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"priority"}];

LABEL_6:
  [itemCopy setAttribute:identifierCopy forKey:@"_kMDItemAppEntityInstanceIdentifier"];
  [itemCopy setAttribute:typeIdentifierCopy forKey:@"_kMDItemAppEntityTypeIdentifier"];
  [itemCopy setAttribute:titleCopy forKey:@"kMDItemAppEntityTitle"];
  if (subtitleCopy)
  {
    [itemCopy setAttribute:subtitleCopy forKey:@"kMDItemAppEntitySubtitle"];
  }

  if (synonymsCopy && [synonymsCopy count])
  {
    [itemCopy setAttribute:synonymsCopy forKey:@"kMDItemAppEntityDisplayRepresentationSynonyms"];
  }

  v43 = titleCopy;
  if (nameCopy)
  {
    [itemCopy setAttribute:nameCopy forKey:@"_kMDItemAppEntityTypeDisplayRepresentationName"];
  }

  v40 = synonymsCopy;
  v41 = subtitleCopy;
  v45 = identifierCopy;
  if (displaySynonymsCopy && [displaySynonymsCopy count])
  {
    [itemCopy setAttribute:displaySynonymsCopy forKey:@"_kMDItemAppEntityTypeDisplayRepresentationSynonyms"];
  }

  v39 = displaySynonymsCopy;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v26 = [allKeys countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v49;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v49 != v28)
        {
          objc_enumerationMutation(allKeys);
        }

        v30 = *(*(&v48 + 1) + 8 * i);
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@", @"kMDItemAppEntity", typeIdentifierCopy, v30];
        v32 = [dictionaryCopy objectForKey:v30];
        [itemCopy setAttribute:v32 forKey:v31];
      }

      v27 = [allKeys countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v27);
  }

  [itemCopy setAttribute:priorityCopy forKey:@"_kMDItemAppEntityPriority"];
  v33 = *MEMORY[0x1E69E9840];
}

@end