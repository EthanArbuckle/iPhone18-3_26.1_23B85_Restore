@interface OrgApacheLuceneSearchDisiPriorityQueue
- (id)addWithOrgApacheLuceneSearchDisiWrapper:(id)wrapper;
- (id)iterator;
- (id)pop;
- (id)prependWithOrgApacheLuceneSearchDisiWrapper:(id)wrapper withOrgApacheLuceneSearchDisiWrapper:(id)disiWrapper;
- (id)topList;
- (id)updateTop;
- (id)updateTopWithOrgApacheLuceneSearchDisiWrapper:(id)wrapper;
- (void)dealloc;
- (void)downHeapWithInt:(int)int;
@end

@implementation OrgApacheLuceneSearchDisiPriorityQueue

- (void)dealloc
{
  free(self->_heap);
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchDisiPriorityQueue;
  [(OrgApacheLuceneSearchDisiPriorityQueue *)&v3 dealloc];
}

- (id)topList
{
  size = self->size_;
  v4 = [(OrgApacheLuceneSearchDisiPriorityQueue *)self top];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  JreStrongAssign(v4 + 4, 0);
  if (size < 3)
  {
    if (size != 2)
    {
      return v5;
    }

    v8 = [(OrgApacheLuceneSearchDisiPriorityQueue *)self getHeapWithInt:1];
    if (!v8)
    {
      goto LABEL_12;
    }

    if (v8[6] != *(v5 + 6))
    {
      return v5;
    }

    v9 = [(OrgApacheLuceneSearchDisiPriorityQueue *)self getHeapWithInt:1];
    if (v9)
    {
      v10 = v9;
      JreStrongAssign(v9 + 4, v5);
      return v10;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  v6 = sub_10005E1E4(self, v5, size, 1);

  return sub_10005E1E4(self, v6, size, 2);
}

- (id)prependWithOrgApacheLuceneSearchDisiWrapper:(id)wrapper withOrgApacheLuceneSearchDisiWrapper:(id)disiWrapper
{
  if (!wrapper)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(wrapper + 4, disiWrapper);
  return wrapper;
}

- (id)addWithOrgApacheLuceneSearchDisiWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  size = self->size_;
  [(OrgApacheLuceneSearchDisiPriorityQueue *)self setHeapWithInt:size withOrgApacheLuceneSearchDisiWrapper:wrapper];
  [(OrgApacheLuceneSearchDisiPriorityQueue *)self upHeapWithInt:size];
  self->size_ = size + 1;

  return [(OrgApacheLuceneSearchDisiPriorityQueue *)self top];
}

- (id)pop
{
  v3 = [(OrgApacheLuceneSearchDisiPriorityQueue *)self top];
  v4 = (self->size_ - 1);
  self->size_ = v4;
  [(OrgApacheLuceneSearchDisiPriorityQueue *)self moveHeapWithInt:0 withInt:v4];
  [(OrgApacheLuceneSearchDisiPriorityQueue *)self downHeapWithInt:v4];
  return v3;
}

- (id)updateTop
{
  [(OrgApacheLuceneSearchDisiPriorityQueue *)self downHeapWithInt:self->size_];

  return [(OrgApacheLuceneSearchDisiPriorityQueue *)self top];
}

- (id)updateTopWithOrgApacheLuceneSearchDisiWrapper:(id)wrapper
{
  [(OrgApacheLuceneSearchDisiPriorityQueue *)self setHeapWithInt:0 withOrgApacheLuceneSearchDisiWrapper:wrapper];

  return [(OrgApacheLuceneSearchDisiPriorityQueue *)self updateTop];
}

- (void)downHeapWithInt:(int)int
{
  v5 = [(OrgApacheLuceneSearchDisiPriorityQueue *)self top];
  if (int < 2)
  {
    return;
  }

  v6 = v5;
  if (int == 2)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(OrgApacheLuceneSearchDisiPriorityQueue *)self getHeapWithInt:2];
    if (!v8 || (v9 = v8[6], (v10 = [(OrgApacheLuceneSearchDisiPriorityQueue *)self getHeapWithInt:1]) == 0))
    {
LABEL_27:
      JreThrowNullPointerException();
    }

    if (v9 >= v10[6])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  v11 = [(OrgApacheLuceneSearchDisiPriorityQueue *)self getHeapWithInt:v7];
  if (!v11 || !v6)
  {
    goto LABEL_27;
  }

  if (v11[6] < v6[6])
  {
    v12 = 0;
    do
    {
      v13 = v7;
      [(OrgApacheLuceneSearchDisiPriorityQueue *)self copyHeapWithInt:v12 withInt:v7];
      v14 = 2 * v7;
      v7 = (2 * v7) | 1u;
      v15 = v14 + 2;
      if (v14 + 2 < int)
      {
        v16 = [(OrgApacheLuceneSearchDisiPriorityQueue *)self getHeapWithInt:(v14 + 2)];
        if (!v16)
        {
          goto LABEL_27;
        }

        v17 = v16[6];
        v18 = [(OrgApacheLuceneSearchDisiPriorityQueue *)self getHeapWithInt:(2 * v13) | 1u];
        if (!v18)
        {
          goto LABEL_27;
        }

        if (v17 >= v18[6])
        {
          v7 = v7;
        }

        else
        {
          v7 = v15;
        }
      }

      if (v7 >= int)
      {
        break;
      }

      v19 = [(OrgApacheLuceneSearchDisiPriorityQueue *)self getHeapWithInt:v7];
      if (!v19)
      {
        goto LABEL_27;
      }

      v12 = v13;
    }

    while (v19[6] < v6[6]);

    [(OrgApacheLuceneSearchDisiPriorityQueue *)self setHeapWithInt:v13 withOrgApacheLuceneSearchDisiWrapper:v6];
  }
}

- (id)iterator
{
  v3 = [(OrgApacheLuceneSearchDisiPriorityQueue *)self size];
  v4 = [OrgApacheLuceneSearchDisiPriorityQueue__1 alloc];
  JreStrongAssign(&v4->this$0_, self);
  v4->i_ = -1;
  v4->val$size_ = v3;

  return v4;
}

@end