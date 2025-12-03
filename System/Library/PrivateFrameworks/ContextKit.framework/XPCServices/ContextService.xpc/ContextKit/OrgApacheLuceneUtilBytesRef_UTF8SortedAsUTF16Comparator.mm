@interface OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator

- (int)compareWithId:(id)id withId:(id)withId
{
  if (!id || !withId)
  {
LABEL_32:
    JreThrowNullPointerException();
  }

  v4 = *(id + 1);
  v5 = *(withId + 1);
  v6 = *(id + 5);
  v7 = *(id + 4);
  v8 = *(withId + 4);
  if (v6 >= *(withId + 5))
  {
    v6 = *(withId + 5);
  }

  v9 = v6 + v7;
  if (v7 > v9)
  {
    v9 = *(id + 4);
  }

  v10 = v9;
  do
  {
    if (v10 == v7)
    {
      return *(id + 5) - *(withId + 5);
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    v11 = *(v4 + 8);
    if (v7 < 0 || v7 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v7);
    }

    if (!v5)
    {
      goto LABEL_32;
    }

    v12 = *(v4 + 12 + v7);
    v13 = *(v5 + 8);
    if ((v8 & 0x80000000) != 0 || v8 >= v13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, v8);
    }

    v14 = *(v5 + 12 + v8);
    ++v7;
    v8 = (v8 + 1);
  }

  while (v12 == v14);
  if ((v12 & 0xFE) == 0xEE)
  {
    v16 = v12 + 14;
  }

  else
  {
    v16 = v12;
  }

  if ((v14 & 0xFE) == 0xEE)
  {
    v17 = v14 + 14;
  }

  else
  {
    v17 = v14;
  }

  if (v14 < 0xEE)
  {
    v16 = v12;
    v17 = v14;
  }

  if (v12 >= 0xEE)
  {
    v14 = v17;
  }

  else
  {
    v16 = v12;
  }

  return v16 - v14;
}

@end