@interface DMFRefreshCellularPlansRequest
- (DMFRefreshCellularPlansRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFRefreshCellularPlansRequest

- (DMFRefreshCellularPlansRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DMFRefreshCellularPlansRequest;
  v5 = [(CATTaskRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"eSIMServerURL"];
    eSIMServerURL = v5->_eSIMServerURL;
    v5->_eSIMServerURL = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFRefreshCellularPlansRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFRefreshCellularPlansRequest *)self eSIMServerURL:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"eSIMServerURL"];
}

@end