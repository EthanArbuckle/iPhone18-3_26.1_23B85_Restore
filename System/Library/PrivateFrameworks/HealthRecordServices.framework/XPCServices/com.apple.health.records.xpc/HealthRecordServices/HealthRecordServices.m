void sub_100000FD4(uint64_t a1)
{
  v2 = [*(a1 + 32) FHIRProcessor];
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [v2 processReferenceExtractionRequest:v3 error:&v6];
  v5 = v6;

  (*(*(a1 + 48) + 16))();
}

void sub_100001140(uint64_t a1)
{
  v2 = [*(a1 + 32) FHIRProcessor];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = 0;
  v5 = [v2 compareExistingPatientResourceData:v3 incomingPatientResourceData:v4 error:&v7];
  v6 = v7;

  (*(*(a1 + 56) + 16))();
}

void sub_10000128C(uint64_t a1)
{
  v2 = [*(a1 + 32) FHIRProcessor];
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [v2 processExtractionRequest:v3 error:&v6];
  v5 = v6;

  (*(*(a1 + 48) + 16))();
}

void sub_1000013D8(uint64_t a1)
{
  v2 = [*(a1 + 32) FHIRProcessor];
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [v2 extractAttachmentContentFromFHIRResource:v3 error:&v6];
  v5 = v6;

  (*(*(a1 + 48) + 16))();
}

void sub_100001544(uint64_t a1)
{
  v2 = [*(a1 + 32) FHIRProcessor];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = 0;
  v5 = [v2 processOptInRequest:v3 redactor:v4 error:&v7];
  v6 = v7;

  (*(*(a1 + 56) + 16))();
}

void sub_100001690(void *a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543362;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_preprocessSignedClinicalData starting", buf, 0xCu);
  }

  v7 = objc_alloc_init(HDHRSignedClinicalDataHandler);
  v8 = a1[5];
  v9 = a1[7];
  v18 = 0;
  v10 = [v7 preprocessDataInSource:v8 options:v9 error:&v18];
  v11 = v18;
  _HKInitializeLogging();
  v12 = HKLogHealthRecords;
  if (v10)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[4];
      v14 = v12;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138543362;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_preprocessSignedClinicalData finished successfully", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_100003040(a1, v12, v11, v17);
  }

  (*(a1[6] + 16))();
}

void sub_10000192C(void *a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543362;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_preprocessSignedClinicalDataFHIRResourceObject starting", buf, 0xCu);
  }

  v7 = objc_alloc_init(HDHRSignedClinicalDataHandler);
  v8 = a1[5];
  v9 = a1[7];
  v18 = 0;
  v10 = [v7 preprocessFHIRResourceObject:v8 options:v9 error:&v18];
  v11 = v18;
  _HKInitializeLogging();
  v12 = HKLogHealthRecords;
  if (v10)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[4];
      v14 = v12;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138543362;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_preprocessSignedClinicalDataFHIRResourceObject finished successfully", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_1000030D4(a1, v12, v11, v17);
  }

  (*(a1[6] + 16))();
}

void sub_100001BC8(void *a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543362;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_reprocessOriginalRecords starting", buf, 0xCu);
  }

  v7 = objc_alloc_init(HDHRSignedClinicalDataHandler);
  v8 = a1[5];
  v9 = a1[7];
  v18 = 0;
  v10 = [v7 reprocessOriginalRecords:v8 options:v9 error:&v18];
  v11 = v18;
  _HKInitializeLogging();
  v12 = HKLogHealthRecords;
  if (v10)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[4];
      v14 = v12;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138543362;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_reprocessOriginalRecords finished successfully", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_100003168(a1, v12, v11, v17);
  }

  (*(a1[6] + 16))();
}

void sub_100001E64(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_processOriginalSignedClinicalDataRecords starting", buf, 0xCu);
  }

  v7 = objc_alloc_init(HDHRSignedClinicalDataHandler);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001FC4;
  v10[3] = &unk_100008210;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v9 = *(a1 + 56);
  v11 = *(a1 + 48);
  [v7 processOriginalSignedClinicalDataRecords:v8 options:v9 completion:v10];
}

void sub_100001FC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (a2)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_processOriginalSignedClinicalDataRecords finished successfully", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_1000031FC(a1, v7, v5, v12);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000021C0(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_processSignedClinicalDataContextCollection starting", buf, 0xCu);
  }

  v7 = objc_alloc_init(HDHRSignedClinicalDataHandler);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000231C;
  v9[3] = &unk_100008210;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  [v7 processContextCollection:v8 completion:v9];
}

void sub_10000231C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (a2)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_processSignedClinicalDataContextCollection finished successfully", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_100003290(a1, v7, v5, v12);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100002518(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];
  v4 = [v3 substringFromIndex:24];

  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_indexClinicalDocumentsWithRequest %{public}@ starting", buf, 0x16u);
  }

  v10 = objc_alloc_init(HKClinicalDocumentIndexingRequestHandler);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000026CC;
  v13[3] = &unk_100008238;
  v11 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v4;
  v15 = *(a1 + 48);
  v12 = v4;
  [v10 indexClinicalDocumentsWithRequest:v11 completion:v13];
}

void sub_1000026CC(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = v7;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = a1[5];
    v13 = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_indexClinicalDocumentsWithRequest %{public}@ completed", &v13, 0x16u);
  }

  (*(a1[6] + 16))();
}

void sub_1000028B0(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_fetchSpotlightSearchResultsForQueryString starting", buf, 0xCu);
  }

  v7 = objc_alloc_init(HKClinicalDocumentIndexingRequestHandler);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002A0C;
  v9[3] = &unk_100008260;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  [v7 fetchSpotlightSearchResultsForQueryString:v8 completion:v9];
}

void sub_100002A0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = 138543362;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_fetchSpotlightSearchResultsForQueryString completed", &v12, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100002D04(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_100002D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);

  return _objc_retain_x1(a1, a2, a3, a4);
}

uint64_t sub_100002D3C()
{

  return objc_opt_class();
}

int main(int argc, const char **argv, const char **envp)
{
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = +[NSProcessInfo processInfo];
    v6 = [v5 processName];
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@ did launch", &v10, 0xCu);
  }

  v7 = +[HDXPCListener serviceListener];
  v8 = [[HDHealthRecordsXPCServiceManager alloc] initWithListener:v7];
  [(HDHealthRecordsXPCServiceManager *)v8 resume];

  return 0;
}

void sub_100002F48(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHealthRecordsXPCService.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

void sub_100002FC4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHealthRecordsXPCService.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

void sub_100003040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100002D24(a1, a2, a3, a4);
  v5 = sub_100002D3C();
  v6 = NSStringFromClass(v5);
  sub_100002CEC();
  sub_100002D04(&_mh_execute_header, v7, v8, "%{public}@: remote_preprocessSignedClinicalData failed with error: %{public}@", v9, v10, v11, v12, v13);
}

void sub_1000030D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100002D24(a1, a2, a3, a4);
  v5 = sub_100002D3C();
  v6 = NSStringFromClass(v5);
  sub_100002CEC();
  sub_100002D04(&_mh_execute_header, v7, v8, "%{public}@: remote_preprocessSignedClinicalDataFHIRResourceObject failed with error: %{public}@", v9, v10, v11, v12, v13);
}

void sub_100003168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100002D24(a1, a2, a3, a4);
  v5 = sub_100002D3C();
  v6 = NSStringFromClass(v5);
  sub_100002CEC();
  sub_100002D04(&_mh_execute_header, v7, v8, "%{public}@: remote_reprocessOriginalRecords failed with error: %{public}@", v9, v10, v11, v12, v13);
}

void sub_1000031FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100002D24(a1, a2, a3, a4);
  v5 = sub_100002D3C();
  v6 = NSStringFromClass(v5);
  sub_100002CEC();
  sub_100002D04(&_mh_execute_header, v7, v8, "%{public}@: remote_processOriginalSignedClinicalDataRecords failed with error: %{public}@", v9, v10, v11, v12, v13);
}

void sub_100003290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100002D24(a1, a2, a3, a4);
  v5 = sub_100002D3C();
  v6 = NSStringFromClass(v5);
  sub_100002CEC();
  sub_100002D04(&_mh_execute_header, v7, v8, "%{public}@: remote_processSignedClinicalDataContextCollection failed with error: %{public}@", v9, v10, v11, v12, v13);
}