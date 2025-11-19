@interface DMFFetchAvailableOSUpdatesRequest
- (DMFFetchAvailableOSUpdatesRequest)init;
- (DMFFetchAvailableOSUpdatesRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (DMFFetchAvailableOSUpdatesRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DMFFetchAvailableOSUpdatesRequest;
  v5 = [(CATTaskRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"productVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"useDelay"];
    v5->_useDelay = [v9 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFFetchAvailableOSUpdatesRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [(DMFFetchAvailableOSUpdatesRequest *)self productVersion:v7.receiver];
  [v4 encodeObject:v5 forKey:@"productVersion"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchAvailableOSUpdatesRequest useDelay](self, "useDelay")}];
  [v4 encodeObject:v6 forKey:@"useDelay"];
}

@end