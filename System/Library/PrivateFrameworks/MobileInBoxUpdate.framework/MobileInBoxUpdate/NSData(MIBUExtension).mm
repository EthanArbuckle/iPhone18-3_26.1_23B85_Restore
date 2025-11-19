@interface NSData(MIBUExtension)
+ (id)adjustData:()MIBUExtension toLength:;
+ (id)dataWithHexString:()MIBUExtension;
+ (id)generateRandomBytesOfSize:()MIBUExtension;
- (id)hexStringRepresentation;
@end

@implementation NSData(MIBUExtension)

+ (id)generateRandomBytesOfSize:()MIBUExtension
{
  v4 = [MEMORY[0x277CBEB28] dataWithCapacity:?];
  if (a3 >= 4)
  {
    v5 = a3 >> 2;
    v6 = 1;
    do
    {
      v9 = arc4random();
      [v4 appendBytes:&v9 length:4];
    }

    while (v5 > v6++);
  }

  return v4;
}

+ (id)dataWithHexString:()MIBUExtension
{
  v3 = a3;
  v4 = [v3 length];
  v5 = v4;
  if (v4 && (v4 & 1) == 0)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v4 >> 1];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 mutableBytes];
      v9 = [v3 UTF8String];
      __str[2] = 0;
      v10 = *v9;
      if (!*v9)
      {
LABEL_11:
        v14 = [v7 copy];
LABEL_22:

        goto LABEL_23;
      }

      v11 = v9 + 2;
      v12 = MEMORY[0x277D85DE0];
      while (1)
      {
        __str[0] = v10;
        v13 = *(v11 - 1);
        __str[1] = *(v11 - 1);
        if ((v10 & 0x80) != 0)
        {
          break;
        }

        v14 = 0;
        if ((*(v12 + 4 * v10 + 60) & 0x10000) == 0 || v13 < 0)
        {
          goto LABEL_22;
        }

        if ((*(v12 + 4 * v13 + 60) & 0x10000) == 0)
        {
          break;
        }

        *v8++ = strtoul(__str, 0, 16);
        v10 = *v11;
        v11 += 2;
        if (!v10)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      if (MIBUOnceToken != -1)
      {
        +[NSData(MIBUExtension) dataWithHexString:];
      }

      v16 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        [(NSData(MIBUExtension) *)v16 dataWithHexString:v17, v18, v19, v20, v21, v22, v23];
      }
    }

    v14 = 0;
    goto LABEL_22;
  }

  if (MIBUOnceToken != -1)
  {
    +[NSData(MIBUExtension) dataWithHexString:];
  }

  v15 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    [(NSData(MIBUExtension) *)v3 dataWithHexString:v5, v15];
  }

  v14 = 0;
LABEL_23:

  return v14;
}

+ (id)adjustData:()MIBUExtension toLength:
{
  v5 = a3;
  v6 = [v5 mutableCopy];
  v7 = [v6 length] - a4;
  if (v7 < 1)
  {
    if (v7 < 0)
    {
      v8 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v5 length:{"bytes"), a4}];
      v9 = [v8 mutableCopy];

      v6 = v9;
    }
  }

  else
  {
    [v6 increaseLengthBy:?];
  }

  v10 = [v6 copy];

  return v10;
}

- (id)hexStringRepresentation
{
  v2 = [a1 length];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:2 * v2];
  v4 = [a1 bytes];
  if (v2)
  {
    v5 = v4;
    do
    {
      v6 = *v5++;
      [v3 appendFormat:@"%02lx", v6];
      --v2;
    }

    while (v2);
  }

  return v3;
}

+ (void)dataWithHexString:()MIBUExtension .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_259ABF000, log, OS_LOG_TYPE_ERROR, "String %{public}@ is of invalid length=%ld", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end