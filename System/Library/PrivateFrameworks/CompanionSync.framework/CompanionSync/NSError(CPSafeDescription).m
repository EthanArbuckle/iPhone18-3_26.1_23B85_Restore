@interface NSError(CPSafeDescription)
- (id)CPSafeDescription;
@end

@implementation NSError(CPSafeDescription)

- (id)CPSafeDescription
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [a1 domain];
  v4 = [v2 initWithFormat:@"<NSError %p>(domain: %@, code: %ld)", a1, v3, objc_msgSend(a1, "code")];

  return v4;
}

@end