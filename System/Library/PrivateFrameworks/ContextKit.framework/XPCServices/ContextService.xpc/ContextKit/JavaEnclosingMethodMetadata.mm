@interface JavaEnclosingMethodMetadata
- (JavaEnclosingMethodMetadata)initWithMetadata:(const J2ObjCEnclosingMethodInfo *)metadata;
- (void)dealloc;
@end

@implementation JavaEnclosingMethodMetadata

- (JavaEnclosingMethodMetadata)initWithMetadata:(const J2ObjCEnclosingMethodInfo *)metadata
{
  v6.receiver = self;
  v6.super_class = JavaEnclosingMethodMetadata;
  v4 = [(JavaEnclosingMethodMetadata *)&v6 init];
  if (v4)
  {
    v4->typeName = [[NSString alloc] initWithCString:metadata->var0 encoding:4];
    v4->selector = [[NSString alloc] initWithCString:metadata->var1 encoding:4];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaEnclosingMethodMetadata;
  [(JavaEnclosingMethodMetadata *)&v3 dealloc];
}

@end