@interface FudPersonalizationObjectInfo
- (FudPersonalizationObjectInfo)initWithCoder:(id)a3;
- (FudPersonalizationObjectInfo)initWithTag:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FudPersonalizationObjectInfo

- (FudPersonalizationObjectInfo)initWithTag:(id)a3
{
  v8 = self;
  if (a3)
  {
    v18.receiver = self;
    v18.super_class = FudPersonalizationObjectInfo;
    v8 = [(FudPersonalizationObjectInfo *)&v18 init];
    if (v8)
    {
      v8->_objectTag = [a3 copy];
      v8->_digest = 0;
      v8->_trustedSet = 0;
      *&v8->_esecSet = 0;
    }

    else
    {
      [(FudPersonalizationObjectInfo *)0 initWithTag:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  else
  {
    [(FudPersonalizationObjectInfo *)self initWithTag:a2, 0, v3, v4, v5, v6, v7];
  }

  return v8;
}

- (void)dealloc
{
  objectTag = self->_objectTag;
  if (objectTag)
  {
  }

  digest = self->_digest;
  if (digest)
  {
  }

  v5.receiver = self;
  v5.super_class = FudPersonalizationObjectInfo;
  [(FudPersonalizationObjectInfo *)&v5 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_objectTag forKey:@"requestObjectTag"];
  [a3 encodeObject:self->_digest forKey:@"requestDigest"];
  [a3 encodeBool:self->_trustedSet forKey:@"requestTrustedSet"];
  [a3 encodeBool:self->_trusted forKey:@"requestTrusted"];
  [a3 encodeBool:self->_esecSet forKey:@"requestEffectiveSecModeSet"];
  [a3 encodeBool:self->_effectiveSecurityMode forKey:@"requestEffectiveSecMode"];
  [a3 encodeBool:self->_eproSet forKey:@"requestEffectiveProdModeSet"];
  effectiveProductionMode = self->_effectiveProductionMode;

  [a3 encodeBool:effectiveProductionMode forKey:@"requestEffectiveProdMode"];
}

- (FudPersonalizationObjectInfo)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FudPersonalizationObjectInfo;
  v4 = [(FudPersonalizationObjectInfo *)&v6 init];
  if (v4)
  {
    v4->_objectTag = [a3 decodeObjectForKey:@"requestObjectTag"];
    v4->_digest = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"requestDigest"];
    v4->_trustedSet = [a3 decodeBoolForKey:@"requestTrustedSet"];
    v4->_trusted = [a3 decodeBoolForKey:@"requestTrusted"];
    v4->_esecSet = [a3 decodeBoolForKey:@"requestEffectiveSecModeSet"];
    v4->_effectiveSecurityMode = [a3 decodeBoolForKey:@"requestEffectiveSecMode"];
    v4->_eproSet = [a3 decodeBoolForKey:@"requestEffectiveProdModeSet"];
    v4->_effectiveProductionMode = [a3 decodeBoolForKey:@"requestEffectiveProdMode"];
  }

  return v4;
}

@end