@interface CCItemField
- (id)stringValueTrimmingWhitespace;
@end

@implementation CCItemField

- (id)stringValueTrimmingWhitespace
{
  v2 = [(CCItemField *)self stringValue];
  v3 = +[NSCharacterSet whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

@end