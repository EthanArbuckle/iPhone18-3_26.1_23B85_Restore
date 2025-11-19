@interface CWFAWDLPeerTrafficRegistration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAWDLPeerTrafficRegistration:(id)a3;
- (CWFAWDLPeerTrafficRegistration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializedRegistrationInfo;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFAWDLPeerTrafficRegistration

- (BOOL)isEqualToAWDLPeerTrafficRegistration:(id)a3
{
  v6 = a3;
  serviceName = self->_serviceName;
  v8 = [v6 serviceName];
  if (serviceName != v8)
  {
    if (!self->_serviceName || ([v6 serviceName], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v12 = 0;
      goto LABEL_22;
    }

    v3 = v9;
    v10 = self->_serviceName;
    v4 = [v6 serviceName];
    if (![(NSString *)v10 isEqual:v4])
    {
      v11 = 0;
LABEL_21:

      v12 = v11;
      goto LABEL_22;
    }
  }

  sessionFlags = self->_sessionFlags;
  if (sessionFlags == [v6 sessionFlags])
  {
    active = self->_active;
    if (active == [v6 isActive])
    {
      desiredBandwidth = self->_desiredBandwidth;
      if (desiredBandwidth == [v6 desiredBandwidth])
      {
        desiredLatency = self->_desiredLatency;
        if (desiredLatency == [v6 desiredLatency])
        {
          preferredChannel = self->_preferredChannel;
          if (preferredChannel == [v6 preferredChannel])
          {
            secondaryPreferredChannel = self->_secondaryPreferredChannel;
            if (secondaryPreferredChannel == [v6 secondaryPreferredChannel])
            {
              peerContextList = self->_peerContextList;
              v20 = [v6 peerContextList];
              v11 = peerContextList == v20;
              if (v11 || !self->_peerContextList)
              {
                goto LABEL_17;
              }

              v21 = [v6 peerContextList];
              if (v21)
              {
                v22 = v21;
                v23 = self->_peerContextList;
                v24 = [v6 peerContextList];
                v11 = [(NSArray *)v23 isEqual:v24];

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
  if (serviceName != v8)
  {
    goto LABEL_21;
  }

LABEL_22:

  return v12;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFAWDLPeerTrafficRegistration *)self isEqualToAWDLPeerTrafficRegistration:v5];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  serviceName = self->_serviceName;
  v9 = a3;
  [v9 encodeObject:serviceName forKey:@"_serviceName"];
  [v9 encodeBool:self->_active forKey:@"_active"];
  [v9 encodeInteger:self->_sessionFlags forKey:@"_sessionFlags"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_desiredBandwidth];
  [v9 encodeObject:v5 forKey:@"_desiredBandwidth"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_desiredLatency];
  [v9 encodeObject:v6 forKey:@"_desiredLatency"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_preferredChannel];
  [v9 encodeObject:v7 forKey:@"_preferredChannel"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_secondaryPreferredChannel];
  [v9 encodeObject:v8 forKey:@"_secondaryPreferredChannel"];

  [v9 encodeObject:self->_peerContextList forKey:@"_peerContextList"];
}

- (CWFAWDLPeerTrafficRegistration)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CWFAWDLPeerTrafficRegistration;
  v5 = [(CWFAWDLPeerTrafficRegistration *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serviceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v5->_active = [v4 decodeBoolForKey:@"_active"];
    v5->_sessionFlags = [v4 decodeIntegerForKey:@"_sessionFlags"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_desiredBandwidth"];
    v5->_desiredBandwidth = [v8 unsignedIntegerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_desiredLatency"];
    v5->_desiredLatency = [v9 unsignedIntegerValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preferredChannel"];
    v5->_preferredChannel = [v10 unsignedIntegerValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_secondaryPreferredChannel"];
    v5->_secondaryPreferredChannel = [v11 unsignedIntegerValue];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"_peerContextList"];
    peerContextList = v5->_peerContextList;
    v5->_peerContextList = v15;
  }

  return v5;
}

- (id)serializedRegistrationInfo
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(CWFAWDLPeerTrafficRegistration *)self serviceName];
  [v3 setObject:v4 forKeyedSubscript:@"TR_SRV_NAME"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAWDLPeerTrafficRegistration isActive](self, "isActive")}];
  [v3 setObject:v5 forKeyedSubscript:@"TR_ACTIVE"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CWFAWDLPeerTrafficRegistration sessionFlags](self, "sessionFlags")}];
  [v3 setObject:v6 forKeyedSubscript:@"TR_SESSION_FLAGS"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAWDLPeerTrafficRegistration desiredBandwidth](self, "desiredBandwidth")}];
  [v3 setObject:v7 forKeyedSubscript:@"TR_DESIRED_BW"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAWDLPeerTrafficRegistration desiredLatency](self, "desiredLatency")}];
  [v3 setObject:v8 forKeyedSubscript:@"TR_DESIRED_LATENCY"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAWDLPeerTrafficRegistration preferredChannel](self, "preferredChannel")}];
  [v3 setObject:v9 forKeyedSubscript:@"AWDL_TR_CHANNEL"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAWDLPeerTrafficRegistration secondaryPreferredChannel](self, "secondaryPreferredChannel")}];
  v27 = v3;
  [v3 setObject:v10 forKeyedSubscript:@"AWDL_TR_SEC_CHANNEL"];

  v11 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [(CWFAWDLPeerTrafficRegistration *)self peerContextList];
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [MEMORY[0x1E695DF90] dictionary];
        v19 = [v17 MACAddress];

        if (v19)
        {
          v20 = [v17 MACAddress];
          v21 = ether_aton([v20 UTF8String]);

          if (v21)
          {
            v22 = [MEMORY[0x1E695DEF0] dataWithBytes:v21 length:6];
            [v18 setObject:v22 forKeyedSubscript:@"TR_PEER_ADDRESS"];
          }
        }

        v23 = [v17 interfaceName];
        [v18 setObject:v23 forKeyedSubscript:@"TR_IFNAME"];

        [v11 addObject:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  [v27 setObject:v11 forKeyedSubscript:@"TR_PEER_CONTEXTS"];
  v24 = [v27 copy];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

@end