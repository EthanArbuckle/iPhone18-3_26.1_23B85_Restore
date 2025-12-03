@interface IXAppInstallObjectsMetadata
- (IXAppInstallObjectsMetadata)init;
- (void)addObject:(id)object;
@end

@implementation IXAppInstallObjectsMetadata

- (IXAppInstallObjectsMetadata)init
{
  v6.receiver = self;
  v6.super_class = IXAppInstallObjectsMetadata;
  v2 = [(IXAppInstallObjectsMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(IXAppInstallObjectsMetadata *)v2 setCount:0];
    v4 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    [(IXAppInstallObjectsMetadata *)v3 setInstances:v4];
  }

  return v3;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  [(IXAppInstallObjectsMetadata *)self setCount:[(IXAppInstallObjectsMetadata *)self count]+ 1];
  instances = [(IXAppInstallObjectsMetadata *)self instances];
  [instances addObject:objectCopy];
}

@end