@interface MCSOperation
- (id)applyPendingChangeToObjects:(id)a3;
@end

@implementation MCSOperation

- (id)applyPendingChangeToObjects:(id)a3
{
  v5 = a3;
  [(MCSOperation *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MCSOperation applyPendingChangeToObjects:]", "MCSOperation.m", 16, "0");
}

@end