@interface HMDAudioCodecGroup
+ (id)arrayWithCodecs:(id)codecs;
- (BOOL)isEqual:(id)equal;
- (HMDAudioCodecGroup)initWithAudioCodecGroup:(unint64_t)group;
- (HMDAudioCodecGroup)initWithCoder:(id)coder;
- (HMDAudioCodecGroup)initWithTLVData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDAudioCodecGroup

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDAudioCodecGroup allocWithZone:zone];
  codec = [(HMDAudioCodecGroup *)self codec];

  return [(HMDAudioCodecGroup *)v4 initWithAudioCodecGroup:codec];
}

- (HMDAudioCodecGroup)initWithAudioCodecGroup:(unint64_t)group
{
  v5.receiver = self;
  v5.super_class = HMDAudioCodecGroup;
  result = [(HMDAudioCodecGroup *)&v5 init];
  if (result)
  {
    result->_codec = group;
  }

  return result;
}

- (HMDAudioCodecGroup)initWithTLVData:(id)data
{
  v6.receiver = self;
  v6.super_class = HMDAudioCodecGroup;
  v3 = [(HAPNumberParser *)&v6 initWithTLVData:data];
  v4 = v3;
  if (v3)
  {
    v3->_codec = [(HAPNumberParser *)v3 decodedNumber];
  }

  return v4;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  v8 = HMDAudioCodecGroupTypeAsString([(HMDAudioCodecGroup *)self codec]);
  [descriptionCopy appendFormat:@"\n%@ codec = %@", indentCopy, v8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDAudioCodecGroupTypeAsString([(HMDAudioCodecGroup *)self codec]);
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
      codec = [(HMDAudioCodecGroup *)self codec];
      v6 = codec == [(HMDAudioCodecGroup *)equalCopy codec];
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
  codec = [(HMDAudioCodecGroup *)self codec];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDAudioCodecGroup", "codec"];
  [coderCopy encodeInt32:codec forKey:v6];
}

- (HMDAudioCodecGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HMDAudioCodecGroup;
  v5 = [(HMDAudioCodecGroup *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDAudioCodecGroup", "codec"];
    v5->_codec = [coderCopy decodeInt32ForKey:v6];
  }

  return v5;
}

+ (id)arrayWithCodecs:(id)codecs
{
  v20 = *MEMORY[0x277D85DE8];
  codecsCopy = codecs;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(codecsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = codecsCopy;
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
        v11 = [HMDAudioCodecGroup alloc];
        v12 = -[HMDAudioCodecGroup initWithAudioCodecGroup:](v11, "initWithAudioCodecGroup:", [v10 unsignedIntegerValue]);
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