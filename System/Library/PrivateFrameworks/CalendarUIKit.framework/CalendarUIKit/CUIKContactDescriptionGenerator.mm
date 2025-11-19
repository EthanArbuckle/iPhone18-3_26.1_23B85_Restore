@interface CUIKContactDescriptionGenerator
+ (id)CUIKLabeledDisplayStringForContact:(id)a3 label:(id)a4;
+ (id)CUIKLabeledDisplayStringForContact:(id)a3 label:(id)a4 isMe:(BOOL)a5;
@end

@implementation CUIKContactDescriptionGenerator

+ (id)CUIKLabeledDisplayStringForContact:(id)a3 label:(id)a4
{
  v6 = MEMORY[0x1E6992F50];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultProvider];
  v10 = [v8 identifier];
  v11 = [v9 contactIdentifierIsMe:v10];

  v12 = [a1 CUIKLabeledDisplayStringForContact:v8 label:v7 isMe:v11];

  return v12;
}

+ (id)CUIKLabeledDisplayStringForContact:(id)a3 label:(id)a4 isMe:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [MEMORY[0x1E695CEE0] localizedStringForLabel:a4];
  v9 = [v8 localizedCapitalizedString];

  if (v5)
  {
    if (v9)
    {
      v10 = v9;
      goto LABEL_13;
    }

    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"My Address" value:&stru_1F4AA8958 table:0];
  }

  else
  {
    v11 = [MEMORY[0x1E695CD80] stringFromContact:v7 style:0];
    if ([v7 contactType] != 1)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v15 = v14;
      if (v9)
      {
        v16 = [v14 localizedStringForKey:@"%@’s %@" value:&stru_1F4AA8958 table:0];
        [v13 localizedStringWithFormat:v16, v11, v9];
      }

      else
      {
        v16 = [v14 localizedStringForKey:@"%@’s address" value:&stru_1F4AA8958 table:0];
        [v13 localizedStringWithFormat:v16, v11, v18];
      }
      v10 = ;

      goto LABEL_12;
    }

    v12 = v11;
  }

  v10 = v12;
LABEL_12:

LABEL_13:

  return v10;
}

@end