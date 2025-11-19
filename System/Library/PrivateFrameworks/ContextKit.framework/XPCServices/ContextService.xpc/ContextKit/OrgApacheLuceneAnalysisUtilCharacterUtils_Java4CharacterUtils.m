@interface OrgApacheLuceneAnalysisUtilCharacterUtils_Java4CharacterUtils
- (BOOL)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(id)a3 withJavaIoReader:(id)a4 withInt:(int)a5;
- (int)codePointCountWithJavaLangCharSequence:(id)a3;
- (int)offsetByCodePointsWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5 withInt:(int)a6 withInt:(int)a7;
@end

@implementation OrgApacheLuceneAnalysisUtilCharacterUtils_Java4CharacterUtils

- (BOOL)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(id)a3 withJavaIoReader:(id)a4 withInt:(int)a5
{
  if (a5 < 1 || (v7 = *(a3 + 2), *(v7 + 8) < a5))
  {
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(@"numChars must be >= 1 and <= the buffer size");
    objc_exception_throw(v10);
  }

  *(a3 + 6) = 0;
  FullyWithJavaIoReader_withCharArray_withInt_withInt = OrgApacheLuceneAnalysisUtilCharacterUtils_readFullyWithJavaIoReader_withCharArray_withInt_withInt_(a4, v7, 0, a5);
  *(a3 + 7) = FullyWithJavaIoReader_withCharArray_withInt_withInt;
  *(a3 + 4) = 0;
  return FullyWithJavaIoReader_withCharArray_withInt_withInt == a5;
}

- (int)codePointCountWithJavaLangCharSequence:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 length];
}

- (int)offsetByCodePointsWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5 withInt:(int)a6 withInt:(int)a7
{
  result = a7 + a6;
  if (a7 + a6 < 0 || result > a5)
  {
    v8 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v8);
  }

  return result;
}

@end