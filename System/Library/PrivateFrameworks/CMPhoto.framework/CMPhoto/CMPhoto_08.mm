uint64_t _pixelBufferCopyForMonochromeAndMonochromeWithAlpha(__CVBuffer *a1, __CVBuffer *a2)
{
  if (!a1)
  {
    _pixelBufferCopyForMonochromeAndMonochromeWithAlpha_cold_3(&v55);
    return v55;
  }

  if (!a2)
  {
    _pixelBufferCopyForMonochromeAndMonochromeWithAlpha_cold_2(&v55);
    return v55;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v53 = 0;
  v54 = 0;
  CMPhotoGetPixelBufferCLAP(a1, 0, 0, &v53, &v54);
  v51 = 0;
  v52 = 0;
  CMPhotoGetPixelBufferCLAP(a2, 0, 0, &v51, &v52);
  if (v53 != v51 || v54 != v52)
  {
    _pixelBufferCopyForMonochromeAndMonochromeWithAlpha_cold_1(&v55);
    return v55;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  if (PixelFormatType <= 1278226741)
  {
    if (PixelFormatType != 843264310)
    {
      if (PixelFormatType == 1278226488 && (v5 == 1279340600 || v5 == 843264056))
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        v8 = CVPixelBufferGetBytesPerRow(a2);
        v9 = CVPixelBufferGetBaseAddress(a2);
        v10 = v54;
        if (v54)
        {
          v11 = 0;
          v12 = v53;
          do
          {
            if (v12)
            {
              v13 = 0;
              v14 = &v9[v11 * v8];
              do
              {
                *v14 = BaseAddress[v13];
                v14[1] = -1;
                v14 += 2;
                ++v13;
                v12 = v53;
              }

              while (v53 > v13);
              v10 = v54;
            }

            ++v11;
            BaseAddress += BytesPerRow;
          }

          while (v10 > v11);
        }

        goto LABEL_52;
      }

      goto LABEL_39;
    }

LABEL_20:
    if (v5 == 1278226742 || v5 == 1278226736)
    {
      v15 = CVPixelBufferGetBytesPerRow(a1);
      v16 = CVPixelBufferGetBaseAddress(a1);
      v17 = CVPixelBufferGetBytesPerRow(a2);
      v18 = CVPixelBufferGetBaseAddress(a2);
      BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(v5);
      v20 = v54;
      if (v54)
      {
        v21 = 0;
        v22 = v53;
        do
        {
          if (v22)
          {
            v23 = &v18[v21 * v17];
            v24 = v22;
            v25 = &v16[v21 * v15];
            do
            {
              v26 = *v25;
              v25 += 4;
              *v23 = v26 & (-1 << (16 - BitDepthForPixelFormat));
              v23 += 2;
              --v24;
            }

            while (v24);
          }

          ++v21;
        }

        while (v21 != v20);
      }

      goto LABEL_52;
    }

    goto LABEL_39;
  }

  if (PixelFormatType == 1278226742)
  {
    if (v5 == 1279340854 || v5 == 843264310)
    {
      v27 = CVPixelBufferGetBytesPerRow(a1);
      v28 = CVPixelBufferGetBaseAddress(a1);
      v29 = CVPixelBufferGetBytesPerRow(a2);
      v30 = CVPixelBufferGetBaseAddress(a2);
      v31 = v54;
      if (v54)
      {
        v32 = 0;
        v33 = v53;
        do
        {
          if (v33)
          {
            v34 = &v30[v32 * v29];
            v35 = v33;
            v36 = &v28[v32 * v27];
            do
            {
              v37 = *v36;
              v36 += 2;
              *v34 = v37;
              *(v34 + 1) = -1;
              v34 += 4;
              --v35;
            }

            while (v35);
          }

          ++v32;
        }

        while (v32 != v31);
      }

      goto LABEL_52;
    }

    goto LABEL_39;
  }

  if (PixelFormatType == 1279340854)
  {
    goto LABEL_20;
  }

LABEL_39:
  v38 = PixelFormatType == 1279340600 || PixelFormatType == 843264056;
  if (!v38 || v5 != 1278226488)
  {
    fig_log_get_emitter();
    v49 = FigSignalErrorAtGM();
    goto LABEL_54;
  }

  v39 = CVPixelBufferGetBytesPerRow(a1);
  v40 = CVPixelBufferGetBaseAddress(a1);
  v41 = CVPixelBufferGetBytesPerRow(a2);
  v42 = CVPixelBufferGetBaseAddress(a2);
  v43 = v54;
  if (v54)
  {
    v44 = 0;
    v45 = v53;
    do
    {
      if (v45)
      {
        v46 = 0;
        v47 = &v40[v44 * v39];
        do
        {
          v48 = *v47;
          v47 += 2;
          v42[v46++] = v48;
          v45 = v53;
        }

        while (v53 > v46);
        v43 = v54;
      }

      ++v44;
      v42 += v41;
    }

    while (v43 > v44);
  }

LABEL_52:
  CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(a1, a2);
  CMPhotoRemoveAndPropagateAlphaFromSourceBuffer(a1, a2);
  v49 = 0;
LABEL_54:
  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return v49;
}

__int16 _convert_one_Color_to_YCC_half@<H0>(int a1@<W0>, _WORD *a2@<X1>, __int16 *a3@<X2>)
{
  _H6 = *a3;
  __asm { FCVT            S4, H6 }

  _H0 = a3[1];
  __asm { FCVT            S1, H0 }

  _H3 = a3[2];
  __asm { FCVT            S2, H3 }

  if (a1 == 2)
  {
    _S0 = ((_S1 * 0.7152) + (_S4 * 0.2126)) + (_S2 * 0.0722);
    v14 = ((_S1 * -0.38543) + (_S4 * -0.11457)) + (_S2 * 0.5);
    __asm { FCVT            D2, H3 }

    v16 = ((_S1 * -0.45415) + (_S4 * 0.5)) + _D2 * -0.045847;
  }

  else
  {
    _S0 = ((_S1 * 0.587) + (_S4 * 0.299)) + (_S2 * 0.114);
    __asm { FCVT            D3, H3 }

    v14 = ((_S1 * -0.33126) + (_S4 * -0.16874)) + _D3 * 0.5;
    __asm { FCVT            D3, H6 }

    v16 = (_S1 * -0.41869) + _D3 * 0.5 + (_S2 * -0.081312);
  }

  v19 = v16;
  if (_S0 < 0.0)
  {
    _S0 = 0.0;
  }

  if (_S0 > 1.0)
  {
    _S0 = 1.0;
  }

  __asm { FCVT            H0, S0 }

  *a2 = _H0;
  _D0 = v14;
  if (v14 < -0.5)
  {
    _D0 = -0.5;
  }

  if (_D0 >= 0.5)
  {
    _D0 = 0.5;
  }

  __asm { FCVT            H0, D0 }

  a2[1] = _H0;
  _D0 = v19;
  if (v19 < -0.5)
  {
    _D0 = -0.5;
  }

  if (_D0 >= 0.5)
  {
    _D0 = 0.5;
  }

  __asm { FCVT            H0, D0 }

  a2[2] = result;
  return result;
}

void _framePacked2Linear(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5, int a6, char a7)
{
  if (a4)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = (a3 << a7) / 3uLL;
    v25 = a3 << a7;
    v14 = (a3 << a7) % 3u;
    v15 = a4;
    v23 = a2 + 4;
    v24 = 2 * (v14 - 1);
    do
    {
      if (v25 >= 3)
      {
        v17 = (v23 + v11);
        v18 = v13;
        v19 = (a1 + v10);
        do
        {
          v20 = *v19++;
          *v17 = (v20 >> 14) & 0xFFC0;
          *(v17 - 1) = (v20 >> 4) & 0xFFC0;
          *(v17 - 2) = v20 << 6;
          v17 += 3;
          --v18;
        }

        while (v18);
        v16 = v13;
        if (v14)
        {
LABEL_9:
          if (v14 >= 1)
          {
            bzero(__src, v24 + 2);
          }

          v21 = *(a1 + (v12 * a5) + 4 * v16);
          __src[2] = (v21 >> 14) & 0xFFC0;
          __src[1] = (v21 >> 4) & 0xFFC0;
          __src[0] = v21 << 6;
          if (v14 >= 1)
          {
            memcpy((a2 + 6 * v16 + (v12 * a6)), __src, v24 + 2);
          }
        }
      }

      else
      {
        v16 = 0;
        if (v14)
        {
          goto LABEL_9;
        }
      }

      ++v12;
      v11 += a6;
      v10 += a5;
    }

    while (v12 != v15);
  }
}

uint64_t _frameLinear2Packed(uint64_t result, uint64_t a2, int a3, unsigned int a4, int a5, int a6, char a7)
{
  if (a4)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = (a3 << a7);
    v11 = a4;
    do
    {
      if (v10 >= 3)
      {
        v13 = (result + 4 + v8);
        v14 = v10 / 3;
        v15 = (a2 + v7);
        do
        {
          *v15++ = (*v13 << 14) & 0x3FF00000 | (((*(v13 - 1) >> 6) & 0x3FF) << 10) | (*(v13 - 2) >> 6);
          v13 += 3;
          --v14;
        }

        while (v14);
        v12 = v10 / 3;
      }

      else
      {
        v12 = 0;
      }

      if (v10 != 3 * (v10 / 3))
      {
        v20 = 0;
        v19 = 0;
        if ((v10 % 3) < 1)
        {
          v18 = 0;
        }

        else
        {
          v16 = &v19;
          v17 = 3 * (v10 / 3);
          do
          {
            *v16 = *(result + (v9 * a5) + 2 * v17);
            v16 = (v16 + 2);
            ++v17;
          }

          while (v10 != v17);
          v18 = (v20 << 14) & 0x3FF00000 | (((HIWORD(v19) >> 6) & 0x3FF) << 10) | (v19 >> 6);
        }

        *(a2 + (v9 * a6) + 4 * v12) = v18;
      }

      ++v9;
      v8 += a5;
      v7 += a6;
    }

    while (v9 != v11);
  }

  return result;
}

uint64_t CMPhotoVTPixelRotationWorkaround(__CVBuffer *a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __CVBuffer **a8)
{
  v11 = a1;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  if (!v11)
  {
    CMPhotoVTPixelRotationWorkaround_cold_12(&v40);
    return v40;
  }

  if (!a8)
  {
    CMPhotoVTPixelRotationWorkaround_cold_11(&v40);
    return v40;
  }

  v13 = PixelFormatType;
  if (CMPhotoPixelBufferHasCLAP(v11))
  {
    CMPhotoVTPixelRotationWorkaround_cold_1(&v40);
    return v40;
  }

  v14 = *a8;
  CMPhotoGetPixelBufferCLAP(v11, 0, 0, &v38, &v39);
  CMPhotoGetPixelBufferCLAP(v14, 0, 0, &v36, &v37);
  if (a2 <= 179)
  {
    if (a2)
    {
      if (a2 == 90 && a3 + 1 <= 2)
      {
        if (v38 != v37)
        {
          CMPhotoVTPixelRotationWorkaround_cold_8(&v40);
          return v40;
        }

        if (v39 != v36)
        {
          CMPhotoVTPixelRotationWorkaround_cold_9(&v40);
          return v40;
        }

        goto LABEL_28;
      }
    }

    else if (a3 <= 1)
    {
      if (v38 != v36)
      {
        CMPhotoVTPixelRotationWorkaround_cold_2(&v40);
        return v40;
      }

      if (v39 != v37)
      {
        CMPhotoVTPixelRotationWorkaround_cold_3(&v40);
        return v40;
      }

      goto LABEL_28;
    }

LABEL_54:
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  if (a2 == 180)
  {
    if (a3 != -1)
    {
      goto LABEL_54;
    }

    if (v38 != v36)
    {
      CMPhotoVTPixelRotationWorkaround_cold_4(&v40);
      return v40;
    }

    if (v39 != v37)
    {
      CMPhotoVTPixelRotationWorkaround_cold_5(&v40);
      return v40;
    }
  }

  else
  {
    if (a2 != 270 || a3 != -1)
    {
      goto LABEL_54;
    }

    if (v38 != v37)
    {
      CMPhotoVTPixelRotationWorkaround_cold_6(&v40);
      return v40;
    }

    if (v39 != v36)
    {
      CMPhotoVTPixelRotationWorkaround_cold_7(&v40);
      return v40;
    }
  }

LABEL_28:
  CVPixelBufferLockBaseAddress(v11, 0);
  CVPixelBufferLockBaseAddress(v14, 0);
  if (v13 == 1651798066 || v13 == 1650946098)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(v11);
    v16 = CVPixelBufferGetBytesPerRow(v14);
    BaseAddress = CVPixelBufferGetBaseAddress(v11);
    v18 = CVPixelBufferGetBaseAddress(v14);
    v19 = v39 - 1;
    if (v39 < 0x801 || v39 + 7 == (v19 & 7))
    {
      if (v39 + 3 != (v19 & 3) && v39 > 0x400)
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 4;
    }

    v22 = dispatch_queue_create("com.apple.coremedia.CMPhotoVTPixelRotationWorkaround", MEMORY[0x1E69E96A8]);
    if (v22)
    {
      v35 = v11;
      for (i = 0; i != v20; ++i)
      {
        v24 = malloc_type_calloc(1uLL, 0x48uLL, 0x1010040482D2A89uLL);
        if (!v24)
        {
          v31 = 4294950305;
          v11 = v35;
          goto LABEL_71;
        }

        v26 = v38;
        v25 = v39;
        v27 = v39 / v20;
        *v24 = BytesPerRow;
        v24[1] = v16;
        v24[2] = BaseAddress;
        v24[3] = v18;
        v24[4] = v27 * i;
        v24[5] = v27 * i + v27;
        *(v24 + 12) = a2;
        *(v24 + 13) = a3;
        v24[7] = v26;
        v24[8] = v25;
        dispatch_async_f(v22, v24, _dispatch_bgp2_btp2_rotationWorkaround);
      }

      dispatch_barrier_sync_f(v22, 0, _dispatch_empty);
      if (v14)
      {
        v11 = v35;
        VersatileBayerPattern = CMPhotoPixelBufferGetVersatileBayerPattern(v35);
        if (VersatileBayerPattern == -1)
        {
          if (CVPixelBufferGetPixelFormatType(v35) != 1650946098)
          {
            goto LABEL_67;
          }

          VersatileBayerPattern = 3;
        }

        else if (VersatileBayerPattern > 3)
        {
          if (VersatileBayerPattern == 4)
          {
            v29 = 4;
            goto LABEL_70;
          }

LABEL_67:
          v31 = 0;
          goto LABEL_71;
        }

        if (a2 > 179)
        {
          if (a2 == 180)
          {
            v30 = 2;
          }

          else
          {
            v30 = 3;
          }
        }

        else
        {
          v30 = a2 != 0;
        }

        if (VersatileBayerPattern > 1)
        {
          if (VersatileBayerPattern == 3)
          {
            v32 = v30 ^ 2;
          }

          else
          {
            v32 = (v30 + 1) & 3;
          }
        }

        else
        {
          v32 = (v30 - 1) & 3;
          if (!VersatileBayerPattern)
          {
            v32 = v30;
          }
        }

        v29 = dword_1A5AB4D40[v32];
        if (a3 != -1)
        {
          if (a3 == 1)
          {
            v33 = &unk_1A5AB4D50;
          }

          else
          {
            if (a3)
            {
              goto LABEL_67;
            }

            v33 = &unk_1A5AB4D60;
          }

          v29 = v33[v29];
        }

LABEL_70:
        v31 = CMPhotoPixelBufferSetVersatileBayerPattern(v14, v29);
      }

      else
      {
        v31 = 4294950306;
        v11 = v35;
      }
    }

    else
    {
      v31 = 4294950305;
    }
  }

  else
  {
    CMPhotoVTPixelRotationWorkaround_cold_10(&v40);
    v22 = 0;
    v31 = v40;
  }

LABEL_71:
  CVPixelBufferUnlockBaseAddress(v11, 0);
  CVPixelBufferUnlockBaseAddress(v14, 0);
  if (v22)
  {
    dispatch_release(v22);
  }

  return v31;
}

void _dispatch_bgp2_btp2_rotationWorkaround(_DWORD *a1)
{
  v2 = a1[12];
  if (v2 > 179)
  {
    if (v2 == 180)
    {
      v50 = *(a1 + 4);
      v51 = *(a1 + 5);
      if (v50 < v51)
      {
        v52 = *(a1 + 7);
        v53 = -2 - v50;
        v54 = ~v50;
        v55 = v50 + 1;
        do
        {
          if (v52)
          {
            v56 = 0;
            v57 = 0;
            v58 = *(a1 + 2) + 1;
            v59 = v58 + *a1 * v50;
            v60 = v58 + *a1 * v55;
            v61 = -2;
            do
            {
              v62 = (v59 + (v57 >> 1) + v57);
              v63 = *(v62 - 1);
              v64 = *v62;
              LODWORD(v62) = v62[1];
              v65 = (v60 + (v57 >> 1) + v57);
              v66 = *(v65 - 1);
              v67 = *v65;
              LODWORD(v65) = v65[1];
              v68 = *(a1 + 8);
              v69 = *(a1 + 1);
              v70 = v52 + v61;
              v71 = v52 + v69 * (v53 + v68) + ((v52 + v61) >> 1);
              *(v71 + *(a1 + 3) + v56 - 2) = v67;
              *(v71 + *(a1 + 3) + v56 - 1) = v66;
              *(*(a1 + 3) + v71 + v56) = (v65 >> 4) | (16 * v65);
              v72 = v52 + v69 * (v54 + v68);
              *(*(a1 + 3) + v72 + (v70 >> 1) + v56 - 2) = v64;
              *(*(a1 + 3) + v72 + (v70 >> 1) + v56 - 1) = v63;
              *(*(a1 + 3) + v72 + (v70 >> 1) + v56) = (v62 >> 4) | (16 * v62);
              v57 += 2;
              v52 = *(a1 + 7);
              v56 -= 2;
              v61 -= 2;
            }

            while (v57 < v52);
            v51 = *(a1 + 5);
          }

          v50 += 2;
          v53 -= 2;
          v54 -= 2;
          v55 += 2;
        }

        while (v50 < v51);
      }
    }

    else
    {
      if (v2 != 270)
      {
        goto LABEL_68;
      }

      v22 = *(a1 + 4);
      v23 = *(a1 + 5);
      if (v22 < v23)
      {
        v24 = *(a1 + 7);
        v25 = v22 + 1;
        do
        {
          if (v24)
          {
            v26 = 0;
            v27 = *(a1 + 2) + 1;
            v28 = v27 + *a1 * v22;
            v29 = v27 + *a1 * v25;
            do
            {
              v30 = (v28 + (v26 >> 1) + v26);
              v31 = *(v30 - 1);
              v32 = *v30;
              v33 = (v29 + (v26 >> 1) + v26);
              LOBYTE(v30) = v30[1];
              v34 = *(v33 - 1);
              v35 = *v33;
              LODWORD(v33) = v33[1];
              v36 = *(a1 + 1);
              v37 = *(a1 + 8) - v22 - 2 + ((*(a1 + 8) - v22 - 2) >> 1) + v36 * v26;
              *(*(a1 + 3) + v37) = v34;
              *(*(a1 + 3) + v37 + 1) = v31;
              *(*(a1 + 3) + v37 + 2) = v33 & 0xF | (16 * v30);
              *(*(a1 + 3) + v37 + v36) = v35;
              *(*(a1 + 3) + v37 + v36 + 1) = v32;
              *(*(a1 + 3) + v37 + v36 + 2) = v30 & 0xF0 | (v33 >> 4);
              v26 += 2;
              v24 = *(a1 + 7);
            }

            while (v26 < v24);
            v23 = *(a1 + 5);
          }

          v22 += 2;
          v25 += 2;
        }

        while (v22 < v23);
      }
    }
  }

  else if (v2)
  {
    if (v2 != 90)
    {
      goto LABEL_68;
    }

    v3 = a1[13];
    if (v3 == 1)
    {
      v99 = *(a1 + 4);
      v100 = *(a1 + 5);
      if (v99 < v100)
      {
        v101 = *(a1 + 7);
        v102 = v99 + 1;
        do
        {
          if (v101)
          {
            v103 = 0;
            v104 = *(a1 + 2) + 1;
            v105 = v104 + *a1 * v99;
            v106 = v104 + *a1 * v102;
            v107 = -2;
            do
            {
              v108 = (v105 + (v103 >> 1) + v103);
              v109 = *(v108 - 1);
              v110 = *v108;
              LOBYTE(v108) = v108[1];
              v111 = (v106 + (v103 >> 1) + v103);
              v112 = *(v111 - 1);
              v113 = *v111;
              LODWORD(v111) = v111[1];
              v114 = *(a1 + 1);
              v115 = *(a1 + 8) - v99 - 2 + ((*(a1 + 8) - v99 - 2) >> 1) + v114 * (v101 + v107);
              *(*(a1 + 3) + v115) = v113;
              *(*(a1 + 3) + v115 + 1) = v110;
              *(*(a1 + 3) + v115 + 2) = v108 & 0xF0 | (v111 >> 4);
              *(*(a1 + 3) + v115 + v114) = v112;
              *(*(a1 + 3) + v115 + v114 + 1) = v109;
              *(*(a1 + 3) + v115 + v114 + 2) = v111 & 0xF | (16 * v108);
              v103 += 2;
              v101 = *(a1 + 7);
              v107 -= 2;
            }

            while (v103 < v101);
            v100 = *(a1 + 5);
          }

          v99 += 2;
          v102 += 2;
        }

        while (v99 < v100);
      }
    }

    else
    {
      if (v3)
      {
        if (v3 == -1)
        {
          v4 = *(a1 + 4);
          v5 = *(a1 + 5);
          if (v4 < v5)
          {
            v6 = *(a1 + 7);
            v7 = v4 + 1;
            do
            {
              if (v6)
              {
                v8 = 0;
                v9 = *(a1 + 2) + 1;
                v10 = v9 + *a1 * v4;
                v11 = v9 + *a1 * v7;
                v12 = -2;
                do
                {
                  v13 = (v10 + (v8 >> 1) + v8);
                  v14 = *(v13 - 1);
                  v15 = *v13;
                  LODWORD(v13) = v13[1];
                  v16 = (v11 + (v8 >> 1) + v8);
                  v17 = *(v16 - 1);
                  v18 = *v16;
                  LOBYTE(v16) = v16[1];
                  v19 = *(a1 + 1);
                  v20 = v4 + (v4 >> 1) + v19 * (v6 + v12);
                  *(*(a1 + 3) + v20) = v15;
                  v21 = v20 + v19;
                  *(*(a1 + 3) + v20 + 1) = v18;
                  *(*(a1 + 3) + v20 + 2) = v16 & 0xF0 | (v13 >> 4);
                  *(*(a1 + 3) + v21) = v14;
                  *(*(a1 + 3) + v21 + 1) = v17;
                  *(*(a1 + 3) + v21 + 2) = v13 & 0xF | (16 * v16);
                  v8 += 2;
                  v6 = *(a1 + 7);
                  v12 -= 2;
                }

                while (v8 < v6);
                v5 = *(a1 + 5);
              }

              v4 += 2;
              v7 += 2;
            }

            while (v4 < v5);
          }

          goto LABEL_69;
        }

LABEL_68:
        fig_log_get_emitter();
        FigSignalErrorAtGM();
        goto LABEL_69;
      }

      v83 = *(a1 + 4);
      v84 = *(a1 + 5);
      if (v83 < v84)
      {
        v85 = *(a1 + 7);
        v86 = v83 + 1;
        do
        {
          if (v85)
          {
            v87 = 0;
            v88 = *(a1 + 2) + 1;
            v89 = v88 + *a1 * v83;
            v90 = v88 + *a1 * v86;
            do
            {
              v91 = (v89 + (v87 >> 1) + v87);
              v92 = *(v91 - 1);
              v93 = *v91;
              LODWORD(v91) = v91[1];
              v94 = (v90 + (v87 >> 1) + v87);
              v95 = *(v94 - 1);
              v96 = *v94;
              LOBYTE(v94) = v94[1];
              v97 = *(a1 + 1);
              v98 = v83 + (v83 >> 1) + v97 * v87;
              *(*(a1 + 3) + v98) = v92;
              *(*(a1 + 3) + v98 + 1) = v95;
              *(*(a1 + 3) + v98 + 2) = v91 & 0xF | (16 * v94);
              *(*(a1 + 3) + v98 + v97) = v93;
              *(*(a1 + 3) + v98 + v97 + 1) = v96;
              *(*(a1 + 3) + v98 + v97 + 2) = v94 & 0xF0 | (v91 >> 4);
              v87 += 2;
              v85 = *(a1 + 7);
            }

            while (v87 < v85);
            v84 = *(a1 + 5);
          }

          v83 += 2;
          v86 += 2;
        }

        while (v83 < v84);
      }
    }
  }

  else
  {
    v38 = a1[13];
    if (v38)
    {
      if (v38 != 1)
      {
        goto LABEL_68;
      }

      v39 = *(a1 + 4);
      v40 = *(a1 + 5);
      if (v39 < v40)
      {
        v41 = *(a1 + 7);
        do
        {
          if (v41)
          {
            v42 = 0;
            v43 = 0;
            v44 = *(a1 + 2) + *a1 * v39 + 1;
            v45 = -2;
            do
            {
              v46 = (v44 + (v43 >> 1) + v43);
              v47 = *(v46 - 1);
              v48 = *v46;
              LODWORD(v46) = v46[1];
              v49 = v41 + ((v41 + v45) >> 1) + v39 * *(a1 + 1);
              *(*(a1 + 3) + v42 + v49 - 2) = v48;
              *(*(a1 + 3) + v42 + v49 - 1) = v47;
              *(*(a1 + 3) + v49 + v42) = (v46 >> 4) | (16 * v46);
              v43 += 2;
              v41 = *(a1 + 7);
              v42 -= 2;
              v45 -= 2;
            }

            while (v43 < v41);
            v40 = *(a1 + 5);
          }

          ++v39;
        }

        while (v39 < v40);
      }
    }

    else
    {
      v73 = *(a1 + 4);
      v74 = *(a1 + 5);
      if (v73 < v74)
      {
        v75 = *(a1 + 7);
        do
        {
          if (v75)
          {
            v76 = 0;
            v77 = *(a1 + 2) + *a1 * v73;
            do
            {
              v78 = v76 + (v76 >> 1);
              v79 = *(v77 + v78);
              v80 = *(v77 + v78 + 1);
              v81 = *(v77 + v78 + 2);
              v82 = v78 + (*(a1 + 8) + ~v73) * *(a1 + 1);
              *(*(a1 + 3) + v82) = v79;
              *(*(a1 + 3) + v82 + 1) = v80;
              *(*(a1 + 3) + v82 + 2) = v81;
              v76 += 2;
              v75 = *(a1 + 7);
            }

            while (v76 < v75);
            v74 = *(a1 + 5);
          }

          ++v73;
        }

        while (v73 < v74);
      }
    }
  }

LABEL_69:

  free(a1);
}

uint64_t __CMPhotoCodecSessionPoolCreate_block_invoke(uint64_t a1)
{
  CMPhotoCodecSessionPoolFlush(*(a1 + 32), 3);
  result = FigSimpleMutexLock();
  if (!result)
  {
    [*(*(a1 + 32) + 176) unregisterBackgroundNotificationForContext:?];
    [*(*(a1 + 32) + 176) releaseAssertionForContext:?];

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t CMPhotoCodecSessionPoolClass_Finalize(uint64_t a1)
{
  v2 = *(a1 + 144);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CMPhotoCodecSessionPoolClass_Finalize_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v2, block);
  if (*(a1 + 136))
  {
    dispatch_semaphore_wait(*(a1 + 168), 0xFFFFFFFFFFFFFFFFLL);
    v3 = *(a1 + 136);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 136) = 0;
    }
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 176);
  if (v6)
  {
    [v6 unregisterBackgroundNotificationForContext:a1];
    [*(a1 + 176) releaseAssertionForContext:a1];
    [*(a1 + 176) waitForPendingNotifications];
  }

  CodecSessionPool_Destroy((a1 + 48));
  CodecSessionPool_Destroy((a1 + 88));
  result = FigSimpleMutexDestroy();
  *(a1 + 24) = 0;
  return result;
}

void CodecSessionPool_DestroyApplier_NotifyAndDestroyWaitingClients(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 8));

  WaitingClient_Destroy(a1);
}

void CodecSessionPool_DestroyGatewayForSession(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  v5 = CFDictionaryGetValue(*(a1 + 16), Value[4]);
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    v10.location = 0;
    v10.length = Count;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v10, a2);
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      CFArrayRemoveValueAtIndex(v6, FirstIndexOfValue);
    }

    if (Count == 1)
    {
      CFDictionaryRemoveValue(*(a1 + 16), Value[4]);
    }
  }

  CFDictionaryRemoveValue(*(a1 + 24), a2);

  CodecGateway_Destroy(Value);
}

CFIndex CodecSessionPool_GetIdleSessionCountApplier(int a1, CFArrayRef theArray, void *a3)
{
  if (theArray)
  {
    result = CFArrayGetCount(theArray);
  }

  else
  {
    result = 0;
  }

  *a3 += result;
  return result;
}

void CodecSessionPool_DequeueWaitingClient(uint64_t a1, const void *a2)
{
  v7.length = CFArrayGetCount(*(a1 + 32));
  v7.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a1 + 32), v7, a2);
  v5 = *(a1 + 32);

  CFArrayRemoveValueAtIndex(v5, FirstIndexOfValue);
}

uint64_t VTTileCompressionOutputCallback_Gateway(uint64_t a1)
{
  if (!a1)
  {
    return VTTileCompressionOutputCallback_Gateway_cold_1();
  }

  if (*a1 || (v1 = *(a1 + 16)) == 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v2 = *(a1 + 8);

    return v1(v2);
  }
}

uint64_t VTCompressionOutputCallback_Gateway(uint64_t a1)
{
  if (!a1)
  {
    return VTCompressionOutputCallback_Gateway_cold_1();
  }

  if (*a1 || (v1 = *(a1 + 16)) == 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v2 = *(a1 + 8);

    return v1(v2);
  }
}

uint64_t VTDecompressionOutputCallback_Gateway(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return VTDecompressionOutputCallback_Gateway_cold_1();
  }

  if (*a1 == 1 && (v7 = *(a1 + 16)) != 0)
  {
    v8 = *(a1 + 8);
    v13 = *a6;
    v14 = *(a6 + 2);
    v11 = *a7;
    v12 = *(a7 + 2);
    return v7(v8, a2, a3, a4, a5, &v13, &v11);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

CFIndex CodecSessionPool_PurgeIdleSessionFromLargestGroupApplier(int a1, CFArrayRef theArray, CFIndex *a3)
{
  result = CFArrayGetCount(theArray);
  if (result > *a3)
  {
    *a3 = result;
    a3[1] = theArray;
  }

  return result;
}

uint64_t _downScaleWithCI(void *a1, float a2, float a3)
{
  v4 = fmin(a2, 1.0);
  v5 = fmin(a3, 1.0);
  if (v4 != 1.0 || v5 != 1.0)
  {
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformMakeScale(&v18, v4, v5);
    v17 = v18;
    [objc_msgSend(a1 imageByApplyingTransform:{&v17), "extent"}];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [a1 imageByClampingToExtent];
    v17 = v18;
    return [objc_msgSend(v15 imageByApplyingTransform:&v17 highQualityDownsample:{1), "imageByCroppingToRect:", v8, v10, v12, v14}];
  }

  return a1;
}

Class initCIContext()
{
  if (CoreImageLibrary_sOnce != -1)
  {
    initCIContext_cold_1();
  }

  result = objc_getClass("CIContext");
  classCIContext = result;
  _MergedGlobals = CIContextFunction;
  return result;
}

void *__CoreImageLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreImage.framework/CoreImage", 2);
  CoreImageLibrary_sLib = result;
  return result;
}

Class initCIImage()
{
  if (CoreImageLibrary_sOnce != -1)
  {
    initCIContext_cold_1();
  }

  result = objc_getClass("CIImage");
  classCIImage = result;
  off_1ED6F9C30 = CIImageFunction;
  return result;
}

Class initCIRenderDestination()
{
  if (CoreImageLibrary_sOnce != -1)
  {
    initCIContext_cold_1();
  }

  result = objc_getClass("CIRenderDestination");
  classCIRenderDestination = result;
  off_1ED6F9C38 = CIRenderDestinationFunction;
  return result;
}

uint64_t initValkCIFormatRf()
{
  if (CoreImageLibrary_sOnce != -1)
  {
    initCIContext_cold_1();
  }

  v0 = dlsym(CoreImageLibrary_sLib, "kCIFormatRf");
  if (v0)
  {
    result = *v0;
    constantValkCIFormatRf = result;
  }

  else
  {
    result = constantValkCIFormatRf;
  }

  off_1ED6F9C40[0] = kCIFormatRfFunction;
  return result;
}

Class initCIVector()
{
  if (CoreImageLibrary_sOnce != -1)
  {
    initCIContext_cold_1();
  }

  result = objc_getClass("CIVector");
  classCIVector = result;
  off_1ED6F9C48[0] = CIVectorFunction;
  return result;
}

uint64_t initValkCIInputExtentKey()
{
  if (CoreImageLibrary_sOnce != -1)
  {
    initCIContext_cold_1();
  }

  v0 = dlsym(CoreImageLibrary_sLib, "kCIInputExtentKey");
  if (v0)
  {
    result = *v0;
    constantValkCIInputExtentKey = result;
  }

  else
  {
    result = constantValkCIInputExtentKey;
  }

  off_1ED6F9C50[0] = kCIInputExtentKeyFunction;
  return result;
}

uint64_t initValkCIContextWorkingColorSpace()
{
  if (CoreImageLibrary_sOnce != -1)
  {
    initCIContext_cold_1();
  }

  v0 = dlsym(CoreImageLibrary_sLib, "kCIContextWorkingColorSpace");
  if (v0)
  {
    result = *v0;
    constantValkCIContextWorkingColorSpace = result;
  }

  else
  {
    result = constantValkCIContextWorkingColorSpace;
  }

  off_1ED6F9C58[0] = kCIContextWorkingColorSpaceFunction;
  return result;
}

uint64_t initValkCIFormatRGBAf()
{
  if (CoreImageLibrary_sOnce != -1)
  {
    initCIContext_cold_1();
  }

  v0 = dlsym(CoreImageLibrary_sLib, "kCIFormatRGBAf");
  if (v0)
  {
    result = *v0;
    constantValkCIFormatRGBAf = result;
  }

  else
  {
    result = constantValkCIFormatRGBAf;
  }

  off_1ED6F9C60 = kCIFormatRGBAfFunction;
  return result;
}

uint64_t CMPhotoConvolveRowHorizontally_F_to_U8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v7 = result;
    v8 = 4 * a2;
    v9 = result + 16;
    v10 = a2;
    v11 = -4 * a2;
    v39[2] = a4;
    v40 = a5;
    v39[0] = a2;
    v39[1] = a3;
    do
    {
      result = MEMORY[0x1EEE9AC00](v39);
      v22 = (v39 - v21);
      v24 = (v18 >> 31) & ~v23;
      v25 = *v7;
      if (*v7 + v18 <= v13)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v7 + v18 - v13;
      }

      if (v24 | v26)
      {
        v43 = v17;
        v44 = v16;
        v45 = v20;
        v46 = result;
        v47 = v19;
        v42 = v26;
        v27 = (v24 * v12);
        v41 = (v25 - v24 - v26);
        memcpy(&v22[v27], (v14 + 4 * (v24 + v18) * v12), v8 * v41);
        v12 = v39[0];
        v28 = v27 - 1;
        if (v27 >= 1)
        {
          v29 = LODWORD(v39[0]) + LODWORD(v39[0]) * v24 - 1;
          do
          {
            v22[v28--] = v22[v29--];
            --v27;
          }

          while (v27);
        }

        v30 = (v42 * v12);
        if (v30 < 1)
        {
          v15 = v40;
          result = v46;
          v19 = v47;
          v16 = v44;
          v20 = v45;
          v17 = v43;
        }

        else
        {
          v15 = v40;
          v31 = &v22[(v41 + v24) * v12];
          result = v46;
          v19 = v47;
          v16 = v44;
          v20 = v45;
          v17 = v43;
          do
          {
            *v31 = *&v31[v11];
            v31 += 4;
            --v30;
          }

          while (v30);
        }
      }

      else
      {
        v22 = (v14 + 4 * v18 * v12);
      }

      if (v12 >= 1)
      {
        v32 = 0;
        do
        {
          v33 = *v7;
          if (v33)
          {
            v34 = *(v9 + 8 * ((v20 & ((v16 - v17 * v20) >> 31)) + v16 - v17 * v20));
            v35 = 0.0;
            v36 = v22;
            do
            {
              v37 = *v34++;
              v35 = v35 + (*v36 * v37);
              v36 = (v36 + v8);
              --v33;
            }

            while (v33);
          }

          else
          {
            v35 = 0.0;
          }

          v38 = llroundf(v35);
          if (v38 >= 255)
          {
            v38 = 255;
          }

          *a6++ = v38 & ~(v38 >> 31);
          ++v32;
          ++v22;
        }

        while (v32 != v10);
      }
    }

    while (v19 + 1 != v15);
  }

  return result;
}

void VideoQualityControllerClass_dispose(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    free(v1);
  }
}

uint64_t _getCodecForBrand(int a1, int *a2)
{
  result = 0;
  v4 = 1752589105;
  if (a1 <= 1635150181)
  {
    if (a1 > 1298745408)
    {
      if ((a1 - 1298745409) <= 4 && ((1 << (a1 - 65)) & 0x13) != 0)
      {
        goto LABEL_28;
      }

      if (a1 == 1635148649)
      {
        goto LABEL_26;
      }

      v5 = 1635148659;
LABEL_25:
      if (a1 != v5)
      {
        return result;
      }

LABEL_26:
      v7 = 25393;
      goto LABEL_27;
    }

    if ((a1 - 1296118081) >= 2)
    {
      v5 = 1298743618;
      goto LABEL_25;
    }

LABEL_16:
    v7 = 12337;
LABEL_27:
    v4 = v7 | 0x61760000;
    goto LABEL_28;
  }

  if (a1 > 1751479906)
  {
    if (a1 > 1785750886)
    {
      if (a1 != 1785750887 && a1 != 1785751411)
      {
        return result;
      }

      v4 = 1785750887;
LABEL_28:
      *a2 = v4;
      return 1;
    }

    if (a1 == 1751479907)
    {
      goto LABEL_28;
    }

    v6 = 30328;
LABEL_19:
    if (a1 != (v6 | 0x68650000))
    {
      return result;
    }

    goto LABEL_28;
  }

  if (a1 > 1751476578)
  {
    if (a1 == 1751476579)
    {
      goto LABEL_28;
    }

    v6 = 27000;
    goto LABEL_19;
  }

  if (a1 == 1635150182 || a1 == 1635150195)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t CMPhotoInterchangeCompactPack(uint64_t a1, uint8x8_t *a2)
{
  WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
  HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
  BytesPerTileDataOfPlane = IOSurfaceGetBytesPerTileDataOfPlane();
  CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
  v6 = (IOSurfaceGetCompressedTileHeightOfPlane() * CompressedTileWidthOfPlane) >> 5;
  BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v9 = malloc_type_malloc(2 * HeightInCompressedTilesOfPlane * WidthInCompressedTilesOfPlane, 0x1000040BDFB0063uLL);
  v8 = HeightInCompressedTilesOfPlane * WidthInCompressedTilesOfPlane;
  v10 = v6 * HeightInCompressedTilesOfPlane * WidthInCompressedTilesOfPlane;
  v11 = 32 - __clz(WidthInCompressedTilesOfPlane - 1);
  if (WidthInCompressedTilesOfPlane >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = 32 - __clz(HeightInCompressedTilesOfPlane - 1);
  if (HeightInCompressedTilesOfPlane >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v9;
  v60 = BytesPerTileDataOfPlane;
  if (v6 == 8)
  {
    if (HeightInCompressedTilesOfPlane)
    {
      v57 = 8 * v8;
      v63 = HeightInCompressedTilesOfPlane;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = vdupq_n_s16((BytesPerTileDataOfPlane >> 3) - 1);
      v20 = a2;
      v21 = v9;
      v64 = v19;
      do
      {
        v61 = v18;
        if (WidthInCompressedTilesOfPlane)
        {
          v22 = 0;
          v23 = 1;
          do
          {
            v24 = _agxXBiasedTwiddle(v22, v16, v12, v14);
            v25.i64[0] = 0x1000100010001;
            v25.i64[1] = 0x1000100010001;
            v26 = *(BaseAddressOfCompressedTileHeaderRegionOfPlane + 8 * v24);
            v27 = vmovl_u8(v26);
            v27.i16[0] = vaddvq_s16(vbicq_s8(vaddq_s16(vandq_s8(v64, v27), v25), vceqzq_s16(v27)));
            *v21++ = v27.i16[0];
            v17 += v27.u16[0];
            *v20++ = v26;
            v22 = v23;
            v28 = WidthInCompressedTilesOfPlane > v23++;
          }

          while (v28);
        }

        v16 = (v61 + 1);
        v18 = v61 + 1;
      }

      while (v63 > v16);
      goto LABEL_23;
    }

LABEL_29:
    v17 = 0;
    v47 = 0;
    goto LABEL_30;
  }

  if (!HeightInCompressedTilesOfPlane)
  {
    goto LABEL_29;
  }

  v57 = v6 * v8;
  v63 = HeightInCompressedTilesOfPlane;
  v29 = 0;
  v17 = 0;
  v30 = 0;
  v31 = vdupq_n_s16((BytesPerTileDataOfPlane >> 5) - 1);
  v32 = a2;
  v33 = v9;
  v65 = v31;
  do
  {
    v62 = v30;
    if (WidthInCompressedTilesOfPlane)
    {
      v34 = 0;
      v35 = 1;
      do
      {
        v36 = _agxXBiasedTwiddle(v34, v29, v12, v14);
        v37.i64[0] = 0x1000100010001;
        v37.i64[1] = 0x1000100010001;
        v38 = BaseAddressOfCompressedTileHeaderRegionOfPlane + 32 * v36;
        v39 = *v38;
        v40 = *(v38 + 16);
        v41 = vmovl_u8(*v40.i8);
        v42 = vmovl_u8(*v38);
        v43 = vmovl_high_u8(v40);
        v44 = vmovl_high_u8(*v38);
        v41.i16[0] = vaddvq_s16(vaddq_s16(vaddq_s16(vbicq_s8(vaddq_s16(vandq_s8(v65, v42), v37), vceqzq_s16(v42)), vbicq_s8(vaddq_s16(vandq_s8(v65, v41), v37), vceqzq_s16(v41))), vaddq_s16(vbicq_s8(vaddq_s16(vandq_s8(v65, v44), v37), vceqzq_s16(v44)), vbicq_s8(vaddq_s16(vandq_s8(v65, v43), v37), vceqzq_s16(v43)))));
        *v33++ = v41.i16[0];
        v17 += v41.u16[0];
        v45 = v32 + 4;
        *v32->i8 = v39;
        *v32[2].i8 = v40;
        v34 = v35;
        v28 = WidthInCompressedTilesOfPlane > v35++;
        v32 += 4;
      }

      while (v28);
    }

    else
    {
      v45 = v32;
    }

    v29 = (v62 + 1);
    v32 = v45;
    v30 = v62 + 1;
  }

  while (v63 > v29);
LABEL_23:
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = a2 + v57;
  v9 = v15;
  do
  {
    v66 = v48;
    if (WidthInCompressedTilesOfPlane)
    {
      v50 = 0;
      v51 = v46 * WidthInCompressedTilesOfPlane;
      v52 = 1;
      do
      {
        v53 = v9[v50 + v51];
        memcpy(v49, (BaseAddressOfCompressedTileDataRegionOfPlane + (v50 + v51) * v60), v53);
        v9 = v15;
        v49 += v53;
        v47 += v53;
        v50 = v52;
        v28 = WidthInCompressedTilesOfPlane > v52++;
      }

      while (v28);
    }

    v46 = (v66 + 1);
    v48 = v66 + 1;
  }

  while (v63 > v46);
  v10 = v57;
LABEL_30:
  if (v47 == v17)
  {
    v54 = v47;
  }

  else
  {
    v54 = 0;
  }

  if (v47 == v17)
  {
    v55 = v10;
  }

  else
  {
    v55 = 0;
  }

  free(v9);
  return v55 + v54;
}

uint64_t CMPhotoInterchangeCompactUnpack(uint64_t a1, uint8x8_t *a2)
{
  WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
  HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
  BytesPerTileDataOfPlane = IOSurfaceGetBytesPerTileDataOfPlane();
  CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
  v6 = (IOSurfaceGetCompressedTileHeightOfPlane() * CompressedTileWidthOfPlane) >> 5;
  BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v9 = malloc_type_malloc(2 * HeightInCompressedTilesOfPlane * WidthInCompressedTilesOfPlane, 0x1000040BDFB0063uLL);
  v8 = HeightInCompressedTilesOfPlane * WidthInCompressedTilesOfPlane;
  v10 = v6 * HeightInCompressedTilesOfPlane * WidthInCompressedTilesOfPlane;
  v11 = 32 - __clz(WidthInCompressedTilesOfPlane - 1);
  if (WidthInCompressedTilesOfPlane >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = 32 - __clz(HeightInCompressedTilesOfPlane - 1);
  if (HeightInCompressedTilesOfPlane >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v9;
  v60 = BytesPerTileDataOfPlane;
  if (v6 == 8)
  {
    if (HeightInCompressedTilesOfPlane)
    {
      v57 = 8 * v8;
      v63 = HeightInCompressedTilesOfPlane;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = vdupq_n_s16((BytesPerTileDataOfPlane >> 3) - 1);
      v20 = v9;
      v21 = a2;
      v64 = v19;
      do
      {
        v61 = v18;
        if (WidthInCompressedTilesOfPlane)
        {
          v22 = 0;
          v23 = 1;
          do
          {
            v24 = _agxXBiasedTwiddle(v22, v16, v12, v14);
            v25.i64[0] = 0x1000100010001;
            v25.i64[1] = 0x1000100010001;
            v26 = *v21++;
            v27 = vmovl_u8(v26);
            v27.i16[0] = vaddvq_s16(vbicq_s8(vaddq_s16(vandq_s8(v64, v27), v25), vceqzq_s16(v27)));
            *v20++ = v27.i16[0];
            v17 += v27.u16[0];
            *(BaseAddressOfCompressedTileHeaderRegionOfPlane + 8 * v24) = v26;
            v22 = v23;
            v28 = WidthInCompressedTilesOfPlane > v23++;
          }

          while (v28);
        }

        v16 = (v61 + 1);
        v18 = v61 + 1;
      }

      while (v63 > v16);
      goto LABEL_23;
    }

LABEL_29:
    v17 = 0;
    v47 = 0;
    goto LABEL_30;
  }

  if (!HeightInCompressedTilesOfPlane)
  {
    goto LABEL_29;
  }

  v57 = v6 * v8;
  v63 = HeightInCompressedTilesOfPlane;
  v29 = 0;
  v17 = 0;
  v30 = 0;
  v31 = vdupq_n_s16((BytesPerTileDataOfPlane >> 5) - 1);
  v32 = v9;
  v33 = a2;
  v65 = v31;
  do
  {
    v62 = v30;
    if (WidthInCompressedTilesOfPlane)
    {
      v34 = 0;
      v35 = 1;
      do
      {
        v36 = _agxXBiasedTwiddle(v34, v29, v12, v14);
        v37.i64[0] = 0x1000100010001;
        v37.i64[1] = 0x1000100010001;
        v38 = *v33->i8;
        v39 = *v33[2].i8;
        v40 = vmovl_u8(*v39.i8);
        v41 = vmovl_u8(*v33);
        v42 = vmovl_high_u8(v39);
        v43 = vmovl_high_u8(*v33->i8);
        v40.i16[0] = vaddvq_s16(vaddq_s16(vaddq_s16(vbicq_s8(vaddq_s16(vandq_s8(v65, v41), v37), vceqzq_s16(v41)), vbicq_s8(vaddq_s16(vandq_s8(v65, v40), v37), vceqzq_s16(v40))), vaddq_s16(vbicq_s8(vaddq_s16(vandq_s8(v65, v43), v37), vceqzq_s16(v43)), vbicq_s8(vaddq_s16(vandq_s8(v65, v42), v37), vceqzq_s16(v42)))));
        *v32++ = v40.i16[0];
        v44 = (BaseAddressOfCompressedTileHeaderRegionOfPlane + 32 * v36);
        v17 += v40.u16[0];
        v45 = v33 + 4;
        *v44 = v38;
        v44[1] = v39;
        v34 = v35;
        v28 = WidthInCompressedTilesOfPlane > v35++;
        v33 += 4;
      }

      while (v28);
    }

    else
    {
      v45 = v33;
    }

    v29 = (v62 + 1);
    v33 = v45;
    v30 = v62 + 1;
  }

  while (v63 > v29);
LABEL_23:
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = a2 + v57;
  v9 = v15;
  do
  {
    v66 = v48;
    if (WidthInCompressedTilesOfPlane)
    {
      v50 = 0;
      v51 = v46 * WidthInCompressedTilesOfPlane;
      v52 = 1;
      do
      {
        v53 = v9[v50 + v51];
        memcpy((BaseAddressOfCompressedTileDataRegionOfPlane + (v50 + v51) * v60), v49, v53);
        v9 = v15;
        v49 += v53;
        v47 += v53;
        v50 = v52;
        v28 = WidthInCompressedTilesOfPlane > v52++;
      }

      while (v28);
    }

    v46 = (v66 + 1);
    v48 = v66 + 1;
  }

  while (v63 > v46);
  v10 = v57;
LABEL_30:
  if (v47 == v17)
  {
    v54 = v47;
  }

  else
  {
    v54 = 0;
  }

  if (v47 == v17)
  {
    v55 = v10;
  }

  else
  {
    v55 = 0;
  }

  free(v9);
  return v55 + v54;
}

uint64_t CMPhotoInterchangeCompactEncode(__CVBuffer *a1, unsigned int *a2, uint64_t a3)
{
  pixelBufferOut = 0;
  v6 = a2[8];
  if (CMPhotoPixelFormatIsAGXCompressed(v6))
  {
    IOSurface = CVPixelBufferGetIOSurface(a1);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_35:
    *(a3 + 16) += CMPhotoInterchangeCompactPack(IOSurface, *(a3 + 16));
    if (v9)
    {
    }

    v15 = 0;
LABEL_38:
    if (!v8)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v25 = 1;
  v12 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = v12;
  if (!v12)
  {
    v10 = 0;
    v15 = 4294950305;
    goto LABEL_40;
  }

  v13 = *MEMORY[0x1E69660D8];
  v23 = v12;
  keys = v13;
  v10 = CFDictionaryCreate(0, &keys, &v23, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v10)
  {
    v8 = 0;
    goto LABEL_19;
  }

  v8 = MTLCreateSystemDefaultDevice();
  if (!v8)
  {
    goto LABEL_19;
  }

  v14 = &v25 + 1;
  v15 = 4294950305;
  if (v6 <= 1651925815)
  {
    if (v6 == 1278226488)
    {
      v14 = &v25 + 2;
      if (CVPixelBufferCreate(*MEMORY[0x1E695E480], *a2, a2[1], 0x264C3038u, v10, &pixelBufferOut))
      {
        goto LABEL_38;
      }

      v19 = 8;
      goto LABEL_33;
    }

    if (v6 != 1278226536)
    {
      v16 = 1651519798;
LABEL_13:
      if (v6 != v16)
      {
        goto LABEL_38;
      }

      if (!CVPixelBufferCreate(*MEMORY[0x1E695E480], *a2 >> 1, a2[1] >> 1, 0x26526841u, v10, &pixelBufferOut))
      {
        v17 = 0;
        HIBYTE(v25) = 16;
        v18 = a2[2090];
        v19 = 1;
        if (v18 != 5)
        {
          v20 = &v25 + 2;
          if (v18 != 8)
          {
            if (v18 >= 4)
            {
              if (v18 != 4)
              {
                goto LABEL_19;
              }

              goto LABEL_48;
            }

LABEL_27:
            v19 = 0;
            v17 = 1;
            goto LABEL_34;
          }

          goto LABEL_34;
        }

        goto LABEL_30;
      }

      goto LABEL_19;
    }

LABEL_28:
    v14 = &v25 + 2;
    if (CVPixelBufferCreate(*MEMORY[0x1E695E480], *a2, a2[1], 0x264C3068u, v10, &pixelBufferOut))
    {
      goto LABEL_38;
    }

    v19 = 16;
LABEL_33:
    v17 = 0;
    v20 = &v25 + 3;
    BYTE1(v25) = 0;
    goto LABEL_34;
  }

  if (v6 > 1652056887)
  {
    if (v6 != 1751411059)
    {
      if (v6 != 1652056888)
      {
        goto LABEL_38;
      }

      goto LABEL_23;
    }

    goto LABEL_28;
  }

  if (v6 != 1651925816)
  {
    v16 = 1651926376;
    goto LABEL_13;
  }

LABEL_23:
  if (!CVPixelBufferCreate(*MEMORY[0x1E695E480], *a2 >> 1, a2[1] >> 1, 0x26424741u, v10, &pixelBufferOut))
  {
    v17 = 0;
    HIBYTE(v25) = 8;
    v21 = a2[2090];
    v19 = 1;
    if (v21 != 5)
    {
      v20 = &v25 + 2;
      if (v21 != 8)
      {
        if (v21 >= 4)
        {
          if (v21 != 4)
          {
            v15 = 4294950302;
            goto LABEL_39;
          }

LABEL_48:
          v17 = 0;
          v19 = 0;
          goto LABEL_34;
        }

        goto LABEL_27;
      }

LABEL_34:
      *v14 = v17;
      *v20 = v19;
      v9 = [[CMPhotoMetal alloc] initWithDevice:v8 rotate:0 intc:&v25];
      [(CMPhotoMetal *)v9 prepareSrc:CVPixelBufferGetIOSurface(a1) rotate:0];
      [(CMPhotoMetal *)v9 prepareDst:CVPixelBufferGetIOSurface(pixelBufferOut) rotate:0];
      [(CMPhotoMetal *)v9 sendRenderCommand];
      IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut);
      goto LABEL_35;
    }

LABEL_30:
    v20 = &v25 + 2;
    goto LABEL_34;
  }

LABEL_19:
  v15 = 4294950305;
  if (v8)
  {
LABEL_39:
  }

LABEL_40:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v15;
}

uint64_t CMPhotoInterchangeCompactDecode(__CVBuffer *a1, unsigned int *a2, uint64_t a3)
{
  pixelBufferOut = 0;
  v6 = a2[8];
  if (CMPhotoPixelFormatIsAGXCompressed(v6))
  {
    IOSurface = CVPixelBufferGetIOSurface(a1);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_35:
    *(a3 + 16) += CMPhotoInterchangeCompactUnpack(IOSurface, *(a3 + 16));
    if (!CMPhotoPixelFormatIsAGXCompressed(v6))
    {
      [(CMPhotoMetal *)v9 prepareSrc:CVPixelBufferGetIOSurface(pixelBufferOut) rotate:0];
      [(CMPhotoMetal *)v9 prepareDst:CVPixelBufferGetIOSurface(a1) rotate:0];
      [(CMPhotoMetal *)v9 sendRenderCommand];
    }

    if (v9)
    {
    }

    v15 = 0;
LABEL_40:
    if (!v8)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v25 = 0;
  v12 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = v12;
  if (!v12)
  {
    v10 = 0;
    v15 = 4294950305;
    goto LABEL_42;
  }

  v13 = *MEMORY[0x1E69660D8];
  v23 = v12;
  keys = v13;
  v10 = CFDictionaryCreate(0, &keys, &v23, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v10)
  {
    v8 = 0;
    goto LABEL_19;
  }

  v8 = MTLCreateSystemDefaultDevice();
  if (!v8)
  {
    goto LABEL_19;
  }

  v14 = &v25 + 1;
  v15 = 4294950305;
  if (v6 <= 1651925815)
  {
    if (v6 == 1278226488)
    {
      v14 = &v25 + 2;
      if (CVPixelBufferCreate(*MEMORY[0x1E695E480], *a2, a2[1], 0x264C3038u, v10, &pixelBufferOut))
      {
        goto LABEL_40;
      }

      v19 = 8;
      goto LABEL_33;
    }

    if (v6 != 1278226536)
    {
      v16 = 1651519798;
LABEL_13:
      if (v6 != v16)
      {
        goto LABEL_40;
      }

      if (!CVPixelBufferCreate(*MEMORY[0x1E695E480], *a2 >> 1, a2[1] >> 1, 0x26526841u, v10, &pixelBufferOut))
      {
        v17 = 0;
        HIBYTE(v25) = 16;
        v18 = a2[2090];
        v19 = 1;
        if (v18 != 5)
        {
          v20 = &v25 + 2;
          if (v18 != 8)
          {
            if (v18 >= 4)
            {
              if (v18 != 4)
              {
                goto LABEL_19;
              }

              goto LABEL_50;
            }

LABEL_27:
            v19 = 0;
            v17 = 1;
            goto LABEL_34;
          }

          goto LABEL_34;
        }

        goto LABEL_30;
      }

      goto LABEL_19;
    }

LABEL_28:
    v14 = &v25 + 2;
    if (CVPixelBufferCreate(*MEMORY[0x1E695E480], *a2, a2[1], 0x264C3068u, v10, &pixelBufferOut))
    {
      goto LABEL_40;
    }

    v19 = 16;
LABEL_33:
    v17 = 0;
    v20 = &v25 + 3;
    BYTE1(v25) = 0;
    goto LABEL_34;
  }

  if (v6 > 1652056887)
  {
    if (v6 != 1751411059)
    {
      if (v6 != 1652056888)
      {
        goto LABEL_40;
      }

      goto LABEL_23;
    }

    goto LABEL_28;
  }

  if (v6 != 1651925816)
  {
    v16 = 1651926376;
    goto LABEL_13;
  }

LABEL_23:
  if (!CVPixelBufferCreate(*MEMORY[0x1E695E480], *a2 >> 1, a2[1] >> 1, 0x26424741u, v10, &pixelBufferOut))
  {
    v17 = 0;
    HIBYTE(v25) = 8;
    v21 = a2[2090];
    v19 = 1;
    if (v21 != 5)
    {
      v20 = &v25 + 2;
      if (v21 != 8)
      {
        if (v21 >= 4)
        {
          if (v21 != 4)
          {
            v15 = 4294950302;
            goto LABEL_41;
          }

LABEL_50:
          v17 = 0;
          v19 = 0;
          goto LABEL_34;
        }

        goto LABEL_27;
      }

LABEL_34:
      *v14 = v17;
      *v20 = v19;
      v9 = [[CMPhotoMetal alloc] initWithDevice:v8 rotate:0 intc:&v25];
      IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut);
      goto LABEL_35;
    }

LABEL_30:
    v20 = &v25 + 2;
    goto LABEL_34;
  }

LABEL_19:
  v15 = 4294950305;
  if (v8)
  {
LABEL_41:
  }

LABEL_42:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v15;
}

unint64_t _agxXBiasedTwiddle(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (v4)
  {
    v5 = vdupq_n_s64(v4 - 1);
    v6 = vdupq_n_s64(a1);
    v7 = (v4 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v8 = xmmword_1A5AACFC0;
    v9 = vdupq_n_s64(a2);
    v10 = 0uLL;
    v11 = vdupq_n_s64(1uLL);
    v12 = vdupq_n_s64(2uLL);
    do
    {
      v13 = v10;
      v14 = v8;
      v15 = vnegq_s64(v8);
      v16 = vaddq_s64(v14, v14);
      v10 = vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(vshlq_u64(v6, v15), v11), v16), vshlq_u64(vandq_s8(vshlq_u64(v9, v15), v11), vorrq_s8(v16, v11))), v13);
      v8 = vaddq_s64(v8, v12);
      v7 -= 2;
    }

    while (v7);
    v17 = vbslq_s8(vcgtq_u64(v14, v5), v13, v10);
    v18 = vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
  }

  else
  {
    v18 = 0;
  }

  return *&v18 | ((a2 | a1) >> v4 << (2 * v4));
}

uint64_t CMPhotoDecompressionContainerJFIF_pixelFormatToAppleJPEGFormat(int a1, int a2, int *a3)
{
  result = 4294950301;
  if (a1 <= 1278226735)
  {
    if (a1 > 875704933)
    {
      if (a1 > 1111970368)
      {
        if (a1 == 1111970369)
        {
          v6 = 4;
        }

        else
        {
          if (a1 != 1278226488)
          {
            return result;
          }

          v6 = 5;
        }
      }

      else if (a1 == 875704934)
      {
        v6 = 8;
      }

      else
      {
        if (a1 != 875836518)
        {
          return result;
        }

        v6 = 24;
      }

      goto LABEL_21;
    }

    if (a1 != 825306677 && a1 != 825437747)
    {
      if (a1 != 875704422)
      {
        return result;
      }

      v6 = 10;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (a1 <= 1815491697)
  {
    if (a1 > 1278555700)
    {
      if (a1 == 1278555701)
      {
        v6 = 2;
      }

      else
      {
        if (a1 != 1380401729)
        {
          return result;
        }

        v6 = 3;
      }

      goto LABEL_21;
    }

    if (a1 == 1278226736)
    {
      goto LABEL_20;
    }

    v5 = 1278226742;
LABEL_14:
    if (a1 != v5)
    {
      return result;
    }

LABEL_20:
    v6 = 18;
    goto LABEL_21;
  }

  if (a1 <= 1952854575)
  {
    if (a1 != 1815491698)
    {
      v5 = 1932996149;
      goto LABEL_14;
    }

    v6 = 16;
LABEL_21:
    result = 0;
    if (a3)
    {
      *a3 = v6;
    }

    return result;
  }

  if ((a1 == 1952854576 || a1 == 2019963440) && !a2)
  {
    v6 = 19;
    goto LABEL_21;
  }

  return result;
}

uint64_t _copyXMPForIndex(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  cf = 0;
  v14 = a2;
  v12 = 0;
  Data = _checkImageIndex(a1 + 40, &v14, 0);
  if (Data || (Data = _parseXMPIfNeeded(), Data))
  {
LABEL_18:
    v10 = Data;
    goto LABEL_19;
  }

  if (*(a1 + 377))
  {
    if (!*(a1 + 378))
    {
      Data = CMPhotoByteStreamReadAndCreateData(*(a1 + 64), *(a1 + 392), *(a1 + 384), &cf, 0);
      if (!Data)
      {
        v9 = cf;
LABEL_14:
        v10 = 0;
        *a5 = v9;
        cf = 0;
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    v8 = *(a1 + 384);
    if (v8 > 0x1D)
    {
      Data = CMPhotoByteStreamReadAndCreateData(*(a1 + 64), *(a1 + 392) + 29, v8 - 29, &cf, 0);
      if (!Data)
      {
        Data = CMPhotoCopyExtendedXMPPayloadsFromJFIFByteStream(*(a1 + 64), 0, &v12);
        if (!Data)
        {
          Data = CGImageCreateCombinedXMPData();
          if (!Data)
          {
            if (cf)
            {
              CFRelease(cf);
            }

            v9 = 0;
            goto LABEL_14;
          }
        }
      }

      goto LABEL_18;
    }

    v10 = 4294950194;
  }

  else
  {
    v10 = 4294950303;
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_15:
  if (v12)
  {
    CFRelease(v12);
  }

  return v10;
}

uint64_t CMPhotoSampleBufferCreateFromSource(const __CFAllocator *a1, __IOSurface *a2, CFIndex a3, size_t a4, void *a5, char *a6)
{
  v6 = a2;
  blockBufferOut = 0;
  sampleSizeArray = a4;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  if (!a2)
  {
    version_low = 4294950306;
    goto LABEL_47;
  }

  if (!a5)
  {
    version_low = 0;
    goto LABEL_44;
  }

  version = a4;
  StorageType = CMPhotoGetStorageType(a2);
  if (StorageType > 2)
  {
    if (StorageType != 5)
    {
      if (StorageType != 4)
      {
        if (StorageType == 3)
        {
          v13 = CMByteStreamCreateForFileURL();
          if (!v13)
          {
            v14 = CMPhotoSampleBufferCreateFromSource(a1, v26, a3, sampleSizeArray, &v27, &v25);
            goto LABEL_16;
          }

          goto LABEL_52;
        }

        goto LABEL_45;
      }

      if ((a3 & 0x8000000000000000) == 0)
      {
        SampleBufferWrappingIOSurface = CMPhotoCreateSampleBufferWrappingIOSurface(a1, v6, a3, version, 0, 1u);
        v6 = 0;
        v27 = SampleBufferWrappingIOSurface;
        goto LABEL_29;
      }

      goto LABEL_51;
    }

    if (version)
    {
      goto LABEL_13;
    }

    context.version = 0;
    v23 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v23)
    {
      v13 = v23(v6, 0, &context);
      if (v13)
      {
LABEL_52:
        version_low = v13;
        goto LABEL_44;
      }

      version = context.version;
      if (context.version < 0)
      {
        version_low = 4294950190;
        goto LABEL_44;
      }

      sampleSizeArray = context.version;
LABEL_13:
      v25 = 1;
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v15)
      {
        v6 = 0;
        version_low = 4294954514;
        goto LABEL_47;
      }

      v13 = v15(v6, version, a3, &blockBufferOut, &sampleSizeArray);
      if (v13)
      {
        goto LABEL_52;
      }

      v14 = CMSampleBufferCreate(a1, blockBufferOut, 1u, 0, 0, 0, 1, 0, 0, 1, &sampleSizeArray, &v27);
      goto LABEL_16;
    }

    version_low = 4294954514;
LABEL_44:
    v6 = 0;
    goto LABEL_47;
  }

  if (StorageType != 1)
  {
    if (StorageType != 2)
    {
LABEL_45:
      CMPhotoSampleBufferCreateFromSource_cold_2(&context);
LABEL_46:
      v6 = 0;
      version_low = LODWORD(context.version);
      goto LABEL_47;
    }

    v14 = CMSampleBufferCreate(a1, v6, 1u, 0, 0, 0, 1, 0, 0, 1, &sampleSizeArray, &v27);
LABEL_16:
    v6 = 0;
    if (v14)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  if (version + a3 > CFDataGetLength(v6))
  {
    CMPhotoSampleBufferCreateFromSource_cold_1(&context);
    goto LABEL_46;
  }

  if (!version)
  {
    if (CFDataGetLength(v6) < a3)
    {
LABEL_51:
      v6 = 0;
      version_low = 4294950190;
      goto LABEL_47;
    }

    CFDataGetLength(v6);
    sampleSizeArray = CFDataGetLength(v6) - a3;
  }

  BytePtr = CFDataGetBytePtr(v6);
  if (!BytePtr)
  {
    v6 = 0;
    version_low = 4294950194;
LABEL_47:
    if (v27)
    {
      CFRelease(v27);
    }

    goto LABEL_31;
  }

  v17 = BytePtr;
  v18 = CFRetain(v6);
  context.version = 0;
  context.info = v18;
  memset(&context.retain, 0, 24);
  context.allocate = _cfTypeDeallocator_allocate;
  context.reallocate = 0;
  context.deallocate = _cfTypeDeallocator_deallocate;
  context.preferredSize = 0;
  v6 = CFAllocatorCreate(0, &context);
  if (!v6)
  {
    version_low = 4294950305;
    goto LABEL_57;
  }

  v19 = CMBlockBufferCreateWithMemoryBlock(a1, &v17[a3], sampleSizeArray, v6, 0, 0, sampleSizeArray, 0, &blockBufferOut);
  if (v19)
  {
    version_low = v19;
LABEL_57:
    if (v18)
    {
      CFRelease(v18);
    }

    goto LABEL_47;
  }

  v14 = CMSampleBufferCreate(a1, blockBufferOut, 1u, 0, 0, 0, 1, 0, 0, 1, &sampleSizeArray, &v27);
  if (v14)
  {
LABEL_26:
    version_low = v14;
    goto LABEL_47;
  }

LABEL_29:
  *a5 = v27;
  v27 = 0;
  version_low = 0;
  if (a6)
  {
    *a6 = v25;
  }

LABEL_31:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return version_low;
}

void _cfTypeDeallocator_deallocate(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t RegisterCMPhotoCompressionSession()
{
  sCMPhotoCompressionSessionClass = 0;
  unk_1ED6FA3F0 = "CMPhotoCompressionSession";
  qword_1ED6FA3F8 = CMPhotoCompressionSessionClass_Init;
  unk_1ED6FA400 = 0;
  qword_1ED6FA410 = 0;
  unk_1ED6FA418 = 0;
  qword_1ED6FA408 = CMPhotoCompressionSessionClass_Finalize;
  qword_1ED6FA420 = CMPhotoCompressionSessionClass_CopyFormattingDesc;
  unk_1ED6FA428 = 0;
  result = _CFRuntimeRegisterClass();
  sCMPhotoCompressionSessionTypeID = result;
  return result;
}

BOOL CMPhotoCompressionSessionIsContainerOpen(_BOOL8 result)
{
  if (result)
  {
    return !*(result + 16) && *(result + 72) != 0;
  }

  return result;
}

uint64_t _verifyMainImageOptions(uint64_t a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (!theDict)
  {
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_13:
    _verifyMainImageOptions_cold_2(&v9);
    return v9;
  }

  Value = CFDictionaryGetValue(theDict, @"DryRun");
  if ((a3 != 0) != (Value == 0))
  {
    goto LABEL_13;
  }

  if (!Value)
  {
LABEL_8:
    if (*(a1 + 16) || !*(a1 + 72))
    {
      return 4294950195;
    }

    return 0;
  }

  v6 = CFGetTypeID(Value);
  if (v6 != CMFormatDescriptionGetTypeID())
  {
    _verifyMainImageOptions_cold_1(&v8);
    return v8;
  }

  if (*(a1 + 16))
  {
    return 4294950195;
  }

  return 0;
}

uint64_t _verifyThumbnailOptions(uint64_t a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (!theDict)
  {
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_13:
    _verifyThumbnailOptions_cold_2(&v9);
    return v9;
  }

  Value = CFDictionaryGetValue(theDict, @"DryRun");
  if ((a3 != 0) != (Value == 0))
  {
    goto LABEL_13;
  }

  if (!Value)
  {
LABEL_8:
    if (*(a1 + 16) || !*(a1 + 72))
    {
      return 4294950195;
    }

    return 0;
  }

  v6 = CFGetTypeID(Value);
  if (v6 != CMFormatDescriptionGetTypeID())
  {
    _verifyThumbnailOptions_cold_1(&v8);
    return v8;
  }

  if (*(a1 + 16))
  {
    return 4294950195;
  }

  return 0;
}

uint64_t _cleanupSequenceContainerIfNeeded(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v4 = *(a2 + 80);
      v2 = (a2 + 80);
      v3 = v4;
      if (v4)
      {
        if (!*(v3 + 24))
        {
          *v2 = CMPhotoCompressionSessionVTableHEIF;
        }
      }
    }
  }

  return result;
}

uint64_t CMPhotoCompressionSessionAddStereoMetadata()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoCompressionSessionAddGroup(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (*(a1 + 16) || !*(a1 + 72))
    {
      CMPhotoCompressionSessionAddGroup_cold_1(&v6);
      return v6;
    }

    else if (a3 == 1634497650 || a3 == 1937007986)
    {
      v3 = *(a1 + 80);
      if (v3)
      {
        v4 = *(v3 + 176);
        if (v4)
        {

          return v4();
        }

        else
        {
          return 4294950302;
        }
      }

      else
      {
        return 4294950195;
      }
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  else
  {
    CMPhotoCompressionSessionAddGroup_cold_2(&v7);
    return v7;
  }
}

uint64_t CMPhotoCompressionSessionAddGroupProperties(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) || !*(a1 + 72))
    {
      CMPhotoCompressionSessionAddGroupProperties_cold_1(&v4);
      return v4;
    }

    else
    {
      v1 = *(a1 + 80);
      if (v1)
      {
        v2 = *(v1 + 184);
        if (v2)
        {

          return v2();
        }

        else
        {
          return 4294950302;
        }
      }

      else
      {
        return 4294950195;
      }
    }
  }

  else
  {
    CMPhotoCompressionSessionAddGroupProperties_cold_2(&v5);
    return v5;
  }
}

uint64_t CMPhotoCompressionSessionAddImageHandleToGroup(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) || !*(a1 + 72))
    {
      CMPhotoCompressionSessionAddImageHandleToGroup_cold_1(&v4);
      return v4;
    }

    else
    {
      v1 = *(a1 + 80);
      if (v1)
      {
        v2 = *(v1 + 192);
        if (v2)
        {

          return v2();
        }

        else
        {
          return 4294950302;
        }
      }

      else
      {
        return 4294950195;
      }
    }
  }

  else
  {
    CMPhotoCompressionSessionAddImageHandleToGroup_cold_2(&v5);
    return v5;
  }
}

uint64_t CMPhotoCompressionSessionAddGroupHandleToGroup(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) || !*(a1 + 72))
    {
      CMPhotoCompressionSessionAddGroupHandleToGroup_cold_1(&v4);
      return v4;
    }

    else
    {
      v1 = *(a1 + 80);
      if (v1)
      {
        v2 = *(v1 + 200);
        if (v2)
        {

          return v2();
        }

        else
        {
          return 4294950302;
        }
      }

      else
      {
        return 4294950195;
      }
    }
  }

  else
  {
    CMPhotoCompressionSessionAddGroupHandleToGroup_cold_2(&v5);
    return v5;
  }
}

uint64_t CMPhotoCompressionSessionAddTmapImageOneShot(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) || !*(a1 + 72))
    {
      CMPhotoCompressionSessionAddTmapImageOneShot_cold_1(&v4);
      return v4;
    }

    else
    {
      v1 = *(a1 + 80);
      if (v1)
      {
        v2 = *(v1 + 208);
        if (v2)
        {

          return v2();
        }

        else
        {
          return 4294950302;
        }
      }

      else
      {
        return 4294950195;
      }
    }
  }

  else
  {
    CMPhotoCompressionSessionAddTmapImageOneShot_cold_2(&v5);
    return v5;
  }
}

double CMPhotoCompressionSessionClass_Init(_OWORD *a1)
{
  result = 0.0;
  a1[29] = 0u;
  a1[30] = 0u;
  a1[27] = 0u;
  a1[28] = 0u;
  a1[25] = 0u;
  a1[26] = 0u;
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void *CMPhotoBitStreamWriteInit(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = a2;
  result[3] = a3;
  return result;
}

uint64_t CMPhotoBitStreamReadInit(uint64_t result, uint64_t a2, char a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = a3;
  *(result + 32) = a2;
  *(result + 40) = 0;
  return result;
}

uint64_t CMPhotoBitStreamWriteFlushBytes(unint64_t *a1)
{
  v16 = 3;
  v15 = 0;
  v1 = *(a1 + 2);
  if (v1 < 8)
  {
    return 0;
  }

  v3 = v1 >> 3;
  v4 = *a1;
  v5 = *(a1 + 3);
  v6 = 63;
  while (1)
  {
    v14 = HIBYTE(v4);
    if (v5 == 2)
    {
      if (!(v4 >> 58))
      {
        v8 = a1[2];
        v7 = a1[3];
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v9)
        {
          return 4294954514;
        }

        result = v9(v8, 1, v7, &v16, &v15);
        if (result)
        {
          return result;
        }

        if (v15 != 1)
        {
          goto LABEL_21;
        }

        ++a1[3];
      }

      *(a1 + 3) = 0;
    }

    v12 = a1[2];
    v11 = a1[3];
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v13)
    {
      return 4294954514;
    }

    result = v13(v12, 1, v11, &v14, &v15);
    if (result)
    {
      return result;
    }

    if (v15 != 1)
    {
      break;
    }

    if (v14)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(a1 + 3) + 1;
    }

    v4 = *a1 << 8;
    *a1 = v4;
    ++a1[3];
    *(a1 + 2) -= 8;
    *(a1 + 3) = v5;
    if (!--v3)
    {
      return 0;
    }
  }

  v6 = 71;
LABEL_21:
  CMPhotoBitStreamWriteFlushBytes_cold_1(v6, &v17);
  return v17;
}

uint64_t RegisterCMPhotoCache()
{
  sCMPhotoCacheClass = 0;
  *algn_1EB1EC6F8 = "CMPhotoCache";
  qword_1EB1EC700 = CMPhotoCacheClass_Init;
  unk_1EB1EC708 = 0;
  qword_1EB1EC718 = 0;
  unk_1EB1EC720 = 0;
  qword_1EB1EC710 = CMPhotoCacheClass_Finalize;
  qword_1EB1EC728 = CMPhotoCacheClass_CopyFormattingDesc;
  unk_1EB1EC730 = 0;
  result = _CFRuntimeRegisterClass();
  sCMPhotoCacheTypeID = result;
  return result;
}

double CMPhotoCacheClass_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t _isPixelBufferValid(__CVBuffer *a1, int a2, uint64_t a3, uint64_t a4)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v9 = CVPixelBufferGetWidth(a1) == a3 && CVPixelBufferGetHeight(a1) == a4;
  if (CMPhotoPixelBufferHasCLAP(a1))
  {
    return 0;
  }

  else
  {
    return (PixelFormatType == a2) & v9;
  }
}

const __CFString *_addMetadataApplierFunction(const __CFString *name, const void *a2, uint64_t a3)
{
  if (!*(a3 + 24))
  {
    name = CMPhotoAddValueToCGImageMetadata(*a3, a2, name, *(a3 + 8), *(a3 + 16));
    *(a3 + 24) = name;
  }

  return name;
}

CFTypeRef CMPhotoCreateURNFromAuxiliaryImageType(int a1)
{
  v1 = a1 - 1;
  if ((a1 - 1) > 4 || ((0x17u >> v1) & 1) == 0)
  {
    return CFRetain(@"unknown");
  }

  result = *off_1E77A2010[v1];
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t CMPhotoCreateDeltaPixelBuffer(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3, CVPixelBufferRef *a4, uint64_t a5)
{
  v155[1] = *MEMORY[0x1E69E9840];
  v146 = 0;
  v145 = 0;
  if (!a1)
  {
    CMPhotoCreateDeltaPixelBuffer_cold_7(&v147);
    goto LABEL_97;
  }

  v5 = a2;
  if (!a2)
  {
    CMPhotoCreateDeltaPixelBuffer_cold_6(&v147);
    goto LABEL_97;
  }

  if (!a4)
  {
    CMPhotoCreateDeltaPixelBuffer_cold_5(&v147);
    goto LABEL_97;
  }

  v9 = a1;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(v5))
  {
    CMPhotoCreateDeltaPixelBuffer_cold_1(&v147);
    goto LABEL_97;
  }

  if (!a3 || (FigCFDictionaryGetIntIfPresent(), (v145 - 6) <= 0xFFFFFFFA))
  {
    CMPhotoCreateDeltaPixelBuffer_cold_4(&v147);
LABEL_97:
    v74 = v147;
    goto LABEL_98;
  }

  if (CVPixelBufferGetPixelFormatType(v9) != 875704422)
  {
    CMPhotoCreateDeltaPixelBuffer_cold_2(&v147);
    goto LABEL_97;
  }

  v143 = 0;
  v144 = 0;
  CMPhotoGetPixelBufferCLAP(v9, 0, 0, &v143, &v144);
  v141 = 0;
  v142 = 0;
  CMPhotoGetPixelBufferCLAP(v5, 0, 0, &v141, &v142);
  if (v143 != v141 || v144 != v142)
  {
    CMPhotoCreateDeltaPixelBuffer_cold_3(&v147);
    goto LABEL_97;
  }

  CVPixelBufferLockBaseAddress(v9, 1uLL);
  CVPixelBufferLockBaseAddress(v5, 1uLL);
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(875704422);
  v140 = 0;
  v154 = 0;
  v155[0] = 0;
  v152 = 0;
  v153 = 0;
  v150 = 0;
  v151 = 0;
  v148 = 0;
  v149 = 0;
  PixelBufferDataPointers = CMPhotoGetPixelBufferDataPointers(v9, 0, 0, &v140, &v154, &v152, 0);
  if (PixelBufferDataPointers)
  {
    goto LABEL_106;
  }

  if (v140 != 2)
  {
LABEL_107:
    v75 = 0;
    v74 = 0;
    goto LABEL_93;
  }

  PixelBufferDataPointers = CMPhotoGetPixelBufferDataPointers(v5, 0, 0, &v140, &v150, &v148, 0);
  if (PixelBufferDataPointers)
  {
LABEL_106:
    v74 = PixelBufferDataPointers;
    v75 = 0;
    goto LABEL_93;
  }

  if (v140 != 2)
  {
    goto LABEL_107;
  }

  v125 = a5;
  v126 = a4;
  v127 = v5;
  v13 = 0;
  pixelBuffer = v9;
  v152 /= BytesPerPixelForPixelFormat;
  v153 /= BytesPerPixelForPixelFormat;
  v14 = 0x80000000;
  v15 = 0x7FFFFFFF;
  v16 = &v154;
  v148 /= BytesPerPixelForPixelFormat;
  v149 /= BytesPerPixelForPixelFormat;
  v17 = &v152;
  v18 = &v150;
  v19 = &v148;
  v20 = 1;
  do
  {
    v21 = v20;
    v22 = *v16;
    v23 = *v18;
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, v13);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, v13);
    if (HeightOfPlane)
    {
      for (i = 0; i != HeightOfPlane; ++i)
      {
        if (WidthOfPlane << v13)
        {
          v27 = (v22 + *v17 * i);
          v28 = (v23 + *v19 * i);
          v29 = WidthOfPlane << v13;
          do
          {
            v31 = *v27++;
            v30 = v31;
            v32 = *v28++;
            v33 = v30 - v32;
            if (v15 >= v33)
            {
              v15 = v33;
            }

            if (v14 <= v33)
            {
              v14 = v33;
            }

            --v29;
          }

          while (v29);
        }
      }
    }

    v20 = 0;
    v18 = &v151;
    v19 = &v149;
    v16 = v155;
    v17 = &v153;
    v13 = 1;
  }

  while ((v21 & 1) != 0);
  if (v145 <= 2)
  {
    if (v145 == 1)
    {
      v133 = v15 > -129 && v14 < 128;
      if (v133)
      {
        v76 = 875704422;
      }

      else
      {
        v76 = 2019963440;
      }

      v131 = v76;
      v34 = CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", v76, v143, v144, 1, 0, 0, 1, 0, 0, &v146);
      if (!v34)
      {
        CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(pixelBuffer, v146);
        CVPixelBufferLockBaseAddress(v146, 0);
        v77 = 0;
        v78 = &v154;
        v79 = &v152;
        v80 = &v150;
        v81 = &v148;
        v82 = 1;
        do
        {
          v137 = v82;
          v83 = CMPhotoGetBytesPerPixelForPixelFormat(v131);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v146, v77);
          v85 = *v78;
          v86 = *v80;
          v87 = BytesPerRowOfPlane / v83;
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v146, v77);
          v89 = CVPixelBufferGetBaseAddressOfPlane(v146, v77);
          v90 = CVPixelBufferGetWidthOfPlane(pixelBuffer, v77) << v77;
          v91 = CVPixelBufferGetHeightOfPlane(pixelBuffer, v77);
          if (v133)
          {
            if (v91)
            {
              for (j = 0; j != v91; ++j)
              {
                if (v90)
                {
                  v93 = 0;
                  v94 = v86;
                  v95 = v85;
                  v96 = v90;
                  do
                  {
                    BaseAddressOfPlane[j * v87 + v93++] = (*(v95 + j * *v79) - *(v94 + j * *v81)) ^ 0x80;
                    ++v95;
                    ++v94;
                    --v96;
                  }

                  while (v96);
                }
              }
            }
          }

          else if (v91)
          {
            for (k = 0; k != v91; ++k)
            {
              if (v90)
              {
                v98 = 0;
                v99 = (v86 + *v81 * k);
                v100 = (v85 + *v79 * k);
                v101 = v90;
                do
                {
                  v103 = *v100++;
                  v102 = v103;
                  v104 = *v99++;
                  v89[k * v87 + v98++] = ((v102 - v104) << 6) ^ 0x8000;
                  --v101;
                }

                while (v101);
              }
            }
          }

          v82 = 0;
          v80 = &v151;
          v81 = &v149;
          v78 = v155;
          v79 = &v153;
          v77 = 1;
        }

        while ((v137 & 1) != 0);
        goto LABEL_90;
      }

      goto LABEL_59;
    }

    if (v145 == 2)
    {
      v34 = CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", 875704422, v143, v144, 1, 0, 0, 1, 0, 0, &v146);
      if (!v34)
      {
        CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(pixelBuffer, v146);
        CVPixelBufferLockBaseAddress(v146, 0);
        v35 = 0;
        v36 = &v154;
        v37 = &v152;
        v38 = &v150;
        v39 = &v148;
        v40 = 1;
        do
        {
          v135 = v40;
          v41 = CVPixelBufferGetPixelFormatType(v146);
          v42 = CMPhotoGetBytesPerPixelForPixelFormat(v41);
          v43 = CVPixelBufferGetBytesPerRowOfPlane(v146, v35);
          v44 = *v36;
          v45 = *v38;
          v46 = CVPixelBufferGetBaseAddressOfPlane(v146, v35);
          v47 = CVPixelBufferGetWidthOfPlane(pixelBuffer, v35);
          v48 = CVPixelBufferGetHeightOfPlane(pixelBuffer, v35);
          if (v48)
          {
            for (m = 0; m != v48; ++m)
            {
              if (v47 << v35)
              {
                v50 = 0;
                v51 = v45;
                v52 = v44;
                v53 = v47 << v35;
                do
                {
                  v54 = *(v52 + m * *v37) - *(v51 + m * *v39);
                  v46[m * (v43 / v42) + v50++] = ((v54 + ((v54 & 0x8000) >> 15)) >> 1) ^ 0x80;
                  ++v52;
                  ++v51;
                  --v53;
                }

                while (v53);
              }
            }
          }

          v40 = 0;
          v38 = &v151;
          v39 = &v149;
          v36 = v155;
          v37 = &v153;
          v35 = 1;
        }

        while ((v135 & 1) != 0);
        goto LABEL_90;
      }

      goto LABEL_59;
    }

LABEL_58:
    fig_log_get_emitter();
    v34 = FigSignalErrorAtGM();
    goto LABEL_59;
  }

  if (v145 == 3)
  {
    v34 = CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", 875704422, v143, v144, 1, 0, 0, 1, 0, 0, &v146);
    if (!v34)
    {
      CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(pixelBuffer, v146);
      CVPixelBufferLockBaseAddress(v146, 0);
      v105 = 0;
      v106 = &v154;
      v107 = &v152;
      v108 = &v150;
      v109 = &v148;
      v110 = 1;
      do
      {
        v138 = v110;
        v111 = CVPixelBufferGetPixelFormatType(v146);
        v134 = CMPhotoGetBytesPerPixelForPixelFormat(v111);
        v112 = CVPixelBufferGetBytesPerRowOfPlane(v146, v105);
        v113 = *v106;
        v114 = *v108;
        v115 = CVPixelBufferGetBaseAddressOfPlane(v146, v105);
        v116 = CVPixelBufferGetWidthOfPlane(pixelBuffer, v105);
        v117 = CVPixelBufferGetHeightOfPlane(pixelBuffer, v105);
        if (v117)
        {
          for (n = 0; n != v117; ++n)
          {
            if (v116 << v105)
            {
              v119 = 0;
              v120 = v114;
              v121 = v113;
              v122 = v116 << v105;
              do
              {
                v115[n * (v112 / v134) + v119++] = LUT_compand_9b_to_8b_diff[*(v121 + n * *v107) - *(v120 + n * *v109) + 255];
                ++v121;
                ++v120;
                --v122;
              }

              while (v122);
            }
          }
        }

        v110 = 0;
        v108 = &v151;
        v109 = &v149;
        v106 = v155;
        v107 = &v153;
        v105 = 1;
      }

      while ((v138 & 1) != 0);
      goto LABEL_90;
    }

    goto LABEL_59;
  }

  if (v145 != 4)
  {
    goto LABEL_58;
  }

  v34 = CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", 875704422, v143, v144, 1, 0, 0, 1, 0, 0, &v146);
  if (!v34)
  {
    CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(pixelBuffer, v146);
    CVPixelBufferLockBaseAddress(v146, 0);
    v55 = 0;
    v56 = v14 - v15;
    v57 = &v154;
    v58 = &v152;
    v59 = &v150;
    v60 = &v148;
    v61 = 1;
    do
    {
      v136 = v61;
      v62 = CVPixelBufferGetPixelFormatType(v146);
      v130 = CMPhotoGetBytesPerPixelForPixelFormat(v62);
      v129 = CVPixelBufferGetBytesPerRowOfPlane(v146, v55);
      v132 = *v57;
      v63 = *v59;
      v64 = CVPixelBufferGetBaseAddressOfPlane(v146, v55);
      v128 = CVPixelBufferGetWidthOfPlane(pixelBuffer, v55);
      v65 = CVPixelBufferGetHeightOfPlane(pixelBuffer, v55);
      if (v65)
      {
        for (ii = 0; ii != v65; ++ii)
        {
          if (v128 << v55)
          {
            v67 = 0;
            v68 = v63;
            v69 = v132;
            v70 = v128 << v55;
            do
            {
              v71 = *(v69 + ii * *v58) - (v15 + *(v68 + ii * *v60));
              if (v56 >= 256)
              {
                v71 = llroundf((v71 / v56) * 255.0);
              }

              ++v69;
              ++v68;
              v72 = v71 & ~(v71 >> 31);
              if (v72 >= 255)
              {
                LOBYTE(v72) = -1;
              }

              v64[ii * (v129 / v130) + v67++] = v72;
              --v70;
            }

            while (v70);
          }
        }
      }

      v61 = 0;
      v59 = &v151;
      v60 = &v149;
      v57 = v155;
      v58 = &v153;
      v55 = 1;
    }

    while ((v136 & 1) != 0);
    if (v125)
    {
      v73 = CMPhotoCFDictionarySetInt(v125, @"Min", v15);
      if (v73 || (v73 = CMPhotoCFDictionarySetInt(v125, @"Max", v14), v73))
      {
        v74 = v73;
LABEL_91:
        v75 = 1;
        goto LABEL_92;
      }
    }

LABEL_90:
    v74 = 0;
    *v126 = v146;
    v146 = 0;
    goto LABEL_91;
  }

LABEL_59:
  v74 = v34;
  v75 = 0;
LABEL_92:
  v5 = v127;
  v9 = pixelBuffer;
LABEL_93:
  CVPixelBufferUnlockBaseAddress(v9, 1uLL);
  CVPixelBufferUnlockBaseAddress(v5, 1uLL);
  v123 = v146;
  if (v75 && v146)
  {
    CVPixelBufferUnlockBaseAddress(v146, 0);
LABEL_98:
    v123 = v146;
  }

  if (v123)
  {
    CFRelease(v123);
  }

  return v74;
}

uint64_t CMPhotoApplyDeltaPixelBuffer(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3, CVPixelBufferRef *a4)
{
  v4 = a4;
  v131[1] = *MEMORY[0x1E69E9840];
  pixelBuffer = 0;
  v121 = 0;
  if (!a1)
  {
    CMPhotoApplyDeltaPixelBuffer_cold_7(&v123);
    goto LABEL_88;
  }

  v5 = a2;
  if (!a2)
  {
    CMPhotoApplyDeltaPixelBuffer_cold_6(&v123);
LABEL_88:
    v51 = v123;
    if (!v4)
    {
      goto LABEL_89;
    }

LABEL_83:
    *v4 = pixelBuffer;
    return v51;
  }

  if (!a4)
  {
    CMPhotoApplyDeltaPixelBuffer_cold_5(&v123);
    return v123;
  }

  if (!a3 || (v6 = a1, CMPhotoCFDictionaryGetIntIfPresent(), (v121 - 6) < 0xFFFFFFFB))
  {
    v8 = 2015;
LABEL_95:
    _extractRGBComponentAndCopyIntoMonochromeBuffer_cold_1(v8, &v123);
    v51 = v123;
    goto LABEL_83;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v6);
  v107 = CVPixelBufferGetPixelFormatType(v5);
  if (PixelFormatType != 875704422)
  {
    v8 = 2020;
    goto LABEL_95;
  }

  v119 = 0;
  v120 = 0;
  CMPhotoGetPixelBufferCLAP(v6, 0, 0, &v119, &v120);
  v117 = 0;
  v118 = 0;
  CMPhotoGetPixelBufferCLAP(v5, 0, 0, &v117, &v118);
  v8 = 2026;
  if (v119 != v117 || v120 != v118)
  {
    goto LABEL_95;
  }

  v9 = 1;
  CVPixelBufferLockBaseAddress(v6, 1uLL);
  CVPixelBufferLockBaseAddress(v5, 1uLL);
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(875704422);
  v11 = CMPhotoGetBytesPerPixelForPixelFormat(v107);
  v116 = 0;
  v130 = 0;
  v131[0] = 0;
  v128 = 0;
  v129 = 0;
  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  PixelBufferDataPointers = CMPhotoGetPixelBufferDataPointers(v6, 0, 0, &v116, &v130, &v128, 0);
  if (PixelBufferDataPointers)
  {
LABEL_84:
    v51 = PixelBufferDataPointers;
    goto LABEL_80;
  }

  if (v116 != 2)
  {
    goto LABEL_85;
  }

  v13 = CMPhotoGetPixelBufferDataPointers(v5, 0, 0, &v116, &v126, &v124, 0);
  if (v13)
  {
    v51 = v13;
    goto LABEL_97;
  }

  if (v116 != 2)
  {
LABEL_85:
    v51 = 0;
LABEL_97:
    v9 = 1;
    goto LABEL_80;
  }

  v128 /= BytesPerPixelForPixelFormat;
  v129 /= BytesPerPixelForPixelFormat;
  v124 /= v11;
  v125 /= v11;
  v9 = 1;
  PixelBufferDataPointers = CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", 875704422, v119, v120, 1, 0, 0, 1, 0, 0, &pixelBuffer);
  if (PixelBufferDataPointers)
  {
    goto LABEL_84;
  }

  CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(v6, pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  v115 = v6;
  if (v121 <= 2)
  {
    if (v121 == 1)
    {
      v100 = v5;
      v102 = v4;
      v52 = 0;
      v53 = &v130;
      v54 = &v128;
      v55 = &v126;
      v56 = &v124;
      v57 = 1;
      do
      {
        v113 = v57;
        v58 = *v53;
        v59 = *v55;
        v60 = CMPhotoGetBytesPerPixelForPixelFormat(875704422);
        v61 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v52) / v60;
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, v52);
        v63 = CVPixelBufferGetWidthOfPlane(v6, v52) << v52;
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(v6, v52);
        if (v107 == 875704422)
        {
          if (HeightOfPlane)
          {
            for (i = 0; i != HeightOfPlane; ++i)
            {
              if (v63)
              {
                v66 = 0;
                v67 = v59;
                v68 = v58;
                v69 = v63;
                do
                {
                  v70 = *(v68 + i * *v54) + *(v67 + i * *v56) - 128;
                  v71 = v70 & ~(v70 >> 31);
                  if (v71 >= 255)
                  {
                    LOBYTE(v71) = -1;
                  }

                  BaseAddressOfPlane[i * v61 + v66++] = v71;
                  ++v68;
                  ++v67;
                  --v69;
                }

                while (v69);
              }
            }
          }
        }

        else if (HeightOfPlane)
        {
          v72 = 0;
          for (j = 0; j != HeightOfPlane; ++j)
          {
            if (v63)
            {
              v74 = 0;
              v75 = v59;
              v76 = v58;
              v77 = v63;
              do
              {
                v78 = *(v76 + j * *v54) + (*(v75 + v72 * *v56) >> 6) - 512;
                v79 = v78 & ~(v78 >> 31);
                if (v79 >= 255)
                {
                  LOBYTE(v79) = -1;
                }

                BaseAddressOfPlane[j * v61 + v74++] = v79;
                ++v76;
                v75 += 2;
                --v77;
              }

              while (v77);
            }

            v72 += 2;
          }
        }

        v57 = 0;
        v55 = &v127;
        v56 = &v125;
        v53 = v131;
        v54 = &v129;
        v52 = 1;
      }

      while ((v113 & 1) != 0);
      goto LABEL_79;
    }

    if (v121 == 2)
    {
      if (v107 == 875704422)
      {
        v100 = v5;
        v102 = v4;
        v14 = 0;
        v15 = &v130;
        v16 = &v128;
        v17 = &v126;
        v18 = &v124;
        v19 = 1;
        do
        {
          v111 = v19;
          v20 = *v15;
          v21 = *v17;
          v108 = CMPhotoGetBytesPerPixelForPixelFormat(875704422);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v14);
          v23 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, v14);
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(v115, v14);
          v25 = CVPixelBufferGetHeightOfPlane(v115, v14);
          if (v25)
          {
            for (k = 0; k != v25; ++k)
            {
              if (WidthOfPlane << v14)
              {
                v27 = 0;
                v28 = v21;
                v29 = v20;
                v30 = WidthOfPlane << v14;
                do
                {
                  v31 = *(v29 + k * *v16) + 2 * *(v28 + k * *v18) - 256;
                  v32 = v31 & ~(v31 >> 31);
                  if (v32 >= 255)
                  {
                    LOBYTE(v32) = -1;
                  }

                  v23[k * (BytesPerRowOfPlane / v108) + v27++] = v32;
                  ++v29;
                  ++v28;
                  --v30;
                }

                while (v30);
              }
            }
          }

          v19 = 0;
          v17 = &v127;
          v18 = &v125;
          v15 = v131;
          v16 = &v129;
          v14 = 1;
        }

        while ((v111 & 1) != 0);
LABEL_79:
        v9 = 0;
        v51 = 0;
        v5 = v100;
        v4 = v102;
        v6 = v115;
        goto LABEL_80;
      }

      CMPhotoApplyDeltaPixelBuffer_cold_2(&v123);
      goto LABEL_101;
    }

    goto LABEL_45;
  }

  if (v121 != 3)
  {
    if (v121 == 4)
    {
      if (CMPhotoCFDictionaryGetIntIfPresent())
      {
        if (CMPhotoCFDictionaryGetIntIfPresent())
        {
          if (v107 == 875704422)
          {
            v101 = v5;
            v103 = v4;
            v33 = 0;
            v34 = &v130;
            v35 = &v128;
            v36 = &v126;
            v37 = &v124;
            v38 = 1;
            do
            {
              v112 = v38;
              v39 = *v34;
              v40 = *v36;
              v109 = CMPhotoGetBytesPerPixelForPixelFormat(875704422);
              v105 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v33);
              v41 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, v33);
              v104 = CVPixelBufferGetWidthOfPlane(v115, v33);
              v42 = CVPixelBufferGetHeightOfPlane(v115, v33);
              if (v42)
              {
                for (m = 0; m != v42; ++m)
                {
                  if (v104 << v33)
                  {
                    v44 = 0;
                    v45 = v40;
                    v46 = v39;
                    v47 = v104 << v33;
                    do
                    {
                      v48 = *(v45 + m * *v37);
                      v49 = *(v46 + m * *v35);
                      ++v46;
                      ++v45;
                      v50 = (v48 + v49 + 0x7FFFFFFF) & ~((v48 + v49 + 0x7FFFFFFF) >> 31);
                      if (v50 >= 255)
                      {
                        LOBYTE(v50) = -1;
                      }

                      v41[m * (v105 / v109) + v44++] = v50;
                      --v47;
                    }

                    while (v47);
                  }
                }
              }

              v38 = 0;
              v36 = &v127;
              v37 = &v125;
              v34 = v131;
              v35 = &v129;
              v33 = 1;
            }

            while ((v112 & 1) != 0);
            v51 = 0;
            v5 = v101;
            v4 = v103;
            v6 = v115;
            goto LABEL_46;
          }

          v99 = 2077;
        }

        else
        {
          v99 = 2072;
        }
      }

      else
      {
        v99 = 2068;
      }

      _extractRGBComponentAndCopyIntoMonochromeBuffer_cold_1(v99, &v123);
      v51 = v123;
LABEL_46:
      v9 = 0;
      goto LABEL_80;
    }

LABEL_45:
    fig_log_get_emitter();
    v51 = FigSignalErrorAtGM();
    goto LABEL_46;
  }

  if (v107 == 875704422)
  {
    v100 = v5;
    v102 = v4;
    v80 = 0;
    v81 = &v130;
    v82 = &v128;
    v83 = &v126;
    v84 = &v124;
    v85 = 1;
    do
    {
      v114 = v85;
      v86 = *v81;
      v87 = *v83;
      v110 = CMPhotoGetBytesPerPixelForPixelFormat(875704422);
      v106 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v80);
      v88 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, v80);
      v89 = CVPixelBufferGetWidthOfPlane(v115, v80);
      v90 = CVPixelBufferGetHeightOfPlane(v115, v80);
      if (v90)
      {
        for (n = 0; n != v90; ++n)
        {
          if (v89 << v80)
          {
            v92 = 0;
            v93 = v87;
            v94 = v86;
            v95 = v89 << v80;
            do
            {
              v96 = *(v94 + n * *v82) + LUT_expand_8b_to_9b_diff[*(v93 + n * *v84)] - 255;
              v97 = v96 & ~(v96 >> 31);
              if (v97 >= 255)
              {
                LOBYTE(v97) = -1;
              }

              v88[n * (v106 / v110) + v92++] = v97;
              ++v94;
              ++v93;
              --v95;
            }

            while (v95);
          }
        }
      }

      v85 = 0;
      v83 = &v127;
      v84 = &v125;
      v81 = v131;
      v82 = &v129;
      v80 = 1;
    }

    while ((v114 & 1) != 0);
    goto LABEL_79;
  }

  CMPhotoApplyDeltaPixelBuffer_cold_1(&v123);
LABEL_101:
  v9 = 0;
  v51 = v123;
LABEL_80:
  CVPixelBufferUnlockBaseAddress(v6, 1uLL);
  CVPixelBufferUnlockBaseAddress(v5, 1uLL);
  if ((v9 & 1) == 0)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

  if (v4)
  {
    goto LABEL_83;
  }

LABEL_89:
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  return v51;
}

uint64_t _getThumbnailCountForIndex(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

uint64_t _createOutputBufferAttributesForImageIndex(uint64_t a1, uint64_t a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  if (!a2)
  {
    v8 = *(a1 + 88);
    v7 = *(a1 + 92);
    v16 = 0;
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    if (!a4)
    {
      return 0;
    }

    v9 = _determineDecodeStrategy_0(a1, a3, v8, v7, v14);
    if (v9)
    {
      return v9;
    }

    Mutable = CFDictionaryCreateMutable(*(a1 + 40), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294950305;
    }

    v11 = Mutable;
    v12 = CMPhotoCFDictionarySetSize(Mutable, *MEMORY[0x1E6966208], *(&v15 + 1));
    if (v12 || (v12 = CMPhotoCFDictionarySetSize(v11, *MEMORY[0x1E69660B8], v16), v12))
    {
      v13 = v12;
    }

    else
    {
      v13 = CMPhotoCFDictionarySetSize(v11, *MEMORY[0x1E6966020], 16);
      if (!v13)
      {
        *a4 = v11;
        return v13;
      }
    }

    CFRelease(v11);
    return v13;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t _getTileSizeForIndex(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, void *a6)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  return 0;
}

void *_jxlOutputCallback(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char *__src)
{
  if (!result)
  {
    return _jxlOutputCallback_cold_2();
  }

  v5 = a3 - result[3];
  if (v5 >= 0 && v5 < result[5])
  {
    v6 = a2 - result[2];
    if (v6 < 0)
    {
      a4 = (v6 + a4) & ~((v6 + a4) >> 63);
      __src -= v6 * result[6];
      v6 = 0;
      if (!a4)
      {
        return result;
      }
    }

    else if (!a4)
    {
      return result;
    }

    v7 = a4 + v6;
    v8 = result[4];
    if (a4 + v6 <= v8 || (a4 = v8 - v6, (v8 - v6) >= 1))
    {
      if (*(result + 16))
      {
        return _jxlOutputCallback_cold_1();
      }

      else
      {
        v9 = result[6];
        v10 = result[7] * v5;
        v11 = v9 * v6;
        if (v9 == 8)
        {
          v12 = (result[10] + v10 + v11);

          return memcpy(v12, __src, 8 * a4);
        }

        else
        {
          if (v8 >= v7)
          {
            v13 = v7;
          }

          else
          {
            v13 = result[4];
          }

          v14 = v6 - v13;
          v15 = v11 + v10;
          do
          {
            v16 = *__src;
            __src += 4;
            *(result[10] + v15) = v16 & 0xFF00FF00 | BYTE2(v16) | (v16 << 16);
            v15 += 4;
          }

          while (!__CFADD__(v14++, 1));
        }
      }
    }
  }

  return result;
}

void SlimDecompressionPluginClass_dispose(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = *(v2 + 16);
      if (v3)
      {
        dispatch_barrier_sync(v3, &__block_literal_global_5);
        v4 = *(v2 + 16);
        if (v4)
        {
          dispatch_release(v4);
        }
      }

      for (i = 24; i != 56; i += 8)
      {
        v6 = *(v2 + i);
        if (v6)
        {
          CFRelease(v6);
        }
      }

      if (*v2)
      {
        CFRelease(*v2);
      }

      free(v2);
      *(a1 + 64) = 0;
    }
  }
}

uint64_t SlimDecompressionPluginClass_copyPixelBufferAttributes(uint64_t a1, _DWORD *a2, CFTypeRef *a3)
{
  v5 = *(a1 + 64);
  cf = 0;
  v6 = SlimVideoDecoder_CopyPixelBufferAttributesInternal(*(v5 + 24), &cf);
  if (v6)
  {
    v7 = v6;
  }

  else if (FigCFDictionaryGetInt32IfPresent())
  {
    if (a2)
    {
      *a2 = 0;
    }

    v7 = 0;
    if (a3)
    {
      *a3 = cf;
      return v7;
    }
  }

  else
  {
    v7 = 4294950301;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t SlimDecompressionPluginClass_getDecoderRestrictions(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v2 = *(a1 + 64);
  *a2 = 0x1000000010;
  *(a2 + 56) = 0x7FFFFFFF;
  *(a2 + 48) = 0x7FFFFFFF00000002;
  *(a2 + 16) = xmmword_1A5AB59E0;
  *(a2 + 32) = xmmword_1A5AB59F0;
  v3 = SlimVideoDecoder_CopyDecoderRestrictionsInternal(*(v2 + 24), &cf);
  v4 = cf;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = cf == 0;
  }

  if (!v5)
  {
    CMPhotoCFDictionaryGetIntIfPresent();
    CMPhotoCFDictionaryGetIntIfPresent();
    v4 = cf;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

uint64_t SlimDecompressionPluginClass_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 56);

  return v8(a1, a3, a4, v9, a2);
}

void _dispatch_decodeAsync(void *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  SlimVideoDecoder_DecodeFrameInternal(*(a1 + 1), *(a1 + 2), *(a1 + 4), *(a1 + 5), SlimDecompressionPluginClass_callback, v2, *(a1 + 3));
  if (*v3 == 1)
  {
    kdebug_trace();
  }

  v4 = *(a1 + 2);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 4);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 5);
  if (v6)
  {
    CFRelease(v6);
  }

  free(a1);
}

unint64_t *vectorWritePacked(unint64_t *result, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(a2 + v3);
    v5 += v6 << v4;
    v4 += a3;
    if (v4 >= 64)
    {
      *result++ = v5;
      v5 = v6 >> (a3 - (v4 - 64));
      v4 -= 64;
    }

    v3 += 2;
  }

  while (v3 != 16);
  if (v4 >= 1)
  {
    v7 = v4 + 8;
    do
    {
      *result = v5;
      result = (result + 1);
      v5 >>= 8;
      v7 -= 8;
    }

    while (v7 > 8);
  }

  return result;
}

uint64_t YZipEncodeFindFormat(uint64_t a1, int *a2)
{
  if (!a1)
  {
    v5 = 17;
    result = 4294951896;
    if (!a2)
    {
      return result;
    }

    goto LABEL_76;
  }

  v3 = *(a1 + 32);
  if (v3 > 1936077361)
  {
    if (v3 <= 1953903151)
    {
      if (v3 <= 1937126451)
      {
        if (v3 <= 1937125935)
        {
          if (v3 == 1936077362)
          {
            goto LABEL_70;
          }

          v7 = 1936077876;
          goto LABEL_67;
        }

        if (v3 == 1937125936)
        {
          goto LABEL_61;
        }

        v8 = 1937125938;
LABEL_59:
        if (v3 != v8)
        {
          goto LABEL_74;
        }

        goto LABEL_70;
      }

      if (v3 > 1952854577)
      {
        if (v3 == 1952854578)
        {
          goto LABEL_70;
        }

        v7 = 1952855092;
        goto LABEL_67;
      }

      if (v3 != 1937126452)
      {
        v6 = 1952854576;
        goto LABEL_44;
      }
    }

    else
    {
      if (v3 > 2016686641)
      {
        if (v3 > 2019963439)
        {
          if (v3 != 2019963440)
          {
            if (v3 != 2019963442)
            {
              v7 = 2019963956;
              goto LABEL_67;
            }

LABEL_70:
            result = 0;
            v5 = 11;
            if (!a2)
            {
              return result;
            }

            goto LABEL_76;
          }

LABEL_61:
          result = 0;
          v5 = 10;
          if (!a2)
          {
            return result;
          }

          goto LABEL_76;
        }

        if (v3 == 2016686642)
        {
          goto LABEL_70;
        }

        v7 = 2016687156;
LABEL_67:
        if (v3 != v7)
        {
LABEL_74:
          v5 = 17;
          result = 4294951891;
LABEL_75:
          if (!a2)
          {
            return result;
          }

          goto LABEL_76;
        }

        goto LABEL_68;
      }

      if (v3 <= 1953903667)
      {
        if (v3 == 1953903152)
        {
          goto LABEL_61;
        }

        v8 = 1953903154;
        goto LABEL_59;
      }

      if (v3 != 1953903668)
      {
        v6 = 2016686640;
        goto LABEL_44;
      }
    }

LABEL_68:
    result = 0;
    v5 = 12;
    if (!a2)
    {
      return result;
    }

    goto LABEL_76;
  }

  result = 0;
  if (v3 <= 1278226535)
  {
    if (v3 <= 875836517)
    {
      if (v3 > 875704933)
      {
        if (v3 != 875704934 && v3 != 875704950)
        {
          goto LABEL_74;
        }

        result = 0;
        v5 = 8;
        if (!a2)
        {
          return result;
        }
      }

      else
      {
        if (v3 != 875704422 && v3 != 875704438)
        {
          goto LABEL_74;
        }

        result = 0;
        v5 = 7;
        if (!a2)
        {
          return result;
        }
      }

      goto LABEL_76;
    }

    if (v3 <= 1111970368)
    {
      if (v3 != 875836518 && v3 != 875836534)
      {
        goto LABEL_74;
      }

      result = 0;
      v5 = 9;
      if (!a2)
      {
        return result;
      }

      goto LABEL_76;
    }

    if (v3 == 1111970369)
    {
      result = 0;
      v5 = 14;
      if (!a2)
      {
        return result;
      }

      goto LABEL_76;
    }

    v10 = 12344;
LABEL_73:
    v5 = 0;
    if (v3 == (v10 | 0x4C300000))
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (v3 <= 1651925815)
  {
    if ((v3 - 1278226736) <= 6 && ((1 << (v3 - 48)) & 0x45) != 0)
    {
LABEL_29:
      v5 = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_76;
    }

    v10 = 12392;
    goto LABEL_73;
  }

  if (v3 > 1751410031)
  {
    if (v3 != 1751410032)
    {
      v5 = 0;
      if (v3 == 1751411059)
      {
        goto LABEL_75;
      }

      v6 = 1936077360;
LABEL_44:
      if (v3 != v6)
      {
        goto LABEL_74;
      }

      goto LABEL_61;
    }

    goto LABEL_29;
  }

  if (v3 != 1651925816 && v3 != 1652056888)
  {
    goto LABEL_74;
  }

  v9 = *(a1 + 8360);
  if (v9 >= 9)
  {
    goto LABEL_74;
  }

  result = dword_1A5AB5A30[v9];
  v5 = dword_1A5AB5A54[v9];
  if (!a2)
  {
    return result;
  }

LABEL_76:
  *a2 = v5;
  return result;
}

uint64_t YZipEncodeFindDataLength(uint64_t a1, uint64_t *a2)
{
  max_payload_size = a1;
  v9 = 17;
  if (a1)
  {
    Format = YZipEncodeFindFormat(a1, &v9);
    if (Format)
    {
      v5 = Format;
      max_payload_size = 0;
    }

    else
    {
      CMPhotoGetBitDepthForPixelFormat(*(max_payload_size + 32));
      if (yzip_codec_create())
      {
        v6 = yzip_image_create();
        if (v6)
        {
          v7 = v6;
          max_payload_size = yzip_image_get_max_payload_size();
          if (max_payload_size)
          {
            v5 = 0;
          }

          else
          {
            v5 = 4294951893;
          }

          MEMORY[0x1AC553AF0](v7);
        }

        else
        {
          max_payload_size = 0;
          v5 = 4294951895;
        }

        yzip_codec_destroy();
      }

      else
      {
        max_payload_size = 0;
        v5 = 4294951895;
      }
    }
  }

  else
  {
    v5 = 4294951896;
  }

  if (a2)
  {
    *a2 = max_payload_size;
  }

  return v5;
}

uint64_t YZipEncodeFrame(uint64_t a1, uint64_t *a2)
{
  v10 = 17;
  if (!a1 || (*(a1 + 40) - 3) < 0xFFFFFFFFFFFFFFFELL || (*(a1 + 48) - 3) < 0xFFFFFFFE)
  {
    return 4294951896;
  }

  Format = YZipEncodeFindFormat(a1, &v10);
  if (!Format)
  {
    CMPhotoGetBitDepthForPixelFormat(*(a1 + 32));
    if (yzip_codec_create())
    {
      v6 = yzip_image_create();
      if (v6)
      {
        v7 = v6;
        if (yzip_image_get_max_payload_size())
        {
          if (*(a1 + 40))
          {
            v8 = 0;
            do
            {
              yzip_image_set_plane_data();
              ++v8;
            }

            while (*(a1 + 40) > v8);
          }

          v9 = yzip_image_encode();
          *a2 = v9;
          if (v9)
          {
            Format = 0;
          }

          else
          {
            Format = 4294951894;
          }
        }

        else
        {
          Format = 4294951893;
        }

        MEMORY[0x1AC553AF0](v7);
      }

      else
      {
        Format = 4294951895;
      }

      yzip_codec_destroy();
    }

    else
    {
      return 4294951895;
    }
  }

  return Format;
}

uint64_t UncompressedCopyFrame(unsigned int *a1, CVPixelBufferRef pixelBuffer, OpaqueCMBlockBuffer *a3, uint64_t *a4)
{
  if (!pixelBuffer)
  {
    return 4294951896;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
  if (CVPixelBufferGetPlaneCount(pixelBuffer) < 2 || CVPixelBufferGetPlaneCount(pixelBuffer) == 1)
  {
    v10 = *(a1 + 8);
    v12 = a1[1];
    v11 = a1[2];
    IsPackedRAW = CMPhotoPixelFormatIsPackedRAW(PixelFormatType);
    v14 = *a1;
    if (IsPackedRAW)
    {
      v15 = CMPhotoAlignValue(5 * ((v14 + 3) >> 2), 0x140uLL);
      if (!v12)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v17 = BytesPerPixelForPixelFormat * v14;
      if (PixelFormatType == 1647719528)
      {
        v15 = 2 * v17;
      }

      else
      {
        v15 = v17;
      }

      if (PixelFormatType == 1647719528)
      {
        v12 >>= 1;
      }

      if (!v12)
      {
LABEL_39:
        v23 = 0;
LABEL_40:
        v16 = 0;
        if (a4)
        {
          *a4 = v23;
        }

        return v16;
      }
    }

    v18 = *MEMORY[0x1E695E480];
    v19 = *MEMORY[0x1E695E498];
    v46 = v15 * v12;
    while (1)
    {
      v20 = CFDataCreate(v18, v10, v15);
      HIDWORD(customBlockSource.AllocateBlock) = 0;
      *&customBlockSource.version = 0;
      customBlockSource.FreeBlock = _bufFreeBlockCallback;
      customBlockSource.refCon = v20;
      MutableBytePtr = CFDataGetMutableBytePtr(v20);
      appended = CMBlockBufferAppendMemoryBlock(a3, MutableBytePtr, v15, v19, &customBlockSource, 0, v15, 0);
      if (appended)
      {
        break;
      }

      v10 += v11;
      if (!--v12)
      {
        v23 = v46;
        goto LABEL_40;
      }
    }

    v16 = appended;
    if (v20)
    {
      v40 = v20;
LABEL_46:
      CFRelease(v40);
    }

    return v16;
  }

  if (!CVPixelBufferGetPlaneCount(pixelBuffer))
  {
    goto LABEL_39;
  }

  v43 = BytesPerPixelForPixelFormat;
  v24 = 0;
  v23 = 0;
  v25 = a1 + 16;
  v26 = a1 + 2;
  allocator = *MEMORY[0x1E695E480];
  v27 = *MEMORY[0x1E695E498];
  v42 = a4;
  v45 = PixelFormatType;
  while (1)
  {
    v28 = *&v25[2 * v24];
    v29 = v26[v24];
    v49 = 0;
    if (CMPhotoPixelFormatIsSubsampled(PixelFormatType, &v49 + 1, &v49, 0, 0))
    {
      return 4294951894;
    }

    v30 = v24;
    v31 = a1[1];
    v44 = v30;
    if (v30 && v49)
    {
      v31 = (v31 + 1) >> 1;
LABEL_25:
      v32 = *a1;
      if (HIBYTE(v49))
      {
        v33 = v32 + (v32 | 0xFFFFFFFE) + 2;
      }

      else
      {
        v33 = 2 * v32;
      }

      goto LABEL_29;
    }

    if (v30)
    {
      goto LABEL_25;
    }

    v33 = *a1;
LABEL_29:
    v34 = v33;
    v35 = CMPhotoPixelFormatIsPackedYUV(v45) ? 4 * (((v34 + 2) * 0x5555555555555556uLL) >> 64) : v43 * v34;
    if (v31)
    {
      break;
    }

LABEL_37:
    v24 = v44 + 1;
    PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
    v25 = a1 + 16;
    a4 = v42;
    PixelFormatType = v45;
    v26 = a1 + 2;
    if (PlaneCount <= v44 + 1)
    {
      goto LABEL_40;
    }
  }

  v47 = v23 + v31 * v35;
  while (1)
  {
    v36 = CFDataCreate(allocator, v28, v35);
    HIDWORD(customBlockSource.AllocateBlock) = 0;
    *&customBlockSource.version = 0;
    customBlockSource.FreeBlock = _bufFreeBlockCallback;
    customBlockSource.refCon = v36;
    v37 = CFDataGetMutableBytePtr(v36);
    v38 = CMBlockBufferAppendMemoryBlock(a3, v37, v35, v27, &customBlockSource, 0, v35, 0);
    if (v38)
    {
      break;
    }

    v28 += v29;
    if (!--v31)
    {
      v23 = v47;
      goto LABEL_37;
    }
  }

  v16 = v38;
  if (v36)
  {
    v40 = v36;
    goto LABEL_46;
  }

  return v16;
}

void _bufFreeBlockCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t HrlcEncodeFrame(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v5 = setjmp(v19 + 1);
  if (!v5)
  {
    v6 = *(a1 + 88);
    v7 = *(a1 + 56);
    *(&v13 + 1) = v6 + v7;
    HIDWORD(v12) = *(a1 + 8);
    if (v7 >= 0x10)
    {
      v8 = v6;
      *v6 = 1399614808;
      *(v6 + 4) = v4;
      v9 = *(a1 + 4);
      *(v6 + 8) = *a1;
      *(v6 + 10) = v9;
      *(v6 + 14) = *(a1 + 8356);
      v10 = v6 + 16;
      *&v13 = v6 + 16;
      *&v17 = a1;
      DWORD1(v14) = 0;
      BYTE8(v14) = 0;
      if (*(a1 + 120))
      {
        v5 = 0;
      }

      else
      {
        HIDWORD(v18) = 0;
        LODWORD(v19[0]) = 0;
        if (v4 == 1278226488)
        {
          v5 = SlimHrlcEncode_C(a1, &v12);
          v10 = v13;
          v8 = *(a1 + 88);
        }

        else
        {
          v5 = 4294951891;
        }
      }

      *a2 = v10 - v8;
    }

    else
    {
      return 4294951888;
    }
  }

  return v5;
}

uint64_t IntcEncodeFrame(__CVBuffer *a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + 32);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v7 = setjmp(v24 + 1);
  if (!v7)
  {
    v9 = *(a2 + 56);
    *&v18 = *(a2 + 88);
    v8 = v18;
    *(&v18 + 1) = v18 + v9;
    HIDWORD(v17) = *(a2 + 8);
    if (v9 >= 0x10)
    {
      *v18 = 1399614808;
      *(v8 + 4) = v6;
      IsAGXVersatile = CMPhotoPixelFormatIsAGXVersatile(v6);
      v11 = *a2;
      if (IsAGXVersatile)
      {
        v11 >>= 1;
        v12 = *(a2 + 4) >> 1;
      }

      else
      {
        v12 = *(a2 + 4);
      }

      *(v8 + 8) = v11;
      *(v8 + 10) = v12;
      *(v8 + 12) = 0;
      v13 = v18 + 14;
      *&v18 = v18 + 14;
      *&v22 = a2;
      DWORD1(v19) = 0;
      BYTE8(v19) = 0;
      if (*(a2 + 120))
      {
        v14 = 0;
        v15 = v13;
      }

      else
      {
        HIDWORD(v23) = 0;
        LODWORD(v24[0]) = 0;
        v14 = CMPhotoInterchangeCompactEncode(a1, a2, &v17);
        v15 = v18;
      }

      *a3 = v15 - *(a2 + 88);
      return v14;
    }

    else
    {
      return 4294951888;
    }
  }

  return v7;
}

uint64_t SlimXEncodeFrame(unint64_t a1, void *a2)
{
  v4 = *(a1 + 64);
  v5 = *a1;
  v6 = *(a1 + 4);
  v7 = *(a1 + 8352);
  v8 = *(a1 + 8360);
  v9 = *(a1 + 32);
  v132 = 0;
  memset(v131, 0, sizeof(v131));
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v124 = 0u;
  v10 = setjmp(v131 + 1);
  if (!v10)
  {
    v123 = a2;
    v11 = *(a1 + 88);
    v120 = v5;
    v12 = v11 + *(a1 + 56);
    v13 = *(a1 + 4);
    HIDWORD(v124) = *(a1 + 8);
    *(v11 + 8) = *a1;
    *v11 = 1399614808;
    *(v11 + 4) = v9;
    *(v11 + 10) = v13;
    *&v125 = v11 + 14;
    *(&v125 + 1) = v12;
    v129 = a1;
    BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(v9);
    v15 = BytesPerPixelForPixelFormat;
    DWORD1(v126) = 0;
    BYTE8(v126) = 0;
    LODWORD(v130) = 64;
    DWORD1(v130) = v5;
    v16 = *(a1 + 120);
    v17 = v16;
    if (v16 <= 7)
    {
      if (v16)
      {
        v18 = 10 - v16;
      }

      else
      {
        v18 = 0;
      }

      HIDWORD(v130) = v17;
      LODWORD(v131[0]) = v18;
LABEL_10:
      v122 = v4;
      v10 = 4294951891;
      v19 = v6;
      if (v9 <= 1651926375)
      {
        if (v9 > 1278226535)
        {
          if (v9 <= 1647719527)
          {
            if (v9 > 1278226741)
            {
              if (v9 != 1278226742)
              {
                if (v9 == 1380411457)
                {
                  v10 = 4294951892;
                  if (((v120 + 3) & 0xFFFFFFFC) > (HIDWORD(v124) / BytesPerPixelForPixelFormat) || ((v6 + 3) & 0xFFFFFFFC) > v6 + *(a1 + 24))
                  {
                    goto LABEL_355;
                  }

                  LODWORD(v126) = 12;
                  if (v7 == -1)
                  {
                    v61 = 0;
                  }

                  else
                  {
                    if (v7 > 0xF)
                    {
                      goto LABEL_271;
                    }

                    v61 = v7;
                  }

                  *(v11 + 12) = v61;
                  DWORD1(v126) = v61;
                  if (v6 >= 1)
                  {
                    v100 = 0;
                    while (1)
                    {
                      encodeStripStart(&v124, v100);
                      if (v120 >= 1)
                      {
                        break;
                      }

LABEL_318:
                      v100 += 4;
                      v10 = 0;
                      if (v100 >= v6)
                      {
                        goto LABEL_355;
                      }
                    }

                    v101 = 0;
                    v102 = 0;
                    while (1)
                    {
                      *&v124 = v4 + (v102 & 0xFFFFFFE0) + (HIDWORD(v124) * v100);
                      v33 = SlimXEncodeBlocks_NEON(&v124);
                      if (v33)
                      {
                        goto LABEL_353;
                      }

                      v102 += 32;
                      v101 += 4;
                      if (v120 <= v101)
                      {
                        goto LABEL_318;
                      }
                    }
                  }

                  goto LABEL_354;
                }

                if (v9 != 1647589490)
                {
                  goto LABEL_355;
                }

                v10 = 4294951892;
                if (((v120 + 3) & 0xFFFFFFFC) > (HIDWORD(v124) / BytesPerPixelForPixelFormat) || ((v6 + 3) & 0xFFFFFFFC) > v6 + *(a1 + 24))
                {
                  goto LABEL_355;
                }

                LODWORD(v126) = 19;
                if (v7 == -1)
                {
                  v27 = 0;
                }

                else
                {
                  if (v7 > 0xF)
                  {
                    goto LABEL_271;
                  }

                  v27 = v7;
                }

                *(v11 + 12) = v27;
                DWORD1(v126) = v27;
                if (v6 >= 1)
                {
                  v94 = 0;
                  while (1)
                  {
                    encodeStripStart(&v124, v94);
                    if (v120 >= 1)
                    {
                      break;
                    }

LABEL_300:
                    v94 += 4;
                    v10 = 0;
                    if (v94 >= v6)
                    {
                      goto LABEL_355;
                    }
                  }

                  v95 = 0;
                  v96 = 0;
                  while (1)
                  {
                    *&v124 = v4 + (v96 & 0xFFFFFFF8) + (HIDWORD(v124) * v94);
                    v33 = SlimXEncodeBlocks_NEON(&v124);
                    if (v33)
                    {
                      goto LABEL_353;
                    }

                    v96 += 24;
                    v95 += 4;
                    if (v120 <= v95)
                    {
                      goto LABEL_300;
                    }
                  }
                }

                goto LABEL_354;
              }
            }

            else if (v9 != 1278226536)
            {
              if (v9 != 1278226736)
              {
                v20 = 1278226738;
                goto LABEL_97;
              }

LABEL_98:
              v35 = v11;
              v36 = BytesPerPixelForPixelFormat;
              if (CMPhotoGetBitDepthForPixelFormat(v9) == 8)
              {
                LOWORD(v37) = 0;
              }

              else
              {
                v37 = 16 - CMPhotoGetBitDepthForPixelFormat(v9);
              }

              v38 = v37;
              v15 = v36;
              if (v7 == -1)
              {
                goto LABEL_104;
              }

              if (v7 <= 0xF)
              {
                v38 = v7;
LABEL_104:
                *(v35 + 12) = v38;
                DWORD1(v126) = v38;
                goto LABEL_105;
              }

LABEL_271:
              v10 = 4294951896;
              goto LABEL_355;
            }

LABEL_117:
            if (v17)
            {
              goto LABEL_355;
            }

            v10 = 4294951892;
            if (((v120 + 15) & 0xFFFFFFF0) > (HIDWORD(v124) / BytesPerPixelForPixelFormat) || ((v6 + 3) & 0xFFFFFFFC) > v6 + *(a1 + 24))
            {
              goto LABEL_355;
            }

            LODWORD(v126) = 24;
            if (v7 == -1)
            {
              *(v11 + 12) = 4;
              DWORD1(v126) = 4;
              BYTE8(v126) = 1;
            }

            else
            {
              if (v7 > 0xF)
              {
                goto LABEL_271;
              }

              *(v11 + 12) = v7;
              DWORD1(v126) = v7;
            }

            if (v6 >= 1)
            {
              v74 = 0;
              v75 = v4;
              while (1)
              {
                v76 = 0;
                while (1)
                {
                  v77 = v11;
                  v78 = v74;
                  encodeStripStart(&v124, v76);
                  v74 = v78;
                  if (v120 >= 1)
                  {
                    break;
                  }

LABEL_252:
                  v76 += 4;
                  v10 = v74;
                  v11 = v77;
                  if (v76 >= v19)
                  {
                    goto LABEL_355;
                  }
                }

                v79 = 0;
                v80 = v75;
                while (1)
                {
                  *&v124 = v80 + (v76 * HIDWORD(v124));
                  v81 = SlimXEncodeBlocks_NEON(&v124);
                  if (v81)
                  {
                    break;
                  }

                  v80 += 32;
                  v79 += 16;
                  if (v120 <= v79)
                  {
                    v74 = 0;
                    goto LABEL_252;
                  }
                }

                v10 = v81;
                if (v81 != -15409 || !BYTE8(v126))
                {
                  goto LABEL_355;
                }

                v11 = v77;
                v75 = *(a1 + 64);
                *&v125 = *(a1 + 88) + 14;
                DWORD1(v126) = 0;
                *(v77 + 12) = 0;
                BYTE8(v126) = 0;
                v74 = 4294951887;
              }
            }

            goto LABEL_354;
          }

          if (v9 <= 1651519797)
          {
            if (v9 != 1647719528)
            {
              if (v9 != 1650942776)
              {
                v23 = 1650943796;
                goto LABEL_75;
              }

              goto LABEL_81;
            }

            v10 = 4294951892;
            if (((v120 + 7) & 0xFFFFFFF8) > ((HIDWORD(v124) >> 1) / BytesPerPixelForPixelFormat) || ((v6 + 7) & 0xFFFFFFF8) > v6 + *(a1 + 24))
            {
              goto LABEL_355;
            }

            if ((v8 & 0xFFFFFFFE) == 6)
            {
              LODWORD(v126) = 23;
              if (v7 == -1)
              {
                v59 = 0;
              }

              else
              {
                if (v7 > 0xF)
                {
                  goto LABEL_271;
                }

                v59 = v7;
              }

              *(v11 + 12) = v59;
              DWORD1(v126) = v59;
              if (v6 >= 1)
              {
                v104 = 16 * BytesPerPixelForPixelFormat;
                v105 = 0;
                v106 = 0;
                while (1)
                {
                  encodeStripStart(&v124, v105);
                  if (v120 >= 1)
                  {
                    break;
                  }

LABEL_333:
                  v105 += 8;
                  v106 += 4;
                  v10 = 0;
                  if (v105 >= v6)
                  {
                    goto LABEL_355;
                  }
                }

                v107 = 0;
                v108 = v122;
                while (1)
                {
                  *&v124 = v108 + (v106 * HIDWORD(v124));
                  v33 = SlimXEncodeBlocks_NEON(&v124);
                  if (v33)
                  {
                    goto LABEL_353;
                  }

                  v108 += v104;
                  v107 += 8;
                  if (v120 <= v107)
                  {
                    goto LABEL_333;
                  }
                }
              }

              goto LABEL_354;
            }

LABEL_321:
            v10 = 4294951891;
            goto LABEL_355;
          }

          if (v9 == 1651519798 || v9 == 1651847472)
          {
LABEL_126:
            if (v8 > 3)
            {
              if (v8 == 4)
              {
                v40 = 4;
                v45 = 16;
                if (v9 > 1651925815)
                {
                  v41 = 0;
                  if (v9 != 1651925816)
                  {
                    v46 = v120;
                    if (v9 == 1651926376)
                    {
                      v42 = 15;
                      v73 = 4;
                      v40 = 16;
                      goto LABEL_267;
                    }

                    v43 = 16;
                    v44 = 4;
                    if (v9 != 1652056888)
                    {
                      goto LABEL_235;
                    }

                    goto LABEL_221;
                  }

LABEL_220:
                  v46 = v120;
                  goto LABEL_221;
                }

                v54 = 24;
                if (v9 != 1651519798)
                {
                  v71 = 16;
                  v72 = 4;
                  v43 = 16;
LABEL_230:
                  v44 = v40;
                  v46 = v120;
                  if (v9 != 1651847472)
                  {
                    goto LABEL_235;
                  }

                  goto LABEL_234;
                }

                v71 = 16;
LABEL_233:
                v72 = v40;
                v46 = v120;
LABEL_234:
                LODWORD(v126) = v54;
                v43 = v71;
                v44 = v72;
LABEL_235:
                if (v9 == 1651519798)
                {
                  v70 = v44;
                  v40 = v43;
                  if (*(a1 + 8364))
                  {
                    v40 = 16;
                    if (v8 >= 4)
                    {
                      v70 = v8;
                      if (v8 != 4)
                      {
                        goto LABEL_321;
                      }

                      goto LABEL_268;
                    }

                    v73 = 4;
                    v42 = 21;
                    goto LABEL_267;
                  }

LABEL_268:
                  if (v7 == -1)
                  {
                    v84 = 0;
                  }

                  else
                  {
                    if (v7 > 0xF)
                    {
                      goto LABEL_271;
                    }

                    v84 = v7;
                  }

                  *(v11 + 12) = v84;
                  DWORD1(v126) = v84;
LABEL_274:
                  v85 = v70;
                  v10 = 4294951892;
                  if (((v46 + v40 - 1) & -v40) > (HIDWORD(v124) / v15) || ((v6 + v85 - 1) & -v85) > v6 + *(a1 + 24))
                  {
                    goto LABEL_355;
                  }

                  if (v6 >= 1)
                  {
                    v86 = 0;
                    v87 = v40;
                    v88 = v15 * v40;
                    while (1)
                    {
                      encodeStripStart(&v124, v86);
                      if (v120 >= 1)
                      {
                        break;
                      }

LABEL_282:
                      v86 += v85;
                      v10 = 0;
                      if (v86 >= v19)
                      {
                        goto LABEL_355;
                      }
                    }

                    v89 = 0;
                    v90 = v122;
                    while (1)
                    {
                      *&v124 = v90 + (v86 * HIDWORD(v124));
                      v33 = SlimXEncodeBlocks_NEON(&v124);
                      if (v33)
                      {
                        goto LABEL_353;
                      }

                      v89 += v87;
                      v90 += v88;
                      if (v89 >= v120)
                      {
                        goto LABEL_282;
                      }
                    }
                  }

                  goto LABEL_354;
                }

                v40 = v43;
                v70 = v44;
LABEL_240:
                if (v9 == 1652056888 || v9 == 1651925816)
                {
                  DWORD1(v126) = 0;
                  *(v11 + 12) = 0;
                  goto LABEL_274;
                }

                goto LABEL_268;
              }

              if (v8 != 5 && v8 != 8)
              {
                goto LABEL_355;
              }

              v40 = 8;
              if (v9 > 1651925815)
              {
                v41 = 3;
                if (v9 != 1651925816)
                {
                  if (v9 == 1651926376)
                  {
                    v42 = 14;
                    goto LABEL_266;
                  }

LABEL_138:
                  v43 = 8;
                  v44 = 8;
                  v45 = 8;
                  v46 = v120;
                  if (v9 != 1652056888)
                  {
                    goto LABEL_235;
                  }

LABEL_221:
                  v69 = v40;
                  LODWORD(v126) = v41;
                  v40 = v45;
                  v70 = v69;
                  goto LABEL_240;
                }

                goto LABEL_219;
              }

              v54 = 22;
            }

            else
            {
              if (v8 >= 4)
              {
                goto LABEL_355;
              }

              v40 = 8;
              if (v9 > 1651925815)
              {
                v41 = 2;
                if (v9 != 1651925816)
                {
                  if (v9 == 1651926376)
                  {
                    v42 = 13;
LABEL_266:
                    v73 = 8;
                    v46 = v120;
LABEL_267:
                    LODWORD(v126) = v42;
                    v70 = v73;
                    goto LABEL_268;
                  }

                  goto LABEL_138;
                }

LABEL_219:
                v45 = 8;
                goto LABEL_220;
              }

              v54 = 20;
            }

            if (v9 != 1651519798)
            {
              v71 = 8;
              v72 = 8;
              v43 = 8;
              goto LABEL_230;
            }

            v71 = 8;
            goto LABEL_233;
          }

          v34 = 1651925816;
LABEL_125:
          if (v9 != v34)
          {
            goto LABEL_355;
          }

          goto LABEL_126;
        }

        if (v9 <= 875704949)
        {
          if (v9 <= 875704421)
          {
            if (v9 != 825306677 && v9 != 825437747)
            {
              goto LABEL_355;
            }

            goto LABEL_117;
          }

          if (v9 != 875704422 && v9 != 875704438)
          {
            v21 = 875704934;
LABEL_46:
            if (v9 != v21)
            {
              goto LABEL_355;
            }
          }

LABEL_105:
          if ((v9 & 0xFFFFFFFD) == 0x4C303130)
          {
            v25 = 1.0;
          }

          else
          {
            v25 = 0.8;
          }

          v24 = v120;
LABEL_109:
          v10 = 4294951892;
          if (((v24 + 15) & 0xFFFFFFF0) > (HIDWORD(v124) / v15) || ((v6 + 3) & 0xFFFFFFFC) > v6 + *(a1 + 24))
          {
            goto LABEL_355;
          }

          v121 = v15;
          if (CMPhotoGetBitDepthForPixelFormat(v9) == 8)
          {
            LODWORD(v126) = 0;
          }

          else
          {
            if (CMPhotoGetBitDepthForPixelFormat(v9) == 10)
            {
              v39 = 10;
            }

            else if (v9 == 1751527984)
            {
              v39 = 15;
            }

            else
            {
              v39 = 24;
            }

            LODWORD(v126) = v39;
          }

          if (v6 >= 1)
          {
            v62 = 0;
            while (1)
            {
              encodeStripStart(&v124, (v25 * v62));
              if (v120 >= 1)
              {
                break;
              }

LABEL_199:
              v62 += 4;
              if (v62 >= v19)
              {
                goto LABEL_200;
              }
            }

            v63 = 0;
            v64 = v4;
            while (1)
            {
              *&v124 = v64 + v62 * HIDWORD(v124);
              v33 = SlimXEncodeBlocks_NEON(&v124);
              if (v33)
              {
                goto LABEL_353;
              }

              v64 += 16 * v121;
              v63 += 16;
              if (v120 <= v63)
              {
                goto LABEL_199;
              }
            }
          }

LABEL_200:
          v10 = 0;
          if (v9 <= 1278226735)
          {
            if ((v9 - 1278226488) <= 0x30 && ((1 << (v9 - 56)) & 0x1400000000001) != 0)
            {
              goto LABEL_355;
            }

            v65 = 825437747;
          }

          else if (v9 > 1717856626)
          {
            if (v9 > 1751411058)
            {
              v65 = 1932996149;
            }

            else
            {
              v65 = 1751410032;
            }
          }

          else
          {
            if ((v9 - 1278226736) <= 6 && ((1 << (v9 - 48)) & 0x45) != 0)
            {
              goto LABEL_355;
            }

            v65 = 1717855600;
          }

          if (v9 != v65)
          {
            v82 = *(a1 + 72);
            HIDWORD(v124) = *(a1 + 12);
            if (BYTE8(v130))
            {
              HIDWORD(v130) = 0;
            }

            if (CMPhotoGetBitDepthForPixelFormat(v9) == 8)
            {
              LODWORD(v126) = 1;
              v83 = v120;
            }

            else
            {
              v83 = v120;
              if (CMPhotoGetBitDepthForPixelFormat(v9) == 10)
              {
                v103 = 11;
              }

              else if (v9 == 1751527984)
              {
                v103 = 16;
              }

              else
              {
                v103 = 25;
              }

              LODWORD(v126) = v103;
            }

            if (CMPhotoPixelFormatIs444(v9))
            {
              v109 = 2;
              v110 = 1;
            }

            else
            {
              if (CMPhotoPixelFormatIs422(v9))
              {
                v110 = 1;
              }

              else
              {
                v110 = 2;
              }

              v109 = 1;
            }

            v111 = v19 / v110;
            if (v19 / v110 >= 1)
            {
              v112 = v82;
              v119 = 41 * v19;
              v113 = 9 * v110;
              v114 = v109 * v83;
              v115 = 0;
              while (1)
              {
                encodeStripStart(&v124, (v119 + v113 * v115) / 50);
                if (v114 >= 1)
                {
                  break;
                }

LABEL_351:
                v115 += 4;
                v10 = 0;
                if (v115 >= v111)
                {
                  goto LABEL_355;
                }
              }

              v116 = 0;
              v117 = v112;
              while (1)
              {
                *&v124 = v117 + (v115 * HIDWORD(v124));
                v33 = SlimXEncodeBlocks_NEON(&v124);
                if (v33)
                {
                  break;
                }

                v117 += 16 * v121;
                v116 += 16;
                if (v114 <= v116)
                {
                  goto LABEL_351;
                }
              }

LABEL_353:
              v10 = v33;
              goto LABEL_355;
            }

LABEL_354:
            v10 = 0;
          }

LABEL_355:
          *v123 = v125 - *(a1 + 88);
          return v10;
        }

        if (v9 <= 1111970368)
        {
          if (v9 != 875704950 && v9 != 875836518)
          {
            v21 = 875836534;
            goto LABEL_46;
          }

          goto LABEL_105;
        }

        v24 = v120;
        if (v9 == 1111970369)
        {
          v10 = 4294951892;
          if (((v120 + 3) & 0xFFFFFFFC) > (HIDWORD(v124) / BytesPerPixelForPixelFormat) || ((v6 + 3) & 0xFFFFFFFC) > v6 + *(a1 + 24))
          {
            goto LABEL_355;
          }

          LODWORD(v126) = 6;
          if (v7 == -1)
          {
            v55 = 0;
          }

          else
          {
            if (v7 > 0xF)
            {
              goto LABEL_271;
            }

            v55 = v7;
          }

          *(v11 + 12) = v55;
          DWORD1(v126) = v55;
          if (v6 >= 1)
          {
            v91 = 0;
            while (1)
            {
              encodeStripStart(&v124, v91);
              if (v120 >= 1)
              {
                break;
              }

LABEL_291:
              v91 += 4;
              v10 = 0;
              if (v91 >= v6)
              {
                goto LABEL_355;
              }
            }

            v92 = 0;
            v93 = v122;
            while (1)
            {
              *&v124 = v93 + (v91 * HIDWORD(v124));
              v33 = SlimXEncodeBlocks_NEON(&v124);
              if (v33)
              {
                goto LABEL_353;
              }

              v93 += 16;
              v92 += 4;
              if (v120 <= v92)
              {
                goto LABEL_291;
              }
            }
          }

          goto LABEL_354;
        }

        v25 = 1.0;
        if (v9 == 1278226488)
        {
          goto LABEL_109;
        }

        if (v9 != 1278226534)
        {
          goto LABEL_355;
        }

LABEL_57:
        if (!v17)
        {
          while ((v6 & ~(v6 >> 31)) != v17)
          {
            *&v124 = v4 + HIDWORD(v124) * v17;
            v26 = v17 + 1;
            v10 = SlimXEncodeF32Row(&v124, v6 - 1 == v17);
            v17 = v26;
            if (v10)
            {
              goto LABEL_355;
            }
          }

          goto LABEL_354;
        }

        goto LABEL_355;
      }

      if (v9 > 1815162993)
      {
        if (v9 <= 1936077359)
        {
          if (v9 > 1885745711)
          {
            if (v9 != 1885745712)
            {
              if (v9 != 1919378232)
              {
                v23 = 1919379252;
LABEL_75:
                if (v9 != v23)
                {
                  goto LABEL_355;
                }

LABEL_76:
                v10 = 4294951892;
                if (((v120 + 7) & 0xFFFFFFF8) > (HIDWORD(v124) / BytesPerPixelForPixelFormat) || ((v6 + 7) & 0xFFFFFFF8) > v6 + *(a1 + 24))
                {
                  goto LABEL_355;
                }

                LODWORD(v126) = 17;
                if (v7 == -1)
                {
                  v28 = 4;
                }

                else
                {
                  if (v7 > 0xF)
                  {
                    goto LABEL_271;
                  }

                  v28 = v7;
                }

                *(v11 + 12) = v28;
                DWORD1(v126) = v28;
                if (v6 >= 1)
                {
                  v66 = 0;
                  while (1)
                  {
                    encodeStripStart(&v124, v66);
                    if (v120 >= 1)
                    {
                      break;
                    }

LABEL_217:
                    v66 += 8;
                    v10 = 0;
                    if (v66 >= v6)
                    {
                      goto LABEL_355;
                    }
                  }

                  v67 = 0;
                  v68 = v122;
                  while (1)
                  {
                    *&v124 = v68 + (v66 * HIDWORD(v124));
                    v33 = SlimXEncodeBlocks_NEON(&v124);
                    if (v33)
                    {
                      goto LABEL_353;
                    }

                    v68 += 16;
                    v67 += 8;
                    if (v120 <= v67)
                    {
                      goto LABEL_217;
                    }
                  }
                }

                goto LABEL_354;
              }

LABEL_81:
              v10 = 4294951892;
              if (((v120 + 7) & 0xFFFFFFF8) > (HIDWORD(v124) / BytesPerPixelForPixelFormat) || ((v6 + 7) & 0xFFFFFFF8) > v6 + *(a1 + 24))
              {
                goto LABEL_355;
              }

              *&v126 = 2;
              *(v11 + 12) = 0;
              if (v6 >= 1)
              {
                v29 = 0;
                v30 = 8 * BytesPerPixelForPixelFormat;
                while (1)
                {
                  encodeStripStart(&v124, v29);
                  if (v120 >= 1)
                  {
                    break;
                  }

LABEL_89:
                  v29 += 8;
                  v10 = 0;
                  if (v29 >= v6)
                  {
                    goto LABEL_355;
                  }
                }

                v31 = 0;
                v32 = v122;
                while (1)
                {
                  *&v124 = v32 + (v29 * HIDWORD(v124));
                  v33 = SlimXEncodeBlocks_NEON(&v124);
                  if (v33)
                  {
                    goto LABEL_353;
                  }

                  v32 += v30;
                  v31 += 8;
                  if (v120 <= v31)
                  {
                    goto LABEL_89;
                  }
                }
              }

              goto LABEL_354;
            }
          }

          else
          {
            if (v9 == 1815162994)
            {
              v10 = 4294951892;
              if (((v120 + 3) & 0xFFFFFFFC) > (HIDWORD(v124) / BytesPerPixelForPixelFormat) || ((v6 + 3) & 0xFFFFFFFC) > v6 + *(a1 + 24))
              {
                goto LABEL_355;
              }

              *&v126 = 9;
              *(v11 + 12) = 0;
              if (v6 >= 1)
              {
                v56 = 0;
                while (1)
                {
                  encodeStripStart(&v124, v56);
                  if (v120 >= 1)
                  {
                    break;
                  }

LABEL_173:
                  v56 += 4;
                  v10 = 0;
                  if (v56 >= v6)
                  {
                    goto LABEL_355;
                  }
                }

                v57 = 0;
                v58 = v122;
                while (1)
                {
                  *&v124 = v58 + (v56 * HIDWORD(v124));
                  v33 = SlimXEncodeBlocks_C(&v124);
                  if (v33)
                  {
                    goto LABEL_353;
                  }

                  v58 += 16;
                  v57 += 4;
                  if (v120 <= v57)
                  {
                    goto LABEL_173;
                  }
                }
              }

              goto LABEL_354;
            }

            if (v9 == 1815491698)
            {
              v10 = 4294951892;
              if (((v120 + 3) & 0xFFFFFFFC) > (HIDWORD(v124) / BytesPerPixelForPixelFormat) || ((v6 + 3) & 0xFFFFFFFC) > v6 + *(a1 + 24))
              {
                goto LABEL_355;
              }

              LODWORD(v126) = 18;
              if (v7 == -1)
              {
                v60 = 0;
              }

              else
              {
                if (v7 > 0xF)
                {
                  goto LABEL_271;
                }

                v60 = v7;
              }

              *(v11 + 12) = v60;
              DWORD1(v126) = v60;
              if (v6 >= 1)
              {
                v97 = 0;
                while (1)
                {
                  encodeStripStart(&v124, v97);
                  if (v120 >= 1)
                  {
                    break;
                  }

LABEL_309:
                  v97 += 4;
                  v10 = 0;
                  if (v97 >= v6)
                  {
                    goto LABEL_355;
                  }
                }

                v98 = 0;
                v99 = 0;
                while (1)
                {
                  *&v124 = v4 + (v99 & 0xFFFFFFE0) + (HIDWORD(v124) * v97);
                  v33 = SlimXEncodeBlocks_NEON(&v124);
                  if (v33)
                  {
                    goto LABEL_353;
                  }

                  v99 += 32;
                  v98 += 4;
                  if (v120 <= v98)
                  {
                    goto LABEL_309;
                  }
                }
              }

              goto LABEL_354;
            }

            if (v9 != 1882468912)
            {
              goto LABEL_355;
            }
          }

          v10 = 4294951892;
          if (((v120 + 15) & 0xFFFFFFF0) > SHIDWORD(v124) || ((v6 + 3) & 0xFFFFFFFC) > v6 + *(a1 + 24))
          {
            goto LABEL_355;
          }

          LODWORD(v126) = 7;
          if (v6 >= 1)
          {
            for (i = 0; i < v6; i += 4)
            {
              encodeStripStart(&v124, 4 * i / 5u);
              if (v120 >= 1)
              {
                for (j = 0; j < v120; j += 16)
                {
                  *&v124 = v4 + 4 * (j / 3) + (HIDWORD(v124) * i);
                  DWORD2(v124) = j % 3;
                  v33 = SlimXEncodeBlocks_NEON(&v124);
                  if (v33)
                  {
                    goto LABEL_353;
                  }
                }
              }
            }

            v49 = *(a1 + 72);
            HIDWORD(v124) = *(a1 + 12);
            LODWORD(v126) = 8;
            if (v6 == 1)
            {
              goto LABEL_354;
            }

            v50 = v6 >> 1;
            v51 = 41 * v6;
            v52 = 0;
            while (1)
            {
              encodeStripStart(&v124, (v51 + 18 * v52) / 0x32);
              if (v120 >= 1)
              {
                break;
              }

LABEL_155:
              v52 += 4;
              v10 = 0;
              if (v52 >= v50)
              {
                goto LABEL_355;
              }
            }

            v53 = 0;
            while (1)
            {
              *&v124 = v49 + 4 * (v53 / 3) + HIDWORD(v124) * v52;
              DWORD2(v124) = v53 % 3;
              v33 = SlimXEncodeBlocks_NEON(&v124);
              if (v33)
              {
                goto LABEL_353;
              }

              v53 += 16;
              if (v53 >= v120)
              {
                goto LABEL_155;
              }
            }
          }

          goto LABEL_354;
        }

        if (v9 > 1953903151)
        {
          if (v9 == 1953903152 || v9 == 2019963440)
          {
            goto LABEL_98;
          }

          v20 = 2016686640;
        }

        else
        {
          if (v9 == 1936077360 || v9 == 1937125936)
          {
            goto LABEL_98;
          }

          v20 = 1952854576;
        }

LABEL_97:
        if (v9 != v20)
        {
          goto LABEL_355;
        }

        goto LABEL_98;
      }

      if (v9 <= 1734505011)
      {
        if (v9 <= 1717855599)
        {
          if (v9 == 1651926376)
          {
            goto LABEL_126;
          }

          v34 = 1652056888;
          goto LABEL_125;
        }

        if (v9 == 1717855600 || v9 == 1717856627)
        {
          goto LABEL_57;
        }

        v22 = 1734501176;
      }

      else
      {
        if (v9 > 1751410031)
        {
          if (v9 == 1751410032 || v9 == 1751411059)
          {
            goto LABEL_117;
          }

          v20 = 1751527984;
          goto LABEL_97;
        }

        if (v9 == 1734505012 || v9 == 1735549492)
        {
          goto LABEL_76;
        }

        v22 = 1735549752;
      }

      if (v9 != v22)
      {
        goto LABEL_355;
      }

      goto LABEL_81;
    }

    if (v16 == -1)
    {
      BYTE8(v130) = 1;
      goto LABEL_10;
    }

    return 4294951896;
  }

  return v10;
}

uint64_t encodeStripStart(uint64_t result, int a2)
{
  *(result + 58) = xmmword_1A5AB5A20;
  *(result + 42) = xmmword_1A5AB5A20;
  v2 = *(result + 108);
  if (*(result + 104))
  {
    v3 = *(result + 80);
    v4 = (*(result + 16) - *(v3 + 88)) * 100.0 / *(v3 + 128);
    v5 = *(v3 + 4);
    v6 = (a2 + 32) * 100.0 / (v5 + 32);
    v7 = -400.0 / v5;
    if ((v6 + (v7 * (7 - v2))) >= v4)
    {
      v8 = v6 + (v7 * (9 - v2));
      v10 = v2 > 0 && v8 > v4;
      v2 -= v10;
    }

    else if (v2 < 7)
    {
      ++v2;
    }
  }

  v11 = 10 - v2;
  if (!v2)
  {
    v11 = 0;
  }

  *(result + 108) = v2;
  *(result + 112) = v11;
  if (v2 >= 1)
  {
    v12 = *(result + 16);
    *(result + 16) = v12 + 1;
    *v12 = v2 + 96;
  }

  return result;
}

uint64_t YZipDecodeFrame(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 17;
  if (a1 && (*(a1 + 40) - 3) >= 0xFFFFFFFFFFFFFFFELL && (*(a1 + 48) - 3) >= 0xFFFFFFFE)
  {
    Format = YZipEncodeFindFormat(a1, &v10);
    if (Format)
    {
      return Format;
    }

    CMPhotoGetBitDepthForPixelFormat(*(a1 + 32));
    if (!yzip_codec_create())
    {
      return 4294951895;
    }

    v4 = yzip_image_create();
    if (!v4)
    {
      Format = 4294951895;
LABEL_24:
      yzip_codec_destroy();
      return Format;
    }

    v5 = v4;
    if (*(a1 + 40))
    {
      v6 = 0;
      do
      {
        yzip_image_set_plane_data();
        ++v6;
        v7 = *(a1 + 40);
      }

      while (v7 > v6);
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      if (v7)
      {
        v8 = 0;
        v9 = &v11;
        while (!yzip_image_get_plane_descriptor())
        {
          ++v8;
          v9 += 2;
          if (*(a1 + 40) <= v8)
          {
            goto LABEL_20;
          }
        }

        Format = 4294951893;
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
    }

LABEL_20:
    if (yzip_image_decode() == *(&v13 + 1) + *(&v11 + 1))
    {
      Format = 0;
    }

    else
    {
      Format = 4294951889;
    }

LABEL_23:
    MEMORY[0x1AC553AF0](v5);
    goto LABEL_24;
  }

  return 4294951896;
}

uint64_t HrlcDecodeFrame(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v3 = setjmp(v6 + 1);
  if (!v3)
  {
    v4 = *(a1 + 64);
    if (*(a1 + 56) >= 0x10uLL && *v4 == 1399614808 && *(v4 + 4) == v2 && *a1 == *(v4 + 8) && *(a1 + 4) == *(v4 + 10))
    {
      *(a1 + 8356) = *(v4 + 14);
      if (v2 == 1278226488)
      {
        return SlimHrlcDecode_C();
      }

      else
      {
        return 4294951891;
      }
    }

    else
    {
      return 4294951890;
    }
  }

  return v3;
}

uint64_t IntcDecodeFrame(__CVBuffer *a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + 32);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v7 = setjmp(v19 + 1);
  if (!v7)
  {
    v9 = *(a2 + 56);
    v8 = *(a2 + 64);
    *(&v13 + 1) = v8 + v9;
    if (v9 >= 0xE && *v8 == 1399614808 && *(v8 + 4) == v6 && *a2 == *(v8 + 8) && *(a2 + 4) == *(v8 + 10))
    {
      *&v13 = v8 + 14;
      DWORD1(v14) = *(v8 + 12);
      *&v17 = a2;
      v10 = CMPhotoInterchangeCompactDecode(a1, a2, &v12);
      *a3 = v13 - *(a2 + 64);
      return v10;
    }

    else
    {
      return 4294951890;
    }
  }

  return v7;
}

uint64_t UncompressedDecodeFrame(uint64_t a1, __CVBuffer *a2, unint64_t *a3)
{
  v37 = 0.0;
  v36 = 0;
  v35 = 0;
  if (CMPhotoGetSizeInfoForPixelFormat(*(a1 + 32), &v37, &v36, &v36 + 1, &v35))
  {
    return 4294951894;
  }

  if (CMPhotoPixelFormatIsPackedYUV(*(a1 + 32)) || CMPhotoPixelFormatIsPackedRAW(*(a1 + 32)))
  {
    IsPackedYUV = CMPhotoPixelFormatIsPackedYUV(*(a1 + 32));
    v8 = *a1;
    if (IsPackedYUV)
    {
      v9 = (3 * *(a1 + 4) * ((2 * ((2863311531u * (v8 + 2)) >> 32)) & 0xFFFFFFFC)) >> 1;
    }

    else
    {
      v9 = CMPhotoAlignValue(5 * ((v8 + 3) >> 2), 0x140uLL) * *(a1 + 4);
    }
  }

  else
  {
    v29 = *a1;
    v30 = *(a1 + 4);
    if (v36)
    {
      if (v36)
      {
        v31 = v29 + (v29 | 0xFFFFFFFE) + 2;
      }

      else
      {
        v31 = 2 * v29;
      }

      if (HIBYTE(v36))
      {
        v32 = (v30 + 1) >> 1;
      }

      else
      {
        v32 = *(a1 + 4);
      }

      v9 = (v30 * v29 + v31 * v32) * v35;
    }

    else
    {
      v9 = (v37 * (v30 * v29));
    }
  }

  if (*a3 < v9)
  {
    return 4294951889;
  }

  v33 = v9;
  v34 = a3;
  if (!CVPixelBufferGetPlaneCount(a2))
  {
    PlaneCount = 1;
LABEL_14:
    for (i = 0; i != PlaneCount; ++i)
    {
      if (i && !CMPhotoPixelFormatContainsRGB(*(a1 + 32)))
      {
        v15 = *a1;
        if (v36)
        {
          v12 = v15 + (v15 | 0xFFFFFFFE) + 2;
        }

        else
        {
          v12 = 2 * v15;
        }
      }

      else
      {
        v12 = *a1;
      }

      v13 = v12;
      if (CMPhotoPixelFormatIsPackedYUV(*(a1 + 32)))
      {
        v14 = 4 * (((v13 + 2) * 0x5555555555555556uLL) >> 64);
      }

      else if (CMPhotoPixelFormatIsPackedRAW(*(a1 + 32)))
      {
        v14 = CMPhotoAlignValue(5 * ((v13 + 3) >> 2), 0x140uLL);
      }

      else
      {
        v14 = v35 * v13;
      }

      if (HIBYTE(v36))
      {
        v16 = i == 0;
      }

      else
      {
        v16 = 1;
      }

      v17 = *(a1 + 4);
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = (v17 + 1) >> 1;
      }

      v19 = *(a1 + 88 + 8 * i);
      v20 = *(a1 + 8 + 4 * i);
      v21 = CMPhotoPixelFormatIsPackedYUV(*(a1 + 32));
      v23 = *a1;
      v22 = *(a1 + 4);
      if (v21)
      {
        v24 = 4 * i * v22 * ((v23 + 2) / 3);
      }

      else
      {
        v24 = v35 * v22 * i * v23;
      }

      v25 = *(a1 + 32) == 1647719528;
      v26 = v18 >> v25;
      if (v18 >> v25)
      {
        v27 = v14 << v25;
        v28 = (*(a1 + 64) + v24);
        do
        {
          memcpy(v19, v28, v27);
          v28 += v27;
          v19 += v20;
          --v26;
        }

        while (v26);
      }
    }

    goto LABEL_12;
  }

  PlaneCount = CVPixelBufferGetPlaneCount(a2);
  if (PlaneCount)
  {
    goto LABEL_14;
  }

LABEL_12:
  result = 0;
  *v34 = v33;
  return result;
}

uint64_t SlimXDecodeFrame(unint64_t a1, void *a2)
{
  v4 = *(a1 + 88);
  v5 = *a1;
  v6 = *(a1 + 4);
  v7 = *(a1 + 32);
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(*(a1 + 32));
  v139 = 0;
  memset(v138, 0, sizeof(v138));
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  memset(v135, 0, sizeof(v135));
  v133 = 0u;
  v9 = setjmp(v138 + 1);
  if (v9)
  {
    return v9;
  }

  v13 = *(a1 + 56);
  v12 = *(a1 + 64);
  *(&v134 + 1) = v12 + v13;
  if (v13 < 0xE || *v12 != 1399614808 || *(v12 + 4) != v7 || *a1 != *(v12 + 8) || *(a1 + 4) != *(v12 + 10))
  {
    return 4294951890;
  }

  v130 = v4;
  *&v134 = v12 + 14;
  DWORD1(v135[0]) = *(v12 + 12);
  v136 = a1;
  LODWORD(v137) = 64;
  DWORD1(v137) = v5;
  v131 = v6;
  if (v7 > 1651926375)
  {
    if (v7 <= 1815162993)
    {
      if (v7 <= 1734505011)
      {
        if (v7 <= 1717855599)
        {
          if (v7 == 1651926376)
          {
            goto LABEL_122;
          }

          v38 = 1652056888;
          goto LABEL_121;
        }

        if (v7 == 1717855600 || v7 == 1717856627)
        {
          goto LABEL_54;
        }

        v16 = 1734501176;
      }

      else
      {
        if (v7 > 1751410031)
        {
          if (v7 == 1751410032 || v7 == 1751411059)
          {
            goto LABEL_110;
          }

          v14 = 1751527984;
          goto LABEL_101;
        }

        if (v7 == 1734505012 || v7 == 1735549492)
        {
LABEL_77:
          HIDWORD(v133) = *(a1 + 8);
          LODWORD(v135[0]) = 17;
          v9 = 4294951892;
          if (((v5 + 7) & 0xFFFFFFF8) <= (HIDWORD(v133) / BytesPerPixelForPixelFormat) && ((v6 + 7) & 0xFFFFFFF8) <= v6 + *(a1 + 24))
          {
            v132 = a2;
            if (v6 >= 1)
            {
              for (i = 0; i < v6; i += 8)
              {
                v27 = 5;
                *(&v135[1] + 10) = xmmword_1A5AB5A20;
                *(v135 + 10) = xmmword_1A5AB5A20;
                LODWORD(v138[0]) = 0;
                HIDWORD(v137) = 0;
                if (v5 >= 1)
                {
                  v28 = 0;
                  v29 = v130;
                  do
                  {
                    v30 = v29;
                    v31 = v28;
                    *&v133 = v29 + (i * HIDWORD(v133));
                    SlimXDecodeBlocks_NEON(&v133, *&v27, v10, v11);
                    v29 = v30 + 16;
                    v28 = v31 + 8;
                  }

                  while (v5 > v31 + 8);
                }
              }
            }

            goto LABEL_259;
          }

          return v9;
        }

        v16 = 1735549752;
      }

      v9 = 4294951891;
      if (v7 != v16)
      {
        return v9;
      }

      goto LABEL_86;
    }

    if (v7 <= 1936077359)
    {
      if (v7 > 1885745711)
      {
        if (v7 != 1885745712)
        {
          if (v7 != 1919378232)
          {
            v17 = 1919379252;
LABEL_76:
            v9 = 4294951891;
            if (v7 != v17)
            {
              return v9;
            }

            goto LABEL_77;
          }

LABEL_86:
          HIDWORD(v133) = *(a1 + 8);
          LODWORD(v135[0]) = 2;
          v9 = 4294951892;
          if (((v5 + 7) & 0xFFFFFFF8) <= (HIDWORD(v133) / BytesPerPixelForPixelFormat) && ((v6 + 7) & 0xFFFFFFF8) <= v6 + *(a1 + 24))
          {
            v132 = a2;
            if (v6 >= 1)
            {
              v32 = 0;
              do
              {
                v33 = 5;
                *(&v135[1] + 10) = xmmword_1A5AB5A20;
                *(v135 + 10) = xmmword_1A5AB5A20;
                LODWORD(v138[0]) = 0;
                HIDWORD(v137) = 0;
                if (v5 >= 1)
                {
                  v34 = 0;
                  v35 = v4;
                  do
                  {
                    v36 = v35;
                    v37 = v34;
                    *&v133 = v35 + (v32 * HIDWORD(v133));
                    SlimXDecodeBlocks_NEON(&v133, *&v33, v10, v11);
                    v35 = v36 + 8 * BytesPerPixelForPixelFormat;
                    v34 = v37 + 8;
                  }

                  while (v5 > v37 + 8);
                }

                v32 += 8;
              }

              while (v32 < v131);
            }

            goto LABEL_259;
          }

          return v9;
        }
      }

      else
      {
        if (v7 == 1815162994)
        {
          HIDWORD(v133) = *(a1 + 8);
          LODWORD(v135[0]) = 9;
          v9 = 4294951892;
          if (((v5 + 3) & 0xFFFFFFFC) <= (HIDWORD(v133) / BytesPerPixelForPixelFormat) && ((v6 + 3) & 0xFFFFFFFC) <= v6 + *(a1 + 24))
          {
            v132 = a2;
            if (v6 >= 1)
            {
              for (j = 0; j < v6; j += 4)
              {
                *(&v135[1] + 10) = xmmword_1A5AB5A20;
                *(v135 + 10) = xmmword_1A5AB5A20;
                LODWORD(v138[0]) = 0;
                HIDWORD(v137) = 0;
                if (v5 >= 1)
                {
                  v80 = 0;
                  v81 = v130;
                  do
                  {
                    v82 = v81;
                    v83 = v80;
                    *&v133 = v81 + (j * HIDWORD(v133));
                    SlimXDecodeBlocks_C(&v133);
                    v81 = v82 + 16;
                    v80 = v83 + 4;
                  }

                  while (v5 > v83 + 4);
                }
              }
            }

            goto LABEL_259;
          }

          return v9;
        }

        if (v7 == 1815491698)
        {
          HIDWORD(v133) = *(a1 + 8);
          LODWORD(v135[0]) = 18;
          v9 = 4294951892;
          if (((v5 + 3) & 0xFFFFFFFC) <= (HIDWORD(v133) / BytesPerPixelForPixelFormat) && ((v6 + 3) & 0xFFFFFFFC) <= v6 + *(a1 + 24))
          {
            v132 = a2;
            if (v6 >= 1)
            {
              for (k = 0; k < v6; k += 4)
              {
                v93 = 5;
                *(&v135[1] + 10) = xmmword_1A5AB5A20;
                *(v135 + 10) = xmmword_1A5AB5A20;
                LODWORD(v138[0]) = 0;
                HIDWORD(v137) = 0;
                if (v5 >= 1)
                {
                  v94 = 0;
                  v95 = v130;
                  do
                  {
                    v96 = v95;
                    v97 = v94;
                    *&v133 = v95 + (k * HIDWORD(v133));
                    SlimXDecodeBlocks_NEON(&v133, *&v93, v10, v11);
                    v95 = v96 + 32;
                    v94 = v97 + 4;
                  }

                  while (v5 > v97 + 4);
                }
              }
            }

            goto LABEL_259;
          }

          return v9;
        }

        v9 = 4294951891;
        if (v7 != 1882468912)
        {
          return v9;
        }
      }

      HIDWORD(v133) = *(a1 + 8);
      v9 = 4294951892;
      if (((v5 + 15) & 0xFFFFFFF0) <= SHIDWORD(v133) && ((v6 + 3) & 0xFFFFFFFC) <= v6 + *(a1 + 24))
      {
        v132 = a2;
        LODWORD(v135[0]) = 7;
        if (v6 >= 1)
        {
          for (m = 0; m < v6; m += 4)
          {
            v55 = 5;
            *(&v135[1] + 10) = xmmword_1A5AB5A20;
            *(v135 + 10) = xmmword_1A5AB5A20;
            LODWORD(v138[0]) = 0;
            HIDWORD(v137) = 0;
            if (v5 >= 1)
            {
              v56 = 0;
              do
              {
                v57 = v56;
                v58 = v56 / 3;
                *&v133 = v4 + 4 * v58 + (HIDWORD(v133) * m);
                DWORD2(v133) = v57 - 3 * v58;
                SlimXDecodeBlocks_NEON(&v133, *&v55, v10, v11);
                v56 = v57 + 16;
              }

              while ((v57 + 16) < v5);
            }
          }

          v59 = *(a1 + 96);
          v60 = *(a1 + 12);
          LODWORD(v135[0]) = 8;
          HIDWORD(v133) = v60;
          if (v6 != 1)
          {
            v61 = 0;
            do
            {
              v62 = 5;
              *(&v135[1] + 10) = xmmword_1A5AB5A20;
              *(v135 + 10) = xmmword_1A5AB5A20;
              LODWORD(v138[0]) = 0;
              HIDWORD(v137) = 0;
              if (v5 >= 1)
              {
                v63 = 0;
                do
                {
                  v64 = v63;
                  v65 = v63 / 3;
                  *&v133 = v59 + 4 * v65 + HIDWORD(v133) * v61;
                  DWORD2(v133) = v64 - 3 * v65;
                  SlimXDecodeBlocks_NEON(&v133, *&v62, v10, v11);
                  v63 = v64 + 16;
                }

                while ((v64 + 16) < v5);
              }

              v61 += 4;
            }

            while (v61 < v6 >> 1);
          }
        }

        goto LABEL_259;
      }

      return v9;
    }

    if (v7 > 1953903151)
    {
      if (v7 == 1953903152 || v7 == 2019963440)
      {
        goto LABEL_102;
      }

      v14 = 2016686640;
    }

    else
    {
      if (v7 == 1936077360 || v7 == 1937125936)
      {
        goto LABEL_102;
      }

      v14 = 1952854576;
    }

LABEL_101:
    v9 = 4294951891;
    if (v7 != v14)
    {
      return v9;
    }

    goto LABEL_102;
  }

  if (v7 <= 1278226535)
  {
    if (v7 > 875704949)
    {
      if (v7 <= 1111970368)
      {
        if (v7 == 875704950 || v7 == 875836518)
        {
          goto LABEL_102;
        }

        v14 = 875836534;
        goto LABEL_101;
      }

      if (v7 == 1111970369)
      {
        HIDWORD(v133) = *(a1 + 8);
        LODWORD(v135[0]) = 6;
        v9 = 4294951892;
        if (((v5 + 3) & 0xFFFFFFFC) <= (HIDWORD(v133) / BytesPerPixelForPixelFormat) && ((v6 + 3) & 0xFFFFFFFC) <= v6 + *(a1 + 24))
        {
          v132 = a2;
          if (v6 >= 1)
          {
            for (n = 0; n < v6; n += 4)
            {
              v68 = 5;
              *(&v135[1] + 10) = xmmword_1A5AB5A20;
              *(v135 + 10) = xmmword_1A5AB5A20;
              LODWORD(v138[0]) = 0;
              HIDWORD(v137) = 0;
              if (v5 >= 1)
              {
                v69 = 0;
                v70 = v130;
                do
                {
                  v71 = v70;
                  v72 = v69;
                  *&v133 = v70 + (n * HIDWORD(v133));
                  SlimXDecodeBlocks_NEON(&v133, *&v68, v10, v11);
                  v70 = v71 + 16;
                  v69 = v72 + 4;
                }

                while (v5 > v72 + 4);
              }
            }
          }

          goto LABEL_259;
        }

        return v9;
      }

      if (v7 == 1278226488)
      {
        goto LABEL_102;
      }

      v9 = 4294951891;
      if (v7 != 1278226534)
      {
        return v9;
      }

LABEL_54:
      v132 = a2;
      HIDWORD(v133) = *(a1 + 8);
      if (v6 >= 1)
      {
        v18 = 0;
        do
        {
          v19 = v18;
          *&v133 = v4 + (HIDWORD(v133) * v18);
          SlimXDecodeF32Row(&v133);
          v18 = v19 + 1;
        }

        while (v6 != v19 + 1);
      }

      goto LABEL_259;
    }

    if (v7 <= 875704421)
    {
      if (v7 != 825306677)
      {
        v9 = 4294951891;
        if (v7 != 825437747)
        {
          return v9;
        }
      }

      goto LABEL_110;
    }

    if (v7 == 875704422 || v7 == 875704438)
    {
      goto LABEL_102;
    }

    v14 = 875704934;
    goto LABEL_101;
  }

  if (v7 > 1647719527)
  {
    if (v7 <= 1651519797)
    {
      if (v7 != 1647719528)
      {
        if (v7 != 1650942776)
        {
          v17 = 1650943796;
          goto LABEL_76;
        }

        goto LABEL_86;
      }

      v84 = *(a1 + 8);
      HIDWORD(v133) = *(a1 + 8);
      if ((*(a1 + 8360) & 0xFFFFFFFE) == 6)
      {
        LODWORD(v135[0]) = 23;
        v9 = 4294951892;
        if (((v5 + 7) & 0xFFFFFFF8) <= ((v84 >> 1) / BytesPerPixelForPixelFormat) && ((v6 + 7) & 0xFFFFFFF8) <= v6 + *(a1 + 24))
        {
          v132 = a2;
          if (v6 >= 1)
          {
            v85 = 0;
            v86 = 0;
            do
            {
              v87 = 5;
              *(&v135[1] + 10) = xmmword_1A5AB5A20;
              *(v135 + 10) = xmmword_1A5AB5A20;
              LODWORD(v138[0]) = 0;
              HIDWORD(v137) = 0;
              if (v5 >= 1)
              {
                v88 = 0;
                v89 = v4;
                do
                {
                  v90 = v89;
                  v91 = v88;
                  *&v133 = v89 + (v85 * HIDWORD(v133));
                  SlimXDecodeBlocks_NEON(&v133, *&v87, v10, v11);
                  v89 = v90 + 16 * BytesPerPixelForPixelFormat;
                  v88 = v91 + 8;
                }

                while (v5 > v91 + 8);
              }

              v86 += 8;
              v85 += 4;
            }

            while (v86 < v131);
          }

          goto LABEL_259;
        }

        return v9;
      }

      return 4294951891;
    }

    if (v7 == 1651519798 || v7 == 1651847472)
    {
LABEL_122:
      v48 = *(a1 + 8);
      HIDWORD(v133) = *(a1 + 8);
      v49 = *(a1 + 8360);
      v50 = 8;
      if (v49 > 3)
      {
        if (v49 == 4)
        {
          v50 = 4;
          v51 = 16;
          if (v7 > 1651925815)
          {
            if (v7 == 1651925816 || v7 == 1652056888)
            {
              v53 = 0;
              goto LABEL_249;
            }

            if (v7 == 1651926376)
            {
              v53 = 15;
              goto LABEL_249;
            }

            goto LABEL_238;
          }

          v66 = 24;
          if (v7 != 1651519798)
          {
            v104 = 16;
            v105 = 4;
LABEL_233:
            if (v7 != 1651847472)
            {
              goto LABEL_238;
            }

LABEL_237:
            LODWORD(v135[0]) = v66;
            v51 = v104;
            v50 = v105;
            goto LABEL_238;
          }

          v104 = 16;
LABEL_236:
          v105 = v50;
          goto LABEL_237;
        }

        if (v49 != 5)
        {
          v51 = 8;
          if (v49 != 8)
          {
            goto LABEL_238;
          }
        }

        if (v7 > 1651925815)
        {
          v52 = 3;
          if (v7 != 1651925816 && v7 != 1652056888)
          {
            v51 = 8;
            if (v7 == 1651926376)
            {
              v51 = 8;
              v53 = 14;
              goto LABEL_137;
            }

LABEL_238:
            if (v7 != 1651519798)
            {
LABEL_250:
              v106 = v51;
              goto LABEL_251;
            }

            v106 = v51;
            if (*(a1 + 8364))
            {
              v51 = 16;
              if (v49 < 4)
              {
                v50 = 4;
                v53 = 21;
                goto LABEL_249;
              }

              v106 = 16;
              v50 = v49;
              if (v49 != 4)
              {
                return 4294951891;
              }
            }

LABEL_251:
            v9 = 4294951892;
            if (((v5 + v106 - 1) & -v106) <= (v48 / BytesPerPixelForPixelFormat))
            {
              v108 = v50;
              if (((v6 + v50 - 1) & -v50) <= v6 + *(a1 + 24))
              {
                v132 = a2;
                if (v6 >= 1)
                {
                  v109 = 0;
                  v110 = v106;
                  v111 = BytesPerPixelForPixelFormat * v106;
                  do
                  {
                    v112 = 5;
                    *(&v135[1] + 10) = xmmword_1A5AB5A20;
                    *(v135 + 10) = xmmword_1A5AB5A20;
                    LODWORD(v138[0]) = 0;
                    HIDWORD(v137) = 0;
                    if (v5 >= 1)
                    {
                      v113 = v130;
                      v114 = 0;
                      do
                      {
                        v115 = v114;
                        v116 = v113;
                        *&v133 = v113 + (v109 * HIDWORD(v133));
                        SlimXDecodeBlocks_NEON(&v133, *&v112, v10, v11);
                        v114 = v115 + v110;
                        v113 = v116 + v111;
                      }

                      while (v115 + v110 < v5);
                    }

                    v109 += v108;
                  }

                  while (v109 < v131);
                }

                goto LABEL_259;
              }
            }

            return v9;
          }

LABEL_155:
          v53 = v52;
          v51 = 8;
          goto LABEL_249;
        }

        v66 = 22;
      }

      else
      {
        v51 = 8;
        if (v49 >= 4)
        {
          goto LABEL_238;
        }

        if (v7 > 1651925815)
        {
          v52 = 2;
          if (v7 != 1651925816 && v7 != 1652056888)
          {
            v51 = 8;
            if (v7 == 1651926376)
            {
              v51 = 8;
              v53 = 13;
LABEL_137:
              v50 = 8;
LABEL_249:
              LODWORD(v135[0]) = v53;
              goto LABEL_250;
            }

            goto LABEL_238;
          }

          goto LABEL_155;
        }

        v66 = 20;
      }

      if (v7 != 1651519798)
      {
        v104 = 8;
        v105 = 8;
        v51 = 8;
        goto LABEL_233;
      }

      v104 = 8;
      goto LABEL_236;
    }

    v38 = 1651925816;
LABEL_121:
    v9 = 4294951891;
    if (v7 != v38)
    {
      return v9;
    }

    goto LABEL_122;
  }

  if (v7 > 1278226741)
  {
    if (v7 != 1278226742)
    {
      if (v7 == 1380411457)
      {
        HIDWORD(v133) = *(a1 + 8);
        LODWORD(v135[0]) = 12;
        v9 = 4294951892;
        if (((v5 + 3) & 0xFFFFFFFC) <= (HIDWORD(v133) / BytesPerPixelForPixelFormat) && ((v6 + 3) & 0xFFFFFFFC) <= v6 + *(a1 + 24))
        {
          v132 = a2;
          if (v6 >= 1)
          {
            for (ii = 0; ii < v6; ii += 4)
            {
              v99 = 5;
              *(&v135[1] + 10) = xmmword_1A5AB5A20;
              *(v135 + 10) = xmmword_1A5AB5A20;
              LODWORD(v138[0]) = 0;
              HIDWORD(v137) = 0;
              if (v5 >= 1)
              {
                v100 = 0;
                v101 = v130;
                do
                {
                  v102 = v101;
                  v103 = v100;
                  *&v133 = v101 + (ii * HIDWORD(v133));
                  SlimXDecodeBlocks_NEON(&v133, *&v99, v10, v11);
                  v101 = v102 + 32;
                  v100 = v103 + 4;
                }

                while (v5 > v103 + 4);
              }
            }
          }

          goto LABEL_259;
        }
      }

      else
      {
        v9 = 4294951891;
        if (v7 == 1647589490)
        {
          HIDWORD(v133) = *(a1 + 8);
          LODWORD(v135[0]) = 19;
          v9 = 4294951892;
          if (((v5 + 3) & 0xFFFFFFFC) <= (HIDWORD(v133) / BytesPerPixelForPixelFormat) && ((v6 + 3) & 0xFFFFFFFC) <= v6 + *(a1 + 24))
          {
            v132 = a2;
            if (v6 >= 1)
            {
              for (jj = 0; jj < v6; jj += 4)
              {
                v21 = 5;
                *(&v135[1] + 10) = xmmword_1A5AB5A20;
                *(v135 + 10) = xmmword_1A5AB5A20;
                LODWORD(v138[0]) = 0;
                HIDWORD(v137) = 0;
                if (v5 >= 1)
                {
                  v22 = 0;
                  v23 = v130;
                  do
                  {
                    v24 = v23;
                    v25 = v22;
                    *&v133 = v23 + (jj * HIDWORD(v133));
                    SlimXDecodeBlocks_NEON(&v133, *&v21, v10, v11);
                    v23 = v24 + 24;
                    v22 = v25 + 4;
                  }

                  while (v5 > v25 + 4);
                }
              }
            }

            goto LABEL_259;
          }
        }
      }

      return v9;
    }

    goto LABEL_110;
  }

  if (v7 == 1278226536)
  {
LABEL_110:
    HIDWORD(v133) = *(a1 + 8);
    LODWORD(v135[0]) = 24;
    v9 = 4294951892;
    if (((v5 + 15) & 0xFFFFFFF0) <= (HIDWORD(v133) >> 1) && ((v6 + 3) & 0xFFFFFFFC) <= v6 + *(a1 + 24))
    {
      v132 = a2;
      if (v6 >= 1)
      {
        for (kk = 0; kk < v6; kk += 4)
        {
          v43 = 5;
          *(&v135[1] + 10) = xmmword_1A5AB5A20;
          *(v135 + 10) = xmmword_1A5AB5A20;
          LODWORD(v138[0]) = 0;
          HIDWORD(v137) = 0;
          if (v5 >= 1)
          {
            v44 = 0;
            v45 = v130;
            do
            {
              v46 = v45;
              v47 = v44;
              *&v133 = v45 + (kk * HIDWORD(v133));
              SlimXDecodeBlocks_NEON(&v133, *&v43, v10, v11);
              v45 = v46 + 32;
              v44 = v47 + 16;
            }

            while (v5 > v47 + 16);
          }
        }
      }

      goto LABEL_259;
    }

    return v9;
  }

  if (v7 != 1278226736)
  {
    v14 = 1278226738;
    goto LABEL_101;
  }

LABEL_102:
  HIDWORD(v133) = *(a1 + 8);
  v9 = 4294951892;
  if (((v5 + 15) & 0xFFFFFFF0) <= (HIDWORD(v133) / BytesPerPixelForPixelFormat) && ((v6 + 3) & 0xFFFFFFFC) <= v6 + *(a1 + 24))
  {
    v132 = a2;
    if (CMPhotoGetBitDepthForPixelFormat(v7) == 8)
    {
      LODWORD(v135[0]) = 0;
    }

    else
    {
      if (CMPhotoGetBitDepthForPixelFormat(v7) == 10)
      {
        v41 = 10;
      }

      else if (v7 == 1751527984)
      {
        v41 = 15;
      }

      else
      {
        v41 = 24;
      }

      LODWORD(v135[0]) = v41;
    }

    if (v6 >= 1)
    {
      v73 = 0;
      do
      {
        v74 = 5;
        *(&v135[1] + 10) = xmmword_1A5AB5A20;
        *(v135 + 10) = xmmword_1A5AB5A20;
        LODWORD(v138[0]) = 0;
        HIDWORD(v137) = 0;
        if (v5 >= 1)
        {
          v75 = 0;
          v76 = v4;
          do
          {
            *&v133 = v76 + (v73 * HIDWORD(v133));
            SlimXDecodeBlocks_NEON(&v133, *&v74, v39, v40);
            v76 += 16 * BytesPerPixelForPixelFormat;
            v75 += 16;
          }

          while (v5 > v75);
        }

        v73 += 4;
        v6 = v131;
      }

      while (v73 < v131);
    }

    if (v7 <= 1278226735)
    {
      v77 = v7;
      if ((v7 - 1278226488) > 0x30 || ((1 << (v7 - 56)) & 0x1400000000001) == 0)
      {
        v78 = 825437747;
        goto LABEL_185;
      }
    }

    else
    {
      v77 = v7;
      if (v7 > 1717856626)
      {
        if (v7 > 1751411058)
        {
          v78 = 1932996149;
        }

        else
        {
          v78 = 1751410032;
        }

        goto LABEL_185;
      }

      if ((v7 - 1278226736) > 6 || ((1 << (v7 - 48)) & 0x45) == 0)
      {
        v78 = 1717855600;
LABEL_185:
        if (v7 != v78)
        {
          if (CMPhotoGetBitDepthForPixelFormat(v77) == 8)
          {
            LODWORD(v135[0]) = 1;
          }

          else
          {
            if (CMPhotoGetBitDepthForPixelFormat(v77) == 10)
            {
              v107 = 11;
            }

            else
            {
              v107 = v7 == 1751527984 ? 16 : 25;
            }

            LODWORD(v135[0]) = v107;
            v6 = v131;
          }

          if (CMPhotoPixelFormatIs444(v77))
          {
            v119 = 2;
            v120 = 1;
          }

          else
          {
            v120 = CMPhotoPixelFormatIs422(v77) ? 1 : 2;
            v119 = 1;
          }

          v121 = *(a1 + 96);
          HIDWORD(v133) = *(a1 + 12);
          v122 = v6 / v120;
          if (v6 / v120 >= 1)
          {
            v123 = v119 * v5;
            v124 = 0;
            do
            {
              v125 = 5;
              *(&v135[1] + 10) = xmmword_1A5AB5A20;
              *(v135 + 10) = xmmword_1A5AB5A20;
              LODWORD(v138[0]) = 0;
              HIDWORD(v137) = 0;
              if (v123 >= 1)
              {
                v126 = 0;
                v127 = v121;
                do
                {
                  v128 = v127;
                  v129 = v126;
                  *&v133 = v127 + (v124 * HIDWORD(v133));
                  SlimXDecodeBlocks_NEON(&v133, *&v125, v117, v118);
                  v127 = v128 + 16 * BytesPerPixelForPixelFormat;
                  v126 = v129 + 16;
                }

                while (v123 > v129 + 16);
              }

              v124 += 4;
            }

            while (v124 < v122);
          }
        }
      }
    }

LABEL_259:
    *v132 = v134 - *(a1 + 64);
    return 0;
  }

  return v9;
}

void _callback_CompletionHandlerWrapper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void, void, void, void, void, void, void))
{
  a8[2](a8, a1, a2, a3, a4, a5, a6, a7);

  _Block_release(a8);
}

uint64_t JPEGDecompressSurfaceAsync(mach_port_t a1, IOSurfaceRef buffer, __IOSurface *a3, uint64_t a4, int a5, unsigned int a6, unsigned int a7, int a8, __int128 a9, uint64_t a10)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v24 = 0u;
  v22 = 0;
  memset(outputStruct, 0, sizeof(outputStruct));
  inputStruct[0] = IOSurfaceGetID(buffer);
  inputStruct[2] = IOSurfaceGetID(a3);
  *(&v24 + 4) = *a4;
  inputStruct[1] = IOSurfaceGetAllocSize(buffer);
  inputStruct[3] = IOSurfaceGetAllocSize(a3);
  LODWORD(v25) = a5;
  HIDWORD(v25) = *(a4 + 16);
  *(&v27 + 1) = __PAIR64__(a7, a6);
  LODWORD(v28) = a8;
  v26 = a9;
  *&v27 = a10;
  v18 = JPEGDeviceInterface_decodeJPEG(a1, inputStruct, outputStruct);
  v19 = v18;
  if (v18)
  {
    syslog(5, "JPEGDecompressSurfaceAsync : Picture decode failed: %08x", v18);
  }

  return v19;
}

unint64_t JPEGCalculateOutputDimensions(unint64_t result, unint64_t a2, int a3, int a4, int a5, int a6, void *a7, void *a8, void *a9, _DWORD *a10, _DWORD *a11)
{
  v12 = a2;
  v13 = result;
  LODWORD(v14) = 0;
  if (result <= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = result;
  }

  if (result >= a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = result;
  }

  if (a3 && v15 > a3)
  {
    v37 = a5;
    v38 = a6;
    v39 = a7;
    v18 = 0;
    v19 = (a3 & 0xFFFFFFFE);
    do
    {
      v14 = v18++;
      result = JPEGDeviceInterface_supportsAppleInterchangeFormats();
      if (result)
      {
        v20 = v15 >> v18 << v18 == v15;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        v21 = v15 >> v18;
      }

      else
      {
        v21 = (v15 >> v18) + 1;
      }

      if (v21 < v19)
      {
        break;
      }

      result = JPEGDeviceInterface_supportsAppleInterchangeFormats();
      v22 = !result || v16 >> v18 << v18 == v16;
      v23 = !v22;
    }

    while (v14 <= 2 && (v16 >> v18) | v23);
    if (v14)
    {
      if (JPEGDeviceInterface_supportsAppleInterchangeFormats())
      {
        v24 = v13 >> v14 << v14 == v13;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        v13 >>= v14;
      }

      else
      {
        v13 = (v13 >> v14) + 1;
      }

      result = JPEGDeviceInterface_supportsAppleInterchangeFormats();
      if (result)
      {
        v25 = v12 >> v14 << v14 == v12;
      }

      else
      {
        v25 = 1;
      }

      if (v25)
      {
        v12 >>= v14;
      }

      else
      {
        v12 = (v12 >> v14) + 1;
      }

      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }
    }

    v26 = a3 / v15;
    if (v26 > 1.0)
    {
      v26 = 1.0;
    }

    a7 = v39;
    a6 = v38;
    if (a4 && v26 > 0.79)
    {
      v27 = v13;
      v28 = v12;
      a5 = v37;
    }

    else
    {
      v27 = ((v26 * v13) + 0.5);
      v28 = ((v26 * v12) + 0.5);
      v35 = v13 > v27 || v12 > v28;
      a5 = v37;
      if (v35)
      {
        v27 &= ~1uLL;
        v28 &= ~1uLL;
      }
    }
  }

  else
  {
    v27 = result;
    v28 = a2;
  }

  if (a5)
  {
    if ((a6 - 1) > 7)
    {
      v29 = 0;
    }

    else
    {
      v29 = transformMap[a6 - 1];
    }

    v31 = v27 & 0xFFFFFFFFFFFFFFFELL;
    if (v29)
    {
      v28 &= ~1uLL;
    }

    else
    {
      v31 = v27;
    }

    if ((v29 & 4) != 0)
    {
      v27 = v28;
    }

    else
    {
      v27 = v31;
    }

    if ((v29 & 4) != 0)
    {
      v28 = v31;
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v29 = 0;
    v30 = 1;
  }

  if (v27)
  {
    v32 = v27;
  }

  else
  {
    v32 = 2;
  }

  if (!v28)
  {
    LODWORD(v28) = 2;
  }

  if (a8)
  {
    *a8 = v32;
    a8[1] = v28;
  }

  if (a9)
  {
    v33 = v30 == 0;
    if (v30)
    {
      v34 = v32;
    }

    else
    {
      v34 = v28;
    }

    if (v33)
    {
      LODWORD(v28) = v32;
    }

    *a9 = v34;
    a9[1] = v28;
  }

  if (a7)
  {
    *a7 = v13;
    a7[1] = v12;
  }

  if (a10)
  {
    *a10 = v29;
  }

  if (a11)
  {
    *a11 = v14;
  }

  return result;
}

void _stripDecodeCompleteCallback(dispatch_group_t group, int a2, _DWORD *a3)
{
  if (a2)
  {
    *a3 = a2;
  }

  dispatch_group_leave(group);
}

uint64_t SlimHrlcGetSize_C(uint64_t result)
{
  v1 = (result + 20472);
  v2 = (result + 20480);
  *(result + 20512) = -1;
  *(result + 20508) = -1;
  *(result + 20504) = 0;
  *(result + 20480) = 0u;
  v3 = (result + 32);
  v4 = 512;
  do
  {
    *v3 = 0xFFFFFFFF00000000;
    *(v3 - 4) = 0;
    *(v3 - 2) = 0;
    *(v3 - 4) = 0;
    *(v3 - 3) = 0;
    v3 += 5;
    --v4;
  }

  while (v4);
  v5 = *(result + 20534);
  v6 = *(result + 20528);
  if (!*(result + 20534))
  {
    v8 = 0;
    v13 = -1;
LABEL_24:
    v19 = (result + 40 * v13 + 32);
    goto LABEL_25;
  }

  v7 = 0;
  v8 = 0;
  v9 = *(result + 20520);
  v10 = *(result + 20532);
  v11 = *(result + 20530) - v10;
  v12 = result + 40 * *(result + 20528);
  v13 = -1;
  do
  {
    for (i = v10; i; --i)
    {
      v16 = *v9++;
      v15 = v16;
      if (v13 == v16)
      {
        ++v8;
      }

      else
      {
        if (v13 == v6)
        {
          *(v12 + 32) += v8;
          v17 = v8 - 256;
          if (v8 >= 0x100)
          {
            v8 = v8;
            *v1 += (v17 >> 8) + 1;
          }

          if (v8)
          {
            ++*(result + 10232 + 40 * v8);
          }
        }

        else if (v13 != -1)
        {
          *(result + 40 * v13 + 32) += v8;
        }

        v8 = 1;
        v13 = v15;
      }
    }

    v9 += v11;
    ++v7;
  }

  while (v7 != v5);
  if (v13 != v6)
  {
    goto LABEL_24;
  }

  *(v12 + 32) += v8;
  v18 = v8 - 256;
  if (v8 >= 0x100)
  {
    v8 = v8;
    *v1 += (v18 >> 8) + 1;
  }

  if (v8)
  {
    v19 = (result + 40 * v8 + 10232);
    v8 = 1;
LABEL_25:
    *v19 += v8;
  }

  v20 = 0;
  v21 = 0;
  v22 = result;
  do
  {
    v23 = *(v22 + 32);
    if (v23)
    {
      if (v20 == v6)
      {
        *(v22 + 32) = 0;
      }

      else
      {
        *(v22 + 36) = v23;
        v24 = (result + 20480);
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24 && v23 > *(v24 + 9));
        *v25 = v22;
        *v22 = v24;
        ++v21;
      }
    }

    v22 += 40;
    ++v20;
  }

  while (v20 != 256);
  for (j = 0; j != 256; ++j)
  {
    v27 = *(v22 + 32);
    if (v27)
    {
      *(v22 + 36) = v27;
      v28 = (result + 20480);
      do
      {
        v29 = v28;
        v28 = *v28;
      }

      while (v28 && v27 > *(v28 + 9));
      *v29 = v22;
      *v22 = v28;
      ++v21;
    }

    v22 += 40;
  }

  v30 = v21 - 1;
  if (v21 != 1)
  {
    v31 = 0;
    do
    {
      v32 = *v2;
      v33 = **v2;
      v34 = *(v33 + 8);
      *v2 = *v33;
      v35 = *(v33 + 36) + *(v32 + 9);
      *(v33 + 36) = v35;
      ++*(v33 + 28);
      for (k = v33; v34; v34 = *(v34 + 8))
      {
        k = v34;
        ++*(v34 + 28);
      }

      *(k + 8) = v32;
      *v32 = 0;
      do
      {
        ++*(v32 + 28);
        v32 = v32[1];
      }

      while (v32);
      v37 = (result + 20480);
      do
      {
        v38 = v37;
        v37 = *v37;
      }

      while (v37 && v35 > *(v37 + 9));
      *v38 = v33;
      *v33 = v37;
      ++v31;
    }

    while (v31 != v30);
  }

  v39 = *v2;
  if (*v2)
  {
    v40 = 0;
    v41 = 0;
    do
    {
      v42 = *(v39 + 28);
      v41 += *(v39 + 8) * v42;
      if (v40 <= v42)
      {
        v40 = *(v39 + 28);
      }

      v39 = v39[1];
    }

    while (v39);
    v39 = ((v41 + 7) >> 3);
  }

  else
  {
    v40 = 0;
  }

  *(result + 20536) = v40;
  *(result + 20544) = v39;
  return result;
}

uint64_t SlimHrlcEncodeRun_C(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v4 = (a1 + 20464);
  v5 = *(a1 + 20536);
  if (v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      if (v6 >= ~(-1 << v7))
      {
        return 4294951894;
      }

      v8 = 256;
      v9 = (a1 + 68);
      v10 = a1;
      do
      {
        v11 = v9;
        if (*(v10 + 32) && v7 == *(v10 + 28))
        {
          *(v10 + 24) = v6++;
        }

        v10 += 40;
        v9 += 40;
        --v8;
      }

      while (v8);
      v12 = 256;
      do
      {
        if (v7 == *v11)
        {
          *(v11 - 1) = v6++;
        }

        v11 += 40;
        --v12;
      }

      while (v12);
      v6 *= 2;
      v40 = v7++ == v5;
    }

    while (!v40);
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = &a2[a3];
  v17 = 40 * *(a1 + 20528) + 40;
  v18 = a1 + 28;
  v19 = 1;
  v20 = a2;
  do
  {
    v21 = -5;
    while (1)
    {
      if (v19 + v21 == 251)
      {
        v13 = *(a1 + 108 + v17);
        v17 = 10240;
      }

      v22 = *(v18 + v17);
      if (*(v18 + v17))
      {
        break;
      }

      v17 += 40;
      if (v17 == 10240)
      {
        v17 = 0;
      }

      ++v21;
      if (v19 + v21 == 507)
      {
        if (v19 != 512)
        {
          if ((v19 - 513) > 0xFFFFFFFA)
          {
            v37 = &_encodeHuffmanTable_symbolArray + 16 * (521 - v19);
            v14 += v37[12];
            v15 += *(v37 + 2) << -v14;
          }

          else
          {
            v35 = (255 << (56 - v14)) + v15;
            v36 = 48 - v14;
            v14 |= 0x10u;
            v15 = v35 + ((507 - v19) << v36);
          }
        }

        goto LABEL_49;
      }
    }

    if (v21 != -5)
    {
      if (v21 >= 0xFFFFFFFB)
      {
        v25 = &_encodeHuffmanTable_symbolArray + 16 * v21 + 224;
        v14 += v25[12];
        v15 += *(v25 + 2) << -v14;
      }

      else
      {
        v23 = (255 << (56 - v14)) + v15;
        v24 = 48 - v14;
        v14 += 16;
        v15 = v23 + (v21 << v24);
      }
    }

    v26 = v22 - v13;
    if (v26 > -5)
    {
      v30 = (v26 - 5);
      if (v26 < 5)
      {
        v32 = &_encodeHuffmanTable_symbolArray + 16 * (v26 + 4);
        v14 += v32[12];
        v15 += *(v32 + 2) << -v14;
        goto LABEL_34;
      }

      v27 = (254 << (56 - v14)) + v15;
      v31 = 48 - v14;
      v14 += 16;
      v29 = v30 << v31;
    }

    else
    {
      v27 = (254 << (56 - v14)) + v15;
      v28 = 48 - v14;
      v14 += 16;
      v29 = (v26 + 4) << v28;
    }

    v15 = v27 + v29;
LABEL_34:
    if (v20 < v16 && v14 >= 8)
    {
      do
      {
        *v20++ = HIBYTE(v15);
        v15 <<= 8;
        v14 -= 8;
      }

      while (v20 < v16 && v14 > 7);
    }

    if (v14 >= 8)
    {
      return 4294951888;
    }

    v17 += 40;
    if (v17 == 10240)
    {
      v17 = 0;
    }

    v34 = v19 + v21;
    v19 = v34 + 6;
    v13 = v22;
  }

  while (v34 != 506);
LABEL_49:
  v38 = (v14 + 7) & 0xFFFFFFF8;
  if (v20 >= v16 || !v38)
  {
    if (!v38)
    {
      goto LABEL_60;
    }

    return 4294951888;
  }

  do
  {
    *v20++ = HIBYTE(v15);
    v15 <<= 8;
    v39 = v38 - 8;
    v40 = v20 >= v16 || v38 == 8;
    v38 -= 8;
  }

  while (!v40);
  if (v39)
  {
    return 4294951888;
  }

LABEL_60:
  if (v20 - a2 > 128)
  {
    return 4294951894;
  }

  v42 = *(a1 + 20534);
  v43 = v20;
  if (!*(a1 + 20534))
  {
    goto LABEL_134;
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = &a2[a3];
  v49 = *(a1 + 20528);
  v50 = *(a1 + 20532);
  v51 = *(a1 + 20530) - v50;
  v52 = *(a1 + 20520);
  v53 = -1;
  v43 = v20;
  while (2)
  {
    if (v50)
    {
      v54 = 0;
      while (1)
      {
        v56 = *v52++;
        v55 = v56;
        if (v53 != v56)
        {
          break;
        }

        ++v47;
LABEL_99:
        if (v45 >= 8)
        {
          return 4294951888;
        }

        if (++v54 == v50)
        {
          goto LABEL_101;
        }
      }

      if (v53 == v49)
      {
        while (v47 >= 0x100)
        {
          v45 += *(a1 + 20468);
          v46 += *v4 << -v45;
          if (v43 < v48 && v45 >= 8)
          {
            do
            {
              *v43++ = HIBYTE(v46);
              v46 <<= 8;
              v45 -= 8;
            }

            while (v43 < v48 && v45 > 7);
          }

          v47 -= 256;
        }

        if (v47)
        {
          v60 = a1 + 40 * v47;
          v45 += *(v60 + 10228);
          v46 += *(v60 + 10224) << -v45;
          v47 = 1;
          if (v43 < v48 && v45 >= 8)
          {
            do
            {
              *v43++ = HIBYTE(v46);
              v46 <<= 8;
              v45 -= 8;
            }

            while (v43 < v48 && v45 > 7);
            goto LABEL_96;
          }

LABEL_97:
          v53 = v55;
          goto LABEL_99;
        }
      }

      else
      {
        if (v53 == -1 || !v47)
        {
          v53 = v55;
          v47 = 1;
          goto LABEL_99;
        }

        v58 = a1 + 40 * v53;
        do
        {
          v45 += *(v58 + 28);
          v46 += *(v58 + 24) << -v45;
          if (v43 < v48 && v45 >= 8)
          {
            do
            {
              *v43++ = HIBYTE(v46);
              v46 <<= 8;
              v45 -= 8;
            }

            while (v43 < v48 && v45 > 7);
          }

          --v47;
        }

        while (v47);
      }

LABEL_96:
      v47 = 1;
      goto LABEL_97;
    }

LABEL_101:
    v52 += v51;
    if (++v44 != v42)
    {
      continue;
    }

    break;
  }

  if (v53 == v49)
  {
    while (v47 >= 0x100)
    {
      v45 += *(a1 + 20468);
      v46 += *v4 << -v45;
      if (v43 < v48 && v45 >= 8)
      {
        do
        {
          *v43++ = HIBYTE(v46);
          v46 <<= 8;
          v45 -= 8;
        }

        while (v43 < v48 && v45 > 7);
      }

      v47 -= 256;
    }

    if (v47)
    {
      v65 = a1 + 40 * v47;
      v45 += *(v65 + 10228);
      v46 += *(v65 + 10224) << -v45;
      if (v43 < v48 && v45 >= 8)
      {
        do
        {
          *v43++ = HIBYTE(v46);
          v46 <<= 8;
          v45 -= 8;
        }

        while (v43 < v48 && v45 > 7);
      }
    }
  }

  else if (v47)
  {
    v63 = a1 + 40 * v53;
    do
    {
      v45 += *(v63 + 28);
      v46 += *(v63 + 24) << -v45;
      if (v43 < v48 && v45 >= 8)
      {
        do
        {
          *v43++ = HIBYTE(v46);
          v46 <<= 8;
          v45 -= 8;
        }

        while (v43 < v48 && v45 > 7);
      }

      --v47;
    }

    while (v47);
  }

  if (v45 > 7 || v43 == v48 && v45)
  {
    return 4294951888;
  }

  if (v43 < v48 && v45)
  {
    *v43++ = HIBYTE(v46);
  }

LABEL_134:
  if (*(a1 + 20544) == v43 - v20)
  {
    result = 0;
  }

  else
  {
    result = 4294951894;
  }

  if (a4)
  {
    *a4 = v43;
  }

  return result;
}