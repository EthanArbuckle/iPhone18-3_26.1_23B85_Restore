@interface NSString(ECHTMLEntityParser)
- (id)ec_parseHTMLEntity;
@end

@implementation NSString(ECHTMLEntityParser)

- (id)ec_parseHTMLEntity
{
  v3 = 0;
  parseEntity(a1, &v3);
  v1 = v3;

  return v1;
}

@end