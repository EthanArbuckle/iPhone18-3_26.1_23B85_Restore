@interface MIStashedBundleContainer
- (BOOL)saveStashMetadata:(id)metadata withError:(id *)error;
- (NSURL)stashMetadataURL;
- (id)newStashMetadata;
- (id)stashMetadataWithError:(id *)error;
@end

@implementation MIStashedBundleContainer

- (NSURL)stashMetadataURL
{
  containerURL = [(MIContainer *)self containerURL];
  v3 = [containerURL URLByAppendingPathComponent:@"StashMetadata.plist" isDirectory:0];

  return v3;
}

- (id)newStashMetadata
{
  v3 = objc_alloc_init(MIStashMetadata);
  [(MIStashedBundleContainer *)self setStashMetadata:v3];

  [(MIStashedBundleContainer *)self stashMetadata];
  return objc_claimAutoreleasedReturnValue();
}

- (id)stashMetadataWithError:(id *)error
{
  stashMetadata = [(MIStashedBundleContainer *)self stashMetadata];
  stashMetadata2 = [(MIStashedBundleContainer *)self stashMetadata];

  if (stashMetadata2)
  {
    v7 = 0;
LABEL_5:
    v10 = [stashMetadata copy];
    stashMetadataURL = stashMetadata;
    goto LABEL_6;
  }

  stashMetadataURL = [(MIStashedBundleContainer *)self stashMetadataURL];
  v15 = 0;
  v9 = [MIStashMetadata metadataFromURL:stashMetadataURL error:&v15];
  v7 = v15;

  if (v9)
  {
LABEL_4:
    [(MIStashedBundleContainer *)self setStashMetadata:v9];

    stashMetadata = v9;
    goto LABEL_5;
  }

  domain = [v7 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    code = [v7 code];

    if (code == 260)
    {
      v9 = objc_alloc_init(MIStashMetadata);
      goto LABEL_4;
    }
  }

  else
  {
  }

  if (error)
  {
    v14 = v7;
    v10 = 0;
    *error = v7;
  }

  else
  {
    v10 = 0;
  }

LABEL_6:

  return v10;
}

- (BOOL)saveStashMetadata:(id)metadata withError:(id *)error
{
  metadataCopy = metadata;
  stashMetadataURL = [(MIStashedBundleContainer *)self stashMetadataURL];
  v13 = 0;
  v8 = [metadataCopy serializeToURL:stashMetadataURL error:&v13];
  v9 = v13;
  v10 = v9;
  if (v8)
  {
    [(MIStashedBundleContainer *)self setStashMetadata:metadataCopy];
  }

  else if (error)
  {
    v11 = v9;
    *error = v10;
  }

  return v8;
}

@end