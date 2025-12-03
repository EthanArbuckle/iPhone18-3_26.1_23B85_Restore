@interface NSMutableSet(ContactsFoundation)
- (void)_cn_addNonNilObject:()ContactsFoundation;
@end

@implementation NSMutableSet(ContactsFoundation)

- (void)_cn_addNonNilObject:()ContactsFoundation
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end