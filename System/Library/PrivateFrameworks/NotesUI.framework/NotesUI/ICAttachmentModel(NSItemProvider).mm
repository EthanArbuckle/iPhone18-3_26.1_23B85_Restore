@interface ICAttachmentModel(NSItemProvider)
- (id)itemProvider;
@end

@implementation ICAttachmentModel(NSItemProvider)

- (id)itemProvider
{
  attachment = [self attachment];
  isURL = [attachment isURL];

  if (isURL)
  {
    attachment2 = [self attachment];
    attachment5 = [attachment2 URL];

    attachment3 = [self attachment];
    title = [attachment3 title];

    if (![title length])
    {
      v8 = MEMORY[0x1E69B7680];
      attachment4 = [self attachment];
      v10 = [v8 defaultTitleForAttachmentType:{objc_msgSend(attachment4, "attachmentType")}];

      title = v10;
    }

    if ([title length])
    {
      v11 = [MEMORY[0x1E696ACA0] itemProviderWithURL:attachment5 title:title];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:attachment5];
    }

    v14 = v11;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E696ACA0]);
    v13 = ICCheckedProtocolCast();
    v14 = [v12 initWithObject:v13];

    [self registerFileLoadHandlersOnItemProvider:v14];
    attachment5 = [self attachment];
    title = [attachment5 title];
    [v14 setSuggestedName:title];
  }

  return v14;
}

@end