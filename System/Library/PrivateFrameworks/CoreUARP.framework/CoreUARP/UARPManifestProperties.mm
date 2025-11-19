@interface UARPManifestProperties
- (BOOL)isEqual:(id)a3;
- (UARPManifestProperties)initWithBoardID:(unsigned int)a3 chipID:(unsigned int)a4 securityDomain:(unint64_t)a5 securityMode:(BOOL)a6 productionMode:(BOOL)a7;
- (UARPManifestProperties)initWithCoder:(id)a3;
- (const)securityDomainString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPManifestProperties

- (UARPManifestProperties)initWithBoardID:(unsigned int)a3 chipID:(unsigned int)a4 securityDomain:(unint64_t)a5 securityMode:(BOOL)a6 productionMode:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = UARPManifestProperties;
  result = [(UARPManifestProperties *)&v13 init];
  if (result)
  {
    result->_boardID = a3;
    result->_chipID = a4;
    result->_securityDomain = a5;
    result->_securityMode = a6;
    result->_productionMode = a7;
  }

  return result;
}

- (UARPManifestProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = UARPManifestProperties;
  v5 = [(UARPManifestProperties *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"boardID"];
    v5->_boardID = [v6 unsignedIntValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chipID"];
    v5->_chipID = [v7 unsignedIntValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"securityDomain"];
    v5->_securityDomain = [v8 unsignedIntegerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"securityMode"];
    v5->_securityMode = [v9 BOOLValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productionMode"];
    v5->_productionMode = [v10 BOOLValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ecID"];
    ecID = v5->_ecID;
    v5->_ecID = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chipEpoch"];
    chipEpoch = v5->_chipEpoch;
    v5->_chipEpoch = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enableMixMatch"];
    enableMixMatch = v5->_enableMixMatch;
    v5->_enableMixMatch = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"effectiveProductionMode"];
    v5->_effectiveProductionMode = [v19 BOOLValue];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"effectiveSecurityMode"];
    v5->_effectiveSecurityMode = [v20 BOOLValue];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsImg4"];
    v5->_supportsImg4 = [v21 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  boardID = self->_boardID;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInt:boardID];
  [v6 encodeObject:v7 forKey:@"boardID"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_chipID];
  [v6 encodeObject:v8 forKey:@"chipID"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_securityDomain];
  [v6 encodeObject:v9 forKey:@"securityDomain"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_securityMode];
  [v6 encodeObject:v10 forKey:@"securityMode"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_productionMode];
  [v6 encodeObject:v11 forKey:@"productionMode"];

  [v6 encodeObject:self->_ecID forKey:@"ecID"];
  [v6 encodeObject:self->_nonce forKey:@"nonce"];
  [v6 encodeObject:self->_chipEpoch forKey:@"chipEpoch"];
  [v6 encodeObject:self->_enableMixMatch forKey:@"enableMixMatch"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_effectiveProductionMode];
  [v6 encodeObject:v12 forKey:@"effectiveProductionMode"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_effectiveSecurityMode];
  [v6 encodeObject:v13 forKey:@"effectiveSecurityMode"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsImg4];
  [v6 encodeObject:v14 forKey:@"supportsImg4"];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v22 = 1;
    }

    else
    {
      v5 = v4;
      boardID = self->_boardID;
      if (boardID == [(UARPManifestProperties *)v5 boardID]&& (chipID = self->_chipID, chipID == [(UARPManifestProperties *)v5 chipID]) && (securityDomain = self->_securityDomain, securityDomain == [(UARPManifestProperties *)v5 securityDomain]) && (securityMode = self->_securityMode, securityMode == [(UARPManifestProperties *)v5 securityMode]) && (productionMode = self->_productionMode, productionMode == [(UARPManifestProperties *)v5 productionMode]))
      {
        ecID = self->_ecID;
        v12 = [(UARPManifestProperties *)v5 ecID];
        if (nullableObjectsEqual(ecID, v12))
        {
          nonce = self->_nonce;
          v14 = [(UARPManifestProperties *)v5 nonce];
          if (nullableObjectsEqual(nonce, v14))
          {
            chipEpoch = self->_chipEpoch;
            v16 = [(UARPManifestProperties *)v5 chipEpoch];
            if (nullableObjectsEqual(chipEpoch, v16))
            {
              enableMixMatch = self->_enableMixMatch;
              v18 = [(UARPManifestProperties *)v5 enableMixMatch];
              if (nullableObjectsEqual(enableMixMatch, v18) && (effectiveProductionMode = self->_effectiveProductionMode, effectiveProductionMode == [(UARPManifestProperties *)v5 effectiveProductionMode]) && (effectiveSecurityMode = self->_effectiveSecurityMode, effectiveSecurityMode == [(UARPManifestProperties *)v5 effectiveSecurityMode]))
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