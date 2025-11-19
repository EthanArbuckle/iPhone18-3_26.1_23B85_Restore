@interface FMDSecureLocationContext
- (FMDSecureLocationContext)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDSecureLocationContext

- (FMDSecureLocationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMDSecureLocationContext;
  v5 = [(FMDSecureLocationContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"findMyId"];
    [(FMDSecureLocationContext *)v5 setFindMyId:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
    [(FMDSecureLocationContext *)v5 setMode:v7];

    -[FMDSecureLocationContext setStopMonitoringActivePolicy:](v5, "setStopMonitoringActivePolicy:", [v4 decodeBoolForKey:@"stopMonitoringActivePolicy"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(FMDSecureLocationContext *)self findMyId];
  [v6 encodeObject:v4 forKey:@"findMyId"];

  v5 = [(FMDSecureLocationContext *)self mode];
  [v6 encodeObject:v5 forKey:@"mode"];

  [v6 encodeBool:-[FMDSecureLocationContext stopMonitoringActivePolicy](self forKey:{"stopMonitoringActivePolicy"), @"stopMonitoringActivePolicy"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FMDSecureLocationContext *)self findMyId];
  v5 = [(FMDSecureLocationContext *)self mode];
  v6 = [v3 stringWithFormat:@"findMyId %@ mode %@ stopMonitoringActivePolicy %i", v4, v5, -[FMDSecureLocationContext stopMonitoringActivePolicy](self, "stopMonitoringActivePolicy")];

  return v6;
}

@end