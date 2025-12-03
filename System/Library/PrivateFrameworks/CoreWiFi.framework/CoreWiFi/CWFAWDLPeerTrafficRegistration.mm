@interface CWFAWDLPeerTrafficRegistration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAWDLPeerTrafficRegistration:(id)registration;
- (CWFAWDLPeerTrafficRegistration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializedRegistrationInfo;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFAWDLPeerTrafficRegistration

- (BOOL)isEqualToAWDLPeerTrafficRegistration:(id)registration
{
  registrationCopy = registration;
  serviceName = self->_serviceName;
  serviceName = [registrationCopy serviceName];
  if (serviceName != serviceName)
  {
    if (!self->_serviceName || ([registrationCopy serviceName], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v12 = 0;
      goto LABEL_22;
    }

    v3 = v9;
    v10 = self->_serviceName;
    serviceName2 = [registrationCopy serviceName];
    if (![(NSString *)v10 isEqual:serviceName2])
    {
      v11 = 0;
LABEL_21:

      v12 = v11;
      goto LABEL_22;
    }
  }

  sessionFlags = self->_sessionFlags;
  if (sessionFlags == [registrationCopy sessionFlags])
  {
    active = self->_active;
    if (active == [registrationCopy isActive])
    {
      desiredBandwidth = self->_desiredBandwidth;
      if (desiredBandwidth == [registrationCopy desiredBandwidth])
      {
        desiredLatency = self->_desiredLatency;
        if (desiredLatency == [registrationCopy desiredLatency])
        {
          preferredChannel = self->_preferredChannel;
          if (preferredChannel == [registrationCopy preferredChannel])
          {
            secondaryPreferredChannel = self->_secondaryPreferredChannel;
            if (secondaryPreferredChannel == [registrationCopy secondaryPreferredChannel])
            {
              peerContextList = self->_peerContextList;
              peerContextList = [registrationCopy peerContextList];
              v11 = peerContextList == peerContextList;
              if (v11 || !self->_peerContextList)
              {
                goto LABEL_17;
              }

              peerContextList2 = [registrationCopy peerContextList];
              if (peerContextList2)
              {
                v22 = peerContextList2;
                v23 = self->_peerContextList;
                peerContextList3 = [registrationCopy peerContextList];
                v11 = [(NSArray *)v23 isEqual:peerContextList3];

LABEL_17:
                v12 = v11;
                goto LABEL_20;
              }
            }
          }
        }
      }
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_20:
  if (serviceName != serviceName)
  {
    goto LABEL_21;
  }

LABEL_22:

  return v12;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFAWDLPeerTrafficRegistration *)self isEqualToAWDLPeerTrafficRegistration:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_serviceName hash];
  sessionFlags = self->_sessionFlags;
  active = self->_active;
  v6 = *&self->_desiredBandwidth;
  v10 = v6;
  v11 = *&self->_preferredChannel;
  v7 = [(NSArray *)self->_peerContextList hash];
  v8 = veorq_s8(v10, v11);
  return *&veor_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) ^ v7 ^ sessionFlags ^ active ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFAWDLPeerTrafficRegistration allocWithZone:?]];
  [(CWFAWDLPeerTrafficRegistration *)v4 setServiceName:self->_serviceName];
  [(CWFAWDLPeerTrafficRegistration *)v4 setActive:self->_active];
  [(CWFAWDLPeerTrafficRegistration *)v4 setSessionFlags:self->_sessionFlags];
  [(CWFAWDLPeerTrafficRegistration *)v4 setDesiredBandwidth:self->_desiredBandwidth];
  [(CWFAWDLPeerTrafficRegistration *)v4 setDesiredLatency:self->_desiredLatency];
  [(CWFAWDLPeerTrafficRegistration *)v4 setPreferredChannel:self->_preferredChannel];
  [(CWFAWDLPeerTrafficRegistration *)v4 setSecondaryPreferredChannel:self->_secondaryPreferredChannel];
  [(CWFAWDLPeerTrafficRegistration *)v4 setPeerContextList:self->_peerContextList];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  serviceName = self->_serviceName;
  coderCopy = coder;
  [coderCopy encodeObject:serviceName forKey:@"_serviceName"];
  [coderCopy encodeBool:self->_active forKey:@"_active"];
  [coderCopy encodeInteger:self->_sessionFlags forKey:@"_sessionFlags"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_desiredBandwidth];
  [coderCopy encodeObject:v5 forKey:@"_desiredBandwidth"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_desiredLatency];
  [coderCopy encodeObject:v6 forKey:@"_desiredLatency"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_preferredChannel];
  [coderCopy encodeObject:v7 forKey:@"_preferredChannel"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_secondaryPreferredChannel];
  [coderCopy encodeObject:v8 forKey:@"_secondaryPreferredChannel"];

  [coderCopy encodeObject:self->_peerContextList forKey:@"_peerContextList"];
}

- (CWFAWDLPeerTrafficRegistration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CWFAWDLPeerTrafficRegistration;
  v5 = [(CWFAWDLPeerTrafficRegistration *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serviceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v5->_active = [coderCopy decodeBoolForKey:@"_active"];
    v5->_sessionFlags = [coderCopy decodeIntegerForKey:@"_sessionFlags"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_desiredBandwidth"];
    v5->_desiredBandwidth = [v8 unsignedIntegerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_desiredLatency"];
    v5->_desiredLatency = [v9 unsignedIntegerValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_preferredChannel"];
    v5->_preferredChannel = [v10 unsignedIntegerValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_secondaryPreferredChannel"];
    v5->_secondaryPreferredChannel = [v11 unsignedIntegerValue];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_peerContextList"];
    peerContextList = v5->_peerContextList;
    v5->_peerContextList = v15;
  }

  return v5;
}

- (id)serializedRegistrationInfo
{
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  serviceName = [(CWFAWDLPeerTrafficRegistration *)self serviceName];
  [dictionary setObject:serviceName forKeyedSubscript:@"TR_SRV_NAME"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAWDLPeerTrafficRegistration isActive](self, "isActive")}];
  [dictionary setObject:v5 forKeyedSubscript:@"TR_ACTIVE"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CWFAWDLPeerTrafficRegistration sessionFlags](self, "sessionFlags")}];
  [dictionary setObject:v6 forKeyedSubscript:@"TR_SESSION_FLAGS"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAWDLPeerTrafficRegistration desiredBandwidth](self, "desiredBandwidth")}];
  [dictionary setObject:v7 forKeyedSubscript:@"TR_DESIRED_BW"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAWDLPeerTrafficRegistration desiredLatency](self, "desiredLatency")}];
  [dictionary setObject:v8 forKeyedSubscript:@"TR_DESIRED_LATENCY"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAWDLPeerTrafficRegistration preferredChannel](self, "preferredChannel")}];
  [dictionary setObject:v9 forKeyedSubscript:@"AWDL_TR_CHANNEL"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAWDLPeerTrafficRegistration secondaryPreferredChannel](self, "secondaryPreferredChannel")}];
  v27 = dictionary;
  [dictionary setObject:v10 forKeyedSubscript:@"AWDL_TR_SEC_CHANNEL"];

  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  peerContextList = [(CWFAWDLPeerTrafficRegistration *)self peerContextList];
  v13 = [peerContextList countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(peerContextList);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        mACAddress = [v17 MACAddress];

        if (mACAddress)
        {
          mACAddress2 = [v17 MACAddress];
          v21 = ether_aton([mACAddress2 UTF8String]);

          if (v21)
          {
            v22 = [MEMORY[0x1E695DEF0] dataWithBytes:v21 length:6];
            [dictionary2 setObject:v22 forKeyedSubscript:@"TR_PEER_ADDRESS"];
          }
        }

        interfaceName = [v17 interfaceName];
        [dictionary2 setObject:interfaceName forKeyedSubscript:@"TR_IFNAME"];

        [array addObject:dictionary2];
      }

      v14 = [peerContextList countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  [v27 setObject:array forKeyedSubscript:@"TR_PEER_CONTEXTS"];
  v24 = [v27 copy];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

@end