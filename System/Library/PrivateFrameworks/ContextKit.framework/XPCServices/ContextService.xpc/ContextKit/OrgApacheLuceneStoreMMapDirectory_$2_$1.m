@interface OrgApacheLuceneStoreMMapDirectory_$2_$1
- (id)run;
- (void)dealloc;
@end

@implementation OrgApacheLuceneStoreMMapDirectory_$2_$1

- (id)run
{
  v3 = self->val$buffer_;
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [-[JavaNioByteBuffer getClass](v3 "getClass")];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  [v4 setAccessibleWithBoolean:1];
  v6 = [v5 invokeWithId:self->val$buffer_ withNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, NSObject_class_())}];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_msgSend(v6 "getClass")];
    if (v8)
    {
      [v8 invokeWithId:v7 withNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, NSObject_class_())}];
      return 0;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreMMapDirectory__2__1;
  [(OrgApacheLuceneStoreMMapDirectory_$2_$1 *)&v3 dealloc];
}

@end