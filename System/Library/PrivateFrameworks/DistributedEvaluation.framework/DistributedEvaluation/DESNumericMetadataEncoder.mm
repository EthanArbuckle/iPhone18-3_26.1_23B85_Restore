@interface DESNumericMetadataEncoder
- (id)encodeNumber:(id)number toLength:(unint64_t)length;
- (id)encodeNumberVector:(id)vector toLength:(unint64_t)length;
- (id)encodeString:(id)string toLength:(unint64_t)length;
- (id)encodeStringVector:(id)vector toLength:(unint64_t)length;
@end

@implementation DESNumericMetadataEncoder

- (id)encodeString:(id)string toLength:(unint64_t)length
{
  v6 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_248FF7000, v6, OS_LOG_TYPE_INFO, "Numeric metadata encoder does not support string.", v9, 2u);
  }

  v7 = [(DESNumericMetadataEncoder *)self zeroWithLength:length];

  return v7;
}

- (id)encodeNumber:(id)number toLength:(unint64_t)length
{
  v13 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v6 = MEMORY[0x277CBEA60];
  numberCopy2 = number;
  v8 = [v6 arrayWithObjects:&numberCopy count:1];

  v9 = [(DESNumericMetadataEncoder *)self encodeNumberVector:v8 toLength:length, numberCopy, v13];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)encodeStringVector:(id)vector toLength:(unint64_t)length
{
  v6 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_248FF7000, v6, OS_LOG_TYPE_INFO, "Numeric metadata encoder does not support string vector.", v9, 2u);
  }

  v7 = [(DESNumericMetadataEncoder *)self zeroWithLength:length];

  return v7;
}

- (id)encodeNumberVector:(id)vector toLength:(unint64_t)length
{
  vectorCopy = vector;
  lengthCopy = length;
  if ([vectorCopy count] <= length)
  {
    lengthCopy = [vectorCopy count];
  }

  lengthCopy = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:4 * lengthCopy];
  if (lengthCopy)
  {
    for (i = 0; i != lengthCopy; ++i)
    {
      v10 = [vectorCopy objectAtIndexedSubscript:i];
      [v10 floatValue];
      v14 = v11;
      [lengthCopy appendBytes:&v14 length:4];
    }
  }

  if ([vectorCopy count] < length)
  {
    v12 = -[DESNumericMetadataEncoder zeroWithLength:](self, "zeroWithLength:", length - [vectorCopy count]);
    [lengthCopy appendData:v12];
  }

  return lengthCopy;
}

@end