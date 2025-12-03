@interface JavaNioCharsetCodingErrorAction
+ (void)initialize;
- (void)dealloc;
@end

@implementation JavaNioCharsetCodingErrorAction

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioCharsetCodingErrorAction;
  [(JavaNioCharsetCodingErrorAction *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [JavaNioCharsetCodingErrorAction alloc];
    JreStrongAssign(&v2->action_, @"IGNORE");
    JreStrongAssignAndConsume(&JavaNioCharsetCodingErrorAction_IGNORE_, v2);
    v3 = [JavaNioCharsetCodingErrorAction alloc];
    JreStrongAssign(&v3->action_, @"REPLACE");
    JreStrongAssignAndConsume(&JavaNioCharsetCodingErrorAction_REPLACE_, v3);
    v4 = [JavaNioCharsetCodingErrorAction alloc];
    JreStrongAssign(&v4->action_, @"REPORT");
    JreStrongAssignAndConsume(&JavaNioCharsetCodingErrorAction_REPORT_, v4);
    atomic_store(1u, JavaNioCharsetCodingErrorAction__initialized);
  }
}

@end