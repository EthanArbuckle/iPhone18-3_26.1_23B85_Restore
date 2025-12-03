@interface OrgApacheLuceneAnalysisUtilCharacterUtils_Java5CharacterUtils
- (BOOL)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(id)buffer withJavaIoReader:(id)reader withInt:(int)int;
- (int)codePointCountWithJavaLangCharSequence:(id)sequence;
@end

@implementation OrgApacheLuceneAnalysisUtilCharacterUtils_Java5CharacterUtils

- (BOOL)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(id)buffer withJavaIoReader:(id)reader withInt:(int)int
{
  if (int < 2 || (v7 = *(buffer + 2), *(v7 + 8) < int))
  {
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(@"numChars must be >= 2 and <= the buffer size");
    objc_exception_throw(v15);
  }

  *(buffer + 6) = 0;
  v8 = *(buffer + 4);
  if (*(buffer + 4))
  {
    v9 = *(v7 + 8);
    if (v9 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, 0);
    }

    *(v7 + 12) = v8;
    *(buffer + 4) = 0;
    v8 = 1;
  }

  v10 = OrgApacheLuceneAnalysisUtilCharacterUtils_readFullyWithJavaIoReader_withCharArray_withInt_withInt_(reader, v7, v8, int - v8) + v8;
  *(buffer + 7) = v10;
  if (v10 >= int)
  {
    v11 = *(v7 + 8);
    if (v10 > v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, (v10 - 1));
    }

    if (JavaLangCharacter_isHighSurrogateWithChar_(*(v7 + 12 + 2 * (v10 - 1))))
    {
      v12 = *(buffer + 7) - 1;
      *(buffer + 7) = v12;
      v13 = *(v7 + 8);
      if (v12 < 0 || v12 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v12);
      }

      *(buffer + 4) = *(v7 + 12 + 2 * v12);
    }
  }

  return v10 == int;
}

- (int)codePointCountWithJavaLangCharSequence:(id)sequence
{
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  v4 = [sequence length];

  return JavaLangCharacter_codePointCountWithJavaLangCharSequence_withInt_withInt_(sequence, 0, v4);
}

@end