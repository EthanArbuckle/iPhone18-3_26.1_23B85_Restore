@interface DMFLockDeviceRequest
- (DMFLockDeviceRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFLockDeviceRequest

- (DMFLockDeviceRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DMFLockDeviceRequest;
  v5 = [(CATTaskRequest *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"message"];
    message = v5->_message;
    v5->_message = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"pin"];
    pin = v5->_pin;
    v5->_pin = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = DMFLockDeviceRequest;
  v4 = a3;
  [(CATTaskRequest *)&v8 encodeWithCoder:v4];
  v5 = [(DMFLockDeviceRequest *)self message:v8.receiver];
  [v4 encodeObject:v5 forKey:@"message"];

  v6 = [(DMFLockDeviceRequest *)self phoneNumber];
  [v4 encodeObject:v6 forKey:@"phoneNumber"];

  v7 = [(DMFLockDeviceRequest *)self pin];
  [v4 encodeObject:v7 forKey:@"pin"];
}

@end