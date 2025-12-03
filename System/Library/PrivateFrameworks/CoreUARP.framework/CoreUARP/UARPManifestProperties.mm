@interface UARPManifestProperties
- (BOOL)isEqual:(id)equal;
- (UARPManifestProperties)initWithBoardID:(unsigned int)d chipID:(unsigned int)iD securityDomain:(unint64_t)domain securityMode:(BOOL)mode productionMode:(BOOL)productionMode;
- (UARPManifestProperties)initWithCoder:(id)coder;
- (const)securityDomainString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPManifestProperties

- (UARPManifestProperties)initWithBoardID:(unsigned int)d chipID:(unsigned int)iD securityDomain:(unint64_t)domain securityMode:(BOOL)mode productionMode:(BOOL)productionMode
{
  v13.receiver = self;
  v13.super_class = UARPManifestProperties;
  result = [(UARPManifestProperties *)&v13 init];
  if (result)
  {
    result->_boardID = d;
    result->_chipID = iD;
    result->_securityDomain = domain;
    result->_securityMode = mode;
    result->_productionMode = productionMode;
  }

  return result;
}

- (UARPManifestProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = UARPManifestProperties;
  v5 = [(UARPManifestProperties *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"boardID"];
    v5->_boardID = [v6 unsignedIntValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chipID"];
    v5->_chipID = [v7 unsignedIntValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"securityDomain"];
    v5->_securityDomain = [v8 unsignedIntegerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"securityMode"];
    v5->_securityMode = [v9 BOOLValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productionMode"];
    v5->_productionMode = [v10 BOOLValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ecID"];
    ecID = v5->_ecID;
    v5->_ecID = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chipEpoch"];
    chipEpoch = v5->_chipEpoch;
    v5->_chipEpoch = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enableMixMatch"];
    enableMixMatch = v5->_enableMixMatch;
    v5->_enableMixMatch = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"effectiveProductionMode"];
    v5->_effectiveProductionMode = [v19 BOOLValue];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"effectiveSecurityMode"];
    v5->_effectiveSecurityMode = [v20 BOOLValue];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsImg4"];
    v5->_supportsImg4 = [v21 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  boardID = self->_boardID;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInt:boardID];
  [coderCopy encodeObject:v7 forKey:@"boardID"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_chipID];
  [coderCopy encodeObject:v8 forKey:@"chipID"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_securityDomain];
  [coderCopy encodeObject:v9 forKey:@"securityDomain"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_securityMode];
  [coderCopy encodeObject:v10 forKey:@"securityMode"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_productionMode];
  [coderCopy encodeObject:v11 forKey:@"productionMode"];

  [coderCopy encodeObject:self->_ecID forKey:@"ecID"];
  [coderCopy encodeObject:self->_nonce forKey:@"nonce"];
  [coderCopy encodeObject:self->_chipEpoch forKey:@"chipEpoch"];
  [coderCopy encodeObject:self->_enableMixMatch forKey:@"enableMixMatch"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_effectiveProductionMode];
  [coderCopy encodeObject:v12 forKey:@"effectiveProductionMode"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_effectiveSecurityMode];
  [coderCopy encodeObject:v13 forKey:@"effectiveSecurityMode"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsImg4];
  [coderCopy encodeObject:v14 forKey:@"supportsImg4"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UARPManifestProperties);
  v4->_boardID = self->_boardID;
  v4->_chipID = self->_chipID;
  v4->_securityDomain = self->_securityDomain;
  v4->_securityMode = self->_securityMode;
  v4->_productionMode = self->_productionMode;
  [(UARPManifestProperties *)v4 setEcID:self->_ecID];
  [(UARPManifestProperties *)v4 setNonce:self->_nonce];
  [(UARPManifestProperties *)v4 setChipEpoch:self->_chipEpoch];
  [(UARPManifestProperties *)v4 setEnableMixMatch:self->_enableMixMatch];
  [(UARPManifestProperties *)v4 setEffectiveProductionMode:self->_effectiveProductionMode];
  [(UARPManifestProperties *)v4 setEffectiveSecurityMode:self->_effectiveSecurityMode];
  [(UARPManifestProperties *)v4 setSupportsImg4:self->_supportsImg4];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v22 = 1;
    }

    else
    {
      v5 = equalCopy;
      boardID = self->_boardID;
      if (boardID == [(UARPManifestProperties *)v5 boardID]&& (chipID = self->_chipID, chipID == [(UARPManifestProperties *)v5 chipID]) && (securityDomain = self->_securityDomain, securityDomain == [(UARPManifestProperties *)v5 securityDomain]) && (securityMode = self->_securityMode, securityMode == [(UARPManifestProperties *)v5 securityMode]) && (productionMode = self->_productionMode, productionMode == [(UARPManifestProperties *)v5 productionMode]))
      {
        ecID = self->_ecID;
        ecID = [(UARPManifestProperties *)v5 ecID];
        if (nullableObjectsEqual(ecID, ecID))
        {
          nonce = self->_nonce;
          nonce = [(UARPManifestProperties *)v5 nonce];
          if (nullableObjectsEqual(nonce, nonce))
          {
            chipEpoch = self->_chipEpoch;
            chipEpoch = [(UARPManifestProperties *)v5 chipEpoch];
            if (nullableObjectsEqual(chipEpoch, chipEpoch))
            {
              enableMixMatch = self->_enableMixMatch;
              enableMixMatch = [(UARPManifestProperties *)v5 enableMixMatch];
              if (nullableObjectsEqual(enableMixMatch, enableMixMatch) && (effectiveProductionMode = self->_effectiveProductionMode, effectiveProductionMode == [(UARPManifestProperties *)v5 effectiveProductionMode]) && (effectiveSecurityMode = self->_effectiveSecurityMode, effectiveSecurityMode == [(UARPManifestProperties *)v5 effectiveSecurityMode]))
              {
                supportsImg4 = self->_supportsImg4;
                v22 = supportsImg4 == [(UARPManifestProperties *)v5 supportsImg4];
              }

              else
              {
                v22 = 0;
              }
            }

            else
            {
              v22 = 0;
            }
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (const)securityDomainString
{
  securityDomain = self->_securityDomain;
  if (securityDomain > 3)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC2BF0[securityDomain];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:", v5];

  [v6 appendFormat:@" boardID=0x%x", self->_boardID];
  [v6 appendFormat:@" chipID=0x%x", self->_chipID];
  ecID = self->_ecID;
  if (ecID)
  {
    [v6 appendFormat:@" ecID=0x%llx", -[NSNumber unsignedLongLongValue](ecID, "unsignedLongLongValue")];
  }

  if (self->_nonce)
  {
    [v6 appendFormat:@" nonce=%@", self->_nonce];
  }

  [v6 appendFormat:@" securityDomain=%s", -[UARPManifestProperties securityDomainString](self, "securityDomainString")];
  if (self->_securityMode)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  [v6 appendFormat:@" securityMode=%s", v8];
  if (self->_productionMode)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  [v6 appendFormat:@" productionMode=%s", v9];
  chipEpoch = self->_chipEpoch;
  if (chipEpoch)
  {
    [v6 appendFormat:@" chipEpoch=0x%x", -[NSNumber unsignedIntValue](chipEpoch, "unsignedIntValue")];
  }

  if (self->_enableMixMatch)
  {
    [v6 appendFormat:@" enableMixMatch=%@", self->_enableMixMatch];
  }

  [v6 appendString:@">"];
  v11 = [MEMORY[0x277CCACA8] stringWithString:v6];

  return v11;
}

@end