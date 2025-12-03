@interface SGContactSuggestionHelpers
+ (id)formattedStringForPhone:(id)phone;
+ (id)retrieveContactStore;
@end

@implementation SGContactSuggestionHelpers

+ (id)formattedStringForPhone:(id)phone
{
  if (phone)
  {
    v3 = MEMORY[0x1E695CF50];
    phoneCopy = phone;
    v5 = [[v3 alloc] initWithStringValue:phoneCopy];

    formattedStringValue = [v5 formattedStringValue];
  }

  else
  {
    formattedStringValue = 0;
  }

  return formattedStringValue;
}

+ (id)retrieveContactStore
{
  v2 = objc_alloc(MEMORY[0x1E695CE18]);
  v3 = objc_opt_new();
  [v3 setIncludeSuggestedContacts:1];
  v4 = [v2 initWithConfiguration:v3];

  return v4;
}

@end