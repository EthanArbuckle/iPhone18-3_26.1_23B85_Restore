@interface CWFXPCEvent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToXPCEvent:(id)a3;
- (CWFEventID)eventID;
- (CWFXPCEvent)init;
- (CWFXPCEvent)initWithCoder:(id)a3;
- (id)__descriptionForEventType;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFXPCEvent

- (CWFXPCEvent)init
{
  v6.receiver = self;
  v6.super_class = CWFXPCEvent;
  v2 = [(CWFXPCEvent *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = v3;
  }

  return v2;
}

- (CWFEventID)eventID
{
  if (([(CWFXPCEvent *)self type]- 43) > 3)
  {
    v7 = [(CWFXPCEvent *)self type];
    v6 = [(CWFXPCEvent *)self interfaceName];
    v3 = [CWFEventID eventIDWithType:v7 interfaceName:v6];
  }

  else
  {
    v3 = objc_alloc_init(CWFWiFiNetworkSharingEventID);
    [(CWFEventID *)v3 setType:[(CWFXPCEvent *)self type]];
    v4 = [(CWFXPCEvent *)self interfaceName];
    [(CWFEventID *)v3 setInterfaceName:v4];

    v5 = [(CWFXPCEvent *)self wifiNetworkSharingClientID];
    [(CWFWiFiNetworkSharingEventID *)v3 setClientID:v5];

    v6 = [(CWFXPCEvent *)self wifiNetworkSharingNetworkListUpdateEventPredicateData];
    [(CWFWiFiNetworkSharingEventID *)v3 setNetworkListUpdateEventPredicateData:v6];
  }

  return v3;
}

- (id)__descriptionForEventType
{
  internalType = self->_internalType;
  if (internalType)
  {
    sub_1E0BECB08(internalType);
  }

  else
  {
    sub_1E0BC9038(self->_type);
  }
  v4 = ;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CWFXPCEvent *)self __descriptionForEventType];
  interfaceName = self->_interfaceName;
  v6 = [(NSUUID *)self->_UUID UUIDString];
  v7 = [v6 substringToIndex:5];
  v8 = sub_1E0BCC248(self->_timestamp);
  v9 = [v3 stringWithFormat:@"type=%@, intf=%@, uuid=%@, timestamp=%@, ackTimeout=%lluns, wifiNetworkSharingClientID=%@, hasWiFiNetworkSharingPredicate=%d, info=%@", v4, interfaceName, v7, v8, self->_acknowledgementTimeout, self->_wifiNetworkSharingClientID, self->_wifiNetworkSharingNetworkListUpdateEventPredicateData != 0, self->_info];

  return v9;
}

- (BOOL)isEqualToXPCEvent:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_UUID)
  {
    v7 = [v5 UUID];
    if (!v7)
    {
      v15 = 0;
LABEL_42:

      goto LABEL_43;
    }

    UUID = self->_UUID;
    v9 = [v6 UUID];
    if (![(NSUUID *)UUID isEqual:v9])
    {
      v15 = 0;
LABEL_41:

      goto LABEL_42;
    }

    interfaceName = self->_interfaceName;
    v11 = [v6 interfaceName];
    if (interfaceName != v11)
    {
      if (!self->_interfaceName || ([v6 interfaceName], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v15 = 0;
        goto LABEL_40;
      }

      v13 = v12;
      v14 = self->_interfaceName;
      v3 = [v6 interfaceName];
      if (![(NSString *)v14 isEqual:v3])
      {
        v15 = 0;
LABEL_39:

        goto LABEL_40;
      }

      v46 = v13;
    }

    wifiNetworkSharingClientID = self->_wifiNetworkSharingClientID;
    v17 = [v6 wifiNetworkSharingClientID];
    v18 = v17;
    if (wifiNetworkSharingClientID == v17)
    {
      v22 = v11;
      v23 = interfaceName;
      v24 = v17;
      v25 = wifiNetworkSharingClientID;
      v26 = v3;
    }

    else
    {
      if (!self->_wifiNetworkSharingClientID)
      {
LABEL_37:

        v15 = 0;
        goto LABEL_38;
      }

      v19 = [v6 wifiNetworkSharingClientID];
      if (!v19)
      {
        v15 = 0;
        goto LABEL_51;
      }

      v44 = v3;
      v42 = v19;
      v20 = self->_wifiNetworkSharingClientID;
      v21 = [v6 wifiNetworkSharingClientID];
      if (![(CWFWiFiNetworkSharingClientID *)v20 isEqual:v21])
      {
        v15 = 0;
        v13 = v46;
LABEL_46:

        v3 = v44;
        if (interfaceName == v11)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v22 = v11;
      v23 = interfaceName;
      v24 = v18;
      v25 = wifiNetworkSharingClientID;
      v26 = v44;
      v41 = v21;
    }

    wifiNetworkSharingNetworkListUpdateEventPredicateData = self->_wifiNetworkSharingNetworkListUpdateEventPredicateData;
    v28 = [v6 wifiNetworkSharingNetworkListUpdateEventPredicateData];
    v43 = wifiNetworkSharingNetworkListUpdateEventPredicateData;
    if (wifiNetworkSharingNetworkListUpdateEventPredicateData == v28)
    {
      v44 = v26;
      v29 = v25;
      v18 = v24;
      interfaceName = v23;
      v11 = v22;
      v30 = v28;
    }

    else
    {
      v3 = v26;
      v29 = v25;
      v18 = v24;
      interfaceName = v23;
      v11 = v22;
      v30 = v28;
      if (!self->_wifiNetworkSharingNetworkListUpdateEventPredicateData || ([v6 wifiNetworkSharingNetworkListUpdateEventPredicateData], (v31 = objc_claimAutoreleasedReturnValue()) == 0))
      {
LABEL_35:

        if (v29 != v18)
        {
        }

        goto LABEL_37;
      }

      v40 = v31;
      v45 = self->_wifiNetworkSharingNetworkListUpdateEventPredicateData;
      v39 = [v6 wifiNetworkSharingNetworkListUpdateEventPredicateData];
      if (![(NSData *)v45 isEqual:?])
      {
        v15 = 0;
LABEL_49:

        if (v29 == v18)
        {
LABEL_53:

LABEL_38:
          v13 = v46;
          if (interfaceName != v11)
          {
            goto LABEL_39;
          }

LABEL_40:

          goto LABEL_41;
        }

LABEL_51:
        v13 = v46;

        if (interfaceName == v11)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v44 = v3;
    }

    type = self->_type;
    if (type == [v6 type])
    {
      internalType = self->_internalType;
      if (internalType == [v6 internalType])
      {
        if (self->_timestamp)
        {
          v34 = [v6 timestamp];
          if (v34)
          {
            v35 = v34;
            timestamp = self->_timestamp;
            v38 = [v6 timestamp];
            v15 = [(NSDate *)timestamp isEqual:v38];

            v3 = v44;
            if (v43 == v30)
            {

              if (v29 != v18)
              {
                v13 = v46;
                v21 = v41;
                goto LABEL_46;
              }

              goto LABEL_53;
            }

            goto LABEL_49;
          }
        }
      }
    }

    v3 = v44;
    if (v43 != v30)
    {
    }

    goto LABEL_35;
  }

  v15 = 0;
LABEL_43:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFXPCEvent *)self isEqualToXPCEvent:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = self->_type ^ self->_internalType ^ [(NSUUID *)self->_UUID hash];
  v4 = [(NSString *)self->_interfaceName hash];
  v5 = v3 ^ v4 ^ [(NSDate *)self->_timestamp hash];
  v6 = [(CWFWiFiNetworkSharingClientID *)self->_wifiNetworkSharingClientID hash];
  return v5 ^ v6 ^ [(NSData *)self->_wifiNetworkSharingNetworkListUpdateEventPredicateData hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFXPCEvent allocWithZone:?]];
  [(CWFXPCEvent *)v4 setUUID:self->_UUID];
  [(CWFXPCEvent *)v4 setType:self->_type];
  [(CWFXPCEvent *)v4 setInternalType:self->_internalType];
  [(CWFXPCEvent *)v4 setInterfaceName:self->_interfaceName];
  [(CWFXPCEvent *)v4 setWifiNetworkSharingClientID:self->_wifiNetworkSharingClientID];
  [(CWFXPCEvent *)v4 setWifiNetworkSharingNetworkListUpdateEventPredicateData:self->_wifiNetworkSharingNetworkListUpdateEventPredicateData];
  [(CWFXPCEvent *)v4 setTimestamp:self->_timestamp];
  [(CWFXPCEvent *)v4 setInfo:self->_info];
  [(CWFXPCEvent *)v4 setAcknowledgementTimeout:self->_acknowledgementTimeout];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v6 encodeObject:v4->_UUID forKey:@"_UUID"];
  [v6 encodeObject:v4->_timestamp forKey:@"_timestamp"];
  [v6 encodeInteger:v4->_type forKey:@"_type"];
  [v6 encodeInteger:v4->_internalType forKey:@"_internalType"];
  [v6 encodeObject:v4->_wifiNetworkSharingClientID forKey:@"_wifiNetworkSharingClientID"];
  [v6 encodeObject:v4->_wifiNetworkSharingNetworkListUpdateEventPredicateData forKey:@"_wifiNetworkSharingNetworkListUpdateEventPredicateData"];
  [v6 encodeObject:v4->_interfaceName forKey:@"_interfaceName"];
  [v6 encodeObject:v4->_info forKey:@"_info"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4->_acknowledgementTimeout];
  [v6 encodeObject:v5 forKey:@"_acknowledgementTimeout"];

  objc_sync_exit(v4);
}

- (CWFXPCEvent)initWithCoder:(id)a3
{
  v24[17] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CWFXPCEvent;
  v5 = [(CWFXPCEvent *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_wifiNetworkSharingClientID"];
    wifiNetworkSharingClientID = v5->_wifiNetworkSharingClientID;
    v5->_wifiNetworkSharingClientID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_wifiNetworkSharingNetworkListUpdateEventPredicateData"];
    wifiNetworkSharingNetworkListUpdateEventPredicateData = v5->_wifiNetworkSharingNetworkListUpdateEventPredicateData;
    v5->_wifiNetworkSharingNetworkListUpdateEventPredicateData = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v14;

    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v5->_internalType = [v4 decodeIntegerForKey:@"_internalType"];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v24[3] = objc_opt_class();
    v24[4] = objc_opt_class();
    v24[5] = objc_opt_class();
    v24[6] = objc_opt_class();
    v24[7] = objc_opt_class();
    v24[8] = objc_opt_class();
    v24[9] = objc_opt_class();
    v24[10] = objc_opt_class();
    v24[11] = objc_opt_class();
    v24[12] = objc_opt_class();
    v24[13] = objc_opt_class();
    v24[14] = objc_opt_class();
    v24[15] = objc_opt_class();
    v24[16] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:17];
    v17 = [MEMORY[0x1E695DFD8] setWithArray:v16];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"_info"];
    info = v5->_info;
    v5->_info = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_acknowledgementTimeout"];
    v5->_acknowledgementTimeout = [v20 unsignedLongLongValue];
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

@end