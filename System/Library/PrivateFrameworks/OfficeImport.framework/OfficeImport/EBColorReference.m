@interface EBColorReference
+ (id)edColorReferenceFromXlColorIndex:(unsigned int)a3 edResources:(id)a4;
@end

@implementation EBColorReference

+ (id)edColorReferenceFromXlColorIndex:(unsigned int)a3 edResources:(id)a4
{
  v4 = [EDColorReference colorReferenceWithColorIndex:a3 resources:a4];

  return v4;
}

@end