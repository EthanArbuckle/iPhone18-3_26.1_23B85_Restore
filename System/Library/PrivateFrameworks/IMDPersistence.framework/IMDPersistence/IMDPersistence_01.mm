BOOL IMDCreateTriggers(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7AE91B4;
  v3[3] = &unk_1E7CB8940;
  v4 = a2;
  v3[4] = a1;
  return IMDRunSqlOperation(v3);
}

void *sub_1B7AE3954(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1B7C107FC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t type metadata accessor for SQLConnectionConfiguration()
{
  result = qword_1EBA50F28;
  if (!qword_1EBA50F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

const char *sub_1B7AE3B2C(uint64_t a1, uint64_t a2, char a3)
{
  ppStmt[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v3 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration + 17);
  }

  if (v6 == 1)
  {
    v7 = sub_1B7AEA904();
    v8 = sub_1B7AE4904(a1, a2);
    if (v8)
    {
      v9 = v8;
      (v7)(v31, 0);
LABEL_12:
      v21 = *MEMORY[0x1E69E9840];
      return v9;
    }

    (v7)(v31, 0);
  }

  ppStmt[0] = 0;
  v10 = *(v3 + 16);
  v11 = sub_1B7CFEAD0();
  v12 = sqlite3_prepare_v2(v10, (v11 + 32), -1, ppStmt, 0);

  if (!v12)
  {
    v22 = ppStmt[0];
    if (ppStmt[0])
    {
      type metadata accessor for SQLStatement();
      v9 = swift_allocObject();
      *(v9 + 16) = v22;
      if (v6)
      {
        v23 = (v3 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
        swift_beginAccess();
        v24 = *v23;
        if (*(*v23 + 16) >= v23[2])
        {
          v26 = v23[1];

          v23[1] = v24;
          v27 = sub_1B7C2377C(MEMORY[0x1E69E7CC0]);

          *v23 = v27;
        }

        else
        {
        }

        sub_1B7AEA990(0, a1, a2);
        v28 = *v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = *v23;
        *v23 = 0x8000000000000000;
        sub_1B7AEAD4C(v9, a1, a2, isUniquelyReferenced_nonNull_native, sub_1B7CE834C, sub_1B7AEAA98);

        *v23 = v30;
        swift_endAccess();
      }

      goto LABEL_12;
    }

    type metadata accessor for SQLConnectionError(0);
    sub_1B7C14C5C();
    v18 = swift_allocError();
    *v25 = a1;
    v25[1] = a2;
    v25[2] = 0;
    swift_storeEnumTagMultiPayload();

    goto LABEL_11;
  }

  result = sqlite3_errmsg(v10);
  if (result)
  {
    v14 = sub_1B7CFEB70();
    v16 = v15;
    v17 = sqlite3_extended_errcode(v10);
    sub_1B7C951E8();
    v18 = swift_allocError();
    *v19 = v17;
    v19[1] = v14;
    v19[2] = v16;
LABEL_11:
    swift_willThrow();
    v9 = type metadata accessor for SQLConnectionError(0);
    sub_1B7C14C5C();
    swift_allocError();
    *v20 = a1;
    v20[1] = a2;
    v20[2] = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7AE3EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLConnectionConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7AE3F08(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7AE3F68()
{
  v0 = type metadata accessor for SQLConnectionConfiguration();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B7CFE4A0();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  IMDEnsureSharedRecordStoreInitialized();
  IMDSharedSqliteDatabase();
  _IMDPersistenceGetThreadedStoreQueue();
  v10 = v9;
  if (v10)
  {
    *v8 = v10;
    (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
    v11 = sub_1B7CFE4C0();
    (*(v5 + 8))(v8, v4);
    if ((v11 & 1) == 0)
    {
      __break(1u);
      goto LABEL_8;
    }

    v12 = CSDBSqliteDatabaseConnectionForWriting();
    if (v12)
    {
      v4 = *(v12 + 8);
      if (v4)
      {
        v8 = *(v0 + 28);
        if (qword_1EBA50ED0 == -1)
        {
LABEL_6:
          v13 = sub_1B7CFE420();
          v14 = sub_1B7AD9040(v13, qword_1EBA5DA50);
          v15 = *(v13 - 8);
          (*(v15 + 16))(&v8[v3], v14, v13);
          (*(v15 + 56))(&v8[v3], 0, 1, v13);
          *v3 = 1;
          *(v3 + 8) = 0x4082C00000000000;
          *(v3 + 16) = 256;
          v16 = type metadata accessor for SQLConnection(0);
          v17 = *(v16 + 48);
          v18 = *(v16 + 52);
          v19 = swift_allocObject();
          v20 = (v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
          v21 = MEMORY[0x1E69E7CC8];
          *v20 = MEMORY[0x1E69E7CC8];
          v20[1] = v21;
          v20[2] = 32;
          *(v19 + 16) = v4;
          *(v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
          sub_1B7AE3EA4(v3, v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
          sqlite3_busy_timeout(v4, 600000);
          sub_1B7AE3F08(v3);
          return v19;
        }

LABEL_8:
        swift_once();
        goto LABEL_6;
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

void sub_1B7AE42DC(unint64_t a1, const char *a2, void (*a3)(char *, void))
{
  sub_1B7AE3F68();

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  isUniquelyReferenced_nonNull_native = v8 + 1;
  if (v8 >= v7 >> 1)
  {
LABEL_31:
    v6 = sub_1B7AE3A9C((v7 > 1), isUniquelyReferenced_nonNull_native, 1, v6);
  }

  v38 = MEMORY[0x1E69E6158];
  v39 = &off_1F2FA8B58;
  *&v37 = a1;
  *(&v37 + 1) = a2;
  *(v6 + 2) = isUniquelyReferenced_nonNull_native;
  sub_1B7AE910C(&v37, &v6[40 * v8 + 32]);
  a2 = sub_1B7AE3B2C(0xD0000000000000A4, 0x80000001B7D50EF0, 0);
  *&v37 = v5;

  sub_1B7AEA964(v6, a2, &v37, a2);

  isUniquelyReferenced_nonNull_native = v37;
  v6 = sub_1B7AF1238(MEMORY[0x1E69E7CC0]);
  v35 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v35)
  {
LABEL_27:

    a3(v6, 0);

    return;
  }

  a1 = 0;
  v10 = (isUniquelyReferenced_nonNull_native + 56);
  v34 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    v7 = *(isUniquelyReferenced_nonNull_native + 16);
    if (a1 >= v7)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v8 = *(v10 - 3);
    v13 = *(v10 - 2);
    v14 = *(v10 - 1);
    v15 = *v10;
    v16 = *(v6 + 2);

    if (v16)
    {

      v17 = sub_1B7AE11D0(v8, v13);
      v19 = v18;

      v20 = MEMORY[0x1E69E7CC0];
      if ((v19 & 1) == 0)
      {
        goto LABEL_12;
      }

      v20 = *(*(v6 + 7) + 8 * v17);
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

LABEL_12:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1B7AF182C(0, *(v20 + 2) + 1, 1, v20);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    v36 = a1;
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1B7AF182C((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[16 * v22];
    *(v23 + 4) = v14;
    *(v23 + 5) = v15;
    a1 = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v37 = v6;
    v5 = v8;
    a2 = v6;
    v25 = sub_1B7AE11D0(v8, v13);
    v7 = *(v6 + 2);
    v26 = (v24 & 1) == 0;
    v27 = v7 + v26;
    if (__OFADD__(v7, v26))
    {
      goto LABEL_29;
    }

    v8 = v24;
    if (*(v6 + 3) < v27)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v24)
      {
        goto LABEL_4;
      }
    }

    else
    {
      a2 = &v37;
      sub_1B7CE84C8();
      if (v8)
      {
LABEL_4:

        v6 = v37;
        v11 = *(v37 + 56);
        v12 = *(v11 + 8 * v25);
        *(v11 + 8 * v25) = v20;

        goto LABEL_5;
      }
    }

LABEL_23:
    v6 = v37;
    *(v37 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v30 = (*(v6 + 6) + 16 * v25);
    *v30 = v5;
    v30[1] = v13;
    *(*(v6 + 7) + 8 * v25) = v20;

    v31 = *(v6 + 2);
    v32 = __OFADD__(v31, 1);
    v7 = v31 + 1;
    if (v32)
    {
      goto LABEL_30;
    }

    *(v6 + 2) = v7;
LABEL_5:
    a1 = v36 + 1;
    v10 += 4;
    isUniquelyReferenced_nonNull_native = v34;
    if (v35 == v36 + 1)
    {
      goto LABEL_27;
    }
  }

  sub_1B7CE4030(v27, isUniquelyReferenced_nonNull_native);
  a2 = v37;
  v28 = sub_1B7AE11D0(v5, v13);
  if ((v8 & 1) == (v29 & 1))
  {
    v25 = v28;
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  sub_1B7CFF740();
  __break(1u);
}

void _IMDPersistenceGetThreadedStoreQueue()
{
  IMDSharedThreadedRecordStore();

  JUMPOUT(0x1B8CAF1A0);
}

uint64_t sub_1B7AE4904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[1];
  if (*(v6 + 16))
  {
    v7 = v2[1];
    v8 = sub_1B7AE11D0(a1, a2);
    v9 = *v3;
    if (v10)
    {
      v11 = *(*(v6 + 56) + 8 * v8);
      v12 = *(v9 + 16);
      v13 = v3[2];

      if (v12 >= v13)
      {

        v3[1] = v9;
        v14 = sub_1B7C2377C(MEMORY[0x1E69E7CC0]);

        *v3 = v14;
      }

      sub_1B7AEA990(0, a1, a2);

      v15 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      sub_1B7AEAD4C(v11, a1, a2, isUniquelyReferenced_nonNull_native, sub_1B7CE834C, sub_1B7AEAA98);

      v9 = v21;
      *v3 = v21;
    }

    if (!*(v9 + 16))
    {
      return 0;
    }
  }

  else
  {
    v9 = *v2;
    if (!*(*v3 + 16))
    {
      return 0;
    }
  }

  v17 = sub_1B7AE11D0(a1, a2);
  if (v18)
  {
    v19 = *(*(v9 + 56) + 8 * v17);
  }

  return 0;
}

void IMDHandleRecordBulkCopy(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {
    v12 = *(a1 + 24);
    if (v12)
    {
      if (a2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
        v14 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }

        *a2 = v14;
      }

      if (a3)
      {
        v15 = CFArrayGetValueAtIndex(*(a1 + 24), 1);
        v16 = v15;
        if (v15)
        {
          CFRetain(v15);
        }

        *a3 = v16;
      }

      if (a4)
      {
        v17 = CFArrayGetValueAtIndex(*(a1 + 24), 2);
        v18 = v17;
        if (v17)
        {
          CFRetain(v17);
        }

        *a4 = v18;
      }

      if (a5)
      {
        v19 = CFArrayGetValueAtIndex(*(a1 + 24), 3);
        v20 = v19;
        if (v19)
        {
          CFRetain(v19);
        }

        *a5 = v20;
      }

      if (a6)
      {
        v21 = CFArrayGetValueAtIndex(*(a1 + 24), 4);
        v22 = v21;
        if (v21)
        {
          CFRetain(v21);
        }

        *a6 = v22;
      }
    }

    if (IMDIsRunningInDatabaseServerProcess())
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1B7B399A8;
      v31[3] = &unk_1E7CB8310;
      v31[4] = a1;
      v31[5] = a2;
      v31[6] = a3;
      v31[7] = a4;
      v31[8] = a5;
      v31[9] = a6;
      _IMDPerformBlock(v31);
    }
  }

  else
  {
    v23 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFE64(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }
}

uint64_t IMDMessageRecordCopyChats(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    Identifier = IMDMessageRecordGetIdentifier(a1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7AE9714;
    v7[3] = &unk_1E7CB7520;
    v7[4] = &v8;
    v7[5] = Identifier;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT chat_id FROM chat_message_join WHERE message_id = ?;", v7);
  }

  else
  {
    v3 = IMDMessageRecordGetIdentifier(a1);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7AE4EBC;
    v6[3] = &unk_1E7CB6838;
    v6[4] = &v8;
    __syncXPCIMDMessageRecordCopyChats_IPCAction(v6, v3);
  }

  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __syncXPCIMDMessageRecordCopyChats_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 101);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "messageID", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

uint64_t IMDMessageRecordGetIdentifier(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = *(a1 + 16);
  }

  else
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Attempted to get record identifier for NULL message record: %@", &v4, 0xCu);
    }

    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

xpc_object_t sub_1B7AE4EBC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7AE4F68;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

void *sub_1B7AE4F50(void *result)
{
  result[4] = 0;
  result[5] = -1;
  result[2] = -1;
  result[3] = 0;
  result[6] = 0;
  result[7] = -1;
  result[8] = 0;
  result[9] = 0;
  return result;
}

uint64_t sub_1B7AE4F68(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDChatRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

void *_IMDCopyIMDChatRecordFromXPCObjectClient(void *a1)
{
  if (xpc_dictionary_get_count(a1) < 3)
  {
    return 0;
  }

  pthread_once(&stru_1EDBE5A50, sub_1B7AE97F8);
  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (!Instance)
  {
    return v2;
  }

  *(Instance + 16) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 32) = 0u;
  if (*(Instance + 24))
  {
    goto LABEL_41;
  }

  v4 = 28;
  Mutable = CFArrayCreateMutable(0, 28, 0);
  do
  {
    CFArrayAppendValue(Mutable, 0);
    --v4;
  }

  while (v4);
  v8 = 0;
  do
  {
    v9 = 0;
    v10 = (*(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, v6, v7) + 80) + v8);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v15 = IMGetXPCDataFromDictionary();
        goto LABEL_17;
      }

      v14 = 0;
      if (v12 == 3)
      {
        valuePtr[0] = IMGetXPCIntFromDictionary();
        v9 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
        v14 = v9;
      }
    }

    else
    {
      if (!v12)
      {
        v15 = IMGetXPCIntFromDictionary();
        goto LABEL_17;
      }

      v14 = 0;
      if (v12 == 1)
      {
        v15 = IMGetXPCStringFromDictionary();
LABEL_17:
        v9 = v15;
        v14 = 0;
      }
    }

    if (CFArrayGetValueAtIndex(Mutable, v4))
    {
      if (v13)
      {
        v16 = *(v13 + 8);
        if (v16)
        {
          v16();
        }
      }
    }

    if (v9 && v13 && *v13)
    {
      v9 = (*v13)(v9);
    }

    CFArraySetValueAtIndex(Mutable, v4, v9);
    if (v14)
    {
      CFRelease(v14);
    }

    ++v4;
    v8 += 40;
  }

  while (v4 != 28);
  v2[3] = Mutable;
  value = xpc_dictionary_get_value(a1, "handles_cache");
  if (value)
  {
    v18 = value;
    if (!v2[4])
    {
      count = xpc_array_get_count(value);
      v2[4] = CFArrayCreateMutable(0, count, MEMORY[0x1E695E9C0]);
    }

    valuePtr[0] = MEMORY[0x1E69E9820];
    valuePtr[1] = 3221225472;
    valuePtr[2] = sub_1B7B591D0;
    valuePtr[3] = &unk_1E7CB8278;
    valuePtr[4] = v2;
    xpc_array_apply(v18, valuePtr);
  }

  v20 = xpc_dictionary_get_value(a1, "last_message_cache");
  if (v20)
  {
    v2[6] = _IMDCopyIMDMessageRecordFromXPCObjectClient(v20);
  }

  v2[5] = xpc_dictionary_get_int64(a1, "unread_count_cache");
  v2[7] = xpc_dictionary_get_int64(a1, "last_message_date_on_load");
  if (!v2[8])
  {
    v21 = IMGetXPCDictionaryFromDictionary();
    if (v21)
    {
      v2[8] = CFRetain(v21);
    }
  }

  if (!v2[9])
  {
    v22 = IMGetXPCArrayFromDictionary();
    if (v22)
    {
      v2[9] = CFRetain(v22);
    }
  }

LABEL_41:
  v2[2] = xpc_dictionary_get_int64(a1, "recordIdentifier");
  return v2;
}

void IMDSqlStatementBindInt(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      goto LABEL_7;
    }
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEB898(v5, v6);
  }

  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
LABEL_7:
      v7 = *(a1 + 32) + 1;
      *(a1 + 32) = v7;
      sqlite3_bind_int(v4, v7, a2);
    }
  }
}

void IMDSqlStatementBindTextFromCFString(uint64_t a1, uint64_t a2)
{
  if (a1 && *(a1 + 16) && *a1)
  {
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEB514(v4, v5);
    }

    if (a2)
    {
LABEL_5:
      if (!a1)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEB5C8(v6, v7);
  }

  if (a1)
  {
LABEL_13:
    if (*a1)
    {
      v8 = CSDBCreateUTF8StringFromCFString();
      if (v8)
      {
        v9 = v8;
        v10 = *a1;
        v11 = *(a1 + 32) + 1;
        *(a1 + 32) = v11;
        sqlite3_bind_text(v10, v11, v9, -1, MEMORY[0x1E69E9B38]);
      }
    }
  }
}

uint64_t sub_1B7AE548C(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[6]);
  if (v2)
  {
    v3 = v2;
    v4 = IMDChatRecordCopyHandles(v2);
    v5 = xpc_array_create(0, 0);
    if (v5)
    {
      v8 = v5;
      v9 = objc_msgSend_count(v4, v6, v7);
      if (v9 >= 1)
      {
        v11 = 0;
        v12 = v9 & 0x7FFFFFFF;
        do
        {
          v13 = objc_msgSend_objectAtIndex_(v4, v10, v11);
          v14 = xpc_dictionary_create(0, 0, 0);
          if (v14)
          {
            v15 = v14;
            _IMDHandleRecordBulkCopyXPCDictionary(v13, v14, 1);
            xpc_array_append_value(v8, v15);
            xpc_release(v15);
          }

          ++v11;
        }

        while (v12 != v11);
      }

      v16 = a1[4];
      if (v16)
      {
        xpc_dictionary_set_value(v16, "array_result", v8);
      }

      xpc_release(v8);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(v3);
  }

  result = a1[5];
  if (result)
  {
    v18 = *(result + 16);

    return v18();
  }

  return result;
}

uint64_t sub_1B7AE55D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  CSDBSqliteBindInt();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9C0];
    do
    {
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v9);
      }

      v10 = sqlite3_column_int(*(a4 + 8), 0);
      v11 = IMDHandleRecordCreateFromRecordIDUnlocked(v8, v10);
      if (v11)
      {
        v12 = v11;
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
        CFRelease(v12);
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

void *IMDChatRecordCopyHandles(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v2 = v1[2];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1B7AE55D0;
      v7[3] = &unk_1E7CB7520;
      v7[4] = &v8;
      v7[5] = v2;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT handle_id FROM chat_handle_join WHERE chat_id = ?", v7);
    }

    else
    {
      v3 = v1[4];
      if (v3)
      {
        v1 = CFRetain(v3);
LABEL_8:
        _Block_object_dispose(&v8, 8);
        return v1;
      }

      v4 = v1[2];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1B7AF08C4;
      v6[3] = &unk_1E7CB6838;
      v6[4] = &v8;
      __syncXPCIMDChatRecordCopyHandles_IPCAction(v6, v4);
    }

    v1 = v9[3];
    goto LABEL_8;
  }

  return v1;
}

uint64_t IMDHandleRecordCopyHandleRecordUnlocked(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7AEB3A0;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7AE58AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7AE58C4(uint64_t a1)
{
  v2 = IMDHandleRecordCopyHandleRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = &off_1E7CB8330;
    do
    {
      v6 = *v5;
      v5 += 5;
      CSDBRecordGetProperty();
      v7 = *(a1 + 32);
      IMInsertNSStringsToXPCDictionary();
      ++v4;
    }

    while (v4 != 5);
    xpc_dictionary_set_int64(*(a1 + 32), "recordIdentifier", *(*(a1 + 48) + 16));

    CFRelease(v3);
  }
}

void _IMDHandleRecordBulkCopyXPCDictionary(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a1)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1B7AE58C4;
      v19[3] = &unk_1E7CB8428;
      v19[4] = a2;
      v19[5] = a1;
      v19[6] = a1;
      if (a3)
      {
        _IMDPerformBlock(v19);
      }

      else
      {
        sub_1B7AE58C4(v19);
      }
    }

    else
    {
      v11 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEFF54(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFFCC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

uint64_t _IMDPerformBlock(uint64_t a1)
{
  if (a1)
  {
    IMDEnsureSharedRecordStoreInitialized();
    v2 = *(a1 + 16);

    return v2(a1);
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE670(v4, v5);
    }

    return IMDEnsureSharedRecordStoreInitialized();
  }
}

const void *IMDHandleRecordCreateFromRecordIDUnlocked_0(uint64_t a1, uint64_t a2)
{
  pthread_once(&stru_1EDBE5A70, sub_1B7B38EF8);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 0;
  }

  v4 = Instance;
  *(Instance + 16) = a2;
  *(Instance + 24) = 0;
  v5 = IMDHandleRecordCopyHandleRecordUnlocked(a2);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v5 = v4;
    v6 = 0;
  }

  CFRelease(v5);
  return v6;
}

void IMDSqlOperationIterateRow(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF3054(v5, v6);
  }

  if (!v4)
  {
LABEL_7:
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3110(v7, v8);
    }
  }

LABEL_10:
  IMDSqlStatementIterateRow((a1 + 32), v4);
}

void IMDSqlStatementIterateRow(sqlite3_stmt **a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEC270(v4, v5);
    }

    if (!a1)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (*a1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (a1)
  {
    goto LABEL_7;
  }

LABEL_8:
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEC324(v6, v7);
  }

LABEL_11:
  if (a1 && v3)
  {
    v8 = *a1;
    if (*a1)
    {
      v17 = 0;
      if (sqlite3_column_count(v8) >= 1)
      {
        v9 = 0;
        do
        {
          v10 = sqlite3_column_name(v8, v9);
          v11 = v3[2];
          v14[0] = a1;
          v14[1] = v10;
          v15 = v9;
          v16 = 0;
          v11(v3, v14, &v17);
          if (v17 == 1)
          {
            break;
          }

          ++v9;
        }

        while (v9 < sqlite3_column_count(v8));
      }
    }

    else
    {
      v12 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEC3D8(v12, v13);
      }
    }
  }
}

sqlite3_int64 IMDInt64FromSqlColumn(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    goto LABEL_13;
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEBE38(v3, v4);
  }

  v2 = *a1;
  if (*a1)
  {
LABEL_13:
    if (*v2)
    {
      return sqlite3_column_int64(*v2, *(a1 + 16));
    }

    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEBEEC(v6, v7);
    }
  }

  return 0;
}

uint64_t IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier(void *a1, char *a2, uint64_t a3, const __CFString *a4, int a5, int a6, const char *a7)
{
  v67 = *MEMORY[0x1E69E9840];
  if (a3 || a5)
  {
    v16 = *MEMORY[0x1E69E9840];

    return _IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier_Original(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = objc_msgSend_count(a1, a2, 0);
    v14 = objc_msgSend_count(a2, v10, v11);
    v58 = 0;
    v59 = 0;
    if (a4)
    {
      v15 = CFStringGetLength(a4) > 0;
    }

    else
    {
      v15 = 0;
    }

    v18 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v12, v13);
    isOneChatEnabled = objc_msgSend_isOneChatEnabled(v18, v19, v20);
    if (v9 && v14 && v9 == v14)
    {
      v22 = isOneChatEnabled;
      v45 = v15 && (IMMessageThreadIdentifierGetComponents(), objc_msgSend_length(v59, v23, v24)) && objc_msgSend_length(v58, v25, v26) != 0;
      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v57 = 0;
      if (IMDIsRunningInDatabaseServerProcess())
      {
        v29 = objc_alloc(MEMORY[0x1E695DFA8]);
        v31 = objc_msgSend_initWithCapacity_(v29, v30, a7);
        if (!v31)
        {
          v32 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v34 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v33, &stru_1F2FA9728);
            sub_1B7CFBF88(v34, v66);
          }
        }

        v44 = objc_alloc_init(MEMORY[0x1E69A6170]);
        objc_msgSend_startTimingForKey_(v44, v35, @"sqlite-timing");
        v36 = 0;
        v37 = v22 ^ 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v36);
          v39 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 134218498;
            v61 = v36;
            v62 = 2048;
            v63 = v9;
            v64 = 2112;
            v65 = ValueAtIndex;
            _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_INFO, "history query %lu / %lu - %@", buf, 0x20u);
          }

          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = sub_1B7AFB9DC;
          v50[3] = &unk_1E7CBCDD8;
          v50[8] = v36;
          v50[9] = v9;
          v51 = v45;
          v52 = v37;
          v53 = a6;
          v50[10] = a7;
          v50[11] = a1;
          v50[4] = ValueAtIndex;
          v50[5] = v59;
          v50[12] = a2;
          v50[13] = a4;
          v50[6] = v58;
          v50[7] = v31;
          IMDRunSqlOperation(v50);
          ++v36;
        }

        while (v9 != v36);
        objc_msgSend_stopTimingForKey_(v44, v40, @"sqlite-timing");
        v41 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v61 = v44;
          _os_log_impl(&dword_1B7AD5000, v41, OS_LOG_TYPE_INFO, "sqlite query timing: %@", buf, 0xCu);
        }

        MessagesInSet = IMDMessageRecordLoadMessagesInSet(v31, a7, 1);
        v55[3] = MessagesInSet;
      }

      else
      {
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = sub_1B7BDABB8;
        v49[3] = &unk_1E7CB6838;
        v49[4] = &v54;
        __syncXPCIMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesWithOptionalThreadIdentifierAndLimit_IPCAction(v49, a1, a2, 0, a4, a7, 0, a6 != 0);
      }

      v28 = v55[3];
      _Block_object_dispose(&v54, 8);
    }

    else
    {
      v27 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFBF4C();
      }

      v28 = 0;
    }

    v43 = *MEMORY[0x1E69E9840];
    return v28;
  }
}

const __CFArray *IMDMessageRecordLoadMessagesInSet(void *a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v5 = objc_msgSend_allObjects(a1, a2, a3);
  v8 = objc_msgSend_mutableCopy(v5, v6, v7);
  v9 = v8;
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (Count << 32)
    {
      v11 = Count;
      if (Count >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = Count;
      }

      if (a2)
      {
        v13 = v12;
      }

      else
      {
        v13 = Count;
      }

      v14 = objc_alloc(MEMORY[0x1E695DF70]);
      v16 = objc_msgSend_initWithCapacity_(v14, v15, v11);
      if (v11 >= 1)
      {
        v17 = 0;
        v18 = *MEMORY[0x1E695E480];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v17);
          v22 = objc_msgSend_integerValue(ValueAtIndex, v20, v21);
          v23 = IMDMessageRecordCreateFromRecordIDUnlocked(v18, v22);
          if (v23)
          {
            v25 = v23;
            objc_msgSend_addObject_(v16, v24, v23);
            CFRelease(v25);
          }

          ++v17;
        }

        while (v11 != v17);
      }

      if (v3)
      {
        v26 = IMDCreateMessageSortComparatorDescending();
      }

      else
      {
        v26 = IMDCreateMessageSortComparatorAscending();
      }

      v27 = v26;
      CFRelease(v9);
      if (!v27)
      {
        v28 = MEMORY[0x1E696AEC0];
        v29 = IMFileLocationTrimFileName();
        v31 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v30, &stru_1F2FA9728);
        v33 = objc_msgSend_stringWithFormat_(v28, v32, @"Unexpected nil '%@' in %s at %s:%d. %@", @"comparator", "CFMutableArrayRef IMDMessageRecordLoadMessagesInSet(NSSet *, uint64_t, BOOL)", v29, 1181, v31);
        v34 = IMGetAssertionFailureHandler();
        if (v34)
        {
          v34(v33);
        }

        else
        {
          v37 = objc_msgSend_warning(MEMORY[0x1E69A6138], v35, v36);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CED0B0();
          }
        }
      }

      v38 = objc_autoreleasePoolPush();
      v40 = objc_msgSend_sortedArrayUsingComparator_(v16, v39, v27);
      if (objc_msgSend_count(v16, v41, v42) < v13)
      {
        v13 = objc_msgSend_count(v16, v43, v44);
      }

      v45 = objc_msgSend_subarrayWithRange_(v40, v43, 0, v13);
      v9 = objc_msgSend_mutableCopy(v45, v46, v47);
      objc_autoreleasePoolPop(v38);
      if ((v3 & 1) == 0)
      {
        v50 = objc_msgSend_reverseObjectEnumerator(v9, v48, v49);
        v53 = objc_msgSend_allObjects(v50, v51, v52);
        v56 = objc_msgSend_mutableCopy(v53, v54, v55);

        v9 = v56;
      }

      _Block_release(v27);
    }
  }

  return v9;
}

uint64_t sub_1B7AE64DC(uint64_t a1)
{
  if ((a1 - 17) > 0x4A)
  {
    return 0;
  }

  else
  {
    return qword_1B7D09860[a1 - 17];
  }
}

const void *IMDMessageRecordCreateFromRecordIDWithLock(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  pthread_once(&stru_1EDBE5A60, sub_1B7B346D4);
  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
    *(Instance + 2) = a2;
    if (a3)
    {
      v7 = IMDMessageRecordCopyMessageRecord(a2);
      if (v7)
      {
LABEL_4:
        CFRelease(v7);
        goto LABEL_9;
      }
    }

    else
    {
      v7 = IMDMessageRecordCopyMessageRecordUnlocked(a2);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v8 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = a2;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Error IMDMessageRecordCreateFromRecordIDWithLock could not create message for id %lld", &v11, 0xCu);
    }

    CFRelease(v6);
    v6 = 0;
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t IMDMessageRecordCopyMessageRecordUnlocked(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7AEAEF0;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7AE66D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7AE66E8(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 88), *(a1 + 89), *(a1 + 80));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = *(a1 + 88);
      v9 = objc_msgSend_count(v2, v4, v5);
      v10 = @"NO";
      *v23 = 138413058;
      *&v23[4] = v7;
      *&v23[12] = 2112;
      if (v8)
      {
        v10 = @"YES";
      }

      *&v23[14] = v6;
      v24 = 2112;
      v25 = v10;
      v26 = 2048;
      v27 = v9;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying messages for chat identifiers: %@ on services: %@ onlyMessages: %@   (Results: %ld)", v23, 0x2Au);
    }
  }

  v13 = xpc_array_create(0, 0);
  if (v13)
  {
    v14 = objc_msgSend_count(v2, v11, v12);
    if (v14 >= 1)
    {
      v16 = 0;
      v17 = v14 & 0x7FFFFFFF;
      do
      {
        v18 = objc_msgSend_objectAtIndex_(v2, v15, v16, *v23);
        v19 = xpc_dictionary_create(0, 0, 0);
        if (v19)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v18, v19, 1, 0);
          xpc_array_append_value(v13, v19);
          xpc_release(v19);
        }

        ++v16;
      }

      while (v17 != v16);
    }

    v20 = *(a1 + 64);
    if (v20)
    {
      xpc_dictionary_set_value(v20, "array_result", v13);
    }

    xpc_release(v13);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 72);
  if (result)
  {
    result = (*(result + 16))();
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7AE68FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {

    v3 = sub_1B7CFE880();
    if (*(v2 + 16))
    {
      v5 = sub_1B7AE11D0(v3, v4);
      v7 = v6;

      if (v7)
      {
        v8 = (*(v2 + 56) + 16 * v5);
        v70 = v8[1];
        v71 = *v8;

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v9 = sub_1B7CFE880();
  v11 = sub_1B7AE7CB4(v9, v10);
  v13 = v12;

  v14 = sub_1B7AE8874(v11, v13);
  v70 = v15;
  v71 = v14;
LABEL_8:
  v16 = sub_1B7AE987C();
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v84 = MEMORY[0x1E69E7CC0];
    sub_1B7AE775C(0, v17, 0);
    v19 = v84;
    v20 = v16 + 32;
    do
    {
      sub_1B7AE90A8(v20, v74);
      sub_1B7AE90A8(v74, v73);

      sub_1B7AE777C(v73, v2, &v75);
      sub_1B7AE9168(v74);
      v84 = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B7AE775C((v21 > 1), v22 + 1, 1);
        v19 = v84;
      }

      *(v19 + 16) = v22 + 1;
      v23 = v19 + 136 * v22;
      *(v23 + 32) = v75;
      v24 = v76;
      v25 = v77;
      v26 = v79;
      *(v23 + 80) = v78;
      *(v23 + 96) = v26;
      *(v23 + 48) = v24;
      *(v23 + 64) = v25;
      v27 = v80;
      v28 = v81;
      v29 = v82;
      *(v23 + 160) = v83;
      *(v23 + 128) = v28;
      *(v23 + 144) = v29;
      *(v23 + 112) = v27;
      v20 += 40;
      --v17;
    }

    while (v17);

    v18 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(v19 + 16);
  v68 = v2;
  if (v30)
  {
    v74[0] = v18;
    sub_1B7AE8FB4(0, v30, 0);
    v31 = v74[0];
    v32 = v19 + 32;
    do
    {
      sub_1B7AEBEFC(v32, &v75);
      v33 = v75;
      v34 = v76;

      sub_1B7AEBF70(&v75);
      v74[0] = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1B7AE8FB4((v35 > 1), v36 + 1, 1);
        v31 = v74[0];
      }

      *(v31 + 16) = v36 + 1;
      v37 = v31 + 32 * v36;
      *(v37 + 32) = v33;
      *(v37 + 48) = v34;
      v32 += 136;
      --v30;
    }

    while (v30);
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  if (*(v18 + 16))
  {
LABEL_22:
    sub_1B7C107FC(&qword_1EBA53410, &qword_1B7D11578);
    v38 = sub_1B7CFF380();
    goto LABEL_23;
  }

  v38 = MEMORY[0x1E69E7CC8];
LABEL_23:
  *&v75 = v38;

  sub_1B7AEBFC4(v39, 1, &v75);

  v40 = v75;
  v66[2] = v71;
  v66[3] = v70;
  v66[4] = v19;
  v41 = sub_1B7CFE870();
  v42 = *(v41 + 16);
  if (v42)
  {
    *&v75 = v18;
    v67 = v41;
    v69 = v42;
    sub_1B7AE6F88(0, v42, 0);
    v43 = v69;
    v44 = v67;
    v45 = 0;
    v46 = v75;
    while (v45 < *(v44 + 16))
    {
      v47 = *(v67 + 32 + 8 * v45);
      v48 = *(v47 + 16);
      if (v48)
      {
        v72 = v46;
        v74[0] = MEMORY[0x1E69E7CC0];

        sub_1B7AE70B4(0, v48, 0);
        v49 = v74[0];
        v50 = (v47 + 40);
        while (*(v40 + 16))
        {
          v51 = *(v50 - 1);
          v52 = *v50;

          v53 = sub_1B7AE11D0(v51, v52);
          if ((v54 & 1) == 0)
          {
            goto LABEL_43;
          }

          v55 = (*(v40 + 56) + 16 * v53);
          v56 = *v55;
          v57 = v55[1];

          v74[0] = v49;
          v59 = *(v49 + 16);
          v58 = *(v49 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_1B7AE70B4((v58 > 1), v59 + 1, 1);
            v49 = v74[0];
          }

          *(v49 + 16) = v59 + 1;
          v60 = v49 + 16 * v59;
          *(v60 + 32) = v56;
          *(v60 + 40) = v57;
          v50 += 2;
          if (!--v48)
          {

            v44 = v67;
            v2 = v68;
            v43 = v69;
            v46 = v72;
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
        break;
      }

      v49 = MEMORY[0x1E69E7CC0];
LABEL_35:
      *&v75 = v46;
      v62 = *(v46 + 16);
      v61 = *(v46 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1B7AE6F88((v61 > 1), v62 + 1, 1);
        v43 = v69;
        v44 = v67;
        v46 = v75;
      }

      ++v45;
      *(v46 + 16) = v62 + 1;
      *(v46 + 8 * v62 + 32) = v49;
      if (v45 == v43)
      {
        v63 = v46;

        v64 = v63;
        goto LABEL_40;
      }
    }

    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    v64 = MEMORY[0x1E69E7CC0];
LABEL_40:
    result = v66;
    v66[5] = v64;
    v66[6] = v40;
    v66[7] = v2;
  }

  return result;
}

char *sub_1B7AE6E7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA52490, &qword_1B7D0CA78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7AE6F88(char *a1, int64_t a2, char a3)
{
  result = sub_1B7AE6E7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B7AE6FA8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA52468, &qword_1B7D0CA58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7AE70B4(char *a1, int64_t a2, char a3)
{
  result = sub_1B7AE6FA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B7AE70D4(uint64_t a1)
{
  v2 = sub_1B7CFE8B0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B7C2F148(a1);
  sub_1B7CFE8C0();
  v4 = sub_1B7CFE960();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_1B7CFE970();
  v8 = sub_1B7CC12C0(a1, v7);
  v9 = sub_1B7CFE8D0();
  v10 = v9;
  if (v9 >> 62)
  {
LABEL_36:
    v11 = sub_1B7CFF120();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = a1;
  v46 = v7;
  if (v11)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1B7C31168(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v12 = 0;
    v13 = v47;
    v14 = v10;
    v43 = v10 & 0xC000000000000001;
    v44 = v10;
    do
    {
      if (v43)
      {
        v15 = MEMORY[0x1B8CAE380](v12, v14);
      }

      else
      {
        v15 = *(v14 + 8 * v12 + 32);
      }

      v16 = sub_1B7CFE880();
      v18 = v17;
      type metadata accessor for SQLEntitySchema();
      swift_allocObject();

      v19 = sub_1B7AE68FC(v15, v8);
      v47 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B7C31168((v20 > 1), v21 + 1, 1);
        v13 = v47;
      }

      ++v12;
      *(v13 + 16) = v21 + 1;
      v22 = (v13 + 24 * v21);
      v22[4] = v16;
      v22[5] = v18;
      v22[6] = v19;
      v14 = v44;
    }

    while (v11 != v12);

    a1 = v45;
    if (*(v13 + 16))
    {
      goto LABEL_13;
    }

LABEL_15:
    v23 = MEMORY[0x1E69E7CC8];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  sub_1B7C107FC(&qword_1EBA53760, &qword_1B7D13068);
  v23 = sub_1B7CFF380();
LABEL_16:
  v47 = v23;

  sub_1B7AEB4BC(v24, 1, &v47);

  v8 = v47;
  v42[2] = v46;
  v42[4] = v8;
  v25 = *(v8 + 16);
  if (!v25)
  {

    v10 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v42[3] = v10;
    v27 = *(a1 + 16);
    if (v27)
    {
      v47 = MEMORY[0x1E69E7CC0];
      v7 = &v47;
      sub_1B7AEB984(0, v27, 0);
      v28 = 0;
      v29 = v47;
      v30 = a1 + 40;
      do
      {
        if (v28 >= *(a1 + 16))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v31 = *(v30 - 8);
        v32 = *(*v30 + 8);
        if (!sub_1B7CFE8A0())
        {
          goto LABEL_39;
        }

        v33 = sub_1B7CFE880();
        v10 = v34;
        if (!*(v8 + 16))
        {
          goto LABEL_40;
        }

        v7 = sub_1B7AE11D0(v33, v34);
        a1 = v35;

        if ((a1 & 1) == 0)
        {
          goto LABEL_35;
        }

        v10 = *(*(v8 + 56) + 8 * v7);

        v47 = v29;
        v37 = *(v29 + 16);
        v36 = *(v29 + 24);
        if (v37 >= v36 >> 1)
        {
          v7 = &v47;
          sub_1B7AEB984((v36 > 1), v37 + 1, 1);
          v29 = v47;
        }

        ++v28;
        *(v29 + 16) = v37 + 1;
        v38 = v29 + 16 * v37;
        *(v38 + 32) = v31;
        *(v38 + 40) = v10;
        v30 += 16;
        a1 = v45;
      }

      while (v27 != v28);

      if (!*(v29 + 16))
      {
        goto LABEL_32;
      }
    }

    else
    {

      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_32:
        v39 = MEMORY[0x1E69E7CC8];
        goto LABEL_33;
      }
    }

    sub_1B7C107FC(&qword_1EBA53768, &unk_1B7D13070);
    v39 = sub_1B7CFF380();
LABEL_33:
    v47 = v39;

    sub_1B7AEB9A4(v40, 1, &v47);

    result = v42;
    v42[5] = v47;
    return result;
  }

  v10 = sub_1B7AEC374(*(v8 + 16), 0);
  v26 = sub_1B7AEC378(&v47, (v10 + 32), v25, v8);
  swift_retain_n();

  sub_1B7AEC4CC();
  if (v26 == v25)
  {
    a1 = v45;
    goto LABEL_20;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

char *sub_1B7AE763C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA524A8, &qword_1B7D0CA90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7AE775C(char *a1, int64_t a2, char a3)
{
  result = sub_1B7AE763C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B7AE777C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B7CFE7D0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  v11 = sub_1B7CFE680();
  v13 = v12;
  v14 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  v15 = sub_1B7CFE670();
  v17 = v16;

  if ((v17 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  v19 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  if (v18)
  {
    v20 = sub_1B7CFE670();
  }

  else
  {
    v22 = sub_1B7CFE680();
    v24 = sub_1B7AE7CB4(v22, v23);
    v26 = v25;

    v21 = v26;
    v20 = v24;
  }

  v27 = sub_1B7AE8874(v20, v21);
  v65 = v28;
  v29 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  v64 = sub_1B7CFE690();
  v30 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  v31 = sub_1B7CFE660();
  sub_1B7AE90A8(a1, v71);
  sub_1B7C107FC(&unk_1EBA524E0, &qword_1B7D0B228);
  sub_1B7CFE940();
  v32 = swift_dynamicCast();
  v66 = v27;
  v67 = v11;
  v63 = v31;
  if (v32)
  {

    v33 = a1[4];
    sub_1B7AE9124(a1, a1[3]);
    v34 = sub_1B7CFE6A0();
    v35 = swift_conformsToProtocol2();
    if (v35)
    {
      v36 = v35;
      sub_1B7CFE8F0();

      if (v70)
      {
        sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
        v37 = swift_dynamicCast();
        v38 = v72;
        if (v37)
        {
          v39 = -1;
        }

        else
        {
          v38 = 0;
          v39 = 0;
        }

        v40 = vdupq_n_s64(v39);
        v41 = vandq_s8(v71[0], v40);
        v42 = vandq_s8(v71[1], v40);
      }

      else
      {
        sub_1B7AE8C30(&v68);
        v38 = 0;
        v41 = 0uLL;
        v42 = 0uLL;
      }

      v50 = 0;
      v49 = 0;
      v51 = 0;
      v53 = 0;
      v55 = 0;
      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
    sub_1B7AE90A8(a1, v71);
    sub_1B7CFE800();
    if (swift_dynamicCast())
    {
      v62 = v13;
      if (a2)
      {
        v43 = sub_1B7CFE7F0();
        if (*(a2 + 16))
        {
          v45 = sub_1B7AE11D0(v43, v44);
          v47 = v46;

          if (v47)
          {
            v48 = (*(a2 + 56) + 16 * v45);
            v50 = *v48;
            v49 = v48[1];

            v51 = sub_1B7AE8874(0x4449574F52, 0xE500000000000000);
            v53 = v52;
            sub_1B7CFE7E0();
            v54 = sub_1B7AE8C98(v9);

            v38 = 0;
            v55 = (v54 << 8) | 4;
            v41 = 0uLL;
            v36 = &off_1F2FA89F8;
            v34 = MEMORY[0x1E69E6530];
            v42 = 0uLL;
            v13 = v62;
LABEL_21:
            v56 = v63 & 1;
            v57 = v64 & 1;
            v58 = v66;
            *a3 = v67;
            *(a3 + 8) = v13;
            v59 = v65;
            *(a3 + 16) = v58;
            *(a3 + 24) = v59;
            *(a3 + 32) = v57;
            *(a3 + 33) = v56;
            *(a3 + 34) = v71[0].i32[0];
            *(a3 + 38) = v71[0].i16[2];
            *(a3 + 40) = v50;
            *(a3 + 48) = v49;
            *(a3 + 56) = v51;
            *(a3 + 64) = v53;
            *(a3 + 72) = v55;
            *(a3 + 74) = v68;
            *(a3 + 78) = v69;
            *(a3 + 80) = v34;
            *(a3 + 88) = v36;
            *(a3 + 96) = v41;
            *(a3 + 112) = v42;
            *(a3 + 128) = v38;
            return sub_1B7AE9168(a1);
          }
        }

        else
        {
        }

        v11 = v67;
      }

      v71[0].i64[0] = 0;
      v71[0].i64[1] = 0xE000000000000000;
      sub_1B7CFF210();
      MEMORY[0x1B8CADCA0](0xD000000000000031, 0x80000001B7D51630);
      MEMORY[0x1B8CADCA0](v11, v62);
      MEMORY[0x1B8CADCA0](0xD00000000000002DLL, 0x80000001B7D51670);
    }
  }

  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

unint64_t sub_1B7AE7CB4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B7CFF870();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v52[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = 0;
  v62 = 0xE000000000000000;
  v59 = 0;
  v60 = 0xE000000000000000;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v56 = a1;
  v57 = a2;
  *&v58 = 0;
  *(&v58 + 1) = v9;

  swift_beginAccess();
  swift_beginAccess();
  result = sub_1B7CFEB90();
  if (!v11)
  {
LABEL_95:
    sub_1B7AE8750(&v59, &v61);

    return v61;
  }

  v12 = result;
  v13 = v11;
  v14 = 0;
  v15 = (v5 + 8);
  while (1)
  {
    v17 = (v13 & 0x2000000000000000) != 0 ? HIBYTE(v13) & 0xF : v12 & 0xFFFFFFFFFFFFLL;
    if (!v17)
    {
      break;
    }

    if ((v13 & 0x1000000000000000) != 0)
    {
      v18 = sub_1B7CFEAF0();
    }

    else
    {
      v18 = sub_1B7CFF1F0() << 16;
    }

    v19 = 4 * v17;
    if (4 * v17 == v18 >> 14)
    {
      result = sub_1B7AE8568(v12, v13);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_97;
      }

      sub_1B7CFF880();
      v20 = sub_1B7CFF850();
      (*v15)(v8, v4);
      if (v20)
      {
        goto LABEL_35;
      }
    }

    if ((sub_1B7CFE9F0() & 1) == 0)
    {
      goto LABEL_36;
    }

    if ((v13 & 0x1000000000000000) != 0)
    {
      if (v19 == sub_1B7CFEAF0() >> 14)
      {
LABEL_21:
        result = sub_1B7AE8568(v12, v13);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_101;
        }

        sub_1B7CFF880();
        v21 = sub_1B7CFF860();
        (*v15)(v8, v4);
        if (v21)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v19 == ((4 * sub_1B7CFF1F0()) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_21;
    }

    if (sub_1B7CFE9F0())
    {
      if ((sub_1B7CFE9E0() | v14))
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

LABEL_35:
    if (v14)
    {
LABEL_36:
      if ((v13 & 0x1000000000000000) != 0)
      {
        if (v19 != sub_1B7CFEAF0() >> 14)
        {
          goto LABEL_42;
        }
      }

      else if (v19 != ((4 * sub_1B7CFF1F0()) & 0x3FFFFFFFFFFFFLL))
      {
        goto LABEL_42;
      }

      result = sub_1B7AE8568(v12, v13);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_99;
      }

      sub_1B7CFF880();
      v29 = sub_1B7CFF850();
      (*v15)(v8, v4);
      if ((v29 & 1) == 0)
      {
LABEL_42:
        if ((sub_1B7CFE9F0() & 1) == 0)
        {
          goto LABEL_51;
        }

        v30 = sub_1B7AE86B8(0xFuLL, v12, v13);
        if ((v13 & 0x1000000000000000) != 0)
        {
          if (v19 != sub_1B7CFEAF0() >> 14)
          {
            goto LABEL_49;
          }
        }

        else if (v19 != ((4 * (sub_1B7CFF1F0() + (v30 >> 16))) & 0x3FFFFFFFFFFFFLL))
        {
LABEL_49:
          if (sub_1B7CFE9F0() & 1) != 0 && (sub_1B7CFE9E0())
          {
LABEL_51:
            swift_beginAccess();
            MEMORY[0x1B8CADC90](v12, v13);
            swift_endAccess();
            if ((v13 & 0x1000000000000000) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_80;
          }

          goto LABEL_54;
        }

        result = sub_1B7AE8568(v12, v13);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_103;
        }

        sub_1B7CFF880();
        v31 = sub_1B7CFF860();
        (*v15)(v8, v4);
        if ((v31 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

LABEL_54:
      v53 = v56;
      v54 = v57;
      v55 = v58;

      v32 = sub_1B7CFEB90();
      if (v33)
      {
        v34 = v32;
        v35 = v33;
        v36 = sub_1B7AE86B8(0xFuLL, v32, v33);
        if ((v35 & 0x1000000000000000) != 0)
        {
          v37 = sub_1B7CFEAF0();
        }

        else
        {
          v37 = (sub_1B7CFF1F0() + (v36 >> 16)) << 16;
        }

        v38 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v38 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v37 >> 14 == 4 * v38)
        {
          result = sub_1B7AE8568(v34, v35);
          if ((result & 0x100000000) != 0)
          {
            goto LABEL_100;
          }

          sub_1B7CFF880();
          v39 = sub_1B7CFF840();
          (*v15)(v8, v4);
          if (v39)
          {
            goto LABEL_69;
          }
        }

        if ((sub_1B7CFE9E0() & 1) == 0)
        {
LABEL_78:

          goto LABEL_79;
        }

        if (sub_1B7CFEA00())
        {
          result = sub_1B7AE8568(v34, v35);
          if ((result & 0x100000000) != 0)
          {
            goto LABEL_104;
          }

          sub_1B7CFF880();
          v40 = sub_1B7CFF860();
          (*v15)(v8, v4);
          if (v40)
          {
            goto LABEL_69;
          }
        }

        if ((sub_1B7CFE9F0() & 1) == 0)
        {
LABEL_69:

          goto LABEL_70;
        }

        v41 = sub_1B7CFE9E0();

        if (v41)
        {
          goto LABEL_79;
        }

LABEL_70:
        v43 = v59;
        v42 = v60;
        v44 = HIBYTE(v60) & 0xF;
        if ((v60 & 0x2000000000000000) == 0)
        {
          v44 = v59 & 0xFFFFFFFFFFFFLL;
        }

        if (v44)
        {
          v45 = v61 & 0xFFFFFFFFFFFFLL;
          if ((v62 & 0x2000000000000000) != 0)
          {
            v45 = HIBYTE(v62) & 0xF;
          }

          if (v45)
          {
            swift_beginAccess();
            MEMORY[0x1B8CADCA0](95, 0xE100000000000000);
            swift_endAccess();
          }

          swift_beginAccess();
          MEMORY[0x1B8CADCA0](v43, v42);
          swift_endAccess();
          v59 = 0;
          v60 = 0xE000000000000000;
          goto LABEL_78;
        }
      }

LABEL_79:
      v46 = sub_1B7CFE9D0();
      v48 = v47;
      swift_beginAccess();
      MEMORY[0x1B8CADCA0](v46, v48);
      swift_endAccess();

      if ((v13 & 0x1000000000000000) != 0)
      {
        goto LABEL_52;
      }

      goto LABEL_80;
    }

LABEL_25:
    v23 = v59;
    v22 = v60;
    v24 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v24 = v59 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v25 = v61 & 0xFFFFFFFFFFFFLL;
      if ((v62 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v62) & 0xF;
      }

      if (v25)
      {
        swift_beginAccess();
        MEMORY[0x1B8CADCA0](95, 0xE100000000000000);
        swift_endAccess();
      }

      swift_beginAccess();
      MEMORY[0x1B8CADCA0](v23, v22);
      swift_endAccess();
      v59 = 0;
      v60 = 0xE000000000000000;
    }

    v26 = sub_1B7CFE9D0();
    v28 = v27;
    swift_beginAccess();
    MEMORY[0x1B8CADCA0](v26, v28);
    swift_endAccess();

    if ((v13 & 0x1000000000000000) != 0)
    {
LABEL_52:
      if (v19 != sub_1B7CFEAF0() >> 14)
      {
        goto LABEL_83;
      }

      goto LABEL_81;
    }

LABEL_80:
    if (v19 != ((4 * sub_1B7CFF1F0()) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_83;
    }

LABEL_81:
    result = sub_1B7AE8568(v12, v13);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_98;
    }

    sub_1B7CFF880();
    v49 = sub_1B7CFF850();
    (*v15)(v8, v4);
    if (v49)
    {
LABEL_92:

      v14 = 1;
      goto LABEL_6;
    }

LABEL_83:
    if ((sub_1B7CFE9F0() & 1) == 0)
    {

      v14 = 0;
      goto LABEL_6;
    }

    if ((v13 & 0x1000000000000000) != 0)
    {
      if (v19 == sub_1B7CFEAF0() >> 14)
      {
LABEL_88:
        result = sub_1B7AE8568(v12, v13);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_102;
        }

        sub_1B7CFF880();
        v50 = sub_1B7CFF860();
        (*v15)(v8, v4);
        if (v50)
        {
          goto LABEL_92;
        }
      }
    }

    else if (v19 == ((4 * sub_1B7CFF1F0()) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_88;
    }

    if ((sub_1B7CFE9F0() & 1) == 0)
    {
      goto LABEL_92;
    }

    v51 = sub_1B7CFE9E0();

    v14 = v51 ^ 1;
LABEL_6:
    result = sub_1B7CFEB90();
    v12 = result;
    v13 = v16;
    if (!v16)
    {
      goto LABEL_95;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

unint64_t sub_1B7AE8568(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B7AE86B8(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1B7CFF200();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1B7CFF280() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1B7AE86B8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B7CEA864(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B7CEA8D8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

uint64_t sub_1B7AE8750(uint64_t *a1, void *a2)
{
  result = swift_beginAccess();
  v5 = a1[1];
  v6 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  if (v6)
  {
    swift_beginAccess();
    v7 = a2[1];
    v8 = *a2 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v7) & 0xF;
    }

    if (v8)
    {
      swift_beginAccess();
      MEMORY[0x1B8CADCA0](95, 0xE100000000000000);
      swift_endAccess();
    }

    swift_beginAccess();
    v9 = *a1;
    v10 = a1[1];
    swift_beginAccess();

    MEMORY[0x1B8CADCA0](v9, v10);
    swift_endAccess();

    swift_beginAccess();
    v11 = a1[1];
    *a1 = 0;
    a1[1] = 0xE000000000000000;
  }

  return result;
}

uint64_t sub_1B7AE8874(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA52030, &unk_1B7D13080);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v21 - v6;
  v8 = sub_1B7C107FC(&qword_1EBA52038, &qword_1B7D0AD18);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v13 = sub_1B7C107FC(&qword_1EBA52040, &qword_1B7D13090);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  sub_1B7CFE310();
  v18 = a1;
  v21[0] = a2;
  sub_1B7CFE320();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B7C1D5F8(v7);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    swift_getKeyPath();
    sub_1B7CFE330();

    v19 = sub_1B7AE8BB8(v21[1], v21[2], v21[3], v21[4], a1, v21[0]);

    (*(v9 + 8))(v12, v8);
    if (v19)
    {
      (*(v14 + 8))(v17, v13);
      return v18;
    }
  }

  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

uint64_t sub_1B7AE8BB8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1B7CFF560() & 1;
  }
}

uint64_t sub_1B7AE8C30(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA51FA8, qword_1B7D0B230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7AE8C98(uint64_t a1)
{
  v2 = sub_1B7CFE7D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E697BCE0])
  {
    v8 = 2;
LABEL_7:
    (*(v3 + 8))(a1, v2);
    return v8;
  }

  if (v7 == *MEMORY[0x1E697BCD8])
  {
    v8 = 4;
    goto LABEL_7;
  }

  if (v7 == *MEMORY[0x1E697BCD0])
  {
    v8 = 1;
    goto LABEL_7;
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000026, 0x80000001B7D516A0);
  sub_1B7CFF320();
  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

void *sub_1B7AE8E80(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA52498, &qword_1B7D0CA80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA524A0, &qword_1B7D0CA88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7AE8FB4(void *a1, int64_t a2, char a3)
{
  result = sub_1B7AE8E80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void _IMDMessageRecordBulkCopyXPCDictionary(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a2)
  {
    if (a1)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1B7AEAF34;
      v20[3] = &unk_1E7CB8258;
      v20[4] = a2;
      v20[5] = a1;
      v21 = a3;
      v20[6] = a1;
      v22 = a4;
      _IMDPerformBlock(v20);
    }

    else
    {
      v12 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEFB94(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFC0C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

uint64_t sub_1B7AE90A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B7AE910C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1B7AE9124(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1B7AE9168(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1B7AE91B4(uint64_t a1, uint64_t a2)
{
  IMDCreateTriggersWithOperation(a2, *(a1 + 40));
  v4 = *(a1 + 32);

  return IMDSqlOperationGetError(a2, v4);
}

uint64_t IMDCreateTriggersWithOperation(uint64_t a1, const char *a2)
{
  v2 = a2;
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *buf = xmmword_1E7CB8960;
    *&buf[16] = *off_1E7CB8970;
    v41 = 182;
    v4 = MEMORY[0x1E696AEC0];
    v5 = IMFileLocationTrimFileName();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, &stru_1F2FA9728);
    v9 = objc_msgSend_stringWithFormat_(v4, v8, @"Unexpected nil '%@' in %s at %s:%d. %@", @"operation", "BOOL IMDCreateTriggersWithOperation(IMDSqlOperation *, BOOL)", v5, 182, v7);
    v10 = IMGetAssertionFailureHandler();
    if (v10)
    {
      v10(v9);
    }

    else
    {
      v13 = objc_msgSend_warning(MEMORY[0x1E69A6138], v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEFAB0(v9, v13, v14, v15, v16, v17, v18, v19);
      }
    }
  }

  if (qword_1EDBE6318[0] != -1)
  {
    sub_1B7AE94E0();
  }

  v20 = qword_1EDBE6310;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(qword_1EDBE6310, a2, &v35, v39, 16);
  if (v21)
  {
    v23 = v21;
    v24 = *v36;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v35 + 1) + 8 * i);
        v27 = objc_msgSend_objectForKey_(v20, v22, v26);
        if (!_IMDSqlOperationRunQuery(a1, v27, 0, 0))
        {
          v30 = IMLogHandleForCategory();
          result = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
          if (result)
          {
            v33 = IMDSqlOperationErrorDescription(a1, v31, v32);
            *buf = 138412546;
            *&buf[4] = v26;
            *&buf[12] = 2112;
            *&buf[14] = v33;
            _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "Create trigger failed: %@: %@", buf, 0x16u);
            result = 0;
          }

          goto LABEL_22;
        }

        if (v2)
        {
          v28 = IMLogHandleForCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v26;
            *&buf[12] = 2112;
            *&buf[14] = v27;
            _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "Created trigger ok: %@, trigger: %@", buf, 0x16u);
          }
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v35, v39, 16);
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  result = objc_msgSend_createTriggersUsingConnection_(IMDLegacyRecordBridge, v22, *(a1 + 8));
LABEL_22:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7AE9508()
{
  v12 = *MEMORY[0x1E69E9840];
  qword_1EDBE6310 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v0 = @"before_delete_on_attachment";
  v1 = off_1E7CB87F0;
  v2 = 21;
  do
  {
    if ((IMAllowMessagesIniCloud() & 1) == 0 && ((objc_msgSend_isEqualToString_(v0, v3, @"add_to_sync_deleted_messages") & 1) != 0 || objc_msgSend_isEqualToString_(v0, v6, @"add_to_sync_deleted_attachments")))
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v11 = v0;
          _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Not adding trigger for external builds %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v3, @"CREATE TRIGGER IF NOT EXISTS %@ %@", v0, *(v1 - 1));
      objc_msgSend_setObject_forKey_(qword_1EDBE6310, v5, v4, v0);
    }

    v8 = *v1;
    v1 += 2;
    v0 = v8;
    --v2;
  }

  while (v2);
  v9 = *MEMORY[0x1E69E9840];
}

void __XPCServerIMDMessageRecordCopyChats_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7AF1AE4;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7AE9714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  CSDBSqliteBindInt();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9C0];
    do
    {
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v9);
      }

      v10 = sqlite3_column_int(*(a4 + 8), 0);
      v11 = IMDChatRecordCreateFromRecordIDUnlocked(v8, v10);
      if (v11)
      {
        v12 = v11;
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
        CFRelease(v12);
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

void sub_1B7AE97F8()
{
  qword_1EDBE7960 = _CFRuntimeRegisterClass();
  v0 = objc_opt_class();
  class_getName(v0);
  _CFRuntimeBridgeClasses();
  v1 = objc_opt_class();
  v4 = *(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, v2, v3) + 80);

  IMDBridgedRecordPopulatePropertyImplementations(v1, v4, 28);
}

uint64_t sub_1B7AE987C()
{
  result = sub_1B7CFE860();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v5 = result + 32;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1B7AE90A8(v5, v11);
      sub_1B7AE90A8(v11, v10);
      sub_1B7C107FC(&unk_1EBA524E0, &qword_1B7D0B228);
      sub_1B7CFE940();
      if (swift_dynamicCast())
      {
        v6 = sub_1B7CFE930();

        if (swift_conformsToProtocol2() && v6)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1B7AE90A8(v11, v10);
        sub_1B7CFE800();
        if (swift_dynamicCast())
        {

LABEL_12:
          sub_1B7AE910C(v11, v10);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v12 = v4;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B7AE9A78(0, *(v4 + 16) + 1, 1);
            v4 = v12;
          }

          v9 = *(v4 + 16);
          v8 = *(v4 + 24);
          if (v9 >= v8 >> 1)
          {
            sub_1B7AE9A78((v8 > 1), v9 + 1, 1);
            v4 = v12;
          }

          *(v4 + 16) = v9 + 1;
          result = sub_1B7AE910C(v10, v4 + 40 * v9 + 32);
          goto LABEL_4;
        }
      }

      result = sub_1B7AE9168(v11);
LABEL_4:
      ++v3;
      v5 += 40;
      if (v2 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v4;
}

void *sub_1B7AE9A78(void *a1, int64_t a2, char a3)
{
  result = sub_1B7AE9AB8(a1, a2, a3, *v3, &qword_1EBA524D8, &qword_1B7D0CAC0, &unk_1EBA524E0, &qword_1B7D0B228);
  *v3 = result;
  return result;
}

void *sub_1B7AE9AB8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1B7C107FC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unint64_t sub_1B7AE9C00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B7AFEA28(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B7AE9D60(v16, a4 & 1);
      v20 = *v5;
      result = sub_1B7AFEA28(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1B7CFF740();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1B7CE97A0();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_1B7AE9D60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA52188, &qword_1B7D0B308);
  v36 = a2;
  result = sub_1B7CFF370();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = sub_1B7CFF7B0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B7AE9FE4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B7CFE880();
  v5 = v3;
  v6 = v4;
  v7 = *a2;
  if (*(*a2 + 16) && (v8 = sub_1B7AE11D0(v3, v4), (v9 & 1) != 0))
  {
    v10 = v8;

    v11 = *(*(v7 + 56) + 8 * v10);
  }

  else
  {
    type metadata accessor for EntityRecordRepresentation();
    swift_allocObject();

    v11 = sub_1B7AEA0F4();

    v12 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *a2;
    sub_1B7AEE814(v11, v5, v6, isUniquelyReferenced_nonNull_native);

    *a2 = v15;
  }

  return v11;
}

uint64_t sub_1B7AEA0F4()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = sub_1B7AE987C();
  if (qword_1EDBE3F50 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v3 = *(qword_1EDBE79E8 + 32);

    v4 = sub_1B7CFE880();
    if (!*(v3 + 16))
    {
      break;
    }

    v6 = sub_1B7AE11D0(v4, v5);
    v8 = v7;

    if ((v8 & 1) == 0)
    {
      goto LABEL_26;
    }

    v9 = *(*(v3 + 56) + 8 * v6);

    v1[6] = v9;

    v10 = sub_1B7AED778(isUniquelyReferenced_nonNull_native, v9);
    v12 = v11;

    v1[3] = v10;
    v1[4] = v12;
    v13 = v1[6];
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);

    v16 = sub_1B7AEE328(v14, v15, v10, v12);

    v36 = v1;
    v1[2] = v16;
    v17 = sub_1B7AEE408(MEMORY[0x1E69E7CC0]);
    v38 = *(isUniquelyReferenced_nonNull_native + 16);
    if (!v38)
    {
LABEL_20:

      result = v36;
      v36[5] = v17;
      return result;
    }

    v1 = 0;
    v18 = isUniquelyReferenced_nonNull_native + 32;
    v37 = isUniquelyReferenced_nonNull_native;
    while (v1 < *(isUniquelyReferenced_nonNull_native + 16))
    {
      v41 = v1;
      sub_1B7AE90A8(v18, v42);
      sub_1B7AE9124(v42, v42[3]);
      v19 = sub_1B7CFE680();
      v21 = v20;
      sub_1B7AEE504(&v41, &v39);
      v22 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = sub_1B7AE11D0(v19, v21);
      v25 = v17[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_22;
      }

      v28 = v23;
      if (v17[3] >= v27)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v23)
          {
            goto LABEL_6;
          }
        }

        else
        {
          sub_1B7CE8360();
          if (v28)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        sub_1B7AEE574(v27, isUniquelyReferenced_nonNull_native);
        v29 = sub_1B7AE11D0(v19, v21);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_27;
        }

        v24 = v29;
        if (v28)
        {
LABEL_6:

          *(v17[7] + 8 * v24) = v22;
          goto LABEL_7;
        }
      }

      v17[(v24 >> 6) + 8] |= 1 << v24;
      v31 = (v17[6] + 16 * v24);
      *v31 = v19;
      v31[1] = v21;
      *(v17[7] + 8 * v24) = v22;
      v32 = v17[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_23;
      }

      v17[2] = v34;
LABEL_7:
      v1 = (v1 + 1);
      sub_1B7AE9168(v40);
      sub_1B7AEE190(&v41, &qword_1EBA531A0, &qword_1B7D107C0);
      v18 += 40;
      isUniquelyReferenced_nonNull_native = v37;
      if (v38 == v1)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

LABEL_26:

  __break(1u);
LABEL_27:
  result = sub_1B7CFF740();
  __break(1u);
  return result;
}

uint64_t sub_1B7AEA434(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

sqlite3 *sub_1B7AEA46C(sqlite3_stmt *a1, int a2)
{
  v4 = _IMDSQLTransient();
  v5 = sub_1B7CFEAD0();
  v6 = sqlite3_bind_text(a1, a2, (v5 + 32), -1, v4);

  if (v6)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v8 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v9 = sub_1B7CFEB70();
        v11 = v10;
        v12 = sqlite3_extended_errcode(v8);
        sub_1B7C951E8();
        swift_allocError();
        *v13 = v12;
        v13[1] = v9;
        v13[2] = v11;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7AEA57C(uint64_t result)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  while (1)
  {
    v6 = 0uLL;
    v7 = v4;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v3 != v4)
    {
      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_18;
      }

      *&v15 = v3;
      result = sub_1B7AE90A8(v5 + 40 * v3, &v15 + 8);
      v6 = v15;
      v8 = v16;
      v9 = v17;
    }

    v18[0] = v6;
    v18[1] = v8;
    v18[2] = v9;
    if (!v9)
    {
      return result;
    }

    v14 = v6;
    sub_1B7AE910C((v18 + 8), &v15);
    v10 = v17;
    result = sub_1B7AE9124(&v15, *(&v16 + 1));
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 < 0xFFFFFFFF80000000)
    {
      goto LABEL_15;
    }

    if (v11 > 0x7FFFFFFF)
    {
      goto LABEL_16;
    }

    (*(v10 + 16))(*(v1 + 16));
    if (v2)
    {
      sub_1B7C95194();
      swift_allocError();
      v13 = v12;
      *v12 = v14;
      sub_1B7AE90A8(&v15, (v12 + 1));
      v13[6] = v2;
      *(v13 + 56) = 0;
      swift_willThrow();
      return sub_1B7AE9168(&v15);
    }

    result = sub_1B7AE9168(&v15);
    v3 = v7;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

sqlite3 *sub_1B7AEA718(sqlite3_stmt *a1, int a2)
{
  v3 = *v2;
  v4 = v2[1];
  return sub_1B7AEA46C(a1, a2);
}

uint64_t sub_1B7AEA734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v10 = *(a2 + 16);
  v11 = sqlite3_db_handle(v10);
  if (!v11)
  {
    sub_1B7C95194();
    swift_allocError();
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0;
    *(v15 + 56) = 4;
LABEL_8:
    swift_willThrow();
  }

  v12 = v11;
  sub_1B7AEA57C(a1);
  if (v5)
  {
  }

  for (i = 0; ; ++i)
  {
    result = sqlite3_step(v10);
    if (result != 100)
    {
      break;
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    a5(a3, a4);
  }

  if (result == 101)
  {
    sqlite3_reset(v10);
  }

  sub_1B7C95194();
  swift_allocError();
  v17 = v16;
  result = sqlite3_errmsg(v12);
  if (result)
  {
    v18 = sub_1B7CFEB70();
    v20 = v19;
    v21 = sqlite3_extended_errcode(v12);
    sub_1B7C951E8();
    v22 = swift_allocError();
    *v23 = v21;
    v23[1] = v18;
    v23[2] = v20;
    *v17 = v22;
    *(v17 + 56) = 3;
    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B7AEA990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1B7CA5CF0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1B7AE11D0(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1B7CE9640(&qword_1EBA52148, &qword_1B7D0B2D0);
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1B7CE6D80(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1B7AEAAAC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1B7C107FC(a3, a4);
  v40 = a2;
  result = sub_1B7CFF370();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1B7AEAD4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1B7AE11D0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_1B7AE11D0(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1B7CFF740();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_1B7AEAEF0(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7AEAEE4(a1, a2, a3);
  v4 = *(a1 + 40);
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1B7AEAF34(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (!v2)
  {
    return;
  }

  v5 = v2;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = (*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, v3, v4, v53, v54) + 80) + v6);
    v10 = *v9;
    v11 = v9[1];
    Property = CSDBRecordGetProperty();
    v13 = Property;
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v17 = *(a1 + 32);
        v53 = v13;
        v54 = 0;
        IMInsertDatasToXPCDictionary();
        goto LABEL_18;
      }

      if (v11 != 3)
      {
        goto LABEL_18;
      }

      valuePtr[0] = 0;
      if (Property)
      {
        CFNumberGetValue(Property, kCFNumberSInt64Type, valuePtr);
        v15 = valuePtr[0];
      }

      else
      {
        v15 = 0;
      }

      v18 = *(a1 + 32);
      v19 = v10;
      goto LABEL_17;
    }

    if (!v11)
    {
      if (!Property)
      {
        goto LABEL_18;
      }

      v16 = sub_1B7AE64DC(v7);
      if (v16)
      {
        v8 |= v16;
        goto LABEL_18;
      }

      v18 = *(a1 + 32);
      v19 = v10;
      v15 = v13;
LABEL_17:
      xpc_dictionary_set_int64(v18, v19, v15);
      goto LABEL_18;
    }

    if (v11 == 1)
    {
      v14 = *(a1 + 32);
      v53 = v13;
      v54 = 0;
      IMInsertNSStringsToXPCDictionary();
    }

LABEL_18:
    ++v7;
    v6 += 40;
  }

  while (v7 != 93);
  if (v8)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "flags", v8);
  }

  if (*(a1 + 56))
  {
    v20 = sub_1B7AE267C(*(a1 + 48), 0, v4);
    if (v20)
    {
      v22 = v20;
      v23 = xpc_dictionary_create(0, 0, 0);
      if (v23)
      {
        v24 = v23;
        _IMDHandleRecordBulkCopyXPCDictionary(v22, v23, 0);
        xpc_dictionary_set_value(*(a1 + 32), "handle_cache", v24);
        xpc_release(v24);
      }

      CFRelease(v22);
    }

    v25 = sub_1B7AEEE10(*(a1 + 48), 0, v21);
    if (v25)
    {
      v26 = v25;
      v27 = xpc_dictionary_create(0, 0, 0);
      if (v27)
      {
        v28 = v27;
        _IMDHandleRecordBulkCopyXPCDictionary(v26, v27, 0);
        xpc_dictionary_set_value(*(a1 + 32), "other_handle_cache", v28);
        xpc_release(v28);
      }

      CFRelease(v26);
    }
  }

  if (*(a1 + 57))
  {
    Identifier = IMDMessageRecordGetIdentifier(*(a1 + 48));
    v30 = IMDMessageRecordCopyAttachmentsForIDWithLock(Identifier);
    v31 = xpc_array_create(0, 0);
    if (v31)
    {
      v34 = v31;
      v35 = objc_msgSend_count(v30, v32, v33);
      if (v35 >= 1)
      {
        v37 = 0;
        v38 = v35 & 0x7FFFFFFF;
        do
        {
          v39 = objc_msgSend_objectAtIndex_(v30, v36, v37, v53, v54);
          v40 = xpc_dictionary_create(0, 0, 0);
          if (v40)
          {
            v41 = v40;
            _IMDAttachmentRecordBulkCopyXPCDictionary(v39, v40, 0);
            xpc_array_append_value(v34, v41);
            xpc_release(v41);
          }

          ++v37;
        }

        while (v38 != v37);
      }

      v42 = *(a1 + 32);
      if (v42)
      {
        xpc_dictionary_set_value(v42, "attachments_cache", v34);
      }

      xpc_release(v34);
    }

    if (v30)
    {
      CFRelease(v30);
    }
  }

  v43 = *(a1 + 32);
  v44 = CSDBRecordGetProperty();
  v45 = CSDBRecordGetProperty();
  if (!v44 || !v45)
  {
    v46 = CSDBRecordGetProperty();
    v47 = IMDMessageRecordCountMessagesWithThreadOriginatorGroupedByParts(v46);
    if (v47)
    {
      v48 = xpc_dictionary_create(0, 0, 0);
      if (v48)
      {
        v50 = v48;
        valuePtr[0] = MEMORY[0x1E69E9820];
        valuePtr[1] = 3221225472;
        valuePtr[2] = sub_1B7B38B78;
        valuePtr[3] = &unk_1E7CB82C8;
        valuePtr[4] = v48;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v47, v49, valuePtr);
        xpc_dictionary_set_value(v43, "threadCountsByPart", v50);
        xpc_release(v50);
      }
    }
  }

  v51 = *(a1 + 32);
  v52 = IMDMessageRecordGetIdentifier(*(a1 + 48));
  xpc_dictionary_set_int64(v51, "recordIdentifier", v52);
  CFRelease(v5);
}

void sub_1B7AEB31C(uint64_t a1)
{
  *(a1 + 16) = -1;
  if (*(a1 + 24))
  {
    v2 = 0;
    v3 = *(MEMORY[0x1E69990F8] + 8);
    do
    {
      if (CFArrayGetValueAtIndex(*(a1 + 24), v2))
      {
        v4 = v3 == 0;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        v3();
      }

      ++v2;
    }

    while (v2 != 5);
    v5 = *(a1 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 24) = 0;
    }
  }
}

uint64_t sub_1B7AEB3A0(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7AEB3E4(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7AE0D64(a1, a2, a3);
  v4 = *(a1 + 40);
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _IMDPerformLockedMessageStoreBlock(uint64_t a1)
{
  if (a1)
  {
    IMDEnsureSharedRecordStoreInitialized();
    IMDSharedThreadedRecordStore();
    v2 = CSDBRecordStoreRefFromThreadedRecordStoreRef();
    v3 = *(a1 + 16);

    return v3(a1, v2);
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE718(v5, v6);
    }

    return IMDEnsureSharedRecordStoreInitialized();
  }
}

void sub_1B7AEB4BC(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_1B7AE11D0(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B7CE3A00(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_1B7AE11D0(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1B7CFF740();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_1B7CE8040();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D57FF0);
    sub_1B7CFF320();
    MEMORY[0x1B8CADCA0](39, 0xE100000000000000);
    sub_1B7CFF340();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v27 = *a3;

      v28 = sub_1B7AE11D0(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_1B7CE3A00(v32, 1);
        v33 = *a3;
        v28 = sub_1B7AE11D0(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v8;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *sub_1B7AEB850(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA52480, &qword_1B7D0CA68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA52488, &qword_1B7D0CA70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7AEB984(void *a1, int64_t a2, char a3)
{
  result = sub_1B7AEB850(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1B7AEB9A4(void *a1, char a2, void *a3)
{
  v45 = a1[2];
  if (!v45)
  {
    goto LABEL_23;
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *a3;
  v9 = sub_1B7AFEA28(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1B7CE7EE4();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_1B7CE3790(v13, a2 & 1);
  v17 = *a3;
  v18 = sub_1B7AFEA28(v7);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_28:
    sub_1B7CFF740();
    __break(1u);
LABEL_29:
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D57FF0);
    sub_1B7CFF320();
    MEMORY[0x1B8CADCA0](39, 0xE100000000000000);
    sub_1B7CFF340();
    __break(1u);
    return;
  }

  v14 = v18;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v22[6] + 8 * v14) = v7;
  *(v22[7] + 8 * v14) = v6;
  v23 = v22[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22[2] = v25;
  if (v45 != 1)
  {
    v26 = a1 + 7;
    v27 = 1;
    while (v27 < a1[2])
    {
      v29 = *(v26 - 1);
      v28 = *v26;
      v30 = *a3;
      v31 = sub_1B7AFEA28(v29);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_25;
      }

      v36 = v31;
      v37 = v32;
      v38 = v30[3];

      if (v38 < v35)
      {
        sub_1B7CE3790(v35, 1);
        v39 = *a3;
        v40 = sub_1B7AFEA28(v29);
        if ((v37 & 1) != (v41 & 1))
        {
          goto LABEL_28;
        }

        v36 = v40;
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v42 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v42[6] + 8 * v36) = v29;
      *(v42[7] + 8 * v36) = v28;
      v43 = v42[2];
      v24 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      ++v27;
      v42[2] = v44;
      v26 += 2;
      if (v45 == v27)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1B7AEBD10()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1B7AEBD7C(MEMORY[0x1E69E7CC0]);
  v2 = sub_1B7C24468(v0);
  sub_1B7C107FC(&qword_1EBA531A8, qword_1B7D107C8);
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = v1;
  *(result + 24) = v2;
  off_1EDBE3AE8 = result;
  return result;
}

unint64_t sub_1B7AEBD90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1B7C107FC(a2, a3);
    v5 = sub_1B7CFF380();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1B7AE11D0(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B7AEBEB0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1B7AEBF58(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1B7AEBFC4(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_1B7AE11D0(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B7CE34D0(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_1B7AE11D0(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1B7CFF740();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_1B7CE7D6C();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v6;
  v23[1] = v5;
  v24 = (v22[7] + 16 * v10);
  *v24 = v7;
  v24[1] = v8;
  v25 = v22[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D57FF0);
    sub_1B7CFF320();
    MEMORY[0x1B8CADCA0](39, 0xE100000000000000);
    sub_1B7CFF340();
    __break(1u);
    return;
  }

  v22[2] = v26;
  if (v41 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v27 = *(v4 - 1);
      v8 = *v4;
      v28 = *a3;

      v29 = sub_1B7AE11D0(v6, v5);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v30;
      if (v28[3] < v33)
      {
        sub_1B7CE34D0(v33, 1);
        v34 = *a3;
        v29 = sub_1B7AE11D0(v6, v5);
        if ((v16 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v6;
      v37[1] = v5;
      v38 = (v36[7] + 16 * v29);
      *v38 = v27;
      v38[1] = v8;
      v39 = v36[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v36[2] = v40;
      v4 += 4;
      if (v41 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *sub_1B7AEC378(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

__n128 sub_1B7AEC4D4()
{
  v0 = *(MEMORY[0x1E69990F8] + 32);
  result = *MEMORY[0x1E69990F8];
  v2 = *(MEMORY[0x1E69990F8] + 16);
  xmmword_1EDBE40C8 = *MEMORY[0x1E69990F8];
  unk_1EDBE40D8 = v2;
  qword_1EDBE40E8 = v0;
  return result;
}

uint64_t sub_1B7AEC4F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1B7AEC510()
{
  v0 = *(MEMORY[0x1E69990E8] + 32);
  result = *MEMORY[0x1E69990E8];
  v2 = *(MEMORY[0x1E69990E8] + 16);
  xmmword_1EDBE4090 = *MEMORY[0x1E69990E8];
  unk_1EDBE40A0 = v2;
  qword_1EDBE40B0 = v0;
  return result;
}

__n128 sub_1B7AEC534()
{
  v0 = *(MEMORY[0x1E69990E0] + 32);
  result = *MEMORY[0x1E69990E0];
  v2 = *(MEMORY[0x1E69990E0] + 16);
  xmmword_1EDBE56A0 = *MEMORY[0x1E69990E0];
  *algn_1EDBE56B0 = v2;
  qword_1EDBE56C0 = v0;
  return result;
}

unint64_t sub_1B7AEC558()
{
  result = qword_1EBA50E30;
  if (!qword_1EBA50E30)
  {
    sub_1B7CFEF30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50E30);
  }

  return result;
}

unint64_t sub_1B7AEC5B0()
{
  result = qword_1EBA50E50;
  if (!qword_1EBA50E50)
  {
    sub_1B7C1091C(&unk_1EBA520A8, &qword_1B7D0B278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50E50);
  }

  return result;
}

uint64_t _sSo21IMDLegacyRecordBridgeC14IMDPersistenceE14createTriggers5usingSbSpySo20CSDBSqliteConnectionVG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionConfiguration();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v50 - v8;
  v10 = *(v7 + 36);
  v11 = sub_1B7CFE420();
  v12 = *(*(v11 - 8) + 56);
  v58 = v11;
  result = v12(&v9[v10], 1, 1);
  *v9 = 1;
  *(v9 + 1) = 0;
  *(v9 + 8) = 1;
  v14 = *(a1 + 8);
  if (!v14)
  {
    goto LABEL_34;
  }

  sub_1B7AE3EA4(v9, v6);
  v15 = type metadata accessor for SQLConnection(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
  v20 = MEMORY[0x1E69E7CC8];
  *v19 = MEMORY[0x1E69E7CC8];
  v19[1] = v20;
  v19[2] = 32;
  *(v18 + 16) = v14;
  *(v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
  v59 = v18;
  result = sub_1B7AE3EA4(v6, v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
  if (v6[2])
  {
    goto LABEL_7;
  }

  v21 = v6[1] * 1000.0;
  if (COERCE__INT64(fabs(v21)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v21 <= -2147483650.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v21 >= 2147483650.0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  sqlite3_busy_timeout(v14, v21);
LABEL_7:
  sub_1B7C4BDE4(v6, type metadata accessor for SQLConnectionConfiguration);
  if (qword_1EBA50F60 != -1)
  {
LABEL_30:
    swift_once();
  }

  v22 = unk_1EBA5DA70;
  v23 = qword_1EBA5DA78;
  v24 = *(qword_1EBA5DA78 + 16);
  if (v24)
  {
    v50[1] = qword_1EBA5DA68;
    v51 = v9;

    v25 = 0;
    v26 = 0;
    v27 = 0;
    *&v28 = 136315138;
    v57 = v28;
    v55 = v22;
    v56 = v23;
    while (1)
    {
      if (v26 >= *(v22 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v26 >= v24)
      {
        goto LABEL_29;
      }

      v31 = *(v22 + v25 + 32);
      v32 = *(v22 + v25 + 40);
      v9 = *(v23 + v25 + 32);
      v33 = *(v23 + v25 + 40);
      v34 = qword_1EBA50EB8;
      swift_retain_n();

      if (v34 != -1)
      {
        swift_once();
      }

      sub_1B7AD9040(v58, qword_1EBA5DA20);

      v35 = sub_1B7CFE400();
      v36 = sub_1B7CFEF00();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v53 = v33;
        v54 = 0;
        v38 = v37;
        v39 = swift_slowAlloc();
        v52 = v9;
        v40 = v39;
        v60 = v39;
        *v38 = v57;

        v41 = v31;
        v42 = sub_1B7AED1B8(v31, v32, &v60);

        *(v38 + 4) = v42;
        v31 = v41;
        _os_log_impl(&dword_1B7AD5000, v35, v36, "Starting create trigger step for %s", v38, 0xCu);
        sub_1B7AE9168(v40);
        v43 = v40;
        v9 = v52;
        MEMORY[0x1B8CB0E70](v43, -1, -1);
        v27 = v54;
        MEMORY[0x1B8CB0E70](v38, -1, -1);
      }

      v60 = v59;
      (v9)(&v60);

      v44 = sub_1B7CFE400();
      if (v27)
      {
        break;
      }

      v45 = sub_1B7CFEF00();

      if (os_log_type_enabled(v44, v45))
      {
        v29 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v60 = v9;
        *v29 = v57;

        v30 = sub_1B7AED1B8(v31, v32, &v60);

        *(v29 + 4) = v30;
        _os_log_impl(&dword_1B7AD5000, v44, v45, "Completed create trigger step for %s", v29, 0xCu);
        sub_1B7AE9168(v9);
        MEMORY[0x1B8CB0E70](v9, -1, -1);
        MEMORY[0x1B8CB0E70](v29, -1, -1);
      }

      else
      {
      }

      v22 = v55;
      v23 = v56;
      ++v26;
      v24 = *(v56 + 16);
      v25 += 16;
      if (v26 >= v24)
      {

        v9 = v51;
        goto LABEL_25;
      }
    }

    v46 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v44, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v60 = v48;
      *v47 = v57;

      v49 = sub_1B7AED1B8(v31, v32, &v60);

      *(v47 + 4) = v49;
      _os_log_impl(&dword_1B7AD5000, v44, v46, "Error during create trigger step for %s", v47, 0xCu);
      sub_1B7AE9168(v48);
      MEMORY[0x1B8CB0E70](v48, -1, -1);
      MEMORY[0x1B8CB0E70](v47, -1, -1);
    }

    else
    {
    }

    sub_1B7C4BDE4(v51, type metadata accessor for SQLConnectionConfiguration);

    return 0;
  }

  else
  {

LABEL_25:

    sub_1B7C4BDE4(v9, type metadata accessor for SQLConnectionConfiguration);

    return 1;
  }
}

uint64_t sub_1B7AECD54()
{
  v0 = sub_1B7AECDC8(&unk_1F2FA1CE8);
  v2 = v1;
  v4 = v3;
  sub_1B7C107FC(&qword_1EBA534F0, &qword_1B7D11E00);
  result = swift_arrayDestroy();
  qword_1EBA5DA68 = v0;
  unk_1EBA5DA70 = v2;
  qword_1EBA5DA78 = v4;
  return result;
}

char *sub_1B7AECDE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7AECEEC(char *a1, int64_t a2, char a3)
{
  result = sub_1B7AECDE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B7AECF0C(void *a1, int64_t a2, char a3)
{
  result = sub_1B7C31B70(a1, a2, a3, *v3, &qword_1EBA52570, &qword_1B7D0CB30);
  *v3 = result;
  return result;
}

uint64_t sub_1B7AECF3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_1B7AECEEC(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_1B7AECEEC((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x1B8CAD4E0](*(v13 + 16) & 0x3FLL) > v11)
    {
      v14 = *v3;
      result = swift_isUniquelyReferenced_native();
      v15 = *v3;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = *v3;
        v17 = sub_1B7CFE3C0();

        *v3 = v17;
        v15 = v17;
      }

      if (v15)
      {
        v18 = *(v15 + 16);
        v19 = *(*v6 + 16) + ~(*(v15 + 24) >> 6);
        return sub_1B7CFE360();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_1B7CC9F3C(sub_1B7CCA780);
}

uint64_t sub_1B7AED0EC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B7CFE420();
  sub_1B7AED154(v3, a2);
  sub_1B7AD9040(v3, a2);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

uint64_t *sub_1B7AED154(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1B7AED1B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B7AED2E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B7AED284(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1B7AE9168(v11);
  return v7;
}

uint64_t sub_1B7AED284(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1B7AED2E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B7C49054(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B7CFF280();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

const char *sub_1B7AED3EC(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1B7AE3B2C(0xD00000000000011FLL, 0x80000001B7D4EF00, 0);
  if (!v1)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

BOOL sub_1B7AED4F8()
{
  v1 = type metadata accessor for SQLConnectionError(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B7CFEA30();
  v6 = sub_1B7CFEA30();
  v7 = IMGetCachedDomainIntForKey();

  if ((v7 - 5) > 0xFFFFFFFFFFFFFFFBLL)
  {
    return 1;
  }

  v18 = &v19;

  v8 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1B7AE3A9C((v9 > 1), v10 + 1, 1, v8);
  }

  v16 = MEMORY[0x1E69E6158];
  v17 = &off_1F2FA8B58;
  *&v15 = 0x7372655674616863;
  *(&v15 + 1) = 0xEB000000006E6F69;
  v8[2] = v10 + 1;
  sub_1B7AE910C(&v15, &v8[5 * v10 + 4]);
  sub_1B7AF45D8(0xD000000000000029, 0x80000001B7D51060, v8, 0, &v18);
  if (!v0)
  {

    return v19 < 1;
  }

  *&v15 = v0;
  v11 = v0;
  sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    return v12;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1B7C19DBC(v4);
    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_1B7AED778(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if ((v3 * 40) >> 64 == (40 * v3) >> 63)
  {
    v26 = swift_slowAlloc();
    if (!v3)
    {
      return v26;
    }

    v5 = a1 + 32;
    v6 = v26;
    while (1)
    {
      sub_1B7AE90A8(v5, v28);
      v7 = v29;
      sub_1B7AE9124(v28, v29);
      v8 = sub_1B7AED940(v7);
      v10 = v9;
      v11 = *(a2 + 48);
      sub_1B7AE9124(v28, v29);
      v12 = sub_1B7CFE680();
      if (!*(v11 + 16))
      {
        break;
      }

      v14 = sub_1B7AE11D0(v12, v13);
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        __break(1u);
        goto LABEL_9;
      }

      v17 = (*(v11 + 56) + 16 * v14);
      v18 = *v17;
      v19 = v17[1];
      v20 = sub_1B7CFEAD0();
      v21 = strdup((v20 + 32));

      v22 = (*(v10 + 16))(v8, v10);
      v23 = (*(v10 + 8))(v8, v10);
      sub_1B7AE90A8(v28, v27);
      v24 = sub_1B7AEDBD4(v27);
      *v6 = v21;
      *(v6 + 8) = v22;
      *(v6 + 16) = v23;
      *(v6 + 24) = v24;
      *(v6 + 32) = 0;
      v6 += 40;
      sub_1B7AE9168(v28);
      v5 += 40;
      if (!--v3)
      {
        return v26;
      }
    }
  }

  else
  {
LABEL_9:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7AED940(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = *(v3 + 16);
  v8(&v13 - v9, v1, a1);
  sub_1B7CFE940();
  if (swift_dynamicCast())
  {
    v10 = sub_1B7CFE930();
    if (swift_conformsToProtocol2())
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {

      return v10;
    }
  }

  else
  {
    v8(v7, v1, a1);
    sub_1B7CFE800();
    if (swift_dynamicCast())
    {

      return MEMORY[0x1E69E7360];
    }
  }

  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

__int128 *sub_1B7AEDB88()
{
  if (qword_1EDBE40C0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EDBE40C8;
}

uint64_t sub_1B7AEDBD4(uint64_t *a1)
{
  sub_1B7AE90A8(a1, v6);
  sub_1B7C107FC(&unk_1EBA524E0, &qword_1B7D0B228);
  sub_1B7CFE940();
  if (!swift_dynamicCast())
  {
    sub_1B7AE9168(a1);
    return 0;
  }

  if (sub_1B7CFE920())
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  sub_1B7CFE8F0();
  if (v7)
  {
    if (swift_dynamicCast())
    {
      if (v5)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_1B7AEE190(v6, &qword_1EBA51FA8, qword_1B7D0B230);
  }

  sub_1B7CFE8F0();
  if (v7)
  {
    if (swift_dynamicCast())
    {
      if (v5)
      {
LABEL_19:
        result = sub_1B7CFF340();
        __break(1u);
        return result;
      }

LABEL_14:
      sub_1B7AE9168(a1);

      return v2 | 0x80;
    }
  }

  else
  {
    sub_1B7AEE190(v6, &qword_1EBA51FA8, qword_1B7D0B230);
  }

  v4 = sub_1B7CFE8E0();

  sub_1B7AE9168(a1);
  if (v4)
  {
    return v2;
  }

  else
  {
    return v2 | 0x40;
  }
}

id IMDPersistenceServiceListener.init()()
{
  v1 = v0;
  v2 = sub_1B7CFEF30();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1B7CFE470();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1B7CFEF50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___IMDPersistenceServiceListener_listener;
  *&v0[v11] = [objc_opt_self() serviceListener];
  v17 = OBJC_IVAR___IMDPersistenceServiceListener_queue;
  sub_1B7AEE088(0, &qword_1EBA50E28, 0x1E69E9610);
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8098], v6);
  sub_1B7CFE460();
  v12 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  sub_1B7AEC558();
  sub_1B7C107FC(&unk_1EBA520A8, &qword_1B7D0B278);
  sub_1B7AEC5B0();
  sub_1B7CFF0D0();
  *&v0[v17] = sub_1B7CFEF70();
  v13 = OBJC_IVAR___IMDPersistenceServiceListener_state;
  v14 = sub_1B7C23DD4(v12);
  sub_1B7C107FC(&unk_1EBA520C0, qword_1B7D0B280);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v14;
  *&v1[v13] = v15;
  v18.receiver = v1;
  v18.super_class = IMDPersistenceServiceListener;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_1B7AEE088(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1B7AEE190(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B7C107FC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__int128 *sub_1B7AEE27C()
{
  if (qword_1EDBE4088 != -1)
  {
    swift_once();
  }

  return &xmmword_1EDBE4090;
}

__int128 *sub_1B7AEE2D4()
{
  if (qword_1EDBE5698 != -1)
  {
    swift_once();
  }

  return &xmmword_1EDBE56A0;
}

uint64_t sub_1B7AEE328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_slowAlloc();
  v7 = sub_1B7CFEAD0();
  v8 = strdup((v7 + 32));

  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a3)
  {
    *v6 = v8;
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 1;
    *(v6 + 64) = 0;
    *(v6 + 72) = a4;
    *(v6 + 80) = a3;
    *(v6 + 128) = 0;
    *(v6 + 136) = 0;
    *(v6 + 144) = 0;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0;
    *(v6 + 152) = 1;
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1B7AEE408(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52180, &qword_1B7D0B300);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B7AE11D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B7AEE504(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA531A0, &qword_1B7D107C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7AEE574(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA52180, &qword_1B7D0B300);
  v38 = a2;
  result = sub_1B7CFF370();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

const __CFString *IMDMessageRecordCountMessagesWithThreadOriginatorGroupedByParts(const __CFString *a1)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    *buf = 0;
    v6 = buf;
    v7 = 0x3052000000;
    v8 = sub_1B7AE1B30;
    v9 = sub_1B7AE25A0;
    v10 = 0;
    if (a1)
    {
      if (CFStringGetLength(a1))
      {
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 3221225472;
        v4[2] = sub_1B7AEE9CC;
        v4[3] = &unk_1E7CB7948;
        v4[4] = buf;
        v4[5] = a1;
        IMDRunSqlOperation(v4);
        a1 = *(v6 + 5);
      }

      else
      {
        a1 = 0;
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "IMDMessageRecordCountMessagesWithThreadOriginatorGroupedByParts called by client", buf, 2u);
      }
    }

    return 0;
  }

  return a1;
}

BOOL sub_1B7AEE9CC(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7AEEA98;
  v5[3] = &unk_1E7CB75B0;
  v2 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7AEEAA4;
  v4[3] = &unk_1E7CB7920;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT   m.thread_originator_part, SUM(IFNULL(part_count, 1)) FROM   message m INDEXED BY   message_idx_thread_originator_guid INNER JOIN   chat_message_join cmj ON cmj.message_id = m.ROWID WHERE   m.thread_originator_guid == ?   AND m.associated_message_guid IS NULL GROUP BY  m.thread_originator_part", v5, v4);
}

BOOL sub_1B7AEEAA4(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v4 = MEMORY[0x1E69E9820];
    *&v3 = 138412546;
    v15 = v3;
    do
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x3052000000;
      v26 = sub_1B7AE1B30;
      v27 = sub_1B7AE25A0;
      v28 = 0;
      v17 = 0;
      v18 = &v17;
      v19 = 0x3052000000;
      v20 = sub_1B7AE1B30;
      v21 = sub_1B7AE25A0;
      v22 = 0;
      v5 = *(a1 + 40);
      v16[0] = v4;
      v16[1] = 3221225472;
      v16[2] = sub_1B7BDFF18;
      v16[3] = &unk_1E7CB7B28;
      v16[4] = &v23;
      v16[5] = &v17;
      IMDSqlOperationIterateRow(v5, v16);
      if (objc_msgSend_length(v24[5], v6, v7) && (v9 = v18[5]) != 0)
      {
        v10 = *(*(*(a1 + 32) + 8) + 40);
        if (!v10)
        {
          *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF90]);
          v10 = *(*(*(a1 + 32) + 8) + 40);
          v9 = v18[5];
        }

        objc_msgSend_setObject_forKey_(v10, v8, v9, v24[5], v15);
      }

      else
      {
        v11 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v24[5];
          v13 = v18[5];
          *buf = v15;
          v30 = v12;
          v31 = 2112;
          v32 = v13;
          _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_DEFAULT, "Reply count query got invalid column data back: %@|%@", buf, 0x16u);
        }
      }

      _Block_object_dispose(&v17, 8);
      _Block_object_dispose(&v23, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7AEED10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B7AEED40(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

void sub_1B7AEEDA8(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

CFTypeRef sub_1B7AEEE10(void *a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  if (a1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = -1;
    if (a1[3])
    {
      v4 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + 1656);
      ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 3), 41);
      v6 = ValueAtIndex;
      if (ValueAtIndex && v4 && *v4)
      {
        v6 = (*v4)(ValueAtIndex);
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = sub_1B7AEEDA8;
      v13 = &unk_1E7CB7920;
      v14 = &v16;
      v15 = a1;
      if (a2)
      {
        _IMDPerformBlock(&v10);
      }

      else
      {
        sub_1B7AEEDA8(&v10);
      }

      v6 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v3 = IMDHandleRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], v6);
      *(v11 + 24) = v3;
    }

    else
    {
      v7 = *(v3 + 5);
      if (v7)
      {
        v3 = CFRetain(v7);
      }

      else
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = sub_1B7B3893C;
        v9[3] = &unk_1E7CB6838;
        v9[4] = &v10;
        __syncXPCIMDMessageRecordCopyOtherHandle_IPCAction(v9, *(v3 + 2));
        v3 = *(v11 + 24);
      }
    }

    _Block_object_dispose(&v10, 8);
  }

  return v3;
}

void IMDBridgedRecordPopulatePropertyImplementations(objc_class *a1, uint64_t a2, int a3)
{
  if (qword_1EDBE7958 != -1)
  {
    sub_1B7CEEEF8();
  }

  v92 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v93 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a3 >= 1)
  {
    v5 = 0;
    v94 = a3;
    v6 = 0x1E696A000uLL;
    cls = a1;
    while (1)
    {
      v7 = a2 + 40 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);
      v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
      if (v9)
      {
        v13 = *v9;
        if (*v9)
        {
          v14 = v9;
          do
          {
            if (v13 == 95)
            {
              v13 = __toupper(v14[1]);
              v14 += 2;
            }

            else
            {
              ++v14;
            }

            objc_msgSend_appendFormat_(v12, v10, @"%c", v13);
            v13 = *v14;
          }

          while (*v14);
        }
      }

      v15 = objc_msgSend_copy(v12, v10, v11);

      if (objc_msgSend_hasPrefix_(v15, v16, @"is"))
      {
        v17 = sub_1B7AEF5BC(v15, 0, 2u);

        v15 = v17;
      }

      v18 = v15;
      v21 = objc_msgSend_UTF8String(v18, v19, v20);
      Property = class_getProperty(a1, v21);
      if (Property)
      {
        break;
      }

      v24 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v15, v23, @"Guid", @"GUID");

      v25 = v24;
      v15 = v24;
      v28 = objc_msgSend_UTF8String(v25, v26, v27);
      Property = class_getProperty(a1, v28);
      if (Property)
      {
        break;
      }

      if (objc_msgSend_hasSuffix_(v24, v29, @"Id"))
      {
        v73 = objc_msgSend_length(v24, v71, v72);
        v75 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v24, v74, v73 - 2, 2, @"ID");

        v76 = v75;
        v79 = objc_msgSend_UTF8String(v76, v77, v78);
        v30 = class_getProperty(a1, v79);

        if (!v30)
        {
          goto LABEL_35;
        }

        goto LABEL_17;
      }

LABEL_34:

LABEL_35:
      if (++v5 == v94)
      {
        goto LABEL_40;
      }
    }

    v30 = Property;

LABEL_17:
    v31 = *(v6 + 3776);
    Name = property_getName(v30);
    v15 = objc_msgSend_stringWithUTF8String_(v31, v33, Name);
    v34 = property_copyAttributeValue(v30, "G");
    v36 = *(v6 + 3776);
    if (v34)
    {
      v37 = v34;
      v38 = v8;
      v39 = objc_msgSend_stringWithUTF8String_(*(v6 + 3776), v35, v34);
      free(v37);
    }

    else
    {
      v38 = v8;
      v40 = property_getName(v30);
      v39 = objc_msgSend_stringWithUTF8String_(v36, v41, v40);
    }

    v42 = property_copyAttributeValue(v30, "S");
    v44 = MEMORY[0x1E696AEC0];
    if (v42)
    {
      v45 = v42;
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v43, v42);
      free(v45);
    }

    else
    {
      v48 = property_getName(v30);
      v50 = objc_msgSend_stringWithUTF8String_(v44, v49, v48);
      v51 = MEMORY[0x1E696AEC0];
      v52 = sub_1B7AEF5BC(v50, 1, 0);
      v46 = objc_msgSend_stringWithFormat_(v51, v53, @"set%@", v52);
    }

    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v47, v9);
    objc_msgSend_setObject_forKeyedSubscript_(v93, v55, v54, v15);

    v56 = property_copyAttributeValue(v30, "T");
    v57 = v56;
    if (v38 == 3)
    {
      if (!strcmp(v56, "@NSDate"))
      {
        v58 = 3;
      }

      else
      {
        v58 = 2;
      }
    }

    else if (v38)
    {
      v58 = 4;
    }

    else
    {
      v58 = strcmp(v56, "@NSDate") == 0;
    }

    free(v57);
    v59 = NSSelectorFromString(v39);
    if (class_addMethod(cls, v59, *(&off_1F2FA06B0 + 4 * v58), *(&off_1F2FA06B0 + 4 * v58 + 1)))
    {
      v61 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v60, v5);
      objc_msgSend_setObject_forKeyedSubscript_(v92, v62, v61, v39);

      if ((v58 | 2) == 3)
      {
        v63 = MEMORY[0x1E696AEC0];
        v64 = sub_1B7AEF5BC(v15, 1, 0);
        v66 = objc_msgSend_stringWithFormat_(v63, v65, @"raw%@", v64);

        v67 = NSSelectorFromString(v66);
        class_addMethod(cls, v67, *(&off_1F2FA06B0 + 8 * (v58 == 3)), *(&off_1F2FA06B0 + 8 * (v58 == 3) + 1));
        v69 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v68, v5);
        objc_msgSend_setObject_forKeyedSubscript_(v92, v70, v69, v66);
      }
    }

    a1 = cls;
    v6 = 0x1E696A000;
    goto LABEL_34;
  }

LABEL_40:
  pthread_rwlock_wrlock(&stru_1EDBE5750);
  v82 = objc_msgSend_copy(v92, v80, v81);
  v83 = qword_1EDBE5818;
  v84 = NSStringFromClass(a1);
  objc_msgSend_setObject_forKeyedSubscript_(v83, v85, v82, v84);

  v88 = objc_msgSend_copy(v93, v86, v87);
  v89 = qword_1EDBE5820;
  v90 = NSStringFromClass(a1);
  objc_msgSend_setObject_forKeyedSubscript_(v89, v91, v88, v90);

  pthread_rwlock_unlock(&stru_1EDBE5750);
}

id sub_1B7AEF5BC(void *a1, int a2, unsigned int a3)
{
  v5 = a1;
  if (objc_msgSend_length(v5, v6, v7))
  {
    v8 = v5;
    v11 = *(objc_msgSend_UTF8String(v8, v9, v10) + a3);
    if (a2)
    {
      v12 = __toupper(v11);
    }

    else
    {
      v12 = __tolower(v11);
    }

    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"%c", v12);
    v14 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v5, v16, 0, a3 + 1, v15);
  }

  else
  {
    v14 = v5;
  }

  return v14;
}

uint64_t IMDChatRecordCopyChatRecord(int64_t a1)
{
  if (a1 == -1)
  {
    return 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1B7AEF84C;
    v5[3] = &unk_1E7CB7368;
    v5[4] = &v6;
    v5[5] = a1;
    _IMDPerformLockedMessageStoreBlock(v5);
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1B7B297E4;
    v4[3] = &unk_1E7CB6838;
    v4[4] = &v6;
    __syncXPCIMDChatRecordCopyChatRecordForIdentifier_IPCAction(v4, a1);
  }

  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __XPCServerIMDChatRecordCopyHandles_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7AE548C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7AEF84C(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7AE0D64(a1, a2, a3);
  v4 = *(a1 + 40);
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

_OWORD *sub_1B7AEF890(uint64_t a1, int64_t a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&stru_1EDBE5A50, sub_1B7AE97F8);
  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    Instance[3] = 0u;
    Instance[4] = 0u;
    Instance[1] = 0u;
    Instance[2] = 0u;
    *(Instance + 2) = a2;
    if (a3)
    {
      v7 = IMDChatRecordCopyChatRecord(a2);
    }

    else
    {
      v7 = IMDChatRecordCopyChatRecordUnlocked(a2);
    }

    v8 = v7;
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = 134218242;
        v14 = a2;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEBUG, "Got record in _IMDChatRecordCreateFromRecordIDWithLock (%lld) : %@", &v13, 0x16u);
      }
    }

    if (!v8)
    {
      v10 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 134217984;
        v14 = a2;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Could not get chat record for identifier %lld", &v13, 0xCu);
      }

      v8 = v6;
      v6 = 0;
    }

    CFRelease(v8);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1B7AEFA38(uint64_t a1, const char *a2, uint64_t a3)
{
  *(a1 + 16) = -1;
  if (*(a1 + 24))
  {
    v4 = 0;
    for (i = 16; i != 1136; i += 40)
    {
      v6 = *(*(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + i);
      if (CFArrayGetValueAtIndex(*(a1 + 24), v4))
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        v8 = *(v6 + 8);
        if (v8)
        {
          v8();
        }
      }

      ++v4;
    }

    v9 = *(a1 + 24);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 24) = 0;
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 48) = 0;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 32) = 0;
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 64) = 0;
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 72) = 0;
  }
}

uint64_t _IMDCopyIMDHandleRecordFromXPCObjectClient(void *a1)
{
  if (xpc_dictionary_get_count(a1) < 3)
  {
    return 0;
  }

  pthread_once(&stru_1EDBE5A70, sub_1B7B38EF8);
  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    v4 = 5;
    Mutable = CFArrayCreateMutable(0, 5, 0);
    do
    {
      CFArrayAppendValue(Mutable, 0);
      --v4;
    }

    while (v4);
    v7 = *MEMORY[0x1E69990F8];
    v6 = *(MEMORY[0x1E69990F8] + 8);
    v8 = &off_1E7CB8330;
    do
    {
      v9 = *v8;
      v10 = IMGetXPCStringFromDictionary();
      if (CFArrayGetValueAtIndex(Mutable, v4) && v6)
      {
        v6();
      }

      if (v10)
      {
        v11 = v7 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v10 = v7(v10);
      }

      CFArraySetValueAtIndex(Mutable, v4++, v10);
      v8 += 5;
    }

    while (v4 != 5);
    *(v2 + 24) = Mutable;
    *(v2 + 16) = xpc_dictionary_get_int64(a1, "recordIdentifier");
  }

  return v2;
}

void sub_1B7AEFC70(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(a2, a2, a3))
  {
    v5 = *(a1 + 32);
    IMInsertDictionariesToXPCDictionary();
  }

  else if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 40);
        *buf = 138412546;
        v10 = v8;
        v11 = 2112;
        v12 = a3;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Failed to fetch identifiers for chat record with guid %@ : %@", buf, 0x16u);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7AEFDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  v5 = sub_1B7CFE980();
  if (a2)
  {
    v6 = sub_1B7CFDEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t IMDBridgedRecordCopyPropertyValue(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = *objc_msgSend__localCache(v3, v4, v5);
  if (!v7)
  {

LABEL_11:
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7AF0E98;
      v13[3] = &unk_1E7CB8000;
      v14 = v3;
      v15 = &v17;
      v16 = a2;
      _IMDPerformBlock(v13);
      v10 = v18[3];

      _Block_object_dispose(&v17, 8);
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_15;
  }

  v8 = *(objc_msgSend__propertyDescriptorForProperty_(v3, v6, a2) + 16);
  ValueAtIndex = CFArrayGetValueAtIndex(v7, a2);
  v10 = ValueAtIndex;
  if (ValueAtIndex)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    if (!*v8)
    {

      goto LABEL_15;
    }

    v10 = (*v8)(ValueAtIndex);
  }

  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_15:

  return v10;
}

void sub_1B7AEFFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1B7AEFFD4(void *a1, const char *a2)
{
  v3 = a1;
  v4 = sub_1B7AF0958(v3, a2);
  v5 = IMDBridgedRecordCopyPropertyValue(v3, v4);

  return v5;
}

void sub_1B7AF0054(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  sub_1B7AE3F68();

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1B7AE3A9C((v8 > 1), v9 + 1, 1, v7);
  }

  v12 = MEMORY[0x1E69E6158];
  v13 = &off_1F2FA8B58;
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v7[2] = v9 + 1;
  sub_1B7AE910C(&v11, &v7[5 * v9 + 4]);
  v10 = sub_1B7AE3B2C(0xD000000000000060, 0x80000001B7D58B00, 0);
  *&v11 = v6;

  sub_1B7AF1A7C(v7, v10, &v11, v10);

  a3(v11, 0);
}

void _IMDChatRecordBulkCopy(uint64_t a1, const void **a2, const void **a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, const void **a14, const void **a15, void *a16, void *a17, void *a18, const void **a19, void *a20, void *a21, void *a22, void *a23, const void **a24, const void **a25, void *a26, const void **a27, const void **a28)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = sub_1B7B56650;
      v77[3] = &unk_1E7CB9030;
      v77[4] = a1;
      v77[5] = a2;
      v77[6] = a3;
      v77[7] = a4;
      v77[8] = a5;
      v77[9] = a6;
      v77[10] = a7;
      v77[11] = a11;
      v77[12] = a10;
      v77[13] = a8;
      v77[14] = a9;
      v77[15] = a12;
      v77[16] = a13;
      v77[17] = a14;
      v77[18] = a15;
      v77[19] = a16;
      v77[20] = a17;
      v77[21] = a18;
      v77[22] = a19;
      v77[23] = a20;
      v77[24] = a21;
      v77[25] = a22;
      v77[26] = a23;
      v77[27] = a24;
      v77[28] = a26;
      v77[29] = a25;
      v77[30] = a27;
      v77[31] = a28;
      _IMDPerformBlock(v77);
    }

    else
    {
      v36 = *(a1 + 24);
      if (v36)
      {
        if (a4)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v36, 3);
          v38 = ValueAtIndex;
          if (ValueAtIndex)
          {
            CFRetain(ValueAtIndex);
          }

          *a4 = v38;
        }

        if (a5)
        {
          v39 = CFArrayGetValueAtIndex(*(a1 + 24), 4);
          v40 = v39;
          if (v39)
          {
            CFRetain(v39);
          }

          *a5 = v40;
        }

        if (a6)
        {
          v41 = CFArrayGetValueAtIndex(*(a1 + 24), 5);
          v42 = v41;
          if (v41)
          {
            CFRetain(v41);
          }

          *a6 = v42;
        }

        if (a7)
        {
          v43 = CFArrayGetValueAtIndex(*(a1 + 24), 6);
          v44 = v43;
          if (v43)
          {
            CFRetain(v43);
          }

          *a7 = v44;
        }

        if (a11)
        {
          v45 = CFArrayGetValueAtIndex(*(a1 + 24), 10);
          v46 = v45;
          if (v45)
          {
            CFRetain(v45);
          }

          *a11 = v46;
        }

        if (a10)
        {
          v47 = CFArrayGetValueAtIndex(*(a1 + 24), 11);
          v48 = v47;
          if (v47)
          {
            CFRetain(v47);
          }

          *a10 = v48;
        }

        if (a8)
        {
          v49 = CFArrayGetValueAtIndex(*(a1 + 24), 0);
          v50 = v49;
          if (v49)
          {
            CFRetain(v49);
          }

          *a8 = v50;
        }

        if (a9)
        {
          v51 = CFArrayGetValueAtIndex(*(a1 + 24), 7);
          v52 = v51;
          if (v51)
          {
            CFRetain(v51);
          }

          *a9 = v52;
        }

        if (a12)
        {
          v53 = CFArrayGetValueAtIndex(*(a1 + 24), 8);
          v54 = v53;
          if (v53)
          {
            CFRetain(v53);
          }

          *a12 = v54;
        }

        if (a13)
        {
          v55 = CFArrayGetValueAtIndex(*(a1 + 24), 12);
          v56 = v55;
          if (v55)
          {
            CFRetain(v55);
          }

          *a13 = v56;
        }

        if (a14)
        {
          *a14 = CFArrayGetValueAtIndex(*(a1 + 24), 9);
        }

        if (a3)
        {
          *a3 = CFArrayGetValueAtIndex(*(a1 + 24), 2);
        }

        if (a2)
        {
          *a2 = CFArrayGetValueAtIndex(*(a1 + 24), 1);
        }

        if (a15)
        {
          *a15 = CFArrayGetValueAtIndex(*(a1 + 24), 13);
        }

        if (a16)
        {
          *a16 = CFArrayGetValueAtIndex(*(a1 + 24), 14);
        }

        if (a17)
        {
          v57 = CFArrayGetValueAtIndex(*(a1 + 24), 15);
          v58 = v57;
          if (v57)
          {
            CFRetain(v57);
          }

          *a17 = v58;
        }

        if (a18)
        {
          v59 = CFArrayGetValueAtIndex(*(a1 + 24), 16);
          v60 = v59;
          if (v59)
          {
            CFRetain(v59);
          }

          *a18 = v60;
        }

        if (a19)
        {
          *a19 = CFArrayGetValueAtIndex(*(a1 + 24), 17);
        }

        if (a20)
        {
          v61 = CFArrayGetValueAtIndex(*(a1 + 24), 18);
          v62 = v61;
          if (v61)
          {
            CFRetain(v61);
          }

          *a20 = v62;
        }

        if (a21)
        {
          v63 = CFArrayGetValueAtIndex(*(a1 + 24), 19);
          if (v63)
          {
            CFNumberGetValue(v63, kCFNumberSInt64Type, a21);
          }
        }

        if (a22)
        {
          v64 = CFArrayGetValueAtIndex(*(a1 + 24), 20);
          v65 = v64;
          if (v64)
          {
            CFRetain(v64);
          }

          *a22 = v65;
        }

        if (a23)
        {
          v66 = CFArrayGetValueAtIndex(*(a1 + 24), 21);
          v67 = v66;
          if (v66)
          {
            CFRetain(v66);
          }

          *a23 = v67;
        }

        if (a24)
        {
          *a24 = CFArrayGetValueAtIndex(*(a1 + 24), 22);
        }

        if (a26)
        {
          v68 = CFArrayGetValueAtIndex(*(a1 + 24), 23);
          if (v68)
          {
            CFNumberGetValue(v68, kCFNumberSInt64Type, a26);
          }
        }

        if (a25)
        {
          *a25 = CFArrayGetValueAtIndex(*(a1 + 24), 24);
        }

        if (a27)
        {
          *a27 = CFArrayGetValueAtIndex(*(a1 + 24), 25);
        }

        if (a28)
        {
          *a28 = CFArrayGetValueAtIndex(*(a1 + 24), 26);
        }
      }
    }
  }

  else
  {
    v28 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF35B8(v28, v29, v30, v31, v32, v33, v34, v35);
    }
  }
}

uint64_t sub_1B7AF0840(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDHandleRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

xpc_object_t sub_1B7AF08C4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7AF0840;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7AF0958(uint64_t a1, const char *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  pthread_rwlock_rdlock(&stru_1EDBE5750);
  v6 = objc_msgSend_objectForKeyedSubscript_(qword_1EDBE5818, v5, v4);
  pthread_rwlock_unlock(&stru_1EDBE5750);
  v7 = NSStringFromSelector(a2);
  v9 = objc_msgSend_objectForKeyedSubscript_(v6, v8, v7);

  v12 = objc_msgSend_intValue(v9, v10, v11);
  return v12;
}

void sub_1B7AF0A50(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 40) + 16));
  if (!v2)
  {
    return;
  }

  v5 = v2;
  v6 = 0;
  for (i = 0; i != 28; ++i)
  {
    v8 = (*(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, v3, v4, v57, v58) + 80) + v6);
    v9 = *v8;
    v10 = v8[1];
    Property = CSDBRecordGetProperty();
    v12 = Property;
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v17 = *(a1 + 32);
        v57 = v12;
        v58 = 0;
        IMInsertDatasToXPCDictionary();
        goto LABEL_16;
      }

      if (v10 != 3)
      {
        goto LABEL_16;
      }

      valuePtr[0] = 0;
      if (Property)
      {
        CFNumberGetValue(Property, kCFNumberSInt64Type, valuePtr);
        v14 = valuePtr[0];
      }

      else
      {
        v14 = 0;
      }

      v15 = *(a1 + 32);
      v16 = v9;
      goto LABEL_15;
    }

    if (!v10)
    {
      v15 = *(a1 + 32);
      v16 = v9;
      v14 = v12;
LABEL_15:
      xpc_dictionary_set_int64(v15, v16, v14);
      goto LABEL_16;
    }

    if (v10 == 1)
    {
      v13 = *(a1 + 32);
      v57 = v12;
      v58 = 0;
      IMInsertNSStringsToXPCDictionary();
    }

LABEL_16:
    v6 += 40;
  }

  if (*(a1 + 56))
  {
    v18 = *(a1 + 48);
    if (v18)
    {
      v62 = 0;
      v63 = &v62;
      v64 = 0x2020000000;
      v65 = 0;
      v19 = *(v18 + 16);
      valuePtr[0] = MEMORY[0x1E69E9820];
      valuePtr[1] = 3221225472;
      valuePtr[2] = sub_1B7B5921C;
      valuePtr[3] = &unk_1E7CB7520;
      valuePtr[4] = &v62;
      valuePtr[5] = v19;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT handle_id FROM chat_handle_join WHERE chat_id = ?", valuePtr);
      v20 = v63[3];
      _Block_object_dispose(&v62, 8);
    }

    else
    {
      v20 = 0;
    }

    v21 = xpc_array_create(0, 0);
    if (v21)
    {
      v24 = v21;
      v25 = objc_msgSend_count(v20, v22, v23);
      if (v25 >= 1)
      {
        v27 = 0;
        v28 = v25 & 0x7FFFFFFF;
        do
        {
          v29 = objc_msgSend_objectAtIndex_(v20, v26, v27, v57, v58);
          v30 = xpc_dictionary_create(0, 0, 0);
          if (v30)
          {
            v31 = v30;
            _IMDHandleRecordBulkCopyXPCDictionary(v29, v30, 0);
            xpc_array_append_value(v24, v31);
            xpc_release(v31);
          }

          ++v27;
        }

        while (v28 != v27);
      }

      v32 = *(a1 + 32);
      if (v32)
      {
        xpc_dictionary_set_value(v32, "handles_cache", v24);
      }

      xpc_release(v24);
    }

    if (v20)
    {
      CFRelease(v20);
    }
  }

  if (*(a1 + 57))
  {
    Message = IMDChatRecordCopyLastMessage(*(a1 + 40));
    if (Message)
    {
      v34 = Message;
      v35 = xpc_dictionary_create(0, 0, 0);
      if (v35)
      {
        v36 = v35;
        _IMDMessageRecordBulkCopyXPCDictionary(v34, v35, 1, 1);
        v37 = *(a1 + 32);
        if (v37)
        {
          xpc_dictionary_set_value(v37, "last_message_cache", v36);
        }

        xpc_release(v36);
      }

      CFRelease(v34);
    }
  }

  if (*(a1 + 58))
  {
    v38 = IMDMessageRecordCountAllUnreadMessagesForChatRowIDUnlocked(*(*(a1 + 40) + 16));
  }

  else
  {
    v38 = -1;
  }

  xpc_dictionary_set_int64(*(a1 + 32), "unread_count_cache", v38);
  v41 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v39, v40);
  if (objc_msgSend_isMissingMessagesEnabled(v41, v42, v43))
  {
    v46 = objc_msgSend_guid(*(a1 + 40), v44, v45);
    if (v46)
    {
      v47 = v46;
      v48 = objc_msgSend_synchronousDatabase(IMDDatabase, v44, v45);
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = sub_1B7AEFC70;
      v60[3] = &unk_1E7CB90C0;
      v60[4] = *(a1 + 32);
      v60[5] = v47;
      objc_msgSend_fetchIdentifiersForChatRecordWithGUID_completionHandler_(v48, v49, v47, v60);
    }
  }

  v50 = objc_msgSend_guid(*(a1 + 40), v44, v45, v57, v58);
  if (v50)
  {
    v53 = v50;
    v54 = objc_msgSend_synchronousDatabase(IMDDatabase, v51, v52);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = sub_1B7B57E90;
    v59[3] = &unk_1E7CB90E8;
    v55 = *(a1 + 32);
    v59[4] = v53;
    v59[5] = v55;
    objc_msgSend_fetchServicesForChatWithGUID_completionHandler_(v54, v56, v53, v59);
  }

  xpc_dictionary_set_int64(*(a1 + 32), "recordIdentifier", *(*(a1 + 48) + 16));
  CFRelease(v5);
}

void sub_1B7AF0E98(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__copyUpdatedRecord(*(a1 + 32), a2, a3);
  if (v4)
  {
    v6 = v4;
    objc_msgSend__propertyIDForProperty_(*(a1 + 32), v5, *(a1 + 48));
    *(*(*(a1 + 40) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v6);
  }
}

uint64_t IMDChatRecordCopyChatRecordUnlocked(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7AEB3E4;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7AF0FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7AF0FF4()
{
  sqlite3_finalize(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1B7AF102C()
{
  if (*(v0 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) == 1)
  {
    sqlite3_close_v2(v0[2]);
  }

  sub_1B7AE3F08(v0 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
  v2 = *(v0 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
  v1 = *(v0 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString + 8);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

unint64_t sub_1B7AF1238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA521B8, &qword_1B7D0B330);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B7AE11D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B7AF133C(uint64_t a1, const char *a2, uint64_t a3)
{
  *(a1 + 16) = -1;
  if (*(a1 + 24))
  {
    v4 = 0;
    for (i = 16; i != 3736; i += 40)
    {
      v6 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + i);
      if (CFArrayGetValueAtIndex(*(a1 + 24), v4))
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        v8 = *(v6 + 8);
        if (v8)
        {
          v8();
        }
      }

      ++v4;
    }

    v9 = *(a1 + 24);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 24) = 0;
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 32) = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 40) = 0;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 48) = 0;
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 56) = 0;
  }
}

uint64_t _IMDCopyIMDMessageRecordFromXPCObjectClient(void *a1)
{
  if (xpc_dictionary_get_count(a1) < 3)
  {
    return 0;
  }

  pthread_once(&stru_1EDBE5A60, sub_1B7B346D4);
  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (!Instance)
  {
    return v2;
  }

  *(Instance + 16) = 0u;
  v4 = (Instance + 16);
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  if (*(Instance + 24))
  {
    goto LABEL_40;
  }

  v31 = (Instance + 16);
  v5 = 93;
  Mutable = CFArrayCreateMutable(0, 93, 0);
  do
  {
    CFArrayAppendValue(Mutable, 0);
    --v5;
  }

  while (v5);
  int64 = xpc_dictionary_get_int64(a1, "flags");
  v9 = 0;
  for (i = 0; i != 93; ++i)
  {
    v11 = 0;
    v12 = (*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, v7, v8, v31) + 80) + v9);
    v14 = *v12;
    v13 = v12[1];
    v15 = v12[2];
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v21 = *v12;
        v18 = IMGetXPCDataFromDictionary();
        goto LABEL_19;
      }

      v16 = 0;
      if (v13 == 3)
      {
        v19 = *v12;
        valuePtr = IMGetXPCIntFromDictionary();
        v11 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
        v16 = v11;
      }
    }

    else
    {
      if (!v13)
      {
        v20 = sub_1B7AE64DC(i);
        if (v20)
        {
          v11 = (v20 & int64) != 0;
LABEL_20:
          v16 = 0;
          goto LABEL_21;
        }

        v18 = IMGetXPCIntFromDictionary();
LABEL_19:
        v11 = v18;
        goto LABEL_20;
      }

      v16 = 0;
      if (v13 == 1)
      {
        v17 = *v12;
        v18 = IMGetXPCStringFromDictionary();
        goto LABEL_19;
      }
    }

LABEL_21:
    if (CFArrayGetValueAtIndex(Mutable, i))
    {
      if (v15)
      {
        v22 = *(v15 + 8);
        if (v22)
        {
          v22();
        }
      }
    }

    if (v11 && v15 && *v15)
    {
      v11 = (*v15)(v11);
    }

    CFArraySetValueAtIndex(Mutable, i, v11);
    if (v16)
    {
      CFRelease(v16);
    }

    v9 += 40;
  }

  *(v2 + 24) = Mutable;
  value = xpc_dictionary_get_value(a1, "attachments_cache");
  v4 = v31;
  if (value)
  {
    v24 = value;
    if (!*(v2 + 48))
    {
      *(v2 + 48) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    }

    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B38A64;
    applier[3] = &unk_1E7CB8278;
    applier[4] = v2;
    xpc_array_apply(v24, applier);
  }

  v25 = xpc_dictionary_get_value(a1, "handle_cache");
  if (v25)
  {
    *(v2 + 32) = _IMDCopyIMDHandleRecordFromXPCObjectClient(v25);
  }

  v26 = xpc_dictionary_get_value(a1, "other_handle_cache");
  if (v26)
  {
    *(v2 + 40) = _IMDCopyIMDHandleRecordFromXPCObjectClient(v26);
  }

LABEL_40:
  v27 = xpc_dictionary_get_value(a1, "threadCountsByPart");
  ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 24), 0);
  valuePtr = 0;
  p_valuePtr = &valuePtr;
  v37 = 0x3052000000;
  v38 = sub_1B7AE1944;
  v39 = sub_1B7AE24A4;
  v40 = 0;
  if (v27 && ValueAtIndex)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1B7B38ACC;
    v34[3] = &unk_1E7CB82A0;
    v34[4] = &valuePtr;
    xpc_dictionary_apply(v27, v34);
    v29 = *(v2 + 56);
    if (v29)
    {
      CFRelease(v29);
      *(v2 + 56) = 0;
    }

    *(v2 + 56) = p_valuePtr[5];
  }

  _Block_object_dispose(&valuePtr, 8);
  *v4 = xpc_dictionary_get_int64(a1, "recordIdentifier");
  return v2;
}

void sub_1B7AF1814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *sub_1B7AF182C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B7AF1938(uint64_t *a1, uint64_t a2)
{
  off_1F2FA8B70(*(a2 + 16), 0, v12);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = v2;
    *(v4 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v6 = v12[0];
    v7 = v12[1];
    v8 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v8;
    if ((result & 1) == 0)
    {
      result = sub_1B7AF182C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
      *a1 = result;
    }

    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_1B7AF182C((v9 > 1), v10 + 1, 1, v8);
      v8 = result;
      *a1 = result;
    }

    *(v8 + 16) = v10 + 1;
    v11 = v8 + 16 * v10;
    *(v11 + 32) = v6;
    *(v11 + 40) = v7;
  }

  return result;
}

uint64_t sub_1B7AF1AA8@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  result = sqlite3_column_text(a1, a2);
  if (result)
  {
    result = sub_1B7CFEB80();
    *a3 = result;
    a3[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7AF1AE4(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCreateFromRecordID(0, a1[6]);
  if (v2)
  {
    v3 = v2;
    v4 = IMDMessageRecordCopyChats(v2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = a1[6];
        v23 = 134218240;
        v24 = v8;
        v25 = 2048;
        v26 = objc_msgSend_count(v4, v6, v7);
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copy chats from message ID: %lld  (Results: %lu)", &v23, 0x16u);
      }
    }

    v11 = xpc_array_create(0, 0);
    if (v11)
    {
      v12 = objc_msgSend_count(v4, v9, v10);
      if (v12 >= 1)
      {
        v14 = 0;
        v15 = v12 & 0x7FFFFFFF;
        do
        {
          v16 = objc_msgSend_objectAtIndex_(v4, v13, v14);
          v17 = xpc_dictionary_create(0, 0, 0);
          if (v17)
          {
            _IMDChatRecordBulkCopyXPCDictionary(v16, v17, 0, 0, 0, 1);
            xpc_array_append_value(v11, v17);
            xpc_release(v17);
          }

          ++v14;
        }

        while (v15 != v14);
      }

      v18 = a1[4];
      if (v18)
      {
        xpc_dictionary_set_value(v18, "array_result", v11);
      }

      xpc_release(v11);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(v3);
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = a1[6];
      v23 = 134217984;
      v24 = v20;
      _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Tried to copy chats from message ID: %lld, but no message found", &v23, 0xCu);
    }
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7AF1D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B7CFECC0();
  if (a2)
  {
    v6 = sub_1B7CFDEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1B7AF1DDC(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessageForGUID(*(a1 + 32));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v10 = 138412546;
        v11 = v5;
        v12 = 2112;
        v13 = v2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy message for guid: %@   (Result: %@)", &v10, 0x16u);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v2, *(a1 + 40), 1, 0);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to copy message for guid: %@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7AF1F70(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDMessageRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

const void *IMDMessageRecordCreateFromRecordID(uint64_t a1, uint64_t a2)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {

    return IMDMessageRecordCreateFromRecordIDWithLock(a1, a2, 1);
  }

  else
  {

    return IMDMessageRecordCopyMessageForRowID(a2);
  }
}

uint64_t IMDMessageRecordCopyMessageRecord(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7AF20CC;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7AF20B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7AF20CC(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7AEAEE4(a1, a2, a3);
  v4 = *(a1 + 40);
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void _IMDChatRecordBulkCopyXPCDictionary(uint64_t a1, uint64_t a2, char a3, char a4, char a5, int a6)
{
  if (a2)
  {
    if (a1)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1B7AF0A50;
      v22[3] = &unk_1E7CB9110;
      v22[4] = a2;
      v22[5] = a1;
      v23 = a3;
      v22[6] = a1;
      v24 = a5;
      v25 = a4;
      if (a6)
      {
        _IMDPerformBlock(v22);
      }

      else
      {
        sub_1B7AF0A50(v22);
      }
    }

    else
    {
      v14 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF3B60(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  else
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3BD8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

const __CFString *IMDMessageRecordCopyLastReadMessageForChatIdentifier(const __CFString *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyLastReadMessageForChatGUID [%@]", &buf, 0xCu);
    }
  }

  if (a1)
  {
    if (CFStringGetLength(a1))
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v8 = 0x2020000000;
      v9 = 0;
      if (IMDIsRunningInDatabaseServerProcess())
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = sub_1B7AF2510;
        v6[3] = &unk_1E7CB7520;
        v6[4] = &buf;
        v6[5] = a1;
        _IMDPerformLockedStatementBlockWithQuery(@"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m INNER JOIN chat_message_join j ON m.ROWID = j.message_id INNER JOIN chat c ON c.ROWID = j.chat_id WHERE c.chat_identifier = ? AND m.item_type = 0 AND m.is_system_message = 0 AND m.is_read == 1 AND is_from_me == 0 AND is_finished == 1 ORDER BY m.date DESC LIMIT 1", v6);
      }

      else
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = sub_1B7AF2760;
        v5[3] = &unk_1E7CB6838;
        v5[4] = &buf;
        __syncXPCIMDMessageRecordCopyLastReadMessageForChatIdentifier_IPCAction(v5, a1);
      }

      a1 = *(*(&buf + 1) + 24);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      a1 = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void __syncXPCIMDMessageRecordCopyLastReadMessageForChatIdentifier_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 151);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __XPCServerIMDMessageRecordCopyLastReadMessageForChatIdentifier_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7AF25CC;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

void sub_1B7AF2510(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6))
    {
      CFArrayGetValueAtIndex(v7, 0);
      ID = CSDBRecordGetID();
      *(*(*(a1 + 32) + 8) + 24) = IMDMessageRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
    }

    CFRelease(v7);
  }
}

void sub_1B7AF25CC(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  MessageForChatIdentifier = IMDMessageRecordCopyLastReadMessageForChatIdentifier(*(a1 + 32));
  v3 = IMOSLoggingEnabled();
  if (MessageForChatIdentifier)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v10 = 138412546;
        v11 = v5;
        v12 = 2112;
        v13 = MessageForChatIdentifier;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy last read message for chat identifier: %@   (Result: %@)", &v10, 0x16u);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(MessageForChatIdentifier, *(a1 + 40), 1, 0);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to copy last read message for chat identifier: %@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }

  if (MessageForChatIdentifier)
  {
    CFRelease(MessageForChatIdentifier);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7AF2760(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDMessageRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7AF27BC()
{
  result = IMGetCachedDomainBoolForKeyWithDefaultValue();
  byte_1EBA53BA0 = result;
  return result;
}

uint64_t IMDHandleRecordCopyID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFC84(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  v2 = *(a2 + 24);
  if (!v2)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7B3958C;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
  if (!ValueAtIndex)
  {
    return ValueAtIndex;
  }

  v4 = *MEMORY[0x1E69990F8];
  if (!*MEMORY[0x1E69990F8])
  {
    return ValueAtIndex;
  }

  return v4();
}

void sub_1B7AF2910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7AF2928()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA5DA50);
  sub_1B7AD9040(v0, qword_1EBA5DA50);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

void __syncXPCIMDChatRecordCopyHandles_IPCAction(uint64_t a1, int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 112);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "chatRowID", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}