@interface CCItemField
- (id)stringValueTrimmingWhitespace;
@end

@implementation CCItemField

- (id)stringValueTrimmingWhitespace
{
  stringValue = [(CCItemField *)self stringValue];
  v3 = +[NSCharacterSet whitespaceCharacterSet];
  v4 = [stringValue stringByTrimmingCharactersInSet:v3];

  return v4;
}

@end