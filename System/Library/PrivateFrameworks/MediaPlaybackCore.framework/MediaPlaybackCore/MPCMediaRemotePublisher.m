@interface MPCMediaRemotePublisher
@end

@implementation MPCMediaRemotePublisher

void __49___MPCMediaRemotePublisher__updateLaunchCommands__block_invoke_2(uint64_t a1)
{
  v212 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 engineID];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v3;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _updateLaunchCommands | begin", buf, 0xCu);
  }

  v5 = [*(a1 + 32) _supportedSessionTypes];
  if (_os_feature_enabled_impl())
  {
    v6 = [*(a1 + 32) _requirementsForSetPlaybackSession];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E69708A8] standardUserDefaults];
  if ([v7 disableQHO])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v2 isQueueHandoffSupported] ^ 1;
  }

  memset(v206, 0, sizeof(v206));
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  *buf = 0u;
  v9 = MSVHasherSharedSeed();
  *buf = xmmword_1C6045200;
  v202 = vaddq_s64(vdupq_n_s64(v9), xmmword_1C6045210);
  *&v203 = v9;
  *(&v203 + 1) = v9 + 0x61C8864E7A143579;
  v204 = 0u;
  v205 = 0u;
  memset(v206, 0, sizeof(v206));
  v10 = v5;
  v11 = [v10 hash];
  *data = v11;
  if (*buf <= 3000)
  {
    if (*buf > 1999)
    {
      if (*buf == 2000)
      {
        LOBYTE(v24) = 0;
        if (v202.u8[3] > 1u)
        {
          if (v202.u8[3] == 2)
          {
            v27 = v11 >> 8;
            v25 = v202.i8[0];
            LODWORD(v24) = HIBYTE(v202.u16[0]);
            LOBYTE(v26) = v11;
          }

          else
          {
            v25 = 0;
            LOBYTE(v26) = 0;
            LODWORD(v27) = 0;
            if (v202.u8[3] == 3)
            {
              v25 = v202.i8[0];
              LODWORD(v24) = HIBYTE(v202.u16[0]);
              LOBYTE(v26) = v202.i8[2];
              LODWORD(v27) = v11;
            }
          }
        }

        else if (v202.i8[3])
        {
          v25 = 0;
          LOBYTE(v26) = 0;
          LODWORD(v27) = 0;
          if (v202.u8[3] == 1)
          {
            v26 = v11 >> 8;
            v25 = v202.i8[0];
            v27 = v11 >> 16;
            LOBYTE(v24) = v11;
          }
        }

        else
        {
          v24 = v11 >> 8;
          v26 = v11 >> 16;
          v25 = v11;
          v27 = v11 >> 24;
        }

        v36 = (v26 << 16) | (v27 << 24) | v25 | (v24 << 8);
        HIDWORD(v37) = (461845907 * ((380141568 * v36) | ((-862048943 * v36) >> 17))) ^ *&buf[8];
        LODWORD(v37) = HIDWORD(v37);
        v38 = 5 * (v37 >> 19) - 430675100;
        *&buf[8] = v38;
        v39 = &data[-v202.u8[3] + 4];
        v40 = &data[((v202.u8[3] + 8) & 0x1FC) - v202.u8[3]];
        if (v39 < v40)
        {
          do
          {
            v41 = *v39++;
            HIDWORD(v42) = (461845907 * ((380141568 * v41) | ((-862048943 * v41) >> 17))) ^ v38;
            LODWORD(v42) = HIDWORD(v42);
            v38 = 5 * (v42 >> 19) - 430675100;
          }

          while (v39 < v40);
          *&buf[8] = v38;
        }

        if ((v202.i8[3] & 3u) > 1uLL)
        {
          v202.i16[0] = *v40;
          if ((v202.i8[3] & 3) != 2)
          {
            v202.i8[2] = *(v40 + 2);
          }
        }

        else if ((v202.i8[3] & 3) != 0)
        {
          v202.i8[0] = *v40;
        }

        v202.i8[3] &= 3u;
        *&buf[12] += 8;
      }

      else if (*buf == 3000)
      {
        _MSV_XXH_XXH32_update(&buf[8], data, 8uLL);
      }
    }

    else if (*buf)
    {
      if (*buf == 1000)
      {
        v12 = *(&v203 + 1);
        if ((*(&v203 + 1) & 0x400000000000000) != 0)
        {
          v28 = *(&v203 + 1) & 0xFFFFFFFFFFFFFFLL | (v11 << 32);
          v29 = (*&buf[8] + v202.i64[0]) ^ __ROR8__(v202.i64[0], 51);
          v30 = v202.i64[1] + (v203 ^ v28);
          v31 = __ROR8__(v203 ^ v28, 48);
          v32 = (v30 ^ v31) + __ROR8__(*&buf[8] + v202.i64[0], 32);
          v33 = v32 ^ __ROR8__(v30 ^ v31, 43);
          v34 = v30 + v29;
          v202.i64[1] = __ROR8__(v34, 32);
          *&v203 = v33;
          *&buf[8] = v32 ^ v28;
          v202.i64[0] = v34 ^ __ROR8__(v29, 47);
          v35 = (*(&v203 + 1) & 0xFF00000000000000) + HIDWORD(v11) + 0x800000000000000;
        }

        else
        {
          if ((*(&v203 + 1) & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v13 = (*&buf[8] + v202.i64[0]) ^ __ROR8__(v202.i64[0], 51);
            v14 = v202.i64[1] + (v203 ^ *(&v203 + 1) & 0xFFFFFFFFFFFFFFLL);
            v15 = __ROR8__(v203 ^ *(&v203 + 1) & 0xFFFFFFFFFFFFFFLL, 48);
            v16 = (v14 ^ v15) + __ROR8__(*&buf[8] + v202.i64[0], 32);
            v17 = v16 ^ __ROR8__(v14 ^ v15, 43);
            v18 = v14 + v13;
            v19 = v18 ^ __ROR8__(v13, 47);
            v20 = __ROR8__(v18, 32);
            v21 = v16 ^ *(&v203 + 1) & 0xFFFFFFFFFFFFFFLL;
            v12 = *(&v203 + 1) & 0xFF00000000000000;
          }

          else
          {
            v21 = *&buf[8];
            v20 = v202.i64[1];
            v19 = v202.i64[0];
            v17 = v203;
          }

          v43 = v17 ^ v11;
          v44 = v21 + v19;
          v45 = (v21 + v19) ^ __ROR8__(v19, 51);
          v46 = v20 + v43;
          v47 = __ROR8__(v43, 48);
          v48 = (v46 ^ v47) + __ROR8__(v44, 32);
          v49 = v48 ^ __ROR8__(v46 ^ v47, 43);
          v50 = v46 + v45;
          v202.i64[1] = __ROR8__(v50, 32);
          *&v203 = v49;
          *&buf[8] = v48 ^ v11;
          v202.i64[0] = v50 ^ __ROR8__(v45, 47);
          v35 = v12 + 0x800000000000000;
        }

        *(&v203 + 1) = v35;
      }
    }

    else
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v22 handleFailureInFunction:v23 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (*buf <= 4000)
  {
    if (*buf == 3001)
    {
      _MSV_XXH_XXH64_update(&buf[8], data, 8uLL);
    }

    else if (*buf == 4000)
    {
      CC_MD5_Update(&buf[8], data, 4u);
    }
  }

  else
  {
    switch(*buf)
    {
      case 0xFA1:
        CC_SHA1_Update(&buf[8], data, 4u);
        break;
      case 0x10A0:
        CC_SHA256_Update(&buf[8], data, 4u);
        break;
      case 0x11A0:
        CC_SHA512_Update(&buf[8], data, 4u);
        break;
    }
  }

  v51 = v6;
  v52 = [v51 hash];
  *data = v52;
  if (*buf <= 3000)
  {
    if (*buf > 1999)
    {
      if (*buf == 2000)
      {
        LOBYTE(v65) = 0;
        if (v202.u8[3] > 1u)
        {
          if (v202.u8[3] == 2)
          {
            v68 = v52 >> 8;
            v66 = v202.i8[0];
            LODWORD(v65) = HIBYTE(v202.u16[0]);
            LOBYTE(v67) = v52;
          }

          else
          {
            v66 = 0;
            LOBYTE(v67) = 0;
            LODWORD(v68) = 0;
            if (v202.u8[3] == 3)
            {
              v66 = v202.i8[0];
              LODWORD(v65) = HIBYTE(v202.u16[0]);
              LOBYTE(v67) = v202.i8[2];
              LODWORD(v68) = v52;
            }
          }
        }

        else if (v202.i8[3])
        {
          v66 = 0;
          LOBYTE(v67) = 0;
          LODWORD(v68) = 0;
          if (v202.u8[3] == 1)
          {
            v67 = v52 >> 8;
            v66 = v202.i8[0];
            v68 = v52 >> 16;
            LOBYTE(v65) = v52;
          }
        }

        else
        {
          v65 = v52 >> 8;
          v67 = v52 >> 16;
          v66 = v52;
          v68 = v52 >> 24;
        }

        v77 = (v67 << 16) | (v68 << 24) | v66 | (v65 << 8);
        HIDWORD(v78) = (461845907 * ((380141568 * v77) | ((-862048943 * v77) >> 17))) ^ *&buf[8];
        LODWORD(v78) = HIDWORD(v78);
        v79 = 5 * (v78 >> 19) - 430675100;
        *&buf[8] = v79;
        v80 = &data[-v202.u8[3] + 4];
        v81 = &data[((v202.u8[3] + 8) & 0x1FC) - v202.u8[3]];
        if (v80 < v81)
        {
          do
          {
            v82 = *v80++;
            HIDWORD(v83) = (461845907 * ((380141568 * v82) | ((-862048943 * v82) >> 17))) ^ v79;
            LODWORD(v83) = HIDWORD(v83);
            v79 = 5 * (v83 >> 19) - 430675100;
          }

          while (v80 < v81);
          *&buf[8] = v79;
        }

        if ((v202.i8[3] & 3u) > 1uLL)
        {
          v202.i16[0] = *v81;
          if ((v202.i8[3] & 3) != 2)
          {
            v202.i8[2] = *(v81 + 2);
          }
        }

        else if ((v202.i8[3] & 3) != 0)
        {
          v202.i8[0] = *v81;
        }

        v202.i8[3] &= 3u;
        *&buf[12] += 8;
      }

      else if (*buf == 3000)
      {
        _MSV_XXH_XXH32_update(&buf[8], data, 8uLL);
      }
    }

    else if (*buf)
    {
      if (*buf == 1000)
      {
        v53 = *(&v203 + 1);
        if ((*(&v203 + 1) & 0x400000000000000) != 0)
        {
          v69 = *(&v203 + 1) & 0xFFFFFFFFFFFFFFLL | (v52 << 32);
          v70 = (*&buf[8] + v202.i64[0]) ^ __ROR8__(v202.i64[0], 51);
          v71 = v202.i64[1] + (v203 ^ v69);
          v72 = __ROR8__(v203 ^ v69, 48);
          v73 = (v71 ^ v72) + __ROR8__(*&buf[8] + v202.i64[0], 32);
          v74 = v73 ^ __ROR8__(v71 ^ v72, 43);
          v75 = v71 + v70;
          v202.i64[1] = __ROR8__(v75, 32);
          *&v203 = v74;
          *&buf[8] = v73 ^ v69;
          v202.i64[0] = v75 ^ __ROR8__(v70, 47);
          v76 = (*(&v203 + 1) & 0xFF00000000000000) + HIDWORD(v52) + 0x800000000000000;
        }

        else
        {
          if ((*(&v203 + 1) & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v54 = (*&buf[8] + v202.i64[0]) ^ __ROR8__(v202.i64[0], 51);
            v55 = v202.i64[1] + (v203 ^ *(&v203 + 1) & 0xFFFFFFFFFFFFFFLL);
            v56 = __ROR8__(v203 ^ *(&v203 + 1) & 0xFFFFFFFFFFFFFFLL, 48);
            v57 = (v55 ^ v56) + __ROR8__(*&buf[8] + v202.i64[0], 32);
            v58 = v57 ^ __ROR8__(v55 ^ v56, 43);
            v59 = v55 + v54;
            v60 = v59 ^ __ROR8__(v54, 47);
            v61 = __ROR8__(v59, 32);
            v62 = v57 ^ *(&v203 + 1) & 0xFFFFFFFFFFFFFFLL;
            v53 = *(&v203 + 1) & 0xFF00000000000000;
          }

          else
          {
            v62 = *&buf[8];
            v61 = v202.i64[1];
            v60 = v202.i64[0];
            v58 = v203;
          }

          v84 = v58 ^ v52;
          v85 = v62 + v60;
          v86 = (v62 + v60) ^ __ROR8__(v60, 51);
          v87 = v61 + v84;
          v88 = __ROR8__(v84, 48);
          v89 = (v87 ^ v88) + __ROR8__(v85, 32);
          v90 = v89 ^ __ROR8__(v87 ^ v88, 43);
          v91 = v87 + v86;
          v202.i64[1] = __ROR8__(v91, 32);
          *&v203 = v90;
          *&buf[8] = v89 ^ v52;
          v202.i64[0] = v91 ^ __ROR8__(v86, 47);
          v76 = v53 + 0x800000000000000;
        }

        *(&v203 + 1) = v76;
      }
    }

    else
    {
      v63 = [MEMORY[0x1E696AAA8] currentHandler];
      v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v63 handleFailureInFunction:v64 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (*buf <= 4000)
  {
    if (*buf == 3001)
    {
      _MSV_XXH_XXH64_update(&buf[8], data, 8uLL);
    }

    else if (*buf == 4000)
    {
      CC_MD5_Update(&buf[8], data, 4u);
    }
  }

  else
  {
    switch(*buf)
    {
      case 0xFA1:
        CC_SHA1_Update(&buf[8], data, 4u);
        break;
      case 0x10A0:
        CC_SHA256_Update(&buf[8], data, 4u);
        break;
      case 0x11A0:
        CC_SHA512_Update(&buf[8], data, 4u);
        break;
    }
  }

  *data = v8;
  v92 = *buf;
  if (*buf <= 3000)
  {
    if (*buf > 1999)
    {
      if (*buf == 2000)
      {
        v96 = 0;
        if (v202.u8[3] > 1u)
        {
          if (v202.u8[3] == 2)
          {
            v99 = 0;
            v97 = v202.i8[0];
            v96 = HIBYTE(v202.u16[0]);
            v98 = v8;
          }

          else
          {
            v97 = 0;
            v98 = 0;
            v99 = 0;
            if (v202.u8[3] == 3)
            {
              v97 = v202.i8[0];
              v96 = HIBYTE(v202.u16[0]);
              v98 = v202.u8[2];
              if (v8)
              {
                v99 = 256;
              }

              else
              {
                v99 = 0;
              }
            }
          }
        }

        else if (v202.i8[3])
        {
          v97 = 0;
          v98 = 0;
          v99 = 0;
          if (v202.u8[3] == 1)
          {
            v98 = 0;
            v99 = 0;
            v97 = v202.i8[0];
            v96 = v8;
          }
        }

        else
        {
          v96 = 0;
          v98 = 0;
          v99 = 0;
          v97 = v8;
        }

        v108 = v97 | (v96 << 8) | ((v99 | v98) << 16);
        HIDWORD(v109) = (461845907 * ((380141568 * v108) | ((-862048943 * v108) >> 17))) ^ *&buf[8];
        LODWORD(v109) = HIDWORD(v109);
        v110 = 5 * (v109 >> 19) - 430675100;
        *&buf[8] = v110;
        v111 = &data[-v202.u8[3] + 4];
        v112 = &data[((v202.u8[3] + 4) & 0x1FC) - v202.u8[3]];
        if (v111 < v112)
        {
          do
          {
            v113 = *v111++;
            HIDWORD(v114) = (461845907 * ((380141568 * v113) | ((-862048943 * v113) >> 17))) ^ v110;
            LODWORD(v114) = HIDWORD(v114);
            v110 = 5 * (v114 >> 19) - 430675100;
          }

          while (v111 < v112);
          *&buf[8] = v110;
        }

        if ((v202.i8[3] & 3u) > 1uLL)
        {
          v202.i16[0] = *v112;
          if ((v202.i8[3] & 3) != 2)
          {
            v202.i8[2] = *(v112 + 2);
          }
        }

        else if ((v202.i8[3] & 3) != 0)
        {
          v202.i8[0] = *v112;
        }

        v202.i8[3] &= 3u;
        *&buf[12] += 4;
      }

      else
      {
        if (*buf != 3000)
        {
          goto LABEL_143;
        }

        _MSV_XXH_XXH32_update(&buf[8], data, 4uLL);
      }
    }

    else if (*buf)
    {
      if (*buf != 1000)
      {
        goto LABEL_143;
      }

      if ((*(&v203 + 1) & 0x400000000000000) != 0)
      {
        v100 = 0x100000000;
        if (!v8)
        {
          v100 = 0;
        }

        v101 = *(&v203 + 1) & 0xFFFFFFFFFFFFFFLL | v100;
        v102 = (*&buf[8] + v202.i64[0]) ^ __ROR8__(v202.i64[0], 51);
        v103 = v202.i64[1] + (v203 ^ v101);
        v104 = __ROR8__(v203 ^ v101, 48);
        v105 = (v103 ^ v104) + __ROR8__(*&buf[8] + v202.i64[0], 32);
        v106 = v105 ^ __ROR8__(v103 ^ v104, 43);
        v107 = v103 + v102;
        v202.i64[1] = __ROR8__(v107, 32);
        *&v203 = v106;
        *&buf[8] = v105 ^ v101;
        v202.i64[0] = v107 ^ __ROR8__(v102, 47);
        v93 = (*(&v203 + 1) & 0xFF00000000000000) + 0x400000000000000;
      }

      else
      {
        v93 = *(&v203 + 1) | v8 | 0x400000000000000;
      }

      *(&v203 + 1) = v93;
    }

    else
    {
      v94 = [MEMORY[0x1E696AAA8] currentHandler];
      v95 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend32(MSVHasher * _Nonnull, uint32_t)"}];
      [v94 handleFailureInFunction:v95 file:@"MSVHasher+Algorithms.h" lineNumber:192 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (*buf <= 4000)
  {
    if (*buf == 3001)
    {
      _MSV_XXH_XXH64_update(&buf[8], data, 4uLL);
    }

    else
    {
      if (*buf != 4000)
      {
        goto LABEL_143;
      }

      CC_MD5_Update(&buf[8], data, 4u);
    }
  }

  else
  {
    switch(*buf)
    {
      case 0xFA1:
        CC_SHA1_Update(&buf[8], data, 4u);
        break;
      case 0x10A0:
        CC_SHA256_Update(&buf[8], data, 4u);
        break;
      case 0x11A0:
        CC_SHA512_Update(&buf[8], data, 4u);
        break;
      default:
        goto LABEL_143;
    }
  }

  v92 = *buf;
LABEL_143:
  memset(&v207[8], 0, 64);
  *v207 = v92;
  if (v92 > 3000)
  {
    if (v92 <= 4000)
    {
      if (v92 == 3001)
      {
        *&v207[8] = _MSV_XXH_XXH64_digest(&buf[8]);
      }

      else if (v92 == 4000)
      {
        CC_MD5_Final(&v207[8], &buf[8]);
      }
    }

    else
    {
      switch(v92)
      {
        case 4001:
          CC_SHA1_Final(&v207[8], &buf[8]);
          break;
        case 4256:
          CC_SHA256_Final(&v207[8], &buf[8]);
          break;
        case 4512:
          CC_SHA512_Final(&v207[8], &buf[8]);
          break;
      }
    }

    goto LABEL_180;
  }

  if (v92 > 1999)
  {
    if (v92 != 2000)
    {
      if (v92 != 3000)
      {
        goto LABEL_180;
      }

      v145 = &v203;
      if (*&buf[12])
      {
        v146 = vaddvq_s32(vorrq_s8(vshlq_u32(v202, xmmword_1C60451B0), vshlq_u32(v202, xmmword_1C60451A0)));
      }

      else
      {
        v146 = v202.i32[2] + 374761393;
      }

      v150 = *&buf[8] + v146;
      v151 = v204 & 0xF;
      if (v151 >= 4)
      {
        do
        {
          v152 = *v145++;
          HIDWORD(v153) = v150 - 1028477379 * v152;
          LODWORD(v153) = HIDWORD(v153);
          v150 = 668265263 * (v153 >> 15);
          v151 -= 4;
        }

        while (v151 > 3);
      }

      for (; v151; --v151)
      {
        v154 = *v145;
        v145 = (v145 + 1);
        HIDWORD(v155) = v150 + 374761393 * v154;
        LODWORD(v155) = HIDWORD(v155);
        v150 = -1640531535 * (v155 >> 21);
      }

      v156 = -1028477379 * ((-2048144777 * (v150 ^ (v150 >> 15))) ^ ((-2048144777 * (v150 ^ (v150 >> 15))) >> 13));
      v157 = v156 ^ HIWORD(v156);
      goto LABEL_179;
    }

    switch(v202.u8[3])
    {
      case 1u:
        v149 = v202.u8[0];
        break;
      case 2u:
        v149 = v202.u16[0];
        break;
      case 3u:
        v149 = v202.u16[0] | (v202.u8[2] << 16);
        break;
      default:
        v158 = *&buf[8];
        goto LABEL_178;
    }

    v158 = (461845907 * ((380141568 * v149) | ((-862048943 * v149) >> 17))) ^ *&buf[8];
LABEL_178:
    v159 = -2048144789 * (v158 ^ *&buf[12] ^ ((v158 ^ *&buf[12]) >> 16));
    v157 = (-1028477387 * (v159 ^ (v159 >> 13))) ^ ((-1028477387 * (v159 ^ (v159 >> 13))) >> 16);
    *&buf[8] = v157;
LABEL_179:
    *&v207[8] = v157;
    goto LABEL_180;
  }

  if (v92)
  {
    if (v92 == 1000)
    {
      v115 = (*&buf[8] + v202.i64[0]) ^ __ROR8__(v202.i64[0], 51);
      v116 = v202.i64[1] + (v203 ^ *(&v203 + 1));
      v117 = __ROR8__(v203 ^ *(&v203 + 1), 48);
      v118 = (v116 ^ v117) + __ROR8__(*&buf[8] + v202.i64[0], 32);
      v119 = v118 ^ __ROR8__(v116 ^ v117, 43);
      v120 = v116 + v115;
      v121 = v120 ^ __ROR8__(v115, 47);
      v122 = (v118 ^ *(&v203 + 1)) + v121;
      v123 = v122 ^ __ROR8__(v121, 51);
      v124 = (__ROR8__(v120, 32) ^ 0xFFLL) + v119;
      v125 = __ROR8__(v119, 48);
      v126 = __ROR8__(v122, 32) + (v124 ^ v125);
      v127 = v126 ^ __ROR8__(v124 ^ v125, 43);
      v128 = v123 + v124;
      v129 = v128 ^ __ROR8__(v123, 47);
      v130 = v129 + v126;
      v131 = v130 ^ __ROR8__(v129, 51);
      v132 = __ROR8__(v128, 32) + v127;
      v133 = __ROR8__(v127, 48);
      v134 = __ROR8__(v130, 32) + (v132 ^ v133);
      v135 = v134 ^ __ROR8__(v132 ^ v133, 43);
      v136 = v131 + v132;
      v137 = v136 ^ __ROR8__(v131, 47);
      v138 = v137 + v134;
      v139 = v138 ^ __ROR8__(v137, 51);
      v140 = __ROR8__(v136, 32) + v135;
      v141 = __ROR8__(v135, 48);
      v142 = __ROR8__(v138, 32) + (v140 ^ v141);
      v143 = v142 ^ __ROR8__(v140 ^ v141, 43);
      v144 = v139 + v140;
      *&buf[8] = v142;
      v202.i64[0] = v144 ^ __ROR8__(v139, 47);
      v202.i64[1] = __ROR8__(v144, 32);
      *&v203 = v143;
      *&v207[8] = v202.i64[0] ^ v142 ^ v202.i64[1] ^ v143;
    }
  }

  else
  {
    v147 = [MEMORY[0x1E696AAA8] currentHandler];
    v148 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
    [v147 handleFailureInFunction:v148 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
  }

LABEL_180:
  *data = *v207;
  *&data[16] = *&v207[16];
  v209 = *&v207[32];
  v210 = *&v207[48];
  v211 = *&v207[64];
  if (*v207 > 3999)
  {
    if (*v207 > 4255)
    {
      if (*v207 == 4256)
      {
        v182 = &data[8];
        v183 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v184 = v183;
        for (i = 0; i != 64; i += 2)
        {
          v186 = *v182++;
          v187 = &v183[i];
          *v187 = MSVFastHexStringFromBytes_hexCharacters_30108[v186 >> 4];
          v187[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v186 & 0xF];
        }

        v166 = objc_alloc(MEMORY[0x1E696AEC0]);
        v167 = v184;
        v168 = 64;
      }

      else
      {
        if (*v207 != 4512)
        {
          goto LABEL_216;
        }

        v170 = &data[8];
        v171 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v172 = v171;
        for (j = 0; j != 128; j += 2)
        {
          v174 = *v170++;
          v175 = &v171[j];
          *v175 = MSVFastHexStringFromBytes_hexCharacters_30108[v174 >> 4];
          v175[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v174 & 0xF];
        }

        v166 = objc_alloc(MEMORY[0x1E696AEC0]);
        v167 = v172;
        v168 = 128;
      }
    }

    else if (*v207 == 4000)
    {
      v176 = &data[8];
      v177 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v178 = v177;
      for (k = 0; k != 32; k += 2)
      {
        v180 = *v176++;
        v181 = &v177[k];
        *v181 = MSVFastHexStringFromBytes_hexCharacters_30108[v180 >> 4];
        v181[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v180 & 0xF];
      }

      v166 = objc_alloc(MEMORY[0x1E696AEC0]);
      v167 = v178;
      v168 = 32;
    }

    else
    {
      if (*v207 != 4001)
      {
        goto LABEL_216;
      }

      v160 = &data[8];
      v161 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v162 = v161;
      for (m = 0; m != 40; m += 2)
      {
        v164 = *v160++;
        v165 = &v161[m];
        *v165 = MSVFastHexStringFromBytes_hexCharacters_30108[v164 >> 4];
        v165[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v164 & 0xF];
      }

      v166 = objc_alloc(MEMORY[0x1E696AEC0]);
      v167 = v162;
      v168 = 40;
    }

    v188 = [v166 initWithBytesNoCopy:v167 length:v168 encoding:4 freeWhenDone:1];
    v169 = [v188 hash];

    goto LABEL_207;
  }

  if (*v207 <= 2999)
  {
    if (*v207 != 1000)
    {
      if (*v207 != 2000)
      {
        goto LABEL_216;
      }

LABEL_199:
      v169 = *&data[8];
      goto LABEL_207;
    }

    goto LABEL_193;
  }

  if (*v207 == 3000)
  {
    goto LABEL_199;
  }

  if (*v207 == 3001)
  {
LABEL_193:
    v169 = *&data[8];
    goto LABEL_207;
  }

LABEL_216:
  v195 = [MEMORY[0x1E696AAA8] currentHandler];
  v196 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint64_t _MSVHashGetUInt64Hash(MSVHash)"];
  [v195 handleFailureInFunction:v196 file:@"MSVHasher+Algorithms.h" lineNumber:327 description:@"Cannot obtain hash from unknown hasher algorithm"];

  v169 = 0;
LABEL_207:
  v189 = *(*(a1 + 32) + 56);
  v190 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  v191 = os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT);
  if (v189 == v169)
  {
    if (v191)
    {
      *data = 138543618;
      *&data[4] = v3;
      *&data[12] = 2048;
      *&data[14] = v169;
      _os_log_impl(&dword_1C5C61000, v190, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _updateLaunchCommands | skipping [no change] hash=%llu", data, 0x16u);
    }
  }

  else
  {
    if (v191)
    {
      v192 = *(*(a1 + 32) + 56);
      *data = 138543874;
      *&data[4] = v3;
      *&data[12] = 2048;
      *&data[14] = v192;
      *&data[22] = 2048;
      *&data[24] = v169;
      _os_log_impl(&dword_1C5C61000, v190, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _updateLaunchCommands | updating [changed] previous=%llu new=%llu", data, 0x20u);
    }

    *(*(a1 + 32) + 56) = v169;
    v193 = MEMORY[0x1E69708D8];
    v197[0] = MEMORY[0x1E69E9820];
    v197[1] = 3221225472;
    v197[2] = __49___MPCMediaRemotePublisher__updateLaunchCommands__block_invoke_177;
    v197[3] = &unk_1E82368B8;
    v198 = v10;
    v200 = v8;
    v199 = v51;
    [v193 updateLaunchCommandsWithConfigurationHandler:v197];
    v194 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
    {
      *data = 138543362;
      *&data[4] = v3;
      _os_log_impl(&dword_1C5C61000, v194, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _updateLaunchCommands | finished []", data, 0xCu);
    }

    v190 = v198;
  }
}

uint64_t __43___MPCMediaRemotePublisher_publishIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSupportedCommands];
  result = [*(a1 + 32) _updateLaunchCommands];
  *(*(a1 + 32) + 72) = 0;
  return result;
}

id __52___MPCMediaRemotePublisher__updateSupportedCommands__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"commandType"];
  v4 = [v3 integerValue];

  if (v4 == 99990)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void __77___MPCMediaRemotePublisher__MRPlaybackSessionMigratePostCallback_completion___block_invoke(void *a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v20 = @"remote-control-id";
  v21[0] = v3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a2;
  v6 = [v4 dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v7 = [v5 findPreviousEventWithType:@"remote-control-begin" matchingPayload:v6];

  v8 = [v5 cursorUntilEvent:v7];

  v9 = [v8 findPreviousEventWithType:@"time-control-status-changed" matchingPayload:0];
  if (v9)
  {
    v10 = [v8 findPreviousEventWithType:@"perf-report" matchingPayload:0];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 payload];
      v13 = [v12 objectForKeyedSubscript:@"perf-metrics"];
      v14 = *(a1[6] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19 = @"No MPP metrics [paused handoff]";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v11 = [v16 errorWithDomain:@"MPCPlaybackEngineInternalError" code:3109 userInfo:v17];

    (*(a1[5] + 16))();
  }
}

void __77___MPCMediaRemotePublisher__MRPlaybackSessionMigratePostCallback_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addEntriesFromDictionary:a2];
  (*(*(a1 + 40) + 16))();
}

void __77___MPCMediaRemotePublisher__MRPlaybackSessionMigratePostCallback_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a2 != 1)
  {
    os_unfair_lock_lock((*(a1 + 32) + 16));
    v3 = *(a1 + 32);
    v4 = *(v3 + 80);
    if (v4)
    {
      v5 = _Block_copy(v4);
      v6 = *(a1 + 32);
      v7 = *(v6 + 80);
      *(v6 + 80) = 0;

      os_unfair_lock_unlock((*(a1 + 32) + 16));
      v8 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A578];
      v12[0] = @"Migration Post callback completion timed out waiting for play perf metrics";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v10 = [v8 errorWithDomain:@"MPCPlaybackEngineInternalError" code:5000 userInfo:v9];

      v5[2](v5, 0, v10);
    }

    else
    {

      os_unfair_lock_unlock((v3 + 16));
    }
  }
}

void __80___MPCMediaRemotePublisher__performSkipChapterCommand_withCommandID_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138543618;
      v15 = v5;
      v16 = 2114;
      v17 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "❗️Cannot skip chapter for current item: %{public}@,skipForward failed. Could not skip to the specified time. (error = %{public}@)", buf, 0x16u);
    }

    v6 = MEMORY[0x1E69708F8];
    v7 = MEMORY[0x1E696ABC0];
    v8 = *(a1 + 48);
    [*(a1 + 40) startTime];
    v10 = [v7 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2004 underlyingError:v3 debugDescription:{@"Failed to jumpToTime:%g", v9}];
    v11 = [v6 statusWithCode:200 error:v10];
    (*(v8 + 16))(v8, v11);
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = [MEMORY[0x1E69708F8] successStatus];
    (*(v12 + 16))(v12, v13);
  }
}

void __65___MPCMediaRemotePublisher_performSetQueueWithIntent_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v6 = v5;
  v7 = v8;
  msv_dispatch_on_main_queue();
}

void __65___MPCMediaRemotePublisher_performSetQueueWithIntent_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) || (v7 = *(a1 + 40)) == 0)
  {
    v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 48);
      v4 = *(a1 + 32);
      *buf = 138543618;
      v12 = v3;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_ERROR, "❗️Failed to generate playback queue: %{public}@ %{public}@", buf, 0x16u);
    }

    v5 = *(a1 + 64);
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3000 underlyingError:*(a1 + 32) debugDescription:{@"Failed to build playback queue from intent %@", *(a1 + 48)}];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65___MPCMediaRemotePublisher_performSetQueueWithIntent_completion___block_invoke_799;
    v9[3] = &unk_1E8238D28;
    v8 = *(a1 + 56);
    v10 = *(a1 + 64);
    [v8 performSetQueue:v7 completion:v9];
    v6 = v10;
  }
}

void __61___MPCMediaRemotePublisher__dispatchCommandEvent_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61___MPCMediaRemotePublisher__dispatchCommandEvent_completion___block_invoke_2;
  v6[3] = &unk_1E82369A0;
  v17 = *(a1 + 112);
  v16 = *(a1 + 104);
  v18 = *(a1 + 116);
  v7 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v10 = *(a1 + 64);
  v11 = *(a1 + 40);
  v15 = *(a1 + 96);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  [(_MPCMediaRemotePublisher *)v2 _performCommandEvent:v3 completion:v6];
}

void __61___MPCMediaRemotePublisher__dispatchCommandEvent_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 112);
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v12 = v11;
  v13 = *(a1 + 104);
  v14 = v13 - 1;
  if (!v10)
  {
    if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v20 = [v7 analyticSignature];
      *buf = 138543362;
      v36 = v20;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PerformCommandPlay", " enableTelemetry=YES status=%{public, signpost.telemetry:string2, name=status}@", buf, 0xCu);
    }

    v21 = *(a1 + 48);
    v12 = *(v21 + 48);
    *(v21 + 48) = 0;
    goto LABEL_19;
  }

  if (v10 != 122)
  {
    if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v22 = [v7 analyticSignature];
      *buf = 138543362;
      v36 = v22;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PerformCommandOther", " enableTelemetry=YES status=%{public, signpost.telemetry:string2, name=status}@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v15 = [v7 analyticSignature];
    *buf = 138543362;
    v36 = v15;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PerformCommandSetPlaybackQueue", " enableTelemetry=YES status=%{public, signpost.telemetry:string2, name=status}@", buf, 0xCu);
  }

  if (![v7 statusCode] && *(a1 + 116) == 1 && !*(a1 + 32))
  {
    v16 = [*(a1 + 40) player];
    v17 = [v16 currentItem];

    if (v17)
    {
      objc_storeStrong((*(a1 + 48) + 48), *(a1 + 56));
      v12 = _MPCLogCategoryPublisher();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(a1 + 40) engineID];
        v19 = [*(a1 + 64) commandID];
        *buf = 138543618;
        v36 = v18;
        v37 = 2114;
        v38 = v19;
        _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _dispatchCommandEvent:%{public}@ | extending background task [siri initiated SetQueue]", buf, 0x16u);
      }

LABEL_19:
    }
  }

  (*(*(a1 + 96) + 16))();
  v31 = v7;
  v23 = [*(a1 + 48) stripCommandStatusForEVS:v7];
  v33[0] = @"remote-control-id";
  v24 = *(a1 + 72);
  v25 = [*(a1 + 64) commandID];
  v34[0] = v25;
  v33[1] = @"remote-control-internal-status";
  v26 = v8;
  v27 = v8;
  if (!v8)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v34[1] = v26;
  v33[2] = @"qos-toolkit-metrics";
  v28 = v9;
  if (!v9)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v34[2] = v28;
  v33[3] = @"remote-control-status";
  v32 = v23;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v34[3] = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:4];
  [v24 emitEventType:@"remote-control-end" payload:v30];

  if (!v9)
  {
  }

  if (!v27)
  {
  }

  [*(a1 + 80) invalidate];
  [*(a1 + 88) invalidate];
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 statusCode])
  {
    if (_os_feature_enabled_impl())
    {
      v4 = a1[4];
      if (v4)
      {
        v4 = v4[17];
      }

      v5 = a1[5];
      v6 = v4;
      v7 = [v6 processStatus:v3 withCommandEvent:v5];

      v8 = a1[4];
      if (v8)
      {
        v8 = v8[17];
      }

      v9 = v8;
      v10 = [v9 getQOSMetricsForDialogHandler];
      v11 = *(a1[9] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v3 = v7;
    }

    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = a1[6];
      v14 = a1[7];
      v16 = [a1[5] interfaceID];
      v24 = 138544130;
      v25 = v15;
      v26 = 2114;
      v27 = v14;
      v28 = 2114;
      v29 = v16;
      v30 = 2114;
      v31 = v3;
      v17 = "❗️[_MPCMediaRemotePublisher _performCommandEvent:completion:]: type=%{public}@ id=%{public}@ interface=%{public}@ status=%{public}@";
      v18 = v13;
      v19 = OS_LOG_TYPE_ERROR;
LABEL_12:
      _os_log_impl(&dword_1C5C61000, v18, v19, v17, &v24, 0x2Au);
    }
  }

  else
  {
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = a1[6];
      v20 = a1[7];
      v16 = [a1[5] interfaceID];
      v24 = 138544130;
      v25 = v21;
      v26 = 2114;
      v27 = v20;
      v28 = 2114;
      v29 = v16;
      v30 = 2114;
      v31 = v3;
      v17 = "[_MPCMediaRemotePublisher _performCommandEvent:completion:]: type=%{public}@ id=%{public}@ interface=%{public}@ status=%{public}@";
      v18 = v13;
      v19 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_12;
    }
  }

  (*(a1[8] + 16))(a1[8], v3, *(*(a1[10] + 8) + 40), *(*(a1[9] + 8) + 40), v22, v23);
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_467(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) player];
  v5 = [v4 currentItem];

  if ([v5 durationIsValid])
  {
    [v5 durationInSeconds];
    v7 = v6;
  }

  else
  {
    v7 = 1.79769313e308;
  }

  v8 = [*(a1 + 32) player];
  [v8 currentTime];
  if (v9 + a2 < v7)
  {
    v10 = [*(a1 + 32) player];
    [v10 currentTime];
    v7 = v11 + a2;
  }

  v12 = [*(a1 + 32) player];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2;
  v14[3] = &unk_1E8237458;
  v13 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = v7;
  [v12 jumpToTime:v13 identifier:v14 completion:v7];
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_472(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) player];
  [v4 currentTime];
  v5 = 0.0;
  if (v6 >= a2)
  {
    v7 = [*(a1 + 32) player];
    [v7 currentTime];
    v5 = v8 - a2;
  }

  v9 = [*(a1 + 32) player];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_473;
  v11[3] = &unk_1E8237458;
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = v5;
  [v9 jumpToTime:v10 identifier:v11 completion:v5];
}

uint64_t __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_474(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaRemoteOptions];
  v2 = [v1 objectForKey:*MEMORY[0x1E69B1200]];

  if ([v2 isEqualToString:@"com.apple.siri"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"com.apple.MediaAssistant"];
  }

  return v3;
}

uint64_t __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_482(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaRemoteOptions];
  v2 = [v1 objectForKey:*MEMORY[0x1E69B1200]];

  v3 = [&unk_1F4599928 containsObject:v2];
  return v3;
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2 > 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_4;
    aBlock[3] = &unk_1E8236A90;
    v6 = *(a1 + 32);
    v27 = *(a1 + 72);
    v7 = *(a1 + 40);
    v28[1] = *(a1 + 88);
    v20 = *(a1 + 48);
    v8 = *(&v20 + 1);
    *&v9 = v6;
    *(&v9 + 1) = v7;
    v25 = v9;
    v26 = v20;
    objc_copyWeak(v28, (a1 + 80));
    v28[2] = a2;
    v10 = _Block_copy(aBlock);
    v11 = [*(a1 + 32) queueController];
    v12 = [v11 currentItem];

    if ([*(a1 + 32) usesStopState])
    {
      v13 = *(a1 + 48);
      if ((v13[73] & 1) != 0 || !v12)
      {
        goto LABEL_10;
      }
    }

    else if (!v12)
    {
      v13 = *(a1 + 48);
LABEL_10:
      v19 = *(a1 + 64);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_6;
      v21[3] = &unk_1E8236AB8;
      v22 = v10;
      v23 = *(a1 + 72);
      [v13 _enqueueFallbackIntentIfNeededForCommandEvent:v19 play:1 completion:v21];

      v18 = v22;
      goto LABEL_11;
    }

    v18 = [MEMORY[0x1E69708F8] successStatus];
    (*(v10 + 2))(v10, 0, v18);
LABEL_11:

    objc_destroyWeak(v28);
    goto LABEL_12;
  }

  v14 = *(a1 + 72);
  v15 = MEMORY[0x1E69708F8];
  v16 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:1001 underlyingError:v5 debugDescription:@"Failed to activate audio session"];
  v17 = [v15 statusWithCode:200 error:v16];
  (*(v14 + 16))(v14, v17);

LABEL_12:
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E69708F8];
  if (a2)
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2001 underlyingError:a2 debugDescription:{@"Failed to pauseWithFadeout:%g", *(a1 + 40)}];
    v4 = [v3 statusWithCode:200 error:?];
    (*(v2 + 16))(v2, v4);
  }

  else
  {
    v5 = [MEMORY[0x1E69708F8] successStatus];
    (*(v2 + 16))(v2);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 <= 0)
  {
    v13 = *(a1 + 64);
    v14 = MEMORY[0x1E69708F8];
    v15 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:1001 underlyingError:v5 debugDescription:@"Cannot toggle play/pause because audio session activation failed."];
    v16 = [v14 statusWithCode:200 error:v15];
    (*(v13 + 16))(v13, v16);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_9;
    aBlock[3] = &unk_1E8236B08;
    v26 = *(a1 + 64);
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = v5;
    v6 = _Block_copy(aBlock);
    v7 = [*(a1 + 32) player];
    v8 = [v7 state];

    if (v8 != 2)
    {
      v9 = [*(a1 + 32) leaseManager];
      [v9 setCanStealLeaseIfNeeded];
    }

    v10 = [*(a1 + 32) player];
    v11 = [v10 currentItem];

    if (v11)
    {
      v12 = [MEMORY[0x1E69708F8] successStatus];
      v6[2](v6, 0, v12);
    }

    else
    {
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_11;
      v19[3] = &unk_1E8236AB8;
      v20 = v6;
      v21 = *(a1 + 64);
      [v17 _enqueueFallbackIntentIfNeededForCommandEvent:v18 play:v8 != 2 completion:v19];

      v12 = v20;
    }
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_530(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = *(a1 + 32);
    v18 = 0;
    v7 = [v6 canJumpToContentItemID:v5 reason:&v18];
    v8 = v18;
    if (v7)
    {
      [*(a1 + 32) jumpToContentItemID:v5 direction:2];
      v9 = *(a1 + 40);
      v10 = [MEMORY[0x1E69708F8] successStatus];
      (*(v9 + 16))(v9, v10);
    }

    else
    {
      v15 = *(a1 + 40);
      v16 = MEMORY[0x1E69708F8];
      v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:4 debugDescription:{@"Cannot play item in queue due to item policy: %@", v8}];
      v17 = [v16 statusWithCode:200 error:v10];
      (*(v15 + 16))(v15, v17);

      v8 = v17;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69708F8];
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3 underlyingError:a3 debugDescription:{@"Cannot find item by trackID: %lld", *(a1 + 48)}];
    v14 = [v11 statusWithCode:100 error:v13];
    (*(v12 + 16))(v12, v14);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_538(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = MEMORY[0x1E69708F8];
  v13 = v3;
  if (v3)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = [*(a1 + 32) player];
    v8 = [v7 currentItem];
    v9 = [v8 initialPlaybackStartTime];
    [v9 doubleValue];
    v11 = [v6 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2004 underlyingError:v13 debugDescription:{@"Failed jumpToTime:%lf", v10}];
    v12 = [v5 statusWithCode:200 error:v11];
    (*(v4 + 16))(v4, v12);
  }

  else
  {
    v7 = [MEMORY[0x1E69708F8] successStatus];
    (*(v4 + 16))(v4, v7);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_3_542(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v4 = [*(a1 + 32) contentItemIDWithCurrentItemOffset:a2 mode:2 didReachEnd:&v11];
  if (v11 == 1)
  {
    if (a2 >= 1)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = MSVNanoIDCreateTaggedPointer();
      v7 = [v5 stringWithFormat:@"endOfQueuePause_%@", v6];

      v8 = [*(a1 + 40) player];
      [v8 pauseWithFadeout:v7 identifier:&__block_literal_global_548 completion:0.0];

      v9 = [*(a1 + 40) player];
      [v9 didReachEndOfQueueWithReason:@"nextTrack"];
    }
  }

  else
  {
    if (a2 < 1)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    [*(a1 + 32) jumpToContentItemID:v4 direction:v10];
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_5_558(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  if (*(*(a1 + 32) + 32))
  {
    (*(*(a1 + 40) + 16))();
    *(*(a1 + 32) + 32) = 0;
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_6_562(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(a1 + 32) + 21) = 0;
    v2 = *(a1 + 40);
    v3 = MEMORY[0x1E69708F8];
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2005 underlyingError:a2 debugDescription:@"Failed to begin rewinding"];
    v4 = [v3 statusWithCode:200 error:?];
    (*(v2 + 16))(v2, v4);
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E69708F8] successStatus];
    (*(v5 + 16))(v5);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_7_566(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(a1 + 32) + 20) = 0;
    v2 = *(a1 + 40);
    v3 = MEMORY[0x1E69708F8];
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2005 underlyingError:a2 debugDescription:@"Failed to begin fast-forwarding"];
    v4 = [v3 statusWithCode:200 error:?];
    (*(v2 + 16))(v2, v4);
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E69708F8] successStatus];
    (*(v5 + 16))(v5);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_8_573(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E69708F8];
  if (a2)
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2006 underlyingError:a2 debugDescription:@"Failed to end scanning"];
    v4 = [v3 statusWithCode:200 error:?];
    (*(v2 + 16))(v2, v4);
  }

  else
  {
    v5 = [MEMORY[0x1E69708F8] successStatus];
    (*(v2 + 16))(v2);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_580(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) player];
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_581;
  v6[3] = &unk_1E8236B80;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  [v4 jumpToTime:v5 identifier:v6 completion:a2];
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_582(id *a1, double a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_583;
  block[3] = &unk_1E82374A8;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  v13 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_602(uint64_t a1)
{
  v2 = [*(a1 + 32) upNextBehavior];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) targetContentItemID];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_603;
  v5[3] = &unk_1E8238D28;
  v6 = *(a1 + 48);
  [v2 performInsertCommand:v3 targetContentItemID:v4 completion:v5];
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_4_608(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = MEMORY[0x1E69708F8];
  if (a2)
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3002 underlyingError:a2 debugDescription:{@"Failed to move item: %@", *(a1 + 32)}];
    v4 = [v3 statusWithCode:200 error:?];
    (*(v2 + 16))(v2, v4);
  }

  else
  {
    v5 = [MEMORY[0x1E69708F8] successStatus];
    (*(v2 + 16))(v2);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_5_612(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E69708F8];
    v4 = *(a1 + 40);
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3004 underlyingError:a2 debugDescription:{@"Failed to setRepeatType: %ld", *(a1 + 48)}];
    v5 = [v3 statusWithCode:200 error:?];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    if ([*(a1 + 32) preservesRepeatMode])
    {
      v6 = [MEMORY[0x1E69708A8] standardUserDefaults];
      [v6 setMusicRepeatType:*(a1 + 48)];
    }

    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E69708F8] successStatus];
    (*(v7 + 16))(v7);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_6_619(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E69708F8];
    v4 = *(a1 + 40);
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3004 underlyingError:a2 debugDescription:{@"Failed to setRepeatType: %ld", *(a1 + 48)}];
    v5 = [v3 statusWithCode:200 error:?];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    if ([*(a1 + 32) preservesRepeatMode])
    {
      v6 = [MEMORY[0x1E69708A8] standardUserDefaults];
      [v6 setMusicRepeatType:*(a1 + 48)];
    }

    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E69708F8] successStatus];
    (*(v7 + 16))(v7);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_7_620(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E69708F8];
    v4 = *(a1 + 40);
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3005 underlyingError:a2 debugDescription:{@"Failed to setShuffleType: %ld", *(a1 + 48)}];
    v5 = [v3 statusWithCode:200 error:?];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    if ([*(a1 + 32) preservesShuffleMode])
    {
      v6 = [MEMORY[0x1E69708A8] standardUserDefaults];
      [v6 setMusicShuffleType:*(a1 + 48)];
    }

    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E69708F8] successStatus];
    (*(v7 + 16))(v7);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_8_624(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E69708F8];
    v4 = *(a1 + 40);
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3005 underlyingError:a2 debugDescription:{@"Failed to setShuffleType: %ld", *(a1 + 48)}];
    v5 = [v3 statusWithCode:200 error:?];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    if ([*(a1 + 32) preservesShuffleMode])
    {
      v6 = [MEMORY[0x1E69708A8] standardUserDefaults];
      [v6 setMusicShuffleType:*(a1 + 48)];
    }

    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E69708F8] successStatus];
    (*(v7 + 16))(v7);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_9_625(uint64_t a1)
{
  v2 = [*(a1 + 32) music];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_10_626;
  v3[3] = &unk_1E8238D28;
  v4 = *(a1 + 40);
  [v2 reshuffleWithTargetContentItemID:0 completion:v3];
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_11_636(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = MEMORY[0x1E69708F8];
    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3006 underlyingError:a2 debugDescription:{@"Failed to setAutoPlayEnabled: %{BOOL}u", *(a1 + 48)}];
    v5 = [v4 statusWithCode:200 error:?];
    (*(v3 + 16))(v3, v5);
  }

  else
  {
    if ([*(a1 + 32) preservesQueueEndAction])
    {
      v6 = [*(a1 + 32) queueEndAction] == 3;
      v7 = [MEMORY[0x1E69708A8] standardUserDefaults];
      v8 = [*(a1 + 32) userIdentity];
      [v7 setAutoPlayEnabled:v6 forUserIdentity:v8];
    }

    v9 = *(a1 + 40);
    v10 = [MEMORY[0x1E69708F8] successStatus];
    (*(v9 + 16))(v9);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = MEMORY[0x1E69708F8];
  if (a2)
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3003 underlyingError:a2 debugDescription:{@"Failed to remove item: %@", *(a1 + 32)}];
    v4 = [v3 statusWithCode:200 error:?];
    (*(v2 + 16))(v2, v4);
  }

  else
  {
    v5 = [MEMORY[0x1E69708F8] successStatus];
    (*(v2 + 16))(v2);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_650(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E69E4198]])
  {
    v5 = [v3 code];

    if (v5 == -7403)
    {
      v6 = a1[6];
      v7 = MEMORY[0x1E69708F8];
      v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:102 underlyingError:v3 debugDescription:{@"Account is not authenticated: %@", a1[4]}];
      v9 = [v7 statusWithCode:1401 error:v8];
      (*(v6 + 16))(v6, v9);

LABEL_15:
      goto LABEL_18;
    }
  }

  else
  {
  }

  if (!v3)
  {
    v18 = a1[6];
    v8 = [MEMORY[0x1E69708F8] successStatus];
    (*(v18 + 16))(v18, v8);
    goto LABEL_15;
  }

  v10 = [v3 msv_errorByUnwrappingDomain:*MEMORY[0x1E69E42B8]];
  v11 = v10;
  if (!v10 || ((v12 = [v10 code], (v12 - 3059) <= 0x19) ? (v13 = ((1 << (v12 + 13)) & 0x2000003) == 0) : (v13 = 1), v13))
  {
    v19 = a1[6];
    v20 = MEMORY[0x1E69708F8];
    v21 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:199 underlyingError:v3 debugDescription:{@"Account failed to prepareToPlay: %@", a1[4]}];
    v22 = [v20 statusWithCode:200 error:v21];
    (*(v19 + 16))(v19, v22);
  }

  else
  {
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a1[5];
      *buf = 138412546;
      v24 = v15;
      v25 = 2114;
      v26 = v3;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "❕[PrepareForSetQueue] Could not renew lease for identity: %@ response: %{public}@", buf, 0x16u);
    }

    v16 = a1[6];
    v17 = [MEMORY[0x1E69708F8] successStatus];
    (*(v16 + 16))(v16, v17);
  }

LABEL_18:
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_664(uint64_t a1, void *a2)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 msv_errorByUnwrappingDomain:@"MPCError" code:27];

  if (!v4)
  {
    v10 = [v3 msv_errorByUnwrappingDomain:@"MPCPodcastsBehaviorError" code:6];

    if (v10)
    {
      v5 = *(a1 + 64);
      v11 = MEMORY[0x1E69708F8];
      v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:1 underlyingError:v3 debugDescription:@"No playable content found"];
      v8 = v11;
      v9 = 100;
      goto LABEL_5;
    }

    v13 = [v3 msv_errorByUnwrappingDomain:@"MPCMusicBehaviorError" code:10];

    if (v13)
    {
      v14 = [*(a1 + 32) mpc_clientPreferredLanguages];
      v15 = [v14 firstObject];

      v16 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
      v51 = [v16 localizedStringForKey:@"CLEAR_QUEUE_ALERT_MESSAGE" value:0 table:@"MediaPlaybackCore" localization:v15];
      v17 = [v16 localizedStringForKey:@"CLEAR_QUEUE_ALERT_ACTION_CANCEL" value:0 table:@"MediaPlaybackCore" localization:v15];
      v18 = [v16 localizedStringForKey:@"CLEAR_QUEUE_ALERT_ACTION_CLEAR" value:0 table:@"MediaPlaybackCore" localization:v15];
      v19 = [MEMORY[0x1E69708E8] dialogWithTitle:0 message:v51];
      v20 = [MEMORY[0x1E69708F0] actionWithTitle:v17 type:1 commandEvent:0];
      [v19 addAction:v20];

      v21 = *(a1 + 32);
      v56 = @"selectedAction";
      v57[0] = @"clearQueue";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
      v23 = [v21 copyWithDialogOptions:v22];

      v24 = [MEMORY[0x1E69708F0] actionWithTitle:v18 type:2 commandEvent:v23];
      [v19 addAction:v24];

      v25 = *(a1 + 64);
      v26 = [MEMORY[0x1E69708F8] statusWithCode:200 dialog:v19];
      (*(v25 + 16))(v25, v26);
    }

    else
    {
      v27 = *(a1 + 64);
      v28 = [v3 mpc_remoteCommandStatus];
      if (v28)
      {
        (*(v27 + 16))(v27, v28);
      }

      else
      {
        v29 = [MEMORY[0x1E69708F8] successStatus];
        (*(v27 + 16))(v27, v29);
      }

      v30 = [MEMORY[0x1E69708A8] standardUserDefaults];
      v31 = [v30 forceDisableUpNext];

      if (v31)
      {
        v15 = [*(a1 + 40) queueController];
        v32 = [v15 upNextBehavior];
        if (!v32)
        {
          goto LABEL_9;
        }

        v33 = v32;
        v34 = [v15 upNextBehavior];
        v35 = [v34 allowsQueueModifications];

        if (!v35)
        {
          goto LABEL_9;
        }

        v36 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [*(a1 + 40) engineID];
          v38 = *(a1 + 48);
          *buf = 138543618;
          v53 = v37;
          v54 = 2114;
          v55 = v38;
          _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "[PBLSH:%{public}@] _performCommandEvent:%{public}@… | disabling queue modifications [user default forced]", buf, 0x16u);
        }

        v39 = [v15 upNextBehavior];
        v40 = v39;
        v41 = 0;
      }

      else
      {
        v42 = [MEMORY[0x1E69708A8] standardUserDefaults];
        v43 = [v42 ignoreDisableUpNext];

        if (!v43)
        {
          goto LABEL_6;
        }

        v15 = [*(a1 + 40) queueController];
        v44 = [v15 upNextBehavior];
        if (!v44)
        {
          goto LABEL_9;
        }

        v45 = v44;
        v46 = [v15 upNextBehavior];
        v47 = [v46 allowsQueueModifications];

        if (v47)
        {
          goto LABEL_9;
        }

        v48 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [*(a1 + 40) engineID];
          v50 = *(a1 + 48);
          *buf = 138543618;
          v53 = v49;
          v54 = 2114;
          v55 = v50;
          _os_log_impl(&dword_1C5C61000, v48, OS_LOG_TYPE_DEFAULT, "[PBLSH:%{public}@] _performCommandEvent:%{public}@… | enabling queue modifications [user default ignored]", buf, 0x16u);
        }

        v39 = [v15 upNextBehavior];
        v40 = v39;
        v41 = 1;
      }

      [v39 setAllowsQueueModifications:v41];

      [*(a1 + 56) publishIfNeeded];
    }

LABEL_9:

    goto LABEL_6;
  }

  v5 = *(a1 + 64);
  v6 = MEMORY[0x1E69708F8];
  v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:101 underlyingError:v3 debugDescription:@"SharedQueue feature requires a subscription"];
  v8 = v6;
  v9 = 1004;
LABEL_5:
  v12 = [v8 statusWithCode:v9 error:v7];
  (*(v5 + 16))(v5, v12);

LABEL_6:
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_681(uint64_t a1, void *a2)
{
  v3 = [a2 msv_errorByWrappingWithDomain:@"MPCPlaybackEngineInternalError" code:3008 debugDescription:{@"Failed to perform CreateStationSetQueue with playback intent: %@", *(a1 + 32)}];
  v6 = [v3 mpc_remoteCommandStatus];

  v4 = *(a1 + 40);
  if (v6)
  {
    (*(v4 + 16))(v4);
  }

  else
  {
    v5 = [MEMORY[0x1E69708F8] successStatus];
    (*(v4 + 16))(v4, v5);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_694(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      *buf = 138543618;
      v28 = v21;
      v29 = 2114;
      v30 = v7;
      _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_ERROR, "❗️Failed to generate create-station playback queue: %{public}@ %{public}@", buf, 0x16u);
    }

    v22 = *(a1 + 64);
    v16 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3000 underlyingError:v7 debugDescription:{@"Failed to build create-station playback queue from intent %@", *(a1 + 32)}];
    v19 = [v16 mpc_remoteCommandStatus];
    (*(v22 + 16))(v22, v19);
  }

  else
  {
    v8 = [*(a1 + 40) music];
    v9 = [*(a1 + 48) contentItemID];
    [v8 prepareForCreateStationAfterContentItemID:v9];

    v10 = objc_alloc(MEMORY[0x1E6970558]);
    v11 = [*(a1 + 56) commandCenter];
    v12 = [v11 insertIntoPlaybackQueueCommand];
    v25[0] = *MEMORY[0x1E69B10C8];
    v13 = [*(a1 + 40) targetContentItemID];
    v14 = *MEMORY[0x1E69B1178];
    v26[0] = v13;
    v26[1] = &unk_1F45994D8;
    v25[1] = v14;
    v25[2] = @"_MPCOverrideAllowsInsertionPositionLast";
    v26[2] = MEMORY[0x1E695E118];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v16 = [v10 initWithCommand:v12 playbackQueue:v5 options:v15];

    v17 = [*(a1 + 40) music];
    v18 = [*(a1 + 40) targetContentItemID];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_701;
    v23[3] = &unk_1E8238D28;
    v24 = *(a1 + 64);
    [v17 performInsertCommand:v16 targetContentItemID:v18 completion:v23];

    v19 = v24;
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_703(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "❗️Reload with playback context failed with error: %{public}@", buf, 0xCu);
    }

    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3008 underlyingError:v3 debugDescription:{@"Failed to perform SetQueue with playback intent: %@", *(a1 + 32)}];
    v7 = [v6 mpc_remoteCommandStatus];
    (*(v5 + 16))(v5, v7);
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x1E69708F8] successStatus];
    (*(v8 + 16))(v8, v9);
  }
}

uint64_t __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_715(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_716;
  v3[3] = &__block_descriptor_40_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v3[4] = *(a1 + 32);
  return [a2 setUniversalStoreIdentifiersWithBlock:v3];
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_737(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "❗️Change rate failed. (error = %{public}@)", buf, 0xCu);
    }

    v5 = MEMORY[0x1E69708F8];
    v6 = MEMORY[0x1E696ABC0];
    v7 = *(a1 + 40);
    [*(a1 + 32) playbackRate];
    WeakRetained = [v6 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2003 underlyingError:v3 debugDescription:{@"Failed to setRate:%g", v8}];
    v10 = [v5 statusWithCode:200 error:WeakRetained];
    (*(v7 + 16))(v7, v10);
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x1E69708F8] successStatus];
    (*(v11 + 16))(v11, v12);

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained publishIfNeeded];
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_748(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v11 = v10;
  v12 = *(a1 + 48);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 138543362;
    v28 = v9;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_END, v12, "shareQueue:getTracklist", "error=%{public}@", buf, 0xCu);
  }

  if (v9)
  {
    v13 = *(a1 + 40);
    v14 = MEMORY[0x1E69708F8];
    v15 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3000 underlyingError:v9 debugDescription:@"Unable to build shared queue tracklist from current queue."];
    v16 = [v14 statusWithCode:200 error:v15];
    (*(v13 + 16))(v13, v16);
  }

  else
  {
    v15 = objc_alloc_init(_MPCSharedListeningTracklistPlaybackContext);
    [(_MPCSharedListeningTracklistPlaybackContext *)v15 setTracklist:v7];
    [(_MPCSharedListeningTracklistPlaybackContext *)v15 setStartItemIndexPath:v8];
    v16 = objc_alloc_init(MPCPlaybackIntent);
    [(MPCPlaybackIntent *)v16 setTracklistToken:v15];
    [(MPCPlaybackIntent *)v16 setTracklistSource:6];
    v17 = [*(a1 + 32) mediaRemoteOptions];
    v18 = [v17 objectForKeyedSubscript:@"com.apple.music.live-link-identity-json"];

    v19 = [MEMORY[0x1E69E4450] payloadValueFromJSONValue:v18];
    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v21 = v20;
    v22 = *(a1 + 48);
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v22, "shareQueue:buildIntent", "", buf, 2u);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_757;
    v24[3] = &unk_1E8236D80;
    v23 = *(a1 + 40);
    v26 = *(a1 + 48);
    v25 = v23;
    [MPCPlaybackIntent buildSharedSessionIntentWithIntent:v16 identity:v19 extendedStatusCompletion:v24];
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_772(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setVocalAttenuationEnabled:*(a1 + 56)];
    v4 = *(a1 + 56);
    v5 = [*(a1 + 32) vocalAttenuationController];
    [(MPCWhiskyController *)v5 setEnabled:v4];

    [*(a1 + 40) publishIfNeeded];
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v3;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_ERROR, "[AP] - Error reloading asset for VA error:%{public}@", &v15, 0xCu);
    }

    v7 = *(a1 + 48);
    v8 = MEMORY[0x1E69708F8];
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:0 underlyingError:v3 debugDescription:@"Reloading the item for vocal attenuation did not succeed"];
    v10 = [v8 statusWithCode:200 error:v9];
    (*(v7 + 16))(v7, v10);
  }

  else
  {
    v11 = [*(a1 + 32) isVocalAttenuationEnabled];
    v12 = [*(a1 + 32) vocalAttenuationController];
    [(MPCWhiskyController *)v12 setEnabled:v11];

    v13 = *(a1 + 48);
    v14 = [MEMORY[0x1E69708F8] successStatus];
    (*(v13 + 16))(v13, v14);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_785(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "❗️Failed to perform dialog action: %{public}@", buf, 0xCu);
    }

    v5 = MEMORY[0x1E69708F8];
    v6 = MEMORY[0x1E696ABC0];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) mediaRemoteOptions];
    v9 = [v6 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:6000 underlyingError:v3 debugDescription:{@"Failed to perform dialog action with options: %@", v8}];
    v10 = [v5 statusWithCode:200 error:v9];
    (*(v7 + 16))(v7, v10);
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x1E69708F8] statusWithCode:110];
    (*(v11 + 16))(v11, v12);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_789(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E69708F8];
  if (a2)
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3301 underlyingError:a2 debugDescription:@"Failed to toggle transitions"];
    v4 = [v3 statusWithCode:200 error:?];
    (*(v2 + 16))(v2, v4);
  }

  else
  {
    v5 = [MEMORY[0x1E69708F8] successStatus];
    (*(v2 + 16))(v2);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_757(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 138543362;
    v26 = v6;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v8, OS_SIGNPOST_INTERVAL_END, v9, "shareQueue:buildIntent", "status=%{public}@", buf, 0xCu);
  }

  v10 = [v6 error];

  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = MEMORY[0x1E69708F8];
    v13 = MEMORY[0x1E696ABC0];
    v14 = [v6 error];
    v15 = [v13 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3000 underlyingError:v14 debugDescription:@"Failed to build shared queue intent from current queue."];
    v16 = [v12 statusWithCode:200 error:v15];
    (*(v11 + 16))(v11, v16);
  }

  else if ([v6 type] == 3)
  {
    v17 = *(a1 + 32);
    v14 = [v6 status];
    (*(v17 + 16))(v17, v14);
  }

  else
  {
    v18 = [v5 sharedListeningProperties];
    v14 = [v18 sessionIdentifier];

    v19 = [v5 sharedListeningProperties];
    v20 = [v19 sessionKey];

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"?id=%@&key=%@", v14, v20];
    v22 = [v21 dataUsingEncoding:4];

    v23 = *(a1 + 32);
    v24 = [MEMORY[0x1E69708F8] statusWithCode:0 customData:v22 type:@"com.apple.music.shared-session-url-components"];
    (*(v23 + 16))(v23, v24);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_701(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mpc_remoteCommandStatus];
  v5 = v3;
  if (v3)
  {
    (*(v2 + 16))(v2, v3);
  }

  else
  {
    v4 = [MEMORY[0x1E69708F8] successStatus];
    (*(v2 + 16))(v2, v4);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_660()
{
  v0 = +[MPCPlaybackPerformanceController sharedController];
  [v0 warmCDNConnection];
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_657()
{
  v6 = *MEMORY[0x1E69E9840];
  inPropertyData = 1;
  v0 = AudioServicesSetProperty(0x61637474u, 0, 0, 4u, &inPropertyData);
  if (v0)
  {
    v1 = v0;
    v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v5 = v1;
      _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_ERROR, "[Publisher] Failed to prewarm amps. error: %ld", buf, 0xCu);
    }
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_10_626(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E69708F8];
  if (a2)
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3005 underlyingError:a2 debugDescription:@"Failed to reshuffle"];
    v4 = [v3 statusWithCode:200 error:?];
    (*(v2 + 16))(v2, v4);
  }

  else
  {
    v5 = [MEMORY[0x1E69708F8] successStatus];
    (*(v2 + 16))(v2);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_603(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 msv_errorByUnwrappingDomain:@"MPCError" code:27];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = MEMORY[0x1E69708F8];
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:101 underlyingError:v9 debugDescription:@"SharedQueue feature requires a subscription"];
    v7 = [v5 statusWithCode:1004 error:v6];
    (*(v4 + 16))(v4, v7);
  }

  else
  {
    v8 = *(a1 + 32);
    if (v9)
    {
      [v9 mpc_remoteCommandStatus];
    }

    else
    {
      [MEMORY[0x1E69708F8] successStatus];
    }
    v6 = ;
    (*(v8 + 16))(v8, v6);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_583(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) player];
  v3 = [v2 currentItem];

  v4 = [*(a1 + 40) nowPlayingContentItemID];
  v5 = [v3 contentItemID];
  v6 = v5;
  if (v4 == v5)
  {

    goto LABEL_7;
  }

  v7 = [v4 isEqual:v5];

  if (v7)
  {
LABEL_7:
    (*(*(a1 + 56) + 16))(*(a1 + 64));
    goto LABEL_8;
  }

  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 40) nowPlayingContentItemID];
    v10 = [v3 contentItemID];
    *buf = 138543618;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "❗️SeekToPlaybackPosition failed. Current item has changed: %{public}@ [currentItem is %{public}@]", buf, 0x16u);
  }

  v11 = MEMORY[0x1E696ABC0];
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) nowPlayingContentItemID];
  v14 = [v3 contentItemID];
  v15 = [v11 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3 debugDescription:{@"Cannot seek item (%@) with different current item (%@)", v13, v14}];
  v16 = [v15 mpc_remoteCommandStatus];
  (*(v12 + 16))(v12, v16);

LABEL_8:
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_581(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "❗️SeekToPlaybackPosition failed. Could not jump to the specified time. (error = %{public}@)", buf, 0xCu);
    }

    v5 = MEMORY[0x1E69708F8];
    v6 = MEMORY[0x1E696ABC0];
    v7 = *(a1 + 40);
    [*(a1 + 32) positionTime];
    v9 = [v6 msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2004 underlyingError:v3 debugDescription:{@"Failed to jumpToTime:%g", v8}];
    v10 = [v5 statusWithCode:200 error:v9];
    (*(v7 + 16))(v7, v10);
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x1E69708F8] successStatus];
    (*(v11 + 16))(v11, v12);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_9(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 32) player];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_10;
    v6[3] = &unk_1E8236B80;
    v5 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    [v4 togglePlaybackWithIdentifier:v5 completion:v6];
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 statusCode])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = MEMORY[0x1E69708F8];
  if (*(a1 + 32))
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2002 underlyingError:a2 debugDescription:@"Failed to toggle playback"];
    v4 = [v3 statusWithCode:200 error:?];
    (*(v2 + 16))(v2, v4);
  }

  else
  {
    v5 = [MEMORY[0x1E69708F8] successStatus];
    (*(v2 + 16))(v2);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) leaseManager];
  [v6 setCanStealLeaseIfNeeded];

  if (a2)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v7 = 1.0;
    if ([*(a1 + 40) behaviorType] == 4)
    {
      v8 = [*(a1 + 40) currentItem];
      if (([v8 conformsToProtocol:&unk_1F459C8B8] & 1) == 0)
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        [v15 handleFailureInMethod:*(a1 + 80) object:*(a1 + 48) file:@"_MPCMediaRemotePublisher.m" lineNumber:1957 description:@"Item does not conform to _MPCPodcastAVItemProvidingProtocol!"];
      }

      [v8 preferredPlaybackRate];
      v7 = v9;
    }

    v10 = [*(a1 + 32) player];
    v11 = *(a1 + 56);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_5;
    v16[3] = &unk_1E8236A68;
    objc_copyWeak(v18, (a1 + 72));
    v12 = *(a1 + 64);
    v13 = *(a1 + 88);
    v17 = v12;
    v18[1] = v13;
    *&v14 = v7;
    [v10 playWithRate:v11 identifier:v16 completion:v14];

    objc_destroyWeak(v18);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 statusCode])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (v11)
  {
    v5 = *(a1 + 32);
    v6 = MEMORY[0x1E69708F8];
    v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2000 underlyingError:v11 debugDescription:@"Failed to playWithRate:1.0"];
    v8 = [v6 statusWithCode:200 error:v7];
    (*(v5 + 16))(v5, v8);

    [v4 deactivateAudioSessionIfIdle:*(a1 + 48)];
  }

  else
  {
    [WeakRetained publishIfNeeded];
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E69708F8] successStatus];
    (*(v9 + 16))(v9, v10);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2_473(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "❗️SkipBackward failed. Could not skip to the specified time. (error = %{public}@)", buf, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = MEMORY[0x1E69708F8];
    v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2004 underlyingError:v3 debugDescription:{@"Failed to jumpToTime:%g", *(a1 + 40)}];
    v8 = [v6 statusWithCode:200 error:v7];
    (*(v5 + 16))(v5, v8);
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E69708F8] successStatus];
    (*(v9 + 16))(v9, v10);
  }
}

void __60___MPCMediaRemotePublisher__performCommandEvent_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "❗️SkipForward failed. Could not skip to the specified time. (error = %{public}@)", buf, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = MEMORY[0x1E69708F8];
    v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2004 underlyingError:v3 debugDescription:{@"Failed to jumpToTime:%g", *(a1 + 40)}];
    v8 = [v6 statusWithCode:200 error:v7];
    (*(v5 + 16))(v5, v8);
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E69708F8] successStatus];
    (*(v9 + 16))(v9, v10);
  }
}

void __62___MPCMediaRemotePublisher__backgroundTaskWithReason_timeout___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) engineID];
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 48) + 8) + 24);
    v11 = 138543874;
    v12 = v3;
    v13 = 2114;
    v14 = v4;
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _backgroundTaskWithReason:%{public}@ | expired [task expiration] identifier=%lli", &v11, 0x20u);
  }

  if ([*(*(*(a1 + 56) + 8) + 40) disarm] && *(*(*(a1 + 48) + 8) + 24) != *MEMORY[0x1E69B1358])
  {
    v6 = MPSharedBackgroundTaskProvider();
    [v6 endTask:*(*(*(a1 + 48) + 8) + 24)];

    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) engineID];
      v9 = *(a1 + 40);
      v10 = *(*(*(a1 + 48) + 8) + 24);
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _backgroundTaskWithReason:%{public}@ | end [task expiration] identifier=%lli", &v11, 0x20u);
    }
  }
}

void __62___MPCMediaRemotePublisher__backgroundTaskWithReason_timeout___block_invoke_443(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) engineID];
      v7 = *(a1 + 40);
      v20 = 138543618;
      v21 = v4;
      v22 = 2114;
      v23 = v7;
      v6 = "[PUB:%{public}@] _backgroundTaskWithReason:%{public}@ | end [dealloc]";
      goto LABEL_7;
    }
  }

  else
  {
    if (a2)
    {
      goto LABEL_9;
    }

    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) engineID];
      v5 = *(a1 + 40);
      v20 = 138543618;
      v21 = v4;
      v22 = 2114;
      v23 = v5;
      v6 = "[PUB:%{public}@] _backgroundTaskWithReason:%{public}@ | timeout [guard]";
LABEL_7:
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, v6, &v20, 0x16u);
    }
  }

LABEL_9:
  v8 = *MEMORY[0x1E69B1358];
  if (*(*(*(a1 + 48) + 8) + 24) != *MEMORY[0x1E69B1358])
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) engineID];
      v11 = *(a1 + 40);
      v12 = *(*(*(a1 + 48) + 8) + 24);
      v20 = 138543874;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _backgroundTaskWithReason:%{public}@ | end [guard] identifier=%lli", &v20, 0x20u);
    }

    v13 = MPSharedBackgroundTaskProvider();
    [v13 endTask:*(*(*(a1 + 48) + 8) + 24)];

    *(*(*(a1 + 48) + 8) + 24) = v8;
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) engineID];
      v16 = *(a1 + 40);
      v17 = *(*(*(a1 + 56) + 8) + 40);
      v20 = 138543874;
      v21 = v15;
      v22 = 2114;
      v23 = v16;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _backgroundTaskWithReason:%{public}@ | end [guard] transaction=%{public}@", &v20, 0x20u);
    }

    [*(*(*(a1 + 56) + 8) + 40) endTransaction];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;
  }
}

void __52___MPCMediaRemotePublisher__updateSupportedCommands__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = a2 - 1;
  [*(a1 + 32) setActive:a2 == 1];
  v9 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = v5;
  if (v3 >= 3)
  {
    [v5 addObject:@"Item not addable"];
  }

  if ([v4 count])
  {
    if (![v4 count])
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_MPCMediaRemotePublisher _updateSupportedCommands]_block_invoke"];
      [v7 handleFailureInFunction:v8 file:@"_MPCMediaRemotePublisher.m" lineNumber:1457 description:@"Must provide reason for unsupported command"];
    }

    [v9 setUnsupportedReasons:v4];
    if ([v9 hasTargets])
    {
      [v9 removeTarget:0 action:0];
    }
  }

  else
  {
    [v9 setUnsupportedReasons:0];
    if (([v9 hasTargets] & 1) == 0)
    {
      [v9 addTarget:0 action:0 usingExtendedStatus:1];
    }

    [v9 setEnabled:{objc_msgSend(v6, "count") == 0}];
    [v9 setDisabledReasons:v6];
  }
}

void __49___MPCMediaRemotePublisher__updateLaunchCommands__block_invoke_177(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 playCommand];
  [v3 setEnabled:1];

  v4 = [v18 prepareForSetPlaybackQueueCommand];
  [v4 setEnabled:1];

  v5 = [v18 setPlaybackQueueCommand];
  [v5 setEnabled:1];

  v6 = [v18 setPlaybackQueueCommand];
  [v6 registerSupportedQueueType:8];

  v7 = [v18 setPlaybackQueueCommand];
  [v7 registerSupportedQueueType:7];

  if (!+[MPCPlaybackEngine isSystemPodcasts])
  {
    v8 = [v18 setPlaybackQueueCommand];
    [v8 registerSupportedCustomQueueIdentifier:@"com.apple.music.playbackqueue.radio"];

    v9 = [v18 setPlaybackQueueCommand];
    [v9 registerSupportedCustomQueueIdentifier:@"com.apple.music.playbackqueue.tracklist"];

    v10 = [v18 setPlaybackQueueCommand];
    [v10 registerSupportedCustomQueueIdentifier:@"com.apple.mediaplayer.playbackcontext"];

    v11 = [v18 setPlaybackQueueCommand];
    [v11 registerSupportedCustomQueueIdentifier:@"com.apple.MediaPlaybackCore.playbackContextArchive-v1.opack"];
  }

  if ([*(a1 + 32) count])
  {
    v12 = *(a1 + 48) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v18 setPlaybackSessionCommand];
  [v13 setEnabled:v12 & 1];

  v14 = *(a1 + 32);
  v15 = [v18 setPlaybackSessionCommand];
  [v15 setSupportedSessionTypes:v14];

  if (_os_feature_enabled_impl())
  {
    v16 = *(a1 + 40);
    v17 = [v18 setPlaybackSessionCommand];
    [v17 setRequirements:v16];
  }
}

void __90___MPCMediaRemotePublisher__enqueueFallbackIntentIfNeededForCommandEvent_play_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) commandID];
      *buf = 138543874;
      v25 = v15;
      v26 = 2114;
      v27 = v16;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[PUB:%{public}@] _enqueueFallbackIntentIfNeeded | failed to get fallback intent [] commandID=%{public}@ error=%{public}@", buf, 0x20u);
    }

    v17 = *(a1 + 56);
    v18 = MEMORY[0x1E69708F8];
    v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:1 underlyingError:v7 debugDescription:@"Failing due to no content in the player and no fallback intent."];
    v19 = [v18 statusWithCode:100 error:v13];
    (*(v17 + 16))(v17, v19);
  }

  else
  {
    if (*(a1 + 64))
    {
      v8 = 20;
    }

    else
    {
      v8 = 10;
    }

    [v5 setActionAfterQueueLoad:v8];
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) commandID];
      *buf = 138543874;
      v25 = v10;
      v26 = 2114;
      v27 = v11;
      v28 = 2114;
      v29 = v5;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _enqueueFallbackIntentIfNeeded | setQueue with fallback intent [] commandID=%{public}@ intent=%{public}@", buf, 0x20u);
    }

    v12 = *(a1 + 48);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90___MPCMediaRemotePublisher__enqueueFallbackIntentIfNeededForCommandEvent_play_completion___block_invoke_140;
    v20[3] = &unk_1E8236E20;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = *(a1 + 56);
    [v12 performSetQueueWithIntent:v5 completion:v20];

    v13 = v21;
  }
}

void __90___MPCMediaRemotePublisher__enqueueFallbackIntentIfNeededForCommandEvent_play_completion___block_invoke_140(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) commandID];
    v15 = 138543874;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v3;
    v8 = "[PUB:%{public}@] _enqueueFallbackIntentIfNeeded | failed setQueue with fallback intent [] commandID=%{public}@ error=%{public}@";
    v9 = v4;
    v10 = 32;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v11 = *(a1 + 32);
    v7 = [*(a1 + 40) commandID];
    v15 = 138543618;
    v16 = v11;
    v17 = 2114;
    v18 = v7;
    v8 = "[PUB:%{public}@] _enqueueFallbackIntentIfNeeded | finished setQueue with fallback intent [] commandID=%{public}@";
    v9 = v4;
    v10 = 22;
  }

  _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, v8, &v15, v10);

LABEL_7:
  v12 = *(a1 + 48);
  v13 = [v3 mpc_remoteCommandStatus];
  if (v13)
  {
    (*(v12 + 16))(v12, v13);
  }

  else
  {
    v14 = [MEMORY[0x1E69708F8] successStatus];
    (*(v12 + 16))(v12, v14);
  }
}

void __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v34 = v8;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] becomeActiveIfNeeded | preparing []", buf, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [MEMORY[0x1E695DF00] date];
    v10 = objc_alloc(MEMORY[0x1E69B13F0]);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_103;
    v28[3] = &unk_1E82386F0;
    v32 = *(a1 + 56);
    v11 = v9;
    v29 = v11;
    v30 = *(a1 + 32);
    v12 = v6;
    v31 = v12;
    v13 = [v10 initWithDeallocHandler:v28];
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_107;
    v20[3] = &unk_1E8236658;
    v27 = *(a1 + 56);
    v21 = v11;
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = v13;
    v25 = v12;
    v26 = v5;
    v16 = v13;
    v17 = v11;
    [v14 engine:v15 prepareForActivationWithCompletion:v20];
  }

  else
  {
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      *buf = 138543362;
      v34 = v19;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] becomeActiveIfNeeded | prepared [no delegate handler]", buf, 0xCu);
    }

    v5[2](v5);
  }
}

void __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_110(uint64_t a1, void *a2, void *a3, void *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138543362;
    v43 = v11;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] becomeActiveIfNeeded | attempting retry []", buf, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = objc_alloc(MEMORY[0x1E69B13F0]);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_113;
    v36[3] = &unk_1E82366A8;
    v41 = *(a1 + 56);
    v14 = v12;
    v37 = v14;
    v38 = *(a1 + 32);
    v15 = v9;
    v40 = v15;
    v16 = v7;
    v39 = v16;
    v17 = [v13 initWithDeallocHandler:v36];
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138543618;
      v43 = v19;
      v44 = 2114;
      v45 = v20;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] becomeActiveIfNeeded | starting retry [calling delegate] delegate=%{public}@", buf, 0x16u);
    }

    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_114;
    v27[3] = &unk_1E82366F8;
    v35 = *(a1 + 56);
    v28 = v14;
    v29 = *(a1 + 32);
    v30 = *(a1 + 40);
    v33 = v15;
    v31 = v16;
    v32 = v17;
    v34 = v8;
    v23 = v17;
    v24 = v14;
    [v21 engine:v22 didFailToActivateWithError:v31 resolution:v27];
  }

  else
  {
    v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 32);
      *buf = 138543362;
      v43 = v26;
      _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] becomeActiveIfNeeded | retry failed [no delegate handler]", buf, 0xCu);
    }

    (*(v9 + 2))(v9, v7);
  }
}

void __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_118(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!+[MPCPlaybackEngine isRemotePlayerService](MPCPlaybackEngine, "isRemotePlayerService") && !+[MPCPlaybackEngine isSystemPodcasts])
  {
    goto LABEL_18;
  }

  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v5 = os_signpost_id_generate(v4);

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "publisher:bless", "", buf, 2u);
  }

  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138543362;
    v33 = v9;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] becomeActiveIfNeeded | start bless", buf, 0xCu);
  }

  v10 = MRMediaRemoteNowPlayingBless();
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  v12 = v11;
  if (v10)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = *(a1 + 32);
    *buf = 138543362;
    v33 = v13;
    v14 = "[PUB:%{public}@] becomeActiveIfNeeded | finished bless";
    v15 = v12;
    v16 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v17 = *(a1 + 32);
    *buf = 138543362;
    v33 = v17;
    v14 = "[PUB:%{public}@] becomeActiveIfNeeded | bless failed";
    v15 = v12;
    v16 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_1C5C61000, v15, v16, v14, buf, 0xCu);
LABEL_14:

  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v19 = v18;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 67109120;
    LODWORD(v33) = v10;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v19, OS_SIGNPOST_INTERVAL_END, v5, "publisher:bless", "success=%{BOOL}u", buf, 8u);
  }

LABEL_18:
  v20 = [*(a1 + 40) player];

  if (!v20)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:*(a1 + 72) object:*(a1 + 48) file:@"_MPCMediaRemotePublisher.m" lineNumber:746 description:@"Playback engine implementation is nil"];
  }

  v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 32);
    v23 = *(*(*(a1 + 56) + 8) + 24);
    *buf = 138543618;
    v33 = v22;
    v34 = 2048;
    v35 = v23;
    _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] becomeActiveIfNeeded | activating player [] attempt=%ld", buf, 0x16u);
  }

  v24 = [*(a1 + 40) player];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_122;
  v28[3] = &unk_1E8236748;
  v25 = *(a1 + 32);
  v31 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
  v29 = v25;
  v30 = v3;
  v26 = v3;
  [v24 becomeActiveWithCompletion:v28];
}

void __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_127(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  v7 = v6;
  if (a2 < 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543874;
      v24 = v9;
      v25 = 2048;
      v26 = a2;
      v27 = 2114;
      v28 = v5;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "[PUB:%{public}@] becomeActiveIfNeeded | failed activation [] token=%lld error=%{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v24 = v8;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] becomeActiveIfNeeded | activating playerPath [activated]", buf, 0xCu);
    }

    [*(a1 + 40) becomeActive];
  }

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v11 = v10;
  v12 = *(a1 + 88);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_END, v12, "SessionActivation", " enableTelemetry=YES ", buf, 2u);
  }

  v13 = [*(a1 + 40) playbackEngine];
  v14 = [v13 eventStream];
  v22[0] = *(a1 + 48);
  v21[0] = @"session-activation-id";
  v21[1] = @"session-activation-activated";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:a2 > 0];
  v22[1] = v15;
  v21[2] = @"session-activation-attempts";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(*(a1 + 64) + 8) + 24)];
  v22[2] = v16;
  v21[3] = @"session-activation-av-time";
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(*(a1 + 72) + 8) + 24)];
  v22[3] = v17;
  v21[4] = @"session-activation-client-time";
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(*(a1 + 80) + 8) + 24)];
  v22[4] = v18;
  v21[5] = @"session-activation-error";
  v19 = v5;
  if (!v5)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v22[5] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];
  [v14 emitEventType:@"session-activation-end" payload:v20];

  if (!v5)
  {
  }

  (*(*(a1 + 56) + 16))();
}

void __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_129(id *a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_2_130;
  v9[3] = &unk_1E8236818;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[4];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v2[2](v2, v9);
}

void __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_8;
  v7[3] = &unk_1E8238438;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_9;
  v5[3] = &unk_1E8238D28;
  v6 = *(a1 + 48);
  (*(v4 + 16))(v4, a2, v7, v5);
}

void __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_2_130(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 <= 0)
  {
    if (v5)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_3;
      v12[3] = &unk_1E82367F0;
      v7 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v15 = *(a1 + 32);
      v16 = a2;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_6;
      v9[3] = &unk_1E8237458;
      v10 = *(a1 + 32);
      v11 = a2;
      (*(v7 + 16))(v7, v6, v12, v9);
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:1002 debugDescription:@"Session activation was cancelled by the user"];
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_3(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_4;
  v8[3] = &unk_1E8238438;
  v2 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_5;
  v5[3] = &unk_1E8237458;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = v3;
  v7 = v4;
  (*(v2 + 16))(v2, v8, v5);
}

void __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_122(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = COERCE_DOUBLE(a3);
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  v9 = v8;
  if (v7 == 0.0)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v14 = *(a1 + 32);
    *buf = 138543874;
    v32 = v14;
    v33 = 2048;
    v34 = *&a2;
    v35 = 2048;
    v36 = a4;
    v11 = "[PUB:%{public}@] becomeActiveIfNeeded | activated player [] token=%lld avTime=%0.4gs";
    v12 = v9;
    v13 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = *(a1 + 32);
    *buf = 138543874;
    v32 = v10;
    v33 = 2048;
    v34 = *&a2;
    v35 = 2114;
    v36 = v7;
    v11 = "[PUB:%{public}@] becomeActiveIfNeeded | failed activating player [] token=%lld error=%{public}@";
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_1C5C61000, v12, v13, v11, buf, 0x20u);
LABEL_7:

  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + a4;
  ++*(*(*(a1 + 56) + 8) + 24);
  v15 = [MEMORY[0x1E69708A8] standardUserDefaults];
  [v15 activationDelay];
  v17 = v16;

  if (v17 <= 0.0)
  {
    v28[2] = MEMORY[0x1E69E9820];
    v28[3] = 3221225472;
    v28[4] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_123;
    v28[5] = &unk_1E8237020;
    v21 = v30;
    v30[0] = *(a1 + 40);
    v30[1] = a2;
    v22 = &v29;
    v29 = v7;
    v24 = *&v7;
    msv_dispatch_on_main_queue();
  }

  else
  {
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      *buf = 138543618;
      v32 = v19;
      v33 = 2048;
      v34 = v17;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "[PUB:%{public}@] becomeActiveIfNeeded | delaying audio activation [internal setting] delay=%gs", buf, 0x16u);
    }

    v20 = dispatch_time(0, (v17 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_124;
    block[3] = &unk_1E8238C70;
    v21 = &v26;
    v26 = *(a1 + 32);
    v22 = v28;
    v28[0] = *(a1 + 40);
    v28[1] = a2;
    v27 = v7;
    v23 = *&v7;
    dispatch_after(v20, MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_124(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_ERROR, "[PUB:%{public}@] becomeActiveIfNeeded | finished delay [internal setting]", &v5, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_113(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) - v2;
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] becomeActiveIfNeeded | retry failed [guard deallocated]", &v6, 0xCu);
  }

  return (*(*(a1 + 56) + 16))();
}

void __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_114(uint64_t a1)
{
  [*(a1 + 32) timeIntervalSinceNow];
  *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24) - v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v11 = *(a1 + 72);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v9 = v8;
  v10 = v7;
  v12 = *(a1 + 80);
  msv_dispatch_sync_on_main_queue();
}

uint64_t __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_2_115(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80))
  {
    result = [*(a1 + 56) disarm];
    if (result)
    {
      v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v8 = 138543362;
        v9 = v4;
        _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] becomeActiveIfNeeded | retrying [delegate]", &v8, 0xCu);
      }

      return (*(*(a1 + 72) + 16))();
    }
  }

  else
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "[PUB:%{public}@] becomeActiveIfNeeded | retry failed [delegate] delegate=%{public}@", &v8, 0x16u);
    }

    return (*(*(a1 + 64) + 16))();
  }

  return result;
}

void __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_103(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) - v2;
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] becomeActiveIfNeeded | prepare failed [guard dealloc]", &v7, 0xCu);
  }

  v5 = *(a1 + 48);
  v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:53 debugDescription:@"Delegate failed to call completion for prepareForActivationWithCompletion:"];
  (*(v5 + 16))(v5, v6);
}

void __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_107(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) timeIntervalSinceNow];
  *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24) - v5;
  v12 = v4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  *&v9 = *(a1 + 56);
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v13 = v10;
  v14 = v9;
  v15 = *(a1 + 72);
  v11 = v4;
  msv_dispatch_on_main_queue();
}

uint64_t __73___MPCMediaRemotePublisher_becomeActiveIfNeededWithCommandID_completion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80) == 1 && !*(a1 + 32))
  {
    result = [*(a1 + 56) disarm];
    if (result)
    {
      v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] becomeActiveIfNeeded | prepared [delegate]", &v10, 0xCu);
      }

      return (*(*(a1 + 72) + 16))();
    }
  }

  else
  {
    v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v3 = *(a1 + 48);
      v5 = *(a1 + 80);
      v6 = *(a1 + 32);
      v10 = 138544130;
      v11 = v4;
      v12 = 2114;
      v13 = v3;
      v14 = 1024;
      v15 = v5;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_ERROR, "[PUB:%{public}@] becomeActiveIfNeeded | prepare failed [delegate] delegate=%{public}@ shouldActivate=%{BOOL}u error=%{public}@", &v10, 0x26u);
    }

    return (*(*(a1 + 64) + 16))();
  }

  return result;
}

void __58___MPCMediaRemotePublisher__activeSharedSessionDidChange___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 128);
  v3 = v2;
  if (v2 != *(a1 + 40) && ([v2 isEqual:?] & 1) == 0)
  {
    if (*(a1 + 40))
    {
      v4 = @"MediaRemote GroupSession started";
    }

    else
    {
      v4 = @"MediaRemote GroupSession ended";
    }

    v5 = v4;
    objc_storeStrong((*(a1 + 32) + 128), *(a1 + 40));
    v6 = [*(a1 + 32) playbackEngine];
    v7 = [v6 queueController];
    v8 = [v7 music];

    if (v8)
    {
      v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v10 = *(a1 + 48);
        v12 = 138544130;
        v13 = v10;
        v14 = 2114;
        v15 = v5;
        v16 = 2114;
        v17 = v11;
        v18 = 2114;
        v19 = v8;
        _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _activeSharedSessionDidChange | updating behavior [%{public}@] newSessionID=%{public}@ behavior=%{public}@", &v12, 0x2Au);
      }

      [v8 setHostingSharedSessionID:*(a1 + 40) reason:v5];
    }
  }
}

void __59___MPCMediaRemotePublisher__durationAvailableNotification___block_invoke(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) queueController];
  v3 = [v2 currentItem];

  v4 = *(a1 + 40);
  if (v4 != v3)
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);
      *buf = 138543874;
      *&buf[4] = v6;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      *&buf[22] = 2114;
      *&buf[24] = v3;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _durationAvailable | ignoring [not current item] notificationItem=%{public}@ currentItem=%{public}@", buf, 0x20u);
    }

    goto LABEL_42;
  }

  [v4 durationIfAvailable];
  v8 = [*(a1 + 40) modelGenericObject];
  v9 = [v8 flattenedGenericObject];
  v10 = [v9 anyObject];
  v11 = [v10 identifiers];

  v12 = [*(a1 + 40) queueSectionID];
  v13 = [*(a1 + 40) queueItemID];
  v14 = [*(a1 + 40) playbackInfo];
  [*(a1 + 40) _expectedStopTimeWithPlaybackInfo:v14];
  v16 = v15;
  [*(a1 + 40) durationIfAvailable];
  v18 = v17;
  v19 = MSVHasherSharedSeed();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  *buf = xmmword_1C6045200;
  *&buf[16] = vaddq_s64(vdupq_n_s64(v19), xmmword_1C6045210);
  v76 = v19;
  v77 = v19 + 0x61C8864E7A143579;
  v78 = 0u;
  v79 = 0u;
  v80 = 0;
  v20 = v11;
  *data = [v20 hash];
  _MSV_XXH_XXH64_update(&buf[8], data, 8uLL);
  v5 = v20;

  v21 = v12;
  _MSV_XXH_XXH64_update(&buf[8], [v21 UTF8String], objc_msgSend(v21, "length"));

  v22 = v13;
  _MSV_XXH_XXH64_update(&buf[8], [v22 UTF8String], objc_msgSend(v22, "length"));

  *data = v16;
  _MSV_XXH_XXH64_update(&buf[8], data, 8uLL);
  v70 = v21;
  *data = v18;
  _MSV_XXH_XXH64_update(&buf[8], data, 8uLL);
  memset(&v89[8], 0, 64);
  *v89 = 3001;
  *&v89[8] = _MSV_XXH_XXH64_digest(&buf[8]);
  *data = *v89;
  *&data[16] = *&v89[16];
  v91 = *&v89[32];
  v92 = *&v89[48];
  v93 = *&v89[64];
  if (*v89 > 3999)
  {
    if (*v89 > 4255)
    {
      if (*v89 == 4256)
      {
        v45 = &data[8];
        v46 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v47 = v46;
        for (i = 0; i != 64; i += 2)
        {
          v49 = *v45++;
          v50 = &v46[i];
          *v50 = MSVFastHexStringFromBytes_hexCharacters_30108[v49 >> 4];
          v50[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v49 & 0xF];
        }

        v29 = objc_alloc(MEMORY[0x1E696AEC0]);
        v30 = v47;
        v31 = 64;
      }

      else
      {
        if (*v89 != 4512)
        {
          goto LABEL_43;
        }

        v33 = &data[8];
        v34 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v35 = v34;
        for (j = 0; j != 128; j += 2)
        {
          v37 = *v33++;
          v38 = &v34[j];
          *v38 = MSVFastHexStringFromBytes_hexCharacters_30108[v37 >> 4];
          v38[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v37 & 0xF];
        }

        v29 = objc_alloc(MEMORY[0x1E696AEC0]);
        v30 = v35;
        v31 = 128;
      }
    }

    else if (*v89 == 4000)
    {
      v39 = &data[8];
      v40 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v41 = v40;
      for (k = 0; k != 32; k += 2)
      {
        v43 = *v39++;
        v44 = &v40[k];
        *v44 = MSVFastHexStringFromBytes_hexCharacters_30108[v43 >> 4];
        v44[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v43 & 0xF];
      }

      v29 = objc_alloc(MEMORY[0x1E696AEC0]);
      v30 = v41;
      v31 = 32;
    }

    else
    {
      if (*v89 != 4001)
      {
        goto LABEL_43;
      }

      v23 = &data[8];
      v24 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v25 = v24;
      for (m = 0; m != 40; m += 2)
      {
        v27 = *v23++;
        v28 = &v24[m];
        *v28 = MSVFastHexStringFromBytes_hexCharacters_30108[v27 >> 4];
        v28[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v27 & 0xF];
      }

      v29 = objc_alloc(MEMORY[0x1E696AEC0]);
      v30 = v25;
      v31 = 40;
    }

    v51 = [v29 initWithBytesNoCopy:v30 length:v31 encoding:4 freeWhenDone:{1, &buf[16]}];
    v32 = [v51 hash];

    goto LABEL_31;
  }

  if (*v89 <= 2999)
  {
    if (*v89 != 1000)
    {
      if (*v89 != 2000)
      {
        goto LABEL_43;
      }

      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (*v89 == 3000)
  {
LABEL_23:
    v32 = *&data[8];
    goto LABEL_31;
  }

  if (*v89 != 3001)
  {
LABEL_43:
    v66 = [MEMORY[0x1E696AAA8] currentHandler];
    v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint64_t _MSVHashGetUInt64Hash(MSVHash)"];
    [v66 handleFailureInFunction:v67 file:@"MSVHasher+Algorithms.h" lineNumber:327 description:@"Cannot obtain hash from unknown hasher algorithm"];

    v32 = 0;
    goto LABEL_31;
  }

LABEL_17:
  v32 = *&data[8];
LABEL_31:
  v52 = *(*(a1 + 56) + 64);
  v53 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
  if (v52 == v32)
  {
    if (v54)
    {
      v56 = *(a1 + 40);
      v55 = *(a1 + 48);
      *data = 138543874;
      *&data[4] = v55;
      *&data[12] = 2114;
      *&data[14] = v56;
      *&data[22] = 2048;
      *&data[24] = v32;
      _os_log_impl(&dword_1C5C61000, v53, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _durationAvailable | ignoring [no change] notificationItem=%{public}@ hash=%llu", data, 0x20u);
    }
  }

  else
  {
    v68 = v3;
    if (v54)
    {
      v58 = *(a1 + 40);
      v57 = *(a1 + 48);
      *data = 138543874;
      *&data[4] = v57;
      *&data[12] = 2114;
      *&data[14] = v58;
      *&data[22] = 2048;
      *&data[24] = v32;
      _os_log_impl(&dword_1C5C61000, v53, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] _durationAvailable | emitting ItemUpdate [duration changed] notificationItem=%{public}@ hash=%llu", data, 0x20u);
    }

    v59 = v14;

    v53 = [*(a1 + 56) playbackEngine];
    v60 = [v53 eventStream];
    v73[0] = @"item-ids";
    v61 = v20;
    if (!v20)
    {
      v61 = [MEMORY[0x1E695DFB0] null];
    }

    v74[0] = v61;
    v74[1] = v21;
    v73[1] = @"queue-section-id";
    v73[2] = @"queue-item-id";
    v74[2] = v22;
    v73[3] = @"item-metadata";
    v71[0] = @"item-duration";
    v62 = [MEMORY[0x1E696AD98] numberWithDouble:{v18, v68}];
    v71[1] = @"item-end-boundary";
    v72[0] = v62;
    v63 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
    v72[1] = v63;
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
    v74[3] = v64;
    v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:4];
    [v60 emitEventType:@"item-update" payload:v65];

    v5 = v20;
    if (!v20)
    {
    }

    v14 = v59;
    v3 = v69;
  }

LABEL_42:
}

void __79___MPCMediaRemotePublisher_commandCenter_didTimeoutCommandEvent_statusHandler___block_invoke(uint64_t a1, void *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  v14[0] = @"remote-control-id";
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) commandID];
  v14[1] = @"remote-control-status";
  v15[0] = v7;
  v13 = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v15[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v10 = *(a1 + 80);
  v11[0] = *(a1 + 64);
  v11[1] = v10;
  v12 = *(a1 + 96);
  [v6 emitEventType:@"remote-control-timeout" payload:v9 atTime:v11];

  [*(a1 + 48) invalidate];
}

void __59___MPCMediaRemotePublisher_engineDidBlockVocalAttenuation___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "[PUB:%{public}@] engineDidBlockVocalAttenuation | failed [] error=%{public}@", &v9, 0x16u);
    }
  }

  v6 = [*(a1 + 40) vocalAttenuationController];
  [(MPCWhiskyController *)v6 setEnabled:?];

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] engineDidBlockVocalAttenuation | publishing [disabled va]", &v9, 0xCu);
  }

  [*(a1 + 48) publishIfNeeded];
}

double __50___MPCMediaRemotePublisher_updatePlaybackMetrics___block_invoke(double a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"duration"];
  [v4 doubleValue];
  v6 = v5 + a1;

  return v6;
}

void __72___MPCMediaRemotePublisher__leaveSharedSessionWithCommandID_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_new();
    [v3 performSetQueue:v4 completion:&__block_literal_global_66];

    v5 = *(a1 + 40);
    v6 = MEMORY[0x1E69708F8];
    v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3100 underlyingError:v10 debugDescription:@"Failed to load previous session"];
    v8 = [v6 statusWithCode:200 error:v7];
    (*(v5 + 16))(v5, v8);
  }

  else
  {
    v9 = *(a1 + 40);
    v7 = [MEMORY[0x1E69708F8] successStatus];
    (*(v9 + 16))(v9, v7);
  }
}

void __72___MPCMediaRemotePublisher__leaveSharedSessionWithCommandID_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mpc_remoteCommandStatus];
  v5 = v3;
  if (v3)
  {
    (*(v2 + 16))(v2, v3);
  }

  else
  {
    v4 = [MEMORY[0x1E69708F8] successStatus];
    (*(v2 + 16))(v2, v4);
  }
}

void __94___MPCMediaRemotePublisher_leaveSharedSessionWithCommandID_remoteControlInterface_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3);
}

void __64___MPCMediaRemotePublisher_getShouldRestoreStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      (*(*(a1 + 40) + 16))();
      goto LABEL_26;
    }

    v7 = *(a1 + 32);
    *buf = 138543618;
    v35 = v7;
    v36 = 2114;
    v37[0] = v5;
    v8 = "[PUB:%{public}@] getShouldRestoreState | failed [] shouldRestore=YES error=%{public}@";
    v9 = v6;
    v10 = 22;
LABEL_4:
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    goto LABEL_5;
  }

  if (![v4 count])
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v23 = *(a1 + 32);
    *buf = 138543362;
    v35 = v23;
    v8 = "[PUB:%{public}@] getShouldRestoreState | success [no pending commands] shouldRestore=YES";
    v9 = v6;
    v10 = 12;
    goto LABEL_4;
  }

  v27 = [v4 msv_map:&__block_literal_global_41];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v28 = v4;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    v15 = 1;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        v17 = v15;
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v18 = [*(*(&v30 + 1) + 8 * i) integerValue];
        v19 = v18;
        v15 = 0;
        if (v18 != 122 && v18 != 133)
        {
          v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(a1 + 32);
            v22 = MPCRemoteCommandDescriptionCopy(v19);
            *buf = 138543618;
            v35 = v21;
            v36 = 2114;
            v37[0] = v22;
            _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] getShouldRestoreState | ignoring [unexpected command] command=%{public}@", buf, 0x16u);
          }

          v15 = v17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v13);
  }

  else
  {
    LOBYTE(v15) = 1;
  }

  v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Publisher");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 32);
    v26 = [v27 msv_compactDescription];
    *buf = 138543874;
    v35 = v25;
    v36 = 1024;
    LODWORD(v37[0]) = v15 & 1;
    WORD2(v37[0]) = 2114;
    *(v37 + 6) = v26;
    _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[PUB:%{public}@] getShouldRestoreState | finish [pending commands] shouldRestore=%{BOOL}u pendingCommands=[%{public}@]", buf, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
  v5 = 0;
  v4 = v28;
LABEL_26:
}

__CFString *__64___MPCMediaRemotePublisher_getShouldRestoreStateWithCompletion___block_invoke_38(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return MPCRemoteCommandDescriptionCopy(v2);
}

void __51___MPCMediaRemotePublisher_initWithPlaybackEngine___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E6970568]);
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
  v5 = v2;

  os_unfair_lock_unlock((*(a1 + 32) + 16));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___MPCMediaRemotePublisher_initWithPlaybackEngine___block_invoke_2;
  block[3] = &unk_1E8239298;
  v7 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51___MPCMediaRemotePublisher_initWithPlaybackEngine___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = v9[17];
  }

  v10 = v9;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [a2 requestIdentifier];
  [v10 didEndMigration:v14 setPlaybackSessionCommandStatus:v13 error:v12 completion:v11];
}

void __115___MPCMediaRemotePublisher_PlaybackQueue__nowPlayingInfoCenter_remoteArtworkForContentItem_format_size_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = MEMORY[0x1E696ACB0];
    v8 = [v5 jsonRepresentation];
    v14 = 0;
    v9 = [v7 dataWithJSONObject:v8 options:0 error:&v14];
    v10 = v14;

    if (v10)
    {
      v11 = 0;
      v12 = v6;
      v6 = v10;
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x1E6970838]);
      v12 = [v5 resolvedURLString];
      v11 = [v13 initWithArtworkURLString:v12 templateData:v9];
    }
  }

  else
  {
    v11 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __102___MPCMediaRemotePublisher_PlaybackQueue__nowPlayingInfoCenter_artworkForContentItem_size_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:29 underlyingError:a3 debugDescription:@"requestImageWithCompletionHandler: called with nil image."];
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setCompletedUnitCount:1];
}

uint64_t __102___MPCMediaRemotePublisher_PlaybackQueue__playbackQueueAuxilaryNowPlayingInfoForNowPlayingInfoCenter___block_invoke(uint64_t a1, void *a2)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 findPreviousEventWithType:@"device-changed" matchingPayload:0];
  v5 = v4;
  if (!v4 || ([v4 payload], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", @"device-metadata"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", @"focus-mode-private-listening-enabled"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "integerValue"), v8, v7, v6, v10 = v9 == 1, !v9))
  {
    v11 = [*(a1 + 32) queueSectionID];
    v12 = v11;
    if (!v11)
    {
      v10 = 1;
LABEL_22:

      goto LABEL_23;
    }

    v34 = @"queue-section-id";
    v35[0] = v11;
    v10 = 1;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v14 = [v3 findPreviousEventWithType:@"queue-add" matchingPayload:v13];

    if (v14)
    {
      v15 = [v14 payload];
      v16 = [v15 objectForKeyedSubscript:@"private-listening-source"];
      v17 = [v16 integerValue];

      switch(v17)
      {
        case 3:
          v18 = [v14 payload];
          v19 = v18;
          v20 = @"queue-reporting-metadata";
LABEL_14:
          v29 = [v18 objectForKeyedSubscript:v20];
          v22 = [v29 objectForKeyedSubscript:@"private-listening-enabled"];

          if (v22)
          {
            v10 = [v22 BOOLValue];
LABEL_20:

            goto LABEL_21;
          }

LABEL_16:
          v10 = 1;
          goto LABEL_20;
        case 2:
          v21 = [v14 payload];
          v22 = [v21 objectForKeyedSubscript:@"account-id"];

          if (v22)
          {
            v33[0] = @"account-begin";
            v33[1] = @"account-update";
            v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
            v31 = @"account-id";
            v32 = v22;
            v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            v25 = [v3 findPreviousEventWithTypes:v23 matchingPayload:v24];

            v26 = [v25 payload];
            v27 = [v26 objectForKeyedSubscript:@"account-metadata"];
            v28 = [v27 objectForKeyedSubscript:@"private-listening-enabled"];

            if (v28)
            {
              v10 = [v28 BOOLValue];
            }

            else
            {
              v10 = 1;
            }

            goto LABEL_20;
          }

          goto LABEL_16;
        case 1:
          v18 = [v5 payload];
          v19 = v18;
          v20 = @"device-metadata";
          goto LABEL_14;
      }

      v10 = 1;
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_23:

  return v10;
}

@end