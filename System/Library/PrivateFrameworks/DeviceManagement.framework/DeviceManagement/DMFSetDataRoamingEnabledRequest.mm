@interface DMFSetDataRoamingEnabledRequest
- (DMFSetDataRoamingEnabledRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFSetDataRoamingEnabledRequest

- (DMFSetDataRoamingEnabledRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DMFSetDataRoamingEnabledRequest;
  v5 = [(CATTaskRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enabled"];
    *(&v5->super.super._handlesNotifications + 1) = [v6 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFSetDataRoamingEnabledRequest;
  v4 = a3;
  [(CATTaskRequest *)&v6 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFSetDataRoamingEnabledRequest enabled](self, "enabled", v6.receiver, v6.super_class)}];
  [v4 encodeObject:v5 forKey:@"enabled"];
}

@end