@interface EBColorReference
+ (id)edColorReferenceFromXlColorIndex:(unsigned int)index edResources:(id)resources;
@end

@implementation EBColorReference

+ (id)edColorReferenceFromXlColorIndex:(unsigned int)index edResources:(id)resources
{
  v4 = [EDColorReference colorReferenceWithColorIndex:index resources:resources];

  return v4;
}

@end