@interface SGContactSuggestionHelpers
+ (id)formattedStringForPhone:(id)a3;
+ (id)retrieveContactStore;
@end

@implementation SGContactSuggestionHelpers

+ (id)formattedStringForPhone:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695CF50];
    v4 = a3;
    v5 = [[v3 alloc] initWithStringValue:v4];

    v6 = [v5 formattedStringValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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