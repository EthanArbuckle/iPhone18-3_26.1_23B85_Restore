@interface DMFFetchProvisioningProfilesRequest
- (DMFFetchProvisioningProfilesRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchProvisioningProfilesRequest

- (DMFFetchProvisioningProfilesRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = DMFFetchProvisioningProfilesRequest;
  v5 = [(CATTaskRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managedOnly"];
    *(&v5->super.super._handlesNotifications + 1) = [v6 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchProvisioningProfilesRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchProvisioningProfilesRequest managedOnly](self, "managedOnly", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"managedOnly"];
}

@end