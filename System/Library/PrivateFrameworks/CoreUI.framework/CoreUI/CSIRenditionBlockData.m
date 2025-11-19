@interface CSIRenditionBlockData
@end

@implementation CSIRenditionBlockData

char *__45___CSIRenditionBlockData__allocateImageBytes__block_invoke()
{
  result = getenv("COREUI_USE_MALLOC");
  if (result)
  {
    _MergedGlobals = 1;
  }

  return result;
}

void __69___CSIRenditionBlockData_expandCSIBitmapData_fromSlice_makeReadOnly___block_invoke(uint64_t a1)
{
  v51 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = *(a1 + 72);
  v5 = *(v2 + 32);
  v6 = CFReadStreamCreateWithBytesNoCopy(kCFAllocatorDefault, *(a1 + 48), *(a1 + 56), kCFAllocatorNull);
  if (!v6)
  {
    v17 = *(a1 + 56);
    CUIConvertCompressionTypeToString(*(*(a1 + 64) + 8));
    _CUILog(4, "CoreUI: Unable to create decompress stream for CSI bytes of length %ld '%s' image block data.", v18, v19, v20, v21, v22, v23, v17);
    return;
  }

  v7 = v6;
  CFReadStreamOpen(v6);
  _StreamSys_init_read(&v51, v7);
  *v50 = 0;
  v8 = *(*(a1 + 64) + 8);
  if (v8 == 3)
  {
    v9 = 4;
  }

  else
  {
    v9 = 5;
  }

  if (v8 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (_BOMFileNewFromCFReadStreamSys(v50, v51, v10))
  {
    CFRelease(v7);
    v49 = CUIConvertCompressionTypeToString(*(*(a1 + 64) + 8));
    _CUILog(4, "CoreUI: Unable to create BOMFile from decompress stream for CSI '%s' image block data.", v11, v12, v13, v14, v15, v16, v49);
    return;
  }

  v24 = (v3 + v5 * v4);
  v25 = *(a1 + 32);
  v26 = *(v25 + 184);
  if (!v26)
  {
    if (*(v25 + 12) > 1u)
    {
      v26 = *(v25 + 32);
    }

    else
    {
      v26 = (4 * *(a1 + 88));
    }
  }

  v27 = *(v25 + 32);
  if (v27 <= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  v29 = malloc_type_malloc(v28, 0x100004077774924uLL);
  if (*(*(a1 + 32) + 32) == v26)
  {
    v30 = BOMFileRead(*v50, v29, v26);
    if (v30 >= 1)
    {
      for (i = v30; i > 0; i = BOMFileRead(*v50, v29, *(*(a1 + 32) + 32)))
      {
        memcpy(v24, v29, i);
        v24 += i;
        atomic_fetch_add((*(a1 + 32) + 40), i);
      }
    }

    goto LABEL_42;
  }

  if (!*(a1 + 76))
  {
LABEL_42:
    BOMFileClose(*v50);
    BomSys_free(v51);
    CFRelease(v7);
    free(v29);
    return;
  }

  v32 = 0;
  v33 = 0;
  while (!atomic_load((*(*(a1 + 40) + 8) + 24)))
  {
    if (v26)
    {
      v35 = v24;
      v36 = v26;
      while (!atomic_load((*(*(a1 + 40) + 8) + 24)))
      {
        if (v36 >= v26)
        {
          v38 = v26;
        }

        else
        {
          v38 = v36;
        }

        v39 = BOMFileRead(*v50, v29, v38);
        if ((v39 & 0x8000000000000000) != 0 || (v40 = v39) == 0 && BOMFileIsEOF(*v50))
        {
          v42 = CUIConvertCompressionTypeToString(*(*(a1 + 64) + 8));
          _CUILog(4, "CoreUI: Error while decoding '%s' compressed image block data got an %s name:'%s' pixelFormat:%d at row %d", v43, v44, v45, v46, v47, v48, v42);
          goto LABEL_44;
        }

        if (*(*(a1 + 32) + 32) >= v40)
        {
          v41 = v40;
        }

        else
        {
          v41 = *(*(a1 + 32) + 32);
        }

        memcpy(v35, v29, v41);
        v35 += v40;
        v33 += v40;
        v36 -= v40;
        if (!v36)
        {
          goto LABEL_39;
        }
      }

      break;
    }

LABEL_39:
    if (v33 >= 1)
    {
      v24 += *(*(a1 + 32) + 32);
    }

    if (++v32 >= *(a1 + 76))
    {
      goto LABEL_42;
    }
  }

LABEL_44:
  BOMFileClose(*v50);
  BomSys_free(v51);
  CFRelease(v7);
  free(v29);
  atomic_fetch_add((*(*(a1 + 40) + 8) + 24), 1uLL);
}

uint64_t __69___CSIRenditionBlockData_expandCSIBitmapData_fromSlice_makeReadOnly___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *([*(a1 + 32) objectAtIndex:a2] + 2);

  return v2();
}

id __37___CSIRenditionBlockData_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(NSCache);
  sharedCache_sharedCache = v0;

  return [v0 setTotalCostLimit:5242880];
}

@end