void sub_1000022B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_sync_exit(obj);
  objc_destroyWeak(&a35);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000232C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(*(a1 + 32) + 24);
    if (v3)
    {
      v4 = v3;
      objc_sync_enter(v4);
      v5 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v6 = [*(*(a1 + 32) + 24) objectForKey:WeakRetained];
        sub_1002BCF38(v6, v7);
      }

      [*(*(a1 + 32) + 24) removeObjectForKey:WeakRetained];
      objc_sync_exit(v4);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1002BCF94(WeakRetained);
    }
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v4 = mach_absolute_time();
  v5 = objc_autoreleasePoolPush();
  if (argc < 2)
  {
    pthread_set_qos_class_self_np(QOS_CLASS_USER_INITIATED, 0);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ContextService starting", buf, 2u);
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_POWER_NAP, 1);
    xpc_dictionary_set_string(v7, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_int64(v7, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_7_DAYS);
    xpc_activity_register("com.apple.contextkit.mobileasset.check", v7, &stru_1003E94C8);

    if (_set_user_dir_suffix())
    {
      v8 = NSTemporaryDirectory();
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_1002BD0A0();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1002BD014();
    }

    v9 = +[NSNotificationCenter defaultCenter];
    v10 = +[NSOperationQueue mainQueue];
    v11 = [v9 addObserverForName:@"shutdownService" object:0 queue:v10 usingBlock:&stru_1003E9460];

    v12 = objc_alloc_init(NSCondition);
    *buf = 0;
    v31 = buf;
    v32 = 0x3032000000;
    v33 = sub_1000029BC;
    v34 = sub_1000029CC;
    v35 = 0;
    v13 = dispatch_get_global_queue(25, 0);
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_1000029D4;
    v27 = &unk_1003E9488;
    v29 = buf;
    v14 = v12;
    v28 = v14;
    dispatch_async(v13, &v24);

    v15 = [NSDate alloc];
    v16 = [v15 initWithTimeIntervalSinceNow:{60.0, v24, v25, v26, v27}];
    v17 = [v14 waitUntilDate:v16];

    if ((v17 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1002BD11C();
      }

      v18 = [[ServiceDelegate alloc] initWithAssets:0];
      v19 = *(v31 + 5);
      *(v31 + 5) = v18;
    }

    v20 = +[NSXPCListener serviceListener];
    [v20 setDelegate:*(v31 + 5)];
    v21 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      [Util elapsedMillisSinceMachAbsolute:v4];
      *v36 = 134217984;
      v37 = v22;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ContextService startup time: %f ms", v36, 0xCu);
    }

    [v20 resume];
    _Block_object_dispose(buf, 8);

    v6 = 0;
  }

  else
  {
    v6 = 1;
    fwrite("Illegal argument\n", 0x11uLL, 1uLL, __stderrp);
  }

  objc_autoreleasePoolPop(v5);
  return v6;
}

void sub_1000028F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002920(id a1, NSNotification *a2)
{
  v2 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "ContextService shutdown requested", v5, 2u);
  }

  v3 = [(NSNotification *)v2 object];

  if (v3)
  {
    v4 = [(NSNotification *)v2 object];
    v4[2]();
  }

  exit(0);
}

uint64_t sub_1000029BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000029D4(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Initializing assets", buf, 2u);
  }

  v2 = objc_opt_new();
  v3 = qword_100553D80;
  qword_100553D80 = v2;

  v4 = [ServiceDelegate alloc];
  v5 = [(ServiceDelegate *)v4 initWithAssets:qword_100553D80];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Initialized ServiceDelegate with assets", v9, 2u);
  }

  return [*(a1 + 32) signal];
}

void sub_100002AC8(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1002BD164();
  }

  if (qword_100553D80)
  {
    v3 = objc_alloc_init(NSCondition);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v4 = [qword_100553D80 common];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100002DC4;
    v17 = &unk_1003E94F0;
    v19 = &v20;
    v5 = v3;
    v18 = v5;
    [v4 downloadMetadataWithCompletion:&v14];

    v6 = [NSDate alloc];
    v7 = [v6 initWithTimeIntervalSinceNow:{1.0, v14, v15, v16, v17}];
    if ([v5 waitUntilDate:v7])
    {
    }

    else
    {
      v8 = *(v21 + 24);

      if ((v8 & 1) == 0)
      {
        should_defer = xpc_activity_should_defer(v2);
LABEL_14:
        if (*(v21 + 24) == 1)
        {
          if (xpc_activity_set_state(v2, 5))
          {
LABEL_25:

            _Block_object_dispose(&v20, 8);
            goto LABEL_26;
          }

          v10 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            state = xpc_activity_get_state(v2);
            sub_1002BD1F0(v2, buf, state);
          }
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v25 = should_defer;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Check for ContextKit asset updates timed out; should_defer=%i", buf, 8u);
          }

          if (!should_defer || xpc_activity_set_state(v2, 3))
          {
            goto LABEL_25;
          }

          v12 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v13 = xpc_activity_get_state(v2);
            sub_1002BD1A8(v2, buf, v13);
          }
        }

        goto LABEL_25;
      }
    }

    should_defer = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1002BD238();
  }

  if (!xpc_activity_set_state(v2, 3) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1002BD27C(v2);
  }

LABEL_26:
}

void sub_100002D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100002DC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1002BD31C();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Asset metadata update request completed but did not succeed", v4, 2u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  return [*(a1 + 32) signal];
}

uint64_t sub_100002E58(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  return result;
}

OrgApacheLuceneSearchCollectionStatistics *new_OrgApacheLuceneSearchCollectionStatistics_initWithNSString_withLong_withLong_withLong_withLong_(void *a1, int64_t a2, int64_t a3, int64_t a4, int64_t a5)
{
  v10 = [OrgApacheLuceneSearchCollectionStatistics alloc];
  JreStrongAssign(&v10->field_, a1);
  v10->maxDoc_ = a2;
  v10->docCount_ = a3;
  v10->sumTotalTermFreq_ = a4;
  v10->sumDocFreq_ = a5;
  return v10;
}

void *OrgApacheLuceneUtilPackedDirectWriter_initWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  JreStrongAssign((a1 + 24), a2);
  *(a1 + 16) = a3;
  *(a1 + 8) = a4;
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  v7 = OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_(OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_, a4);
  JreStrongAssign((a1 + 64), v7);
  v8 = *(a1 + 64);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v9 = [v8 computeIterationsWithInt:JavaLangMath_minWithLong_withLong_(a3 withInt:{0x7FFFFFFFLL), 1024}];
  *(a1 + 72) = v9;
  JreStrongAssignAndConsume((a1 + 48), +[IOSByteArray newArrayWithLength:](IOSByteArray, "newArrayWithLength:", ([*(a1 + 64) byteBlockCount] * v9)));
  v10 = +[IOSLongArray newArrayWithLength:](IOSLongArray, "newArrayWithLength:", ([*(a1 + 64) byteValueCount] * *(a1 + 72)));

  return JreStrongAssignAndConsume((a1 + 56), v10);
}

OrgApacheLuceneUtilPackedDirectWriter *OrgApacheLuceneUtilPackedDirectWriter_getInstanceWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(void *a1, uint64_t a2, int a3)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedDirectWriter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003654();
  }

  if ((JavaUtilArrays_binarySearchWithIntArray_withInt_(OrgApacheLuceneUtilPackedDirectWriter_SUPPORTED_BITS_PER_VALUE_, a3) & 0x80000000) != 0)
  {
    v15 = JreStrcat("$I$", v6, v7, v8, v9, v10, v11, v12, @"Unsupported bitsPerValue ");
    v16 = new_JavaLangIllegalArgumentException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  v13 = [OrgApacheLuceneUtilPackedDirectWriter alloc];
  OrgApacheLuceneUtilPackedDirectWriter_initWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(v13, a1, a2, a3);

  return v13;
}

uint64_t OrgApacheLuceneUtilPackedDirectWriter_bitsRequiredWithLong_(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedDirectWriter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003654();
  }

  v9 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(a1, a2, a3, a4, a5, a6, a7, a8);

  return sub_1000035B0(v9);
}

uint64_t OrgApacheLuceneUtilPackedDirectWriter_unsignedBitsRequiredWithLong_(unint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedDirectWriter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003654();
  }

  v2 = OrgApacheLuceneUtilPackedPackedInts_unsignedBitsRequiredWithLong_(a1);

  return sub_1000035B0(v2);
}

uint64_t sub_1000035B0(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedDirectWriter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003654();
  }

  v2 = JavaUtilArrays_binarySearchWithIntArray_withInt_(OrgApacheLuceneUtilPackedDirectWriter_SUPPORTED_BITS_PER_VALUE_, a1);
  if (v2 < 0)
  {
    if (!OrgApacheLuceneUtilPackedDirectWriter_SUPPORTED_BITS_PER_VALUE_)
    {
      JreThrowNullPointerException();
    }

    v3 = ~v2;
    v4 = *(OrgApacheLuceneUtilPackedDirectWriter_SUPPORTED_BITS_PER_VALUE_ + 8);
    if (v4 <= v3)
    {
      IOSArray_throwOutOfBoundsWithMsg(v4, v3);
    }

    return *(OrgApacheLuceneUtilPackedDirectWriter_SUPPORTED_BITS_PER_VALUE_ + 12 + 4 * v3);
  }

  return a1;
}

id OrgApacheLuceneUtilArrayTimSorter_initWithNSObjectArray_withJavaUtilComparator_withInt_(id *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  OrgApacheLuceneUtilTimSorter_initWithInt_(a1, a4);
  JreStrongAssign(a1 + 5, a2);
  JreStrongAssign(a1 + 4, a3);
  if (v4 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = [IOSObjectArray arrayWithLength:v4 type:NSObject_class_()];
    objc_opt_class();
    if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  return JreStrongAssign(a1 + 6, v8);
}

OrgApacheLuceneUtilArrayTimSorter *new_OrgApacheLuceneUtilArrayTimSorter_initWithNSObjectArray_withJavaUtilComparator_withInt_(void *a1, void *a2, uint64_t a3)
{
  v6 = [OrgApacheLuceneUtilArrayTimSorter alloc];
  OrgApacheLuceneUtilArrayTimSorter_initWithNSObjectArray_withJavaUtilComparator_withInt_(&v6->super.super.super.isa, a1, a2, a3);
  return v6;
}

void *OrgApacheLuceneCodecsLucene53Lucene53Codec_init(id *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000040DC();
  }

  v2 = OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_values_;

  return OrgApacheLuceneCodecsLucene53Lucene53Codec_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_(a1, v2);
}

void *OrgApacheLuceneCodecsLucene53Lucene53Codec_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_(id *a1, uint64_t a2)
{
  OrgApacheLuceneCodecsCodec_initWithNSString_(a1, @"Lucene53");
  v4 = new_OrgApacheLuceneCodecsLucene50Lucene50TermVectorsFormat_init();
  JreStrongAssignAndConsume(a1 + 2, v4);
  v5 = new_OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_init();
  JreStrongAssignAndConsume(a1 + 3, v5);
  v6 = new_OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_init();
  JreStrongAssignAndConsume(a1 + 4, v6);
  v7 = new_OrgApacheLuceneCodecsLucene50Lucene50LiveDocsFormat_init();
  JreStrongAssignAndConsume(a1 + 5, v7);
  v8 = new_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init();
  JreStrongAssignAndConsume(a1 + 6, v8);
  v9 = [OrgApacheLuceneCodecsLucene53Lucene53Codec__1 alloc];
  JreStrongAssign(&v9->this$0_, a1);
  OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_init(v9);
  JreStrongAssignAndConsume(a1 + 7, v9);
  v10 = [OrgApacheLuceneCodecsLucene53Lucene53Codec__2 alloc];
  JreStrongAssign(&v10->this$0_, a1);
  OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_init(v10);
  JreStrongAssignAndConsume(a1 + 8, v10);
  v11 = OrgApacheLuceneCodecsPostingsFormat_forNameWithNSString_(@"Lucene50");
  JreStrongAssign(a1 + 10, v11);
  v12 = OrgApacheLuceneCodecsDocValuesFormat_forNameWithNSString_(@"Lucene50");
  JreStrongAssign(a1 + 11, v12);
  v13 = new_OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_init();
  JreStrongAssignAndConsume(a1 + 12, v13);
  v14 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a2);
  v15 = new_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_(v14);

  return JreStrongAssignAndConsume(a1 + 9, v15);
}

uint64_t OrgApacheLuceneUtilStringHelper_bytesDifferenceWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    sub_100005258();
    if (!a1)
    {
      goto LABEL_25;
    }
  }

  if (!a2)
  {
    goto LABEL_25;
  }

  if (*(a1 + 20) >= *(a2 + 20))
  {
    v4 = a2;
  }

  else
  {
    v4 = a1;
  }

  v5 = *(v4 + 20);
  if (v5 < 1)
  {
    LODWORD(v7) = 0;
    goto LABEL_21;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_25:
    JreThrowNullPointerException();
  }

  v7 = 0;
  v8 = *(a1 + 16);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  do
  {
    v11 = v8 + v7;
    v12 = *(v6 + 8);
    if (v8 + v7 < 0 || v11 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v8 + v7);
    }

    if (!v9)
    {
      goto LABEL_25;
    }

    v13 = *(v6 + 12 + v11);
    v14 = v10 + v7;
    v15 = *(v9 + 8);
    if (v10 + v7 < 0 || v14 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v10 + v7);
    }

    if (v13 != *(v9 + 12 + v14))
    {
      goto LABEL_21;
    }

    ++v7;
  }

  while (v5 != v7);
  LODWORD(v7) = *(v4 + 20);
LABEL_21:
  if (v7 >= v5)
  {
    return v5;
  }

  else
  {
    return v7;
  }
}

uint64_t OrgApacheLuceneUtilStringHelper_sortKeyLengthWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    sub_100005258();
    if (!a2)
    {
LABEL_21:
      JreThrowNullPointerException();
    }
  }

  if (!a1)
  {
    goto LABEL_21;
  }

  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  v6 = JavaLangMath_minWithInt_withInt_(*(a1 + 20), *(a2 + 20));
  if (v6 < 1)
  {
LABEL_16:
    v14 = *(a2 + 20);
    v15 = (*(a1 + 20) + 1);

    return JavaLangMath_minWithInt_withInt_(v15, v14);
  }

  else
  {
    v7 = v6;
    v8 = -1;
    while (1)
    {
      v9 = *(a1 + 8);
      if (!v9)
      {
        goto LABEL_21;
      }

      v10 = *(v9 + 8);
      if ((v5 & 0x80000000) != 0 || v5 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v5);
      }

      v11 = *(v9 + 12 + v5);
      v12 = *(a2 + 8);
      v13 = *(v12 + 8);
      if ((v4 & 0x80000000) != 0 || v4 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v4);
      }

      if (v11 != *(v12 + 12 + v4))
      {
        return -v8;
      }

      --v8;
      v4 = (v4 + 1);
      v5 = (v5 + 1);
      if (!--v7)
      {
        goto LABEL_16;
      }
    }
  }
}

id OrgApacheLuceneUtilStringHelper_equalsWithNSString_withNSString_(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100005258();
    if (a1)
    {
      goto LABEL_3;
    }

    return (a2 == 0);
  }

  if (!a1)
  {
    return (a2 == 0);
  }

LABEL_3:

  return [a1 isEqual:a2];
}

BOOL OrgApacheLuceneUtilStringHelper_startsWithWithByteArray_withOrgApacheLuceneUtilBytesRef_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_100005258();
    if (!a1)
    {
      goto LABEL_20;
    }
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v4 = *(a2 + 20);
  if (*(a1 + 8) < v4)
  {
    return 0;
  }

  if (v4 >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 8);
      if (v6 >= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, v6);
      }

      v8 = *(a2 + 8);
      if (!v8)
      {
        break;
      }

      v9 = *(a1 + 12 + v6);
      v10 = v6 + *(a2 + 16);
      v11 = *(v8 + 8);
      if (v10 < 0 || v10 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v6 + *(a2 + 16));
      }

      v12 = *(v8 + 12 + v10);
      result = v9 == v12;
      if (v9 == v12 && ++v6 < *(a2 + 20))
      {
        continue;
      }

      return result;
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  return 1;
}

BOOL OrgApacheLuceneUtilStringHelper_startsWithWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100005258();
  }

  return sub_100004F80(a1, a2, 0);
}

BOOL OrgApacheLuceneUtilStringHelper_endsWithWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_100005258();
    if (!a1)
    {
LABEL_8:
      JreThrowNullPointerException();
    }
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 20) - *(a2 + 20);

  return sub_100004F80(a1, a2, v4);
}

uint64_t OrgApacheLuceneUtilStringHelper_murmurhash3_x86_32WithByteArray_withInt_withInt_withInt_(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100005258();
  }

  v8 = (a3 & 0xFFFFFFFC) + a2;
  if (v8 > a2)
  {
    if (!a1)
    {
      goto LABEL_37;
    }

    do
    {
      v9 = a2;
      v10 = *(a1 + 8);
      if (a2 < 0 || a2 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, a2);
      }

      v11 = a2 + 1;
      if (a2 < -1 || v11 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v11);
      }

      v12 = *(a1 + 12 + v11);
      v13 = a2 + 2;
      if (a2 + 2 < 0 || v13 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v13);
      }

      v14 = *(a1 + 12 + v13);
      v15 = a2 + 3;
      if (a2 + 3 < 0 || v15 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v15);
      }

      v16 = JavaLangInteger_rotateLeftWithInt_withInt_(-862048943 * (*(a1 + 12 + a2) | (v12 << 8) | (v14 << 16) | (*(a1 + 12 + v15) << 24)), 15);
      a4 = 5 * JavaLangInteger_rotateLeftWithInt_withInt_((461845907 * v16) ^ a4, 13) - 430675100;
      a2 += 4;
    }

    while (v9 + 4 < v8);
  }

  if ((a3 & 3) > 1)
  {
    if ((a3 & 3) == 2)
    {
      if (!a1)
      {
        goto LABEL_37;
      }

      v18 = 0;
    }

    else
    {
      if (!a1)
      {
        goto LABEL_37;
      }

      v19 = *(a1 + 8);
      v20 = v8 + 2;
      if (v8 + 2 < 0 || v20 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v20);
      }

      v18 = *(a1 + 12 + v20) << 16;
    }

    v21 = *(a1 + 8);
    v22 = v8 + 1;
    if (v8 + 1 < 0 || v22 >= v21)
    {
      IOSArray_throwOutOfBoundsWithMsg(v21, v22);
    }

    v17 = v18 | (*(a1 + 12 + v22) << 8);
    goto LABEL_33;
  }

  if ((a3 & 3) == 0)
  {
    goto LABEL_36;
  }

  if (!a1)
  {
LABEL_37:
    JreThrowNullPointerException();
  }

  v17 = 0;
LABEL_33:
  v23 = *(a1 + 8);
  if ((v8 & 0x80000000) != 0 || v8 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v8);
  }

  a4 ^= 461845907 * JavaLangInteger_rotateLeftWithInt_withInt_(-862048943 * (v17 | *(a1 + 12 + v8)), 15);
LABEL_36:
  v24 = -2048144789 * (a4 ^ a3 ^ ((a4 ^ a3) >> 16));
  return (-1028477387 * (v24 ^ (v24 >> 13))) ^ ((-1028477387 * (v24 ^ (v24 >> 13))) >> 16);
}

uint64_t OrgApacheLuceneUtilStringHelper_murmurhash3_x86_32WithOrgApacheLuceneUtilBytesRef_withInt_(uint64_t a1, unsigned int a2)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_100005258();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);

  return OrgApacheLuceneUtilStringHelper_murmurhash3_x86_32WithByteArray_withInt_withInt_withInt_(v4, v5, v6, a2);
}

const __CFString *OrgApacheLuceneUtilStringHelper_idToStringWithByteArray_(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100005258();
    if (a1)
    {
      goto LABEL_3;
    }

    return @"(null)";
  }

  if (!a1)
  {
    return @"(null)";
  }

LABEL_3:
  v2 = new_JavaLangStringBuilder_init();
  -[JavaLangStringBuilder appendWithNSString:](v2, "appendWithNSString:", [new_JavaMathBigInteger_initWithInt_withByteArray_(1 toStringWithInt:"toStringWithInt:", 36]);
  if (*(a1 + 8) != 16)
  {
    [(JavaLangStringBuilder *)v2 appendWithNSString:@" (INVALID FORMAT)"];
  }

  return [(JavaLangStringBuilder *)v2 description];
}

OrgApacheLuceneUtilBytesRef *OrgApacheLuceneUtilStringHelper_intsRefToBytesRefWithOrgApacheLuceneUtilIntsRef_(uint64_t a1)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_100005258();
    if (!a1)
    {
      goto LABEL_18;
    }
  }

  v2 = [IOSByteArray arrayWithLength:*(a1 + 20)];
  v10 = v2;
  if (*(a1 + 20) >= 1)
  {
    v11 = 0;
    v12 = v2;
    while (1)
    {
      v13 = *(a1 + 8);
      if (!v13)
      {
        break;
      }

      v14 = v11 + *(a1 + 16);
      v15 = *(v13 + 8);
      if (v14 < 0 || v14 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v11 + *(a1 + 16));
      }

      v16 = *(v13 + 12 + 4 * v14);
      if (v16 >= 0x100)
      {
        v20 = JreStrcat("$I$I$", v3, v4, v5, v6, v7, v8, v9, @"int at pos=");
        v21 = new_JavaLangIllegalArgumentException_initWithNSString_(v20);
        objc_exception_throw(v21);
      }

      size = v10->super.size_;
      if (v11 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v11);
      }

      *(&v12->super.size_ + 4) = v16;
      ++v11;
      v12 = (v12 + 1);
      if (v11 >= *(a1 + 20))
      {
        goto LABEL_14;
      }
    }

LABEL_18:
    JreThrowNullPointerException();
  }

LABEL_14:
  v18 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_(v10);

  return v18;
}

BOOL sub_100004F80(uint64_t a1, uint64_t a2, int a3)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100005258();
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (a3 < 0)
  {
    return 0;
  }

LABEL_3:
  if (!a1 || !a2)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  v6 = *(a2 + 20);
  if (*(a1 + 20) - a3 < v6)
  {
    return 0;
  }

  v9 = (*(a1 + 16) + a3);
  v10 = *(a2 + 16);
  v11 = v10 + v6;
  if (v10 > v11)
  {
    v11 = *(a2 + 16);
  }

  v12 = v11;
  do
  {
    v7 = v12 == v10;
    if (v12 == v10)
    {
      break;
    }

    v13 = *(a1 + 8);
    if (!v13)
    {
      goto LABEL_21;
    }

    v14 = *(v13 + 8);
    if ((v9 & 0x80000000) != 0 || v9 >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, v9);
    }

    v15 = *(v13 + 12 + v9);
    v16 = *(a2 + 8);
    v17 = *(v16 + 8);
    if (v10 < 0 || v10 >= v17)
    {
      IOSArray_throwOutOfBoundsWithMsg(v17, v10);
    }

    v18 = *(v16 + 12 + v10++);
    v9 = (v9 + 1);
  }

  while (v15 == v18);
  return v7;
}

IOSByteArray *OrgApacheLuceneUtilStringHelper_randomId()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100005258();
  }

  v0 = qword_100553D88;
  objc_sync_enter(qword_100553D88);
  if (!qword_100553D98)
  {
    goto LABEL_13;
  }

  v1 = [qword_100553D98 toByteArray];
  v2 = qword_100553D98;
  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v3 = [v2 addWithJavaMathBigInteger:JavaMathBigInteger_ONE_];
  if (!v3)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  JreStrongAssign(&qword_100553D98, [v3 and__WithJavaMathBigInteger:qword_100553D90]);
  objc_sync_exit(v0);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  v4 = v1[2];
  if (v4 <= 16)
  {
    v6 = [IOSByteArray arrayWithLength:16];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v1, 0, v6, (v6->super.size_ - v1[2]), v1[2]);
    return v6;
  }

  else
  {

    return JavaUtilArrays_copyOfRangeWithByteArray_withInt_withInt_(v1, 1, v4);
  }
}

id OrgApacheLuceneSearchDisjunctionDISIApproximation_initWithOrgApacheLuceneSearchDisiPriorityQueue_(uint64_t a1, void *a2)
{
  OrgApacheLuceneSearchDocIdSetIterator_init(a1, a2);
  JreStrongAssign((a1 + 8), a2);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (!a2)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  result = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v5 = result;
    v6 = 0;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (!v9)
        {
          goto LABEL_13;
        }

        v6 += *(v9 + 16);
        v8 = v8 + 1;
      }

      while (v5 != v8);
      result = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = result;
    }

    while (result);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 16) = v6;
  return result;
}

OrgApacheLuceneSearchDisjunctionDISIApproximation *new_OrgApacheLuceneSearchDisjunctionDISIApproximation_initWithOrgApacheLuceneSearchDisiPriorityQueue_(void *a1)
{
  v2 = [OrgApacheLuceneSearchDisjunctionDISIApproximation alloc];
  OrgApacheLuceneSearchDisjunctionDISIApproximation_initWithOrgApacheLuceneSearchDisiPriorityQueue_(v2, a1);
  return v2;
}

OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_DocData *sub_1000055F0(id *a1, int a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = [v3 descendingIterator]) == 0)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  v6 = v5;
  do
  {
    if (([v6 hasNext] & 1) == 0)
    {
      goto LABEL_11;
    }

    v7 = [v6 next];
    if (v7)
    {
      v8 = v7;
      v9 = v7[3];
      if (v9)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  while (([v9 isEmpty] & 1) != 0);
  v10 = [v8[3] getLast];
  if (!v10)
  {
LABEL_11:
    v12 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_DocData alloc];
    v13 = v12;
    v14 = a1;
    v15 = a2;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_20;
  }

  if (*(v10 + 16) == 1)
  {
    v11 = v10[17];
  }

  else
  {
    v11 = 0;
  }

  if (*(v10 + 17) == 1)
  {
    v19 = v10[17];
  }

  else
  {
    v19 = 0;
  }

  v20 = v10[14];
  v21 = v10[15];
  v22 = v10[16];
  if (*(v10 + 18) == 1)
  {
    v23 = v10[17];
  }

  else
  {
    v23 = 0;
  }

  v12 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_DocData alloc];
  v13 = v12;
  v16 = v11 + v20;
  v17 = v19 + v21;
  v18 = v23 + v22;
  v14 = a1;
  v15 = a2;
LABEL_20:
  sub_100009C1C(v12, v14, v15, v16, v17, v18);
  v24 = v13;
  [a1[10] addWithId:v24];
  return v24;
}

void *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_(uint64_t a1, void *a2, void **a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, int a9)
{
  OrgApacheLuceneCodecsTermVectorsWriter_init();
  if (!a3)
  {
    goto LABEL_5;
  }

  JreStrongAssign((a1 + 8), a3[1]);
  JreStrongAssign((a1 + 32), a7);
  if (!a7)
  {
    goto LABEL_5;
  }

  JreStrongAssign((a1 + 40), [a7 newCompressor]);
  *(a1 + 48) = a8;
  *(a1 + 72) = 0;
  v17 = new_JavaUtilArrayDeque_init();
  JreStrongAssignAndConsume((a1 + 80), v17);
  v24 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a8, 1, v18, v19, v20, v21, v22, v23);
  v25 = new_OrgApacheLuceneUtilGrowableByteArrayDataOutput_initWithInt_(v24);
  JreStrongAssignAndConsume((a1 + 144), v25);
  v32 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(1u, 1, v26, v27, v28, v29, v30, v31);
  v33 = new_OrgApacheLuceneUtilGrowableByteArrayDataOutput_initWithInt_(v32);
  JreStrongAssignAndConsume((a1 + 152), v33);
  v40 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(0x1Eu, 1, v34, v35, v36, v37, v38, v39);
  v41 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(v40);
  JreStrongAssignAndConsume((a1 + 104), v41);
  if (!a2)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  v42 = [a2 createOutputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(a1 + 8) withOrgApacheLuceneStoreIOContext:{a4, OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_VECTORS_INDEX_EXTENSION_), a5}];
  v43 = [a2 createOutputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(a1 + 8) withOrgApacheLuceneStoreIOContext:{a4, OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_VECTORS_EXTENSION_), a5}];
  JreStrongAssign((a1 + 24), v43);
  v51 = JreStrcat("$$", v44, v45, v46, v47, v48, v49, v50, a6);
  v59 = JreStrcat("$$", v52, v53, v54, v55, v56, v57, v58, a6);
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(v42, v51, 1, [a3 getId], a4);
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(*(a1 + 24), v59, 1, [a3 getId], a4);
  v60 = new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_initWithOrgApacheLuceneStoreIndexOutput_withInt_(v42, a9);
  JreStrongAssignAndConsume((a1 + 16), v60);
  [*(a1 + 24) writeVIntWithInt:2];
  [*(a1 + 24) writeVIntWithInt:a8];
  v61 = new_OrgApacheLuceneUtilPackedBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(*(a1 + 24), 64);
  JreStrongAssignAndConsume((a1 + 160), v61);
  JreStrongAssignAndConsume((a1 + 112), [IOSIntArray newArrayWithLength:1024]);
  JreStrongAssignAndConsume((a1 + 120), [IOSIntArray newArrayWithLength:1024]);
  JreStrongAssignAndConsume((a1 + 128), [IOSIntArray newArrayWithLength:1024]);
  return JreStrongAssignAndConsume((a1 + 136), [IOSIntArray newArrayWithLength:1024]);
}

void sub_100005B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    a11 = *(v13 + 24);
    a13 = *(v13 + 16);
    v14 = [IOSObjectArray arrayWithObjects:&a11 count:3 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v14);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100005CAC(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x100005C28);
  }

  JUMPOUT(0x100005CA0);
}

uint64_t sub_100006308(id *a1, int a2)
{
  if (a2 == 1)
  {
    v3 = a1[10];
    if (v3)
    {
      v4 = [v3 getFirst];
      if (v4)
      {
        if (a1[3])
        {
          v5 = v4[4];
          [a1[3] writeVIntWithInt:v5];
          return v5;
        }
      }
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  v6 = a1[20];
  if (!v6)
  {
    goto LABEL_20;
  }

  [v6 resetWithOrgApacheLuceneStoreDataOutput:a1[3]];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = a1[10];
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = [a1[10] countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    LODWORD(v5) = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (!v12)
        {
          goto LABEL_20;
        }

        [a1[20] addWithLong:{*(v12 + 16), v14}];
        v5 = (*(v12 + 16) + v5);
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  else
  {
    v5 = 0;
  }

  [a1[20] finish];
  return v5;
}

IOSIntArray *sub_1000064AC(uint64_t a1)
{
  v2 = new_JavaUtilTreeSet_init();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v3 = *(a1 + 80);
  if (!v3)
  {
    goto LABEL_49;
  }

  v4 = v2;
  v5 = [*(a1 + 80) countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v59;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v59 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v58 + 1) + 8 * i);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        if (!v9)
        {
          goto LABEL_49;
        }

        v10 = *(v9 + 24);
        if (!v10)
        {
          goto LABEL_49;
        }

        v11 = [*(v9 + 24) countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v55;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v55 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v54 + 1) + 8 * j);
              if (!v15)
              {
                goto LABEL_49;
              }

              [(JavaUtilTreeSet *)v4 addWithId:JavaLangInteger_valueOfWithInt_(*(v15 + 20))];
            }

            v12 = [v10 countByEnumeratingWithState:&v54 objects:v64 count:16];
          }

          while (v12);
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v6);
  }

  v16 = [(JavaUtilTreeSet *)v4 size];
  v17 = [(JavaUtilTreeSet *)v4 last];
  if (!v17)
  {
    goto LABEL_49;
  }

  v18 = [v17 intValue];
  v26 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(v18, v19, v20, v21, v22, v23, v24, v25);
  v27 = JavaLangMath_minWithInt_withInt_(v16 - 1, 7);
  if (!*(a1 + 24))
  {
    goto LABEL_49;
  }

  [*(a1 + 24) writeByteWithByte:(v26 | (32 * v27))];
  if ((v16 - 1) >= 7)
  {
    [*(a1 + 24) writeVIntWithInt:v16 - 8];
  }

  v28 = *(a1 + 24);
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10000A400();
  }

  WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getWriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(v28, OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_, [(JavaUtilTreeSet *)v4 size], v26, 1);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v30 = [(JavaUtilTreeSet *)v4 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (!v30)
  {
    if (WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt)
    {
      goto LABEL_36;
    }

LABEL_49:
    JreThrowNullPointerException();
  }

  v31 = v30;
  v32 = *v51;
  do
  {
    for (k = 0; k != v31; k = k + 1)
    {
      if (*v51 != v32)
      {
        objc_enumerationMutation(v4);
      }

      if (!WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt)
      {
        goto LABEL_49;
      }

      v34 = *(*(&v50 + 1) + 8 * k);
      if (!v34)
      {
        goto LABEL_49;
      }

      -[OrgApacheLuceneUtilPackedPackedWriter addWithLong:](WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt, "addWithLong:", [v34 intValue]);
    }

    v31 = [(JavaUtilTreeSet *)v4 countByEnumeratingWithState:&v50 objects:v63 count:16];
  }

  while (v31);
LABEL_36:
  [(OrgApacheLuceneUtilPackedPackedWriter *)WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt finish];
  v35 = [IOSIntArray arrayWithLength:[(JavaUtilTreeSet *)v4 size]];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v36 = [(JavaUtilTreeSet *)v4 countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = 0;
    v39 = *v47;
    do
    {
      v40 = 0;
      do
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(v4);
        }

        v41 = *(*(&v46 + 1) + 8 * v40);
        if (!v41)
        {
          goto LABEL_49;
        }

        v42 = [v41 intValue];
        size = v35->super.size_;
        if ((v38 & 0x80000000) != 0 || v38 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v38);
        }

        *(&v35->super.size_ + v38 + 1) = v42;
        v40 = v40 + 1;
        v38 = (v38 + 1);
      }

      while (v37 != v40);
      v44 = [(JavaUtilTreeSet *)v4 countByEnumeratingWithState:&v46 objects:v62 count:16];
      v37 = v44;
    }

    while (v44);
  }

  return v35;
}

id sub_1000068C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 24);
  if (atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire))
  {
    if (!a3)
    {
      goto LABEL_25;
    }
  }

  else
  {
    sub_100003648();
    if (!a3)
    {
      goto LABEL_25;
    }
  }

  v12 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_;
  v13 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(*(a3 + 8) - 1, a2, a3, a4, a5, a6, a7, a8);
  WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getWriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(v11, v12, a2, v13, 1);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = *(a1 + 80);
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt;
  v17 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v35;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v34 + 1) + 8 * i);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        if (!v21)
        {
          goto LABEL_25;
        }

        v22 = *(v21 + 24);
        if (!v22)
        {
          goto LABEL_25;
        }

        v23 = [*(v21 + 24) countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v31;
          do
          {
            for (j = 0; j != v24; j = j + 1)
            {
              if (*v31 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v30 + 1) + 8 * j);
              if (!v27)
              {
                goto LABEL_25;
              }

              v28 = JavaUtilArrays_binarySearchWithIntArray_withInt_(a3, *(v27 + 20));
              if (!v16)
              {
                goto LABEL_25;
              }

              [(OrgApacheLuceneUtilPackedPackedWriter *)v16 addWithLong:v28, v30];
            }

            v24 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v24);
        }
      }

      v18 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v18);
  }

  if (!v16)
  {
LABEL_25:
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPackedPackedWriter *)v16 finish];
}

id sub_100006AF8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    goto LABEL_63;
  }

  v6 = [IOSIntArray arrayWithLength:*(a3 + 8)];
  JavaUtilArrays_fillWithIntArray_withInt_(v6, -1);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v7 = *(a1 + 80);
  if (!v7)
  {
    goto LABEL_63;
  }

  v50 = a2;
  v48 = [v7 countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (!v48)
  {
LABEL_34:
    v24 = *(a1 + 24);
    if (v24)
    {
      [v24 writeVIntWithInt:0];
      v25 = *(a1 + 24);
      if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10000A400();
      }

      WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getWriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(v25, OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_, v6->super.size_, OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FLAGS_BITS_, 1);
      v27 = WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt;
      v28 = &v6->super.size_ + 1;
      v29 = (&v6->super.size_ + v6->super.size_ + 1);
      if (v28 >= v29)
      {
        return [(OrgApacheLuceneUtilPackedPackedWriter *)v27 finish];
      }

      if (WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt)
      {
        do
        {
          v30 = *v28++;
          [(OrgApacheLuceneUtilPackedPackedWriter *)v27 addWithLong:v30, v46];
        }

        while (v28 < v29);
        return [(OrgApacheLuceneUtilPackedPackedWriter *)v27 finish];
      }
    }

LABEL_63:
    JreThrowNullPointerException();
  }

  v8 = *v65;
  v51 = a1;
  v46 = *v65;
  v47 = v7;
LABEL_5:
  v9 = 0;
  while (1)
  {
    if (*v65 != v8)
    {
      objc_enumerationMutation(v7);
    }

    v10 = *(*(&v64 + 1) + 8 * v9);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    if (!v10)
    {
      goto LABEL_63;
    }

    v11 = *(v10 + 24);
    if (!v11)
    {
      goto LABEL_63;
    }

    v49 = v9;
    v12 = [v11 countByEnumeratingWithState:&v60 objects:v70 count:16];
    if (v12)
    {
      break;
    }

LABEL_32:
    v9 = v49 + 1;
    a1 = v51;
    v8 = v46;
    v7 = v47;
    if ((v49 + 1) == v48)
    {
      v48 = [v47 countByEnumeratingWithState:&v64 objects:v71 count:16];
      if (!v48)
      {
        goto LABEL_34;
      }

      goto LABEL_5;
    }
  }

  v13 = v12;
  v14 = *v61;
LABEL_12:
  v15 = 0;
  while (1)
  {
    if (*v61 != v14)
    {
      objc_enumerationMutation(v11);
    }

    v16 = *(*(&v60 + 1) + 8 * v15);
    if (!v16)
    {
      goto LABEL_63;
    }

    v17 = JavaUtilArrays_binarySearchWithIntArray_withInt_(a3, *(v16 + 20));
    size = v6->super.size_;
    if (v17 < 0 || v17 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v17);
    }

    v19 = *(&v6->super.size_ + v17 + 1);
    if (v19 == -1)
    {
      v21 = *(v16 + 24);
      v22 = v6->super.size_;
      if (v17 < 0 || v17 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, v17);
      }

      *(&v6->super.size_ + v17 + 1) = v21;
      goto LABEL_26;
    }

    v20 = v6->super.size_;
    if (v17 < 0 || v17 >= v20)
    {
      IOSArray_throwOutOfBoundsWithMsg(v20, v17);
    }

    if (v19 != *(v16 + 24))
    {
      break;
    }

LABEL_26:
    if (v13 == ++v15)
    {
      v23 = [v11 countByEnumeratingWithState:&v60 objects:v70 count:16];
      v13 = v23;
      if (!v23)
      {
        goto LABEL_32;
      }

      goto LABEL_12;
    }
  }

  v31 = *(v51 + 24);
  if (!v31)
  {
    goto LABEL_63;
  }

  [v31 writeVIntWithInt:1];
  v32 = *(v51 + 24);
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10000A400();
  }

  v27 = OrgApacheLuceneUtilPackedPackedInts_getWriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(v32, OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_, v50, OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FLAGS_BITS_, 1);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v33 = *(v51 + 80);
  v34 = [v33 countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v57;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v57 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v56 + 1) + 8 * i);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        if (!v38)
        {
          goto LABEL_63;
        }

        v39 = *(v38 + 24);
        if (!v39)
        {
          goto LABEL_63;
        }

        v40 = [*(v38 + 24) countByEnumeratingWithState:&v52 objects:v68 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v53;
          do
          {
            for (j = 0; j != v41; j = j + 1)
            {
              if (*v53 != v42)
              {
                objc_enumerationMutation(v39);
              }

              if (!v27)
              {
                goto LABEL_63;
              }

              v44 = *(*(&v52 + 1) + 8 * j);
              if (!v44)
              {
                goto LABEL_63;
              }

              [(OrgApacheLuceneUtilPackedPackedWriter *)v27 addWithLong:*(v44 + 24)];
            }

            v41 = [v39 countByEnumeratingWithState:&v52 objects:v68 count:16];
          }

          while (v41);
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v35);
  }

  return [(OrgApacheLuceneUtilPackedPackedWriter *)v27 finish];
}

id sub_100006FCC(uint64_t a1, uint64_t a2)
{
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v2 = *(a1 + 80);
  if (!v2)
  {
    goto LABEL_42;
  }

  v5 = [*(a1 + 80) countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v5)
  {
    v13 = v5;
    v41 = a2;
    v14 = 0;
    v15 = *v55;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v55 != v15)
        {
          objc_enumerationMutation(v2);
        }

        v17 = *(*(&v54 + 1) + 8 * i);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        if (!v17)
        {
          goto LABEL_42;
        }

        v18 = *(v17 + 24);
        if (!v18)
        {
          goto LABEL_42;
        }

        v19 = [*(v17 + 24) countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v51;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v51 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v50 + 1) + 8 * j);
              if (!v23)
              {
                goto LABEL_42;
              }

              v14 |= *(v23 + 28);
            }

            v20 = [v18 countByEnumeratingWithState:&v50 objects:v60 count:16];
          }

          while (v20);
        }
      }

      v13 = [v2 countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v13);
    v5 = v14;
    a2 = v41;
  }

  v24 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(v5, v6, v7, v8, v9, v10, v11, v12);
  v25 = *(a1 + 24);
  if (!v25)
  {
LABEL_42:
    JreThrowNullPointerException();
  }

  [v25 writeVIntWithInt:v24];
  v26 = *(a1 + 24);
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10000A400();
  }

  WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getWriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(v26, OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_, a2, v24, 1);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v28 = *(a1 + 80);
  v29 = [v28 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v47;
    do
    {
      for (k = 0; k != v30; k = k + 1)
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v46 + 1) + 8 * k);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        if (!v33)
        {
          goto LABEL_42;
        }

        v34 = *(v33 + 24);
        if (!v34)
        {
          goto LABEL_42;
        }

        v35 = [*(v33 + 24) countByEnumeratingWithState:&v42 objects:v58 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v43;
          do
          {
            for (m = 0; m != v36; m = m + 1)
            {
              if (*v43 != v37)
              {
                objc_enumerationMutation(v34);
              }

              if (!WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt)
              {
                goto LABEL_42;
              }

              v39 = *(*(&v42 + 1) + 8 * m);
              if (!v39)
              {
                goto LABEL_42;
              }

              [(OrgApacheLuceneUtilPackedPackedWriter *)WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt addWithLong:*(v39 + 28)];
            }

            v36 = [v34 countByEnumeratingWithState:&v42 objects:v58 count:16];
          }

          while (v36);
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v30);
  }

  return [(OrgApacheLuceneUtilPackedPackedWriter *)WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt finish];
}

id sub_10000730C(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (!v2)
  {
    goto LABEL_52;
  }

  [v2 resetWithOrgApacheLuceneStoreDataOutput:*(a1 + 24)];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v3 = *(a1 + 80);
  if (!v3)
  {
    goto LABEL_52;
  }

  v32 = [*(a1 + 80) countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v32)
  {
    v4 = *v53;
    v28 = *v53;
    v30 = v3;
    do
    {
      v5 = 0;
      do
      {
        if (*v53 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v52 + 1) + 8 * v5);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        if (!v6)
        {
          goto LABEL_52;
        }

        v7 = *(v6 + 24);
        if (!v7)
        {
          goto LABEL_52;
        }

        v34 = v5;
        obj = *(v6 + 24);
        v8 = [v7 countByEnumeratingWithState:&v48 objects:v58 count:16];
        if (v8)
        {
          v9 = v8;
          v38 = *v49;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v49 != v38)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v48 + 1) + 8 * i);
              if (!v11)
              {
                goto LABEL_52;
              }

              if (*(v11 + 28) >= 1)
              {
                v12 = 0;
                do
                {
                  v13 = *(v11 + 40);
                  if (!v13)
                  {
                    goto LABEL_52;
                  }

                  v14 = *(v13 + 8);
                  if (v12 >= v14)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v14, v12);
                  }

                  [*(a1 + 160) addWithLong:*(v13 + 12 + 4 * v12++)];
                }

                while (v12 < *(v11 + 28));
              }
            }

            v9 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
          }

          while (v9);
        }

        v5 = v34 + 1;
        v4 = v28;
        v3 = v30;
      }

      while ((v34 + 1) != v32);
      v32 = [v30 countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v32);
  }

  [*(a1 + 160) finish];
  [*(a1 + 160) resetWithOrgApacheLuceneStoreDataOutput:*(a1 + 24)];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v15 = *(a1 + 80);
  v33 = [v15 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v33)
  {
    v16 = *v45;
    v29 = *v45;
    v31 = v15;
    do
    {
      v17 = 0;
      do
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v15);
        }

        v18 = *(*(&v44 + 1) + 8 * v17);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        if (!v18)
        {
          goto LABEL_52;
        }

        v19 = *(v18 + 24);
        if (!v19)
        {
          goto LABEL_52;
        }

        v35 = v17;
        obja = *(v18 + 24);
        v20 = [v19 countByEnumeratingWithState:&v40 objects:v56 count:16];
        if (!v20)
        {
          goto LABEL_49;
        }

        v21 = v20;
        v39 = *v41;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v41 != v39)
            {
              objc_enumerationMutation(obja);
            }

            v23 = *(*(&v40 + 1) + 8 * j);
            if (!v23)
            {
              goto LABEL_52;
            }

            if (*(v23 + 28) >= 1)
            {
              v24 = 0;
              while (1)
              {
                v25 = *(v23 + 48);
                if (!v25)
                {
                  break;
                }

                v26 = *(v25 + 8);
                if (v24 >= v26)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v26, v24);
                }

                [*(a1 + 160) addWithLong:*(v25 + 12 + 4 * v24++)];
                if (v24 >= *(v23 + 28))
                {
                  goto LABEL_47;
                }
              }

LABEL_52:
              JreThrowNullPointerException();
            }

LABEL_47:
            ;
          }

          v21 = [obja countByEnumeratingWithState:&v40 objects:v56 count:16];
        }

        while (v21);
LABEL_49:
        v17 = v35 + 1;
        v16 = v29;
        v15 = v31;
      }

      while ((v35 + 1) != v33);
      v33 = [v31 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v33);
  }

  return [*(a1 + 160) finish];
}

id sub_100007714(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (!v2)
  {
    goto LABEL_28;
  }

  [v2 resetWithOrgApacheLuceneStoreDataOutput:*(a1 + 24)];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = *(a1 + 80);
  if (!v3)
  {
    goto LABEL_28;
  }

  v18 = [*(a1 + 80) countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v18)
  {
    v4 = *v27;
    v16 = *v27;
    v17 = v3;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v26 + 1) + 8 * v5);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        if (!v6)
        {
          goto LABEL_28;
        }

        v7 = *(v6 + 24);
        if (!v7)
        {
          goto LABEL_28;
        }

        v19 = v5;
        obj = *(v6 + 24);
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (!v8)
        {
          goto LABEL_25;
        }

        v9 = v8;
        v21 = *v23;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v23 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v22 + 1) + 8 * i);
            if (!v11)
            {
              goto LABEL_28;
            }

            if (*(v11 + 28) >= 1)
            {
              v12 = 0;
              while (1)
              {
                v13 = *(v11 + 32);
                if (!v13)
                {
                  break;
                }

                v14 = *(v13 + 8);
                if (v12 >= v14)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v14, v12);
                }

                [*(a1 + 160) addWithLong:*(v13 + 12 + 4 * v12++) - 1];
                if (v12 >= *(v11 + 28))
                {
                  goto LABEL_23;
                }
              }

LABEL_28:
              JreThrowNullPointerException();
            }

LABEL_23:
            ;
          }

          v9 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v9);
LABEL_25:
        v5 = v19 + 1;
        v4 = v16;
        v3 = v17;
      }

      while ((v19 + 1) != v18);
      v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v18);
  }

  return [*(a1 + 160) finish];
}

id sub_100007964(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (!v2)
  {
    goto LABEL_36;
  }

  [v2 resetWithOrgApacheLuceneStoreDataOutput:*(a1 + 24)];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = *(a1 + 80);
  if (!v3)
  {
    goto LABEL_36;
  }

  v4 = [*(a1 + 80) countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v36;
    v23 = *v36;
    v24 = v3;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        if (!v8)
        {
          goto LABEL_36;
        }

        v9 = *(v8 + 24);
        if (!v9)
        {
          goto LABEL_36;
        }

        obj = *(v8 + 24);
        v28 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (!v28)
        {
          continue;
        }

        v29 = *v32;
        v25 = i;
        v26 = v5;
        do
        {
          v10 = 0;
          do
          {
            if (*v32 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v31 + 1) + 8 * v10);
            if (!v11)
            {
              goto LABEL_36;
            }

            v30 = v10;
            if (*(v11 + 16) == 1 && *(v11 + 28) >= 1)
            {
              v12 = 0;
              v13 = 0;
              while (1)
              {
                v14 = *(v11 + 32);
                if (!v14)
                {
                  break;
                }

                v15 = 0;
                v16 = 0;
                while (1)
                {
                  v17 = *(v14 + 8);
                  if (v12 >= v17)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v17, v12);
                  }

                  if (v15 >= *(v14 + 12 + 4 * v12))
                  {
                    break;
                  }

                  v18 = *(a1 + 112);
                  if (v18)
                  {
                    v19 = *(v18 + 8);
                    v20 = v13 + v15 + *(v11 + 56);
                    if (v20 < 0 || v20 >= v19)
                    {
                      IOSArray_throwOutOfBoundsWithMsg(v19, v20);
                    }

                    v21 = *(v18 + 12 + 4 * v20);
                    [*(a1 + 160) addWithLong:v21 - v16];
                    ++v15;
                    v14 = *(v11 + 32);
                    v16 = v21;
                    if (v14)
                    {
                      continue;
                    }
                  }

                  goto LABEL_36;
                }

                ++v12;
                v13 += v15;
                if (v12 >= *(v11 + 28))
                {
                  goto LABEL_31;
                }
              }

LABEL_36:
              JreThrowNullPointerException();
            }

LABEL_31:
            v10 = v30 + 1;
          }

          while ((v30 + 1) != v28);
          v6 = v23;
          v3 = v24;
          i = v25;
          v5 = v26;
          v28 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v28);
      }

      v5 = [v3 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v5);
  }

  return [*(a1 + 160) finish];
}

id sub_100007C4C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_160;
  }

  v2 = a2;
  v109 = [IOSLongArray arrayWithLength:*(a2 + 8)];
  v3 = [IOSLongArray arrayWithLength:*(v2 + 8)];
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v4 = *(a1 + 80);
  if (!v4)
  {
    goto LABEL_160;
  }

  v107 = v3;
  result = [v4 countByEnumeratingWithState:&v150 objects:v159 count:16];
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = 0;
  v8 = *v151;
  v106 = v2;
  v101 = *v151;
  v102 = v4;
  do
  {
    v9 = 0;
    do
    {
      if (*v151 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v150 + 1) + 8 * v9);
      v146 = 0u;
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      if (!v10)
      {
        goto LABEL_160;
      }

      v11 = *(v10 + 24);
      if (!v11)
      {
        goto LABEL_160;
      }

      obj = *(v10 + 24);
      v121 = [v11 countByEnumeratingWithState:&v146 objects:v158 count:16];
      if (v121)
      {
        v124 = *v147;
        v103 = v9;
        v104 = v6;
        do
        {
          for (i = 0; i != v121; i = i + 1)
          {
            if (*v147 != v124)
            {
              v13 = i;
              objc_enumerationMutation(obj);
              i = v13;
            }

            v14 = *(*(&v146 + 1) + 8 * i);
            if (!v14)
            {
              goto LABEL_160;
            }

            v127 = v7;
            v15 = *(v14 + 17);
            if (v15 == 1 && *(v14 + 16) == 1)
            {
              v114 = i;
              v16 = JavaUtilArrays_binarySearchWithIntArray_withInt_(v106, *(v14 + 20));
              LOBYTE(v15) = 1;
              i = v114;
              if (*(v14 + 28) >= 1)
              {
                v17 = v16;
                v18 = 0;
                v19 = 0;
                v20 = &v109->super.super.isa + v16;
                v21 = &v107->super.super.isa + v16;
                do
                {
                  v22 = *(v14 + 32);
                  if (!v22)
                  {
                    goto LABEL_160;
                  }

                  v23 = 0;
                  v24 = 0;
                  v25 = 0;
                  while (1)
                  {
                    v26 = *(v22 + 8);
                    if (v18 >= v26)
                    {
                      IOSArray_throwOutOfBoundsWithMsg(v26, v18);
                    }

                    if (v25 >= *(v22 + 12 + 4 * v18))
                    {
                      break;
                    }

                    v27 = *(a1 + 112);
                    if (v27)
                    {
                      v28 = *(v27 + 8);
                      v29 = v19 + *(v14 + 56);
                      if (v29 < 0 || v29 >= v28)
                      {
                        IOSArray_throwOutOfBoundsWithMsg(v28, v29);
                      }

                      v30 = *(a1 + 120);
                      if (v30)
                      {
                        v31 = *(v27 + 12 + 4 * v29);
                        v32 = *(v30 + 8);
                        v33 = v19 + *(v14 + 60);
                        if (v33 < 0 || v33 >= v32)
                        {
                          IOSArray_throwOutOfBoundsWithMsg(v32, v33);
                        }

                        v34 = *(v30 + 12 + 4 * v33);
                        size = v109->super.size_;
                        if ((v17 & 0x80000000) != 0 || v17 >= size)
                        {
                          IOSArray_throwOutOfBoundsWithMsg(size, v17);
                        }

                        v20[2] = (v20[2] + v31 - v23);
                        v36 = v107->super.size_;
                        if ((v17 & 0x80000000) != 0 || v17 >= v36)
                        {
                          IOSArray_throwOutOfBoundsWithMsg(v36, v17);
                        }

                        v21[2] = (v21[2] + v34 - v24);
                        ++v19;
                        ++v25;
                        v22 = *(v14 + 32);
                        v23 = v31;
                        v24 = v34;
                        if (v22)
                        {
                          continue;
                        }
                      }
                    }

                    goto LABEL_160;
                  }

                  ++v18;
                }

                while (v18 < *(v14 + 28));
              }
            }

            v7 = (v15 | v127) & 1;
          }

          v2 = v106;
          v8 = v101;
          v4 = v102;
          v9 = v103;
          v6 = v104;
          v121 = [obj countByEnumeratingWithState:&v146 objects:v158 count:16];
        }

        while (v121);
      }

      v9 = v9 + 1;
    }

    while (v9 != v6);
    result = [v4 countByEnumeratingWithState:&v150 objects:v159 count:16];
    v6 = result;
  }

  while (result);
  if ((v7 & 1) == 0)
  {
    return result;
  }

  v37 = [IOSFloatArray arrayWithLength:*(v2 + 8)];
  v38 = a1;
  if (*(v2 + 8) >= 1)
  {
    v39 = 0;
    do
    {
      v40 = v109->super.size_;
      if (v39 >= v40)
      {
        IOSArray_throwOutOfBoundsWithMsg(v40, v39);
      }

      v41 = 0.0;
      if (v109->buffer_[v39] >= 1)
      {
        v42 = v107->super.size_;
        if (v39 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, v39);
        }

        v43 = v107->buffer_[v39];
        if (v43 >= 1)
        {
          v44 = v107->super.size_;
          if (v39 >= v44)
          {
            IOSArray_throwOutOfBoundsWithMsg(v44, v39);
          }

          v45 = v109->super.size_;
          if (v39 >= v45)
          {
            IOSArray_throwOutOfBoundsWithMsg(v45, v39);
          }

          v41 = v43 / v109->buffer_[v39];
        }
      }

      v46 = v37->super.size_;
      if (v39 >= v46)
      {
        IOSArray_throwOutOfBoundsWithMsg(v46, v39);
      }

      *(&v37->super.size_ + ++v39) = v41;
      v47 = *(v2 + 8);
    }

    while (v39 < v47);
    if (v47 >= 1)
    {
      v48 = 0;
      v49 = v37;
      do
      {
        v50 = *(v38 + 24);
        if (!v50)
        {
          goto LABEL_160;
        }

        v51 = v37->super.size_;
        if (v48 >= v51)
        {
          IOSArray_throwOutOfBoundsWithMsg(v51, v48);
        }

        [v50 writeIntWithInt:JavaLangFloat_floatToRawIntBitsWithFloat_(*(&v49->super.size_ + 1))];
        ++v48;
        v49 = (v49 + 4);
        v38 = a1;
      }

      while (v48 < *(v2 + 8));
    }
  }

  v52 = *(v38 + 160);
  if (!v52)
  {
LABEL_160:
    JreThrowNullPointerException();
  }

  v53 = v38;
  [v52 resetWithOrgApacheLuceneStoreDataOutput:*(v38 + 24)];
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v110 = *(v53 + 80);
  v108 = [v110 countByEnumeratingWithState:&v142 objects:v157 count:16];
  if (v108)
  {
    v112 = *v143;
    obja = v37;
    do
    {
      v54 = 0;
      do
      {
        if (*v143 != v112)
        {
          objc_enumerationMutation(v110);
        }

        v55 = *(*(&v142 + 1) + 8 * v54);
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v141 = 0u;
        if (!v55)
        {
          goto LABEL_160;
        }

        v56 = *(v55 + 24);
        if (!v56)
        {
          goto LABEL_160;
        }

        v105 = v54;
        v115 = *(v55 + 24);
        v122 = [v56 countByEnumeratingWithState:&v138 objects:v156 count:16];
        if (v122)
        {
          v125 = *v139;
          do
          {
            v57 = 0;
            do
            {
              if (*v139 != v125)
              {
                objc_enumerationMutation(v115);
              }

              v128 = v57;
              v58 = *(*(&v138 + 1) + 8 * v57);
              if (!v58)
              {
                goto LABEL_160;
              }

              if ((*(v58 + 24) & 2) != 0)
              {
                v59 = JavaUtilArrays_binarySearchWithIntArray_withInt_(v106, *(v58 + 20));
                v60 = *(obja + 2);
                if (v59 < 0 || v59 >= v60)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v60, v59);
                }

                v61 = &selRef_lastIndexOfWithId_withNSObjectArray_withInt_withInt_;
                if (*(v58 + 28) >= 1)
                {
                  v62 = 0;
                  v63 = 0;
                  v64 = obja[v59 + 3];
                  do
                  {
                    v65 = *(v58 + 32);
                    if (!v65)
                    {
                      goto LABEL_160;
                    }

                    v66 = 0;
                    v67 = 0;
                    v68 = 0;
                    while (1)
                    {
                      v69 = *(v65 + 8);
                      if (v62 >= v69)
                      {
                        IOSArray_throwOutOfBoundsWithMsg(v69, v62);
                      }

                      if (v66 >= *(v65 + 12 + 4 * v62))
                      {
                        break;
                      }

                      if (*(v58 + 16) == 1)
                      {
                        v70 = *(a1 + *(v61 + 405));
                        if (!v70)
                        {
                          goto LABEL_160;
                        }

                        v71 = *(v70 + 8);
                        v72 = v63 + v66 + *(v58 + 56);
                        if (v72 < 0 || v72 >= v71)
                        {
                          IOSArray_throwOutOfBoundsWithMsg(v71, v72);
                        }

                        v73 = *(v70 + 12 + 4 * v72);
                      }

                      else
                      {
                        v73 = 0;
                      }

                      v74 = *(a1 + 120);
                      if (v74)
                      {
                        v75 = *(v74 + 8);
                        v76 = v63 + v66 + *(v58 + 60);
                        if (v76 < 0 || v76 >= v75)
                        {
                          IOSArray_throwOutOfBoundsWithMsg(v75, v76);
                        }

                        v77 = *(v74 + 12 + 4 * v76);
                        v78 = v64 * (v73 - v68);
                        v79 = v78;
                        if (v78 < 0.0)
                        {
                          v80 = 0x80000000;
                        }

                        else
                        {
                          v80 = 0x7FFFFFFF;
                        }

                        if (v79 == 0x80000000)
                        {
                          v79 = v80;
                        }

                        [*(a1 + 160) addWithLong:v77 - v67 - v79];
                        ++v66;
                        v65 = *(v58 + 32);
                        v67 = v77;
                        v68 = v73;
                        v61 = &selRef_lastIndexOfWithId_withNSObjectArray_withInt_withInt_;
                        if (v65)
                        {
                          continue;
                        }
                      }

                      goto LABEL_160;
                    }

                    ++v62;
                    v63 += v66;
                  }

                  while (v62 < *(v58 + 28));
                }
              }

              v57 = v128 + 1;
            }

            while ((v128 + 1) != v122);
            v81 = [v115 countByEnumeratingWithState:&v138 objects:v156 count:16];
            v122 = v81;
          }

          while (v81);
        }

        v54 = v105 + 1;
      }

      while ((v105 + 1) != v108);
      v108 = [v110 countByEnumeratingWithState:&v142 objects:v157 count:16];
    }

    while (v108);
  }

  [*(a1 + 160) finish];
  [*(a1 + 160) resetWithOrgApacheLuceneStoreDataOutput:*(a1 + 24)];
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v113 = *(a1 + 80);
  v111 = [v113 countByEnumeratingWithState:&v134 objects:v155 count:16];
  if (!v111)
  {
    return [*(a1 + 160) finish];
  }

  v116 = *v135;
  do
  {
    for (objb = 0; objb != v111; objb = objb + 1)
    {
      if (*v135 != v116)
      {
        objc_enumerationMutation(v113);
      }

      v82 = *(*(&v134 + 1) + 8 * objb);
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      if (!v82)
      {
        goto LABEL_160;
      }

      v83 = *(v82 + 24);
      if (!v83)
      {
        goto LABEL_160;
      }

      v123 = *(v82 + 24);
      v126 = [v83 countByEnumeratingWithState:&v130 objects:v154 count:16];
      if (!v126)
      {
        continue;
      }

      v129 = *v131;
      do
      {
        v84 = 0;
        v85 = a1;
        do
        {
          if (*v131 != v129)
          {
            objc_enumerationMutation(v123);
            v85 = a1;
          }

          v86 = *(*(&v130 + 1) + 8 * v84);
          if (!v86)
          {
            goto LABEL_160;
          }

          if ((*(v86 + 24) & 2) != 0 && *(v86 + 28) >= 1)
          {
            v87 = 0;
            v88 = 0;
            while (1)
            {
              v89 = *(v86 + 32);
              if (!v89)
              {
                goto LABEL_160;
              }

              v90 = 0;
              while (1)
              {
                v91 = *(v89 + 8);
                if (v87 >= v91)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v91, v87);
                }

                if (v90 >= *(v89 + 12 + 4 * v87))
                {
                  break;
                }

                v92 = *(v85 + 128);
                if (v92)
                {
                  v93 = *(v92 + 8);
                  v94 = v88 + v90 + *(v86 + 60);
                  if (v94 < 0 || v94 >= v93)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v93, v94);
                  }

                  v95 = *(v86 + 40);
                  if (v95)
                  {
                    v96 = *(v92 + 12 + 4 * v94);
                    v97 = *(v95 + 8);
                    if (v87 >= v97)
                    {
                      IOSArray_throwOutOfBoundsWithMsg(v97, v87);
                    }

                    v98 = *(v86 + 48);
                    if (v98)
                    {
                      v99 = *(v95 + 12 + 4 * v87);
                      v100 = *(v98 + 8);
                      if (v87 >= v100)
                      {
                        IOSArray_throwOutOfBoundsWithMsg(v100, v87);
                      }

                      [*(v85 + 160) addWithLong:v96 - (v99 + *(v98 + 12 + 4 * v87))];
                      ++v90;
                      v89 = *(v86 + 32);
                      v85 = a1;
                      if (v89)
                      {
                        continue;
                      }
                    }
                  }
                }

                goto LABEL_160;
              }

              ++v87;
              v88 += v90;
              if (v87 >= *(v86 + 28))
              {
                break;
              }
            }
          }

          v84 = v84 + 1;
        }

        while (v84 != v126);
        v126 = [v123 countByEnumeratingWithState:&v130 objects:v154 count:16];
      }

      while (v126);
    }

    v111 = [v113 countByEnumeratingWithState:&v134 objects:v155 count:16];
  }

  while (v111);
  return [*(a1 + 160) finish];
}

id sub_100008AC0(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (!v2)
  {
    goto LABEL_30;
  }

  [v2 resetWithOrgApacheLuceneStoreDataOutput:*(a1 + 24)];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = *(a1 + 80);
  if (!v3)
  {
    goto LABEL_30;
  }

  v18 = [*(a1 + 80) countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v18)
  {
    v4 = *v28;
    v16 = *v28;
    v17 = v3;
    do
    {
      v5 = 0;
      do
      {
        if (*v28 != v4)
        {
          v6 = v5;
          objc_enumerationMutation(v3);
          v5 = v6;
        }

        v7 = *(*(&v27 + 1) + 8 * v5);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        if (!v7)
        {
          goto LABEL_30;
        }

        v8 = *(v7 + 24);
        if (!v8)
        {
          goto LABEL_30;
        }

        v19 = v5;
        obj = *(v7 + 24);
        v22 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (!v22)
        {
          goto LABEL_27;
        }

        v21 = *v24;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v24 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v23 + 1) + 8 * i);
            if (!v10)
            {
              goto LABEL_30;
            }

            if (*(v10 + 18) == 1 && *(v10 + 68) >= 1)
            {
              v11 = 0;
              while (1)
              {
                v12 = *(a1 + 136);
                if (!v12)
                {
                  break;
                }

                v13 = *(v12 + 8);
                v14 = v11 + *(v10 + 64);
                if (v14 < 0 || v14 >= v13)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v13, v14);
                }

                [*(a1 + 160) addWithLong:*(v12 + 12 + 4 * v14)];
                if (++v11 >= *(v10 + 68))
                {
                  goto LABEL_25;
                }
              }

LABEL_30:
              JreThrowNullPointerException();
            }

LABEL_25:
            ;
          }

          v22 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v22);
LABEL_27:
        v5 = v19 + 1;
        v4 = v16;
        v3 = v17;
      }

      while ((v19 + 1) != v18);
      v18 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v18);
  }

  return [*(a1 + 160) finish];
}

OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter *new_OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_(void *a1, void **a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, int a8)
{
  v16 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter alloc];
  OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_(v16, a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_class_()
{
  if ((atomic_load_explicit(&OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10000A420();
  }

  if (qword_100553DA8 != -1)
  {
    sub_10000A42C();
  }

  return qword_100553DA0;
}

void *sub_100009C1C(uint64_t a1, void *a2, int a3, int a4, int a5, int a6)
{
  JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a3;
  v11 = new_JavaUtilArrayDeque_initWithInt_(a3);
  result = JreStrongAssignAndConsume((a1 + 24), v11);
  *(a1 + 32) = a4;
  *(a1 + 36) = a5;
  *(a1 + 40) = a6;
  return result;
}

void *sub_100009EAC(uint64_t a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a5;
  *(a1 + 17) = a6;
  *(a1 + 18) = a7;
  if (a6)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | a5;
  if (a7)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  *(a1 + 20) = a3;
  *(a1 + 24) = v18 | v19;
  *(a1 + 28) = a4;
  JreStrongAssignAndConsume((a1 + 32), [IOSIntArray newArrayWithLength:a4]);
  JreStrongAssignAndConsume((a1 + 40), [IOSIntArray newArrayWithLength:a4]);
  result = JreStrongAssignAndConsume((a1 + 48), [IOSIntArray newArrayWithLength:a4]);
  *(a1 + 56) = a8;
  *(a1 + 60) = a9;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = a10;
  return result;
}

uint64_t OrgApacheLuceneUtilAttribute_class_()
{
  if (qword_100553DB8 != -1)
  {
    sub_10000A4A0();
  }

  return qword_100553DB0;
}

id OrgApacheLuceneUtilPriorityQueue_initWithInt_withBoolean_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  *(a1 + 8) = 0;
  if (a2)
  {
    v11 = a2 + 1;
    if ((atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10000B068();
    }

    if (v11 > OrgApacheLuceneUtilArrayUtil_MAX_ARRAY_LENGTH_)
    {
      if ((atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10000B068();
      }

      v12 = JreStrcat("$I$I", a2, a3, a4, a5, a6, a7, a8, @"maxSize must be <= ");
      v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
      objc_exception_throw(v13);
    }
  }

  else
  {
    v11 = 2;
  }

  v14 = [IOSObjectArray arrayWithLength:v11 type:NSObject_class_()];
  objc_opt_class();
  if (v14 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  result = JreStrongAssign((a1 + 16), v14);
  *(a1 + 12) = v9;
  if (v8)
  {
    result = [a1 getSentinelObject];
    if (result)
    {
      result = IOSObjectArray_Set(*(a1 + 16), 1, result);
      v16 = *(a1 + 16);
      if (*(v16 + 8) >= 3)
      {
        v17 = 2;
        do
        {
          result = IOSObjectArray_Set(v16, v17++, [a1 getSentinelObject]);
          v16 = *(a1 + 16);
        }

        while (v17 < *(v16 + 8));
      }

      *(a1 + 8) = v9;
    }
  }

  return result;
}

uint64_t sub_10000A6EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8) + 1;
  *(a1 + 8) = v3;
  v4 = *(a1 + 16);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  IOSObjectArray_Set(v4, v3, a2);
  sub_10000AEC4(a1, *(a1 + 8));
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (v6 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 1);
  }

  return *(v5 + 32);
}

void *sub_10000AA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = a2;
  v5 = a2;
  v6 = *(v2 + 8);
  if ((a2 & 0x80000000) != 0 || v6 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, a2);
  }

  v7 = *(v2 + 24 + 8 * a2);
  v8 = 2 * a2;
  v9 = *(a1 + 8);
  v26 = v7;
  if (2 * a2 < v9)
  {
    v10 = v8 | 1;
    v11 = *(a1 + 16);
    v12 = *(v11 + 8);
    if (v8 < 0 || v10 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v8 | 1);
    }

    v13 = *(v11 + 24 + 8 * v10);
    if (v8 < 0 || v8 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, (2 * a2));
    }

    if ([a1 lessThanWithId:v13 withId:*(*(a1 + 16) + 24 + 8 * v8)])
    {
      v8 |= 1u;
    }

    v9 = *(a1 + 8);
    v7 = v26;
  }

  if (v8 <= v9)
  {
    while (1)
    {
      v14 = v8;
      v15 = *(a1 + 16);
      v5 = v8;
      v16 = *(v15 + 8);
      if (v8 < 0 || v8 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v8);
      }

      if (([a1 lessThanWithId:*(v15 + 24 + 8 * v8) withId:v7] & 1) == 0)
      {
        break;
      }

      v17 = *(a1 + 16);
      v18 = *(v17 + 8);
      if ((v5 & 0x80000000) != 0 || v5 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v5);
      }

      IOSObjectArray_Set(*(a1 + 16), v3, *(v17 + 24 + 8 * v5));
      v8 = 2 * v5;
      v19 = *(a1 + 8);
      if (2 * v5 < v19)
      {
        v20 = v8 | 1;
        v21 = *(a1 + 16);
        v22 = *(v21 + 8);
        if (v8 < 0 || v20 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, v8 | 1);
        }

        v23 = *(v21 + 24 + 8 * v20);
        if (v8 < 0 || v8 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (2 * v5));
        }

        if ([a1 lessThanWithId:v23 withId:*(*(a1 + 16) + 24 + 8 * v8)])
        {
          v8 |= 1u;
        }

        v19 = *(a1 + 8);
        v7 = v26;
      }

      v3 = v14;
      if (v8 > v19)
      {
        goto LABEL_33;
      }
    }

    v5 = v3;
  }

LABEL_33:
  v24 = *(a1 + 16);

  return IOSObjectArray_Set(v24, v5, v7);
}

BOOL sub_10000AEC4(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = a2;
  v5 = a2;
  v6 = *(v2 + 8);
  if ((a2 & 0x80000000) != 0 || v6 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, a2);
  }

  v7 = *(v2 + 24 + 8 * a2);
  v8 = a2;
  if (a2 >= 2)
  {
    v9 = a2;
    while (1)
    {
      v8 = v9 >> 1;
      v10 = a1[2];
      v11 = *(v10 + 8);
      if ((v9 >> 1) >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v9 >> 1);
      }

      if (![a1 lessThanWithId:v7 withId:*(v10 + 24 + 8 * v8)])
      {
        break;
      }

      v12 = a1[2];
      v13 = *(v12 + 8);
      if (v8 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v9 >> 1);
      }

      IOSObjectArray_Set(a1[2], v9, *(v12 + 24 + 8 * v8));
      v14 = v9 > 3;
      v9 >>= 1;
      if (!v14)
      {
        goto LABEL_14;
      }
    }

    v8 = v9;
LABEL_14:
    v5 = v8;
  }

  IOSObjectArray_Set(a1[2], v5, v7);
  return v8 != v3;
}

OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer *new_OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer_initWithOrgApacheLuceneSearchScorer_withFloat_(void **a1, float a2)
{
  v4 = [OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer alloc];
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(v4, a1);
  v4->boost_ = a2;
  return v4;
}

id OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withFloatArray_withOrgApacheLuceneSearchScorer_withInt_withOrgApacheLuceneSearchScorer_(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v18[0] = a4;
  v18[1] = a6;
  v12 = [IOSObjectArray arrayWithObjects:v18 count:2 type:OrgApacheLuceneSearchScorer_class_()];
  v13 = JavaUtilArrays_asListWithNSObjectArray_(v12);
  v17[0] = a4;
  v17[1] = a6;
  v14 = [IOSObjectArray arrayWithObjects:v17 count:2 type:OrgApacheLuceneSearchScorer_class_()];
  v15 = JavaUtilArrays_asListWithNSObjectArray_(v14);
  OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_(a1, a2, v13, v15);
  JreStrongAssign((a1 + 36), a3);
  JreStrongAssign((a1 + 52), a4);
  *(a1 + 44) = a5;
  return JreStrongAssign((a1 + 60), a6);
}

OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer *new_OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withFloatArray_withOrgApacheLuceneSearchScorer_withInt_withOrgApacheLuceneSearchScorer_(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v10 = [OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer alloc];
  OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withFloatArray_withOrgApacheLuceneSearchScorer_withInt_withOrgApacheLuceneSearchScorer_(v10, a1, a2, a3, a4, a5);
  return v10;
}

OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer *new_OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_withFloat_withFloat_(void **a1, void *a2, float a3, float a4)
{
  v8 = [OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer alloc];
  OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(v8, a1, a2);
  v8->coordReq_ = a3;
  v8->coordBoth_ = a4;
  return v8;
}

OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer *new_OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_withInt_withFloatArray_(void **a1, void *a2, int a3, void *a4)
{
  v8 = [OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer alloc];
  OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(v8, a1, a2);
  v8->requiredCount_ = a3;
  JreStrongAssign(&v8->coords_, a4);
  return v8;
}

id OrgApacheLuceneUtilIntArrayDocIdSet_initWithIntArray_withInt_(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  OrgApacheLuceneSearchDocIdSet_init();
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v6 = a2[2];
  if ((a3 & 0x80000000) != 0 || v6 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, a3);
  }

  if (a2[a3 + 3] != 0x7FFFFFFF)
  {
    v8 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v8);
  }

  result = JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a3;
  return result;
}

OrgApacheLuceneUtilIntArrayDocIdSet_IntArrayDocIdSetIterator *new_OrgApacheLuceneUtilIntArrayDocIdSet_IntArrayDocIdSetIterator_initWithIntArray_withInt_(void *a1, int a2)
{
  v4 = [OrgApacheLuceneUtilIntArrayDocIdSet_IntArrayDocIdSetIterator alloc];
  OrgApacheLuceneSearchDocIdSetIterator_init(v4, v5);
  v4->i_ = -1;
  v4->doc_ = -1;
  JreStrongAssign(&v4->docs_, a1);
  v4->length_ = a2;
  return v4;
}

OrgApacheLuceneUtilIntArrayDocIdSet *new_OrgApacheLuceneUtilIntArrayDocIdSet_initWithIntArray_withInt_(unsigned int *a1, uint64_t a2)
{
  v4 = [OrgApacheLuceneUtilIntArrayDocIdSet alloc];
  OrgApacheLuceneUtilIntArrayDocIdSet_initWithIntArray_withInt_(v4, a1, a2);
  return v4;
}

uint64_t OrgApacheLuceneUtilIntArrayDocIdSet_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilIntArrayDocIdSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10000BE6C();
  }

  if (qword_100553DD0 != -1)
  {
    sub_10000BE78();
  }

  return qword_100553DC8;
}

OrgLukhnosPortmobileFileNoSuchFileException *new_OrgLukhnosPortmobileFileNoSuchFileException_init()
{
  v0 = [OrgLukhnosPortmobileFileNoSuchFileException alloc];
  JavaIoIOException_init(v0, v1);
  return v0;
}

uint64_t OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl_class_()
{
  if (qword_100553DE0 != -1)
  {
    sub_10000C714();
  }

  return qword_100553DD8;
}

id ComAppleProactiveOrgApacheLuceneUtilOpenBitSetIterator_initWithComAppleProactiveOrgApacheLuceneUtilOpenBitSet_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v2 = a2;
  v4 = [a2 getBits];
  LODWORD(v2) = [v2 getNumWords];
  OrgApacheLuceneSearchDocIdSetIterator_init(a1, v5);
  *(a1 + 20) = -1;
  *(a1 + 40) = -1;
  result = JreStrongAssign((a1 + 8), v4);
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_10000C85C(_DWORD *a1)
{
  LODWORD(v2) = a1[6];
  if (!v2)
  {
    a1[8] += 32;
    v2 = HIDWORD(*(a1 + 3));
    *(a1 + 3) = v2;
  }

  if (!v2)
  {
    a1[8] += 16;
    v2 = *(a1 + 3) >> 16;
    *(a1 + 3) = v2;
  }

  if (!v2)
  {
    a1[8] += 8;
    v2 = *(a1 + 3) >> 8;
    *(a1 + 3) = v2;
  }

  result = OrgApacheLuceneUtilBitUtil_bitListWithByte_(v2);
  a1[9] = result;
  return result;
}

ComAppleProactiveOrgApacheLuceneUtilOpenBitSetIterator *new_ComAppleProactiveOrgApacheLuceneUtilOpenBitSetIterator_initWithLongArray_withInt_(void *a1, int a2)
{
  v4 = [ComAppleProactiveOrgApacheLuceneUtilOpenBitSetIterator alloc];
  OrgApacheLuceneSearchDocIdSetIterator_init(v4, v5);
  v4->i_ = -1;
  v4->curDocId_ = -1;
  JreStrongAssign(&v4->arr_, a1);
  v4->words_ = a2;
  return v4;
}

OrgApacheLuceneUtilStrictStringTokenizer *new_OrgApacheLuceneUtilStrictStringTokenizer_initWithNSString_withChar_(void *a1, unsigned __int16 a2)
{
  v4 = [OrgApacheLuceneUtilStrictStringTokenizer alloc];
  JreStrongAssign(&v4->s_, a1);
  v4->delimiter_ = a2;
  return v4;
}

id OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_writeVLongWithOrgApacheLuceneStoreDataOutput_withLong_(void *a1, unint64_t a2)
{
  if (a2 >= 0x80)
  {
    if (!a1)
    {
      goto LABEL_11;
    }

    v3 = 0;
    do
    {
      v4 = a2;
      [a1 writeByteWithByte:a2 | 0xFFFFFF80];
      a2 = v4 >> 7;
      if (v4 < 0x4000)
      {
        break;
      }
    }

    while (v3++ < 7);
  }

  if (!a1)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  return [a1 writeByteWithByte:a2];
}

void *OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(id *a1, uint64_t a2, signed int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OrgApacheLuceneUtilPackedPackedInts_checkBlockSizeWithInt_withInt_withInt_(a3, 64, 0x8000000, a4, a5, a6, a7, a8);
  [a1 resetWithOrgApacheLuceneStoreDataOutput:a2];
  v11 = [IOSLongArray newArrayWithLength:a3];

  return JreStrongAssignAndConsume(a1 + 2, v11);
}

uint64_t sub_10000D034(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v1 = new_JavaLangIllegalStateException_initWithNSString_(@"Already finished");
    objc_exception_throw(v1);
  }

  return result;
}

void *OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init(id *a1)
{
  v2 = [OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence alloc];
  sub_10000E72C(v2);
  JreStrongAssignAndConsume(a1 + 2, v2);
  v3 = [OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence alloc];
  sub_10000E72C(v3);
  JreStrongAssignAndConsume(a1 + 3, v3);
  v4 = [OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence alloc];
  sub_10000E72C(v4);
  JreStrongAssignAndConsume(a1 + 4, v4);
  v5 = [OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence alloc];
  sub_10000E72C(v5);

  return JreStrongAssignAndConsume(a1 + 5, v5);
}

uint64_t sub_10000D530(uint64_t a1, unsigned int a2)
{
  if (a2 > 127)
  {
    if (a2 > 0x7FF)
    {
      v16 = *(a1 + 8);
      if (HIWORD(a2))
      {
        if (v16)
        {
          v22 = *(v16 + 8);
          if (v22 <= 0)
          {
            v28 = *(a1 + 8);
            IOSArray_throwOutOfBoundsWithMsg(v22, 0);
          }

          v23 = *(v16 + 24);
          if (v23)
          {
            *(v23 + 8) = (a2 >> 18) | 0xF0;
            v24 = *(a1 + 8);
            v25 = *(v24 + 8);
            if (v25 <= 0)
            {
              IOSArray_throwOutOfBoundsWithMsg(v25, 0);
            }

            v26 = *(v24 + 24);
            if (v26)
            {
              *(v26 + 12) = 3;
              result = sub_10000E8B8(a1, a2, 3);
              v9 = 4;
              goto LABEL_28;
            }
          }
        }
      }

      else if (v16)
      {
        v17 = *(v16 + 8);
        if (v17 <= 0)
        {
          v27 = *(a1 + 8);
          IOSArray_throwOutOfBoundsWithMsg(v17, 0);
        }

        v18 = *(v16 + 24);
        if (v18)
        {
          *(v18 + 8) = (a2 >> 12) | 0xE0;
          v19 = *(a1 + 8);
          v20 = *(v19 + 8);
          if (v20 <= 0)
          {
            IOSArray_throwOutOfBoundsWithMsg(v20, 0);
          }

          v21 = *(v19 + 24);
          if (v21)
          {
            *(v21 + 12) = 4;
            result = sub_10000E8B8(a1, a2, 2);
            v9 = 3;
            goto LABEL_28;
          }
        }
      }
    }

    else
    {
      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = *(v10 + 8);
        if (v11 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, 0);
        }

        v12 = *(v10 + 24);
        if (v12)
        {
          *(v12 + 8) = (a2 >> 6) | 0xC0;
          v13 = *(a1 + 8);
          v14 = *(v13 + 8);
          if (v14 <= 0)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, 0);
          }

          v15 = *(v13 + 24);
          if (v15)
          {
            *(v15 + 12) = 5;
            result = sub_10000E8B8(a1, a2, 1);
            v9 = 2;
            goto LABEL_28;
          }
        }
      }
    }

LABEL_29:
    JreThrowNullPointerException();
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_29;
  }

  v4 = *(v3 + 8);
  if (v4 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  v5 = *(v3 + 24);
  if (!v5)
  {
    goto LABEL_29;
  }

  *(v5 + 8) = a2;
  v6 = *(a1 + 8);
  result = *(v6 + 8);
  if (result <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, 0);
  }

  v8 = *(v6 + 24);
  if (!v8)
  {
    goto LABEL_29;
  }

  *(v8 + 12) = 7;
  v9 = 1;
LABEL_28:
  *(a1 + 16) = v9;
  return result;
}

id sub_10000D7F8(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  if (!a4)
  {
    goto LABEL_9;
  }

  v6 = a6;
  v12 = [a4 byteAtWithInt:a6];
  if (!a5)
  {
    goto LABEL_9;
  }

  v13 = v12;
  while (1)
  {
    v14 = [a5 byteAtWithInt:v6];
    v15 = a4[4];
    if (v13 != v14)
    {
      break;
    }

    if (v6 == v15 - 1 && v6 == a5[4] - 1)
    {
      goto LABEL_12;
    }

    v16 = *(a1 + 8);
    if (!v16)
    {
      goto LABEL_9;
    }

    v17 = [v16 createState];
    [*(a1 + 8) addTransitionWithInt:a2 withInt:v17 withInt:{objc_msgSend(a4, "byteAtWithInt:", v6)}];
    v6 = (v6 + 1);
    v13 = [a4 byteAtWithInt:v6];
    a2 = v17;
  }

  if (v15 == a5[4])
  {
    if (v6 == v15 - 1)
    {
LABEL_12:
      v18 = *(a1 + 8);
      if (v18)
      {
        v19 = [a4 byteAtWithInt:v6];
        v20 = [a5 byteAtWithInt:v6];

        return [v18 addTransitionWithInt:a2 withInt:a3 withInt:v19 withInt:v20];
      }

LABEL_9:
      JreThrowNullPointerException();
    }

    sub_10000DB98(a1, a2, a3, a4, v6, 0);
    v34 = [a5 byteAtWithInt:v6];
    if ((v34 - [a4 byteAtWithInt:v6]) >= 2)
    {
      sub_10000E088(a1, a2, a3, [a4 byteAtWithInt:v6] + 1, objc_msgSend(a5, "byteAtWithInt:", v6) - 1, ~v6 + a4[4]);
    }

    v28 = a1;
    v29 = a2;
    v30 = a3;
    v31 = a5;
    v32 = v6;
    v33 = 0;
  }

  else
  {
    sub_10000DB98(a1, a2, a3, a4, v6, 1);
    v22 = a4[4];
    v23 = (v22 - v6);
    v24 = a5[4];
    if (v23 + 1 < v24 - v6)
    {
      v25 = ~v22 + v24;
      while (*(a1 + 32) && qword_100553DE8)
      {
        v26 = *(qword_100553DE8 + 8);
        if ((v23 & 0x80000000) != 0 || v23 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, v23);
        }

        sub_10000D530(*(a1 + 32), *(qword_100553DE8 + 12 + 4 * v23));
        if (!*(a1 + 40) || !qword_100553DF0)
        {
          break;
        }

        v27 = *(qword_100553DF0 + 8);
        if ((v23 & 0x80000000) != 0 || v23 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, v23);
        }

        sub_10000D530(*(a1 + 40), *(qword_100553DF0 + 12 + 4 * v23));
        sub_10000E088(a1, a2, a3, [*(a1 + 32) byteAtWithInt:0], objc_msgSend(*(a1 + 40), "byteAtWithInt:", 0), *(*(a1 + 32) + 16) - 1);
        v23 = (v23 + 1);
        if (!--v25)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_9;
    }

LABEL_30:
    v28 = a1;
    v29 = a2;
    v30 = a3;
    v31 = a5;
    v32 = v6;
    v33 = 1;
  }

  return sub_10000DE1C(v28, v29, v30, v31, v32, v33);
}

uint64_t sub_10000DB98(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t a5, int a6)
{
  if (!a4)
  {
    goto LABEL_20;
  }

  v11 = *(a1 + 8);
  if (a4[4] - 1 == a5)
  {
    if (v11)
    {
      v12 = [a4 byteAtWithInt:a5];
      v13 = [a4 byteAtWithInt:a5];
      v14 = OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS_;
      if (OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS_)
      {
        v15 = v13;
        v16 = [a4 numBitsWithInt:a5];
        v17 = *(v14 + 8);
        v18 = v16 - 1;
        if (v18 < 0 || v18 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v18);
        }

        v19 = *(v14 + 12 + 4 * v18) | v15;

        return [v11 addTransitionWithInt:a2 withInt:a3 withInt:v12 withInt:v19];
      }
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  if (!v11)
  {
    goto LABEL_20;
  }

  v22 = [*(a1 + 8) createState];
  [*(a1 + 8) addTransitionWithInt:a2 withInt:v22 withInt:{objc_msgSend(a4, "byteAtWithInt:", a5)}];
  sub_10000DB98(a1, v22, a3, a4, (a5 + 1), 1);
  v23 = [a4 byteAtWithInt:a5];
  v24 = OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS_;
  if (!OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS_)
  {
    goto LABEL_20;
  }

  v25 = v23;
  v26 = [a4 numBitsWithInt:a5];
  result = *(v24 + 8);
  v27 = v26 - 1;
  if (v27 < 0 || v27 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v27);
  }

  if (a6)
  {
    v28 = *(v24 + 12 + 4 * v27) | v25;
    result = [a4 byteAtWithInt:a5];
    if (result != v28)
    {
      v29 = [a4 byteAtWithInt:a5] + 1;
      v30 = a4[4] + ~a5;

      return sub_10000E088(a1, a2, a3, v29, v28, v30);
    }
  }

  return result;
}

void sub_10000DDFC()
{
  if (!v0)
  {
    JUMPOUT(0x10000DD70);
  }

  JUMPOUT(0x10000DD44);
}

id sub_10000DE1C(uint64_t a1, void *a2, unsigned int a3, _DWORD *a4, uint64_t a5, char a6)
{
  if (!a4)
  {
    goto LABEL_25;
  }

  v6 = a5;
  v8 = a2;
  if (a4[4] - 1 != a5)
  {
    v23 = ~a5;
    while ([a4 numBitsWithInt:v6] == 5)
    {
      v24 = 194;
      if (a6)
      {
        goto LABEL_19;
      }

LABEL_21:
      v31 = *(a1 + 8);
      if (!v31)
      {
        goto LABEL_25;
      }

      v11 = [v31 createState];
      [*(a1 + 8) addTransitionWithInt:v8 withInt:v11 withInt:{objc_msgSend(a4, "byteAtWithInt:", v6)}];
      v10 = (v6 + 1);
      v32 = v6 + 2;
      --v23;
      a6 = 1;
      v8 = v11;
      v6 = v10;
      if (v32 == a4[4])
      {
        goto LABEL_4;
      }
    }

    v25 = [a4 byteAtWithInt:v6];
    v26 = OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS_;
    if (!OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS_)
    {
      goto LABEL_25;
    }

    v27 = v25;
    v28 = [a4 numBitsWithInt:v6];
    v29 = *(v26 + 8);
    v30 = v28 - 1;
    if (v30 < 0 || v30 >= v29)
    {
      IOSArray_throwOutOfBoundsWithMsg(v29, v30);
    }

    v24 = v27 & ~*(v26 + 12 + 4 * v30);
    if ((a6 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_19:
    if ([a4 byteAtWithInt:v6] != v24)
    {
      sub_10000E088(a1, v8, a3, v24, [a4 byteAtWithInt:v6] - 1, v23 + a4[4]);
    }

    goto LABEL_21;
  }

  v10 = a5;
  v11 = a2;
LABEL_4:
  v12 = *(a1 + 8);
  if (!v12 || (v13 = [a4 byteAtWithInt:v10], (v14 = OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS_) == 0))
  {
LABEL_25:
    JreThrowNullPointerException();
  }

  v15 = v13;
  v16 = [a4 numBitsWithInt:v10];
  v17 = *(v14 + 8);
  v18 = v16 - 1;
  if ((v16 - 1) < 0 || v18 >= v17)
  {
    IOSArray_throwOutOfBoundsWithMsg(v17, v16 - 1);
  }

  v19 = *(v14 + 12 + 4 * v18);
  v20 = [a4 byteAtWithInt:v10];

  return [v12 addTransitionWithInt:v11 withInt:a3 withInt:v15 & ~v19 withInt:v20];
}

id sub_10000E088(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *(a1 + 8);
  if (a6)
  {
    if (v11)
    {
      v13 = [v11 createState];
      [*(a1 + 8) addTransitionWithInt:a2 withInt:v13 withInt:a4 withInt:a5];
      if (a6 < 2)
      {
        v15 = v13;
      }

      else
      {
        v14 = a6 + 1;
        do
        {
          v15 = [*(a1 + 8) createState];
          [*(a1 + 8) addTransitionWithInt:v13 withInt:v15 withInt:128 withInt:191];
          --v14;
          v13 = v15;
        }

        while (v14 > 2);
      }

      v11 = *(a1 + 8);
      v16 = v15;
      v17 = a3;
      v18 = 128;
      v19 = 191;
      goto LABEL_11;
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
LABEL_11:

  return [v11 addTransitionWithInt:v16 withInt:v17 withInt:v18 withInt:v19];
}

OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init()
{
  v0 = [OrgApacheLuceneUtilAutomatonUTF32ToUTF8 alloc];
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init(&v0->super.isa);
  return v0;
}

id sub_10000E72C(uint64_t a1)
{
  if (qword_100553E00 != -1)
  {
    sub_10000EB54();
  }

  JreStrongAssignAndConsume((a1 + 8), [IOSObjectArray newArrayWithLength:4 type:qword_100553DF8]);
  for (i = 0; i != 4; ++i)
  {
    result = IOSObjectArray_SetAndConsume(*(a1 + 8), i, [OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte alloc]);
  }

  return result;
}

uint64_t sub_10000E8B8(uint64_t result, int a2, int a3)
{
  if (a3 >= 1)
  {
    v4 = result;
    v5 = a3;
    v6 = &OBJC_IVAR___IOSIntArray_buffer_;
    do
    {
      if ((atomic_load_explicit(OrgApacheLuceneUtilAutomatonUTF32ToUTF8__initialized, memory_order_acquire) & 1) == 0)
      {
        v13 = v6;
        sub_10000EB68();
        v6 = v13;
      }

      if (!OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS_)
      {
        goto LABEL_20;
      }

      v7 = *(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS_ + 8);
      if (v7 <= 5)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, 5);
      }

      v8 = *(v4 + 8);
      if (!v8)
      {
        goto LABEL_20;
      }

      v9 = *(v8 + 8);
      if (v5 < 0 || v5 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v5);
      }

      v10 = *(v8 + 24 + 8 * v5);
      if (!v10)
      {
        goto LABEL_20;
      }

      *(v10 + 8) = *(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS_ + *v6 + 20) & a2 | 0x80;
      v11 = *(v4 + 8);
      result = *(v11 + 8);
      if (v5 < 0 || v5 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v5);
      }

      v12 = *(v11 + 24 + 8 * v5);
      if (!v12)
      {
LABEL_20:
        JreThrowNullPointerException();
      }

      *(v12 + 12) = 6;
      a2 >>= 6;
      --v5;
    }

    while (v5);
  }

  return result;
}

id OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5)
{
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(a1, a2);
  JreStrongAssign((a1 + 40), a4);
  *(a1 + 48) = a5;
  v9 = new_JavaUtilArrayList_init();
  v10 = new_JavaUtilArrayList_init();
  if (!a3)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v22 = a1;
  v12 = (a3 + 24);
  v13 = a3 + 24 + 8 * *(a3 + 8);
  if (a3 + 24 < v13)
  {
    while (1)
    {
      v14 = *v12;
      if (!*v12)
      {
        break;
      }

      ++v12;
      [(JavaUtilArrayList *)v9 addWithId:*(v14 + 8)];
      v15 = *(v14 + 8);
      v16 = *(v14 + 16);
      v17 = [OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition alloc];
      JreStrongAssign(&v17->postings_, v15);
      v17->offset_ = v16;
      [(JavaUtilArrayList *)v11 addWithId:v17];
      if (v12 >= v13)
      {
        goto LABEL_5;
      }
    }

LABEL_10:
    JreThrowNullPointerException();
  }

LABEL_5:
  v18 = OrgApacheLuceneSearchConjunctionDISI_intersectWithJavaUtilList_(v9);
  JreStrongAssign((v22 + 16), v18);
  v19 = [(JavaUtilArrayList *)v11 size];
  if (qword_100553E10 != -1)
  {
    sub_10000F4CC();
  }

  v20 = [(JavaUtilArrayList *)v11 toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:v19 type:qword_100553E08]];

  return JreStrongAssign((v22 + 24), v20);
}

uint64_t sub_10000EDFC(uint64_t a1, uint64_t a2)
{
  v2 = 0x7FFFFFFFLL;
  if (a2 != 0x7FFFFFFF)
  {
    v2 = a2;
    if (sub_10000F018(a1) <= 0)
    {
      while (1)
      {
        v4 = *(a1 + 16);
        if (!v4)
        {
          JreThrowNullPointerException();
        }

        v5 = [v4 nextDoc];
        if (v5 == 0x7FFFFFFF)
        {
          break;
        }

        v2 = v5;
        if (sub_10000F018(a1) >= 1)
        {
          return v2;
        }
      }

      return 0x7FFFFFFFLL;
    }
  }

  return v2;
}

uint64_t sub_10000F018(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    goto LABEL_21;
  }

  v2 = v1 + 24;
  v3 = *(v1 + 8);
  v4 = v1 + 24 + 8 * v3;
  if (v1 + 24 < v4)
  {
    do
    {
      v5 = *v2;
      v6 = *(*v2 + 8);
      if (!v6)
      {
        goto LABEL_21;
      }

      v2 += 8;
      *(v5 + 20) = [v6 freq];
      v7 = [*(v5 + 8) nextPosition];
      *(v5 + 24) = 1;
      *(v5 + 28) = v7;
    }

    while (v2 < v4);
    v3 = *(v1 + 8);
  }

  if (v3 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, 0);
  }

  v8 = *(v1 + 24);
  if (!v8)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  v9 = 0;
  do
  {
    while (*(v1 + 8) < 2)
    {
LABEL_15:
      v9 = (v9 + 1);
      if (!*(a1 + 48) || *(v8 + 24) == *(v8 + 20))
      {
        goto LABEL_20;
      }

      v16 = *(v8 + 8);
      if (!v16)
      {
        goto LABEL_21;
      }

      v17 = [v16 nextPosition];
      ++*(v8 + 24);
      *(v8 + 28) = v17;
    }

    v10 = *(v8 + 28) - *(v8 + 16);
    v11 = v1 + 8;
    v12 = 1;
    while (1)
    {
      v13 = *(v11 + 24);
      if (!v13)
      {
        goto LABEL_21;
      }

      v14 = *(v13 + 16) + v10;
      if (!sub_10000F460(v13, v14))
      {
        goto LABEL_20;
      }

      v15 = *(v13 + 28);
      if (v15 != v14)
      {
        break;
      }

      ++v12;
      v11 += 8;
      if (v12 >= *(v1 + 8))
      {
        goto LABEL_15;
      }
    }
  }

  while (sub_10000F460(v8, v15 - *(v13 + 16) + *(v8 + 16)));
LABEL_20:
  *(a1 + 32) = v9;
  return v9;
}

OrgApacheLuceneSearchExactPhraseScorer *new_OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(void *a1, uint64_t a2, void *a3, char a4)
{
  v8 = [OrgApacheLuceneSearchExactPhraseScorer alloc];
  OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(v8, a1, a2, a3, a4);
  return v8;
}

BOOL sub_10000F460(uint64_t a1, signed int a2)
{
  if (!a1)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  for (i = *(a1 + 28) < a2; ; i = v7 < a2)
  {
    v5 = !i;
    if (!i || *(a1 + 24) == *(a1 + 20))
    {
      break;
    }

    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_12;
    }

    v7 = [v6 nextPosition];
    ++*(a1 + 24);
    *(a1 + 28) = v7;
  }

  return v5;
}

OrgApacheLuceneSearchDisjunctionSumScorer *new_OrgApacheLuceneSearchDisjunctionSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withFloatArray_withBoolean_(void *a1, void *a2, void *a3, char a4)
{
  v8 = [OrgApacheLuceneSearchDisjunctionSumScorer alloc];
  OrgApacheLuceneSearchDisjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withBoolean_(v8, a1, a2, a4);
  JreStrongAssign(&v8->coord_, a3);
  return v8;
}

id OrgApacheLuceneUtilArrayIntroSorter_initWithNSObjectArray_withJavaUtilComparator_(id *a1, void *a2, void *a3)
{
  OrgApacheLuceneUtilIntroSorter_init();
  JreStrongAssign(a1 + 1, a2);
  JreStrongAssign(a1 + 2, a3);

  return JreStrongAssign(a1 + 3, 0);
}

OrgApacheLuceneUtilArrayIntroSorter *new_OrgApacheLuceneUtilArrayIntroSorter_initWithNSObjectArray_withJavaUtilComparator_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneUtilArrayIntroSorter alloc];
  OrgApacheLuceneUtilArrayIntroSorter_initWithNSObjectArray_withJavaUtilComparator_(&v4->super.super.super.isa, a1, a2);
  return v4;
}

OrgApacheLuceneSearchScoreCachingWrappingScorer *new_OrgApacheLuceneSearchScoreCachingWrappingScorer_initWithOrgApacheLuceneSearchScorer_(void **a1)
{
  v2 = [OrgApacheLuceneSearchScoreCachingWrappingScorer alloc];
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(v2, a1);
  v2->curDoc_ = -1;
  return v2;
}

void *OrgLukhnosPortmobileLangClassValue_init(uint64_t a1)
{
  *(a1 + 8) = 0;
  JreStrongAssign((a1 + 16), 0);
  v2 = new_JavaUtilHashMap_init();

  return JreStrongAssignAndConsume((a1 + 24), v2);
}

OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper *OrgApacheLuceneIndexDocsAndPositionsEnum_wrapWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneUtilBits_(uint64_t a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper alloc];
  OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper_initWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneUtilBits_(v4, a1, a2);

  return v4;
}

uint64_t OrgApacheLuceneIndexDocsAndPositionsEnum_unwrapWithOrgApacheLuceneIndexDocsEnum_(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    return *(a1 + 16);
  }

  else
  {
    if (a1)
    {
      v3 = new_JavaLangAssertionError_init();
      objc_exception_throw(v3);
    }

    return 0;
  }
}

uint64_t OrgApacheLuceneIndexDocsAndPositionsEnum_unwrapliveDocsWithOrgApacheLuceneIndexDocsEnum_(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    return *(a1 + 24);
  }

  else
  {
    if (a1)
    {
      v3 = new_JavaLangAssertionError_init();
      objc_exception_throw(v3);
    }

    return 0;
  }
}

id OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper_initWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneUtilBits_(uint64_t a1, uint64_t a2, void *a3)
{
  OrgApacheLuceneIndexDocsEnum_init(a1, a2);
  v6 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a2);
  JreStrongAssign((a1 + 16), v6);

  return JreStrongAssign((a1 + 24), a3);
}

uint64_t sub_100010108(uint64_t a1, uint64_t a2)
{
  v2 = 0x7FFFFFFFLL;
  if (a2 != 0x7FFFFFFF)
  {
    v2 = a2;
    while (1)
    {
      v4 = *(a1 + 24);
      if (!v4 || ([v4 getWithInt:v2] & 1) != 0)
      {
        break;
      }

      v5 = *(a1 + 16);
      if (!v5)
      {
        JreThrowNullPointerException();
      }

      v2 = [v5 nextDoc];
      if (v2 == 0x7FFFFFFF)
      {
        return 0x7FFFFFFFLL;
      }
    }
  }

  return v2;
}

id OrgApacheLuceneAnalysisAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_ReuseStrategy_(id *a1, void *a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilVersion__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100010B48();
  }

  JreStrongAssign(a1 + 3, OrgApacheLuceneUtilVersion_LATEST_);
  v4 = new_OrgApacheLuceneUtilCloseableThreadLocal_init();
  JreStrongAssignAndConsume(a1 + 1, v4);

  return JreStrongAssign(a1 + 2, a2);
}

OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *new_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_(void *a1)
{
  v2 = [OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents alloc];
  JreStrongAssign(&v2->source_, a1);
  JreStrongAssign(&v2->sink_, a1);
  return v2;
}

id sub_100010948(uint64_t a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    v3 = new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this Analyzer is closed");
    objc_exception_throw(v3);
  }

  return [v1 get];
}

id sub_10001099C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    v4 = new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this Analyzer is closed");
    objc_exception_throw(v4);
  }

  return [v2 setWithId:a2];
}

id OrgApacheLuceneSearchConstantScoreWeight_initWithOrgApacheLuceneSearchQuery_(_DWORD *a1, void *a2)
{
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(a1, a2);
  v3 = [a1 getQuery];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  result = [v3 getBoost];
  a1[5] = v5;
  a1[4] = 1065353216;
  return result;
}

OrgApacheLuceneSearchSort *new_OrgApacheLuceneSearchSort_init()
{
  v0 = [OrgApacheLuceneSearchSort alloc];
  if ((atomic_load_explicit(OrgApacheLuceneSearchSortField__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000114A0();
  }

  [(OrgApacheLuceneSearchSort *)v0 setSortWithOrgApacheLuceneSearchSortField:OrgApacheLuceneSearchSortField_FIELD_SCORE_];
  return v0;
}

void *OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  OrgApacheLuceneUtilPackedPackedInts_MutableImpl_initWithInt_withInt_(a1, a2, 48);
  if (v2 >= 715827883)
  {
    v6 = new_JavaLangArrayIndexOutOfBoundsException_initWithNSString_(@"MAX_SIZE exceeded");
    objc_exception_throw(v6);
  }

  v4 = [IOSShortArray newArrayWithLength:3 * v2];

  return JreStrongAssignAndConsume((a1 + 16), v4);
}

id OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_(a1, a4);
  v7 = (3 * a4);
  if (v7 >= 1)
  {
    if (a3)
    {
      v8 = 0;
      while (1)
      {
        v9 = [a3 readShort];
        v10 = *(a1 + 16);
        if (!v10)
        {
          break;
        }

        v11 = v9;
        v12 = *(v10 + 8);
        if (v8 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v8);
        }

        *(v10 + 12 + 2 * v8++) = v11;
        if (v7 == v8)
        {
          goto LABEL_9;
        }
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

LABEL_9:
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  if (!OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_)
  {
    goto LABEL_16;
  }

  result = [OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_ byteCountWithInt:a2 withInt:a4 withInt:48];
  v14 = result - 6 * a4;
  if (v14 >= 1)
  {
    if (!a3)
    {
      goto LABEL_16;
    }

    do
    {
      result = [a3 readByte];
      --v14;
    }

    while (v14);
  }

  return result;
}

OrgApacheLuceneUtilPackedPacked16ThreeBlocks *new_OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_(uint64_t a1)
{
  v2 = [OrgApacheLuceneUtilPackedPacked16ThreeBlocks alloc];
  OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_(v2, a1);
  return v2;
}

OrgApacheLuceneUtilPackedPacked16ThreeBlocks *new_OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(unsigned int a1, void *a2, uint64_t a3)
{
  v6 = [OrgApacheLuceneUtilPackedPacked16ThreeBlocks alloc];
  OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(v6, a1, a2, a3);
  return v6;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeCharRangeWithInt_withInt_(uint64_t a1, uint64_t a2)
{
  v4 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  v5 = v4;
  if (a1 <= a2)
  {
    v6 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v4 createState];
    v7 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v5 createState];
    [(OrgApacheLuceneUtilAutomatonAutomaton *)v5 setAcceptWithInt:v7 withBoolean:1];
    [(OrgApacheLuceneUtilAutomatonAutomaton *)v5 addTransitionWithInt:v6 withInt:v7 withInt:a1 withInt:a2];
  }

  [(OrgApacheLuceneUtilAutomatonAutomaton *)v5 finishState];
  return v5;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeBinaryIntervalWithOrgApacheLuceneUtilBytesRef_withBoolean_withOrgApacheLuceneUtilBytesRef_withBoolean_(OrgApacheLuceneUtilBytesRef *a1, int a2, uint64_t a3, int a4)
{
  v61 = a2;
  v5 = a1;
  if (!a1 && (a2 & 1) == 0)
  {
    v55 = @"minInclusive must be true when min is null (open ended)";
    goto LABEL_119;
  }

  if (!a3 && (a4 & 1) == 0)
  {
    v55 = @"maxInclusive must be true when max is null (open ended)";
LABEL_119:
    v56 = new_JavaLangIllegalArgumentException_initWithNSString_(v55);
    objc_exception_throw(v56);
  }

  if (a1)
  {
    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = new_OrgApacheLuceneUtilBytesRef_init();
    v61 = 1;
    if (a3)
    {
LABEL_7:
      if (!v5)
      {
        goto LABEL_116;
      }

      v6 = [(OrgApacheLuceneUtilBytesRef *)v5 compareToWithId:a3];
      if (v6)
      {
        if (v6 < 1)
        {
          if (OrgApacheLuceneUtilStringHelper_startsWithWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(a3, v5))
          {
            length = v5->length_;
            v8 = *(a3 + 20);
            if (length < v8)
            {
              do
              {
                v9 = *(a3 + 8);
                if (!v9)
                {
                  goto LABEL_116;
                }

                v10 = *(v9 + 8);
                v11 = length + *(a3 + 16);
                v12 = v11;
                if (v11 < 0 || v11 >= v10)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v10, v11);
                }

                v13 = *(v9 + 12 + v11);
                if (*(v9 + 12 + v12))
                {
                  goto LABEL_27;
                }

                ++length;
                v8 = *(a3 + 20);
              }

              while (length < v8);
              length = v5->length_;
            }

            v43 = a4 ^ 1;
            v44 = v8 - (a4 ^ 1);
            if (v44 == length)
            {
              if ((v61 & 1) == 0)
              {
                goto LABEL_100;
              }

              goto LABEL_65;
            }

            v16 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
            v45 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 createState];
            if (v5->length_ >= 1)
            {
              v46 = 0;
              do
              {
                v47 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 createState];
                bytes = v5->bytes_;
                if (!bytes)
                {
                  goto LABEL_116;
                }

                v49 = v47;
                size = bytes->super.size_;
                v51 = v46 + v5->offset_;
                if (v51 < 0 || v51 >= size)
                {
                  IOSArray_throwOutOfBoundsWithMsg(size, v51);
                }

                [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 addTransitionWithInt:v45 withInt:v49 withInt:*(&bytes->super.size_ + v51 + 4)];
                ++v46;
                v45 = v49;
              }

              while (v46 < v5->length_);
              v45 = v49;
              v43 = a4 ^ 1;
            }

            if (v61)
            {
              [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 setAcceptWithInt:v45 withBoolean:1];
            }

            v52 = v5->length_;
            if (v52 < v44)
            {
              v53 = v8 + (v43 << 31 >> 31) - v52;
              do
              {
                v54 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 createState];
                [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 addTransitionWithInt:v45 withInt:v54 withInt:0];
                [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 setAcceptWithInt:v54 withBoolean:1];
                v45 = v54;
                --v53;
              }

              while (v53);
            }

LABEL_97:
            v42 = v16;
LABEL_101:
            [(OrgApacheLuceneUtilAutomatonAutomaton *)v42 finishState];
            return v16;
          }

          goto LABEL_27;
        }
      }

      else if (v61 & a4)
      {
LABEL_65:

        return OrgApacheLuceneUtilAutomatonAutomata_makeBinaryWithOrgApacheLuceneUtilBytesRef_(v5);
      }

LABEL_100:
      v42 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
      v16 = v42;
      goto LABEL_101;
    }
  }

  if (!v5)
  {
    goto LABEL_116;
  }

  v14 = v61 ^ 1;
  if (v5->length_)
  {
    v14 = 1;
  }

  if (v14)
  {
LABEL_27:
    v16 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
    v17 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 createState];
    v18 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 createState];
    [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 setAcceptWithInt:v18 withBoolean:1];
    v60 = v18;
    [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 addTransitionWithInt:v18 withInt:v18 withInt:0 withInt:255];
    if (v5->length_ < 1)
    {
      v33 = 1;
      v20 = 0xFFFFFFFFLL;
      v22 = v17;
    }

    else
    {
      v57 = v17;
      v58 = 0;
      v19 = 0;
      v20 = 0xFFFFFFFFLL;
      v21 = 1;
      v22 = v17;
      do
      {
        v23 = v5->bytes_;
        if (!v23)
        {
          goto LABEL_116;
        }

        v24 = v22;
        v25 = v23->super.size_;
        v26 = v19 + v5->offset_;
        if (v26 < 0 || v26 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, v26);
        }

        v27 = *(&v23->super.size_ + v26 + 4);
        if (a3 == 0 || (v21 & 1) == 0 || v19 >= *(a3 + 20))
        {
          v31 = 0xFFFFFFFFLL;
        }

        else
        {
          v28 = *(a3 + 8);
          v29 = *(v28 + 8);
          v30 = v19 + *(a3 + 16);
          if (v30 < 0 || v30 >= v29)
          {
            IOSArray_throwOutOfBoundsWithMsg(v29, v30);
          }

          v31 = *(v28 + 12 + v30);
        }

        if (!v61 || (v19 == v5->length_ - 1 ? (v32 = (v21 & (v31 == v27)) == 0) : (v32 = 0), v22 = v60, !v32))
        {
          v22 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 createState];
        }

        if (v21)
        {
          if (v31 == v27)
          {
            [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 addTransitionWithInt:v24 withInt:v22 withInt:v27];
            v21 = 1;
          }

          else if (a3)
          {
            [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 addTransitionWithInt:v24 withInt:v22 withInt:v27];
            if (v31 > v27 + 1)
            {
              [OrgApacheLuceneUtilAutomatonAutomaton addTransitionWithInt:v16 withInt:"addTransitionWithInt:withInt:withInt:withInt:" withInt:v24 withInt:v60];
            }

            if ((a4 & 1) != 0 || v19 < *(a3 + 20) - 1)
            {
              v20 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 createState];
              if (v19 < *(a3 + 20) - 1)
              {
                [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 setAcceptWithInt:v20 withBoolean:1];
              }

              [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 addTransitionWithInt:v24 withInt:v20 withInt:v31];
            }

            v21 = 0;
            v58 = v19;
          }

          else
          {
            [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 addTransitionWithInt:v24 withInt:v60 withInt:(v27 + 1) withInt:255];
            [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 addTransitionWithInt:v24 withInt:v22 withInt:v27];
            v21 = 0;
            v58 = 0;
          }
        }

        else
        {
          [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 addTransitionWithInt:v24 withInt:v22 withInt:v27];
          if (v27 != 255)
          {
            [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 addTransitionWithInt:v24 withInt:v60 withInt:(v27 + 1) withInt:255];
          }

          v21 = 0;
        }

        ++v19;
      }

      while (v19 < v5->length_);
      v33 = v58 + 1;
      if ((v21 & 1) == 0 && v22 != v60 && v22 != v57)
      {
        [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 addTransitionWithInt:v22 withInt:v60 withInt:0 withInt:255];
      }
    }

    if (v61)
    {
      [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 setAcceptWithInt:v22 withBoolean:1];
    }

    if (!a3)
    {
      goto LABEL_97;
    }

    if (v20 == -1)
    {
      v33 = v5->length_;
      v20 = v22;
    }

    if (v33 >= *(a3 + 20))
    {
      v41 = v20;
LABEL_95:
      if (a4)
      {
        [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 setAcceptWithInt:v41 withBoolean:1];
      }

      goto LABEL_97;
    }

    while (1)
    {
      v34 = *(a3 + 8);
      if (!v34)
      {
        break;
      }

      v35 = *(v34 + 8);
      v36 = v33 + *(a3 + 16);
      v37 = v36;
      if (v36 < 0 || v36 >= v35)
      {
        IOSArray_throwOutOfBoundsWithMsg(v35, v36);
      }

      v38 = v34 + 12;
      v39 = *(v34 + 12 + v37);
      if (*(v38 + v37))
      {
        [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 addTransitionWithInt:v20 withInt:v60 withInt:0 withInt:(v39 - 1)];
      }

      if ((a4 & 1) != 0 || (v40 = *(a3 + 20), v33 < v40 - 1))
      {
        v41 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 createState];
        if (v33 < *(a3 + 20) - 1)
        {
          [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 setAcceptWithInt:v41 withBoolean:1];
        }

        [(OrgApacheLuceneUtilAutomatonAutomaton *)v16 addTransitionWithInt:v20 withInt:v41 withInt:v39];
        v40 = *(a3 + 20);
        v20 = v41;
      }

      else
      {
        v41 = v20;
      }

      if (++v33 >= v40)
      {
        goto LABEL_95;
      }
    }

LABEL_116:
    JreThrowNullPointerException();
  }

  return OrgApacheLuceneUtilAutomatonAutomata_makeAnyBinary();
}

void *OrgApacheLuceneUtilAutomatonAutomata_makeDecimalIntervalWithInt_withInt_withInt_(signed int a1, signed int a2, int a3)
{
  v6 = JavaLangInteger_toStringWithInt_(a1);
  v7 = JavaLangInteger_toStringWithInt_(a2);
  if (a1 > a2)
  {
LABEL_5:
    v10 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v10);
  }

  v8 = v7;
  if (a3 < 1)
  {
    if (!v7)
    {
      goto LABEL_28;
    }

    v9 = [(NSString *)v7 length];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_28;
    }

    v9 = a3;
    if ([(NSString *)v7 length]> a3)
    {
      goto LABEL_5;
    }
  }

  v11 = new_JavaLangStringBuilder_init();
  if (!v6)
  {
    goto LABEL_28;
  }

  v12 = v11;
  v13 = [(NSString *)v6 length];
  v14 = v9 - v13;
  if (v9 > v13)
  {
    do
    {
      [(JavaLangStringBuilder *)v12 appendWithChar:48];
      --v14;
    }

    while (v14);
  }

  [(JavaLangStringBuilder *)v12 appendWithNSString:v6];
  v15 = [(JavaLangStringBuilder *)v12 description];
  v16 = new_JavaLangStringBuilder_init();
  if (!v8)
  {
    goto LABEL_28;
  }

  v17 = v16;
  v18 = [(NSString *)v8 length];
  v19 = __OFSUB__(v9, v18);
  v20 = v9 - v18;
  if (!((v20 < 0) ^ v19 | (v20 == 0)))
  {
    do
    {
      [(JavaLangStringBuilder *)v17 appendWithChar:48];
      --v20;
    }

    while (v20);
  }

  [(JavaLangStringBuilder *)v17 appendWithNSString:v8];
  v21 = [(JavaLangStringBuilder *)v17 description];
  v22 = new_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init();
  v23 = v22;
  if (a3 < 1)
  {
    [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v22 createState];
  }

  v24 = new_JavaUtilArrayList_init();
  sub_1000132E8(v23, v15, v21, 0, v24, a3 < 1);
  v25 = [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v23 finish];
  v26 = v25;
  if (a3 > 0)
  {
    return v26;
  }

  if (!v25)
  {
LABEL_28:
    JreThrowNullPointerException();
  }

  [v25 addTransitionWithInt:0 withInt:0 withInt:48];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = [(JavaUtilArrayList *)v24 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      v30 = 0;
      do
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v33 + 1) + 8 * v30);
        if (!v31)
        {
          goto LABEL_28;
        }

        [v26 addEpsilonWithInt:0 withInt:{objc_msgSend(v31, "intValue")}];
        v30 = v30 + 1;
      }

      while (v28 != v30);
      v28 = [(JavaUtilArrayList *)v24 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v28);
  }

  [v26 finishState];
  return v26;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeStringWithNSString_(void *a1)
{
  v2 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  v3 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 createState];
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  if ([a1 length] < 1)
  {
    v6 = v4;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 createState];
      v7 = [a1 codePointAt:v5];
      [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 addTransitionWithInt:v4 withInt:v6 withInt:v7];
      v5 = JavaLangCharacter_charCountWithInt_(v7) + v5;
      v4 = v6;
    }

    while (v5 < [a1 length]);
  }

  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 setAcceptWithInt:v6 withBoolean:1];
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 finishState];
  return v2;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeBinaryWithOrgApacheLuceneUtilBytesRef_(uint64_t a1)
{
  v2 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  v3 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 createState];
  if (!a1)
  {
    goto LABEL_12;
  }

  v4 = v3;
  if (*(a1 + 20) >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 createState];
      v7 = *(a1 + 8);
      if (!v7)
      {
        break;
      }

      v8 = v6;
      v9 = *(v7 + 8);
      v10 = v5 + *(a1 + 16);
      if (v10 < 0 || v10 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v10);
      }

      [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 addTransitionWithInt:v4 withInt:v8 withInt:*(v7 + 12 + v10)];
      ++v5;
      v4 = v8;
      if (v5 >= *(a1 + 20))
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  v8 = v3;
LABEL_11:
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 setAcceptWithInt:v8 withBoolean:1];
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 finishState];
  return v2;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeStringWithIntArray_withInt_withInt_(uint64_t a1, int a2, int a3)
{
  v6 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v6 createState];
  v7 = a3 + a2;
  if (a3 + a2 <= a2)
  {
    v13 = 0;
  }

  else
  {
    v8 = 0;
    v9 = a2;
    v10 = v7;
    v11 = a1 + 4 * a2;
    do
    {
      v12 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v6 createState];
      if (!a1)
      {
        JreThrowNullPointerException();
      }

      v13 = v12;
      v14 = *(a1 + 8);
      if (v9 < 0 || v9 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v9);
      }

      [(OrgApacheLuceneUtilAutomatonAutomaton *)v6 addTransitionWithInt:v8 withInt:v13 withInt:*(v11 + 12)];
      ++v9;
      v11 += 4;
      v8 = v13;
    }

    while (v10 != v9);
  }

  [(OrgApacheLuceneUtilAutomatonAutomaton *)v6 setAcceptWithInt:v13 withBoolean:1];
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v6 finishState];
  return v6;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeStringUnionWithJavaUtilCollection_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ([a1 isEmpty])
  {
    v2 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
    [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 finishState];
    return v2;
  }

  else
  {

    return OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_buildWithJavaUtilCollection_(a1);
  }
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeEmpty()
{
  v0 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v0 finishState];
  return v0;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeEmptyString()
{
  v0 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v0 createState];
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v0 setAcceptWithInt:0 withBoolean:1];
  return v0;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeAnyString()
{
  v0 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  v1 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v0 createState];
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v0 setAcceptWithInt:v1 withBoolean:1];
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v0 addTransitionWithInt:v1 withInt:v1 withInt:0 withInt:1114111];
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v0 finishState];
  return v0;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonAutomata_makeAnyBinary()
{
  v0 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  v1 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v0 createState];
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v0 setAcceptWithInt:v1 withBoolean:1];
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v0 addTransitionWithInt:v1 withInt:v1 withInt:0 withInt:255];
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v0 finishState];
  return v0;
}

id sub_1000132E8(void *a1, void *a2, void *a3, uint64_t a4, void *a5, unsigned int a6)
{
  if (!a1)
  {
    goto LABEL_20;
  }

  v12 = [a1 createState];
  if (!a2)
  {
    goto LABEL_20;
  }

  v13 = v12;
  if ([a2 length] == a4)
  {
    [a1 setAcceptWithInt:v13 withBoolean:1];
    return v13;
  }

  if (a6)
  {
    if (!a5)
    {
      goto LABEL_20;
    }

    [a5 addWithId:JavaLangInteger_valueOfWithInt_(v13)];
  }

  v14 = [a2 charAtWithInt:a4];
  if (!a3)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  v15 = v14;
  v16 = [a3 charAtWithInt:a4];
  if (v15 == v16)
  {
    if (v15 == 48)
    {
      v17 = a6;
    }

    else
    {
      v17 = 0;
    }

    [a1 addTransitionWithInt:v13 withInt:sub_1000132E8(a1 withInt:{a2, a3, (a4 + 1), a5, v17), v15}];
  }

  else
  {
    v18 = v16;
    if (v15 == 48)
    {
      v19 = a6;
    }

    else
    {
      v19 = 0;
    }

    [a1 addTransitionWithInt:v13 withInt:sub_10001348C(a1 withInt:{a2, (a4 + 1), a5, v19), v15}];
    [a1 addTransitionWithInt:v13 withInt:sub_1000135A4(a1 withInt:{a3, (a4 + 1)), v18}];
    if (v15 + 1 < v18)
    {
      [a1 addTransitionWithInt:v13 withInt:sub_100013684(a1 withInt:a2 withInt:{a4 + 1), (v15 + 1), (v18 - 1)}];
    }
  }

  return v13;
}

id sub_10001348C(void *a1, void *a2, uint64_t a3, void *a4, unsigned int a5)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v10 = [a1 createState];
  if (!a2)
  {
    goto LABEL_14;
  }

  v11 = v10;
  if ([a2 length] == a3)
  {
    [a1 setAcceptWithInt:v11 withBoolean:1];
    return v11;
  }

  if (a5)
  {
    if (a4)
    {
      [a4 addWithId:JavaLangInteger_valueOfWithInt_(v11)];
      goto LABEL_8;
    }

LABEL_14:
    JreThrowNullPointerException();
  }

LABEL_8:
  v12 = [a2 charAtWithInt:a3];
  if (v12 == 48)
  {
    v13 = a5;
  }

  else
  {
    v13 = 0;
  }

  [a1 addTransitionWithInt:v11 withInt:sub_10001348C(a1 withInt:{a2, (a3 + 1), a4, v13), v12}];
  if (v12 <= 0x38u)
  {
    [a1 addTransitionWithInt:v11 withInt:sub_100013684(a1 withInt:a2 withInt:{a3 + 1), (v12 + 1), 57}];
  }

  return v11;
}

id sub_1000135A4(void *a1, void *a2, uint64_t a3)
{
  if (!a1 || (v6 = [a1 createState], !a2))
  {
    JreThrowNullPointerException();
  }

  v7 = v6;
  if ([a2 length] == a3)
  {
    [a1 setAcceptWithInt:v7 withBoolean:1];
  }

  else
  {
    v8 = [a2 charAtWithInt:a3];
    [a1 addTransitionWithInt:v7 withInt:sub_1000135A4(a1 withInt:{a2, a3 + 1), v8}];
    if (v8 >= 0x31)
    {
      [a1 addTransitionWithInt:v7 withInt:sub_100013684(a1 withInt:a2 withInt:{a3 + 1), 48, (v8 - 1)}];
    }
  }

  return v7;
}

id sub_100013684(void *a1, void *a2, int a3)
{
  if (!a1 || (v6 = [a1 createState], !a2))
  {
    JreThrowNullPointerException();
  }

  v7 = v6;
  if ([a2 length] == a3)
  {
    [a1 setAcceptWithInt:v7 withBoolean:1];
  }

  else
  {
    [a1 addTransitionWithInt:v7 withInt:sub_100013684(a1 withInt:a2 withInt:{(a3 + 1)), 48, 57}];
  }

  return v7;
}

IOSObjectArray *OrgLukhnosPortmobileFileFileVisitResultEnum_values()
{
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileFileVisitResultEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100013914();
  }

  v0 = OrgLukhnosPortmobileFileFileVisitResultEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgLukhnosPortmobileFileFileVisitResultEnum_values_ count:1 type:v0];
}

uint64_t OrgLukhnosPortmobileFileFileVisitResultEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileFileVisitResultEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100013914();
  }

  v2 = OrgLukhnosPortmobileFileFileVisitResultEnum_values_;
  if (([a1 isEqual:{objc_msgSend(OrgLukhnosPortmobileFileFileVisitResultEnum_values_, "name")}] & 1) == 0)
  {
    objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
  }

  return v2;
}

uint64_t OrgLukhnosPortmobileFileFileVisitResultEnum_class_()
{
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileFileVisitResultEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100013914();
  }

  if (qword_100553E20 != -1)
  {
    sub_100013920();
  }

  return qword_100553E18;
}

id OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_initWithOrgApacheLuceneStoreIndexOutput_withInt_(uint64_t a1, void *a2, int a3)
{
  if (a3 <= 0)
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"blockSize must be positive");
    objc_exception_throw(v7);
  }

  *(a1 + 16) = a3;
  JreStrongAssign((a1 + 8), a2);
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 20) = 0;
  JreStrongAssignAndConsume((a1 + 48), [IOSIntArray newArrayWithLength:a3]);
  JreStrongAssignAndConsume((a1 + 56), [IOSLongArray newArrayWithLength:a3]);
  v5 = *(a1 + 8);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  return [v5 writeVIntWithInt:2];
}

id sub_100013CB0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_50;
  }

  [v2 writeVIntWithInt:*(a1 + 28)];
  v3 = *(a1 + 28);
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 48);
    if (!v5)
    {
      goto LABEL_50;
    }

    v6 = *(v5 + 8);
    v7 = v3 - 1;
    if (v3 - 1 < 0 || v7 >= v6)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, (v3 - 1));
    }

    v4 = JavaLangMath_roundWithFloat_((*(a1 + 24) - *(v5 + 12 + 4 * v7)) / v7);
  }

  [*(a1 + 8) writeVIntWithInt:(*(a1 + 20) - *(a1 + 24))];
  [*(a1 + 8) writeVIntWithInt:v4];
  if (*(a1 + 28) >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = OrgApacheLuceneUtilBitUtil_zigZagEncodeWithInt_(v15 + v17);
      v20 = *(a1 + 48);
      if (!v20)
      {
        break;
      }

      v21 = v19;
      v22 = *(v20 + 8);
      if (v16 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, v16);
      }

      v18 |= v21;
      v17 += *(v20 + 12 + 4 * v16++);
      v15 -= v4;
      if (v16 >= *(a1 + 28))
      {
        goto LABEL_16;
      }
    }

LABEL_50:
    JreThrowNullPointerException();
  }

  v18 = 0;
LABEL_16:
  v23 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(v18, v8, v9, v10, v11, v12, v13, v14);
  [*(a1 + 8) writeVIntWithInt:v23];
  v24 = *(a1 + 8);
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getWriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(v24, OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_, *(a1 + 28), v23, 1);
  if (*(a1 + 28) >= 1)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      [(OrgApacheLuceneUtilPackedPackedWriter *)WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt addWithLong:OrgApacheLuceneUtilBitUtil_zigZagEncodeWithLong_(v26 + v28)];
      v29 = *(a1 + 48);
      if (!v29)
      {
        goto LABEL_50;
      }

      v30 = *(v29 + 8);
      if (v27 >= v30)
      {
        IOSArray_throwOutOfBoundsWithMsg(v30, v27);
      }

      v28 += *(v29 + 12 + 4 * v27++);
      v26 -= v4;
    }

    while (v27 < *(a1 + 28));
  }

  if (!WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt)
  {
    goto LABEL_50;
  }

  [(OrgApacheLuceneUtilPackedPackedWriter *)WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt finish];
  [*(a1 + 8) writeVLongWithLong:*(a1 + 32)];
  if (*(a1 + 28) == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = (*(a1 + 40) - *(a1 + 32)) / (*(a1 + 28) - 1);
  }

  [*(a1 + 8) writeVLongWithLong:v31];
  if (*(a1 + 28) >= 1)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    while (1)
    {
      v43 = *(a1 + 56);
      if (!v43)
      {
        goto LABEL_50;
      }

      v44 = *(v43 + 8);
      if (v40 >= v44)
      {
        IOSArray_throwOutOfBoundsWithMsg(v44, v40);
      }

      v42 += *(v43 + 16 + 8 * v40);
      v41 |= OrgApacheLuceneUtilBitUtil_zigZagEncodeWithLong_(v39 + v42);
      ++v40;
      v39 -= v31;
      if (v40 >= *(a1 + 28))
      {
        goto LABEL_37;
      }
    }
  }

  v41 = 0;
LABEL_37:
  v45 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(v41, v32, v33, v34, v35, v36, v37, v38);
  [*(a1 + 8) writeVIntWithInt:v45];
  v46 = *(a1 + 8);
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  v47 = OrgApacheLuceneUtilPackedPackedInts_getWriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(v46, OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_, *(a1 + 28), v45, 1);
  if (*(a1 + 28) >= 1)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    do
    {
      v51 = *(a1 + 56);
      if (!v51)
      {
        goto LABEL_50;
      }

      v52 = *(v51 + 8);
      if (v49 >= v52)
      {
        IOSArray_throwOutOfBoundsWithMsg(v52, v49);
      }

      v50 += *(v51 + 16 + 8 * v49);
      [(OrgApacheLuceneUtilPackedPackedWriter *)v47 addWithLong:OrgApacheLuceneUtilBitUtil_zigZagEncodeWithLong_(v48 + v50)];
      ++v49;
      v48 -= v31;
    }

    while (v49 < *(a1 + 28));
  }

  if (!v47)
  {
    goto LABEL_50;
  }

  return [(OrgApacheLuceneUtilPackedPackedWriter *)v47 finish];
}

OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter *new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_initWithOrgApacheLuceneStoreIndexOutput_withInt_(void *a1, int a2)
{
  v4 = [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter alloc];
  OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_initWithOrgApacheLuceneStoreIndexOutput_withInt_(v4, a1, a2);
  return v4;
}

void *OrgApacheLuceneUtilPackedPacked64_initWithInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OrgApacheLuceneUtilPackedPackedInts_MutableImpl_initWithInt_withInt_(a1, a2, a3);
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  if (!OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_)
  {
    JreThrowNullPointerException();
  }

  result = JreStrongAssignAndConsume((a1 + 16), +[IOSLongArray newArrayWithLength:](IOSLongArray, "newArrayWithLength:", [OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_ longCountWithInt:2 withInt:a2 withInt:a3]));
  *(a1 + 24) = 0xFFFFFFFFFFFFFFFFLL >> -a3;
  *(a1 + 32) = a3 - 64;
  return result;
}

uint64_t OrgApacheLuceneUtilPackedPacked64_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_withInt_(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  OrgApacheLuceneUtilPackedPackedInts_MutableImpl_initWithInt_withInt_(a1, a4, a5);
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  v10 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_;
  if (!OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_)
  {
    goto LABEL_23;
  }

  v11 = [OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_ byteCountWithInt:a2 withInt:a4 withInt:a5];
  v23 = a5;
  result = JreStrongAssignAndConsume((a1 + 16), +[IOSLongArray newArrayWithLength:](IOSLongArray, "newArrayWithLength:", [v10 longCountWithInt:2 withInt:a4 withInt:a5]));
  v13 = v11 / 8;
  v24 = v11;
  if (v11 >= 8)
  {
    if (!a3)
    {
      goto LABEL_23;
    }

    v14 = 0;
    v15 = 1;
    do
    {
      v16 = [a3 readLong];
      v17 = *(a1 + 16);
      result = *(v17 + 8);
      if (v15 - 1 < 0 || v15 - 1 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, (v15 - 1));
      }

      *(v17 + 16 + 8 * v14) = v16;
      v14 = v15;
    }

    while (v13 > v15++);
  }

  v19 = v24 - 8 * v13;
  if (v24 == 8 * v13)
  {
    goto LABEL_22;
  }

  if (v19 >= 1)
  {
    if (a3)
    {
      v20 = 0;
      v21 = 56;
      do
      {
        v20 |= [a3 readByte] << v21;
        v21 -= 8;
        LODWORD(v19) = v19 - 1;
      }

      while (v19);
      goto LABEL_20;
    }

LABEL_23:
    JreThrowNullPointerException();
  }

  v20 = 0;
LABEL_20:
  v22 = *(a1 + 16);
  result = *(v22 + 8);
  if (result <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, result - 1);
  }

  *(v22 + 16 + 8 * (result - 1)) = v20;
LABEL_22:
  *(a1 + 24) = 0xFFFFFFFFFFFFFFFFLL >> -v23;
  *(a1 + 32) = v23 - 64;
  return result;
}

OrgApacheLuceneUtilPackedPacked64 *new_OrgApacheLuceneUtilPackedPacked64_initWithInt_withInt_(uint64_t a1, uint64_t a2)
{
  v4 = [OrgApacheLuceneUtilPackedPacked64 alloc];
  OrgApacheLuceneUtilPackedPacked64_initWithInt_withInt_(v4, a1, a2);
  return v4;
}

OrgApacheLuceneUtilPackedPacked64 *new_OrgApacheLuceneUtilPackedPacked64_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_withInt_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [OrgApacheLuceneUtilPackedPacked64 alloc];
  OrgApacheLuceneUtilPackedPacked64_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_withInt_(v8, a1, a2, a3, a4);
  return v8;
}

IOSObjectArray *OrgApacheLuceneIndexIndexOptionsEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  v0 = OrgApacheLuceneIndexIndexOptionsEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgApacheLuceneIndexIndexOptionsEnum_values_ count:5 type:v0];
}

void *OrgApacheLuceneIndexIndexOptionsEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgApacheLuceneIndexIndexOptionsEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 5)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}

uint64_t OrgApacheLuceneIndexIndexOptionsEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (qword_100553E30 != -1)
  {
    sub_100015614();
  }

  return qword_100553E28;
}

id OrgApacheLuceneUtilNumericUtils_longToPrefixCodedBytesWithLong_withInt_withOrgApacheLuceneUtilBytesRefBuilder_(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 >= 0x40)
  {
    v14 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Illegal shift value, must be 0..63; got shift=");
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  if (!a3)
  {
    JreThrowNullPointerException();
  }

  LODWORD(v11) = ((37 * (63 - a2)) >> 8) + 2;
  [a3 setLengthWithInt:v11];
  [a3 growWithInt:11];
  [a3 setByteAtWithInt:0 withByte:(v8 + 32)];
  v12 = (a1 ^ 0x8000000000000000) >> v8;
  do
  {
    v11 = (v11 - 1);
    result = [a3 setByteAtWithInt:v11 withByte:v12 & 0x7F];
    v12 >>= 7;
  }

  while (v11 > 1);
  return result;
}

id OrgApacheLuceneUtilNumericUtils_intToPrefixCodedBytesWithInt_withInt_withOrgApacheLuceneUtilBytesRefBuilder_(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 >= 0x20)
  {
    v14 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Illegal shift value, must be 0..31; got shift=");
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  if (!a3)
  {
    JreThrowNullPointerException();
  }

  LODWORD(v11) = ((37 * (31 - a2)) >> 8) + 2;
  [a3 setLengthWithInt:v11];
  [a3 growWithInt:11];
  [a3 setByteAtWithInt:0 withByte:(v8 | 0x60)];
  v12 = (a1 ^ 0x80000000) >> v8;
  do
  {
    v11 = (v11 - 1);
    result = [a3 setByteAtWithInt:v11 withByte:v12 & 0x7F];
    v12 >>= 7;
  }

  while (v11 > 1);
  return result;
}

uint64_t OrgApacheLuceneUtilNumericUtils_getPrefixCodedLongShiftWithOrgApacheLuceneUtilBytesRef_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || (v8 = *(a1 + 8)) == 0)
  {
    JreThrowNullPointerException();
  }

  v9 = *(a1 + 16);
  v10 = *(v8 + 8);
  if (v9 < 0 || v9 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v9);
  }

  v11 = *(v8 + 12 + v9);
  result = (v11 - 32);
  if ((v11 - 96) <= 0xBFu)
  {
    v13 = JreStrcat("$I$", a2, a3, a4, a5, a6, a7, a8, @"Invalid shift value (");
    v14 = new_JavaLangNumberFormatException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  return result;
}

uint64_t OrgApacheLuceneUtilNumericUtils_getPrefixCodedIntShiftWithOrgApacheLuceneUtilBytesRef_(uint64_t a1)
{
  if (!a1 || (v1 = *(a1 + 8)) == 0)
  {
    JreThrowNullPointerException();
  }

  v2 = *(a1 + 16);
  v3 = *(v1 + 8);
  if (v2 < 0 || v2 >= v3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, v2);
  }

  v4 = *(v1 + 12 + v2);
  if (v4 <= 95)
  {
    v6 = new_JavaLangNumberFormatException_initWithNSString_(@"Invalid shift value in prefixCoded bytes (is encoded value really an INT?)");
    objc_exception_throw(v6);
  }

  return (v4 - 96);
}

unint64_t OrgApacheLuceneUtilNumericUtils_prefixCodedToLongWithOrgApacheLuceneUtilBytesRef_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  if (v9 + 1 < v10 + v9)
  {
    v11 = 0;
    v12 = v9 + 1;
    v13 = v10 - 1;
    while (1)
    {
      v14 = *(a1 + 8);
      if (!v14)
      {
        break;
      }

      v15 = *(v14 + 8);
      if ((v12 & 0x80000000) != 0 || v12 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v12);
      }

      v16 = *(v14 + 12 + v12);
      if (v16 < 0)
      {
        JavaLangInteger_toHexStringWithInt_(*(v14 + 12 + v12));
        v27 = -*(a1 + 16) + v12;
        v25 = JreStrcat("$$$I$", v18, v19, v20, v21, v22, v23, v24, @"Invalid prefixCoded numerical value representation (byte ");
        v26 = new_JavaLangNumberFormatException_initWithNSString_(v25);
        objc_exception_throw(v26);
      }

      v11 = (v11 << 7) | v16;
      ++v12;
      if (!--v13)
      {
        return (v11 << OrgApacheLuceneUtilNumericUtils_getPrefixCodedLongShiftWithOrgApacheLuceneUtilBytesRef_(a1, a2, a3, a4, a5, a6, a7, a8)) ^ 0x8000000000000000;
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  v11 = 0;
  return (v11 << OrgApacheLuceneUtilNumericUtils_getPrefixCodedLongShiftWithOrgApacheLuceneUtilBytesRef_(a1, a2, a3, a4, a5, a6, a7, a8)) ^ 0x8000000000000000;
}

uint64_t OrgApacheLuceneUtilNumericUtils_prefixCodedToIntWithOrgApacheLuceneUtilBytesRef_(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  if (v2 + 1 < v3 + v2)
  {
    v4 = 0;
    v5 = v2 + 1;
    v6 = v3 - 1;
    while (1)
    {
      v7 = *(a1 + 8);
      if (!v7)
      {
        break;
      }

      v8 = *(v7 + 8);
      if ((v5 & 0x80000000) != 0 || v5 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, v5);
      }

      v9 = *(v7 + 12 + v5);
      if (v9 < 0)
      {
        JavaLangInteger_toHexStringWithInt_(*(v7 + 12 + v5));
        v20 = -*(a1 + 16) + v5;
        v18 = JreStrcat("$$$I$", v11, v12, v13, v14, v15, v16, v17, @"Invalid prefixCoded numerical value representation (byte ");
        v19 = new_JavaLangNumberFormatException_initWithNSString_(v18);
        objc_exception_throw(v19);
      }

      v4 = (v4 << 7) | v9;
      ++v5;
      if (!--v6)
      {
        return (v4 << OrgApacheLuceneUtilNumericUtils_getPrefixCodedIntShiftWithOrgApacheLuceneUtilBytesRef_(a1)) ^ 0x80000000;
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  v4 = 0;
  return (v4 << OrgApacheLuceneUtilNumericUtils_getPrefixCodedIntShiftWithOrgApacheLuceneUtilBytesRef_(a1)) ^ 0x80000000;
}

OrgApacheLuceneUtilNumericUtils_$1 *OrgApacheLuceneUtilNumericUtils_filterPrefixCodedLongsWithOrgApacheLuceneIndexTermsEnum_(void *a1)
{
  v2 = [OrgApacheLuceneUtilNumericUtils__1 alloc];
  OrgApacheLuceneIndexFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withBoolean_(v2, a1, 0);

  return v2;
}

OrgApacheLuceneUtilNumericUtils_$2 *OrgApacheLuceneUtilNumericUtils_filterPrefixCodedIntsWithOrgApacheLuceneIndexTermsEnum_(void *a1)
{
  v2 = [OrgApacheLuceneUtilNumericUtils__2 alloc];
  OrgApacheLuceneIndexFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withBoolean_(v2, a1, 0);

  return v2;
}

JavaLangInteger *OrgApacheLuceneUtilNumericUtils_getMinIntWithOrgApacheLuceneIndexTerms_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 getMin];
  if (result)
  {
    v2 = OrgApacheLuceneUtilNumericUtils_prefixCodedToIntWithOrgApacheLuceneUtilBytesRef_(result);

    return JavaLangInteger_valueOfWithInt_(v2);
  }

  return result;
}

JavaLangInteger *OrgApacheLuceneUtilNumericUtils_getMaxIntWithOrgApacheLuceneIndexTerms_(void *a1)
{
  v2 = [OrgApacheLuceneUtilNumericUtils__3 alloc];
  OrgApacheLuceneIndexFilterLeafReader_FilterTerms_initWithOrgApacheLuceneIndexTerms_(v2, a1);
  v3 = v2;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  result = [(OrgApacheLuceneIndexTerms *)v3 getMax];
  if (result)
  {
    v5 = OrgApacheLuceneUtilNumericUtils_prefixCodedToIntWithOrgApacheLuceneUtilBytesRef_(result);

    return JavaLangInteger_valueOfWithInt_(v5);
  }

  return result;
}

JavaLangLong *OrgApacheLuceneUtilNumericUtils_getMinLongWithOrgApacheLuceneIndexTerms_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 getMin];
  if (result)
  {
    v9 = OrgApacheLuceneUtilNumericUtils_prefixCodedToLongWithOrgApacheLuceneUtilBytesRef_(result, v2, v3, v4, v5, v6, v7, v8);

    return JavaLangLong_valueOfWithLong_(v9);
  }

  return result;
}

JavaLangLong *OrgApacheLuceneUtilNumericUtils_getMaxLongWithOrgApacheLuceneIndexTerms_(void *a1)
{
  v2 = [OrgApacheLuceneUtilNumericUtils__4 alloc];
  OrgApacheLuceneIndexFilterLeafReader_FilterTerms_initWithOrgApacheLuceneIndexTerms_(v2, a1);
  v3 = v2;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  result = [(OrgApacheLuceneIndexTerms *)v3 getMax];
  if (result)
  {
    v12 = OrgApacheLuceneUtilNumericUtils_prefixCodedToLongWithOrgApacheLuceneUtilBytesRef_(result, v5, v6, v7, v8, v9, v10, v11);

    return JavaLangLong_valueOfWithLong_(v12);
  }

  return result;
}

id sub_1000162C8(id result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 0)
  {
    v20 = new_JavaLangIllegalArgumentException_initWithNSString_(@"precisionStep must be >=1");
    objc_exception_throw(v20);
  }

  v5 = a5;
  v6 = a4;
  if (a4 <= a5)
  {
    v8 = result;
    v9 = 0;
    v10 = ~(-1 << a3);
    while (1)
    {
      v11 = v5;
      v12 = v9;
      v9 = (v9 + a3);
      v13 = 1 << v9;
      v14 = v10 << v12;
      v15 = (v10 << v12) & v5;
      if (((v10 << v12) & v6) != 0)
      {
        v16 = 1 << v9;
      }

      else
      {
        v16 = 0;
      }

      if (v15 == v14)
      {
        v13 = 0;
      }

      if (v9 >= a2)
      {
        break;
      }

      v17 = (v16 + v6) & ~v14;
      v5 = (v5 - v13) & ~v14;
      v18 = v5 <= v11 && v17 <= v5;
      if (!v18 || v17 < v6)
      {
        break;
      }

      if (((v10 << v12) & v6) != 0)
      {
        sub_1000168C8(v8, a2, v6, v14 | v6, v12);
      }

      v6 = v17;
      if (v15 != v14)
      {
        sub_1000168C8(v8, a2, v11 & ~v14, v11, v12);
        v6 = v17;
      }
    }

    return sub_1000168C8(v8, a2, v6, v11, v12);
  }

  return result;
}

id sub_1000168C8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a4 | ~(-1 << a5);
  if (a2 != 32)
  {
    if (a2 != 64)
    {
      v9 = new_JavaLangIllegalArgumentException_initWithNSString_(@"valSize must be 32 or 64.");
      objc_exception_throw(v9);
    }

    objc_opt_class();
    if (a1)
    {
      if (objc_opt_isKindOfClass())
      {

        return [a1 addRangeWithLong:a3 withLong:v8 withInt:a5];
      }

LABEL_13:
      JreThrowClassCastException();
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (!a1)
  {
    goto LABEL_14;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  return [a1 addRangeWithInt:a3 withInt:v8 withInt:a5];
}

void *OrgApacheLuceneUtilPackedPackedWriter_initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withOrgApacheLuceneStoreDataOutput_withInt_withInt_withInt_(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  OrgApacheLuceneUtilPackedPackedInts_Writer_initWithOrgApacheLuceneStoreDataOutput_withInt_withInt_(a1, a3, a4, a5);
  JreStrongAssign((a1 + 32), a2);
  v11 = OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_(a2, a5);
  JreStrongAssign((a1 + 40), v11);
  v12 = *(a1 + 40);
  if (!v12)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 64) = [v12 computeIterationsWithInt:a4 withInt:a6];
  JreStrongAssignAndConsume((a1 + 48), +[IOSByteArray newArrayWithLength:](IOSByteArray, "newArrayWithLength:", ([*(a1 + 40) byteBlockCount] * *(a1 + 64))));
  result = JreStrongAssignAndConsume((a1 + 56), +[IOSLongArray newArrayWithLength:](IOSLongArray, "newArrayWithLength:", ([*(a1 + 40) byteValueCount] * *(a1 + 64))));
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 24) = 0;
  return result;
}

OrgApacheLuceneUtilPackedPackedWriter *new_OrgApacheLuceneUtilPackedPackedWriter_initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withOrgApacheLuceneStoreDataOutput_withInt_withInt_withInt_(void *a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = [OrgApacheLuceneUtilPackedPackedWriter alloc];
  OrgApacheLuceneUtilPackedPackedWriter_initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withOrgApacheLuceneStoreDataOutput_withInt_withInt_withInt_(v10, a1, a2, a3, a4, a5);
  return v10;
}

uint64_t OrgApacheLuceneIndexSegmentInfos_getLastCommitGenerationWithNSStringArray_(uint64_t a1)
{
  if (atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_10001987C();
    if (!a1)
    {
      goto LABEL_12;
    }
  }

  v2 = (a1 + 24);
  v3 = a1 + 24 + 8 * *(a1 + 8);
  v4 = -1;
  if (v2 < v3)
  {
    while (1)
    {
      v6 = *v2++;
      v5 = v6;
      if (!v6)
      {
        break;
      }

      if ([v5 hasPrefix:OrgApacheLuceneIndexIndexFileNames_SEGMENTS_])
      {
        if (([v5 isEqual:OrgApacheLuceneIndexIndexFileNames_OLD_SEGMENTS_GEN_] & 1) == 0)
        {
          v7 = OrgApacheLuceneIndexSegmentInfos_generationFromSegmentsFileNameWithNSString_(v5);
          if (v7 > v4)
          {
            v4 = v7;
          }
        }
      }

      if (v2 >= v3)
      {
        return v4;
      }
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  return v4;
}

uint64_t OrgApacheLuceneIndexSegmentInfos_getLastCommitGenerationWithOrgApacheLuceneStoreDirectory_(void *a1)
{
  if (atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10001987C();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = [a1 listAll];

  return OrgApacheLuceneIndexSegmentInfos_getLastCommitGenerationWithNSStringArray_(v2);
}

NSString *OrgApacheLuceneIndexSegmentInfos_getLastCommitSegmentsFileNameWithNSStringArray_(uint64_t a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001987C();
  }

  v2 = OrgApacheLuceneIndexIndexFileNames_SEGMENTS_;
  LastCommitGenerationWithNSStringArray = OrgApacheLuceneIndexSegmentInfos_getLastCommitGenerationWithNSStringArray_(a1);

  return OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(v2, &stru_100484358, LastCommitGenerationWithNSStringArray);
}

NSString *OrgApacheLuceneIndexSegmentInfos_getLastCommitSegmentsFileNameWithOrgApacheLuceneStoreDirectory_(void *a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001987C();
  }

  v2 = OrgApacheLuceneIndexIndexFileNames_SEGMENTS_;
  LastCommitGenerationWithOrgApacheLuceneStoreDirectory = OrgApacheLuceneIndexSegmentInfos_getLastCommitGenerationWithOrgApacheLuceneStoreDirectory_(a1);

  return OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(v2, &stru_100484358, LastCommitGenerationWithOrgApacheLuceneStoreDirectory);
}

uint64_t OrgApacheLuceneIndexSegmentInfos_generationFromSegmentsFileNameWithNSString_(void *a1)
{
  if (atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10001987C();
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  if ([a1 isEqual:OrgApacheLuceneIndexIndexFileNames_SEGMENTS_])
  {
    return 0;
  }

  if (![a1 hasPrefix:OrgApacheLuceneIndexIndexFileNames_SEGMENTS_])
  {
    v17 = JreStrcat("$$$", v3, v4, v5, v6, v7, v8, v9, @"fileName ");
    v18 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
    objc_exception_throw(v18);
  }

  if (!OrgApacheLuceneIndexIndexFileNames_SEGMENTS_)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v10 = [a1 substring:{objc_msgSend(OrgApacheLuceneIndexIndexFileNames_SEGMENTS_, "length") + 1}];

  return JavaLangLong_parseLongWithNSString_withInt_(v10, 36, v11, v12, v13, v14, v15, v16);
}

OrgApacheLuceneIndexSegmentInfos *OrgApacheLuceneIndexSegmentInfos_readCommitWithOrgApacheLuceneStoreDirectory_withNSString_(void *a1, void *a2)
{
  if ((atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001987C();
  }

  v4 = OrgApacheLuceneIndexSegmentInfos_generationFromSegmentsFileNameWithNSString_(a2);
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100019888();
  }

  v6 = [a1 openChecksumInputWithNSString:a2 withOrgApacheLuceneStoreIOContext:OrgApacheLuceneStoreIOContext_READ_];
  v7 = v6;
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  v8 = [v6 readInt];
  if (v8 != 1071082519)
  {
    v91 = new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(v7, v8, 1071082519, 1071082519);
    objc_exception_throw(v91);
  }

  v9 = OrgApacheLuceneCodecsCodecUtil_checkHeaderNoMagicWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_(v7, @"segments", 0, 6);
  if (v9 < 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = [IOSByteArray arrayWithLength:16];
    [v7 readBytesWithByteArray:v10 withInt:0 withInt:v10->super.size_];
    v11 = JavaLangLong_toStringWithLong_withInt_(v5, 36);
    OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderSuffixWithOrgApacheLuceneStoreDataInput_withNSString_(v7, v11);
  }

  v115 = new_OrgApacheLuceneIndexSegmentInfos_init();
  JreStrongAssign(&v115->id__, v10);
  v115->generation_ = v5;
  v115->lastGeneration_ = v5;
  if (v9 >= 6)
  {
    v12 = OrgApacheLuceneUtilVersion_fromBitsWithInt_withInt_withInt_([v7 readVInt], objc_msgSend(v7, "readVInt"), objc_msgSend(v7, "readVInt"));
    JreStrongAssign(&v115->luceneVersion_, v12);
  }

  v115->version__ = [v7 readLong];
  v115->counter_ = [v7 readInt];
  v114 = [v7 readInt];
  if ((v114 & 0x80000000) != 0)
  {
    v92 = JreStrcat("$I", v13, v14, v15, v16, v17, v18, v19, @"invalid segment count: ");
    v30 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v92, v7);
LABEL_90:
    objc_exception_throw(v30);
  }

  if (v9 >= 6 && v114)
  {
    v20 = OrgApacheLuceneUtilVersion_fromBitsWithInt_withInt_withInt_([v7 readVInt], objc_msgSend(v7, "readVInt"), objc_msgSend(v7, "readVInt"));
    JreStrongAssign(&v115->minSegmentLuceneVersion_, v20);
    minSegmentLuceneVersion = v115->minSegmentLuceneVersion_;
    if (!minSegmentLuceneVersion)
    {
      JreThrowNullPointerException();
    }

    if ((atomic_load_explicit(OrgApacheLuceneUtilVersion__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    if (![(OrgApacheLuceneUtilVersion *)minSegmentLuceneVersion onOrAfterWithOrgApacheLuceneUtilVersion:OrgApacheLuceneUtilVersion_LUCENE_4_0_0_ALPHA_])
    {
      v111 = v115->minSegmentLuceneVersion_;
      v29 = JreStrcat("$@C", v22, v23, v24, v25, v26, v27, v28, @"this index contains a too-old segment (version: ");
      v30 = new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(v7, v29);
      goto LABEL_90;
    }
  }

  else if (!v114)
  {
    v31 = 0;
    goto LABEL_72;
  }

  v113 = a1;
  v31 = 0;
  for (i = 0; i != v114; ++i)
  {
    v33 = [v7 readString];
    if (v9 >= 4 && (v34 = [v7 readByte]) != 0)
    {
      if (v34 != 1)
      {
        v89 = JreStrcat("$B", v35, v36, v37, v38, v39, v40, v41, @"invalid hasID byte, got: ");
        v90 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v89, v7);
        objc_exception_throw(v90);
      }

      v42 = [IOSByteArray arrayWithLength:16];
      [v7 readBytesWithByteArray:v42 withInt:0 withInt:v42->super.size_];
    }

    else
    {
      v42 = 0;
    }

    if ((atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    v43 = OrgApacheLuceneCodecsCodec_forNameWithNSString_([v7 readString]);
    v44 = v43;
    if (!v43)
    {
      goto LABEL_80;
    }

    v45 = [v43 segmentInfoFormat];
    if (!v45)
    {
      goto LABEL_80;
    }

    if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    v46 = [v45 readWithOrgApacheLuceneStoreDirectory:v113 withNSString:v33 withByteArray:v42 withOrgApacheLuceneStoreIOContext:OrgApacheLuceneStoreIOContext_READ_];
    v47 = v46;
    if (!v46)
    {
LABEL_80:
      JreThrowNullPointerException();
    }

    [v46 setCodecWithOrgApacheLuceneCodecsCodec:v44];
    v48 = [v47 maxDoc];
    v49 = [v7 readLong];
    v50 = [v7 readInt];
    if (v50 < 0 || v50 > [v47 maxDoc])
    {
      [v47 maxDoc];
      v85 = JreStrcat("$I$I", v78, v79, v80, v81, v82, v83, v84, @"invalid deletion count: ");
      v86 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v85, v7);
      objc_exception_throw(v86);
    }

    if (v9 < 1)
    {
      v52 = -1;
      v53 = -1;
    }

    else
    {
      v51 = [v7 readLong];
      v52 = v51;
      if (v9 < 3)
      {
        v53 = v51;
      }

      else
      {
        v53 = [v7 readLong];
      }
    }

    v54 = new_OrgApacheLuceneIndexSegmentCommitInfo_initWithOrgApacheLuceneIndexSegmentInfo_withInt_withLong_withLong_withLong_(v47, v50, v49, v52, v53);
    if (v9 >= 1)
    {
      if (v9 > 2)
      {
        if (v9 < 5)
        {
          v58 = JavaUtilCollections_unmodifiableSetWithJavaUtilSet_([v7 readStringSet]);
        }

        else
        {
          v58 = [v7 readSetOfStrings];
        }

        [(OrgApacheLuceneIndexSegmentCommitInfo *)v54 setFieldInfosFilesWithJavaUtilSet:v58];
        v59 = [v7 readInt];
        v60 = v59;
        if (v59)
        {
          v61 = new_JavaUtilHashMap_initWithInt_(v59);
          if (v60 >= 1)
          {
            do
            {
              v62 = JavaLangInteger_valueOfWithInt_([v7 readInt]);
              if (v9 < 5)
              {
                v63 = JavaUtilCollections_unmodifiableSetWithJavaUtilSet_([v7 readStringSet]);
              }

              else
              {
                v63 = [v7 readSetOfStrings];
              }

              [(JavaUtilHashMap *)v61 putWithId:v62 withId:v63];
              --v60;
            }

            while (v60);
          }

          v64 = JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(v61);
        }

        else
        {
          v64 = JavaUtilCollections_emptyMap();
        }

        [(OrgApacheLuceneIndexSegmentCommitInfo *)v54 setDocValuesUpdatesFilesWithJavaUtilMap:v64];
      }

      else
      {
        v55 = [v7 readInt];
        v56 = v55;
        if (v55)
        {
          v57 = new_JavaUtilHashMap_initWithInt_(v55);
          if (v56 >= 1)
          {
            do
            {
              -[JavaUtilHashMap putWithId:withId:](v57, "putWithId:withId:", JavaLangLong_valueOfWithLong_([v7 readLong]), objc_msgSend(v7, "readStringSet"));
              --v56;
            }

            while (v56);
          }
        }

        else
        {
          v57 = JavaUtilCollections_emptyMap();
        }

        [(OrgApacheLuceneIndexSegmentCommitInfo *)v54 setGenUpdatesFilesWithJavaUtilMap:v57];
      }
    }

    [(OrgApacheLuceneIndexSegmentInfos *)v115 addWithOrgApacheLuceneIndexSegmentCommitInfo:v54];
    v65 = [v47 getVersion];
    v66 = v65;
    if (v9 > 5)
    {
      if (!v65)
      {
LABEL_81:
        JreThrowNullPointerException();
      }

      if (([v65 onOrAfterWithOrgApacheLuceneUtilVersion:v115->minSegmentLuceneVersion_] & 1) == 0)
      {
        v112 = v115->minSegmentLuceneVersion_;
        v87 = JreStrcat("$@$@$@", v67, v68, v69, v70, v71, v72, v73, @"segments file recorded minSegmentLuceneVersion=");
        v88 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v87, v7);
        objc_exception_throw(v88);
      }
    }

    else
    {
      if (!v115->minSegmentLuceneVersion_)
      {
        goto LABEL_66;
      }

      if (!v65)
      {
        goto LABEL_81;
      }

      if (([v65 onOrAfterWithOrgApacheLuceneUtilVersion:?] & 1) == 0)
      {
LABEL_66:
        JreStrongAssign(&v115->minSegmentLuceneVersion_, v66);
      }
    }

    v31 += v48;
  }

LABEL_72:
  if (v9 > 4)
  {
    JreStrongAssign(&v115->userData_, [v7 readMapOfStrings]);
LABEL_75:
    OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_(v7);
    goto LABEL_78;
  }

  v74 = JavaUtilCollections_unmodifiableMapWithJavaUtilMap_([v7 readStringStringMap]);
  JreStrongAssign(&v115->userData_, v74);
  if (v9 >= 2)
  {
    goto LABEL_75;
  }

  v75 = [v7 getChecksum];
  v76 = [v7 readLong];
  if (v75 != v76)
  {
    JavaLangLong_toHexStringWithLong_(v76);
    JavaLangLong_toHexStringWithLong_(v75);
    v109 = JreStrcat("$$$$", v102, v103, v104, v105, v106, v107, v108, @"checksum failed (hardware problem?) : expected=");
    v110 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v109, v7);
    objc_exception_throw(v110);
  }

  OrgApacheLuceneCodecsCodecUtil_checkEOFWithOrgApacheLuceneStoreIndexInput_(v7);
LABEL_78:
  if (v31 > OrgApacheLuceneIndexIndexWriter_getActualMaxDocs())
  {
    OrgApacheLuceneIndexIndexWriter_getActualMaxDocs();
    v100 = JreStrcat("$I$J", v93, v94, v95, v96, v97, v98, v99, @"Too many documents: an index cannot exceed ");
    v101 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v100, v7);
    objc_exception_throw(v101);
  }

  [v7 close];
  return v115;
}

void sub_100017D24(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_end_catch();
  _Unwind_Resume(a1);
}

id OrgApacheLuceneIndexSegmentInfos_readLatestCommitWithOrgApacheLuceneStoreDirectory_(void *a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001987C();
  }

  v2 = [OrgApacheLuceneIndexSegmentInfos__1 alloc];
  JreStrongAssign(&v2->super.directory_, a1);
  v3 = v2;

  return [(OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile *)v3 run];
}

id sub_100017DC0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v59 = OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(OrgApacheLuceneIndexIndexFileNames_PENDING_SEGMENTS_, &stru_100484358, v7);
  *(a1 + 40) = v7;
  if (!a2)
  {
    goto LABEL_64;
  }

  if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v8 = [a2 createOutputWithNSString:v59 withOrgApacheLuceneStoreIOContext:OrgApacheLuceneStoreIOContext_DEFAULT_];
  v9 = OrgApacheLuceneUtilStringHelper_randomId();
  v10 = JavaLangLong_toStringWithLong_withInt_(v7, 36);
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(v8, @"segments", 6, v9, v10);
  if (!v8)
  {
LABEL_64:
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(OrgApacheLuceneUtilVersion__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!OrgApacheLuceneUtilVersion_LATEST_)
  {
    JreThrowNullPointerException();
  }

  [v8 writeVIntWithInt:*(OrgApacheLuceneUtilVersion_LATEST_ + 8)];
  if ((atomic_load_explicit(OrgApacheLuceneUtilVersion__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  [v8 writeVIntWithInt:*(OrgApacheLuceneUtilVersion_LATEST_ + 12)];
  if ((atomic_load_explicit(OrgApacheLuceneUtilVersion__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  [v8 writeVIntWithInt:*(OrgApacheLuceneUtilVersion_LATEST_ + 16)];
  [v8 writeLongWithLong:*(a1 + 16)];
  [v8 writeIntWithInt:*(a1 + 8)];
  [v8 writeIntWithInt:{objc_msgSend(a1, "size")}];
  if ([a1 size] >= 1)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v11 = [a1 countByEnumeratingWithState:&v68 objects:v74 count:16];
    if (!v11)
    {
      goto LABEL_70;
    }

    v12 = 0;
    v13 = *v69;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v69 != v13)
        {
          objc_enumerationMutation(a1);
        }

        v15 = *(*(&v68 + 1) + 8 * i);
        if (!v15 || (v16 = *(v15 + 8)) == 0)
        {
LABEL_62:
          JreThrowNullPointerException();
        }

        v17 = [v16 getVersion];
        v18 = v17;
        if (v12)
        {
          if (!v17)
          {
            goto LABEL_62;
          }

          if (([v17 onOrAfterWithOrgApacheLuceneUtilVersion:v12] & 1) == 0)
          {
            v12 = v18;
          }
        }

        else
        {
          v12 = v17;
        }
      }

      v11 = [a1 countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v11);
    if (!v12)
    {
LABEL_70:
      JreThrowNullPointerException();
    }

    [v8 writeVIntWithInt:v12[2]];
    [v8 writeVIntWithInt:v12[3]];
    [v8 writeVIntWithInt:v12[4]];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v19 = [a1 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v19)
  {
    v57 = *v65;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v65 != v57)
        {
          objc_enumerationMutation(a1);
        }

        v21 = *(*(&v64 + 1) + 8 * j);
        if (!v21 || (v22 = v21[1]) == 0)
        {
          JreThrowNullPointerException();
        }

        [v8 writeStringWithNSString:v22[1]];
        v23 = [v22 getId];
        v24 = v23;
        if (v23)
        {
          if (v23[2] != 16)
          {
            v47 = v22[1];
            OrgApacheLuceneUtilStringHelper_idToStringWithByteArray_(v23);
            v55 = JreStrcat("$$$$", v48, v49, v50, v51, v52, v53, v54, @"cannot write segment: invalid id segment=");
            v56 = new_JavaLangIllegalStateException_initWithNSString_(v55);
            objc_exception_throw(v56);
          }

          [v8 writeByteWithByte:1];
          [v8 writeBytesWithByteArray:v24 withInt:v24[2]];
        }

        else
        {
          [v8 writeByteWithByte:0];
        }

        v25 = [v22 getCodec];
        if (!v25)
        {
          JreThrowNullPointerException();
        }

        [v8 writeStringWithNSString:{objc_msgSend(v25, "getName")}];
        [v8 writeLongWithLong:{objc_msgSend(v21, "getDelGen")}];
        v26 = [v21 getDelCount];
        if ((v26 & 0x80000000) != 0 || v26 > [v22 maxDoc])
        {
          v37 = v22[1];
          [v22 maxDoc];
          v45 = JreStrcat("$$$I$I", v38, v39, v40, v41, v42, v43, v44, @"cannot write segment: invalid maxDoc segment=");
          v46 = new_JavaLangIllegalStateException_initWithNSString_(v45);
          objc_exception_throw(v46);
        }

        [v8 writeIntWithInt:v26];
        [v8 writeLongWithLong:{objc_msgSend(v21, "getFieldInfosGen")}];
        [v8 writeLongWithLong:{objc_msgSend(v21, "getDocValuesGen")}];
        [v8 writeSetOfStringsWithJavaUtilSet:{objc_msgSend(v21, "getFieldInfosFiles")}];
        v27 = [v21 getDocValuesUpdatesFiles];
        v28 = v27;
        if (!v27)
        {
          JreThrowNullPointerException();
        }

        [v8 writeIntWithInt:{objc_msgSend(v27, "size")}];
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v29 = [v28 entrySet];
        v30 = v29;
        if (!v29)
        {
LABEL_61:
          JreThrowNullPointerException();
        }

        v31 = [v29 countByEnumeratingWithState:&v60 objects:v72 count:16];
        if (v31)
        {
          v32 = *v61;
          do
          {
            for (k = 0; k != v31; k = k + 1)
            {
              if (*v61 != v32)
              {
                objc_enumerationMutation(v30);
              }

              v34 = *(*(&v60 + 1) + 8 * k);
              if (!v34)
              {
                goto LABEL_61;
              }

              v35 = [*(*(&v60 + 1) + 8 * k) getKey];
              if (!v35)
              {
                goto LABEL_61;
              }

              [v8 writeIntWithInt:{objc_msgSend(v35, "intValue")}];
              [v8 writeSetOfStringsWithJavaUtilSet:{objc_msgSend(v34, "getValue")}];
            }

            v31 = [v30 countByEnumeratingWithState:&v60 objects:v72 count:16];
          }

          while (v31);
        }
      }

      v19 = [a1 countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v19);
  }

  [v8 writeMapOfStringsWithJavaUtilMap:*(a1 + 24)];
  OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(v8);
  [v8 close];
  result = [a2 syncWithJavaUtilCollection:JavaUtilCollections_singletonWithId_(v59)];
  *(a1 + 32) = 1;
  return result;
}

void sub_100018474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    v44 = [IOSObjectArray arrayWithObjects:&a44 count:1 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v44);
    a43 = a18;
    v45 = [IOSObjectArray arrayWithObjects:&a43 count:1 type:NSString_class_()];
    OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgApacheLuceneStoreDirectory_withNSStringArray_(a17, v45);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100018544(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x10001854CLL);
  }

  objc_terminate();
}

void sub_1000186C8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = new_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(@"should not happen", v2);
    objc_exception_throw(v3);
  }

  _Unwind_Resume(exception_object);
}

id OrgApacheLuceneIndexSegmentInfos_setInfoStreamWithJavaIoPrintStream_(void *a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001987C();
  }

  return JreStrongAssign(&qword_100553E40, a1);
}

id sub_100018838(id result, void *a2)
{
  if (*(result + 32) == 1)
  {
    *(result + 32) = 0;
    v4 = OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(OrgApacheLuceneIndexIndexFileNames_PENDING_SEGMENTS_, &stru_100484358, *(result + 5));
    v3 = [IOSObjectArray arrayWithObjects:&v4 count:1 type:NSString_class_()];
    return OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgApacheLuceneStoreDirectory_withNSStringArray_(a2, v3);
  }

  return result;
}

id sub_1000188F4(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v4 = new_JavaLangIllegalStateException_initWithNSString_(@"prepareCommit was already called");
    objc_exception_throw(v4);
  }

  return sub_100017DC0(a1, a2);
}

NSString *sub_1000189E0(uint64_t a1, void *a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    v8 = new_JavaLangIllegalStateException_initWithNSString_(@"prepareCommit was not called");
    objc_exception_throw(v8);
  }

  v4 = OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(OrgApacheLuceneIndexIndexFileNames_PENDING_SEGMENTS_, &stru_100484358, *(a1 + 40));
  v5 = OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(OrgApacheLuceneIndexIndexFileNames_SEGMENTS_, &stru_100484358, *(a1 + 40));
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  [a2 renameFileWithNSString:v4 withNSString:v5];
  *(a1 + 32) = 0;
  *(a1 + 48) = *(a1 + 40);
  return v6;
}

void sub_100018A94(void *a1)
{
  objc_begin_catch(a1);
  sub_100018838(v1, v2);
  objc_exception_rethrow();
}

OrgApacheLuceneIndexSegmentInfos *new_OrgApacheLuceneIndexSegmentInfos_init()
{
  v0 = [OrgApacheLuceneIndexSegmentInfos alloc];
  v1 = JavaUtilCollections_emptyMap();
  JreStrongAssign(&v0->userData_, v1);
  v2 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&v0->segments_, v2);
  return v0;
}

id sub_10001975C()
{
  if ((atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001987C();
  }

  v0 = qword_100553E40;
  if (!qword_100553E40 || (v1 = JavaLangThread_currentThread()) == 0)
  {
    JreThrowNullPointerException();
  }

  [(JavaLangThread *)v1 getName];
  v9 = JreStrcat("$$$$", v2, v3, v4, v5, v6, v7, v8, @"SIS [");

  return [v0 printlnWithNSString:v9];
}

OrgApacheLuceneUtilPackedBulkOperationPacked8 *new_OrgApacheLuceneUtilPackedBulkOperationPacked8_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked8 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 8);
  return v0;
}

id OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(uint64_t a1, uint64_t a2)
{
  OrgApacheLuceneSearchQuery_init(a1);
  v4 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a2);
  JreStrongAssign((a1 + 12), v4);

  return JreStrongAssign((a1 + 20), 0);
}

id OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(uint64_t a1, uint64_t a2, void *a3)
{
  OrgApacheLuceneSearchQuery_init(a1);
  v6 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a2);
  JreStrongAssign((a1 + 12), v6);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (([a3 hasOnlyRealTerms] & 1) == 0)
  {
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Term queries must be created on real terms");
    objc_exception_throw(v9);
  }

  v7 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a3);

  return JreStrongAssign((a1 + 20), v7);
}

OrgApacheLuceneSearchTermQuery *new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(uint64_t a1)
{
  v2 = [OrgApacheLuceneSearchTermQuery alloc];
  OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(v2, a1);
  return v2;
}

OrgApacheLuceneSearchTermQuery *new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(uint64_t a1, void *a2)
{
  v4 = [OrgApacheLuceneSearchTermQuery alloc];
  OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(v4, a1, a2);
  return v4;
}

uint64_t OrgApacheLuceneSearchTermQuery_class_()
{
  if (qword_100553E58 != -1)
  {
    sub_10001AA60();
  }

  return qword_100553E50;
}

id OrgApacheLuceneSearchTermQuery_TermWeight_initWithOrgApacheLuceneSearchTermQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneIndexTermContext_(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  JreStrongAssign((a1 + 16), a2);
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(a1, a2);
  *(a1 + 48) = a4;
  JreStrongAssign((a1 + 40), a5);
  if (!a3)
  {
    goto LABEL_10;
  }

  JreStrongAssign((a1 + 24), [a3 getSimilarityWithBoolean:a4]);
  if (!a4)
  {
    v13 = [a3 getIndexReader];
    if (v13)
    {
      v14 = [v13 maxDoc];
      v15 = [a5 docFreq];
      v16 = [a5 totalTermFreq];
      v17 = *(a2 + 12);
      if (v17)
      {
        v11 = new_OrgApacheLuceneSearchCollectionStatistics_initWithNSString_withLong_withLong_withLong_withLong_([v17 field], v14, -1, -1, -1);
        v12 = new_OrgApacheLuceneSearchTermStatistics_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_([*(a2 + 12) bytes], v15, v16);
        goto LABEL_8;
      }
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  v10 = *(a2 + 12);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = [a3 collectionStatisticsWithNSString:{objc_msgSend(v10, "field")}];
  v12 = [a3 termStatisticsWithOrgApacheLuceneIndexTerm:*(a2 + 12) withOrgApacheLuceneIndexTermContext:a5];
LABEL_8:
  v18 = v12;
  v19 = *(a1 + 24);
  if (!v19)
  {
    goto LABEL_10;
  }

  [a2 getBoost];
  v21 = v20;
  v25 = v18;
  v22 = [IOSObjectArray arrayWithObjects:&v25 count:1 type:OrgApacheLuceneSearchTermStatistics_class_()];
  LODWORD(v23) = v21;
  return JreStrongAssign((a1 + 32), [v19 computeWeightWithFloat:v11 withOrgApacheLuceneSearchCollectionStatistics:v22 withOrgApacheLuceneSearchTermStatisticsArray:{v23, v25}]);
}

id sub_10001A680(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 40);
  if (!v3 || !a2)
  {
    goto LABEL_11;
  }

  v5 = [v3 getWithInt:a2[7]];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [a2 reader];
  if (!v7 || (v8 = v7, (v9 = *(*(a1 + 16) + 12)) == 0) || (v10 = [v8 termsWithNSString:{objc_msgSend(v9, "field")}]) == 0 || (v11 = objc_msgSend(v10, "iterator")) == 0)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v12 = v11;
  [v11 seekExactWithOrgApacheLuceneUtilBytesRef:objc_msgSend(*(*(a1 + 16) + 12) withOrgApacheLuceneIndexTermState:{"bytes"), v6}];
  return v12;
}

OrgLukhnosPortmobileFilePath *OrgLukhnosPortmobileFilePaths_getWithNSString_(void *a1)
{
  v1 = new_OrgLukhnosPortmobileFilePath_initWithNSString_(a1);

  return v1;
}

OrgApacheLuceneSearchTotalHitCountCollector *new_OrgApacheLuceneSearchTotalHitCountCollector_init()
{
  v0 = [OrgApacheLuceneSearchTotalHitCountCollector alloc];
  OrgApacheLuceneSearchSimpleCollector_init(v0, v1);
  return v0;
}

void *OrgApacheLuceneIndexCodecReader_init(id *a1)
{
  OrgApacheLuceneIndexLeafReader_init(a1);
  v2 = [OrgApacheLuceneIndexCodecReader__1 alloc];
  OrgApacheLuceneUtilCloseableThreadLocal_init(&v2->super.super.isa);
  JreStrongAssignAndConsume(a1 + 6, v2);
  v3 = [OrgApacheLuceneIndexCodecReader__2 alloc];
  OrgApacheLuceneUtilCloseableThreadLocal_init(&v3->super.super.isa);
  JreStrongAssignAndConsume(a1 + 7, v3);
  v4 = [OrgApacheLuceneIndexCodecReader__3 alloc];
  OrgApacheLuceneUtilCloseableThreadLocal_init(&v4->super.super.isa);

  return JreStrongAssignAndConsume(a1 + 8, v4);
}

id sub_10001AC90(void *a1, int a2)
{
  if (a2 < 0 || (result = [a1 maxDoc], result <= a2))
  {
    [a1 maxDoc];
    v12 = JreStrcat("$I$IC", v5, v6, v7, v8, v9, v10, v11, @"docID must be >= 0 and < maxDoc=");
    v13 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  return result;
}

id sub_10001AD94(void *a1, uint64_t a2, id a3)
{
  v5 = [a1 getFieldInfos];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  result = [v5 fieldInfoWithNSString:a2];
  if (result)
  {
    v7 = result;
    v8 = [result getDocValuesType];
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    if (v8 == OrgApacheLuceneIndexDocValuesTypeEnum_values_)
    {
      return 0;
    }

    else if ([v7 getDocValuesType] == a3)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(uint64_t a1, int a2, void *a3, float a4)
{
  *(a1 + 8) = a2;
  result = JreStrongAssign((a1 + 16), a3);
  *(a1 + 24) = a4;
  return result;
}

OrgApacheLuceneSearchTopFieldDocs *OrgApacheLuceneSearchTopDocs_mergeWithOrgApacheLuceneSearchSort_withInt_withInt_withOrgApacheLuceneSearchTopFieldDocsArray_(void *a1, int a2, unsigned int a3, uint64_t a4)
{
  if (!a1)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"sort must be non-null when merging field-docs");
    objc_exception_throw(v6);
  }

  v4 = sub_10001BC40(a1, a2, a3, a4);
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v4;
}

OrgApacheLuceneSearchTopDocs *new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_(int a1, void *a2)
{
  v4 = [OrgApacheLuceneSearchTopDocs alloc];
  v4->totalHits_ = a1;
  JreStrongAssign(&v4->scoreDocs_, a2);
  v4->maxScore_ = NAN;
  return v4;
}

OrgApacheLuceneSearchTopDocs *new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(int a1, void *a2, float a3)
{
  v6 = [OrgApacheLuceneSearchTopDocs alloc];
  v6->totalHits_ = a1;
  JreStrongAssign(&v6->scoreDocs_, a2);
  v6->maxScore_ = a3;
  return v6;
}

OrgApacheLuceneSearchTopFieldDocs *sub_10001BC40(void *a1, int a2, unsigned int a3, uint64_t a4)
{
  if (a1)
  {
    v8 = [OrgApacheLuceneSearchTopDocs_MergeSortQueue alloc];
    sub_10001C3EC(v8, a1, a4, v9, v10, v11, v12, v13);
  }

  else
  {
    v8 = [OrgApacheLuceneSearchTopDocs_ScoreMergeSortQueue alloc];
    sub_10001C0C8(v8, a4, v14, v15, v16, v17, v18, v19);
  }

  v20 = v8;
  if (!a4)
  {
    goto LABEL_48;
  }

  v21 = v20;
  v52 = a1;
  v53 = a2;
  if (*(a4 + 8) >= 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
    while (1)
    {
      v26 = *(a4 + 24 + 8 * v24);
      if (!v26)
      {
        break;
      }

      v27 = *(v26 + 8);
      v28 = *(v26 + 16);
      if (v28)
      {
        v29 = *(v28 + 8);
        if (v29 >= 1)
        {
          if (!v21)
          {
            break;
          }

          v22 = (v29 + v22);
          v30 = [OrgApacheLuceneSearchTopDocs_ShardRef alloc];
          v30->shardIndex_ = v24;
          [(OrgApacheLuceneUtilPriorityQueue *)v21 addWithId:v30];
          [v26 getMaxScore];
          JavaLangMath_maxWithFloat_withFloat_(*&v25, v31);
          v25 = v32;
        }
      }

      v23 += v27;
      if (++v24 >= *(a4 + 8))
      {
        goto LABEL_15;
      }
    }

LABEL_48:
    JreThrowNullPointerException();
  }

  v23 = 0;
  v22 = 0;
  v25 = 1;
LABEL_15:
  if (!v22)
  {
    *&v25 = NAN;
  }

  v33 = v53;
  if (v22 <= v53)
  {
    v55 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchScoreDoc_class_()];
  }

  else
  {
    v34 = JavaLangMath_minWithInt_withInt_(a3, v22 - v53);
    v55 = [IOSObjectArray arrayWithLength:v34 type:OrgApacheLuceneSearchScoreDoc_class_()];
    v35 = JavaLangMath_minWithInt_withInt_(v22, a3 + v53);
    if (v35 >= 1)
    {
      v36 = 0;
      v54 = -v53;
      v37 = v35;
      do
      {
        v38 = [(OrgApacheLuceneUtilPriorityQueue *)v21 top];
        if (!v38)
        {
          goto LABEL_48;
        }

        v39 = v38;
        v40 = v38[2];
        v41 = *(a4 + 8);
        if (v40 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, v40);
        }

        v42 = *(a4 + 24 + 8 * v40);
        if (!v42)
        {
          goto LABEL_48;
        }

        v43 = *(v42 + 16);
        if (!v43)
        {
          goto LABEL_48;
        }

        v44 = v39[3];
        v39[3] = v44 + 1;
        v45 = *(v43 + 8);
        if (v44 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, v44);
        }

        v46 = *(v43 + 24 + 8 * v44);
        if (!v46)
        {
          goto LABEL_48;
        }

        v47 = v39[2];
        v46[4] = v47;
        if (v36 >= v33)
        {
          IOSObjectArray_Set(v55, v54 + v36, v46);
          v47 = v39[2];
        }

        v48 = *(a4 + 8);
        if (v47 < 0 || v47 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, v47);
        }

        v49 = *(a4 + 24 + 8 * v47);
        if (!v49)
        {
          goto LABEL_48;
        }

        if (v39[3] >= *(*(v49 + 16) + 8))
        {
          [(OrgApacheLuceneUtilPriorityQueue *)v21 pop];
        }

        else
        {
          [(OrgApacheLuceneUtilPriorityQueue *)v21 updateTop];
        }
      }

      while (v37 != ++v36);
    }
  }

  if (v52)
  {
    v50 = new_OrgApacheLuceneSearchTopFieldDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withOrgApacheLuceneSearchSortFieldArray_withFloat_(v23, v55, [v52 getSort], *&v25);
  }

  else
  {
    v50 = [OrgApacheLuceneSearchTopDocs alloc];
    v50->super.totalHits_ = v23;
    JreStrongAssign(&v50->super.scoreDocs_, v55);
    v50->super.maxScore_ = *&v25;
  }

  return v50;
}

uint64_t OrgApacheLuceneSearchTopDocs_class_()
{
  if (qword_100553E68 != -1)
  {
    sub_10001CACC();
  }

  return qword_100553E60;
}

void *sub_10001C0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  OrgApacheLuceneUtilPriorityQueue_initWithInt_(a1, *(a2 + 8), a3, a4, a5, a6, a7, a8);
  v10 = *(a2 + 8);
  v11 = OrgApacheLuceneSearchScoreDoc_class_();
  v12 = [IOSObjectArray newArrayWithLength:v10 type:IOSClass_arrayType(v11, 1u)];
  result = JreStrongAssignAndConsume((a1 + 24), v12);
  if (*(a2 + 8) >= 1)
  {
    v14 = 0;
    for (i = a2; ; i += 8)
    {
      v16 = *(i + 24);
      if (!v16)
      {
        break;
      }

      result = IOSObjectArray_Set(*(a1 + 24), v14++, *(v16 + 16));
      if (v14 >= *(a2 + 8))
      {
        return result;
      }
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return result;
}

uint64_t sub_10001C3EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    goto LABEL_29;
  }

  v9 = a1;
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(a1, *(a3 + 8), a3, a4, a5, a6, a7, a8);
  v10 = *(a3 + 8);
  v11 = OrgApacheLuceneSearchScoreDoc_class_();
  v12 = [IOSObjectArray newArrayWithLength:v10 type:IOSClass_arrayType(v11, 1u)];
  JreStrongAssignAndConsume(v9 + 3, v12);
  v38 = v9;
  if (*(a3 + 8) >= 1)
  {
    v13 = 0;
    while (1)
    {
      v14 = *(a3 + 24 + 8 * v13);
      if (!v14)
      {
        break;
      }

      v15 = v13;
      v16 = *(v14 + 16);
      if (v16)
      {
        IOSObjectArray_Set(v9[3], v13, *(v14 + 16));
        if (*(v16 + 8) >= 1)
        {
          v17 = 0;
          v18 = v16;
          do
          {
            v19 = *(v18 + 24);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_30;
            }

            objc_opt_class();
            if (!v19)
            {
              goto LABEL_29;
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              JreThrowClassCastException();
            }

            if (!*(v19 + 24))
            {
LABEL_30:
              v35 = JreStrcat("$I$", v20, v21, v22, v23, v24, v25, v26, @"shard ");
              v36 = new_JavaLangIllegalArgumentException_initWithNSString_(v35);
              objc_exception_throw(v36);
            }

            ++v17;
            v18 += 8;
          }

          while (v17 < *(v16 + 8));
          v9 = v38;
        }
      }

      v13 = v15 + 1;
      if ((v15 + 1) >= *(a3 + 8))
      {
        goto LABEL_15;
      }
    }

LABEL_29:
    JreThrowNullPointerException();
  }

LABEL_15:
  if (!a2)
  {
    goto LABEL_29;
  }

  v27 = [a2 getSort];
  if (!v27)
  {
    goto LABEL_29;
  }

  v28 = v27;
  v29 = [IOSObjectArray newArrayWithLength:v27[2] type:OrgApacheLuceneSearchFieldComparator_class_()];
  JreStrongAssignAndConsume(v9 + 4, v29);
  result = JreStrongAssignAndConsume(v9 + 5, [IOSIntArray newArrayWithLength:v28[2]]);
  if (v28[2] >= 1)
  {
    v31 = 0;
    while (1)
    {
      v32 = *&v28[2 * v31 + 6];
      if (!v32)
      {
        break;
      }

      IOSObjectArray_Set(v38[4], v31, [v32 getComparatorWithInt:1 withInt:v31]);
      if ([v32 getReverse])
      {
        v33 = -1;
      }

      else
      {
        v33 = 1;
      }

      v34 = v38[5];
      result = v34[2];
      if (v31 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v31);
      }

      v34[v31++ + 3] = v33;
      if (v31 >= v28[2])
      {
        return result;
      }
    }

    goto LABEL_29;
  }

  return result;
}

id OrgApacheLuceneAnalysisUtilCharTokenizer_init(uint64_t a1)
{
  OrgApacheLuceneAnalysisTokenizer_init(a1);
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  v2 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()];
  JreStrongAssign((a1 + 72), v2);
  v3 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()];
  JreStrongAssign((a1 + 80), v3);
  Instance = OrgApacheLuceneAnalysisUtilCharacterUtils_getInstance();
  JreStrongAssign((a1 + 88), Instance);
  v5 = OrgApacheLuceneAnalysisUtilCharacterUtils_newCharacterBufferWithInt_(4096);

  return JreStrongAssign((a1 + 96), v5);
}

id OrgApacheLuceneAnalysisUtilCharTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(uint64_t a1)
{
  OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(a1);
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  v2 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()];
  JreStrongAssign((a1 + 72), v2);
  v3 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()];
  JreStrongAssign((a1 + 80), v3);
  Instance = OrgApacheLuceneAnalysisUtilCharacterUtils_getInstance();
  JreStrongAssign((a1 + 88), Instance);
  v5 = OrgApacheLuceneAnalysisUtilCharacterUtils_newCharacterBufferWithInt_(4096);

  return JreStrongAssign((a1 + 96), v5);
}

OrgApacheLuceneIndexSegmentDocValues_$1 *sub_10001D23C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (!a4)
  {
    goto LABEL_16;
  }

  if ([a4 longLongValue] == -1)
  {
    if (!a2)
    {
      goto LABEL_16;
    }

    v11 = &stru_100484358;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_16;
    }

    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_16;
    }

    a3 = *(v10 + 16);
    v11 = JavaLangLong_toStringWithLong_withInt_([a4 longLongValue], 36);
  }

  v12 = *(a2 + 8);
  if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100019888();
  }

  v13 = new_OrgApacheLuceneIndexSegmentReadState_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_(a3, v12, a5, OrgApacheLuceneStoreIOContext_READ_, v11);
  v14 = *(a2 + 8);
  if (!v14 || (v15 = [v14 getCodec]) == 0 || (v16 = objc_msgSend(v15, "docValuesFormat")) == 0)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v17 = [v16 fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:v13];
  v18 = [OrgApacheLuceneIndexSegmentDocValues__1 alloc];
  sub_10001D77C(v18, a1, a4, v17);

  return v18;
}

OrgApacheLuceneIndexSegmentDocValues *new_OrgApacheLuceneIndexSegmentDocValues_init()
{
  v0 = [OrgApacheLuceneIndexSegmentDocValues alloc];
  v1 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(&v0->genDVProducers_, v1);
  return v0;
}

id sub_10001D77C(uint64_t a1, void *a2, void *a3, void *a4)
{
  JreStrongAssign((a1 + 24), a2);
  JreStrongAssign((a1 + 32), a3);

  return OrgApacheLuceneUtilRefCount_initWithId_(a1, a4);
}

uint64_t OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withFloat_(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  OrgApacheLuceneUtilPackedPackedInts_Mutable_init();
  *(a1 + 24) = a4;
  MutableWithInt_withInt_withFloat = OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_withFloat_(a3, a2, *(a1 + 24));
  JreStrongAssign((a1 + 16), MutableWithInt_withInt_withFloat);
  v9 = *(a1 + 16);
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  v10 = [v9 getBitsPerValue];
  if (v10 == 64)
  {
    result = -1;
  }

  else
  {
    result = OrgApacheLuceneUtilPackedPackedInts_maxValueWithInt_(v10);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10001DA20(uint64_t result, unint64_t a2)
{
  if ((a2 & ~*(result + 8)) != 0)
  {
    v2 = result;
    v3 = OrgApacheLuceneUtilPackedPackedInts_unsignedBitsRequiredWithLong_(a2);
    v4 = [v2 size];
    MutableWithInt_withInt_withFloat = OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_withFloat_(v4, v3, *(v2 + 24));
    OrgApacheLuceneUtilPackedPackedInts_copy__WithOrgApacheLuceneUtilPackedPackedInts_Reader_withInt_withOrgApacheLuceneUtilPackedPackedInts_Mutable_withInt_withInt_withInt_(*(v2 + 16), 0, MutableWithInt_withInt_withFloat, 0, v4, 0x400u);
    JreStrongAssign((v2 + 16), MutableWithInt_withInt_withFloat);
    v6 = *(v2 + 16);
    if (!v6)
    {
      JreThrowNullPointerException();
    }

    v7 = [v6 getBitsPerValue];
    if (v7 == 64)
    {
      result = -1;
    }

    else
    {
      result = OrgApacheLuceneUtilPackedPackedInts_maxValueWithInt_(v7);
    }

    *(v2 + 8) = result;
  }

  return result;
}

OrgApacheLuceneUtilPackedGrowableWriter *new_OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withFloat_(uint64_t a1, uint64_t a2, float a3)
{
  v6 = [OrgApacheLuceneUtilPackedGrowableWriter alloc];
  OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withFloat_(v6, a1, a2, a3);
  return v6;
}

id OrgApacheLuceneIndexSegmentWriteState_initWithOrgApacheLuceneUtilInfoStream_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneIndexBufferedUpdates_withOrgApacheLuceneStoreIOContext_withNSString_(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  JreStrongAssign(a1 + 1, a2);
  JreStrongAssign(a1 + 6, a6);
  JreStrongAssign(a1 + 2, a3);
  JreStrongAssign(a1 + 3, a4);
  JreStrongAssign(a1 + 4, a5);
  JreStrongAssign(a1 + 8, a8);

  return JreStrongAssign(a1 + 9, a7);
}

id OrgApacheLuceneIndexSegmentWriteState_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 8), *(a2 + 8));
  JreStrongAssign((a1 + 16), *(a2 + 16));
  JreStrongAssign((a1 + 24), *(a2 + 24));
  JreStrongAssign((a1 + 32), *(a2 + 32));
  JreStrongAssign((a1 + 72), *(a2 + 72));
  JreStrongAssign((a1 + 64), a3);
  JreStrongAssign((a1 + 48), *(a2 + 48));
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 56);

  return JreStrongAssign((a1 + 56), v6);
}

OrgApacheLuceneIndexSegmentWriteState *new_OrgApacheLuceneIndexSegmentWriteState_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_(uint64_t a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexSegmentWriteState alloc];
  OrgApacheLuceneIndexSegmentWriteState_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_(v4, a1, a2);
  return v4;
}

_BYTE *OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnum_withInt_(uint64_t a1, void *a2, int a3)
{
  JreStrongAssign((a1 + 56), qword_100553E70);
  v6 = new_OrgApacheLuceneStoreByteArrayDataInput_init();
  JreStrongAssignAndConsume((a1 + 64), v6);
  JreStrongAssign((a1 + 72), qword_100553E70);
  v7 = new_OrgApacheLuceneStoreByteArrayDataInput_init();
  JreStrongAssignAndConsume((a1 + 80), v7);
  JreStrongAssign((a1 + 88), qword_100553E70);
  v8 = new_OrgApacheLuceneStoreByteArrayDataInput_init();
  JreStrongAssignAndConsume((a1 + 96), v8);
  JreStrongAssign((a1 + 160), qword_100553E70);
  v9 = new_OrgApacheLuceneStoreByteArrayDataInput_init();
  JreStrongAssignAndConsume((a1 + 168), v9);
  objc_storeWeak((a1 + 176), a2);
  *(a1 + 8) = a3;
  if (!a2 || (v10 = a2[5]) == 0 || (Weak = objc_loadWeak((v10 + 96))) == 0 || (v12 = Weak[2]) == 0 || (JreStrongAssign((a1 + 144), [v12 newTermState]), (v13 = *(a1 + 144)) == 0))
  {
    JreThrowNullPointerException();
  }

  *(v13 + 24) = -1;
  JreStrongAssignAndConsume((a1 + 152), [IOSLongArray newArrayWithLength:*(a2[5] + 88)]);
  result = objc_loadWeak((a2[5] + 96));
  *(a1 + 24) = result[36];
  return result;
}

OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *new_OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnum_withInt_(void *a1, int a2)
{
  v4 = [OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame alloc];
  OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnum_withInt_(v4, a1, a2);
  return v4;
}

uint64_t OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame_class_()
{
  if (qword_100553E80 != -1)
  {
    sub_10001FF24();
  }

  return qword_100553E78;
}

OrgApacheLuceneUtilPackedBulkOperationPacked2 *new_OrgApacheLuceneUtilPackedBulkOperationPacked2_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked2 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 2);
  return v0;
}

id OrgApacheLuceneIndexSegmentDocValuesProducer_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneIndexSegmentDocValues_(id *a1, uint64_t a2, uint64_t a3, OrgApacheLuceneIndexFieldInfos *a4, void *a5, void *a6)
{
  OrgApacheLuceneCodecsDocValuesProducer_init();
  v8 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(a1 + 1, v8);
  v9 = new_JavaUtilIdentityHashMap_init();
  v10 = JavaUtilCollections_newSetFromMapWithJavaUtilMap_(v9);
  JreStrongAssign(a1 + 2, v10);
  v11 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(a1 + 3, v11);
  if (!a2 || (v12 = *(a2 + 8)) == 0)
  {
    JreThrowNullPointerException();
  }

  v52 = a2;
  v13 = [v12 getVersion];
  if (!v13)
  {
    goto LABEL_29;
  }

  if ((atomic_load_explicit(OrgApacheLuceneUtilVersion__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if ([v13 onOrAfterWithOrgApacheLuceneUtilVersion:OrgApacheLuceneUtilVersion_LUCENE_4_9_0_])
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    if (!a5)
    {
LABEL_74:
      JreThrowNullPointerException();
    }

    result = [a5 countByEnumeratingWithState:&v71 objects:v79 count:16];
    v15 = result;
    if (result)
    {
      v54 = 0;
      v16 = *v72;
      do
      {
        v17 = 0;
        do
        {
          if (*v72 != v16)
          {
            objc_enumerationMutation(a5);
          }

          v18 = *(*(&v71 + 1) + 8 * v17);
          if (!v18)
          {
            goto LABEL_74;
          }

          v19 = [*(*(&v71 + 1) + 8 * v17) getDocValuesType];
          if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            objc_opt_class();
          }

          if (v19 != OrgApacheLuceneIndexDocValuesTypeEnum_values_)
          {
            v20 = [v18 getDocValuesGen];
            if (v20 == -1)
            {
              if (!v54)
              {
                if (!a6 || (v54 = [a6 getDocValuesProducerWithLong:-1 withOrgApacheLuceneIndexSegmentCommitInfo:v52 withOrgApacheLuceneStoreDirectory:a3 withOrgApacheLuceneIndexFieldInfos:a4], objc_msgSend(a1[3], "addWithId:", JavaLangLong_valueOfWithLong_(-1)), (v24 = a1[2]) == 0))
                {
                  JreThrowNullPointerException();
                }

                [v24 addWithId:v54];
              }

              [a1[1] putWithId:v18[1] withId:v54];
            }

            else
            {
              if (!a6 || (v78 = v18, v21 = +[IOSObjectArray arrayWithObjects:count:type:](IOSObjectArray, "arrayWithObjects:count:type:", &v78, 1, OrgApacheLuceneIndexFieldInfo_class_()), v22 = [a6 getDocValuesProducerWithLong:v20 withOrgApacheLuceneIndexSegmentCommitInfo:v52 withOrgApacheLuceneStoreDirectory:a3 withOrgApacheLuceneIndexFieldInfos:new_OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneIndexFieldInfoArray_(v21)], objc_msgSend(a1[3], "addWithId:", JavaLangLong_valueOfWithLong_(v20)), (v23 = a1[2]) == 0))
              {
                JreThrowNullPointerException();
              }

              [v23 addWithId:v22];
              [a1[1] putWithId:v18[1] withId:v22];
            }
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        result = [a5 countByEnumeratingWithState:&v71 objects:v79 count:16];
        v15 = result;
      }

      while (result);
    }
  }

  else
  {
LABEL_29:
    v25 = new_JavaUtilHashMap_init();
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    if (!a5)
    {
LABEL_72:
      JreThrowNullPointerException();
    }

    v26 = v25;
    v27 = [a5 countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v27)
    {
      v28 = *v68;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v68 != v28)
          {
            objc_enumerationMutation(a5);
          }

          v30 = *(*(&v67 + 1) + 8 * i);
          if (!v30)
          {
            goto LABEL_72;
          }

          v31 = [*(*(&v67 + 1) + 8 * i) getDocValuesType];
          if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            objc_opt_class();
          }

          if (v31 != OrgApacheLuceneIndexDocValuesTypeEnum_values_)
          {
            v32 = -[JavaUtilHashMap getWithId:](v26, "getWithId:", JavaLangLong_valueOfWithLong_([v30 getDocValuesGen]));
            if (!v32)
            {
              v32 = new_JavaUtilArrayList_init();
              -[JavaUtilHashMap putWithId:withId:](v26, "putWithId:withId:", JavaLangLong_valueOfWithLong_([v30 getDocValuesGen]), v32);
              if (!v32)
              {
                JreThrowNullPointerException();
              }
            }

            [(JavaUtilArrayList *)v32 addWithId:v30];
          }
        }

        v27 = [a5 countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v27);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v33 = [(JavaUtilHashMap *)v26 entrySet];
    v34 = v33;
    if (!v33)
    {
      JreThrowNullPointerException();
    }

    result = [v33 countByEnumeratingWithState:&v63 objects:v76 count:16];
    v35 = result;
    if (result)
    {
      obja = *v64;
      v55 = v34;
      do
      {
        v36 = 0;
        do
        {
          if (*v64 != obja)
          {
            objc_enumerationMutation(v55);
          }

          v37 = *(*(&v63 + 1) + 8 * v36);
          if (!v37 || (v38 = [*(*(&v63 + 1) + 8 * v36) getKey]) == 0)
          {
            JreThrowNullPointerException();
          }

          v39 = [v38 longLongValue];
          v40 = [v37 getValue];
          v41 = v40;
          if (v39 == -1)
          {
            if (!a6)
            {
              goto LABEL_77;
            }

            v44 = -1;
            v43 = a4;
          }

          else
          {
            if (!a6 || !v40)
            {
LABEL_77:
              JreThrowNullPointerException();
            }

            v42 = [v40 toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", objc_msgSend(v40, "size"), OrgApacheLuceneIndexFieldInfo_class_())}];
            v43 = new_OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneIndexFieldInfoArray_(v42);
            v44 = v39;
          }

          v45 = [a6 getDocValuesProducerWithLong:v44 withOrgApacheLuceneIndexSegmentCommitInfo:v52 withOrgApacheLuceneStoreDirectory:a3 withOrgApacheLuceneIndexFieldInfos:v43];
          [a1[3] addWithId:JavaLangLong_valueOfWithLong_(v39)];
          v46 = a1[2];
          if (!v46)
          {
            goto LABEL_77;
          }

          [v46 addWithId:v45];
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          if (!v41)
          {
LABEL_71:
            JreThrowNullPointerException();
          }

          v47 = [v41 countByEnumeratingWithState:&v59 objects:v75 count:16];
          if (v47)
          {
            v48 = *v60;
            do
            {
              for (j = 0; j != v47; j = j + 1)
              {
                if (*v60 != v48)
                {
                  objc_enumerationMutation(v41);
                }

                v50 = *(*(&v59 + 1) + 8 * j);
                if (!v50)
                {
                  goto LABEL_71;
                }

                [a1[1] putWithId:*(v50 + 8) withId:v45];
              }

              v47 = [v41 countByEnumeratingWithState:&v59 objects:v75 count:16];
            }

            while (v47);
          }

          v36 = v36 + 1;
        }

        while (v36 != v35);
        result = [v55 countByEnumeratingWithState:&v63 objects:v76 count:16];
        v35 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_100020C74(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (a13)
    {
      [a13 decRefWithJavaUtilList:*(v13 + 24)];
      objc_exception_rethrow();
    }

    JreThrowNullPointerException();
  }

  _Unwind_Resume(exc_buf);
}

void sub_100020D4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100020D54);
  }

  objc_terminate();
}

OrgApacheLuceneIndexSegmentDocValuesProducer *new_OrgApacheLuceneIndexSegmentDocValuesProducer_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneIndexSegmentDocValues_(uint64_t a1, uint64_t a2, OrgApacheLuceneIndexFieldInfos *a3, void *a4, void *a5)
{
  v10 = [OrgApacheLuceneIndexSegmentDocValuesProducer alloc];
  OrgApacheLuceneIndexSegmentDocValuesProducer_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneIndexSegmentDocValues_(&v10->super.super.isa, a1, a2, a3, a4, a5);
  return v10;
}

uint64_t OrgApacheLuceneIndexSegmentDocValuesProducer_class_()
{
  if ((atomic_load_explicit(&OrgApacheLuceneIndexSegmentDocValuesProducer__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000215C4();
  }

  if (qword_100553EA0 != -1)
  {
    sub_1000215D0();
  }

  return qword_100553E98;
}

void sub_1000218E4(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_end_catch();
  _Unwind_Resume(a1);
}

void sub_100021918(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
  }

  JUMPOUT(0x1000217B4);
}

void sub_100021CE8()
{
  objc_end_catch();
  objc_end_catch();
  JUMPOUT(0x100021D14);
}

void sub_100021CF4(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_100021D0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100021D14);
  }

  objc_terminate();
}

OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat *new_OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_init()
{
  v0 = [OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat alloc];
  OrgApacheLuceneCodecsSegmentInfoFormat_init(v0, v1);
  return v0;
}

id OrgApacheLuceneUtilBitSetIterator_getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(uint64_t a1)
{
  v2 = OrgApacheLuceneUtilFixedBitSet_class_();

  return sub_100021FDC(a1, v2);
}

id OrgApacheLuceneUtilBitSetIterator_getSparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(uint64_t a1)
{
  v2 = OrgApacheLuceneUtilSparseFixedBitSet_class_();

  return sub_100021FDC(a1, v2);
}

id OrgApacheLuceneUtilBitSetIterator_initWithOrgApacheLuceneUtilBitSet_withLong_(uint64_t a1, void *a2, uint64_t a3)
{
  OrgApacheLuceneSearchDocIdSetIterator_init(a1, a2);
  *(a1 + 32) = -1;
  JreStrongAssign((a1 + 8), a2);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  result = [a2 length];
  *(a1 + 16) = result;
  *(a1 + 24) = a3;
  return result;
}

id sub_100021FDC(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a1)
  {
    goto LABEL_10;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (!a2)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v4 = *(a1 + 8);
  if (![a2 isInstance:v4])
  {
    return 0;
  }

  return [a2 cast:v4];
}

OrgApacheLuceneUtilBitSetIterator *new_OrgApacheLuceneUtilBitSetIterator_initWithOrgApacheLuceneUtilBitSet_withLong_(void *a1, uint64_t a2)
{
  v4 = [OrgApacheLuceneUtilBitSetIterator alloc];
  OrgApacheLuceneUtilBitSetIterator_initWithOrgApacheLuceneUtilBitSet_withLong_(v4, a1, a2);
  return v4;
}

OrgApacheLuceneStoreRAMFile *new_OrgApacheLuceneStoreRAMFile_init()
{
  v0 = [OrgApacheLuceneStoreRAMFile alloc];
  v1 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&v0->buffers_, v1);
  return v0;
}

OrgApacheLuceneStoreRAMFile *new_OrgApacheLuceneStoreRAMFile_initWithOrgApacheLuceneStoreRAMDirectory_(void *a1)
{
  v2 = [OrgApacheLuceneStoreRAMFile alloc];
  v3 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&v2->buffers_, v3);
  JreStrongAssign(&v2->directory_, a1);
  return v2;
}

BOOL OrgApacheLuceneUtilPackedPacked64SingleBlock_isSupportedWithInt_(int a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedPacked64SingleBlock__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000249E4();
  }

  return JavaUtilArrays_binarySearchWithIntArray_withInt_(qword_100553EA8, a1) >= 0;
}

void *OrgApacheLuceneUtilPackedPacked64SingleBlock_initWithInt_withInt_(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  OrgApacheLuceneUtilPackedPackedInts_MutableImpl_initWithInt_withInt_(a1, a2, a3);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedPacked64SingleBlock__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000249E4();
  }

  if (v4 % (64 / a3))
  {
    v6 = v4 / (64 / a3) + 1;
  }

  else
  {
    v6 = v4 / (64 / a3);
  }

  v7 = [IOSLongArray newArrayWithLength:v6];

  return JreStrongAssignAndConsume((a1 + 16), v7);
}

void *OrgApacheLuceneUtilPackedPacked64SingleBlock_createWithOrgApacheLuceneStoreDataInput_withInt_withInt_(void *a1, uint64_t a2, int a3)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedPacked64SingleBlock__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000249E4();
  }

  v6 = OrgApacheLuceneUtilPackedPacked64SingleBlock_createWithInt_withInt_(a2, a3);
  if (!v6 || (v7 = v6, (v8 = v6[2]) == 0))
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v9 = 0;
  while (v9 < *(v8 + 8))
  {
    if (a1)
    {
      v10 = [a1 readLong];
      v11 = v7[2];
      v12 = *(v11 + 8);
      if (v9 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v9);
      }

      *(v11 + 16 + 8 * v9++) = v10;
      v8 = v7[2];
      if (v8)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  return v7;
}

id OrgApacheLuceneUtilPackedPacked64SingleBlock_createWithInt_withInt_(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedPacked64SingleBlock__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000249E4();
  }

  v4 = a2 - 1;
  if ((a2 - 1) >= 0x20 || ((0x80108BFF >> v4) & 1) == 0)
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Unsupported number of bits per value: 32");
    objc_exception_throw(v7);
  }

  v5 = objc_alloc(*(&off_1003E96B0)[v4]);
  OrgApacheLuceneUtilPackedPacked64SingleBlock_initWithInt_withInt_(v5, a1, a2);

  return v5;
}

id OrgApacheLuceneCodecsBlocktreeFieldReader_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilBytesRef_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, int a10, void *a11, void *a12, void *a13)
{
  OrgApacheLuceneIndexTerms_init();
  JreStrongAssign((a1 + 16), a3);
  objc_storeWeak((a1 + 96), a2);
  *(a1 + 8) = a4;
  *(a1 + 24) = a6;
  *(a1 + 32) = a7;
  *(a1 + 40) = a8;
  *(a1 + 48) = a9;
  JreStrongAssign((a1 + 64), a5);
  *(a1 + 88) = a10;
  JreStrongAssign((a1 + 72), a12);
  JreStrongAssign((a1 + 80), a13);
  if (!a5)
  {
    goto LABEL_10;
  }

  *(a1 + 56) = [new_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(*(a5 + 8) readVLong:*(a5 + 20))]>> 2;
  if (a11)
  {
    v21 = [a11 clone];
    if (v21)
    {
      v22 = v21;
      [v21 seekWithLong:a9];
      Singleton = OrgApacheLuceneUtilFstByteSequenceOutputs_getSingleton();
      v24 = new_OrgApacheLuceneUtilFstFST_initWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilFstOutputs_(v22, Singleton);

      return JreStrongAssignAndConsume((a1 + 104), v24);
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  return JreStrongAssign((a1 + 104), 0);
}

OrgApacheLuceneCodecsBlocktreeFieldReader *new_OrgApacheLuceneCodecsBlocktreeFieldReader_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilBytesRef_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, int a9, void *a10, void *a11, void *a12)
{
  v19 = [OrgApacheLuceneCodecsBlocktreeFieldReader alloc];
  OrgApacheLuceneCodecsBlocktreeFieldReader_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilBytesRef_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(v19, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  return v19;
}

uint64_t OrgApacheLuceneCodecsBlocktreeFieldReader_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeFieldReader__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10002535C();
  }

  if (qword_100553EC0 != -1)
  {
    sub_100025368();
  }

  return qword_100553EB8;
}

OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper *new_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_initWithOrgApacheLuceneSearchMultiTermQuery_(void *a1)
{
  v2 = [OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper alloc];
  OrgApacheLuceneSearchQuery_init(v2);
  JreStrongAssign((&v2->super.boost_ + 1), a1);
  return v2;
}

id sub_100025728(uint64_t a1, uint64_t a2)
{
  v3 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a2);
  JreStrongAssign((a1 + 8), v3);

  return JreStrongAssign((a1 + 16), 0);
}

BOOL sub_100025810(void *a1, void *a2)
{
  MaxClauseCount = OrgApacheLuceneSearchBooleanQuery_getMaxClauseCount();
  v5 = JavaLangMath_minWithInt_withInt_(16, MaxClauseCount);
  if (v5 < 1)
  {
LABEL_9:
    if (a1)
    {
      return [a1 next] == 0;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_12;
  }

  v6 = v5;
  while (1)
  {
    v7 = [a1 next];
    v8 = v7 == 0;
    if (!v7)
    {
      return v8;
    }

    v9 = v7;
    v10 = [a1 termState];
    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = v10;
    if (![v10 isRealTerm])
    {
      return v8;
    }

    if (!a2)
    {
      goto LABEL_12;
    }

    v12 = OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(v9);
    v13 = [a1 docFreq];
    v14 = [a1 totalTermFreq];
    v15 = [OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState alloc];
    JreStrongAssign(&v15->term_, v12);
    JreStrongAssign(&v15->state_, v11);
    v15->docFreq_ = v13;
    v15->totalTermFreq_ = v14;
    [a2 addWithId:v15];
    if (!--v6)
    {
      goto LABEL_9;
    }
  }
}

OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *sub_10002593C(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    goto LABEL_40;
  }

  v4 = [a2 reader];
  if (!v4)
  {
    goto LABEL_40;
  }

  v5 = *(*(a1 + 24) + 12);
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = [v4 termsWithNSString:*(v5 + 12)];
  if (v6)
  {
    v7 = v6;
    v8 = [*(*(a1 + 24) + 12) getTermsEnumWithOrgApacheLuceneIndexTerms:v6];
    v9 = new_JavaUtilArrayList_init();
    if (sub_100025810(v8, v9))
    {
      v10 = new_OrgApacheLuceneSearchBooleanQuery_Builder_init();
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v11 = [(JavaUtilArrayList *)v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v43;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v43 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(a1 + 32);
            if (!v15)
            {
              goto LABEL_40;
            }

            v16 = *(*(&v42 + 1) + 8 * i);
            v17 = new_OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_([v15 getTopReaderContext]);
            if (!v16)
            {
              goto LABEL_40;
            }

            v18 = v17;
            [(OrgApacheLuceneIndexTermContext *)v17 register__WithOrgApacheLuceneIndexTermState:*(v16 + 16) withInt:a2[7] withInt:*(v16 + 24) withLong:*(v16 + 32)];
            v19 = new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(*(*(*(a1 + 24) + 12) + 12), *(v16 + 8));
            v20 = new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(v19, v18);
            if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
            {
              sub_10002605C();
            }

            [(OrgApacheLuceneSearchBooleanQuery_Builder *)v10 addWithOrgApacheLuceneSearchQuery:v20 withOrgApacheLuceneSearchBooleanClause_OccurEnum:qword_100557BA8];
          }

          v12 = [(JavaUtilArrayList *)v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v12);
      }

      v21 = new_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_([(OrgApacheLuceneSearchBooleanQuery_Builder *)v10 build]);
      [a1 score];
      [(OrgApacheLuceneSearchQuery *)v21 setBoostWithFloat:?];
      v22 = *(a1 + 32);
      if (v22)
      {
        v23 = [v22 rewriteWithOrgApacheLuceneSearchQuery:v21];
        if (v23)
        {
          v24 = [v23 createWeightWithOrgApacheLuceneSearchIndexSearcher:*(a1 + 32) withBoolean:*(a1 + 40)];
          v25 = [OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet alloc];
          sub_100025728(v25, v24);
          v26 = v25;
          return v26;
        }
      }
    }

    else
    {
      v29 = [a2 reader];
      if (v29)
      {
        v30 = new_OrgApacheLuceneUtilDocIdSetBuilder_initWithInt_([v29 maxDoc]);
        if (-[JavaUtilArrayList isEmpty](v9, "isEmpty") || (v31 = [v7 iterator], v38 = 0u, v39 = 0u, v40 = 0u, v41 = 0u, (v32 = -[JavaUtilArrayList countByEnumeratingWithState:objects:count:](v9, "countByEnumeratingWithState:objects:count:", &v38, v46, 16)) == 0))
        {
          v34 = 0;
        }

        else
        {
          v33 = v32;
          v34 = 0;
          v35 = *v39;
          do
          {
            for (j = 0; j != v33; j = j + 1)
            {
              if (*v39 != v35)
              {
                objc_enumerationMutation(v9);
              }

              if (!v31)
              {
                goto LABEL_40;
              }

              v37 = *(*(&v38 + 1) + 8 * j);
              if (!v37)
              {
                goto LABEL_40;
              }

              [v31 seekExactWithOrgApacheLuceneUtilBytesRef:*(v37 + 8) withOrgApacheLuceneIndexTermState:*(v37 + 16)];
              v34 = [v31 postingsWithOrgApacheLuceneIndexPostingsEnum:v34 withInt:0];
              [(OrgApacheLuceneUtilDocIdSetBuilder *)v30 addWithOrgApacheLuceneSearchDocIdSetIterator:v34];
            }

            v33 = [(JavaUtilArrayList *)v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v33);
        }

        if (v8)
        {
          do
          {
            v34 = [v8 postingsWithOrgApacheLuceneIndexPostingsEnum:v34 withInt:0];
            [(OrgApacheLuceneUtilDocIdSetBuilder *)v30 addWithOrgApacheLuceneSearchDocIdSetIterator:v34];
          }

          while ([v8 next]);
          v26 = sub_100026010([(OrgApacheLuceneUtilDocIdSetBuilder *)v30 build]);
          return v26;
        }
      }
    }

LABEL_40:
    JreThrowNullPointerException();
  }

  v27 = sub_100026010(0);

  return v27;
}