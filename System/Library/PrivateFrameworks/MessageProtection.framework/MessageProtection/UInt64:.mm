@interface UInt64:
- (void)SymmetricKey;
@end

@implementation UInt64:

- (void)SymmetricKey
{
  if (!lazy cache variable for type metadata for [UInt64 : SymmetricKey])
  {
    type metadata accessor for SymmetricKey();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UInt64 : SymmetricKey]);
    }
  }
}

@end