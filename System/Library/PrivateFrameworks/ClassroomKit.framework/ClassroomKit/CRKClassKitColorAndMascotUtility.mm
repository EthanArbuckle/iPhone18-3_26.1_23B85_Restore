@interface CRKClassKitColorAndMascotUtility
+ (BOOL)setColor:(unint64_t)a3 forClass:(id)a4 error:(id *)a5;
+ (BOOL)setMascot:(unint64_t)a3 forClass:(id)a4 error:(id *)a5;
+ (id)classThemeColors;
+ (id)colorIdentifierForColorType:(unint64_t)a3;
+ (id)colorTypesByColorIdentifier;
+ (id)mascotIdentifierForMascotType:(unint64_t)a3;
+ (id)mascotTypesByMascotIdentifier;
+ (unint64_t)classColorFromClassName:(id)a3;
+ (unint64_t)colorForClass:(id)a3;
+ (unint64_t)colorTypeForColorIdentifier:(id)a3;
+ (unint64_t)mascotForClass:(id)a3;
+ (unint64_t)mascotTypeForMascotIdentifier:(id)a3;
@end

@implementation CRKClassKitColorAndMascotUtility

+ (unint64_t)mascotForClass:(id)a3
{
  v4 = a3;
  v5 = [[CRKClassKitIconID alloc] initWithClass:v4];

  v6 = [(CRKClassKitIconID *)v5 mascotIdentifier];

  v7 = [a1 mascotTypeForMascotIdentifier:v6];
  return v7;
}

+ (BOOL)setMascot:(unint64_t)a3 forClass:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 mascotIdentifierForMascotType:a3];
  if (v9)
  {
    v10 = [[CRKClassKitIconID alloc] initWithClass:v8];
    [(CRKClassKitIconID *)v10 setMascotIdentifier:v9];
    v11 = [(CRKClassKitIconID *)v10 stringValue];
    [v8 setIconID:v11];
  }

  else if (a5)
  {
    *a5 = CRKErrorWithCodeAndUserInfo(2, &unk_2856723D8);
  }

  return v9 != 0;
}

+ (unint64_t)mascotTypeForMascotIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 mascotTypesByMascotIdentifier];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6)
    {
      v7 = [v6 integerValue];
    }

    else
    {
      v9 = _CRKLogASM_10();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CRKClassKitColorAndMascotUtility *)v4 mascotTypeForMascotIdentifier:v9];
      }

      v7 = [a1 defaultMascot];
    }

    v8 = v7;
  }

  else
  {
    v8 = [a1 defaultMascot];
  }

  return v8;
}

+ (id)mascotIdentifierForMascotType:(unint64_t)a3
{
  v4 = [a1 mascotTypesByMascotIdentifier];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 allKeysForObject:v5];

  v7 = [v6 firstObject];

  return v7;
}

+ (id)mascotTypesByMascotIdentifier
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__CRKClassKitColorAndMascotUtility_mascotTypesByMascotIdentifier__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = a1;
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

+ (unint64_t)colorForClass:(id)a3
{
  v4 = a3;
  v5 = [[CRKClassKitIconID alloc] initWithClass:v4];
  v6 = [(CRKClassKitIconID *)v5 colorIdentifier];

  if (v6)
  {
    v7 = [a1 colorTypeForColorIdentifier:v6];
  }

  else
  {
    v8 = [v4 className];
    v7 = [a1 classColorFromClassName:v8];
  }

  return v7;
}

+ (BOOL)setColor:(unint64_t)a3 forClass:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 colorIdentifierForColorType:a3];
  if (v9)
  {
    v10 = [[CRKClassKitIconID alloc] initWithClass:v8];
    [(CRKClassKitIconID *)v10 setColorIdentifier:v9];
    v11 = [(CRKClassKitIconID *)v10 stringValue];
    [v8 setIconID:v11];
  }

  else if (a5)
  {
    *a5 = CRKErrorWithCodeAndUserInfo(2, &unk_285672428);
  }

  return v9 != 0;
}

+ (unint64_t)colorTypeForColorIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 colorTypesByColorIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v8 = _CRKLogASM_10();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CRKClassKitColorAndMascotUtility *)v4 colorTypeForColorIdentifier:v8];
    }

    v7 = 4;
  }

  return v7;
}

+ (id)colorIdentifierForColorType:(unint64_t)a3
{
  v4 = [a1 colorTypesByColorIdentifier];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 allKeysForObject:v5];

  v7 = [v6 firstObject];

  return v7;
}

+ (id)colorTypesByColorIdentifier
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__CRKClassKitColorAndMascotUtility_colorTypesByColorIdentifier__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = a1;
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

+ (unint64_t)classColorFromClassName:(id)a3
{
  v4 = a3;
  v5 = [a1 classThemeColors];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 objectAtIndexedSubscript:{+[CRKASMHasher asmHashForString:maximumExclusive:](CRKASMHasher, "asmHashForString:maximumExclusive:", v4, objc_msgSend(v5, "count"))}];
    v8 = [v7 integerValue];
  }

  else
  {
    v9 = _CRKLogASM_10();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CRKClassKitColorAndMascotUtility classColorFromClassName:v9];
    }

    v8 = 8;
  }

  return v8;
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