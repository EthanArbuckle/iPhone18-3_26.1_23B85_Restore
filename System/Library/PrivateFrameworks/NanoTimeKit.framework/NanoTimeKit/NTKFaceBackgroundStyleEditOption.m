@interface NTKFaceBackgroundStyleEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (unint64_t)backgroundStyle;
@end

@implementation NTKFaceBackgroundStyleEditOption

- (unint64_t)backgroundStyle
{
  v3 = [MEMORY[0x277CBBB70] sharedMonitor];
  v4 = [v3 shouldHideForSensitivity:NTKGossamerUISensitivity()];

  if (v4)
  {
    return 0;
  }

  return [(NTKValueEditOption *)self _value];
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{a3, a4}];
  v5 = [v4 description];

  return v5;
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"EDIT_OPTION_LABEL_FACE_BACKGROUND_STYLE_TINTED";
  if (a3 != 1)
  {
    v4 = 0;
  }

  if (a3)
  {
    return v4;
  }

  else
  {
    return @"EDIT_OPTION_LABEL_FACE_BACKGROUND_STYLE_BLACK";
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (_valueToFaceBundleStringDict_onceToken != -1)
  {
    [NTKFaceBackgroundStyleEditOption _valueToFaceBundleStringDict];
  }

  v3 = _valueToFaceBundleStringDict_valueToFaceBundleString;

  return v3;
}

void __64__NTKFaceBackgroundStyleEditOption__valueToFaceBundleStringDict__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2841819F0;
  v2[1] = &unk_284181A08;
  v3[0] = @"style 1";
  v3[1] = @"style 2";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = _valueToFaceBundleStringDict_valueToFaceBundleString;
  _valueToFaceBundleStringDict_valueToFaceBundleString = v0;
}

@end