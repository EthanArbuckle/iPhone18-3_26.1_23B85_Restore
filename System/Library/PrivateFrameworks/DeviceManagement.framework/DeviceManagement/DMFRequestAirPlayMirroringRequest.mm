@interface DMFRequestAirPlayMirroringRequest
- (DMFRequestAirPlayMirroringRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFRequestAirPlayMirroringRequest

- (DMFRequestAirPlayMirroringRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = DMFRequestAirPlayMirroringRequest;
  v5 = [(CATTaskRequest *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"destinationName"];
    destinationName = v5->_destinationName;
    v5->_destinationName = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"destinationDeviceID"];
    destinationDeviceID = v5->_destinationDeviceID;
    v5->_destinationDeviceID = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"password"];
    password = v5->_password;
    v5->_password = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"force"];
    v5->_force = [v15 BOOLValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scanWaitInterval"];
    [v16 doubleValue];
    v5->_scanWaitInterval = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = DMFRequestAirPlayMirroringRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v11 encodeWithCoder:coderCopy];
  v5 = [(DMFRequestAirPlayMirroringRequest *)self destinationName:v11.receiver];
  [coderCopy encodeObject:v5 forKey:@"destinationName"];

  destinationDeviceID = [(DMFRequestAirPlayMirroringRequest *)self destinationDeviceID];
  [coderCopy encodeObject:destinationDeviceID forKey:@"destinationDeviceID"];

  password = [(DMFRequestAirPlayMirroringRequest *)self password];
  [coderCopy encodeObject:password forKey:@"password"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFRequestAirPlayMirroringRequest force](self, "force")}];
  [coderCopy encodeObject:v8 forKey:@"force"];

  v9 = MEMORY[0x1E696AD98];
  [(DMFRequestAirPlayMirroringRequest *)self scanWaitInterval];
  v10 = [v9 numberWithDouble:?];
  [coderCopy encodeObject:v10 forKey:@"scanWaitInterval"];
}

@end