void sub_100002E98(uint64_t a1)
{
  v1 = a1;
  result = 0;
  v2 = SecItemCopyMatching(*(*(a1 + 32) + 32), &result);
  switch(v2)
  {
    case 0:
      v36 = +[NSMutableArray array];
      if (CFArrayGetCount(result) < 1)
      {
LABEL_34:
        v30 = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:1, v35];
        v38 = v30;
        v31 = [NSArray arrayWithObjects:&v38 count:1];
        [v36 sortUsingDescriptors:v31];

        v32 = *(v1 + 40);
        v33 = [NSArray arrayWithArray:v36];
        (*(v32 + 16))(v32, v33, 0);

        return;
      }

      v4 = 0;
      v5 = kSecValueData;
      v6 = kSecValueRef;
      v35 = kSecValueRef;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(result, v4);
        Value = CFDictionaryGetValue(ValueAtIndex, v5);
        if (Value)
        {
          v9 = Value;
          v10 = CFGetTypeID(Value);
          if (v10 == CFDataGetTypeID())
          {
            v11 = v9;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        v12 = CFDictionaryGetValue(ValueAtIndex, v6);
        v13 = SecKeyCopyPublicKey(v12);
        *buf = 0;
        v14 = SecKeyCopyExternalRepresentation(v13, buf);
        if (!v14)
        {
          CFRelease(v13);
        }

        CFRelease(v12);
        v15 = CFDictionaryGetValue(ValueAtIndex, kSecAttrLabel);
        if (v15 && (v16 = v15, v17 = CFGetTypeID(v15), v17 == CFStringGetTypeID()))
        {
          v18 = v16;
        }

        else
        {
          v18 = 0;
        }

        v19 = CFDictionaryGetValue(ValueAtIndex, kSecAttrCreationDate);
        if (v19 && (v20 = v19, v21 = CFGetTypeID(v19), v21 == CFDateGetTypeID()))
        {
          v22 = v20;
          if (v14)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v22 = 0;
          if (v14)
          {
LABEL_27:
            if (v11)
            {
              if (v18)
              {
                v23 = [v18 rangeOfString:@":"];
                if (v23 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v24 = v23;
                  v25 = [v18 substringToIndex:v23];
                  if ([v25 isEqualToString:*(*(v1 + 32) + 72)])
                  {
                    v26 = [v18 substringFromIndex:v24 + 1];
                    v27 = v5;
                    v28 = v1;
                    v29 = [[ASAKey alloc] initWithName:v26 privateKey:v11 publicKey:v14 creationDate:v22];
                    [v36 addObject:v29];

                    v1 = v28;
                    v5 = v27;
                    v6 = kSecValueRef;
                  }
                }
              }
            }
          }
        }

        if (CFArrayGetCount(result) <= ++v4)
        {
          goto LABEL_34;
        }
      }

    case 0xFFFF9D35:
      v3 = *(*(v1 + 32) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[KeychainAccess fetchASAKeysWithCompletion:]_block_invoke";
        v40 = 1024;
        v41 = 223;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s @%d: Keychain is not available (syncing of user items may be disabled)", buf, 0x12u);
      }

      goto LABEL_8;
    case 0xFFFF9D2C:
      if (os_log_type_enabled(*(*(v1 + 32) + 8), OS_LOG_TYPE_DEBUG))
      {
        sub_10008051C();
      }

LABEL_8:
      (*(*(v1 + 40) + 16))();
      return;
  }

  v34 = [*(v1 + 32) createErrorForStatus:v2 fromFunction:@"SecItemCopyMatching"];
  if (os_log_type_enabled(*(*(v1 + 32) + 8), OS_LOG_TYPE_ERROR))
  {
    sub_1000805A4();
  }

  (*(*(v1 + 40) + 16))();
}

void sub_100003AD4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

uint64_t *sub_100003AF0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

__CFString *bundleIDForAuditToken(_OWORD *a1)
{
  v1 = a1[1];
  *v6.val = *a1;
  *&v6.val[4] = v1;
  v2 = SecTaskCreateWithAuditToken(0, &v6);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopySigningIdentifier(v2, 0);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id systemBootTime()
{
  *v5 = 0x1500000001;
  v3 = 0;
  v4 = 0;
  v2 = 16;
  if (sysctl(v5, 2u, &v3, &v2, 0, 0) == -1)
  {
    v0 = 0;
  }

  else
  {
    v0 = [NSDate dateWithTimeIntervalSince1970:v4 / 1000000.0 + v3];
  }

  return v0;
}

uint64_t isOSFeatureEnabled(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = [a1 UTF8String];
  v7 = [v5 UTF8String];

  return __os_feature_enabled_impl(v6, v7);
}

id getGlobalPreferences()
{
  v0 = CFPreferencesCopyValue(@"com.apple.CorePrescription.options", kCFPreferencesAnyApplication, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  v1 = v0;
  if (v0 && (v2 = CFGetTypeID(v0), v2 == CFDictionaryGetTypeID()))
  {
    v3 = [NSMutableDictionary dictionaryWithDictionary:v1];
  }

  else
  {
    v3 = +[NSMutableDictionary dictionary];
    if (!v1)
    {
      goto LABEL_6;
    }
  }

  CFRelease(v1);
LABEL_6:

  return v3;
}

void sub_1000040B8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 name];
    v10 = 136315650;
    v11 = "[CRXUDispatchQueue dispatchSync:]_block_invoke";
    v12 = 1024;
    v13 = 80;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s @%d: <%{public}@> sync enter", &v10, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 name];
    v10 = 136315650;
    v11 = "[CRXUDispatchQueue dispatchSync:]_block_invoke";
    v12 = 1024;
    v13 = 82;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s @%d: <%{public}@> sync leave", &v10, 0x1Cu);
  }
}

void sub_100004308(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 name];
    v10 = 136315650;
    v11 = "[CRXUDispatchQueue dispatchAsync:]_block_invoke";
    v12 = 1024;
    v13 = 92;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s @%d: <%{public}@> async enter", &v10, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 name];
    v10 = 136315650;
    v11 = "[CRXUDispatchQueue dispatchAsync:]_block_invoke";
    v12 = 1024;
    v13 = 94;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s @%d: <%{public}@> async leave", &v10, 0x1Cu);
  }
}

void sub_100004588(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 name];
    v10 = 136315650;
    v11 = "[CRXUDispatchQueue afterDelay:dispatchAsync:]_block_invoke";
    v12 = 1024;
    v13 = 105;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s @%d: <%{public}@> async enter", &v10, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 name];
    v10 = 136315650;
    v11 = "[CRXUDispatchQueue afterDelay:dispatchAsync:]_block_invoke";
    v12 = 1024;
    v13 = 107;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s @%d: <%{public}@> async leave", &v10, 0x1Cu);
  }
}

uint64_t sub_100004AE0(uint64_t a1)
{
  qword_1000BA5A0 = [objc_alloc(*(a1 + 32)) initWithQueue:&_dispatch_main_q name:@"<main>"];

  return _objc_release_x1();
}

uint64_t CRXUObjectsEqual(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

uint64_t CRXUIsVM()
{
  if (qword_1000BA5B8[0] != -1)
  {
    sub_100080AA4();
  }

  return byte_1000BA5B0;
}

void sub_100005044(id a1)
{
  v2 = 0;
  v1 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    byte_1000BA5B0 = v2 != 0;
  }
}

int main(int argc, const char **argv, const char **envp)
{
  qword_1000C11C0 = [objc_allocWithZone(type metadata accessor for CorePrescriptionServiceDelegate()) init];
  qword_1000C11C8 = [objc_opt_self() serviceListener];
  [qword_1000C11C8 setDelegate:qword_1000C11C0];
  [qword_1000C11C8 resume];
  return 0;
}

id sub_10000513C()
{
  v0 = type metadata accessor for CRXCEyePrescription();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v1[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v3 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v1[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v4 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v1[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v5 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v1[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v1[v2] = 0;
  swift_beginAccess();
  *&v1[v3] = 0;
  swift_beginAccess();
  *&v1[v4] = 0;
  swift_beginAccess();
  *&v1[v5] = 0;
  v7.receiver = v1;
  v7.super_class = v0;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_100005270(uint64_t a1)
{
  v2 = sub_100005A88(&qword_1000B74E0, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000052DC(uint64_t a1)
{
  v2 = sub_100005A88(&qword_1000B74E0, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000534C(uint64_t a1)
{
  v2 = sub_100005A88(&qword_1000B7518, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_1000053B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000053E8(uint64_t a1, id *a2)
{
  result = sub_100081298();
  *a2 = 0;
  return result;
}

uint64_t sub_100005460(uint64_t a1, id *a2)
{
  v3 = sub_1000812A8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000054E0@<X0>(void *a1@<X8>)
{
  sub_1000812B8();
  v2 = sub_100081288();

  *a1 = v2;
  return result;
}

BOOL sub_100005540(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1000055D0(uint64_t a1)
{
  v2 = sub_100005A88(&qword_1000B7518, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000563C(uint64_t a1)
{
  v2 = sub_100005A88(&qword_1000B7518, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000056A8(void *a1, uint64_t a2)
{
  v4 = sub_100005A88(&qword_1000B7518, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000575C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005A88(&qword_1000B7518, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000057D8()
{
  v2 = *v0;
  sub_100081988();
  sub_100081238();
  return sub_1000819B8();
}

uint64_t sub_100005844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005A88(&qword_1000B7518, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000058C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100081288();

  *a2 = v5;
  return result;
}

uint64_t sub_100005910@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000812B8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000593C(uint64_t a1)
{
  v2 = sub_100005A88(&qword_1000B74B8, type metadata accessor for FileProtectionType);
  v3 = sub_100005A88(&qword_1000B74C0, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100005A88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005AD0()
{
  v1 = *v0;
  sub_1000812B8();
  v2 = sub_100081428();

  return v2;
}

uint64_t sub_100005B0C()
{
  v1 = *v0;
  sub_1000812B8();
  sub_100081388();
}

Swift::Int sub_100005B60()
{
  v1 = *v0;
  sub_1000812B8();
  sub_100081988();
  sub_100081388();
  v2 = sub_1000819B8();

  return v2;
}

uint64_t sub_100005BD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1000812B8();
  v6 = v5;
  if (v4 == sub_1000812B8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100081888();
  }

  return v9 & 1;
}

void sub_100005E7C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100005F14()
{
  result = qword_1000B7508;
  if (!qword_1000B7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7508);
  }

  return result;
}

uint64_t sub_100006048(uint64_t a1)
{
  v86 = sub_10003C570(_swiftEmptyArrayStorage);
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v80 = v6;
  v81 = a1 + 64;
  v79 = a1;
  if (!v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    while (1)
    {
      v10 = v7;
LABEL_15:
      v13 = __clz(__rbit64(v5));
      v14 = (v5 - 1) & v5;
      v15 = v13 | (v10 << 6);
      v16 = *(*(a1 + 48) + v15);
      sub_100006888(*(a1 + 56) + 32 * v15, &v94);
      LOBYTE(v96) = v16;
      sub_1000068E4(&v94, (&v96 + 8));
      v12 = v10;
LABEL_16:
      v99[0] = v96;
      v99[1] = v97;
      v100 = v98;
      if (!v98)
      {

        return v86;
      }

      v85 = v12;
      v17 = v99[0];
      sub_1000068E4((v99 + 8), &v96);
      sub_100006888(&v96, &v94);
      if (swift_dynamicCast())
      {
        break;
      }

      v23 = v14;
      v24 = sub_100055EC8(v17);
      v26 = v25;
      sub_100006888(&v96, &v94);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v93[0] = v86;
      v28 = sub_1000525C4(v24, v26);
      v30 = v86[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        goto LABEL_91;
      }

      v34 = v29;
      if (v86[3] < v33)
      {
        sub_100052730(v33, isUniquelyReferenced_nonNull_native);
        v28 = sub_1000525C4(v24, v26);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_100;
        }

LABEL_33:
        if (v34)
        {
          goto LABEL_5;
        }

        goto LABEL_34;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_33;
      }

      v73 = v28;
      sub_1000537E4();
      v28 = v73;
      if (v34)
      {
LABEL_5:
        v8 = v28;

        v86 = *&v93[0];
        v9 = (*(*&v93[0] + 56) + 32 * v8);
        sub_1000068F4(v9);
        sub_1000068E4(&v94, v9);
        sub_1000068F4(&v96);
        goto LABEL_6;
      }

LABEL_34:
      v39 = *&v93[0];
      *(*&v93[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v40 = (v39[6] + 16 * v28);
      *v40 = v24;
      v40[1] = v26;
      sub_1000068E4(&v94, (v39[7] + 32 * v28));
      sub_1000068F4(&v96);
      v41 = v39[2];
      v32 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v32)
      {
        goto LABEL_93;
      }

      v86 = v39;
      v39[2] = v42;
LABEL_6:
      v7 = v85;
      v5 = v23;
      if (!v23)
      {
        goto LABEL_8;
      }
    }

    v19 = *(&v93[0] + 1);
    v18 = *&v93[0];
    v83 = sub_100055EC8(v17);
    v84 = v20;
    v21 = v19 >> 62;
    v90 = HIDWORD(v18);
    v82 = v14;
    if ((v19 >> 62) <= 1)
    {
      if (v21)
      {
        v43 = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_96;
        }

        v22 = v43;
        if (v43)
        {
LABEL_29:
          sub_10003E058(0, v22 & ~(v22 >> 63), 0);
          v89 = v18;
          if (v21)
          {
            if (v21 == 2)
            {
              v38 = *(v18 + 16);
            }

            else
            {
              v38 = v18;
            }
          }

          else
          {
            v38 = 0;
          }

          v92 = v38;
          if (v22 < 0)
          {
            goto LABEL_95;
          }

          v44 = 0;
          v88 = v18 >> 32;
          v87 = v93 + v38;
          v91 = v18;
          while (2)
          {
            if (v44 >= v22)
            {
              __break(1u);
LABEL_83:
              __break(1u);
              goto LABEL_84;
            }

            v45 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              goto LABEL_83;
            }

            v46 = v92 + v44;
            if (v21 == 2)
            {
              if (v46 < *(v18 + 16))
              {
                goto LABEL_86;
              }

              if (v46 >= *(v18 + 24))
              {
                goto LABEL_88;
              }

              v51 = sub_100080AE8();
              if (!v51)
              {
                goto LABEL_99;
              }

              v48 = v51;
              v52 = sub_100080B18();
              v50 = v46 - v52;
              if (__OFSUB__(v46, v52))
              {
                goto LABEL_90;
              }

LABEL_59:
              v53 = *(v48 + v50);
            }

            else
            {
              if (v21 == 1)
              {
                if (v46 < v89 || v46 >= v88)
                {
                  goto LABEL_87;
                }

                v47 = sub_100080AE8();
                if (!v47)
                {
                  goto LABEL_98;
                }

                v48 = v47;
                v49 = sub_100080B18();
                v50 = v46 - v49;
                if (__OFSUB__(v46, v49))
                {
                  goto LABEL_89;
                }

                goto LABEL_59;
              }

              if (v46 >= BYTE6(v19))
              {
                goto LABEL_85;
              }

              LOWORD(v93[0]) = v18;
              BYTE2(v93[0]) = BYTE2(v18);
              BYTE3(v93[0]) = BYTE3(v18);
              BYTE4(v93[0]) = v90;
              BYTE5(v93[0]) = BYTE5(v18);
              BYTE6(v93[0]) = BYTE6(v18);
              BYTE7(v93[0]) = HIBYTE(v18);
              WORD4(v93[0]) = v19;
              BYTE10(v93[0]) = BYTE2(v19);
              BYTE11(v93[0]) = BYTE3(v19);
              BYTE12(v93[0]) = BYTE4(v19);
              BYTE13(v93[0]) = BYTE5(v19);
              v53 = v87[v44];
            }

            sub_100006940(&qword_1000B7528, &unk_100086800);
            v54 = swift_allocObject();
            *(v54 + 16) = xmmword_100084830;
            *(v54 + 56) = &type metadata for UInt8;
            *(v54 + 64) = &protocol witness table for UInt8;
            *(v54 + 32) = v53;
            v55 = sub_1000812E8();
            v57 = v56;
            v21 = _swiftEmptyArrayStorage[2];
            v58 = _swiftEmptyArrayStorage[3];
            if (v21 >= v58 >> 1)
            {
              sub_10003E058((v58 > 1), v21 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v21 + 1;
            v59 = &_swiftEmptyArrayStorage[2 * v21];
            v59[4] = v55;
            v59[5] = v57;
            ++v44;
            LODWORD(v21) = v19 >> 62;
            v18 = v91;
            if (v45 == v22)
            {
              a1 = v79;
              goto LABEL_66;
            }

            continue;
          }
        }
      }

      else
      {
        v22 = BYTE6(v19);
        if (BYTE6(v19))
        {
          goto LABEL_29;
        }
      }

      goto LABEL_66;
    }

    if (v21 == 2)
    {
      v37 = *(v18 + 16);
      v36 = *(v18 + 24);
      v22 = v36 - v37;
      if (__OFSUB__(v36, v37))
      {
        goto LABEL_97;
      }

      if (v22)
      {
        goto LABEL_29;
      }

LABEL_66:
      v6 = v80;
      v2 = v81;
    }

    *&v93[0] = _swiftEmptyArrayStorage;
    sub_100006940(&qword_1000B7530, &qword_100089380);
    sub_100006988();
    v60 = sub_100081248();
    v62 = v61;

    *&v93[0] = 0xBBC2626F6C62ABC2;
    *(&v93[0] + 1) = 0xA800000000000000;
    v101._countAndFlagsBits = v60;
    v101._object = v62;
    sub_1000813B8(v101);

    v95 = &type metadata for String;
    v94 = v93[0];
    sub_1000068E4(&v94, v93);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v64 = sub_1000525C4(v83, v84);
    v66 = v86[2];
    v67 = (v65 & 1) == 0;
    v32 = __OFADD__(v66, v67);
    v68 = v66 + v67;
    if (v32)
    {
      goto LABEL_92;
    }

    v69 = v65;
    if (v86[3] < v68)
    {
      break;
    }

    if (v63)
    {
      goto LABEL_72;
    }

    v74 = v64;
    sub_1000537E4();
    v64 = v74;
    v5 = v82;
    if ((v69 & 1) == 0)
    {
LABEL_77:
      v86[(v64 >> 6) + 8] |= 1 << v64;
      v75 = (v86[6] + 16 * v64);
      *v75 = v83;
      v75[1] = v84;
      sub_1000068E4(v93, (v86[7] + 32 * v64));
      sub_100006A34(v18, v19);
      sub_1000068F4(&v96);
      v76 = v86[2];
      v32 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v32)
      {
        goto LABEL_94;
      }

      v86[2] = v77;
      goto LABEL_79;
    }

LABEL_73:
    v71 = v64;

    v72 = (v86[7] + 32 * v71);
    sub_1000068F4(v72);
    sub_1000068E4(v93, v72);
    sub_100006A34(v18, v19);
    sub_1000068F4(&v96);
LABEL_79:
    v7 = v85;
    if (!v5)
    {
LABEL_8:
      if (v6 <= v7 + 1)
      {
        v11 = v7 + 1;
      }

      else
      {
        v11 = v6;
      }

      v12 = v11 - 1;
      while (1)
      {
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v10 >= v6)
        {
          v14 = 0;
          v98 = 0;
          v96 = 0u;
          v97 = 0u;
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v10);
        ++v7;
        if (v5)
        {
          goto LABEL_15;
        }
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
    }
  }

  sub_100052730(v68, v63);
  v64 = sub_1000525C4(v83, v84);
  if ((v69 & 1) == (v70 & 1))
  {
LABEL_72:
    v5 = v82;
    if ((v69 & 1) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_73;
  }

LABEL_100:
  result = sub_1000818E8();
  __break(1u);
  return result;
}

uint64_t sub_100006888(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1000068E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000068F4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006940(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100006988()
{
  result = qword_1000B88A0;
  if (!qword_1000B88A0)
  {
    sub_1000069EC(&qword_1000B7530, &qword_100089380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B88A0);
  }

  return result;
}

uint64_t sub_1000069EC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100006A34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t CRXCLensType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x65706F6C65766564;
    }

    if (a1 == 3)
    {
      return 0x6C616E6F73726570;
    }
  }

  else
  {
    if (!a1)
    {
      return 1869440356;
    }

    if (a1 == 1)
    {
      return 0x726564616572;
    }
  }

  result = sub_1000818C8();
  __break(1u);
  return result;
}

unint64_t sub_100006BC0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10000CD50(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100006BF4()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 1869440356;
    }

    if (v1 == 1)
    {
      return 0x726564616572;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0x65706F6C65766564;
  }

  if (v1 != 3)
  {
LABEL_11:
    v3 = *v0;
    result = sub_1000818C8();
    __break(1u);
    return result;
  }

  return 0x6C616E6F73726570;
}

Swift::Int sub_100006CA8()
{
  v1 = *v0;
  sub_100081988();
  sub_100081998(v1);
  return sub_1000819B8();
}

Swift::Int sub_100006CF0()
{
  v1 = *v0;
  sub_100081988();
  sub_100081998(v1);
  return sub_1000819B8();
}

id CRXCPrescriptionValues.displayValues.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CRXCPrescriptionValues.displayValues.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CRXCPrescriptionValues.calibrationValues.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CRXCPrescriptionValues.calibrationValues.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CRXCPrescriptionValues.__allocating_init(displayValues:calibrationValues:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_10000CD60(a1, a2);

  return v6;
}

id CRXCPrescriptionValues.init(displayValues:calibrationValues:)(void *a1, void *a2)
{
  v4 = sub_10000CD60(a1, a2);

  return v4;
}

uint64_t CRXCPrescriptionValues.isEqual(_:)(uint64_t a1)
{
  sub_10000CFA4(a1, v17);
  if (!v18)
  {
    sub_10000D014(v17);
    goto LABEL_7;
  }

  type metadata accessor for CRXCPrescriptionValues();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v14 = 0;
    return v14 & 1;
  }

  sub_10000DC18(0, &qword_1000B75E8, NSObject_ptr);
  v2 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v5 = *&v16[v4];
  v6 = v3;
  v7 = v5;
  LOBYTE(v2) = sub_1000815F8();

  if ((v2 & 1) == 0)
  {

    goto LABEL_7;
  }

  v8 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v11 = *&v16[v10];
  v12 = v9;
  v13 = v11;
  v14 = sub_1000815F8();

  return v14 & 1;
}

uint64_t CRXCPrescriptionValues.description.getter()
{
  v1 = v0;
  sub_100081698(60);
  v15._countAndFlagsBits = 0xD000000000000022;
  v15._object = 0x8000000100092830;
  sub_1000813B8(v15);
  v2 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = [v3 description];
  v5 = sub_1000812B8();
  v7 = v6;

  v16._countAndFlagsBits = v5;
  v16._object = v7;
  sub_1000813B8(v16);

  v17._object = 0x8000000100092860;
  v17._countAndFlagsBits = 0xD000000000000015;
  sub_1000813B8(v17);
  v8 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = [v9 description];
  v11 = sub_1000812B8();
  v13 = v12;

  v18._countAndFlagsBits = v11;
  v18._object = v13;
  sub_1000813B8(v18);

  v19._countAndFlagsBits = 41;
  v19._object = 0xE100000000000000;
  sub_1000813B8(v19);
  return 0;
}

Swift::Void __swiftcall CRXCPrescriptionValues.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

id CRXCPrescriptionValues.init(coder:)(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  v4 = type metadata accessor for CRXCEyePrescription();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v5[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v7 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v5[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v8 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v5[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v9 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v5[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v5[v6] = 0;
  swift_beginAccess();
  *&v5[v7] = 0;
  swift_beginAccess();
  *&v5[v8] = 0;
  swift_beginAccess();
  *&v5[v9] = 0;
  v27.receiver = v5;
  v27.super_class = v4;
  *&v2[v3] = objc_msgSendSuper2(&v27, "init");
  v10 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  v11 = objc_allocWithZone(v4);
  v12 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v11[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v13 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v11[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v14 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v11[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v15 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v11[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v11[v12] = 0;
  swift_beginAccess();
  *&v11[v13] = 0;
  swift_beginAccess();
  *&v11[v14] = 0;
  swift_beginAccess();
  *&v11[v15] = 0;
  v26.receiver = v11;
  v26.super_class = v4;
  *&v2[v10] = objc_msgSendSuper2(&v26, "init");
  v16 = sub_1000815E8();
  if (v16)
  {
    v17 = v16;
    v18 = sub_1000815E8();
    if (v18)
    {
      v19 = v18;
      swift_beginAccess();
      v20 = *&v2[v3];
      *&v2[v3] = v17;

      swift_beginAccess();
      v21 = *&v2[v10];
      *&v2[v10] = v19;

      v25.receiver = v2;
      v25.super_class = type metadata accessor for CRXCPrescriptionValues();
      v22 = objc_msgSendSuper2(&v25, "init");

      return v22;
    }
  }

  type metadata accessor for CRXCPrescriptionValues();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t CRXCPrescriptionInfo.rxID.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCPrescriptionInfo.rxID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRXCPrescriptionInfo.axisID.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCPrescriptionInfo.axisID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRXCPrescriptionInfo.rxOffsetID.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCPrescriptionInfo.rxOffsetID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRXCPrescriptionInfo.cylinderSignFlipped.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCPrescriptionInfo.cylinderSignFlipped.setter(char a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRXCPrescriptionInfo.calibratedRXID.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCPrescriptionInfo.calibratedRXID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRXCPrescriptionInfo.horizPrismID.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCPrescriptionInfo.horizPrismID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRXCPrescriptionInfo.horizPrismBaseDir.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCPrescriptionInfo.horizPrismBaseDir.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRXCPrescriptionInfo.vertPrismID.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCPrescriptionInfo.vertPrismID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRXCPrescriptionInfo.vertPrismBaseDir.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCPrescriptionInfo.vertPrismBaseDir.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRXCPrescriptionInfo.outOfRange.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCPrescriptionInfo.outOfRange.setter(char a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id CRXCPrescriptionInfo.displayValues.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CRXCPrescriptionInfo.displayValues.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CRXCPrescriptionInfo.calibrationValues.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CRXCPrescriptionInfo.calibrationValues.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CRXCPrescriptionInfo.clampingStatus.getter()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCPrescriptionInfo.clampingStatus.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id CRXCPrescriptionInfo.__allocating_init(rxID:axisID:rxOffsetID:cylinderSignFlipped:calibratedRXID:horizPrismID:horizPrismBaseDir:vertPrismID:vertPrismBaseDir:outOfRange:displayValues:calibrationValues:clampingStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, void *a12, uint64_t a13)
{
  v14 = objc_allocWithZone(v13);
  v15 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
  v37 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
  v40 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
  v42 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
  v43 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
  v45 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  v14[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
  v16 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  v17 = type metadata accessor for CRXCEyePrescription();
  v18 = objc_allocWithZone(v17);
  v19 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v18[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v20 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v18[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v21 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v18[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v22 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v18[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v18[v19] = 0;
  swift_beginAccess();
  *&v18[v20] = 0;
  swift_beginAccess();
  *&v18[v21] = 0;
  swift_beginAccess();
  *&v18[v22] = 0;
  v52.receiver = v18;
  v52.super_class = v17;
  *&v14[v16] = objc_msgSendSuper2(&v52, "init");
  v23 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  v24 = objc_allocWithZone(v17);
  v25 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v24[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v26 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v24[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v27 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v24[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v28 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v24[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v24[v25] = 0;
  swift_beginAccess();
  *&v24[v26] = 0;
  swift_beginAccess();
  *&v24[v27] = 0;
  swift_beginAccess();
  *&v24[v28] = 0;
  v51.receiver = v24;
  v51.super_class = v17;
  *&v14[v23] = objc_msgSendSuper2(&v51, "init");
  v29 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = a1;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = a2;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = a3;
  v14[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = a4;
  swift_beginAccess();
  *&v14[v15] = a5;
  swift_beginAccess();
  *&v14[v37] = a6;
  swift_beginAccess();
  *&v14[v40] = a7;
  swift_beginAccess();
  *&v14[v42] = a8;
  swift_beginAccess();
  *&v14[v43] = a9;
  swift_beginAccess();
  v14[v45] = a10;
  swift_beginAccess();
  v30 = *&v14[v16];
  *&v14[v16] = a11;
  v31 = a11;

  swift_beginAccess();
  v32 = *&v14[v23];
  *&v14[v23] = a12;
  v33 = a12;

  swift_beginAccess();
  *&v14[v29] = a13;
  v50.receiver = v14;
  v50.super_class = v49;
  v34 = objc_msgSendSuper2(&v50, "init");

  return v34;
}

id CRXCPrescriptionInfo.init(rxID:axisID:rxOffsetID:cylinderSignFlipped:calibratedRXID:horizPrismID:horizPrismBaseDir:vertPrismID:vertPrismBaseDir:outOfRange:displayValues:calibrationValues:clampingStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, void *a12, uint64_t a13)
{
  v13 = sub_10000D0A0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);

  return v13;
}

id CRXCPrescriptionInfo.__allocating_init(rxID:axisID:rxOffsetID:cylinderSignFlipped:calibratedRXID:outOfRange:displayValues:calibrationValues:clampingStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7, void *a8, uint64_t a9)
{
  v10 = objc_allocWithZone(v9);
  v33 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
  v11 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  v10[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
  v12 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  v13 = type metadata accessor for CRXCEyePrescription();
  v14 = objc_allocWithZone(v13);
  v15 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v14[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v16 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v14[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v17 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v14[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v18 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v14[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v14[v15] = 0;
  swift_beginAccess();
  *&v14[v16] = 0;
  swift_beginAccess();
  *&v14[v17] = 0;
  swift_beginAccess();
  *&v14[v18] = 0;
  v44.receiver = v14;
  v44.super_class = v13;
  *&v10[v12] = objc_msgSendSuper2(&v44, "init");
  v19 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  v20 = objc_allocWithZone(v13);
  v21 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v20[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v22 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v20[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v23 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v20[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v24 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v20[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v20[v21] = 0;
  swift_beginAccess();
  *&v20[v22] = 0;
  swift_beginAccess();
  *&v20[v23] = 0;
  swift_beginAccess();
  *&v20[v24] = 0;
  v43.receiver = v20;
  v43.super_class = v13;
  *&v10[v19] = objc_msgSendSuper2(&v43, "init");
  v25 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = a1;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = a2;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = a3;
  v10[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = a4;
  swift_beginAccess();
  *&v10[v33] = a5;
  swift_beginAccess();
  v10[v11] = a6;
  swift_beginAccess();
  v26 = *&v10[v12];
  *&v10[v12] = a7;
  v27 = a7;

  swift_beginAccess();
  v28 = *&v10[v19];
  *&v10[v19] = a8;
  v29 = a8;

  swift_beginAccess();
  *&v10[v25] = a9;
  v42.receiver = v10;
  v42.super_class = v41;
  v30 = objc_msgSendSuper2(&v42, "init");

  return v30;
}

id CRXCPrescriptionInfo.init(rxID:axisID:rxOffsetID:cylinderSignFlipped:calibratedRXID:outOfRange:displayValues:calibrationValues:clampingStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7, void *a8, uint64_t a9)
{
  v11 = sub_10000D49C(a1, a2, a3, a4, a5, a6, a7, a8, a9);

  return v11;
}

BOOL CRXCPrescriptionInfo.isEqual(_:)(uint64_t a1)
{
  sub_10000CFA4(a1, v38);
  if (v39)
  {
    type metadata accessor for CRXCPrescriptionInfo();
    if (swift_dynamicCast())
    {
      v2 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
      swift_beginAccess();
      v3 = *(v1 + v2);
      v4 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
      swift_beginAccess();
      if (v3 == *&v37[v4])
      {
        v5 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
        swift_beginAccess();
        v6 = *(v1 + v5);
        v7 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
        swift_beginAccess();
        if (v6 == *&v37[v7])
        {
          v8 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
          swift_beginAccess();
          v9 = *(v1 + v8);
          v10 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
          swift_beginAccess();
          if (v9 == *&v37[v10])
          {
            v11 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
            swift_beginAccess();
            LODWORD(v11) = *(v1 + v11);
            v12 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
            swift_beginAccess();
            if (v11 == v37[v12])
            {
              v13 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
              swift_beginAccess();
              v14 = *(v1 + v13);
              v15 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
              swift_beginAccess();
              if (v14 == *&v37[v15])
              {
                v16 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
                swift_beginAccess();
                LODWORD(v16) = *(v1 + v16);
                v17 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
                swift_beginAccess();
                if (v16 == v37[v17])
                {
                  sub_10000DC18(0, &qword_1000B75E8, NSObject_ptr);
                  v18 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
                  swift_beginAccess();
                  v19 = v1;
                  v20 = *(v1 + v18);
                  v21 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
                  swift_beginAccess();
                  v22 = *&v37[v21];
                  v23 = v20;
                  v24 = v22;
                  LOBYTE(v20) = sub_1000815F8();

                  if (v20)
                  {
                    v25 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
                    swift_beginAccess();
                    v26 = *(v19 + v25);
                    v27 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
                    swift_beginAccess();
                    v28 = *&v37[v27];
                    v29 = v26;
                    v30 = v28;
                    v31 = sub_1000815F8();

                    if (v31)
                    {
                      v32 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
                      swift_beginAccess();
                      v33 = *(v19 + v32);
                      v34 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
                      swift_beginAccess();
                      v35 = *&v37[v34];

                      return v33 == v35;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_10000D014(v38);
  }

  return 0;
}

uint64_t CRXCPrescriptionInfo.description.getter()
{
  v1 = v0;
  sub_100081698(177);
  v31._countAndFlagsBits = 0xD000000000000017;
  v31._object = 0x80000001000928B0;
  sub_1000813B8(v31);
  v2 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
  swift_beginAccess();
  v30 = *(v1 + v2);
  v32._countAndFlagsBits = sub_100081848();
  sub_1000813B8(v32);

  v33._countAndFlagsBits = 0x444973697861202CLL;
  v33._object = 0xEA0000000000203ALL;
  sub_1000813B8(v33);
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
  swift_beginAccess();
  v29 = *(v1 + v3);
  v34._countAndFlagsBits = sub_100081848();
  sub_1000813B8(v34);

  v35._countAndFlagsBits = 0x7366664F7872202CLL;
  v35._object = 0xEE00203A44497465;
  sub_1000813B8(v35);
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
  swift_beginAccess();
  v28 = *(v1 + v4);
  v36._countAndFlagsBits = sub_100081848();
  sub_1000813B8(v36);

  v37._countAndFlagsBits = 0xD000000000000017;
  v37._object = 0x80000001000928D0;
  sub_1000813B8(v37);
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  swift_beginAccess();
  if (*(v1 + v5))
  {
    v6._countAndFlagsBits = 1702195828;
  }

  else
  {
    v6._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v1 + v5))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v6._object = v7;
  sub_1000813B8(v6);

  v38._object = 0x80000001000928F0;
  v38._countAndFlagsBits = 0xD000000000000012;
  sub_1000813B8(v38);
  v8 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  swift_beginAccess();
  v27 = *(v1 + v8);
  v39._countAndFlagsBits = sub_100081848();
  sub_1000813B8(v39);

  v40._countAndFlagsBits = 0x52664F74756F202CLL;
  v40._object = 0xEE00203A65676E61;
  sub_1000813B8(v40);
  v9 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  swift_beginAccess();
  if (*(v1 + v9))
  {
    v10._countAndFlagsBits = 1702195828;
  }

  else
  {
    v10._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v1 + v9))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v10._object = v11;
  sub_1000813B8(v10);

  v41._countAndFlagsBits = 0xD000000000000011;
  v41._object = 0x8000000100092910;
  sub_1000813B8(v41);
  v12 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = [v13 description];
  v15 = sub_1000812B8();
  v17 = v16;

  v42._countAndFlagsBits = v15;
  v42._object = v17;
  sub_1000813B8(v42);

  v43._countAndFlagsBits = 0xD000000000000015;
  v43._object = 0x8000000100092860;
  sub_1000813B8(v43);
  v18 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = [v19 description];
  v21 = sub_1000812B8();
  v23 = v22;

  v44._countAndFlagsBits = v21;
  v44._object = v23;
  sub_1000813B8(v44);

  v45._object = 0x8000000100092930;
  v45._countAndFlagsBits = 0xD000000000000012;
  sub_1000813B8(v45);
  v24 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  swift_beginAccess();
  v26 = *(v1 + v24);
  sub_100081778();
  v46._countAndFlagsBits = 41;
  v46._object = 0xE100000000000000;
  sub_1000813B8(v46);
  return 0;
}

Swift::Void __swiftcall CRXCPrescriptionInfo.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v4 forKey:v5];

  v6 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  v9 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v10 forKey:v11];

  v12 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = sub_100081288();
  [(objc_class *)with.super.isa encodeBool:v13 forKey:v14];

  v15 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = sub_100081288();
    [(objc_class *)with.super.isa encodeInteger:v16 forKey:v17];

    v18 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
    swift_beginAccess();
    v19 = *(v1 + v18);
    v20 = sub_100081288();
    [(objc_class *)with.super.isa encodeBool:v19 forKey:v20];

    v21 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
    swift_beginAccess();
    v22 = *(v1 + v21);
    v23 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v22 forKey:v23];

    v24 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
    swift_beginAccess();
    v25 = *(v1 + v24);
    v26 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];

    v27 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
    swift_beginAccess();
    v28 = *(v1 + v27);
    v29 = sub_100081288();
    [(objc_class *)with.super.isa encodeInteger:v28 forKey:v29];

    return;
  }

LABEL_9:
  __break(1u);
}

void CRXCPrescriptionInfo.init(coder:)(void *a1)
{
  v2 = v1;
  v40 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  *&v2[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
  *&v2[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
  *&v2[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
  *&v2[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
  *&v2[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
  v39 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  v2[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  v5 = type metadata accessor for CRXCEyePrescription();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v6[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v8 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v6[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v9 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v6[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v10 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v6[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v6[v7] = 0;
  swift_beginAccess();
  *&v6[v8] = 0;
  swift_beginAccess();
  *&v6[v9] = 0;
  swift_beginAccess();
  *&v6[v10] = 0;
  v45.receiver = v6;
  v45.super_class = v5;
  v42 = v4;
  *&v2[v4] = objc_msgSendSuper2(&v45, "init");
  v11 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  v12 = objc_allocWithZone(v5);
  v13 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v12[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v14 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v12[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v15 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v12[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v16 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v12[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v12[v13] = 0;
  swift_beginAccess();
  *&v12[v14] = 0;
  swift_beginAccess();
  *&v12[v15] = 0;
  swift_beginAccess();
  *&v12[v16] = 0;
  v44.receiver = v12;
  v44.super_class = v5;
  *&v2[v11] = objc_msgSendSuper2(&v44, "init");
  v17 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  *&v2[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
  v18 = sub_100081288();
  v19 = [a1 decodeIntegerForKey:v18];

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = sub_100081288();
  v21 = [a1 decodeIntegerForKey:v20];

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = sub_100081288();
  v23 = [a1 decodeIntegerForKey:v22];

  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v38 = v17;
  v41 = v11;
  v24 = sub_100081288();
  v37 = [a1 decodeBoolForKey:v24];

  v25 = sub_100081288();
  v26 = [a1 decodeIntegerForKey:v25];

  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v27 = sub_100081288();
  v36 = [a1 decodeBoolForKey:v27];

  v28 = sub_100081288();
  v29 = [a1 decodeIntegerForKey:v28];

  v30 = sub_1000815E8();
  if (v30)
  {
    v31 = v30;
    v32 = sub_1000815E8();
    if (v32)
    {
      v33 = v32;
      if (v29 < 4)
      {
        *&v2[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = v19;
        *&v2[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = v21;
        *&v2[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = v23;
        v2[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = v37;
        swift_beginAccess();
        *&v2[v40] = v26;
        swift_beginAccess();
        v2[v39] = v36;
        swift_beginAccess();
        *&v2[v38] = v29;
        swift_beginAccess();
        v34 = *&v2[v42];
        *&v2[v42] = v31;

        swift_beginAccess();
        v35 = *&v2[v41];
        *&v2[v41] = v33;

        v43.receiver = v2;
        v43.super_class = type metadata accessor for CRXCPrescriptionInfo();
        objc_msgSendSuper2(&v43, "init");

        return;
      }

      v31 = v33;
    }
  }

  type metadata accessor for CRXCPrescriptionInfo();
  swift_deallocPartialClassInstance();
}

id CRXCFactoryCalibrationData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t CRXCAppClipCodePayload.version.getter()
{
  v1 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCAppClipCodePayload.version.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRXCAppClipCodePayload.lensType.getter()
{
  v1 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCAppClipCodePayload.lensType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *CRXCAppClipCodePayload.left.getter()
{
  v1 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CRXCAppClipCodePayload.left.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *CRXCAppClipCodePayload.right.getter()
{
  v1 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10000B01C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void CRXCAppClipCodePayload.right.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CRXCAppClipCodePayload.lensColorCode.getter()
{
  v1 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCAppClipCodePayload.lensColorCode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRXCAppClipCodePayload.secret.getter()
{
  v1 = v0 + OBJC_IVAR___CRXCAppClipCodePayload_secret;
  swift_beginAccess();
  v2 = *v1;
  sub_10000D808(*v1, *(v1 + 8));
  return v2;
}

uint64_t CRXCAppClipCodePayload.secret.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CRXCAppClipCodePayload_secret);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100006A34(v6, v7);
}

uint64_t CRXCAppClipCodePayload.randomBits.getter()
{
  v1 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCAppClipCodePayload.randomBits.setter(int a1)
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id CRXCAppClipCodePayload.__allocating_init(version:lensType:left:right:lensColorCode:secret:randomBits:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8)
{
  v13 = objc_allocWithZone(v8);
  v14 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  *&v13[OBJC_IVAR___CRXCAppClipCodePayload_left] = 0;
  v15 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  *&v13[OBJC_IVAR___CRXCAppClipCodePayload_right] = 0;
  v16 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  *&v13[OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode] = 0;
  v17 = &v13[OBJC_IVAR___CRXCAppClipCodePayload_secret];
  *&v13[OBJC_IVAR___CRXCAppClipCodePayload_secret] = xmmword_100084880;
  v18 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  *&v13[OBJC_IVAR___CRXCAppClipCodePayload_randomBits] = 0;
  *&v13[OBJC_IVAR___CRXCAppClipCodePayload_version] = a1;
  *&v13[OBJC_IVAR___CRXCAppClipCodePayload_lensType] = a2;
  swift_beginAccess();
  *&v13[v14] = a3;
  swift_beginAccess();
  *&v13[v15] = a4;
  swift_beginAccess();
  *&v13[v16] = a5;
  swift_beginAccess();
  v19 = *v17;
  v20 = v17[1];
  *v17 = a6;
  v17[1] = a7;
  v21 = a4;
  v22 = a3;
  sub_10000D808(a6, a7);
  sub_100006A34(v19, v20);
  swift_beginAccess();
  *&v13[v18] = a8;
  v30.receiver = v13;
  v30.super_class = v28;
  v23 = objc_msgSendSuper2(&v30, "init");
  sub_100006A34(a6, a7);

  return v23;
}

id CRXCAppClipCodePayload.init(version:lensType:left:right:lensColorCode:secret:randomBits:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8)
{
  v12 = sub_10000D85C(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_100006A34(a6, a7);

  return v12;
}

BOOL CRXCAppClipCodePayload.isEqual(_:)(uint64_t a1)
{
  sub_10000CFA4(a1, v37);
  if (v38)
  {
    type metadata accessor for CRXCAppClipCodePayload();
    if (swift_dynamicCast())
    {
      v2 = OBJC_IVAR___CRXCAppClipCodePayload_version;
      swift_beginAccess();
      v3 = *(v1 + v2);
      v4 = OBJC_IVAR___CRXCAppClipCodePayload_version;
      swift_beginAccess();
      if (v3 != *&v36[v4])
      {
        goto LABEL_19;
      }

      v5 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
      swift_beginAccess();
      v6 = *(v1 + v5);
      v7 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
      swift_beginAccess();
      if (v6 != *&v36[v7])
      {
        goto LABEL_19;
      }

      v8 = OBJC_IVAR___CRXCAppClipCodePayload_left;
      swift_beginAccess();
      v9 = *(v1 + v8);
      v10 = OBJC_IVAR___CRXCAppClipCodePayload_left;
      swift_beginAccess();
      v11 = *&v36[v10];
      if (v9)
      {
        if (!v11)
        {
          goto LABEL_19;
        }

        type metadata accessor for CRXCPrescriptionInfo();
        v12 = v11;
        v13 = v9;
        v14 = sub_1000815F8();

        if ((v14 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v11)
      {
        goto LABEL_19;
      }

      v15 = OBJC_IVAR___CRXCAppClipCodePayload_right;
      swift_beginAccess();
      v16 = *(v1 + v15);
      v17 = OBJC_IVAR___CRXCAppClipCodePayload_right;
      swift_beginAccess();
      v18 = *&v36[v17];
      if (v16)
      {
        if (!v18)
        {
          goto LABEL_19;
        }

        type metadata accessor for CRXCPrescriptionInfo();
        v19 = v18;
        v20 = v16;
        v21 = sub_1000815F8();

        if ((v21 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_16:
        v22 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
        swift_beginAccess();
        v23 = *(v1 + v22);
        v24 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
        swift_beginAccess();
        if (v23 == *&v36[v24])
        {
          v25 = (v1 + OBJC_IVAR___CRXCAppClipCodePayload_secret);
          swift_beginAccess();
          v27 = *v25;
          v26 = v25[1];
          v28 = &v36[OBJC_IVAR___CRXCAppClipCodePayload_secret];
          swift_beginAccess();
          v30 = *v28;
          v29 = v28[1];
          sub_10000D808(v27, v26);
          sub_10000D808(v30, v29);
          v31 = sub_10000DAB0(v27, v26, v30, v29);
          sub_100006A34(v30, v29);
          sub_100006A34(v27, v26);
          if (v31)
          {
            v32 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
            swift_beginAccess();
            v33 = *(v1 + v32);
            v34 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
            swift_beginAccess();
            LODWORD(v34) = *&v36[v34];

            return v33 == v34;
          }
        }

        goto LABEL_19;
      }

      if (!v18)
      {
        goto LABEL_16;
      }

LABEL_19:
    }
  }

  else
  {
    sub_10000D014(v37);
  }

  return 0;
}

uint64_t sub_10000BCC4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_100081658();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_10000D014(v10);
  return v8 & 1;
}

id sub_10000BD64(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_100081288();

  return v5;
}

uint64_t CRXCAppClipCodePayload.description.getter()
{
  v1 = v0;
  sub_100081698(81);
  v16._object = 0x8000000100092980;
  v16._countAndFlagsBits = 0xD00000000000001CLL;
  sub_1000813B8(v16);
  v2 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  swift_beginAccess();
  v15 = *(v1 + v2);
  v17._countAndFlagsBits = sub_100081848();
  sub_1000813B8(v17);

  v18._countAndFlagsBits = 0x7954736E656C202CLL;
  v18._object = 0xEC000000203A6570;
  sub_1000813B8(v18);
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 0xE900000000000072;
      v6._countAndFlagsBits = 0x65706F6C65766564;
      goto LABEL_10;
    }

    if (v4 == 3)
    {
      v5 = 0xE800000000000000;
      v6._countAndFlagsBits = 0x6C616E6F73726570;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 0xE400000000000000;
      v6._countAndFlagsBits = 1869440356;
LABEL_10:
      v6._object = v5;
      sub_1000813B8(v6);

      v19._countAndFlagsBits = 0x203A7466656C202CLL;
      v19._object = 0xE800000000000000;
      sub_1000813B8(v19);
      v7 = OBJC_IVAR___CRXCAppClipCodePayload_left;
      swift_beginAccess();
      v8 = *(v1 + v7);
      sub_100006940(&unk_1000B7690, &qword_1000848B0);
      v20._countAndFlagsBits = sub_100081338();
      sub_1000813B8(v20);

      v21._countAndFlagsBits = 0x3A7468676972202CLL;
      v21._object = 0xE900000000000020;
      sub_1000813B8(v21);
      v9 = OBJC_IVAR___CRXCAppClipCodePayload_right;
      swift_beginAccess();
      v10 = *(v1 + v9);
      v22._countAndFlagsBits = sub_100081338();
      sub_1000813B8(v22);

      v23._countAndFlagsBits = 0x43726F6C6F63202CLL;
      v23._object = 0xED0000203A65646FLL;
      sub_1000813B8(v23);
      v11 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
      swift_beginAccess();
      v13 = *(v1 + v11);
      v24._countAndFlagsBits = sub_100081848();
      sub_1000813B8(v24);

      v25._countAndFlagsBits = 41;
      v25._object = 0xE100000000000000;
      sub_1000813B8(v25);
      return 0;
    }

    if (v4 == 1)
    {
      v5 = 0xE600000000000000;
      v6._countAndFlagsBits = 0x726564616572;
      goto LABEL_10;
    }
  }

  v14 = *(v1 + v3);
  result = sub_1000818C8();
  __break(1u);
  return result;
}

Swift::Void __swiftcall CRXCAppClipCodePayload.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_100081288();
    [(objc_class *)with.super.isa encodeInteger:v4 forKey:v5];

    v6 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
    swift_beginAccess();
    v7 = *(v1 + v6);
    v8 = sub_100081288();
    [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

    v9 = OBJC_IVAR___CRXCAppClipCodePayload_left;
    swift_beginAccess();
    v10 = *(v1 + v9);
    if (v10)
    {
      v11 = v10;
      v12 = sub_100081288();
      [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
    }

    v13 = OBJC_IVAR___CRXCAppClipCodePayload_right;
    swift_beginAccess();
    v14 = *(v1 + v13);
    if (v14)
    {
      v15 = v14;
      v16 = sub_100081288();
      [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
    }

    v17 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
    swift_beginAccess();
    v18 = *(v1 + v17);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v19 = sub_100081288();
      [(objc_class *)with.super.isa encodeInteger:v18 forKey:v19];

      v20 = (v1 + OBJC_IVAR___CRXCAppClipCodePayload_secret);
      swift_beginAccess();
      v22 = *v20;
      v21 = v20[1];
      sub_10000D808(v22, v21);
      isa = sub_100080CC8().super.isa;
      sub_100006A34(v22, v21);
      v24 = sub_100081288();
      [(objc_class *)with.super.isa encodeObject:isa forKey:v24];

      v25 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
      swift_beginAccess();
      v26 = *(v1 + v25);
      v27 = sub_100081288();
      [(objc_class *)with.super.isa encodeInt64:v26 forKey:v27];

      return;
    }
  }

  __break(1u);
}

void CRXCAppClipCodePayload.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  *(v2 + OBJC_IVAR___CRXCAppClipCodePayload_left) = 0;
  v5 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  *(v2 + OBJC_IVAR___CRXCAppClipCodePayload_right) = 0;
  *(v2 + OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode) = 0;
  v6 = v2 + OBJC_IVAR___CRXCAppClipCodePayload_secret;
  *(v2 + OBJC_IVAR___CRXCAppClipCodePayload_secret) = xmmword_100084880;
  *(v2 + OBJC_IVAR___CRXCAppClipCodePayload_randomBits) = 0;
  v7 = sub_100081288();
  v8 = [a1 decodeInt64ForKey:v7];

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = sub_100081288();
  v23 = [a1 decodeIntegerForKey:v9];

  v10 = sub_100081288();
  v11 = [a1 containsValueForKey:v10];

  if (v11)
  {
    type metadata accessor for CRXCPrescriptionInfo();
    v12 = sub_1000815E8();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_100081288();
  v14 = [a1 containsValueForKey:v13];

  if (v14)
  {
    type metadata accessor for CRXCPrescriptionInfo();
    v15 = sub_1000815E8();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_100081288();
  v17 = [a1 decodeIntegerForKey:v16];

  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  v22 = v5;
  v18 = sub_100081288();
  v19 = [a1 decodeIntegerForKey:v18];

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (HIDWORD(v19))
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (v23 < 4)
  {
    sub_10000DC18(0, &qword_1000B88D0, NSData_ptr);
    v20 = sub_1000815E8();
    if (v20)
    {
      v21 = v20;
      sub_100080CE8();
    }
  }

  sub_100006A34(*v6, *(v6 + 8));
  type metadata accessor for CRXCAppClipCodePayload();
  swift_deallocPartialClassInstance();
}

id sub_10000C8F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000C990@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_100080AE8();
    if (v10)
    {
      v11 = sub_100080B18();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_100080B08();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_100080AE8();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_100080B18();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_100080B08();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10000CBC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10000D9F8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100006A34(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10000C990(v13, a3, a4, &v12);
  v10 = v4;
  sub_100006A34(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_10000CD50(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

id sub_10000CD60(void *a1, void *a2)
{
  v4 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  v5 = type metadata accessor for CRXCEyePrescription();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v6[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v8 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v6[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v9 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v6[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v10 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v6[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v6[v7] = 0;
  swift_beginAccess();
  *&v6[v8] = 0;
  swift_beginAccess();
  *&v6[v9] = 0;
  swift_beginAccess();
  *&v6[v10] = 0;
  v25.receiver = v6;
  v25.super_class = v5;
  *&v2[v4] = objc_msgSendSuper2(&v25, "init");
  v11 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  v12 = objc_allocWithZone(v5);
  v13 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v12[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v14 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v12[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v15 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v12[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v16 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v12[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v12[v13] = 0;
  swift_beginAccess();
  *&v12[v14] = 0;
  swift_beginAccess();
  *&v12[v15] = 0;
  swift_beginAccess();
  *&v12[v16] = 0;
  v24.receiver = v12;
  v24.super_class = v5;
  *&v2[v11] = objc_msgSendSuper2(&v24, "init");
  swift_beginAccess();
  v17 = *&v2[v4];
  *&v2[v4] = a1;
  v18 = a1;

  swift_beginAccess();
  v19 = *&v2[v11];
  *&v2[v11] = a2;
  v20 = a2;

  v23.receiver = v2;
  v23.super_class = type metadata accessor for CRXCPrescriptionValues();
  return objc_msgSendSuper2(&v23, "init");
}

uint64_t sub_10000CFA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006940(&qword_1000B75E0, &qword_1000856D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D014(uint64_t a1)
{
  v2 = sub_100006940(&qword_1000B75E0, &qword_1000856D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10000D0A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, void *a12, uint64_t a13)
{
  v14 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
  v36 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
  v39 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
  v40 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
  v42 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
  v43 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  v13[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
  v15 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  v16 = type metadata accessor for CRXCEyePrescription();
  v17 = objc_allocWithZone(v16);
  v18 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v17[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v19 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v17[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v20 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v17[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v21 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v17[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v17[v18] = 0;
  swift_beginAccess();
  *&v17[v19] = 0;
  swift_beginAccess();
  *&v17[v20] = 0;
  swift_beginAccess();
  *&v17[v21] = 0;
  v49.receiver = v17;
  v49.super_class = v16;
  *&v13[v15] = objc_msgSendSuper2(&v49, "init");
  v22 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  v23 = objc_allocWithZone(v16);
  v24 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v23[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v25 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v23[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v26 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v23[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v27 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v23[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v23[v24] = 0;
  swift_beginAccess();
  *&v23[v25] = 0;
  swift_beginAccess();
  *&v23[v26] = 0;
  swift_beginAccess();
  *&v23[v27] = 0;
  v48.receiver = v23;
  v48.super_class = v16;
  *&v13[v22] = objc_msgSendSuper2(&v48, "init");
  v28 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = a1;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = a2;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = a3;
  v13[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = a4;
  swift_beginAccess();
  *&v13[v14] = a5;
  swift_beginAccess();
  *&v13[v36] = a6;
  swift_beginAccess();
  *&v13[v39] = a7;
  swift_beginAccess();
  *&v13[v40] = a8;
  swift_beginAccess();
  *&v13[v42] = a9;
  swift_beginAccess();
  v13[v43] = a10;
  swift_beginAccess();
  v29 = *&v13[v15];
  *&v13[v15] = a11;
  v30 = a11;

  swift_beginAccess();
  v31 = *&v13[v22];
  *&v13[v22] = a12;
  v32 = a12;

  swift_beginAccess();
  *&v13[v28] = a13;
  v47.receiver = v13;
  v47.super_class = type metadata accessor for CRXCPrescriptionInfo();
  return objc_msgSendSuper2(&v47, "init");
}

id sub_10000D49C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7, void *a8, uint64_t a9)
{
  v32 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
  v10 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  v9[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
  v11 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  v12 = type metadata accessor for CRXCEyePrescription();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v13[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v15 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v13[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v16 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v13[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v17 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v13[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v13[v14] = 0;
  swift_beginAccess();
  *&v13[v15] = 0;
  swift_beginAccess();
  *&v13[v16] = 0;
  swift_beginAccess();
  *&v13[v17] = 0;
  v41.receiver = v13;
  v41.super_class = v12;
  *&v9[v11] = objc_msgSendSuper2(&v41, "init");
  v18 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  v19 = objc_allocWithZone(v12);
  v20 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v19[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v21 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v19[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v22 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v19[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v23 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v19[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v19[v20] = 0;
  swift_beginAccess();
  *&v19[v21] = 0;
  swift_beginAccess();
  *&v19[v22] = 0;
  swift_beginAccess();
  *&v19[v23] = 0;
  v40.receiver = v19;
  v40.super_class = v12;
  *&v9[v18] = objc_msgSendSuper2(&v40, "init");
  v24 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = a1;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = a2;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = a3;
  v9[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = a4;
  swift_beginAccess();
  *&v9[v32] = a5;
  swift_beginAccess();
  v9[v10] = a6;
  swift_beginAccess();
  v25 = *&v9[v11];
  *&v9[v11] = a7;
  v26 = a7;

  swift_beginAccess();
  v27 = *&v9[v18];
  *&v9[v18] = a8;
  v28 = a8;

  swift_beginAccess();
  *&v9[v24] = a9;
  v39.receiver = v9;
  v39.super_class = type metadata accessor for CRXCPrescriptionInfo();
  return objc_msgSendSuper2(&v39, "init");
}

uint64_t sub_10000D808(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_10000D85C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8)
{
  v13 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  *&v8[OBJC_IVAR___CRXCAppClipCodePayload_left] = 0;
  v14 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  *&v8[OBJC_IVAR___CRXCAppClipCodePayload_right] = 0;
  v15 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  *&v8[OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode] = 0;
  v16 = &v8[OBJC_IVAR___CRXCAppClipCodePayload_secret];
  *&v8[OBJC_IVAR___CRXCAppClipCodePayload_secret] = xmmword_100084880;
  v17 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  *&v8[OBJC_IVAR___CRXCAppClipCodePayload_randomBits] = 0;
  *&v8[OBJC_IVAR___CRXCAppClipCodePayload_version] = a1;
  *&v8[OBJC_IVAR___CRXCAppClipCodePayload_lensType] = a2;
  swift_beginAccess();
  *&v8[v13] = a3;
  swift_beginAccess();
  *&v8[v14] = a4;
  swift_beginAccess();
  *&v8[v15] = a5;
  swift_beginAccess();
  v18 = *v16;
  v19 = v16[1];
  *v16 = a6;
  v16[1] = a7;
  v20 = a4;
  v21 = a3;
  sub_10000D808(a6, a7);
  sub_100006A34(v18, v19);
  swift_beginAccess();
  *&v8[v17] = a8;
  v25.receiver = v8;
  v25.super_class = type metadata accessor for CRXCAppClipCodePayload();
  return objc_msgSendSuper2(&v25, "init");
}

uint64_t sub_10000D9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_100080AE8();
  v11 = result;
  if (result)
  {
    result = sub_100080B18();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_100080B08();
  sub_10000C990(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10000DAB0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10000D808(a3, a4);
          return sub_10000CBC0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10000DC18(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_10000DC64()
{
  result = qword_1000B76A0;
  if (!qword_1000B76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B76A0);
  }

  return result;
}

unint64_t sub_10000DCBC()
{
  result = qword_1000B76A8;
  if (!qword_1000B76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B76A8);
  }

  return result;
}

void *sub_10000DD84@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000DDB0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10000DE4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100059E54();

  *a1 = v2;
  return result;
}

void sub_10000DE8C()
{
  v0 = sub_100081018();
  sub_100016278(v0, qword_1000B7790);
  sub_100016240(v0, qword_1000B7790);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1000812B8();

    type metadata accessor for AppClipCodeTranscoder();
    sub_100006940(&qword_1000B7908, &qword_100084B18);
    sub_100081338();
    sub_100081008();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10000DF80()
{
  v0 = sub_1000814B8();
  *(v0 + 16) = 4;
  *(v0 + 32) = 0;
  v1 = SecRandomCopyBytes(kSecRandomDefault, 4uLL, (v0 + 32));
  if (v1)
  {

    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 32);
  }

  return v2 | ((v1 != 0) << 32);
}

unint64_t sub_10000E040(void *a1)
{
  v7 = 0;
  if ([a1 byteCount] != 16 && (objc_msgSend(a1, "byteCount") != 19 || (objc_msgSend(a1, "skipBits:", 145) & 1) == 0))
  {
    goto LABEL_11;
  }

  [a1 readUInteger:&v7 bitWidth:4];
  [a1 rewind];
  v2 = [a1 bitCount];
  v3 = v7;
  if (v7 < 6)
  {
    if (v2 == 128)
    {
      return v3;
    }

    goto LABEL_11;
  }

  if (v7 != 6)
  {
    sub_1000161D8();
    swift_allocError();
    v5 = 1;
LABEL_12:
    *v4 = v3;
    *(v4 + 8) = v5;
    swift_willThrow();
    return v3;
  }

  if (v2 != 152)
  {
LABEL_11:
    sub_1000161D8();
    swift_allocError();
    v3 = 0;
    v5 = 2;
    goto LABEL_12;
  }

  return v3;
}

id sub_10000E1B4(uint64_t a1)
{
  v4 = 0;
  result = [objc_opt_self() rxID:a1 toSphere:&v4 + 4 cylinder:&v4];
  if (result)
  {
    if (result == 4)
    {
      v2 = 8;
    }

    else
    {
      v2 = 128;
    }

    sub_1000161D8();
    swift_allocError();
    *v3 = v2;
    *(v3 + 8) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10000E284(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  swift_beginAccess();
  *(v4 + v5) = 0;
  v6 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  swift_beginAccess();
  *(v4 + v6) = 0;
  v7 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
  swift_beginAccess();
  v8 = *(v4 + v7);
  if (v8 == 1023)
  {
    if ((a2 & 1) == 0)
    {
LABEL_43:
      sub_1000161D8();
      swift_allocError();
      *v60 = 8;
      *(v60 + 8) = 0;
      return swift_willThrow();
    }

    v79 = v5;
    *(v4 + v6) = 1;
    goto LABEL_8;
  }

  v9 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  swift_beginAccess();
  *(v4 + v9) = v8;
  sub_10000E1B4(v8);
  if (v2)
  {
    v90[30] = v2;
    swift_errorRetain();
    sub_100006940(&qword_1000B7910, &unk_100084B20);
    if (swift_dynamicCast())
    {

      if (a2)
      {
        v79 = v5;

LABEL_8:
        v12 = 0.0;
        v13 = 0.0;
        goto LABEL_10;
      }

      v62 = v91;
      sub_1000161D8();
      swift_allocError();
      *v63 = v90[33];
      *(v63 + 8) = v62;
      swift_willThrow();
    }
  }

  v13 = v10;
  v12 = v11;
  v79 = v5;
LABEL_10:
  v14 = type metadata accessor for CRXCEyePrescription();
  v15 = objc_allocWithZone(v14);
  v16 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v15[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v17 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v15[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v18 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v15[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v19 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v15[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v15[v16] = 0;
  swift_beginAccess();
  *&v15[v17] = 0;
  swift_beginAccess();
  *&v15[v18] = 0;
  swift_beginAccess();
  *&v15[v19] = 0;
  v86.receiver = v15;
  v86.super_class = v14;
  v20 = objc_msgSendSuper2(&v86, "init");
  v21 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  swift_beginAccess();
  v22 = *(v4 + v21);
  v78 = v21;
  *(v4 + v21) = v20;

  v23 = objc_allocWithZone(v14);
  v24 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v23[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v25 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v23[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v26 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v23[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v27 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v23[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v23[v24] = 0;
  swift_beginAccess();
  *&v23[v25] = 0;
  swift_beginAccess();
  *&v23[v26] = 0;
  swift_beginAccess();
  *&v23[v27] = 0;
  v85.receiver = v23;
  v85.super_class = v14;
  v28 = objc_msgSendSuper2(&v85, "init");
  v29 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  swift_beginAccess();
  v30 = *(v4 + v29);
  *(v4 + v29) = v28;

  v31 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
  swift_beginAccess();
  v32 = *(v4 + v31);
  v90[0] = 0;
  v33 = objc_opt_self();
  v34 = [v33 axisID:v32 toAxis:v90];
  if (v34 == 5)
  {
    v36 = 16;
  }

  else
  {
    if (!v34)
    {
      v35 = v90[0];
      goto LABEL_16;
    }

    v36 = 128;
  }

  sub_1000161D8();
  swift_allocError();
  *v37 = v36;
  *(v37 + 8) = 0;
  swift_willThrow();

  v35 = 0;
LABEL_16:
  v38 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
  swift_beginAccess();
  v39 = *(v4 + v38);
  v82 = v13;
  v83 = v12;
  v84 = v35;
  v40 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  swift_beginAccess();
  if (*(v4 + v40) == 1)
  {
    v87 = v13;
    v88 = v12;
    v89 = v35;
    vrx_unapply_eye_rx_cylinder_sign_flip(&v87);
    if ((*&v89 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v89 <= -1.0)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v89 >= 1.84467441e19)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v13 = v87;
    v12 = v88;
    v35 = v89;
  }

  v41 = vcvts_n_f32_u64(v39, 2uLL);
  if (v39)
  {
    vrx_apply_eye_rx_vr_add(&v82, v41, 15.0);
  }

  v42 = v84;
  if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (v84 <= -1.0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v84 >= 1.84467441e19)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v43 = v82;
  v44 = v83;
  v81 = 0;
  v80 = 0.0;
  if ([v33 bestValidRXID:&v81 andSphere:&v80 matchingCylinder:COERCE_DOUBLE(__PAIR64__(HIDWORD(v82) nearSphere:{LODWORD(v44))), COERCE_DOUBLE(__PAIR64__(HIDWORD(v83), LODWORD(v43)))}])
  {
    if (!v39)
    {
      v40 = v79;
      if (qword_1000B73D0 != -1)
      {
        swift_once();
      }

      v59 = sub_100081018();
      sub_100016240(v59, qword_1000B7790);
      v46 = sub_100080FF8();
      v47 = sub_1000815D8();
      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_42;
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "Failed to find any valid Rx without VRX";
      goto LABEL_41;
    }

    v40 = v79;
    if (qword_1000B73D0 == -1)
    {
LABEL_29:
      v45 = sub_100081018();
      sub_100016240(v45, qword_1000B7790);
      v46 = sub_100080FF8();
      v47 = sub_1000815D8();
      if (!os_log_type_enabled(v46, v47))
      {
LABEL_42:

        *(v4 + v40) = 3;
        goto LABEL_43;
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "Failed to find any valid VRx";
LABEL_41:
      _os_log_impl(&_mh_execute_header, v46, v47, v49, v48, 2u);

      goto LABEL_42;
    }

LABEL_61:
    swift_once();
    goto LABEL_29;
  }

  v50 = v42;
  v51 = v81;
  v52 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  swift_beginAccess();
  *(v4 + v52) = v51;
  v53 = v80;
  v77 = v50;
  if (v39)
  {
    if (v80 != v43)
    {
      if (qword_1000B73D0 != -1)
      {
        swift_once();
      }

      v54 = sub_100081018();
      sub_100016240(v54, qword_1000B7790);
      v55 = sub_100080FF8();
      v56 = sub_1000815B8();
      v57 = 2;
      if (!os_log_type_enabled(v55, v56))
      {
        goto LABEL_53;
      }

      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "AddVR clamped successfully!", v58, 2u);
      goto LABEL_51;
    }
  }

  else if (v13 != v80)
  {
    if (qword_1000B73D0 != -1)
    {
      swift_once();
    }

    v64 = sub_100081018();
    sub_100016240(v64, qword_1000B7790);
    v55 = sub_100080FF8();
    v65 = sub_1000815B8();
    if (!os_log_type_enabled(v55, v65))
    {
      v57 = 1;
      goto LABEL_53;
    }

    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v55, v65, "RX clamped successfully!", v66, 2u);
    v57 = 1;
LABEL_51:

LABEL_53:

    *(v4 + v79) = v57;
  }

  v67 = *(v4 + v29);
  v68 = (v67 + OBJC_IVAR___CRXCEyePrescription_sphere);
  swift_beginAccess();
  *v68 = v53;
  v69 = (v67 + OBJC_IVAR___CRXCEyePrescription_cylinder);
  swift_beginAccess();
  *v69 = LODWORD(v44);
  v70 = OBJC_IVAR___CRXCEyePrescription_axis;
  swift_beginAccess();
  *(v67 + v70) = v77;
  v71 = (v67 + OBJC_IVAR___CRXCEyePrescription_vrAdd);
  swift_beginAccess();
  *v71 = v41;
  v72 = *(v4 + v78);
  v73 = (v72 + OBJC_IVAR___CRXCEyePrescription_sphere);
  swift_beginAccess();
  *v73 = v13;
  v74 = (v72 + OBJC_IVAR___CRXCEyePrescription_cylinder);
  swift_beginAccess();
  *v74 = v12;
  v75 = OBJC_IVAR___CRXCEyePrescription_axis;
  swift_beginAccess();
  *(v72 + v75) = v35;
  v76 = (v72 + OBJC_IVAR___CRXCEyePrescription_vrAdd);
  result = swift_beginAccess();
  *v76 = v41;
  return result;
}

void sub_10000ECEC(void *a1, char a2)
{
  v116 = 0;
  v117 = 0;
  v114 = 0;
  v115 = 0;
  v5 = [objc_allocWithZone(NSMutableData) initWithLength:10];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = v5;
  v113 = 0;
  if (![a1 skipBits:4] || !objc_msgSend(a1, "readUInteger:bitWidth:", &v113, 12) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v117, 10) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v115, 6) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v116, 10) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v114, 6) || (objc_msgSend(a1, "readData:bitWidth:", v6, 80) & 1) == 0)
  {
    sub_1000161D8();
    swift_allocError();
    *v34 = 0;
    *(v34 + 8) = 2;
    swift_willThrow();

    return;
  }

  v118 = 0;
  v119 = 0;
  if (v117)
  {
    v90 = v117;
    v93 = v115;
    v99 = type metadata accessor for CRXCEyePrescription();
    v7 = objc_allocWithZone(v99);
    v8 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v7[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v9 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v7[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v10 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v7[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v11 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v7[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v7[v8] = 0;
    swift_beginAccess();
    *&v7[v9] = 0;
    swift_beginAccess();
    *&v7[v10] = 0;
    swift_beginAccess();
    *&v7[v11] = 0;
    v112.receiver = v7;
    v112.super_class = v99;
    v87 = objc_msgSendSuper2(&v112, "init");
    v12 = objc_allocWithZone(v99);
    v13 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v12[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v14 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v12[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v15 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v12[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v16 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v12[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v12[v13] = 0;
    swift_beginAccess();
    *&v12[v14] = 0;
    swift_beginAccess();
    *&v12[v15] = 0;
    swift_beginAccess();
    *&v12[v16] = 0;
    v111.receiver = v12;
    v111.super_class = v99;
    v82 = objc_msgSendSuper2(&v111, "init");
    v84 = type metadata accessor for CRXCPrescriptionInfo();
    v17 = objc_allocWithZone(v84);
    v80 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
    v78 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
    v17[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
    v96 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
    v18 = objc_allocWithZone(v99);
    v19 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v18[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v20 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v18[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v21 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v18[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v22 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v18[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v18[v19] = 0;
    swift_beginAccess();
    *&v18[v20] = 0;
    swift_beginAccess();
    *&v18[v21] = 0;
    swift_beginAccess();
    *&v18[v22] = 0;
    v110.receiver = v18;
    v110.super_class = v99;
    *&v17[v96] = objc_msgSendSuper2(&v110, "init");
    v76 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
    v23 = objc_allocWithZone(v99);
    v24 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v23[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v25 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v23[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v26 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v23[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v27 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v23[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v23[v24] = 0;
    swift_beginAccess();
    *&v23[v25] = 0;
    swift_beginAccess();
    *&v23[v26] = 0;
    swift_beginAccess();
    *&v23[v27] = 0;
    v109.receiver = v23;
    v109.super_class = v99;
    *&v17[v76] = objc_msgSendSuper2(&v109, "init");
    v28 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = v90;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = v93;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = 0;
    v17[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = 0;
    swift_beginAccess();
    *&v17[v80] = 0;
    swift_beginAccess();
    v17[v78] = 0;
    swift_beginAccess();
    v29 = *&v17[v96];
    *&v17[v96] = v87;
    v30 = v87;

    swift_beginAccess();
    v31 = *&v17[v76];
    *&v17[v76] = v82;
    v32 = v82;

    swift_beginAccess();
    *&v17[v28] = 0;
    v108.receiver = v17;
    v108.super_class = v84;
    v33 = objc_msgSendSuper2(&v108, "init");

    v119 = v33;
    if (!v33)
    {
      __break(1u);
      goto LABEL_24;
    }

    sub_10000E284(&v119, a2 & 1);
    if (v2)
    {

LABEL_18:
      return;
    }
  }

  if (!v116)
  {
LABEL_19:
    v62 = v118;
    v95 = v119;
    v63 = v6;
    v64 = sub_100080CF8();
    v89 = v65;
    v92 = v64;
    v101 = v63;

    v98 = v113;
    if (!HIDWORD(v113))
    {
      v86 = type metadata accessor for CRXCAppClipCodePayload();
      v66 = objc_allocWithZone(v86);
      v67 = OBJC_IVAR___CRXCAppClipCodePayload_left;
      *&v66[OBJC_IVAR___CRXCAppClipCodePayload_left] = 0;
      v68 = OBJC_IVAR___CRXCAppClipCodePayload_right;
      *&v66[OBJC_IVAR___CRXCAppClipCodePayload_right] = 0;
      v69 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
      *&v66[OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode] = 0;
      v70 = &v66[OBJC_IVAR___CRXCAppClipCodePayload_secret];
      *&v66[OBJC_IVAR___CRXCAppClipCodePayload_secret] = xmmword_100084880;
      v71 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
      *&v66[OBJC_IVAR___CRXCAppClipCodePayload_randomBits] = 0;
      *&v66[OBJC_IVAR___CRXCAppClipCodePayload_version] = 1;
      *&v66[OBJC_IVAR___CRXCAppClipCodePayload_lensType] = 3;
      swift_beginAccess();
      *&v66[v67] = v95;
      swift_beginAccess();
      *&v66[v68] = v62;
      swift_beginAccess();
      *&v66[v69] = 0;
      swift_beginAccess();
      v72 = *v70;
      v73 = v70[1];
      *v70 = v92;
      v70[1] = v89;
      v74 = v62;
      v75 = v95;
      sub_10000D808(v92, v89);
      sub_100006A34(v72, v73);
      swift_beginAccess();
      *&v66[v71] = v98;
      v102.receiver = v66;
      v102.super_class = v86;
      objc_msgSendSuper2(&v102, "init");

      sub_100006A34(v92, v89);
      return;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  v91 = v116;
  v94 = v114;
  v100 = type metadata accessor for CRXCEyePrescription();
  v35 = objc_allocWithZone(v100);
  v36 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v35[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v37 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v35[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v38 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v35[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v39 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v35[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v35[v36] = 0;
  swift_beginAccess();
  *&v35[v37] = 0;
  swift_beginAccess();
  *&v35[v38] = 0;
  swift_beginAccess();
  *&v35[v39] = 0;
  v107.receiver = v35;
  v107.super_class = v100;
  v88 = objc_msgSendSuper2(&v107, "init");
  v40 = objc_allocWithZone(v100);
  v41 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v40[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v42 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v40[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v43 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v40[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v44 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v40[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v40[v41] = 0;
  swift_beginAccess();
  *&v40[v42] = 0;
  swift_beginAccess();
  *&v40[v43] = 0;
  swift_beginAccess();
  *&v40[v44] = 0;
  v106.receiver = v40;
  v106.super_class = v100;
  v83 = objc_msgSendSuper2(&v106, "init");
  v85 = type metadata accessor for CRXCPrescriptionInfo();
  v45 = objc_allocWithZone(v85);
  v81 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
  v79 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  v45[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
  v97 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  v46 = objc_allocWithZone(v100);
  v47 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v46[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v48 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v46[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v49 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v46[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v50 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v46[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v46[v47] = 0;
  swift_beginAccess();
  *&v46[v48] = 0;
  swift_beginAccess();
  *&v46[v49] = 0;
  swift_beginAccess();
  *&v46[v50] = 0;
  v105.receiver = v46;
  v105.super_class = v100;
  *&v45[v97] = objc_msgSendSuper2(&v105, "init");
  v77 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  v51 = objc_allocWithZone(v100);
  v52 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v51[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v53 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v51[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v54 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v51[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v55 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v51[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v51[v52] = 0;
  swift_beginAccess();
  *&v51[v53] = 0;
  swift_beginAccess();
  *&v51[v54] = 0;
  swift_beginAccess();
  *&v51[v55] = 0;
  v104.receiver = v51;
  v104.super_class = v100;
  *&v45[v77] = objc_msgSendSuper2(&v104, "init");
  v56 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = v91;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = v94;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = 0;
  v45[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = 0;
  swift_beginAccess();
  *&v45[v81] = 0;
  swift_beginAccess();
  v45[v79] = 0;
  swift_beginAccess();
  v57 = *&v45[v97];
  *&v45[v97] = v88;
  v58 = v88;

  swift_beginAccess();
  v59 = *&v45[v77];
  *&v45[v77] = v83;
  v60 = v83;

  swift_beginAccess();
  *&v45[v56] = 0;
  v103.receiver = v45;
  v103.super_class = v85;
  v61 = objc_msgSendSuper2(&v103, "init");

  v118 = v61;
  if (v61)
  {
    sub_10000E284(&v118, a2 & 1);
    if (v2)
    {

      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
}

void sub_10000FAB4(void *a1, char a2)
{
  v118 = 0;
  v119 = 0;
  v116 = 0;
  v117 = 0;
  v115 = 0;
  v5 = [objc_allocWithZone(NSMutableData) initWithLength:10];
  if (!v5)
  {
    __break(1u);
  }

  v6 = v5;
  v114 = 0;
  if (![a1 skipBits:4] || !objc_msgSend(a1, "skipBits:", 2) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v115, 4) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v114, 6) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v119, 10) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v117, 6) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v118, 10) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v116, 6) || (objc_msgSend(a1, "readData:bitWidth:", v6, 80) & 1) == 0)
  {
    sub_1000161D8();
    swift_allocError();
    *v34 = 0;
    *(v34 + 8) = 2;
    swift_willThrow();

    return;
  }

  v120 = 0;
  v121 = 0;
  if (v119)
  {
    v91 = v119;
    v94 = v117;
    v100 = type metadata accessor for CRXCEyePrescription();
    v7 = objc_allocWithZone(v100);
    v8 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v7[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v9 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v7[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v10 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v7[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v11 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v7[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v7[v8] = 0;
    swift_beginAccess();
    *&v7[v9] = 0;
    swift_beginAccess();
    *&v7[v10] = 0;
    swift_beginAccess();
    *&v7[v11] = 0;
    v113.receiver = v7;
    v113.super_class = v100;
    v88 = objc_msgSendSuper2(&v113, "init");
    v12 = objc_allocWithZone(v100);
    v13 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v12[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v14 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v12[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v15 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v12[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v16 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v12[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v12[v13] = 0;
    swift_beginAccess();
    *&v12[v14] = 0;
    swift_beginAccess();
    *&v12[v15] = 0;
    swift_beginAccess();
    *&v12[v16] = 0;
    v112.receiver = v12;
    v112.super_class = v100;
    v82 = objc_msgSendSuper2(&v112, "init");
    v85 = type metadata accessor for CRXCPrescriptionInfo();
    v17 = objc_allocWithZone(v85);
    v80 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
    v78 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
    v17[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
    v97 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
    v18 = objc_allocWithZone(v100);
    v19 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v18[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v20 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v18[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v21 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v18[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v22 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v18[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v18[v19] = 0;
    swift_beginAccess();
    *&v18[v20] = 0;
    swift_beginAccess();
    *&v18[v21] = 0;
    swift_beginAccess();
    *&v18[v22] = 0;
    v111.receiver = v18;
    v111.super_class = v100;
    *&v17[v97] = objc_msgSendSuper2(&v111, "init");
    v76 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
    v23 = objc_allocWithZone(v100);
    v24 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v23[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v25 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v23[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v26 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v23[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v27 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v23[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v23[v24] = 0;
    swift_beginAccess();
    *&v23[v25] = 0;
    swift_beginAccess();
    *&v23[v26] = 0;
    swift_beginAccess();
    *&v23[v27] = 0;
    v110.receiver = v23;
    v110.super_class = v100;
    *&v17[v76] = objc_msgSendSuper2(&v110, "init");
    v28 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = v91;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = v94;
    *&v17[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = 0;
    v17[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = 0;
    swift_beginAccess();
    *&v17[v80] = 0;
    swift_beginAccess();
    v17[v78] = 0;
    swift_beginAccess();
    v29 = *&v17[v97];
    *&v17[v97] = v88;
    v30 = v88;

    swift_beginAccess();
    v31 = *&v17[v76];
    *&v17[v76] = v82;
    v32 = v82;

    swift_beginAccess();
    *&v17[v28] = 0;
    v109.receiver = v17;
    v109.super_class = v85;
    v33 = objc_msgSendSuper2(&v109, "init");

    v121 = v33;
    if (!v33)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    sub_10000E284(&v121, a2 & 1);
    if (v2)
    {

LABEL_20:
      return;
    }
  }

  if (!v118)
  {
LABEL_21:
    v62 = v120;
    v96 = v121;
    v87 = v115;
    v63 = v6;
    v64 = sub_100080CF8();
    v90 = v65;
    v93 = v64;
    v102 = v63;

    v99 = v114;
    if (!HIDWORD(v114))
    {
      v84 = type metadata accessor for CRXCAppClipCodePayload();
      v66 = objc_allocWithZone(v84);
      v67 = OBJC_IVAR___CRXCAppClipCodePayload_left;
      *&v66[OBJC_IVAR___CRXCAppClipCodePayload_left] = 0;
      v68 = OBJC_IVAR___CRXCAppClipCodePayload_right;
      *&v66[OBJC_IVAR___CRXCAppClipCodePayload_right] = 0;
      v69 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
      *&v66[OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode] = 0;
      v70 = &v66[OBJC_IVAR___CRXCAppClipCodePayload_secret];
      *&v66[OBJC_IVAR___CRXCAppClipCodePayload_secret] = xmmword_100084880;
      v71 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
      *&v66[OBJC_IVAR___CRXCAppClipCodePayload_randomBits] = 0;
      *&v66[OBJC_IVAR___CRXCAppClipCodePayload_version] = 2;
      *&v66[OBJC_IVAR___CRXCAppClipCodePayload_lensType] = 3;
      swift_beginAccess();
      *&v66[v67] = v96;
      swift_beginAccess();
      *&v66[v68] = v62;
      swift_beginAccess();
      *&v66[v69] = v87;
      swift_beginAccess();
      v72 = *v70;
      v73 = v70[1];
      *v70 = v93;
      v70[1] = v90;
      v74 = v62;
      v75 = v96;
      sub_10000D808(v93, v90);
      sub_100006A34(v72, v73);
      swift_beginAccess();
      *&v66[v71] = v99;
      v103.receiver = v66;
      v103.super_class = v84;
      objc_msgSendSuper2(&v103, "init");

      sub_100006A34(v93, v90);
      return;
    }

    __break(1u);
    goto LABEL_25;
  }

  v92 = v118;
  v95 = v116;
  v101 = type metadata accessor for CRXCEyePrescription();
  v35 = objc_allocWithZone(v101);
  v36 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v35[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v37 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v35[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v38 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v35[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v39 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v35[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v35[v36] = 0;
  swift_beginAccess();
  *&v35[v37] = 0;
  swift_beginAccess();
  *&v35[v38] = 0;
  swift_beginAccess();
  *&v35[v39] = 0;
  v108.receiver = v35;
  v108.super_class = v101;
  v89 = objc_msgSendSuper2(&v108, "init");
  v40 = objc_allocWithZone(v101);
  v41 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v40[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v42 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v40[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v43 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v40[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v44 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v40[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v40[v41] = 0;
  swift_beginAccess();
  *&v40[v42] = 0;
  swift_beginAccess();
  *&v40[v43] = 0;
  swift_beginAccess();
  *&v40[v44] = 0;
  v107.receiver = v40;
  v107.super_class = v101;
  v83 = objc_msgSendSuper2(&v107, "init");
  v86 = type metadata accessor for CRXCPrescriptionInfo();
  v45 = objc_allocWithZone(v86);
  v81 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
  v79 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  v45[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
  v98 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  v46 = objc_allocWithZone(v101);
  v47 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v46[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v48 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v46[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v49 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v46[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v50 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v46[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v46[v47] = 0;
  swift_beginAccess();
  *&v46[v48] = 0;
  swift_beginAccess();
  *&v46[v49] = 0;
  swift_beginAccess();
  *&v46[v50] = 0;
  v106.receiver = v46;
  v106.super_class = v101;
  *&v45[v98] = objc_msgSendSuper2(&v106, "init");
  v77 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  v51 = objc_allocWithZone(v101);
  v52 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v51[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v53 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v51[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v54 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v51[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v55 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v51[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v51[v52] = 0;
  swift_beginAccess();
  *&v51[v53] = 0;
  swift_beginAccess();
  *&v51[v54] = 0;
  swift_beginAccess();
  *&v51[v55] = 0;
  v105.receiver = v51;
  v105.super_class = v101;
  *&v45[v77] = objc_msgSendSuper2(&v105, "init");
  v56 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = v92;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = v95;
  *&v45[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = 0;
  v45[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = 0;
  swift_beginAccess();
  *&v45[v81] = 0;
  swift_beginAccess();
  v45[v79] = 0;
  swift_beginAccess();
  v57 = *&v45[v98];
  *&v45[v98] = v89;
  v58 = v89;

  swift_beginAccess();
  v59 = *&v45[v77];
  *&v45[v77] = v83;
  v60 = v83;

  swift_beginAccess();
  *&v45[v56] = 0;
  v104.receiver = v45;
  v104.super_class = v86;
  v61 = objc_msgSendSuper2(&v104, "init");

  v120 = v61;
  if (v61)
  {
    sub_10000E284(&v120, a2 & 1);
    if (v2)
    {

      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

void sub_1000108B8(void *a1, char a2)
{
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v124 = 0;
  v122 = 0;
  v5 = [objc_allocWithZone(NSMutableData) initWithLength:10];
  if (!v5)
  {
    __break(1u);
  }

  v6 = v5;
  v121 = 0;
  v120 = 0;
  if (![a1 skipBits:4] || !objc_msgSend(a1, "readUInteger:bitWidth:", &v122, 4) || !objc_msgSend(a1, "readBool:", &v120 + 1) || !objc_msgSend(a1, "readBool:", &v120) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v124, 2) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v123, 2) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v121, 2) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v128, 10) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v126, 6) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v127, 10) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v125, 6) || (objc_msgSend(a1, "readData:bitWidth:", v6, 80) & 1) == 0)
  {
    sub_1000161D8();
    swift_allocError();
    *v35 = 0;
    *(v35 + 8) = 2;
    swift_willThrow();

    return;
  }

  v129 = 0;
  v130 = 0;
  v100 = v128;
  if (v128)
  {
    v91 = v126;
    v94 = v124;
    v97 = HIBYTE(v120);
    v7 = type metadata accessor for CRXCEyePrescription();
    v8 = objc_allocWithZone(v7);
    v9 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v8[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v10 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v8[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v11 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v8[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v12 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v8[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v8[v9] = 0;
    swift_beginAccess();
    *&v8[v10] = 0;
    swift_beginAccess();
    *&v8[v11] = 0;
    swift_beginAccess();
    *&v8[v12] = 0;
    v119.receiver = v8;
    v119.super_class = v7;
    v88 = objc_msgSendSuper2(&v119, "init");
    v13 = objc_allocWithZone(v7);
    v14 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v13[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v15 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v13[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v16 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v13[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v17 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v13[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v13[v14] = 0;
    swift_beginAccess();
    *&v13[v15] = 0;
    swift_beginAccess();
    *&v13[v16] = 0;
    swift_beginAccess();
    *&v13[v17] = 0;
    v118.receiver = v13;
    v118.super_class = v7;
    v103 = v7;
    v84 = objc_msgSendSuper2(&v118, "init");
    v86 = type metadata accessor for CRXCPrescriptionInfo();
    v18 = objc_allocWithZone(v86);
    v82 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
    v80 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
    v18[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
    v106 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
    v19 = objc_allocWithZone(v7);
    v20 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v19[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v21 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v19[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v22 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v19[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v23 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v19[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v19[v20] = 0;
    swift_beginAccess();
    *&v19[v21] = 0;
    swift_beginAccess();
    *&v19[v22] = 0;
    swift_beginAccess();
    *&v19[v23] = 0;
    v117.receiver = v19;
    v117.super_class = v103;
    *&v18[v106] = objc_msgSendSuper2(&v117, "init");
    v78 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
    v24 = objc_allocWithZone(v103);
    v25 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v24[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v26 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v24[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v27 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v24[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v28 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v24[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v24[v25] = 0;
    swift_beginAccess();
    *&v24[v26] = 0;
    swift_beginAccess();
    *&v24[v27] = 0;
    swift_beginAccess();
    *&v24[v28] = 0;
    v116.receiver = v24;
    v116.super_class = v103;
    *&v18[v78] = objc_msgSendSuper2(&v116, "init");
    v29 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = v100;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = v91;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = v94;
    v18[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = v97;
    swift_beginAccess();
    *&v18[v82] = 0;
    swift_beginAccess();
    v18[v80] = 0;
    swift_beginAccess();
    v30 = *&v18[v106];
    *&v18[v106] = v88;
    v31 = v88;

    swift_beginAccess();
    v32 = *&v18[v78];
    *&v18[v78] = v84;
    v33 = v84;

    swift_beginAccess();
    *&v18[v29] = 0;
    v115.receiver = v18;
    v115.super_class = v86;
    v34 = objc_msgSendSuper2(&v115, "init");

    v130 = v34;
    if (!v34)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    sub_10000E284(&v130, a2 & 1);
    if (v2)
    {

LABEL_23:
      return;
    }
  }

  v101 = v127;
  if (!v127)
  {
LABEL_24:
    v64 = v129;
    v102 = v130;
    v93 = v122;
    v65 = v6;
    v66 = sub_100080CF8();
    v96 = v67;
    v99 = v66;
    v108 = v65;

    v105 = v121;
    if (!HIDWORD(v121))
    {
      v90 = type metadata accessor for CRXCAppClipCodePayload();
      v68 = objc_allocWithZone(v90);
      v69 = OBJC_IVAR___CRXCAppClipCodePayload_left;
      *&v68[OBJC_IVAR___CRXCAppClipCodePayload_left] = 0;
      v70 = OBJC_IVAR___CRXCAppClipCodePayload_right;
      *&v68[OBJC_IVAR___CRXCAppClipCodePayload_right] = 0;
      v71 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
      *&v68[OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode] = 0;
      v72 = &v68[OBJC_IVAR___CRXCAppClipCodePayload_secret];
      *&v68[OBJC_IVAR___CRXCAppClipCodePayload_secret] = xmmword_100084880;
      v73 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
      *&v68[OBJC_IVAR___CRXCAppClipCodePayload_randomBits] = 0;
      *&v68[OBJC_IVAR___CRXCAppClipCodePayload_version] = 3;
      *&v68[OBJC_IVAR___CRXCAppClipCodePayload_lensType] = 3;
      swift_beginAccess();
      *&v68[v69] = v102;
      swift_beginAccess();
      *&v68[v70] = v64;
      swift_beginAccess();
      *&v68[v71] = v93;
      swift_beginAccess();
      v74 = *v72;
      v75 = v72[1];
      *v72 = v99;
      v72[1] = v96;
      v76 = v64;
      v77 = v102;
      sub_10000D808(v99, v96);
      sub_100006A34(v74, v75);
      swift_beginAccess();
      *&v68[v73] = v105;
      v109.receiver = v68;
      v109.super_class = v90;
      objc_msgSendSuper2(&v109, "init");

      sub_100006A34(v99, v96);
      return;
    }

    __break(1u);
    goto LABEL_28;
  }

  v92 = v125;
  v95 = v123;
  v98 = v120;
  v36 = type metadata accessor for CRXCEyePrescription();
  v37 = objc_allocWithZone(v36);
  v38 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v37[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v39 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v37[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v40 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v37[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v41 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v37[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v37[v38] = 0;
  swift_beginAccess();
  *&v37[v39] = 0;
  swift_beginAccess();
  *&v37[v40] = 0;
  swift_beginAccess();
  *&v37[v41] = 0;
  v114.receiver = v37;
  v114.super_class = v36;
  v89 = objc_msgSendSuper2(&v114, "init");
  v42 = objc_allocWithZone(v36);
  v43 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v42[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v44 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v42[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v45 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v42[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v46 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v42[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v42[v43] = 0;
  swift_beginAccess();
  *&v42[v44] = 0;
  swift_beginAccess();
  *&v42[v45] = 0;
  swift_beginAccess();
  *&v42[v46] = 0;
  v113.receiver = v42;
  v113.super_class = v36;
  v104 = v36;
  v85 = objc_msgSendSuper2(&v113, "init");
  v87 = type metadata accessor for CRXCPrescriptionInfo();
  v47 = objc_allocWithZone(v87);
  v83 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  *&v47[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
  *&v47[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
  *&v47[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
  *&v47[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
  *&v47[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
  v81 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  v47[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
  v107 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  v48 = objc_allocWithZone(v36);
  v49 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v48[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v50 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v48[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v51 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v48[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v52 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v48[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v48[v49] = 0;
  swift_beginAccess();
  *&v48[v50] = 0;
  swift_beginAccess();
  *&v48[v51] = 0;
  swift_beginAccess();
  *&v48[v52] = 0;
  v112.receiver = v48;
  v112.super_class = v104;
  *&v47[v107] = objc_msgSendSuper2(&v112, "init");
  v79 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  v53 = objc_allocWithZone(v104);
  v54 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v53[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v55 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v53[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v56 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v53[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v57 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v53[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v53[v54] = 0;
  swift_beginAccess();
  *&v53[v55] = 0;
  swift_beginAccess();
  *&v53[v56] = 0;
  swift_beginAccess();
  *&v53[v57] = 0;
  v111.receiver = v53;
  v111.super_class = v104;
  *&v47[v79] = objc_msgSendSuper2(&v111, "init");
  v58 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  *&v47[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
  *&v47[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = v101;
  *&v47[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = v92;
  *&v47[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = v95;
  v47[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = v98;
  swift_beginAccess();
  *&v47[v83] = 0;
  swift_beginAccess();
  v47[v81] = 0;
  swift_beginAccess();
  v59 = *&v47[v107];
  *&v47[v107] = v89;
  v60 = v89;

  swift_beginAccess();
  v61 = *&v47[v79];
  *&v47[v79] = v85;
  v62 = v85;

  swift_beginAccess();
  *&v47[v58] = 0;
  v110.receiver = v47;
  v110.super_class = v87;
  v63 = objc_msgSendSuper2(&v110, "init");

  v129 = v63;
  if (v63)
  {
    sub_10000E284(&v129, a2 & 1);
    if (v2)
    {

      goto LABEL_23;
    }

    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
}

void sub_100011734(void *a1, char a2)
{
  v129 = 0;
  v130 = 0;
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v124 = 0;
  v5 = [objc_allocWithZone(NSMutableData) initWithLength:10];
  if (!v5)
  {
    __break(1u);
  }

  v6 = v5;
  v122 = 0;
  if (![a1 skipBits:4] || !objc_msgSend(a1, "readUInteger:bitWidth:", &v123, 4) || !objc_msgSend(a1, "readBool:", &v122 + 1) || !objc_msgSend(a1, "readBool:", &v122) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v126, 2) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v125, 2) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v124, 2) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v130, 10) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v128, 6) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v129, 10) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v127, 6) || (objc_msgSend(a1, "readData:bitWidth:", v6, 80) & 1) == 0)
  {
    sub_1000161D8();
    swift_allocError();
    *v35 = 0;
    *(v35 + 8) = 2;
    swift_willThrow();

    return;
  }

  v131 = 0;
  v132 = 0;
  v102 = v130;
  if (v130)
  {
    v93 = v128;
    v96 = v126;
    v99 = HIBYTE(v122);
    v7 = type metadata accessor for CRXCEyePrescription();
    v8 = objc_allocWithZone(v7);
    v9 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v8[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v10 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v8[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v11 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v8[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v12 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v8[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v8[v9] = 0;
    swift_beginAccess();
    *&v8[v10] = 0;
    swift_beginAccess();
    *&v8[v11] = 0;
    swift_beginAccess();
    *&v8[v12] = 0;
    v121.receiver = v8;
    v121.super_class = v7;
    v90 = objc_msgSendSuper2(&v121, "init");
    v13 = objc_allocWithZone(v7);
    v14 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v13[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v15 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v13[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v16 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v13[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v17 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v13[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v13[v14] = 0;
    swift_beginAccess();
    *&v13[v15] = 0;
    swift_beginAccess();
    *&v13[v16] = 0;
    swift_beginAccess();
    *&v13[v17] = 0;
    v120.receiver = v13;
    v120.super_class = v7;
    v105 = v7;
    v86 = objc_msgSendSuper2(&v120, "init");
    v88 = type metadata accessor for CRXCPrescriptionInfo();
    v18 = objc_allocWithZone(v88);
    v84 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
    v82 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
    v18[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
    v108 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
    v19 = objc_allocWithZone(v7);
    v20 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v19[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v21 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v19[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v22 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v19[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v23 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v19[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v19[v20] = 0;
    swift_beginAccess();
    *&v19[v21] = 0;
    swift_beginAccess();
    *&v19[v22] = 0;
    swift_beginAccess();
    *&v19[v23] = 0;
    v119.receiver = v19;
    v119.super_class = v105;
    *&v18[v108] = objc_msgSendSuper2(&v119, "init");
    v80 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
    v24 = objc_allocWithZone(v105);
    v25 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v24[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v26 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v24[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v27 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v24[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v28 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v24[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v24[v25] = 0;
    swift_beginAccess();
    *&v24[v26] = 0;
    swift_beginAccess();
    *&v24[v27] = 0;
    swift_beginAccess();
    *&v24[v28] = 0;
    v118.receiver = v24;
    v118.super_class = v105;
    *&v18[v80] = objc_msgSendSuper2(&v118, "init");
    v29 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = v102;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = v93;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = v96;
    v18[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = v99;
    swift_beginAccess();
    *&v18[v84] = 0;
    swift_beginAccess();
    v18[v82] = 0;
    swift_beginAccess();
    v30 = *&v18[v108];
    *&v18[v108] = v90;
    v31 = v90;

    swift_beginAccess();
    v32 = *&v18[v80];
    *&v18[v80] = v86;
    v33 = v86;

    swift_beginAccess();
    *&v18[v29] = 0;
    v117.receiver = v18;
    v117.super_class = v88;
    v34 = objc_msgSendSuper2(&v117, "init");

    v132 = v34;
    if (!v34)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sub_10000E284(&v132, a2 & 1);
    if (v2)
    {

LABEL_23:
      return;
    }
  }

  v103 = v129;
  if (v129)
  {
    v94 = v127;
    v97 = v125;
    v100 = v122;
    v36 = type metadata accessor for CRXCEyePrescription();
    v37 = objc_allocWithZone(v36);
    v38 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v37[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v39 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v37[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v40 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v37[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v41 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v37[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v37[v38] = 0;
    swift_beginAccess();
    *&v37[v39] = 0;
    swift_beginAccess();
    *&v37[v40] = 0;
    swift_beginAccess();
    *&v37[v41] = 0;
    v116.receiver = v37;
    v116.super_class = v36;
    v91 = objc_msgSendSuper2(&v116, "init");
    v42 = objc_allocWithZone(v36);
    v43 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v42[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v44 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v42[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v45 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v42[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v46 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v42[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v42[v43] = 0;
    swift_beginAccess();
    *&v42[v44] = 0;
    swift_beginAccess();
    *&v42[v45] = 0;
    swift_beginAccess();
    *&v42[v46] = 0;
    v115.receiver = v42;
    v115.super_class = v36;
    v106 = v36;
    v87 = objc_msgSendSuper2(&v115, "init");
    v89 = type metadata accessor for CRXCPrescriptionInfo();
    v47 = objc_allocWithZone(v89);
    v85 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
    v83 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
    v47[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
    v109 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
    v48 = objc_allocWithZone(v36);
    v49 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v48[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v50 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v48[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v51 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v48[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v52 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v48[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v48[v49] = 0;
    swift_beginAccess();
    *&v48[v50] = 0;
    swift_beginAccess();
    *&v48[v51] = 0;
    swift_beginAccess();
    *&v48[v52] = 0;
    v114.receiver = v48;
    v114.super_class = v106;
    *&v47[v109] = objc_msgSendSuper2(&v114, "init");
    v81 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
    v53 = objc_allocWithZone(v106);
    v54 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v53[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v55 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v53[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v56 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v53[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v57 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v53[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v53[v54] = 0;
    swift_beginAccess();
    *&v53[v55] = 0;
    swift_beginAccess();
    *&v53[v56] = 0;
    swift_beginAccess();
    *&v53[v57] = 0;
    v113.receiver = v53;
    v113.super_class = v106;
    *&v47[v81] = objc_msgSendSuper2(&v113, "init");
    v58 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = v103;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = v94;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = v97;
    v47[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = v100;
    swift_beginAccess();
    *&v47[v85] = 0;
    swift_beginAccess();
    v47[v83] = 0;
    swift_beginAccess();
    v59 = *&v47[v109];
    *&v47[v109] = v91;
    v60 = v91;

    swift_beginAccess();
    v61 = *&v47[v81];
    *&v47[v81] = v87;
    v62 = v87;

    swift_beginAccess();
    *&v47[v58] = 0;
    v112.receiver = v47;
    v112.super_class = v89;
    v63 = objc_msgSendSuper2(&v112, "init");

    v131 = v63;
    if (!v63)
    {
LABEL_31:
      __break(1u);
      return;
    }

    sub_10000E284(&v131, a2 & 1);
    if (v2)
    {

      goto LABEL_23;
    }
  }

  if ((v124 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v64 = sub_10000DD38(v124);
  v66 = 3;
  if ((v65 & 1) == 0)
  {
    v66 = v64;
  }

  v92 = v66;
  v67 = v131;
  v68 = v132;
  v98 = v123;
  v110 = v6;
  v69 = sub_100080CF8();
  v101 = v70;
  v104 = v69;

  v107 = type metadata accessor for CRXCAppClipCodePayload();
  v71 = objc_allocWithZone(v107);
  v72 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  *&v71[OBJC_IVAR___CRXCAppClipCodePayload_left] = 0;
  v73 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  *&v71[OBJC_IVAR___CRXCAppClipCodePayload_right] = 0;
  v74 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  *&v71[OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode] = 0;
  v75 = &v71[OBJC_IVAR___CRXCAppClipCodePayload_secret];
  *&v71[OBJC_IVAR___CRXCAppClipCodePayload_secret] = xmmword_100084880;
  v95 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  *&v71[OBJC_IVAR___CRXCAppClipCodePayload_randomBits] = 0;
  *&v71[OBJC_IVAR___CRXCAppClipCodePayload_version] = 4;
  *&v71[OBJC_IVAR___CRXCAppClipCodePayload_lensType] = v92;
  swift_beginAccess();
  *&v71[v72] = v68;
  swift_beginAccess();
  *&v71[v73] = v67;
  swift_beginAccess();
  *&v71[v74] = v98;
  swift_beginAccess();
  v76 = *v75;
  v77 = v75[1];
  *v75 = v104;
  v75[1] = v101;
  v78 = v67;
  v79 = v68;
  sub_10000D808(v104, v101);
  sub_100006A34(v76, v77);
  swift_beginAccess();
  *&v71[v95] = 0;
  v111.receiver = v71;
  v111.super_class = v107;
  objc_msgSendSuper2(&v111, "init");

  sub_100006A34(v104, v101);
}

void sub_1000125BC(void *a1, char a2)
{
  v129 = 0;
  v130 = 0;
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v124 = 0;
  v5 = [objc_allocWithZone(NSMutableData) initWithLength:10];
  if (!v5)
  {
    __break(1u);
  }

  v6 = v5;
  v122 = 0;
  if (![a1 skipBits:4] || !objc_msgSend(a1, "readBool:", &v122 + 1) || !objc_msgSend(a1, "readBool:", &v122) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v126, 2) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v125, 2) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v124, 2) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v130, 11) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v128, 6) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v129, 11) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v127, 6) || !objc_msgSend(a1, "readUInteger:bitWidth:", &v123, 2) || (objc_msgSend(a1, "readData:bitWidth:", v6, 80) & 1) == 0)
  {
    sub_1000161D8();
    swift_allocError();
    *v35 = 0;
    *(v35 + 8) = 2;
    swift_willThrow();

    return;
  }

  v131 = 0;
  v132 = 0;
  v102 = v130;
  if (v130)
  {
    v93 = v128;
    v96 = v126;
    v99 = HIBYTE(v122);
    v7 = type metadata accessor for CRXCEyePrescription();
    v8 = objc_allocWithZone(v7);
    v9 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v8[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v10 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v8[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v11 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v8[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v12 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v8[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v8[v9] = 0;
    swift_beginAccess();
    *&v8[v10] = 0;
    swift_beginAccess();
    *&v8[v11] = 0;
    swift_beginAccess();
    *&v8[v12] = 0;
    v121.receiver = v8;
    v121.super_class = v7;
    v90 = objc_msgSendSuper2(&v121, "init");
    v13 = objc_allocWithZone(v7);
    v14 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v13[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v15 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v13[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v16 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v13[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v17 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v13[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v13[v14] = 0;
    swift_beginAccess();
    *&v13[v15] = 0;
    swift_beginAccess();
    *&v13[v16] = 0;
    swift_beginAccess();
    *&v13[v17] = 0;
    v120.receiver = v13;
    v120.super_class = v7;
    v105 = v7;
    v85 = objc_msgSendSuper2(&v120, "init");
    v87 = type metadata accessor for CRXCPrescriptionInfo();
    v18 = objc_allocWithZone(v87);
    v83 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
    v81 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
    v18[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
    v108 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
    v19 = objc_allocWithZone(v7);
    v20 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v19[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v21 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v19[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v22 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v19[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v23 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v19[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v19[v20] = 0;
    swift_beginAccess();
    *&v19[v21] = 0;
    swift_beginAccess();
    *&v19[v22] = 0;
    swift_beginAccess();
    *&v19[v23] = 0;
    v119.receiver = v19;
    v119.super_class = v105;
    *&v18[v108] = objc_msgSendSuper2(&v119, "init");
    v79 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
    v24 = objc_allocWithZone(v105);
    v25 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v24[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v26 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v24[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v27 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v24[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v28 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v24[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v24[v25] = 0;
    swift_beginAccess();
    *&v24[v26] = 0;
    swift_beginAccess();
    *&v24[v27] = 0;
    swift_beginAccess();
    *&v24[v28] = 0;
    v118.receiver = v24;
    v118.super_class = v105;
    *&v18[v79] = objc_msgSendSuper2(&v118, "init");
    v29 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = v102;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = v93;
    *&v18[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = v96;
    v18[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = v99;
    swift_beginAccess();
    *&v18[v83] = 0;
    swift_beginAccess();
    v18[v81] = 0;
    swift_beginAccess();
    v30 = *&v18[v108];
    *&v18[v108] = v90;
    v31 = v90;

    swift_beginAccess();
    v32 = *&v18[v79];
    *&v18[v79] = v85;
    v33 = v85;

    swift_beginAccess();
    *&v18[v29] = 0;
    v117.receiver = v18;
    v117.super_class = v87;
    v34 = objc_msgSendSuper2(&v117, "init");

    v132 = v34;
    if (!v34)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    sub_10000E284(&v132, a2 & 1);
    if (v2)
    {

LABEL_23:
      return;
    }
  }

  v103 = v129;
  if (v129)
  {
    v94 = v127;
    v97 = v125;
    v100 = v122;
    v36 = type metadata accessor for CRXCEyePrescription();
    v37 = objc_allocWithZone(v36);
    v38 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v37[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v39 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v37[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v40 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v37[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v41 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v37[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v37[v38] = 0;
    swift_beginAccess();
    *&v37[v39] = 0;
    swift_beginAccess();
    *&v37[v40] = 0;
    swift_beginAccess();
    *&v37[v41] = 0;
    v116.receiver = v37;
    v116.super_class = v36;
    v91 = objc_msgSendSuper2(&v116, "init");
    v42 = objc_allocWithZone(v36);
    v43 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v42[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v44 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v42[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v45 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v42[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v46 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v42[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v42[v43] = 0;
    swift_beginAccess();
    *&v42[v44] = 0;
    swift_beginAccess();
    *&v42[v45] = 0;
    swift_beginAccess();
    *&v42[v46] = 0;
    v115.receiver = v42;
    v115.super_class = v36;
    v106 = v36;
    v86 = objc_msgSendSuper2(&v115, "init");
    v88 = type metadata accessor for CRXCPrescriptionInfo();
    v47 = objc_allocWithZone(v88);
    v84 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
    v82 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
    v47[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
    v109 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
    v48 = objc_allocWithZone(v36);
    v49 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v48[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v50 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v48[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v51 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v48[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v52 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v48[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v48[v49] = 0;
    swift_beginAccess();
    *&v48[v50] = 0;
    swift_beginAccess();
    *&v48[v51] = 0;
    swift_beginAccess();
    *&v48[v52] = 0;
    v114.receiver = v48;
    v114.super_class = v106;
    *&v47[v109] = objc_msgSendSuper2(&v114, "init");
    v80 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
    v53 = objc_allocWithZone(v106);
    v54 = OBJC_IVAR___CRXCEyePrescription_sphere;
    *&v53[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
    v55 = OBJC_IVAR___CRXCEyePrescription_cylinder;
    *&v53[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
    v56 = OBJC_IVAR___CRXCEyePrescription_axis;
    *&v53[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
    v57 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
    *&v53[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
    swift_beginAccess();
    *&v53[v54] = 0;
    swift_beginAccess();
    *&v53[v55] = 0;
    swift_beginAccess();
    *&v53[v56] = 0;
    swift_beginAccess();
    *&v53[v57] = 0;
    v113.receiver = v53;
    v113.super_class = v106;
    *&v47[v80] = objc_msgSendSuper2(&v113, "init");
    v58 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = v103;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = v94;
    *&v47[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = v97;
    v47[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = v100;
    swift_beginAccess();
    *&v47[v84] = 0;
    swift_beginAccess();
    v47[v82] = 0;
    swift_beginAccess();
    v59 = *&v47[v109];
    *&v47[v109] = v91;
    v60 = v91;

    swift_beginAccess();
    v61 = *&v47[v80];
    *&v47[v80] = v86;
    v62 = v86;

    swift_beginAccess();
    *&v47[v58] = 0;
    v112.receiver = v47;
    v112.super_class = v88;
    v63 = objc_msgSendSuper2(&v112, "init");

    v131 = v63;
    if (!v63)
    {
LABEL_34:
      __break(1u);
      return;
    }

    sub_10000E284(&v131, a2 & 1);
    if (v2)
    {

      goto LABEL_23;
    }
  }

  if ((v124 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v64 = sub_10000DD38(v124);
  v66 = v65;
  v101 = v132;
  v95 = v131;
  v67 = v6;
  v107 = sub_100080CF8();
  v110 = v67;
  v98 = v68;

  v104 = v123;
  if (HIDWORD(v123))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v66)
  {
    v69 = 3;
  }

  else
  {
    v69 = v64;
  }

  v92 = type metadata accessor for CRXCAppClipCodePayload();
  v70 = objc_allocWithZone(v92);
  v71 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  *&v70[OBJC_IVAR___CRXCAppClipCodePayload_left] = 0;
  v72 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  *&v70[OBJC_IVAR___CRXCAppClipCodePayload_right] = 0;
  v73 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  *&v70[OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode] = 0;
  v74 = &v70[OBJC_IVAR___CRXCAppClipCodePayload_secret];
  *&v70[OBJC_IVAR___CRXCAppClipCodePayload_secret] = xmmword_100084880;
  v89 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  *&v70[OBJC_IVAR___CRXCAppClipCodePayload_randomBits] = 0;
  *&v70[OBJC_IVAR___CRXCAppClipCodePayload_version] = 5;
  *&v70[OBJC_IVAR___CRXCAppClipCodePayload_lensType] = v69;
  swift_beginAccess();
  *&v70[v71] = v101;
  swift_beginAccess();
  *&v70[v72] = v95;
  swift_beginAccess();
  *&v70[v73] = 0;
  swift_beginAccess();
  v75 = *v74;
  v76 = v74[1];
  *v74 = v107;
  v74[1] = v98;
  v77 = v95;
  v78 = v101;
  sub_10000D808(v107, v98);
  sub_100006A34(v75, v76);
  swift_beginAccess();
  *&v70[v89] = v104;
  v111.receiver = v70;
  v111.super_class = v92;
  objc_msgSendSuper2(&v111, "init");

  sub_100006A34(v107, v98);
}

uint8_t *sub_10001345C(uint8_t *result, unint64_t a2, char a3)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v7 = *(result + 2);
    v6 = *(result + 3);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    if (!v5)
    {
      if (!BYTE6(a2))
      {
        goto LABEL_12;
      }

LABEL_8:
      v4 = v3;
      v11 = objc_allocWithZone(BitBuffer);
      isa = sub_100080CC8().super.isa;
      v13 = [v11 initWithData:isa];

      v14 = sub_10000E040(v13);
      if (v3)
      {
LABEL_9:

        return v4;
      }

      if (v14 <= 2)
      {
        if (v14 == 1)
        {
          sub_10000ECEC(v13, a3 & 1);
          goto LABEL_29;
        }

        if (v14 == 2)
        {
          sub_10000FAB4(v13, a3 & 1);
          goto LABEL_29;
        }
      }

      else
      {
        switch(v14)
        {
          case 3:
            sub_1000108B8(v13, a3 & 1);
            goto LABEL_29;
          case 4:
            sub_100011734(v13, a3 & 1);
            goto LABEL_29;
          case 5:
            sub_1000125BC(v13, a3 & 1);
LABEL_29:
            v4 = v19;

            return v4;
        }
      }

      v4 = v14;
      sub_1000161D8();
      swift_allocError();
      *v20 = v4;
      *(v20 + 8) = 1;
      swift_willThrow();
      goto LABEL_9;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) != result)
      {
        goto LABEL_8;
      }

LABEL_12:
      if (qword_1000B73D0 != -1)
      {
        swift_once();
      }

      v15 = sub_100081018();
      sub_100016240(v15, qword_1000B7790);
      v16 = sub_100080FF8();
      v17 = sub_1000815D8();
      if (os_log_type_enabled(v16, v17))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Empty payload", v4, 2u);
      }

      sub_1000161D8();
      swift_allocError();
      *v18 = 0;
      *(v18 + 8) = 2;
      swift_willThrow();
      return v4;
    }
  }

  __break(1u);
  return result;
}

void sub_100013718(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  swift_beginAccess();
  if (![a2 writeUInteger:*(a1 + v4) bitWidth:4])
  {
    goto LABEL_20;
  }

  v5 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  swift_beginAccess();
  if (![a2 writeUInteger:*(a1 + v5) bitWidth:12])
  {
    goto LABEL_20;
  }

  v6 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (v7)
  {
    v8 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
    swift_beginAccess();
    v9 = *(v7 + v8);
  }

  else
  {
    v9 = 0;
  }

  if (![a2 writeUInteger:v9 bitWidth:10])
  {
    goto LABEL_20;
  }

  v10 = *(a1 + v6);
  if (v10)
  {
    v11 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
    swift_beginAccess();
    v12 = *(v10 + v11);
  }

  else
  {
    v12 = 0;
  }

  if (![a2 writeUInteger:v12 bitWidth:6])
  {
    goto LABEL_20;
  }

  v13 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  swift_beginAccess();
  v14 = *(a1 + v13);
  if (v14)
  {
    v15 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
    swift_beginAccess();
    v16 = *(v14 + v15);
  }

  else
  {
    v16 = 0;
  }

  if (![a2 writeUInteger:v16 bitWidth:10])
  {
    goto LABEL_20;
  }

  v17 = *(a1 + v13);
  if (v17)
  {
    v18 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
    swift_beginAccess();
    v19 = *(v17 + v18);
  }

  else
  {
    v19 = 0;
  }

  if (![a2 writeUInteger:v19 bitWidth:6])
  {
    goto LABEL_20;
  }

  v20 = (a1 + OBJC_IVAR___CRXCAppClipCodePayload_secret);
  swift_beginAccess();
  v22 = *v20;
  v21 = v20[1];
  sub_10000D808(v22, v21);
  isa = sub_100080CC8().super.isa;
  sub_100006A34(v22, v21);
  v24 = [a2 writeData:isa bitWidth:80];

  if (!v24)
  {
LABEL_20:
    sub_1000161D8();
    swift_allocError();
    *v25 = 2;
    *(v25 + 8) = 2;
    swift_willThrow();
  }
}

void sub_1000139E0(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  swift_beginAccess();
  if (![a2 writeUInteger:*(a1 + v4) bitWidth:4])
  {
    goto LABEL_22;
  }

  if (![a2 skipBits:2])
  {
    goto LABEL_22;
  }

  v5 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  swift_beginAccess();
  if (![a2 writeUInteger:*(a1 + v5) bitWidth:4])
  {
    goto LABEL_22;
  }

  v6 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  swift_beginAccess();
  if (![a2 writeUInteger:*(a1 + v6) bitWidth:6])
  {
    goto LABEL_22;
  }

  v7 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  swift_beginAccess();
  v8 = *(a1 + v7);
  if (v8)
  {
    v9 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
    swift_beginAccess();
    v10 = *(v8 + v9);
  }

  else
  {
    v10 = 0;
  }

  if (![a2 writeUInteger:v10 bitWidth:10])
  {
    goto LABEL_22;
  }

  v11 = *(a1 + v7);
  if (v11)
  {
    v12 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
    swift_beginAccess();
    v13 = *(v11 + v12);
  }

  else
  {
    v13 = 0;
  }

  if (![a2 writeUInteger:v13 bitWidth:6])
  {
    goto LABEL_22;
  }

  v14 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  swift_beginAccess();
  v15 = *(a1 + v14);
  if (v15)
  {
    v16 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
    swift_beginAccess();
    v17 = *(v15 + v16);
  }

  else
  {
    v17 = 0;
  }

  if (![a2 writeUInteger:v17 bitWidth:10])
  {
    goto LABEL_22;
  }

  v18 = *(a1 + v14);
  if (v18)
  {
    v19 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
    swift_beginAccess();
    v20 = *(v18 + v19);
  }

  else
  {
    v20 = 0;
  }

  if (![a2 writeUInteger:v20 bitWidth:6])
  {
    goto LABEL_22;
  }

  v21 = (a1 + OBJC_IVAR___CRXCAppClipCodePayload_secret);
  swift_beginAccess();
  v23 = *v21;
  v22 = v21[1];
  sub_10000D808(v23, v22);
  isa = sub_100080CC8().super.isa;
  sub_100006A34(v23, v22);
  v25 = [a2 writeData:isa bitWidth:80];

  if (!v25)
  {
LABEL_22:
    sub_1000161D8();
    swift_allocError();
    *v26 = 2;
    *(v26 + 8) = 2;
    swift_willThrow();
  }
}

void sub_100013CF8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  swift_beginAccess();
  if (![a2 writeUInteger:*(a1 + v4) bitWidth:4])
  {
    goto LABEL_37;
  }

  v5 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  swift_beginAccess();
  if (![a2 writeUInteger:*(a1 + v5) bitWidth:4])
  {
    goto LABEL_37;
  }

  v6 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (v7)
  {
    v8 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
    swift_beginAccess();
    v9 = *(v7 + v8);
  }

  else
  {
    v9 = 0;
  }

  if (![a2 writeBool:v9])
  {
    goto LABEL_37;
  }

  v10 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (v11)
  {
    v12 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
    swift_beginAccess();
    v13 = *(v11 + v12);
  }

  else
  {
    v13 = 0;
  }

  if (![a2 writeBool:v13])
  {
    goto LABEL_37;
  }

  v14 = *(a1 + v6);
  if (v14)
  {
    v15 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
    swift_beginAccess();
    v16 = *(v14 + v15);
  }

  else
  {
    v16 = 0;
  }

  if (![a2 writeUInteger:v16 bitWidth:2])
  {
    goto LABEL_37;
  }

  v17 = *(a1 + v10);
  if (v17)
  {
    v18 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
    swift_beginAccess();
    v19 = *(v17 + v18);
  }

  else
  {
    v19 = 0;
  }

  if (![a2 writeUInteger:v19 bitWidth:2])
  {
    goto LABEL_37;
  }

  v20 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  swift_beginAccess();
  if (![a2 writeUInteger:*(a1 + v20) bitWidth:2])
  {
    goto LABEL_37;
  }

  v21 = *(a1 + v6);
  if (v21)
  {
    v22 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
    swift_beginAccess();
    v23 = *(v21 + v22);
  }

  else
  {
    v23 = 0;
  }

  if (![a2 writeUInteger:v23 bitWidth:10])
  {
    goto LABEL_37;
  }

  v24 = *(a1 + v6);
  if (v24)
  {
    v25 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
    swift_beginAccess();
    v26 = *(v24 + v25);
  }

  else
  {
    v26 = 0;
  }

  if (![a2 writeUInteger:v26 bitWidth:6])
  {
    goto LABEL_37;
  }

  v27 = *(a1 + v10);
  if (v27)
  {
    v28 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
    swift_beginAccess();
    v29 = *(v27 + v28);
  }

  else
  {
    v29 = 0;
  }

  if (![a2 writeUInteger:v29 bitWidth:10])
  {
    goto LABEL_37;
  }

  v30 = *(a1 + v10);
  if (v30)
  {
    v31 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
    swift_beginAccess();
    v32 = *(v30 + v31);
  }

  else
  {
    v32 = 0;
  }

  if (![a2 writeUInteger:v32 bitWidth:6])
  {
    goto LABEL_37;
  }

  v33 = (a1 + OBJC_IVAR___CRXCAppClipCodePayload_secret);
  swift_beginAccess();
  v35 = *v33;
  v34 = v33[1];
  sub_10000D808(v35, v34);
  isa = sub_100080CC8().super.isa;
  sub_100006A34(v35, v34);
  v37 = [a2 writeData:isa bitWidth:80];

  if (!v37)
  {
LABEL_37:
    sub_1000161D8();
    swift_allocError();
    *v38 = 2;
    *(v38 + 8) = 2;
    swift_willThrow();
  }
}

void sub_10001411C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  swift_beginAccess();
  if (![a2 writeUInteger:*(a1 + v4) bitWidth:4])
  {
    goto LABEL_38;
  }

  v5 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  swift_beginAccess();
  if (![a2 writeUInteger:*(a1 + v5) bitWidth:4])
  {
    goto LABEL_38;
  }

  v6 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (v7)
  {
    v8 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
    swift_beginAccess();
    v9 = *(v7 + v8);
  }

  else
  {
    v9 = 0;
  }

  if (![a2 writeBool:v9])
  {
    goto LABEL_38;
  }

  v10 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (v11)
  {
    v12 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
    swift_beginAccess();
    v13 = *(v11 + v12);
  }

  else
  {
    v13 = 0;
  }

  if (![a2 writeBool:v13])
  {
    goto LABEL_38;
  }

  v14 = *(a1 + v6);
  if (v14)
  {
    v15 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
    swift_beginAccess();
    v16 = *(v14 + v15);
  }

  else
  {
    v16 = 0;
  }

  if (![a2 writeUInteger:v16 bitWidth:2])
  {
    goto LABEL_38;
  }

  v17 = *(a1 + v10);
  if (v17)
  {
    v18 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
    swift_beginAccess();
    v19 = *(v17 + v18);
  }

  else
  {
    v19 = 0;
  }

  if (![a2 writeUInteger:v19 bitWidth:2])
  {
    goto LABEL_38;
  }

  v20 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
  swift_beginAccess();
  if ((*(a1 + v20) & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  if (![a2 writeUInteger:? bitWidth:?])
  {
    goto LABEL_38;
  }

  v21 = *(a1 + v6);
  if (v21)
  {
    v22 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
    swift_beginAccess();
    v23 = *(v21 + v22);
  }

  else
  {
    v23 = 0;
  }

  if (![a2 writeUInteger:v23 bitWidth:10])
  {
    goto LABEL_38;
  }

  v24 = *(a1 + v6);
  if (v24)
  {
    v25 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
    swift_beginAccess();
    v26 = *(v24 + v25);
  }

  else
  {
    v26 = 0;
  }

  if (![a2 writeUInteger:v26 bitWidth:6])
  {
    goto LABEL_38;
  }

  v27 = *(a1 + v10);
  if (v27)
  {
    v28 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
    swift_beginAccess();
    v29 = *(v27 + v28);
  }

  else
  {
    v29 = 0;
  }

  if (![a2 writeUInteger:v29 bitWidth:10])
  {
    goto LABEL_38;
  }

  v30 = *(a1 + v10);
  if (v30)
  {
    v31 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
    swift_beginAccess();
    v32 = *(v30 + v31);
  }

  else
  {
    v32 = 0;
  }

  if (![a2 writeUInteger:v32 bitWidth:6])
  {
    goto LABEL_38;
  }

  v33 = (a1 + OBJC_IVAR___CRXCAppClipCodePayload_secret);
  swift_beginAccess();
  v35 = *v33;
  v34 = v33[1];
  sub_10000D808(v35, v34);
  isa = sub_100080CC8().super.isa;
  sub_100006A34(v35, v34);
  v37 = [a2 writeData:isa bitWidth:80];

  if (!v37)
  {
LABEL_38:
    sub_1000161D8();
    swift_allocError();
    *v38 = 2;
    *(v38 + 8) = 2;
    swift_willThrow();
  }
}

void sub_100014548(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  swift_beginAccess();
  if (![a2 writeUInteger:*(a1 + v4) bitWidth:4])
  {
    goto LABEL_38;
  }

  v5 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (v6)
  {
    v7 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
    swift_beginAccess();
    v8 = *(v6 + v7);
  }

  else
  {
    v8 = 0;
  }

  if (![a2 writeBool:v8])
  {
    goto LABEL_38;
  }

  v9 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  swift_beginAccess();
  v10 = *(a1 + v9);
  if (v10)
  {
    v11 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
    swift_beginAccess();
    v12 = *(v10 + v11);
  }

  else
  {
    v12 = 0;
  }

  if (![a2 writeBool:v12])
  {
    goto LABEL_38;
  }

  v13 = *(a1 + v5);
  if (v13)
  {
    v14 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
    swift_beginAccess();
    v15 = *(v13 + v14);
  }

  else
  {
    v15 = 0;
  }

  if (![a2 writeUInteger:v15 bitWidth:2])
  {
    goto LABEL_38;
  }

  v16 = *(a1 + v9);
  if (v16)
  {
    v17 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
    swift_beginAccess();
    v18 = *(v16 + v17);
  }

  else
  {
    v18 = 0;
  }

  if (![a2 writeUInteger:v18 bitWidth:2])
  {
    goto LABEL_38;
  }

  v19 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
  swift_beginAccess();
  if ((*(a1 + v19) & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  if (![a2 writeUInteger:? bitWidth:?])
  {
    goto LABEL_38;
  }

  v20 = *(a1 + v5);
  if (v20)
  {
    v21 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
    swift_beginAccess();
    v22 = *(v20 + v21);
  }

  else
  {
    v22 = 0;
  }

  if (![a2 writeUInteger:v22 bitWidth:11])
  {
    goto LABEL_38;
  }

  v23 = *(a1 + v5);
  if (v23)
  {
    v24 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
    swift_beginAccess();
    v25 = *(v23 + v24);
  }

  else
  {
    v25 = 0;
  }

  if (![a2 writeUInteger:v25 bitWidth:6])
  {
    goto LABEL_38;
  }

  v26 = *(a1 + v9);
  if (v26)
  {
    v27 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
    swift_beginAccess();
    v28 = *(v26 + v27);
  }

  else
  {
    v28 = 0;
  }

  if (![a2 writeUInteger:v28 bitWidth:11])
  {
    goto LABEL_38;
  }

  v29 = *(a1 + v9);
  if (v29)
  {
    v30 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
    swift_beginAccess();
    v31 = *(v29 + v30);
  }

  else
  {
    v31 = 0;
  }

  if (![a2 writeUInteger:v31 bitWidth:6])
  {
    goto LABEL_38;
  }

  v32 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  swift_beginAccess();
  if (![a2 writeUInteger:*(a1 + v32) bitWidth:2])
  {
    goto LABEL_38;
  }

  v33 = (a1 + OBJC_IVAR___CRXCAppClipCodePayload_secret);
  swift_beginAccess();
  v35 = *v33;
  v34 = v33[1];
  sub_10000D808(v35, v34);
  isa = sub_100080CC8().super.isa;
  sub_100006A34(v35, v34);
  v37 = [a2 writeData:isa bitWidth:80];

  if (!v37)
  {
LABEL_38:
    sub_1000161D8();
    swift_allocError();
    *v38 = 2;
    *(v38 + 8) = 2;
    swift_willThrow();
  }
}

id sub_100014974(uint64_t a1)
{
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5 >= 6)
  {
    if (v5 != 6)
    {
      sub_1000161D8();
      swift_allocError();
      *v10 = v5;
      *(v10 + 8) = 1;
      swift_willThrow();
      return v2;
    }

    v6 = 19;
  }

  else
  {
    v6 = 16;
  }

  result = [objc_allocWithZone(NSMutableData) initWithLength:v6];
  if (result)
  {
    v2 = result;
    v8 = [objc_allocWithZone(BitBuffer) initWithMutableData:result];
    v9 = *(a1 + v4);
    if (v9 <= 2)
    {
      if (v9 == 1)
      {
        sub_100013718(a1, v8);
        if (!v1)
        {
LABEL_22:
          v11 = v2;
          v2 = sub_100080CF8();

          return v2;
        }

LABEL_24:

        return v2;
      }

      if (v9 == 2)
      {
        sub_1000139E0(a1, v8);
        if (!v1)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      }
    }

    else
    {
      switch(v9)
      {
        case 3:
          sub_100013CF8(a1, v8);
          if (!v1)
          {
            goto LABEL_22;
          }

          goto LABEL_24;
        case 4:
          sub_10001411C(a1, v8);
          if (!v1)
          {
            goto LABEL_22;
          }

          goto LABEL_24;
        case 5:
          sub_100014548(a1, v8);
          if (!v1)
          {
            goto LABEL_22;
          }

          goto LABEL_24;
      }
    }

    sub_1000161D8();
    swift_allocError();
    *v12 = v9;
    *(v12 + 8) = 1;
    swift_willThrow();
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100014B98(float a1, float a2)
{
  v11 = 0;
  v4 = objc_opt_self();
  *&v5 = a1;
  *&v6 = a2;
  v7 = [v4 sphere:&v11 cylinder:v5 toRXID:v6];
  v8 = v7;
  if ((v7 - 1) >= 2)
  {
    if (!v7)
    {
      return v11;
    }

    v8 = 128;
  }

  sub_1000161D8();
  swift_allocError();
  *v10 = v8;
  *(v10 + 8) = 0;
  return swift_willThrow();
}

void sub_100014C78(float a1, float a2, float a3)
{
  if (a1 < a2 || a3 < a1)
  {
    sub_1000161D8();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = 2;
    swift_willThrow();
    return;
  }

  v5 = (a1 - a2) * 100.0;
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v5 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 >= 1.8447e19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= 0xFFFFFFFFFFFFFFE8)
  {
LABEL_15:
    __break(1u);
  }
}

void sub_100014D68(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    v5 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
    swift_beginAccess();
    v6 = *&v4[v5];
    v7 = (v6 + OBJC_IVAR___CRXCEyePrescription_sphere);
    swift_beginAccess();
    v8 = *v7;
    v9 = (v6 + OBJC_IVAR___CRXCEyePrescription_cylinder);
    swift_beginAccess();
    v10 = *v9;
    v11 = v4;
    v12 = sub_100014B98(v8, v10);
    if (v1)
    {
      goto LABEL_16;
    }

    v13 = v12;
    v14 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
    swift_beginAccess();
    *&v11[v14] = v13;

    v15 = *(v2 + v3);
    if (!v15)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v16 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
    swift_beginAccess();
    v17 = *&v15[v16];
    v18 = OBJC_IVAR___CRXCEyePrescription_axis;
    swift_beginAccess();
    v19 = *(v17 + v18);
    v59[0] = 0;
    v20 = objc_opt_self();
    v11 = v15;
    v21 = [v20 axis:v19 toAxisID:v59];
    if (v21)
    {
      if (v21 == 3)
      {
LABEL_6:
        v22 = 4;
LABEL_15:
        sub_1000161D8();
        swift_allocError();
        *v49 = v22;
        *(v49 + 8) = 0;
        swift_willThrow();
        goto LABEL_16;
      }

LABEL_14:
      v22 = 128;
      goto LABEL_15;
    }

    v23 = v59[0];
    v24 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
    swift_beginAccess();
    *&v11[v24] = v23;

    v25 = *(v2 + v3);
    if (!v25)
    {
      goto LABEL_22;
    }

    v26 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
    swift_beginAccess();
    v27 = (*(v25 + v26) + OBJC_IVAR___CRXCEyePrescription_vrAdd);
    swift_beginAccess();
    sub_100014C78(*v27, 0.0, 0.75);
    v29 = v28;
    v30 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
    swift_beginAccess();
    *(v25 + v30) = v29;
  }

  v31 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  swift_beginAccess();
  v32 = *(v2 + v31);
  if (!v32)
  {
    return;
  }

  v33 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  swift_beginAccess();
  v34 = *&v32[v33];
  v35 = (v34 + OBJC_IVAR___CRXCEyePrescription_sphere);
  swift_beginAccess();
  v36 = *v35;
  v37 = (v34 + OBJC_IVAR___CRXCEyePrescription_cylinder);
  swift_beginAccess();
  v38 = *v37;
  v11 = v32;
  v39 = sub_100014B98(v36, v38);
  if (!v1)
  {
    v40 = v39;
    v41 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
    swift_beginAccess();
    *&v11[v41] = v40;

    v42 = *(v2 + v31);
    if (v42)
    {
      v43 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
      swift_beginAccess();
      v44 = *&v42[v43];
      v45 = OBJC_IVAR___CRXCEyePrescription_axis;
      swift_beginAccess();
      v46 = *(v44 + v45);
      v58[0] = 0;
      v47 = objc_opt_self();
      v11 = v42;
      v48 = [v47 axis:v46 toAxisID:v58];
      if (v48)
      {
        if (v48 == 3)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }

      v50 = v58[0];
      v51 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
      swift_beginAccess();
      *&v11[v51] = v50;

      v52 = *(v2 + v31);
      if (v52)
      {
        v53 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
        swift_beginAccess();
        v54 = (*(v52 + v53) + OBJC_IVAR___CRXCEyePrescription_vrAdd);
        swift_beginAccess();
        sub_100014C78(*v54, 0.0, 0.75);
        v56 = v55;
        v57 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
        swift_beginAccess();
        *(v52 + v57) = v56;
        return;
      }

LABEL_23:
      __break(1u);
      return;
    }

    goto LABEL_21;
  }

LABEL_16:
}

char *sub_100015288(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a4;
  if (!a3)
  {
    v51 = a7;
    v53 = a6;
    v52 = 0;
    if (!a4)
    {
      goto LABEL_16;
    }

LABEL_10:
    v54 = &v7[OBJC_IVAR___CRXCEyePrescription_sphere];
    swift_beginAccess();
    v55 = *v54;
    v56 = *v54;
    v57 = &v7[OBJC_IVAR___CRXCEyePrescription_cylinder];
    swift_beginAccess();
    v58 = *v57;
    v59 = *v57;
    v60 = OBJC_IVAR___CRXCEyePrescription_axis;
    swift_beginAccess();
    v61 = *&v7[v60];
    v153 = v56;
    v154 = v59;
    v155 = v61;
    v62 = v7;
    v63 = vrx_apply_eye_rx_cylinder_sign_flip(&v153);
    if (v63 == 1)
    {
      v61 = v155;
      v55 = v153;
      v58 = v154;
    }

    if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v61 > -1.0)
      {
        if (v61 < 1.84467441e19)
        {
          v127 = v63 == 1;
          v64 = v61;
          v129 = v62;
          v65 = &v62[OBJC_IVAR___CRXCEyePrescription_vrAdd];
          swift_beginAccess();
          v66 = *v65;
          v67 = type metadata accessor for CRXCEyePrescription();
          v131 = v52;
          v68 = objc_allocWithZone(v67);
          v69 = &v68[OBJC_IVAR___CRXCEyePrescription_sphere];
          *&v68[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
          v70 = &v68[OBJC_IVAR___CRXCEyePrescription_cylinder];
          *&v68[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
          v71 = OBJC_IVAR___CRXCEyePrescription_axis;
          *&v68[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
          v72 = &v68[OBJC_IVAR___CRXCEyePrescription_vrAdd];
          *&v68[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
          swift_beginAccess();
          *v69 = v55;
          swift_beginAccess();
          *v70 = v58;
          swift_beginAccess();
          *&v68[v71] = v64;
          swift_beginAccess();
          *v72 = v66;
          v150.receiver = v68;
          v150.super_class = v67;
          v125 = objc_msgSendSuper2(&v150, "init");
          v73 = objc_allocWithZone(v67);
          v74 = OBJC_IVAR___CRXCEyePrescription_sphere;
          *&v73[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
          v75 = OBJC_IVAR___CRXCEyePrescription_cylinder;
          *&v73[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
          v76 = OBJC_IVAR___CRXCEyePrescription_axis;
          *&v73[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
          v77 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
          *&v73[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
          swift_beginAccess();
          *&v73[v74] = 0;
          swift_beginAccess();
          *&v73[v75] = 0;
          swift_beginAccess();
          *&v73[v76] = 0;
          swift_beginAccess();
          *&v73[v77] = 0;
          v149.receiver = v73;
          v149.super_class = v67;
          v121 = objc_msgSendSuper2(&v149, "init");
          v123 = type metadata accessor for CRXCPrescriptionInfo();
          v78 = objc_allocWithZone(v123);
          v119 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
          *&v78[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
          *&v78[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
          *&v78[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
          *&v78[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
          *&v78[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
          v117 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
          v78[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
          v79 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
          v80 = objc_allocWithZone(v67);
          v81 = OBJC_IVAR___CRXCEyePrescription_sphere;
          *&v80[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
          v82 = OBJC_IVAR___CRXCEyePrescription_cylinder;
          *&v80[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
          v83 = OBJC_IVAR___CRXCEyePrescription_axis;
          *&v80[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
          v84 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
          *&v80[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
          swift_beginAccess();
          *&v80[v81] = 0;
          swift_beginAccess();
          *&v80[v82] = 0;
          swift_beginAccess();
          *&v80[v83] = 0;
          swift_beginAccess();
          *&v80[v84] = 0;
          v148.receiver = v80;
          v148.super_class = v67;
          *&v78[v79] = objc_msgSendSuper2(&v148, "init");
          v85 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
          v86 = objc_allocWithZone(v67);
          v87 = OBJC_IVAR___CRXCEyePrescription_sphere;
          *&v86[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
          v88 = OBJC_IVAR___CRXCEyePrescription_cylinder;
          *&v86[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
          v89 = OBJC_IVAR___CRXCEyePrescription_axis;
          *&v86[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
          v90 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
          *&v86[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
          swift_beginAccess();
          *&v86[v87] = 0;
          swift_beginAccess();
          *&v86[v88] = 0;
          swift_beginAccess();
          *&v86[v89] = 0;
          swift_beginAccess();
          *&v86[v90] = 0;
          v147.receiver = v86;
          v147.super_class = v67;
          *&v78[v85] = objc_msgSendSuper2(&v147, "init");
          v91 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
          *&v78[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
          *&v78[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = 0;
          *&v78[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = 0;
          *&v78[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = 0;
          v78[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = v127;
          swift_beginAccess();
          *&v78[v119] = 0;
          swift_beginAccess();
          v78[v117] = 0;
          swift_beginAccess();
          v92 = *&v78[v79];
          *&v78[v79] = v121;
          v93 = v121;

          swift_beginAccess();
          v94 = *&v78[v85];
          *&v78[v85] = v125;
          v95 = v125;

          v52 = v131;
          swift_beginAccess();
          *&v78[v91] = 0;
          v146.receiver = v78;
          v51 = a7;
          v146.super_class = v123;
          v7 = objc_msgSendSuper2(&v146, "init");

          v53 = a6;
          goto LABEL_16;
        }

LABEL_32:
        __break(1u);
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v8 = &a3[OBJC_IVAR___CRXCEyePrescription_sphere];
  swift_beginAccess();
  v10 = *v8;
  v11 = *v8;
  v12 = &a3[OBJC_IVAR___CRXCEyePrescription_cylinder];
  swift_beginAccess();
  v13 = *v12;
  v14 = *v12;
  v15 = OBJC_IVAR___CRXCEyePrescription_axis;
  swift_beginAccess();
  v16 = *&a3[v15];
  v153 = v11;
  v154 = v14;
  v155 = v16;
  v17 = a3;
  v18 = vrx_apply_eye_rx_cylinder_sign_flip(&v153);
  if (v18 == 1)
  {
    v16 = v155;
    v10 = v153;
    v13 = v154;
  }

  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v16 <= -1.0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v16 >= 1.84467441e19)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v126 = v18 == 1;
  v128 = v17;
  v130 = v7;
  v19 = v16;
  v20 = &v17[OBJC_IVAR___CRXCEyePrescription_vrAdd];
  swift_beginAccess();
  v21 = *v20;
  v22 = type metadata accessor for CRXCEyePrescription();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR___CRXCEyePrescription_sphere];
  *&v23[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v25 = &v23[OBJC_IVAR___CRXCEyePrescription_cylinder];
  *&v23[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v26 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v23[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v27 = &v23[OBJC_IVAR___CRXCEyePrescription_vrAdd];
  *&v23[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *v24 = v10;
  swift_beginAccess();
  *v25 = v13;
  swift_beginAccess();
  *&v23[v26] = v19;
  swift_beginAccess();
  *v27 = v21;
  v145.receiver = v23;
  v145.super_class = v22;
  v124 = objc_msgSendSuper2(&v145, "init");
  v28 = objc_allocWithZone(v22);
  v29 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v28[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v30 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v28[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v31 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v28[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v32 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v28[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v28[v29] = 0;
  swift_beginAccess();
  *&v28[v30] = 0;
  swift_beginAccess();
  *&v28[v31] = 0;
  swift_beginAccess();
  *&v28[v32] = 0;
  v144.receiver = v28;
  v144.super_class = v22;
  v120 = objc_msgSendSuper2(&v144, "init");
  v122 = type metadata accessor for CRXCPrescriptionInfo();
  v33 = objc_allocWithZone(v122);
  v118 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  *&v33[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
  *&v33[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
  *&v33[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
  *&v33[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
  *&v33[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
  v116 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  v33[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
  v34 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  v35 = objc_allocWithZone(v22);
  v36 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v35[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v37 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v35[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v38 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v35[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v39 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v35[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v35[v36] = 0;
  swift_beginAccess();
  *&v35[v37] = 0;
  swift_beginAccess();
  *&v35[v38] = 0;
  swift_beginAccess();
  *&v35[v39] = 0;
  v143.receiver = v35;
  v143.super_class = v22;
  *&v33[v34] = objc_msgSendSuper2(&v143, "init");
  v40 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  v41 = objc_allocWithZone(v22);
  v42 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v41[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v43 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v41[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v44 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v41[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v45 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v41[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v41[v42] = 0;
  swift_beginAccess();
  *&v41[v43] = 0;
  swift_beginAccess();
  *&v41[v44] = 0;
  swift_beginAccess();
  *&v41[v45] = 0;
  v142.receiver = v41;
  v142.super_class = v22;
  *&v33[v40] = objc_msgSendSuper2(&v142, "init");
  v46 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  *&v33[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
  *&v33[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = 0;
  *&v33[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = 0;
  *&v33[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = 0;
  v33[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = v126;
  swift_beginAccess();
  *&v33[v118] = 0;
  swift_beginAccess();
  v33[v116] = 0;
  swift_beginAccess();
  v47 = *&v33[v34];
  *&v33[v34] = v120;
  v48 = v120;

  swift_beginAccess();
  v49 = *&v33[v40];
  *&v33[v40] = v124;
  v50 = v124;

  v7 = v130;
  swift_beginAccess();
  *&v33[v46] = 0;
  v141.receiver = v33;
  v51 = a7;
  v141.super_class = v122;
  v52 = objc_msgSendSuper2(&v141, "init");

  v53 = a6;
  if (v130)
  {
    goto LABEL_10;
  }

LABEL_16:
  v96 = v53;
  v97 = v51;
  if (v51 >> 60 == 15)
  {
    v98 = sub_100065F38(0xAuLL);
    if (v99 >> 60 == 15)
    {
      sub_1000161D8();
      swift_allocError();
      *v100 = 2;
      *(v100 + 8) = 2;
      swift_willThrow();

      goto LABEL_23;
    }

    v96 = v98;
    v97 = v99;
  }

  sub_10001622C(v53, v51);
  v101 = sub_10000DF80();
  if ((v101 & 0x100000000) != 0)
  {
    sub_1000161D8();
    swift_allocError();
    *v114 = 2;
    *(v114 + 8) = 2;
    swift_willThrow();

    sub_100006A34(v96, v97);
    return v7;
  }

  v140 = v101;
  v138 = type metadata accessor for CRXCAppClipCodePayload();
  v102 = v7;
  v7 = objc_allocWithZone(v138);
  v103 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  *&v7[OBJC_IVAR___CRXCAppClipCodePayload_left] = 0;
  v104 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  *&v7[OBJC_IVAR___CRXCAppClipCodePayload_right] = 0;
  v105 = v52;
  v106 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  *&v7[OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode] = 0;
  v107 = &v7[OBJC_IVAR___CRXCAppClipCodePayload_secret];
  *&v7[OBJC_IVAR___CRXCAppClipCodePayload_secret] = xmmword_100084880;
  v132 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  *&v7[OBJC_IVAR___CRXCAppClipCodePayload_randomBits] = 0;
  *&v7[OBJC_IVAR___CRXCAppClipCodePayload_version] = a1;
  *&v7[OBJC_IVAR___CRXCAppClipCodePayload_lensType] = a2;
  swift_beginAccess();
  *&v7[v103] = v102;
  swift_beginAccess();
  *&v7[v104] = v105;
  swift_beginAccess();
  *&v7[v106] = a5;
  swift_beginAccess();
  v109 = *v107;
  v108 = v107[1];
  *v107 = v96;
  v107[1] = v97;
  v110 = v105;
  v111 = v102;
  sub_10000D808(v96, v97);
  v52 = v111;
  v112 = v110;
  sub_10000D808(v96, v97);
  sub_100006A34(v109, v108);
  swift_beginAccess();
  *&v7[v132] = v140;
  v151.receiver = v7;
  v151.super_class = v138;
  v113 = objc_msgSendSuper2(&v151, "init");
  sub_100006A34(v96, v97);

  v152 = v113;
  sub_100014D68(&v152);
  if (!v136)
  {
    v7 = sub_100014974(v113);
    sub_100006A34(v96, v97);

    return v7;
  }

  sub_100006A34(v96, v97);

LABEL_23:
  return v7;
}

unint64_t sub_1000161D8()
{
  result = qword_1000B7900;
  if (!qword_1000B7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7900);
  }

  return result;
}

uint64_t sub_10001622C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000D808(a1, a2);
  }

  return a1;
}

uint64_t sub_100016240(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100016278(uint64_t a1, uint64_t *a2)
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

uint64_t initializeBufferWithCopyOfBuffer for AppClipCodeTranscoderError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppClipCodeTranscoderError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AppClipCodeTranscoderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100016380(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100016398(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1000163D4()
{
  result = qword_1000B7918;
  if (!qword_1000B7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7918);
  }

  return result;
}

unint64_t sub_10001642C()
{
  result = qword_1000B7920;
  if (!qword_1000B7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7920);
  }

  return result;
}

unint64_t sub_100016484()
{
  result = qword_1000B7928;
  if (!qword_1000B7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7928);
  }

  return result;
}

unint64_t sub_1000164DC()
{
  result = qword_1000B7930;
  if (!qword_1000B7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7930);
  }

  return result;
}

void sub_100016534()
{
  v0 = sub_100081018();
  sub_100016278(v0, qword_1000B7938);
  sub_100016240(v0, qword_1000B7938);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1000812B8();

    type metadata accessor for CalibrationDataDownloaderImpl();
    sub_100006940(&qword_1000B7A48, &unk_100084EC8);
    sub_100081338();
    sub_100081008();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100016628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = v7;
  *(v8 + 136) = a4;
  *(v8 + 144) = a6;
  *(v8 + 512) = a5;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  v9 = sub_100081728();
  *(v8 + 168) = v9;
  v10 = *(v9 - 8);
  *(v8 + 176) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v12 = sub_100081308();
  *(v8 + 192) = v12;
  v13 = *(v12 - 8);
  *(v8 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  Response = type metadata accessor for GetResponse(0);
  *(v8 + 216) = Response;
  v16 = *(Response - 8);
  *(v8 + 224) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  Request = type metadata accessor for GetRequest(0);
  *(v8 + 256) = Request;
  v19 = *(*(Request - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v20 = sub_100080DC8();
  *(v8 + 272) = v20;
  v21 = *(v20 - 8);
  *(v8 + 280) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  v23 = *(*(sub_100006940(&qword_1000B7A28, &qword_100084EB0) - 8) + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_1000168B0, v7, 0);
}

uint64_t sub_1000168B0()
{
  v1 = *(v0 + 136);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 120);
    if (v2 >> 60 == 15)
    {
      sub_10001A110();
      swift_allocError();
      *v3 = 1;
      swift_willThrow();
LABEL_6:
      v12 = *(v0 + 312);
      v11 = *(v0 + 320);
      v14 = *(v0 + 296);
      v13 = *(v0 + 304);
      v15 = *(v0 + 288);
      v16 = *(v0 + 264);
      v18 = *(v0 + 240);
      v17 = *(v0 + 248);
      v19 = *(v0 + 232);
      v20 = *(v0 + 208);
      v117 = *(v0 + 184);

      v21 = *(v0 + 8);

      return v21();
    }

    v6 = *(v0 + 160);
    v7 = *(v0 + 112);
    type metadata accessor for Encryption();
    v8 = *(v6 + 112);
    v9 = *(v6 + 120);
    sub_10000D808(v7, v2);
    v25 = static Encryption.deriveRecordIDAndKey(from:salt:)();
    v26 = v10;
    v27 = v29;
    v28 = v30;
    sub_10001A164(*(v0 + 112), *(v0 + 120));
    v5 = 0;
    v24 = 0;
  }

  else
  {
    v4 = *(v0 + 128);
    type metadata accessor for Encryption();
    sub_10000D808(v4, v1);
    v5 = static Encryption.deriveRecordID(fromPublicKey:)(v4, v1);
    v24 = v23;
    v25 = 0;
    v26 = 0;
    v27 = *(v0 + 128);
    v28 = *(v0 + 136);
  }

  *(v0 + 360) = v25;
  *(v0 + 368) = v26;
  *(v0 + 344) = v27;
  *(v0 + 352) = v28;
  *(v0 + 328) = v5;
  *(v0 + 336) = v24;
  v31 = off_1000AA700[*(v0 + 512)];
  *(v0 + 376) = v31;
  v32 = *(v0 + 320);
  v33 = *(v0 + 216);
  v34 = *(v0 + 224);
  v35 = *(v34 + 56);
  *(v0 + 384) = v35;
  *(v0 + 392) = (v34 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v35(v32, 1, 1, v33);
  v36 = v31[2];
  *(v0 + 400) = v36;
  if (v36)
  {
    *(v0 + 408) = 0;
    *(v0 + 513) = 11;
    v37 = *(v0 + 144);
    v38 = *(v0 + 152);
    v39 = *(*(v0 + 376) + 32);
    *(v0 + 514) = v39;
    type metadata accessor for MuseAccessoryDataClient();
    *(v0 + 416) = swift_initStackObject();

    sub_10006F34C(1, v39);
    *(v0 + 432) = 0;
    *(v0 + 440) = 5;
    *(v0 + 424) = v40;
    if (qword_1000B73D8 != -1)
    {
      swift_once();
    }

    v41 = sub_100081018();
    *(v0 + 448) = sub_100016240(v41, qword_1000B7938);
    v42 = sub_100080FF8();
    v43 = sub_1000815C8();
    if (os_log_type_enabled(v42, v43))
    {
      if (*(v0 + 514))
      {
        v44 = 2;
      }

      else
      {
        v44 = 1;
      }

      v45 = swift_slowAlloc();
      *v45 = 134217984;
      *(v45 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v42, v43, "Performing 'get' request in environment %ld", v45, 0xCu);
    }

    v47 = *(v0 + 280);
    v46 = *(v0 + 288);
    v48 = *(v0 + 272);

    sub_100080DB8();
    *(v0 + 456) = sub_100080DA8();
    *(v0 + 464) = v49;
    (*(v47 + 8))(v46, v48);

    return _swift_task_switch(sub_100017308, 0, 0);
  }

  else
  {

    v50 = *(v0 + 296);
    v51 = *(v0 + 216);
    v52 = *(v0 + 224);
    sub_10001A8DC(*(v0 + 320), v50, &qword_1000B7A28, &qword_100084EB0);
    if ((*(v52 + 48))(v50, 1, v51) == 1)
    {
      v53 = *(v0 + 344);
      v54 = *(v0 + 352);
      v55 = *(v0 + 320);
      sub_10001A80C(*(v0 + 296), &qword_1000B7A28, &qword_100084EB0);
      sub_10001A110();
      swift_allocError();
      *v56 = 6;
      swift_willThrow();
      sub_10001A164(v53, v54);
      sub_10001A80C(v55, &qword_1000B7A28, &qword_100084EB0);
      goto LABEL_6;
    }

    sub_10001A944(*(v0 + 296), *(v0 + 232));
    sub_10001A9A8(11);
    v57 = *(v0 + 344);
    v58 = *(v0 + 352);
    v59 = *(v0 + 232);
    type metadata accessor for Encryption();
    v60 = static Encryption.decryptData(_:using:)(*(v59 + 40), *(v59 + 48), v57, v58);
    v62 = v61;
    type metadata accessor for LensCalibrationPayload();
    swift_allocObject();
    sub_10000D808(v60, v62);
    LensCalibrationPayload.init(from:)(v60, v62);
    v64 = v63;
    if (((*(*v63 + 120))(v63) & 1) == 0)
    {
      sub_100006A34(v60, v62);

      v71 = *(v0 + 344);
      v72 = *(v0 + 352);
      v73 = *(v0 + 320);
      v74 = *(v0 + 232);
      sub_10001A110();
      swift_allocError();
      *v75 = 6;
      swift_willThrow();
      sub_10001A164(v71, v72);
      sub_10001A80C(v73, &qword_1000B7A28, &qword_100084EB0);
      sub_10001AA64(v74, type metadata accessor for GetResponse);
      goto LABEL_6;
    }

    v65 = v64[7];
    if (v65)
    {
      v66 = v64[6];
      v67 = v64[7];

      v68 = Data.init(hexEncodedString:)(v66, v65);
      v70 = v69;
    }

    else
    {
      sub_10001622C(*(v0 + 112), *(v0 + 120));
      v68 = *(v0 + 112);
      v70 = *(v0 + 120);
    }

    if (v70 >> 60 == 15)
    {
      v77 = *(v0 + 344);
      v76 = *(v0 + 352);
      v78 = *(v0 + 320);
      v79 = *(v0 + 232);
      sub_10001A110();
      swift_allocError();
      *v80 = 6;
      swift_willThrow();

      sub_10001A164(v77, v76);
      sub_100006A34(v60, v62);
      sub_10001A80C(v78, &qword_1000B7A28, &qword_100084EB0);
      sub_10001AA64(v79, type metadata accessor for GetResponse);
      goto LABEL_6;
    }

    v116 = v0;
    if (v64[3])
    {
      v82 = *(v0 + 200);
      v81 = *(v0 + 208);
      v83 = *(v0 + 192);
      v84 = v64[2];
      sub_10000D808(v68, v70);
      sub_1000812F8();
      v85 = sub_1000812C8();
      v118 = v86;
      v119 = v85;
      (*(v82 + 8))(v81, v83);
    }

    else
    {
      sub_10000D808(v68, v70);
      v118 = 0xF000000000000000;
      v119 = 0;
    }

    if (v64[5])
    {
      v87 = v116;
      super_class = v116[12].super_class;
      receiver = v116[13].receiver;
      v114 = v116[12].receiver;
      v90 = v64[4];
      sub_1000812F8();
      v91 = sub_1000812C8();
      v102 = v92;
      v103 = v91;
      (*(super_class + 1))(receiver, v114);
    }

    else
    {
      v102 = 0xF000000000000000;
      v103 = 0;
      v87 = v116;
    }

    v100 = v87[21].super_class;
    v101 = v87[22].receiver;
    v106 = v87[19].super_class;
    v107 = v87[19].receiver;
    v108 = v87[18].super_class;
    v109 = v87[18].receiver;
    v110 = v87[16].super_class;
    v111 = v87[15].super_class;
    v112 = v87[15].receiver;
    v104 = v87[20].receiver;
    v105 = v87[14].super_class;
    v113 = v87[13].receiver;
    v115 = v87[11].super_class;
    v99 = type metadata accessor for CRXCFactoryCalibrationData();
    v93 = objc_allocWithZone(v99);
    v94 = &v93[OBJC_IVAR___CRXCFactoryCalibrationData_acc];
    *v94 = v68;
    v94[1] = v70;
    v95 = &v93[OBJC_IVAR___CRXCFactoryCalibrationData_left];
    *v95 = v119;
    v95[1] = v118;
    v96 = &v93[OBJC_IVAR___CRXCFactoryCalibrationData_right];
    *v96 = v103;
    v96[1] = v102;
    sub_10001622C(v68, v70);
    sub_10001622C(v119, v118);
    sub_10001622C(v103, v102);
    v87[3].receiver = v93;
    v87[3].super_class = v99;
    v97 = objc_msgSendSuper2(v87 + 3, "init");

    sub_10001A164(v100, v101);
    sub_10001A164(v103, v102);
    sub_10001A164(v119, v118);
    sub_10001A164(v68, v70);
    sub_10001A164(v68, v70);
    sub_100006A34(v60, v62);
    sub_10001A80C(v104, &qword_1000B7A28, &qword_100084EB0);
    sub_10001AA64(v105, type metadata accessor for GetResponse);

    v98 = v87->super_class;

    return v98(v97);
  }
}

uint64_t sub_100017308()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 432);
  v12 = *(v0 + 328);
  v13 = *(v0 + 360);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(*(v0 + 424) + 16);
  v7 = swift_task_alloc();
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  *(v7 + 32) = v13;
  *(v7 + 48) = v12;
  sub_10001AB28(&qword_1000B7A30, 255, type metadata accessor for GetRequest);
  sub_100080F68();

  v8 = swift_task_alloc();
  *(v0 + 472) = v8;
  *v8 = v0;
  v8[1] = sub_100017468;
  v9 = *(v0 + 312);
  v10 = *(v0 + 264);

  return sub_100065164(v9, v10, v6);
}

uint64_t sub_100017468()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  v2[60] = v0;

  v5 = v2[33];
  if (v0)
  {
    sub_10001AA64(v5, type metadata accessor for GetRequest);
    v6 = sub_1000180D4;
    v7 = 0;
  }

  else
  {
    v8 = v2[20];
    sub_10001AA64(v5, type metadata accessor for GetRequest);
    v6 = sub_1000175D8;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000175D8()
{
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 304);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  sub_10001A80C(v4, &qword_1000B7A28, &qword_100084EB0);
  v2(v3, 0, 1, v6);
  sub_10001A86C(v3, v4);
  sub_10001A8DC(v4, v5, &qword_1000B7A28, &qword_100084EB0);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = *(v0 + 304);
  if (v8 == 1)
  {
    v10 = *(v0 + 424);

    sub_10001A80C(v9, &qword_1000B7A28, &qword_100084EB0);
    v11 = *(v0 + 513);
  }

  else
  {
    v27 = *(v0 + 448);
    v29 = *(v0 + 240);
    v28 = *(v0 + 248);
    sub_10001A944(*(v0 + 304), v28);
    sub_10001AAC4(v28, v29);
    v30 = sub_100080FF8();
    v31 = sub_1000815C8();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 240);
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 67109120;
      v35 = *(v33 + 16);
      sub_10001AA64(v33, type metadata accessor for GetResponse);
      *(v34 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "response status: %d", v34, 8u);
    }

    else
    {
      sub_10001AA64(*(v0 + 240), type metadata accessor for GetResponse);
    }

    v36 = *(v0 + 424);
    v37 = *(v0 + 248);

    v38 = *(v37 + 16);
    sub_10001AA64(v37, type metadata accessor for GetResponse);
    v39 = sub_10006F73C(v38);
    v11 = v39;
    if (v39 > 0xCu || ((1 << v39) & 0xFBE) != 0)
    {
      goto LABEL_19;
    }

    if (v39 != 6)
    {
      if (v39 == 12)
      {
        v11 = 11;
      }

      else
      {
        v11 = v39;
      }

      goto LABEL_19;
    }
  }

  if (*(v0 + 408) + 1 != *(v0 + 400))
  {
    v12 = *(v0 + 480);
    v13 = *(v0 + 408) + 1;
    *(v0 + 408) = v13;
    *(v0 + 513) = v11;
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);
    v16 = *(*(v0 + 376) + v13 + 32);
    *(v0 + 514) = v16;
    type metadata accessor for MuseAccessoryDataClient();
    *(v0 + 416) = swift_initStackObject();

    sub_10006F34C(1, v16);
    *(v0 + 432) = v12;
    *(v0 + 440) = 5;
    *(v0 + 424) = v17;
    if (qword_1000B73D8 != -1)
    {
      swift_once();
    }

    v18 = sub_100081018();
    *(v0 + 448) = sub_100016240(v18, qword_1000B7938);
    v19 = sub_100080FF8();
    v20 = sub_1000815C8();
    if (os_log_type_enabled(v19, v20))
    {
      if (*(v0 + 514))
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v19, v20, "Performing 'get' request in environment %ld", v22, 0xCu);
    }

    v24 = *(v0 + 280);
    v23 = *(v0 + 288);
    v25 = *(v0 + 272);

    sub_100080DB8();
    *(v0 + 456) = sub_100080DA8();
    *(v0 + 464) = v26;
    (*(v24 + 8))(v23, v25);

    return _swift_task_switch(sub_100017308, 0, 0);
  }

LABEL_19:
  v41 = *(v0 + 368);
  v40 = *(v0 + 376);
  v42 = *(v0 + 336);

  v43 = *(v0 + 480);
  v44 = *(v0 + 296);
  v45 = *(v0 + 216);
  v46 = *(v0 + 224);
  sub_10001A8DC(*(v0 + 320), v44, &qword_1000B7A28, &qword_100084EB0);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    v47 = *(v0 + 344);
    v48 = *(v0 + 352);
    v49 = *(v0 + 320);
    sub_10001A80C(*(v0 + 296), &qword_1000B7A28, &qword_100084EB0);
    sub_10001A110();
    swift_allocError();
    *v50 = 6;
    swift_willThrow();
    sub_10001A164(v47, v48);
    sub_10001A80C(v49, &qword_1000B7A28, &qword_100084EB0);
LABEL_33:
    v73 = *(v0 + 312);
    v72 = *(v0 + 320);
    v75 = *(v0 + 296);
    v74 = *(v0 + 304);
    v76 = *(v0 + 288);
    v77 = *(v0 + 264);
    v79 = *(v0 + 240);
    v78 = *(v0 + 248);
    v80 = *(v0 + 232);
    v81 = *(v0 + 208);
    v123 = *(v0 + 184);

    v82 = *(v0 + 8);

    return v82();
  }

  sub_10001A944(*(v0 + 296), *(v0 + 232));
  sub_10001A9A8(v11);
  v51 = *(v0 + 344);
  v52 = *(v0 + 352);
  if (v43)
  {
    v53 = *(v0 + 232);
    sub_10001A80C(*(v0 + 320), &qword_1000B7A28, &qword_100084EB0);
    sub_10001A164(v51, v52);
    sub_10001AA64(v53, type metadata accessor for GetResponse);
    goto LABEL_33;
  }

  v54 = *(v0 + 232);
  type metadata accessor for Encryption();
  v55 = static Encryption.decryptData(_:using:)(*(v54 + 40), *(v54 + 48), v51, v52);
  v57 = v56;
  type metadata accessor for LensCalibrationPayload();
  swift_allocObject();
  sub_10000D808(v55, v57);
  LensCalibrationPayload.init(from:)(v55, v57);
  v59 = v58;
  if (((*(*v58 + 120))(v58) & 1) == 0)
  {
    sub_100006A34(v55, v57);

    v66 = *(v0 + 344);
    v67 = *(v0 + 352);
    v68 = *(v0 + 320);
    v69 = *(v0 + 232);
    sub_10001A110();
    swift_allocError();
    *v70 = 6;
    swift_willThrow();
    sub_10001A164(v66, v67);
    sub_10001A80C(v68, &qword_1000B7A28, &qword_100084EB0);
    v71 = v69;
LABEL_32:
    sub_10001AA64(v71, type metadata accessor for GetResponse);
    goto LABEL_33;
  }

  v60 = v59[7];
  if (v60)
  {
    v61 = v59[6];
    v62 = v59[7];

    v63 = Data.init(hexEncodedString:)(v61, v60);
    v65 = v64;
  }

  else
  {
    sub_10001622C(*(v0 + 112), *(v0 + 120));
    v63 = *(v0 + 112);
    v65 = *(v0 + 120);
  }

  if (v65 >> 60 == 15)
  {
    v84 = *(v0 + 344);
    v83 = *(v0 + 352);
    v85 = *(v0 + 320);
    v86 = *(v0 + 232);
    sub_10001A110();
    swift_allocError();
    *v87 = 6;
    swift_willThrow();

    sub_10001A164(v84, v83);
    sub_100006A34(v55, v57);
    sub_10001A80C(v85, &qword_1000B7A28, &qword_100084EB0);
    v71 = v86;
    goto LABEL_32;
  }

  if (v59[3])
  {
    v89 = *(v0 + 200);
    v88 = *(v0 + 208);
    v120 = *(v0 + 192);
    v90 = v59[2];
    sub_10000D808(v63, v65);
    sub_1000812F8();
    v91 = sub_1000812C8();
    v124 = v92;
    v125 = v91;
    (*(v89 + 8))(v88, v120);
  }

  else
  {
    sub_10000D808(v63, v65);
    v124 = 0xF000000000000000;
    v125 = 0;
  }

  if (v59[5])
  {
    v94 = *(v0 + 200);
    v93 = *(v0 + 208);
    v121 = *(v0 + 192);
    v95 = v59[4];
    sub_1000812F8();
    v96 = sub_1000812C8();
    v108 = v97;
    v109 = v96;
    (*(v94 + 8))(v93, v121);
  }

  else
  {
    v108 = 0xF000000000000000;
    v109 = 0;
  }

  v106 = *(v0 + 344);
  v107 = *(v0 + 352);
  v112 = *(v0 + 312);
  v113 = *(v0 + 304);
  v114 = *(v0 + 296);
  v115 = *(v0 + 288);
  v116 = *(v0 + 264);
  v117 = *(v0 + 248);
  v118 = *(v0 + 240);
  v110 = *(v0 + 320);
  v111 = *(v0 + 232);
  v119 = *(v0 + 208);
  v122 = *(v0 + 184);
  v105 = type metadata accessor for CRXCFactoryCalibrationData();
  v98 = objc_allocWithZone(v105);
  v99 = &v98[OBJC_IVAR___CRXCFactoryCalibrationData_acc];
  *v99 = v63;
  v99[1] = v65;
  v100 = &v98[OBJC_IVAR___CRXCFactoryCalibrationData_left];
  *v100 = v125;
  v100[1] = v124;
  v101 = &v98[OBJC_IVAR___CRXCFactoryCalibrationData_right];
  *v101 = v109;
  v101[1] = v108;
  sub_10001622C(v63, v65);
  sub_10001622C(v125, v124);
  sub_10001622C(v109, v108);
  *(v0 + 48) = v98;
  *(v0 + 56) = v105;
  v102 = objc_msgSendSuper2((v0 + 48), "init");

  sub_10001A164(v106, v107);
  sub_10001A164(v109, v108);
  sub_10001A164(v125, v124);
  sub_10001A164(v63, v65);
  sub_10001A164(v63, v65);
  sub_100006A34(v55, v57);
  sub_10001A80C(v110, &qword_1000B7A28, &qword_100084EB0);
  sub_10001AA64(v111, type metadata accessor for GetResponse);

  v103 = *(v0 + 8);

  return v103(v102);
}

uint64_t sub_1000180F0()
{
  v0[8] = v0[60];
  swift_errorRetain();
  sub_100006940(&qword_1000B7910, &unk_100084B20);
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    v20 = v0[53];
    v22 = v0[46];
    v21 = v0[47];
    v24 = v0[43];
    v23 = v0[44];
    v25 = v0[42];
    sub_10001A80C(v0[40], &qword_1000B7A28, &qword_100084EB0);

    sub_10001A164(v24, v23);

    v26 = v0[8];

    v65 = v0[60];
LABEL_18:
    v54 = v0[39];
    v53 = v0[40];
    v56 = v0[37];
    v55 = v0[38];
    v57 = v0[36];
    v58 = v0[33];
    v60 = v0[30];
    v59 = v0[31];
    v61 = v0[29];
    v62 = v0[26];
    v64 = v0[23];

    v63 = v0[1];

    return v63();
  }

  v1 = v0[60];
  v2 = v0[56];

  v3 = v0[9];
  v0[61] = v3;
  v4 = v3;
  v5 = sub_100080FF8();
  v6 = sub_1000815C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v4;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "error: %@", v7, 0xCu);
    sub_10001A80C(v8, &qword_1000B83B0, &qword_100084EC0);
  }

  v0[10] = v4;
  sub_10001AB28(&qword_1000B7518, 255, type metadata accessor for CKError);
  sub_100080BF8();
  if (v0[11] == 3)
  {
    v11 = v0[53];
    v13 = v0[46];
    v12 = v0[47];
    v15 = v0[43];
    v14 = v0[44];
    v16 = v0[42];
    v17 = v0[40];

    sub_10001A110();
    swift_allocError();
    v19 = 8;
LABEL_17:
    *v18 = v19;
    swift_willThrow();
    sub_10001A164(v15, v14);

    sub_10001A80C(v17, &qword_1000B7A28, &qword_100084EB0);
    v52 = v0[8];

    goto LABEL_18;
  }

  v0[12] = v4;
  sub_100080BF8();
  v27 = vdupq_n_s64(v0[13]);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_1000AA0C0, v27), vceqq_s64(unk_1000AA0D0, v27)))) & 1) == 0)
  {
    v48 = v0[53];
    v50 = v0[46];
    v49 = v0[47];
    v15 = v0[43];
    v14 = v0[44];
    v51 = v0[42];
    v17 = v0[40];

    sub_10001A110();
    swift_allocError();
    v19 = 5;
    goto LABEL_17;
  }

  v29 = v0[55];
  v28 = v0[56];
  v30 = COERCE_DOUBLE(sub_1000811F8());
  if (v31)
  {
    v32 = 0.3;
  }

  else
  {
    v32 = v30;
  }

  v33 = v4;
  v34 = sub_100080FF8();
  v35 = sub_1000815C8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = v29 - 1;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412802;
    v39 = v33;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v40;
    *v38 = v40;
    *(v37 + 12) = 2048;
    *(v37 + 14) = v32;
    *(v37 + 22) = 2048;
    *(v37 + 24) = v36;
    _os_log_impl(&_mh_execute_header, v34, v35, "Recoverable error %@; retrying in %f sec; %ld attempts remaining", v37, 0x20u);
    sub_10001A80C(v38, &qword_1000B83B0, &qword_100084EC0);
  }

  v41 = v0[23];

  v42 = sub_1000819D8();
  v44 = v43;
  sub_100081918();
  v45 = swift_task_alloc();
  v0[62] = v45;
  *v45 = v0;
  v45[1] = sub_1000186C8;
  v46 = v0[23];

  return sub_10001A220(v42, v44, 0, 0, 1);
}

uint64_t sub_1000186C8()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v15 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v5 = v2[46];
    v4 = v2[47];
    v6 = v2[42];
    v8 = v2[22];
    v7 = v2[23];
    v10 = v2 + 20;
    v9 = v2[20];
    (*(v8 + 8))(v7, v10[1]);

    v11 = sub_100018B3C;
    v12 = v9;
  }

  else
  {
    v13 = v2[20];
    (*(v2[22] + 8))(v2[23], v2[21]);
    v11 = sub_10001883C;
    v12 = v13;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_10001883C()
{
  v1 = *(v0 + 488);
  if (*(v0 + 440) == 1)
  {
    v2 = *(v0 + 424);
    v4 = *(v0 + 368);
    v3 = *(v0 + 376);
    v6 = *(v0 + 344);
    v5 = *(v0 + 352);
    v7 = *(v0 + 336);
    v8 = *(v0 + 320);

    sub_10001A110();
    swift_allocError();
    *v9 = 5;
    swift_willThrow();
    sub_10001A164(v6, v5);

    sub_10001A80C(v8, &qword_1000B7A28, &qword_100084EB0);
    v10 = *(v0 + 64);

    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    v14 = *(v0 + 296);
    v13 = *(v0 + 304);
    v15 = *(v0 + 288);
    v16 = *(v0 + 264);
    v18 = *(v0 + 240);
    v17 = *(v0 + 248);
    v19 = *(v0 + 232);
    v20 = *(v0 + 208);
    v34 = *(v0 + 184);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {

    v23 = *(v0 + 64);

    v24 = *(v0 + 440) - 1;
    *(v0 + 432) = *(v0 + 504);
    *(v0 + 440) = v24;
    if (qword_1000B73D8 != -1)
    {
      swift_once();
    }

    v25 = sub_100081018();
    *(v0 + 448) = sub_100016240(v25, qword_1000B7938);
    v26 = sub_100080FF8();
    v27 = sub_1000815C8();
    if (os_log_type_enabled(v26, v27))
    {
      if (*(v0 + 514))
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v26, v27, "Performing 'get' request in environment %ld", v29, 0xCu);
    }

    v31 = *(v0 + 280);
    v30 = *(v0 + 288);
    v32 = *(v0 + 272);

    sub_100080DB8();
    *(v0 + 456) = sub_100080DA8();
    *(v0 + 464) = v33;
    (*(v31 + 8))(v30, v32);

    return _swift_task_switch(sub_100017308, 0, 0);
  }
}

uint64_t sub_100018B3C()
{
  v1 = v0[61];
  v2 = v0[53];
  v3 = v0[40];
  sub_10001A164(v0[43], v0[44]);

  sub_10001A80C(v3, &qword_1000B7A28, &qword_100084EB0);
  v4 = v0[8];

  v6 = v0[39];
  v5 = v0[40];
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  v10 = v0[33];
  v12 = v0[30];
  v11 = v0[31];
  v13 = v0[29];
  v14 = v0[26];
  v17 = v0[23];
  v18 = v0[63];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100018C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 96) = a9;
  *(v9 + 80) = a8;
  *(v9 + 88) = v14;
  *(v9 + 64) = a6;
  *(v9 + 72) = a7;
  *(v9 + 48) = a4;
  *(v9 + 56) = a5;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 24) = a1;
  v11 = *(*(sub_100006940(&qword_1000B7A10, &qword_100084E70) - 8) + 64) + 15;
  *(v9 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100018D30, a3, 0);
}

uint64_t sub_100018D30()
{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v20 = v0[4];
  v21 = v0[5];
  v9 = sub_100081538();
  v19 = *(*(v9 - 8) + 56);
  v19(v1, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v21;
  v10[5] = v8;
  v10[6] = v7;
  v10[7] = v6;
  v10[8] = v5;
  v10[9] = v3;
  v10[10] = v4;

  sub_10001622C(v8, v7);
  sub_10001622C(v6, v5);

  sub_100019464(v1, &unk_100084E80, v10);
  sub_10001A80C(v1, &qword_1000B7A10, &qword_100084E70);
  v19(v1, 1, 1, v9);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  sub_100019464(v1, &unk_100084E90, v11);
  sub_10001A80C(v1, &qword_1000B7A10, &qword_100084E70);
  v13 = sub_10001AB28(&qword_1000B7A08, v12, type metadata accessor for CalibrationDataDownloaderImpl);
  v14 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v15 = swift_task_alloc();
  v0[14] = v15;
  v16 = sub_100006940(&qword_1000B7A18, &unk_100084E98);
  *v15 = v0;
  v15[1] = sub_100018FB4;
  v17 = v0[4];

  return ThrowingTaskGroup.next(isolation:)(v0 + 2, v21, v13, v16);
}

uint64_t sub_100018FB4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1000191AC;
  }

  else
  {
    v6 = sub_1000190E0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000190E0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 24);
    v4 = **(v0 + 32);
    type metadata accessor for CRXCFactoryCalibrationData();
    sub_100006940(&qword_1000B7910, &unk_100084B20);
    sub_100081578();
    *v3 = v1;

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000191AC()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_100019210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = sub_1000192F4;

  return sub_100016628(a5, a6, a7, a8, 2, v16, v17);
}

uint64_t sub_1000192F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_100019440, 0, 0);
  }
}

uint64_t sub_100019464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = (*(*(sub_100006940(&qword_1000B7A10, &qword_100084E70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v19 - v8;
  sub_10001A8DC(a1, v19 - v8, &qword_1000B7A10, &qword_100084E70);
  v10 = sub_100081538();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10001A80C(v9, &qword_1000B7A10, &qword_100084E70);
    if (*(a3 + 16))
    {
LABEL_3:
      v12 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1000814D8();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_100081528();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  type metadata accessor for CRXCFactoryCalibrationData();
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_100019674(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  v6[1] = sub_10001975C;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_10001975C()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10001988C, 0, 0);
  }
}

uint64_t sub_10001988C()
{
  sub_10001A110();
  swift_allocError();
  *v1 = 11;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001991C()
{
  sub_100006A34(*(v0 + 112), *(v0 + 120));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100019984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = a5;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  v10 = *v8;
  *(v9 + 80) = *v8;
  return _swift_task_switch(sub_1000199B8, v10, 0);
}

uint64_t sub_1000199B8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = type metadata accessor for CRXCFactoryCalibrationData();
  v7 = sub_10001AB28(&qword_1000B7A08, v6, type metadata accessor for CalibrationDataDownloaderImpl);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v9 = *(v0 + 40);
  v10 = *(v0 + 24);
  *(v8 + 16) = v1;
  *(v8 + 24) = v10;
  *(v8 + 40) = v9;
  *(v8 + 56) = v4;
  *(v8 + 64) = v3;
  *(v8 + 72) = v2;
  v11 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v12 = swift_task_alloc();
  *(v0 + 96) = v12;
  *v12 = v0;
  v12[1] = sub_100019B18;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v5, v5, v1, v7, &unk_100084E68, v8, v5);
}

uint64_t sub_100019B18()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_100019C58;
  }

  else
  {
    v7 = *(v2 + 80);
    v6 = *(v2 + 88);

    v5 = sub_100019C3C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100019C58()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_100019CBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(v2 + 4);
  v8 = *(v2 + 5);
  v9 = *(v2 + 6);
  v10 = *(v2 + 7);
  v11 = *(v2 + 8);
  v12 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10001AB70;

  return sub_100018C74(a1, a2, v5, v6, v7, v8, v9, v10, v12);
}

uint64_t sub_100019DBC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];
  if (v3 >> 60 != 15)
  {
    sub_100006A34(v0[5], v3);
  }

  v4 = v0[8];
  if (v4 >> 60 != 15)
  {
    sub_100006A34(v0[7], v4);
  }

  v5 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100019E34(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10001AB70;

  return sub_100019210(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_100019F28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100019F60()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001A01C;

  return sub_100019654(v4);
}

uint64_t sub_10001A01C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_10001A110()
{
  result = qword_1000B7A20;
  if (!qword_1000B7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7A20);
  }

  return result;
}

uint64_t sub_10001A164(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006A34(a1, a2);
  }

  return a1;
}

uint64_t sub_10001A19C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10001A1E8(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10001A220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_100081718();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10001A320, 0, 0);
}

uint64_t sub_10001A320()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_100081728();
  v7 = sub_10001AB28(&qword_1000B7A38, 255, &type metadata accessor for ContinuousClock);
  sub_1000818F8();
  sub_10001AB28(&qword_1000B7A40, 255, &type metadata accessor for ContinuousClock.Instant);
  sub_100081738();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10001A4B8;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10001A4B8()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_10001A674, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_10001A674()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

_BYTE **sub_10001A708(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_10001A718(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10001A78C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_10001A7BC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10001A7DC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10001A80C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006940(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10001A86C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006940(&qword_1000B7A28, &qword_100084EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A8DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006940(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001A944(uint64_t a1, uint64_t a2)
{
  Response = type metadata accessor for GetResponse(0);
  (*(*(Response - 8) + 32))(a2, a1, Response);
  return a2;
}

uint64_t sub_10001A9A8(uint64_t result)
{
  v1 = 5;
  if (result > 5u)
  {
    if (result <= 7u)
    {
      if (result == 6)
      {
        v1 = 3;
      }

      else
      {
        v1 = 4;
      }

      goto LABEL_14;
    }

    if (result - 8 >= 3)
    {
LABEL_14:
      sub_10001A110();
      swift_allocError();
      *v2 = v1;
      return swift_willThrow();
    }

LABEL_9:
    v1 = 1;
    goto LABEL_14;
  }

  if (result > 2u)
  {
    if (result - 4 >= 2)
    {
      v1 = 2;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (result - 1 < 2)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10001AA64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001AAC4(uint64_t a1, uint64_t a2)
{
  Response = type metadata accessor for GetResponse(0);
  (*(*(Response - 8) + 16))(a2, a1, Response);
  return a2;
}

uint64_t sub_10001AB28(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10001AB74()
{
  v0 = sub_100081018();
  sub_100016278(v0, qword_1000B7A58);
  sub_100016240(v0, qword_1000B7A58);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1000812B8();

    type metadata accessor for CorePrescriptionService();
    sub_100006940(&qword_1000B7B40, &qword_100084F60);
    sub_100081338();
    sub_100081008();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001AC68()
{
  v1[8] = v0;
  v1[9] = *v0;
  v2 = sub_100081308();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = *(*(sub_100006940(&unk_1000B88B0, &qword_100086A40) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_10001ADD8, 0, 0);
}