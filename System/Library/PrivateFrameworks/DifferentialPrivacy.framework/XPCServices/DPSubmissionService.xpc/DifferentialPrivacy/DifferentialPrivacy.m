void sub_100002188(id a1)
{
  qword_10007E758 = [NSSet setWithArray:&off_100075AA8];

  _objc_release_x1();
}

void sub_100005BD4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v10;
  if (v10 && [v10 statusCode] <= 299)
  {
    v12 = +[_DPLog service];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v22 = [v11 statusCode];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Client has uploaded data successfully: received %ld response", buf, 0xCu);
    }

    v13 = *(*(a1 + 56) + 16);
LABEL_13:
    v13();
    goto LABEL_14;
  }

  v14 = +[_DPLog service];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 64);
    v19 = [v11 statusCode];
    v20 = [v11 allHeaderFields];
    *buf = 134218754;
    v22 = v18;
    v23 = 2048;
    v24 = v19;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v20;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Client failed to upload data, number of retries left: %ld, status: %ld, error: %@, headers in reply: %@", buf, 0x2Au);
  }

  v15 = *(a1 + 64);
  if (!v15)
  {
    if (v11)
    {
      v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Server returned status code: %ld", [v11 statusCode]);
      v17 = [_DPDediscoError errorWithCode:205 description:v16];

      v9 = v17;
    }

    v13 = *(*(a1 + 56) + 16);
    goto LABEL_13;
  }

  [*(a1 + 32) _uploadData:*(a1 + 40) withHeaders:*(a1 + 48) withRetries:v15 - 1 onCompletion:*(a1 + 56)];
LABEL_14:
}

void sub_100005F28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v10;
  if (v7 && !v9 && [v10 statusCode] == 200)
  {
    v12 = +[_DPLog service];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Config file was successfully downloaded.", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13 = +[_DPLog service];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 56);
      *buf = 134218498;
      v19 = v14;
      v20 = 2048;
      v21 = [v11 statusCode];
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Client failed to download config file, number of retries left: %ld, status: %ld, error: %@", buf, 0x20u);
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      [*(a1 + 32) _downloadConfigFromURL:*(a1 + 40) retries:v15 - 1 onCompletion:*(a1 + 48)];
    }

    else
    {
      v16 = +[_DPLog service];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10004DC34(v11, v9, v16);
      }

      if (!v9)
      {
        v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Client returned status code: %ld", [v11 statusCode]);
        v9 = [_DPDediscoError errorWithCode:201 description:v17];
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_100006D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006D48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006D60(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 48;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000079F4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100009790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000097D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000097F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[_DPLog service];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004E30C(v6, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Config was downloaded successfully", v23, 2u);
  }

  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v5;
  v17 = v5;

  v18 = *(*(a1 + 48) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v6;
  v20 = v6;

  if (v17)
  {
    v21 = v6 == 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  *(*(*(a1 + 56) + 8) + 24) = v22;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100009974(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000B4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B500(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B518(uint64_t a1, __SecKey *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  if (v8)
  {
    if (mobileactivationErrorHasDomainAndErrorCode())
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v10 = +[_DPLog service];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004E980(v8, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  else
  {
    v17 = [v7 objectAtIndexedSubscript:0];

    v18 = SecCertificateCopyData(v17);
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = [v7 objectAtIndexedSubscript:1];

    v22 = SecCertificateCopyData(v21);
    v23 = *(*(a1 + 64) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    error = 0;
    v25 = SecKeyCreateSignature(a2, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, *(a1 + 40), &error);
    v26 = *(*(a1 + 72) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    if (error)
    {
      v28 = +[_DPLog service];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10004E9EC(&error, v28, v29, v30, v31, v32, v33, v34);
      }

      v35 = *(*(a1 + 72) + 8);
      v36 = *(v35 + 40);
      *(v35 + 40) = 0;
    }

    if (a2)
    {
      CFRelease(a2);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
  objc_autoreleasePoolPop(v9);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = +[_DPLog service];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "starting DPSubmissionService", v8, 2u);
  }

  _set_user_dir_suffix();
  v4 = NSTemporaryDirectory();
  v5 = objc_opt_new();
  v6 = +[NSXPCListener serviceListener];
  [v6 setDelegate:v5];
  [v6 resume];

  return 0;
}

void sub_10000FF4C(id a1)
{
  qword_10007E778 = objc_alloc_init(_DPSubmissionService);

  _objc_release_x1();
}

void sub_100010904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010930(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100010948(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_10001295C()
{
  v0 = sub_1000505A0();
  sub_1000142C8(v0, qword_100084310);
  *sub_100012CA8(v0, qword_100084310) = 300;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_1000129EC()
{
  v0 = sub_100050350();
  sub_1000142C8(v0, qword_100084328);
  sub_100012CA8(v0, qword_100084328);
  return sub_100050360();
}

id _DPDediscoAlgorithmParametersOtherParams.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _DPDediscoPCCNetworkingService.init()()
{
  v1 = sub_100050750();
  v2 = [objc_opt_self() containerWithIdentifier:v1];

  v3 = [v2 publicCloudDatabase];
  v4 = &v0[OBJC_IVAR____DPDediscoPCCNetworkingService_database];
  *(v4 + 3) = sub_100012C5C();
  *(v4 + 4) = &protocol witness table for CKDatabase;
  *v4 = v3;
  v5 = &v0[OBJC_IVAR____DPDediscoPCCNetworkingService_serviceName];
  *v5 = 0xD000000000000022;
  *(v5 + 1) = 0x800000010005AFE0;
  if (qword_10007C5C0 != -1)
  {
    swift_once();
  }

  v6 = sub_1000505A0();
  v7 = sub_100012CA8(v6, qword_100084310);
  (*(*(v6 - 8) + 16))(&v0[OBJC_IVAR____DPDediscoPCCNetworkingService_timeout], v7, v6);

  v9.receiver = v0;
  v9.super_class = type metadata accessor for _DPDediscoPCCNetworkingService();
  return objc_msgSendSuper2(&v9, "init");
}

unint64_t sub_100012C5C()
{
  result = qword_10007C650;
  if (!qword_10007C650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007C650);
  }

  return result;
}

uint64_t sub_100012CA8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for _DPDediscoPCCNetworkingService()
{
  result = qword_10007C688;
  if (!qword_10007C688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012D54(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  *(a3 + 16) = a2;
  swift_errorRetain();

  dispatch_group_leave(a4);
}

uint64_t sub_100012EA0(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v21[0] = a6;
  v11 = type metadata accessor for BaaCertificateChain(0);
  v22 = *(v11 - 8);
  v12 = *(v22 + 64);
  __chkstk_darwin();
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  sub_10001414C(a2, a3);
  sub_100013E20(v15, v16);
  *a1 = a2;
  a1[1] = a3;
  v17 = a1[2];
  v18 = a1[3];
  sub_10001414C(a4, a5);
  sub_100013E20(v17, v18);
  a1[2] = a4;
  a1[3] = a5;
  v21[4] = v21[0];
  sub_1000141BC(&qword_10007C6D8, type metadata accessor for BaaCertificateChain);
  sub_1000504E0();
  v19 = *(type metadata accessor for BaaSignedDonation(0) + 28);
  sub_100014204(a1 + v19, &qword_10007C6E0, qword_100055798);
  sub_100014264(v14, a1 + v19);
  return (*(v22 + 56))(a1 + v19, 0, 1, v11);
}

uint64_t sub_100013078(uint64_t a1, uint64_t a2)
{
  v4 = sub_100050390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a2;
  sub_1000141BC(&qword_10007C6C8, &type metadata accessor for Ckcode_ProtectedEnvelope);
  sub_1000504E0();
  v9 = *(type metadata accessor for ProtectedDonation(0) + 20);
  sub_100014204(a1 + v9, &qword_10007C6D0, &qword_100055790);
  (*(v5 + 32))(a1 + v9, v8, v4);
  return (*(v5 + 56))(a1 + v9, 0, 1, v4);
}

uint64_t sub_100013200(uint64_t a1, uint64_t a2)
{
  v3 = *(*(sub_1000503B0() - 8) + 64);
  __chkstk_darwin();
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  return sub_100050370();
}

id _DPDediscoPCCNetworkingService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _DPDediscoPCCNetworkingService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100013414@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id _s19DPSubmissionService023_DPDediscoPCCNetworkingB0C18submitSyncronously17serializedPayload19baaCertificateChain0I9Signature7optionsSo7NSErrorCSg10Foundation4DataV_AA017_DPBAACertificateK0CANSo24DediscoNetworkingOptionsVtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a3;
  v76 = a5;
  v73 = a2;
  v74 = a4;
  v72 = a1;
  v6 = sub_1000505E0();
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  v8 = (__chkstk_darwin)();
  v82 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = &v66 - v10;
  v70 = sub_1000503B0();
  v69 = *(v70 - 8);
  v11 = *(v69 + 64);
  __chkstk_darwin(v70);
  v78 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BaaSignedDonation(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v77 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100013EC0(&qword_10007C698, &qword_100055770);
  v16 = *(v71 - 8);
  v17 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71);
  v19 = &v66 - v18;
  v20 = sub_100013EC0(&qword_10007C6A0, &qword_100055778);
  v21 = *(v20 - 8);
  v22 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v24 = &v66 - v23;
  v25 = sub_100013EC0(&qword_10007C6A8, &qword_100055780);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - 8);
  v28 = &v66 - v27;
  v29 = dispatch_group_create();
  v30 = swift_allocObject();
  v80 = v30;
  v81 = v29;
  *(v30 + 16) = 0;
  v79 = (v30 + 16);
  dispatch_group_enter(v29);
  v84 = v5;
  v31 = *(v5 + OBJC_IVAR____DPDediscoPCCNetworkingService_serviceName);
  v32 = *(v5 + OBJC_IVAR____DPDediscoPCCNetworkingService_serviceName + 8);
  v33 = type metadata accessor for ProtectedDonation(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v68 = v33;
  v67 = v35;
  v66 = v34 + 56;
  (v35)(v28, 1, 1);
  (*(v21 + 104))(v24, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v20);
  v36 = objc_allocWithZone(sub_100013EC0(&qword_10007C6B0, &qword_100055788));

  v37 = sub_100050340();
  result = [v37 configuration];
  if (result)
  {
    v39 = result;
    [result setPreferAnonymousRequests:1];

    if (qword_10007C5C8 != -1)
    {
      swift_once();
    }

    v40 = sub_100050350();
    v41 = sub_100012CA8(v40, qword_100084328);
    (*(*(v40 - 8) + 16))(v19, v41, v40);
    (*(v16 + 104))(v19, enum case for CodeOperation.DataProtectionType.SGX<A, B>(_:), v71);
    v42 = sub_100050320();
    __chkstk_darwin(v42);
    v43 = v73;
    *(&v66 - 6) = v72;
    *(&v66 - 5) = v43;
    v44 = v75;
    v45 = v76;
    *(&v66 - 4) = v74;
    *(&v66 - 3) = v45;
    *(&v66 - 2) = v44;
    v46 = sub_1000141BC(&qword_10007C6B8, type metadata accessor for BaaSignedDonation);
    v47 = v77;
    sub_1000504E0();
    v87[3] = v13;
    v87[4] = v46;
    v48 = v47;
    v49 = sub_100013F64(v87);
    sub_100013FC8(v47, v49);
    sub_1000503F0();
    v50 = v78;
    v51 = sub_1000503A0();
    v52 = v81;
    v53 = v79;
    __chkstk_darwin(v51);
    *(&v66 - 2) = v50;
    sub_1000141BC(&qword_10007C6C0, type metadata accessor for ProtectedDonation);
    v54 = v68;
    sub_1000504E0();
    v67(v28, 0, 1, v54);
    sub_100050330();
    sub_10001402C(v48);
    (*(v69 + 8))(v50, v70);
    v55 = swift_allocObject();
    *(v55 + 16) = v80;
    *(v55 + 24) = v52;

    v56 = v52;
    sub_100050310();
    v57 = *(v84 + OBJC_IVAR____DPDediscoPCCNetworkingService_database + 24);
    v58 = *(v84 + OBJC_IVAR____DPDediscoPCCNetworkingService_database + 32);
    sub_1000140EC((v84 + OBJC_IVAR____DPDediscoPCCNetworkingService_database), v57);
    (*(v58 + 8))(v37, v57, v58);

    v59 = v82;
    sub_1000505C0();
    v60 = v83;
    sub_1000505D0();
    v61 = v86;
    v62 = *(v85 + 8);
    v62(v59, v86);
    sub_100050840();
    v62(v60, v61);
    if (sub_1000505B0())
    {
      v63 = sub_100050750();
      v64 = [objc_opt_self() errorWithCode:200 description:v63];
    }

    else
    {
      swift_beginAccess();
      if (*v53)
      {
        v65 = *v53;
        swift_errorRetain();
        v64 = sub_100050280();
      }

      else
      {

        return 0;
      }
    }

    return v64;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100013D7C()
{
  result = sub_1000505A0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100013E20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100013E74(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100013EC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100013F08()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_100013F64(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100013FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaaSignedDonation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001402C(uint64_t a1)
{
  v2 = type metadata accessor for BaaSignedDonation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000140A4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1000140EC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10001414C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000141BC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014204(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100013EC0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100014264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaaCertificateChain(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1000142C8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id DPPPM_0_2_1_PayloadEncoderShim.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DPPPM_0_2_1_PayloadEncoderShim();
  return objc_msgSendSuper2(&v2, "init");
}

id DPPPM_0_2_1_PayloadEncoderShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DPPPM_0_2_1_PayloadEncoderShim();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Class sub_100014828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, void *a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, id))
{
  v18 = a10;
  v19 = a12(a3, a4, a5, a6, a7, a8, a9, v18);
  v21 = v20;

  v22.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v19, v21);

  return v22.super.isa;
}

Class sub_100014B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4();
  v6 = v5;
  v7.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v4, v6);

  return v7.super.isa;
}

unint64_t sub_10001508C(unint64_t result, void *a2, unint64_t a3)
{
  v3 = result;
  if (result > 8)
  {
    sub_1000508F0(49);

    v16._countAndFlagsBits = sub_100050950();
    sub_100050770(v16);

    v17._countAndFlagsBits = 0x206E61687420;
    v17._object = 0xE600000000000000;
    sub_100050770(v17);

    v18._object = 0x800000010005B700;
    v18._countAndFlagsBits = 0xD000000000000017;
    sub_100050770(v18);

    sub_10001C55C();
    swift_allocError();
    *v4 = 0xD000000000000029;
    *(v4 + 8) = 0x800000010005B690;
    *(v4 + 16) = 3;
    return swift_willThrow();
  }

  if (result)
  {
    v6 = 0;
    v7 = result - 1;
    do
    {
      v9 = v7 - v6;
      if (__OFSUB__(v7, v6))
      {
        __break(1u);
LABEL_21:
        __break(1u);
      }

      if ((v9 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_21;
      }

      v10 = 8 * v9;
      if (v10 >= -64)
      {
        if (v10 > 64)
        {
          goto LABEL_11;
        }

        if ((v10 & 0x8000000000000000) == 0)
        {
          if (v10 != 64)
          {
            v11 = a3 >> (v10 & 0x38);
            goto LABEL_15;
          }

LABEL_11:
          LOBYTE(v11) = 0;
          goto LABEL_15;
        }

        if (v10 != -64)
        {
          v11 = a3 << (-v10 & 0x38);
          goto LABEL_15;
        }
      }

      LOBYTE(v11) = 0;
LABEL_15:
      if (a2[1] >> 62 == 2)
      {
        v12 = *(*a2 + 24);
      }

      ++v6;
      v8 = sub_100013EC0(&qword_10007C718, &qword_100055820);
      v15[3] = v8;
      v15[4] = sub_10001C5B0();
      LOBYTE(v15[0]) = v11;
      v14 = *sub_1000140EC(v15, v8);
      sub_1000502C0();
      result = sub_100013E74(v15);
    }

    while (v3 != v6);
  }

  return result;
}

unint64_t sub_100015344(unint64_t result, void *a2, unsigned int a3)
{
  v3 = result;
  if (result > 4)
  {
    sub_1000508F0(49);

    v16._countAndFlagsBits = sub_100050950();
    sub_100050770(v16);

    v17._countAndFlagsBits = 0x206E61687420;
    v17._object = 0xE600000000000000;
    sub_100050770(v17);

    v18._object = 0x800000010005B720;
    v18._countAndFlagsBits = 0xD000000000000017;
    sub_100050770(v18);

    sub_10001C55C();
    swift_allocError();
    *v4 = 0xD000000000000029;
    *(v4 + 8) = 0x800000010005B690;
    *(v4 + 16) = 3;
    return swift_willThrow();
  }

  if (result)
  {
    v6 = 0;
    v7 = result - 1;
    do
    {
      v9 = v7 - v6;
      if (__OFSUB__(v7, v6))
      {
        __break(1u);
LABEL_20:
        __break(1u);
      }

      if ((v9 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_20;
      }

      v10 = 8 * v9;
      if (v10 >= -32 && v10 <= 32)
      {
        if (v10 < 0)
        {
          if (v10 != -32)
          {
            v11 = a3 << (-v10 & 0x18);
            goto LABEL_14;
          }
        }

        else if (v10 != 32)
        {
          v11 = a3 >> (v10 & 0x18);
          goto LABEL_14;
        }
      }

      LOBYTE(v11) = 0;
LABEL_14:
      if (a2[1] >> 62 == 2)
      {
        v12 = *(*a2 + 24);
      }

      ++v6;
      v8 = sub_100013EC0(&qword_10007C718, &qword_100055820);
      v15[3] = v8;
      v15[4] = sub_10001C5B0();
      LOBYTE(v15[0]) = v11;
      v14 = *sub_1000140EC(v15, v8);
      sub_1000502C0();
      result = sub_100013E74(v15);
    }

    while (v3 != v6);
  }

  return result;
}

unint64_t sub_1000155F4(unint64_t result, void *a2, int a3)
{
  v3 = result;
  if (result <= 2)
  {
    if (result)
    {
      v5 = a3;
      if (8 * result == 24)
      {
        v7 = 0;
      }

      else
      {
        v7 = a3 >> ((8 * result - 8) & 8);
      }

      if (a2[1] >> 62 == 2)
      {
        v8 = *(*a2 + 24);
      }

      v15 = sub_100013EC0(&qword_10007C718, &qword_100055820);
      v16 = sub_10001C5B0();
      LOBYTE(v14) = v7;
      v12 = *sub_1000140EC(&v14, v15);
      sub_1000502C0();
      result = sub_100013E74(&v14);
      if (v3 != 1)
      {
        if (v3 != 2)
        {
          v5 <<= 8 * (v3 & 1);
        }

        v9 = a2[1] >> 62;
        if (v9 > 1 && v9 != 3)
        {
          v10 = *(*a2 + 24);
        }

        v11 = sub_100013EC0(&qword_10007C718, &qword_100055820);
        v15 = v11;
        v16 = sub_10001C5B0();
        LOBYTE(v14) = v5;
        v13 = *sub_1000140EC(&v14, v11);
        sub_1000502C0();
        return sub_100013E74(&v14);
      }
    }
  }

  else
  {
    sub_1000508F0(49);

    v17._countAndFlagsBits = sub_100050950();
    sub_100050770(v17);

    v18._countAndFlagsBits = 0x206E61687420;
    v18._object = 0xE600000000000000;
    sub_100050770(v18);

    v19._object = 0x800000010005B6C0;
    v19._countAndFlagsBits = 0xD000000000000017;
    sub_100050770(v19);

    sub_10001C55C();
    swift_allocError();
    *v4 = 0xD000000000000029;
    *(v4 + 8) = 0x800000010005B690;
    *(v4 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1000158CC(unint64_t result, void *a2, char a3)
{
  if (result <= 1)
  {
    if (result)
    {
      if (a2[1] >> 62 == 2)
      {
        v5 = *(*a2 + 24);
      }

      v8 = sub_100013EC0(&qword_10007C718, &qword_100055820);
      v9 = sub_10001C5B0();
      LOBYTE(v7) = a3;
      v6 = *sub_1000140EC(&v7, v8);
      sub_1000502C0();
      return sub_100013E74(&v7);
    }
  }

  else
  {
    sub_1000508F0(49);

    v10._countAndFlagsBits = sub_100050950();
    sub_100050770(v10);

    v11._countAndFlagsBits = 0x206E61687420;
    v11._object = 0xE600000000000000;
    sub_100050770(v11);

    v12._object = 0x800000010005B6E0;
    v12._countAndFlagsBits = 0xD000000000000016;
    sub_100050770(v12);

    sub_10001C55C();
    swift_allocError();
    *v3 = 0xD000000000000029;
    *(v3 + 8) = 0x800000010005B690;
    *(v3 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100015AD4(uint64_t *a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  if ((a3 & 0x100) != 0)
  {
    sub_10001C55C();
    swift_allocError();
    *v14 = 0xD000000000000085;
    *(v14 + 8) = 0x800000010005B740;
    *(v14 + 16) = 1;
    return swift_willThrow();
  }

  else
  {
    result = sub_10003D000(a2, a3, a4, a5);
    if (!v5)
    {
      v11 = *a1;
      v12 = a1[1];
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 != 2)
        {
          v11 = 0;
          goto LABEL_15;
        }

        v17 = v11 + 16;
        v15 = *(v11 + 16);
        v16 = *(v17 + 8);
        v18 = __OFSUB__(v16, v15);
        v11 = v16 - v15;
        if (!v18)
        {
LABEL_15:
          v18 = __OFADD__(v11, result);
          result += v11;
          if (v18)
          {
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          sub_1000502D0(result);
          result = sub_10003915C(a2);
          if (result < 1)
          {
LABEL_31:
            v26[3] = &type metadata for Data;
            v26[4] = &protocol witness table for Data;
            v26[0] = a4;
            v26[1] = a5;
            v23 = sub_1000140EC(v26, &type metadata for Data);
            v24 = *v23;
            v25 = v23[1];
            sub_10001414C(a4, a5);
            sub_100017698(v24, v25);
            return sub_100013E74(v26);
          }

          v19 = a5 >> 62;
          if ((a5 >> 62) > 1)
          {
            if (v19 != 2)
            {
              goto LABEL_29;
            }

            v22 = *(a4 + 16);
            v21 = *(a4 + 24);
            v20 = v21 - v22;
            if (!__OFSUB__(v21, v22))
            {
LABEL_26:
              if ((v20 & 0x8000000000000000) == 0)
              {
                if (!HIDWORD(v20))
                {
                  goto LABEL_30;
                }

                __break(1u);
LABEL_29:
                LODWORD(v20) = 0;
                goto LABEL_30;
              }

              goto LABEL_33;
            }

            __break(1u);
          }

          else if (!v19)
          {
            LODWORD(v20) = BYTE6(a5);
LABEL_30:
            sub_100015344(result, a1, v20);
            goto LABEL_31;
          }

          if (__OFSUB__(HIDWORD(a4), a4))
          {
LABEL_35:
            __break(1u);
            return result;
          }

          v20 = HIDWORD(a4) - a4;
          goto LABEL_26;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v11 = BYTE6(v12);
        goto LABEL_15;
      }

      v18 = __OFSUB__(HIDWORD(v11), v11);
      LODWORD(v11) = HIDWORD(v11) - v11;
      if (v18)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v11 = v11;
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_100015CBC(void *a1, char a2, uint64_t a3, char a4, unint64_t a5, char a6)
{
  switch(a2)
  {
    case 4:
      sub_10001C55C();
      swift_allocError();
      *v6 = 0xD000000000000034;
      *(v6 + 8) = 0x800000010005B280;
      v7 = 1;
LABEL_17:
      *(v6 + 16) = v7;
      return swift_willThrow();
    case 1:
      if ((a3 & 0x10000) == 0)
      {
        return sub_1000155F4(2uLL, a1, a3);
      }

      goto LABEL_15;
    case 2:
      if ((a4 & 1) == 0)
      {
        return sub_100015344(4uLL, a1, HIDWORD(a3));
      }

      goto LABEL_15;
  }

  if (a2 != 3)
  {
    sub_1000508F0(31);
    v11._countAndFlagsBits = 0xD00000000000001BLL;
    v11._object = 0x800000010005B2C0;
    sub_100050770(v11);
    sub_100050900();
    v12._countAndFlagsBits = 11872;
    v12._object = 0xE200000000000000;
    sub_100050770(v12);
    sub_10001C55C();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0xE000000000000000;
LABEL_16:
    v7 = 4;
    goto LABEL_17;
  }

  if (a6)
  {
LABEL_15:
    v10 = (v8 - 32) | 0x8000000000000000;
    sub_10001C55C();
    swift_allocError();
    *v6 = 0xD000000000000023;
    *(v6 + 8) = v10;
    goto LABEL_16;
  }

  return sub_10001508C(8uLL, a1, a5);
}

unint64_t sub_100015EB0(void *a1)
{
  v39 = *v1;
  v41 = *(v1 + 8);
  v40 = *(v1 + 12);
  v37 = *(v1 + 16);
  v38 = *(v1 + 10);
  v42 = *(v1 + 24);
  v36 = *(v1 + 32);
  v31 = *(v1 + 40);
  v35 = *(v1 + 44);
  v33 = *(v1 + 48);
  v32 = *(v1 + 52);
  v29 = *(v1 + 56);
  v30 = *(v1 + 50);
  v34 = *(v1 + 64);
  v28 = *(v1 + 72);
  v23 = *(v1 + 80);
  v27 = *(v1 + 84);
  v25 = *(v1 + 88);
  v24 = *(v1 + 92);
  v21 = *(v1 + 96);
  v22 = *(v1 + 90);
  v26 = *(v1 + 104);
  v20 = *(v1 + 112);
  v19 = *(v1 + 120);
  v3 = *(v1 + 124);
  v4 = *(v1 + 128);
  v5 = *(v1 + 130);
  v6 = *(v1 + 132);
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);
  v9 = *(v1 + 152);
  result = sub_100015344(1uLL, a1, *(v1 + 4));
  if (!v2)
  {
    sub_100015CBC(a1, v39, v41 | (v40 << 32) | ((v38 & 1) << 16), v37 & 1, v42, v36 & 1);
    sub_100015344(1uLL, a1, v35);
    sub_100015CBC(a1, v31, v33 | (v32 << 32) | ((v30 & 1) << 16), v29 & 1, v34, v28 & 1);
    sub_100015344(1uLL, a1, v27);
    sub_100015CBC(a1, v23, v25 | (v24 << 32) | ((v22 & 1) << 16), v21 & 1, v26, v20 & 1);
    sub_100015344(1uLL, a1, v3);
    sub_100015CBC(a1, v19, v4 | (v6 << 32) | ((v5 & 1) << 16), v7 & 1, v8, v9 & 1);
    v11 = *(v1 + 160);
    v12 = *(v1 + 164);
    v13 = *(v1 + 168);
    v14 = *(v1 + 170);
    v15 = *(v1 + 172);
    v16 = *(v1 + 176);
    v17 = *(v1 + 184);
    v18 = *(v1 + 192);
    sub_100015344(1uLL, a1, v12);
    return sub_100015CBC(a1, v11, v13 | (v15 << 32) | ((v14 & 1) << 16), v16 & 1, v17, v18 & 1);
  }

  return result;
}

void *sub_1000161B8(void *result, unsigned __int8 *a2)
{
  v4 = *a2;
  if (v4 == 9)
  {
    sub_10001C55C();
    swift_allocError();
    *v5 = 0xD000000000000034;
    *(v5 + 8) = 0x800000010005B280;
    v6 = 1;
LABEL_30:
    *(v5 + 16) = v6;
    return swift_willThrow();
  }

  if (*a2 > 4u)
  {
    if (*a2 <= 6u)
    {
      if (v4 == 5)
      {
        v28 = result;
        v29 = *(v2 + 288);
        v78[6] = *(v2 + 272);
        v78[7] = v29;
        v79[0] = *(v2 + 304);
        v30 = *(v2 + 224);
        v78[2] = *(v2 + 208);
        v78[3] = v30;
        v31 = *(v2 + 256);
        v78[4] = *(v2 + 240);
        v78[5] = v31;
        v32 = *(v2 + 192);
        v78[0] = *(v2 + 176);
        v78[1] = v32;
        *(v79 + 9) = *(v2 + 313);
        if (sub_10001C728(v78) != 1)
        {
          return sub_1000186D8(v28);
        }

        v8 = 0x800000010005B930;
        sub_10001C55C();
        swift_allocError();
        v9 = 0xD000000000000038;
      }

      else
      {
        v10 = result;
        v11 = *(a2 + 27);
        v12 = a2[37];
        v13 = *(a2 + 35);
        v14 = a2[38];
        v15 = *(v2 + 512);
        v76[10] = *(v2 + 496);
        v76[11] = v15;
        v77 = *(v2 + 528);
        v16 = *(v2 + 448);
        v76[6] = *(v2 + 432);
        v76[7] = v16;
        v17 = *(v2 + 464);
        v76[9] = *(v2 + 480);
        v76[8] = v17;
        v18 = *(v2 + 384);
        v76[2] = *(v2 + 368);
        v76[3] = v18;
        v19 = *(v2 + 400);
        v76[5] = *(v2 + 416);
        v76[4] = v19;
        v20 = *(v2 + 336);
        v76[1] = *(v2 + 352);
        v76[0] = v20;
        if (sub_10001C728(v76) != 1)
        {
          return sub_100015EB0(v10);
        }

        v8 = 0x800000010005B8D0;
        sub_10001C55C();
        swift_allocError();
        v9 = 0xD000000000000050;
      }

      goto LABEL_28;
    }

    if (v4 == 7)
    {
      v34 = result;
      v35 = *(v2 + 680);
      v74[8] = *(v2 + 664);
      v74[9] = v35;
      v75[0] = *(v2 + 696);
      *(v75 + 9) = *(v2 + 705);
      v36 = *(v2 + 616);
      v74[4] = *(v2 + 600);
      v74[5] = v36;
      v37 = *(v2 + 648);
      v74[6] = *(v2 + 632);
      v74[7] = v37;
      v38 = *(v2 + 552);
      v74[0] = *(v2 + 536);
      v74[1] = v38;
      v39 = *(v2 + 584);
      v74[2] = *(v2 + 568);
      v74[3] = v39;
      if (sub_10001C714(v74) != 1)
      {
        return sub_1000188CC(v34);
      }

      v8 = 0x800000010005B870;
      sub_10001C55C();
      swift_allocError();
      v9 = 0xD000000000000053;
      goto LABEL_28;
    }

    if (v4 == 8)
    {
      v21 = result;
      v73 = *(v2 + 920);
      v22 = *(v2 + 904);
      v72[10] = *(v2 + 888);
      v72[11] = v22;
      v23 = *(v2 + 840);
      v72[6] = *(v2 + 824);
      v72[7] = v23;
      v24 = *(v2 + 872);
      v72[8] = *(v2 + 856);
      v72[9] = v24;
      v25 = *(v2 + 776);
      v72[2] = *(v2 + 760);
      v72[3] = v25;
      v26 = *(v2 + 808);
      v72[4] = *(v2 + 792);
      v72[5] = v26;
      v27 = *(v2 + 744);
      v72[0] = *(v2 + 728);
      v72[1] = v27;
      if (sub_10001C728(v72) != 1)
      {
        return sub_100018B1C(v21);
      }

      v8 = 0x800000010005B810;
      sub_10001C55C();
      swift_allocError();
      v9 = 0xD00000000000005BLL;
      goto LABEL_28;
    }

    goto LABEL_32;
  }

  if (*a2 <= 2u)
  {
    if (v4 == 1)
    {
      if ((*v2 & 1) == 0)
      {
        return result;
      }

      v8 = 0x800000010005B9F0;
      sub_10001C55C();
      swift_allocError();
      v9 = 0xD000000000000020;
      goto LABEL_28;
    }

    if (v4 == 2)
    {
      v7 = *(v2 + 8);
      if (v7 == 4)
      {
        v8 = 0x800000010005B9D0;
        sub_10001C55C();
        swift_allocError();
        v9 = 0xD00000000000001FLL;
LABEL_28:
        *v5 = v9;
        *(v5 + 8) = v8;
LABEL_29:
        v6 = 4;
        goto LABEL_30;
      }

      v53 = *(v2 + 16);
      v54 = *(v2 + 20);
      v55 = *(v2 + 32);
      v56 = *(v2 + 40);
      v57 = *(v2 + 24);
      v58 = *(v2 + 18);
      v59 = result;
      result = sub_100015344(1uLL, result, HIDWORD(v7));
      if (!v3)
      {
        v71 = v58 & 1;
        v48 = v57 & 1;
        v49 = v56 & 1;
LABEL_42:
        v51 = v53 | (v54 << 32) | (v71 << 16);
        v47 = v7;
        v52 = v59;
        v50 = v55;
        return sub_100015CBC(v52, v47, v51, v48, v50, v49);
      }

      return result;
    }

LABEL_32:
    sub_1000508F0(31);
    v81._object = 0x800000010005B2C0;
    v81._countAndFlagsBits = 0xD00000000000001BLL;
    sub_100050770(v81);
    sub_100050900();
    v82._countAndFlagsBits = 11872;
    v82._object = 0xE200000000000000;
    sub_100050770(v82);
    sub_10001C55C();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 0xE000000000000000;
    goto LABEL_29;
  }

  if (v4 == 3)
  {
    v33 = *(v2 + 48);
    if (v33 == 4)
    {
      v8 = 0x800000010005B9A0;
      sub_10001C55C();
      swift_allocError();
      v9 = 0xD000000000000025;
      goto LABEL_28;
    }

    v70 = *(v2 + 56);
    v69 = *(v2 + 60);
    v80 = *(v2 + 72);
    v64 = *(v2 + 88);
    v66 = *(v2 + 92);
    v65 = *(v2 + 96);
    v40 = *(v2 + 98);
    v41 = *(v2 + 100);
    v42 = *(v2 + 104);
    v43 = *(v2 + 112);
    v44 = *(v2 + 120);
    v67 = *(v2 + 64);
    v68 = *(v2 + 80);
    v45 = *(v2 + 58);
    v46 = result;
    result = sub_100015344(1uLL, result, HIDWORD(v33));
    if (!v3)
    {
      sub_100015CBC(v46, v33, v70 | (v69 << 32) | ((v45 & 1) << 16), v67 & 1, v80, v68 & 1);
      sub_100015344(1uLL, v46, v66);
      v47 = v64;
      v48 = v42 & 1;
      v49 = v44 & 1;
      v50 = v43;
      v51 = v65 | (v41 << 32) | ((v40 & 1) << 16);
      v52 = v46;
      return sub_100015CBC(v52, v47, v51, v48, v50, v49);
    }
  }

  else
  {
    v7 = *(v2 + 136);
    if (v7 == 4)
    {
      v8 = 0x800000010005B970;
      sub_10001C55C();
      swift_allocError();
      v9 = 0xD000000000000021;
      goto LABEL_28;
    }

    v53 = *(v2 + 144);
    v60 = *(v2 + 146);
    v54 = *(v2 + 148);
    v61 = *(v2 + 152);
    v55 = *(v2 + 160);
    v62 = *(v2 + 168);
    v63 = *(v2 + 128);
    v59 = result;
    result = sub_100015344(4uLL, result, v63);
    if (!v3)
    {
      sub_100015344(1uLL, v59, HIDWORD(v7));
      v71 = v60 & 1;
      v48 = v61 & 1;
      v49 = v62 & 1;
      goto LABEL_42;
    }
  }

  return result;
}

void *sub_100016A9C(void *a1, uint64_t a2)
{
  v40 = *(a2 + 7);
  LODWORD(v41) = *(a2 + 3);
  WORD2(v41) = *(a2 + 8);
  v38 = *(a2 + 19);
  v39 = *(a2 + 10);
  v42 = *(a2 + 11);
  v43 = *(a2 + 20);
  v34 = *(a2 + 28);
  v36 = *(a2 + 30);
  v33 = *(a2 + 31);
  v63 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 41);
  v8 = *(a2 + 49);
  v9 = *(a2 + 51);
  v10 = *v2;
  v11 = v2[1];
  result = sub_100015344(1uLL, a1, v2[1]);
  if (!v3)
  {
    v13 = v34;
    v14 = v39;
    v15 = v40;
    v16 = v38;
    v17 = v33;
    v32 = a1;
    if (*(a2 + 52))
    {
      v31 = 0;
      v30 = 0;
      v63 = 0;
      v42 = 0;
      v43 = 0;
      v35 = 0;
      v37 = 0;
      v41 = 0;
      v18 = 1;
      v6 = 1;
      v17 = 1;
      v16 = 1;
      v14 = 1;
      v15 = 1;
      v19 = 1;
      v20 = v10;
      v21 = v11;
    }

    else
    {
      v35 = *(a2 + 1);
      v37 = v13 | (v36 << 16);
      v19 = *(a2 + 2);
      v31 = v7;
      v30 = v8;
      v20 = v10;
      v21 = v11;
      v18 = v9;
    }

    v22 = v19 & 1;
    v23 = v15 & 1;
    v24 = v20 | (v21 << 32);
    v25 = v14 & 1;
    v26 = v16 & 1;
    v27 = v17 & 1;
    v28 = v6 & 1;
    v29 = v18 & 1;
    memcpy(__dst, v2 + 2, sizeof(__dst));
    v45 = v24;
    v46 = v35;
    v47 = v22;
    v48 = v41;
    v49 = v23;
    v50 = WORD2(v41);
    v51 = v25;
    v52 = v42;
    v53 = v26;
    v54 = v43;
    v56 = BYTE2(v37);
    v55 = v37;
    v57 = v27;
    v58 = v63;
    v59 = v28;
    v60 = v31;
    v61 = v30;
    v62 = v29;
    return sub_1000161B8(v32, &v45);
  }

  return result;
}

void *sub_100016C9C(void *result, char a2)
{
  if (a2 == 14)
  {
    sub_10001C55C();
    swift_allocError();
    *v4 = 0xD000000000000034;
    *(v4 + 8) = 0x800000010005B280;
    v5 = 1;
  }

  else
  {
    switch(a2)
    {
      case 0:
        if (*v2)
        {
          v6 = 0x800000010005B5D0;
          sub_10001C55C();
          swift_allocError();
          v7 = 0xD000000000000027;
          goto LABEL_33;
        }

        return result;
      case 1:
        if (*(v2 + 2))
        {
          v6 = 0x800000010005B5A0;
          sub_10001C55C();
          swift_allocError();
          v7 = 0xD000000000000025;
          goto LABEL_33;
        }

        return sub_1000158CC(1uLL, result, *(v2 + 1));
      case 2:
        if (*(v2 + 16))
        {
          goto LABEL_28;
        }

        v24 = *(v2 + 8);
        v25 = *(v2 + 12);
        v26 = *(v2 + 4);
        v27 = result;
        result = sub_100015344(4uLL, result, v26);
        if (!v3)
        {
          sub_1000158CC(1uLL, v27, v24);
          return sub_100015344(4uLL, v27, v25);
        }

        return result;
      case 3:
        if (*(v2 + 28))
        {
          v6 = 0x800000010005B540;
          sub_10001C55C();
          swift_allocError();
          v7 = 0xD00000000000002BLL;
          goto LABEL_33;
        }

        v28 = *(v2 + 20);
        v29 = result;
        result = sub_100015344(4uLL, result, v28);
        if (!v3)
        {
          return sub_100015344(4uLL, v29, HIDWORD(v28));
        }

        return result;
      case 4:
        if (*(v2 + 32))
        {
          v6 = 0x800000010005B510;
          sub_10001C55C();
          swift_allocError();
          v7 = 0xD000000000000023;
          goto LABEL_33;
        }

        return sub_1000155F4(2uLL, result, *(v2 + 30));
      case 5:
        if (*(v2 + 40))
        {
          v6 = 0x800000010005B4E0;
          sub_10001C55C();
          swift_allocError();
          v7 = 0xD000000000000021;
          goto LABEL_33;
        }

        v30 = *(v2 + 36);
        return sub_100015344(4uLL, result, v30);
      case 6:
        if (*(v2 + 48))
        {
          goto LABEL_28;
        }

        v30 = *(v2 + 44);
        return sub_100015344(4uLL, result, v30);
      case 7:
        if (*(v2 + 64) != 4)
        {
          v39 = *(v2 + 104);
          v40 = *(v2 + 120);
          v41 = *(v2 + 136);
          v38 = *(v2 + 88);
          v37 = *(v2 + 72);
          v35 = *(v2 + 56);
          v36 = *(v2 + 64);
          return sub_100018590(result);
        }

LABEL_28:
        v6 = (v9 - 32) | 0x8000000000000000;
        sub_10001C55C();
        swift_allocError();
        v7 = 0xD000000000000029;
        goto LABEL_33;
      case 8:
        if (*(v2 + 153))
        {
          v6 = 0x800000010005B430;
          sub_10001C55C();
          swift_allocError();
          v7 = 0xD000000000000048;
          goto LABEL_33;
        }

        v20 = *(v2 + 144);
        v21 = *(v2 + 148);
        v22 = *(v2 + 152);
        v23 = *(v2 + 140);
        goto LABEL_60;
      case 9:
        if (*(v2 + 169))
        {
          v6 = 0x800000010005B3E0;
          sub_10001C55C();
          swift_allocError();
          v7 = 0xD00000000000004FLL;
          goto LABEL_33;
        }

        v20 = *(v2 + 160);
        v21 = *(v2 + 164);
        v22 = *(v2 + 168);
        v23 = *(v2 + 156);
LABEL_60:
        v34 = result;
        result = sub_100015344(4uLL, result, v23);
        if (!v3)
        {
          sub_1000158CC(1uLL, v34, v20);
          sub_100015344(4uLL, v34, v21);
          return sub_1000158CC(1uLL, v34, v22);
        }

        return result;
      case 10:
        if (*(v2 + 206))
        {
          goto LABEL_31;
        }

        v12 = *(v2 + 184);
        v11 = *(v2 + 188);
        v14 = *(v2 + 192);
        v13 = *(v2 + 196);
        v15 = *(v2 + 200);
        v16 = *(v2 + 201);
        v17 = *(v2 + 202);
        v18 = *(v2 + 204);
        v19 = *(v2 + 176);
        goto LABEL_57;
      case 11:
        if (*(v2 + 238))
        {
          goto LABEL_31;
        }

        v12 = *(v2 + 216);
        v11 = *(v2 + 220);
        v14 = *(v2 + 224);
        v13 = *(v2 + 228);
        v15 = *(v2 + 232);
        v16 = *(v2 + 233);
        v17 = *(v2 + 234);
        v18 = *(v2 + 236);
        v19 = *(v2 + 208);
        goto LABEL_57;
      case 12:
        if (*(v2 + 270))
        {
LABEL_31:
          v6 = (v8 - 32) | 0x8000000000000000;
          sub_10001C55C();
          swift_allocError();
          v10 = 18;
          goto LABEL_32;
        }

        v12 = *(v2 + 248);
        v11 = *(v2 + 252);
        v14 = *(v2 + 256);
        v13 = *(v2 + 260);
        v15 = *(v2 + 264);
        v16 = *(v2 + 265);
        v17 = *(v2 + 266);
        v18 = *(v2 + 268);
        v19 = *(v2 + 240);
LABEL_57:
        v33 = result;
        result = sub_10001508C(8uLL, result, v19);
        if (!v3)
        {
          sub_100015344(4uLL, v33, v12);
          sub_100015344(4uLL, v33, v11);
          sub_100015344(4uLL, v33, v14);
          sub_100015344(4uLL, v33, v13);
          sub_1000158CC(1uLL, v33, v15);
          sub_1000158CC(1uLL, v33, v16);
          sub_1000155F4(2uLL, v33, v17);
          return sub_1000155F4(2uLL, v33, v18);
        }

        return result;
      case 13:
        if ((*(v2 + 284) & 1) == 0)
        {
          v31 = *(v2 + 276);
          v25 = *(v2 + 280);
          v32 = *(v2 + 272);
          v27 = result;
          result = sub_100015344(4uLL, result, v32);
          if (!v3)
          {
            sub_100015344(4uLL, v27, v31);
            return sub_100015344(4uLL, v27, v25);
          }

          return result;
        }

        v6 = 0x800000010005B2E0;
        sub_10001C55C();
        swift_allocError();
        v10 = 22;
LABEL_32:
        v7 = v10 | 0xD000000000000029;
LABEL_33:
        *v4 = v7;
        *(v4 + 8) = v6;
LABEL_34:
        v5 = 4;
        break;
      default:
        sub_1000508F0(31);
        v42._countAndFlagsBits = 0xD00000000000001BLL;
        v42._object = 0x800000010005B2C0;
        sub_100050770(v42);
        sub_100050900();
        v43._countAndFlagsBits = 11872;
        v43._object = 0xE200000000000000;
        sub_100050770(v43);
        sub_10001C55C();
        swift_allocError();
        *v4 = 0;
        *(v4 + 8) = 0xE000000000000000;
        goto LABEL_34;
    }
  }

  *(v4 + 16) = v5;
  return swift_willThrow();
}

void *sub_10001742C(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  result = sub_100015AD4(a1, 0xFFFF00000001, 1, *v3, *(v3 + 8));
  if (!v4)
  {
    v9 = *(v3 + 16);
    sub_100015344(4uLL, a1, *(v3 + 20));
    v10 = (a2 >> 8) & 1;
    v11 = ((a3 & 0xFFFFFFFFFFFFuLL) >> 8) & 1;
    v12 = ((a3 & 0xFFFFFFFFFFFFuLL) >> 16) & 1;
    v13 = ((a3 & 0xFFFFFFFFFFFFuLL) >> 32) & 1;
    if ((a3 & 0x1000000000000) != 0)
    {
      LOBYTE(v13) = 1;
      LOBYTE(v12) = 1;
      LOBYTE(v11) = 1;
      LOBYTE(v10) = 1;
    }

    __dst[308] = v10;
    v14 = (a2 >> 16) & 1;
    if ((a3 & 0x1000000000000) != 0)
    {
      LOBYTE(v14) = 1;
    }

    __dst[310] = v14;
    v15 = HIBYTE(a2) & 1;
    if ((a3 & 0x1000000000000) != 0)
    {
      LOBYTE(v15) = 1;
    }

    __dst[306] = v15;
    if ((a3 & 0x1000000000000) != 0)
    {
      v16 = 1;
    }

    else
    {
      v16 = a3;
    }

    __dst[309] = v16 & 1;
    __dst[304] = v11;
    __dst[307] = v12;
    __dst[305] = v13;
    memcpy(__dst, (v3 + 24), 0x11DuLL);
    return sub_100016C9C(a1, v9);
  }

  return result;
}

unint64_t sub_1000175C0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1000509E0();
  sub_1000509F0(a1);
  v4 = sub_100050A00();
  return sub_100017628(a1, v4);
}

unint64_t sub_100017628(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100017698(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1000502E0();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000177D0(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_1000177D0(v3, v4);
  }

  return sub_1000502E0();
}

uint64_t sub_1000177D0(uint64_t a1, uint64_t a2)
{
  result = sub_100050220();
  if (!result || (result = sub_100050240(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_100050230();
      return sub_1000502E0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100017864(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10001791C(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1000502B0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_100050220();
  if (v3)
  {
    result = sub_100050240();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_100050230();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_100017864(v3, v7);

  return v8;
}

uint64_t sub_100017A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000502A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100050290();
  if (a2)
  {
    v11 = sub_100050270();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = sub_100050210();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == enum case for Data.Deallocator.none(_:))
    {
      v15 = sub_100050260();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_10001791C(v14, a2);
  }

  else
  {
    v17 = sub_100050290();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

unint64_t sub_100017C38(void *a1, void *a2, void *a3, uint64_t a4, __int16 a5, int a6, int a7, unint64_t a8, id a9)
{
  LODWORD(v51) = a7;
  v52 = a3;
  v16 = sub_1000502A0();
  v74 = *(v16 - 8);
  v17 = *(v74 + 64);
  __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000182A8(2u, &qword_10007C5F8, &static PPM_0_2_1.QueryType.rangesByEnumVals);
  if (!v9)
  {
    v46 = a8;
    LOBYTE(v53[0]) = 1;
    v54 = 0;
    v66 = a4;
    v67 = a5;
    v68 = a6;
    v69 = result;
    v70 = HIDWORD(result);
    v71 = 1;
    v72 = v51;
    v73 = 0;
    v21 = a1;
    v49 = 0;
    v22 = [v21 bytes];
    v23 = [a1 length];
    v24 = enum case for Data.Deallocator.none(_:);
    v25 = v74 + 104;
    v26 = *(v74 + 104);
    v26(v19, enum case for Data.Deallocator.none(_:), v16);
    v50 = sub_100017A00(v22, v23, v19);
    v51 = v27;
    v28 = [a2 bytes];
    v29 = [a2 length];
    v26(v19, v24, v16);
    v47 = sub_100017A00(v28, v29, v19);
    v48 = v30;
    v31 = v52;
    v32 = [v52 bytes];
    v33 = [v31 length];
    v74 = v25;
    v26(v19, v24, v16);
    v34 = sub_100017A00(v32, v33, v19);
    v36 = v35;
    v37 = v49;
    v38 = sub_100036C14();
    if (v37)
    {
      sub_100013E20(v34, v36);
      sub_100013E20(v47, v48);
      return sub_100013E20(v50, v51);
    }

    else
    {
      v52 = v38;
      v49 = v39;
      v40 = [a9 bytes];
      v41 = [a9 length];
      v26(v19, v24, v16);
      v42 = sub_100017A00(v40, v41, v19);
      v55 = v50;
      v56 = v51;
      v57 = v47;
      v58 = v48;
      v59 = v34;
      v60 = v36;
      v61 = v52;
      v62 = v49;
      v63 = v46;
      v64 = v42;
      v65 = v43;
      sub_100020340();
      v53[0] = sub_100036B70(v44);
      v53[1] = v45;
      sub_100015AD4(v53, 0xFF00000001, 1, v55, v56);
      sub_100015AD4(v53, 0xFFFF00000001, 1, v57, v58);
      sub_100015AD4(v53, 0xFFFF00000001, 1, v59, v60);
      sub_100015AD4(v53, 0xFFFF00000001, 1, v61, v62);
      sub_10001508C(8uLL, v53, v63);
      sub_100015AD4(v53, 0xFFFF00000001, 1, v64, v65);
      sub_10001C7E4(&v55);
      return v53[0];
    }
  }

  return result;
}

unint64_t sub_1000180E4(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_100018110()
{
  v1 = *(v0 + 40);
  sub_1000509E0();
  sub_1000509F0(0);
  v2 = sub_100050A00();

  return sub_1000180E4(v2);
}

unint64_t sub_1000182A8(unsigned __int8 a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  if (*(v5 + 16))
  {
    v6 = sub_1000175C0(a1);
    if (v7)
    {
      return a1 | (*(*(v5 + 56) + 8 * v6) << 32);
    }
  }

  v10._countAndFlagsBits = 0x203A65756C6176;
  v10._object = 0xE700000000000000;
  sub_100050770(v10);
  sub_100050900();
  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  sub_100050770(v11);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100050770(v12);

  sub_10001C55C();
  swift_allocError();
  *v9 = 0xD000000000000036;
  *(v9 + 8) = 0x800000010005B7D0;
  *(v9 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_10001842C()
{
  if (qword_10007C600 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static PPM_0_2_1.ExtensionType.rangesByEnumVals;
  if (*(static PPM_0_2_1.ExtensionType.rangesByEnumVals + 16))
  {
    v1 = sub_100018110();
    if (v2)
    {
      return *(*(v0 + 56) + 8 * v1);
    }
  }

  v5._countAndFlagsBits = 0x203A65756C6176;
  v5._object = 0xE700000000000000;
  sub_100050770(v5);
  sub_100050900();
  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  sub_100050770(v6);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_100050770(v7);

  sub_10001C55C();
  swift_allocError();
  *v4 = 0xD000000000000036;
  *(v4 + 8) = 0x800000010005B7D0;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

unint64_t sub_100018590(void *a1)
{
  result = sub_100015344(4uLL, a1, *v1);
  if (!v2)
  {
    sub_100015344(4uLL, a1, *(v1 + 4));
    v5 = *(v1 + 8);
    v6 = *(v1 + 16);
    v7 = *(v1 + 18);
    v8 = *(v1 + 20);
    v9 = *(v1 + 24);
    v19 = *(v1 + 32);
    v10 = *(v1 + 40);
    sub_100015344(1uLL, a1, *(v1 + 12));
    sub_100015CBC(a1, v5, v6 | (v8 << 32) | ((v7 & 1) << 16), v9 & 1, v19, v10 & 1);
    v11 = *(v1 + 48);
    v12 = *(v1 + 52);
    v13 = *(v1 + 56);
    v14 = *(v1 + 58);
    v15 = *(v1 + 60);
    v16 = *(v1 + 64);
    v17 = *(v1 + 72);
    v18 = *(v1 + 80);
    sub_100015344(1uLL, a1, v12);
    return sub_100015CBC(a1, v11, v13 | (v15 << 32) | ((v14 & 1) << 16), v16 & 1, v17, v18 & 1);
  }

  return result;
}

unint64_t sub_1000186D8(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 10);
  v6 = *(v1 + 12);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  result = sub_100015344(1uLL, a1, *(v1 + 4));
  if (!v2)
  {
    sub_100015CBC(a1, v3, v4 | (v6 << 32) | ((v5 & 1) << 16), v7 & 1, v8, v9 & 1);
    v11 = *(v1 + 40);
    v12 = *(v1 + 48);
    v13 = *(v1 + 50);
    v14 = *(v1 + 52);
    v15 = *(v1 + 56);
    v16 = *(v1 + 64);
    v17 = *(v1 + 72);
    sub_100015344(1uLL, a1, *(v1 + 44));
    sub_100015CBC(a1, v11, v12 | (v14 << 32) | ((v13 & 1) << 16), v15 & 1, v16, v17 & 1);
    v18 = *(v1 + 80);
    v19 = *(v1 + 88);
    v20 = *(v1 + 90);
    v21 = *(v1 + 92);
    v22 = *(v1 + 96);
    v23 = *(v1 + 104);
    v24 = *(v1 + 112);
    sub_100015344(1uLL, a1, *(v1 + 84));
    sub_100015CBC(a1, v18, v19 | (v21 << 32) | ((v20 & 1) << 16), v22 & 1, v23, v24 & 1);
    v25 = *(v1 + 120);
    v26 = *(v1 + 124);
    v27 = *(v1 + 128);
    v28 = *(v1 + 130);
    v29 = *(v1 + 132);
    v30 = *(v1 + 136);
    v31 = *(v1 + 144);
    v32 = *(v1 + 152);
    sub_100015344(1uLL, a1, v26);
    return sub_100015CBC(a1, v25, v27 | (v29 << 32) | ((v28 & 1) << 16), v30 & 1, v31, v32 & 1);
  }

  return result;
}

unint64_t sub_1000188CC(void *a1)
{
  result = sub_10001508C(8uLL, a1, *v1);
  if (!v2)
  {
    sub_100015344(4uLL, a1, *(v1 + 8));
    sub_10001508C(8uLL, a1, *(v1 + 16));
    sub_100015344(4uLL, a1, *(v1 + 24));
    v5 = *(v1 + 32);
    v6 = *(v1 + 40);
    v7 = *(v1 + 42);
    v8 = *(v1 + 44);
    v9 = *(v1 + 48);
    v31 = *(v1 + 56);
    v10 = *(v1 + 64);
    sub_100015344(1uLL, a1, *(v1 + 36));
    sub_100015CBC(a1, v5, v6 | (v8 << 32) | ((v7 & 1) << 16), v9 & 1, v31, v10 & 1);
    v11 = *(v1 + 72);
    v12 = *(v1 + 80);
    v13 = *(v1 + 82);
    v14 = *(v1 + 84);
    v15 = *(v1 + 88);
    v32 = *(v1 + 96);
    v16 = *(v1 + 104);
    sub_100015344(1uLL, a1, *(v1 + 76));
    sub_100015CBC(a1, v11, v12 | (v14 << 32) | ((v13 & 1) << 16), v15 & 1, v32, v16 & 1);
    v17 = *(v1 + 112);
    v18 = *(v1 + 120);
    v19 = *(v1 + 122);
    v20 = *(v1 + 124);
    v21 = *(v1 + 128);
    v33 = *(v1 + 136);
    v22 = *(v1 + 144);
    sub_100015344(1uLL, a1, *(v1 + 116));
    sub_100015CBC(a1, v17, v18 | (v20 << 32) | ((v19 & 1) << 16), v21 & 1, v33, v22 & 1);
    v23 = *(v1 + 152);
    v24 = *(v1 + 156);
    v25 = *(v1 + 160);
    v26 = *(v1 + 162);
    v27 = *(v1 + 164);
    v28 = *(v1 + 168);
    v29 = *(v1 + 176);
    v30 = *(v1 + 184);
    sub_100015344(1uLL, a1, v24);
    return sub_100015CBC(a1, v23, v25 | (v27 << 32) | ((v26 & 1) << 16), v28 & 1, v29, v30 & 1);
  }

  return result;
}

unint64_t sub_100018B1C(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 10);
  v6 = *(v1 + 12);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  result = sub_100015344(1uLL, a1, *(v1 + 4));
  if (!v2)
  {
    sub_100015CBC(a1, v3, v4 | (v6 << 32) | ((v5 & 1) << 16), v7 & 1, v8, v9 & 1);
    v11 = *(v1 + 40);
    v12 = *(v1 + 48);
    v13 = *(v1 + 50);
    v14 = *(v1 + 52);
    v15 = *(v1 + 56);
    v16 = *(v1 + 64);
    v17 = *(v1 + 72);
    sub_100015344(1uLL, a1, *(v1 + 44));
    sub_100015CBC(a1, v11, v12 | (v14 << 32) | ((v13 & 1) << 16), v15 & 1, v16, v17 & 1);
    v18 = *(v1 + 80);
    v19 = *(v1 + 88);
    v20 = *(v1 + 90);
    v21 = *(v1 + 92);
    v22 = *(v1 + 96);
    v23 = *(v1 + 104);
    v24 = *(v1 + 112);
    sub_100015344(1uLL, a1, *(v1 + 84));
    sub_100015CBC(a1, v18, v19 | (v21 << 32) | ((v20 & 1) << 16), v22 & 1, v23, v24 & 1);
    v25 = *(v1 + 120);
    v26 = *(v1 + 128);
    v27 = *(v1 + 130);
    v28 = *(v1 + 132);
    v29 = *(v1 + 136);
    v30 = *(v1 + 144);
    v31 = *(v1 + 152);
    sub_100015344(1uLL, a1, *(v1 + 124));
    sub_100015CBC(a1, v25, v26 | (v28 << 32) | ((v27 & 1) << 16), v29 & 1, v30, v31 & 1);
    v32 = *(v1 + 160);
    v33 = *(v1 + 164);
    v34 = *(v1 + 168);
    v35 = *(v1 + 170);
    v36 = *(v1 + 172);
    v37 = *(v1 + 176);
    v38 = *(v1 + 184);
    v39 = *(v1 + 192);
    sub_100015344(1uLL, a1, v33);
    return sub_100015CBC(a1, v32, v34 | (v36 << 32) | ((v35 & 1) << 16), v37 & 1, v38, v39 & 1);
  }

  return result;
}

uint64_t sub_100018D7C(int a1, void *a2)
{
  v5 = sub_1000502A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 bytes];
  v11 = [a2 length];
  (*(v6 + 104))(v9, enum case for Data.Deallocator.none(_:), v5);
  v12 = sub_100017A00(v10, v11, v9);
  v14 = v13;
  v15 = sub_1000182A8(5u, &qword_10007C5E8, &static PPM_0_2_1.VDAFType.rangesByEnumVals);
  if (v2)
  {
    return sub_100013E20(v12, v14);
  }

  v32 = 1;
  v31 = 1;
  v30 = 1;
  v29 = 1;
  v28 = 0;
  v27 = 1;
  v26 = 1;
  v25 = 1;
  v24 = 1;
  v23 = 1;
  v22 = 1;
  v21 = 1;
  v33[0] = v12;
  v33[1] = v14;
  v34 = v15;
  v35 = HIDWORD(v15);
  v36 = 1;
  v37 = 256;
  v38 = 0;
  v39 = 0;
  v40 = 1;
  v41 = 0;
  v42 = 1;
  v43 = 0;
  v44 = 1;
  v45 = a1;
  v46 = 0;
  v47 = 0;
  v48 = 1;
  v54 = 0;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v49 = xmmword_1000557B0;
  v50 = 0u;
  v55 = 0;
  v57 = 0;
  v56 = 0;
  v58 = 1;
  v59 = 0;
  v61 = 0;
  v60 = 0;
  v62 = 1;
  v63 = 0;
  v64 = 0;
  memset(v65, 0, 14);
  v65[14] = 1;
  v66 = 0;
  v67 = 0;
  memset(v68, 0, 14);
  v68[14] = 1;
  v70 = 0;
  memset(v71, 0, 14);
  v69 = 0;
  v71[14] = 1;
  v72 = 0;
  v73 = 0;
  LOBYTE(v20[0]) = 1;
  v74 = 1;
  PPM_0_2_1.VDAFConfig.encodedLength(with:)();
  v20[0] = sub_100036B70(v17);
  v20[1] = v18;
  v32 = 1;
  sub_10001742C(v20, 0, 0x1000000000000);
  sub_10001C508(v33);
  return v20[0];
}

uint64_t sub_100019090(unsigned int a1, unsigned __int8 a2, int a3, uint64_t a4, void *a5)
{
  v24 = a4;
  v80 = a3;
  v9 = sub_1000502A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a5 bytes];
  v15 = [a5 length];
  (*(v10 + 104))(v13, enum case for Data.Deallocator.none(_:), v9);
  v16 = sub_100017A00(v14, v15, v13);
  v18 = v17;
  v19 = sub_1000182A8(9u, &qword_10007C5E8, &static PPM_0_2_1.VDAFType.rangesByEnumVals);
  if (v5)
  {
    return sub_100013E20(v16, v18);
  }

  v37 = 1;
  v36 = 1;
  v35 = 1;
  v34 = 1;
  v33 = 1;
  v32 = 1;
  v31 = 1;
  v30 = 0;
  v29 = 1;
  v28 = 1;
  v27 = 1;
  v26 = 1;
  v38[0] = v16;
  v38[1] = v18;
  v39 = v19;
  v40 = HIDWORD(v19);
  v41 = 1;
  v42 = 256;
  v43 = 0;
  v44 = 0;
  v45 = 1;
  v46 = 0;
  v47 = 1;
  v48 = 0;
  v49 = 1;
  v50 = 0;
  v51 = 1;
  v52 = 0;
  v53 = 1;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = xmmword_1000557B0;
  v60 = 0;
  v62 = 0;
  v61 = 0;
  v63 = 1;
  v64 = a1 | (a2 << 32);
  v66 = v24;
  v65 = v80;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  memset(v70, 0, 14);
  v70[14] = 1;
  v71 = 0;
  v72 = 0;
  memset(v73, 0, 14);
  v73[14] = 1;
  v75 = 0;
  memset(v76, 0, 14);
  v74 = 0;
  v76[14] = 1;
  v77 = 0;
  v78 = 0;
  LOBYTE(v25[0]) = 1;
  v79 = 1;
  PPM_0_2_1.VDAFConfig.encodedLength(with:)();
  v25[0] = sub_100036B70(v21);
  v25[1] = v22;
  v37 = 1;
  sub_10001742C(v25, 0, 0x1000000000000);
  sub_10001C508(v38);
  return v25[0];
}

uint64_t sub_1000193BC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, unsigned __int8 a6, int a7, void *a8)
{
  *(&v26 + 1) = a5;
  DWORD1(v26) = a4;
  *(&v27 + 1) = a3;
  DWORD1(v27) = a2;
  v86 = a1;
  v12 = sub_1000502A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a8 bytes];
  v18 = [a8 length];
  (*(v13 + 104))(v16, enum case for Data.Deallocator.none(_:), v12);
  v19 = sub_100017A00(v17, v18, v16);
  v21 = v20;
  v22 = sub_1000182A8(0xAu, &qword_10007C5E8, &static PPM_0_2_1.VDAFType.rangesByEnumVals);
  if (v8)
  {
    return sub_100013E20(v19, v21);
  }

  v40 = 1;
  v39 = 1;
  v38 = 1;
  v37 = 1;
  v36 = 1;
  v35 = 1;
  v34 = 1;
  v33 = 1;
  v32 = 0;
  v31 = 1;
  v30 = 1;
  v29 = 1;
  v41[0] = v19;
  v41[1] = v21;
  v42 = v22;
  v43 = HIDWORD(v22);
  v44 = 1;
  v45 = 256;
  v46 = 0;
  v47 = 0;
  v48 = 1;
  v49 = 0;
  v50 = 1;
  v51 = 0;
  v52 = 1;
  v53 = 0;
  v54 = 1;
  v55 = 0;
  v56 = 1;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = xmmword_1000557B0;
  v63 = 0;
  v65 = 0;
  v64 = 0;
  v66 = 1;
  v67 = 0;
  v69 = 0;
  v68 = 0;
  v70 = 1;
  v71 = v86;
  v72 = v27 >> 32;
  v73 = v26 >> 32;
  v75 = a7;
  v74 = a6 | (a7 << 16) | 0x100;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  memset(v79, 0, 14);
  v79[14] = 1;
  v81 = 0;
  memset(v82, 0, 14);
  v80 = 0;
  v82[14] = 1;
  v83 = 0;
  v84 = 0;
  LOBYTE(v28[0]) = 1;
  v85 = 1;
  PPM_0_2_1.VDAFConfig.encodedLength(with:)();
  v28[0] = sub_100036B70(v24);
  v28[1] = v25;
  v40 = 1;
  sub_10001742C(v28, 0, 0x1000000000000);
  sub_10001C508(v41);
  return v28[0];
}

uint64_t sub_100019714(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, unsigned __int8 a6, int a7, void *a8)
{
  *(&v26 + 1) = a5;
  DWORD1(v26) = a4;
  *(&v27 + 1) = a3;
  DWORD1(v27) = a2;
  v86 = a1;
  v12 = sub_1000502A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a8 bytes];
  v18 = [a8 length];
  (*(v13 + 104))(v16, enum case for Data.Deallocator.none(_:), v12);
  v19 = sub_100017A00(v17, v18, v16);
  v21 = v20;
  v22 = sub_1000182A8(0xBu, &qword_10007C5E8, &static PPM_0_2_1.VDAFType.rangesByEnumVals);
  if (v8)
  {
    return sub_100013E20(v19, v21);
  }

  v40 = 1;
  v39 = 1;
  v38 = 1;
  v37 = 1;
  v36 = 1;
  v35 = 1;
  v34 = 1;
  v33 = 1;
  v32 = 1;
  v31 = 0;
  v30 = 1;
  v29 = 1;
  v41[0] = v19;
  v41[1] = v21;
  v42 = v22;
  v43 = HIDWORD(v22);
  v44 = 1;
  v45 = 256;
  v46 = 0;
  v47 = 0;
  v48 = 1;
  v49 = 0;
  v50 = 1;
  v51 = 0;
  v52 = 1;
  v53 = 0;
  v54 = 1;
  v55 = 0;
  v56 = 1;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = xmmword_1000557B0;
  v63 = 0;
  v65 = 0;
  v64 = 0;
  v66 = 1;
  v67 = 0;
  v69 = 0;
  v68 = 0;
  v70 = 1;
  v71 = 0;
  v72 = 0;
  memset(v73, 0, 14);
  v73[14] = 1;
  v74 = v86;
  v75 = v27 >> 32;
  v76 = v26 >> 32;
  v78 = a7;
  v77 = a6 | (a7 << 16) | 0x100;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  memset(v82, 0, 14);
  v82[14] = 1;
  v83 = 0;
  v84 = 0;
  LOBYTE(v28[0]) = 1;
  v85 = 1;
  PPM_0_2_1.VDAFConfig.encodedLength(with:)();
  v28[0] = sub_100036B70(v24);
  v28[1] = v25;
  v40 = 1;
  sub_10001742C(v28, 0, 0x1000000000000);
  sub_10001C508(v41);
  return v28[0];
}

uint64_t sub_100019A6C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, unsigned __int8 a6, int a7, void *a8)
{
  *(&v26 + 1) = a5;
  DWORD1(v26) = a4;
  *(&v27 + 1) = a3;
  DWORD1(v27) = a2;
  v86 = a1;
  v12 = sub_1000502A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a8 bytes];
  v18 = [a8 length];
  (*(v13 + 104))(v16, enum case for Data.Deallocator.none(_:), v12);
  v19 = sub_100017A00(v17, v18, v16);
  v21 = v20;
  v22 = sub_1000182A8(0xCu, &qword_10007C5E8, &static PPM_0_2_1.VDAFType.rangesByEnumVals);
  if (v8)
  {
    return sub_100013E20(v19, v21);
  }

  v40 = 1;
  v39 = 1;
  v38 = 1;
  v37 = 1;
  v36 = 1;
  v35 = 1;
  v34 = 1;
  v33 = 1;
  v32 = 1;
  v31 = 1;
  v30 = 0;
  v29 = 1;
  v41[0] = v19;
  v41[1] = v21;
  v42 = v22;
  v43 = HIDWORD(v22);
  v44 = 1;
  v45 = 256;
  v46 = 0;
  v47 = 0;
  v48 = 1;
  v49 = 0;
  v50 = 1;
  v51 = 0;
  v52 = 1;
  v53 = 0;
  v54 = 1;
  v55 = 0;
  v56 = 1;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = xmmword_1000557B0;
  v63 = 0;
  v65 = 0;
  v64 = 0;
  v66 = 1;
  v67 = 0;
  v69 = 0;
  v68 = 0;
  v70 = 1;
  v71 = 0;
  v72 = 0;
  memset(v73, 0, 14);
  v73[14] = 1;
  v74 = 0;
  v75 = 0;
  memset(v76, 0, 14);
  v76[14] = 1;
  v77 = v86;
  v78 = v27 >> 32;
  v79 = v26 >> 32;
  v81 = a7;
  v80 = a6 | (a7 << 16) | 0x100;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  LOBYTE(v28[0]) = 1;
  v85 = 1;
  PPM_0_2_1.VDAFConfig.encodedLength(with:)();
  v28[0] = sub_100036B70(v24);
  v28[1] = v25;
  v40 = 1;
  sub_10001742C(v28, 0, 0x1000000000000);
  sub_10001C508(v41);
  return v28[0];
}

unint64_t sub_100019DC0(double a1)
{
  result = sub_1000182A8(2u, &qword_10007C5E0, &static PPM_0_2_1.DPMechanism.rangesByEnumVals);
  if (!v1)
  {
    v4 = result;
    v15 = 1;
    v14 = 1;
    v13 = 0;
    v7 = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals) & 0xFFFFFFFF000000FFLL;
    sub_10001C65C(v16);
    sub_10001C694(v18);
    sub_10001C6D4(v20);
    sub_10001C694(v22);
    *&v12[103] = v16[6];
    *&v12[119] = v16[7];
    *&v12[135] = v17[0];
    *&v12[144] = *(v17 + 9);
    *&v12[39] = v16[2];
    *&v12[55] = v16[3];
    *&v12[71] = v16[4];
    *&v12[87] = v16[5];
    *&v12[7] = v16[0];
    *&v12[23] = v16[1];
    *&v11[151] = v18[9];
    *&v11[167] = v18[10];
    *&v11[183] = v18[11];
    *&v11[87] = v18[5];
    *&v11[103] = v18[6];
    *&v11[119] = v18[7];
    *&v11[135] = v18[8];
    *&v11[23] = v18[1];
    *&v11[39] = v18[2];
    *&v11[55] = v18[3];
    *&v11[71] = v18[4];
    *&v11[7] = v18[0];
    *(&v10[8] + 7) = v20[8];
    *(&v10[9] + 7) = v20[9];
    *(&v10[10] + 7) = v21[0];
    v10[11] = *(v21 + 9);
    *(&v10[4] + 7) = v20[4];
    *(&v10[5] + 7) = v20[5];
    *(&v10[6] + 7) = v20[6];
    *(&v10[7] + 7) = v20[7];
    *(v10 + 7) = v20[0];
    *(&v10[1] + 7) = v20[1];
    *(&v10[2] + 7) = v20[2];
    *(&v10[3] + 7) = v20[3];
    *&v9[151] = v22[9];
    *&v9[167] = v22[10];
    *&v9[183] = v22[11];
    *&v9[87] = v22[5];
    *&v9[103] = v22[6];
    *&v9[119] = v22[7];
    *&v9[135] = v22[8];
    *&v9[23] = v22[1];
    *&v9[39] = v22[2];
    LOBYTE(v8[0]) = 1;
    v11[199] = v19;
    v9[199] = v23;
    *&v9[55] = v22[3];
    *&v9[71] = v22[4];
    *&v9[7] = v22[0];
    v28 = v4;
    v29 = HIDWORD(v4);
    v30 = 1;
    v31 = v7;
    v32 = 0x10000;
    v33 = 1;
    v34 = a1;
    v35 = 0;
    v36 = 4;
    v42 = xmmword_1000557B0;
    v54 = *&v12[112];
    v55 = *&v12[128];
    v56 = *(v17 + 9);
    v52 = *&v12[80];
    v53 = *&v12[96];
    v49 = *&v12[32];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
    v45 = 0;
    v43 = 0;
    v44 = 0;
    v46 = 0;
    v50 = *&v12[48];
    v51 = *&v12[64];
    v47 = *v12;
    v48 = *&v12[16];
    v67 = *&v11[160];
    v68 = *&v11[176];
    v69 = *&v11[192];
    v63 = *&v11[96];
    v64 = *&v11[112];
    v65 = *&v11[128];
    v66 = *&v11[144];
    v59 = *&v11[32];
    v60 = *&v11[48];
    v61 = *&v11[64];
    v62 = *&v11[80];
    v57 = *v11;
    v58 = *&v11[16];
    v78 = v10[8];
    v79 = v10[9];
    v80 = v10[10];
    v81 = *(v21 + 9);
    v74 = v10[4];
    v75 = v10[5];
    v76 = v10[6];
    v77 = v10[7];
    v70 = v10[0];
    v71 = v10[1];
    v72 = v10[2];
    v73 = v10[3];
    v92 = *&v9[160];
    v93 = *&v9[176];
    v94 = *&v9[192];
    v88 = *&v9[96];
    v89 = *&v9[112];
    v90 = *&v9[128];
    v91 = *&v9[144];
    v84 = *&v9[32];
    v85 = *&v9[48];
    v86 = *&v9[64];
    v87 = *&v9[80];
    v82 = *v9;
    v83 = *&v9[16];
    v24 = 1;
    memset(v25, 0, sizeof(v25));
    v26 = 0;
    v27 = 1;
    v5 = PPM_0_2_1.DPConfig.encodedLength(with:)(v25);
    v8[0] = sub_100036B70(v5);
    v8[1] = v6;
    sub_100016A9C(v8, v25);
    return v8[0];
  }

  return result;
}

unint64_t sub_10001A1D4()
{
  result = sub_1000182A8(1u, &qword_10007C5E0, &static PPM_0_2_1.DPMechanism.rangesByEnumVals);
  if (!v0)
  {
    v2 = HIDWORD(result);
    v3 = result;
    v90 = 0;
    sub_10001C65C(v11);
    sub_10001C694(v13);
    sub_10001C6D4(v15);
    sub_10001C694(v17);
    LOBYTE(v6[0]) = 0;
    *&v10[103] = v11[6];
    *&v10[119] = v11[7];
    *&v10[135] = v12[0];
    *&v10[144] = *(v12 + 9);
    *&v10[39] = v11[2];
    *&v10[55] = v11[3];
    *&v10[71] = v11[4];
    *&v10[87] = v11[5];
    *&v10[7] = v11[0];
    *&v10[23] = v11[1];
    *&v9[151] = v13[9];
    *&v9[167] = v13[10];
    *&v9[183] = v13[11];
    v9[199] = v14;
    *&v9[87] = v13[5];
    *&v9[103] = v13[6];
    *&v9[119] = v13[7];
    *&v9[135] = v13[8];
    *&v9[23] = v13[1];
    *&v9[39] = v13[2];
    *&v9[55] = v13[3];
    *&v9[71] = v13[4];
    *&v9[7] = v13[0];
    *(&v8[8] + 7) = v15[8];
    *(&v8[9] + 7) = v15[9];
    *(&v8[10] + 7) = v16[0];
    v8[11] = *(v16 + 9);
    *(&v8[4] + 7) = v15[4];
    *(&v8[5] + 7) = v15[5];
    *(&v8[6] + 7) = v15[6];
    *(&v8[7] + 7) = v15[7];
    *(v8 + 7) = v15[0];
    *(&v8[1] + 7) = v15[1];
    *(&v8[2] + 7) = v15[2];
    *(&v8[3] + 7) = v15[3];
    *&v7[151] = v17[9];
    *&v7[167] = v17[10];
    *&v7[183] = v17[11];
    v7[199] = v18;
    *&v7[87] = v17[5];
    *&v7[103] = v17[6];
    *&v7[119] = v17[7];
    *&v7[135] = v17[8];
    *&v7[23] = v17[1];
    *&v7[39] = v17[2];
    *&v7[55] = v17[3];
    *&v7[71] = v17[4];
    *&v7[7] = v17[0];
    v23 = v3;
    v24 = v2;
    v25 = 0;
    v26 = 4;
    v27 = 0;
    v29 = 0;
    v28 = 0;
    v30 = 0;
    v31 = 4;
    v37 = xmmword_1000557B0;
    v49 = *&v10[112];
    v50 = *&v10[128];
    v51 = *(v12 + 9);
    v47 = *&v10[80];
    v48 = *&v10[96];
    v44 = *&v10[32];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    v40 = 0;
    v38 = 0;
    v39 = 0;
    v41 = 0;
    v45 = *&v10[48];
    v46 = *&v10[64];
    v42 = *v10;
    v43 = *&v10[16];
    v62 = *&v9[160];
    v63 = *&v9[176];
    v64 = *&v9[192];
    v58 = *&v9[96];
    v59 = *&v9[112];
    v60 = *&v9[128];
    v61 = *&v9[144];
    v54 = *&v9[32];
    v55 = *&v9[48];
    v56 = *&v9[64];
    v57 = *&v9[80];
    v52 = *v9;
    v53 = *&v9[16];
    v73 = v8[8];
    v74 = v8[9];
    v75 = v8[10];
    v76 = *(v16 + 9);
    v69 = v8[4];
    v70 = v8[5];
    v71 = v8[6];
    v72 = v8[7];
    v65 = v8[0];
    v66 = v8[1];
    v67 = v8[2];
    v68 = v8[3];
    v87 = *&v7[160];
    v88 = *&v7[176];
    v89 = *&v7[192];
    v83 = *&v7[96];
    v84 = *&v7[112];
    v85 = *&v7[128];
    v86 = *&v7[144];
    v79 = *&v7[32];
    v80 = *&v7[48];
    v81 = *&v7[64];
    v82 = *&v7[80];
    v77 = *v7;
    v78 = *&v7[16];
    v19 = 1;
    memset(v20, 0, sizeof(v20));
    v21 = 0;
    v22 = 1;
    v4 = v90;
    result = PPM_0_2_1.DPConfig.encodedLength(with:)(v20);
    if (!v4)
    {
      v6[0] = sub_100036B70(result);
      v6[1] = v5;
      sub_100016A9C(v6, v20);
      return v6[0];
    }
  }

  return result;
}

unint64_t sub_10001A570(double a1, double a2, double a3, double a4, double a5)
{
  result = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals);
  if (!v5)
  {
    v12 = result;
    v13 = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals);
    v14 = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals);
    v15 = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals);
    v55 = 1;
    v54 = 1;
    v53 = 0;
    v58 = 1;
    v57 = 1;
    v56 = 0;
    v61 = 1;
    v60 = 1;
    v59 = 0;
    v64 = 1;
    v63 = 1;
    v62 = 0;
    v16 = sub_1000182A8(6u, &qword_10007C5E0, &static PPM_0_2_1.DPMechanism.rangesByEnumVals);
    v17 = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals);
    v23 = v16;
    v24 = HIDWORD(v16);
    v22 = HIDWORD(v17);
    LOBYTE(v16) = v17;
    sub_10001C65C(v30);
    v34 = 1;
    v33 = 1;
    v32 = 0;
    LOBYTE(v35) = v12;
    DWORD1(v35) = HIDWORD(v12);
    WORD4(v35) = 0;
    BYTE10(v35) = 1;
    HIDWORD(v35) = 0;
    LOBYTE(v36) = 1;
    *(&v36 + 1) = a1;
    LOBYTE(v37) = 0;
    BYTE8(v37) = v13;
    HIDWORD(v37) = HIDWORD(v13);
    LOWORD(v38) = 0;
    BYTE2(v38) = 1;
    DWORD1(v38) = 0;
    BYTE8(v38) = 1;
    *&v39 = a2;
    BYTE8(v39) = 0;
    LOBYTE(v40) = v14;
    DWORD1(v40) = HIDWORD(v14);
    WORD4(v40) = 0;
    BYTE10(v40) = 1;
    HIDWORD(v40) = 0;
    LOBYTE(v41) = 1;
    *(&v41 + 1) = a3;
    LOBYTE(v42) = 0;
    BYTE8(v42) = v15;
    HIDWORD(v42) = HIDWORD(v15);
    LOWORD(v43) = 0;
    BYTE2(v43) = 1;
    DWORD1(v43) = 0;
    BYTE8(v43) = 1;
    *&v44 = a4;
    BYTE8(v44) = 0;
    LOBYTE(v45) = v16;
    DWORD1(v45) = v22;
    WORD4(v45) = 0;
    BYTE10(v45) = 1;
    HIDWORD(v45) = 0;
    LOBYTE(v46) = 1;
    *(&v46 + 1) = a5;
    v47 = 0;
    PPM_0_2_1.Extension.extensionType.getter(&v35, v18, v19);
    sub_10001C6D4(v48);
    sub_10001C694(v50);
    LOBYTE(v25[0]) = 1;
    *&v29[103] = v30[6];
    *&v29[119] = v30[7];
    *&v29[135] = v31[0];
    *&v29[144] = *(v31 + 9);
    *&v29[39] = v30[2];
    *&v29[55] = v30[3];
    *&v29[71] = v30[4];
    *&v29[87] = v30[5];
    *&v29[7] = v30[0];
    *&v29[23] = v30[1];
    *&v28[151] = v44;
    *&v28[167] = v45;
    *&v28[183] = v46;
    v28[199] = v47;
    *&v28[87] = v40;
    *&v28[103] = v41;
    *&v28[119] = v42;
    *&v28[135] = v43;
    *&v28[23] = v36;
    *&v28[39] = v37;
    *&v28[55] = v38;
    *&v28[71] = v39;
    *&v28[7] = v35;
    *(&v27[8] + 7) = v48[8];
    *(&v27[9] + 7) = v48[9];
    *(&v27[10] + 7) = v49[0];
    v27[11] = *(v49 + 9);
    *(&v27[4] + 7) = v48[4];
    *(&v27[5] + 7) = v48[5];
    *(&v27[6] + 7) = v48[6];
    *(&v27[7] + 7) = v48[7];
    *(v27 + 7) = v48[0];
    *(&v27[1] + 7) = v48[1];
    *(&v27[2] + 7) = v48[2];
    *(&v27[3] + 7) = v48[3];
    *&v26[151] = v50[9];
    *&v26[167] = v50[10];
    *&v26[183] = v50[11];
    v26[199] = v51;
    *&v26[87] = v50[5];
    *&v26[103] = v50[6];
    *&v26[119] = v50[7];
    *&v26[135] = v50[8];
    *&v26[23] = v50[1];
    *&v26[39] = v50[2];
    *&v26[55] = v50[3];
    *&v26[71] = v50[4];
    *&v26[7] = v50[0];
    v68 = v23;
    v69 = v24;
    v70 = 1;
    v71 = 4;
    v72 = 0;
    v74 = 0;
    v73 = 0;
    v75 = 0;
    v76 = 4;
    v82 = xmmword_1000557B0;
    v94 = *&v29[112];
    v95 = *&v29[128];
    v96 = *(v31 + 9);
    v92 = *&v29[80];
    v93 = *&v29[96];
    v89 = *&v29[32];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0;
    v85 = 0;
    v83 = 0;
    v84 = 0;
    v86 = 0;
    v90 = *&v29[48];
    v91 = *&v29[64];
    v87 = *v29;
    v88 = *&v29[16];
    v107 = *&v28[160];
    v108 = *&v28[176];
    v109 = *&v28[192];
    v103 = *&v28[96];
    v104 = *&v28[112];
    v105 = *&v28[128];
    v106 = *&v28[144];
    v99 = *&v28[32];
    v100 = *&v28[48];
    v101 = *&v28[64];
    v102 = *&v28[80];
    v97 = *v28;
    v98 = *&v28[16];
    v118 = v27[8];
    v119 = v27[9];
    v120 = v27[10];
    v121 = *(v49 + 9);
    v114 = v27[4];
    v115 = v27[5];
    v116 = v27[6];
    v117 = v27[7];
    v110 = v27[0];
    v111 = v27[1];
    v112 = v27[2];
    v113 = v27[3];
    v132 = *&v26[160];
    v133 = *&v26[176];
    v134 = *&v26[192];
    v128 = *&v26[96];
    v129 = *&v26[112];
    v130 = *&v26[128];
    v131 = *&v26[144];
    v124 = *&v26[32];
    v125 = *&v26[48];
    v126 = *&v26[64];
    v127 = *&v26[80];
    v122 = *v26;
    v123 = *&v26[16];
    v52 = 1;
    memset(v65, 0, sizeof(v65));
    v66 = 0;
    v67 = 1;
    v20 = PPM_0_2_1.DPConfig.encodedLength(with:)(v65);
    v25[0] = sub_100036B70(v20);
    v25[1] = v21;
    sub_100016A9C(v25, v65);
    return v25[0];
  }

  return result;
}

unint64_t sub_10001AB9C(uint64_t a1, int a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8)
{
  result = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals);
  if (!v8)
  {
    v18 = result;
    v19 = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals);
    v20 = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals);
    v21 = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals);
    v54 = 1;
    v53 = 1;
    v52 = 0;
    v57 = 1;
    v56 = 1;
    v55 = 0;
    v60 = 1;
    v59 = 1;
    v58 = 0;
    v63 = 1;
    v62 = 1;
    v61 = 0;
    v135 = 1;
    v22 = sub_1000182A8(7u, &qword_10007C5E0, &static PPM_0_2_1.DPMechanism.rangesByEnumVals);
    v134 = 0;
    v27 = v22;
    v28 = HIDWORD(v22);
    sub_10001C65C(v34);
    sub_10001C694(v36);
    *&v38 = a1;
    DWORD2(v38) = a2;
    *&v39 = a3;
    DWORD2(v39) = a4;
    LOBYTE(v40) = v18;
    DWORD1(v40) = HIDWORD(v18);
    WORD4(v40) = 0;
    BYTE10(v40) = 1;
    HIDWORD(v40) = 0;
    LOBYTE(v41) = 1;
    *(&v41 + 1) = a5;
    LOBYTE(v42) = 0;
    BYTE8(v42) = v19;
    HIDWORD(v42) = HIDWORD(v19);
    LOWORD(v43) = 0;
    BYTE2(v43) = 1;
    DWORD1(v43) = 0;
    BYTE8(v43) = 1;
    *&v44 = a6;
    BYTE8(v44) = 0;
    LOBYTE(v45) = v20;
    DWORD1(v45) = HIDWORD(v20);
    WORD4(v45) = 0;
    BYTE10(v45) = 1;
    HIDWORD(v45) = 0;
    LOBYTE(v46) = v135;
    *(&v46 + 1) = a7;
    LOBYTE(v47) = v134;
    BYTE8(v47) = v21;
    HIDWORD(v47) = HIDWORD(v21);
    *v48 = 0;
    v48[2] = 1;
    *&v48[4] = 0;
    v48[8] = 1;
    *&v48[16] = a8;
    v48[24] = 0;
    PPM_0_2_1.Extension.extensionType.getter(&v38, v23, v24);
    sub_10001C694(v49);
    LOBYTE(v29[0]) = 1;
    *&v33[103] = v34[6];
    *&v33[119] = v34[7];
    *&v33[135] = v35[0];
    *&v33[144] = *(v35 + 9);
    *&v33[39] = v34[2];
    *&v33[55] = v34[3];
    *&v33[71] = v34[4];
    *&v33[87] = v34[5];
    *&v33[7] = v34[0];
    *&v33[23] = v34[1];
    *&v32[151] = v36[9];
    *&v32[167] = v36[10];
    *&v32[183] = v36[11];
    v32[199] = v37;
    *&v32[87] = v36[5];
    *&v32[103] = v36[6];
    *&v32[119] = v36[7];
    *&v32[135] = v36[8];
    *&v32[23] = v36[1];
    *&v32[39] = v36[2];
    *&v32[55] = v36[3];
    *&v32[71] = v36[4];
    *&v32[7] = v36[0];
    *(&v31[8] + 7) = v46;
    *(&v31[9] + 7) = v47;
    *(&v31[10] + 7) = *v48;
    v31[11] = *&v48[9];
    *(&v31[4] + 7) = v42;
    *(&v31[5] + 7) = v43;
    *(&v31[6] + 7) = v44;
    *(&v31[7] + 7) = v45;
    *(v31 + 7) = v38;
    *(&v31[1] + 7) = v39;
    *(&v31[2] + 7) = v40;
    *(&v31[3] + 7) = v41;
    *&v30[151] = v49[9];
    *&v30[167] = v49[10];
    *&v30[183] = v49[11];
    v30[199] = v50;
    *&v30[87] = v49[5];
    *&v30[103] = v49[6];
    *&v30[119] = v49[7];
    *&v30[135] = v49[8];
    *&v30[23] = v49[1];
    *&v30[39] = v49[2];
    *&v30[55] = v49[3];
    *&v30[71] = v49[4];
    *&v30[7] = v49[0];
    v67 = v27;
    v68 = v28;
    v69 = 1;
    v70 = 4;
    v71 = 0;
    v73 = 0;
    v72 = 0;
    v74 = 0;
    v75 = 4;
    v81 = xmmword_1000557B0;
    v93 = *&v33[112];
    v94 = *&v33[128];
    v95 = *(v35 + 9);
    v91 = *&v33[80];
    v92 = *&v33[96];
    v88 = *&v33[32];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0;
    v84 = 0;
    v82 = 0;
    v83 = 0;
    v85 = 0;
    v89 = *&v33[48];
    v90 = *&v33[64];
    v86 = *v33;
    v87 = *&v33[16];
    v106 = *&v32[160];
    v107 = *&v32[176];
    v108 = *&v32[192];
    v102 = *&v32[96];
    v103 = *&v32[112];
    v104 = *&v32[128];
    v105 = *&v32[144];
    v98 = *&v32[32];
    v99 = *&v32[48];
    v100 = *&v32[64];
    v101 = *&v32[80];
    v96 = *v32;
    v97 = *&v32[16];
    v117 = v31[8];
    v118 = v31[9];
    v119 = v31[10];
    v120 = *&v48[9];
    v113 = v31[4];
    v114 = v31[5];
    v115 = v31[6];
    v116 = v31[7];
    v109 = v31[0];
    v110 = v31[1];
    v111 = v31[2];
    v112 = v31[3];
    v131 = *&v30[160];
    v132 = *&v30[176];
    v133 = *&v30[192];
    v127 = *&v30[96];
    v128 = *&v30[112];
    v129 = *&v30[128];
    v130 = *&v30[144];
    v123 = *&v30[32];
    v124 = *&v30[48];
    v125 = *&v30[64];
    v126 = *&v30[80];
    v121 = *v30;
    v122 = *&v30[16];
    v51 = 1;
    memset(v64, 0, sizeof(v64));
    v65 = 0;
    v66 = 1;
    v25 = PPM_0_2_1.DPConfig.encodedLength(with:)(v64);
    v29[0] = sub_100036B70(v25);
    v29[1] = v26;
    sub_100016A9C(v29, v64);
    return v29[0];
  }

  return result;
}

unint64_t sub_10001B174(double a1, double a2, double a3, double a4, double a5)
{
  result = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals);
  if (!v5)
  {
    v12 = result;
    v13 = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals);
    v14 = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals);
    v15 = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals);
    v16 = sub_1000182A8(3u, &qword_10007C5D8, &static PPM_0_2_1.RealNumberType.rangesByEnumVals);
    v51 = 1;
    v50 = 1;
    v49 = 0;
    v54 = 1;
    v53 = 1;
    v52 = 0;
    v57 = 1;
    v56 = 1;
    v55 = 0;
    v60 = 1;
    v59 = 1;
    v58 = 0;
    v63 = 1;
    v62 = 1;
    v61 = 0;
    v17 = sub_1000182A8(8u, &qword_10007C5E0, &static PPM_0_2_1.DPMechanism.rangesByEnumVals);
    v22 = v17;
    v23 = HIDWORD(v17);
    sub_10001C65C(v29);
    sub_10001C694(v31);
    sub_10001C6D4(v33);
    LOBYTE(v35) = v12;
    DWORD1(v35) = HIDWORD(v12);
    WORD4(v35) = 0;
    BYTE10(v35) = 1;
    HIDWORD(v35) = 0;
    LOBYTE(v36) = 1;
    *(&v36 + 1) = a1;
    LOBYTE(v37) = 0;
    BYTE8(v37) = v13;
    HIDWORD(v37) = HIDWORD(v13);
    LOWORD(v38) = 0;
    BYTE2(v38) = 1;
    DWORD1(v38) = 0;
    BYTE8(v38) = 1;
    *(&v38 + 9) = *v76;
    HIDWORD(v38) = *&v76[3];
    *&v39 = a2;
    BYTE8(v39) = 0;
    *(&v39 + 9) = *v75;
    HIDWORD(v39) = *&v75[3];
    LOBYTE(v40) = v14;
    *(&v40 + 1) = v73;
    BYTE3(v40) = v74;
    DWORD1(v40) = HIDWORD(v14);
    WORD4(v40) = 0;
    BYTE10(v40) = 1;
    HIDWORD(v40) = 0;
    LOBYTE(v41) = 1;
    DWORD1(v41) = *&v72[3];
    *(&v41 + 1) = *v72;
    *(&v41 + 1) = a3;
    LOBYTE(v42) = 0;
    DWORD1(v42) = *&v71[3];
    *(&v42 + 1) = *v71;
    BYTE8(v42) = v15;
    BYTE11(v42) = v70;
    *(&v42 + 9) = v69;
    HIDWORD(v42) = HIDWORD(v15);
    LOWORD(v43) = 0;
    BYTE2(v43) = 1;
    DWORD1(v43) = 0;
    BYTE8(v43) = 1;
    HIDWORD(v43) = *&v68[3];
    *(&v43 + 9) = *v68;
    *&v44 = a4;
    BYTE8(v44) = 0;
    HIDWORD(v44) = *&v67[3];
    *(&v44 + 9) = *v67;
    LOBYTE(v45) = v16;
    BYTE3(v45) = v66;
    *(&v45 + 1) = v65;
    DWORD1(v45) = HIDWORD(v16);
    WORD4(v45) = 0;
    BYTE10(v45) = 1;
    HIDWORD(v45) = 0;
    LOBYTE(v46) = 1;
    DWORD1(v46) = *&v64[3];
    *(&v46 + 1) = *v64;
    *(&v46 + 1) = a5;
    v47 = 0;
    PPM_0_2_1.Extension.extensionType.getter(&v35, v18, v19);
    LOBYTE(v24[0]) = 1;
    *&v28[103] = v29[6];
    *&v28[119] = v29[7];
    *&v28[135] = v30[0];
    *&v28[144] = *(v30 + 9);
    *&v28[39] = v29[2];
    *&v28[55] = v29[3];
    *&v28[71] = v29[4];
    *&v28[87] = v29[5];
    *&v28[7] = v29[0];
    *&v28[23] = v29[1];
    *&v27[151] = v31[9];
    *&v27[167] = v31[10];
    *&v27[183] = v31[11];
    v27[199] = v32;
    *&v27[87] = v31[5];
    *&v27[103] = v31[6];
    *&v27[119] = v31[7];
    *&v27[135] = v31[8];
    *&v27[23] = v31[1];
    *&v27[39] = v31[2];
    *&v27[55] = v31[3];
    *&v27[71] = v31[4];
    *&v27[7] = v31[0];
    *&v26[135] = v33[8];
    *&v26[151] = v33[9];
    *&v26[167] = v34[0];
    *&v26[176] = *(v34 + 9);
    *&v26[71] = v33[4];
    *&v26[87] = v33[5];
    *&v26[103] = v33[6];
    *&v26[119] = v33[7];
    *&v26[7] = v33[0];
    *&v26[23] = v33[1];
    *&v26[39] = v33[2];
    *&v26[55] = v33[3];
    *&v25[151] = v44;
    *&v25[167] = v45;
    *&v25[183] = v46;
    v25[199] = v47;
    *&v25[87] = v40;
    *&v25[103] = v41;
    *&v25[119] = v42;
    *&v25[135] = v43;
    *&v25[23] = v36;
    *&v25[39] = v37;
    *&v25[55] = v38;
    *&v25[71] = v39;
    *&v25[7] = v35;
    v80 = v22;
    v81 = v23;
    v82 = 1;
    v83 = 4;
    v84 = 0;
    v86 = 0;
    v85 = 0;
    v87 = 0;
    v88 = 4;
    v94 = xmmword_1000557B0;
    v106 = *&v28[112];
    v107 = *&v28[128];
    v108 = *(v30 + 9);
    v104 = *&v28[80];
    v105 = *&v28[96];
    v101 = *&v28[32];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0;
    v97 = 0;
    v95 = 0;
    v96 = 0;
    v98 = 0;
    v102 = *&v28[48];
    v103 = *&v28[64];
    v99 = *v28;
    v100 = *&v28[16];
    v119 = *&v27[160];
    v120 = *&v27[176];
    v121 = *&v27[192];
    v115 = *&v27[96];
    v116 = *&v27[112];
    v117 = *&v27[128];
    v118 = *&v27[144];
    v111 = *&v27[32];
    v112 = *&v27[48];
    v113 = *&v27[64];
    v114 = *&v27[80];
    v109 = *v27;
    v110 = *&v27[16];
    v130 = *&v26[128];
    v131 = *&v26[144];
    v132 = *&v26[160];
    v133 = *(v34 + 9);
    v126 = *&v26[64];
    v127 = *&v26[80];
    v128 = *&v26[96];
    v129 = *&v26[112];
    v122 = *v26;
    v123 = *&v26[16];
    v124 = *&v26[32];
    v125 = *&v26[48];
    v144 = *&v25[160];
    v145 = *&v25[176];
    v146 = *&v25[192];
    v140 = *&v25[96];
    v141 = *&v25[112];
    v142 = *&v25[128];
    v143 = *&v25[144];
    v136 = *&v25[32];
    v137 = *&v25[48];
    v138 = *&v25[64];
    v139 = *&v25[80];
    v134 = *v25;
    v135 = *&v25[16];
    v48 = 1;
    memset(v77, 0, sizeof(v77));
    v78 = 0;
    v79 = 1;
    v20 = PPM_0_2_1.DPConfig.encodedLength(with:)(v77);
    v24[0] = sub_100036B70(v20);
    v24[1] = v21;
    sub_100016A9C(v24, v77);
    return v24[0];
  }

  return result;
}

uint64_t sub_10001B95C(void *a1, uint64_t a2, void *a3, int a4, void *a5, void *a6, int a7, void *a8, void *a9)
{
  v60 = a8;
  v64 = a7;
  v57 = a6;
  v54 = a5;
  v63 = a4;
  v61 = a9;
  v62 = a2;
  v11 = sub_1000502A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 bytes];
  v17 = [a1 length];
  v18 = enum case for Data.Deallocator.none(_:);
  v19 = *(v12 + 104);
  v19(v15, enum case for Data.Deallocator.none(_:), v11);
  v20 = sub_100017A00(v16, v17, v15);
  v58 = v21;
  v59 = v20;
  v22 = [a3 bytes];
  v23 = [a3 length];
  v19(v15, v18, v11);
  v56 = sub_100017A00(v22, v23, v15);
  v55 = v24;
  v25 = v54;
  v26 = [v25 bytes];
  v27 = [v25 length];
  v19(v15, v18, v11);
  v51 = v19;
  v54 = sub_100017A00(v26, v27, v15);
  v53 = v28;
  v29 = v57;
  v30 = [v29 bytes];
  v31 = [v29 length];
  v32 = v11;
  v19(v15, v18, v11);
  v57 = sub_100017A00(v30, v31, v15);
  v52 = v33;
  v34 = v60;
  v35 = [v34 bytes];
  v36 = [v34 length];
  v37 = v32;
  v38 = v51;
  v51(v15, v18, v32);
  v39 = sub_100017A00(v35, v36, v15);
  v41 = v40;
  v42 = v61;
  v43 = [v42 bytes];
  v44 = [v42 length];
  v38(v15, v18, v37);
  v45 = sub_100017A00(v43, v44, v15);
  v65[0] = v59;
  v65[1] = v58;
  v65[2] = v62;
  v65[3] = v56;
  v65[4] = v55;
  v66 = v63;
  v67 = v54;
  v68 = v53;
  v69 = v57;
  v70 = v52;
  v71 = v64;
  v72 = v39;
  v73 = v41;
  v74 = v45;
  v75 = v46;
  sub_1000377F0();
  v48 = v47;
  sub_10001C790(v65);
  return v48;
}

uint64_t sub_10001BD4C(void *a1, void *a2, unint64_t a3, void *a4)
{
  v35 = a3;
  v33 = a4;
  v6 = sub_1000502A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 bytes];
  v12 = [a1 length];
  v13 = enum case for Data.Deallocator.none(_:);
  v14 = *(v7 + 104);
  v14(v10, enum case for Data.Deallocator.none(_:), v6);
  v34 = sub_100017A00(v11, v12, v10);
  v32 = v15;
  v16 = [a2 bytes];
  v17 = [a2 length];
  v18 = v6;
  v14(v10, v13, v6);
  v19 = sub_100017A00(v16, v17, v10);
  v21 = v20;
  v22 = v33;
  v23 = [v22 bytes];
  v24 = [v22 length];
  v14(v10, v13, v18);
  v25 = sub_100017A00(v23, v24, v10);
  v38 = v34;
  v39 = v32;
  v40 = v19;
  v41 = v21;
  v26 = v36;
  v42 = v35;
  v43 = v25;
  v44 = v27;
  sub_100042BC8();
  if (v26)
  {
    return sub_10001C73C(&v38);
  }

  v37[0] = sub_100036B70(v28);
  v37[1] = v30;
  sub_100015AD4(v37, 0x2000000020, 1, v38, v39);
  v31 = v42;
  sub_100015AD4(v37, 0x1000000010, 1, v40, v41);
  sub_10001508C(8uLL, v37, v31);
  sub_100015AD4(v37, 0xFFFFFFFF00000000, 1, v43, v44);
  sub_10001C73C(&v38);
  return v37[0];
}

uint64_t sub_10001C024(void *a1)
{
  v3 = sub_1000502A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100013EC0(&qword_10007C728, &qword_100055828);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000557C0;
  v9 = sub_10001842C();
  if (v1)
  {
    *(v8 + 16) = 0;
  }

  else
  {
    *(v8 + 32) = v9;
    *(v8 + 40) = xmmword_1000557D0;
    v10 = [a1 bytes];
    v11 = [a1 length];
    (*(v4 + 104))(v7, enum case for Data.Deallocator.none(_:), v3);
    v12 = sub_100017A00(v10, v11, v7);
    v14 = v13;
    v3 = sub_100032950(v8, v12, v13);

    sub_100013E20(v12, v14);
  }

  return v3;
}

uint64_t sub_10001C1E8(unsigned int a1, uint64_t a2, int a3, void *a4)
{
  v77 = a3;
  v8 = sub_1000502A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a4 bytes];
  v14 = [a4 length];
  (*(v9 + 104))(v12, enum case for Data.Deallocator.none(_:), v8);
  v15 = sub_100017A00(v13, v14, v12);
  v17 = v16;
  v18 = sub_1000182A8(0xDu, &qword_10007C5E8, &static PPM_0_2_1.VDAFType.rangesByEnumVals);
  if (v4)
  {
    return sub_100013E20(v15, v17);
  }

  v34 = 1;
  v33 = 1;
  v32 = 1;
  v31 = 1;
  v30 = 1;
  v29 = 1;
  v28 = 1;
  v27 = 1;
  v26 = 1;
  v25 = 1;
  v24 = 1;
  v23 = 0;
  v35[0] = v15;
  v35[1] = v17;
  v36 = v18;
  v37 = HIDWORD(v18);
  v38 = 1;
  v39 = 256;
  v40 = 0;
  v41 = 0;
  v42 = 1;
  v43 = 0;
  v44 = 1;
  v45 = 0;
  v46 = 1;
  v47 = 0;
  v48 = 1;
  v49 = 0;
  v50 = 1;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = xmmword_1000557B0;
  v57 = 0;
  v59 = 0;
  v58 = 0;
  v60 = 1;
  v61 = 0;
  v63 = 0;
  v62 = 0;
  v64 = 1;
  v65 = 0;
  v66 = 0;
  memset(v67, 0, 14);
  v67[14] = 1;
  v68 = 0;
  v69 = 0;
  memset(v70, 0, 14);
  v70[14] = 1;
  v72 = 0;
  memset(v73, 0, 14);
  v71 = 0;
  v73[14] = 1;
  v74 = a1 | (a2 << 32);
  v75 = v77;
  LOBYTE(v22[0]) = 1;
  v76 = 0;
  PPM_0_2_1.VDAFConfig.encodedLength(with:)();
  v22[0] = sub_100036B70(v20);
  v22[1] = v21;
  v34 = 1;
  sub_10001742C(v22, 0, 0x1000000000000);
  sub_10001C508(v35);
  return v22[0];
}

unint64_t sub_10001C55C()
{
  result = qword_10007C710;
  if (!qword_10007C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C710);
  }

  return result;
}

unint64_t sub_10001C5B0()
{
  result = qword_10007C720;
  if (!qword_10007C720)
  {
    sub_10001C614(&qword_10007C718, &qword_100055820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C720);
  }

  return result;
}

uint64_t sub_10001C614(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

double sub_10001C65C(uint64_t a1)
{
  *a1 = 4;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

double sub_10001C694(uint64_t a1)
{
  *a1 = 4;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 177) = 0u;
  return result;
}

double sub_10001C6D4(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 4;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  return result;
}

uint64_t sub_10001C714(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001C728(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001C850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 36);
  v6 = sub_1000503E0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10001C8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  v7 = sub_1000503E0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata accessor for DediscoAlgorithmParametersOtherParams()
{
  result = qword_10007C788;
  if (!qword_10007C788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001C9A4()
{
  result = sub_1000503E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001CA3C()
{
  v0 = sub_100050590();
  sub_1000142C8(v0, qword_100084348);
  sub_100012CA8(v0, qword_100084348);
  sub_100013EC0(&qword_10007C7F8, &unk_1000559D0);
  v1 = (sub_100013EC0(&qword_10007C800, &qword_100059780) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100055830;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "cohort_size";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100050560();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sigma";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pi_rappor_prime";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pi_rappor_alpha0";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "pi_rappor_alpha1";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return sub_100050570();
}

uint64_t sub_10001CCD4()
{
  while (1)
  {
    result = sub_100050420();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_100050450();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result == 3)
    {
      sub_100050480();
    }

    else if (result == 4 || result == 5)
    {
LABEL_2:
      sub_100050460();
    }
  }
}

uint64_t sub_10001CDA8()
{
  if (!*v0 || (result = sub_100050510(), !v1))
  {
    if (*(v0 + 8) == 0.0 || (result = sub_100050520(), !v1))
    {
      if (!*(v0 + 16) || (result = sub_100050540(), !v1))
      {
        if (*(v0 + 24) == 0.0 || (result = sub_100050520(), !v1))
        {
          if (*(v0 + 32) == 0.0 || (result = sub_100050520(), !v1))
          {
            v3 = v0 + *(type metadata accessor for DediscoAlgorithmParametersOtherParams() + 36);
            return sub_1000503C0();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10001CEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v2 = a2 + *(a1 + 36);
  return _s19DPSubmissionService5EmptyVACycfC_0();
}

uint64_t sub_10001CF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10001CF84(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_10001CFF8(uint64_t a1, uint64_t a2))()
{
  result = PPM_0_2_1.Extension.extensionType.getter;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_10001D050(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001D518(&qword_10007C7F0, type metadata accessor for DediscoAlgorithmParametersOtherParams);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10001D0D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10007C5D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100050590();
  v3 = sub_100012CA8(v2, qword_100084348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10001D178(uint64_t a1)
{
  v2 = sub_10001D518(&qword_10007C7D8, type metadata accessor for DediscoAlgorithmParametersOtherParams);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_10001D1E4()
{
  sub_1000509E0();
  sub_100050700();
  return sub_100050A00();
}

uint64_t sub_10001D23C()
{
  sub_10001D518(&qword_10007C7D8, type metadata accessor for DediscoAlgorithmParametersOtherParams);

  return sub_1000504D0();
}

Swift::Int sub_10001D2B8()
{
  sub_1000509E0();
  sub_100050700();
  return sub_100050A00();
}

uint64_t sub_10001D430(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v2 = *(type metadata accessor for DediscoAlgorithmParametersOtherParams() + 36);
  sub_1000503E0();
  sub_10001D518(&qword_10007C808, &type metadata accessor for UnknownStorage);
  return sub_100050740() & 1;
}

uint64_t sub_10001D518(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001D5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a4;
  v61 = a6;
  v59 = a2;
  v10 = *(*(a5 + 16) + 8);
  v11 = *(*(v10 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = __chkstk_darwin(AssociatedTypeWitness);
  v64 = v55 - v15;
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v14);
  v62 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v68 = v55 - v21;
  v22 = __chkstk_darwin(v20);
  v67 = v55 - v23;
  __chkstk_darwin(v22);
  v63 = v55 - v24;
  if (a1 < 0 || (*(*(*(a5 + 8) + 8) + 16))(a3) < a1)
  {
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_1000508F0(49);

    v71 = 0xD000000000000029;
    v72 = 0x800000010005B690;
    v73 = a1;
    v74._countAndFlagsBits = sub_100050950();
    sub_100050770(v74);

    v75._countAndFlagsBits = 0x206E61687420;
    v75._object = 0xE600000000000000;
    sub_100050770(v75);
    v26 = v71;
    v25 = v72;
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_1000508F0(19);

    v71 = 0xD000000000000010;
    v72 = 0x800000010005BB50;
    v76._countAndFlagsBits = sub_100050A10();
    sub_100050770(v76);

    v77._countAndFlagsBits = 46;
    v77._object = 0xE100000000000000;
    sub_100050770(v77);
    v28 = v71;
    v27 = v72;
    v71 = v26;
    v72 = v25;

    v78._countAndFlagsBits = v28;
    v78._object = v27;
    sub_100050770(v78);

    v29 = v71;
    v30 = v72;
    sub_10001C55C();
    swift_allocError();
    *v31 = v29;
    *(v31 + 8) = v30;
    *(v31 + 16) = 3;
    return swift_willThrow();
  }

  result = sub_100050920();
  if (!a1)
  {
    v40 = *(v16 + 8);
    return (v40)(v63, a3);
  }

  v57 = AssociatedTypeWitness;
  v58 = v11;
  v55[2] = v6;
  v33 = 0;
  v56 = a1 - 1;
  v34 = (v16 + 8);
  v55[1] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v65 = a1;
  while (1)
  {
    v41 = v56 - v33;
    if (__OFSUB__(v56, v33))
    {
      break;
    }

    if ((v41 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_23;
    }

    v66 = v33;
    v71 = 8 * v41;
    sub_10001E9F0();
    sub_100050890();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_100050990();
    v42 = v10;
    v43 = v62;
    sub_100050970();
    sub_100050880();
    v44 = *v34;
    v45 = v43;
    v10 = v42;
    v46 = v68;
    (*v34)(v45, a3);
    v44(v46, a3);
    if (sub_1000508D0())
    {
      sub_100050990();
      sub_100050970();
      v47 = *(*(v10 + 32) + 8);
      v48 = sub_100050730();
      result = (v44)(v46, a3);
      if ((v48 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v69 = v44;
    v36 = v67;
    v49 = sub_1000508C0();
    v38 = v65;
    v50 = v66;
    if (v49 > 7)
    {
      LOBYTE(v71) = -1;
      v51 = sub_1000508D0();
      v52 = sub_1000508C0();
      if (v51)
      {
        if (v52 <= 8)
        {
          sub_100050990();
          sub_100050970();
          v53 = *(*(v10 + 32) + 8);
          v36 = v67;
          v54 = sub_100050710();
          v69(v46, a3);
          v38 = v65;
          if (v54)
          {
            sub_1000508B0();
          }

          goto LABEL_7;
        }
      }

      else if (v52 < 9)
      {
        v36 = v67;
        sub_1000508B0();
        v38 = v65;
        goto LABEL_7;
      }

      sub_10001EA44();
      sub_100050870();
      v35 = *(*(v10 + 32) + 8);
      v36 = v67;
      v37 = sub_100050720();
      result = (v69)(v46, a3);
      v38 = v65;
      if (v37)
      {
        goto LABEL_25;
      }
    }

LABEL_7:
    v33 = v50 + 1;
    v39 = sub_1000508B0();
    v40 = v69;
    v69(v36, a3);
    LOBYTE(v71) = v39;
    result = sub_100050820();
    if (v38 == v33)
    {
      return (v40)(v63, a3);
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t CommonUIntTLSNumberType.init<A>(from:with:encodedLength:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, unint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v58 = a6;
  v63 = a5;
  AssociatedConformanceWitness = *(*(*(a5 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v10 = *(v57 + 64);
  v11 = __chkstk_darwin(AssociatedTypeWitness);
  v65 = &v53 - v12;
  v59 = *(a2 - 8);
  v13 = *(v59 + 64);
  v14 = __chkstk_darwin(v11);
  v55 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v56 = &v53 - v17;
  v18 = __chkstk_darwin(v16);
  v64 = &v53 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v53 - v21;
  v61 = *(a3 - 8);
  v23 = *(v61 + 64);
  v24 = __chkstk_darwin(v20);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v60 = &v53 - v27;
  if (a1 < 0 || (*(*(*(a4 + 8) + 8) + 16))(a2) < a1)
  {
    v67[0] = 0;
    v67[1] = 0xE000000000000000;
    sub_1000508F0(43);

    v67[0] = 40;
    v67[1] = 0xE100000000000000;
    v68 = a1;
    v69._countAndFlagsBits = sub_100050950();
    sub_100050770(v69);

    v70._countAndFlagsBits = 0xD000000000000028;
    v70._object = 0x800000010005BB20;
    sub_100050770(v70);
    v71._countAndFlagsBits = v67[0];
    v28 = v67[1];
    v67[0] = 0xD000000000000035;
    v67[1] = 0x800000010005BAE0;
    v71._object = v28;
    sub_100050770(v71);

    v30 = v67[0];
    v29 = v67[1];
    strcpy(v67, "number type ");
    BYTE5(v67[1]) = 0;
    HIWORD(v67[1]) = -5120;
    v72._countAndFlagsBits = sub_100050A10();
    sub_100050770(v72);

    v73._countAndFlagsBits = 46;
    v73._object = 0xE100000000000000;
    sub_100050770(v73);
    v32 = v67[0];
    v31 = v67[1];
    v67[0] = v30;
    v67[1] = v29;

    v74._countAndFlagsBits = v32;
    v74._object = v31;
    sub_100050770(v74);

    v33 = v67[0];
    v34 = v67[1];
    v35 = 3;
LABEL_4:
    sub_10001C55C();
    swift_allocError();
    *v36 = v33;
    *(v36 + 8) = v34;
    *(v36 + 16) = v35;
    return swift_willThrow();
  }

  if (sub_1000507C0() < a1)
  {
    v67[0] = 0;
    v67[1] = 0xE000000000000000;
    sub_1000508F0(44);

    v67[0] = 0xD00000000000001CLL;
    v67[1] = 0x800000010005BA90;
    v68 = a1;
    v75._countAndFlagsBits = sub_100050950();
    sub_100050770(v75);

    v76._countAndFlagsBits = 0x6F20736574796220;
    v76._object = 0xEE0020666F207475;
    sub_100050770(v76);
    v39 = v67[0];
    v38 = v67[1];
    v67[0] = 0;
    v67[1] = 0xE000000000000000;
    sub_1000508F0(35);

    v67[0] = 0xD000000000000020;
    v67[1] = 0x800000010005BAB0;
    v77._countAndFlagsBits = sub_100050A10();
    sub_100050770(v77);

    v78._countAndFlagsBits = 46;
    v78._object = 0xE100000000000000;
    sub_100050770(v78);
    v41 = v67[0];
    v40 = v67[1];
    v67[0] = v39;
    v67[1] = v38;

    v79._countAndFlagsBits = v41;
    v79._object = v40;
    sub_100050770(v79);

    v35 = 0;
    v33 = v67[0];
    v34 = v67[1];
    goto LABEL_4;
  }

  v42 = v60;
  RandomAccessCollection<>.popFirst(_:)(a1, a3, v63);
  v67[0] = 0;
  v43 = *(*(a4 + 16) + 8);
  v63 = sub_10001E9F0();
  sub_1000508E0();
  (*(v61 + 16))(v26, v42, a3);
  sub_100050780();
  v54 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100050860();
  v45 = v55;
  v44 = v56;
  if ((v67[0] & 0x100) == 0)
  {
    v46 = v67[0];
    v47 = (v59 + 8);
    v48 = (v59 + 32);
    do
    {
      v67[0] = 8;
      sub_1000508A0();
      LOBYTE(v67[0]) = v46;
      sub_10001EA44();
      sub_1000508E0();
      v49 = *(*(v43 + 24) + 8);
      v50 = v64;
      sub_100050930();
      v51 = *v47;
      (*v47)(v45, a2);
      v51(v44, a2);
      v51(v22, a2);
      (*v48)(v22, v50, a2);
      sub_100050860();
      v46 = v67[0];
    }

    while ((v67[0] & 0x100) == 0);
  }

  (*(v57 + 8))(v65, AssociatedTypeWitness);
  v52 = v59;
  (*(v59 + 16))(v64, v22, a2);
  sub_1000508E0();
  (*(v52 + 8))(v22, a2);
  return (*(v61 + 8))(v60, v54);
}

uint64_t sub_10001E8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _DWORD *a4@<X8>)
{
  result = sub_10001EB8C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_10001E9F0()
{
  result = qword_10007C810;
  if (!qword_10007C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C810);
  }

  return result;
}

unint64_t sub_10001EA44()
{
  result = qword_10007C818;
  if (!qword_10007C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C818);
  }

  return result;
}

uint64_t sub_10001EA98(uint64_t a1)
{
  if (BYTE3(a1))
  {
    sub_1000508F0(55);
    v4._object = 0x800000010005BB70;
    v4._countAndFlagsBits = 0xD000000000000034;
    sub_100050770(v4);
    v5._countAndFlagsBits = sub_100050950();
    sub_100050770(v5);

    v6._countAndFlagsBits = 46;
    v6._object = 0xE100000000000000;
    sub_100050770(v6);
    sub_10001C55C();
    swift_allocError();
    *v2 = 0;
    *(v2 + 8) = 0xE000000000000000;
    *(v2 + 16) = 3;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_10001EB8C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10001F16C();
  result = CommonUIntTLSNumberType.init<A>(from:with:encodedLength:)(3, &type metadata for UInt32, a2, v6, a3, &v8);
  if (!v3)
  {
    return sub_10001EA98(v8);
  }

  return result;
}

unint64_t sub_10001EC34()
{
  result = qword_10007C820;
  if (!qword_10007C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C820);
  }

  return result;
}

unint64_t sub_10001EC88()
{
  result = qword_10007C828;
  if (!qword_10007C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C828);
  }

  return result;
}

unint64_t sub_10001ED08()
{
  result = qword_10007C888;
  if (!qword_10007C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C888);
  }

  return result;
}

unint64_t sub_10001ED5C()
{
  result = qword_10007C890;
  if (!qword_10007C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C890);
  }

  return result;
}

unint64_t sub_10001EDDC()
{
  result = qword_10007C8F0;
  if (!qword_10007C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C8F0);
  }

  return result;
}

unint64_t sub_10001EE30()
{
  result = qword_10007C8F8;
  if (!qword_10007C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C8F8);
  }

  return result;
}

uint64_t sub_10001EEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 16) = a4();
  result = a5();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10001EEEC()
{
  result = qword_10007C958;
  if (!qword_10007C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C958);
  }

  return result;
}

unint64_t sub_10001EF40()
{
  result = qword_10007C960;
  if (!qword_10007C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C960);
  }

  return result;
}

unint64_t sub_10001EF94(uint64_t a1)
{
  result = sub_10001EFBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001EFBC()
{
  result = qword_10007C9C0;
  if (!qword_10007C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C9C0);
  }

  return result;
}

unint64_t sub_10001F010(uint64_t a1)
{
  result = sub_10001F038();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001F038()
{
  result = qword_10007C9C8;
  if (!qword_10007C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007C9C8);
  }

  return result;
}

unint64_t sub_10001F08C(uint64_t a1)
{
  result = sub_10001F0B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001F0B4()
{
  result = qword_10007CA28;
  if (!qword_10007CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CA28);
  }

  return result;
}

unint64_t sub_10001F118()
{
  result = qword_10007CA30;
  if (!qword_10007CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CA30);
  }

  return result;
}

unint64_t sub_10001F16C()
{
  result = qword_10007CA38;
  if (!qword_10007CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CA38);
  }

  return result;
}

unint64_t sub_10001F1C0()
{
  result = qword_10007CA40;
  if (!qword_10007CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CA40);
  }

  return result;
}

unint64_t sub_10001F214()
{
  result = qword_10007CA48;
  if (!qword_10007CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CA48);
  }

  return result;
}

uint64_t PPM_0_2_1.QueryConfig.init(timePrecision:maxBatchQueryCount:minBatchSize:queryType:queryTypeSelector:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 12) = a3;
  *(a7 + 16) = a4;
  *(a7 + 20) = HIDWORD(a4);
  *(a7 + 24) = a5 & 1;
  *(a7 + 28) = HIDWORD(a5);
  *(a7 + 32) = a6 & 1;
  return result;
}

__n128 PPM_0_2_1.TaskConfig.init(taskInfo:leaderAggregatorEndpoint:helperAggregatorEndpoint:queryConfig:taskExpiration:vdafConfig:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

uint64_t PPM_0_2_1.QueryConfig.QueryTypeSelector.fixed_sizeProp.getter(uint64_t a1, char a2)
{
  *(&v3 + 1) = a2 & 1;
  *&v3 = a1;
  return v3 >> 32;
}

uint64_t PPM_0_2_1.QueryConfig.QueryTypeSelector.encodedLength(with:)(char a1, char a2, char a3)
{
  switch(a1)
  {
    case 3:
      v3 = 0x800000010005B280;
      sub_10001C55C();
      swift_allocError();
      v5 = 0xD000000000000034;
      v6 = 1;
LABEL_11:
      *v4 = v5;
      *(v4 + 8) = v3;
      *(v4 + 16) = v6;
      return swift_willThrow();
    case 2:
      if (a3)
      {
        v3 = 0x800000010005BBB0;
        sub_10001C55C();
        swift_allocError();
        v5 = 0xD000000000000026;
        goto LABEL_10;
      }

      return 4;
    case 1:
      if (a2)
      {
        v3 = 0x800000010005BBE0;
        sub_10001C55C();
        swift_allocError();
        v5 = 0xD000000000000029;
LABEL_10:
        v6 = 4;
        goto LABEL_11;
      }

      return 0;
    default:
      sub_1000508F0(31);
      v8._object = 0x800000010005B2C0;
      v8._countAndFlagsBits = 0xD00000000000001BLL;
      sub_100050770(v8);
      sub_100050900();
      v9._countAndFlagsBits = 11872;
      v9._object = 0xE200000000000000;
      sub_100050770(v9);
      v5 = 0;
      v3 = 0xE000000000000000;
      sub_10001C55C();
      swift_allocError();
      goto LABEL_10;
  }
}

uint64_t PPM_0_2_1.QueryConfig.QueryTypeSelector.encode<A>(into:with:)(uint64_t a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  switch(a2)
  {
    case 3:
      sub_10001C55C();
      swift_allocError();
      *v6 = 0xD000000000000034;
      *(v6 + 8) = 0x800000010005B280;
      v7 = 1;
LABEL_12:
      *(v6 + 16) = v7;
      return swift_willThrow();
    case 2:
      if (a4)
      {
        v8 = 0x800000010005BBB0;
        sub_10001C55C();
        swift_allocError();
        v9 = 0xD000000000000026;
        goto LABEL_9;
      }

      v14 = sub_10001F16C();
      return sub_10001E960(a1, &type metadata for UInt32, a5, v14, a6);
    case 1:
      if (a3)
      {
        v8 = 0x800000010005BBE0;
        sub_10001C55C();
        swift_allocError();
        v9 = 0xD000000000000029;
LABEL_9:
        *v6 = v9;
        *(v6 + 8) = v8;
LABEL_11:
        v7 = 4;
        goto LABEL_12;
      }

      return PPM_0_2_1.Extension.extensionType.getter(a1, a5, a6);
    default:
      sub_1000508F0(31);
      v15._object = 0x800000010005B2C0;
      v15._countAndFlagsBits = 0xD00000000000001BLL;
      sub_100050770(v15);
      sub_100050900();
      v16._countAndFlagsBits = 11872;
      v16._object = 0xE200000000000000;
      sub_100050770(v16);
      sub_10001C55C();
      swift_allocError();
      *v6 = 0;
      *(v6 + 8) = 0xE000000000000000;
      goto LABEL_11;
  }
}

uint64_t PPM_0_2_1.QueryConfig.QueryTypeSelector.init<A>(from:with:)(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 3)
  {
    if (a2 == 1)
    {
      result = PPM_0_2_1.Extension.extensionType.getter(a1, a3, a4);
      if (v4)
      {
        return result;
      }

      v12 = 0;
      v11 = 0;
    }

    else
    {
      if (a2 != 2)
      {
        sub_1000508F0(31);
        v14._object = 0x800000010005B2C0;
        v14._countAndFlagsBits = 0xD00000000000001BLL;
        sub_100050770(v14);
        sub_100050900();
        v15._countAndFlagsBits = 11872;
        v15._object = 0xE200000000000000;
        sub_100050770(v15);
        sub_10001C55C();
        swift_allocError();
        *v5 = 0;
        *(v5 + 8) = 0xE000000000000000;
        v6 = 4;
        goto LABEL_11;
      }

      v9 = sub_10001F16C();
      result = CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a3, v9, a4, &v13);
      if (v4)
      {
        return result;
      }

      v11 = v13 << 32;
      v12 = 1;
    }

    LOBYTE(v13) = v12;
    return v11 | v12;
  }

  sub_10001C55C();
  swift_allocError();
  *v5 = 0xD000000000000034;
  *(v5 + 8) = 0x800000010005B280;
  v6 = 1;
LABEL_11:
  *(v5 + 16) = v6;
  return swift_willThrow();
}

uint64_t static PPM_0_2_1.QueryConfig.QueryTypeSelector.__derived_struct_equals(_:_:)(unint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a1)
  {
    if ((a3 & 1) == 0)
    {
      return 0;
    }

LABEL_5:
    if (a2)
    {
      if ((a4 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a4 & 1) != 0 || (a3 ^ a1) >> 32)
    {
      return 0;
    }

    return 1;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_10001F9FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = PPM_0_2_1.QueryConfig.QueryTypeSelector.init<A>(from:with:)(a1, *a2, a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
    *(a5 + 4) = HIDWORD(result);
    *(a5 + 8) = v8 & 1;
  }

  return result;
}

uint64_t sub_10001FA40(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (!*a2)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 4) == *(a2 + 4))
    {
      v3 = *(a2 + 8);
    }

    else
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t PPM_0_2_1.QueryConfig.init<A>(from:with:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_10001F118();
  result = CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt64, a3, v11, a4, &v22);
  if (!v5)
  {
    v13 = v22;
    v14 = sub_10001F1C0();
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt16, a3, v14, a4, &v22);
    v15 = v22;
    v16 = sub_10001F16C();
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a3, v16, a4, &v22);
    v17 = v22;
    v18 = sub_100020B18();
    TLSEnumType.init<A>(from:with:)(a1, (a2 & 0x10100) != 0, &type metadata for PPM_0_2_1.QueryType, a3, v18, a4);
    v19 = v22;
    v20 = HIDWORD(v22);
    result = PPM_0_2_1.QueryConfig.QueryTypeSelector.init<A>(from:with:)(a1, v22, a3, a4);
    *a5 = v13;
    *(a5 + 8) = v15;
    *(a5 + 12) = v17;
    *(a5 + 16) = v19;
    *(a5 + 20) = v20;
    *(a5 + 24) = result & 1;
    *(a5 + 28) = HIDWORD(result);
    *(a5 + 32) = v21 & 1;
  }

  return result;
}

uint64_t sub_10001FCD0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_100020778();
}

uint64_t sub_10001FD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 32);
  return sub_1000209B4(a1, a3, a4);
}

double sub_10001FD50@<D0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  PPM_0_2_1.QueryConfig.init<A>(from:with:)(a1, *a2 | (*(a2 + 2) << 16), a3, a4, v9);
  if (!v5)
  {
    result = *v9;
    v8 = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = v8;
    *(a5 + 32) = v10;
  }

  return result;
}

BOOL sub_10001FDA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s19DPSubmissionService9PPM_0_2_1V11QueryConfigV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

uint64_t PPM_0_2_1.InputShareAAD.taskID.getter()
{
  v1 = *v0;
  sub_10001414C(*v0, *(v0 + 8));
  return v1;
}

uint64_t PPM_0_2_1.TaskConfig.leaderAggregatorEndpoint.getter()
{
  v1 = *(v0 + 16);
  sub_10001414C(v1, *(v0 + 24));
  return v1;
}

uint64_t PPM_0_2_1.TaskConfig.helperAggregatorEndpoint.getter()
{
  v1 = *(v0 + 32);
  sub_10001414C(v1, *(v0 + 40));
  return v1;
}

uint64_t PPM_0_2_1.TaskConfig.queryConfig.getter()
{
  v1 = *(v0 + 48);
  sub_10001414C(v1, *(v0 + 56));
  return v1;
}

uint64_t PPM_0_2_1.TaskConfig.vdafConfig.getter()
{
  v1 = *(v0 + 72);
  sub_10001414C(v1, *(v0 + 80));
  return v1;
}

double PPM_0_2_1.TaskConfig.init<A>(from:with:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = sub_100020B6C();
  RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0xFF00000001, 1, &type metadata for Data, a2, v9, a3);
  if (!v4)
  {
    v11 = v21;
    v19 = sub_10003DF18(a1, a2, a3);
    v20 = v12;
    v16 = sub_10003DF18(a1, a2, a3);
    v17 = v13;
    RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0xFFFF00000001, 1, &type metadata for Data, a2, v9, a3);
    v15 = v21;
    v14 = sub_10001F118();
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt64, a2, v14, a3, &v21);
    v18 = v21;
    RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0xFFFF00000001, 1, &type metadata for Data, a2, v9, a3);
    *a4 = v11;
    *(a4 + 16) = v19;
    *(a4 + 24) = v20;
    *(a4 + 32) = v16;
    *(a4 + 40) = v17;
    *(a4 + 48) = v15;
    *(a4 + 64) = v18;
    result = *&v21;
    *(a4 + 72) = v21;
  }

  return result;
}

void sub_1000201C4()
{
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 10);
  v1 = *v0;
  v2 = v0[1];
  sub_100020340();
}

uint64_t sub_100020210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = *(v4 + 10);
  v6 = *v4;
  v7 = v4[1];
  return sub_1000207D4(a1, a3, a4);
}

double sub_100020264@<D0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2 | (*(a2 + 2) << 16) | (*(a2 + 3) << 24);
  result = PPM_0_2_1.TaskConfig.init<A>(from:with:)(a1, a3, a4, v11);
  if (!v5)
  {
    v9 = v11[3];
    *(a5 + 32) = v11[2];
    *(a5 + 48) = v9;
    *(a5 + 64) = v11[4];
    *(a5 + 80) = v12;
    result = *v11;
    v10 = v11[1];
    *a5 = v11[0];
    *(a5 + 16) = v10;
  }

  return result;
}

uint64_t sub_1000202D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s19DPSubmissionService9PPM_0_2_1V10TaskConfigV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v9) & 1;
}

void sub_100020340()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = v2 + 16;
  v2 = *(v2 + 16);
  v6 = *(v7 + 8);
  v5 = v6 - v2;
  if (__OFSUB__(v6, v2))
  {
    __break(1u);
LABEL_8:
    v8 = __OFSUB__(HIDWORD(v2), v2);
    v9 = HIDWORD(v2) - v2;
    if (v8)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v5 = v9;
  }

LABEL_11:
  sub_100038F60(v5, 0xFF00000001uLL);
  if (v1)
  {
    return;
  }

  v10 = sub_10003915C(0xFF00000001);
  v11 = v5 + v10;
  if (__OFADD__(v5, v10))
  {
    __break(1u);
    goto LABEL_66;
  }

  v12 = v0[2];
  v13 = v0[3];
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = BYTE6(v13);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v14 != 2)
  {
    v15 = 0;
    goto LABEL_23;
  }

  v17 = v12 + 16;
  v12 = *(v12 + 16);
  v16 = *(v17 + 8);
  v15 = v16 - v12;
  if (__OFSUB__(v16, v12))
  {
    __break(1u);
LABEL_20:
    v8 = __OFSUB__(HIDWORD(v12), v12);
    v18 = HIDWORD(v12) - v12;
    if (v8)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v15 = v18;
  }

LABEL_23:
  sub_100038F60(v15, 0xFFFF00000001uLL);
  v19 = sub_10003915C(0xFFFF00000001);
  v20 = v15 + v19;
  if (__OFADD__(v15, v19))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v8 = __OFADD__(v11, v20);
  v21 = v11 + v20;
  if (v8)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v22 = v0[4];
  v23 = v0[5];
  v24 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v24)
    {
      v25 = BYTE6(v23);
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  if (v24 != 2)
  {
    v25 = 0;
    goto LABEL_35;
  }

  v27 = v22 + 16;
  v22 = *(v22 + 16);
  v26 = *(v27 + 8);
  v25 = v26 - v22;
  if (__OFSUB__(v26, v22))
  {
    __break(1u);
LABEL_32:
    v8 = __OFSUB__(HIDWORD(v22), v22);
    v28 = HIDWORD(v22) - v22;
    if (v8)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v25 = v28;
  }

LABEL_35:
  sub_100038F60(v25, 0xFFFF00000001uLL);
  v29 = sub_10003915C(0xFFFF00000001);
  v30 = v25 + v29;
  if (__OFADD__(v25, v29))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v8 = __OFADD__(v21, v30);
  v31 = v21 + v30;
  if (v8)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v32 = v0[6];
  v33 = v0[7];
  v34 = v33 >> 62;
  if ((v33 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = BYTE6(v33);
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  if (v34 != 2)
  {
    v35 = 0;
    goto LABEL_47;
  }

  v37 = v32 + 16;
  v32 = *(v32 + 16);
  v36 = *(v37 + 8);
  v35 = v36 - v32;
  if (__OFSUB__(v36, v32))
  {
    __break(1u);
LABEL_44:
    v8 = __OFSUB__(HIDWORD(v32), v32);
    v38 = HIDWORD(v32) - v32;
    if (v8)
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v35 = v38;
  }

LABEL_47:
  sub_100038F60(v35, 0xFFFF00000001uLL);
  v39 = sub_10003915C(0xFFFF00000001);
  v40 = v35 + v39;
  if (__OFADD__(v35, v39))
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v8 = __OFADD__(v31, v40);
  v41 = v31 + v40;
  if (v8)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v42 = v41 + 8;
  if (__OFADD__(v41, 8))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v43 = v0[9];
  v44 = v0[10];
  v45 = v44 >> 62;
  if ((v44 >> 62) > 1)
  {
    if (v45 != 2)
    {
      v46 = 0;
      goto LABEL_60;
    }

    v48 = v43 + 16;
    v43 = *(v43 + 16);
    v47 = *(v48 + 8);
    v46 = v47 - v43;
    if (!__OFSUB__(v47, v43))
    {
      goto LABEL_60;
    }

    __break(1u);
  }

  else if (!v45)
  {
    v46 = BYTE6(v44);
    goto LABEL_60;
  }

  v8 = __OFSUB__(HIDWORD(v43), v43);
  v49 = HIDWORD(v43) - v43;
  if (v8)
  {
LABEL_79:
    __break(1u);
    return;
  }

  v46 = v49;
LABEL_60:
  sub_100038F60(v46, 0xFFFF00000001uLL);
  v50 = sub_10003915C(0xFFFF00000001);
  if (__OFADD__(v46, v50))
  {
    goto LABEL_77;
  }

  if (__OFADD__(v42, v46 + v50))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }
}

uint64_t _s19DPSubmissionService9PPM_0_2_1V10TaskConfigV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[2], a1[3], a2[2], a2[3]) & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[4], a1[5], a2[4], a2[5]) & 1) == 0 || (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[6], a1[7], a2[6], a2[7]) & 1) == 0 || a1[8] != a2[8])
  {
    return 0;
  }

  v4 = a1[9];
  v5 = a1[10];
  v6 = a2[9];
  v7 = a2[10];

  return _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v4, v5, v6, v7);
}

BOOL _s19DPSubmissionService9PPM_0_2_1V11QueryConfigV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0)
  {
    return 0;
  }

  v3 = *(a2 + 32);
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  return (*(a2 + 32) & 1) == 0 && *(a1 + 28) == *(a2 + 28);
}

uint64_t sub_100020778()
{
  *(v0 + 20);
  v2 = *(v0 + 28);
  result = PPM_0_2_1.QueryConfig.QueryTypeSelector.encodedLength(with:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v4 = result;
  if (!v1)
  {
    result += 15;
    if (__OFADD__(v4, 15))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000207D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *v3;
  v11 = *v3;
  sub_100021204(&v14, v10);
  sub_100020B6C();
  RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0xFF00000001uLL, 1, &type metadata for Data);
  result = sub_100013E20(v11, *(&v11 + 1));
  if (!v4)
  {
    sub_10003DD88(a1, *(v3 + 2), *(v3 + 3), a2, a3);
    sub_10003DD88(a1, *(v3 + 4), *(v3 + 5), a2, a3);
    v13 = v3[3];
    v11 = v3[3];
    sub_100021204(&v13, v10);
    RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0xFFFF00000001uLL, 1, &type metadata for Data);
    sub_100013E20(v11, *(&v11 + 1));
    *&v11 = *(v3 + 8);
    v9 = sub_10001F118();
    sub_10001E960(a1, &type metadata for UInt64, a2, v9, a3);
    v11 = *(v3 + 72);
    v12 = v11;
    sub_100021204(&v12, v10);
    RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0xFFFF00000001uLL, 1, &type metadata for Data);
    return sub_100013E20(v11, *(&v11 + 1));
  }

  return result;
}

uint64_t sub_1000209B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *v3;
  v8 = sub_10001F118();
  result = sub_10001E960(a1, &type metadata for UInt64, a2, v8, a3);
  if (!v4)
  {
    v16 = *(v3 + 4);
    v10 = sub_10001F1C0();
    sub_10001E960(a1, &type metadata for UInt16, a2, v10, a3);
    v17 = *(v3 + 3);
    v11 = sub_10001F16C();
    sub_10001E960(a1, &type metadata for UInt32, a2, v11, a3);
    v12 = *(v3 + 16);
    v18 = *(v3 + 5);
    v13 = sub_100020B18();
    sub_10003153C(a1, &type metadata for PPM_0_2_1.QueryType, a2, v13, a3);
    v14 = *(v3 + 7);
    return PPM_0_2_1.QueryConfig.QueryTypeSelector.encode<A>(into:with:)(a1, v12, *(v3 + 24), *(v3 + 32), a2, a3);
  }

  return result;
}

unint64_t sub_100020B18()
{
  result = qword_10007CA50;
  if (!qword_10007CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CA50);
  }

  return result;
}

unint64_t sub_100020B6C()
{
  result = qword_10007CA58;
  if (!qword_10007CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CA58);
  }

  return result;
}

unint64_t sub_100020BC0(uint64_t a1)
{
  result = sub_100020BE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100020BE8()
{
  result = qword_10007CAB8;
  if (!qword_10007CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CAB8);
  }

  return result;
}

unint64_t sub_100020C3C(uint64_t a1)
{
  result = sub_100020C64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100020C64()
{
  result = qword_10007CB18;
  if (!qword_10007CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CB18);
  }

  return result;
}

unint64_t sub_100020CB8(uint64_t a1)
{
  result = sub_100020CE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100020CE0()
{
  result = qword_10007CB78;
  if (!qword_10007CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CB78);
  }

  return result;
}

__n128 sub_100020D38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100020D4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100020D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

uint64_t _s11QueryConfigV17QueryTypeSelectorVwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s11QueryConfigV17QueryTypeSelectorVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11QueryConfigV17QueryTypeSelectorVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PPM_0_2_1.QueryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[8])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PPM_0_2_1.QueryType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t _s11QueryConfigV15CodingParameterVwet(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (v4)
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *_s11QueryConfigV15CodingParameterVwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_10002101C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_100021038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10002105C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 88))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000210B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t _s10TaskConfigV15CodingParameterVwCP(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s10TaskConfigV15CodingParameterVwet(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t _s10TaskConfigV15CodingParameterVwst(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

__n128 PPM_0_2_1.VDAFConfig.VDAFTypeSelector.init(prio3_countProp:prio3_sumProp:prio3_sum_vecProp:prio3_histogramProp:poplar1Prop:prio2Prop:prio_plusplusProp:prio_pirapporProp:prio3_sum_vec_field64_multiproof_cmac_aes128Prop:prio3_sum_vec_field64_multiproof_hmac_sha256_aes128Prop:pine_field64_hmac_sha256_aes128Prop:pine_field32_hmac_sha256_aes128Prop:pine_field40_hmac_sha256_aes128Prop:preamble_field32_hmac_sha256_aes128Prop:)@<Q0>(char a1@<W0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, __int128 *a12, uint64_t a13, int a14, char a15, char a16, uint64_t a17, int a18, char a19, char a20, __int128 a21, uint64_t a22, int a23, __int16 a24, char a25, __int128 a26, uint64_t a27, int a28, __int16 a29, char a30, __int128 a31, uint64_t a32, int a33, __int16 a34, char a35, uint64_t a36, int a37, char a38)
{
  v38 = *a12;
  v39 = a12[1];
  v40 = a12[2];
  v41 = a12[3];
  v42 = a12[4];
  v44[87] = *(a12 + 80);
  *a9 = a1 & 1;
  *(a9 + 1) = a2;
  *(a9 + 2) = HIBYTE(a2) & 1;
  *(a9 + 4) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = BYTE4(a4) & 1;
  *(a9 + 20) = a5;
  *(a9 + 28) = a6 & 1;
  *(a9 + 30) = a7;
  *(a9 + 32) = BYTE2(a7) & 1;
  *(a9 + 36) = a8;
  *(a9 + 40) = BYTE4(a8) & 1;
  *&v44[71] = v42;
  *(a9 + 44) = a10;
  *(a9 + 48) = a11 & 1;
  *(a9 + 129) = *&v44[80];
  *(a9 + 140) = a13;
  *(a9 + 152) = a15;
  *(a9 + 148) = a14;
  *(a9 + 153) = a16 & 1;
  *(a9 + 156) = a17;
  *(a9 + 168) = a19;
  *(a9 + 164) = a18;
  *(a9 + 169) = a20 & 1;
  *(a9 + 192) = a22;
  *(a9 + 204) = a24;
  *(a9 + 200) = a23;
  *(a9 + 206) = a25 & 1;
  *(a9 + 224) = a27;
  *(a9 + 236) = a29;
  *(a9 + 232) = a28;
  *(a9 + 238) = a30 & 1;
  *(a9 + 256) = a32;
  *(a9 + 268) = a34;
  *(a9 + 264) = a33;
  *(a9 + 270) = a35 & 1;
  *(a9 + 272) = a36;
  *(a9 + 280) = a37;
  *(a9 + 284) = a38 & 1;
  *&v44[23] = v39;
  *&v44[7] = v38;
  *&v44[55] = v41;
  *&v44[39] = v40;
  *(a9 + 81) = *&v44[32];
  *(a9 + 97) = *&v44[48];
  *(a9 + 113) = *&v44[64];
  result = *v44;
  *(a9 + 49) = *v44;
  *(a9 + 65) = *&v44[16];
  *(a9 + 176) = a21;
  *(a9 + 208) = a26;
  *(a9 + 240) = a31;
  return result;
}

void *PPM_0_2_1.VDAFConfig.init(dpConfig:vdafType:vdafTypeSelector:)@<X0>(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X8>)
{
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 20) = HIDWORD(a4);
  return memcpy((a5 + 24), __src, 0x11DuLL);
}

__n128 PPM_0_2_1.DPConfig.DPMechanismSelector.init(noneProp:epsProp:eps_deltaProp:renyiProp:aggregator_discrete_gaussianProp:aggregator_discrete_gaussian_client_symmetric_rapporProp:distributed_gaussian_with_subsampled_moments_accountantProp:distributed_discrete_gaussian_with_random_allocation_accountantProp:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v17[7] = *a2;
  *&v17[23] = *(a2 + 16);
  *&v16[23] = a3[1];
  *&v16[39] = a3[2];
  *&v16[55] = a3[3];
  *&v16[64] = *(a3 + 57);
  *&v16[7] = *a3;
  *&v15[32] = *(a4 + 25);
  *&v15[23] = a4[1];
  *&v15[7] = *a4;
  *&v14[103] = a5[6];
  *&v14[119] = a5[7];
  *&v14[135] = a5[8];
  *&v14[144] = *(a5 + 137);
  *&v14[39] = a5[2];
  *&v14[55] = a5[3];
  *&v14[71] = a5[4];
  *&v14[87] = a5[5];
  *&v14[7] = *a5;
  *&v14[23] = a5[1];
  *&v13[151] = *(a6 + 144);
  *&v13[167] = *(a6 + 160);
  *&v13[183] = *(a6 + 176);
  *&v13[87] = *(a6 + 80);
  *&v13[103] = *(a6 + 96);
  *&v13[119] = *(a6 + 112);
  *&v13[135] = *(a6 + 128);
  *&v13[23] = *(a6 + 16);
  *&v13[39] = *(a6 + 32);
  *&v13[55] = *(a6 + 48);
  *&v13[71] = *(a6 + 64);
  *&v13[7] = *a6;
  *(&v12[8] + 7) = a7[8];
  *(&v12[9] + 7) = a7[9];
  *(&v12[10] + 7) = a7[10];
  v12[11] = *(a7 + 169);
  *(&v12[4] + 7) = a7[4];
  *(&v12[5] + 7) = a7[5];
  *(&v12[6] + 7) = a7[6];
  *(&v12[7] + 7) = a7[7];
  *(v12 + 7) = *a7;
  *(&v12[1] + 7) = a7[1];
  *(&v12[2] + 7) = a7[2];
  *(&v12[3] + 7) = a7[3];
  *&v11[151] = *(a8 + 144);
  *&v11[167] = *(a8 + 160);
  *&v11[183] = *(a8 + 176);
  *&v11[87] = *(a8 + 80);
  *&v11[103] = *(a8 + 96);
  *&v11[119] = *(a8 + 112);
  *&v11[135] = *(a8 + 128);
  *&v11[23] = *(a8 + 16);
  *&v11[39] = *(a8 + 32);
  v17[39] = *(a2 + 32);
  v13[199] = *(a6 + 192);
  v11[199] = *(a8 + 192);
  *&v11[55] = *(a8 + 48);
  *&v11[71] = *(a8 + 64);
  *&v11[7] = *a8;
  *a9 = a1 & 1;
  *(a9 + 1) = *v17;
  *(a9 + 17) = *&v17[16];
  *(a9 + 33) = *&v17[32];
  *(a9 + 57) = *&v16[16];
  *(a9 + 73) = *&v16[32];
  *(a9 + 89) = *&v16[48];
  *(a9 + 105) = *&v16[64];
  *(a9 + 41) = *v16;
  *(a9 + 153) = *&v15[32];
  *(a9 + 137) = *&v15[16];
  *(a9 + 121) = *v15;
  *(a9 + 265) = *&v14[96];
  *(a9 + 281) = *&v14[112];
  *(a9 + 185) = *&v14[16];
  *(a9 + 169) = *v14;
  *(a9 + 249) = *&v14[80];
  *(a9 + 233) = *&v14[64];
  *(a9 + 217) = *&v14[48];
  *(a9 + 201) = *&v14[32];
  *(a9 + 297) = *&v14[128];
  *(a9 + 313) = *&v14[144];
  *(a9 + 489) = *&v13[160];
  *(a9 + 505) = *&v13[176];
  *(a9 + 521) = *&v13[192];
  *(a9 + 425) = *&v13[96];
  *(a9 + 441) = *&v13[112];
  *(a9 + 457) = *&v13[128];
  *(a9 + 473) = *&v13[144];
  *(a9 + 361) = *&v13[32];
  *(a9 + 377) = *&v13[48];
  *(a9 + 393) = *&v13[64];
  *(a9 + 409) = *&v13[80];
  *(a9 + 329) = *v13;
  *(a9 + 345) = *&v13[16];
  *(a9 + 657) = v12[8];
  *(a9 + 673) = v12[9];
  *(a9 + 689) = v12[10];
  *(a9 + 705) = v12[11];
  *(a9 + 593) = v12[4];
  *(a9 + 609) = v12[5];
  *(a9 + 625) = v12[6];
  *(a9 + 641) = v12[7];
  *(a9 + 529) = v12[0];
  *(a9 + 545) = v12[1];
  *(a9 + 561) = v12[2];
  *(a9 + 577) = v12[3];
  v9 = a9 + 721;
  *(v9 + 160) = *&v11[160];
  *(v9 + 176) = *&v11[176];
  *(v9 + 192) = *&v11[192];
  *(v9 + 96) = *&v11[96];
  *(v9 + 112) = *&v11[112];
  *(v9 + 128) = *&v11[128];
  *(v9 + 144) = *&v11[144];
  *(v9 + 32) = *&v11[32];
  *(v9 + 48) = *&v11[48];
  *(v9 + 64) = *&v11[64];
  *(v9 + 80) = *&v11[80];
  result = *&v11[16];
  *v9 = *v11;
  *(v9 + 16) = *&v11[16];
  return result;
}

void *PPM_0_2_1.DPConfig.init(dpMechanism:dpMechanismSelector:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 4) = HIDWORD(a1);
  return memcpy((a3 + 8), a2, 0x399uLL);
}

__n128 PPM_0_2_1.AggregatorDiscreteGaussianDpConfig.init(targetCentralEpsilon:targetCentralDelta:sigma:squaredL2Sensitivity:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v7[0] = *(a1 + 32);
  *&v7[8] = *a2;
  *&v7[24] = *(a2 + 16);
  v7[40] = *(a2 + 32);
  v10[0] = *(a3 + 32);
  v8 = *a3;
  v9 = a3[1];
  v10[40] = *(a4 + 32);
  *&v10[24] = *(a4 + 16);
  *&v10[8] = *a4;
  v5 = *(a1 + 16);
  *a5 = *a1;
  a5[1] = v5;
  a5[4] = *&v7[32];
  a5[5] = v8;
  a5[2] = *v7;
  a5[3] = *&v7[16];
  *(a5 + 137) = *&v10[25];
  a5[7] = *v10;
  a5[8] = *&v10[16];
  result = v9;
  a5[6] = v9;
  return result;
}

__n128 PPM_0_2_1.AggregatorDiscreteGaussianClientSymmetricRapporDpConfig.init(aggDGaussDPConfig:localEpsilon:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[6];
  v12 = a1[7];
  *v13 = a1[8];
  *&v13[9] = *(a1 + 137);
  v4 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v7 = *a1;
  v8 = *(a1 + 1);
  v14 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a3 + 160) = *a2;
  *(a3 + 176) = v14;
  *(a3 + 192) = v5;
  *(a3 + 96) = v3;
  *(a3 + 112) = v12;
  *(a3 + 128) = *v13;
  *(a3 + 144) = *&v13[16];
  *(a3 + 32) = v4;
  *(a3 + 48) = v9;
  *(a3 + 64) = v10;
  *(a3 + 80) = v11;
  result = v8;
  *a3 = v7;
  *(a3 + 16) = v8;
  return result;
}

__n128 PPM_0_2_1.DistributedGaussianWithSubsampledMomentsAccountantConfig.init(maxCohortSize:numIterations:populationSize:renyiOrder:sigma:sigmaAfterNormalization:targetCentralEpsilon:targetCentralDelta:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v13[4] = *a5;
  *&v13[20] = *(a5 + 16);
  v13[36] = *(a5 + 32);
  *&v12[7] = *a6;
  *&v12[23] = *(a6 + 16);
  v12[39] = *(a6 + 32);
  v11[39] = *(a7 + 32);
  *&v11[23] = *(a7 + 16);
  *&v11[7] = *a7;
  v10[39] = *(a8 + 32);
  *&v10[23] = *(a8 + 16);
  *&v10[7] = *a8;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 57) = *&v13[29];
  *(a9 + 44) = *&v13[16];
  *(a9 + 28) = *v13;
  *(a9 + 97) = *&v12[32];
  *(a9 + 81) = *&v12[16];
  *(a9 + 65) = *v12;
  *(a9 + 137) = *&v11[32];
  *(a9 + 121) = *&v11[16];
  *(a9 + 105) = *v11;
  result = *v10;
  *(a9 + 177) = *&v10[32];
  *(a9 + 161) = *&v10[16];
  *(a9 + 145) = *v10;
  return result;
}

__n128 PPM_0_2_1.DistributedDiscreteGaussianWithRandomAllocationAccountantForPreambleDpConfig.init(targetCentralEpsilon:targetCentralDelta:sigma:sigmaLocal:scalingFactor:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10[0] = *(a1 + 32);
  *&v10[8] = *a2;
  *&v10[24] = *(a2 + 16);
  v10[40] = *(a2 + 32);
  v13[0] = *(a3 + 32);
  v11 = *a3;
  v12 = a3[1];
  v13[40] = *(a4 + 32);
  *&v13[24] = *(a4 + 16);
  *&v13[8] = *a4;
  v6 = *a5;
  v14 = a5[1];
  *(a6 + 192) = *(a5 + 32);
  *(a6 + 160) = v6;
  *(a6 + 176) = v14;
  *(a6 + 32) = *v10;
  *(a6 + 48) = *&v10[16];
  *a6 = v8;
  *(a6 + 16) = v9;
  result = *&v10[32];
  *(a6 + 128) = *&v13[16];
  *(a6 + 144) = *&v13[32];
  *(a6 + 96) = v12;
  *(a6 + 112) = *v13;
  *(a6 + 64) = *&v10[32];
  *(a6 + 80) = v11;
  return result;
}

uint64_t PPM_0_2_1.RealNumber.init(realNumberType:realNumberTypeSelector:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 4) = HIDWORD(result);
  *(a6 + 8) = a2;
  *(a6 + 10) = BYTE2(a2) & 1;
  *(a6 + 12) = HIDWORD(a2);
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

unint64_t sub_100021AC8()
{
  result = sub_100042800(&off_100071358);
  static PPM_0_2_1.RealNumberType.rangesByEnumVals = result;
  return result;
}

uint64_t *PPM_0_2_1.RealNumberType.rangesByEnumVals.unsafeMutableAddressor()
{
  if (qword_10007C5D8 != -1)
  {
    swift_once();
  }

  return &static PPM_0_2_1.RealNumberType.rangesByEnumVals;
}

uint64_t (*static PPM_0_2_1.RealNumberType.rangesByEnumVals.modify())()
{
  if (qword_10007C5D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(char a1, int a2, char a3, uint64_t a4, char a5)
{
  if (a1 != 4)
  {
    switch(a1)
    {
      case 3:
        if ((a5 & 1) == 0)
        {
          return 8;
        }

        v7 = 0xD000000000000023;
        break;
      case 2:
        if ((a3 & 1) == 0)
        {
          return 4;
        }

        v7 = 0xD000000000000023;
        break;
      case 1:
        if ((a2 & 0x10000) == 0)
        {
          return 2;
        }

        v7 = 0xD000000000000023;
        break;
      default:
        sub_1000508F0(31);
        v11._countAndFlagsBits = 0xD00000000000001BLL;
        v11._object = 0x800000010005B2C0;
        sub_100050770(v11);
        sub_100050900();
        v12._countAndFlagsBits = 11872;
        v12._object = 0xE200000000000000;
        sub_100050770(v12);
        v7 = 0;
        v5 = 0xE000000000000000;
LABEL_17:
        sub_10001C55C();
        swift_allocError();
        v8 = 4;
        goto LABEL_18;
    }

    v5 = (v10 - 32) | 0x8000000000000000;
    goto LABEL_17;
  }

  v5 = 0x800000010005B280;
  sub_10001C55C();
  swift_allocError();
  v7 = 0xD000000000000034;
  v8 = 1;
LABEL_18:
  *v6 = v7;
  *(v6 + 8) = v5;
  *(v6 + 16) = v8;
  return swift_willThrow();
}

uint64_t PPM_0_2_1.RealNumber.RealNumberTypeSelector.encode<A>(into:with:)(uint64_t a1, char a2, int a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 4)
  {
    switch(a2)
    {
      case 3:
        if ((a6 & 1) == 0)
        {
          v10 = a8;
          v11 = a7;
          v12 = a1;
          v13 = sub_10001F118();
          v14 = &type metadata for UInt64;
          return sub_10001E960(v12, v14, v11, v13, v10);
        }

        break;
      case 2:
        if ((a4 & 1) == 0)
        {
          v10 = a8;
          v11 = a7;
          v12 = a1;
          v13 = sub_10001F16C();
          v14 = &type metadata for UInt32;
          return sub_10001E960(v12, v14, v11, v13, v10);
        }

        break;
      case 1:
        if ((a3 & 0x10000) == 0)
        {
          v10 = a8;
          v11 = a7;
          v12 = a1;
          v13 = sub_10001F1C0();
          v14 = &type metadata for UInt16;
          return sub_10001E960(v12, v14, v11, v13, v10);
        }

        break;
      default:
        sub_1000508F0(31);
        v18._countAndFlagsBits = 0xD00000000000001BLL;
        v18._object = 0x800000010005B2C0;
        sub_100050770(v18);
        sub_100050900();
        v19._countAndFlagsBits = 11872;
        v19._object = 0xE200000000000000;
        sub_100050770(v19);
        sub_10001C55C();
        swift_allocError();
        *v8 = 0;
        *(v8 + 8) = 0xE000000000000000;
LABEL_18:
        v9 = 4;
        goto LABEL_19;
    }

    v17 = (v15 - 32) | 0x8000000000000000;
    sub_10001C55C();
    swift_allocError();
    *v8 = 0xD000000000000023;
    *(v8 + 8) = v17;
    goto LABEL_18;
  }

  sub_10001C55C();
  swift_allocError();
  *v8 = 0xD000000000000034;
  *(v8 + 8) = 0x800000010005B280;
  v9 = 1;
LABEL_19:
  *(v8 + 16) = v9;
  return swift_willThrow();
}

unint64_t PPM_0_2_1.RealNumber.RealNumberTypeSelector.init<A>(from:with:)(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 4:
      sub_10001C55C();
      swift_allocError();
      *v5 = 0xD000000000000034;
      *(v5 + 8) = 0x800000010005B280;
      v6 = 1;
LABEL_3:
      *(v5 + 16) = v6;
      return swift_willThrow();
    case 1:
      v15 = sub_10001F1C0();
      result = CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt16, a3, v15, a4, &v16);
      if (!v4)
      {
        v13 = 0;
        v12 = 0;
        v11 = v16;
        goto LABEL_14;
      }

      break;
    case 2:
      v14 = sub_10001F16C();
      result = CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a3, v14, a4, &v16);
      if (!v4)
      {
        v11 = 0;
        v12 = v16 << 32;
        v13 = 1;
        goto LABEL_14;
      }

      break;
    case 3:
      v10 = sub_10001F118();
      result = CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt64, a3, v10, a4, &v16);
      if (!v4)
      {
        v11 = 0;
        v12 = 0;
        v13 = 1;
LABEL_14:
        LOBYTE(v16) = v13;
        return v12 | (v13 << 16) | v11;
      }

      break;
    default:
      sub_1000508F0(31);
      v17._object = 0x800000010005B2C0;
      v17._countAndFlagsBits = 0xD00000000000001BLL;
      sub_100050770(v17);
      sub_100050900();
      v18._countAndFlagsBits = 11872;
      v18._object = 0xE200000000000000;
      sub_100050770(v18);
      sub_10001C55C();
      swift_allocError();
      *v5 = 0;
      *(v5 + 8) = 0xE000000000000000;
      v6 = 4;
      goto LABEL_3;
  }

  return result;
}

unint64_t sub_1000223F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.init<A>(from:with:)(a1, *a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 2) = BYTE2(result) & 1;
    *(a5 + 4) = HIDWORD(result);
    *(a5 + 8) = v8 & 1;
    *(a5 + 16) = v9;
    *(a5 + 24) = v10 & 1;
  }

  return result;
}

unint64_t PPM_0_2_1.RealNumber.realNumberTypeSelector.getter()
{
  v1 = *(v0 + 24);
  v4 = *(v0 + 16);
  v3 = *(v0 + 32);
  return *(v0 + 8) | (*(v0 + 12) << 32) | (*(v0 + 10) << 16);
}

uint64_t PPM_0_2_1.RealNumber.encodedLength(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 4);
  v6 = *(v4 + 12);
  result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*v4, *(v4 + 8) | (*(v4 + 10) << 16), *(v4 + 16), a4, *(v4 + 32));
  v8 = result;
  if (!v5)
  {
    ++result;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t PPM_0_2_1.RealNumber.init<A>(from:with:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a2 | (a2 >> 8);
  v11 = sub_10002C520();
  result = TLSEnumType.init<A>(from:with:)(a1, v10 & 1, &type metadata for PPM_0_2_1.RealNumberType, a3, v11, a4);
  if (!v5)
  {
    result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.init<A>(from:with:)(a1, v16, a3, a4);
    *a5 = v16;
    *(a5 + 4) = v17;
    *(a5 + 8) = result;
    *(a5 + 10) = BYTE2(result) & 1;
    *(a5 + 12) = HIDWORD(result);
    *(a5 + 16) = v13 & 1;
    *(a5 + 24) = v14;
    *(a5 + 32) = v15 & 1;
  }

  return result;
}

uint64_t sub_100022660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 32);
  return sub_10002C450(a1, a3, a4);
}

double sub_1000226A4@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, *a2 | (a2[1] << 8), a3, a4, v9);
  if (!v5)
  {
    result = *v9;
    v8 = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = v8;
    *(a5 + 32) = v10;
  }

  return result;
}

uint64_t sub_1000226F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s19DPSubmissionService9PPM_0_2_1V10RealNumberV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

unint64_t sub_1000227E4()
{
  result = sub_100042828(&off_1000713A8);
  static PPM_0_2_1.DPMechanism.rangesByEnumVals = result;
  return result;
}

uint64_t *PPM_0_2_1.DPMechanism.rangesByEnumVals.unsafeMutableAddressor()
{
  if (qword_10007C5E0 != -1)
  {
    swift_once();
  }

  return &static PPM_0_2_1.DPMechanism.rangesByEnumVals;
}

uint64_t (*static PPM_0_2_1.DPMechanism.rangesByEnumVals.modify())()
{
  if (qword_10007C5E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

_BYTE *sub_10002298C@<X0>(_BYTE *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 4) = a2;
  return result;
}

__n128 PPM_0_2_1.DistributedDiscreteGaussianWithRandomAllocationAccountantForPreambleDpConfig.targetCentralEpsilon.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 32);
  return result;
}

__n128 PPM_0_2_1.DistributedDiscreteGaussianWithRandomAllocationAccountantForPreambleDpConfig.targetCentralDelta.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 72);
  return result;
}

__n128 PPM_0_2_1.EpsDeltaDPConfig.init(epsilon:delta:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[0] = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *&v5[8] = *a2;
  *&v5[24] = *(a2 + 16);
  v5[40] = *(a2 + 32);
  *(a3 + 57) = *&v5[25];
  *(a3 + 32) = *v5;
  *(a3 + 48) = *&v5[16];
  *a3 = result;
  *(a3 + 16) = v4;
  return result;
}

__n128 PPM_0_2_1.EpsDeltaDPConfig.init<A>(from:with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a2;
  v11 = ((a2 & &_mh_execute_header) >> 32) | (a2 >> 8);
  if ((a2 & &_mh_execute_header) != 0)
  {
    LODWORD(a2) = 0;
  }

  else
  {
    LODWORD(a2) = a2;
  }

  PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, a2 & 0xFFFFFEFF | ((v11 & 1) << 8), a3, a4, v16);
  if (!v5)
  {
    if ((v8 & &_mh_execute_header) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = BYTE2(v8);
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v13 & 0xFFFFFEFF | (((((v8 & &_mh_execute_header) >> 32) | BYTE3(v8)) & 1) << 8), a3, a4, v18);
    v15[0] = v17;
    result = v16[0];
    v14 = v16[1];
    *&v15[8] = v18[0];
    *&v15[24] = v18[1];
    v15[40] = v19;
    *(a5 + 57) = *&v15[25];
    *(a5 + 32) = *v15;
    *(a5 + 48) = *&v15[16];
    *a5 = result;
    *(a5 + 16) = v14;
  }

  return result;
}

uint64_t sub_100022B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[2];
  *v9 = v4[3];
  *&v9[9] = *(v4 + 57);
  v6 = *v4;
  v7 = v4[1];
  return sub_10002BC58(a1, a2, a3, a4);
}

uint64_t sub_100022BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[2];
  *v9 = v4[3];
  *&v9[9] = *(v4 + 57);
  v6 = *v4;
  v7 = v4[1];
  return sub_10002CA8C(a1, a3, a4);
}

__n128 sub_100022C08@<Q0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v12 = *(a2 + 4);
  result.n128_u64[0] = PPM_0_2_1.EpsDeltaDPConfig.init<A>(from:with:)(a1, v7 | (v12 << 32), a3, a4, v10).n128_u64[0];
  if (!v5)
  {
    v9 = v11[0];
    *(a5 + 32) = v10[2];
    *(a5 + 48) = v9;
    *(a5 + 57) = *(v11 + 9);
    result = v10[1];
    *a5 = v10[0];
    *(a5 + 16) = result;
  }

  return result;
}

uint64_t sub_100022C68(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s19DPSubmissionService9PPM_0_2_1V16EpsDeltaDPConfigV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v9) & 1;
}

__n128 PPM_0_2_1.PrioPiRapporConfig.alpha0.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 40);
  return result;
}

__n128 PPM_0_2_1.RenyiDPConfig.init(renyiOrder:sigma:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v4[4] = *a2;
  *&v4[20] = *(a2 + 16);
  result = *v4;
  *(a3 + 4) = *v4;
  v4[36] = *(a2 + 32);
  *a3 = a1;
  *(a3 + 20) = *&v4[16];
  *(a3 + 33) = *&v4[29];
  return result;
}

double PPM_0_2_1.RenyiDPConfig.init<A>(from:with:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_10001F16C();
  CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a3, v11, a4, v16);
  if (!v5)
  {
    v13 = *v16;
    v14 = a2;
    if ((a2 & 0x10000) != 0)
    {
      v14 = 0;
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v14 | (((a2 & 0x10100) != 0) << 8), a3, a4, v17);
    *&v16[4] = v17[0];
    *&v16[20] = v17[1];
    v16[36] = v18;
    *a5 = v13;
    result = *v16;
    v15 = *&v16[16];
    *(a5 + 4) = *v16;
    *(a5 + 20) = v15;
    *(a5 + 33) = *&v16[29];
  }

  return result;
}

uint64_t sub_100022E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  *v7 = v4[1];
  *&v7[9] = *(v4 + 25);
  return sub_10002C1C4(a1, a2, a3, a4);
}

uint64_t sub_100022E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  *v7 = v4[1];
  *&v7[9] = *(v4 + 25);
  return sub_10002C9E8(a1, a3, a4);
}

double sub_100022ED0@<D0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  result = PPM_0_2_1.RenyiDPConfig.init<A>(from:with:)(a1, *a2 | (*(a2 + 2) << 16), a3, a4, &v9);
  if (!v5)
  {
    v8 = v10[0];
    *a5 = v9;
    a5[1] = v8;
    result = *(v10 + 9);
    *(a5 + 25) = *(v10 + 9);
  }

  return result;
}

uint64_t sub_100022F20(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s19DPSubmissionService9PPM_0_2_1V13RenyiDPConfigV23__derived_struct_equalsySbAE_AEtFZ_0(&v5, &v7) & 1;
}

__n128 PPM_0_2_1.DistributedDiscreteGaussianWithRandomAllocationAccountantForPreambleDpConfig.sigma.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 80);
  v3 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 112);
  return result;
}

__n128 PPM_0_2_1.DistributedDiscreteGaussianWithRandomAllocationAccountantForPreambleDpConfig.sigmaLocal.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 120);
  v3 = *(v1 + 136);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 152);
  return result;
}

__n128 PPM_0_2_1.AggregatorDiscreteGaussianDpConfig.init<A>(from:with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v10 = a2;
  v13 = a3 | (a2 >> 8);
  if (a3)
  {
    LODWORD(a2) = 0;
  }

  else
  {
    LODWORD(a2) = a2;
  }

  PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, a2 & 0xFFFFFEFF | ((v13 & 1) << 8), a4, a5, v23);
  if (!v6)
  {
    if (a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = BYTE2(v10);
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v15 & 0xFFFFFEFF | (((a3 | BYTE3(v10)) & 1) << 8), a4, a5, v25);
    if (a3)
    {
      v16 = 0;
    }

    else
    {
      v16 = BYTE4(v10);
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v16 & 0xFFFFFEFF | (((a3 | BYTE5(v10)) & 1) << 8), a4, a5, v27);
    if (a3)
    {
      v17 = 0;
    }

    else
    {
      v17 = BYTE6(v10);
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v17 & 0xFFFFFEFF | (((a3 | HIBYTE(v10)) & 1) << 8), a4, a5, v29);
    v19[0] = v24;
    *&v19[8] = v25[0];
    *&v19[24] = v25[1];
    v19[40] = v26;
    v22[0] = v28;
    v20 = v27[0];
    v21 = v27[1];
    v22[40] = v30;
    *&v22[24] = v29[1];
    *&v22[8] = v29[0];
    v18 = v23[1];
    *a6 = v23[0];
    a6[1] = v18;
    a6[4] = *&v19[32];
    a6[5] = v20;
    a6[2] = *v19;
    a6[3] = *&v19[16];
    *(a6 + 137) = *&v22[25];
    a6[7] = *v22;
    a6[8] = *&v22[16];
    result = v21;
    a6[6] = v21;
  }

  return result;
}

uint64_t sub_1000231C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = v4[6];
  v13 = v4[7];
  *v14 = v4[8];
  *&v14[9] = *(v4 + 137);
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v6 = *v4;
  v7 = v4[1];
  return sub_10002B9C4(a1, a2, a3, a4);
}

uint64_t sub_100023220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = v4[6];
  v13 = v4[7];
  *v14 = v4[8];
  *&v14[9] = *(v4 + 137);
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v6 = *v4;
  v7 = v4[1];
  return sub_10002CB14(a1, a3, a4);
}

double sub_100023284@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  *&result = PPM_0_2_1.AggregatorDiscreteGaussianDpConfig.init<A>(from:with:)(a1, *a2, *(a2 + 8), a3, a4, v12).n128_u64[0];
  if (!v5)
  {
    v8 = v12[7];
    a5[6] = v12[6];
    a5[7] = v8;
    a5[8] = v13[0];
    *(a5 + 137) = *(v13 + 9);
    v9 = v12[3];
    a5[2] = v12[2];
    a5[3] = v9;
    v10 = v12[5];
    a5[4] = v12[4];
    a5[5] = v10;
    result = *v12;
    v11 = v12[1];
    *a5 = v12[0];
    a5[1] = v11;
  }

  return result;
}

uint64_t sub_1000232FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v12[0] = a1[8];
  *(v12 + 9) = *(a1 + 137);
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v13[7] = v6;
  v14[0] = a2[8];
  *(v14 + 9) = *(a2 + 137);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  return _s19DPSubmissionService9PPM_0_2_1V34AggregatorDiscreteGaussianDpConfigV23__derived_struct_equalsySbAE_AEtFZ_0(v11, v13) & 1;
}

__n128 PPM_0_2_1.AggregatorDiscreteGaussianClientSymmetricRapporDpConfig.aggDGaussDPConfig.getter@<Q0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 112);
  a1[6] = *(v1 + 96);
  a1[7] = v2;
  a1[8] = *(v1 + 128);
  *(a1 + 137) = *(v1 + 137);
  v3 = *(v1 + 48);
  a1[2] = *(v1 + 32);
  a1[3] = v3;
  v4 = *(v1 + 80);
  a1[4] = *(v1 + 64);
  a1[5] = v4;
  result = *v1;
  v6 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v6;
  return result;
}

__n128 PPM_0_2_1.AggregatorDiscreteGaussianClientSymmetricRapporDpConfig.localEpsilon.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 160);
  v3 = *(v1 + 176);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 192);
  return result;
}

uint64_t PPM_0_2_1.AggregatorDiscreteGaussianClientSymmetricRapporDpConfig.CodingParameter.localEpsilonParameter.getter(uint64_t a1, unsigned int a2)
{
  HIDWORD(v3) = HIWORD(a2) & 1;
  LODWORD(v3) = a2 << 16;
  return (v3 >> 24);
}

__n128 PPM_0_2_1.AggregatorDiscreteGaussianClientSymmetricRapporDpConfig.init<A>(from:with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a3 & 0x1000000) != 0)
  {
    a2 = 0;
  }

  result.n128_u64[0] = PPM_0_2_1.AggregatorDiscreteGaussianDpConfig.init<A>(from:with:)(a1, a2, (a3 | ((a3 & 0x1000000u) >> 24)) & 1, a4, a5, v25).n128_u64[0];
  if (!v6)
  {
    v13 = BYTE1(a3);
    if ((a3 & 0x1000000) != 0)
    {
      v13 = 0;
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v13 | (((a3 & 0x1010000) != 0) << 8), a4, a5, v27);
    v14 = v25[6];
    v23 = v25[7];
    v15 = v27[1];
    *v24 = v26[0];
    *&v24[9] = *(v26 + 9);
    v16 = v25[2];
    v20 = v25[3];
    v21 = v25[4];
    v22 = v25[5];
    v18 = v25[0];
    v19 = v25[1];
    v17 = v28;
    *(a6 + 160) = v27[0];
    *(a6 + 176) = v15;
    *(a6 + 192) = v17;
    *(a6 + 96) = v14;
    *(a6 + 112) = v23;
    *(a6 + 128) = *v24;
    *(a6 + 144) = *&v24[16];
    *(a6 + 32) = v16;
    *(a6 + 48) = v20;
    *(a6 + 64) = v21;
    *(a6 + 80) = v22;
    result = v19;
    *a6 = v18;
    *(a6 + 16) = v19;
  }

  return result;
}

uint64_t sub_100023574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = v4[10];
  v17 = v4[11];
  v18 = *(v4 + 192);
  v12 = v4[6];
  v13 = v4[7];
  v14 = v4[8];
  v15 = v4[9];
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v6 = *v4;
  v7 = v4[1];
  return sub_10002BD38(a1, a2, a3, a4);
}

uint64_t sub_1000235D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = v4[10];
  v17 = v4[11];
  v18 = *(v4 + 192);
  v12 = v4[6];
  v13 = v4[7];
  v14 = v4[8];
  v15 = v4[9];
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v6 = *v4;
  v7 = v4[1];
  return sub_10002CBF0(a1, a3, a4);
}

__n128 sub_100023644@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result.n128_u64[0] = PPM_0_2_1.AggregatorDiscreteGaussianClientSymmetricRapporDpConfig.init<A>(from:with:)(a1, *a2, *(a2 + 8) | (*(a2 + 10) << 16) | (*(a2 + 11) << 24), a3, a4, v13).n128_u64[0];
  if (!v5)
  {
    v8 = v13[11];
    *(a5 + 160) = v13[10];
    *(a5 + 176) = v8;
    *(a5 + 192) = v14;
    v9 = v13[7];
    *(a5 + 96) = v13[6];
    *(a5 + 112) = v9;
    v10 = v13[9];
    *(a5 + 128) = v13[8];
    *(a5 + 144) = v10;
    v11 = v13[3];
    *(a5 + 32) = v13[2];
    *(a5 + 48) = v11;
    v12 = v13[5];
    *(a5 + 64) = v13[4];
    *(a5 + 80) = v12;
    result = v13[1];
    *a5 = v13[0];
    *(a5 + 16) = result;
  }

  return result;
}

uint64_t sub_1000236E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v15[10] = *(a1 + 160);
  v15[11] = v2;
  v16 = *(a1 + 192);
  v3 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v3;
  v4 = *(a1 + 144);
  v15[8] = *(a1 + 128);
  v15[9] = v4;
  v5 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v5;
  v6 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a2 + 176);
  v17[10] = *(a2 + 160);
  v17[11] = v8;
  v18 = *(a2 + 192);
  v9 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v9;
  v10 = *(a2 + 144);
  v17[8] = *(a2 + 128);
  v17[9] = v10;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  return _s19DPSubmissionService9PPM_0_2_1V55AggregatorDiscreteGaussianClientSymmetricRapporDpConfigV23__derived_struct_equalsySbAE_AEtFZ_0(v15, v17) & 1;
}

__n128 PPM_0_2_1.DistributedGaussianWithSubsampledMomentsAccountantConfig.sigma.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 64);
  return result;
}

__n128 PPM_0_2_1.DistributedGaussianWithSubsampledMomentsAccountantConfig.sigmaAfterNormalization.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 72);
  v3 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 104);
  return result;
}

__n128 PPM_0_2_1.DistributedGaussianWithSubsampledMomentsAccountantConfig.targetCentralEpsilon.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 112);
  v3 = *(v1 + 128);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 144);
  return result;
}

__n128 PPM_0_2_1.DistributedGaussianWithSubsampledMomentsAccountantConfig.targetCentralDelta.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 152);
  v3 = *(v1 + 168);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 184);
  return result;
}

__n128 PPM_0_2_1.DistributedGaussianWithSubsampledMomentsAccountantConfig.init<A>(from:with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = sub_10001F118();
  CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt64, a4, v13, a5, &v32);
  if (!v6)
  {
    v41 = a3;
    v27 = a6;
    v15 = v32;
    v16 = sub_10001F16C();
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a4, v16, a5, &v32);
    v17 = v15;
    v18 = v32;
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt64, a4, v13, a5, &v32);
    v19 = v32;
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a4, v16, a5, &v32);
    v20 = v18;
    v21 = v32;
    v22 = v41;
    if (v41)
    {
      v23 = 0;
    }

    else
    {
      v23 = a2;
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v23 & 0xFFFFFEFF | (((v41 | (a2 >> 8)) & 1) << 8), a4, a5, v33);
    if (v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = BYTE2(a2);
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v24 & 0xFFFFFEFF | (((v22 | BYTE3(a2)) & 1) << 8), a4, a5, v35);
    if (v22)
    {
      v25 = 0;
    }

    else
    {
      v25 = BYTE4(a2);
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v25 & 0xFFFFFEFF | (((v22 | BYTE5(a2)) & 1) << 8), a4, a5, v37);
    if (v22)
    {
      v26 = 0;
    }

    else
    {
      v26 = BYTE6(a2);
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v26 & 0xFFFFFEFF | (((v22 | HIBYTE(a2)) & 1) << 8), a4, a5, v39);
    *&v31[4] = v33[0];
    *&v31[20] = v33[1];
    v31[36] = v34;
    *&v30[7] = v35[0];
    *&v30[23] = v35[1];
    v30[39] = v36;
    v29[39] = v38;
    *&v29[23] = v37[1];
    *&v29[7] = v37[0];
    v28[39] = v40;
    *&v28[23] = v39[1];
    *&v28[7] = v39[0];
    *v27 = v17;
    *(v27 + 8) = v20;
    *(v27 + 16) = v19;
    *(v27 + 24) = v21;
    *(v27 + 57) = *&v31[29];
    *(v27 + 44) = *&v31[16];
    *(v27 + 28) = *v31;
    *(v27 + 97) = *&v30[32];
    *(v27 + 81) = *&v30[16];
    *(v27 + 65) = *v30;
    *(v27 + 137) = *&v29[32];
    *(v27 + 121) = *&v29[16];
    *(v27 + 105) = *v29;
    result = *v28;
    *(v27 + 177) = *&v28[32];
    *(v27 + 161) = *&v28[16];
    *(v27 + 145) = *v28;
  }

  return result;
}

uint64_t sub_100023B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = v4[8];
  v15 = v4[9];
  *v16 = v4[10];
  *&v16[9] = *(v4 + 169);
  v10 = v4[4];
  v11 = v4[5];
  v12 = v4[6];
  v13 = v4[7];
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  return sub_10002BE04(a1, a2, a3, a4);
}

uint64_t sub_100023BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = v4[8];
  v15 = v4[9];
  *v16 = v4[10];
  *&v16[9] = *(v4 + 169);
  v10 = v4[4];
  v11 = v4[5];
  v12 = v4[6];
  v13 = v4[7];
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  return sub_10002CC94(a1, a3, a4);
}

double sub_100023C4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  *&result = PPM_0_2_1.DistributedGaussianWithSubsampledMomentsAccountantConfig.init<A>(from:with:)(a1, *a2, *(a2 + 8), a3, a4, v13).n128_u64[0];
  if (!v5)
  {
    v8 = v21;
    a5[8] = v20;
    a5[9] = v8;
    a5[10] = v22[0];
    *(a5 + 169) = *(v22 + 9);
    v9 = v17;
    a5[4] = v16;
    a5[5] = v9;
    v10 = v19;
    a5[6] = v18;
    a5[7] = v10;
    v11 = v13[1];
    *a5 = v13[0];
    a5[1] = v11;
    result = *&v14;
    v12 = v15;
    a5[2] = v14;
    a5[3] = v12;
  }

  return result;
}

uint64_t sub_100023CCC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v14[0] = a1[10];
  *(v14 + 9) = *(a1 + 169);
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v15[8] = a2[8];
  v15[9] = v7;
  v16[0] = a2[10];
  *(v16 + 9) = *(a2 + 169);
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[7];
  v15[6] = a2[6];
  v15[7] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  return _s19DPSubmissionService9PPM_0_2_1V56DistributedGaussianWithSubsampledMomentsAccountantConfigV23__derived_struct_equalsySbAE_AEtFZ_0(v13, v15) & 1;
}

__n128 PPM_0_2_1.DistributedDiscreteGaussianWithRandomAllocationAccountantForPreambleDpConfig.init<A>(from:with:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a2;
  v13 = ((a3 & 0x10000u) >> 16) | (a2 >> 8);
  if ((a3 & 0x10000) != 0)
  {
    LODWORD(a2) = 0;
  }

  else
  {
    LODWORD(a2) = a2;
  }

  PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, a2 & 0xFFFFFEFF | ((v13 & 1) << 8), a4, a5, v27);
  if (!v6)
  {
    if ((a3 & 0x10000) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = BYTE2(v10);
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v15 & 0xFFFFFEFF | (((((a3 & 0x10000u) >> 16) | BYTE3(v10)) & 1) << 8), a4, a5, v29);
    if ((a3 & 0x10000) != 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = BYTE4(v10);
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v16 & 0xFFFFFEFF | ((((v10 >> 40) | ((a3 & 0x10000u) >> 16)) & 1) << 8), a4, a5, v31);
    if ((a3 & 0x10000) != 0)
    {
      v17 = 0;
    }

    else
    {
      v17 = BYTE6(v10);
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v17 & 0xFFFFFEFF | (((HIBYTE(v10) | ((a3 & 0x10000u) >> 16)) & 1) << 8), a4, a5, v33);
    v18 = a3;
    if ((a3 & 0x10000) != 0)
    {
      v18 = 0;
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v18 | (((a3 & 0x10100) != 0) << 8), a4, a5, v35);
    v20 = v27[0];
    v21 = v27[1];
    v22[0] = v28;
    *&v22[8] = v29[0];
    *&v22[24] = v29[1];
    v22[40] = v30;
    v25[0] = v32;
    v23 = v31[0];
    v24 = v31[1];
    v25[40] = v34;
    *&v25[24] = v33[1];
    *&v25[8] = v33[0];
    v19 = v35[0];
    v26 = v35[1];
    *(a6 + 192) = v36;
    *(a6 + 160) = v19;
    *(a6 + 176) = v26;
    *(a6 + 32) = *v22;
    *(a6 + 48) = *&v22[16];
    *a6 = v20;
    *(a6 + 16) = v21;
    result = *&v22[32];
    *(a6 + 128) = *&v25[16];
    *(a6 + 144) = *&v25[32];
    *(a6 + 96) = v24;
    *(a6 + 112) = *v25;
    *(a6 + 64) = *&v22[32];
    *(a6 + 80) = v23;
  }

  return result;
}

uint64_t sub_100024018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = v4[10];
  v17 = v4[11];
  v18 = *(v4 + 192);
  v12 = v4[6];
  v13 = v4[7];
  v14 = v4[8];
  v15 = v4[9];
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v6 = *v4;
  v7 = v4[1];
  return sub_10002BFB8(a1, a2, a3, a4);
}

uint64_t sub_10002407C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = v4[10];
  v17 = v4[11];
  v18 = *(v4 + 192);
  v12 = v4[6];
  v13 = v4[7];
  v14 = v4[8];
  v15 = v4[9];
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v6 = *v4;
  v7 = v4[1];
  return sub_10002CE60(a1, a3, a4);
}

__n128 sub_1000240E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result.n128_u64[0] = PPM_0_2_1.DistributedDiscreteGaussianWithRandomAllocationAccountantForPreambleDpConfig.init<A>(from:with:)(a1, *a2, *(a2 + 8) | (*(a2 + 10) << 16), a3, a4, v13).n128_u64[0];
  if (!v5)
  {
    v8 = v13[11];
    *(a5 + 160) = v13[10];
    *(a5 + 176) = v8;
    *(a5 + 192) = v14;
    v9 = v13[7];
    *(a5 + 96) = v13[6];
    *(a5 + 112) = v9;
    v10 = v13[9];
    *(a5 + 128) = v13[8];
    *(a5 + 144) = v10;
    v11 = v13[3];
    *(a5 + 32) = v13[2];
    *(a5 + 48) = v11;
    v12 = v13[5];
    *(a5 + 64) = v13[4];
    *(a5 + 80) = v12;
    result = v13[1];
    *a5 = v13[0];
    *(a5 + 16) = result;
  }

  return result;
}

uint64_t sub_100024184(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v15[10] = *(a1 + 160);
  v15[11] = v2;
  v16 = *(a1 + 192);
  v3 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v3;
  v4 = *(a1 + 144);
  v15[8] = *(a1 + 128);
  v15[9] = v4;
  v5 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v5;
  v6 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a2 + 176);
  v17[10] = *(a2 + 160);
  v17[11] = v8;
  v18 = *(a2 + 192);
  v9 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v9;
  v10 = *(a2 + 144);
  v17[8] = *(a2 + 128);
  v17[9] = v10;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  return _s19DPSubmissionService9PPM_0_2_1V76DistributedDiscreteGaussianWithRandomAllocationAccountantForPreambleDpConfigV23__derived_struct_equalsySbAE_AEtFZ_0(v15, v17) & 1;
}

__n128 PPM_0_2_1.DPConfig.DPMechanismSelector.epsProp.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 PPM_0_2_1.DPConfig.DPMechanismSelector.eps_deltaProp.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *(a1 + 32) = *(v1 + 80);
  *(a1 + 48) = v2;
  *(a1 + 57) = *(v1 + 105);
  result = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = result;
  return result;
}

__n128 PPM_0_2_1.DPConfig.DPMechanismSelector.renyiProp.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  result = *(v1 + 128);
  v5 = *(v1 + 144);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

__n128 PPM_0_2_1.DPConfig.DPMechanismSelector.aggregator_discrete_gaussianProp.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 288);
  *(a1 + 96) = *(v1 + 272);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 304);
  v3 = *(v1 + 224);
  *(a1 + 32) = *(v1 + 208);
  *(a1 + 48) = v3;
  v4 = *(v1 + 256);
  *(a1 + 64) = *(v1 + 240);
  *(a1 + 80) = v4;
  v5 = *(v1 + 192);
  *a1 = *(v1 + 176);
  *(a1 + 16) = v5;
  result = *(v1 + 313);
  *(a1 + 137) = result;
  return result;
}

__n128 PPM_0_2_1.DPConfig.DPMechanismSelector.aggregator_discrete_gaussian_client_symmetric_rapporProp.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 512);
  *(a1 + 160) = *(v1 + 496);
  *(a1 + 176) = v2;
  *(a1 + 192) = *(v1 + 528);
  v3 = *(v1 + 448);
  *(a1 + 96) = *(v1 + 432);
  *(a1 + 112) = v3;
  v4 = *(v1 + 480);
  *(a1 + 128) = *(v1 + 464);
  *(a1 + 144) = v4;
  v5 = *(v1 + 384);
  *(a1 + 32) = *(v1 + 368);
  *(a1 + 48) = v5;
  v6 = *(v1 + 416);
  *(a1 + 64) = *(v1 + 400);
  *(a1 + 80) = v6;
  result = *(v1 + 352);
  *a1 = *(v1 + 336);
  *(a1 + 16) = result;
  return result;
}

__n128 PPM_0_2_1.DPConfig.DPMechanismSelector.distributed_gaussian_with_subsampled_moments_accountantProp.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 680);
  *(a1 + 128) = *(v1 + 664);
  *(a1 + 144) = v2;
  *(a1 + 160) = *(v1 + 696);
  *(a1 + 169) = *(v1 + 705);
  v3 = *(v1 + 616);
  *(a1 + 64) = *(v1 + 600);
  *(a1 + 80) = v3;
  v4 = *(v1 + 648);
  *(a1 + 96) = *(v1 + 632);
  *(a1 + 112) = v4;
  v5 = *(v1 + 552);
  *a1 = *(v1 + 536);
  *(a1 + 16) = v5;
  result = *(v1 + 568);
  v7 = *(v1 + 584);
  *(a1 + 32) = result;
  *(a1 + 48) = v7;
  return result;
}

__n128 PPM_0_2_1.DPConfig.DPMechanismSelector.distributed_discrete_gaussian_with_random_allocation_accountantProp.getter@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 192) = *(v1 + 920);
  v2 = *(v1 + 904);
  *(a1 + 160) = *(v1 + 888);
  *(a1 + 176) = v2;
  v3 = *(v1 + 840);
  *(a1 + 96) = *(v1 + 824);
  *(a1 + 112) = v3;
  v4 = *(v1 + 872);
  *(a1 + 128) = *(v1 + 856);
  *(a1 + 144) = v4;
  v5 = *(v1 + 776);
  *(a1 + 32) = *(v1 + 760);
  *(a1 + 48) = v5;
  v6 = *(v1 + 808);
  *(a1 + 64) = *(v1 + 792);
  *(a1 + 80) = v6;
  result = *(v1 + 744);
  *a1 = *(v1 + 728);
  *(a1 + 16) = result;
  return result;
}

uint64_t PPM_0_2_1.DPConfig.DPMechanismSelector.CodingParameter.aggregator_discrete_gaussianParameter.getter()
{
  result = *(v0 + 18);
  v2 = *(v0 + 26);
  return result;
}

uint64_t PPM_0_2_1.DPConfig.DPMechanismSelector.CodingParameter.aggregator_discrete_gaussian_client_symmetric_rapporParameter.getter()
{
  result = *(v0 + 27);
  v2 = *(v0 + 35) | (*(v0 + 37) << 16) | (*(v0 + 38) << 24);
  return result;
}

uint64_t PPM_0_2_1.DPConfig.DPMechanismSelector.CodingParameter.distributed_gaussian_with_subsampled_moments_accountantParameter.getter()
{
  result = *(v0 + 39);
  v2 = *(v0 + 47);
  return result;
}

uint64_t PPM_0_2_1.DPConfig.DPMechanismSelector.CodingParameter.distributed_discrete_gaussian_with_random_allocation_accountantParameter.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56) | (*(v0 + 58) << 16);
  return result;
}

uint64_t PPM_0_2_1.DPConfig.DPMechanismSelector.CodingParameter.init(dpMechanism:epsParameter:eps_deltaParameter:renyiParameter:aggregator_discrete_gaussianParameter:aggregator_discrete_gaussian_client_symmetric_rapporParameter:distributed_gaussian_with_subsampled_moments_accountantParameter:distributed_discrete_gaussian_with_random_allocation_accountantParameter:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, __int16 a13, char a14)
{
  *a9 = result;
  *(a9 + 4) = HIDWORD(result);
  *(a9 + 8) = a2;
  *(a9 + 9) = HIBYTE(a2) & 1;
  *(a9 + 10) = a3;
  *(a9 + 14) = BYTE4(a3) & 1;
  *(a9 + 15) = a4;
  *(a9 + 17) = BYTE2(a4) & 1;
  *(a9 + 18) = a5;
  *(a9 + 26) = a6 & 1;
  *(a9 + 27) = a7;
  *(a9 + 37) = BYTE2(a8);
  *(a9 + 35) = a8;
  *(a9 + 38) = HIBYTE(a8) & 1;
  *(a9 + 39) = a10;
  *(a9 + 47) = a11 & 1;
  *(a9 + 48) = a12;
  *(a9 + 56) = a13;
  *(a9 + 58) = a14 & 1;
  return result;
}

uint64_t PPM_0_2_1.DPConfig.DPMechanismSelector.encodedLength(with:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if (v6 == 9)
  {
    sub_10001C55C();
    swift_allocError();
    *v7 = 0xD000000000000034;
    *(v7 + 8) = 0x800000010005B280;
    v8 = 1;
LABEL_30:
    *(v7 + 16) = v8;
    return swift_willThrow();
  }

  if (*a1 > 4u)
  {
    if (*a1 <= 6u)
    {
      if (v6 == 5)
      {
        v32 = *(v4 + 288);
        v65[6] = *(v4 + 272);
        v65[7] = v32;
        v66[0] = *(v4 + 304);
        v33 = *(v4 + 224);
        v65[2] = *(v4 + 208);
        v65[3] = v33;
        v34 = *(v4 + 256);
        v65[4] = *(v4 + 240);
        v65[5] = v34;
        v35 = *(v4 + 192);
        v65[0] = *(v4 + 176);
        v65[1] = v35;
        *(v66 + 9) = *(v4 + 313);
        v36 = sub_10001C728(v65);
        if (v36 != 1)
        {
          return sub_10002B9C4(v36, v37, v38, v39);
        }

        v10 = 0x800000010005B930;
        sub_10001C55C();
        swift_allocError();
        v11 = 0xD000000000000038;
        goto LABEL_28;
      }

      v12 = *(v4 + 512);
      v63[10] = *(v4 + 496);
      v63[11] = v12;
      v64 = *(v4 + 528);
      v13 = *(v4 + 448);
      v63[6] = *(v4 + 432);
      v63[7] = v13;
      v14 = *(v4 + 464);
      v63[9] = *(v4 + 480);
      v63[8] = v14;
      v15 = *(v4 + 384);
      v63[2] = *(v4 + 368);
      v63[3] = v15;
      v16 = *(v4 + 400);
      v63[5] = *(v4 + 416);
      v63[4] = v16;
      v17 = *(v4 + 336);
      v63[1] = *(v4 + 352);
      v63[0] = v17;
      result = sub_10001C728(v63);
      if (result == 1)
      {
        v10 = 0x800000010005B8D0;
        sub_10001C55C();
        swift_allocError();
        v11 = 0xD000000000000050;
        goto LABEL_28;
      }

      return sub_10002BD38(result, v19, v20, v21);
    }

    if (v6 == 7)
    {
      v40 = *(v4 + 680);
      v61[8] = *(v4 + 664);
      v61[9] = v40;
      v62[0] = *(v4 + 696);
      *(v62 + 9) = *(v4 + 705);
      v41 = *(v4 + 616);
      v61[4] = *(v4 + 600);
      v61[5] = v41;
      v42 = *(v4 + 648);
      v61[6] = *(v4 + 632);
      v61[7] = v42;
      v43 = *(v4 + 552);
      v61[0] = *(v4 + 536);
      v61[1] = v43;
      v44 = *(v4 + 584);
      v61[2] = *(v4 + 568);
      v61[3] = v44;
      v45 = sub_10001C714(v61);
      if (v45 != 1)
      {
        return sub_10002BE04(v45, v46, v47, v48);
      }

      v10 = 0x800000010005B870;
      sub_10001C55C();
      swift_allocError();
      v11 = 0xD000000000000053;
      goto LABEL_28;
    }

    if (v6 != 8)
    {
LABEL_32:
      sub_1000508F0(31);
      v67._object = 0x800000010005B2C0;
      v67._countAndFlagsBits = 0xD00000000000001BLL;
      sub_100050770(v67);
      sub_100050900();
      v68._countAndFlagsBits = 11872;
      v68._object = 0xE200000000000000;
      sub_100050770(v68);
      sub_10001C55C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0xE000000000000000;
      goto LABEL_29;
    }

    v60 = *(v4 + 920);
    v23 = *(v4 + 904);
    v59[10] = *(v4 + 888);
    v59[11] = v23;
    v24 = *(v4 + 840);
    v59[6] = *(v4 + 824);
    v59[7] = v24;
    v25 = *(v4 + 872);
    v59[8] = *(v4 + 856);
    v59[9] = v25;
    v26 = *(v4 + 776);
    v59[2] = *(v4 + 760);
    v59[3] = v26;
    v27 = *(v4 + 808);
    v59[4] = *(v4 + 792);
    v59[5] = v27;
    v28 = *(v4 + 744);
    v59[0] = *(v4 + 728);
    v59[1] = v28;
    result = sub_10001C728(v59);
    if (result == 1)
    {
      v10 = 0x800000010005B810;
      sub_10001C55C();
      swift_allocError();
      v11 = 0xD00000000000005BLL;
      goto LABEL_28;
    }

    return sub_10002BFB8(result, v29, v30, v31);
  }

  if (*a1 > 2u)
  {
    if (v6 == 3)
    {
      if (*(v4 + 48) != 4)
      {
        v55 = *(v4 + 72);
        v56 = *(v4 + 88);
        v57 = *(v4 + 104);
        v58 = *(v4 + 120);
        v54 = *(v4 + 56);
        v53 = *(v4 + 48);
        return sub_10002BC58(a1, a2, a3, a4);
      }

      v10 = 0x800000010005B9A0;
      sub_10001C55C();
      swift_allocError();
      v11 = 0xD000000000000025;
      goto LABEL_28;
    }

    v22 = *(v4 + 136);
    if (v22 == 4)
    {
      v10 = 0x800000010005B970;
      sub_10001C55C();
      swift_allocError();
      v11 = 0xD000000000000021;
      goto LABEL_28;
    }

    v51 = *(v4 + 148);
    result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(v22, *(v4 + 144) | ((*(v4 + 146) & 1) << 16), *(v4 + 152) & 1, a4, *(v4 + 168) & 1);
    if (v5)
    {
      return result;
    }

    v52 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    result += 5;
    if (!__OFADD__(v52, 4))
    {
      return result;
    }

    __break(1u);
    return sub_10002BFB8(result, v29, v30, v31);
  }

  if (v6 == 1)
  {
    if ((*v4 & 1) == 0)
    {
      return 0;
    }

    v10 = 0x800000010005B9F0;
    sub_10001C55C();
    swift_allocError();
    v11 = 0xD000000000000020;
    goto LABEL_28;
  }

  if (v6 != 2)
  {
    goto LABEL_32;
  }

  v9 = *(v4 + 8);
  if (v9 == 4)
  {
    v10 = 0x800000010005B9D0;
    sub_10001C55C();
    swift_allocError();
    v11 = 0xD00000000000001FLL;
LABEL_28:
    *v7 = v11;
    *(v7 + 8) = v10;
LABEL_29:
    v8 = 4;
    goto LABEL_30;
  }

  v49 = *(v4 + 20);
  result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(v9, *(v4 + 16) | ((*(v4 + 18) & 1) << 16), *(v4 + 24) & 1, a4, *(v4 + 40) & 1);
  if (!v5 && __OFADD__(result++, 1))
  {
    __break(1u);
    return sub_10002BD38(result, v19, v20, v21);
  }

  return result;
}

uint64_t PPM_0_2_1.DPConfig.DPMechanismSelector.encode<A>(into:with:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  if (v5 == 9)
  {
    sub_10001C55C();
    swift_allocError();
    *v6 = 0xD000000000000034;
    *(v6 + 8) = 0x800000010005B280;
    v7 = 1;
LABEL_30:
    *(v6 + 16) = v7;
    return swift_willThrow();
  }

  if (*a2 <= 4u)
  {
    if (*a2 > 2u)
    {
      if (v5 == 3)
      {
        if (*(v4 + 48) == 4)
        {
          v8 = 0x800000010005B9A0;
          sub_10001C55C();
          swift_allocError();
          v9 = 0xD000000000000025;
          goto LABEL_28;
        }

        v46 = *(v4 + 72);
        v47 = *(v4 + 88);
        v48 = *(v4 + 104);
        v49 = *(v4 + 120);
        v45 = *(v4 + 56);
        return sub_10002CA8C(a1, a3, a4);
      }

      else
      {
        if (*(v4 + 136) == 4)
        {
          v8 = 0x800000010005B970;
          sub_10001C55C();
          swift_allocError();
          v9 = 0xD000000000000021;
          goto LABEL_28;
        }

        *v51 = *(v4 + 144);
        *&v51[9] = *(v4 + 153);
        v50 = *(v4 + 128);
        return sub_10002C9E8(a1, a3, a4);
      }
    }

    if (v5 == 1)
    {
      if (*v4)
      {
        v8 = 0x800000010005B9F0;
        sub_10001C55C();
        swift_allocError();
        v9 = 0xD000000000000020;
        goto LABEL_28;
      }

      return PPM_0_2_1.Extension.extensionType.getter(a1, a3, a4);
    }

    if (v5 == 2)
    {
      if (*(v4 + 8) == 4)
      {
        v8 = 0x800000010005B9D0;
        sub_10001C55C();
        swift_allocError();
        v9 = 0xD00000000000001FLL;
LABEL_28:
        *v6 = v9;
        *(v6 + 8) = v8;
LABEL_29:
        v7 = 4;
        goto LABEL_30;
      }

      *v44 = *(v4 + 16);
      *&v44[9] = *(v4 + 25);
      return sub_10002C450(a1, a3, a4);
    }

LABEL_31:
    sub_1000508F0(31);
    v60._object = 0x800000010005B2C0;
    v60._countAndFlagsBits = 0xD00000000000001BLL;
    sub_100050770(v60);
    sub_100050900();
    v61._countAndFlagsBits = 11872;
    v61._object = 0xE200000000000000;
    sub_100050770(v61);
    sub_10001C55C();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0xE000000000000000;
    goto LABEL_29;
  }

  if (*a2 > 6u)
  {
    if (v5 == 7)
    {
      v38 = *(v4 + 680);
      v54[8] = *(v4 + 664);
      v54[9] = v38;
      v55[0] = *(v4 + 696);
      *(v55 + 9) = *(v4 + 705);
      v39 = *(v4 + 616);
      v54[4] = *(v4 + 600);
      v54[5] = v39;
      v40 = *(v4 + 648);
      v54[6] = *(v4 + 632);
      v54[7] = v40;
      v41 = *(v4 + 552);
      v54[0] = *(v4 + 536);
      v54[1] = v41;
      v42 = *(v4 + 584);
      v54[2] = *(v4 + 568);
      v54[3] = v42;
      if (sub_10001C714(v54) == 1)
      {
        v8 = 0x800000010005B870;
        sub_10001C55C();
        swift_allocError();
        v9 = 0xD000000000000053;
        goto LABEL_28;
      }

      return sub_10002CC94(a1, a3, a4);
    }

    if (v5 == 8)
    {
      v53 = *(v4 + 920);
      v22 = *(v4 + 904);
      v52[10] = *(v4 + 888);
      v52[11] = v22;
      v23 = *(v4 + 840);
      v52[6] = *(v4 + 824);
      v52[7] = v23;
      v24 = *(v4 + 872);
      v52[8] = *(v4 + 856);
      v52[9] = v24;
      v25 = *(v4 + 776);
      v52[2] = *(v4 + 760);
      v52[3] = v25;
      v26 = *(v4 + 808);
      v52[4] = *(v4 + 792);
      v52[5] = v26;
      v27 = *(v4 + 744);
      v52[0] = *(v4 + 728);
      v52[1] = v27;
      if (sub_10001C728(v52) == 1)
      {
        v8 = 0x800000010005B810;
        sub_10001C55C();
        swift_allocError();
        v9 = 0xD00000000000005BLL;
        goto LABEL_28;
      }

      return sub_10002CE60(a1, a3, a4);
    }

    goto LABEL_31;
  }

  if (v5 == 5)
  {
    v31 = *(v4 + 288);
    v58[6] = *(v4 + 272);
    v58[7] = v31;
    v59[0] = *(v4 + 304);
    v32 = *(v4 + 224);
    v58[2] = *(v4 + 208);
    v58[3] = v32;
    v33 = *(v4 + 256);
    v58[4] = *(v4 + 240);
    v58[5] = v33;
    v34 = *(v4 + 192);
    v58[0] = *(v4 + 176);
    v58[1] = v34;
    *(v59 + 9) = *(v4 + 313);
    if (sub_10001C728(v58) == 1)
    {
      v8 = 0x800000010005B930;
      sub_10001C55C();
      swift_allocError();
      v9 = 0xD000000000000038;
      goto LABEL_28;
    }

    return sub_10002CB14(a1, a3, a4);
  }

  else
  {
    v13 = *(v4 + 512);
    v56[10] = *(v4 + 496);
    v56[11] = v13;
    v57 = *(v4 + 528);
    v14 = *(v4 + 448);
    v56[6] = *(v4 + 432);
    v56[7] = v14;
    v15 = *(v4 + 480);
    v56[8] = *(v4 + 464);
    v56[9] = v15;
    v16 = *(v4 + 384);
    v56[2] = *(v4 + 368);
    v56[3] = v16;
    v17 = *(v4 + 416);
    v56[4] = *(v4 + 400);
    v56[5] = v17;
    v18 = *(v4 + 352);
    v56[0] = *(v4 + 336);
    v56[1] = v18;
    if (sub_10001C728(v56) == 1)
    {
      v8 = 0x800000010005B8D0;
      sub_10001C55C();
      swift_allocError();
      v9 = 0xD000000000000050;
      goto LABEL_28;
    }

    return sub_10002CBF0(a1, a3, a4);
  }
}

void PPM_0_2_1.DPConfig.DPMechanismSelector.init<A>(from:with:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  if (v6 == 9)
  {
    sub_10001C55C();
    swift_allocError();
    *v7 = 0xD000000000000034;
    *(v7 + 8) = 0x800000010005B280;
    v8 = 1;
LABEL_3:
    *(v7 + 16) = v8;
    swift_willThrow();
    return;
  }

  if (*a2 > 4u)
  {
    if (*a2 > 6u)
    {
      if (v6 != 7)
      {
        if (v6 != 8)
        {
          goto LABEL_37;
        }

        v114 = a5;
        PPM_0_2_1.DistributedDiscreteGaussianWithRandomAllocationAccountantForPreambleDpConfig.init<A>(from:with:)(a1, *(a2 + 6), *(a2 + 28) | ((a2[58] & 1) << 16), a3, a4, v112);
        if (v5)
        {
          return;
        }

        sub_10001C65C(&v49);
        sub_10001C694(&v58);
        sub_10001C6D4(&v71);
        v92 = v112[10];
        v93 = v112[11];
        v94 = v113;
        v88 = v112[6];
        v89 = v112[7];
        v90 = v112[8];
        v91 = v112[9];
        v84 = v112[2];
        v85 = v112[3];
        v86 = v112[4];
        v87 = v112[5];
        v82 = v112[0];
        v83 = v112[1];
        PPM_0_2_1.Extension.extensionType.getter(&v82, v27, v28);
        goto LABEL_31;
      }

      v114 = a5;
      PPM_0_2_1.DistributedGaussianWithSubsampledMomentsAccountantConfig.init<A>(from:with:)(a1, *(a2 + 39), a2[47] & 1, a3, a4, v110);
      if (v5)
      {
        return;
      }

      sub_10001C65C(&v49);
      sub_10001C694(&v58);
      v79 = v110[8];
      v80 = v110[9];
      v81[0] = v111[0];
      *(v81 + 9) = *(v111 + 9);
      v75 = v110[4];
      v76 = v110[5];
      v77 = v110[6];
      v78 = v110[7];
      v71 = v110[0];
      v72 = v110[1];
      v73 = v110[2];
      v74 = v110[3];
      PPM_0_2_1.Extension.extensionType.getter(&v71, v33, v34);
    }

    else
    {
      if (v6 == 5)
      {
        v114 = a5;
        PPM_0_2_1.AggregatorDiscreteGaussianDpConfig.init<A>(from:with:)(a1, *(a2 + 18), a2[26] & 1, a3, a4, v106);
        if (v5)
        {
          return;
        }

        v55 = v106[6];
        v56 = v106[7];
        v57[0] = v107[0];
        *(v57 + 9) = *(v107 + 9);
        v51 = v106[2];
        v52 = v106[3];
        v53 = v106[4];
        v54 = v106[5];
        v49 = v106[0];
        v50 = v106[1];
        PPM_0_2_1.Extension.extensionType.getter(&v49, v29, v30);
        sub_10001C694(&v58);
      }

      else
      {
        v114 = a5;
        PPM_0_2_1.AggregatorDiscreteGaussianClientSymmetricRapporDpConfig.init<A>(from:with:)(a1, *(a2 + 27), (*(a2 + 35) | (a2[37] << 16)) & 0xFFFFFF | ((a2[38] & 1) << 24), a3, a4, v108);
        if (v5)
        {
          return;
        }

        sub_10001C65C(&v49);
        v68 = v108[10];
        v69 = v108[11];
        v70 = v109;
        v64 = v108[6];
        v65 = v108[7];
        v66 = v108[8];
        v67 = v108[9];
        v60 = v108[2];
        v61 = v108[3];
        v62 = v108[4];
        v63 = v108[5];
        v58 = v108[0];
        v59 = v108[1];
        PPM_0_2_1.Extension.extensionType.getter(&v58, v23, v24);
      }

      sub_10001C6D4(&v71);
    }

    sub_10001C694(&v82);
LABEL_31:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v48 = 1;
    v46[199] = v70;
    *(&v47[6] + 7) = v55;
    *(&v47[7] + 7) = v56;
    *(&v47[8] + 7) = v57[0];
    v47[9] = *(v57 + 9);
    *(&v47[2] + 7) = v51;
    *(&v47[3] + 7) = v52;
    *(&v47[4] + 7) = v53;
    *(&v47[5] + 7) = v54;
    *(v47 + 7) = v49;
    *(&v47[1] + 7) = v50;
    *&v46[151] = v67;
    *&v46[167] = v68;
    *&v46[183] = v69;
    *&v46[87] = v63;
    v44[199] = v94;
    *&v46[103] = v64;
    *&v46[119] = v65;
    *&v46[135] = v66;
    *&v46[23] = v59;
    *&v46[39] = v60;
    *&v46[55] = v61;
    *&v46[71] = v62;
    *&v46[7] = v58;
    *(&v45[8] + 7) = v79;
    *(&v45[9] + 7) = v80;
    *(&v45[10] + 7) = v81[0];
LABEL_32:
    v45[11] = *(v81 + 9);
    *(&v45[4] + 7) = v75;
    *(&v45[5] + 7) = v76;
    *(&v45[6] + 7) = v77;
    *(&v45[7] + 7) = v78;
    *(v45 + 7) = v71;
    *(&v45[1] + 7) = v72;
    *(&v45[2] + 7) = v73;
    *(&v45[3] + 7) = v74;
    *&v44[151] = v91;
    *&v44[167] = v92;
    *&v44[183] = v93;
    *&v44[87] = v87;
    *&v44[103] = v88;
    *&v44[119] = v89;
    *&v44[135] = v90;
    *&v44[23] = v83;
    *&v44[39] = v84;
    *&v44[55] = v85;
    v17 = xmmword_100055FE0;
    *&v44[71] = v86;
    v18 = 0uLL;
    *&v44[7] = v82;
    v19 = 0uLL;
    v21 = 0uLL;
    v20 = xmmword_1000557B0;
    goto LABEL_33;
  }

  if (*a2 <= 2u)
  {
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v114 = a5;
        PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, a2[8] | ((a2[9] & 1) << 8), a3, a4, v98);
        if (v5)
        {
          return;
        }

        v38 = v98[1];
        v41 = v98[0];
        v9 = v99;
        sub_10001C65C(&v49);
        sub_10001C694(&v58);
        sub_10001C6D4(&v71);
        sub_10001C694(&v82);
        v10 = v38;
        v11 = v9;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v48 = 1;
        v46[199] = v70;
        *(&v47[6] + 7) = v55;
        *(&v47[7] + 7) = v56;
        *(&v47[8] + 7) = v57[0];
        v47[9] = *(v57 + 9);
        *(&v47[2] + 7) = v51;
        *(&v47[3] + 7) = v52;
        *(&v47[4] + 7) = v53;
        *(&v47[5] + 7) = v54;
        *(v47 + 7) = v49;
        *(&v47[1] + 7) = v50;
        *&v46[151] = v67;
        *&v46[167] = v68;
        *&v46[183] = v69;
        *&v46[87] = v63;
        *&v46[103] = v64;
        *&v46[119] = v65;
        v44[199] = v94;
        *&v46[135] = v66;
        *&v46[23] = v59;
        *&v46[39] = v60;
        *&v46[55] = v61;
        *&v46[71] = v62;
        *&v46[7] = v58;
        v16 = v41;
        *(&v45[8] + 7) = v79;
        *(&v45[9] + 7) = v80;
        *(&v45[10] + 7) = v81[0];
        v45[11] = *(v81 + 9);
        *(&v45[4] + 7) = v75;
        *(&v45[5] + 7) = v76;
        *(&v45[6] + 7) = v77;
        *(&v45[7] + 7) = v78;
        *(v45 + 7) = v71;
        *(&v45[1] + 7) = v72;
        *(&v45[2] + 7) = v73;
        *(&v45[3] + 7) = v74;
        *&v44[151] = v91;
        *&v44[167] = v92;
        *&v44[183] = v93;
        *&v44[87] = v87;
        *&v44[103] = v88;
        *&v44[119] = v89;
        *&v44[135] = v90;
        *&v44[23] = v83;
        *&v44[39] = v84;
        *&v44[55] = v85;
        *&v44[71] = v86;
        v17 = xmmword_100055FE0;
        *&v44[7] = v82;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = xmmword_1000557B0;
        v21 = 0uLL;
        v22 = 0uLL;
        goto LABEL_35;
      }

LABEL_37:
      sub_1000508F0(31);
      v115._object = 0x800000010005B2C0;
      v115._countAndFlagsBits = 0xD00000000000001BLL;
      sub_100050770(v115);
      LOBYTE(v58) = v6;
      sub_100050900();
      v116._countAndFlagsBits = 11872;
      v116._object = 0xE200000000000000;
      sub_100050770(v116);
      sub_10001C55C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0xE000000000000000;
      v8 = 4;
      goto LABEL_3;
    }

    v114 = a5;
    PPM_0_2_1.Extension.extensionType.getter(a1, a3, a4);
    if (v5)
    {
      return;
    }

    sub_10001C65C(&v49);
    sub_10001C694(&v58);
    sub_10001C6D4(&v71);
    sub_10001C694(&v82);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v46[199] = v70;
    *(&v47[6] + 7) = v55;
    *(&v47[7] + 7) = v56;
    *(&v47[8] + 7) = v57[0];
    v47[9] = *(v57 + 9);
    *(&v47[2] + 7) = v51;
    *(&v47[3] + 7) = v52;
    *(&v47[4] + 7) = v53;
    *(&v47[5] + 7) = v54;
    *(v47 + 7) = v49;
    *(&v47[1] + 7) = v50;
    *&v46[151] = v67;
    *&v46[167] = v68;
    *&v46[183] = v69;
    *&v46[87] = v63;
    *&v46[103] = v64;
    *&v46[119] = v65;
    *&v46[135] = v66;
    v44[199] = v94;
    v48 = 0;
    *&v46[23] = v59;
    *&v46[39] = v60;
    *&v46[55] = v61;
    *&v46[71] = v62;
    *&v46[7] = v58;
    *(&v45[8] + 7) = v79;
    *(&v45[9] + 7) = v80;
    *(&v45[10] + 7) = v81[0];
    goto LABEL_32;
  }

  if (v6 == 3)
  {
    v114 = a5;
    v31 = *(a2 + 10);
    LOBYTE(v82) = a2[14] & 1;
    PPM_0_2_1.EpsDeltaDPConfig.init<A>(from:with:)(a1, v31 | (v82 << 32), a3, a4, v100);
    if (v5)
    {
      return;
    }

    v40 = v100[0];
    v43 = v100[1];
    v36 = v100[3];
    v37 = v100[2];
    v32 = v101;
    v13 = v102;
    sub_10001C65C(&v49);
    sub_10001C694(&v58);
    sub_10001C6D4(&v71);
    sub_10001C694(&v82);
    v22 = v36;
    v21 = v37;
    v12 = v32;
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v48 = 1;
    v46[199] = v70;
    *(&v47[6] + 7) = v55;
    *(&v47[7] + 7) = v56;
    *(&v47[8] + 7) = v57[0];
    v47[9] = *(v57 + 9);
    *(&v47[2] + 7) = v51;
    *(&v47[3] + 7) = v52;
    *(&v47[4] + 7) = v53;
    *(&v47[5] + 7) = v54;
    *(v47 + 7) = v49;
    *(&v47[1] + 7) = v50;
    *&v46[151] = v67;
    *&v46[167] = v68;
    *&v46[183] = v69;
    *&v46[87] = v63;
    *&v46[103] = v64;
    *&v46[119] = v65;
    *&v46[135] = v66;
    *&v46[23] = v59;
    v44[199] = v94;
    *&v46[39] = v60;
    *&v46[55] = v61;
    *&v46[71] = v62;
    *&v46[7] = v58;
    *(&v45[8] + 7) = v79;
    *(&v45[9] + 7) = v80;
    *(&v45[10] + 7) = v81[0];
    v45[11] = *(v81 + 9);
    *(&v45[4] + 7) = v75;
    *(&v45[5] + 7) = v76;
    *(&v45[6] + 7) = v77;
    *(&v45[7] + 7) = v78;
    *(v45 + 7) = v71;
    *(&v45[1] + 7) = v72;
    *(&v45[2] + 7) = v73;
    *(&v45[3] + 7) = v74;
    *&v44[151] = v91;
    *&v44[167] = v92;
    *&v44[183] = v93;
    *&v44[87] = v87;
    *&v44[103] = v88;
    *&v44[119] = v89;
    *&v44[135] = v90;
    *&v44[23] = v83;
    *&v44[39] = v84;
    *&v44[55] = v85;
    *&v44[71] = v86;
    *&v44[7] = v82;
    v17 = v40;
    v19 = v43;
    v16 = xmmword_100055FE0;
    v20 = xmmword_1000557B0;
    v18 = 0uLL;
    goto LABEL_34;
  }

  v114 = a5;
  PPM_0_2_1.RenyiDPConfig.init<A>(from:with:)(a1, *(a2 + 15) | ((a2[17] & 1) << 16), a3, a4, v103);
  if (v5)
  {
    return;
  }

  v39 = v103[0];
  v42 = v103[1];
  v25 = v104;
  v26 = v105;
  sub_10001C65C(&v49);
  sub_10001C694(&v58);
  sub_10001C6D4(&v71);
  sub_10001C694(&v82);
  v15 = v26;
  v14 = v25;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v48 = 1;
  v46[199] = v70;
  *(&v47[6] + 7) = v55;
  *(&v47[7] + 7) = v56;
  *(&v47[8] + 7) = v57[0];
  v47[9] = *(v57 + 9);
  *(&v47[2] + 7) = v51;
  *(&v47[3] + 7) = v52;
  *(&v47[4] + 7) = v53;
  *(&v47[5] + 7) = v54;
  *(v47 + 7) = v49;
  *(&v47[1] + 7) = v50;
  *&v46[151] = v67;
  *&v46[167] = v68;
  *&v46[183] = v69;
  *&v46[87] = v63;
  *&v46[103] = v64;
  *&v46[119] = v65;
  v44[199] = v94;
  *&v46[135] = v66;
  *&v46[23] = v59;
  *&v46[39] = v60;
  *&v46[55] = v61;
  *&v46[71] = v62;
  *&v46[7] = v58;
  *(&v45[8] + 7) = v79;
  *(&v45[9] + 7) = v80;
  *(&v45[10] + 7) = v81[0];
  v45[11] = *(v81 + 9);
  *(&v45[4] + 7) = v75;
  *(&v45[5] + 7) = v76;
  *(&v45[6] + 7) = v77;
  *(&v45[7] + 7) = v78;
  *(v45 + 7) = v71;
  *(&v45[1] + 7) = v72;
  *(&v45[2] + 7) = v73;
  *(&v45[3] + 7) = v74;
  *&v44[151] = v91;
  *&v44[167] = v92;
  *&v44[183] = v93;
  *&v44[87] = v87;
  *&v44[103] = v88;
  *&v44[119] = v89;
  *&v44[135] = v90;
  *&v44[23] = v83;
  *&v44[39] = v84;
  *&v44[55] = v85;
  *&v44[71] = v86;
  v20 = v39;
  v18 = v42;
  *&v44[7] = v82;
  v19 = 0uLL;
  v21 = 0uLL;
  v17 = xmmword_100055FE0;
LABEL_33:
  v22 = 0uLL;
  v16 = v17;
LABEL_34:
  v10 = 0uLL;
LABEL_35:
  v35 = v114;
  *v114 = v48;
  *(v35 + 1) = *v97;
  *(v35 + 1) = *&v97[3];
  *(v35 + 8) = v16;
  *(v35 + 24) = v10;
  v35[40] = v11;
  *(v35 + 41) = *v96;
  *(v35 + 11) = *&v96[3];
  *(v35 + 3) = v17;
  *(v35 + 4) = v19;
  *(v35 + 5) = v21;
  *(v35 + 6) = v22;
  *(v35 + 14) = v12;
  v35[120] = v13;
  *(v35 + 31) = *&v95[3];
  *(v35 + 121) = *v95;
  *(v35 + 8) = v20;
  *(v35 + 9) = v18;
  *(v35 + 20) = v14;
  v35[168] = v15;
  *(v35 + 185) = v47[1];
  *(v35 + 169) = v47[0];
  *(v35 + 249) = v47[5];
  *(v35 + 233) = v47[4];
  *(v35 + 217) = v47[3];
  *(v35 + 201) = v47[2];
  *(v35 + 297) = v47[8];
  *(v35 + 313) = v47[9];
  *(v35 + 265) = v47[6];
  *(v35 + 281) = v47[7];
  *(v35 + 489) = *&v46[160];
  *(v35 + 505) = *&v46[176];
  *(v35 + 521) = *&v46[192];
  *(v35 + 425) = *&v46[96];
  *(v35 + 441) = *&v46[112];
  *(v35 + 457) = *&v46[128];
  *(v35 + 473) = *&v46[144];
  *(v35 + 361) = *&v46[32];
  *(v35 + 377) = *&v46[48];
  *(v35 + 393) = *&v46[64];
  *(v35 + 409) = *&v46[80];
  *(v35 + 329) = *v46;
  *(v35 + 345) = *&v46[16];
  *(v35 + 657) = v45[8];
  *(v35 + 673) = v45[9];
  *(v35 + 689) = v45[10];
  *(v35 + 705) = v45[11];
  *(v35 + 593) = v45[4];
  *(v35 + 609) = v45[5];
  *(v35 + 625) = v45[6];
  *(v35 + 641) = v45[7];
  *(v35 + 529) = v45[0];
  *(v35 + 545) = v45[1];
  *(v35 + 561) = v45[2];
  *(v35 + 577) = v45[3];
  v35 += 721;
  *(v35 + 10) = *&v44[160];
  *(v35 + 11) = *&v44[176];
  *(v35 + 24) = *&v44[192];
  *(v35 + 6) = *&v44[96];
  *(v35 + 7) = *&v44[112];
  *(v35 + 8) = *&v44[128];
  *(v35 + 9) = *&v44[144];
  *(v35 + 2) = *&v44[32];
  *(v35 + 3) = *&v44[48];
  *(v35 + 4) = *&v44[64];
  *(v35 + 5) = *&v44[80];
  *v35 = *v44;
  *(v35 + 1) = *&v44[16];
}