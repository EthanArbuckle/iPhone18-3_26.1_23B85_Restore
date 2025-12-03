@interface ICCFTypeWrapper
- (BOOL)isEqual:(id)equal;
- (ICCFTypeWrapper)initWithCFTypeRef:(void *)ref;
- (void)dealloc;
@end

@implementation ICCFTypeWrapper

- (ICCFTypeWrapper)initWithCFTypeRef:(void *)ref
{
  v6.receiver = self;
  v6.super_class = ICCFTypeWrapper;
  v4 = [(ICCFTypeWrapper *)&v6 init];
  if (v4)
  {
    v4->_cfTypeRef = CFRetain(ref);
  }

  return v4;
}

- (void)dealloc
{
  cfTypeRef = self->_cfTypeRef;
  if (cfTypeRef)
  {
    CFRelease(cfTypeRef);
  }

  v4.receiver = self;
  v4.super_class = ICCFTypeWrapper;
  [(ICCFTypeWrapper *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && CFEqual(self->_cfTypeRef, [equalCopy cfTypeRef]) != 0;

  return v5;
}

@end