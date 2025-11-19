@interface EBReference
+ (id)edReferenceFromXlRef:(const XlRef *)a3;
@end

@implementation EBReference

+ (id)edReferenceFromXlRef:(const XlRef *)a3
{
  if (a3)
  {
    v4 = [EDReference referenceWithFirstRow:a3->var0 lastRow:a3->var1 firstColumn:a3->var2 lastColumn:a3->var3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end