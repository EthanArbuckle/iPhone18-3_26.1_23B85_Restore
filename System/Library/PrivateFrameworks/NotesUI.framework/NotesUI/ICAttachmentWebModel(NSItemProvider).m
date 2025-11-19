@interface ICAttachmentWebModel(NSItemProvider)
- (id)itemProvider;
- (void)itemProvider;
@end

@implementation ICAttachmentWebModel(NSItemProvider)

- (id)itemProvider
{
  v2 = [a1 attachment];
  v3 = [v2 synapseData];

  if (![v3 length])
  {
    goto LABEL_10;
  }

  v12 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69D53F8]) initWithData:v3 error:&v12];
  v5 = v12;
  if (v5)
  {
    v6 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ICAttachmentWebModel(NSItemProvider) *)v5 itemProvider];
    }
  }

  if (v4)
  {
    v7 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v4];
    v8 = [a1 attachment];
    v9 = [v8 URL];

    if (v9)
    {
      [v7 registerObject:v9 visibility:0];
    }
  }

  else
  {
LABEL_10:
    v11.receiver = a1;
    v11.super_class = &off_1F5067C38;
    v7 = objc_msgSendSuper2(&v11, sel_itemProvider);
  }

  return v7;
}

- (void)itemProvider
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Encountered error while trying to deserialize synapse content item: %@", &v2, 0xCu);
}

@end