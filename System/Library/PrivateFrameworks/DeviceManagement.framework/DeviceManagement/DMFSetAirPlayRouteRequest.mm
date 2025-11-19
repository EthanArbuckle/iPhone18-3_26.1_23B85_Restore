@interface DMFSetAirPlayRouteRequest
- (DMFSetAirPlayRouteRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFSetAirPlayRouteRequest

- (DMFSetAirPlayRouteRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DMFSetAirPlayRouteRequest;
  v5 = [(CATTaskRequest *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"routeUID"];
    routeUID = v5->_routeUID;
    v5->_routeUID = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"password"];
    password = v5->_password;
    v5->_password = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suppressPasscodePrompt"];
    v5->_suppressPasscodePrompt = [v12 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = DMFSetAirPlayRouteRequest;
  v4 = a3;
  [(CATTaskRequest *)&v8 encodeWithCoder:v4];
  v5 = [(DMFSetAirPlayRouteRequest *)self routeUID:v8.receiver];
  [v4 encodeObject:v5 forKey:@"routeUID"];

  v6 = [(DMFSetAirPlayRouteRequest *)self password];
  [v4 encodeObject:v6 forKey:@"password"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFSetAirPlayRouteRequest suppressPasscodePrompt](self, "suppressPasscodePrompt")}];
  [v4 encodeObject:v7 forKey:@"suppressPasscodePrompt"];
}

@end