@interface IPiOSABNamePreferenceInfoProvider
+ (id)canonicalKeyToValueIdentifierToNumericValueMap;
+ (id)canonicalNameToNativeKeyName;
+ (id)nativeKeyNameToCanonicalKeyName;
+ (id)valueIdentifierToValueMapFromCanonicalKey:(id)a3;
+ (id)valueToValueIdentifierMapFromCanonicalKey:(id)a3;
@end

@implementation IPiOSABNamePreferenceInfoProvider

+ (id)nativeKeyNameToCanonicalKeyName
{
  if (nativeKeyNameToCanonicalKeyName_onceToken != -1)
  {
    +[IPiOSABNamePreferenceInfoProvider nativeKeyNameToCanonicalKeyName];
  }

  v3 = nativeKeyNameToCanonicalKeyName_sMapping;

  return v3;
}

void __68__IPiOSABNamePreferenceInfoProvider_nativeKeyNameToCanonicalKeyName__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"personNameOrdering";
  v3[1] = @"personShortNameFormat";
  v4[0] = @"nameOrder";
  v4[1] = @"shortNameFormat";
  v3[2] = @"personShortNamePreferNicknames";
  v3[3] = @"personShortNameFormatEnabled";
  v4[2] = @"preferNicknames";
  v4[3] = @"shortNameEnabled";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = nativeKeyNameToCanonicalKeyName_sMapping;
  nativeKeyNameToCanonicalKeyName_sMapping = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)canonicalNameToNativeKeyName
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__IPiOSABNamePreferenceInfoProvider_canonicalNameToNativeKeyName__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (canonicalNameToNativeKeyName_onceToken != -1)
  {
    dispatch_once(&canonicalNameToNativeKeyName_onceToken, block);
  }

  v2 = canonicalNameToNativeKeyName_sMapping;

  return v2;
}

void __65__IPiOSABNamePreferenceInfoProvider_canonicalNameToNativeKeyName__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) nativeKeyNameToCanonicalKeyName];
  v1 = [v3 invertedDictionary];
  v2 = canonicalNameToNativeKeyName_sMapping;
  canonicalNameToNativeKeyName_sMapping = v1;
}

+ (id)valueIdentifierToValueMapFromCanonicalKey:(id)a3
{
  v4 = a3;
  v5 = [a1 canonicalKeyToValueIdentifierToNumericValueMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

+ (id)valueToValueIdentifierMapFromCanonicalKey:(id)a3
{
  v4 = a3;
  v5 = [a1 canonicalKeyToValueIdentifierToNumericValueMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 invertedDictionary];

  return v7;
}

+ (id)canonicalKeyToValueIdentifierToNumericValueMap
{
  if (canonicalKeyToValueIdentifierToNumericValueMap_onceToken != -1)
  {
    +[IPiOSABNamePreferenceInfoProvider canonicalKeyToValueIdentifierToNumericValueMap];
  }

  v3 = canonicalKeyToValueIdentifierToNumericValueMap_sMapping;

  return v3;
}

void __83__IPiOSABNamePreferenceInfoProvider_canonicalKeyToValueIdentifierToNumericValueMap__block_invoke()
{
  v16[4] = *MEMORY[0x277D85DE8];
  v15[0] = @"nameOrder";
  v13[0] = @"givenFirst";
  v13[1] = @"familyFirst";
  v14[0] = &unk_2841A2410;
  v14[1] = &unk_2841A2428;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v0;
  v15[1] = @"shortNameFormat";
  v11[0] = @"givenNameFamilyInitial";
  v11[1] = @"familyNameGivenInitial";
  v12[0] = &unk_2841A2410;
  v12[1] = &unk_2841A2428;
  v11[2] = @"givenOnly";
  v11[3] = @"familyOnly";
  v12[2] = &unk_2841A2440;
  v12[3] = &unk_2841A2458;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v16[1] = v1;
  v15[2] = @"preferNicknames";
  v9[0] = @"preferNicknamesEnabled";
  v9[1] = @"preferNicknamesDisabled";
  v10[0] = &unk_2841A2428;
  v10[1] = &unk_2841A2410;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v16[2] = v2;
  v15[3] = @"shortNameEnabled";
  v7[0] = @"shortNamesEnabled";
  v7[1] = @"shortNamesDisabled";
  v8[0] = &unk_2841A2428;
  v8[1] = &unk_2841A2410;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v16[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v5 = canonicalKeyToValueIdentifierToNumericValueMap_sMapping;
  canonicalKeyToValueIdentifierToNumericValueMap_sMapping = v4;

  v6 = *MEMORY[0x277D85DE8];
}

@end