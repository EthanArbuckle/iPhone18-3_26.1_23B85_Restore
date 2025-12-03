@interface MSDKPeerDemoIPDStatus
- (MSDKPeerDemoIPDStatus)initWithCoder:(id)coder;
- (MSDKPeerDemoIPDStatus)initWithTargetIPD:(double)d currentIPD:(double)pD clipOnState:(unint64_t)state;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSDKPeerDemoIPDStatus

- (MSDKPeerDemoIPDStatus)initWithTargetIPD:(double)d currentIPD:(double)pD clipOnState:(unint64_t)state
{
  v11.receiver = self;
  v11.super_class = MSDKPeerDemoIPDStatus;
  v8 = [(MSDKPeerDemoIPDStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDKPeerDemoIPDStatus *)v8 setTargetIPD:d];
    [(MSDKPeerDemoIPDStatus *)v9 setCurrentIPD:pD];
    [(MSDKPeerDemoIPDStatus *)v9 setClipOnState:state];
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

- (MSDKPeerDemoIPDStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MSDKPeerDemoIPDStatus;
  v5 = [(MSDKPeerDemoIPDStatus *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TargetIPD"];
    [v6 doubleValue];
    [(MSDKPeerDemoIPDStatus *)v5 setTargetIPD:?];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CurrentIPD"];
    [v7 doubleValue];
    [(MSDKPeerDemoIPDStatus *)v5 setCurrentIPD:?];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClipOnState"];
    [v8 doubleValue];
    [(MSDKPeerDemoIPDStatus *)v5 setClipOnState:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  [(MSDKPeerDemoIPDStatus *)self targetIPD];
  v6 = [v4 numberWithDouble:?];
  [coderCopy encodeObject:v6 forKey:@"TargetIPD"];

  v7 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoIPDStatus *)self currentIPD];
  v8 = [v7 numberWithDouble:?];
  [coderCopy encodeObject:v8 forKey:@"CurrentIPD"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoIPDStatus clipOnState](self, "clipOnState")}];
  [coderCopy encodeObject:v9 forKey:@"ClipOnState"];
}

@end