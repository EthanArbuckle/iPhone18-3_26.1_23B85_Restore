@interface CNComposeRecipients
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (CNComposeRecipients)initWithRecipients:(id)recipients;
@end

@implementation CNComposeRecipients

- (CNComposeRecipients)initWithRecipients:(id)recipients
{
  recipientsCopy = recipients;
  v9.receiver = self;
  v9.super_class = CNComposeRecipients;
  v6 = [(CNComposeRecipients *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipients, recipients);
  }

  return v7;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  readableTypeIdentifiersForItemProvider = [MEMORY[0x1E696AEC0] readableTypeIdentifiersForItemProvider];
  readableTypeIdentifiersForItemProvider2 = [MEMORY[0x1E695DFF8] readableTypeIdentifiersForItemProvider];
  v4 = [readableTypeIdentifiersForItemProvider arrayByAddingObjectsFromArray:readableTypeIdentifiersForItemProvider2];

  return v4;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  readableTypeIdentifiersForItemProvider = [MEMORY[0x1E695DFF8] readableTypeIdentifiersForItemProvider];
  v11 = [readableTypeIdentifiersForItemProvider containsObject:identifierCopy];

  if (v11)
  {
    v45 = 0;
    v12 = [MEMORY[0x1E695DFF8] objectWithItemProviderData:dataCopy typeIdentifier:identifierCopy error:&v45];
    v13 = v45;
  }

  else
  {
    readableTypeIdentifiersForItemProvider2 = [MEMORY[0x1E696AEC0] readableTypeIdentifiersForItemProvider];
    v15 = [readableTypeIdentifiersForItemProvider2 containsObject:identifierCopy];

    if (v15)
    {
      v44 = 0;
      v16 = [MEMORY[0x1E696AEC0] objectWithItemProviderData:dataCopy typeIdentifier:identifierCopy error:&v44];
      v13 = v44;
      v17 = [MEMORY[0x1E695DFF8] URLWithString:v16];
      v12 = v17;
      if (v16)
      {
        scheme = [v17 scheme];

        if (!scheme)
        {
          v19 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];
          [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
          v20 = identifierCopy;
          v21 = dataCopy;
          v23 = v22 = error;
          [v19 stringByAddingPercentEncodingWithAllowedCharacters:v23];
          v42 = v12;
          v25 = v24 = self;

          error = v22;
          dataCopy = v21;
          identifierCopy = v20;

          v16 = [@"mailto:" stringByAppendingString:v25];

          self = v24;
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

  scheme2 = [v12 scheme];
  v27 = [scheme2 caseInsensitiveCompare:@"mailto"];

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v29 = [MEMORY[0x1E699AD10] componentsWithURL:v12];
    toRecipients = [v29 toRecipients];
    [v29 ccRecipients];
    v43 = v12;
    v31 = identifierCopy;
    v32 = dataCopy;
    v34 = v33 = error;
    [toRecipients arrayByAddingObjectsFromArray:v34];
    v35 = v41 = self;
    bccRecipients = [v29 bccRecipients];
    v37 = [v35 arrayByAddingObjectsFromArray:bccRecipients];

    error = v33;
    dataCopy = v32;
    identifierCopy = v31;
    v12 = v43;

    v38 = [v37 ef_map:&__block_literal_global_17];
    v28 = [[v41 alloc] initWithRecipients:v38];
  }

  if (!(v28 | v13))
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

  if (error && v13)
  {
    v39 = v13;
    *error = v13;
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