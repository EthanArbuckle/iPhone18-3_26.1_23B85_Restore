@interface HMDH264Profile
+ (id)arrayWithProfiles:(id)profiles;
- (BOOL)isEqual:(id)equal;
- (HMDH264Profile)initWithCoder:(id)coder;
- (HMDH264Profile)initWithH264Profile:(unint64_t)profile;
- (HMDH264Profile)initWithTLVData:(id)data;
- (id)description;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDH264Profile

- (HMDH264Profile)initWithH264Profile:(unint64_t)profile
{
  v5.receiver = self;
  v5.super_class = HMDH264Profile;
  result = [(HMDH264Profile *)&v5 init];
  if (result)
  {
    result->_h264Profile = profile;
  }

  return result;
}

- (HMDH264Profile)initWithTLVData:(id)data
{
  v6.receiver = self;
  v6.super_class = HMDH264Profile;
  v3 = [(HAPNumberParser *)&v6 initWithTLVData:data];
  v4 = v3;
  if (v3)
  {
    v3->_h264Profile = [(HAPNumberParser *)v3 decodedNumber];
  }

  return v4;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  v8 = HMDH264ProfileTypeAsString([(HMDH264Profile *)self h264Profile]);
  [descriptionCopy appendFormat:@"\n%@ h264Profile = %@", indentCopy, v8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDH264ProfileTypeAsString([(HMDH264Profile *)self h264Profile]);
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
      h264Profile = [(HMDH264Profile *)self h264Profile];
      v6 = h264Profile == [(HMDH264Profile *)equalCopy h264Profile];
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
  h264Profile = [(HMDH264Profile *)self h264Profile];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDH264Profile", "h264Profile"];
  [coderCopy encodeInt32:h264Profile forKey:v6];
}

- (HMDH264Profile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HMDH264Profile;
  v5 = [(HMDH264Profile *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDH264Profile", "h264Profile"];
    v5->_h264Profile = [coderCopy decodeInt32ForKey:v6];
  }

  return v5;
}

+ (id)arrayWithProfiles:(id)profiles
{
  v20 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(profilesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = profilesCopy;
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
        v11 = [HMDH264Profile alloc];
        v12 = -[HMDH264Profile initWithH264Profile:](v11, "initWithH264Profile:", [v10 unsignedIntegerValue]);
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