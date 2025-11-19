@interface OrgApacheLuceneUtilPackedBulkOperationPacked8
- (void)decodeWithLongArray:(id)a3 withInt:(int)a4 withIntArray:(id)a5 withInt:(int)a6 withInt:(int)a7;
- (void)decodeWithLongArray:(id)a3 withInt:(int)a4 withLongArray:(id)a5 withInt:(int)a6 withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked8

- (void)decodeWithLongArray:(id)a3 withInt:(int)a4 withIntArray:(id)a5 withInt:(int)a6 withInt:(int)a7
{
  if (a7 >= 1)
  {
    if (a3)
    {
      v9 = 0;
      while (1)
      {
        v10 = a4;
        v11 = *(a3 + 2);
        if (a4 < 0 || a4 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, a4);
        }

        if (!a5)
        {
          break;
        }

        ++a4;
        v12 = *(a3 + v10 + 2);
        for (i = 56; i != -8; i -= 8)
        {
          v14 = *(a5 + 2);
          if (a6 < 0 || a6 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, a6);
          }

          *(a5 + a6++ + 3) = (v12 >> (i & 0x38));
        }

        if (++v9 == a7)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

- (void)decodeWithLongArray:(id)a3 withInt:(int)a4 withLongArray:(id)a5 withInt:(int)a6 withInt:(int)a7
{
  if (a7 >= 1)
  {
    if (a3)
    {
      v9 = 0;
      while (1)
      {
        v10 = a4;
        v11 = *(a3 + 2);
        if (a4 < 0 || a4 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, a4);
        }

        if (!a5)
        {
          break;
        }

        ++a4;
        v12 = *(a3 + v10 + 2);
        for (i = 56; i != -8; i -= 8)
        {
          v14 = *(a5 + 2);
          if (a6 < 0 || a6 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, a6);
          }

          *(a5 + a6++ + 2) = (v12 >> (i & 0x38));
        }

        if (++v9 == a7)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

@end