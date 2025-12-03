@interface NARSYStoreSerializer
- (id)SYObjectWithData:(id)data;
- (id)dataWithSYObject:(id)object;
@end

@implementation NARSYStoreSerializer

- (id)dataWithSYObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(NARPBProtoBuffMessage);
    [(NARPBProtoBuffMessage *)v4 setApplicationWrapper:objectCopy];
LABEL_5:
    data = [(NARPBProtoBuffMessage *)v4 data];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(NARPBProtoBuffMessage);
    [(NARPBProtoBuffMessage *)v4 setWorkspaceMetadata:objectCopy];
    goto LABEL_5;
  }

  data = 0;
LABEL_7:

  return data;
}

- (id)SYObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[NARPBProtoBuffMessage alloc] initWithData:dataCopy];

  applicationWrapper = [(NARPBProtoBuffMessage *)v4 applicationWrapper];

  if (applicationWrapper)
  {
    applicationWrapper2 = [(NARPBProtoBuffMessage *)v4 applicationWrapper];
  }

  else
  {
    workspaceMetadata = [(NARPBProtoBuffMessage *)v4 workspaceMetadata];

    if (!workspaceMetadata)
    {
      goto LABEL_6;
    }

    applicationWrapper2 = [(NARPBProtoBuffMessage *)v4 workspaceMetadata];
  }

  workspaceMetadata = applicationWrapper2;
LABEL_6:

  return workspaceMetadata;
}

@end