@interface DOCUIPBrowserState
- (DOCUIPBrowserState)init;
- (NSString)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DOCUIPBrowserState

- (DOCUIPBrowserState)init
{
  v2 = (&self->super.isa + OBJC_IVAR___DOCUIPBrowserState__impl);
  *v2 = -1;
  v2[1] = -1;
  v4.receiver = self;
  v4.super_class = DOCUIPBrowserState;
  return [(DOCUIPBrowserState *)&v4 init];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR___DOCUIPBrowserState__impl);
  v5 = *&self->_impl[OBJC_IVAR___DOCUIPBrowserState__impl];
  coderCopy = coder;
  selfCopy = self;
  sub_24936FE74();
}

- (NSString)debugDescription
{
  selfCopy = self;
  DOCUIPBrowserState.debugDescription.getter();

  v3 = sub_24938A42C();

  return v3;
}

@end