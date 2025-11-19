@interface OrgApacheLuceneAnalysisUtilCharacterUtils_Java5CharacterUtils
- (BOOL)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(id)a3 withJavaIoReader:(id)a4 withInt:(int)a5;
- (int)codePointCountWithJavaLangCharSequence:(id)a3;
@end

@implementation OrgApacheLuceneAnalysisUtilCharacterUtils_Java5CharacterUtils

- (BOOL)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(id)a3 withJavaIoReader:(id)a4 withInt:(int)a5
{
  if (a5 < 2 || (v7 = *(a3 + 2), *(v7 + 8) < a5))
  {
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(@"numChars must be >= 2 and <= the buffer size");
    objc_exception_throw(v15);
  }

  *(a3 + 6) = 0;
  v8 = *(a3 + 4);
  if (*(a3 + 4))
  {
    v9 = *(v7 + 8);
    if (v9 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, 0);
    }

    *(v7 + 12) = v8;
    *(a3 + 4) = 0;
    v8 = 1;
  }

  v10 = OrgApacheLuceneAnalysisUtilCharacterUtils_readFullyWithJavaIoReader_withCharArray_withInt_withInt_(a4, v7, v8, a5 - v8) + v8;
  *(a3 + 7) = v10;
  if (v10 >= a5)
  {
    v11 = *(v7 + 8);
    if (v10 > v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, (v10 - 1));
    }

    if (JavaLangCharacter_isHighSurrogateWithChar_(*(v7 + 12 + 2 * (v10 - 1))))
    {
      v12 = *(a3 + 7) - 1;
      *(a3 + 7) = v12;
      v13 = *(v7 + 8);
      if (v12 < 0 || v12 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v12);
      }

      *(a3 + 4) = *(v7 + 12 + 2 * v12);
    }
  }

  return v10 == a5;
}

- (int)codePointCountWithJavaLangCharSequence:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [a3 length];

  return JavaLangCharacter_codePointCountWithJavaLangCharSequence_withInt_withInt_(a3, 0, v4);
}

@end