@interface DMFRefreshCellularPlansRequest
- (DMFRefreshCellularPlansRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFRefreshCellularPlansRequest

- (DMFRefreshCellularPlansRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DMFRefreshCellularPlansRequest;
  v5 = [(CATTaskRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"eSIMServerURL"];
    eSIMServerURL = v5->_eSIMServerURL;
    v5->_eSIMServerURL = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFRefreshCellularPlansRequest;
  v4 = a3;
  [(CATTaskRequest *)&v6 encodeWithCoder:v4];
  v5 = [(DMFRefreshCellularPlansRequest *)self eSIMServerURL:v6.receiver];
  [v4 encodeObject:v5 forKey:@"eSIMServerURL"];
}

@end