@interface NSValueTransformer(IntentsFoundation)
+ (_IFValueTransformer)if_transformerUsingForwardTransformation:()IntentsFoundation reverseTransformation:;
@end

@implementation NSValueTransformer(IntentsFoundation)

+ (_IFValueTransformer)if_transformerUsingForwardTransformation:()IntentsFoundation reverseTransformation:
{
  v5 = a4;
  v6 = a3;
  v7 = [[_IFValueTransformer alloc] initWithForwardTransformation:v6 reverseTransformation:v5];

  return v7;
}

@end