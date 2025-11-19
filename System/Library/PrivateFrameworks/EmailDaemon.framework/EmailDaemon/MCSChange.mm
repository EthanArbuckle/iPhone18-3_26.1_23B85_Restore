@interface MCSChange
- (id)applyPendingChangeToObjects:(id)a3;
@end

@implementation MCSChange

- (id)applyPendingChangeToObjects:(id)a3
{
  v5 = a3;
  [(MCSChange *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MCSChange applyPendingChangeToObjects:]", "MCSChange.m", 17, "0");
}

@end