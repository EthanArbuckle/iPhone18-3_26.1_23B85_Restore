@interface OrgApacheLuceneUtilAutomatonByteRunAutomaton
- (BOOL)runWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilAutomatonByteRunAutomaton

- (BOOL)runWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  initial = self->super.initial_;
  if (withInt + int <= int)
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

  if (!array)
  {
    goto LABEL_16;
  }

  intCopy = int;
  v9 = withInt + int;
  v10 = array + int;
  while (1)
  {
    v11 = *(array + 2);
    if (intCopy < 0 || intCopy >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, intCopy);
    }

    v12 = [(OrgApacheLuceneUtilAutomatonRunAutomaton *)self stepWithInt:initial withInt:v10[12]];
    if (v12 == -1)
    {
      break;
    }

    initial = v12;
    ++intCopy;
    ++v10;
    if (v9 == intCopy)
    {
      goto LABEL_10;
    }
  }

  v15 = 0;
  return v15 & 1;
}

@end