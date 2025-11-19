@interface LNExtensionUndoAssertionCache
+ (LNExtensionUndoAssertionCache)shared;
- (BOOL)addAssertion:(id)a3 error:(id *)a4;
- (BOOL)extendAssertionForHandle:(id)a3;
- (void)removeAssertion:(id)a3;
@end

@implementation LNExtensionUndoAssertionCache

+ (LNExtensionUndoAssertionCache)shared
{
  v2 = static ExtensionUndoAssertionCache.shared.getter();

  return v2;
}

- (BOOL)extendAssertionForHandle:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1976882E0(v4);

  return self & 1;
}

- (BOOL)addAssertion:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_1976887C4(v5);

  return 1;
}

- (void)removeAssertion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_197689284(v4);
}

@end