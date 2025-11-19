@interface NARSYStoreSerializer
- (id)SYObjectWithData:(id)a3;
- (id)dataWithSYObject:(id)a3;
@end

@implementation NARSYStoreSerializer

- (id)dataWithSYObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(NARPBProtoBuffMessage);
    [(NARPBProtoBuffMessage *)v4 setApplicationWrapper:v3];
LABEL_5:
    v5 = [(NARPBProtoBuffMessage *)v4 data];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(NARPBProtoBuffMessage);
    [(NARPBProtoBuffMessage *)v4 setWorkspaceMetadata:v3];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)SYObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[NARPBProtoBuffMessage alloc] initWithData:v3];

  v5 = [(NARPBProtoBuffMessage *)v4 applicationWrapper];

  if (v5)
  {
    v6 = [(NARPBProtoBuffMessage *)v4 applicationWrapper];
  }

  else
  {
    v7 = [(NARPBProtoBuffMessage *)v4 workspaceMetadata];

    if (!v7)
    {
      goto LABEL_6;
    }

    v6 = [(NARPBProtoBuffMessage *)v4 workspaceMetadata];
  }

  v7 = v6;
LABEL_6:

  return v7;
}

@end