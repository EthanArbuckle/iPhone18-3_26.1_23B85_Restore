@interface WFFileSize
+ (id)objectWithWFSerializedRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (NSString)formattedString;
- (WFFileSize)initWithByteCount:(int64_t)count;
- (WFFileSize)initWithCoder:(id)coder;
- (id)wfSerializedRepresentation;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFileSize

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x277CCABB0];
  byteCount = self->_byteCount;
  coderCopy = coder;
  v6 = [v3 numberWithLongLong:byteCount];
  [coderCopy encodeObject:v6 forKey:@"byteCount"];
}

- (WFFileSize)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"byteCount"];

  longLongValue = [v5 longLongValue];

  return [(WFFileSize *)self initWithByteCount:longLongValue];
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

- (int64_t)compare:(id)compare
{
  v4 = MEMORY[0x277CCABB0];
  compareCopy = compare;
  v6 = [v4 numberWithLongLong:{-[WFFileSize byteCount](self, "byteCount")}];
  v7 = MEMORY[0x277CCABB0];
  byteCount = [compareCopy byteCount];

  v9 = [v7 numberWithLongLong:byteCount];
  v10 = [v6 compare:v9];

  return v10;
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
      byteCount = [(WFFileSize *)self byteCount];
      v6 = byteCount == [(WFFileSize *)equalCopy byteCount];
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
  byteCount = [(WFFileSize *)self byteCount];

  return [v2 stringFromByteCount:byteCount countStyle:0];
}

- (WFFileSize)initWithByteCount:(int64_t)count
{
  v8.receiver = self;
  v8.super_class = WFFileSize;
  v4 = [(WFFileSize *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_byteCount = count;
    v6 = v4;
  }

  return v5;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.filesize"];

  v6 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"byteCount"];
  longLongValue = [v6 longLongValue];

  v8 = [[self alloc] initWithByteCount:longLongValue];

  return v8;
}

@end