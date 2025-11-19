uint64_t (*_WriteAddress(uint64_t a1, unsigned int a2, unsigned int a3))(void *)
{
  v3 = BOMStreamWithFile(*(a1 + 1028), a2, a3, 1, (*(a1 + 1040) + a2));
  if (v3)
  {
    v4 = v3;
    BOMStreamFlush();

    return BOMStreamFree(v4);
  }

  else
  {
    v6 = *__error();

    return _BOMExceptionHandlerCall("Unable to create write stream.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 2209, v6);
  }
}

id OUTLINED_FUNCTION_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

id *OUTLINED_FUNCTION_13@<X0>(void *a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = a2;
  a1[5] = a3;

  return [(CUINamedVectorGlyph *)a2 _performWithLockedRenditions:a4];
}

_DWORD *CUIBitVectorCreate(unsigned int a1)
{
  if (a1 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = a1;
  }

  v2 = ((v1 - 1) >> 5) + 1;
  v3 = malloc_type_malloc(4 * v2 + 8, 0xE343BF1CuLL);
  bzero(v3, 4 * v2 + 8);
  __CFSetLastAllocationEventName();
  *v3 = 0;
  v3[1] = v2;
  return v3;
}

uint64_t CUIBitVectorSetBitRange(os_unfair_lock_s *a1, unsigned int a2, unsigned int a3)
{
  os_unfair_lock_lock(a1);
  if (a2 >= a3)
  {
LABEL_5:
    os_unfair_lock_unlock(a1);
    return 1;
  }

  else
  {
    os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
    while (a2 >> 5 < os_unfair_lock_opaque)
    {
      a1[(a2 >> 5) + 2]._os_unfair_lock_opaque |= 1 << a2;
      if (a3 == ++a2)
      {
        goto LABEL_5;
      }
    }

    os_unfair_lock_unlock(a1);
    return 0xFFFFFFFFLL;
  }
}

uint64_t CUIBitVectorSetBit(os_unfair_lock_s *a1, unsigned int a2)
{
  os_unfair_lock_lock(a1);
  if (a2 >> 5 >= a1[1]._os_unfair_lock_opaque)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
    a1[(a2 >> 5) + 2]._os_unfair_lock_opaque |= 1 << a2;
  }

  os_unfair_lock_unlock(a1);
  return v4;
}

__CFData *CUIImageCompressedWithATECompression(CGImageRef image, uint64_t a2, unint64_t a3, _DWORD *a4, _DWORD *a5, _WORD *a6)
{
  v10 = image;
  v79 = 0;
  *bytes = 0;
  if (a5)
  {
    *a5 = 1095911234;
  }

  if (a6)
  {
    *a6 = 1;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(image);
  if (BitsPerComponent >= 9)
  {
    ColorSpace = CGImageGetColorSpace(v10);
    Model = CGColorSpaceGetModel(ColorSpace);
    v14 = &kCGColorSpaceGenericGrayGamma2_2;
    if (Model)
    {
      v14 = &kCGColorSpaceDisplayP3;
    }

    v15 = CGColorSpaceCreateWithName(*v14);
    v10 = CUIConvertDeepImageTo8(v10, v15);
    CFRelease(v15);
    if (a6)
    {
      *a6 = 3;
    }

    if (!v10)
    {
      return 0;
    }
  }

  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  if (a3 <= 5 && ((1 << a3) & 0x3A) != 0)
  {
    *a4 = 7;
    *cf = 0u;
    memset(v94, 0, 24);
    if (a2 == 4)
    {
      v17 = at_block_format_astc_4x4_ldr;
    }

    else
    {
      v17 = at_block_format_astc_8x8_ldr;
    }

    v18 = CGImageGetColorSpace(v10);
    v19 = CGColorSpaceGetModel(v18);
    AlphaInfo = CGImageGetAlphaInfo(v10);
    if (CGImageGetBitsPerComponent(v10) < 9)
    {
      if (v19)
      {
        if (AlphaInfo <= kCGImageAlphaNoneSkipFirst && ((1 << AlphaInfo) & 0x61) != 0)
        {
          cf[0] = 0x2000000008;
          cf[1] = CGImageGetColorSpace(v10);
          v21 = at_texel_format_rgba8_unorm;
          LODWORD(v94[0]) = 5;
          *(v94 + 12) = 0;
          *(v94 + 4) = 0;
          CFRetain(cf[1]);
        }

        else
        {
          cf[0] = 0x2000000008;
          cf[1] = CGImageGetColorSpace(v10);
          LODWORD(v94[0]) = 1;
          *(v94 + 12) = 0;
          *(v94 + 4) = 0;
          CFRetain(cf[1]);
          v21 = at_texel_format_rgba8_unorm;
        }
      }

      else if (AlphaInfo <= kCGImageAlphaNoneSkipFirst && ((1 << AlphaInfo) & 0x61) != 0)
      {
        cf[0] = 0x800000008;
        memset(v94, 0, 20);
        cf[1] = CGColorSpaceCreateWithName(kCGColorSpaceGenericGrayGamma2_2);
        v21 = at_texel_format_l8_unorm;
      }

      else
      {
        cf[0] = 0x1000000008;
        cf[1] = CGColorSpaceCreateDeviceGray();
        LODWORD(v94[0]) = 1;
        *(v94 + 12) = 0;
        *(v94 + 4) = 0;
        v21 = at_texel_format_la8_unorm;
      }
    }

    else if (v19)
    {
      cf[0] = 0x4000000010;
      cf[1] = 0;
      LODWORD(v94[0]) = 4097;
      *(v94 + 12) = 0;
      *(v94 + 4) = 0;
      v21 = at_texel_format_rgba16_unorm;
    }

    else if (AlphaInfo <= kCGImageAlphaNoneSkipFirst && ((1 << AlphaInfo) & 0x61) != 0)
    {
      cf[0] = 0x1000000010;
      cf[1] = CGColorSpaceCreateWithName(kCGColorSpaceGenericGrayGamma2_2);
      LODWORD(v94[0]) = 4096;
      *(v94 + 12) = 0;
      *(v94 + 4) = 0;
      v21 = at_texel_format_l16_unorm;
    }

    else
    {
      cf[0] = 0x2000000010;
      cf[1] = CGColorSpaceCreateWithName(kCGColorSpaceGenericGrayGamma2_2);
      LODWORD(v94[0]) = 4097;
      *(v94 + 12) = 0;
      *(v94 + 4) = 0;
      v21 = at_texel_format_la16_unorm;
    }

    *v91 = 0u;
    v92 = 0u;
    *&src.validSize.z = 0;
    v28 = MEMORY[0x193AC74A0](v91, cf, &__ASTC_encodeToData_backgroundColor, v10, 256);
    if (cf[1])
    {
      CFRelease(cf[1]);
    }

    if (v28)
    {
      goto LABEL_56;
    }

    theData = Mutable;
    v77 = BitsPerComponent;
    v74 = kCFAllocatorDefault;
    if (AlphaInfo > kCGImageAlphaNoneSkipFirst)
    {
      v38 = at_alpha_premultiplied;
    }

    else
    {
      v38 = dword_18E021368[AlphaInfo];
    }

    Width = CGImageGetWidth(v10);
    Height = CGImageGetHeight(v10);
    v42 = at_encoder_create(v21, v38, v17, v38, 0);
    *&v43 = at_encoder_get_block_dimensions(v42);
    v44 = v43;
    v45 = BYTE8(v43);
    v46 = DWORD1(v43);
    *(&v43 + 1) = Width | (Height << 32);
    v47 = 1;
    block_counts = at_encoder_get_block_counts(v42, *(&v43 + 8));
    x = block_counts.x;
    z = block_counts.z;
    *v82 = 1554098963;
    v49 = HIDWORD(*&block_counts.x);
    v83 = v44;
    v84 = v46;
    v85 = v45;
    v86 = Width;
    v87 = BYTE2(Width);
    v88 = Height;
    v89 = BYTE2(Height);
    *v90 = 1;
    v90[2] = 0;
    Mutable = theData;
    CFDataAppendBytes(theData, v82, 16);
    v50 = v49 * x;
    block_size = at_encoder_get_block_size(v42);
    CFDataIncreaseLength(theData, block_size * v50 * z);
    MutableBytePtr = CFDataGetMutableBytePtr(theData);
    v53 = at_encoder_get_block_size(v42);
    src.texels = v91[0];
    src.validSize.x = Width;
    src.validSize.y = Height;
    src.validSize.z = 1;
    src.rowBytes = *(&v92 + 1);
    src.sliceBytes = 0;
    dest.blocks = MutableBytePtr + 16;
    dest.rowBytes = v53 * x;
    dest.sliceBytes = v53 * v50;
    v54 = at_encoder_compress_texels(v42, &src, &dest, 0.0, at_flags_default);
    free(v91[0]);
  }

  else
  {
    *a4 = 12;
    if (a2 == 4)
    {
      v23 = at_block_format_bc7;
    }

    else
    {
      v23 = at_block_format_bc3;
    }

    *cf = 0u;
    memset(v94, 0, 24);
    v24 = CGImageGetColorSpace(v10);
    v25 = CGColorSpaceGetModel(v24);
    v26 = CGImageGetAlphaInfo(v10);
    if (CGImageGetBitsPerComponent(v10) < 9)
    {
      if (v25)
      {
        if (v26 <= kCGImageAlphaNoneSkipFirst && ((1 << v26) & 0x61) != 0)
        {
          cf[0] = 0x2000000008;
          cf[1] = CGImageGetColorSpace(v10);
          v27 = at_texel_format_rgba8_unorm;
          LODWORD(v94[0]) = 5;
          *(v94 + 12) = 0;
          *(v94 + 4) = 0;
          CFRetain(cf[1]);
        }

        else
        {
          cf[0] = 0x2000000008;
          cf[1] = CGImageGetColorSpace(v10);
          LODWORD(v94[0]) = 1;
          *(v94 + 12) = 0;
          *(v94 + 4) = 0;
          CFRetain(cf[1]);
          v27 = at_texel_format_rgba8_unorm;
        }
      }

      else if (v26 <= kCGImageAlphaNoneSkipFirst && ((1 << v26) & 0x61) != 0)
      {
        cf[0] = 0x800000008;
        memset(v94, 0, 20);
        cf[1] = CGColorSpaceCreateWithName(kCGColorSpaceGenericGrayGamma2_2);
        v27 = at_texel_format_l8_unorm;
      }

      else
      {
        cf[0] = 0x1000000008;
        cf[1] = CGColorSpaceCreateDeviceGray();
        LODWORD(v94[0]) = 1;
        *(v94 + 12) = 0;
        *(v94 + 4) = 0;
        v27 = at_texel_format_la8_unorm;
      }
    }

    else if (v25)
    {
      cf[0] = 0x4000000010;
      cf[1] = 0;
      LODWORD(v94[0]) = 4097;
      *(v94 + 12) = 0;
      *(v94 + 4) = 0;
      v27 = at_texel_format_rgba16_unorm;
    }

    else if (v26 <= kCGImageAlphaNoneSkipFirst && ((1 << v26) & 0x61) != 0)
    {
      cf[0] = 0x1000000010;
      cf[1] = CGColorSpaceCreateWithName(kCGColorSpaceGenericGrayGamma2_2);
      LODWORD(v94[0]) = 4096;
      *(v94 + 12) = 0;
      *(v94 + 4) = 0;
      v27 = at_texel_format_l16_unorm;
    }

    else
    {
      cf[0] = 0x2000000010;
      cf[1] = CGColorSpaceCreateWithName(kCGColorSpaceGenericGrayGamma2_2);
      LODWORD(v94[0]) = 4097;
      *(v94 + 12) = 0;
      *(v94 + 4) = 0;
      v27 = at_texel_format_la16_unorm;
    }

    *v91 = 0u;
    v92 = 0u;
    *&src.validSize.z = 0;
    v56 = MEMORY[0x193AC74A0](v91, cf, &__ATE_encodeToData_backgroundColor, v10, 256);
    if (cf[1])
    {
      CFRelease(cf[1]);
    }

    if (v56)
    {
      goto LABEL_56;
    }

    theDataa = Mutable;
    v77 = BitsPerComponent;
    v74 = kCFAllocatorDefault;
    if (v26 > kCGImageAlphaNoneSkipFirst)
    {
      v57 = at_alpha_premultiplied;
    }

    else
    {
      v57 = dword_18E021368[v26];
    }

    v58 = CGImageGetWidth(v10);
    v59 = CGImageGetHeight(v10);
    v60 = at_encoder_create(v27, v57, v23, v57, 0);
    block_dimensions = at_encoder_get_block_dimensions(v60);
    v62 = block_dimensions;
    v63 = HIDWORD(block_dimensions);
    v64 = v58 | (v59 << 32);
    *&v97.x = v64;
    v97.z = 1;
    v96 = at_encoder_get_block_counts(v60, v97);
    v65 = v96.x;
    v66 = v23;
    v67 = v96.z;
    *v82 = 1128617025;
    v68 = HIDWORD(*&v96.x);
    v83 = v62;
    v84 = v63;
    v85 = 0;
    v86 = v58;
    v87 = BYTE2(v58);
    v88 = v59;
    v89 = BYTE2(v59);
    v90[0] = v66;
    *&v90[1] = 0;
    Mutable = theDataa;
    CFDataAppendBytes(theDataa, v82, 16);
    v69 = v68 * v65;
    v70 = at_encoder_get_block_size(v60);
    CFDataIncreaseLength(theDataa, v70 * v69 * v67);
    v71 = CFDataGetMutableBytePtr(theDataa);
    v72 = at_encoder_get_block_size(v60);
    src.texels = v91[0];
    *&src.validSize.x = v64;
    src.validSize.z = 1;
    src.rowBytes = *(&v92 + 1);
    src.sliceBytes = 0;
    dest.blocks = v71 + 16;
    dest.rowBytes = v72 * v65;
    dest.sliceBytes = v72 * v69;
    v54 = at_encoder_compress_texels(v60, &src, &dest, 0.0, at_flags_print_debug_info);
    free(v91[0]);
  }

  BitsPerComponent = v77;
  if (v54 >= 0.0)
  {
    Length = CFDataGetLength(Mutable);
    v30 = malloc_type_malloc(Length, 0x1CC3FF7AuLL);
    v31 = CFDataGetLength(Mutable);
    BytePtr = CFDataGetBytePtr(Mutable);
    v33 = CFDataGetLength(Mutable);
    v34 = compression_encode_buffer(v30, v31, BytePtr, v33, 0, COMPRESSION_LZFSE);
    __CFSetLastAllocationEventName();
    v22 = CFDataCreateMutable(v74, 0);
    if (v34)
    {
      *bytes = 1;
      *&bytes[4] = v34;
      v79 = CFDataGetLength(Mutable);
      CFDataAppendBytes(v22, bytes, 12);
      v35 = v22;
      v36 = v30;
      v37 = v34;
    }

    else
    {
      *bytes = 0;
      v79 = CFDataGetLength(Mutable);
      *&bytes[4] = CFDataGetLength(Mutable);
      CFDataAppendBytes(v22, bytes, 12);
      v39 = CFDataGetBytePtr(Mutable);
      v37 = CFDataGetLength(Mutable);
      v35 = v22;
      v36 = v39;
    }

    CFDataAppendBytes(v35, v36, v37);
    free(v30);
    goto LABEL_57;
  }

LABEL_56:
  v22 = 0;
LABEL_57:
  CFRelease(Mutable);
  if (BitsPerComponent >= 9)
  {
    CFRelease(v10);
  }

  return v22;
}

id OUTLINED_FUNCTION_22_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [v65 countByEnumeratingWithState:&a65 objects:&STACK[0x460] count:16];
}

vImage_Error CUIConvertCGImageFormat(CGImage *a1, CGColorSpace *a2, const vImage_CGImageFormat *a3, vImage_Buffer *a4)
{
  memset(&srcs, 0, sizeof(srcs));
  srcFormat.bitsPerComponent = CGImageGetBitsPerComponent(a1);
  srcFormat.bitsPerPixel = CGImageGetBitsPerPixel(a1);
  srcFormat.colorSpace = a2;
  srcFormat.bitmapInfo = CGImageGetBitmapInfo(a1);
  memset(&srcFormat.version, 0, 20);
  v8 = MEMORY[0x193AC74A0](&srcs, &srcFormat, 0, a1, 256);
  error = v8;
  if (v8)
  {
    _CUILog(4, "CoreUI: CUIConvertCGImageFormat() [vImageBuffer_InitWithCGImage] failed error:'%d'", v9, v10, v11, v12, v13, v14, v8);
  }

  else
  {
    v15 = vImageConverter_CreateWithCGImageFormat(&srcFormat, a3, 0, 0x100u, &error);
    if (error)
    {
      _CUILog(4, "CoreUI: CUIConvertCGImageFormat() [vImageConverter_CreateWithCGImageFormat] failed error:'%d'", v16, v17, v18, v19, v20, v21, error);
    }

    else
    {
      v23 = v15;
      if (!a4->rowBytes)
      {
        a4->rowBytes = CGBitmapGetAlignedBytesPerRow();
      }

      if (!a4->data)
      {
        a4->data = CGBitmapAllocateData();
      }

      error = vImageConvert_AnyToAny(v23, &srcs, a4, 0, 0x100u);
      free(srcs.data);
      if (error)
      {
        _CUILog(4, "CoreUI: CUIConvertCGImageFormat() [vImageConvert_AnyToAny] failed error:'%d'", v24, v25, v26, v27, v28, v29, error);
      }

      vImageConverter_Release(v23);
    }
  }

  return error;
}

uint64_t _StreamSys_init_write(unint64_t a1, uint64_t a2)
{
  v16 = 0;
  if (!(a1 | a2) || BomSys_init(&v16, a2))
  {
    return 0xFFFFFFFFLL;
  }

  BomSys_set_write(v16, __StreamSys_write, v3, v4, v5, v6, v7, v8);
  BomSys_set_close(v16, __StreamSys_close, v10, v11, v12, v13, v14, v15);
  result = 0;
  if (a1)
  {
    *a1 = v16;
  }

  return result;
}

uint64_t _BOMFileNewFromCFWriteStreamSys(void *a1, __int128 *a2, char a3)
{
  if (BOMFileNewFromFDWithSys(a1, 0, a3, "w", a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void BomSys_set_write(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", a3, a4, a5, a6, a7, a8, "void BomSys_set_write(BomSys *, BomSys_write_call)");
  }

  else if (a2)
  {
    *(a1 + 6) = a2;
  }

  else
  {
    *(a1 + 6) = BomSys_write;
  }
}

unint64_t BOMFileWrite(uint64_t a1, UInt8 *buffer, unint64_t bufferLength)
{
  if (!a1)
  {
    return -1;
  }

  v3 = bufferLength;
  v4 = buffer;
  if ((*a1 - 1) < 2)
  {
    if (!bufferLength)
    {
      return 0;
    }

    if (!buffer)
    {
      return -1;
    }

    v6 = *(a1 + 24);
    if ((v6 - 3) >= 2)
    {
      if (v6 == 1)
      {
        v21 = *(a1 + 32);
        v21->next_in = buffer;
        v21->avail_in = bufferLength;
        if (bufferLength)
        {
          if (v21->avail_out)
          {
            goto LABEL_44;
          }

          for (i = 0x20000; ; i = 0x20000 - v21->avail_out)
          {
            v24 = *(a1 + 40);
            while (i)
            {
              v25 = _BOMFileWriteRaw(a1, v24, i);
              v24 += v25;
              i -= v25;
              v9 = -1;
              if (v25 < 0)
              {
                return v9;
              }
            }

            v21->avail_out = 0x20000;
            v21->next_out = *(a1 + 40);
            if (!v21->avail_in)
            {
              break;
            }

LABEL_44:
            if (deflate(v21, 0))
            {
              return -1;
            }
          }
        }

        *(a1 + 48) = crc32(*(a1 + 48), v4, v3);
        return v3;
      }

      else
      {
        if (v6)
        {
          return -1;
        }

        v7 = 0;
        while (v3)
        {
          v8 = _BOMFileWriteRaw(a1, v4, v3);
          v7 += v8;
          v3 -= v8;
          v9 = -1;
          if (v8 < 0)
          {
            return v9;
          }
        }

        return v7;
      }
    }

    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17->src_ptr = buffer;
    v17->src_size = bufferLength;
    v17->dst_ptr = v16;
    v17->dst_size = 0x20000;
    while (compression_stream_process(v17, 0) != COMPRESSION_STATUS_ERROR)
    {
      v18 = 0x20000 - v17->dst_size;
      v19 = *(a1 + 40);
      while (v18)
      {
        v20 = _BOMFileWriteRaw(a1, v19, v18);
        v19 += v20;
        v18 -= v20;
        if (v20 < 0)
        {
          return -1;
        }
      }

      v17->dst_ptr = *(a1 + 40);
      v17->dst_size = 0x20000;
      if (!v17->src_size)
      {
        return v3;
      }
    }

    return -1;
  }

  if (*a1 != 5)
  {
    return -1;
  }

  v9 = 0;
  if (!bufferLength)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v10 = *(a1 + 96);
    if (v10)
    {
      v11 = v10[1];
    }

    else
    {
      v10 = BOMBufferPoolRequestBuffer(gBufferPool);
      v11 = 0;
      v10[1] = 0;
      v10[2] = 0;
      *(a1 + 96) = v10;
    }

    if (v3 >= *v10 - v11)
    {
      v12 = *v10 - v11;
    }

    else
    {
      v12 = v3;
    }

    memcpy((v10[3] + v11), v4, v12);
    v13 = vaddq_s64(*(v10 + 1), vdupq_n_s64(v12));
    *(v10 + 1) = v13;
    v9 += v12;
    if (*v10 != v13.i64[0])
    {
      goto LABEL_25;
    }

    if (pthread_mutex_lock((a1 + 160)))
    {
      goto LABEL_26;
    }

    v15 = *(a1 + 224);
    v14 = *(a1 + 228);
    if (pthread_mutex_unlock((a1 + 160)))
    {
      goto LABEL_26;
    }

    if ((v15 - 1) <= 1)
    {
      break;
    }

    BOMBufferFIFOEnqueue(*(a1 + 88), v10);
    *(a1 + 96) = 0;
LABEL_25:
    v4 += v12;
    v3 -= v12;
    if (!v3)
    {
      goto LABEL_26;
    }
  }

  if (v14)
  {
    *__error() = v14;
    return -1;
  }

LABEL_26:
  *(a1 + 16) += v9;
  return v9;
}

uint64_t _BOMFileWriteRaw(uint64_t a1, UInt8 *buffer, CFIndex bufferLength)
{
  v6 = 0;
  do
  {
    if (*a1 == 2)
    {
      v7 = CFWriteStreamWrite(*(a1 + 8), buffer, bufferLength);
    }

    else if (*a1 == 1)
    {
      v7 = (*(*(a1 + 240) + 48))(*(*(a1 + 240) + 8), *(a1 + 8), buffer, bufferLength);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & ~(v7 >> 63);
    v6 += v8;
    if (v7 < 1)
    {
      break;
    }

    buffer += v8;
    bufferLength -= v8;
  }

  while (bufferLength);
  *(a1 + 16) += v6;
  if (v7 < 0)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

_DWORD *BOMTreeNewWithOptions(uint64_t a1, unsigned int a2, const char *a3, int a4, char a5)
{
  if (!a1)
  {
    return 0;
  }

  v8 = a2;
  if (!a2 && !a3)
  {
    return 0;
  }

  if (!a2)
  {
    v8 = BOMStorageNewNamedBlock(a1, a3);
    if (!v8)
    {
      return 0;
    }
  }

  return _BOMTreeNew(a1, a3, v8, a4, a5);
}

uint64_t CUIBitVectorNumberOfBitsSet(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    LODWORD(v3) = 0;
    v4 = a1 + 2;
    do
    {
      v5 = v4->_os_unfair_lock_opaque;
      ++v4;
      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      v3 = (v6.i32[0] + v3);
      --os_unfair_lock_opaque;
    }

    while (os_unfair_lock_opaque);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(a1);
  return v3;
}

_DWORD *CUIBitVectorToData(os_unfair_lock_s *a1, size_t *a2)
{
  os_unfair_lock_lock(a1);
  v4 = 4 * a1[1]._os_unfair_lock_opaque + 4;
  *a2 = v4;
  v5 = malloc_type_malloc(v4, 0x66860228uLL);
  v6 = v5;
  *v5 = a1[1]._os_unfair_lock_opaque;
  if (a1[1]._os_unfair_lock_opaque)
  {
    v7 = 0;
    do
    {
      v5[v7 + 1] = a1[v7 + 2]._os_unfair_lock_opaque;
      ++v7;
    }

    while (v7 < a1[1]._os_unfair_lock_opaque);
  }

  __CFSetLastAllocationEventName();
  os_unfair_lock_unlock(a1);
  return v6;
}

uint64_t BOMStorageCommit(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 1052);
  if ((v2 & 0x10) == 0)
  {
    return 0;
  }

  if (*(a1 + 1028) == -1)
  {
    v3 = 0;
    *(a1 + 1036) = *(a1 + 1032);
    goto LABEL_8;
  }

  _FlushWriteCache(a1);
  if (_AdjustFileSize(a1, 0, 0))
  {
    return 1;
  }

  v5 = *(a1 + 1088);
  v6 = 8 * (*(a1 + 1068) + *(v5 + 8));
  v7 = (v6 + 24);
  if (v6 == -24)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(v5 + 48))(v5, (v6 + 39) & 0xFFFFFFF0);
    if (!v8)
    {
      v8 = (*(a1 + 1032) + 15) & 0xFFFFFFF0;
    }
  }

  v9 = *(a1 + 1060);
  v10 = *(a1 + 1064);
  *(a1 + 1060) = v8;
  *(a1 + 1064) = v7;
  if (v9 && v10)
  {
    (*(*(a1 + 1088) + 40))();
  }

  v11 = v8;
  v3 = 1;
  v12 = BOMStreamWithFile(*(a1 + 1028), v11, v7, 1, 0);
  if (v12)
  {
    v19 = v12;
    v20 = *(a1 + 1068);
    BOMStreamWriteUInt32(v12, v20, v13, v14, v15, v16, v17, v18);
    if (v20)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        if (v28 >= *(a1 + 1068))
        {
          _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v21, v22, v23, v24, v25, v26, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
          v31 = 0xFFFFFFFFLL;
        }

        else
        {
          v29 = *(*(a1 + 1072) + v27);
          v30 = bswap32(v29);
          if (*(a1 + 1052))
          {
            v31 = v29;
          }

          else
          {
            v31 = v30;
          }
        }

        BOMStreamWriteUInt32(v19, v31, v21, v22, v23, v24, v25, v26);
        if (v28 >= *(a1 + 1068))
        {
          _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v32, v33, v34, v35, v36, v37, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
          v40 = 0;
        }

        else
        {
          v38 = *(*(a1 + 1072) + v27 + 4);
          v39 = bswap32(v38);
          if (*(a1 + 1052))
          {
            v40 = v38;
          }

          else
          {
            v40 = v39;
          }
        }

        BOMStreamWriteUInt32(v19, v40, v32, v33, v34, v35, v36, v37);
        ++v28;
        v27 += 8;
      }

      while (8 * v20 != v27);
    }

    BOMStreamWriteUInt32(v19, *(*(a1 + 1088) + 8), v21, v22, v23, v24, v25, v26);
    __len = 0;
    v41 = *(a1 + 1088);
    v42 = *(v41 + 24);
    v43 = BOMStreamGetByteOrder(v19) == 1;
    v44 = v42(v41, v43, &__len);
    BOMStreamWriteBuffer(v19, v44, __len, v45, v46, v47, v48, v49);
    free(v44);
    v57 = BOMStreamFree(v19, v50, v51, v52, v53, v54, v55, v56);
    if (_AdjustFileSize(a1, 0, 0))
    {
      return 1;
    }

    *(a1 + 1036) = *(a1 + 1032);
    v3 = (_WriteRootPage(a1) | v57) != 0;
    v2 = *(a1 + 1052);
LABEL_8:
    *(a1 + 1052) = v2 & 0xFFFFFFEF;
  }

  return v3;
}

uint64_t BOMStorageCompact(uint64_t a1)
{
  if (!a1 || (*(a1 + 1052) & 1) == 0 || *(a1 + 1028) == -1)
  {
    return 1;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v77 = 0u;
  v2 = *(a1 + 1120);
  BOMStorageCommit(a1);
  __strlcpy_chk();
  v3 = (*(v2 + 72))(*(v2 + 8), *(a1 + 1028), &v77);
  if (v3 == -1)
  {
    v4 = __error();
    v5 = strerror(*v4);
    v13 = BOMExceptionHandlerMessage("fstat: %s", v6, v7, v8, v9, v10, v11, v12, v5);
    v14 = __error();
    _BOMExceptionHandlerCall(v13, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1319, *v14);
  }

  __strlcpy_chk();
  v15 = strrchr(__s, 47);
  if (v15)
  {
    *v15 = 0;
  }

  else
  {
    __strlcpy_chk();
  }

  __strlcat_chk();
  if (!mktemp(__s))
  {
    _CUILog(4, "%s: mktemp can't get temp file %s", v17, v18, v19, v20, v21, v22, "int BOMStorageCompact(BOMStorage)");
    return 1;
  }

  v23 = BOMStorageNewWithOptionsAndSys(__s, v16, v2);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = v23;
  if (*(a1 + 1056))
  {
    v25 = 1;
    do
    {
      if (v25 != BOMStorageNewBlock(v24))
      {
        _CUILog(4, "%s: unable to reserve block %d", v26, v27, v28, v29, v30, v31, "int BOMStorageCompact(BOMStorage)");
        goto LABEL_56;
      }

      v32 = *(a1 + 1068);
      if (v32 <= v25)
      {
        _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v26, v27, v28, v29, v30, v31, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
        v32 = *(a1 + 1068);
      }

      else
      {
        v33 = *(*(a1 + 1072) + 8 * v25);
        v34 = bswap32(v33);
        if ((*(a1 + 1052) & 1) == 0)
        {
          v33 = v34;
        }

        if (v33 != -1)
        {
          goto LABEL_26;
        }
      }

      if (v32 <= v25)
      {
        _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v26, v27, v28, v29, v30, v31, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
        v32 = *(a1 + 1068);
      }

      else
      {
        v35 = *(*(a1 + 1072) + 8 * v25 + 4);
        v36 = bswap32(v35);
        if ((*(a1 + 1052) & 1) == 0)
        {
          v35 = v36;
        }

        if (v35 == -1)
        {
          BOMStorageFreeBlock(v24, v25, v26, v27, v28, v29, v30, v31);
          goto LABEL_39;
        }
      }

LABEL_26:
      if (v32 <= v25)
      {
        _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v26, v27, v28, v29, v30, v31, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
        v39 = 0;
      }

      else
      {
        v37 = *(*(a1 + 1072) + 8 * v25 + 4);
        v38 = bswap32(v37);
        if (*(a1 + 1052))
        {
          v39 = v37;
        }

        else
        {
          v39 = v38;
        }
      }

      v40 = malloc_type_malloc(v39, 0x2D8649F0uLL);
      if (BOMStorageCopyFromBlock(a1, v25, v40, v41, v42, v43, v44, v45) || (*(a1 + 1068) <= v25 ? (_CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v46, v47, v48, v49, v50, v51, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)"), v54 = 0) : (v52 = *(*(a1 + 1072) + 8 * v25 + 4), v53 = bswap32(v52), (*(a1 + 1052) & 1) != 0) ? (v54 = v52) : (v54 = v53), BOMStorageCopyToBlock(v24, v25, v40, v54, v48, v49, v50, v51)))
      {
        _CUILog(4, "%s: unable to copy block %d", v46, v47, v48, v49, v50, v51, "int BOMStorageCompact(BOMStorage)");
        free(v40);
        goto LABEL_56;
      }

      free(v40);
LABEL_39:
      v25 = (v25 + 1);
    }

    while (v25 <= *(a1 + 1056));
  }

  if (*(a1 + 1096))
  {
    v55 = *(a1 + 1100);
    *(v24 + 1100) = v55;
    if (v55)
    {
      v56 = (*(*(v24 + 1088) + 48))();
      if (!v56)
      {
        v56 = (*(v24 + 1032) + 15) & 0xFFFFFFF0;
      }
    }

    else
    {
      v56 = 0;
    }

    *(v24 + 1096) = v56;
    _ExpandMapAddress(v24, v56 + v55);
    memmove((*(v24 + 1040) + *(v24 + 1096)), (*(a1 + 1040) + *(a1 + 1096)), v55);
    _AdjustFileSize(v24, v56, v55);
    if (*(v24 + 1028) != -1)
    {
      _AddToWriteCache(v24, v56, v55);
    }

    *(v24 + 1052) |= 0x10u;
  }

  BOMStorageCommit(v24);
  v57 = malloc_type_malloc(0x470uLL, 0x10A0040835A29DFuLL);
  if (!v57)
  {
    BOMStorageFree(v24);
    v69 = __error();
    strerror(*v69);
    _CUILog(4, "%s: malloc: %s", v70, v71, v72, v73, v74, v75, "int BOMStorageCompact(BOMStorage)");
LABEL_56:
    unlink(__s);
    return 1;
  }

  v58 = v57;
  memcpy(v57, a1, 0x470uLL);
  BOMStorageFree(v58);
  if ((*(v2 + 88))(*(v2 + 8), __s, v87))
  {
    v59 = __error();
    strerror(*v59);
    _CUILog(4, "%s: rename: '%s' '%s' failed %s", v60, v61, v62, v63, v64, v65, "int BOMStorageCompact(BOMStorage)");
    BOMStorageFree(v24);
    v66 = 1;
    v67 = BOMStorageOpenWithSys(v87, 1, v2);
    if (v67)
    {
      v68 = v67;
      memcpy(a1, v67, 0x470uLL);
      free(v68);
    }
  }

  else
  {
    if (v3 != -1)
    {
      (*(v2 + 112))(*(v2 + 8), *(v24 + 1028), WORD2(v77));
      (*(v2 + 120))(*(v2 + 8), *(v24 + 1028), v78, DWORD1(v78));
    }

    memcpy(a1, v24, 0x470uLL);
    __strlcpy_chk();
    free(v24);
    return 0;
  }

  return v66;
}

char *_dense_serialize(uint64_t **a1, int a2, size_t *a3)
{
  v4 = *a1;
  v5 = 8 * *(a1 + 2);
  *a3 = v5;
  result = malloc_type_malloc(v5, 0x8ACBCD47uLL);
  if (result)
  {
    v7 = *(v4 + 4);
    if (v7 < 1)
    {
      v14 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = *v4;
      v11 = vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 0), 0x1FuLL));
      do
      {
        v12 = *(v10 + 8 * v8);
        if (v12)
        {
          v13 = &result[8 * v9];
          do
          {
            *v13++ = vbsl_s8(v11, v12[1], vrev32_s8(v12[1]));
            v12 = *v12;
            ++v9;
          }

          while (v12);
          v7 = *(v4 + 4);
        }

        ++v8;
      }

      while (v8 < v7);
      v14 = v9;
    }

    v15 = v4[1];
    if (v15)
    {
      v16 = &result[8 * v14];
      v17 = vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 0), 0x1FuLL));
      do
      {
        *v16++ = vbsl_s8(v17, v15[1], vrev32_s8(v15[1]));
        v15 = *v15;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t BOMStreamGetByteOrder(uint64_t result)
{
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

id OUTLINED_FUNCTION_24_0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  a10 = a1;

  return [v10 appendBytes:&a9 length:12];
}

void sub_18DF5E1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF5E480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF5E694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF5E8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *(a18 + 8 * v18);

  return [v20 valueThreshold];
}

void __freeBitmapContextData(size_t a1, void *a2)
{
  if (munmap(a2, a1) < 0)
  {
    v2 = __error();
    v3 = strerror(*v2);
    _CUILog(4, "CoreUI: CUICGBitmapContextCreate() munmap failed error:'%s'", v4, v5, v6, v7, v8, v9, v3);
  }
}

uint64_t CUISVGNodeCanBeRepresentedAsPath()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v5 = 1;
  CGSVGNodeEnumerate();
  v0 = *(v3 + 24);
  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_18DF5F008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CUISVGNodeCanBeRepresentedAsPath_block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  if (!a3)
  {
    v5 = result;
    result = CGSVGNodeGetType();
    if (result != 2)
    {
      if (result != 3)
      {
        return result;
      }

      goto LABEL_4;
    }

    CGSVGNodeGetAttributeMap();
    result = CGSVGAttributeMapGetAttribute();
    if (result)
    {
      result = CGSVGAttributeGetPaint();
      if (result)
      {
        result = CGSVGPaintGetType();
        if (result >= 1)
        {
LABEL_4:
          *(*(*(v5 + 32) + 8) + 24) = 0;
          *a4 = 1;
        }
      }
    }
  }

  return result;
}

uint64_t CUIUncompressDeepmap2ImageData(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CUILog(4, "CoreUI: Received NULL buffer in [%s]", a3, a4, a5, a6, a7, a8, "Boolean CUIUncompressDeepmap2ImageData(const u_int8_t *, u_int64_t, u_int32_t, u_int8_t *, size_t, size_t, size_t, u_int32_t)");
    return 0;
  }

  if (!a4)
  {
    _CUILog(4, "CoreUI: Received NULL destination in [%s]", a3, 0, a5, a6, a7, a8, "Boolean CUIUncompressDeepmap2ImageData(const u_int8_t *, u_int64_t, u_int32_t, u_int8_t *, size_t, size_t, size_t, u_int32_t)");
    return 0;
  }

  v10 = a3;
  v12 = a1;
  if (a8 > 1195456543)
  {
    if (a8 != 1195456544)
    {
      v13 = 1380401751;
      goto LABEL_10;
    }
  }

  else if (a8 != 1095911234)
  {
    v13 = 1195454774;
LABEL_10:
    if (a8 == v13)
    {
      goto LABEL_11;
    }

    _CUILog(4, "CoreUI: %s got unsupported pixel format [%d]", a3, a4, a5, a6, a7, a8, "Boolean CUIUncompressDeepmap2ImageData(const u_int8_t *, u_int64_t, u_int32_t, u_int8_t *, size_t, size_t, size_t, u_int32_t)");
    return 0;
  }

LABEL_11:
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  if (a3)
  {
    v14 = a1[3];
    a2 = a1[4];
    v34 = *a1 == 1262699075;
    v15 = [[NSMutableArray alloc] initWithCapacity:a3];
    v16 = v12;
    v12 += 5;
  }

  else
  {
    v34 = 0;
    v15 = 0;
    v16 = 0;
    v14 = a6;
  }

  v17 = 0;
  v18 = 1;
  do
  {
    if (v10)
    {
      if (v18 - 1 >= v10)
      {
        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"Boolean CUIUncompressDeepmap2ImageData(const u_int8_t * stringWithUTF8String:u_int32_t, u_int8_t *, size_t, size_t, size_t, u_int32_t)"], @"CUIDeepmap2Compression.m", 404, @"Invalid chunk index"];
      }

      if (!v16 || v14 - 1 >= a6)
      {
        _CUILog(4, "CoreUI: Invalid chunk rows of %lu in image of height %lu", a3, a4, a5, a6, a7, a8, v14);
        if (!v15)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

    if (*v12 >= 2)
    {
      _CUILog(4, "CoreUI: Encoded Deepmap 2.0 blob version %lu greater than decoder version %lu", a3, a4, a5, a6, a7, a8, *v12);
      *(v41 + 24) = 0;
      if (!v15)
      {
        goto LABEL_43;
      }

LABEL_42:

      goto LABEL_43;
    }

    v19 = v12[1];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = __CUIUncompressDeepmap2ImageData_block_invoke;
    v38[3] = &unk_1E724A2F8;
    v38[6] = v14;
    v38[7] = a7;
    v38[8] = a4;
    v38[9] = v17;
    v38[10] = v12;
    v38[11] = v12;
    v39 = v19;
    v38[4] = &v40;
    v38[5] = a5;
    if (!v10)
    {
      __CUIUncompressDeepmap2ImageData_block_invoke(v38);
      goto LABEL_38;
    }

    if (!v15)
    {
      v15 = objc_alloc_init(NSMutableArray);
    }

    v20 = [v38 copy];
    [v15 addObject:v20];

    if (v18 >= v10)
    {
      break;
    }

    v17 += v14;
    v21 = (v16 + a2);
    v16 = (v16 + a2 + 20);
    v22 = v21[8];
    v23 = v21[9];
    v24 = bswap32(v22);
    v25 = bswap32(v23);
    v14 = v34 ? v24 : v22;
    a2 = v34 ? v25 : v23;
    v12 = v21 + 10;
    ++v18;
  }

  while (v17 < a6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __CUIUncompressDeepmap2ImageData_block_invoke_2;
  block[3] = &unk_1E724A2D0;
  block[4] = v15;
  dispatch_apply([v15 count], 0, block);

LABEL_38:
  if (v41[3])
  {
    v32 = 1;
    goto LABEL_44;
  }

  _CUILog(4, "CoreUI: CUIUncompressDeepmap2ImageData() fails [version %lu].", v26, v27, v28, v29, v30, v31, 1);
LABEL_43:
  v32 = 0;
LABEL_44:
  _Block_object_dispose(&v40, 8);
  return v32;
}

void __CUIUncompressDeepmap2ImageData_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 88) + 8) <= 0x100000uLL)
  {
    if (vImageDeepmap2Decode())
    {
      return;
    }

    _CUILog(4, "CoreUI: vImageDeepmap2Decode() returned 0.", v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    v2 = vImageDeepmap2DecodeStreamCreate();
    if (!v2)
    {
      while (v2 != -1)
      {
        if (v2)
        {
          if (v2 != 1)
          {
            __CUIUncompressDeepmap2ImageData_block_invoke_cold_1();
          }

          if (!vImageDeepmap2DecodeStreamRelease())
          {
            return;
          }

          break;
        }

        v2 = vImageDeepmap2DecodeStreamProcess();
      }
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

uint64_t _ZN2RB13CubicIteratorIDv2_dE13segment_countIdEEiS1_S1_S1_S1_T_(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5)
{
  __asm { FMOV            V6.2D, #-2.0 }

  v10 = vmaxnmq_f64(vabsq_f64(vaddq_f64(vmlaq_f64(a3, _Q6, a2), a1)), vabsq_f64(vaddq_f64(vmlaq_f64(a4, _Q6, a3), a2)));
  v11 = ceil(sqrt(1.0 / a5 * 0.75 * sqrt(vaddvq_f64(vmulq_f64(v10, v10)))));
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (v11 >= 1.0)
  {
    v14 = 1024.0;
    if (v11 <= 1024.0)
    {
      v14 = v11;
    }

    return v14;
  }

  else
  {
    v13 = vceqq_f64(a1, a4);
    return (vandq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0] & 0x8000000000000000) == 0;
  }
}

void sub_18DF5F998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __csiCompressImageProviderCopyImageBlockSetWithOptions(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v5 = [objc_loadWeak((a1 + 48)) key];
  CUIRenditionKeyValueForAttribute(v5, 17);
  v6 = 1;
  CUIRenditionKeyValueForAttribute(v5, 1);
  CUIRenditionKeyValueForAttribute(v5, 2);
  kdebug_trace();
  v7 = [*(a1 + 24) bytes];
  if (a3)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(a3, kCGImageBlockFormatRequest, &value) && CFStringCompare(value, kCGImageBlockFormatBGRx8, 0) == kCFCompareEqualTo)
    {
      if (*(v7 + 6) != 1095911234)
      {
LABEL_45:
        v30 = 0;
        goto LABEL_46;
      }

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }
  }

  v8 = *(a1 + 16);
  v9 = *(v7 + 3);
  v10 = *(v7 + 4);
  v11 = *(*(a1 + 32) + 8) - 2;
  v12 = (v11 >= 0xA || ((0x3CFu >> v11) & 1) == 0) && (v9 != v8 || v10 != HIDWORD(v8));
  v14 = *(a1 + 8);
  v15 = *(v7 + 6);
  if (v15 <= 1195456543)
  {
    if (v15 == 1095911234)
    {
      goto LABEL_25;
    }

    if (v15 == 1195454774)
    {
      v6 = 5;
      goto LABEL_25;
    }
  }

  else
  {
    switch(v15)
    {
      case 1195456544:
        v6 = 2;
        goto LABEL_25;
      case 1380401717:
        v6 = 6;
        goto LABEL_25;
      case 1380401751:
        v6 = 4;
        goto LABEL_25;
    }
  }

  v43 = +[NSAssertionHandler currentHandler];
  v16 = [NSString stringWithUTF8String:"CGImageBlockSetRef __CUIImageProviderCopyImageBlockSetWithOptions(void *, CGImageProviderRef, CGRect, CGSize, CFDictionaryRef)"];
  [objc_loadWeak((a1 + 48)) name];
  v42 = "CGImageBlockSetRef __CUIImageProviderCopyImageBlockSetWithOptions(void *, CGImageProviderRef, CGRect, CGSize, CFDictionaryRef)";
  [(NSAssertionHandler *)v43 handleFailureInFunction:v16 file:@"CUIThemeRendition.m" lineNumber:1350 description:@"CoreUI: %s unknown pixel format %d rendition '%@'"];
  v6 = 0xFFFFFFFFLL;
LABEL_25:
  if (!v12)
  {
    if (_CSIAcquireCachedBlockData(a1, v6))
    {
      if (v6 <= 2 && objc_loadWeak((a1 + (8 * v6) + 56)))
      {
        goto LABEL_29;
      }

      _CUILog(4, "CoreUI: image data is not available, returning a 1,1 image instead that is all black", v17, v18, v19, v20, v21, v22, v42);
      v23 = CGImageBlockCreate();
      if (v23)
      {
        goto LABEL_32;
      }

LABEL_44:
      _CUILog(4, "CoreUI: couldn't create block from blockData", v24, v25, v26, v27, v28, v29, v42);
      goto LABEL_45;
    }

    v36 = v9 | (v10 << 32);
    __bppFromBlockPixelFormat(v6);
    v37 = [[_CSIRenditionBlockData alloc] initWithPixelWidth:v9 pixelHeight:v10 sourceRowbytes:*(a1 + 112) pixelFormat:v6];
    v35 = v37;
    if (v37)
    {
      strlcpy(v37 + 48, v7 + 40, 0x80uLL);
      v35[2] = *(v7 + 6);
    }

    if ([(_CSIRenditionBlockData *)v35 expandCSIBitmapData:0 fromSlice:v36 makeReadOnly:1, v38, v39, v40])
    {
      _CSIStoreBlockData(a1, v35, v6);
      goto LABEL_29;
    }

LABEL_43:

    goto LABEL_44;
  }

  v31 = [[_CSIRenditionBlockData alloc] initWithPixelWidth:v8 pixelHeight:SHIDWORD(v8) sourceRowbytes:*(a1 + 112) pixelFormat:v6];
  v35 = v31;
  if (v31)
  {
    strlcpy(v31 + 48, v7 + 40, 0x80uLL);
    v35[2] = *(v7 + 6);
  }

  if (![(_CSIRenditionBlockData *)v35 expandCSIBitmapData:v14 fromSlice:v8 makeReadOnly:1, v32, v33, v34])
  {
    goto LABEL_43;
  }

LABEL_29:
  v23 = CGImageBlockCreate();
  if (!v23)
  {
    goto LABEL_44;
  }

LABEL_32:
  value = v23;
  v30 = CGImageBlockSetCreate();
LABEL_46:
  kdebug_trace();
  return v30;
}

BOOL _CSIAcquireCachedBlockData(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 40));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    os_unfair_lock_unlock((a1 + 40));
    return 0;
  }

  v5 = WeakRetained;
  if (a2)
  {
    if (a2 == 1)
    {
      v6 = 64;
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      v6 = 72;
    }

    v8 = objc_loadWeakRetained((a1 + v6));
    if (!v8)
    {
LABEL_9:
      v15 = [v5 copySharedBlockDataWithPixelFormat:a2];
      if (a2 == 2)
      {
        v16 = (a1 + 72);
      }

      else
      {
        if (a2 != 1)
        {
          if ((a2 - 7) <= 0xFFFFFFFB)
          {
            _CUILog(4, "CUIThemeRendition %s called with bogus pixel format %d", v9, v10, v11, v12, v13, v14, "BOOL _CSIAcquireCachedBlockData(CSIHelper *, enum CSIRenditionBlockPixelFormat)");
          }

          goto LABEL_19;
        }

        v16 = (a1 + 64);
      }

      goto LABEL_18;
    }
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 56));
    if (!v8)
    {
      v15 = [v5 copySharedBlockDataWithPixelFormat:0];
      v16 = (a1 + 56);
LABEL_18:
      objc_storeWeak(v16, v15);
      goto LABEL_19;
    }
  }

  v15 = v8;
LABEL_19:

  os_unfair_lock_unlock((a1 + 40));
  return v15 != 0;
}

id _CSIStoreBlockData(uint64_t a1, void *a2, int a3)
{
  os_unfair_lock_lock((a1 + 40));
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = 64;
    }

    else
    {
      if (a3 != 2)
      {
LABEL_13:
        [objc_loadWeak((a1 + 48)) setSharedBlockData:a2];
        v10 = a2;
        goto LABEL_14;
      }

      v6 = 72;
    }

    WeakRetained = objc_loadWeakRetained((a1 + v6));
    if (!WeakRetained)
    {
      if (a3 == 1)
      {
        v8 = (a1 + 64);
      }

      else
      {
        v8 = (a1 + 72);
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = (a1 + 56);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (!WeakRetained)
    {
LABEL_12:
      objc_storeWeak(v8, a2);
      goto LABEL_13;
    }
  }

  v9 = WeakRetained;

  v10 = v9;
LABEL_14:
  v11 = v10;
  os_unfair_lock_unlock((a1 + 40));
  return v11;
}

void __csiImageBlockRelease(id a1)
{
  if (a1 && !*(a1 + 176))
  {
    *(a1 + 176) = 1;
  }
}

void sub_18DF608BC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

double CGPathCubicLength(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  *&v16[0].v = a1;
  v17 = a2;
  *&v14[0].v = a3;
  v15 = a4;
  *&v12[0].v = a5;
  v13 = a6;
  *&v10[0].v = a7;
  v11 = a8;
  CG::Cubic::Cubic(v9, v16, v14, v12, v10);
  return CG::Cubic::length(v9, 0.5);
}

float64x2_t CG::Cubic::Cubic(CG::Cubic *this, const Point *a2, const Point *a3, const Point *a4, const Point *a5)
{
  *this = *&a2->v;
  *(this + 1) = *&a3->v;
  *(this + 2) = *&a4->v;
  v5 = *(this + 1);
  v6 = vsubq_f64(v5, *this);
  __asm { FMOV            V3.2D, #3.0 }

  *(this + 3) = *&a5->v;
  *(this + 4) = vmulq_f64(v6, _Q3);
  v12 = *(this + 2);
  v13 = vsubq_f64(v12, v5);
  result = vaddq_f64(v6, vsubq_f64(vsubq_f64(*(this + 3), v12), vaddq_f64(v13, v13)));
  *(this + 5) = vmulq_f64(vsubq_f64(v13, v6), _Q3);
  *(this + 6) = result;
  return result;
}

double RB::cubic_length<double>(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5)
{
  v5 = _ZN2RB13CubicIteratorIDv2_dE13segment_countIdEEiS1_S1_S1_S1_T_(a1, a2, a3, a4, a5);
  _ZN2RB13CubicIteratorIDv2_dEC1ES1_S1_S1_S1_i(v16, v5, a1, a2, a3, a4);
  if (v5 < 1)
  {
    return 0.0;
  }

  v7 = v16[0];
  v6 = v16[1];
  result = 0.0;
  v9 = v16[2];
  do
  {
    v10 = vaddq_f64(v7, v6);
    v6 = vaddq_f64(v6, v9);
    v9 = vaddq_f64(v9, v16[3]);
    v11 = vsubq_f64(v10, v7);
    result = result + sqrt(vaddvq_f64(vmulq_f64(v11, v11)));
    v7 = v10;
    LODWORD(v5) = v5 - 1;
  }

  while (v5);
  return result;
}

float64x2_t *_ZN2RB13CubicIteratorIDv2_dEC2ES1_S1_S1_S1_i(float64x2_t *result, int a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6)
{
  __asm { FMOV            V5.2D, #3.0 }

  v11 = vmulq_f64(vsubq_f64(a4, a3), _Q5);
  v12 = vmlaq_f64(vnegq_f64(v11), _Q5, vsubq_f64(a5, a4));
  v13 = vsubq_f64(vsubq_f64(vsubq_f64(a6, a3), v11), v12);
  v14 = 1.0 / a2;
  __asm { FMOV            V7.2D, #6.0 }

  v16 = (v14 * (v14 * v14));
  v17 = vmulq_n_f64(vmulq_f64(v13, _Q7), v16);
  result[3] = v17;
  _Q5.f64[0] = (v14 * v14);
  *result = a3;
  result[1] = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v12, _Q5.f64[0]), v13, v16), v11, v14);
  result[2] = vmlaq_n_f64(v17, vaddq_f64(v12, v12), _Q5.f64[0]);
  return result;
}

BOOL CUISVGAttributeGetBoolean(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!CGSVGAttributeGetAtom())
  {
    return 0;
  }

  v1 = CGSVGAtomCopyString();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFStringCompare(v1, @"1", 1uLL) == kCFCompareEqualTo || CFStringCompare(v2, @"true", 1uLL) == kCFCompareEqualTo || CFStringCompare(v2, @"yes", 1uLL) == kCFCompareEqualTo;
  CFRelease(v2);
  return v3;
}

__CFString *_CUICreateStringWithColor(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  Name = CGColorSpaceGetName(ColorSpace);
  NumberOfComponents = CGColorGetNumberOfComponents(a1);
  Components = CGColorGetComponents(a1);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v7 = Mutable;
  if (Name)
  {
    CFStringAppendFormat(Mutable, 0, @"%@-", Name);
    if (!NumberOfComponents)
    {
      return v7;
    }
  }

  else
  {
    v8 = CGColorSpaceCopyICCData(ColorSpace);
    CFStringAppendFormat(v7, 0, @"%@", v8);
    CFRelease(v8);
    if (!NumberOfComponents)
    {
      return v7;
    }
  }

  do
  {
    if (--NumberOfComponents)
    {
      v9 = @"%f,";
    }

    else
    {
      v9 = @"%f";
    }

    v10 = *Components++;
    CFStringAppendFormat(v7, 0, v9, v10);
  }

  while (NumberOfComponents);
  return v7;
}

uint64_t ____hardware_supports_encoding_block_invoke()
{
  result = MGGetBoolAnswer();
  __hardware_supports_encoding_supportsASTC = result;
  return result;
}

os_log_t __CUILogHandle_block_invoke()
{
  result = os_log_create("com.apple.coreui", "framework");
  __handle = result;
  return result;
}

void sub_18DF61EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF621EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CUIColorGetSRGBClear()
{
  if (_CUIColorGetSRGBClear_onceToken != -1)
  {
    _CUIColorGetSRGBClear_cold_1();
  }

  return _CUIColorGetSRGBClear_sClearColor;
}

void sub_18DF62CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CUIColorGetSRGBWhite()
{
  if (_CUIColorGetSRGBWhite_onceToken != -1)
  {
    _CUIColorGetSRGBWhite_cold_1();
  }

  return _CUIColorGetSRGBWhite_sWhiteColor;
}

void *CUIBitVectorCopy(unsigned int *a1)
{
  v2 = a1[1];
  v3 = malloc_type_malloc(4 * v2 + 8, 0xE343BF1CuLL);
  bzero(v3, 4 * v2 + 8);
  __CFSetLastAllocationEventName();
  *v3 = 0;
  v3[1] = v2;
  v4 = 4 * a1[1] + 8;

  return memcpy(v3, a1, v4);
}

const char *__SetBoolConfigFromEnvironment(BOOL *a1, char *a2)
{
  result = getenv(a2);
  if (result)
  {
    v4 = result;
    result = strncasecmp(result, "NO", 2uLL);
    if (result)
    {
      result = strncasecmp(v4, "0", 1uLL);
      v5 = result != 0;
      if (!a1)
      {
        return result;
      }
    }

    else
    {
      v5 = 0;
      if (!a1)
      {
        return result;
      }
    }

    *a1 = v5;
  }

  return result;
}

double _segmentForGlyphContinuousSize(char a1, double a2)
{
  v2 = 0.2;
  if (a2 >= 0.2)
  {
    if (a2 <= 2.0)
    {
      for (i = 1; i <= 5; ++i)
      {
        if (*&kCoreThemeContinuousGlyphInternalSizes[i] > a2)
        {
          break;
        }
      }

      return *&kCoreThemeContinuousGlyphInternalSizes[i - 1];
    }

    else if (a1)
    {
      return 2.0;
    }

    else
    {
      return 1.647;
    }
  }

  return v2;
}

uint64_t sub_18DF639C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18DF639D0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_18DF66498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t CUIBitVectorUnSetBit(os_unfair_lock_s *a1, unsigned int a2)
{
  os_unfair_lock_lock(a1);
  if (a2 >> 5 >= a1[1]._os_unfair_lock_opaque)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
    a1[(a2 >> 5) + 2]._os_unfair_lock_opaque &= ~(1 << a2);
  }

  os_unfair_lock_unlock(a1);
  return v4;
}

uint64_t CUIBitVectorBucketValue(os_unfair_lock_s *a1, unsigned int a2)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_opaque = a1[(a2 >> 5) + 2]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1);
  return os_unfair_lock_opaque;
}

_DWORD *CUIBitVectorBitAnd(os_unfair_lock_s *a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_lock(a2);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque == a2[1]._os_unfair_lock_opaque)
  {
    v5 = malloc_type_malloc(4 * os_unfair_lock_opaque + 8, 0xE343BF1CuLL);
    bzero(v5, 4 * os_unfair_lock_opaque + 8);
    __CFSetLastAllocationEventName();
    *v5 = 0;
    v5[1] = os_unfair_lock_opaque;
    if (a1[1]._os_unfair_lock_opaque)
    {
      v6 = 2;
      do
      {
        v5[v6] = a2[v6]._os_unfair_lock_opaque & a1[v6]._os_unfair_lock_opaque;
        v7 = v6++ - 1;
      }

      while (v7 < a1[1]._os_unfair_lock_opaque);
    }
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(a2);
  os_unfair_lock_unlock(a1);
  return v5;
}

_DWORD *CUIBitVectorBitOrForBucket(os_unfair_lock_s *a1, os_unfair_lock_s *a2, int a3)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_lock(a2);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque == a2[1]._os_unfair_lock_opaque)
  {
    v7 = malloc_type_malloc(4 * os_unfair_lock_opaque + 8, 0xE343BF1CuLL);
    bzero(v7, 4 * os_unfair_lock_opaque + 8);
    __CFSetLastAllocationEventName();
    *v7 = 0;
    v7[1] = os_unfair_lock_opaque;
    if (a1[1]._os_unfair_lock_opaque)
    {
      v8 = 0;
      v9 = a1 + 2;
      v10 = v7 + 2;
      do
      {
        if (a3 == v8)
        {
          v10[a3] = a2[a3 + 2]._os_unfair_lock_opaque | v9[a3]._os_unfair_lock_opaque;
        }

        else
        {
          v10[v8] = v9[v8]._os_unfair_lock_opaque;
        }

        ++v8;
      }

      while (v8 < a1[1]._os_unfair_lock_opaque);
    }

    os_unfair_lock_unlock(a2);
  }

  else
  {
    os_unfair_lock_unlock(a2);
    v7 = 0;
  }

  os_unfair_lock_unlock(a1);
  return v7;
}

BOOL CUIBitVectorEqual(os_unfair_lock_s *a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_lock(a2);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque == a2[1]._os_unfair_lock_opaque)
  {
    if (os_unfair_lock_opaque)
    {
      v5 = a1 + 2;
      v6 = a2 + 2;
      v7 = os_unfair_lock_opaque - 1;
      do
      {
        v9 = v5->_os_unfair_lock_opaque;
        ++v5;
        v8 = v9;
        v11 = v6->_os_unfair_lock_opaque;
        ++v6;
        v10 = v11;
        v13 = v7-- != 0;
        v14 = v8 == v10;
      }

      while (v8 == v10 && v13);
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock(a2);
  os_unfair_lock_unlock(a1);
  return v14;
}

_BYTE *CUIBitVectorToString(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1);
  v2 = (34 * a1[1]._os_unfair_lock_opaque) | 1;
  v3 = malloc_type_calloc((2 * a1[1]._os_unfair_lock_opaque + 32 * a1[1]._os_unfair_lock_opaque) | 1, 1uLL, 0x100004077774924uLL);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    v5 = 0;
    os_unfair_lock_opaque = 0;
    do
    {
      v6 = 0;
      v3[os_unfair_lock_opaque] = 91;
      v7 = (os_unfair_lock_opaque + 1);
      os_unfair_lock_opaque += 2;
      v8 = &v3[v7];
      v9 = v7 << 32;
      do
      {
        if ((a1[v5 + 2]._os_unfair_lock_opaque >> v6))
        {
          v10 = 49;
        }

        else
        {
          v10 = 48;
        }

        v8[v6] = v10;
        ++os_unfair_lock_opaque;
        ++v6;
        v9 += 0x100000000;
      }

      while (v6 != 32);
      v3[v9 >> 32] = 93;
      ++v5;
    }

    while (v5 < a1[1]._os_unfair_lock_opaque);
  }

  if (os_unfair_lock_opaque >= v2)
  {
    CUIBitVectorToString_cold_1();
  }

  __CFSetLastAllocationEventName();
  os_unfair_lock_unlock(a1);
  return v3;
}

CFDataRef CUIImageCompressedWithColorQuantization(uint64_t a1, void *a2, uint64_t a3, int *a4, __int16 *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  if (!*a2 || (v8 = a2, (v9 = a2[3]) == 0) || (v10 = a2[2]) == 0 || (v11 = a2[1]) == 0)
  {
    _CUILog(4, "CoreUI: invalid input image buffer in %s", a3, a4, a5, a6, a7, a8, "CFDataRef CUIImageCompressedWithColorQuantization(CGImageRef, vImage_Buffer, const CUIColorHistogramARGB *, u_int32_t *, short *, size_t *)");
    return 0;
  }

  v12 = 2 * (v9 / v10);
  v13 = v12 & 0xFFFFFFFFFFFFFFF8;
  if ((v12 & 0xFFFFFFFFFFFFFFF8) > 0x20 || ((1 << (v12 & 0xF8)) & 0x100010100) == 0)
  {
    _CUILog(4, "CoreUI: Unsupported bitsPerComponent: %lu %s", a3, a4, a5, a6, a7, a8, v12 & 0xFFFFFFFFFFFFFFF8);
    return 0;
  }

  if (v13 <= 8)
  {
    v15 = 1095911234;
  }

  else
  {
    v15 = 1380401751;
  }

  if (v13 <= 8)
  {
    v16 = 1;
  }

  else
  {
    v16 = 4;
  }

  *a4 = v15;
  *a5 = v16;
  *a6 = CGBitmapGetAlignedBytesPerRow();
  v17 = [[NSMutableDictionary alloc] initWithCapacity:1024];
  v18 = malloc_type_malloc(2 * v10 * v11, 0x1000040BDFB0063uLL);
  if (!v18)
  {
LABEL_77:

    return 0;
  }

  v94 = 2 * v10 * v11;
  v19 = v12 >> 3;
  v20 = 0;
  v96 = 2 * v10;
  __asm { FMOV            V15.2S, #1.0 }

  v102 = vdup_n_s32(0x461C4000u);
  v25 = vneg_f32(0x300000003);
  v26 = vdup_n_s32(0x7800000u);
  v27 = v8[3] / v19;
  v28 = 0;
  v97 = v11;
  v98 = v18;
  v29 = v18;
  v95 = v27;
  v100 = v8;
  while (2)
  {
    v30 = 0;
    v99 = v28;
    v31 = v27 * v28;
    v101 = v29;
    do
    {
      v32 = v31 + 4 * v30;
      v33 = *v8;
      if (v13 < 9)
      {
        v37 = bswap32(*(v33 + v32));
      }

      else
      {
        if (v13 == 32)
        {
          v34 = v33 + 4 * v32;
          v35.i32[0] = *(v34 + 12);
          v35.i32[1] = *v34;
          v36 = *(v34 + 4);
        }

        else
        {
          v38 = (v33 + 2 * v32);
          v39.i32[0] = *v38;
          v39.i32[1] = v38[1];
          v40 = vceqz_s32(vand_s8(v39, 0x7C0000007C00));
          v41 = vshr_n_s32(vshl_n_s32(v39, 0x10uLL), 0x10uLL);
          v36 = vmul_f32(vbsl_s8(v40, 0x7E0000007E000000, v26), vorr_s8(vand_s8(vand_s8(v41, v25), v40), vbic_s8((*&vshl_n_s32(v41, 0xDuLL) | 0x7000000070000000), v40)));
          v40.i32[0] = v38[2];
          v40.i32[1] = v38[3];
          v42 = vceqz_s32(vand_s8(v40, 0x7C0000007C00));
          v43 = vshr_n_s32(vshl_n_s32(v40, 0x10uLL), 0x10uLL);
          v35 = vmul_f32(vbsl_s8(v42, 0x7E0000007E000000, v26), vorr_s8(vand_s8(vand_s8(v43, v25), v42), vbic_s8((*&vshl_n_s32(v43, 0xDuLL) | 0x7000000070000000), v42)));
        }

        if ((1.093 - v36.f32[0]) < 0.001 || (v36.f32[0] + 0.5118) < 0.001 || (1.0183 - v36.f32[1]) < 0.001 || (v36.f32[1] + 0.2267) < 0.001 || (1.0419 - v35.f32[0]) < 0.001 || (v35.f32[0] + 0.3107) < 0.001)
        {
          goto LABEL_76;
        }

        if (v35.f32[1] <= 1.0)
        {
          v44 = v35.f32[1];
        }

        else
        {
          v44 = 1.0;
        }

        v45 = v44 * 10000.0;
        v46 = vcltz_f32(v36);
        v47 = vcgt_f32(v36, _D15);
        if (v35.f32[0] <= 1.0)
        {
          v48 = v35.f32[0];
        }

        else
        {
          v48 = 1.0;
        }

        v49 = v48 * 10000.0;
        if (v35.f32[1] >= 0.0)
        {
          v50 = v45;
        }

        else
        {
          v50 = 0.0;
        }

        if (v35.f32[0] >= 0.0)
        {
          v51 = v49;
        }

        else
        {
          v51 = 0.0;
        }

        v52 = vandq_s8(vshlq_u64(vcvtq_u64_f64(vcvtq_f64_f32(vbic_s8(vmul_f32(vbsl_s8(v47, _D15, v36), v102), v46))), xmmword_18E0201E0), xmmword_18E0201F0);
        v37 = v52.i64[0] | (v50 << 48) | v52.i64[1] | v51;
      }

      v53 = [v17 objectForKey:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", v37)}];
      if (v53)
      {
        v54 = [v53 integerValue];
      }

      else
      {
        if ([v17 count] == 1024)
        {

          free(v98);
          return 0;
        }

        v55 = v10;
        v56 = v20 + 1;
        v57 = [NSNumber numberWithUnsignedShort:v20];
        v58 = v31;
        v59 = v20;
        v60 = v13;
        v61 = v57;
        v62 = [NSNumber numberWithUnsignedLongLong:v37];
        v63 = v61;
        v13 = v60;
        [v17 setObject:v63 forKey:v62];
        v54 = v59;
        v31 = v58;
        v20 = v56;
        v10 = v55;
        v8 = v100;
        v29 = v101;
      }

      *&v29[2 * v30++] = v54;
    }

    while (v10 != v30);
    v28 = v99 + 1;
    v29 += v96;
    v27 = v95;
    if (v99 + 1 != v97)
    {
      continue;
    }

    break;
  }

  Mutable = CFDataCreateMutable(kCFAllocatorDefault, v94 + 8202);
  if (!Mutable)
  {
    _CUILog(4, "CoreUI: encoding error in %s (line %lu)", v65, v66, v67, v68, v69, v70, "CFDataRef CUIImageCompressedWithColorQuantization(CGImageRef, vImage_Buffer, const CUIColorHistogramARGB *, u_int32_t *, short *, size_t *)");
LABEL_76:
    free(v98);
    goto LABEL_77;
  }

  v71 = Mutable;
  *bytes = 0x1CAFEF00DLL;
  CFDataAppendBytes(Mutable, bytes, 8);
  *v108 = [v17 count];
  CFDataAppendBytes(v71, v108, 2);
  v72 = [v17 keysSortedByValueUsingComparator:&__block_literal_global];
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v73 = [v72 countByEnumeratingWithState:&v104 objects:v110 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v105;
    do
    {
      for (i = 0; i != v74; i = i + 1)
      {
        if (*v105 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = *(*(&v104 + 1) + 8 * i);
        if (v13 < 9)
        {
          *v103 = [v77 integerValue];
          v78 = v71;
          v79 = 4;
        }

        else
        {
          *v103 = [v77 integerValue];
          v78 = v71;
          v79 = 8;
        }

        CFDataAppendBytes(v78, v103, v79);
      }

      v74 = [v72 countByEnumeratingWithState:&v104 objects:v110 count:16];
    }

    while (v74);
  }

  v80 = 32 - __clz(*v108 - 1);
  if (*v108 == 1)
  {
    LOBYTE(v80) = 1;
  }

  v81 = v80;
  v82 = (v81 - 1) | ((v81 - 1) >> 1) | (((v81 - 1) | ((v81 - 1) >> 1)) >> 2);
  v83 = v82 | (v82 >> 4);
  v84 = v83 + 1;
  if (v83 >= 0x10)
  {
    CUIImageCompressedWithColorQuantization_cold_1();
  }

  v85 = __compact_bytes(v98, v10, v97, v81, v84);
  if (v85 > v94)
  {
    CUIImageCompressedWithColorQuantization_cold_2();
  }

  if (v85 % v97)
  {
    CUIImageCompressedWithColorQuantization_cold_3();
  }

  CFDataAppendBytes(v71, v98, v85);
  v92 = CUICompressedDataWithLZFSE(v71);
  if (!v92)
  {
    _CUILog(4, "CoreUI: [%s] Failed to compress blob...", v86, v87, v88, v89, v90, v91, "CFDataRef CUIImageCompressedWithColorQuantization(CGImageRef, vImage_Buffer, const CUIColorHistogramARGB *, u_int32_t *, short *, size_t *)");
  }

  CFRelease(v71);
  free(v98);

  return v92;
}

uint64_t __CUIImageCompressedWithColorQuantization_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 integerValue];
  if (v5 > [a3 integerValue])
  {
    return 1;
  }

  v7 = [a2 integerValue];
  if (v7 >= [a3 integerValue])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t __compact_bytes(unsigned __int16 *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = ~(-1 << a4);
  v10 = a1;
  do
  {
    v8 += a5;
    v11 = *a1++;
    *v10 = *v10 & ~(v9 << (16 - v8)) | ((v11 & v9) << (16 - v8));
    v12 = v8 == 16;
    if (v8 == 16)
    {
      v8 = 0;
      v7 += 2;
    }

    v10 += v12;
    v13 = v6 + 1;
    v14 = (v8 - 1);
    v15 = v14 >= 0xF;
    v16 = v14 < 0xF;
    v17 = v7 + 2;
    if (v15)
    {
      v18 = v8;
    }

    else
    {
      v18 = 0;
    }

    if (v15)
    {
      v17 = v7;
    }

    v19 = &v10[v16];
    if (v13 == a2)
    {
      v8 = v18;
      v7 = v17;
      v6 = 0;
    }

    else
    {
      ++v6;
    }

    if (v13 == a2)
    {
      ++v5;
      v10 = v19;
    }
  }

  while (v5 < a3);
  return v7;
}

uint64_t CUIUncompressQuantizedImageData()
{
  v0 = off_1F00D3958();
  v8 = v6;
  if (v6 != 1095911234 && v6 != 1380401751)
  {
    _CUILog(4, "CoreUI: %s got unsupported pixel format [%d]", v2, v3, v4, v5, v6, v7, "Boolean CUIUncompressQuantizedImageData(const u_int8_t *, u_int64_t, u_int8_t *, size_t, size_t, size_t, u_int32_t)");
    return 0;
  }

  v10 = v5;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  v14 = v1;
  v15 = v0;
  memset(&stream, 0, sizeof(stream));
  if (compression_stream_init(&stream, COMPRESSION_STREAM_DECODE, COMPRESSION_LZFSE))
  {
    goto LABEL_13;
  }

  stream.src_ptr = v15;
  stream.src_size = v14;
  v60 = 0;
  stream.dst_ptr = &v60;
  stream.dst_size = 8;
  if (compression_stream_process(&stream, 0) || v60 != -889262067)
  {
    goto LABEL_13;
  }

  if (HIDWORD(v60) >= 2)
  {
    _CUILog(4, "[%s] Decoded version is higher than supported", v16, v17, v18, v19, v20, v21, "Boolean CUIUncompressQuantizedImageData(const u_int8_t *, u_int64_t, u_int8_t *, size_t, size_t, size_t, u_int32_t)");
    return 0;
  }

  v59 = 0;
  stream.dst_ptr = &v59;
  stream.dst_size = 2;
  if (compression_stream_process(&stream, 0))
  {
    goto LABEL_13;
  }

  if (v59 > 0x1000u)
  {
    _CUILog(4, "[%s] Decoded color count %u more than max number of colors allowed during decode...", v16, v17, v18, v19, v20, v21, "Boolean CUIUncompressQuantizedImageData(const u_int8_t *, u_int64_t, u_int8_t *, size_t, size_t, size_t, u_int32_t)");
    return 0;
  }

  v23 = 2;
  if (v8 == 1380401751)
  {
    v23 = 3;
  }

  v24 = v59 << v23;
  bzero(v62, 0x8000uLL);
  stream.dst_ptr = v62;
  stream.dst_size = v24;
  if (compression_stream_process(&stream, 0))
  {
LABEL_13:
    _CUILog(4, "CoreUI: decoding error in %s (line %lu)", v16, v17, v18, v19, v20, v21, "Boolean CUIUncompressQuantizedImageData(const u_int8_t *, u_int64_t, u_int8_t *, size_t, size_t, size_t, u_int32_t)");
    return 0;
  }

  v25 = __clz(v59 - 1) ^ 0x1F;
  if (v59 == 1)
  {
    v25 = 0;
  }

  v26 = v25 | (v25 >> 1) | ((v25 | (v25 >> 1)) >> 2);
  v27 = (v26 | (v26 >> 4)) + 1;
  v57 = (((((v26 | (v26 >> 4)) + 1) * v12 - 1) & 0xFFFFFFFFFFFFFFF0) + 16) >> 3;
  v58 = malloc_type_malloc(v57, 0x5CCDD851uLL);
  if (!v58)
  {
    _CUILog(4, "CoreUI: failed to allocate row buffer in %s", v28, v29, v30, v31, v32, v33, "Boolean CUIUncompressQuantizedImageData(const u_int8_t *, u_int64_t, u_int8_t *, size_t, size_t, size_t, u_int32_t)");
    return 0;
  }

  if (v11)
  {
    v55 = 0;
    v56 = v13 + 1;
    v53 = vdupq_n_s32(0x77800000u);
    v54 = vdupq_n_s32(0x461C4000u);
    v52 = vdupq_n_s32(0x7800000u);
    while (1)
    {
      stream.dst_ptr = v58;
      stream.dst_size = v57;
      if (compression_stream_process(&stream, 0) > COMPRESSION_STATUS_END)
      {
        _CUILog(4, "CoreUI: decoding error in %s (line %lu)", v34, v35, v36, v37, v38, v39, "Boolean CUIUncompressQuantizedImageData(const u_int8_t *, u_int64_t, u_int8_t *, size_t, size_t, size_t, u_int32_t)");
        goto LABEL_39;
      }

      if (v12)
      {
        break;
      }

LABEL_35:
      bzero(v58, v57);
      v13 = (v13 + v10);
      ++v55;
      v56 += v10;
      if (v55 == v11)
      {
        goto LABEL_36;
      }
    }

    v40 = 0;
    v41 = v59;
    v42 = v56;
    v43 = v13;
    v44 = v12;
    v45 = v58;
    while (1)
    {
      v46 = (*v45 >> (16 - (v27 + v40))) & ~(-1 << v27);
      if (v46 >= v41)
      {
        break;
      }

      v40 += v27;
      v47 = v40 == 16;
      if (v40 == 16)
      {
        v40 = 0;
      }

      if (v8 == 1380401751)
      {
        v48 = *&v62[2 * v46];
        v49 = vmovn_s64(vshlq_u64(vdupq_n_s64(v48), xmmword_18E020200));
        v49.i16[1] = v49.i16[2];
        v49.i16[2] = v48;
        v49.i16[3] = HIWORD(v48);
        v50 = vdivq_f32(vcvtq_f32_u32(vmovl_u16(v49)), v54);
        v51.i32[0] = fTo16FRoundTable[v50.i32[0] >> 23];
        v51.i32[1] = fTo16FRoundTable[v50.i32[1] >> 23];
        v51.i32[2] = fTo16FRoundTable[v50.i32[2] >> 23];
        v51.i32[3] = fTo16FRoundTable[v50.i32[3] >> 23];
        *v43 = *&vshrn_n_s32(vmulq_f32(vsubq_f32(vaddq_f32(v51, vmulq_f32(vmulq_f32(v50, v53), v52)), v51), v52), 0xDuLL) & 0x7FFF7FFF7FFF7FFFLL;
      }

      else
      {
        *(v42 - 1) = bswap32(v62[v46]);
      }

      v45 += 2 * v47;
      ++v43;
      v42 += 4;
      if (!--v44)
      {
        goto LABEL_35;
      }
    }

    _CUILog(4, "CoreUI: colorTableIdx [%u] no less than color count [%u] in %s", v34, v35, v36, v37, v38, v39, v46);
LABEL_39:
    free(v58);
    return 0;
  }

LABEL_36:
  free(v58);
  compression_stream_destroy(&stream);
  return 1;
}

double _CUIRGBToHSB(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 < a5 || a4 < a6)
  {
    if (a5 >= a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = a5;
    }

    if (a4 >= a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = a4;
    }

    v9 = a5 < a4 || a5 < a6;
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = a6;
    }

    else
    {
      v11 = a5;
    }
  }

  else
  {
    if (a5 >= a6)
    {
      v10 = a6;
    }

    else
    {
      v10 = a5;
    }

    v11 = a4;
  }

  v12 = 0.0;
  if (v11 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = v11 - v10;
    v14 = (v11 - v10) / v11;
    if (v14 != 0.0)
    {
      v15 = (v11 - a5) / v13;
      v16 = (v11 - a6) / v13;
      if (v11 == a4)
      {
        if (v10 == a5)
        {
          v12 = v16 + 5.0;
        }

        else
        {
          v12 = 1.0 - v15;
        }
      }

      else
      {
        v18 = v11 == a5;
        v19 = (v11 - a4) / v13;
        if (v18)
        {
          if (v10 == a6)
          {
            v12 = v19 + 1.0;
          }

          else
          {
            v12 = 3.0 - v16;
          }
        }

        else if (v10 == a4)
        {
          v12 = v15 + 3.0;
        }

        else
        {
          v12 = 5.0 - v19;
        }
      }
    }
  }

  *a3 = v11;
  result = v12 / 6.0;
  *a1 = v12 / 6.0;
  *a2 = v14;
  return result;
}

double *_CUIHSBToRGB(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  v6 = a4 * 6.0;
  v7 = a4 == 1.0;
  v8 = 0.0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = v8 - v8;
  v11 = (1.0 - a5) * a6;
  v12 = (1.0 - a5 * v10) * a6;
  v13 = (1.0 - a5 * (1.0 - v10)) * a6;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        v14 = (1.0 - a5) * a6;
        v15 = a6;
        if (v9 != 2)
        {
          return result;
        }

LABEL_19:
        *result = v14;
        *a2 = v15;
        *a3 = v13;
        return result;
      }

      v14 = v12;
      v15 = a6;
    }

    else
    {
      v14 = a6;
      v15 = v13;
    }

    v13 = v11;
    goto LABEL_19;
  }

  switch(v9)
  {
    case 3:
      v14 = (1.0 - a5) * a6;
      v15 = v12;
LABEL_18:
      v13 = a6;
      goto LABEL_19;
    case 4:
      v14 = v13;
      v15 = v11;
      goto LABEL_18;
    case 5:
      v14 = a6;
      v15 = v11;
      v13 = v12;
      goto LABEL_19;
  }

  return result;
}

double *_CUICreateColorByAdjustingTemperature(int a1, double *a2, double *a3, double *a4, double a5, double a6, double a7)
{
  v13 = fmax(fmin(a1, 40000.0), 1000.0);
  v14 = v13 / 100.0;
  if (v13 / 100.0 <= 66.0)
  {
    v16 = log(v13 / 100.0) * 0.390081579 + -0.631841444;
    v15 = 1.0;
  }

  else
  {
    v15 = fmax(fmin(pow(v14 + -60.0, -0.133204759) * 1.29293619, 1.0), 0.0);
    v16 = pow(v14 + -60.0, -0.0755148492) * 1.12989086;
  }

  v17 = 1.0;
  if (v14 < 66.0)
  {
    v17 = 0.0;
    if (v14 > 19.0)
    {
      v17 = fmax(fmin(log(v14 + -10.0) * 0.543206789 + -1.19625409, 1.0), 0.0);
    }
  }

  v25 = 0.0;
  _CUIRGBToHSB(&v27, &v26, &v25, a5, a6, a7);
  v23 = 0.0;
  v24 = 0.0;
  _CUIRGBToHSB(&v24, &v23, &v22, v15 * a5, fmax(fmin(v16, 1.0), 0.0) * a6, v17 * a7);
  v19 = v23;
  v18 = v24;
  v20 = v25;

  return _CUIHSBToRGB(a2, a3, a4, v18, v19, v20);
}

double CGPathQuadraticLength(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *&v12[0].v = a1;
  v13 = a2;
  *&v10[0].v = a3;
  v11 = a4;
  *&v8[0].v = a5;
  v9 = a6;
  CG::Quadratic::Quadratic(v7, v12, v10, v8);
  return CG::Quadratic::length(v7, 0);
}

void RB::Path::Subpath::DistanceMap::append(RB::Path::Subpath::DistanceMap *this, double a2, double a3, double a4)
{
  v8 = *this;
  v9 = *(this + 1);
  if (*this == v9)
  {
    v12 = *(this + 24);
  }

  else
  {
    v10 = *(v9 - 3);
    v11 = *(v9 - 1);
    if (vabdd_f64(v10 + v11, a2) < 1.0 && vabdd_f64(v11 + *(v9 - 2), a3) < 1.0)
    {
      *(v9 - 1) = a2 + a4 - v10;
      return;
    }

    v12 = *(this + 24);
    if (v10 >= a2)
    {
      v12 = 0;
    }
  }

  *(this + 24) = v12 & 1;
  v13 = *(this + 2);
  if (v9 >= v13)
  {
    v15 = v9 - v8;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
    v17 = v16 + 1;
    if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v17 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v17)
    {
      v19 = std::__allocate_at_least[abi:ne200100]<std::allocator<RB::Path::Subpath::DistanceMap::Element>>(this, v17);
      v17 = v20;
      v8 = *this;
      v15 = *(this + 1) - *this;
    }

    else
    {
      v19 = 0;
    }

    v21 = (v19 + 24 * v16);
    v22 = v19 + 24 * v17;
    *v21 = a2;
    v21[1] = a3;
    v21[2] = a4;
    v14 = v21 + 3;
    v23 = v21 - v15;
    memcpy(v21 - v15, v8, v15);
    v24 = *this;
    *this = v23;
    *(this + 1) = v14;
    *(this + 2) = v22;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v9 = a2;
    v9[1] = a3;
    v14 = v9 + 3;
    v9[2] = a4;
  }

  *(this + 1) = v14;
}

void RB::Path::Subpath::DistanceMap::ensure_sorted(RB::Path::Subpath::DistanceMap *this, __n128 a2)
{
  if ((*(this + 24) & 1) == 0)
  {
    v3 = *this;
    v4 = *(this + 1);
    v5 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
    if (v4 == v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    std::__introsort<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,false>(v3, v4, v6, 1, a2);
    *(this + 24) = 1;
  }
}

void RB::Path::Subpath::DistanceMap::operator()(RB::Path::Subpath::DistanceMap *a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  RB::Path::Subpath::DistanceMap::ensure_sorted(a1, a2);
  v5 = *a1;
  v4 = *(a1 + 1);
  if (v4 != *a1)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[3 * (v6 >> 1)];
      v9 = *v8 + v8[2] + 1.0;
      v10 = v8 + 3;
      v6 += ~(v6 >> 1);
      if (v9 < v2)
      {
        v5 = v10;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
    if (v5 != v4)
    {
      v11 = v5 + 1;
      do
      {
        v12 = v2 - *(v11 - 1);
        if (v12 >= -0.0001)
        {
          break;
        }

        v13 = v11[1] + 1.0;
        v14 = v11 + 2;
        v11 += 3;
      }

      while (v12 <= v13 && v14 != v4);
    }
  }
}

double RB::Path::Subpath::DistanceMap::front(RB::Path::Subpath::DistanceMap *this, __n128 a2)
{
  RB::Path::Subpath::DistanceMap::ensure_sorted(this, a2);
  if (*this == *(this + 1))
  {
    return INFINITY;
  }

  else
  {
    return *(*this + 8);
  }
}

uint64_t RB::Path::Subpath::replay(uint64_t result, uint64_t *a2, int a3, float64x2_t *a4)
{
  if (*(result + 24) != *(result + 32))
  {
    v7 = result;
    v8 = *result;
    if (a4)
    {
      v8 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(a4[1], v8, 1), *a4, *result), a4[2]);
    }

    v9 = *a2;
    if (a3)
    {
      result = (*(v9 + 16))(a2, v8);
    }

    else
    {
      result = (*(v9 + 24))(a2, v8);
    }

    for (i = *(v7 + 24); i < *(v7 + 32); i = (i + v13))
    {
      v11 = *i;
      switch(v11)
      {
        case 4:
          v18 = *(i + 2);
          if (a4)
          {
            v19 = a4[1];
            v20 = a4[2];
            v18 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v19, v18, 1), *a4, i[2]), v20);
            v21 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v19, i[5]), *a4, i[4]), v20);
            v22 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v19, i[7]), *a4, i[6]), v20);
          }

          else
          {
            v21 = *(i + 4);
            v22 = *(i + 6);
          }

          result = (*(*a2 + 40))(a2, v18, v21, v22);
          v13 = 64;
          break;
        case 3:
          v14 = *(i + 2);
          if (a4)
          {
            v15 = a4[1];
            v16 = a4[2];
            v14 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v15, v14, 1), *a4, i[2]), v16);
            v17 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v15, i[5]), *a4, i[4]), v16);
          }

          else
          {
            v17 = *(i + 4);
          }

          result = (*(*a2 + 32))(a2, v14, v17);
          v13 = 48;
          break;
        case 2:
          v12 = *(i + 2);
          if (a4)
          {
            v12 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(a4[1], v12, 1), *a4, i[2]), a4[2]);
          }

          result = (*(*a2 + 24))(a2, v12);
          v13 = 32;
          break;
        default:
          RB::Path::Subpath::replay();
      }
    }

    if (a3)
    {
      v23 = *(*a2 + 8);

      return v23(a2);
    }
  }

  return result;
}

uint64_t RB::Path::Subpath::reset(uint64_t this, Point a2, double a3, double a4)
{
  *this = a3;
  *(this + 8) = a4;
  *(this + 16) = 0;
  *(this + 32) = *(this + 24);
  *(this + 52) = 0;
  return this;
}

double RB::Path::Subpath::close(RB::Path::Subpath *this)
{
  v1 = *(this + 24);
  v2 = *(this + 4);
  v3 = *(this + 3);
  if (v3 != v2)
  {
    v1.n128_u64[0] = *this;
    if (*this != v2[-1].f64[0])
    {
      v4 = *(this + 1);
LABEL_5:
      v1.n128_f64[1] = v4;
      v1.n128_f64[0] = RB::Path::Subpath::add_capto(this, v1, vsubq_f64(v3[1], v1));
      return v1.n128_f64[0];
    }

    v4 = *(this + 1);
    if (v4 != v2[-1].f64[1])
    {
      goto LABEL_5;
    }
  }

  return v1.n128_f64[0];
}

double RB::Path::Subpath::add_capto(RB::Path::Subpath *this, __n128 a2, float64x2_t a3)
{
  if (*(this + 3) == *(this + 4))
  {
    RB::Path::Subpath::add_capto();
  }

  v3 = this;
  if (!*(this + 12))
  {
    goto LABEL_9;
  }

  v17 = a2;
  RB::Path::Subpath::end_point_and_tangent(this);
  v6 = vceqzq_f64(v5);
  if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v6), 1), v6).u64[0] & 0x8000000000000000) != 0)
  {
    v5 = vmulq_n_f64(v5, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v5, v5))));
  }

  v7 = a3;
  v8 = vceqzq_f64(a3);
  if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v8), 1), v8).u64[0] & 0x8000000000000000) != 0)
  {
    v7 = vmulq_n_f64(a3, 1.0 / sqrt(vaddvq_f64(vmulq_f64(a3, a3))));
  }

  v9 = vsubq_f64(v17, v4);
  v10 = sqrt(vaddvq_f64(vmulq_f64(v9, v9))) * 0.5;
  if (*(v3 + 12) == 2)
  {
    v14 = v10;
    v16 = v7;
    RB::Path::Subpath::add_lineto(v3, vmlaq_n_f64(v4, v5, v10), INFINITY);
    RB::Path::Subpath::add_lineto(v3, vmlsq_lane_f64(v17, v16, v14, 0), INFINITY);
    this = v3;
    a2 = v17;
LABEL_9:

    return RB::Path::Subpath::add_lineto(this, a2, INFINITY);
  }

  v12 = vmlaq_n_f64(v4, v5, v10 * 1.32500005);
  v13 = vmlsq_lane_f64(v17, v7, v10 * 1.32500005, 0);

  return RB::Path::Subpath::add_cubeto(v3, v12, v13, v17, INFINITY);
}

void std::vector<double>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v2);
  }
}

double RB::Path::Subpath::add_lineto(uint64_t a1, __n128 a2, double a3)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v5 = (a1 + 24);
  std::vector<double>::resize((a1 + 24), ((v7 - v6) >> 3) + 4);
  v8 = (*v5 + v7 - v6);
  if (a3 >= INFINITY && a3 <= INFINITY)
  {
    v9 = (a1 + 8);
    if (v7 == v6)
    {
      n128_f64 = a1;
    }

    else
    {
      v9 = &v8[-1].n128_f64[1];
      n128_f64 = v8[-1].n128_f64;
    }

    a3 = sqrt((a2.n128_f64[1] - *v9) * (a2.n128_f64[1] - *v9) + (a2.n128_f64[0] - *n128_f64) * (a2.n128_f64[0] - *n128_f64));
  }

  v8->n128_u64[0] = 0x4000000000000000;
  v8->n128_f64[1] = a3;
  v8[1] = a2;
  result = a3 + *(a1 + 16);
  *(a1 + 16) = result;
  *(a1 + 52) = 2;
  return result;
}

uint64_t RB::Path::Subpath::end_point_and_tangent(uint64_t this)
{
  if (*(this + 24) == *(this + 32))
  {
    RB::Path::Subpath::end_point_and_tangent();
  }

  return this;
}

double RB::Path::Subpath::add_cubeto(__int128 *a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, double a5)
{
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v7 = a1 + 3;
  std::vector<double>::resize(a1 + 3, ((v9 - v8) >> 3) + 8);
  v10 = *v7 + v9 - v8;
  if (v9 == v8)
  {
    v11 = *a1;
  }

  else
  {
    v11 = *(v10 - 16);
  }

  *&v20[0].v = v11;
  if (a5 >= INFINITY && a5 <= INFINITY)
  {
    *&v17[0].v = a3;
    *&v18[0].v = a2;
    *&v16[0].v = a4;
    CG::Cubic::Cubic(v19, v20, v18, v17, v16);
    a5 = CG::Cubic::length(v19, 0.5);
  }

  *v10 = 0x4010000000000000;
  *(v10 + 8) = a5;
  *(v10 + 16) = a2.i64[0];
  *(v10 + 24) = vextq_s8(a2, a3, 8uLL);
  *(v10 + 56) = a4.i64[1];
  *(v10 + 40) = vextq_s8(a3, a4, 8uLL);
  result = a5 + *(a1 + 2);
  *(a1 + 2) = result;
  *(a1 + 13) = 4;
  return result;
}

void RB::Path::Subpath::append_range(RB::Path::Subpath *this, const RB::Path::Subpath *a2, double a3, double a4, RB::Path::Subpath::DistanceMap *a5)
{
  *&v27[0].v = *a2;
  v6 = *(a2 + 3);
  if (v6 < *(a2 + 4))
  {
    v11 = 0.0;
    do
    {
      v12 = *v6;
      switch(v12)
      {
        case 4:
          v19 = *(v6 + 32);
          *&v26[0].v = *(v6 + 16);
          *&v24[0].v = *(v6 + 48);
          *&v25[0].v = v19;
          CG::Cubic::Cubic(&v21, v27, v26, v25, v24);
          v15 = *(v6 + 8);
          v20 = a4;
          if (a4 <= a3)
          {
            RB::Path::Subpath::add<CG::Cubic>(this, &v21, a5, v11, *(v6 + 8), v11, a4);
            v20 = v11 + v15;
          }

          RB::Path::Subpath::add<CG::Cubic>(this, &v21, a5, v11, v15, a3, v20);
          *&v27[0].v = *&v24[0].v;
          v6 += 64;
          break;
        case 3:
          v17 = *(v6 + 32);
          *&v26[0].v = *(v6 + 16);
          *&v25[0].v = v17;
          CG::Quadratic::Quadratic(&v21, v27, v26, v25);
          v15 = *(v6 + 8);
          v18 = a4;
          if (a4 <= a3)
          {
            RB::Path::Subpath::add<CG::Quadratic>(this, &v21, a5, v11, *(v6 + 8), v11, a4);
            v18 = v11 + v15;
          }

          RB::Path::Subpath::add<CG::Quadratic>(this, &v21, a5, v11, v15, a3, v18);
          *&v27[0].v = *&v25[0].v;
          v6 += 48;
          break;
        case 2:
          v13 = *(v6 + 16);
          v14 = *(v6 + 24);
          v21 = *&v27[0].v;
          v22 = v13;
          v23 = v14;
          v15 = *(v6 + 8);
          v16 = a4;
          if (a4 <= a3)
          {
            RB::Path::Subpath::add<CG::LineSegment>(this, &v21, a5, v11, *(v6 + 8), v11, a4);
            v16 = v11 + v15;
          }

          RB::Path::Subpath::add<CG::LineSegment>(this, &v21, a5, v11, v15, a3, v16);
          *&v27[0].v = v13;
          *&v27[2].v = v14;
          v6 += 32;
          break;
        default:
          RB::Path::Subpath::append_range();
      }

      v11 = v11 + v15;
    }

    while (v6 < *(a2 + 4));
  }
}

void RB::Path::Subpath::append_logical_range(RB::Path::Subpath *this, const RB::Path::Subpath *a2, double a3, double a4, RB::Path::Subpath::DistanceMap *a5)
{
  if (a3 > a4)
  {
    RB::Path::Subpath::append_range(this, a2, a3, *(a2 + 2), a5);
    a3 = 0.0;
  }

  RB::Path::Subpath::append_range(this, a2, a3, a4, a5);
}

double RB::Path::Subpath::add_quadto(__int128 *a1, int8x16_t a2, int8x16_t a3, double a4)
{
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v6 = a1 + 3;
  std::vector<double>::resize(a1 + 3, ((v8 - v7) >> 3) + 6);
  v9 = *v6 + v8 - v7;
  if (v8 == v7)
  {
    v10 = *a1;
  }

  else
  {
    v10 = *(v9 - 16);
  }

  *&v17[0].v = v10;
  if (a4 >= INFINITY && a4 <= INFINITY)
  {
    *&v14[0].v = a3;
    *&v15[0].v = a2;
    CG::Quadratic::Quadratic(v16, v17, v15, v14);
    a4 = CG::Quadratic::length(v16, 0);
  }

  *v9 = 0x4008000000000000;
  *(v9 + 8) = a4;
  *(v9 + 16) = a2.i64[0];
  *(v9 + 40) = a3.i64[1];
  *(v9 + 24) = vextq_s8(a2, a3, 8uLL);
  result = a4 + *(a1 + 2);
  *(a1 + 2) = result;
  *(a1 + 13) = 3;
  return result;
}

double RB::Path::Subpath::add(RB::Path::Subpath *this, float64x2_t *a2, double a3)
{
  v3 = *a2;
  v4 = vsubq_f64(a2[1], *a2);
  if (COERCE_DOUBLE(*&vmulq_f64(v4, v4).f64[1]) + v4.f64[0] * v4.f64[0] <= 0.00000001)
  {
    return INFINITY;
  }

  v7 = *(this + 4);
  if (*(this + 3) == v7)
  {
    *this = v3;
    *(this + 2) = 0;
    *(this + 13) = 0;
  }

  else if (v3.n128_f64[0] != *(v7 - 16) || v3.n128_f64[1] != *(v7 - 8))
  {
    RB::Path::Subpath::add_capto(this, v3, v4);
  }

  v8 = *(this + 2);
  RB::Path::Subpath::add_lineto(this, a2[1], sqrt((a2[1].f64[1] - a2->f64[1]) * (a2[1].f64[1] - a2->f64[1]) + (a2[1].f64[0] - a2->f64[0]) * (a2[1].f64[0] - a2->f64[0])));
  return v8;
}

double RB::Path::Subpath::add(RB::Path::Subpath *this, const CG::Quadratic *a2, double a3)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = vsubq_f64(v7, *a2);
  v9 = *(a2 + 1);
  v10 = *(a2 + 3);
  if ((v10 - v9) * (v10 - v9) + v8.f64[0] * v8.f64[0] <= 0.00000001 && (*(a2 + 5) - v10) * (*(a2 + 5) - v10) + (*(a2 + 4) - v7.f64[0]) * (*(a2 + 4) - v7.f64[0]) <= 0.00000001)
  {
    return INFINITY;
  }

  v11 = *(this + 4);
  if (*(this + 3) == v11)
  {
    *this = v6;
    *(this + 2) = 0;
    *(this + 13) = 0;
  }

  else if (v6.n128_f64[0] != *(v11 - 16) || v9 != *(v11 - 8))
  {
    RB::Path::Subpath::add_capto(this, v6, v8);
  }

  if (a3 >= INFINITY && a3 <= INFINITY)
  {
    a3 = CG::Quadratic::length(a2, 0);
  }

  v12 = *(this + 2);
  RB::Path::Subpath::add_quadto(this, *(a2 + 1), *(a2 + 2), a3);
  return v12;
}

double RB::Path::Subpath::add(RB::Path::Subpath *this, const CG::Cubic *a2, double a3)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = vsubq_f64(v7, *a2);
  v9 = *(a2 + 1);
  v10 = *(a2 + 3);
  if ((v10 - v9) * (v10 - v9) + v8.f64[0] * v8.f64[0] <= 0.00000001)
  {
    v11 = *(a2 + 4);
    v12 = *(a2 + 5);
    if ((v12 - v10) * (v12 - v10) + (v11 - v7.f64[0]) * (v11 - v7.f64[0]) <= 0.00000001 && (*(a2 + 7) - v12) * (*(a2 + 7) - v12) + (*(a2 + 6) - v11) * (*(a2 + 6) - v11) <= 0.00000001)
    {
      return INFINITY;
    }
  }

  v13 = *(this + 4);
  if (*(this + 3) == v13)
  {
    *this = v6;
    *(this + 2) = 0;
    *(this + 13) = 0;
  }

  else if (v6.n128_f64[0] != *(v13 - 16) || v9 != *(v13 - 8))
  {
    RB::Path::Subpath::add_capto(this, v6, v8);
  }

  if (a3 >= INFINITY && a3 <= INFINITY)
  {
    a3 = CG::Cubic::length(a2, 0.5);
  }

  v14 = *(this + 2);
  RB::Path::Subpath::add_cubeto(this, *(a2 + 1), *(a2 + 2), *(a2 + 3), a3);
  return v14;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t std::__allocate_at_least[abi:ne200100]<std::allocator<RB::Path::Subpath::DistanceMap::Element>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v90 = *(a2 - 24);
        v89 = (a2 - 24);
        result.n128_f64[0] = v90;
        if (v90 >= *v12)
        {
          return result;
        }

LABEL_106:
        v198 = *(v12 + 16);
        v169 = *v12;
        v94 = *v89;
        *(v12 + 16) = v89[1].n128_u64[0];
        *v12 = v94;
        result = v169;
        v89[1].n128_u64[0] = v198;
LABEL_107:
        *v89 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v95 = *(v12 + 24);
      v96 = (v12 + 48);
      v97 = *(v12 + 48);
      if (v95 >= *v12)
      {
        if (v97 < v95)
        {
          v138 = *(v12 + 40);
          result = *v91;
          *v91 = *v96;
          *(v12 + 40) = *(v12 + 64);
          *v96 = result;
          *(v12 + 64) = v138;
          if (*(v12 + 24) < *v12)
          {
            v201 = *(v12 + 16);
            v174 = *v12;
            *v12 = *v91;
            *(v12 + 16) = *(v12 + 40);
            result.n128_u64[1] = v174.n128_u64[1];
            *v91 = v174;
            *(v12 + 40) = v201;
          }
        }
      }

      else
      {
        if (v97 < v95)
        {
          v199 = *(v12 + 16);
          v170 = *v12;
          *v12 = *v96;
          *(v12 + 16) = *(v12 + 64);
          result.n128_u64[1] = v170.n128_u64[1];
          *v96 = v170;
          v98 = v199;
          goto LABEL_177;
        }

        v203 = *(v12 + 16);
        v177 = *v12;
        *v12 = *v91;
        *(v12 + 16) = *(v12 + 40);
        *v91 = v177;
        *(v12 + 40) = v203;
        if (v97 < *(v12 + 24))
        {
          v98 = *(v12 + 40);
          result = *v91;
          *v91 = *v96;
          *(v12 + 40) = *(v12 + 64);
          *v96 = result;
LABEL_177:
          *(v12 + 64) = v98;
        }
      }

      result.n128_u64[0] = *v9;
      if (*v9 >= v96->n128_f64[0])
      {
        return result;
      }

      result = *v96;
      v144 = *(v12 + 64);
      v145 = *(a2 - 8);
      *v96 = *v9;
      *(v12 + 64) = v145;
      *(a2 - 8) = v144;
      *v9 = result;
      result.n128_u64[0] = v96->n128_u64[0];
      if (v96->n128_f64[0] >= v91->n128_f64[0])
      {
        return result;
      }

      v146 = *(v12 + 40);
      result = *v91;
      *v91 = *v96;
      *(v12 + 40) = *(v12 + 64);
      *v96 = result;
      *(v12 + 64) = v146;
LABEL_181:
      result.n128_u64[0] = *(v12 + 24);
      if (result.n128_f64[0] < *v12)
      {
        v204 = *(v12 + 16);
        v178 = *v12;
        *v12 = *v91;
        *(v12 + 16) = v91[1].n128_u64[0];
        result = v178;
        *v91 = v178;
        v91[1].n128_u64[0] = v204;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,0>(v12, (v12 + 24), (v12 + 48), (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v99 = v12 + 24;
      v101 = v12 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v12;
          do
          {
            v104 = v99;
            result.n128_u64[0] = v103[1].n128_u64[1];
            if (result.n128_f64[0] < v103->n128_f64[0])
            {
              v171 = v103[2];
              v105 = v102;
              while (1)
              {
                v106 = v12 + v105;
                *(v106 + 24) = *(v12 + v105);
                *(v106 + 40) = *(v12 + v105 + 16);
                if (!v105)
                {
                  break;
                }

                v105 -= 24;
                if (result.n128_f64[0] >= *(v106 - 24))
                {
                  v107 = v12 + v105 + 24;
                  goto LABEL_126;
                }
              }

              v107 = v12;
LABEL_126:
              *v107 = result.n128_u64[0];
              result = v171;
              *(v107 + 8) = v171;
            }

            v99 = &v104[1].n128_u64[1];
            v102 += 24;
            v103 = v104;
          }

          while (&v104[1].n128_i8[8] != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v139 = v99;
          result.n128_u64[0] = *(a1 + 24);
          if (result.n128_f64[0] < *a1)
          {
            v175 = *(a1 + 32);
            v140 = v99;
            do
            {
              *v140 = *(v140 - 24);
              *(v140 + 16) = *(v140 - 8);
              v141 = *(v140 - 48);
              v140 -= 24;
            }

            while (result.n128_f64[0] < v141);
            *v140 = result.n128_u64[0];
            result = v175;
            *(v140 + 8) = v175;
          }

          v99 += 24;
          a1 = v139;
        }

        while (v139 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v108 = (v14 - 2) >> 1;
        v109 = v108;
        do
        {
          v110 = v109;
          if (v108 >= v109)
          {
            v111 = (2 * v109) | 1;
            v112 = v12 + 24 * v111;
            if (2 * v110 + 2 < v14 && *v112 < *(v112 + 24))
            {
              v112 += 24;
              v111 = 2 * v110 + 2;
            }

            v113 = v12 + 24 * v110;
            v114 = *v113;
            if (*v112 >= *v113)
            {
              v172 = *(v113 + 8);
              do
              {
                v115 = v113;
                v113 = v112;
                v116 = *v112;
                *(v115 + 16) = *(v112 + 16);
                *v115 = v116;
                if (v108 < v111)
                {
                  break;
                }

                v117 = 2 * v111;
                v111 = (2 * v111) | 1;
                v112 = v12 + 24 * v111;
                v118 = v117 + 2;
                if (v118 < v14 && *v112 < *(v112 + 24))
                {
                  v112 += 24;
                  v111 = v118;
                }
              }

              while (*v112 >= v114);
              *v113 = v114;
              *(v113 + 8) = v172;
            }
          }

          v109 = v110 - 1;
        }

        while (v110);
        v119 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v120 = 0;
          v200 = *(v12 + 16);
          v173 = *v12;
          v121 = v12;
          do
          {
            v122 = v121;
            v123 = v121 + 24 * v120;
            v121 = v123 + 24;
            v124 = 2 * v120;
            v120 = (2 * v120) | 1;
            v125 = v124 + 2;
            if (v125 < v119)
            {
              v127 = *(v123 + 48);
              v126 = v123 + 48;
              if (*(v126 - 24) < v127)
              {
                v121 = v126;
                v120 = v125;
              }
            }

            v128 = *v121;
            v122[1].n128_u64[0] = *(v121 + 16);
            *v122 = v128;
          }

          while (v120 <= ((v119 - 2) >> 1));
          a2 -= 24;
          if (v121 == a2)
          {
            result = v173;
            *(v121 + 16) = v200;
            *v121 = v173;
          }

          else
          {
            v129 = *a2;
            *(v121 + 16) = *(a2 + 16);
            *v121 = v129;
            result = v173;
            *(a2 + 16) = v200;
            *a2 = v173;
            v130 = v121 - v12 + 24;
            if (v130 >= 25)
            {
              v131 = (-2 - 0x5555555555555555 * (v130 >> 3)) >> 1;
              v132 = v12 + 24 * v131;
              result.n128_u64[0] = *v121;
              if (*v132 < *v121)
              {
                v149 = *(v121 + 8);
                do
                {
                  v133 = v121;
                  v121 = v132;
                  v134 = *v132;
                  *(v133 + 16) = *(v132 + 16);
                  *v133 = v134;
                  if (!v131)
                  {
                    break;
                  }

                  v131 = (v131 - 1) >> 1;
                  v132 = v12 + 24 * v131;
                }

                while (*v132 < result.n128_f64[0]);
                *v121 = result.n128_u64[0];
                result = v149;
                *(v121 + 8) = v149;
              }
            }
          }
        }

        while (v119-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *v9;
    if (v13 >= 0xC01)
    {
      v18 = v16->n128_f64[0];
      if (v16->n128_f64[0] >= *v12)
      {
        if (v17 < v18)
        {
          v181 = v16[1].n128_u64[0];
          v152 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v181;
          *v9 = v152;
          if (v16->n128_f64[0] < *v12)
          {
            v182 = *(v12 + 16);
            v153 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v182;
            *v16 = v153;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v179 = *(v12 + 16);
          v150 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
          goto LABEL_26;
        }

        v185 = *(v12 + 16);
        v156 = *v12;
        v26 = *v16;
        *(v12 + 16) = v16[1].n128_u64[0];
        *v12 = v26;
        v16[1].n128_u64[0] = v185;
        *v16 = v156;
        if (*v9 < v16->n128_f64[0])
        {
          v179 = v16[1].n128_u64[0];
          v150 = *v16;
          v27 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v27;
LABEL_26:
          *(a2 - 8) = v179;
          *v9 = v150;
        }
      }

      v28 = (v12 + 24);
      v29 = v12 + 24 * v15;
      v31 = *(v29 - 24);
      v30 = (v29 - 24);
      v32 = v31;
      v33 = *v10;
      if (v31 >= *(v12 + 24))
      {
        if (v33 < v32)
        {
          v186 = v30[1].n128_i64[0];
          v157 = *v30;
          v37 = *v10;
          v30[1].n128_u64[0] = *(a2 - 32);
          *v30 = v37;
          *(a2 - 32) = v186;
          *v10 = v157;
          if (v30->n128_f64[0] < v28->n128_f64[0])
          {
            v38 = *v28;
            v39 = *(v12 + 40);
            v40 = v30[1].n128_i64[0];
            *v28 = *v30;
            *(v12 + 40) = v40;
            v30[1].n128_u64[0] = v39;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v33 < v32)
        {
          v34 = *v28;
          v35 = *(v12 + 40);
          v36 = *(a2 - 32);
          *v28 = *v10;
          *(v12 + 40) = v36;
          *(a2 - 32) = v35;
          goto LABEL_38;
        }

        v43 = *v28;
        v44 = *(v12 + 40);
        v45 = v30[1].n128_i64[0];
        *v28 = *v30;
        *(v12 + 40) = v45;
        v30[1].n128_u64[0] = v44;
        *v30 = v43;
        if (*v10 < v30->n128_f64[0])
        {
          v188 = v30[1].n128_i64[0];
          v159 = *v30;
          v46 = *v10;
          v30[1].n128_u64[0] = *(a2 - 32);
          *v30 = v46;
          v34 = v159;
          *(a2 - 32) = v188;
LABEL_38:
          *v10 = v34;
        }
      }

      v47 = (v12 + 48);
      v48 = v12 + 24 * v15;
      v50 = *(v48 + 24);
      v49 = (v48 + 24);
      v51 = v50;
      v52 = *v11;
      if (v50 >= *(v12 + 48))
      {
        if (v52 < v51)
        {
          v189 = v49[1].n128_i64[0];
          v160 = *v49;
          v56 = *v11;
          v49[1].n128_u64[0] = *(a2 - 56);
          *v49 = v56;
          *(a2 - 56) = v189;
          *v11 = v160;
          if (v49->n128_f64[0] < v47->n128_f64[0])
          {
            v57 = *v47;
            v58 = *(v12 + 64);
            v59 = v49[1].n128_i64[0];
            *v47 = *v49;
            *(v12 + 64) = v59;
            v49[1].n128_u64[0] = v58;
            *v49 = v57;
          }
        }
      }

      else
      {
        if (v52 < v51)
        {
          v53 = *v47;
          v54 = *(v12 + 64);
          v55 = *(a2 - 56);
          *v47 = *v11;
          *(v12 + 64) = v55;
          *(a2 - 56) = v54;
          goto LABEL_47;
        }

        v60 = *v47;
        v61 = *(v12 + 64);
        v62 = v49[1].n128_i64[0];
        *v47 = *v49;
        *(v12 + 64) = v62;
        v49[1].n128_u64[0] = v61;
        *v49 = v60;
        if (*v11 < v49->n128_f64[0])
        {
          v190 = v49[1].n128_i64[0];
          v161 = *v49;
          v63 = *v11;
          v49[1].n128_u64[0] = *(a2 - 56);
          *v49 = v63;
          v53 = v161;
          *(a2 - 56) = v190;
LABEL_47:
          *v11 = v53;
        }
      }

      v64 = v16->n128_f64[0];
      v65 = v49->n128_f64[0];
      if (v16->n128_f64[0] >= v30->n128_f64[0])
      {
        if (v65 < v64)
        {
          v192 = v16[1].n128_u64[0];
          v163 = *v16;
          *v16 = *v49;
          v16[1].n128_u64[0] = v49[1].n128_u64[0];
          v49[1].n128_u64[0] = v192;
          *v49 = v163;
          if (v16->n128_f64[0] < v30->n128_f64[0])
          {
            v193 = v30[1].n128_u64[0];
            v164 = *v30;
            *v30 = *v16;
            v30[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v193;
            *v16 = v164;
          }
        }
      }

      else
      {
        if (v65 < v64)
        {
          v191 = v30[1].n128_u64[0];
          v162 = *v30;
          *v30 = *v49;
          v30[1].n128_u64[0] = v49[1].n128_u64[0];
          goto LABEL_56;
        }

        v194 = v30[1].n128_u64[0];
        v165 = *v30;
        *v30 = *v16;
        v30[1].n128_u64[0] = v16[1].n128_u64[0];
        v16[1].n128_u64[0] = v194;
        *v16 = v165;
        if (v49->n128_f64[0] < v16->n128_f64[0])
        {
          v191 = v16[1].n128_u64[0];
          v162 = *v16;
          *v16 = *v49;
          v16[1].n128_u64[0] = v49[1].n128_u64[0];
LABEL_56:
          v49[1].n128_u64[0] = v191;
          *v49 = v162;
        }
      }

      v195 = *(v12 + 16);
      v166 = *v12;
      v66 = *v16;
      *(v12 + 16) = v16[1].n128_u64[0];
      *v12 = v66;
      v16[1].n128_u64[0] = v195;
      *v16 = v166;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v12 >= v16->n128_f64[0])
    {
      if (v17 < v20)
      {
        v183 = *(v12 + 16);
        v154 = *v12;
        v24 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v24;
        *(a2 - 8) = v183;
        *v9 = v154;
        if (*v12 < v16->n128_f64[0])
        {
          v184 = v16[1].n128_u64[0];
          v155 = *v16;
          v25 = *v12;
          v16[1].n128_u64[0] = *(v12 + 16);
          *v16 = v25;
          *(v12 + 16) = v184;
          *v12 = v155;
        }
      }

      goto LABEL_58;
    }

    if (v17 >= v20)
    {
      v187 = v16[1].n128_u64[0];
      v158 = *v16;
      v41 = *v12;
      v16[1].n128_u64[0] = *(v12 + 16);
      *v16 = v41;
      *(v12 + 16) = v187;
      *v12 = v158;
      if (*v9 >= *v12)
      {
        goto LABEL_58;
      }

      v180 = *(v12 + 16);
      v151 = *v12;
      v42 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v42;
    }

    else
    {
      v180 = v16[1].n128_u64[0];
      v151 = *v16;
      v21 = *v9;
      v16[1].n128_u64[0] = *(a2 - 8);
      *v16 = v21;
    }

    *(a2 - 8) = v180;
    *v9 = v151;
LABEL_58:
    --a3;
    v67 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 24) < v67)
    {
      v68 = 0;
      v147 = *(v12 + 8);
      do
      {
        v69 = *(v12 + v68 + 24);
        v68 += 24;
      }

      while (v69 < v67);
      v70 = v12 + v68;
      v71 = a2;
      if (v68 == 24)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = *(v71 - 24);
          v71 -= 24;
        }

        while (v73 >= v67);
      }

      else
      {
        do
        {
          v72 = *(v71 - 24);
          v71 -= 24;
        }

        while (v72 >= v67);
      }

      v12 += v68;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v196 = *(v12 + 16);
          v167 = *v12;
          v75 = *v74;
          *(v12 + 16) = *(v74 + 16);
          *v12 = v75;
          *(v74 + 16) = v196;
          *v74 = v167;
          do
          {
            v76 = *(v12 + 24);
            v12 += 24;
          }

          while (v76 < v67);
          do
          {
            v77 = *(v74 - 24);
            v74 -= 24;
          }

          while (v77 >= v67);
        }

        while (v12 < v74);
      }

      if (v12 - 24 != a1)
      {
        v78 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v78;
      }

      *(v12 - 24) = v67;
      *(v12 - 16) = v147;
      if (v70 < v71)
      {
        goto LABEL_79;
      }

      v79 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *>(a1, v12 - 24, v147);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *>(v12, a2, v80))
      {
        a2 = v12 - 24;
        if (!v79)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v79)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,false>(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v148 = *(v12 + 8);
      if (v67 >= *v9)
      {
        v82 = v12 + 24;
        do
        {
          v12 = v82;
          if (v82 >= a2)
          {
            break;
          }

          v82 += 24;
        }

        while (v67 >= *v12);
      }

      else
      {
        do
        {
          v81 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v81);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v83 = a2;
        do
        {
          v84 = *(v83 - 24);
          v83 -= 24;
        }

        while (v67 < v84);
      }

      while (v12 < v83)
      {
        v197 = *(v12 + 16);
        v168 = *v12;
        v85 = *v83;
        *(v12 + 16) = *(v83 + 16);
        *v12 = v85;
        *(v83 + 16) = v197;
        *v83 = v168;
        do
        {
          v86 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v86);
        do
        {
          v87 = *(v83 - 24);
          v83 -= 24;
        }

        while (v67 < v87);
      }

      if (v12 - 24 != a1)
      {
        v88 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 24) = v67;
      result = v148;
      *(v12 - 16) = v148;
    }
  }

  v91 = (v12 + 24);
  result.n128_u64[0] = *(v12 + 24);
  v92 = *(a2 - 24);
  v89 = (a2 - 24);
  v93 = v92;
  if (result.n128_f64[0] >= *v12)
  {
    if (v93 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v91;
    v136 = *(v12 + 40);
    v137 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v137;
    v89[1].n128_u64[0] = v136;
    *v89 = result;
    goto LABEL_181;
  }

  if (v93 < result.n128_f64[0])
  {
    goto LABEL_106;
  }

  v202 = *(v12 + 16);
  v176 = *v12;
  *v12 = *v91;
  *(v12 + 16) = *(v12 + 40);
  result.n128_u64[1] = v176.n128_u64[1];
  *v91 = v176;
  *(v12 + 40) = v202;
  result.n128_u64[0] = v89->n128_u64[0];
  if (v89->n128_f64[0] < *(v12 + 24))
  {
    result = *v91;
    v142 = *(v12 + 40);
    v143 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v143;
    v89[1].n128_u64[0] = v142;
    goto LABEL_107;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unint64_t *a5, __n128 result)
{
  v6 = a2->n128_f64[0];
  v7 = a3->n128_f64[0];
  if (a2->n128_f64[0] >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[0] < a3->n128_f64[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  result.n128_u64[0] = *a5;
  if (*a5 < a4->n128_f64[0])
  {
    v23 = a4[1].n128_u64[0];
    result = *a4;
    v24 = a5[2];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[2] = v23;
    result.n128_u64[0] = a4->n128_u64[0];
    if (a4->n128_f64[0] < a3->n128_f64[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      result.n128_u64[0] = a3->n128_u64[0];
      if (a3->n128_f64[0] < a2->n128_f64[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        result.n128_u64[0] = a2->n128_u64[0];
        if (a2->n128_f64[0] < a1->n128_f64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v8 = *(a2 - 24);
      v4 = (a2 - 24);
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_f64[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_f64[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (*v23 >= v21->n128_f64[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 8);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 8) = v56;
    if (v21->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 24);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_f64[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_f64[0])
    {
      v64 = *(v47 + 8);
      v51 = v48;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          break;
        }

        v51 -= 24;
        if (v50 >= *(v52 + 24))
        {
          v53 = a1 + v51 + 72;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v50;
      *(v53 + 8) = v64;
      if (++v49 == 8)
      {
        return v47 + 24 == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 += 24;
    if (v47 == a2)
    {
      return 1;
    }
  }
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v4 - v6;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v11);
      v6 = *a1;
      v7 = *(a1 + 8) - *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = (v12 + 8 * v9);
    v14 = v12 + 8 * v11;
    bzero(v13, 8 * a2);
    memcpy(&v13[-8 * (v7 >> 3)], v6, v7);
    v15 = *a1;
    *a1 = &v13[-8 * (v7 >> 3)];
    *(a1 + 8) = &v13[8 * a2];
    *(a1 + 16) = v14;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

uint64_t std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new();
}

void RB::Path::Subpath::add<CG::LineSegment>(RB::Path::Subpath *this, float64x2_t *a2, RB::Path::Subpath::DistanceMap *a3, double a4, double a5, double a6, double a7)
{
  v9 = a4 + a5;
  if (a6 >= a4)
  {
    v10 = a6;
  }

  else
  {
    v10 = a4;
  }

  if (v10 > v9)
  {
    v10 = v9;
  }

  v11 = v10 - a4;
  if (a7 >= a4)
  {
    v12 = a7;
  }

  else
  {
    v12 = a4;
  }

  if (v12 <= v9)
  {
    v9 = v12;
  }

  v13 = v9 - a4;
  v14 = v9 - a4 - v11;
  if (v14 >= 0.0001)
  {
    v18 = 0.0;
    if (v11 >= 0.0001)
    {
      v18 = CG::LineSegment::index(a2, v11);
    }

    v19 = 1.0;
    if (v13 <= a5 + -0.0001)
    {
      v19 = CG::LineSegment::index(a2, v13);
    }

    if (v18 <= 0.0001 && v19 >= 0.9999)
    {
      v20 = RB::Path::Subpath::add(this, a2, 0.9999);
      v14 = a5;
      goto LABEL_25;
    }

    v21 = a2[1];
    v24 = *a2;
    v25 = v21;
    if (v18 <= 0.0001)
    {
      v22 = 0.9999;
      if (v19 < 0.9999)
      {
        goto LABEL_23;
      }
    }

    else
    {
      CG::LineSegment::split(&v24, v18, v23);
      v24 = v23[2];
      v25 = v23[3];
      v22 = 0.9999;
      if (v19 < 0.9999)
      {
        v19 = (v19 - v18) / (1.0 - v18);
LABEL_23:
        CG::LineSegment::split(&v24, v19, v23);
        v22 = v23[0].f64[0];
        v24 = v23[0];
        v25 = v23[1];
      }
    }

    v20 = RB::Path::Subpath::add(this, &v24, v22);
LABEL_25:
    if (a3)
    {
      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        RB::Path::Subpath::DistanceMap::append(a3, v11 + a4, v20, v14);
      }
    }
  }
}

void RB::Path::Subpath::add<CG::Quadratic>(RB::Path::Subpath *this, float64x2_t *a2, RB::Path::Subpath::DistanceMap *a3, double a4, double a5, double a6, double a7)
{
  v9 = a4 + a5;
  if (a6 >= a4)
  {
    v10 = a6;
  }

  else
  {
    v10 = a4;
  }

  if (v10 > v9)
  {
    v10 = v9;
  }

  v11 = v10 - a4;
  if (a7 >= a4)
  {
    v12 = a7;
  }

  else
  {
    v12 = a4;
  }

  if (v12 <= v9)
  {
    v9 = v12;
  }

  v13 = v9 - a4;
  v14 = v9 - a4 - v11;
  if (v14 >= 0.0001)
  {
    v18 = 0.0;
    if (v11 >= 0.0001)
    {
      CG::Quadratic::index(a2, v11);
      v18 = v19;
    }

    v20 = 1.0;
    if (v13 <= a5 + -0.0001)
    {
      CG::Quadratic::index(a2, v13);
      v20 = v21;
    }

    if (v18 <= 0.0001 && v20 >= 0.9999)
    {
      v22 = RB::Path::Subpath::add(this, a2, a5);
      v14 = a5;
      goto LABEL_25;
    }

    v23 = a2[3];
    v28 = a2[2];
    v29 = v23;
    v30 = a2[4];
    v24 = a2[1];
    v26 = *a2;
    v27 = v24;
    if (v18 <= 0.0001)
    {
      if (v20 < 0.9999)
      {
        goto LABEL_23;
      }
    }

    else
    {
      CG::Quadratic::split(&v26, v18, v25);
      v28 = v25[7];
      v29 = v25[8];
      v30 = v25[9];
      v26 = v25[5];
      v27 = v25[6];
      if (v20 < 0.9999)
      {
        v20 = (v20 - v18) / (1.0 - v18);
LABEL_23:
        CG::Quadratic::split(&v26, v20, v25);
        v28 = v25[2];
        v29 = v25[3];
        v30 = v25[4];
        v26 = v25[0];
        v27 = v25[1];
      }
    }

    v22 = RB::Path::Subpath::add(this, &v26, INFINITY);
LABEL_25:
    if (a3)
    {
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        RB::Path::Subpath::DistanceMap::append(a3, v11 + a4, v22, v14);
      }
    }
  }
}

void RB::Path::Subpath::add<CG::Cubic>(RB::Path::Subpath *this, float64x2_t *a2, RB::Path::Subpath::DistanceMap *a3, double a4, double a5, double a6, double a7)
{
  v9 = a4 + a5;
  if (a6 >= a4)
  {
    v10 = a6;
  }

  else
  {
    v10 = a4;
  }

  if (v10 > v9)
  {
    v10 = v9;
  }

  v11 = v10 - a4;
  if (a7 >= a4)
  {
    v12 = a7;
  }

  else
  {
    v12 = a4;
  }

  if (v12 <= v9)
  {
    v9 = v12;
  }

  v13 = v9 - a4;
  v14 = v9 - a4 - v11;
  if (v14 >= 0.0001)
  {
    v18 = 0.0;
    if (v11 >= 0.0001)
    {
      CG::Cubic::index(a2, v11, 0.5);
      v18 = v19;
    }

    v20 = 1.0;
    if (v13 <= a5 + -0.0001)
    {
      CG::Cubic::index(a2, v13, 0.5);
      v20 = v21;
    }

    if (v18 <= 0.0001 && v20 >= 0.9999)
    {
      v22 = RB::Path::Subpath::add(this, a2, a5);
      v14 = a5;
      goto LABEL_25;
    }

    v23 = a2[5];
    v31 = a2[4];
    v32 = v23;
    v33 = a2[6];
    v24 = a2[1];
    v27 = *a2;
    v28 = v24;
    v25 = a2[3];
    v29 = a2[2];
    v30 = v25;
    if (v18 <= 0.0001)
    {
      if (v20 < 0.9999)
      {
        goto LABEL_23;
      }
    }

    else
    {
      CG::Cubic::split(&v27, v18, v26);
      v31 = v26[11];
      v32 = v26[12];
      v33 = v26[13];
      v27 = v26[7];
      v28 = v26[8];
      v29 = v26[9];
      v30 = v26[10];
      if (v20 < 0.9999)
      {
        v20 = (v20 - v18) / (1.0 - v18);
LABEL_23:
        CG::Cubic::split(&v27, v20, v26);
        v31 = v26[4];
        v32 = v26[5];
        v33 = v26[6];
        v27 = v26[0];
        v28 = v26[1];
        v29 = v26[2];
        v30 = v26[3];
      }
    }

    v22 = RB::Path::Subpath::add(this, &v27, INFINITY);
LABEL_25:
    if (a3)
    {
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        RB::Path::Subpath::DistanceMap::append(a3, v11 + a4, v22, v14);
      }
    }
  }
}

uint64_t RB::Path::JoinStroke::JoinStroke(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_1F00D3AB0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 40) = 0u;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  if (a6)
  {
    v8 = a5;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a5 + 16 * a6;
    while (1)
    {
      v13 = vcvtms_u32_f32(*(v8 + 8));
      v14 = vcvtms_u32_f32(*(v8 + 12));
      if (v13 != v14)
      {
        if (v13 >= v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = v13;
        }

        if (v13 <= v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v13;
        }

        if (v10)
        {
          if ((v16 != v6 || v15 != v11) && v16 == v15 + 1)
          {
LABEL_21:
            v19 = *(a1 + 64);
            if (v19 == v9)
            {
LABEL_36:
              v26 = *(a1 + 80);
              if (v9 >= v26)
              {
                v27 = v9 - v19;
                v28 = (v9 - v19) >> 4;
                v29 = v28 + 1;
                if ((v28 + 1) >> 60)
                {
                  std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
                }

                v30 = v26 - v19;
                if (v30 >> 3 > v29)
                {
                  v29 = v30 >> 3;
                }

                if (v30 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v31 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v31 = v29;
                }

                if (v31)
                {
                  v32 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(a1 + 64, v31);
                  v31 = v33;
                  v19 = *(a1 + 64);
                  v27 = *(a1 + 72) - v19;
                  v34 = v27 >> 4;
                }

                else
                {
                  v32 = 0;
                  v34 = v28;
                }

                v35 = (v32 + 16 * v28);
                v36 = v32 + 16 * v31;
                *v35 = v15;
                v35[1] = v16;
                v9 = v35 + 2;
                v37 = &v35[-2 * v34];
                memcpy(v37, v19, v27);
                v38 = *(a1 + 64);
                *(a1 + 64) = v37;
                *(a1 + 72) = v9;
                *(a1 + 80) = v36;
                if (v38)
                {
                  operator delete(v38);
                }
              }

              else
              {
                *v9 = v15;
                v9[1] = v16;
                v9 += 2;
              }

              *(a1 + 72) = v9;
            }

            else
            {
              v20 = 0;
              v21 = *(a1 + 64);
              while (1)
              {
                v22 = v21[1];
                if (*v21 == v15 || v22 == v15)
                {
                  break;
                }

                v24 = *v21 == v16 || v22 == v16;
                v25 = v24;
                v20 |= v25;
                if (!v24)
                {
                  v21 += 2;
                  if (v21 != v9)
                  {
                    continue;
                  }
                }

                if (v20)
                {
                  break;
                }

                goto LABEL_36;
              }
            }

            v10 = 1;
            goto LABEL_52;
          }

          v10 = 1;
        }

        else
        {
          if (v16 == v15 + 1)
          {
            goto LABEL_21;
          }

          v10 = 0;
        }
      }

      v15 = v11;
      v16 = v6;
LABEL_52:
      v8 += 16;
      v6 = v16;
      v11 = v15;
      if (v8 == v12)
      {
        v39 = *(a1 + 64);
        goto LABEL_55;
      }
    }
  }

  v9 = 0;
  v39 = 0;
LABEL_55:
  v40 = 126 - 2 * __clz((v9 - v39) >> 4);
  if (v9 == v39)
  {
    v41 = 0;
  }

  else
  {
    v41 = v40;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,false>(v39, v9, &v43, v41, 1);
  return a1;
}

void sub_18DF6B1BC(_Unwind_Exception *exception_object)
{
  v4 = v1[25];
  if (v4)
  {
    v1[26] = v4;
    operator delete(v4);
  }

  v5 = v1[18];
  if (v5)
  {
    v1[19] = v5;
    operator delete(v5);
  }

  v6 = v1[8];
  if (v6)
  {
    v1[9] = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    v1[6] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Path::JoinStroke::moveto(RB::Path::JoinStroke *this, Point a2, __n128 a3)
{
  if (*(this + 18) != *(this + 19))
  {
    v5 = a3;
    RB::Path::JoinStroke::closepath(this);
    a3 = v5;
  }

  return RB::Path::Subpath::reset(this + 120, a2, a3.n128_f64[0], a3.n128_f64[1]);
}

void RB::Path::JoinStroke::closepath(RB::Path::JoinStroke *this)
{
  v2 = (this + 144);
  v3 = (this + 120);
  v4 = *(this + 19);
  if (*(this + 18) != v4)
  {
    v5 = *v3;
    if (*v3 != *(v4 - 16) || v5.n128_f64[1] != *(v4 - 8))
    {
      RB::Path::Subpath::add_lineto(this + 120, v5, INFINITY);
    }
  }

  v6 = *(this + 14);
  v7 = *(this + 8);
  v8 = *(this + 9) - v7;
  if (v6 < v8 >> 4 && *(v7 + 16 * v6) == *(this + 12))
  {
    v70 = *v3;
    v9 = *(this + 17);
    v59 = *(this + 9);
    v10 = *(this + 20);
    v11 = *(this + 21);
    v2[1] = 0;
    v2[2] = 0;
    *v2 = 0;
    *v3 = *(this + 11);
    *(this + 17) = *(this + 24);
    std::vector<double>::__move_assign(v2, (this + 200));
    *(this + 21) = *(this + 28);
    *(this + 11) = v70;
    *(this + 24) = v9;
    v12 = *(this + 25);
    if (v12)
    {
      *(this + 26) = v12;
      operator delete(v12);
    }

    *(this + 200) = v59;
    *(this + 27) = v10;
    *(this + 28) = v11;
    if (*(this + 18) != *(this + 19))
    {
      RB::Path::JoinStroke::closepath();
    }

    ++*(this + 12);
    return;
  }

  v13 = *(this + 11);
  v14 = *(this + 4);
  if (v13 >= v14)
  {
    v15 = 0;
LABEL_25:
    v23 = 0;
    v24 = 0;
    goto LABEL_26;
  }

  v15 = 0;
  v16 = *(this + 12);
  v17 = (*(this + 3) + 16 * v13 + 12);
  v18 = *(this + 11);
  while (1)
  {
    v19 = vcvtms_u32_f32(*(v17 - 1));
    v20 = vcvtms_u32_f32(*v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    if (v21 < v16)
    {
      RB::Path::JoinStroke::closepath();
    }

    if (v20 < v19)
    {
      v19 = v20;
    }

    if (v19 > v16)
    {
      break;
    }

    v22 = *(v17 - 3);
    v17 += 4;
    v15 |= (v22 & 4) >> 2;
    *(this + 11) = ++v18;
    if (v14 == v18)
    {
      v18 = v14;
      break;
    }
  }

  v23 = v18 - v13;
  if (v18 <= v13)
  {
    goto LABEL_25;
  }

  v24 = (*(this + 3) + 16 * v13);
LABEL_26:
  if (v6 < v8 >> 4 && *(v7 + 16 * v6 + 8) == *(this + 12))
  {
    if (v23)
    {
      v25 = &v24->n128_f32[3];
      v26 = 16 * v23;
      v27 = 0.0;
      v28 = INFINITY;
      v29 = 0.0;
      do
      {
        if (*(v25 - 2) < v28)
        {
          v30 = *(v25 - 1);
          v31 = floorf(v30);
          v32 = floorf(*v25);
          v33 = v30 - v31;
          v27 = *v25 - v32;
          if (v32 >= v31)
          {
            v29 = *v25 - v32;
            v27 = v33;
          }

          else
          {
            v29 = v33;
          }

          v28 = *(v25 - 2);
        }

        v25 += 4;
        v26 -= 16;
      }

      while (v26);
    }

    else
    {
      v29 = 0.0;
      v28 = INFINITY;
      v27 = 0.0;
    }

    v38 = *(this + 24);
    if (v38 * v27 >= 0.001)
    {
      v39 = v38 * v27;
    }

    else
    {
      v39 = 0.001;
    }

    v40 = *(this + 5);
    if (*(this + 17) * v29 >= 0.001)
    {
      v41 = *(this + 17) * v29;
    }

    else
    {
      v41 = 0.001;
    }

    v70 = 0u;
    *v71 = 0u;
    v72 = 0u;
    v73 = v40;
    v74 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 1;
    __p = 0;
    v63 = 0;
    v64 = 0;
    v65 = 1;
    RB::Path::Subpath::append_range(&v70, (this + 176), v39, v38, &v66);
    v60 = RB::Path::Subpath::DistanceMap::front(&v66, v42);
    RB::Path::Subpath::append_range(&v70, (this + 176), 0.0, v39, &v66);
    RB::Path::Subpath::append_range(&v70, v3, v41, *(this + 17), &__p);
    v44 = RB::Path::Subpath::DistanceMap::front(&__p, v43);
    RB::Path::Subpath::append_range(&v70, v3, 0.0, v41, &__p);
    RB::Path::Subpath::close(&v70);
    v46 = *(this + 1);
    if (v46)
    {
      RB::Path::Subpath::replay(&v70, v46, 1, 0);
    }

    if (v23)
    {
      v47 = 16 * v23;
      v48 = vdup_n_s32(0x3F7FF972u);
      v49 = 1.0 / *v71;
      do
      {
        v50 = *v24;
        v61 = *v24;
        v51 = floorf(v61.n128_f32[2]);
        v52 = floorf(v61.n128_f32[3]);
        if (v52 >= v51)
        {
          v50.n128_f32[0] = v61.n128_f32[2] - v51;
        }

        else
        {
          v50.n128_f32[0] = v61.n128_f32[3] - v52;
        }

        if (v52 >= v51)
        {
          v53 = v61.n128_f32[3] - v52;
        }

        else
        {
          v53 = v61.n128_f32[2] - v51;
        }

        if (v50.n128_f32[0] != v27 || (v54 = v60, ((v15 ^ (v61.n128_f32[1] == v28)) & 1) == 0))
        {
          v50.n128_f64[0] = *(this + 24) * v50.n128_f32[0];
          RB::Path::Subpath::DistanceMap::operator()(&v66, v50);
          v54 = v50.n128_f64[0];
        }

        if (v53 != v29 || (v55 = v44, ((v15 ^ (v61.n128_f32[1] != v28)) & 1) == 0))
        {
          v50.n128_f64[0] = *(this + 17) * v53;
          RB::Path::Subpath::DistanceMap::operator()(&__p, v50);
        }

        v56.f32[0] = v49 * v54;
        v57 = v49 * v55;
        if ((v56.i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v57) & 0x7FFFFFFFu) < 0x7F800000)
        {
          v56.f32[1] = v57;
          *v45.i32 = *(this + 13);
          *&v61.n128_i8[8] = vadd_f32(vbic_s8(vbsl_s8(vcgt_f32(v56, v48), v48, v56), vcltz_f32(v56)), vdup_lane_s32(v45, 0));
          std::vector<CGPathClipStrokeKeyframe>::push_back[abi:ne200100](this + 40, &v61);
        }

        ++v24;
        v47 -= 16;
      }

      while (v47);
    }

    RB::Path::Subpath::reset(v3, v46, 0.0, 0.0);
    RB::Path::Subpath::reset(this + 176, v75, 0.0, 0.0);
    *(this + 6) = vaddq_s64(*(this + 6), vdupq_n_s64(1uLL));
    ++*(this + 14);
    if (__p)
    {
      v63 = __p;
      operator delete(__p);
    }

    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }

    if (v71[1])
    {
      *&v72 = v71[1];
      operator delete(v71[1]);
    }
  }

  else
  {
    v34 = *(this + 1);
    if (v34)
    {
      RB::Path::Subpath::replay(v3, v34, 1, 0);
    }

    if (v23)
    {
      v35 = 16 * v23;
      do
      {
        v36 = *v24;
        v70 = *v24;
        v37 = *(this + 13);
        if (v37 != *(this + 12))
        {
          v36.n128_f32[0] = v37;
          *&v70.n128_i8[8] = vadd_f32(vsub_f32(*&v70.n128_i8[8], vrndm_f32(*&v70.n128_i8[8])), vdup_lane_s32(v36.n128_u64[0], 0));
        }

        std::vector<CGPathClipStrokeKeyframe>::push_back[abi:ne200100](this + 40, &v70);
        ++v24;
        v35 -= 16;
      }

      while (v35);
    }

    RB::Path::Subpath::reset(v3, v34, 0.0, 0.0);
    *(this + 6) = vaddq_s64(*(this + 6), vdupq_n_s64(1uLL));
  }
}

void sub_18DF6B83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CGPathClipStrokeKeyframe>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = (v11 + 16 * v7);
    v13 = v11 + 16 * v10;
    *v12 = *a2;
    v6 = v12 + 1;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void RB::Path::JoinStroke::~JoinStroke(RB::Path::JoinStroke *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }
}

{
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x193AC64C0);
}

{
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }
}

uint64_t std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,false>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v25 = *(a2 - 2);
        v26 = *v9;
        v27 = -1;
        if (v25 >= *v9)
        {
          v27 = 1;
        }

        if (v25 == *v9)
        {
          v28 = *(a2 - 1);
          v29 = v9[1];
          v30 = v28 >= v29;
          v31 = v28 == v29;
          v27 = -1;
          if (v30)
          {
            v27 = 1;
          }

          if (v31)
          {
            v27 = 0;
          }
        }

        if (v27 < 0)
        {
          *v9 = v25;
          *(a2 - 2) = v26;
          v32 = v9[1];
          v9[1] = *(a2 - 1);
          *(a2 - 1) = v32;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9, v9 + 2, v9 + 4);
      v33 = *(a2 - 2);
      v34 = v9[4];
      v35 = -1;
      if (v33 >= v34)
      {
        v35 = 1;
      }

      if (v33 == v34)
      {
        v36 = *(a2 - 1);
        v37 = v9[5];
        v30 = v36 >= v37;
        v38 = v36 == v37;
        v35 = -1;
        if (v30)
        {
          v35 = 1;
        }

        if (v38)
        {
          v35 = 0;
        }
      }

      if (v35 < 0)
      {
        v9[4] = v33;
        *(a2 - 2) = v34;
        v39 = v9[5];
        v9[5] = *(a2 - 1);
        *(a2 - 1) = v39;
        v40 = v9[4];
        v41 = v9[2];
        v42 = -1;
        if (v40 >= v41)
        {
          v42 = 1;
        }

        if (v40 == v41)
        {
          v43 = v9[5];
          v44 = v9[3];
          v30 = v43 >= v44;
          v45 = v43 == v44;
          v42 = -1;
          if (v30)
          {
            v42 = 1;
          }

          if (v45)
          {
            v42 = 0;
          }
        }

        if (v42 < 0)
        {
          v46 = v9[3];
          v47 = v9[5];
          v9[2] = v40;
          v9[3] = v47;
          v9[4] = v41;
          v9[5] = v46;
          v48 = *v9;
          v49 = -1;
          if (v40 >= *v9)
          {
            v49 = 1;
          }

          if (v40 == *v9)
          {
            v50 = v9[1];
            v30 = v47 >= v50;
            v51 = v47 == v50;
            v49 = -1;
            if (v30)
            {
              v49 = 1;
            }

            if (v51)
            {
              v49 = 0;
            }
          }

          if (v49 < 0)
          {
            v52 = v9[1];
            *v9 = v40;
            v9[1] = v47;
            v9[2] = v48;
            v9[3] = v52;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,std::pair<unsigned long,unsigned long> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(&v9[2 * (v12 >> 1)], v9, a2 - 2);
      if (a5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9, &v9[2 * (v12 >> 1)], a2 - 2);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9 + 2, v14 - 2, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9 + 4, &v9[2 * v13 + 2], a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v14 - 2, v14, &v9[2 * v13 + 2]);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_28;
      }
    }

    v16 = *(v9 - 2);
    v17 = v16 == *v9;
    if (v16 >= *v9)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v17)
    {
      v19 = *(v9 - 1);
      v20 = v9[1];
      v21 = v19 == v20;
      v18 = v19 >= v20 ? 1 : -1;
      if (v21)
      {
        v18 = 0;
      }
    }

    if ((v18 & 0x80) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned long,unsigned long> *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_33;
    }

LABEL_28:
    v22 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned long,unsigned long> *,std::__less<void,void> &>(v9, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_31;
    }

    v24 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(v9, v22);
    v9 = v22 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(v22 + 2, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v24)
    {
LABEL_31:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,false>(v8, v22, a3, -v11, a5 & 1);
      v9 = v22 + 2;
LABEL_33:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9, v9 + 2, a2 - 2);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(uint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 >= *a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (*a2 == *a1)
  {
    v6 = a2[1];
    v7 = a1[1];
    v8 = v6 >= v7;
    v9 = v6 == v7;
    v10 = -1;
    if (v8)
    {
      v10 = 1;
    }

    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = v10;
    }
  }

  v11 = *a3;
  v12 = -1;
  if (*a3 >= v3)
  {
    v12 = 1;
  }

  if (v5 < 0)
  {
    if (v11 == v3)
    {
      v18 = a3[1];
      v19 = a2[1];
      v8 = v18 >= v19;
      v20 = v18 == v19;
      v12 = -1;
      if (v8)
      {
        v12 = 1;
      }

      if (v20)
      {
        v12 = 0;
      }
    }

    if (v12 < 0)
    {
      *a1 = v11;
      v28 = a1 + 1;
      *a3 = v4;
      v27 = (a3 + 1);
    }

    else
    {
      *a1 = v3;
      *a2 = v4;
      v21 = a1[1];
      a1[1] = a2[1];
      a2[1] = v21;
      v22 = *a2;
      v23 = -1;
      if (*a3 >= *a2)
      {
        v23 = 1;
      }

      if (*a3 == *a2)
      {
        v24 = a3[1];
        v8 = v24 >= v21;
        v25 = v24 == v21;
        v26 = -1;
        if (v8)
        {
          v26 = 1;
        }

        if (v25)
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }
      }

      if ((v23 & 0x80) == 0)
      {
        return 1;
      }

      *a2 = *a3;
      *a3 = v22;
      v27 = (a3 + 1);
      v28 = (a2 + 1);
    }

    v29 = v27;
    goto LABEL_52;
  }

  if (v11 == v3)
  {
    v13 = a3[1];
    v14 = a2[1];
    v8 = v13 >= v14;
    v15 = v13 == v14;
    v16 = -1;
    if (v8)
    {
      v16 = 1;
    }

    if (v15)
    {
      v12 = 0;
    }

    else
    {
      v12 = v16;
    }
  }

  if ((v12 & 0x80) == 0)
  {
    return 0;
  }

  *a2 = v11;
  *a3 = v3;
  v29 = a2 + 1;
  v30 = a2[1];
  a2[1] = a3[1];
  a3[1] = v30;
  v31 = *a1;
  v32 = -1;
  if (*a2 >= *a1)
  {
    v32 = 1;
  }

  if (*a2 == *a1)
  {
    v33 = a1[1];
    v32 = -1;
    if (*v29 >= v33)
    {
      v32 = 1;
    }

    if (*v29 == v33)
    {
      v32 = 0;
    }
  }

  if (v32 < 0)
  {
    *a1 = *a2;
    v28 = a1 + 1;
    *a2 = v31;
LABEL_52:
    v34 = *v28;
    *v28 = *v29;
    *v29 = v34;
  }

  return 1;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(uint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a2, a3);
  v11 = *a3;
  v12 = -1;
  if (*a4 >= *a3)
  {
    v12 = 1;
  }

  if (*a4 == *a3)
  {
    v13 = a4[1];
    v14 = a3[1];
    v15 = v13 >= v14;
    v16 = v13 == v14;
    v12 = -1;
    if (v15)
    {
      v12 = 1;
    }

    if (v16)
    {
      v12 = 0;
    }
  }

  if (v12 < 0)
  {
    *a3 = *a4;
    *a4 = v11;
    v17 = a3[1];
    a3[1] = a4[1];
    a4[1] = v17;
    v18 = *a2;
    v19 = -1;
    if (*a3 >= *a2)
    {
      v19 = 1;
    }

    if (*a3 == *a2)
    {
      v20 = a3[1];
      v21 = a2[1];
      v15 = v20 >= v21;
      v22 = v20 == v21;
      v19 = -1;
      if (v15)
      {
        v19 = 1;
      }

      if (v22)
      {
        v19 = 0;
      }
    }

    if (v19 < 0)
    {
      *a2 = *a3;
      *a3 = v18;
      v23 = a2[1];
      a2[1] = a3[1];
      a3[1] = v23;
      v24 = *a1;
      v25 = -1;
      if (*a2 >= *a1)
      {
        v25 = 1;
      }

      if (*a2 == *a1)
      {
        v26 = a2[1];
        v27 = a1[1];
        v15 = v26 >= v27;
        v28 = v26 == v27;
        v25 = -1;
        if (v15)
        {
          v25 = 1;
        }

        if (v28)
        {
          v25 = 0;
        }
      }

      if (v25 < 0)
      {
        *a1 = *a2;
        *a2 = v24;
        v29 = a1[1];
        a1[1] = a2[1];
        a2[1] = v29;
      }
    }
  }

  v30 = *a4;
  v31 = -1;
  if (*a5 >= *a4)
  {
    v31 = 1;
  }

  if (*a5 == *a4)
  {
    v32 = a5[1];
    v33 = a4[1];
    v15 = v32 >= v33;
    v34 = v32 == v33;
    v31 = -1;
    if (v15)
    {
      v31 = 1;
    }

    if (v34)
    {
      v31 = 0;
    }
  }

  if (v31 < 0)
  {
    *a4 = *a5;
    *a5 = v30;
    v35 = a4[1];
    a4[1] = a5[1];
    a5[1] = v35;
    v36 = *a3;
    v37 = -1;
    if (*a4 >= *a3)
    {
      v37 = 1;
    }

    if (*a4 == *a3)
    {
      v38 = a4[1];
      v39 = a3[1];
      v15 = v38 >= v39;
      v40 = v38 == v39;
      v37 = -1;
      if (v15)
      {
        v37 = 1;
      }

      if (v40)
      {
        v37 = 0;
      }
    }

    if (v37 < 0)
    {
      *a3 = *a4;
      *a4 = v36;
      v41 = a3[1];
      a3[1] = a4[1];
      a4[1] = v41;
      v42 = *a2;
      v43 = -1;
      if (*a3 >= *a2)
      {
        v43 = 1;
      }

      if (*a3 == *a2)
      {
        v44 = a3[1];
        v45 = a2[1];
        v15 = v44 >= v45;
        v46 = v44 == v45;
        v43 = -1;
        if (v15)
        {
          v43 = 1;
        }

        if (v46)
        {
          v43 = 0;
        }
      }

      if (v43 < 0)
      {
        *a2 = *a3;
        *a3 = v42;
        v47 = a2[1];
        a2[1] = a3[1];
        a3[1] = v47;
        v48 = *a1;
        v49 = -1;
        if (*a2 >= *a1)
        {
          v49 = 1;
        }

        if (*a2 == *a1)
        {
          v50 = a2[1];
          v51 = a1[1];
          v15 = v50 >= v51;
          v52 = v50 == v51;
          v49 = -1;
          if (v15)
          {
            v49 = 1;
          }

          if (v52)
          {
            v49 = 0;
          }
        }

        if (v49 < 0)
        {
          *a1 = *a2;
          *a2 = v48;
          v53 = a1[1];
          a1[1] = a2[1];
          a2[1] = v53;
        }
      }
    }
  }

  return result;
}

unint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        v7 = *v4;
        if (v6 >= *v4)
        {
          v8 = 1;
        }

        else
        {
          v8 = -1;
        }

        if (v6 == *v4)
        {
          v9 = v4[3];
          v10 = v4[1];
          v11 = v9 == v10;
          v8 = v9 >= v10 ? 1 : -1;
          if (v11)
          {
            v8 = 0;
          }
        }

        if (v8 < 0)
        {
          v12 = v4[3];
          v13 = v3;
          while (1)
          {
            v14 = result + v13;
            v15 = *(result + v13 + 8);
            *(v14 + 2) = v7;
            *(v14 + 3) = v15;
            if (!v13)
            {
              break;
            }

            v7 = *(v14 - 2);
            if (v6 >= v7)
            {
              v16 = 1;
            }

            else
            {
              v16 = -1;
            }

            if (v6 == v7)
            {
              v17 = *(result + v13 - 8);
              v18 = v12 == v17;
              if (v12 >= v17)
              {
                v16 = 1;
              }

              else
              {
                v16 = -1;
              }

              if (v18)
              {
                v16 = 0;
              }
            }

            v13 -= 16;
            if ((v16 & 0x80) == 0)
            {
              v19 = (result + v13 + 16);
              goto LABEL_28;
            }
          }

          v19 = result;
LABEL_28:
          *v19 = v6;
          v19[1] = v12;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 3;
      do
      {
        v4 = v2;
        v5 = result[2];
        v6 = *result;
        if (v5 >= *result)
        {
          v7 = 1;
        }

        else
        {
          v7 = -1;
        }

        if (v5 == *result)
        {
          v8 = result[3];
          v9 = result[1];
          v10 = v8 == v9;
          v7 = v8 >= v9 ? 1 : -1;
          if (v10)
          {
            v7 = 0;
          }
        }

        if (v7 < 0)
        {
          v11 = result[3];
          v12 = v3;
          do
          {
            v13 = *(v12 - 2);
            *(v12 - 1) = v6;
            *v12 = v13;
            v6 = *(v12 - 5);
            if (v5 >= v6)
            {
              v14 = 1;
            }

            else
            {
              v14 = -1;
            }

            if (v5 == v6)
            {
              v15 = *(v12 - 4);
              v16 = v11 == v15;
              if (v11 >= v15)
              {
                v14 = 1;
              }

              else
              {
                v14 = -1;
              }

              if (v16)
              {
                v14 = 0;
              }
            }

            v12 -= 2;
          }

          while (v14 < 0);
          *(v12 - 1) = v5;
          *v12 = v11;
        }

        v2 = v4 + 2;
        v3 += 2;
        result = v4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned long,unsigned long> *,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 2);
  v5 = *a1 == v4;
  if (*a1 >= v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    v7 = *(a2 - 1);
    v8 = v3 >= v7;
    v9 = v3 == v7;
    v6 = -1;
    if (v8)
    {
      v6 = 1;
    }

    if (v9)
    {
      v6 = 0;
    }
  }

  if (v6 < 0)
  {
    v15 = a1;
    v11 = a1;
    do
    {
      v16 = v11[2];
      v11 += 2;
      v17 = v2 == v16;
      if (v2 >= v16)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (v17)
      {
        v19 = v15[3];
        v20 = v3 == v19;
        if (v3 >= v19)
        {
          v21 = 1;
        }

        else
        {
          v21 = -1;
        }

        if (v20)
        {
          v18 = 0;
        }

        else
        {
          v18 = v21;
        }
      }

      v15 = v11;
    }

    while ((v18 & 0x80) == 0);
  }

  else
  {
    v10 = a1 + 2;
    do
    {
      v11 = v10;
      if (v10 >= a2)
      {
        break;
      }

      if (v2 >= *v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (v2 == *v10)
      {
        v13 = v10[1];
        v14 = v3 == v13;
        v12 = v3 >= v13 ? 1 : -1;
        if (v14)
        {
          v12 = 0;
        }
      }

      v10 += 2;
    }

    while ((v12 & 0x80) == 0);
  }

  if (v11 >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a2;
    do
    {
      v23 = *(v22 - 2);
      v22 -= 2;
      v24 = v2 == v23;
      if (v2 >= v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = -1;
      }

      if (v24)
      {
        v26 = *(a2 - 1);
        v27 = v3 == v26;
        v25 = v3 >= v26 ? 1 : -1;
        if (v27)
        {
          v25 = 0;
        }
      }

      a2 = v22;
    }

    while (v25 < 0);
  }

  if (v11 < v22)
  {
    v28 = *v11;
    v29 = *v22;
    do
    {
      *v11 = v29;
      *v22 = v28;
      v30 = v11[1];
      v11[1] = v22[1];
      v22[1] = v30;
      v31 = v11;
      do
      {
        v32 = v11[2];
        v11 += 2;
        v28 = v32;
        v33 = v2 == v32;
        if (v2 >= v32)
        {
          v34 = 1;
        }

        else
        {
          v34 = -1;
        }

        if (v33)
        {
          v35 = v31[3];
          v36 = v3 == v35;
          v34 = v3 >= v35 ? 1 : -1;
          if (v36)
          {
            v34 = 0;
          }
        }

        v31 = v11;
      }

      while ((v34 & 0x80) == 0);
      v37 = v22;
      do
      {
        v38 = *(v22 - 2);
        v22 -= 2;
        v29 = v38;
        v39 = v2 == v38;
        if (v2 >= v38)
        {
          v40 = 1;
        }

        else
        {
          v40 = -1;
        }

        if (v39)
        {
          v41 = *(v37 - 1);
          v42 = v3 == v41;
          v40 = v3 >= v41 ? 1 : -1;
          if (v42)
          {
            v40 = 0;
          }
        }

        v37 = v22;
      }

      while (v40 < 0);
    }

    while (v11 < v22);
  }

  if (v11 - 2 != a1)
  {
    *a1 = *(v11 - 2);
    a1[1] = *(v11 - 1);
  }

  *(v11 - 2) = v2;
  *(v11 - 1) = v3;
  return v11;
}

unint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned long,unsigned long> *,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    if (v5 == v3)
    {
      v7 = a1[v2 + 3];
      v8 = v7 == v4;
      v6 = v7 >= v4 ? 1 : -1;
      if (v8)
      {
        v6 = 0;
      }
    }

    v2 += 2;
  }

  while (v6 < 0);
  v9 = &a1[v2];
  if (v2 == 2)
  {
    while (v9 < a2)
    {
      v10 = a2 - 2;
      v16 = *(a2 - 2);
      v17 = v16 == v3;
      if (v16 >= v3)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (v17)
      {
        v19 = *(a2 - 1);
        v20 = v19 == v4;
        v18 = v19 >= v4 ? 1 : -1;
        if (v20)
        {
          v18 = 0;
        }
      }

      a2 -= 2;
      if (v18 < 0)
      {
        goto LABEL_39;
      }
    }

    v10 = a2;
  }

  else
  {
    v10 = a2;
    do
    {
      v11 = *(v10 - 2);
      v10 -= 2;
      v12 = v11 == v3;
      if (v11 >= v3)
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }

      if (v12)
      {
        v14 = *(a2 - 1);
        v15 = v14 == v4;
        v13 = v14 >= v4 ? 1 : -1;
        if (v15)
        {
          v13 = 0;
        }
      }

      a2 = v10;
    }

    while ((v13 & 0x80) == 0);
  }

LABEL_39:
  if (v9 >= v10)
  {
    v22 = v9;
  }

  else
  {
    v21 = *v10;
    v22 = v9;
    v23 = v10;
    do
    {
      *v22 = v21;
      *v23 = v5;
      v24 = v22[1];
      v22[1] = v23[1];
      v23[1] = v24;
      v25 = v22;
      do
      {
        v26 = v22[2];
        v22 += 2;
        v5 = v26;
        v27 = v26 == v3;
        if (v26 >= v3)
        {
          v28 = 1;
        }

        else
        {
          v28 = -1;
        }

        if (v27)
        {
          v29 = v25[3];
          v30 = v29 == v4;
          v28 = v29 >= v4 ? 1 : -1;
          if (v30)
          {
            v28 = 0;
          }
        }

        v25 = v22;
      }

      while (v28 < 0);
      v31 = v23;
      do
      {
        v32 = *(v23 - 2);
        v23 -= 2;
        v21 = v32;
        v33 = v32 == v3;
        if (v32 >= v3)
        {
          v34 = 1;
        }

        else
        {
          v34 = -1;
        }

        if (v33)
        {
          v35 = *(v31 - 1);
          v36 = v35 == v4;
          v34 = v35 >= v4 ? 1 : -1;
          if (v36)
          {
            v34 = 0;
          }
        }

        v31 = v23;
      }

      while ((v34 & 0x80) == 0);
    }

    while (v22 < v23);
  }

  if (v22 - 2 != a1)
  {
    *a1 = *(v22 - 2);
    a1[1] = *(v22 - 1);
  }

  *(v22 - 2) = v3;
  *(v22 - 1) = v4;
  return v22 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(unint64_t *a1, char *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a1 + 2, a2 - 2);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a1 + 2, a1 + 4);
        v31 = *(a2 - 2);
        v32 = a1[4];
        v33 = -1;
        if (v31 >= v32)
        {
          v33 = 1;
        }

        if (v31 == v32)
        {
          v34 = *(a2 - 1);
          v35 = a1[5];
          v10 = v34 >= v35;
          v36 = v34 == v35;
          v33 = -1;
          if (v10)
          {
            v33 = 1;
          }

          if (v36)
          {
            v33 = 0;
          }
        }

        if (v33 < 0)
        {
          a1[4] = v31;
          *(a2 - 2) = v32;
          v37 = a1[5];
          a1[5] = *(a2 - 1);
          *(a2 - 1) = v37;
          v38 = a1[4];
          v39 = a1[2];
          v40 = -1;
          if (v38 >= v39)
          {
            v40 = 1;
          }

          if (v38 == v39)
          {
            v41 = a1[5];
            v42 = a1[3];
            v10 = v41 >= v42;
            v43 = v41 == v42;
            v40 = -1;
            if (v10)
            {
              v40 = 1;
            }

            if (v43)
            {
              v40 = 0;
            }
          }

          if (v40 < 0)
          {
            v44 = a1[3];
            v45 = a1[5];
            a1[2] = v38;
            a1[3] = v45;
            a1[4] = v39;
            a1[5] = v44;
            v46 = *a1;
            v47 = -1;
            if (v38 >= *a1)
            {
              v47 = 1;
            }

            if (v38 == *a1)
            {
              v48 = a1[1];
              v10 = v45 >= v48;
              v49 = v45 == v48;
              v47 = -1;
              if (v10)
              {
                v47 = 1;
              }

              if (v49)
              {
                v47 = 0;
              }
            }

            if (v47 < 0)
            {
              v50 = a1[1];
              *a1 = v38;
              a1[1] = v45;
              a1[2] = v46;
              a1[3] = v50;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    v7 = -1;
    if (v5 >= *a1)
    {
      v7 = 1;
    }

    if (v5 == *a1)
    {
      v8 = *(a2 - 1);
      v9 = a1[1];
      v10 = v8 >= v9;
      v11 = v8 == v9;
      v7 = -1;
      if (v10)
      {
        v7 = 1;
      }

      if (v11)
      {
        v7 = 0;
      }
    }

    if (v7 < 0)
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v12 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v12;
    }

    return 1;
  }

LABEL_19:
  v13 = (a1 + 4);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a1 + 2, a1 + 4);
  v14 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *v14;
    v18 = *v13;
    if (*v14 >= *v13)
    {
      v19 = 1;
    }

    else
    {
      v19 = -1;
    }

    if (*v14 == *v13)
    {
      v20 = *(v14 + 1);
      v21 = *(v13 + 1);
      v22 = v20 == v21;
      v19 = v20 >= v21 ? 1 : -1;
      if (v22)
      {
        v19 = 0;
      }
    }

    if (v19 < 0)
    {
      v23 = *(v14 + 1);
      v24 = v15;
      while (1)
      {
        v25 = (a1 + v24);
        v26 = *(a1 + v24 + 40);
        v25[6] = v18;
        v25[7] = v26;
        if (v24 == -32)
        {
          break;
        }

        v18 = v25[2];
        if (v17 >= v18)
        {
          v27 = 1;
        }

        else
        {
          v27 = -1;
        }

        if (v17 == v18)
        {
          v28 = *(a1 + v24 + 24);
          v29 = v23 == v28;
          v27 = v23 >= v28 ? 1 : -1;
          if (v29)
          {
            v27 = 0;
          }
        }

        v24 -= 16;
        if ((v27 & 0x80) == 0)
        {
          v30 = (a1 + v24 + 48);
          goto LABEL_45;
        }
      }

      v30 = a1;
LABEL_45:
      *v30 = v17;
      v30[1] = v23;
      if (++v16 == 8)
      {
        return v14 + 16 == a2;
      }
    }

    v13 = v14;
    v15 += 16;
    v14 += 16;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,std::pair<unsigned long,unsigned long> *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        if (*v12 >= *a1)
        {
          v14 = 1;
        }

        else
        {
          v14 = -1;
        }

        if (*v12 == *a1)
        {
          v15 = v12[1];
          v16 = a1[1];
          v17 = v15 == v16;
          v14 = v15 >= v16 ? 1 : -1;
          if (v17)
          {
            v14 = 0;
          }
        }

        if (v14 < 0)
        {
          *v12 = *a1;
          *a1 = v13;
          v18 = v12[1];
          v12[1] = a1[1];
          a1[1] = v18;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v19 = a2 - 2;
      do
      {
        v21 = *a1;
        v20 = a1[1];
        v22 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(a1, a4, v8);
        if (v19 == v22)
        {
          *v22 = v21;
          v22[1] = v20;
        }

        else
        {
          *v22 = *v19;
          v22[1] = v19[1];
          *v19 = v21;
          v19[1] = v20;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(a1, (v22 + 2), a4, ((v22 + 2) - a1) >> 4);
        }

        v19 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        v11 = *v8 == v10;
        if (*v8 >= v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }

        if (v11)
        {
          v13 = v8[1];
          v14 = v8[3];
          v15 = v13 >= v14;
          v16 = v13 == v14;
          v12 = -1;
          if (v15)
          {
            v12 = 1;
          }

          if (v16)
          {
            v12 = 0;
          }
        }

        if (v12 < 0)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v17 = *v8;
      v18 = *a4;
      v19 = -1;
      if (*v8 >= *a4)
      {
        v19 = 1;
      }

      if (*v8 == *a4)
      {
        v20 = v8[1];
        v21 = a4[1];
        v15 = v20 >= v21;
        v22 = v20 == v21;
        v19 = -1;
        if (v15)
        {
          v19 = 1;
        }

        if (v22)
        {
          v19 = 0;
        }
      }

      if ((v19 & 0x80) == 0)
      {
        v23 = a4[1];
        do
        {
          v24 = a4;
          a4 = v8;
          *v24 = v17;
          v24[1] = v8[1];
          if (v5 < v7)
          {
            break;
          }

          v25 = (2 * v7) | 1;
          v8 = (result + 16 * v25);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v7 = v25;
          }

          else
          {
            v26 = v8[2];
            v27 = *v8 == v26;
            if (*v8 >= v26)
            {
              v28 = 1;
            }

            else
            {
              v28 = -1;
            }

            if (v27)
            {
              v29 = v8[1];
              v30 = v8[3];
              v31 = v29 == v30;
              v28 = v29 >= v30 ? 1 : -1;
              if (v31)
              {
                v28 = 0;
              }
            }

            if (v28 < 0)
            {
              v8 += 2;
            }

            else
            {
              v7 = v25;
            }
          }

          v17 = *v8;
          if (*v8 >= v18)
          {
            v32 = 1;
          }

          else
          {
            v32 = -1;
          }

          if (*v8 == v18)
          {
            v33 = v8[1];
            v34 = v33 == v23;
            if (v33 >= v23)
            {
              v32 = 1;
            }

            else
            {
              v32 = -1;
            }

            if (v34)
            {
              v32 = 0;
            }
          }
        }

        while ((v32 & 0x80) == 0);
        *a4 = v18;
        a4[1] = v23;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[2 * v3];
    v5 = v4 + 2;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v7 = v4 + 4;
      v8 = v4[4];
      v9 = v4[2];
      v10 = v9 == v8;
      if (v9 >= v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = -1;
      }

      if (v10)
      {
        v12 = v4[3];
        v13 = v4[5];
        v14 = v12 == v13;
        if (v12 >= v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        if (v14)
        {
          v11 = 0;
        }

        else
        {
          v11 = v15;
        }
      }

      if (v11 < 0)
      {
        v5 = v7;
      }

      else
      {
        v3 = v6;
      }
    }

    *a1 = *v5;
    a1[1] = v5[1];
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 16 * v4);
    v6 = (a2 - 16);
    v7 = *(a2 - 16);
    v8 = *v5;
    v9 = -1;
    if (*v5 >= v7)
    {
      v9 = 1;
    }

    if (*v5 == v7)
    {
      v10 = v5[1];
      v11 = *(a2 - 8);
      v12 = v10 >= v11;
      v13 = v10 == v11;
      v9 = -1;
      if (v12)
      {
        v9 = 1;
      }

      if (v13)
      {
        v9 = 0;
      }
    }

    if (v9 < 0)
    {
      v14 = *(a2 - 8);
      do
      {
        v15 = v6;
        v6 = v5;
        *v15 = v8;
        v15[1] = v5[1];
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 16 * v4);
        v8 = *v5;
        if (*v5 >= v7)
        {
          v16 = 1;
        }

        else
        {
          v16 = -1;
        }

        if (*v5 == v7)
        {
          v17 = v5[1];
          v18 = v17 == v14;
          if (v17 >= v14)
          {
            v16 = 1;
          }

          else
          {
            v16 = -1;
          }

          if (v18)
          {
            v16 = 0;
          }
        }
      }

      while (v16 < 0);
      *v6 = v7;
      v6[1] = v14;
    }
  }

  return result;
}

__n128 std::vector<double>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_18DF6E388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF6E654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF6ED90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF6EF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF6F564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF6F988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF6FE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF70014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF7015C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF70BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF70E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF71580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF72D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _snapToDiscreteSizeForSize(double a1)
{
  if (a1 <= 1.0)
  {
    return 1;
  }

  if (a1 >= 1.647)
  {
    return 3;
  }

  v1 = 0.2;
  v2 = 0.2;
  if (a1 >= 0.2)
  {
    v1 = 2.0;
    v2 = 2.0;
    if (a1 <= 2.0)
    {
      for (i = 1; i != 6; ++i)
      {
        if (*&kCoreThemeContinuousGlyphInternalSizes[i] > a1)
        {
          break;
        }
      }

      v1 = *&kCoreThemeContinuousGlyphInternalSizes[(i - 1)];
      v2 = *&kCoreThemeContinuousGlyphInternalSizes[i];
    }
  }

  v4 = 0;
  if ((v1 + v2) * 0.5 > a1)
  {
    v5 = v1;
  }

  else
  {
    v5 = v2;
  }

  while (*&kCoreThemeContinuousGlyphSizes[v4] != v5)
  {
    if (++v4 == 3)
    {
      return 0;
    }
  }

  return kCoreThemeDiscreteGlyphSizes[v4];
}

uint64_t _snapToDiscreteWeightForWeight(double a1)
{
  v1 = -0.8;
  v2 = -0.8;
  if (a1 >= -0.8)
  {
    v1 = 0.62;
    v2 = 0.62;
    if (a1 <= 0.62)
    {
      for (i = 1; i != 9; ++i)
      {
        if (*&kCoreThemeContinuousGlyphWeights[i] > a1)
        {
          break;
        }
      }

      v1 = *&kCoreThemeContinuousGlyphWeights[(i - 1)];
      v2 = *&kCoreThemeContinuousGlyphWeights[i];
    }
  }

  v4 = 0;
  if ((v1 + v2) * 0.5 > a1)
  {
    v5 = v1;
  }

  else
  {
    v5 = v2;
  }

  while (*&kCoreThemeContinuousGlyphWeights[v4] != v5)
  {
    if (++v4 == 9)
    {
      return 0;
    }
  }

  return kCoreThemeDiscreteGlyphWeights[v4];
}

id OUTLINED_FUNCTION_20(uint64_t a1)
{

  return [v4 createLayerGroupWithLayerTree:v2 modePrefix:a1 shapes:v3 delegate:v1];
}

id OUTLINED_FUNCTION_37()
{
  v2 = *(v0 + 32);

  return [v2 variableMinValue];
}

id *OUTLINED_FUNCTION_38(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a15 = a3;
  a16 = a4;
  a13 = a1;
  a14 = a5;

  return [(CUINamedVectorGlyph *)a1 _performWithLockedRenditions:?];
}

uint64_t pk_compressData(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, unint64_t a7, uint64_t a8)
{
  if (4 * a4 + 12 >= a7)
  {
    _CUILog(4, "compressData: destinatinon buffer size %ld too small for y index (%ld)\n", a3, a4, a5, a6, a7, a8, a7);
    return 0;
  }

  v10 = 2 * a3;
  if (a2 != 5)
  {
    v10 = a3;
  }

  if (a2 == 6)
  {
    v10 = 4 * a3;
  }

  *a6 = a2;
  a6[1] = v10;
  a6[2] = a4;
  v25 = a6 + 3;
  v11 = &a6[a4 + 3];
  if (a4)
  {
    v13 = 0;
    v23 = a7;
    v24 = 4 * (v10 + 1 + ((v10 + 1) >> 1));
    v14 = compress_line_32;
    if (a2 == 3)
    {
      v14 = compress_line_16;
    }

    if (a2 < 3)
    {
      v14 = compress_line_8;
    }

    v22 = v14;
    v15 = -1;
    v16 = &a6[a4 + 3];
    while (1)
    {
      v17 = v16 - a6;
      if (v16 - a6 + v24 > a7)
      {
        break;
      }

      v18 = v10;
      v19 = v22(a1, v10, v16);
      if (v15 == v19 && !memcmp(v11, v16, v15))
      {
        v17 = v11 - a6;
        v20 = v16;
      }

      else
      {
        v15 = v19;
        v20 = v16 + v19;
        v11 = v16;
        v16 = (v16 + v19);
      }

      v25[v13++] = v17;
      a1 += a5;
      a7 = v23;
      v10 = v18;
      if (a4 == v13)
      {
        return (v20 - a6);
      }
    }

    _CUILog(4, "compressData: overflow: %ld bytes in %ld byte buffer at scanline %ld (of %ld).\n", a3, a4, a5, a6, a7, a8, v16 - a6);
    return 0;
  }

  v20 = a6 + 12 + 4 * a4;
  return (v20 - a6);
}

uint64_t compress_line_8(char *__src, uint64_t a2, unsigned int *a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = __src;
  v6 = 0;
  v7 = &__src[a2];
  v8 = &__src[a2 - 1];
  v9 = __src;
  do
  {
    v11 = *v9++;
    v10 = v11;
    if (v9 >= v7)
    {
      v12 = 0;
      v14 = 1;
    }

    else
    {
      v12 = 0;
      v13 = v8 - v5;
      v14 = 1;
      do
      {
        if (*v9 == v10)
        {
          ++v14;
        }

        else
        {
          if (v14 > 9)
          {
            goto LABEL_12;
          }

          v12 += v14;
          v14 = 1;
          v10 = *v9;
        }

        ++v9;
        --v13;
      }

      while (v13);
      v9 = v7;
    }

LABEL_12:
    if (v14 >= 10)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    v16 = v15 + v12;
    if (v15 + v12 >= 1)
    {
      *a3 = v16;
      v17 = (a3 + 1);
      memcpy(v17, v5, (v15 + v12));
      v6 = v6 + v16 + 4;
      a3 = &v17[v16];
    }

    if (v14 >= 10)
    {
      *a3 = v14 | 0x80000000;
      *(a3 + 4) = v10;
      v6 = (v6 + 5);
      a3 = (a3 + 5);
    }

    v5 = v9;
  }

  while (v9 < v7);
  return v6;
}

uint64_t compress_line_16(unsigned __int16 *__src, uint64_t a2, unsigned int *a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = __src;
  v6 = 0;
  v7 = &__src[a2];
  v8 = __src;
  do
  {
    v10 = *v8++;
    v9 = v10;
    if (v8 >= v7)
    {
      v11 = 0;
      v12 = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      do
      {
        if (*v8 == v9)
        {
          ++v12;
        }

        else
        {
          if (v12 > 5)
          {
            break;
          }

          v11 += v12;
          v12 = 1;
          v9 = *v8;
        }

        ++v8;
      }

      while (v8 < v7);
    }

    if (v12 >= 6)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    v14 = v13 + v11;
    if (v13 + v11 >= 1)
    {
      *a3 = v14;
      v15 = (a3 + 1);
      memcpy(v15, v5, 2 * (v13 + v11));
      v6 += v14 + 2;
      a3 = &v15[2 * v14];
    }

    if (v12 >= 6)
    {
      *a3 = v12 | 0x80000000;
      *(a3 + 2) = v9;
      v6 += 3;
      a3 = (a3 + 6);
    }

    v5 = v8;
  }

  while (v8 < v7);
  return (2 * v6);
}

uint64_t compress_line_32(char *__src, uint64_t a2, unsigned int *a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = __src;
  v6 = 0;
  v7 = &__src[4 * a2];
  v8 = __src;
  do
  {
    v10 = *v8++;
    v9 = v10;
    if (v8 >= v7)
    {
      v11 = 0;
      v12 = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      do
      {
        if (*v8 == v9)
        {
          ++v12;
        }

        else
        {
          if (v12 > 3)
          {
            break;
          }

          v11 += v12;
          v12 = 1;
          v9 = *v8;
        }

        ++v8;
      }

      while (v8 < v7);
    }

    if (v12 >= 4)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    v14 = v13 + v11;
    if (v13 + v11 >= 1)
    {
      *a3 = v14;
      v15 = (a3 + 1);
      memcpy(v15, v5, 4 * v14);
      v6 += v14 + 1;
      a3 = &v15[4 * v14];
    }

    if (v12 >= 4)
    {
      *a3 = v12 | 0x80000000;
      a3[1] = v9;
      a3 += 2;
      v6 += 2;
    }

    v5 = v8;
  }

  while (v8 < v7);
  return (4 * v6);
}

int *pk_decompressData(int *result, uint64_t a2, unsigned int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  v9 = 2 * a3;
  v10 = 2 * a5;
  if (*result != 5)
  {
    v10 = a5;
  }

  if (v8 != 5)
  {
    v9 = a3;
  }

  if (v8 == 6)
  {
    v11 = 4 * a5;
  }

  else
  {
    v11 = v10;
  }

  if (v8 == 6)
  {
    v12 = 4 * a3;
  }

  else
  {
    v12 = v9;
  }

  if (a6 >= 1)
  {
    v15 = a6;
    v17 = result;
    v18 = &result[a4 + 3];
    v19 = __decompressRLE32;
    if (v8 == 3)
    {
      v19 = __decompressRLE16;
    }

    if (v8 >= 3)
    {
      v20 = v19;
    }

    else
    {
      v20 = __decompressRLE8;
    }

    do
    {
      v22 = *v18++;
      LODWORD(v21) = v22;
      v23 = bswap32(v22);
      if (a8)
      {
        v21 = v23;
      }

      else
      {
        v21 = v21;
      }

      result = v20(v17 + v21, a2, v12, v12 + v11, a8);
      a2 += a7;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t __decompressRLE8(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  if (a4 >= 1)
  {
    v9 = result;
    v10 = 0;
    do
    {
      v12 = v9 + 1;
      v11 = *v9;
      v13 = bswap32(*v9);
      if (a5)
      {
        v11 = v13;
      }

      v14 = v11 & 0xFFFFFF;
      v15 = (v11 & 0xFFFFFF) + v10;
      if (HIBYTE(v11) == 128)
      {
        if (v15 > a3)
        {
          v16 = a4 - v10;
          if (a4 - v10 >= v14)
          {
            v16 = v14;
          }

          v17 = v16 - ((a3 - v10) & ~((a3 - v10) >> 31));
          result = CGBlt_fillBytes();
          a2 += v17;
        }

        v9 = (v9 + 5);
      }

      else
      {
        if (v15 > a3)
        {
          v18 = a4 - v10;
          if (a4 - v10 >= v14)
          {
            v18 = v14;
          }

          v19 = v18 - ((a3 - v10) & ~((a3 - v10) >> 31));
          result = CGBlt_copyBytes();
          a2 += v19;
        }

        v9 = (v12 + v14);
      }

      v10 = v15;
    }

    while (v15 < a4);
  }

  return result;
}

uint64_t __decompressRLE16(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  if (a4 >= 1)
  {
    v9 = result;
    v10 = 0;
    do
    {
      v12 = v9 + 1;
      v11 = *v9;
      v13 = bswap32(*v9);
      if (a5)
      {
        v11 = v13;
      }

      v14 = v11 & 0xFFFFFF;
      v15 = (v11 & 0xFFFFFF) + v10;
      if (HIBYTE(v11) == 128)
      {
        if (v15 > a3)
        {
          v16 = a4 - v10;
          if (a4 - v10 >= v14)
          {
            v16 = v14;
          }

          v17 = v16 - ((a3 - v10) & ~((a3 - v10) >> 31));
          result = CGBlt_fillBytes();
          a2 += 2 * v17;
        }

        v9 = (v9 + 6);
      }

      else
      {
        if (v15 > a3)
        {
          v18 = a4 - v10;
          if (a4 - v10 >= v14)
          {
            v18 = v14;
          }

          v19 = v18 - ((a3 - v10) & ~((a3 - v10) >> 31));
          result = CGBlt_copyBytes();
          a2 += 2 * v19;
        }

        v9 = (v12 + 2 * v14);
      }

      v10 = v15;
    }

    while (v15 < a4);
  }

  return result;
}

uint64_t __decompressRLE32(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  if (a4 >= 1)
  {
    v9 = result;
    v10 = 0;
    do
    {
      v11 = *v9;
      v12 = bswap32(*v9);
      if (a5)
      {
        v11 = v12;
      }

      v13 = v11 & 0xFFFFFF;
      v14 = (v11 & 0xFFFFFF) + v10;
      if (HIBYTE(v11) == 128)
      {
        if (v14 > a3)
        {
          v15 = a4 - v10;
          if (a4 - v10 >= v13)
          {
            v15 = v13;
          }

          v16 = v15 - ((a3 - v10) & ~((a3 - v10) >> 31));
          result = CGBlt_fillBytes();
          a2 += 4 * v16;
        }

        v9 += 2;
      }

      else
      {
        if (v14 > a3)
        {
          v17 = a4 - v10;
          if (a4 - v10 >= v13)
          {
            v17 = v13;
          }

          v18 = v17 - ((a3 - v10) & ~((a3 - v10) >> 31));
          result = CGBlt_copyBytes();
          a2 += 4 * v18;
        }

        v9 += v13 + 1;
      }

      v10 = v14;
    }

    while (v14 < a4);
  }

  return result;
}

void CStdException::CStdException(CStdException *this, uint64_t a2)
{
  *this = &unk_1F00D3C88;
  *(this + 1) = a2;
  CStdException::m_SaveLastErrorCode = a2;
}

__CFData *CUIImageCompressedWithHEVC(CGImageRef image, _DWORD *a2, __int16 *a3, size_t *a4, double a5)
{
  v9 = image;
  v10 = a5 > 1.0 || a5 <= 0.0;
  if (a2)
  {
    *a2 = 1095911234;
  }

  if (a3)
  {
    *a3 = 1;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(image);
  if (BitsPerComponent < 9)
  {
    goto LABEL_20;
  }

  ColorSpace = CGImageGetColorSpace(v9);
  if (CGColorSpaceGetModel(ColorSpace))
  {
    v13 = kCGColorSpaceDisplayP3;
    v14 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
    if (a2)
    {
      *a2 = 1095911234;
    }

    if (a3)
    {
      v15 = 3;
LABEL_18:
      *a3 = v15;
    }
  }

  else
  {
    v13 = kCGColorSpaceGenericGrayGamma2_2;
    v14 = CGColorSpaceCreateWithName(kCGColorSpaceGenericGrayGamma2_2);
    if (a2)
    {
      *a2 = 1195456544;
    }

    if (a3)
    {
      v15 = 2;
      goto LABEL_18;
    }
  }

  v9 = CUIConvertDeepImageTo8(v9, v14);
  CFRelease(v14);
  if (!v9)
  {
    CStringPtr = CFStringGetCStringPtr(v13, 0x600u);
    _CUILog(4, "CoreUI: Failed to convert source image to 8-bit color channel with %s colorspace in HEVC compression.", v32, v33, v34, v35, v36, v37, CStringPtr);
    return 0;
  }

LABEL_20:
  if (a4)
  {
    *a4 = CGImageGetBytesPerRow(v9);
  }

  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  if (!Mutable)
  {
    if (BitsPerComponent >= 9 && v9)
    {
      CFRelease(v9);
    }

    v31 = "CoreUI: Failed to allocate buffer for HEVC image destination.";
    goto LABEL_45;
  }

  v23 = Mutable;
  v50[0] = kCGImageMetadataShouldExcludeXMP;
  v50[1] = @"kCGImageMetadataShouldExcludeGPS";
  v51[0] = &unk_1F00F7C10;
  v51[1] = &unk_1F00F7C10;
  v24 = CGImageDestinationCreateWithData(Mutable, @"public.heic", 1uLL, [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2]);
  if (!v24)
  {
    if (BitsPerComponent >= 9 && v9)
    {
      CFRelease(v9);
    }

    CFRelease(v23);
    v31 = "CoreUI: Failed to instantiate HEVC image destination.";
    goto LABEL_45;
  }

  v26 = v24;
  *&v25 = a5;
  v48[0] = kCGImageDestinationLossyCompressionQuality;
  if (v10)
  {
    *&v25 = *"fff?";
  }

  v49[0] = [NSNumber numberWithFloat:v25];
  v49[1] = &unk_1F00F7C10;
  v48[1] = @"kCGImageDestinationChromaSubSamplingX";
  v48[2] = @"kCGImageDestinationChromaSubSamplingY";
  v49[2] = &unk_1F00F7C10;
  CGImageDestinationAddImage(v26, v9, [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:3]);
  if (!CGImageDestinationFinalize(v26))
  {
    if (BitsPerComponent >= 9 && v9)
    {
      CFRelease(v9);
    }

    CFRelease(v26);
    CFRelease(v23);
    v31 = "CoreUI: Failed to write to HEVC image destination.";
LABEL_45:
    _CUILog(4, v31, v17, v18, v19, v20, v21, v22, v45);
    return 0;
  }

  CFRelease(v26);
  *bytes = 1;
  Length = CFDataGetLength(v23);
  *&bytes[4] = Length;
  v28 = CFDataCreateMutable(kCFAllocatorDefault, Length + 8);
  v29 = v28;
  if (v28)
  {
    CFDataAppendBytes(v28, bytes, 8);
    BytePtr = CFDataGetBytePtr(v23);
    CFDataAppendBytes(v29, BytePtr, Length);
    if (BitsPerComponent >= 9 && v9)
    {
      CFRelease(v9);
    }

    CFRelease(v23);
  }

  else
  {
    if (BitsPerComponent >= 9 && v9)
    {
      CFRelease(v9);
    }

    CFRelease(v23);
    _CUILog(4, "CoreUI: Failed to allocate buffer for encoded payload in HEVC compression.", v39, v40, v41, v42, v43, v44, v45);
  }

  return v29;
}