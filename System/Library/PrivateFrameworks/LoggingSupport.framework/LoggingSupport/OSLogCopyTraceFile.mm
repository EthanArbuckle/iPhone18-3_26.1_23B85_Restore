@interface OSLogCopyTraceFile
@end

@implementation OSLogCopyTraceFile

uint64_t ___OSLogCopyTraceFile_impl_block_invoke(uint64_t a1, _DWORD *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*a2 == 24587 && (v4 = _catalog_create_with_chunk(a2, 0)) != 0)
  {
    v5 = v4;
    v6 = (v4 + 64);
    do
    {
      v6 = *v6;
      if (!v6)
      {
        _catalog_destroy(v4);
        goto LABEL_17;
      }

      v7 = *(*(a1 + 48) + 8);
    }

    while (v6[2] < v7 && v6[3] < v7);
    v8 = *(a1 + 64) - a2 + *(a1 + 56);
    v9 = *(a1 + 80);
    v10 = *(*(a1 + 72) + 8) + 16;
    v35 = *(a1 + 72);
    v36 = v10;
    v37 = a2;
    v38 = v8;
    v11 = _OSLogUUIDMapAddFromFile(a2, v8, v9, *(a1 + 32));
    if (v11)
    {
      v12 = v11;
      if (fcntl(*(a1 + 96), 50, v34) == -1)
      {
        v32 = *__error();
        _os_assumes_log();
      }

      v13 = *(a1 + 32);
      v14 = *(a1 + 88);
      strerror(v12);
      _OSLogWarningMessage(v13, "failed to index uuids: '%s' to '%s': %s (%d)", v15, v16, v17, v18, v19, v20, v34);
    }

    v21 = *(a1 + 100);
    if (_os_trace_writev() == -1)
    {
      v22 = *__error();
      if (fcntl(*(a1 + 100), 50, v34) == -1)
      {
        v33 = *__error();
        _os_assumes_log();
      }

      v23 = *(a1 + 32);
      strerror(v22);
      _OSLogWarningMessage(v23, "failed to write file data to temp file: '%s': %s (%d)", v24, v25, v26, v27, v28, v29, v34);
    }

    *(*(*(a1 + 40) + 8) + 24) = v8 + *(*(a1 + 72) + 8) + 16;
    _catalog_destroy(v5);
    result = 0;
  }

  else
  {
LABEL_17:
    result = 1;
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___OSLogCopyTraceFile_implWithRepack_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"nil";
  }

  if (([(__CFString *)v4 containsString:@"nonsparse"]& 1) != 0 || ([(__CFString *)v4 containsString:@"timesync"]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [**(*(a1 + 40) + 192) composedMessage];
    v5 = [*(*(*(a1 + 32) + 8) + 40) evaluateWithObject:**(*(a1 + 40) + 192)];
  }

  return v5;
}

uint64_t ___OSLogCopyTraceFile_implWithRepack_block_invoke_2(uint64_t a1, char *a2)
{
  v5 = *(a1 + 72);
  v4 = *(a1 + 80);
  v6 = (a2 - v5);
  v4[21] = a2 - v5;
  if (a2 == v5)
  {
    *v4 = a2 + 144;
    _repack_compact_add_iov(*(a1 + 80), a2);
    return 1;
  }

  if (*a2 == 24589)
  {
    if (!v4[3])
    {
      return 1;
    }

    v10 = v4[5];
    if (!v10)
    {
      return 1;
    }

    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [*(a1 + 40) stringByAppendingFormat:@"-%llu", v6];
      v13 = *(a1 + 80);
      v14 = *(v13 + 40);
      v15 = *(*(a1 + 88) + 8);
      if (v14[2] < v15 && v14[3] < v15)
      {
        *(v13 + 40) = *v14;

        objc_autoreleasePoolPop(v11);
        return 1;
      }

      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = ___OSLogCopyTraceFile_implWithRepack_block_invoke_3;
      v39[3] = &unk_2787AEF70;
      v42 = v13;
      v26 = v12;
      v27 = *(a1 + 56);
      v40 = v26;
      v41 = v27;
      _tracev3_chunk_decompress_and_enumerate_chunks_helper(a2, v14, v39);
      v28 = *(*(*(a1 + 56) + 8) + 40);
      if (v28)
      {
        v29 = *(a1 + 48);
        v30 = [v28 userInfo];
        v31 = [v30 description];
        v32 = [v31 UTF8String];
        _OSLogWarningMessage(v29, "failed to compact chunkset: %s", v33, v34, v35, v36, v37, v38, v32);

        objc_autoreleasePoolPop(v11);
        return 0;
      }

      objc_autoreleasePoolPop(v11);
      v4 = *(a1 + 80);
      v10 = v4[5];
    }

    v4[5] = *v10;
    return 1;
  }

  if (*a2 == 24587)
  {
    if (!v4[3])
    {
LABEL_7:
      _repack_ttl_compact_open_catalog(v4, a2);
      _OSLogUUIDMapAddFromCatalog(*(*(a1 + 80) + 24), *(*(*(a1 + 80) + 192) + 16));
      *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) isKeptCatalog:*(*(a1 + 80) + 24)];
      return 1;
    }

    v7 = *(*(a1 + 56) + 8);
    v43 = *(v7 + 40);
    v8 = _repack_ttl_compact_close_catalog(v4, &v43);
    objc_storeStrong((v7 + 40), v43);
    if (v8)
    {
      v4 = *(a1 + 80);
      goto LABEL_7;
    }

    v16 = *(a1 + 48);
    v17 = [*(*(*(a1 + 56) + 8) + 40) userInfo];
    v18 = [v17 description];
    v19 = [v18 UTF8String];
    _OSLogWarningMessage(v16, "failed to close catalog: %s", v20, v21, v22, v23, v24, v25, v19);

    return 0;
  }

  return 1;
}

uint64_t ___OSLogCopyTraceFile_implWithRepack_block_invoke_3(void *a1)
{
  v1 = a1[6];
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  obj = *(v3 + 40);
  v4 = _compact_chunkset();
  objc_storeStrong((v3 + 40), obj);
  return v4;
}

@end