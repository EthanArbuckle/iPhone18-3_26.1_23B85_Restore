@interface NTKExplorerDotColorOptions
- (NTKExplorerDotColorOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKExplorerDotColorOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NTKExplorerDotColorOptions);
  v5 = v4;
  if (v4)
  {
    [(NTKExplorerDotColorOptions *)v4 setConnectedDotColor:self->_connectedDotColor];
    [(NTKExplorerDotColorOptions *)v5 setConnectedDotBackgroundColor:self->_connectedDotBackgroundColor];
    [(NTKExplorerDotColorOptions *)v5 setNoServiceDotColor:self->_noServiceDotColor];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  connectedDotColor = self->_connectedDotColor;
  coderCopy = coder;
  [coderCopy encodeObject:connectedDotColor forKey:@"connectedDotColorKey"];
  [coderCopy encodeObject:self->_connectedDotBackgroundColor forKey:@"connectedDotBackgroundColorKey"];
  [coderCopy encodeObject:self->_noServiceDotColor forKey:@"noServiceDotColor"];
}

- (NTKExplorerDotColorOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NTKExplorerDotColorOptions *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connectedDotColorKey"];
    connectedDotColor = v5->_connectedDotColor;
    v5->_connectedDotColor = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connectedDotBackgroundColorKey"];
    connectedDotBackgroundColor = v5->_connectedDotBackgroundColor;
    v5->_connectedDotBackgroundColor = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"noServiceDotColor"];
    noServiceDotColor = v5->_noServiceDotColor;
    v5->_noServiceDotColor = v10;
  }

  return v5;
}

@end