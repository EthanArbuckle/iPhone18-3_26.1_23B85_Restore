@interface JavaTextAttributedCharacterIterator_Attribute
+ (void)initialize;
- (NSString)description;
- (id)readResolve;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaTextAttributedCharacterIterator_Attribute

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = JavaTextAttributedCharacterIterator_Attribute;
  return [(JavaTextAttributedCharacterIterator_Attribute *)&v3 hash];
}

- (id)readResolve
{
  v3 = [-[JavaTextAttributedCharacterIterator_Attribute getClass](self "getClass")];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v11 = (v3 + 24);
  v12 = &v3[8 * *(v3 + 2) + 24];
  if ((v3 + 24) >= v12)
  {
LABEL_17:
    v19 = JreStrcat("$@", v4, v5, v6, v7, v8, v9, v10, @"Failed to resolve ");
    v20 = new_JavaIoInvalidObjectException_initWithNSString_(v19);
    objc_exception_throw(v20);
  }

  while (1)
  {
    v14 = *v11++;
    v13 = v14;
    if (!v14)
    {
      JreThrowNullPointerException();
    }

    getType = [v13 getType];
    if (getType == -[JavaTextAttributedCharacterIterator_Attribute getClass](self, "getClass") && JavaLangReflectModifier_isStaticWithInt_([v13 getModifiers]))
    {
      v16 = [v13 getWithId:0];
      objc_opt_class();
      if (!v16)
      {
        goto LABEL_14;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      name = self->name_;
      if (!name)
      {
LABEL_14:
        JreThrowNullPointerException();
      }

      if (([(NSString *)name isEqual:v16[1]]& 1) != 0)
      {
        return v16;
      }
    }

    if (v11 >= v12)
    {
      goto LABEL_17;
    }
  }
}

- (NSString)description
{
  v3 = [-[JavaTextAttributedCharacterIterator_Attribute getClass](self "getClass")];
  [(JavaTextAttributedCharacterIterator_Attribute *)self getName];
  return JreStrcat("$C$C", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextAttributedCharacterIterator_Attribute;
  [(JavaTextAttributedCharacterIterator_Attribute *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [JavaTextAttributedCharacterIterator_Attribute alloc];
    JreStrongAssign(&v2->name_, @"input_method_segment");
    JreStrongAssignAndConsume(&JavaTextAttributedCharacterIterator_Attribute_INPUT_METHOD_SEGMENT_, v2);
    v3 = [JavaTextAttributedCharacterIterator_Attribute alloc];
    JreStrongAssign(&v3->name_, @"language");
    JreStrongAssignAndConsume(&JavaTextAttributedCharacterIterator_Attribute_LANGUAGE_, v3);
    v4 = [JavaTextAttributedCharacterIterator_Attribute alloc];
    JreStrongAssign(&v4->name_, @"reading");
    JreStrongAssignAndConsume(&JavaTextAttributedCharacterIterator_Attribute_READING_, v4);
    atomic_store(1u, JavaTextAttributedCharacterIterator_Attribute__initialized);
  }
}

@end