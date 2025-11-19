@interface CWFBackgroundScanNetwork
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBackgroundScanNetwork:(id)a3;
- (CWFBackgroundScanNetwork)initWithCoder:(id)a3;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFBackgroundScanNetwork

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CWFBackgroundScanNetwork *)self BSSID];
  v5 = [v4 redactedForWiFi];
  [v3 setObject:v5 forKeyedSubscript:@"bssid"];

  v6 = [(CWFBackgroundScanNetwork *)self channel];
  v7 = [v6 JSONCompatibleKeyValueMap];
  [v3 setObject:v7 forKeyedSubscript:@"channel"];

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
  v4 = [(CWFBackgroundScanNetwork *)self BSSID];
  v5 = [v4 redactedForWiFi];
  v6 = [(CWFBackgroundScanNetwork *)self channel];
  v7 = [v3 stringWithFormat:@"bssid=%@, ch=%@, entry=%d, exit=%d", v5, v6, -[CWFBackgroundScanNetwork entry](self, "entry"), -[CWFBackgroundScanNetwork exit](self, "exit")];

  return v7;
}

- (BOOL)isEqualToBackgroundScanNetwork:(id)a3
{
  v7 = a3;
  BSSID = self->_BSSID;
  v9 = [v7 BSSID];
  if (BSSID == v9)
  {
    goto LABEL_7;
  }

  if (self->_BSSID)
  {
    v10 = [v7 BSSID];
    if (v10)
    {
      v3 = v10;
      v11 = self->_BSSID;
      v12 = [v7 BSSID];
      if (![(NSString *)v11 isEqual:v12])
      {
        v13 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v22 = v12;
LABEL_7:
      channel = self->_channel;
      v15 = [v7 channel];
      if (channel != v15)
      {
        if (!self->_channel)
        {
          goto LABEL_19;
        }

        v16 = [v7 channel];
        if (!v16)
        {
          goto LABEL_17;
        }

        v4 = v16;
        v17 = self->_channel;
        v5 = [v7 channel];
        if (![(CWFChannel *)v17 isEqual:v5])
        {
          v13 = 0;
          v12 = v22;
LABEL_14:

          goto LABEL_20;
        }
      }

      entry = self->_entry;
      if (entry == [v7 entry])
      {
        exit = self->_exit;
        v13 = exit == [v7 exit];
        v20 = channel == v15;
        v12 = v22;
        if (v20)
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }

      if (channel != v15)
      {

LABEL_17:
        v13 = 0;
        v12 = v22;
        if (BSSID == v9)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_19:
      v13 = 0;
      v12 = v22;
LABEL_20:

      if (BSSID == v9)
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFBackgroundScanNetwork *)self isEqualToBackgroundScanNetwork:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFBackgroundScanNetwork allocWithZone:?]];
  [(CWFBackgroundScanNetwork *)v4 setBSSID:self->_BSSID];
  [(CWFBackgroundScanNetwork *)v4 setChannel:self->_channel];
  [(CWFBackgroundScanNetwork *)v4 setEntry:self->_entry];
  [(CWFBackgroundScanNetwork *)v4 setExit:self->_exit];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  BSSID = self->_BSSID;
  v5 = a3;
  [v5 encodeObject:BSSID forKey:@"_BSSID"];
  [v5 encodeObject:self->_channel forKey:@"_channel"];
  [v5 encodeBool:self->_entry forKey:@"_entry"];
  [v5 encodeBool:self->_exit forKey:@"_exit"];
}

- (CWFBackgroundScanNetwork)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CWFBackgroundScanNetwork;
  v5 = [(CWFBackgroundScanNetwork *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_BSSID"];
    BSSID = v5->_BSSID;
    v5->_BSSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    channel = v5->_channel;
    v5->_channel = v8;

    v5->_entry = [v4 decodeBoolForKey:@"_entry"];
    v5->_exit = [v4 decodeBoolForKey:@"_exit"];
  }

  return v5;
}

@end