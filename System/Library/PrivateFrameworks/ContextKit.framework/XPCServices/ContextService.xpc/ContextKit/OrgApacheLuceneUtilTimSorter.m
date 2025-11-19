@interface OrgApacheLuceneUtilTimSorter
+ (int)minRunWithInt:(int)a3;
- (int)nextRun;
- (int)runBaseWithInt:(int)a3;
- (int)runEndWithInt:(int)a3;
- (int)runLenWithInt:(int)a3;
- (void)dealloc;
- (void)ensureInvariants;
- (void)exhaustStack;
- (void)pushRunLenWithInt:(int)a3;
- (void)resetWithInt:(int)a3 withInt:(int)a4;
- (void)setRunEndWithInt:(int)a3 withInt:(int)a4;
@end

@implementation OrgApacheLuceneUtilTimSorter

+ (int)minRunWithInt:(int)a3
{
  if (a3 < 64)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = a3;
    do
    {
      v3 |= v4 & 1;
      a3 = v4 >> 1;
      v5 = v4 > 0x7F;
      v4 >>= 1;
    }

    while (v5);
  }

  return v3 + a3;
}

- (int)runLenWithInt:(int)a3
{
  runEnds = self->runEnds_;
  if (!runEnds)
  {
    JreThrowNullPointerException();
  }

  v4 = (self->stackSize_ - a3);
  size = runEnds->super.size_;
  if ((v4 & 0x80000000) != 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v6 = runEnds;
  v7 = *(&runEnds->super.size_ + v4 + 1);
  v8 = (v4 - 1);
  if (v8 < 0 || v8 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v8);
  }

  return v7 - *(&v6->super.size_ + v8 + 1);
}

- (int)runBaseWithInt:(int)a3
{
  runEnds = self->runEnds_;
  if (!runEnds)
  {
    JreThrowNullPointerException();
  }

  stackSize = self->stackSize_;
  size = runEnds->super.size_;
  v6 = stackSize + ~a3;
  if (v6 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (stackSize + ~a3));
  }

  return *(&runEnds->super.size_ + v6 + 1);
}

- (int)runEndWithInt:(int)a3
{
  runEnds = self->runEnds_;
  if (!runEnds)
  {
    JreThrowNullPointerException();
  }

  stackSize = self->stackSize_;
  size = runEnds->super.size_;
  v6 = stackSize - a3;
  if (stackSize - a3 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (stackSize - a3));
  }

  return *(&runEnds->super.size_ + v6 + 1);
}

- (void)setRunEndWithInt:(int)a3 withInt:(int)a4
{
  runEnds = self->runEnds_;
  if (!runEnds)
  {
    JreThrowNullPointerException();
  }

  stackSize = self->stackSize_;
  size = runEnds->super.size_;
  v7 = stackSize - a3;
  if (stackSize - a3 < 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (stackSize - a3));
  }

  *(&runEnds->super.size_ + v7 + 1) = a4;
}

- (void)pushRunLenWithInt:(int)a3
{
  runEnds = self->runEnds_;
  stackSize = self->stackSize_;
  size = runEnds->super.size_;
  if (stackSize < 0 || (v7 = runEnds, stackSize >= size))
  {
    IOSArray_throwOutOfBoundsWithMsg(size, stackSize);
  }

  v8 = *(&runEnds->super.size_ + stackSize + 1);
  v9 = self->stackSize_;
  v10 = v7->super.size_;
  v11 = v9 + 1;
  if (v9 + 1 < 0 || v11 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, (v9 + 1));
  }

  *(&v7->super.size_ + v11 + 1) = v8 + a3;
  ++self->stackSize_;
}

- (int)nextRun
{
  v3 = [(OrgApacheLuceneUtilTimSorter *)self runEndWithInt:0];
  if (v3 == self->to_ - 1)
  {
    return 1;
  }

  v5 = v3;
  v6 = (v3 + 2);
  v7 = [(OrgApacheLuceneUtilTimSorter *)self compareWithInt:v3 withInt:(v3 + 1)];
  to = self->to_;
  if (v7 <= 0)
  {
    while (v6 < to && [(OrgApacheLuceneUtilTimSorter *)self compareWithInt:(v6 - 1) withInt:v6]<= 0)
    {
      v6 = (v6 + 1);
      to = self->to_;
    }
  }

  else
  {
    while (v6 < to && [(OrgApacheLuceneUtilTimSorter *)self compareWithInt:(v6 - 1) withInt:v6]>= 1)
    {
      v6 = (v6 + 1);
      to = self->to_;
    }

    [(OrgApacheLuceneUtilSorter *)self reverseWithInt:v5 withInt:v6];
  }

  v9 = JavaLangMath_minWithInt_withInt_(self->to_, self->minRun_ + v5);
  v10 = JavaLangMath_maxWithInt_withInt_(v6, v9);
  [(OrgApacheLuceneUtilSorter *)self binarySortWithInt:v5 withInt:v10 withInt:v6];
  return v10 - v5;
}

- (void)ensureInvariants
{
  while (self->stackSize_ >= 2)
  {
    v3 = [(OrgApacheLuceneUtilTimSorter *)self runLenWithInt:0];
    v4 = [(OrgApacheLuceneUtilTimSorter *)self runLenWithInt:1];
    if (self->stackSize_ > 2 && (v5 = [(OrgApacheLuceneUtilTimSorter *)self runLenWithInt:2], v5 <= v4 + v3))
    {
      v6 = v5 < v3;
    }

    else
    {
      if (v4 > v3)
      {
        return;
      }

      v6 = 0;
    }

    [(OrgApacheLuceneUtilTimSorter *)self mergeAtWithInt:v6];
  }
}

- (void)exhaustStack
{
  if (self->stackSize_ >= 2)
  {
    do
    {
      [(OrgApacheLuceneUtilTimSorter *)self mergeAtWithInt:0];
    }

    while (self->stackSize_ > 1);
  }
}

- (void)resetWithInt:(int)a3 withInt:(int)a4
{
  self->stackSize_ = 0;
  JavaUtilArrays_fillWithIntArray_withInt_(self->runEnds_, 0);
  runEnds = self->runEnds_;
  if (!runEnds)
  {
    JreThrowNullPointerException();
  }

  size = runEnds->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  *(&runEnds->super.size_ + 1) = a3;
  self->to_ = a4;
  v9 = a4 - a3;
  if (a4 - a3 >= 65)
  {
    v10 = 0;
    do
    {
      v10 |= v9 & 1;
      v11 = v9 >> 1;
      v12 = v9 > 0x7F;
      v9 >>= 1;
    }

    while (v12);
    v9 = v10 + v11;
  }

  self->minRun_ = v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilTimSorter;
  [(OrgApacheLuceneUtilTimSorter *)&v3 dealloc];
}

@end