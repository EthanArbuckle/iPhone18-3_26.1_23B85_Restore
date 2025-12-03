@interface OrgApacheLuceneSearchBooleanScorer_OrCollector
- (void)__javaClone;
- (void)collectWithInt:(int)int;
@end

@implementation OrgApacheLuceneSearchBooleanScorer_OrCollector

- (void)collectWithInt:(int)int
{
  v5 = *(objc_loadWeak(&self->this$0_) + 2);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = int & 0x7FF;
  v7 = (int >> 6) & 0x1F;
  v8 = *(v5 + 8);
  if (v7 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v7);
  }

  *(v5 + 16 + 8 * v7) |= 1 << v6;
  v9 = *(objc_loadWeak(&self->this$0_) + 1);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = *(v9 + 8);
  if (v6 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v6);
  }

  v11 = *(v9 + 24 + 8 * v6);
  if (!v11 || (++*(v11 + 16), (Weak = objc_loadWeak(&self->scorer_)) == 0))
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  [Weak score];
  *(v11 + 8) = *(v11 + 8) + v13;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBooleanScorer_OrCollector;
  [(OrgApacheLuceneSearchBooleanScorer_OrCollector *)&v3 __javaClone];
}

@end