@interface MRUpdateContentItemMessage
- (MRPlayerPath)playerPath;
- (MRUpdateContentItemMessage)initWithContentItems:(id)a3 forPlayerPath:(id)a4 encoding:(int64_t)a5;
- (NSArray)contentItems;
@end

@implementation MRUpdateContentItemMessage

- (MRUpdateContentItemMessage)initWithContentItems:(id)a3 forPlayerPath:(id)a4 encoding:(int64_t)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v26.receiver = self;
  v26.super_class = MRUpdateContentItemMessage;
  v10 = [(MRProtocolMessage *)&v26 init];
  if (v10)
  {
    v11 = objc_alloc_init(_MRUpdateContentItemMessageProtobuf);
    v12 = [v9 skeleton];
    v13 = [v12 protobuf];
    [(_MRUpdateContentItemMessageProtobuf *)v11 setPlayerPath:v13];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v22 + 1) + 8 * v18) protobufWithEncoding:{a5, v22}];
          [(_MRUpdateContentItemMessageProtobuf *)v11 addContentItems:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v16);
    }

    [(MRProtocolMessage *)v10 setUnderlyingCodableMessage:v11];
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:v5];

  return v6;
}

- (NSArray)contentItems
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 contentItems];
  v4 = [v3 mr_map:&__block_literal_global_7];

  return v4;
}

MRContentItem *__42__MRUpdateContentItemMessage_contentItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRContentItem alloc] initWithProtobuf:v2];

  return v3;
}

@end