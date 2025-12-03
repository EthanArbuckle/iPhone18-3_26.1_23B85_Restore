@interface HMDH264Level
+ (id)arrayWithLevels:(id)levels;
- (BOOL)isEqual:(id)equal;
- (HMDH264Level)initWithCoder:(id)coder;
- (HMDH264Level)initWithH264Level:(unint64_t)level;
- (HMDH264Level)initWithTLVData:(id)data;
- (id)description;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDH264Level

- (HMDH264Level)initWithH264Level:(unint64_t)level
{
  v5.receiver = self;
  v5.super_class = HMDH264Level;
  result = [(HMDH264Level *)&v5 init];
  if (result)
  {
    result->_h264Level = level;
  }

  return result;
}

- (HMDH264Level)initWithTLVData:(id)data
{
  v6.receiver = self;
  v6.super_class = HMDH264Level;
  v3 = [(HAPNumberParser *)&v6 initWithTLVData:data];
  v4 = v3;
  if (v3)
  {
    v3->_h264Level = [(HAPNumberParser *)v3 decodedNumber];
  }

  return v4;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  v8 = HMDH264LevelTypeAsString([(HMDH264Level *)self h264Level]);
  [descriptionCopy appendFormat:@"\n%@ h264Level = %@", indentCopy, v8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDH264LevelTypeAsString([(HMDH264Level *)self h264Level]);
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
      h264Level = [(HMDH264Level *)self h264Level];
      v6 = h264Level == [(HMDH264Level *)equalCopy h264Level];
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
  h264Level = [(HMDH264Level *)self h264Level];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDH264Level", "h264Level"];
  [coderCopy encodeInt32:h264Level forKey:v6];
}

- (HMDH264Level)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HMDH264Level;
  v5 = [(HMDH264Level *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDH264Level", "h264Level"];
    v5->_h264Level = [coderCopy decodeInt32ForKey:v6];
  }

  return v5;
}

+ (id)arrayWithLevels:(id)levels
{
  v20 = *MEMORY[0x277D85DE8];
  levelsCopy = levels;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(levelsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = levelsCopy;
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
        v11 = [HMDH264Level alloc];
        v12 = -[HMDH264Level initWithH264Level:](v11, "initWithH264Level:", [v10 unsignedIntegerValue]);
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