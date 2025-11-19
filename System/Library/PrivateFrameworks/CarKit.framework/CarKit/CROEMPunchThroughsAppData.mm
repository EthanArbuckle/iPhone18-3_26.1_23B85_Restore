@interface CROEMPunchThroughsAppData
- (CROEMPunchThroughsAppData)initWithCoder:(id)a3;
- (CROEMPunchThroughsAppData)initWithPunchThroughIDs:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CROEMPunchThroughsAppData

- (CROEMPunchThroughsAppData)initWithPunchThroughIDs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CROEMPunchThroughsAppData;
  v5 = [(CROEMPunchThroughsAppData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    punchThroughs = v5->_punchThroughs;
    v5->_punchThroughs = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CROEMPunchThroughsAppData *)self punchThroughs];
  [v4 encodeObject:v5 forKey:@"kCRPunchThroughIdentifiersKey"];
}

- (CROEMPunchThroughsAppData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"kCRPunchThroughIdentifiersKey"];

  if (v5)
  {
    self = [(CROEMPunchThroughsAppData *)self initWithPunchThroughIDs:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end