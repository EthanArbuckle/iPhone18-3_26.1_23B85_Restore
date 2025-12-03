@interface HMDSessionControl
- (BOOL)_parseFromTLVData;
- (HMDSessionControl)initWithCoder:(id)coder;
- (HMDSessionControl)initWithCommand:(unint64_t)command sessionIdentifier:(id)identifier;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSessionControl

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[HMDSessionControl controlCommand](self forKey:{"controlCommand"), @"kSessionControl__Command"}];
  sessionID = [(HMDSessionControl *)self sessionID];
  [coderCopy encodeObject:sessionID forKey:@"kSessionControl__SessionIdentifier"];
}

- (HMDSessionControl)initWithCoder:(id)coder
{
  v14[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HMDSessionControl;
  v5 = [(HMDSessionControl *)&v13 init];
  if (v5)
  {
    v5->_controlCommand = [coderCopy decodeInt32ForKey:@"kSessionControl__Command"];
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kSessionControl__SessionIdentifier"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n %@ tlvDatablob = %@ ", indentCopy, tlvDatablob];

  controlCommand = [(HMDSessionControl *)self controlCommand];
  if (controlCommand >= 5)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDSessionControlCommand %tu", controlCommand];
  }

  else
  {
    v10 = off_27867B9F8[controlCommand];
  }

  [descriptionCopy appendFormat:@"\n %@ controlCommand = %@ ", indentCopy, v10];

  sessionID = [(HMDSessionControl *)self sessionID];
  uUIDString = [sessionID UUIDString];
  [descriptionCopy appendFormat:@"\n %@ sessionID = %@ ", indentCopy, uUIDString];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSessionControl controlCommand](self, "controlCommand")}];
  [creator addTLV:2 number:v4];

  sessionID = [(HMDSessionControl *)self sessionID];
  [creator addTLV:1 uuid:sessionID];

  serialize = [creator serialize];

  return serialize;
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
    field = [v3 field];
    self->_controlCommand = [field unsignedIntegerValue];

    field2 = [v4 field];
    sessionID = self->_sessionID;
    self->_sessionID = field2;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (HMDSessionControl)initWithCommand:(unint64_t)command sessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = HMDSessionControl;
  v8 = [(HMDSessionControl *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_controlCommand = command;
    objc_storeStrong(&v8->_sessionID, identifier);
  }

  return v9;
}

@end