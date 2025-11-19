@interface MIStashedBundleContainer
- (BOOL)saveStashMetadata:(id)a3 withError:(id *)a4;
- (NSURL)stashMetadataURL;
- (id)newStashMetadata;
- (id)stashMetadataWithError:(id *)a3;
@end

@implementation MIStashedBundleContainer

- (NSURL)stashMetadataURL
{
  v2 = [(MIContainer *)self containerURL];
  v3 = [v2 URLByAppendingPathComponent:@"StashMetadata.plist" isDirectory:0];

  return v3;
}

- (id)newStashMetadata
{
  v3 = objc_alloc_init(MIStashMetadata);
  [(MIStashedBundleContainer *)self setStashMetadata:v3];

  [(MIStashedBundleContainer *)self stashMetadata];
  return objc_claimAutoreleasedReturnValue();
}

- (id)stashMetadataWithError:(id *)a3
{
  v5 = [(MIStashedBundleContainer *)self stashMetadata];
  v6 = [(MIStashedBundleContainer *)self stashMetadata];

  if (v6)
  {
    v7 = 0;
LABEL_5:
    v10 = [v5 copy];
    v8 = v5;
    goto LABEL_6;
  }

  v8 = [(MIStashedBundleContainer *)self stashMetadataURL];
  v15 = 0;
  v9 = [MIStashMetadata metadataFromURL:v8 error:&v15];
  v7 = v15;

  if (v9)
  {
LABEL_4:
    [(MIStashedBundleContainer *)self setStashMetadata:v9];

    v5 = v9;
    goto LABEL_5;
  }

  v12 = [v7 domain];
  if ([v12 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v13 = [v7 code];

    if (v13 == 260)
    {
      v9 = objc_alloc_init(MIStashMetadata);
      goto LABEL_4;
    }
  }

  else
  {
  }

  if (a3)
  {
    v14 = v7;
    v10 = 0;
    *a3 = v7;
  }

  else
  {
    v10 = 0;
  }

LABEL_6:

  return v10;
}

- (BOOL)saveStashMetadata:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(MIStashedBundleContainer *)self stashMetadataURL];
  v13 = 0;
  v8 = [v6 serializeToURL:v7 error:&v13];
  v9 = v13;
  v10 = v9;
  if (v8)
  {
    [(MIStashedBundleContainer *)self setStashMetadata:v6];
  }

  else if (a4)
  {
    v11 = v9;
    *a4 = v10;
  }

  return v8;
}

@end