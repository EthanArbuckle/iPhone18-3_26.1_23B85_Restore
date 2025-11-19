@interface DMFStopManagingAppRequest
- (DMFStopManagingAppRequest)init;
- (DMFStopManagingAppRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFStopManagingAppRequest

- (DMFStopManagingAppRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DMFStopManagingAppRequest;
  v5 = [(DMFAppRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shouldPreserveAppBinary"];
    v5->_shouldPreserveAppBinary = [v6 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFStopManagingAppRequest;
  v4 = a3;
  [(DMFAppRequest *)&v6 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFStopManagingAppRequest shouldPreserveAppBinary](self, "shouldPreserveAppBinary", v6.receiver, v6.super_class)}];
  [v4 encodeObject:v5 forKey:@"shouldPreserveAppBinary"];
}

- (id)description
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = @"shouldPreserveAppBinary";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = DMFObjectDescriptionWithProperties(self, v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (DMFStopManagingAppRequest)init
{
  v3.receiver = self;
  v3.super_class = DMFStopManagingAppRequest;
  result = [(CATTaskRequest *)&v3 init];
  if (result)
  {
    result->_shouldPreserveAppBinary = 0;
  }

  return result;
}

@end