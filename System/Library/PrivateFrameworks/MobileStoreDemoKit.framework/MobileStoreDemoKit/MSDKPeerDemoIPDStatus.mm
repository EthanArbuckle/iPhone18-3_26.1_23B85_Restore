@interface MSDKPeerDemoIPDStatus
- (MSDKPeerDemoIPDStatus)initWithCoder:(id)a3;
- (MSDKPeerDemoIPDStatus)initWithTargetIPD:(double)a3 currentIPD:(double)a4 clipOnState:(unint64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSDKPeerDemoIPDStatus

- (MSDKPeerDemoIPDStatus)initWithTargetIPD:(double)a3 currentIPD:(double)a4 clipOnState:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = MSDKPeerDemoIPDStatus;
  v8 = [(MSDKPeerDemoIPDStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDKPeerDemoIPDStatus *)v8 setTargetIPD:a3];
    [(MSDKPeerDemoIPDStatus *)v9 setCurrentIPD:a4];
    [(MSDKPeerDemoIPDStatus *)v9 setClipOnState:a5];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(MSDKPeerDemoIPDStatus *)self targetIPD];
  v7 = v6;
  [(MSDKPeerDemoIPDStatus *)self currentIPD];
  v9 = [v3 stringWithFormat:@"<%@[%p]: TaregtIPD=%f CurrentIPD=%f ClipOnState=%lu>", v5, self, v7, v8, -[MSDKPeerDemoIPDStatus clipOnState](self, "clipOnState")];

  return v9;
}

- (MSDKPeerDemoIPDStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MSDKPeerDemoIPDStatus;
  v5 = [(MSDKPeerDemoIPDStatus *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TargetIPD"];
    [v6 doubleValue];
    [(MSDKPeerDemoIPDStatus *)v5 setTargetIPD:?];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CurrentIPD"];
    [v7 doubleValue];
    [(MSDKPeerDemoIPDStatus *)v5 setCurrentIPD:?];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClipOnState"];
    [v8 doubleValue];
    [(MSDKPeerDemoIPDStatus *)v5 setClipOnState:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [(MSDKPeerDemoIPDStatus *)self targetIPD];
  v6 = [v4 numberWithDouble:?];
  [v5 encodeObject:v6 forKey:@"TargetIPD"];

  v7 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoIPDStatus *)self currentIPD];
  v8 = [v7 numberWithDouble:?];
  [v5 encodeObject:v8 forKey:@"CurrentIPD"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoIPDStatus clipOnState](self, "clipOnState")}];
  [v5 encodeObject:v9 forKey:@"ClipOnState"];
}

@end