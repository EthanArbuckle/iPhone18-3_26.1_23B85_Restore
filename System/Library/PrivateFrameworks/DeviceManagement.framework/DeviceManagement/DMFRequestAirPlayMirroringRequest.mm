@interface DMFRequestAirPlayMirroringRequest
- (DMFRequestAirPlayMirroringRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFRequestAirPlayMirroringRequest

- (DMFRequestAirPlayMirroringRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DMFRequestAirPlayMirroringRequest;
  v5 = [(CATTaskRequest *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"destinationName"];
    destinationName = v5->_destinationName;
    v5->_destinationName = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"destinationDeviceID"];
    destinationDeviceID = v5->_destinationDeviceID;
    v5->_destinationDeviceID = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"password"];
    password = v5->_password;
    v5->_password = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"force"];
    v5->_force = [v15 BOOLValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scanWaitInterval"];
    [v16 doubleValue];
    v5->_scanWaitInterval = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = DMFRequestAirPlayMirroringRequest;
  v4 = a3;
  [(CATTaskRequest *)&v11 encodeWithCoder:v4];
  v5 = [(DMFRequestAirPlayMirroringRequest *)self destinationName:v11.receiver];
  [v4 encodeObject:v5 forKey:@"destinationName"];

  v6 = [(DMFRequestAirPlayMirroringRequest *)self destinationDeviceID];
  [v4 encodeObject:v6 forKey:@"destinationDeviceID"];

  v7 = [(DMFRequestAirPlayMirroringRequest *)self password];
  [v4 encodeObject:v7 forKey:@"password"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFRequestAirPlayMirroringRequest force](self, "force")}];
  [v4 encodeObject:v8 forKey:@"force"];

  v9 = MEMORY[0x1E696AD98];
  [(DMFRequestAirPlayMirroringRequest *)self scanWaitInterval];
  v10 = [v9 numberWithDouble:?];
  [v4 encodeObject:v10 forKey:@"scanWaitInterval"];
}

@end