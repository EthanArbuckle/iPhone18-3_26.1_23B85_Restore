@interface JavaLangReflectConstructor
+ (id)constructorWithMethodSignature:(id)a3 selector:(SEL)a4 class:(id)a5 metadata:(id)a6;
- (id)description;
- (id)invocationForTarget:(id)a3;
- (id)jniNewInstance:(id *)a3;
- (id)newInstanceWithNSObjectArray:(id)a3;
- (unint64_t)hash;
@end

@implementation JavaLangReflectConstructor

+ (id)constructorWithMethodSignature:(id)a3 selector:(SEL)a4 class:(id)a5 metadata:(id)a6
{
  v6 = [(ExecutableMember *)[JavaLangReflectConstructor alloc] initWithMethodSignature:a3 selector:a4 class:a5 metadata:a6];

  return v6;
}

- (id)newInstanceWithNSObjectArray:(id)a3
{
  v5 = [(JavaLangReflectConstructor *)self allocInstance];
  v6 = [(JavaLangReflectConstructor *)self invocationForTarget:v5];
  if (a3)
  {
    LODWORD(v7) = *(a3 + 2);
  }

  else
  {
    LODWORD(v7) = 0;
  }

  v8 = [(ExecutableMember *)self getParameterTypes];
  if (v7 != v8[2])
  {
    v12 = [JavaLangIllegalArgumentException alloc];
    v13 = @"wrong number of arguments";
    goto LABEL_11;
  }

  if (v7 >= 1)
  {
    v9 = v8;
    v10 = 0x200000000;
    v7 = v7;
    while (1)
    {
      v14 = 0;
      if (([v9[3] __unboxValue:*(a3 + 3) toRawValue:&v14] & 1) == 0)
      {
        break;
      }

      [v6 setArgument:&v14 atIndex:v10 >> 32];
      v10 += &_mh_execute_header;
      a3 = a3 + 8;
      ++v9;
      if (!--v7)
      {
        goto LABEL_9;
      }
    }

    v12 = [JavaLangIllegalArgumentException alloc];
    v13 = @"argument type mismatch";
LABEL_11:
    objc_exception_throw([(JavaLangIllegalArgumentException *)v12 initWithNSString:v13]);
  }

LABEL_9:
  [(JavaLangReflectConstructor *)self invoke:v6];
  return v5;
}

- (id)jniNewInstance:(id *)a3
{
  v5 = [(JavaLangReflectConstructor *)self allocInstance];
  v6 = [(JavaLangReflectConstructor *)self invocationForTarget:v5];
  if ([(ExecutableMember *)self getNumParams]>= 1)
  {
    v7 = 0;
    v8 = 0x200000000;
    do
    {
      [v6 setArgument:a3 atIndex:v8 >> 32];
      ++v7;
      v8 += &_mh_execute_header;
      ++a3;
    }

    while (v7 < [(ExecutableMember *)self getNumParams]);
  }

  [(JavaLangReflectConstructor *)self invoke:v6];
  return v5;
}

- (id)invocationForTarget:(id)a3
{
  v5 = [NSInvocation invocationWithMethodSignature:self->super.methodSignature_];
  v6 = v5;
  if (self->super.selector_)
  {
    selector = self->super.selector_;
  }

  else
  {
    selector = 0;
  }

  [(NSInvocation *)v5 setSelector:selector];
  [(NSInvocation *)v6 setTarget:a3];
  return v6;
}

- (unint64_t)hash
{
  v2 = [(IOSClass *)self->super.class_ getName];

  return [v2 hash];
}

- (id)description
{
  v3 = +[NSMutableString string];
  objc_msgSend(v3, "appendFormat:", @"%@ %@("), JavaLangReflectModifier_toStringWithInt_(-[ExecutableMember getModifiers](self, "getModifiers")), objc_msgSend(-[ExecutableMember getDeclaringClass](self, "getDeclaringClass"), "getName");
  v4 = [(ExecutableMember *)self getParameterTypes];
  v5 = *(v4 + 2);
  if (v5 >= 1)
  {
    v6 = v4;
    [v3 appendString:{objc_msgSend(v4[3], "getName")}];
    if (v5 != 1)
    {
      v7 = v6 + 1;
      v8 = v5 - 1;
      do
      {
        [v3 appendFormat:@", %@", objc_msgSend(v7[3], "getName")];
        ++v7;
        --v8;
      }

      while (v8);
    }
  }

  [v3 appendString:@""]);
  v9 = [(ExecutableMember *)self getExceptionTypes];
  v10 = *(v9 + 2);
  if (v10 >= 1)
  {
    v11 = v9;
    [v3 appendFormat:@" throws %@", objc_msgSend(v9[3], "getName")];
    if (v10 != 1)
    {
      v12 = v11 + 1;
      v13 = v10 - 1;
      do
      {
        [v3 appendFormat:@", %@", objc_msgSend(v12[3], "getName")];
        ++v12;
        --v13;
      }

      while (v13);
    }
  }

  return [v3 description];
}

@end