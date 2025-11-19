@interface IDSMPIdentity
- (IDSMPIdentity)initWithBackingValue:(void *)a3;
- (void)dealloc;
@end

@implementation IDSMPIdentity

- (void)dealloc
{
  backingValue = self->_backingValue;
  if (backingValue)
  {
    CFRelease(backingValue);
  }

  v4.receiver = self;
  v4.super_class = IDSMPIdentity;
  [(IDSMPIdentity *)&v4 dealloc];
}

- (IDSMPIdentity)initWithBackingValue:(void *)a3
{
  v6.receiver = self;
  v6.super_class = IDSMPIdentity;
  v4 = [(IDSMPIdentity *)&v6 init];
  if (v4)
  {
    v4->_backingValue = CFRetain(a3);
  }

  return v4;
}

@end