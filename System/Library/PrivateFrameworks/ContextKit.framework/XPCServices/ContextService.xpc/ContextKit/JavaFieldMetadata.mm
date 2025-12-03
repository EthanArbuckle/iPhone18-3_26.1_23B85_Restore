@interface JavaFieldMetadata
- (JavaFieldMetadata)initWithMetadata:(const J2ObjcFieldInfo *)metadata;
- (id)genericSignature;
- (id)javaName;
- (id)name;
@end

@implementation JavaFieldMetadata

- (JavaFieldMetadata)initWithMetadata:(const J2ObjcFieldInfo *)metadata
{
  v5.receiver = self;
  v5.super_class = JavaFieldMetadata;
  result = [(JavaFieldMetadata *)&v5 init];
  if (result)
  {
    result->data_ = metadata;
  }

  return result;
}

- (id)name
{
  data = self->data_;
  var1 = data->var1;
  if (!var1)
  {
    var1 = data->var0;
  }

  return [NSString stringWithUTF8String:var1];
}

- (id)javaName
{
  if (self->data_->var1)
  {
    return [NSString stringWithUTF8String:?];
  }

  else
  {
    return 0;
  }
}

- (id)genericSignature
{
  if (self->data_->var5)
  {
    return [NSString stringWithUTF8String:?];
  }

  else
  {
    return 0;
  }
}

@end