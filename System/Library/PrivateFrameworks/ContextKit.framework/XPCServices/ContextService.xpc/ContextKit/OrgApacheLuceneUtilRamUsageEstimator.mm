@interface OrgApacheLuceneUtilRamUsageEstimator
+ (int64_t)adjustForFieldWithLong:(int64_t)long withJavaLangReflectField:(id)field;
+ (int64_t)alignObjectSizeWithLong:(int64_t)long;
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilRamUsageEstimator

+ (int64_t)alignObjectSizeWithLong:(int64_t)long
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return (long + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ - 1) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
}

+ (int64_t)adjustForFieldWithLong:(int64_t)long withJavaLangReflectField:(id)field
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ + long;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilIdentityHashMap_init();
    JreStrongAssignAndConsume(&qword_1005541B0, v2);
    [qword_1005541B0 putWithId:+[IOSClass BOOLeanClass](IOSClass withId:{"BOOLeanClass"), JavaLangInteger_valueOfWithInt_(1)}];
    [qword_1005541B0 putWithId:+[IOSClass byteClass](IOSClass withId:{"byteClass"), JavaLangInteger_valueOfWithInt_(1)}];
    [qword_1005541B0 putWithId:+[IOSClass charClass](IOSClass withId:{"charClass"), JavaLangInteger_valueOfWithInt_(2)}];
    [qword_1005541B0 putWithId:+[IOSClass shortClass](IOSClass withId:{"shortClass"), JavaLangInteger_valueOfWithInt_(2)}];
    [qword_1005541B0 putWithId:+[IOSClass intClass](IOSClass withId:{"intClass"), JavaLangInteger_valueOfWithInt_(4)}];
    [qword_1005541B0 putWithId:+[IOSClass floatClass](IOSClass withId:{"floatClass"), JavaLangInteger_valueOfWithInt_(4)}];
    [qword_1005541B0 putWithId:+[IOSClass doubleClass](IOSClass withId:{"doubleClass"), JavaLangInteger_valueOfWithInt_(8)}];
    [qword_1005541B0 putWithId:+[IOSClass longClass](IOSClass withId:{"longClass"), JavaLangInteger_valueOfWithInt_(8)}];
    if ((atomic_load_explicit(OrgApacheLuceneUtilConstants__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100070498();
    }

    if (OrgApacheLuceneUtilConstants_JRE_IS_64BIT_ == 1)
    {
      v3 = IOSClass_forName_(OrgApacheLuceneUtilRamUsageEstimator_HOTSPOT_BEAN_CLASS_);
      v4 = IOSClass_forName_(OrgApacheLuceneUtilRamUsageEstimator_MANAGEMENT_FACTORY_CLASS_);
      if (!v4 || (v41 = IOSClass_class_(), (v5 = [v4 getMethod:@"getPlatformMXBean" parameterTypes:{+[IOSObjectArray arrayWithObjects:count:type:](IOSObjectArray, "arrayWithObjects:count:type:", &v41, 1, IOSClass_class_())}]) == 0))
      {
        JreThrowNullPointerException();
      }

      v40 = v3;
      v6 = [v5 invokeWithId:0 withNSObjectArray:{+[IOSObjectArray arrayWithObjects:count:type:](IOSObjectArray, "arrayWithObjects:count:type:", &v40, 1, NSObject_class_())}];
      if (v6)
      {
        if (!v3)
        {
          JreThrowNullPointerException();
        }

        v39 = NSString_class_();
        v7 = [v3 getMethod:@"getVMOption" parameterTypes:{+[IOSObjectArray arrayWithObjects:count:type:](IOSObjectArray, "arrayWithObjects:count:type:", &v39, 1, IOSClass_class_())}];
        if (!v7 || (v38 = @"UseCompressedOops", v8 = [v7 invokeWithId:v6 withNSObjectArray:{+[IOSObjectArray arrayWithObjects:count:type:](IOSObjectArray, "arrayWithObjects:count:type:", &v38, 1, NSObject_class_())}], (v9 = v8) == 0) || (v10 = objc_msgSend(objc_msgSend(v8, "getClass"), "getMethod:parameterTypes:", @"getValue", +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, IOSClass_class_()))) == 0 || (v11 = objc_msgSend(v10, "invokeWithId:withNSObjectArray:", v9, +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, NSObject_class_()))) == 0)
        {
          JreThrowNullPointerException();
        }

        v12 = JavaLangBoolean_parseBooleanWithNSString_([v11 description]);
        v37 = @"ObjectAlignmentInBytes";
        v13 = [IOSObjectArray arrayWithObjects:&v37 count:1 type:NSObject_class_()];
        v14 = [v7 invokeWithId:v6 withNSObjectArray:{v13, v37, v38, v39, v40, v41}];
        v15 = v14;
        if (!v14 || (v16 = [objc_msgSend(v14 "getClass")]) == 0 || (v17 = objc_msgSend(v16, "invokeWithId:withNSObjectArray:", v15, +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, NSObject_class_()))) == 0)
        {
          JreThrowNullPointerException();
        }

        v18 = [v17 description];
        v26 = JavaLangInteger_parseIntWithNSString_(v18, v19, v20, v21, v22, v23, v24, v25);
        OrgApacheLuceneUtilRamUsageEstimator_JVM_IS_HOTSPOT_64BIT_ = 1;
        OrgApacheLuceneUtilRamUsageEstimator_COMPRESSED_REFS_ENABLED_ = v12 & 1;
        OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ = v26;
        if (v12)
        {
          v27 = 4;
        }

        else
        {
          v27 = 8;
        }
      }

      else
      {
        OrgApacheLuceneUtilRamUsageEstimator_JVM_IS_HOTSPOT_64BIT_ = 0;
        OrgApacheLuceneUtilRamUsageEstimator_COMPRESSED_REFS_ENABLED_ = 0;
        v27 = 8;
        OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ = 8;
      }

      OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ = v27;
      OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER_ = v27 + 8;
      if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1000865D4();
      }

      v28 = (OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ + (v27 + 11)) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
    }

    else
    {
      OrgApacheLuceneUtilRamUsageEstimator_JVM_IS_HOTSPOT_64BIT_ = 0;
      OrgApacheLuceneUtilRamUsageEstimator_COMPRESSED_REFS_ENABLED_ = 0;
      OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ = 8;
      OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ = 4;
      v28 = 12;
      OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER_ = 8;
    }

    v29 = 0;
    OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER_ = v28;
    do
    {
      v30 = v29;
      if (v29 == 0x8000000000000000)
      {
        break;
      }

      --v29;
      v31 = JavaLangLong_valueOfWithLong_(v30 - 1);
    }

    while (v31 == JavaLangLong_valueOfWithLong_(v30 - 1));
    v32 = 0;
    do
    {
      v33 = v32;
      if (v32 == 0x8000000000000000)
      {
        break;
      }

      v34 = JavaLangLong_valueOfWithLong_(v32);
      v35 = JavaLangLong_valueOfWithLong_(v33);
      v32 = v33 + 1;
    }

    while (v34 == v35);
    OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MIN_VALUE_ = v30;
    OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MAX_VALUE_ = v33 - 1;
    v36 = JavaLangLong_class_();
    OrgApacheLuceneUtilRamUsageEstimator_LONG_SIZE_ = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v36);
    atomic_store(1u, &OrgApacheLuceneUtilRamUsageEstimator__initialized);
  }
}

@end