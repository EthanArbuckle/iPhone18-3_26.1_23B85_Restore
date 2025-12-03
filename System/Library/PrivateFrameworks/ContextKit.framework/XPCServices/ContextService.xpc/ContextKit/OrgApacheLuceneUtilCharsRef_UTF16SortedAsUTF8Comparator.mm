@interface OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneUtilCharsRef_UTF16SortedAsUTF8Comparator

- (int)compareWithId:(id)id withId:(id)withId
{
  if (id == withId)
  {
    return 0;
  }

  if (!id || !withId)
  {
LABEL_35:
    JreThrowNullPointerException();
  }

  v6 = *(id + 1);
  v7 = *(withId + 1);
  v8 = *(id + 4);
  v9 = *(withId + 4);
  v10 = JavaLangMath_minWithInt_withInt_(*(id + 5), *(withId + 5));
  v11 = v10 + v8;
  if (v8 > v10 + v8)
  {
    v11 = v8;
  }

  v12 = v11;
  do
  {
    if (v12 == v8)
    {
      return *(id + 5) - *(withId + 5);
    }

    if (!v6)
    {
      goto LABEL_35;
    }

    v13 = *(v6 + 8);
    if (v8 < 0 || v8 >= v13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, v8);
    }

    if (!v7)
    {
      goto LABEL_35;
    }

    v14 = *(v6 + 12 + 2 * v8);
    v15 = *(v7 + 8);
    if ((v9 & 0x80000000) != 0 || v9 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v9);
    }

    v16 = *(v7 + 12 + 2 * v9);
    ++v8;
    v9 = (v9 + 1);
  }

  while (v14 == v16);
  if (v14 >> 13 <= 6)
  {
    v18 = 0x2000;
  }

  else
  {
    v18 = -2048;
  }

  v19 = v18 + v14;
  v20 = v16 + 0x2000;
  if (v16 >= 0xE000)
  {
    v20 = v16 - 2048;
  }

  v21 = v14 >> 11 >= 0x1B && v16 >> 11 >= 0x1B;
  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = v14;
  }

  if (v21)
  {
    LOWORD(v16) = v20;
  }

  return v22 - v16;
}

@end