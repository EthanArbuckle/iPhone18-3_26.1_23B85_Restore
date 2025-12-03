@interface EBReference
+ (id)edReferenceFromXlRef:(const XlRef *)ref;
@end

@implementation EBReference

+ (id)edReferenceFromXlRef:(const XlRef *)ref
{
  if (ref)
  {
    v4 = [EDReference referenceWithFirstRow:ref->var0 lastRow:ref->var1 firstColumn:ref->var2 lastColumn:ref->var3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end