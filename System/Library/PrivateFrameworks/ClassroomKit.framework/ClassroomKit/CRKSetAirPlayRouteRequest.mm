@interface CRKSetAirPlayRouteRequest
- (CRKSetAirPlayRouteRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKSetAirPlayRouteRequest

- (CRKSetAirPlayRouteRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CRKSetAirPlayRouteRequest;
  v5 = [(CATTaskRequest *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"routeUID"];
    routeUID = v5->_routeUID;
    v5->_routeUID = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"password"];
    password = v5->_password;
    v5->_password = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suppressPasscodePrompt"];
    v5->_suppressPasscodePrompt = [v12 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CRKSetAirPlayRouteRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(CRKSetAirPlayRouteRequest *)self routeUID:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"routeUID"];

  password = [(CRKSetAirPlayRouteRequest *)self password];
  [coderCopy encodeObject:password forKey:@"password"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKSetAirPlayRouteRequest suppressPasscodePrompt](self, "suppressPasscodePrompt")}];
  [coderCopy encodeObject:v7 forKey:@"suppressPasscodePrompt"];
}

@end