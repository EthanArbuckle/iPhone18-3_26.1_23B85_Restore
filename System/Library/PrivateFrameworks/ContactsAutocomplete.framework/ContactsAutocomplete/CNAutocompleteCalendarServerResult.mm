@interface CNAutocompleteCalendarServerResult
+ (id)contactResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components identifier:(id)identifier userInfo:(id)info;
@end

@implementation CNAutocompleteCalendarServerResult

+ (id)contactResultWithDisplayName:(id)name value:(id)value nameComponents:(id)components identifier:(id)identifier userInfo:(id)info
{
  infoCopy = info;
  v13 = [self contactResultWithDisplayName:name value:value nameComponents:components identifier:identifier];
  [v13 setUserInfo:infoCopy];

  [v13 setSourceType:64];

  return v13;
}

@end