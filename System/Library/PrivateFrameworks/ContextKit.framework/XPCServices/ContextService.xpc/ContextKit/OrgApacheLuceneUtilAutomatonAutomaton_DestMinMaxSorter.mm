@interface OrgApacheLuceneUtilAutomatonAutomaton_DestMinMaxSorter
- (OrgApacheLuceneUtilAutomatonAutomaton_DestMinMaxSorter)initWithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton;
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)__javaClone;
- (void)swapWithInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilAutomatonAutomaton_DestMinMaxSorter

- (void)swapWithInt:(int)int withInt:(int)withInt
{
  v5 = 3 * int;
  v6 = 3 * withInt;
  sub_10007C5CC(self, (3 * int), (3 * withInt));
  sub_10007C5CC(self, (v5 + 1), (v6 + 1));

  sub_10007C5CC(self, (v5 + 2), (v6 + 2));
}

- (int)compareWithInt:(int)int withInt:(int)withInt
{
  v7 = *(objc_loadWeak(&self->this$0_) + 5);
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  v8 = (3 * int);
  v9 = (3 * withInt);
  v10 = *(v7 + 8);
  if ((v8 & 0x80000000) != 0 || v8 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v8);
  }

  v11 = *(v7 + 12 + 4 * v8);
  v12 = *(objc_loadWeak(&self->this$0_) + 5);
  v13 = *(v12 + 8);
  if ((v9 & 0x80000000) != 0 || v9 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v9);
  }

  v14 = *(v12 + 12 + 4 * v9);
  if (v11 < v14)
  {
    return -1;
  }

  if (v11 > v14)
  {
    return 1;
  }

  v16 = *(objc_loadWeak(&self->this$0_) + 5);
  v17 = *(v16 + 8);
  v18 = v8 + 1;
  if (v8 + 1 < 0 || v18 >= v17)
  {
    IOSArray_throwOutOfBoundsWithMsg(v17, v18);
  }

  v19 = *(v16 + 12 + 4 * (v8 + 1));
  v20 = *(objc_loadWeak(&self->this$0_) + 5);
  v21 = *(v20 + 8);
  v22 = v9 + 1;
  if (v9 + 1 < 0 || v22 >= v21)
  {
    IOSArray_throwOutOfBoundsWithMsg(v21, v22);
  }

  v23 = *(v20 + 12 + 4 * v22);
  if (v19 < v23)
  {
    return -1;
  }

  if (v19 > v23)
  {
    return 1;
  }

  v24 = *(objc_loadWeak(&self->this$0_) + 5);
  v25 = *(v24 + 8);
  v26 = v8 + 2;
  v27 = v8 + 2;
  if (v27 < 0 || v26 >= v25)
  {
    IOSArray_throwOutOfBoundsWithMsg(v25, v26);
  }

  v28 = *(v24 + 12 + 4 * v27);
  v29 = *(objc_loadWeak(&self->this$0_) + 5);
  v30 = *(v29 + 8);
  v31 = v9 + 2;
  if (v9 + 2 < 0 || v31 >= v30)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, v31);
  }

  v32 = *(v29 + 12 + 4 * v31);
  v33 = v28 < v32;
  v34 = v28 > v32;
  if (v33)
  {
    return -1;
  }

  else
  {
    return v34;
  }
}

- (OrgApacheLuceneUtilAutomatonAutomaton_DestMinMaxSorter)initWithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton
{
  objc_storeWeak(&self->this$0_, automaton);
  OrgApacheLuceneUtilInPlaceMergeSorter_init(self);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonAutomaton_DestMinMaxSorter;
  [(OrgApacheLuceneUtilAutomatonAutomaton_DestMinMaxSorter *)&v3 __javaClone];
}

@end