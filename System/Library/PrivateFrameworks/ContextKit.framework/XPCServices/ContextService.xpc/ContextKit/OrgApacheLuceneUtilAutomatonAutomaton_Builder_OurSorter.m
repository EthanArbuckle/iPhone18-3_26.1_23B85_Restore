@interface OrgApacheLuceneUtilAutomatonAutomaton_Builder_OurSorter
- (OrgApacheLuceneUtilAutomatonAutomaton_Builder_OurSorter)initWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(id)a3;
- (int)compareWithInt:(int)a3 withInt:(int)a4;
- (void)__javaClone;
- (void)swapWithInt:(int)a3 withInt:(int)a4;
@end

@implementation OrgApacheLuceneUtilAutomatonAutomaton_Builder_OurSorter

- (void)swapWithInt:(int)a3 withInt:(int)a4
{
  sub_10007D8B0(self, (4 * a3), (4 * a4));
  sub_10007D8B0(self, (4 * a3) | 1u, (4 * a4) | 1u);
  sub_10007D8B0(self, (4 * a3) | 2u, (4 * a4) | 2u);

  sub_10007D8B0(self, (4 * a3) | 3u, (4 * a4) | 3u);
}

- (int)compareWithInt:(int)a3 withInt:(int)a4
{
  v7 = *(objc_loadWeak(&self->this$0_) + 3);
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  v8 = (4 * a3);
  v9 = (4 * a4);
  v10 = *(v7 + 8);
  if ((v8 & 0x80000000) != 0 || v8 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v8);
  }

  v11 = *(v7 + 12 + 4 * v8);
  v12 = *(objc_loadWeak(&self->this$0_) + 3);
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

  v16 = *(objc_loadWeak(&self->this$0_) + 3);
  v17 = v8 | 2;
  v18 = *(v16 + 8);
  if ((v8 & 0x80000000) != 0 || v17 >= v18)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v8 | 2);
  }

  v19 = *(v16 + 12 + 4 * v17);
  v20 = *(objc_loadWeak(&self->this$0_) + 3);
  v21 = v9 | 2;
  v22 = *(v20 + 8);
  if ((v9 & 0x80000000) != 0 || v21 >= v22)
  {
    IOSArray_throwOutOfBoundsWithMsg(v22, v9 | 2);
  }

  v23 = *(v20 + 12 + 4 * v21);
  if (v19 < v23)
  {
    return -1;
  }

  if (v19 > v23)
  {
    return 1;
  }

  v24 = *(objc_loadWeak(&self->this$0_) + 3);
  v25 = v8 | 3;
  v26 = *(v24 + 8);
  if ((v8 & 0x80000000) != 0 || v25 >= v26)
  {
    IOSArray_throwOutOfBoundsWithMsg(v26, v8 | 3);
  }

  v27 = *(v24 + 12 + 4 * v25);
  v28 = *(objc_loadWeak(&self->this$0_) + 3);
  v29 = v9 | 3;
  v30 = *(v28 + 8);
  if ((v9 & 0x80000000) != 0 || v29 >= v30)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, v9 | 3);
  }

  v31 = *(v28 + 12 + 4 * v29);
  if (v27 < v31)
  {
    return -1;
  }

  if (v27 > v31)
  {
    return 1;
  }

  v32 = *(objc_loadWeak(&self->this$0_) + 3);
  v33 = v8 | 1;
  v34 = *(v32 + 8);
  if ((v8 & 0x80000000) != 0 || v33 >= v34)
  {
    IOSArray_throwOutOfBoundsWithMsg(v34, v8 | 1);
  }

  v35 = *(v32 + 12 + 4 * v33);
  v36 = *(objc_loadWeak(&self->this$0_) + 3);
  v37 = v9 | 1;
  v38 = *(v36 + 8);
  if ((v9 & 0x80000000) != 0 || v37 >= v38)
  {
    IOSArray_throwOutOfBoundsWithMsg(v38, v9 | 1);
  }

  v39 = *(v36 + 12 + 4 * v37);
  v40 = v35 < v39;
  v41 = v35 > v39;
  if (v40)
  {
    return -1;
  }

  else
  {
    return v41;
  }
}

- (OrgApacheLuceneUtilAutomatonAutomaton_Builder_OurSorter)initWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(id)a3
{
  objc_storeWeak(&self->this$0_, a3);
  OrgApacheLuceneUtilInPlaceMergeSorter_init(self);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonAutomaton_Builder_OurSorter;
  [(OrgApacheLuceneUtilAutomatonAutomaton_Builder_OurSorter *)&v3 __javaClone];
}

@end