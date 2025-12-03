@interface JavaLangPackage
+ (void)initialize;
- (BOOL)isCompatibleWithWithNSString:(id)string;
- (BOOL)isSealedWithJavaNetURL:(id)l;
- (id)getAnnotationWithIOSClass:(id)class;
- (id)getAnnotations;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaLangPackage

- (id)getAnnotationWithIOSClass:(id)class
{
  getAnnotations = [(JavaLangPackage *)self getAnnotations];
  if (!getAnnotations)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v5 = (getAnnotations + 6);
  v6 = &getAnnotations[2 * getAnnotations[2] + 6];
  do
  {
    if (v5 >= v6)
    {
      return 0;
    }

    if (!class)
    {
      goto LABEL_11;
    }

    v8 = *v5++;
    v7 = v8;
  }

  while (![class isInstance:v8]);
  v9 = JavaLangAnnotationAnnotation_class_();
  if (v7 && ([v9 isInstance:v7] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v7;
}

- (id)getAnnotations
{
  getName = [(JavaLangPackage *)self getName];
  v10 = JreStrcat("$$", v3, v4, v5, v6, v7, v8, v9, getName);
  v11 = IOSClass_forName_(v10);
  if (!v11)
  {
    JreThrowNullPointerException();
  }

  return [v11 getAnnotations];
}

- (unint64_t)hash
{
  name = self->name_;
  if (!name)
  {
    JreThrowNullPointerException();
  }

  return [(NSString *)name hash];
}

- (BOOL)isCompatibleWithWithNSString:(id)string
{
  if (!string || (v4 = [string split:@"\\."], (specVersion = self->specVersion_) == 0) || (v6 = -[NSString split:](specVersion, "split:", @"\\."), !v4) || (v7 = v6) == 0)
  {
    JreThrowNullPointerException();
  }

  v15 = JavaLangMath_minWithInt_withInt_(*(v4 + 2), v6[2]);
  v16 = *(v4 + 2);
  if (v15 < 1)
  {
    return v16 <= v7[2];
  }

  else
  {
    v17 = 0;
    while (1)
    {
      if (v17 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v17);
      }

      v25 = JavaLangInteger_parseIntWithNSString_(v4[v17 + 3], v8, v9, v10, v11, v12, v13, v14);
      v26 = v7[2];
      if (v17 >= v26)
      {
        IOSArray_throwOutOfBoundsWithMsg(v26, v17);
      }

      v27 = JavaLangInteger_parseIntWithNSString_(*&v7[2 * v17 + 6], v18, v19, v20, v21, v22, v23, v24);
      v28 = v25 <= v27;
      if (v25 != v27)
      {
        break;
      }

      ++v17;
      v29 = JavaLangMath_minWithInt_withInt_(*(v4 + 2), v7[2]);
      v16 = *(v4 + 2);
      if (v17 >= v29)
      {
        return v16 <= v7[2];
      }
    }
  }

  return v28;
}

- (BOOL)isSealedWithJavaNetURL:(id)l
{
  sealBase = self->sealBase_;
  if (sealBase)
  {
    LOBYTE(sealBase) = [(JavaNetURL *)sealBase sameFileWithJavaNetURL:l];
  }

  return sealBase;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangPackage;
  [(JavaLangPackage *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [IOSObjectArray newArrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()];
    JreStrongAssignAndConsume(&qword_100555340, v2);
    atomic_store(1u, JavaLangPackage__initialized);
  }
}

@end