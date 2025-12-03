@interface OrgApacheLuceneUtilAutomatonAutomaton_MinMaxDestSorter
- (OrgApacheLuceneUtilAutomatonAutomaton_MinMaxDestSorter)initWithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton;
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)__javaClone;
- (void)swapWithInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilAutomatonAutomaton_MinMaxDestSorter

- (void)swapWithInt:(int)int withInt:(int)withInt
{
  v5 = 3 * int;
  v6 = 3 * withInt;
  sub_10007CA68(self, (3 * int), (3 * withInt));
  sub_10007CA68(self, (v5 + 1), (v6 + 1));

  sub_10007CA68(self, (v5 + 2), (v6 + 2));
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
  v11 = v8 + 1;
  if (v8 + 1 < 0 || v11 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v11);
  }

  v12 = *(v7 + 12 + 4 * (v8 + 1));
  v13 = *(objc_loadWeak(&self->this$0_) + 5);
  v14 = *(v13 + 8);
  v15 = v9 + 1;
  if (v9 + 1 < 0 || v15 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v15);
  }

  v16 = *(v13 + 12 + 4 * v15);
  if (v12 < v16)
  {
    return -1;
  }

  if (v12 > v16)
  {
    return 1;
  }

  v18 = *(objc_loadWeak(&self->this$0_) + 5);
  v19 = *(v18 + 8);
  v20 = v8 + 2;
  if (v8 + 2 < 0 || v20 >= v19)
  {
    IOSArray_throwOutOfBoundsWithMsg(v19, v20);
  }

  v21 = *(v18 + 12 + 4 * (v8 + 2));
  v22 = *(objc_loadWeak(&self->this$0_) + 5);
  v23 = *(v22 + 8);
  v24 = v9 + 2;
  if (v9 + 2 < 0 || v24 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v24);
  }

  v25 = *(v22 + 12 + 4 * v24);
  if (v21 < v25)
  {
    return -1;
  }

  if (v21 > v25)
  {
    return 1;
  }

  v26 = *(objc_loadWeak(&self->this$0_) + 5);
  v27 = *(v26 + 8);
  if ((v8 & 0x80000000) != 0 || v8 >= v27)
  {
    IOSArray_throwOutOfBoundsWithMsg(v27, v8);
  }

  v28 = *(v26 + 12 + 4 * v8);
  v29 = *(objc_loadWeak(&self->this$0_) + 5);
  v30 = *(v29 + 8);
  if ((v9 & 0x80000000) != 0 || v9 >= v30)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, v9);
  }

  v31 = *(v29 + 12 + 4 * v9);
  v32 = v28 < v31;
  v33 = v28 > v31;
  if (v32)
  {
    return -1;
  }

  else
  {
    return v33;
  }
}

- (OrgApacheLuceneUtilAutomatonAutomaton_MinMaxDestSorter)initWithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton
{
  objc_storeWeak(&self->this$0_, automaton);
  OrgApacheLuceneUtilInPlaceMergeSorter_init(self);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonAutomaton_MinMaxDestSorter;
  [(OrgApacheLuceneUtilAutomatonAutomaton_MinMaxDestSorter *)&v3 __javaClone];
}

@end