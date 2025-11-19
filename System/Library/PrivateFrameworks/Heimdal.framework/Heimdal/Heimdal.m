const void *sub_252245EBC(void *a1, const char *a2, uint64_t a3)
{
  if (!xpc_dictionary_get_value(a1, a2))
  {
    return 0;
  }

  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = v4;
  if (v4 && CFGetTypeID(v4) != a3)
  {
    CFRelease(v5);
    return 0;
  }

  return v5;
}

void sub_252245F10(void *a1, const char *a2, CFUUIDRef uuid)
{
  v7 = *MEMORY[0x277D85DE8];
  uuida = CFUUIDGetUUIDBytes(uuid);
  xpc_dictionary_set_uuid(a1, a2, &uuida.byte0);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_252245F84()
{
  if (qword_280C4F260 != -1)
  {
    sub_2522A7B88();
  }
}

CFMutableDictionaryRef sub_252245FB0()
{
  qword_280C4F280 = _CFRuntimeRegisterClass();
  qword_280C4F278 = dispatch_queue_create("HeimCred", 0);
  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  qword_280C4F288 = result;
  return result;
}

void sub_252246018(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

CFStringRef sub_252246064(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return CFStringCreateWithFormat(0, 0, @"HeimCred<%@>", *(a1 + 16));
  }

  Value = CFDictionaryGetValue(v2, @"kHEIMAttrClientName");
  v4 = CFDictionaryGetValue(*(a1 + 24), @"kHEIMAttrServerName");
  v5 = CFDictionaryGetValue(*(a1 + 24), @"kHEIMAttrParentCredential");
  v6 = CFDictionaryGetValue(*(a1 + 24), @"kHEIMAttrLeadCredential");
  v7 = CFDictionaryGetValue(*(a1 + 24), @"kHEIMAttrAltDSID");
  v8 = CFDictionaryGetValue(*(a1 + 24), @"kHEIMAttrUserID");
  v9 = CFDictionaryGetValue(*(a1 + 24), @"kHEIMAttrASID");
  v10 = "no";
  if (v6 && CFBooleanGetValue(v6))
  {
    v10 = "yes";
  }

  v11 = CFDictionaryGetValue(*(a1 + 24), @"kHEIMAttrBundleIdentifierACL");
  v12 = &stru_286474D00;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_286474D00;
  }

  if (v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = &stru_286474D00;
  }

  if (v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = &stru_286474D00;
  }

  if (v9)
  {
    v12 = v9;
  }

  return CFStringCreateWithFormat(0, 0, @"HeimCred<%@ group: %@ parent: %@ client: %@ server: %@ lead: %s ACL: %@, altDSID: %@, Uid: %@, asid: %@>", *(a1 + 16), v6, v5, Value, v4, v10, v13, v14, v15, v12);
}

uint64_t sub_2522461D8(const void *a1)
{
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    CFRetain(a1);
    *(Instance + 16) = a1;
  }

  return Instance;
}

void HeimCredSetImpersonateBundle(const __CFString *a1)
{
  if (qword_280C4F270)
  {
    free(qword_280C4F270);
    qword_280C4F270 = 0;
  }

  if (a1)
  {
    qword_280C4F270 = sub_25224626C(a1);
  }
}

char *sub_25224626C(const __CFString *a1)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {

    return strdup(CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x4233CAC7uLL);
    if (v6 && !CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      free(v6);
      return 0;
    }

    return v6;
  }
}

uint64_t HeimCredCreate(uint64_t a1, CFErrorRef *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (qword_280C4F268 != -1)
  {
    sub_2522A7B9C();
  }

  v3 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    sub_2522A7BB0(0, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = v5;
  xpc_dictionary_set_string(v5, "command", "create");
  xpc_dictionary_set_value(v13, "attributes", v4);
  xpc_release(v4);
  if (qword_280C4F270)
  {
    xpc_dictionary_set_string(v13, "impersonate", qword_280C4F270);
  }

  v14 = xpc_connection_send_message_with_reply_sync(qword_280C4F290, v13);
  xpc_release(v13);
  if (!v14)
  {
    v21 = @"Server didn't return any data";
    v22 = a2;
    v23 = 564608;
LABEL_16:
    sub_252246568(v22, v23, v21, v15, v16, v17, v18, v19, v30);
    return 0;
  }

  if (MEMORY[0x25309E810](v14) == MEMORY[0x277D86480])
  {
    v30 = v14;
    v21 = @"Server returned an error: %@";
    v23 = 564609;
    v22 = a2;
    goto LABEL_16;
  }

  if (MEMORY[0x25309E810](v14) == MEMORY[0x277D86468])
  {
    TypeID = CFDictionaryGetTypeID();
    v26 = sub_252245EBC(v14, "attributes", TypeID);
    if (v26)
    {
      v27 = v26;
      Value = CFDictionaryGetValue(v26, @"kHEIMAttrUUID");
      if (Value)
      {
        v29 = sub_2522461D8(Value);
        v20 = v29;
        if (v29)
        {
          *(v29 + 24) = v27;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = sub_252248030;
          block[3] = &unk_2796FF3B8;
          block[4] = v29;
          dispatch_sync(qword_280C4F278, block);
        }

        else
        {
          CFRelease(v27);
        }

        goto LABEL_13;
      }

      CFRelease(v27);
    }
  }

  v20 = 0;
LABEL_13:
  xpc_release(v14);
  return v20;
}

void sub_252246568(CFErrorRef *a1, unsigned int a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  userInfoKeys[2] = *MEMORY[0x277D85DE8];
  userInfoKeys[0] = *MEMORY[0x277CBEE30];
  userInfoKeys[1] = @"CommonErrorCode";
  userInfoValues[1] = *MEMORY[0x277CBED28];
  if (a1)
  {
    userInfoValues[0] = CFStringCreateWithFormatAndArguments(0, 0, a3, &a9);
    *a1 = CFErrorCreateWithUserInfoKeysAndValues(0, @"org.h5l.HeimdalCredential", a2, userInfoKeys, userInfoValues, 2);
    if (userInfoValues[0])
    {
      CFRelease(userInfoValues[0]);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t HeimCredCopyFromUUID(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (qword_280C4F268 != -1)
  {
    sub_2522A7BC8();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = sub_252246718;
  v4[3] = &unk_2796FF258;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(qword_280C4F278, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_252246718(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(qword_280C4F288, *(a1 + 40));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {

    CFRetain(v2);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = sub_2522461D8(*(a1 + 40));
    v3 = qword_280C4F288;
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 32) + 8) + 24);

    CFDictionarySetValue(v3, v4, v5);
  }
}

uint64_t HeimCredSetAttribute(uint64_t a1, void *a2, void *a3, CFErrorRef *a4)
{
  keys[1] = *MEMORY[0x277D85DE8];
  values = a3;
  keys[0] = a2;
  v6 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v6)
  {
    v7 = v6;
    v8 = HeimCredSetAttributes(a1, v6, a4);
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t HeimCredSetAttributes(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (qword_280C4F268 == -1)
  {
    if (!a1)
    {
      return 0;
    }
  }

  else
  {
    sub_2522A7B9C();
    if (!a1)
    {
      return 0;
    }
  }

  result = _CFXPCCreateXPCObjectFromCFObject();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "command", "setattributes");
  sub_252245F10(v7, "uuid", *(a1 + 16));
  xpc_dictionary_set_value(v7, "attributes", v6);
  xpc_release(v6);
  if (qword_280C4F270)
  {
    xpc_dictionary_set_string(v7, "impersonate", qword_280C4F270);
  }

  v8 = xpc_connection_send_message_with_reply_sync(qword_280C4F290, v7);
  xpc_release(v7);
  if (v8)
  {
    if (MEMORY[0x25309E810](v8) != MEMORY[0x277D86480])
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 0x40000000;
      v14[2] = sub_252246A18;
      v14[3] = &unk_2796FF278;
      v14[4] = a1;
      v14[5] = v8;
      dispatch_sync(qword_280C4F278, v14);
      xpc_release(v8);
      return 1;
    }
  }

  else
  {
    sub_252246568(a3, 0x89D80u, @"Server didn't return any data", v9, v10, v11, v12, v13, v14[0]);
  }

  return 0;
}

const void *sub_252246A18(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 24) = 0;
  }

  v3 = *(a1 + 40);
  TypeID = CFDictionaryGetTypeID();
  result = sub_252245EBC(v3, "attributes", TypeID);
  *(*(a1 + 32) + 24) = result;
  return result;
}

const void *HeimCredCopyAttribute(uint64_t a1, const void *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = sub_252246BA8;
  v12[3] = &unk_2796FF2A0;
  v12[4] = &v13;
  v12[5] = a1;
  dispatch_sync(qword_280C4F278, v12);
  v5 = v14[3];
  if (v5)
  {
    v6 = CFDictionaryContainsKey(v5, a2);
    v7 = v14[3];
    if (v6)
    {
      goto LABEL_6;
    }

    if (v7)
    {
      CFRelease(v7);
      v14[3] = 0;
    }
  }

  v7 = HeimCredCopyAttributes(a1, v4, 0);
  v14[3] = v7;
  if (!v7)
  {
    v9 = 0;
    goto LABEL_11;
  }

LABEL_6:
  Value = CFDictionaryGetValue(v7, a2);
  v9 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v10 = v14[3];
  if (v10)
  {
    CFRelease(v10);
    v14[3] = 0;
  }

LABEL_11:
  _Block_object_dispose(&v13, 8);
  return v9;
}

CFTypeRef sub_252246BA8(uint64_t a1)
{
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CFRetain(result);
    v3 = *(*(a1 + 40) + 24);
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return result;
}

uint64_t HeimCredCopyAttributes(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (qword_280C4F268 != -1)
  {
    sub_2522A7BC8();
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "command", "fetch");
  sub_252245F10(v5, "uuid", *(a1 + 16));
  if (qword_280C4F270)
  {
    xpc_dictionary_set_string(v5, "impersonate", qword_280C4F270);
  }

  v6 = xpc_connection_send_message_with_reply_sync(qword_280C4F290, v5);
  xpc_release(v5);
  if (!v6)
  {
    v13 = @"Server didn't return any data";
    v14 = a3;
    v15 = 564608;
LABEL_12:
    sub_252246568(v14, v15, v13, v7, v8, v9, v10, v11, v17);
    v12 = 0;
    goto LABEL_13;
  }

  if (MEMORY[0x25309E810](v6) == MEMORY[0x277D86480])
  {
    v17 = v6;
    v13 = @"Server returned an error: %@";
    v15 = 564609;
    v14 = a3;
    goto LABEL_12;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_252246DB8;
  block[3] = &unk_2796FF2C8;
  block[4] = &v19;
  block[5] = a1;
  block[6] = v6;
  dispatch_sync(qword_280C4F278, block);
  xpc_release(v6);
  v12 = v20[3];
LABEL_13:
  _Block_object_dispose(&v19, 8);
  return v12;
}

CFTypeRef sub_252246DB8(void *a1)
{
  v2 = *(a1[5] + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1[5] + 24) = 0;
  }

  v3 = a1[6];
  TypeID = CFDictionaryGetTypeID();
  v5 = sub_252245EBC(v3, "attributes", TypeID);
  *(a1[5] + 24) = v5;
  *(*(a1[4] + 8) + 24) = v5;
  result = *(*(a1[4] + 8) + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFMutableArrayRef HeimCredCopyQuery()
{
  if (qword_280C4F268 != -1)
  {
    sub_2522A7B9C();
  }

  v0 = sub_252246F5C("query");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    value = xpc_dictionary_get_value(v1, "items");
    if (value)
    {
      v4 = value;
      if (MEMORY[0x25309E810]() == MEMORY[0x277D86440])
      {
        applier[0] = MEMORY[0x277D85DD0];
        applier[1] = 0x40000000;
        applier[2] = sub_252247014;
        applier[3] = &unk_2796FF2E8;
        applier[4] = Mutable;
        xpc_array_apply(v4, applier);
      }
    }
  }

  xpc_release(v1);
  return Mutable;
}

uint64_t sub_252246F5C(const char *a1)
{
  result = _CFXPCCreateXPCObjectFromCFObject();
  if (result)
  {
    v3 = result;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v4, "command", a1);
    xpc_dictionary_set_value(v4, "query", v3);
    xpc_release(v3);
    if (qword_280C4F270)
    {
      xpc_dictionary_set_string(v4, "impersonate", qword_280C4F270);
    }

    v5 = xpc_connection_send_message_with_reply_sync(qword_280C4F290, v4);
    xpc_release(v4);
    return v5;
  }

  return result;
}

uint64_t sub_252247014(uint64_t a1)
{
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  if (v2)
  {
    v3 = v2;
    v4 = sub_2522461D8(v2);
    CFRelease(v3);
    if (v4)
    {
      CFArrayAppendValue(*(a1 + 32), v4);
      CFRelease(v4);
    }
  }

  return 1;
}

BOOL HeimCredDeleteQuery(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (qword_280C4F268 != -1)
  {
    sub_2522A7B9C();
  }

  v2 = sub_252246F5C("delete");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = xpc_dictionary_get_value(v2, "error") == 0;
  xpc_release(v3);
  return v4;
}

void HeimCredDeleteByUUID(void *a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  if (qword_280C4F268 != -1)
  {
    sub_2522A7B9C();
  }

  values = a1;
  keys[0] = @"kHEIMAttrUUID";
  v2 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = sub_252246F5C("delete");
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    xpc_release(v3);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = sub_25224722C;
  v5[3] = &unk_2796FF308;
  v5[4] = a1;
  dispatch_sync(qword_280C4F278, v5);
  v4 = *MEMORY[0x277D85DE8];
}

void HeimCredRetainTransient(uint64_t a1)
{
  if (qword_280C4F268 != -1)
  {
    sub_2522A7B9C();
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "command", "retain-transient");
  sub_252245F10(v2, "uuid", *(a1 + 16));
  if (qword_280C4F270)
  {
    xpc_dictionary_set_string(v2, "impersonate", qword_280C4F270);
  }

  v3 = xpc_connection_send_message_with_reply_sync(qword_280C4F290, v2);
  xpc_release(v2);

  xpc_release(v3);
}

void HeimCredReleaseTransient(uint64_t a1)
{
  if (qword_280C4F268 != -1)
  {
    sub_2522A7B9C();
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "command", "release-transient");
  sub_252245F10(v2, "uuid", *(a1 + 16));
  if (qword_280C4F270)
  {
    xpc_dictionary_set_string(v2, "impersonate", qword_280C4F270);
  }

  v3 = xpc_connection_send_message_with_reply_sync(qword_280C4F290, v2);
  xpc_release(v2);

  xpc_release(v3);
}

BOOL HeimCredMove(const __CFUUID *a1, const __CFUUID *a2)
{
  if (qword_280C4F268 != -1)
  {
    sub_2522A7B9C();
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "move");
  sub_252245F10(v4, "from", a1);
  sub_252245F10(v4, "to", a2);
  if (qword_280C4F270)
  {
    xpc_dictionary_set_string(v4, "impersonate", qword_280C4F270);
  }

  v5 = xpc_connection_send_message_with_reply_sync(qword_280C4F290, v4);
  v6 = xpc_dictionary_get_value(v5, "error") == 0;
  xpc_release(v4);
  xpc_release(v5);
  return v6;
}

uint64_t HeimCredCopyStatus(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "command", "status");
  if (a1)
  {
    v3 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v3)
    {
      xpc_release(v2);
      return 0;
    }

    v4 = v3;
    xpc_dictionary_set_value(v2, "mech", v3);
    xpc_release(v4);
  }

  if (qword_280C4F268 != -1)
  {
    sub_2522A7B9C();
  }

  if (qword_280C4F270)
  {
    xpc_dictionary_set_string(v2, "impersonate", qword_280C4F270);
  }

  v5 = xpc_connection_send_message_with_reply_sync(qword_280C4F290, v2);
  xpc_release(v2);
  if (v5)
  {
    v6 = _CFXPCCreateCFObjectFromXPCObject();
    xpc_release(v5);
    return v6;
  }

  return 0;
}

const void *HeimCredCopyDefaultCredential(const __CFString *a1, CFErrorRef *a2)
{
  if (qword_280C4F268 == -1)
  {
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_2522A7B9C();
  if (a2)
  {
LABEL_3:
    *a2 = 0;
  }

LABEL_4:
  v4 = sub_25224626C(a1);
  if (v4)
  {
    v5 = v4;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, "command", "default");
    xpc_dictionary_set_string(v6, "mech", v5);
    free(v5);
    if (qword_280C4F270)
    {
      xpc_dictionary_set_string(v6, "impersonate", qword_280C4F270);
    }

    v7 = xpc_connection_send_message_with_reply_sync(qword_280C4F290, v6);
    xpc_release(v6);
    if (v7)
    {
      if (MEMORY[0x25309E810](v7) != MEMORY[0x277D86480])
      {
        v13 = CFUUIDGetTypeID();
        v14 = sub_252245EBC(v7, "default", v13);
        xpc_release(v7);
        return v14;
      }

      v19 = v7;
      v16 = @"Server returned an error: %@";
      v18 = 564609;
      v17 = a2;
    }

    else
    {
      v16 = @"Server didn't return any data";
      v17 = a2;
      v18 = 564608;
    }

    sub_252246568(v17, v18, v16, v8, v9, v10, v11, v12, v19);
  }

  return 0;
}

uint64_t HeimCredDoAuth(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  if (qword_280C4F268 == -1)
  {
    if (!a1)
    {
LABEL_14:
      v14 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    sub_2522A7BC8();
    if (!a1)
    {
      goto LABEL_14;
    }
  }

  if (a3)
  {
    *a3 = 0;
  }

  v5 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "command", "doauth");
  sub_252245F10(v7, "uuid", *(a1 + 16));
  xpc_dictionary_set_value(v7, "attributes", v6);
  xpc_release(v6);
  if (qword_280C4F270)
  {
    xpc_dictionary_set_string(v7, "impersonate", qword_280C4F270);
  }

  v8 = xpc_connection_send_message_with_reply_sync(qword_280C4F290, v7);
  xpc_release(v7);
  if (!v8)
  {
    v15 = @"Server didn't return any data";
    v16 = a3;
    v17 = 564608;
LABEL_13:
    sub_252246568(v16, v17, v15, v9, v10, v11, v12, v13, v19);
    goto LABEL_14;
  }

  if (MEMORY[0x25309E810](v8) == MEMORY[0x277D86480])
  {
    v19 = v8;
    v15 = @"Server returned an error: %@";
    v17 = 564609;
    v16 = a3;
    goto LABEL_13;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_252247918;
  block[3] = &unk_2796FF330;
  block[4] = &v21;
  block[5] = v8;
  dispatch_sync(qword_280C4F278, block);
  xpc_release(v8);
  v14 = v22[3];
LABEL_15:
  _Block_object_dispose(&v21, 8);
  return v14;
}

const void *sub_252247918(uint64_t a1)
{
  v2 = *(a1 + 40);
  TypeID = CFDictionaryGetTypeID();
  result = sub_252245EBC(v2, "attributes", TypeID);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

BOOL HeimCredDeleteAll(void *a1, void *a2)
{
  keys[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  if (qword_280C4F268 != -1)
  {
    sub_2522A7B9C();
  }

  keys[0] = @"kHEIMAttrAltDSID";
  keys[1] = @"kHEIMObjectType";
  values[0] = a1;
  values[1] = @"kHEIMObjectAny";
  CFDictionaryCreate(0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = sub_252246F5C("delete-all");
  if (v3)
  {
    v4 = v3;
    v5 = xpc_dictionary_get_value(v3, "error") == 0;
    xpc_release(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL HeimCredAddNTLMChallenge(UInt8 *bytes)
{
  if (qword_280C4F268 != -1)
  {
    sub_2522A7B9C();
  }

  v2 = CFDataCreate(0, bytes, 8);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "add-challenge");
  BytePtr = CFDataGetBytePtr(v2);
  Length = CFDataGetLength(v2);
  xpc_dictionary_set_data(v3, "challenge", BytePtr, Length);
  if (v2)
  {
    CFRelease(v2);
  }

  v6 = xpc_connection_send_message_with_reply_sync(qword_280C4F290, v3);
  xpc_release(v3);
  if (!v6)
  {
    return 0;
  }

  v7 = xpc_dictionary_get_value(v6, "error") == 0;
  xpc_release(v6);
  return v7;
}

BOOL HeimCredCheckNTLMChallenge(UInt8 *bytes)
{
  if (qword_280C4F268 != -1)
  {
    sub_2522A7B9C();
  }

  v2 = CFDataCreate(0, bytes, 8);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "check-challenge");
  BytePtr = CFDataGetBytePtr(v2);
  Length = CFDataGetLength(v2);
  xpc_dictionary_set_data(v3, "challenge", BytePtr, Length);
  v6 = xpc_connection_send_message_with_reply_sync(qword_280C4F290, v3);
  xpc_release(v3);
  if (!v6)
  {
    return 1;
  }

  xpc_dictionary_get_value(v6, "error");
  value = xpc_dictionary_get_value(v6, "challenge-result");
  if (value)
  {
    v8 = xpc_BOOL_get_value(value);
  }

  else
  {
    v8 = 1;
  }

  xpc_release(v6);
  return v8;
}

uint64_t HeimCredDoSCRAM(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  if (qword_280C4F268 == -1)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_2522A7BC8();
  if (a3)
  {
LABEL_3:
    *a3 = 0;
  }

LABEL_4:
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v5)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v6 = v5;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "command", "doscram");
  sub_252245F10(v7, "uuid", *(a1 + 16));
  xpc_dictionary_set_value(v7, "attributes", v6);
  xpc_release(v6);
  if (qword_280C4F270)
  {
    xpc_dictionary_set_string(v7, "impersonate", qword_280C4F270);
  }

  v8 = xpc_connection_send_message_with_reply_sync(qword_280C4F290, v7);
  xpc_release(v7);
  if (!v8)
  {
    v15 = @"Server didn't return any data";
    v16 = a3;
    v17 = 564608;
LABEL_12:
    sub_252246568(v16, v17, v15, v9, v10, v11, v12, v13, v19);
    goto LABEL_13;
  }

  if (MEMORY[0x25309E810](v8) == MEMORY[0x277D86480])
  {
    v19 = v8;
    v15 = @"Server returned an error: %@";
    v17 = 564609;
    v16 = a3;
    goto LABEL_12;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_252247E68;
  block[3] = &unk_2796FF358;
  block[4] = &v21;
  block[5] = v8;
  dispatch_sync(qword_280C4F278, block);
  xpc_release(v8);
  v14 = v22[3];
LABEL_14:
  _Block_object_dispose(&v21, 8);
  return v14;
}

CFTypeRef sub_252247E68(uint64_t a1)
{
  v2 = *(a1 + 40);
  TypeID = CFDictionaryGetTypeID();
  *(*(*(a1 + 32) + 8) + 24) = sub_252245EBC(v2, "attributes", TypeID);
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void sub_252247EDC()
{
  sub_252245F84();
  qword_280C4F290 = xpc_connection_create_mach_service("com.apple.GSSCred", qword_280C4F278, 2uLL);
  xpc_connection_set_event_handler(qword_280C4F290, &unk_2864742A0);
  xpc_connection_resume(qword_280C4F290);
  if (!qword_280C4F290)
  {
    sub_2522A7BF0(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "command", "wakeup");
  xpc_dictionary_set_int64(v8, "version", 0);
  if (qword_280C4F270)
  {
    xpc_dictionary_set_string(v8, "impersonate", qword_280C4F270);
  }

  xpc_connection_send_message(qword_280C4F290, v8);

  xpc_release(v8);
}

void sub_252247FB4(uint64_t a1, uint64_t a2)
{
  if (a2 != MEMORY[0x277D86480])
  {
    v2 = sub_252245E80(a2, "uuid");
    if (v2)
    {
      v3 = v2;
      CFDictionaryRemoveValue(qword_280C4F288, v2);

      CFRelease(v3);
    }
  }
}

uint64_t krb5_sockaddr2address(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(a2 + 1);
  while (dword_286473948[v4 / 4] != v5)
  {
    v6 = v4 > 0xFF;
    v4 += 128;
    if (v6)
    {
      krb5_set_error_message(a1, -1765328170, "Address family %d not supported", v5);
      return 2529639126;
    }
  }

  v8 = *&dword_286473948[v4 / 4 + 4];

  return v8(a2, a3);
}

uint64_t krb5_sockaddr2port(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(a2 + 1);
  while (dword_286473948[v4 / 4] != v5)
  {
    v6 = v4 > 0xFF;
    v4 += 128;
    if (v6)
    {
      krb5_set_error_message(a1, -1765328170, "Address family %d not supported", v5);
      return 2529639126;
    }
  }

  v8 = *&dword_286473948[v4 / 4 + 6];

  return v8(a2, a3);
}

uint64_t krb5_addr2sockaddr(_krb5_context *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  for (i = 0; dword_286473948[i / 4 + 1] != *a2; i += 128)
  {
    if (i > 0xFF)
    {
      v7 = 2529639126;
      v10 = *a2;
      krb5_set_error_message(a1, -1765328170, "Address type %d not supported");
      return v7;
    }
  }

  v8 = *&dword_286473948[i / 4 + 8];
  if (v8)
  {
    v8(a2, a3, a4, a5);
    return 0;
  }

  else
  {
    v7 = 2529639126;
    v11 = *a2;
    krb5_set_error_message(a1, -1765328170, "Can't convert address type %d to sockaddr");
  }

  return v7;
}

unint64_t krb5_max_sockaddr_size()
{
  result = qword_27F4D9140;
  if (!qword_27F4D9140)
  {
    v1 = 2u;
    do
    {
      if (result <= *&dword_286473948[v1])
      {
        result = *&dword_286473948[v1];
      }

      v2 = v1 * 4 - 8;
      v1 += 32;
    }

    while (v2 < 0x100);
    qword_27F4D9140 = result;
  }

  return result;
}

uint64_t krb5_sockaddr_uninteresting(uint64_t a1)
{
  for (i = 0; dword_286473948[i / 4] != *(a1 + 1); i += 128)
  {
    if (i > 0xFF)
    {
      return 1;
    }
  }

  v3 = *&dword_286473948[i / 4 + 14];
  if (v3)
  {
    return v3();
  }

  return 1;
}

uint64_t sub_2522482B8(uint64_t a1)
{
  for (i = 0; dword_286473948[i / 4] != *(a1 + 1); i += 128)
  {
    if (i > 0xFF)
    {
      return 1;
    }
  }

  v3 = *&dword_286473948[i / 4 + 16];
  if (v3)
  {
    return v3();
  }

  return 1;
}

uint64_t krb5_h_addr2sockaddr(_krb5_context *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  for (i = 0; dword_286473948[i / 4] != a2; i += 128)
  {
    if (i > 0xFF)
    {
      v8 = 2529639126;
      krb5_set_error_message(a1, -1765328170, "Address family %d not supported", a2);
      return v8;
    }
  }

  (*&dword_286473948[i / 4 + 10])(a3, a4, a5, a6);
  return 0;
}

uint64_t krb5_h_addr2addr(_krb5_context *a1, int a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; dword_286473948[i / 4] != a2; i += 128)
  {
    if (i > 0xFF)
    {
      krb5_set_error_message(a1, -1765328170, "Address family %d not supported", a2);
      return 2529639126;
    }
  }

  v8 = *&dword_286473948[i / 4 + 12];

  return v8(a3, a4);
}

uint64_t krb5_anyaddr(_krb5_context *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  for (i = 0; dword_286473948[i / 4] != a2; i += 128)
  {
    if (i > 0xFF)
    {
      v7 = 2529639126;
      krb5_set_error_message(a1, -1765328170, "Address family %d not supported", a2);
      return v7;
    }
  }

  (*&dword_286473948[i / 4 + 18])(a3, a4, a5);
  return 0;
}

uint64_t krb5_print_address(uint64_t a1, char *__str, size_t __size, void *a4)
{
  v8 = 0;
  while (dword_286473948[v8 / 4 + 1] != *a1)
  {
    v9 = v8 > 0xFF;
    v8 += 128;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v10 = *&dword_286473948[v8 / 4 + 20];
  if (!v10)
  {
LABEL_10:
    v13 = snprintf(__str, __size, "TYPE_%d:", *a1);
    if ((v13 & 0x80000000) == 0 && __size > v13)
    {
      v14 = &__str[v13];
      if (!*(a1 + 8))
      {
LABEL_17:
        if (a4)
        {
          v12 = v14 - __str;
          goto LABEL_19;
        }

        return 0;
      }

      v15 = 0;
      v16 = __size - v13;
      while (1)
      {
        v17 = snprintf(v14, v16, "%02x", *(*(a1 + 16) + v15));
        if ((v17 & 0x80000000) != 0 || v16 <= v17)
        {
          break;
        }

        v16 -= v17;
        v14 += v17;
        if (++v15 >= *(a1 + 8))
        {
          goto LABEL_17;
        }
      }
    }

    return 22;
  }

  v11 = v10(a1, __str, __size);
  if ((v11 & 0x80000000) != 0)
  {
    return 22;
  }

  if (a4)
  {
    v12 = v11;
LABEL_19:
    result = 0;
    *a4 = v12;
    return result;
  }

  return 0;
}

uint64_t krb5_parse_address(_krb5_context *a1, char *a2, uint64_t a3)
{
  v6 = 0;
  v23 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  do
  {
    if (v6 != 64)
    {
      v7 = *&dword_286473948[v6 + 22];
      v21 = 0uLL;
      v22 = 0;
      if (!v7(a1, a2, &v21))
      {
        *a3 = 1;
        v12 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
        *(a3 + 8) = v12;
        if (v12)
        {
          v11 = 0;
          v13 = v21;
          v12[2] = v22;
          *v12 = v13;
        }

        else
        {
          v11 = 12;
          krb5_set_error_message(a1, 12, "malloc: out of memory");
        }

        return v11;
      }
    }

    v6 += 32;
  }

  while (v6 != 96);
  v8 = getaddrinfo(a2, 0, 0, &v23);
  if (v8)
  {
    v9 = v8;
    v10 = __error();
    v11 = krb5_eai_to_heim_errno(v9, *v10);
    gai_strerror(v9);
    krb5_set_error_message(a1, v11, "%s: %s");
  }

  else
  {
    v14 = v23;
    if (v23)
    {
      v15 = 0;
      do
      {
        ++v15;
        v14 = v14->ai_next;
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    *a3 = v15;
    v16 = malloc_type_calloc(v15, 0x18uLL, 0x10800404ACF7207uLL);
    *(a3 + 8) = v16;
    if (v16)
    {
      *a3 = 0;
      v17 = v23;
      if (v23)
      {
        v18 = 0;
        do
        {
          if (!krb5_sockaddr2address(a1, v17->ai_addr, *(a3 + 8) + 24 * v18))
          {
            if (krb5_address_search(a1, (*(a3 + 8) + 24 * v18), a3))
            {
              krb5_free_address(a1, *(a3 + 8) + 24 * v18);
            }

            else
            {
              *a3 = ++v18;
            }
          }

          v17 = v17->ai_next;
        }

        while (v17);
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }

      freeaddrinfo(v19);
      return 0;
    }

    else
    {
      v11 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
      freeaddrinfo(v23);
    }
  }

  return v11;
}

krb5_BOOLean krb5_address_search(krb5_context a1, const krb5_address *a2, krb5_address *const *a3)
{
  if (!*a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (krb5_address_order(a1, a2, (*(a3 + 1) + v6)))
  {
    ++v7;
    v6 += 24;
    if (v7 >= *a3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t krb5_free_address(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  while (dword_286473948[v3 / 4 + 1] != *a2)
  {
    v4 = v3 > 0xFF;
    v3 += 128;
    if (v4)
    {
      goto LABEL_10;
    }
  }

  v5 = *&dword_286473948[v3 / 4 + 26];
  if (!v5)
  {
LABEL_10:
    krb5_data_free((a2 + 8));
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return 0;
  }

  return v5();
}

int krb5_address_order(krb5_context a1, const krb5_address *a2, const krb5_address *a3)
{
  v3 = 0;
  magic = a2->magic;
  while (dword_286473948[v3 / 4 + 1] != magic)
  {
    v5 = v3 > 0xFF;
    v3 += 128;
    if (v5)
    {
      v6 = -1765328170;
      krb5_set_error_message(a1, -1765328170, "Address family %d not supported", a2->magic);
      return v6;
    }
  }

  v8 = *&dword_286473948[v3 / 4 + 24];
  if (v8)
  {
    goto LABEL_8;
  }

  v9 = 0;
  v10 = a3->magic;
  while (dword_286473948[v9 / 4 + 1] != v10)
  {
    v5 = v9 > 0xFF;
    v9 += 128;
    if (v5)
    {
      v6 = -1765328170;
      krb5_set_error_message(a1, -1765328170, "Address family %d not supported", a3->magic);
      return v6;
    }
  }

  v8 = *&dword_286473948[v9 / 4 + 24];
  if (v8)
  {
LABEL_8:

    return v8(a1);
  }

  else
  {
    v6 = magic - v10;
    if (magic != v10)
    {
      return v6;
    }

    v11 = *&a2->length;
    v12 = *&a3->length;
    if (v11 != v12)
    {
      return v11 - v12;
    }

    contents = a2->contents;
    v14 = a3->contents;

    return memcmp(contents, v14, v11);
  }
}

void krb5_free_addresses(krb5_context a1, krb5_address **a2)
{
  if (*a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      krb5_free_address(a1, &a2[1][v4]);
      ++v5;
      ++v4;
    }

    while (v5 < *a2);
  }

  free(a2[1]);
  *a2 = 0;
  a2[1] = 0;
}

uint64_t krb5_copy_address(uint64_t a1, _DWORD *a2)
{
  for (i = 0; dword_286473948[i / 4] != *a2; i += 128)
  {
    if (i > 0xFF)
    {
      return sub_25228A7A0();
    }
  }

  v4 = *&dword_286473948[i / 4 + 28];
  if (v4)
  {
    return v4();
  }

  return sub_25228A7A0();
}

krb5_error_code krb5_copy_addresses(krb5_context a1, krb5_address *const *a2, krb5_address ***a3)
{
  v6 = *a2;
  *a3 = v6;
  v7 = malloc_type_calloc(v6, 0x18uLL, 0x10800404ACF7207uLL);
  a3[1] = v7;
  if (*a2)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    return 12;
  }

  if (*a2)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = a3[1];
      krb5_copy_address(a1, (*(a2 + 1) + v9));
      ++v10;
      v9 += 24;
    }

    while (v10 < *a2);
  }

  return 0;
}

uint64_t krb5_append_addresses(_krb5_context *a1, void **a2, unsigned int *a3)
{
  if (*a3)
  {
    v6 = malloc_type_realloc(a2[1], 24 * (*a2 + *a3), 0x10800404ACF7207uLL);
    if (!v6)
    {
      v12 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
      return v12;
    }

    a2[1] = v6;
    if (*a3)
    {
      v7 = 0;
      for (i = 0; i < *a3; ++i)
      {
        if (!krb5_address_search(a1, (*(a3 + 1) + v7), a2))
        {
          v9 = a2[1];
          v10 = *a2;
          v11 = krb5_copy_address(a1, (*(a3 + 1) + v7));
          if (v11)
          {
            return v11;
          }

          ++*a2;
        }

        v7 += 24;
      }
    }
  }

  return 0;
}

uint64_t krb5_make_addrport(_krb5_context *a1, void **a2, uint64_t a3, __int16 a4)
{
  v8 = *(a3 + 8);
  v9 = malloc_type_malloc(0x18uLL, 0x10800404ACF7207uLL);
  *a2 = v9;
  if (v9)
  {
    *v9 = 256;
    v10 = krb5_data_alloc(v9 + 1, v8 + 18);
    if (v10)
    {
      krb5_set_error_message(a1, v10, "malloc: out of memory");
      free(*a2);
      *a2 = 0;
    }

    else
    {
      v11 = *(*a2 + 2);
      *v11 = 0;
      *(v11 + 2) = *a3;
      *(v11 + 4) = *(a3 + 8);
      *(v11 + 6) = BYTE2(*(a3 + 8));
      v12 = v11 + 8;
      *(v11 + 7) = BYTE3(*(a3 + 8));
      memcpy((v11 + 8), *(a3 + 16), *(a3 + 8));
      v13 = v12 + *(a3 + 8);
      *v13 = 0x201010000;
      *(v13 + 8) = a4;
    }
  }

  else
  {
    v10 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v10;
}

uint64_t krb5_address_prefixlen_boundary(_krb5_context *a1, int *a2)
{
  v3 = 0;
  v4 = *a2;
  while (dword_286473948[v3 / 4 + 1] != v4)
  {
    v5 = v3 > 0xFF;
    v3 += 128;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  v6 = *&dword_286473948[v3 / 4 + 30];
  if (!v6)
  {
LABEL_10:
    krb5_set_error_message(a1, -1765328170, "Address family %d doesn't support address mask operation", v4);
    return 2529639126;
  }

  return v6();
}

uint64_t sub_252248EC8(uint64_t a1, uint64_t a2)
{
  *a2 = 2;
  v3 = *(a1 + 4);
  return krb5_data_copy((a2 + 8), &v3, 4uLL);
}

void *sub_252248F18(uint64_t a1, void *__dst, _DWORD *a3, __int16 a4)
{
  __src[2] = *MEMORY[0x277D85DE8];
  __src[0] = 512;
  __src[1] = 0;
  HIDWORD(__src[0]) = **(a1 + 16);
  WORD1(__src[0]) = a4;
  if (*a3 >= 0x10u)
  {
    v5 = 16;
  }

  else
  {
    v5 = *a3;
  }

  result = memcpy(__dst, __src, v5);
  *a3 = 16;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_252248FAC(_DWORD *a1, void *__dst, _DWORD *a3, __int16 a4)
{
  __src[2] = *MEMORY[0x277D85DE8];
  __src[0] = 512;
  __src[1] = 0;
  WORD1(__src[0]) = a4;
  HIDWORD(__src[0]) = *a1;
  if (*a3 >= 0x10u)
  {
    v5 = 16;
  }

  else
  {
    v5 = *a3;
  }

  result = memcpy(__dst, __src, v5);
  *a3 = 16;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25224903C(int *a1, uint64_t a2)
{
  *a2 = 2;
  v3 = *a1;
  return krb5_data_copy((a2 + 8), &v3, 4uLL);
}

void *sub_25224909C(void *a1, _DWORD *a2, __int16 a3)
{
  __src[2] = *MEMORY[0x277D85DE8];
  __src[0] = 512;
  __src[1] = 0;
  WORD1(__src[0]) = a3;
  if (*a2 >= 0x10u)
  {
    v4 = 16;
  }

  else
  {
    v4 = *a2;
  }

  result = memcpy(a1, __src, v4);
  *a2 = 16;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25224911C(uint64_t a1, char *a2, size_t a3)
{
  v5.s_addr = **(a1 + 16);
  v6 = inet_ntoa(v5);
  return snprintf(a2, a3, "IPv4:%s", v6);
}

uint64_t sub_25224916C(int a1, char *__s, uint64_t a3)
{
  v5 = strchr(__s, 58);
  if (v5)
  {
    v6 = v5 + 1;
    v7 = v5 + 1 - __s;
    if (strncasecmp(__s, "ip:", v7) && strncasecmp(__s, "ip4:", v7) && strncasecmp(__s, "ipv4:", v7) && strncasecmp(__s, "inet:", v7))
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v6 = __s;
  }

  v9.s_addr = 0;
  if (!inet_aton(v6, &v9))
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = 2;
  if (krb5_data_alloc((a3 + 8), 4uLL))
  {
    return 0xFFFFFFFFLL;
  }

  _krb5_put_int(*(a3 + 16), bswap32(v9.s_addr), *(a3 + 8));
  return 0;
}

uint64_t sub_252249268(krb5_context a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  if (a3 < 0x21)
  {
    v13 = 0;
    v7 = 0xFFFFFFFFLL;
    _krb5_get_int(*(a2 + 16), &v13, *(a2 + 8));
    v10 = v13;
    *a4 = 2;
    if (!krb5_data_alloc((a4 + 8), 4uLL))
    {
      v11 = -1 << -v5;
      _krb5_put_int(*(a4 + 16), v11 & v10, *(a4 + 8));
      *a5 = 2;
      if (krb5_data_alloc((a5 + 8), 4uLL))
      {
        krb5_free_address(a1, a4);
        return 0xFFFFFFFFLL;
      }

      else
      {
        _krb5_put_int(*(a5 + 16), v10 | ~v11, *(a5 + 8));
        return 0;
      }
    }
  }

  else
  {
    v7 = 2529639126;
    krb5_set_error_message(a1, -1765328170, "IPv4 prefix too large (%lu)", a3);
  }

  return v7;
}

uint64_t sub_252249364(_DWORD *a1, uint64_t a2)
{
  if (a1[2] || a1[3] || a1[4] != -65536)
  {
    *a2 = 24;

    return krb5_data_copy((a2 + 8), a1 + 2, 0x10uLL);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    *a2 = 2;
    v5 = a1[5];
    return krb5_data_copy((a2 + 8), &v5, 4uLL);
  }
}

void *sub_2522493F4(uint64_t a1, void *__dst, _DWORD *a3, __int16 a4)
{
  v8 = 0uLL;
  v7 = 7680;
  v9 = 0;
  v8 = **(a1 + 16);
  WORD1(v7) = a4;
  if (*a3 >= 0x1Cu)
  {
    v5 = 28;
  }

  else
  {
    v5 = *a3;
  }

  result = memcpy(__dst, &v7, v5);
  *a3 = 28;
  return result;
}

void *sub_252249464(__int128 *a1, void *__dst, _DWORD *a3, __int16 a4)
{
  v8 = 0uLL;
  v7 = 7680;
  v9 = 0;
  WORD1(v7) = a4;
  v8 = *a1;
  if (*a3 >= 0x1Cu)
  {
    v5 = 28;
  }

  else
  {
    v5 = *a3;
  }

  result = memcpy(__dst, &v7, v5);
  *a3 = 28;
  return result;
}

BOOL sub_2522494EC(uint64_t a1)
{
  if (*(a1 + 8) == 254 && (*(a1 + 9) & 0xC0) == 0x80)
  {
    return 1;
  }

  if (*(a1 + 8) || *(a1 + 12) || *(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 20);
  return v2 && v2 != 0x1000000;
}

void *sub_252249580(void *a1, _DWORD *a2, __int16 a3)
{
  v7 = 0uLL;
  v6 = 7680;
  v8 = 0;
  WORD1(v6) = a3;
  v7 = *MEMORY[0x277D85EE8];
  if (*a2 >= 0x1Cu)
  {
    v4 = 28;
  }

  else
  {
    v4 = *a2;
  }

  result = memcpy(a1, &v6, v4);
  *a2 = 28;
  return result;
}

uint64_t sub_2522495EC(uint64_t a1, char *a2, size_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!inet_ntop(30, *(a1 + 16), v11, 0x80u))
  {
    v11[0] = 0;
    v6 = *(a1 + 16);
    if (*(a1 + 8))
    {
      v7 = 0;
      do
      {
        snprintf(__str, 3uLL, "%02x", *(v6 + v7));
        if (v7 && (v7 & 1) == 0)
        {
          __strlcat_chk();
        }

        __strlcat_chk();
        ++v7;
      }

      while (v7 < *(a1 + 8));
    }
  }

  result = snprintf(a2, a3, "IPv6:%s", v11);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_25224970C(int a1, char *__s, uint64_t a3)
{
  v4 = __s;
  v5 = strchr(__s, 58);
  if (v5)
  {
    v6 = v5 + 1;
    v7 = v5 + 1 - v4;
    if (!strncasecmp(v4, "ip6:", v7) || !strncasecmp(v4, "ipv6:", v7) || !strncasecmp(v4, "inet6:", v7))
    {
      v4 = v6;
    }
  }

  v9 = 0uLL;
  if (inet_pton(30, v4, &v9) == 1)
  {
    *a3 = 24;
    if (!krb5_data_alloc((a3 + 8), 0x10uLL))
    {
      result = *&v9;
      **(a3 + 16) = v9;
    }
  }

  return result;
}

uint64_t sub_2522497EC(krb5_context a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0x81)
  {
    if (*(a2 + 8) == 16)
    {
      v9 = 0;
      v15 = 0uLL;
      v14 = 0uLL;
      v16 = **(a2 + 16);
      do
      {
        v10 = 8 - a3;
        if (a3 > 8)
        {
          v10 = 0;
        }

        v11 = 255 << v10;
        v12 = *(&v16 + v9);
        *(&v15 + v9) = v12 & v11;
        *(&v14 + v9) = v12 | ~v11;
        if (a3 >= 8)
        {
          a3 -= 8;
        }

        else
        {
          a3 = 0;
        }

        ++v9;
      }

      while (v9 != 16);
      *a4 = 24;
      if (!krb5_data_alloc((a4 + 8), 0x10uLL))
      {
        **(a4 + 16) = v15;
        *a5 = 24;
        if (!krb5_data_alloc((a5 + 8), 0x10uLL))
        {
          v6 = 0;
          **(a5 + 16) = v14;
          return v6;
        }

        krb5_free_address(a1, a4);
      }

      return 0xFFFFFFFFLL;
    }

    else
    {
      v6 = 2529639126;
      krb5_set_error_message(a1, -1765328170, "IPv6 addr bad length");
    }
  }

  else
  {
    v6 = 2529639126;
    krb5_set_error_message(a1, -1765328170, "IPv6 prefix too large (%lu)");
  }

  return v6;
}

uint64_t sub_252249934(uint64_t a1, char *a2, size_t a3)
{
  v5 = krb5_storage_from_data((a1 + 8));
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  memset(v19, 0, sizeof(v19));
  v17 = 0;
  v18 = 0;
  v16 = 0;
  krb5_storage_set_byteorder(v5, 32);
  krb5_storage_seek(v6);
  krb5_ret_address(v6, v19);
  krb5_storage_seek(v6);
  krb5_ret_address(v6, &v16);
  krb5_storage_free(v6);
  v7 = 0;
  if (v16 == 257 && v17 == 2)
  {
    v15 = 0;
    _krb5_get_int(v18, &v15, 2);
    v7 = v15;
  }

  v8 = strlcpy(a2, "ADDRPORT:", a3);
  v9 = v8;
  v15 = v8;
  if (v8 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v8;
  }

  result = krb5_print_address(v19, &a2[v10], a3 - v10, &v15);
  if (!result)
  {
    v12 = v15;
    v13 = v15 + v10;
    if (a3 - v10 <= v15)
    {
      v13 = a3;
    }

    v14 = snprintf(&a2[v13], a3 - v13, ",PORT=%u", v7);
    if (v14 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return (v14 + v12 + v9);
    }
  }

  return result;
}

void krb5_appdefault_string(krb5_context context, const char *appname, const krb5_data *realm, const char *option, const char *default_value, char **ret_value)
{
  v11 = appname;
  if (!appname)
  {
    v11 = getprogname();
  }

  string_default = krb5_config_get_string_default(context, 0, default_value, option, default_value, ret_value, v6, v7, "libdefaults");
  if (realm)
  {
    v19 = krb5_config_get_string_default(context, 0, string_default, v14, v15, v16, v17, v18, "realms");
    v25 = krb5_config_get_string_default(context, 0, v19, v20, v21, v22, v23, v24, "appdefaults");
    v31 = krb5_config_get_string_default(context, 0, v25, v26, v27, v28, v29, v30, "appdefaults");
    if (!v11)
    {
      goto LABEL_9;
    }

    v37 = krb5_config_get_string_default(context, 0, v31, v32, v33, v34, v35, v36, "appdefaults");
    v43 = krb5_config_get_string_default(context, 0, v37, v38, v39, v40, v41, v42, "appdefaults");
  }

  else
  {
    v31 = krb5_config_get_string_default(context, 0, string_default, v14, v15, v16, v17, v18, "appdefaults");
    if (!v11)
    {
      goto LABEL_9;
    }

    v43 = krb5_config_get_string_default(context, 0, v31, v44, v45, v46, v47, v48, "appdefaults");
  }

  v31 = v43;
LABEL_9:
  if (v31)
  {
    v49 = strdup(v31);
  }

  else
  {
    v49 = 0;
  }

  *ret_value = v49;
}

void krb5_appdefault_time(_krb5_context *a1, const char *a2, const krb5_data *a3, const char *a4, uint64_t a5, void *a6)
{
  v11 = 0;
  *v12 = 0;
  krb5_appdefault_string(a1, a2, a3, a4, 0, &v11);
  v8 = v11;
  if (v11)
  {
    v9 = krb5_string_to_deltat(v11, v12);
    v10 = *v12;
    if (v9)
    {
      v10 = a5;
    }

    *a6 = v10;
    free(v8);
  }

  else
  {
    *a6 = a5;
  }
}

uint64_t _krb5_principalname2krb5_principal(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  v6 = malloc_type_malloc(0x20uLL, 0x10900408A8AD7E9uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v8 = sub_25228A708();
  if (!v8)
  {
    v10 = strdup(a4);
    v7[3] = v10;
    if (v10)
    {
      v9 = 0;
      *a2 = v7;
      return v9;
    }

    sub_25228A6F8(v7);
    free(v7);
    return 12;
  }

  v9 = v8;
  free(v7);
  return v9;
}

krb5_error_code krb5_auth_con_init(krb5_context a1, krb5_auth_context *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A004051926EB3uLL);
  if (v4)
  {
    v5 = v4;
    v4[5] = 0u;
    v4[6] = 0u;
    v4[3] = 0u;
    v4[4] = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    v6 = malloc_type_calloc(1uLL, 0x58uLL, 0x10B0040F0B9F0F0uLL);
    *(v5 + 8) = v6;
    if (v6)
    {
      v7 = 0;
      v6[10] = 0;
      *(v6 + 3) = 0u;
      *(v6 + 4) = 0u;
      *(v6 + 1) = 0u;
      *(v6 + 2) = 0u;
      *v6 = 0u;
      *v5 = 1;
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *(v5 + 6) = 0;
      *(v5 + 12) = 0;
      *(v5 + 13) = 0;
      *(v5 + 11) = 0;
      *a2 = v5;
    }

    else
    {
      v7 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
      free(v5);
    }
  }

  else
  {
    v7 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v7;
}

krb5_error_code krb5_auth_con_free(krb5_context a1, krb5_auth_context a2)
{
  if (a2)
  {
    sub_25228ABA8(*(a2 + 8));
    v4 = *(a2 + 8);
    *(v4 + 80) = 0;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v4 = 0u;
    free(*(a2 + 8));
    *(a2 + 8) = 0;
    v5 = *(a2 + 1);
    if (v5)
    {
      sub_25228A790(v5);
      free(*(a2 + 1));
    }

    v6 = *(a2 + 2);
    if (v6)
    {
      sub_25228A790(v6);
      free(*(a2 + 2));
    }

    krb5_free_keyblock(a1, *(a2 + 4));
    krb5_free_keyblock(a1, *(a2 + 6));
    krb5_free_keyblock(a1, *(a2 + 5));
    v7 = *(a2 + 12);
    if (v7)
    {
      sub_25228A89C(v7);
      free(*(a2 + 12));
    }

    if (*(a2 + 13))
    {
      sub_25227D5D0(a1, a2);
    }

    *(a2 + 5) = 0u;
    *(a2 + 6) = 0u;
    *(a2 + 3) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
    free(a2);
  }

  return 0;
}

void krb5_free_authenticator(krb5_context a1, krb5_authenticator *a2)
{
  if (a2)
  {
    sub_25228ABA8(*&a2->magic);
    v3 = *&a2->magic;
    *(v3 + 80) = 0;
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    *v3 = 0u;
    free(*&a2->magic);
    *&a2->magic = 0;
  }
}

uint64_t krb5_auth_con_addflags(uint64_t a1, int *a2, int a3, int *a4)
{
  v4 = *a2;
  if (a4)
  {
    *a4 = v4;
  }

  *a2 = v4 | a3;
  return 0;
}

uint64_t krb5_auth_con_removeflags(uint64_t a1, int *a2, int a3, int *a4)
{
  v4 = *a2;
  if (a4)
  {
    *a4 = v4;
  }

  *a2 = v4 & ~a3;
  return 0;
}

void sub_25224A260(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      krb5_free_address(a1, v6);
      free(*(a2 + 8));
      *(a2 + 8) = 0;
    }
  }

  if ((a3 & 2) != 0)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      krb5_free_address(a1, v7);
      free(*(a2 + 16));
      *(a2 + 16) = 0;
    }
  }
}

krb5_error_code krb5_auth_con_setaddrs(krb5_context a1, krb5_auth_context a2, krb5_address *a3, krb5_address *a4)
{
  if (a3)
  {
    v8 = *(a2 + 1);
    if (v8)
    {
      krb5_free_address(a1, v8);
      v9 = *(a2 + 1);
    }

    else
    {
      v10 = malloc_type_malloc(0x18uLL, 0x10800404ACF7207uLL);
      *(a2 + 1) = v10;
      if (!v10)
      {
        return 12;
      }
    }

    krb5_copy_address(a1, a3);
  }

  if (!a4)
  {
    return 0;
  }

  v11 = *(a2 + 2);
  if (v11)
  {
    krb5_free_address(a1, v11);
    v12 = *(a2 + 2);
LABEL_10:
    krb5_copy_address(a1, a4);
    return 0;
  }

  v13 = malloc_type_malloc(0x18uLL, 0x10800404ACF7207uLL);
  *(a2 + 2) = v13;
  if (v13)
  {
    goto LABEL_10;
  }

  return 12;
}

krb5_error_code krb5_auth_con_genaddrs(krb5_context a1, krb5_auth_context a2, int a3, int a4)
{
  v4 = a4;
  v34 = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0;
  v19 = 0u;
  v14 = 0;
  if ((a4 & 1) == 0 || *(a2 + 1))
  {
    v8 = 0;
    if ((a4 & 4) == 0)
    {
LABEL_4:
      v9 = 0;
      goto LABEL_5;
    }

LABEL_13:
    v14 = 128;
    if (getpeername(a3, &v18, &v14) < 0)
    {
      v10 = *__error();
      strerror_r(v10, __strerrbuf, 0x80uLL);
      krb5_set_error_message(a1, v10, "getpeername: %s", __strerrbuf);
    }

    else
    {
      v13 = krb5_sockaddr2address(a1, &v18, v15);
      if (!v13)
      {
        krb5_sockaddr2port(a1, &v18, a2 + 26);
        v9 = v15;
LABEL_5:
        v10 = krb5_auth_con_setaddrs(a1, a2, v8, v9);
        if (!v8)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v10 = v13;
    }

    v9 = 0;
    if (!v8)
    {
LABEL_7:
      if (v9)
      {
        krb5_free_address(a1, v9);
      }

      goto LABEL_9;
    }

LABEL_6:
    krb5_free_address(a1, v8);
    goto LABEL_7;
  }

  v14 = 128;
  if (getsockname(a3, &v26, &v14) < 0)
  {
    v10 = *__error();
    strerror_r(v10, __strerrbuf, 0x80uLL);
    krb5_set_error_message(a1, v10, "getsockname: %s", __strerrbuf);
    goto LABEL_9;
  }

  v10 = krb5_sockaddr2address(a1, &v26, v16);
  if (!v10)
  {
    krb5_sockaddr2port(a1, &v26, a2 + 24);
    v8 = v16;
    if ((v4 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t krb5_auth_con_setaddrs_from_fd(_krb5_context *a1, _krb5_auth_context *a2, int *a3)
{
  v3 = *a3;
  if (*(a2 + 1))
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  if (*(a2 + 2))
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 | 0xC;
  }

  return krb5_auth_con_genaddrs(a1, a2, v3, v5);
}

krb5_error_code krb5_auth_con_getaddrs(krb5_context a1, krb5_auth_context a2, krb5_address **a3, krb5_address **a4)
{
  if (*a3)
  {
    krb5_free_address(a1, *a3);
  }

  v8 = malloc_type_malloc(0x18uLL, 0x10800404ACF7207uLL);
  *a3 = v8;
  if (v8)
  {
    krb5_copy_address(a1, *(a2 + 1));
    if (*a4)
    {
      krb5_free_address(a1, *a4);
    }

    v9 = malloc_type_malloc(0x18uLL, 0x10800404ACF7207uLL);
    *a4 = v9;
    if (v9)
    {
      krb5_copy_address(a1, *(a2 + 2));
      return 0;
    }

    else
    {
      v10 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
      krb5_free_address(a1, *a3);
      *a3 = 0;
    }
  }

  else
  {
    v10 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v10;
}

krb5_error_code krb5_auth_con_getkey(krb5_context a1, krb5_auth_context a2, krb5_keyblock **a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    return krb5_copy_keyblock(a1, v3, a3);
  }

  *a3 = 0;
  return 0;
}

uint64_t krb5_auth_con_getlocalsubkey(_krb5_context *a1, uint64_t a2, krb5_keyblock **a3)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    return krb5_copy_keyblock(a1, v3, a3);
  }

  *a3 = 0;
  return 0;
}

uint64_t krb5_auth_con_getremotesubkey(_krb5_context *a1, uint64_t a2, krb5_keyblock **a3)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    return krb5_copy_keyblock(a1, v3, a3);
  }

  *a3 = 0;
  return 0;
}

uint64_t krb5_auth_con_setkey(krb5_context a1, krb5_keyblock **a2, krb5_keyblock *a3)
{
  v6 = a2 + 4;
  v5 = a2[4];
  if (v5)
  {
    krb5_free_keyblock(a1, v5);
  }

  if (a3)
  {

    return krb5_copy_keyblock(a1, a3, v6);
  }

  else
  {
    *v6 = 0;
    return 0;
  }
}

uint64_t krb5_auth_con_setlocalsubkey(krb5_context a1, krb5_keyblock **a2, krb5_keyblock *a3)
{
  v6 = a2 + 5;
  v5 = a2[5];
  if (v5)
  {
    krb5_free_keyblock(a1, v5);
  }

  if (a3)
  {

    return krb5_copy_keyblock(a1, a3, v6);
  }

  else
  {
    *v6 = 0;
    return 0;
  }
}

uint64_t krb5_auth_con_generatelocalsubkey(_krb5_context *a1, uint64_t a2, unsigned int *a3)
{
  v8 = 0;
  v5 = krb5_generate_subkey_extended(a1, a3, *(a2 + 88), &v8);
  if (!v5)
  {
    v6 = *(a2 + 40);
    if (v6)
    {
      krb5_free_keyblock(a1, v6);
    }

    *(a2 + 40) = v8;
  }

  return v5;
}

uint64_t krb5_auth_con_setremotesubkey(krb5_context a1, krb5_keyblock **a2, krb5_keyblock *a3)
{
  v6 = a2 + 6;
  v5 = a2[6];
  if (v5)
  {
    krb5_free_keyblock(a1, v5);
  }

  if (a3)
  {

    return krb5_copy_keyblock(a1, a3, v6);
  }

  else
  {
    *v6 = 0;
    return 0;
  }
}

krb5_error_code krb5_auth_con_getauthenticator(krb5_context a1, krb5_auth_context a2, krb5_authenticator **a3)
{
  v6 = malloc_type_malloc(0x58uLL, 0x10B0040F0B9F0F0uLL);
  *a3 = v6;
  if (v6)
  {
    v7 = *(a2 + 8);

    return sub_25228ABB8();
  }

  else
  {
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return 12;
  }
}

uint64_t krb5_auth_con_setuserkey(krb5_context a1, krb5_keyblock **a2, krb5_keyblock *a3)
{
  v6 = a2 + 4;
  v5 = a2[4];
  if (v5)
  {
    krb5_free_keyblock(a1, v5);
  }

  return krb5_copy_keyblock(a1, a3, v6);
}

uint64_t krb5_auth_con_add_AuthorizationData(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 96);
  if (v6 || (v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL), (*(a2 + 96) = v6) != 0))
  {
    v9 = *a4;
    v10 = a4[1];
    return sub_25228A8C0(v6);
  }

  else
  {

    return krb5_enomem(a1);
  }
}

uint64_t krb5_build_ap_req(_krb5_context *a1, int a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = 0u;
  v21 = 0u;
  memset(&v19[1], 0, 80);
  v18 = 0;
  v19[0] = 0xE00000005;
  LODWORD(v19[1]) = 2 * (a4 & 3);
  v12 = decode_Ticket(*(a3 + 80), *(a3 + 72), &v19[2], &v18);
  if (!v12)
  {
    LODWORD(v20) = a2;
    *(&v20 + 1) = 0;
    *&v21 = a5;
    *(&v21 + 1) = a6;
    v14 = sub_25228B03C(v19);
    *a7 = v14;
    v15 = malloc_type_malloc(v14, 0x9172AB67uLL);
    *(a7 + 8) = v15;
    if (v15)
    {
      v16 = sub_25228B01C(v15 + *a7 - 1, *a7, v19, &v18);
      if (!v16)
      {
        if (*a7 != v18)
        {
          krb5_abortx(a1, "internal error in ASN.1 encoder");
        }

        v13 = 0;
        goto LABEL_10;
      }

      v13 = v16;
      free(*(a7 + 8));
      *(a7 + 8) = 0;
    }

    else
    {
      v13 = 12;
    }

    krb5_data_zero(a7);
LABEL_10:
    sub_25228B04C(v19);
    return v13;
  }

  v13 = v12;
  krb5_data_zero(a7);
  return v13;
}

uint64_t _krb5_build_authenticator(_krb5_context *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v43 = 0;
  v44 = 0;
  memset(v45, 0, sizeof(v45));
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  v50[0] = 0;
  v50[1] = 0;
  LODWORD(v45[0]) = 5;
  v14 = *a4;
  v15 = sub_25228A694();
  if (v15)
  {
    goto LABEL_4;
  }

  v16 = *a4;
  v15 = sub_25228A708();
  if (v15)
  {
    goto LABEL_4;
  }

  krb5_us_timeofday(a1, &v47 + 2, &v47);
  v15 = krb5_auth_con_getlocalsubkey(a1, a2, &v48);
  if (v15)
  {
    goto LABEL_4;
  }

  if ((*a2 & 4) != 0)
  {
    if (!*(a2 + 56))
    {
      krb5_generate_seq_number(a1, a4 + 16, (a2 + 56));
    }

    v20 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    *(&v48 + 1) = v20;
    if (!v20)
    {
      goto LABEL_35;
    }

    *v20 = *(a2 + 56);
  }

  else
  {
    *(&v48 + 1) = 0;
  }

  if (*(a2 + 96))
  {
    v49 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
    if (!v49)
    {
      goto LABEL_35;
    }

    v21 = *(a2 + 96);
    v15 = sub_25228A8AC();
    if (v15)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v49 = 0;
  }

  if (*(a2 + 104))
  {
    v15 = sub_25227D738(a1, a2, *a4, v50);
    if (v15)
    {
      goto LABEL_4;
    }
  }

  if (!a5)
  {
    goto LABEL_25;
  }

  *(&v46 + 1) = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
  if (!*(&v46 + 1))
  {
LABEL_35:
    v18 = 0;
    goto LABEL_36;
  }

  v15 = sub_25228AB44();
  if (!v15)
  {
    if (**(&v46 + 1) != 32771 || (v15 = sub_25224AFF0(a1, v50, v22, v23, v24, v25, v26, v27), !v15))
    {
LABEL_25:
      if (LODWORD(v50[0]))
      {
        v28 = sub_25228B43C(v50);
        v29 = malloc_type_malloc(v28, 0xDBD98FFEuLL);
        v18 = v29;
        if (!v29)
        {
          goto LABEL_36;
        }

        v30 = sub_25228B41C(v28 + v29 - 1, v28, v50, &v44);
        if (v30)
        {
LABEL_34:
          v17 = v30;
          free(v18);
          goto LABEL_5;
        }

        if (v28 != v44)
        {
          sub_2522A7C08(v30, v31, v32, v33, v34, v35, v36, v37);
        }

        v38 = v49;
        if (!v49)
        {
          v38 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
          v49 = v38;
          if (!v38)
          {
            v42 = krb5_enomem(a1);
            goto LABEL_41;
          }
        }

        v17 = sub_25228A8C0(v38);
        if (v17)
        {
          goto LABEL_6;
        }
      }

      v39 = *(a2 + 64);
      *(v39 + 56) = *(&v47 + 1);
      *(v39 + 48) = v47;
      v40 = sub_25228AB98(v45);
      v41 = malloc_type_malloc(v40, 0xF534F49EuLL);
      v18 = v41;
      if (v41)
      {
        v30 = sub_25228AB78(v40 + v41 - 1, v40, v45, &v44);
        if (v30)
        {
          goto LABEL_34;
        }

        if (v40 != v44)
        {
          krb5_abortx(a1, "internal error in ASN.1 encoder");
        }

        v42 = krb5_crypto_init(a1, (a4 + 16), a3, &v43);
        if (!v42)
        {
          v17 = krb5_encrypt(a1, v43, a7, v18, v44, a6);
          krb5_crypto_destroy(a1, v43);
          goto LABEL_6;
        }

LABEL_41:
        v17 = v42;
        goto LABEL_6;
      }

LABEL_36:
      v17 = 12;
      goto LABEL_6;
    }
  }

LABEL_4:
  v17 = v15;
LABEL_5:
  v18 = 0;
LABEL_6:
  sub_25228A89C(v50);
  sub_25228ABA8(v45);
  free(v18);
  return v17;
}

uint64_t sub_25224AFF0(_krb5_context *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  inited = _krb5_init_etype(a1, 11, &v24, &v25, 0, a6, a7, a8);
  if (!inited)
  {
    v10 = sub_25228B3FC(&v24);
    v11 = malloc_type_malloc(v10, 0xFC34DD4DuLL);
    if (!v11)
    {
      inited = 12;
      goto LABEL_6;
    }

    v12 = v11;
    v13 = sub_25228B3DC(v11 + v10 - 1, v10, &v24, &v23);
    if (v13)
    {
      inited = v13;
      free(v12);
LABEL_6:
      sub_25228B40C(&v24);
      return inited;
    }

    v14 = sub_25228B40C(&v24);
    if (v10 != v23)
    {
      sub_2522A7C08(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    LODWORD(v26) = 129;
    v27 = v10;
    v28 = v12;
    inited = sub_25228A8C0(a2);
    free(v12);
  }

  return inited;
}

uint64_t krb5_cc_register(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 176);
  if (v5 < 1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 168);
    while (1)
    {
      v9 = *(*(v8 + 8 * v7) + 8);
      if (!v9)
      {
        break;
      }

      if (!strcmp(v9, *(a2 + 8)))
      {
        if (a3)
        {
          break;
        }

        v12 = 2529639103;
        krb5_set_error_message(a1, -1765328193, "cache type %s already exists");
        return v12;
      }

      if (v5 == ++v7)
      {
        LODWORD(v7) = v5;
        goto LABEL_10;
      }
    }
  }

  if (v7 == v5)
  {
LABEL_10:
    v10 = malloc_type_realloc(*(a1 + 168), 8 * v5 + 8, 0x6004044C4A2DFuLL);
    if (!v10)
    {
      v12 = 2529639110;
      krb5_set_error_message(a1, -1765328186, "malloc: out of memory");
      return v12;
    }

    *(a1 + 168) = v10;
    v11 = *(a1 + 176);
    v10[v11] = 0;
    *(a1 + 176) = v11 + 1;
  }

  v12 = 0;
  *(*(a1 + 168) + 8 * v7) = a2;
  return v12;
}

uint64_t sub_25224B218(_krb5_context *a1, uint64_t a2, void *a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x10E0040A403B16CuLL);
  if (v6)
  {
    v7 = 0;
    *v6 = a2;
    *a3 = v6;
  }

  else
  {
    v7 = 2529639110;
    krb5_set_error_message(a1, -1765328186, "malloc: out of memory");
  }

  return v7;
}

krb5_error_code krb5_cc_resolve(krb5_context a1, const char *a2, krb5_ccache *a3)
{
  *a3 = 0;
  v6 = *(a1 + 44);
  if (v6 >= 1)
  {
    v7 = *(a1 + 21);
    do
    {
      v8 = *v7;
      v9 = *(*v7 + 8);
      if (!v9)
      {
        break;
      }

      v10 = strlen(*(*v7 + 8));
      if (!strncmp(v9, a2, v10) && a2[v10] == 58)
      {
        v14 = &a2[v10 + 1];
        v13 = a1;
        v12 = v8;
        goto LABEL_11;
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  if (strchr(a2, 58))
  {
    krb5_set_error_message(a1, -1765328244, "unknown ccache type %s", a2);
    return -1765328244;
  }

  else
  {
    v12 = &krb5_fcc_ops;
    v13 = a1;
    v14 = a2;
LABEL_11:

    return sub_25224B3C0(v13, v12, v14, a3);
  }
}

uint64_t sub_25224B3C0(_krb5_context *a1, uint64_t a2, char *__s1, void *a4)
{
  v11 = 0;
  v7 = _krb5_expand_default_cc_name_0(a1, __s1, &v11);
  if (!v7)
  {
    v8 = v11;
    v9 = sub_25224B218(a1, a2, a4);
    if (v9)
    {
      v7 = v9;
    }

    else
    {
      v7 = (*(**a4 + 24))(a1, a4, v8);
      if (v7)
      {
        free(*a4);
        *a4 = 0;
      }
    }

    if (v11)
    {
      free(v11);
    }
  }

  return v7;
}

krb5_error_code krb5_cc_new_unique(krb5_context context, const char *type, const char *hint, krb5_ccache *id)
{
  prefix_ops = krb5_cc_get_prefix_ops(context, type);
  if (prefix_ops)
  {
    v8 = sub_25224B218(context, prefix_ops, id);
    if (!v8)
    {
      v8 = (*(**id + 32))(context, id);
      if (v8)
      {
        free(*id);
        *id = 0;
      }
    }
  }

  else
  {
    v8 = -1765328244;
    krb5_set_error_message(context, -1765328244, "Credential cache type %s is unknown", type);
  }

  return v8;
}

void *krb5_cc_get_prefix_ops(uint64_t a1, char *__s1)
{
  if (!__s1)
  {
    return &krb5_xcc_ops;
  }

  if (*__s1 == 47)
  {
    return &krb5_fcc_ops;
  }

  v4 = strdup(__s1);
  if (v4)
  {
    v5 = v4;
    v6 = strchr(v4, 58);
    if (v6)
    {
      *v6 = 0;
    }

    v7 = *(a1 + 176);
    if (v7 >= 1)
    {
      v8 = *(a1 + 168);
      do
      {
        v9 = *(*v8 + 8);
        if (!v9)
        {
          break;
        }

        if (!strcmp(v9, v5))
        {
          free(v5);
          return *v8;
        }

        v8 += 8;
        --v7;
      }

      while (v7);
    }

    free(v5);
  }

  else
  {
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return 0;
}

uint64_t krb5_cc_get_full_name(_krb5_context *a1, uint64_t a2, char **a3)
{
  *a3 = 0;
  v4 = *(*a2 + 8);
  if (v4)
  {
    v6 = (*(*a2 + 16))(a1);
    if (v6)
    {
      if (asprintf(a3, "%s:%s", v4, v6) == -1)
      {
        v7 = 12;
        krb5_set_error_message(a1, 12, "malloc: out of memory");
        *a3 = 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v7 = 2529639051;
      krb5_set_error_message(a1, -1765328245, "cache of type %s have no name");
    }
  }

  else
  {
    v7 = 2529639052;
    krb5_set_error_message(a1, -1765328244, "cache have no name of type");
  }

  return v7;
}

uint64_t krb5_cc_switch(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 176);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

krb5_error_code krb5_cc_set_default_name(krb5_context a1, const char *a2)
{
  v34 = 0;
  v33 = 0;
  if (a2)
  {
    v3 = strdup(a2);
    v34 = v3;
    *(a1 + 80) = 1;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_34:
    v4 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v4;
  }

  if (issuid())
  {
    goto LABEL_8;
  }

  v20 = getenv("KRB5CCPRINCIPAL");
  if (v20)
  {
    v21 = v20;
    id = 0;
    v32 = 0;
    if (*v20 == 64)
    {
      v22 = malloc_type_calloc(1uLL, 0x20uLL, 0x10900408A8AD7E9uLL);
      v32 = v22;
      if (!v22)
      {
        return krb5_enomem(a1);
      }

      v23 = v22;
      v24 = strdup(v21 + 1);
      v23->data = v24;
      if (!v24)
      {
        free(v23);
        return krb5_enomem(a1);
      }
    }

    else
    {
      v4 = krb5_parse_name(a1, v20, &v32);
      if (v4)
      {
        return v4;
      }

      v23 = v32;
    }

    if (!krb5_cc_cache_match(a1, v23, &id))
    {
      v27 = id;
      krb5_cc_get_full_name(a1, id, &v34);
      (*(*v27 + 56))(a1, v27);
      free(v27);
    }

    v28 = v34;
    if (v34)
    {
LABEL_27:
      if (*(a1 + 39))
      {
        free(*(a1 + 39));
        v28 = v34;
      }

      *(a1 + 39) = strdup(v28);
      goto LABEL_33;
    }
  }

  v29 = getenv("KRB5CCNAME");
  if (v29)
  {
    v28 = strdup(v29);
    v34 = v28;
    if (!v28)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

LABEL_8:
  string = krb5_config_get_string(a1, 0, v6, v7, v8, v9, v10, v11, "libdefaults");
  if (string)
  {
    v19 = _krb5_expand_default_cc_name_0(a1, string, &v34);
    if (!v19)
    {
      goto LABEL_33;
    }

    return v19;
  }

  v25 = krb5_config_get_string(a1, 0, v13, v14, v15, v16, v17, v18, "libdefaults");
  if (v25)
  {
    prefix_ops = krb5_cc_get_prefix_ops(a1, v25);
    if (!prefix_ops)
    {
      v4 = -1765328244;
      krb5_set_error_message(a1, -1765328244, "Credential cache type %s is unknown");
      return v4;
    }
  }

  else
  {
    prefix_ops = &krb5_xcc_ops;
  }

  v19 = prefix_ops[21](a1, &v34);
  if (v19)
  {
    return v19;
  }

LABEL_33:
  *(a1 + 80) = 0;
  v3 = v34;
  if (!v34)
  {
    goto LABEL_34;
  }

LABEL_3:
  v4 = _krb5_expand_default_cc_name_0(a1, v3, &v33);
  free(v34);
  if (!v4)
  {
    v5 = *(a1 + 38);
    if (v5)
    {
      free(v5);
    }

    v4 = 0;
    *(a1 + 38) = v33;
  }

  return v4;
}

krb5_error_code krb5_cc_cache_match(krb5_context context, krb5_principal client, krb5_ccache *id)
{
  ccache = 0;
  cursor = 0;
  *id = 0;
  v6 = krb5_cccol_cursor_new(context, &cursor);
  if (!v6)
  {
    v7 = cursor;
    v8 = krb5_cccol_cursor_next(context, cursor, &ccache);
    v9 = ccache;
    v10 = 0;
    if (v8)
    {
      v11 = 1;
    }

    else
    {
      v11 = ccache == 0;
    }

    if (!v11)
    {
      while (1)
      {
        v17 = 0;
        v18 = 0;
        if ((*(*v9 + 80))(context) || (!client->realm.magic ? (v14 = v18, v13 = strcmp(client->data, v18->data) == 0) : (v13 = krb5_principal_compare(context, v18, client), v14 = v18), krb5_free_principal(context, v14), !v13))
        {
          v12 = ccache;
          if (ccache)
          {
            (*(*ccache + 56))(context, ccache);
            free(v12);
          }
        }

        else
        {
          if (v10 || !krb5_cc_get_lifetime(context, ccache, &v17) && v17)
          {
            break;
          }

          v10 = ccache;
        }

        ccache = 0;
        if (!krb5_cccol_cursor_next(context, v7, &ccache))
        {
          v9 = ccache;
          if (ccache)
          {
            continue;
          }
        }

        break;
      }
    }

    krb5_cccol_cursor_free(context, &cursor);
    if (!ccache && v10)
    {
      goto LABEL_24;
    }

    if (v10)
    {
      (*(*v10 + 56))(context, v10);
      free(v10);
      v10 = ccache;
LABEL_24:
      v6 = 0;
      *id = v10;
      return v6;
    }

    v10 = ccache;
    if (ccache)
    {
      goto LABEL_24;
    }

    v6 = -1765328243;
    v18 = 0;
    krb5_unparse_name(context, client, &v18);
    v16 = v18;
    if (!v18)
    {
      v16 = "<out of memory>";
    }

    krb5_set_error_message(context, -1765328243, "Principal %s not found in any credential cache", v16);
    if (v18)
    {
      free(v18);
    }
  }

  return v6;
}

krb5_error_code krb5_cc_close(krb5_context context, krb5_ccache cache)
{
  v3 = (*(*cache + 56))(context);
  free(cache);
  return v3;
}

const char *__cdecl krb5_cc_default_name(krb5_context a1)
{
  v2 = *(a1 + 38);
  if (!v2)
  {
    goto LABEL_14;
  }

  if (*(a1 + 80))
  {
    return *(a1 + 38);
  }

  if (!strncmp(*(a1 + 38), "KCM:", 4uLL) || !strncmp(v2, "API:", 4uLL) || !strncmp(v2, "XCACHE:", 4uLL) || !strncmp(v2, "KCC:", 4uLL))
  {
LABEL_14:
    krb5_cc_set_default_name(a1, 0);
    return *(a1 + 38);
  }

  if (issuid())
  {
    return *(a1 + 38);
  }

  v3 = getenv("KRB5CCNAME");
  v4 = *(a1 + 39);
  if (!v3)
  {
    if (!v4)
    {
      return *(a1 + 38);
    }

    free(*(a1 + 39));
    *(a1 + 39) = 0;
    goto LABEL_14;
  }

  if (!v4 || strcmp(v3, v4))
  {
    goto LABEL_14;
  }

  return *(a1 + 38);
}

krb5_error_code krb5_cc_default(krb5_context a1, krb5_ccache *a2)
{
  v4 = krb5_cc_default_name(a1);
  if (v4)
  {

    return krb5_cc_resolve(a1, v4, a2);
  }

  else
  {
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return 12;
  }
}

krb5_error_code krb5_cc_destroy(krb5_context context, krb5_ccache cache)
{
  v4 = (*(*cache + 48))();
  (*(*cache + 56))(context, cache);
  free(cache);
  return v4;
}

uint64_t sub_25224BF2C(_krb5_context *a1, uint64_t a2, int a3, uint64_t a4, krb5_creds *a5)
{
  v13 = 0;
  v10 = (*(*a2 + 88))();
  if (!v10)
  {
    while (1)
    {
      v11 = (*(*a2 + 96))(a1, a2, &v13, a5);
      if (v11)
      {
        v10 = v11;
        goto LABEL_7;
      }

      if (krb5_compare_creds(a1, a3, a4, a5))
      {
        break;
      }

      krb5_free_cred_contents(a1, a5);
    }

    v10 = 0;
LABEL_7:
    (*(*a2 + 104))(a1, a2, &v13);
  }

  return v10;
}

krb5_error_code krb5_cc_remove_cred(krb5_context context, krb5_ccache cache, krb5_flags flags, krb5_creds *creds)
{
  v5 = *(*cache + 112);
  if (v5)
  {

    return v5(context);
  }

  else
  {
    krb5_set_error_message(context, 13, "ccache %s does not support remove_cred", *(*cache + 8));
    return 13;
  }
}

uint64_t krb5_cc_copy_match_f(_krb5_context *a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(_krb5_context *, uint64_t, _BYTE *), uint64_t a5, _DWORD *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  v12 = (*(*a2 + 80))(a1, a2, &v16);
  if (!v12)
  {
    v13 = (*(*a3 + 40))(a1, a3, v16);
    if (v13 || (v13 = (*(*a2 + 88))(a1, a2, &v18), v13))
    {
      v12 = v13;
      krb5_free_principal(a1, v16);
    }

    else
    {
      while (1)
      {
        v15 = (*(*a2 + 96))(a1, a2, &v18, v17);
        if (v15)
        {
          break;
        }

        if (!a4 || a4(a1, a5, v17))
        {
          if (a6)
          {
            ++*a6;
          }

          v15 = (*(*a3 + 64))(a1, a3, v17);
          if (v15)
          {
            break;
          }
        }

        krb5_free_cred_contents(a1, v17);
      }

      LODWORD(v12) = v15;
      (*(*a2 + 104))(a1, a2, &v18);
      krb5_free_principal(a1, v16);
      if (v12 == -1765328242)
      {
        return 0;
      }

      else
      {
        return v12;
      }
    }
  }

  return v12;
}

uint64_t krb5_cc_get_version(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 128);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

double krb5_cc_clear_mcred(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t krb5_cc_cache_get_first(_krb5_context *a1, char *__s1, void **a3)
{
  v4 = __s1;
  if (!__s1)
  {
    v4 = krb5_cc_default_name(a1);
  }

  prefix_ops = krb5_cc_get_prefix_ops(a1, v4);
  if (prefix_ops)
  {
    v7 = prefix_ops;
    if (prefix_ops[17])
    {
      v8 = malloc_type_calloc(1uLL, 0x10uLL, 0xE00402B90B96AuLL);
      *a3 = v8;
      if (v8)
      {
        *v8 = v7;
        v9 = (v7[17])(a1, *a3 + 8);
        if (v9)
        {
          free(*a3);
          *a3 = 0;
        }
      }

      else
      {
        v9 = 12;
        krb5_set_error_message(a1, 12, "malloc: out of memory");
      }
    }

    else
    {
      v10 = prefix_ops[1];
      v9 = 2529639159;
      krb5_set_error_message(a1, -1765328137, "Credential cache type %s doesn't support iterations over caches");
    }
  }

  else
  {
    v9 = 2529639052;
    krb5_set_error_message(a1, -1765328244, "Unknown type %s when iterating trying to iterate the credential caches");
  }

  return v9;
}

uint64_t krb5_cc_cache_end_seq_get(uint64_t a1, void *a2)
{
  v3 = (*(*a2 + 152))(a1, a2[1]);
  free(a2);
  return v3;
}

krb5_error_code krb5_cccol_cursor_new(krb5_context context, krb5_cccol_cursor *cursor)
{
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x1030040EC63B64AuLL);
  *cursor = v4;
  if (v4)
  {
    v5 = 0;
    *v4 = -1;
  }

  else
  {
    v5 = 12;
    krb5_set_error_message(context, 12, "malloc: out of memory");
  }

  return v5;
}

krb5_error_code krb5_cccol_cursor_next(krb5_context context, krb5_cccol_cursor cursor, krb5_ccache *ccache)
{
  *ccache = 0;
  v6 = *cursor;
  if (*cursor != -1)
  {
    goto LABEL_2;
  }

  v16 = getenv("KRB5CCNAME");
  *cursor = 0;
  if (!v16)
  {
    v6 = 0;
    goto LABEL_2;
  }

  if (krb5_cc_resolve(context, v16, ccache))
  {
    v6 = *cursor;
LABEL_2:
    v7 = -1765328242;
    while (1)
    {
      if (v6 >= *(context + 44))
      {
LABEL_15:
        if (*cursor < *(context + 44))
        {
          return 0;
        }

        krb5_set_error_message(context, -1765328242, "Reached end of credential caches");
        return v7;
      }

      v8 = *(cursor + 1);
      if (!v8)
      {
        if (krb5_cc_cache_get_first(context, *(*(*(context + 21) + 8 * v6) + 8), cursor + 1))
        {
          goto LABEL_9;
        }

        v8 = *(cursor + 1);
      }

      v9 = (*(*v8 + 144))(context, v8[1], ccache);
      if (v9)
      {
        v10 = v9;
        v11 = *(cursor + 1);
        (*(*v11 + 152))(context, v11[1]);
        free(v11);
        *(cursor + 1) = 0;
        if (v10 != -1765328242)
        {
          goto LABEL_15;
        }

LABEL_9:
        v6 = *cursor + 1;
        *cursor = v6;
      }

      else
      {
        if (!*(cursor + 2))
        {
          goto LABEL_15;
        }

        __s2 = 0;
        if (krb5_cc_get_full_name(context, *ccache, &__s2))
        {
          goto LABEL_15;
        }

        v12 = __s2;
        v13 = strcmp(*(cursor + 2), __s2);
        free(v12);
        if (v13)
        {
          goto LABEL_15;
        }

        v14 = *ccache;
        (*(**ccache + 56))(context, *ccache);
        free(v14);
        *ccache = 0;
        v6 = *cursor;
      }
    }
  }

  krb5_cc_get_full_name(context, *ccache, cursor + 2);
  return 0;
}

uint64_t krb5_cc_get_lifetime(_krb5_context *a1, uint64_t a2, void *a3)
{
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *v14 = 0u;
  *a3 = 0;
  v6 = time(0);
  v7 = (*(*a2 + 88))(a1, a2, &v23);
  if (!v7)
  {
    v7 = (*(*a2 + 96))(a1, a2, &v23, v14);
    if (v7)
    {
      goto LABEL_21;
    }

    v8 = 0;
    while (1)
    {
      is_root_krbtgt = krb5_principal_is_root_krbtgt(a1, v14[1]);
      if (is_root_krbtgt)
      {
        break;
      }

      if (!krb5_is_config_principal(is_root_krbtgt, v14[1]) && (*(&v17 + 1) < v8 || v8 == 0) && v6 < *(&v17 + 1))
      {
        v8 = *(&v17 + 1);
      }

      krb5_free_cred_contents(a1, v14);
      v10 = (*(*a2 + 96))(a1, a2, &v23, v14);
      if (v10)
      {
        v7 = v10;
        if (!v8)
        {
          goto LABEL_21;
        }

LABEL_20:
        v7 = 0;
        *a3 = v8 - v6;
        goto LABEL_21;
      }
    }

    if (v6 < *(&v17 + 1))
    {
      v8 = *(&v17 + 1);
    }

    krb5_free_cred_contents(a1, v14);
    v7 = 0;
    if (v8)
    {
      goto LABEL_20;
    }

LABEL_21:
    (*(*a2 + 104))(a1, a2, &v23);
  }

  return v7;
}

krb5_error_code krb5_cccol_cursor_free(krb5_context context, krb5_cccol_cursor *cursor)
{
  v2 = *cursor;
  *cursor = 0;
  if (v2)
  {
    v3 = *(v2 + 1);
    if (v3)
    {
      (*(*v3 + 152))(context, v3[1]);
      free(v3);
    }

    v4 = *(v2 + 2);
    if (v4)
    {
      free(v4);
    }

    free(v2);
  }

  return 0;
}

krb5_error_code krb5_cc_move(krb5_context context, krb5_ccache src, krb5_ccache dst)
{
  v6 = *(*src + 8);
  v7 = *dst;
  v8 = *(*dst + 8);
  v9 = strcmp(v6, v8);
  v10 = *(v7 + 288);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  else if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10(context, src);
  v7 = *dst;
  if (!v11)
  {
    v6 = *(*src + 8);
    v8 = *(v7 + 8);
LABEL_9:
    v12 = -1765328137;
    krb5_set_error_message(context, -1765328137, "Moving credentials between different types not yet supported (from %s to %s)", v6, v8);
    return v12;
  }

LABEL_6:
  v12 = (*(v7 + 160))(context, src, dst);
  if (!v12)
  {
    *src = 0;
    *(src + 1) = 0;
    *(src + 2) = 0;
    free(src);
  }

  return v12;
}

krb5_error_code krb5_cc_set_config(krb5_context a1, krb5_ccache a2, krb5_const_principal a3, const char *a4, krb5_data *a5)
{
  memset(v14, 0, sizeof(v14));
  v8 = sub_25224CA10(a1, a2, a3, a4, v14);
  if (v8)
  {
LABEL_2:
    v9 = v8;
    goto LABEL_3;
  }

  v11 = krb5_cc_remove_cred(a1, a2, 0, v14);
  v9 = v11;
  if (v11)
  {
    v12 = v11 == -1765328243;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (a5 && v13)
  {
    *&v14[40] = time(0) - 10;
    *&v14[56] = *&v14[40];
    v8 = krb5_data_copy(&v14[72], a5->data, *&a5->magic);
    if (!v8)
    {
      v8 = (*(*a2 + 64))(a1, a2, v14);
    }

    goto LABEL_2;
  }

LABEL_3:
  krb5_free_cred_contents(a1, v14);
  return v9;
}

uint64_t sub_25224CA10(_krb5_context *a1, uint64_t a2, const krb5_principal_data *a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  v9 = (*(*a2 + 80))();
  if (v9)
  {
    return v9;
  }

  if (a3)
  {
    v9 = krb5_unparse_name(a1, a3, &v14);
    if (v9)
    {
      return v9;
    }

    v11 = v14;
  }

  else
  {
    v11 = 0;
  }

  principal = krb5_make_principal(a1, (a5 + 8), "X-CACHECONF:", "krb5_ccache_conf_data", a4, v11, 0);
  free(v14);
  v12 = v15;
  if (!principal)
  {
    principal = krb5_copy_principal(a1, v15, a5);
    v12 = v15;
  }

  krb5_free_principal(a1, v12);
  return principal;
}

krb5_error_code krb5_cc_get_config(krb5_context a1, krb5_ccache a2, krb5_const_principal a3, const char *a4, krb5_data *a5)
{
  v18 = 0u;
  memset(mcreds, 0, sizeof(mcreds));
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  krb5_data_zero(a5);
  cred = sub_25224CA10(a1, a2, a3, a4, mcreds);
  if (!cred)
  {
    cred = krb5_cc_retrieve_cred(a1, a2, 0, mcreds, v13);
    if (!cred)
    {
      cred = krb5_data_copy(a5, v15, *(&v14 + 1));
    }
  }

  v11 = cred;
  krb5_free_cred_contents(a1, v13);
  krb5_free_cred_contents(a1, mcreds);
  return v11;
}

krb5_error_code krb5_cccol_last_change_time(krb5_context context, krb5_timestamp *change_time)
{
  v3 = v2;
  ccache = 0;
  cursor = 0;
  v14 = 0;
  *v2 = 0;
  result = krb5_cccol_cursor_new(context, &cursor);
  if (!result)
  {
    v7 = cursor;
    v8 = krb5_cccol_cursor_next(context, cursor, &ccache);
    v9 = ccache;
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = ccache == 0;
    }

    if (!v10)
    {
      do
      {
        v11 = *v9;
        if (!change_time || !strcmp(*(v11 + 8), change_time))
        {
          v14 = 0;
          v12 = (*(v11 + 184))(context, v9, &v14);
          v13 = ccache;
          (*(*ccache + 56))(context, ccache);
          free(v13);
          if (!v12 && v14 > *v3)
          {
            *v3 = v14;
          }
        }

        if (krb5_cccol_cursor_next(context, v7, &ccache))
        {
          break;
        }

        v9 = ccache;
      }

      while (ccache);
    }

    krb5_cccol_cursor_free(context, &cursor);
    return 0;
  }

  return result;
}

uint64_t krb5_cc_get_friendly_name(_krb5_context *a1, _krb5_ccache *a2, char **a3)
{
  *&v11.magic = 0;
  v11.data = 0;
  if (krb5_cc_get_config(a1, a2, 0, "FriendlyName", &v11))
  {
    v10 = 0;
    v6 = (*(*a2 + 80))(a1, a2, &v10);
    if (v6)
    {
      return v6;
    }

    else
    {
      v7 = krb5_unparse_name(a1, v10, a3);
      krb5_free_principal(a1, v10);
    }
  }

  else
  {
    v8 = asprintf(a3, "%.*s", v11.magic, v11.data);
    krb5_data_free(&v11);
    if (v8 <= 0)
    {
      v7 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t krb5_cc_set_friendly_name(_krb5_context *a1, _krb5_ccache *a2, char *__s)
{
  v6.data = __s;
  *&v6.magic = strlen(__s);
  return krb5_cc_set_config(a1, a2, 0, "FriendlyName", &v6);
}

uint64_t krb5_cc_set_kdc_offset(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(*a2 + 192);
  if (v3)
  {
    return v3();
  }

  *(a1 + 108) = a3;
  *(a1 + 112) = 0;
  return 0;
}

uint64_t krb5_cc_get_kdc_offset(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a2 + 200);
  if (v3)
  {
    return v3();
  }

  *a3 = *(a1 + 108);
  return 0;
}

uint64_t krb5_cc_hold(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 208);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t krb5_cc_unhold(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 216);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t krb5_cc_get_uuid(_krb5_context *a1, uint64_t a2)
{
  v3 = *(*a2 + 224);
  if (v3)
  {

    return v3();
  }

  else
  {
    krb5_set_error_message(a1, -1765328244, "Credential cache type %s doesn't support uuid", *(*a2 + 8));
    return 2529639052;
  }
}

uint64_t krb5_cc_resolve_by_uuid(_krb5_context *a1, char *a2, void *a3)
{
  if (a2)
  {
    prefix_ops = krb5_cc_get_prefix_ops(a1, a2);
    if (!prefix_ops)
    {
      v6 = 2529639052;
      krb5_set_error_message(a1, -1765328244, "Credential cache type %s is unknown");
      return v6;
    }
  }

  else
  {
    prefix_ops = &krb5_xcc_ops;
  }

  if (prefix_ops[29])
  {
    v6 = sub_25224B218(a1, prefix_ops, a3);
    if (!v6)
    {
      v6 = (*(**a3 + 232))(a1);
      if (v6)
      {
        free(*a3);
        *a3 = 0;
      }
    }
  }

  else
  {
    v6 = 2529639052;
    v7 = prefix_ops[1];
    krb5_set_error_message(a1, -1765328244, "Credential cache type %s doesn't support uuid");
  }

  return v6;
}

uint64_t krb5_cc_set_acl(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 256);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

krb5_error_code krb5_set_password(krb5_context context, krb5_creds *creds, char *newpw, krb5_principal change_password_for, int *result_code, krb5_data *result_code_string, krb5_data *result_string)
{
  *result_code = 1;
  krb5_data_zero(result_code_string);
  krb5_data_zero(result_string);
  sub_25226B748(context, 1, "trying to set password");
  v13 = 0;
  v14 = &off_286472A40;
  v34 = 0;
  v35 = creds;
  v36 = change_password_for;
  v37 = newpw;
  while (1)
  {
    if (change_password_for && (v14[1] & 4) == 0)
    {
      goto LABEL_15;
    }

    v40[0] = 0;
    v40[1] = 0;
    v39[0] = 0;
    v39[1] = 0;
    *v38 = 0;
    krb5_data_zero(v40);
    krb5_data_zero(v39);
    v15 = v36;
    if (!v36)
    {
      v15 = *&v35->magic;
    }

    data = v15->data;
    sub_25226B748(context, 1, "trying to set password using: %s in realm %s", *v14, data);
    v17 = krb5_auth_con_init(context, &v34);
    if (v17 || (krb5_auth_con_setflags(context, v34, 4), (v17 = krb5_sendto_ctx_alloc(context, v38, v18, v19, v20, v21, v22, v23)) != 0))
    {
      v13 = v17;
      goto LABEL_9;
    }

    krb5_sendto_ctx_set_type(*v38, 3);
    if (v35->addresses >= 0x2BD)
    {
      sub_25226B748(context, 1, "using TCP since the ticket is large: %lu", v35->addresses);
      krb5_sendto_ctx_add_flags(*v38, 2);
    }

    sub_25227A1E4(*v38, v14[2], &v34);
    ImpersonateBundle = HeimCredGetImpersonateBundle();
    if (ImpersonateBundle)
    {
      if ((*(context + 360) & 0x10) == 0)
      {
        v27 = ImpersonateBundle;
        MainBundle = CFBundleGetMainBundle();
        if (MainBundle)
        {
          Identifier = CFBundleGetIdentifier(MainBundle);
          v30 = CFStringCreateWithCString(0, v27, 0x8000100u);
          v31 = v30;
          if (v30 && Identifier)
          {
            if (CFEqual(Identifier, v30))
            {
              sub_25226B748(context, 5, "Bundle identifiers match, not setting delegate");
            }

            else
            {
              krb5_sendto_set_delegated_app(0, *v38, 0, 0, v27);
            }
          }

          else if (!v30)
          {
            goto LABEL_30;
          }

          CFRelease(v31);
        }
      }
    }

LABEL_30:
    v32 = krb5_sendto_context(context, *v38, v40, data, v39);
    if (!v32)
    {
      v32 = (v14[3])(context, v34, v39, result_code, result_code_string, result_string);
    }

    v13 = v32;
LABEL_9:
    sub_25226B748(context, 1, "set password using %s returned: %d result_code %d", *v14, v13, *result_code);
    krb5_auth_con_free(context, v34);
    if (*v38)
    {
      krb5_sendto_ctx_free(context, *v38);
    }

    krb5_data_free(v39);
    if (v13 != -1765328228)
    {
      break;
    }

    krb5_set_error_message(context, -1765328228, "Unable to reach any changepw server  in realm %s", data);
    *result_code = 2;
    v13 = -1765328228;
LABEL_15:
    v25 = v14[4];
    v14 += 4;
    result = v13;
    if (!v25)
    {
      return result;
    }
  }

  if (v13)
  {
    goto LABEL_15;
  }

  result = 0;
  if (*result_code)
  {
    goto LABEL_15;
  }

  return result;
}

krb5_error_code krb5_set_password_using_ccache(krb5_context context, krb5_ccache ccache, char *newpw, krb5_principal change_password_for, int *result_code, krb5_data *result_code_string, krb5_data *result_string)
{
  v20 = 0;
  creds = 0;
  *result_code = 1;
  krb5_data_zero(result_code_string);
  krb5_data_zero(result_string);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *principal = 0u;
  if (change_password_for)
  {
    v20 = change_password_for;
    v14 = change_password_for;
  }

  else
  {
    credentials = krb5_cc_get_principal(context, ccache, &v20);
    if (credentials)
    {
      return credentials;
    }

    v14 = v20;
  }

  realm = krb5_principal_get_realm(context, v14);
  credentials = krb5_make_principal(context, &principal[1], realm, "kadmin", "changepw", 0);
  if (!credentials)
  {
    v17 = krb5_cc_get_principal(context, ccache, principal);
    if (v17)
    {
      credentials = v17;
      krb5_free_principal(context, principal[1]);
    }

    else
    {
      credentials = krb5_get_credentials(context, 0, ccache, principal, &creds);
      krb5_free_principal(context, principal[1]);
      krb5_free_principal(context, principal[0]);
      v18 = creds;
      if (!credentials)
      {
        credentials = krb5_set_password(context, creds, newpw, change_password_for, result_code, result_code_string, result_string);
        v18 = creds;
      }

      if (v18)
      {
        krb5_free_creds(context, v18);
      }
    }
  }

  if (!change_password_for)
  {
    krb5_free_principal(context, v20);
  }

  return credentials;
}

const char *krb5_passwd_result_to_string(uint64_t a1, unsigned int a2)
{
  if (a2 <= 7)
  {
    return off_2796FF3D8[a2];
  }

  else
  {
    return "unknown result code";
  }
}

uint64_t sub_25224D4F4(_krb5_context *a1, uint64_t a2, uint64_t a3, int a4, size_t *a5)
{
  *&v27.magic = 0;
  v27.data = 0;
  *&v26.magic = 0;
  v26.data = 0;
  *&v25.magic = 0;
  v25.data = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  krb5_data_zero(&v27);
  krb5_data_zero(&v26);
  krb5_data_zero(&v25);
  v9 = krb5_auth_con_genaddrs(a1, *a3, a4, 1);
  if (v9)
  {
    goto LABEL_3;
  }

  v9 = krb5_mk_req_extended(a1, a3, 6, 0, *(a3 + 8), &v27);
  if (v9)
  {
    goto LABEL_3;
  }

  v12 = *(a3 + 24);
  *&v23 = strlen(v12);
  *(&v23 + 1) = v12;
  v13 = *(a3 + 16);
  v14 = v13 + 24;
  if (!v13)
  {
    v14 = 0;
  }

  *&v24 = *(a3 + 16);
  *(&v24 + 1) = v14;
  *&v25.magic = sub_25228B39C(&v23);
  v15 = malloc_type_malloc(*&v25.magic, 0xDDAD2E7BuLL);
  v25.data = v15;
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = sub_25228B37C(&v15[*&v25.magic - 1], *&v25.magic, &v23, &v22);
  if (v16)
  {
    v10 = v16;
    free(v25.data);
    v25.data = 0;
    goto LABEL_4;
  }

  if (*&v25.magic != v22)
  {
    krb5_abortx(a1, "internal error in ASN.1 encoder");
  }

  v9 = krb5_mk_priv(a1, *a3, &v25, &v26, 0);
  if (!v9)
  {
    v17 = krb5_storage_emem();
    if (v17)
    {
      v18 = v17;
      v22 = *&v27.magic + *&v26.magic + 6;
      v19 = krb5_store_uint16(v17, LOWORD(v27.magic) + LOWORD(v26.magic) + 6);
      if (v19 || (v19 = krb5_store_uint16(v18, 65408), v19) || (v19 = krb5_store_uint16(v18, v27.magic), v19))
      {
        v10 = v19;
      }

      else
      {
        v20 = krb5_storage_write(v18);
        v10 = 22;
        if ((v20 & 0x8000000000000000) == 0 && v20 == *&v27.magic)
        {
          v21 = krb5_storage_write(v18);
          v10 = 22;
          if ((v21 & 0x8000000000000000) == 0 && v21 == *&v26.magic)
          {
            v10 = krb5_storage_to_data(v18, a5);
            if (!v10)
            {
              goto LABEL_19;
            }
          }
        }
      }

      sub_25226B748(a1, 10, "setpw_prexmit failed with %d", v10);
LABEL_19:
      krb5_storage_free(v18);
      goto LABEL_5;
    }

LABEL_20:
    v10 = 12;
    goto LABEL_4;
  }

LABEL_3:
  v10 = v9;
LABEL_4:
  sub_25226B748(a1, 10, "setpw_prexmit failed with %d", v10);
LABEL_5:
  krb5_data_free(&v26);
  krb5_data_free(&v27);
  krb5_data_free(&v25);
  return v10;
}

uint64_t sub_25224D754(_krb5_context *a1, _krb5_auth_context *a2, uint64_t *a3, _DWORD *a4, krb5_data *a5, void *a6)
{
  sub_25224A260(a1, a2, 3);
  v18 = *a3;
  if (*a3 <= 5)
  {
    v35 = *a3;
    v19 = "server sent to too short message (%ld bytes)";
LABEL_3:
    sub_252254AC4(a6, v19, v12, v13, v14, v15, v16, v17, v35);
LABEL_4:
    v20 = 0;
    *a4 = 1;
    return v20;
  }

  v22 = a3[1];
  v23 = v22[1];
  if (v18 == (v23 | (*v22 << 8)) && (v23 | 0x20) != 0x7E)
  {
    v24 = __rev16(*(v22 + 1));
    if (v24 != 1)
    {
      sub_252254AC4(a6, "client: wrong version number (%d)", v12, v13, v14, v15, v16, v17, v24);
      goto LABEL_4;
    }

    v38.data = (v22 + 6);
    v25 = __rev16(*(v22 + 2));
    *&v38.magic = v25;
    if (&v22[v18] < &v22[v25 + 6])
    {
      v19 = "client: wrong AP len in reply";
      goto LABEL_3;
    }

    if (v25)
    {
      v36.data = &v22[v25 + 6];
      v37 = 0;
      *&v36.magic = v18 - v25 - 6;
      v20 = krb5_rd_rep(a1, a2, &v38, &v37);
      if (!v20)
      {
        krb5_free_ap_rep_enc_part(a1, v37);
        v26 = krb5_rd_priv(a1, a2, &v36, a5, 0);
        if (v26)
        {
          v20 = v26;
          krb5_data_free(a5);
        }

        else
        {
          v33 = *&a5->magic;
          if (*&a5->magic > 1uLL)
          {
            data = a5->data;
            *a4 = __rev16(*data);
            krb5_data_copy(a6, data + 2, v33 - 2);
          }

          else
          {
            *a4 = 1;
            sub_252254AC4(a6, "client: bad length in result", v27, v28, v29, v30, v31, v32, v35);
          }

          return 0;
        }
      }

      return v20;
    }
  }

  return sub_25224DAEC(v22, v18, a4, a6);
}

uint64_t sub_25224D930(_krb5_context *a1, uint64_t a2, uint64_t a3, int a4, size_t *a5)
{
  *&v19.magic = 0;
  v19.data = 0;
  *&v18.magic = 0;
  v18.data = 0;
  *&v17.magic = 0;
  v17.data = 0;
  krb5_data_zero(&v19);
  krb5_data_zero(&v18);
  v9 = krb5_auth_con_genaddrs(a1, *a3, a4, 1);
  if (!v9)
  {
    v9 = krb5_mk_req_extended(a1, a3, 6, 0, *(a3 + 8), &v19);
    if (!v9)
    {
      v17.data = *(a3 + 24);
      *&v17.magic = strlen(v17.data);
      v9 = krb5_mk_priv(a1, *a3, &v17, &v18, 0);
      if (!v9)
      {
        v12 = krb5_storage_emem();
        if (!v12)
        {
          v10 = 12;
          goto LABEL_5;
        }

        v13 = v12;
        v14 = krb5_store_uint16(v12, LOWORD(v19.magic) + LOWORD(v18.magic) + 6);
        if (v14 || (v14 = krb5_store_uint16(v13, 1), v14) || (v14 = krb5_store_uint16(v13, v19.magic), v14))
        {
          v10 = v14;
        }

        else
        {
          v15 = krb5_storage_write(v13);
          v10 = 22;
          if ((v15 & 0x8000000000000000) == 0 && v15 == *&v19.magic)
          {
            v16 = krb5_storage_write(v13);
            v10 = 22;
            if ((v16 & 0x8000000000000000) == 0 && v16 == *&v18.magic)
            {
              v10 = krb5_storage_to_data(v13, a5);
              if (!v10)
              {
                goto LABEL_13;
              }
            }
          }
        }

        sub_25226B748(a1, 10, "chgpw_prexmit failed with: %d", v10);
LABEL_13:
        krb5_storage_free(v13);
        goto LABEL_6;
      }
    }
  }

  v10 = v9;
LABEL_5:
  sub_25226B748(a1, 10, "chgpw_prexmit failed with: %d", v10);
LABEL_6:
  krb5_data_free(&v18);
  krb5_data_free(&v19);
  return v10;
}

uint64_t sub_25224DAEC(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v18 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v12 = sub_25228B2FC(a1, a2, v19, &v18);
  if (!v12)
  {
    if (v24)
    {
      v13 = *v24;
      if (*v24 <= 1)
      {
        sub_252254AC4(a4, "server sent too short e_data to print anything usable", v6, v7, v8, v9, v10, v11, v17);
        sub_25228B34C(v19);
        v12 = 0;
        *a3 = 1;
        return v12;
      }

      v14 = v24[1];
      *a3 = __rev16(*v14);
      v15 = v13 - 2;
      if (v13 == 2)
      {
        sub_252254AC4(a4, "server only sent error code", v15, v7, v8, v9, v10, v11, v17);
      }

      else
      {
        krb5_data_copy(a4, v14 + 1, v15);
      }

      v12 = 0;
    }

    else
    {
      v12 = DWORD1(v20);
    }

    sub_25228B34C(v19);
  }

  return v12;
}

void *sub_25224DBD8(void *a1, char *__s1, int a3)
{
  v5 = a1;
  v6 = *a1;
  if (*a1)
  {
    while (1)
    {
      v7 = v6;
      if (a3 == 1 && *v6 == 1 && !strcmp(__s1, *(v6 + 8)))
      {
        break;
      }

      v6 = v7[2];
      if (!v6)
      {
        v5 = v7 + 2;
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x10B20403397373FuLL);
    *v5 = v7;
    if (v7)
    {
      v7[1] = strdup(__s1);
      v7 = *v5;
      *v7 = a3;
      if (!v7[1])
      {
        free(v7);
        v7 = 0;
        *v5 = 0;
      }
    }
  }

  return v7;
}

uint64_t krb5_config_parse_file_multi(_krb5_context *a1, char *__s1, void *a3)
{
  v4 = __s1;
  v46 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  __s = 0;
  v40 = 0;
  if (*__s1 == 126 && __s1[1] == 47)
  {
    if (!krb5_homedir_access(a1))
    {
      v9 = 1;
      krb5_set_error_message(a1, 1, "Access to home directory not allowed");
      goto LABEL_53;
    }

    if (!issuid() && (pw_dir = getenv("HOME")) != 0 || (v6 = getuid(), (v7 = getpwuid(v6)) != 0) && (pw_dir = v7->pw_dir) != 0)
    {
      asprintf(&v42, "%s%s", pw_dir, v4 + 1);
      v4 = v42;
      if (!v42)
      {
        v9 = 12;
        krb5_set_error_message(a1, 12, "malloc: out of memory", v32, v34);
        goto LABEL_53;
      }
    }
  }

  v9 = _krb5_expand_default_cc_name_0(a1, v4, &__s);
  if (v9)
  {
    goto LABEL_53;
  }

  v10 = __s;
  v11 = strlen(__s);
  if (v11 >= 7 && !strcasecmp(&__s[v11 - 6], ".plist"))
  {
    v23 = *MEMORY[0x277CBECE8];
    v24 = strlen(v10);
    v25 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE8], v10, v24, 0);
    if (v25 && (v26 = v25, v27 = CFReadStreamCreateWithFile(v23, v25), CFRelease(v26), v27))
    {
      if (CFReadStreamOpen(v27))
      {
        v28 = CFPropertyListCreateWithStream(0, v27, 0, 0, 0, 0);
        CFRelease(v27);
        if (v28)
        {
          CFDictionaryApplyFunction(v28, sub_25224E8EC, a3);
          CFRelease(v28);
          goto LABEL_34;
        }
      }

      else
      {
        CFRelease(v27);
      }

      v9 = 2;
    }

    else
    {
      v9 = 12;
    }

    krb5_clear_error_message(a1);
    v33 = v10;
    v22 = "Failed to parse plist %s";
    goto LABEL_52;
  }

  v38 = 0;
  v39 = fopen(v10, "r");
  if (!v39)
  {
    v21 = __error();
    v9 = *v21;
    strerror_r(*v21, __strerrbuf, 0x80uLL);
    v33 = v10;
    v34 = __strerrbuf;
    v22 = "open %s: %s";
    goto LABEL_52;
  }

  v36 = v10;
  v37 = a3;
  v44 = 0;
  if (!sub_25224EB2C(__strerrbuf, &v38))
  {
LABEL_33:
    fclose(v39);
LABEL_34:
    v9 = 0;
    goto LABEL_53;
  }

  v12 = 0;
  v13 = MEMORY[0x277D85DE0];
  while (1)
  {
    v14 = ++v40;
    __strerrbuf[strcspn(__strerrbuf, "\r\n")] = 0;
    v15 = __strerrbuf;
    do
    {
      v16 = *v15;
      if (v16 < 0)
      {
        v17 = __maskrune(*v15, 0x4000uLL);
      }

      else
      {
        v17 = *(v13 + 4 * v16 + 60) & 0x4000;
      }

      ++v15;
    }

    while (v17);
    if (v16 <= 0x3B && ((1 << v16) & 0x800000800000001) != 0)
    {
      goto LABEL_32;
    }

    if (v16 == 91)
    {
      break;
    }

    if (v16 == 125)
    {
      v29 = "unmatched }";
      goto LABEL_47;
    }

    if (!v12)
    {
      v29 = "binding before section";
      goto LABEL_47;
    }

    v18 = sub_25224EBF8(&v38, &v40, v15 - 1, &v44, v12 + 3, &v43);
    if (v18)
    {
      v9 = v18;
      v14 = v40;
      v29 = v43;
      goto LABEL_48;
    }

LABEL_32:
    if (!sub_25224EB2C(__strerrbuf, &v38))
    {
      goto LABEL_33;
    }
  }

  v19 = strchr(v15, 93);
  if (!v19)
  {
    v29 = "missing ]";
    goto LABEL_47;
  }

  *v19 = 0;
  v20 = sub_25224DBD8(v37, v15, 1);
  if (v20)
  {
    v12 = v20;
    v44 = 0;
    goto LABEL_32;
  }

  v29 = "out of memory";
LABEL_47:
  v43 = v29;
  v9 = 2529639048;
LABEL_48:
  fclose(v39);
  v34 = v14;
  v35 = v29;
  v33 = v36;
  v22 = "%s:%u: %s";
LABEL_52:
  krb5_set_error_message(a1, v9, v22, v33, v34, v35);
LABEL_53:
  if (v42)
  {
    free(v42);
  }

  if (__s)
  {
    free(__s);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_25224E108(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      free(v2[1]);
      if (*v2 == 1)
      {
        sub_25224E108(a1, v2[3]);
      }

      else
      {
        if (*v2)
        {
          krb5_abortx(a1, "unknown binding type (%u) in free_binding", *v2);
        }

        free(v2[3]);
      }

      v4 = v2[2];
      free(v2);
      v2 = v4;
    }

    while (v4);
  }
}

uint64_t sub_25224E198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  if (!a2)
  {
    a2 = *(a1 + 136);
    if (!a2)
    {
      return 0;
    }
  }

  v7 = *a3;
  if (!*a3)
  {
    if (*a5)
    {
      return sub_25224E254(a2, a3, a4, *a5, (a5 + 8));
    }

    return 0;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = *(v7 + 8);
  while (strcmp(*(v8 + 8), v9) || *v8 != v5)
  {
    v8 = *(v8 + 16);
    if (!v8)
    {
      return 0;
    }
  }

  *a3 = v8;
  return *(v8 + 24);
}

uint64_t sub_25224E254(uint64_t result, uint64_t *a2, uint64_t a3, const char *a4, uint64_t *a5)
{
  v12 = a5 + 1;
  if (result)
  {
    v8 = result;
    v9 = *a5;
    while (1)
    {
      if (!strcmp(*(v8 + 8), a4))
      {
        if (*v8 == a3 && v9 == 0)
        {
          *a2 = v8;
          return *(v8 + 24);
        }

        if (*v8 == 1 && v9 != 0)
        {
          return sub_25224E254(*(v8 + 24), a2, a3, v9, v12);
        }
      }

      v8 = *(v8 + 16);
      if (!v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t krb5_config_get_string_default(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = 0;
  result = sub_25224E198(a1, a2, &v11, 0, &a9);
  if (!result)
  {
    return a3;
  }

  return result;
}

void *sub_25224E3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  v6 = sub_25224E198(a1, a2, &v22, 0, a3);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = strdup(v6);
      v21 = 0;
      if (!v9)
      {
        break;
      }

      v10 = v9;
      v11 = sub_25224E540(v9, &v21);
      if (v11)
      {
        v12 = v11;
        v13 = v8;
        v14 = 8 * v8 + 8;
        while (1)
        {
          v15 = malloc_type_realloc(v7, v14, 0x10040436913F5uLL);
          if (!v15)
          {
            break;
          }

          v16 = v15;
          v17 = strdup(v12);
          v16[v13] = v17;
          if (!v17)
          {
            LODWORD(v13) = v13 + 1;
            v7 = v16;
            break;
          }

          v12 = sub_25224E540(0, &v21);
          ++v13;
          v14 += 8;
          v7 = v16;
          if (!v12)
          {
            v8 = v13;
            v7 = v16;
            goto LABEL_10;
          }
        }

        v8 = v13;
        break;
      }

LABEL_10:
      free(v10);
      v6 = sub_25224E198(a1, a2, &v22, 0, a3);
      if (!v6)
      {
        if (!v8)
        {
          return v7;
        }

        v18 = malloc_type_realloc(v7, 8 * v8 + 8, 0x10040436913F5uLL);
        if (v18)
        {
          v18[v8] = 0;
          return v18;
        }

        goto LABEL_17;
      }
    }

    if (!v8)
    {
      goto LABEL_19;
    }

LABEL_17:
    v19 = v8 - 1;
    do
    {
      free(*(v7 + v19--));
    }

    while (v19 != -1);
LABEL_19:
    free(v7);
  }

  return 0;
}

char *sub_25224E540(char *__s, char **a2)
{
  v3 = __s;
  if (!__s)
  {
    v3 = *a2;
  }

  v4 = *v3;
  if (!*v3)
  {
    return 0;
  }

  v5 = v3;
  while (v4 == 34)
  {
    v6 = strchr(v5 + 1, 34);
    if (v6)
    {
      v5 = v6 + 1;
    }

    else
    {
      v5 += strlen(v5);
    }

    v4 = *v5;
  }

  if (v4 && (v5 += strcspn(v5, " \t"), *v5))
  {
    *v5 = 0;
    *a2 = v5 + 1;
  }

  else
  {
    *a2 = v5;
  }

  if (*v3 == 34 && *(v5 - 1) == 34 && v3 + 1 < v5)
  {
    ++v3;
    *(v5 - 1) = 0;
  }

  return v3;
}

void krb5_config_free_strings(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = a1 + 1;
      do
      {
        free(v2);
        v4 = *v3++;
        v2 = v4;
      }

      while (v4);
    }
  }

  free(a1);
}

BOOL sub_25224E69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v5 = sub_25224E198(a1, a2, &v8, 0, a4);
  if (v5)
  {
    v6 = v5;
    return !strcasecmp(v5, "yes") || !strcasecmp(v6, "true") || atoi(v6) != 0;
  }

  return a3;
}

uint64_t sub_25224E77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = 0;
  v5 = sub_25224E198(a1, a2, &v8, 0, a4);
  if (v5 && !krb5_string_to_deltat(v5, &v7))
  {
    return v7;
  }

  return a3;
}

uint64_t sub_25224E82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __endptr = 0;
  v5 = sub_25224E198(a1, a2, &__endptr, 0, a4);
  if (v5)
  {
    v6 = v5;
    __endptr = 0;
    v7 = strtol(v5, &__endptr, 0);
    if (__endptr == v6)
    {
      return a3;
    }

    else
    {
      return v7;
    }
  }

  return a3;
}

void sub_25224E8EC(const __CFString *a1, const __CFString *a2, void *a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFStringGetTypeID())
  {
    v7 = sub_25224EA1C(a1);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(a2);
      if (v9 == CFStringGetTypeID())
      {
        v10 = sub_25224DBD8(a3, v8, 0);
        v10[3] = sub_25224EA1C(a2);
      }

      else
      {
        v11 = CFGetTypeID(a2);
        if (v11 == CFDictionaryGetTypeID())
        {
          v12 = sub_25224DBD8(a3, v8, 1);
          CFDictionaryApplyFunction(a2, sub_25224E8EC, v12 + 3);
        }

        else
        {
          v13 = CFGetTypeID(a2);
          if (v13 == CFArrayGetTypeID())
          {
            v14[0] = a3;
            v14[1] = v8;
            v15.length = CFArrayGetCount(a2);
            v15.location = 0;
            CFArrayApplyFunction(a2, v15, sub_25224EAD0, v14);
          }
        }
      }

      free(v8);
    }
  }
}

char *sub_25224EA1C(const __CFString *a1)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {

    return strdup(CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x7D853A5CuLL);
    if (v6 && !CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      free(v6);
      return 0;
    }

    return v6;
  }
}

CFTypeID sub_25224EAD0(const __CFString *a1, uint64_t a2)
{
  v4 = CFGetTypeID(a1);
  result = CFStringGetTypeID();
  if (v4 == result)
  {
    v6 = sub_25224DBD8(*a2, *(a2 + 8), 0);
    result = sub_25224EA1C(a1);
    v6[3] = result;
  }

  return result;
}

char *sub_25224EB2C(char *a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 8);
  if (v3)
  {

    return fgets(a1, 2048, v3);
  }

  else
  {
    v6 = *a2;
    if (!**a2)
    {
      return 0;
    }

    v7 = strcspn(v6, "\n");
    v8 = v6[v7];
    if (v8 == 10)
    {
      v9 = &v6[v7 + 1];
    }

    else
    {
      v9 = &v6[v7];
    }

    if (v8 == 10)
    {
      v10 = v7 + 1;
    }

    else
    {
      v10 = v7;
    }

    if (v10 >= 0x800)
    {
      v11 = 2048;
    }

    else
    {
      v11 = v10;
    }

    memcpy(v2, v6, v11);
    v2[v11] = 0;
    *a2 = v9;
    return v2;
  }
}

uint64_t sub_25224EBF8(uint64_t a1, int *a2, char *a3, void *a4, void *a5, const char **a6)
{
  v44 = *MEMORY[0x277D85DE8];
  v12 = a3 - 1;
  v13 = MEMORY[0x277D85DE0];
  while (1)
  {
    v14 = v12[1];
    if (!v12[1] || v14 == 61)
    {
      break;
    }

    if ((v14 & 0x80) != 0)
    {
      if (__maskrune(v14, 0x4000uLL))
      {
LABEL_9:
        LODWORD(v14) = v12[1];
        break;
      }
    }

    else if ((*(v13 + 4 * v14 + 60) & 0x4000) != 0)
    {
      goto LABEL_9;
    }

    ++v12;
  }

  if (!v14)
  {
    goto LABEL_43;
  }

  v15 = v12;
  do
  {
    v16 = v15[1];
    if (v16 < 0)
    {
      v17 = __maskrune(v15[1], 0x4000uLL);
    }

    else
    {
      v17 = *(v13 + 4 * v16 + 60) & 0x4000;
    }

    ++v15;
  }

  while (v17);
  if (v16 != 61)
  {
LABEL_43:
    result = 2529639048;
    v29 = "missing =";
LABEL_44:
    *a6 = v29;
    goto LABEL_45;
  }

  do
  {
    while (1)
    {
      v19 = *++v15;
      v18 = v19;
      if (v19 < 0)
      {
        break;
      }

      if ((*(v13 + 4 * v18 + 60) & 0x4000) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  while (__maskrune(v18, 0x4000uLL));
LABEL_21:
  v12[1] = 0;
  if (*v15 != 123)
  {
    v31 = sub_25224DBD8(a5, a3, 0);
    if (v31)
    {
      v32 = v31;
      v33 = strlen(v15);
      do
      {
        v34 = v33;
        if ((v33 + 1) < 2)
        {
          break;
        }

        v35 = v15[v33 - 1];
        v36 = v35 < 0 ? __maskrune(v15[v34 - 1], 0x4000uLL) : *(v13 + 4 * v35 + 60) & 0x4000;
        v33 = v34 - 1;
      }

      while (v36);
      v15[v34] = 0;
      v37 = strdup(v15);
      result = 0;
      v32[3] = v37;
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v20 = sub_25224DBD8(a5, a3, 1);
  if (!v20)
  {
LABEL_54:
    result = 2529639048;
    v29 = "out of memory";
    goto LABEL_44;
  }

  v39 = a4;
  v40 = v20;
  v38 = *a2;
  if (!sub_25224EB2C(__s, a1))
  {
LABEL_55:
    result = 2529639048;
    *a2 = v38;
    *a6 = "unclosed {";
    goto LABEL_56;
  }

  while (1)
  {
    ++*a2;
    __s[strcspn(__s, "\r\n")] = 0;
    v21 = &v42;
    do
    {
      v22 = v21;
      v23 = v21[1];
      if (v23 < 0)
      {
        v24 = __maskrune(v21[1], 0x4000uLL);
      }

      else
      {
        v24 = *(v13 + 4 * v23 + 60) & 0x4000;
      }

      v21 = v22 + 1;
    }

    while (v24);
    if (v23 <= 0x3B && ((1 << v23) & 0x800000800000001) != 0)
    {
      goto LABEL_33;
    }

    do
    {
      v26 = v22[1];
      if (v26 < 0)
      {
        v27 = __maskrune(v22[1], 0x4000uLL);
      }

      else
      {
        v27 = *(v13 + 4 * v26 + 60) & 0x4000;
      }

      ++v22;
    }

    while (v27);
    if (!v26)
    {
      goto LABEL_33;
    }

    if (v26 == 125)
    {
      break;
    }

    result = sub_25224EBF8(a1, a2, v22, v41, v40 + 3, a6);
    if (result)
    {
      goto LABEL_56;
    }

LABEL_33:
    if (!sub_25224EB2C(__s, a1))
    {
      goto LABEL_55;
    }
  }

  result = 0;
LABEL_56:
  a4 = v39;
  v32 = v40;
LABEL_57:
  *a4 = v32;
LABEL_45:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t krb5_init_context_flags(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = 0;
  *a2 = 0;
  v10 = heim_uniq_alloc(0x188uLL, "krb5-context", sub_25224F148, a4, a5, a6, a7, a8);
  if (v10)
  {
    v11 = v10;
    v12 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
    *(v11 + 328) = v12;
    if (v12)
    {
      pthread_mutex_init(v12, 0);
      pthread_mutex_lock(&stru_280C4F1E0);
      if (dword_27F4D6518)
      {
        *(v11 + 360) |= 4u;
      }

      pthread_mutex_unlock(&stru_280C4F1E0);
      if (a1)
      {
        v15 = 0;
      }

      else
      {
        default_config_files = krb5_get_default_config_files(&v17);
        if (default_config_files)
        {
          v14 = default_config_files;
LABEL_14:
          heim_release(v11);
          v11 = 0;
LABEL_15:
          *a2 = v11;
          return v14;
        }

        v15 = v17;
      }

      v14 = krb5_set_config_files(v11, v15);
      krb5_free_config_files(v17);
      if (!v14)
      {
        heim_base_once_f(&qword_280C4F248, v11, sub_25224F404);
        krb5_init_ets(v11);
        *(v11 + 168) = 0;
        *(v11 + 176) = 0;
        krb5_cc_register(v11, &krb5_fcc_ops, 1);
        krb5_cc_register(v11, &krb5_mcc_ops, 1);
        krb5_cc_register(v11, &krb5_xcc_api_ops, 1);
        krb5_cc_register(v11, &krb5_xcc_ops, 1);
        krb5_cc_register(v11, &krb5_xcc_temp_api_ops, 1);
        sub_252285EB0(v11);
        *(v11 + 256) = 0;
        *(v11 + 264) = 0;
        krb5_kt_register(v11, &off_2864730C0);
        krb5_kt_register(v11, &off_286472EC8);
        krb5_kt_register(v11, &off_286473058);
        v14 = hx509_context_init((v11 + 376));
        if (!v14)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_14;
    }

    heim_release(v11);
  }

  return 12;
}

void sub_25224F148(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 312);
  if (v3)
  {
    free(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    krb5_free_config_files(v4);
  }

  free(*(a1 + 32));
  free(*(a1 + 40));
  heim_release(*(a1 + 72));
  krb5_config_file_free(a1, *(a1 + 136));
  sub_25228C138(*(a1 + 144));
  free(*(a1 + 168));
  free(*(a1 + 264));
  krb5_clear_error_message(a1);
  v5 = *(a1 + 152);
  if (v5)
  {
    krb5_closelog(a1, v5);
  }

  v6 = *(a1 + 160);
  if (v6)
  {
    krb5_closelog(a1, v6);
  }

  krb5_set_extra_addresses(a1, 0);
  krb5_set_ignore_addresses(a1, 0);
  if (*(a1 + 376))
  {
    hx509_context_free((a1 + 376));
  }

  pthread_mutex_destroy(*(a1 + 328));
  v7 = *(a1 + 328);

  free(v7);
}

uint64_t krb5_get_default_config_files(void **a1)
{
  if (!a1)
  {
    return 22;
  }

  if (issuid())
  {
    v2 = 0;
  }

  else
  {
    v2 = getenv("KRB5_CONFIG");
  }

  if (!v2)
  {
    v2 = off_27F4D64E8[0];
  }

  return krb5_prepend_config_files(v2, 0, a1);
}

uint64_t krb5_set_config_files(void ***a1, char **a2)
{
  v17 = 0;
  v18 = 0;
  if (a2 && (v16 = 0, (v3 = *a2) != 0))
  {
    v4 = a2 + 1;
    do
    {
      if (!*v3)
      {
        break;
      }

      v5 = sub_25224F52C(&v17, &v16, v3);
      if (!v5)
      {
        v5 = krb5_config_parse_file_multi(a1, *(v4 - 1), &v18);
      }

      if ((v5 > 0xD || ((1 << v5) & 0x2007) == 0) && v5 != -1765328248)
      {
        krb5_free_config_files(v17);
        krb5_config_file_free(a1, v18);
        return v5;
      }

      v6 = *v4++;
      v3 = v6;
    }

    while (v6);
    v7 = v17;
  }

  else
  {
    v7 = 0;
  }

  krb5_free_config_files(a1[15]);
  a1[15] = v7;
  krb5_config_file_free(a1, a1[17]);
  a1[17] = v18;
  return sub_25224F5F4(a1, v8, v9, v10, v11, v12, v13, v14);
}

void krb5_free_config_files(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = a1 + 1;
      do
      {
        free(v2);
        v4 = *v3++;
        v2 = v4;
      }

      while (v4);
    }
  }

  free(a1);
}

void sub_25224F404(_krb5_context *a1)
{
  notify_register_check("com.apple.Kerberos.configuration-changed", &dword_280C4F22C);
  notify_register_check("com.apple.ManagedConfiguration.profileListChanged", &dword_280C4F220);

  krb5_load_plugins(a1, "krb5", off_27F4D6520);
}

uint64_t krb5_init_ets(uint64_t result)
{
  if (!*(result + 144))
  {
    v2 = result;
    krb5_add_et_list(result, initialize_krb5_error_table_r);
    krb5_add_et_list(v2, initialize_asn1_error_table_r);
    krb5_add_et_list(v2, initialize_heim_error_table_r);
    krb5_add_et_list(v2, initialize_k524_error_table_r);

    return krb5_add_et_list(v2, initialize_hx_error_table_r);
  }

  return result;
}

uint64_t sub_25224F52C(void **a1, unsigned int *a2, char *__s2)
{
  v6 = *a1;
  v7 = *a2;
  if (*a2)
  {
    v8 = *a2;
    v9 = *a1;
    while (1)
    {
      result = strcmp(*v9, __s2);
      if (!result)
      {
        break;
      }

      ++v9;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = malloc_type_realloc(v6, 8 * (v7 + 2), 0x10040436913F5uLL);
    if (v11 && (v12 = v11, *a1 = v11, v13 = strdup(__s2), v14 = *a2, (v12[v14] = v13) != 0))
    {
      result = 0;
      v15 = v14 + 1;
      v12[v15] = 0;
      *a2 = v15;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t sub_25224F5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 80) = krb5_config_get_time_default(a1, 0, 300, a4, a5, a6, a7, a8, "libdefaults");
  *(a1 + 88) = krb5_config_get_time_default(a1, 0, 30, v9, v10, v11, v12, v13, "libdefaults");
  *(a1 + 96) = krb5_config_get_time_default(a1, 0, 3, v14, v15, v16, v17, v18, "libdefaults");
  *(a1 + 352) = krb5_config_get_time_default(a1, 0, 1200, v19, v20, v21, v22, v23, "libdefaults");
  *(a1 + 104) = krb5_config_get_int_default(a1, 0, 3, v24, v25, v26, v27, v28, "libdefaults");
  *(a1 + 184) = krb5_config_get_string_default(a1, 0, 0, v29, v30, v31, v32, v33, "libdefaults");
  if (krb5_config_get_BOOL_default(a1, 0, 0, v34, v35, v36, v37, v38, "libdefaults"))
  {
    sub_252253FEC(a1, 1);
  }

  v189 = 0;
  result = sub_2522506E0(a1, "default_etypes", &v189, v39, v40, v41, v42, v43);
  if (!result)
  {
    free(*(a1 + 32));
    *(a1 + 32) = v189;
    result = sub_2522506E0(a1, "default_etypes_des", &v189, v45, v46, v47, v48, v49);
    if (!result)
    {
      free(*(a1 + 40));
      *(a1 + 40) = v189;
      result = sub_2522506E0(a1, "default_as_etypes", &v189, v50, v51, v52, v53, v54);
      if (!result)
      {
        free(*(a1 + 48));
        *(a1 + 48) = v189;
        result = sub_2522506E0(a1, "default_tgs_etypes", &v189, v55, v56, v57, v58, v59);
        if (!result)
        {
          free(*(a1 + 56));
          *(a1 + 56) = v189;
          result = sub_2522506E0(a1, "permitted_enctypes", &v189, v60, v61, v62, v63, v64);
          if (!result)
          {
            free(*(a1 + 64));
            *(a1 + 64) = v189;
            if (issuid() || (string_default = getenv("KRB5_KTNAME")) == 0)
            {
              string_default = krb5_config_get_string_default(a1, 0, "FILE:/etc/krb5.keytab", v65, v66, v67, v68, v69, "libdefaults");
            }

            *(a1 + 208) = string_default;
            *(a1 + 216) = krb5_config_get_string_default(a1, 0, 0, v65, v66, v67, v68, v69, "libdefaults");
            *(a1 + 192) = krb5_config_get_string_default(a1, 0, "%Y-%m-%dT%H:%M:%S", v71, v72, v73, v74, v75, "libdefaults");
            *(a1 + 272) = krb5_config_get_string_default(a1, 0, "%Y-%m-%d", v76, v77, v78, v79, v80, "libdefaults");
            *(a1 + 200) = krb5_config_get_BOOL_default(a1, 0, 0, v81, v82, v83, v84, v85, "libdefaults");
            string = krb5_config_get_string(a1, 0, v86, v87, v88, v89, v90, v91, "libdefaults");
            if (string)
            {
              sub_252288C9C(*(a1 + 184), string);
            }

            heim_release(*(a1 + 72));
            *(a1 + 72) = 0;
            krb5_set_extra_addresses(a1, 0);
            strings = krb5_config_get_strings(a1, 0, v93, v94, v95, v96, v97, v98, "libdefaults");
            v100 = strings;
            v187 = 0;
            v188 = 0;
            if (strings)
            {
              v101 = *strings;
              if (*strings)
              {
                v102 = strings + 1;
                do
                {
                  if (!krb5_parse_address(a1, v101, &v187))
                  {
                    krb5_add_extra_addresses(a1, &v187);
                    krb5_free_addresses(a1, &v187);
                  }

                  v103 = *v102++;
                  v101 = v103;
                }

                while (v103);
              }
            }

            krb5_config_free_strings(v100);
            krb5_set_ignore_addresses(a1, 0);
            v110 = krb5_config_get_strings(a1, 0, v104, v105, v106, v107, v108, v109, "libdefaults");
            v111 = v110;
            v187 = 0;
            v188 = 0;
            if (v110)
            {
              v112 = *v110;
              if (*v110)
              {
                v113 = v110 + 1;
                do
                {
                  if (!krb5_parse_address(a1, v112, &v187))
                  {
                    krb5_add_ignore_addresses(a1, &v187);
                    krb5_free_addresses(a1, &v187);
                  }

                  v114 = *v113++;
                  v112 = v114;
                }

                while (v114);
              }
            }

            krb5_config_free_strings(v111);
            *(a1 + 240) = krb5_config_get_BOOL_default(a1, 0, 1, v115, v116, v117, v118, v119, "libdefaults");
            *(a1 + 252) = krb5_config_get_int_default(a1, 0, 0, v120, v121, v122, v123, v124, "libdefaults");
            BOOL_default = krb5_config_get_BOOL_default(a1, 0, 1, v125, v126, v127, v128, v129, "libdefaults");
            *(a1 + 244) = BOOL_default;
            *(a1 + 244) = krb5_config_get_BOOL_default(a1, 0, BOOL_default, v131, v132, v133, v134, v135, "libdefaults");
            *(a1 + 336) = krb5_config_get_int_default(a1, 0, 1400, v136, v137, v138, v139, v140, "libdefaults");
            *(a1 + 340) = krb5_config_get_int_default(a1, 0, 1024000, v141, v142, v143, v144, v145, "libdefaults");
            *(a1 + 344) = krb5_config_get_int_default(a1, 0, 5, v146, v147, v148, v149, v150, "libdefaults");
            if (krb5_config_get_BOOL_default(a1, 0, 1, v151, v152, v153, v154, v155, "libdefaults"))
            {
              *(a1 + 360) |= 1u;
            }

            if (krb5_config_get_BOOL_default(a1, 0, 1, v156, v157, v158, v159, v160, "libdefaults"))
            {
              *(a1 + 360) |= 2u;
            }

            v167 = *(a1 + 304);
            if (v167)
            {
              free(v167);
            }

            *(a1 + 304) = 0;
            *(a1 + 320) = 0;
            v168 = krb5_config_get_strings(a1, 0, v161, v162, v163, v164, v165, v166, "logging");
            v175 = *(a1 + 160);
            if (v168)
            {
              v176 = v168;
              if (v175)
              {
                krb5_closelog(a1, v175);
              }

              krb5_initlog(a1, "libkrb5", (a1 + 160));
              v177 = *v176;
              if (*v176)
              {
                v178 = (v176 + 1);
                do
                {
                  krb5_addlog_dest(a1, *(a1 + 160), v177);
                  v179 = *v178++;
                  v177 = v179;
                }

                while (v179);
              }

              krb5_config_free_strings(v176);
            }

            else if (!v175)
            {
              v187 = 0;
              if (issuid() || (v183 = getenv("KRB5_TRACE")) == 0 || (asprintf(&v187, "0-/FILE:%s", v183), !v187))
              {
                v180 = geteuid() && krb5_homedir_access(0) ? CFPreferencesCopyAppValue(@"KerberosDebugLevel", @".GlobalPreferences") : sub_252250824();
                v181 = v180;
                if (v180)
                {
                  valuePtr = 1;
                  v182 = CFGetTypeID(v180);
                  if (v182 == CFBooleanGetTypeID())
                  {
                    valuePtr = CFBooleanGetValue(v181) != 0;
                  }

                  else
                  {
                    v184 = CFGetTypeID(v181);
                    if (v184 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v181, kCFNumberIntType, &valuePtr);
                    }
                  }

                  CFRelease(v181);
                  asprintf(&v187, "0-%d/OSLOG:normal:libkrb5", valuePtr);
                }
              }

              krb5_initlog(a1, "libkrb5", (a1 + 160));
              if (v187)
              {
                krb5_addlog_dest(a1, *(a1 + 160), v187);
                free(v187);
              }

              else
              {
                if ((*(a1 + 360) & 0x10) != 0)
                {
                  v185 = "0-10/ASL:normal:libkrb5";
                }

                else
                {
                  v185 = "0-10/OSLOG:normal:libkrb5";
                }

                krb5_addlog_dest(a1, *(a1 + 160), v185);
              }
            }

            result = krb5_config_get_string(a1, 0, v169, v170, v171, v172, v173, v174, "libdefaults");
            if (!result)
            {
              if (issuid())
              {
                return 0;
              }

              result = getenv("KRB5_CHECK_RD_REQ_SERVER");
              if (!result)
              {
                return result;
              }
            }

            result = strcasecmp(result, "ignore");
            if (!result)
            {
              *(a1 + 360) |= 0x10u;
              return result;
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t krb5_prepend_config_files(const char *a1, char **a2, void **a3)
{
  v16 = 0;
  v17 = a1;
  v15 = 0;
  while (1)
  {
    v18 = v17;
    v5 = rk_strsep_copy(&v18, ":", 0, 0);
    if (v5 == -1)
    {
      break;
    }

    v6 = v5;
    v7 = malloc_type_malloc(v5 + 1, 0x5DE05515uLL);
    if (!v7)
    {
      krb5_free_config_files(v16);
      return 12;
    }

    v8 = v7;
    rk_strsep_copy(&v17, ":", v7, v6 + 1);
    v9 = sub_25224F52C(&v16, &v15, v8);
    free(v8);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  if (a2)
  {
    v10 = *a2;
    if (*a2)
    {
      v11 = a2 + 1;
      while (1)
      {
        v12 = sub_25224F52C(&v16, &v15, v10);
        if (v12)
        {
          break;
        }

        v13 = *v11++;
        v10 = v13;
        if (!v13)
        {
          goto LABEL_11;
        }
      }

      v9 = v12;
LABEL_5:
      krb5_free_config_files(v16);
      return v9;
    }
  }

LABEL_11:
  v9 = 0;
  *a3 = v16;
  return v9;
}

uint64_t krb5_prepend_config_files_default(const char *a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  default_config_files = krb5_get_default_config_files(&v8);
  if (default_config_files)
  {
    return default_config_files;
  }

  v5 = krb5_prepend_config_files(a1, v8, &v7);
  krb5_free_config_files(v8);
  if (!v5)
  {
    *a2 = v7;
  }

  return v5;
}

int *krb5_kerberos_enctypes(_krb5_context *a1)
{
  v2 = 0;
  v3 = dword_2522A9E68;
  while (!krb5_enctype_valid(a1, dword_2522A9E68[v2]))
  {
    if (++v2 == 7)
    {
      return v3;
    }
  }

  return &unk_2522A9E58;
}

uint64_t krb5_set_default_in_tkt_etypes(krb5_context a1, unsigned int *a2)
{
  v7 = 0;
  if (!a2)
  {
    goto LABEL_7;
  }

  v3 = sub_252250038(a1, a2, &v7);
  if (v3)
  {
    return v3;
  }

  v4 = v7;
  if (!v7)
  {
LABEL_7:
    v3 = 2529639062;
    krb5_set_error_message(a1, -1765328234, "entypes not supported");
    return v3;
  }

  v5 = *(a1 + 4);
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
  *(a1 + 4) = v4;
  return v3;
}

uint64_t sub_252250038(_krb5_context *a1, unsigned int *a2, void *a3)
{
  v6 = 0;
    ;
  }

  v8 = malloc_type_calloc(v6, 4uLL, 0x100004052888210uLL);
  if (v8)
  {
    v9 = v8;
    v10 = *a2;
    if (!v10)
    {
      goto LABEL_11;
    }

    v11 = 0;
    v12 = a2 + 1;
    do
    {
      if (!krb5_enctype_valid(a1, v10))
      {
        v9[v11++] = *(v12 - 1);
      }

      v13 = *v12++;
      v10 = v13;
    }

    while (v13);
    v9[v11] = 0;
    if (v11)
    {
      v14 = 0;
      *a3 = v9;
    }

    else
    {
LABEL_11:
      v14 = 2529639062;
      free(v9);
      krb5_set_error_message(a1, -1765328234, "no valid enctype set");
    }

    return v14;
  }

  else
  {

    return krb5_enomem(a1);
  }
}

uint64_t krb5_get_default_in_tkt_etypes(_krb5_context *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0;
  switch(a2)
  {
    case 2:
      v9 = *(a1 + 6);
      if (v9)
      {
        goto LABEL_10;
      }

      break;
    case 4:
      v9 = *(a1 + 7);
      if (v9)
      {
        goto LABEL_10;
      }

      break;
    case 0xB:
      break;
    default:
      heim_abort("pdu contant not as expected:pdu_type == KRB5_PDU_AS_REQUEST || pdu_type == KRB5_PDU_TGS_REQUEST || pdu_type == KRB5_PDU_NONE", a2, a3, a4, a5, a6, a7, a8, v11);
  }

  v9 = *(a1 + 4);
  if (!v9)
  {
    v9 = &unk_2522A9E88;
  }

LABEL_10:
  result = sub_252250038(a1, v9, &v12);
  if (!result)
  {
    result = 0;
    *a3 = v12;
  }

  return result;
}

uint64_t krb5_add_extra_addresses(_krb5_context *a1, krb5_address **a2)
{
  v3 = *(a1 + 29);
  if (v3)
  {
    return krb5_append_addresses(a1, v3, a2);
  }

  else
  {
    return krb5_set_extra_addresses(a1, a2);
  }
}

uint64_t krb5_set_extra_addresses(krb5_context a1, krb5_address **a2)
{
  v4 = *(a1 + 29);
  if (v4)
  {
    krb5_free_addresses(a1, v4);
  }

  v5 = *(a1 + 29);
  if (!a2)
  {
    if (!v5)
    {
      return 0;
    }

    free(*(a1 + 29));
    v7 = 0;
    *(a1 + 29) = 0;
    return v7;
  }

  if (!v5)
  {
    v5 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
    *(a1 + 29) = v5;
    if (!v5)
    {
      v7 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
      return v7;
    }
  }

  return krb5_copy_addresses(a1, a2, v5);
}

uint64_t krb5_get_extra_addresses(_krb5_context *a1, krb5_address ***a2)
{
  v3 = *(a1 + 29);
  if (v3)
  {
    return krb5_copy_addresses(a1, v3, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  return 0;
}

uint64_t krb5_add_ignore_addresses(_krb5_context *a1, krb5_address **a2)
{
  v3 = *(a1 + 37);
  if (v3)
  {
    return krb5_append_addresses(a1, v3, a2);
  }

  else
  {
    return krb5_set_ignore_addresses(a1, a2);
  }
}

uint64_t krb5_set_ignore_addresses(krb5_context a1, krb5_address **a2)
{
  v4 = *(a1 + 37);
  if (v4)
  {
    krb5_free_addresses(a1, v4);
  }

  v5 = *(a1 + 37);
  if (!a2)
  {
    if (!v5)
    {
      return 0;
    }

    free(*(a1 + 37));
    v7 = 0;
    *(a1 + 37) = 0;
    return v7;
  }

  if (!v5)
  {
    v5 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
    *(a1 + 37) = v5;
    if (!v5)
    {
      v7 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
      return v7;
    }
  }

  return krb5_copy_addresses(a1, a2, v5);
}

uint64_t krb5_get_ignore_addresses(_krb5_context *a1, krb5_address ***a2)
{
  v3 = *(a1 + 37);
  if (v3)
  {
    return krb5_copy_addresses(a1, v3, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  return 0;
}

uint64_t krb5_set_dns_canonicalize_hostname(uint64_t result, int a2)
{
  v2 = *(result + 360) & 0xFFFFFFFE;
  if (a2)
  {
    ++v2;
  }

  *(result + 360) = v2;
  return result;
}

uint64_t krb5_get_kdc_sec_offset(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 108);
  }

  if (a3)
  {
    *a3 = *(a1 + 112);
  }

  return 0;
}

uint64_t krb5_set_kdc_sec_offset(uint64_t a1, int a2, int a3)
{
  *(a1 + 108) = a2;
  if ((a3 & 0x80000000) == 0)
  {
    *(a1 + 112) = a3;
  }

  return 0;
}

uint64_t _krb5_init_etype(_krb5_context *a1, uint64_t a2, unsigned int *a3, uint64_t *a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    result = sub_252250038(a1, a5, a4);
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = krb5_get_default_in_tkt_etypes(a1, a2, a4, a4, 0, a6, a7, a8);
    if (result)
    {
      return result;
    }
  }

  if (a3)
  {
    v11 = 0;
    v12 = *a4;
    do
    {
      *a3 = v11;
    }

    while (*(v12 + 4 * v11++));
  }

  return 0;
}

uint64_t krb5_homedir_access(uint64_t a1)
{
  if (!geteuid() || a1 && (*(a1 + 360) & 4) == 0)
  {
    return 0;
  }

  pthread_mutex_lock(&stru_280C4F1E0);
  v2 = dword_27F4D6518;
  pthread_mutex_unlock(&stru_280C4F1E0);
  return v2;
}

uint64_t krb5_set_home_dir_access(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = *(a1 + 360);
    v4 = (v3 >> 2) & 1;
    if (a2)
    {
      v5 = v3 | 4;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFB;
    }

    *(a1 + 360) = v5;
  }

  else
  {
    pthread_mutex_lock(&stru_280C4F1E0);
    v4 = dword_27F4D6518;
    dword_27F4D6518 = a2;
    pthread_mutex_unlock(&stru_280C4F1E0);
  }

  return v4;
}

uint64_t krb5_reload_config(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v22 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  check = 0;
  if (dword_280C4F22C == -1 || (!notify_check(dword_280C4F22C, &check) ? (v5 = check == 0) : (v5 = 1), v5))
  {
    if (dword_280C4F220 == -1)
    {
      return 0;
    }

    if (notify_check(dword_280C4F220, &check) || check == 0)
    {
      return 0;
    }
  }

  *(a1 + 128) = time(0);
  v7 = *(a1 + 120);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (*v7)
  {
    v9 = 1;
    while (1)
    {
      v10 = krb5_config_parse_file_multi(a1, v8, &v22);
      v11 = v10 > 0xD || ((1 << v10) & 0x2007) == 0;
      if (v11 && v10 != -1765328248)
      {
        break;
      }

      v8 = *(*(a1 + 120) + 8 * v9++);
      if (!v8)
      {
        goto LABEL_26;
      }
    }

    v21 = v10;
    krb5_config_file_free(a1, v22);
  }

  else
  {
LABEL_26:
    if (a3)
    {
      *a3 = 1;
    }

    krb5_config_file_free(a1, *(a1 + 136));
    *(a1 + 136) = v22;
    return sub_25224F5F4(a1, v13, v14, v15, v16, v17, v18, v19);
  }

  return v21;
}

uint64_t sub_2522506E0(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  strings = krb5_config_get_strings(a1, 0, a3, a4, a5, a6, a7, a8, "libdefaults");
  if (!strings)
  {
    v16 = 0;
LABEL_16:
    v18 = 0;
    *a3 = v16;
    return v18;
  }

  v11 = strings;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = strings[v13++];
    v12 += 4;
  }

  while (v14);
  v15 = malloc_type_malloc(v12 & 0x3FFFFFFFCLL, 0x100004052888210uLL);
  if (v15)
  {
    v16 = v15;
    if (v13 == 1)
    {
      v17 = 0;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = v13 - 1;
      do
      {
        if (!krb5_string_to_enctype(a1, v11[v19]) && !krb5_enctype_valid(a1, 0))
        {
          v16[v20++] = 0;
        }

        ++v19;
      }

      while (v21 != v19);
      v17 = v20;
    }

    v16[v17] = 0;
    krb5_config_free_strings(v11);
    goto LABEL_16;
  }

  krb5_config_free_strings(v11);
  v18 = 12;
  krb5_set_error_message(a1, 12, "malloc: out of memory");
  return v18;
}

__CFReadStream *sub_252250824()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], @"/Library/Managed Preferences/mobile/.GlobalPreferences.plist", kCFURLPOSIXPathStyle, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFReadStreamCreateWithFile(v0, v1);
  CFRelease(v2);
  if (!v3)
  {
    return v3;
  }

  if (!CFReadStreamOpen(v3))
  {
    v7 = v3;
LABEL_11:
    CFRelease(v7);
    return 0;
  }

  error = 0;
  v4 = CFPropertyListCreateWithStream(v0, v3, 0, 0, 0, &error);
  CFRelease(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = CFGetTypeID(v4);
  if (v5 != CFDictionaryGetTypeID())
  {
    v7 = v4;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(v4, @"KerberosDebugLevel");
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v4);
  return v3;
}

uint64_t krb5_copy_host_realm(_krb5_context *a1, const char **a2, char *const **a3)
{
  if (*a2)
  {
    v6 = 1;
      ;
    }

    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  v9 = malloc_type_calloc(v8, 8uLL, 0x10040436913F5uLL);
  *a3 = v9;
  if (!v9)
  {
LABEL_13:
    v16 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v16;
  }

  v10 = v9;
  v11 = *a2;
  if (*a2)
  {
    v12 = 0;
    v13 = a2 + 1;
    while (1)
    {
      v14 = strdup(v11);
      v15 = v12;
      v10[v15] = v14;
      v10 = *a3;
      if (!(*a3)[v15])
      {
        break;
      }

      v11 = v13[v12++];
      if (!v11)
      {
        return 0;
      }
    }

    krb5_free_host_realm(a1, *a3);
    goto LABEL_13;
  }

  return 0;
}

void _krb5_crc_init_table()
{
  if ((byte_27F4D9148 & 1) == 0)
  {
    for (i = 0; i != 256; ++i)
    {
      v1 = -8;
      v2 = i;
      do
      {
        if (v2)
        {
          v2 = (v2 >> 1) ^ 0xEDB88320;
        }

        else
        {
          v2 >>= 1;
        }
      }

      while (!__CFADD__(v1++, 1));
      dword_27F4D914C[i] = v2;
    }

    byte_27F4D9148 = 1;
  }
}

uint64_t _krb5_crc_update(char *a1, uint64_t a2, uint64_t a3)
{
  for (; a2; --a2)
  {
    v3 = *a1++;
    a3 = dword_27F4D914C[(v3 ^ a3)] ^ (a3 >> 8);
  }

  return a3;
}

void krb5_free_cred_contents(krb5_context a1, krb5_creds *a2)
{
  krb5_free_principal(a1, *&a2->magic);
  *&a2->magic = 0;
  krb5_free_principal(a1, a2->client);
  a2->client = 0;
  krb5_free_keyblock_contents(a1, &a2->server);
  krb5_data_free(&a2->addresses);
  krb5_data_free(&a2->ticket.data);
  sub_25228A89C(&a2->second_ticket.data);
  krb5_free_addresses(a1, &a2[1]);
  *&a2->magic = 0u;
  *&a2->server = 0u;
  *&a2->keyblock.length = 0u;
  a2->times = 0u;
  *&a2->is_skey = 0u;
  a2->ticket = 0u;
  a2->second_ticket = 0u;
  *&a2->authdata = 0u;
  *&a2[1].client = 0u;
}

uint64_t krb5_copy_creds_contents(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v6 = krb5_copy_principal(a1, *a2, a3);
  if (v6)
  {
    goto LABEL_7;
  }

  v6 = krb5_copy_principal(a1, *(a2 + 8), (a3 + 8));
  if (v6 || (v6 = krb5_copy_keyblock_contents(a1, (a2 + 16), (a3 + 16)), v6) || (v7 = *(a2 + 40), *(a3 + 56) = *(a2 + 56), *(a3 + 40) = v7, v6 = krb5_data_copy((a3 + 72), *(a2 + 80), *(a2 + 72)), v6) || (v6 = krb5_data_copy((a3 + 88), *(a2 + 96), *(a2 + 88)), v6) || (v6 = sub_25228A8AC(), v6))
  {
LABEL_7:
    v8 = v6;
  }

  else
  {
    v8 = krb5_copy_addresses(a1, (a2 + 120), (a3 + 120));
    if (!v8)
    {
      *(a3 + 136) = *(a2 + 136);
      return v8;
    }
  }

  krb5_free_cred_contents(a1, a3);
  return v8;
}

krb5_error_code krb5_copy_creds(krb5_context a1, const krb5_creds *a2, krb5_creds **a3)
{
  v6 = malloc_type_malloc(0x90uLL, 0x10A0040AAA52FDDuLL);
  if (v6)
  {
    *&v6->authdata = 0u;
    *&v6[1].client = 0u;
    v6->ticket = 0u;
    v6->second_ticket = 0u;
    v6->times = 0u;
    *&v6->is_skey = 0u;
    *&v6->server = 0u;
    *&v6->keyblock.length = 0u;
    *&v6->magic = 0u;
    *a3 = v6;

    return krb5_copy_creds_contents(a1, a2, v6);
  }

  else
  {
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return 12;
  }
}

uint64_t krb5_compare_creds(krb5_context a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  if (v8)
  {
    v9 = *(a4 + 8);
    if ((a2 & 0xA0000000) != 0)
    {
      result = krb5_principal_compare_any_realm(a1, v8, v9);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = krb5_principal_compare(a1, v8, v9);
      if (!result)
      {
        return result;
      }
    }
  }

  else
  {
    result = 1;
  }

  v11 = *a3;
  if (*a3)
  {
    v12 = *a4;
    if (a2 < 0)
    {
      result = krb5_principal_compare_any_realm(a1, v11, v12);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = krb5_principal_compare(a1, v11, v12);
      if (!result)
      {
        return result;
      }
    }
  }

  if ((a2 & 0x40000000) != 0)
  {
    if (*(a3 + 16) != *(a4 + 16))
    {
      return 0;
    }

    result = 1;
  }

  if ((a2 & 0x10000000) != 0)
  {
    if (*(a3 + 136) != *(a4 + 136))
    {
      return 0;
    }

    result = 1;
  }

  if ((a2 & 0x8000000) != 0)
  {
    if ((*(a3 + 136) & ~*(a4 + 136)) != 0)
    {
      return 0;
    }

    result = 1;
  }

  if ((a2 & 0x4000000) == 0)
  {
    if ((a2 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_34:
    if (*(a3 + 64) > *(a4 + 64) || *(a3 + 56) > *(a4 + 56))
    {
      return 0;
    }

    result = 1;
    if ((a2 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  if (*(a3 + 48) != *(a4 + 48) || *(a3 + 40) != *(a4 + 40) || *(a3 + 56) != *(a4 + 56) || *(a3 + 64) != *(a4 + 64))
  {
    return 0;
  }

  result = 1;
  if ((a2 & 0x2000000) != 0)
  {
    goto LABEL_34;
  }

LABEL_23:
  if ((a2 & 0x1000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_37:
  if (*(a3 + 104) != *(a4 + 104))
  {
    return 0;
  }

  if (*(a3 + 104))
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = *(a3 + 112);
      v16 = *(a4 + 112);
      if (*(v15 + v13) != *(v16 + v13) || krb5_data_cmp(v15 + v13 + 8, v16 + v13 + 8))
      {
        return 0;
      }

      ++v14;
      v13 += 24;
      if (v14 >= *(a3 + 104))
      {
        result = 1;
        break;
      }
    }
  }

LABEL_24:
  if ((a2 & 0x800000) == 0)
  {
    goto LABEL_27;
  }

  if (krb5_data_cmp(a3 + 88, a4 + 88))
  {
    return 0;
  }

  result = 1;
LABEL_27:
  if ((a2 & 0x400000) != 0)
  {
    return (*(a3 + 88) == 0) ^ (*(a4 + 88) != 0);
  }

  return result;
}

uint64_t krb5_enctype_keysize(_krb5_context *a1, char *a2, void *a3)
{
  v3 = dword_27F4D66A0;
  if (dword_27F4D66A0 < 1)
  {
    return sub_252250F9C(a1, a2);
  }

  for (i = &off_27F4D6670; **i != a2; ++i)
  {
    if (!--v3)
    {
      return sub_252250F9C(a1, a2);
    }
  }

  *a3 = *(*(*i + 5) + 24);
  return 0;
}

_DWORD *sub_252250F58(int a1)
{
  v1 = dword_27F4D66A0;
  if (dword_27F4D66A0 < 1)
  {
    return 0;
  }

  for (i = &off_27F4D6670; ; ++i)
  {
    v3 = *i;
    if (**i == a1)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_252250F9C(_krb5_context *a1, char *a2)
{
  v6 = 0;
  v3 = krb5_enctype_to_string(a1, a2, &v6);
  if (!v3)
  {
    v3 = 2529639062;
    v4 = v6;
    krb5_set_error_message(a1, -1765328234, "Encryption type %s not supported", v6);
    free(v4);
  }

  return v3;
}

uint64_t krb5_enctype_keybits(_krb5_context *a1, char *a2, void *a3)
{
  v3 = dword_27F4D66A0;
  if (dword_27F4D66A0 < 1)
  {
    return sub_252250F9C(a1, a2);
  }

  for (i = &off_27F4D6670; **i != a2; ++i)
  {
    if (!--v3)
    {
      return sub_252250F9C(a1, a2);
    }
  }

  *a3 = *(*(*i + 5) + 16);
  return 0;
}

uint64_t krb5_generate_random_keyblock(_krb5_context *a1, char *a2, uint64_t a3)
{
  v3 = a2;
  v5 = dword_27F4D66A0;
  if (dword_27F4D66A0 < 1)
  {
LABEL_5:

    return sub_252250F9C(a1, a2);
  }

  else
  {
    v7 = &off_27F4D6670;
    while (1)
    {
      v8 = *v7;
      if (**v7 == a2)
      {
        break;
      }

      ++v7;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    result = krb5_data_alloc((a3 + 8), *(*(v8 + 5) + 24));
    if (!result)
    {
      *a3 = v3;
      v10 = *(*(v8 + 5) + 40);
      if (v10)
      {
        v10(a1, a3);
      }

      else
      {
        krb5_generate_random_block(*(a3 + 16), *(a3 + 8));
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_252251134(uint64_t a1, uint64_t a2, const void *a3, size_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v14 = malloc_type_malloc(*(a2 + 16) + a4, 0x1509A2ABuLL);
  if (!v14)
  {
    return 12;
  }

  v15 = v14;
  v16 = malloc_type_malloc(*(a2 + 24) + *(a2 + 16), 0xCFA56F49uLL);
  if (v16)
  {
    v17 = v16;
    memset(v15, 54, *(a2 + 16));
    memset(v17, 92, *(a2 + 16));
    v18 = *a6;
    v19 = *(*a6 + 8);
    if (v19 > *(a2 + 16))
    {
      (*(a2 + 40))(a1, a6, *(v18 + 16));
      v19 = *(a7 + 8);
      v18 = a7;
    }

    if (v19)
    {
      v20 = *(v18 + 16);
      v21 = v15;
      v22 = v17;
      do
      {
        *v21++ ^= *v20;
        v23 = *v20++;
        *v22++ ^= v23;
        --v19;
      }

      while (v19);
    }

    memcpy(&v15[*(a2 + 16)], a3, a4);
    (*(a2 + 40))(a1, a6, v15, *(a2 + 16) + a4, a5, a7);
    memcpy(&v17[*(a2 + 16)], *(a7 + 16), *(a7 + 8));
    (*(a2 + 40))(a1, a6, v17, *(a2 + 24) + *(a2 + 16), a5, a7);
    bzero(v15, *(a2 + 16) + a4);
    free(v15);
    bzero(v17, *(a2 + 24) + *(a2 + 16));
    v24 = 0;
  }

  else
  {
    v24 = 12;
    v17 = v15;
  }

  free(v17);
  return v24;
}

uint64_t krb5_hmac(krb5_context a1, int a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = dword_27F4D6668;
  if (dword_27F4D6668 < 1)
  {
LABEL_5:
    v11 = 2529639065;
    krb5_set_error_message(a1, -1765328231, "checksum type %d not supported", a2);
  }

  else
  {
    v9 = &off_27F4D6630;
    while (1)
    {
      v10 = *v9;
      if (**v9 == a2)
      {
        break;
      }

      ++v9;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    v13 = a6;
    v14 = 0;
    v11 = sub_252251134(a1, v10, a3, a4, a5, &v13, a7);
    if (v14)
    {
      krb5_free_data(a1, v14);
    }
  }

  return v11;
}

_DWORD *sub_2522513C0(int a1)
{
  v1 = dword_27F4D6668;
  if (dword_27F4D6668 < 1)
  {
    return 0;
  }

  for (i = &off_27F4D6630; ; ++i)
  {
    v3 = *i;
    if (**i == a1)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_252251404(_krb5_context *a1, uint64_t *a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = dword_27F4D6668;
  if (dword_27F4D6668 < 1)
  {
LABEL_5:
    v11 = 0;
  }

  else
  {
    v10 = &off_27F4D6630;
    while (1)
    {
      v11 = *v10;
      if (**v10 == 14)
      {
        break;
      }

      ++v10;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }
  }

  __src = &v16;
  v14 = xmmword_2522A9EB0;
  if (sub_252251134(a1, v11, a3, a4, a5, a2, &v14))
  {
    krb5_abortx(a1, "hmac failed");
  }

  memcpy(*(a6 + 16), __src, *(a6 + 8));
  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_2522514E0(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 16);
  result = CCDigest();
  if (result)
  {
    krb5_abortx(a1, "sha1 checksum failed");
  }

  return result;
}

uint64_t krb5_create_checksum(krb5_context a1, _DWORD **a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v12 = dword_27F4D6668;
    if (dword_27F4D6668 >= 1)
    {
      v13 = &off_27F4D6630;
      do
      {
        v14 = *v13;
        if (**v13 == a4)
        {
          goto LABEL_11;
        }

        ++v13;
      }

      while (--v12);
    }

LABEL_14:
    v16 = 2529639065;
    krb5_set_error_message(a1, -1765328231, "checksum type %d not supported", a4);
    return v16;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  v14 = *(*a2 + 7);
  if (!v14)
  {
    v14 = *(*a2 + 6);
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  a4 = *v14;
LABEL_11:
  if (a4 == -138 && *a2[1] == 23)
  {
    v18 = a3;
    sub_252283E50(a1, &v18);
    v15 = v18;
  }

  else
  {
    v15 = (a3 << 8) | 0x99;
    v18 = (a3 << 8) | 0x99;
  }

  return sub_252251658(a1, v14, a2, v15, a5, a6, a7);
}

uint64_t sub_252251658(krb5_context a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a2 + 32);
  if ((v8 & 0x40) != 0)
  {
    v14 = 2529639065;
    krb5_clear_error_message(a1);
    return v14;
  }

  if (!a3 && (v8 & 1) != 0)
  {
    v14 = 2529639065;
    krb5_set_error_message(a1, -1765328231, "Checksum type %s is keyed but no crypto context (key) was passed in", *(a2 + 8));
    return v14;
  }

  v19 = 0;
  if (v8)
  {
    v15 = sub_2522546B4(a1, a3, a4, a2, &v19);
    if (v15)
    {
      return v15;
    }
  }

  *a7 = *a2;
  v15 = krb5_data_alloc((a7 + 8), *(a2 + 24));
  if (v15)
  {
    return v15;
  }

  v17 = *(a2 + 40);
  v18 = v19;

  return v17(a1, v18, a5, a6, a4, a7);
}

uint64_t sub_252251890(krb5_context a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v6 = a1;
  v7 = *a6;
  v8 = dword_27F4D6668;
  if (dword_27F4D6668 < 1)
  {
    goto LABEL_14;
  }

  v35 = 0;
  v36[0] = 0;
  v36[1] = 0;
  v14 = &off_27F4D6630;
  while (1)
  {
    v15 = *v14;
    if (**v14 == v7)
    {
      break;
    }

    ++v14;
    if (!--v8)
    {
      goto LABEL_14;
    }
  }

  v16 = v15[8];
  if ((v16 & 0x40) != 0)
  {
LABEL_14:
    v19 = 2529639065;
    v32 = v7;
    v22 = "checksum type %d not supported";
LABEL_15:
    v23 = -1765328231;
LABEL_16:
    krb5_set_error_message(a1, v23, v22, v32, v33, v34);
    return v19;
  }

  v17 = (a6 + 2);
  if (*(v15 + 3) != *(a6 + 1))
  {
    krb5_clear_error_message(a1);
    v25 = *v17;
    v19 = 2529638943;
    v33 = *v17;
    v34 = *(v15 + 3);
    v32 = *(v15 + 1);
    v22 = "Decrypt integrity check failed for checksum type %s, length was %u, expected %u";
LABEL_19:
    a1 = v6;
    v23 = v19;
    goto LABEL_16;
  }

  v37 = 0;
  if ((v16 & 1) == 0)
  {
    v37 = 0;
    goto LABEL_10;
  }

  if (!a2)
  {
    v19 = 2529639065;
    v32 = *(v15 + 1);
    v22 = "Checksum type %s is keyed but no crypto context (key) was passed in";
    goto LABEL_15;
  }

  v26 = *(*a2 + 56);
  if (v26 && *v26 != v7)
  {
    v19 = 2529639065;
    v28 = *(v15 + 1);
    v32 = v28;
    v33 = *(*a2 + 8);
    v22 = "Checksum type %s is keyed, but the key type %s passed didnt have that checksum type as the keyed type";
    goto LABEL_15;
  }

  v27 = sub_2522546B4(a1, a2, a3, v15, &v37);
  if (v27)
  {
    return v27;
  }

LABEL_10:
  v18 = *(v15 + 6);
  if (!v18)
  {
    v27 = krb5_data_alloc(v36, *(v15 + 3));
    if (!v27)
    {
      v29 = (*(v15 + 5))(v6, v37, a4, a5, a3, &v35);
      if (v29)
      {
        v19 = v29;
      }

      else if (krb5_data_ct_cmp(v36, v17))
      {
        v30 = *(v15 + 1);
        if (a2)
        {
          v31 = *(*a2 + 8);
        }

        else
        {
          v31 = "(unkeyed)";
        }

        v19 = 2529638943;
        krb5_set_error_message(v6, -1765328353, "Decrypt integrity check failed for checksum type %s, key type %s", *(v15 + 1), v31);
      }

      else
      {
        v19 = 0;
      }

      krb5_data_free(v36);
      return v19;
    }

    return v27;
  }

  v19 = v18(v6, v37, a4, a5, a3, a6);
  if (v19)
  {
    v20 = *(v15 + 1);
    if (a2)
    {
      v21 = *(*a2 + 8);
    }

    else
    {
      v21 = "(none)";
    }

    v32 = *(v15 + 1);
    v33 = v21;
    v22 = "Decrypt integrity check failed for checksum type %s, key type %s";
    goto LABEL_19;
  }

  return v19;
}

uint64_t krb5_crypto_get_checksum_type(_krb5_context *a1, uint64_t a2, _DWORD *a3)
{
  if (a2 && ((v3 = *(*a2 + 56)) != 0 || (v3 = *(*a2 + 48)) != 0))
  {
    v4 = 0;
    *a3 = *v3;
  }

  else
  {
    v4 = 2529639065;
    krb5_set_error_message(a1, -1765328231, "checksum type not found");
  }

  return v4;
}

uint64_t krb5_checksumsize(_krb5_context *a1, int a2, void *a3)
{
  v3 = dword_27F4D6668;
  if (dword_27F4D6668 < 1)
  {
LABEL_5:
    v5 = 2529639065;
    krb5_set_error_message(a1, -1765328231, "checksum type %d not supported", a2);
  }

  else
  {
    v4 = &off_27F4D6630;
    while (**v4 != a2)
    {
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v5 = 0;
    *a3 = *(*v4 + 3);
  }

  return v5;
}

uint64_t krb5_checksum_is_keyed(uint64_t a1, int a2)
{
  v2 = dword_27F4D6668;
  if (dword_27F4D6668 < 1)
  {
    return 0;
  }

  for (i = &off_27F4D6630; **i != a2; ++i)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return *(*i + 8) & 1;
}

uint64_t krb5_checksum_is_collision_proof(uint64_t a1, int a2)
{
  v2 = dword_27F4D6668;
  if (dword_27F4D6668 < 1)
  {
    return 0;
  }

  for (i = &off_27F4D6630; **i != a2; ++i)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return (*(*i + 8) >> 1) & 1;
}

uint64_t krb5_checksum_disable(_krb5_context *a1, int a2)
{
  v2 = dword_27F4D6668;
  if (dword_27F4D6668 < 1)
  {
LABEL_5:
    v4 = 2529639065;
    if (a1)
    {
      krb5_set_error_message(a1, -1765328231, "checksum type %d not supported", a2);
    }
  }

  else
  {
    v3 = &off_27F4D6630;
    while (**v3 != a2)
    {
      ++v3;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    v4 = 0;
    *(*v3 + 8) |= 0x40u;
  }

  return v4;
}

krb5_error_code krb5_string_to_enctype(char *a1, krb5_enctype *a2)
{
  v5 = dword_27F4D66A0;
  if (dword_27F4D66A0 < 1)
  {
LABEL_5:
    v9 = -1765328234;
    krb5_set_error_message(a1, -1765328234, "encryption type %s not supported", a2);
  }

  else
  {
    v6 = v2;
    v7 = &off_27F4D6670;
    while (1)
    {
      v8 = *v7;
      if (!strcasecmp(*(*v7 + 1), a2))
      {
        break;
      }

      ++v7;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v9 = 0;
    *v6 = *v8;
  }

  return v9;
}

uint64_t krb5_enctype_valid(_krb5_context *a1, char *a2)
{
  v2 = dword_27F4D66A0;
  if (dword_27F4D66A0 >= 1)
  {
    v3 = &off_27F4D6670;
    while (1)
    {
      v4 = *v3;
      if (**v3 == a2)
      {
        break;
      }

      ++v3;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    if ((v4[8] & 0x40) == 0)
    {
      return 0;
    }

    v6 = 2529639062;
    if (a1)
    {
      krb5_set_error_message(a1, -1765328234, "encryption type %s is disabled", v4[1]);
    }

    return v6;
  }

LABEL_5:
  if (!a1)
  {
    return 2529639062;
  }

  return sub_252250F9C(a1, a2);
}

uint64_t krb5_cksumtype_valid(_krb5_context *a1, int a2)
{
  v2 = dword_27F4D6668;
  if (dword_27F4D6668 < 1)
  {
LABEL_5:
    v5 = 2529639065;
    krb5_set_error_message(a1, -1765328231, "checksum type %d not supported");
  }

  else
  {
    v3 = &off_27F4D6630;
    while (1)
    {
      v4 = *v3;
      if (**v3 == a2)
      {
        break;
      }

      ++v3;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    if ((v4[8] & 0x40) != 0)
    {
      v5 = 2529639065;
      v7 = *(v4 + 1);
      krb5_set_error_message(a1, -1765328231, "checksum type %s is disabled");
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t krb5_encrypt_iov_ivec(krb5_context a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if ((a5 & 0x80000000) != 0 || (v8 = *a2, (*(*a2 + 64) & 4) == 0))
  {
    krb5_clear_error_message(a1);
    return 2529639090;
  }

  if (!a5)
  {
    return 2529639102;
  }

  v13 = 0;
  v14 = a5;
  v15 = (a4 + 8);
  v16 = a5;
  do
  {
    if (*(v15 - 2) == 2)
    {
      v13 += *v15;
    }

    v15 += 3;
    --v16;
  }

  while (v16);
  v17 = *(v8 + 32);
  v18 = v13 + v17;
  v19 = (v13 + v17 + *(v8 + 24) - 1) & -*(v8 + 24);
  v20 = v19 - (v13 + v17);
  v21 = a4 + 8;
  v22 = a5;
  while (*(v21 - 8) != 1)
  {
    v21 += 24;
    if (!--v22)
    {
      return 2529639102;
    }
  }

  if (*v21 != v17)
  {
    return 2529639102;
  }

  __n = *(*(v8 + 56) + 24);
  size = v19;
  __len = v20;
  krb5_generate_random_block(*(v21 + 8), v17);
  v23 = a4;
  v24 = a5;
  while (*v23 != 4)
  {
    v23 += 24;
    if (!--v24)
    {
      if (size != v18)
      {
        return 2529639102;
      }

LABEL_22:
      v23 = 0;
      goto LABEL_24;
    }
  }

  if (*(v23 + 8) < __len)
  {
    return 2529639102;
  }

  *(v23 + 8) = __len;
  if (size == v18)
  {
    goto LABEL_22;
  }

  memset(*(v23 + 16), __len, __len);
LABEL_24:
  for (i = (a4 + 16); *(i - 4) != 5; i += 3)
  {
    if (!--v14)
    {
      return 2529639102;
    }
  }

  v9 = 2529639102;
  if (*(i - 1) == __n)
  {
    v27 = a5;
    v28 = (a4 + 8);
    v48 = a5;
    v29 = size;
    do
    {
      if (*(v28 - 2) == 3)
      {
        v29 += *v28;
      }

      v28 += 3;
      --v27;
    }

    while (v27);
    v45 = a6;
    v47 = v29;
    v30 = malloc_type_malloc(v29, 0x71BBA634uLL);
    memcpy(v30, *(v21 + 8), *v21);
    v46 = v30;
    v31 = &v30[*v21];
    v32 = a4 + 8;
    v33 = v48;
    do
    {
      if ((*(v32 - 8) & 0xFFFFFFFE) == 2)
      {
        memcpy(v31, *(v32 + 8), *v32);
        v31 += *v32;
      }

      v32 += 24;
      --v33;
    }

    while (v33);
    if (v23)
    {
      bzero(v31, *(v23 + 8));
    }

    v55 = 0;
    v56 = 0;
    __src = 0;
    v9 = sub_252251658(a1, *(v8 + 56), a2, (a3 << 8) | 0x55, v46, v47, &v55);
    free(v46);
    if (!v9)
    {
      if (v56 != __n)
      {
        sub_25228AB34(&v55);
        krb5_clear_error_message(a1);
        return 2529639090;
      }

      memcpy(*i, __src, __n);
      sub_25228AB34(&v55);
      v34 = malloc_type_malloc(size, 0x79F4478DuLL);
      if (!v34)
      {
        return 12;
      }

      v35 = v34;
      v54 = 0;
      memcpy(v34, *(v21 + 8), *v21);
      __na = v35;
      v36 = &v35[*v21];
      v37 = a4 + 8;
      v38 = v48;
      do
      {
        if (*(v37 - 8) == 2)
        {
          memcpy(v36, *(v37 + 8), *v37);
          v36 += *v37;
        }

        v37 += 24;
        --v38;
      }

      while (v38);
      if (v23)
      {
        bzero(v36, *(v23 + 8));
      }

      pthread_mutex_lock((a2 + 40));
      v39 = sub_252252528(a1, a2, (a3 << 8) | 0xAA, &v54);
      if (v39)
      {
        v9 = v39;
LABEL_54:
        v41 = __na;
LABEL_55:
        free(v41);
        return v9;
      }

      v40 = v54;
      v9 = sub_252252624(a1, v54);
      pthread_mutex_unlock((a2 + 40));
      if (v9)
      {
        goto LABEL_54;
      }

      v42 = (*(v8 + 72))(a1, v40, __na, size, 1, a3, v45);
      if (v42)
      {
        v9 = v42;
        v41 = __na;
        goto LABEL_55;
      }

      memcpy(*(v21 + 8), __na, *v21);
      v43 = &__na[*v21];
      v44 = a4 + 8;
      do
      {
        if (*(v44 - 8) == 2)
        {
          memcpy(*(v44 + 8), v43, *v44);
          v43 += *v44;
        }

        v44 += 24;
        --v48;
      }

      while (v48);
      if (v23)
      {
        memcpy(*(v23 + 16), v43, __len);
      }

      free(__na);
      return 0;
    }
  }

  return v9;
}

uint64_t sub_252252528(_krb5_context *a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v8 = *(a2 + 24);
  if (v8 < 1)
  {
LABEL_5:
    v10 = sub_2522547D4(a2, a3);
    if (v10)
    {
      v11 = v10;
      krb5_copy_keyblock(a1, *(a2 + 8), v10);
      _krb5_put_int(v14, a3, 5);
      sub_252253880(a1, *a2, v11, v14, 5uLL);
      v12 = 0;
      *a4 = v11;
    }

    else
    {
      pthread_mutex_unlock((a2 + 40));
      v12 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
    }
  }

  else
  {
    v9 = *(a2 + 32);
    while (**v9 != a3)
    {
      ++v9;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    v12 = 0;
    *a4 = (*v9 + 2);
  }

  return v12;
}

uint64_t sub_252252624(_krb5_context *a1, unsigned int **a2)
{
  v4 = **a2;
  v5 = dword_27F4D66A0;
  if (dword_27F4D66A0 < 1)
  {
LABEL_5:

    return sub_252250F9C(a1, v4);
  }

  else
  {
    v6 = &off_27F4D6670;
    while (**v6 != v4)
    {
      ++v6;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v8 = *(*v6 + 5);
    if (!*(v8 + 48) || a2[1])
    {
      return 0;
    }

    v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    a2[1] = v10;
    if (v10)
    {
      v9 = krb5_data_alloc(v10, *(v8 + 32));
      if (v9)
      {
        free(a2[1]);
        a2[1] = 0;
      }

      else
      {
        (*(v8 + 48))(a1, v8, a2);
      }
    }

    else
    {
      v9 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
    }

    return v9;
  }
}

uint64_t krb5_decrypt_iov_ivec(krb5_context a1, uint64_t a2, unsigned int a3, _DWORD *a4, unsigned int a5, uint64_t a6)
{
  v7 = *a2;
  if ((*(*a2 + 64) & 4) == 0)
  {
    krb5_clear_error_message(a1);
    return 2529639090;
  }

  v8 = 2529639102;
  if (a5)
  {
    v12 = *(v7 + 32);
    v13 = a5;
    v14 = (a4 + 2);
    v15 = a5;
    while (*(v14 - 2) != 1)
    {
      v14 += 3;
      if (!--v15)
      {
        return v8;
      }
    }

    if (*v14 == v12)
    {
      v16 = a4;
      if (*a4 != 5)
      {
        v16 = a4;
        do
        {
          v17 = v16[6];
          v16 += 6;
        }

        while (v17 != 5);
      }

      if (*(v16 + 1) == *(*(v7 + 56) + 24))
      {
        v18 = a4 + 2;
        v19 = a5;
        do
        {
          if (*(v18 - 2) == 2)
          {
            v12 += *v18;
          }

          v18 += 3;
          --v19;
        }

        while (v19);
        if (v12 % *(v7 + 24))
        {
          krb5_clear_error_message(a1);
          return v8;
        }

        v20 = malloc_type_malloc(v12, 0xD2A05DBBuLL);
        if (v20)
        {
          v21 = v20;
          v40 = a1;
          memcpy(v20, v14[1], *v14);
          v41 = v21;
          v22 = *v14 + v21;
          v23 = (a4 + 2);
          v43 = v13;
          do
          {
            if (*(v23 - 2) == 2)
            {
              memcpy(v22, v23[1], *v23);
              v22 = *v23 + v22;
            }

            v23 += 3;
            --v13;
          }

          while (v13);
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v44 = 0;
          pthread_mutex_lock((a2 + 40));
          v24 = sub_252252528(v40, a2, (a3 << 8) | 0xAA, &v44);
          if (v24)
          {
            v8 = v24;
LABEL_27:
            v26 = v41;
LABEL_28:
            free(v26);
            return v8;
          }

          v25 = v44;
          v8 = sub_252252624(v40, v44);
          pthread_mutex_unlock((a2 + 40));
          if (v8)
          {
            goto LABEL_27;
          }

          v27 = v25;
          v28 = v41;
          v29 = (*(v7 + 72))(v40, v27, v41, v12, 0, a3, a6);
          if (v29)
          {
LABEL_44:
            v8 = v29;
            v26 = v28;
            goto LABEL_28;
          }

          memcpy(v14[1], v41, *v14);
          v30 = *v14 + v41;
          v31 = (a4 + 2);
          v32 = v43;
          do
          {
            if (*(v31 - 2) == 2)
            {
              memcpy(v31[1], v30, *v31);
              v30 = *v31 + v30;
            }

            v31 += 3;
            --v32;
          }

          while (v32);
          free(v41);
          v33 = a4 + 2;
          v34 = v43;
          do
          {
            if (*(v33 - 2) == 3)
            {
              v12 += *v33;
            }

            v33 += 3;
            --v34;
          }

          while (v34);
          v35 = malloc_type_malloc(v12, 0xCC27E72DuLL);
          if (v35)
          {
            v28 = v35;
            memcpy(v35, v14[1], *v14);
            v36 = *v14 + v28;
            v37 = (a4 + 2);
            do
            {
              if ((*(v37 - 1) & 0xFFFFFFFE) == 2)
              {
                memcpy(v36, v37[1], *v37);
                v36 = *v37 + v36;
              }

              v37 += 3;
              --v43;
            }

            while (v43);
            v38 = *(v16 + 2);
            v46 = *(v16 + 1);
            v47 = v38;
            LODWORD(v45) = **(v7 + 56);
            v29 = sub_252251890(v40, a2, (a3 << 8) | 0x55, v28, v12, &v45);
            goto LABEL_44;
          }
        }

        return 12;
      }
    }
  }

  return v8;
}

uint64_t krb5_create_checksum_iov(krb5_context a1, _DWORD **a2, unsigned int a3, uint64_t a4, unsigned int a5, _DWORD *a6)
{
  if (((*a2)[16] & 4) != 0)
  {
    checksum = 2529639102;
    if (a5)
    {
      v12 = a5;
      v13 = a4 + 8;
      v14 = a5;
      while (*(v13 - 8) != 6)
      {
        v13 += 24;
        if (!--v14)
        {
          return checksum;
        }
      }

      v15 = 0;
      v16 = (a4 + 8);
      v17 = a5;
      do
      {
        if ((*(v16 - 1) & 0xFFFFFFFE) == 2)
        {
          v15 += *v16;
        }

        v16 += 3;
        --v17;
      }

      while (v17);
      v18 = malloc_type_malloc(v15, 0x555E9DDFuLL);
      v19 = a4 + 8;
      v20 = v18;
      do
      {
        if ((*(v19 - 8) & 0xFFFFFFFE) == 2)
        {
          memcpy(v20, *(v19 + 8), *v19);
          v20 += *v19;
        }

        v19 += 24;
        --v12;
      }

      while (v12);
      v23 = 0;
      __n = 0;
      __src = 0;
      checksum = krb5_create_checksum(a1, a2, a3, 0, v18, v15, &v23);
      free(v18);
      if (!checksum)
      {
        if (a6)
        {
          *a6 = v23;
        }

        v21 = __n;
        if (__n <= *v13)
        {
          *v13 = __n;
          memcpy(*(v13 + 8), __src, v21);
          sub_25228AB34(&v23);
          return 0;
        }

        else
        {
          krb5_set_error_message(a1, -1765328194, "Checksum larger then input buffer");
          sub_25228AB34(&v23);
          return 2529639102;
        }
      }
    }
  }

  else
  {
    krb5_clear_error_message(a1);
    return 2529639090;
  }

  return checksum;
}

uint64_t krb5_verify_checksum_iov(krb5_context a1, uint64_t *a2, const krb5_checksum *a3, uint64_t a4, unsigned int a5, _DWORD *a6)
{
  v7 = *a2;
  if ((*(*a2 + 64) & 4) != 0)
  {
    v8 = 2529639102;
    if (a5)
    {
      v11 = a2;
      v12 = a5;
      v13 = (a4 + 16);
      v14 = a5;
      while (*(v13 - 4) != 6)
      {
        v13 += 3;
        if (!--v14)
        {
          return v8;
        }
      }

      v15 = 0;
      v16 = (a4 + 8);
      v17 = a5;
      do
      {
        if ((*(v16 - 1) & 0xFFFFFFFE) == 2)
        {
          v15 += *v16;
        }

        v16 += 3;
        --v17;
      }

      while (v17);
      v18 = a4 + 8;
      in = malloc_type_malloc(v15, 0x336DFC67uLL);
      v20 = in;
      do
      {
        if ((*(v18 - 8) & 0xFFFFFFFE) == 2)
        {
          memcpy(v20, *(v18 + 8), *v18);
          v20 += *v18;
        }

        v18 += 24;
        --v12;
      }

      while (v12);
      v21 = *(v7 + 56);
      v22 = *(v13 - 1);
      v23 = *v13;
      seed[0] = 0;
      LODWORD(seed[0]) = *v21;
      seed[1] = v22;
      seed[2] = v23;
      v8 = krb5_verify_checksum(a1, v11, a3, in, v15, seed, v19);
      free(in);
      if (a6 && !v8)
      {
        *a6 = seed[0];
      }
    }
  }

  else
  {
    krb5_clear_error_message(a1);
    return 2529639090;
  }

  return v8;
}

uint64_t krb5_crypto_length(_krb5_context *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *a2;
  if ((*(*a2 + 64) & 4) != 0)
  {
    if (a3 > 3)
    {
      switch(a3)
      {
        case 4:
          v6 = 0;
          v7 = v4[3];
          if (v7 <= 1)
          {
            v7 = 0;
          }

          goto LABEL_22;
        case 5:
          v6 = 0;
          v7 = *(v4[7] + 24);
          goto LABEL_22;
        case 6:
          v8 = v4[7];
          if (!v8)
          {
            v8 = v4[6];
          }

          v6 = 0;
          v7 = *(v8 + 24);
          goto LABEL_22;
      }
    }

    else
    {
      if ((a3 - 2) < 2)
      {
        return 0;
      }

      if (!a3)
      {
        v6 = 0;
        *a4 = 0;
        return v6;
      }

      if (a3 == 1)
      {
        v6 = 0;
        v7 = v4[2];
LABEL_22:
        *a4 = v7;
        return v6;
      }
    }

    v10 = a3;
    v5 = "%d not a supported type";
    goto LABEL_3;
  }

  v5 = "not a derived crypto";
LABEL_3:
  v6 = 22;
  krb5_set_error_message(a1, 22, v5, v10);
  return v6;
}

uint64_t krb5_crypto_length_iov(_krb5_context *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = a4;
  for (i = (a3 + 8); ; i += 3)
  {
    result = krb5_crypto_length(a1, a2, *(i - 2), i);
    if (result)
    {
      break;
    }

    if (!--v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t krb5_encrypt_ivec(_krb5_context *a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, size_t *a6, uint64_t a7)
{
  v13 = *a2;
  v14 = *(*a2 + 64);
  if ((v14 & 4) != 0)
  {
    v37 = a6;
    v22 = *(*(v13 + 56) + 24);
    v23 = (a5 + *(v13 + 32) + *(v13 + 24) - 1) & -*(v13 + 24);
    v24 = v23 + v22;
    v25 = malloc_type_calloc(1uLL, v23 + v22, 0x4F2F557DuLL);
    if (!v25)
    {
      goto LABEL_12;
    }

    v26 = v25;
    v40 = 0;
    v41 = 0;
    __src = 0;
    krb5_generate_random_block(v25, *(v13 + 32));
    memcpy(&v26[*(v13 + 32)], a4, a5);
    v27 = sub_252251658(a1, *(v13 + 56), a2, (a3 << 8) | 0x55u, v26, v23, &v40);
    if (v27)
    {
      goto LABEL_8;
    }

    if (v41 != v22)
    {
      v21 = 2529639090;
      sub_25228AB34(&v40);
      krb5_clear_error_message(a1);
      goto LABEL_24;
    }

    v39 = 0;
    memcpy(&v26[v23], __src, v22);
    sub_25228AB34(&v40);
    pthread_mutex_lock((a2 + 40));
    v27 = sub_252252528(a1, a2, (a3 << 8) | 0xAAu, &v39);
    if (v27)
    {
LABEL_8:
      v21 = v27;
    }

    else
    {
      v34 = v39;
      v21 = sub_252252624(a1, v39);
      pthread_mutex_unlock((a2 + 40));
      if (!v21)
      {
        v21 = (*(v13 + 72))(a1, v34, v26, v23, 1, a3, a7);
        if (!v21)
        {
          *v37 = v24;
          v37[1] = v26;
          return v21;
        }
      }
    }

LABEL_24:
    bzero(v26, v24);
    v35 = v26;
LABEL_28:
    free(v35);
    return v21;
  }

  if ((v14 & 0x20) != 0)
  {
    v28 = *(*(v13 + 48) + 24);
    v29 = v28 + a5 + *(v13 + 32);
    v30 = malloc_type_malloc(v29, 0x9759AFCCuLL);
    if (v30)
    {
      v18 = v30;
      bzero(v30, v28);
      v31 = v18 + v28;
      krb5_generate_random_block(v31, *(v13 + 32));
      memcpy((v31 + *(v13 + 32)), a4, a5);
      v21 = (*(v13 + 72))(a1, a2 + 8, v18, v29, 1, a3, a7);
      if (v21)
      {
        v32 = v18;
        v33 = v29;
LABEL_27:
        bzero(v32, v33);
        v35 = v18;
        goto LABEL_28;
      }

      *a6 = v29;
      a6[1] = v18;
      return v21;
    }

LABEL_12:
    v21 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory", v37);
    return v21;
  }

  v15 = *(*(v13 + 48) + 24);
  v16 = (a5 + *(v13 + 32) + *(v13 + 24) + v15 - 1) & -*(v13 + 24);
  v17 = malloc_type_calloc(1uLL, v16, 0xB1B5ECF1uLL);
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = v17;
  v40 = 0;
  v41 = 0;
  __src = 0;
  krb5_generate_random_block(v17, *(v13 + 32));
  v19 = (v18 + *(v13 + 32));
  bzero(v19, v15);
  memcpy(&v19[v15], a4, a5);
  v20 = sub_252251658(a1, *(v13 + 48), a2, 0, v18, v16, &v40);
  if (v20)
  {
    v21 = v20;
LABEL_26:
    v32 = v18;
    v33 = v16;
    goto LABEL_27;
  }

  if (v41 != v15)
  {
    v21 = 2529639090;
    krb5_clear_error_message(a1);
    sub_25228AB34(&v40);
    goto LABEL_26;
  }

  memcpy((v18 + *(v13 + 32)), __src, v15);
  sub_25228AB34(&v40);
  pthread_mutex_lock((a2 + 40));
  v21 = sub_252252624(a1, (a2 + 8));
  pthread_mutex_unlock((a2 + 40));
  if (v21)
  {
    goto LABEL_26;
  }

  v21 = (*(v13 + 72))(a1, a2 + 8, v18, v16, 1, 0, a7);
  if (v21)
  {
    goto LABEL_26;
  }

  *a6 = v16;
  a6[1] = v18;
  return v21;
}

uint64_t krb5_encrypt_EncryptedData(_krb5_context *a1, _DWORD **a2, uint64_t a3, const void *a4, size_t a5, int a6, uint64_t a7)
{
  *a7 = **a2;
  if (a6)
  {
    v14 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    *v14 = a6;
  }

  else
  {
    v14 = 0;
  }

  *(a7 + 8) = v14;

  return krb5_encrypt_ivec(a1, a2, a3, a4, a5, (a7 + 16), 0);
}

uint64_t krb5_decrypt_ivec(krb5_context a1, uint64_t a2, uint64_t a3, const void *a4, size_t size, void *a6, uint64_t a7)
{
  v14 = *a2;
  v15 = *(*a2 + 64);
  if ((v15 & 4) != 0)
  {
    v22 = *(*(v14 + 56) + 24);
    if (*(v14 + 32) + v22 <= size)
    {
      v27 = size - v22;
      if ((size - v22) % *(v14 + 24))
      {
        goto LABEL_20;
      }

      v28 = malloc_type_malloc(size, 0xDB4AFC6BuLL);
      if (size && !v28)
      {
        goto LABEL_23;
      }

      v45 = 0;
      v46 = 0;
      v30 = size;
      v31 = v28;
      memcpy(v28, a4, v30);
      pthread_mutex_lock((a2 + 40));
      v32 = sub_252252528(a1, a2, (a3 << 8) | 0xAAu, &v45);
      if (v32)
      {
        goto LABEL_26;
      }

      v44 = v31;
      v33 = v45;
      v19 = sub_252252624(a1, v45);
      pthread_mutex_unlock((a2 + 40));
      if (v19)
      {
        v21 = v44;
        goto LABEL_29;
      }

      v36 = v33;
      v31 = v44;
      v32 = (*(v14 + 72))(a1, v36, v44, v27, 0, a3, a7);
      if (v32 || (v47 = v22, v48 = &v44[v27], LODWORD(v46) = **(v14 + 56), v32 = sub_252251890(a1, a2, (a3 << 8) | 0x55u, v44, v27, &v46), v32))
      {
LABEL_26:
        v19 = v32;
        v21 = v31;
        goto LABEL_29;
      }

      v37 = *(v14 + 32);
      memmove(v44, &v44[v37], v27 - v37);
      v38 = malloc_type_realloc(v44, v27 - v37, 0x7576B2B3uLL);
      a6[1] = v38;
      v39 = v27 - v37;
      if (v27 == v37 || v38)
      {
        goto LABEL_46;
      }

      v40 = v44;
LABEL_41:
      free(v40);
      goto LABEL_23;
    }
  }

  else
  {
    if ((v15 & 0x20) == 0)
    {
      if (!(size % *(v14 + 24)))
      {
        v16 = *(*(v14 + 48) + 24);
        if (*(v14 + 32) + v16 <= size)
        {
          v17 = malloc_type_malloc(size, 0x54B768CBuLL);
          v18 = v17;
          if (size && !v17)
          {
            goto LABEL_23;
          }

          memcpy(v17, a4, size);
          pthread_mutex_lock((a2 + 40));
          v19 = sub_252252624(a1, (a2 + 8));
          pthread_mutex_unlock((a2 + 40));
          if (v19)
          {
LABEL_11:
            v21 = v18;
LABEL_29:
            free(v21);
            return v19;
          }

          v20 = (*(v14 + 72))(a1, a2 + 8, v18, size, 0, 0, a7);
          if (v20 || (v46 = 0, v47 = 0, v48 = 0, v20 = krb5_data_copy(&v47, &v18[*(v14 + 32)], v16), v20))
          {
            v19 = v20;
            goto LABEL_11;
          }

          bzero(&v18[*(v14 + 32)], v16);
          LODWORD(v46) = **(v14 + 48);
          v19 = sub_252251890(a1, 0, 0, v18, size, &v46);
          sub_25228AB34(&v46);
          if (v19)
          {
            goto LABEL_11;
          }

          v41 = *(v14 + 32) + v16;
          memmove(v18, &v18[v41], size - v41);
          v42 = malloc_type_realloc(v18, size - v41, 0xE12EA010uLL);
          a6[1] = v42;
          v39 = size - v41;
          if (size != v41 && !v42)
          {
            v40 = v18;
            goto LABEL_41;
          }

LABEL_46:
          v19 = 0;
          *a6 = v39;
          return v19;
        }

        goto LABEL_13;
      }

LABEL_20:
      v19 = 2529639102;
      krb5_clear_error_message(a1);
      return v19;
    }

    if (size % *(v14 + 24))
    {
      goto LABEL_20;
    }

    v23 = *(*(v14 + 48) + 24);
    if (size >= *(v14 + 32) + v23)
    {
      v43 = (*(v14 + 32) + v23);
      v24 = malloc_type_malloc(size, 0x1087105uLL);
      if (!v24)
      {
LABEL_23:
        v19 = 12;
        krb5_set_error_message(a1, 12, "malloc: out of memory");
        return v19;
      }

      v25 = v24;
      memcpy(v24, a4, size);
      v26 = (*(v14 + 72))(a1, a2 + 8, v25, size, 0, a3, a7);
      if (v26)
      {
        v19 = v26;
        v21 = v25;
        goto LABEL_29;
      }

      memmove(v25, &v25[v23 + *(v14 + 32)], size - v43);
      v34 = malloc_type_realloc(v25, size - v43, 0x44CB1E21uLL);
      a6[1] = v34;
      if (v34)
      {
        v35 = 1;
      }

      else
      {
        v35 = size == v43;
      }

      if (v35)
      {
        v19 = 0;
        *a6 = size - v43;
        return v19;
      }

      v40 = v25;
      goto LABEL_41;
    }
  }

LABEL_13:
  v19 = 2529639102;
  krb5_set_error_message(a1, -1765328194, "Encrypted data shorter then checksum + confunder");
  return v19;
}