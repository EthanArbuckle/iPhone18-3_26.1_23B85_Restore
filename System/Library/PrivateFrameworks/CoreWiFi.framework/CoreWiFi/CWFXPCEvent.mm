@interface CWFXPCEvent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToXPCEvent:(id)event;
- (CWFEventID)eventID;
- (CWFXPCEvent)init;
- (CWFXPCEvent)initWithCoder:(id)coder;
- (id)__descriptionForEventType;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFXPCEvent

- (CWFXPCEvent)init
{
  v6.receiver = self;
  v6.super_class = CWFXPCEvent;
  v2 = [(CWFXPCEvent *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = uUID;
  }

  return v2;
}

- (CWFEventID)eventID
{
  if (([(CWFXPCEvent *)self type]- 43) > 3)
  {
    type = [(CWFXPCEvent *)self type];
    interfaceName = [(CWFXPCEvent *)self interfaceName];
    v3 = [CWFEventID eventIDWithType:type interfaceName:interfaceName];
  }

  else
  {
    v3 = objc_alloc_init(CWFWiFiNetworkSharingEventID);
    [(CWFEventID *)v3 setType:[(CWFXPCEvent *)self type]];
    interfaceName2 = [(CWFXPCEvent *)self interfaceName];
    [(CWFEventID *)v3 setInterfaceName:interfaceName2];

    wifiNetworkSharingClientID = [(CWFXPCEvent *)self wifiNetworkSharingClientID];
    [(CWFWiFiNetworkSharingEventID *)v3 setClientID:wifiNetworkSharingClientID];

    interfaceName = [(CWFXPCEvent *)self wifiNetworkSharingNetworkListUpdateEventPredicateData];
    [(CWFWiFiNetworkSharingEventID *)v3 setNetworkListUpdateEventPredicateData:interfaceName];
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
  __descriptionForEventType = [(CWFXPCEvent *)self __descriptionForEventType];
  interfaceName = self->_interfaceName;
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  v7 = [uUIDString substringToIndex:5];
  v8 = sub_1E0BCC248(self->_timestamp);
  v9 = [v3 stringWithFormat:@"type=%@, intf=%@, uuid=%@, timestamp=%@, ackTimeout=%lluns, wifiNetworkSharingClientID=%@, hasWiFiNetworkSharingPredicate=%d, info=%@", __descriptionForEventType, interfaceName, v7, v8, self->_acknowledgementTimeout, self->_wifiNetworkSharingClientID, self->_wifiNetworkSharingNetworkListUpdateEventPredicateData != 0, self->_info];

  return v9;
}

- (BOOL)isEqualToXPCEvent:(id)event
{
  eventCopy = event;
  v6 = eventCopy;
  if (self->_UUID)
  {
    uUID = [eventCopy UUID];
    if (!uUID)
    {
      v15 = 0;
LABEL_42:

      goto LABEL_43;
    }

    UUID = self->_UUID;
    uUID2 = [v6 UUID];
    if (![(NSUUID *)UUID isEqual:uUID2])
    {
      v15 = 0;
LABEL_41:

      goto LABEL_42;
    }

    interfaceName = self->_interfaceName;
    interfaceName = [v6 interfaceName];
    if (interfaceName != interfaceName)
    {
      if (!self->_interfaceName || ([v6 interfaceName], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v15 = 0;
        goto LABEL_40;
      }

      v13 = v12;
      v14 = self->_interfaceName;
      interfaceName2 = [v6 interfaceName];
      if (![(NSString *)v14 isEqual:interfaceName2])
      {
        v15 = 0;
LABEL_39:

        goto LABEL_40;
      }

      v46 = v13;
    }

    wifiNetworkSharingClientID = self->_wifiNetworkSharingClientID;
    wifiNetworkSharingClientID = [v6 wifiNetworkSharingClientID];
    v18 = wifiNetworkSharingClientID;
    if (wifiNetworkSharingClientID == wifiNetworkSharingClientID)
    {
      v22 = interfaceName;
      v23 = interfaceName;
      v24 = wifiNetworkSharingClientID;
      v25 = wifiNetworkSharingClientID;
      v26 = interfaceName2;
    }

    else
    {
      if (!self->_wifiNetworkSharingClientID)
      {
LABEL_37:

        v15 = 0;
        goto LABEL_38;
      }

      wifiNetworkSharingClientID2 = [v6 wifiNetworkSharingClientID];
      if (!wifiNetworkSharingClientID2)
      {
        v15 = 0;
        goto LABEL_51;
      }

      v44 = interfaceName2;
      v42 = wifiNetworkSharingClientID2;
      v20 = self->_wifiNetworkSharingClientID;
      wifiNetworkSharingClientID3 = [v6 wifiNetworkSharingClientID];
      if (![(CWFWiFiNetworkSharingClientID *)v20 isEqual:wifiNetworkSharingClientID3])
      {
        v15 = 0;
        v13 = v46;
LABEL_46:

        interfaceName2 = v44;
        if (interfaceName == interfaceName)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v22 = interfaceName;
      v23 = interfaceName;
      v24 = v18;
      v25 = wifiNetworkSharingClientID;
      v26 = v44;
      v41 = wifiNetworkSharingClientID3;
    }

    wifiNetworkSharingNetworkListUpdateEventPredicateData = self->_wifiNetworkSharingNetworkListUpdateEventPredicateData;
    wifiNetworkSharingNetworkListUpdateEventPredicateData = [v6 wifiNetworkSharingNetworkListUpdateEventPredicateData];
    v43 = wifiNetworkSharingNetworkListUpdateEventPredicateData;
    if (wifiNetworkSharingNetworkListUpdateEventPredicateData == wifiNetworkSharingNetworkListUpdateEventPredicateData)
    {
      v44 = v26;
      v29 = v25;
      v18 = v24;
      interfaceName = v23;
      interfaceName = v22;
      v30 = wifiNetworkSharingNetworkListUpdateEventPredicateData;
    }

    else
    {
      interfaceName2 = v26;
      v29 = v25;
      v18 = v24;
      interfaceName = v23;
      interfaceName = v22;
      v30 = wifiNetworkSharingNetworkListUpdateEventPredicateData;
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
      wifiNetworkSharingNetworkListUpdateEventPredicateData2 = [v6 wifiNetworkSharingNetworkListUpdateEventPredicateData];
      if (![(NSData *)v45 isEqual:?])
      {
        v15 = 0;
LABEL_49:

        if (v29 == v18)
        {
LABEL_53:

LABEL_38:
          v13 = v46;
          if (interfaceName != interfaceName)
          {
            goto LABEL_39;
          }

LABEL_40:

          goto LABEL_41;
        }

LABEL_51:
        v13 = v46;

        if (interfaceName == interfaceName)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v44 = interfaceName2;
    }

    type = self->_type;
    if (type == [v6 type])
    {
      internalType = self->_internalType;
      if (internalType == [v6 internalType])
      {
        if (self->_timestamp)
        {
          timestamp = [v6 timestamp];
          if (timestamp)
          {
            v35 = timestamp;
            timestamp = self->_timestamp;
            timestamp2 = [v6 timestamp];
            v15 = [(NSDate *)timestamp isEqual:timestamp2];

            interfaceName2 = v44;
            if (v43 == v30)
            {

              if (v29 != v18)
              {
                v13 = v46;
                wifiNetworkSharingClientID3 = v41;
                goto LABEL_46;
              }

              goto LABEL_53;
            }

            goto LABEL_49;
          }
        }
      }
    }

    interfaceName2 = v44;
    if (v43 != v30)
    {
    }

    goto LABEL_35;
  }

  v15 = 0;
LABEL_43:

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFXPCEvent *)self isEqualToXPCEvent:v5];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [coderCopy encodeObject:selfCopy->_UUID forKey:@"_UUID"];
  [coderCopy encodeObject:selfCopy->_timestamp forKey:@"_timestamp"];
  [coderCopy encodeInteger:selfCopy->_type forKey:@"_type"];
  [coderCopy encodeInteger:selfCopy->_internalType forKey:@"_internalType"];
  [coderCopy encodeObject:selfCopy->_wifiNetworkSharingClientID forKey:@"_wifiNetworkSharingClientID"];
  [coderCopy encodeObject:selfCopy->_wifiNetworkSharingNetworkListUpdateEventPredicateData forKey:@"_wifiNetworkSharingNetworkListUpdateEventPredicateData"];
  [coderCopy encodeObject:selfCopy->_interfaceName forKey:@"_interfaceName"];
  [coderCopy encodeObject:selfCopy->_info forKey:@"_info"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:selfCopy->_acknowledgementTimeout];
  [coderCopy encodeObject:v5 forKey:@"_acknowledgementTimeout"];

  objc_sync_exit(selfCopy);
}

- (CWFXPCEvent)initWithCoder:(id)coder
{
  v24[17] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CWFXPCEvent;
  v5 = [(CWFXPCEvent *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_wifiNetworkSharingClientID"];
    wifiNetworkSharingClientID = v5->_wifiNetworkSharingClientID;
    v5->_wifiNetworkSharingClientID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_wifiNetworkSharingNetworkListUpdateEventPredicateData"];
    wifiNetworkSharingNetworkListUpdateEventPredicateData = v5->_wifiNetworkSharingNetworkListUpdateEventPredicateData;
    v5->_wifiNetworkSharingNetworkListUpdateEventPredicateData = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v14;

    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v5->_internalType = [coderCopy decodeIntegerForKey:@"_internalType"];
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
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"_info"];
    info = v5->_info;
    v5->_info = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_acknowledgementTimeout"];
    v5->_acknowledgementTimeout = [v20 unsignedLongLongValue];
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

@end