@interface JavaLangReflectConstructor
+ (id)constructorWithMethodSignature:(id)signature selector:(SEL)selector class:(id)class metadata:(id)metadata;
- (id)description;
- (id)invocationForTarget:(id)target;
- (id)jniNewInstance:(id *)instance;
- (id)newInstanceWithNSObjectArray:(id)array;
- (unint64_t)hash;
@end

@implementation JavaLangReflectConstructor

+ (id)constructorWithMethodSignature:(id)signature selector:(SEL)selector class:(id)class metadata:(id)metadata
{
  v6 = [(ExecutableMember *)[JavaLangReflectConstructor alloc] initWithMethodSignature:signature selector:selector class:class metadata:metadata];

  return v6;
}

- (id)newInstanceWithNSObjectArray:(id)array
{
  allocInstance = [(JavaLangReflectConstructor *)self allocInstance];
  v6 = [(JavaLangReflectConstructor *)self invocationForTarget:allocInstance];
  if (array)
  {
    LODWORD(v7) = *(array + 2);
  }

  else
  {
    LODWORD(v7) = 0;
  }

  getParameterTypes = [(ExecutableMember *)self getParameterTypes];
  if (v7 != getParameterTypes[2])
  {
    v12 = [JavaLangIllegalArgumentException alloc];
    v13 = @"wrong number of arguments";
    goto LABEL_11;
  }

  if (v7 >= 1)
  {
    v9 = getParameterTypes;
    v10 = 0x200000000;
    v7 = v7;
    while (1)
    {
      v14 = 0;
      if (([v9[3] __unboxValue:*(array + 3) toRawValue:&v14] & 1) == 0)
      {
        break;
      }

      [v6 setArgument:&v14 atIndex:v10 >> 32];
      v10 += &_mh_execute_header;
      array = array + 8;
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
  return allocInstance;
}

- (id)jniNewInstance:(id *)instance
{
  allocInstance = [(JavaLangReflectConstructor *)self allocInstance];
  v6 = [(JavaLangReflectConstructor *)self invocationForTarget:allocInstance];
  if ([(ExecutableMember *)self getNumParams]>= 1)
  {
    v7 = 0;
    v8 = 0x200000000;
    do
    {
      [v6 setArgument:instance atIndex:v8 >> 32];
      ++v7;
      v8 += &_mh_execute_header;
      ++instance;
    }

    while (v7 < [(ExecutableMember *)self getNumParams]);
  }

  [(JavaLangReflectConstructor *)self invoke:v6];
  return allocInstance;
}

- (id)invocationForTarget:(id)target
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
  [(NSInvocation *)v6 setTarget:target];
  return v6;
}

- (unint64_t)hash
{
  getName = [(IOSClass *)self->super.class_ getName];

  return [getName hash];
}

- (id)description
{
  v3 = +[NSMutableString string];
  objc_msgSend(v3, "appendFormat:", @"%@ %@("), JavaLangReflectModifier_toStringWithInt_(-[ExecutableMember getModifiers](self, "getModifiers")), objc_msgSend(-[ExecutableMember getDeclaringClass](self, "getDeclaringClass"), "getName");
  getParameterTypes = [(ExecutableMember *)self getParameterTypes];
  v5 = *(getParameterTypes + 2);
  if (v5 >= 1)
  {
    v6 = getParameterTypes;
    [v3 appendString:{objc_msgSend(getParameterTypes[3], "getName")}];
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
  getExceptionTypes = [(ExecutableMember *)self getExceptionTypes];
  v10 = *(getExceptionTypes + 2);
  if (v10 >= 1)
  {
    v11 = getExceptionTypes;
    [v3 appendFormat:@" throws %@", objc_msgSend(getExceptionTypes[3], "getName")];
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