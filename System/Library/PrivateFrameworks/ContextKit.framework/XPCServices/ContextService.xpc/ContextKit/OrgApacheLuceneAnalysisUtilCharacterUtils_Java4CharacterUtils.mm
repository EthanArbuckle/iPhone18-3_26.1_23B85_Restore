@interface OrgApacheLuceneAnalysisUtilCharacterUtils_Java4CharacterUtils
- (BOOL)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(id)buffer withJavaIoReader:(id)reader withInt:(int)int;
- (int)codePointCountWithJavaLangCharSequence:(id)sequence;
- (int)offsetByCodePointsWithCharArray:(id)array withInt:(int)int withInt:(int)withInt withInt:(int)a6 withInt:(int)a7;
@end

@implementation OrgApacheLuceneAnalysisUtilCharacterUtils_Java4CharacterUtils

- (BOOL)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(id)buffer withJavaIoReader:(id)reader withInt:(int)int
{
  if (int < 1 || (v7 = *(buffer + 2), *(v7 + 8) < int))
  {
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(@"numChars must be >= 1 and <= the buffer size");
    objc_exception_throw(v10);
  }

  *(buffer + 6) = 0;
  FullyWithJavaIoReader_withCharArray_withInt_withInt = OrgApacheLuceneAnalysisUtilCharacterUtils_readFullyWithJavaIoReader_withCharArray_withInt_withInt_(reader, v7, 0, int);
  *(buffer + 7) = FullyWithJavaIoReader_withCharArray_withInt_withInt;
  *(buffer + 4) = 0;
  return FullyWithJavaIoReader_withCharArray_withInt_withInt == int;
}

- (int)codePointCountWithJavaLangCharSequence:(id)sequence
{
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  return [sequence length];
}

- (int)offsetByCodePointsWithCharArray:(id)array withInt:(int)int withInt:(int)withInt withInt:(int)a6 withInt:(int)a7
{
  result = a7 + a6;
  if (a7 + a6 < 0 || result > withInt)
  {
    v8 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v8);
  }

  return result;
}

@end