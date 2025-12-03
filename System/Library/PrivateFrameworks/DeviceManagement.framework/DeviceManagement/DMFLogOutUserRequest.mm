@interface DMFLogOutUserRequest
- (DMFLogOutUserRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFLogOutUserRequest

- (DMFLogOutUserRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = DMFLogOutUserRequest;
  v5 = [(CATTaskRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"forceLogout"];
    *(&v5->super.super._handlesNotifications + 1) = [v6 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFLogOutUserRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFLogOutUserRequest forceLogout](self, "forceLogout", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"forceLogout"];
}

@end