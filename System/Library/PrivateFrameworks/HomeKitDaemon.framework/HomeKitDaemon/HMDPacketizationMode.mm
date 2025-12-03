@interface HMDPacketizationMode
+ (id)arrayWithModes:(id)modes;
- (BOOL)isEqual:(id)equal;
- (HMDPacketizationMode)initWithCoder:(id)coder;
- (HMDPacketizationMode)initWithPacketizationMode:(unint64_t)mode;
- (HMDPacketizationMode)initWithTLVData:(id)data;
- (id)description;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDPacketizationMode

- (HMDPacketizationMode)initWithPacketizationMode:(unint64_t)mode
{
  v5.receiver = self;
  v5.super_class = HMDPacketizationMode;
  result = [(HMDPacketizationMode *)&v5 init];
  if (result)
  {
    result->_packetizationMode = mode;
  }

  return result;
}

- (HMDPacketizationMode)initWithTLVData:(id)data
{
  v6.receiver = self;
  v6.super_class = HMDPacketizationMode;
  v3 = [(HAPNumberParser *)&v6 initWithTLVData:data];
  v4 = v3;
  if (v3)
  {
    v3->_packetizationMode = [(HAPNumberParser *)v3 decodedNumber];
  }

  return v4;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  v8 = HMDPacketizationModeTypeAsString([(HMDPacketizationMode *)self packetizationMode]);
  [descriptionCopy appendFormat:@"\n%@ packetizationMode = %@", indentCopy, v8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDPacketizationModeTypeAsString([(HMDPacketizationMode *)self packetizationMode]);
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      packetizationMode = [(HMDPacketizationMode *)self packetizationMode];
      v6 = packetizationMode == [(HMDPacketizationMode *)equalCopy packetizationMode];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  packetizationMode = [(HMDPacketizationMode *)self packetizationMode];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDPacketizationMode", "packetizationMode"];
  [coderCopy encodeInt32:packetizationMode forKey:v6];
}

- (HMDPacketizationMode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HMDPacketizationMode;
  v5 = [(HMDPacketizationMode *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDPacketizationMode", "packetizationMode"];
    v5->_packetizationMode = [coderCopy decodeInt32ForKey:v6];
  }

  return v5;
}

+ (id)arrayWithModes:(id)modes
{
  v20 = *MEMORY[0x277D85DE8];
  modesCopy = modes;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(modesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = modesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [HMDPacketizationMode alloc];
        v12 = -[HMDPacketizationMode initWithPacketizationMode:](v11, "initWithPacketizationMode:", [v10 unsignedIntegerValue]);
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end