@interface WFWindow
- (CGRect)bounds;
- (CGSize)size;
- (WFWindow)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWindow

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WFWindow;
  [(WFWindow *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(WFWindow *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  applicationName = [(WFWindow *)self applicationName];
  [coderCopy encodeObject:applicationName forKey:@"applicationName"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[WFWindow processIdentifier](self, "processIdentifier")}];
  [coderCopy encodeObject:v7 forKey:@"processIdentifier"];

  windowIndex = [(WFWindow *)self windowIndex];
  [coderCopy encodeObject:windowIndex forKey:@"windowIndex"];
}

- (WFWindow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WFWindow *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationName"];
    applicationName = v5->_applicationName;
    v5->_applicationName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processIdentifier"];
    v5->_processIdentifier = [v10 unsignedIntValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"windowIndex"];
    windowIndex = v5->_windowIndex;
    v5->_windowIndex = v11;

    v13 = v5;
  }

  return v5;
}

- (CGSize)size
{
  [(WFWindow *)self bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGRect)bounds
{
  if (!self->_boundsLoaded)
  {
    self->_boundsLoaded = 1;
  }

  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end