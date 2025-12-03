@interface DMFStopManagingAppRequest
- (DMFStopManagingAppRequest)init;
- (DMFStopManagingAppRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFStopManagingAppRequest

- (DMFStopManagingAppRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = DMFStopManagingAppRequest;
  v5 = [(DMFAppRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shouldPreserveAppBinary"];
    v5->_shouldPreserveAppBinary = [v6 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFStopManagingAppRequest;
  coderCopy = coder;
  [(DMFAppRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFStopManagingAppRequest shouldPreserveAppBinary](self, "shouldPreserveAppBinary", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"shouldPreserveAppBinary"];
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