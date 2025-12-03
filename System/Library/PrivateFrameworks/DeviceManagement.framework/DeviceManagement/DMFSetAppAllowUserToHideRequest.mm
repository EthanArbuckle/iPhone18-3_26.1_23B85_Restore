@interface DMFSetAppAllowUserToHideRequest
- (DMFSetAppAllowUserToHideRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFSetAppAllowUserToHideRequest

- (DMFSetAppAllowUserToHideRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DMFSetAppAllowUserToHideRequest;
  v5 = [(DMFAppRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"allowUserToHide"];
    allowUserToHide = v5->_allowUserToHide;
    v5->_allowUserToHide = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFSetAppAllowUserToHideRequest;
  coderCopy = coder;
  [(DMFAppRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFSetAppAllowUserToHideRequest *)self allowUserToHide:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"allowUserToHide"];
}

@end