@interface DMFFetchAvailableOSUpdatesRequest
- (DMFFetchAvailableOSUpdatesRequest)init;
- (DMFFetchAvailableOSUpdatesRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchAvailableOSUpdatesRequest

- (DMFFetchAvailableOSUpdatesRequest)init
{
  v6.receiver = self;
  v6.super_class = DMFFetchAvailableOSUpdatesRequest;
  v2 = [(CATTaskRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    productVersion = v2->_productVersion;
    v2->_productVersion = 0;

    v3->_useDelay = 0;
  }

  return v3;
}

- (DMFFetchAvailableOSUpdatesRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DMFFetchAvailableOSUpdatesRequest;
  v5 = [(CATTaskRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"productVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"useDelay"];
    v5->_useDelay = [v9 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFFetchAvailableOSUpdatesRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchAvailableOSUpdatesRequest *)self productVersion:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"productVersion"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchAvailableOSUpdatesRequest useDelay](self, "useDelay")}];
  [coderCopy encodeObject:v6 forKey:@"useDelay"];
}

@end