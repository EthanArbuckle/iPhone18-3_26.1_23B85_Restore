@interface CDMVocUsoGraphMapper
+ (id)buildAppNameUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8;
+ (id)buildContactTypeUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8;
+ (id)buildDeviceCategoryUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8;
+ (id)buildEmailContactUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8;
+ (id)buildEmergencyPhoneNumberUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8;
+ (id)buildEmergencyPhonePersonUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8;
+ (id)buildPersonRelationshipUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8;
+ (id)buildPhoneContactUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8;
+ (id)buildSettingUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8;
+ (id)emergencyPhoneNumberSemantic;
+ (id)emergencyPhonePersonSemantic;
+ (id)listPositionSemantic;
+ (id)ordinalsSemantic;
+ (id)settingVocLabel;
+ (unique_ptr<siri::ontology::UsoEntitySpan,)buildEntitySpanWithSemantic:(id)a3 withVocLabel:(id)a4 withStartIndex:(unsigned int)a5 withEndIndex:(unsigned int)a6 withTokenCount:(unsigned int)a7;
+ (unique_ptr<siri::ontology::UsoIdentifier,)buildIdentifierWithSemantic:(id)a3 withVocLabel:(id)a4;
@end

@implementation CDMVocUsoGraphMapper

+ (unique_ptr<siri::ontology::UsoEntitySpan,)buildEntitySpanWithSemantic:(id)a3 withVocLabel:(id)a4 withStartIndex:(unsigned int)a5 withEndIndex:(unsigned int)a6 withTokenCount:(unsigned int)a7
{
  v8 = a3;
  v9 = a4;
  _ZNSt3__111make_uniqueB8ne200100IN4siri8ontology13UsoEntitySpanEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS5_EEEEDpOT0_();
}

+ (unique_ptr<siri::ontology::UsoIdentifier,)buildIdentifierWithSemantic:(id)a3 withVocLabel:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 UTF8String];
  appName();
  operator new();
}

+ (id)buildEmergencyPhonePersonUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  operator new();
}

+ (id)buildEmergencyPhoneNumberUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  operator new();
}

+ (id)buildDeviceCategoryUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  operator new();
}

+ (id)buildPersonRelationshipUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  operator new();
}

+ (id)buildSettingUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  operator new();
}

+ (id)buildAppNameUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  operator new();
}

+ (id)buildPhoneContactUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  operator new();
}

+ (id)buildEmailContactUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  operator new();
}

+ (id)buildContactTypeUSOGraphWithIdentifier:(id)a3 withSemantic:(id)a4 withInput:(id)a5 withStartCharIndex:(unsigned int)a6 withEndCharIndex:(unsigned int)a7 withTokenCount:(unsigned int)a8
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  operator new();
}

+ (id)emergencyPhoneNumberSemantic
{
  if (+[CDMVocUsoGraphMapper emergencyPhoneNumberSemantic]::onceToken != -1)
  {
    dispatch_once(&+[CDMVocUsoGraphMapper emergencyPhoneNumberSemantic]::onceToken, &__block_literal_global_189);
  }

  v3 = +[CDMVocUsoGraphMapper emergencyPhoneNumberSemantic]::value;

  return v3;
}

uint64_t __52__CDMVocUsoGraphMapper_emergencyPhoneNumberSemantic__block_invoke()
{
  +[CDMVocUsoGraphMapper emergencyPhoneNumberSemantic]::value = [MEMORY[0x1E695DFD8] setWithObjects:{@"emergencyNumber", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)ordinalsSemantic
{
  if (+[CDMVocUsoGraphMapper ordinalsSemantic]::onceToken != -1)
  {
    dispatch_once(&+[CDMVocUsoGraphMapper ordinalsSemantic]::onceToken, &__block_literal_global_112);
  }

  v3 = +[CDMVocUsoGraphMapper ordinalsSemantic]::value;

  return v3;
}

uint64_t __40__CDMVocUsoGraphMapper_ordinalsSemantic__block_invoke()
{
  +[CDMVocUsoGraphMapper ordinalsSemantic]::value = [MEMORY[0x1E695DFD8] setWithObjects:{@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", @"13", @"14", @"15", @"16", @"17", @"18", @"19", @"20", @"21", @"22", @"23", @"24", @"25", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)listPositionSemantic
{
  if (+[CDMVocUsoGraphMapper listPositionSemantic]::onceToken != -1)
  {
    dispatch_once(&+[CDMVocUsoGraphMapper listPositionSemantic]::onceToken, &__block_literal_global_89);
  }

  v3 = +[CDMVocUsoGraphMapper listPositionSemantic]::value;

  return v3;
}

uint64_t __44__CDMVocUsoGraphMapper_listPositionSemantic__block_invoke()
{
  +[CDMVocUsoGraphMapper listPositionSemantic]::value = [MEMORY[0x1E695DFD8] setWithObjects:{@"current", @"last", @"next", @"previous", @"middle", @"secondToLast", @"thirdToLast", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)emergencyPhonePersonSemantic
{
  if (+[CDMVocUsoGraphMapper emergencyPhonePersonSemantic]::onceToken != -1)
  {
    dispatch_once(&+[CDMVocUsoGraphMapper emergencyPhonePersonSemantic]::onceToken, &__block_literal_global_69);
  }

  v3 = +[CDMVocUsoGraphMapper emergencyPhonePersonSemantic]::value;

  return v3;
}

uint64_t __52__CDMVocUsoGraphMapper_emergencyPhonePersonSemantic__block_invoke()
{
  +[CDMVocUsoGraphMapper emergencyPhonePersonSemantic]::value = [MEMORY[0x1E695DFD8] setWithObjects:{@"emergency contact", @"emergency services", @"suicide prevention center", @"sexual assault crisis center", @"poison control center", @"domestic violence hotline", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)settingVocLabel
{
  if (+[CDMVocUsoGraphMapper settingVocLabel]::onceToken != -1)
  {
    dispatch_once(&+[CDMVocUsoGraphMapper settingVocLabel]::onceToken, &__block_literal_global_9676);
  }

  v3 = +[CDMVocUsoGraphMapper settingVocLabel]::value;

  return v3;
}

uint64_t __39__CDMVocUsoGraphMapper_settingVocLabel__block_invoke()
{
  +[CDMVocUsoGraphMapper settingVocLabel]::value = [MEMORY[0x1E695DFD8] setWithObjects:{@"BOOLSettingName", @"BOOLSettingReference", @"BOOLSettingState", @"BOOLSettingVerb", @"floatSettingState", @"floatSettingName", @"multiSettingName", @"settingGroupName", @"settingIdentifier", 0}];

  return MEMORY[0x1EEE66BB8]();
}

@end