@interface BWSubjectRelightingInferences
- (void)dealloc;
@end

@implementation BWSubjectRelightingInferences

- (void)dealloc
{
  skinMask = self->_skinMask;
  if (skinMask)
  {
    CFRelease(skinMask);
  }

  personMask = self->_personMask;
  if (personMask)
  {
    CFRelease(personMask);
  }

  v5.receiver = self;
  v5.super_class = BWSubjectRelightingInferences;
  [(BWSubjectRelightingInferences *)&v5 dealloc];
}

@end