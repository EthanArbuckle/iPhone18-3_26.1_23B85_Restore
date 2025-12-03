@interface CRKClassKitColorAndMascotUtility
+ (BOOL)setColor:(unint64_t)color forClass:(id)class error:(id *)error;
+ (BOOL)setMascot:(unint64_t)mascot forClass:(id)class error:(id *)error;
+ (id)classThemeColors;
+ (id)colorIdentifierForColorType:(unint64_t)type;
+ (id)colorTypesByColorIdentifier;
+ (id)mascotIdentifierForMascotType:(unint64_t)type;
+ (id)mascotTypesByMascotIdentifier;
+ (unint64_t)classColorFromClassName:(id)name;
+ (unint64_t)colorForClass:(id)class;
+ (unint64_t)colorTypeForColorIdentifier:(id)identifier;
+ (unint64_t)mascotForClass:(id)class;
+ (unint64_t)mascotTypeForMascotIdentifier:(id)identifier;
@end

@implementation CRKClassKitColorAndMascotUtility

+ (unint64_t)mascotForClass:(id)class
{
  classCopy = class;
  v5 = [[CRKClassKitIconID alloc] initWithClass:classCopy];

  mascotIdentifier = [(CRKClassKitIconID *)v5 mascotIdentifier];

  v7 = [self mascotTypeForMascotIdentifier:mascotIdentifier];
  return v7;
}

+ (BOOL)setMascot:(unint64_t)mascot forClass:(id)class error:(id *)error
{
  classCopy = class;
  v9 = [self mascotIdentifierForMascotType:mascot];
  if (v9)
  {
    v10 = [[CRKClassKitIconID alloc] initWithClass:classCopy];
    [(CRKClassKitIconID *)v10 setMascotIdentifier:v9];
    stringValue = [(CRKClassKitIconID *)v10 stringValue];
    [classCopy setIconID:stringValue];
  }

  else if (error)
  {
    *error = CRKErrorWithCodeAndUserInfo(2, &unk_2856723D8);
  }

  return v9 != 0;
}

+ (unint64_t)mascotTypeForMascotIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    mascotTypesByMascotIdentifier = [self mascotTypesByMascotIdentifier];
    v6 = [mascotTypesByMascotIdentifier objectForKeyedSubscript:identifierCopy];

    if (v6)
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      v9 = _CRKLogASM_10();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CRKClassKitColorAndMascotUtility *)identifierCopy mascotTypeForMascotIdentifier:v9];
      }

      integerValue = [self defaultMascot];
    }

    defaultMascot = integerValue;
  }

  else
  {
    defaultMascot = [self defaultMascot];
  }

  return defaultMascot;
}

+ (id)mascotIdentifierForMascotType:(unint64_t)type
{
  mascotTypesByMascotIdentifier = [self mascotTypesByMascotIdentifier];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v6 = [mascotTypesByMascotIdentifier allKeysForObject:v5];

  firstObject = [v6 firstObject];

  return firstObject;
}

+ (id)mascotTypesByMascotIdentifier
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__CRKClassKitColorAndMascotUtility_mascotTypesByMascotIdentifier__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = self;
  if (mascotTypesByMascotIdentifier_onceToken != -1)
  {
    dispatch_once(&mascotTypesByMascotIdentifier_onceToken, v4);
  }

  v2 = mascotTypesByMascotIdentifier_mascotTypesByIconIdentifier;

  return v2;
}

void __65__CRKClassKitColorAndMascotUtility_mascotTypesByMascotIdentifier__block_invoke(uint64_t a1)
{
  v2 = mascotTypesByMascotIdentifier_mascotTypesByIconIdentifier;
  mascotTypesByMascotIdentifier_mascotTypesByIconIdentifier = &unk_285672400;

  v3 = MEMORY[0x277CBEB98];
  v4 = [&unk_285672400 allKeys];
  v9 = [v3 setWithArray:v4];

  v5 = MEMORY[0x277CBEB98];
  v6 = [&unk_285672400 allValues];
  v7 = [v5 setWithArray:v6];

  v8 = [v9 count];
  if (v8 != [v7 count])
  {
    __65__CRKClassKitColorAndMascotUtility_mascotTypesByMascotIdentifier__block_invoke_cold_1(a1);
  }
}

+ (unint64_t)colorForClass:(id)class
{
  classCopy = class;
  v5 = [[CRKClassKitIconID alloc] initWithClass:classCopy];
  colorIdentifier = [(CRKClassKitIconID *)v5 colorIdentifier];

  if (colorIdentifier)
  {
    v7 = [self colorTypeForColorIdentifier:colorIdentifier];
  }

  else
  {
    className = [classCopy className];
    v7 = [self classColorFromClassName:className];
  }

  return v7;
}

+ (BOOL)setColor:(unint64_t)color forClass:(id)class error:(id *)error
{
  classCopy = class;
  v9 = [self colorIdentifierForColorType:color];
  if (v9)
  {
    v10 = [[CRKClassKitIconID alloc] initWithClass:classCopy];
    [(CRKClassKitIconID *)v10 setColorIdentifier:v9];
    stringValue = [(CRKClassKitIconID *)v10 stringValue];
    [classCopy setIconID:stringValue];
  }

  else if (error)
  {
    *error = CRKErrorWithCodeAndUserInfo(2, &unk_285672428);
  }

  return v9 != 0;
}

+ (unint64_t)colorTypeForColorIdentifier:(id)identifier
{
  identifierCopy = identifier;
  colorTypesByColorIdentifier = [self colorTypesByColorIdentifier];
  v6 = [colorTypesByColorIdentifier objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    v8 = _CRKLogASM_10();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CRKClassKitColorAndMascotUtility *)identifierCopy colorTypeForColorIdentifier:v8];
    }

    integerValue = 4;
  }

  return integerValue;
}

+ (id)colorIdentifierForColorType:(unint64_t)type
{
  colorTypesByColorIdentifier = [self colorTypesByColorIdentifier];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v6 = [colorTypesByColorIdentifier allKeysForObject:v5];

  firstObject = [v6 firstObject];

  return firstObject;
}

+ (id)colorTypesByColorIdentifier
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__CRKClassKitColorAndMascotUtility_colorTypesByColorIdentifier__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = self;
  if (colorTypesByColorIdentifier_onceToken != -1)
  {
    dispatch_once(&colorTypesByColorIdentifier_onceToken, v4);
  }

  v2 = colorTypesByColorIdentifier_colorTypesByColorIdentifier;

  return v2;
}

void __63__CRKClassKitColorAndMascotUtility_colorTypesByColorIdentifier__block_invoke(uint64_t a1)
{
  v2 = colorTypesByColorIdentifier_colorTypesByColorIdentifier;
  colorTypesByColorIdentifier_colorTypesByColorIdentifier = &unk_285672450;

  v3 = MEMORY[0x277CBEB98];
  v4 = [&unk_285672450 allKeys];
  v9 = [v3 setWithArray:v4];

  v5 = MEMORY[0x277CBEB98];
  v6 = [&unk_285672450 allValues];
  v7 = [v5 setWithArray:v6];

  v8 = [v9 count];
  if (v8 != [v7 count])
  {
    __63__CRKClassKitColorAndMascotUtility_colorTypesByColorIdentifier__block_invoke_cold_1(a1);
  }
}

+ (unint64_t)classColorFromClassName:(id)name
{
  nameCopy = name;
  classThemeColors = [self classThemeColors];
  v6 = classThemeColors;
  if (nameCopy)
  {
    v7 = [classThemeColors objectAtIndexedSubscript:{+[CRKASMHasher asmHashForString:maximumExclusive:](CRKASMHasher, "asmHashForString:maximumExclusive:", nameCopy, objc_msgSend(classThemeColors, "count"))}];
    integerValue = [v7 integerValue];
  }

  else
  {
    v9 = _CRKLogASM_10();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CRKClassKitColorAndMascotUtility classColorFromClassName:v9];
    }

    integerValue = 8;
  }

  return integerValue;
}

+ (id)classThemeColors
{
  if (classThemeColors_onceToken != -1)
  {
    +[CRKClassKitColorAndMascotUtility classThemeColors];
  }

  v3 = classThemeColors_classThemeColors;

  return v3;
}

void __52__CRKClassKitColorAndMascotUtility_classThemeColors__block_invoke()
{
  v0 = classThemeColors_classThemeColors;
  classThemeColors_classThemeColors = &unk_2856728F8;
}

+ (void)mascotTypeForMascotIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Unknown mascot identifier: %{public}@", &v2, 0xCu);
}

void __65__CRKClassKitColorAndMascotUtility_mascotTypesByMascotIdentifier__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"CRKClassKitColorAndMascotUtility.m" lineNumber:85 description:@"Multiple icon identifiers map to the same mascot type"];
}

+ (void)colorTypeForColorIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Unknown color identifier: %{public}@", &v2, 0xCu);
}

void __63__CRKClassKitColorAndMascotUtility_colorTypesByColorIdentifier__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"CRKClassKitColorAndMascotUtility.m" lineNumber:149 description:@"Multiple color identifiers map to the same color type"];
}

@end