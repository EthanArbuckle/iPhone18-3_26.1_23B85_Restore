@interface CNComposeRecipients
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (CNComposeRecipients)initWithRecipients:(id)a3;
@end

@implementation CNComposeRecipients

- (CNComposeRecipients)initWithRecipients:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNComposeRecipients;
  v6 = [(CNComposeRecipients *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipients, a3);
  }

  return v7;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v2 = [MEMORY[0x1E696AEC0] readableTypeIdentifiersForItemProvider];
  v3 = [MEMORY[0x1E695DFF8] readableTypeIdentifiersForItemProvider];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DFF8] readableTypeIdentifiersForItemProvider];
  v11 = [v10 containsObject:v9];

  if (v11)
  {
    v45 = 0;
    v12 = [MEMORY[0x1E695DFF8] objectWithItemProviderData:v8 typeIdentifier:v9 error:&v45];
    v13 = v45;
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] readableTypeIdentifiersForItemProvider];
    v15 = [v14 containsObject:v9];

    if (v15)
    {
      v44 = 0;
      v16 = [MEMORY[0x1E696AEC0] objectWithItemProviderData:v8 typeIdentifier:v9 error:&v44];
      v13 = v44;
      v17 = [MEMORY[0x1E695DFF8] URLWithString:v16];
      v12 = v17;
      if (v16)
      {
        v18 = [v17 scheme];

        if (!v18)
        {
          v19 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];
          [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
          v20 = v9;
          v21 = v8;
          v23 = v22 = a5;
          [v19 stringByAddingPercentEncodingWithAllowedCharacters:v23];
          v42 = v12;
          v25 = v24 = a1;

          a5 = v22;
          v8 = v21;
          v9 = v20;

          v16 = [@"mailto:" stringByAppendingString:v25];

          a1 = v24;
          v12 = [MEMORY[0x1E695DFF8] URLWithString:v16];
        }
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }
  }

  v26 = [v12 scheme];
  v27 = [v26 caseInsensitiveCompare:@"mailto"];

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v29 = [MEMORY[0x1E699AD10] componentsWithURL:v12];
    v30 = [v29 toRecipients];
    [v29 ccRecipients];
    v43 = v12;
    v31 = v9;
    v32 = v8;
    v34 = v33 = a5;
    [v30 arrayByAddingObjectsFromArray:v34];
    v35 = v41 = a1;
    v36 = [v29 bccRecipients];
    v37 = [v35 arrayByAddingObjectsFromArray:v36];

    a5 = v33;
    v8 = v32;
    v9 = v31;
    v12 = v43;

    v38 = [v37 ef_map:&__block_literal_global_17];
    v28 = [[v41 alloc] initWithRecipients:v38];
  }

  if (!(v28 | v13))
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

  if (a5 && v13)
  {
    v39 = v13;
    *a5 = v13;
  }

  return v28;
}

CNComposeRecipient *__71__CNComposeRecipients_objectWithItemProviderData_typeIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNComposeRecipient alloc] initWithContact:0 address:v2 kind:0];

  return v3;
}

@end