void sub_1E45E20DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E45E22DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E45E249C(uint64_t a1)
{
  result = [*(a1 + 32) dq_isCloudKitEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id BDSCloudKitLog()
{
  if (qword_1EE2B0578 != -1)
  {
    sub_1E45E259C();
  }

  v1 = qword_1EE2B0580;

  return v1;
}

uint64_t sub_1E45E25B0()
{
  qword_1EE2B0580 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.CloudKit");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1E45E2820(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t MutableObservableContainer.init(value:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1E45E2954(a1);
  (*(*(*(v3 + 264) - 8) + 8))(a1);
  return v4;
}

uint64_t sub_1E45E2954(uint64_t a1)
{
  v2 = (*(*(*(*v1 + 264) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3);
  ObservableContainer.init(value:)(v4);
  return v1;
}

char *ObservableContainer.init(value:)(uint64_t a1)
{
  v2 = v1;
  v18 = *v1;
  v19 = a1;
  v17 = sub_1E470B35C();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_1E470B33C() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = *(*(sub_1E470A61C() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  v16[0] = " = %{public}@";
  v16[1] = v9;
  sub_1E470A5FC();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1E45E2E30(&unk_1EE2ACCE0, MEMORY[0x1E69E8030]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2EC0(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  v10 = *(v3 + 104);
  v11 = v17;
  v10(v6, *MEMORY[0x1E69E8090], v17);
  *(v1 + 2) = sub_1E470B39C();
  sub_1E470A60C();
  sub_1E470B32C();
  v10(v6, *MEMORY[0x1E69E8098], v11);
  *(v1 + 3) = sub_1E470B39C();
  v12 = *(v18 + 80);
  v13 = *(v18 + 88);
  type metadata accessor for ObservableContainer.Event();
  swift_getFunctionTypeMetadata1();
  *(v2 + 4) = sub_1E470AE0C();
  v14 = &v2[*(*v2 + 128)];
  *(v14 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v14 + 1) = 0;
  swift_unknownObjectWeakAssign();
  (*(*(v12 - 8) + 32))(&v2[*(*v2 + 120)], v19, v12);
  return v2;
}

uint64_t sub_1E45E2DE8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1E45E2E30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E45E2E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E45E2EC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1E46506D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E45E2F14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1E46506D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E45E2F7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1E45E3030(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E45E3088()
{
  sub_1E45E3124();
  if (v0 <= 0x3F)
  {
    sub_1E45E31F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E45E3124()
{
  if (!qword_1EE2AE0F0)
  {
    type metadata accessor for ReadingHistory.Streak(255);
    v0 = sub_1E470B47C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2AE0F0);
    }
  }
}

uint64_t sub_1E45E3188()
{
  result = sub_1E4709CCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E45E31F8()
{
  if (!qword_1EE2ACD38)
  {
    v0 = sub_1E470B10C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2ACD38);
    }
  }
}

double sub_1E45E325C@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE2AE440 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&qword_1EE2AE450;
  *a1 = qword_1EE2AE448;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E45E3310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_1E45E35C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1E45E35EC(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) currentToken];
    v4 = [WeakRetained plistContents];
    v5 = [v4 objectForKey:@"BDSICloudIdentityTokenTrackerToken"];

    v6 = [[BDSICloudIdentityToken alloc] initFromArchive:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 isEqual:v3] ^ 1;
    }

    else
    {
      v8 = 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = v8;
    v9 = BDSCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v12 = 138543874;
      v13 = v10;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = v3;
      _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_INFO, "BDSICloudIdentityTokenTracker didUnacknowledgediCloudLogoutOccur=%{public}@ l=%{public}@ c=%{public}@", &v12, 0x20u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E45E3898(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) currentToken];
    v4 = [BDSICloudIdentityToken alloc];
    v5 = [WeakRetained plistContents];
    v6 = [v5 objectForKey:@"BDSICloudIdentityTokenTrackerToken"];
    v7 = [(BDSICloudIdentityToken *)v4 initFromArchive:v6];

    if (v3 != v7 && ([v3 isEqual:v7] & 1) == 0)
    {
      v8 = [WeakRetained plistContents];
      v9 = v8;
      if (v3)
      {
        v10 = [v3 token];
        [v9 setObject:v10 forKey:@"BDSICloudIdentityTokenTrackerToken"];
      }

      else
      {
        [v8 removeObjectForKey:@"BDSICloudIdentityTokenTrackerToken"];
      }

      v11 = [WeakRetained plistContents];
      v12 = [WeakRetained plistURL];
      [v11 writeToURL:v12 atomically:1];

      v13 = BDSCloudKitLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [WeakRetained plistURL];
        v16 = 141558274;
        v17 = 1752392040;
        v18 = 2112;
        v19 = v14;
        _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "Done acknowledge iCloud identity: %{mask.hash}@", &v16, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

id BDSCloudKitAudiobookLog()
{
  if (qword_1EE2B0548 != -1)
  {
    sub_1E45E3AE8();
  }

  v1 = qword_1EE2B0550;

  return v1;
}

uint64_t sub_1E45E3AFC()
{
  qword_1EE2B0550 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.CloudKitAudiobook");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E45E3C10()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v0 environment];

  v1 = [v2 objectForKeyedSubscript:@"XCTestConfigurationFilePath"];
  byte_1EE2AEC10 = v1 != 0;
}

void sub_1E45E3CEC()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"BKLibrary.ReadingNow";
  v3[1] = @"BKAudioBookSkipForward";
  v3[2] = @"BKAudioBookSkipBackward";
  v3[3] = @"BCOverrideRecentBookAlgorithm";
  v3[4] = @"BCTimeThresholdPromotionOverride";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v1 = qword_1EE2B0470;
  qword_1EE2B0470 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E45E3D90()
{
  qword_1EE2B0500 = objc_alloc_init(BDSCloudGlobalMetadataManager);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E45E4224()
{
  v4 = +[BCCloudKitConfiguration configuration];
  v0 = [[BCCloudKitController alloc] initWithConfiguration:v4];
  v1 = qword_1EE2B0518;
  qword_1EE2B0518 = v0;

  v2 = [BCCloudKitTransactionManager alloc];
  v3 = [(BCCloudKitTransactionManager *)v2 initWithCloudKitController:qword_1EE2B0518];
  [qword_1EE2B0518 setTransactionManager:v3];
}

uint64_t sub_1E45E45B8(uint64_t a1)
{
  v1 = [*(a1 + 32) reachabilityForInternetConnection];
  v2 = qword_1EE2B04E0;
  qword_1EE2B04E0 = v1;

  result = [qword_1EE2B04E0 currentReachabilityStatus];
  byte_1EE2AEBE8 = result == 0;
  return result;
}

void sub_1E45E49E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id BDSCloudKitSyncLog()
{
  if (qword_1EE2AEC60 != -1)
  {
    sub_1E45E4AA8();
  }

  v1 = qword_1EE2AEC68;

  return v1;
}

uint64_t sub_1E45E4ABC()
{
  qword_1EE2AEC68 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.CloudKitSync");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1E45E4C60(uint64_t a1)
{
  qword_1EE2AEBF8 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1E45E4D50()
{
  qword_1EE2AEBF0 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

id sub_1E45E4E90()
{
  result = [objc_allocWithZone(type metadata accessor for CloudSecureManagerProxy()) init];
  qword_1EE2AD5A0 = result;
  return result;
}

uint64_t sub_1E45E512C()
{
  qword_1EE2B0528 = [[BCCloudCollectionsManager alloc] initClientXPCProxy];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E45E5280(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1E46184B4;
  v16[3] = &unk_1E875A1C0;
  v20 = a4;
  v17 = v7;
  v18 = v9;
  v10 = v8;
  v19 = v10;
  v11 = v7;
  v12 = v9;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v16];
  v14 = _Block_copy(v10);
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, v13);
  }
}

id BDSServiceLog()
{
  if (qword_1EE2AEC50 != -1)
  {
    sub_1E45E53A4();
  }

  v1 = qword_1EE2AEC58;

  return v1;
}

uint64_t sub_1E45E5404()
{
  qword_1EE2AEC58 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.Service");

  return MEMORY[0x1EEE66BB8]();
}

id sub_1E45E5454(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = swift_unknownObjectRetain();

  return v6;
}

void sub_1E45E54F8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1E45E5514(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1E45E5534(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id BDSServiceXPCNotificationLog()
{
  if (qword_1EE2AEC40 != -1)
  {
    sub_1E45E562C();
  }

  v1 = qword_1EE2AEC48;

  return v1;
}

void sub_1E45E5598(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BDSServiceXPCNotificationLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706068(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "monitorServiceNotifications: OK", v5, 2u);
  }
}

uint64_t sub_1E45E5648()
{
  qword_1EE2AEC48 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.Service.XPCNotification");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1E45E5874()
{
  qword_1EE2B0520 = [[BCCloudAssetManager alloc] initClientXPCProxy];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1E45E5CF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1ECF7B600;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

__n128 sub_1E45E5D7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1E45E5D90()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1E4650534(&qword_1ECF74770, &unk_1E471C900) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  v10 = v0 + v8;
  v11 = type metadata accessor for CRDTModelRevisionInfo();
  if (!(*(*(v11 - 8) + 48))(v0 + v8, 1, v11))
  {
    v12 = *(v10 + 8);

    v13 = *(v10 + 24);

    v14 = *(v11 + 24);
    v15 = sub_1E4709CCC();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v10 + v14, 1, v15))
    {
      (*(v16 + 8))(v10 + v14, v15);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_1E45E5FAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45E5FE4()
{
  MEMORY[0x1E6917600](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45E601C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E45E6054()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45E6094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1E45E615C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1E45E621C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_1E470AF0C();
  [v4 setType_];
}

uint64_t sub_1E45E6288()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E45E62DC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E45E6344()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E45E637C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45E63B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45E6404@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1E4667F6C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

__n128 sub_1E45E646C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E45E647C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E45E64C4()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(type metadata accessor for ObservableContainer.Event() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 5);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(*(v2 - 8) + 8);
  v9(&v0[v5], v2);
  if (EnumCaseMultiPayload == 1)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v9(&v0[v5 + *(TupleTypeMetadata2 + 48)], v2);
  }

  v11 = (v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *&v0[v11];

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v4 | 7);
}

uint64_t sub_1E45E661C()
{
  MEMORY[0x1E6917600](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45E6654()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1E45E669C()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(type metadata accessor for ObservableContainer.Event() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 5);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(*(v2 - 8) + 8);
  v9(&v0[v5], v2);
  if (EnumCaseMultiPayload == 1)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v9(&v0[v5 + *(TupleTypeMetadata2 + 48)], v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1E45E67FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E45E684C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_1E45E68B0(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1E45E68BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CRDTModelFileSyncManager.disableReadingInBackground.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E45E6920@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_1E45E699C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E45E69E4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E45E6A2C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 16);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 24, v3 | 7);
}

uint64_t sub_1E45E6AFC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45E6B34()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E45E6B6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45E6BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E4650534(&unk_1ECF752B0, &unk_1E471C280);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E45E6C6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E4650534(&unk_1ECF752B0, &unk_1E471C280);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E45E6D1C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45E6D54()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E45E6DD4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1E45E6E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E45E6F24()
{
  v1 = sub_1E4709CCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

uint64_t sub_1E45E7020()
{
  v1 = sub_1E4709CCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E45E70F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45E7130()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E45E7170()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E45E71A8@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1ECF74C30;
  return result;
}

uint64_t sub_1E45E71F4(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1ECF74C30 = v1;
  return result;
}

uint64_t sub_1E45E723C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReadingHistoryModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1E4709CCC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1E45E7388(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ReadingHistoryModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1E4709CCC();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1E45E74E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45E751C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45E7554()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1E45E7594()
{
  MEMORY[0x1E6917600](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45E75D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 74, 7);
}

uint64_t sub_1E45E7608()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E45E7640()
{
  v1 = *(sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_1E4709CCC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1E45E776C()
{
  v1 = sub_1E4709CCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1E45E7828()
{
  v1 = *(sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0) - 8);
  v48 = *(v1 + 80);
  v46 = *(v1 + 64);
  v2 = *(v0 + 24);

  v49 = v0;
  v47 = (v48 + 32) & ~v48;
  v3 = v0 + v47;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v45 = *(*(v5 - 8) + 8);
  v45(v0 + v47, v5);
  v6 = type metadata accessor for ReadingHistoryModel(0);
  v7 = *(v6 + 20);
  v8 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  v9 = (*(v8 - 8) + 8);
  v10 = v3 + v7;
  v11 = *v9;
  (*v9)(v10, v8);
  v12 = *(v3 + *(v6 + 24));

  v13 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v14 = v3 + *(v13 + 48);
  v15 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  v44 = *(*(v15 - 8) + 48);
  v16 = v44(v14, 2, v15);
  if (EnumCaseMultiPayload == 1)
  {
    if (!v16)
    {
      v45(v14, v5);
      v11(v14 + *(v6 + 20), v8);
      v17 = *(v14 + *(v6 + 24));
    }

    v43 = v11;
    v18 = v3 + *(v13 + 52);
    v19 = type metadata accessor for CRDTModelRevisionInfo();
    v41 = *(*(v19 - 8) + 48);
    if (!v41(v18, 1, v19))
    {
      v20 = *(v18 + 8);

      v21 = *(v18 + 24);

      v22 = *(v19 + 24);
      v23 = sub_1E4709CCC();
      v42 = *(v23 - 8);
      if (!(*(v42 + 48))(v18 + v22, 1, v23))
      {
        (*(v42 + 8))(v18 + v22, v23);
      }
    }

    v24 = v3 + *(sub_1E4650534(&qword_1ECF74A08, &unk_1E471D890) + 48);
    v45(v24, v5);
    v43(v24 + *(v6 + 20), v8);
    v25 = *(v24 + *(v6 + 24));

    v26 = v24 + *(v13 + 48);
    if (!v44(v26, 2, v15))
    {
      v45(v26, v5);
      v43(v26 + *(v6 + 20), v8);
      v27 = *(v26 + *(v6 + 24));
    }

    v28 = v24 + *(v13 + 52);
    if (!v41(v28, 1, v19))
    {
      v29 = *(v28 + 8);

      v30 = *(v28 + 24);

      v31 = *(v19 + 24);
      goto LABEL_15;
    }
  }

  else
  {
    if (!v16)
    {
      v45(v14, v5);
      v11(v14 + *(v6 + 20), v8);
      v32 = *(v14 + *(v6 + 24));
    }

    v28 = v3 + *(v13 + 52);
    v33 = type metadata accessor for CRDTModelRevisionInfo();
    if (!(*(*(v33 - 8) + 48))(v28, 1, v33))
    {
      v34 = *(v28 + 8);

      v35 = *(v28 + 24);

      v31 = *(v33 + 24);
LABEL_15:
      v36 = sub_1E4709CCC();
      v37 = *(v36 - 8);
      if (!(*(v37 + 48))(v28 + v31, 1, v36))
      {
        (*(v37 + 8))(v28 + v31, v36);
      }
    }
  }

  v38 = (v46 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v49 + v38);

  return MEMORY[0x1EEE6BDD0](v49, v38 + 8, v48 | 7);
}

uint64_t sub_1E45E7D9C()
{
  v1 = *(sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0) - 8);
  v46 = *(v1 + 80);
  v44 = *(v1 + 64);
  v2 = *(v0 + 24);

  v47 = v0;
  v45 = (v46 + 32) & ~v46;
  v3 = v0 + v45;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v43 = *(*(v5 - 8) + 8);
  v43(v0 + v45, v5);
  v6 = type metadata accessor for ReadingHistoryModel(0);
  v7 = *(v6 + 20);
  v8 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  v9 = (*(v8 - 8) + 8);
  v10 = v3 + v7;
  v11 = *v9;
  (*v9)(v10, v8);
  v12 = *(v3 + *(v6 + 24));

  v13 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v14 = v3 + *(v13 + 48);
  v15 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  v42 = *(*(v15 - 8) + 48);
  v16 = v42(v14, 2, v15);
  if (EnumCaseMultiPayload == 1)
  {
    if (!v16)
    {
      v43(v14, v5);
      v11(v14 + *(v6 + 20), v8);
      v17 = *(v14 + *(v6 + 24));
    }

    v41 = v11;
    v18 = v3 + *(v13 + 52);
    v19 = type metadata accessor for CRDTModelRevisionInfo();
    v39 = *(*(v19 - 8) + 48);
    if (!v39(v18, 1, v19))
    {
      v20 = *(v18 + 8);

      v21 = *(v18 + 24);

      v22 = *(v19 + 24);
      v23 = sub_1E4709CCC();
      v40 = *(v23 - 8);
      if (!(*(v40 + 48))(v18 + v22, 1, v23))
      {
        (*(v40 + 8))(v18 + v22, v23);
      }
    }

    v24 = v3 + *(sub_1E4650534(&qword_1ECF74A08, &unk_1E471D890) + 48);
    v43(v24, v5);
    v41(v24 + *(v6 + 20), v8);
    v25 = *(v24 + *(v6 + 24));

    v26 = v24 + *(v13 + 48);
    if (!v42(v26, 2, v15))
    {
      v43(v26, v5);
      v41(v26 + *(v6 + 20), v8);
      v27 = *(v26 + *(v6 + 24));
    }

    v28 = v24 + *(v13 + 52);
    if (!v39(v28, 1, v19))
    {
      v29 = *(v28 + 8);

      v30 = *(v28 + 24);

      v31 = *(v19 + 24);
      goto LABEL_15;
    }
  }

  else
  {
    if (!v16)
    {
      v43(v14, v5);
      v11(v14 + *(v6 + 20), v8);
      v32 = *(v14 + *(v6 + 24));
    }

    v28 = v3 + *(v13 + 52);
    v33 = type metadata accessor for CRDTModelRevisionInfo();
    if (!(*(*(v33 - 8) + 48))(v28, 1, v33))
    {
      v34 = *(v28 + 8);

      v35 = *(v28 + 24);

      v31 = *(v33 + 24);
LABEL_15:
      v36 = sub_1E4709CCC();
      v37 = *(v36 - 8);
      if (!(*(v37 + 48))(v28 + v31, 1, v36))
      {
        (*(v37 + 8))(v28 + v31, v36);
      }
    }
  }

  return MEMORY[0x1EEE6BDD0](v47, v45 + v44, v46 | 7);
}

uint64_t sub_1E45E82F8()
{
  v1 = *(sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0) - 8);
  v47 = *(v1 + 80);
  v45 = *(v1 + 64);
  v48 = v0;
  v46 = (v47 + 16) & ~v47;
  v2 = v0 + v46;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v44 = *(*(v4 - 8) + 8);
  v44(v0 + v46, v4);
  v5 = type metadata accessor for ReadingHistoryModel(0);
  v6 = *(v5 + 20);
  v7 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  v8 = (*(v7 - 8) + 8);
  v9 = v2 + v6;
  v10 = *v8;
  (*v8)(v9, v7);
  v11 = *(v2 + *(v5 + 24));

  v12 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v13 = v2 + *(v12 + 48);
  v14 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  v43 = *(*(v14 - 8) + 48);
  v15 = v43(v13, 2, v14);
  if (EnumCaseMultiPayload == 1)
  {
    if (!v15)
    {
      v44(v13, v4);
      v10(v13 + *(v5 + 20), v7);
      v16 = *(v13 + *(v5 + 24));
    }

    v42 = v10;
    v17 = v2 + *(v12 + 52);
    v18 = type metadata accessor for CRDTModelRevisionInfo();
    v40 = *(*(v18 - 8) + 48);
    if (!v40(v17, 1, v18))
    {
      v19 = *(v17 + 8);

      v20 = *(v17 + 24);

      v21 = *(v18 + 24);
      v22 = sub_1E4709CCC();
      v41 = *(v22 - 8);
      if (!(*(v41 + 48))(v17 + v21, 1, v22))
      {
        (*(v41 + 8))(v17 + v21, v22);
      }
    }

    v23 = v2 + *(sub_1E4650534(&qword_1ECF74A08, &unk_1E471D890) + 48);
    v44(v23, v4);
    v42(v23 + *(v5 + 20), v7);
    v24 = *(v23 + *(v5 + 24));

    v25 = v23 + *(v12 + 48);
    if (!v43(v25, 2, v14))
    {
      v44(v25, v4);
      v42(v25 + *(v5 + 20), v7);
      v26 = *(v25 + *(v5 + 24));
    }

    v27 = v23 + *(v12 + 52);
    if (!v40(v27, 1, v18))
    {
      v28 = *(v27 + 8);

      v29 = *(v27 + 24);

      v30 = *(v18 + 24);
      goto LABEL_15;
    }
  }

  else
  {
    if (!v15)
    {
      v44(v13, v4);
      v10(v13 + *(v5 + 20), v7);
      v31 = *(v13 + *(v5 + 24));
    }

    v27 = v2 + *(v12 + 52);
    v32 = type metadata accessor for CRDTModelRevisionInfo();
    if (!(*(*(v32 - 8) + 48))(v27, 1, v32))
    {
      v33 = *(v27 + 8);

      v34 = *(v27 + 24);

      v30 = *(v32 + 24);
LABEL_15:
      v35 = sub_1E4709CCC();
      v36 = *(v35 - 8);
      if (!(*(v36 + 48))(v27 + v30, 1, v35))
      {
        (*(v36 + 8))(v27 + v30, v35);
      }
    }
  }

  v37 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(v48 + v37);

  return MEMORY[0x1EEE6BDD0](v48, v37 + 8, v47 | 7);
}

uint64_t sub_1E45E8860()
{
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1E45E8908()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45E8940()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E45E8978()
{
  v1 = *(v0 + 2);
  v2 = *(*(v0 + 4) + 8);
  v3 = sub_1E470ACBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 6);

  (*(v4 + 8))(&v0[v6], v3);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_1E45E8A48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45E8A80()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45E8AB8()
{
  v1 = *(v0 + 2);
  v2 = *(*(v0 + 4) + 8);
  v3 = sub_1E470ACBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 6);

  (*(v4 + 8))(&v0[v6], v3);
  v9 = *&v0[v7 + 8];

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v5 | 7);
}

uint64_t sub_1E45E8BB0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1E45E8C1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1E45E8CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E470ADBC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E45E8DC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E470ADBC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E45E8EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E45E9000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E45E9120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E45E9244(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E45E93C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45E93FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45E9438()
{
  MEMORY[0x1E6917600](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45E9470()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E45E94C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45E94F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E45E953C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45E957C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45E95BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E45E9604()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45E963C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1E45E9674()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45E98DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E4709EAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E45E9988(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E4709EAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E45E9A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4709EAC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E45E9A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4709EAC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E45E9B10(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1E4709EAC();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1E45E9BBC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1E4709EAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E45E9C5C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1E4709EAC();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1E45E9D08(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1E4709EAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E45E9DA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_1E4709EAC();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[8] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1E45E9F20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_1E4709EAC();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = a2;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_1E45EA088(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E4709EAC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E45EA1B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1E4709EAC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E45EA2E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E4709EAC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E45EA418(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1E4709EAC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E45EA550(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E470ADFC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E45EA5FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E470ADFC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E45EA6A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E45EA6B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45EA6F4(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_1E4650534(&qword_1ECF74C58, &unk_1E471D5A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

_BYTE *sub_1E45EA870(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
    return result;
  }

  v8 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_1E4650534(&qword_1ECF74C58, &unk_1E471D5A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E45EA9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 >= 2)
    {
      v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v5 = -2;
    }

    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1E45EAAC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = a2 + 2;
  }

  else
  {
    v7 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E45EAB6C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45EABA4()
{
  MEMORY[0x1E6917600](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45EABDC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E45EAC34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45EAC70()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E45EACEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45EAD2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E45EAD7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_1E45EADE0(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1E45EADEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE2B0590;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E45EAE78()
{
  v1 = v0[2];

  sub_1E465746C(v0[3], v0[4]);
  v2 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E45EAEC0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 16);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 24, v3 | 7);
}

uint64_t sub_1E45EAF90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45EAFD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45EB008()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45EB04C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45EB084()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45EB0BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45EB0F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45EB14C()
{
  MEMORY[0x1E6917600](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E45EB184()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45EB1C4()
{
  sub_1E4658A0C((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1E45EB21C()
{
  v1 = sub_1E470A0DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1E45EB2CC()
{
  v1 = sub_1E470A0DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1E45EB394()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E45EB3F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E45EB434()
{
  v1 = sub_1E4650534(&qword_1ECF75D48, &unk_1E4720570);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E45EB5D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E45EB950()
{
  qword_1EE2B04B0 = objc_alloc_init(BDSServiceProxy);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E45EC028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E45EC040(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E45EC058(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSaltVersionIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E45EC194(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained wq_refreshSalt:*(a1 + 32)];
}

void sub_1E45EC2D4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained currentSalt];
    v7 = 138412546;
    v8 = v4;
    v9 = 1024;
    v10 = [WeakRetained isSaltRefreshInProgress];
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager refreshSaltIfNeeded - currentSalt: %@, isSaltRefreshInProgress: %{BOOL}d", &v7, 0x12u);
  }

  v5 = [WeakRetained currentSalt];
  if (v5)
  {
  }

  else if (([WeakRetained isSaltRefreshInProgress] & 1) == 0)
  {
    [WeakRetained wq_refreshSalt:*(a1 + 32)];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E45EC58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E45EC5B0(uint64_t a1, void *a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v11 = objc_alloc(MEMORY[0x1E695DF30]);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Nil weak self after fetch salt record"];
    v22 = *MEMORY[0x1E696AA08];
    v13 = v6;
    if (!v6)
    {
      v13 = [MEMORY[0x1E695DFB0] null];
    }

    v23[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v15 = [v11 initWithName:@"No Books Salt" reason:v12 userInfo:v14];
    v16 = v15;

    if (!v6)
    {
    }

    objc_exception_throw(v15);
  }

  v9 = [WeakRetained workQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1E45EC888;
  v17[3] = &unk_1E8759700;
  v17[4] = v8;
  v18 = v6;
  v19 = v5;
  objc_copyWeak(&v21, (a1 + 40));
  v20 = *(a1 + 32);
  dispatch_async(v9, v17);

  objc_destroyWeak(&v21);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E45EC888(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setIsSaltRefreshInProgress:0];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1E45EC040;
  v37 = sub_1E45EC050;
  v38 = 0;
  v2 = (a1 + 40);
  if (*(a1 + 40) || (v11 = *(a1 + 48)) == 0)
  {
    v3 = BDSCloudKitLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1E4701DE0((a1 + 40), a1, v3);
    }

    memset(bytes, 0, sizeof(bytes));
    if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x80uLL, bytes))
    {
      v20 = objc_alloc(MEMORY[0x1E695DF30]);
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate random salt"];
      v39 = *MEMORY[0x1E696AA08];
      v22 = *v2;
      if (*v2)
      {
        v23 = *v2;
      }

      else
      {
        v23 = [MEMORY[0x1E695DFB0] null];
      }

      v40 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v25 = [v20 initWithName:@"No Books Record Salt" reason:v21 userInfo:v24];
      v26 = v25;

      if (!v22)
      {
      }

      objc_exception_throw(v25);
    }

    v4 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"recordIDSalt"];
    v5 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"recordIDSalt" recordID:v4];
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:128];
    v7 = [v5 encryptedValuesByKey];
    [v7 setObject:v6 forKeyedSubscript:@"saltEncrypted"];

    v8 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_INFO, "BDSSyncEngineSaltManager: Will save record salt", buf, 2u);
    }

    v9 = [*(a1 + 32) database];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1E45ECD5C;
    v27[3] = &unk_1E87596D8;
    objc_copyWeak(&v31, (a1 + 64));
    v30 = &v33;
    v10 = v6;
    v28 = v10;
    v29 = *(a1 + 56);
    [v9 saveRecord:v5 completionHandler:v27];

    objc_destroyWeak(&v31);
  }

  else
  {
    v12 = [v11 encryptedValuesByKey];
    v13 = [v12 objectForKeyedSubscript:@"saltEncrypted"];

    if (!v13)
    {
      v13 = [*(a1 + 48) objectForKeyedSubscript:@"salt"];
    }

    [*(a1 + 32) setCurrentSalt:v13];
    v14 = [*(a1 + 48) recordChangeTag];
    v15 = v34[5];
    v34[5] = v14;

    [*(a1 + 32) setCurrentSaltVersionIdentifier:v34[5]];
    v16 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v34[5];
      LODWORD(bytes[0]) = 138412546;
      *(bytes + 4) = v13;
      WORD6(bytes[0]) = 2112;
      *(bytes + 14) = v17;
      _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Successfully read existing record salt salt:(%@) changeTag:(%@). Calling completion", bytes, 0x16u);
    }

    v18 = [*(a1 + 32) observer];
    [v18 saltManager:*(a1 + 32) updatedSaltWithVersion:v34[5]];
  }

  _Block_object_dispose(&v33, 8);

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E45ECD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E45ECD5C(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v37 = objc_alloc(MEMORY[0x1E695DF30]);
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Nil weak self after save record"];
    v43 = *MEMORY[0x1E696AA08];
    v39 = v6;
    if (!v6)
    {
      v39 = [MEMORY[0x1E695DFB0] null];
    }

    v44 = v39;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v41 = [v37 initWithName:@"No Books Record Salt" reason:v38 userInfo:v40];
    v42 = v41;

    if (!v6)
    {
    }

    objc_exception_throw(v41);
  }

  v8 = WeakRetained;
  v9 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_INFO, "BDSSyncEngineSaltManager: Saving record salt....", buf, 2u);
  }

  v10 = [v6 domain];
  if ([v10 isEqualToString:*MEMORY[0x1E695B740]])
  {
    v11 = [v6 code];

    if (v11 == 14)
    {
      v12 = [v6 userInfo];
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695B7C0]];

      v14 = [v13 encryptedValuesByKey];
      v15 = [v14 objectForKeyedSubscript:@"saltEncrypted"];

      if (v13)
      {
        v16 = BDSCloudKitSyncLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v13 recordChangeTag];
          *buf = 138412802;
          v46 = v15;
          v47 = 2112;
          v48 = v17;
          v49 = 2112;
          v50 = v6;
          _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Successfully established record salt from server record salt:(%@) changeTag:(%@) error:(%@)", buf, 0x20u);
        }

        [v8 setCurrentSalt:v15];
        v18 = [v13 recordChangeTag];
        v19 = *(*(a1 + 48) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        [v8 setCurrentSaltVersionIdentifier:*(*(*(a1 + 48) + 8) + 40)];
        v6 = 0;
      }

LABEL_15:
      goto LABEL_19;
    }
  }

  else
  {
  }

  v21 = BDSCloudKitSyncLog();
  v13 = v21;
  if (v6)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1E4701E70();
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 32);
    v23 = [v5 recordChangeTag];
    *buf = 138412546;
    v46 = v22;
    v47 = 2112;
    v48 = v23;
    _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Successfully established record salt for NO ERROR salt:(%@) changeTag:(%@)", buf, 0x16u);
  }

  v24 = [v5 encryptedValuesByKey];
  v25 = [v24 objectForKeyedSubscript:@"saltEncrypted"];
  [v8 setCurrentSalt:v25];

  v26 = [v5 recordChangeTag];
  v27 = *(*(a1 + 48) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;

  [v8 setCurrentSaltVersionIdentifier:*(*(*(a1 + 48) + 8) + 40)];
  v6 = 0;
LABEL_19:
  v29 = [v8 currentSalt];

  v30 = BDSCloudKitSyncLog();
  v31 = v30;
  if (v6 || !v29)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1E4701ED8();
    }

    v35 = _Block_copy(*(a1 + 40));
    v34 = v35;
    if (v35)
    {
      (*(v35 + 2))(v35, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v8 currentSalt];
      v33 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412546;
      v46 = v32;
      v47 = 2112;
      v48 = v33;
      _os_log_impl(&dword_1E45E0000, v31, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: *** Got record salt:(%@) changeTag:(%@)", buf, 0x16u);
    }

    v34 = [v8 observer];
    [v34 saltManager:v8 updatedSaltWithVersion:*(*(*(a1 + 48) + 8) + 40)];
  }

  v36 = *MEMORY[0x1E69E9840];
}

void sub_1E45ED334(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained wq_invalidateSalt];
}

void sub_1E45ED4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E45ED4D0(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSalt];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_1E45ED674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E45ED68C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) _wq_saltedAndHashedIDFromLocalID:?];
    if (v3)
    {
      v4 = *(a1 + 48);
      if (!v4)
      {
        v4 = @"-";
      }

      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v4, v3];
    }

    else
    {
      v5 = 0;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
    if (v3)
    {
    }
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E4701F40(v2, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

void sub_1E45EDAF8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id BDSErrorFromUnderlyingError(void *a1, int a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E696AA08];
  v13[0] = a3;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = a1;
  v8 = [v5 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:v7 code:a2 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t sub_1E45EDC3C()
{
  qword_1EE2B04B8 = objc_alloc_init(BDSServiceProxy);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E45EE1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E45EE1CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained connectionDelegate];
  [v1 serviceDidRestart];
}

void sub_1E45EE224()
{
  v0 = BDSCloudKitLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E45E0000, v0, OS_LOG_TYPE_INFO, "The connection to service was interrupted.", v1, 2u);
  }
}

void sub_1E45EE28C(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_INFO, "The connection to service was invalidated.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setConnectionHealthy:0];
    [v4 scheduleRestart];
  }
}

void sub_1E45EE320(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1E470202C();
  }
}

void sub_1E45EE430(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = BDSCloudKitLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 134217984;
      v5 = 0x404E000000000000;
      _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_INFO, "Attempting to re-form connection to XPC service %f seconds after invalidation.", &v4, 0xCu);
    }

    [WeakRetained formXPCConnection];
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_1E45EE5A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSCloudKitLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E470202C();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_1E45EE6E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSCloudKitLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E470209C();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_1E45EEAA4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45EEC58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E470217C(a1);
  }
}

void sub_1E45EEDF8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45EF0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E45EF11C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E45EF134(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E45EF27C;
  v11[3] = &unk_1E8759870;
  v13 = *(a1 + 56);
  v5 = *(a1 + 40);
  v12 = *(a1 + 32);
  v6 = [v5 remoteObjectProxyWithErrorHandler:v11];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E45EF2E4;
  v7[3] = &unk_1E8759898;
  v8 = *(a1 + 48);
  v10 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
  v9 = *(a1 + 32);
  [v6 assetDetailsForAssetIDs:v4 completion:v7];
}

void sub_1E45EF27C(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45EF2E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v17 = a4;
  [v8 addObjectsFromArray:a2];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v11 = v7;

  v12 = *(*(a1 + 56) + 8);
  v15 = *(v12 + 40);
  v13 = (v12 + 40);
  v14 = v15;
  v16 = v17;
  if (v15)
  {
    v16 = v14;
  }

  objc_storeStrong(v13, v16);
  dispatch_group_leave(*(a1 + 40));
}

void sub_1E45EF39C(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40));
    v2 = v3;
  }
}

void sub_1E45EF53C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45EF698(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_1E45EF834(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45EF9CC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void sub_1E45EFB7C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0, v5, 0);
  }
}

void sub_1E45EFD48(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void sub_1E45F004C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1E45F007C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = [*(a1 + 40) bds_subDictionaryWithKeys:v4];

  v6 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E45F01D0;
  v12[3] = &unk_1E8759950;
  v14 = *(a1 + 56);
  v13 = *(a1 + 32);
  v7 = [v6 remoteObjectProxyWithErrorHandler:v12];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E45F0244;
  v8[3] = &unk_1E8759978;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v9 = *(a1 + 32);
  [v7 setAssetDetails:v5 completion:v8];
}

void sub_1E45F01D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F0244(uint64_t a1, char a2, char a3, void *a4)
{
  v8 = *(*(a1 + 40) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = a4;
  }

  objc_storeStrong(v9, v12);
  v13 = a4;
  *(*(*(a1 + 48) + 8) + 24) &= a2;
  *(*(*(a1 + 56) + 8) + 24) |= a3;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F02E4(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 40));
    v2 = v3;
  }
}

void sub_1E45F0478(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F060C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F0798(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F0A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1E45F0ABC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E45F0C04;
  v11[3] = &unk_1E8759870;
  v13 = *(a1 + 56);
  v5 = *(a1 + 40);
  v12 = *(a1 + 32);
  v6 = [v5 remoteObjectProxyWithErrorHandler:v11];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E45F0C6C;
  v7[3] = &unk_1E8759898;
  v8 = *(a1 + 48);
  v10 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
  v9 = *(a1 + 32);
  [v6 readingNowDetailsForAssetIDs:v4 completion:v7];
}

void sub_1E45F0C04(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F0C6C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v17 = a4;
  [v8 addObjectsFromArray:a2];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v11 = v7;

  v12 = *(*(a1 + 56) + 8);
  v15 = *(v12 + 40);
  v13 = (v12 + 40);
  v14 = v15;
  v16 = v17;
  if (v15)
  {
    v16 = v14;
  }

  objc_storeStrong(v13, v16);
  dispatch_group_leave(*(a1 + 40));
}

void sub_1E45F0D24(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40));
    v2 = v3;
  }
}

void sub_1E45F0E80(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_1E45F101C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F11C8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0, v5, 0);
  }
}

void sub_1E45F14D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1E45F1504(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = [*(a1 + 40) bds_subDictionaryWithKeys:v4];

  v6 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E45F1658;
  v12[3] = &unk_1E8759950;
  v14 = *(a1 + 56);
  v13 = *(a1 + 32);
  v7 = [v6 remoteObjectProxyWithErrorHandler:v12];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E45F16CC;
  v8[3] = &unk_1E8759978;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v9 = *(a1 + 32);
  [v7 setReadingNowDetails:v5 completion:v8];
}

void sub_1E45F1658(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F16CC(uint64_t a1, char a2, char a3, void *a4)
{
  v8 = *(*(a1 + 40) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = a4;
  }

  objc_storeStrong(v9, v12);
  v13 = a4;
  *(*(*(a1 + 48) + 8) + 24) &= a2;
  *(*(*(a1 + 56) + 8) + 24) |= a3;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F176C(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 40));
    v2 = v3;
  }
}

void sub_1E45F1900(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F1AA0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F1DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1E45F1DC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E45F1F0C;
  v11[3] = &unk_1E8759870;
  v13 = *(a1 + 56);
  v5 = *(a1 + 40);
  v12 = *(a1 + 32);
  v6 = [v5 remoteObjectProxyWithErrorHandler:v11];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E45F1F74;
  v7[3] = &unk_1E8759898;
  v8 = *(a1 + 48);
  v10 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
  v9 = *(a1 + 32);
  [v6 assetReviewsForAssetReviewIDs:v4 completion:v7];
}

void sub_1E45F1F0C(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F1F74(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v17 = a4;
  [v8 addObjectsFromArray:a2];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v11 = v7;

  v12 = *(*(a1 + 56) + 8);
  v15 = *(v12 + 40);
  v13 = (v12 + 40);
  v14 = v15;
  v16 = v17;
  if (v15)
  {
    v16 = v14;
  }

  objc_storeStrong(v13, v16);
  dispatch_group_leave(*(a1 + 40));
}

void sub_1E45F202C(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40));
    v2 = v3;
  }
}

void sub_1E45F21E8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F23A4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F2558(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void sub_1E45F2708(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0, v5, 0);
  }
}

void sub_1E45F28D4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void sub_1E45F2BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1E45F2C08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = [*(a1 + 40) bds_subDictionaryWithKeys:v4];

  v6 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E45F2D5C;
  v12[3] = &unk_1E8759950;
  v14 = *(a1 + 56);
  v13 = *(a1 + 32);
  v7 = [v6 remoteObjectProxyWithErrorHandler:v12];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E45F2DD0;
  v8[3] = &unk_1E8759978;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v9 = *(a1 + 32);
  [v7 setAssetReviews:v5 completion:v8];
}

void sub_1E45F2D5C(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F2DD0(uint64_t a1, char a2, char a3, void *a4)
{
  v8 = *(*(a1 + 40) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = a4;
  }

  objc_storeStrong(v9, v12);
  v13 = a4;
  *(*(*(a1 + 48) + 8) + 24) &= a2;
  *(*(*(a1 + 56) + 8) + 24) |= a3;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F2E70(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 40));
    v2 = v3;
  }
}

void sub_1E45F3038(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void sub_1E45F333C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1E45F336C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = [*(a1 + 40) bds_subDictionaryWithKeys:v4];

  v6 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E45F34C0;
  v12[3] = &unk_1E8759950;
  v14 = *(a1 + 56);
  v13 = *(a1 + 32);
  v7 = [v6 remoteObjectProxyWithErrorHandler:v12];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E45F3534;
  v8[3] = &unk_1E8759978;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v9 = *(a1 + 32);
  [v7 addStoreItems:v5 completion:v8];
}

void sub_1E45F34C0(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F3534(uint64_t a1, char a2, char a3, void *a4)
{
  v8 = *(*(a1 + 40) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = a4;
  }

  objc_storeStrong(v9, v12);
  v13 = a4;
  *(*(*(a1 + 48) + 8) + 24) &= a2;
  *(*(*(a1 + 56) + 8) + 24) |= a3;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F35D4(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 40));
    v2 = v3;
  }
}

void sub_1E45F3798(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F3954(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F3AEC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void sub_1E45F3C9C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0, v5, 0);
  }
}

void sub_1E45F3E48(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F3FE8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F42E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1E45F430C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E45F4454;
  v11[3] = &unk_1E8759870;
  v13 = *(a1 + 56);
  v5 = *(a1 + 40);
  v12 = *(a1 + 32);
  v6 = [v5 remoteObjectProxyWithErrorHandler:v11];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E45F44BC;
  v7[3] = &unk_1E8759898;
  v8 = *(a1 + 48);
  v10 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
  v9 = *(a1 + 32);
  [v6 assetReviewsForAssetReviewIDs:v4 completion:v7];
}

void sub_1E45F4454(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F44BC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v17 = a4;
  [v8 addObjectsFromArray:a2];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v11 = v7;

  v12 = *(*(a1 + 56) + 8);
  v15 = *(v12 + 40);
  v13 = (v12 + 40);
  v14 = v15;
  v16 = v17;
  if (v15)
  {
    v16 = v14;
  }

  objc_storeStrong(v13, v16);
  dispatch_group_leave(*(a1 + 40));
}

void sub_1E45F4574(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40));
    v2 = v3;
  }
}

void sub_1E45F46D0(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_1E45F4874(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F4A38(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F4BD0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void sub_1E45F4D80(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0, v5, 0);
  }
}

void sub_1E45F4F54(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void sub_1E45F5258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1E45F5288(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = [*(a1 + 40) bds_subDictionaryWithKeys:v4];

  v6 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E45F53DC;
  v12[3] = &unk_1E8759950;
  v14 = *(a1 + 56);
  v13 = *(a1 + 32);
  v7 = [v6 remoteObjectProxyWithErrorHandler:v12];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E45F5450;
  v8[3] = &unk_1E8759978;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v9 = *(a1 + 32);
  [v7 setCollectionDetails:v5 completion:v8];
}

void sub_1E45F53DC(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F5450(uint64_t a1, char a2, char a3, void *a4)
{
  v8 = *(*(a1 + 40) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = a4;
  }

  objc_storeStrong(v9, v12);
  v13 = a4;
  *(*(*(a1 + 48) + 8) + 24) &= a2;
  *(*(*(a1 + 56) + 8) + 24) |= a3;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F54F0(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 40));
    v2 = v3;
  }
}

void sub_1E45F5698(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F57F4(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_1E45F5998(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F5B5C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F5CF4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void sub_1E45F5E9C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void sub_1E45F604C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0, v5, 0);
  }
}

void sub_1E45F6220(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void sub_1E45F6524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1E45F6554(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = [*(a1 + 40) bds_subDictionaryWithKeys:v4];

  v6 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E45F66A8;
  v12[3] = &unk_1E8759950;
  v14 = *(a1 + 56);
  v13 = *(a1 + 32);
  v7 = [v6 remoteObjectProxyWithErrorHandler:v12];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E45F671C;
  v8[3] = &unk_1E8759978;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v9 = *(a1 + 32);
  [v7 setCollectionMembers:v5 completion:v8];
}

void sub_1E45F66A8(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F671C(uint64_t a1, char a2, char a3, void *a4)
{
  v8 = *(*(a1 + 40) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = a4;
  }

  objc_storeStrong(v9, v12);
  v13 = a4;
  *(*(*(a1 + 48) + 8) + 24) &= a2;
  *(*(*(a1 + 56) + 8) + 24) |= a3;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1E45F67BC(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 40));
    v2 = v3;
  }
}

void sub_1E45F6964(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F6AF0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F6CBC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_1E45F6E7C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_1E45F703C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_1E45F71D4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_1E45F735C(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v3 = v1;
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
    v3[2](v3, 0, v2);

    v1 = v3;
  }
}

void sub_1E45F74D4(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_1E45F7658(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void sub_1E45F7800(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void sub_1E45F79A4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F7B44(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F7DC4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

void sub_1E45F7F74(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0, v5, 0);
  }
}

void sub_1E45F8120(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F82C0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_1E45F8478(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_1E45F8638(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702238();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

void sub_1E45F8818(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E47022E4();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

void sub_1E45F8A08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702390();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

void sub_1E45F8BE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E470243C();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, 0, v3);
  }
}

void sub_1E45F8DD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E47024E8();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, 0, 0, v3, 0);
  }
}

void sub_1E45F8FC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702594();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, 0, v3);
  }
}

void sub_1E45F91A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702640();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, 0, v3);
  }
}

void sub_1E45F9374(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E47026EC();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_1E45F9538(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702798();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_1E45F96FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702844();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_1E45F98C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E47028F0();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_1E45F9A98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E470299C();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

void sub_1E45F9C94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702A48(a1);
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

void sub_1E45F9E64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702A48(a1);
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FA020(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702AF4(a1);
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FA20C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702AF4(a1);
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

void sub_1E45FA3F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702BA0(a1);
  }

  v5 = _Block_copy(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FA5D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702C6C(a1);
  }

  v5 = _Block_copy(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FA7B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702D18(a1);
  }

  v5 = _Block_copy(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FA9B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702C6C(a1);
  }

  v5 = _Block_copy(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_1E45FAB90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702DC4();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_1E45FAD68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702E70();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

void sub_1E45FAF34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702F1C(a1);
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FB100(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4702FC8(a1);
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FB2E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703074(a1);
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FB528(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703120();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_1E45FB738(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E47031CC(a1);
  }

  v5 = _Block_copy(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_1E45FB910(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703278(a1);
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

void sub_1E45FBAEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703324(a1);
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

void sub_1E45FBCA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E47033D0(a1);
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FBE68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E470347C(a1);
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FC014(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703528();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FC1BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E47035D4();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FC368(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703680();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

void sub_1E45FC514(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E470372C();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FC6BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E47037D8();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FC878(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703884();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FCA20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703930();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FCC64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E47039DC();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FCE58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703A88(a1);
  }

  v5 = _Block_copy(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1E45FD04C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703B54();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

void sub_1E45FD228(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703C00();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

void sub_1E45FD434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703D18();
  }

  v5 = _Block_copy(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_1E45FD62C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703D18();
  }

  v5 = _Block_copy(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_1E45FD820(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703D18();
  }

  v5 = _Block_copy(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

void sub_1E45FDA30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703D18();
  }

  v5 = _Block_copy(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_1E45FDC3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703D18();
  }

  v5 = _Block_copy(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_1E45FDE48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703DF8(a1);
  }

  v5 = _Block_copy(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

void sub_1E45FE02C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703EA4();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, 0, v3);
  }
}

void sub_1E45FE23C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703F50(a1);
  }

  v5 = _Block_copy(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

void sub_1E45FE3F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4703FFC();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

void sub_1E45FE5BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E47040A8();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

void sub_1E45FE788(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1E4704154();
  }

  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, v3);
  }
}

uint64_t sub_1E45FE994@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 48);
  v4 = *(result + 40);
  return result;
}

uint64_t sub_1E45FE9C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

uint64_t sub_1E45FE9E4(uint64_t a1)
{
  v2 = *(a1 + 32);

  return objc_opt_class();
}

uint64_t sub_1E45FE9FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  return result;
}

void sub_1E46002A8(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

id sub_1E460035C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v5, v6, 0}];
    v9 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v8];
  }

  else
  {
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    v9 = v10;
  }

  return v9;
}

uint64_t sub_1E460040C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [MEMORY[0x1E695D5B8] entityForName:v8 inManagedObjectContext:a1];

  [v9 setEntity:v10];
  [v9 setPredicate:v7];

  v15 = 0;
  v11 = [a1 countForFetchRequest:v9 error:&v15];
  v12 = v15;
  v13 = v12;
  if (v12)
  {
    [v12 logRecursively];
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1E46004F4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, int a8)
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  context = objc_autoreleasePoolPush();
  v18 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v19 = [MEMORY[0x1E695D5B8] entityForName:v15 inManagedObjectContext:a1];
  [v18 setEntity:v19];
  if ([v14 count] != 1)
  {
    goto LABEL_4;
  }

  [v14 objectAtIndex:0];
  v36 = v14;
  v20 = v19;
  v21 = v17;
  v22 = a1;
  v23 = a8;
  v24 = v16;
  v25 = v15;
  v27 = v26 = a7;
  v28 = [v27 isEqualToString:@"objectID"];

  a7 = v26;
  v15 = v25;
  v16 = v24;
  a8 = v23;
  a1 = v22;
  v17 = v21;
  v19 = v20;
  v14 = v36;
  if (v28)
  {
    [v18 setResultType:1];
  }

  else
  {
LABEL_4:
    [v18 setPropertiesToFetch:v14];
    [v18 setResultType:2];
    if (a8)
    {
      [v18 setReturnsDistinctResults:1];
    }
  }

  [v18 setPredicate:v16];
  if (v17)
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:v17 ascending:a7];
    v30 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v29, 0}];
    [v18 setSortDescriptors:v30];
  }

  v38 = 0;
  v31 = [a1 executeFetchRequest:v18 error:&v38];
  v32 = v38;
  v33 = v32;
  if (v32)
  {
    [v32 logRecursively];
  }

  objc_autoreleasePoolPop(context);
  v34 = [v31 copy];

  return v34;
}

uint64_t sub_1E4600734(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v12 = MEMORY[0x1E695DEC8];
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [v12 arrayWithObject:a3];
  v17 = [a1 copyEntityPropertiesArray:v16 fromEntityName:v15 withPredicate:v14 sortBy:v13 ascending:a7];

  return v17;
}

uint64_t sub_1E46007E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = [a1 copyEntityPropertyArray:a3 fromEntityName:a4 withPredicate:a5 sortBy:0 ascending:0];
  if ([v5 count] == 1 || objc_msgSend(v5, "count") >= 2)
  {
    v6 = [v5 lastObject];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 copy];

  return v7;
}

uint64_t sub_1E4600864(uint64_t a1, int a2, Class aClass)
{
  v4 = MEMORY[0x1E695D5B8];
  v5 = NSStringFromClass(aClass);
  v6 = [v4 insertNewObjectForEntityForName:v5 inManagedObjectContext:a1];

  return v6;
}

id sub_1E46008C4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v10 = [MEMORY[0x1E695D5B8] entityForName:v7 inManagedObjectContext:a1];
  [v9 setEntity:v10];

  [v9 setPredicate:v6];
  [v9 setResultType:1];
  [v9 setIncludesPropertyValues:0];
  v15 = 0;
  v11 = [a1 executeFetchRequest:v9 error:&v15];
  v12 = v15;
  v13 = v12;
  if (v12)
  {
    [v12 logRecursively];
  }

  objc_autoreleasePoolPop(v8);

  return v11;
}

id sub_1E46009D8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v10 = [MEMORY[0x1E695D5B8] entityForName:v7 inManagedObjectContext:a1];
  [v9 setEntity:v10];

  [v9 setPredicate:v6];
  [v9 setIncludesPropertyValues:1];
  v15 = 0;
  v11 = [a1 executeFetchRequest:v9 error:&v15];
  v12 = v15;
  v13 = v12;
  if (v12)
  {
    [v12 logRecursively];
  }

  objc_autoreleasePoolPop(v8);

  return v11;
}

id sub_1E4600AE0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, unint64_t a6, void *a7)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  v17 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v18 = [MEMORY[0x1E695D5B8] entityForName:v12 inManagedObjectContext:a1];
  [v17 setEntity:v18];

  [v17 setPredicate:v13];
  [v17 setSortDescriptors:v14];
  if ([v15 count])
  {
    [v17 setRelationshipKeyPathsForPrefetching:v15];
  }

  if (a6)
  {
    if (a6 <= 0xA)
    {
      [v17 setReturnsObjectsAsFaults:0];
    }

    [v17 setFetchLimit:a6];
  }

  else
  {
    [v17 setFetchBatchSize:100];
  }

  v23 = 0;
  v19 = [a1 executeFetchRequest:v17 error:&v23];
  v20 = v23;
  v21 = v20;
  if (v20)
  {
    [v20 logRecursively];
  }

  objc_autoreleasePoolPop(v16);

  return v19;
}

id sub_1E4600C68(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  if (a5)
  {
    v17 = MEMORY[0x1E696AEB0];
    v18 = a5;
    v19 = [[v17 alloc] initWithKey:v18 ascending:a6];

    v20 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v19, 0}];
  }

  else
  {
    v20 = 0;
  }

  v21 = [a1 entity:v14 withPredicate:v15 sortDescriptors:v20 fetchLimit:a7 prefetchRelationships:v16];

  return v21;
}

void sub_1E4600D94(void *a1, uint64_t a2, void *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a1 im_pushSafeAccessState];
  v4[2](v4);
  [a1 im_popSafeAccessState];

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4600E4C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1E4600F30);
}

void sub_1E4600E54(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v9 = objc_begin_catch(exc_buf);
      v10 = [v9 name];
      v11 = [v10 isEqualToString:*MEMORY[0x1E696A778]];

      if (v11)
      {
        v12 = BDSCloudKitLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LODWORD(a9) = 138412290;
          *(&a9 + 4) = v9;
          _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_INFO, "Handled Exception {%@}", &a9, 0xCu);
        }

        objc_end_catch();
        JUMPOUT(0x1E4600DE4);
      }

      objc_exception_throw(v9);
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x1E4600DE8);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1E4600F0C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1E4600F1CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1E4600F38(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [a1 unbatchedObjectsWithPredicate:v9 forEntity:v8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E4601088;
  v14[3] = &unk_1E8759C68;
  v13 = v12;
  v15 = v13;
  v16 = a1;
  v17 = &v18;
  [a1 im_performSafeAccess:v14];
  if (*(v19 + 6))
  {
    [a1 save:0];
  }

  _Block_object_dispose(&v18, 8);
  objc_autoreleasePoolPop(v11);
}

void sub_1E4601070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E4601088(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) deleteObject:{*(*(&v9 + 1) + 8 * v6), v9}];
        ++*(*(*(a1 + 48) + 8) + 24);
        v7 = *(*(a1 + 48) + 8);
        if (*(v7 + 24) == 100)
        {
          *(v7 + 24) = 0;
          [*(a1 + 40) save:0];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E46011B4(void *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [a1 persistentStores];
  v7 = [v6 valueForKey:@"URL"];
  v8 = [v4 setWithArray:v7];

  v9 = MEMORY[0x1E695DFD8];
  v10 = [v5 persistentStores];

  v11 = [v10 valueForKey:@"URL"];
  v12 = [v9 setWithArray:v11];

  v13 = [v8 intersectsSet:v12];
  return v13;
}

void sub_1E4601680(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] zoneDataManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E4601768;
  v9[3] = &unk_1E8759CB8;
  *&v4 = a1[5];
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 dissociateCloudDataFromSyncWithCompletion:v9];
}

void sub_1E4601768(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v18 = v7;
    v19 = 1024;
    v20 = a2;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 4. dissociateCloudDataFromSyncWithCompletion %{BOOL}d error%@", buf, 0x1Cu);
  }

  if (a2)
  {
    v8 = [*(a1 + 40) tokenController];
    v9 = *(a1 + 48);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E4601930;
    v14[3] = &unk_1E8759C90;
    v15 = *(a1 + 32);
    v16 = *(a1 + 56);
    [v8 updateSaltVersionIdentifier:v9 completion:v14];

    v10 = v15;
  }

  else
  {
    v11 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E47044A0(a1, v5, v11);
    }

    v12 = _Block_copy(*(a1 + 56));
    v10 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E4601930(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v11 = 138412802;
    v12 = v7;
    v13 = 1024;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 5a. updateSaltVersionIdentifier  %{BOOL}d error%@", &v11, 0x1Cu);
  }

  v8 = _Block_copy(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, a2);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E4601A30(id *a1, int a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    *buf = 138412802;
    v31 = v7;
    v32 = 1024;
    v33 = a2;
    v34 = 2112;
    v35 = v5;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 2. needsUpdate: %{BOOL}d error%@", buf, 0x1Cu);
  }

  if (v5)
  {
    if ([v5 code] == 1003)
    {
      v8 = [a1[5] zoneDataManager];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_1E4601D80;
      v26[3] = &unk_1E8759D08;
      v9 = a1[4];
      v10 = a1[7];
      *&v11 = v9;
      *(&v11 + 1) = a1[5];
      v25 = v11;
      *&v12 = a1[6];
      *(&v12 + 1) = v10;
      v27 = v25;
      v28 = v12;
      v29 = a1[8];
      [v8 hasSaltChangedWithCompletion:v26];

      goto LABEL_24;
    }

    v16 = [v5 code];
    v17 = BDSCloudKitSyncLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16 == 1006)
    {
      if (v18)
      {
        v19 = a1[4];
        *buf = 138412290;
        v31 = v19;
        _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 6b - saltIdentifierError ", buf, 0xCu);
      }

LABEL_14:
      (*(a1[7] + 2))();
      goto LABEL_24;
    }

    if (v18)
    {
      v21 = a1[4];
      *buf = 138412290;
      v31 = v21;
      _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - do nothing", buf, 0xCu);
    }
  }

  else
  {
    v13 = BDSCloudKitSyncLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v14)
      {
        v15 = a1[4];
        *buf = 138412290;
        v31 = v15;
        _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 3a.Need update. Calling dissociate", buf, 0xCu);
      }

      goto LABEL_14;
    }

    if (v14)
    {
      v20 = a1[4];
      *buf = 138412290;
      v31 = v20;
      _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 3b. No update needed. Calling completion.", buf, 0xCu);
    }
  }

  v22 = _Block_copy(a1[8]);
  v23 = v22;
  if (v22)
  {
    (*(v22 + 2))(v22, 1);
  }

LABEL_24:
  v24 = *MEMORY[0x1E69E9840];
}

void sub_1E4601D80(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = BDSCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v19 = v7;
    v20 = 1024;
    v21 = a2;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_ERROR, "[BDSSaltVersionIdentifierManager] hasSaltChangedWithCompletion. %@ %{BOOL}d, ERROR:%@", buf, 0x1Cu);
  }

  if (v5 || !a2)
  {
    if (v5 || (a2 & 1) != 0)
    {
      v10 = BDSCloudKitSyncLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 138412802;
        v19 = v11;
        v20 = 1024;
        v21 = a2;
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #hasSaltChangedWithCompletion - %@ - skip update %{BOOL}d error%@", buf, 0x1Cu);
      }

      v12 = _Block_copy(*(a1 + 64));
      v13 = v12;
      if (v12)
      {
        (*(v12 + 2))(v12, 1);
      }
    }

    else
    {
      v8 = [*(a1 + 40) tokenController];
      v9 = *(a1 + 48);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1E4601FA8;
      v15[3] = &unk_1E8759C90;
      v16 = *(a1 + 32);
      v17 = *(a1 + 64);
      [v8 updateSaltVersionIdentifier:v9 completion:v15];
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4601FA8(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v11 = 138412802;
    v12 = v7;
    v13 = 1024;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #hasSaltChangedWithCompletion - %@ - only update saltversionidentifier %{BOOL}d error%@", &v11, 0x1Cu);
  }

  v8 = _Block_copy(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, a2);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E4602264()
{
  qword_1EE2B04C0 = objc_alloc_init(BDSServiceProxy);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1E4602EE8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 valueForKey:v7];
  v9 = v8;
  if (v8 == v6 || ([v8 isEqual:v6] & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v11 = BUDynamicCast();
    [a1 setValue:v11 forKey:v7];

    v10 = 1;
  }

  return v10;
}

BOOL sub_1E4602FA0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 valueForKey:v7];
  if (v8 != v6)
  {
    [a1 setValue:v6 forKey:v7];
  }

  return v8 != v6;
}

uint64_t sub_1E4603020(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 setDifferentValue:v7 forKey:v6 klass:objc_opt_class()];

  return v8;
}

uint64_t sub_1E4603090(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 setDifferentValue:v7 forKey:v6 klass:objc_opt_class()];

  return v8;
}

uint64_t sub_1E4603100(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 setDifferentValue:v7 forKey:v6 klass:objc_opt_class()];

  return v8;
}

id sub_1E4603170(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [a1 valueForKey:{v11, v15}];
        if (v12)
        {
          [v5 setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t sub_1E46033F8()
{
  qword_1EE2B0508 = objc_alloc_init(BDSBookWidgetReadingHistoryDataFile);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E4603880()
{
  v0 = [MEMORY[0x1E698F540] books];
  v1 = [v0 containerURL];

  v2 = [v1 URLByAppendingPathComponent:@"Library/Application Support/bookdatastored" isDirectory:1];
  v3 = [v2 URLByAppendingPathComponent:@"currentWidgetReadingHistoryData.plist"];
  v4 = qword_1ECF75D60;
  qword_1ECF75D60 = v3;

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  v6 = [v5 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = BDSWidgetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704758();
    }
  }
}

uint64_t sub_1E4604118()
{
  qword_1EE2AEC00 = objc_alloc_init(BDSJaliscoDAAPClient);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E4604480(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setFamilyUpdateInProgress:0];
  v4 = _Block_copy(*(a1 + 40));
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, a2);
    v4 = v5;
  }
}

void sub_1E46045D0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  [*(a1 + 32) setFamilyUpdateInProgress:0];
  v5 = _Block_copy(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

id BDSCloudKitDevelopmentLog()
{
  if (qword_1ECF75D70 != -1)
  {
    sub_1E47048CC();
  }

  v1 = qword_1ECF75D68;

  return v1;
}

uint64_t sub_1E4605B58()
{
  qword_1ECF75D68 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.CloudKit.Development");

  return MEMORY[0x1EEE66BB8]();
}

id BDSPriceTrackingLog()
{
  if (qword_1ECF75D80 != -1)
  {
    sub_1E47048E0();
  }

  v1 = qword_1ECF75D78;

  return v1;
}

uint64_t sub_1E4605BE0()
{
  qword_1ECF75D78 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.PriceTracking");

  return MEMORY[0x1EEE66BB8]();
}

id BDSServiceCenterLog()
{
  if (qword_1ECF75D90 != -1)
  {
    sub_1E47048F4();
  }

  v1 = qword_1ECF75D88;

  return v1;
}

uint64_t sub_1E4605C68()
{
  qword_1ECF75D88 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.ServiceCenter");

  return MEMORY[0x1EEE66BB8]();
}

id BDSArtworkImporterLog()
{
  if (qword_1ECF75DA0 != -1)
  {
    sub_1E4704908();
  }

  v1 = qword_1ECF75D98;

  return v1;
}

uint64_t sub_1E4605CF0()
{
  qword_1ECF75D98 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.ArtworkImporter");

  return MEMORY[0x1EEE66BB8]();
}

id BDSCtlLog()
{
  if (qword_1ECF75DB0 != -1)
  {
    sub_1E470491C();
  }

  v1 = qword_1ECF75DA8;

  return v1;
}

uint64_t sub_1E4605D78()
{
  qword_1ECF75DA8 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.BDSCtl");

  return MEMORY[0x1EEE66BB8]();
}

id BDSWidgetLog()
{
  if (qword_1EE2AEC28 != -1)
  {
    sub_1E4704930();
  }

  v1 = qword_1ECF75DB8;

  return v1;
}

uint64_t sub_1E4605E00()
{
  qword_1ECF75DB8 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.Widget");

  return MEMORY[0x1EEE66BB8]();
}

id BDSUbiquityLog()
{
  if (qword_1EE2AEC30 != -1)
  {
    sub_1E4704944();
  }

  v1 = qword_1EE2AEC38;

  return v1;
}

uint64_t sub_1E4605E88()
{
  qword_1EE2AEC38 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.Ubiquity");

  return MEMORY[0x1EEE66BB8]();
}

id BDSMediaLibraryLog()
{
  if (qword_1ECF75DC8 != -1)
  {
    sub_1E4704958();
  }

  v1 = qword_1ECF75DC0;

  return v1;
}

uint64_t sub_1E4605F10()
{
  qword_1ECF75DC0 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.MediaLibrary");

  return MEMORY[0x1EEE66BB8]();
}

void *sub_1E460690C(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

void sub_1E46079E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = _Block_copy(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_1E4607B54(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

uint64_t BCAnnotationRangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___BCAnnotationRange__length;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___BCAnnotationRange__length;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    while (1)
    {
      v31 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v31 & 0x7F) << v22;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___BCAnnotationRange__location;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___BCAnnotationRange__location;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void sub_1E460B1E4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = +[BCCloudCollectionsManager sharedManager];
    v4 = [v3 collectionMemberManager];

    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E460B340;
    v16[3] = &unk_1E8759ED0;
    v17 = v6;
    v18 = *(a1 + 32);
    v19 = v4;
    v20 = *(a1 + 48);
    v7 = v4;
    [v5 _nextSortOrderForCollectionMemberManager:v7 collectionID:v17 completion:v16];
  }

  else
  {
    v8 = BDSServiceCenterLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E4705034(a1, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = _Block_copy(*(a1 + 48));
    v7 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0);
    }
  }
}

void sub_1E460B340(uint64_t a1, uint64_t a2)
{
  v4 = [BCCollectionMember collectionMemberIDWithCollectionID:*(a1 + 32) assetID:*(a1 + 40)];
  v5 = [[BCMutableCollectionMember alloc] initWithCollectionMemberID:v4];
  [(BCMutableCollectionMember *)v5 setSortOrder:a2];
  [(BCMutableCloudData *)v5 setDeletedFlag:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E460B428;
  v7[3] = &unk_1E8759EA8;
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v6 setCollectionMember:v5 completion:v7];
}

void sub_1E460B428(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = BDSServiceCenterLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E47050A4();
    }
  }

  v8 = _Block_copy(*(a1 + 32));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, a2);
  }
}

void sub_1E460B5A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BDSServiceCenterLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E470510C();
    }
  }

  if (v5)
  {
    v8 = [v5 deletedFlag] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = _Block_copy(*(a1 + 32));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v8);
  }
}

void sub_1E460B88C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = +[BCCloudAssetManager sharedManager];
    v4 = [v3 assetDetailManager];

    v5 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E460B9D0;
    v10[3] = &unk_1E8759F48;
    v6 = v5;
    v14 = *(a1 + 56);
    v11 = v6;
    v12 = v4;
    v13 = *(a1 + 48);
    v7 = v4;
    [v7 assetDetailsForAssetIDs:v6 completion:v10];
  }

  else
  {
    v8 = BDSServiceCenterLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E4705174(a1, v8);
    }

    v9 = _Block_copy(*(a1 + 48));
    v7 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

void sub_1E460B9D0(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 bu_arrayByRemovingNSNulls];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v12 assetID];
        [v5 setObject:v12 forKeyedSubscript:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = *(a1 + 32);
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * j);
        v20 = [v5 objectForKeyedSubscript:v19];
        if (!v20)
        {
          v20 = [[BCMutableAssetDetail alloc] initWithAssetID:v19];
          v21 = [MEMORY[0x1E695DF00] date];
          [(BCMutableAssetDetail *)v20 setDateFinished:v21];

          [v5 setObject:v20 forKeyedSubscript:v19];
        }

        if (*(a1 + 56) == 1)
        {
          [(BCMutableAssetDetail *)v20 setIsFinished:1];
          [(BCMutableAssetDetail *)v20 setNotFinished:0];
          v22 = [(BCMutableAssetDetail *)v20 dateFinished];

          if (!v22)
          {
            v23 = [(BCMutableAssetDetail *)v20 lastOpenDate];
            if (v23)
            {
              [(BCMutableAssetDetail *)v20 setDateFinished:v23];
            }

            else
            {
              v24 = [MEMORY[0x1E695DF00] date];
              [(BCMutableAssetDetail *)v20 setDateFinished:v24];
            }
          }
        }

        else
        {
          [(BCMutableAssetDetail *)v20 setIsFinished:0];
          [(BCMutableAssetDetail *)v20 setNotFinished:1];
          [(BCMutableAssetDetail *)v20 setDateFinished:0];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v16);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1E460BD2C;
  v27[3] = &unk_1E8759EA8;
  v25 = *(a1 + 40);
  v28 = *(a1 + 48);
  [v25 setAssetDetails:v5 completion:v27];

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E460BD2C(uint64_t a1, uint64_t a2)
{
  v3 = _Block_copy(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, a2);
    v3 = v4;
  }
}

void sub_1E460BE68(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = BDSServiceCenterLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1E470520C();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1E460D66C(uint64_t a1)
{
  v2 = [*(a1 + 32) transactions];
  v3 = [BCCloudKitDataChangedTransaction transactionNameForEntityName:*(a1 + 40)];
  v6 = [v2 objectForKey:v3];

  if (!v6)
  {
    v6 = [[BCCloudKitDataChangedTransaction alloc] initWithEntityName:*(a1 + 40) notificationName:*(a1 + 48) delegate:*(a1 + 32)];
    v4 = [*(a1 + 32) transactions];
    v5 = [(BCCloudKitTransaction *)v6 transactionName];
    [v4 setObject:v6 forKey:v5];
  }

  [(BCCloudKitTransaction *)v6 clientConnected];
  [(BCCloudKitTransaction *)v6 signal];
}

void sub_1E460D864(uint64_t a1)
{
  v2 = [*(a1 + 32) transactions];
  v3 = [BCCloudKitSyncToCKTransaction transactionNameForEntityName:*(a1 + 40)];
  v4 = [v2 objectForKey:v3];

  v5 = [(BCCloudKitTransaction *)v4 transactionName];
  v6 = v5;
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v4 = [[BCCloudKitSyncToCKTransaction alloc] initWithEntityName:*(a1 + 40) syncManager:*(a1 + 48) delegate:*(a1 + 32)];
    v7 = [(BCCloudKitTransaction *)v4 transactionName];

    v8 = [*(a1 + 32) transactions];
    [v8 setObject:v4 forKey:v7];

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = [*(a1 + 32) transactionCompletionCallbacks];
    [v10 setObject:v9 forKeyedSubscript:v7];

    v11 = BDSCloudKitLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1E4705458(v7, v11);
    }
  }

  if (*(a1 + 56))
  {
    v12 = BDSCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1E47054D0((a1 + 56), v7, v12);
    }

    v13 = [*(a1 + 32) transactionCompletionCallbacks];
    v14 = [v13 objectForKeyedSubscript:v7];
    v15 = _Block_copy(*(a1 + 56));
    [v14 addObject:v15];
  }

  [(BCCloudKitTransaction *)v4 clientConnected];
  [(BCCloudKitTransaction *)v4 signal];
}

void sub_1E460DB1C(uint64_t a1)
{
  v2 = [*(a1 + 32) transactions];
  v3 = [BCCloudKitFetchChangesTransaction transactionNameForEntityName:@"iBooks"];
  v8 = [v2 objectForKey:v3];

  if (!v8)
  {
    v4 = [BCCloudKitFetchChangesTransaction alloc];
    v5 = [*(a1 + 32) cloudKitController];
    v8 = [(BCCloudKitFetchChangesTransaction *)v4 initWithCloudKitController:v5 delegate:*(a1 + 32)];

    v6 = [*(a1 + 32) transactions];
    v7 = [(BCCloudKitTransaction *)v8 transactionName];
    [v6 setObject:v8 forKey:v7];
  }

  [(BCCloudKitTransaction *)v8 clientConnected];
  [(BCCloudKitTransaction *)v8 signal];
}

void sub_1E460DD44(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) transactionName];
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v2;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_DEFAULT, "[BCCloudKitTransactionManager] Transaction completed %@", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = a1;
  v4 = [*(a1 + 40) transactionCompletionCallbacks];
  v5 = [v4 objectForKeyedSubscript:v2];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = BDSCloudKitLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v14 = _Block_copy(v10);
          *buf = 138412546;
          v24 = v14;
          v25 = 2112;
          v26 = v2;
          _os_log_debug_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEBUG, "Calling block %@ for transaction %@ ", buf, 0x16u);
        }

        v12 = _Block_copy(v10);
        v13 = v12;
        if (v12)
        {
          (*(v12 + 2))(v12);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v15 = [*(v18 + 40) transactions];
  [v15 removeObjectForKey:v2];

  v16 = [*(v18 + 40) transactionCompletionCallbacks];
  [v16 removeObjectForKey:v2];

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E460E094(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [a1 userInfo];
  v3 = [a1 localizedDescription];
  v4 = [a1 localizedFailureReason];
  v5 = [a1 localizedRecoverySuggestion];
  v6 = [a1 localizedRecoveryOptions];
  NSLog(&cfstr_Nserror.isa, a1, v3, v4, v5, v6, v2);

  v7 = [v2 objectForKey:@"NSDetailedErrors"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count])
  {
    NSLog(&cfstr_SubErrors03lu.isa, [v7 count]);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v13 logRecursively];
          }

          else
          {
            NSLog(&cfstr_NotAnNserror.isa, v13);
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    NSLog(&stru_1F5E681F0.isa);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E460E5F8()
{
  qword_1ECF75DD0 = objc_alloc_init(BCCloudDataNullPrivacyDelegate);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t BCProtoAnnotationReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v93[0]) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v93[0] & 0x7F) << v6;
      if ((v93[0] & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v93[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v90 = [a2 data];
          [v90 getBytes:v93 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v87 = v93[0];
        v88 = 8;
        goto LABEL_171;
      case 2u:
        v19 = PBReaderReadString();
        v20 = 72;
        goto LABEL_120;
      case 3u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 204) |= 0x200u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v93[0] & 0x7F) << v36;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_139;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_139:
        v81 = 200;
        goto LABEL_152;
      case 4u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 204) |= 0x400u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v93[0] & 0x7F) << v53;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_145;
          }
        }

        v42 = (v55 != 0) & ~[a2 hasError];
LABEL_145:
        v81 = 201;
        goto LABEL_152;
      case 5u:
        v19 = PBReaderReadString();
        v20 = 96;
        goto LABEL_120;
      case 6u:
        v93[0] = 0;
        v45 = [a2 position] + 8;
        if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
        {
          v89 = [a2 data];
          [v89 getBytes:v93 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v87 = v93[0];
        v88 = 24;
        goto LABEL_171;
      case 7u:
        v19 = PBReaderReadString();
        v20 = 104;
        goto LABEL_120;
      case 8u:
        v19 = PBReaderReadString();
        v20 = 160;
        goto LABEL_120;
      case 9u:
        v19 = PBReaderReadString();
        v20 = 168;
        goto LABEL_120;
      case 0xAu:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 204) |= 0x80u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v93[0] & 0x7F) << v59;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_149;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v61;
        }

LABEL_149:
        v80 = 184;
        goto LABEL_157;
      case 0xBu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 204) |= 0x100u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v93[0] & 0x7F) << v28;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_137;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_137:
        v80 = 188;
        goto LABEL_157;
      case 0xCu:
        v19 = PBReaderReadString();
        v20 = 192;
        goto LABEL_120;
      case 0xDu:
        v19 = PBReaderReadString();
        v20 = 112;
        goto LABEL_120;
      case 0xEu:
        v19 = PBReaderReadString();
        v20 = 40;
        goto LABEL_120;
      case 0xFu:
        v19 = PBReaderReadString();
        v20 = 48;
        goto LABEL_120;
      case 0x10u:
        v19 = PBReaderReadString();
        v20 = 56;
        goto LABEL_120;
      case 0x11u:
        v19 = PBReaderReadString();
        v20 = 64;
        goto LABEL_120;
      case 0x12u:
        *(a1 + 204) |= 2u;
        v93[0] = 0;
        v65 = [a2 position] + 8;
        if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 8, v66 <= objc_msgSend(a2, "length")))
        {
          v91 = [a2 data];
          [v91 getBytes:v93 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v87 = v93[0];
        v88 = 32;
        goto LABEL_171;
      case 0x13u:
        v16 = objc_alloc_init(BCAnnotationRange);
        objc_storeStrong((a1 + 176), v16);
        v93[0] = 0;
        v93[1] = 0;
        if (PBReaderPlaceMark() && BCAnnotationRangeReadFrom(v16, a2))
        {
          PBReaderRecallMark();

LABEL_172:
          v4 = a2;
          continue;
        }

        return 0;
      case 0x14u:
        *(a1 + 204) |= 0x40u;
        LODWORD(v93[0]) = 0;
        v34 = [a2 position] + 4;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 4, v35 <= objc_msgSend(a2, "length")))
        {
          v85 = [a2 data];
          [v85 getBytes:v93 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v83 = v93[0];
        v84 = 156;
        goto LABEL_162;
      case 0x15u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 204) |= 0x800u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v93[0] & 0x7F) << v67;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_151;
          }
        }

        v42 = (v69 != 0) & ~[a2 hasError];
LABEL_151:
        v81 = 202;
LABEL_152:
        *(a1 + v81) = v42;
        goto LABEL_172;
      case 0x16u:
        *(a1 + 204) |= 0x20u;
        LODWORD(v93[0]) = 0;
        v17 = [a2 position] + 4;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
        {
          v82 = [a2 data];
          [v82 getBytes:v93 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v83 = v93[0];
        v84 = 152;
LABEL_162:
        *(a1 + v84) = v83;
        goto LABEL_172;
      case 0x17u:
        v19 = PBReaderReadString();
        v20 = 80;
        goto LABEL_120;
      case 0x18u:
        v19 = PBReaderReadString();
        v20 = 88;
        goto LABEL_120;
      case 0x1Au:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 204) |= 4u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v93[0] & 0x7F) << v47;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v12 = v48++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_143;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v49;
        }

LABEL_143:
        v80 = 120;
        goto LABEL_157;
      case 0x1Bu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 204) |= 8u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v93[0] & 0x7F) << v21;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_133;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_133:
        v80 = 124;
        goto LABEL_157;
      case 0x1Cu:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 204) |= 0x10u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v93[0] & 0x7F) << v74;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_156;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v76;
        }

LABEL_156:
        v80 = 128;
LABEL_157:
        *(a1 + v80) = v27;
        goto LABEL_172;
      case 0x1Du:
        v19 = PBReaderReadString();
        v20 = 136;
        goto LABEL_120;
      case 0x1Eu:
        v19 = PBReaderReadData();
        v20 = 144;
LABEL_120:
        v73 = *(a1 + v20);
        *(a1 + v20) = v19;

        goto LABEL_172;
      case 0x1Fu:
        *(a1 + 204) |= 1u;
        v93[0] = 0;
        v43 = [a2 position] + 8;
        if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
        {
          v86 = [a2 data];
          [v86 getBytes:v93 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v87 = v93[0];
        v88 = 16;
LABEL_171:
        *(a1 + v88) = v87;
        goto LABEL_172;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_172;
    }
  }
}

void sub_1E4613DE0()
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v3 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  v1 = [v0 copy];
  v2 = qword_1ECF75DE0;
  qword_1ECF75DE0 = v1;
}

void bc_turnProtoAnnotationIntoTombstone(void *a1)
{
  v1 = a1;
  [v1 setCreationDate:0.0];
  [v1 setDeleted:1];
  [v1 setIsUnderline:0];
  [v1 setHasIsUnderline:0];
  [v1 setLocationCFIString:0];
  [v1 setNote:0];
  [v1 setRepresentativeText:0];
  [v1 setSelectedText:0];
  [v1 setStyle:0];
  [v1 setHasStyle:0];
  [v1 setType:0];
  [v1 setHasType:0];
  [v1 setPhysicalPageNumber:0];
  [v1 setAnnotationVersion:0];
  [v1 setAssetVersion:0];
  [v1 setAttachments:0];
  [v1 setChapterTitle:0];
  [v1 setUserModificationDate:0.0];
  [v1 setHasUserModificationDate:0];
  [v1 setSelectedTextRange:0];
  [v1 setReadingProgressHighWaterMark:0.0];
  [v1 setHasReadingProgressHighWaterMark:0];
  [v1 setSpineIndexUpdated:0];
  [v1 setHasSpineIndexUpdated:0];
  [v1 setReadingProgress:0.0];
  [v1 setHasReadingProgress:0];
  [v1 setFutureProofing11:0];
  [v1 setFutureProofing12:0];
  [v1 setPlAbsolutePhysicalLocation:0];
  [v1 setHasPlAbsolutePhysicalLocation:0];
  [v1 setPlLocationRangeEnd:0];
  [v1 setHasPlLocationRangeEnd:0];
  [v1 setPlLocationRangeStart:0];
  [v1 setHasPlLocationRangeStart:0];
  [v1 setPlLocationStorageUUID:0];
  [v1 setPlUserData:0];
  [v1 setLocationModificationDate:0.0];
  [v1 setHasLocationModificationDate:0];
}

uint64_t sub_1E46157D8(void *a1)
{
  v1 = a1;
  v2 = [v1 uuid];
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [v1 creatorIdentifier];
  if (!v4)
  {

LABEL_11:
    goto LABEL_12;
  }

  v5 = v4;
  v6 = [v1 locationCFIString];
  if (![v6 length])
  {
    v7 = [v1 plUserData];
    if ([v7 length])
    {

      goto LABEL_6;
    }

    v11 = [v1 deleted];

    if (v11)
    {
      goto LABEL_7;
    }

LABEL_12:
    v8 = BDSCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E4705F8C();
    }

    goto LABEL_14;
  }

LABEL_6:

LABEL_7:
  if ([v1 type] != 3)
  {
    v9 = 1;
    goto LABEL_15;
  }

  v8 = BDSCloudKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1E4705F1C();
  }

LABEL_14:

  v9 = 0;
LABEL_15:

  return v9;
}

void BDSReportAssertionFailureWithMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = *MEMORY[0x1E69E9840];
  v13 = a5;
  if ([v13 length])
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v13 arguments:&a9];
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_5:
    v15 = [MEMORY[0x1E696AEC0] stringWithCString:a1 encoding:1];
    v16 = [v15 lastPathComponent];

    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = &stru_1F5E67610;
  if (a1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v16 = &stru_1F5E67610;
LABEL_7:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    *buf = 136316162;
    v20 = a4;
    v21 = 2080;
    v22 = a3;
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = v14;
    _os_log_error_impl(&dword_1E45E0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s in %s - %@:%@ %@", buf, 0x34u);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E4615CC8()
{
  qword_1EE2B04C8 = objc_alloc_init(BDSServiceProxy);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E4616A1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = _Block_copy(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_1E4616B90(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_1E4617330(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = _Block_copy(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_1E46174E0(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = _Block_copy(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_1E46177BC(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = _Block_copy(*(a1 + 32));
  if (v7)
  {
    v8 = [v6 value];
    v7[2](v7, v8, v9);
  }
}

void sub_1E4617920(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = _Block_copy(*(a1 + 32));
  if (v6)
  {
    v7 = [v8 value];
    v6[2](v6, v7, v5);
  }
}

void sub_1E4617AA0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    [(BCMutableGlobalMetadatum *)v3 setValue:*(a1 + 40)];
  }

  else
  {
    v4 = [[BCMutableGlobalMetadatum alloc] initWithKey:*(a1 + 32)];
    [(BCMutableGlobalMetadatum *)v4 setValue:*(a1 + 40)];
    [(BCMutableCloudData *)v4 setModificationDate:0];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E4617B80;
  v6[3] = &unk_1E8759EA8;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v5 setMetadatum:v4 completion:v6];
}

void sub_1E4617B80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v5 = _Block_copy(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

uint64_t sub_1E4617D34()
{
  qword_1EE2B04D0 = objc_alloc_init(BDSServiceProxy);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E46184B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == 4097 && (objc_msgSend(v3, "domain"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E696A250]), v4, (v5 & 1) != 0))
  {
    v6 = *(a1 + 56);
    v7 = BDSServiceLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    v9 = v6 <= 1;
    v10 = v6 - 1;
    if (!v9)
    {
      if (v8)
      {
        sub_1E4706158(v3, v10, v7);
      }

      sub_1E45E5280(*(a1 + 32), *(a1 + 48), *(a1 + 40), v10);
      goto LABEL_12;
    }

    if (v8)
    {
      sub_1E47061E0(v3, v7);
    }
  }

  else
  {
    v7 = BDSServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E47060E0(v3, v7);
    }
  }

  v11 = _Block_copy(*(a1 + 40));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v3);
  }

LABEL_12:
}

void sub_1E4619238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E4619250(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E4619268(uint64_t a1)
{
  v22 = +[BDSBookWidgetInfoMO fetchRequest];
  v2 = MEMORY[0x1E696AE18];
  v3 = [*(a1 + 32) assetID];
  v4 = [v2 predicateWithFormat:@"assetID == %@", v3];
  [v22 setPredicate:v4];

  [v22 setFetchLimit:1];
  v5 = [*(a1 + 40) executeFetchRequest:v22 error:0];
  v6 = [v5 firstObject];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = [[BDSBookWidgetInfoMO alloc] initWithContext:*(a1 + 40)];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = [*(a1 + 32) assetID];
  [*(*(*(a1 + 48) + 8) + 40) setAssetID:v12];

  v13 = *(*(*(a1 + 48) + 8) + 40);
  v14 = [*(a1 + 32) title];
  [v13 bl_setNonNilValue:v14 forKey:@"title"];

  v15 = *(*(*(a1 + 48) + 8) + 40);
  v16 = [*(a1 + 32) coverURL];
  [v15 bl_setNonNilValue:v16 forKey:@"coverURL"];

  v17 = *(*(*(a1 + 48) + 8) + 40);
  v18 = [*(a1 + 32) totalDuration];
  [v17 bl_setNonNilValue:v18 forKey:@"totalDuration"];

  v19 = [*(a1 + 32) pageProgressionDirection];
  [*(*(*(a1 + 48) + 8) + 40) setPageProgressionDirection:v19];

  v20 = [*(a1 + 32) cloudAssetType];
  [*(*(*(a1 + 48) + 8) + 40) setCloudAssetType:v20];

  v21 = [*(a1 + 32) libraryContentAssetType];
  [*(*(*(a1 + 48) + 8) + 40) setLibraryContentAssetType:v21];

  [*(*(*(a1 + 48) + 8) + 40) setIsExplicit:{objc_msgSend(*(a1 + 32), "isExplicit")}];
}

uint64_t sub_1E461951C()
{
  qword_1EE2B04D8 = objc_alloc_init(BDSServiceProxy);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E46198F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained performWorkWithCompletion:v3];
  }

  else
  {
    v5 = _Block_copy(v3);

    if (v5)
    {
      v5[2](v5);
    }

    v3 = v5;
  }
}

void sub_1E4619980(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "_coalescedNotification in %@ did not call notification within 10s.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4619B80(uint64_t a1)
{
  [*(a1 + 32) setClientCount:{objc_msgSend(*(a1 + 32), "clientCount") + 1}];
  v2 = [*(a1 + 32) transactionLifetime];

  if (v2)
  {
    v3 = [*(a1 + 32) transactionLifetime];
    dispatch_source_cancel(v3);
  }
}

void sub_1E4619D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4619DB0(uint64_t a1)
{
  v2 = [*(a1 + 32) lifecycleAccessQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E4619E60;
  v3[3] = &unk_1E875A178;
  objc_copyWeak(&v4, (a1 + 40));
  v3[4] = *(a1 + 32);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
}

void sub_1E4619E60(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E698F550] shared];
    v4 = [v3 verboseLoggingEnabled];

    if (v4)
    {
      v5 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) transactionName];
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "\\Transaction client decrementing for %@\\"", &v12, 0xCu);
      }
    }

    [WeakRetained setClientCount:{objc_msgSend(WeakRetained, "clientCount") - 1}];
    if (![WeakRetained clientCount])
    {
      v7 = [MEMORY[0x1E698F550] shared];
      v8 = [v7 verboseLoggingEnabled];

      if (v8)
      {
        v9 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [*(a1 + 32) transactionName];
          v12 = 138412290;
          v13 = v10;
          _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_DEFAULT, "\\Transaction clientCount 0 for %@\\"", &v12, 0xCu);
        }
      }

      [WeakRetained laq_scheduleTransactionLifetime];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E461A228(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698F550] shared];
  v3 = [v2 verboseLoggingEnabled];

  if (v3)
  {
    v4 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) transactionName];
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "\\Transaction Timer Completion fired for %@\\"", &v9, 0xCu);
    }
  }

  v6 = [*(a1 + 32) delegate];
  [v6 transactionCompleted:*(a1 + 32)];

  [*(a1 + 32) setDelegate:0];
  result = [*(a1 + 32) setTransactionLifetime:0];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E461A340(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698F550] shared];
  v3 = [v2 verboseLoggingEnabled];

  if (v3)
  {
    v4 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) transactionName];
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "\\Transaction Timer Cancel fired for %@\\"", &v8, 0xCu);
    }
  }

  result = [*(a1 + 32) setTransactionLifetime:0];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E461A9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E461A9F8(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = BDSCloudKitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [WeakRetained containerIdentifier];
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_INFO, "_coalescedArchive (%@)", buf, 0xCu);
    }

    v7 = [WeakRetained accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E461ABA4;
    block[3] = &unk_1E875A268;
    objc_copyWeak(&v14, (a1 + 40));
    v12 = *(a1 + 32);
    v13 = v3;
    dispatch_async(v7, block);

    objc_destroyWeak(&v14);
  }

  else
  {
    v8 = _Block_copy(v3);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E461ABA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = [WeakRetained p_archiveToData];
    [v2 writeToURL:*(a1 + 32) atomically:1];
  }

  v3 = _Block_copy(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }
}

void sub_1E461AC34(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "did not call completion after 10s in %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E461ACE0(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = BDSCloudKitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [WeakRetained containerIdentifier];
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_INFO, "_coalescedZoneFetch (%@)", buf, 0xCu);
    }

    v7 = [WeakRetained accessQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E461AE78;
    v11[3] = &unk_1E87596B0;
    objc_copyWeak(&v13, (a1 + 32));
    v12 = v3;
    dispatch_async(v7, v11);

    objc_destroyWeak(&v13);
  }

  else
  {
    v8 = _Block_copy(v3);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E461AE78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained database], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E461AF9C;
    v7[3] = &unk_1E875A2B8;
    v8 = v3;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = *(a1 + 32);
    [v8 p_fetchZoneChanges:v7];

    objc_destroyWeak(&v10);
  }

  else
  {
    v5 = _Block_copy(*(a1 + 32));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5);
    }
  }
}

void sub_1E461AF9C(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BDSCloudKitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1E470626C();
    }
  }

  v5 = [a1[4] accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E461B094;
  v6[3] = &unk_1E87596B0;
  objc_copyWeak(&v8, a1 + 6);
  v7 = a1[5];
  dispatch_async(v5, v6);

  objc_destroyWeak(&v8);
}

void sub_1E461B094(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained attachedToContainer] & 1) == 0 && objc_msgSend(v3, "fetchRecordZoneChangesSuccess"))
  {
    v4 = [v3 database];

    v5 = BDSCloudKitLog();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v3 containerIdentifier];
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - attached to container: %@", &v11, 0xCu);
      }

      [v3 setAttachedToContainer:1];
      [v3 p_informObserversOfAttachmentChange];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1E47062D4(v3);
      }
    }
  }

  v8 = _Block_copy(*(a1 + 32));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E461B1F4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1E4706360();
  }
}

void sub_1E461B468(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1E461B564;
    v5[3] = &unk_1E875A308;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = *(a1 + 32);
    [WeakRetained p_fetchDatabaseChanges:v5];

    objc_destroyWeak(&v7);
  }

  else
  {
    v3 = _Block_copy(*(a1 + 32));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void sub_1E461B564(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (!v3)
    {
      v11 = [WeakRetained accessQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1E461B6CC;
      v12[3] = &unk_1E87596B0;
      objc_copyWeak(&v14, (a1 + 40));
      v13 = *(a1 + 32);
      dispatch_async(v11, v12);

      objc_destroyWeak(&v14);
      goto LABEL_12;
    }

    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E47063C8(v5);
    }

    v7 = _Block_copy(*(a1 + 32));
    v8 = v7;
    if (v7)
    {
      v9 = v7[2];
LABEL_9:
      v9();
    }
  }

  else
  {
    v10 = _Block_copy(*(a1 + 32));
    v8 = v10;
    if (v10)
    {
      v9 = v10[2];
      goto LABEL_9;
    }
  }

LABEL_12:
}

void sub_1E461B6CC(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = BDSCloudKitLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [WeakRetained containerIdentifier];
      v5 = [WeakRetained changedRecordZoneIDs];
      v6 = [v5 allObjects];
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1E4628A28;
      v17 = &unk_1E875AAB0;
      v18 = v7;
      v8 = v7;
      [v6 enumerateObjectsUsingBlock:buf];
      v9 = [v8 componentsJoinedByString:{@", "}];

      *buf = 138543618;
      *&buf[4] = v4;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - signal coalescedZoneFetch in fetchChangesWithCompletion for changedRecordZoneIDs:%{public}@", buf, 0x16u);
    }

    v10 = [WeakRetained coalescedZoneFetch];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E461B918;
    v14[3] = &unk_1E875A2E0;
    v15 = *(a1 + 32);
    [v10 signalWithCompletion:v14];
  }

  else
  {
    v11 = _Block_copy(*(a1 + 32));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E461B918(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_1E461BA78(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained database];

  v4 = BDSCloudKitLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1E470646C(WeakRetained, v5);
    }

    v6 = [WeakRetained database];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E461BC2C;
    v13[3] = &unk_1E875A330;
    v7 = *(a1 + 32);
    v14 = *(a1 + 40);
    [v6 fetchRecordWithID:v7 completionHandler:v13];

    v8 = v14;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = [WeakRetained attachedToContainer];
      v10 = @"NO";
      if (v9)
      {
        v10 = @"YES";
      }

      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_INFO, "WARNING: BCCloudKitDatabaseController - fetchRecordForRecordID called without a database.  attached: %@", buf, 0xCu);
    }

    v11 = _Block_copy(*(a1 + 40));
    v8 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}