@interface ICSettingsSpecifiers
+ (id)_currentDateHeadersOn:(id)a3;
+ (id)_currentNoteSortType:(id)a3;
+ (id)_dateHeadersSpecifier;
+ (id)sortTypeAndDateHeaderSpecifiers;
+ (id)sortTypeSpecifier;
+ (id)viewingGroupSpecifier;
+ (void)_setDateHeadersType:(id)a3 withSpecifier:(id)a4;
+ (void)_setNoteSortType:(id)a3 withSpecifier:(id)a4;
@end

@implementation ICSettingsSpecifiers

+ (id)viewingGroupSpecifier
{
  v2 = MEMORY[0x1E69C5748];
  v3 = __ICLocalizedFrameworkStringWithDefaultValue_impl(@"VIEWING_GROUP_TITLE", @"Viewing", @"Localizable", 1);
  v4 = [v2 groupSpecifierWithName:v3];

  return v4;
}

+ (id)sortTypeAndDateHeaderSpecifiers
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = +[ICSettingsSpecifiers sortTypeSpecifier];
  [v2 ic_addNonNilObject:v3];
  if ([MEMORY[0x1E69B7A88] currentNoteListSortType] != 2)
  {
    v4 = +[ICSettingsSpecifiers _dateHeadersSpecifier];
    [v2 ic_addNonNilObject:v4];
  }

  return v2;
}

+ (id)sortTypeSpecifier
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = __ICLocalizedFrameworkStringWithDefaultValue_impl(@"NOTE_DEFAULT_SORT", @"Sort Notes By", @"Localizable", 1);
  v19 = a1;
  v3 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:v21 target:a1 set:sel__setNoteSortType_withSpecifier_ get:sel__currentNoteSortType_ detail:objc_opt_class() cell:2 edit:0];
  [v3 setIdentifier:*MEMORY[0x1E69B7A20]];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69B7A18], @"key", 0}];
  v20 = v3;
  [v3 setUserInfo:v4];

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [&unk_1F4FC3BD0 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(&unk_1F4FC3BD0);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [MEMORY[0x1E69B7A88] descriptionForNoteListSortType:{objc_msgSend(v11, "integerValue")}];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
          [v6 addObject:v12];
        }

        else
        {
          [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"title" functionName:"+[ICSettingsSpecifiers sortTypeSpecifier]" simulateCrash:1 showAlert:0 format:{@"Failed to find title for note Sort type %@", v11}];
        }
      }

      v8 = [&unk_1F4FC3BD0 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(a2);
  NSLog(&cfstr_PValuesTitles.isa, v13, v19, v14, &unk_1F4FC3BD0, v5);

  v15 = [&unk_1F4FC3BD0 copy];
  [v20 setValues:v15];

  v16 = [v5 copy];
  [v20 setTitleDictionary:v16];

  return v20;
}

+ (id)_currentNoteSortType:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [MEMORY[0x1E69B7A88] currentNoteListSortType];

  return [v3 numberWithInteger:v4];
}

+ (void)_setNoteSortType:(id)a3 withSpecifier:(id)a4
{
  v4 = a3;
  objc_opt_class();
  v6 = ICCheckedDynamicCast();

  v5 = v6;
  if (v6)
  {
    [MEMORY[0x1E69B7A88] setCurrentNoteListSortType:{objc_msgSend(v6, "integerValue")}];
    v5 = v6;
  }
}

+ (id)_dateHeadersSpecifier
{
  v3 = __ICLocalizedFrameworkStringWithDefaultValue_impl(@"NOTE_DEFAULT_DATEHEADERSTYPE", @"Group Notes By Date", @"Localizable", 1);
  v4 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:v3 target:a1 set:sel__setDateHeadersType_withSpecifier_ get:sel__currentDateHeadersOn_ detail:0 cell:6 edit:0];
  [v4 setIdentifier:*MEMORY[0x1E69B79E8]];
  [v4 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5820]];
  [v4 setValues:&unk_1F4FC3BE8];

  return v4;
}

+ (id)_currentDateHeadersOn:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [MEMORY[0x1E69B7A50] currentDateHeadersOn];

  return [v3 numberWithBool:v4];
}

+ (void)_setDateHeadersType:(id)a3 withSpecifier:(id)a4
{
  v4 = a3;
  objc_opt_class();
  v7 = ICCheckedDynamicCast();

  v5 = v7;
  if (v7)
  {
    v6 = [v7 BOOLValue];
    [MEMORY[0x1E69B7A50] setDateHeadersOn:v6];
    v5 = v7;
  }
}

@end