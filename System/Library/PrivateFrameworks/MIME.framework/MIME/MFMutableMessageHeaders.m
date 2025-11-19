@interface MFMutableMessageHeaders
- (BOOL)hasHeaderForKey:(id)a3;
- (NSData)encodedHeaders;
- (NSString)description;
- (id)_copyHeaderValueForKey:(id)a3;
- (id)allHeaderKeys;
- (id)firstHeaderForKey:(id)a3;
- (id)headersDictionary;
- (id)mutableCopy;
- (void)_appendAddedHeaderKey:(id)a3 value:(id)a4 toData:(id)a5;
- (void)_appendHeaderKey:(id)a3 value:(id)a4 toData:(id)a5;
- (void)removeHeaderForKey:(id)a3;
- (void)setAddressList:(id)a3 forKey:(id)a4;
- (void)setHeader:(id)a3 forKey:(id)a4;
- (void)setReferences:(id)a3;
- (void)stripInternalHeaders;
@end

@implementation MFMutableMessageHeaders

- (id)mutableCopy
{
  v9.receiver = self;
  v9.super_class = MFMutableMessageHeaders;
  v3 = [(MFMessageHeaders *)&v9 mutableCopy];
  v4 = [(NSMutableDictionary *)self->_headersAdded mutableCopy];
  v5 = v3[3];
  v3[3] = v4;

  v6 = [(NSMutableArray *)self->_headersRemoved mutableCopy];
  v7 = v3[4];
  v3[4] = v6;

  return v3;
}

- (id)headersDictionary
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_headersAdded count]|| [(NSMutableArray *)self->_headersRemoved count])
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(MFMutableMessageHeaders *)self allHeaderKeys];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = [(MFMessageHeaders *)self headersForKey:v8];
          [v3 setObject:v9 forKey:v8];
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = MFMutableMessageHeaders;
    v3 = [(MFMessageHeaders *)&v16 headersDictionary];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)allHeaderKeys
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MFMessageHeaders *)self data];
  v5 = [(MFMessageHeaders *)self _decodeHeaderKeysFromData:v4];
  [v3 addObjectsFromArray:v5];

  if (self->_headersRemoved)
  {
    [v3 removeObjectsInArray:?];
  }

  headersAdded = self->_headersAdded;
  if (headersAdded)
  {
    v7 = [(NSMutableDictionary *)headersAdded allKeys];
    [v3 addObjectsFromArray:v7];
  }

  return v3;
}

- (BOOL)hasHeaderForKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  headersRemoved = self->_headersRemoved;
  if (headersRemoved && ([v4 lowercaseString], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[NSMutableArray indexOfObject:](headersRemoved, "indexOfObject:", v7), v7, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = 0;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_headersAdded objectForKey:v5];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v12.receiver = self;
      v12.super_class = MFMutableMessageHeaders;
      v10 = [(MFMessageHeaders *)&v12 hasHeaderForKey:v5];
    }
  }

  return v10;
}

- (id)firstHeaderForKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  headersRemoved = self->_headersRemoved;
  if (headersRemoved && ([v4 lowercaseString], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[NSMutableArray indexOfObject:](headersRemoved, "indexOfObject:", v7), v7, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_headersAdded objectForKey:v5];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 objectAtIndex:0];

        v9 = v10;
      }
    }

    else
    {
      v12.receiver = self;
      v12.super_class = MFMutableMessageHeaders;
      v9 = [(MFMessageHeaders *)&v12 firstHeaderForKey:v5];
    }
  }

  return v9;
}

- (void)removeHeaderForKey:(id)a3
{
  v4 = [a3 lowercaseString];
  headersRemoved = self->_headersRemoved;
  v8 = v4;
  if (!headersRemoved)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_headersRemoved;
    self->_headersRemoved = v6;

    headersRemoved = self->_headersRemoved;
    v4 = v8;
  }

  [(NSMutableArray *)headersRemoved addObject:v4];
  [(NSMutableDictionary *)self->_headersAdded removeObjectForKey:v8];
}

- (void)setHeader:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      v9 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v10 = [v8 rangeOfCharacterFromSet:v9 options:2];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = MFLogGeneral();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&dword_1D36B2000, v16, OS_LOG_TYPE_DEFAULT, "#Warning Error: tried to set a header with a newline.  Ignoring invalid value.", v17, 2u);
        }

        goto LABEL_13;
      }
    }

    v8 = [v7 lowercaseString];
    headersAdded = self->_headersAdded;
    if (!headersAdded)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = self->_headersAdded;
      self->_headersAdded = v12;

      headersAdded = self->_headersAdded;
    }

    [(NSMutableDictionary *)headersAdded setObject:v6 forKey:v8];
    v14 = [(NSMutableArray *)self->_headersRemoved indexOfObject:v8];
    headersRemoved = self->_headersRemoved;
    if (headersRemoved && v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)headersRemoved removeObjectAtIndex:?];
    }

LABEL_13:
  }
}

- (void)_appendHeaderKey:(id)a3 value:(id)a4 toData:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MFMessageHeaders *)self _capitalizedKeyForKey:v15];
  [v9 mf_appendCString:{objc_msgSend(v10, "ef_lossyDefaultCStringBytes")}];

  if (([v15 isEqualToString:@"From "] & 1) == 0)
  {
    [v9 mf_appendCString:": "];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *MEMORY[0x1E699B0B0];
    if ([v15 isEqualToString:*MEMORY[0x1E699B0B0]] && objc_msgSend(v8, "rangeOfString:", @"<") == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v9 mf_appendCString:"<"];
    }

    v12 = [v8 mf_encodedHeaderDataWithEncodingHint:{-[MFMessageHeaders preferredEncoding](self, "preferredEncoding")}];
    if ([v15 isEqualToString:v11])
    {
      v13 = [v8 rangeOfString:@">"] == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = 0;
    }

    v14 = v12;
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v8;
    v13 = 0;
    if (!v14)
    {
LABEL_17:
      if (v13)
      {
        [v9 mf_appendCString:">"];
      }

      goto LABEL_19;
    }

LABEL_16:
    [v9 appendData:v14];
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    __assert_rtn("[MFMutableMessageHeaders _appendHeaderKey:value:toData:]", "MutableMessageHeaders.m", 133, "0 && Tried to append an array that we don't understand.");
  }

  v14 = 0;
LABEL_19:
  [v9 mf_appendCString:"\n"];
}

- (void)_appendAddedHeaderKey:(id)a3 value:(id)a4 toData:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [(MFMutableMessageHeaders *)self _appendHeaderKey:v8 value:*(*(&v16 + 1) + 8 * v14++) toData:v10, v16];
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  else
  {
    [(MFMutableMessageHeaders *)self _appendHeaderKey:v8 value:v9 toData:v10];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_copyHeaderValueForKey:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  headersRemoved = self->_headersRemoved;
  if (headersRemoved && ([v4 lowercaseString], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[NSMutableArray indexOfObject:](headersRemoved, "indexOfObject:", v7), v7, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0;
    v10 = [(NSMutableDictionary *)self->_headersAdded objectForKey:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        v13 = *v24;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = [*(*(&v23 + 1) + 8 * i) copy];
            [v9 addObject:v15];
          }

          v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v12);
      }
    }

    else if (v10)
    {
      v16 = [v10 copy];
      [v9 addObject:v16];
    }

    v17 = 0;
    while (1)
    {
      v18 = [MFMessageHeaders shouldDecodeHeaderForKey:v5];
      v22.receiver = self;
      v22.super_class = MFMutableMessageHeaders;
      v19 = [(MFMessageHeaders *)&v22 _copyHeaderValueForKey:v5 offset:&v27 decoded:v18];

      if (!v19)
      {
        break;
      }

      v17 = v19;
      [v9 addObject:v19];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v9;
}

- (NSData)encodedHeaders
{
  v45 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_headersAdded count]|| [(NSMutableArray *)self->_headersRemoved count])
  {
    v3 = objc_alloc_init(MFMutableData);
    v4 = [(NSMutableDictionary *)self->_headersAdded mutableCopy];
    v32 = [(NSMutableArray *)self->_headersRemoved mutableCopy];
    memset(v41, 170, sizeof(v41));
    v5 = [(MFMessageHeaders *)self data];
    v6 = [v5 bytes];

    v7 = [(MFMessageHeaders *)self data];
    v8 = [v7 length];

    while (1)
    {
      v9 = [(MFMessageHeaders *)self data];
      v10 = v8;
      HeaderFromDataInRange = ECGetNextHeaderFromDataInRange();

      if (!HeaderFromDataInRange)
      {
        break;
      }

      v12 = CFStringCreateWithBytes(0, (v6 + v41[0]), v41[1], 0x600u, 0);
      v13 = [(__CFString *)v12 lowercaseString];
      if (([v13 isEqualToString:@"from "] & 1) == 0)
      {
        if (v32)
        {
          v14 = [v32 indexOfObject:v13] != 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = 0;
        }

        v15 = [v4 objectForKey:v13];

        if (v14 || v15 != 0)
        {
          if (v15)
          {
            v16 = [v4 objectForKey:v13];
            [v4 removeObjectForKey:v13];
            [(MFMutableMessageHeaders *)self _appendAddedHeaderKey:v12 value:v16 toData:v3];
            [v32 addObject:v13];
          }
        }

        else
        {
          [(MFMutableData *)v3 appendBytes:v6 + v41[0] length:v41[1]];
          [(NSMutableData *)v3 mf_appendCString:": "];
          [(MFMutableData *)v3 appendBytes:v6 + v41[2] length:v41[3]];
          [(NSMutableData *)v3 mf_appendCString:"\n"];
        }
      }

      v8 = v10;
    }

    if (encodedHeaders_onceToken != -1)
    {
      [MFMutableMessageHeaders encodedHeaders];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v17 = encodedHeaders_orderedHeaders;
    v18 = [v17 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v18)
    {
      v19 = *v38;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v37 + 1) + 8 * i);
          v22 = [v4 objectForKey:v21];
          if (v22)
          {
            v23 = [v4 objectForKey:v21];
            [(MFMutableMessageHeaders *)self _appendAddedHeaderKey:v21 value:v23 toData:v3];

            [v4 removeObjectForKey:v21];
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v18);
    }

    [v4 allKeys];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v24 = v34 = 0u;
    v25 = [v24 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v25)
    {
      v26 = *v34;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v33 + 1) + 8 * j);
          v29 = [v4 objectForKey:v28];
          [(MFMutableMessageHeaders *)self _appendAddedHeaderKey:v28 value:v29 toData:v3];
        }

        v25 = [v24 countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v25);
    }

    [(MFMutableData *)v3 appendBytes:"\n" length:1];
  }

  else
  {
    v42.receiver = self;
    v42.super_class = MFMutableMessageHeaders;
    v3 = [(MFMessageHeaders *)&v42 encodedHeaders];
  }

  v30 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t __41__MFMutableMessageHeaders_encodedHeaders__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v1 = [v0 initWithObjects:{*MEMORY[0x1E699B0D0], *MEMORY[0x1E699B0A8], *MEMORY[0x1E699B0C8], *MEMORY[0x1E699B0A0], *MEMORY[0x1E699B0B0], *MEMORY[0x1E699B0B8], *MEMORY[0x1E699B0C0], 0}];
  encodedHeaders_orderedHeaders = v1;

  return MEMORY[0x1EEE66BB8](v1);
}

- (void)setAddressList:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v8 count])
  {
    v7 = +[MFMessageHeaders encodedDataForAddressList:splittingAtLength:firstLineBuffer:](MFMessageHeaders, "encodedDataForAddressList:splittingAtLength:firstLineBuffer:", v8, 72, [v6 length] + 2);
    [(MFMutableMessageHeaders *)self setHeader:v7 forKey:v6];
  }

  else
  {
    [(MFMutableMessageHeaders *)self removeHeaderForKey:v6];
  }
}

- (void)setReferences:(id)a3
{
  v5 = a3;
  if (v5 && [v5 count])
  {
    v4 = [v5 componentsJoinedByString:@" "];
    [(MFMutableMessageHeaders *)self setHeader:v4 forKey:*MEMORY[0x1E699B140]];
  }

  else
  {
    [(MFMutableMessageHeaders *)self removeHeaderForKey:*MEMORY[0x1E699B140]];
  }
}

- (void)stripInternalHeaders
{
  v14 = *MEMORY[0x1E69E9840];
  [(MFMutableMessageHeaders *)self allHeaderKeys];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v3 = v10 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (![v7 compare:@"x-apple-internal-" options:1 range:{0, objc_msgSend(@"x-apple-internal-", "length", v9)}] || !objc_msgSend(v7, "compare:options:", @"X-Apple-Content-Length", 1) || !objc_msgSend(v7, "compare:options:", @"x-uniform-type-identifier", 1))
        {
          [(MFMutableMessageHeaders *)self removeHeaderForKey:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v28 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = MFMutableMessageHeaders;
  v3 = [(MFMessageHeaders *)&v25 description];
  v4 = [v3 mutableCopy];

  [v4 appendString:@"\n\tAdded:\n"];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_headersAdded;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_headersAdded objectForKey:v9];
        [v4 appendFormat:@"\t\t%@ => %@\n", v9, v10];
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  [v4 appendString:@"\n\tRemoved:\n"];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_headersRemoved;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v12)
  {
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [v4 appendFormat:@"\t\t%@\n", *(*(&v17 + 1) + 8 * j)];
      }

      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

@end