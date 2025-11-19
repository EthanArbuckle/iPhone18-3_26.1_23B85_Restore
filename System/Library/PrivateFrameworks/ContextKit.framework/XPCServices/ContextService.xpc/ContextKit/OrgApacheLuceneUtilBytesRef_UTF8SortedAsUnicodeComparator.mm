@interface OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator
- (int)compareWithId:(id)a3 withId:(id)a4;
@end

@implementation OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator

- (int)compareWithId:(id)a3 withId:(id)a4
{
  if (!a3 || !a4)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v6 = *(a3 + 1);
  v7 = *(a4 + 1);
  v8 = *(a3 + 4);
  v9 = *(a4 + 4);
  v10 = JavaLangMath_minWithInt_withInt_(*(a3 + 5), *(a4 + 5));
  v11 = v10 + v8;
  if (v8 > v10 + v8)
  {
    v11 = v8;
  }

  v12 = v11;
  while (v12 != v8)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v13 = *(v6 + 8);
    if (v8 < 0 || v8 >= v13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, v8);
    }

    if (!v7)
    {
      goto LABEL_18;
    }

    v14 = *(v6 + 12 + v8);
    v15 = *(v7 + 8);
    if ((v9 & 0x80000000) != 0 || v9 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v9);
    }

    v16 = *(v7 + 12 + v9);
    ++v8;
    v9 = (v9 + 1);
    result = v14 - v16;
    if (v14 != v16)
    {
      return result;
    }
  }

  return *(a3 + 5) - *(a4 + 5);
}

@end