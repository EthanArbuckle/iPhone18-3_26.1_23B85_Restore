@interface JavaUtilProperties
- (JavaUtilProperties)initWithJavaUtilProperties:(id)a3;
- (id)getPropertyWithNSString:(id)a3;
- (id)getPropertyWithNSString:(id)a3 withNSString:(id)a4;
- (id)propertyNames;
- (id)stringPropertyNames;
- (void)dealloc;
- (void)listToAppendableWithJavaLangAppendable:(id)a3;
- (void)loadFromXMLWithJavaIoInputStream:(id)a3;
- (void)load__WithJavaIoInputStream:(id)a3;
- (void)load__WithJavaIoReader:(id)a3;
- (void)storeToXMLWithJavaIoOutputStream:(id)a3 withNSString:(id)a4 withNSString:(id)a5;
- (void)storeWithJavaIoOutputStream:(id)a3 withNSString:(id)a4;
- (void)storeWithJavaIoWriter:(id)a3 withNSString:(id)a4;
@end

@implementation JavaUtilProperties

- (JavaUtilProperties)initWithJavaUtilProperties:(id)a3
{
  JavaUtilHashtable_init(self);
  JreStrongAssign(&self->defaults_, a3);
  return self;
}

- (id)getPropertyWithNSString:(id)a3
{
  v8.receiver = self;
  v8.super_class = JavaUtilProperties;
  v5 = [(JavaUtilHashtable *)&v8 getWithId:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), v5))
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  else
  {
    defaults = self->defaults_;
    if (defaults)
    {
      return [(JavaUtilProperties *)defaults getPropertyWithNSString:a3];
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (id)getPropertyWithNSString:(id)a3 withNSString:(id)a4
{
  v10.receiver = self;
  v10.super_class = JavaUtilProperties;
  v7 = [(JavaUtilHashtable *)&v10 getWithId:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), v7))
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  else
  {
    defaults = self->defaults_;
    if (defaults)
    {
      v7 = [(JavaUtilProperties *)defaults getPropertyWithNSString:a3];
    }

    else
    {
      v7 = 0;
    }
  }

  if (v7)
  {
    return v7;
  }

  else
  {
    return a4;
  }
}

- (void)listToAppendableWithJavaLangAppendable:(id)a3
{
  if (!a3)
  {
    v13 = new_JavaLangNullPointerException_initWithNSString_(@"out == null");
    objc_exception_throw(v13);
  }

  v3 = a3;
  v4 = new_JavaLangStringBuilder_initWithInt_(0x50u);
  v5 = [(JavaUtilProperties *)self propertyNames];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = &classRef_OrgApacheLuceneIndexMultiDocValues__3;
  while ([v5 hasMoreElements])
  {
    v7 = [v5 nextElement];
    objc_opt_class();
    if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    [(JavaLangStringBuilder *)v4 appendWithNSString:v7];
    [(JavaLangStringBuilder *)v4 appendWithChar:61];
    v8 = v6[257];
    v15.receiver = self;
    v15.super_class = v8;
    v9 = [(JavaUtilHashtable *)&v15 getWithId:v7];
    objc_opt_class();
    if (v9)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }

    else
    {
      v10 = v3;
      v11 = v6;
      v12 = self;
      do
      {
        v12 = v12->defaults_;
        if (!v12)
        {
          JreThrowNullPointerException();
        }

        v9 = [(JavaUtilHashtable *)v12 getWithId:v7];
        objc_opt_class();
      }

      while (!v9);
      v6 = v11;
      v3 = v10;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }

    if ([(__CFString *)v9 length]>= 41)
    {
      [(JavaLangStringBuilder *)v4 appendWithNSString:[(__CFString *)v9 substring:0 endIndex:37]];
      v9 = @"...";
    }

    [(JavaLangStringBuilder *)v4 appendWithNSString:v9];
    [(JavaLangStringBuilder *)v4 appendWithNSString:JavaLangSystem_lineSeparator()];
    [v3 appendWithJavaLangCharSequence:{-[JavaLangStringBuilder description](v4, "description")}];
    [(JavaLangAbstractStringBuilder *)v4 setLengthWithInt:0];
  }
}

- (void)load__WithJavaIoInputStream:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"in == null");
    objc_exception_throw(v5);
  }

  [(JavaUtilProperties *)self load__WithJavaIoReader:new_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(a3, @"ISO-8859-1")];

  objc_sync_exit(self);
}

- (void)load__WithJavaIoReader:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    v36 = new_JavaLangNullPointerException_initWithNSString_(@"in == null");
    objc_exception_throw(v36);
  }

  v4 = [IOSCharArray arrayWithLength:40];
  v5 = new_JavaIoBufferedReader_initWithJavaIoReader_(a3);
  v6 = 0;
  v39 = 0;
  v7 = 0;
  v8 = 1;
  v9 = 0xFFFFFFFFLL;
  while (1)
  {
    v10 = v9;
    v11 = [(JavaIoBufferedReader *)v5 read];
    v12 = v11;
    if (v11 == -1)
    {
      break;
    }

    if (v6 == v4->super.size_)
    {
      v13 = [IOSCharArray arrayWithLength:2 * v6];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v4, 0, v13, 0, v6);
      v4 = v13;
    }

    if (v7 == 1)
    {
      v15 = 0;
      if (v12 > 0x6Du)
      {
        if (v12 > 0x73u)
        {
          if (v12 == 116)
          {
            v15 = 0;
            v12 = 9;
            goto LABEL_77;
          }

          if (v12 != 117)
          {
            goto LABEL_77;
          }

          v39 = 0;
          v7 = 2;
        }

        else
        {
          if (v12 == 110)
          {
            v15 = 0;
            v12 = 10;
          }

          else if (v12 == 114)
          {
            v15 = 0;
            v12 = 13;
          }

LABEL_77:
          if (v15 == 4)
          {
            v9 = v6;
          }

          else
          {
            v9 = v10;
          }

          if (v15 == 4)
          {
            v7 = 0;
          }

          else
          {
            v7 = v15;
          }

          v23 = v6;
          size = v4->super.size_;
          if ((v6 & 0x80000000) != 0 || v6 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v6);
          }

          v8 = 0;
          v6 = (v6 + 1);
          *(&v4->super.size_ + v23 + 2) = v12;
        }
      }

      else
      {
        if (v12 > 0x61u)
        {
          if (v12 == 98)
          {
            v15 = 0;
            v12 = 8;
          }

          else if (v12 == 102)
          {
            v15 = 0;
            v12 = 12;
          }

          goto LABEL_77;
        }

        if (v12 == 10)
        {
          v7 = 5;
        }

        else
        {
          v7 = 3;
          if (v12 != 13)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else if (v7 == 2)
    {
      v14 = JavaLangCharacter_digitWithChar_withInt_(v12, 16);
      if (v14 < 0)
      {
        if (v39 <= 4)
        {
          v35 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Invalid Unicode sequence: illegal character");
          objc_exception_throw(v35);
        }

        goto LABEL_22;
      }

      v7 = 2;
      LODWORD(v39) = v39 + 1;
      WORD2(v39) = v14 + 16 * WORD2(v39);
      if (v39 >= 4)
      {
LABEL_22:
        v18 = v4->super.size_;
        if ((v6 & 0x80000000) != 0 || v6 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v6);
        }

        v7 = 0;
        v16 = 0;
        v17 = (v6 + 1);
        *(&v4->super.size_ + v6 + 2) = WORD2(v39);
        v6 = v17;
        if (v12 == 10)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v16 = v7;
      v17 = v6;
LABEL_25:
      if (v12 <= 0x22u)
      {
        switch(v12)
        {
          case 0xAu:
            v7 = 5;
            v6 = v17;
            if (v16 != 3)
            {
LABEL_67:
              if (v17 > 0 || (v6 = 0, v7 = 0, v8 = 1, v9 = 0xFFFFFFFFLL, !(v17 | v10)))
              {
                if (v10 == -1)
                {
                  v21 = v17;
                }

                else
                {
                  v21 = v10;
                }

                v22 = [NSString stringWithCharacters:v4 offset:0 length:v17];
                v8 = 1;
                v9 = 0xFFFFFFFFLL;
                [(JavaUtilHashtable *)self putWithId:[(NSString *)v22 substring:0 endIndex:v21] withId:[(NSString *)v22 substring:v21]];
                v6 = 0;
                v7 = 0;
              }
            }

            break;
          case 0xDu:
            goto LABEL_67;
          case 0x21u:
LABEL_33:
            if ((v8 & 1) == 0)
            {
              goto LABEL_45;
            }

            while (1)
            {
              v19 = [(JavaIoBufferedReader *)v5 read];
              if (v19 == -1)
              {
                break;
              }

              v8 = 1;
              if (v19 == 10 || v19 == 13)
              {
                goto LABEL_87;
              }
            }

            v8 = 1;
LABEL_87:
            v6 = v17;
            v7 = v16;
            break;
          default:
            goto LABEL_45;
        }
      }

      else if (v12 > 0x3Cu)
      {
        if (v12 == 61)
        {
          goto LABEL_44;
        }

        if (v12 != 92)
        {
          goto LABEL_45;
        }

        if (v16 == 4)
        {
          v9 = v17;
        }

        else
        {
          v9 = v9;
        }

        v7 = 1;
        v6 = v17;
      }

      else
      {
        if (v12 == 35)
        {
          goto LABEL_33;
        }

        if (v12 == 58)
        {
LABEL_44:
          v7 = 0;
          v6 = v17;
          v9 = v17;
          if (v10 != -1)
          {
            goto LABEL_45;
          }
        }

        else
        {
LABEL_45:
          if (!JavaLangCharacter_isWhitespaceWithChar_(v12))
          {
            goto LABEL_53;
          }

          v6 = 0;
          v16 = v16 == 3 ? 5 : v16;
          v9 = v10;
          v7 = v16;
          if (v17)
          {
            v6 = v17;
            v9 = v10;
            v7 = v16;
            if (v16 != 5)
            {
              v6 = v17;
              v9 = v10;
              v7 = v16;
              if (v17 != v10)
              {
                v7 = 4;
                v9 = 0xFFFFFFFFLL;
                v6 = v17;
                if (v10 != -1)
                {
LABEL_53:
                  if (v16 == 3 || v16 == 5)
                  {
                    v15 = 0;
                  }

                  else
                  {
                    v15 = v16;
                  }

                  LODWORD(v6) = v17;
                  goto LABEL_77;
                }
              }
            }
          }
        }
      }
    }
  }

  if (v7 == 2 && v39 <= 4)
  {
    v37 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Invalid Unicode sequence: expected format \\uxxxx");
    objc_exception_throw(v37);
  }

  if (v6 > 0 && v9 == -1)
  {
    v26 = v6;
  }

  else
  {
    v26 = v9;
  }

  if ((v26 & 0x80000000) == 0)
  {
    v27 = [NSString stringWithCharacters:v4 offset:0 length:v6];
    v28 = [(NSString *)v27 substring:0 endIndex:v26];
    v30 = [(NSString *)v27 substring:v26];
    v40 = v30;
    if (v7 == 1)
    {
      JreStrAppendStrong(&v40, "$", v29, v30, v31, v32, v33, v34, &stru_10049A618);
      v30 = v40;
    }

    [(JavaUtilHashtable *)self putWithId:v28 withId:v30];
  }

  objc_sync_exit(self);
}

- (id)propertyNames
{
  v3 = new_JavaUtilHashtable_init();
  sub_10021DA9C(self, v3, 0);

  return [(JavaUtilHashtable *)v3 keys];
}

- (id)stringPropertyNames
{
  v3 = new_JavaUtilHashtable_init();
  sub_10021DA9C(self, v3, 1);
  v4 = [(JavaUtilHashtable *)v3 keySet];

  return JavaUtilCollections_unmodifiableSetWithJavaUtilSet_(v4);
}

- (void)storeWithJavaIoOutputStream:(id)a3 withNSString:(id)a4
{
  objc_sync_enter(self);
  [(JavaUtilProperties *)self storeWithJavaIoWriter:new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(a3 withNSString:@"ISO-8859-1"), a4];

  objc_sync_exit(self);
}

- (void)storeWithJavaIoWriter:(id)a3 withNSString:(id)a4
{
  objc_sync_enter(self);
  if (a4)
  {
    if (a3)
    {
      [a3 writeWithNSString:@"#"];
      [a3 writeWithNSString:a4];
      [a3 writeWithNSString:JavaLangSystem_lineSeparator()];
      goto LABEL_5;
    }

LABEL_21:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    goto LABEL_21;
  }

LABEL_5:
  [a3 writeWithNSString:@"#"];
  [a3 writeWithNSString:{-[JavaUtilDate description](new_JavaUtilDate_init(), "description")}];
  [a3 writeWithNSString:JavaLangSystem_lineSeparator()];
  v7 = new_JavaLangStringBuilder_initWithInt_(0xC8u);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(JavaUtilHashtable *)self entrySet];
  v9 = v8;
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (!v13)
        {
          JreThrowNullPointerException();
        }

        v14 = [*(*(&v16 + 1) + 8 * i) getKey];
        objc_opt_class();
        if (v14 && (objc_opt_isKindOfClass() & 1) == 0 || (sub_10021CDE0(v7, v14, 1), -[JavaLangStringBuilder appendWithChar:](v7, "appendWithChar:", 61), v15 = [v13 getValue], objc_opt_class(), v15) && (objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        sub_10021CDE0(v7, v15, 0);
        [(JavaLangStringBuilder *)v7 appendWithNSString:JavaLangSystem_lineSeparator()];
        [a3 writeWithNSString:{-[JavaLangStringBuilder description](v7, "description")}];
        [(JavaLangAbstractStringBuilder *)v7 setLengthWithInt:0];
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [a3 flush];
  objc_sync_exit(self);
}

- (void)loadFromXMLWithJavaIoInputStream:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"in == null");
    objc_exception_throw(v7);
  }

  XMLReader = OrgXmlSaxHelpersXMLReaderFactory_createXMLReader();
  if (!XMLReader)
  {
    JreThrowNullPointerException();
  }

  v6 = [JavaUtilProperties__1 alloc];
  JreStrongAssign(&v6->this$0_, self);
  OrgXmlSaxHelpersDefaultHandler_init(v6);
  [(OrgXmlSaxHelpersParserAdapter *)XMLReader setContentHandlerWithOrgXmlSaxContentHandler:v6];
  [(OrgXmlSaxHelpersParserAdapter *)XMLReader parseWithOrgXmlSaxInputSource:new_OrgXmlSaxInputSource_initWithJavaIoInputStream_(a3)];

  objc_sync_exit(self);
}

- (void)storeToXMLWithJavaIoOutputStream:(id)a3 withNSString:(id)a4 withNSString:(id)a5
{
  objc_sync_enter(self);
  if (!a3)
  {
    v19 = @"os == null";
    goto LABEL_27;
  }

  if (!a5)
  {
    v19 = @"encoding == null";
LABEL_27:
    v20 = new_JavaLangNullPointerException_initWithNSString_(v19);
    objc_exception_throw(v20);
  }

  v8 = JavaNioCharsetCharset_forNameWithNSString_(a5);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v9 = [v8 name];
  v10 = new_JavaIoPrintStream_initWithJavaIoOutputStream_withBoolean_withNSString_(a3, 0, v9);
  [(JavaIoPrintStream *)v10 printWithNSString:@"<?xml version=1.0 encoding="];
  [(JavaIoPrintStream *)v10 printWithNSString:v9];
  [(JavaIoPrintStream *)v10 printlnWithNSString:@"?>"];
  [(JavaIoPrintStream *)v10 printWithNSString:@"<!DOCTYPE properties SYSTEM "];
  [(JavaIoPrintStream *)v10 printWithNSString:off_1005518D0];
  [(JavaIoPrintStream *)v10 printlnWithNSString:@">"];
  [(JavaIoPrintStream *)v10 printlnWithNSString:@"<properties>"];
  if (a4)
  {
    [(JavaIoPrintStream *)v10 printWithNSString:@"<comment>"];
    [(JavaIoPrintStream *)v10 printWithNSString:sub_10021E48C(a4)];
    [(JavaIoPrintStream *)v10 printlnWithNSString:@"</comment>"];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [(JavaUtilHashtable *)self entrySet];
  v12 = v11;
  if (!v11)
  {
    JreThrowNullPointerException();
  }

  v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if (!v16)
        {
          JreThrowNullPointerException();
        }

        v17 = [*(*(&v22 + 1) + 8 * i) getKey];
        objc_opt_class();
        if (v17 && (objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        v18 = [v16 getValue];
        objc_opt_class();
        if (v18 && (objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        [(JavaIoPrintStream *)v10 printWithNSString:@"<entry key="];
        [(JavaIoPrintStream *)v10 printWithNSString:sub_10021E48C(v17)];
        [(JavaIoPrintStream *)v10 printWithNSString:@">"];
        [(JavaIoPrintStream *)v10 printWithNSString:sub_10021E48C(v18)];
        [(JavaIoPrintStream *)v10 printlnWithNSString:@"</entry>"];
      }

      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  [(JavaIoPrintStream *)v10 printlnWithNSString:@"</properties>"];
  [(JavaIoPrintStream *)v10 flush];
  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilProperties;
  [(JavaUtilHashtable *)&v3 dealloc];
}

@end