@interface UIFont(CKUtilities)
+ (id)__ck_emphasizedFontFromFont:()CKUtilities;
+ (id)__ck_emphasizedPreferredFontForTextStyle:()CKUtilities;
+ (id)__ck_fontForStyle:()CKUtilities weight:;
+ (id)__ck_monospacedPreferredFontForTextStyle:()CKUtilities;
+ (id)__ck_shortEmphasizedPreferredFontForTextStyle:()CKUtilities;
+ (id)__ck_shortMonospacedPreferredFontForTextStyle:()CKUtilities;
+ (id)__ck_shortPreferredFontForTextStyle:()CKUtilities;
+ (id)__ck_shortPreferredFontForTextStyle:()CKUtilities size:;
- (id)__ck_fontWithWeight:()CKUtilities;
- (uint64_t)__ck_fontScaledByUserPreference;
@end

@implementation UIFont(CKUtilities)

+ (id)__ck_monospacedPreferredFontForTextStyle:()CKUtilities
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69DB900];
  v15[0] = *MEMORY[0x1E69DB908];
  v15[1] = v3;
  v16[0] = &unk_1F04E7950;
  v16[1] = &unk_1F04E7968;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v16 forKeys:v15 count:2];
  v17[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

  v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v5];

  v13 = *MEMORY[0x1E69DB8B0];
  v14 = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v10 = [v8 fontDescriptorByAddingAttributes:v9];

  v11 = [MEMORY[0x1E69DB878] fontWithDescriptor:v10 size:0.0];

  return v11;
}

+ (id)__ck_shortPreferredFontForTextStyle:()CKUtilities
{
  v3 = a3;
  v4 = [objc_opt_class() __ck_shortPreferredFontForTextStyle:v3 size:0.0];

  return v4;
}

+ (id)__ck_shortPreferredFontForTextStyle:()CKUtilities size:
{
  v5 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a4 addingSymbolicTraits:0x8000 options:0];
  v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:a1];

  return v6;
}

+ (id)__ck_shortMonospacedPreferredFontForTextStyle:()CKUtilities
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:0x8000 options:0];
  v4 = *MEMORY[0x1E69DB900];
  v13[0] = *MEMORY[0x1E69DB908];
  v13[1] = v4;
  v14[0] = &unk_1F04E7950;
  v14[1] = &unk_1F04E7968;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v15[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  v11 = *MEMORY[0x1E69DB8B0];
  v12 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v8 = [v3 fontDescriptorByAddingAttributes:v7];

  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];

  return v9;
}

+ (id)__ck_emphasizedPreferredFontForTextStyle:()CKUtilities
{
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:2 options:0];
  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];

  return v4;
}

+ (id)__ck_shortEmphasizedPreferredFontForTextStyle:()CKUtilities
{
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:32770 options:0];
  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];

  return v4;
}

+ (id)__ck_emphasizedFontFromFont:()CKUtilities
{
  v3 = a3;
  v4 = [v3 fontDescriptor];
  v5 = [v4 symbolicTraits];

  v6 = [v3 fontDescriptor];

  v7 = [v6 fontDescriptorWithSymbolicTraits:v5 | 2u];

  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:0.0];

  return v8;
}

+ (id)__ck_fontForStyle:()CKUtilities weight:
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:?];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v2 = [v1 systemFontOfSize:? weight:?];

  return v2;
}

- (uint64_t)__ck_fontScaledByUserPreference
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 defaultBalloonTextFont];
  [v3 pointSize];
  v5 = v4;

  [a1 pointSize];
  v7 = v6 + 13.0 - v5;

  return [a1 fontWithSize:v7];
}

- (id)__ck_fontWithWeight:()CKUtilities
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69DB8F0];
  v10 = *MEMORY[0x1E69DB990];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v11 = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v5 = [a1 fontDescriptor];
  v6 = [v5 fontDescriptorByAddingAttributes:v4];

  v7 = MEMORY[0x1E69DB878];
  [a1 pointSize];
  v8 = [v7 fontWithDescriptor:v6 size:?];

  return v8;
}

@end