@interface FudPersonalizationObjectInfo
- (FudPersonalizationObjectInfo)initWithCoder:(id)coder;
- (FudPersonalizationObjectInfo)initWithTag:(id)tag;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FudPersonalizationObjectInfo

- (FudPersonalizationObjectInfo)initWithTag:(id)tag
{
  selfCopy = self;
  if (tag)
  {
    v18.receiver = self;
    v18.super_class = FudPersonalizationObjectInfo;
    selfCopy = [(FudPersonalizationObjectInfo *)&v18 init];
    if (selfCopy)
    {
      selfCopy->_objectTag = [tag copy];
      selfCopy->_digest = 0;
      selfCopy->_trustedSet = 0;
      *&selfCopy->_esecSet = 0;
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

  return selfCopy;
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

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_objectTag forKey:@"requestObjectTag"];
  [coder encodeObject:self->_digest forKey:@"requestDigest"];
  [coder encodeBool:self->_trustedSet forKey:@"requestTrustedSet"];
  [coder encodeBool:self->_trusted forKey:@"requestTrusted"];
  [coder encodeBool:self->_esecSet forKey:@"requestEffectiveSecModeSet"];
  [coder encodeBool:self->_effectiveSecurityMode forKey:@"requestEffectiveSecMode"];
  [coder encodeBool:self->_eproSet forKey:@"requestEffectiveProdModeSet"];
  effectiveProductionMode = self->_effectiveProductionMode;

  [coder encodeBool:effectiveProductionMode forKey:@"requestEffectiveProdMode"];
}

- (FudPersonalizationObjectInfo)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FudPersonalizationObjectInfo;
  v4 = [(FudPersonalizationObjectInfo *)&v6 init];
  if (v4)
  {
    v4->_objectTag = [coder decodeObjectForKey:@"requestObjectTag"];
    v4->_digest = [coder decodeObjectOfClass:objc_opt_class() forKey:@"requestDigest"];
    v4->_trustedSet = [coder decodeBoolForKey:@"requestTrustedSet"];
    v4->_trusted = [coder decodeBoolForKey:@"requestTrusted"];
    v4->_esecSet = [coder decodeBoolForKey:@"requestEffectiveSecModeSet"];
    v4->_effectiveSecurityMode = [coder decodeBoolForKey:@"requestEffectiveSecMode"];
    v4->_eproSet = [coder decodeBoolForKey:@"requestEffectiveProdModeSet"];
    v4->_effectiveProductionMode = [coder decodeBoolForKey:@"requestEffectiveProdMode"];
  }

  return v4;
}

@end