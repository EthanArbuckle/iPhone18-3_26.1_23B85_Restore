@interface LNExtensionUndoAssertionCache
+ (LNExtensionUndoAssertionCache)shared;
- (BOOL)addAssertion:(id)assertion error:(id *)error;
- (BOOL)extendAssertionForHandle:(id)handle;
- (void)removeAssertion:(id)assertion;
@end

@implementation LNExtensionUndoAssertionCache

+ (LNExtensionUndoAssertionCache)shared
{
  v2 = static ExtensionUndoAssertionCache.shared.getter();

  return v2;
}

- (BOOL)extendAssertionForHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  LOBYTE(self) = sub_1976882E0(handleCopy);

  return self & 1;
}

- (BOOL)addAssertion:(id)assertion error:(id *)error
{
  assertionCopy = assertion;
  selfCopy = self;
  sub_1976887C4(assertionCopy);

  return 1;
}

- (void)removeAssertion:(id)assertion
{
  assertionCopy = assertion;
  selfCopy = self;
  sub_197689284(assertionCopy);
}

@end