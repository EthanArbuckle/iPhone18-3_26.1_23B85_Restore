uint64_t MOVStreamHEVCLosslessEncoder::propagateColorAttachments(MOVStreamHEVCLosslessEncoder *this, CMFormatDescriptionRef desc, OpaqueVTCompressionSession *a3)
{
  Extensions = CMFormatDescriptionGetExtensions(desc);
  if (Extensions)
  {
    v5 = Extensions;
    Value = CFDictionaryGetValue(Extensions, *MEMORY[0x277CC4D10]);
    if (Value)
    {
      VTSessionSetProperty(a3, *MEMORY[0x277CE2610], Value);
    }

    v7 = CFDictionaryGetValue(v5, *MEMORY[0x277CC4C00]);
    if (v7)
    {
      VTSessionSetProperty(a3, *MEMORY[0x277CE2528], v7);
    }

    v8 = CFDictionaryGetValue(v5, *MEMORY[0x277CC4CC0]);
    if (v8)
    {
      v9 = v8;
      VTSessionSetProperty(a3, *MEMORY[0x277CE2600], v8);
      if (CFEqual(v9, *MEMORY[0x277CC4D00]))
      {
        v10 = CFDictionaryGetValue(v5, *MEMORY[0x277CC4C50]);
        if (v10)
        {
          VTSessionSetProperty(a3, *MEMORY[0x277CE2558], v10);
        }
      }
    }

    v11 = CFDictionaryGetValue(v5, *MEMORY[0x277CC0360]);
    if (v11)
    {
      VTSessionSetProperty(a3, *MEMORY[0x277CE2568], v11);
    }
  }

  return 0;
}

MOVStreamHEVCLosslessEncoder *MOVStreamHEVCLosslessEncoder::invalidateSession(MOVStreamHEVCLosslessEncoder *this)
{
  if (!this->var12)
  {
    this->var12 = 1;
  }

  return this;
}

uint64_t MOVStreamHEVCLosslessEncoder::Close(MOVStreamHEVCLosslessEncoder *this)
{
  if (!this->var12)
  {
    this->var12 = 1;
    var6 = this->var6;
    v5 = **&MEMORY[0x277CC0890];
    VTCompressionSessionCompleteFrames(var6, &v5);
    v3 = this->var6;
    if (v3)
    {
      CFRelease(v3);
      this->var6 = 0;
    }
  }

  return 0;
}

void MOVStreamHEVCLosslessEncoder::InvalidateEncoder(MOVStreamHEVCLosslessEncoder *this)
{
  if (!this->var12)
  {
    this->var12 = 1;
    var6 = this->var6;
    if (var6)
    {
      CFRelease(var6);
      this->var6 = 0;
    }
  }
}

uint64_t MOVStreamHEVCLosslessEncoder::EncodeFrame(MOVStreamHEVCLosslessEncoder *this, __CVBuffer *a2, CMTime *a3, CFDictionaryRef frameProperties, void *sourceFrameRefcon)
{
  v17 = *MEMORY[0x277D85DE8];
  infoFlagsOut = 0;
  var6 = this->var6;
  *presentationTimeStamp = *a3;
  v12 = **&MEMORY[0x277CC0890];
  v8 = VTCompressionSessionEncodeFrame(var6, a2, presentationTimeStamp, &v12, frameProperties, sourceFrameRefcon, &infoFlagsOut);
  if (v8)
  {
    v9 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *presentationTimeStamp = 67109890;
      *&presentationTimeStamp[4] = v8;
      *&presentationTimeStamp[8] = 2080;
      *&presentationTimeStamp[10] = "VTCompressionSessionEncodeFrame failed\n";
      *&presentationTimeStamp[18] = 2080;
      *&presentationTimeStamp[20] = "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamHEVCLosslessEncoder.mm";
      v15 = 1024;
      v16 = 384;
      _os_log_impl(&dword_257883000, v9, OS_LOG_TYPE_ERROR, "Assert: (%d) %s - f: %s, l: %d\n", presentationTimeStamp, 0x22u);
    }
  }

  else
  {
    v10 = *&a3->value;
    this->var8.var3 = a3->epoch;
    *&this->var8.var0 = v10;
    ++this->var9;
  }

  return v8;
}

void sub_257903DA8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(a1);
    v16 = MEMORY[0x277CCACA8];
    v18 = [v11 streamId];
    v17 = [v16 stringWithFormat:@"Cannot read sample buffer for '%@': %@"];

    [MEMORY[0x277CCA9B8] populateReaderError:a11 message:v17 code:27];
    objc_end_catch();
    JUMPOUT(0x257903D38);
  }

  _Unwind_Resume(a1);
}

void sub_2579044A8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_257908FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIOL010ToL010Stride16FrameProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_257909F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MOVStreamReader;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25790A394(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25790E25C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25790E780(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t unpack_buffer(uint64_t result, uint64_t a2, uint64_t *a3, int a4, double a5, double a6, uint8x8_t a7)
{
  v7 = a3[1];
  if (v7)
  {
    v8 = 0;
    v9 = *a3;
    v10 = a3[2];
    v11 = a3[3];
    v12 = (result + 4);
    do
    {
      if (v10 >= 4)
      {
        v13 = 0;
        v14 = v12;
        do
        {
          v15 = *v14;
          result = v15 >> 2;
          a7.i32[0] = *(v14 - 1);
          v16 = vmovl_u8(a7).u64[0];
          v17 = vshl_u32(vdup_n_s32(v15), 0x200000004);
          v17.i16[1] = v17.i16[2];
          v17.i16[2] = *v14;
          v17.i16[3] = v15 >> 2;
          v18 = vorr_s8(vshl_n_s16(v16, 6uLL), vand_s8(v17, 0x30003000300030));
          v19 = vshr_n_u16(v16, 4uLL);
          if (a4)
          {
            v20 = -1;
          }

          else
          {
            v20 = 0;
          }

          a7 = vbsl_s8(vdup_n_s16(v20), vorr_s8(v18, v19), v18);
          *(v9 + 8 * v13++) = *&a7;
          v14 += 5;
        }

        while (v10 >> 2 != v13);
      }

      v9 += v11;
      ++v8;
      v12 += a2;
    }

    while (v8 != v7);
  }

  return result;
}

{
  v7 = a3[1];
  if (v7)
  {
    v8 = 0;
    v9 = *a3;
    v10 = a3[2];
    v11 = a3[3];
    v12 = (result + 4);
    do
    {
      if (v10 >= 4)
      {
        v13 = 0;
        v14 = v12;
        do
        {
          v15 = *v14;
          result = 4 * v15;
          a7.i32[0] = *(v14 - 1);
          v16 = vmovl_u8(a7).u64[0];
          v17 = vshl_u32(vdup_n_s32(v15), 0x400000006);
          v17.i16[1] = v17.i16[2];
          v17.i16[2] = 4 * v15;
          v17.i16[3] = *v14;
          v18 = vorr_s8(vshl_n_s16(v16, 8uLL), vand_s8(v17, 0xC000C000C000C0));
          if (a4)
          {
            v19 = -1;
          }

          else
          {
            v19 = 0;
          }

          a7 = vbsl_s8(vdup_n_s16(v19), vsra_n_u16(v18, v16, 2uLL), v18);
          *(v9 + 8 * v13++) = *&a7;
          v14 += 5;
        }

        while (v10 >> 2 != v13);
      }

      v9 += v11;
      ++v8;
      v12 += a2;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t *pack_buffer(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  if (v3)
  {
    v4 = 0;
    v5 = *result;
    v6 = result[2];
    do
    {
      if (v6 >= 4)
      {
        v7 = 0;
        v8 = a3;
        do
        {
          v9 = *(v5 + 8 * v7);
          *v8 = vuzp1_s8(vshr_n_u16(v9, 8uLL), v9).u32[0];
          *(v8 + 4) = (v9.u16[1] >> 4) & 0xC | (v9.i8[0] >> 6) | (v9.u16[2] >> 2) & 0x30 | v9.i8[6] & 0xC0;
          ++v7;
          v6 = result[2];
          v8 += 5;
        }

        while (v7 < v6 >> 2);
        v3 = result[1];
      }

      a3 += a2;
      v5 += result[3];
      ++v4;
    }

    while (v3 > v4);
  }

  return result;
}

uint64_t conv_q8q2_to_L010(uint64_t result, int a2, int16x8_t *a3, int a4, unsigned int a5, int a6)
{
  if (a6)
  {
    v6 = 0;
    v7 = a5 + 7;
    v8 = a2 - 5 * (a5 >> 2);
    v9.i64[0] = 0xC000C000C000C0;
    v9.i64[1] = 0xC000C000C000C0;
    do
    {
      if (v7 >= 8)
      {
        v10 = 1;
        v11 = v7 >> 3;
        do
        {
          v12 = (a5 & 7) == 0;
          if (v10-- != 0)
          {
            v12 = 1;
          }

          v14 = !v12;
          if (v12)
          {
            v15 = 0;
          }

          else
          {
            v15 = -8;
          }

          v16 = (a3 + v15);
          if (v14)
          {
            v17 = -5;
          }

          else
          {
            v17 = 0;
          }

          v18 = (result + v17);
          v19 = *v18;
          result = &v18->i64[1] + 2;
          *v16 = vsliq_n_s16(vandq_s8(vshlq_u16(vmovl_u8(vqtbl1_s8(v19, 0x909090904040404)), xmmword_25792F780), v9), vmovl_u8(vqtbl1_s8(v19, 0x807060503020100)), 8uLL);
          a3 = v16 + 1;
          --v11;
        }

        while (v11);
      }

      result += v8;
      a3 = (a3 + 2 * ((a4 - 2 * a5) >> 1));
      ++v6;
    }

    while (v6 != a6);
  }

  return result;
}

int16x8_t *conv_L010_to_q8q2(int16x8_t *result, int a2, unsigned __int8 *a3, int a4, unsigned int a5, int a6)
{
  if (a6)
  {
    v6 = 0;
    v7 = a5 + 7;
    v8 = (a2 - 2 * a5) >> 1;
    v9.i64[0] = 0xC000C000C000C0;
    v9.i64[1] = 0xC000C000C000C0;
    do
    {
      if (v7 >= 8)
      {
        v10 = 1;
        v11 = v7 >> 3;
        do
        {
          v12 = (a5 & 7) == 0;
          if (v10-- != 0)
          {
            v12 = 1;
          }

          v14 = !v12;
          if (v12)
          {
            v15 = 0;
          }

          else
          {
            v15 = -5;
          }

          v16 = &a3[v15];
          if (v14)
          {
            v17 = -8;
          }

          else
          {
            v17 = 0;
          }

          v18 = (result + v17);
          v19 = *v18;
          result = v18 + 1;
          *v20.i8 = vshrn_n_s16(v19, 8uLL);
          v21 = vmovn_s16(vshlq_u16(vandq_s8(v19, v9), xmmword_25792F790));
          v22 = vpadd_s8(v21, v21);
          v20.u64[1] = vpadd_s8(v22, v22);
          v23 = vqtbl1q_s8(v20, xmmword_25792F7A0);
          *(v16 + 4) = v23.i16[4];
          *v16 = v23.i64[0];
          a3 = v16 + 10;
          --v11;
        }

        while (v11);
      }

      result = (result + 2 * v8);
      a3 += a4 - 5 * (a5 >> 2);
      ++v6;
    }

    while (v6 != a6);
  }

  return result;
}

void sub_257911960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIOrg3hToRGhAFrameProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *std::vector<CMTime>::__assign_with_size[abi:ne200100]<CMTime*,CMTime*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 3) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      std::vector<math_color::rgb>::__vallocate[abi:ne200100](v7, v12);
    }

    std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 3) >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

void sub_257913A0C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_257913B68(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_257916670(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

double timerEnd(uint64_t a1)
{
  v1 = mach_absolute_time() - a1;
  mach_timebase_info(&info);
  v2 = (v1 * info.numer / info.denom);
  v3 = v2 / 1000000.0;
  if (atomic_load_explicit(&qword_27F8EBFE8, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_27F8EBFF8, memory_order_acquire))
    {
      goto LABEL_3;
    }

LABEL_11:
    timerEnd(v3);
    v10 = _MergedGlobals;
    v5 = ++_MergedGlobals;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_12:
    qword_27F8EBFE0 = *&v3;
    qword_27F8EBFF0 = *&v3;
    qword_27F8EC000 = 0;
    v6 = v3;
    v7 = v3;
    goto LABEL_6;
  }

  timerEnd(v2 / 1000000.0);
  if ((atomic_load_explicit(&qword_27F8EBFF8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v4 = _MergedGlobals;
  v5 = ++_MergedGlobals;
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_4:
  v6 = *&qword_27F8EBFE0;
  if (v3 >= *&qword_27F8EBFE0)
  {
    v7 = *&qword_27F8EBFF0;
    if (v3 <= *&qword_27F8EBFF0)
    {
      goto LABEL_6;
    }

LABEL_13:
    qword_27F8EBFF0 = *&v3;
    v7 = v3;
    v8 = v3 + *&qword_27F8EC000;
    *&qword_27F8EC000 = v3 + *&qword_27F8EC000;
    if (v5 != 480)
    {
      return v3;
    }

    goto LABEL_14;
  }

  qword_27F8EBFE0 = *&v3;
  v6 = v3;
  v7 = *&qword_27F8EBFF0;
  if (v3 > *&qword_27F8EBFF0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v8 = v3 + *&qword_27F8EC000;
  *&qword_27F8EC000 = v3 + *&qword_27F8EC000;
  if (v5 != 480)
  {
    return v3;
  }

LABEL_14:
  printf("duration = %5.3f msec, min/max/avg/count = %5.3f/%5.3f/%5.3f/%d\n", v3, v6, v7, v8 / 480.0, 480);
  _MergedGlobals = 0;
  return v3;
}

unsigned __int16 *right_shift_uint16_buffer(unsigned __int16 *result, uint16x8_t *a2, unint64_t a3, char a4)
{
  v4 = vdupq_n_s16(a4);
  v5 = result;
  v6 = a2;
  if (a3 >= 0x40)
  {
    v7 = a3 >> 6;
    v8 = vnegq_s16(v4);
    v6 = a2;
    v5 = result;
    do
    {
      *v6 = vshlq_u16(*v5, v8);
      v6[1] = vshlq_u16(v5[1], v8);
      v6[2] = vshlq_u16(v5[2], v8);
      v6[3] = vshlq_u16(v5[3], v8);
      v5 += 4;
      v6 += 4;
      --v7;
    }

    while (v7);
  }

  v9 = (a3 >> 4) & 3;
  if (v9)
  {
    v10 = vnegq_s16(v4);
    *v6 = vshlq_u16(*v5, v10);
    if (v9 != 1)
    {
      v6[1] = vshlq_u16(v5[1], v10);
      if (v9 != 2)
      {
        v6[2] = vshlq_u16(v5[2], v10);
      }
    }
  }

  v11 = (a3 >> 1) & 7;
  if (v11)
  {
    a2->i16[0] = *result >> a4;
    if (v11 != 1)
    {
      a2->i16[1] = result[1] >> a4;
      if (v11 != 2)
      {
        a2->i16[2] = result[2] >> a4;
        if (v11 != 3)
        {
          a2->i16[3] = result[3] >> a4;
          if (v11 != 4)
          {
            a2->i16[4] = result[4] >> a4;
            if (v11 != 5)
            {
              a2->i16[5] = result[5] >> a4;
              if (v11 != 6)
              {
                a2->i16[6] = result[6] >> a4;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unsigned __int16 *left_shift_uint16_buffer(unsigned __int16 *result, uint16x8_t *a2, unint64_t a3, char a4)
{
  v4 = vdupq_n_s16(a4);
  v5 = result;
  v6 = a2;
  if (a3 >= 0x40)
  {
    v7 = a3 >> 6;
    v6 = a2;
    v5 = result;
    do
    {
      *v6 = vshlq_u16(*v5, v4);
      v6[1] = vshlq_u16(v5[1], v4);
      v6[2] = vshlq_u16(v5[2], v4);
      v6[3] = vshlq_u16(v5[3], v4);
      v5 += 4;
      v6 += 4;
      --v7;
    }

    while (v7);
  }

  v8 = (a3 >> 4) & 3;
  if (v8)
  {
    *v6 = vshlq_u16(*v5, v4);
    if (v8 != 1)
    {
      v6[1] = vshlq_u16(v5[1], v4);
      if (v8 != 2)
      {
        v6[2] = vshlq_u16(v5[2], v4);
      }
    }
  }

  v9 = (a3 >> 1) & 7;
  if (v9)
  {
    a2->i16[0] = *result << a4;
    if (v9 != 1)
    {
      a2->i16[1] = result[1] << a4;
      if (v9 != 2)
      {
        a2->i16[2] = result[2] << a4;
        if (v9 != 3)
        {
          a2->i16[3] = result[3] << a4;
          if (v9 != 4)
          {
            a2->i16[4] = result[4] << a4;
            if (v9 != 5)
            {
              a2->i16[5] = result[5] << a4;
              if (v9 != 6)
              {
                a2->i16[6] = result[6] << a4;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t join_bayer_buffer_yuv(uint64_t result, const unsigned __int16 *a2, unsigned __int16 *a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, int32x4_t a9, int32x4_t a10, unsigned int a11, BOOL a12)
{
  if (a5)
  {
    a9.i32[0] = 0;
    v12 = 0;
    v13 = 0;
    v14 = 2 * a4;
    v15 = (a4 >> 3) & 0xFFFFFFFFFFFFFFFLL;
    v16 = a6 >> 1;
    v17 = a7 >> 1;
    v18 = a8 >> 1;
    a10.i32[0] = a11;
    v19 = ((2 * a4) >> 2) & 3;
    v20 = 2 * (a6 >> 1);
    v21 = 2 * (a8 >> 1);
    v22 = 2 * (a7 >> 1);
    v23 = 8 * v15;
    v24 = vnegq_s16(vbicq_s8(vdupq_n_s16(a11), vdupq_lane_s32(*&vceqq_s32(a10, a9), 0)));
    do
    {
      if (v14 >= 0x10)
      {
        v25 = 0;
        v26 = &a3[v20 / 2] + v20 * v13;
        v27 = v13 >> 1;
        v28 = a2 + v21 * v27;
        v29 = result + v22 * v27;
        do
        {
          v30 = vshlq_u16(*&v28[16 * v25], v24);
          v31 = vshlq_u16(*(v29 + 16 * v25), v24);
          v32 = vshrq_n_u16(v31, 0xAuLL);
          v33 = vshrq_n_u16(v30, 0xAuLL);
          if (a12)
          {
            v34 = -1;
          }

          else
          {
            v34 = 0;
          }

          v35 = vdupq_n_s16(v34);
          v47.val[0] = vorrq_s8(vandq_s8(v33, v35), v30);
          v47.val[1] = vorrq_s8(vandq_s8(v32, v35), v31);
          *v31.i8 = vmovn_s32(v47.val[1]);
          v36 = *&v26[16 * v25];
          *&v26[16 * v25] = vqtbl2q_s8(*v31.i8, xmmword_25792F830);
          *(&a3[8 * v25] + v20 * v13) = vqtbl2q_s8(v47, xmmword_25792F840);
          v46.val[0] = vuzp2q_s16(v47.val[0], xmmword_25792F830);
          v46.val[1] = *&v26[16 * v25];
          *&v26[16 * v25++] = vqtbl2q_s8(v46, xmmword_25792F850);
        }

        while (v15 > v25);
      }

      if (!v19)
      {
        goto LABEL_4;
      }

      v37 = &a3[v12 * v16];
      v38 = v13 >> 1;
      v39 = result + 2 * v17 * v38;
      v40 = &a2[v18 * v38];
      v41 = &v37[v23];
      v42 = &a3[v16 * (v13 | 1) + v23];
      v43 = (v39 + v23 * 2);
      v44 = &v40[v23];
      *v42 = *v43 >> a11;
      v41[1] = v43[1] >> a11;
      *v41 = v40[8 * v15] >> a11;
      v42[1] = v40[v23 + 1] >> a11;
      if (a12)
      {
        *v42 |= *v42 >> 10;
        v41[1] |= v41[1] >> 10;
        *v41 |= *v41 >> 10;
        v42[1] |= v42[1] >> 10;
        if (v19 == 1)
        {
          goto LABEL_4;
        }

        v42[1] = v43[1] >> a11;
        v41[2] = v43[2] >> a11;
        v41[1] = v44[1] >> a11;
        v42[2] = v44[2] >> a11;
        v42[1] |= v42[1] >> 10;
        v41[2] |= v41[2] >> 10;
        v41[1] |= v41[1] >> 10;
        v42[2] |= v42[2] >> 10;
        if (v19 == 2)
        {
          goto LABEL_4;
        }

        v42[2] = v43[2] >> a11;
        v41[3] = v43[3] >> a11;
        v41[2] = v44[2] >> a11;
        v42[3] = v44[3] >> a11;
        v42[2] |= v42[2] >> 10;
        v41[3] |= v41[3] >> 10;
        v41[2] |= v41[2] >> 10;
        v45 = v42[3] | (v42[3] >> 10);
      }

      else
      {
        if (v19 == 1)
        {
          goto LABEL_4;
        }

        v42[1] = v43[1] >> a11;
        v41[2] = v43[2] >> a11;
        v41[1] = v44[1] >> a11;
        v42[2] = v44[2] >> a11;
        if (v19 == 2)
        {
          goto LABEL_4;
        }

        v42[2] = v43[2] >> a11;
        v41[3] = v43[3] >> a11;
        v41[2] = v44[2] >> a11;
        v45 = v44[3] >> a11;
      }

      v42[3] = v45;
LABEL_4:
      v13 += 2;
      v12 = v13;
    }

    while (v13 < a5);
  }

  return result;
}

uint64_t copy_alpha_channel_to_monochrome(uint64_t result, unsigned __int16 *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a4)
  {
    v6 = (a3 >> 3) & 0xFFFFFFFFFFFFFFFLL;
    v7 = a6 >> 1;
    v8 = a3 & 7;
    v9 = a5 >> 1;
    if (v6)
    {
      if ((a3 & 7) != 0)
      {
        v10 = 0;
        v11 = result;
        v12 = a2;
        do
        {
          v13 = 0;
          do
          {
            v14 = (v11 + (v13 << 6));
            v15 = vld4q_s16(v14);
            *&v12[8 * v13++] = v15;
          }

          while (v6 > v13);
          v16 = (result + 2 * v10 * v7 + (v6 << 6));
          v17 = &a2[8 * v6 + v10 * v9];
          *v17 = *v16;
          if (v8 != 1)
          {
            v17[1] = v16[4];
            if (v8 != 2)
            {
              v17[2] = v16[8];
              if (v8 != 3)
              {
                v17[3] = v16[12];
                if (v8 != 4)
                {
                  v17[4] = v16[16];
                  if (v8 != 5)
                  {
                    v17[5] = v16[20];
                    if (v8 != 6)
                    {
                      v17[6] = v16[24];
                    }
                  }
                }
              }
            }
          }

          ++v10;
          v12 += v9;
          v11 += 2 * v7;
        }

        while (a4 > v10);
      }

      else
      {
        v24 = 2 * v9;
        v25 = 2 * v7;
        do
        {
          v26 = 0;
          do
          {
            v27 = (result + (v26 << 6));
            v28 = vld4q_s16(v27);
            *&a2[8 * v26++] = v28;
          }

          while (v6 > v26);
          ++v8;
          a2 = (a2 + v24);
          result += v25;
        }

        while (a4 > v8);
      }
    }

    else if ((a3 & 7) != 0)
    {
      v18 = a2 + 3;
      v19 = 2 * v9;
      v20 = (result + 24);
      v21 = 2 * v7;
      v22 = 1;
      do
      {
        *(v18 - 3) = *(v20 - 12);
        if (v8 != 1)
        {
          *(v18 - 2) = *(v20 - 8);
          if (v8 != 2)
          {
            *(v18 - 1) = *(v20 - 4);
            if (v8 != 3)
            {
              *v18 = *v20;
              if (v8 != 4)
              {
                v18[1] = v20[4];
                if (v8 != 5)
                {
                  v18[2] = v20[8];
                  if (v8 != 6)
                  {
                    v18[3] = v20[12];
                  }
                }
              }
            }
          }
        }

        v23 = a4 > v22++;
        v18 = (v18 + v19);
        v20 = (v20 + v21);
      }

      while (v23);
    }
  }

  return result;
}

uint64_t copy_monochrome_to_alpha_channel(uint64_t result, unsigned __int16 *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a4)
  {
    v6 = (a3 >> 3) & 0xFFFFFFFFFFFFFFFLL;
    v7 = a5 >> 1;
    v8 = a3 & 7;
    v9 = a6 >> 1;
    if (v6)
    {
      if ((a3 & 7) != 0)
      {
        v10 = 0;
        *&v11 = 0x8000800080008000;
        *(&v11 + 1) = 0x8000800080008000;
        v12 = result;
        v13 = a2;
        do
        {
          v14 = 0;
          do
          {
            v15 = &v13[32 * v14];
            v16 = *(v12 + 16 * v14);
            v15[2] = vqtbl2q_s8(*&v11, xmmword_25792F880);
            v15[3] = vqtbl2q_s8(*&v11, xmmword_25792F890);
            *v15 = vqtbl2q_s8(*&v11, xmmword_25792F860);
            v15[1] = vqtbl2q_s8(*&v11, xmmword_25792F870);
            ++v14;
          }

          while (v6 > v14);
          v17 = (result + 2 * v10 * v7 + 16 * v6);
          v18 = &a2[32 * v6 + v10 * v9];
          *v18 = *v17;
          if (v8 != 1)
          {
            v18[4] = v17[1];
            if (v8 != 2)
            {
              v18[8] = v17[2];
              if (v8 != 3)
              {
                v18[12] = v17[3];
                if (v8 != 4)
                {
                  v18[16] = v17[4];
                  if (v8 != 5)
                  {
                    v18[20] = v17[5];
                    if (v8 != 6)
                    {
                      v18[24] = v17[6];
                    }
                  }
                }
              }
            }
          }

          ++v10;
          v13 += v9;
          v12 += 2 * v7;
        }

        while (a4 > v10);
      }

      else
      {
        v25 = 2 * v9;
        v26 = 2 * v7;
        *&v27 = 0x8000800080008000;
        *(&v27 + 1) = 0x8000800080008000;
        do
        {
          v28 = 0;
          do
          {
            v29 = &a2[32 * v28];
            v30 = *(result + 16 * v28);
            v29[2] = vqtbl2q_s8(*&v27, xmmword_25792F880);
            v29[3] = vqtbl2q_s8(*&v27, xmmword_25792F890);
            *v29 = vqtbl2q_s8(*&v27, xmmword_25792F860);
            v29[1] = vqtbl2q_s8(*&v27, xmmword_25792F870);
            ++v28;
          }

          while (v6 > v28);
          ++v8;
          a2 = (a2 + v25);
          result += v26;
        }

        while (a4 > v8);
      }
    }

    else if ((a3 & 7) != 0)
    {
      v19 = a2 + 12;
      v20 = 2 * v9;
      v21 = (result + 6);
      v22 = 2 * v7;
      v23 = 1;
      do
      {
        *(v19 - 12) = *(v21 - 3);
        if (v8 != 1)
        {
          *(v19 - 8) = *(v21 - 2);
          if (v8 != 2)
          {
            *(v19 - 4) = *(v21 - 1);
            if (v8 != 3)
            {
              *v19 = *v21;
              if (v8 != 4)
              {
                v19[4] = v21[1];
                if (v8 != 5)
                {
                  v19[8] = v21[2];
                  if (v8 != 6)
                  {
                    v19[12] = v21[3];
                  }
                }
              }
            }
          }
        }

        v24 = a4 > v23++;
        v19 = (v19 + v20);
        v21 = (v21 + v22);
      }

      while (v24);
    }
  }

  return result;
}

uint64_t split_bayer_buffer_yuv(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, int32x4_t a9, double a10, int32x4_t a11, unsigned int a12)
{
  if (a5)
  {
    v12 = (a4 >> 3) & 0xFFFFFFFFFFFFFFFLL;
    v13 = a6 >> 1;
    v14 = a7 >> 1;
    v15 = a8 >> 1;
    v16 = ((2 * a4) >> 2) & 3;
    if (2 * a4 >= 0x10)
    {
      a9.i32[0] = 0;
      v31 = 0;
      v32 = 0;
      a11.i32[0] = a12;
      v35 = vdupq_lane_s32(*&vceqq_s32(a11, a9), 0);
      v33 = vbicq_s8(vdupq_n_s16(a12), v35);
      v34 = result + 2 * v13;
      *v35.i8 = vmovn_s32(v33);
      v36 = vuzp2q_s16(v33, v35).u64[0];
      v37 = 16 * v12;
      do
      {
        v38 = 0;
        v39 = v32 >> 1;
        v40 = a3 + 2 * v15 * v39;
        v41 = a2 + 2 * v14 * v39;
        v42 = result + 2 * v31 * v13;
        v43 = result + 2 * v13 * (v32 | 1);
        v44 = v32 >> 1;
        v45 = &a2[v14 * v44];
        v46 = &a3[v15 * v44];
        do
        {
          v47 = (v34 + 16 * v38);
          v55 = vld2_s16(v47);
          v48 = (result + 2 * v13 * v32 + 16 * v38);
          v56 = vld2_s16(v48);
          v57.val[0] = vshl_u16(v55.val[0], *v35.i8);
          v57.val[1] = vshl_u16(v56.val[1], v36);
          v49 = &v41[16 * v38];
          vst2_s16(v49, v57);
          v56.val[0] = vshl_u16(v56.val[0], *v35.i8);
          v56.val[1] = vshl_u16(v55.val[1], v36);
          v50 = &v40[16 * v38];
          vst2_s16(v50, v56);
          ++v38;
        }

        while (v12 > v38);
        if (v16)
        {
          v51 = (v42 + v37);
          v52 = (v43 + v37);
          v53 = &v45[v37 / 2];
          v54 = &v46[v37 / 2];
          *v53 = *(v43 + 16 * v12) << a12;
          v53[1] = v51[1] << a12;
          *v54 = *v51 << a12;
          v54[1] = *(v43 + v37 + 2) << a12;
          if (v16 != 1)
          {
            v53[1] = v52[1] << a12;
            v53[2] = v51[2] << a12;
            v54[1] = v51[1] << a12;
            v54[2] = v52[2] << a12;
            if (v16 != 2)
            {
              v53[2] = v52[2] << a12;
              v53[3] = v51[3] << a12;
              v54[2] = v51[2] << a12;
              v54[3] = v52[3] << a12;
            }
          }
        }

        v34 += 4 * v13;
        v32 += 2;
        v31 = v32;
      }

      while (v32 < a5);
    }

    else if (v16)
    {
      v17 = 16 * (a4 >> 3);
      v18 = 4 * v13;
      v19 = a2 + 3;
      v20 = 2 * v14;
      v21 = 2 * v15;
      v22 = 2;
      v23 = result + 2 * v13;
      do
      {
        v25 = result + v17;
        v26 = v23 + v17;
        v27 = &v19[v17 / 2];
        v28 = &a3[v17 / 2];
        *(v27 - 3) = *(v23 + v17) << a12;
        *(v27 - 2) = *(result + v17 + 2) << a12;
        *v28 = *(result + v17) << a12;
        v28[1] = *(v23 + v17 + 2) << a12;
        if (v16 != 1)
        {
          *(v27 - 2) = *(v26 + 2) << a12;
          *(v27 - 1) = *(v25 + 4) << a12;
          v28[1] = *(v25 + 2) << a12;
          v28[2] = *(v26 + 4) << a12;
          if (v16 != 2)
          {
            v29 = &v19[v17 / 2];
            *(v29 - 1) = *(v23 + v17 + 4) << a12;
            *v29 = *(result + v17 + 6) << a12;
            v30 = &a3[v17 / 2];
            v30[2] = *(result + v17 + 4) << a12;
            v30[3] = *(v23 + v17 + 6) << a12;
          }
        }

        v24 = v22;
        v23 += v18;
        result += v18;
        v22 += 2;
        v19 = (v19 + v20);
        a3 = (a3 + v21);
      }

      while (v24 < a5);
    }
  }

  return result;
}

unsigned __int16 *split_bayer_buffer(unsigned __int16 *result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unint64_t a6, unint64_t a7, unint64_t a8, unsigned int a9, BOOL a10)
{
  if (a6 / a7 < 2)
  {
    return result;
  }

  v10 = a7 >> 4;
  LODWORD(v11) = a9;
  v12 = (result + a7);
  v13 = a7 & 0x1F;
  v14 = (a6 / a7) >> 1;
  if (a7 >= 0x20)
  {
    v23 = a7 >> 5;
    v24 = (a8 >> 4) & 0xFFFFFFFFFFFFFFELL;
    if (a9)
    {
      LODWORD(v25) = 0;
      v26 = vdupq_n_s16(a9);
      v27 = 8 * v10;
      v28 = 16 * v24;
      while (1)
      {
        v29 = 0;
        v30 = 0;
        v31 = 1;
        do
        {
          v32 = vshlq_u16(*&result[v29], v26);
          v33 = vshlq_u16(*&result[v29 + 8], v26);
          v34 = vshlq_u16(*&v12[v29], v26);
          v35 = vshlq_u16(*&v12[v29 + 8], v26);
          *&a2[v30] = vuzp1q_s16(v32, v33);
          *&a3[v30] = vuzp2q_s16(v32, v33);
          *&a4[v30] = vuzp1q_s16(v34, v35);
          *&a5[v30] = vuzp2q_s16(v34, v35);
          v22 = v23 > v31++;
          v30 += 8;
          v29 += 16;
        }

        while (v22);
        v36 = &v12[v29];
        v37 = &result[v29];
        if (!v13)
        {
          goto LABEL_49;
        }

        a2[v30] = *v37 << a9;
        a3[v30] = v37[1] << a9;
        a4[v30] = *v36 << a9;
        a5[v30] = v36[1] << a9;
        if (v13 <= 4)
        {
          v37 += 2;
          v36 += 2;
          if (a10)
          {
            goto LABEL_50;
          }

          goto LABEL_25;
        }

        a2[v30 + 1] = v37[2] << a9;
        v38 = &result[v29];
        a3[v30 + 1] = result[v29 + 3] << a9;
        a4[v30 + 1] = v36[2] << a9;
        v39 = &v12[v29];
        a5[v30 + 1] = v12[v29 + 3] << a9;
        if (v13 < 9)
        {
          v37 = v38 + 4;
          v36 = v39 + 4;
          if (a10)
          {
            goto LABEL_50;
          }

          goto LABEL_25;
        }

        a2[v30 + 2] = v38[4] << a9;
        a3[v30 + 2] = v38[5] << a9;
        a4[v30 + 2] = v39[4] << a9;
        a5[v30 + 2] = v39[5] << a9;
        if (v13 < 0xD)
        {
          v37 = v38 + 6;
          v36 = v39 + 6;
          if (a10)
          {
            goto LABEL_50;
          }

          goto LABEL_25;
        }

        a2[v30 + 3] = v38[6] << a9;
        v40 = &result[v29];
        a3[v30 + 3] = result[v29 + 7] << a9;
        a4[v30 + 3] = v39[6] << a9;
        v41 = &v12[v29];
        a5[v30 + 3] = v12[v29 + 7] << a9;
        if (v13 < 0x11)
        {
          v37 = v40 + 8;
          v36 = v41 + 8;
          if (a10)
          {
            goto LABEL_50;
          }

          goto LABEL_25;
        }

        a2[v30 + 4] = v40[8] << a9;
        a3[v30 + 4] = v40[9] << a9;
        a4[v30 + 4] = v41[8] << a9;
        a5[v30 + 4] = v41[9] << a9;
        if (v13 < 0x15)
        {
          v37 = v40 + 10;
          v36 = v41 + 10;
          if (a10)
          {
            goto LABEL_50;
          }

          goto LABEL_25;
        }

        a2[v30 + 5] = v40[10] << a9;
        v42 = &result[v29];
        a3[v30 + 5] = result[v29 + 11] << a9;
        a4[v30 + 5] = v41[10] << a9;
        v43 = &v12[v29];
        a5[v30 + 5] = v12[v29 + 11] << a9;
        if (v13 < 0x19)
        {
          break;
        }

        a2[v30 + 6] = v42[12] << a9;
        a3[v30 + 6] = v42[13] << a9;
        a4[v30 + 6] = v43[12] << a9;
        a5[v30 + 6] = v43[13] << a9;
        if (v13 < 0x1D)
        {
          v37 = v42 + 14;
          v36 = v43 + 14;
          if (!a10)
          {
            goto LABEL_25;
          }

LABEL_50:
          a2 = (a2 + v28);
          a3 = (a3 + v28);
          a4 = (a4 + v28);
          a5 = (a5 + v28);
          goto LABEL_25;
        }

        a2[v30 + 7] = v42[14] << a9;
        v44 = &result[v29];
        a3[v30 + 7] = v44[15] << a9;
        v37 = v44 + 16;
        a4[v30 + 7] = v43[14] << a9;
        v45 = &v12[v29];
        a5[v30 + 7] = v45[15] << a9;
        v36 = v45 + 16;
        if (a10)
        {
          goto LABEL_50;
        }

LABEL_25:
        result = &v37[v27];
        v12 = &v36[v27];
        v25 = (v25 + 1);
        if (v14 <= v25)
        {
          return result;
        }
      }

      v37 = v42 + 12;
      v36 = v43 + 12;
LABEL_49:
      if (a10)
      {
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    v46 = 8 * v10;
    v47 = 16 * v24;
    while (1)
    {
      v48 = 0;
      v49 = 0;
      v50 = 1;
      do
      {
        v51 = *&result[v48];
        v52 = *&result[v48 + 8];
        v53 = *&v12[v48];
        v54 = *&v12[v48 + 8];
        *&a2[v49] = vuzp1q_s16(v51, v52);
        *&a3[v49] = vuzp2q_s16(v51, v52);
        *&a4[v49] = vuzp1q_s16(v53, v54);
        *&a5[v49] = vuzp2q_s16(v53, v54);
        v22 = v23 > v50++;
        v49 += 8;
        v48 += 16;
      }

      while (v22);
      v55 = &v12[v48];
      v56 = &result[v48];
      if (!v13)
      {
        goto LABEL_78;
      }

      a2[v49] = *v56;
      a3[v49] = v56[1];
      a4[v49] = *v55;
      a5[v49] = v55[1];
      if (v13 <= 4)
      {
        v56 += 2;
        v55 += 2;
        if (a10)
        {
          goto LABEL_79;
        }

        goto LABEL_54;
      }

      a2[v49 + 1] = v56[2];
      v57 = &result[v48];
      a3[v49 + 1] = result[v48 + 3];
      a4[v49 + 1] = v55[2];
      v58 = &v12[v48];
      a5[v49 + 1] = v12[v48 + 3];
      if (v13 < 9)
      {
        v56 = v57 + 4;
        v55 = v58 + 4;
        if (a10)
        {
          goto LABEL_79;
        }

        goto LABEL_54;
      }

      a2[v49 + 2] = v57[4];
      a3[v49 + 2] = v57[5];
      a4[v49 + 2] = v58[4];
      a5[v49 + 2] = v58[5];
      if (v13 < 0xD)
      {
        v56 = v57 + 6;
        v55 = v58 + 6;
        if (a10)
        {
          goto LABEL_79;
        }

        goto LABEL_54;
      }

      a2[v49 + 3] = v57[6];
      v59 = &result[v48];
      a3[v49 + 3] = result[v48 + 7];
      a4[v49 + 3] = v58[6];
      v60 = &v12[v48];
      a5[v49 + 3] = v12[v48 + 7];
      if (v13 < 0x11)
      {
        v56 = v59 + 8;
        v55 = v60 + 8;
        if (a10)
        {
          goto LABEL_79;
        }

        goto LABEL_54;
      }

      a2[v49 + 4] = v59[8];
      a3[v49 + 4] = v59[9];
      a4[v49 + 4] = v60[8];
      a5[v49 + 4] = v60[9];
      if (v13 < 0x15)
      {
        v56 = v59 + 10;
        v55 = v60 + 10;
        if (a10)
        {
          goto LABEL_79;
        }

        goto LABEL_54;
      }

      a2[v49 + 5] = v59[10];
      v61 = &result[v48];
      a3[v49 + 5] = result[v48 + 11];
      a4[v49 + 5] = v60[10];
      v62 = &v12[v48];
      a5[v49 + 5] = v12[v48 + 11];
      if (v13 < 0x19)
      {
        break;
      }

      a2[v49 + 6] = v61[12];
      a3[v49 + 6] = v61[13];
      a4[v49 + 6] = v62[12];
      a5[v49 + 6] = v62[13];
      if (v13 < 0x1D)
      {
        v56 = v61 + 14;
        v55 = v62 + 14;
        if (!a10)
        {
          goto LABEL_54;
        }

LABEL_79:
        a2 = (a2 + v47);
        a3 = (a3 + v47);
        a4 = (a4 + v47);
        a5 = (a5 + v47);
        goto LABEL_54;
      }

      a2[v49 + 7] = v61[14];
      a3[v49 + 7] = result[v48 + 15];
      v56 = &result[v48 + 16];
      a4[v49 + 7] = v62[14];
      v63 = &v12[v48];
      a5[v49 + 7] = v63[15];
      v55 = v63 + 16;
      if (a10)
      {
        goto LABEL_79;
      }

LABEL_54:
      result = &v56[v46];
      v12 = &v55[v46];
      v11 = (v11 + 1);
      if (v14 <= v11)
      {
        return result;
      }
    }

    v56 = v61 + 12;
    v55 = v62 + 12;
LABEL_78:
    if (a10)
    {
      goto LABEL_79;
    }

    goto LABEL_54;
  }

  if ((a7 & 0x1F) != 0)
  {
    if (a10)
    {
      v15 = 0;
      v16 = a4 + 7;
      v17 = a5 + 7;
      v18 = a3 + 7;
      v19 = 1;
      do
      {
        *(a2 + v15) = *result << a9;
        *(v18 + v15 - 14) = result[1] << a9;
        *(a4 + v15) = *v12 << a9;
        *(a5 + v15) = v12[1] << a9;
        if (v13 < 5)
        {
          v20 = result + 2;
          v21 = v12 + 2;
        }

        else
        {
          *(a2 + v15 + 2) = result[2] << a9;
          *(v18 + v15 - 12) = result[3] << a9;
          *(v16 + v15 - 12) = v12[2] << a9;
          *(v17 + v15 - 12) = v12[3] << a9;
          if (v13 < 9)
          {
            v20 = result + 4;
            v21 = v12 + 4;
          }

          else
          {
            *(a2 + v15 + 4) = result[4] << a9;
            *(v18 + v15 - 10) = result[5] << a9;
            *(v16 + v15 - 10) = v12[4] << a9;
            *(v17 + v15 - 10) = v12[5] << a9;
            if (v13 < 0xD)
            {
              v20 = result + 6;
              v21 = v12 + 6;
            }

            else
            {
              *(a2 + v15 + 6) = result[6] << a9;
              *(v18 + v15 - 8) = result[7] << a9;
              *(v16 + v15 - 8) = v12[6] << a9;
              *(v17 + v15 - 8) = v12[7] << a9;
              if (v13 < 0x11)
              {
                v20 = result + 8;
                v21 = v12 + 8;
              }

              else
              {
                *(a2 + v15 + 8) = result[8] << a9;
                *(v18 + v15 - 6) = result[9] << a9;
                *(v16 + v15 - 6) = v12[8] << a9;
                *(v17 + v15 - 6) = v12[9] << a9;
                if (v13 < 0x15)
                {
                  v20 = result + 10;
                  v21 = v12 + 10;
                }

                else
                {
                  *(a2 + v15 + 10) = result[10] << a9;
                  *(v18 + v15 - 4) = result[11] << a9;
                  *(v16 + v15 - 4) = v12[10] << a9;
                  *(v17 + v15 - 4) = v12[11] << a9;
                  if (v13 < 0x19)
                  {
                    v20 = result + 12;
                    v21 = v12 + 12;
                  }

                  else
                  {
                    *(a2 + v15 + 12) = result[12] << a9;
                    *(v18 + v15 - 2) = result[13] << a9;
                    *(v16 + v15 - 2) = v12[12] << a9;
                    *(v17 + v15 - 2) = v12[13] << a9;
                    if (v13 < 0x1D)
                    {
                      v20 = result + 14;
                      v21 = v12 + 14;
                    }

                    else
                    {
                      *(a2 + v15 + 14) = result[14] << a9;
                      *(v18 + v15) = result[15] << a9;
                      *(v16 + v15) = v12[14] << a9;
                      v20 = result + 16;
                      *(v17 + v15) = v12[15] << a9;
                      v21 = v12 + 16;
                    }
                  }
                }
              }
            }
          }
        }

        result = &v20[8 * v10];
        v12 = &v21[8 * v10];
        v22 = v14 > v19++;
        v15 += a8 & 0xFFFFFFFFFFFFFFE0;
      }

      while (v22);
    }

    else
    {
      v64 = 1;
      v65 = 8 * v10;
      do
      {
        *a2 = *result << a9;
        *a3 = result[1] << a9;
        *a4 = *v12 << a9;
        *a5 = v12[1] << a9;
        if (v13 < 5)
        {
          v66 = result + 2;
          v67 = v12 + 2;
        }

        else
        {
          a2[1] = result[2] << a9;
          a3[1] = result[3] << a9;
          a4[1] = v12[2] << a9;
          a5[1] = v12[3] << a9;
          if (v13 < 9)
          {
            v66 = result + 4;
            v67 = v12 + 4;
          }

          else
          {
            a2[2] = result[4] << a9;
            a3[2] = result[5] << a9;
            a4[2] = v12[4] << a9;
            a5[2] = v12[5] << a9;
            if (v13 < 0xD)
            {
              v66 = result + 6;
              v67 = v12 + 6;
            }

            else
            {
              a2[3] = result[6] << a9;
              a3[3] = result[7] << a9;
              a4[3] = v12[6] << a9;
              a5[3] = v12[7] << a9;
              if (v13 < 0x11)
              {
                v66 = result + 8;
                v67 = v12 + 8;
              }

              else
              {
                a2[4] = result[8] << a9;
                a3[4] = result[9] << a9;
                a4[4] = v12[8] << a9;
                a5[4] = v12[9] << a9;
                if (v13 < 0x15)
                {
                  v66 = result + 10;
                  v67 = v12 + 10;
                }

                else
                {
                  a2[5] = result[10] << a9;
                  a3[5] = result[11] << a9;
                  a4[5] = v12[10] << a9;
                  a5[5] = v12[11] << a9;
                  if (v13 < 0x19)
                  {
                    v66 = result + 12;
                    v67 = v12 + 12;
                  }

                  else
                  {
                    a2[6] = result[12] << a9;
                    a3[6] = result[13] << a9;
                    a4[6] = v12[12] << a9;
                    a5[6] = v12[13] << a9;
                    if (v13 < 0x1D)
                    {
                      v66 = result + 14;
                      v67 = v12 + 14;
                    }

                    else
                    {
                      a2[7] = result[14] << a9;
                      a3[7] = result[15] << a9;
                      v66 = result + 16;
                      a4[7] = v12[14] << a9;
                      a5[7] = v12[15] << a9;
                      v67 = v12 + 16;
                    }
                  }
                }
              }
            }
          }
        }

        result = &v66[v65];
        v12 = &v67[v65];
        v22 = v14 > v64++;
      }

      while (v22);
    }
  }

  return result;
}

unsigned __int16 *join_bayer_buffer(unsigned __int16 *result, const unsigned __int16 *a2, const unsigned __int16 *a3, const unsigned __int16 *a4, unsigned __int16 *a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unsigned int a10, BOOL a11, BOOL a12)
{
  if (a7 <= a6)
  {
    LODWORD(v12) = 0;
    v13 = a7 - a9;
    v14 = (a7 - a9) >> 4;
    v15 = (a7 - a9) & 0xF;
    v16 = a7 >> 1;
    v17 = a8 >> 1;
    v18 = a6 / a7;
    v19 = &a5[v17];
    v20 = 4 * v17;
    v21 = vnegq_s16(vdupq_n_s16(a10));
    do
    {
      v22 = a5;
      v23 = v19;
      v24 = result;
      v25 = a2;
      v26 = a3;
      v27 = a4;
      if (v13 >= 0x10)
      {
        v28 = 0;
        v29 = 0;
        v30 = 1;
        do
        {
          v34 = *&result[v29];
          v35 = *&a2[v29];
          v36 = *&a3[v29];
          v37 = *&a4[v29];
          if (a10)
          {
            v34 = vshlq_u16(v34, v21);
            v35 = vshlq_u16(v35, v21);
            v36 = vshlq_u16(v36, v21);
            v37 = vshlq_u16(v37, v21);
          }

          if (a12)
          {
            v34 = vorrq_s8(vshrq_n_u16(v34, 0xAuLL), v34);
            v35 = vorrq_s8(vshrq_n_u16(v35, 0xAuLL), v35);
            v36 = vorrq_s8(vshrq_n_u16(v36, 0xAuLL), v36);
            v37 = vorrq_s8(vshrq_n_u16(v37, 0xAuLL), v37);
          }

          v31 = &v19[v28];
          v32 = &a5[v28];
          *v32 = vzip1q_s16(v34, v35);
          v32[1] = vzip2q_s16(v34, v35);
          *v31 = vzip1q_s16(v36, v37);
          v31[1] = vzip2q_s16(v36, v37);
          v33 = v14 > v30++;
          v29 += 8;
          v28 += 16;
        }

        while (v33);
        v27 = &a4[v29];
        v26 = &a3[v29];
        v25 = &a2[v29];
        v24 = &result[v29];
        v23 = &v19[v28];
        v22 = &a5[v28];
      }

      if (!v15)
      {
        goto LABEL_31;
      }

      *v22 = *v24 >> a10;
      v22[1] = *v25 >> a10;
      *v23 = *v26 >> a10;
      v23[1] = *v27 >> a10;
      if (a12)
      {
        *v22 |= *v22 >> 10;
        v22[1] |= v22[1] >> 10;
        *v23 |= *v23 >> 10;
        v23[1] |= v23[1] >> 10;
        if (v15 >= 3)
        {
          v22[2] = v24[1] >> a10;
          v22[3] = v25[1] >> a10;
          v23[2] = v26[1] >> a10;
          v23[3] = v27[1] >> a10;
          v22[2] |= v22[2] >> 10;
          v22[3] |= v22[3] >> 10;
          v23[2] |= v23[2] >> 10;
          v23[3] |= v23[3] >> 10;
          if (v15 >= 5)
          {
            v22[4] = v24[2] >> a10;
            v22[5] = v25[2] >> a10;
            v23[4] = v26[2] >> a10;
            v23[5] = v27[2] >> a10;
            v22[4] |= v22[4] >> 10;
            v22[5] |= v22[5] >> 10;
            v23[4] |= v23[4] >> 10;
            v23[5] |= v23[5] >> 10;
            if (v15 >= 7)
            {
              v22[6] = v24[3] >> a10;
              v22[7] = v25[3] >> a10;
              v23[6] = v26[3] >> a10;
              v23[7] = v27[3] >> a10;
              v22[6] |= v22[6] >> 10;
              v22[7] |= v22[7] >> 10;
              v23[6] |= v23[6] >> 10;
              v23[7] |= v23[7] >> 10;
              if (v15 >= 9)
              {
                v22[8] = v24[4] >> a10;
                v22[9] = v25[4] >> a10;
                v23[8] = v26[4] >> a10;
                v23[9] = v27[4] >> a10;
                v22[8] |= v22[8] >> 10;
                v22[9] |= v22[9] >> 10;
                v23[8] |= v23[8] >> 10;
                v23[9] |= v23[9] >> 10;
                if (v15 >= 0xB)
                {
                  v22[10] = v24[5] >> a10;
                  v22[11] = v25[5] >> a10;
                  v23[10] = v26[5] >> a10;
                  v23[11] = v27[5] >> a10;
                  v22[10] |= v22[10] >> 10;
                  v22[11] |= v22[11] >> 10;
                  v23[10] |= v23[10] >> 10;
                  v23[11] |= v23[11] >> 10;
                  if (v15 >= 0xD)
                  {
                    v22[12] = v24[6] >> a10;
                    v22[13] = v25[6] >> a10;
                    v23[12] = v26[6] >> a10;
                    v23[13] = v27[6] >> a10;
                    v22[12] |= v22[12] >> 10;
                    v22[13] |= v22[13] >> 10;
                    v23[12] |= v23[12] >> 10;
                    v23[13] |= v23[13] >> 10;
                    if (v15 == 15)
                    {
                      v22[14] = v24[7] >> a10;
                      v22[15] = v25[7] >> a10;
                      v23[14] = v26[7] >> a10;
                      v23[15] = v27[7] >> a10;
                      v22[14] |= v22[14] >> 10;
                      v22[15] |= v22[15] >> 10;
                      v23[14] |= v23[14] >> 10;
                      v38 = v23[15] | (v23[15] >> 10);
LABEL_30:
                      v23[15] = v38;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else if (v15 >= 3)
      {
        v22[2] = v24[1] >> a10;
        v22[3] = v25[1] >> a10;
        v23[2] = v26[1] >> a10;
        v23[3] = v27[1] >> a10;
        if (v15 >= 5)
        {
          v22[4] = v24[2] >> a10;
          v22[5] = v25[2] >> a10;
          v23[4] = v26[2] >> a10;
          v23[5] = v27[2] >> a10;
          if (v15 >= 7)
          {
            v22[6] = v24[3] >> a10;
            v22[7] = v25[3] >> a10;
            v23[6] = v26[3] >> a10;
            v23[7] = v27[3] >> a10;
            if (v15 >= 9)
            {
              v22[8] = v24[4] >> a10;
              v22[9] = v25[4] >> a10;
              v23[8] = v26[4] >> a10;
              v23[9] = v27[4] >> a10;
              if (v15 >= 0xB)
              {
                v22[10] = v24[5] >> a10;
                v22[11] = v25[5] >> a10;
                v23[10] = v26[5] >> a10;
                v23[11] = v27[5] >> a10;
                if (v15 >= 0xD)
                {
                  v22[12] = v24[6] >> a10;
                  v22[13] = v25[6] >> a10;
                  v23[12] = v26[6] >> a10;
                  v23[13] = v27[6] >> a10;
                  if (v15 == 15)
                  {
                    v22[14] = v24[7] >> a10;
                    v22[15] = v25[7] >> a10;
                    v23[14] = v26[7] >> a10;
                    v38 = v27[7] >> a10;
                    goto LABEL_30;
                  }
                }
              }
            }
          }
        }
      }

LABEL_31:
      v39 = 2 * v16;
      result += v16;
      a2 += v16;
      a3 += v16;
      a4 += v16;
      if (a11)
      {
        result = (result + v39);
        a2 = (a2 + v39);
        a3 = (a3 + v39);
        a4 = (a4 + v39);
      }

      a5 = (a5 + v20);
      v19 = (v19 + v20);
      v12 = (v12 + 1);
    }

    while (v18 > v12);
  }

  return result;
}

unsigned __int8 *split_companded_bayer_buffer(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10)
{
  if (a6 / a7 >= 2)
  {
    v10 = a9 & 0x1F;
    v11 = (a6 / a7) >> 1;
    v12 = a7 - a9;
    v13 = a8 >> 4;
    if (a9 >= 0x20)
    {
      v25 = a9 >> 5;
      if ((a9 & 0x1F) != 0)
      {
        v26 = 0;
        LODWORD(v27) = 0;
        v28 = 16 * v13;
        v29 = result;
        do
        {
          v32 = 0;
          v33 = &v29[a7];
          v34 = 1;
          v35 = v26;
          do
          {
            v36 = *&result[v32];
            v37 = *&result[v32 + 16];
            v38 = *&v33[v32];
            v39 = *&v33[v32 + 16];
            *&a2[v35] = vuzp1q_s8(v36, v37);
            *&a3[v35] = vuzp2q_s8(v36, v37);
            *&a4[v35] = vuzp1q_s8(v38, v39);
            *&a5[v35] = vuzp2q_s8(v38, v39);
            v32 += 32;
            v35 += 16;
            v23 = v25 > v34++;
          }

          while (v23);
          v40 = &result[v32];
          a2[v35] = result[v32];
          a3[v35] = result[v32 + 1];
          v41 = &v33[v32];
          a4[v35] = v33[v32];
          a5[v35] = v33[v32 + 1];
          if (v10 <= 4)
          {
            v30 = v40 + 2;
            v31 = v41 + 2;
          }

          else
          {
            a2[v35 + 1] = v40[2];
            a3[v35 + 1] = v40[3];
            a4[v35 + 1] = v41[2];
            a5[v35 + 1] = v41[3];
            if (v10 < 9)
            {
              v30 = v40 + 4;
              v31 = v41 + 4;
            }

            else
            {
              a2[v35 + 2] = v40[4];
              v42 = &result[v32];
              a3[v35 + 2] = result[v32 + 5];
              a4[v35 + 2] = v41[4];
              v43 = &v33[v32];
              a5[v35 + 2] = v33[v32 + 5];
              if (v10 < 0xD)
              {
                v30 = v42 + 6;
                v31 = v43 + 6;
              }

              else
              {
                a2[v35 + 3] = v42[6];
                a3[v35 + 3] = v42[7];
                a4[v35 + 3] = v43[6];
                a5[v35 + 3] = v43[7];
                if (v10 < 0x11)
                {
                  v30 = v42 + 8;
                  v31 = v43 + 8;
                }

                else
                {
                  a2[v35 + 4] = v42[8];
                  v44 = &result[v32];
                  a3[v35 + 4] = result[v32 + 9];
                  a4[v35 + 4] = v43[8];
                  v45 = &v33[v32];
                  a5[v35 + 4] = v33[v32 + 9];
                  if (v10 < 0x15)
                  {
                    v30 = v44 + 10;
                    v31 = v45 + 10;
                  }

                  else
                  {
                    a2[v35 + 5] = v44[10];
                    a3[v35 + 5] = v44[11];
                    a4[v35 + 5] = v45[10];
                    a5[v35 + 5] = v45[11];
                    if (v10 < 0x19)
                    {
                      v30 = v44 + 12;
                      v31 = v45 + 12;
                    }

                    else
                    {
                      a2[v35 + 6] = v44[12];
                      v46 = &result[v32];
                      a3[v35 + 6] = v46[13];
                      a4[v35 + 6] = v45[12];
                      v47 = &v33[v32];
                      a5[v35 + 6] = v47[13];
                      if (v10 < 0x1D)
                      {
                        v30 = v46 + 14;
                        v31 = v47 + 14;
                      }

                      else
                      {
                        a2[v35 + 7] = v46[14];
                        a3[v35 + 7] = v46[15];
                        v30 = v46 + 16;
                        a4[v35 + 7] = v47[14];
                        a5[v35 + 7] = v47[15];
                        v31 = v47 + 16;
                      }
                    }
                  }
                }
              }
            }
          }

          v29 = &v31[v12];
          result = &v30[v12 + a7];
          v27 = (v27 + 1);
          v26 += v28;
        }

        while (v11 > v27);
      }

      else
      {
        v48 = 2 * a7 - a9;
        v49 = 16 * v13;
        v50 = result;
        do
        {
          v51 = 0;
          v52 = result;
          v53 = &v50[a7];
          result += v48;
          v50 += v48;
          do
          {
            v54 = 16 * v51;
            v55 = *v52;
            v56 = *(v52 + 1);
            v52 += 32;
            v57 = *v53;
            v58 = v53[1];
            v53 += 2;
            *&a2[v54] = vuzp1q_s8(v55, v56);
            *&a3[v54] = vuzp2q_s8(v55, v56);
            *&a4[v54] = vuzp1q_s8(v57, v58);
            *&a5[v54] = vuzp2q_s8(v57, v58);
            ++v51;
            result += 32;
            v50 += 32;
          }

          while (v25 > v51);
          v10 = (v10 + 1);
          a5 += v49;
          a4 += v49;
          a3 += v49;
          a2 += v49;
        }

        while (v11 > v10);
      }
    }

    else if ((a9 & 0x1F) != 0)
    {
      v14 = 0;
      v15 = a5 + 7;
      v16 = 16 * v13;
      v17 = a4 + 7;
      v18 = a3 + 7;
      v19 = 1;
      v20 = result;
      do
      {
        v24 = &v20[a7];
        a2[v14] = *result;
        a3[v14] = result[1];
        a4[v14] = *v24;
        a5[v14] = v24[1];
        if (v10 < 5)
        {
          v21 = result + 2;
          v22 = v24 + 2;
        }

        else
        {
          a2[v14 + 1] = result[2];
          v18[v14 - 6] = result[3];
          v17[v14 - 6] = v24[2];
          v15[v14 - 6] = v24[3];
          if (v10 < 9)
          {
            v21 = result + 4;
            v22 = v24 + 4;
          }

          else
          {
            a2[v14 + 2] = result[4];
            v18[v14 - 5] = result[5];
            v17[v14 - 5] = v24[4];
            v15[v14 - 5] = v24[5];
            if (v10 < 0xD)
            {
              v21 = result + 6;
              v22 = v24 + 6;
            }

            else
            {
              a2[v14 + 3] = result[6];
              v18[v14 - 4] = result[7];
              v17[v14 - 4] = v24[6];
              v15[v14 - 4] = v24[7];
              if (v10 < 0x11)
              {
                v21 = result + 8;
                v22 = v24 + 8;
              }

              else
              {
                a2[v14 + 4] = result[8];
                v18[v14 - 3] = result[9];
                v17[v14 - 3] = v24[8];
                v15[v14 - 3] = v24[9];
                if (v10 < 0x15)
                {
                  v21 = result + 10;
                  v22 = v24 + 10;
                }

                else
                {
                  a2[v14 + 5] = result[10];
                  v18[v14 - 2] = result[11];
                  v17[v14 - 2] = v24[10];
                  v15[v14 - 2] = v24[11];
                  if (v10 < 0x19)
                  {
                    v21 = result + 12;
                    v22 = v24 + 12;
                  }

                  else
                  {
                    a2[v14 + 6] = result[12];
                    v18[v14 - 1] = result[13];
                    v17[v14 - 1] = v24[12];
                    v15[v14 - 1] = v24[13];
                    if (v10 < 0x1D)
                    {
                      v21 = result + 14;
                      v22 = v24 + 14;
                    }

                    else
                    {
                      a2[v14 + 7] = result[14];
                      v18[v14] = result[15];
                      v21 = result + 16;
                      v17[v14] = v24[14];
                      v15[v14] = v24[15];
                      v22 = v24 + 16;
                    }
                  }
                }
              }
            }
          }
        }

        v20 = &v22[v12];
        result = &v21[v12 + a7];
        v14 += v16;
        v23 = v11 > v19++;
      }

      while (v23);
    }
  }

  return result;
}

uint64_t join_companded_bayer_buffer(uint64_t result, const unsigned __int8 *a2, const unsigned __int8 *a3, const unsigned __int8 *a4, int8x16_t *a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, BOOL a10)
{
  if (a6)
  {
    v10 = a7 & 0xF;
    v11 = a9 + a7;
    v12 = 2 * a8;
    if (a7 >= 0x10)
    {
      LODWORD(v24) = 0;
      do
      {
        v25 = 0;
        v26 = 1;
        v27 = a5;
        do
        {
          v28 = *(result + v25);
          v29 = *&a2[v25];
          v30 = (v27 + a8);
          v31 = *&a3[v25];
          v32 = *&a4[v25];
          *v27 = vzip1q_s8(v28, v29);
          v27[1] = vzip2q_s8(v28, v29);
          v27 += 2;
          *v30 = vzip1q_s8(v31, v32);
          v30[1] = vzip2q_s8(v31, v32);
          v33 = a7 >> 4 > v26++;
          v25 += 16;
        }

        while (v33);
        if ((a7 & 0xF) != 0)
        {
          v27->i8[0] = *(result + v25);
          v27->i8[1] = a2[v25];
          v34 = &v27->i8[a8];
          *v34 = a3[v25];
          v34[1] = a4[v25];
          if (v10 > 2)
          {
            v27->i8[2] = *(result + v25 + 1);
            v27->i8[3] = a2[v25 + 1];
            v34[2] = a3[v25 + 1];
            v34[3] = a4[v25 + 1];
            if (v10 >= 5)
            {
              v35 = &v27->i8[a8];
              v27->i8[4] = *(result + v25 + 2);
              v27->i8[5] = a2[v25 + 2];
              v35[4] = a3[v25 + 2];
              v35[5] = a4[v25 + 2];
              if (v10 >= 7)
              {
                v27->i8[6] = *(result + v25 + 3);
                v27->i8[7] = a2[v25 + 3];
                v35[6] = a3[v25 + 3];
                v35[7] = a4[v25 + 3];
                if (v10 >= 9)
                {
                  v36 = &v27->i8[a8];
                  v27->i8[8] = *(result + v25 + 4);
                  v27->i8[9] = a2[v25 + 4];
                  v36[8] = a3[v25 + 4];
                  v36[9] = a4[v25 + 4];
                  if (v10 >= 0xB)
                  {
                    v27->i8[10] = *(result + v25 + 5);
                    v27->i8[11] = a2[v25 + 5];
                    v36[10] = a3[v25 + 5];
                    v36[11] = a4[v25 + 5];
                    if (v10 >= 0xD)
                    {
                      v37 = &v27->i8[a8];
                      v27->i8[12] = *(result + v25 + 6);
                      v27->i8[13] = a2[v25 + 6];
                      v37[12] = a3[v25 + 6];
                      v37[13] = a4[v25 + 6];
                      if (v10 == 15)
                      {
                        v27->i8[14] = *(result + v25 + 7);
                        v27->i8[15] = a2[v25 + 7];
                        v37[14] = a3[v25 + 7];
                        v37[15] = a4[v25 + 7];
                      }
                    }
                  }
                }
              }
            }
          }
        }

        result += v11;
        a2 += v11;
        a3 += v11;
        a4 += v11;
        if (a10)
        {
          result += a7;
          a2 += a7;
          a3 += a7;
          a4 += a7;
        }

        a5 = (a5 + v12);
        v24 = (v24 + 1);
      }

      while (v24 < a6);
    }

    else if ((a7 & 0xF) != 0)
    {
      if (a10)
      {
        v13 = 0;
        v14 = &a5->u8[15];
        v15 = a4 + 7;
        v16 = a3 + 7;
        v17 = a2 + 7;
        v18 = 1;
        do
        {
          v20 = &v14[a8];
          *(v14 - 15) = *(result + v13);
          *(v14 - 14) = v17[v13 - 7];
          *(v20 - 15) = a3[v13];
          *(v20 - 14) = a4[v13];
          if (v10 >= 3)
          {
            *(v14 - 13) = *(result + v13 + 1);
            *(v14 - 12) = v17[v13 - 6];
            *(v20 - 13) = v16[v13 - 6];
            *(v20 - 12) = v15[v13 - 6];
            if (v10 >= 5)
            {
              v21 = &v14[a8];
              *(v14 - 11) = *(result + v13 + 2);
              *(v14 - 10) = v17[v13 - 5];
              *(v21 - 11) = v16[v13 - 5];
              *(v21 - 10) = v15[v13 - 5];
              if (v10 >= 7)
              {
                *(v14 - 9) = *(result + v13 + 3);
                *(v14 - 8) = v17[v13 - 4];
                *(v21 - 9) = v16[v13 - 4];
                *(v21 - 8) = v15[v13 - 4];
                if (v10 >= 9)
                {
                  v22 = &v14[a8];
                  *(v14 - 7) = *(result + v13 + 4);
                  *(v14 - 6) = v17[v13 - 3];
                  *(v22 - 7) = v16[v13 - 3];
                  *(v22 - 6) = v15[v13 - 3];
                  if (v10 >= 0xB)
                  {
                    *(v14 - 5) = *(result + v13 + 5);
                    *(v14 - 4) = v17[v13 - 2];
                    *(v22 - 5) = v16[v13 - 2];
                    *(v22 - 4) = v15[v13 - 2];
                    if (v10 >= 0xD)
                    {
                      v23 = &v14[a8];
                      *(v14 - 3) = *(result + v13 + 6);
                      *(v14 - 2) = v17[v13 - 1];
                      *(v23 - 3) = v16[v13 - 1];
                      *(v23 - 2) = v15[v13 - 1];
                      if (v10 == 15)
                      {
                        *(v14 - 1) = *(result + v13 + 7);
                        *v14 = v17[v13];
                        *(v23 - 1) = v16[v13];
                        *v23 = v15[v13];
                      }
                    }
                  }
                }
              }
            }
          }

          v19 = v18;
          v14 += v12;
          ++v18;
          v13 += a9 + 2 * a7;
        }

        while (v19 < a6);
      }

      else
      {
        v38 = 0;
        v39 = &a5->u8[15];
        v40 = a4 + 7;
        v41 = a3 + 7;
        v42 = a2 + 7;
        v43 = 1;
        do
        {
          v45 = &v39[a8];
          *(v39 - 15) = *(result + v38);
          *(v39 - 14) = v42[v38 - 7];
          *(v45 - 15) = a3[v38];
          *(v45 - 14) = a4[v38];
          if (v10 >= 3)
          {
            *(v39 - 13) = *(result + v38 + 1);
            *(v39 - 12) = v42[v38 - 6];
            *(v45 - 13) = v41[v38 - 6];
            *(v45 - 12) = v40[v38 - 6];
            if (v10 >= 5)
            {
              v46 = &v39[a8];
              *(v39 - 11) = *(result + v38 + 2);
              *(v39 - 10) = v42[v38 - 5];
              *(v46 - 11) = v41[v38 - 5];
              *(v46 - 10) = v40[v38 - 5];
              if (v10 >= 7)
              {
                *(v39 - 9) = *(result + v38 + 3);
                *(v39 - 8) = v42[v38 - 4];
                *(v46 - 9) = v41[v38 - 4];
                *(v46 - 8) = v40[v38 - 4];
                if (v10 >= 9)
                {
                  v47 = &v39[a8];
                  *(v39 - 7) = *(result + v38 + 4);
                  *(v39 - 6) = v42[v38 - 3];
                  *(v47 - 7) = v41[v38 - 3];
                  *(v47 - 6) = v40[v38 - 3];
                  if (v10 >= 0xB)
                  {
                    *(v39 - 5) = *(result + v38 + 5);
                    *(v39 - 4) = v42[v38 - 2];
                    *(v47 - 5) = v41[v38 - 2];
                    *(v47 - 4) = v40[v38 - 2];
                    if (v10 >= 0xD)
                    {
                      v48 = &v39[a8];
                      *(v39 - 3) = *(result + v38 + 6);
                      *(v39 - 2) = v42[v38 - 1];
                      *(v48 - 3) = v41[v38 - 1];
                      *(v48 - 2) = v40[v38 - 1];
                      if (v10 == 15)
                      {
                        *(v39 - 1) = *(result + v38 + 7);
                        *v39 = v42[v38];
                        *(v48 - 1) = v41[v38];
                        *v48 = v40[v38];
                      }
                    }
                  }
                }
              }
            }
          }

          v44 = v43;
          v39 += v12;
          ++v43;
          v38 += v11;
        }

        while (v44 < a6);
      }
    }
  }

  return result;
}

void sub_25791A0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIOWriterStereoPixelBufferStreamInput;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25791A3B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void VTCompressionOutputCallbackImpl(uint64_t a1, id *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a2[4];
  if (a5)
  {
    v10 = *(a2 + 1);
    v11 = a2[3];
    [v7 writeSampleBuffer:a5 pts:&v10 metadata:*a2 withStatus:a3 andFlags:a4];

    MEMORY[0x259C68350](a2, 0x1080C4028F97B41);
  }

  else
  {
    v9 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v10) = 67109120;
      DWORD1(v10) = a3;
      _os_log_impl(&dword_257883000, v9, OS_LOG_TYPE_ERROR, "No sample buffer received. VTCompressionSession failed with status: %d", &v10, 8u);
    }

    [v7 skipFrameWithStatus:a3 andFlags:a4];
  }
}

void sub_25791B4B8(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x259C68350](v3, 0x10A0C40E4A639F8);

  _Unwind_Resume(a1);
}

void sub_25791B7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MOVStreamVideoEncoderInterface;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25791DA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIOCompandedRawBayerFrameProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25791DCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIOTimeRangeMetadataTrackReader;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25791F504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIOL016Raw14FrameProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25791FB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIOWriterPixelBufferStreamInput;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_257921AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v11;

  _Unwind_Resume(a1);
}

__CFDictionary *create_attachments_from_nclc(int a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = Mutable;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          v5 = MEMORY[0x277CC4C18];
          v6 = MEMORY[0x277CC4CD8];
LABEL_16:
          v8 = MEMORY[0x277CC4D18];
LABEL_17:
          v9 = *v8;
          v10 = *v6;
          if (*v5)
          {
            CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4C00], *v5);
          }

          if (v10)
          {
            goto LABEL_20;
          }

          goto LABEL_21;
        }

        goto LABEL_31;
      }

      v5 = MEMORY[0x277CC4C30];
    }

    else
    {
      v5 = MEMORY[0x277CC4C20];
    }

    v6 = MEMORY[0x277CC4CD8];
    v8 = MEMORY[0x277CC4D28];
    goto LABEL_17;
  }

  if (a1 <= 4)
  {
    v5 = MEMORY[0x277CC4C18];
    if (a1 == 3)
    {
      v6 = MEMORY[0x277CC4CD0];
    }

    else
    {
      v6 = MEMORY[0x277CC4CF0];
    }

    goto LABEL_16;
  }

  if (a1 != 5)
  {
    if (a1 == 6)
    {
      v7 = MEMORY[0x277CC4CE0];
      goto LABEL_29;
    }

LABEL_31:
    create_attachments_from_nclc();
  }

  if ((create_attachments_from_nclc(NCLC)::warn_once & 1) == 0)
  {
    v12 = *MEMORY[0x277D85E08];
    if (std::__is_posix_terminal(*MEMORY[0x277D85E08], v3))
    {
      fflush(v12);
    }

    *&v13 = 0;
    std::__print::__vprint_nonunicode[abi:ne200100]<void>(v12, "**** WARNING ****: CoreVideo reads back corrupt information, rdar://118255656\n", 78, &v13, 0);
    create_attachments_from_nclc(NCLC)::warn_once = 1;
  }

  v7 = MEMORY[0x277CC4CD8];
LABEL_29:
  v9 = 0;
  v10 = *v7;
  if (*v7)
  {
LABEL_20:
    CFDictionaryAddValue(v4, *MEMORY[0x277CC4CC0], v10);
  }

LABEL_21:
  if (v9)
  {
    CFDictionaryAddValue(v4, *MEMORY[0x277CC4D10], v9);
  }

  return v4;
}

double matrix_coefficients_from_nclc(unsigned int a1, double *a2, void *a3)
{
  if (a1 >= 7)
  {
    matrix_coefficients_from_nclc();
  }

  result = dbl_25792F8A0[a1];
  v4 = qword_25792F8D8[a1];
  *a2 = result;
  *a3 = v4;
  return result;
}

__n128 std::__print::__vprint_unicode[abi:ne200100]<void>(FILE *a1, __sFILE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *a4;
  v11 = *(a4 + 16);
  if (std::__is_posix_terminal(a1, a2))
  {
    fflush(a1);
  }

  v12 = v10;
  v13 = v11;
  std::__print::__vprint_nonunicode[abi:ne200100]<void>(a1, a2, a3, &v12, a5);
  return result;
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  switch(__clz(**a1 ^ 0xFF))
  {
    case 0x18u:
      *a1 = v1 + 1;
      v2 = *v1;
      break;
    case 0x1Au:
      if (a1[1] - v1 < 2)
      {
        goto LABEL_31;
      }

      v9 = v1 + 1;
      if ((v1[1] & 0xC0) != 0x80)
      {
        goto LABEL_31;
      }

      *a1 = v9;
      v10 = *v1 & 0x1F;
      *a1 = v1 + 2;
      if (v10 < 2)
      {
        v2 = 2147549181;
      }

      else
      {
        v2 = *v9 & 0x3F | (v10 << 6);
      }

      break;
    case 0x1Bu:
      if (a1[1] - v1 < 3)
      {
        goto LABEL_31;
      }

      v3 = 1;
      do
      {
        v4 = v1[v3] & 0xC0;
      }

      while (v4 == 128 && v3++ != 2);
      if (v4 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v6 = *v1 & 0xF;
      *a1 = v1 + 2;
      v7 = (v6 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      if (v7 >= 0x800)
      {
        v8 = v7 | v1[2] & 0x3F;
        if ((v7 & 0xF800) == 0xD800)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v8;
        }
      }

      break;
    case 0x1Cu:
      if (a1[1] - v1 < 4)
      {
        goto LABEL_31;
      }

      v11 = 1;
      do
      {
        v12 = v1[v11] & 0xC0;
      }

      while (v12 == 128 && v11++ != 3);
      if (v12 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v14 = *v1 & 7;
      *a1 = v1 + 2;
      v15 = (v14 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      v16 = v1[2];
      *a1 = v1 + 4;
      if (v15 >= 0x400)
      {
        v17 = v1[3] & 0x3F | ((v15 | v16 & 0x3F) << 6);
        if (v15 >> 10 >= 0x11)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v17;
        }
      }

      break;
    default:
LABEL_31:
      v2 = 2147549181;
      *a1 = v1 + 1;
      break;
  }

  return v2;
}

uint64_t std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v17[0] = a1;
  v17[1] = a2;
  v8 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v17);
  std::__unicode::__extended_grapheme_cluster_break::__extended_grapheme_cluster_break[abi:ne200100](&v18, v8 & 0x7FFFFFFF);
  if (a1 == a2)
  {
    return 0;
  }

  v9 = 0;
  do
  {
    v10 = std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](v17);
    v12 = v11;
    v13 = std::__width_estimation_table::__estimated_width[abi:ne200100](v10);
    v14 = v9 + v13;
    if (!a4 && v14 > a3)
    {
      break;
    }

    v15 = v12 == a2 || v14 > a3;
    v9 += v13;
  }

  while (!v15);
  return v9;
}

uint64_t std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](unsigned __int8 **a1, unsigned int *a2, _BYTE *a3)
{
  v5 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](a1) & 0x7FFFFFFF;
  v6 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v5);
  v7 = v6;
  result = std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](a2, v5, v6);
  *a2 = v5;
  *a3 = v7;
  return result;
}

void anonymous namespace::ImageBufferProvider::getCroppedImageBuffers<unsigned char>()
{
  __assert_rtn("makeCroppedImageBufferView", "ImageBuffer.h", 31, "y0 + newHeight <= src.height");
}

{
  __assert_rtn("makeCroppedImageBufferView", "ImageBuffer.h", 30, "x0 + newWidth <= src.width");
}

{
  __assert_rtn("makeCroppedImageBufferView", "ImageBuffer.h", 29, "sample_size*src.width <= src.rowBytes");
}

void RasterizedBlocks::render_420<PixelFormatTraits<875704438u>>()
{
  __assert_rtn("render_420", "RasterizedBlocks_renderer.cpp", 262, "lumaBuffer.width == chromaBuffer.width*2");
}

{
  __assert_rtn("render_420", "RasterizedBlocks_renderer.cpp", 263, "lumaBuffer.height == chromaBuffer.height*2");
}

void RasterizedBlocks::render_422<PixelFormatTraits<875704950u>>()
{
  __assert_rtn("render_422", "RasterizedBlocks_renderer.cpp", 273, "lumaBuffer.width == chromaBuffer.width*2");
}

{
  __assert_rtn("render_422", "RasterizedBlocks_renderer.cpp", 274, "lumaBuffer.height == chromaBuffer.height");
}

void RasterizedBlocks::render_444<PixelFormatTraits<875836534u>>()
{
  __assert_rtn("render_444", "RasterizedBlocks_renderer.cpp", 284, "lumaBuffer.width == chromaBuffer.width");
}

{
  __assert_rtn("render_444", "RasterizedBlocks_renderer.cpp", 285, "lumaBuffer.height == chromaBuffer.height");
}

void BarsStepsRamps::render_4xx<PixelFormatTraits<875704438u>>()
{
  __assert_rtn("render_4xx", "BarsStepsRamps_renderer.cpp", 250, "lumaBuffer.width == chromaBuffer.width * align_x");
}

{
  __assert_rtn("render_4xx", "BarsStepsRamps_renderer.cpp", 251, "lumaBuffer.height == chromaBuffer.height * align_y");
}

void render_ColorBars_420<PixelFormatTraits<875704438u>>()
{
  __assert_rtn("render_ColorBars_420", "ColorBars_renderer.cpp", 87, "lumaBuffer.width == chromaBuffer.width*2");
}

{
  __assert_rtn("render_ColorBars_420", "ColorBars_renderer.cpp", 88, "lumaBuffer.height == chromaBuffer.height*2");
}

void render_ColorBars_422<PixelFormatTraits<875704950u>>()
{
  __assert_rtn("render_ColorBars_422", "ColorBars_renderer.cpp", 98, "lumaBuffer.width == chromaBuffer.width*2");
}

{
  __assert_rtn("render_ColorBars_422", "ColorBars_renderer.cpp", 99, "lumaBuffer.height == chromaBuffer.height");
}

void render_ColorBars_444<PixelFormatTraits<875836534u>>()
{
  __assert_rtn("render_ColorBars_444", "ColorBars_renderer.cpp", 109, "lumaBuffer.width == chromaBuffer.width");
}

{
  __assert_rtn("render_ColorBars_444", "ColorBars_renderer.cpp", 110, "lumaBuffer.height == chromaBuffer.height");
}

void SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>()
{
  __assert_rtn("render_4xx", "SMPTE_RP219_renderer.cpp", 385, "lumaBuffer.width == chromaBuffer.width * align_x");
}

{
  __assert_rtn("render_4xx", "SMPTE_RP219_renderer.cpp", 386, "lumaBuffer.height == chromaBuffer.height * align_y");
}

void ColorSequence::render_4xx<PixelFormatTraits<875704438u>>()
{
  __assert_rtn("render_4xx", "ColorSequence_renderer.cpp", 224, "lumaBuffer.width == chromaBuffer.width * align_x");
}

{
  __assert_rtn("render_4xx", "ColorSequence_renderer.cpp", 225, "lumaBuffer.height == chromaBuffer.height * align_y");
}

void RecursiveQuads::render_420<PixelFormatTraits<875704438u>>()
{
  __assert_rtn("render_420", "RecursiveQuads_renderer.cpp", 223, "lumaBuffer.width == chromaBuffer.width*2");
}

{
  __assert_rtn("render_420", "RecursiveQuads_renderer.cpp", 224, "lumaBuffer.height == chromaBuffer.height*2");
}

void RecursiveQuads::render_422<PixelFormatTraits<875704950u>>()
{
  __assert_rtn("render_422", "RecursiveQuads_renderer.cpp", 235, "lumaBuffer.width == chromaBuffer.width*2");
}

{
  __assert_rtn("render_422", "RecursiveQuads_renderer.cpp", 236, "lumaBuffer.height == chromaBuffer.height");
}

void RecursiveQuads::render_444<PixelFormatTraits<875836534u>>()
{
  __assert_rtn("render_444", "RecursiveQuads_renderer.cpp", 247, "lumaBuffer.width == chromaBuffer.width");
}

{
  __assert_rtn("render_444", "RecursiveQuads_renderer.cpp", 248, "lumaBuffer.height == chromaBuffer.height");
}

void ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>()
{
  __assert_rtn("render_4xx", "ITU_R_BT2111_renderer.cpp", 477, "lumaBuffer.width == chromaBuffer.width * align_x");
}

{
  __assert_rtn("render_4xx", "ITU_R_BT2111_renderer.cpp", 478, "lumaBuffer.height == chromaBuffer.height * align_y");
}

void Ramp::Ramp(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_0(a1);
  if (v3)
  {
    *(v1 + 40) = v3;
    operator delete(v3);
  }

  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;

    operator delete(v4);
  }
}

void Ramp::render_420<PixelFormatTraits<875704438u>>()
{
  __assert_rtn("render_420", "Ramp_renderer.cpp", 395, "lumaBuffer.width == chromaBuffer.width*2");
}

{
  __assert_rtn("render_420", "Ramp_renderer.cpp", 396, "lumaBuffer.height == chromaBuffer.height*2");
}

void Ramp::render_422<PixelFormatTraits<875704950u>>()
{
  __assert_rtn("render_422", "Ramp_renderer.cpp", 406, "lumaBuffer.width == chromaBuffer.width*2");
}

{
  __assert_rtn("render_422", "Ramp_renderer.cpp", 407, "lumaBuffer.height == chromaBuffer.height");
}

void Ramp::render_444<PixelFormatTraits<875836534u>>()
{
  __assert_rtn("render_444", "Ramp_renderer.cpp", 417, "lumaBuffer.width == chromaBuffer.width");
}

{
  __assert_rtn("render_444", "Ramp_renderer.cpp", 418, "lumaBuffer.height == chromaBuffer.height");
}

void ZonePlate::render_420<PixelFormatTraits<875704438u>>()
{
  __assert_rtn("render_420", "ZonePlate_renderer.cpp", 338, "lumaBuffer.width == chromaBuffer.width*2");
}

{
  __assert_rtn("render_420", "ZonePlate_renderer.cpp", 339, "lumaBuffer.height == chromaBuffer.height*2");
}

void ZonePlate::render_422<PixelFormatTraits<875704950u>>()
{
  __assert_rtn("render_422", "ZonePlate_renderer.cpp", 349, "lumaBuffer.width == chromaBuffer.width*2");
}

{
  __assert_rtn("render_422", "ZonePlate_renderer.cpp", 350, "lumaBuffer.height == chromaBuffer.height");
}

void ZonePlate::render_444<PixelFormatTraits<875836534u>>()
{
  __assert_rtn("render_444", "ZonePlate_renderer.cpp", 360, "lumaBuffer.width == chromaBuffer.width");
}

{
  __assert_rtn("render_444", "ZonePlate_renderer.cpp", 361, "lumaBuffer.height == chromaBuffer.height");
}

void timerEnd(double a1)
{
  if (__cxa_guard_acquire(&qword_27F8EBFE8))
  {
    qword_27F8EBFE0 = *&a1;
    __cxa_guard_release(&qword_27F8EBFE8);
  }
}

{
  if (__cxa_guard_acquire(&qword_27F8EBFF8))
  {
    qword_27F8EBFF0 = *&a1;
    __cxa_guard_release(&qword_27F8EBFF8);
  }
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2821F7E98](this, a2, a3, a4);
}

{
  return MEMORY[0x2821F7EB0](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2821F7EA0]();
}

{
  return MEMORY[0x2821F7EA8]();
}

{
  return MEMORY[0x2821F7EB8]();
}

{
  return MEMORY[0x2821F7EC0]();
}

{
  return MEMORY[0x2821F7ED0]();
}

{
  return MEMORY[0x2821F7ED8]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

uint64_t VCPCompressionSessionCreate_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VideoProcessing))
  {
    dlopenHelper_VideoProcessing(a1);
  }

  return MEMORY[0x2821DF648]();
}

uint64_t VCPCompressionSessionEncodeFrame_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VideoProcessing))
  {
    dlopenHelper_VideoProcessing(a1);
  }

  return MEMORY[0x2821DF650]();
}

uint64_t VCPCompressionSessionInvalidate_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VideoProcessing))
  {
    dlopenHelper_VideoProcessing(a1);
  }

  return MEMORY[0x2821DF658]();
}

uint64_t VCPCompressionSessionSetProperty_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VideoProcessing))
  {
    dlopenHelper_VideoProcessing(a1);
  }

  return MEMORY[0x2821DF660]();
}

uint64_t VCPDecompressionSessionCreate_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VideoProcessing))
  {
    dlopenHelper_VideoProcessing(a1);
  }

  return MEMORY[0x2821DF668]();
}

uint64_t VCPDecompressionSessionDecodeFrame_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VideoProcessing))
  {
    dlopenHelper_VideoProcessing(a1);
  }

  return MEMORY[0x2821DF670]();
}

uint64_t VCPDecompressionSessionFinishDelayedFrames_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VideoProcessing))
  {
    dlopenHelper_VideoProcessing(a1);
  }

  return MEMORY[0x2821DF678]();
}

uint64_t VCPDecompressionSessionInvalidate_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VideoProcessing))
  {
    dlopenHelper_VideoProcessing(a1);
  }

  return MEMORY[0x2821DF680]();
}

uint64_t VCPDecompressionSessionSetProperty_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VideoProcessing))
  {
    dlopenHelper_VideoProcessing(a1);
  }

  return MEMORY[0x2821DF688]();
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_VideoProcessing(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/VideoProcessing.framework/VideoProcessing", 0);
  atomic_store(1u, &dlopenHelperFlag_VideoProcessing);
  return a1;
}