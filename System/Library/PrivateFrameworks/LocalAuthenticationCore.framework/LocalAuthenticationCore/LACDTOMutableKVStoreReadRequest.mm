@interface LACDTOMutableKVStoreReadRequest
- (BOOL)isEqual:(id)a3;
- (LACDTOMutableKVStoreReadRequest)initWithKey:(int64_t)a3;
- (NSString)description;
@end

@implementation LACDTOMutableKVStoreReadRequest

- (LACDTOMutableKVStoreReadRequest)initWithKey:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = LACDTOMutableKVStoreReadRequest;
  result = [(LACDTOMutableKVStoreReadRequest *)&v5 init];
  if (result)
  {
    result->_key = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F26A3100])
  {
    v5 = v4;
    v6 = [(LACDTOMutableKVStoreReadRequest *)self key];
    if (v6 == [v5 key])
    {
      v7 = [(LACDTOMutableKVStoreReadRequest *)self connection];
      v8 = [v5 connection];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(LACDTOMutableKVStoreReadRequest *)self connection];
        v11 = [v5 connection];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v14 = [(LACDTOMutableKVStoreReadRequest *)self bypassEntitlements];
      v13 = v14 ^ [v5 bypassEntitlements] ^ 1;
      goto LABEL_9;
    }

LABEL_5:
    LOBYTE(v13) = 0;
LABEL_9:

    goto LABEL_10;
  }

  LOBYTE(v13) = 0;
LABEL_10:

  return v13;
}

- (NSString)description
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LACDTOMutableKVStoreReadRequest key](self, "key")}];
  v6 = [v4 stringWithFormat:@"key: %@", v5];
  v19[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(LACDTOMutableKVStoreReadRequest *)self connection];
  v9 = [v7 stringWithFormat:@"connection: %@", v8];
  v19[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACDTOMutableKVStoreReadRequest bypassEntitlements](self, "bypassEntitlements")}];
  v12 = [v10 stringWithFormat:@"bypassEntitlements: %@", v11];
  v19[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v14 = [v13 componentsJoinedByString:@" "];;
  v15 = [v18 stringWithFormat:@"<%@ %p %@>", v3, self, v14];;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end