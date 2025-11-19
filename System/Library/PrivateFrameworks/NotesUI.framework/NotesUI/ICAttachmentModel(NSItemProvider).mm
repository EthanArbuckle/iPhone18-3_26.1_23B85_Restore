@interface ICAttachmentModel(NSItemProvider)
- (id)itemProvider;
@end

@implementation ICAttachmentModel(NSItemProvider)

- (id)itemProvider
{
  v2 = [a1 attachment];
  v3 = [v2 isURL];

  if (v3)
  {
    v4 = [a1 attachment];
    v5 = [v4 URL];

    v6 = [a1 attachment];
    v7 = [v6 title];

    if (![v7 length])
    {
      v8 = MEMORY[0x1E69B7680];
      v9 = [a1 attachment];
      v10 = [v8 defaultTitleForAttachmentType:{objc_msgSend(v9, "attachmentType")}];

      v7 = v10;
    }

    if ([v7 length])
    {
      v11 = [MEMORY[0x1E696ACA0] itemProviderWithURL:v5 title:v7];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v5];
    }

    v14 = v11;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E696ACA0]);
    v13 = ICCheckedProtocolCast();
    v14 = [v12 initWithObject:v13];

    [a1 registerFileLoadHandlersOnItemProvider:v14];
    v5 = [a1 attachment];
    v7 = [v5 title];
    [v14 setSuggestedName:v7];
  }

  return v14;
}

@end