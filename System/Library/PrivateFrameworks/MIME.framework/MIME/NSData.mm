@interface NSData
- (NSData)_uudecoded_large;
- (NSData)_uudecoded_small;
@end

@implementation NSData

- (NSData)_uudecoded_small
{
  selfCopy = self;
  v11[4] = *MEMORY[0x1E69E9840];
  if (self)
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[0] = v2;
    v9[1] = v2;
    v3 = vcvtpd_u64_f64([(NSData *)self length]* 0.74 + 100.0);
    if (v3 <= 0x64)
    {
      v4 = 100;
    }

    else
    {
      v4 = v3;
    }

    OutputBuffer::OutputBuffer(v9, v4);
    memset(v8, 170, sizeof(v8));
    DecodeBuffer::DecodeBuffer(v8, selfCopy);
    v11[0] = &unk_1F4F334E0;
    v11[1] = v9;
    v11[3] = v11;
    v10[0] = &unk_1F4F33488;
    v10[1] = v9;
    v10[3] = v10;
    v5 = DecodeBuffer::parse(v8, v11, v10);
    std::__function::__value_func<void ()(LineOfOutput const&)>::~__value_func[abi:nn200100](v10);
    std::__function::__value_func<void ()(unsigned char)>::~__value_func[abi:nn200100](v11);
    if (v5)
    {
      [*(&v9[0] + 1) setLength:*&v9[0]];
      selfCopy = *(&v9[0] + 1);
    }

    else
    {
      selfCopy = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (NSData)_uudecoded_large
{
  selfCopy = self;
  v10[4] = *MEMORY[0x1E69E9840];
  if (self)
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v7 = v2;
    *v8 = v2;
    TemporaryFile::TemporaryFile(&v7);
    if (v7 < 1)
    {
      goto LABEL_6;
    }

    if (!v8[0])
    {
      selfCopy = 0;
LABEL_10:

      goto LABEL_11;
    }

    memset(v6, 170, sizeof(v6));
    DecodeBuffer::DecodeBuffer(v6, selfCopy);
    v10[0] = &unk_1F4F33590;
    v10[1] = &v7;
    v10[3] = v10;
    v9[0] = &unk_1F4F33538;
    v9[1] = &v7;
    v9[3] = v9;
    v3 = DecodeBuffer::parse(v6, v10, v9);
    std::__function::__value_func<void ()(LineOfOutput const&)>::~__value_func[abi:nn200100](v9);
    std::__function::__value_func<void ()(unsigned char)>::~__value_func[abi:nn200100](v10);
    if (v3)
    {
      selfCopy = TemporaryFile::mappedData(&v7);
    }

    else
    {
LABEL_6:
      selfCopy = 0;
    }

    if (v8[0])
    {
      fclose(v8[0]);
    }

    goto LABEL_10;
  }

LABEL_11:
  v4 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

@end