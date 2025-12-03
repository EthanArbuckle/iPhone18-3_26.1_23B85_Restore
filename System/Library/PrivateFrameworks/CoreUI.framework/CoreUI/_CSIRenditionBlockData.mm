@interface _CSIRenditionBlockData
+ (uint64_t)sharedCache;
- (BOOL)expandCSIBitmapData:(uint64_t)data fromSlice:(uint64_t)slice makeReadOnly:(uint64_t)only;
- (_BYTE)setRowBytes:(_BYTE *)result;
- (_DWORD)initWithBytes:(uint64_t)bytes pixelWidth:(int)width pixelHeight:(uint64_t)height sourceRowbytes:(uint64_t)rowbytes pixelFormat:;
- (_DWORD)initWithPixelWidth:(int)width pixelHeight:(uint64_t)height sourceRowbytes:(uint64_t)rowbytes pixelFormat:;
- (uint64_t)_makeReadOnly;
- (void)_allocateImageBytes;
- (void)_freeImageBytes;
- (void)dealloc;
@end

@implementation _CSIRenditionBlockData

- (void)dealloc
{
  [(_CSIRenditionBlockData *)self _freeImageBytes];
  v3.receiver = self;
  v3.super_class = _CSIRenditionBlockData;
  [(_CSIRenditionBlockData *)&v3 dealloc];
}

- (void)_freeImageBytes
{
  if (self && (*(self + 200) & 1) != 0)
  {
    if ((*(self + 200) & 2) != 0)
    {
      munmap(*(self + 16), (vm_page_size + *(self + 32) * *(self + 24) - 1) & -vm_page_size);
      *(self + 16) = 0;
    }

    else
    {
      v2 = *(self + 16);

      free(v2);
    }
  }
}

- (uint64_t)_makeReadOnly
{
  if (result)
  {
    if ((~*(result + 200) & 3) == 0)
    {
      return mach_vm_protect(mach_task_self_, *(result + 16), (vm_page_size + *(result + 32) * *(result + 24) - 1) & -vm_page_size, 1, 1);
    }
  }

  return result;
}

- (void)_allocateImageBytes
{
  if (self)
  {
    v10 = *(self + 32) * *(self + 24);
    v11 = vm_page_size + v10 - 1;
    v12 = -vm_page_size;
    if (qword_1ED4EC008 != -1)
    {
      dispatch_once(&qword_1ED4EC008, &__block_literal_global_13);
    }

    v13 = v11 & v12;
    if (_MergedGlobals)
    {
      *(self + 16) = -1;
      v14 = *(self + 200);
    }

    else
    {
      v15 = mmap(0, v13, 3, 4098, 1275068416, 0);
      *(self + 16) = v15;
      if (v15 != -1 && madvise(v15, v13, 3) < 0)
      {
        v16 = __error();
        v17 = strerror(*v16);
        _CUILog(4, "[_CSIRenditionBlockData _allocateImageBytes] madvise failed error:'%s'", v18, v19, v20, v21, v22, v23, v17);
      }

      v14 = *(self + 200) | 2;
    }

    *(self + 200) = v14 | 1;
    *(self + 192) = v13;
    [+[CUIRuntimeStatistics sharedRuntimeStatistics](CUIRuntimeStatistics "sharedRuntimeStatistics")];
    if (*(self + 16) == -1)
    {
      if ((_MergedGlobals & 1) == 0)
      {
        v24 = __error();
        v25 = strerror(*v24);
        _CUILog(4, "[_CSIRenditionBlockData _allocateImageBytes] mmap failed error:'%s' using malloc now", v26, v27, v28, v29, v30, v31, v25);
      }

      *(self + 200) &= ~2u;
      *(self + 16) = malloc_type_malloc(v10, 0x8AF4BAACuLL);
      __CFSetLastAllocationEventName();
      if (!*(self + 16))
      {

        _CUILog(4, "[_CSIRenditionBlockData _allocateImageBytes] malloc failed error", v32, v33, v34, v35, v36, v37, a9);
      }
    }
  }
}

- (BOOL)expandCSIBitmapData:(uint64_t)data fromSlice:(uint64_t)slice makeReadOnly:(uint64_t)only
{
  if (!self)
  {
    return 0;
  }

  v9 = *(self + 16);
  if (!v9)
  {
    return 0;
  }

  onlyCopy = only;
  v12 = *(a2 + 4);
  atomic_store(0, (self + 40));
  v13 = *(a2 + 8);
  if (v13 > 5)
  {
    if (v13 <= 8)
    {
      if (v13 == 6)
      {
        if ((decodeRadiosity((a2 + 16), *(a2 + 12), *(self + 32), v9) & 0x80000000) == 0)
        {
          goto LABEL_70;
        }

LABEL_63:
        v46 = *(a2 + 8);
LABEL_64:
        v71 = CUIConvertCompressionTypeToString(v46);
        _CUILog(4, "CoreUI: Unable to decompress stream for CSI image block data. '%s'", v47, v48, v49, v50, v51, v52, v71);
        goto LABEL_68;
      }

      if (v13 != 7)
      {
        if (!CUIUncompressQuantizedImageData())
        {
          goto LABEL_63;
        }

        goto LABEL_70;
      }

LABEL_24:
      if (CUIExpandATECompressedDataIntoBuffer(a2 + 16, (v12 >> 1) & 1, v9, *(self + 8), *(self + 32), a6, a7, a8))
      {
        goto LABEL_70;
      }

      goto LABEL_63;
    }

    if (v13 <= 10)
    {
      if (v13 == 9)
      {
        if (!CUIUncompressHEVCInfoData(a2 + 16, v9, *(self + 32), *(self + 8), only, a6, a7, a8))
        {
          goto LABEL_63;
        }
      }

      else if (!CUIUncompressDeepmapImageData((a2 + 16), *(a2 + 12), ((*(a2 + 4) << 31) >> 31) & *(a2 + 12), v9, slice, slice >> 32, *(self + 32), *(self + 8)))
      {
        goto LABEL_63;
      }

LABEL_70:
      v14 = 1;
      goto LABEL_71;
    }

    if (v13 == 11)
    {
      if (!CUIUncompressDeepmap2ImageData((a2 + 16), *(a2 + 12), ((*(a2 + 4) << 31) >> 31) & *(a2 + 12), v9, slice, slice >> 32, *(self + 32), *(self + 8)))
      {
        v70 = CUIConvertCompressionTypeToString(*(a2 + 8));
        _CUILog(4, "CoreUI: Unable to decompress 2.0 stream for CSI image block data. '%s'", v40, v41, v42, v43, v44, v45, v70);
LABEL_68:
        v14 = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    if (v13 == 12)
    {
      goto LABEL_24;
    }

LABEL_67:
    _CUILog(4, "CoreUI: unhandled compressiontype for CSI image block data.%d", data, slice, only, a6, a7, a8, *(a2 + 8));
    goto LABEL_68;
  }

  if (v13 <= 1)
  {
    if (!v13)
    {
      v53 = *(a2 + 12);
      if (*(self + 192) < v53)
      {
        v72 = CUIConvertCompressionTypeToString(0);
        _CUILog(4, "CoreUI: Unable to copy imagedata for rawbytes block data data. '%s'", v54, v55, v56, v57, v58, v59, v72);
        goto LABEL_68;
      }

      memcpy(v9, (a2 + 16), v53);
      atomic_store(*(a2 + 12), (self + 40));
      goto LABEL_70;
    }

    if (v13 == 1)
    {
      if (!*(a2 + 12))
      {
        v46 = 1;
        goto LABEL_64;
      }

      pk_decompressData((a2 + 16), v9, data, SHIDWORD(data), slice, SHIDWORD(slice), *(self + 32), *a2 == 1296844099);
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  if ((v13 - 2) >= 3)
  {
    if (v13 == 5)
    {
      if (!CUIUncompressJPEGandLZFSEInfoData((a2 + 16), v9, *(self + 32), 8, 32, 8194, a7, a8))
      {
        goto LABEL_63;
      }

      goto LABEL_70;
    }

    goto LABEL_67;
  }

  dest.data = 0;
  dest.height = &dest;
  dest.width = 0x2020000000;
  atomic_store(0, &dest.rowBytes);
  v15 = a2 + 16;
  v74 = *(a2 + 4);
  onlyCopy2 = only;
  if (v74)
  {
    v17 = *(a2 + 12);
    v16 = a2 + 16;
    v15 = a2 + 36;
    v20 = bswap32(*(a2 + 32));
    v21 = bswap32(*(a2 + 28));
    if (*(a2 + 16) == 1262699075)
    {
      v19 = v21;
    }

    else
    {
      v20 = *(a2 + 32);
      v19 = *(a2 + 28);
    }

    v18 = *(a2 + 16) == 1262699075;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = *(self + 24);
    v20 = *(a2 + 12);
  }

  v22 = 0;
  v23 = 0;
  if (v17 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v17;
  }

  while (1)
  {
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v25 = v20;
    v79[2] = __69___CSIRenditionBlockData_expandCSIBitmapData_fromSlice_makeReadOnly___block_invoke;
    v79[3] = &unk_1E7251478;
    v79[6] = v15;
    v79[7] = v20;
    v79[8] = a2;
    dataCopy = data;
    sliceCopy = slice;
    v80 = v22;
    v81 = v19;
    v79[4] = self;
    v79[5] = &dest;
    if (v74)
    {
      if (!v23)
      {
        v23 = objc_alloc_init(NSMutableArray);
      }

      v32 = [v79 copy];
      [v23 addObject:v32];
    }

    else
    {
      __69___CSIRenditionBlockData_expandCSIBitmapData_fromSlice_makeReadOnly___block_invoke(v79);
    }

    if (!--v24)
    {
      break;
    }

    v33 = v16 + v25;
    v35 = *(v33 + 20);
    v16 = v33 + 20;
    v34 = v35;
    if (v18)
    {
      if (v34 == 1262699075)
      {
        v15 = v16 + 20;
LABEL_45:
        v36 = vrev32_s8(*(v16 + 12));
        goto LABEL_47;
      }
    }

    else if (v34 == 1128416075)
    {
      v15 = v16 + 20;
      goto LABEL_46;
    }

    _CUILog(4, "CoreUI: Can't find the correct chunk '%d'", v26, v27, v28, v29, v30, v31, v34);
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel_expandCSIBitmapData_fromSlice_makeReadOnly_ file:self lineNumber:@"CUIThemeRendition.m" description:981, @"CoreUI: Can't find the correct chunk"];
    v15 = v16 + 20;
    if (v18)
    {
      goto LABEL_45;
    }

LABEL_46:
    v36 = *(v16 + 12);
LABEL_47:
    if (v36.i32[0])
    {
      v22 += v19;
      v37 = atomic_load((dest.height + 24));
      v20 = v36.u32[1];
      v19 = v36.i32[0];
      if (!v37)
      {
        continue;
      }
    }

    break;
  }

  onlyCopy = onlyCopy2;
  if ((v74 & 1) != 0 && !atomic_load((dest.height + 24)))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __69___CSIRenditionBlockData_expandCSIBitmapData_fromSlice_makeReadOnly___block_invoke_2;
    block[3] = &unk_1E724A2D0;
    block[4] = v23;
    dispatch_apply([v23 count], 0, block);
  }

  v39 = atomic_load((dest.height + 24));
  v14 = v39 == 0;
  if (v39)
  {
    _CUILog(4, "CoreUI: Image data corrupted", v26, v27, v28, v29, v30, v31, v69);
  }

  _Block_object_dispose(&dest, 8);
LABEL_71:
  if (*(self + 8) == 1095911234 && *(self + 12) == 1)
  {
    v60 = *(self + 24);
    dest.data = *(self + 16);
    dest.height = v60;
    v61 = *(self + 32);
    dest.width = slice;
    dest.rowBytes = v61;
    *permuteMap = 50331906;
    if (vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0) < 0)
    {
      _CUILog(4, "CoreUI: Unable to permute pixel buffer", v62, v63, v64, v65, v66, v67, v69);
    }
  }

  if (onlyCopy)
  {
    [(_CSIRenditionBlockData *)self _makeReadOnly];
  }

  return v14;
}

+ (uint64_t)sharedCache
{
  objc_opt_self();
  if (sharedCache_once != -1)
  {
    +[_CSIRenditionBlockData sharedCache];
  }

  return sharedCache_sharedCache;
}

- (_DWORD)initWithPixelWidth:(int)width pixelHeight:(uint64_t)height sourceRowbytes:(uint64_t)rowbytes pixelFormat:
{
  if (!self)
  {
    return 0;
  }

  v17.receiver = self;
  v17.super_class = _CSIRenditionBlockData;
  v8 = objc_msgSendSuper2(&v17, sel_init);
  if (v8)
  {
    __bppFromBlockPixelFormat(rowbytes);
    v8[3] = rowbytes;
    v8[6] = width;
    *(v8 + 4) = CGBitmapGetAlignedBytesPerRow();
    *(v8 + 23) = height;
    [(_CSIRenditionBlockData *)v8 _allocateImageBytes:v10];
  }

  return v8;
}

- (_DWORD)initWithBytes:(uint64_t)bytes pixelWidth:(int)width pixelHeight:(uint64_t)height sourceRowbytes:(uint64_t)rowbytes pixelFormat:
{
  if (!self)
  {
    return 0;
  }

  v14.receiver = self;
  v14.super_class = _CSIRenditionBlockData;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  if (v10)
  {
    __bppFromBlockPixelFormat(rowbytes);
    v10[3] = rowbytes;
    v10[6] = width;
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    *(v10 + 4) = AlignedBytesPerRow;
    v12 = AlignedBytesPerRow * v10[6];
    *(v10 + 23) = height;
    *(v10 + 24) = v12;
    *(v10 + 2) = a2;
  }

  return v10;
}

- (_BYTE)setRowBytes:(_BYTE *)result
{
  if (result)
  {
    v3 = result;
    if (result[200])
    {
      result = [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel_setRowBytes_ file:result lineNumber:@"CUIThemeRendition.m" description:589, @"You can't call setRowBytes: if _CSIRenditionBlockData was inited with initWithPixelWidth:pixelHeight:sourceRowbytes:pixelFormat:"];
    }

    *(v3 + 4) = a2;
    *(v3 + 24) = *(v3 + 6) * a2;
  }

  return result;
}

@end