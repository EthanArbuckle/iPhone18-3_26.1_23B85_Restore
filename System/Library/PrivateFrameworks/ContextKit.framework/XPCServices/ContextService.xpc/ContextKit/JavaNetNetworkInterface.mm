@interface JavaNetNetworkInterface
+ (IOSObjectArray)getInterfaceNames;
+ (JavaUtilArrayList)getNetworkInterfacesList;
+ (id)getNetworkInterfaces;
+ (id)rethrowAsSocketExceptionWithJavaLangException:(id)exception;
+ (int)getInterfaceIndexWithNSString:(id)string;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)getHardwareAddress;
- (int)getMTU;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaNetNetworkInterface

+ (id)rethrowAsSocketExceptionWithJavaLangException:(id)exception
{
  v4 = new_JavaNetSocketException_init();
  [(JavaLangThrowable *)v4 initCauseWithJavaLangThrowable:exception];
  objc_exception_throw(v4);
}

+ (id)getNetworkInterfaces
{
  v2 = +[JavaNetNetworkInterface getNetworkInterfacesList]_0();

  return JavaUtilCollections_enumerationWithJavaUtilCollection_(v2);
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (!equal)
  {
    goto LABEL_16;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (self->interfaceIndex_ != *(equal + 4))
  {
LABEL_12:
    LOBYTE(v6) = 0;
    return v6;
  }

  name = self->name_;
  if (!name)
  {
    goto LABEL_16;
  }

  v6 = [(NSString *)name isEqual:*(equal + 1)];
  if (!v6)
  {
    return v6;
  }

  addresses = self->addresses_;
  if (!addresses)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v8 = *(equal + 4);

  LOBYTE(v6) = [(JavaUtilList *)addresses isEqual:v8];
  return v6;
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

- (id)description
{
  v3 = new_JavaLangStringBuilder_initWithInt_(0x19u);
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"["];
  [(JavaLangStringBuilder *)v3 appendWithNSString:self->name_];
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"]["];
  [(JavaLangStringBuilder *)v3 appendWithInt:self->interfaceIndex_];
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"]"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  addresses = self->addresses_;
  if (!addresses)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilList *)addresses countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(addresses);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [(JavaLangStringBuilder *)v3 appendWithNSString:@"[", v11];
        if (!v9)
        {
          goto LABEL_11;
        }

        -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", [v9 description]);
        [(JavaLangStringBuilder *)v3 appendWithNSString:@"]"];
      }

      v6 = [(JavaUtilList *)addresses countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (id)getHardwareAddress
{
  uTF8String = [(NSString *)self->name_ UTF8String];
  if (!uTF8String)
  {
    return 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1001CFD58;
  v10 = sub_1001CFD68;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CFD74;
  v5[3] = &unk_100427740;
  v5[4] = &v6;
  sub_1001CFE14(uTF8String, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)getMTU
{
  if (self->name_)
  {
    v3 = socket(2, 2, 0);
    if (v3 < 0)
    {
      v7 = *__error();
      v8 = @"socket";
    }

    else
    {
      v4 = v3;
      v10 = 0u;
      v11 = 0u;
      [(NSString *)self->name_ UTF8String];
      __strcpy_chk();
      v5 = ioctl(v4, 0xC0206933uLL, &v10);
      close(v4);
      if ((v5 & 0x80000000) == 0)
      {
        return v11;
      }

      v7 = *__error();
      v8 = @"ioctl";
    }

    v9 = sub_1001CFFB0(v8, v7);
    objc_exception_throw(v9);
  }

  return 0;
}

+ (int)getInterfaceIndexWithNSString:(id)string
{
  uTF8String = [string UTF8String];

  return if_nametoindex(uTF8String);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetNetworkInterface;
  [(JavaNetNetworkInterface *)&v3 dealloc];
}

+ (JavaUtilArrayList)getNetworkInterfacesList
{
  v0 = +[JavaNetNetworkInterface getInterfaceNames]_0();
  if (!v0)
  {
LABEL_64:
    JreThrowNullPointerException();
  }

  v1 = v0;
  size = v0->super.size_;
  if (qword_100554E40 != -1)
  {
    sub_1001D0F14();
  }

  v3 = [IOSObjectArray arrayWithLength:size type:qword_100554E38];
  v4 = [IOSBooleanArray arrayWithLength:v3->super.size_];
  if (v1->super.size_ >= 1)
  {
    v5 = 0;
    do
    {
      v6 = JavaNetNetworkInterface_getByNameWithNSString_((&v1->elementType_)[v5]);
      IOSObjectArray_Set(v3, v5, v6);
      v7 = v3->super.size_;
      if (v5 >= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, v5);
      }

      if (!(&v3->elementType_)[v5])
      {
        v8 = v4->super.size_;
        if (v5 >= v8)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, v5);
        }

        *(&v4->super.size_ + v5 + 4) = 1;
      }

      ++v5;
    }

    while (v5 < v1->super.size_);
  }

  v9 = new_JavaUtilArrayList_init();
  v17 = v9;
  if (v3->super.size_ >= 1)
  {
    v18 = 0;
    v43 = v9;
    do
    {
      v19 = v4->super.size_;
      if (v18 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v18);
      }

      if ((*(&v4->super.size_ + v18 + 4) & 1) == 0)
      {
        v20 = v3->super.size_;
        if (v18 >= v20)
        {
          v40 = v20;
        }

        else
        {
          v21 = &v3->super.super.isa + v18;
          v22 = v18;
          do
          {
            v23 = v4->super.size_;
            if (v22 >= v23)
            {
              IOSArray_throwOutOfBoundsWithMsg(v23, v22);
            }

            if ((*(&v4->super.size_ + v22 + 4) & 1) == 0)
            {
              v24 = v3->super.size_;
              if (v22 >= v24)
              {
                IOSArray_throwOutOfBoundsWithMsg(v24, v22);
              }

              v25 = (&v3->elementType_)[v22];
              if (!v25)
              {
                goto LABEL_64;
              }

              isa = v25[1].super.isa;
              if (!isa)
              {
                goto LABEL_64;
              }

              v27 = v3->super.size_;
              if (v18 >= v27)
              {
                IOSArray_throwOutOfBoundsWithMsg(v27, v18);
              }

              v28 = v21[3];
              if (!v28)
              {
                goto LABEL_64;
              }

              if ([(objc_class *)isa hasPrefix:JreStrcat("$C", v10, v11, v12, v13, v14, v15, v16, *(v28 + 1))])
              {
                v29 = v3->super.size_;
                if (v18 >= v29)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v29, v18);
                }

                v30 = v21[3];
                if (!v30 || !*(v30 + 5))
                {
                  goto LABEL_64;
                }

                v31 = v3->super.size_;
                if (v22 >= v31)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v31, v22);
                }

                [*(v30 + 5) addWithId:(&v3->elementType_)[v22]];
                v32 = v3->super.size_;
                if (v22 >= v32)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v32, v22);
                }

                v33 = (&v3->elementType_)[v22];
                if (!v33)
                {
                  goto LABEL_64;
                }

                v34 = v3->super.size_;
                if (v18 >= v34)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v34, v18);
                }

                JreStrongAssign(&v33[6].super.isa, v21[3]);
                v35 = v3->super.size_;
                if (v18 >= v35)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v35, v18);
                }

                v36 = v21[3];
                if (!v36 || !*(v36 + 4))
                {
                  goto LABEL_64;
                }

                v37 = v3->super.size_;
                if (v22 >= v37)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v37, v22);
                }

                v38 = (&v3->elementType_)[v22];
                if (!v38)
                {
                  goto LABEL_64;
                }

                [*(v36 + 4) addAllWithJavaUtilCollection:v38[4].super.isa];
                v39 = v4->super.size_;
                if (v22 >= v39)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v39, v22);
                }

                *(&v4->super.size_ + v22 + 4) = 1;
              }
            }

            ++v22;
            v20 = v3->super.size_;
          }

          while (v22 < v20);
          v40 = v20;
          v17 = v43;
        }

        if (v18 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, v18);
        }

        [(JavaUtilArrayList *)v17 addWithId:(&v3->elementType_)[v18]];
        v41 = v4->super.size_;
        if (v18 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, v18);
        }

        *(&v4->super.size_ + v18 + 4) = 1;
      }

      ++v18;
    }

    while (v18 < v3->super.size_);
  }

  return v17;
}

+ (IOSObjectArray)getInterfaceNames
{
  v0 = +[NSMutableArray array];
  v4 = 0;
  v1 = getifaddrs(&v4);
  v2 = v4;
  if (!v1 && v4)
  {
    do
    {
      if (v2->ifa_addr->sa_family == 2)
      {
        [v0 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v2->ifa_name)}];
      }

      v2 = v2->ifa_next;
    }

    while (v2);
    v2 = v4;
  }

  freeifaddrs(v2);
  return [IOSObjectArray arrayWithNSArray:v0 type:NSString_class_()];
}

@end