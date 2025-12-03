@interface DMFFetchLastLoginDateRequest
- (DMFFetchLastLoginDateRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchLastLoginDateRequest

- (DMFFetchLastLoginDateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = DMFFetchLastLoginDateRequest;
  v5 = [(CATTaskRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"appleIDs"];
    appleIDs = v5->_appleIDs;
    v5->_appleIDs = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchLastLoginDateRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchLastLoginDateRequest *)self appleIDs:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"appleIDs"];
}

@end