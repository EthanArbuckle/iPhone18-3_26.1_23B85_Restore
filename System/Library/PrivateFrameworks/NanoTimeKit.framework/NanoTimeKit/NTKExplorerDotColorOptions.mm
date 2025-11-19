@interface NTKExplorerDotColorOptions
- (NTKExplorerDotColorOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKExplorerDotColorOptions

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  connectedDotColor = self->_connectedDotColor;
  v5 = a3;
  [v5 encodeObject:connectedDotColor forKey:@"connectedDotColorKey"];
  [v5 encodeObject:self->_connectedDotBackgroundColor forKey:@"connectedDotBackgroundColorKey"];
  [v5 encodeObject:self->_noServiceDotColor forKey:@"noServiceDotColor"];
}

- (NTKExplorerDotColorOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NTKExplorerDotColorOptions *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connectedDotColorKey"];
    connectedDotColor = v5->_connectedDotColor;
    v5->_connectedDotColor = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connectedDotBackgroundColorKey"];
    connectedDotBackgroundColor = v5->_connectedDotBackgroundColor;
    v5->_connectedDotBackgroundColor = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"noServiceDotColor"];
    noServiceDotColor = v5->_noServiceDotColor;
    v5->_noServiceDotColor = v10;
  }

  return v5;
}

@end