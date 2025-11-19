@interface JavaEnclosingMethodMetadata
- (JavaEnclosingMethodMetadata)initWithMetadata:(const J2ObjCEnclosingMethodInfo *)a3;
- (void)dealloc;
@end

@implementation JavaEnclosingMethodMetadata

- (JavaEnclosingMethodMetadata)initWithMetadata:(const J2ObjCEnclosingMethodInfo *)a3
{
  v6.receiver = self;
  v6.super_class = JavaEnclosingMethodMetadata;
  v4 = [(JavaEnclosingMethodMetadata *)&v6 init];
  if (v4)
  {
    v4->typeName = [[NSString alloc] initWithCString:a3->var0 encoding:4];
    v4->selector = [[NSString alloc] initWithCString:a3->var1 encoding:4];
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