@interface LACDTOMutableKVStoreWriteRequest
- (BOOL)isEqual:(id)equal;
- (LACDTOMutableKVStoreWriteRequest)initWithKey:(int64_t)key value:(id)value;
- (NSString)description;
@end

@implementation LACDTOMutableKVStoreWriteRequest

- (LACDTOMutableKVStoreWriteRequest)initWithKey:(int64_t)key value:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = LACDTOMutableKVStoreWriteRequest;
  v8 = [(LACDTOMutableKVStoreWriteRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_key = key;
    objc_storeStrong(&v8->_value, value);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F2694F70])
  {
    v5 = equalCopy;
    v6 = [(LACDTOMutableKVStoreWriteRequest *)self key];
    if (v6 == [v5 key])
    {
      value = [(LACDTOMutableKVStoreWriteRequest *)self value];
      value2 = [v5 value];
      v9 = value2;
      if (value == value2)
      {
      }

      else
      {
        value3 = [(LACDTOMutableKVStoreWriteRequest *)self value];
        value4 = [v5 value];
        v12 = [value3 isEqual:value4];

        if (!v12)
        {
          goto LABEL_14;
        }
      }

      connection = [(LACDTOMutableKVStoreWriteRequest *)self connection];
      connection2 = [v5 connection];
      v16 = connection2;
      if (connection == connection2)
      {
      }

      else
      {
        connection3 = [(LACDTOMutableKVStoreWriteRequest *)self connection];
        connection4 = [v5 connection];
        v19 = [connection3 isEqual:connection4];

        if (!v19)
        {
          goto LABEL_14;
        }
      }

      contextUUID = [(LACDTOMutableKVStoreWriteRequest *)self contextUUID];
      contextUUID2 = [v5 contextUUID];
      v22 = contextUUID2;
      if (contextUUID == contextUUID2)
      {
      }

      else
      {
        contextUUID3 = [(LACDTOMutableKVStoreWriteRequest *)self contextUUID];
        contextUUID4 = [v5 contextUUID];
        v25 = [contextUUID3 isEqual:contextUUID4];

        if (!v25)
        {
          goto LABEL_14;
        }
      }

      bypassEntitlements = [(LACDTOMutableKVStoreWriteRequest *)self bypassEntitlements];
      v13 = bypassEntitlements ^ [v5 bypassEntitlements] ^ 1;
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
  value = [(LACDTOMutableKVStoreWriteRequest *)self value];
  v5 = [v4 stringWithFormat:@"value: %@", value];
  v25[1] = v5;
  v6 = MEMORY[0x1E696AEC0];
  connection = [(LACDTOMutableKVStoreWriteRequest *)self connection];
  v8 = [v6 stringWithFormat:@"connection: %@", connection];
  v25[2] = v8;
  v9 = MEMORY[0x1E696AEC0];
  contextUUID = [(LACDTOMutableKVStoreWriteRequest *)self contextUUID];
  v11 = [v9 stringWithFormat:@"contextUUID: %@", contextUUID];
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