uint64_t IDSQRProtoH3EndToEndChannelUnRegisterE2EChannelUnRegisterReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoH3EndToEndChannelRegisterResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0xAAAAAAAAAAAAAAAALL;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfoReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7C0AC44(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = sub_1A7C0ACB4;
  v1[3] = &unk_1E77E0138;
  v1[4] = *(a1 + 32);
  IDSTransportThreadAddBlock(v1);
}

void sub_1A7C0B420(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = sub_1A7C0B490;
  v1[3] = &unk_1E77E0138;
  v1[4] = *(a1 + 32);
  IDSTransportThreadAddBlock(v1);
}

uint64_t IDSQRProtoDiagnosticIndicationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v27;
          }

LABEL_52:
          *(a1 + 32) = v31;
        }

        else
        {
          if (v13 != 15)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_53;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_48:
          *(a1 + 8) = v22;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v24 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_53:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id IDSIDAliasHashUUIDString(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  memset(uu, 170, sizeof(uu));
  if (uuid_parse([a1 UTF8String], uu))
  {
    v4 = 0;
  }

  else
  {
    *&v8.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v8.wbuf[6] = v5;
    *&v8.wbuf[10] = v5;
    *&v8.hash[6] = v5;
    *&v8.wbuf[2] = v5;
    *v8.count = v5;
    *&v8.hash[2] = v5;
    *md = v5;
    v11 = v5;
    CC_SHA256_Init(&v8);
    CC_SHA256_Update(&v8, uu, 0x10u);
    CC_SHA256_Update(&v8, [v3 bytes], objc_msgSend(v3, "length"));
    CC_SHA256_Final(md, &v8);
    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v6;
    *&out[16] = v6;
    uuid_unparse_upper(md, out);
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
  }

  return v4;
}

unint64_t IDSIDAliasHashUInt64(unint64_t a1, void *a2)
{
  data[1] = *MEMORY[0x1E69E9840];
  data[0] = bswap64(a1);
  *&v8.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v8.wbuf[6] = v2;
  *&v8.wbuf[10] = v2;
  *&v8.hash[6] = v2;
  *&v8.wbuf[2] = v2;
  *v8.count = v2;
  *&v8.hash[2] = v2;
  *md = v2;
  v10 = v2;
  v3 = a2;
  CC_SHA256_Init(&v8);
  CC_SHA256_Update(&v8, data, 8u);
  v4 = v3;
  v5 = [v4 bytes];
  v6 = [v3 length];

  CC_SHA256_Update(&v8, v5, v6);
  CC_SHA256_Final(md, &v8);
  return bswap64(*md);
}

id IDSIDAliasFixedSalt()
{
  if (qword_1EB2BBF58 != -1)
  {
    sub_1A7E1B664();
  }

  v1 = qword_1EB2BBF60;

  return v1;
}

void sub_1A7C0C784()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0x807060504030201;
  v0 = [MEMORY[0x1E695DEF0] dataWithBytes:v2 length:8];
  v1 = qword_1EB2BBF60;
  qword_1EB2BBF60 = v0;
}

uint64_t sub_1A7C0D640(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void sub_1A7C0D930(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v5 first];
  v7 = [v5 second];

  (*(v4 + 16))(v4, v8, v7, v6);
}

uint64_t IDSQRProtoGetMaterialGetMaterialReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7C0DDA0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_1A7C0E03C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_1A7C0E0D4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_1A7C0E614(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A7C0E6FC;
  v12[3] = &unk_1E77E1848;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void sub_1A7C0E6FC(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 4);
  if (a1[4])
  {
    v3 = [objc_opt_class() isItemNotFoundError:a1[4]];
    v4 = +[IDSFoundationLog accountIdentity];
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "Record not found -- Done", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1B700(v2, v5, v16, v17, v18, v19, v20, v21);
    }

    v22 = *(a1[7] + 16);
LABEL_15:
    v22();
    return;
  }

  v6 = a1[6];
  v7 = +[IDSFoundationLog accountIdentity];
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1B770(v8);
    }

    v22 = *(a1[7] + 16);
    goto LABEL_15;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = a1[6];
    *buf = 138543362;
    v26 = v9;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_INFO, "Found record {record: %{public}@}", buf, 0xCu);
  }

  v10 = a1[5];
  v11 = a1[6];
  v24 = 0;
  v12 = [v10 _itemFromRecord:v11 error:&v24];
  v13 = v24;
  v14 = +[IDSFoundationLog accountIdentity];
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v26 = v12;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_INFO, "Constructed item -- Done {item: %{public}@}", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v23 = a1[6];
    *buf = 138543618;
    v26 = v23;
    v27 = 2114;
    v28 = v13;
    _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "Failed to construct item -- Fail {record: %{public}@, itemError: %{public}@}", buf, 0x16u);
  }

  (*(a1[7] + 16))();
}

void sub_1A7C0EAD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A7C0EB98;
  v8[3] = &unk_1E77DD0F0;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

void sub_1A7C0EE00(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [a1[4] queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A7C0EEF0;
  v8[3] = &unk_1E77E1848;
  v9 = v5;
  v10 = a1[5];
  v12 = a1[7];
  v11 = a1[6];
  v7 = v5;
  dispatch_async(v6, v8);
}

uint64_t sub_1A7C0EEF0(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4;
  v3 = a1[4];
  v4 = +[IDSFoundationLog accountIdentity];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1B91C(a1, v2, v5);
    }

    v6 = *(a1[7] + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_INFO, "Stored account identity item {item: %{public}@}", &v9, 0xCu);
    }

    v6 = *(a1[7] + 16);
  }

  return v6();
}

uint64_t IDSQRProtoH3EndToEndChannelUnRegisterRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoParticipantStatusMapEntryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v35[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35[0] & 0x7F) << v5;
        if ((v35[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        if ((v12 & 7) == 2)
        {
          v35[0] = 0xAAAAAAAAAAAAAAAALL;
          v35[1] = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v21 = [a2 position];
            if (v21 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              v36 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v36 & 0x7F) << v22;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                goto LABEL_42;
              }
            }

            [a2 hasError];
LABEL_42:
            PBRepeatedUInt64Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v35[0]) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v35[0] & 0x7F) << v28;
            if ((v35[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              goto LABEL_60;
            }
          }

          [a2 hasError];
LABEL_60:
          PBRepeatedUInt64Add();
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v35[0] & 0x7F) << v13;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_48:
        *(a1 + 32) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoH3EndToEndChannelRegisterIndicationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v22 = PBReaderReadData();
        v23 = 24;
LABEL_38:
        v24 = *(a1 + v23);
        *(a1 + v23) = v22;

        goto LABEL_43;
      }

      if (v13 != 2)
      {
        goto LABEL_34;
      }

      v14 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo);
      objc_storeStrong((a1 + 16), v14);
      v27[0] = 0xAAAAAAAAAAAAAAAALL;
      v27[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfoReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v22 = PBReaderReadData();
      v23 = 32;
      goto LABEL_38;
    }

    if (v13 == 4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v27[0] & 0x7F) << v15;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_42;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_42:
      *(a1 + 8) = v21;
      goto LABEL_43;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

BOOL sub_1A7C11AEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  if (v2 == *(a2 + 1))
  {
    if (v2 == 2)
    {
      if (*(a1 + 4) == *(a2 + 4))
      {
        return *(a1 + 2) == *(a2 + 2);
      }
    }

    else if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
    {
      return *(a1 + 2) == *(a2 + 2);
    }
  }

  return 0;
}

uint64_t sub_1A7C11D88(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 30)
  {
    v10 = *(a1 + 12);
    v11 = *(a1 + 16);
    v12 = (*(a1 + 8) - v11) ^ __ROR4__(v11, 28);
    v13 = v11 + v10;
    v14 = (v10 - v12) ^ __ROR4__(v12, 26);
    v15 = v12 + v13;
    v16 = (v13 - v14) ^ __ROR4__(v14, 24);
    v17 = v14 + v15;
    v18 = (v15 - v16) ^ __ROR4__(v16, 16);
    v19 = v16 + v17;
    v20 = (v17 - v18) ^ __ROR4__(v18, 13);
    v21 = v18 + v19;
    v22 = v21 + *(a1 + 20);
    v23 = v21 + *(a1 + 2) + v20;
    HIDWORD(v24) = v23;
    LODWORD(v24) = v23;
    v25 = ((v19 - v20) ^ __ROR4__(v20, 28) ^ v23) - (v24 >> 18);
    HIDWORD(v24) = v25;
    LODWORD(v24) = v25;
    v26 = (v25 ^ v22) - (v24 >> 21);
    HIDWORD(v24) = v26;
    LODWORD(v24) = v26;
    v27 = (v26 ^ v23) - (v24 >> 7);
    HIDWORD(v24) = v27;
    LODWORD(v24) = v27;
    v28 = (v27 ^ v25) - (v24 >> 16);
    HIDWORD(v24) = v28;
    LODWORD(v24) = v28;
    HIDWORD(v24) = (v28 ^ v26) - (v24 >> 28);
    LODWORD(v24) = HIDWORD(v24);
    v8 = (HIDWORD(v24) ^ v27) - (v24 >> 18);
    v9 = v8 ^ v28;
    goto LABEL_5;
  }

  if (v1 == 2)
  {
    v2 = *(a1 + 2);
    v3 = -16383 * v2;
    v4 = 33552384 * v2 - ((-16383 * v2) >> 21) + ((-16383 * v2) ^ *(a1 + 4));
    HIDWORD(v5) = v4;
    LODWORD(v5) = v4;
    v6 = (v4 ^ v2) - (v5 >> 7);
    HIDWORD(v5) = v6;
    LODWORD(v5) = v6;
    v7 = (v6 ^ v3) - (v5 >> 16);
    HIDWORD(v5) = v7;
    LODWORD(v5) = v7;
    HIDWORD(v5) = (v7 ^ v4) - (v5 >> 28);
    LODWORD(v5) = HIDWORD(v5);
    v8 = (HIDWORD(v5) ^ v6) - (v5 >> 18);
    v9 = v8 ^ v7;
LABEL_5:
    HIDWORD(v29) = v8;
    LODWORD(v29) = v8;
    return v9 - (v29 >> 8);
  }

  return 0xFFFFFFFFLL;
}

uint64_t IDSAssignIdentityValuesToMessage(void *a1, __SecIdentity *a2)
{
  v3 = a1;
  v4 = IDSCopyPrivateKeyFromIdentity(a2);
  v5 = IDSCopyCertificateKeyFromIdentity(a2);
  if (v4)
  {
    [v3 setPushPrivateKey:v4];
  }

  if (v5)
  {
    [v3 setPushCertificate:v5];
  }

  if (v4)
  {
    CFRelease(v4);
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;

  return v7;
}

SecKeyRef IDSCopyPrivateKeyFromIdentity(__SecIdentity *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  privateKeyRef = 0;
  if (!a1)
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "  Missing push identity";
      v5 = v3;
      v6 = 2;
      goto LABEL_7;
    }

LABEL_8:

    return privateKeyRef;
  }

  v1 = SecIdentityCopyPrivateKey(a1, &privateKeyRef);
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v2;
      v4 = "Failed to copy private key: %d";
      v5 = v3;
      v6 = 8;
LABEL_7:
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, v4, buf, v6);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  return privateKeyRef;
}

CFDataRef IDSCopyCertificateKeyFromIdentity(__SecIdentity *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  certificateRef = 0;
  if (a1)
  {
    v1 = SecIdentityCopyCertificate(a1, &certificateRef);
    if (!v1 && certificateRef)
    {
      v2 = SecCertificateCopyData(certificateRef);
      goto LABEL_11;
    }

    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v1;
      v4 = "Failed to copy certificate: %d";
      v5 = v3;
      v6 = 8;
      goto LABEL_9;
    }
  }

  else
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "  Missing push identity";
      v5 = v3;
      v6 = 2;
LABEL_9:
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, v4, buf, v6);
    }
  }

  v2 = 0;
LABEL_11:
  if (certificateRef)
  {
    CFRelease(certificateRef);
    certificateRef = 0;
  }

  return v2;
}

id IDSParseDERCertificatesFromChain(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  if (![v1 length])
  {
    v8 = v2;
    goto LABEL_12;
  }

  if ([v1 length])
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = [v1 subdataWithRange:{v3, v4 - v3}];
      v6 = SecCertificateCreateWithData(0, v5);
      if (v6)
      {
        CFRelease(v6);
        [v2 addObject:v5];
        v3 = v4;
      }
    }

    while (v4++ < [v1 length]);
  }

  if (![v1 length] || objc_msgSend(v2, "count"))
  {
    v8 = [v2 copy];
LABEL_12:
    v9 = v8;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

uint64_t IDSQRProtoH3EndToEndChannelRegisterAckResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

id _IDSIDProtocolVersionNumber()
{
  if (os_variant_allows_internal_security_policies() && (v0 = IMGetDomainIntForKey(), v0 >= 1))
  {
    v1 = [MEMORY[0x1E696AD98] numberWithInteger:v0];
  }

  else
  {
    v1 = &unk_1F1B201B0;
  }

  return v1;
}

void *_IDSStorageCheckVersionNumber()
{
  v0 = &unk_1F1B20228;
  if (_os_feature_enabled_impl())
  {
    v1 = [IDSServerBag sharedInstanceForBagType:1];
    v2 = [v1 objectForKey:@"ids-enable-coming-online-enhancement-percentage"];

    if (v2)
    {
      objc_opt_class();
      v0 = &unk_1F1B20210;
      if (objc_opt_isKindOfClass())
      {
        v3 = [v2 unsignedIntegerValue];
        v4 = [MEMORY[0x1E69A6180] comingOnlineEnabledDiceRoll];
        if (!v4)
        {
          v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random_uniform(0x64u)];
          [MEMORY[0x1E69A6180] setComingOnlineEnabledDiceRoll:v4];
        }

        if (v3 <= [v4 unsignedIntValue])
        {
          v0 = &unk_1F1B20228;
        }
      }
    }

    else
    {
      v0 = &unk_1F1B20210;
    }
  }

  return v0;
}

void sub_1A7C1602C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state, char a17)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1A7C1605C(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[IDSFoundationLog cloudKit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1BDB4();
    }

    v8 = [*(a1 + 32) queue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A7C16390;
    v21[3] = &unk_1E77DD0F0;
    v23 = *(a1 + 40);
    v22 = v6;
    dispatch_async(v8, v21);

    v9 = v23;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [v11 objectForKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
          v17 = [objc_opt_class() _messageFromRecord:v16];
          if (v17)
          {
            [v10 addObject:v17];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    v18 = +[IDSFoundationLog cloudKit];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_INFO, "Fetched hard-coded messages", buf, 2u);
    }

    v19 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7C16370;
    block[3] = &unk_1E77DD0F0;
    v20 = *(a1 + 40);
    v25 = v10;
    v26 = v20;
    v9 = v10;
    dispatch_async(v19, block);
  }
}

void sub_1A7C16570(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = +[IDSFoundationLog cloudKit];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1BE1C();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v17 = v6;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_INFO, "TransportRecordZone - Create - Done {createdZones: %{private}@}", buf, 0xCu);
  }

  v10 = [*(a1 + 32) queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A7C166E8;
  v13[3] = &unk_1E77DD0F0;
  v11 = *(a1 + 40);
  v14 = v7;
  v15 = v11;
  v12 = v7;
  dispatch_async(v10, v13);
}

void sub_1A7C16898(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog cloudKit];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1BE84();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v17 = v6;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_INFO, "TransportRecordZone - Create - Done {deletedZones: %{private}@}", buf, 0xCu);
  }

  v10 = [*(a1 + 32) queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A7C16A10;
  v13[3] = &unk_1E77DD0F0;
  v11 = *(a1 + 40);
  v14 = v7;
  v15 = v11;
  v12 = v7;
  dispatch_async(v10, v13);
}

void sub_1A7C16DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_activity_scope_state_s state, char a24)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1A7C16E08(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [objc_opt_class() _messageFromRecord:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
    v4 = v5;
  }
}

void sub_1A7C16E88(id *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v11 = +[IDSFoundationLog cloudKit];
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1BEEC();
    }

    v13 = [a1[4] queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7C1716C;
    block[3] = &unk_1E77DD0F0;
    v28 = a1[6];
    v27 = v10;
    dispatch_async(v13, block);

    v14 = v28;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1[5], "count")}];
      *buf = 138412290;
      v30 = v15;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "!setState messages.count=%@", buf, 0xCu);
    }

    v16 = +[IDSFoundationLog cloudKit];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithBool:a5];
      *buf = 138412290;
      v30 = v17;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "!setState moreComing=%@", buf, 0xCu);
    }

    v18 = [[IDSCloudKitTransportLogChangeToken alloc] initWithCKToken:v9];
    v19 = [a1[4] queue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A7C1718C;
    v21[3] = &unk_1E77E19B8;
    v24 = a1[6];
    v20 = a1[5];
    v25 = a5;
    v22 = v20;
    v23 = v18;
    v14 = v18;
    dispatch_async(v19, v21);
  }
}

void sub_1A7C179E0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_1A7C18AA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = objc_alloc(MEMORY[0x1E695DEF0]);
  v8 = [v6 bytes];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A7C18B8C;
  v12[3] = &unk_1E77E1A08;
  v13 = v6;
  v9 = v6;
  v10 = [v7 initWithBytesNoCopy:v8 + a3 length:a4 deallocator:v12];

  return v10;
}

id sub_1A7C1CCBC(void *a1)
{
  v1 = sub_1A7C22174(a1);
  v2 = MEMORY[0x1E696AEC0];
  v3 = MEMORY[0x1E695DEC8];
  v4 = NSHomeDirectory();
  v5 = [v3 arrayWithObjects:{v4, @"/Library/IdentityServices/incomingfiles/", v1, 0}];
  v6 = [v2 pathWithComponents:v5];

  return v6;
}

void sub_1A7C1F6A4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7C1F5ECLL);
  }

  _Unwind_Resume(a1);
}

id sub_1A7C22174(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v1];
  v3 = [v2 UUIDString];
  if (!v3)
  {
    v4 = [v1 lastPathComponent];
    v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"];
    v6 = [v5 invertedSet];

    v7 = [v4 componentsSeparatedByCharactersInSet:v6];
    v3 = [v7 componentsJoinedByString:&stru_1F1AC8480];
  }

  return v3;
}

id formattedBytes(unint64_t a1)
{
  if (a1 >> 5 > 0xC34)
  {
    if (a1 > 0x9C3DFF)
    {
      if (a1 >> 22 > 0x18)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%4llu M", (a1 + 0x80000) >> 20];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%4.1f M", vcvtd_n_f64_u64(a1, 0x14uLL)];
      }
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%4llu K", (a1 + 512) >> 10];
    }
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%5llu ", a1];
  }
  v1 = ;

  return v1;
}

id formattedSpeed(unint64_t a1)
{
  if (a1 >> 5 > 0xC34)
  {
    if (a1 > 0x98948B)
    {
      if (a1 > 0x5F5E0FF)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%4llu M", (a1 + 500000) / 0xF4240];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%4.1f M", a1 / 1000000.0];
      }
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%4llu k", (a1 + 500) / 0x3E8uLL];
    }
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%5llu ", a1];
  }
  v1 = ;

  return v1;
}

void *sub_1A7C226B4(uint64_t a1, uint64_t a2)
{
  result = malloc_type_malloc(a1 + a2 + 40, 0x10100401E3B4EAAuLL);
  if (result)
  {
    v5 = result + a2 + 40;
    *result = v5;
    result[1] = v5 + a1;
    result[2] = v5;
    result[3] = v5;
    result[4] = a2;
  }

  return result;
}

void sub_1A7C22710(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void *sub_1A7C2271C(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  if (result < v3)
  {
    v4 = *(a1 + 24) - v3;
    result = memmove(result, v3, v4);
    v5 = *a1 + v4;
    *(a1 + 16) = *a1;
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t IDSQRProtoH3MessageReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v21) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v21 & 0x7F) << v6;
      if ((v21 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
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
      case 0u:
        v14 = 0;
        while (1)
        {
          LOBYTE(v21) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            v17 = [a2 data];
            [v17 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v21 & 0x80000000) == 0)
          {
            break;
          }

          if (v14++ > 8)
          {
            goto LABEL_148;
          }
        }

        [a2 hasError];
        goto LABEL_148;
      case 1u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 1;
        v19 = objc_alloc_init(IDSQRProtoAllocBindRequest);
        objc_storeStrong((a1 + 8), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoAllocBindRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 2u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 2;
        v19 = objc_alloc_init(IDSQRProtoAllocBindResponse);
        objc_storeStrong((a1 + 16), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoAllocBindResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 3u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 3;
        v19 = objc_alloc_init(IDSQRProtoDiagnosticIndication);
        objc_storeStrong((a1 + 56), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoDiagnosticIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 4u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 4;
        v19 = objc_alloc_init(IDSQRProtoGoAwayIndication);
        objc_storeStrong((a1 + 88), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoGoAwayIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 5u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 5;
        v19 = objc_alloc_init(IDSQRProtoInfoRequest);
        objc_storeStrong((a1 + 96), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoInfoRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 6u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 6;
        v19 = objc_alloc_init(IDSQRProtoInfoResponse);
        objc_storeStrong((a1 + 104), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoInfoResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 7u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 7;
        v19 = objc_alloc_init(IDSQRProtoParticipantUpdateRequest);
        objc_storeStrong((a1 + 128), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoParticipantUpdateRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 8u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 8;
        v19 = objc_alloc_init(IDSQRProtoParticipantUpdateResponse);
        objc_storeStrong((a1 + 136), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoParticipantUpdateResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 9u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 9;
        v19 = objc_alloc_init(IDSQRProtoParticipantUpdateIndication);
        objc_storeStrong((a1 + 120), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoParticipantUpdateIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0xAu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 10;
        v19 = objc_alloc_init(IDSQRProtoPluginControlRequest);
        objc_storeStrong((a1 + 152), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoPluginControlRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0xBu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 11;
        v19 = objc_alloc_init(IDSQRProtoPluginControlResponse);
        objc_storeStrong((a1 + 160), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoPluginControlResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0xCu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 12;
        v19 = objc_alloc_init(IDSQRProtoPluginControlIndication);
        objc_storeStrong((a1 + 144), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoPluginControlIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0xDu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 13;
        v19 = objc_alloc_init(IDSQRProtoErrorIndication);
        objc_storeStrong((a1 + 64), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoErrorIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0xEu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 14;
        v19 = objc_alloc_init(IDSQRProtoReallocateIndication);
        objc_storeStrong((a1 + 192), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoReallocateIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0xFu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 15;
        v19 = objc_alloc_init(IDSQRProtoSessionInfoRequest);
        objc_storeStrong((a1 + 248), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoSessionInfoRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x10u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 16;
        v19 = objc_alloc_init(IDSQRProtoSessionInfoResponse);
        objc_storeStrong((a1 + 256), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoSessionInfoResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x11u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 17;
        v19 = objc_alloc_init(IDSQRProtoSessionInfoIndication);
        objc_storeStrong((a1 + 240), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoSessionInfoIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x12u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 18;
        v19 = objc_alloc_init(IDSQRProtoStatsRequest);
        objc_storeStrong((a1 + 264), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoStatsRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x13u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 19;
        v19 = objc_alloc_init(IDSQRProtoStatsResponse);
        objc_storeStrong((a1 + 272), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoStatsResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x14u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 20;
        v19 = objc_alloc_init(IDSQRProtoTestRequest);
        objc_storeStrong((a1 + 280), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoTestRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x15u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 21;
        v19 = objc_alloc_init(IDSQRProtoTestResponse);
        objc_storeStrong((a1 + 288), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoTestResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x16u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 22;
        v19 = objc_alloc_init(IDSQRProtoUnAllocBindRequest);
        objc_storeStrong((a1 + 296), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoUnAllocBindRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x17u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 23;
        v19 = objc_alloc_init(IDSQRProtoUnAllocBindResponse);
        objc_storeStrong((a1 + 304), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoUnAllocBindResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x18u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 24;
        v19 = objc_alloc_init(IDSQRProtoPutMaterialRequest);
        objc_storeStrong((a1 + 176), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoPutMaterialRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x19u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 25;
        v19 = objc_alloc_init(IDSQRProtoPutMaterialResponse);
        objc_storeStrong((a1 + 184), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoPutMaterialResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x1Au:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 26;
        v19 = objc_alloc_init(IDSQRProtoPutMaterialIndication);
        objc_storeStrong((a1 + 168), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoPutMaterialIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x1Bu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 27;
        v19 = objc_alloc_init(IDSQRProtoGetMaterialRequest);
        objc_storeStrong((a1 + 72), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoGetMaterialRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x1Cu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 28;
        v19 = objc_alloc_init(IDSQRProtoGetMaterialResponse);
        objc_storeStrong((a1 + 80), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoGetMaterialResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x1Fu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 29;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterRequest);
        objc_storeStrong((a1 + 224), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x20u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 30;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterResponse);
        objc_storeStrong((a1 + 232), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x21u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 31;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterIndication);
        objc_storeStrong((a1 + 216), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x22u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 32;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterAckRequest);
        objc_storeStrong((a1 + 200), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterAckRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x23u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 33;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterAckResponse);
        objc_storeStrong((a1 + 208), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterAckResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x24u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 34;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelUnRegisterRequest);
        objc_storeStrong((a1 + 320), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelUnRegisterRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x25u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 35;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelUnRegisterResponse);
        objc_storeStrong((a1 + 328), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (PBReaderPlaceMark() && IDSQRProtoH3EndToEndChannelUnRegisterResponseReadFrom(v19, a2))
        {
          goto LABEL_147;
        }

        goto LABEL_153;
      case 0x26u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 36;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelUnRegisterIndication);
        objc_storeStrong((a1 + 312), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelUnRegisterIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x27u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 37;
        v19 = objc_alloc_init(IDSQRProtoCallModeUpdateRequest);
        objc_storeStrong((a1 + 24), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoCallModeUpdateRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x28u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 38;
        v19 = objc_alloc_init(IDSQRProtoCallModeUpdateResponse);
        objc_storeStrong((a1 + 32), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoCallModeUpdateResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x31u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 39;
        v19 = objc_alloc_init(IDSQRH3ChannelConfigRequest);
        objc_storeStrong((a1 + 40), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRH3ChannelConfigRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x32u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 40;
        v19 = objc_alloc_init(IDSQRH3ChannelConfigResponse);
        objc_storeStrong((a1 + 48), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (PBReaderPlaceMark() && IDSQRH3ChannelConfigResponseReadFrom(v19, a2))
        {
LABEL_147:
          PBReaderRecallMark();

LABEL_148:
          v4 = a2;
          continue;
        }

LABEL_153:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_148;
    }
  }
}

void sub_1A7C29E00(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A6138] serverBag];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "Finished posting SOS {response: %@, postError: %@}", &v10, 0x16u);
  }

  v9 = [*(a1 + 32) rateLimiter];
  [v9 noteItem:@"SOSRateLimitItem"];

  [*(a1 + 40) finishTasksAndInvalidate];
}

uint64_t IDSQRProtoUnAllocBindUnAllocBindReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRCHDataList_Create(uint64_t result, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
    if (v4)
    {
      v5 = v4;
      v6 = malloc_type_malloc(112 * a2, 0x1010040F86BD4C7uLL);
      v5[1] = v6;
      if (v6)
      {
        *v5 = a2;
        *(v5 + 1) = 0;
        *v3 = v5;
        v7 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *v3;
          v9 = **v3;
          *buf = 134218240;
          v13 = v8;
          v14 = 1024;
          v15 = v9;
          _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "IDSQRCHDataList: created new list %p, size %d.", buf, 0x12u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (result)
        {
          result = _IDSShouldLogTransport();
          if (result)
          {
            _IDSLogTransport(@"GL", @"IDS", @"IDSQRCHDataList: created new list %p, size %d.");
            result = _IDSShouldLog();
            if (result)
            {
              return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRCHDataList: created new list %p, size %d.");
            }
          }
        }
      }

      else
      {
        v11 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "IDSQRCHDataList: failed to initialize.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (result)
        {
          result = _IDSShouldLog();
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRCHDataList: failed to initialize.");
          }
        }
      }
    }

    else
    {
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "IDSQRCHDataList_Init failed.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"GL", @"IDS", @"IDSQRCHDataList_Init failed.");
          result = _IDSShouldLog();
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRCHDataList_Init failed.");
          }
        }
      }
    }
  }

  return result;
}

void IDSQRCHDataList_Destroy(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a1 = 0;
    v2 = a1[1];
    if (v2)
    {
      free(v2);
    }

    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v5 = a1;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "IDSQRCHDataList: list %p destroyed.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"IDSQRCHDataList: list %p destroyed.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRCHDataList: list %p destroyed.");
      }
    }

    free(a1);
  }
}

uint64_t IDSQRCHDataList_Count(uint64_t result)
{
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

uint64_t IDSQRCHDataList_ItemAtIndex(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 4) <= a2)
    {
      return 0;
    }

    else
    {
      return *(result + 8) + 112 * a2;
    }
  }

  return result;
}

void *StunUtilSkipQualityMetadata(unsigned __int8 **a1)
{
  v2 = +[IDSFoundationLog Stun];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1A7E1C438();
  }

  v3 = *(a1 + 111);
  v4 = +[IDSFoundationLog Stun];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3 < 1)
  {
    if (v5)
    {
      sub_1A7E1C474();
    }

    v6 = a1[2];
  }

  else
  {
    if (v5)
    {
      sub_1A7E1C4EC();
    }

    v6 = a1[2];
    if (v6 >= *(a1 + 228))
    {
      v6 = *(a1 + 228);
    }
  }

  v7 = *a1;
  v8 = &(*a1)[v6];
  v9 = *a1;
  while (v9 < v8)
  {
    v10 = *v9;
    if (v10 >> 6 == 2)
    {
      v11 = 6;
    }

    else
    {
      v11 = 8;
    }

    if (v10 >> 6 == 1)
    {
      v12 = 4;
    }

    else
    {
      v12 = v11;
    }

    if (v10 < 0x40)
    {
      v12 = 2;
    }

    v13 = &v9[v12];
    if (v13 > v8)
    {
      v14 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1C574();
      }

      v7 = *a1;
      break;
    }

    v9 = v13;
    if ((v10 & 8) == 0)
    {
      LODWORD(v9) = v13;
      break;
    }
  }

  v15 = v9 - v7;
  if (v7 + v9 - v7 > v8)
  {
    v16 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1C5B0();
    }

    if (isRunningTests())
    {
      throwsIDSAbortException();
    }

    goto LABEL_43;
  }

  v17 = +[IDSFoundationLog Stun];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_1A7E1C5EC();
  }

  result = IDSLinkPacketBufferAddBufferStart(a1, v15);
  if (*(a1 + 111) >= 1)
  {
    a1[56] += v15;
    v19 = *(a1 + 228);
    if (v19 < v15)
    {
      v20 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1C660();
      }

      if (isRunningTests())
      {
        throwsIDSAbortException();
      }

LABEL_43:
      abort();
    }

    *(a1 + 228) = v19 - v15;
  }

  return result;
}

void *sub_1A7C2B818(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v36 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1305))
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 536);
  if ((v5 & 0x400) != 0)
  {
    if (*(a1 + 1305))
    {
      v6 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1C69C();
      }

      v5 = *(a1 + 536);
    }

    v4 |= 0x10000u;
  }

  if (*(a1 + 535))
  {
    v7 = v4 | 0x200000;
  }

  else
  {
    v7 = v4;
  }

  if (*(a1 + 533))
  {
    v7 |= 0x40000u;
  }

  if (*(a1 + 534))
  {
    v7 |= 0x80000u;
  }

  v8 = v7 | (16 * v5) & 0x800000;
  if (v8 <= 0x8000)
  {
    v9 = v7 | (16 * v5) & 0x800000;
  }

  else
  {
    v9 = v8 | 0x8000;
  }

  if (v8 <= 0x8000)
  {
    v10 = 2;
  }

  else
  {
    v10 = 4;
  }

  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &buf[-v11];
  memset(&buf[-v11], 170, v13);
  v14 = &v12[v10];
  v15 = *(a1 + 460);
  if ((v15 - 1) > 0xB)
  {
    if (v15)
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 460);
        *buf = 67109120;
        v35 = v20;
        _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "_prependExtendedChannelHeader failed due to invalid streamID count (%d).", buf, 8u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"GL", @"IDS", @"_prependExtendedChannelHeader failed due to invalid streamID count (%d).");
          result = _IDSShouldLog();
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"GL", @"_prependExtendedChannelHeader failed due to invalid streamID count (%d).");
          }
        }
      }

      return result;
    }
  }

  else
  {
    *v14 = bswap32(*(a1 + 464)) >> 16;
    if (v15 < 2)
    {
      v9 |= 1u;
      v14 += 2;
    }

    else
    {
      v14[2] = v15 - 1;
      v14 += 3;
      v16 = (a1 + 466);
      v17 = v15 - 1;
      do
      {
        v18 = *v16++;
        *v14 = bswap32(v18) >> 16;
        v14 += 2;
        --v17;
      }

      while (v17);
      v9 |= 3u;
    }
  }

  v22 = *(a1 + 488);
  if (v22)
  {
    v9 |= 4u;
    *v14 = bswap64(v22);
    v14 += 8;
  }

  if (*(a1 + 496))
  {
    v9 |= 8u;
    *v14++ = *(a1 + 496);
  }

  if (*(a1 + 498))
  {
    v9 |= 0x10u;
    *v14 = __rev16(*(a1 + 498));
    v14 += 2;
  }

  if (*(a1 + 500))
  {
    v9 |= 0x20u;
    *v14++ = *(a1 + 500);
  }

  if (*(a1 + 501))
  {
    v23 = v9 | 0x40;
  }

  else
  {
    v23 = v9;
  }

  if ((v2 & 1) == 0)
  {
    v23 |= 0x80u;
    *v14 = bswap32(*(a1 + 16)) >> 16;
    v14 += 2;
  }

  if (*(a1 + 502))
  {
    v23 |= 0x100u;
  }

  if ((*(a1 + 536) & 0x40) != 0)
  {
    v23 |= 0x200u;
    *v14 = bswap32(*(a1 + 504)) >> 16;
    v14 += 2;
  }

  if (*(a1 + 516))
  {
    v23 |= 0x800u;
  }

  v24 = *(a1 + 520);
  if ((v24 - 1) <= 3)
  {
    *v14 = bswap32(*(a1 + 524)) >> 16;
    LOWORD(v25) = v14 + 2;
    v26 = *(a1 + 520);
    if (v26 < 2)
    {
      v23 |= 0x2000u;
    }

    else
    {
      v25 = v14 + 3;
      v14[2] = v26 - 1;
      v23 |= 0x6000u;
      if (*(a1 + 520) >= 2)
      {
        v27 = (a1 + 526);
        v28 = 1;
        do
        {
          v29 = *v27++;
          *v25++ = bswap32(v29) >> 16;
          ++v28;
        }

        while (v28 < *(a1 + 520));
      }
    }

    LOWORD(v14) = v25;
    goto LABEL_70;
  }

  if (!v24)
  {
LABEL_70:
    v32 = bswap32(v23);
    *v12 = HIWORD(v32);
    if (v8 > 0x8000)
    {
      *(v12 + 1) = v32;
    }

    v33 = v14 - v12;
    IDSLinkPacketBufferAddBufferStart(a1, -(v14 - v12));
    return memcpy(*a1, v12, v33);
  }

  v30 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 520);
    *buf = 67109120;
    v35 = v31;
    _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "_prependExtendedChannelHeader failed due to invalid relay linkID count (%d).", buf, 8u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLogTransport();
    if (result)
    {
      _IDSLogTransport(@"GL", @"IDS", @"_prependExtendedChannelHeader failed due to invalid relay linkID count (%d).");
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV(0, @"IDSFoundation", @"GL", @"_prependExtendedChannelHeader failed due to invalid relay linkID count (%d).");
      }
    }
  }

  return result;
}

void StunUtilGetMappedParticipantID(uint64_t a1, int a2, void *a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a1 + 96 * a2;
  v9 = *(v8 + 488);
  v10 = [v7 participantIDMap];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
    if (v11)
    {
      v12 = [v7 participantIDMap];
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
      v14 = [CFDictionaryGetValue(v12 v13)];
    }

    else
    {
      v14 = [0 unsignedLongLongValue];
    }
  }

  else
  {
    v14 = [0 unsignedLongLongValue];
  }

  if (v14)
  {
    goto LABEL_8;
  }

  if (a4)
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 1216);
      *buf = 134218496;
      v21 = v9;
      v22 = 2048;
      v23 = 0;
      v24 = 1024;
      v25 = v16;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "Incoming: pid -> epid (%llu->%llu) on link %d.", buf, 0x1Cu);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_8;
    }

    if (!_IDSShouldLogTransport())
    {
      goto LABEL_8;
    }

    _IDSLogTransport(@"GL", @"IDS", @"Incoming: pid -> epid (%llu->%llu) on link %d.");
    if ((_IDSShouldLog() & 1) == 0)
    {
      goto LABEL_8;
    }

    v17 = @"Incoming: pid -> epid (%llu->%llu) on link %d.";
LABEL_22:
    _IDSLogV(0, @"IDSFoundation", @"GL", v17);
    goto LABEL_8;
  }

  v18 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 1216);
    *buf = 134218496;
    v21 = v9;
    v22 = 2048;
    v23 = 0;
    v24 = 1024;
    v25 = v19;
    _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "Outgoing: pid -> epid (%llu->%llu) on link %d.", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"Outgoing: pid -> epid (%llu->%llu) on link %d.");
      if (_IDSShouldLog())
      {
        v17 = @"Outgoing: pid -> epid (%llu->%llu) on link %d.";
        goto LABEL_22;
      }
    }
  }

LABEL_8:
  *(v8 + 488) = v14;
}

BOOL StunUtilPrepareOutgoingChannelData(__int16 a1, void **a2, int a3, uint64_t a4)
{
  if (a3 <= 0)
  {
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "StunUtilPrepareOutgoingChannelData failed due to invalid parameter.", v19, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"StunUtilPrepareOutgoingChannelData failed due to invalid parameter.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilPrepareOutgoingChannelData failed due to invalid parameter.");
        }
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = a1 & 0xF0;
    v11 = 8 * (a3 - 1);
    v12 = 8 * a3;
    do
    {
      v13 = a2[v8 / 8];
      *(v13 + 45) = 0;
      if (v10 == 96)
      {
        sub_1A7C2B818(v13, v11 == v8);
        v13 = a2[v8 / 8];
      }

      v9 += *(v13 + 16);
      v8 += 8;
    }

    while (v12 != v8);
    v14 = *a2;
    IDSLinkPacketBufferAddBufferStart(*a2, -4);
    **v14 = a1;
    *(*v14 + 2) = bswap32(v9) >> 16;
    if ((a4 - 3) < 2 && (v9 & 3) != 0)
    {
      v15 = a2[a3 - 1];
      v16 = 4 - (v9 & 3);
      memset((*v15 + v15[2]), 20, v16);
      v15[2] += v16;
    }
  }

  return a3 > 0;
}

uint64_t sub_1A7C2C22C(unsigned __int16 *a1, uint64_t a2, __int16 a3, _WORD *a4)
{
  if (a2 - a1 <= 1)
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "_StunUtilProcessIncomingStats: packet is too short for stats-id.", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      return 0xFFFFFFFFLL;
    }

    if (!_IDSShouldLogTransport())
    {
      return 0xFFFFFFFFLL;
    }

    _IDSLogTransport(@"GL", @"IDS", @"_StunUtilProcessIncomingStats: packet is too short for stats-id.");
    if (!_IDSShouldLog())
    {
      return 0xFFFFFFFFLL;
    }

    v5 = @"_StunUtilProcessIncomingStats: packet is too short for stats-id.";
    goto LABEL_22;
  }

  a4[28] = bswap32(*a1) >> 16;
  if ((a3 & 0x400) == 0)
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "_StunUtilProcessIncomingStats: missing stats-payload.", v9, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      return 0xFFFFFFFFLL;
    }

    if (!_IDSShouldLogTransport())
    {
      return 0xFFFFFFFFLL;
    }

    _IDSLogTransport(@"GL", @"IDS", @"_StunUtilProcessIncomingStats: missing stats-payload.");
    if (!_IDSShouldLog())
    {
      return 0xFFFFFFFFLL;
    }

    v5 = @"_StunUtilProcessIncomingStats: missing stats-payload.";
    goto LABEL_22;
  }

  if ((a2 - (a1 + 1)) > 9)
  {
    a4[29] = bswap32(a1[1]) >> 16;
    a4[30] = bswap32(a1[2]) >> 16;
    a4[31] = bswap32(a1[3]) >> 16;
    a4[32] = bswap32(a1[4]) >> 16;
    a4[33] = bswap32(a1[5]) >> 16;
    return 12;
  }

  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "_StunUtilProcessIncomingStats: packet is too short for stats-payload.", v10, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"_StunUtilProcessIncomingStats: packet is too short for stats-payload.");
      if (_IDSShouldLog())
      {
        v5 = @"_StunUtilProcessIncomingStats: packet is too short for stats-payload.";
LABEL_22:
        _IDSLogV(0, @"IDSFoundation", @"GL", v5);
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t StunUtilProcessIncomingChannelData(unsigned __int16 **a1, char a2)
{
  v4 = bswap32((*a1)[1]) >> 16;
  IDSLinkPacketBufferAddBufferStart(a1, 4);

  return StunUtilProcessIncomingChannelDataWithoutChannelHeader(a1, a2, v4);
}

uint64_t StunUtilProcessIncomingChannelDataWithoutChannelHeader(unsigned __int16 **a1, char a2, unsigned int a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a1[2];
  v6 = v5;
  if (v5 != a3)
  {
    v6 = a3;
    if (v5 <= a3 || ((a3 + 4) & 0x1FFFC) != v5)
    {
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[2];
        *buf = 67109376;
        *v70 = a3;
        *&v70[4] = 2048;
        *&v70[6] = v10;
        _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: length mismatch (%u != %zd).", buf, 0x12u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: length mismatch (%u != %zd).");
          result = _IDSShouldLog();
          if (result)
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: length mismatch (%u != %zd).");
            return 0;
          }
        }
      }

      return result;
    }

    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = a1[2];
      *buf = 134218240;
      *v70 = v13;
      *&v70[8] = 1024;
      *&v70[10] = a3;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEBUG, "remove padding, length (%zd->%u).", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV(1, @"IDSFoundation", @"GL", @"remove padding, length (%zd->%u).");
    }

    a1[2] = v6;
  }

  if ((a2 & 1) == 0)
  {
    v46 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v47 = a1[2];
      *buf = 134217984;
      *v70 = v47;
      _os_log_impl(&dword_1A7AD9000, v46, OS_LOG_TYPE_DEBUG, "processed regular channel data %zdB.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV(1, @"IDSFoundation", @"GL", @"processed regular channel data %zdB.");
    }

    return 1;
  }

  bzero(a1 + 56, 0x300uLL);
  if (!v6)
  {
    return 1;
  }

  v14 = 0;
  v15 = *a1;
  v16 = *a1 + v6;
  v17 = a1 + 233;
  for (i = a1 + 263; ; i += 48)
  {
    if ((v16 - v15) <= 1)
    {
      v48 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v48, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for channel-data-flag.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (!result)
      {
        return result;
      }

      result = _IDSShouldLogTransport();
      if (!result)
      {
        return result;
      }

      _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for channel-data-flag.");
      result = _IDSShouldLog();
      if (!result)
      {
        return result;
      }

      goto LABEL_120;
    }

    if (v14 == 8)
    {
      v49 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v70 = 8;
        *&v70[4] = 1024;
        *&v70[6] = 8;
        _os_log_impl(&dword_1A7AD9000, v49, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packetCounter = %d is greater than kLinkPacketBufferMaxCompoundSize: %d", buf, 0xEu);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packetCounter = %d is greater than kLinkPacketBufferMaxCompoundSize: %d");
          result = _IDSShouldLog();
          if (result)
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packetCounter = %d is greater than kLinkPacketBufferMaxCompoundSize: %d");
            return 0;
          }
        }
      }

      return result;
    }

    v19 = &a1[12 * v14 + 56];
    *(v19 + 88) = 0;
    v20 = v15 + 1;
    v21 = bswap32(*v15);
    v22 = HIWORD(v21);
    if ((v21 & 0x80000000) != 0)
    {
      if ((v16 - v20) <= 1)
      {
        v68 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v68, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for additional flags.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for additional flags.");
        result = _IDSShouldLog();
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for additional flags.");
        return 0;
      }

      v23 = bswap32(v15[1]);
      v22 |= HIWORD(v23) << 16;
      v20 = v15 + 2;
      if (HIWORD(v23) >= 0x200u)
      {
        v24 = v23 >> 25;
        v25 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v70 = v24;
          _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: has unknown attribute: %d", buf, 8u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: has unknown attribute: %d");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: has unknown attribute: %d");
            }
          }
        }
      }
    }

    if (v22)
    {
      if ((v16 - v20) > 1)
      {
        v26 = *v20++;
        *(v19 + 88) |= 2u;
        *(v19 + 16) = bswap32(v26) >> 16;
        *(v19 + 12) = 1;
        goto LABEL_36;
      }

      v50 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v50, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for channel-data-flag.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (!result)
      {
        return result;
      }

      result = _IDSShouldLogTransport();
      if (!result)
      {
        return result;
      }

      _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for channel-data-flag.");
      result = _IDSShouldLog();
      if (!result)
      {
        return result;
      }

LABEL_120:
      _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for channel-data-flag.");
      return 0;
    }

LABEL_36:
    if ((v22 & 2) == 0)
    {
      goto LABEL_44;
    }

    if ((v16 - v20) <= 0)
    {
      v51 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v51, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for secondary-stream-id count.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for secondary-stream-id count.");
          result = _IDSShouldLog();
          if (result)
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for secondary-stream-id count.");
            return 0;
          }
        }
      }

      return result;
    }

    v27 = *v20;
    v28 = *(v19 + 12) + v27;
    *(v19 + 12) = v28;
    if (v27 > 0xB || v28 >= 13)
    {
      break;
    }

    v20 = (v20 + 1);
    if ((v16 - v20) < (2 * v27))
    {
      v55 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v70 = v27;
        _os_log_impl(&dword_1A7AD9000, v55, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for %d stream-id.", buf, 8u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (!result)
      {
        return result;
      }

      result = _IDSShouldLogTransport();
      if (!result)
      {
        return result;
      }

      _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for %d stream-id.");
      result = _IDSShouldLog();
      if (!result)
      {
        return result;
      }

      _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for %d stream-id.");
      return 0;
    }

    if (v27)
    {
      v29 = v17;
      do
      {
        v30 = *v20++;
        *v29++ = bswap32(v30) >> 16;
        --v27;
      }

      while (v27);
    }

LABEL_44:
    if ((v22 & 4) != 0)
    {
      if ((v16 - v20) <= 7)
      {
        v53 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v53, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for participant-id.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for participant-id.");
        result = _IDSShouldLog();
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for participant-id.");
        return 0;
      }

      v31 = *v20;
      v20 += 4;
      *(v19 + 88) |= 1u;
      *(v19 + 40) = bswap64(v31);
      if (!v31)
      {
        v32 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: we received participant ID 0!!", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: we received participant ID 0!!");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: we received participant ID 0!!");
            }
          }
        }
      }
    }

    if ((v22 & 8) != 0)
    {
      if ((v16 - v20) <= 0)
      {
        v54 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v54, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for channel-priority.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for channel-priority.");
        result = _IDSShouldLog();
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for channel-priority.");
        return 0;
      }

      *(v19 + 88) |= 8u;
      v33 = *v20;
      v20 = (v20 + 1);
      *(v19 + 48) = v33;
    }

    if ((v22 & 0x10) != 0)
    {
      if ((v16 - v20) <= 1)
      {
        v56 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v56, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for probe-groupid.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for probe-groupid.");
        result = _IDSShouldLog();
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for probe-groupid.");
        return 0;
      }

      v34 = *v20++;
      *(v19 + 88) |= 0x10u;
      *(v19 + 50) = bswap32(v34) >> 16;
    }

    if ((v22 & 0x20) != 0)
    {
      if ((v16 - v20) <= 0)
      {
        v57 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v57, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for lsb-version-counter.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for lsb-version-counter.");
        result = _IDSShouldLog();
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for lsb-version-counter.");
        return 0;
      }

      *(v19 + 88) |= 0x20u;
      v35 = *v20;
      v20 = (v20 + 1);
      *(v19 + 52) = v35;
    }

    if ((v22 & 0x40) != 0)
    {
      *(v19 + 88) |= 4u;
      *(v19 + 53) = 1;
    }

    if ((v22 & 0x80) != 0)
    {
      if ((v16 - v20) <= 1)
      {
        v58 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v58, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for data length.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for data length.");
        result = _IDSShouldLog();
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for data length.");
        return 0;
      }

      v36 = *v20++;
      v37 = bswap32(v36) >> 16;
      *(v19 + 8) = v37;
      if ((v16 - v20) < v37)
      {
        v60 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = *(v19 + 8);
          *buf = 67109120;
          *v70 = v61;
          _os_log_impl(&dword_1A7AD9000, v60, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for data (%dB).", buf, 8u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for data (%dB).");
        result = _IDSShouldLog();
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for data (%dB).");
        return 0;
      }
    }

    if ((v22 & 0x100) != 0)
    {
      *(v19 + 88) |= 0x80u;
      *(v19 + 54) = 1;
    }

    if ((v22 & 0x200) != 0)
    {
      v38 = sub_1A7C2C22C(v20, v16, v22, v19);
      if (v38 <= 0)
      {
        v59 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v59, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: invalid incoming stats.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: invalid incoming stats.");
        result = _IDSShouldLog();
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: invalid incoming stats.");
        return 0;
      }

      *(v19 + 88) |= 0x40u;
      v20 = (v20 + v38);
    }

    if ((v22 & 0x800) != 0)
    {
      *(v19 + 88) |= 0x100u;
      *(v19 + 68) = 1;
    }

    if ((v22 & 0x2000) != 0)
    {
      if ((v16 - v20) <= 1)
      {
        v62 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v62, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for primary-relaylinkID-flag.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for primary-relaylinkID-flag.");
        result = _IDSShouldLog();
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for primary-relaylinkID-flag.");
        return 0;
      }

      v39 = *v20++;
      *(v19 + 88) |= 0x800u;
      *(v19 + 76) = bswap32(v39) >> 16;
      *(v19 + 72) = 1;
    }

    if ((v22 & 0x4000) != 0)
    {
      if ((v16 - v20) <= 0)
      {
        v63 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v63, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for secondary-relaylinkID-flag.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for secondary-relaylinkID-flag.");
        result = _IDSShouldLog();
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for secondary-relaylinkID-flag.");
        return 0;
      }

      v40 = *v20;
      if (v40 > 3 || (v41 = *(v19 + 72) + v40, v41 >= 5))
      {
        v64 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = *(v19 + 72);
          *buf = 67109376;
          *v70 = v65;
          *&v70[4] = 1024;
          *&v70[6] = v40;
          _os_log_impl(&dword_1A7AD9000, v64, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: invalid secondary relayLinkid count (%d:%d)", buf, 0xEu);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: invalid secondary relayLinkid count (%d:%d)");
        result = _IDSShouldLog();
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: invalid secondary relayLinkid count (%d:%d)");
        return 0;
      }

      v20 = (v20 + 1);
      if ((v16 - v20) < 2 * v40)
      {
        v67 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v70 = v40;
          _os_log_impl(&dword_1A7AD9000, v67, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for %d secondary relayLinkID.", buf, 8u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for %d secondary relayLinkID.");
        result = _IDSShouldLog();
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for %d secondary relayLinkID.");
        return 0;
      }

      if (v40 >= 1)
      {
        v42 = i;
        do
        {
          v43 = *v20++;
          *v42++ = bswap32(v43) >> 16;
          --v40;
        }

        while (v40);
      }

      *(v19 + 72) = v41;
      *(v19 + 88) |= 0x1000u;
    }

    if ((v22 & 0x10000) != 0)
    {
      *(v19 + 88) |= 0x400u;
    }

    if ((v22 & 0x20000) != 0)
    {
      if ((v16 - v20) > 0)
      {
        *(v19 + 88) |= 0x2000u;
        v44 = *v20;
        v20 = (v20 + 1);
        *(v19 + 84) = v44;
        goto LABEL_91;
      }

      v66 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v66, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for session state counter LSB.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (!result)
      {
        return result;
      }

      result = _IDSShouldLogTransport();
      if (!result)
      {
        return result;
      }

      _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for session state counter LSB.");
      result = _IDSShouldLog();
      if (!result)
      {
        return result;
      }

      _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for session state counter LSB.");
      return 0;
    }

LABEL_91:
    if ((v22 & 0x40000) != 0)
    {
      *(v19 + 88) |= 0x10000u;
      if ((v22 & 0x80000) == 0)
      {
LABEL_93:
        if ((v22 & 0x200000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_105;
      }
    }

    else if ((v22 & 0x80000) == 0)
    {
      goto LABEL_93;
    }

    *(v19 + 88) |= 0x20000u;
    if ((v22 & 0x200000) == 0)
    {
LABEL_94:
      if ((v22 & 0x800000) != 0)
      {
        goto LABEL_106;
      }

      goto LABEL_95;
    }

LABEL_105:
    *(v19 + 87) = 1;
    if ((v22 & 0x800000) != 0)
    {
LABEL_106:
      *(v19 + 88) |= 0x80000u;
      if ((v22 & 0x1000000) == 0)
      {
        goto LABEL_97;
      }

LABEL_96:
      *(v19 + 69) = 0;
      *(v19 + 88) &= ~0x400u;
      *(a1 + 1305) = 1;
      goto LABEL_97;
    }

LABEL_95:
    if ((v22 & 0x1000000) != 0)
    {
      goto LABEL_96;
    }

LABEL_97:
    *v19 = v20;
    if (!v14)
    {
      v45 = v20 - *a1;
      if (v45 >= 1)
      {
        IDSLinkPacketBufferAddBufferStart(a1, v45);
      }
    }

    ++v14;
    if ((v22 & 0x80) == 0)
    {
      *(v19 + 8) = v16 - v20;
      *(a1 + 111) = v14;
      return 1;
    }

    v15 = (v20 + *(v19 + 8));
    v17 += 48;
    result = 1;
    if (v15 >= v16)
    {
      return result;
    }
  }

  v52 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v70 = v27;
    _os_log_impl(&dword_1A7AD9000, v52, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: invalid streamID count (%d).", buf, 8u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLogTransport();
    if (result)
    {
      _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: invalid streamID count (%d).");
      result = _IDSShouldLog();
      if (result)
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: invalid streamID count (%d).");
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A7C2DD6C(void *a1, _WORD *a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (a2 && a3 > 0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    LODWORD(v9) = a2;
    if (v8)
    {
      v10 = a2 + a3;
      v11 = *v20;
      v9 = a2;
      while (2)
      {
        v12 = 0;
        v13 = v9;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = [*(*(&v19 + 1) + 8 * v12) unsignedShortValue];
          v9 = v13 + 1;
          if ((v13 + 1) > v10)
          {
            v17 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "StunUtilWritePublishedStreams failed due to short buffer.", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"StunUtilWritePublishedStreams failed due to short buffer.");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilWritePublishedStreams failed due to short buffer.");
                }
              }
            }

            goto LABEL_25;
          }

          *v13 = __rev16(v14);
          ++v12;
          ++v13;
        }

        while (v8 != v12);
        v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = (v9 - a2);
  }

  else
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "StunUtilWritePublishedStreams failed due to invalid parameter.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"StunUtilWritePublishedStreams failed due to invalid parameter.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilWritePublishedStreams failed due to invalid parameter.");
        }
      }
    }

LABEL_25:
    v15 = 0xFFFFFFFFLL;
  }

  return v15;
}

uint64_t sub_1A7C2E048(void *a1, _BYTE *a2, int a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!a2 || a3 <= 0)
  {
    v29 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "writeSubscribedStreams failed due to invalid parameter.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"writeSubscribedStreams failed due to invalid parameter.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"writeSubscribedStreams failed due to invalid parameter.");
        }
      }
    }

    v30 = 0xFFFFFFFFLL;
    goto LABEL_47;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v5;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  LODWORD(v8) = a2;
  if (!v7)
  {
LABEL_45:

    v30 = (v8 - a2);
    goto LABEL_46;
  }

  v9 = 0;
  v10 = &a2[a3];
  v11 = *v43;
  v12 = *v43;
  v8 = a2;
  for (i = *v43; ; v11 = i)
  {
    if (v12 != v11)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v42 + 1) + 8 * v9);
    v14 = [v13 participantID];
    v15 = [v14 unsignedLongLongValue];

    v16 = [v13 streamArray];
    v17 = [v16 count];

    v18 = [v13 anyParticipant];
    v19 = [v13 anyStream];
    v20 = [v13 anyStream];
    v21 = v8 + 1;
    if ((v8 + 1) > v10)
    {
      break;
    }

    v22 = v17 | 0x80;
    if (!v18)
    {
      v22 = v17;
    }

    if (v20)
    {
      v22 |= 0x40u;
    }

    *v8 = v22;
    if (v18)
    {
      ++v8;
      if (v19)
      {
        goto LABEL_26;
      }

LABEL_17:
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v23 = [v13 streamArray];
      v24 = [v23 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v24)
      {
        v25 = *v39;
        while (2)
        {
          v26 = 0;
          v27 = v8;
          do
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [*(*(&v38 + 1) + 8 * v26) unsignedShortValue];
            v8 = v27 + 1;
            if ((v27 + 1) > v10)
            {
              v31 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "writeSubscribedStreams failed to write stream-id due to short buffer.", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport(@"GL", @"IDS", @"writeSubscribedStreams failed to write stream-id due to short buffer.");
                  if (_IDSShouldLog())
                  {
                    _IDSLogV(0, @"IDSFoundation", @"GL", @"writeSubscribedStreams failed to write stream-id due to short buffer.");
                  }
                }
              }

              goto LABEL_44;
            }

            *v27 = __rev16(v28);
            ++v26;
            ++v27;
          }

          while (v24 != v26);
          v24 = [v23 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_26;
    }

    v8 += 9;
    if (v8 > v10)
    {
      v34 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "writeSubscribedStreams failed to write participant-id due to short buffer.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"writeSubscribedStreams failed to write participant-id due to short buffer.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"writeSubscribedStreams failed to write participant-id due to short buffer.");
          }
        }
      }

      goto LABEL_44;
    }

    *v21 = bswap64(v15);
    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    if (++v9 >= v7)
    {
      v7 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (!v7)
      {
        goto LABEL_45;
      }

      v9 = 0;
    }

    v12 = *v43;
  }

  v33 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "writeSubscribedStreams failed to write stream-count due to short buffer.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"writeSubscribedStreams failed to write stream-count due to short buffer.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"writeSubscribedStreams failed to write stream-count due to short buffer.");
      }
    }
  }

LABEL_44:

  v30 = 0xFFFFFFFFLL;
LABEL_46:
  v6 = v36;
LABEL_47:

  return v30;
}

__CFArray *sub_1A7C2E60C(unsigned __int8 *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1 || a2 < 0)
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v23) = a2;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "invalid peer published stream data length (%d).", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid peer published stream data length (%d).");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid peer published stream data length (%d).");
        }
      }
    }

    v17 = 0;
  }

  else
  {
    if (a2)
    {
      v3 = a1;
      v4 = 0;
      v5 = &a1[a2];
      while (~v3 + v5 > 7)
      {
        v6 = *v3;
        if ((v5 - (v3 + 9)) < 2 * *v3)
        {
          v20 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "incomplete packet for stream-ids.", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"incomplete packet for stream-ids.");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"incomplete packet for stream-ids.");
              }
            }
          }

          goto LABEL_47;
        }

        v7 = *(v3 + 1);
        v8 = 0;
        for (v3 += 9; v6; --v6)
        {
          v10 = *v3;
          v3 += 2;
          v9 = v10;
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
            if (!v8)
            {
              continue;
            }
          }

          v11 = bswap32(v9) >> 16;
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v11];

          if (v12)
          {
            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v11];
            CFArrayAppendValue(v8, v13);
          }
        }

        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:bswap64(v7)];
        v15 = [IDSQRParticipantStreams streamWithParticipantID:v14 streamArray:v8 anyParticipant:0 anyStream:0];

        if (!v4)
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        if (v4 && v15)
        {
          CFArrayAppendValue(v4, v15);
        }

        if (v3 >= v5)
        {
          goto LABEL_28;
        }
      }

      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "incomplete packet for participant-id.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"incomplete packet for participant-id.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"incomplete packet for participant-id.");
          }
        }
      }

      v17 = 0;
    }

    else
    {
      v4 = 0;
LABEL_28:
      v18 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v4;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "processed peer-pub-stream: %@.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processed peer-pub-stream: %@.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processed peer-pub-stream: %@.");
          }
        }
      }

LABEL_47:
      v4 = v4;
      v17 = v4;
    }
  }

  return v17;
}

__CFArray *sub_1A7C2EB1C(unsigned __int16 *a1, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1 || (a2 & 0x80000001) != 0)
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v15) = a2;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "invalid peer subscribed stream data length (%d).", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid peer subscribed stream data length (%d).");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid peer subscribed stream data length (%d).");
        }
      }
    }

    v5 = 0;
  }

  else
  {
    v3 = (a2 >> 1);
    if ((a2 >> 1))
    {
      v4 = a1;
      v5 = 0;
      do
      {
        v7 = *v4++;
        v6 = v7;
        if (v5 || (v5 = objc_alloc_init(MEMORY[0x1E695DF70])) != 0)
        {
          v8 = bswap32(v6) >> 16;
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v8];

          if (v9)
          {
            v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v8];
            CFArrayAppendValue(v5, v10);
          }
        }

        --v3;
      }

      while (v3);
    }

    else
    {
      v5 = 0;
    }

    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "processed peer-sub-stream: %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processed peer-sub-stream: %@.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processed peer-sub-stream: %@.");
        }
      }
    }
  }

  return v5;
}

__CFArray *StunUtilProcessParticipants(void *a1, uint64_t a2, char a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (![v5 count])
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {

    if ((a3 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    v9 = 0;
    goto LABEL_22;
  }

  v8 = v7;
  v18 = a2;
  v9 = 0;
  v10 = *v20;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      if (!v9)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (!v9)
        {
          continue;
        }
      }

      v13 = [v12 participantID];

      if (v13)
      {
        v14 = [v12 participantID];
        CFArrayAppendValue(v9, v14);
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v8);

  a2 = v18;
  if ((a3 & 1) == 0)
  {
    if (v9)
    {
LABEL_20:
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];

      if (v15)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
        CFArrayAppendValue(v9, v16);
      }

      goto LABEL_22;
    }

LABEL_19:
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!v9)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_22:

  return v9;
}

__CFDictionary *StunUtilProcessStreamInfo(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  memset(__b, 170, sizeof(__b));
  v18 = -1431655766;
  if (v5 && (bzero(buf, 0x5D0uLL), ([v5 getAttribute:65531 attribute:buf] & 1) != 0))
  {
    v6 = v22;
    if (StunUtilHasValidBinaryDataAttr(v5, 60933, __b, &v18))
    {
      v7 = sub_1A7C2EB1C(__b, v18);
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v21 = v18;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "receive peer-sub-stream, length: %dB.", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v17 = v18;
          _IDSLogTransport(@"GL", @"IDS", @"receive peer-sub-stream, length: %dB.");
          if (_IDSShouldLog())
          {
            v17 = v18;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive peer-sub-stream, length: %dB.");
          }
        }
      }
    }

    else
    {
      v7 = 0;
    }

    if (StunUtilHasValidBinaryDataAttr(v5, 60932, __b, &v18))
    {
      v11 = sub_1A7C2E60C(__b, v18);
      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v21 = v18;
        _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "receive peer-pub-stream, length: %dB.", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v17 = v18;
          _IDSLogTransport(@"GL", @"IDS", @"receive peer-pub-stream, length: %dB.");
          if (_IDSShouldLog())
          {
            v17 = v18;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive peer-pub-stream, length: %dB.");
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    if (v13)
    {
      CFDictionarySetValue(v10, @"stream-info-generation-counter", v13);
    }

    if (v7)
    {
      CFDictionarySetValue(v10, @"stream-info-peer-subscribed-streams", v7);
    }

    if (v11)
    {
      CFDictionarySetValue(v10, @"stream-info-peer-published-streams", v11);
    }

    v14 = [MEMORY[0x1E696AD98] numberWithChar:{a2, v17}];
    if (v14)
    {
      CFDictionarySetValue(v10, @"gl-option-linkid", v14);
    }

    if (a3 >= 1)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithChar:a3];
      if (v15)
      {
        CFDictionarySetValue(v10, @"gl-option-sessioninfo-link-id-to-query", v15);
      }
    }
  }

  else
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "process streamInfo failed due to invalid generation-counter.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"process streamInfo failed due to invalid generation-counter.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"process streamInfo failed due to invalid generation-counter.");
        }
      }
    }

    v10 = 0;
  }

  return v10;
}

uint64_t StunUtilHasValidUInt32Attr(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    bzero(v6, 0x5D0uLL);
    result = [v5 getAttribute:a2 attribute:v6];
    if (a3)
    {
      if (result)
      {
        *a3 = v7;
      }
    }
  }

  return result;
}

uint64_t StunUtilHasValidBinaryDataAttr(void *a1, uint64_t a2, void *a3, int *a4)
{
  *&v13[1476] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  bzero(v11, 0x5D0uLL);
  v8 = [a1 getAttribute:a2 attribute:v11];
  if (v8)
  {
    if (a3)
    {
      if (a4)
      {
        v9 = v12;
        if (v12 <= 1472)
        {
          memcpy(a3, v13, v12);
          *a4 = v9;
        }
      }
    }
  }

  return v8;
}

__CFArray *sub_1A7C2F604(unint64_t *a1, unsigned int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1 || (a2 & 0x80000000) != 0 || (v3 = a2, (a2 & 7) != 0))
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v19) = a2;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "invalid participantID data length (%d).", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid participantID data length (%d).");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid participantID data length (%d).");
        }
      }
    }

    v5 = 0;
  }

  else
  {
    if (a2)
    {
      v7 = a1;
      v8 = 0;
      v9 = a1 + a2;
      while (v3 > 7)
      {
        v11 = *v7++;
        v10 = v11;
        if (v8 || (v8 = objc_alloc_init(MEMORY[0x1E695DF70])) != 0)
        {
          v12 = bswap64(v10);
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12];

          if (v13)
          {
            v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12];
            CFArrayAppendValue(v8, v14);
          }
        }

        v3 -= 8;
        if (v7 >= v9)
        {
          goto LABEL_24;
        }
      }

      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "StunUtilProcessParticipantIDs: incomplete packet for participantID.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessParticipantIDs: incomplete packet for participantID.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessParticipantIDs: incomplete packet for participantID.");
          }
        }
      }

      v5 = 0;
    }

    else
    {
      v8 = 0;
LABEL_24:
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v19 = [(__CFArray *)v8 count];
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "StunUtilProcessParticipantIDs: received %lu participants: %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v17 = [(__CFArray *)v8 count];
          _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessParticipantIDs: received %lu participants: %@.");
          if (_IDSShouldLog())
          {
            [(__CFArray *)v8 count:v17];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessParticipantIDs: received %lu participants: %@.");
          }
        }
      }

      v8 = v8;
      v5 = v8;
    }
  }

  return v5;
}

id sub_1A7C2F9E0(void *a1, uint64_t a2)
{
  __b[184] = *MEMORY[0x1E69E9840];
  v3 = a1;
  memset(__b, 170, 0x5C0uLL);
  v7 = -1431655766;
  if (StunUtilHasValidBinaryDataAttr(v3, a2, __b, &v7))
  {
    v4 = sub_1A7C2F604(__b, v7);
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v9 = a2;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "StunUtilProcessActiveOrLightweightParticipants: type: 0x%lx, %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessActiveOrLightweightParticipants: type: 0x%lx, %@");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessActiveOrLightweightParticipants: type: 0x%lx, %@");
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFDictionary *StunUtilProcessParticipantUpdate(void *a1, int a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  memset(__b, 170, sizeof(__b));
  v27 = -1431655766;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v5 && (bzero(buf, 0x5D0uLL), [v5 getAttribute:65489 attribute:buf]))
  {
    v7 = v31[0];
  }

  else
  {
    if (a2 == 401 || !a2)
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "process participantUpdate failed due to invalid session state counter.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"process participantUpdate failed due to invalid session state counter.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"process participantUpdate failed due to invalid session state counter.");
          }
        }
      }

      goto LABEL_51;
    }

    v7 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  if (v9)
  {
    CFDictionarySetValue(v6, @"ids-stun-attribute-session-state-counter", v9);
  }

  if (v5)
  {
    bzero(buf, 0x5D0uLL);
    v10 = [v5 getAttribute:65518 attribute:buf];
    if (v10)
    {
      v11 = v31[0];
    }

    else
    {
      v11 = 0;
    }

    v12 = v10 ^ 1;
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  if ((a3 & 0xFFFFFFFFFFFFFFEFLL) == 0xFE7 && v12)
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "process participantUpdate failed due to invalid operation flags.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"process participantUpdate failed due to invalid operation flags.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"process participantUpdate failed due to invalid operation flags.");
        }
      }
    }

LABEL_51:
    v19 = 0;
    goto LABEL_52;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v11];
  if (v14)
  {
    CFDictionarySetValue(v6, @"ids-stun-attribute-session-state-type", v14);
  }

  if (StunUtilHasValidBinaryDataAttr(v5, 60928, __b, &v27))
  {
    v15 = sub_1A7C2F604(__b, v27);
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v30 = v27;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "receive participantIDs, length: %dB.", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v26 = v27;
        _IDSLogTransport(@"GL", @"IDS", @"receive participantIDs, length: %dB.");
        if (_IDSShouldLog())
        {
          v26 = v27;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participantIDs, length: %dB.");
        }
      }
    }

    v17 = v15;
    if (v17)
    {
      CFDictionarySetValue(v6, @"ids-stun-attribute-enc-ParticipantIDs", v17);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1C6D8();
    }
  }

  else if (a3 == 3831 || a2 != 401 && a3 == 4087 || (v17 = 0, a3 == 4071) && v11 <= 2u)
  {
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "process participantUpdate failed due to invalid participantIDs.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"process participantUpdate failed due to invalid participantIDs.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"process participantUpdate failed due to invalid participantIDs.");
        }
      }
    }

    goto LABEL_51;
  }

  if (v5 && [v5 hasAttribute:65490])
  {
    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "StunUtilProcessParticipantUpdate: packetTruncated", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessParticipantUpdate: packetTruncated");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessParticipantUpdate: packetTruncated");
        }
      }
    }

    CFDictionarySetValue(v6, @"ids-stun-attribute-stun-truncated", MEMORY[0x1E695E118]);
  }

  if (a3 > 4070)
  {
    if (a3 == 4087)
    {
      v22 = 4;
      goto LABEL_79;
    }

    if (a3 == 4071)
    {
      v22 = 3;
      goto LABEL_79;
    }

LABEL_74:
    v23 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1C760();
    }

    v22 = 0;
    goto LABEL_79;
  }

  if (a3 == 3815)
  {
    v22 = 1;
    goto LABEL_79;
  }

  if (a3 != 3831)
  {
    goto LABEL_74;
  }

  v22 = 5;
LABEL_79:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{v22, v26}];
  if (v24)
  {
    CFDictionarySetValue(v6, @"ids-stun-message-type", v24);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1C7D4();
  }

  v25 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v30 = v11;
    LOWORD(v31[0]) = 2048;
    *(v31 + 2) = a3;
    _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "StunUtilProcessParticipantUpdate: operationFlags: %u, messageSTUNType: 0X%lx", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessParticipantUpdate: operationFlags: %u, messageSTUNType: 0X%lx");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessParticipantUpdate: operationFlags: %u, messageSTUNType: 0X%lx");
      }
    }
  }

  v19 = v6;

LABEL_52:

  return v19;
}

uint64_t StunUtilHasValidUInt16Attr(uint64_t result, uint64_t a2, _WORD *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    bzero(v6, 0x5D0uLL);
    result = [v5 getAttribute:a2 attribute:v6];
    if (a3)
    {
      if (result)
      {
        *a3 = v7;
      }
    }
  }

  return result;
}

void *StunUtilHasValidBooleanAttr(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 hasAttribute:a2];
  }

  return a1;
}

uint64_t sub_1A7C30484(void *a1, void *a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (a2 && a3 > 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    LODWORD(v9) = a2;
    if (v8)
    {
      v10 = a2 + a3;
      v11 = *v19;
      v9 = a2;
      while (2)
      {
        v12 = 0;
        v13 = v9;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v9 = v13 + 1;
          if ((v13 + 1) > v10)
          {
            v16 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "StunUtilWriteParticipantIDs failed to write participant-id due to short buffer.", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"StunUtilWriteParticipantIDs failed to write participant-id due to short buffer.");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilWriteParticipantIDs failed to write participant-id due to short buffer.");
                }
              }
            }

            goto LABEL_25;
          }

          *v13++ = bswap64([*(*(&v18 + 1) + 8 * v12++) unsignedLongLongValue]);
        }

        while (v8 != v12);
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = (v9 - a2);
  }

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "StunUtilWriteParticipantIDs failed due to invalid parameter.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"StunUtilWriteParticipantIDs failed due to invalid parameter.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilWriteParticipantIDs failed due to invalid parameter.");
        }
      }
    }

LABEL_25:
    v14 = 0xFFFFFFFFLL;
  }

  return v14;
}

void sub_1A7C30760(void *a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  memset(__b, 170, sizeof(__b));
  v9 = sub_1A7C2DD6C(a1, __b, 1472);
  if (v9 >= 1)
  {
    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:__b length:v9];
    if (v10)
    {
      CFDictionarySetValue(v8, @"ids-stun-attribute-enc-pub-streams", v10);
    }
  }

  v11 = sub_1A7C2E048(v7, __b, 1472);
  if (v11 < 1)
  {
    if (a3 <= 0)
    {
      if (v9 < 1)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:__b length:v11];
    if (v12)
    {
      CFDictionarySetValue(v8, @"ids-stun-attribute-enc-sub-streams", v12);
    }

    if (a3 < 1)
    {
      goto LABEL_14;
    }
  }

  v13 = [MEMORY[0x1E696AD98] numberWithChar:a3];
  if (v13)
  {
    CFDictionarySetValue(v8, @"ids-stun-attribute-max-concurrent-streams", v13);
  }

LABEL_14:
  v15 = 1414938954;
  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:&v15 length:4];
  if (v14)
  {
    CFDictionarySetValue(v8, @"ids-stun-attribvute-enc-marker", v14);
  }

LABEL_17:
}

void sub_1A7C30944(void *a1, void *a2)
{
  __b[184] = *MEMORY[0x1E69E9840];
  v3 = a2;
  memset(__b, 170, 0x5C0uLL);
  v4 = sub_1A7C30484(a1, __b, 1472);
  if (v4 >= 1)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:__b length:v4];
    if (v5)
    {
      CFDictionarySetValue(v3, @"ids-stun-attribute-enc-ParticipantIDs", v5);
    }

    v7 = 1414938954;
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v7 length:4];
    if (v6)
    {
      CFDictionarySetValue(v3, @"ids-stun-attribvute-enc-marker", v6);
    }
  }
}

IDSStunMessage *StunUtilCreateMessage(uint64_t a1, void *a2, void *a3, void *a4)
{
  *&v143[7] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [[IDSStunMessage alloc] initWithType:a1];
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = ids_monotonic_time();
  v13 = [v8 isRelayStunCandidatePair];
  v14 = [v8 isSharedQRSession];
  v139 = v7;
  if (!v13 || ([v8 isValidRelayStunCandidatePair] & 1) != 0)
  {
    [(IDSStunMessage *)v10 setTransactionID:v7];
    v16 = 0;
    if (a1 <= 3811)
    {
      if (a1 <= 3807)
      {
        if (a1 == 23)
        {
          v36 = [v8 channelNumber];
          v37 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v36)];
          if (v37)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v37);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C85C();
          }

          if (v9 && @"gl-option-generic-data" && (v50 = CFDictionaryGetValue(v9, @"gl-option-generic-data")) != 0)
          {
            v51 = v50;
            CFDictionarySetValue(v11, @"ids-stun-attribute-data", v50);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1CC14();
          }
        }

        else
        {
          if (a1 != 2049)
          {
            goto LABEL_330;
          }

          v27 = [v8 channelNumber];
          v28 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v27)];
          if (v28)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v28);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C85C();
          }

          Value = 0;
          if (v9 && @"gl-option-test-options-flags")
          {
            Value = CFDictionaryGetValue(v9, @"gl-option-test-options-flags");
          }

          v56 = [Value unsignedIntValue];
          if (@"gl-option-test-requested-message-type")
          {
            v57 = v9 != 0;
          }

          else
          {
            v57 = 0;
          }

          if (v57)
          {
            v58 = CFDictionaryGetValue(v9, @"gl-option-test-requested-message-type");
          }

          else
          {
            v58 = 0;
          }

          v136 = [v58 unsignedIntValue];
          if (@"gl-option-test-requested-error-code-type")
          {
            v59 = v9 != 0;
          }

          else
          {
            v59 = 0;
          }

          if (v59)
          {
            v60 = CFDictionaryGetValue(v9, @"gl-option-test-requested-error-code-type");
          }

          else
          {
            v60 = 0;
          }

          v61 = [v60 unsignedIntValue];
          if (@"gl-option-test-sub-operation")
          {
            v62 = v9 != 0;
          }

          else
          {
            v62 = 0;
          }

          if (v62)
          {
            v63 = CFDictionaryGetValue(v9, @"gl-option-test-sub-operation");
          }

          else
          {
            v63 = 0;
          }

          v138 = [v63 dataUsingEncoding:4];
          v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v56];
          if (v64)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-qr-testoptions", v64);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C9F4();
          }

          if (v56 == 8)
          {
            v73 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v136];
            if (v73)
            {
              CFDictionarySetValue(v11, @"ids-stun-attribute-qr-test-requested-message", v73);
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              sub_1A7E1CA7C();
            }

            v102 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v61];
            if (v102)
            {
              CFDictionarySetValue(v11, @"ids-stun-attribute-qr-test-requested-error-code", v102);
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              sub_1A7E1CB04();
            }

            v103 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              v141 = 8;
              v142 = 1024;
              *v143 = v136;
              v143[2] = 1024;
              *&v143[3] = v61;
              _os_log_impl(&dword_1A7AD9000, v103, OS_LOG_TYPE_DEFAULT, "testOptions: %u, requestedMessageType: %u, requestedErrorCode: %u", buf, 0x14u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v134 = v136;
                v135 = v61;
                v133 = 8;
                _IDSLogTransport(@"GL", @"IDS", @"testOptions: %u, requestedMessageType: %u, requestedErrorCode: %u");
                if (_IDSShouldLog())
                {
                  v134 = v136;
                  v135 = v61;
                  v133 = 8;
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"testOptions: %u, requestedMessageType: %u, requestedErrorCode: %u");
                }
              }
            }
          }

          v104 = v138;
          if (v104)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-qr-testsuboperation", v104);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1CB8C();
          }
        }

        goto LABEL_317;
      }

      if ((a1 - 3808) < 2)
      {
        CFDictionarySetValue(v11, @"ids-stun-attribute-requestedtransport", &unk_1F1B20270);
        v29 = [v8 softwareData];

        if (v29)
        {
          v30 = [v8 softwareData];
          if (v30)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-software", v30);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1D1EC();
          }
        }

        v43 = 0;
        if (v9 && @"gl-option-additional-binding")
        {
          v43 = CFDictionaryGetValue(v9, @"gl-option-additional-binding");
        }

        v137 = [v43 unsignedIntValue];
        if (([v8 isSelfQRSession] & 1) == 0 && objc_msgSend(v8, "hasValidCapabilityFlags"))
        {
          v44 = [v8 capabilityFlags];
          if (@"gl-option-is-lightweight-participant-key")
          {
            v45 = v9 != 0;
          }

          else
          {
            v45 = 0;
          }

          if (v45)
          {
            v46 = CFDictionaryGetValue(v9, @"gl-option-is-lightweight-participant-key");
          }

          else
          {
            v46 = 0;
          }

          if ([v46 BOOLValue])
          {
            v44 = v44 & 0xFFFFFFFFFFDF7FFFLL | 0x8000;
          }

          if (@"gs-shortmki-enabled-key")
          {
            v74 = v9 != 0;
          }

          else
          {
            v74 = 0;
          }

          if (v74)
          {
            v75 = CFDictionaryGetValue(v9, @"gs-shortmki-enabled-key");
          }

          else
          {
            v75 = 0;
          }

          if ([v75 BOOLValue])
          {
            v76 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A7AD9000, v76, OS_LOG_TYPE_DEFAULT, "StunUtilCreateMessage enabling shortMKI", buf, 2u);
            }

            v44 |= 0x800000uLL;
            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"StunUtilCreateMessage enabling shortMKI");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilCreateMessage enabling shortMKI");
                }
              }
            }
          }

          v77 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v44];
          if (v77)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-capabilityflags", v77);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1D274();
          }

          if ([v8 relayProviderType] != 1)
          {
            v99 = [v8 local];
            v100 = [v99 isCellularStunCandidate];

            v101 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v137 & 0x30 | v100];
            if (v101)
            {
              CFDictionarySetValue(v11, @"ids-stun-attribute-channel-binding-info", v101);
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              sub_1A7E1D2FC();
            }
          }
        }

        if (v14)
        {
          v111 = [(IDSStunMessage *)v10 transactionID];
          [v8 deriveAES128CTRKeys:v111];

          v112 = [v8 relaySessionInfo];
          v113 = [v112 publishedStreams];

          v114 = [v8 relaySessionInfo];
          v115 = [v114 subscribedStreams];

          v116 = [v8 relaySessionInfo];
          v117 = [v116 maxConcurrentStreams];

          sub_1A7C30760(v113, v115, v117, v11);
          v118 = [(__CFDictionary *)v9 objectForKeyedSubscript:@"gl-option-materials-key"];
          if (v118)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-qr-materials", v118);
          }
        }

        v119 = IDSStunAttributeQRReallocTokenKey;
        if (a1 != 3809)
        {
          v119 = IDSStunAttributeQRSessionTokenKey;
        }

        v120 = *v119;
        v121 = [v8 relaySessionToken];
        if (v121)
        {
          CFDictionarySetValue(v11, v120, v121);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1D384(v120, v122, v123, v124, v125, v126, v127, v128);
        }

        v129 = [(__CFDictionary *)v9 objectForKeyedSubscript:@"gl-option-qr-server-data-blob"];
        if (v129)
        {
          CFDictionarySetValue(v11, @"ids-stun-attribute-qr-server-blob", v129);
        }

        goto LABEL_317;
      }

      if (a1 != 3810)
      {
        if (a1 != 3811)
        {
          goto LABEL_330;
        }

        v17 = [v8 channelNumber];
        v18 = ntpTime32(v12);
        [v8 serverLatency];
        v20 = v19;
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v17)];
        if (v21)
        {
          CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v21);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1C85C();
        }

        v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v18];
        if (v65)
        {
          CFDictionarySetValue(v11, @"ids-stun-attribute-clienttime", v65);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1CC9C();
        }

        if ((v20 * 1000.0))
        {
          v66 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
          if (v66)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-clientlatency", v66);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1CD24();
          }
        }

        v78 = 0;
        if (v9 && @"gl-option-stats-sent-packets")
        {
          v78 = CFDictionaryGetValue(v9, @"gl-option-stats-sent-packets");
        }

        v79 = v78;
        v80 = 0;
        if (v9 && @"gl-option-stats-received-packets")
        {
          v80 = CFDictionaryGetValue(v9, @"gl-option-stats-received-packets");
        }

        v81 = v80;
        if (v79 | v81)
        {
          if (v79)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-sent-packets", v79);
          }

          if (v81)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-received-packets", v81);
          }
        }

        else
        {
          v82 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v8, "totalPacketsSentOnLink")}];
          if (v82)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-sent-packets", v82);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1CDAC();
          }

          v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v8, "totalPacketsReceivedOnLink")}];
          if (v98)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-received-packets", v98);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1CE34();
          }
        }

        goto LABEL_317;
      }

      if ([v8 relayProviderType] == 1)
      {
        v38 = [v8 sessionID];
        if (v38)
        {
          CFDictionarySetValue(v11, @"ids-stun-attribute-qr-sessionid", v38);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1D164();
        }
      }

      else
      {
        v41 = [v8 channelNumber];
        v38 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v41)];
        if (v38)
        {
          CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v38);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1C85C();
        }
      }

LABEL_300:

LABEL_317:
      if (v13)
      {
        v130 = [v8 relaySessionKey];
        if (v130)
        {
          CFDictionarySetValue(v11, @"ids-stun-attribute-messageintegrity", v130);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1D0DC();
        }

        v131 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          v141 = a1;
          v142 = 2112;
          *v143 = v130;
          _os_log_impl(&dword_1A7AD9000, v131, OS_LOG_TYPE_DEFAULT, "Msg %04X has relay session key %@", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v133 = a1;
            v134 = v130;
            _IDSLogTransport(@"GL", @"IDS", @"Msg %04X has relay session key %@");
            if (_IDSShouldLog())
            {
              v133 = a1;
              v134 = v130;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Msg %04X has relay session key %@");
            }
          }
        }
      }

      [(IDSStunMessage *)v10 setAttributes:v11, v133, v134, v135];
      [(IDSStunMessage *)v10 setStartTime:v12];
      v16 = v10;
      goto LABEL_330;
    }

    if (a1 > 3814)
    {
      switch(a1)
      {
        case 3815:
          v39 = [v8 channelNumber];
          v40 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v39)];
          if (v40)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v40);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C85C();
          }

          v52 = 0;
          if (v9 && @"gl-option-participant-update-request-type")
          {
            v52 = CFDictionaryGetValue(v9, @"gl-option-participant-update-request-type");
          }

          v53 = [v52 unsignedShortValue];
          v54 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v53];
          if (v54)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-session-state-type", v54);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1CEBC();
          }

          if (v53 > 8 || ((1 << v53) & 0x181) == 0)
          {
            v67 = 0;
            if (v9 && @"gl-option-participant-update-blocked-participantIDs")
            {
              v67 = CFDictionaryGetValue(v9, @"gl-option-participant-update-blocked-participantIDs");
            }

            sub_1A7C30944(v67, v11);
          }

          v68 = 0;
          if (v9 && @"gl-option-participant-update-request-counter")
          {
            v68 = CFDictionaryGetValue(v9, @"gl-option-participant-update-request-counter");
          }

          v69 = [v68 unsignedIntValue];
          v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v69];
          if (v38)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-session-state-counter", v38);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1CF44();
          }

          break;
        case 3816:
          v34 = [v8 channelNumber];
          v35 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v34)];
          if (v35)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v35);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C85C();
          }

          if (v9 && @"gl-option-plugin-operation" && (v47 = CFDictionaryGetValue(v9, @"gl-option-plugin-operation")) != 0)
          {
            v48 = v47;
            CFDictionarySetValue(v11, @"ids-stun-attribute-plugin-operation", v47);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C8E4();
          }

          v49 = 0;
          if (v9 && @"gl-option-plugin-name")
          {
            v49 = CFDictionaryGetValue(v9, @"gl-option-plugin-name");
          }

          v38 = [v49 dataUsingEncoding:4];
          if (v38)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-plugin-name", v38);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C96C();
          }

          if (@"gl-option-plugin-raw-public-key")
          {
            v70 = v9 != 0;
          }

          else
          {
            v70 = 0;
          }

          if (v70)
          {
            v71 = CFDictionaryGetValue(v9, @"gl-option-plugin-raw-public-key");
            if (v71)
            {
              v72 = v71;
              CFDictionarySetValue(v11, @"ids-stun-attribute-raw-public-key", v71);
            }
          }

          break;
        case 3817:
          v22 = [v8 channelNumber];
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v22)];
          if (v23)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v23);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C85C();
          }

          v38 = [(__CFDictionary *)v9 objectForKeyedSubscript:@"gl-option-materials-key"];
          if (v38)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-qr-materials", v38);
          }

          break;
        default:
          goto LABEL_330;
      }

      goto LABEL_300;
    }

    if (a1 != 3812)
    {
      if (a1 != 3813)
      {
        goto LABEL_330;
      }

      if (!v14)
      {
        goto LABEL_317;
      }

      v25 = [v8 channelNumber];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v25)];
      if (v26)
      {
        CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v26);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1C85C();
      }

      v83 = 0;
      if (v9 && @"gl-option-sessioninfo-request-type")
      {
        v83 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-request-type");
      }

      if ([v83 intValue] == 2)
      {
        if (v9)
        {
          if (@"gl-option-sessioninfo-generation-counter")
          {
            v84 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-generation-counter");
            if (v84)
            {
              v85 = v84;
              CFDictionarySetValue(v11, @"ids-stun-attribute-generation-counter", v84);
            }
          }
        }

        v86 = 0;
        if (v9 && @"gl-option-sessioninfo-published-streams")
        {
          v86 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-published-streams");
        }

        v87 = v86;
        v88 = 0;
        if (v9 && @"gl-option-sessioninfo-subscribed-streams")
        {
          v88 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-subscribed-streams");
        }

        v89 = v88;
        v90 = 0;
        if (v9 && @"gl-option-sessioninfo-max-concurrent-streams")
        {
          v90 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-max-concurrent-streams");
        }

        sub_1A7C30760(v87, v89, [v90 intValue], v11);
        if (@"gl-option-sessioninfo-relay-link-id")
        {
          v91 = v9 != 0;
        }

        else
        {
          v91 = 0;
        }

        if (v91)
        {
          v92 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-relay-link-id");
        }

        else
        {
          v92 = 0;
        }

        v105 = [v92 unsignedIntValue];
        if (v105)
        {
          v106 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v105];
          if (v106)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-relay-link-id", v106);
          }
        }
      }

      v107 = 0;
      if (v9 && @"gl-option-sessioninfo-request-id")
      {
        v107 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-request-id");
      }

      v108 = [v107 unsignedIntValue];
      if (v108)
      {
        v109 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v108];
        if (v109)
        {
          CFDictionarySetValue(v11, @"ids-stun-attribute-qr-request-id", v109);
        }
      }

      v110 = 0;
      if (v9 && @"gl-option-sessioninfo-cookie")
      {
        v110 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-cookie");
      }

      v15 = [v110 unsignedIntValue];
      if (!v15)
      {
        goto LABEL_317;
      }

      v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
      if (v38)
      {
        CFDictionarySetValue(v11, @"ids-stun-attribute-qr-cookie", v38);
      }

      goto LABEL_300;
    }

    v31 = [(IDSStunMessage *)v10 transactionID];
    [v8 deriveAES128CTRKeys:v31];

    if ([v8 state] < 3)
    {
      v42 = [v8 relaySessionToken];
      if (v42)
      {
        CFDictionarySetValue(v11, @"ids-stun-attribute-qr-sessiontokenkey", v42);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1CFCC();
      }

      v95 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v95, OS_LOG_TYPE_DEFAULT, "use relay-access-token for info request.", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_242;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_242;
      }

      _IDSLogTransport(@"GL", @"IDS", @"use relay-access-token for info request.");
      if ((_IDSShouldLog() & 1) == 0)
      {
        goto LABEL_242;
      }

      v94 = @"use relay-access-token for info request.";
    }

    else
    {
      v32 = [v8 channelNumber];
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v32)];
      if (v33)
      {
        CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v33);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1C85C();
      }

      v93 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v93, OS_LOG_TYPE_DEFAULT, "use channel-number for info request.", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_242;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_242;
      }

      _IDSLogTransport(@"GL", @"IDS", @"use channel-number for info request.");
      if ((_IDSShouldLog() & 1) == 0)
      {
        goto LABEL_242;
      }

      v94 = @"use channel-number for info request.";
    }

    _IDSLogV(0, @"IDSFoundation", @"GL", v94);
LABEL_242:
    v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:7];
    if (v96)
    {
      CFDictionarySetValue(v11, @"ids-stun-attribute-infoflags", v96);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1D054();
    }

    v97 = [v8 relaySessionKey];
    if (v97)
    {
      CFDictionarySetValue(v11, @"ids-stun-attribute-messageintegrity", v97);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1D0DC();
    }

    goto LABEL_317;
  }

  v24 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "StunUtilCreateMessage failed due to invalid relay candidate pair.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"StunUtilCreateMessage failed due to invalid relay candidate pair.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilCreateMessage failed due to invalid relay candidate pair.");
      }
    }
  }

  v16 = 0;
LABEL_330:

  return v16;
}

uint64_t StunUtilHasValidChannelNumber(void *a1, unsigned int a2, _WORD *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5 || (bzero(v15, 0x5D0uLL), ![v5 getAttribute:12 attribute:v15]))
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v6 = HIWORD(v16);
  if (a2)
  {
    v7 = __rev16(a2);
    if (v6 != v7)
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v12 = v6;
        v13 = 1024;
        v14 = v7;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "channel-number mismatch (%04x != %04x).", buf, 0xEu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"channel-number mismatch (%04x != %04x).");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"channel-number mismatch (%04x != %04x).");
          }
        }
      }

      goto LABEL_11;
    }
  }

  if (a3)
  {
    *a3 = HIWORD(v16);
  }

  v9 = 1;
LABEL_12:

  return v9;
}

uint64_t StunUtilHasValidXorMappedAddress(uint64_t result, void *a2)
{
  __n[185] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    bzero(v4, 0x5D0uLL);
    result = [v3 getAttribute:32 attribute:v4];
    if (result)
    {
      result = IsValidSA(__n);
      if (result)
      {
        if (a2)
        {
          memcpy(a2, __n, LOBYTE(__n[0]));
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t StunUtilHasValidUInt64Attr(uint64_t result, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    bzero(v6, 0x5D0uLL);
    result = [v5 getAttribute:a2 attribute:v6];
    if (a3)
    {
      if (result)
      {
        *a3 = v7;
      }
    }
  }

  return result;
}

uint64_t StunUtilHasValidUInt8Attr(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    bzero(v6, 0x5D0uLL);
    result = [v5 getAttribute:a2 attribute:v6];
    if (a3)
    {
      if (result)
      {
        *a3 = v6[8];
      }
    }
  }

  return result;
}

void *StunUtilHasValidErrorCodeAttr(void *a1, _WORD *a2, char *a3, int *a4)
{
  v4 = a1;
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(v12, 0x5D0uLL);
    v4 = [v4 getAttribute:9 attribute:v12];
    if (v4)
    {
      if (a2)
      {
        *a2 = v14 + 100 * v13;
      }

      if (a3 && a4)
      {
        v8 = v16;
        if (v16 > 127)
        {
          v9 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v11[0] = 67109120;
            v11[1] = v16;
            _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "StunUtilHasValidErrorCodeAttr potential overflow, error code length: %d", v11, 8u);
          }
        }

        else
        {
          *a4 = v16;
          strlcpy(a3, v15, v8 + 1);
        }
      }
    }
  }

  return v4;
}

uint64_t StunUtilDeriveHKDFSha256Keys(void *a1, void *a2, unint64_t a3, void *a4, uint64_t a5)
{
  *&v29[13] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a4;
  memset(v29, 170, 24);
  v12 = [v9 length];
  v13 = [v11 length];
  if (a5 && v12 == 20 && v13 == 12)
  {
    qmemcpy(v28, "QuickRelay KDF", sizeof(v28));
    v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
    v15 = v14;
    if (v10)
    {
      [v14 getUUIDBytes:v29];
      *&v29[8] = bswap64(a3);
      v16 = ids_monotonic_time();
      [v11 bytes];
      Hkdf = CCKDFParametersCreateHkdf();
      if (Hkdf)
      {
        v18 = Hkdf;
        v19 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v27) = v18;
          v20 = "CCKDFParametersCreateHkdf failed with error %d.";
LABEL_17:
          _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 8u);
        }
      }

      else
      {
        [v9 bytes];
        v23 = CCDeriveKey();
        CCKDFParametersDestroy();
        if (!v23)
        {
          v25 = ids_monotonic_time();
          v19 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v27 = v25 - v16;
            _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "HKDF+SHA256 key derivation time: %.6f.", buf, 0xCu);
          }

          v22 = 1;
          goto LABEL_19;
        }

        v19 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v27) = v23;
          v20 = "CCDeriveKey failed with error %d.";
          goto LABEL_17;
        }
      }

      v22 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v21 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "StunUtilDeriveHKDFSha256Keys failed due to invalid session-id.", buf, 2u);
    }
  }

  else
  {
    v15 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "StunUtilDeriveHKDFSha256Keys failed due to invalid parameter.", buf, 2u);
    }
  }

  v22 = 0;
LABEL_20:

  return v22;
}

BOOL StunUtilInitAES128CTR(void *a1, CCOperation a2, const void *a3, CCCryptorRef *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v7 = [a1 bytes];
  v8 = *(v7 + 8);
  iv = *v7;
  v23 = v8;
  v9 = ids_monotonic_time();
  v10 = CCCryptorCreateWithMode(a2, 4u, 0, 0, &iv, a3, 0x10uLL, 0, 0, 0, 2u, a4);
  if (v10)
  {
    v11 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v19) = v10;
      v12 = "CCCryptorCreateWithMode failed for encryption with (%d).";
      v13 = v11;
      v14 = 8;
LABEL_6:
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

  else
  {
    v15 = ids_monotonic_time();
    v11 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *a4;
      *buf = 134218240;
      v19 = v16;
      v20 = 2048;
      v21 = v15 - v9;
      v12 = "AES128-CTR (%p) init time: %.6f.";
      v13 = v11;
      v14 = 22;
      goto LABEL_6;
    }
  }

  return v10 == 0;
}

BOOL StunUtilDoAES128CTR(_CCCryptor *a1, const void *a2, size_t a3, void *a4, size_t *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  dataOutMoved = 0;
  v10 = ids_monotonic_time();
  v11 = CCCryptorUpdate(a1, a2, a3, a4, a3, &dataOutMoved);
  if (v11)
  {
    v12 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v19) = v11;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "CCCryptorUpdate failed to enc/dec with (%d).", buf, 8u);
    }
  }

  else
  {
    v13 = ids_monotonic_time();
    if (a5)
    {
      *a5 = dataOutMoved;
    }

    v12 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
      v15 = [MEMORY[0x1E695DEF0] dataWithBytes:a4 length:*a5];
      *buf = 134218754;
      v19 = a1;
      v20 = 2048;
      v21 = v13 - v10;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "AES128-CTR (%p) time: %.6f (in:%@, out:%@).", buf, 0x2Au);
    }
  }

  return v11 == 0;
}

uint64_t sub_1A7C32F38(CCCryptorRef *a1, CCOperation a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v40 = xmmword_1A7E40DA0;
  v38 = xmmword_1A7E40DB0;
  v39 = 857870592;
  v36 = 0x8877665544332211;
  v37 = -860116327;
  v34 = xmmword_1A7E40DD0;
  v35 = xmmword_1A7E40DC0;
  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v40];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v36 length:12];
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:20];
    v7 = [v4 UUIDString];
    v8 = StunUtilDeriveHKDFSha256Keys(v6, v7, 0x123456789ABCDEFuLL, v5, &v41);

    if (v8)
    {
      if (a2)
      {
        v9 = &v42;
      }

      else
      {
        v9 = &v41;
      }

      v10 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        [MEMORY[0x1E695DEF0] dataWithBytes:&v35 length:16];
        v11 = v25 = v9;
        v12 = [MEMORY[0x1E695DEF0] dataWithBytes:&v41 length:16];
        [MEMORY[0x1E695DEF0] dataWithBytes:&v34 length:16];
        v14 = v13 = a1;
        v15 = [MEMORY[0x1E695DEF0] dataWithBytes:&v42 length:16];
        *buf = 138413058;
        v27 = v11;
        v28 = 2112;
        v29 = v12;
        v30 = 2112;
        v31 = v14;
        v32 = 2112;
        v33 = v15;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "encKeyOut:(%@, %@), encKeyIn:(%@, %@).", buf, 0x2Au);

        a1 = v13;
        v9 = v25;
      }

      v16 = v35 == v41 && *(&v35 + 1) == *(&v41 + 1);
      if (v16 && (v34 == v42 ? (v17 = *(&v34 + 1) == *(&v42 + 1)) : (v17 = 0), v17))
      {
        inited = StunUtilInitAES128CTR(v5, a2, v9, a1);
        v18 = +[IDSFoundationLog Stun];
        v23 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (inited)
        {
          if (v23)
          {
            v24 = *a1;
            *buf = 134217984;
            v27 = v24;
            _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "AES128-CTR cryptor instance is created successfully: %p.", buf, 0xCu);
          }

          v20 = 1;
          goto LABEL_26;
        }

        if (v23)
        {
          *buf = 0;
          v19 = "failed to create AES128-CTR encoder.";
          goto LABEL_24;
        }
      }

      else
      {
        v18 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v19 = "key derivation failed with mismatch.";
LABEL_24:
          _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
        }
      }
    }

    else
    {
      v18 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "StunUtilDeriveHKDFSha256Keys failed.";
        goto LABEL_24;
      }
    }

    v20 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v5 = +[IDSFoundationLog Stun];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "_StunUtilTestHKDFSha256KeysDerivationAndInit failed due to invalid sessionUUID.", buf, 2u);
  }

  v20 = 0;
LABEL_27:

  return v20;
}

uint64_t StunUtilTestAES128CTREnc(CCCryptorRef *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  qmemcpy(v41, "Client Attribute Value 1", sizeof(v41));
  v40 = 0x402DE734DE3646B1;
  v38 = 0u;
  v39 = xmmword_1A7E40DF0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v14 = 0;
  v15 = 0;
  qmemcpy(v30, "Client Attribute Value 2", 24);
  v27 = 0u;
  v28 = xmmword_1A7E40E00;
  v29 = 0xE7B60E32A2F3586;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  if ((sub_1A7C32F38(a1, 0) & 1) == 0)
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v7 = "_StunUtilTestHKDFSha256KeysDerivationAndInit failed.";
    v8 = v4;
    v9 = 2;
LABEL_19:
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    goto LABEL_20;
  }

  if (!StunUtilDoAES128CTR(*a1, v41, 0x18uLL, &v31, &v15))
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 136315138;
    v17 = v41;
    v7 = "StunUtilDoAES128CTR failed for %s.";
    goto LABEL_18;
  }

  if (v15 != 24 || (v39 == v31 ? (v2 = *(&v39 + 1) == *(&v31 + 1)) : (v2 = 0), v2 ? (v3 = v40 == v32) : (v3 = 0), !v3))
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:
      v10 = 0;
      goto LABEL_21;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v31 length:v15];
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:24];
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
LABEL_13:
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "StunUtilDoAES128CTR result mismatch. (output:%@, expected:%@).", buf, 0x16u);

    goto LABEL_20;
  }

  if (!StunUtilDoAES128CTR(*a1, v30, 0x18uLL, &v20, &v14))
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 136315138;
    v17 = v30;
    v7 = "StunUtilDoAES128CTR failed for %s.";
LABEL_18:
    v8 = v4;
    v9 = 12;
    goto LABEL_19;
  }

  if (v14 != 24 || (v28 == v20 ? (v12 = *(&v28 + 1) == *(&v20 + 1)) : (v12 = 0), v12 ? (v13 = v29 == v21) : (v13 = 0), !v13))
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v20 length:v14];
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v28 length:24];
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    goto LABEL_13;
  }

  v4 = +[IDSFoundationLog Stun];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "StunUtilTestAES128CTREnc Success!", buf, 2u);
  }

  v10 = 1;
LABEL_21:

  return v10;
}

uint64_t StunUtilTestAES128CTRDec(CCCryptorRef *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = xmmword_1A7E40E10;
  v38 = 0xA2B056FE88BACF07;
  v35 = 0u;
  qmemcpy(v36, "Server Attribute Value 1", 24);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v11 = 0;
  v12 = 0;
  v26 = xmmword_1A7E40E30;
  v27 = 0x4CF3FC3300AF00CBLL;
  v24 = 0u;
  qmemcpy(v25, "Server Attribute Value 2", 24);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  if ((sub_1A7C32F38(a1, 1u) & 1) == 0)
  {
    v4 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "_StunUtilTestHKDFSha256KeysDerivationAndInit failed.", buf, 2u);
    }

    goto LABEL_20;
  }

  if (!StunUtilDoAES128CTR(*a1, &v37, 0x18uLL, &v28, &v12))
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v37 length:24];
    *buf = 138412290;
    v14 = v5;
LABEL_18:
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "StunUtilDoAES128CTR failed for %@.", buf, 0xCu);
    goto LABEL_19;
  }

  if (v12 != 24 || (*&v36[0] == v28 ? (v2 = *(&v36[0] + 1) == *(&v28 + 1)) : (v2 = 0), v2 ? (v3 = *&v36[1] == v29) : (v3 = 0), !v3))
  {
    v4 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v28 length:v12];
      v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v36 length:24];
      *buf = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
LABEL_13:
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "StunUtilDoAES128CTR result mismatch. (output:%@, expected:%@).", buf, 0x16u);

LABEL_19:
    }

LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if (!StunUtilDoAES128CTR(*a1, &v26, 0x18uLL, &v17, &v11))
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v26 length:24];
    *buf = 138412290;
    v14 = v5;
    goto LABEL_18;
  }

  if (v11 != 24 || (*&v25[0] == v17 ? (v9 = *(&v25[0] + 1) == *(&v17 + 1)) : (v9 = 0), v9 ? (v10 = *&v25[1] == v18) : (v10 = 0), !v10))
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v17 length:v11];
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v25 length:24];
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    goto LABEL_13;
  }

  v4 = +[IDSFoundationLog Stun];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "StunUtilTestAES128CTRDec Success!", buf, 2u);
  }

  v7 = 1;
LABEL_21:

  return v7;
}

uint64_t StunUtilHasValidAttrLength(uint64_t a1, int a2, unint64_t a3)
{
  v3 = a2 >> 63;
  if (__CFADD__(a1, a2))
  {
    ++v3;
  }

  v4 = ((v3 & 1) == 0) & ~(v3 << 63 >> 63 != v3);
  if (a1 + a2 <= a3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

id sub_1A7C34564(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4[0] = MEMORY[0x1E695E110];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];

  return v1;
}

uint64_t IDSQRProtoParticipantUpdateRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &OBJC_IVAR___IDSMessageSendMetric__metrics;
    v6 = 0x1E77DB000uLL;
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v48) = 0;
        v10 = [a2 position] + 1;
        if (v10 >= [a2 position] && (v11 = objc_msgSend(a2, "position") + 1, v11 <= objc_msgSend(a2, "length")))
        {
          v12 = [a2 data];
          [v12 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [a2 hasError] ? 0 : v9;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 != 3)
      {
        if (v15 == 16)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v48) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v48 & 0x7F) << v24;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v13 = v25++ >= 9;
            if (v13)
            {
              v30 = 0;
              goto LABEL_64;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_64:
          v38 = 44;
          goto LABEL_69;
        }

        goto LABEL_47;
      }

      v37 = objc_alloc_init(*(v6 + 3480));
      objc_storeStrong((a1 + 32), v37);
      v48 = 0xAAAAAAAAAAAAAAAALL;
      v49 = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !IDSQRProtoMaterialReadFrom(v37, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_70:
      v39 = [a2 position];
      if (v39 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v15 == 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      while (1)
      {
        LOBYTE(v48) = 0;
        v34 = [a2 position] + 1;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v33 |= (v48 & 0x7F) << v31;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v13 = v32++ >= 9;
        if (v13)
        {
          v30 = 0;
          goto LABEL_68;
        }
      }

      if ([a2 hasError])
      {
        v30 = 0;
      }

      else
      {
        v30 = v33;
      }

LABEL_68:
      v38 = v5[561];
LABEL_69:
      *(a1 + v38) = v30;
      goto LABEL_70;
    }

    if (v15 == 2)
    {
      if ((v14 & 7) == 2)
      {
        v48 = 0xAAAAAAAAAAAAAAAALL;
        v49 = 0xAAAAAAAAAAAAAAAALL;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v17 = [a2 position];
          if (v17 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v50 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v50 & 0x7F) << v18;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v13 = v19++ >= 9;
            if (v13)
            {
              goto LABEL_35;
            }
          }

          [a2 hasError];
LABEL_35:
          PBRepeatedUInt64Add();
        }

        PBReaderRecallMark();
      }

      else
      {
        v40 = v6;
        v41 = v5;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v48) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v48 & 0x7F) << v42;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v13 = v43++ >= 9;
          if (v13)
          {
            goto LABEL_83;
          }
        }

        [a2 hasError];
LABEL_83:
        PBRepeatedUInt64Add();
        v5 = v41;
        v6 = v40;
      }

      goto LABEL_70;
    }

LABEL_47:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_70;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoPropertyOverrideReadFrom(uint64_t a1, void *a2)
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
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 1)
      {
        break;
      }

      if (v13 == 2)
      {
        [a1 clearOneofValuesForPropertyValue];
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 32) |= 2u;
        *(a1 + 12) = 1;
        *(a1 + 32) |= 8u;
        while (1)
        {
          v47 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v47 & 0x7F) << v27;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            LOBYTE(v33) = 0;
            goto LABEL_63;
          }
        }

        v33 = (v29 != 0) & ~[a2 hasError];
LABEL_63:
        *(a1 + 28) = v33;
        goto LABEL_74;
      }

      if (v13 != 3)
      {
        if (v13 != 4)
        {
          goto LABEL_60;
        }

        [a1 clearOneofValuesForPropertyValue];
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 2u;
        *(a1 + 12) = 3;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v48 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v48 & 0x7F) << v14;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_68;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_68:
        v42 = 24;
LABEL_73:
        *(a1 + v42) = v20;
        goto LABEL_74;
      }

      [a1 clearOneofValuesForPropertyValue];
      *(a1 + 32) |= 2u;
      *(a1 + 12) = 2;
      v34 = PBReaderReadString();
      v35 = *(a1 + 16);
      *(a1 + 16) = v34;

LABEL_74:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (!v13)
    {
      v36 = 0;
      while (1)
      {
        v46 = 0;
        v37 = [a2 position] + 1;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
        {
          v39 = [a2 data];
          [v39 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        if ((v46 & 0x80000000) == 0)
        {
          break;
        }

        if (v36++ > 8)
        {
          goto LABEL_74;
        }
      }

      [a2 hasError];
      goto LABEL_74;
    }

    if (v13 != 1)
    {
LABEL_60:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_74;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(a1 + 32) |= 1u;
    while (1)
    {
      v45 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v23 |= (v45 & 0x7F) << v21;
      if ((v45 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v11 = v22++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_72;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v23;
    }

LABEL_72:
    v42 = 8;
    goto LABEL_73;
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7C39124(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog QRProto_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "created %@ proto message %@", &v5, 0x16u);
  }
}

void sub_1A7C3A534(void *a1, void *a2, void *a3, unsigned int a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addPublishedStreamIds:{objc_msgSend(*(*(&v40 + 1) + 8 * i), "unsignedShortValue")}];
      }

      v10 = [v7 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v10);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v8;
  v13 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = v13;
  v15 = *v37;
  while (2)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*v37 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v36 + 1) + 8 * j);
      v18 = [v17 participantID];
      v19 = [v18 unsignedLongLongValue];

      v20 = [v17 anyParticipant];
      v21 = [v17 anyStream];
      v22 = v21;
      if (v20 && (v21 & 1) != 0)
      {
        [v6 setAllWildcardSubscription:1];
        goto LABEL_33;
      }

      v23 = objc_alloc_init(IDSQRProtoSubscribedStream);
      v24 = v23;
      if ((v20 | v22))
      {
        [(IDSQRProtoSubscribedStream *)v23 setWildcardSubscription:1];
        if (v20)
        {
LABEL_17:
          if (v22)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }
      }

      else if (v20)
      {
        goto LABEL_17;
      }

      [(IDSQRProtoSubscribedStream *)v24 setPeerParticipantId:v19];
      if (v22)
      {
        goto LABEL_29;
      }

LABEL_21:
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v25 = [v17 streamArray];
      v26 = [v25 countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v33;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v33 != v28)
            {
              objc_enumerationMutation(v25);
            }

            -[IDSQRProtoSubscribedStream addPeerStreamIds:](v24, "addPeerStreamIds:", [*(*(&v32 + 1) + 8 * k) unsignedShortValue]);
          }

          v27 = [v25 countByEnumeratingWithState:&v32 objects:v44 count:16];
        }

        while (v27);
      }

LABEL_29:
      [v6 addSubscribedStreams:v24];
    }

    v14 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_33:

  [v6 setMaxConcurrentStreams:a4];
}

void sub_1A7C3A830(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog QRProto_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "_setupAllocbindRequest: materials: %@", &v4, 0xCu);
  }
}

void sub_1A7C3B9EC(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog QRProto_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "_setupPutmaterialRequest: materials: %@", &v4, 0xCu);
  }
}

void sub_1A7C3C304(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog QRProto_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "created proto message %@ with %@", &v5, 0x16u);
  }
}

__CFDictionary *ProtoUtilProcessStreamInfo(void *a1, unsigned int a2, int a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a1;
  theDict = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v4 hasGenerationCounter])
  {
    v5 = a3;
    v6 = [v4 generationCounter];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    if (v7)
    {
      CFDictionarySetValue(theDict, @"stream-info-generation-counter", v7);
    }

    a3 = v5;
  }

  v8 = [v4 peerSubscribedStreamIdsCount];
  v9 = [v4 peerSubscribedStreamIds];
  v42 = a3;
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v55) = v8;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "receive %d peer-sub-streams", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v39 = v8;
      _IDSLogTransport(@"GL", @"IDS", @"receive %d peer-sub-streams");
      if (_IDSShouldLog())
      {
        v39 = v8;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive %d peer-sub-streams");
      }
    }
  }

  if (v8 < 1)
  {
    theArray = 0;
  }

  else
  {
    theArray = 0;
    v11 = v8 & 0x7FFFFFFF;
    do
    {
      v13 = *v9++;
      v12 = v13;
      if (theArray || (theArray = objc_alloc_init(MEMORY[0x1E695DF70])) != 0)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{v12, v39}];
        v15 = v14 == 0;

        if (!v15)
        {
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v12];
          CFArrayAppendValue(theArray, v16);
        }
      }

      else
      {
        theArray = 0;
      }

      --v11;
    }

    while (v11);
  }

  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = theArray;
    _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "processed peer-sub-stream: %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v39 = theArray;
      _IDSLogTransport(@"GL", @"IDS", @"processed peer-sub-stream: %@.");
      if (_IDSShouldLog())
      {
        v39 = theArray;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"processed peer-sub-stream: %@.");
      }
    }
  }

  v18 = [v4 peerPublishedStreamsCount];
  v19 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v55) = v18;
    _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "receive %d peer-pub-streams", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v40 = v18;
      _IDSLogTransport(@"GL", @"IDS", @"receive %d peer-pub-streams");
      if (_IDSShouldLog())
      {
        v40 = v18;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive %d peer-pub-streams");
      }
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [v4 peerPublishedStreams];
  v48 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v48)
  {
    v20 = 0;
    v47 = *v50;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v50 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v49 + 1) + 8 * i);
        v23 = [v22 peerStreamIdsCount];
        v24 = [v22 peerStreamIds];
        if (v23 < 1)
        {
          v26 = 0;
        }

        else
        {
          v25 = v24;
          v26 = 0;
          v27 = v23 & 0x7FFFFFFF;
          do
          {
            v29 = *v25++;
            v28 = v29;
            if (v26 || (v26 = objc_alloc_init(MEMORY[0x1E695DF70])) != 0)
            {
              v30 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v28];
              v31 = v30 == 0;

              if (!v31)
              {
                v32 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v28];
                CFArrayAppendValue(v26, v32);
              }
            }

            --v27;
          }

          while (v27);
        }

        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v22, "peerParticipantId")}];
        v34 = [IDSQRParticipantStreams streamWithParticipantID:v33 streamArray:v26 anyParticipant:0 anyStream:0];

        if (v20 || (v20 = objc_alloc_init(MEMORY[0x1E695DF70])) != 0)
        {
          if (v34)
          {
            CFArrayAppendValue(v20, v34);
          }
        }
      }

      v48 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v48);
  }

  else
  {
    v20 = 0;
  }

  v35 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = v20;
    _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "processed peer-pub-stream: %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v41 = v20;
      _IDSLogTransport(@"GL", @"IDS", @"processed peer-pub-stream: %@.");
      if (_IDSShouldLog())
      {
        v41 = v20;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"processed peer-pub-stream: %@.");
      }
    }
  }

  if (theArray)
  {
    CFDictionarySetValue(theDict, @"stream-info-peer-subscribed-streams", theArray);
  }

  if (v20)
  {
    CFDictionarySetValue(theDict, @"stream-info-peer-published-streams", v20);
  }

  v36 = [MEMORY[0x1E696AD98] numberWithChar:{a2, v41}];
  if (v36)
  {
    CFDictionarySetValue(theDict, @"gl-option-linkid", v36);
  }

  if (v42 >= 1)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithChar:?];
    if (v37)
    {
      CFDictionarySetValue(theDict, @"gl-option-sessioninfo-link-id-to-query", v37);
    }
  }

  return theDict;
}

__CFArray *sub_1A7C3D274(int a1, uint64_t *a2)
{
  if (a1 < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = a1;
    do
    {
      v6 = *a2++;
      v5 = v6;
      if (v3 || (v3 = objc_alloc_init(MEMORY[0x1E695DF70])) != 0)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];

        if (v7)
        {
          v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
          CFArrayAppendValue(v3, v8);
        }
      }

      --v4;
    }

    while (v4);
  }

  return v3;
}

id ProtoUtilProcessLightweightParticipants(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 lightweightParticipantIdListsCount];
  v3 = sub_1A7C3D274(v2, [v1 lightweightParticipantIdLists]);
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v7 = v2;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "received %d lightweight participants: %@", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"received %d lightweight participants: %@");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"received %d lightweight participants: %@");
      }
    }
  }

  return v3;
}

__CFArray *sub_1A7C3D4C0(void *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v25 = a2;
  v6 = a3;
  theArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = v25;
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v28;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = [*(*(&v27 + 1) + 8 * j) unsignedLongLongValue];
              v14 |= v17 == [v10 participantId];
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        if ([v6 count])
        {
          v18 = 0;
          do
          {
            v19 = [v6 objectAtIndexedSubscript:v18];
            v20 = [v19 unsignedLongLongValue];
            v21 = v20 == [v10 participantId];

            v14 |= v21;
            ++v18;
          }

          while ([v6 count] > v18);
        }

        if ((v14 & 1) == 0 && theArray && v10)
        {
          CFArrayAppendValue(theArray, v10);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  return theArray;
}

CFMutableDictionaryRef ProtoUtilProcessLeftParticipants(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = sub_1A7C3D4C0(a1, a2, a3);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v22 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 participantId];
        v9 = [v7 clientContextBlob];
        v10 = [v9 materialInfos];
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v24 + 1) + 8 * j) materialContent];
              v18 = v17;
              if (v11 && v17)
              {
                CFArrayAppendValue(v11, v17);
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
        [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:v19];
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
  }

  return Mutable;
}

__CFArray *sub_1A7C3D994(void *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v25 = a2;
  v6 = a3;
  theArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = v25;
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v28;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = [*(*(&v27 + 1) + 8 * j) unsignedLongLongValue];
              v14 |= v17 == [v10 participantId];
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        if ([v6 count])
        {
          v18 = 0;
          do
          {
            v19 = [v6 objectAtIndexedSubscript:v18];
            v20 = [v19 unsignedLongLongValue];
            v21 = v20 == [v10 participantId];

            v14 |= v21;
            ++v18;
          }

          while ([v6 count] > v18);
        }

        if ((v14 & 1) != 0 && theArray && v10)
        {
          CFArrayAppendValue(theArray, v10);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  return theArray;
}

CFMutableDictionaryRef ProtoUtilProcessjoinedParticipants(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = sub_1A7C3D994(a1, a2, a3);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v22 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 participantId];
        v9 = [v7 clientContextBlob];
        v10 = [v9 materialInfos];
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v24 + 1) + 8 * j) materialContent];
              v18 = v17;
              if (v11 && v17)
              {
                CFArrayAppendValue(v11, v17);
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
        [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:v19];
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
  }

  return Mutable;
}

CFMutableDictionaryRef ProtoUtilProcessUpdatedParticipants(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = sub_1A7C3D994(a1, a2, a3);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v22 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 participantId];
        v9 = [v7 clientContextBlob];
        v10 = [v9 materialInfos];
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v24 + 1) + 8 * j) materialContent];
              v18 = v17;
              if (v11 && v17)
              {
                CFArrayAppendValue(v11, v17);
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
        [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:v19];
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
  }

  return Mutable;
}

id ProtoUtilProcessActiveParticipantsFromInfo(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 activeParticipantsCount];
  v3 = sub_1A7C3D274(v2, [v1 activeParticipants]);
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v7 = v2;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "received %d active participants: %@", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"received %d active participants: %@");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"received %d active participants: %@");
      }
    }
  }

  return v3;
}