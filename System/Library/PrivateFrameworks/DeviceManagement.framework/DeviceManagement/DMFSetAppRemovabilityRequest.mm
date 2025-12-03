@interface DMFSetAppRemovabilityRequest
- (DMFSetAppRemovabilityRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFSetAppRemovabilityRequest

- (DMFSetAppRemovabilityRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DMFSetAppRemovabilityRequest;
  v5 = [(DMFAppRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"removable"];
    removable = v5->_removable;
    v5->_removable = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFSetAppRemovabilityRequest;
  coderCopy = coder;
  [(DMFAppRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFSetAppRemovabilityRequest *)self removable:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"removable"];
}

@end