@interface CUIKContactDescriptionGenerator
+ (id)CUIKLabeledDisplayStringForContact:(id)contact label:(id)label;
+ (id)CUIKLabeledDisplayStringForContact:(id)contact label:(id)label isMe:(BOOL)me;
@end

@implementation CUIKContactDescriptionGenerator

+ (id)CUIKLabeledDisplayStringForContact:(id)contact label:(id)label
{
  v6 = MEMORY[0x1E6992F50];
  labelCopy = label;
  contactCopy = contact;
  defaultProvider = [v6 defaultProvider];
  identifier = [contactCopy identifier];
  v11 = [defaultProvider contactIdentifierIsMe:identifier];

  v12 = [self CUIKLabeledDisplayStringForContact:contactCopy label:labelCopy isMe:v11];

  return v12;
}

+ (id)CUIKLabeledDisplayStringForContact:(id)contact label:(id)label isMe:(BOOL)me
{
  meCopy = me;
  contactCopy = contact;
  v8 = [MEMORY[0x1E695CEE0] localizedStringForLabel:label];
  localizedCapitalizedString = [v8 localizedCapitalizedString];

  if (meCopy)
  {
    if (localizedCapitalizedString)
    {
      v10 = localizedCapitalizedString;
      goto LABEL_13;
    }

    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"My Address" value:&stru_1F4AA8958 table:0];
  }

  else
  {
    v11 = [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0];
    if ([contactCopy contactType] != 1)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v15 = v14;
      if (localizedCapitalizedString)
      {
        v16 = [v14 localizedStringForKey:@"%@’s %@" value:&stru_1F4AA8958 table:0];
        [v13 localizedStringWithFormat:v16, v11, localizedCapitalizedString];
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