@interface CWFAWDLPeerAssistedDiscoveryParameters
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAWDLParameters:(id)a3;
- (CWFAWDLPeerAssistedDiscoveryParameters)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFAWDLPeerAssistedDiscoveryParameters

- (BOOL)isEqualToAWDLParameters:(id)a3
{
  v6 = a3;
  localMasterChannel = self->_localMasterChannel;
  if (localMasterChannel == [v6 localMasterChannel])
  {
    localPreferredChannel = self->_localPreferredChannel;
    if (localPreferredChannel == [v6 localPreferredChannel])
    {
      localSecondaryPreferredChannel = self->_localSecondaryPreferredChannel;
      if (localSecondaryPreferredChannel == [v6 localSecondaryPreferredChannel])
      {
        localAssistedDiscoveryMetric = self->_localAssistedDiscoveryMetric;
        if (localAssistedDiscoveryMetric == [v6 localAssistedDiscoveryMetric])
        {
          peerMACAddress = self->_peerMACAddress;
          v12 = [v6 peerMACAddress];
          if (peerMACAddress == v12)
          {
            goto LABEL_13;
          }

          if (!self->_peerMACAddress || ([v6 peerMACAddress], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v16 = 0;
LABEL_23:

            goto LABEL_11;
          }

          v3 = v13;
          v14 = self->_peerMACAddress;
          v4 = [v6 peerMACAddress];
          if ([(NSString *)v14 isEqual:v4])
          {
LABEL_13:
            peerMasterChannel = self->_peerMasterChannel;
            if (peerMasterChannel == [v6 peerMasterChannel] && (peerPreferredChannel = self->_peerPreferredChannel, peerPreferredChannel == objc_msgSend(v6, "peerPreferredChannel")) && (peerSecondaryPreferredChannel = self->_peerSecondaryPreferredChannel, peerSecondaryPreferredChannel == objc_msgSend(v6, "peerSecondaryPreferredChannel")) && (peerAssistedDiscoveryMetric = self->_peerAssistedDiscoveryMetric, peerAssistedDiscoveryMetric == objc_msgSend(v6, "peerAssistedDiscoveryMetric")) && (peerSupportedChannelFlags = self->_peerSupportedChannelFlags, peerSupportedChannelFlags == objc_msgSend(v6, "peerSupportedChannelFlags")) && (followMode = self->_followMode, followMode == objc_msgSend(v6, "followMode")))
            {
              followModePreferredBand = self->_followModePreferredBand;
              v15 = followModePreferredBand == [v6 followModePreferredBand];
              v16 = v15;
            }

            else
            {
              v15 = 0;
              v16 = 0;
            }

            if (peerMACAddress == v12)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;
          goto LABEL_23;
        }
      }
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFAWDLPeerAssistedDiscoveryParameters *)self isEqualToAWDLParameters:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v6 = *&self->_localMasterChannel;
  v7 = *&self->_localSecondaryPreferredChannel;
  v3 = [(NSString *)self->_peerMACAddress hash];
  v4 = veorq_s8(veorq_s8(v6, v7), veorq_s8(*&self->_peerMasterChannel, *&self->_peerSecondaryPreferredChannel));
  return *&veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) ^ self->_followModePreferredBand ^ self->_peerSupportedChannelFlags ^ self->_followMode ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFAWDLPeerAssistedDiscoveryParameters allocWithZone:?]];
  [(CWFAWDLPeerAssistedDiscoveryParameters *)v4 setLocalMasterChannel:self->_localMasterChannel];
  [(CWFAWDLPeerAssistedDiscoveryParameters *)v4 setLocalPreferredChannel:self->_localPreferredChannel];
  [(CWFAWDLPeerAssistedDiscoveryParameters *)v4 setLocalSecondaryPreferredChannel:self->_localSecondaryPreferredChannel];
  [(CWFAWDLPeerAssistedDiscoveryParameters *)v4 setLocalAssistedDiscoveryMetric:self->_localAssistedDiscoveryMetric];
  [(CWFAWDLPeerAssistedDiscoveryParameters *)v4 setPeerMACAddress:self->_peerMACAddress];
  [(CWFAWDLPeerAssistedDiscoveryParameters *)v4 setPeerMasterChannel:self->_peerMasterChannel];
  [(CWFAWDLPeerAssistedDiscoveryParameters *)v4 setPeerPreferredChannel:self->_peerPreferredChannel];
  [(CWFAWDLPeerAssistedDiscoveryParameters *)v4 setPeerSecondaryPreferredChannel:self->_peerSecondaryPreferredChannel];
  [(CWFAWDLPeerAssistedDiscoveryParameters *)v4 setPeerAssistedDiscoveryMetric:self->_peerAssistedDiscoveryMetric];
  [(CWFAWDLPeerAssistedDiscoveryParameters *)v4 setPeerSupportedChannelFlags:self->_peerSupportedChannelFlags];
  [(CWFAWDLPeerAssistedDiscoveryParameters *)v4 setFollowMode:self->_followMode];
  [(CWFAWDLPeerAssistedDiscoveryParameters *)v4 setFollowModePreferredBand:self->_followModePreferredBand];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  localMasterChannel = self->_localMasterChannel;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:localMasterChannel];
  [v6 encodeObject:v7 forKey:@"_localMasterChannel"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_localPreferredChannel];
  [v6 encodeObject:v8 forKey:@"_localPreferredChannel"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_localSecondaryPreferredChannel];
  [v6 encodeObject:v9 forKey:@"_localSecondaryPreferredChannel"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_localAssistedDiscoveryMetric];
  [v6 encodeObject:v10 forKey:@"_localAssistedDiscoveryMetric"];

  [v6 encodeObject:self->_peerMACAddress forKey:@"_peerMACAddress"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_peerMasterChannel];
  [v6 encodeObject:v11 forKey:@"_peerMasterChannel"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_peerPreferredChannel];
  [v6 encodeObject:v12 forKey:@"_peerPreferredChannel"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_peerSecondaryPreferredChannel];
  [v6 encodeObject:v13 forKey:@"_peerSecondaryPreferredChannel"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_peerAssistedDiscoveryMetric];
  [v6 encodeObject:v14 forKey:@"_peerAssistedDiscoveryMetric"];

  [v6 encodeInteger:self->_peerSupportedChannelFlags forKey:@"_peerSupportedChannelFlags"];
  [v6 encodeBool:self->_followMode forKey:@"_followMode"];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_followModePreferredBand];
  [v6 encodeObject:v15 forKey:@"_followModePreferredBand"];
}

- (CWFAWDLPeerAssistedDiscoveryParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CWFAWDLPeerAssistedDiscoveryParameters;
  v5 = [(CWFAWDLPeerAssistedDiscoveryParameters *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localMasterChannel"];
    v5->_localMasterChannel = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localPreferredChannel"];
    v5->_localPreferredChannel = [v7 unsignedIntegerValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localSecondaryPreferredChannel"];
    v5->_localSecondaryPreferredChannel = [v8 unsignedIntegerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localAssistedDiscoveryMetric"];
    v5->_localAssistedDiscoveryMetric = [v9 unsignedIntegerValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_peerMACAddress"];
    peerMACAddress = v5->_peerMACAddress;
    v5->_peerMACAddress = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_peerMasterChannel"];
    v5->_peerMasterChannel = [v12 unsignedIntegerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_peerPreferredChannel"];
    v5->_peerPreferredChannel = [v13 unsignedIntegerValue];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_peerSecondaryPreferredChannel"];
    v5->_peerSecondaryPreferredChannel = [v14 unsignedIntegerValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_peerAssistedDiscoveryMetric"];
    v5->_peerAssistedDiscoveryMetric = [v15 unsignedIntegerValue];

    v5->_peerSupportedChannelFlags = [v4 decodeIntegerForKey:@"_peerSupportedChannelFlags"];
    v5->_followMode = [v4 decodeBoolForKey:@"_followMode"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_followModePreferredBand"];
    v5->_followModePreferredBand = [v16 unsignedIntegerValue];
  }

  return v5;
}

@end