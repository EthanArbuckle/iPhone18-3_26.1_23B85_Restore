@interface NSError(CPSafeDescription)
- (id)CPSafeDescription;
@end

@implementation NSError(CPSafeDescription)

- (id)CPSafeDescription
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  domain = [self domain];
  v4 = [v2 initWithFormat:@"<NSError %p>(domain: %@, code: %ld)", self, domain, objc_msgSend(self, "code")];

  return v4;
}

@end