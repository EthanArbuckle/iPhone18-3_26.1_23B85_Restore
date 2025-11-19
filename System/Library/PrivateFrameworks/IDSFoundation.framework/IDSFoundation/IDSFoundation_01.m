void IDSOSDataChannelDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      free(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      free(v3);
    }

    v4 = a1[6];
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }
}

uint64_t IDSOSDataChannelFd(unsigned int *a1)
{
  if (a1)
  {
    return *a1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t IDSOSDataChannelSetNonBlocking(uint64_t a1)
{
  if (a1 && !*(a1 + 8) && ((v3 = fcntl(*a1, 3, 0), v3 < 0) || fcntl(*a1, 4, v3 | 4u) < 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

ssize_t IDSOSDataChannelRead(uint64_t a1, char *__dst, size_t __n, int a4, BOOL *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *a5 = 0;
    v12 = __error();
    v13 = 9;
    goto LABEL_40;
  }

  v6 = __n;
  if (*(a1 + 8))
  {
    v9 = *(a1 + 56);
    if (*(a1 + 56))
    {
      if (v9 >= v6)
      {
        *a5 = 0;
        memcpy(__dst, *(a1 + 48), v6);
        *(a1 + 56) -= v6;
        return v6;
      }

      memcpy(__dst, *(a1 + 48), v9);
      v10 = *(a1 + 56);
      v6 -= v10;
      v11 = &__dst[v10];
      *(a1 + 56) = 0;
    }

    else
    {
      v11 = __dst;
    }

    v31 = __dst;
    if (*(a1 + 16) && v6)
    {
      v16 = 0;
      do
      {
        v17 = os_channel_available_slot_count();
        if (v17)
        {
          v18 = 1;
          while (1)
          {
            *&v19 = 0xAAAAAAAAAAAAAAAALL;
            *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v34 = v19;
            v35 = v19;
            *__na = v19;
            *__src = v19;
            next_slot = os_channel_get_next_slot();
            v21 = __src[0];
            if (v6 < WORD1(__na[0]))
            {
              break;
            }

            memcpy(v11, __src[0], WORD1(__na[0]));
            v6 -= WORD1(__na[0]);
            v11 += WORD1(__na[0]);
            if (v18 < v17)
            {
              ++v18;
              if (v6)
              {
                continue;
              }
            }

            if (!next_slot)
            {
              goto LABEL_29;
            }

            goto LABEL_22;
          }

          memcpy(v11, __src[0], v6);
          v22 = WORD1(__na[0]) - v6;
          *(a1 + 56) = WORD1(__na[0]) - v6;
          memcpy(*(a1 + 48), &v21[v6], v22);
          v11 += v6;
          v6 = 0;
          if (!next_slot)
          {
            continue;
          }

LABEL_22:
          v23 = os_channel_advance_slot();
          if (v23)
          {
            v24 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__na[0]) = 67109120;
              HIDWORD(__na[0]) = v23;
              _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "advance_slot failed for read %d", __na, 8u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"IDSOSDataChannel", @"IDS", @"advance_slot failed for read %d");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"IDSOSDataChannel", @"advance_slot failed for read %d");
                }
              }
            }
          }
        }

LABEL_29:
        ;
      }

      while (++v16 < *(a1 + 16) && v6 != 0);
    }

    v26 = *(a1 + 8);
    if (v26)
    {
      os_channel_sync();
    }

    *a5 = v26 != 0;
    v27 = qword_1EB2DC1E8;
    if (qword_1EB2DC1E8)
    {
      v28 = os_channel_ring_notify_time();
      [v27 consumeTimeCheckForEvent:@"IDSOSDataChannelRead RX" produceTime:v28 consumeTime:os_channel_ring_sync_time()];
      v29 = qword_1EB2DC1E8;
      v30 = os_channel_ring_sync_time();
      [v29 consumeTimeCheckForEvent:@"IDSOSDataChannelRead TX" produceTime:v30 consumeTime:os_channel_ring_notify_time()];
    }

    v6 = v11 - v31;
    if (v11 > v31)
    {
      return v6;
    }

    v12 = __error();
    v13 = 35;
LABEL_40:
    *v12 = v13;
    return -1;
  }

  *a5 = 0;
  v14 = *a1;

  return recv(v14, __dst, __n, a4);
}

uint64_t IDSOSDataChannelSync(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a1 || !*(a1 + 8))
  {
    if (a3)
    {
      if (*a3)
      {
        sub_1A7E1206C();
      }
    }

    return 0;
  }

  if (!a3)
  {
    os_channel_sync();
    return 1;
  }

  if (!*a3)
  {
    return 0;
  }

  os_channel_sync();
  *a3 = 0;
  return 1;
}

ssize_t IDSOSDataChannelWrite(uint64_t a1, char *a2, size_t a3, int a4, int a5, _DWORD *a6, _BYTE *a7)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *a7 = 0;
    *__error() = 9;
    return -1;
  }

  v7 = a3;
  if (*(a1 + 8))
  {
    if (!a6)
    {
      sub_1A7E12098();
    }

    if (*(a1 + 20) && a3)
    {
      v31 = a7;
      v10 = 0;
      v11 = a2;
      do
      {
        v12 = os_channel_available_slot_count();
        if (v12)
        {
          v13 = 1;
          do
          {
            *&v14 = 0xAAAAAAAAAAAAAAAALL;
            *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v34 = v14;
            v35 = v14;
            *buf = v14;
            *__dst = v14;
            next_slot = os_channel_get_next_slot();
            *buf = 0;
            v16 = *(a1 + 40);
            if (v7 < v16)
            {
              LOWORD(v16) = v7;
            }

            *&buf[2] = v16;
            memcpy(__dst[0], v11, v16);
            v17 = *&buf[2];
            os_channel_set_slot_properties();
            v7 -= v17;
            v11 += v17;
            ++*a6;
            if (v13 >= v12)
            {
              break;
            }

            ++v13;
          }

          while (v7);
          if (next_slot)
          {
            v18 = os_channel_advance_slot();
            if (v18)
            {
              v19 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = v18;
                _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "advance_slot failed for write %d", buf, 8u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport(@"IDSOSDataChannel", @"IDS", @"advance_slot failed for write %d");
                  if (_IDSShouldLog())
                  {
                    _IDSLogV(0, @"IDSFoundation", @"IDSOSDataChannel", @"advance_slot failed for write %d");
                  }
                }
              }
            }
          }
        }
      }

      while (++v10 < *(a1 + 20) && v7 != 0);
      a7 = v31;
      *v31 = 0;
      v24 = v11 > a2;
      v21 = v11 - a2;
      if (v24)
      {
        if (a5)
        {
          *v31 = IDSOSDataChannelSync(a1, 1, a6);
        }

        goto LABEL_37;
      }
    }

    else
    {
      *a7 = 0;
    }

    *a7 = IDSOSDataChannelSync(a1, 1, a6);
    *__error() = 35;
    v21 = -1;
LABEL_37:
    v25 = qword_1EB2DC1E8;
    if (qword_1EB2DC1E8)
    {
      v26 = os_channel_ring_notify_time();
      [v25 consumeTimeCheckForEvent:@"IDSOSDataChannelWrite RX" produceTime:v26 consumeTime:os_channel_ring_sync_time()];
      v27 = qword_1EB2DC1E8;
      v28 = os_channel_ring_sync_time();
      [v27 consumeTimeCheckForEvent:@"IDSOSDataChannelWrite TX" produceTime:v28 consumeTime:os_channel_ring_notify_time()];
    }

    return v21;
  }

  *a7 = 0;
  v22 = *a1;

  return send(v22, a2, a3, a4);
}

uint64_t IDSQRProtoPutMaterialResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t IDSQRProtoReallocateIndicationReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v21 = PBReaderReadString();
            v22 = 16;
            goto LABEL_54;
          }

          if (v13 == 4)
          {
            v21 = PBReaderReadString();
            v22 = 40;
            goto LABEL_54;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v21 = PBReaderReadData();
            v22 = 24;
            goto LABEL_54;
          }

          if (v13 == 2)
          {
            v21 = PBReaderReadData();
            v22 = 72;
LABEL_54:
            v30 = *(a1 + v22);
            *(a1 + v22) = v21;

            goto LABEL_55;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v21 = PBReaderReadData();
          v22 = 48;
          goto LABEL_54;
        }

        if (v13 == 6)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 80) |= 2u;
          while (1)
          {
            v34 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v34 & 0x7F) << v23;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_62;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_62:
          *(a1 + 32) = v29;
          goto LABEL_55;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v21 = PBReaderReadString();
            v22 = 56;
            goto LABEL_54;
          case 8:
            v21 = PBReaderReadString();
            v22 = 64;
            goto LABEL_54;
          case 0xF:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 80) |= 1u;
            while (1)
            {
              v35 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v35 & 0x7F) << v14;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_66;
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

LABEL_66:
            *(a1 + 8) = v20;
            goto LABEL_55;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_55:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoTestRequestReadFrom(uint64_t a1, void *a2)
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
        v38 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v39 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v39 & 0x7F) << v30;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v32;
        }

LABEL_63:
        v36 = 8;
LABEL_64:
        *(a1 + v36) = v20;
        goto LABEL_65;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_65;
      }

      v21 = PBReaderReadString();
      v22 = *(a1 + 16);
      *(a1 + 16) = v21;

LABEL_65:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      while (1)
      {
        v41 = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v41 & 0x7F) << v24;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_59;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v26;
      }

LABEL_59:
      v36 = 24;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 28) |= 2u;
      while (1)
      {
        v40 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v40 & 0x7F) << v14;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_55;
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

LABEL_55:
      v36 = 12;
    }

    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoParticipantUpdateParticipantModeInfoReadFrom(uint64_t a1, void *a2)
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
        v28 = objc_alloc_init(IDSQRProtoMaterial);
        objc_storeStrong((a1 + 16), v28);
        v31[0] = 0xAAAAAAAAAAAAAAAALL;
        v31[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialReadFrom(v28, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v31[0] & 0x7F) << v21;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_46;
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

LABEL_46:
        *(a1 + 24) = v27;
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

uint64_t _IDSCertifiedDeliveryVersion()
{
  if (_os_feature_enabled_impl())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t IDSQRProtoMaterialInfoReadFrom(uint64_t a1, void *a2)
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
        if (v13 != 3)
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v35 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v35 & 0x7F) << v21;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
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

LABEL_52:
          v31 = 28;
          goto LABEL_53;
        }

        v28 = PBReaderReadData();
        v29 = 8;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_40;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
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

LABEL_48:
          v31 = 24;
LABEL_53:
          *(a1 + v31) = v20;
          goto LABEL_54;
        }

        v28 = PBReaderReadData();
        v29 = 16;
      }

      v30 = *(a1 + v29);
      *(a1 + v29) = v28;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id NWLinkQueue()
{
  if (qword_1EB2B8928 != -1)
  {
    sub_1A7E12368();
  }

  v1 = qword_1EB2B8920;

  return v1;
}

void sub_1A7B2EB6C()
{
  v0 = dispatch_queue_attr_make_initially_inactive(0);
  v1 = dispatch_queue_create("com.apple.ids-IDSNWLink", v0);
  v2 = qword_1EB2B8920;
  qword_1EB2B8920 = v1;

  v3 = IDSRealTimeContext();
  nw_queue_context_target_dispatch_queue();

  v4 = qword_1EB2B8920;

  dispatch_activate(v4);
}

id _tokenWithParameters(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = a2;
  v11 = a1;
  hostname = nw_endpoint_get_hostname(v11);
  v13 = nw_endpoint_get_hostname(v10);
  port = nw_endpoint_get_port(v11);

  v15 = nw_endpoint_get_port(v10);
  if (a4 - 7 > 3)
  {
    if (a4 <= 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%hu-%s:%hu", hostname, port, v13, v15, v27, v29, v30];
      goto LABEL_11;
    }

    if (a4 == 6)
    {
      v19 = MEMORY[0x1E696AEC0];
      v29 = "QR+";
      v30 = a5;
      v26 = v15;
      v28 = v9;
      v18 = @"%s:%hu-%s:%hu-%@-%s%llu";
      v24 = port;
      v25 = v13;
      v23 = hostname;
      goto LABEL_10;
    }

    if (a4 == 2)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%hu-%s:%hu-%s", hostname, port, v13, v15, "CDH2", v29, v30];
      goto LABEL_11;
    }

    v22 = sub_1A7B2ED88(a4);
    v17 = MEMORY[0x1E696AEC0];
    v28 = v9;
    v29 = v22;
    v25 = v13;
    v26 = v15;
    v23 = hostname;
    v24 = port;
    v18 = @"%s:%hu-%s:%hu-%@-%s";
  }

  else
  {
    v16 = sub_1A7B2ED88(a4);
    v17 = MEMORY[0x1E696AEC0];
    v26 = v15;
    v28 = v16;
    v24 = port;
    v25 = v13;
    v23 = hostname;
    v18 = @"%s:%hu-%s:%hu-%s";
  }

  v19 = v17;
LABEL_10:
  [v19 stringWithFormat:v18, v23, v24, v25, v26, v28, v29, v30];
  v20 = LABEL_11:;

  return v20;
}

const char *sub_1A7B2ED88(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return "??";
  }

  else
  {
    return off_1E77E0838[a1];
  }
}

id _tokenForNWLinkConnection(void *a1)
{
  v1 = a1;
  v2 = [v1 localEndpoint];
  v3 = [v1 remoteEndpoint];
  v4 = [v1 sessionID];
  v5 = [v1 type];
  v6 = [v1 connectionID];

  v7 = _tokenWithParameters(v2, v3, v4, v5, v6);

  return v7;
}

uint64_t _supportsNAT64(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) == 2)
  {
    does_interface_index_support_nat64 = nw_nat64_does_interface_index_support_nat64();
  }

  else
  {
    does_interface_index_support_nat64 = 0;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v5;
  v22 = v5;
  v19 = v5;
  v20 = v5;
  v17 = v5;
  v18 = v5;
  *__str = v5;
  v16 = v5;
  v6 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = SAToIPPortString(__str, 0x80uLL, a1);
    v8 = @"NO";
    v10[0] = 67109634;
    v10[1] = a2;
    if (does_interface_index_support_nat64)
    {
      v8 = @"YES";
    }

    v11 = 2080;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "Interface %d (%s) supports NAT64: %@", v10, 0x1Cu);
  }

  return does_interface_index_support_nat64;
}

const char *_getPathForMessageType(int a1)
{
  v2 = a1 - 1;
  result = "/QR/AllocBind";
  switch(v2)
  {
    case 0:
      return result;
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 11:
    case 12:
    case 15:
    case 16:
    case 18:
    case 20:
    case 22:
    case 24:
    case 25:
    case 27:
    case 29:
    case 30:
    case 32:
    case 34:
    case 35:
    case 37:
      goto LABEL_6;
    case 2:
      result = "/QR/Indications";
      break;
    case 4:
      result = "/QR/Info";
      break;
    case 6:
      result = "/QR/ParticipantUpdate";
      break;
    case 9:
      result = "/QR/PluginControl";
      break;
    case 13:
      result = "/QR/Reallocate";
      break;
    case 14:
      result = "/QR/SessionInfo";
      break;
    case 17:
      result = "/QR/Stats";
      break;
    case 19:
      result = "/QR/Test";
      break;
    case 21:
      result = "/QR/UnAllocBind";
      break;
    case 23:
    case 26:
      result = "/QR/Material";
      break;
    case 28:
    case 33:
      result = "/QR/E2EChannelRegister";
      break;
    case 31:
      result = "/QR/E2EChannelRegisterAck";
      break;
    case 36:
      result = "/QR/CallModeUpdate";
      break;
    case 38:
      result = "/QR/ChannelConfig";
      break;
    default:
      if (a1 == 1001)
      {
        result = "/QR/ChannelData";
      }

      else
      {
LABEL_6:
        v4 = +[IDSFoundationLog IDSNWLink];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1237C();
        }

        result = "/QR/Unknown";
      }

      break;
  }

  return result;
}

uint64_t _getHTTPMethodForMessageType(int a1)
{
  result = 1;
  if (a1 > 26)
  {
    if (a1 != 27)
    {
      if (a1 != 1001)
      {
        return 4;
      }

      return 6;
    }
  }

  else if (a1 != 3)
  {
    return 4;
  }

  return result;
}

NSObject *_createQRContentContext(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = nw_content_context_create("QR request");
  metadata = nw_http_create_metadata();
  v10 = nw_endpoint_copy_address_string(v7);
  nw_endpoint_get_port(v7);
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v11;
  v25 = v11;
  v22 = v11;
  v23 = v11;
  v20 = v11;
  v21 = v11;
  *__str = v11;
  v19 = v11;
  address = nw_endpoint_get_address(v7);

  if (address->sa_family == 30)
  {
    snprintf(__str, 0x80uLL, "https://[%s]:%u");
  }

  else
  {
    snprintf(__str, 0x80uLL, "https://%s:%u");
  }

  free(v10);
  url = nw_endpoint_create_url(__str);
  nw_http_metadata_set_endpoint();
  nw_http_metadata_set_method();
  nw_http_metadata_set_path();
  nw_http_metadata_add_header();
  nw_http_metadata_add_header();
  nw_http_metadata_add_header();
  if (a5)
  {
    nw_http_metadata_add_header();
  }

  else
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v16 = v14;
    v17 = v14;
    snprintf(v16, 0x20uLL, "%llu", a4);
  }

  nw_http_metadata_add_header();
  nw_content_context_set_metadata_for_protocol(v8, metadata);

  return v8;
}

NSObject *_nwProtocolMetaDataForTrafficClass(int a1)
{
  v2 = 0;
  if (a1 > 699)
  {
    switch(a1)
    {
      case 700:
        v3 = &qword_1EB2BBC98;
        v4 = qword_1EB2BBC98;
        if (!qword_1EB2BBC98)
        {
          v5 = nw_service_class_interactive_video;
          goto LABEL_18;
        }

        break;
      case 800:
        v3 = &qword_1EB2BBCA0;
        v4 = qword_1EB2BBCA0;
        if (!qword_1EB2BBCA0)
        {
          v5 = nw_service_class_interactive_voice;
          goto LABEL_18;
        }

        break;
      case 900:
        v3 = &qword_1EB2BBCA8;
        v4 = qword_1EB2BBCA8;
        if (!qword_1EB2BBCA8)
        {
          v5 = nw_service_class_signaling;
LABEL_18:
          v6 = MEMORY[0x1AC5640E0](0);
          v7 = *v3;
          *v3 = v6;

          nw_ip_metadata_set_service_class(*v3, v5);
          nw_ip_metadata_set_enable_fragmentation();
          v4 = *v3;
        }

        break;
      default:
        goto LABEL_20;
    }
  }

  else
  {
    if (a1 != 100 && a1 != 200)
    {
      if (a1 != 600)
      {
        goto LABEL_20;
      }

      v3 = &qword_1EB2BBC90;
      v4 = qword_1EB2BBC90;
      if (qword_1EB2BBC90)
      {
        goto LABEL_19;
      }

      v5 = nw_service_class_responsive_data;
      goto LABEL_18;
    }

    v3 = &qword_1EB2BBC88;
    v4 = qword_1EB2BBC88;
    if (!qword_1EB2BBC88)
    {
      v5 = nw_service_class_background;
      goto LABEL_18;
    }
  }

LABEL_19:
  v2 = v4;
LABEL_20:

  return v2;
}

void sub_1A7B2FE28(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 connection];
  [v3 addObject:v4];
}

void sub_1A7B2FE80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 connection];
  nw_connection_cancel(v4);

  connection = [v3 connection];

  nw_connection_set_state_changed_handler(connection, 0);
}

void sub_1A7B2FEF4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 connection];
  nw_connection_cancel(v4);

  connection = [v3 connection];

  nw_connection_set_state_changed_handler(connection, 0);
}

void sub_1A7B306B4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a1;
  if (a2 != 3 || (+[IDSFoundationLog IDSNWLink], v12 = objc_claimAutoreleasedReturnValue(), v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG), v12, v13))
  {
    v14 = sub_1A7B2ED88([v11 type]);
    v15 = [v11 state] - 1;
    if (v15 > 3)
    {
      v16 = "Connecting";
    }

    else
    {
      v16 = off_1E77E0890[v15];
    }

    v17 = [v11 sessionID];
    v18 = [v11 parent];

    if (v18)
    {
      v19 = objc_alloc(MEMORY[0x1E696AEC0]);
      v20 = [v11 parent];
      v21 = [v19 initWithFormat:@"(C%llu)", objc_msgSend(v20, "connectionID")];

      if (v17)
      {
LABEL_8:
        v22 = [v17 substringToIndex:8];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%-3s connection %@ [C%llu%@] (%s) %s", v14, v22, objc_msgSend(v11, "connectionID"), v21, v16, a3];

        goto LABEL_11;
      }
    }

    else
    {
      v21 = &stru_1F1AC8480;
      if (v17)
      {
        goto LABEL_8;
      }
    }

    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%-3s connection [C%llu%@] (%s) %s", v14, objc_msgSend(v11, "connectionID"), v21, v16, a3];
LABEL_11:
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v23 arguments:&a9];
    switch(a2)
    {
      case 2:
        v25 = +[IDSFoundationLog IDSNWLink];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E12460();
        }

        break;
      case 3:
        v25 = +[IDSFoundationLog IDSNWLink];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_1A7E123EC();
        }

        break;
      case 1:
        v25 = +[IDSFoundationLog IDSNWLink];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v24;
          _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        break;
      default:
LABEL_21:

        goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_22:
}

void sub_1A7B3260C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v72 + 48));
  objc_destroyWeak((v72 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a72);
  _Unwind_Resume(a1);
}

void sub_1A7B32644(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = objc_loadWeakRetained((*(a1 + 32) + 200));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 200));
      [v6 link:*(a1 + 32) didMitigateCollision:0];
    }
  }
}

void sub_1A7B32714(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = objc_loadWeakRetained((*(a1 + 32) + 200));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 200));
      [v6 link:*(a1 + 32) didMitigateCollision:1];
    }
  }
}

uint64_t sub_1A7B32838(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 objectForKeyedSubscript:a2];
  v5 = v4;
  if (v4)
  {
    a3 = [v4 longLongValue];
  }

  return a3;
}

void sub_1A7B32880(id *a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(a1 + 6);
    v11 = v5;
    if (v5)
    {
      sub_1A7B306B4(v5, 1, "pmtu update: pmtu=%d", v6, v7, v8, v9, v10, a2);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1A7B3295C;
      v12[3] = &unk_1E77E01B0;
      v12[4] = WeakRetained;
      v14 = a2;
      v13 = a1[4];
      IDSTransportThreadAddBlock(v12);
    }
  }
}

void sub_1A7B3295C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v7 = objc_loadWeakRetained((*(a1 + 32) + 200));
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = [v5 connectionInfoForToken:*(a1 + 40)];
    [v7 link:v5 pathMTUDidChange:v4 connectionInfo:v6];
  }
}

void sub_1A7B32A38(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v11 = *(a1 + 32);
  if (a2 == 5)
  {
    sub_1A7B306B4(v11, 1, "cancelled", v5, v6, v7, v8, v9, v17);
    if (([*(a1 + 32) ignoreCancel] & 1) == 0)
    {
      [*(a1 + 40) _removeNWLinkConnection:*(a1 + 32) token:*(a1 + 48)];
    }
  }

  else
  {
    if (a2 == 4)
    {
      sub_1A7B306B4(v11, 1, "failed (%@)", v5, v6, v7, v8, v9, v10);
      if (*(a1 + 56))
      {
        v15 = [*(a1 + 32) disconnectionState] == 2;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_1A7B32E9C;
        v22[3] = &unk_1E77E0228;
        v23 = *(a1 + 56);
        v24 = v15;
        IDSTransportThreadAddBlock(v22);
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1A7B32EBC;
      v20[3] = &unk_1E77E0250;
      v19 = *(a1 + 32);
      v16 = v19.i64[0];
      v21 = vextq_s8(v19, v19, 8uLL);
      IDSTransportThreadAddBlock(v20);
      v14 = v21.i64[1];
    }

    else
    {
      if (a2 != 3)
      {
        sub_1A7B306B4(v11, 1, "state %u", v5, v6, v7, v8, v9, a2);
        goto LABEL_14;
      }

      sub_1A7B306B4(v11, 1, "ready", v5, v6, v7, v8, v9, v17);
      [*(a1 + 40) _addToRecentQRServerList:*(a1 + 32)];
      [*(a1 + 40) _setWiFiAssistStateForCellularLink:*(a1 + 32) isEnabled:*(*(a1 + 40) + 13)];
      *(*(a1 + 40) + 14) = 1;
      v12 = *(a1 + 40);
      if (v12[169] == 1)
      {
        [v12 _setQUICKeepAliveForCellularLink:*(a1 + 32)];
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_1A7B32CC0;
      v25[3] = &unk_1E77E0200;
      v28 = *(a1 + 56);
      v29 = *(a1 + 64);
      v18 = *(a1 + 32);
      v13 = v18.i64[0];
      v26 = vextq_s8(v18, v18, 8uLL);
      v27 = *(a1 + 48);
      IDSTransportThreadAddBlock(v25);

      v14 = v28;
    }
  }

LABEL_14:
}

void sub_1A7B32CC0(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  if (v2 && (*(a1 + 64) & 1) == 0)
  {
    (*(v2 + 16))(v2, 1, 0, 0);
  }

  os_unfair_lock_lock((*(a1 + 32) + 48));
  [*(a1 + 40) setState:1];
  v3 = *(*(a1 + 32) + 104);
  if (!v3)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5 = *(a1 + 32);
    v6 = *(v5 + 104);
    *(v5 + 104) = Mutable;

    v3 = *(*(a1 + 32) + 104);
  }

  v7 = [v3 objectForKeyedSubscript:*(a1 + 48)];
  [*(*(a1 + 32) + 104) setObject:0 forKeyedSubscript:*(a1 + 48)];
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v15 = v9;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v8);
        }

        v18 = *(*(&v19 + 1) + 8 * v17);
        sub_1A7B306B4(*(a1 + 40), 1, "performing queued peel-off...", v10, v11, v12, v13, v14, v19);
        (*(v18 + 16))(v18, *(a1 + 40));
        ++v17;
      }

      while (v15 != v17);
      v15 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  [*(a1 + 32) _createIndicationConnection:*(a1 + 40)];
  [*(a1 + 32) _createChannelDataConnection:*(a1 + 40)];
}

uint64_t sub_1A7B32ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1A7B306B4(*(a1 + 32), 1, "start: calling ready handler immediately", a4, a5, a6, a7, a8, v11);
  v9 = *(*(a1 + 40) + 16);

  return v9();
}

void sub_1A7B338B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose((v57 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A7B33924(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A7B3395C(uint64_t a1)
{
  v2 = [*(a1 + 32) _getConnectedLocalPortAndSetLocalEndpointForConnection:*(*(*(a1 + 48) + 8) + 40)];
  v3 = *(*(a1 + 40) + 16);
  v4 = v2;
  v5 = *(a1 + 40);

  return v3(v5, 1, 0, 0, v4);
}

void sub_1A7B339E0(uint64_t a1, id a2)
{
  v3 = a2;
  sec_protocol_options_add_tls_application_protocol(v3, "h2");
  sec_protocol_options_set_min_tls_protocol_version(v3, tls_protocol_version_TLSv13);
  v4 = [IDSNWLink derivePSKFromSessionKey:*(a1 + 32) salt:*(a1 + 40)];
  if (v4)
  {
    v5 = [*(a1 + 48) length];
    v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v5 + 13];
    v7 = [v6 mutableBytes];
    *v7 = 0;
    v8 = [*(a1 + 40) bytes];
    v9 = *v8;
    *(v7 + 9) = *(v8 + 8);
    *(v7 + 1) = v9;
    memcpy(v7 + 13, [*(a1 + 48) bytes], objc_msgSend(*(a1 + 48), "length"));
    v10 = dispatch_data_create([v4 bytes], 0x20uLL, 0, 0);
    v11 = dispatch_data_create(v7, v5 + 13, 0, 0);
    sec_protocol_options_add_pre_shared_key(v3, v10, v11);
  }

  else
  {
    v12 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E126E8();
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A7B33BC8;
    v13[3] = &unk_1E77E0188;
    v14 = *(a1 + 56);
    IDSTransportThreadAddBlock(v13);
  }
}

void sub_1A7B33C08(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v11 = *(*(*(a1 + 48) + 8) + 40);
  switch(a2)
  {
    case 5:
      sub_1A7B306B4(v11, 1, "connectTCP: cancelled", v5, v6, v7, v8, v9, v17);
      [*(a1 + 32) _removeNWLinkConnection:*(*(*(a1 + 48) + 8) + 40) token:*(*(*(a1 + 56) + 8) + 40)];
      break;
    case 4:
      sub_1A7B306B4(v11, 1, "connectTCP: failed (%@)", v5, v6, v7, v8, v9, v10);
      if (*(a1 + 40))
      {
        v14 = [*(*(*(a1 + 48) + 8) + 40) disconnectionState] == 2;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = sub_1A7B34118;
        v21[3] = &unk_1E77E0340;
        v21[4] = *(a1 + 32);
        v19 = *(a1 + 40);
        v15 = v19;
        v22 = v19;
        v23 = v14;
        IDSTransportThreadAddBlock(v21);
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1A7B34178;
      v20[3] = &unk_1E77E0368;
      v16 = *(a1 + 48);
      v20[4] = *(a1 + 32);
      v20[5] = v16;
      IDSTransportThreadAddBlock(v20);
      break;
    case 3:
      sub_1A7B306B4(v11, 1, "connectTCP: ready", v5, v6, v7, v8, v9, v17);
      [*(a1 + 32) _setWiFiAssistStateForCellularLink:*(*(*(a1 + 48) + 8) + 40) isEnabled:*(*(a1 + 32) + 13)];
      *(*(a1 + 32) + 14) = 1;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1A7B33E6C;
      v24[3] = &unk_1E77E0318;
      v12 = *(a1 + 56);
      v24[4] = *(a1 + 32);
      v26 = v12;
      v18 = *(a1 + 40);
      v13 = v18;
      v25 = v18;
      IDSTransportThreadAddBlock(v24);

      break;
    default:
      sub_1A7B306B4(v11, 1, "state %u", v5, v6, v7, v8, v9, a2);
      break;
  }
}

void sub_1A7B33E6C(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _getConnectedLocalPortAndSetLocalEndpointForConnection:*(*(*(a1 + 48) + 8) + 40)];
  [*(a1 + 32) _removePendingTCPNWLinkConnectionForToken:*(*(*(a1 + 56) + 8) + 40)];
  v3 = _tokenForNWLinkConnection(*(*(*(a1 + 48) + 8) + 40));
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(a1 + 32) _addNWLinkConnection:*(*(*(a1 + 48) + 8) + 40) token:*(*(*(a1 + 56) + 8) + 40)];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 1, 0, 0, v2);
  }

  os_unfair_lock_lock((*(a1 + 32) + 48));
  [*(*(*(a1 + 48) + 8) + 40) setState:1];
  v7 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:*(*(*(a1 + 56) + 8) + 40)];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(*(a1 + 32) + 104) setObject:v8 forKeyedSubscript:*(*(*(a1 + 56) + 8) + 40)];
  }

  v9 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:*(*(*(a1 + 56) + 8) + 40)];
  [*(*(a1 + 32) + 104) setObject:0 forKeyedSubscript:*(*(*(a1 + 56) + 8) + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v17 = v11;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v10);
        }

        v20 = *(*(&v21 + 1) + 8 * v19);
        sub_1A7B306B4(*(*(*(a1 + 48) + 8) + 40), 1, "performing queued peel-off...", v12, v13, v14, v15, v16, v21);
        (*(v20 + 16))(v20, *(*(*(a1 + 48) + 8) + 40));
        ++v19;
      }

      while (v17 != v19);
      v17 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  [*(a1 + 32) _createIndicationConnection:*(*(*(a1 + 48) + 8) + 40)];
  [*(a1 + 32) _createChannelDataConnectionForH2:*(*(*(a1 + 48) + 8) + 40)];
}

uint64_t sub_1A7B34118(uint64_t a1)
{
  [*(a1 + 32) _getConnectedLocalPortAndSetLocalEndpointForConnection:*(*(*(a1 + 48) + 8) + 40)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1A7B34804(id *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1[4] + 8) != 1)
  {
    v2 = _tokenWithParameters(a1[5], a1[6], a1[7], 5uLL, 0);
    v5 = [a1[4] _NWLinkConnectionForToken:v2];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 disconnectionState];
      if ((a2 & 1) == 0 && v7 != 3)
      {
        if (v7 != 1)
        {
          v10 = +[IDSFoundationLog IDSNWLink];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v11 = "disconnectWithSessionID cancelled by a new connection";
            goto LABEL_17;
          }

LABEL_18:

LABEL_25:
          goto LABEL_26;
        }

        v8 = ids_monotonic_time();
        [v6 scheduledDisconnectTime];
        if (v8 < v9 + -0.5)
        {
          v10 = +[IDSFoundationLog IDSNWLink];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v11 = "disconnectWithSessionID another disconnection scheduled later time - ignoring this";
LABEL_17:
            _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
            goto LABEL_18;
          }

          goto LABEL_18;
        }
      }

      v12 = [v6 connection];
      v13 = nw_protocol_copy_http_connection_definition();
      v14 = nw_connection_copy_protocol_metadata(v12, v13);

      if (v14)
      {
        nw_http_connection_metadata_close_connection();
      }

      else
      {
        v20 = +[IDSFoundationLog IDSNWLink];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v2;
          _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "disconnectWithSessionID cannot find httpMetadata for %@", buf, 0xCu);
        }
      }

      sub_1A7B306B4(v6, 1, "disconnecting %@", v15, v16, v17, v18, v19, v2);
      [a1[4] _cancelNWLinkConnection:v6 remove:a2];
      [a1[4] _removeChildConnectionEvaluatorFortoken:v2];
      if (a2)
      {
        [v6 setIgnoreCancel:1];
      }
    }

    else
    {
      v14 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v2;
        _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "cannot find QR connection to disconnect for %@", buf, 0xCu);
      }
    }

    [a1[4] _removeExtraListener:nw_endpoint_get_port(a1[5])];
    v21 = _tokenWithParameters(a1[5], a1[6], a1[7], 1uLL, 0);

    [a1[4] _cancelNWLinkConnectionWithToken:v21 removeNWLinkConnectionNow:a2];
    [a1[4] _removeChildConnectionEvaluatorFortoken:v21];
    v22 = _tokenWithParameters(a1[5], a1[6], a1[7], 2uLL, 0);

    [a1[4] _cancelNWLinkConnectionWithToken:v22 removeNWLinkConnectionNow:a2];
    [a1[4] _removeChildConnectionEvaluatorFortoken:v22];
    v23 = _tokenWithParameters(a1[5], a1[6], a1[7], 4uLL, 0);

    [a1[4] _cancelNWLinkConnectionWithToken:v23 removeNWLinkConnectionNow:a2];
    [a1[4] _removeChildConnectionEvaluatorFortoken:v23];
    v24 = _tokenWithParameters(a1[5], a1[6], a1[7], 7uLL, 0);

    [a1[4] _cancelNWLinkConnectionWithToken:v24 removeNWLinkConnectionNow:a2];
    [a1[4] _removeChildConnectionEvaluatorFortoken:v24];
    v2 = _tokenWithParameters(a1[5], a1[6], a1[7], 8uLL, 0);

    [a1[4] _cancelNWLinkConnectionWithToken:v2 removeNWLinkConnectionNow:a2];
    [a1[4] _removeChildConnectionEvaluatorFortoken:v2];
    goto LABEL_25;
  }

  v2 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "disconnectWithSessionID alread invalidated", buf, 2u);
  }

LABEL_26:
}

void sub_1A7B35800(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1A7B35850(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = a1[4];
  v11 = @"NO";
  if (a2)
  {
    v11 = @"YES";
  }

  sub_1A7B306B4(v10, 1, "createQUICPodP2PConnectionsForSession: create AVC successful: %@", a4, a5, a6, a7, a8, v11);
  *(*(a1[6] + 8) + 24) = 1;
  if ((v8 & 1) == 0)
  {
    *(*(a1[7] + 8) + 24) = 0;
  }

  if (*(*(a1[6] + 8) + 24) == 1 && *(*(a1[8] + 8) + 24) == 1)
  {
    v12 = *(a1[5] + 16);

    v12();
  }
}

void sub_1A7B35938(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = a1[4];
  v11 = @"NO";
  if (a2)
  {
    v11 = @"YES";
  }

  sub_1A7B306B4(v10, 1, "createQUICPodP2PConnectionsForSession: create IDS successful: %@", a4, a5, a6, a7, a8, v11);
  *(*(a1[6] + 8) + 24) = 1;
  if ((v8 & 1) == 0)
  {
    *(*(a1[7] + 8) + 24) = 0;
  }

  if (*(*(a1[8] + 8) + 24) == 1 && *(*(a1[6] + 8) + 24) == 1)
  {
    v12 = *(a1[5] + 16);

    v12();
  }
}

uint64_t sub_1A7B361D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    *(*(a1 + 56) + 1296) = [v3 connectionID];
    v5 = [*(a1 + 32) _sendData:*(a1 + 40) withPacketBuffer:? NWLinkConnection:?];
    v11 = v5;
    if (v5)
    {
      if (v5 > 0xF)
      {
        v12 = "UnexpectedSendResult";
      }

      else
      {
        v12 = _IDSLinkSendResultStrings[v5];
      }

      sub_1A7B306B4(v4, 2, "_sendData failed %s", v6, v7, v8, v9, v10, v12);
    }
  }

  else
  {
    v13 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E128BC();
    }

    v11 = 6;
  }

  return v11;
}

void sub_1A7B37BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_1A7B37C2C(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nw_connection_copy_current_path(v3);
  interface_index = nw_path_get_interface_index();
  v6 = nw_connection_copy_parameters(v3);
  v7 = nw_parameters_copy_local_endpoint(v6);
  v8 = nw_connection_copy_endpoint(v3);
  v9 = nw_path_copy_effective_remote_endpoint(v4);
  if ([*(a1 + 32) _shouldAllowP2PConnectionTo:v8 anotherRemoteEndpoint:v9])
  {
    v36 = v6;
    v42 = interface_index;
    v10 = v8;
    v11 = nw_endpoint_get_address(v10);
    if (v11->sa_family == 30 && (v12 = v11, v41 = 0xAAAAAAAAAAAAAAAALL, v13 = nw_nat64_copy_prefixes(), v13 >= 1))
    {
      v14 = 0;
      *&address.sa_data[10] = 0;
      *&address.sa_data[2] = 0;
      *&address.sa_len = 528;
      *address.sa_data = *v12->sa_data;
      v15 = 16 * v13;
      while (!nw_nat64_extract_v4())
      {
        v14 += 16;
        if (v15 == v14)
        {
          goto LABEL_7;
        }
      }

      v8 = nw_endpoint_create_address(&address);
      v31 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v44 = v8;
        v45 = 2112;
        v46 = v10;
        v47 = 1024;
        v48 = v42;
        _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "extracted %@ from %@ on if:%u", buf, 0x1Cu);
      }

      v16 = 1;
    }

    else
    {
LABEL_7:
      v8 = v10;
      v16 = 0;
    }

    v17 = nw_endpoint_get_address(v7);
    if (v16 && v17->sa_family == 30 && (v18 = [*(a1 + 32) _NAT64LocalAddressForInterfaceIndex:interface_index]) != 0)
    {
      *&address.sa_data[6] = 0;
      *&address.sa_len = 528;
      *&address.sa_data[2] = bswap32(v18);
      *address.sa_data = __rev16(nw_endpoint_get_port(v7));
      v19 = nw_endpoint_create_address(&address);
      v20 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v44 = v7;
        v45 = 2112;
        v46 = v19;
        _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "converted %@ to %@", buf, 0x16u);
      }
    }

    else
    {
      v19 = v7;
    }

    v22 = [[NWLinkConnection alloc] initWithType:0 interfaceIndex:interface_index localEndpoint:v19 remoteEndpoint:v8];
    [(NWLinkConnection *)v22 setHasRequiredInterface:0];
    [(NWLinkConnection *)v22 setConnection:v3];
    [(NWLinkConnection *)v22 setName:@"UDP connection from listener"];
    [(NWLinkConnection *)v22 setProtocolStackDescription:*(a1 + 40)];
    v23 = _tokenForNWLinkConnection(v22);
    sub_1A7B306B4(v22, 1, "new incoming connection %@ from %@(%@)", v24, v25, v26, v27, v28, v23);
    if ((IMGetDomainBoolForKey() & 1) != 0 || (IMGetDomainBoolForKeyWithDefaultValue() & 1) != 0 || *(*(a1 + 32) + 16) == 1)
    {
      v29 = +[IDSFoundationLog IDSNWLink];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 32);
        *buf = 134217984;
        v44 = v30;
        _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "<%p> nw_listener_set_new_connection_handler - disabled by forceQuickRelay or disableP2PLinks", buf, 0xCu);
      }

      [*(a1 + 32) _cancelNWLinkConnection:v22 remove:0];
    }

    else
    {
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_1A7B3816C;
      handler[3] = &unk_1E77E0430;
      v32 = v22;
      v33 = *(a1 + 32);
      v38 = v32;
      v39 = v33;
      v34 = v23;
      v40 = v34;
      nw_connection_set_state_changed_handler(v3, handler);
      [*(a1 + 32) _addUDPConnectionInProgress:v32 token:v34];
      v35 = NWLinkQueue();
      nw_connection_set_queue(v3, v35);

      nw_connection_start(v3);
    }

    v7 = v19;
    v6 = v36;
  }

  else
  {
    v21 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = v9;
      v45 = 2112;
      v46 = v8;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "received a late incoming packet from %@(%@) - ignoring", buf, 0x16u);
    }

    nw_connection_cancel(v3);
  }
}

void sub_1A7B3816C(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v10 = *(a1 + 32);
  if (a2 == 5)
  {
    sub_1A7B306B4(v10, 1, "cancelled", v5, v6, v7, v8, v9, v11);
    [*(a1 + 40) _removeNWLinkConnection:*(a1 + 32) token:*(a1 + 48)];
  }

  else if (a2 == 3)
  {
    sub_1A7B306B4(v10, 1, "ready", v5, v6, v7, v8, v9, v11);
    [*(a1 + 32) setState:1];
    [*(a1 + 40) _addNWLinkConnection:*(a1 + 32) token:*(a1 + 48)];
    [*(a1 + 40) _removeUDPConnectionInProgress:*(a1 + 32) token:*(a1 + 48)];
    [*(a1 + 40) _setWiFiAssistStateForCellularLink:*(a1 + 32) isEnabled:*(*(a1 + 40) + 13)];
    [*(a1 + 40) _handleIncomingMessage:*(a1 + 32) keepWaiting:1];
  }

  else
  {
    sub_1A7B306B4(v10, 1, "state %u", v5, v6, v7, v8, v9, a2);
  }
}

void sub_1A7B3824C(uint64_t a1, int a2, void *a3)
{
  *&v16[13] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[IDSFoundationLog IDSNWLink];
  v8 = v7;
  switch(a2)
  {
    case 4:
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = 134217984;
        v14 = v12;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "listener %p cancelled. Invalidating...", &v13, 0xCu);
      }

      nw_listener_set_new_connection_handler(*(a1 + 32), 0);
      nw_listener_set_state_changed_handler(*(a1 + 32), 0);
      goto LABEL_13;
    case 3:
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v13 = 134218242;
        v14 = v11;
        v15 = 2112;
        *v16 = v11;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "listener %p failed %@", &v13, 0x16u);
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
      goto LABEL_13;
    case 2:
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 64);
        v13 = 134218498;
        v14 = v9;
        v15 = 1024;
        *v16 = v10;
        v16[2] = 2112;
        *&v16[3] = v9;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "listener %p on port %u ready %@", &v13, 0x1Cu);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_13:
      dispatch_semaphore_signal(*(a1 + 40));
      goto LABEL_17;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E12A58(a1, a2, v8);
  }

LABEL_17:
}

void sub_1A7B387A0(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v11 = *(a1 + 32);
  switch(a2)
  {
    case 5:
      sub_1A7B306B4(v11, 1, "cancelled", v5, v6, v7, v8, v9, v13);
      [*(a1 + 40) _removeNWLinkConnection:*(a1 + 32) token:*(a1 + 48)];
      break;
    case 4:
      sub_1A7B306B4(v11, 2, "failed (%@)", v5, v6, v7, v8, v9, v10);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1A7B3891C;
      v15[3] = &unk_1E77E0250;
      v14 = *(a1 + 32);
      v12 = v14.i64[0];
      v16 = vextq_s8(v14, v14, 8uLL);
      IDSTransportThreadAddBlock(v15);

      break;
    case 3:
      sub_1A7B306B4(v11, 1, "ready", v5, v6, v7, v8, v9, v13);
      [*(a1 + 32) setState:1];
      [*(a1 + 40) _addNWLinkConnection:*(a1 + 32) token:*(a1 + 48)];
      [*(a1 + 40) _removeUDPConnectionInProgress:*(a1 + 32) token:*(a1 + 48)];
      [*(a1 + 40) _setWiFiAssistStateForCellularLink:*(a1 + 32) isEnabled:*(*(a1 + 40) + 13)];
      [*(a1 + 40) _handleIncomingMessage:*(a1 + 32) keepWaiting:1];
      (*(*(a1 + 56) + 16))();
      break;
    default:
      sub_1A7B306B4(v11, 1, "state %u", v5, v6, v7, v8, v9, a2);
      break;
  }
}

uint64_t sub_1A7B38B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1A7B306B4(*(a1 + 32), 1, "_sheduleRetryConnectionIfNeeded(%s): retrying", a4, a5, a6, a7, a8, *(a1 + 56));
  (*(*(a1 + 48) + 16))();
  sub_1A7B306B4(*(a1 + 32), 1, "_sheduleRetryConnectionIfNeeded(%s): logging connection tree after retry", v9, v10, v11, v12, v13, *(a1 + 56));
  v14 = *(a1 + 40);

  return [v14 logConnectionTree];
}

void sub_1A7B38D88(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    if (![*(a1 + 32) _shouldFail])
    {
      [v8 setName:@"H2 Channel Data connection"];
      v14 = [v8 remoteEndpoint];
      v15 = _createQRContentContext(6, "/QR/ChannelData", v14, 0, 1);
      [v8 setContentContext:v15];

      sub_1A7B306B4(v8, 1, "_createChannelDataConnectionForH2: sending %s with empty body", v16, v17, v18, v19, v20, "/QR/ChannelData");
      v21 = [v8 connection];
      v22 = [v8 contentContext];
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = sub_1A7B38F48;
      completion[3] = &unk_1E77E0520;
      completion[4] = *(a1 + 32);
      v25 = v8;
      v26 = "/QR/ChannelData";
      nw_connection_send(v21, MEMORY[0x1E69E9668], v22, 0, completion);

      goto LABEL_7;
    }

    sub_1A7B306B4(*(a1 + 40), 2, "_createChannelDataConnectionForH2: failed to peel off nwLinkConnection for h2 channeldata connection", v9, v10, v11, v12, v13, v23);
    [*(a1 + 32) _failNWLinkConnection:v8];
  }

  else
  {
    sub_1A7B306B4(*(a1 + 40), 2, "_createChannelDataConnectionForH2: failed to peel off nwLinkConnection for h2 channeldata connection", v3, v4, v5, v6, v7, v23);
  }

  [*(a1 + 32) _scheduleRetryConnectionIfNeeded:0 baseConnection:*(a1 + 40) kind:"CD H2" retryIndex:*(a1 + 56) retryBlock:*(a1 + 48)];
LABEL_7:
}

void sub_1A7B38F48(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = v3;
  if (v3 || (v9 = [*(a1 + 32) _shouldFail], v3 = 0, v9))
  {
    sub_1A7B306B4(*(a1 + 40), 2, "_createChannelDataConnectionForH2: send failed (%@)", v4, v5, v6, v7, v8, v3);
    [*(a1 + 32) _failNWLinkConnection:*(a1 + 40)];
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v17 = [v10 contentContext];
    sub_1A7B306B4(v10, 1, "_createChannelDataConnectionForH2: sent %s, h2context: %p", v12, v13, v14, v15, v16, v11);

    [*(a1 + 32) _tryReadH2Header:*(a1 + 40)];
  }
}

void sub_1A7B39008(uint64_t a1, void *a2)
{
  v9 = a2;
  sub_1A7B306B4(v9, 2, "_createChannelDataConnectionForH2: cancelled", v3, v4, v5, v6, v7, v8);
  [*(a1 + 32) _scheduleRetryConnectionIfNeeded:v9 baseConnection:*(a1 + 40) kind:"CD H2" retryIndex:*(a1 + 56) retryBlock:*(a1 + 48)];
}

void sub_1A7B3914C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v15 = a5;
  if (v15 || ([*(a1 + 32) _shouldFail] & 1) != 0)
  {
    sub_1A7B306B4(*(a1 + 40), 2, "_tryReadH2Header: receive failed (%@)", v10, v11, v12, v13, v14, v15);
    [*(a1 + 32) _failNWLinkConnection:*(a1 + 40)];
    goto LABEL_4;
  }

  if (!v9)
  {
    sub_1A7B306B4(*(a1 + 40), 2, "Null context", v10, v11, v12, v13, v14, v34);
    goto LABEL_11;
  }

  v16 = nw_protocol_copy_http_definition();
  v17 = nw_content_context_copy_protocol_metadata(v9, v16);

  if (!v17)
  {
LABEL_11:
    sub_1A7B306B4(*(a1 + 40), 2, "_tryReadH2Header: failed to get metadata; reading some more...", v18, v19, v20, v21, v22, v34);
    [*(a1 + 32) _tryReadH2Header:*(a1 + 40)];
    goto LABEL_4;
  }

  status = nw_http_metadata_get_status();
  if (status == 200 && ([*(a1 + 32) _shouldFail] & 1) == 0)
  {
    sub_1A7B306B4(*(a1 + 40), 1, "_tryReadH2Header: received 200 OK", v23, v24, v25, v26, v27, v34);
    v29 = [IDSCapsuleParser alloc];
    v30 = NWLinkQueue();
    v31 = [(IDSCapsuleParser *)v29 initWithQueue:v30];
    [*(a1 + 40) setCapsuleParser:v31];

    v32 = *(a1 + 48);
    v33 = [*(a1 + 40) capsuleParser];
    [v33 setConnection:v32];

    [*(a1 + 32) _handleIncomingMessage:*(a1 + 40) keepWaiting:1];
  }

  else
  {
    sub_1A7B306B4(*(a1 + 40), 1, "_tryReadH2Header: response status %u", v23, v24, v25, v26, v27, status);
    v35 = *(a1 + 40);
    nw_http_metadata_enumerate_headers();
    [*(a1 + 32) _failNWLinkConnection:*(a1 + 40)];
  }

LABEL_4:
}

uint64_t sub_1A7B3936C(uint64_t a1, char *__source, int a3, const char *a4, int a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = (a3 + 1);
  if (a3 != -1)
  {
    memset(v18 - ((v9 + 15) & 0x1FFFFFFF0), 170, (a3 + 1));
  }

  v10 = __CFADD__(a5, 1);
  v11 = (a5 + 1);
  if (!v10)
  {
    memset(v18 - ((v11 + 15) & 0x1FFFFFFF0), 170, v11);
  }

  strlcpy(v18 - ((v9 + 15) & 0x1FFFFFFF0), __source, v9);
  strlcpy(v18 - ((v11 + 15) & 0x1FFFFFFF0), a4, v11);
  sub_1A7B306B4(*(a1 + 32), 1, "_tryReadH2Header: %s: %s", v12, v13, v14, v15, v16, v18 - ((v9 + 15) & 0x1FFFFFFF0));
  return 1;
}

void sub_1A7B39880(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11 = *(a1 + 32);
  v13 = v5;
  switch(a2)
  {
    case 5:
      sub_1A7B306B4(v11, 1, "CD cancelled", v6, v7, v8, v9, v10, v12);
      [*(a1 + 40) _removeNWLinkConnection:*(a1 + 32) token:*(a1 + 48)];
      [*(a1 + 40) _scheduleRetryConnectionIfNeeded:*(a1 + 32) baseConnection:*(a1 + 56) kind:"CD" retryIndex:*(a1 + 72) retryBlock:*(a1 + 64)];
      break;
    case 4:
      sub_1A7B306B4(v11, 2, "CD failed (%@)", v6, v7, v8, v9, v10, v5);
      [*(a1 + 40) _failNWLinkConnection:*(a1 + 32)];
      break;
    case 3:
      sub_1A7B306B4(v11, 1, "CD ready", v6, v7, v8, v9, v10, v12);
      [*(a1 + 32) setState:1];
      [*(a1 + 40) _handleIncomingMessage:*(a1 + 32) keepWaiting:1];
      break;
    default:
      sub_1A7B306B4(v11, 2, "CD state: %u", v6, v7, v8, v9, v10, a2);
      break;
  }
}

void sub_1A7B39C1C(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v11 = *(a1 + 32);
  switch(a2)
  {
    case 5:
      sub_1A7B306B4(v11, 1, "RU cancelled", v5, v6, v7, v8, v9, v13);
      [*(a1 + 40) _removeNWLinkConnection:*(a1 + 32) token:*(a1 + 48)];
      break;
    case 4:
      sub_1A7B306B4(v11, 2, "RU failed (%@)", v5, v6, v7, v8, v9, v10);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1A7B39D60;
      v15[3] = &unk_1E77E0250;
      v14 = *(a1 + 32);
      v12 = v14.i64[0];
      v16 = vextq_s8(v14, v14, 8uLL);
      IDSTransportThreadAddBlock(v15);

      break;
    case 3:
      sub_1A7B306B4(v11, 1, "RU ready", v5, v6, v7, v8, v9, v13);
      [*(a1 + 32) setState:1];
      [*(a1 + 40) _handleIncomingMessage:*(a1 + 32) keepWaiting:1];
      break;
    default:
      sub_1A7B306B4(v11, 2, "RU state: %u", v5, v6, v7, v8, v9, a2);
      break;
  }
}

void sub_1A7B3A0E4(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    if (![*(a1 + 32) _shouldFail])
    {
      [v8 setName:@"Indication connection"];
      __buf = 0xAAAAAAAAAAAAAAAALL;
      arc4random_buf(&__buf, 8uLL);
      v14 = [v8 remoteEndpoint];
      v15 = _createQRContentContext(1, "/QR/Indications", v14, __buf, 0);

      sub_1A7B306B4(v8, 1, "sending %s(%llu) with empty body", v16, v17, v18, v19, v20, "/QR/Indications");
      v21 = [v8 connection];
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = sub_1A7B3A29C;
      completion[3] = &unk_1E77E0520;
      completion[4] = *(a1 + 32);
      v24 = v8;
      v25 = "/QR/Indications";
      nw_connection_send(v21, MEMORY[0x1E69E9668], v15, 1, completion);

      goto LABEL_7;
    }

    sub_1A7B306B4(*(a1 + 40), 2, "failed to peel off nwLinkConnection for indication connection", v9, v10, v11, v12, v13, v22);
    [*(a1 + 32) _failNWLinkConnection:v8];
  }

  else
  {
    sub_1A7B306B4(*(a1 + 40), 2, "failed to peel off nwLinkConnection for indication connection", v3, v4, v5, v6, v7, v22);
  }

  [*(a1 + 32) _scheduleRetryConnectionIfNeeded:0 baseConnection:*(a1 + 40) kind:"ID" retryIndex:*(a1 + 56) retryBlock:*(a1 + 48)];
LABEL_7:
}

void sub_1A7B3A29C(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8 || [*(a1 + 32) _shouldFail])
  {
    sub_1A7B306B4(*(a1 + 40), 2, "send failed (%@)", v3, v4, v5, v6, v7, v8);
    [*(a1 + 32) _failNWLinkConnection:*(a1 + 40)];
  }

  else
  {
    sub_1A7B306B4(*(a1 + 40), 1, "sent %s", v3, v4, v5, v6, v7, *(a1 + 48));
    v9 = [*(a1 + 40) connection];
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = sub_1A7B3A3A8;
    completion[3] = &unk_1E77E05E8;
    v10 = *(a1 + 40);
    completion[4] = *(a1 + 32);
    v12 = v10;
    nw_connection_receive(v9, 0, 0, completion);
  }
}

void sub_1A7B3A3A8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v15 = a5;
  if (v15 || ([*(a1 + 32) _shouldFail] & 1) != 0)
  {
    v16 = *(a1 + 40);
    v26 = v15;
    v17 = "receive failed (%@)";
LABEL_4:
    sub_1A7B306B4(v16, 2, v17, v10, v11, v12, v13, v14, v26);
    [*(a1 + 32) _failNWLinkConnection:*(a1 + 40)];
    goto LABEL_5;
  }

  if (!v9)
  {
    sub_1A7B306B4(*(a1 + 40), 2, "Null context", v10, v11, v12, v13, v14, v26);
    goto LABEL_12;
  }

  v18 = nw_protocol_copy_http_definition();
  v19 = nw_content_context_copy_protocol_metadata(v9, v18);

  if (!v19)
  {
LABEL_12:
    v16 = *(a1 + 40);
    v17 = "failed to get metadata";
    goto LABEL_4;
  }

  status = nw_http_metadata_get_status();
  if (status == 200 && ([*(a1 + 32) _shouldFail] & 1) == 0)
  {
    sub_1A7B306B4(*(a1 + 40), 1, "received 200 OK", v20, v21, v22, v23, v24, v26);
    [*(a1 + 32) _handleIncomingIndicationMessage:*(a1 + 40)];
  }

  else
  {
    sub_1A7B306B4(*(a1 + 40), 1, "response status %u", v20, v21, v22, v23, v24, status);
    v27 = *(a1 + 40);
    nw_http_metadata_enumerate_headers();
    [*(a1 + 32) _failNWLinkConnection:*(a1 + 40)];
  }

LABEL_5:
}

uint64_t sub_1A7B3A550(uint64_t a1, char *__source, int a3, const char *a4, int a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = (a3 + 1);
  if (a3 != -1)
  {
    memset(v18 - ((v9 + 15) & 0x1FFFFFFF0), 170, (a3 + 1));
  }

  v10 = __CFADD__(a5, 1);
  v11 = (a5 + 1);
  if (!v10)
  {
    memset(v18 - ((v11 + 15) & 0x1FFFFFFF0), 170, v11);
  }

  strlcpy(v18 - ((v9 + 15) & 0x1FFFFFFF0), __source, v9);
  strlcpy(v18 - ((v11 + 15) & 0x1FFFFFFF0), a4, v11);
  sub_1A7B306B4(*(a1 + 32), 1, "%s: %s", v12, v13, v14, v15, v16, v18 - ((v9 + 15) & 0x1FFFFFFF0));
  return 1;
}

void sub_1A7B3A8E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NWLinkConnection alloc] initWithBaseNWLinkConnection:v3 type:*(a1 + 64)];
  v5 = _tokenForNWLinkConnection(v4);
  v6 = [v3 connection];
  v7 = nw_connection_copy_parameters(v6);
  v8 = MEMORY[0x1AC564200]();

  v9 = [*(a1 + 32) protocolStackDescription];
  [(NWLinkConnection *)v4 setProtocolStackDescription:v9];

  [*(a1 + 40) _setParameters:v8 NWLinkConnection:v4 sharePortWithListener:0 isTCP:{objc_msgSend(v3, "isH2Connection")}];
  v10 = nw_connection_create_with_connection();
  if (v10)
  {
    [(NWLinkConnection *)v4 setConnection:v10];
    [(NWLinkConnection *)v4 setName:@"(unnamed peeled off connection)"];
    [(NWLinkConnection *)v4 setHasQUICStarted:1];
    if (*(a1 + 64) == 6)
    {
      v11 = _tokenForNWLinkConnection(v4);

      v5 = v11;
    }

    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v36 = 0;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A7B3ABCC;
    handler[3] = &unk_1E77E0610;
    v12 = v4;
    v29 = v12;
    v34 = v35;
    v13 = *(a1 + 48);
    v14 = *(a1 + 40);
    v32 = v13;
    v30 = v14;
    v5 = v5;
    v31 = v5;
    v33 = *(a1 + 56);
    nw_connection_set_state_changed_handler(v10, handler);
    v15 = [(NWLinkConnection *)v12 connectionID];
    [v3 connectionID];
    sub_1A7B306B4(v12, 1, "peeled off [C%llu(%llu)]", v16, v17, v18, v19, v20, v15);
    [(NWLinkConnection *)v12 setParent:v3];
    [*(a1 + 40) _addNWLinkConnection:v12 token:v5];
    v21 = NWLinkQueue();
    nw_connection_set_queue(v10, v21);

    nw_connection_start(v10);
    _Block_object_dispose(v35, 8);
  }

  else
  {
    v22 = [v3 connectionID];
    sub_1A7B306B4(v4, 2, "could NOT peel off a new connection from [C%llu] for %@", v23, v24, v25, v26, v27, v22);
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1A7B3ABB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7B3ABCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11 = *(a1 + 32);
  v14 = v5;
  switch(a2)
  {
    case 5:
      sub_1A7B306B4(v11, 1, "cancelled", v6, v7, v8, v9, v10, v13);
      [*(a1 + 40) _removeNWLinkConnection:*(a1 + 32) token:*(a1 + 48)];
      v12 = *(a1 + 64);
      if (v12)
      {
        (*(v12 + 16))(v12, *(a1 + 32));
      }

      break;
    case 4:
      sub_1A7B306B4(v11, 2, "failed (%@)", v6, v7, v8, v9, v10, v5);
      if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
      {
        (*(*(a1 + 56) + 16))();
        *(*(*(a1 + 72) + 8) + 24) = 1;
      }

      [*(a1 + 40) _failNWLinkConnection:*(a1 + 32)];
      break;
    case 3:
      sub_1A7B306B4(v11, 1, "ready", v6, v7, v8, v9, v10, v13);
      [*(a1 + 32) setState:1];
      if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
      {
        (*(*(a1 + 56) + 16))();
        *(*(*(a1 + 72) + 8) + 24) = 1;
      }

      break;
    default:
      sub_1A7B306B4(v11, 1, "state %u", v6, v7, v8, v9, v10, a2);
      break;
  }
}

void sub_1A7B3B52C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) clientSecretDispatchData];
  v4 = [*(a1 + 32) serverSecretDispatchData];
  [*(a1 + 32) isServer];
  *(*(*(a1 + 40) + 8) + 24) = nw_qpod_set_secrets();

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = [*(a1 + 32) clientConnectionIDDispatchData];
    nw_qpod_set_scid();

    v6 = [*(a1 + 32) serverConnectionIDDispatchData];
    nw_qpod_set_dcid();
  }
}

void sub_1A7B3B620(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  switch(a2)
  {
    case 5:
      if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
      {
        (*(*(a1 + 56) + 16))();
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }

      sub_1A7B306B4(*(a1 + 32), 1, "QUICPod cancelled", v5, v6, v7, v8, v9, v12);
      [*(a1 + 40) _removeNWLinkConnection:*(a1 + 32) token:*(a1 + 48)];
      break;
    case 4:
      if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
      {
        (*(*(a1 + 56) + 16))();
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }

      sub_1A7B306B4(*(a1 + 32), 2, "QUICPod failed (%@)", v5, v6, v7, v8, v9, v10);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1A7B3B80C;
      v14[3] = &unk_1E77E0250;
      v13 = *(a1 + 32);
      v11 = v13.i64[0];
      v15 = vextq_s8(v13, v13, 8uLL);
      IDSTransportThreadAddBlock(v14);

      break;
    case 3:
      if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
      {
        (*(*(a1 + 56) + 16))();
        *(*(*(a1 + 64) + 8) + 24) = 1;
        [*(a1 + 32) setState:1];
      }

      sub_1A7B306B4(*(a1 + 32), 1, "QUICPod ready", v5, v6, v7, v8, v9, v12);
      [*(a1 + 40) _handleIncomingMessage:*(a1 + 32) keepWaiting:1];
      break;
    default:
      sub_1A7B306B4(*(a1 + 32), 2, "QUICPod state: %u", v5, v6, v7, v8, v9, a2);
      break;
  }
}

void sub_1A7B3BCC8(uint64_t a1, void *a2)
{
  v5 = a2;
  *(*(*(a1 + 48) + 8) + 24) = nw_qpod_setup_secrets();
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v3 = [*(a1 + 40) clientConnectionIDDispatchData];
    nw_qpod_set_scid();

    v4 = [*(a1 + 40) serverConnectionIDDispatchData];
    nw_qpod_set_dcid();
  }
}

void sub_1A7B3BD7C(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v11 = *(a1 + 32);
  switch(a2)
  {
    case 5:
      sub_1A7B306B4(v11, 1, "QUICPod cancelled", v5, v6, v7, v8, v9, v13);
      [*(a1 + 40) _removeNWLinkConnection:*(a1 + 32) token:*(a1 + 48)];
      break;
    case 4:
      sub_1A7B306B4(v11, 2, "QUICPod failed (%@)", v5, v6, v7, v8, v9, v10);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1A7B3BEC0;
      v15[3] = &unk_1E77E0250;
      v14 = *(a1 + 32);
      v12 = v14.i64[0];
      v16 = vextq_s8(v14, v14, 8uLL);
      IDSTransportThreadAddBlock(v15);

      break;
    case 3:
      sub_1A7B306B4(v11, 1, "QUICPod ready", v5, v6, v7, v8, v9, v13);
      [*(a1 + 32) setState:1];
      [*(a1 + 40) _handleIncomingMessage:*(a1 + 32) keepWaiting:1];
      break;
    default:
      sub_1A7B306B4(v11, 2, "QUICPod state: %u", v5, v6, v7, v8, v9, a2);
      break;
  }
}

void sub_1A7B3C318(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (!v3)
  {
    sub_1A7B306B4(0, 2, "send failed: no connection", v4, v5, v6, v7, v8, v32);
    goto LABEL_14;
  }

  [v3 setMessageType:*(a1 + 64)];
  [v9 setTransactionID:*(a1 + 56)];
  PathForMessageType = _getPathForMessageType(*(a1 + 64));
  v11 = *(a1 + 64);
  v12 = 1;
  if (v11 > 26)
  {
    if (v11 != 27)
    {
      if (v11 != 1001)
      {
LABEL_9:
        v12 = 4;
        goto LABEL_10;
      }

      v12 = 6;
    }
  }

  else if (v11 != 3)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", PathForMessageType];
  [v9 setName:v13];

  v14 = [v9 remoteEndpoint];
  v15 = _createQRContentContext(v12, PathForMessageType, v14, *(a1 + 56), 0);

  dispatch_data_get_size(*(a1 + 32));
  sub_1A7B306B4(v9, 1, "sending %s(%llu) %ldB", v16, v17, v18, v19, v20, PathForMessageType);
  if ([*(a1 + 40) hasQUICStarted])
  {
    v26 = [v9 connection];
    v27 = *(a1 + 32);
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = sub_1A7B3C578;
    completion[3] = &unk_1E77E0520;
    v28 = v9;
    v29 = *(a1 + 48);
    v35 = v28;
    v36 = v29;
    v37 = PathForMessageType;
    nw_connection_send(v26, v27, v15, 1, completion);
  }

  else
  {
    sub_1A7B306B4(v9, 1, "start: got early data; starting connection and sending", v21, v22, v23, v24, v25, v33);
    [*(a1 + 40) setHasQUICStarted:1];
    v30 = [v9 connection];
    nw_connection_send(v30, *(a1 + 32), v15, 1, *MEMORY[0x1E6977E80]);

    v31 = [v9 connection];
    nw_connection_start(v31);

    [*(a1 + 48) _handleIncomingMessage:v9 keepWaiting:0];
  }

LABEL_14:
}

uint64_t sub_1A7B3C578(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[4];
  if (a2)
  {
    sub_1A7B306B4(v9, 2, "send failed (%@)", a4, a5, a6, a7, a8, a2);
    v11 = a1[4];
    v10 = a1[5];

    return [v10 _cancelNWLinkConnection:v11 remove:0];
  }

  else
  {
    sub_1A7B306B4(v9, 1, "sent %s request", a4, a5, a6, a7, a8, a1[6]);
    v14 = a1[4];
    v13 = a1[5];

    return [v13 _handleIncomingMessage:v14 keepWaiting:0];
  }
}

uint64_t sub_1A7B3C614(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = result;
    sub_1A7B306B4(*(result + 32), 2, "send failed (%@)", a4, a5, a6, a7, a8, a2);
    v10 = *(v8 + 32);
    v9 = *(v8 + 40);

    return [v9 _failNWLinkConnection:v10];
  }

  return result;
}

uint64_t sub_1A7B3C670(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = result;
    sub_1A7B306B4(*(result + 32), 2, "_sendData: h2 send failed (%@)", a4, a5, a6, a7, a8, a2);
    v10 = *(v8 + 32);
    v9 = *(v8 + 40);

    return [v9 _failNWLinkConnection:v10];
  }

  return result;
}

void sub_1A7B3C89C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v127 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  sub_1A7B306B4(*(a1 + 32), 3, "receive handler called", v11, v12, v13, v14, v15, v83);
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v115 = 0;
  v116 = &v115;
  v117 = 0xA010000000;
  v118 = "";
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  if (v10)
  {
    sub_1A7B306B4(*(a1 + 32), 2, "receive failed (%@)", v16, v17, v18, v19, v20, v10);
    if (*(a1 + 48) == 22)
    {
      sub_1A7B306B4(*(a1 + 32), 1, "generating empty /QR/UnAllocBind response", v21, v22, v23, v24, v25, v84);
      v26 = +[IDSQRProtoMessage dataWithEmptyUnAllocBindResponse];
      v27 = _IDSLinkPacketBufferCreate();
      v27[162] = [*(a1 + 32) connectionID];
      *(v27 + 1304) = [*(a1 + 32) isQUICPod];
      v28 = [*(a1 + 32) protocolStackDescription];
      v29 = v27[159];
      v27[159] = v28;

      v30 = [v26 length];
      v27[2] = v30;
      [v26 getBytes:*v27 length:v30];
    }

    else
    {
      v27 = 0;
    }

    [*(a1 + 40) _failNWLinkConnection:*(a1 + 32)];
    goto LABEL_30;
  }

  if (!v8)
  {
    v27 = 0;
    if (!v9)
    {
      goto LABEL_30;
    }

LABEL_13:
    v40 = nw_protocol_copy_http_definition();
    v41 = nw_content_context_copy_protocol_metadata(v9, v40);

    if (v41)
    {
      status = nw_http_metadata_get_status();
      v43 = *(a1 + 32);
      PathForMessageType = _getPathForMessageType(*(a1 + 48));
      [*(a1 + 32) transactionID];
      sub_1A7B306B4(v43, 1, "received %s(%llu) %u response %@", v45, v46, v47, v48, v49, PathForMessageType);
      buffer_ptr = 0;
      p_buffer_ptr = &buffer_ptr;
      v108 = 0x2020000000;
      v109 = 0;
      v97 = MEMORY[0x1E69E9820];
      v98 = 3221225472;
      v99 = sub_1A7B3D0F8;
      v100 = &unk_1E77E0728;
      v102 = &v111;
      v101 = *(a1 + 32);
      v103 = &buffer_ptr;
      v104 = &v115;
      v105 = status;
      nw_http_metadata_enumerate_headers();
      if (*(p_buffer_ptr + 24) == 1)
      {
        v50 = *(a1 + 32);
        v51 = [v50 transactionID];
        sub_1A7B306B4(v50, 1, "transactionID mismatch! expected: %llu", v52, v53, v54, v55, v56, v51);
        v92 = MEMORY[0x1E69E9820];
        v93 = 3221225472;
        v94 = sub_1A7B3D2B0;
        v95 = &unk_1E77E0570;
        v96 = *(a1 + 32);
        nw_http_metadata_enumerate_headers();
        v57 = *(a1 + 40);
        if ((*(v57 + 15) & 1) == 0)
        {
          *(v57 + 15) = 1;
          WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 200));
          if (WeakRetained)
          {
            v59 = objc_loadWeakRetained((*(a1 + 40) + 200));
            v60 = objc_opt_respondsToSelector();

            if (v60)
            {
              v61 = objc_loadWeakRetained((*(a1 + 40) + 200));
              [v61 linkTransactionIDMismatchDetected:*(a1 + 40)];
            }
          }
        }
      }

      if (status != 200)
      {
        if (!v27)
        {
          v27 = _IDSLinkPacketBufferCreate();
          v27[2] = 0;
          v27[162] = [*(a1 + 32) connectionID];
          *(v27 + 1304) = [*(a1 + 32) isQUICPod];
          v62 = [*(a1 + 32) protocolStackDescription];
          v63 = v27[159];
          v27[159] = v62;
        }

        *(v27 + 320) = *(a1 + 48);
        *(v27 + 321) = status;
      }

      _Block_object_dispose(&buffer_ptr, 8);
    }

    else
    {
      v64 = nw_protocol_copy_ip_definition();
      v41 = nw_content_context_copy_protocol_metadata(v9, v64);

      if (v41 && v27)
      {
        *(v27 + 442) = nw_ip_metadata_get_ecn_flag(v41);
      }
    }

    goto LABEL_30;
  }

  buffer_ptr = 0xAAAAAAAAAAAAAAAALL;
  size_ptr = 0xAAAAAAAAAAAAAAAALL;
  v31 = dispatch_data_create_map(v8, &buffer_ptr, &size_ptr);
  if (!v31)
  {
    sub_1A7B306B4(*(a1 + 32), 2, "dispatch_data_create_map failed", v32, v33, v34, v35, v36, v84);
    [*(a1 + 40) _failNWLinkConnection:*(a1 + 32)];
    goto LABEL_53;
  }

  v37 = v31;
  v27 = _IDSLinkPacketBufferCreateWithSize("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSNWLink.m", 3458, size_ptr);
  memcpy(*v27, buffer_ptr, size_ptr);
  v27[2] = size_ptr;
  v27[162] = [*(a1 + 32) connectionID];
  *(v27 + 1304) = [*(a1 + 32) isQUICPod];
  v38 = [*(a1 + 32) protocolStackDescription];
  v39 = v27[159];
  v27[159] = v38;

  if ([*(a1 + 32) type] == 3)
  {
    *(v27 + 46) = 1;
  }

  if (v9)
  {
    goto LABEL_13;
  }

LABEL_30:
  if (v27)
  {
    v65 = [*(a1 + 32) localEndpoint];
    address = nw_endpoint_get_address(v65);

    v67 = [*(a1 + 32) remoteEndpoint];
    v68 = nw_endpoint_get_address(v67);

    memcpy(v27 + 7, address, address->sa_len);
    memcpy(v27 + 23, v68, v68->sa_len);
    memcpy(v27 + 39, v116 + 4, *(v116 + 32));
    *(v27 + 44) = *(a1 + 52);
    v69 = [*(a1 + 32) protocolStackDescription];
    v70 = v27[159];
    v27[159] = v69;

    v71 = v112[3];
    if (!v71)
    {
      v71 = [*(a1 + 32) transactionID];
    }

    v27[157] = v71;
    v72 = [*(a1 + 32) sessionID];
    v73 = v27[158];
    v27[158] = v72;

    *(v27 + 12) = [*(a1 + 32) interfaceIndex];
    if ([*(a1 + 32) type] == 7 || objc_msgSend(*(a1 + 32), "type") == 8 || objc_msgSend(*(a1 + 32), "type") == 9 || objc_msgSend(*(a1 + 32), "type") == 10)
    {
      v74 = [*(a1 + 32) channelNumber];
    }

    else
    {
      v74 = 0;
    }

    *(v27 + 644) = v74;
    if ([*(a1 + 32) type] == 9 || objc_msgSend(*(a1 + 32), "type") == 10)
    {
      v80 = "received p2p qpod packet";
    }

    else
    {
      v80 = "received qr qpod packet";
      if ([*(a1 + 32) type] != 7 && objc_msgSend(*(a1 + 32), "type") != 8)
      {
        v80 = "received packet";
      }
    }

    sub_1A7B306B4(*(a1 + 32), 3, v80, v75, v76, v77, v78, v79, v84);
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = sub_1A7B3D3C0;
    v89[3] = &unk_1E77E0750;
    v91 = v27;
    v85 = *(a1 + 32);
    v81 = v85.i64[0];
    v90 = vextq_s8(v85, v85, 8uLL);
    IDSTransportThreadAddBlock(v89);
  }

  [*(a1 + 32) setShouldTreatNextTryAsFirstTry:1];
  if (v10 || (*(a1 + 53) & 1) == 0)
  {
    if ([*(a1 + 32) type] != 5)
    {
      if (v10)
      {
        [*(a1 + 40) _failNWLinkConnection:*(a1 + 32)];
      }

      else
      {
        v87[0] = MEMORY[0x1E69E9820];
        v87[1] = 3221225472;
        v87[2] = sub_1A7B3D46C;
        v87[3] = &unk_1E77E0250;
        v86 = *(a1 + 32);
        v82 = v86.i64[0];
        v88 = vextq_s8(v86, v86, 8uLL);
        IDSTransportThreadAddBlock(v87);
      }
    }
  }

  else
  {
    [*(a1 + 40) _handleIncomingMessage:*(a1 + 32) keepWaiting:1];
  }

LABEL_53:
  _Block_object_dispose(&v115, 8);
  _Block_object_dispose(&v111, 8);
}

void sub_1A7B3D09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A7B3D0F8(uint64_t a1, char *__source, int a3, const char *a4, int a5)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = (a3 + 1);
  if (a3 != -1)
  {
    memset(v19 - ((v9 + 15) & 0x1FFFFFFF0), 170, (a3 + 1));
  }

  v10 = (a5 + 1);
  if (a5 != -1)
  {
    memset(v19 - ((v10 + 15) & 0x1FFFFFFF0), 170, v10);
  }

  strlcpy(v19 - ((v9 + 15) & 0x1FFFFFFF0), __source, v9);
  strlcpy(v19 - ((v10 + 15) & 0x1FFFFFFF0), a4, v10);
  if (!strcmp(v19 - ((v9 + 15) & 0x1FFFFFFF0), "txn_id"))
  {
    *(*(*(a1 + 40) + 8) + 24) = strtoull(v19 - ((v10 + 15) & 0x1FFFFFFF0), 0, 0);
    v17 = *(*(*(a1 + 40) + 8) + 24);
    if (v17 != [*(a1 + 32) transactionID])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  else if (!strcmp(v19 - ((v9 + 15) & 0x1FFFFFFF0), "client_address"))
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19 - ((v10 + 15) & 0x1FFFFFFF0)];
    IPPortStringToSA(v16, *(*(a1 + 56) + 8) + 32);
  }

  if (*(a1 + 64) != 200)
  {
    sub_1A7B306B4(*(a1 + 32), 1, "%s: %s", v11, v12, v13, v14, v15, v19 - ((v9 + 15) & 0x1FFFFFFF0));
  }

  return 1;
}

uint64_t sub_1A7B3D2B0(uint64_t a1, char *__source, int a3, const char *a4, int a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = (a3 + 1);
  if (a3 != -1)
  {
    memset(v18 - ((v9 + 15) & 0x1FFFFFFF0), 170, (a3 + 1));
  }

  v10 = __CFADD__(a5, 1);
  v11 = (a5 + 1);
  if (!v10)
  {
    memset(v18 - ((v11 + 15) & 0x1FFFFFFF0), 170, v11);
  }

  strlcpy(v18 - ((v9 + 15) & 0x1FFFFFFF0), __source, v9);
  strlcpy(v18 - ((v11 + 15) & 0x1FFFFFFF0), a4, v11);
  sub_1A7B306B4(*(a1 + 32), 1, "%s: %s", v12, v13, v14, v15, v16, v18 - ((v9 + 15) & 0x1FFFFFFF0));
  return 1;
}

void sub_1A7B3D3C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
  v3 = [WeakRetained link:*(a1 + 32) didReceivePacket:*(a1 + 48) fromDeviceUniqueID:*(*(a1 + 32) + 192) cbuuid:*(*(a1 + 32) + 184)];

  if ((v3 & 1) == 0)
  {
    *(**(a1 + 48) + *(*(a1 + 48) + 16)) = 0;
    sub_1A7B306B4(*(a1 + 40), 1, "content (%dB) %s NOT processed", v4, v5, v6, v7, v8, *(*(a1 + 48) + 16));
  }

  v9 = *(a1 + 48);

  _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSNWLink.m", 3571, v9);
}

uint64_t sub_1A7B3D47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 16725925 || a3 == 0)
  {
    v10 = *(*(a1 + 48) + 16);

    return v10();
  }

  else
  {
    sub_1A7B306B4(*(a1 + 32), 1, "get capsuleType: 0x%x, data: %@", a4, a5, a6, a7, a8, a2);
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = *(a1 + 56);

    return [v12 _handleIncomingMessage:v13 keepWaiting:v14];
  }
}

void sub_1A7B3D5E4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v15 = a5;
  if (v15)
  {
    sub_1A7B306B4(*(a1 + 32), 2, "receive(%u) failed (%@)", v10, v11, v12, v13, v14, 4);
    [*(a1 + 40) _failNWLinkConnection:*(a1 + 32)];
  }

  else if (v8)
  {
    buffer_ptr = 0xAAAAAAAAAAAAAAAALL;
    size_ptr = 0xAAAAAAAAAAAAAAAALL;
    v21 = dispatch_data_create_map(v8, &buffer_ptr, &size_ptr);
    if (v21 && size_ptr == 4)
    {
      v22 = bswap32(*buffer_ptr);
      sub_1A7B306B4(*(a1 + 32), 1, "receiving %u byte indication message", v16, v17, v18, v19, v20, v22);
      v23 = *(a1 + 48);
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = sub_1A7B3D77C;
      completion[3] = &unk_1E77E07C8;
      v24 = *(a1 + 32);
      v29 = v22;
      v25 = *(a1 + 40);
      v27 = v24;
      v28 = v25;
      nw_connection_receive(v23, v22, v22, completion);
    }

    else
    {
      sub_1A7B306B4(*(a1 + 32), 2, "receive(%u) invalid content (%p, %lu)", v16, v17, v18, v19, v20, 4);
      [*(a1 + 40) _failNWLinkConnection:*(a1 + 32)];
    }
  }
}

void sub_1A7B3D77C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v15 = a5;
  if (!v15)
  {
    if (!v8)
    {
      goto LABEL_10;
    }

    size_ptr = 0xAAAAAAAAAAAAAAAALL;
    buffer_ptr = 0xAAAAAAAAAAAAAAAALL;
    v21 = dispatch_data_create_map(v8, &buffer_ptr, &size_ptr);
    if (v21)
    {
      v22 = *(a1 + 48);
      if (size_ptr == v22)
      {
        v23 = _IDSLinkPacketBufferCreateWithSize("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSNWLink.m", 3652, size_ptr);
        memcpy(*v23, buffer_ptr, size_ptr);
        v23[2] = size_ptr;
        v23[162] = [*(a1 + 32) connectionID];
        *(v23 + 1304) = [*(a1 + 32) isQUICPod];
        v24 = [*(a1 + 32) localEndpoint];
        address = nw_endpoint_get_address(v24);

        v26 = [*(a1 + 32) remoteEndpoint];
        v27 = nw_endpoint_get_address(v26);

        memcpy(v23 + 7, address, address->sa_len);
        memcpy(v23 + 23, v27, v27->sa_len);
        *(v23 + 44) = 1;
        v28 = [*(a1 + 32) sessionID];
        v29 = v23[158];
        v23[158] = v28;

        v23[157] = [*(a1 + 32) transactionID];
        *(v23 + 12) = [*(a1 + 32) interfaceIndex];
        [*(a1 + 32) setShouldTreatNextTryAsFirstTry:1];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = sub_1A7B3D9DC;
        v32[3] = &unk_1E77E0750;
        v34 = v23;
        v31 = *(a1 + 32);
        v30 = v31.i64[0];
        v33 = vextq_s8(v31, v31, 8uLL);
        IDSTransportThreadAddBlock(v32);
        [*(a1 + 40) _handleIncomingIndicationMessage:*(a1 + 32)];

LABEL_9:
        goto LABEL_10;
      }
    }

    else
    {
      v22 = *(a1 + 48);
    }

    sub_1A7B306B4(*(a1 + 32), 2, "receive2(%u) invalid content (%p, %lu)", v16, v17, v18, v19, v20, v22);
    [*(a1 + 40) _failNWLinkConnection:*(a1 + 32)];
    goto LABEL_9;
  }

  sub_1A7B306B4(*(a1 + 32), 2, "receive1(%u) failed (%@)", v10, v11, v12, v13, v14, *(a1 + 48));
  [*(a1 + 40) _failNWLinkConnection:*(a1 + 32)];
LABEL_10:
}

void sub_1A7B3D9DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
  v3 = [WeakRetained link:*(a1 + 32) didReceivePacket:*(a1 + 48) fromDeviceUniqueID:*(*(a1 + 32) + 192) cbuuid:*(*(a1 + 32) + 184)];

  if ((v3 & 1) == 0)
  {
    *(**(a1 + 48) + *(*(a1 + 48) + 16)) = 0;
    sub_1A7B306B4(*(a1 + 40), 1, "content (%dB) %s NOT processed", v4, v5, v6, v7, v8, *(*(a1 + 48) + 16));
  }

  v9 = *(a1 + 48);

  _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSNWLink.m", 3678, v9);
}

id sub_1A7B3DA88(NSObject *a1)
{
  v1 = nw_protocol_options_copy_definition(a1);
  v2 = [MEMORY[0x1E696AEC0] stringWithCString:nw_protocol_definition_get_identifier() encoding:4];

  return v2;
}

void sub_1A7B3DC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7B3DC80(uint64_t a1, NSObject *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v7 = sub_1A7B3DA88(a2);
  v4 = [v3 stringWithFormat:@".%@%@", v7, *(*(*(a1 + 32) + 8) + 40)];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

BOOL sub_1A7B3E2CC(NSObject *a1, void *a2)
{
  v3 = a2;
  address = nw_endpoint_get_address(a1);
  v5 = nw_endpoint_get_address(v3);

  return IsSameSA(address, v5);
}

void sub_1A7B4007C(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  if (v2)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSNWLink.m", 408, [*(a1 + 32) pointerAtIndex:i]);
    }
  }
}

uint64_t IDSQRProtoSessionExperimentReadFrom(uint64_t a1, void *a2)
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
        v38 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13)
        {
          if (v13 != 2)
          {
LABEL_53:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_62;
          }

          [a1 clearOneofValuesForTestValue];
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 40) |= 2u;
          *(a1 + 32) = 1;
          *(a1 + 40) |= 4u;
          while (1)
          {
            v41 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v41 & 0x7F) << v16;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_61;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_61:
          *(a1 + 36) = v22;
        }

        else
        {
          v31 = 0;
          while (1)
          {
            v40 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            if ((v40 & 0x80000000) == 0)
            {
              break;
            }

            if (v31++ > 8)
            {
              goto LABEL_62;
            }
          }

          [a2 hasError];
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            [a1 clearOneofValuesForTestValue];
            *(a1 + 40) |= 2u;
            *(a1 + 32) = 2;
            v14 = PBReaderReadString();
            v15 = 24;
            break;
          case 4:
            [a1 clearOneofValuesForTestValue];
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 40) |= 2u;
            *(a1 + 32) = 3;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v39 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v39 & 0x7F) << v24;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_58;
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

LABEL_58:
            *(a1 + 16) = v30;
            goto LABEL_62;
          case 5:
            v14 = PBReaderReadString();
            v15 = 8;
            break;
          default:
            goto LABEL_53;
        }

        v23 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_62:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1A7B43CA4(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v36 = *MEMORY[0x1E69E9840];
  memset(&__b, 170, 0x4000uLL);
  if (v4 < 1025)
  {
    if (v4 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v31 = v4;
      *&v31[4] = 1024;
      *&v31[6] = 1024;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "buffer array count too big: %d, use %d", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"buffer array count too big: %d, use %d");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"buffer array count too big: %d, use %d");
        }
      }
    }

    v4 = 1024;
  }

  v9 = 0;
  v10 = 0;
  v11 = v4;
  p_iov_len = &__b.iov_len;
  do
  {
    v13 = v6[v9];
    *(p_iov_len - 1) = *v13;
    v14 = v13[2];
    *p_iov_len = v14;
    p_iov_len += 2;
    v10 += v14;
    ++v9;
  }

  while (v4 != v9);
  if (v10)
  {
    if ((*(v7 + 5) & 1) == 0)
    {
      v23 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "connecting", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TCPLink", @"IDS", @"connecting");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"connecting");
          }
        }
      }

      if (!*(v7 + 288))
      {
        *(v7 + 288) = _IDSLinkPacketBufferClone("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSTCPLink.m", 743, *v6);
      }

      return 14;
    }

    v15 = writev(*v7, &__b, v4);
    v16 = v15;
    if (v15 >= 1)
    {
      v17 = *(v7 + 296);
      *v17 += v15;
      if (v15 >= v10)
      {
        result = 0;
        v17[1] += v4;
        return result;
      }

      for (i = v6; ; ++i)
      {
        v19 = *i;
        v20 = *(*i + 16);
        if (v16 < v20)
        {
          break;
        }

        ++v17[1];
        v16 -= v20;
        if (!--v11)
        {
          if (isRunningTests())
          {
            throwsIDSAbortException();
          }

          abort();
        }
      }

      IDSLinkPacketBufferAddBufferStart(*i, v16);
      goto LABEL_59;
    }

    if (v15 == -1)
    {
      v25 = *__error();
      if (v25 == 55 || v25 == 35)
      {
        v19 = *v6;
      }

      else
      {
        v26 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v31 = v25;
          _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "write failed: %d", buf, 8u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"TCPLink", @"IDS", @"write failed: %d");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"write failed: %d");
            }
          }
        }

        sub_1A7B449F8(v7);
        v19 = 0;
      }

      v16 = -1;
      if (v25 == 35 || v25 == 55)
      {
LABEL_59:
        v27 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(v19 + 16);
          v29 = *(v7 + 288);
          *buf = 134218496;
          *v31 = v28;
          *&v31[8] = 2048;
          v32 = v16;
          v33 = 2048;
          v34 = v29;
          _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "would block: %zd %zd %p", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"TCPLink", @"IDS", @"would block: %zd %zd %p");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"would block: %zd %zd %p");
            }
          }
        }

        if (!*(v7 + 288))
        {
          *(v7 + 288) = _IDSLinkPacketBufferClone("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSTCPLink.m", 789, v19);
          IDSTransportThreadResumeSocket(*v7, 2);
        }

        return 14;
      }
    }

    else
    {
      v24 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "connection closed by peer", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TCPLink", @"IDS", @"connection closed by peer");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"connection closed by peer");
          }
        }
      }

      sub_1A7B449F8(v7);
    }

    return 11;
  }

LABEL_21:
  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "nothing to write", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TCPLink", @"IDS", @"nothing to write");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"nothing to write");
      }
    }
  }

  return 0;
}

void sub_1A7B448FC(unsigned int *a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "IDSTCPConnectionDestroy", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TCPLink", @"IDS", @"IDSTCPConnectionDestroy");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"IDSTCPConnectionDestroy");
      }
    }
  }

  sub_1A7B449F8(a1);
  free(a1);
}

uint64_t sub_1A7B449F8(unsigned int *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = a1;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "IDSTCPConnectionInvalidate: conn: %p", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TCPLink", @"IDS", @"IDSTCPConnectionInvalidate: conn: %p");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"IDSTCPConnectionInvalidate: conn: %p");
      }
    }
  }

  v3 = *(a1 + 2);
  if (v3)
  {
    sub_1A7C22710(v3);
    *(a1 + 2) = 0;
  }

  v4 = *(a1 + 35);
  if (v4)
  {
    _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSTCPLink.m", 453, v4);
    *(a1 + 35) = 0;
  }

  v5 = *(a1 + 36);
  if (v5)
  {
    _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSTCPLink.m", 457, v5);
    *(a1 + 36) = 0;
  }

  v6 = *(a1 + 41);
  if (v6)
  {
    _Block_release(v6);
    *(a1 + 41) = 0;
  }

  result = *a1;
  if ((result & 0x80000000) == 0)
  {
    IDSTransportThreadRemoveSocket(result);
    result = close(*a1);
    *a1 = -1;
  }

  *(a1 + 2) = 1;
  return result;
}

void sub_1A7B44BA0(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v6 = 4;
  v7 = -1431655766;
  if (getsockopt(*v1, 0xFFFF, 4103, &v7, &v6))
  {
    v7 = *__error();
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v9) = v7;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "getsockopt failed: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"getsockopt failed: %d");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"getsockopt failed: %d");
        }
      }
    }
  }

  else
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v4 = "not connected";
      }

      else
      {
        v4 = "connected";
      }

      *buf = 136315138;
      v9 = v4;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "async connect completed, status: %s", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"async connect completed, status: %s");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"async connect completed, status: %s");
        }
      }
    }

    if (v7)
    {
      sub_1A7B449F8(v1);
    }

    else
    {
      sub_1A7B44E80(v1);
    }
  }

  if (v7 || !*(v1 + 12))
  {
    v5 = *(v1 + 328);
    if (v5)
    {
      (*(v5 + 16))(v5);
      _Block_release(*(v1 + 328));
      *(v1 + 328) = 0;
    }
  }
}

uint64_t sub_1A7B44E80(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 288);
    *buf = 134217984;
    v11 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "connect done, outbound packet: %p", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TCPLink", @"IDS", @"connect done, outbound packet: %p");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"connect done, outbound packet: %p");
      }
    }
  }

  if (*(a1 + 12))
  {
    result = sub_1A7B450C8(a1, &unk_1A7E40B68, 0x33uLL);
    if (result)
    {
      v5 = *a1;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1A7B45254;
      v9[3] = &unk_1E77DD328;
      v9[4] = a1;
      return IDSTransportThreadAddSocket(v5, v9, 0);
    }
  }

  else
  {
    *(a1 + 5) = 1;
    v6 = *a1;
    v7[4] = a1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A7B46628;
    v8[3] = &unk_1E77DD328;
    v8[4] = a1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A7B46630;
    v7[3] = &unk_1E77DD328;
    return IDSTransportThreadAddSocket(v6, v8, v7);
  }

  return result;
}

BOOL sub_1A7B450C8(int *a1, const void *a2, size_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = write(*a1, a2, a3);
  if (v5 != a3)
  {
    v6 = *__error();
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v10 = a3;
      v11 = 2048;
      v12 = v5;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "IDSTCPConnectionSmallWrite: %zu %zd %d", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"IDSTCPConnectionSmallWrite: %zu %zd %d");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"IDSTCPConnectionSmallWrite: %zu %zd %d");
        }
      }
    }

    sub_1A7B449F8(a1);
  }

  return v5 == a3;
}

void sub_1A7B4525C(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4) == 1)
  {
    v1 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v1, OS_LOG_TYPE_DEFAULT, "Connection already invalidated", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TCPLink", @"IDS", @"Connection already invalidated");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"Connection already invalidated");
      }
    }

    return;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 280);
  v5 = v3[3];
  v6 = v3[1] - v5;
  if (v6 <= 0x3FF)
  {
    sub_1A7C2271C(*(a1 + 16));
    v7 = v3[1];
    v5 = v3[3];
    v6 = v7 - v5;
    if (v7 == v5)
    {
      v34 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "buffer full", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TCPLink", @"IDS", @"buffer full");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"buffer full");
          }
        }
      }

      goto LABEL_112;
    }
  }

  v8 = read(*a1, v5, v6);
  if (v8 <= 0)
  {
    if (v8 < 0)
    {
      v35 = *__error();
      v36 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v35;
        _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, "read failed: %d", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TCPLink", @"IDS", @"read failed: %d");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"read failed: %d");
          }
        }
      }
    }

    else
    {
      v33 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "Connection closed by peer", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TCPLink", @"IDS", @"Connection closed by peer");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"Connection closed by peer");
          }
        }
      }
    }

LABEL_112:
    sub_1A7B449F8(a1);
    return;
  }

  v9 = 0;
  v10 = (v3[3] + v8);
  v3[3] = v10;
  *(*(a1 + 296) + 16) += v8;
  v11 = v3[2];
  while (1)
  {
    v12 = *(a1 + 12);
    if (!v12)
    {
      v14 = v9;
      goto LABEL_32;
    }

    if ((v10 - v11) <= 4)
    {
      v38 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "partial header received", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TCPLink", @"IDS", @"partial header received");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"partial header received");
          }
        }
      }

      return;
    }

    v13 = *(v11 + 3);
    v14 = bswap32(v13) >> 16;
    if (v10 - v11 < (v14 + 5))
    {
      v39 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, "partial record received", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TCPLink", @"IDS", @"partial record received");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"partial record received");
          }
        }
      }

      return;
    }

    v15 = v11 + 5;
    v3[2] = (v11 + 5);
    v16 = *v11;
    if (v16 <= 0x15)
    {
      if (v16 == 20)
      {
        v23 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "SSL change cipher spec", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"TCPLink", @"IDS", @"SSL change cipher spec");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"SSL change cipher spec");
            }
          }
        }

        *(a1 + 12) = 7;
        v9 = v14;
        goto LABEL_89;
      }

      if (v16 != 21)
      {
        goto LABEL_143;
      }

      if (v13 != 512)
      {
        v44 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v14;
          _os_log_impl(&dword_1A7AD9000, v44, OS_LOG_TYPE_DEFAULT, "SSL3 slert, bad record length: %u", buf, 8u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"TCPLink", @"IDS", @"SSL3 slert, bad record length: %u");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"SSL3 slert, bad record length: %u");
            }
          }
        }

        goto LABEL_129;
      }

      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v11[5];
        v19 = v11[6];
        *buf = 67109376;
        *&buf[4] = v18;
        *&buf[8] = 1024;
        *&buf[10] = v19;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "SSL3 slert: %u %u", buf, 0xEu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v48 = v11[5];
          v49 = v11[6];
          _IDSLogTransport(@"TCPLink", @"IDS", @"SSL3 slert: %u %u");
          if (_IDSShouldLog())
          {
            v48 = v11[5];
            v49 = v11[6];
            _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"SSL3 slert: %u %u");
          }
        }
      }

      if (*v15 == 2)
      {
        goto LABEL_129;
      }

      goto LABEL_78;
    }

    if (v16 != 22)
    {
      break;
    }

    if (v12 == 7)
    {
      v24 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 288);
        *v55 = 134217984;
        v56 = v25;
        _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "SSL handshake completed, %p", v55, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v48 = *(a1 + 288);
          _IDSLogTransport(@"TCPLink", @"IDS", @"SSL handshake completed, %p");
          if (_IDSShouldLog())
          {
            v48 = *(a1 + 288);
            _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"SSL handshake completed, %p");
          }
        }
      }

      *(a1 + 12) = 8;
      *(a1 + 5) = 1;
      v26 = *a1;
      v51[4] = a1;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1A7B46780;
      v53 = &unk_1E77DD328;
      v54 = a1;
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = sub_1A7B46788;
      v51[3] = &unk_1E77DD328;
      IDSTransportThreadAddSocket(v26, buf, v51);
      v27 = *(a1 + 328);
      if (v27)
      {
        (*(v27 + 16))(v27, 0);
        _Block_release(*(a1 + 328));
        *(a1 + 328) = 0;
      }
    }

    else
    {
      v28 = *v15;
      switch(v28)
      {
        case 14:
          v31 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *v55 = 0;
            _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "SSL server done", v55, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TCPLink", @"IDS", @"SSL server done");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"SSL server done");
              }
            }
          }

          *(a1 + 12) = 6;
          if (!sub_1A7B450C8(a1, &unk_1A7E40B9B, 0x6DuLL))
          {
            v47 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              *v55 = 0;
              _os_log_impl(&dword_1A7AD9000, v47, OS_LOG_TYPE_DEFAULT, "failed to send client hello done", v55, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"TCPLink", @"IDS", @"failed to send client hello done");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"failed to send client hello done");
                }
              }
            }

            goto LABEL_129;
          }

          break;
        case 12:
          v30 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *v55 = 0;
            _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "SSL server key exchange", v55, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TCPLink", @"IDS", @"SSL server key exchange");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"SSL server key exchange");
              }
            }
          }

          break;
        case 2:
          v29 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *v55 = 0;
            _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "SSL server hello", v55, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TCPLink", @"IDS", @"SSL server hello");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"SSL server hello");
              }
            }
          }

          break;
        default:
          v46 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *v55 = 67109120;
            LODWORD(v56) = v28;
            _os_log_impl(&dword_1A7AD9000, v46, OS_LOG_TYPE_DEFAULT, "Unknown SSL handshake type: %u", v55, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TCPLink", @"IDS", @"Unknown SSL handshake type: %u");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"Unknown SSL handshake type: %u");
              }
            }
          }

          goto LABEL_129;
      }
    }

LABEL_78:
    v21 = 0;
LABEL_79:
    v9 = v14;
    if (*(a1 + 12))
    {
      if (v14 < v21)
      {
        v32 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v14;
          *&buf[12] = 2048;
          *&buf[14] = v21;
          _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "cross SSL record boundary: %zu %zd", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v48 = v14;
            v49 = v21;
            _IDSLogTransport(@"TCPLink", @"IDS", @"cross SSL record boundary: %zu %zd");
            if (_IDSShouldLog())
            {
              v48 = v14;
              v49 = v21;
              _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"cross SSL record boundary: %zu %zd");
            }
          }
        }
      }
    }

    else
    {
      v14 = v21;
    }

LABEL_89:
    v11 = (v3[2] + v14);
    v3[2] = v11;
    ++*(*(a1 + 296) + 24);
    v10 = v3[3];
    if (!*(a1 + 280) || v10 == v11)
    {
      if (v10 == v11)
      {
        v37 = *v3;
        v3[2] = *v3;
        v3[3] = v37;
      }

      return;
    }
  }

  if (v16 != 23)
  {
LABEL_143:
    v42 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *v11;
      *buf = 67109120;
      *&buf[4] = v43;
      _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "Unknown SSL record type: %u", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"Unknown SSL record type: %u");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"Unknown SSL record type: %u");
        }
      }
    }

    goto LABEL_129;
  }

  if (v14 <= 2)
  {
    v45 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v14;
      _os_log_impl(&dword_1A7AD9000, v45, OS_LOG_TYPE_DEFAULT, "SSL user data has no padding: %u", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"SSL user data has no padding: %u");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"SSL user data has no padding: %u");
        }
      }
    }

    goto LABEL_129;
  }

  v14 -= 3;
  v11 += 8;
  v3[2] = v11;
LABEL_32:
  *v4 = v11;
  v4[2] = (v10 - v11);
  v50 = -86;
  v20 = [*(a1 + 320) getPacketLength:v4 isChannelData:{&v50, v48, v49}];
  if ((v20 & 0x8000000000000000) == 0)
  {
    if ((((v20 & 3) != 0) & v50) != 0)
    {
      v21 = (v20 & 0x7FFFFFFFFFFFFFFCLL) + 4;
    }

    else
    {
      v21 = v20;
    }

    if (v21 > v4[2])
    {
      return;
    }

    v4[2] = v20;
    ++*(a1 + 8);
    [*(a1 + 320) processIncomingPacket:v4];
    if ((*(a1 + 8))-- == 1)
    {
      sub_1A7B448FC(a1);
LABEL_131:
      v40 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "conn was destroyed or invalidated", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TCPLink", @"IDS", @"conn was destroyed or invalidated");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"conn was destroyed or invalidated");
          }
        }
      }

      return;
    }

    if ((*a1 & 0x80000000) != 0)
    {
      goto LABEL_131;
    }

    goto LABEL_79;
  }

  if (v20 != -1)
  {
LABEL_129:
    sub_1A7B449F8(a1);
    return;
  }

  v41 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v41, OS_LOG_TYPE_DEFAULT, "need more bytes to find packet length", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TCPLink", @"IDS", @"need more bytes to find packet length");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"need more bytes to find packet length");
      }
    }
  }
}

void sub_1A7B46638(uint64_t a1)
{
  if (*(a1 + 288))
  {
    v2 = sub_1A7B43CA4(a1, a1 + 288);
    if (*a1 != -1 && v2 != 14)
    {
      IDSTransportThreadSuspendSocket(*a1, 2);
      _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSTCPLink.m", 804, *(a1 + 288));
      *(a1 + 288) = 0;
    }
  }

  else
  {
    IDSTransportThreadSuspendSocket(*a1, 2);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "nothing to send", v5, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"nothing to send");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"nothing to send");
        }
      }
    }
  }
}

uint64_t IDSQRProtoH3EndToEndChannelRegisterAckE2EChannelRegisterAckReadFrom(uint64_t a1, void *a2)
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

uint64_t writeStunAddressAttribute(unsigned __int16 *a1, uint64_t a2, int *a3, unint64_t a4)
{
  v4 = 0;
  if (a1 && a2 && a3 && a4)
  {
    if (a4 <= 3)
    {
      v5 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E12F14();
      }

LABEL_8:

      return 0;
    }

    *a2 = bswap32(*a1) >> 16;
    if (a4 == 4)
    {
      v6 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E12EA8();
      }

      goto LABEL_12;
    }

    *(a2 + 4) = 0;
    if (*(a1 + 9) == 30)
    {
      if (*(a1 + 4) || *(a1 + 5) || *(a1 + 6) != -65536)
      {
        if (a4 == 5)
        {
          v6 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E12D6C();
          }

          goto LABEL_12;
        }

        *(a2 + 5) = 2;
        if (a4 - 6 <= 1)
        {
          v6 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E12D04();
          }

          goto LABEL_12;
        }

        *(a2 + 6) = a1[5];
        if (a4 - 8 <= 0xF)
        {
          v5 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E12C9C();
          }

          goto LABEL_8;
        }

        *(a2 + 8) = *(a1 + 1);
        v9 = 24;
LABEL_44:
        *(a2 + 2) = (v9 << 8) - 1024;
        *a3 = v9;
        return 1;
      }

      if (a4 != 5)
      {
        *(a2 + 5) = 1;
        if (a4 - 6 <= 1)
        {
          v6 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E12E40();
          }

          goto LABEL_12;
        }

        *(a2 + 6) = a1[5];
        if (a4 - 8 <= 3)
        {
          v5 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E12DD8();
          }

          goto LABEL_8;
        }

        v8 = *(a1 + 7);
        goto LABEL_37;
      }

      v6 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_32:
        sub_1A7E12C30();
      }
    }

    else
    {
      if (a4 != 5)
      {
        *(a2 + 5) = 1;
        if (a4 - 6 <= 1)
        {
          v6 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E12BC8();
          }

          goto LABEL_12;
        }

        *(a2 + 6) = a1[5];
        if (a4 - 8 <= 3)
        {
          v5 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E12B60();
          }

          goto LABEL_8;
        }

        v8 = *(a1 + 3);
LABEL_37:
        *(a2 + 8) = v8;
        v9 = 12;
        goto LABEL_44;
      }

      v6 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

LABEL_12:

    return 0;
  }

  return v4;
}

uint64_t writeStunXORAddressAttribute(unsigned __int16 *a1, void *a2, uint64_t a3, _DWORD *a4, unint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = v9;
  v11 = 0;
  if (a1 && v9 && a3 && a4 && a5)
  {
    if (a5 <= 3)
    {
      v12 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 134217984;
        v23 = a5;
        v13 = "writeStunXORAddressAttribute: for type: remainingLength: %zd < 4";
LABEL_12:
        _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, v13, &v22, 0xCu);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    *a3 = bswap32(*a1) >> 16;
    if (a5 == 4)
    {
      v12 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 134217984;
        v23 = 0;
        v13 = "writeStunXORAddressAttribute: for payload: remainingLength: %zd < 1";
        goto LABEL_12;
      }

LABEL_13:

      v11 = 0;
      goto LABEL_14;
    }

    *(a3 + 4) = 0;
    if (*(a1 + 9) == 30)
    {
      if (*(a1 + 4) || *(a1 + 5) || *(a1 + 6) != -65536)
      {
        if (a5 == 5)
        {
          v12 = +[IDSFoundationLog Stun];
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }

          v22 = 134217984;
          v23 = 0;
          v13 = "writeStunXORAddressAttribute: for IPv6_v4Mapped: remainingLength: %zd < 1";
          goto LABEL_12;
        }

        *(a3 + 5) = 2;
        if (a5 - 6 <= 1)
        {
          v12 = +[IDSFoundationLog Stun];
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }

          v22 = 134217984;
          v23 = a5 - 6;
          v13 = "writeStunXORAddressAttribute: for IPv6_v4Mapped STUN_MAGIC_COOKIE: remainingLength: %zd < 2";
          goto LABEL_12;
        }

        *(a3 + 6) = a1[5] ^ 0x1221;
        v15 = [v9 bytes];
        if (a5 - 8 <= 0xF)
        {
          v12 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E130B8();
          }

          goto LABEL_13;
        }

        v16.i64[0] = *v15;
        v16.i32[2] = *(v15 + 8);
        v17 = vextq_s8(v16, v16, 0xCuLL);
        v17.i32[0] = 1118048801;
        *(a3 + 8) = *(a1 + 1);
        v18 = a3 + 24;
        *(a3 + 8) = veorq_s8(*(a3 + 8), v17);
LABEL_42:
        v20 = v18 - a3;
        *(a3 + 2) = bswap32(v20 - 4) >> 16;
        *a4 = v20;
        v11 = 1;
        goto LABEL_14;
      }

      if (a5 == 5)
      {
        v12 = +[IDSFoundationLog Stun];
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v22 = 134217984;
        v23 = 0;
        v13 = "writeStunXORAddressAttribute: for IPv6: remainingLength: %zd < 1";
        goto LABEL_12;
      }

      *(a3 + 5) = 1;
      if (a5 - 6 <= 1)
      {
        v12 = +[IDSFoundationLog Stun];
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v22 = 134217984;
        v23 = a5 - 6;
        v13 = "writeStunXORAddressAttribute: for IPv6 STUN_MAGIC_COOKIE: remainingLength: %zd < 2";
        goto LABEL_12;
      }

      v21 = a5 - 8;
      *(a3 + 6) = a1[5] ^ 0x1221;
      if (v21 <= 3)
      {
        v12 = +[IDSFoundationLog Stun];
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v22 = 134217984;
        v23 = v21;
        v13 = "writeStunXORAddressAttribute: for IPv6 STUN_MAGIC_COOKIE: remainingLength: %zd < 4";
        goto LABEL_12;
      }

      v19 = *(a1 + 7);
    }

    else
    {
      if (a5 == 5)
      {
        v12 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1304C();
        }

        goto LABEL_13;
      }

      *(a3 + 5) = 1;
      if (a5 - 6 <= 1)
      {
        v12 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E12FE4();
        }

        goto LABEL_13;
      }

      *(a3 + 6) = a1[5] ^ 0x1221;
      if (a5 - 8 <= 3)
      {
        v12 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E12F7C();
        }

        goto LABEL_13;
      }

      v19 = *(a1 + 3);
    }

    *(a3 + 8) = v19 ^ 0x42A41221;
    v18 = a3 + 12;
    goto LABEL_42;
  }

LABEL_14:

  return v11;
}

uint64_t writeStunUINT8Attribute(unsigned __int16 *a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3 || !a4)
  {
    v9 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 134218752;
      v12 = a1;
      v13 = 2048;
      v14 = a2;
      v15 = 2048;
      v16 = a3;
      v17 = 2048;
      v18 = a4;
      _os_log_error_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_ERROR, "writeStunUINT8Attribute: invalid parameter, attribute: %p, outputBuffer: %p, outputLength: %p, remainingLength: %zd", &v11, 0x2Au);
    }

    return 0;
  }

  if (a4 <= 1)
  {
    v8 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1325C();
    }

LABEL_20:

    return 0;
  }

  *a2 = bswap32(*a1) >> 16;
  if (a4 - 2 <= 1)
  {
    v8 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E131F4();
    }

    goto LABEL_20;
  }

  *(a2 + 2) = 256;
  if (a4 == 4)
  {
    v8 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E13188();
    }

    goto LABEL_20;
  }

  *(a2 + 4) = *(a1 + 8);
  if (a4 - 5 <= 2)
  {
    v8 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E13120();
    }

    goto LABEL_20;
  }

  *(a2 + 7) = 0;
  *(a2 + 5) = 0;
  *a3 = 8;
  return 1;
}

uint64_t writeStunUINT16Attribute(unsigned __int16 *a1, _WORD *a2, _DWORD *a3, unint64_t a4)
{
  v4 = 0;
  if (a1 && a2 && a3 && a4)
  {
    if (a4 > 1)
    {
      *a2 = bswap32(*a1) >> 16;
      if (a4 - 2 > 1)
      {
        a2[1] = 512;
        if (a4 - 4 > 1)
        {
          a2[2] = bswap32(a1[4]) >> 16;
          if (a4 - 6 > 1)
          {
            a2[3] = 0;
            *a3 = 8;
            return 1;
          }

          v6 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E132C8();
          }
        }

        else
        {
          v6 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E13330();
          }
        }
      }

      else
      {
        v6 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E13398();
        }
      }
    }

    else
    {
      v5 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E13400();
      }
    }

    return 0;
  }

  return v4;
}

uint64_t writeStunUINT32Attribute(unsigned __int16 *a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v4 = 0;
  if (a1 && a2 && a3 && a4)
  {
    if (a4 > 1)
    {
      *a2 = bswap32(*a1) >> 16;
      if (a4 - 2 > 1)
      {
        *(a2 + 2) = 1024;
        if (a4 - 4 > 3)
        {
          *(a2 + 4) = bswap32(*(a1 + 2));
          *a3 = 8;
          return 1;
        }

        v6 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1346C();
        }
      }

      else
      {
        v6 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E134D4();
        }
      }
    }

    else
    {
      v5 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1353C();
      }
    }

    return 0;
  }

  return v4;
}

uint64_t writeStunUINT64Attribute(unsigned __int16 *a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v4 = 0;
  if (a1 && a2 && a3 && a4)
  {
    if (a4 > 1)
    {
      *a2 = bswap32(*a1) >> 16;
      if (a4 - 2 > 1)
      {
        *(a2 + 2) = 2048;
        if (a4 - 4 > 7)
        {
          *(a2 + 4) = bswap64(*(a1 + 1));
          *a3 = 12;
          return 1;
        }

        v6 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E135A8();
        }
      }

      else
      {
        v6 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E13628();
        }
      }
    }

    else
    {
      v5 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E13690();
      }
    }

    return 0;
  }

  return v4;
}

uint64_t writeStunBinaryDataAttribute(unsigned __int16 *a1, _WORD *a2, _DWORD *a3, unint64_t a4)
{
  v4 = 0;
  if (a1 && a2 && a3 && a4)
  {
    if (a4 > 3)
    {
      *a2 = bswap32(*a1) >> 16;
      v8 = *(a1 + 2);
      v9 = a4 - 4 - v8;
      if (a4 - 4 >= v8)
      {
        v10 = a2 + 4;
        memcpy(a2 + 2, a1 + 6, v8);
        v11 = v8 + 4;
        a2[1] = bswap32(v8) >> 16;
        if (v8 <= 0)
        {
          v12 = -(-v8 & 3);
        }

        else
        {
          v12 = v8 & 3;
        }

        if (v12 >= 1)
        {
          if (v9 < (4 - v12))
          {
            v7 = +[IDSFoundationLog Stun];
            if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              sub_1A7E136FC();
            }

            goto LABEL_18;
          }

          v11 = v10 + v8 + 4 - v12 - a2;
        }

        *a3 = v11;
        return 1;
      }

      v7 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E13770();
      }
    }

    else
    {
      v7 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E137E4();
      }
    }

LABEL_18:

    return 0;
  }

  return v4;
}

uint64_t writeStunErrorCodeAttribute(_DWORD *a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  result = 0;
  if (a1 && a2 && a3 && a4)
  {
    if (a4 <= 3)
    {
      v8 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E13A08();
      }

LABEL_26:

      return 0;
    }

    *a2 = bswap32(*a1) >> 16;
    if (a4 - 4 <= 1)
    {
      v8 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E139A0();
      }

      goto LABEL_26;
    }

    *a2 = 0;
    if (a4 - 6 <= 1)
    {
      v8 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E13938();
      }

      goto LABEL_26;
    }

    *(a2 + 6) = a1[2];
    *(a2 + 7) = a1[3];
    v9 = a1[36];
    v10 = a4 - 8 - v9;
    if (a4 - 8 < v9)
    {
      v8 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E138B4();
      }

      goto LABEL_26;
    }

    memcpy((a2 + 8), a1 + 4, v9);
    v11 = a2 + 8 + a1[36];
    v12 = a1[36] + 4;
    *(a2 + 2) = bswap32(v12) >> 16;
    if (v10 <= 3)
    {
      v8 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1384C();
      }

      goto LABEL_26;
    }

    v13 = (-v12 & 0x80000000) != 0;
    v14 = -v12 & 3;
    v15 = v12 & 3;
    if (!v13)
    {
      v15 = -v14;
    }

    if (v15 <= 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = 4 - v15;
    }

    *a3 = v11 + v16 - a2;
    return 1;
  }

  return result;
}

uint64_t writeStunUnknownAttribute(int *a1, _WORD *a2, _DWORD *a3, unint64_t a4)
{
  v4 = 0;
  if (a1 && a2 && a3 && a4)
  {
    if (a4 <= 3)
    {
      v5 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E13B64();
      }

LABEL_25:

      return 0;
    }

    v6 = a4 - 4;
    *a2 = bswap32(*a1) >> 16;
    v7 = a2 + 2;
    if (a1[2] >= 1)
    {
      v8 = 6;
      v9 = v6 >> 1;
      while (v9)
      {
        v6 -= 2;
        *v7++ = bswap32(*(a1 + v8)) >> 16;
        --v9;
        v10 = v8 - 5;
        ++v8;
        if (v10 >= a1[2])
        {
          goto LABEL_12;
        }
      }

      v5 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E13AE4();
      }

      goto LABEL_25;
    }

LABEL_12:
    v11 = v7 - a2 - 4;
    a2[1] = bswap32(v11) >> 16;
    if (4 - (v7 - a2) >= 0)
    {
      v12 = -((4 - (v7 - a2)) & 3);
    }

    else
    {
      v12 = v11 & 3;
    }

    if (v6 < (4 - v12))
    {
      v13 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E13A70();
      }

      return 0;
    }

    if (v12 <= 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = 4 - v12;
    }

    *a3 = v7 + v14 - a2;
    return 1;
  }

  return v4;
}

uint64_t readStunXORAddressAttribute(int8x16_t *a1, _DWORD *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v9 = a3;
  v10 = v9;
  if (*a2 > a5)
  {
    goto LABEL_23;
  }

  if (a5 > 1)
  {
    if (*(a4 + 1) == 2)
    {
      if ([v9 length] <= 0xB)
      {
        v12 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E13D8C();
        }

LABEL_22:

        goto LABEL_23;
      }

      v13 = [v10 bytes];
      if (a5 < 4)
      {
        v12 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E13CAC();
        }

        goto LABEL_22;
      }

      v14.i64[0] = *v13;
      v14.i32[2] = *(v13 + 8);
      v15 = *(a4 + 2);
      a1->i64[1] = 0;
      a1[1].i64[0] = 0;
      a1[2].i32[0] = 0;
      a1[1].i64[1] = 0;
      a1->i16[4] = 7708;
      a1->i16[5] = v15 ^ 0x1221;
      if (a5 < 0x14)
      {
        v12 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E13D1C();
        }

        goto LABEL_22;
      }

      v20 = vextq_s8(v14, v14, 0xCuLL);
      v20.i32[0] = 1118048801;
      a1[1] = *(a4 + 4);
      a1[1] = veorq_s8(a1[1], v20);
    }

    else
    {
      if (a5 <= 3)
      {
        v11 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E13C3C();
        }

        goto LABEL_5;
      }

      if (a5 <= 7)
      {
        v11 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E13BCC();
        }

        goto LABEL_5;
      }

      v18 = *(a4 + 2) ^ 0x1221;
      v19 = *(a4 + 4) ^ 0x42A41221;
      a1->i64[1] = 0;
      a1[1].i64[0] = 0;
      a1->i16[4] = 528;
      a1->i32[3] = v19;
      a1->i16[5] = v18;
    }

    v16 = 1;
    goto LABEL_24;
  }

  v11 = +[IDSFoundationLog Stun];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E13E04();
  }

LABEL_5:

LABEL_23:
  v16 = 0;
LABEL_24:

  return v16;
}

uint64_t readStunUINT8Attribute(uint64_t a1, _DWORD *a2, _BYTE *a3, int a4)
{
  if (*a2 > a4)
  {
    return 0;
  }

  if (a4)
  {
    *(a1 + 8) = *a3;
    *a2 = 4;
    return 1;
  }

  else
  {
    v5 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E13E74();
    }

    return 0;
  }
}

uint64_t readStunUINT16Attribute(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4)
{
  if (*a2 > a4)
  {
    return 0;
  }

  if (a4 <= 1)
  {
    v5 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E13EFC();
    }

    return 0;
  }

  else
  {
    *(a1 + 8) = bswap32(*a3) >> 16;
    *a2 = 4;
    return 1;
  }
}

uint64_t readStunUINT32Attribute(uint64_t a1, _DWORD *a2, unsigned int *a3, unsigned int a4)
{
  if (*a2 > a4)
  {
    return 0;
  }

  if (a4 <= 3)
  {
    v5 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E13F74();
    }

    return 0;
  }

  else
  {
    *(a1 + 8) = bswap32(*a3);
    *a2 = 4;
    return 1;
  }
}

uint64_t readStunUINT64Attribute(uint64_t a1, _DWORD *a2, unint64_t *a3, unsigned int a4)
{
  if (*a2 > a4)
  {
    return 0;
  }

  if (a4 <= 7)
  {
    v5 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E13FEC();
    }

    return 0;
  }

  else
  {
    *(a1 + 8) = bswap64(*a3);
    *a2 = 8;
    return 1;
  }
}

BOOL readStunBinaryDataAttribute(uint64_t a1, int *a2, void *__src, int a4)
{
  v4 = *a2;
  v6 = *a2 < 1473 && v4 <= a4;
  if (v6)
  {
    *(a1 + 8) = v4;
    memcpy((a1 + 12), __src, *a2);
    if (*a2 <= 0)
    {
      v8 = -(-*a2 & 3);
    }

    else
    {
      v8 = *a2 & 3;
    }

    if (v8 >= 1)
    {
      *a2 = *a2 - v8 + 4;
    }
  }

  return v6;
}

uint64_t readStunErrorCodeAttribute(_DWORD *a1, int *a2, unsigned __int8 *a3, int a4)
{
  if (*a2 > a4)
  {
    v5 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E14234();
    }

    return 0;
  }

  if (a4 < 2)
  {
    v6 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E14064();
    }

    goto LABEL_11;
  }

  if (a4 == 2)
  {
    v6 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E141BC();
    }

LABEL_11:

    return 0;
  }

  a1[2] = a3[2];
  if (a4 <= 3)
  {
    v6 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E140D4();
    }

    goto LABEL_11;
  }

  a1[3] = a3[3];
  v9 = *a2;
  if ((v9 - 5) >= 0x80)
  {
    v6 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1414C();
    }

    goto LABEL_11;
  }

  memcpy(a1 + 4, a3 + 4, v9 - 4);
  a1[36] = v9 - 4;
  if ((v9 & 3) != 0)
  {
    *a2 = *a2 - (v9 & 3) + 4;
  }

  return 1;
}

uint64_t readStunUnknownAttribute(uint64_t a1, int *a2, unsigned __int16 *a3, int a4)
{
  result = 0;
  v6 = *a2;
  if (*a2 <= a4 && v6 <= 41)
  {
    v7 = (v6 / 2);
    *(a1 + 8) = v7;
    if (v6 <= 1)
    {
LABEL_7:
      if (*a2 <= 0)
      {
        v11 = -(-*a2 & 3);
      }

      else
      {
        v11 = *a2 & 3;
      }

      if (v11 >= 1)
      {
        *a2 = *a2 - v11 + 4;
      }

      return 1;
    }

    else
    {
      v8 = (a1 + 12);
      while (1)
      {
        v9 = __OFSUB__(a4, 2);
        a4 -= 2;
        if (a4 < 0 != v9)
        {
          return 0;
        }

        v10 = *a3++;
        *v8++ = bswap32(v10) >> 16;
        if (!--v7)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t IDSQRProtoH3EndToEndChannelUnRegisterResponseReadFrom(uint64_t a1, void *a2)
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

void sub_1A7B5039C()
{
  v0 = objc_alloc_init(IDSRegistrationKeychainReader);
  v1 = qword_1ED5DF708;
  qword_1ED5DF708 = v0;
}

void sub_1A7B50594(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1A7B505C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained[2];
  if (v3)
  {
    [v3 updateTimerInterval:10 repeats:0];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E69A60C0]);
    v5 = im_primary_queue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A7B506BC;
    v9[3] = &unk_1E77E0908;
    v10 = *(a1 + 32);
    v6 = [v4 initWithQueue:v5 interval:10 repeats:0 handlerBlock:v9];
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;
  }
}

uint64_t sub_1A7B51FA4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return MEMORY[0x1EEE66B58](v2, sel__readyTransaction_);
  }

  else
  {
    return MEMORY[0x1EEE66B58](v2, sel__removeTransaction_);
  }
}

uint64_t IDSQRProtoStatsRequestReadFrom(uint64_t a1, void *a2)
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
        v49 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v49 & 0x7F) << v5;
        if ((v49 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          while (1)
          {
            v53 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v53 & 0x7F) << v40;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_81;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v42;
          }

LABEL_81:
          v47 = 12;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_68:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_89;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v52 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v52 & 0x7F) << v21;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_87;
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

LABEL_87:
          v47 = 8;
        }

        goto LABEL_88;
      }

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 4)
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v50 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v50 & 0x7F) << v34;
          if ((v50 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v36;
        }

LABEL_77:
        v47 = 16;
LABEL_88:
        *(a1 + v47) = v27;
        goto LABEL_89;
      }

      if (v13 != 5)
      {
        goto LABEL_68;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 28) |= 8u;
      while (1)
      {
        v54 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v54 & 0x7F) << v14;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_83;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_83:
      *(a1 + 24) = v20;
LABEL_89:
      v48 = [a2 position];
      if (v48 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v28 = 0;
    v29 = 0;
    v30 = 0;
    *(a1 + 28) |= 4u;
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
        v27 = 0;
        goto LABEL_73;
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

LABEL_73:
    v47 = 20;
    goto LABEL_88;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoMaterialReadFrom(char *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 3)
      {
        v21 = objc_alloc_init(IDSQRProtoMaterialInfo);
        [a1 addMaterialInfo:v21];
        v31[0] = 0xAAAAAAAAAAAAAAAALL;
        v31[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialInfoReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
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
          v28 = 16;
LABEL_51:
          *&a1[v28] = v20;
          goto LABEL_52;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_52:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
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
        v20 = 0;
        goto LABEL_46;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v24;
    }

LABEL_46:
    v28 = 8;
    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

const char *IDSRadioAccessTechnologyToString(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 < 0xB)
  {
    return off_1E77E0948[a1];
  }

  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v5 = a1;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Reserved IDS RAT: %u", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport(@"GL", @"IDS", @"Reserved IDS RAT: %u");
    if (_IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"Reserved IDS RAT: %u");
    }
  }

  return "Reserved";
}

void sub_1A7B556D0()
{
  v0 = objc_alloc_init(IDSCellularLinkMonitor);
  v1 = qword_1ED5DF710;
  qword_1ED5DF710 = v0;
}

uint64_t sub_1A7B55A04(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  result = [v2 containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "add cellularLinkDelegate %@.", buf, 0xCu);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"GL", @"IDS", @"add cellularLinkDelegate %@.");
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"GL", @"add cellularLinkDelegate %@.");
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A7B55C1C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "remove cellularLinkDelegate %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v5 = *(a1 + 32);
      _IDSLogTransport(@"GL", @"IDS", @"remove cellularLinkDelegate %@.");
      if (_IDSShouldLog())
      {
        v5 = *(a1 + 32);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"remove cellularLinkDelegate %@.");
      }
    }
  }

  return [*(*(a1 + 40) + 48) removeObject:{*(a1 + 32), v5}];
}

void sub_1A7B55F18(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a2 copy];
  v5 = [a3 copy];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "Data status notification shouldn't be called: %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"Data status notification shouldn't be called: %@ %@");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"Data status notification shouldn't be called: %@ %@");
      }
    }
  }
}

void sub_1A7B5ADA4(uint64_t a1)
{
  v2 = +[IDSCellularLinkMonitor sharedInstance];
  [v2 processCTConnectionStateChangeNotification:*(a1 + 32) connectionStatus:*(a1 + 40)];
}

void sub_1A7B5B74C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 objectForKey:@"kPayloadKey"];
    v7 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7B5B8BC;
    block[3] = &unk_1E77DD0F0;
    v8 = *(a1 + 40);
    v15 = v6;
    v16 = v8;
    v9 = v6;
    dispatch_async(v7, block);
  }

  else
  {
    v10 = [*(a1 + 32) queue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A7B5B8D4;
    v11[3] = &unk_1E77DD0F0;
    v13 = *(a1 + 40);
    v12 = v5;
    dispatch_async(v10, v11);

    v9 = v13;
  }
}

void sub_1A7B5BAC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [*(a1 + 32) queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A7B5BB84;
  v9[3] = &unk_1E77DD0F0;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, v9);
}

void sub_1A7B5BC3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A7B5BD24;
  block[3] = &unk_1E77E09F8;
  v12 = v5;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_1A7B5BE30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A7B5BEF4;
  v7[3] = &unk_1E77DD0F0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t IDSQRProtoInfoResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v58) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
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
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v14 == 3)
        {
          if (v13 != 2)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            while (1)
            {
              LOBYTE(v58) = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v58 & 0x7F) << v51;
              if ((v58 & 0x80) == 0)
              {
                goto LABEL_98;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                goto LABEL_99;
              }
            }
          }

          v58 = 0xAAAAAAAAAAAAAAAALL;
          v59 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v32 = [a2 position];
            if (v32 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v33 = 0;
            v34 = 0;
            v35 = 0;
            while (1)
            {
              v60 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v60 & 0x7F) << v33;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                goto LABEL_69;
              }
            }

            [a2 hasError];
LABEL_69:
            PBRepeatedUInt64Add();
          }

LABEL_70:
          PBReaderRecallMark();
          goto LABEL_100;
        }

        if (v14 == 16)
        {
          if (v13 != 2)
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            while (1)
            {
              LOBYTE(v58) = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v58 & 0x7F) << v45;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v11 = v46++ >= 9;
              if (v11)
              {
                goto LABEL_99;
              }
            }

LABEL_98:
            [a2 hasError];
LABEL_99:
            PBRepeatedUInt64Add();
            goto LABEL_100;
          }

          v58 = 0xAAAAAAAAAAAAAAAALL;
          v59 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v23 = [a2 position];
            if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_70;
            }

            v24 = 0;
            v25 = 0;
            v26 = 0;
            while (1)
            {
              v60 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v60 & 0x7F) << v24;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                goto LABEL_51;
              }
            }

            [a2 hasError];
LABEL_51:
            PBRepeatedUInt64Add();
          }
        }
      }

      else
      {
        if (v14 == 1)
        {
          v30 = PBReaderReadString();
          v31 = *(a1 + 80);
          *(a1 + 80) = v30;

          goto LABEL_100;
        }

        if (v14 == 2)
        {
          if (v13 != 2)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            while (1)
            {
              LOBYTE(v58) = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v58 & 0x7F) << v39;
              if ((v58 & 0x80) == 0)
              {
                goto LABEL_98;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                goto LABEL_99;
              }
            }
          }

          v58 = 0xAAAAAAAAAAAAAAAALL;
          v59 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v16 = [a2 position];
            if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_70;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            while (1)
            {
              v60 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v60 & 0x7F) << v17;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                goto LABEL_34;
              }
            }

            [a2 hasError];
LABEL_34:
            PBRepeatedUInt64Add();
          }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_100:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1A7B6363C(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E77E0A68[v13];
        v15 = PBReaderReadData();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoSubscribedStreamReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
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
              v34 = [a2 position];
              if (v34 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v35 = 0;
              v36 = 0;
              v37 = 0;
              while (1)
              {
                v51 = 0;
                v38 = [a2 position] + 1;
                if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
                {
                  v40 = [a2 data];
                  [v40 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v37 |= (v51 & 0x7F) << v35;
                if ((v51 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                v11 = v36++ >= 9;
                if (v11)
                {
                  goto LABEL_65;
                }
              }

              [a2 hasError];
LABEL_65:
              PBRepeatedUInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v50[0]) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v50[0] & 0x7F) << v43;
              if ((v50[0] & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                goto LABEL_88;
              }
            }

            [a2 hasError];
LABEL_88:
            PBRepeatedUInt32Add();
          }

          goto LABEL_75;
        }

        if (v13 == 4)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 44) |= 2u;
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
              LOBYTE(v27) = 0;
              goto LABEL_71;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_71:
          v41 = 40;
          goto LABEL_74;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v50[0] & 0x7F) << v28;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_73;
            }
          }

          v27 = (v30 != 0) & ~[a2 hasError];
LABEL_73:
          v41 = 41;
LABEL_74:
          *(a1 + v41) = v27;
          goto LABEL_75;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 44) |= 1u;
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
          *(a1 + 32) = v20;
          goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_75:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRH3ChannelConfigResponseReadFrom(uint64_t a1, void *a2)
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
            v21 = &OBJC_IVAR___IDSQRH3ChannelConfigResponse__effectiveConfigCounter;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___IDSQRH3ChannelConfigResponse__effectiveConfigCounter;
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
        v21 = &OBJC_IVAR___IDSQRH3ChannelConfigResponse__effectiveIdleTimeoutSeconds;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___IDSQRH3ChannelConfigResponse__effectiveIdleTimeoutSeconds;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRH3ChannelConfigChannelConfigReadFrom(uint64_t a1, void *a2)
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

uint64_t IDSQRH3ChannelConfigRequestReadFrom(uint64_t a1, void *a2)
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
            v21 = &OBJC_IVAR___IDSQRH3ChannelConfigRequest__configCounter;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___IDSQRH3ChannelConfigRequest__configCounter;
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
        v21 = &OBJC_IVAR___IDSQRH3ChannelConfigRequest__overrideIdleTimeoutSeconds;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___IDSQRH3ChannelConfigRequest__overrideIdleTimeoutSeconds;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

double sub_1A7B660C8()
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  bst_mach_time_rate = *&result;
  return result;
}

uint64_t TrafficClassForIDSOpenSocketPriorityLevel(uint64_t a1)
{
  if (a1 == 800)
  {
    v1 = 800;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 700)
  {
    v2 = 700;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 600)
  {
    v3 = 600;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 300)
  {
    v4 = 600;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == 100)
  {
    v5 = 100;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 599)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

void sub_1A7B66160(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v3 = fopen([v9 UTF8String], "r");
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v28[15] = v4;
  v27 = v4;
  *v28 = v4;
  v25 = v4;
  v26 = v4;
  v23 = v4;
  v24 = v4;
  v21 = v4;
  v22 = v4;
  v19 = v4;
  v20 = v4;
  v17 = v4;
  v18 = v4;
  v15 = v4;
  v16 = v4;
  *__s = v4;
  v29 = 0;
  if (v3)
  {
    v5 = v3;
    while (fgets(__s, 255, v5))
    {
      v6 = strlen(__s);
      if (v6 && __s[v6 - 1] == 10)
      {
        __s[v6 - 1] = 0;
      }

      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = a1;
        v12 = 2080;
        v13 = __s;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "%s: %s", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: %s");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: %s");
          }
        }
      }
    }
  }

  else
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = a1;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "%s: No such file %@ to dump", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: No such file %@ to dump");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: No such file %@ to dump");
        }
      }
    }
  }
}

void IDSNetworkingLogDump(uint64_t a1, unsigned int a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v53 = a1;
    v54 = 2048;
    *&v55 = a2;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "%s: asked to dump networking logs flags %lu", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v48 = a1;
      *&v49 = a2;
      _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: asked to dump networking logs flags %lu");
      if (_IDSShouldLog())
      {
        v48 = a1;
        *&v49 = a2;
        _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: asked to dump networking logs flags %lu");
      }
    }
  }

  if ((a2 & 8) != 0)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v53 = a1;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "%s: netdiagnose start packetcapture", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: netdiagnose start packetcapture");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: netdiagnose start packetcapture");
        }
      }
    }

    v6 = MEMORY[0x1E696AEC0];
    v7 = NSTemporaryDirectory();
    v8 = [MEMORY[0x1E696AEC0] stringGUID];
    v9 = [v6 stringWithFormat:@"%@/netdiagnose_identityservicesd_%@.txt", v7, v8];

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/usr/local/bin/netdiagnose start packetcapture > %@", v9];
    v11 = v10;
    [v10 UTF8String];
    IMPerformSystem();
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v53 = a1;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "%s: wait 1 second to capture", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v48 = a1;
        _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: wait 1 second to capture");
        if (_IDSShouldLog())
        {
          v48 = a1;
          _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: wait 1 second to capture");
        }
      }
    }

    v13 = dispatch_time(0, 1000000000);
    v14 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7B671EC;
    block[3] = &unk_1E77DD328;
    block[4] = a1;
    dispatch_after(v13, v14, block);

    sub_1A7B66160(a1, v9);
  }

  if (a2)
  {
    v16 = getpid();
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v53 = a1;
      v54 = 2048;
      *&v55 = v16;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "%s: lskq for identityservicesd %lu", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: lskq for identityservicesd %lu");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: lskq for identityservicesd %lu");
        }
      }
    }

    v18 = MEMORY[0x1E696AEC0];
    v19 = NSTemporaryDirectory();
    v20 = [MEMORY[0x1E696AEC0] stringGUID];
    v21 = [v18 stringWithFormat:@"%@/lskq_identityservicesd_%@.txt", v19, v20];

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/usr/bin/lskq -p %lu > %@", v16, v21];
    v23 = v22;
    [v22 UTF8String];
    IMPerformSystem();
    v24 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v53 = a1;
      v54 = 2112;
      v55 = *&v21;
      _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "%s: === lskq file [%@] ===", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v48 = a1;
        v49 = *&v21;
        _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: === lskq file [%@] ===");
        if (_IDSShouldLog())
        {
          v48 = a1;
          v49 = *&v21;
          _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: === lskq file [%@] ===");
        }
      }
    }

    sub_1A7B66160(a1, v21);
  }

  if ((a2 & 0x10) != 0)
  {
    v25 = [MEMORY[0x1E69A60F0] sharedInstance];
    v26 = [v25 isInternalInstall];

    if (v26)
    {
      v27 = getpid();
      v28 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v53 = a1;
        v54 = 2048;
        *&v55 = v27;
        _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "%s: lsof for identityservicesd %lu", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: lsof for identityservicesd %lu");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: lsof for identityservicesd %lu");
          }
        }
      }

      v29 = MEMORY[0x1E696AEC0];
      v30 = NSTemporaryDirectory();
      v31 = [MEMORY[0x1E696AEC0] stringGUID];
      v32 = [v29 stringWithFormat:@"%@/lsof_identityservicesd_%@.txt", v30, v31];

      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/usr/sbin/lsof -lnPp %lu > %@", v27, v32];
      v34 = v33;
      [v33 UTF8String];
      IMPerformSystem();
      v35 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v53 = a1;
        v54 = 2112;
        v55 = *&v32;
        _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "%s: === lsof file [%@] ===", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v48 = a1;
          v49 = *&v32;
          _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: === lsof file [%@] ===");
          if (_IDSShouldLog())
          {
            v48 = a1;
            v49 = *&v32;
            _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: === lsof file [%@] ===");
          }
        }
      }

      sub_1A7B66160(a1, v32);
    }
  }

  if ((a2 & 2) != 0)
  {
    v36 = ids_monotonic_time();
    if (*&qword_1EB2BBCB0 == 0.0 || (v37 = v36 - *&qword_1EB2BBCB0, v36 - *&qword_1EB2BBCB0 > 10.0))
    {
      v39 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v53 = a1;
        _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, "%s: simulate crash", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v48 = a1;
          _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: simulate crash");
          if (_IDSShouldLog())
          {
            v48 = a1;
            _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: simulate crash");
          }
        }
      }

      v40 = [MEMORY[0x1E696AE30] processInfo];
      v41 = [v40 processName];
      getpid();
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
      IMLogSimulateCrashForProcessAndPID();
    }

    else
    {
      v38 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v53 = a1;
        v54 = 2048;
        v55 = v37;
        _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "%s: simulate crash skipped - already done recently (%.6lfs ago)", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v49 = v37;
          v48 = a1;
          _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: simulate crash skipped - already done recently (%.6lfs ago)");
          if (_IDSShouldLog())
          {
            v49 = v37;
            v48 = a1;
            _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: simulate crash skipped - already done recently (%.6lfs ago)");
          }
        }
      }
    }

    qword_1EB2BBCB0 = *&v36;
  }

  if ((a2 & 4) != 0)
  {
    v43 = ids_monotonic_time();
    if (*&qword_1EB2BBCB8 == 0.0 || (v44 = v43 - *&qword_1EB2BBCB8, v43 - *&qword_1EB2BBCB8 > 30.0))
    {
      v46 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v53 = a1;
        _os_log_impl(&dword_1A7AD9000, v46, OS_LOG_TYPE_DEFAULT, "%s: kick off sysdiagnose", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v48 = a1;
          _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: kick off sysdiagnose");
          if (_IDSShouldLog())
          {
            v48 = a1;
            _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: kick off sysdiagnose");
          }
        }
      }

      v47 = [IDSSysdiagnoseLogCollector sharedInstance:v48];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = sub_1A7B67358;
      v50[3] = &unk_1E77E0A80;
      v50[4] = a1;
      [v47 collectSysdiagnoseLog:v50];
    }

    else
    {
      v45 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v53 = a1;
        v54 = 2048;
        v55 = v44;
        _os_log_impl(&dword_1A7AD9000, v45, OS_LOG_TYPE_DEFAULT, "%s: sysdiagnose skipped - already done recently (%.6lfs ago)", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: sysdiagnose skipped - already done recently (%.6lfs ago)");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: sysdiagnose skipped - already done recently (%.6lfs ago)");
        }
      }
    }

    qword_1EB2BBCB8 = *&v43;
  }
}