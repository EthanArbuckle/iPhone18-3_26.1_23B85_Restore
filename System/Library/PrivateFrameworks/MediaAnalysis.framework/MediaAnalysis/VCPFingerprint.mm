@interface VCPFingerprint
+ (id)fingerprintWithMaster:(id)master adjusted:(id)adjusted;
- (BOOL)isEqualToFingerprint:(id)fingerprint;
- (VCPFingerprint)initWithMaster:(id)master adjusted:(id)adjusted;
@end

@implementation VCPFingerprint

- (VCPFingerprint)initWithMaster:(id)master adjusted:(id)adjusted
{
  masterCopy = master;
  adjustedCopy = adjusted;
  if (masterCopy && (v12.receiver = self, v12.super_class = VCPFingerprint, v9 = [(VCPFingerprint *)&v12 init], (self = v9) != 0))
  {
    objc_storeStrong(&v9->_master, master);
    objc_storeStrong(&self->_adjusted, adjusted);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)fingerprintWithMaster:(id)master adjusted:(id)adjusted
{
  masterCopy = master;
  adjustedCopy = adjusted;
  v7 = [[VCPFingerprint alloc] initWithMaster:masterCopy adjusted:adjustedCopy];

  return v7;
}

- (BOOL)isEqualToFingerprint:(id)fingerprint
{
  fingerprintCopy = fingerprint;
  master = self->_master;
  master = [fingerprintCopy master];
  LOBYTE(master) = [(NSString *)master isEqualToString:master];

  if (master)
  {
    adjusted = self->_adjusted;
    if (!adjusted)
    {
      adjusted = [fingerprintCopy adjusted];

      if (!adjusted)
      {
        v10 = 1;
        goto LABEL_7;
      }

      adjusted = self->_adjusted;
    }

    adjusted2 = [fingerprintCopy adjusted];
    v10 = [(NSString *)adjusted isEqualToString:adjusted2];
  }

  else
  {
    v10 = 0;
  }

LABEL_7:

  return v10;
}

@end