@interface WFFileSize
+ (id)objectWithWFSerializedRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)formattedString;
- (WFFileSize)initWithByteCount:(int64_t)a3;
- (WFFileSize)initWithCoder:(id)a3;
- (id)wfSerializedRepresentation;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFileSize

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  byteCount = self->_byteCount;
  v5 = a3;
  v6 = [v3 numberWithLongLong:byteCount];
  [v5 encodeObject:v6 forKey:@"byteCount"];
}

- (WFFileSize)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"byteCount"];

  v6 = [v5 longLongValue];

  return [(WFFileSize *)self initWithByteCount:v6];
}

- (id)wfSerializedRepresentation
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"link.contentkit.filesize";
  v6 = @"byteCount";
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_byteCount];
  v7 = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v4;
}

- (int64_t)compare:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithLongLong:{-[WFFileSize byteCount](self, "byteCount")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 byteCount];

  v9 = [v7 numberWithLongLong:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFFileSize *)self byteCount];
      v6 = v5 == [(WFFileSize *)v4 byteCount];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)formattedString
{
  v2 = MEMORY[0x277CCA8E8];
  v3 = [(WFFileSize *)self byteCount];

  return [v2 stringFromByteCount:v3 countStyle:0];
}

- (WFFileSize)initWithByteCount:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = WFFileSize;
  v4 = [(WFFileSize *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_byteCount = a3;
    v6 = v4;
  }

  return v5;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.filesize"];

  v6 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"byteCount"];
  v7 = [v6 longLongValue];

  v8 = [[a1 alloc] initWithByteCount:v7];

  return v8;
}

@end