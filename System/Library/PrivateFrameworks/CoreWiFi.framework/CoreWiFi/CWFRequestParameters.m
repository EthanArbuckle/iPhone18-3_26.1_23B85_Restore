@interface CWFRequestParameters
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequestParameters:(id)a3;
- (CWFRequestParameters)init;
- (CWFRequestParameters)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFRequestParameters

- (CWFRequestParameters)init
{
  v6.receiver = self;
  v6.super_class = CWFRequestParameters;
  v2 = [(CWFRequestParameters *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = v3;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  interfaceName = self->_interfaceName;
  timeout = self->_timeout;
  v6 = [(NSUUID *)self->_UUID UUIDString];
  v7 = [v6 substringToIndex:5];
  v8 = [v3 stringWithFormat:@"intf=%@, timeout=%lluns, uuid=%@, priority=%ld, qos=%ld, wifiNetworkSharing=[bundleIDOverride=%@, accessoryID=%@, hasPredicateData=%d]", interfaceName, timeout, v7, self->_queuePriority, self->_qualityOfService, self->_wifiNetworkSharingBundleIDOverride, self->_wifiNetworkSharingAccessoryID, self->_wifiNetworkSharingNetworkListUpdateEventPredicateData != 0];

  return v8;
}

- (BOOL)isEqualToRequestParameters:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self->_UUID)
  {
    v8 = [v6 UUID];
    if (!v8)
    {
      v15 = 0;
LABEL_43:

      goto LABEL_44;
    }

    UUID = self->_UUID;
    v10 = [v7 UUID];
    if (![(NSUUID *)UUID isEqual:v10])
    {
      v15 = 0;
LABEL_42:

      goto LABEL_43;
    }

    interfaceName = self->_interfaceName;
    v12 = [v7 interfaceName];
    if (interfaceName != v12)
    {
      if (!self->_interfaceName || ([v7 interfaceName], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v15 = 0;
        goto LABEL_41;
      }

      v3 = v13;
      v14 = self->_interfaceName;
      v4 = [v7 interfaceName];
      if (![(NSString *)v14 isEqual:v4])
      {
        v15 = 0;
LABEL_40:

        goto LABEL_41;
      }
    }

    virtualInterfaceRole = self->_virtualInterfaceRole;
    if (virtualInterfaceRole == [v7 virtualInterfaceRole])
    {
      timeout = self->_timeout;
      if (timeout == [v7 timeout])
      {
        qualityOfService = self->_qualityOfService;
        if (qualityOfService == [v7 qualityOfService])
        {
          queuePriority = self->_queuePriority;
          if (queuePriority == [v7 queuePriority])
          {
            wifiNetworkSharingAccessoryID = self->_wifiNetworkSharingAccessoryID;
            v47 = [v7 wifiNetworkSharingAccessoryID];
            if (wifiNetworkSharingAccessoryID == v47)
            {
              v46 = wifiNetworkSharingAccessoryID;
LABEL_24:
              wifiNetworkSharingNetworkListUpdateEventPredicateData = self->_wifiNetworkSharingNetworkListUpdateEventPredicateData;
              v26 = [v7 wifiNetworkSharingNetworkListUpdateEventPredicateData];
              v45 = v26;
              if (wifiNetworkSharingNetworkListUpdateEventPredicateData != v26)
              {
                if (!self->_wifiNetworkSharingNetworkListUpdateEventPredicateData)
                {
LABEL_49:
                  v15 = 0;
                  goto LABEL_50;
                }

                v27 = [v7 wifiNetworkSharingNetworkListUpdateEventPredicateData];
                if (!v27)
                {
                  v15 = 0;
                  goto LABEL_46;
                }

                v42 = v27;
                v28 = self->_wifiNetworkSharingNetworkListUpdateEventPredicateData;
                v29 = [v7 wifiNetworkSharingNetworkListUpdateEventPredicateData];
                v30 = v28;
                v31 = v29;
                if (([(NSData *)v30 isEqual:v29]& 1) == 0)
                {

                  v15 = 0;
                  goto LABEL_54;
                }

                v41 = v31;
              }

              wifiNetworkSharingBundleIDOverride = self->_wifiNetworkSharingBundleIDOverride;
              v33 = [v7 wifiNetworkSharingBundleIDOverride];
              v15 = wifiNetworkSharingBundleIDOverride == v33;
              if (v15 || !self->_wifiNetworkSharingBundleIDOverride)
              {

                v26 = v45;
                if (wifiNetworkSharingNetworkListUpdateEventPredicateData == v45)
                {
LABEL_50:
                  v38 = v43;
                  v24 = v47;

LABEL_51:
                  if (v46 != v24)
                  {

LABEL_56:
                  }

LABEL_57:

LABEL_39:
                  if (interfaceName != v12)
                  {
                    goto LABEL_40;
                  }

LABEL_41:

                  goto LABEL_42;
                }
              }

              else
              {
                v40 = v33;
                v34 = [v7 wifiNetworkSharingBundleIDOverride];
                if (v34)
                {
                  v35 = self->_wifiNetworkSharingBundleIDOverride;
                  v39 = v34;
                  v36 = [v7 wifiNetworkSharingBundleIDOverride];
                  v15 = [(NSString *)v35 isEqual:v36];

                  if (wifiNetworkSharingNetworkListUpdateEventPredicateData != v45)
                  {
                  }

LABEL_54:
                  v24 = v47;
                  if (v46 != v47)
                  {

                    goto LABEL_56;
                  }

                  goto LABEL_57;
                }

                v26 = v45;
                if (wifiNetworkSharingNetworkListUpdateEventPredicateData == v45)
                {
                  goto LABEL_49;
                }
              }

LABEL_46:
              v38 = v43;
              v24 = v47;

              goto LABEL_51;
            }

            if (!self->_wifiNetworkSharingAccessoryID || ([v7 wifiNetworkSharingAccessoryID], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
            {
              v15 = 0;
              v24 = v47;
              goto LABEL_57;
            }

            v46 = wifiNetworkSharingAccessoryID;
            v44 = v21;
            v22 = self->_wifiNetworkSharingAccessoryID;
            v23 = [v7 wifiNetworkSharingAccessoryID];
            if (([(NSString *)v22 isEqual:v23]& 1) != 0)
            {
              v43 = v23;
              goto LABEL_24;
            }
          }
        }
      }
    }

    v15 = 0;
    goto LABEL_39;
  }

  v15 = 0;
LABEL_44:

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFRequestParameters *)self isEqualToRequestParameters:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_UUID hash];
  v4 = [(NSString *)self->_interfaceName hash]^ v3 ^ self->_virtualInterfaceRole ^ self->_timeout ^ self->_qualityOfService;
  queuePriority = self->_queuePriority;
  v6 = queuePriority ^ [(NSString *)self->_wifiNetworkSharingAccessoryID hash];
  v7 = v4 ^ v6 ^ [(NSData *)self->_wifiNetworkSharingNetworkListUpdateEventPredicateData hash];
  return v7 ^ [(NSString *)self->_wifiNetworkSharingBundleIDOverride hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFRequestParameters allocWithZone:?]];
  [(CWFRequestParameters *)v4 setUUID:self->_UUID];
  [(CWFRequestParameters *)v4 setInterfaceName:self->_interfaceName];
  [(CWFRequestParameters *)v4 setQualityOfService:self->_qualityOfService];
  [(CWFRequestParameters *)v4 setQueuePriority:self->_queuePriority];
  [(CWFRequestParameters *)v4 setVirtualInterfaceRole:self->_virtualInterfaceRole];
  [(CWFRequestParameters *)v4 setTimeout:self->_timeout];
  [(CWFRequestParameters *)v4 setWifiNetworkSharingAccessoryID:self->_wifiNetworkSharingAccessoryID];
  [(CWFRequestParameters *)v4 setWifiNetworkSharingNetworkListUpdateEventPredicateData:self->_wifiNetworkSharingNetworkListUpdateEventPredicateData];
  [(CWFRequestParameters *)v4 setWifiNetworkSharingBundleIDOverride:self->_wifiNetworkSharingBundleIDOverride];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v6 = a3;
  [v6 encodeObject:UUID forKey:@"_UUID"];
  [v6 encodeObject:self->_interfaceName forKey:@"_interfaceName"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timeout];
  [v6 encodeObject:v5 forKey:@"_timeout"];

  [v6 encodeInteger:self->_qualityOfService forKey:@"_qualityOfService"];
  [v6 encodeInteger:self->_queuePriority forKey:@"_queuePriority"];
  [v6 encodeInteger:self->_virtualInterfaceRole forKey:@"_virtualInterfaceRole"];
  [v6 encodeObject:self->_wifiNetworkSharingAccessoryID forKey:@"_wifiNetworkSharingAccessoryID"];
  [v6 encodeObject:self->_wifiNetworkSharingNetworkListUpdateEventPredicateData forKey:@"_wifiNetworkSharingNetworkListUpdateEventPredicateData"];
  [v6 encodeObject:self->_wifiNetworkSharingBundleIDOverride forKey:@"_wifiNetworkSharingBundleIDOverride"];
}

- (CWFRequestParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CWFRequestParameters;
  v5 = [(CWFRequestParameters *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timeout"];
    v5->_timeout = [v10 unsignedLongLongValue];

    v5->_qualityOfService = [v4 decodeIntegerForKey:@"_qualityOfService"];
    v5->_queuePriority = [v4 decodeIntegerForKey:@"_queuePriority"];
    v5->_virtualInterfaceRole = [v4 decodeIntegerForKey:@"_virtualInterfaceRole"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_wifiNetworkSharingAccessoryID"];
    wifiNetworkSharingAccessoryID = v5->_wifiNetworkSharingAccessoryID;
    v5->_wifiNetworkSharingAccessoryID = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_wifiNetworkSharingNetworkListUpdateEventPredicateData"];
    wifiNetworkSharingNetworkListUpdateEventPredicateData = v5->_wifiNetworkSharingNetworkListUpdateEventPredicateData;
    v5->_wifiNetworkSharingNetworkListUpdateEventPredicateData = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_wifiNetworkSharingBundleIDOverride"];
    wifiNetworkSharingBundleIDOverride = v5->_wifiNetworkSharingBundleIDOverride;
    v5->_wifiNetworkSharingBundleIDOverride = v15;
  }

  return v5;
}

@end