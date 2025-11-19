@interface HMDSessionControl
- (BOOL)_parseFromTLVData;
- (HMDSessionControl)initWithCoder:(id)a3;
- (HMDSessionControl)initWithCommand:(unint64_t)a3 sessionIdentifier:(id)a4;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDSessionControl

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[HMDSessionControl controlCommand](self forKey:{"controlCommand"), @"kSessionControl__Command"}];
  v5 = [(HMDSessionControl *)self sessionID];
  [v4 encodeObject:v5 forKey:@"kSessionControl__SessionIdentifier"];
}

- (HMDSessionControl)initWithCoder:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMDSessionControl;
  v5 = [(HMDSessionControl *)&v13 init];
  if (v5)
  {
    v5->_controlCommand = [v4 decodeInt32ForKey:@"kSessionControl__Command"];
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kSessionControl__SessionIdentifier"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n %@ tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDSessionControl *)self controlCommand];
  if (v9 >= 5)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDSessionControlCommand %tu", v9];
  }

  else
  {
    v10 = off_27972ABB0[v9];
  }

  [v7 appendFormat:@"\n %@ controlCommand = %@ ", v6, v10];

  v12 = [(HMDSessionControl *)self sessionID];
  v11 = [v12 UUIDString];
  [v7 appendFormat:@"\n %@ sessionID = %@ ", v6, v11];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSessionControl controlCommand](self, "controlCommand")}];
  [v3 addTLV:2 number:v4];

  v5 = [(HMDSessionControl *)self sessionID];
  [v3 addTLV:1 uuid:v5];

  v6 = [v3 serialize];

  return v6;
}

- (BOOL)_parseFromTLVData
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:2 name:@"kSessionControl__Command"];
  v4 = [MEMORY[0x277CFECA8] wrappertlv:1 name:@"kSessionControl__SessionIdentifier"];
  v12[0] = v3;
  v12[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v6 = [(HAPTLVBase *)self _parse:v5];
  if (v6)
  {
    v7 = [v3 field];
    self->_controlCommand = [v7 unsignedIntegerValue];

    v8 = [v4 field];
    sessionID = self->_sessionID;
    self->_sessionID = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (HMDSessionControl)initWithCommand:(unint64_t)a3 sessionIdentifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDSessionControl;
  v8 = [(HMDSessionControl *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_controlCommand = a3;
    objc_storeStrong(&v8->_sessionID, a4);
  }

  return v9;
}

@end