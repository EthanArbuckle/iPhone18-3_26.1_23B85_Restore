@interface FMDSecureLocationContext
- (FMDSecureLocationContext)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDSecureLocationContext

- (FMDSecureLocationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FMDSecureLocationContext;
  v5 = [(FMDSecureLocationContext *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"findMyId"];
    [(FMDSecureLocationContext *)v5 setFindMyId:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
    [(FMDSecureLocationContext *)v5 setMode:v7];

    -[FMDSecureLocationContext setStopMonitoringActivePolicy:](v5, "setStopMonitoringActivePolicy:", [coderCopy decodeBoolForKey:@"stopMonitoringActivePolicy"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  findMyId = [(FMDSecureLocationContext *)self findMyId];
  [coderCopy encodeObject:findMyId forKey:@"findMyId"];

  mode = [(FMDSecureLocationContext *)self mode];
  [coderCopy encodeObject:mode forKey:@"mode"];

  [coderCopy encodeBool:-[FMDSecureLocationContext stopMonitoringActivePolicy](self forKey:{"stopMonitoringActivePolicy"), @"stopMonitoringActivePolicy"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  findMyId = [(FMDSecureLocationContext *)self findMyId];
  mode = [(FMDSecureLocationContext *)self mode];
  v6 = [v3 stringWithFormat:@"findMyId %@ mode %@ stopMonitoringActivePolicy %i", findMyId, mode, -[FMDSecureLocationContext stopMonitoringActivePolicy](self, "stopMonitoringActivePolicy")];

  return v6;
}

@end