@interface LACDTOMutableKVStoreReadRequest
- (BOOL)isEqual:(id)equal;
- (LACDTOMutableKVStoreReadRequest)initWithKey:(int64_t)key;
- (NSString)description;
@end

@implementation LACDTOMutableKVStoreReadRequest

- (LACDTOMutableKVStoreReadRequest)initWithKey:(int64_t)key
{
  v5.receiver = self;
  v5.super_class = LACDTOMutableKVStoreReadRequest;
  result = [(LACDTOMutableKVStoreReadRequest *)&v5 init];
  if (result)
  {
    result->_key = key;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F26A3100])
  {
    v5 = equalCopy;
    v6 = [(LACDTOMutableKVStoreReadRequest *)self key];
    if (v6 == [v5 key])
    {
      connection = [(LACDTOMutableKVStoreReadRequest *)self connection];
      connection2 = [v5 connection];
      v9 = connection2;
      if (connection == connection2)
      {
      }

      else
      {
        connection3 = [(LACDTOMutableKVStoreReadRequest *)self connection];
        connection4 = [v5 connection];
        v12 = [connection3 isEqual:connection4];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      bypassEntitlements = [(LACDTOMutableKVStoreReadRequest *)self bypassEntitlements];
      v13 = bypassEntitlements ^ [v5 bypassEntitlements] ^ 1;
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
  connection = [(LACDTOMutableKVStoreReadRequest *)self connection];
  v9 = [v7 stringWithFormat:@"connection: %@", connection];
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