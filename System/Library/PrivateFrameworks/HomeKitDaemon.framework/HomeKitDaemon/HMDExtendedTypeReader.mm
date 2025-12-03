@interface HMDExtendedTypeReader
- (HMDExtendedTypeReader)initWithReader:(id)reader;
- (_HMDStructuredDataToken)nextTokenAfterToken:(const _HMDStructuredDataToken *)token;
- (uint64_t)_bufferPeekAtOffset:(uint64_t)result;
- (void)_bufferConsumeTokens:(uint64_t)tokens;
@end

@implementation HMDExtendedTypeReader

- (_HMDStructuredDataToken)nextTokenAfterToken:(const _HMDStructuredDataToken *)token
{
  v4 = [(HMDExtendedTypeReader *)self _bufferPeekAtOffset:?];
  if (*v4 != 3)
  {
    goto LABEL_19;
  }

  v5 = [(HMDExtendedTypeReader *)self _bufferPeekAtOffset:?];
  if (*v5 != 5)
  {
    goto LABEL_19;
  }

  v6 = *(v5 + 8);
  if ([v6 characterAtIndex:0] != 36)
  {
    goto LABEL_18;
  }

  v7 = @"$null";
  v8 = [v6 isEqualToString:@"$null"];
  if ((v8 & 1) == 0)
  {
    v7 = @"$base64";
    if ([v6 isEqualToString:@"$base64"])
    {
      v10 = 0;
      v11 = 0;
      v9 = 1;
      goto LABEL_12;
    }

    v7 = @"$date";
    if ([v6 isEqualToString:@"$date"])
    {
      v9 = 0;
      v11 = 0;
      v10 = 1;
      goto LABEL_12;
    }

    v7 = @"$uuid";
    if ([v6 isEqualToString:@"$uuid"])
    {
      v9 = 0;
      v10 = 0;
      v11 = 1;
      goto LABEL_12;
    }

LABEL_18:

    goto LABEL_19;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_12:

  v12 = [(HMDExtendedTypeReader *)self _bufferPeekAtOffset:?];
  if (*v12 == 8)
  {
    v13 = v12;
    if (*[(HMDExtendedTypeReader *)self _bufferPeekAtOffset:?]== 4)
    {
      v14 = v13[1];
      v22 = v7;
      if (!self)
      {
        v23 = 0;
        v24 = 0;
        goto LABEL_31;
      }

      if (v8)
      {
        if (![v14 length])
        {
          v23 = 0;
          v24 = 6;
LABEL_31:

          selfCopy2 = self;
          v26 = 4;
          goto LABEL_20;
        }
      }

      else if (v9)
      {
        v29 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v14 options:0];
        if (v29)
        {
          v23 = v29;
          v24 = 10;
          goto LABEL_31;
        }
      }

      else if (v10)
      {
        v30 = HMDExtendedTypeDateFormatter();
        v23 = [v30 dateFromString:v14];

        if (v23)
        {
          v24 = 11;
          goto LABEL_31;
        }
      }

      else if (v11)
      {
        v31 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v14];
        if (v31)
        {
          v23 = v31;
          v24 = 12;
          goto LABEL_31;
        }
      }

      v24 = HMDStructuredDataErrorWithReason(@"Invalid extended value: %@", v15, v16, v17, v18, v19, v20, v21, v22);
      v23 = v32;
      goto LABEL_31;
    }
  }

LABEL_19:
  v24 = *v4;
  v23 = *(v4 + 8);
  selfCopy2 = self;
  v26 = 1;
LABEL_20:
  [(HMDExtendedTypeReader *)selfCopy2 _bufferConsumeTokens:v26];
  v27 = v24;
  v28 = v23;
  result.value = v28;
  result.type = v27;
  return result;
}

- (uint64_t)_bufferPeekAtOffset:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = (result + 104);
    for (i = *(result + 104); i <= a2; i = *(v3 + 104))
    {
      *v4 = i + 1;
      v6 = (v3 + 32 + 16 * ((*(v3 + 96) + i) & 3));
      readToken = [*(v3 + 24) readToken];
      v8 = v6[1];
      *v6 = readToken;
      v6[1] = v9;

      v4 = (v3 + 104);
    }

    return v3 + 32 + 16 * ((*(v3 + 96) + a2) & 3);
  }

  return result;
}

- (void)_bufferConsumeTokens:(uint64_t)tokens
{
  if (tokens)
  {
    do
    {
      v4 = (tokens + 32 + 16 * (*(tokens + 96) & 3));
      v5 = v4[1];
      *v4 = 0;
      v4[1] = 0;

      *(tokens + 96) = (*(tokens + 96) + 1) & 3;
      --*(tokens + 104);
      --a2;
    }

    while (a2);
  }
}

- (HMDExtendedTypeReader)initWithReader:(id)reader
{
  readerCopy = reader;
  v9.receiver = self;
  v9.super_class = HMDExtendedTypeReader;
  v6 = [(HMDExtendedTypeReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reader, reader);
  }

  return v7;
}

@end