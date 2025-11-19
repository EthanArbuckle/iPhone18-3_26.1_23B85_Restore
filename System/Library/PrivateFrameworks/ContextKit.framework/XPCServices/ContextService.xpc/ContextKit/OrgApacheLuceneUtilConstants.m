@interface OrgApacheLuceneUtilConstants
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilConstants

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(@"java.vm.vendor");
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_VENDOR_, PropertyWithNSString);
    v3 = JavaLangSystem_getPropertyWithNSString_(@"java.vm.version");
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_VERSION_, v3);
    v4 = JavaLangSystem_getPropertyWithNSString_(@"java.vm.name");
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_NAME_, v4);
    v5 = JavaLangSystem_getPropertyWithNSString_(@"java.specification.version");
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION_, v5);
    v6 = JavaLangSystem_getPropertyWithNSString_(@"java.version");
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JAVA_VERSION_, v6);
    v7 = JavaLangSystem_getPropertyWithNSString_(@"os.name");
    JreStrongAssign(&OrgApacheLuceneUtilConstants_OS_NAME_, v7);
    if (!OrgApacheLuceneUtilConstants_OS_NAME_)
    {
      goto LABEL_25;
    }

    OrgApacheLuceneUtilConstants_LINUX_ = [OrgApacheLuceneUtilConstants_OS_NAME_ hasPrefix:@"Linux"];
    OrgApacheLuceneUtilConstants_WINDOWS_ = [OrgApacheLuceneUtilConstants_OS_NAME_ hasPrefix:@"Windows"];
    OrgApacheLuceneUtilConstants_SUN_OS_ = [OrgApacheLuceneUtilConstants_OS_NAME_ hasPrefix:@"SunOS"];
    OrgApacheLuceneUtilConstants_MAC_OS_X_ = [OrgApacheLuceneUtilConstants_OS_NAME_ hasPrefix:@"Mac OS X"];
    OrgApacheLuceneUtilConstants_FREE_BSD_ = [OrgApacheLuceneUtilConstants_OS_NAME_ hasPrefix:@"FreeBSD"];
    v8 = JavaLangSystem_getPropertyWithNSString_(@"os.arch");
    JreStrongAssign(&OrgApacheLuceneUtilConstants_OS_ARCH_, v8);
    v9 = JavaLangSystem_getPropertyWithNSString_(@"os.version");
    JreStrongAssign(&OrgApacheLuceneUtilConstants_OS_VERSION_, v9);
    v10 = JavaLangSystem_getPropertyWithNSString_(@"java.vendor");
    JreStrongAssign(&OrgApacheLuceneUtilConstants_JAVA_VENDOR_, v10);
    v11 = new_JavaUtilStringTokenizer_initWithNSString_withNSString_(OrgApacheLuceneUtilConstants_JVM_SPEC_VERSION_, @".");
    v12 = [(JavaUtilStringTokenizer *)v11 nextToken];
    dword_100553E38 = JavaLangInteger_parseIntWithNSString_(v12, v13, v14, v15, v16, v17, v18, v19);
    v20 = [(JavaUtilStringTokenizer *)v11 hasMoreTokens];
    if (v20)
    {
      v21 = [(JavaUtilStringTokenizer *)v11 nextToken];
      v20 = JavaLangInteger_parseIntWithNSString_(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    dword_100553E3C = v20;
    v29 = JavaLangSystem_getPropertyWithNSString_(@"sun.arch.data.model");
    if (v29)
    {
      v30 = [v29 contains:@"64"];
    }

    else
    {
      v30 = OrgApacheLuceneUtilConstants_OS_ARCH_ && ([OrgApacheLuceneUtilConstants_OS_ARCH_ contains:@"64"] & 1) != 0;
    }

    OrgApacheLuceneUtilConstants_JRE_IS_64BIT_ = v30;
    if (dword_100553E38 <= 1)
    {
      v32 = dword_100553E38 == 1;
      v31 = dword_100553E3C > 7 && dword_100553E38 == 1;
      if (dword_100553E3C <= 8)
      {
        v32 = 0;
      }
    }

    else
    {
      v31 = 1;
      v32 = 1;
    }

    OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA8_ = v31;
    OrgApacheLuceneUtilConstants_JRE_IS_MINIMUM_JAVA9_ = v32;
    if ((atomic_load_explicit(OrgApacheLuceneUtilVersion__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100010B48();
    }

    if (!OrgApacheLuceneUtilVersion_LATEST_)
    {
LABEL_25:
      JreThrowNullPointerException();
    }

    JreStrongAssign(&OrgApacheLuceneUtilConstants_LUCENE_MAIN_VERSION_, [OrgApacheLuceneUtilVersion_LATEST_ description]);
    if ((atomic_load_explicit(OrgApacheLuceneUtilVersion__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100010B48();
    }

    JreStrongAssign(&OrgApacheLuceneUtilConstants_LUCENE_VERSION_, [OrgApacheLuceneUtilVersion_LATEST_ description]);
    atomic_store(1u, OrgApacheLuceneUtilConstants__initialized);
  }
}

@end