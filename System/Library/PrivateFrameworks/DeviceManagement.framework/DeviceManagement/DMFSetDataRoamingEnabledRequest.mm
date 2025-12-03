@interface DMFSetDataRoamingEnabledRequest
- (DMFSetDataRoamingEnabledRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFSetDataRoamingEnabledRequest

- (DMFSetDataRoamingEnabledRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = DMFSetDataRoamingEnabledRequest;
  v5 = [(CATTaskRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enabled"];
    *(&v5->super.super._handlesNotifications + 1) = [v6 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFSetDataRoamingEnabledRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFSetDataRoamingEnabledRequest enabled](self, "enabled", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"enabled"];
}

@end