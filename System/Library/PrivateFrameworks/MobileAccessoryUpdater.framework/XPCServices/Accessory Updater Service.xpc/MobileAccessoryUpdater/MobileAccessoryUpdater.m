void sub_100001648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100001664(void *a1, uint64_t a2)
{
  if (a2)
  {
    *(*(a1[6] + 8) + 24) = a2;
    [*(a1[4] + 8) log:7 format:{@"%s Failed to download asset with result %ld", "-[Haywire findRemoteAsset]_block_invoke", a2}];
  }

  v3 = a1[5];

  return dispatch_semaphore_signal(v3);
}

intptr_t sub_1000018C8(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 8);
  [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
  [v4 log:7 format:{@"[%f] query complete", v5, "-[Haywire _findAsset:]_block_invoke"}];
  if (a2)
  {
    [*(a1 + 32) setError:a2];
  }

  v6 = *(a1 + 40);

  return dispatch_semaphore_signal(v6);
}

NSError *sub_10000195C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [[NSString alloc] initWithFormat:a2 arguments:&a9];
  v17 = +[NSMutableDictionary dictionary];
  if (v10)
  {
    AMRLog(3, @"%@", v11, v12, v13, v14, v15, v16, v10);
    [v17 setObject:v10 forKey:NSLocalizedDescriptionKey];
  }

  return [NSError errorWithDomain:@"HaywireErrorDomain" code:a1 userInfo:v17];
}

CFTypeRef sub_100001A14(const __CFString *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMRLog(7, @"%s", a3, a4, a5, a6, a7, a8, "CFDictionaryRef createBootstrapOptionsDictionary(NSString *, NSString *, NSString *, uint32_t, uint32_t)");
  v27 = 0;
  v13 = CFPreferencesCopyAppValue(@"RestoreBootArgs", kCFPreferencesCurrentApplication);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = a3;
  }

  v16 = CFPreferencesCopyAppValue(@"DeviceTreeFile", kCFPreferencesCurrentApplication);
  v17 = CFPreferencesCopyAppValue(@"BootImageFile", kCFPreferencesCurrentApplication);
  v18 = CFPreferencesCopyAppValue(@"RestoreKernelCacheFile", kCFPreferencesCurrentApplication);
  v19 = AMRAuthInstallCreateOptionsForBootstrapDevice(a1, a2, a4, a5, v15, v16, v17, v18, &v27);
  if (v19)
  {
    AMRLog(5, @"AMRAuthInstallCreateOptionsForBootstrapDevice failed %d\n", v20, v21, v22, v23, v24, v25, v19);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v27;
}

void sub_100002364(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {

    [a2 deviceError:a1];
  }

  else
  {
    AMRLog(3, @"error %d processing device (updater is nil)\n", a1, a4, a5, a6, a7, a8, a1);
  }
}

id sub_10000256C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (!*(v4 + 32))
  {
    [*(v4 + 8) log:3 format:{@"%s error: _maxRemoteBuildNumber=%@ _maxLocalBuildNumber=%@", "-[Haywire findFirmwareWithOptions:remote:]_block_invoke", 0, *(v4 + 24)}];
    v8 = 0;
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = [v5 compare:? options:?];
    v4 = *(a1 + 32);
    v7 = *(v4 + 8);
    if (v6 != -1)
    {
      v8 = 0;
      v9 = "No";
      goto LABEL_9;
    }
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v9 = "Yes";
  v8 = 1;
LABEL_9:
  [v7 log:5 format:{@"%s updateAvailable (%s) (%@) (%@)", "-[Haywire findFirmwareWithOptions:remote:]_block_invoke", v9, *(v4 + 24), *(v4 + 32)}];
  [*(*(a1 + 32) + 16) setValue:objc_msgSend(*(a1 + 32) forKey:{"getUpdateRequired"), @"UpdateRequired"}];
  if (!a2)
  {
LABEL_13:
    v11 = 1;
    goto LABEL_15;
  }

LABEL_10:
  v10 = [a2 domain];
  if ([v10 isEqualToString:ASErrorDomain] && objc_msgSend(a2, "code") == 21)
  {
    a2 = 0;
    goto LABEL_13;
  }

  [*(*(a1 + 32) + 8) log:3 format:{@"%s failed: %@", "-[Haywire findFirmwareWithOptions:remote:]_block_invoke", a2}];
  v11 = 0;
LABEL_15:
  [*(*(a1 + 32) + 8) didFind:v11 info:*(*(a1 + 32) + 16) updateAvailable:v8 needsDownload:1 error:a2];
  v12 = *(a1 + 32);

  return [v12 cleanupAssets];
}

id sub_100002890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(*(a1 + 32) + 8) log:5 format:{@"%s calling didDownload", "-[Haywire downloadFirmwareWithOptions:]_block_invoke"}];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);

  return [v6 didDownload:1 info:v7 error:a3];
}

id sub_100002FC8(int8x16_t *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003050;
  v3[3] = &unk_1000A90F0;
  v1 = a1[2];
  v4 = vextq_s8(v1, v1, 8uLL);
  v6 = a1[3].i8[8];
  v5 = a1[3].i64[0];
  return [v1.i64[0] queryMetaDataWithError:v3];
}

void sub_100003050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) queryComplete:objc_msgSend(*(a1 + 40) remote:"results") error:*(a1 + 56) completion:{a3, *(a1 + 48)}];
  v4 = *(a1 + 40);
}

void sub_1000030B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) queryComplete:objc_msgSend(*(a1 + 40) remote:"results") error:*(a1 + 56) completion:{a3, *(a1 + 48)}];
  v4 = *(a1 + 40);
}

id sub_100003370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  if (!a3)
  {
    return [v5 log:5 format:{@"%s: purged asset: %@.", "-[Haywire cleanupAssets]_block_invoke", v4}];
  }

  [v5 log:5 format:{@"%s: failed to purge asset %@: %@.", "-[Haywire cleanupAssets]_block_invoke", v4, a3}];
  v7 = *(a1 + 32);

  return [v7 setError:a3];
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000035BC(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t DERImg4DecodeProperty(void *a1, uint64_t a2, uint64_t a3)
{
  result = 6;
  if (a1)
  {
    if (a3)
    {
      v14 = 0;
      v15 = 0uLL;
      v13 = 0uLL;
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = DERDecodeSeqInit(a1, &v9, &v10);
      if (!result)
      {
        if (v9 != 0x2000000000000010)
        {
          return 2;
        }

        result = DERDecodeSeqNext(&v10, &v14);
        if (result)
        {
          return result;
        }

        if (v14 != 22)
        {
          return 2;
        }

        result = DERParseInteger(&v15, &v8);
        if (result)
        {
          return result;
        }

        if ((v8 | 0xE000000000000000) != a2)
        {
          return 2;
        }

        *a3 = v15;
        *(a3 + 16) = 0;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result)
        {
          return result;
        }

        *(a3 + 40) = v12;
        *(a3 + 24) = v13;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result != 1)
        {
          return 2;
        }

        v7 = a1[1];
        if (__CFADD__(*a1, v7))
        {
          __break(0x5513u);
        }

        else if (v11 == *a1 + v7)
        {
          return 0;
        }

        else
        {
          return 7;
        }
      }
    }
  }

  return result;
}

uint64_t Img4DecodeParseLengthFromBufferWithTag(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14[1] = 0;
  v15 = 0;
  result = 0xFFFFFFFFLL;
  v13 = 0;
  v14[0] = 0;
  if (a1)
  {
    if (a4)
    {
      v17[0] = a1;
      v17[1] = a2;
      result = DERDecodeItemPartialBufferGetLength(v17, &v15, &v12);
      if (!result)
      {
        if (v12)
        {
          if (v15 != 0x2000000000000010)
          {
            return 2;
          }

          result = DERDecodeItemPartialBufferGetLength(v16, &v13, &v11);
          if (result)
          {
            return result;
          }

          if (v11)
          {
            result = DERImg4DecodeTagCompare(v14, a3);
            if (!result)
            {
              v8 = v16[0] - a1;
              if (v12 >= ~(v16[0] - a1))
              {
                return 7;
              }

              v9 = __CFADD__(v12, v8);
              v10 = v12 + v8;
              if (v9)
              {
                __break(0x5500u);
              }

              else
              {
                result = 0;
                *a4 = v10;
              }

              return result;
            }

            return 2;
          }
        }

        return 3;
      }
    }
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, a3 + 88) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  memset(v8, 170, sizeof(v8));
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  memset(v12, 170, sizeof(v12));
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

void sub_100004230(uint64_t a1)
{
  if (!a1)
  {
    sub_100056288();
  }

  if (!*(a1 + 520))
  {
    *(a1 + 520) = 1;
    AMAuthInstallApFinalize(a1);
    AMAuthInstallBasebandFinalize(a1);
    AMAuthInstallBundleFinalize(a1);
    SafeRelease(*(a1 + 120));
    SafeRelease(*(a1 + 376));
    SafeRelease(*(a1 + 384));
    SafeRelease(*(a1 + 416));
    SafeRelease(*(a1 + 336));
    SafeRelease(*(a1 + 96));
    SafeRelease(*(a1 + 72));
    SafeRelease(*(a1 + 88));
    SafeRelease(*(a1 + 64));
    SafeRelease(*(a1 + 352));
    SafeRelease(*(a1 + 296));
    SafeRelease(*(a1 + 312));
    SafeRelease(*(a1 + 320));
    SafeRelease(*(a1 + 424));
    SafeRelease(*(a1 + 456));
    SafeRelease(*(a1 + 464));
    SafeRelease(*(a1 + 472));
    SafeRelease(*(a1 + 480));
    SafeRelease(*(a1 + 496));
    SafeRelease(*(a1 + 40));
    SafeRelease(*(a1 + 512));
    SafeRelease(*(a1 + 360));
    SafeRelease(*(a1 + 488));

    bzero((a1 + 16), 0x208uLL);
  }
}

const __CFString *AMAuthInstallGetLocalizedStatusString(CFDictionaryRef *cf, int a2)
{
  valuePtr = a2;
  if (a2 > 98)
  {
    if (a2 <= 3500)
    {
      switch(a2)
      {
        case 99:
          return @"Generic";
        case 3194:
          return @"Declined to authorize this image on this device for this user.";
        case 3500:
          return @"The signing server returned an internal error";
      }
    }

    else if (a2 > 3503)
    {
      if (a2 == 3504)
      {
        return @"The signing server could not find the resource requested";
      }

      if (a2 == 3507)
      {
        return @"You must authorize with a proxy server before making this request";
      }
    }

    else
    {
      if (a2 == 3501)
      {
        return @"You must authorize with the signing server before making this request";
      }

      if (a2 == 3503)
      {
        return @"You are not authorized to make this request. Please check your device or credentials";
      }
    }

LABEL_42:
    Value = &stru_1000ABB18;
    if (cf)
    {
      if ((a2 - 3100) <= 0x383)
      {
        v5 = CFGetAllocator(cf);
        v6 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
        if (v6)
        {
          v7 = v6;
          Value = CFDictionaryGetValue(cf[44], v6);
          CFRelease(v7);
          if (!Value)
          {
            AMAuthInstallLog(7, "AMAuthInstallGetLocalizedStatusString", "no cached text for tss error code %d", v8, v9, v10, v11, v12, valuePtr);
          }
        }
      }
    }
  }

  else
  {
    Value = @"No error";
    switch(a2)
    {
      case 0:
        return Value;
      case 1:
        Value = @"Bad parameter";
        break;
      case 2:
        Value = @"Allocation error";
        break;
      case 3:
        Value = @"Conversion error";
        break;
      case 4:
        Value = @"File error";
        break;
      case 5:
        Value = @"Hash error";
        break;
      case 6:
        Value = @"Crypto error";
        break;
      case 7:
        Value = @"Bad build identity";
        break;
      case 8:
        Value = @"Entry not found";
        break;
      case 9:
        Value = @"Invalid img3 object";
        break;
      case 10:
        Value = @"Invalid bbfw object";
        break;
      case 11:
        Value = @"Server not reachable";
        break;
      case 12:
        Value = @"Server timed out";
        break;
      case 13:
        Value = @"Unimplemented";
        break;
      case 14:
        Value = @"Internal error";
        break;
      case 15:
        Value = @"Invalid bbfw file";
        break;
      case 16:
        Value = @"Network error";
        break;
      case 17:
        Value = @"Bad response";
        break;
      case 18:
        Value = @"Fusing failed";
        break;
      case 19:
        Value = @"Baseband provisioning failed";
        break;
      case 20:
        Value = @"AppleConnect not found";
        break;
      case 21:
        Value = @"AppleConnect user canceled";
        break;
      case 22:
        Value = @"AppleConnect bad credentials";
        break;
      default:
        goto LABEL_42;
    }
  }

  return Value;
}

uint64_t AMAuthInstallSetDebugFlags(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 344) = a2;
  return result;
}

void AMAuthInstallApplyRequestEntries(const __CFString *a1, const __CFDictionary *a2, void *a3)
{
  if (CFStringCompare(a1, @"@ApImg4Ticket", 0) == kCFCompareEqualTo)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      v7 = sub_10000480C;
LABEL_7:

      CFDictionaryApplyFunction(a2, v7, a3);
      return;
    }
  }

  if (CFStringCompare(a1, @"@BBTicket", 0) == kCFCompareEqualTo)
  {
    v8 = CFDictionaryGetTypeID();
    if (v8 == CFGetTypeID(a2))
    {
      v7 = sub_100004828;
      goto LABEL_7;
    }
  }

  if (CFStringHasPrefix(a1, @"Ap"))
  {
    v9 = @"ApRequestEntries";
  }

  else
  {
    if (!CFStringHasPrefix(a1, @"Bb"))
    {
      if (CFStringHasPrefix(a1, @"FDR"))
      {

        AMAuthInstallSetFDRRequestEntry(a3, a1, a2);
      }

      return;
    }

    v9 = @"BbRequestEntries";
  }

  AMAuthInstallSetRequestEntry(a3, v9, a1, a2);
}

uint64_t AMAuthInstallSetFDRRequestEntry(const void *a1, const void *a2, const void *a3)
{
  v6 = AMAuthInstallSetRequestEntry(a1, @"ApRequestEntries", a2, a3);
  if (v6)
  {
    v12 = v6;
    v14 = "failed to set FDR entry in Ap request";
LABEL_6:
    AMAuthInstallLog(3, "AMAuthInstallSetFDRRequestEntry", v14, v7, v8, v9, v10, v11, v15);
    return v12;
  }

  v12 = AMAuthInstallSetRequestEntry(a1, @"BbRequestEntries", a2, a3);
  if (v12)
  {
    v14 = "failed to set FDR entry in Bb request";
    goto LABEL_6;
  }

  return v12;
}

uint64_t sub_100004904()
{
  result = _CFRuntimeRegisterClass();
  qword_1000C8778 = result;
  return result;
}

CFStringRef sub_10000492C(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    sub_1000562B4();
  }

  v4 = AMAuthInstallApCopyDescription(a1);
  v5 = AMAuthInstallBasebandCopyDescription(a1);
  v6 = CFGetAllocator(a1);
  v7 = *(a1 + 72);
  if (*(a1 + 64))
  {
    v8 = *(a1 + 64);
  }

  else
  {
    v8 = @"default";
  }

  if (*(a1 + 56))
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (*(a1 + 104))
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
  PlatformInfoString = AMAuthInstallPlatformGetPlatformInfoString();
  v13 = CFStringCreateWithFormat(v6, a2, @"<AMAuthInstall %p>{ap=%@, bp=%@, UserAuth=%@, iTunes=%@, server=%@, locale=%@, version=%@, platform=%@}", a1, v4, v5, v10, v9, v7, v8, LibraryVersionString, PlatformInfoString);
  SafeRelease(v4);
  SafeRelease(v5);
  return v13;
}

CFMutableDictionaryRef sub_100004A30(uint64_t a1, uint64_t a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4)
{

  return CFDictionaryCreateMutable(v4, 0, a3, a4);
}

uint64_t AMAuthInstallApIsImg4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_1000586B0(0, a2, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    sub_100058678(a1, a2, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  return *(v8 + 112);
}

__CFString *AMAuthInstallApCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 64);
  CFStringAppend(Mutable, @"(");
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = "YES";
    if (*(a1 + 57))
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (*(v4 + 20))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    if (*(v4 + 97))
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    if (*(v4 + 88))
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    if (*(v4 + 98))
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    if (*(v4 + 112))
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    if (*(v4 + 136))
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    if (!*(v4 + 144))
    {
      v5 = "NO";
    }

    CFStringAppendFormat(Mutable, 0, @"personalize=%s %@ ecid=0x%llx, chipid=0x%x, boardid=0x%x, secDom=%d, isProduction=%s, EPRO=%s, isSecure=%s, ESEC=%s, img4=%s, demotionPolicy=%@, managedBaaCert=%s, slowRollBaaCert=%s, dpoc=%@", v6, *(v4 + 120), *v4, *(v4 + 8), *(v4 + 12), *(v4 + 16), v7, v8, v9, v10, v11, *(v4 + 104), v12, v5, *(v4 + 208));
    v13 = *(a1 + 16);
    if (*(v13 + 24))
    {
      v14 = CFGetAllocator(a1);
      v15 = _CopyHexStringFromData(v14, *(*(a1 + 16) + 24));
      CFStringAppendFormat(Mutable, 0, @", nonce=0x%@", v15);
      CFRelease(v15);
      v13 = *(a1 + 16);
    }

    if (*(v13 + 48))
    {
      v16 = CFGetAllocator(a1);
      v17 = _CopyHexStringFromData(v16, *(*(a1 + 16) + 48));
      CFStringAppendFormat(Mutable, 0, @", sepNonce=0x%@", v17);
      CFRelease(v17);
    }
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

void AMAuthInstallApFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    SafeRelease(*(v2 + 24));
    SafeRelease(*(*(a1 + 16) + 32));
    SafeRelease(*(*(a1 + 16) + 48));
    SafeRelease(*(*(a1 + 16) + 56));
    SafeRelease(*(*(a1 + 16) + 104));
    SafeRelease(*(*(a1 + 16) + 120));
    SafeRelease(*(*(a1 + 16) + 136));
    SafeRelease(*(*(a1 + 16) + 144));
    SafeRelease(*(*(a1 + 16) + 152));
    SafeRelease(*(*(a1 + 16) + 176));
    SafeRelease(*(*(a1 + 16) + 184));
    SafeRelease(*(*(a1 + 16) + 192));
    SafeRelease(*(*(a1 + 16) + 200));
    SafeRelease(*(*(a1 + 16) + 208));
    SafeRelease(*(*(a1 + 16) + 64));
    SafeRelease(*(*(a1 + 16) + 72));
    SafeFree(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  SafeRelease(*(a1 + 24));
  SafeRelease(*(a1 + 528));
  *(a1 + 24) = 0;
  *(a1 + 528) = 0;
}

uint64_t AMAuthInstallEnableManagedRequest(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {

    return AMAuthInstallHttpRequestManagedBaaCertificate(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    sub_1000586E8(a1, a2, a3, a4, a5, a6, a7, a8, v8);
    return 1;
  }
}

uint64_t AMAuthInstallEnableAlternateUpdateRequest(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {

    return AMAuthInstallHttpRequestAlternateUpdateBaaCertificate(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    sub_1000586FC(a1, a2, a3, a4, a5, a6, a7, a8, v8);
    return 1;
  }
}

uint64_t AMAuthInstallApEnableLocalPolicyHactivation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    result = 0;
    *(a1 + 505) = 1;
  }

  else
  {
    sub_100058710(a1, a2, a3, a4, a5, a6, a7, a8, v8);
    return 1;
  }

  return result;
}

uint64_t AMAuthInstallApCreateDigest(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && (a3 == 1 || a3 == 384 || a3 == 256))
  {

    return _AMSupportCreateDigest();
  }

  else
  {
    AMSupportCreateErrorInternal();
    return 0;
  }
}

void sub_100004EC0(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

CFTypeRef sub_100004EFC(uint64_t a1, uint64_t a2, const UInt8 **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theData = 0;
  if (!a2)
  {
    sub_100058D88(a1, 0, a3, a4, a5, a6, a7, a8, v45);
LABEL_15:
    v43 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    sub_100058D74(a1, a2, 0, a4, a5, a6, a7, a8, v45);
    goto LABEL_15;
  }

  v9 = AMAuthInstallPlatformCreateDataFromMappedFileURL(a1, &theData, a2);
  if (v9)
  {
    AMAuthInstallLog(3, "_AMAuthInstallApFtabCopyFtabFromFile", "AMAuthInstallPlatformCreateDataFromMappedFileURL returned %d", v11, v12, v13, v14, v15, v9);
    goto LABEL_15;
  }

  if (!theData)
  {
    sub_100058D48(v9, v10, 0, v11, v12, v13, v14, v15);
    goto LABEL_15;
  }

  MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, 0, theData);
  v24 = MutableCopy;
  if (!MutableCopy)
  {
    sub_100058D1C(0, v17, v18, v19, v20, v21, v22, v23);
    goto LABEL_15;
  }

  Length = CFDataGetLength(MutableCopy);
  BytePtr = CFDataGetBytePtr(v24);
  IsValid = AMAuthInstallApFtabIsValid(v24, 0, v27, v28, v29, v30, v31, v32);
  if (!IsValid)
  {
    sub_100058CF0(IsValid, v34, v35, v36, v37, v38, v39, v40);
    goto LABEL_15;
  }

  v41 = &BytePtr[16 * (*(BytePtr + 10) - 1)];
  v42 = (*(v41 + 14) + *(v41 + 13));
  if (Length > v42)
  {
    v47.location = (v42 + 1);
    v47.length = Length + ~v42;
    CFDataDeleteBytes(v24, v47);
  }

  *(BytePtr + 2) = 0;
  v43 = CFRetain(v24);
  *a3 = BytePtr;
LABEL_10:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v43;
}

uint64_t image3SHA1Generate(const void *a1, CC_LONG a2, unsigned __int8 *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, a1, a2);
  return CC_SHA1_Final(a3, &v7);
}

uint64_t image3PKISignHash(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  return 0;
}

int8x16_t image3SHA1Partial(const void *a1, CC_LONG a2, int8x16_t *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, a1, a2);
  result = vrev32q_s8(*&v7.h0);
  *a3 = result;
  a3[1].i32[0] = bswap32(v7.h4);
  return result;
}

uint64_t AMAuthInstallApImg3CreatePersonalizedData(const void *a1, const __CFData *a2, const __CFData *a3, const __CFData *a4, CFTypeRef *a5)
{
  memset(length, 0, sizeof(length));
  v10 = AMAuthInstallSupportCopyAllocator();
  BytePtr = CFDataGetBytePtr(a2);
  LODWORD(a2) = CFDataGetLength(a2);
  v12 = CFDataGetBytePtr(a4);
  v13 = CFDataGetBytePtr(a3);
  v14 = CFDataGetLength(a3);
  if (tss_stitch_img3(BytePtr, a2, v12, v13, v14, &length[1], length, v15))
  {
    v16 = 0;
    v17 = 9;
  }

  else
  {
    v18 = CFGetAllocator(a1);
    v19 = CFDataCreateWithBytesNoCopy(v18, *&length[1], length[0], v10);
    v16 = v19;
    if (v19)
    {
      v17 = 0;
      *a5 = CFRetain(v19);
    }

    else
    {
      free(*&length[1]);
      v17 = 2;
    }
  }

  SafeRelease(v16);
  SafeRelease(v10);
  return v17;
}

uint64_t AMAuthInstallApImg3PersonalizeImg3WithEntryNameAndOptions(void *a1, const __CFURL *a2, const __CFURL *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6, char a7)
{
  *v14 = 0;
  if (a1)
  {
    v8 = 0;
    v9 = 1;
    if (a3 && a2 && a1[2])
    {
      v11 = AMAuthInstallApImg3CopyPersonalizedData(a1, a2, a4, a5, a6, v14, a7 & 1);
      if (v11)
      {
        v9 = v11;
        v8 = *v14;
      }

      else
      {
        v13 = CFGetAllocator(a1);
        v8 = *v14;
        v9 = AMAuthInstallSupportWriteDataToFileURL(v13, *v14, a3, 1);
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  SafeRelease(v8);
  return v9;
}

uint64_t AMAuthInstallApImg3CopyBuildString(const __CFAllocator *a1, const void *a2, CFStringRef *a3)
{
  theData = 0;
  v27 = 0;
  __s = 0;
  DataFromFileURL = AMAuthInstallSupportCreateDataFromFileURL(a1, &theData, a2);
  if (DataFromFileURL)
  {
    v22 = DataFromFileURL;
    goto LABEL_20;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (image3InstantiateFromBuffer(&v27, BytePtr, Length, 0))
  {
    v22 = 9;
    v24 = "%s: invalid image 3 object";
    goto LABEL_19;
  }

  if (image3GetTagString(v27, 1447383635, &__s, 0))
  {
    v22 = 9;
    v24 = "%s: failed to get tag";
    goto LABEL_19;
  }

  v18 = __s;
  if (!strchr(__s, 126))
  {
    v19 = strlen(v18);
    if (v19 + 1 < 2)
    {
      v22 = 99;
      v24 = "$s: failed to get tag buffer length";
    }

    else
    {
      v20 = realloc(v18, v19 + 2);
      __s = v20;
      if (v20)
      {
        *&v20[strlen(v20)] = 126;
        v18 = __s;
        goto LABEL_8;
      }

      v22 = 2;
      v24 = "$s: failed to realloc tag buffer";
    }

LABEL_19:
    AMAuthInstallLog(3, "AMAuthInstallApImg3CopyBuildString", v24, v13, v14, v15, v16, v17, "AMAuthInstallApImg3CopyBuildString");
    goto LABEL_20;
  }

LABEL_8:
  v21 = CFStringCreateWithCString(a1, v18, 0x8000100u);
  *a3 = v21;
  if (v21)
  {
    v22 = 0;
    goto LABEL_10;
  }

  v22 = 2;
LABEL_20:
  AMAuthInstallLog(8, "AMAuthInstallApImg3CopyBuildString", "%s: %@", v6, v7, v8, v9, v10, "AMAuthInstallApImg3CopyBuildString");
LABEL_10:
  if (v27)
  {
    image3Discard(&v27);
  }

  SafeRelease(theData);
  SafeFree(__s);
  return v22;
}

CFStringRef AMAuthInstallApImg4GetTypeForEntryName(CFStringRef theString1)
{
  v2 = off_1000A94C0;
  v3 = 218;
  while (CFStringCompare(theString1, *(v2 - 1), 0))
  {
    v2 += 2;
    if (!--v3)
    {
      v4 = 0;
      goto LABEL_6;
    }
  }

  v4 = *v2;
LABEL_6:
  if (v4)
  {
    return v4;
  }

  else
  {
    return theString1;
  }
}

CFStringRef AMAuthInstallApImg4GetEntryNameForType(CFStringRef theString1)
{
  v2 = off_1000A94C0;
  v3 = 218;
  while (CFStringCompare(theString1, *v2, 0))
  {
    v2 += 2;
    if (!--v3)
    {
      result = 0;
      goto LABEL_6;
    }
  }

  result = CFRetain(*(v2 - 1));
LABEL_6:
  if (!result)
  {
    return theString1;
  }

  return result;
}

CFStringRef AMAuthInstallApImg4CopyPayloadType(const __CFAllocator *a1, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = 0;
  if (!cf)
  {
    sub_10005C1B0(a1, 0, a3, a4, a5, a6, a7, a8, v53);
    return 0;
  }

  v10 = CFGetTypeID(cf);
  TypeID = CFDataGetTypeID();
  if (v10 != TypeID)
  {
    sub_10005C0EC(TypeID, v12, v13, v14, v15, v16, v17, v18, v53);
    return 0;
  }

  v57 = 0;
  v58 = 0;
  memset(numBytes, 0, sizeof(numBytes));
  Length = CFDataGetLength(cf);
  BytePtr = CFDataGetBytePtr(cf);
  v20 = DERDecoderInitialize(&Length + 4, BytePtr, &Length, Length);
  if (v20)
  {
    sub_10005C100(v20, v21, v22, v23, v24, v25, v26, v27);
    return 0;
  }

  DataWithTag = DERDecoderGetDataWithTag(&Length + 4, 0, 0x10u, 1, &numBytes[1], numBytes, &v55);
  if (DataWithTag)
  {
    sub_10005C12C(DataWithTag, v29, v30, v31, v32, v33, v34, v35);
    return 0;
  }

  v36 = DERDecoderInitialize(&Length + 4, *&numBytes[1], numBytes, numBytes[0]);
  if (v36)
  {
    sub_10005C158(v36, v37, v38, v39, v40, v41, v42, v43);
    return 0;
  }

  v55 = 1;
  v44 = DERDecoderGetDataWithTag(&Length + 4, 0, 0x16u, 0, &numBytes[1], numBytes, &v55);
  if (v44)
  {
    sub_10005C184(v44, v45, v46, v47, v48, v49, v50, v51);
    return 0;
  }

  return CFStringCreateWithBytes(a1, *&numBytes[1], numBytes[0], 0x8000100u, 0);
}

uint64_t AMAuthInstallApImg4CopyPayloadVersionProperty(const __CFAllocator *a1, const void *a2, int a3, uint64_t *a4)
{
  Length = 0;
  theData = 0;
  v37 = 0;
  BytePtr = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v35 = 0;
  MutableBytePtr = 0;
  v34 = 0;
  if (!a2 || !a4)
  {
    v16 = 0;
    v14 = 0;
    v31 = 0;
    v32 = 0;
    v23 = 1;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v7 = AMAuthInstallApImg4CopyPayload(a1, a2, &theData);
  if (v7)
  {
    v23 = v7;
    v16 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = DERImg4DecodePayload(&BytePtr, &v41);
  if (v8)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayloadVersionProperty", "failed to decode img4 payload, error:%d", v9, v10, v11, v12, v13, v8);
    v16 = 0;
    v14 = 0;
    goto LABEL_24;
  }

  v14 = AMSupportCopyDataFromAsciiEncodedHex();
  if (!v14)
  {
    v16 = 0;
    v23 = 3;
    goto LABEL_10;
  }

  MutableCopy = CFDataCreateMutableCopy(a1, 0, v14);
  v16 = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_19;
  }

  v17 = 1952607602;
  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  v37 = CFDataGetLength(v16);
  if (a3 == 1)
  {
    v17 = 1952607603;
    goto LABEL_12;
  }

  if (a3 == 2)
  {
LABEL_12:
    Img4DecodeGetPayloadVersionPropertyString(&MutableBytePtr, v17 | 0xE000000000000000, &v35, &v34);
    if (!v30)
    {
      v24 = AMSupportCopyDataFromAsciiEncodedHex();
      if (v24)
      {
        v23 = 0;
        goto LABEL_15;
      }

LABEL_19:
      v23 = 2;
      goto LABEL_10;
    }

    AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayloadVersionProperty", "failed to parse version property: %d, error:%d", v25, v26, v27, v28, v29, v17);
LABEL_24:
    v23 = 23;
    goto LABEL_10;
  }

  AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayloadVersionProperty", "unsupported property type: %d\n", v18, v19, v20, v21, v22, a3);
  v23 = 1;
LABEL_10:
  v24 = 0;
LABEL_15:
  *a4 = v24;
  v31 = v16;
  v32 = v14;
LABEL_16:
  SafeRelease(v31);
  SafeRelease(v32);
  SafeRelease(theData);
  return v23;
}

uint64_t sub_10000596C(uint64_t a1, CFDataRef theData, uint64_t a3, uint64_t a4, uint64_t (*a5)(FILE *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v55, 0, sizeof(v55));
  v54 = 0;
  v53 = 0;
  *&__nitems[1] = 0;
  __nitems[0] = 0;
  if (!a1)
  {
    sub_10005C2D8(0, theData, a3, a4, a5, a6, a7, a8, v51);
    v44 = 1;
    goto LABEL_19;
  }

  v8 = a3;
  if (!a3)
  {
    sub_10005C2C4(a1, theData, a3, a4, a5, a6, a7, a8, v51);
LABEL_31:
    v44 = 4;
    goto LABEL_19;
  }

  v12 = a1;
  if (!theData)
  {
    v22 = Img4EncodeIMG4Tag(&v54);
    if (!v22)
    {
      v30 = 0;
      goto LABEL_9;
    }

LABEL_28:
    sub_10005C1F0(v22, v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_35;
  }

  Length = CFDataGetLength(theData);
  v14 = Img4EncodeManifestHeader(Length, &v55[1], v55);
  if (v14)
  {
    sub_10005C1C4(v14, v15, v16, v17, v18, v19, v20, v21);
    goto LABEL_35;
  }

  v22 = Img4EncodeIMG4Tag(&v54);
  if (v22)
  {
    goto LABEL_28;
  }

  LODWORD(v22) = CFDataGetLength(theData);
  v30 = v55[0];
LABEL_9:
  v31 = Img4EncodeImg4Header(v22 + v8 + v30 + v53, &__nitems[1], __nitems);
  if (!v31)
  {
    v39 = AMAuthInstallPlatformOpenFileStreamWithURL();
    if (v39)
    {
      v40 = v39;
      v41 = fwrite(*&__nitems[1], 1uLL, __nitems[0], v39);
      if (v41 == __nitems[0])
      {
        v42 = fwrite(v54, 1uLL, v53, v40);
        if (v42 == v53)
        {
          v43 = a5(v40, a4);
          v44 = v43;
          if (!theData || v43)
          {
            goto LABEL_18;
          }

          v45 = fwrite(*&v55[1], 1uLL, v55[0], v40);
          if (v45 == v55[0])
          {
            BytePtr = CFDataGetBytePtr(theData);
            v47 = CFDataGetLength(theData);
            v48 = fwrite(BytePtr, 1uLL, v47, v40);
            if (v48 == CFDataGetLength(theData))
            {
              v44 = 0;
LABEL_18:
              fclose(v40);
              goto LABEL_19;
            }

            v50 = "failed to stitch manifest to file: %s";
          }

          else
          {
            v50 = "failed to stitch manifest header to file: %s";
          }
        }

        else
        {
          v50 = "failed to write img4 string to dst file: %s";
        }
      }

      else
      {
        v50 = "failed to write header to dst file: %s";
      }

      sub_10005C21C(v50);
      v44 = 4;
      goto LABEL_18;
    }

    sub_10005C274(v12);
    goto LABEL_31;
  }

  sub_10005C1F0(v31, v32, v33, v34, v35, v36, v37, v38);
LABEL_35:
  v44 = 14;
LABEL_19:
  if (*&v55[1])
  {
    free(*&v55[1]);
  }

  if (v54)
  {
    free(v54);
  }

  if (*&__nitems[1])
  {
    free(*&__nitems[1]);
  }

  return v44;
}

uint64_t sub_100005BBC(FILE *a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  return 4 * (fwrite(BytePtr, 1uLL, Length, a1) != Length);
}

uint64_t sub_100005C18(FILE *a1, FILE *a2)
{
  v11 = malloc(0x100000uLL);
  if (v11)
  {
    while (1)
    {
      v12 = fread(v11, 1uLL, 0x100000uLL, a2);
      if (!v12)
      {
        break;
      }

      if (fwrite(v11, 1uLL, v12, a1) != v12)
      {
        sub_10005C2EC();
        v13 = 4;
        goto LABEL_6;
      }
    }

    v13 = 4 * (ferror(a2) != 0);
  }

  else
  {
    sub_10005C348(0, v4, v5, v6, v7, v8, v9, v10, v15);
    v13 = 2;
  }

LABEL_6:
  free(v11);
  return v13;
}

uint64_t AMAuthInstallApImg4StitchRestoreInfoWithAMAI(const __CFString *a1, const void *a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5)
{
  v5 = 0;
  *v44 = 0;
  *v45 = 0;
  v6 = 1;
  if (a2)
  {
    Mutable = 0;
    if (a3)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (a1)
      {
        v12 = &off_1000AA268;
        v13 = 4;
        do
        {
          v14 = *(v12 - 2);
          if (!v14)
          {
            sub_10005C3B4();
          }

          if (CFStringCompare(v14, a1, 0) == kCFCompareEqualTo)
          {
            v15 = *v12;
            if (!**v12)
            {
              sub_10005C388();
            }

            v16 = v15[1];
            if (!v16)
            {
              sub_10005C35C();
            }

            v17 = (v16)(a5, a3);
            if (v17)
            {
              v18 = v17;
              CFDictionarySetValue(Mutable, *v15, v17);
              CFRelease(v18);
            }
          }

          v12 += 3;
          --v13;
        }

        while (v13);
      }

      if (Mutable)
      {
        if (a4)
        {
          CFDictionaryApplyFunction(a4, sub_100005F70, Mutable);
        }

        if (a1)
        {
          v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-TBM", a1);
          if (v5)
          {
            Value = CFDictionaryGetValue(a3, v5);
            if (Value)
            {
              v20 = Value;
              v21 = CFDictionaryGetValue(Value, @"ucon");
              v22 = CFDictionaryGetValue(v20, @"ucer");
              if (v21)
              {
                CFDictionaryAddValue(Mutable, @"ucon", v21);
              }

              if (v22)
              {
                CFDictionaryAddValue(Mutable, @"ucer", v22);
              }
            }
          }
        }

        else
        {
          v5 = 0;
        }

        if (CFDictionaryGetCount(Mutable))
        {
          DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(0, v45, a2);
          if (DataFromMappedFileURL)
          {
            v6 = DataFromMappedFileURL;
            AMAuthInstallLog(3, "AMAuthInstallApImg4StitchRestoreInfoWithAMAI", "failed to read data from %@", v24, v25, v26, v27, v28, a2);
          }

          else
          {
            v29 = AMAuthInstallApImg4EncodeRestoreInfo(*v45, Mutable, v44);
            if (v29)
            {
              v6 = v29;
              sub_10005C3E0(v29, v30, v31, v32, v33, v34, v35, v36);
            }

            else
            {
              v6 = AMAuthInstallSupportWriteDataToFileURL(0, *v44, a2, 1);
              if (v6)
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4StitchRestoreInfoWithAMAI", "failed to write stitched data to %@", v37, v38, v39, v40, v41, a2);
              }
            }
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v5 = 0;
        v6 = 2;
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  SafeRelease(Mutable);
  SafeRelease(*v45);
  SafeRelease(*v44);
  SafeRelease(v5);
  return v6;
}

uint64_t AMAuthInstallApImg4EncodeRestoreInfo(const __CFData *a1, CFDictionaryRef theDict, CFDataRef *a3)
{
  v45[0] = 0;
  v45[1] = 0;
  v44 = 0;
  v43 = 0;
  v41 = 0;
  bytes = 0;
  v39 = 0;
  length = 0;
  v37 = 0;
  v38 = 0;
  if (!a1 || !theDict || (Count = CFDictionaryGetCount(theDict), !a3) || Count < 1)
  {
    Mutable = 0;
    if (!a3)
    {
      v30 = 3;
      v18 = 0;
      goto LABEL_18;
    }

    v18 = 0;
    goto LABEL_31;
  }

  v44 = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  if (DERDecoderInitialize(v45, BytePtr, &v44, v44))
  {
    v29 = "DERDecoderInitialize top level failed";
    goto LABEL_30;
  }

  if (DERDecoderGetDataWithTag(v45, 0, 0x10u, 1, &bytes, &length + 1, &v43))
  {
    v29 = "could not find im4p top level sequence";
    goto LABEL_30;
  }

  if (DERDecoderInitialize(v45, bytes, &length + 1, HIDWORD(length)))
  {
    v29 = "DERDecoderInitialize sequence failed";
    goto LABEL_30;
  }

  v43 = 3;
  EncodingWithTag = DERDecoderGetEncodingWithTag(v45, 2u, 1u, 1, &v41, &length, &v43);
  if (EncodingWithTag)
  {
    if (!AMAuthInstallApImg4EncodeRestoreDict(theDict, &v37))
    {
      Mutable = 0;
      goto LABEL_13;
    }

    v29 = "AMAuthInstallApImg4EncodeRestoreDict failed";
LABEL_30:
    sub_10005C40C(v29, v8, v9, v10, v11, v12, v13, v14);
    Mutable = 0;
    v18 = 0;
    goto LABEL_31;
  }

  HIDWORD(length) -= length;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v38 = Mutable;
  if (!AMAuthInstallApImg4DecodeRestoreInfo(a1, &v38))
  {
    AMSupportCreateMergedDictionary();
    v30 = 0;
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreInfo", "failed to create merged restore Info dictionary", v31, v32, v33, v34, v35, v36);
LABEL_32:
    v18 = 0;
    goto LABEL_18;
  }

  v21 = AMAuthInstallApImg4EncodeRestoreDict(theDict, &v37);
  if (v21)
  {
    v30 = v21;
    sub_10005C434(v21, v22, v23, v24, v25, v26, v27, v28);
    goto LABEL_32;
  }

LABEL_13:
  v17 = CFDataCreateMutable(0, 0);
  v18 = v17;
  if (!v17 || (CFDataAppendBytes(v17, bytes, HIDWORD(length)), CFDataAppendBytes(v18, v37, HIDWORD(v39)), !DEREncoderCreate()))
  {
    if (!EncodingWithTag)
    {
      v30 = 2;
      goto LABEL_18;
    }

LABEL_31:
    *a3 = 0;
    v30 = 3;
    goto LABEL_18;
  }

  CFDataGetBytePtr(v18);
  CFDataGetLength(v18);
  if (DEREncoderAddData() || DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_31;
  }

  v19 = CFDataCreate(0, 0, v39);
  *a3 = v19;
  v30 = 2 * (v19 == 0);
LABEL_18:
  SafeRelease(Mutable);
  SafeFree(v37);
  SafeFree(0);
  SafeRelease(v18);
  DEREncoderDestroy();
  return v30;
}

CFDataRef AMAuthInstallApImg4CreateStitchTicket(const __CFAllocator *a1, const __CFData *a2, const __CFData *a3)
{
  if (!a2)
  {
    a3 = 0;
    v15 = 0;
    goto LABEL_17;
  }

  if (!DEREncoderCreate())
  {
    goto LABEL_23;
  }

  if (CFStringGetCString(@"IMG4", buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    v6 = DEREncoderAddData();
    if (v6)
    {
      sub_10005C460(v6, v7, v8, v9, v10, v11, v12, v13);
      goto LABEL_23;
    }
  }

  if (DEREncoderCreateEncodedBuffer())
  {
LABEL_23:
    a3 = 0;
    v15 = 0;
    goto LABEL_17;
  }

  Mutable = CFDataCreateMutable(a1, 0);
  v15 = Mutable;
  if (!Mutable)
  {
    a3 = 0;
    goto LABEL_17;
  }

  CFDataAppendBytes(Mutable, 0, 0);
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  CFDataAppendBytes(v15, BytePtr, Length);
  if (a3)
  {
    if (!DEREncoderCreate() || (CFDataGetBytePtr(a3), CFDataGetLength(a3), DEREncoderAddData()) || DEREncoderCreateEncodedBuffer())
    {
      a3 = 0;
    }

    else
    {
      v18 = CFDataCreate(a1, 0, 0);
      a3 = v18;
      if (v18)
      {
        v19 = CFDataGetBytePtr(v18);
        v20 = CFDataGetLength(a3);
        CFDataAppendBytes(v15, v19, v20);
        goto LABEL_13;
      }
    }

LABEL_17:
    SafeRelease(0);
    v21 = 0;
    goto LABEL_18;
  }

LABEL_13:
  if (!DEREncoderCreate())
  {
    goto LABEL_17;
  }

  CFDataGetBytePtr(v15);
  CFDataGetLength(v15);
  if (DEREncoderAddDataNoCopy())
  {
    goto LABEL_17;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_17;
  }

  v21 = CFDataCreateWithBytesNoCopy(a1, 0, 0, kCFAllocatorMalloc);
  if (!v21)
  {
    goto LABEL_17;
  }

LABEL_18:
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  SafeFree(0);
  SafeFree(0);
  SafeRelease(v15);
  SafeRelease(a3);
  return v21;
}

BOOL AMAuthInstallApImg4SupportsLocalSigning(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      if (*(v1 + 92))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4GetTagAsInteger(CFStringRef theString)
{
  v4 = 0;
  if (!theString)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = 0; i != 4; ++i)
  {
    if (i == CFStringGetLength(theString))
    {
      break;
    }

    *(&v4 + i) = CFStringGetCharacterAtIndex(theString, i);
  }

  return bswap32(v4);
}

uint64_t AMAuthInstallApImg4AddInteger32Property(uint64_t a1, const __CFString *a2, const __CFNumber *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_17;
  }

  CString = CFStringGetCString(a2, buffer, 256, 0x8000100u);
  if (CString)
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "failed to add %@ string", v11, v12, v13, v14, v15, a2);
      goto LABEL_17;
    }
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "%s: invalid datatype", v16, v17, v18, v19, v20, "AMAuthInstallApImg4AddInteger32Property");
    if (CString)
    {
      v34 = 1;
      goto LABEL_11;
    }

LABEL_17:
    v34 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddInteger32Property");
    goto LABEL_11;
  }

  if (DEREncoderAddUInt32())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "failed to add %@ value", v21, v22, v23, v24, v25, a2);
    goto LABEL_17;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  v26 = DEREncoderAddPrivateFromEncoder();
  if (v26)
  {
    sub_10005C4A0(v26, v27, v28, v29, v30, v31, v32, v33);
    goto LABEL_17;
  }

  v34 = 0;
LABEL_11:
  DEREncoderDestroy();
  return v34;
}

uint64_t AMAuthInstallApImg4AddInteger64Property(uint64_t a1, const __CFString *a2, const __CFNumber *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_17;
  }

  CString = CFStringGetCString(a2, buffer, 256, 0x8000100u);
  if (CString)
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "failed to add %@ string", v11, v12, v13, v14, v15, a2);
      goto LABEL_17;
    }
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "%s: invalid datatype", v16, v17, v18, v19, v20, "AMAuthInstallApImg4AddInteger64Property");
    if (CString)
    {
      v34 = 1;
      goto LABEL_11;
    }

LABEL_17:
    v34 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddInteger64Property");
    goto LABEL_11;
  }

  if (DEREncoderAddUInt64())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "failed to add %@ value", v21, v22, v23, v24, v25, a2);
    goto LABEL_17;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  v26 = DEREncoderAddPrivateFromEncoder();
  if (v26)
  {
    sub_10005C4CC(v26, v27, v28, v29, v30, v31, v32, v33);
    goto LABEL_17;
  }

  v34 = 0;
LABEL_11:
  DEREncoderDestroy();
  return v34;
}

uint64_t AMAuthInstallApImg4AddBooleanProperty(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !DEREncoderCreate())
  {
    goto LABEL_13;
  }

  if (CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddBooleanProperty", "failed to add %@ string", v9, v10, v11, v12, v13, a2);
      goto LABEL_13;
    }
  }

  v14 = DEREncoderAddData();
  if (v14)
  {
    sub_10005C4F8(v14, v15, v16, v17, v18, v19, v20, v21);
LABEL_13:
    v30 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddBooleanProperty", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddBooleanProperty");
    goto LABEL_9;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  v22 = DEREncoderAddPrivateFromEncoder();
  if (v22)
  {
    sub_10005C530(v22, v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_13;
  }

  v30 = 0;
LABEL_9:
  DEREncoderDestroy();
  return v30;
}

uint64_t AMAuthInstallApImg4AddDataProperty(uint64_t a1, const __CFString *a2, const __CFData *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_14;
  }

  if (CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "failed to add %@ string", v10, v11, v12, v13, v14, a2);
      goto LABEL_14;
    }
  }

  CFDataGetBytePtr(a3);
  CFDataGetLength(a3);
  if (DEREncoderAddData())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "failed to add %@ data", v15, v16, v17, v18, v19, a2);
LABEL_14:
    v28 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddDataProperty");
    goto LABEL_10;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  v20 = DEREncoderAddPrivateFromEncoder();
  if (v20)
  {
    sub_10005C55C(v20, v21, v22, v23, v24, v25, v26, v27);
    goto LABEL_14;
  }

  v28 = 0;
LABEL_10:
  DEREncoderDestroy();
  return v28;
}

uint64_t AMAuthInstallApImg4AddDictionaryProperty(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_14;
  }

  if (CFStringGetCString(a3, buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddDictionaryProperty", "failed to add %@ string", v9, v10, v11, v12, v13, a3);
      goto LABEL_14;
    }
  }

  v14 = DEREncoderAddSetFromEncoder();
  if (v14)
  {
    sub_10005C588(v14, v15, v16, v17, v18, v19, v20, v21);
LABEL_14:
    v30 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDictionaryProperty", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddDictionaryProperty");
    goto LABEL_10;
  }

  AMAuthInstallApImg4GetTagAsInteger(a3);
  v22 = DEREncoderAddPrivateFromEncoder();
  if (v22)
  {
    sub_10005C5B4(v22, v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_14;
  }

  v30 = 0;
LABEL_10:
  DEREncoderDestroy();
  return v30;
}

BOOL sub_100006E3C(uint64_t a1, char *__s)
{
  v2 = *a1;
  if (*a1 && (v5 = strlen(__s), *(a1 + 8) == v5))
  {
    return strncmp(v2, __s, v5) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t AMAuthInstallApImg4ValidImage(void *a1)
{
  v1 = a1;
  v18 = 0;
  if (!a1)
  {
    AMSupportCreateErrorInternal();
LABEL_14:
    v15 = 0;
    goto LABEL_17;
  }

  v2 = AMAuthInstallPlatformOpenFileStreamWithURL();
  if (!v2)
  {
    v16 = __error();
    strerror(*v16);
    AMSupportCreateErrorInternal();
    v1 = 0;
    goto LABEL_14;
  }

  v3 = v2;
  v4 = malloc(0x20uLL);
  v1 = v4;
  if (v4)
  {
    v5 = fread(v4, 1uLL, 0x20uLL, v3);
    v11 = v5;
    if (v5 != 32)
    {
      AMAuthInstallLog(4, "AMAuthInstallApImg4ValidImage", "Read %ld bytes out of expected %ld", v6, v7, v8, v9, v10, v5);
    }

    v12 = Img4DecodeParseLengthFromBufferWithTag(v1, v11, 0x494D3450u, &v18);
    v13 = Img4DecodeParseLengthFromBufferWithTag(v1, v11, 0x494D4734u, &v18);
    if (v12)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
  }

  else
  {
    AMSupportCreateErrorInternal();
    v15 = 0;
  }

  fclose(v3);
LABEL_17:
  SafeFree(v1);
  return v15;
}

uint64_t sub_100007058(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  *v8 = 0uLL;
  v5 = DERDecodeSeqContentInit(a1, v8);
  if (v5)
  {
    v6 = v5;
    sub_10005C5E0();
  }

  else
  {
    v11 = *v8;
    v9 = 0;
    v10 = 0uLL;
    while (1)
    {
      v6 = DERDecodeSeqNext(&v11, &v9);
      if (v6)
      {
        break;
      }

      if (v9 == a2)
      {
        *a3 = v10;
        return v6;
      }
    }
  }

  return v6;
}

CFTypeRef sub_1000070E4(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 56)) != 0)
  {
    return CFRetain(v2);
  }

  else
  {
    return 0;
  }
}

CFTypeRef sub_100007104(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 32)) != 0)
  {
    return CFRetain(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000719C()
{

  return AMAuthInstallApImg4ReCreatePayloadWithProperties();
}

uint64_t sub_1000071C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v11 = a2 & 0xFFFFFFFFFFFFLL | 0xE000000000000000;

  return sub_10005BF44(va1, v11, va);
}

void sub_1000071DC(uint64_t a1, const void *a2)
{
  v5 = *v3;

  CFDictionarySetValue(v2, a2, v5);
}

uint64_t sub_1000071F4(uint64_t a1)
{
  result = 0;
  *(*(v1 + 16) + 48) = a1;
  return result;
}

CFDataRef sub_10000721C(uint64_t a1, const UInt8 *a2, CFIndex a3)
{
  v5 = *v3;

  return CFDataCreateWithBytesNoCopy(0, a2, a3, v5);
}

CFComparisonResult sub_100007234(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

CFComparisonResult sub_10000724C(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

uint64_t AMAuthInstallApImg4LocalCreateManifestBody(void *a1, CFTypeRef a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3)
  {
    v170 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "%s DER operation failed", a4, a5, a6, a7, a8, "AMAuthInstallApImg4LocalCreateManifestBody");
    if (!a3)
    {
      v18 = 0;
      goto LABEL_68;
    }

    v18 = 0;
LABEL_85:
    SafeRelease(*a3);
    v170 = 3;
    goto LABEL_68;
  }

  AMAuthInstallDebugWriteObject(a1, a2, @"tss-request", 2);
  v16 = DEREncoderCreate();
  if (!v16)
  {
    v18 = 0;
    goto LABEL_84;
  }

  v17 = CFGetAllocator(a1);
  v18 = CFNumberCreate(v17, kCFNumberIntType, (a1[2] + 84));
  if (!v18)
  {
    goto LABEL_84;
  }

  if (AMAuthInstallApImg4AddInteger32Property(v16, @"CEPO", v18, v11, v12, v13, v14, v15))
  {
    goto LABEL_84;
  }

  Value = CFDictionaryGetValue(a2, @"ApChipID");
  if (Value)
  {
    v20 = Value;
    v21 = CFGetTypeID(Value);
    if (v21 == CFNumberGetTypeID())
    {
      if (AMAuthInstallApImg4AddInteger32Property(v16, @"CHIP", v20, v22, v23, v24, v25, v26))
      {
        goto LABEL_84;
      }
    }
  }

  v27 = CFDictionaryGetValue(a2, @"ApBoardID");
  if (v27)
  {
    v28 = v27;
    v29 = CFGetTypeID(v27);
    if (v29 == CFNumberGetTypeID())
    {
      if (AMAuthInstallApImg4AddInteger32Property(v16, @"BORD", v28, v30, v31, v32, v33, v34))
      {
        goto LABEL_84;
      }
    }
  }

  v35 = CFDictionaryGetValue(a2, @"ApECID");
  if (v35 && (v36 = v35, v37 = CFGetTypeID(v35), v37 == CFNumberGetTypeID()))
  {
    v43 = AMAuthInstallApImg4AddInteger64Property(v16, @"ECID", v36, v38, v39, v40, v41, v42);
    if (v43)
    {
      sub_10005D148(v43, v44, v45, v46, v47, v48, v49, v50, v173);
      goto LABEL_84;
    }

    v51 = 1;
  }

  else
  {
    v51 = 0;
  }

  v52 = CFDictionaryGetValue(a2, @"ApSecurityDomain");
  if (v52)
  {
    v53 = v52;
    v54 = CFGetTypeID(v52);
    if (v54 == CFNumberGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddInteger32Property(v16, @"SDOM", v53, v55, v56, v57, v58, v59);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v61 = CFDictionaryGetValue(a2, @"ApProductionMode");
  v69 = 0;
  if (v61)
  {
    v67 = v61;
    v68 = CFGetTypeID(v61);
    if (v68 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v67))
      {
        v69 = 1;
      }
    }
  }

  v60 = AMAuthInstallApImg4AddBooleanProperty(v16, @"CPRO", v69, v62, v63, v64, v65, v66);
  if (v60)
  {
    goto LABEL_69;
  }

  v70 = CFDictionaryGetValue(a2, @"ApSecurityMode");
  v78 = 0;
  if (v70)
  {
    v76 = v70;
    v77 = CFGetTypeID(v70);
    if (v77 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v76))
      {
        v78 = 1;
      }
    }
  }

  v60 = AMAuthInstallApImg4AddBooleanProperty(v16, @"CSEC", v78, v71, v72, v73, v74, v75);
  if (v60)
  {
    goto LABEL_69;
  }

  v79 = CFDictionaryGetValue(a2, @"ApLocalNonceHash");
  if (v79)
  {
    v80 = v79;
    v81 = CFGetTypeID(v79);
    if (v81 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"LNCH", v80, v82, v83, v84, v85, v86);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v87 = CFDictionaryGetValue(a2, @"ApNonce");
  if (v87)
  {
    v88 = v87;
    v89 = CFGetTypeID(v87);
    if (v89 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"BNCH", v88, v90, v91, v92, v93, v94);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v95 = CFDictionaryGetValue(a2, @"SepNonce");
  if (v95)
  {
    v96 = v95;
    v97 = CFGetTypeID(v95);
    if (v97 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"snon", v96, v98, v99, v100, v101, v102);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v103 = CFDictionaryGetValue(a2, @"ApAllowMixAndMatch");
  if (v103)
  {
    v104 = v103;
    v105 = CFGetTypeID(v103);
    if (v105 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v104))
      {
        v60 = AMAuthInstallApImg4AddBooleanProperty(v16, @"AMNM", 1, v106, v107, v108, v109, v110);
        if (v60)
        {
          goto LABEL_69;
        }
      }
    }
  }

  v111 = CFDictionaryGetValue(a2, @"Ap,NextStageIM4MHash");
  if (v111)
  {
    v112 = v111;
    v113 = CFGetTypeID(v111);
    if (v113 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"nsih", v112, v114, v115, v116, v117, v118);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v119 = CFDictionaryGetValue(a2, @"Ap,RecoveryOSPolicyNonceHash");
  if (v119)
  {
    v120 = v119;
    v121 = CFGetTypeID(v119);
    if (v121 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"ronh", v120, v122, v123, v124, v125, v126);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v127 = CFDictionaryGetValue(a2, @"Ap,VolumeUUID");
  if (v127)
  {
    v128 = v127;
    v129 = CFGetTypeID(v127);
    if (v129 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"vuid", v128, v130, v131, v132, v133, v134);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v135 = CFDictionaryGetValue(a2, @"Ap,LocalBoot");
  if (v135)
  {
    v136 = v135;
    v137 = CFGetTypeID(v135);
    if (v137 == CFBooleanGetTypeID())
    {
      v138 = CFBooleanGetValue(v136);
      v60 = AMAuthInstallApImg4AddBooleanProperty(v16, @"lobo", v138, v139, v140, v141, v142, v143);
      if (v60)
      {
LABEL_69:
        v170 = v60;
        goto LABEL_79;
      }
    }
  }

  v144 = DEREncoderCreate();
  if (!v144)
  {
    goto LABEL_74;
  }

  v145 = AMAuthInstallApImg4AddDictionaryProperty(v16, v144, @"MANP", v11, v12, v13, v14, v15);
  if (v145)
  {
    v170 = v145;
    goto LABEL_79;
  }

  v146 = CFGetAllocator(a1);
  v152 = AMAuthInstallApImg4LocalAddImages(v146, a2, v144, v147, v148, v149, v150, v151);
  if (v152)
  {
    v170 = v152;
    v172 = "failed to add img objects to the manifest body";
LABEL_78:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", v172, v153, v154, v155, v156, v157, v173);
    goto LABEL_79;
  }

  v158 = DEREncoderCreate();
  if (!v158)
  {
LABEL_74:
    v170 = 2;
    goto LABEL_79;
  }

  v159 = AMAuthInstallApImg4AddDictionaryProperty(v144, v158, @"MANB", v11, v12, v13, v14, v15);
  if (v159)
  {
    v170 = v159;
    v172 = "failed to create the signed section";
    goto LABEL_78;
  }

  if (!DEREncoderCreate())
  {
    goto LABEL_74;
  }

  v160 = DEREncoderAddSetFromEncoder();
  if (v160)
  {
    v170 = v160;
LABEL_79:
    if (v51)
    {
      goto LABEL_68;
    }

    goto LABEL_84;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
LABEL_84:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "%s DER operation failed", v11, v12, v13, v14, v15, "AMAuthInstallApImg4LocalCreateManifestBody");
    goto LABEL_85;
  }

  v161 = CFGetAllocator(a1);
  v162 = CFDataCreate(v161, 0, 0);
  *a3 = v162;
  if (v162)
  {
    v170 = 0;
  }

  else
  {
    sub_10005D15C(0, v163, v164, v165, v166, v167, v168, v169);
    v170 = 2;
  }

LABEL_68:
  SafeFree(0);
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  SafeRelease(v18);
  return v170;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedTag(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_10005D1C0(0, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_9;
  }

  v8 = a1;
  CString = CFStringGetCString(a1, &length[4], 256, 0x8000100u);
  if (!CString)
  {
    sub_10005D1F8(CString, v10, v11, v12, v13, v14, v15, v16);
    goto LABEL_9;
  }

  if (!DEREncoderCreate())
  {
LABEL_9:
    SafeRelease(0);
    v30 = 0;
    goto LABEL_7;
  }

  strlen(&length[4]);
  if (DEREncoderAddData())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedTag", "failed to add %@ string", v17, v18, v19, v20, v21, v8);
    goto LABEL_9;
  }

  EncodedBuffer = DEREncoderCreateEncodedBuffer();
  if (EncodedBuffer)
  {
    sub_10005D188(EncodedBuffer, v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_9;
  }

  v30 = CFDataCreate(0, 0, 0);
LABEL_7:
  SafeFree(0);
  DEREncoderDestroy();
  return v30;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedVersion()
{
  bytes = 0;
  if (!DEREncoderCreate())
  {
    goto LABEL_8;
  }

  v0 = DEREncoderAddUInt32();
  if (v0)
  {
    sub_10005D230(v0, v1, v2, v3, v4, v5, v6, v7, 0);
LABEL_8:
    SafeRelease(0);
    v16 = 0;
    goto LABEL_5;
  }

  EncodedBuffer = DEREncoderCreateEncodedBuffer();
  if (EncodedBuffer)
  {
    sub_10005D244(EncodedBuffer, v9, v10, v11, v12, v13, v14, v15);
    goto LABEL_8;
  }

  v16 = CFDataCreate(0, 0, 0);
LABEL_5:
  SafeFree(bytes);
  DEREncoderDestroy();
  return v16;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedData(const __CFData *a1)
{
  if (!DEREncoderCreate())
  {
    goto LABEL_8;
  }

  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  v2 = DEREncoderAddData();
  if (v2)
  {
    sub_10005D27C(v2, v3, v4, v5, v6, v7, v8, v9);
LABEL_8:
    SafeRelease(0);
    v18 = 0;
    goto LABEL_5;
  }

  EncodedBuffer = DEREncoderCreateEncodedBuffer();
  if (EncodedBuffer)
  {
    sub_10005D2B4(EncodedBuffer, v11, v12, v13, v14, v15, v16, v17);
    goto LABEL_8;
  }

  v18 = CFDataCreate(0, 0, 0);
LABEL_5:
  SafeFree(0);
  DEREncoderDestroy();
  return v18;
}

uint64_t _AMAuthInstallApImg4LocalCreateSignedManifest(void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, CFTypeRef *a6, uint64_t a7, uint64_t a8)
{
  LODWORD(length) = 0;
  v111 = 0;
  theData = 0;
  v110 = 0;
  if (!a1 || !a2 || !a6)
  {
    v59 = 3;
    AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "%s failed to create DER file", a4, a5, a6, a7, a8, "_AMAuthInstallApImg4LocalCreateSignedManifest");
    v69 = 0;
    v43 = 0;
    v32 = 0;
    Mutable = 0;
    if (!a6)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

  v10 = a7;
  v15 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v15, 0);
  if (!Mutable)
  {
    v32 = 0;
LABEL_48:
    v43 = 0;
    goto LABEL_38;
  }

  EncodedTag = AMAuthInstallApImg4LocalCreateEncodedTag(@"IM4M", v16, v17, v18, v19, v20, v21, v22);
  v32 = EncodedTag;
  if (!EncodedTag)
  {
    sub_10005D464(0, v25, v26, v27, v28, v29, v30, v31);
    goto LABEL_48;
  }

  BytePtr = CFDataGetBytePtr(EncodedTag);
  v34 = CFDataGetLength(v32);
  CFDataAppendBytes(Mutable, BytePtr, v34);
  EncodedVersion = AMAuthInstallApImg4LocalCreateEncodedVersion();
  v43 = EncodedVersion;
  if (!EncodedVersion)
  {
    sub_10005D42C(0, v36, v37, v38, v39, v40, v41, v42);
    goto LABEL_38;
  }

  cf = a5;
  v44 = CFDataGetBytePtr(EncodedVersion);
  v45 = CFDataGetLength(v43);
  CFDataAppendBytes(Mutable, v44, v45);
  if (a3)
  {
    v51 = CFRetain(a3);
    theData = v51;
    v59 = 99;
    if (v51)
    {
      goto LABEL_9;
    }

LABEL_19:
    sub_10005D400(v51, v52, v53, v54, v55, v56, v57, v58);
    goto LABEL_38;
  }

  ManifestBody = AMAuthInstallApImg4LocalCreateManifestBody(a1, a2, &theData, v46, v47, v48, v49, v50);
  if (ManifestBody)
  {
    sub_10005D2EC(ManifestBody, v52, v53, v54, v55, v56, v57, v58);
    goto LABEL_38;
  }

  v59 = 0;
  v51 = theData;
  if (!theData)
  {
    goto LABEL_19;
  }

LABEL_9:
  v60 = CFDataGetBytePtr(v51);
  v61 = CFDataGetLength(theData);
  CFDataAppendBytes(Mutable, v60, v61);
  if (!v10)
  {
    if (!AMAuthInstallApImg4LocalRegisterKeys(a1, v62, v63, v64, v65, v66, v67, v68))
    {
      if (a4)
      {
        v81 = CFRetain(a4);
        v111 = v81;
        if (v81)
        {
          EncodedData = AMAuthInstallApImg4LocalCreateEncodedData(v81);
          v69 = EncodedData;
          if (EncodedData)
          {
            v92 = CFDataGetBytePtr(EncodedData);
            v93 = CFDataGetLength(v69);
            CFDataAppendBytes(Mutable, v92, v93);
            if (cf)
            {
              v94 = CFRetain(cf);
              v110 = v94;
              if (v94)
              {
LABEL_26:
                v102 = CFDataGetBytePtr(v94);
                v103 = CFDataGetLength(v110);
                CFDataAppendBytes(Mutable, v102, v103);
                v59 = 0;
                goto LABEL_11;
              }
            }

            else
            {
              EncodedCertificateChain = AMAuthInstallApImg4LocalCreateEncodedCertificateChain(a1, &v110);
              if (EncodedCertificateChain)
              {
                sub_10005D318(EncodedCertificateChain, v95, v96, v97, v98, v99, v100, v101);
                goto LABEL_39;
              }

              v94 = v110;
              if (v110)
              {
                goto LABEL_26;
              }
            }

            sub_10005D370(v94, v95, v96, v97, v98, v99, v100, v101);
          }

          else
          {
            sub_10005D39C(0, v85, v86, v87, v88, v89, v90, v91);
          }

LABEL_39:
          AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "%s failed to create DER file", v18, v19, v20, v21, v22, "_AMAuthInstallApImg4LocalCreateSignedManifest");
LABEL_40:
          SafeRelease(*a6);
          *a6 = 0;
          v59 = 3;
          goto LABEL_16;
        }

        goto LABEL_36;
      }

      v104 = *(a1[2] + 128);
      if (v104 != 384)
      {
        if (v104 == 256)
        {
          v106 = a1[49];
          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          if (AMAuthInstallCryptoCreateRsaSignature_SHA256())
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v104 != 1)
          {
            AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "Unsupported digest type: %d", v18, v19, v20, v21, v22, *(a1[2] + 128));
            goto LABEL_38;
          }

          v105 = a1[49];
          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          if (AMAuthInstallCryptoCreateRsaSignature())
          {
            goto LABEL_38;
          }
        }

        goto LABEL_35;
      }

      v107 = a1[49];
      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
      if (!AMAuthInstallCryptoCreateRsaSignature_SHA384())
      {
LABEL_35:
        v81 = v111;
LABEL_36:
        sub_10005D3D4(v81, v82, v83, v18, v19, v20, v21, v22);
      }
    }

LABEL_38:
    v69 = 0;
    goto LABEL_39;
  }

  v69 = 0;
LABEL_11:
  if (!DEREncoderCreate())
  {
    goto LABEL_39;
  }

  CFDataGetBytePtr(Mutable);
  CFDataGetLength(Mutable);
  if (DEREncoderAddData() || DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_39;
  }

  v70 = CFGetAllocator(a1);
  v71 = CFDataCreate(v70, 0, length);
  *a6 = v71;
  if (!v71)
  {
    sub_10005D344(0, v72, v73, v74, v75, v76, v77, v78);
    v59 = 2;
  }

LABEL_16:
  SafeRelease(Mutable);
  SafeRelease(v32);
  SafeRelease(v43);
  SafeRelease(theData);
  SafeRelease(v111);
  SafeRelease(v69);
  SafeRelease(v110);
  SafeFree(0);
  DEREncoderDestroy();
  return v59;
}

uint64_t sub_100008098()
{

  return AMAuthInstallCryptoRegisterKeysFromPEMBuffer();
}

uint64_t AMAuthInstallBasebandApplyTssOverrides(const void *a1, __CFDictionary *a2, CFTypeRef cf, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  data = 0;
  v60 = a2;
  error = 0;
  if (!a1)
  {
    sub_10005FBF4(0, a2, cf, a4, a5, a6, a7, a8, v57);
LABEL_16:
    v17 = 0;
    v19 = 0;
    v18 = 1;
    goto LABEL_12;
  }

  if (!a2)
  {
    sub_10005FBE0(a1, 0, cf, a4, a5, a6, a7, a8, v57);
    goto LABEL_16;
  }

  if (!cf)
  {
    sub_10005FBCC(a1, a2, 0, a4, a5, a6, a7, a8, v57);
    goto LABEL_16;
  }

  v9 = BbfwReaderOpen(cf);
  v17 = v9;
  if (!v9)
  {
    sub_10005FBB8(0, v10, v11, v12, v13, v14, v15, v16, v57);
    v19 = 0;
    v18 = 4;
    goto LABEL_12;
  }

  if (BbfwReaderFindAndCopyFileData(v9, @"Options.plist", &data))
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_12;
  }

  v20 = CFGetAllocator(a1);
  v21 = CFPropertyListCreateWithData(v20, data, 0, 0, &error);
  v19 = v21;
  if (!v21)
  {
    sub_10005FB7C(&error, v22, v23, v24, v25, v26, v27, v28);
LABEL_20:
    v18 = 0;
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(v21, @"TssOverrides");
  if (!Value)
  {
    sub_10005FB50(0, v30, v31, v32, v33, v34, v35, v36);
    goto LABEL_20;
  }

  v37 = Value;
  v38 = CFGetAllocator(a1);
  v39 = AMAuthInstallSupportApplyDictionaryOverrides(v38, v37, &v60, @"Bb");
  if (v39)
  {
    v18 = v39;
    sub_10005FAF8(v39, v40, v41, v42, v43, v44, v45, v46);
  }

  else
  {
    v47 = CFGetAllocator(a1);
    v48 = AMAuthInstallSupportApplyDictionaryOverrides(v47, v37, &v60, @"FDR");
    v18 = v48;
    if (v48)
    {
      sub_10005FB24(v48, v49, v50, v51, v52, v53, v54, v55);
    }
  }

LABEL_12:
  SafeRelease(v19);
  SafeRelease(data);
  SafeRelease(error);
  BbfwReaderClose(v17);
  return v18;
}

CFComparisonResult AMAuthInstallBasebandGetTagForKeyHashName(uint64_t a1, CFStringRef theString2, __CFString **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_10005FC30(0, theString2, a3, a4, a5, a6, a7, a8, v14);
    return 1;
  }

  if (!theString2)
  {
    sub_10005FC1C(a1, 0, a3, a4, a5, a6, a7, a8, v14);
    return 1;
  }

  if (!a3)
  {
    sub_10005FC08(a1, theString2, 0, a4, a5, a6, a7, a8, v14);
    return 1;
  }

  if (CFStringCompare(@"BbProvisioningManifestKeyHash", theString2, 0))
  {
    result = CFStringCompare(@"BbActivationManifestKeyHash", theString2, 0);
    if (result)
    {
      result = CFStringCompare(@"BbCalibrationManifestKeyHash", theString2, 0);
      if (result)
      {
        result = CFStringCompare(@"BbFactoryActivationManifestKeyHash", theString2, 0);
        if (result)
        {
          result = CFStringCompare(@"BbFDRSecurityKeyHash", theString2, 0);
          if (result)
          {
            return 8;
          }

          v13 = kAMAuthInstallTagBbFDRSecurityKeyHash;
        }

        else
        {
          v13 = kAMAuthInstallTagBbFactoryActivationKeyHash;
        }
      }

      else
      {
        v13 = kAMAuthInstallTagBbCalibrationKeyHash;
      }
    }

    else
    {
      v13 = kAMAuthInstallTagBbActivationKeyHash;
    }
  }

  else
  {
    v12 = *(a1 + 48);
    if (v12 && *(v12 + 4) != 80)
    {
      result = kCFCompareEqualTo;
      v13 = kAMAuthInstallTagBbProvisioningKeyHash;
    }

    else
    {
      result = kCFCompareEqualTo;
      v13 = kAMAuthInstallTagBbSKeyId;
    }
  }

  *a3 = *v13;
  return result;
}

uint64_t sub_100008374(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  value = 0;
  v5 = BbfwReaderCopyFileData(a3, &value);
  if (v5)
  {
    AMAuthInstallGetLocalizedStatusString(0, v5);
    AMAuthInstallLog(3, "_AddFirmware", "failed to extract bbfw item %@: %@; continuing anyway", v11, v12, v13, v14, v15, a2);
  }

  else if (value)
  {
    CFDictionarySetValue(v4, a2, value);
  }

  else
  {
    AMAuthInstallLog(4, "_AddFirmware", "failed to add %@; ignoring it", v6, v7, v8, v9, v10, a2);
  }

  SafeRelease(value);
  return 1;
}

void _AMAuthInstallBasebandParametersFinalize(CFTypeRef *a1)
{
  if (a1)
  {
    SafeRelease(a1[2]);
    SafeRelease(a1[3]);
    SafeRelease(a1[4]);
    SafeRelease(a1[5]);
    SafeRelease(a1[8]);
    SafeRelease(a1[9]);
    SafeRelease(a1[13]);
    SafeRelease(a1[14]);
    SafeRelease(a1[15]);
    SafeRelease(a1[16]);
    SafeRelease(a1[17]);
    SafeRelease(a1[18]);
    SafeRelease(a1[19]);
    SafeRelease(a1[21]);

    free(a1);
  }
}

uint64_t AMAuthInstallBasebandGetKeyHash(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(*(a1 + 200), a2);
      result = 0;
      *a3 = Value;
      return result;
    }

    sub_10005FC44(a1, a2, 0, a4, a5, a6, a7, a8, v11);
  }

  else
  {
    sub_10005FC58(0, a2, a3, a4, a5, a6, a7, a8, v11);
  }

  return 1;
}

__CFString *AMAuthInstallBasebandCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 256);
  CFStringAppend(Mutable, @"(");
  if (*(a1 + 58))
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  CFStringAppendFormat(Mutable, 0, @"personalize=%s", v4);
  if (*(a1 + 48))
  {
    CFStringAppendFormat(Mutable, 0, @", ");
    if (*(*(a1 + 48) + 16))
    {
      v5 = CFGetAllocator(a1);
      v6 = _CopyHexStringFromData(v5, *(*(a1 + 48) + 16));
      if (v6)
      {
        v7 = v6;
        CFStringAppendFormat(Mutable, 0, @"snum=0x%@, ", v6);
        CFRelease(v7);
      }
    }

    CFStringAppendFormat(Mutable, 0, @"chipid=0x%x, certid=0x%x", *(*(a1 + 48) + 4), *(*(a1 + 48) + 8));
    if (*(*(a1 + 48) + 24))
    {
      v8 = CFGetAllocator(a1);
      v9 = _CopyHexStringFromData(v8, *(*(a1 + 48) + 24));
      if (v9)
      {
        v10 = v9;
        CFStringAppendFormat(Mutable, 0, @", nonce=0x%@", v9);
        CFRelease(v10);
      }
    }
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

void sub_100008678(CFStringRef theString, const __CFData *a2, CFErrorRef *a3)
{
  if (!*a3)
  {
    v5 = BbfwWriterAddFile(a3[1], theString, a2);
    if (v5)
    {
      v6 = v5;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v8 = Mutable;
        v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"BbfwWriterAddFile failed to add file: %@. Error code: %d", theString, v6);
        if (v9)
        {
          v10 = v9;
          CFDictionarySetValue(v8, kCFErrorDescriptionKey, v9);
          CFRelease(v10);
        }

        *a3 = CFErrorCreate(kCFAllocatorDefault, @"AuthInstallErrorDomain", v6, v8);
        AMAuthInstallLog(3, "_AddToArchive", "failed to archive %@", v11, v12, v13, v14, v15, theString);

        CFRelease(v8);
      }

      else
      {
        *a3 = CFErrorCreate(kCFAllocatorDefault, @"AuthInstallErrorDomain", v6, 0);
        AMAuthInstallLog(3, "_AddToArchive", "failed to archive %@", v16, v17, v18, v19, v20, theString);
      }
    }
  }
}

void sub_100008908(__CFDictionary *a1)
{

  CFDictionarySetValue(a1, v2, v1);
}

uint64_t sub_100008920(const __CFAllocator *a1, uint64_t a2, unint64_t a3, CFDataRef *a4, CFStringRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    sub_100060E94();
  }

  if (!a5)
  {
    sub_100060E68();
  }

  v23 = 0uLL;
  v24 = 0;
  if (a3 < 0x50 || *(a2 + 4) != 1430808940 || (v9 = *(a2 + 12), (v9 + 1) <= 1))
  {
    v10 = "PSI Image does not contain recognizable PSI header";
LABEL_7:
    AMAuthInstallLog(3, "_AMAuthInstallCopyPsiMeasurementAndVersion", v10, a4, a5, a6, a7, a8, v20);
    return 10;
  }

  if ((*(a2 + 10) & 1) == 0)
  {
    AMAuthInstallLog(3, "_AMAuthInstallCopyPsiMeasurementAndVersion", "missing SN indicator", a4, a5, a6, a7, a8, v20);
    return 1;
  }

  v12 = *(a2 + 20);
  if ((v12 & 0x3F) != 0)
  {
    v10 = "GPuK is not properly aligned for partial digest";
    goto LABEL_7;
  }

  *bytes = *(a2 + 40) - v12;
  v22 = v12;
  *&v15 = sub_100009230(a2, v12, &v23).u64[0];
  v16 = CFStringCreateWithFormat(a1, 0, @"0x%08x", v15, v9);
  if (v16)
  {
    v17 = v16;
    v18 = CFDataCreate(a1, bytes, 28);
    if (v18)
    {
      v19 = v18;
      result = 0;
      *a5 = v17;
      *a4 = v19;
      return result;
    }

    CFRelease(v17);
  }

  return 2;
}

uint64_t sub_100008AA8(const __CFAllocator *a1, void *data, CC_LONG len, CFDataRef *a4)
{
  CC_SHA1(data, len, md);
  v6 = CFDataCreate(a1, md, 20);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  result = 0;
  *a4 = v7;
  return result;
}

uint64_t AMAuthInstallBasebandICE3StitchModemStack(uint64_t a1, CFTypeRef cf, uint64_t a3, CFTypeRef *a4)
{
  if (*(*(a1 + 48) + 24))
  {
    *a4 = CFRetain(cf);
  }

  return 0;
}

unint64_t AMAuthInstallBasebandICE3MeasureWorld(const void *a1, CFDataRef theData, __CFDictionary *a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = CFDataGetLength(theData);
  memset(v98, 0, sizeof(v98));
  memset(v97, 0, sizeof(v97));
  if (!result)
  {
    return result;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  cf = 0;
  value = 0;
  do
  {
    v20 = &BytePtr[v13];
    v21 = *&BytePtr[v13];
    if (v21 <= 15)
    {
      if (v21 == 12)
      {
        v22 = v20[2];
        if (v22 > 4)
        {
LABEL_39:
          AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureWorld", "UID value of %ld exceeds maximum array bound of %d\n", v8, v9, v10, v11, v12, v22);
          return 10;
        }

        v24 = v20[7];
        v25 = &v98[v22];
        *v25 = &BytePtr[v20[9]];
        v25[1] = v24;
      }

      else if (v21 == 15)
      {
        v22 = v20[2];
        if (v22 > 4)
        {
          goto LABEL_39;
        }

        v23 = &v97[v22];
        *v23 = v20 + 131;
        v23[1] = 1536;
      }
    }

    else
    {
      switch(v21)
      {
        case 16:
          v14 = v20[3];
          v15 = &BytePtr[v20[5]];
          break;
        case 19:
          v19 = &BytePtr[v20[7]];
          v18 = v20[5];
          break;
        case 18:
          v16 = &BytePtr[v20[7]];
          v17 = v20[5];
          break;
      }
    }

    v13 += v20[1];
  }

  while (v13 < result);
  v94 = 0;
  if (!v16)
  {
    goto LABEL_20;
  }

  v26 = CFGetAllocator(a1);
  result = sub_100008920(v26, v16, v17, &cf, &value, v27, v28, v29);
  if (!result)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "RamPSI Version: %@", v30, v31, v32, v33, v34, value);
    CFDictionarySetValue(a3, @"RamPSI-Version", value);
    CFRelease(value);
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "RamPSI PartialDigest: %@", v35, v36, v37, v38, v39, cf);
    CFDictionarySetValue(a3, @"RamPSI-PartialDigest", cf);
    CFRelease(cf);
LABEL_20:
    if (v19)
    {
      v40 = CFGetAllocator(a1);
      result = sub_100008AA8(v40, v19, v18, &v94);
      if (!result)
      {
        v46 = v94;
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "EBL Digest: %@", v41, v42, v43, v44, v45, v94);
        CFDictionarySetValue(a3, @"EBL-Digest", v46);
        CFRelease(v46);
        goto LABEL_23;
      }

      return result;
    }

LABEL_23:
    if (!v14)
    {
      return 0;
    }

    v47 = v14;
    for (i = v15 + 4; ; i += 36)
    {
      v49 = *(i - 1);
      v50 = &v98[v49];
      v51 = *v50;
      if (!*v50 || (v52 = &v97[v49], (v53 = *v52) == 0))
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureWorld", "one or more elements are missing for TOC with UID = %lx\n", v8, v9, v10, v11, v12, *(i - 1));
        return 10;
      }

      if (*i == 4)
      {
        break;
      }

      if (*i == 2)
      {
        v54 = CFGetAllocator(a1);
        result = sub_100008920(v54, v51, *(v50 + 1), &cf, &value, v55, v56, v57);
        if (result)
        {
          return result;
        }

        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "FlashPSI Version: %@", v58, v59, v60, v61, v62, value);
        CFDictionarySetValue(a3, @"FlashPSI-Version", value);
        CFRelease(value);
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "FlashPSI PartialDigest: %@", v63, v64, v65, v66, v67, cf);
        CFDictionarySetValue(a3, @"FlashPSI-PartialDigest", cf);
        CFRelease(cf);
        v68 = CFGetAllocator(a1);
        result = sub_100008AA8(v68, v53, *(v52 + 1), &v94);
        if (result)
        {
          return result;
        }

        v74 = v94;
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "FlashPSI SecPack Digest: %@", v69, v70, v71, v72, v73, v94);
        v75 = a3;
        v76 = @"FlashPSI-SecPackDigest";
LABEL_36:
        CFDictionarySetValue(v75, v76, v74);
        CFRelease(v74);
      }

      result = 0;
      if (!--v47)
      {
        return result;
      }
    }

    v77 = CFGetAllocator(a1);
    v78 = *(v50 + 1);
    result = sub_100008AA8(v77, v51, v78, &v94);
    if (result)
    {
      return result;
    }

    v84 = v94;
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "Modem Stack Digest: %@", v79, v80, v81, v82, v83, v94);
    CFDictionarySetValue(a3, @"ModemStack-Digest", v84);
    CFRelease(v84);
    v85 = CFGetAllocator(a1);
    v86 = CFStringCreateWithFormat(v85, 0, @"0x%08lx", v78);
    if (!v86)
    {
      return 2;
    }

    v87 = v86;
    CFDictionarySetValue(a3, @"ModemStack-Length", v86);
    CFRelease(v87);
    v88 = CFGetAllocator(a1);
    result = sub_100008AA8(v88, v53, *(v52 + 1), &v94);
    if (result)
    {
      return result;
    }

    v74 = v94;
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "Modem Stack SecPack Digest: %@", v89, v90, v91, v92, v93, v94);
    v75 = a3;
    v76 = @"ModemStack-SecPackDigest";
    goto LABEL_36;
  }

  return result;
}

uint64_t AMAuthInstallBasebandCreatePersonalizedPsiData(const void *a1, const __CFData *a2, const __CFData *a3, __CFData **a4)
{
  v7 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v7, 0, a2);
  v9 = MutableCopy;
  if (MutableCopy)
  {
    Length = CFDataGetLength(MutableCopy);
    v11 = CFDataGetLength(a3);
    CFDataSetLength(v9, Length - v11);
    BytePtr = CFDataGetBytePtr(a3);
    v13 = CFDataGetLength(a3);
    CFDataAppendBytes(v9, BytePtr, v13);
    v14 = 0;
    if (a4)
    {
      *a4 = v9;
      v9 = 0;
    }
  }

  else
  {
    v14 = 2;
  }

  SafeRelease(v9);
  return v14;
}

uint64_t AMAuthInstallBasebandCreatePersonalizedTicketPlusEblData(CFTypeRef cf, const __CFData *a2, const __CFData *a3, __CFData **a4)
{
  result = 1;
  if (a2 && a3 && a4)
  {
    v9 = CFGetAllocator(cf);
    MutableCopy = CFDataCreateMutableCopy(v9, 0, a3);
    if (MutableCopy)
    {
      v11 = MutableCopy;
      Length = CFDataGetLength(MutableCopy);
      CFDataAppendBytes(v11, byte_1000848C3, -Length & 3);
      BytePtr = CFDataGetBytePtr(a2);
      v14 = CFDataGetLength(a2);
      CFDataAppendBytes(v11, BytePtr, v14);
      result = 0;
      *a4 = v11;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

int8x16_t sub_100009230(const void *a1, CC_LONG a2, int8x16_t *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, a1, a2);
  result = vrev32q_s8(*&v7.h0);
  *a3 = result;
  a3[1].i32[0] = bswap32(v7.h4);
  return result;
}

uint64_t sub_1000092A8(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v6, a2, v2, v3, v5, v4);
}

uint64_t sub_1000092CC(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v6, a3, v3, v4, v5);
}

void sub_100009308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  AMAuthInstallLog(6, v9, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_100009320(uint64_t a1, const void *a2, uint64_t a3)
{

  return AMAuthInstallDebugWriteObject(v3, a2, a3, 1);
}

uint64_t sub_100009358(const void *a1, uint64_t a2, uint64_t a3)
{

  return AMAuthInstallDebugWriteObject(a1, v3, a3, 1);
}

uint64_t sub_100009370()
{

  return FlsParserReadFromData(v0, v1);
}

uint64_t sub_1000093A4(uint64_t a1, const __CFString *a2, uint64_t (*a3)(uint64_t, CFTypeRef, uint64_t, void **))
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, a2, a3, v3, v5, v4);
}

uint64_t sub_1000093DC(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v5, a2, v6, v2, v4, v3);
}

uint64_t sub_100009400(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t (*a4)(uint64_t, CFTypeRef, uint64_t))
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v6, a3, a4, v4, v5);
}

uint64_t AMAuthInstallBasebandN41SupportsLocalSigning(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  v9 = *v8;
  v10 = v8[2];
  v11 = v9 == 3 && v10 == 398790697;
  v12 = v11;
  if (v11)
  {
    v13 = "local signing is enabled";
  }

  else
  {
    v15 = v9;
    v13 = "local signing is disabled. vendorID=%d certID=%d";
  }

  AMAuthInstallLog(3, "AMAuthInstallBasebandN41SupportsLocalSigning", v13, a4, a5, a6, a7, a8, v15);
  return v12;
}

uint64_t sub_100009514(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v6, a3, v3, v4, v5);
}

uint64_t AMAuthInstallIsICE19BBGoldCertIDECDSA(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMAuthInstallLog(6, "AMAuthInstallIsICE19BBGoldCertIDECDSA", "GoldCertId: %X\n", a4, a5, a6, a7, a8, a1);
  v9 = a1 == 653523660 || a1 == 1559424078;
  return a1 == -2087094182 || v9;
}

uint64_t AMAuthInstallBasebandRembrandtSupportsServerSigning(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 4) - 94;
  if (v1 > 0xA)
  {
    return 0;
  }

  else
  {
    return byte_1000848C7[v1];
  }
}

uint64_t sub_100009668(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureSystemSoftware, v3, v4);
}

uint64_t sub_100009698(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v5, a2, AMAuthInstallRembrandtCreateStitchedPSI, v2, v4, v3);
}

uint64_t sub_1000096C8(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureEBL, v3, v4);
}

uint64_t sub_1000096F8(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureRestorePSI, v3, v4);
}

uint64_t sub_100009728(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasurePSI, v3, v4);
}

uint64_t sub_100009758(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureBBCFG, v3, v4);
}

uint64_t sub_100009788(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v5, a2, AMAuthInstallRembrandtCreateStitchedRestorePSI, v2, v4, v3);
}

uint64_t sub_1000097B8(uint64_t a1, const __CFString *a2, uint64_t (*a3)(uint64_t, CFTypeRef, uint64_t, void **))
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v6, a2, a3, v3, v5, v4);
}

uint64_t sub_1000097D8(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(0, v6, a3, v3, v4, v5);
}

uint64_t sub_1000097FC(uint64_t a1, CFStringRef theString, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  value = 0;
  if (!a1 || !*a1 || !theString || !a3 || !*(a1 + 8))
  {
    sub_10006359C(a1, theString, a3, a4, a5, a6, a7, a8, v23);
LABEL_15:
    v21 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 16) && !CFStringHasPrefix(theString, @"vinyl"))
  {
    return 1;
  }

  if (BbfwReaderFindAndCopyFileData(a3, theString, &value))
  {
    AMAuthInstallLog(3, "_VinylBBFWReaderCB", "Failed copying %@ %d", v11, v12, v13, v14, v15, theString);
    goto LABEL_15;
  }

  CFDictionarySetValue(*(a1 + 8), theString, value);
  AMAuthInstallLog(3, "_VinylBBFWReaderCB", "Vinyl copied %@", v16, v17, v18, v19, v20, theString);
  v21 = 1;
LABEL_10:
  SafeRelease(value);
  return v21;
}

void AMAuthInstallBundleFinalize(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    SafeRelease(*v1);
    SafeRelease(*(*(a1 + 128) + 8));
    SafeRelease(*(*(a1 + 128) + 16));
    SafeRelease(*(*(a1 + 128) + 24));
    SafeRelease(*(*(a1 + 128) + 32));
    SafeRelease(*(*(a1 + 128) + 40));
    SafeFree(*(a1 + 128));
    *(a1 + 128) = 0;
  }
}

uint64_t AMAuthInstallBundleCopyPublishedVariantsArray(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  v26 = 0;
  DictionaryFromFileURL = AMAuthInstallPlatformCopyURLWithAppendedComponent(a1, a2, @"BuildManifest.plist", 0, &v26);
  if (DictionaryFromFileURL || AMAuthInstallSupportCreateDictionaryFromFileURL() && ((AMAuthInstallLog(3, "AMAuthInstallBundleCopyPublishedVariantsArray", "No build manifest. Checking for a different file.", v9, v10, v11, v12, v13, v25), SafeRelease(v26), v26 = 0, DictionaryFromFileURL = AMAuthInstallPlatformCopyURLWithAppendedComponent(a1, a2, @"BuildManifesto.plist", 0, &v26), DictionaryFromFileURL) || (DictionaryFromFileURL = AMAuthInstallSupportCreateDictionaryFromFileURL(), DictionaryFromFileURL)))
  {
    v7 = DictionaryFromFileURL;
  }

  else
  {
    Value = CFDictionaryGetValue(0, @"BuildIdentities");
    if (Value)
    {
      v7 = 0;
      *a3 = CFRetain(Value);
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBundleCopyPublishedVariantsArray", "the specified restore bundle contains a malformed build manifest", v15, v16, v17, v18, v19, v25);
      AMAuthInstallLog(8, "AMAuthInstallBundleCopyPublishedVariantsArray", "bundle: %@", v20, v21, v22, v23, v24, a2);
      v7 = 1;
    }
  }

  SafeRelease(v26);
  SafeRelease(0);
  return v7;
}

CFBooleanRef sub_100009AD8(uint64_t a1, CFStringRef theString1)
{
  v2 = kCFBooleanFalse;
  if (theString1)
  {
    v3 = *(a1 + 496);
    if (v3)
    {
      if (CFStringCompare(theString1, v3, 0) == kCFCompareEqualTo)
      {
        return kCFBooleanTrue;
      }
    }
  }

  return v2;
}

const __CFDictionary *sub_100009B34(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"Info");
  if (result)
  {

    return CFDictionaryGetValue(result, @"Path");
  }

  return result;
}

void _AMAuthInstallBundleNormalizeOverridePaths(const void *a1, const __CFString *a2, CFMutableDictionaryRef *a3)
{
  v5 = CFURLCreateWithFileSystemPath(0, a2, kCFURLPOSIXPathStyle, 0);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(*a3, a1, v5);

    CFRelease(v6);
  }
}

void _AMAuthInstallBundleNormalizeOverrideURLs(const void *a1, CFURLRef anURL, CFMutableDictionaryRef *a3)
{
  v5 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(*a3, a1, v5);

    CFRelease(v6);
  }
}

uint64_t _AMAuthInstallBundlePopulatePersonalizedBundle(_BYTE *a1, const void *a2, const void *a3, int a4, const __CFDictionary *a5, CFURLRef a6, CFDictionaryRef theDict, const __CFArray *a8, CFArrayRef theArray, CFArrayRef a10, CFBooleanRef BOOLean)
{
  v11 = 0;
  context = 0;
  v358 = 0;
  v355 = 0;
  v356 = 0;
  Code = 1;
  if (!a1 || !a2 || !a3 || !a5)
  {
LABEL_252:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_201;
  }

  v13 = theDict;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (!theDict)
  {
    goto LABEL_201;
  }

  v20 = CFDictionaryGetValue(theDict, @"CumulativeResponse");
  if (v20)
  {
    v26 = v20;
    v361[0] = 0;
    if (!a6)
    {
      AMAuthInstallLog(7, "_AMAuthInstallBundlePopulatePersonalizedBundle", "replaced NULL response dictionary with cumulative response", v21, v22, v23, v24, v25, v324);
      a6 = v26;
      goto LABEL_14;
    }

    CFGetAllocator(a1);
    MergedDictionary = AMSupportCreateMergedDictionary();
    if (MergedDictionary)
    {
      Code = MergedDictionary;
      AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "could not create merged response dictionary", v28, v29, v30, v31, v32, v324);
      v11 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_201;
    }

    CFDictionarySetValue(v13, @"CumulativeResponse", v361[0]);
    a6 = v361[0];
    SafeRelease(v361[0]);
    v38 = "created merged response dictionary";
    goto LABEL_12;
  }

  if (a1[435])
  {
    CFDictionarySetValue(v13, @"CumulativeResponse", a6);
    v38 = "caching response dictionary on skipped install";
LABEL_12:
    AMAuthInstallLog(7, "_AMAuthInstallBundlePopulatePersonalizedBundle", v38, v33, v34, v35, v36, v37, v324);
  }

LABEL_14:
  if (CFBooleanGetValue(BOOLean))
  {
    v13 = CFDictionaryGetValue(v13, @"RecoveryOS");
    if (!v13)
    {
      v11 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      Code = 8;
      goto LABEL_201;
    }
  }

  v39 = CFDictionaryGetValue(v13, @"Personalized");
  v40 = CFDictionaryGetValue(v13, @"Manifest");
  v41 = CFDictionaryGetValue(v13, @"Linked");
  v42 = CFDictionaryGetValue(v13, @"Alignment");
  v11 = 0;
  Code = 8;
  v342 = v39;
  if (!v39 || !v40)
  {
    goto LABEL_252;
  }

  v348 = v40;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (!v41)
  {
    goto LABEL_201;
  }

  v341 = v42;
  v353 = CFDictionaryGetValue(a5, @"Manifest");
  if (!v353)
  {
    sub_100069CCC(0, v43, v44, v45, v46, v47, v48, v49);
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    Code = 7;
    goto LABEL_201;
  }

  v340 = v13;
  v354 = a1;
  v15 = 0;
  v345 = v41;
  v346 = a8;
  theDicta = a6;
  v16 = 0;
  if (a8 && a6)
  {
    if (!a1[435])
    {
      Count = CFArrayGetCount(a8);
      if (Count >= 1)
      {
        v101 = Count;
        v16 = 0;
        v15 = 0;
        v102 = 0;
        allocator = kCFAllocatorDefault;
        v337 = @"Blob";
        key = @"UniqueBuildID";
        v339 = @"ProductMarketingVersion";
        v347 = Count;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a8, v102);
          if (!ValueAtIndex)
          {
            sub_100069CA0();
          }

          v104 = ValueAtIndex;
          if (CFStringFind(ValueAtIndex, @"RecoveryOS", 0).location == -1)
          {
            v105 = kCFBooleanFalse;
          }

          else
          {
            v105 = kCFBooleanTrue;
          }

          v106 = CFBooleanGetValue(v105);
          v107 = CFBooleanGetValue(BOOLean);
          if (v106)
          {
            if (!v107)
            {
              goto LABEL_114;
            }

            SafeRelease(v16);
            v108 = CFGetAllocator(v354);
            v104 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v108, v104);
            v16 = v104;
          }

          else if (v107)
          {
            goto LABEL_114;
          }

          v109 = CFDictionaryGetValue(v353, v104);
          if (v109)
          {
            v115 = v109;
            if (CFStringCompare(v104, @"BasebandFirmware", 0) == kCFCompareEqualTo)
            {
              v129 = *(v354 + 48);
              if (v129 && *(v129 + 160))
              {
                v130 = CFDictionaryGetValue(a5, key);
                if (v130)
                {
                  v131 = v130;
                  v132 = CFGetAllocator(v354);
                  Mutable = CFDictionaryCreateMutable(v132, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                  v15 = Mutable;
                  if (!Mutable)
                  {
                    goto LABEL_260;
                  }

                  CFDictionarySetValue(Mutable, key, v131);
                }

                v134 = *(v354 + 16);
                if (*(v134 + 136) || *(v134 + 144))
                {
                  v135 = CFDictionaryGetValue(a5, v339);
                  if (v135)
                  {
                    v136 = v135;
                    if (!v15)
                    {
                      v137 = CFGetAllocator(v354);
                      v15 = CFDictionaryCreateMutable(v137, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      if (!v15)
                      {
LABEL_260:
                        v11 = 0;
                        v14 = 0;
                        goto LABEL_261;
                      }
                    }

                    CFDictionarySetValue(v15, v339, v136);
                  }
                }
              }

              Code = sub_10006420C(v354, v115, a6, v353, a2, a3, v342, v15);
              a8 = v346;
              if (Code)
              {
LABEL_211:
                AMAuthInstallGetLocalizedStatusString(v354, Code);
                AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to install %@ in personalized bundle: %@", v282, v283, v284, v285, v286, v104);
                v11 = 0;
                v14 = 0;
                goto LABEL_201;
              }

              goto LABEL_113;
            }

            v360 = 0;
            v361[0] = 0;
            if (!v104)
            {
              v128 = 0;
              Code = 1;
              goto LABEL_97;
            }

            v116 = CFGetAllocator(v354);
            v326 = @"Personalize";
            ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v116, v115, @"%@.%@", v117, v118, v119, v120, v121, @"Info");
            if (ValueForKeyWithFormat && !CFBooleanGetValue(ValueForKeyWithFormat))
            {
              AMAuthInstallLog(7, "_AMAuthInstallBundleInstallPersonalizedEntry", "entry %@ does not require personalization; skipping it", v123, v124, v125, v126, v127, v104);
              if (CFDictionaryContainsKey(a6, v104))
              {
                CFDictionarySetValue(v348, v104, v115);
              }

              v128 = 0;
              Code = 0;
LABEL_97:
              a8 = v346;
LABEL_98:
              SafeRelease(v361[0]);
              SafeRelease(v128);
              SafeRelease(v360);
              SafeRelease(0);
              SafeRelease(0);
              if (Code)
              {
                goto LABEL_211;
              }

LABEL_113:
              v101 = v347;
              goto LABEL_114;
            }

            v138 = CFBooleanGetValue(BOOLean);
            v139 = sub_1000695F8(v354, v104, v115, a2, a3, 1, v138, &v360, v325, @"Personalize", v327, v328, pathComponent, v330, value, v332, v333, v334, theString, allocator, v337, key, v339, v340, v341, v342, v343, v345);
            if (v139)
            {
              Code = v139;
              AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedEntry", "failed to copy bundle URLs for %@", v140, v141, v142, v143, v144, v104);
              v128 = 0;
              goto LABEL_97;
            }

            v343 = v15;
            v145 = CFDictionaryGetValue(v360, @"SourceURL");
            v146 = CFDictionaryGetValue(v360, @"DestURL");
            v147 = CFDictionaryGetValue(v360, @"RelativeSrcPath");
            v148 = CFDictionaryGetValue(v360, @"RelativeDestPath");
            v334 = v145;
            if (v145 || v146 || v147 || v148)
            {
              theString = v148;
              if (CFDictionaryContainsKey(v348, v104))
              {
                AMAuthInstallLog(7, "_AMAuthInstallBundleInstallPersonalizedEntry", "entry %@ has been previously personalized; skipping it", v149, v150, v151, v152, v153, v104);
                v128 = 0;
                goto LABEL_124;
              }

              v332 = v147;
              v333 = v146;
              DirectoryForURL = AMAuthInstallPlatformMakeDirectoryForURL(v146);
              if (DirectoryForURL)
              {
                Code = DirectoryForURL;
                sub_100069A18(v354, DirectoryForURL);
                v128 = 0;
                goto LABEL_125;
              }

              v155 = CFGetAllocator(v354);
              Code = 2;
              DeepCopy = CFPropertyListCreateDeepCopy(v155, v115, 2uLL);
              v128 = DeepCopy;
              if (!DeepCopy)
              {
LABEL_125:
                v15 = v343;
                goto LABEL_97;
              }

              v157 = CFDictionaryGetValue(DeepCopy, @"Info");
              if (v157)
              {
                v163 = v157;
                v169 = CFDictionaryGetValue(v157, @"Path");
                if (v169 && CFDictionaryContainsKey(v348, v169))
                {
                  v326 = v169;
                  AMAuthInstallLog(7, "_AMAuthInstallBundleInstallPersonalizedEntry", "entry %@ has been previously personalized as part of %@; skipping it", v164, v165, v166, v167, v168, v104);
LABEL_124:
                  Code = 0;
                  goto LABEL_125;
                }

                pathComponent = v169;
                value = v128;
                HIDWORD(v330) = _CFDictionaryGetBoolean(v163, @"IsFTAB", 0, v164, v165, v166, v167, v168);
                v170 = CFGetAllocator(v354);
                PrependedFilePath = AMAuthInstallSupportCreatePrependedFilePath(v170, v104, theString, v361);
                if (PrependedFilePath)
                {
                  Code = PrependedFilePath;
                  sub_100069A54(PrependedFilePath, v172, v173, v174, v175, v176, v177, v178);
                  v15 = v343;
                  goto LABEL_167;
                }

                CFDictionarySetValue(v163, @"PersonalizedPath", v361[0]);
                v179 = CFDictionaryGetValue(a6, v104);
                if (v179)
                {
                  v187 = v179;
                  TypeID = CFDictionaryGetTypeID();
                  if (TypeID == CFGetTypeID(v187))
                  {
                    if (CFDictionaryContainsKey(v187, v337))
                    {
                      Code = AMAuthInstallApImg3PersonalizeWithEntryName(v354, v334, v333, v104, v115, a6);
                      v15 = v343;
                      if (Code)
                      {
                        sub_100069A8C(v354, Code);
LABEL_167:
                        a8 = v346;
                        v128 = value;
                        goto LABEL_98;
                      }

LABEL_149:
                      v128 = value;
                      CFDictionarySetValue(v348, v104, value);
                      sub_10000BA10(v41, v332);
                      goto LABEL_97;
                    }
                  }
                }

                v189 = v163;
                v15 = v343;
                if (AMAuthInstallApIsImg4(v354, v180, v181, v182, v183, v184, v185, v186) && CFDictionaryGetValue(a6, *(v354 + 88)) && HIDWORD(v330))
                {
                  v197 = CFURLCreateCopyAppendingPathComponent(allocator, a3, pathComponent, 0);
                  a8 = v346;
                  v128 = value;
                  if (v197)
                  {
                    v205 = AMAuthInstallApFtabStitchTicketData(v354, v334, v197, a6);
                    Code = v205;
                    if (v205)
                    {
                      sub_100069AC8(v205, v206, v207, v208, v209, v210, v211, v212);
                    }

                    else
                    {
                      CFDictionarySetValue(v348, pathComponent, value);
                      sub_10000BA10(v41, v332);
                    }
                  }

                  else
                  {
                    sub_100069B00(0, v198, v199, v200, v201, v202, v203, v204);
                    Code = 2;
                  }

                  goto LABEL_98;
                }

                a8 = v346;
                if (AMAuthInstallApIsImg4(v354, v190, v191, v192, v193, v194, v195, v196) && CFDictionaryGetValue(a6, *(v354 + 88)) && !HIDWORD(v330))
                {
                  v213 = CFDictionaryGetValue(v189, @"Img4PayloadType");
                  v214 = AMAuthInstallApImg4StitchTicketData(v354, v213, v334, v333, a6);
                  if (v214)
                  {
                    Code = v214;
                    sub_100069B2C(v214, v215, v216, v217, v218, v219, v220, v221);
                    goto LABEL_167;
                  }

                  Code = AMAuthInstallApImg4StitchRestoreInfoWithAMAI(v104, v333, a6, 0, v354);
                  if (Code)
                  {
                    AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedEntry", "failed to stitch restore info to %@", v222, v223, v224, v225, v226, v333);
                    goto LABEL_167;
                  }

                  goto LABEL_149;
                }

                v359 = 0;
                v227 = AMAuthInstallSupportFileURLExists(v333, &v359);
                if (v227)
                {
                  Code = v227;
                }

                else
                {
                  v128 = value;
                  if (v359)
                  {
LABEL_152:
                    Code = 0;
                    goto LABEL_98;
                  }

                  v228 = AMAuthInstallBundleInstallFile(v354, v333, v334);
                  if (!v228)
                  {
                    CFArrayAppendValue(v41, v332);
                    goto LABEL_152;
                  }

                  Code = v228;
                  sub_100069B58(v354, v228);
                }

                v15 = v343;
                v41 = v345;
                goto LABEL_167;
              }

              v326 = v104;
              AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedEntry", "%s: no personalized entry for %@", v158, v159, v160, v161, v162, "_AMAuthInstallBundleInstallPersonalizedEntry");
            }

            else
            {
              v128 = 0;
            }

            Code = 8;
            goto LABEL_125;
          }

          AMAuthInstallLog(6, "_AMAuthInstallBundlePopulatePersonalizedBundle", "no entry in manifest found for %@", v110, v111, v112, v113, v114, v104);
          a8 = v346;
LABEL_114:
          if (v101 == ++v102)
          {
            goto LABEL_24;
          }
        }
      }
    }

    v15 = 0;
    v16 = 0;
  }

LABEL_24:
  v344 = v15;
  if (!theArray)
  {
    v50 = v354;
    goto LABEL_51;
  }

  v50 = v354;
  if (*(v354 + 435) || (v51 = CFArrayGetCount(theArray), v51 < 1))
  {
LABEL_51:
    v363.length = CFArrayGetCount(v346);
    v363.location = 0;
    if (CFArrayContainsValue(v346, v363, @"BasebandFirmware") || *(v50 + 435))
    {
      v11 = 0;
      v14 = 0;
      goto LABEL_54;
    }

    LOBYTE(v361[0]) = 0;
    v251 = CFGetAllocator(v50);
    v14 = AMAuthInstallSupportGetValueForKeyWithFormat(v251, a5, @"%@.%@.%@.%@", v252, v253, v254, v255, v256, @"Manifest");
    if (!v14)
    {
      v11 = 0;
      goto LABEL_54;
    }

    v257 = CFDictionaryGetValue(**(v50 + 128), @"BasebandFirmware");
    if (v257)
    {
      v11 = CFRetain(v257);
    }

    else
    {
      v276 = CFGetAllocator(v50);
      v11 = CFURLCreateCopyAppendingPathComponent(v276, a2, v14, 0);
      if (!v11)
      {
        v14 = 0;
        goto LABEL_266;
      }
    }

    v277 = CFGetAllocator(v50);
    v278 = AMAuthInstallSupportCreatePrependedFilePath(v277, @"BasebandFirmware", v14, &v358);
    if (v278)
    {
      Code = v278;
      goto LABEL_199;
    }

    v279 = CFGetAllocator(v50);
    v280 = CFURLCreateCopyAppendingPathComponent(v279, a3, v358, 0);
    v14 = v280;
    if (v280)
    {
      SoftLink = AMAuthInstallSupportFileURLExists(v280, v361);
      if (SoftLink || !LOBYTE(v361[0]) && ((SoftLink = AMAuthInstallSupportFileURLExists(v11, v361), SoftLink) || LOBYTE(v361[0]) && (SoftLink = AMAuthInstallPlatformCreateSoftLink(v14, v11), SoftLink)))
      {
        Code = SoftLink;
        goto LABEL_200;
      }

LABEL_54:
      if (a10)
      {
        v88 = CFArrayGetCount(a10);
        if (v88 >= 1)
        {
          v89 = v88;
          v90 = 0;
          while (1)
          {
            v91 = CFArrayGetValueAtIndex(a10, v90);
            if (!v91)
            {
              sub_100069C48();
            }

            v92 = v91;
            v364.length = CFArrayGetCount(v41);
            v364.location = 0;
            if (!CFArrayContainsValue(v41, v364, v92))
            {
              v360 = 0;
              v361[0] = 0;
              v365.length = CFArrayGetCount(v41);
              v365.location = 0;
              if (CFArrayContainsValue(v41, v365, v92))
              {
                Code = 0;
              }

              else
              {
                v93 = CFGetAllocator(v354);
                v94 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v93, a2, v92, 0, v361);
                if (v94 || (v95 = CFGetAllocator(v354), v94 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v95, a3, v92, 0, &v360), v94) || (v94 = AMAuthInstallPlatformMakeDirectoryForURL(v360), v94))
                {
                  Code = v94;
                }

                else
                {
                  Code = AMAuthInstallBundleInstallFile(v354, v360, v361[0]);
                  if (!Code)
                  {
                    CFArrayAppendValue(v41, v92);
                  }
                }
              }

              SafeRelease(v361[0]);
              SafeRelease(v360);
              if (Code)
              {
                break;
              }
            }

            if (v89 == ++v90)
            {
              goto LABEL_70;
            }
          }

          AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to install link in personalized bundle: %@", v83, v84, v85, v86, v87, v92);
          goto LABEL_200;
        }
      }

LABEL_70:
      v15 = v344;
      v96 = v354;
      if (theDicta && !*(v354 + 32))
      {
        IsImg4 = AMAuthInstallApIsImg4(v354, v81, v82, v83, v84, v85, v86, v87);
        v98 = IsImg4 ? @"amai/apimg4ticket.der" : @"amai/apticket.der";
        if (IsImg4)
        {
          v99 = *(*(v354 + 16) + 132) ? kAMAuthInstallTagX86Img4Ticket : (v354 + 88);
        }

        else
        {
          v99 = kAMAuthInstallTagApTicket;
        }

        v229 = *v99;
        v366.length = CFArrayGetCount(v342);
        v366.location = 0;
        if (!CFArrayContainsValue(v342, v366, v98))
        {
          v247 = CFDictionaryGetValue(theDicta, v229);
          if (v247)
          {
            v248 = v247;
            v249 = CFGetAllocator(v354);
            v250 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v249, a3, v98, 0, &v355);
            if (v250)
            {
              Code = v250;
              v241 = "failed to create an AP ticket URL";
              goto LABEL_187;
            }

            v258 = CFGetAllocator(v354);
            v259 = AMAuthInstallSupportWriteDataToFileURL(v258, v248, v355, 1);
            if (v259)
            {
              Code = v259;
              AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to write the AP ticket", v260, v261, v262, v263, v264, v324);
              AMAuthInstallLog(8, "_AMAuthInstallBundlePopulatePersonalizedBundle", "%@", v265, v266, v267, v268, v269, v355);
              goto LABEL_201;
            }

            CFArrayAppendValue(v342, v98);
          }
        }
      }

      if (!(*(v354 + 448))(v354, a3, theDicta, &v356))
      {
        AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to write updater manifests: %@", v230, v231, v232, v233, v234, v356);
        if (v356)
        {
          Code = CFErrorGetCode(v356);
        }

        else
        {
          Code = 4;
        }

        goto LABEL_201;
      }

      if (v341)
      {
        goto LABEL_173;
      }

      v361[0] = 0;
      v242 = CFGetAllocator(v354);
      v244 = CFDictionaryCreateMutable(v242, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!v244)
      {
        v245 = 0;
        v246 = 0;
        Code = 2;
LABEL_182:
        SafeRelease(v244);
        SafeRelease(v246);
        SafeRelease(v361[0]);
        if (Code)
        {
          LOBYTE(v324) = AMAuthInstallGetLocalizedStatusString(v354, Code);
          v241 = "_AMAuthInstallCreateAlignmentDictionary failed: %@";
          goto LABEL_187;
        }

        CFDictionarySetValue(v340, @"Alignment", v245);
        CFRelease(v245);
        v96 = v354;
LABEL_173:
        if (CFDictionaryGetCount(*v96[16]) >= 1)
        {
          v235 = CFGetAllocator(v96);
          context = CFDictionaryCreateMutable(v235, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (!context)
          {
LABEL_261:
            Code = 2;
            goto LABEL_201;
          }

          CFDictionaryApplyFunction(*v96[16], _AMAuthInstallBundleNormalizeOverrideURLs, &context);
          CFDictionarySetValue(v340, @"Overrides", context);
        }

        Code = AMAuthInstallBundleWriteReceipt(v96, a3, v340, BOOLean);
        if (!Code)
        {
          goto LABEL_201;
        }

        LOBYTE(v324) = AMAuthInstallGetLocalizedStatusString(v96, Code);
        v241 = "failed to write receipt: %@";
LABEL_187:
        AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", v241, v236, v237, v238, v239, v240, v324);
        goto LABEL_201;
      }

      RelativePathForManifestEntry = _CreateRelativePathForManifestEntry(v354, v243, a3, v353, @"iBSS");
      if (RelativePathForManifestEntry)
      {
        v289 = RelativePathForManifestEntry;
        v290 = @"RELEASE";
        if (CFStringFind(RelativePathForManifestEntry, @"RELEASE", 0).location != -1 || (v290 = @"DEVELOPMENT", CFStringFind(v289, @"DEVELOPMENT", 0).location != -1) || (v290 = @"DEBUG", CFStringFind(v289, @"DEBUG", 0).location != -1))
        {
          CFDictionarySetValue(v244, @"DFUFileType", v290);
        }

        SafeRelease(v289);
      }

      v291 = _CreateRelativePathForManifestEntry(v354, v288, a3, v353, @"OS");
      if (v291)
      {
        v293 = v291;
        CFDictionarySetValue(v244, @"OS", v291);
        SafeRelease(v293);
      }

      v294 = _CreateRelativePathForManifestEntry(v354, v292, a3, v353, @"RestoreKernelCache");
      if (v294)
      {
        v246 = v294;
        v296 = CFGetAllocator(v354);
        v297 = AMAuthInstallSupportCreatePrependedFilePath(v296, @"RestoreKernelCache", v246, v361);
        if (v297)
        {
          goto LABEL_267;
        }

        if (v361[0])
        {
          CFDictionarySetValue(v244, @"RestoreKernelCache", v361[0]);
          SafeRelease(v361[0]);
          v361[0] = 0;
        }

        SafeRelease(v246);
      }

      v305 = _CreateRelativePathForManifestEntry(v354, v295, a3, v353, @"KernelCache");
      if (v305)
      {
        v246 = v305;
        v307 = CFGetAllocator(v354);
        v297 = AMAuthInstallSupportCreatePrependedFilePath(v307, @"KernelCache", v246, v361);
        if (v297)
        {
          goto LABEL_267;
        }

        if (v361[0])
        {
          CFDictionarySetValue(v244, @"KernelCache", v361[0]);
          SafeRelease(v361[0]);
          v361[0] = 0;
        }

        SafeRelease(v246);
      }

      v308 = _CreateRelativePathForManifestEntry(v354, v306, a3, v353, @"RestoreRamDisk");
      if (v308)
      {
        v310 = v308;
        CFDictionarySetValue(v244, @"RestoreRamDisk", v308);
        SafeRelease(v310);
      }

      v311 = _CreateRelativePathForManifestEntry(v354, v309, a3, v353, @"OSRamdisk");
      if (v311)
      {
        v313 = v311;
        CFDictionarySetValue(v244, @"OSRamdisk", v311);
        SafeRelease(v313);
      }

      v314 = _CreateRelativePathForManifestEntry(v354, v312, a3, v353, @"RestoreDeviceTree");
      if (v314)
      {
        v246 = v314;
        v316 = CFGetAllocator(v354);
        v297 = AMAuthInstallSupportCreatePrependedFilePath(v316, @"RestoreDeviceTree", v246, v361);
        if (v297)
        {
          goto LABEL_267;
        }

        if (v361[0])
        {
          CFDictionarySetValue(v244, @"RestoreDeviceTree", v361[0]);
          v317 = sub_10000C090(kCFAllocatorDefault, v246);
          if (v317)
          {
            v318 = v317;
            CFDictionarySetValue(v244, @"AllFlash", v317);
            CFRelease(v318);
          }

          SafeRelease(v361[0]);
          v361[0] = 0;
        }

        SafeRelease(v246);
      }

      v319 = _CreateRelativePathForManifestEntry(v354, v315, a3, v353, @"DeviceTree");
      if (!v319)
      {
LABEL_247:
        v322 = _CreateRelativePathForManifestEntry(v354, v320, a3, v353, @"Diags");
        if (v322)
        {
          v323 = v322;
          CFDictionarySetValue(v244, @"Diags", v322);
          SafeRelease(v323);
        }

        v245 = CFRetain(v244);
        v246 = 0;
        Code = 0;
        goto LABEL_182;
      }

      v246 = v319;
      v321 = CFGetAllocator(v354);
      v297 = AMAuthInstallSupportCreatePrependedFilePath(v321, @"DeviceTree", v246, v361);
      if (!v297)
      {
        if (v361[0])
        {
          CFDictionarySetValue(v244, @"DeviceTree", v361[0]);
          SafeRelease(v361[0]);
          v361[0] = 0;
        }

        SafeRelease(v246);
        goto LABEL_247;
      }

LABEL_267:
      Code = v297;
      sub_100069C74(v297, v298, v299, v300, v301, v302, v303, v304);
      v245 = 0;
      goto LABEL_182;
    }

LABEL_266:
    Code = 2;
    goto LABEL_200;
  }

  v52 = v51;
  v53 = 0;
  while (1)
  {
    v54 = CFArrayGetValueAtIndex(theArray, v53);
    if (!v54)
    {
      sub_100069C1C();
    }

    v55 = v54;
    v56 = CFStringFind(v54, @"RecoveryOS", 0).location == -1 ? kCFBooleanFalse : kCFBooleanTrue;
    v57 = CFBooleanGetValue(v56);
    v58 = CFBooleanGetValue(BOOLean);
    if (v57)
    {
      break;
    }

    if (!v58)
    {
      goto LABEL_36;
    }

LABEL_45:
    if (v52 == ++v53)
    {
      goto LABEL_51;
    }
  }

  if (!v58)
  {
    goto LABEL_45;
  }

  SafeRelease(v16);
  v59 = CFGetAllocator(v50);
  v16 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v59, v55);
  v55 = v16;
LABEL_36:
  v60 = CFDictionaryGetValue(v353, v55);
  if (!v60)
  {
    AMAuthInstallLog(6, "_AMAuthInstallBundlePopulatePersonalizedBundle", "no entry in manifest found for %@", v61, v62, v63, v64, v65, v55);
    goto LABEL_45;
  }

  v361[0] = 0;
  if (!v55)
  {
    Code = 1;
    goto LABEL_198;
  }

  v66 = v60;
  v67 = CFBooleanGetValue(v56);
  v68 = sub_1000695F8(v50, v55, v66, a2, a3, 0, v67, v361, v324, v326, v327, v328, pathComponent, v330, value, v332, v333, v334, theString, allocator, v337, key, v339, v340, v341, v342, v344, v345);
  if (v68)
  {
    Code = v68;
    AMAuthInstallLog(3, "_AMAuthInstallBundleInstallLinkedEntry", "failed to copy bundle URLs for %@", v69, v70, v71, v72, v73, v55);
    goto LABEL_198;
  }

  v74 = v16;
  v75 = CFDictionaryGetValue(v361[0], @"SourceURL");
  v76 = CFDictionaryGetValue(v361[0], @"DestURL");
  v77 = CFDictionaryGetValue(v361[0], @"RelativeSrcPath");
  v78 = v77;
  if (!v75 && !v76 && !v77)
  {
    Code = 8;
    goto LABEL_257;
  }

  v362.length = CFArrayGetCount(v345);
  v362.location = 0;
  if (CFArrayContainsValue(v345, v362, v78))
  {
LABEL_43:
    SafeRelease(v361[0]);
    v16 = v74;
    v50 = v354;
    v41 = v345;
    goto LABEL_45;
  }

  v79 = AMAuthInstallPlatformMakeDirectoryForURL(v76);
  if (v79)
  {
    Code = v79;
    sub_100069BD8(v79);
    goto LABEL_257;
  }

  v80 = AMAuthInstallBundleInstallFile(v354, v76, v75);
  if (!v80)
  {
    CFArrayAppendValue(v345, v78);
    goto LABEL_43;
  }

  Code = v80;
  sub_100069B94(v80);
LABEL_257:
  v16 = v74;
LABEL_198:
  SafeRelease(v361[0]);
  AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to install link for %@ in personalized bundle", v270, v271, v272, v273, v274, v55);
  v11 = 0;
LABEL_199:
  v14 = 0;
LABEL_200:
  v15 = v344;
LABEL_201:
  SafeRelease(v11);
  SafeRelease(v14);
  SafeRelease(v358);
  SafeRelease(context);
  SafeRelease(v356);
  SafeRelease(v355);
  SafeRelease(v15);
  SafeRelease(v16);
  return Code;
}

CFStringRef AMAuthInstallICreateTranslationOfRecoveryEnteryName(const __CFAllocator *a1, CFStringRef theString)
{
  v4 = CFStringFind(theString, @"RecoveryOS", 0);
  if (v4.location == -1)
  {

    return CFStringCreateCopy(a1, theString);
  }

  else
  {
    Length = CFStringGetLength(theString);
    v6.length = Length - CFStringGetLength(@"RecoveryOS");
    v6.location = v4.length;

    return CFStringCreateWithSubstring(a1, theString, v6);
  }
}

uint64_t AMAuthInstallBundleCreatePersonalizedPathWithKey(const void *a1, CFStringRef theString1, const __CFString *a3, const __CFURL **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  anURL = 0;
  if (!a1 || !a3 || !a4)
  {
    Copy = 0;
    v25 = 0;
    v15 = 0;
    v26 = 1;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (theString1)
  {
    v11 = CFStringCompare(theString1, @"BasebandFirmware", 0) == kCFCompareEqualTo;
  }

  else
  {
    v11 = 0;
  }

  IsImg4 = AMAuthInstallApIsImg4(a1, theString1, a3, a4, a5, a6, a7, a8);
  v13 = CFGetAllocator(a1);
  if (v11 || !IsImg4)
  {
    Copy = CFStringCreateCopy(v13, a3);
    v26 = 0;
    v25 = 0;
    v15 = 0;
    goto LABEL_15;
  }

  Copy = CFURLCreateWithFileSystemPath(v13, a3, kCFURLPOSIXPathStyle, 0);
  v15 = Copy;
  if (!Copy)
  {
    goto LABEL_19;
  }

  v16 = CFGetAllocator(a1);
  v17 = AMAuthInstallApImg4CopyURLAddingExtension(v16, v15, &anURL);
  if (v17)
  {
    v26 = v17;
    sub_100069D0C(v17, v18, v19, v20, v21, v22, v23, v24);
    Copy = 0;
    v25 = 0;
    goto LABEL_15;
  }

  Copy = anURL;
  if (!anURL)
  {
LABEL_19:
    v25 = 0;
    goto LABEL_20;
  }

  Copy = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  v25 = Copy;
  if (!Copy)
  {
LABEL_20:
    v26 = 2;
    goto LABEL_15;
  }

  Copy = CFRetain(Copy);
  v26 = 0;
LABEL_15:
  *a4 = Copy;
LABEL_16:
  SafeRelease(v15);
  SafeRelease(0);
  SafeRelease(anURL);
  SafeRelease(v25);
  return v26;
}

const __CFString *sub_10000B538(void *a1)
{
  if (AMAuthInstallPreferencesGetBooleanValue(0, @"BAAForceEnable", 0))
  {
    AMAuthInstallEnableManagedRequest(a1, 0, v2, v3, v4, v5, v6, v7);
  }

  result = AMAuthInstallPreferencesGetBooleanValue(0, @"AlternateUpdateBAAForceEnable", 0);
  if (result)
  {

    return AMAuthInstallEnableAlternateUpdateRequest(a1, 0, v9, v10, v11, v12, v13, v14);
  }

  return result;
}

char *_AMAuthInstallBundleCreateDebugDirectory(CFTypeRef *a1, const void *a2)
{
  SafeRelease(a1[42]);
  v4 = CFGetAllocator(a1);
  v5 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v4, a2, @"amai/debug", 1u, a1 + 42);
  if (v5)
  {
    v6 = v5;
    LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v5);
    AMAuthInstallLog(3, "_AMAuthInstallBundleCreateDebugDirectory", "failed to create debug directory within bundle: %@", v8, v9, v10, v11, v12, LocalizedStatusString);
    AMAuthInstallLog(8, "_AMAuthInstallBundleCreateDebugDirectory", "bundle: %@", v13, v14, v15, v16, v17, a2);
    return v6;
  }

  else
  {
    v19 = a1[42];

    return AMAuthInstallPlatformMakeDirectoryForURL(v19);
  }
}

uint64_t sub_10000B68C(uint64_t a1, CFDictionaryRef theDict, const __CFArray *a3, __CFArray *a4)
{
  BOOLean = kCFBooleanFalse;
  Value = CFDictionaryGetValue(theDict, @"Info");
  if (Value)
  {
    v7 = CFDictionaryGetValue(Value, @"Variant");
    if (v7)
    {
      v8 = *(a1 + 496);
      if (v8)
      {
        v9 = CFStringCompare(v7, v8, 0);
        v10 = kCFBooleanFalse;
        if (v9 == kCFCompareEqualTo)
        {
          v10 = kCFBooleanTrue;
        }

        BOOLean = v10;
      }
    }
  }

  v11 = CFDictionaryGetValue(theDict, @"Manifest");
  if (v11)
  {
    v12 = v11;
    Count = CFDictionaryGetCount(v11);
    v14 = malloc(8 * Count);
    v15 = malloc(8 * Count);
    CFDictionaryGetKeysAndValues(v12, v14, v15);
    if (Count >= 1)
    {
      v87 = a4;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v19 = v14[v17];
        v20 = v15[v17];
        v21 = CFGetTypeID(v20);
        TypeID = CFDictionaryGetTypeID();
        if (v21 != TypeID)
        {
          sub_100069D38(TypeID, v23, v24, v25, v26, v27, v28, v29, v86);
          v84 = 99;
          goto LABEL_33;
        }

        v30 = CFDictionaryGetValue(v20, @"Info");
        if (v30)
        {
          v36 = v30;
          v37 = _CFDictionaryGetBoolean(v30, @"IsFirmwarePayload", 0, v31, v32, v33, v34, v35);
          v43 = _CFDictionaryGetBoolean(v36, @"IsSecondaryFirmwarePayload", 0, v38, v39, v40, v41, v42) | v37;
          v49 = _CFDictionaryGetBoolean(v36, @"IsFUDFirmware", 0, v44, v45, v46, v47, v48);
          v55 = v43 | v49 | _CFDictionaryGetBoolean(v36, @"IsLoadedByiBoot", 0, v50, v51, v52, v53, v54);
          v61 = _CFDictionaryGetBoolean(v36, @"IsEarlyAccessFirmware", 0, v56, v57, v58, v59, v60);
          v67 = v61 | _CFDictionaryGetBoolean(v36, @"IsiBootEANFirmware", 0, v62, v63, v64, v65, v66);
          v78 = v55 | v67 | _CFDictionaryGetBoolean(v36, @"IsiBootNonEssentialFirmware", 0, v68, v69, v70, v71, v72);
          v79 = *(a1 + 528);
          if (v79)
          {
            v78 |= _CFDictionaryGetBoolean(v79, v19, 0, v73, v74, v75, v76, v77);
          }

          if (v78)
          {
            SafeRelease(v18);
            if (CFBooleanGetValue(BOOLean))
            {
              v86 = v19;
              Copy = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"RecoveryOS%@");
            }

            else
            {
              Copy = CFStringCreateCopy(kCFAllocatorDefault, v19);
            }

            v18 = Copy;
            v91.length = CFArrayGetCount(a3);
            v91.location = 0;
            if (CFArrayContainsValue(a3, v91, v18))
            {
              if (v16)
              {
                goto LABEL_28;
              }
            }

            else
            {
              CFArrayAppendValue(a3, v18);
              if (v16)
              {
                goto LABEL_28;
              }
            }

            v81 = CFDictionaryGetValue(v36, @"Path");
            if (v81)
            {
              v82 = sub_10000C090(kCFAllocatorDefault, v81);
              if (!v82)
              {
                v16 = 0;
LABEL_35:
                v84 = 2;
                goto LABEL_33;
              }

              v83 = v82;
              v86 = v82;
              v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/manifest");
              CFRelease(v83);
              if (!v16)
              {
                goto LABEL_35;
              }

              if (v87)
              {
                CFArrayAppendValue(v87, v16);
              }
            }

            else
            {
              v16 = 0;
            }
          }
        }

LABEL_28:
        if (Count == ++v17)
        {
          goto LABEL_32;
        }
      }
    }

    v18 = 0;
    v16 = 0;
LABEL_32:
    v84 = 0;
  }

  else
  {
    v18 = 0;
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v84 = 7;
  }

LABEL_33:
  SafeFree(v14);
  SafeFree(v15);
  SafeRelease(v16);
  SafeRelease(v18);
  return v84;
}

void sub_10000BA10(const __CFArray *a1, const void *a2)
{
  v6.length = CFArrayGetCount(a1);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a1, v6, a2);
  if ((FirstIndexOfValue & 0x8000000000000000) == 0)
  {

    CFArrayRemoveValueAtIndex(a1, FirstIndexOfValue);
  }
}

uint64_t AMAuthInstallBundleShouldPersonalizeOSImage(uint64_t a1, char *a2, const __CFString *a3)
{
  if (!a1)
  {
    sub_100069E78();
    return 0;
  }

  if (!a2)
  {
    sub_100069E3C();
    return 0;
  }

  ManifestEntry = AMAuthInstallBundleGetManifestEntry(a1, @"Manifest", a3, a2);
  if (!ManifestEntry)
  {
    sub_100069E00();
    return 0;
  }

  Value = CFDictionaryGetValue(ManifestEntry, @"OS");
  if (!Value)
  {
    sub_100069DC4();
    return 0;
  }

  v5 = CFDictionaryGetValue(Value, @"Info");
  if (!v5)
  {
    sub_100069D88();
    return 0;
  }

  v6 = CFDictionaryGetValue(v5, @"Personalize");
  if (!v6)
  {
    sub_100069D4C();
    return 0;
  }

  v12 = CFBooleanGetValue(v6);
  v13 = "Yes";
  if (!v12)
  {
    v13 = "No";
  }

  AMAuthInstallLog(6, "AMAuthInstallBundleShouldPersonalizeOSImage", "Personalize OS image = %s", v7, v8, v9, v10, v11, v13);
  return v12;
}

const __CFDictionary *AMAuthInstallBundleGetManifestEntry(uint64_t a1, const __CFString *a2, const __CFString *a3, char *a4)
{
  ValueForKeyPathInDict = a1;
  *v13 = 0;
  if (!a1)
  {
    sub_100069FB8();
    goto LABEL_8;
  }

  if (!a2)
  {
    sub_100069F7C();
LABEL_14:
    ValueForKeyPathInDict = 0;
    goto LABEL_8;
  }

  if (!a3)
  {
    sub_100069F40();
    goto LABEL_14;
  }

  if (!a4)
  {
    sub_100069F04();
    goto LABEL_14;
  }

  if (AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a4, a3, v13))
  {
    sub_100069EB4();
    goto LABEL_14;
  }

  v6 = CFGetAllocator(ValueForKeyPathInDict);
  ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v6, *v13, a2, v7, v8, v9, v10, v11);
  if (!ValueForKeyPathInDict)
  {
    AMSupportCreateErrorInternal();
  }

LABEL_8:
  SafeRelease(*v13);
  return ValueForKeyPathInDict;
}

BOOL sub_10000BC74(const void *a1, char *a2, const __CFString *a3)
{
  cf = 0;
  if (!a1)
  {
    sub_10006A030();
    return 0;
  }

  if (a2)
  {
    v4 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, a3, &cf);
    if (!v4)
    {
      CFGetAllocator(a1);
      ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
      v10 = ValueForKeyPathInDict != 0;
      v17 = "No";
      if (ValueForKeyPathInDict)
      {
        v17 = "Yes";
      }

      AMAuthInstallLog(6, "_AMAuthInstallBundleShouldPersonalizeOS", "Personalize OS = %s", v12, v13, v14, v15, v16, v17);
      goto LABEL_9;
    }

    AMAuthInstallLog(3, "_AMAuthInstallBundleShouldPersonalizeOS", "failed to copy build variant %d", v5, v6, v7, v8, v9, v4);
    AMSupportCreateErrorInternal();
  }

  else
  {
    sub_100069FF4();
  }

  v10 = 0;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t sub_10000BD9C(const void *a1, const void *a2, CFTypeRef cf, CFTypeRef *a4)
{
  if (!a4)
  {
    return 1;
  }

  if (cf)
  {
    v5 = 0;
    *a4 = CFRetain(cf);
  }

  else
  {
    v15 = CFGetAllocator(a1);
    v26 = 0;
    v27 = 0;
    if (a1 && AMAuthInstallApIsImg4(a1, v8, v9, v10, v11, v12, v13, v14))
    {
      v16 = @"amai/apimg4ticket.der";
    }

    else
    {
      v16 = @"amai/apticket.der";
    }

    v17 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v15, a2, v16, 0, &v26);
    if (v17)
    {
      v5 = v17;
      v24 = 0;
    }

    else
    {
      Digest = AMAuthInstallApCreateDigest(v26, 4096, 384);
      v24 = Digest;
      if (Digest)
      {
        v5 = 0;
        *a4 = CFRetain(Digest);
      }

      else
      {
        AMAuthInstallLog(3, "_AMAuthInstallBundleLocalPolicyCopyDefaultNSIH", "failed to compute NSIH for %@: %@", v19, v20, v21, v22, v23, v26);
        v5 = 4;
      }
    }

    SafeRelease(v26);
    SafeRelease(v24);
    SafeRelease(v27);
  }

  return v5;
}

uint64_t AMAuthInstallBundleSetVariantSpecifiesRestoreBehavior(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 56) = a2;
  return result;
}

const __CFString *AMAuthInstallBundleGetApTicketComponentPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && AMAuthInstallApIsImg4(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return @"amai/apimg4ticket.der";
  }

  else
  {
    return @"amai/apticket.der";
  }
}

const __CFString *_AMAuthInstallBundleImageHasBuildString(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CFStringCompare(result, @"iBSS", 0) && CFStringCompare(v1, @"iBEC", 0))
    {
      return (CFStringCompare(v1, @"LLB", 0) == kCFCompareEqualTo);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

CFBooleanRef _AMAuthInstallBundleGetDefaultResult(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFBooleanGetTypeID())
  {
    result = kCFBooleanFalse;
    if (kCFBooleanFalse != a1)
    {
      return result;
    }

    goto LABEL_13;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    if (CFStringCompare(a1, &stru_1000ABB18, 0) == kCFCompareEqualTo)
    {
LABEL_13:
      v7 = &kCFBooleanTrue;
      return *v7;
    }
  }

  else
  {
    v5 = CFGetTypeID(a1);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
      if (!valuePtr)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = CFGetTypeID(a1);
      if (v6 == CFDataGetTypeID() && !CFDataGetLength(a1))
      {
        goto LABEL_13;
      }
    }
  }

  v7 = &kCFBooleanFalse;
  return *v7;
}

CFStringRef sub_10000C090(const __CFAllocator *a1, CFStringRef theString)
{
  if (!CFStringGetCString(theString, buffer, 256, 0x8000100u))
  {
    return 0;
  }

  v3 = strlen(buffer);
  if (v3)
  {
    do
    {
      v4 = v3 - 1;
      v5 = buffer[v3 - 1] == 47 || v3 == 1;
      --v3;
    }

    while (!v5);
  }

  else
  {
    v4 = 0;
  }

  buffer[v4] = 0;
  return CFStringCreateWithCString(a1, buffer, 0x8000100u);
}

uint64_t sub_10000C160(void *a1, CFDictionaryRef theDict, __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = a1[2];
    if (v9)
    {
      if (theDict)
      {
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v73 = 0u;
        v88 = 0;
        v72 = 0u;
        v71 = 0u;
        v70 = 0u;
        v69 = 0u;
        v68 = 0u;
        v67 = 0u;
        v66 = 0u;
        v65 = 0u;
        v64 = 0u;
        v63 = 0u;
        v62 = 0u;
        v61 = 0u;
        v60 = 0u;
        v59 = 0u;
        v58 = 0u;
        v57 = 0u;
        v56 = @"UniqueBuildID";
        if (*(v9 + 136) || *(v9 + 144))
        {
          *&v57 = @"ProductMarketingVersion";
          v12 = 2;
        }

        else
        {
          v12 = 1;
        }

        v13 = &v56;
        *(&v56 + v12) = @"Ap,InternalUseOnlyUnit";
        *(&v56 + v12 + 1) = @"Ap,EngineeringUseOnlyUnit";
        *(&v56 + v12 + 2) = @"Ap,InternalUseOnlySW";
        *(&v56 + v12 + 3) = @"Ap,RestoreSecurityOverrides0";
        *(&v56 + (v12 | 4)) = @"Ap,RestoreSecurityOverrides1";
        *(&v56 + v12 + 5) = @"Ap,RestoreSecurityOverrides2";
        *(&v56 + v12 + 6) = @"Ap,RestoreSecurityOverrides3";
        *(&v56 + v12 + 7) = @"Ap,OSLongVersion";
        *(&v56 + (v12 | 8)) = @"x86,OSLongVersion";
        *(&v56 + v12 + 9) = @"PearlCertificationRootPub";
        *(&v56 + v12 + 10) = @"Ap,OSEnvironment";
        *(&v56 + v12 + 11) = @"AllowNeRDBoot";
        *(&v56 + v12 + 13) = @"Ap,CurrentOSSecurityVersion";
        *(&v56 + v12 + 14) = @"Ap,MinimumOSSecurityVersion";
        *(&v56 + v12 + 15) = @"Ap,EphemeralDataMode";
        *(&v56 + (v12 | 0x10)) = @"Ap,EnableGroundhog";
        *(&v56 + v12 + 17) = @"Ap,TargetType";
        *(&v56 + v12 + 18) = @"Ap,ProductType";
        *(&v56 + v12 + 19) = @"Ap,SoftwareUpdateDeviceID";
        *(&v56 + (v12 | 0x14)) = @"Ap,SDKPlatform";
        *(&v56 + v12 + 21) = @"Ap,Target";
        *(&v56 + v12 + 22) = @"Ap,OSReleaseType";
        *(&v56 + v12 + 23) = @"Ap,UniqueTagList";
        *(&v56 + (v12 | 0x18)) = @"Ap,ProductMarketingVersion";
        v14 = v12 + 25;
        *(&v56 + (v12 | 0xC)) = @"NeRDEpoch";
        do
        {
          v15 = *v13;
          Value = CFDictionaryGetValue(theDict, *v13);
          if (Value)
          {
            CFDictionaryAddValue(a3, v15, Value);
            AMAuthInstallLog(6, "_AMAuthInstallBundlePopulateManifestProperties", "Copying manifest property %@ into request", v17, v18, v19, v20, v21, v15);
          }

          ++v13;
          --v14;
        }

        while (v14);
        v22 = CFDictionaryGetValue(theDict, @"Info");
        if (_CFDictionaryGetBoolean(v22, @"RequiresUIDMode", 0, v23, v24, v25, v26, v27))
        {
          if (*(a1[2] + 184))
          {
            v28 = *(a1[2] + 184);
          }

          else
          {
            v28 = kCFBooleanFalse;
          }

          CFDictionarySetValue(a3, @"UID_MODE", v28);
        }

        v29 = CFDictionaryGetValue(v22, @"RequestManifestProperties");
        if (v29)
        {
          v30 = v29;
          v31 = CFGetTypeID(v29);
          if (v31 == CFArrayGetTypeID() && CFArrayGetCount(v30) >= 1)
          {
            v32 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v30, v32);
              v34 = CFDictionaryGetValue(theDict, ValueAtIndex);
              if (v34 || (v34 = CFDictionaryGetValue(v22, ValueAtIndex)) != 0)
              {
                CFDictionaryAddValue(a3, ValueAtIndex, v34);
                AMAuthInstallLog(6, "_AMAuthInstallBundlePopulateManifestProperties", "Copying manifest property %@ into request. (Via BuildManifest)", v35, v36, v37, v38, v39, ValueAtIndex);
              }

              ++v32;
            }

            while (CFArrayGetCount(v30) > v32);
          }
        }

        if (!CFDictionaryContainsKey(theDict, @"NeRDEpoch"))
        {
          goto LABEL_27;
        }

        v45 = CFGetAllocator(a1);
        Mutable = CFDataCreateMutable(v45, 0);
        if (Mutable)
        {
          CFDictionarySetValue(a3, @"PermitNeRDPivot", Mutable);
LABEL_27:
          AMAuthInstallLog(6, "_AMAuthInstallBundlePopulateManifestProperties", "Finished copying manifest entitlements.", v40, v41, v42, v43, v44, v55);
          goto LABEL_28;
        }

        sub_10006A06C(0, v46, v47, v48, v49, v50, v51, v52, v55);
      }

      else
      {
        sub_10006A080(a1, 0, a3, a4, a5, a6, a7, a8, v55);
      }
    }

    else
    {
      sub_10006A094(a1, theDict, a3, a4, a5, a6, a7, a8, v55);
    }
  }

  else
  {
    sub_10006A0A8(0, theDict, a3, a4, a5, a6, a7, a8, v55);
  }

LABEL_28:

  return AMSupportSafeRelease();
}

uint64_t sub_10000C6C8()
{

  return AMSupportCreateErrorInternal();
}

const __CFString *sub_10000C780(int a1)
{

  return AMAuthInstallGetLocalizedStatusString(v1, a1);
}

CFComparisonResult sub_10000C83C(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

uint64_t sub_10000C854(int a1, int a2, int a3, void *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, CFStringRef theString1, uint64_t a25, char *a26)
{

  return AMAuthInstallBundleCopyBuildIdentityForVariant(v26, a26, theString1, a4);
}

uint64_t AMAuthInstallCryptoCreateDigestForDataType(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3, int a4)
{
  switch(a4)
  {
    case 384:
      return AMAuthInstallCryptoCreateDigestForData_SHA384(a1, a2, a3);
    case 256:
      return AMAuthInstallCryptoCreateDigestForData_SHA256(a1, a2, a3);
    case 1:
      return AMAuthInstallCryptoCreateDigestForData(a1, a2, a3);
  }

  return 1;
}

uint64_t AMAuthInstallHttpUriEscapeString(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theString)
  {
    sub_10006B5A8(a1, 0, a3, a4, a5, a6, a7, a8, v23);
LABEL_10:
    MutableCopy = 0;
    v21 = 1;
    goto LABEL_7;
  }

  if (!a3)
  {
    sub_10006B594(a1, theString, 0, a4, a5, a6, a7, a8, v23);
    goto LABEL_10;
  }

  MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
  if (MutableCopy)
  {
    v17 = off_1000AA350;
    v18 = 33;
    do
    {
      v19 = *(v17 - 1);
      v20 = *v17;
      v24.length = CFStringGetLength(MutableCopy);
      v24.location = 0;
      CFStringFindAndReplace(MutableCopy, v19, v20, v24, 0);
      v17 += 2;
      --v18;
    }

    while (v18);
    v21 = 0;
    *a3 = CFRetain(MutableCopy);
  }

  else
  {
    sub_10006B580(0, v9, v10, v11, v12, v13, v14, v15, v23);
    v21 = 3;
  }

LABEL_7:
  SafeRelease(MutableCopy);
  return v21;
}

uint64_t AMAuthInstallHttpMessageSendSync(const void *a1, const __CFData *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMAuthInstallLog(8, "AMAuthInstallHttpMessageSendSync", "httpRequest=%@", a4, a5, a6, a7, a8, a1);
  v23 = 10002;
  theData = 0;
  v11 = CFGetAllocator(a1);
  v12 = AMAuthInstallHttpMessageSendSyncNew(v11, a1, &theData, &v23, a3, 60.0);
  if (v12)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpMessageSendSync", "AMAuthInstallHttpMessageSendSyncNew() failed: %d", v13, v14, v15, v16, v17, v12);
  }

  else if (a2)
  {
    Length = CFDataGetLength(a2);
    BytePtr = CFDataGetBytePtr(theData);
    v20 = CFDataGetLength(theData);
    v24.location = 0;
    v24.length = Length;
    CFDataReplaceBytes(a2, v24, BytePtr, v20);
  }

  return v23;
}

uint64_t AMAuthInstallHttpMessageSendSyncNew(CFAllocatorRef allocator, int a2, int a3, int a4, CFDictionaryRef theDict, double a6)
{
  valuePtr = a6;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    MutableCopy = CFDictionaryCreateMutableCopy(allocator, Count, theDict);
    if (CFDictionaryContainsKey(MutableCopy, kAMSupportHttpOptionSocksProxySettings))
    {
      AMAuthInstallLog(7, "AMAuthInstallHttpMessageSendSyncNew", "Options dictionary contains proxy information. Will attempt to use a proxy.", v10, v11, v12, v13, v14, v40);
    }

    Mutable = CFDictionaryContainsKey(MutableCopy, kAMSupportHttpOptionTrustedServerCAs);
    if (Mutable)
    {
      AMAuthInstallLog(7, "AMAuthInstallHttpMessageSendSyncNew", "Options dictionary contains trusted server CAs. Will authenticate SSL against CAs.", v18, v19, v20, v21, v22, v40);
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    MutableCopy = Mutable;
  }

  if (!MutableCopy)
  {
    sub_10006B614(Mutable, v16, v17, v18, v19, v20, v21, v22, v40);
LABEL_13:
    v39 = 2;
    goto LABEL_10;
  }

  v30 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
  if (!v30)
  {
    sub_10006B5E8(0, v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_13;
  }

  CFDictionarySetValue(MutableCopy, kAMSupportHttpOptionTimeout, v30);
  AMSupportHttpSendSync();
  sub_10006B5BC(0, v32, v33, v34, v35, v36, v37, v38);
  v39 = 16;
LABEL_10:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v39;
}

uint64_t AMAuthInstallHttpRequestManagedBaaCertificate(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  BaaCertificateData = AMAuthInstallHttpCreateBaaCertificateData(a1, 0, a2, &cf, a5, a6, a7, a8);
  if (!BaaCertificateData)
  {
    v10 = cf;
    if (cf)
    {
      if (*(a1[2] + 136))
      {
        CFRelease(*(a1[2] + 136));
        *(a1[2] + 136) = 0;
        v10 = cf;
      }

      *(a1[2] + 136) = CFRetain(v10);
    }
  }

  return BaaCertificateData;
}

uint64_t AMAuthInstallHttpCreateBaaCertificateData(void *a1, const __CFDictionary *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theData = 0;
  v100 = 0;
  v98 = -1;
  v96 = 0;
  v97 = 0;
  if (!a1)
  {
    sub_10006B7B0(0, a2, a3, a4, a5, a6, a7, a8, v88);
LABEL_44:
    v25 = 0;
    v16 = 0;
    v15 = 0;
    v27 = 0;
    v26 = 1;
    goto LABEL_40;
  }

  v9 = a1[2];
  if (!v9)
  {
    sub_10006B79C(a1, a2, a3, a4, a5, a6, a7, a8, v88);
    goto LABEL_44;
  }

  v10 = *(v9 + 48);
  if (!v10)
  {
    sub_10006B788(a1, a2, a3, a4, a5, a6, a7, a8, v88);
    goto LABEL_44;
  }

  if (!&_DeviceIdentityCreateClientCertificateRequest)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "DeviceIdentityCreateClientCertificateRequest is not available", a4, a5, a6, a7, a8, v88);
    v25 = 0;
    v16 = 0;
    v15 = 0;
    v27 = 0;
    v26 = 13;
    goto LABEL_40;
  }

  v103[0] = kMAOptionsBAANonce;
  v103[1] = kMAOptionsBAASCRTAttestation;
  v104[0] = v10;
  v104[1] = &off_1000BD108;
  v103[2] = kMAOptionsBAAOIDSToInclude;
  v102[0] = kMAOptionsBAAOIDNonce;
  v102[1] = kMAOptionsBAAOIDDeviceIdentifiers;
  v102[2] = kMAOptionsBAAOIDKeyUsageProperties;
  v102[3] = kMAOptionsBAAOIDDeviceOSInformation;
  v14 = [NSArray arrayWithObjects:v102 count:4];
  v104[2] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:3];

  v95 = 0;
  v16 = DeviceIdentityCreateClientCertificateRequest();
  v17 = 0;
  v25 = v17;
  if (v17)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "Error creating baa request : %@", v20, v21, v22, v23, v24, v17);
    if (a3)
    {
      *a3 = v25;
    }

    v26 = 6;
  }

  else
  {
    v26 = 1;
  }

  if (!v100)
  {
    sub_10006B75C(v17, v18, v19, v20, v21, v22, v23, v24);
LABEL_47:
    v27 = 0;
    goto LABEL_40;
  }

  if (!v16)
  {
    sub_10006B730(v17, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_47;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"userAgentStringOverride");
    if (Value)
    {
      v29 = Value;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v16 setValue:v29 forHTTPHeaderField:@"User-Agent"];
      }
    }
  }

  if (AMAuthInstallPreferencesCopyStringValue(0, @"BAAOverrideURL"))
  {
    CFGetAllocator(a1);
    URLFromString = AMSupportCreateURLFromString();
  }

  else
  {
    URLFromString = [v16 URL];
  }

  v27 = URLFromString;
  if (!URLFromString)
  {
    sub_10006B704(0, v31, v32, v33, v34, v35, v36, v37);
    goto LABEL_40;
  }

  Request = CFHTTPMessageCreateRequest(0, [v16 HTTPMethod], URLFromString, kCFHTTPVersion1_1);
  if (!Request)
  {
    sub_10006B6D8(0, v39, v40, v41, v42, v43, v44, v45);
    v27 = 0;
LABEL_59:
    v26 = 2;
    goto LABEL_40;
  }

  v46 = Request;
  v89 = a4;
  v90 = v25;
  v47 = v15;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v27 = [v16 allHTTPHeaderFields];
  v48 = [(__CFURL *)v27 countByEnumeratingWithState:&v91 objects:v101 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v92;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v92 != v50)
        {
          objc_enumerationMutation(v27);
        }

        v52 = *(*(&v91 + 1) + 8 * i);
        v53 = [(__CFURL *)v27 objectForKeyedSubscript:v52];
        CFHTTPMessageSetHeaderFieldValue(v46, v52, v53);
      }

      v49 = [(__CFURL *)v27 countByEnumeratingWithState:&v91 objects:v101 count:16];
    }

    while (v49);
  }

  v54 = [v16 HTTPBody];
  if (v54)
  {
    CFHTTPMessageSetBody(v46, [v16 HTTPBody]);
  }

  v55 = CFGetAllocator(a1);
  v56 = AMAuthInstallHttpMessageSendSyncNew(v55, v46, &theData, &v98, 0, 60.0);
  v15 = v47;
  if (v56)
  {
    v26 = v56;
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "AMAuthInstallHttpMessageSendSyncNew returned %d", v59, v60, v61, v62, v63, v56);
    v25 = v90;
    goto LABEL_40;
  }

  v25 = v90;
  if (!theData)
  {
    sub_10006B6AC(0, v57, v58, v59, v60, v61, v62, v63);
LABEL_53:
    v26 = 16;
    goto LABEL_40;
  }

  if (v98 != 200)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "httpStatus is %d", v59, v60, v61, v62, v63, v98);
    goto LABEL_53;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v70 = AMAuthInstallSupportCreateDecodedPEM(BytePtr, Length, &v97, &v96, v66, v67, v68, v69);
  if (v70)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "AMAuthInstallSupportCreateDecodedPEM returned %d", v73, v74, v75, v76, v77, v70);
LABEL_57:
    v26 = 6;
    goto LABEL_40;
  }

  if (!v97)
  {
    sub_10006B680(v70, v71, v72, v73, v74, v75, v76, v77);
    goto LABEL_57;
  }

  if (!v96)
  {
    sub_10006B654(v70, v71, v72, v73, v74, v75, v76, v77);
    goto LABEL_57;
  }

  v78 = CFGetAllocator(a1);
  v79 = CFDataCreate(v78, v97, v96);
  if (!v79)
  {
    sub_10006B628(0, v80, v81, v82, v83, v84, v85, v86);
    goto LABEL_59;
  }

  v26 = 0;
  if (v89)
  {
    *v89 = v79;
  }

LABEL_40:
  AMSupportSafeFree();

  return v26;
}

uint64_t AMAuthInstallHttpRequestAlternateUpdateBaaCertificate(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  BaaCertificateData = AMAuthInstallHttpCreateBaaCertificateData(a1, &off_1000BD0E0, a2, &cf, a5, a6, a7, a8);
  v10 = cf;
  if (BaaCertificateData)
  {
    v11 = 1;
  }

  else
  {
    v11 = cf == 0;
  }

  if (!v11)
  {
    if (*(a1[2] + 144))
    {
      CFRelease(*(a1[2] + 144));
      *(a1[2] + 144) = 0;
      v10 = cf;
    }

    *(a1[2] + 144) = CFRetain(v10);
  }

  return BaaCertificateData;
}

uint64_t AMAuthInstallLockCreate()
{
  pthread_once(&stru_1000C7E20, sub_10000D4A0);
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_10000D4A0()
{
  result = _CFRuntimeRegisterClass();
  qword_1000C8780 = result;
  return result;
}

CFMutableDictionaryRef sub_10000D4CC()
{

  return CFDictionaryCreateMutable(v1, 0, v0, v2);
}

void (*AMAuthInstallLogSetHandler(void (*result)(int a1, uint64_t a2)))(int a1, uint64_t a2)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = sub_10000D50C;
  }

  off_1000C7E30 = v1;
  return result;
}

void sub_10000D50C(int a1, uint64_t a2)
{
  if (qword_1000C8790 != -1)
  {
    sub_10006BBB0();
  }

  if (a1 <= 2)
  {
    if (os_log_type_enabled(qword_1000C8788, OS_LOG_TYPE_FAULT))
    {
      sub_10006BD20();
    }

    return;
  }

  if (a1 == 3)
  {
    if (os_log_type_enabled(qword_1000C8788, OS_LOG_TYPE_ERROR))
    {
      sub_10006BCAC();
    }

    return;
  }

  if (a1 <= 5)
  {
    v4 = qword_1000C8788;
    if (!os_log_type_enabled(qword_1000C8788, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 136446210;
    v10 = a2;
    v5 = v4;
    v6 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", &v9, 0xCu);
    return;
  }

  if (a1 == 6)
  {
    v7 = qword_1000C8788;
    if (!os_log_type_enabled(qword_1000C8788, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v9 = 136446210;
    v10 = a2;
    v5 = v7;
    v6 = OS_LOG_TYPE_INFO;
    goto LABEL_15;
  }

  v8 = os_log_type_enabled(qword_1000C8788, OS_LOG_TYPE_DEBUG);
  if (a1 > 7)
  {
    if (v8)
    {
      sub_10006BBC4();
    }
  }

  else if (v8)
  {
    sub_10006BC38();
  }
}

void AMAuthInstallLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = __chkstk_darwin();
  v12 = v11;
  v13 = v9;
  v14 = "";
  if (v10)
  {
    v14 = v10;
  }

  v15 = snprintf(__str, 0x1000uLL, "%s: ", v14);
  v16 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v12, 0x8000100u, kCFAllocatorNull);
  if (!v16)
  {
    v18 = 0;
    goto LABEL_9;
  }

  v17 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, v16, &a9);
  v18 = v17;
  if (!v17)
  {
LABEL_9:
    v26 = 0;
    v25 = 0;
    goto LABEL_14;
  }

  v19 = v15;
  v20 = 4096 - v15;
  Length = CFStringGetLength(v17);
  v22 = Length;
  if (4096 - v15 < Length && (v23 = malloc(v15 + Length + 1)) != 0)
  {
    v24 = v23;
    v20 = v22 + 1;
    memcpy(v23, __str, v15);
    v25 = v24;
  }

  else
  {
    v25 = 0;
    v24 = __str;
  }

  if (CFStringGetCString(v18, &v24[v19], v20, 0x8000100u))
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

LABEL_14:
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = "failed to format log message";
  }

  off_1000C7E30(v13, v27);
  SafeRelease(v16);
  SafeRelease(v18);
  SafeFree(v25);
}

uint64_t AMAuthInstallDebugWriteObject(CFTypeRef cf, CFTypeRef a2, uint64_t a3, int a4)
{
  cfa = 0;
  if (!cf)
  {
    goto LABEL_19;
  }

  if ((*(cf + 86) & a4) == 0)
  {
    v14 = 0;
LABEL_16:
    Data = 0;
    goto LABEL_20;
  }

  if (!*(cf + 42))
  {
    CFGetAllocator(cf);
    v29 = AMAuthInstallSupportCopyURLToNewTempDirectory();
    if (v29)
    {
      v14 = v29;
      AMAuthInstallLog(3, "AMAuthInstallDebugWriteObject", "failed to create debug output directory", v30, v31, v32, v33, v34, v41);
      goto LABEL_16;
    }
  }

  v7 = CFGetTypeID(a2);
  if (v7 == CFDataGetTypeID())
  {
    Data = CFRetain(a2);
    v9 = "";
    if (Data)
    {
      goto LABEL_6;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_20;
  }

  v21 = CFGetTypeID(a2);
  if (v21 != CFDictionaryGetTypeID())
  {
    v22 = CFGetTypeID(a2);
    if (v22 != CFArrayGetTypeID())
    {
      AMAuthInstallLog(3, "AMAuthInstallDebugWriteObject", "can't prepare data for output to file", v23, v24, v25, v26, v27, v41);
      AMAuthInstallLog(8, "AMAuthInstallDebugWriteObject", "%@", v35, v36, v37, v38, v39, a2);
LABEL_19:
      Data = 0;
      v14 = 1;
      goto LABEL_20;
    }
  }

  v28 = CFGetAllocator(cf);
  Data = CFPropertyListCreateData(v28, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v9 = ".plist";
  if (!Data)
  {
    goto LABEL_13;
  }

LABEL_6:
  v10 = CFGetAllocator(cf);
  v11 = CFStringCreateWithFormat(v10, 0, @"%@%s", a3, v9);
  if (v11)
  {
    v12 = v11;
    v13 = CFGetAllocator(cf);
    v14 = AMAuthInstallSupportCopyURLWithAppendedComponent(v13, *(cf + 42), v12, 0, &cfa);
    CFRelease(v12);
    if (!v14)
    {
      v15 = CFGetAllocator(cf);
      v14 = AMAuthInstallSupportWriteDataToFileURL(v15, Data, cfa, 0);
      AMAuthInstallLog(8, "AMAuthInstallDebugWriteObject", "debug object written: %@", v16, v17, v18, v19, v20, cfa);
    }
  }

  else
  {
    v14 = 2;
  }

LABEL_20:
  SafeRelease(Data);
  SafeRelease(cfa);
  return v14;
}

void AMAuthInstallLogDumpMemory(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  AMAuthInstallLog(a1, a2, "[%s: %u bytes]", a4, a5, a6, a7, a8, a3);
  if (v8 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = v8 + 1;
    do
    {
      v19 = *v9++;
      v20 = snprintf(&v22[v17], 64 - v17, "%02x ", v19);
      if (++v16 > 0xF || v18 == 2)
      {
        AMAuthInstallLog(a1, "", "%s", v11, v12, v13, v14, v15, v22);
        v17 = 0;
        v16 = 0;
      }

      else
      {
        v17 += v20;
      }

      --v18;
    }

    while (v18 > 1);
  }

  AMAuthInstallLog(a1, "", "-----------------------------------------------", v11, v12, v13, v14, v15, v21);
}

uint64_t AMAuthInstallMonetMeasureDbl(const __CFNumber *a1, CFDataRef theData, __CFDictionary *a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  v7 = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length <= 3)
  {
    AMAuthInstallLog(7, "_FindSblHeaderInFileData", "foundMagic=%d", v9, v10, v11, v12, v13, 0);
LABEL_8:
    AMAuthInstallLog(3, "_FindSblHeaderInFileData", "this file lacks sufficient magic", v14, v15, v16, v17, v18, v34);
    return 10;
  }

  v19 = 0;
  v20 = 0;
  v21 = Length >> 2;
  v22 = v7 - 4;
  do
  {
    if (*(v22 + 1) == 1943474228)
    {
      ++v19;
      v20 = v22;
      if (*(v22 + 2) != 2097890138)
      {
        AMAuthInstallLog(7, "_FindSblHeaderInFileData", "found SBL header", v9, v10, v11, v12, v13, v33);
        AMAuthInstallLog(7, "_FindSblHeaderInFileData", "foundMagic=%d", v27, v28, v29, v30, v31, v19);
        v20 = v22;
        goto LABEL_11;
      }
    }

    v22 += 4;
    --v21;
  }

  while (v21);
  AMAuthInstallLog(7, "_FindSblHeaderInFileData", "foundMagic=%d", v9, v10, v11, v12, v13, v19);
  if (!v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  v32 = *(v20 + 5);
  if (v20 + 80 != (BytePtr + v32))
  {
    sub_10006D380(v23, v24, v25, v14, v15, v32, v17, v18, v34);
    return 10;
  }

  AMAuthInstallMonetSetVersionAndPartialDigest(a1, a3, BytePtr, theData, v20, v32, *(v20 + 8), @"DBL-Version", @"DBL-PartialDigest");
  return 0;
}

uint64_t AMAuthInstallMonetStitchEBootLoader(const void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4, const void *a5)
{
  v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-Original", a5);
  v49 = a5;
  v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-Personalized");
  Value = CFDictionaryGetValue(a3, @"BasebandFirmware");
  if (!Value)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchFirstStage", "response lacks %@", v13, v14, v15, v16, v17, @"BasebandFirmware");
LABEL_9:
    v47 = 8;
LABEL_12:
    SafeRelease(0);
    goto LABEL_6;
  }

  v18 = CFDictionaryGetValue(Value, a5);
  if (!v18)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchFirstStage", "response lacks %@", v19, v20, v21, v22, v23, a5);
    goto LABEL_9;
  }

  v24 = v18;
  Length = CFDataGetLength(v18);
  v26 = CFDataGetLength(a2);
  if (Length >= v26)
  {
    sub_10006D394(v26, v27, v28, v29, v30, v31, v32, v33, v49);
    v47 = 1;
    goto LABEL_12;
  }

  v34 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v34, 0, a2);
  if (!MutableCopy)
  {
    v47 = 2;
    goto LABEL_12;
  }

  v36 = MutableCopy;
  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  v38 = CFDataGetLength(v36);
  v39 = &MutableBytePtr[v38 - CFDataGetLength(v24)];
  CFDataGetLength(v24);
  CFDataGetLength(v36);
  AMAuthInstallLog(3, "_AMAuthInstallMonetStitchFirstStage", "Stitch Debug: \n StitchAddress: 0x%x \n 64-Byte-Aligned: %s \n 128-Byte-Aligned: %s\n Len(stitchData)=%d Len(newFileData) = %d", v40, v41, v42, v43, v44, v39);
  BytePtr = CFDataGetBytePtr(v24);
  v46 = CFDataGetLength(v24);
  memcpy(v39, BytePtr, v46);
  *a4 = CFRetain(v36);
  SafeRelease(v36);
  AMAuthInstallDebugWriteObject(a1, a2, v10, 1);
  AMAuthInstallDebugWriteObject(a1, *a4, v11, 1);
  v47 = 0;
LABEL_6:
  SafeRelease(v10);
  SafeRelease(v11);
  return v47;
}

uint64_t AMAuthInstallMonetStitchSbl1(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[6] + 4);
  v9 = kAMAuthInstallTagBbSbl1HTDStitch;
  if (v8 > 1700064)
  {
    if (v8 > 2089184)
    {
      if (v8 != 2089185)
      {
        if (v8 == 9781473)
        {
          goto LABEL_24;
        }

        if (v8 != 2814177)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_23;
    }

    v10 = v8 == 1700065;
    v11 = 2044129;
LABEL_18:
    if (!v10 && v8 != v11)
    {
LABEL_27:
      v9 = kAMAuthInstallTagBbSbl1Stitch;
      goto LABEL_24;
    }

LABEL_23:
    v9 = kAMAuthInstallTagBbSbl1HTBStitch;
    goto LABEL_24;
  }

  if (v8 > 938208)
  {
    v10 = v8 == 938209 || v8 == 1327329;
    v11 = 1515745;
    goto LABEL_18;
  }

  if (v8 != 241889 && v8 != 520417)
  {
    goto LABEL_27;
  }

LABEL_24:
  v14 = *v9;
  if (v8 == 2044129)
  {
    return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, v14, 1, a7, a8);
  }

  else
  {
    return AMAuthInstallMonetStitchEBootLoader(a1, a2, a3, a4, v14);
  }
}

uint64_t AMAuthInstallMonetStitchMav25EBootLoader(const void *a1, const __CFData *a2, const __CFDictionary *a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_10006D4C8(0, a2, a3, a4, a5, a6, a7, a8, v121);
LABEL_30:
    v21 = 0;
LABEL_31:
    v29 = 0;
LABEL_32:
    v119 = 99;
    goto LABEL_24;
  }

  if (!a2)
  {
    sub_10006D4B4(a1, 0, a3, a4, a5, a6, a7, a8, v121);
    goto LABEL_30;
  }

  if (!a3)
  {
    sub_10006D4A0(a1, a2, 0, a4, a5, a6, a7, a8, v121);
    goto LABEL_30;
  }

  if (!a4)
  {
    sub_10006D48C(a1, a2, a3, 0, a5, a6, a7, a8, v121);
    goto LABEL_30;
  }

  if (!a5)
  {
    sub_10006D478(a1, a2, a3, a4, 0, a6, a7, a8, v121);
    goto LABEL_30;
  }

  v12 = a6;
  v122 = a5;
  v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-Original");
  if (!v21)
  {
    sub_10006D464(0, v14, v15, v16, v17, v18, v19, v20, v122);
    goto LABEL_31;
  }

  v123 = a5;
  v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-Personalized");
  if (!v29)
  {
    sub_10006D450(0, v22, v23, v24, v25, v26, v27, v28, a5);
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(a3, @"BasebandFirmware");
  v31 = CFGetTypeID(Value);
  TypeID = CFDictionaryGetTypeID();
  if (v31 != TypeID)
  {
    sub_10006D3A8(TypeID, v33, v34, v35, v36, v37, v38, v39, a5);
LABEL_38:
    v75 = 0;
LABEL_44:
    v119 = 99;
    goto LABEL_46;
  }

  v40 = CFDictionaryGetValue(a3, @"BasebandFirmware");
  if (!v40)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25FirstStage", "response lacks %@", v41, v42, v43, v44, v45, @"BasebandFirmware");
LABEL_40:
    v75 = 0;
    v119 = 8;
LABEL_46:
    SafeRelease(v75);
    goto LABEL_24;
  }

  v46 = v40;
  v47 = CFDictionaryGetValue(v40, a5);
  v48 = CFGetTypeID(v47);
  v49 = CFDataGetTypeID();
  if (v48 != v49)
  {
    sub_10006D3BC(v49, v50, v51, v52, v53, v54, v55, v56, a5);
    goto LABEL_38;
  }

  v57 = CFDictionaryGetValue(v46, a5);
  if (!v57)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25FirstStage", "response lacks %@", v58, v59, v60, v61, v62, a5);
    goto LABEL_40;
  }

  v63 = v57;
  Length = CFDataGetLength(v57);
  v65 = CFDataGetLength(a2);
  if (Length >= v65)
  {
    sub_10006D3D0(v65, v66, v67, v68, v69, v70, v71, v72, a5);
    v75 = 0;
    v119 = 1;
    goto LABEL_46;
  }

  v73 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v73, 0, a2);
  v75 = MutableCopy;
  if (!MutableCopy)
  {
    v119 = 2;
    goto LABEL_46;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  theData = a2;
  BytePtr = CFDataGetBytePtr(a2);
  if (v12)
  {
    v78 = *&BytePtr[56 * *(BytePtr + 28) - 48 + *(BytePtr + 4)];
  }

  else
  {
    v78 = *&BytePtr[32 * *(BytePtr + 22) - 28 + *(BytePtr + 7)];
  }

  v79 = &CFDataGetBytePtr(theData)[v78];
  v80 = sub_10000EE9C(v79) + v79[5];
  v81 = CFDataGetLength(v63);
  if (v80 > v81)
  {
    sub_10006D3E4(v81, v82, v83, v84, v85, v86, v87, v88, v123);
    goto LABEL_44;
  }

  cf = a1;
  v125 = a4;
  v126 = v29;
  v89 = &MutableBytePtr[v78];
  v90 = CFDataGetLength(v75);
  sub_10000FAFC(v89, v63, 0, v80, v90, v91, v92, v93);
  v94 = sub_10000EE9C(v79);
  v95 = v79[5];
  v96 = v79[6];
  v98 = v79[8];
  v97 = v79[9];
  v99 = v79[7];
  if (v98 && v98 != 104)
  {
    sub_10006D424();
  }

  if (v97 && v97 != 3360)
  {
    sub_10006D3F8();
  }

  v100 = v98 + v97;
  v101 = v95 + v79[3] + 288;
  v102 = CFDataGetLength(v63);
  if (v101 + v100 > v102)
  {
    sub_10006D3E4(v102, v103, v104, v105, v106, v107, v108, v109, v123);
    v119 = 99;
    v29 = v126;
    goto LABEL_46;
  }

  v110 = CFDataGetLength(v75);
  sub_10000FAFC(&v89[v94 + v95 + v96 + v99], v63, v101, v100, v110, v111, v112, v113);
  AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25FirstStage", "\n\n", v114, v115, v116, v117, v118, v123);
  *v125 = CFRetain(v75);
  SafeRelease(v75);
  AMAuthInstallDebugWriteObject(cf, theData, v21, 1);
  v29 = v126;
  AMAuthInstallDebugWriteObject(cf, *v125, v126, 1);
  v119 = 0;
LABEL_24:
  SafeRelease(v21);
  SafeRelease(v29);
  return v119;
}

uint64_t AMAuthInstallMonetStitchMisc(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1[6] + 4) == 2044129)
  {
    return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, @"Misc-HashTableBody-Blob", 1, a7, a8);
  }

  else
  {
    return AMAuthInstallMonetStitchEBootLoader(a1, a2, a3, a4, @"Misc-HashTableBody-Blob");
  }
}

uint64_t AMAuthInstallMonetStitchRestoreSbl1(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[6] + 4);
  v9 = kAMAuthInstallTagBbRestoreSbl1HTDStitch;
  if (v8 > 1700064)
  {
    if (v8 > 2089184)
    {
      if (v8 != 2089185)
      {
        if (v8 == 9781473)
        {
          goto LABEL_24;
        }

        if (v8 != 2814177)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_23;
    }

    v10 = v8 == 1700065;
    v11 = 2044129;
LABEL_18:
    if (!v10 && v8 != v11)
    {
LABEL_27:
      v9 = kAMAuthInstallTagBbRestoreSbl1Stitch;
      goto LABEL_24;
    }

LABEL_23:
    v9 = kAMAuthInstallTagBbRestoreSbl1HTBStitch;
    goto LABEL_24;
  }

  if (v8 > 938208)
  {
    v10 = v8 == 938209 || v8 == 1327329;
    v11 = 1515745;
    goto LABEL_18;
  }

  if (v8 != 241889 && v8 != 520417)
  {
    goto LABEL_27;
  }

LABEL_24:
  v14 = *v9;
  if (v8 == 2044129)
  {
    return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, v14, 1, a7, a8);
  }

  else
  {
    return AMAuthInstallMonetStitchEBootLoader(a1, a2, a3, a4, v14);
  }
}

uint64_t AMAuthInstallMonetMeasureMav20ElfMBN(const void *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, void *a5, const void *a6)
{
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  *bytes = 0u;
  v113 = 0u;
  Length = CFDataGetLength(theData);
  if (Length <= 0x33 || (Length = CFDataGetBytePtr(theData), *Length != 1179403647))
  {
    sub_10006D4DC(Length, v13, v14, v15, v16, v17, v18, v19, v108);
    goto LABEL_23;
  }

  v20 = Length;
  v21 = *(Length + 44);
  if (!*(Length + 44))
  {
    goto LABEL_22;
  }

  v22 = 0;
  v23 = 0;
  v24 = Length + *(Length + 28);
  do
  {
    if (*(v24 + 12) > v22 && (*(v24 + 24) & 0x7000000) != 0x5000000)
    {
      v23 = v24;
      v22 = *(v24 + 12);
    }

    v24 += 32;
    --v21;
  }

  while (v21);
  if (!v23)
  {
LABEL_22:
    sub_10006D5BC(Length, v13, v14, v15, v16, v17, v18, v19, v108);
LABEL_23:
    v111 = 0;
    v104 = 0;
    v106 = 0;
    v95 = 0;
    v105 = 10;
    goto LABEL_21;
  }

  v25 = (*(v23 + 16) + *(v23 + 4));
  v26 = CFDataGetLength(theData);
  if (v26 < v25)
  {
    sub_10006D5A8(v26, v27, v28, v29, v30, v31, v32, v33, v108);
    goto LABEL_23;
  }

  CFDataGetBytePtr(theData);
  BytePtr = CFDataGetBytePtr(theData);
  v35 = *(v23 + 4);
  v36 = &BytePtr[v35];
  v37 = (*&BytePtr[v35 + 20] + v35);
  v38 = CFDataGetLength(theData);
  if (v38 < v37)
  {
    sub_10006D594(v38, v39, v40, v41, v42, v43, v44, v45, v108);
    goto LABEL_23;
  }

  v46 = (*(v36 + 4) + *(v23 + 4));
  v47 = CFDataGetLength(theData);
  if (v47 < v46)
  {
    sub_10006D580(v47, v48, v49, v50, v51, v52, v53, v54, v108);
    goto LABEL_23;
  }

  v55 = (*(v36 + 9) + *(v23 + 4));
  v56 = CFDataGetLength(theData);
  if (v56 < v55)
  {
    sub_10006D56C(v56, v57, v58, v59, v60, v61, v62, v63, v108);
    goto LABEL_23;
  }

  v64 = (*(v36 + 7) + *(v23 + 4));
  v65 = CFDataGetLength(theData);
  if (v65 < v64)
  {
    sub_10006D558(v65, v66, v67, v68, v69, v70, v71, v72, v108);
    goto LABEL_23;
  }

  if ((*(v36 + 7) + *(v36 + 5) + *(v36 + 9)) + 168 != *(v23 + 16))
  {
    sub_10006D4F0(v65, v66, v67, v68, v69, v70, v71, v72, v108);
    goto LABEL_23;
  }

  v73 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v73, 0);
  if (!Mutable)
  {
    sub_10006D544(0, v75, v76, v77, v78, v79, v80, v81, v108);
    v111 = 0;
    v104 = 0;
    v106 = 0;
    v95 = 0;
    v105 = 2;
    goto LABEL_21;
  }

  v82 = Mutable;
  key = a5;
  CFDataSetLength(Mutable, 48);
  CFDataGetBytePtr(theData);
  v111 = v82;
  CFDataGetMutableBytePtr(v82);
  v83 = *(v23 + 4);
  v84 = CFDataGetBytePtr(theData);
  v85 = CFGetAllocator(a1);
  v110 = CFDataCreate(v85, v36, 168);
  CFDictionarySetValue(a3, a6, v110);
  v86 = CFGetAllocator(a1);
  v87 = CFDataCreateMutable(v86, 0);
  v95 = v87;
  if (!v87)
  {
    sub_10006D530(0, v88, v89, v90, v91, v92, v93, v94, v108);
    v104 = 0;
LABEL_35:
    v105 = 2;
    goto LABEL_20;
  }

  CFDataAppendBytes(v87, &v84[v83 + 168], *(v36 + 5));
  CFDataSetLength(v95, *(v36 + 5));
  CFDictionarySetValue(a3, a4, v95);
  *&bytes[4] = *(v23 + 4);
  *bytes = CFDataGetLength(theData) - *&bytes[4];
  sub_10000EA30(v20, *&bytes[4], &bytes[8]);
  v96 = CFGetAllocator(a1);
  v104 = CFDataCreate(v96, bytes, 72);
  if (!v104)
  {
    sub_10006D504(0, v97, v98, v99, v100, v101, v102, v103);
    goto LABEL_35;
  }

  CFDictionarySetValue(a3, key, v104);
  v105 = 0;
LABEL_20:
  v106 = v110;
LABEL_21:
  SafeRelease(v95);
  SafeRelease(v111);
  SafeRelease(v104);
  SafeRelease(v106);
  return v105;
}

int8x16_t sub_10000EA30(const void *a1, CC_LONG a2, uint64_t a3)
{
  memset(&v8, 0, sizeof(v8));
  CC_SHA384_Init(&v8);
  CC_SHA384_Update(&v8, a1, a2);
  for (i = 0; i != 8; i += 2)
  {
    result = vrev64q_s8(*&v8.hash[i]);
    *(a3 + i * 8) = result;
  }

  return result;
}

uint64_t AMAuthInstallMonetMeasureMav25Elf32MBN(uint64_t a1, CFDataRef theData, __CFDictionary *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  memset(bytes, 0, sizeof(bytes));
  if (!a1)
  {
    sub_10006D750(0, theData, a3, a4, a5, a6, a7, a8, v136);
    v106 = 0;
    v13 = 0;
LABEL_32:
    v134 = 99;
    goto LABEL_23;
  }

  if (!theData)
  {
    sub_10006D73C(a1, 0, a3, a4, a5, a6, a7, a8, v136);
LABEL_29:
    v106 = 0;
LABEL_30:
    v13 = 0;
LABEL_31:
    v8 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
    sub_10006D728(a1, theData, 0, a4, a5, a6, a7, a8, v136);
    goto LABEL_29;
  }

  if (!a4)
  {
    sub_10006D714(a1, theData, a3, 0, a5, a6, a7, a8, v136);
    goto LABEL_29;
  }

  if (!a5)
  {
    sub_10006D700(a1, theData, a3, a4, 0, a6, a7, a8, v136);
    goto LABEL_29;
  }

  v13 = a6;
  if (!a6)
  {
    sub_10006D6EC(a1, theData, a3, a4, a5, 0, a7, a8, v136);
    v106 = 0;
    goto LABEL_31;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0x33 || (Length = CFDataGetBytePtr(theData), *Length != 1179403647))
  {
    sub_10006D5D0(Length, v15, v16, v17, v18, v19, v20, v21, v136);
LABEL_44:
    v106 = 0;
    v13 = 0;
    v8 = 0;
    v134 = 10;
    goto LABEL_23;
  }

  v22 = Length;
  BytePtr = CFDataGetBytePtr(theData);
  v31 = &BytePtr[32 * *(BytePtr + 22) + *(BytePtr + 7)];
  if (v31 == 32)
  {
    sub_10006D6D8(BytePtr, v24, v25, v26, v27, v28, v29, v30, v136);
    goto LABEL_44;
  }

  v32 = (*(v31 - 16) + *(v31 - 28));
  v33 = CFDataGetLength(theData);
  if (v33 < v32)
  {
    sub_10006D6C4(v33, v34, v35, v36, v37, v38, v39, v40, v136);
    goto LABEL_44;
  }

  v41 = CFDataGetBytePtr(theData);
  v42 = *(v31 - 28);
  v43 = &v41[v42];
  v44 = (*&v41[v42 + 20] + v42);
  v45 = CFDataGetLength(theData);
  if (v45 < v44)
  {
    sub_10006D6B0(v45, v46, v47, v48, v49, v50, v51, v52, v136);
    goto LABEL_44;
  }

  v53 = (*(v43 + 24) + *(v31 - 28));
  v54 = CFDataGetLength(theData);
  if (v54 < v53)
  {
    sub_10006D69C(v54, v55, v56, v57, v58, v59, v60, v61, v136);
    goto LABEL_44;
  }

  v62 = (*(v43 + 28) + *(v31 - 28));
  v63 = CFDataGetLength(theData);
  if (v63 < v62)
  {
    sub_10006D688(v63, v64, v65, v66, v67, v68, v69, v70, v136);
    goto LABEL_44;
  }

  v71 = (*(v43 + 32) + *(v31 - 28));
  v72 = CFDataGetLength(theData);
  if (v72 < v71)
  {
    sub_10006D674(v72, v73, v74, v75, v76, v77, v78, v79, v136);
    goto LABEL_44;
  }

  v80 = (*(v43 + 36) + *(v31 - 28));
  v81 = CFDataGetLength(theData);
  if (v81 < v80)
  {
    sub_10006D660(v81, v82, v83, v84, v85, v86, v87, v88, v136);
    goto LABEL_44;
  }

  v89 = sub_10000EE9C(v43);
  if (vaddlvq_u32(*(v43 + 20)) + *(v43 + 36) + v89 > *(v31 - 16))
  {
    sub_10006D64C(v89, v90, v91, v92, v93, v94, v95, v96, v136);
    goto LABEL_44;
  }

  v97 = sub_10000EE9C(v43);
  v98 = CFGetAllocator(v8);
  v106 = CFDataCreate(v98, v43, v97);
  if (!v106)
  {
    sub_10006D638(0, v99, v100, v101, v102, v103, v104, v105, v136);
    v13 = 0;
    v8 = 0;
    v134 = 2;
    goto LABEL_23;
  }

  CFDictionarySetValue(a3, v13, v106);
  v115 = *(v43 + 20);
  if (!v115)
  {
    sub_10006D624(v107, v108, v109, v110, v111, v112, v113, v114, v136);
    goto LABEL_30;
  }

  v137 = v106;
  v116 = a5;
  v117 = sub_10000EE9C(v43);
  v118 = CFGetAllocator(v8);
  v13 = CFDataCreate(v118, (v43 + v117), v115);
  if (!v13)
  {
    sub_10006D610(0, v119, v120, v121, v122, v123, v124, v125, v136);
    v8 = 0;
LABEL_49:
    v134 = 2;
    goto LABEL_22;
  }

  CFDictionarySetValue(a3, a4, v13);
  memset(&bytes[8], 0, 64);
  *&bytes[4] = *(v31 - 28);
  *bytes = CFDataGetLength(theData) - *&bytes[4];
  sub_10000EA30(v22, *&bytes[4], &bytes[8]);
  v126 = CFGetAllocator(v8);
  v8 = CFDataCreate(v126, bytes, 72);
  if (!v8)
  {
    sub_10006D5E4(0, v127, v128, v129, v130, v131, v132, v133);
    goto LABEL_49;
  }

  CFDictionarySetValue(a3, v116, v8);
  v134 = 0;
LABEL_22:
  v106 = v137;
LABEL_23:
  SafeRelease(v106);
  SafeRelease(v13);
  SafeRelease(v8);
  return v134;
}

uint64_t sub_10000EE9C(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 && v1 != 224)
  {
    sub_10006D764();
  }

  return v1 + 288;
}

uint64_t AMAuthInstallMonetMeasureMav25Elf64MBN(uint64_t a1, CFDataRef theData, __CFDictionary *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  memset(bytes, 0, sizeof(bytes));
  if (!a1)
  {
    sub_10006D910(0, theData, a3, a4, a5, a6, a7, a8, v136);
    v106 = 0;
    v13 = 0;
LABEL_32:
    v134 = 99;
    goto LABEL_23;
  }

  if (!theData)
  {
    sub_10006D8FC(a1, 0, a3, a4, a5, a6, a7, a8, v136);
LABEL_29:
    v106 = 0;
LABEL_30:
    v13 = 0;
LABEL_31:
    v8 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
    sub_10006D8E8(a1, theData, 0, a4, a5, a6, a7, a8, v136);
    goto LABEL_29;
  }

  if (!a4)
  {
    sub_10006D8D4(a1, theData, a3, 0, a5, a6, a7, a8, v136);
    goto LABEL_29;
  }

  if (!a5)
  {
    sub_10006D8C0(a1, theData, a3, a4, 0, a6, a7, a8, v136);
    goto LABEL_29;
  }

  v13 = a6;
  if (!a6)
  {
    sub_10006D8AC(a1, theData, a3, a4, a5, 0, a7, a8, v136);
    v106 = 0;
    goto LABEL_31;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0x33 || (Length = CFDataGetBytePtr(theData), *Length != 1179403647))
  {
    sub_10006D790(Length, v15, v16, v17, v18, v19, v20, v21, v136);
LABEL_44:
    v106 = 0;
    v13 = 0;
    v8 = 0;
    v134 = 10;
    goto LABEL_23;
  }

  v22 = Length;
  BytePtr = CFDataGetBytePtr(theData);
  v31 = &BytePtr[56 * *(BytePtr + 28) + *(BytePtr + 4)];
  if (v31 == 56)
  {
    sub_10006D898(BytePtr, v24, v25, v26, v27, v28, v29, v30, v136);
    goto LABEL_44;
  }

  v32 = *(v31 - 24) + *(v31 - 48);
  v33 = CFDataGetLength(theData);
  if (v32 > v33)
  {
    sub_10006D884(v33, v34, v35, v36, v37, v38, v39, v40, v136);
    goto LABEL_44;
  }

  v41 = CFDataGetBytePtr(theData);
  v42 = *(v31 - 48);
  v43 = &v41[v42];
  v44 = v42 + *&v41[v42 + 20];
  v45 = CFDataGetLength(theData);
  if (v44 > v45)
  {
    sub_10006D870(v45, v46, v47, v48, v49, v50, v51, v52, v136);
    goto LABEL_44;
  }

  v53 = *(v31 - 48) + *(v43 + 24);
  v54 = CFDataGetLength(theData);
  if (v53 > v54)
  {
    sub_10006D85C(v54, v55, v56, v57, v58, v59, v60, v61, v136);
    goto LABEL_44;
  }

  v62 = *(v31 - 48) + *(v43 + 28);
  v63 = CFDataGetLength(theData);
  if (v62 > v63)
  {
    sub_10006D848(v63, v64, v65, v66, v67, v68, v69, v70, v136);
    goto LABEL_44;
  }

  v71 = *(v31 - 48) + *(v43 + 32);
  v72 = CFDataGetLength(theData);
  if (v71 > v72)
  {
    sub_10006D834(v72, v73, v74, v75, v76, v77, v78, v79, v136);
    goto LABEL_44;
  }

  v80 = *(v31 - 48) + *(v43 + 36);
  v81 = CFDataGetLength(theData);
  if (v80 > v81)
  {
    sub_10006D820(v81, v82, v83, v84, v85, v86, v87, v88, v136);
    goto LABEL_44;
  }

  v89 = sub_10000EE9C(v43);
  if (vaddlvq_u32(*(v43 + 20)) + *(v43 + 36) + v89 > *(v31 - 24))
  {
    sub_10006D80C(v89, v90, v91, v92, v93, v94, v95, v96, v136);
    goto LABEL_44;
  }

  v97 = sub_10000EE9C(v43);
  v98 = CFGetAllocator(v8);
  v106 = CFDataCreate(v98, v43, v97);
  if (!v106)
  {
    sub_10006D7F8(0, v99, v100, v101, v102, v103, v104, v105, v136);
    v13 = 0;
    v8 = 0;
    v134 = 2;
    goto LABEL_23;
  }

  CFDictionarySetValue(a3, v13, v106);
  v115 = *(v43 + 20);
  if (!v115)
  {
    sub_10006D7E4(v107, v108, v109, v110, v111, v112, v113, v114, v136);
    goto LABEL_30;
  }

  v137 = v106;
  v116 = a5;
  v117 = sub_10000EE9C(v43);
  v118 = CFGetAllocator(v8);
  v13 = CFDataCreate(v118, (v43 + v117), v115);
  if (!v13)
  {
    sub_10006D7D0(0, v119, v120, v121, v122, v123, v124, v125, v136);
    v8 = 0;
LABEL_49:
    v134 = 2;
    goto LABEL_22;
  }

  CFDictionarySetValue(a3, a4, v13);
  memset(&bytes[8], 0, 64);
  *&bytes[4] = *(v31 - 48);
  *bytes = CFDataGetLength(theData) - *&bytes[4];
  sub_10000EA30(v22, *&bytes[4], &bytes[8]);
  v126 = CFGetAllocator(v8);
  v8 = CFDataCreate(v126, bytes, 72);
  if (!v8)
  {
    sub_10006D7A4(0, v127, v128, v129, v130, v131, v132, v133);
    goto LABEL_49;
  }

  CFDictionarySetValue(a3, v116, v8);
  v134 = 0;
LABEL_22:
  v106 = v137;
LABEL_23:
  SafeRelease(v106);
  SafeRelease(v13);
  SafeRelease(v8);
  return v134;
}

uint64_t AMAuthInstallMonetMeasureElfMBN(void *a1, CFDataRef theData, __CFDictionary *a3, void *a4, const void *a5)
{
  v109 = 0;
  *bytes = 0u;
  v108 = 0u;
  v106 = 0;
  memset(v105, 0, sizeof(v105));
  Length = CFDataGetLength(theData);
  if (Length <= 0x33 || (Length = CFDataGetBytePtr(theData), *Length != 1179403647))
  {
    sub_10006D924(Length, v11, v12, v13, v14, v15, v16, v17, theDict);
    goto LABEL_24;
  }

  v18 = Length;
  v19 = *(Length + 44);
  if (!*(Length + 44))
  {
    goto LABEL_23;
  }

  v20 = 0;
  v21 = 0;
  v22 = Length + *(Length + 28);
  do
  {
    if (*(v22 + 12) > v21 && (*(v22 + 24) & 0x7000000) != 0x5000000)
    {
      v21 = *(v22 + 12);
      v20 = v22;
    }

    v22 += 32;
    --v19;
  }

  while (v19);
  if (!v20)
  {
LABEL_23:
    sub_10006D9F0(Length, v11, v12, v13, v14, v15, v16, v17, theDict);
LABEL_24:
    v80 = 0;
    v99 = 0;
    v100 = 10;
    goto LABEL_22;
  }

  v23 = (*(v20 + 16) + *(v20 + 4));
  v24 = CFDataGetLength(theData);
  if (v24 < v23)
  {
    sub_10006D9DC(v24, v25, v26, v27, v28, v29, v30, v31, theDict);
    goto LABEL_24;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v33 = *(v20 + 4);
  v34 = &BytePtr[v33];
  v35 = (*&BytePtr[v33 + 20] + v33);
  v36 = CFDataGetLength(theData);
  if (v36 < v35)
  {
    sub_10006D9C8(v36, v37, v38, v39, v40, v41, v42, v43, theDict);
    goto LABEL_24;
  }

  v44 = (*(v34 + 4) + *(v20 + 4));
  v45 = CFDataGetLength(theData);
  if (v45 < v44)
  {
    sub_10006D9B4(v45, v46, v47, v48, v49, v50, v51, v52, theDict);
    goto LABEL_24;
  }

  v53 = (*(v34 + 9) + *(v20 + 4));
  v54 = CFDataGetLength(theData);
  if (v54 < v53)
  {
    sub_10006D9A0(v54, v55, v56, v57, v58, v59, v60, v61, theDict);
    goto LABEL_24;
  }

  v62 = (*(v34 + 7) + *(v20 + 4));
  v63 = CFDataGetLength(theData);
  if (v63 < v62)
  {
    sub_10006D98C(v63, v64, v65, v66, v67, v68, v69, v70, theDict);
    goto LABEL_24;
  }

  if ((*(v34 + 7) + *(v34 + 5) + *(v34 + 9)) + 40 != *(v20 + 16))
  {
    sub_10006D938(v63, v64, v65, v66, v67, v68, v69, v70, theDict);
    goto LABEL_24;
  }

  v71 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v71, 0);
  v80 = Mutable;
  if (!Mutable)
  {
    sub_10006D978(0, v73, v74, v75, v76, v77, v78, v79, theDict);
    v99 = 0;
LABEL_35:
    v100 = 2;
    goto LABEL_22;
  }

  theDicta = a3;
  key = a4;
  v81 = a5;
  if (*(a1[6] + 4) == 520417)
  {
    CFDataSetLength(Mutable, 48);
    v82 = CFDataGetBytePtr(theData);
    v83 = *(v20 + 4);
    v84 = *(v34 + 5);
    MutableBytePtr = CFDataGetMutableBytePtr(v80);
    CC_SHA384(&v82[v83], v84 + 40, MutableBytePtr);
    DWORD1(v105[0]) = *(v20 + 4) + *(v34 + 5) + 40;
    LODWORD(v105[0]) = CFDataGetLength(theData) - DWORD1(v105[0]);
    sub_10000EA30(v18, DWORD1(v105[0]), v105 + 8);
    v86 = CFGetAllocator(a1);
    v87 = v105;
    v88 = 72;
  }

  else
  {
    CFDataSetLength(Mutable, 32);
    v89 = CFDataGetBytePtr(theData);
    v90 = *(v20 + 4);
    v91 = *(v34 + 5);
    v92 = CFDataGetMutableBytePtr(v80);
    CC_SHA256(&v89[v90], v91 + 40, v92);
    *&bytes[4] = *(v20 + 4) + *(v34 + 5) + 40;
    *bytes = CFDataGetLength(theData) - *&bytes[4];
    sub_10000F65C(v18, *&bytes[4], &bytes[8]);
    v86 = CFGetAllocator(a1);
    v87 = bytes;
    v88 = 40;
  }

  v99 = CFDataCreate(v86, v87, v88);
  if (!v99)
  {
    sub_10006D94C(0, key, v93, v94, v95, v96, v97, v98);
    goto LABEL_35;
  }

  CFDictionarySetValue(theDicta, key, v80);
  CFDictionarySetValue(theDicta, v81, v99);
  v100 = 0;
LABEL_22:
  SafeRelease(v80);
  SafeRelease(v99);
  return v100;
}

int8x16_t sub_10000F65C(const void *a1, CC_LONG a2, int8x16_t *a3)
{
  memset(&v8, 0, sizeof(v8));
  CC_SHA256_Init(&v8);
  CC_SHA256_Update(&v8, a1, a2);
  result = vrev32q_s8(*v8.hash);
  v7 = vrev32q_s8(*&v8.hash[4]);
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t AMAuthInstallMonetStitchTme(void *a1, const __CFData *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1[6] + 4) != 2044129)
  {
    sub_10006DA04();
  }

  return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, @"TME-HashTableBody-Blob", 0, a7, a8);
}

uint64_t AMAuthInstallMonetCreateMEIDFromString(int a1, CFStringRef theString, CFTypeRef *a3)
{
  v4 = theString;
  cf = 0;
  if (CFStringGetLength(theString) == 15)
  {
    v15.length = CFStringGetLength(v4) - 1;
    v15.location = 0;
    v5 = CFStringCreateWithSubstring(kCFAllocatorDefault, v4, v15);
    v4 = v5;
  }

  else
  {
    v5 = 0;
  }

  v6 = AMAuthInstallSupportCopyDataFromHexString(kCFAllocatorDefault, v4, &cf);
  if (v6)
  {
    v12 = v6;
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateMEIDFromString", "failed to convert meid (%@) to data", v7, v8, v9, v10, v11, v4);
  }

  else if (cf)
  {
    v12 = 0;
    *a3 = CFRetain(cf);
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateMEIDFromString", "meid (%@) tempData is NULL", v7, v8, v9, v10, v11, v4);
    v12 = 14;
  }

  SafeRelease(v5);
  SafeRelease(cf);
  return v12;
}

uint64_t AMAuthInstallMonetCreateReversedMEIDFromString(int a1, const __CFString *a2, CFTypeRef *a3)
{
  v4 = a2;
  theData = 0;
  v27 = 0;
  MEIDFromString = AMAuthInstallMonetCreateMEIDFromString(a1, a2, &v27);
  if (MEIDFromString)
  {
    v24 = MEIDFromString;
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "failed to convert meid (%@) to data", v6, v7, v8, v9, v10, v4);
    v18 = 0;
    v11 = v27;
    goto LABEL_6;
  }

  v11 = v27;
  if (!v27)
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "meid (%@) tempData is NULL", v6, v7, v8, v9, v10, v4);
    v18 = 0;
LABEL_11:
    v24 = 14;
    goto LABEL_6;
  }

  ReversedMEID = AMAuthInstallMonetCreateReversedMEID(kCFAllocatorDefault, v27, &theData);
  if (ReversedMEID)
  {
    v24 = ReversedMEID;
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "failed to reverse meid (%@)", v13, v14, v15, v16, v17, v4);
    v18 = theData;
    goto LABEL_6;
  }

  v18 = theData;
  if (!theData)
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "meid (%@) reversedData is NULL", v13, v14, v15, v16, v17, v4);
    goto LABEL_11;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(v18);
  AMAuthInstallLogDumpMemory(7, "AMAuthInstallMonetCreateReversedMEIDFromString", "reversed meid", BytePtr, Length, v21, v22, v23);
  v24 = 0;
  *a3 = CFRetain(v18);
LABEL_6:
  SafeRelease(0);
  SafeRelease(v11);
  SafeRelease(v18);
  return v24;
}

void *sub_10000FAFC(void *a1, const __CFData *a2, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25Chunk", "Stitch Debug: \n StitchAddress: 0x%x \n 64-Byte-Aligned: %s \n 128-Byte-Aligned: %s\n stitchDataSize = %d stitchDataOffset = %d Len(newFileData) = %d", a4, a5, a6, a7, a8, a1);
  v12 = &CFDataGetBytePtr(a2)[a3];

  return memcpy(a1, v12, a4);
}

uint64_t sub_10000FBA0(uint64_t a1)
{
  result = 0;
  *v1 = a1;
  return result;
}

UInt8 *sub_10000FBC0()
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 16);

  return CFDataGetMutableBytePtr(v0);
}

void sub_10000FBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  AMAuthInstallLog(7, v9, a3, a4, a5, a6, a7, a8, a9);
}

CFDataRef sub_10000FC34(const __CFAllocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFErrorRef error)
{
  v14 = *(v12 + 176);

  return CFPropertyListCreateData(a1, v14, kCFPropertyListXMLFormat_v1_0, 0, &error);
}

uint64_t AMAuthInstallPlatformCreateSoftLink(const __CFURL *a1, CFURLRef url)
{
  if (!CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024) || !CFURLGetFileSystemRepresentation(a1, 1u, v16, 1024))
  {
    return 3;
  }

  result = symlink(buffer, v16);
  if (result)
  {
    v4 = __error();
    v5 = strerror(*v4);
    AMAuthInstallLog(3, "AMAuthInstallPlatformCreateSoftLink", "failed to create link: %s", v6, v7, v8, v9, v10, v5);
    AMAuthInstallLog(7, "AMAuthInstallPlatformCreateSoftLink", "source path: %s; dest path: %s", v11, v12, v13, v14, v15, buffer);
    return 4;
  }

  return result;
}

char *AMAuthInstallPlatformMakeDirectoryForURL(const __CFURL *a1)
{
  strcpy(__delim, "/");
  bzero(__str, 0x400uLL);
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return 3;
  }

  v2 = strlen(buffer);
  if (!CFURLHasDirectoryPath(a1))
  {
    if (v2)
    {
      do
      {
        v3 = v2 - 1;
        v4 = __delim[v2 + 1] == 47 || v2 == 1;
        --v2;
      }

      while (!v4);
    }

    else
    {
      v3 = 0;
    }

    buffer[v3] = 0;
  }

  __stringp = buffer;
  result = strsep(&__stringp, __delim);
  if (result)
  {
    v6 = "Could not stat (%s)";
    while (1)
    {
      memset(&v19, 0, sizeof(v19));
      if (*result)
      {
        snprintf(__str, 0x400uLL, "%s%c%s", __str, 47, result);
        if (stat(__str, &v19) == -1)
        {
          if (*__error() != 2)
          {
            goto LABEL_23;
          }

          if (mkdir(__str, 0x1EDu) == -1 && *__error() != 17)
          {
            break;
          }
        }
      }

      result = strsep(&__stringp, __delim);
      if (!result)
      {
        return result;
      }
    }

    v6 = "Could not mkdir (%s)";
LABEL_23:
    v7 = __error();
    v8 = strerror(*v7);
    AMAuthInstallLog(3, "AMAuthInstallPlatformMakeDirectoryForURL", v6, v9, v10, v11, v12, v13, v8);
    AMAuthInstallLog(7, "AMAuthInstallPlatformMakeDirectoryForURL", "%s", v14, v15, v16, v17, v18, __str);
    return 4;
  }

  return result;
}

uint64_t AMAuthInstallPlatformRemoveDirectory(const __CFURL *a1)
{
  v1 = a1;
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return 3;
  }

  v17 = 0;
  v2 = &v17;
  v3 = sub_10001007C(buffer, &v17);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    if (!rmdir(buffer))
    {
      return 0;
    }

    v4 = 4;
    v2 = __error();
  }

  v5 = strerror(*v2);
  AMAuthInstallLog(3, "AMAuthInstallPlatformRemoveDirectory", "failed to remove directory: %s", v6, v7, v8, v9, v10, v5);
  AMAuthInstallLog(7, "AMAuthInstallPlatformRemoveDirectory", "url=%@, path=%s", v11, v12, v13, v14, v15, v1);
  return v4;
}

uint64_t sub_10001007C(const char *a1, int *a2)
{
  v4 = opendir(a1);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  for (i = readdir(v4); i; i = readdir(v5))
  {
    if (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2]))
    {
      snprintf(__str, 0x400uLL, "%s%c%s", a1, 47, i->d_name);
      memset(&v8, 0, sizeof(v8));
      if (!lstat(__str, &v8))
      {
        if ((v8.st_mode & 0x4000) != 0)
        {
          if (sub_10001007C(__str, a2))
          {
            return 4;
          }

          if (rmdir(__str))
          {
            goto LABEL_15;
          }
        }

        else if (unlink(__str))
        {
          goto LABEL_15;
        }
      }
    }
  }

  result = closedir(v5);
  if (result)
  {
LABEL_15:
    *a2 = *__error();
    return 4;
  }

  return result;
}

uint64_t AMAuthInstallPlatformRemoveFile(const __CFURL *a1)
{
  v1 = a1;
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return 3;
  }

  result = remove(buffer, v2);
  if (result)
  {
    v4 = __error();
    v5 = strerror(*v4);
    AMAuthInstallLog(3, "AMAuthInstallPlatformRemoveFile", "failed to file: %s", v6, v7, v8, v9, v10, v5);
    AMAuthInstallLog(7, "AMAuthInstallPlatformRemoveFile", "url=%@, path=%s", v11, v12, v13, v14, v15, v1);
    return 4;
  }

  return result;
}

const __CFString *sub_1000102D0()
{
  v1 = 32;
  result = sysctlbyname("kern.osversion", v3, &v1, 0, 0);
  if (!result)
  {
    v1 = 32;
    if (!sysctlbyname("hw.product", v2, &v1, 0, 0) || (result = sysctlbyname("hw.machine", v2, &v1, 0, 0), !result))
    {
      result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"mac/%s/%s", v3, v2);
      if (result)
      {
        goto LABEL_5;
      }
    }
  }

  if (!qword_1000C8798)
  {
    result = @"???";
LABEL_5:
    qword_1000C8798 = result;
  }

  return result;
}

uint64_t _AMAuthInstallSupportsECProvision(uint64_t a1)
{
  result = 0;
  v3 = *(*(a1 + 48) + 4);
  if (v3 <= 241888)
  {
    v6 = v3 - 96;
    v7 = v6 > 7;
    v8 = (1 << v6) & 0xA1;
    if (v7 || v8 == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 > 9572576)
    {
      v4 = v3 == 9572577;
      v5 = 9781473;
    }

    else
    {
      v4 = v3 == 241889;
      v5 = 8343777;
    }

    if (!v4 && v3 != v5)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100010474(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CFTypeRef a11)
{
  a11 = 0;

  return AMAuthInstallMonetCreateReversedMEIDFromString(v11, a1, &a11);
}

uint64_t sub_1000104A8(const __CFAllocator *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return AMAuthInstallHttpSetUriEscapedValue(a1, v8, a3, v9, a5, a6, a7, a8);
}

CFAllocatorRef sub_1000104C0()
{

  return CFGetAllocator(v0);
}

uint64_t AMAuthInstallRembrandtLocalRegisterKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 48) + 4);
  if (v8 > 100)
  {
    if (v8 != 101 && v8 != 103)
    {
      if (v8 != 104)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v8 == 94)
  {
LABEL_9:
    AMAuthInstallCryptoRegisterKeysFromECCBuffer();
    AMAuthInstallCryptoRegisterKeysFromECCBuffer();
    AMAuthInstallCryptoRegisterKeysFromECCBuffer();
    AMAuthInstallCryptoRegisterKeysFromECCBuffer();
    AMAuthInstallCryptoRegisterKeysFromECCBuffer();
    AMAuthInstallCryptoRegisterKeysFromECCBuffer();
    goto LABEL_10;
  }

  if (v8 == 96)
  {
LABEL_8:
    AMAuthInstallCryptoRegisterKeysFromPEMBuffer();
    AMAuthInstallCryptoRegisterKeysFromPEMBuffer();
LABEL_10:
    AMAuthInstallLog(6, "AMAuthInstallRembrandtLocalRegisterKeys", "rembrandt local signing keys available", v9, v10, v11, v12, v13, v15);
    return 0;
  }

LABEL_11:
  AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalRegisterKeys", "unknown chipID", a4, a5, a6, a7, a8, v15);
  return 99;
}

void sub_100010788(const __CFString *a1, const void *a2, CFMutableDictionaryRef *a3)
{
  MutableCopy = kCFAllocatorDefault;
  v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@,", *(*(*a3 + 2) + 160));
  v20 = *(*a3 + 11);
  v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"@%@");
  if (v15 && (MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, a1)) != 0)
  {
    if (CFStringHasPrefix(a1, @"Ap,"))
    {
      v16 = MutableCopy;
      v17.location = 0;
      v17.length = 3;
LABEL_7:
      CFStringReplace(v16, v17, v7);
      v18 = a3[1];
      v19 = MutableCopy;
LABEL_8:
      CFDictionarySetValue(v18, v19, a2);
      CFDictionaryRemoveValue(a3[1], a1);
      goto LABEL_9;
    }

    if (CFStringHasPrefix(a1, @"Ap"))
    {
      v16 = MutableCopy;
      v17.location = 0;
      v17.length = 2;
      goto LABEL_7;
    }

    if (CFStringCompare(a1, @"@ApImg4Ticket", 0) == kCFCompareEqualTo)
    {
      v18 = a3[1];
      v19 = v15;
      goto LABEL_8;
    }
  }

  else
  {
    sub_100072340(0, v8, v9, v10, v11, v12, v13, v14, v20);
  }

LABEL_9:
  SafeRelease(v7);
  SafeRelease(v15);

  SafeRelease(MutableCopy);
}

void sub_100010900(void *key, const void *a2, CFDictionaryRef theDict)
{
  if (CFDictionaryContainsKey(theDict, key))
  {
    Value = CFDictionaryGetValue(theDict, key);
    CFDictionarySetValue(theDict, a2, Value);

    CFDictionaryRemoveValue(theDict, key);
  }
}

void sub_100010984(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%lld", a3);
  v6 = v5;
  if (a1 && a2 && v5)
  {
    CFDictionarySetValue(a1, a2, v5);
  }

  else if (!v5)
  {
    return;
  }

  CFRelease(v6);
}

uint64_t AMAuthInstallSsoInitialize()
{
  if (qword_1000C87B0)
  {
    goto LABEL_5;
  }

  v0 = dlopen("/usr/lib/libSoftwareUpdateSSO.dylib", 1);
  qword_1000C87B0 = v0;
  if (v0)
  {
    off_1000C87C0 = dlsym(v0, "copyPersonalizationSSOToken");
    if (off_1000C87C0)
    {
      AMAuthInstallLog(7, "AMAuthInstallSsoInitialize", "SoftwareUpdateSSO dylib found", v8, v9, v10, v11, v12, v28);
LABEL_5:
      v13 = 0;
      goto LABEL_6;
    }

    sub_100072A48(0, v6, v7, v8, v9, v10, v11, v12);
    v13 = 8;
  }

  else
  {
    v13 = 4;
  }

  AMAuthInstallLog(3, "AMAuthInstallSsoInitialize", "SoftwareUpdateSSO dylib not found", v1, v2, v3, v4, v5, v28);
LABEL_6:
  if (!qword_1000C87A0)
  {
    v14 = dlopen("/usr/lib/libacmobileshim.dylib", 1);
    qword_1000C87A0 = v14;
    if (v14)
    {
      off_1000C87B8 = dlsym(v14, "ACMobileShimCopyTicket");
      if (off_1000C87B8)
      {
        AMAuthInstallLog(7, "AMAuthInstallSsoInitialize", "ACMobileShim dylib found", v22, v23, v24, v25, v26, v28);
        return 0;
      }

      sub_100072A8C(0, v20, v21, v22, v23, v24, v25, v26);
      v13 = 8;
    }

    else
    {
      v13 = 4;
    }

    AMAuthInstallLog(3, "AMAuthInstallSsoInitialize", "ACMobileShim dylib not found", v15, v16, v17, v18, v19, v28);
  }

  return v13;
}

uint64_t sub_100010B50(uint64_t a1, const __CFAllocator *a2, CFDataRef *a3, uint64_t *a4)
{
  error = 0;
  responseFlags = 0;
  err = 0;
  if (!a3)
  {
    sub_100072E3C();
    v24 = 0;
    v26 = 0;
    v25 = 1;
    goto LABEL_46;
  }

  v5 = (!a1 || !*(a1 + 112)) && byte_1000C87A8 == 0;
  valuePtr = 0;
  p_valuePtr = &valuePtr;
  v119 = 0x2000000000;
  v120 = 0;
  v115 = 0;
  v116[0] = &v115;
  v116[1] = 0x2000000000;
  v116[2] = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2000000000;
  v114 = 0;
  if (off_1000C87C0)
  {
    v6 = a4;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v8 = Mutable;
    if (v5)
    {
      v9 = &kCFBooleanFalse;
    }

    else
    {
      v9 = &kCFBooleanTrue;
    }

    CFDictionaryAddValue(Mutable, @"stealthMode", *v9);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1107296256;
    block[2] = sub_1000114E8;
    block[3] = &unk_1000AA650;
    block[4] = &valuePtr;
    block[5] = &v115;
    block[6] = &v111;
    block[7] = v8;
    dispatch_async(global_queue, block);
    if ((v112[3] & 1) == 0)
    {
      do
      {
        CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 1u);
      }

      while (*(v112 + 24) != 1);
    }

    if (*(v116[0] + 24) || (v11 = p_valuePtr[3]) == 0)
    {
      sub_100072B24();
      LOBYTE(Value) = 0;
    }

    else
    {
      Value = CFDictionaryGetValue(v11, @"ssodata");
      if (Value)
      {
        AMAuthInstallLog(6, "_AMAuthInstallSsoCopyTicketUsingSUSSO", "_AMAuthInstallSsoCopyTicketUsingSUSSO successfully acquired ssoData", v12, v13, v14, v15, v16, v100);
        v18 = 0;
        *a3 = CFDataCreateCopy(kCFAllocatorDefault, Value);
        LOBYTE(Value) = 1;
        goto LABEL_16;
      }

      sub_100072AD0(v116);
    }

    v18 = 99;
  }

  else
  {
    v6 = a4;
    sub_100072B6C();
    LOBYTE(Value) = 0;
    v8 = 0;
    v18 = 8;
  }

LABEL_16:
  SafeRelease(v8);
  SafeRelease(p_valuePtr[3]);
  SafeRelease(*(v116[0] + 24));
  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v115, 8);
  _Block_object_dispose(&valuePtr, 8);
  if (Value)
  {
    v24 = 0;
    v25 = 0;
LABEL_18:
    v26 = 0;
    goto LABEL_46;
  }

  if (v6)
  {
    v27 = *v6;
  }

  AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to get a ticket using SUSSO, status:%d, error:%@", v19, v20, v21, v22, v23, v18);
  if (!v5)
  {
    sub_100072BB4();
    v24 = 0;
    v26 = 0;
    v25 = 21;
    goto LABEL_46;
  }

  if (!off_1000C87B8)
  {
    sub_100072DF4();
    v24 = 0;
    v26 = 0;
LABEL_67:
    v25 = 8;
    goto LABEL_46;
  }

  LODWORD(valuePtr) = 0;
  LODWORD(v115) = 1;
  LODWORD(v111) = 0;
  block[0] = 0;
  v28 = CFNumberCreate(a2, kCFNumberIntType, &valuePtr);
  v105 = v6;
  v102 = a3;
  v103 = v28;
  if (!v28)
  {
    v104 = 0;
    v33 = 0;
    v43 = 0;
    v30 = 0;
    v31 = 0;
    v29 = 0;
LABEL_81:
    v44 = 0;
    v25 = 2;
    goto LABEL_37;
  }

  v29 = CFNumberCreate(a2, kCFNumberIntType, &v115);
  if (!v29)
  {
    v104 = 0;
    v33 = 0;
    v43 = 0;
    v28 = 0;
    v30 = 0;
LABEL_73:
    v31 = 0;
    goto LABEL_81;
  }

  v30 = CFArrayCreateMutable(a2, 0, &kCFTypeArrayCallBacks);
  if (!v30)
  {
    v104 = 0;
    v33 = 0;
    v43 = 0;
    v28 = 0;
    goto LABEL_73;
  }

  v31 = CFArrayCreateMutable(a2, 0, &kCFTypeArrayCallBacks);
  if (!v31)
  {
    v104 = 0;
    v33 = 0;
LABEL_76:
    v43 = 0;
    goto LABEL_80;
  }

  CFArrayAppendValue(v30, v28);
  CFArrayAppendValue(v30, v28);
  CFArrayAppendValue(v31, v29);
  CFArrayAppendValue(v31, v29);
  v32 = CFArrayCreateMutable(a2, 0, &kCFTypeArrayCallBacks);
  v33 = v32;
  if (!v32)
  {
    v104 = 0;
    goto LABEL_76;
  }

  CFArrayAppendValue(v32, @"Username");
  CFArrayAppendValue(v33, @"Password");
  v34 = sub_1000723D8(block, 0);
  if ((v34 & 7) != 0)
  {
    v25 = v34;
    sub_100072BFC(v34, v35, v36, v37, v38, v39, v40, v41);
    v104 = 0;
    v43 = 0;
    v28 = 0;
    v44 = 0;
    goto LABEL_37;
  }

  if (block[0])
  {
    v42 = CFArrayCreateMutable(a2, 0, &kCFTypeArrayCallBacks);
    v43 = v42;
    if (v42)
    {
      CFArrayAppendValue(v42, block[0]);
      goto LABEL_33;
    }

    v104 = 0;
LABEL_80:
    v28 = 0;
    goto LABEL_81;
  }

  v43 = 0;
LABEL_33:
  v28 = CFDictionaryCreateMutable(a2, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v28)
  {
    v104 = 0;
    goto LABEL_81;
  }

  v44 = CFNumberCreate(a2, kCFNumberIntType, &v111);
  CFDictionaryAddValue(v28, kCFUserNotificationAlertHeaderKey, @"AppleConnect");
  CFDictionaryAddValue(v28, kCFUserNotificationTextFieldTitlesKey, v33);
  CFDictionaryAddValue(v28, kCFUserNotificationDefaultButtonTitleKey, @"OK");
  CFDictionaryAddValue(v28, kCFUserNotificationAlternateButtonTitleKey, @"Cancel");
  CFDictionaryAddValue(v28, @"SBUserNotificationBehavesSuperModally", kCFBooleanTrue);
  CFDictionaryAddValue(v28, @"SBUserNotificationTextAutocapitalizationType", v30);
  CFDictionaryAddValue(v28, @"SBUserNotificationTextAutocorrectionType", v31);
  CFDictionaryAddValue(v28, @"SBUserNotificationDontDismissOnUnlock", kCFBooleanTrue);
  CFDictionaryAddValue(v28, @"DismissOnLock", kCFBooleanFalse);
  CFDictionaryAddValue(v28, kCFUserNotificationKeyboardTypesKey, v44);
  CFDictionaryAddValue(v28, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
  CFDictionaryAddValue(v28, @"SBUserNotificationDisplayActionButtonOnLockScreen", kCFBooleanTrue);
  if (v43)
  {
    CFDictionaryAddValue(v28, kCFUserNotificationTextFieldValuesKey, v43);
  }

  v104 = CFRetain(v28);
  v25 = 0;
LABEL_37:
  SafeRelease(0);
  SafeRelease(v33);
  SafeRelease(v43);
  SafeRelease(v28);
  SafeRelease(block[0]);
  SafeRelease(v30);
  SafeRelease(v31);
  SafeRelease(v103);
  SafeRelease(v29);
  SafeRelease(v44);
  v24 = v104;
  if (v25 || !v104)
  {
    sub_100072D78(v25, v6, v45, v46, v47, v48, v49, v50);
    goto LABEL_18;
  }

  AMAuthInstallLog(5, "_AMAuthInstallSsoCreateServiceTicket", "%s: Creating user notification", v46, v47, v48, v49, v50, "_AMAuthInstallSsoCreateServiceTicket");
  v51 = CFUserNotificationCreate(a2, 0.0, 0x20000uLL, &error, v104);
  v26 = v51;
  if (!v51)
  {
    sub_100072D0C(v105, v52, v53, v54, v55, v56, v57, v58);
    v25 = 2;
    goto LABEL_46;
  }

  error = CFUserNotificationReceiveResponse(v51, 300.0, &responseFlags);
  if (error)
  {
    CFUserNotificationCancel(v26);
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to receive CFUserNotification response %d", v64, v65, v66, v67, v68, error);
LABEL_42:
    v25 = 8;
LABEL_45:
    AMSupportCreateErrorInternal();
    goto LABEL_46;
  }

  responseFlags &= 3u;
  if (responseFlags == 1)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "user canceled AppleConnect login.", v59, v60, v61, v62, v63, v101);
    v25 = 21;
    goto LABEL_45;
  }

  ResponseDictionary = CFUserNotificationGetResponseDictionary(v26);
  if (!ResponseDictionary)
  {
    sub_100072CA0(v105, v71, v72, v73, v74, v75, v76, v77);
    goto LABEL_67;
  }

  v78 = CFDictionaryGetValue(ResponseDictionary, kCFUserNotificationTextFieldValuesKey);
  if (!v78 || (v84 = v78, CFArrayGetCount(v78) < 0))
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to get CFUserNotification textField values", v79, v80, v81, v82, v83, v101);
    goto LABEL_42;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v84, 0);
  v86 = CFArrayGetValueAtIndex(v84, 1);
  if (!ValueAtIndex || (v92 = v86, CFStringGetLength(ValueAtIndex) < 1) || !v92 || CFStringGetLength(v92) <= 0)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to get username and password values", v87, v88, v89, v90, v91, v101);
    v25 = 1;
    goto LABEL_45;
  }

  v93 = sub_10007279C(ValueAtIndex);
  if (v93)
  {
    v25 = v93;
    sub_100072C28(v93, v105, v94, v95, v96, v97, v98, v99);
    goto LABEL_46;
  }

  v25 = off_1000C87B8(ValueAtIndex, v92, v102, &err);
  if (v25 && err)
  {
    CFErrorGetCode(err);
    goto LABEL_45;
  }

LABEL_46:
  SafeRelease(v26);
  SafeRelease(v24);
  return v25;
}

CFTypeRef sub_1000114E8(void *a1)
{
  *(*(a1[4] + 8) + 24) = off_1000C87C0(a1[7], *(a1[5] + 8) + 24);
  SafeRetain(*(*(a1[4] + 8) + 24));
  result = SafeRetain(*(*(a1[5] + 8) + 24));
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

void sub_100011560(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void sub_1000115C0(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void SafeRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef SafeRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void SafeFree(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void _CFDictionarySetInteger64(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
  if (!v5)
  {
    sub_100073CBC();
  }

  v6 = v5;
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v6);
}

void _CFDictionarySetInteger32(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (!v5)
  {
    sub_100073CE8();
  }

  v6 = v5;
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v6);
}

void AMAuthInstallSupportDictionarySetBoolean(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = &kCFBooleanTrue;
  if (!a3)
  {
    v3 = &kCFBooleanFalse;
  }

  CFDictionarySetValue(a1, a2, *v3);
}

void _CFDictionarySetBoolean(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = &kCFBooleanTrue;
  if (!a3)
  {
    v3 = &kCFBooleanFalse;
  }

  CFDictionarySetValue(a1, a2, *v3);
}

CFArrayRef _CFArrayCreateWithObjects(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v13 = &a9;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *values = 0u;
  v15 = 0u;
  while (1)
  {
    v10 = v13++;
    v11 = *v10;
    if (!v11)
    {
      break;
    }

    values[v9++] = v11;
    if (v9 == 32)
    {
      return 0;
    }
  }

  return CFArrayCreate(a1, values, v9, &kCFTypeArrayCallBacks);
}