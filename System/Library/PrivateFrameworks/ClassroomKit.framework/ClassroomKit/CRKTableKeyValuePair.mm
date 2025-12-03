@interface CRKTableKeyValuePair
+ (id)pairWithKey:(id)key value:(id)value;
@end

@implementation CRKTableKeyValuePair

+ (id)pairWithKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v7 = [(CRKKeyValuePair *)[CRKTableKeyValuePair alloc] initWithKey:keyCopy value:valueCopy];

  return v7;
}

@end