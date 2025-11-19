@interface OrgApacheLuceneUtilNamedSPILoader
- (OrgApacheLuceneUtilNamedSPILoader)initWithIOSClass:(id)a3;
- (OrgApacheLuceneUtilNamedSPILoader)initWithIOSClass:(id)a3 withJavaLangClassLoader:(id)a4;
- (id)availableServices;
- (id)iterator;
- (id)lookupWithNSString:(id)a3;
- (void)__javaClone;
- (void)dealloc;
- (void)reloadWithJavaLangClassLoader:(id)a3;
@end

@implementation OrgApacheLuceneUtilNamedSPILoader

- (OrgApacheLuceneUtilNamedSPILoader)initWithIOSClass:(id)a3
{
  v5 = JavaUtilCollections_emptyMap();
  JreVolatileStrongAssign(&self->services_, v5);
  JreStrongAssign(&self->clazz_, a3);
  [(OrgApacheLuceneUtilNamedSPILoader *)self reloadWithJavaLangClassLoader:0];
  return self;
}

- (OrgApacheLuceneUtilNamedSPILoader)initWithIOSClass:(id)a3 withJavaLangClassLoader:(id)a4
{
  v7 = JavaUtilCollections_emptyMap();
  JreVolatileStrongAssign(&self->services_, v7);
  JreStrongAssign(&self->clazz_, a3);
  [(OrgApacheLuceneUtilNamedSPILoader *)self reloadWithJavaLangClassLoader:a4];
  return self;
}

- (void)reloadWithJavaLangClassLoader:(id)a3
{
  p_services = &self->services_;
  v5 = atomic_load(&self->services_);
  v6 = new_JavaUtilLinkedHashMap_initWithJavaUtilMap_(v5);
  clazz = self->clazz_;
  if (!clazz)
  {
    JreThrowNullPointerException();
  }

  v8 = v6;
  if (![(IOSClass *)clazz isEqual:OrgApacheLuceneCodecsCodec_class_()])
  {
    if ([(IOSClass *)self->clazz_ isEqual:OrgApacheLuceneCodecsPostingsFormat_class_()])
    {
      v12 = new_OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_init();
      v10 = v12;
      if (qword_100554888 == -1)
      {
        if (!v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_10013AD00();
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      if (([qword_100554880 isInstance:v10] & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_11:
      v11 = @"AAPL50";
      goto LABEL_17;
    }

    if (![(IOSClass *)self->clazz_ isEqual:OrgApacheLuceneCodecsDocValuesFormat_class_()])
    {
      goto LABEL_18;
    }

    v13 = new_OrgApacheLuceneCodecsLucene50Lucene50DocValuesFormat_init();
    v10 = v13;
    if (qword_100554888 == -1)
    {
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_10013AD00();
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    if (([qword_100554880 isInstance:v10] & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_16:
    v11 = @"Lucene50";
    goto LABEL_17;
  }

  v9 = new_OrgApacheLuceneCodecsLucene53AAPL53Codec_init();
  v10 = v9;
  if (qword_100554888 != -1)
  {
    sub_10013AD00();
    if (!v10)
    {
      goto LABEL_6;
    }

LABEL_5:
    if ([qword_100554880 isInstance:v10])
    {
      goto LABEL_6;
    }

LABEL_22:
    JreThrowClassCastException();
  }

  if (v9)
  {
    goto LABEL_5;
  }

LABEL_6:
  v11 = @"AAPL53";
LABEL_17:
  [(JavaUtilHashMap *)v8 putWithId:v11 withId:v10];
LABEL_18:
  v14 = JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(v8);

  JreVolatileStrongAssign(p_services, v14);
}

- (id)lookupWithNSString:(id)a3
{
  v4 = atomic_load(&self->services_);
  if (!v4)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  result = [v4 getWithId:?];
  if (!result)
  {
    clazz = self->clazz_;
    if (clazz)
    {
      [(IOSClass *)clazz getName];
      [(OrgApacheLuceneUtilNamedSPILoader *)self availableServices];
      v14 = JreStrcat("$$$$$@", v7, v8, v9, v10, v11, v12, v13, @"An SPI class of type ");
      v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

    goto LABEL_5;
  }

  return result;
}

- (id)availableServices
{
  v3 = atomic_load(&self->services_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 keySet];
}

- (id)iterator
{
  v2 = atomic_load(&self->services_);
  if (!v2 || (v3 = [v2 values]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 iterator];
}

- (void)dealloc
{
  JreReleaseVolatile(&self->services_);

  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilNamedSPILoader;
  [(OrgApacheLuceneUtilNamedSPILoader *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilNamedSPILoader;
  [(OrgApacheLuceneUtilNamedSPILoader *)&v3 __javaClone];
  JreRetainVolatile(&self->services_);
}

@end