@interface MXMDisplayDescriptor
- (BOOL)main;
- (MXMDisplayDescriptor)initWithDisplay:(id)display;
@end

@implementation MXMDisplayDescriptor

- (BOOL)main
{
  mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
  displayId = [mainDisplay displayId];
  LOBYTE(self) = displayId == [(CADisplay *)self->_display displayId];

  return self;
}

- (MXMDisplayDescriptor)initWithDisplay:(id)display
{
  displayCopy = display;
  v9.receiver = self;
  v9.super_class = MXMDisplayDescriptor;
  v6 = [(MXMDisplayDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_display, display);
  }

  return v7;
}

@end