@interface MXMDisplayDescriptor
- (BOOL)main;
- (MXMDisplayDescriptor)initWithDisplay:(id)a3;
@end

@implementation MXMDisplayDescriptor

- (BOOL)main
{
  v3 = [MEMORY[0x277CD9E40] mainDisplay];
  v4 = [v3 displayId];
  LOBYTE(self) = v4 == [(CADisplay *)self->_display displayId];

  return self;
}

- (MXMDisplayDescriptor)initWithDisplay:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MXMDisplayDescriptor;
  v6 = [(MXMDisplayDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_display, a3);
  }

  return v7;
}

@end