@interface NSString
- (id)_ui_stringWithTemplateDictionary:(id)dictionary;
@end

@implementation NSString

- (id)_ui_stringWithTemplateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021404;
  v7[3] = &unk_10004D720;
  v5 = [(NSString *)self mutableCopy];
  v8 = v5;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

@end