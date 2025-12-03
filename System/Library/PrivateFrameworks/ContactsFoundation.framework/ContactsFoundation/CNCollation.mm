@interface CNCollation
+ (id)defaultSortCollatorIdentifier;
+ (id)indexSectionsFromPropertyList:(id)list;
+ (id)languageHeaderSectionsFromPropertyList:(id)list collator:(UCollator *)collator;
+ (id)sectionURL;
- (CNCollation)initWithCollator:(UCollator *)collator;
- (CNCollation)initWithCollator:(UCollator *)collator URL:(id)l;
@end

@implementation CNCollation

+ (id)defaultSortCollatorIdentifier
{
  sectionURL = [self sectionURL];
  if (sectionURL)
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:sectionURL];
    if (v3)
    {
      v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:0];
      objc_opt_class();
      v5 = 0;
      if (objc_opt_isKindOfClass())
      {
        v5 = [v4 objectForKeyedSubscript:@"ABCollationKey"];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __25__CNCollation_sectionURL__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) URLForResource:@"ABContactSections" withExtension:@"plist" subdirectory:0 localization:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

+ (id)sectionURL
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  preferredLocalizations = [v2 preferredLocalizations];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__CNCollation_sectionURL__block_invoke;
  v7[3] = &unk_1E6ED61D0;
  v9 = &v10;
  v4 = v2;
  v8 = v4;
  [preferredLocalizations enumerateObjectsUsingBlock:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

+ (id)indexSectionsFromPropertyList:(id)list
{
  listCopy = list;
  v4 = [listCopy objectForKeyedSubscript:@"SectionIndices"];
  v5 = [listCopy objectForKeyedSubscript:@"LocalizedSectionIndices"];

  v6 = MEMORY[0x1E695DF20];
  allKeys = [v5 allKeys];
  allValues = [v5 allValues];
  v9 = [v6 dictionaryWithObjects:allKeys forKeys:allValues];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__CNCollation_indexSectionsFromPropertyList___block_invoke;
  v14[3] = &unk_1E6ED61F8;
  v15 = v9;
  v10 = v9;
  v11 = [v4 _cn_map:v14];
  v12 = [v11 copy];

  return v12;
}

CNCollationSection *__45__CNCollation_indexSectionsFromPropertyList___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  v8 = [[CNCollationSection alloc] initWithKey:v7 localizedName:v3];

  return v8;
}

+ (id)languageHeaderSectionsFromPropertyList:(id)list collator:(UCollator *)collator
{
  listCopy = list;
  v6 = [listCopy objectForKeyedSubscript:@"SectionHeaders"];
  v7 = [listCopy objectForKeyedSubscript:@"LocalizedSectionHeaders"];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__CNCollation_languageHeaderSectionsFromPropertyList_collator___block_invoke;
  v11[3] = &unk_1E6ED6248;
  v12 = v7;
  collatorCopy = collator;
  v8 = v7;
  v9 = [v6 _cn_map:v11];

  return v9;
}

CNCollationLanguage *__63__CNCollation_languageHeaderSectionsFromPropertyList_collator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"LastCharacter"];
  v5 = [v3 objectForKeyedSubscript:@"FirstCharacterAfterLanguage"];
  v6 = [v3 objectForKeyedSubscript:@"Headers"];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__CNCollation_languageHeaderSectionsFromPropertyList_collator___block_invoke_2;
  v12[3] = &unk_1E6ED6220;
  v11 = *(a1 + 32);
  v7 = v11;
  v13 = v11;
  v8 = [v6 _cn_map:v12];
  v9 = [[CNCollationLanguage alloc] initWithSections:v8 lastCharacter:v4 firstCharacterAfterLanguage:v5];

  return v9;
}

CNCollationHeaderSection *__63__CNCollation_languageHeaderSectionsFromPropertyList_collator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = CNSortKeyStringForString(v4, v3);
  v6 = [CNCollationHeaderSection alloc];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v4];
  v8 = [(CNCollationHeaderSection *)v6 initWithKey:v4 localizedName:v7 ICUSortKey:v5];

  return v8;
}

- (CNCollation)initWithCollator:(UCollator *)collator
{
  sectionURL = [objc_opt_class() sectionURL];
  v6 = [(CNCollation *)self initWithCollator:collator URL:sectionURL];

  return v6;
}

- (CNCollation)initWithCollator:(UCollator *)collator URL:(id)l
{
  if (l)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l];
    if (v6)
    {
      v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (v23.receiver = self, v23.super_class = CNCollation, (self = [(CNCollation *)&v23 init]) != 0))
      {
        v8 = [v7 objectForKeyedSubscript:@"SearchTransform"];
        searchTransform = self->_searchTransform;
        self->_searchTransform = v8;

        v10 = [v7 objectForKeyedSubscript:@"NameTransform"];
        nameTransform = self->_nameTransform;
        self->_nameTransform = v10;

        v12 = [v7 objectForKeyedSubscript:@"ABUseExtraTokenizations"];
        self->_indexExtraTokenizations = [v12 BOOLValue];

        v13 = [v7 objectForKeyedSubscript:@"ABCollationKey"];
        sortCollatorIdentifier = self->_sortCollatorIdentifier;
        self->_sortCollatorIdentifier = v13;

        v15 = [v7 objectForKeyedSubscript:@"ABSearchCollationKey"];
        searchCollatorIdentifier = self->_searchCollatorIdentifier;
        self->_searchCollatorIdentifier = v15;

        v17 = [objc_opt_class() indexSectionsFromPropertyList:v7];
        indexSections = self->_indexSections;
        self->_indexSections = v17;

        v19 = [objc_opt_class() languageHeaderSectionsFromPropertyList:v7 collator:collator];
        headerLanguages = self->_headerLanguages;
        self->_headerLanguages = v19;

        self = self;
        selfCopy = self;
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

@end