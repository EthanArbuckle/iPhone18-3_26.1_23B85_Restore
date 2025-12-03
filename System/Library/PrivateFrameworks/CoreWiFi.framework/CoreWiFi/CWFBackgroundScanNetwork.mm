@interface CWFBackgroundScanNetwork
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBackgroundScanNetwork:(id)network;
- (CWFBackgroundScanNetwork)initWithCoder:(id)coder;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFBackgroundScanNetwork

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  bSSID = [(CWFBackgroundScanNetwork *)self BSSID];
  redactedForWiFi = [bSSID redactedForWiFi];
  [v3 setObject:redactedForWiFi forKeyedSubscript:@"bssid"];

  channel = [(CWFBackgroundScanNetwork *)self channel];
  jSONCompatibleKeyValueMap = [channel JSONCompatibleKeyValueMap];
  [v3 setObject:jSONCompatibleKeyValueMap forKeyedSubscript:@"channel"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFBackgroundScanNetwork entry](self, "entry")}];
  [v3 setObject:v8 forKeyedSubscript:@"entry"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFBackgroundScanNetwork exit](self, "exit")}];
  [v3 setObject:v9 forKeyedSubscript:@"exit"];

  v10 = sub_1E0BCEC64(v3, 0, 1u);
  if (v10)
  {
    v11 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  bSSID = [(CWFBackgroundScanNetwork *)self BSSID];
  redactedForWiFi = [bSSID redactedForWiFi];
  channel = [(CWFBackgroundScanNetwork *)self channel];
  v7 = [v3 stringWithFormat:@"bssid=%@, ch=%@, entry=%d, exit=%d", redactedForWiFi, channel, -[CWFBackgroundScanNetwork entry](self, "entry"), -[CWFBackgroundScanNetwork exit](self, "exit")];

  return v7;
}

- (BOOL)isEqualToBackgroundScanNetwork:(id)network
{
  networkCopy = network;
  BSSID = self->_BSSID;
  bSSID = [networkCopy BSSID];
  if (BSSID == bSSID)
  {
    goto LABEL_7;
  }

  if (self->_BSSID)
  {
    bSSID2 = [networkCopy BSSID];
    if (bSSID2)
    {
      v3 = bSSID2;
      v11 = self->_BSSID;
      bSSID3 = [networkCopy BSSID];
      if (![(NSString *)v11 isEqual:bSSID3])
      {
        v13 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v22 = bSSID3;
LABEL_7:
      channel = self->_channel;
      channel = [networkCopy channel];
      if (channel != channel)
      {
        if (!self->_channel)
        {
          goto LABEL_19;
        }

        channel2 = [networkCopy channel];
        if (!channel2)
        {
          goto LABEL_17;
        }

        v4 = channel2;
        v17 = self->_channel;
        channel3 = [networkCopy channel];
        if (![(CWFChannel *)v17 isEqual:channel3])
        {
          v13 = 0;
          bSSID3 = v22;
LABEL_14:

          goto LABEL_20;
        }
      }

      entry = self->_entry;
      if (entry == [networkCopy entry])
      {
        exit = self->_exit;
        v13 = exit == [networkCopy exit];
        v20 = channel == channel;
        bSSID3 = v22;
        if (v20)
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }

      if (channel != channel)
      {

LABEL_17:
        v13 = 0;
        bSSID3 = v22;
        if (BSSID == bSSID)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_19:
      v13 = 0;
      bSSID3 = v22;
LABEL_20:

      if (BSSID == bSSID)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  v13 = 0;
LABEL_24:

  return v13;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFBackgroundScanNetwork *)self isEqualToBackgroundScanNetwork:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFBackgroundScanNetwork allocWithZone:?]];
  [(CWFBackgroundScanNetwork *)v4 setBSSID:self->_BSSID];
  [(CWFBackgroundScanNetwork *)v4 setChannel:self->_channel];
  [(CWFBackgroundScanNetwork *)v4 setEntry:self->_entry];
  [(CWFBackgroundScanNetwork *)v4 setExit:self->_exit];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  BSSID = self->_BSSID;
  coderCopy = coder;
  [coderCopy encodeObject:BSSID forKey:@"_BSSID"];
  [coderCopy encodeObject:self->_channel forKey:@"_channel"];
  [coderCopy encodeBool:self->_entry forKey:@"_entry"];
  [coderCopy encodeBool:self->_exit forKey:@"_exit"];
}

- (CWFBackgroundScanNetwork)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CWFBackgroundScanNetwork;
  v5 = [(CWFBackgroundScanNetwork *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_BSSID"];
    BSSID = v5->_BSSID;
    v5->_BSSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    channel = v5->_channel;
    v5->_channel = v8;

    v5->_entry = [coderCopy decodeBoolForKey:@"_entry"];
    v5->_exit = [coderCopy decodeBoolForKey:@"_exit"];
  }

  return v5;
}

@end