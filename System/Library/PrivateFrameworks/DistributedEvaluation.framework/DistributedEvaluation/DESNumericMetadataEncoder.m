@interface DESNumericMetadataEncoder
- (id)encodeNumber:(id)a3 toLength:(unint64_t)a4;
- (id)encodeNumberVector:(id)a3 toLength:(unint64_t)a4;
- (id)encodeString:(id)a3 toLength:(unint64_t)a4;
- (id)encodeStringVector:(id)a3 toLength:(unint64_t)a4;
@end

@implementation DESNumericMetadataEncoder

- (id)encodeString:(id)a3 toLength:(unint64_t)a4
{
  v6 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_248FF7000, v6, OS_LOG_TYPE_INFO, "Numeric metadata encoder does not support string.", v9, 2u);
  }

  v7 = [(DESNumericMetadataEncoder *)self zeroWithLength:a4];

  return v7;
}

- (id)encodeNumber:(id)a3 toLength:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v12 count:1];

  v9 = [(DESNumericMetadataEncoder *)self encodeNumberVector:v8 toLength:a4, v12, v13];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)encodeStringVector:(id)a3 toLength:(unint64_t)a4
{
  v6 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_248FF7000, v6, OS_LOG_TYPE_INFO, "Numeric metadata encoder does not support string vector.", v9, 2u);
  }

  v7 = [(DESNumericMetadataEncoder *)self zeroWithLength:a4];

  return v7;
}

- (id)encodeNumberVector:(id)a3 toLength:(unint64_t)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] <= a4)
  {
    v7 = [v6 count];
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:4 * v7];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v10 = [v6 objectAtIndexedSubscript:i];
      [v10 floatValue];
      v14 = v11;
      [v8 appendBytes:&v14 length:4];
    }
  }

  if ([v6 count] < a4)
  {
    v12 = -[DESNumericMetadataEncoder zeroWithLength:](self, "zeroWithLength:", a4 - [v6 count]);
    [v8 appendData:v12];
  }

  return v8;
}

@end