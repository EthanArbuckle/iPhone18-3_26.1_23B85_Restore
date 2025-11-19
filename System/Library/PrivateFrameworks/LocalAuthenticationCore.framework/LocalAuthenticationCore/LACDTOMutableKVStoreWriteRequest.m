@interface LACDTOMutableKVStoreWriteRequest
- (BOOL)isEqual:(id)a3;
- (LACDTOMutableKVStoreWriteRequest)initWithKey:(int64_t)a3 value:(id)a4;
- (NSString)description;
@end

@implementation LACDTOMutableKVStoreWriteRequest

- (LACDTOMutableKVStoreWriteRequest)initWithKey:(int64_t)a3 value:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = LACDTOMutableKVStoreWriteRequest;
  v8 = [(LACDTOMutableKVStoreWriteRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_key = a3;
    objc_storeStrong(&v8->_value, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F2694F70])
  {
    v5 = v4;
    v6 = [(LACDTOMutableKVStoreWriteRequest *)self key];
    if (v6 == [v5 key])
    {
      v7 = [(LACDTOMutableKVStoreWriteRequest *)self value];
      v8 = [v5 value];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(LACDTOMutableKVStoreWriteRequest *)self value];
        v11 = [v5 value];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_14;
        }
      }

      v14 = [(LACDTOMutableKVStoreWriteRequest *)self connection];
      v15 = [v5 connection];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(LACDTOMutableKVStoreWriteRequest *)self connection];
        v18 = [v5 connection];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_14;
        }
      }

      v20 = [(LACDTOMutableKVStoreWriteRequest *)self contextUUID];
      v21 = [v5 contextUUID];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(LACDTOMutableKVStoreWriteRequest *)self contextUUID];
        v24 = [v5 contextUUID];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_14;
        }
      }

      v27 = [(LACDTOMutableKVStoreWriteRequest *)self bypassEntitlements];
      v13 = v27 ^ [v5 bypassEntitlements] ^ 1;
      goto LABEL_15;
    }

LABEL_14:
    LOBYTE(v13) = 0;
LABEL_15:

    goto LABEL_16;
  }

  LOBYTE(v13) = 0;
LABEL_16:

  return v13;
}

- (NSString)description
{
  v25[5] = *MEMORY[0x1E69E9840];
  v21 = MEMORY[0x1E696AEC0];
  v20 = objc_opt_class();
  v3 = MEMORY[0x1E696AEC0];
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LACDTOMutableKVStoreWriteRequest key](self, "key")}];
  v23 = [v3 stringWithFormat:@"key: %@", v24];
  v25[0] = v23;
  v4 = MEMORY[0x1E696AEC0];
  v22 = [(LACDTOMutableKVStoreWriteRequest *)self value];
  v5 = [v4 stringWithFormat:@"value: %@", v22];
  v25[1] = v5;
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(LACDTOMutableKVStoreWriteRequest *)self connection];
  v8 = [v6 stringWithFormat:@"connection: %@", v7];
  v25[2] = v8;
  v9 = MEMORY[0x1E696AEC0];
  v10 = [(LACDTOMutableKVStoreWriteRequest *)self contextUUID];
  v11 = [v9 stringWithFormat:@"contextUUID: %@", v10];
  v25[3] = v11;
  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACDTOMutableKVStoreWriteRequest bypassEntitlements](self, "bypassEntitlements")}];
  v14 = [v12 stringWithFormat:@"bypassEntitlements: %@", v13];
  v25[4] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];
  v16 = [v15 componentsJoinedByString:@" "];;
  v17 = [v21 stringWithFormat:@"<%@ %p %@>", v20, self, v16];;

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

@end