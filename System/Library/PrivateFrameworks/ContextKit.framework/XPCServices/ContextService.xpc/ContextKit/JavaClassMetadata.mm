@interface JavaClassMetadata
- (JavaClassMetadata)initWithMetadata:(J2ObjcClassInfo *)a3;
- (const)findFieldInfo:(const char *)a3;
- (const)findMethodInfo:(id)a3;
- (id)allFields;
- (id)allMethods;
- (id)findFieldMetadata:(const char *)a3;
- (id)findMethodMetadata:(id)a3;
- (id)findMethodMetadataWithJavaName:(id)a3 argCount:(int)a4;
- (id)genericSignature;
- (id)getEnclosingMethod;
- (id)getInnerClasses;
- (id)getSuperclassTypeArguments;
- (id)qualifiedName;
- (void)dealloc;
@end

@implementation JavaClassMetadata

- (JavaClassMetadata)initWithMetadata:(J2ObjcClassInfo *)a3
{
  v7.receiver = self;
  v7.super_class = JavaClassMetadata;
  v4 = [(JavaClassMetadata *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->data_ = a3;
    v4->version = a3->var0;
    v4->typeName = [[NSString alloc] initWithCString:a3->var1 encoding:4];
    if (a3->var2)
    {
      v5->packageName = [[NSString alloc] initWithCString:a3->var2 encoding:4];
    }

    if (a3->var3)
    {
      v5->enclosingName = [[NSString alloc] initWithCString:a3->var3 encoding:4];
    }

    v5->fieldCount = a3->var7;
    v5->methodCount = a3->var5;
    v5->modifiers = a3->var4;
  }

  return v5;
}

- (id)qualifiedName
{
  v3 = +[NSMutableString string];
  if ([(NSString *)self->packageName length])
  {
    [v3 appendString:self->packageName];
    [v3 appendString:@"."];
  }

  if (self->enclosingName)
  {
    [v3 appendString:?];
    [v3 appendString:@"$"];
  }

  [v3 appendString:self->typeName];
  return v3;
}

- (const)findMethodInfo:(id)a3
{
  v4 = [a3 cStringUsingEncoding:4];
  data = self->data_;
  var5 = data->var5;
  if (!data->var5)
  {
    return 0;
  }

  v7 = v4;
  for (i = data->var6; strcmp(v7, i->var0); ++i)
  {
    if (!--var5)
    {
      return 0;
    }
  }

  return i;
}

- (id)findMethodMetadata:(id)a3
{
  result = [(JavaClassMetadata *)self findMethodInfo:a3];
  if (result)
  {
    v4 = [[JavaMethodMetadata alloc] initWithMetadata:result];

    return v4;
  }

  return result;
}

- (id)findMethodMetadataWithJavaName:(id)a3 argCount:(int)a4
{
  v6 = [a3 cStringUsingEncoding:4];
  data = self->data_;
  if (!data->var5)
  {
    return 0;
  }

  v8 = v6;
  v9 = 0;
  while (1)
  {
    v10 = &data->var6[v9];
    if (v10->var1 && !strcmp(v8, v10->var1))
    {
      v11 = *v10->var0;
      if (*v10->var0)
      {
        v12 = 0;
        v13 = (v10->var0 + 1);
        do
        {
          if (v11 == 58)
          {
            ++v12;
          }

          v14 = *v13++;
          v11 = v14;
        }

        while (v14);
      }

      else
      {
        v12 = 0;
      }

      if (v12 == a4)
      {
        __strcpy_chk();
        __strcat_chk();
        data = self->data_;
        v15 = strlen(__s);
        if (strncmp(__s, data->var6[v9].var0, v15))
        {
          break;
        }
      }
    }

    if (++v9 >= data->var5)
    {
      return 0;
    }
  }

  return [[JavaMethodMetadata alloc] initWithMetadata:&self->data_->var6[v9]];
}

- (const)findFieldInfo:(const char *)a3
{
  data = self->data_;
  var7 = data->var7;
  if (!data->var7)
  {
    return 0;
  }

  v6 = 0;
  var8 = data->var8;
  for (i = var8; ; ++i)
  {
    var1 = i->var1;
    if (var1)
    {
      if (!strcmp(a3, var1))
      {
        break;
      }
    }

    v10 = &var8[v6];
    var0 = i->var0;
    if (!strcmp(a3, i->var0))
    {
      return v10;
    }

    v12 = strlen(var0) - 1;
    if (var0[v12] == 95 && strlen(a3) == v12 && !strncmp(a3, var0, v12))
    {
      return v10;
    }

    ++v6;
    if (!--var7)
    {
      return 0;
    }
  }

  return i;
}

- (id)findFieldMetadata:(const char *)a3
{
  result = [(JavaClassMetadata *)self findFieldInfo:a3];
  if (result)
  {
    v4 = [[JavaFieldMetadata alloc] initWithMetadata:result];

    return v4;
  }

  return result;
}

- (id)getSuperclassTypeArguments
{
  data = self->data_;
  var9 = data->var9;
  if (!data->var9)
  {
    return 0;
  }

  v5 = [IOSObjectArray arrayWithLength:var9 type:JavaLangReflectType_class_()];
  v6 = 0;
  do
  {
    v7 = JreTypeForString(self->data_->var10[v6]);
    IOSObjectArray_Set(v5, v6++, v7);
  }

  while (var9 != v6);
  return v5;
}

- (id)allFields
{
  v3 = [IOSObjectArray arrayWithLength:self->data_->var7 type:NSObject_class_()];
  data = self->data_;
  if (data->var7)
  {
    v5 = 0;
    var8 = data->var8;
    do
    {
      [(IOSObjectArray *)v3 replaceObjectAtIndex:v5++ withObject:[[JavaFieldMetadata alloc] initWithMetadata:var8++]];
    }

    while (v5 < self->data_->var7);
  }

  return v3;
}

- (id)allMethods
{
  v3 = [IOSObjectArray arrayWithLength:self->data_->var5 type:NSObject_class_()];
  data = self->data_;
  if (data->var5)
  {
    v5 = 0;
    var6 = data->var6;
    do
    {
      [(IOSObjectArray *)v3 replaceObjectAtIndex:v5++ withObject:[[JavaMethodMetadata alloc] initWithMetadata:var6++]];
    }

    while (v5 < self->data_->var5);
  }

  return v3;
}

- (id)getInnerClasses
{
  data = self->data_;
  var11 = data->var11;
  if (!data->var11)
  {
    return 0;
  }

  v5 = [IOSObjectArray arrayWithLength:var11 type:JavaLangReflectType_class_()];
  v6 = 0;
  do
  {
    v7 = JreTypeForString(self->data_->var12[v6]);
    IOSObjectArray_Set(v5, v6++, v7);
  }

  while (var11 != v6);
  return v5;
}

- (id)getEnclosingMethod
{
  if (!self->data_->var13)
  {
    return 0;
  }

  v2 = [[JavaEnclosingMethodMetadata alloc] initWithMetadata:self->data_->var13];

  return v2;
}

- (id)genericSignature
{
  if (self->data_->var14)
  {
    return [NSString stringWithUTF8String:?];
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaClassMetadata;
  [(JavaClassMetadata *)&v3 dealloc];
}

@end