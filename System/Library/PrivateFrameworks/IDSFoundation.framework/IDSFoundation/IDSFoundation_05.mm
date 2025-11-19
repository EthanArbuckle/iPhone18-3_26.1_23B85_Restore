void sub_1A7C907E4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7C90950;
    block[3] = &unk_1E77E2878;
    block[4] = a1[4];
    v13 = v5;
    v14 = a1[5];
    v15 = a1[6];
    dispatch_async(v7, block);

    v8 = v13;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A7C909FC;
    v9[3] = &unk_1E77DD0F0;
    v11 = a1[6];
    v10 = v6;
    dispatch_async(v7, v9);

    v8 = v11;
  }
}

void sub_1A7C90950(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A7C909EC;
  v4[3] = &unk_1E77E2850;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 q_groupFromRecord:v2 inContext:v3 completion:v4];
}

uint64_t IDSQRProtoGetMaterialRequestReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        v13 = objc_alloc_init(IDSQRProtoMaterialOwner);
        [a1 addMaterialOwners:v13];
        v16[0] = 0xAAAAAAAAAAAAAAAALL;
        v16[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialOwnerReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7C92990(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (v4 == 1)
  {
    v9 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1A7E1F834(v3, v9);
    }
  }

  else if (!v4)
  {
    v5 = [v3 value];
    v6 = *(*(a1 + 32) + 8);
    v7 = [*(a1 + 40) rtcType];
    v8 = [*(a1 + 40) dictionaryRepresentation];
    [v5 sendMessageWithCategory:v6 type:v7 payload:v8 error:0];
  }
}

void IDSCopyPacketLog(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = NSHomeDirectory();
    v3 = [v2 stringByAppendingString:@"/Library/IdentityServices/PacketLogs/"];

    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = 0;
    [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v15];
    v5 = v15;

    if (v5)
    {
      v6 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "Could not get destination directory for packet log: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Could not get destination directory for packet log: %@");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Could not get destination directory for packet log: %@");
          }
        }
      }
    }

    else
    {
      v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
      v8 = [v1 lastPathComponent];
      v9 = [v7 URLByAppendingPathComponent:v8];

      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v9;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Writing packet log to %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v13 = v9;
          _IDSLogTransport(@"GL", @"IDS", @"Writing packet log to %@");
          if (_IDSShouldLog())
          {
            v13 = v9;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Writing packet log to %@");
          }
        }
      }

      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v14 = 0;
      [v11 copyItemAtURL:v1 toURL:v9 error:&v14];
      v5 = v14;

      if (v5)
      {
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v5;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "Could not copy packet log: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"Could not copy packet log: %@");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Could not copy packet log: %@");
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A7C92FE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      IDSTransportThreadRemoveSocket(v2);
      v2 = *(a1 + 32);
    }

    close(v2);
  }

  result = *(a1 + 36);
  if (result != -1)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      IDSTransportThreadRemoveSocket(result);
      LODWORD(result) = *(a1 + 36);
    }

    return close(result);
  }

  return result;
}

uint64_t sub_1A7C93B48()
{
  v0 = *__error();
  result = 14;
  if (v0 <= 53)
  {
    if (v0 <= 48)
    {
      if (v0 == 35)
      {
        return result;
      }

      if (v0 != 39)
      {
        if (v0 == 40)
        {
          return 4;
        }

        return 11;
      }

      return 6;
    }

    if ((v0 - 49) >= 3)
    {
      return 11;
    }

    return 3;
  }

  if (v0 > 56)
  {
    if ((v0 - 64) >= 2)
    {
      if (v0 == 57)
      {
        return 6;
      }

      return 11;
    }

    return 3;
  }

  if (v0 == 54)
  {
    return 2;
  }

  if (v0 != 55)
  {
    return 5;
  }

  return result;
}

uint64_t IDSQRProtoParticipantUpdateIndicationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v50[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50[0] & 0x7F) << v5;
        if ((v50[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 14)
      {
        if (v13 == 15)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v50[0] & 0x7F) << v34;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v40 = 0;
              goto LABEL_78;
            }
          }

          if ([a2 hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v36;
          }

LABEL_78:
          *(a1 + 32) = v40;
          goto LABEL_91;
        }

        if (v13 == 16)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v50[0] & 0x7F) << v21;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_73;
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

LABEL_73:
          v41 = 44;
          goto LABEL_74;
        }
      }

      else
      {
        if (v13 == 3)
        {
          if ((v12 & 7) == 2)
          {
            v50[0] = 0xAAAAAAAAAAAAAAAALL;
            v50[1] = 0xAAAAAAAAAAAAAAAALL;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v27 = [a2 position];
              if (v27 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v28 = 0;
              v29 = 0;
              v30 = 0;
              while (1)
              {
                v51 = 0;
                v31 = [a2 position] + 1;
                if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
                {
                  v33 = [a2 data];
                  [v33 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v30 |= (v51 & 0x7F) << v28;
                if ((v51 & 0x80) == 0)
                {
                  break;
                }

                v28 += 7;
                v11 = v29++ >= 9;
                if (v11)
                {
                  goto LABEL_56;
                }
              }

              [a2 hasError];
LABEL_56:
              PBRepeatedUInt64Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            while (1)
            {
              LOBYTE(v50[0]) = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v50[0] & 0x7F) << v42;
              if ((v50[0] & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                goto LABEL_90;
              }
            }

            [a2 hasError];
LABEL_90:
            PBRepeatedUInt64Add();
          }

          goto LABEL_91;
        }

        if (v13 == 4)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v50[0] & 0x7F) << v14;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_69;
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

LABEL_69:
          v41 = 40;
LABEL_74:
          *(a1 + v41) = v20;
          goto LABEL_91;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_91:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1A7C97AE0(_DWORD **a1, _WORD *a2, unint64_t *a3, _BYTE *a4)
{
  v4 = 0;
  if (!a1)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  if (!a2)
  {
    return v4;
  }

  v5 = *a1;
  if (!*a1)
  {
    return v4;
  }

  v4 = *a2;
  if (!*a2)
  {
    return v4;
  }

  v6 = *v5;
  if (v6 > 0x3F)
  {
    v8 = v6 >> 6;
    if (v8 == 2)
    {
      if (v4 >= 4)
      {
        v6 = bswap32(*v5 & 0xFFFFFF7F);
        v7 = 4;
        goto LABEL_8;
      }
    }

    else if (v8 == 1)
    {
      if (v4 != 1)
      {
        v6 = bswap32(*v5 & 0xFFBF) >> 16;
        v7 = 2;
        goto LABEL_8;
      }
    }

    else if (v4 >= 8)
    {
      v6 = bswap64(*v5 & 0xFFFFFFFFFFFFFF3FLL);
      v7 = 8;
      goto LABEL_8;
    }

    return 0;
  }

  v7 = 1;
LABEL_8:
  *a3 = v6;
  *a1 = (v5 + v7);
  *a2 = v4 - v7;
  if (a4)
  {
    *a4 = v7;
  }

  return 1;
}

BOOL sub_1A7C97ED0(uint64_t a1, int a2, int a3, void *__src, unint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  if (16 - v7 >= a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = 16 - v7;
  }

  memcpy((v6 + v7 + 56), __src, v8);
  *(*(a1 + 32) + 72) += v8;
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _parseHeader];
  return (*(*(*(a1 + 40) + 8) + 24) & 1) == 0;
}

void sub_1A7C97F54(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (v11)
  {
    objc_storeStrong((*(a1 + 32) + 88), a5);
    v12 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) connection];
      v27 = 134218498;
      id = nw_connection_get_id();
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "[C%llu] _readHeaderWithCompletionHandler done, data %@ error %@", &v27, 0x20u);
    }
  }

  else if (a4)
  {
    error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
    v15 = *(a1 + 32);
    v16 = *(v15 + 88);
    *(v15 + 88) = error_with_inferred_domain;
  }

  v17 = *(a1 + 32);
  if (v9)
  {
    v18 = *(v17 + 80);
    if (v18)
    {
      concat = dispatch_data_create_concat(v18, v9);
      v20 = *(a1 + 32);
      v21 = *(v20 + 80);
      *(v20 + 80) = concat;
    }

    else
    {
      v26 = v9;
      v21 = *(v17 + 80);
      *(v17 + 80) = v26;
    }

    [*(a1 + 32) _readHeader:v9 completionHandler:*(a1 + 40)];
  }

  else
  {
    v22 = *(v17 + 88);
    if (!v22)
    {
      v23 = nw_error_create_error_with_inferred_domain();
      v24 = *(a1 + 32);
      v25 = *(v24 + 88);
      *(v24 + 88) = v23;

      v17 = *(a1 + 32);
      v22 = *(v17 + 88);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, 0, *(v17 + 72) == 0, v22);
  }
}

void sub_1A7C98294(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a5;
  v10 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v30 = [*(a1 + 32) connection];
    v31 = 134218498;
    id = nw_connection_get_id();
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v9;
    _os_log_debug_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEBUG, "[C%llu] _readWithCompletionHandler done, data %@ error %@", &v31, 0x20u);
  }

  if (v9)
  {
    v11 = *(a1 + 32);
    v12 = v9;
    v13 = *(v11 + 88);
    *(v11 + 88) = v12;
  }

  else
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
    v15 = *(a1 + 32);
    v13 = *(v15 + 88);
    *(v15 + 88) = error_with_inferred_domain;
  }

LABEL_8:
  if (!v8)
  {
    if (!*(*(a1 + 32) + 88))
    {
      v20 = nw_error_create_error_with_inferred_domain();
      v21 = *(a1 + 32);
      v22 = *(v21 + 88);
      *(v21 + 88) = v20;
    }

    v19 = *(*(a1 + 40) + 16);
    goto LABEL_14;
  }

  size = dispatch_data_get_size(v8);
  v17 = *(a1 + 32);
  v18 = *(v17 + 48);
  if (v18 > size)
  {
    *(v17 + 48) = v18 - size;
    v19 = *(*(a1 + 40) + 16);
LABEL_14:
    v19();
    goto LABEL_21;
  }

  if (v18 == size)
  {
    subrange = v8;
  }

  else
  {
    v23 = size;
    subrange = dispatch_data_create_subrange(v8, 0, v18);
    v25 = dispatch_data_create_subrange(v8, *(*(a1 + 32) + 48), v23 - *(*(a1 + 32) + 48));
    v26 = *(a1 + 32);
    v27 = *(v26 + 80);
    *(v26 + 80) = v25;
  }

  v28 = 0;
  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 16) = 0;
  v29 = *(a1 + 32);
  if (!v29[10])
  {
    v28 = v29[11];
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v29[3], subrange, 1, v28);

LABEL_21:
}

void sub_1A7C985A8(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  error_with_inferred_domain = v9;
  if (v8)
  {
    concat = dispatch_data_create_concat(*(a1 + 32), v8);
    if (a4)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      [*(a1 + 40) _readCapsuleWithExistingData:concat completionHandler:*(a1 + 48)];
    }
  }

  else
  {
    if (!v9)
    {
      error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
    }

    v12 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1A7E20368(v12);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1A7C98794(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1A7C9882C;
  v2[3] = &unk_1E77E2988;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _readCapsuleWithExistingData:MEMORY[0x1E69E9668] completionHandler:v2];
}

_DWORD *IDSHC_CreateContext(void *a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v29 = *MEMORY[0x1E69E9840];
  result = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
  v15 = result;
  if (result)
  {
    *result = a2;
    result[1] = a3;
    result[2] = bswap32(a5 | (a4 << 16));
    result[3] = a6;
    result[4] = a7;
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110400;
      v18 = a2;
      v19 = 1024;
      v20 = a3;
      v21 = 1024;
      v22 = a4;
      v23 = 1024;
      v24 = a5;
      v25 = 1024;
      v26 = a6;
      v27 = 1024;
      v28 = a7;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "CreateContext - p:%u c:%u s_port:%u d_port:%u seq:%u ack:%u", buf, 0x26u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        result = _IDSLogV(0, @"IDSFoundation", @"IDSHC", @"CreateContext - p:%u c:%u s_port:%u d_port:%u seq:%u ack:%u");
      }
    }
  }

  *a1 = v15;
  return result;
}

void IDSHC_RemoveContext(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t IDSHC_Compress(_DWORD *a1, uint64_t *a2, int *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a1 != 6)
  {
    if (*a1 != 17)
    {
      return 2;
    }

    result = 0;
    *a2 += 8;
    v4 = *a3 - 8;
    goto LABEL_16;
  }

  v5 = *a2;
  v6 = *(*a2 + 12);
  if (v6 > 0x4F)
  {
    result = 0;
    v9 = 6;
    if ((*(v5 + 13) & 0x20) != 0)
    {
      v10 = -6;
    }

    else
    {
      v9 = 8;
      v10 = -8;
    }

    v11 = v5 + v9;
    v12 = *(v5 + 4);
    *(v11 + 8) = *(v5 + 12);
    *v11 = v12;
    v4 = v10 + *a3;
    *a2 = v11;
LABEL_16:
    *a3 = v4;
    return result;
  }

  v7 = (v6 >> 2) & 0x3C;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = v7;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "IDSCompressTCPPacket2 - invalid TCP header length %d.", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"IDSHC", @"IDSCompressTCPPacket2 - invalid TCP header length %d.");
    }
  }

  return 3;
}

uint64_t IDSHC_DecompressSimple(uint64_t **a1, _DWORD *a2, _DWORD *a3)
{
  if (*a3 == 17)
  {
    v7 = *a1;
    *(v7-- - 2) = a3[2];
    *(v7 + 2) = bswap32(*a2 + 8) >> 16;
    *(v7 + 3) = 0;
    *a1 = v7;
    v8 = *a2 + 8;
  }

  else
  {
    if (*a3 != 6)
    {
      return 2;
    }

    v3 = *a1;
    v4 = a3[2];
    if ((*(*a1 + 9) & 0x20) != 0)
    {
      *(v3 - 6) = v4;
      v5 = (v3 - 6);
      v10 = *v3;
      *(v3 + 6) = *(v3 + 2);
      *(v3 - 2) = v10;
      *(v3 + 5) = 0;
      v6 = 6;
    }

    else
    {
      *(v3 - 2) = v4;
      v5 = v3 - 1;
      *(v3 - 4) = *v3;
      *(v3 + 4) = *(v3 + 2);
      v6 = 8;
    }

    v8 = *a2 + v6;
    *a1 = v5;
  }

  result = 0;
  *a2 = v8;
  return result;
}

uint64_t sub_1A7C99798(uint64_t a1, int a2)
{
  *&v26[5] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (v4 != pthread_self())
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a1;
      *buf = 134218240;
      v24 = v6;
      v25 = 2048;
      *v26 = pthread_self();
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "should assert real time mode on thread %p, not %p", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        pthread_self();
        _IDSLogTransport(@"TPThread", @"IDS", @"should assert real time mode on thread %p, not %p");
        if (_IDSShouldLog())
        {
          pthread_self();
          _IDSLogV(0, @"IDSFoundation", @"TPThread", @"should assert real time mode on thread %p, not %p");
        }
      }
    }

    if (isRunningTests())
    {
      throwsIDSAbortException();
    }

    goto LABEL_47;
  }

  v7 = *(a1 + 80);
  if (a2)
  {
    *(a1 + 80) = v7 + 1;
    if (v7 < 1)
    {
      v22 = -1431655766;
      sub_1A7C99E5C(56, &v22);
      *(a1 + 84) = v22;
      sub_1A7C99FF0();
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *a1;
        *buf = 134218496;
        v24 = v21;
        v25 = 1024;
        *v26 = v22;
        v26[2] = 1024;
        *&v26[3] = 56;
        _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "asserting real time mode on thread %p (%d => %d)", buf, 0x18u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"asserting real time mode on thread %p (%d => %d)");
          result = _IDSShouldLog();
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"asserting real time mode on thread %p (%d => %d)");
          }
        }
      }
    }

    else
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *a1;
        v10 = *(a1 + 80);
        *buf = 134218240;
        v24 = v9;
        v25 = 1024;
        *v26 = v10;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "asserting real time mode on thread %p but already in real time mode (%d assertions)", buf, 0x12u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"asserting real time mode on thread %p but already in real time mode (%d assertions)");
          result = _IDSShouldLog();
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"asserting real time mode on thread %p but already in real time mode (%d assertions)");
          }
        }
      }
    }
  }

  else
  {
    if (!v7)
    {
      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *a1;
        *buf = 134217984;
        v24 = v13;
        _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "unasserting real time mode on thread %p but not in real time mode", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"unasserting real time mode on thread %p but not in real time mode");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"TPThread", @"unasserting real time mode on thread %p but not in real time mode");
          }
        }
      }

      if (isRunningTests())
      {
        throwsIDSAbortException();
      }

LABEL_47:
      abort();
    }

    *(a1 + 80) = v7 - 1;
    if (v7 < 2)
    {
      v17 = *(a1 + 84);
      v22 = -1431655766;
      sub_1A7C99E5C(v17, &v22);
      sub_1A7C99FF0();
      v18 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *a1;
        *buf = 134218496;
        v24 = v19;
        v25 = 1024;
        *v26 = v22;
        v26[2] = 1024;
        *&v26[3] = v17;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "unasserting real time mode on thread %p (%d => %d)", buf, 0x18u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"unasserting real time mode on thread %p (%d => %d)");
          result = _IDSShouldLog();
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"unasserting real time mode on thread %p (%d => %d)");
          }
        }
      }
    }

    else
    {
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *a1;
        v16 = *(a1 + 80);
        *buf = 134218240;
        v24 = v15;
        v25 = 1024;
        *v26 = v16;
        _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "unasserting real time mode on thread %p but still in real time mode (%d assertions)", buf, 0x12u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"unasserting real time mode on thread %p but still in real time mode (%d assertions)");
          result = _IDSShouldLog();
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"unasserting real time mode on thread %p but still in real time mode (%d assertions)");
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A7C99E5C(int a1, int *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v9 = -1431655766;
  v4 = IMGetDomainIntForKey();
  if ((v4 - 1) >= 0x63)
  {
    v5 = a1;
  }

  else
  {
    v5 = v4;
  }

  v6 = pthread_self();
  pthread_getschedparam(v6, &v9, &v10);
  if (a2)
  {
    *a2 = v10.sched_priority;
  }

  v10.sched_priority = v5;
  pthread_setschedparam(v6, v9, &v10);
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = v5;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Set IDSTransportThread priority at %d.", buf, 8u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLogTransport();
    if (result)
    {
      _IDSLogTransport(@"TPThread", @"IDS", @"Set IDSTransportThread priority at %d.");
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"Set IDSTransportThread priority at %d.");
      }
    }
  }

  return result;
}

uint64_t sub_1A7C99FF0()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1AC562F80](@"com.apple.ids", @"IDSTransportCPUConfig");
  if (v0)
  {
    v1 = [v0 componentsSeparatedByString:@":"];
    v2 = 90;
    v3 = 50;
    if ([v1 count] == 2)
    {
      v4 = [objc_msgSend(v1 objectAtIndex:{0), "intValue"}];
      v5 = [objc_msgSend(v1 objectAtIndex:{1), "intValue"}];
      v6 = (v4 - 1) < 0x63;
      v7 = v5 > 0;
      if (v6 && v7)
      {
        v3 = v5;
      }

      else
      {
        v3 = 50;
      }

      if (v6 && v7)
      {
        v2 = v4;
      }

      else
      {
        v2 = 90;
      }
    }
  }

  else
  {
    v2 = 90;
    v3 = 50;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v16 = v2;
    v17 = 1024;
    v18 = v3;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "Fix IDSTransportThread CPU limit (%d, %d).", buf, 0xEu);
  }

  v9 = os_log_shim_legacy_logging_enabled();
  if (v9)
  {
    v9 = _IDSShouldLogTransport();
    if (v9)
    {
      _IDSLogTransport(@"TPThread", @"IDS", @"Fix IDSTransportThread CPU limit (%d, %d).");
      v9 = _IDSShouldLog();
      if (v9)
      {
        v9 = _IDSLogV(0, @"IDSFoundation", @"TPThread", @"Fix IDSTransportThread CPU limit (%d, %d).");
      }
    }
  }

  v10 = MEMORY[0x1AC563CD0](v9);
  policy_info = 0;
  thread_policy_set(v10, 1u, &policy_info, 1u);
  result = proc_setthread_cpupercent();
  v12 = result;
  if (result)
  {
    policy_info = 1;
    thread_policy_set(v10, 1u, &policy_info, 1u);
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v16 = v2;
      v17 = 1024;
      v18 = v3;
      v19 = 1024;
      v20 = v12;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "Failed to set CPU limit (%d, %d) (error=%d), move back to timeshare.", buf, 0x14u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"Failed to set CPU limit (%d, %d) (error=%d), move back to timeshare.");
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"Failed to set CPU limit (%d, %d) (error=%d), move back to timeshare.");
        }
      }
    }
  }

  return result;
}

BOOL IDSTransportThreadInit()
{
  if (qword_1EB2B87C8 != -1)
  {
    sub_1A7E20404();
  }

  v0 = dword_1EB2B8670;
  if (!dword_1EB2B8670)
  {
    v1 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A7AD9000, v1, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadInit: transport thread not initialized", v3, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadInit: transport thread not initialized");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadInit: transport thread not initialized");
        }
      }
    }
  }

  return v0 != 0;
}

BOOL IDSTransportThreadInitWithPriority(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 100:
      if (qword_1EB2BC168 != -1)
      {
        sub_1A7E20418();
      }

      v2 = &unk_1EB2B86C0;
      break;
    case 200:
      if (qword_1EB2BC160 != -1)
      {
        sub_1A7E2042C();
      }

      v2 = &unk_1EB2B8718;
      break;
    case 300:
      if (qword_1EB2BC158 != -1)
      {
        sub_1A7E20440();
      }

      v2 = &unk_1EB2B8610;
      break;
    default:
      if (qword_1EB2B87C8 != -1)
      {
        sub_1A7E20404();
      }

      v2 = &qword_1EB2B8668;
      break;
  }

  v3 = *(v2 + 2);
  if (!v3)
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = a1;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadInit: transport thread with priority %lu not initialized", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadInit: transport thread with priority %lu not initialized");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadInit: transport thread with priority %lu not initialized");
        }
      }
    }
  }

  return v3 != 0;
}

void IDSTransportThreadAddBlockWithPriority(uint64_t a1, const void *a2)
{
  v2 = &unk_1EB2B8610;
  v3 = &qword_1EB2B8668;
  if (a1 == 200)
  {
    v3 = &unk_1EB2B8718;
  }

  if (a1 != 300)
  {
    v2 = v3;
  }

  if (a1 == 100)
  {
    v4 = &unk_1EB2B86C0;
  }

  else
  {
    v4 = v2;
  }

  sub_1A7AFFF20(v4, a2);
}

void IDSTransportThreadAddSyncBlockWithPriority(uint64_t a1, const void *a2)
{
  v2 = &unk_1EB2B8610;
  v3 = &qword_1EB2B8668;
  if (a1 == 200)
  {
    v3 = &unk_1EB2B8718;
  }

  if (a1 != 300)
  {
    v2 = v3;
  }

  if (a1 == 100)
  {
    v4 = &unk_1EB2B86C0;
  }

  else
  {
    v4 = v2;
  }

  sub_1A7B029E0(v4, a2);
}

uint64_t sub_1A7C9A670(uint64_t a1, unsigned int a2, const void *a3, const void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 44);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&changelist.ident = v9;
  *&changelist.data = v9;
  if ((a2 & 0x80000000) != 0)
  {
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v29 = a2;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadAddSocket called with bad socket %d", buf, 8u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadAddSocket called with bad socket %d");
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadAddSocket called with bad socket %d");
        }
      }
    }
  }

  else
  {
    v13 = *a1;
    if (v13 != pthread_self())
    {
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *a1;
        *buf = 134218240;
        *v29 = v15;
        *&v29[8] = 2048;
        v30 = pthread_self();
        _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "should add socket on thread %p, not %p", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          pthread_self();
          _IDSLogTransport(@"TPThread", @"IDS", @"should add socket on thread %p, not %p");
          if (_IDSShouldLog())
          {
            pthread_self();
            _IDSLogV(0, @"IDSFoundation", @"TPThread", @"should add socket on thread %p, not %p");
          }
        }
      }

      if (isRunningTests())
      {
        throwsIDSAbortException();
      }

      abort();
    }

    sub_1A7C9B87C(a1, a2);
    if (v5 < 1)
    {
      LODWORD(v16) = 0;
    }

    else
    {
      v16 = 0;
      while (*(v7 + 4 * v16) != -1)
      {
        if (v5 == ++v16)
        {
          LODWORD(v16) = v5;
          break;
        }
      }
    }

    ++*(a1 + 24);
    if (v16 >= *(a1 + 40))
    {
      result = sub_1A7C9C5A4(a1);
      if (!result)
      {
        return result;
      }

      v7 = *(a1 + 48);
      v6 = *(a1 + 56);
      v8 = *(a1 + 64);
    }

    *(v7 + 4 * v16) = a2;
    if (a3)
    {
      *(v6 + 8 * v16) = _Block_copy(a3);
      changelist.ident = a2;
      *&changelist.filter = 393215;
      changelist.data = 0;
      changelist.udata = v16;
      if (kevent(*(a1 + 32), &changelist, 1, 0, 0, 0) < 0)
      {
        v19 = *__error();
        v20 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *v29 = v16;
          *&v29[4] = 1024;
          *&v29[6] = a2;
          LOWORD(v30) = 1024;
          *(&v30 + 2) = v19;
          _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, READ, ADD|ENABLE) failed with error(%d)", buf, 0x14u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, READ, ADD|ENABLE) failed with error(%d)");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, READ, ADD|ENABLE) failed with error(%d)");
            }
          }
        }
      }
    }

    else
    {
      *(v6 + 8 * v16) = 0;
    }

    if (a4)
    {
      *(v8 + 8 * v16) = _Block_copy(a4);
      changelist.ident = a2;
      *&changelist.filter = 393214;
      changelist.data = 0;
      changelist.udata = v16;
      if (kevent(*(a1 + 32), &changelist, 1, 0, 0, 0) < 0)
      {
        v21 = *__error();
        v22 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *v29 = v16;
          *&v29[4] = 1024;
          *&v29[6] = a2;
          LOWORD(v30) = 1024;
          *(&v30 + 2) = v21;
          _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, WRITE, ADD|ENABLE) failed with error(%d)", buf, 0x14u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, WRITE, ADD|ENABLE) failed with error(%d)");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, WRITE, ADD|ENABLE) failed with error(%d)");
            }
          }
        }
      }
    }

    else
    {
      *(v8 + 8 * v16) = 0;
    }

    if (*(a1 + 36) < a2)
    {
      *(a1 + 36) = a2;
    }

    if (v16 == v5)
    {
      ++*(a1 + 44);
    }

    v23 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 44);
      v25 = *(v6 + 8 * v16);
      v26 = *(v8 + 8 * v16);
      *buf = 67110144;
      *v29 = a2;
      *&v29[4] = 1024;
      *&v29[6] = v16;
      LOWORD(v30) = 1024;
      *(&v30 + 2) = v24;
      HIWORD(v30) = 2048;
      v31 = v25;
      v32 = 2048;
      v33 = v26;
      _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "added socket %d at %d (count:%d) with readBlock %p writeBlock %p", buf, 0x28u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"added socket %d at %d (count:%d) with readBlock %p writeBlock %p");
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"added socket %d at %d (count:%d) with readBlock %p writeBlock %p");
        }
      }
    }
  }

  return result;
}

uint64_t IDSTransportThreadAddSocketWithPriority(unsigned int a1, const void *a2, const void *a3, uint64_t a4)
{
  v7 = &unk_1EB2B8610;
  v8 = &qword_1EB2B8668;
  if (a4 == 200)
  {
    v8 = &unk_1EB2B8718;
  }

  if (a4 != 300)
  {
    v7 = v8;
  }

  if (a4 == 100)
  {
    v9 = &unk_1EB2B86C0;
  }

  else
  {
    v9 = v7;
  }

  return sub_1A7C9A670(v9, a1, a2, a3);
}

uint64_t sub_1A7C9ADAC(uint64_t result, unsigned int a2, char a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(result + 44);
  v5 = *(result + 48);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&changelist.ident = v6;
  *&changelist.data = v6;
  if ((a2 & 0x80000000) != 0)
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v19 = a2;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadSuspendSocket called with bad socket %d", buf, 8u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadSuspendSocket called with bad socket %d");
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadSuspendSocket called with bad socket %d");
        }
      }
    }
  }

  else if (v4 < 1)
  {
LABEL_6:
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"YES";
      *buf = 67109634;
      v19 = a2;
      if ((a3 & 1) == 0)
      {
        v11 = @"NO";
      }

      v20 = 2112;
      *v21 = v11;
      *&v21[8] = 1024;
      v22 = v4;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "suspendSocket(%d, forRead:%@) cannot find socket (count:%d)", buf, 0x18u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"suspendSocket(%d, forRead:%@) cannot find socket (count:%d)");
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"suspendSocket(%d, forRead:%@) cannot find socket (count:%d)");
        }
      }
    }
  }

  else
  {
    v8 = result;
    v9 = 0;
    while (*(v5 + 4 * v9) != a2)
    {
      v9 = v9 + 1;
      if (v4 == v9)
      {
        goto LABEL_6;
      }
    }

    if (a3)
    {
      changelist.ident = a2;
      *&changelist.filter = 589823;
      changelist.data = 0;
      changelist.udata = v9;
      result = kevent(*(result + 32), &changelist, 1, 0, 0, 0);
      if ((result & 0x80000000) != 0)
      {
        v13 = *__error();
        v14 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          v19 = v9;
          v20 = 1024;
          *v21 = a2;
          *&v21[4] = 1024;
          *&v21[6] = v13;
          _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, READ, DISABLE) failed with error(%d)", buf, 0x14u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (result)
        {
          result = _IDSShouldLogTransport();
          if (result)
          {
            _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, READ, DISABLE) failed with error(%d)");
            result = _IDSShouldLog();
            if (result)
            {
              result = _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, READ, DISABLE) failed with error(%d)");
            }
          }
        }
      }
    }

    if ((a3 & 2) != 0)
    {
      changelist.ident = a2;
      *&changelist.filter = 589822;
      changelist.data = 0;
      changelist.udata = v9;
      result = kevent(*(v8 + 32), &changelist, 1, 0, 0, 0);
      if ((result & 0x80000000) != 0)
      {
        v15 = *__error();
        v16 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          v19 = v9;
          v20 = 1024;
          *v21 = a2;
          *&v21[4] = 1024;
          *&v21[6] = v15;
          _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, WRITE, DISABLE) failed with error(%d)", buf, 0x14u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (result)
        {
          result = _IDSShouldLogTransport();
          if (result)
          {
            _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, WRITE, DISABLE) failed with error(%d)");
            result = _IDSShouldLog();
            if (result)
            {
              result = _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, WRITE, DISABLE) failed with error(%d)");
            }
          }
        }
      }
    }

    ++*(v8 + 24);
  }

  return result;
}

uint64_t IDSTransportThreadSuspendSocketWithPriority(unsigned int a1, char a2, uint64_t a3)
{
  v5 = &unk_1EB2B8610;
  v6 = &qword_1EB2B8668;
  if (a3 == 200)
  {
    v6 = &unk_1EB2B8718;
  }

  if (a3 != 300)
  {
    v5 = v6;
  }

  if (a3 == 100)
  {
    v7 = &unk_1EB2B86C0;
  }

  else
  {
    v7 = v5;
  }

  return sub_1A7C9ADAC(v7, a1, a2);
}

uint64_t sub_1A7C9B308(uint64_t result, unsigned int a2, char a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(result + 44);
  v6 = *(result + 48);
  v5 = *(result + 56);
  v7 = *(result + 64);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&changelist.ident = v8;
  *&changelist.data = v8;
  if ((a2 & 0x80000000) != 0)
  {
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = a2;
      _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadResumeSocket called with bad socket %d", buf, 8u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadResumeSocket called with bad socket %d");
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadResumeSocket called with bad socket %d");
        }
      }
    }
  }

  else if (v4 < 1)
  {
LABEL_6:
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"YES";
      *buf = 67109634;
      v21 = a2;
      if ((a3 & 1) == 0)
      {
        v13 = @"NO";
      }

      v22 = 2112;
      *v23 = v13;
      *&v23[8] = 1024;
      v24 = v4;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "resumeSocket(%d, forRead:%@) cannot find socket (count:%d)", buf, 0x18u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"resumeSocket(%d, forRead:%@) cannot find socket (count:%d)");
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"resumeSocket(%d, forRead:%@) cannot find socket (count:%d)");
        }
      }
    }
  }

  else
  {
    v10 = result;
    v11 = 0;
    while (*(v6 + 4 * v11) != a2)
    {
      v11 = v11 + 1;
      if (v4 == v11)
      {
        goto LABEL_6;
      }
    }

    if (a3)
    {
      if (*(v5 + 8 * v11))
      {
        changelist.ident = a2;
        *&changelist.filter = 327679;
        changelist.data = 0;
        changelist.udata = v11;
        result = kevent(*(result + 32), &changelist, 1, 0, 0, 0);
        if ((result & 0x80000000) != 0)
        {
          v15 = *__error();
          v16 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            v21 = v11;
            v22 = 1024;
            *v23 = a2;
            *&v23[4] = 1024;
            *&v23[6] = v15;
            _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, READ, ENABLE) failed with error(%d)", buf, 0x14u);
          }

          result = os_log_shim_legacy_logging_enabled();
          if (result)
          {
            result = _IDSShouldLogTransport();
            if (result)
            {
              _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, READ, ENABLE) failed with error(%d)");
              result = _IDSShouldLog();
              if (result)
              {
                result = _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, READ, ENABLE) failed with error(%d)");
              }
            }
          }
        }
      }
    }

    if ((a3 & 2) != 0)
    {
      if (*(v7 + 8 * v11))
      {
        changelist.ident = a2;
        *&changelist.filter = 327678;
        changelist.data = 0;
        changelist.udata = v11;
        result = kevent(*(v10 + 32), &changelist, 1, 0, 0, 0);
        if ((result & 0x80000000) != 0)
        {
          v17 = *__error();
          v18 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            v21 = v11;
            v22 = 1024;
            *v23 = a2;
            *&v23[4] = 1024;
            *&v23[6] = v17;
            _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, WRITE, ENABLE) failed with error(%d)", buf, 0x14u);
          }

          result = os_log_shim_legacy_logging_enabled();
          if (result)
          {
            result = _IDSShouldLogTransport();
            if (result)
            {
              _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, WRITE, ENABLE) failed with error(%d)");
              result = _IDSShouldLog();
              if (result)
              {
                result = _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, WRITE, ENABLE) failed with error(%d)");
              }
            }
          }
        }
      }
    }

    ++*(v10 + 24);
  }

  return result;
}

uint64_t IDSTransportThreadResumeSocketWithPriority(unsigned int a1, char a2, uint64_t a3)
{
  v5 = &unk_1EB2B8610;
  v6 = &qword_1EB2B8668;
  if (a3 == 200)
  {
    v6 = &unk_1EB2B8718;
  }

  if (a3 != 300)
  {
    v5 = v6;
  }

  if (a3 == 100)
  {
    v7 = &unk_1EB2B86C0;
  }

  else
  {
    v7 = v5;
  }

  return sub_1A7C9B308(v7, a1, a2);
}

void sub_1A7C9B87C(uint64_t a1, unsigned int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 44);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&changelist.ident = v7;
  *&changelist.data = v7;
  if ((a2 & 0x80000000) != 0)
  {
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v28 = a2;
      _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadRemoveSocket called with bad socket %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadRemoveSocket called with bad socket %d");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadRemoveSocket called with bad socket %d");
        }
      }
    }
  }

  else
  {
    v9 = *a1;
    if (v9 != pthread_self())
    {
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *a1;
        *buf = 134218240;
        *v28 = v11;
        *&v28[8] = 2048;
        v29 = pthread_self();
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "should remove socket on thread %p, not %p", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          pthread_self();
          _IDSLogTransport(@"TPThread", @"IDS", @"should remove socket on thread %p, not %p");
          if (_IDSShouldLog())
          {
            pthread_self();
            _IDSLogV(0, @"IDSFoundation", @"TPThread", @"should remove socket on thread %p, not %p");
          }
        }
      }

      if (isRunningTests())
      {
        throwsIDSAbortException();
      }

      abort();
    }

    if (v3 < 1)
    {
LABEL_15:
      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v28 = a2;
        *&v28[4] = 1024;
        *&v28[6] = v3;
        _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "removeSocket(%d) cannot find socket (count:%d)", buf, 0xEu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"removeSocket(%d) cannot find socket (count:%d)");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"TPThread", @"removeSocket(%d) cannot find socket (count:%d)");
          }
        }
      }
    }

    else
    {
      v12 = 0;
      while (v4[v12] != a2)
      {
        v12 = v12 + 1;
        if (v3 == v12)
        {
          goto LABEL_15;
        }
      }

      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v5 + 8 * v12);
        v17 = *(v6 + 8 * v12);
        *buf = 67110144;
        *v28 = a2;
        *&v28[4] = 1024;
        *&v28[6] = v12;
        LOWORD(v29) = 1024;
        *(&v29 + 2) = v3 - 1;
        HIWORD(v29) = 2048;
        v30 = v16;
        v31 = 2048;
        v32 = v17;
        _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "removing socket %d at %d (count:%d) with readBlock %p writeBlock %p", buf, 0x28u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"removing socket %d at %d (count:%d) with readBlock %p writeBlock %p");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"TPThread", @"removing socket %d at %d (count:%d) with readBlock %p writeBlock %p");
          }
        }
      }

      v4[v12] = -1;
      if (*(v5 + 8 * v12))
      {
        changelist.ident = a2;
        *&changelist.filter = 196607;
        changelist.data = 0;
        changelist.udata = v12;
        if (kevent(*(a1 + 32), &changelist, 1, 0, 0, 0) < 0)
        {
          v18 = *__error();
          v19 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            *v28 = v12;
            *&v28[4] = 1024;
            *&v28[6] = a2;
            LOWORD(v29) = 1024;
            *(&v29 + 2) = v18;
            _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, READ, DELETE) failed with error(%d)", buf, 0x14u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, READ, DELETE) failed with error(%d)");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, READ, DELETE) failed with error(%d)");
              }
            }
          }
        }

        _Block_release(*(v5 + 8 * v12));
        *(v5 + 8 * v12) = 0;
      }

      if (*(v6 + 8 * v12))
      {
        changelist.ident = a2;
        *&changelist.filter = 196606;
        changelist.data = 0;
        changelist.udata = v12;
        if (kevent(*(a1 + 32), &changelist, 1, 0, 0, 0) < 0)
        {
          v20 = *__error();
          v21 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            *v28 = v12;
            *&v28[4] = 1024;
            *&v28[6] = a2;
            LOWORD(v29) = 1024;
            *(&v29 + 2) = v20;
            _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, WRITE, DELETE) failed with error(%d)", buf, 0x14u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, WRITE, DELETE) failed with error(%d)");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, WRITE, DELETE) failed with error(%d)");
              }
            }
          }
        }

        _Block_release(*(v6 + 8 * v12));
        *(v6 + 8 * v12) = 0;
      }

      ++*(a1 + 24);
      if (*(a1 + 36) == a2)
      {
        v22 = *(a1 + 44);
        v23 = -1;
        if (v22 >= 1)
        {
          do
          {
            v25 = *v4++;
            v24 = v25;
            if (v25 > v23)
            {
              v23 = v24;
            }

            --v22;
          }

          while (v22);
        }

        *(a1 + 36) = v23;
      }
    }
  }
}

void IDSTransportThreadRemoveSocketWithPriority(unsigned int a1, uint64_t a2)
{
  v3 = &unk_1EB2B8610;
  v4 = &qword_1EB2B8668;
  if (a2 == 200)
  {
    v4 = &unk_1EB2B8718;
  }

  if (a2 != 300)
  {
    v3 = v4;
  }

  if (a2 == 100)
  {
    v5 = &unk_1EB2B86C0;
  }

  else
  {
    v5 = v3;
  }

  sub_1A7C9B87C(v5, a1);
}

BOOL IDSTransportThreadIsOnPrimaryTransportThread()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = qword_1EB2B8668;
  v1 = pthread_self();
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (v0 == v1)
    {
      v3 = @"YES";
    }

    *buf = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadIsOnPrimaryTransportThread: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadIsOnPrimaryTransportThread: %@");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadIsOnPrimaryTransportThread: %@");
      }
    }
  }

  return v0 == v1;
}

void sub_1A7C9C1C4(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = kqueue();
  *(a1 + 32) = v4;
  if (v4 == -1)
  {
    v8 = *__error();
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v13) = v8;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadInit kqueue failed (%d)", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadInit kqueue failed (%d)");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadInit kqueue failed (%d)");
        }
      }
    }

    goto LABEL_10;
  }

  *(a1 + 40) = 32;
  if (sub_1A7C9C5A4(a1))
  {
    *(a1 + 44) = 0;
    *(a1 + 24) = 0;
    *(a1 + 36) = **(a1 + 48);
    *(a1 + 28) = 0;
    *(a1 + 72) = a2;
    v5 = pthread_create(a1, 0, sub_1A7AFF1FC, a1);
    if (v5)
    {
      v6 = v5;
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v13) = v6;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "failed to create transport thread (%d)", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"failed to create transport thread (%d)");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TPThread", @"failed to create transport thread (%d)");
        }
      }

LABEL_10:
      sub_1A7C9C554();
      return;
    }

    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *a1;
      *buf = 134217984;
      v13 = v11;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Created transport thread with tid(%p).", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"TPThread", @"Created transport thread with tid(%p).");
    }

    *(a1 + 8) = 1;
  }

  else
  {

    sub_1A7C9C554();
  }
}

double sub_1A7C9C554()
{
  sub_1A7C9C87C(&qword_1EB2B8668);
  sub_1A7C9C87C(&unk_1EB2B8610);
  sub_1A7C9C87C(&unk_1EB2B8718);

  return sub_1A7C9C87C(&unk_1EB2B86C0);
}

uint64_t sub_1A7C9C5A4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = 2 * *(a1 + 40);
  v3 = malloc_type_realloc(*(a1 + 48), 4 * v2, 0x100004052888210uLL);
  if (!v3)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v2;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "realloc(%d) for fds failed", buf, 8u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (!result)
    {
      return result;
    }

    result = _IDSShouldLog();
    if (!result)
    {
      return result;
    }

    _IDSLogV(0, @"IDSFoundation", @"TPThread", @"realloc(%d) for fds failed");
    return 0;
  }

  *(a1 + 48) = v3;
  v4 = malloc_type_realloc(*(a1 + 56), 8 * v2, 0x80040B8603338uLL);
  if (!v4)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v2;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "realloc(%d) for readBlocks failed", buf, 8u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (!result)
    {
      return result;
    }

    result = _IDSShouldLog();
    if (!result)
    {
      return result;
    }

    _IDSLogV(0, @"IDSFoundation", @"TPThread", @"realloc(%d) for readBlocks failed");
    return 0;
  }

  *(a1 + 56) = v4;
  v5 = malloc_type_realloc(*(a1 + 64), 8 * v2, 0x80040B8603338uLL);
  if (v5)
  {
    *(a1 + 64) = v5;
    *(a1 + 40) = v2;
    return 1;
  }

  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = v2;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "realloc(%d) for writeBlocks failed", buf, 8u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLog();
    if (result)
    {
      _IDSLogV(0, @"IDSFoundation", @"TPThread", @"realloc(%d) for writeBlocks failed");
      return 0;
    }
  }

  return result;
}

double sub_1A7C9C87C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A7AFF09C(a1, 3);
  v2 = *a1;
  if (*a1)
  {
    *buf = 0xAAAAAAAAAAAAAAAALL;
    pthread_join(v2, buf);
  }

  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a1;
    *buf = 134217984;
    *&buf[4] = v4;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Transport thread with tid(%p) stopped.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TPThread", @"IDS", @"Transport thread with tid(%p) stopped.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"TPThread", @"Transport thread with tid(%p) stopped.");
      }
    }
  }

  free(*(a1 + 48));
  free(*(a1 + 56));
  free(*(a1 + 64));
  v5 = *(a1 + 32);
  if (v5 != -1)
  {
    close(v5);
  }

  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t IDSQRProtoAllocBindJoinInfoReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v31[0] & 0x7F) << v22;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_46:
        *(a1 + 24) = v28;
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(IDSQRProtoMaterial);
        objc_storeStrong((a1 + 16), v21);
        v31[0] = 0xAAAAAAAAAAAAAAAALL;
        v31[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
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

LABEL_50:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoQuicConnectionInfoReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoCallModeUpdateInfoReadFrom(uint64_t a1, void *a2)
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
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___IDSQRProtoCallModeUpdateInfo__modeGenCounter;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___IDSQRProtoCallModeUpdateInfo__modeGenCounter;
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
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___IDSQRProtoCallModeUpdateInfo__facetimeMode;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___IDSQRProtoCallModeUpdateInfo__facetimeMode;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoAllocBindAllocBindReadFrom(uint64_t a1, void *a2)
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

void sub_1A7C9EEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7C9EEC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [IDSSessionInfoMetadataSerializer _writeStringToByteBuffer:a2 buffer:*(*(a1 + 32) + 8) + 32];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [IDSSessionInfoMetadataSerializer _writeNumberToByteBuffer:v5 buffer:*(*(a1 + 32) + 8) + 32];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [IDSSessionInfoMetadataSerializer _writeStringToByteBuffer:v5 buffer:*(*(a1 + 32) + 8) + 32];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [IDSSessionInfoMetadataSerializer _writeDictionaryToByteBuffer:v5 buffer:*(*(a1 + 32) + 8) + 32];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [IDSSessionInfoMetadataSerializer _writeArrayToByteBuffer:v5 buffer:*(*(a1 + 32) + 8) + 32];
        }
      }
    }
  }
}

void sub_1A7C9F238(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (isKindOfClass)
  {
    [v7 _writeStringToByteBuffer:v5 buffer:v8];
  }

  else
  {
    [v7 _writeNumberToByteBuffer:v5 buffer:v8];
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (v9)
  {
    [v10 _writeStringToByteBuffer:v12 buffer:v11];
  }

  else
  {
    [v10 _writeArrayToByteBuffer:v12 buffer:v11];
  }
}

uint64_t IDSQRProtoReallocateReallocateReadFrom(uint64_t a1, void *a2)
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

void *sub_1A7CA0268()
{
  result = MEMORY[0x1AC5631C0]("AnalyticsSendEvent", @"CoreAnalytics");
  off_1EB2BC170 = result;
  return result;
}

uint64_t IDSSimpleUInt16List_Init(uint64_t result, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = malloc_type_malloc(2 * a2, 0x1000040BDFB0063uLL);
    v3[2] = v4;
    if (v4)
    {
      *v3 = a2;
      v3[1] = 0;
      v5 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = *v3;
        *buf = 134217984;
        v9 = v6;
        _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEBUG, "IDSSimpleUInt16List: initialized to size %lu.", buf, 0xCu);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(1, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: initialized to size %lu.");
        }
      }
    }

    else
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "IDSSimpleUInt16List: failed to initialize.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: failed to initialize.");
        }
      }
    }
  }

  return result;
}

void *IDSSimpleUInt16List_Destroy(void *result)
{
  if (result)
  {
    *result = 0;
    result[1] = 0;
    v1 = result[2];
    if (v1)
    {
      free(v1);
    }

    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "IDSSimpleUInt16List: list destroyed.", v3, 2u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: list destroyed.");
      }
    }
  }

  return result;
}

uint64_t IDSSimpleUInt16List_AddItem(uint64_t result, unsigned int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 8);
  if (!v4)
  {
    if (*result)
    {
LABEL_23:
      v10 = *(result + 16);
      v13 = *(result + 8);
    }

    else
    {
      v7 = 0;
      v4 = 0;
      v6 = 0;
LABEL_16:
      v9 = malloc_type_realloc(*(result + 16), v7, 0x1000040BDFB0063uLL);
      if (!v9)
      {
        v17 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "IDSSimpleUInt16List: failed to realloc list.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (result)
        {
          result = _IDSShouldLog();
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: failed to realloc list.");
          }
        }

        return result;
      }

      v10 = v9;
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *v3;
        *buf = 134218240;
        *v21 = v12;
        *&v21[8] = 2048;
        *&v21[10] = v6;
        _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "IDSSimpleUInt16List: list size changed from %lu to %lu.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: list size changed from %lu to %lu.");
      }

      v3[2] = v10;
      *v3 = v6;
      v13 = v3[1];
    }

    v10[v4] = a2;
    v3[1] = v13 + 1;
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = v3[1];
      *buf = 67109376;
      *v21 = __rev16(a2);
      *&v21[4] = 2048;
      *&v21[6] = v15;
      _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEBUG, "IDSSimpleUInt16List: added item %04x, count %lu.", buf, 0x12u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV(1, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: added item %04x, count %lu.");
      }
    }

    return result;
  }

  for (i = 0; i != v4; ++i)
  {
    if (*(*(result + 16) + 2 * i) == a2)
    {
      v16 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *v21 = __rev16(a2);
        _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEBUG, "Error: IDSSimpleUInt16List: item %04x is already in the list, ignore.", buf, 8u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(1, @"IDSFoundation", @"GL", @"Error: IDSSimpleUInt16List: item %04x is already in the list, ignore.");
        }
      }

      return result;
    }
  }

  if (v4 != *result)
  {
    goto LABEL_23;
  }

  if (v4 < 0)
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = *v3;
      *buf = 134217984;
      *v21 = v19;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEBUG, "Error: IDSSimpleUInt16List: 2 * list->listSize overflow, list->listSize = %lu", buf, 0xCu);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV(1, @"IDSFoundation", @"GL", @"Error: IDSSimpleUInt16List: 2 * list->listSize overflow, list->listSize = %lu");
      }
    }
  }

  else
  {
    v6 = 2 * v4;
    v7 = 4 * v4;
    if (((2 * v4) & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }

    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *v21 = 4 * v4;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEBUG, "Error: IDSSimpleUInt16List: sizeof(uint16_t) * newListSize overflow, sizeOfNewListSize = %lu", buf, 0xCu);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV(1, @"IDSFoundation", @"GL", @"Error: IDSSimpleUInt16List: sizeof(uint16_t) * newListSize overflow, sizeOfNewListSize = %lu");
      }
    }
  }

  return result;
}

uint64_t IDSSimpleUInt16List_RemoveItem(uint64_t result, unsigned int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      v5 = 0;
      while (*(*(result + 16) + 2 * v5) != a2)
      {
        if (v4 == ++v5)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    if (v5 == v4)
    {
LABEL_9:
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v10 = __rev16(a2);
        _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "IDSSimpleUInt16List: cannot find item %04x.", buf, 8u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: cannot find item %04x.");
        }
      }
    }

    else
    {
      memmove((*(result + 16) + 2 * v5), (*(result + 16) + 2 * v5 + 2), 2 * (v4 + ~v5));
      --*(v3 + 8);
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(v3 + 8);
        *buf = 67109376;
        v10 = __rev16(a2);
        v11 = 2048;
        v12 = v8;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEBUG, "IDSSimpleUInt16List: removed item %04x, count %lu.", buf, 0x12u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(1, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: removed item %04x, count %lu.");
        }
      }
    }
  }

  return result;
}

uint64_t IDSSimpleUInt16List_HasItem(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *(result + 16);
      v4 = v2 - 1;
      do
      {
        v5 = *v3++;
        result = v5 == a2;
      }

      while (v5 != a2 && v4-- != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IDSSimpleUInt16List_Count(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t IDSSimpleUInt16List_ElementAtIndex(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(result + 16) + 2 * a2);
    }
  }

  return result;
}

uint64_t IDSQRSendInfoList_Init(uint64_t result, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
    if (v4)
    {
      v5 = v4;
      v6 = malloc_type_calloc(1uLL, 360 * a2, 0x1000040A2B0AFECuLL);
      v5[1] = v6;
      if (v6)
      {
        *v5 = a2;
        *v3 = v5;
        v7 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *v3;
          v9 = **v3;
          *buf = 134218240;
          v13 = v8;
          v14 = 2048;
          v15 = v9;
          _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "IDSQRSendInfoList_Init: initialized list %p to size %lu.", buf, 0x16u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (result)
        {
          result = _IDSShouldLogTransport();
          if (result)
          {
            _IDSLogTransport(@"GL", @"IDS", @"IDSQRSendInfoList_Init: initialized list %p to size %lu.");
            result = _IDSShouldLog();
            if (result)
            {
              return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRSendInfoList_Init: initialized list %p to size %lu.");
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
          _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "IDSQRSendInfoList_Init: failed to initialize items.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (result)
        {
          result = _IDSShouldLog();
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRSendInfoList_Init: failed to initialize items.");
          }
        }
      }
    }

    else
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "IDSQRSendInfoList_Init: failed to initialize list.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRSendInfoList_Init: failed to initialize list.");
        }
      }
    }
  }

  return result;
}

void IDSQRSendInfoList_Destroy(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
    }

    *a1 = 0;
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v5 = a1;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "IDSQRSendInfoList_Destroy: list %p destroyed.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"IDSQRSendInfoList_Destroy: list %p destroyed.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRSendInfoList_Destroy: list %p destroyed.");
      }
    }

    free(a1);
  }
}

uint64_t IDSQRSendInfoList_AddItemAtIndex(uint64_t result, void *__src, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *result;
  if (*result > a3)
  {
    v7 = *(result + 8);
LABEL_4:
    memcpy(&v7[360 * a3], __src, 0x168uLL);
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v20 = __src;
      v21 = 1024;
      LODWORD(v22) = a3;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "IDSQRSendInfoList_AddItemAtIndex: added item %p at index %d.", buf, 0x12u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"GL", @"IDS", @"IDSQRSendInfoList_AddItemAtIndex: added item %p at index %d.");
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRSendInfoList_AddItemAtIndex: added item %p at index %d.");
        }
      }
    }

    return result;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *v5;
      *buf = 134217984;
      v20 = v11;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEBUG, "Error: IDSQRSendInfoList_AddItemAtIndex: list->listSize * 2 overflow, list->listSize = %lu", buf, 0xCu);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV(1, @"IDSFoundation", @"GL", @"Error: IDSQRSendInfoList_AddItemAtIndex: list->listSize * 2 overflow, list->listSize = %lu");
      }
    }
  }

  else if (a3 == 0x7FFFFFFF)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEBUG, "Error: IDSQRSendInfoList_AddItemAtIndex: itemIndex = INT_MAX", buf, 2u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV(1, @"IDSFoundation", @"GL", @"Error: IDSQRSendInfoList_AddItemAtIndex: itemIndex = INT_MAX");
      }
    }
  }

  else
  {
    v12 = 2 * v6;
    if (v12 <= a3 + 1)
    {
      v13 = a3 + 1;
    }

    else
    {
      v13 = v12;
    }

    if (is_mul_ok(v13, 0x168uLL))
    {
      v15 = malloc_type_realloc(*(result + 8), 360 * v13, 0x1000040A2B0AFECuLL);
      if (v15)
      {
        v7 = v15;
        v16 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *v5;
          *buf = 134218240;
          v20 = v17;
          v21 = 2048;
          v22 = v13;
          _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "IDSQRSendInfoList_AddItemAtIndex: list size changed from %lu to %lu.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRSendInfoList_AddItemAtIndex: list size changed from %lu to %lu.");
        }

        *v5 = v13;
        v5[1] = v7;
        goto LABEL_4;
      }

      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "IDSQRSendInfoList_AddItemAtIndex: failed to realloc list.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRSendInfoList_AddItemAtIndex: failed to realloc list.");
        }
      }
    }

    else
    {
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v20 = 360;
        v21 = 2048;
        v22 = v13;
        _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEBUG, "Error: IDSQRSendInfoList_AddItemAtIndex: sizeof(IDSQRSendInfo) * newListSize overflow, sizeof(IDSQRSendInfo) = %lu, newListSize = %lu", buf, 0x16u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(1, @"IDSFoundation", @"GL", @"Error: IDSQRSendInfoList_AddItemAtIndex: sizeof(IDSQRSendInfo) * newListSize overflow, sizeof(IDSQRSendInfo) = %lu, newListSize = %lu");
        }
      }
    }
  }

  return result;
}

void *IDSQRSendInfoList_ItemAtIndex(void *result, int a2)
{
  if (result)
  {
    if (*result <= a2)
    {
      return 0;
    }

    else
    {
      return (result[1] + 360 * a2);
    }
  }

  return result;
}

uint64_t IDSQRSendInfoList_AddItemAtIndexFromCandidatePair(uint64_t a1, void *a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  LODWORD(v11) = [v5 linkID];
  v6 = [v5 local];
  HIDWORD(v11) = [v6 index];

  v7 = [v5 local];
  v14 = [v7 transport];

  v12 = [v5 channelNumber];
  v13 = [v5 isVirtualRelayStunCandidatePair];
  v16 = 0;
  v17 = 0;
  v15 = [v5 glLinkProtocol];
  v8 = [v5 local];
  [v8 address];

  v9 = [v5 remote];

  [v9 external];
  __memcpy_chk();
  __memcpy_chk();
  return IDSQRSendInfoList_AddItemAtIndex(a1, &v11, a3);
}

id GLUtilConnectionDictionaryForNWConnectionInfo(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    v4 = [v3 childConnectionID];
    if (!v4)
    {
      memset(uu, 170, sizeof(uu));
      uuid_clear(uu);
      v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];
    }

    v15[0] = @"id";
    v5 = IDSGetUUIDDataFromNSUUID(v4);
    v16[0] = v5;
    v15[1] = @"protocol-stack";
    v6 = [v3 protocolStackDescription];
    v16[1] = v6;
    v15[2] = @"nw-connection-id";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "connectionID")}];
    v16[2] = v7;
    v15[3] = @"nw-connection-token";
    v8 = [v3 token];
    v16[3] = v8;
    v15[4] = @"allow-outgoing";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v16[4] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
    v11 = [v10 mutableCopy];

    v12 = [v3 qpodParameters];

    v13 = [v12 dictionaryRepresentation];

    if (v13)
    {
      [v11 setObject:v13 forKeyedSubscript:@"qpod"];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id GLUtilConnectionDictionaryForTCPCandidatePair(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"protocol-stack";
  v5[1] = @"allow-outgoing";
  v6[0] = @"tcp";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v6[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

id GLUtilConnectionDictionaryForUDPCandidatePair(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"protocol-stack";
  v5[1] = @"allow-outgoing";
  v6[0] = @"udp";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v6[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

unint64_t ntpTime32(double a1)
{
  if (qword_1EB2B85F8 != -1)
  {
    sub_1A7E20534();
  }

  return (qword_1EB2B85F0 + a1 * 4294967300.0) >> 16;
}

void sub_1A7CA1CE0()
{
  if (!qword_1EB2B85F0)
  {
    memset(v2, 170, sizeof(v2));
    v0 = ids_monotonic_time();
    gettimeofday(&v2[1], 0);
    v1 = ids_monotonic_time();
    gettimeofday(v2, 0);
    if (ids_monotonic_time() - v1 < v1 - v0)
    {
      v2[1] = v2[0];
      v0 = v1;
    }

    qword_1EB2B85F0 = vcvtd_n_u64_f64(v2[1].tv_sec + v2[1].tv_usec * 0.000001 + 2208988800.0 - v0, 0x20uLL);
  }
}

uint64_t GLUtilStunErrorToGlobalLinkError(int a1)
{
  v1 = 255;
  v2 = 34;
  v3 = 35;
  v4 = 42;
  if (a1 != 613)
  {
    v4 = 255;
  }

  if (a1 != 602)
  {
    v3 = v4;
  }

  if (a1 != 601)
  {
    v2 = v3;
  }

  v5 = 19;
  v6 = 43;
  if (a1 != 486)
  {
    v6 = 255;
  }

  if (a1 != 442)
  {
    v5 = v6;
  }

  if (a1 <= 600)
  {
    v2 = v5;
  }

  v7 = 16;
  v8 = 18;
  v9 = 17;
  if (a1 != 441)
  {
    v9 = 255;
  }

  if (a1 != 437)
  {
    v8 = v9;
  }

  if (a1 != 420)
  {
    v7 = v8;
  }

  if (a1 == 401)
  {
    v1 = 17;
  }

  if (a1 == 400)
  {
    v1 = 15;
  }

  if (a1 > 419)
  {
    v1 = v7;
  }

  if (a1 <= 441)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

double GLUtilNATCheckTimeout()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = +[IDSServerBag sharedInstance];
  v1 = [v0 objectForKey:@"gk-p2p-nat-type-timeout"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v1 floatValue];
    v3 = v2;
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = *&v3;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "got commnat timeout: %f(s)", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"got commnat timeout: %f(s)");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"got commnat timeout: %f(s)");
        }
      }
    }
  }

  else
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = @"gk-p2p-nat-type-timeout";
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "failed to get bag entry with %@ key", buf, 0xCu);
    }

    v3 = 0.0;
    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get bag entry with %@ key");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get bag entry with %@ key");
        }
      }
    }
  }

  return v3;
}

uint64_t GLUtilGetDefaultInterface(_DWORD *a1, char *a2, _BYTE *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = +[IDSNWPathUtils sharedInstance];
  v7 = [v6 getDefaultPath];

  v8 = [v7 status];
  if (v8 != 1)
  {
    v16 = v8;
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v7;
      v25 = 1024;
      v26 = v16;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "no default path is available (path:%@, status:%d).", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"no default path is available (path:%@, status:%d).");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"no default path is available (path:%@, status:%d).");
        }
      }
    }

    v12 = 0;
    goto LABEL_18;
  }

  v9 = [v7 interface];
  v10 = [v9 interfaceIndex];

  v11 = [v7 interface];
  v12 = [v11 interfaceName];

  v13 = [v7 usesInterfaceType:2];
  if ((v10 & 0x80000000) != 0 || !v12)
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v7 privateDescription];
      *buf = 138412802;
      v24 = v12;
      v25 = 1024;
      v26 = v10;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "invalid default interface [%@:%d], %@.", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v21 = [v7 privateDescription];
        _IDSLogTransport(@"GL", @"IDS", @"invalid default interface [%@:%d], %@.");

        if (_IDSShouldLog())
        {
          v22 = [v7 privateDescription];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid default interface [%@:%d], %@.");
        }
      }
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v14 = v13;
  if (a1)
  {
    *a1 = v10;
  }

  if (a2)
  {
    strlcpy(a2, [v12 UTF8String], objc_msgSend(v12, "length") + 1);
  }

  if (a3)
  {
    *a3 = v14;
  }

  v15 = 1;
LABEL_19:

  return v15;
}

uint64_t GLUtilGetLinkOverhead(unsigned int a1)
{
  v1 = ((a1 << 31) >> 31) & 0x14;
  if ((a1 & 2) != 0)
  {
    v1 |= 0x28u;
  }

  v2 = (v1 + ((2 * a1) & 8)) | (a1 >> 3) & 2;
  if ((a1 & 0x20) != 0)
  {
    v2 += 6;
  }

  v3 = ((a1 >> 5) & 2 | (16 * ((a1 & 8) != 0))) + v2;
  if ((a1 & 0x80) != 0)
  {
    v3 += 30;
  }

  v4 = v3 + ((a1 >> 4) & 0x10);
  if ((a1 & 0x200) != 0)
  {
    LOWORD(v4) = v4 + 5;
  }

  return v4;
}

uint64_t GLUtilGetLocalMTU(unsigned int a1, int a2)
{
  if ((a1 & 2) != 0)
  {
    v3 = 1280;
  }

  else
  {
    v3 = 1450;
  }

  if (a2)
  {
    v4 = +[IDSCellularLinkMonitor sharedInstance];
    v5 = [v4 cellularMTU];

    if (v3 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    if (v5)
    {
      v3 = v6;
    }
  }

  return v3 - GLUtilGetLinkOverhead(a1);
}

uint64_t GLUtilGetRATForIPv4Address(int a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) local];
        if (*([v8 address] + 1) != 30 && *(objc_msgSend(v8, "external") + 4) == a1)
        {
          v9 = [v8 radioAccessTechnology];

          goto LABEL_12;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 10;
LABEL_12:

  return v9;
}

uint64_t GLUtilGetRATForIPv6Address(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) local];
        if (*([v8 address] + 1) != 2)
        {
          v9 = [v8 external];
          if (*(a1 + 8) == *(v9 + 8) && *(a1 + 16) == *(v9 + 16))
          {
            v11 = [v8 radioAccessTechnology];

            goto LABEL_15;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 10;
LABEL_15:

  return v11;
}

uint64_t GLUtilHasV4AddressForInterface(int a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 address];
        v10 = [v9 sa];

        if (v10 && *(v10 + 1) == 2 && [v8 index] == a1)
        {
          v11 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

uint64_t GLUtilHasV6Address(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) IPVersion] == 1)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

uint64_t GLUtilHasV4Address(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if (![*(*(&v6 + 1) + 8 * i) IPVersion])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

uint64_t GLUtilGetFirstUnusedInterface(void *a1, void *a2, void *a3, _DWORD *a4, char *a5, char a6)
{
  v49 = *MEMORY[0x1E69E9840];
  v38 = a1;
  v36 = a2;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = a3;
  v34 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v34)
  {
    v30 = a4;
    v31 = a5;
    v35 = *v44;
    while (1)
    {
      v11 = 0;
LABEL_4:
      if (*v44 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v37 = v11;
      v33 = *(*(&v43 + 1) + 8 * v11);
      v12 = [v33 index];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v13 = v36;
      v14 = [v13 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = *v40;
LABEL_8:
      v17 = 0;
      while (1)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v39 + 1) + 8 * v17);
        v19 = [v18 state];
        v20 = [v18 local];
        v21 = [v20 index];

        if (((a6 & 1) != 0 || [v18 isRelayStunCandidatePair] && (objc_msgSend(v18, "isSelfQRSession") & 1) == 0) && v21 == v12 && (v19 - 1) <= 3)
        {
          if (!v38)
          {
            break;
          }

          v23 = [v18 sessionID];
          v24 = [v23 isEqualToString:v38];

          if (v24)
          {
            break;
          }
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v15)
          {
            goto LABEL_8;
          }

          goto LABEL_27;
        }
      }

      v11 = v37 + 1;
      if (v37 + 1 != v34)
      {
        goto LABEL_4;
      }

      v25 = 0;
      v34 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (!v34)
      {
        goto LABEL_33;
      }
    }

LABEL_27:

    if (v30)
    {
      *v30 = v12;
    }

    if (v31)
    {
      v26 = [v33 name];
      v27 = [v26 UTF8String];
      v28 = [v33 name];
      strlcpy(v31, v27, [v28 length] + 1);
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

LABEL_33:

  return v25;
}

uint64_t GLUtilHasDefaultInterface(void *a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v12 = 0;
  v14[0] = 0;
  v14[1] = 0;
  v2 = 0;
  if (GLUtilGetDefaultInterface(&v12, v14, 0))
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = v1;
    v2 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    if (v2)
    {
      v4 = *v9;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v3);
          }

          v6 = [*(*(&v8 + 1) + 8 * i) index];
          if (v6 == v12)
          {
            v2 = 1;
            goto LABEL_12;
          }
        }

        v2 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v2;
}

id GLUtilCreateRelayCandidateForLinkEngine(uint64_t a1, int a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = [IDSStunCandidate candidateWithType:3 transport:0 radioAccessTechnology:0 mtu:1280 index:0xFFFFFFFFLL address:0 external:a1];
  if (a2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:a3];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v5 setInterfaceAllowList:v7];
  }

  return v5;
}

id GLUtilCreateLocalCandidateForLinkEngine(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 address];
  v3 = [v2 sa];

  if ([v1 isCellular])
  {
    v4 = +[IDSCellularLinkMonitor sharedInstance];
    v5 = [v4 radioAccessTechnology];

    if (v5 >= 0xA)
    {
      v6 = 10;
    }

    else
    {
      v6 = v5;
    }
  }

  else if ([v1 isWired])
  {
    v6 = 9;
  }

  else
  {
    v6 = 0;
  }

  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = IDSRadioAccessTechnologyToString(v6);
    v9 = [v1 name];
    *buf = 136315394;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "setting RAT %s for interface [%@].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v10 = IDSRadioAccessTechnologyToString(v6);
      [v1 name];
      v17 = v16 = v10;
      _IDSLogTransport(@"GL", @"IDS", @"setting RAT %s for interface [%@].");

      if (_IDSShouldLog())
      {
        v11 = IDSRadioAccessTechnologyToString(v6);
        [v1 name];
        v17 = v16 = v11;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"setting RAT %s for interface [%@].");
      }
    }
  }

  v12 = +[IDSStunCandidate candidateWithType:transport:radioAccessTechnology:mtu:index:address:external:](IDSStunCandidate, "candidateWithType:transport:radioAccessTechnology:mtu:index:address:external:", 3, 0, v6, 1280, [v1 index], v3, v3);
  [v12 setDelegatedIndex:{objc_msgSend(v1, "delegatedIndex")}];
  v13 = [v1 name];
  [v12 setInterfaceName:v13];

  v14 = [v1 delegatedName];
  [v12 setDelegatedInterfaceName:v14];

  return v12;
}

id GLUtilCreateRelayCandidatePair(void *a1, void *a2, void *a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, void *a9)
{
  v43 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v36 = a2;
  v14 = a3;
  v37 = a9;
  if (a8 == 3)
  {
    v15 = 896;
  }

  else
  {
    v15 = 0;
  }

  if (a8 == 2)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  v38 = [IDSStunCandidate candidateWithType:3 transport:a8 radioAccessTechnology:0 mtu:1280 - GLUtilGetLinkOverhead(v16 | 0x1Au) index:0xFFFFFFFFLL address:0 external:a4];
  v17 = [v14 address];
  v18 = [v17 sa];

  v19 = [v14 isCellular];
  if (v19)
  {
    v20 = +[IDSCellularLinkMonitor sharedInstance];
    LODWORD(v21) = [v20 radioAccessTechnology];

    if (v21 >= 0xA)
    {
      v21 = 10;
    }

    else
    {
      v21 = v21;
    }
  }

  else if ([v14 isWired])
  {
    v21 = 9;
  }

  else
  {
    v21 = 0;
  }

  v22 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = IDSRadioAccessTechnologyToString(v21);
    v24 = [v14 name];
    *buf = 136315394;
    v40 = v23;
    v41 = 2112;
    v42 = v24;
    _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "setting RAT %s for interface [%@].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v25 = IDSRadioAccessTechnologyToString(v21);
      v33 = [v14 name];
      _IDSLogTransport(@"GL", @"IDS", @"setting RAT %s for interface [%@].");

      if (_IDSShouldLog())
      {
        IDSRadioAccessTechnologyToString(v21);
        v33 = [v14 name];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"setting RAT %s for interface [%@].");
      }
    }
  }

  if (*(v18 + 1) == 30)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  v27 = +[IDSStunCandidate candidateWithType:transport:radioAccessTechnology:mtu:index:address:external:](IDSStunCandidate, "candidateWithType:transport:radioAccessTechnology:mtu:index:address:external:", 3, a8, v21, GLUtilGetLocalMTU(v16 | v26 | 0x20u, v19), [v14 index], v18, v18);
  v28 = [v13 relaySessionID];
  v29 = [IDSStunCandidatePair candidatePairWithLocalCandidate:v27 remoteCandidate:v38 sessionID:v28 delegate:v37];

  v30 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v13;
    _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "GLUtilCreateRelayCandidatePair: setPropertiesWithRelaySessionInfo, qrSessionInfo = %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v32 = v13;
      _IDSLogTransport(@"GL", @"IDS", @"GLUtilCreateRelayCandidatePair: setPropertiesWithRelaySessionInfo, qrSessionInfo = %@");
      if (_IDSShouldLog())
      {
        v32 = v13;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUtilCreateRelayCandidatePair: setPropertiesWithRelaySessionInfo, qrSessionInfo = %@");
      }
    }
  }

  [v29 setPropertiesWithRelaySessionInfo:v13 sessionInfoDict:v36 enableSKE:{a7, v32, v33}];
  [v29 setIsAcceptedRelaySession:a5];

  return v29;
}

void *GLUtilGetCandidatePairByLinkID(int a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v9 = a5;
  if (!a1)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    if (*a2)
    {
      v11 = a2[1];
      if (v11)
      {
        v12 = *v11;
        if (v12 < 1)
        {
          v14 = channelForStunCandidatePair((v11 + 2), (v11 + 34), *(v11 + 132));
          Value = 0;
          if (v9 && v14)
          {
            Value = CFDictionaryGetValue(v9, v14);
          }

          a2 = Value;

          goto LABEL_13;
        }

        if (v12 < a4)
        {
          v10 = *(a3 + 8 * v12);
          goto LABEL_5;
        }
      }
    }

    a2 = 0;
    goto LABEL_13;
  }

  a2 = 0;
  if (a1 >= 1 && a1 < a4)
  {
    v10 = *(a3 + 8 * a1);
LABEL_5:
    a2 = v10;
  }

LABEL_13:

  return a2;
}

void GLUtilGetLinkInformation(void *a1, uint64_t a2, _DWORD *a3, _BYTE *a4, void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a5;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v9)
  {
    v22 = 0;
    v11 = 0;
    goto LABEL_21;
  }

  v10 = v9;
  v22 = 0;
  v11 = 0;
  v12 = *v24;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v23 + 1) + 8 * i);
      if (!v7)
      {
        if ([v14 isRelayStunCandidatePair] & 1) == 0 || (objc_msgSend(v14, "isSelfQRSession"))
        {
          continue;
        }

LABEL_14:
        v17 = [v14 local];
        v18 = [v17 transport];

        if (v18 == a2)
        {
          v19 = [v14 state];
          if (v19)
          {
            ++v11;
            v22 |= v19 > 2;
          }
        }

        continue;
      }

      v15 = [v14 sessionID];
      if (([v7 isEqualToString:v15] & 1) == 0 || (objc_msgSend(v14, "isRelayStunCandidatePair") & 1) == 0)
      {

        continue;
      }

      v16 = [v14 isSelfQRSession];

      if ((v16 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v10);
LABEL_21:
  if (a3)
  {
    *a3 = v11;
  }

  if (a4)
  {
    *a4 = v22 & 1;
  }
}

id GLUtilGetSharedSessionIDs(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 sessionID];
        if ([v8 isSharedQRSession])
        {
          v10 = [v2 containsObject:v9] || v2 == 0;
          if (!v10 && v9 != 0)
          {
            CFArrayAppendValue(v2, v9);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t GLUtilHasRelayCandidatePairConnected(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isRelayStunCandidatePair])
        {
          if ([v8 state] == 4)
          {
            if (!v3 || ([v8 sessionID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v3), v9, (v10 & 1) != 0))
            {
              v5 = 1;
              goto LABEL_14;
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v5;
}

uint64_t GLUtilHasRelayCandidatePairSucceededOrConnected(void *a1, void *a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = a2;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 isRelayStunCandidatePair] && (objc_msgSend(v11, "state") == 3 || objc_msgSend(v11, "state") == 4))
        {
          v12 = [v11 local];
          v13 = [v12 radioAccessTechnology];

          if (v13 == a3)
          {
            if (!v5 || ([v11 sessionID], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", v5), v14, (v15 & 1) != 0))
            {
              v16 = 1;
              goto LABEL_16;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_16:

  return v16;
}

uint64_t GLUtilHasSharedRelayCandidatePairSucceededOrConnected(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 allocateType] != 2)
        {
          if ([v8 isRelayStunCandidatePair])
          {
            v9 = [v8 sessionID];
            v10 = [v9 isEqualToString:v3];

            if (v10)
            {
              if (([v8 state] - 5) > 0xFFFFFFFFFFFFFFFDLL)
              {
                v5 = 1;
                goto LABEL_14;
              }
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v5;
}

uint64_t GLUtilHasNonSharedRelayCandidatePair(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 isSharedQRSession] & 1) == 0)
        {
          if ([v8 isRelayStunCandidatePair])
          {
            if ([v8 state])
            {
              if (!v3 || ([v8 sessionID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v3), v9, (v10 & 1) != 0))
              {
                v5 = 1;
                goto LABEL_15;
              }
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v5;
}

uint64_t GLUtilHasCandidatePairForSameSharedSession(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isSharedQRSession])
        {
          if ([v8 state])
          {
            v9 = [v8 sessionID];
            v10 = [v9 isEqualToString:v3];

            if (v10)
            {
              v5 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

uint64_t GLUtilHasDifferentSharedRelayCandidatePair(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isSharedQRSession])
        {
          if ([v8 state] == 4)
          {
            v9 = [v8 sessionID];
            v10 = [v9 isEqualToString:v3];

            if (!v10)
            {
              v5 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

id GLUtilGetDifferentRelayCandidatePairSucceeded(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = *v21;
    v18 = v4;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 state];
        if ([v8 isRelayStunCandidatePair])
        {
          v10 = (v9 - 3) > 1;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v11 = [v3 sessionID];
          v12 = [v8 sessionID];
          if ([v11 isEqualToString:v12] && !objc_msgSend(v3, "isEqual:", v8))
          {
            [v3 local];
            v14 = v13 = v3;
            v19 = [v14 radioAccessTechnology];
            v15 = [v8 local];
            v16 = [v15 radioAccessTechnology];

            v3 = v13;
            v4 = v18;

            if (v19 == v16)
            {
              v5 = v8;
              goto LABEL_18;
            }
          }

          else
          {
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v5;
}

id GLUtilGetRelayCandidatePairNotSucceededForOppositeIPVersion(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = *v26;
    v24 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v8 state];
        if ([v8 isRelayStunCandidatePair])
        {
          v10 = (v9 - 1) > 1;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v11 = [v3 sessionID];
          v12 = [v8 sessionID];
          if (![v11 isEqualToString:v12] || (objc_msgSend(v3, "isEqual:", v8) & 1) != 0)
          {
            goto LABEL_18;
          }

          v13 = [v8 local];
          v14 = *([v13 address] + 1);
          v15 = [v3 local];
          if (v14 == *([v15 address] + 1))
          {
            goto LABEL_17;
          }

          v23 = [v8 local];
          v16 = [v23 radioAccessTechnology];
          v22 = [v3 local];
          if (v16 != [v22 radioAccessTechnology])
          {

LABEL_17:
            v4 = v24;
LABEL_18:

            continue;
          }

          v19 = [v8 local];
          v21 = [v19 transport];
          v17 = [v3 local];
          v20 = [v17 transport];

          v4 = v24;
          if (v21 == v20)
          {
            v5 = v8;
            goto LABEL_21;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

LABEL_21:

  return v5;
}

uint64_t GLUtilSelectStunTransport(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, void *a7, unint64_t a8)
{
  v42 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a7;
  if ((a2 - 3) > 1)
  {
    v35 = 0;
    v34 = -86;
    v19 = +[IDSServerBag sharedInstance];
    v20 = [v19 objectForKey:@"ids-fallback-to-tcp-first"];

    v21 = [v20 BOOLValue];
    v22 = 3;
    if (!v21)
    {
      v22 = 4;
    }

    v33 = v22;
    if (a3)
    {
      HasRelayCandidatePairConnected = GLUtilHasRelayCandidatePairConnected(v15, v16);
      a2 = 2;
      if (a8 <= 3 && (HasRelayCandidatePairConnected & 1) == 0)
      {
        GLUtilGetLinkInformation(v15, 2, &v35, 0, v16);
        a2 = 2;
        if (v35)
        {
          if ((a6 & 1) == 0)
          {
            GLUtilGetLinkInformation(v15, v33, &v35, 0, v16);
            v24 = 3;
            if (v21)
            {
              v24 = 4;
            }

            if (v35)
            {
              a2 = v24;
            }

            else
            {
              a2 = v33;
            }
          }
        }
      }
    }

    else
    {
      v25 = GLUtilHasRelayCandidatePairConnected(0, v16);
      if (a4 && !a5)
      {
        goto LABEL_45;
      }

      GLUtilGetLinkInformation(0, 2, &v35, &v34, v16);
      v26 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = @"NO";
        if (v34)
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }

        *buf = 67109890;
        if (v25)
        {
          v29 = @"YES";
        }

        else
        {
          v29 = @"NO";
        }

        *v37 = v35;
        *&v37[4] = 2112;
        if (a6)
        {
          v27 = @"YES";
        }

        *&v37[6] = v28;
        v38 = 2112;
        v39 = v29;
        v40 = 2112;
        v41 = v27;
        _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "linkAttempted: %d, linkConnected: %@, isQRConnected: %@, retryAllocbind: %@", buf, 0x26u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"linkAttempted: %d, linkConnected: %@, isQRConnected: %@, retryAllocbind: %@");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"linkAttempted: %d, linkConnected: %@, isQRConnected: %@, retryAllocbind: %@");
          }
        }
      }

      if (v35)
      {
        v30 = v25 | v34;
        a2 = 2;
        if ((v30 & 1) == 0 && (a6 & 1) == 0)
        {
          GLUtilGetLinkInformation(0, v33, &v35, &v34, v16);
          a2 = v33;
          if (v35)
          {
            v31 = 3;
            if (v21)
            {
              v31 = 4;
            }

            if (v34)
            {
              a2 = v33;
            }

            else
            {
              a2 = v31;
            }
          }
        }
      }

      else
      {
LABEL_45:
        a2 = 2;
      }
    }
  }

  else
  {
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = (&_IDSStunTransportStrings)[a2];
      *buf = 136315138;
      *v37 = v18;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "found override tranpsort [%s].", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"found override tranpsort [%s].");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"found override tranpsort [%s].");
        }
      }
    }
  }

  return a2;
}

__CFArray *GLUtilGetExcludedInterfaceAddressList(uint64_t a1, uint64_t a2, void *a3)
{
  v78 = *MEMORY[0x1E69E9840];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = a3;
  v59 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (!v59)
  {
    v4 = 0;
    goto LABEL_75;
  }

  v4 = 0;
  v58 = *v65;
  do
  {
    for (i = 0; i != v59; ++i)
    {
      if (*v65 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v64 + 1) + 8 * i);
      v7 = [v6 index];
      v8 = [v6 delegatedIndex];
      v9 = [v6 address];
      v10 = [v9 sa];

      if (!v10 || IsLinkLocalSA(v10))
      {
        v11 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v6 name];
          v13 = v12;
          v14 = [v12 UTF8String];
          *buf = 136315394;
          v70 = v14;
          v71 = 1024;
          v72 = v7;
          _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "skip if:[%s:%d].", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v15 = [v6 name];
            v16 = v15;
            v51 = [v15 UTF8String];
            v52 = v7;
            _IDSLogTransport(@"GL", @"IDS", @"skip if:[%s:%d].");

            if (_IDSShouldLog())
            {
              v17 = [v6 name];
              v18 = v17;
              v51 = [v17 UTF8String];
              v52 = v7;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"skip if:[%s:%d].");
            }
          }
        }

        if (v4)
        {
          if (!v6)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (!v6)
          {
            goto LABEL_20;
          }
        }

        if (v4)
        {
          CFArrayAppendValue(v4, v6);
        }
      }

LABEL_20:
      if (![v6 isCompanionLink])
      {
        goto LABEL_33;
      }

      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v6 name];
        v21 = v20;
        v22 = [v20 UTF8String];
        *buf = 136315394;
        v70 = v22;
        v71 = 1024;
        v72 = v7;
        _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "skip companion link if:[%s:%d].", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v23 = [v6 name];
          v24 = v23;
          v50 = [v23 UTF8String];
          v52 = v7;
          _IDSLogTransport(@"GL", @"IDS", @"skip companion link if:[%s:%d].");

          if (_IDSShouldLog())
          {
            v25 = [v6 name];
            v26 = v25;
            v50 = [v25 UTF8String];
            v52 = v7;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"skip companion link if:[%s:%d].");
          }
        }
      }

      if (v4)
      {
        if (!v6)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (!v6)
        {
          goto LABEL_33;
        }
      }

      if (v4)
      {
        CFArrayAppendValue(v4, v6);
      }

LABEL_33:
      if (v8 >= 1)
      {
        if (a1 != -1 && v7 == a1)
        {
          continue;
        }

        if (v4)
        {
          if (!v6)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (!v6)
          {
LABEL_62:
            v40 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = [v6 name];
              v42 = v41;
              v43 = [v41 UTF8String];
              *buf = 136316162;
              v70 = v43;
              v71 = 1024;
              v72 = v7;
              v73 = 1024;
              *v74 = v8;
              *&v74[4] = 2080;
              *&v74[6] = a2;
              v75 = 1024;
              v76 = a1;
              _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "skip if:[%s:%d] with delegate-if-idx:%d, default-if:[%s:%d].", buf, 0x28u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v44 = [v6 name];
                v45 = v44;
                v54 = a2;
                v55 = a1;
                v52 = v7;
                v53 = v8;
                v50 = [v44 UTF8String];
                _IDSLogTransport(@"GL", @"IDS", @"skip if:[%s:%d] with delegate-if-idx:%d, default-if:[%s:%d].");

                if (_IDSShouldLog())
                {
                  v46 = [v6 name];
                  v47 = v46;
                  v54 = a2;
                  v55 = a1;
                  v52 = v7;
                  v53 = v8;
                  v50 = [v46 UTF8String];
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"skip if:[%s:%d] with delegate-if-idx:%d, default-if:[%s:%d].");
                }
              }
            }

            continue;
          }
        }

        if (v4)
        {
          CFArrayAppendValue(v4, v6);
        }

        goto LABEL_62;
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v27 = obj;
      v28 = [v27 countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (v28)
      {
        v29 = *v61;
LABEL_41:
        v30 = 0;
        while (1)
        {
          if (*v61 != v29)
          {
            objc_enumerationMutation(v27);
          }

          if ((a1 & 0x80000000) == 0)
          {
            v31 = *(*(&v60 + 1) + 8 * v30);
            if ([v31 index] == a1 && objc_msgSend(v31, "delegatedIndex") == v7)
            {
              break;
            }
          }

          if (v28 == ++v30)
          {
            v28 = [v27 countByEnumeratingWithState:&v60 objects:v68 count:16];
            if (v28)
            {
              goto LABEL_41;
            }

            goto LABEL_49;
          }
        }

        v32 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v6 name];
          v34 = v33;
          v35 = [v33 UTF8String];
          *buf = 136315906;
          v70 = v35;
          v71 = 1024;
          v72 = v7;
          v73 = 2080;
          *v74 = a2;
          *&v74[8] = 1024;
          *&v74[10] = a1;
          _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "skip if:[%s:%d], default-if:[%s:%d].", buf, 0x22u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v36 = [v6 name];
            v37 = v36;
            v53 = a2;
            v54 = a1;
            v50 = [v36 UTF8String];
            v52 = v7;
            _IDSLogTransport(@"GL", @"IDS", @"skip if:[%s:%d], default-if:[%s:%d].");

            if (_IDSShouldLog())
            {
              v38 = [v6 name];
              v39 = v38;
              v53 = a2;
              v54 = a1;
              v50 = [v38 UTF8String];
              v52 = v7;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"skip if:[%s:%d], default-if:[%s:%d].");
            }
          }
        }

        if (v4)
        {
          if (!v6)
          {
            continue;
          }
        }

        else
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (!v6)
          {
            continue;
          }
        }

        if (v4)
        {
          CFArrayAppendValue(v4, v6);
        }
      }

      else
      {
LABEL_49:
      }
    }

    v59 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
  }

  while (v59);
LABEL_75:

  v48 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v70 = v4;
    _os_log_impl(&dword_1A7AD9000, v48, OS_LOG_TYPE_DEFAULT, "excluded interfaces:%@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"excluded interfaces:%@.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"excluded interfaces:%@.");
      }
    }
  }

  return v4;
}

id GLUtilSelectInterface(uint64_t a1, int a2, void *a3, void *a4, void *a5, int a6, uint64_t a7, int a8)
{
  v118[2] = *MEMORY[0x1E69E9840];
  v86 = a3;
  v80 = a4;
  v81 = a5;
  HasRelayCandidatePairConnected = GLUtilHasRelayCandidatePairConnected(v81, v80);
  v14 = HasRelayCandidatePairConnected;
  v94 = -1;
  v95 = -1;
  if ((a1 - 3) < 2)
  {
    v15 = HasRelayCandidatePairConnected;
  }

  else
  {
    v15 = 0;
  }

  v83 = v15;
  v93 = 0;
  v118[0] = 0;
  v118[1] = 0;
  v117[0] = 0;
  v117[1] = 0;
  if (GLUtilGetDefaultInterface(&v95, v118, &v93))
  {
    v85 = (v14 | a2) ^ 1;
  }

  else
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "failed to get default interface, use non-default interface.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get default interface, use non-default interface.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get default interface, use non-default interface.");
        }
      }
    }

    v85 = 0;
  }

  v82 = GLUtilGetExcludedInterfaceAddressList(v95, v118, v86);
  v17 = [v86 mutableCopy];
  [(__CFString *)v17 removeObjectsInArray:v82];
  v18 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v98 = v17;
    _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "remaining interfaces:%@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v64 = v17;
      _IDSLogTransport(@"GL", @"IDS", @"remaining interfaces:%@.");
      if (_IDSShouldLog())
      {
        v64 = v17;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"remaining interfaces:%@.");
      }
    }
  }

  v19 = [IDSServerBag sharedInstanceForBagType:0, v64];
  v20 = [v19 objectForKey:@"reduce-cellular-usage"];
  v21 = [v20 BOOLValue];

  GLUtilGetFirstUnusedInterface(v81, v80, v17, &v94, v117, v21);
  v79 = a2 & ~v14;
  v22 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = @"NO";
    if (v14)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    if (v83)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    if (v79)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v98 = (&_IDSStunTransportStrings)[a1];
    if (v85)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    *buf = 136317442;
    v99 = 2112;
    if (v93)
    {
      v23 = @"YES";
    }

    v100 = v24;
    v101 = 2112;
    v102 = v25;
    v103 = 2112;
    v104 = v26;
    v105 = 2112;
    v106 = v27;
    v107 = 2080;
    v108 = v118;
    v109 = 1024;
    v110 = v95;
    v111 = 2112;
    v112 = v23;
    v113 = 2080;
    v114 = v117;
    v115 = 1024;
    v116 = v94;
    _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "interface preference for %s: (connected:%@, non-cell:%@, cell:%@, use-default:%@, default-if:[%s:%d, Cell:%@], first-unused-if:[%s:%d]).", buf, 0x5Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v28 = v14 ? @"YES" : @"NO";
    v29 = v83 ? @"YES" : @"NO";
    v30 = v79 ? @"YES" : @"NO";
    v31 = v85 ? @"YES" : @"NO";
    v32 = v93 ? @"YES" : @"NO";
    v77 = v117;
    v78 = v94;
    v75 = v95;
    v76 = v32;
    v73 = v31;
    v74 = v118;
    v71 = v29;
    v72 = v30;
    v65 = (&_IDSStunTransportStrings)[a1];
    v66 = v28;
    _IDSLogTransport(@"GL", @"IDS", @"interface preference for %s: (connected:%@, non-cell:%@, cell:%@, use-default:%@, default-if:[%s:%d, Cell:%@], first-unused-if:[%s:%d]).");
    if (_IDSShouldLog())
    {
      if (v93)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      v77 = v117;
      v78 = v94;
      v75 = v95;
      v76 = v33;
      v73 = v31;
      v74 = v118;
      v71 = v29;
      v72 = v30;
      v65 = (&_IDSStunTransportStrings)[a1];
      v66 = v28;
      _IDSLogV(0, @"IDSFoundation", @"GL", @"interface preference for %s: (connected:%@, non-cell:%@, cell:%@, use-default:%@, default-if:[%s:%d, Cell:%@], first-unused-if:[%s:%d]).");
    }
  }

  v34 = IMGetDomainBoolForKey();
  v35 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v98) = v34;
    _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "forceToUseIPv6 = %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v65 = v34;
      _IDSLogTransport(@"GL", @"IDS", @"forceToUseIPv6 = %d");
      if (_IDSShouldLog())
      {
        v65 = v34;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"forceToUseIPv6 = %d");
      }
    }
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v17;
  v36 = [(__CFString *)obj countByEnumeratingWithState:&v89 objects:v96 count:16];
  if (!v36)
  {
    v84 = 0;
    goto LABEL_133;
  }

  v84 = 0;
  v37 = *v90;
  while (2)
  {
    for (i = 0; i != v36; ++i)
    {
      if (*v90 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v89 + 1) + 8 * i);
      v40 = [v39 isCellular];
      v41 = [v39 index];
      v42 = [v39 address];
      v43 = [v42 sa];

      v44 = *(v43 + 1);
      if (v34)
      {
        if (v44 == 2)
        {
          continue;
        }
      }

      else if (v44 == 30 && (GLUtilHasV4AddressForInterface(v41, v86) & 1) != 0)
      {
        continue;
      }

      if (a8 == 1)
      {
        if (!v40)
        {
          continue;
        }

        v48 = v39;

        v52 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v54 = [v48 name];
          *buf = 138412546;
          v98 = @"IDSGLInterfaceTypeMask_Cellular";
          v99 = 2112;
          v100 = v54;
          _os_log_impl(&dword_1A7AD9000, v52, OS_LOG_TYPE_DEFAULT, "GLUtilSelectInterface: havePreferredLocalInterface %@, selected interface: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v68 = [v48 name];
            _IDSLogTransport(@"GL", @"IDS", @"GLUtilSelectInterface: havePreferredLocalInterface %@, selected interface: %@");

            if (_IDSShouldLog())
            {
              v84 = [v48 name];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUtilSelectInterface: havePreferredLocalInterface %@, selected interface: %@");
              goto LABEL_119;
            }
          }
        }

LABEL_132:
        v84 = v48;
        goto LABEL_133;
      }

      if (a8 == 2)
      {
        if (v40)
        {
          continue;
        }

        v48 = v39;

        v49 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v51 = [v48 name];
          *buf = 138412546;
          v98 = @"IDSGLInterfaceTypeMask_NonCellular";
          v99 = 2112;
          v100 = v51;
          _os_log_impl(&dword_1A7AD9000, v49, OS_LOG_TYPE_DEFAULT, "GLUtilSelectInterface: havePreferredLocalInterface %@, selected interface: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v67 = [v48 name];
            _IDSLogTransport(@"GL", @"IDS", @"GLUtilSelectInterface: havePreferredLocalInterface %@, selected interface: %@");

            if (_IDSShouldLog())
            {
              v84 = [v48 name];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUtilSelectInterface: havePreferredLocalInterface %@, selected interface: %@");
LABEL_119:

              v84 = v39;
              goto LABEL_133;
            }
          }
        }

        goto LABEL_132;
      }

      if (a6 == 1)
      {
        if (!v40)
        {
          continue;
        }

        v48 = v39;

        v56 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [v48 name];
          *buf = 138412546;
          v98 = @"IDSGLInterfaceTypeMask_Cellular";
          v99 = 2112;
          v100 = v58;
          _os_log_impl(&dword_1A7AD9000, v56, OS_LOG_TYPE_DEFAULT, "GLUtilSelectInterface: havePreferredInterfaceFromInitiator %@, selected interface: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v69 = [v48 name];
            _IDSLogTransport(@"GL", @"IDS", @"GLUtilSelectInterface: havePreferredInterfaceFromInitiator %@, selected interface: %@");

            if (_IDSShouldLog())
            {
              v84 = [v48 name];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUtilSelectInterface: havePreferredInterfaceFromInitiator %@, selected interface: %@");
              goto LABEL_119;
            }
          }
        }

        goto LABEL_132;
      }

      if (a6 == 2)
      {
        if (v40)
        {
          continue;
        }

        v48 = v39;

        v59 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v61 = [v48 name];
          *buf = 138412546;
          v98 = @"IDSGLInterfaceTypeMask_NonCellular";
          v99 = 2112;
          v100 = v61;
          _os_log_impl(&dword_1A7AD9000, v59, OS_LOG_TYPE_DEFAULT, "GLUtilSelectInterface: havePreferredInterfaceFromInitiator %@, selected interface: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v70 = [v48 name];
            _IDSLogTransport(@"GL", @"IDS", @"GLUtilSelectInterface: havePreferredInterfaceFromInitiator %@, selected interface: %@");

            if (_IDSShouldLog())
            {
              v84 = [v48 name];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUtilSelectInterface: havePreferredInterfaceFromInitiator %@, selected interface: %@");
              goto LABEL_119;
            }
          }
        }

        goto LABEL_132;
      }

      v45 = v85;
      if ((v95 & 0x80000000) != 0)
      {
        v45 = 0;
      }

      if (v45 == 1 && v41 == v95)
      {
LABEL_118:
        v55 = v39;
        goto LABEL_119;
      }

      if (v83)
      {
        if ((v40 & 1) == 0)
        {
          goto LABEL_118;
        }
      }

      else if (v79)
      {
        if (v40)
        {
          goto LABEL_118;
        }
      }

      else if (v94 == -1)
      {
        v47 = v39;

        v84 = v47;
      }

      else
      {
        if (v41 == v94)
        {
          v46 = v85;
        }

        else
        {
          v46 = 1;
        }

        if ((v46 & 1) == 0)
        {
          goto LABEL_118;
        }
      }
    }

    v36 = [(__CFString *)obj countByEnumeratingWithState:&v89 objects:v96 count:16];
    if (v36)
    {
      continue;
    }

    break;
  }

LABEL_133:

  v62 = v84;

  return v62;
}

void sub_1A7CA6370(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7CA6240);
  }

  _Unwind_Resume(a1);
}

__CFString *GLUtilPreferredInterfaceToString(int a1)
{
  v1 = @"IDSGLInterfaceTypeMask_Invalid";
  if (a1 == 1)
  {
    v1 = @"IDSGLInterfaceTypeMask_Cellular";
  }

  if (a1 == 2)
  {
    return @"IDSGLInterfaceTypeMask_NonCellular";
  }

  else
  {
    return v1;
  }
}

uint64_t GLUtilHasValidUInt16Attr(void *a1, uint64_t a2, _WORD *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x410uLL);
  result = [a1 getAttribute:a2 attribute:v7];
  if (a3)
  {
    if (result)
    {
      *a3 = v8;
    }
  }

  return result;
}

uint64_t GLUtilHasValidUInt32Attr(void *a1, uint64_t a2, _DWORD *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x410uLL);
  result = [a1 getAttribute:a2 attribute:v7];
  if (a3)
  {
    if (result)
    {
      *a3 = v8;
    }
  }

  return result;
}

double GLUtilHasValidUUIDAttr(void *a1, uint64_t a2, _OWORD *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x410uLL);
  if ([a1 getAttribute:a2 attribute:v7])
  {
    result = v8[0];
    *a3 = *v8;
  }

  return result;
}

uint64_t GLUtilHasValidBinaryDataAttr(void *a1, uint64_t a2, void *a3, int *a4)
{
  *&v14[1028] = *MEMORY[0x1E69E9840];
  bzero(v12, 0x410uLL);
  v8 = [a1 getAttribute:a2 attribute:v12];
  v9 = v13;
  if (v13 < 1025)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    memcpy(a3, v14, v13);
    *a4 = v9;
  }

  return v10;
}

__CFString *GLUtilLinkTypeMaskToString(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return off_1E77E2A38[(a1 - 1)];
  }
}

id GLUtilInterfaceTypeListToString(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if ((a1 & 2) != 0)
  {
    [v2 appendString:@"[W"];
  }

  if (a1)
  {
    if ([v3 length])
    {
      v4 = @", C";
    }

    else
    {
      v4 = @"[C";
    }

    [v3 appendString:v4];
  }

  if ([v3 length])
  {
    v5 = @"]";
  }

  else
  {
    v5 = @"[]";
  }

  [v3 appendString:v5];

  return v3;
}

id GLUtilLinkTypeListToString(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"[W-W"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  if ([v3 length])
  {
    v7 = @", W-C";
  }

  else
  {
    v7 = @"[W-C";
  }

  [v3 appendString:v7];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

LABEL_20:
  if ([v3 length])
  {
    v8 = @", C-W";
  }

  else
  {
    v8 = @"[C-W";
  }

  [v3 appendString:v8];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    if ([v3 length])
    {
      v4 = @", C-C";
    }

    else
    {
      v4 = @"[C-C";
    }

    [v3 appendString:v4];
  }

LABEL_9:
  if ([v3 length])
  {
    v5 = @"]";
  }

  else
  {
    v5 = @"[]";
  }

  [v3 appendString:v5];

  return v3;
}

uint64_t GLUtilNewQRLinkType(int a1, int a2, int a3, void *a4)
{
  v7 = a4;
  if (!a2)
  {
    goto LABEL_41;
  }

  if (!a3)
  {
    if (a2 != 3)
    {
      goto LABEL_41;
    }

    v8 = 0;
    if (a1 <= 3)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          goto LABEL_42;
        }

        goto LABEL_28;
      }

      goto LABEL_37;
    }

    if (a1 == 4)
    {
      v8 = !GLUtilRelayLinkHasReachedMaxRetryLimit(1, v7);
      goto LABEL_42;
    }

    if (a1 != 8)
    {
      goto LABEL_42;
    }

LABEL_31:
    LODWORD(v8) = 2;
    v9 = 2;
    goto LABEL_38;
  }

  if (a1)
  {
    if ((a1 & 8) == 0)
    {
      if ((a2 & 1) == 0)
      {
        v8 = 0;
        if ((a1 & 2) != 0 || (a3 & 1) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_31;
      }

      if ((a3 & 1) == 0)
      {
LABEL_36:
        if ((a1 & 4) != 0)
        {
          goto LABEL_41;
        }

LABEL_37:
        LODWORD(v8) = 4;
        v9 = 4;
LABEL_38:
        if (GLUtilRelayLinkHasReachedMaxRetryLimit(v9, v7))
        {
          v8 = 0;
        }

        else
        {
          v8 = v8;
        }

        goto LABEL_42;
      }

      v8 = 8;
      if (!GLUtilRelayLinkHasReachedMaxRetryLimit(8, v7))
      {
        goto LABEL_42;
      }
    }

    if ((a1 & 2) == 0)
    {
      v8 = 2;
      if (!GLUtilRelayLinkHasReachedMaxRetryLimit(2, v7))
      {
        goto LABEL_42;
      }
    }

    goto LABEL_36;
  }

  if ((a2 & 2) == 0)
  {
    if (a2)
    {
      if ((a3 & 2) != 0 && (a1 & 4) == 0)
      {
        v8 = 4;
        if (!GLUtilRelayLinkHasReachedMaxRetryLimit(4, v7))
        {
          goto LABEL_42;
        }
      }

      v8 = 0;
      if ((a1 & 8) != 0 || (a3 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_28;
    }

LABEL_41:
    v8 = 0;
    goto LABEL_42;
  }

  if ((a3 & 2) == 0)
  {
    if ((a1 & 2) == 0)
    {
      if ((a3 & 1) == 0)
      {
        goto LABEL_41;
      }

      v8 = 2;
      if (!GLUtilRelayLinkHasReachedMaxRetryLimit(2, v7))
      {
        goto LABEL_42;
      }
    }

    v8 = 0;
    if ((a1 & 8) != 0 || (a2 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_28:
    LODWORD(v8) = 8;
    v9 = 8;
    goto LABEL_38;
  }

  v8 = 1;
  if (GLUtilRelayLinkHasReachedMaxRetryLimit(1, v7))
  {
    v11 = a3 & 1;
    if ((a1 & 8) != 0 || (v11 & a2) == 0 || (v8 = 8, GLUtilRelayLinkHasReachedMaxRetryLimit(8, v7)))
    {
      if ((a1 & 2) != 0 || !v11 || (v8 = 2, GLUtilRelayLinkHasReachedMaxRetryLimit(2, v7)))
      {
        v8 = 0;
        if (a1 & 4) == 0 && (a2)
        {
          goto LABEL_37;
        }
      }
    }
  }

LABEL_42:

  return v8;
}

BOOL GLUtilRelayLinkHasReachedMaxRetryLimit(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v5 = [v3 objectForKey:v4];
  v6 = [v5 intValue];

  if (v6 >= 8)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if ((a1 - 1) > 7u)
      {
        v8 = 0;
      }

      else
      {
        v8 = off_1E77E2A38[(a1 - 1)];
      }

      *buf = 136315650;
      v11 = "GLUtilRelayLinkHasReachedMaxRetryLimit";
      v12 = 2112;
      v13 = v8;
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "%s: retry count for linkType: %@ has exceeded, with %d retries!", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"%s: retry count for linkType: %@ has exceeded, with %d retries!");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"%s: retry count for linkType: %@ has exceeded, with %d retries!");
        }
      }
    }
  }

  return v6 > 7;
}

uint64_t GLUtilLinkTypeMaskForCandidatePair(void *a1)
{
  v1 = a1;
  v2 = [v1 local];
  v3 = [v2 isCellularStunCandidate];

  v4 = [v1 remote];

  v5 = [v4 isCellularStunCandidate];
  v6 = v5 ^ 1;
  if (((v3 ^ 1) & 1) == 0 && !v6)
  {
    return 8;
  }

  v8 = v3 | v6;
  if ((v3 ^ 1 | v5))
  {
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  if (v8)
  {
    return v9;
  }

  else
  {
    return 2;
  }
}

void GLUtilReportAWDStunMessageEvent(void *a1, uint64_t a2, void *a3, float a4)
{
  v7 = a3;
  GLUtilReportAWDStunMessageEventWithType([a1 type], a2, v7, a4);
}

void GLUtilReportAWDStunMessageEventWithType(uint64_t a1, uint64_t a2, void *a3, float a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v45 = sub_1A7CA744C(a1, [v6 isSharedQRSession]);
  if (v45)
  {
    v7 = [v6 local];
    v47 = [v7 radioAccessTechnology];

    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v49 = a1;
      v50 = 1024;
      v51 = v45;
      v52 = 1024;
      v53 = a2;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "report AWD stun message event (messageType:%04x, eventSubType:%u, resultCode:%d).", buf, 0x14u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v32 = v45;
        v33 = a2;
        v31 = a1;
        _IDSLogTransport(@"GL", @"IDS", @"report AWD stun message event (messageType:%04x, eventSubType:%u, resultCode:%d).");
        if (_IDSShouldLog())
        {
          v33 = a2;
          v31 = a1;
          v32 = v45;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"report AWD stun message event (messageType:%04x, eventSubType:%u, resultCode:%d).");
        }
      }
    }

    v35 = [IDSQuickRelayMetric alloc];
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v45];
    if (a4 <= 0.0)
    {
      v34 = 0;
    }

    else
    {
      *&v9 = a4;
      v34 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    }

    v39 = [MEMORY[0x1E696AD98] numberWithInt:{a2, v31, v32, v33}];
    v37 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "relayProviderType")}];
    v11 = MEMORY[0x1E696AD98];
    v12 = [v6 local];
    v13 = [v11 numberWithInteger:{objc_msgSend(v12, "transport")}];
    v14 = v47;
    if (v47 > 0xA)
    {
      v15 = 0;
    }

    else
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      v14 = v47;
    }

    v16 = v14 < 0xB;
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "enableSKE")}];
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isInitiator")}];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v6, "protocolVersion")}];
    v20 = [v6 appName];
    v36 = [(IDSQuickRelayMetric *)v35 initWithType:&unk_1F1B203D8 eventSubType:v41 duration:v34 resultCode:v39 providerType:v37 transportType:v13 interfaceType:v15 skeEnabled:v17 isInitiator:v18 protocolVersion:v19 retryCount:0 serviceName:v20 subServiceName:0 participantCount:0];

    if (v16)
    {
    }

    if (a4 > 0.0)
    {
    }

    v21 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v21 logMetric:v36];

    v42 = +[IDSAWDLogging sharedInstance];
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v45];
    if (a4 <= 0.0)
    {
      v38 = 0;
    }

    else
    {
      *&v22 = a4;
      v38 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
    }

    v44 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v40 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "relayProviderType")}];
    v23 = MEMORY[0x1E696AD98];
    v24 = [v6 local];
    v25 = [v23 numberWithInteger:{objc_msgSend(v24, "transport")}];
    if (v47 >= 0xB)
    {
      v26 = 0;
    }

    else
    {
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v47];
    }

    v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "enableSKE")}];
    v28 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isInitiator")}];
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v6, "protocolVersion")}];
    v30 = [v6 appName];
    [v42 IDSQuickRelayEventType:&unk_1F1B203D8 eventSubType:v46 duration:v38 resultCode:v44 providerType:v40 transportType:v25 interfaceType:v26 skeEnabled:v27 isInitiator:v28 protocolVersion:v29 retryCount:0 serviceName:v30 subServiceName:0 participantCount:0];

    if (v47 < 0xB)
    {
    }

    if (a4 > 0.0)
    {
    }
  }

  else
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v49 = a1;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "receive unknown stun message type (%04x) for AWD, ignore", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"receive unknown stun message type (%04x) for AWD, ignore");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive unknown stun message type (%04x) for AWD, ignore");
        }
      }
    }
  }
}

uint64_t sub_1A7CA744C(uint64_t a1, int a2)
{
  if (a1 <= 3827)
  {
    if (a1 > 3811)
    {
      if (a2)
      {
        v13 = 217;
      }

      else
      {
        v13 = 204;
      }

      if (a1 != 3825)
      {
        v13 = 0;
      }

      if (a1 == 3816)
      {
        v14 = 248;
      }

      else
      {
        v14 = v13;
      }

      if (a1 == 3815)
      {
        v7 = 246;
      }

      else
      {
        v7 = v14;
      }

      if (a1 == 3813)
      {
        v15 = 233;
      }

      else
      {
        v15 = 0;
      }

      if (a1 == 3812)
      {
        v11 = 229;
      }

      else
      {
        v11 = v15;
      }

      v12 = a1 <= 3814;
    }

    else
    {
      if (a2)
      {
        v7 = 218;
      }

      else
      {
        v7 = 205;
      }

      if (a2)
      {
        v8 = 221;
      }

      else
      {
        v8 = 208;
      }

      if (a1 == 3811)
      {
        v9 = 226;
      }

      else
      {
        v9 = 0;
      }

      if (a1 != 3810)
      {
        v8 = v9;
      }

      if (a1 != 3809)
      {
        v7 = v8;
      }

      if (a2)
      {
        v10 = 213;
      }

      else
      {
        v10 = 201;
      }

      if (a1 != 3808)
      {
        v10 = 0;
      }

      if (a1 == 2321)
      {
        v11 = 704;
      }

      else
      {
        v11 = v10;
      }

      v12 = a1 <= 3808;
    }

    if (v12)
    {
      return v11;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = a1 - 4064;
    result = 0;
    switch(v2)
    {
      case 0:
        v4 = a2 == 0;
        v5 = 202;
        v6 = 214;
        goto LABEL_61;
      case 1:
        v4 = a2 == 0;
        v5 = 206;
        v6 = 219;
        goto LABEL_61;
      case 2:
        v4 = a2 == 0;
        v5 = 209;
        goto LABEL_57;
      case 3:
        return 227;
      case 4:
        return 230;
      case 5:
        return 234;
      case 6:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
        return result;
      case 7:
        return 247;
      case 8:
        return 249;
      case 16:
        v4 = a2 == 0;
        v5 = 203;
        v6 = 216;
        goto LABEL_61;
      case 17:
        v4 = a2 == 0;
        v5 = 207;
        v6 = 220;
        goto LABEL_61;
      case 18:
        v4 = a2 == 0;
        v5 = 210;
LABEL_57:
        v6 = 222;
LABEL_61:
        if (v4)
        {
          result = v5;
        }

        else
        {
          result = v6;
        }

        break;
      case 19:
        result = 228;
        break;
      case 20:
        result = 231;
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

void GLUtilReportAWDActiveLinkRTT(void *a1, unsigned int a2, unsigned int a3, float a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [v5 local];
  v40 = [v6 radioAccessTechnology];

  v7 = [v5 local];
  v39 = [v7 transport];

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = (&_IDSStunTransportStrings)[v39];
    *buf = 67109634;
    v42 = a4;
    v43 = 2080;
    v44 = v9;
    v45 = 2080;
    v46 = IDSRadioAccessTechnologyToString(v40);
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "report AWD active link rtt: %d ms for %s on RAT [%s].", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v31 = (&_IDSStunTransportStrings)[v39];
      v32 = IDSRadioAccessTechnologyToString(v40);
      v30 = a4;
      _IDSLogTransport(@"GL", @"IDS", @"report AWD active link rtt: %d ms for %s on RAT [%s].");
      if (_IDSShouldLog())
      {
        v31 = (&_IDSStunTransportStrings)[v39];
        v32 = IDSRadioAccessTechnologyToString(v40);
        v30 = a4;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"report AWD active link rtt: %d ms for %s on RAT [%s].");
      }
    }
  }

  v35 = [IDSQuickRelayMetric alloc];
  if (a4 <= 0.0)
  {
    v33 = 0;
  }

  else
  {
    *&v10 = a4;
    v33 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "relayProviderType", v30, v31, v32)}];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:v39];
  v13 = v40;
  if (v40 > 0xA)
  {
    v14 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    v13 = v40;
  }

  v15 = v13 < 0xB;
  v16 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v5, "protocolVersion")}];
  v19 = [v5 appName];
  v36 = [(IDSQuickRelayMetric *)v35 initWithType:&unk_1F1B203D8 eventSubType:&unk_1F1B203F0 duration:v33 resultCode:0 providerType:v11 transportType:v12 interfaceType:v14 skeEnabled:v16 isInitiator:v17 protocolVersion:v18 retryCount:0 serviceName:v19 subServiceName:0 participantCount:0];

  if (v15)
  {
  }

  if (a4 > 0.0)
  {
  }

  v20 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v20 logMetric:v36];

  v21 = +[IDSAWDLogging sharedInstance];
  if (a4 <= 0.0)
  {
    v34 = 0;
  }

  else
  {
    *&v22 = a4;
    v34 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  }

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "relayProviderType")}];
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:v39];
  if (v40 >= 0xB)
  {
    v25 = 0;
  }

  else
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v40];
  }

  v26 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v5, "protocolVersion")}];
  v29 = [v5 appName];
  [v21 IDSQuickRelayEventType:&unk_1F1B203D8 eventSubType:&unk_1F1B203F0 duration:v34 resultCode:0 providerType:v23 transportType:v24 interfaceType:v25 skeEnabled:v26 isInitiator:v27 protocolVersion:v28 retryCount:0 serviceName:v29 subServiceName:0 participantCount:0];

  if (v40 < 0xB)
  {
  }

  if (a4 > 0.0)
  {
  }
}

void GLUtilReportAWDClientTimerEvent(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, float a6)
{
  v56 = *MEMORY[0x1E69E9840];
  v49 = a3;
  v7 = [v49 local];
  v48 = [v7 radioAccessTechnology];

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v51 = a1;
    v52 = 1024;
    v53 = a6;
    v54 = 1024;
    v55 = a2;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "report AWD client timer event (eventSubType: %u, duration: %d ms, resultCode: %d).", buf, 0x14u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v33 = a6;
      v34 = a2;
      v32 = a1;
      _IDSLogTransport(@"GL", @"IDS", @"report AWD client timer event (eventSubType: %u, duration: %d ms, resultCode: %d).");
      if (_IDSShouldLog())
      {
        v33 = a6;
        v34 = a2;
        v32 = a1;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"report AWD client timer event (eventSubType: %u, duration: %d ms, resultCode: %d).");
      }
    }
  }

  v36 = [IDSQuickRelayMetric alloc];
  v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  if (a6 <= 0.0)
  {
    v35 = 0;
  }

  else
  {
    *&v9 = a6;
    v35 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  }

  v40 = [MEMORY[0x1E696AD98] numberWithInt:{a2, v32, v33, v34}];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v49, "relayProviderType")}];
  v11 = MEMORY[0x1E696AD98];
  v12 = [v49 local];
  v13 = [v11 numberWithInteger:{objc_msgSend(v12, "transport")}];
  v14 = v48;
  if (v48 > 0xA)
  {
    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    v14 = v48;
  }

  v16 = v14 < 0xB;
  v17 = [MEMORY[0x1E696AD98] numberWithBool:a4];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:a5];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v49, "protocolVersion")}];
  v20 = [v49 appName];
  v37 = [(IDSQuickRelayMetric *)v36 initWithType:&unk_1F1B20408 eventSubType:v42 duration:v35 resultCode:v40 providerType:v10 transportType:v13 interfaceType:v15 skeEnabled:v17 isInitiator:v18 protocolVersion:v19 retryCount:0 serviceName:v20 subServiceName:0 participantCount:0];

  if (v16)
  {
  }

  if (a6 > 0.0)
  {
  }

  v21 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v21 logMetric:v37];

  v43 = +[IDSAWDLogging sharedInstance];
  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  if (a6 <= 0.0)
  {
    v41 = 0;
  }

  else
  {
    *&v22 = a6;
    v41 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  }

  v45 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v49, "relayProviderType")}];
  v24 = MEMORY[0x1E696AD98];
  v25 = [v49 local];
  v26 = [v24 numberWithInteger:{objc_msgSend(v25, "transport")}];
  if (v48 >= 0xB)
  {
    v27 = 0;
  }

  else
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v48];
  }

  v28 = [MEMORY[0x1E696AD98] numberWithBool:a4];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:a5];
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v49, "protocolVersion")}];
  v31 = [v49 appName];
  [v43 IDSQuickRelayEventType:&unk_1F1B20408 eventSubType:v47 duration:v41 resultCode:v45 providerType:v23 transportType:v26 interfaceType:v27 skeEnabled:v28 isInitiator:v29 protocolVersion:v30 retryCount:0 serviceName:v31 subServiceName:0 participantCount:0];

  if (v48 < 0xB)
  {
  }

  if (a6 > 0.0)
  {
  }
}

id GLUCreateQRStunMessageEvent(void *a1, unsigned int a2, void *a3, void *a4, float a5)
{
  v9 = a4;
  v10 = a3;
  v11 = GLUCreateQRStunMessageEventWithType([a1 type], a2, v10, v9, a5);

  return v11;
}

id GLUCreateQRStunMessageEventWithType(unsigned int a1, unsigned int a2, void *a3, void *a4, float a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 isSharedQRSession];
  v12 = sub_1A7CA744C(a1, v11);
  if ((a2 & 0xFFFFFFFE) == 0x22)
  {
    v13 = 801;
  }

  else
  {
    v13 = v12;
  }

  if (v13)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v15 = GLUCreateQRStunMessageEventWithEventSubType(v13, a2, v9, v10, a5);
    v16 = [v15 mutableCopy];

    if (a1 == 4064)
    {
      v17 = v11;
    }

    else
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0 && ([v9 pendingNoSessionStateAllocbind] & 1) == 0)
    {
      [v16 setObject:0 forKeyedSubscript:@"RINF"];
    }
  }

  else
  {
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = a1;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "receive unknown stun message type (%04x) for QREvent, ignore", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"receive unknown stun message type (%04x) for QREvent, ignore");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive unknown stun message type (%04x) for QREvent, ignore");
        }
      }
    }

    v16 = 0;
  }

  return v16;
}

CFMutableDictionaryRef GLUCreateQRStunMessageEventWithEventSubType(uint64_t a1, unsigned int a2, void *a3, void *a4, float a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = [v8 local];
  v12 = [v11 allocbindDataBlob];

  v13 = [v8 local];
  v14 = [v13 serverSoftwareVersion];

  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = v12;
    v41 = 2112;
    v42 = v14;
    _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "GLUCreateQRStunMessageEvent: reportingDataBlob: %@, serverSoftwareVersion: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v36 = v12;
      v37 = v14;
      _IDSLogTransport(@"GL", @"IDS", @"GLUCreateQRStunMessageEvent: reportingDataBlob: %@, serverSoftwareVersion: %@");
      if (_IDSShouldLog())
      {
        v36 = v12;
        v37 = v14;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUCreateQRStunMessageEvent: reportingDataBlob: %@, serverSoftwareVersion: %@");
      }
    }
  }

  if (v9)
  {
    v16 = [MEMORY[0x1E695DF00] date];
    [v16 timeIntervalSinceDate:v9];
    if ((a1 & 0xFFFFFFF7) == 0xD6)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithDouble:v17 * 1000.0];
      [(__CFDictionary *)Mutable setObject:v18 forKeyedSubscript:@"DELTAT"];
    }
  }

  v19 = [v8 local];
  v20 = [v19 radioAccessTechnology];

  v21 = [v8 remote];
  v22 = [v21 radioAccessTechnology];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v8, "protocolVersion")}];
  [(__CFDictionary *)Mutable setObject:v23 forKeyedSubscript:@"QVER"];

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  [(__CFDictionary *)Mutable setObject:v24 forKeyedSubscript:@"TYPE"];

  *&v25 = a5;
  v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  [(__CFDictionary *)Mutable setObject:v26 forKeyedSubscript:@"DUR"];

  v27 = MEMORY[0x1E696AD98];
  v28 = [v8 local];
  v29 = [v27 numberWithInteger:{objc_msgSend(v28, "transport")}];
  [(__CFDictionary *)Mutable setObject:v29 forKeyedSubscript:@"TRAN"];

  if (v20 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"LINF"];
  }

  else
  {
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20];
    [(__CFDictionary *)Mutable setObject:v30 forKeyedSubscript:@"LINF"];
  }

  if (v22 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"RINF"];
  }

  else
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v22];
    [(__CFDictionary *)Mutable setObject:v31 forKeyedSubscript:@"RINF"];
  }

  v32 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  [(__CFDictionary *)Mutable setObject:v32 forKeyedSubscript:@"SCODE"];

  [(__CFDictionary *)Mutable setObject:v12 forKeyedSubscript:@"QBLOB"];
  [(__CFDictionary *)Mutable setObject:v14 forKeyedSubscript:@"QSV"];
  v33 = [v8 local];
  if (*([v33 address] + 1) == 2)
  {
    v34 = @"IPv4";
  }

  else
  {
    v34 = @"IPv6";
  }

  [(__CFDictionary *)Mutable setObject:v34 forKeyedSubscript:@"LIPV"];

  return Mutable;
}

CFMutableDictionaryRef GLUCreateQRActiveLinkRTTEvent(void *a1, float a2)
{
  v3 = a1;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = [v3 local];
  v6 = [v5 radioAccessTechnology];

  v7 = [v3 remote];
  v8 = [v7 radioAccessTechnology];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v3, "protocolVersion")}];
  [(__CFDictionary *)Mutable setObject:v9 forKeyedSubscript:@"QVER"];

  [(__CFDictionary *)Mutable setObject:&unk_1F1B203F0 forKeyedSubscript:@"TYPE"];
  *&v10 = a2;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:@"DUR"];

  v12 = MEMORY[0x1E696AD98];
  v13 = [v3 local];

  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "transport")}];
  [(__CFDictionary *)Mutable setObject:v14 forKeyedSubscript:@"TRAN"];

  if (v6 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"LINF"];
  }

  else
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    [(__CFDictionary *)Mutable setObject:v15 forKeyedSubscript:@"LINF"];
  }

  if (v8 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"RINF"];
  }

  else
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
    [(__CFDictionary *)Mutable setObject:v16 forKeyedSubscript:@"RINF"];
  }

  [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"SCODE"];

  return Mutable;
}

CFMutableDictionaryRef GLUCreateLinkConnectedEvent(void *a1, int a2)
{
  v3 = a1;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = [v3 local];
  v6 = [v5 radioAccessTechnology];

  v7 = [v3 remote];
  v8 = [v7 radioAccessTechnology];

  v9 = [v3 local];
  v10 = [v9 transport];

  switch(v10)
  {
    case 2:
      v13 = 313;
LABEL_10:
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13];
      [(__CFDictionary *)Mutable setObject:v14 forKeyedSubscript:@"TYPE"];

      goto LABEL_12;
    case 3:
      v11 = a2 == 0;
      v12 = 331;
LABEL_6:
      if (v11)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = v12;
      }

      goto LABEL_10;
    case 4:
      v11 = a2 == 0;
      v12 = 332;
      goto LABEL_6;
  }

  [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"TYPE"];
LABEL_12:
  if (a2)
  {
    v15 = &unk_1F1B20420;
  }

  else
  {
    v15 = &unk_1F1B20438;
  }

  [(__CFDictionary *)Mutable setObject:v15 forKeyedSubscript:@"QFS"];
  if (v6 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"LINF"];
  }

  else
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    [(__CFDictionary *)Mutable setObject:v16 forKeyedSubscript:@"LINF"];
  }

  if (v8 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"RINF"];
  }

  else
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
    [(__CFDictionary *)Mutable setObject:v17 forKeyedSubscript:@"RINF"];
  }

  v18 = [v3 local];
  v19 = [v18 allocbindDataBlob];
  [(__CFDictionary *)Mutable setObject:v19 forKeyedSubscript:@"QBLOB"];

  v20 = MEMORY[0x1E696AD98];
  v21 = [v3 local];
  v22 = [v20 numberWithInteger:{objc_msgSend(v21, "transport")}];
  [(__CFDictionary *)Mutable setObject:v22 forKeyedSubscript:@"TRAN"];

  return Mutable;
}

uint64_t GLUtilStunTransportToLinkType(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 331;
  }

  else
  {
    v2 = 332;
  }

  if (a2)
  {
    v3 = 332;
  }

  else
  {
    v3 = 333;
  }

  if (a1 != 4)
  {
    v3 = 0;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 2)
  {
    return 313;
  }

  else
  {
    return v2;
  }
}

CFMutableDictionaryRef GLUCreateSetUPlusOneEvent(int a1, void *a2)
{
  v3 = a2;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v3)
  {
    v5 = [MEMORY[0x1E695DF00] date];
    [v5 timeIntervalSinceDate:v3];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v6 * 1000.0];
    [(__CFDictionary *)Mutable setObject:v7 forKeyedSubscript:@"DELTAT"];
  }

  if (a1)
  {
    v8 = &unk_1F1B20450;
  }

  else
  {
    v8 = &unk_1F1B20468;
  }

  [(__CFDictionary *)Mutable setObject:v8 forKeyedSubscript:@"UPO"];

  return Mutable;
}

CFMutableDictionaryRef GLUCreateIPVersionFailureEvent(void *a1)
{
  v1 = a1;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = [v1 local];
  v4 = [v3 radioAccessTechnology];

  v5 = [v1 remote];
  v6 = [v5 radioAccessTechnology];

  v7 = [v1 local];
  if (*([v7 address] + 1) == 2)
  {
    v8 = &unk_1F1B20480;
  }

  else
  {
    v8 = &unk_1F1B20498;
  }

  [(__CFDictionary *)Mutable setObject:v8 forKeyedSubscript:@"TYPE"];

  v9 = MEMORY[0x1E696AD98];
  v10 = [v1 local];
  v11 = [v9 numberWithInteger:{objc_msgSend(v10, "transport")}];
  [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:@"TRAN"];

  if (v4 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"LINF"];
  }

  else
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
    [(__CFDictionary *)Mutable setObject:v12 forKeyedSubscript:@"LINF"];
  }

  if (v6 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"RINF"];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    [(__CFDictionary *)Mutable setObject:v13 forKeyedSubscript:@"RINF"];
  }

  v14 = [v1 local];
  v15 = [v14 allocbindDataBlob];
  [(__CFDictionary *)Mutable setObject:v15 forKeyedSubscript:@"QBLOB"];

  return Mutable;
}

CFMutableDictionaryRef GLUCreateQRClientTimeEvent(uint64_t a1, uint64_t a2, void *a3, void *a4, float a5)
{
  v9 = a3;
  v10 = a4;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = [v9 local];
  v13 = [v12 radioAccessTechnology];

  v14 = [v9 remote];
  v15 = [v14 radioAccessTechnology];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v9, "protocolVersion")}];
  [(__CFDictionary *)Mutable setObject:v16 forKeyedSubscript:@"QVER"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  [(__CFDictionary *)Mutable setObject:v17 forKeyedSubscript:@"TYPE"];

  if (a5 <= 0.0)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"DUR"];
  }

  else
  {
    *&v18 = a5;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    [(__CFDictionary *)Mutable setObject:v19 forKeyedSubscript:@"DUR"];
  }

  v20 = MEMORY[0x1E696AD98];
  v21 = [v9 local];
  v22 = [v20 numberWithInteger:{objc_msgSend(v21, "transport")}];
  [(__CFDictionary *)Mutable setObject:v22 forKeyedSubscript:@"TRAN"];

  if (v13 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"LINF"];
  }

  else
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13];
    [(__CFDictionary *)Mutable setObject:v23 forKeyedSubscript:@"LINF"];
  }

  if (v15 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"RINF"];
  }

  else
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
    [(__CFDictionary *)Mutable setObject:v24 forKeyedSubscript:@"RINF"];
  }

  v25 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  [(__CFDictionary *)Mutable setObject:v25 forKeyedSubscript:@"SCODE"];

  if (a1 == 305 && v10)
  {
    v26 = [MEMORY[0x1E695DF00] date];
    [v26 timeIntervalSinceDate:v10];
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v27 * 1000.0];
    [(__CFDictionary *)Mutable setObject:v28 forKeyedSubscript:@"DELTAT"];
  }

  return Mutable;
}

CFMutableDictionaryRef GLUCreateQRNoSessionStateEvent(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = [v5 local];
  v8 = [v7 radioAccessTechnology];

  v9 = [v5 remote];
  v10 = [v9 radioAccessTechnology];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v5, "protocolVersion")}];
  [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:@"QVER"];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  [(__CFDictionary *)Mutable setObject:v12 forKeyedSubscript:@"TYPE"];

  v13 = MEMORY[0x1E696AD98];
  v14 = [v5 local];

  v15 = [v13 numberWithInteger:{objc_msgSend(v14, "transport")}];
  [(__CFDictionary *)Mutable setObject:v15 forKeyedSubscript:@"TRAN"];

  if (v8 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"LINF"];
  }

  else
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
    [(__CFDictionary *)Mutable setObject:v16 forKeyedSubscript:@"LINF"];
  }

  if (v10 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"RINF"];
  }

  else
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
    [(__CFDictionary *)Mutable setObject:v17 forKeyedSubscript:@"RINF"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  [(__CFDictionary *)Mutable setObject:v18 forKeyedSubscript:@"SCODE"];

  return Mutable;
}

id GLUCreateNetworkInterfaceArrayWithOptions(uint64_t a1, int a2, char a3, int a4, int a5, int a6, char a7, unsigned int a8, void *a9)
{
  v126 = *MEMORY[0x1E69E9840];
  v109 = a9;
  v120 = 0xAAAAAAAAAAAAAAAALL;
  if (getifaddrs(&v120) < 0)
  {
    v16 = *__error();
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "GLUCreateNetworkInterfaceArrayWithOptions";
      *&buf[12] = 1024;
      *&buf[14] = v16;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "%s getifaddrs failed errno=%d", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"%s getifaddrs failed errno=%d");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"%s getifaddrs failed errno=%d");
        }
      }
    }

    v18 = 0;
    goto LABEL_170;
  }

  if (a4)
  {
    v13 = +[IDSCellularLinkMonitor sharedInstance];
    v106 = [v13 cellularDataInterfaceName];

    v101 = (v109 | v106) != 0;
    if (!(v109 | v106))
    {
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "found no interface for cellular data, skip.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"found no interface for cellular data, skip.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"found no interface for cellular data, skip.");
          }
        }
      }
    }

    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v106;
      *&buf[12] = 2112;
      *&buf[14] = v109;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "Sliced Cellular Interface - found %@ and/or %@ interface for cellular data.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v93 = v106;
        v94 = v109;
        _IDSLogTransport(@"GL", @"IDS", @"Sliced Cellular Interface - found %@ and/or %@ interface for cellular data.");
        if (_IDSShouldLog())
        {
          v93 = v106;
          v94 = v109;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"Sliced Cellular Interface - found %@ and/or %@ interface for cellular data.");
        }
      }
    }
  }

  else
  {
    v106 = 0;
    v101 = 0;
  }

  if (a6)
  {
    v19 = +[IDSNWPathUtils sharedInstance];
    v20 = [v19 getDefaultPath];

    v21 = [v20 status];
    if (v21 == 1)
    {
      v22 = [v20 interface];
      v107 = [v22 interfaceName];
    }

    else
    {
      v23 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v20;
        *&buf[12] = 1024;
        *&buf[14] = v21;
        _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "no default path is available (path:%@, status:%d).", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v93 = v20;
          v94 = v21;
          _IDSLogTransport(@"GL", @"IDS", @"no default path is available (path:%@, status:%d).");
          if (_IDSShouldLog())
          {
            v93 = v20;
            v94 = v21;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"no default path is available (path:%@, status:%d).");
          }
        }
      }

      v107 = 0;
    }
  }

  else
  {
    v107 = 0;
  }

  v24 = v120;
  if (!v120)
  {
    MEMORY[0x1AC563BA0](0);
    goto LABEL_162;
  }

  v108 = 0;
  if (v107)
  {
    v25 = a6;
  }

  else
  {
    v25 = 0;
  }

  v102 = v25;
  v98 = __rev16(a8);
  do
  {
    if (a1 == 1)
    {
      if (v24->ifa_addr->sa_family != 30)
      {
        goto LABEL_53;
      }
    }

    else if (!a1 && v24->ifa_addr->sa_family != 2)
    {
      goto LABEL_53;
    }

    if ((v24->ifa_flags & 9) == 1)
    {
      ifa_addr = v24->ifa_addr;
      if (ifa_addr)
      {
        if (!v24->ifa_netmask || (valid = IsValidSA(v24->ifa_netmask), ifa_addr = v24->ifa_addr, !valid) || ifa_addr->sa_family == v24->ifa_netmask->sa_family)
        {
          if (!IsLinkLocalSA(ifa_addr) || a5)
          {
            v28 = [IDSNWPathUtils sharedInstance:v93];
            v29 = [v28 isVoWiFiInterface:v24->ifa_name];

            if (v29)
            {
              v30 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                ifa_name = v24->ifa_name;
                *buf = 136315138;
                *&buf[4] = ifa_name;
                _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "filter out VoWiFi interface [if:%s]", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v93 = v24->ifa_name;
                  _IDSLogTransport(@"GL", @"IDS", @"filter out VoWiFi interface [if:%s]");
                  if (_IDSShouldLog())
                  {
                    v93 = v24->ifa_name;
                    _IDSLogV(0, @"IDSFoundation", @"GL", @"filter out VoWiFi interface [if:%s]");
                  }
                }
              }

              goto LABEL_53;
            }

            *__s2 = 0;
            v124 = 0;
            v119 = -1;
            if (!GLUtilGetDefaultInterface(&v119, __s2, 0) || (sub_1A7CAA8FC(v24->ifa_name, v24->ifa_addr->sa_family, __s2) & 1) == 0)
            {
              v32 = +[IDSNWPathUtils sharedInstance];
              v33 = [v32 filterVirtualInterfaces:v24->ifa_name];

              if (v33)
              {
                v34 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  v35 = v24->ifa_name;
                  *buf = 136315138;
                  *&buf[4] = v35;
                  _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "filter out virtual interface [if:%s]", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v93 = v24->ifa_name;
                    _IDSLogTransport(@"GL", @"IDS", @"filter out virtual interface [if:%s]");
                    if (_IDSShouldLog())
                    {
                      v93 = v24->ifa_name;
                      _IDSLogV(0, @"IDSFoundation", @"GL", @"filter out virtual interface [if:%s]");
                    }
                  }
                }

                goto LABEL_53;
              }
            }

            if (v102)
            {
              v36 = v24->ifa_name;
              sa_family = v24->ifa_addr->sa_family;
              v38 = v107;
              if ((sub_1A7CAA8FC(v36, sa_family, [v107 UTF8String]) & 1) == 0)
              {
                v54 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                {
                  v55 = v24->ifa_name;
                  v56 = v107;
                  v57 = [v107 UTF8String];
                  *buf = 136315650;
                  *&buf[4] = v55;
                  *&buf[12] = 2112;
                  *&buf[14] = @"12345678-7654-DADA-DADA-DADADADADADA";
                  *&buf[22] = 2080;
                  *&buf[24] = v57;
                  _os_log_impl(&dword_1A7AD9000, v54, OS_LOG_TYPE_DEFAULT, "filter out non-default interface [if:%s] for %@, defaultIfName: %s", buf, 0x20u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v58 = v24->ifa_name;
                    v59 = v107;
                    v94 = @"12345678-7654-DADA-DADA-DADADADADADA";
                    v95 = [v107 UTF8String];
                    v93 = v58;
                    _IDSLogTransport(@"GL", @"IDS", @"filter out non-default interface [if:%s] for %@, defaultIfName: %s");
                    if (_IDSShouldLog())
                    {
                      v60 = v24->ifa_name;
                      v61 = v107;
                      v62 = [v107 UTF8String];
                      v94 = @"12345678-7654-DADA-DADA-DADADADADADA";
                      v95 = v62;
                      v93 = v60;
                      _IDSLogV(0, @"IDSFoundation", @"GL", @"filter out non-default interface [if:%s] for %@, defaultIfName: %s");
                    }
                  }
                }

                goto LABEL_53;
              }
            }

            v99 = sub_1A7CAA9BC(v24->ifa_name, v24->ifa_addr->sa_family);
            v39 = v24->ifa_addr->sa_family;
            memset(buf, 0, 32);
            __strlcpy_chk();
            v40 = socket(v39, 2, 0);
            v41 = v40;
            if (v40 < 0)
            {
              v51 = __error();
              IDSAssertNonFatalErrnoWithSource(*v51, "GL getInterfaceType", "/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSGlobalLinkUtil.m", 1883);
            }

            else
            {
              v93 = buf;
              v42 = ioctl(v40, 0xC02069ADuLL);
              v43 = *&buf[16];
              close(v41);
              if (v42 >= 0)
              {
                IDSCheckFileDescriptorUsageWithSource("IDSGlobalLinkUtil.m", 1886, 0);
                v44 = v43;
                if (v43 == 5)
                {
                  if (!v101)
                  {
                    goto LABEL_53;
                  }

                  v45 = v24->ifa_name;
                  v46 = v24->ifa_addr->sa_family;
                  v47 = v106;
                  if ((sub_1A7CAA8FC(v45, v46, [v106 UTF8String]) & 1) == 0)
                  {
                    v48 = v24->ifa_name;
                    v49 = v24->ifa_addr->sa_family;
                    v50 = v109;
                    if ((sub_1A7CAA8FC(v48, v49, [v109 UTF8String]) & 1) == 0)
                    {
                      goto LABEL_53;
                    }
                  }

                  v44 = 5;
                }

                else if (a7)
                {
                  if (v43 != 3)
                  {
LABEL_82:
                    v52 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                    {
                      v53 = v24->ifa_name;
                      *buf = 136315650;
                      *&buf[4] = v53;
                      *&buf[12] = 1024;
                      *&buf[14] = v44;
                      *&buf[18] = 2112;
                      *&buf[20] = @"12345678-7654-DADA-DADA-DADADADADADA";
                      _os_log_impl(&dword_1A7AD9000, v52, OS_LOG_TYPE_DEFAULT, "filter out interface [if:%s type:%d] for %@.", buf, 0x1Cu);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        v94 = v44;
                        v95 = @"12345678-7654-DADA-DADA-DADADADADADA";
                        v93 = v24->ifa_name;
                        _IDSLogTransport(@"GL", @"IDS", @"filter out interface [if:%s type:%d] for %@.");
                        if (_IDSShouldLog())
                        {
                          v94 = v44;
                          v95 = @"12345678-7654-DADA-DADA-DADADADADADA";
                          v93 = v24->ifa_name;
                          _IDSLogV(0, @"IDSFoundation", @"GL", @"filter out interface [if:%s type:%d] for %@.");
                        }
                      }
                    }

                    goto LABEL_53;
                  }

                  if ((a3 & 1) == 0)
                  {
                    v74 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                    {
                      v75 = v24->ifa_name;
                      *buf = 136315650;
                      *&buf[4] = v75;
                      *&buf[12] = 1024;
                      *&buf[14] = 3;
                      *&buf[18] = 2112;
                      *&buf[20] = @"12345678-7654-DADA-DADA-DADADADADADA";
                      _os_log_impl(&dword_1A7AD9000, v74, OS_LOG_TYPE_DEFAULT, "filter out WiFi interface [if:%s type:%d] for %@.", buf, 0x1Cu);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        v94 = 3;
                        v95 = @"12345678-7654-DADA-DADA-DADADADADADA";
                        v93 = v24->ifa_name;
                        _IDSLogTransport(@"GL", @"IDS", @"filter out WiFi interface [if:%s type:%d] for %@.");
                        if (_IDSShouldLog())
                        {
                          v94 = 3;
                          v95 = @"12345678-7654-DADA-DADA-DADADADADADA";
                          v93 = v24->ifa_name;
                          _IDSLogV(0, @"IDSFoundation", @"GL", @"filter out WiFi interface [if:%s type:%d] for %@.");
                        }
                      }
                    }

                    goto LABEL_53;
                  }

                  v44 = 3;
                }

                goto LABEL_98;
              }
            }

            IDSCheckFileDescriptorUsageWithSource("IDSGlobalLinkUtil.m", 1886, 0);
            v44 = 0;
            if (a7)
            {
              goto LABEL_82;
            }

LABEL_98:
            if (((a2 & 1) != 0 || (v99 & 0x100000) == 0) && (!a2 || (v99 & 0x20000) != 0))
            {
              v97 = v44;
              v100 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v63 = v24->ifa_addr;
              if (v63->sa_family == 30)
              {
                v96 = sub_1A7CAACB0(v24->ifa_name, v63);
                if ((v96 & 0x101E) == 0)
                {
                  if ((v96 & 0x80) != 0)
                  {
                    v117 = 0uLL;
                    v118 = 0uLL;
                    v115 = 0uLL;
                    v116 = 0uLL;
                    v76 = v108;
                    v77 = [v76 countByEnumeratingWithState:&v115 objects:v122 count:16];
                    if (v77)
                    {
                      v78 = *v116;
                      do
                      {
                        for (i = 0; i != v77; ++i)
                        {
                          if (*v116 != v78)
                          {
                            objc_enumerationMutation(v76);
                          }

                          v80 = *(*(&v115 + 1) + 8 * i);
                          v81 = v24->ifa_name;
                          v82 = [v80 name];
                          v83 = v82;
                          if (!strcmp(v81, [v82 UTF8String]))
                          {
                            v84 = [v80 isTemporaryIPv6];

                            if ((v84 & 1) == 0)
                            {
                              [v100 addObject:v80];
                              v85 = OSLogHandleForTransportCategory();
                              if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *&buf[4] = v80;
                                _os_log_impl(&dword_1A7AD9000, v85, OS_LOG_TYPE_DEFAULT, "prune IPv6 interface %@.", buf, 0xCu);
                              }

                              if (os_log_shim_legacy_logging_enabled())
                              {
                                if (_IDSShouldLogTransport())
                                {
                                  v93 = v80;
                                  _IDSLogTransport(@"GL", @"IDS", @"prune IPv6 interface %@.");
                                  if (_IDSShouldLog())
                                  {
                                    v93 = v80;
                                    _IDSLogV(0, @"IDSFoundation", @"GL", @"prune IPv6 interface %@.");
                                  }
                                }
                              }
                            }
                          }

                          else
                          {
                          }
                        }

                        v77 = [v76 countByEnumeratingWithState:&v115 objects:v122 count:16];
                      }

                      while (v77);
                    }
                  }

                  else
                  {
                    v113 = 0uLL;
                    v114 = 0uLL;
                    v111 = 0uLL;
                    v112 = 0uLL;
                    v64 = v108;
                    v65 = [v64 countByEnumeratingWithState:&v111 objects:v121 count:16];
                    if (v65)
                    {
                      v66 = *v112;
                      while (2)
                      {
                        for (j = 0; j != v65; ++j)
                        {
                          if (*v112 != v66)
                          {
                            objc_enumerationMutation(v64);
                          }

                          v68 = *(*(&v111 + 1) + 8 * j);
                          v69 = v24->ifa_name;
                          v70 = [v68 name];
                          v71 = v70;
                          if (!strcmp(v69, [v70 UTF8String]))
                          {
                            v72 = [v68 isTemporaryIPv6];

                            if (v72)
                            {
                              v90 = OSLogHandleForTransportCategory();
                              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *&buf[4] = v68;
                                _os_log_impl(&dword_1A7AD9000, v90, OS_LOG_TYPE_DEFAULT, "skip IPv6 interface %@.", buf, 0xCu);
                              }

                              if (os_log_shim_legacy_logging_enabled())
                              {
                                if (_IDSShouldLogTransport())
                                {
                                  v93 = v68;
                                  _IDSLogTransport(@"GL", @"IDS", @"skip IPv6 interface %@.");
                                  if (_IDSShouldLog())
                                  {
                                    v93 = v68;
                                    _IDSLogV(0, @"IDSFoundation", @"GL", @"skip IPv6 interface %@.");
                                  }
                                }
                              }

                              v108 = v64;
                              goto LABEL_157;
                            }
                          }

                          else
                          {
                          }
                        }

                        v65 = [v64 countByEnumeratingWithState:&v111 objects:v121 count:16];
                        if (v65)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }

                  if ([v100 count])
                  {
                    [v108 removeObjectsInArray:v100];
                  }

                  v73 = v96;
LABEL_142:
                  v86 = v24->ifa_addr;
                  v87 = v97;
                  if (v86->sa_data[2] != 209)
                  {
                    if (!v108)
                    {
                      v88 = v73;
                      v108 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      v86 = v24->ifa_addr;
                      v87 = v97;
                      v73 = v88;
                    }

                    v89 = v86->sa_family;
                    if (v89 == 30 || v89 == 2)
                    {
                      *v86->sa_data = v98;
                    }

                    v64 = [IDSInterfaceAddress interfaceAddress:v24 eflags:v99 v6flags:v73 iftype:v87, v93];
                    if (v64)
                    {
                      [v108 addObject:v64];
                    }

LABEL_157:
                  }
                }

                goto LABEL_53;
              }

              v73 = 0;
              goto LABEL_142;
            }
          }
        }
      }
    }

LABEL_53:
    v24 = v24->ifa_next;
  }

  while (v24);
  MEMORY[0x1AC563BA0](v120);
  if (!v108)
  {
LABEL_162:
    v108 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v91 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "GLUCreateNetworkInterfaceArrayWithOptions";
    *&buf[12] = 2112;
    *&buf[14] = v108;
    _os_log_impl(&dword_1A7AD9000, v91, OS_LOG_TYPE_DEFAULT, "%s Available network interfaces: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"%s Available network interfaces: %@");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"%s Available network interfaces: %@");
      }
    }
  }

  v18 = v108;

LABEL_170:

  return v18;
}