int main(int argc, const char **argv, const char **envp)
{
  v3 = +[HDXPCListener serviceListener];
  v4 = [[HDHealthRecordsLegacyIngestionXPCServiceManager alloc] initWithListener:v3];
  [(HDHealthRecordsLegacyIngestionXPCServiceManager *)v4 resume];

  return 0;
}

void sub_1000029A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    [v5 _handleTaskCompletedWithData:a2 endState:a3];
  }

  else
  {
    [v5 _handleTaskError:a4 retryCount:*(a1 + 40) endState:a3];
  }

  v6 = [*(a1 + 32) fetchGroup];
  dispatch_group_leave(v6);
}

void sub_100003314(id a1)
{
  v1 = objc_alloc_init(NSISO8601DateFormatter);
  v2 = qword_10001EF70;
  qword_10001EF70 = v1;

  [qword_10001EF70 setFormatOptions:275];
  v3 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [qword_10001EF70 setTimeZone:v3];
}

void sub_100003404(id a1)
{
  v1 = objc_alloc_init(NSISO8601DateFormatter);
  v2 = qword_10001EF80;
  qword_10001EF80 = v1;

  [qword_10001EF80 setFormatOptions:1907];
  v3 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [qword_10001EF80 setTimeZone:v3];
}

void sub_1000035B8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100003A8C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, v2);
}

void sub_100003C20(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003CD8;
  block[3] = &unk_100018588;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t sub_1000040A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000049E8(uint64_t a1)
{
  v1 = [&off_1000198F8 objectForKeyedSubscript:a1];
  v2 = v1;
  v3 = &off_1000197F8;
  if (v1)
  {
    v3 = v1;
  }

  v4 = v3;

  v5 = [v4 integerValue];
  return v5;
}

id sub_1000062D4(uint64_t a1)
{
  v1 = [&off_100019920 objectForKeyedSubscript:a1];
  v2 = v1;
  v3 = &off_100019858;
  if (v1)
  {
    v3 = v1;
  }

  v4 = v3;

  v5 = [v4 integerValue];
  return v5;
}

void sub_1000077A8(void *a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = v4;
    v7 = [v5 logPrefix];
    v8 = a1[5];
    v9 = 138543874;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ execution of %{public}@ resulted in %{public}@", &v9, 0x20u);
  }

  (*(a1[6] + 16))();
}

void sub_100007B08(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v28 = a3;
  v8 = a2;
  _HKInitializeLogging();
  v9 = HKLogHealthRecords;
  v10 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = v9;
      v13 = [v11 logPrefix];
      v14 = *(a1 + 40);
      *buf = 138543618;
      v30 = v13;
      v31 = 2114;
      v32 = v14;
      v15 = "%{public}@ successfully finished fetching access token for %{public}@";
      v16 = v12;
      v17 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    }
  }

  else if (v10)
  {
    v18 = *(a1 + 32);
    v12 = v9;
    v13 = [v18 logPrefix];
    v19 = *(a1 + 40);
    *buf = 138543874;
    v30 = v13;
    v31 = 2114;
    v32 = v19;
    v33 = 2114;
    v34 = v7;
    v15 = "%{public}@ failed to fetch access token for %{public}@: %{public}@";
    v16 = v12;
    v17 = 32;
    goto LABEL_6;
  }

  v20 = [HKFHIRCredential alloc];
  v21 = [v8 accessToken];
  v22 = [v8 refreshToken];
  v23 = [v8 patientID];
  v24 = [v8 expiration];
  v25 = [*(a1 + 40) requestedScope];
  v26 = [v8 scope];

  v27 = [v20 initWithAccessToken:v21 refreshToken:v22 patientID:v23 expiration:v24 requestedScopeString:v25 scopeString:v26];
  (*(*(a1 + 48) + 16))();
}

void sub_100007F24(uint64_t a1, void *a2)
{
  v3 = [a2 asRefreshResultWithEndStates:0];
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 logPrefix];
    v8 = [*(a1 + 40) accountIdentifier];
    v9 = [v3 debugDescription];
    v10 = HKSensitiveLogItem();
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ done with fetchOrRefreshCredential for account %{public}@ with result %{public}@", &v11, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100008184(id a1, HDFHIRCredentialResult *a2, HKFHIRRequestTaskEndStates *a3)
{
  v3 = a2;
  v4 = [(HDFHIRCredentialResult *)v3 assembleUpdatedCredential];
  [(HDFHIRCredentialResult *)v3 didRefreshCredential:v4];
}

void sub_100008510(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100008814(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [[HKFHIRRequestTaskEndStates alloc] initWithEndState:v8];

  v11 = [[HKFHIRCredentialRefreshResult alloc] initWithCredential:*(a1 + 32) authResponse:v9 endStates:v10 error:v7];
  os_unfair_lock_lock((*(a1 + 40) + 24));
  [*(a1 + 40) setRefreshResult:v11];
  os_unfair_lock_unlock((*(a1 + 40) + 24));
  _HKInitializeLogging();
  v12 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    v14 = v12;
    v15 = objc_opt_class();
    v16 = v15;
    v17 = [v11 debugDescription];
    v18 = HKSensitiveLogItem();
    v19 = 138543618;
    v20 = v15;
    v21 = 2114;
    v22 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ completed refresh token task with %{public}@", &v19, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100008B24(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setCredentialResult:v3];
  v4 = [v3 refreshError];
  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v8 = 0;
    v6 = [v5 createURLRequestWithCredentialResult:v3 error:&v8];
    v7 = v8;
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100009864(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = v5;
  if (v17)
  {
    [*(a1 + 32) startTaskWithRequest:v17 completion:*(a1 + 40)];
  }

  else
  {
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [NSError hk_error:7 description:@"Unable to create a URL request for a mysterious reason"];
    }

    v8 = v7;
    v9 = [0 URL];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = [*(*(a1 + 32) + 24) specification];
      v13 = [v12 connection];
      v14 = [v13 gateway];
      v11 = [v14 baseURL];
    }

    v15 = [*(a1 + 32) resourceType];
    v16 = +[HKFHIRRequestTaskEndState endStateForCanceledRequestAtURL:resourceType:interactionType:](HKFHIRRequestTaskEndState, "endStateForCanceledRequestAtURL:resourceType:interactionType:", v11, v15, [*(a1 + 32) interactionType]);

    [*(a1 + 32) handleError:v8 endState:v16];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100009B5C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_10000C44C(a1);
    }
  }

  v10 = +[NSDate now];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = v8;
  _HKInitializeLogging();
  v14 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v15 = v14;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v33 = *(a1 + 32);
      v46 = objc_opt_class();
      log = [*(a1 + 40) HTTPMethod];
      v42 = [*(a1 + 40) URL];
      v40 = [v42 absoluteString];
      v34 = HKSensitiveLogItem();
      if (v9)
      {
        v35 = "error";
      }

      else
      {
        v35 = "response";
      }

      v36 = v9;
      if (!v9)
      {
        v37 = v34;
        v36 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 statusCode]);
        v34 = v37;
      }

      *buf = 138544386;
      v48 = v46;
      v49 = 2114;
      v50 = log;
      v51 = 2112;
      v52 = v34;
      v53 = 2080;
      v54 = v35;
      v55 = 2114;
      v56 = v36;
      v38 = v34;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}@ completed for %{public}@ %@ with %s: %{public}@", buf, 0x34u);
      if (!v9)
      {
      }
    }
  }

  v16 = [HKFHIRRequestTaskEndState alloc];
  v17 = [*(a1 + 40) URL];
  v18 = [*(a1 + 32) resourceType];
  v19 = [v16 initWithRequestedURL:v17 resourceType:v18 interactionType:objc_msgSend(*(a1 + 32) responseStatusCode:"interactionType") requestEndTime:objc_msgSend(v13 requestDuration:"statusCode") hadError:v10 errorCode:{0, v12 - *(a1 + 64), 0}];

  if (v8)
  {
    v20 = [*(a1 + 32) _errorForRequest:*(a1 + 40) response:v13 data:v7];
    if (v20)
    {
      v21 = v20;
      _HKInitializeLogging();
      v22 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        loga = v22;
        v24 = objc_opt_class();
        v25 = *(a1 + 40);
        v45 = v24;
        v41 = [v25 URL];
        v39 = [v41 absoluteString];
        v26 = HKSensitiveLogItem();
        v27 = [v21 hrs_safelyLoggableDescription];
        *buf = 138543874;
        v48 = v24;
        v49 = 2112;
        v50 = v26;
        v51 = 2112;
        v52 = v27;
        _os_log_error_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "%{public}@ response for request %@: %@", buf, 0x20u);
      }

      goto LABEL_12;
    }

    v31 = *(a1 + 32);
    if (v7)
    {
      [*(a1 + 32) _handleResponse:v13 data:v7 endState:v19];
    }

    else
    {
      v32 = +[NSData data];
      [v31 _handleResponse:v13 data:v32 endState:v19];
    }

    v21 = 0;
  }

  else
  {
    v21 = v9;
    if (v21)
    {
LABEL_12:
      v28 = [v21 hk_OAuth2_errorCode];
      v29 = *(a1 + 32);
      v30 = [v19 asErrorEndStateWithErrorCode:v28];
      [v29 _handleError:v21 endState:v30];
    }
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t sub_10000A3C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A4C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    sub_10000C5AC(a1, (a1 + 32), &v3);
    v2 = v3;
  }

  objc_storeStrong((v2 + 32), *(a1 + 40));
}

uint64_t sub_10000A574()
{

  return NSRequestConcreteImplementation();
}

void sub_10000B404(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRSpecification.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"connection.gateway.type == HKClinicalGatewayTypeFHIR"}];
}

void sub_10000B480(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 logDescription];
  sub_1000035B8(&_mh_execute_header, v5, v6, "%{public}@ starting to download", v7, v8, v9, v10, 2u);
}

void sub_10000B518(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 logDescription];
  sub_1000035B8(&_mh_execute_header, v5, v6, "%{public}@ finished downloading", v7, v8, v9, v10, 2u);
}

void sub_10000B5B0()
{
  sub_1000035AC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000035A0();
  [v0 handleFailureInMethod:@"retryCount >= 0" object:? file:? lineNumber:? description:?];
}

void sub_10000B624(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 logDescription];
  v7 = 138543618;
  v8 = v6;
  v9 = 2048;
  v10 = a3;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}@ fetching with %zd retry(ies) remaining", &v7, 0x16u);
}

void sub_10000B6E4()
{
  sub_1000035AC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000035A0();
  [v0 handleFailureInMethod:@"error" object:? file:? lineNumber:? description:?];
}

void sub_10000B758()
{
  sub_1000035AC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000035A0();
  [v0 handleFailureInMethod:@"error" object:? file:? lineNumber:? description:?];
}

id sub_10000B7CC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HDFHIRResourceDownloadOperation.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"retryCount >= 0"}];

  return [a2 consumeEndState:a3];
}

void sub_10000B860(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 logDescription];
  v7 = [a3 hrs_safelyLoggableDescription];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ fetching failed with error: %{public}@", &v8, 0x16u);
}

void sub_10000B934()
{
  sub_1000035AC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000035A0();
  [v0 handleFailureInMethod:@"resourceBundleData != nil" object:? file:? lineNumber:? description:?];
}

void sub_10000B9A8()
{
  sub_1000035AC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000035A0();
  [v0 handleFailureInMethod:@"error != nil" object:? file:? lineNumber:? description:?];
}

void sub_10000BA1C()
{
  sub_1000035AC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000035A0();
  [v0 handleFailureInMethod:@"endState" object:? file:? lineNumber:? description:?];
}

void sub_10000BAB8()
{
  sub_1000035AC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000035A0();
  [v0 handleFailureInMethod:@"![self _queue_hasInFlightRefreshTask]" object:? file:? lineNumber:? description:?];
}

void sub_10000BB2C()
{
  sub_1000035AC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000035A0();
  [v0 handleFailureInMethod:@"_strongDelegate != nil" object:? file:? lineNumber:? description:?];
}

void sub_10000BBA0()
{
  sub_1000035AC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000035A0();
  [v0 handleFailureInMethod:@"refreshResult.error != nil" object:? file:? lineNumber:? description:?];
}

void sub_10000BC14()
{
  sub_1000035AC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000035A0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10000BC80(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"HDFHIRCredentialVendor.m" lineNumber:207 description:@"overrelease"];

  *a4 = *a3;
}

void sub_10000BCFC()
{
  sub_1000035AC();
  v4 = +[NSAssertionHandler currentHandler];
  v1 = NSStringFromSelector(v0);
  v3 = objc_opt_class();
  sub_1000035A0();
  [v2 handleFailureInMethod:v1 object:v3 file:? lineNumber:? description:?];
}

void sub_10000BD94()
{
  sub_1000035AC();
  v4 = +[NSAssertionHandler currentHandler];
  v1 = NSStringFromSelector(v0);
  v3 = objc_opt_class();
  sub_1000035A0();
  [v2 handleFailureInMethod:v1 object:v3 file:? lineNumber:? description:?];
}

void sub_10000BE68(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHealthRecordsLegacyIngestionManager.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}

void sub_10000BEE0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 logPrefix];
  sub_1000084F8();
  sub_100008510(&_mh_execute_header, v5, v6, "%{public}@ failed to instantiate download operation. Error: %{public}@", v7, v8, v9, v10, v11);
}

void sub_10000BF80(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 logPrefix];
  sub_1000084F8();
  sub_100008510(&_mh_execute_header, v5, v6, "%{public}@ failed to init FHIR specification: %{public}@", v7, v8, v9, v10, v11);
}

void sub_10000C020(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRCredentialedSession.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"credentialVendor.delegate == nil"}];
}

void sub_10000C0D4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRRefreshTokenTask.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}

uint64_t sub_10000C23C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HDFHIRRequestTask.m" lineNumber:56 description:@"Do not call resume twice"];

  return *a3 & 1;
}

void sub_10000C2AC()
{
  sub_1000035AC();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HDFHIRRequestTask.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"request"}];
}

void sub_10000C324(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = v5;
  v7 = [a3 HTTPMethod];
  v8 = [a3 URL];
  v9 = [v8 absoluteString];
  v10 = HKSensitiveLogItem();
  v11 = 138543874;
  v12 = v5;
  v13 = 2114;
  v14 = v7;
  v15 = 2112;
  v16 = v10;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}@ starting with request %{public}@ %@", &v11, 0x20u);
}

void sub_10000C44C(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"HDFHIRRequestTask.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"response == nil || (response != nil && [response isKindOfClass:[NSHTTPURLResponse class]])"}];
}

void sub_10000C4C4()
{
  sub_1000035AC();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HDFHIRRequestTask.m" lineNumber:194 description:@"Credential result must be set before task start"];
}

void sub_10000C534()
{
  sub_1000035AC();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HDFHIRRequestTask.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"credentialResult != nil"}];
}

void sub_10000C5AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = NSStringFromSelector(v7);
  [v6 handleFailureInMethod:v7 object:v8 file:@"HDFHIRRequestTask.m" lineNumber:225 description:{@"%@ may be called at most once", v9}];

  *a3 = *a2;
}

void sub_10000C650(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRResourceRequestTask.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}

void sub_10000C6CC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRResourceQueryTask.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}

void sub_10000C748(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRAccessTokenTask.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}