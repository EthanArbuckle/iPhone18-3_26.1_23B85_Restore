uint64_t MASetFrameworkProfileLogger()
{
  _log = os_log_create(kManagedAssetLogSubsystem, "Framework-Profile");

  return MEMORY[0x2821F96F8]();
}

void sub_25808A3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25808A760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25808A9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25808AC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25808AF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25808B280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25808B548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25808BA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_25808CBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_25808D380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_25808DBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 200), 8);
  _Block_object_dispose((v36 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_25808E840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 240), 8);
  _Block_object_dispose((v47 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_25808ED28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t *OUTLINED_FUNCTION_7@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t MAVerifySerializedAssetBlob(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (!v3 || (v7 = v4, v4 <= 0xF))
  {
    v15 = @"v2 asset blob is nil or too small";
    v16 = 23;
LABEL_16:
    createManagedAssetError("MAVerifySerializedAssetBlob", v16, -20103, 0, 0, v15, v5, v6, v18);
    goto LABEL_17;
  }

  v8 = [v3 bytes];
  if (*v8 != 2)
  {
    createManagedAssetError("MAVerifySerializedAssetBlob", 29, -20103, 0, 0, @"corrupted v2 asset blob (common hdr type: %u)", v5, v6, *v8);
LABEL_17:
    *a2 = v14 = 0;
    goto LABEL_18;
  }

  if (*(v8 + 2) != 2)
  {
    createManagedAssetError("MAVerifySerializedAssetBlob", 33, -20103, 0, 0, @"corrupted v2 asset blob (hdr version: %u)", v5, v6, *(v8 + 2));
    goto LABEL_17;
  }

  if ((*(v8 + 1) + 1) >= 4)
  {
    v18 = *(v8 + 1);
    v15 = @"corrupted v2 asset blob (profile type: %llu)";
    v16 = 44;
    goto LABEL_16;
  }

  v9 = *(v8 + 3);
  v10 = 8 * v9 + 16;
  if (*(v8 + 3))
  {
    v11 = (v8 + 20);
    do
    {
      v12 = v10 + *(v11 - 1);
      v13 = *v11;
      v11 += 2;
      v10 = v12 + v13;
      --v9;
    }

    while (v9);
  }

  if (v7 != v10)
  {
    createManagedAssetError("MAVerifySerializedAssetBlob", 56, -20103, 0, 0, @"v2 asset blob size mismatches (actual: %lu, expected: %lu)", v5, v6, v7);
    goto LABEL_17;
  }

  v14 = 1;
LABEL_18:

  return v14;
}

id MAConsturctAssetBlob(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v10 = 8 * [v7 count] + 16;
  if (v10 > a1)
  {
    createManagedAssetError("MAConsturctAssetBlob", 71, -20102, 0, 0, @"allocated buffer (size: %lu) is too small", v8, v9, a1);
LABEL_5:
    *a4 = v13 = 0;
    goto LABEL_16;
  }

  if ([v7 count] >= 0x10000)
  {
    createManagedAssetError("MAConsturctAssetBlob", 76, -20102, 0, 0, @"too many assets to be encoded, limit is %u", v11, v12, 0xFFFFLL);
    goto LABEL_5;
  }

  v14 = [MEMORY[0x277CBEB28] dataWithLength:a1];
  v17 = v14;
  if (v14)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = [v14 mutableBytes];
    v18 = v36[3];
    *v18 = 2;
    *(v18 + 4) = 2;
    *(v18 + 6) = [v7 count];
    *(v18 + 8) = a2;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = v10;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__0;
    v29 = __Block_byref_object_dispose__0;
    v30 = 0;
    v36[3] += v10;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __MAConsturctAssetBlob_block_invoke;
    v24[3] = &unk_27985EEF0;
    v24[4] = &v25;
    v24[5] = &v35;
    v24[6] = &v31;
    v24[7] = v18;
    [v7 enumerateObjectsUsingBlock:v24];
    v21 = v26[5];
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      if (v32[3] == a1)
      {
        v13 = v17;
LABEL_14:
        _Block_object_dispose(&v25, 8);

        _Block_object_dispose(&v31, 8);
        _Block_object_dispose(&v35, 8);
        goto LABEL_15;
      }

      v22 = createManagedAssetError("MAConsturctAssetBlob", 155, -20102, 0, 0, @"buffered blob size (%lu) mismathces expected size (%lu)", v19, v20, a1);
    }

    v13 = 0;
    *a4 = v22;
    goto LABEL_14;
  }

  createManagedAssetError("MAConsturctAssetBlob", 82, -20102, 0, 0, @"failed to allocate data buffer with size %lu", v15, v16, a1);
  *a4 = v13 = 0;
LABEL_15:

LABEL_16:

  return v13;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __MAConsturctAssetBlob_block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (!([v7 assetDataLen] >> 32))
  {
    v10 = [v7 assetMetaData];
    v11 = [v10 length];

    if (v11 < 0x3E9)
    {
      v15 = [v7 assetMetaData];
      v16 = [v7 assetDataLen];
      v17 = [v7 assetData];

      if (v17)
      {
        memcpy(*(*(a1[5] + 8) + 24), [v15 bytes], objc_msgSend(v15, "length"));
        *(*(a1[5] + 8) + 24) += [v15 length];
        v18 = *(*(a1[5] + 8) + 24);
        v19 = [v7 assetData];
        v20 = [v19 bytes];
        v21 = [v7 assetData];
        memcpy(v18, v20, [v21 length]);

        v22 = [v7 assetData];
        *(*(a1[5] + 8) + 24) += [v22 length];

        v23 = 0;
      }

      else
      {
        v25 = [v7 assetFileHandle];

        if (v25)
        {
          v23 = [v7 assetFileHandle];
        }

        else
        {
          v26 = [v7 sandboxToken];
          v27 = [v7 assetDataPath];
          v28 = *(a1[4] + 8);
          obj = *(v28 + 40);
          v23 = MAOpenFileWithSandboxToken(v26, v27, &obj);
          objc_storeStrong((v28 + 40), obj);
        }

        if (*(*(a1[4] + 8) + 40) || ([v23 seekToFileOffset:0], v29 = *(a1[5] + 8), v30 = objc_msgSend(v23, "fileDescriptor"), v31 = *(a1[4] + 8), v39 = *(v31 + 40), v34 = MAReadMetaDataAndAssetData((v29 + 24), v32, v15, v30, v16, v33, &v39), objc_storeStrong((v31 + 40), v39), (v34 & 1) == 0))
        {
          *a4 = 1;
        }

        if (v23)
        {
          v35 = *(a1[4] + 8);
          v38 = *(v35 + 40);
          v36 = MACloseFileHandleHelper(v23, &v38);
          objc_storeStrong((v35 + 40), v38);
          if ((v36 & 1) == 0)
          {
            *a4 = 1;
            goto LABEL_7;
          }
        }
      }

      *(a1[7] + 8 * a3 + 16) = [v15 length];
      *(a1[7] + 8 * a3 + 20) = [v7 assetDataLen];
      v24 = [v15 length];
      *(*(a1[6] + 8) + 24) += [v7 assetDataLen] + v24;
LABEL_7:

      goto LABEL_8;
    }
  }

  v12 = createManagedAssetError("MAConsturctAssetBlob_block_invoke", 100, -20102, 0, 0, @"either metadata or asset data is too big", v8, v9, v37);
  v13 = *(a1[4] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  *a4 = 1;
LABEL_8:
}

id MAOpenFileWithSandboxToken(void *a1, void *a2, void *a3)
{
  v5 = a2;
  [a1 cStringUsingEncoding:4];
  if (sandbox_extension_consume() == -1)
  {
    v15 = *__error();
    createManagedAssetError("MAOpenFileWithSandboxToken", 168, -20000, 0, 0, @"sandbox extension consume error, errno=%u", v11, v12, v15);
  }

  else
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v6 isReadableFileAtPath:v5];

    if (v7)
    {
      v10 = [MEMORY[0x277CCA9F8] fileHandleForReadingAtPath:v5];
      goto LABEL_7;
    }

    createManagedAssetError("MAOpenFileWithSandboxToken", 172, -20013, 0, 0, @"cannot request the file/directory since client is unsandboxed.", v8, v9, v14);
  }

  *a3 = v10 = 0;
LABEL_7:
  sandbox_reference_release();

  return v10;
}

uint64_t MAReadMetaDataAndAssetData(void **a1, uint64_t a2, void *a3, int a4, unint64_t a5, uint64_t a6, void *a7)
{
  v11 = a3;
  memcpy(*a1, [v11 bytes], objc_msgSend(v11, "length"));
  *a1 = *a1 + [v11 length];
  v14 = 0;
  if (a5)
  {
    while (1)
    {
      while (1)
      {
        v15 = read(a4, *a1 + v14, 0x10000uLL);
        if (v15 != -1)
        {
          break;
        }

        if (*__error() != 4)
        {
          goto LABEL_11;
        }
      }

      if (!v15)
      {
        goto LABEL_8;
      }

      if (v15 < 0)
      {
        break;
      }

      v14 += v15;
      if (v14 >= a5)
      {
        goto LABEL_8;
      }
    }

LABEL_11:
    v20 = *__error();
    createManagedAssetError("MAReadMetaDataAndAssetData", 212, -20101, 0, 0, @"fail to perform read IO, errno = %d", v17, v18, v20);
    goto LABEL_12;
  }

LABEL_8:
  if (v14 != a5)
  {
    createManagedAssetError("MAReadMetaDataAndAssetData", 220, -20101, 0, 0, @"expected asset data size %lu, the actual size: %lu", v12, v13, a5);
LABEL_12:
    *a7 = v16 = 0;
    goto LABEL_13;
  }

  *a1 = *a1 + a5;
  v16 = 1;
LABEL_13:

  return v16;
}

uint64_t MACloseFileHandleHelper(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && ![v3 closeAndReturnError:a2])
  {
    v5 = 0;
  }

  else
  {

    v4 = 0;
    v5 = 1;
  }

  return v5;
}

ssize_t MAWriteDataUsingFileDescriptor(ssize_t result, int __fd, unint64_t a3, ssize_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = result;
  if (a3)
  {
    v12 = 0;
    while (2)
    {
      if (a3 - v12 >= 0x10000)
      {
        v13 = 0x10000;
      }

      else
      {
        v13 = a3 - v12;
      }

      while (1)
      {
        result = write(__fd, (*v10 + v12), v13);
        if (result != -1)
        {
          break;
        }

        if (*__error() != 4)
        {
          goto LABEL_17;
        }
      }

      if (!result)
      {
        break;
      }

      if (result < 0)
      {
LABEL_17:
        v16 = *__error();
        createManagedAssetError("MAWriteDataUsingFileDescriptor", 246, -20101, 0, 0, @"fail to perform write IO, errno = %d", v14, v15, v16);
        goto LABEL_18;
      }

      v12 += result;
      if (v12 < a3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v12 == a3)
  {
    *v10 += a3;
  }

  else
  {
    createManagedAssetError("MAWriteDataUsingFileDescriptor", 253, -20103, 0, 0, @"expected asset data size %lu, the actual size: %lu", a7, a8, a3);
    result = LABEL_18:;
    *a4 = result;
  }

  return result;
}

uint64_t MASetFramework3DAnchorLogger()
{
  _log_0 = os_log_create(kManagedAssetLogSubsystem, "Framework-3DAnchorPersist");

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2580920AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2580942BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2580946E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258094B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258094F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2580952E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_7_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id OUTLINED_FUNCTION_11(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  return a2;
}

uint64_t MASetFrameworkKVStoreLogger()
{
  _log_1 = os_log_create(kManagedAssetLogSubsystem, "Framework-KVStore");

  return MEMORY[0x2821F96F8]();
}

id createFieldsArray(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 name];
        v20[0] = v8;
        v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "type")}];
        v20[1] = v9;
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "options")}];
        v20[2] = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
        [v2 addObject:v11];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v12 = [v2 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void sub_258095F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id convertUpdateInput(void *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count") + 1}];
  v2 = [MEMORY[0x277CBEB58] set];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v34 + 1) + 8 * i) allKeys];
        [v2 addObjectsFromArray:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v5);
  }

  v21 = v2;
  v9 = [v2 allObjects];
  [v24 addObject:v9];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v25 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v25)
  {
    v23 = *v31;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * j);
        v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v13 = v9;
        v14 = [v13 countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v27;
          do
          {
            for (k = 0; k != v15; ++k)
            {
              if (*v27 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [v11 objectForKeyedSubscript:*(*(&v26 + 1) + 8 * k)];
              if (!v18)
              {
                v18 = [MEMORY[0x277CBEB68] null];
              }

              [v12 addObject:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v26 objects:v38 count:16];
          }

          while (v15);
        }

        [v24 addObject:v12];
      }

      v25 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v25);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v24;
}

void sub_258096B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_258097450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id convertChainedKVQueryOutput(void *a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = a1;
  if ([v2 count])
  {
    v3 = MEMORY[0x277CBEB18];
    v4 = v2;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v44 objects:v49 count:16];
    v31 = v2;
    if (v5)
    {
      v6 = 0;
      v7 = *v45;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v45 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v44 + 1) + 8 * i) count];
          v10 = v9 - 1;
          if (v9 <= 0)
          {
            v10 = 0;
          }

          v6 += v10;
        }

        v5 = [v4 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v5);
      v5 = v6;
    }

    v11 = [v3 arrayWithCapacity:v5];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v4;
    v12 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v41;
      v32 = *v41;
      v33 = v11;
      while (2)
      {
        v15 = 0;
        v34 = v13;
        do
        {
          if (*v41 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v40 + 1) + 8 * v15);
          v38 = v11;
          v39 = [v16 count];
          if (v39 >= 2)
          {
            v36 = v15;
            v17 = [v16 objectAtIndexedSubscript:0];
            v18 = [v17 count];
            v19 = 1;
            while (1)
            {
              v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v18];
              v21 = [v16 objectAtIndexedSubscript:v19];
              v22 = [v21 count];
              if (v22 != v18)
              {
                break;
              }

              if (v18)
              {
                for (j = 0; j != v18; ++j)
                {
                  v26 = [v21 objectAtIndexedSubscript:j];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v27 = [v17 objectAtIndexedSubscript:j];
                    [v20 setObject:v26 forKeyedSubscript:v27];
                  }
                }
              }

              if ([v20 count])
              {
                [v38 addObject:v20];
              }

              if (++v19 == v39)
              {
                goto LABEL_30;
              }
            }

            *a2 = createManagedAssetError("convertKVQueryOutput", 335, -20000, 0, 0, @"invalid response from masd, the value count %lu doens't match the key count %lu", v23, v24, v22);

LABEL_30:
            v14 = v32;
            v11 = v33;
            v13 = v34;
            v15 = v36;
          }

          if (*a2)
          {

            v28 = 0;
            goto LABEL_36;
          }

          ++v15;
        }

        while (v15 != v13);
        v13 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v28 = v11;
LABEL_36:

    v2 = v31;
  }

  else
  {
    v28 = MEMORY[0x277CBEBF8];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

void sub_258098140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_258098A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2580992A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2580995FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t MASetFrameworkFileAPILogger()
{
  _log_2 = os_log_create(kManagedAssetLogSubsystem, "Framework-FileAPI");

  return MEMORY[0x2821F96F8]();
}

void sub_25809A144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25809AC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_25809B5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25809BE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25809C6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_25809CAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_3_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*result + 8) + 40);
  return result;
}

uint64_t MASetFrameworkDebuggingAPILogger()
{
  _log_3 = os_log_create(kManagedAssetLogSubsystem, "Framework-DebuggingAPI");

  return MEMORY[0x2821F96F8]();
}

void sub_25809CF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25809D194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25809D420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25809D6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t MASDConvertAssetTypeToString(uint64_t a1)
{
  if (MASDConvertAssetTypeToString_onceToken != -1)
  {
    MASDConvertAssetTypeToString_cold_1();
  }

  v2 = _mapAssetTypeEnumToStr;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = [v4 UTF8String];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __MASDConvertAssetTypeToString_block_invoke()
{
  v4[31] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286942558;
  v3[1] = &unk_286942570;
  v4[0] = @"kGazeEnrollmentData";
  v4[1] = @"kGazeCoordinateData";
  v3[2] = &unk_286942588;
  v3[3] = &unk_2869425A0;
  v4[2] = @"kHandEnrollmentData";
  v4[3] = @"kHandTrackingData";
  v3[4] = &unk_2869425B8;
  v3[5] = &unk_2869425D0;
  v4[4] = @"kFaceEnrollmentData";
  v4[5] = @"kFaceTrackingData";
  v3[6] = &unk_2869425E8;
  v3[7] = &unk_286942600;
  v4[6] = @"kAvatarEnrollmentData";
  v4[7] = @"kHairEnrollmentData";
  v3[8] = &unk_286942618;
  v3[9] = &unk_286942630;
  v4[8] = @"kEarEnrollmentData";
  v4[9] = @"kAvatarLatents";
  v3[10] = &unk_286942648;
  v3[11] = &unk_286942660;
  v4[10] = @"kFaceLatents";
  v4[11] = @"kHairLatents";
  v3[12] = &unk_286942678;
  v3[13] = &unk_286942690;
  v4[12] = @"kEyesLatents";
  v4[13] = @"kBodyTrackingData";
  v3[14] = &unk_2869426A8;
  v3[15] = &unk_2869426C0;
  v4[14] = @"kClothesData";
  v4[15] = @"kHRTFData";
  v3[16] = &unk_2869426D8;
  v3[17] = &unk_2869426F0;
  v4[16] = @"kSpatialAudioData";
  v4[17] = @"kRoomReconstructedData";
  v3[18] = &unk_286942708;
  v3[19] = &unk_286942720;
  v4[18] = @"kRoomCreatedData";
  v4[19] = @"kGuardianData";
  v3[20] = &unk_286942738;
  v3[21] = &unk_286942750;
  v4[20] = @"kBodyEnrollmentData";
  v4[21] = @"kCorePrescriptionData";
  v3[22] = &unk_286942768;
  v3[23] = &unk_286942780;
  v4[22] = @"kFineGrainedHandEnrollmentData";
  v4[23] = @"kTestIOSOnlyData";
  v3[24] = &unk_286942798;
  v3[25] = &unk_2869427B0;
  v4[24] = @"kTestUnrestrictedData";
  v4[25] = @"kSyntheticGazeEnrollmentData";
  v3[26] = &unk_2869427C8;
  v3[27] = &unk_2869427E0;
  v4[26] = @"kDisplayAdjustmentData";
  v4[27] = @"kTestServerAttestation";
  v3[28] = &unk_2869427F8;
  v3[29] = &unk_286942810;
  v4[28] = @"kTestDeviceAttestationOnly";
  v4[29] = @"kTestCloudSyncAsset";
  v3[30] = &unk_286942828;
  v4[30] = @"kMAAnyAssets";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:31];
  v1 = _mapAssetTypeEnumToStr;
  _mapAssetTypeEnumToStr = v0;

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t MASDConvertAssetStringToType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (MASDConvertAssetStringToType_onceToken != -1)
    {
      MASDConvertAssetStringToType_cold_1();
    }

    v2 = [_mapAssetTypeStrToEnum objectForKey:v1];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 unsignedIntegerValue];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __MASDConvertAssetStringToType_block_invoke()
{
  v0 = _mapAssetTypeStrToEnum;
  _mapAssetTypeStrToEnum = &unk_286942858;
}

id getMASHA256Hash(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    CC_SHA256([v1 bytes], objc_msgSend(v1, "length"), md);
    v3 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
    for (i = 0; i != 32; ++i)
    {
      [v3 appendFormat:@"%02x", md[i]];
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t MAEncryptedRemoteAssetUtilInit()
{
  _log_4 = os_log_create(kManagedAssetLogSubsystem, "MAEncryptedRemoteAssetUtil");

  return MEMORY[0x2821F96F8]();
}

uint64_t MARandomBytes(size_t count, void *bytes, void *a3)
{
  v4 = SecRandomCopyBytes(*MEMORY[0x277CDC540], count, bytes);
  v7 = v4;
  if (v4)
  {
    *a3 = createManagedAssetError("MARandomBytes", 27, -20302, 0, 0, @"Fail to generate random data, rc=%d", v5, v6, v4);
    v8 = _log_4;
    if (os_log_type_enabled(_log_4, OS_LOG_TYPE_ERROR))
    {
      MARandomBytes_cold_1(v7, v8);
    }
  }

  return v7;
}

id MARandomData(size_t a1, void *a2)
{
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:a1];
  if (MARandomBytes(a1, [v4 mutableBytes], a2))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

id MARemoteAssetDecrypt(int a1, id a2, uint64_t *a3)
{
  v5 = a2;
  v6 = a2;
  v7 = [v6 bytes];
  v8 = [v6 length];

  v11 = v8 - 32;
  if (v8 <= 0x20)
  {
    *a3 = createManagedAssetError("MARemoteAssetDecrypt", 53, -20302, 0, 0, @"not enough data to decrypt, size %lu", v9, v10, v8);
    if (os_log_type_enabled(_log_4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (*v7 != 1)
  {
    *a3 = createManagedAssetError("MARemoteAssetDecrypt", 61, -20302, 0, 0, @"unknown decrypt type %u", v9, v10, *v7);
    if (os_log_type_enabled(_log_4, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      MARemoteAssetDecrypt_cold_1(a3);
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if ((v7[2] & 2) != 0)
  {
    if (v11 <= 0x10)
    {
      *a3 = createManagedAssetError("MARemoteAssetDecrypt", 71, -20302, 0, 0, @"not enough data to decrypt, size %lu", v9, v10, v8);
      if (os_log_type_enabled(_log_4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v11 = v8 - 48;
  }

  v14 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v11];
  ccaes_gcm_decrypt_mode();
  [v14 mutableBytes];
  v15 = ccgcm_one_shot();
  if (v15)
  {
    *a3 = createManagedAssetError("MARemoteAssetDecrypt", 90, -20302, 0, 0, @"failed to decrypt the data ret=%d", v16, v17, v15);
    v12 = 0;
    if (os_log_type_enabled(_log_4, OS_LOG_TYPE_ERROR))
    {
      MARemoteAssetDecrypt_cold_1(a3);
      v12 = 0;
    }
  }

  else
  {
    v12 = v14;
  }

LABEL_12:

  return v12;
}

id MARemoteAssetEncrypt(uint64_t a1, void *a2, char a3, char a4, void *a5, uint64_t *a6)
{
  v10 = a2;
  v11 = a5;
  v12 = MARandomData(0xCuLL, a6);
  if (v12)
  {
    if ((a4 & 2) == 0 || [v11 length] == 16)
    {
      v26 = [v10 bytes];
      v13 = [v10 length];
      v14 = v13 + 32;
      if ((a4 & 2) != 0)
      {
        v15 = [v11 length];
      }

      else
      {
        v15 = 0;
      }

      v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v15 + v14];
      v17 = [v16 mutableBytes];
      *v17 = 1;
      v17[1] = a3;
      v17[3] = 0;
      v17[2] = a4;
      if (!MARandomBytes(0xCuLL, v17 + 4, a6))
      {
        ccaes_gcm_encrypt_mode();
        v18 = ccgcm_one_shot();
        if (!v18)
        {
          if ((a4 & 2) != 0)
          {
            memcpy(&v17[v14], [v11 bytes], objc_msgSend(v11, "length"));
          }

          v21 = v16;
          goto LABEL_12;
        }

        *a6 = createManagedAssetError("MARemoteAssetEncrypt", 152, -20302, 0, 0, @"failed to encrypt the data ret=%d", v19, v20, v18);
        if (os_log_type_enabled(_log_4, OS_LOG_TYPE_ERROR))
        {
          MARemoteAssetDecrypt_cold_1(a6);
        }
      }

      v21 = 0;
LABEL_12:

      goto LABEL_16;
    }

    v22 = [v11 length];
    *a6 = createManagedAssetError("MARemoteAssetEncrypt", 121, -20001, 0, 0, @"invalid assetIdData size %lu", v23, v24, v22);
    if (os_log_type_enabled(_log_4, OS_LOG_TYPE_ERROR))
    {
      MARemoteAssetDecrypt_cold_1(a6);
    }
  }

  v21 = 0;
LABEL_16:

  return v21;
}

uint64_t MASDSerializedAssetsReadFrom(void *a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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
        v20 = objc_alloc_init(MASDPlainAsset);
        [a1 addAssets:v20];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !MASDPlainAssetReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
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

LABEL_36:
        a1[1] = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id createManagedAssetError(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a4;
  v15 = a5;
  v16 = MEMORY[0x277CCAB68];
  v17 = a6;
  v18 = [[v16 alloc] initWithFormat:v17 arguments:&a9];

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = v19;
  if (v18)
  {
    [v19 setObject:v18 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v15)
  {
    [v20 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (os_variant_allows_internal_security_policies())
  {
    if (a1)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
      [v20 setObject:v21 forKeyedSubscript:@"FunctionName"];
    }

    if (a2)
    {
      v22 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      [v20 setObject:v22 forKeyedSubscript:@"SourceLine"];
    }
  }

  if (v14)
  {
    [v20 addEntriesFromDictionary:v14];
  }

  v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ManagedAsset.ErrorDomain" code:a3 userInfo:v20];

  return v23;
}

uint64_t MASDPlainAssetReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          while (1)
          {
            LOBYTE(v40) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v40 & 0x7F) << v13;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_63:
              v35 = 32;
              goto LABEL_64;
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

          goto LABEL_63;
        case 2u:
          v20 = PBReaderReadString();
          v21 = 80;
          goto LABEL_53;
        case 3u:
          v40 = 0;
          v22 = [a2 position] + 8;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v37 = v40;
          v38 = 16;
          goto LABEL_69;
        case 4u:
          v40 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v37 = v40;
          v38 = 24;
LABEL_69:
          *(a1 + v38) = v37;
          goto LABEL_54;
        case 5u:
          v20 = PBReaderReadString();
          v21 = 96;
          goto LABEL_53;
        case 6u:
          v20 = PBReaderReadString();
          v21 = 88;
          goto LABEL_53;
        case 7u:
          v20 = PBReaderReadData();
          v21 = 40;
          goto LABEL_53;
        case 8u:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 112) |= 1u;
          break;
        case 9u:
          v20 = PBReaderReadString();
          v21 = 72;
          goto LABEL_53;
        case 0xAu:
          v20 = PBReaderReadData();
          v21 = 48;
          goto LABEL_53;
        case 0xBu:
          v20 = PBReaderReadData();
          v21 = 104;
          goto LABEL_53;
        case 0xCu:
          v20 = PBReaderReadString();
          v21 = 56;
          goto LABEL_53;
        case 0xDu:
          v20 = PBReaderReadString();
          v21 = 64;
LABEL_53:
          v33 = *(a1 + v21);
          *(a1 + v21) = v20;

          goto LABEL_54;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
      }

      while (1)
      {
        LOBYTE(v40) = 0;
        v29 = [a2 position] + 1;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v28 |= (v40 & 0x7F) << v26;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v26 += 7;
        v11 = v27++ >= 9;
        if (v11)
        {
          v19 = 0;
          goto LABEL_59;
        }
      }

      v19 = [a2 hasError] ? 0 : v28;
LABEL_59:
      v35 = 8;
LABEL_64:
      *(a1 + v35) = v19;
LABEL_54:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2580A4E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id reencryptRemoteAsset(void *a1, rsize_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v18 = 0;
  v9 = MARemoteAssetEncrypt(a1, v7, 0, 0, 0, &v18);
  v10 = v18;
  memset_s(a1, a2, 0, a2);
  objc_autoreleasePoolPop(v8);
  v11 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [v7 length];
    v14 = [v9 length];
    *buf = 134218498;
    v20 = v13;
    v21 = 2048;
    v22 = v14;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_258089000, v12, OS_LOG_TYPE_INFO, "re-encrypt remoteAccess, size:%lu, cipher size:%lu, error:%@", buf, 0x20u);
  }

  if (v10)
  {
    v15 = v10;
    *a4 = v10;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_2580A5FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2580A71D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2580A7D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2580A83E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2580A8ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2580A9814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2580A9FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_2580AA370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Unwind_Resume(a1);
}

id decrypteRemoteAsset(void *a1, rsize_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v21 = 0;
  v9 = [v7 readDataToEndOfFileAndReturnError:&v21];
  v10 = v21;
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      decrypteRemoteAsset_cold_1();
    }

    [v7 closeFile];
    v12 = 0;
  }

  else
  {
    [v7 closeFile];
    v20 = 0;
    v12 = MARemoteAssetDecrypt(a1, v9, &v20);
    v11 = v20;
  }

  memset_s(a1, a2, 0, a2);

  objc_autoreleasePoolPop(v8);
  v13 = _log_5;
  if (v11)
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      decrypteRemoteAsset_cold_2();
    }

    v14 = v11;
    *a4 = v11;
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    v15 = v13;
    v16 = [v12 length];
    v17 = getMASHA256Hash(v12);
    *buf = 134218242;
    v23 = v16;
    v24 = 2112;
    v25 = v17;
    _os_log_impl(&dword_258089000, v15, OS_LOG_TYPE_INFO, "decrypt remoteAccess, size:%lu, assetData digest:%@", buf, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

void sub_2580AB2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2580ABD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

void _handleDarwinNotification(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = a2;
  v10 = _darwinNotifyQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___handleDarwinNotification_block_invoke;
  block[3] = &unk_27985FF20;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, block);
}

void sub_2580ACF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 240), 8);
  _Block_object_dispose((v37 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_2580AD420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2580ADE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a35);
  objc_destroyWeak((v35 - 184));
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2580AE318(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 152));
  _Block_object_dispose((v3 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_2580AE9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void ___handleDarwinNotification_block_invoke(id *a1)
{
  if ([a1[4] isEqualToString:@"com.apple.tdg.ManagedAssets.Notification.AssetChange"])
  {
    v2 = [a1[5] objectForKeyedSubscript:@"State"];
    v3 = [v2 unsignedIntegerValue];

    v4 = [a1[5] objectForKeyedSubscript:@"Handles"];
    v5 = MEMORY[0x277CCAAC8];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v21 = 0;
    v11 = [v5 unarchivedObjectOfClasses:v10 fromData:v4 error:&v21];
    v12 = v21;

    if (v12)
    {
      if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
      {
        ___handleDarwinNotification_block_invoke_cold_2();
      }
    }

    else if (v11 && [v11 count])
    {
      [a1[6] didReceiveAssetChangeWith:v3 assethandles:v11];
    }

    else
    {
      v19 = _log_5;
      if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
      {
        ___handleDarwinNotification_block_invoke_cold_3(v19);
      }
    }
  }

  else if ([a1[4] isEqualToString:@"com.apple.tdg.ManagedAssets.Notification.ProfileChange"])
  {
    v13 = [a1[5] objectForKeyedSubscript:@"State"];
    v14 = [v13 unsignedIntegerValue];

    v20 = [a1[5] objectForKeyedSubscript:@"ProfileID"];
    v15 = [a1[5] objectForKeyedSubscript:@"ProfileType"];
    v16 = [v15 unsignedIntegerValue];

    [a1[6] didReceiveProfileChangeWith:v14 profile:v20 type:v16];
  }

  else if ([a1[4] isEqualToString:@"com.apple.tdg.ManagedAssets.Notification.DaemonLaunch"])
  {
    v17 = a1[6];

    [v17 recoveryTaskWhenDaemonIsReady];
  }

  else
  {
    v18 = _log_5;
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      ___handleDarwinNotification_block_invoke_cold_1(v18);
    }
  }
}

uint64_t OUTLINED_FUNCTION_9_1@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(result + 40);
  v5 = *(result + 48);
  v6 = *a2;
  return result;
}

void OUTLINED_FUNCTION_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(result + 40);
  v5 = *a2;
  return result;
}

void OUTLINED_FUNCTION_15(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id OUTLINED_FUNCTION_17(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);

  return a2;
}

void MARandomBytes_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_258089000, a2, OS_LOG_TYPE_ERROR, "Fail to generate random data, rc=%d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void MARemoteAssetDecrypt_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v1, v2, "failed with %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void decrypteRemoteAsset_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void decrypteRemoteAsset_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "fail to decrypt encrypted data, error:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ___handleDarwinNotification_block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "fail to deserialize asset handles dictionary inside darwin notification, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}