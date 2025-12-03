@interface CROEMPunchThroughsAppData
- (CROEMPunchThroughsAppData)initWithCoder:(id)coder;
- (CROEMPunchThroughsAppData)initWithPunchThroughIDs:(id)ds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CROEMPunchThroughsAppData

- (CROEMPunchThroughsAppData)initWithPunchThroughIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = CROEMPunchThroughsAppData;
  v5 = [(CROEMPunchThroughsAppData *)&v9 init];
  if (v5)
  {
    v6 = [dsCopy copy];
    punchThroughs = v5->_punchThroughs;
    v5->_punchThroughs = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  punchThroughs = [(CROEMPunchThroughsAppData *)self punchThroughs];
  [coderCopy encodeObject:punchThroughs forKey:@"kCRPunchThroughIdentifiersKey"];
}

- (CROEMPunchThroughsAppData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"kCRPunchThroughIdentifiersKey"];

  if (v5)
  {
    self = [(CROEMPunchThroughsAppData *)self initWithPunchThroughIDs:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end