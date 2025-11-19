@interface VCPFingerprint
+ (id)fingerprintWithMaster:(id)a3 adjusted:(id)a4;
- (BOOL)isEqualToFingerprint:(id)a3;
- (VCPFingerprint)initWithMaster:(id)a3 adjusted:(id)a4;
@end

@implementation VCPFingerprint

- (VCPFingerprint)initWithMaster:(id)a3 adjusted:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 && (v12.receiver = self, v12.super_class = VCPFingerprint, v9 = [(VCPFingerprint *)&v12 init], (self = v9) != 0))
  {
    objc_storeStrong(&v9->_master, a3);
    objc_storeStrong(&self->_adjusted, a4);
    self = self;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)fingerprintWithMaster:(id)a3 adjusted:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[VCPFingerprint alloc] initWithMaster:v5 adjusted:v6];

  return v7;
}

- (BOOL)isEqualToFingerprint:(id)a3
{
  v4 = a3;
  master = self->_master;
  v6 = [v4 master];
  LOBYTE(master) = [(NSString *)master isEqualToString:v6];

  if (master)
  {
    adjusted = self->_adjusted;
    if (!adjusted)
    {
      v8 = [v4 adjusted];

      if (!v8)
      {
        v10 = 1;
        goto LABEL_7;
      }

      adjusted = self->_adjusted;
    }

    v9 = [v4 adjusted];
    v10 = [(NSString *)adjusted isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

LABEL_7:

  return v10;
}

@end