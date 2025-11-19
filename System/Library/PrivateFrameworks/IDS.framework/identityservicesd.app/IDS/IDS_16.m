void sub_1004D5F9C(uint64_t a1, ...)
{
  va_start(va, a1);

  sub_1009222E8(v1, va);
}

void sub_1004D5FC4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1004D60BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1004D62A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1004D62C0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100CBD5D0;
  v7 = qword_100CBD5D0;
  if (!qword_100CBD5D0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1004D7820;
    v3[3] = &unk_100BD7928;
    v3[4] = &v4;
    sub_1004D7820(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1004D6388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1004D6960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

id sub_1004D69A8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100CBD5E0;
  v7 = qword_100CBD5E0;
  if (!qword_100CBD5E0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1004D78D0;
    v3[3] = &unk_100BD7928;
    v3[4] = &v4;
    sub_1004D78D0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1004D6A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1004D6A88()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_100CBD5E8;
  v7 = qword_100CBD5E8;
  if (!qword_100CBD5E8)
  {
    v1 = sub_1004D76C4();
    v5[3] = dlsym(v1, "CNContactEmailAddressesKey");
    qword_100CBD5E8 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_100923650();
  }

  v2 = *v0;

  return v2;
}

void sub_1004D6B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1004D6B8C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_100CBD5F0;
  v7 = qword_100CBD5F0;
  if (!qword_100CBD5F0)
  {
    v1 = sub_1004D76C4();
    v5[3] = dlsym(v1, "CNContactPhoneNumbersKey");
    qword_100CBD5F0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_1009236C8();
  }

  v2 = *v0;

  return v2;
}

void sub_1004D6C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1004D6C90()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_100CBD608;
  v7 = qword_100CBD608;
  if (!qword_100CBD608)
  {
    v1 = sub_1004D76C4();
    v5[3] = dlsym(v1, "CNContactTypeKey");
    qword_100CBD608 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_100923740();
  }

  v2 = *v0;

  return v2;
}

void sub_1004D6D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1004D6D94()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100CBD610;
  v7 = qword_100CBD610;
  if (!qword_100CBD610)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1004D7AB8;
    v3[3] = &unk_100BD7928;
    v3[4] = &v4;
    sub_1004D7AB8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1004D6E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D6E74(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = a2;
  v7 = [v17 contactType];
  v8 = v17;
  if (!v7)
  {
    v9 = [v17 givenName];
    v10 = [v9 length];
    v11 = v17;
    v12 = v10;
    if (!v10)
    {
      v3 = [v17 familyName];
      if (![v3 length])
      {

        v8 = v17;
        goto LABEL_13;
      }

      v11 = v17;
    }

    v13 = [v11 emailAddresses];
    if ([v13 count])
    {

      if (!v12)
      {
      }

LABEL_12:
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v8 = v17;
      *a3 = 1;
      goto LABEL_13;
    }

    v14 = [v17 phoneNumbers];
    v15 = [v14 count];

    if (!v12)
    {
    }

    v8 = v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

LABEL_13:

  return _objc_release_x1(v7, v8);
}

void sub_1004D72C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1004D72F4(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 emailAddresses];
  if ([v6 count])
  {
  }

  else
  {
    v7 = [v9 phoneNumbers];
    v8 = [v7 count];

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  *a3 = 1;
LABEL_5:
}

void sub_1004D757C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1004D75A8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (![v5 contactType])
  {
    v3 = [v5 emailAddresses];
    *(*(*(a1 + 32) + 8) + 24) += [v3 count];

    v4 = [v5 phoneNumbers];
    *(*(*(a1 + 32) + 8) + 24) += [v4 count];
  }
}

Class sub_1004D766C(uint64_t a1)
{
  sub_1004D76C4();
  result = objc_getClass("CNContactStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1009237B8();
  }

  qword_100CBD5C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1004D76C4()
{
  v2[0] = 0;
  if (!qword_100CBD5C8)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_1004D77B4;
    v2[4] = &unk_100BD75B8;
    v2[5] = v2;
    v2[7] = 0;
    v2[8] = 0;
    v2[6] = "/System/Library/Frameworks/Contacts.framework/Contacts";
    qword_100CBD5C8 = _sl_dlopen();
  }

  v0 = qword_100CBD5C8;
  if (!qword_100CBD5C8)
  {
    sub_100923834(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_1004D77B4()
{
  result = _sl_dlopen();
  qword_100CBD5C8 = result;
  return result;
}

Class sub_1004D7820(uint64_t a1)
{
  sub_1004D76C4();
  result = objc_getClass("CNContact");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1009238B4();
  }

  qword_100CBD5D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1004D7878(uint64_t a1)
{
  sub_1004D76C4();
  result = objc_getClass("CNPhoneNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100923930();
  }

  qword_100CBD5D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1004D78D0(uint64_t a1)
{
  sub_1004D76C4();
  result = objc_getClass("CNContactFormatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1009239AC();
  }

  qword_100CBD5E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1004D7928(uint64_t a1)
{
  v2 = sub_1004D76C4();
  result = dlsym(v2, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100CBD5E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1004D7978(uint64_t a1)
{
  v2 = sub_1004D76C4();
  result = dlsym(v2, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100CBD5F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1004D79C8(uint64_t a1)
{
  v2 = sub_1004D76C4();
  result = dlsym(v2, "CNContactGivenNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100CBD5F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1004D7A18(uint64_t a1)
{
  v2 = sub_1004D76C4();
  result = dlsym(v2, "CNContactFamilyNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100CBD600 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1004D7A68(uint64_t a1)
{
  v2 = sub_1004D76C4();
  result = dlsym(v2, "CNContactTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100CBD608 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1004D7AB8(uint64_t a1)
{
  sub_1004D76C4();
  result = objc_getClass("CNContactFetchRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100923A28();
  }

  qword_100CBD610 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1004D7F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1004D7F88(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 keyIndex];
  v7 = [v6 UUIDString];
  LODWORD(v5) = [v5 isEqualToString:v7];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_1004D9300(id a1)
{
  byte_100CBD618 = sub_100003BE4(kIDSRegistrationEntitlement);
  byte_100CBD619 = sub_100003BE4(kIDSSessionEntitlement);
  byte_100CBD61A = sub_100003BE4(kIDSMessagingEntitlement);
}

void sub_1004D9648(id a1, NSArray *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ACMonitoredAccountStore registration found accounts: %@ with error: %@", &v7, 0x16u);
  }
}

void sub_1004D9720(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = @"networking.st.text-911";
  v3[1] = @"networking.st.find-my";
  v3[2] = @"networking.st.roadside";
  v3[3] = @"networking.st.imessage-lite";
  v3[4] = @"networking.st.sms";
  v2 = [NSArray arrayWithObjects:v3 count:5];
  [v1 requestAccessTokensForFeatures:v2];
}

void sub_1004D9C78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) mainQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1004D9D64;
  v11[3] = &unk_100BD7020;
  v12 = v5;
  v13 = v6;
  v8 = *(a1 + 48);
  v14 = *(a1 + 40);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

id sub_1004D9D64(uint64_t a1)
{
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v6 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) accessToken];
      v8 = *(a1 + 48);
      v9 = 138478083;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received cloud feature access token %{private}@ for featureID %@", &v9, 0x16u);
    }

    return [*(a1 + 56) fulfillWithValue:*(a1 + 32)];
  }

  else
  {
    v2 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received error %@ fetching cloud feature access token for featureID %@", &v9, 0x16u);
    }

    return [*(a1 + 56) failWithError:*(a1 + 40)];
  }
}

void sub_1004DA720(id a1)
{
  v1 = *IMWeakLinkSymbol();
  qword_100CBD630 = v1;
  if (v1)
  {

    CFRetain(v1);
  }
}

BOOL sub_1004DA798(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_1004DA7F4(id a1)
{
  v1 = objc_alloc_init(IDSDaemonXPCInterface);
  v2 = qword_100CBD640;
  qword_100CBD640 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1004DAA04(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 observer];
  [v3 appendMiddleware:v4];
}

uint64_t sub_1004DAE54(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [v2 observerProxies];
  [v3 removeObject:*(a1 + 40)];

  v4 = [*(a1 + 32) object];
  v5 = [v4 observerProxies];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = [*(a1 + 32) object];
    [v7 setObserverProxies:0];
  }

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Daemon Invalidation Handled", v10, 2u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLog();
    if (result)
    {
      return _IDSLogV();
    }
  }

  return result;
}

uint64_t sub_1004DAF9C(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [v2 observerProxies];
  [v3 removeObject:*(a1 + 40)];

  v4 = [*(a1 + 32) object];
  v5 = [v4 observerProxies];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = [*(a1 + 32) object];
    [v7 setObserverProxies:0];
  }

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Daemon Interruption Handled", v10, 2u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLog();
    if (result)
    {
      return _IDSLogV();
    }
  }

  return result;
}

void sub_1004DB258(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138478339;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Daemon failed to broadcast didCreateGroup {group: %{private}@, observerProxy: %{public}@, error: %{public}@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_1004DB508(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138478339;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Daemon failed to broadcast didCacheGroup {group: %{private}@, observerProxy: %{public}@, error: %{public}@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_1004DB7E4(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = a1[6];
      *buf = 138478595;
      v9 = v5;
      v10 = 2113;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Daemon failed to broadcast didUpdateGroup {previousGroup: %{private}@, updatedGroup: %{private}@, observerProxy: %{public}@, error:%{public}@}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_1004DBAA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138478339;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Daemon failed to broadcast didReceiveDecryptionFailureForGroup {group: %{private}@, observerProxy: %{public}@, error:%{public}@}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_1004DBD2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Daemon failed to broadcast didReceiveRegistrationIdentityUpdate {observerProxy: %{public}@, error:%{public}@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_1004DC4CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 chunkNumber];
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GUID %@ Received APNS ack for MML %@", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v3 aggregateMessages];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
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
        v13 = [v12 deliveryAcknowledgementBlock];
        (v13)[2](v13, v12);
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

void sub_1004DC730(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 chunkNumber];
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GUID %@ Received APNS ack for Fanout %@", &v14, 0x16u);
  }

  v7 = [v3 sendMetric];
  v8 = [v3 retryCount];
  v9 = +[IDSCurrentServerTime sharedInstance];
  [v9 currentServerTimeInterval];
  v10 = [NSNumber numberWithDouble:?];
  v11 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys outgoingFanoutAckedKey];
  [v7 addEntry:v10 forKey:v11];

  v12 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys retryCountKey];
  [v7 addEntry:v8 forKey:v12];

  v13 = [*(a1 + 40) cloudTelemetryReporter];
  [v13 reportOutgoingSendMetric:v7];

  [v3 callAllAckBlocks];
}

void sub_1004DCA9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GUID %@ APNS ack received for destination %@", &v9, 0x16u);
  }

  v7 = [*(a1 + 48) delegate];
  [v7 receivedAPNSAckForMessage:v3 guid:*(a1 + 32)];

  [*(a1 + 56) removeObject:*(a1 + 64)];
  if (![*(a1 + 56) count])
  {
    v8 = [*(a1 + 48) delegate];
    [v8 finishedTrackingAPNSAcksWithURIs:*(a1 + 72) guid:*(a1 + 32)];
  }
}

void sub_1004DD620(id a1)
{
  v1 = objc_alloc_init(IDSDSessionController);
  v2 = qword_100CBD650;
  qword_100CBD650 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1004DDF48(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [IDSURI URIWithPrefixedURI:v3 withServiceLoggingHint:v4];

  return v5;
}

void sub_1004DF330(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v5 = [WeakRetained setupNewIncomingSessionWithOptions:*(a1 + 32)];
  if (v5)
  {
    v6 = objc_opt_class();
    v30 = sub_10001B690(v6, *(a1 + 48), IDSDSessionMessageTransportType);
    v7 = IDSDSessionMessageQuickRelaySessionToken;
    v8 = [*(a1 + 48) objectForKey:IDSDSessionMessageQuickRelaySessionToken];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [*(a1 + 48) objectForKey:v7];
      v10 = [NSData _IDSDataFromBase64String:v9];
    }

    else
    {
      v9 = [*(a1 + 48) objectForKey:v7];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v5 setQuickRelaySessionToken:0];
        goto LABEL_11;
      }

      v10 = [*(a1 + 48) objectForKey:v7];
    }

    v12 = v10;
    [v5 setQuickRelaySessionToken:v10];

LABEL_11:
    v13 = objc_opt_class();
    v14 = sub_10001B690(v13, *(a1 + 48), IDSDSessionMessageUseCloudPairedControlChannel);
    [v5 setRemoteUseCloudPairedControlChannel:v14];
    v15 = objc_opt_class();
    v16 = sub_10001B690(v15, *(a1 + 48), IDSDSessionMessageUsePhoneContinuityLocalMessage);
    [v5 setRemoteUsePhoneContinuityLocalMessage:v16];
    [v5 submitAWDMetricsForIDSSessionInvitationReceived];
    v17 = objc_opt_class();
    v18 = IDSDSessionMessageDeclineOnNetworkError;
    v19 = sub_10001B690(v17, *(a1 + 48), IDSDSessionMessageDeclineOnNetworkError);
    v20 = objc_opt_class();
    v21 = sub_10001B690(v20, *(a1 + 48), v18);
    v22 = [v21 BOOLValue];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1004DF748;
    v31[3] = &unk_100BDEC40;
    v32 = v5;
    v33 = *(a1 + 48);
    v34 = *(a1 + 40);
    v35 = WeakRetained;
    v40 = v3;
    v41 = v22;
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    v25 = *(a1 + 72);
    v26 = *(a1 + 80);
    *&v27 = v25;
    *(&v27 + 1) = v26;
    *&v28 = v23;
    *(&v28 + 1) = v24;
    v36 = v28;
    v37 = v27;
    v38 = *(a1 + 88);
    v39 = v30;
    v29 = v30;
    [v32 networkingIsAvailable:v31];

    goto LABEL_12;
  }

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Couldn't create session for invite, bailing...", buf, 2u);
  }

  DLCWarn();
  v3[2](v3);
LABEL_12:
}

void sub_1004DF748(uint64_t a1, int a2)
{
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v50 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Done with incoming network availability check; networkOkForSession: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (!a2)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Network availability check indicated that we should not continue to process this session invitation", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    if (*(a1 + 120) == 1)
    {
      v11 = [NSDictionary alloc];
      v12 = [v11 initWithObjectsAndKeys:{&off_100C3C880, IDSDSessionMessageDeclineReason, 0}];
      v13 = *(a1 + 32);
      v14 = JWEncodeDictionary();
      [v13 declineInvitationWithData:v14];
    }

    v15 = (*(a1 + 56) + 8);
    os_unfair_lock_lock(v15);
    v16 = *(*(a1 + 56) + 16);
    v17 = [*(a1 + 32) uniqueID];
    [v16 removeObjectForKey:v17];

    (*(*(a1 + 112) + 16))(*(a1 + 112));
    os_unfair_lock_unlock(v15);
    return;
  }

  if (![*(a1 + 32) isScreenSharingSession])
  {
LABEL_28:
    v30 = *(a1 + 32);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1004DFDB8;
    v37[3] = &unk_100BDEC18;
    v48 = *(a1 + 120);
    v38 = v30;
    v31 = *(a1 + 64);
    v32 = *(a1 + 56);
    v39 = v31;
    v40 = v32;
    v41 = *(a1 + 40);
    v42 = *(a1 + 72);
    v43 = *(a1 + 80);
    v44 = *(a1 + 88);
    v45 = *(a1 + 96);
    v47 = *(a1 + 112);
    v46 = *(a1 + 104);
    [v38 runConnectivityCheckWithCompletionBlock:v37];

    return;
  }

  v6 = IDSDSessionMessageKeyMaterial;
  v7 = [*(a1 + 40) objectForKey:IDSDSessionMessageKeyMaterial];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [*(a1 + 40) objectForKey:v6];
    v9 = [NSData _IDSDataFromBase64String:v8];
LABEL_22:
    v18 = v9;
    goto LABEL_24;
  }

  v8 = [*(a1 + 40) objectForKey:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [*(a1 + 40) objectForKey:v6];
    goto LABEL_22;
  }

  v18 = 0;
LABEL_24:

  v19 = objc_opt_class();
  v20 = sub_10001B690(v19, *(a1 + 40), IDSDSessionMessageSelfSSRC);
  v21 = objc_opt_class();
  v22 = sub_10001B690(v21, *(a1 + 40), IDSDSessionMessageSelfSeqStart);
  v23 = v22;
  if (v18 && v20 && v22)
  {
    v24 = [*(a1 + 32) keyMaterial];
    v25 = v18;
    v26 = [v18 bytes];
    v27 = *v26;
    v28 = v26[1];
    v29 = v26[2];
    *(v24 + 44) = *(v26 + 44);
    v24[1] = v28;
    v24[2] = v29;
    *v24 = v27;
    [*(a1 + 32) setSSRCRecv:{objc_msgSend(v20, "unsignedIntValue")}];
    [*(a1 + 32) setSeqRecvStart:{objc_msgSend(v23, "unsignedShortValue")}];

    goto LABEL_28;
  }

  v33 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Missing encryption setup info, bailing...", buf, 2u);
  }

  DLCWarn();
  [*(a1 + 32) endSessionWithReason:17];
  v34 = (*(a1 + 56) + 8);
  os_unfair_lock_lock(v34);
  v35 = *(*(a1 + 56) + 16);
  v36 = [*(a1 + 32) uniqueID];
  [v35 removeObjectForKey:v36];

  (*(*(a1 + 112) + 16))(*(a1 + 112));
  os_unfair_lock_unlock(v34);
}

void sub_1004DFDB8(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = +[IDSDaemon sharedInstance];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1004E03D8;
    v29[3] = &unk_100BDEBF0;
    v4 = &v30;
    v5 = &v31;
    v6 = &v31 + 1;
    *&v7 = *(a1 + 40);
    *(&v7 + 1) = *(a1 + 48);
    v27 = v7;
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v30 = v27;
    v31 = v10;
    v11 = &v32;
    v32 = *(a1 + 64);
    v12 = &v33;
    v33 = *(a1 + 72);
    v13 = &v34;
    v34 = *(a1 + 80);
    v35 = *(a1 + 96);
    [v3 enqueueBroadcast:v29 forTopic:*(a1 + 40) entitlement:kIDSSessionEntitlement command:0 capabilities:kIDSListenerCapConsumesLaunchOnDemandSessionMessages messageContext:*(a1 + 88)];

    (*(*(a1 + 104) + 16))();
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Wifi connectivity check failed, declining invitation!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    if (*(a1 + 112) == 1)
    {
      v15 = [NSDictionary alloc];
      v16 = [v15 initWithObjectsAndKeys:{&off_100C3C880, IDSDSessionMessageDeclineReason, 0}];
      v17 = *(a1 + 32);
      v18 = JWEncodeDictionary();
      [v17 declineInvitationWithData:v18];
    }

    v19 = +[IDSDaemon sharedInstance];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1004E01CC;
    v36[3] = &unk_100BDEBC8;
    *&v20 = *(a1 + 40);
    *(&v20 + 1) = *(a1 + 48);
    v28 = v20;
    v21 = *(a1 + 32);
    v22 = *(a1 + 56);
    *&v23 = v21;
    *(&v23 + 1) = v22;
    v37 = v28;
    v38 = v23;
    v39 = *(a1 + 64);
    v40 = *(a1 + 72);
    v41 = *(a1 + 80);
    [v19 enqueueBroadcast:v36 forTopic:*(a1 + 40) entitlement:kIDSSessionEntitlement command:0 capabilities:kIDSListenerCapConsumesLaunchOnDemandSessionMessages messageContext:*(a1 + 88)];

    v24 = *(a1 + 48);
    os_unfair_lock_lock(v24 + 2);
    v25 = *(*(a1 + 48) + 16);
    v26 = [*(a1 + 32) uniqueID];
    [v25 removeObjectForKey:v26];

    (*(*(a1 + 104) + 16))();
    v4 = &v37;
    v5 = &v38;
    v6 = &v38 + 1;
    v11 = &v39;
    v12 = &v40;
    v13 = &v41;
    os_unfair_lock_unlock(v24 + 2);
  }
}

void sub_1004E01CC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [NSError alloc];
    v5 = [v4 initWithDomain:IDSSessionErrorDomain code:3 userInfo:0];
    v6 = *(a1 + 32);
    v8 = *(a1 + 56);
    v7 = *(a1 + 64);
    v9 = [*(a1 + 72) prefixedURI];
    v10 = [*(a1 + 80) prefixedURI];
    [v3 inviteDroppedWithPayload:v8 forTopic:v6 sessionID:v7 toIdentifier:v9 fromID:v10 error:v5];
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Did not find a client that could handle the invitation for service %@, dropping invitation...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v13 = *(a1 + 40);
    os_unfair_lock_lock(v13 + 2);
    v14 = *(*(a1 + 40) + 16);
    v15 = [*(a1 + 48) uniqueID];
    [v14 removeObjectForKey:v15];

    os_unfair_lock_unlock(v13 + 2);
  }
}

void sub_1004E03D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v7 = [*(a1 + 72) prefixedURI];
    v8 = [*(a1 + 80) prefixedURI];
    [v3 sessionInvitationReceivedWithPayload:v6 forTopic:v4 sessionID:v5 toIdentifier:v7 fromID:v8 transportType:*(a1 + 88)];
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Did not find a client that could handle the invitation for service %@, ignoring invitation...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v11 = *(a1 + 40);
    os_unfair_lock_lock(v11 + 2);
    v12 = *(*(a1 + 40) + 16);
    v13 = [*(a1 + 48) uniqueID];
    [v12 removeObjectForKey:v13];

    os_unfair_lock_unlock(v11 + 2);
  }
}

void sub_1004E0848(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  [v2 receivedAcceptMessage:v3 fromURI:v4];
  v5[2]();
}

void sub_1004E0B48(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  [v2 receivedDeclineMessage:v3 fromURI:v4];
  v5[2]();
}

void sub_1004E0E48(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  [v2 receivedCancelMessage:v3 fromURI:v4];
  v5[2]();
}

void sub_1004E1148(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  [v2 receivedSessionMessage:v3 fromURI:v4];
  v5[2]();
}

void sub_1004E1448(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  [v2 receivedEndMessage:v3 fromURI:v4];
  v5[2]();
}

void sub_1004E1748(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  [v2 receivedReinitiateMessage:v3 fromURI:v4];
  v5[2]();
}

void sub_1004E1C68(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1004E19E4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004E1CAC(uint64_t a1, void *a2)
{
  v140 = a2;
  v3 = IDSDSessionMessageJoinNotificationKey;
  v4 = [*(a1 + 32) objectForKey:IDSDSessionMessageJoinNotificationKey];

  if (v4)
  {
    v5 = [*(a1 + 32) objectForKey:v3];
    v6 = [v5 unsignedIntegerValue];

    if ((v6 - 1) >= 3)
    {
      if (v6 != 4)
      {
        goto LABEL_112;
      }

      v7 = +[IDSDGroupStatusNotificationController sharedInstance];
      [v7 processIncomingParticipantDataUpdateMessage:*(a1 + 32) fromToken:*(a1 + 40) fromURI:*(a1 + 48) toURI:*(a1 + 56) topic:*(a1 + 64) idsMessageContext:*(a1 + 72)];
    }

    else
    {
      v7 = +[IDSDGroupStatusNotificationController sharedInstance];
      [v7 processIncomingParticipantUpdateMessage:*(a1 + 32) fromToken:*(a1 + 40) fromURI:*(a1 + 48) toURI:*(a1 + 56) topic:*(a1 + 64) idsMessageContext:*(a1 + 72)];
    }

    goto LABEL_8;
  }

  if (*(a1 + 136) != 1)
  {
    v9 = IDSDSessionMessageRealTimeEncryptionKeyMaterialKey;
    v10 = [*(a1 + 32) objectForKey:IDSDSessionMessageRealTimeEncryptionKeyMaterialKey];
    if (v10)
    {

      v11 = IDSDSessionMessageRealTimeEncryptionStableKeyMaterialKey;
    }

    else
    {
      v11 = IDSDSessionMessageRealTimeEncryptionStableKeyMaterialKey;
      v12 = [*(a1 + 32) objectForKey:IDSDSessionMessageRealTimeEncryptionStableKeyMaterialKey];

      if (!v12)
      {
        v49 = IDSDSessionMessageRealTimeEncryptionPreKeyRecoveryRequestKey;
        v50 = [*(a1 + 32) objectForKey:IDSDSessionMessageRealTimeEncryptionPreKeyRecoveryRequestKey];

        v51 = *(a1 + 32);
        if (v50)
        {
          v52 = [v51 objectForKey:v49];
          v53 = [v52 BOOLValue];

          if (v53)
          {
            v54 = [*(a1 + 48) prefixedURI];
            v55 = [*(a1 + 40) rawToken];
            v56 = [IDSDestination destinationWithAlias:v54 pushToken:v55];

            v57 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v58 = *(a1 + 104);
              *buf = 138412546;
              v151 = v58;
              v152 = 2112;
              v153 = v56;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Received the prekey recovery request for group %@ destination %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v127 = *(a1 + 104);
              p_isa = v56;
              _IDSLogV();
            }

            v59 = [IDSGroupEncryptionController sharedInstance:v127];
            [v59 sendPublicKeyToDestination:v56 group:*(a1 + 104) sessionID:*(a1 + 112)];
          }

          goto LABEL_112;
        }

        v111 = IDSDSessionMessageRealTimeEncryptionMKMRecoveryRequestKey;
        v112 = [v51 objectForKey:IDSDSessionMessageRealTimeEncryptionMKMRecoveryRequestKey];
        if (v112)
        {

          v113 = IDSDSessionMessageRealTimeEncryptionSKMRecoveryRequestKey;
        }

        else
        {
          v113 = IDSDSessionMessageRealTimeEncryptionSKMRecoveryRequestKey;
          v114 = [*(a1 + 32) objectForKey:IDSDSessionMessageRealTimeEncryptionSKMRecoveryRequestKey];

          if (!v114)
          {
            v126 = [*(a1 + 32) objectForKey:IDSDSessionMessageRealTimeEncryptionPublicKeyAck];

            if (v126)
            {
              v7 = +[IDSGroupEncryptionController sharedInstance];
              [v7 processIncomingPrekeyAckForGroup:*(a1 + 104)];
LABEL_8:
            }

LABEL_112:
            v91 = IDSDSessionMessageRealTimeEncryptionPublicKey;
            v92 = [*(a1 + 32) objectForKey:{IDSDSessionMessageRealTimeEncryptionPublicKey, v127}];

            if (!v92)
            {
LABEL_132:
              v140[2]();
              WeakRetained = objc_loadWeakRetained((a1 + 128));
              [WeakRetained updateCriticalReliabilityState];

              goto LABEL_133;
            }

            v93 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              v94 = *(a1 + 80);
              ids_monotonic_time();
              *buf = 138412546;
              v151 = v94;
              v152 = 2048;
              v153 = v95;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Receiving Key Material (%@) [PreKey] -- %f", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v96 = *(a1 + 80);
              ids_monotonic_time();
              p_isa = v97;
              v129 = v96;
              _IDSLogV();
            }

            v98 = *(a1 + 88);
            v99 = [*(a1 + 40) rawToken];
            [v98 reportPreKeyReceivedOverPushFromToken:v99];

            v100 = [*(a1 + 32) objectForKey:v91];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v101 = [*(a1 + 32) objectForKey:v91];
              v102 = [NSData _IDSDataFromBase64String:v101];
            }

            else
            {
              v101 = [*(a1 + 32) objectForKey:v91];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v103 = 0;
                goto LABEL_124;
              }

              v102 = [*(a1 + 32) objectForKey:v91];
            }

            v103 = v102;

LABEL_124:
            v104 = objc_opt_class();
            v105 = sub_10001B690(v104, *(a1 + 32), IDSDSessionMessageRealTimeEncryptionWrapModeKey);
            if (v103)
            {
              v106 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
              {
                v107 = *(a1 + 96);
                v108 = *(a1 + 40);
                *buf = 138478339;
                v151 = v103;
                v152 = 2112;
                v153 = v107;
                v154 = 2112;
                v155 = v108;
                _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Storing the public key %{private}@ for %@ token %@", buf, 0x20u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v133 = *(a1 + 96);
                v134 = *(a1 + 40);
                v130 = v103;
                _IDSLogV();
              }

              v109 = [IDSGroupEncryptionController sharedInstance:v130];
              [v109 setRealTimeEncryptionPublicKey:v103 forDevice:*(a1 + 40) fromURI:*(a1 + 48) groupID:*(a1 + 104) sessionID:*(a1 + 112) serverDate:*(a1 + 120) wrapMode:{objc_msgSend(v105, "integerValue")}];
            }

            goto LABEL_132;
          }
        }

        v115 = [*(a1 + 32) objectForKey:v111];
        v116 = [v115 BOOLValue];

        v117 = [*(a1 + 32) objectForKey:v113];
        v118 = [v117 BOOLValue];

        if ((v116 | v118))
        {
          v119 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            v120 = *(a1 + 104);
            v121 = @"NO";
            if (v116)
            {
              v122 = @"YES";
            }

            else
            {
              v122 = @"NO";
            }

            *buf = 138412802;
            v151 = v120;
            v152 = 2112;
            if (v118)
            {
              v121 = @"YES";
            }

            v153 = v122;
            v154 = 2112;
            v155 = v121;
            _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "Received the key recovery request for group %@, needsToRecoverMKM: %@, needsToRecoverSKM: %@", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v123 = @"NO";
            if (v116)
            {
              v124 = @"YES";
            }

            else
            {
              v124 = @"NO";
            }

            if (v118)
            {
              v123 = @"YES";
            }

            p_isa = &v124->isa;
            v134 = v123;
            v127 = *(a1 + 104);
            _IDSLogV();
          }

          v125 = [IDSGroupEncryptionController sharedInstance:v127];
          BYTE1(v131) = v118 & 1;
          LOBYTE(v131) = v116;
          [v125 processIncomingKeyMaterialsRecoveryRequest:*(a1 + 32) fromDevice:*(a1 + 40) fromURI:*(a1 + 48) groupID:*(a1 + 104) sessionID:*(a1 + 112) serverDate:*(a1 + 120) requireMKM:v131 requireSKM:?];
        }

        goto LABEL_112;
      }
    }

    v13 = objc_opt_class();
    v139 = sub_10001B690(v13, *(a1 + 32), v9);
    v141 = +[NSMutableArray array];
    v14 = objc_opt_class();
    v138 = sub_10001B690(v14, *(a1 + 32), v11);
    if (v139)
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 80);
        ids_monotonic_time();
        *buf = 138412546;
        v151 = v16;
        v152 = 2048;
        v153 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Receiving Key Material (%@) [MKM] -- %f", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v18 = *(a1 + 80);
        ids_monotonic_time();
        p_isa = v19;
        v127 = v18;
        _IDSLogV();
      }

      if (!v138)
      {
        v20 = 0;
        goto LABEL_27;
      }
    }

    else if (!v138)
    {
      v48 = 0;
LABEL_72:
      v61 = objc_opt_class();
      v62 = sub_10001B690(v61, *(a1 + 32), IDSDSessionMessageRealTimeEncryptionKeyAllValidKeyMaterialsKey);
      v137 = v62;
      v63 = v62;
      if (v62)
      {
        v64 = v48;
      }

      else
      {
        v64 = 1;
      }

      if ((v64 & 1) == 0)
      {
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        obj = v62;
        v65 = [obj countByEnumeratingWithState:&v144 objects:v149 count:16];
        if (v65)
        {
          v66 = *v145;
          v67 = IDSRealTimeEncryptionParticipantID;
          while (2)
          {
            v68 = 0;
            do
            {
              if (*v145 != v66)
              {
                objc_enumerationMutation(obj);
              }

              v69 = *(*(&v144 + 1) + 8 * v68);
              v70 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
              {
                v71 = *(a1 + 96);
                v72 = *(a1 + 40);
                *buf = 138478339;
                v151 = v69;
                v152 = 2112;
                v153 = v71;
                v154 = 2112;
                v155 = v72;
                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Storing all valid master key materials %{private}@ for %@ token %@", buf, 0x20u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                p_isa = *(a1 + 96);
                v134 = *(a1 + 40);
                v127 = v69;
                _IDSLogV();
              }

              v73 = [v69 objectForKeyedSubscript:{v67, v127, p_isa, v134}];
              v74 = [v73 unsignedLongLongValue];

              [*(a1 + 88) reportMKMReceivedOverPushViaCacheForParticipantID:v74 material:v69];
              v75 = +[IDSGroupEncryptionController sharedInstance];
              v76 = *(a1 + 40);
              v77 = *(a1 + 48);
              v78 = *(a1 + 104);
              v79 = *(a1 + 112);
              v143 = 0;
              LOWORD(v134) = 1;
              p_isa = &v143;
              LOBYTE(v127) = 0;
              v80 = [v75 receivedAndSetKeyMaterial:v69 stableKeyMaterial:0 forDevice:v76 fromURI:v77 groupID:v78 sessionID:v79 fromSender:? error:? forMKM:? forSKM:?];
              v81 = v143;

              if (v80)
              {
                v82 = [v80 objectForKey:@"ids-rtencryption-master-key-material-key"];
                if (v82)
                {
                  [v141 addObject:v82];
                }

                else if (v81)
                {
                  v86 = [v81 domain];
                  if ([v86 isEqualToString:@"IDSRealTimeEncryptionControllerErrorDomain"])
                  {
                    v87 = [v81 code] == -2000;

                    if (v87)
                    {
                      v89 = OSLogHandleForIDSCategory();
                      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Failed to decrypt a key material in the broadcast group -- skipping the remaining key material", buf, 2u);
                      }

                      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                      {
                        _IDSLogV();
                      }

                      goto LABEL_110;
                    }
                  }

                  else
                  {
                  }
                }
              }

              else
              {
                v83 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                {
                  v84 = *(a1 + 96);
                  v85 = *(a1 + 40);
                  *buf = 138412546;
                  v151 = v84;
                  v152 = 2112;
                  v153 = v85;
                  _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "not received any valid remote cached MKMs for %@ token %@", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v127 = *(a1 + 96);
                  p_isa = *(a1 + 40);
                  _IDSLogV();
                }
              }

              v68 = v68 + 1;
            }

            while (v65 != v68);
            v88 = [obj countByEnumeratingWithState:&v144 objects:v149 count:16];
            v65 = v88;
            if (v88)
            {
              continue;
            }

            break;
          }
        }

LABEL_110:

        v63 = v137;
      }

      goto LABEL_112;
    }

    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 80);
      ids_monotonic_time();
      *buf = 138412546;
      v151 = v22;
      v152 = 2048;
      v153 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Receiving Key Material (%@) [SKM] -- %f", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v24 = *(a1 + 80);
      ids_monotonic_time();
      p_isa = v25;
      v127 = v24;
      _IDSLogV();
    }

    v20 = 1;
    if (!v139)
    {
LABEL_31:
      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 96);
        v31 = *(a1 + 40);
        *buf = 138478595;
        v151 = v139;
        v152 = 2113;
        v153 = v138;
        v154 = 2112;
        v155 = v30;
        v156 = 2112;
        v157 = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Storing the master key material %{private}@ stableKeyMaterial: %{private}@ for %@ token %@", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v134 = *(a1 + 96);
        v136 = *(a1 + 40);
        v127 = v139;
        p_isa = &v138->isa;
        _IDSLogV();
      }

      v32 = [IDSGroupEncryptionController sharedInstance:v127];
      v33 = *(a1 + 40);
      v34 = *(a1 + 48);
      v35 = *(a1 + 104);
      v36 = *(a1 + 112);
      v148 = 0;
      BYTE1(v135) = v20;
      LOBYTE(v135) = v139 != 0;
      LOBYTE(v128) = 1;
      v37 = [v32 receivedAndSetKeyMaterial:v139 stableKeyMaterial:v138 forDevice:v33 fromURI:v34 groupID:v35 sessionID:v36 fromSender:v128 error:&v148 forMKM:v135 forSKM:?];
      v38 = v148;

      if (v37)
      {
        v39 = [v37 objectForKey:@"ids-rtencryption-master-key-material-key"];
        if (v39)
        {
          [v141 addObject:v39];
          v40 = objc_loadWeakRetained((a1 + 128));
          v41 = v40;
          v42 = *(a1 + 72);
          if (*(a1 + 64))
          {
            if (v42 && v40 && (*(v40 + 40) & 1) == 0)
            {
              *(v40 + 40) = 1;
              v43 = *(a1 + 88);
              ids_monotonic_time();
              [v43 reportFirstMKMReceivedFromPush:?];
            }
          }

          else if (!v42 && v40 && (*(v40 + 41) & 1) == 0)
          {
            *(v40 + 41) = 1;
            v60 = *(a1 + 88);
            ids_monotonic_time();
            [v60 reportFirstMKMReceivedFromQR:?];
          }
        }
      }

      else
      {
        v44 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(a1 + 96);
          v46 = *(a1 + 40);
          *buf = 138412546;
          v151 = v45;
          v152 = 2112;
          v153 = v46;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "not received any valid MKM or MKM for %@ token %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v127 = *(a1 + 96);
          p_isa = *(a1 + 40);
          _IDSLogV();
        }

        if (v38)
        {
          v47 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "key material not decrypted", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          v48 = 1;
          goto LABEL_71;
        }
      }

      v48 = 0;
LABEL_71:

      goto LABEL_72;
    }

LABEL_27:
    v26 = *(a1 + 137);
    v27 = *(a1 + 88);
    v28 = [*(a1 + 40) rawToken];
    if (v26)
    {
      [v27 reportMKMReceivedOverQRFromToken:v28 material:v139];
    }

    else
    {
      [v27 reportMKMReceivedOverPushFromToken:v28 material:v139];
    }

    goto LABEL_31;
  }

  v140[2]();
  v8 = objc_loadWeakRetained((a1 + 128));
  [v8 updateCriticalReliabilityState];

LABEL_133:
}

void sub_1004E39E8(id a1, IDSDSession *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  [(IDSDSession *)v4 endSession];
  [(IDSDSession *)v4 cleanupSessionWithCleanStatus:1];
}

void sub_1004E3E4C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 endSessionWithReason:v2];
  [v3 cleanupSessionWithCleanStatus:1];
}

void sub_1004E50C0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 groupID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1004E53F8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [NSUUID alloc];
  v8 = [v10 groupID];
  v9 = [v7 initWithUUIDString:v8];

  if ([v9 isEqual:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1004E6098(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) _publishRequestForStatusPayload:*(a1 + 40)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004E617C;
  v10[3] = &unk_100BDED88;
  v13 = a3;
  v10[4] = v7;
  v11 = *(a1 + 48);
  v12 = v5;
  v9 = v5;
  [v8 publishStatusRequest:v6 completion:v10];
}

void sub_1004E617C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 56);
    v11 = 138412802;
    v12 = v5;
    v13 = 2048;
    v14 = v8;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requested publish with identifier %@ attempts (%ld) for error %@", &v11, 0x20u);
  }

  if (![*(a1 + 32) _shouldRetryForError:v6] || (v9 = *(a1 + 56), v9 > objc_msgSend(*(a1 + 32), "_retryMaximumAttempts")))
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v6);
    }

    *(*(a1 + 32) + 48) = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1004E6594(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(v6 + 16);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004E6664;
  v10[3] = &unk_100BDEDD8;
  v13 = a3;
  v10[4] = v6;
  v11 = *(a1 + 48);
  v12 = v5;
  v9 = v5;
  [v8 provisionPayloads:v7 completion:v10];
}

void sub_1004E6664(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 56);
    v11 = 134218242;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requested provision attempts (%ld) for error %@", &v11, 0x16u);
  }

  if (![*(a1 + 32) _shouldRetryForError:v6] || (v9 = *(a1 + 56), v9 > objc_msgSend(*(a1 + 32), "_retryMaximumAttempts")))
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v5, v6);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1004E685C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [IDSURI alloc];
  v6 = [v3 handleString];

  v5 = [v4 initWithPrefixedURI:v6];
  [v2 addObject:v5];
}

void sub_1004E6A60(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v2[2];
  v5 = [*(a1 + 48) allObjects];
  v6 = [v2 _skHandlesForURIs:v5];
  v7 = *(a1 + 40);
  if (v3)
  {
    v22 = *(a1 + 32);
    v8 = [NSArray arrayWithObjects:&v22 count:1];
    v9 = [v7 _skHandlesForURIs:v8];
    v10 = [v9 firstObject];
    v11 = [*(a1 + 40) _skInvitationPayloadForDictionary:*(a1 + 56)];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1004E6CB0;
    v18[3] = &unk_100BDA978;
    v12 = &v19;
    v19 = *(a1 + 48);
    v13 = &v20;
    v20 = *(a1 + 32);
    v21 = *(a1 + 64);
    [v4 inviteHandles:v6 fromSenderHandle:v10 withInvitationPayload:v11 completion:v18];

    v5 = v21;
  }

  else
  {
    v14 = [*(a1 + 40) _skInvitationPayloadForDictionary:*(a1 + 56)];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1004E6DA0;
    v15[3] = &unk_100BDA9A0;
    v12 = &v16;
    v16 = *(a1 + 48);
    v13 = &v17;
    v17 = *(a1 + 64);
    [v4 inviteHandlesFromPrimaryAccountHandle:v6 withInvitationPayload:v14 completion:v15];
  }
}

void sub_1004E6CB0(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Completed request - inviteHandles  %@ from sender %@ with error %@", &v8, 0x20u);
  }

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_1004E6DA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Completed request - inviteHandles %@ from primary sender account handle with error %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_1004E6FAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v4 = [*(a1 + 40) allObjects];
  v5 = [v2 _skHandlesForURIs:v4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1004E7088;
  v6[3] = &unk_100BDA9A0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v3 removeInvitedHandles:v5 completion:v6];
}

void sub_1004E7088(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Completed request - removeHandles %@ with error %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_1004E7208(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1004E7298;
  v2[3] = &unk_100BDA9F0;
  v3 = *(a1 + 40);
  [v1 removeAllInvitedHandlesWithCompletion:v2];
}

void sub_1004E7298(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Completed request - removeAllHandles with error %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_1004E7508(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 prefixedURI];

  v7 = [v5 initWithString:v6];
  [*(a1 + 32) addObject:v7];
}

uint64_t sub_1004E83D0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100CBD658;
  qword_100CBD658 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1004E8624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1004E863C(uint64_t a1)
{
  if (([*(a1 + 32) hasPerformedMigration] & 1) == 0)
  {
    if (qword_100CBD670 != -1)
    {
      sub_100924B68();
    }

    if (off_100CBD668)
    {
      off_100CBD668();
    }

    os_unfair_lock_lock((*(a1 + 32) + 12));
    *(*(a1 + 32) + 8) = 1;
    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }

  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = +[NSNull null];
  [v2 fulfillWithValue:v3];

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;

  v6 = (*(a1 + 32) + 12);

  os_unfair_lock_unlock(v6);
}

id sub_1004EB1A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) shouldRegisterUsingDSHandle] & 1) != 0 || (objc_msgSend(v3, "_appearsToBeDSID") & 1) == 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1004EB208(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IMRGLog registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138413058;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "*** Accounts response:   username: %@   serviceUserName: %@   profileID: %@   selfHandle: %@", &v20, 0x2Au);
  }

  if ([v13 length])
  {
    v15 = +[IMRGLog registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "   Setting self ID: %@", &v20, 0xCu);
    }

    [*(*(a1 + 32) + 16) setDSHandle:v13];
    if (![v12 length])
    {
      goto LABEL_12;
    }
  }

  else if (![v12 length])
  {
    goto LABEL_15;
  }

  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "   Setting profile ID: %@", &v20, 0xCu);
  }

  [*(*(a1 + 32) + 16) setProfileID:v12];
  v17 = *(a1 + 32);
  v18 = [NSDictionary dictionaryWithObject:v12 forKey:kIDSServiceDefaultsAuthorizationIDKey];
  [v17 _writeAccountDefaults:v18 force:1];

LABEL_12:
  v19 = +[IMRGLog registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "   Saving fixed account", &v20, 2u);
  }

  [*(*(a1 + 32) + 16) saveToKeychain];
LABEL_15:
}

id sub_1004ECBBC(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:kIDSServiceDefaultsAliasKey];
  if ([*(a1 + 32) shouldRegisterUsingDSHandle] && objc_msgSend(v3, "_FZIDType") == 2 || (objc_msgSend(v3, "isEqualToIgnoringCase:", kIDSServiceDefaultsSentinelAlias) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", v3) & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void sub_1004EEE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1004EFA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state, char a17)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1004EFFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1004F13C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, os_activity_scope_state_s state, char a21)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1004F1868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

id sub_1004F3848(id a1, id a2)
{
  v2 = a2;
  if (IMStringIsEmail())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1004F389C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _validationStatusForAlias:v3] == 2)
  {
    goto LABEL_2;
  }

  if ([*(a1 + 40) containsObject:v3])
  {
    goto LABEL_4;
  }

  if ([*(a1 + 48) containsObject:v3])
  {
LABEL_2:
    [*(*(*(a1 + 56) + 8) + 40) addObject:v3];
LABEL_4:
    v4 = 0;
    goto LABEL_5;
  }

  v4 = v3;
LABEL_5:

  return v4;
}

void sub_1004F3938(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = v7;
  if (a2)
  {
    [v8 addAliases:v7];
    [*(a1 + 32) validateAliases:v9];
  }

  else
  {
    [v8 markAsUnselectedAlias:a4 withReason:3];
  }
}

void sub_1004F3E4C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v7 = a5;
  *(*(a1 + 32) + 80) &= ~0x10u;
  v8 = [v7 objectForKey:@"handles"];
  v9 = v8;
  if (!a4)
  {
    goto LABEL_8;
  }

  if ([v8 count])
  {
    v10 = objc_alloc_init(NSDate);
    v11 = *(a1 + 32);
    v12 = *(v11 + 64);
    *(v11 + 64) = v10;

    v13 = +[IMRGLog registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) uniqueID];
      v19 = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Handles query completed with result: %@   account: %@", &v19, 0x16u);
    }

    if ([*(a1 + 32) accountType] == 1)
    {
      [*(a1 + 32) _parseHandlesInfo:v9 currentAliases:*(a1 + 40) currentVettedAliases:*(a1 + 48)];
    }

    goto LABEL_11;
  }

  if (![v9 count])
  {
    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " *** This was successful, but handles were empty? Ignoring...", &v19, 2u);
    }
  }

  else
  {
LABEL_8:
    v15 = [v7 objectForKey:@"status"];
    v16 = [v15 intValue];

    v17 = +[IMRGLog warning];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_100925E0C(v16, v17);
    }
  }

LABEL_11:
}

id sub_1004F54C8(void *a1)
{
  v1 = a1;
  if (IDSIsMultiwayRegistrationServiceType())
  {
    v2 = &IDSRegistrationServiceTypeFaceTime;
LABEL_5:
    v3 = *v2;
    goto LABEL_7;
  }

  if (IDSIsFaceTimeRegistrationServiceType())
  {
    v2 = &IDSRegistrationServiceTypeCalling;
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

id sub_1004F63A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 service];
  v5 = [v4 identifier];
  v6 = [IDSURI URIWithPrefixedURI:v3 withServiceLoggingHint:v5];

  return v6;
}

void sub_1004F6ADC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateSessionsWithRegisteredURIs:*(a1 + 32) retryIfNotRegistered:0 sendReasonPathID:*(a1 + 48)];
}

id sub_1004F6B34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 service];
  v5 = [v4 identifier];
  v6 = [IDSURI URIWithPrefixedURI:v3 withServiceLoggingHint:v5];

  return v6;
}

void sub_1004F88F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSDaemon sharedInstance];
  v5 = [v3 service];
  v6 = [v5 pushTopic];
  v7 = [v4 registrationBroadcasterForTopic:v6 messageContext:*(a1 + 32)];

  if (IMShouldLog() && v7)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) smallDescription];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcasting registration failed for account %@", &v12, 0xCu);
    }
  }

  v10 = [v3 uniqueID];
  v11 = [NSNumber numberWithBool:*(a1 + 48)];
  [v7 registrationFailedForAccount:v10 needsDeletion:v11];
}

id sub_1004FAA9C(id a1, id a2)
{
  v2 = [a2 trimmedString];
  v3 = [v2 _im_normalizedURIString];

  if (IMStringIsPhoneNumber())
  {
    v4 = IMCanonicalizeFormattedString();

    v3 = v4;
  }

  return v3;
}

id sub_1004FB10C(uint64_t a1, void *a2)
{
  v3 = [a2 trimmedString];
  v4 = [v3 _im_normalizedURIString];

  v5 = +[FTDeviceSupport sharedInstance];
  if ([v5 supportsSMS])
  {
  }

  else
  {
    v6 = [v4 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias];

    if (v6)
    {
LABEL_6:
      v7 = 0;
      goto LABEL_7;
    }
  }

  if ([*(a1 + 32) containsObject:v4] & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", v4))
  {
    goto LABEL_6;
  }

  if (IMStringIsPhoneNumber())
  {
    v9 = IMCanonicalizeFormattedString();

    v4 = v9;
  }

  v7 = v4;
  v4 = v7;
LABEL_7:

  return v7;
}

id sub_1004FB9AC(uint64_t a1, void *a2)
{
  v3 = [a2 trimmedString];
  v4 = [v3 _im_normalizedURIString];

  if (IMStringIsPhoneNumber())
  {
    v5 = IMCanonicalizeFormattedString();

    v4 = v5;
  }

  if ([*(a1 + 32) containsObject:v4])
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL sub_1004FBA54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _validationStatusForAlias:v3];
  if (v4 != 3)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ needs to be validated", &v7, 0xCu);
    }
  }

  return v4 != 3;
}

uint64_t sub_1004FBB38(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _validationStatusForAlias:v3] == 3 && (objc_msgSend(*(a1 + 40), "containsObject:", v3) & 1) == 0)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ should be registered", &v7, 0xCu);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1004FC3A8(uint64_t a1, void *a2)
{
  v3 = [a2 trimmedString];
  v4 = [v3 _im_normalizedURIString];

  if (IMStringIsEmail() && *(a1 + 32) && (IMAreEmailsLogicallyTheSame() & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

void sub_1004FCB20(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  if (!a4)
  {
    v7 = [*(a1 + 32) _handleAndConvertFeatureToggleError:?];
    v8 = *(a1 + 40);
    v12 = [IDSFeatureToggleRetrievalResult resultWithError:v7];
    (*(v8 + 16))(v8, v12);
    goto LABEL_13;
  }

  v12 = [a5 objectForKeyedSubscript:@"user-flag-status"];
  if ([v12 isEqualToString:@"enabled"])
  {
    v6 = 1;
  }

  else if ([v12 isEqualToString:@"disabled"])
  {
    v6 = 2;
  }

  else if ([v12 isEqualToString:@"not-applicable"])
  {
    v6 = 4;
  }

  else
  {
    if (([v12 isEqualToString:@"mismatch"] & 1) == 0)
    {
      v9 = *(a1 + 40);
      v10 = [IDSFeatureToggleRetrievalResult resultWithError:7];
      goto LABEL_12;
    }

    v6 = 3;
  }

  v9 = *(a1 + 40);
  v10 = [IDSFeatureToggleRetrievalResult resultWithState:v6];
LABEL_12:
  v11 = v10;
  (*(v9 + 16))(v9, v10);

LABEL_13:
}

void sub_1004FCD74(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = *(a1 + 40);
    +[IDSFeatureToggleUpdateResult successfulResult];
  }

  else
  {
    v6 = [*(a1 + 32) _handleAndConvertFeatureToggleError:?];
    v5 = *(a1 + 40);
    [IDSFeatureToggleUpdateResult resultWithError:v6];
  }
  v7 = ;
  (*(v5 + 16))(v5);
}

void sub_1004FD120(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, void *a6)
{
  v25 = a5;
  v10 = a6;
  [*(a1 + 32) _handlePseudonymProvisionError:a3];
  if (a4)
  {
    v11 = [v25 objectForKey:@"alias"];
    v12 = [v25 objectForKey:@"expiry-epoch-seconds"];
    v13 = v12;
    if (v11 && v12)
    {
      v14 = [IDSPseudonym alloc];
      v15 = [IDSURI URIWithPrefixedURI:v11];
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      [v13 doubleValue];
      v18 = [v17 withUpdatedExpiryEpoch:?];
      v19 = [v14 initWithURI:v15 maskedURI:v16 properties:v18];

      [*(a1 + 32) _addPseudonym:v19];
      v20 = *(*(a1 + 56) + 16);
    }

    else
    {
      v22 = *(a1 + 56);
      v19 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:300 userInfo:0];
      v20 = *(v22 + 16);
    }

    v20();
  }

  else
  {
    if (v10)
    {
      v21 = v10;
    }

    else
    {
      v23 = 200;
      if (a3 == 6011)
      {
        v23 = 700;
      }

      if (a3 == 20000)
      {
        v24 = 800;
      }

      else
      {
        v24 = v23;
      }

      v21 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:v24 userInfo:0];
    }

    v11 = v21;
    (*(*(a1 + 56) + 16))();
  }
}

void sub_1004FD494(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, void *a6)
{
  v21 = a5;
  v10 = a6;
  [*(a1 + 32) _handlePseudonymProvisionError:a3];
  if (a4)
  {
    v11 = [v21 objectForKey:@"expiry-epoch-seconds"];
    if (v11)
    {
      v12 = *(a1 + 40);
      v13 = [v12 properties];
      [v11 doubleValue];
      v14 = [v13 withUpdatedExpiryEpoch:?];
      v15 = [v12 withUpdatedProperties:v14];

      [*(a1 + 32) _addPseudonym:v15];
      v16 = *(*(a1 + 48) + 16);
    }

    else
    {
      v18 = *(a1 + 48);
      v15 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:300 userInfo:0];
      v16 = *(v18 + 16);
    }

    v16();
  }

  else
  {
    if (v10)
    {
      v17 = v10;
    }

    else
    {
      v19 = 200;
      if (a3 == 6011)
      {
        v19 = 700;
      }

      if (a3 == 20000)
      {
        v20 = 800;
      }

      else
      {
        v20 = v19;
      }

      v17 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:v20 userInfo:0];
    }

    v11 = v17;
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1004FD7B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a6;
  [*(a1 + 32) _handlePseudonymProvisionError:a3];
  if (a4)
  {
    v12 = [v10 _numberForKey:@"deleted"];
    v13 = v12;
    if (v12 && ([v12 BOOLValue] & 1) == 0)
    {
      v14 = +[IMRGLog registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 40);
        v16 = [*(a1 + 32) uniqueID];
        v21 = 138412546;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Server indicated we are out of sync with pseudonyms, kicking deletion {pseudonym: %@, uniqueID: %@}", &v21, 0x16u);
      }

      [*(a1 + 32) _updateHandles:1];
    }

    [*(a1 + 32) _removePseudonym:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v11)
    {
      v17 = v11;
    }

    else
    {
      v18 = 200;
      if (a3 == 6011)
      {
        v18 = 700;
      }

      if (a3 == 20000)
      {
        v19 = 800;
      }

      else
      {
        v19 = v18;
      }

      v17 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:v19 userInfo:0];
    }

    v20 = v17;
    (*(*(a1 + 48) + 16))();
    if (a3 == 6005 || a3 == 1)
    {
      [*(a1 + 32) _removePseudonym:*(a1 + 40)];
    }
  }
}

uint64_t sub_1004FDED0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = kIDSServiceDefaultsURIKey;
  v5 = [v3 objectForKey:kIDSServiceDefaultsURIKey];
  if (v5)
  {
    v6 = [v3 objectForKey:v4];
    v7 = [*(a1 + 32) URI];
    v8 = [v7 prefixedURI];
    v9 = [v6 isEqualToString:v8] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1004FE3E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = kIDSServiceDefaultsURIKey;
  v5 = [v3 objectForKey:kIDSServiceDefaultsURIKey];
  if (v5)
  {
    v6 = [v3 objectForKey:v4];
    v7 = [*(a1 + 32) URI];
    v8 = [v7 prefixedURI];
    v9 = [v6 isEqualToString:v8] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1004FECCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a6;
  [*(a1 + 32) _handleKTOptInStatusUpdateError:a3];
  v12 = objc_alloc_init(NSMutableArray);
  v13 = objc_alloc_init(NSMutableDictionary);
  if (+[IMUserDefaults keyTransparencyDropOptInMessageAfterSending]&& CUTIsInternalInstall())
  {
    v14 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Dropping Opt In/Out server response because user default is set.", buf, 2u);
    }

    v15 = [*(*(a1 + 32) + 24) identifier];
    v16 = [v15 isEqualToString:@"com.apple.madrid"];

    if (v16)
    {
      v58 = v11;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v17 = [*(a1 + 32) vettedAliases];
      v18 = [v17 countByEnumeratingWithState:&v71 objects:v85 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v72;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v72 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [[IDSURI alloc] initWithPrefixedURI:*(*(&v71 + 1) + 8 * i)];
            [v12 addObject:v22];
          }

          v19 = [v17 countByEnumeratingWithState:&v71 objects:v85 count:16];
        }

        while (v19);
      }

      v11 = v58;
    }

    v23 = -8005;
    goto LABEL_44;
  }

  if ((a4 & 1) == 0)
  {
    v44 = [*(*(a1 + 32) + 24) identifier];
    v45 = [v44 isEqualToString:@"com.apple.madrid"];

    if (v45)
    {
      v57 = a1;
      v60 = v11;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v46 = [*(a1 + 32) vettedAliases];
      v47 = [v46 countByEnumeratingWithState:&v67 objects:v84 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v68;
        do
        {
          for (j = 0; j != v48; j = j + 1)
          {
            if (*v68 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = [[IDSURI alloc] initWithUnprefixedURI:*(*(&v67 + 1) + 8 * j)];
            [v12 addObject:v51];
          }

          v48 = [v46 countByEnumeratingWithState:&v67 objects:v84 count:16];
        }

        while (v48);
      }

      a1 = v57;
      v11 = v60;
    }

    if (a3 == 6013)
    {
      v23 = -8101;
    }

    else
    {
      if (v11)
      {
        v52 = v11;
LABEL_45:
        v25 = v52;
        v38 = *(a1 + 40);
        v39 = [IDSKTOptInResult alloc];
        v40 = 0;
        v41 = v12;
        v42 = v13;
        v43 = v25;
        goto LABEL_46;
      }

      v23 = -8100;
    }

LABEL_44:
    v52 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:v23 userInfo:0];
    goto LABEL_45;
  }

  v24 = [v10 objectForKeyedSubscript:@"kt-opt-in-results"];
  v25 = [v24 firstObject];

  if (v25)
  {
    v56 = a1;
    v59 = v11;
    theDict = v13;
    v26 = v12;
    v54 = v25;
    v55 = v10;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = [v25 objectForKeyedSubscript:@"uris"];
    v27 = [obj countByEnumeratingWithState:&v63 objects:v83 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v64;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v64 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v63 + 1) + 8 * k);
          v32 = [v31 objectForKey:@"uri"];
          v33 = [v31 objectForKey:@"kt-blob"];
          v34 = [v31 objectForKey:@"status"];
          v35 = [v31 objectForKey:@"kt-status"];
          v36 = +[IDSFoundationLog KeyTransparency];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            v76 = v32;
            v77 = 2112;
            v78 = v33;
            v79 = 2112;
            v80 = v34;
            v81 = 2112;
            v82 = v35;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "KT Opt In/Out Result Response. {URI: %@, SMT: %@, IDS Server Status: %@, KT Server Status: %@}", buf, 0x2Au);
          }

          v37 = [[IDSURI alloc] initWithPrefixedURI:v32];
          [v26 addObject:v37];
          if (v33)
          {
            CFDictionarySetValue(theDict, v37, v33);
          }
        }

        v28 = [obj countByEnumeratingWithState:&v63 objects:v83 count:16];
      }

      while (v28);
    }

    v10 = v55;
    a1 = v56;
    v11 = v59;
    v12 = v26;
    v13 = theDict;
    v25 = v54;
  }

  v38 = *(a1 + 40);
  v39 = [IDSKTOptInResult alloc];
  v40 = 1;
  v41 = v12;
  v42 = v13;
  v43 = 0;
LABEL_46:
  v53 = [v39 initWithSuccess:v40 optedInOutURIs:v41 serverSMTByURI:v42 error:v43];
  (*(v38 + 16))(v38, v53);
}

void sub_1004FF5EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a6;
  [*(a1 + 32) _handleKTOptInStatusUpdateError:a3];
  v12 = objc_alloc_init(NSMutableArray);
  v13 = objc_alloc_init(NSMutableDictionary);
  if (+[IMUserDefaults keyTransparencyDropOptInMessageAfterSending]&& CUTIsInternalInstall())
  {
    v14 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Dropping Opt In/Out server response because user default is set.", buf, 2u);
    }

    v15 = [*(*(a1 + 32) + 24) identifier];
    v16 = [v15 isEqualToString:@"com.apple.madrid"];

    if (v16)
    {
      v61 = v11;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v17 = [*(a1 + 32) vettedAliases];
      v18 = [v17 countByEnumeratingWithState:&v74 objects:v90 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v75;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v75 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [[IDSURI alloc] initWithPrefixedURI:*(*(&v74 + 1) + 8 * i)];
            [v12 addObject:v22];
          }

          v19 = [v17 countByEnumeratingWithState:&v74 objects:v90 count:16];
        }

        while (v19);
      }

      v11 = v61;
    }

    v23 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-8005 userInfo:0];
    v24 = *(a1 + 40);
    v25 = [IDSKTOptInResult alloc];
    v26 = 0;
    v27 = v12;
    v28 = v13;
    v29 = v23;
LABEL_30:
    v43 = [v25 initWithSuccess:v26 optedInOutURIs:v27 serverSMTByURI:v28 error:v29];
    (*(v24 + 16))(v24, v43);
    goto LABEL_50;
  }

  if (a4)
  {
    v30 = [v10 objectForKeyedSubscript:@"kt-opt-in-results"];
    v23 = [v30 firstObject];

    if (v23)
    {
      v59 = a1;
      v62 = v11;
      theDict = v13;
      v31 = v12;
      v57 = v23;
      v58 = v10;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = [v23 objectForKeyedSubscript:@"uris"];
      v32 = [obj countByEnumeratingWithState:&v66 objects:v86 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v67;
        do
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v67 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v66 + 1) + 8 * j);
            v37 = [v36 objectForKey:@"uri"];
            v38 = [v36 objectForKey:@"kt-blob"];
            v39 = [v36 objectForKey:@"status"];
            v40 = [v36 objectForKey:@"kt-status"];
            v41 = +[IDSFoundationLog KeyTransparency];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138413058;
              v79 = v37;
              v80 = 2112;
              v81 = v38;
              v82 = 2112;
              v83 = v39;
              v84 = 2112;
              v85 = v40;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "KT Opt In/Out Result Response. {URI: %@, SMT: %@, IDS Server Status: %@, KT Server Status: %@}", buf, 0x2Au);
            }

            v42 = [[IDSURI alloc] initWithPrefixedURI:v37];
            [v31 addObject:v42];
            if (v38)
            {
              CFDictionarySetValue(theDict, v42, v38);
            }
          }

          v33 = [obj countByEnumeratingWithState:&v66 objects:v86 count:16];
        }

        while (v33);
      }

      v10 = v58;
      a1 = v59;
      v11 = v62;
      v12 = v31;
      v13 = theDict;
      v23 = v57;
    }

    v24 = *(a1 + 40);
    v25 = [IDSKTOptInResult alloc];
    v26 = 1;
    v27 = v12;
    v28 = v13;
    v29 = 0;
    goto LABEL_30;
  }

  v63 = v11;
  v44 = [*(*(a1 + 32) + 24) identifier];
  v45 = [v44 isEqualToString:@"com.apple.madrid"];

  if (v45)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v60 = a1;
    v46 = [*(a1 + 32) vettedAliases];
    v47 = [v46 countByEnumeratingWithState:&v70 objects:v89 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v71;
      do
      {
        for (k = 0; k != v48; k = k + 1)
        {
          if (*v71 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = [[IDSURI alloc] initWithUnprefixedURI:*(*(&v70 + 1) + 8 * k)];
          [v12 addObject:v51];
        }

        v48 = [v46 countByEnumeratingWithState:&v70 objects:v89 count:16];
      }

      while (v48);
    }

    a1 = v60;
  }

  v52 = [NSError errorWithDomain:FTErrorDomain code:a3 userInfo:0];
  v43 = v52;
  if (v52)
  {
    v87 = NSUnderlyingErrorKey;
    v88 = v52;
    v53 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
  }

  else
  {
    v53 = 0;
  }

  if (a3 == 6013)
  {
    v23 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-8101 userInfo:0];
    v11 = v63;
  }

  else
  {
    if (v63)
    {
      v54 = v63;
    }

    else
    {
      v54 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-8100 userInfo:v53];
    }

    v23 = v54;
    v11 = v63;
  }

  v55 = *(a1 + 40);
  v56 = [[IDSKTOptInResult alloc] initWithSuccess:0 optedInOutURIs:v12 serverSMTByURI:v13 error:v23];
  (*(v55 + 16))(v55, v56);

LABEL_50:
}

void sub_1004FFFF8(id a1, IDSDeliveryContext *a2)
{
  v2 = a2;
  v3 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSDeliveryContext *)v2 idsResponseCode];
    v5 = [(IDSDeliveryContext *)v2 responseError];
    v6 = 134218242;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished sending 132 to peers with response { code: %ld error: %@ }", &v6, 0x16u);
  }
}

void sub_1005004E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSDaemon sharedInstance];
  v5 = [v3 service];
  v6 = [v5 pushTopic];
  v7 = [v4 registrationBroadcasterForTopic:v6 messageContext:*(a1 + 32)];

  if (IMShouldLog() && v7)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) smallDescription];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcasting refresh registration for account %@", &v11, 0xCu);
    }
  }

  v10 = [v3 uniqueID];
  [v7 refreshRegistrationForAccount:v10];
}

void sub_10050201C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 lastCall])
  {
    v4 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v3 idsResponseCode];
      v7 = [v3 responseError];
      v11 = 138412802;
      v12 = v5;
      v13 = 2048;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished sending 133 with GUID: %@ and response { code: %ld error: %@ }", &v11, 0x20u);
    }

    v8 = [v3 idsResponseCode];
    v9 = *(a1 + 40);
    if (v8)
    {
      v10 = [v3 responseError];
      (*(v9 + 16))(v9, 0, v10);
    }

    else
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }
}

uint64_t sub_10050218C(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  *(a2 + 12) = 2080;
  return result;
}

void sub_1005021A0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_1005036C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 accountController];
  v4 = [v3 uniqueID];

  [v5 enableAccountWithUniqueID:v4];
}

void sub_10050373C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) registrationStatus];
  if (v3 != -1 && v3 != 5)
  {
    [v5 registerAccount];
  }
}

void sub_100503C14(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accountController];
  [v4 removeAccount:v3];
}

id sub_1005043C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = kIDSServiceDefaultsInvisibleAliasesKey;
  v5 = [*(a1 + 32) objectForKey:kIDSServiceDefaultsInvisibleAliasesKey];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [v3 invisibleAliases];
  v8 = [v7 count];

  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [NSSet alloc];
  v10 = [*(a1 + 32) objectForKey:v4];
  v11 = [v9 initWithArray:v10];

  v12 = [NSMutableSet alloc];
  v13 = [v3 invisibleAliases];
  v14 = [v12 initWithArray:v13];

  [v14 unionSet:v11];
  if ([v14 isEqualToSet:v11])
  {

LABEL_5:
    v15 = *(a1 + 32);
    goto LABEL_6;
  }

  v15 = [*(a1 + 32) mutableCopy];
  v17 = [v14 allObjects];
  [v15 setObject:v17 forKey:v4];

LABEL_6:

  return v15;
}

void sub_100504D74(id a1)
{
  v1 = *IMWeakLinkSymbol();
  qword_100CBD680 = v1;
  if (v1)
  {

    CFRetain(v1);
  }
}

void sub_100504DC4(id a1)
{
  v1 = *IMWeakLinkSymbol();
  qword_100CBD690 = v1;
  if (v1)
  {

    CFRetain(v1);
  }
}

const __CFString *sub_100504E14(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100BDF260 + a1);
  }
}

id sub_100504E38(void *a1)
{
  v1 = [a1 __imHexString];
  v2 = [v1 lowercaseString];

  return v2;
}

void sub_100504EC8(id a1)
{
  v1 = objc_alloc_init(IDSServerStorageStateMachine);
  v2 = qword_100CBD6A0;
  qword_100CBD6A0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1005061E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 idsResponseCode])
  {
    [*(a1 + 48) terminateStateMachineForTopic:*(a1 + 40) withReason:3];
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = [v3 idsResponseCode];
      v8 = [v3 responseError];
      *buf = 138413058;
      v20 = v6;
      v21 = 2112;
      v22 = v5;
      v23 = 2048;
      v24 = v7;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed sending pending message request response (guid: %@) for topic %@. Result code %ld. Error %@.", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v3 idsResponseCode];
      v18 = [v3 responseError];
      _IDSLogV();
    }
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = [v3 responseError];
      *buf = 138412802;
      v20 = v11;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Finished sending storage request response (guid: %@) for topic %@ responseError: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      [v3 responseError];
      v17 = v16 = v14;
      v15 = v13;
      _IDSLogV();
    }

    if ([*(a1 + 48) currentStateForTopic:{*(a1 + 40), v15, v16, v17}] == 2)
    {
      [*(a1 + 48) updateStateForTopic:*(a1 + 40) newState:3];
      [*(a1 + 48) _startServerResponseTimeoutTimerForTopic:*(a1 + 40) ssm:*(a1 + 56)];
    }
  }
}

void sub_100508928(id a1, NSString *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Triggered Auto Bug Capture for client time out {session : %@, error: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

const __CFString *sub_10050A848(int a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Disabled";
  }

  else
  {
    return *(&off_100BDF290 + (a1 - 1));
  }
}

id sub_10050AADC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[3])
  {
    [v2 initSKPresenceObject];
    v2 = *(a1 + 32);
  }

  result = [v2 isMonitoring];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) _subscribe];
    v4 = *(a1 + 32);

    return [v4 setIsMonitoring:1];
  }

  return result;
}

void *sub_10050ABCC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[3])
  {
    result = [result isMonitoring];
    if (result)
    {
      [*(a1 + 32) _unsubscribe];
      [*(a1 + 32) setIsMonitoring:0];
      v3 = *(a1 + 32);

      return [v3 releaseSKPresenceObjectIfPossible];
    }
  }

  return result;
}

id sub_10050ACBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[3])
  {
    [v2 initSKPresenceObject];
    v2 = *(a1 + 32);
  }

  result = [v2 isAssertingPresence];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) _assertPresence];
    v4 = *(a1 + 32);

    return [v4 setIsAssertingPresence:1];
  }

  return result;
}

void *sub_10050ADAC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[3])
  {
    result = [result isAssertingPresence];
    if (result)
    {
      [*(a1 + 32) _releasePresence];
      [*(a1 + 32) setIsAssertingPresence:0];
      v3 = *(a1 + 32);

      return [v3 releaseSKPresenceObjectIfPossible];
    }
  }

  return result;
}

void sub_10050B0B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10050B170;
  v7[3] = &unk_100BD6E40;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_10050B170(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[IDSFoundationLog IPsecLink];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "presence: could not assert due to error %@", &v7, 0xCu);
    }

    *(*(a1 + 40) + 12) = 1;
    *(*(a1 + 40) + 9) = 0;
  }

  else
  {
    if (v4)
    {
      v6 = [*(*(a1 + 40) + 24) presenceIdentifier];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "presence: succesfully asserted for %@", &v7, 0xCu);
    }
  }
}

void sub_10050B340(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IPsecLink];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      v6 = "presence: could not release assertion due to error %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    v6 = "presence: succesfully released for %@";
    goto LABEL_6;
  }
}

void sub_10050B4AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10050B564;
  v7[3] = &unk_100BD6E40;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_10050B564(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[IDSFoundationLog IPsecLink];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "presence: could not subscribe due to error %@", &v9, 0xCu);
    }

    *(*(a1 + 40) + 12) = 1;
    *(*(a1 + 40) + 8) = 0;
  }

  else
  {
    if (v4)
    {
      v6 = [*(*(a1 + 40) + 24) presenceIdentifier];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "presence: succesfully subscribed for %@", &v9, 0xCu);
    }

    v7 = +[IDSFoundationLog IPsecLink];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(*(a1 + 40) + 24) presentDevices];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "presence: current devices: %@", &v9, 0xCu);
    }
  }
}

void sub_10050B7A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IPsecLink];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      v6 = "presence: could not release subscription due to error %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    v6 = "presence: succesfully released subscription for %@";
    goto LABEL_6;
  }
}

uint64_t sub_10050BCCC(uint64_t result, unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = (result + 1);
    do
    {
      v6 = *a2++;
      v5 = v6;
      v7 = v6 & 0xF;
      v8 = (v6 >> 4) + 55;
      v9 = (v6 >> 4) | 0x30;
      if (v6 >= 0xA0)
      {
        LOBYTE(v9) = v8;
      }

      *(v4 - 1) = v9;
      if (v7 >= 0xA)
      {
        v10 = v7 + 55;
      }

      else
      {
        v10 = v5 & 0xF | 0x30;
      }

      *v4 = v10;
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  *(result + 2 * a3) = 0;
  return result;
}

uint64_t sub_10050BD28(uint64_t a1)
{
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 264);
  if (v2)
  {
    CCCryptorRelease(v2);
    *(a1 + 264) = 0;
    *(a1 + 272) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 432) = 0u;
    *(a1 + 448) = 0u;
    *(a1 + 464) = 0u;
    *(a1 + 480) = 0u;
    *(a1 + 496) = 0u;
    *(a1 + 512) = 0u;
    *(a1 + 528) = 0u;
    *(a1 + 544) = 0u;
    *(a1 + 560) = 0u;
    *(a1 + 576) = 0u;
    *(a1 + 592) = 0u;
    *(a1 + 608) = 0u;
    *(a1 + 624) = 0u;
    *(a1 + 640) = 0u;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0;
  }

  v3 = *(a1 + 256);
  if (v3)
  {
    free(v3);
  }

  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  sub_10050BDC4((a1 + 2288));
  return 0;
}

void sub_10050BDC4(void ***a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*v2)
    {
      free(*v2);
      v2 = *a1;
    }

    free(v2);
  }
}

uint64_t sub_10050BE1C(void *key, uint64_t a2, _OWORD *a3, void *a4)
{
  v8 = 0;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  dataIn[0] = v9;
  dataIn[1] = v9;
  dataOut = v9;
  v24 = v9;
  v10 = *(a2 + 7);
  v11 = 1;
  v12 = dataIn;
  do
  {
    v13 = v11;
    *v12 = *a2;
    *(v12 + 6) = *(a2 + 6);
    *(v12 + 14) = 0;
    *(v12 + 15) = v8;
    *(v12++ + 7) = v10;
    v8 = 1;
    v11 = 0;
  }

  while ((v13 & 1) != 0);
  dataOutMoved = 0xAAAAAAAAAAAAAAAALL;
  v14 = CCCrypt(0, 0, 0, key, 0x10uLL, 0, dataIn, 0x20uLL, &dataOut, 0x20uLL, &dataOutMoved);
  if (v14)
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CCCrypt failed with status: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  v16 = v24;
  *a3 = dataOut;
  a3[1] = v16;
  *&dataIn[0] = *a2;
  *(dataIn + 6) = *(a2 + 6);
  HIWORD(dataIn[0]) = 0;
  BYTE7(dataIn[0]) = *(a2 + 7) ^ 2;
  result = CCCrypt(0, 0, 0, key, 0x10uLL, 0, dataIn, 0x10uLL, &dataOut, 0x10uLL, &dataOutMoved);
  v18 = result;
  if (result)
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "CCCrypt failed with status: %d", buf, 8u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      _IDSWarnV();
      _IDSLogV();
      result = _IDSLogTransport();
    }
  }

  *a4 = dataOut;
  *(a4 + 6) = *(&dataOut + 6);
  return result;
}

uint64_t sub_10050C140(uint64_t a1, _OWORD *a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0x100004077774924uLL);
  *(a1 + 248) = 32;
  *(a1 + 256) = v4;
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  result = CCCryptorCreateFromData(0, 0, 2u, *(a1 + 256), 0x20uLL, 0, (a1 + 272), 0x194uLL, (a1 + 264), &v7);
  if (result == -4301)
  {
    return CCCryptorCreate(0, 0, 2u, *(a1 + 256), 0x20uLL, 0, (a1 + 264));
  }

  return result;
}

uint64_t sub_10050C200(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a3 > 0x640)
  {
    return 4294967291;
  }

  v5 = *(a1 + 138);
  v6 = a2 >= v5;
  v8 = a2 - v5;
  v7 = a2 > v5;
  v9 = *(a1 + 132);
  if (v8 < 0)
  {
    v10 = v7;
    v9 -= v10;
  }

  else
  {
    if (!v6)
    {
      v6 = __CFADD__(v9++, 1);
      *(a1 + 132) = v9;
      if (v6)
      {
        *(a1 + 4) = 1;
        return 0xFFFFFFFFLL;
      }
    }

    *(a1 + 138) = a2;
  }

  dataOutAvailable = (a3 + 15) & 0xFF0;
  v12 = (a1 + 682);
  v13 = *(a1 + 128);
  *(&v20 + 6) = *(a1 + 216);
  *&v20 = *(a1 + 210);
  v14 = vshl_u32(vdup_n_s32(v9), 0xFFFFFFF0FFFFFFE8);
  v15 = vshl_u32(vdup_n_s32(v13), 0xFFFFFFF0FFFFFFE8);
  v15.i8[1] = v15.i8[4];
  v15.i8[2] = BYTE1(v13);
  v15.i8[3] = v13;
  v15.i8[4] = v14.i8[0];
  v15.i8[5] = v14.i8[4];
  v15.i8[6] = BYTE1(v9);
  v15.i8[7] = v9;
  *(&v20 + 4) = veor_s8(*(&v20 + 4), v15);
  v16 = 8;
  if (!*(a1 + 2284))
  {
    v16 = 1;
  }

  BYTE12(v20) ^= a2 >> v16;
  BYTE13(v20) ^= a2;
  HIWORD(v20) = 0;
  if (dword_100CD3D64)
  {
    memset(__b, 170, sizeof(__b));
    --dword_100CD3D64;
    sub_10050BCCC(__b, &v20, 16);
    fprintf(__stderrp, "  counters: [%s]\n", __b);
  }

  *v12 = v20;
  if (dataOutAvailable >= 0x11)
  {
    v17 = a1 + 698;
    do
    {
      *v17 = *(v17 - 16);
      v18 = (*(v17 + 15))++ + 1;
      if ((v18 & 0x100) != 0)
      {
        ++*(v17 + 14);
      }

      v17 += 16;
    }

    while (v17 < v12 + dataOutAvailable);
  }

  __b[0] = 0xAAAAAAAAAAAAAAAALL;
  v19 = *(a1 + 264);
  if (v19 && !CCCryptorReset(v19, 0))
  {
    CCCryptorUpdate(*(a1 + 264), (a1 + 682), dataOutAvailable, (a1 + 682), dataOutAvailable, __b);
  }

  else
  {
    CCCrypt(0, 0, 2u, *(a1 + 256), 0x20uLL, 0, (a1 + 682), dataOutAvailable, (a1 + 682), dataOutAvailable, __b);
  }

  return 0;
}

uint64_t sub_10050C468(uint64_t a1, unsigned int a2, unsigned __int8 *a3, signed int a4)
{
  if (a4)
  {
    result = sub_10050C200(a1, a2, a4);
    if (result)
    {
      return result;
    }

    if (dword_100CD3D64 >= 1)
    {
      v20 = -1431655766;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v18 = v8;
      v19 = v8;
      v16 = v8;
      v17 = v8;
      v14 = v8;
      v15 = v8;
      sub_10050BCCC(&v14, (a1 + 682), 8);
      fprintf(__stderrp, "  iLen=%d KS=[%s]", a4, &v14);
      sub_10050BCCC(&v14, a3, 8);
      fprintf(__stderrp, " In=[%s]", &v14);
    }

    if (a4 >= 1)
    {
      v9 = (a1 + 682);
      v10 = a4 + 1;
      v11 = a3;
      do
      {
        v12 = *v9++;
        *v11++ ^= v12;
        --v10;
      }

      while (v10 > 1);
    }

    if (dword_100CD3D64 >= 1)
    {
      v20 = -1431655766;
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v18 = v13;
      v19 = v13;
      v16 = v13;
      v17 = v13;
      v14 = v13;
      v15 = v13;
      sub_10050BCCC(&v14, a3, 8);
      fprintf(__stderrp, " Out=[%s]\n", &v14);
    }
  }

  return 0;
}

uint64_t sub_10050C5E0(_DWORD *a1, uint64_t a2, int a3, int a4, int a5, __int16 a6, int a7, __int16 a8, int a9)
{
  if (a3 > 59)
  {
    bzero(a1, 0x11F0uLL);
    v19 = 37;
    if (a4)
    {
      v20 = 37;
    }

    else
    {
      v20 = 611;
    }

    if (a4)
    {
      v21 = 41;
    }

    else
    {
      v21 = 615;
    }

    if (a4)
    {
      v19 = 611;
    }

    *&a1[v20] = *a2;
    v22 = &a1[v21];
    v23 = *(a2 + 16);
    *(v22 + 6) = *(a2 + 22);
    *v22 = v23;
    *&a1[v19] = *(a2 + 30);
    if (a4)
    {
      v24 = 615;
    }

    else
    {
      v24 = 41;
    }

    v25 = &a1[v24];
    v26 = *(a2 + 46);
    *(v25 + 6) = *(a2 + 52);
    *v25 = v26;
    a1[32] = a5;
    *(a1 + 68) = a6;
    a1[606] = a7;
    *(a1 + 1216) = a8;
    a1[1145] = a9;
    a1[571] = a9;
    v27 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = a1[32];
      v29 = *(a1 + 68);
      v30 = a1[606];
      v31 = *(a1 + 1216);
      *buf = 67110144;
      v34 = a9;
      v35 = 1024;
      v36 = v28;
      v37 = 1024;
      v38 = v29;
      v39 = 1024;
      v40 = v30;
      v41 = 1024;
      v42 = v31;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "encryption setup (v%d):\n\tsend ssrc:%08x start-seq:%04x\n\trecv ssrc:%08x start-seq:%04x", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    sub_10050BE1C(a1 + 37, (a1 + 41), (a1 + 178), (a1 + 210));
    sub_10050C140(a1, (a1 + 178));
    sub_10050BE1C(a1 + 611, (a1 + 615), (a1 + 2474), (a1 + 2506));
    sub_10050C140((a1 + 574), (a1 + 2474));
    *a1 |= 2u;
    a1[574] |= 4u;
    v32 = sub_10050C990();
    result = 0;
    *(a1 + 573) = v32;
  }

  else
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v34 = a3;
      v35 = 1024;
      v36 = 60;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IDSStreamEncryption_Init not enough key material bytes: have %d but need %d", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    return 1;
  }

  return result;
}

_WORD *sub_10050C990()
{
  v0 = malloc_type_malloc(0x10uLL, 0x1010040A08D555BuLL);
  if (!v0)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Malloc Failed to allocate replayWindow!", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      return 0;
    }

LABEL_13:
    _IDSLogV();
    return 0;
  }

  v1 = v0;
  v0[4] = 8;
  v2 = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
  *v1 = v2;
  if (!v2)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Malloc Failed to allocate replayWindow->list!", v6, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      return 0;
    }

    goto LABEL_13;
  }

  v1[5] = 0;
  *(v1 + 12) = 0;
  __memset_chk();
  return v1;
}

uint64_t sub_10050CB5C(uint64_t a1)
{
  sub_10050BD28(a1);
  sub_10050BD28(a1 + 2296);
  return 0;
}

uint64_t sub_10050CB8C(uint64_t a1, unsigned int a2, unsigned __int8 *a3, signed int a4, int a5)
{
  v8 = a1;
  if (a5)
  {
    if (a5 != 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = a1 + 2296;
  }

  if (*v8)
  {
    if (*(v8 + 4))
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "srtp rollover counter reached end - hard stop before reusing key", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }

      return 2;
    }

    else
    {
      if (a5)
      {
        goto LABEL_21;
      }

      v12 = *(v8 + 2288);
      if (!v12)
      {
        return 3;
      }

      if (sub_10050CEA0(v12, a2))
      {
LABEL_21:

        return sub_10050C468(v8, a2, a3, a4);
      }

      else
      {
        v13 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(*(v8 + 2288) + 10);
          *buf = 67109376;
          v16 = v14;
          v17 = 1024;
          v18 = a2;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "packet with sequence number: %u->%u dropped by replay protection", buf, 0xEu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        return 4;
      }
    }
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "srtp not initialized for transform", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    return 1;
  }
}

uint64_t sub_10050CEA0(uint64_t a1, int a2)
{
  if (*(a1 + 12) == 1)
  {
    v4 = *(a1 + 10);
  }

  else
  {
    v4 = a2 - 1;
    *(a1 + 10) = a2 - 1;
    *(a1 + 12) = 1;
  }

  v5 = (a2 - v4);
  if (v5 < 1)
  {
    if (v5 == -32768)
    {
      LOWORD(v9) = 0x7FFF;
    }

    else
    {
      v9 = -v5;
    }

    v10 = v9;
    if (v9 >= 0x200u)
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 10);
        *buf = 67109632;
        v22 = v12;
        v23 = 1024;
        v24 = a2;
        v25 = 1024;
        v26 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "packet too old. seq(%u->%u) = -%u", buf, 0x14u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog();
        if (result)
        {
          goto LABEL_41;
        }
      }

      return result;
    }

    v13 = v9 >> 6;
    if (v10 >> 6 >= *(a1 + 8) || (v14 = *(*a1 + 8 * v13), (v14 & (1 << v10)) != 0))
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 10);
        *buf = 67109632;
        v22 = v16;
        v23 = 1024;
        v24 = a2;
        v25 = 1024;
        v26 = v10;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "IDSStreamEncryption_GetbitReplayList returned YES. seq(%u->%u) = -%u", buf, 0x14u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog();
        if (result)
        {
          goto LABEL_41;
        }
      }

      return result;
    }

    *(*a1 + 8 * v13) = v14 | (1 << v10);
    return 1;
  }

  if (v5 > 0x1FF)
  {
    bzero(*a1, 8 * *(a1 + 8));
    if (!*(a1 + 8))
    {
      v19 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 10);
        *buf = 67109632;
        v22 = v20;
        v23 = 1024;
        v24 = a2;
        v25 = 1024;
        v26 = v5;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "IDSStreamEncryption_SetbitReplayList after clear returned NO. seq(%u->%u) = %u", buf, 0x14u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog();
        if (result)
        {
          goto LABEL_41;
        }
      }

      return result;
    }

LABEL_23:
    **a1 |= 1uLL;
    *(a1 + 10) = a2;
    return 1;
  }

  if ((sub_10050D3E8(a1, (a2 - v4)) & 1) == 0)
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 10);
      *buf = 67109632;
      v22 = v18;
      v23 = 1024;
      v24 = a2;
      v25 = 1024;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "IDSStreamEncryption_LeftShiftReplayList returned NO. seq(%u->%u) = %u", buf, 0x14u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        goto LABEL_41;
      }
    }

    return result;
  }

  if (*(a1 + 8))
  {
    goto LABEL_23;
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 10);
    *buf = 67109632;
    v22 = v7;
    v23 = 1024;
    v24 = a2;
    v25 = 1024;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDSStreamEncryption_SetbitReplayList returned NO. seq(%u->%u) = %u", buf, 0x14u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLog();
    if (result)
    {
LABEL_41:
      _IDSLogV();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10050D3E8(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2 >= 0x40)
  {
    v5 = a2 >> 6;
    if (v5 >= v4)
    {
      return 0;
    }

    v6 = *a1;
    v7 = v4 - 1;
    v8 = *a1 - 8 * v5;
    do
    {
      v6[v7] = *(v8 + 8 * v7);
    }

    while (v7-- > v5);
    bzero(v6, 8 * (v5 - 1) + 8);
  }

  if (v4)
  {
    v10 = 0;
    v11 = *a1;
    do
    {
      v12 = (*v11 << (v2 & 0x3F)) | (v10 >> (64 - (v2 & 0x3Fu)));
      v10 = *v11 & (-1 << -(v2 & 0x3F));
      *v11++ = v12;
      --v4;
    }

    while (v4);
  }

  return 1;
}

NSString *__cdecl sub_10050EED4(id a1, IDSUserDescription *a2)
{
  v2 = [(IDSUserDescription *)a2 user];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

NSString *__cdecl sub_10050EF24(id a1, IDSUserDescription *a2)
{
  v2 = [(IDSUserDescription *)a2 user];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

id sub_10050EFE4(uint64_t a1)
{
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received selectedSubscriptionLabelDidChange", v4, 2u);
  }

  return [*(a1 + 32) _setupForCurrentSubscriptionState];
}

id sub_10050F148(uint64_t a1)
{
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received SIMInformationDidChange", v4, 2u);
  }

  return [*(a1 + 32) _setupForCurrentSubscriptionState];
}

char *sub_10050F958(uint64_t a1, uint64_t a2)
{
  v3 = 2000;
  if (a2 < 2000)
  {
    v3 = a2;
  }

  result = byte_100CBD6A8;
  if (a2 < 1)
  {
    v16 = 0;
    goto LABEL_18;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *(a1 + v5);
    v8 = (v7 >> 4) + 87;
    if (v7 < 0xA0)
    {
      LOBYTE(v8) = (*(a1 + v5) >> 4) | 0x30;
    }

    v9 = v7 & 0xF;
    v10 = v7 & 0xF | 0x30;
    v11 = (v7 & 0xF) + 87;
    if (v9 >= 0xA)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = &byte_100CBD6A8[v6];
    *v13 = v8;
    v14 = v6 + 2;
    v13[1] = v12;
    if ((~v5 & 0xF) != 0)
    {
      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }

      v15 = 32;
    }

    else
    {
      v15 = 10;
    }

    byte_100CBD6A8[v14] = v15;
    LODWORD(v14) = v6 + 3;
LABEL_15:
    ++v5;
    v6 = v14;
  }

  while (v3 != v5);
  v16 = v14;
LABEL_18:
  byte_100CBD6A8[v16] = 0;
  return result;
}

void sub_10050FA10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v5 = os_channel_available_slot_count();
  v6 = &IDSRegistrationControlErrorDomain_ptr;
  if (v5)
  {
    v37 = v4;
    v36 = v5;
    v7 = v5;
    while (1)
    {
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v52 = v8;
      v53 = v8;
      *v50 = v8;
      v51 = v8;
      os_channel_get_next_slot();
      if (!os_channel_slot_get_packet())
      {
        v27 = [v6[240] Multiplexer];
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        *buf = 67109120;
        *v39 = v36;
        v28 = "readOSChannel - have slots %u no packet to read!";
        v29 = v27;
        v30 = 8;
LABEL_73:
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
LABEL_74:

LABEL_75:
        v31 = os_channel_advance_slot();
        v4 = v37;
        if (v31)
        {
          v32 = v31;
          v33 = +[IDSFoundationLog Multiplexer];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *v50 = 67109120;
            *&v50[4] = v32;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "os_channel_advance_slot failed for read %d", v50, 8u);
          }
        }

        v34 = os_channel_sync();
        if (v34)
        {
          v35 = v34;
          v23 = +[IDSFoundationLog Multiplexer];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *v50 = 67109120;
            *&v50[4] = v35;
            v24 = "os_channel_sync for RX failed %d";
            v25 = v23;
            v26 = 8;
LABEL_82:
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, v50, v26);
          }

          goto LABEL_83;
        }

        goto LABEL_84;
      }

      if (!os_packet_get_next_buflet())
      {
        v27 = [v6[240] Multiplexer];
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        *buf = 0;
        v28 = "readOSChannel - have packet but no buflet!";
LABEL_72:
        v29 = v27;
        v30 = 2;
        goto LABEL_73;
      }

      data_length = os_packet_get_data_length();
      if (!data_length)
      {
        v27 = [v6[240] Multiplexer];
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        *buf = 0;
        v28 = "readOSChannel - have packet and buflet but 0 length!";
        goto LABEL_72;
      }

      v10 = data_length;
      kdebug_trace();
      object_address = os_buflet_get_object_address();
      data_offset = os_buflet_get_data_offset();
      v13 = _IDSLinkPacketBufferCreate();
      v14 = v13;
      if (*(v13 + 8) < v10)
      {
        v15 = [v6[240] Multiplexer];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(v14 + 8);
          *buf = 67109376;
          *v39 = v10;
          *&v39[4] = 1024;
          *&v39[6] = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "readOSChannel - outgoing packet larger than IDSLinkPacketBuffer max length! (%u > %u)", buf, 0xEu);
        }

        _IDSLinkPacketBufferRelease();
        goto LABEL_36;
      }

      memcpy(*v13, (object_address + data_offset), v10);
      *(v14 + 16) = v10;
      service_class = os_packet_get_service_class();
      v18 = service_class;
      if (service_class <= 2621727)
      {
        if (service_class <= 1048703)
        {
          if (service_class == 524432)
          {
            v19 = 100;
            goto LABEL_34;
          }

          goto LABEL_28;
        }

        switch(service_class)
        {
          case 1048704:
            v19 = 200;
            break;
          case 1572880:
            v19 = 300;
            break;
          case 2097184:
            v19 = 400;
            break;
          default:
LABEL_28:
            v19 = 0;
            break;
        }
      }

      else if (service_class > 3670319)
      {
        if (service_class == 3670320)
        {
LABEL_27:
          v19 = 700;
          goto LABEL_34;
        }

        if (service_class != 4194688)
        {
          if (service_class == 4718992)
          {
            v19 = 900;
            goto LABEL_34;
          }

          goto LABEL_28;
        }

        v19 = 800;
      }

      else
      {
        switch(service_class)
        {
          case 2621728:
            v19 = 500;
            break;
          case 3146000:
            v19 = 600;
            break;
          case 3670272:
            goto LABEL_27;
          default:
            goto LABEL_28;
        }
      }

LABEL_34:
      v49[0] = 0xAAAAAAAAAAAAAAAALL;
      v49[1] = 0xAAAAAAAAAAAAAAAALL;
      os_packet_get_flow_uuid();
      v20 = [[NSUUID alloc] initWithUUIDBytes:v49];
      v21 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        if (v18 <= 2621727)
        {
          if (v18 <= 1048703)
          {
            if (!v18)
            {
              v22 = "BE";
              goto LABEL_63;
            }

            v22 = "BK_SYS";
            if (v18 == 524432)
            {
LABEL_63:
              *buf = 138413570;
              *v39 = v20;
              *&v39[8] = 1024;
              v40 = v10;
              v41 = 2048;
              v42 = object_address;
              v43 = 1024;
              v44 = data_offset;
              v45 = 2080;
              v46 = v22;
              v47 = 1024;
              v48 = v19;
              _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "multiplexer outgoing [%@] packetLength %u bufletAddress %p bufletOffset %u serviceClass %s trafficClass %d\n", buf, 0x32u);
              goto LABEL_35;
            }
          }

          else
          {
            switch(v18)
            {
              case 1048704:
                v22 = "BK";
                goto LABEL_63;
              case 1572880:
                v22 = "RD";
                goto LABEL_63;
              case 2097184:
                v22 = "OAM";
                goto LABEL_63;
            }
          }
        }

        else if (v18 > 3670319)
        {
          switch(v18)
          {
            case 3670320:
              v22 = "SIG";
              goto LABEL_63;
            case 4194688:
              v22 = "VO";
              goto LABEL_63;
            case 4718992:
              v22 = "CTL";
              goto LABEL_63;
          }
        }

        else
        {
          switch(v18)
          {
            case 2621728:
              v22 = "AV";
              goto LABEL_63;
            case 3146000:
              v22 = "RV";
              goto LABEL_63;
            case 3670272:
              v22 = "VI";
              goto LABEL_63;
          }
        }

        v22 = "UNKNOWN";
        goto LABEL_63;
      }

LABEL_35:

      (*(v37 + 2))(v37, v14);
      _IDSLinkPacketBufferRelease();

      v6 = &IDSRegistrationControlErrorDomain_ptr;
LABEL_36:
      if (!--v7)
      {
        goto LABEL_75;
      }
    }
  }

  v23 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v50 = 0;
    v24 = "readOSChannel - no slots to read";
    v25 = v23;
    v26 = 2;
    goto LABEL_82;
  }

LABEL_83:

LABEL_84:
}

uint64_t sub_100510178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = os_channel_available_slot_count();
  if (v6)
  {
LABEL_2:
    v7 = v6;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v8;
    v44 = v8;
    *buf = v8;
    v42 = v8;
    os_channel_get_next_slot();
    if (os_channel_slot_get_packet())
    {
      if (os_packet_get_next_buflet())
      {
        data_limit = os_buflet_get_data_limit();
        object_address = os_buflet_get_object_address();
        data_offset = os_buflet_get_data_offset();
        if (data_limit >= *(a3 + 16))
        {
          v26 = data_offset;
          kdebug_trace();
          memcpy((object_address + v26), *a3, *(a3 + 16));
          os_buflet_set_data_length();
          os_packet_set_flow_uuid();
          v12 = [[NSUUID alloc] initWithUUIDBytes:a4];
          v27 = +[IDSFoundationLog Multiplexer];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v34 = *(a3 + 16);
            v35 = 138413058;
            *v36 = v12;
            *&v36[8] = 2048;
            *&v36[10] = v34;
            v37 = 2048;
            v38 = object_address;
            v39 = 1024;
            v40 = v26;
            _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "multiplexer incoming [%@] packetLength %ld bufletAddress %p bufletOffset %u", &v35, 0x26u);
          }

          *&buf[2] = *(a3 + 16);
          os_channel_set_slot_properties();
          v28 = os_channel_advance_slot();
          if (v28)
          {
            v29 = v28;
            v30 = +[IDSFoundationLog Multiplexer];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v35 = 67109120;
              *v36 = v29;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "os_channel_advance_slot failed for read %d", &v35, 8u);
            }
          }

          v31 = os_channel_sync();
          if (v31)
          {
            v32 = v31;
            v33 = +[IDSFoundationLog Multiplexer];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v35 = 67109120;
              *v36 = v32;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "os_channel_sync for TX failed %d", &v35, 8u);
            }
          }

          v24 = 1;
          goto LABEL_20;
        }

        v12 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a3 + 16);
          v35 = 67109376;
          *v36 = data_limit;
          *&v36[4] = 2048;
          *&v36[6] = v13;
          v14 = "writeOSChannel - buflet size %u insufficeint for data length %ld!";
          v15 = v12;
          v16 = 18;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v35, v16);
        }
      }

      else
      {
        v12 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v35) = 0;
          v14 = "writeOSChannel - have packet but no buflet!";
          v15 = v12;
          v16 = 2;
          goto LABEL_18;
        }
      }
    }

    else
    {
      v12 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 67109120;
        *v36 = v7;
        v14 = "writeOSChannel - have slots %u no packet to read!";
        v15 = v12;
        v16 = 8;
        goto LABEL_18;
      }
    }

    v24 = 0;
LABEL_20:

    return v24;
  }

  v17 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "writeOSChannel - no slots for write, try syncing", buf, 2u);
  }

  v18 = os_channel_sync();
  if (v18)
  {
    v19 = v18;
    v20 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v19;
      v21 = "os_channel_sync for TX failed %d";
      v22 = v20;
      v23 = 8;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    }
  }

  else
  {
    v6 = os_channel_available_slot_count();
    if (v6)
    {
      goto LABEL_2;
    }

    v20 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v21 = "writeOSChannel - no slots for write, try syncing";
      v22 = v20;
      v23 = 2;
      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t sub_100510B6C(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100CBEE20;
  qword_100CBEE20 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100510D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100510D78(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 isEqualToString:@"com.apple.madrid"])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing cache", v6, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    pthread_mutex_lock((WeakRetained + 32));
    [*(WeakRetained + 3) clearCache];
    pthread_mutex_unlock((WeakRetained + 32));
  }
}

NSDictionary *__cdecl sub_100511760(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a2;
  v5 = [(NSDictionary *)a3 mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v23 = *v25;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v25 != v23)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v24 + 1) + 8 * i);
      v11 = [(NSDictionary *)v5 objectForKey:v10];
      if (v11)
      {
        v12 = [(NSDictionary *)v6 objectForKey:v10];
        v13 = [v11 user];
        v14 = [v13 unprefixedIdentifier];
        if (v14)
        {

          goto LABEL_9;
        }

        v18 = [v12 user];
        v19 = [v18 unprefixedIdentifier];

        if (v19)
        {
LABEL_12:
          [(NSDictionary *)v5 setObject:v12 forKey:v10];
        }

        else
        {
LABEL_9:
          v15 = [v12 user];
          v16 = [v11 user];
          v17 = [v15 shouldReplace:v16];

          if (v17)
          {
            goto LABEL_12;
          }
        }
      }
    }

    v8 = [(NSDictionary *)v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v8);
LABEL_16:

  if (v5)
  {
    v20 = v5;
  }

  else
  {
    v20 = v6;
  }

  v21 = v20;

  return v20;
}

NSMutableDictionary *__cdecl sub_100511964(id a1, NSDictionary *a2, int64_t a3)
{
  v4 = a2;
  if (a3 == 1)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [(NSDictionary *)v6 objectForKeyedSubscript:v11, v16];
          v13 = [[IDSUserDescription alloc] initWithUser:v12 properties:0];
          [v5 setObject:v13 forKeyedSubscript:v11];
        }

        v8 = [(NSDictionary *)v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v8);
    }

    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Migrating user store to new format {oldMap: %@, newMap: %@}", buf, 0x16u);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100511DC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 user];
  if ([v4 realm] == *(a1 + 32))
  {
    v5 = [v3 user];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100511F18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 user];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 realm]);
  if ([v4 containsObject:v6])
  {
    v7 = [v3 user];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *sub_1005120C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 user];
  if ([v4 realm] == *(a1 + 32))
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

void *sub_1005121F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 user];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 realm]);
  if ([v2 containsObject:v5])
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

void sub_100513268(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 user];
  [v4 userStore:v2 didAddUser:v5];
}

void sub_100513520(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 user];
  [v5 userStore:v3 didRemoveUser:v6 withAuthenticationCertificate:a1[6]];
}

void sub_100513818(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 user];
  [v4 userStore:v2 didUpdateUser:v5];
}

void sub_10051591C(uint64_t a1)
{
  v2 = [*(a1 + 32) stateManager];
  [v2 ackUpdatesForActivity:*(a1 + 40)];
}

id sub_100518A18()
{
  if (qword_100CBEE38 != -1)
  {
    sub_1009286F4();
  }

  v1 = qword_100CBEE30;

  return v1;
}

void sub_100518A5C(id a1)
{
  definition = nw_framer_create_definition("IDSDirectDataPathSocketProtocol", 0, &stru_100BDF508);
  v2 = qword_100CBEE30;
  qword_100CBEE30 = definition;

  v3 = qword_100CBEE30;

  _nw_framer_register_definition(v3);
}

int sub_100518AB4(id a1, OS_nw_framer *a2)
{
  v2 = a2;
  nw_framer_set_input_handler(v2, &stru_100BDF528);
  nw_framer_set_output_handler(v2, &stru_100BDF570);

  return 1;
}

unint64_t sub_100518AFC(id a1, OS_nw_framer *a2)
{
  v2 = a2;
  while (1)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    parse[0] = _NSConcreteStackBlock;
    parse[1] = 3221225472;
    parse[2] = sub_100518C3C;
    parse[3] = &unk_100BDF550;
    parse[4] = &v7;
    if (!nw_framer_parse_input(v2, 1uLL, 0xFFFFFFFFuLL, 0, parse))
    {
      break;
    }

    v3 = nw_framer_message_create(v2);
    v4 = nw_framer_deliver_input_no_copy(v2, v8[3], v3, 1);

    _Block_object_dispose(&v7, 8);
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  _Block_object_dispose(&v7, 8);
LABEL_6:

  return 0;
}

void sub_100518C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100519420(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    if (*(v2 + 64) == 1)
    {
      dispatch_resume(v3);
      *(*(a1 + 32) + 64) = 0;
      v3 = *(*(a1 + 32) + 40);
    }

    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 48);
  if (v6)
  {
    if (*(v2 + 65) == 1)
    {
      dispatch_resume(v6);
      *(*(a1 + 32) + 65) = 0;
      v6 = *(*(a1 + 32) + 48);
    }

    dispatch_source_cancel(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = 0;

    v2 = *(a1 + 32);
  }

  v9 = *(v2 + 24);
  if (v9 != -1)
  {
    close(v9);
    *(*(a1 + 32) + 24) = -1;
    v2 = *(a1 + 32);
  }

  v10 = *(v2 + 28);
  if (v10 != -1)
  {
    close(v10);
    *(*(a1 + 32) + 28) = -1;
    v2 = *(a1 + 32);
  }

  v11 = *(v2 + 56);
  *(v2 + 56) = 0;

  v12 = *(*(a1 + 32) + 8);
  if (v12)
  {
    nw_connection_cancel(v12);
    v13 = *(a1 + 32);
    v14 = *(v13 + 8);
    *(v13 + 8) = 0;
  }
}

void sub_100519B90(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 40))
  {
    v3 = dispatch_source_create(&_dispatch_source_type_read, *(v2 + 24), 0, *(v2 + 56));
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100519CD0;
    handler[3] = &unk_100BD6ED0;
    handler[4] = v6;
    dispatch_source_set_event_handler(v7, handler);
    v2 = *(a1 + 32);
  }

  if (!*(v2 + 48))
  {
    v8 = dispatch_source_create(&_dispatch_source_type_write, *(v2 + 24), 0, *(v2 + 56));
    v9 = *(a1 + 32);
    v10 = *(v9 + 48);
    *(v9 + 48) = v8;

    v11 = *(a1 + 32);
    v12 = *(v11 + 48);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100519CE8;
    v13[3] = &unk_100BD6ED0;
    v13[4] = v11;
    dispatch_source_set_event_handler(v12, v13);
  }
}

id sub_100519CD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[68] == 1)
  {
    return [v1 writeToNWConnection];
  }

  else
  {
    return [v1 writeMessageToNWConnection];
  }
}

id sub_100519CE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[68] == 1)
  {
    return [v1 writeToSocket];
  }

  else
  {
    return [v1 writeMessageToSocket];
  }
}

id sub_100519D00(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    v11 = *(v9 + 8);
    v12 = *(a3 + 32);
    *buf = 67110146;
    v17 = v10;
    v18 = 2048;
    v19 = v11;
    v20 = 1024;
    v21 = a2;
    v22 = 2080;
    v23 = a3;
    v24 = 1024;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:startSocket(%d, %p) modifying protocol stack: index: %d identifier: (%s, %d)", buf, 0x28u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  if (a2 || (v13 = *(*(a1 + 48) + 8), (*(v13 + 24) & 1) != 0))
  {
    v14 = 0;
    *a4 = 0;
  }

  else
  {
    *(v13 + 24) = 1;
    *a4 = 2;
    v14 = *(a1 + 40);
  }

  return v14;
}

void sub_100519F00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 <= 3)
  {
    if (a2)
    {
      if (a2 == 3)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v7 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 32);
          v9 = *(v8 + 24);
          v10 = *(v8 + 8);
          v11 = vabdd_f64(Current, *(a1 + 48));
          *buf = 67109632;
          v43 = v9;
          v44 = 2048;
          v45 = v10;
          v46 = 2048;
          *v47 = v11;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: nw connection ready: (%d, %p) connection_time: %fs", buf, 0x1Cu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        nw_connection_reset_traffic_class();
        if ((*(*(a1 + 32) + 32) & 1) == 0)
        {
          *(*(a1 + 32) + 32) = 1;
          *(*(a1 + 32) + 67) = 1;
          v12 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(a1 + 32);
            v14 = *(v13 + 24);
            v15 = *(v13 + 8);
            *buf = 67109376;
            v43 = v14;
            v44 = 2048;
            v45 = v15;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: (%d, %p) resetting _canSendOverNWConnection to yes", buf, 0x12u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                _IDSLogV();
              }
            }
          }

          os_unfair_lock_lock((*(a1 + 32) + 72));
          v16 = *(a1 + 32);
          v17 = *(v16 + 56);
          if (v17)
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10051A688;
            block[3] = &unk_100BD6ED0;
            block[4] = v16;
            dispatch_async(v17, block);
            v16 = *(a1 + 32);
          }

          os_unfair_lock_unlock((v16 + 72));
          v18 = *(a1 + 32);
          if (v18[68] == 1)
          {
            [v18 readFromNWConnection];
          }

          else
          {
            [v18 readMessageFromNWConnection];
          }

          v36 = *(a1 + 32);
          if ((*(v36 + 69) & 1) == 0)
          {
            *(v36 + 69) = 1;
            (*(*(a1 + 40) + 16))(*(a1 + 40), *(*(a1 + 32) + 28), v19);
          }
        }

        goto LABEL_48;
      }

      goto LABEL_39;
    }

    goto LABEL_31;
  }

  if (a2 == 4)
  {
LABEL_31:
    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      v28 = *(v27 + 24);
      v29 = *(v27 + 8);
      *buf = 67109890;
      v43 = v28;
      v44 = 2048;
      v45 = v29;
      v46 = 1024;
      LODWORD(v47[0]) = a2;
      WORD2(v47[0]) = 2112;
      *(v47 + 6) = v5;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: failed to start connection:(%d, %p), connection state: %d error: %@", buf, 0x22u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v30 = *(a1 + 32);
        v39 = a2;
        v40 = v5;
        v37 = *(v30 + 24);
        v38 = *(v30 + 8);
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v31 = *(a1 + 32);
          v39 = a2;
          v40 = v5;
          v37 = *(v31 + 24);
          v38 = *(v31 + 8);
          _IDSLogV();
        }
      }
    }

    [*(a1 + 32) shutdownSocket];
    if ((*(*(a1 + 32) + 69) & 1) == 0)
    {
      *(*(a1 + 32) + 69) = 1;
      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_48;
  }

  if (a2 != 5)
  {
LABEL_39:
    v32 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 32);
      v34 = *(v33 + 24);
      v35 = *(v33 + 8);
      *buf = 67109632;
      v43 = v34;
      v44 = 2048;
      v45 = v35;
      v46 = 1024;
      LODWORD(v47[0]) = a2;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: (%d, %p) connection state: %d", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    goto LABEL_48;
  }

  v20 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 32);
    v22 = *(v21 + 24);
    v23 = *(v21 + 8);
    *buf = 67109632;
    v43 = v22;
    v44 = 2048;
    v45 = v23;
    v46 = 1024;
    LODWORD(v47[0]) = 5;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: (%d, %p) connection state: %d", buf, 0x18u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v25 = *(a1 + 32);
  if ((*(v25 + 69) & 1) == 0)
  {
    *(v25 + 69) = 1;
    (*(*(a1 + 40) + 16))(*(a1 + 40), 0xFFFFFFFFLL, v24);
  }

LABEL_48:
}

void sub_10051A688(uint64_t a1)
{
  *(*(a1 + 32) + 64) = 0;
  dispatch_resume(*(*(a1 + 32) + 40));
  *(*(a1 + 32) + 65) = 0;
  v2 = *(*(a1 + 32) + 48);

  dispatch_resume(v2);
}

void sub_10051B190(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && [*(a1 + 32) _isSendErrorFatal:v3])
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 8);
      *buf = 134217984;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:writeToNWConnection failed send on nw_connection (%p) with fatal error", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v7 = *(*(a1 + 32) + 8);
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v7 = *(*(a1 + 32) + 8);
          _IDSLogV();
        }
      }
    }

    [*(a1 + 32) shutdownSocket];
  }

  else
  {
    v6 = +[IDSFoundationLog socketPairConnection];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100928798(a1, v6);
    }
  }
}

void sub_10051B3B4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  if (v8)
  {
    size = dispatch_data_get_size(v8);
    v12 = +[IDSFoundationLog socketPairConnection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100928838(a1, size, v12);
    }

    os_unfair_lock_lock((*(a1 + 32) + 72));
    v13 = *(a1 + 32);
    v14 = *(v13 + 56);
    if (v14)
    {
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_10051B50C;
      v20 = &unk_100BD6E40;
      v21 = v13;
      v22 = v8;
      dispatch_async(v14, &v17);

      v13 = *(a1 + 32);
    }

    os_unfair_lock_unlock((v13 + 72));
  }

  is_final = nw_content_context_get_is_final(v9);
  v16 = *(a1 + 32);
  if (v10 || is_final)
  {
    [v16 shutdownSocket];
  }

  else
  {
    [v16 readFromNWConnection];
  }
}

void sub_10051B50C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (v2)
  {
    [v2 appendData:*(a1 + 40)];
  }

  else
  {
    v3 = [[NSMutableData alloc] initWithData:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = v3;
  }

  v6 = *(a1 + 32);
  if (*(v6 + 65) == 1)
  {
    *(v6 + 65) = 0;
    v7 = *(*(a1 + 32) + 48);

    dispatch_resume(v7);
  }
}

void sub_10051B614(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  if (v8 && dispatch_data_get_size(v8))
  {
    v11 = v8;
    os_unfair_lock_lock((*(a1 + 32) + 72));
    v12 = *(a1 + 32);
    v13 = *(v12 + 56);
    if (v13)
    {
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_10051B740;
      v19 = &unk_100BD6E40;
      v20 = v12;
      v21 = v11;
      dispatch_async(v13, &v16);

      v12 = *(a1 + 32);
    }

    os_unfair_lock_unlock((v12 + 72));
  }

  is_final = nw_content_context_get_is_final(v9);
  v15 = *(a1 + 32);
  if (v10 || is_final)
  {
    [v15 shutdownSocket];
  }

  else
  {
    [v15 readMessageFromNWConnection];
  }
}

void sub_10051B740(uint64_t a1)
{
  [*(*(a1 + 32) + 104) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  if (*(v2 + 65) == 1)
  {
    *(v2 + 65) = 0;
    v3 = *(*(a1 + 32) + 48);

    dispatch_resume(v3);
  }
}

void sub_10051C1EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && [*(a1 + 32) _isSendErrorFatal:v3])
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 8);
      *buf = 134217984;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:writeMessageToNWConnection failed send on nw_connection (%p) with fatal error", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v6 = *(*(a1 + 32) + 8);
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v6 = *(*(a1 + 32) + 8);
          _IDSLogV();
        }
      }
    }

    [*(a1 + 32) shutdownSocket];
  }
}

void sub_10051C5A4(id a1)
{
  v1 = objc_alloc_init(IDSRegistrationKeychainManager);
  v2 = qword_100CBEE48;
  qword_100CBEE48 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10051C7B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10051C7E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[6] invalidate];
  v1 = WeakRetained[6];
  WeakRetained[6] = 0;
}

void sub_10051F6D0(id a1)
{
  v1 = objc_alloc_init(IDSDaemonCapabilities);
  v2 = qword_100CBEE60;
  qword_100CBEE60 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10051F9A4(void *a1, id a2)
{
  v3 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = +[IDSCTAdapter sharedInstance];
  v5 = objc_opt_class();
  v6 = [NSNumber numberWithBool:a2];
  v7 = [v4 carrierBundleValueFromAllSIMsForKey:v3 ofType:v5 withFallback:v6];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    LOBYTE(a2) = 1;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (a2)
        {
          a2 = [*(*(&v13 + 1) + 8 * v11) BOOLValue];
        }

        else
        {
          a2 = 0;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return a2;
}

id sub_10051FBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = a2;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Daemon MG capabilities changed: %@  (%@)", &v8, 0x16u);
  }

  return [*(a1 + 32) _deferredUpdateCapabilities];
}

uint64_t sub_10051FEF8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100CBEE68;
  qword_100CBEE68 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100520140(id a1)
{
  v1 = objc_alloc_init(IDSRegistrationCenter);
  v2 = qword_100CBEE80;
  qword_100CBEE80 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1005205D0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTimeout:36000.0];
  [*(a1 + 32) __sendMessage:v3];
}

id sub_10052062C(uint64_t a1)
{
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Processed getDependent queue", v4, 2u);
  }

  return [*(a1 + 32) _dequeuePendingRequestsIfNecessary];
}

void sub_1005206C0(id a1, IDSRegistrationCenter *a2)
{
  v2 = a2;
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "  Absinthe cleanup timer hit!", buf, 2u);
  }

  if ([(IDSRegistrationCenter *)v2 _hasCurrentAuthenticationsOrRegistrations])
  {
    v4 = +[IMRGLog registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "We have current authentications or registrations -- not cleaning up Absinthe validation info yet", v5, 2u);
    }
  }

  else
  {
    [(IDSValidationQueue *)v2->_validationQueue cleanupValidationInfoForSubsystemMechanism:1];
    [(IDSRegistrationCenter *)v2 __dumpState];
  }
}

void sub_1005210C0(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 0;
  v2 = [*(*(a1 + 32) + 16) lastObject];
  if (v2)
  {
    v3 = [*(*(a1 + 32) + 24) count];
    v4 = +[IMRGLog registration];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(*(a1 + 32) + 24);
        *buf = 138412290;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " ** Not sending, we have current authentications in flight, %@", buf, 0xCu);
      }

      [*(a1 + 32) __dumpState];
    }

    else
    {
      if (v5)
      {
        *buf = 138412290;
        v21 = v2;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " Sending pending authentication: %@", buf, 0xCu);
      }

      [*(a1 + 32) _sendAuthenticateRegistration:v2];
    }
  }

  else
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " No pending authentication", buf, 2u);
    }
  }

  v8 = [*(*(a1 + 32) + 8) lastObject];
  if (v8)
  {
    if ([*(*(a1 + 32) + 32) count])
    {
      v9 = +[IMRGLog registration];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 32);
        *buf = 138412290;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " ** Not sending, we have current registrations in flight, %@", buf, 0xCu);
      }

      [*(a1 + 32) __dumpState];
    }

    else
    {
      v12 = [v8 canSendRegistration];
      v13 = +[IMRGLog registration];
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          *buf = 138412290;
          v21 = v8;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " Sending pending registration: %@", buf, 0xCu);
        }

        [*(a1 + 32) sendRegistration:v8];
      }

      else
      {
        if (v14)
        {
          *buf = 138412290;
          v21 = v8;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " Removing pending registration, can't register: %@", buf, 0xCu);
        }

        [*(*(a1 + 32) + 8) removeObjectIdenticalTo:v8];
        if ([*(*(a1 + 32) + 8) count])
        {
          im_dispatch_after_primary_queue();
        }
      }
    }
  }

  else
  {
    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " No pending registration", buf, 2u);
    }
  }

  v15 = *(a1 + 32);
  if (v15[49] == 1)
  {
    v16 = +[IMRGLog registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " Sending pending deregistration...", buf, 2u);
    }

    [*(a1 + 32) _sendRegistrationAsDeregister:1];
    v15 = *(a1 + 32);
  }

  v17 = [v15 _hasCurrentAuthenticationsOrRegistrations];
  v18 = +[IMRGLog registration];
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "We have current authentications or registrations -- canceling pending Absinthe cleanup operations", buf, 2u);
    }

    [*(*(a1 + 32) + 184) cancelPendingExecutions];
  }

  else
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "We have no current authentications or registrations -- enqueueing Absinthe cleanup operation", buf, 2u);
    }

    [*(*(a1 + 32) + 184) enqueueExecutionWithTarget:30.0 afterDelay:?];
  }

  [*(a1 + 32) __dumpState];
}

void sub_100521DD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100521DD4);
  }

  objc_terminate();
}

void sub_100522328(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x10052232CLL);
  }

  objc_terminate();
}

void sub_100522C54(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100522C58);
  }

  objc_terminate();
}

void sub_100522C68(void *a1, uint64_t a2)
{
  v4 = +[IDSFoundationLog KeyTransparency];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  switch(a2)
  {
    case 4:
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Need to refresh KT Account key, and CDP is ready.", buf, 2u);
      }

      v6 = +[IDSServerBag sharedInstance];
      v7 = [v6 objectForKey:@"kt-rereg-after-ak-refresh-with-cdp-ready"];

      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v8 = [v7 BOOLValue];

        if (!v8)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      [*(a1[4] + 136) registrationDataNeedsUpdate];
LABEL_21:
      v9 = 49;
      goto LABEL_22;
    case 3:
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Need to refresh KT Account key, but CDP is syncing.", buf, 2u);
      }

      goto LABEL_21;
    case 2:
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Need to refresh KT Account key, but we're waiting for user.", buf, 2u);
      }

      break;
    default:
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Need to refresh KT Account key, but we're confused.", buf, 2u);
      }

      break;
  }

  v9 = 48;
LABEL_22:
  v10 = [*(a1[4] + 40) _copyForEnumerating];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v15 center:a1[4] failedRegistration:a1[5] error:v9 info:{a1[6], v16}];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v12);
  }
}

void sub_100523454(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100523458);
  }

  objc_terminate();
}

void sub_10052852C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100528530);
  }

  objc_terminate();
}

void sub_100528540(id a1)
{
  v1 = +[IMLockdownManager sharedInstance];
  v2 = [v1 isInternalInstall];

  if (v2)
  {
    byte_100CBEE88 = IMGetDomainBoolForKey();
    byte_100CBEE89 = IMGetDomainBoolForKey();
  }
}

void sub_1005285B8(void *a1)
{
  v1 = a1;
  v2 = +[IMLockdownManager sharedInstance];
  if ([v2 isInternalInstall])
  {
    v3 = IMGetCachedDomainBoolForKey();

    if (v3)
    {
      v4 = +[IMRGLog sms];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Suppressing registration server alert due to presence of internal default", buf, 2u);
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  v4 = [v1 objectForKey:kIDSRegistrationFailedAlertTitleKey];
  v5 = [v1 objectForKey:kIDSRegistrationFailedAlertButtonKey];
  v6 = [v1 objectForKey:kIDSRegistrationFailedAlertMessageKey];
  v7 = [v1 objectForKey:kIDSRegistrationFailedActionInfoKey];
  v8 = [v7 objectForKey:kIDSRegistrationFailedActionButtonKey];
  v9 = [v7 objectForKey:kIDSRegistrationFailedActionURLKey];
  if (v4)
  {
    v10 = 0;
  }

  else
  {
    v10 = v6 == 0;
  }

  if (!v10 || v5 != 0)
  {
    v12 = [IMUserNotification userNotificationWithIdentifier:@"ServerAlerts" title:v4 message:v6 defaultButton:v8 alternateButton:0 otherButton:v5];
    if (v12)
    {
      v13 = +[IMUserNotificationCenter sharedInstance];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100537A44;
      v14[3] = &unk_100BDFC68;
      v15 = v9;
      [v13 addUserNotification:v12 listener:0 completionHandler:v14];
    }
  }

LABEL_17:
}

void sub_100528818(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reported to transparency of bad account key. { error: %@ }", &v4, 0xCu);
  }
}

uint64_t sub_1005288CC()
{
  v0 = +[IDSServerBag sharedInstance];
  v1 = [v0 objectForKey:@"ids-allow-empty-uri-registration"];

  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

id sub_100528A8C(id a1, id a2)
{
  v2 = a2;
  v3 = [[IDSURI alloc] initWithPrefixedURI:v2];

  return v3;
}

id sub_100528AE4(id a1, id a2)
{
  v2 = a2;
  if ([v2 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias])
  {
    v3 = 0;
  }

  else
  {
    v3 = [[IDSURI alloc] initWithPrefixedURI:v2];
  }

  return v3;
}

id sub_100528F18(uint64_t a1, void *a2)
{
  v3 = [a2 serviceType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

NSString *__cdecl sub_100529A60(id a1, IDSRegistration *a2)
{
  v2 = a2;
  if ([(IDSRegistration *)v2 registrationType])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(IDSRegistration *)v2 userUniqueIdentifier];
  }

  return v3;
}

int64_t sub_100529ABC(id a1, IDSCTSIM *a2, IDSCTSIM *a3)
{
  v4 = a3;
  v5 = [(IDSCTSIM *)a2 phoneNumber];
  v6 = [(IDSCTSIM *)v4 phoneNumber];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10052A3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, os_activity_scope_state_s state, char a55)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_10052A478(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v280 = a1;
  if (v4 == 1)
  {
    v240 = [v3 error];
    [(__CFString *)v240 code];
    v190 = *(a1 + 40);
    v191 = *(*(a1 + 32) + 144);
    v192 = *(a1 + 48);
    v193 = [NSError errorWithDomain:@"IDSRegistrationError" code:40 userInfo:0];
    [v191 endEvent:v190 identifier:v192 error:v193];

    v289 = 0u;
    v290 = 0u;
    v287 = 0u;
    v288 = 0u;
    v266 = *(a1 + 56);
    v194 = [v266 countByEnumeratingWithState:&v287 objects:v335 count:16];
    if (v194)
    {
      v195 = v194;
      v196 = v3;
      v197 = *v288;
      do
      {
        for (i = 0; i != v195; i = i + 1)
        {
          if (*v288 != v197)
          {
            objc_enumerationMutation(v266);
          }

          v199 = *(*(&v287 + 1) + 8 * i);
          v200 = +[IMRGLog registration];
          if (os_log_type_enabled(v200, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v340 = v240;
            v341 = 2112;
            v342 = v199;
            _os_log_fault_impl(&_mh_execute_header, v200, OS_LOG_TYPE_FAULT, "Registration failed getting client data -- error %@ registration %@", buf, 0x16u);
          }

          [*(*(v280 + 32) + 8) removeObject:v199];
          [*(*(v280 + 32) + 32) removeObject:v199];
          [*(v280 + 32) _notifyRegistrationFailure:v199 responseCode:1 registrationError:40 error:0 info:0];
        }

        v195 = [v266 countByEnumeratingWithState:&v287 objects:v335 count:16];
      }

      while (v195);
      v3 = v196;
    }

LABEL_252:
  }

  else if (!v4)
  {
    [*(*(a1 + 32) + 144) endEvent:*(a1 + 40) identifier:*(a1 + 48) error:0];
    v234 = v3;
    v5 = [v3 value];
    v266 = [(__CFString *)v5 clientDatasByServiceType];
    v240 = v5;
    v242 = [(__CFString *)v5 ktRegDataByServiceType];
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v266 allKeys];
      *buf = 138412290;
      v340 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Done constructing client data objects {serviceTypes: %@}", buf, 0xCu);
    }

    v8 = +[IDSKeyTransparencyVerifier sharedInstance];
    v9 = [v8 fetchKTEligibleServices];
    v10 = [v9 containsObject:@"com.apple.madrid"];

    v11 = +[IDSRegistrationKeyManager sharedInstance];
    [v11 updateKVSForKTRegistrationData];

    v12 = +[FTDeviceSupport sharedInstance];
    v238 = [v12 model];

    v13 = +[FTDeviceSupport sharedInstance];
    v237 = [v13 productOSVersion];

    v14 = +[FTDeviceSupport sharedInstance];
    v236 = [v14 productBuildVersion];

    v15 = +[FTDeviceSupport sharedInstance];
    v16 = [v15 deviceName];

    v243 = v16;
    v17 = [v16 stringByReplacingOccurrencesOfString:@"&" withString:@"&ampamp;"];;
    v18 = [v17 stringByReplacingOccurrencesOfString:@"" withString:@"&ampquot;"];;
    v19 = [v18 stringByReplacingOccurrencesOfString:@"'" withString:@"&amp#39;"];;
    v20 = [v19 stringByReplacingOccurrencesOfString:@">" withString:@"&ampgt;"];;
    v21 = [v20 stringByReplacingOccurrencesOfString:@"<" withString:@"&amp;lt;"];

    v235 = [*(a1 + 32) privateDeviceDataForKVSSuccess:v10];
    v246 = objc_alloc_init(NSMutableDictionary);
    *(*(a1 + 32) + 49) = 0;
    v22 = +[IDSRegistrationController sharedInstance];
    v23 = [v22 activeRegistrations];

    v334 = 0u;
    v333 = 0u;
    v332 = 0u;
    v331 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v331 objects:v349 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v332;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v332 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v331 + 1) + 8 * j);
          if (([(__CFString *)v29 canSendRegistration]& 1) == 0)
          {
            v30 = +[IMRGLog registration];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v340 = v29;
              _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "   *** Removing registration (from active) from queued/current, it is not possible to register: %@", buf, 0xCu);
            }

            [*(*(a1 + 32) + 32) removeObject:v29];
            [*(*(a1 + 32) + 8) removeObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v331 objects:v349 count:16];
      }

      while (v26);
    }

    v233 = v24;

    v329 = 0u;
    v330 = 0u;
    v327 = 0u;
    v328 = 0u;
    v31 = [*(*(a1 + 32) + 8) _copyForEnumerating];
    v32 = [v31 countByEnumeratingWithState:&v327 objects:v348 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v328;
      do
      {
        for (k = 0; k != v33; k = k + 1)
        {
          if (*v328 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v327 + 1) + 8 * k);
          if (([(__CFString *)v36 canSendRegistration]& 1) == 0)
          {
            v37 = +[IMRGLog registration];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v340 = v36;
              _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "   *** Removing registration (from queued) from queued/current, it is not possible to register: %@", buf, 0xCu);
            }

            [*(*(a1 + 32) + 32) removeObject:v36];
            [*(*(a1 + 32) + 8) removeObject:v36];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v327 objects:v348 count:16];
      }

      while (v33);
    }

    v241 = objc_alloc_init(NSMutableArray);
    v38 = *(a1 + 32);
    v39 = *(a1 + 56);
    v40 = +[IDSCTAdapter sharedInstance];
    v239 = [v38 _assignSlotIDToLabelID:v39 telephonyAdapater:v40];

    v325 = 0u;
    v326 = 0u;
    v323 = 0u;
    v324 = 0u;
    obj = *(a1 + 56);
    v41 = [obj countByEnumeratingWithState:&v323 objects:v347 count:16];
    if (!v41)
    {
      v283 = 0;
      v43 = 0;
      goto LABEL_226;
    }

    v42 = v41;
    v283 = 0;
    v43 = 0;
    v44 = *v324;
    v244 = *v324;
    while (1)
    {
      v45 = 0;
      v245 = v42;
      do
      {
        if (*v324 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v323 + 1) + 8 * v45);
        v47 = [(__CFString *)v46 authenticationCert];
        if (!v47 || (v48 = v47, [(__CFString *)v46 idsUserID], v49 = objc_claimAutoreleasedReturnValue(), v49, v48, !v49))
        {
          v51 = +[IMRGLog registration];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v340 = v46;
            v52 = v51;
            v53 = "   => Skipping, we have no auth user ID or cert: %@";
            goto LABEL_39;
          }

LABEL_40:

          [*(*(a1 + 32) + 32) removeObject:v46];
          [*(*(a1 + 32) + 8) removeObject:v46];
          goto LABEL_209;
        }

        if (![(__CFString *)v46 registrationType])
        {
          v50 = +[IDSCTAdapter sharedInstance];
          if ([v50 isAnySIMInserted])
          {
          }

          else
          {
            v54 = +[IMMobileNetworkManager sharedInstance];
            v55 = [v54 requiresSIMInserted];

            if (v55)
            {
              v51 = +[IMRGLog registration];
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v340 = v46;
                v52 = v51;
                v53 = "   => Skipping, we have no sim present, and we require it: %@";
LABEL_39:
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, v53, buf, 0xCu);
              }

              goto LABEL_40;
            }
          }
        }

        v56 = *(*(a1 + 32) + 144);
        v57 = [(__CFString *)v46 registrationTraceID];
        v58 = [*(a1 + 64) overallEventTracingOperation];
        [v56 trackIDSMessageWithIdentifier:v57 messageType:0 operation:v58];

        v59 = [(__CFString *)v46 serviceType];
        v60 = sub_100450490(v59);

        v273 = v60;
        v61 = [(__CFString *)v246 objectForKey:v60];
        v62 = [(__CFString *)v46 serviceType];
        v276 = [v266 objectForKeyedSubscript:v62];

        v63 = [(__CFString *)v46 serviceType];
        v64 = [v242 objectForKeyedSubscript:v63];

        v267 = [v64 ktDataForRegistration];
        v65 = [v64 ktPublicAccountKey];
        v66 = [v64 ktAccountKeyTimestamp];
        v67 = v66;
        if (v66)
        {
          [v66 timeIntervalSince1970];
          v278 = [NSString stringWithFormat:@"%llu", v68];
        }

        else
        {
          v278 = 0;
        }

        v69 = [v64 ktOptInTimestamp];
        v70 = v69;
        if (v69)
        {
          [v69 timeIntervalSince1970];
          v72 = [NSString stringWithFormat:@"%llu", v71];
        }

        else
        {
          v72 = 0;
        }

        v73 = [v64 ktOptInStatus];
        v74 = @"true";
        if (v73 != 1)
        {
          v74 = 0;
        }

        v254 = v74;
        v257 = v72;
        v265 = v67;
        v259 = v73;
        if (v72 || v73 == 1)
        {
          v274 = v65 == 0;
          [(__CFString *)v46 setOptedIntoKT:v73];
          [(__CFString *)v46 setOptedIntoKTTimestamp:v70];
          v252 = 0;
          if (v278 | v65)
          {
            v251 = v278 == 0;
            goto LABEL_59;
          }
        }

        else
        {
          v252 = [v64 ktOptInErrorCode];

          v274 = v65 == 0;
          v75 = [v64 ktOptInErrorCode];
          [(__CFString *)v46 setKtOptInErrorCode:v75];

          if (v278 | v65)
          {
            v251 = v278 == 0;
LABEL_59:
            [(__CFString *)v46 setKtAccountKey:v65];
            [(__CFString *)v46 setKtAccountKeyTimestamp:v67];
            v77 = 0;
            goto LABEL_60;
          }
        }

        v76 = [v64 ktAccountKeyErrorCode];
        [(__CFString *)v46 setKtAccountKeyErrorCode:v76];

        v251 = 1;
        v274 = 1;
        v77 = 1;
LABEL_60:
        v78 = [v64 ktDataSignature];

        if (v78)
        {
          v79 = [v64 ktDataSignature];
          [(__CFString *)v46 setDeviceSignature:v79];
        }

        v80 = [v64 ktDataForRegistration];

        if (v80)
        {
          v81 = [v64 ktDataForRegistration];
          [(__CFString *)v46 setKtDataForRegistration:v81];
        }

        v82 = [v64 dsid];

        if (v82)
        {
          v83 = [v64 dsid];
          [(__CFString *)v46 setDsid:v83];
        }

        if (v77)
        {
          v250 = [v64 ktAccountKeyErrorCode];
        }

        else
        {
          v250 = 0;
        }

        v84 = [(__CFString *)v46 serviceType];
        v85 = IDSIsFaceTimeRegistrationServiceType();

        value = v65;
        if (v85 || ([(__CFString *)v46 serviceType], v86 = objc_claimAutoreleasedReturnValue(), v87 = IDSIsCallingRegistrationServiceType(), v86, v87))
        {
          v88 = _IDSInvitationProtocolVersionNumber();
        }

        else
        {
          v153 = [(__CFString *)v46 serviceType];
          v154 = IDSIsiMessageRegistrationServiceType();

          if (v154)
          {
            _IDSiMessageProtocolVersionNumber();
          }

          else
          {
            _IDSAlloyProtocolVersionNumber();
          }
          v88 = ;
        }

        v89 = v88;
        [v88 integerValue];

        v264 = v45;
        v271 = v46;
        v261 = v70;
        v262 = v64;
        if (!v61)
        {
          v90 = objc_alloc_init(NSMutableDictionary);
          [(__CFString *)v246 setObject:v90 forKey:v273];
          v91 = objc_alloc_init(NSMutableArray);
          v92 = +[IMRGLog registration];
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            v161 = IMGetEnvironmentName();
            v162 = [*(*(v280 + 32) + 120) pushToken];
            *buf = 138412546;
            v340 = v161;
            v341 = 2112;
            v342 = v162;
            _os_log_debug_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEBUG, "environment: %@    token: %@", buf, 0x16u);
          }

          v93 = _FTIDSFlagsNumber();
          [v93 unsignedIntegerValue];

          v94 = [(__CFString *)v46 serviceType];
          v95 = sub_1004503F0(v94);

          v96 = _DeviceCapabilitiesFromParameters();
          [v91 addObject:v96];

          [v90 setObject:v91 forKey:@"capabilities"];
          v97 = v90;
          [v90 setObject:v273 forKey:@"service"];
          v98 = objc_alloc_init(NSMutableArray);
          v319 = 0u;
          v320 = 0u;
          v321 = 0u;
          v322 = 0u;
          v99 = [(__CFString *)v46 adHocServiceNames];
          v100 = [v99 countByEnumeratingWithState:&v319 objects:v346 count:16];
          if (v100)
          {
            v101 = v100;
            v102 = *v320;
            do
            {
              for (m = 0; m != v101; m = m + 1)
              {
                if (*v320 != v102)
                {
                  objc_enumerationMutation(v99);
                }

                v104 = *(*(&v319 + 1) + 8 * m);
                if (([v104 isEqualToIgnoringCase:@"com.apple.private.alloy.telephonyutilitiestemporary"] & 1) == 0 && (objc_msgSend(v104, "isEqualToIgnoringCase:", @"com.apple.private.alloy.mediaidstest") & 1) == 0 && (objc_msgSend(v104, "isEqualToIgnoringCase:", @"com.apple.private.alloy.callhistorysynctemporary") & 1) == 0 && (objc_msgSend(v104, "isEqualToIgnoringCase:", @"com.apple.private.alloy.musictemporary") & 1) == 0)
                {
                  [v98 addObject:v104];
                }
              }

              v101 = [v99 countByEnumeratingWithState:&v319 objects:v346 count:16];
            }

            while (v101);
          }

          v61 = v97;
          [v97 setObject:v98 forKey:@"sub-services"];

          v46 = v271;
        }

        v105 = +[IDSRegistrationKeyManager sharedInstance];
        v106 = [v105 keyPairSignature];
        [(__CFString *)v46 setKeyPairSignature:v106];

        [(__CFString *)v46 setDeviceName:v243];
        v107 = [(__CFString *)v46 serviceIdentifier];
        LODWORD(v106) = IDSIsGameCenterRegistrationServiceType();

        if (v106)
        {
          [(__CFString *)v46 setContextInfo:v276];
        }

        v108 = [v61 objectForKey:@"users"];
        if (!v108)
        {
          v108 = objc_alloc_init(NSMutableArray);
          [v61 setObject:v108 forKey:@"users"];
        }

        v109 = objc_alloc_init(NSMutableDictionary);
        v110 = [*(v280 + 32) _URIsToRegisterForRegistration:v46];
        v111 = [v110 allObjects];
        v112 = [v111 __imArrayByApplyingBlock:&stru_100BDF8F0];

        if (!v112)
        {
          v112 = +[NSArray array];
        }

        v248 = v112;
        theDict = v109;
        v263 = v61;
        v113 = [(__CFString *)v46 idsUserID];
        v114 = _os_feature_enabled_impl();
        v115 = @"Home";
        if (v114)
        {
          v115 = @"Personal";
        }

        v286 = v115;
        v315 = 0u;
        v316 = 0u;
        v317 = 0u;
        v318 = 0u;
        v116 = v108;
        v117 = [v116 countByEnumeratingWithState:&v315 objects:v345 count:16];
        if (!v117)
        {
          v119 = 0;
          v120 = 0;
          v284 = 0;
          goto LABEL_120;
        }

        v118 = v117;
        v119 = 0;
        v120 = 0;
        v284 = 0;
        v121 = *v316;
        do
        {
          for (n = 0; n != v118; n = n + 1)
          {
            if (*v316 != v121)
            {
              objc_enumerationMutation(v116);
            }

            v123 = *(*(&v315 + 1) + 8 * n);
            v124 = [v123 objectForKey:@"user-id"];
            v125 = [v123 objectForKey:@"tag"];
            if ([v124 length])
            {
              if ([v124 _FZIDType] || (objc_msgSend(v125, "isEqualToString:", v286) & 1) != 0)
              {
                if ([v124 _FZIDType] == 1)
                {
                  if (v120)
                  {
                    v126 = v120;
                  }

                  else
                  {
                    v126 = objc_alloc_init(NSMutableSet);
                    v120 = v126;
                  }

                  goto LABEL_111;
                }
              }

              else
              {
                v126 = v284;
                if (v284)
                {
                  v283 = 1;
                }

                else
                {
                  v126 = objc_alloc_init(NSMutableSet);
                  v283 = 1;
                  v284 = v126;
                }

LABEL_111:
                [(__CFString *)v126 addObject:v124];
              }

              if (!v119)
              {
                if ([v124 isEqualToIgnoringCase:v113])
                {
                  v119 = v123;
                }

                else
                {
                  v119 = 0;
                }
              }
            }
          }

          v118 = [v116 countByEnumeratingWithState:&v315 objects:v345 count:16];
        }

        while (v118);
LABEL_120:

        v127 = v113;
        if (v127)
        {
          CFDictionarySetValue(theDict, @"user-id", v127);
          v128 = v280;
          v129 = v244;
          v130 = v271;
          v132 = v257;
          v131 = v259;
        }

        else
        {
          v133 = &_os_log_default;
          v128 = v280;
          v129 = v244;
          v130 = v271;
          v132 = v257;
          v131 = v259;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v340 = @"user-id";
            v341 = 2080;
            v342 = "userDictionary";
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
          }
        }

        v258 = v127;

        v134 = v248;
        if (v134)
        {
          CFDictionarySetValue(theDict, @"uris", v134);
        }

        else
        {
          v135 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v340 = @"uris";
            v341 = 2080;
            v342 = "userDictionary";
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
          }
        }

        v44 = v129;
        a1 = v128;
        v272 = v134;

        v136 = v276;
        v137 = v130;
        if (v136)
        {
          CFDictionarySetValue(theDict, @"client-data", v136);
        }

        v138 = v267;
        if (v138)
        {
          CFDictionarySetValue(theDict, @"kt-loggable-data", v138);
        }

        v139 = value;
        valuea = v139;
        if (!v274)
        {
          CFDictionarySetValue(theDict, @"kt-account-key", v139);
          v139 = valuea;
        }

        v140 = v278;
        v268 = v140;
        if (!v251)
        {
          CFDictionarySetValue(theDict, @"kt-account-key-ts", v140);
          v140 = v268;
        }

        v141 = v132;
        v279 = v141;
        if (v132)
        {
          CFDictionarySetValue(theDict, @"kt-opt-ts", v141);
          v141 = v279;
        }

        v142 = v254;
        if (v131 == 1)
        {
          CFDictionarySetValue(theDict, @"kt-opt-in", @"true");
        }

        v143 = v252;
        v277 = v143;
        if (v143)
        {
          CFDictionarySetValue(theDict, @"kt-opt-absent", v143);
          v143 = v277;
        }

        v144 = v250;
        v275 = v144;
        if (v144)
        {
          CFDictionarySetValue(theDict, @"kt-account-key-absent", v144);
          v144 = v275;
        }

        v260 = v142;

        if (!v119)
        {
          v146 = [(__CFString *)v137 registrationType];
          v147 = +[IMRGLog registration];
          if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
          {
            v148 = @"NO";
            if (*(a1 + 88))
            {
              v148 = @"YES";
            }

            *buf = 138412802;
            v340 = v284;
            v341 = 2112;
            v342 = v120;
            v343 = 2112;
            v344 = v148;
            _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "     already existing phone: %@         already existing appleID: %@   isInDualSIMMode: %@", buf, 0x20u);
          }

          if (v146 == 2)
          {
            v150 = v286;
            CFDictionarySetValue(theDict, @"tag", v150);
            v145 = 0;
            goto LABEL_184;
          }

          if (v146 != 1)
          {
            if (v146)
            {
              goto LABEL_147;
            }

            v149 = *(a1 + 88);
            if ([(__CFString *)v284 count]> v149)
            {
              v150 = +[IMRGLog warning];
              if (os_log_type_enabled(v150, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v340 = theDict;
                v341 = 2112;
                v342 = v284;
                v151 = v150;
                v152 = "********* Not adding user dictionary, we already had another phone based registration: %@  (registrations: %@)";
                goto LABEL_212;
              }

              goto LABEL_164;
            }

            v150 = [(__CFString *)v137 userUniqueIdentifier];
            v155 = +[IDSCTAdapter sharedInstance];
            v156 = [v155 SIMForIdentifier:v150];

            v255 = v156;
            v157 = [v156 SIMIdentifier];
            v158 = [v239 objectForKeyedSubscript:v157];

            if (v158)
            {
              v159 = [v158 unsignedIntegerValue];
              if (!v159)
              {
                v160 = @"SIM";
LABEL_178:
                CFDictionarySetValue(theDict, @"tag", v160);
                v145 = 0;
                goto LABEL_183;
              }

              if (v159 != 2)
              {
                if (v159 == 1)
                {
                  v160 = @"SIM2";
                  goto LABEL_178;
                }

                v145 = 0;
LABEL_180:
                v165 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v340 = @"tag";
                  v341 = 2080;
                  v342 = "userDictionary";
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
                }

                v44 = v244;
LABEL_183:

                a1 = v280;
LABEL_184:

                goto LABEL_185;
              }
            }

            else
            {
              v163 = +[IMRGLog registration];
              if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
              {
                sub_1009289DC(v337, v255, &v338, v163);
              }
            }

            v164 = +[IMRGLog warning];
            if (os_log_type_enabled(v164, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v340 = v150;
              _os_log_fault_impl(&_mh_execute_header, v164, OS_LOG_TYPE_FAULT, "Trying to register account without corresponding SIM -- failing {userUniqueIdentifier: %@}", buf, 0xCu);
            }

            v145 = 1;
            goto LABEL_180;
          }

          if (![(__CFString *)v120 count])
          {
            goto LABEL_147;
          }

          v150 = +[IMRGLog warning];
          if (os_log_type_enabled(v150, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v340 = theDict;
            v341 = 2112;
            v342 = v120;
            v151 = v150;
            v152 = "********* Not adding user dictionary, we already had another apple ID based registration: %@  (registrations: %@)";
LABEL_212:
            _os_log_fault_impl(&_mh_execute_header, v151, OS_LOG_TYPE_FAULT, v152, buf, 0x16u);
          }

LABEL_164:
          v145 = 1;
          goto LABEL_184;
        }

LABEL_147:
        v145 = 0;
LABEL_185:
        if ([v272 count] || (-[__CFString hasSentinel](v137, "hasSentinel") & 1) != 0 || (-[__CFString shouldRegisterUsingDSHandle](v137, "shouldRegisterUsingDSHandle") & 1) != 0)
        {
          if (v145)
          {
            goto LABEL_189;
          }

LABEL_198:
          v174 = +[IMRGLog registration];
          v175 = v174;
          v249 = v136;
          if (v119)
          {
            if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v340 = v119;
              v341 = 2112;
              v342 = theDict;
              _os_log_debug_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEBUG, "   ** Not adding user dictionary, already had one: %@  (%@)", buf, 0x16u);
            }
          }

          else
          {
            if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
            {
              v176 = [(__CFString *)v137 serviceType];
              *buf = 138412546;
              v340 = theDict;
              v341 = 2112;
              v342 = v176;
              _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "   Adding user dictionary: %@  for service: %@", buf, 0x16u);
            }

            [v116 addObject:theDict];
          }

          v256 = v138;
          v177 = v44;
          v178 = +[IMRGLog registration];
          if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
          {
            v179 = [(__CFString *)v137 idsUserID];
            v180 = [(__CFString *)v137 authenticationCert];
            *buf = 138412546;
            v340 = v179;
            v341 = 2112;
            v342 = v180;
            _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "   => Adding auth user ID: %@    cert: %@", buf, 0x16u);
          }

          v253 = *(a1 + 64);
          v181 = [(__CFString *)v137 idsUserID];
          v182 = [(__CFString *)v137 authenticationCert];
          +[IDSRegistrationKeyManager sharedInstance];
          v184 = v183 = v137;
          v185 = [v184 identityPrivateKey];
          v186 = +[IDSRegistrationKeyManager sharedInstance];
          v187 = [v186 identityPublicKey];
          v188 = v185;
          a1 = v280;
          [v253 addAuthUserID:v181 certificate:v182 privateKey:v188 publicKey:v187];

          [v241 addObject:v183];
          v171 = theDict;
          v44 = v177;
          v136 = v249;
          v138 = v256;
        }

        else
        {
          if (((v145 | sub_1005288CC() ^ 1) & 1) == 0)
          {
            goto LABEL_198;
          }

          if (v145)
          {
LABEL_189:
            v166 = +[IMRGLog registration];
            if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
            {
              v167 = [(__CFString *)v137 serviceType];
              *buf = 138412546;
              v340 = theDict;
              v341 = 2112;
              v342 = v167;
              _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "   Failing registration for user dictionary: %@,  service: %@", buf, 0x16u);
            }

            [*(*(a1 + 32) + 8) removeObject:v137];
            [*(*(a1 + 32) + 32) removeObject:v137];
            v168 = *(a1 + 32);
            v169 = v137;
            v170 = 0;
          }

          else
          {
            v172 = +[IMRGLog registration];
            if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
            {
              v173 = [(__CFString *)v137 serviceType];
              *buf = 138412546;
              v340 = theDict;
              v341 = 2112;
              v342 = v173;
              _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "   Skipping user dictionary: %@, no URIs   for service: %@", buf, 0x16u);
            }

            [*(*(a1 + 32) + 8) removeObject:v137];
            [*(*(a1 + 32) + 32) removeObject:v137];
            v168 = *(a1 + 32);
            v169 = v137;
            v170 = 43;
          }

          [v168 _notifyRegistrationFailure:v169 responseCode:1 registrationError:v170 error:0 info:0];
          v171 = theDict;
        }

        v43 = 1;
        v42 = v245;
        v45 = v264;
LABEL_209:
        v45 = v45 + 1;
      }

      while (v45 != v42);
      v189 = [obj countByEnumeratingWithState:&v323 objects:v347 count:16];
      v42 = v189;
      if (!v189)
      {
LABEL_226:

        IDSAssignPushIdentityToMessage();
        v201 = +[IMRGLog registration];
        if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
        {
          v202 = *(a1 + 48);
          *buf = 138412546;
          v340 = v246;
          v341 = 2112;
          v342 = v202;
          _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "   Services: %@ for register: %@", buf, 0x16u);
        }

        v285 = v43;

        v203 = *(a1 + 64);
        v204 = [(__CFString *)v246 allValues];
        [v203 setServices:v204];

        [*(a1 + 64) setDeviceName:v243];
        v205 = *(a1 + 64);
        v206 = [*(*(a1 + 32) + 120) pushToken];
        [v205 setPushToken:v206];

        v207 = +[IMRGLog registration];
        if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
        {
          v208 = [*(*(a1 + 32) + 120) pushToken];
          *buf = 138412290;
          v340 = v208;
          _os_log_impl(&_mh_execute_header, v207, OS_LOG_TYPE_DEFAULT, "Push handler returned push token: %@", buf, 0xCu);
        }

        [*(a1 + 64) setHardwareVersion:v238];
        [*(a1 + 64) setOsVersion:v237];
        [*(a1 + 64) setSoftwareVersion:v236];
        [*(a1 + 64) setPrivateDeviceData:v235];
        v209 = *(a1 + 64);
        v210 = [*(a1 + 32) registrationReasonTracker];
        v211 = [v210 registrationRequestReasonString];
        [v209 setRequestReasonString:v211];

        v212 = [*(a1 + 32) registrationReasonTracker];
        [v212 clearRegistrationRequestReason];

        v213 = *(a1 + 64);
        v309[0] = _NSConcreteStackBlock;
        v309[1] = 3221225472;
        v309[2] = sub_10052C9EC;
        v309[3] = &unk_100BDF918;
        v309[4] = *(a1 + 32);
        theDicta = v241;
        v310 = theDicta;
        v311 = *(a1 + 72);
        v312 = *(a1 + 48);
        v313 = *(a1 + 80);
        v314 = *(a1 + 89);
        [v213 setCompletionBlock:v309];
        [*(a1 + 64) setTimeout:36000.0];
        sub_1004C6E84();
        v307 = 0u;
        v308 = 0u;
        v305 = 0u;
        v306 = 0u;
        v214 = v246;
        v215 = [(__CFString *)v214 countByEnumeratingWithState:&v305 objects:v336 count:16];
        if (v215)
        {
          v216 = v215;
          v217 = *v306;
          do
          {
            for (ii = 0; ii != v216; ii = ii + 1)
            {
              if (*v306 != v217)
              {
                objc_enumerationMutation(v214);
              }

              v219 = *(*(&v305 + 1) + 8 * ii);
              v220 = +[NSString stringGUID];
              v221 = [(__CFString *)v214 objectForKey:v219];
              v222 = [IDSLogFormatter descriptionForObject:v221 options:2];

              v223 = +[IMRGLog registration];
              if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v340 = v219;
                v341 = 2112;
                v342 = v220;
                _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_DEFAULT, "Registering service %@ timestampGUID: %@", buf, 0x16u);
              }

              v298 = _NSConcreteStackBlock;
              v299 = 3221225472;
              v300 = sub_10052CBA8;
              v301 = &unk_100BD6E18;
              v302 = v219;
              v303 = v220;
              v304 = v222;
              cut_dispatch_log_queue();
            }

            v216 = [(__CFString *)v214 countByEnumeratingWithState:&v305 objects:v336 count:16];
          }

          while (v216);
        }

        v3 = v234;
        if (v283)
        {
          ct_green_tea_logger_create_static();
          v224 = getCTGreenTeaOsLogHandle();
          v225 = v224;
          if (v224)
          {
            v226 = v224;
            if (os_log_type_enabled(v226, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_INFO, "Transmitting phone number", buf, 2u);
            }
          }
        }

        if ((v285 & 1) != 0 || *(v280 + 89) == 1)
        {
          v227 = [*(v280 + 32) validationQueue];
          v292[0] = _NSConcreteStackBlock;
          v292[1] = 3221225472;
          v292[2] = sub_10052CC70;
          v292[3] = &unk_100BDF960;
          v228 = *(v280 + 64);
          v293 = *(v280 + 72);
          v229 = *(v280 + 48);
          v230 = *(v280 + 32);
          v294 = v229;
          v295 = v230;
          v296 = *(v280 + 64);
          v297 = *(v280 + 80);
          v291[0] = _NSConcreteStackBlock;
          v291[1] = 3221225472;
          v291[2] = sub_10052CE50;
          v291[3] = &unk_100BDEB30;
          v291[4] = *(v280 + 32);
          [v227 queueBuildingValidationDataIfNecessaryForMessage:v228 subsystem:1 withQueueCompletion:v292 sendBlock:v291];
        }

        else
        {
          v231 = +[IMRGLog registration];
          if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
          {
            v232 = *(v280 + 72);
            *buf = 138412290;
            v340 = v232;
            _os_log_impl(&_mh_execute_header, v231, OS_LOG_TYPE_DEFAULT, "Not sending %@ we didn't have any authenticated registrations", buf, 0xCu);
          }

          [*(v280 + 32) __dumpState];
        }

        goto LABEL_252;
      }
    }
  }
}

id sub_10052C984(id a1, IDSURI *a2)
{
  v2 = [(IDSURI *)a2 prefixedURI];
  v3 = [NSDictionary dictionaryWithObject:v2 forKey:@"uri"];

  return v3;
}

void sub_10052C9EC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "****** Received registration response: %@", buf, 0xCu);
  }

  [*(*(a1 + 32) + 32) removeAllObjects];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = *(a1 + 40);
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(a1 + 32) + 8) removeObjectIdenticalTo:*(*(&v18 + 1) + 8 * v17)];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }

  [*(a1 + 32) _processRegistrationMessage:v9 sentRegistrations:*(a1 + 40) descriptionString:*(a1 + 48) actionID:*(a1 + 56) actionString:*(a1 + 64) isDeregister:*(a1 + 72) deliveredWithError:v10 resultCode:a4 resultDictionary:v11];
}

void sub_10052CBA8(void *a1)
{
  v2 = +[IMRGLog FTMessageDelivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = 138412802;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ Service hash info for register with timestampGUID: %@ info: %@", &v6, 0x20u);
  }
}

void sub_10052CC70(uint64_t a1, int a2)
{
  v4 = +[IMRGLog registration];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Queued %@ for validation (%@)", &v12, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = +[FTDeviceSupport sharedInstance];
      v11 = [v10 deviceInformationString];
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending %@   (ID: %@ Environment: %@)", &v12, 0x20u);
    }

    [*(a1 + 48) __sendMessage:*(a1 + 56)];
  }

  if (qword_100CBEEA0 != -1)
  {
    sub_100928A54();
  }

  if (off_100CBEE98)
  {
    (off_100CBEE98)(13, @"IdentityServicesRegistration", [NSDictionary dictionaryWithObject:*(a1 + 64) forKey:@"action"], 0);
  }
}

void sub_10052D5B4(_Unwind_Exception *a1)
{
  os_activity_scope_leave((v1 - 168));
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

uint64_t sub_10052D624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [*(a1 + 32) _processRegistrationMessage:a2 sentRegistrations:0 descriptionString:*(a1 + 40) actionID:*(a1 + 48) actionString:*(a1 + 56) isDeregister:1 deliveredWithError:a3 resultCode:a4 resultDictionary:a5];
  result = *(a1 + 64);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void sub_10052D6A4(uint64_t a1, int a2)
{
  v4 = +[IMRGLog registration];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Queued %@ for validation (%@)", &v12, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = +[FTDeviceSupport sharedInstance];
      v11 = [v10 deviceInformationString];
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending %@   (ID: %@ Environment: %@)", &v12, 0x20u);
    }

    [*(a1 + 48) __sendMessage:*(a1 + 56)];
  }

  if (qword_100CBEEB0 != -1)
  {
    sub_100928A7C();
  }

  if (off_100CBEEA8)
  {
    (off_100CBEEA8)(13, @"IdentityServicesRegistration", [NSDictionary dictionaryWithObject:*(a1 + 64) forKey:@"action"], 0);
  }
}

void sub_10052D884(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __sendMessage:v3];
}

void sub_10052D9E8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  [*(*(a1 + 32) + 24) removeObjectIdenticalTo:*(a1 + 40)];
  [*(*(a1 + 32) + 16) removeObjectIdenticalTo:*(a1 + 40)];
  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v23 = 138413058;
    v24 = v14;
    v25 = 2112;
    v26 = v10;
    v27 = 1024;
    v28 = a4;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Message class: %@  delivered with error: %@  code: %d result: %@", &v23, 0x26u);
  }

  v15 = [*(a1 + 40) absintheRetries];
  [*(a1 + 40) setAbsintheRetries:0];
  if (qword_100CBEEC0 != -1)
  {
    sub_100928AA4();
  }

  if (byte_100CBEEB8 == 1)
  {
    a4 = IMGetDomainIntForKey();
    v16 = +[IMRGLog warning];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_100928ACC();
    }
  }

  if (a4 == 6008 || a4 == 6005)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v9;
      v20 = +[IMRGLog registration];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v19 authenticationInfo];
        v23 = 138412290;
        v24 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " *** Unauthenticated, need new auth token { auth info: %@ } ***", &v23, 0xCu);
      }
    }

    else
    {
      v19 = +[IMRGLog registration];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " *** Unauthenticated, need new auth token { message: %@ }", &v23, 0xCu);
      }
    }

    if ([*(a1 + 40) registrationType] == 1)
    {
      [*(a1 + 40) setAuthenticationToken:0];
    }

    goto LABEL_26;
  }

  if (a4 != 6004)
  {
    if ((a4 & 0xFFFFFFFFFFFFFFF7) == 0x1771)
    {
      v22 = +[IMRGLog warning];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_100928B64();
      }
    }

    else if (!a4)
    {
      (*(*(a1 + 48) + 16))();
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v17 = +[IMRGLog warning];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    sub_1009289A0();
  }

  [*(*(a1 + 32) + 152) cleanupValidationInfoForSubsystemMechanism:{objc_msgSend(*(a1 + 32), "_authSubsystemForInfo:", *(a1 + 40))}];
  if (v15 > 2)
  {
LABEL_26:
    (*(*(a1 + 56) + 16))();
    goto LABEL_27;
  }

  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 67109120;
    LODWORD(v24) = v15;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " Retries so far: %d  trying again", &v23, 8u);
  }

  [*(a1 + 40) setAbsintheRetries:(v15 + 1)];
  [*(*(a1 + 32) + 152) removeFromQueue:v9 subsystem:{objc_msgSend(*(a1 + 32), "_authSubsystemForInfo:", *(a1 + 40))}];
  [*(a1 + 32) _sendAuthenticateRegistration:*(a1 + 40)];
LABEL_27:
  [*(*(a1 + 32) + 152) removeFromQueue:v9 subsystem:1];
  [*(a1 + 32) _dequeuePendingRequestsIfNecessary];
}

void sub_10052E258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10052E27C(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [v3 userInfo];
  v6 = [v5 objectForKey:@"info"];

  v7 = [v3 responseCertificate];
  v32 = v3;
  v8 = [v3 responseUserID];
  v9 = +[FTDeviceSupport sharedInstance];
  v35 = [v9 isC2KEquipment];

  v10 = +[IDSRegistrationController sharedInstance];
  v11 = [a1[4] mainID];
  v12 = [v10 activeRegistrationsMatchingUserID:v11];

  v13 = +[IMRGLog registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting auth cert for user ID: %@", buf, 0xCu);
  }

  v14 = +[IDSRegistrationKeychainManager sharedInstance];
  v33 = v8;
  [v14 setAuthenticationCert:v7 forID:v8];

  v15 = +[IMRGLog registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found existing registrations to authenticate: %@", buf, 0xCu);
  }

  if (([v12 containsObjectIdenticalTo:a1[4]] & 1) == 0)
  {
    v16 = [v12 arrayByAddingObject:a1[4]];

    v12 = v16;
  }

  v17 = v8;
  v31 = v6;
  if (![v12 count])
  {
    v18 = IMSingleObjectArray();

    v12 = v18;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v12;
  v19 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v36 + 1) + 8 * i);
        [v23 setIdsUserID:v17];
        v24 = [NSNumber numberWithBool:v35];
        [v23 setIsCDMA:v24];

        v25 = +[IDSRegistrationKeyManager sharedInstance];
        v26 = [v25 keyPairSignature];
        [v23 setKeyPairSignature:v26];

        [v23 saveToKeychain];
        if (v23 == a1[4] || ([*(a1[5] + 3) containsObjectIdenticalTo:v23] & 1) != 0 || objc_msgSend(*(a1[5] + 2), "containsObjectIdenticalTo:", v23))
        {
          if (WeakRetained)
          {
            v27 = *(a1[5] + 18);
            v28 = [v23 registrationTraceID];
            v29 = [WeakRetained overallEventTracingOperation];
            [v27 trackIDSMessageWithIdentifier:v28 messageType:1 operation:v29];

            v17 = v33;
          }

          [a1[5] _notifyIDSAuthenticationSuccess:v23];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v20);
  }
}

void sub_10052E68C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v7 = [NSString stringWithFormat:@"IDS Authentication failed: %d", a2];
  sub_100450174(0, @"Registration", v7, 1073);

  [*(a1 + 32) saveToKeychain];
  if (![*(a1 + 32) registrationType])
  {
    v8 = [*(a1 + 40) registrationReasonTracker];
    v9 = [*(a1 + 32) userUniqueIdentifier];
    [v8 setPNRReason:15 forUserUniqueIdentifier:v9];
  }

  if (a3 == 6008 || ((v11 = [v12 code], a3 == 5008) || v11 == 5008) && !*(a1 + 48) && objc_msgSend(*(a1 + 32), "registrationType") == 1)
  {
    v10 = 0;
    a2 = 18;
  }

  else
  {
    v10 = 1;
  }

  [*(a1 + 32) setAuthenticationToken:0];
  [*(a1 + 40) _notifyProvisionFailure:*(a1 + 32) responseCode:a3 registrationError:a2 error:v12 fatal:v10 info:0];
}

void sub_10052EDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location)
{
  objc_destroyWeak((v49 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10052EDFC(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = +[FTDeviceSupport sharedInstance];
  v53 = [v5 isC2KEquipment];

  v47 = [a1[4] usersWithRealm:0];
  v44 = v3;
  [v3 authenticationResponses];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v69 = 0u;
  v48 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v48)
  {
    v46 = *v67;
    v6 = &uuid_unparse_upper_ptr;
    do
    {
      v7 = 0;
      do
      {
        if (*v67 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v66 + 1) + 8 * v7);
        v54 = [v8 userID];
        v9 = [v8 cert];
        v10 = [v8 responseCode];
        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = sub_10052F554;
        v65[3] = &unk_100BDFA90;
        v49 = v8;
        v65[4] = v8;
        v11 = [v47 __imArrayByFilteringWithBlock:v65];
        v12 = [v11 firstObject];

        v13 = +[IDSRegistrationController sharedInstance];
        v14 = [v13 activeRegistrations];
        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_10052F5B8;
        v63[3] = &unk_100BDF830;
        v15 = v12;
        v64 = v15;
        v16 = [v14 __imArrayByFilteringWithBlock:v63];

        v17 = +[IDSPACStateTracker sharedInstance];
        [v17 noteAuthenticationFinished];

        v18 = [v6[504] registration];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v73 = v54;
          v74 = 2048;
          v75 = v10;
          v76 = 2112;
          v77 = v15;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setting auth certs {userID: %@, responseCode: %lld, matchingUser: %@}", buf, 0x20u);
        }

        if (v15)
        {
          if (v10)
          {
            [a1[4] setCredential:0 forUser:v15];
          }

          else
          {
            v19 = +[IDSPACStateTracker sharedInstance];
            [v19 notePhoneAuthCertGained];

            v20 = [[IDSAuthenticationCertificate alloc] initWithDataRepresentation:v9];
            [a1[4] setAuthenticationCertificate:v20 forUser:v15];
          }
        }

        v51 = v7;
        if (![v16 count] && objc_msgSend(obj, "count") == 1)
        {
          v21 = IMSingleObjectArray();

          v16 = v21;
        }

        v52 = v15;
        v50 = v9;
        v22 = [v6[504] registration];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v73 = v16;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Found existing registrations to authenticate: %@", buf, 0xCu);
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v23 = v16;
        v24 = [v23 countByEnumeratingWithState:&v59 objects:v71 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v60;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v60 != v26)
              {
                objc_enumerationMutation(v23);
              }

              if (WeakRetained)
              {
                v28 = *(a1[6] + 18);
                v29 = [*(*(&v59 + 1) + 8 * i) registrationTraceID];
                v30 = [WeakRetained overallEventTracingOperation];
                [v28 trackIDSMessageWithIdentifier:v29 messageType:1 operation:v30];
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v59 objects:v71 count:16];
          }

          while (v25);
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v31 = v23;
        v32 = [v31 countByEnumeratingWithState:&v55 objects:v70 count:16];
        if (!v32)
        {
          goto LABEL_47;
        }

        v33 = v32;
        v34 = *v56;
        while (2)
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v56 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v55 + 1) + 8 * j);
            if (v10)
            {
              v42 = [NSString stringWithFormat:@"IDS Authentication failed: %d", v10];
              sub_100450174(0, @"Registration", v42, 1073);

              [v36 saveToKeychain];
              if ((v10 & 0xFFFFFFFFFFFFFFF7) == 0x1771)
              {
                v43 = 36;
              }

              else
              {
                v43 = 10;
              }

              [a1[6] _notifyProvisionFailure:v36 responseCode:objc_msgSend(v49 registrationError:"responseCode") error:v43 fatal:0 info:{v10 != 6008, 0}];
              goto LABEL_47;
            }

            [*(*(&v55 + 1) + 8 * j) setIdsUserID:v54];
            v37 = [NSNumber numberWithBool:v53];
            [v36 setIsCDMA:v37];

            v38 = +[IDSRegistrationKeyManager sharedInstance];
            v39 = [v38 keyPairSignature];
            [v36 setKeyPairSignature:v39];

            [v36 saveToKeychain];
            v40 = [v36 phoneNumber];
            if (v40)
            {
              goto LABEL_35;
            }

            v41 = [v52 phoneNumber];

            if (v41)
            {
              v40 = [v52 phoneNumber];
              [v36 setPhoneNumber:v40];
LABEL_35:
            }

            if (v36 == a1[5] || ([*(a1[6] + 3) containsObjectIdenticalTo:v36] & 1) != 0 || objc_msgSend(*(a1[6] + 2), "containsObjectIdenticalTo:", v36))
            {
              [a1[6] _notifyIDSAuthenticationSuccess:v36];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v55 objects:v70 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }

LABEL_47:

        v7 = v51 + 1;
        v6 = &uuid_unparse_upper_ptr;
      }

      while ((v51 + 1) != v48);
      v48 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
    }

    while (v48);
  }
}