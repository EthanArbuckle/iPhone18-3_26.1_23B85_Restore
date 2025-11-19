@interface OrgApacheLuceneUtilAutomatonByteRunAutomaton
- (BOOL)runWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
@end

@implementation OrgApacheLuceneUtilAutomatonByteRunAutomaton

- (BOOL)runWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  initial = self->super.initial_;
  if (a5 + a4 <= a4)
  {
LABEL_10:
    accept = self->super.accept_;
    if (accept)
    {
      size = accept->super.size_;
      if ((initial & 0x80000000) != 0 || initial >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, initial);
      }

      v15 = *(&accept->super.size_ + initial + 4);
      return v15 & 1;
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  v8 = a4;
  v9 = a5 + a4;
  v10 = a3 + a4;
  while (1)
  {
    v11 = *(a3 + 2);
    if (v8 < 0 || v8 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v8);
    }

    v12 = [(OrgApacheLuceneUtilAutomatonRunAutomaton *)self stepWithInt:initial withInt:v10[12]];
    if (v12 == -1)
    {
      break;
    }

    initial = v12;
    ++v8;
    ++v10;
    if (v9 == v8)
    {
      goto LABEL_10;
    }
  }

  v15 = 0;
  return v15 & 1;
}

@end