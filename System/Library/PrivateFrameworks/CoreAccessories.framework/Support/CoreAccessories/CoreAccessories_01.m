int8x16_t Encrypt_Main_Loop_End(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, uint64_t a4, uint64x2_t *a5, int8x16_t *a6, int a7, int8x16_t a8)
{
  v21 = a4 + 128;
  v147 = veorq_s8(a8, v11);
  v22 = a5[1];
  v23 = veorq_s8(vmull_high_p64(*a5, v18), vmull_high_p64(v22, v17));
  v24 = veorq_s8(vmull_p64(a5->i64[0], v18.u64[0]), vmull_p64(v22.u64[0], v17.u64[0]));
  v25 = a5[2];
  v26 = veorq_s8(v23, vmull_high_p64(v25, v16));
  v27 = veorq_s8(v24, vmull_p64(v25.u64[0], v16.u64[0]));
  v28 = a5[3];
  v29 = veorq_s8(v26, vmull_high_p64(v28, v15));
  v30 = veorq_s8(v27, vmull_p64(v28.u64[0], v15.u64[0]));
  v31 = a5[4];
  v32 = veorq_s8(v29, vmull_high_p64(v31, v14));
  v33 = veorq_s8(v30, vmull_p64(v31.u64[0], v14.u64[0]));
  v34 = a5[5];
  v35 = veorq_s8(v32, vmull_high_p64(v34, v13));
  v36 = veorq_s8(v33, vmull_p64(v34.u64[0], v13.u64[0]));
  v37 = a5[6];
  v38 = veorq_s8(v35, vmull_high_p64(v37, v12));
  v39 = veorq_s8(v36, vmull_p64(v37.u64[0], v12.u64[0]));
  v40 = a5[7];
  v41 = veorq_s8(v38, vmull_high_p64(v40, v147));
  v42 = veorq_s8(v39, vmull_p64(v40.u64[0], v147.u64[0]));
  v43 = veorq_s8(v42, veorq_s8(v41, veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(vmull_p64(a5[8].u64[0], veorq_s8(vextq_s8(v18, v18, 8uLL), v18).u64[0]), vmull_p64(a5[9].u64[0], veorq_s8(v17, vextq_s8(v17, v17, 8uLL)).u64[0])), vmull_p64(a5[10].u64[0], veorq_s8(v16, vextq_s8(v16, v16, 8uLL)).u64[0])), vmull_p64(a5[11].u64[0], veorq_s8(v15, vextq_s8(v15, v15, 8uLL)).u64[0])), vmull_p64(a5[12].u64[0], veorq_s8(v14, vextq_s8(v14, v14, 8uLL)).u64[0])), vmull_p64(a5[13].u64[0], veorq_s8(v13, vextq_s8(v13, v13, 8uLL)).u64[0])), vmull_p64(a5[14].u64[0], veorq_s8(v12, vextq_s8(v12, v12, 8uLL)).u64[0])), vmull_p64(a5[15].u64[0], veorq_s8(v147, vextq_s8(v147, v147, 8uLL)).u64[0]))));
  v44 = veorq_s8(vextq_s8(v20, v43, 8uLL), v42);
  v45 = veorq_s8(vextq_s8(v44, v44, 8uLL), vmull_p64(v10, v44.u64[0]));
  v46 = veorq_s8(veorq_s8(vextq_s8(v43, v20, 8uLL), v41), veorq_s8(vextq_s8(v45, v45, 8uLL), vmull_p64(v10, v45.u64[0])));
  v47 = v21 < 16;
  v48 = v21 - 16;
  if (!v47)
  {
    _Q4 = *a6;
    _Q5 = a6[1];
    _Q6 = a6[2];
    v19 = vaddq_s32(v8, v19);
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a6[3];
    _Q5 = a6[4];
    _Q6 = a6[5];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a6[6];
    _Q5 = a6[7];
    _Q6 = a6[8];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q20 = a6[9];
    _Q21 = a6[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V7.16B, V20.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V21.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a6[11];
      _Q21 = a6[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a6[13];
        _Q21 = a6[14];
      }
    }

    __asm { AESE            V7.16B, V20.16B }

    v92 = *a1;
    v91 = a1 + 1;
    v93 = veorq_s8(v92, veorq_s8(_Q7, _Q21));
    *a2 = v93;
    v94 = a2 + 1;
    v95 = veorq_s8(v46, vqtbl1q_s8(v93, v9));
    v96 = *(a5 + v48);
    v97 = vmull_high_p64(v96, v95);
    v98 = vmull_p64(v96.u64[0], v95.u64[0]);
    v99 = vmull_p64(*(a5[8].u64 + v48), veorq_s8(vextq_s8(v95, v95, 8uLL), v95).u64[0]);
    v47 = v48 < 16;
    for (i = v48 - 16; !v47; i -= 16)
    {
      _Q4 = *a6;
      _Q5 = a6[1];
      _Q6 = a6[2];
      v19 = vaddq_s32(v8, v19);
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q4 = a6[3];
      _Q5 = a6[4];
      _Q6 = a6[5];
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q4 = a6[6];
      _Q5 = a6[7];
      _Q6 = a6[8];
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a6[9];
      _Q21 = a6[10];
      if (a7 > 160)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a6[11];
        _Q21 = a6[12];
        if (a7 > 192)
        {
          __asm
          {
            AESE            V7.16B, V20.16B
            AESMC           V7.16B, V7.16B
            AESE            V7.16B, V21.16B
            AESMC           V7.16B, V7.16B
          }

          _Q20 = a6[13];
          _Q21 = a6[14];
        }
      }

      __asm { AESE            V7.16B, V20.16B }

      v139 = *v91++;
      v140 = veorq_s8(v139, veorq_s8(_Q7, _Q21));
      *v94++ = v140;
      v141 = vqtbl1q_s8(v140, v9);
      v142 = *(a5 + i);
      v97 = veorq_s8(v97, vmull_high_p64(v142, v141));
      v98 = veorq_s8(v98, vmull_p64(v142.u64[0], v141.u64[0]));
      v99 = veorq_s8(v99, vmull_p64(*(a5[8].u64 + i), veorq_s8(vextq_s8(v141, v141, 8uLL), v141).u64[0]));
      v47 = i < 16;
    }

    v143 = veorq_s8(v98, veorq_s8(v97, v99));
    v144 = veorq_s8(vextq_s8(v20, v143, 8uLL), v98);
    v145 = veorq_s8(vextq_s8(v144, v144, 8uLL), vmull_p64(v10, v144.u64[0]));
    v46 = veorq_s8(veorq_s8(vextq_s8(v143, v20, 8uLL), v97), veorq_s8(vextq_s8(v145, v145, 8uLL), vmull_p64(v10, v145.u64[0])));
  }

  result = vqtbl1q_s8(v46, v9);
  a3[1] = result;
  a3[2] = vqtbl1q_s8(v19, v9);
  return result;
}

void gcmDecrypt(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, uint64_t a4, uint64x2_t *a5, int8x16_t *a6)
{
  v6 = a6[15].i32[0];
  v7 = vqtbl1q_s8(a3[2], *Lbswap_mask_1);
  v8 = vqtbl1q_s8(a3[1], *Lbswap_mask_1);
  v9 = a4 < 128;
  v10 = a4 - 128;
  if (v9)
  {
    Decrypt_Main_Loop_End_0(a1, a2, a3, v10, a5, a6, v6, v8);
  }

  else
  {
    Decrypt_Main_Loop_0(a1, a2, v8, a3, v10, a5, a6, v6);
  }
}

uint64_t Decrypt_Main_Loop_0(int8x16_t *a1, int8x16_t *a2, int8x16_t a3, uint64_t a4, uint64_t a5, uint64x2_t *a6, int8x16_t *a7, int a8)
{
  do
  {
    v13 = vqtbl1q_s8(a1[7], v9);
    v14 = vmull_high_p64(*a6, v13);
    v15 = vmull_p64(a6->i64[0], v13.u64[0]);
    v11 = vaddq_s32(v8, vaddq_s32(v8, vaddq_s32(v8, vaddq_s32(v8, v11))));
    v16 = vmull_p64(a6[8].u64[0], veorq_s8(vextq_s8(v13, v13, 8uLL), v13).u64[0]);
    _Q20 = *a7;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v24 = a6[1];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v27 = vqtbl1q_s8(a1[6], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v30 = veorq_s8(v14, vmull_high_p64(v24, v27));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v33 = veorq_s8(v15, vmull_p64(v24.u64[0], v27.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v40 = veorq_s8(v16, vmull_p64(a6[9].u64[0], veorq_s8(v27, vextq_s8(v27, v27, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[1];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v46 = a6[2];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v49 = vqtbl1q_s8(a1[5], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v52 = veorq_s8(v30, vmull_high_p64(v46, v49));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v55 = veorq_s8(v33, vmull_p64(v46.u64[0], v49.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v62 = veorq_s8(v40, vmull_p64(a6[10].u64[0], veorq_s8(v49, vextq_s8(v49, v49, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[2];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v68 = a6[3];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v71 = vqtbl1q_s8(a1[4], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v74 = veorq_s8(v52, vmull_high_p64(v68, v71));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v77 = veorq_s8(v55, vmull_p64(v68.u64[0], v71.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v84 = veorq_s8(v62, vmull_p64(a6[11].u64[0], veorq_s8(v71, vextq_s8(v71, v71, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[3];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v90 = a6[4];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v93 = vqtbl1q_s8(a1[3], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v96 = veorq_s8(v74, vmull_high_p64(v90, v93));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v99 = veorq_s8(v77, vmull_p64(v90.u64[0], v93.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v106 = veorq_s8(v84, vmull_p64(a6[12].u64[0], veorq_s8(v93, vextq_s8(v93, v93, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[4];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v112 = a6[5];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v115 = vqtbl1q_s8(a1[2], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v118 = veorq_s8(v96, vmull_high_p64(v112, v115));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v121 = veorq_s8(v99, vmull_p64(v112.u64[0], v115.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v128 = veorq_s8(v106, vmull_p64(a6[13].u64[0], veorq_s8(v115, vextq_s8(v115, v115, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[5];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v134 = a6[6];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v137 = vqtbl1q_s8(a1[1], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v140 = veorq_s8(v118, vmull_high_p64(v134, v137));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v143 = veorq_s8(v121, vmull_p64(v134.u64[0], v137.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v150 = veorq_s8(v128, vmull_p64(a6[14].u64[0], veorq_s8(v137, vextq_s8(v137, v137, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[6];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v156 = a6[7];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v159 = veorq_s8(vqtbl1q_s8(*a1, v9), a3);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v162 = veorq_s8(v140, vmull_high_p64(v156, v159));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v165 = veorq_s8(v143, vmull_p64(v156.u64[0], v159.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[7];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v177 = veorq_s8(v165, veorq_s8(v162, veorq_s8(v150, vmull_p64(a6[15].u64[0], veorq_s8(v159, vextq_s8(v159, v159, 8uLL)).u64[0]))));
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v184 = veorq_s8(vextq_s8(v12, v177, 8uLL), v165);
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v187 = veorq_s8(vextq_s8(v184, v184, 8uLL), vmull_p64(v10, v184.u64[0]));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[8];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    a3 = veorq_s8(veorq_s8(vextq_s8(v177, v12, 8uLL), v162), veorq_s8(vextq_s8(v187, v187, 8uLL), vmull_p64(v10, v187.u64[0])));
    _Q20 = a7[9];
    v212 = a7[10];
    if (a8 > 160)
    {
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a7[10];
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a7[11];
      v212 = a7[12];
      if (a8 > 192)
      {
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a7[12];
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a7[13];
        v212 = a7[14];
      }
    }

    v280 = *a1;
    v281 = a1[1];
    v282 = a1[2];
    v283 = a1[3];
    v279 = a1 + 4;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESE            V23.16B, V20.16B
      AESE            V24.16B, V20.16B
      AESE            V25.16B, V20.16B
    }

    v288 = veorq_s8(v280, veorq_s8(_Q22, v212));
    v289 = veorq_s8(v281, veorq_s8(_Q23, v212));
    v290 = veorq_s8(v282, veorq_s8(_Q24, v212));
    v291 = veorq_s8(v283, veorq_s8(_Q25, v212));
    v292 = *v279;
    v293 = v279[1];
    v294 = v279[2];
    v295 = v279[3];
    a1 = v279 + 4;
    __asm
    {
      AESE            V26.16B, V20.16B
      AESE            V27.16B, V20.16B
      AESE            V28.16B, V20.16B
      AESE            V29.16B, V20.16B
    }

    *a2 = v288;
    a2[1] = v289;
    a2[2] = v290;
    a2[3] = v291;
    v300 = a2 + 4;
    *v300 = veorq_s8(v292, veorq_s8(_Q26, v212));
    v300[1] = veorq_s8(v293, veorq_s8(_Q27, v212));
    v300[2] = veorq_s8(v294, veorq_s8(_Q28, v212));
    v300[3] = veorq_s8(v295, veorq_s8(_Q29, v212));
    a2 = v300 + 4;
    _VF = __OFSUB__(a5, 128);
    _NF = a5 - 128 < 0;
    a5 -= 128;
  }

  while (_NF == _VF);
  return Decrypt_Main_Loop_End_0();
}

int8x16_t Decrypt_Main_Loop_End_0(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, uint64_t a4, uint64_t a5, int8x16_t *a6, int a7, int8x16_t a8)
{
  v13 = a4 < -112;
  v14 = a4 + 112;
  if (!v13)
  {
    v15 = *(a5 + v14);
    v16 = veorq_s8(a8, vqtbl1q_s8(*a1, v9));
    v17 = vmull_high_p64(v15, v16);
    v18 = vmull_p64(v15.u64[0], v16.u64[0]);
    v19 = vmull_p64(*(a5 + v14 + 128), veorq_s8(vextq_s8(v16, v16, 8uLL), v16).u64[0]);
    _Q4 = *a6;
    _Q5 = a6[1];
    _Q6 = a6[2];
    v11 = vaddq_s32(v8, v11);
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a6[3];
    _Q5 = a6[4];
    _Q6 = a6[5];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a6[6];
    _Q5 = a6[7];
    _Q6 = a6[8];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q20 = a6[9];
    _Q21 = a6[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V7.16B, V20.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V21.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a6[11];
      _Q21 = a6[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a6[13];
        _Q21 = a6[14];
      }
    }

    __asm { AESE            V7.16B, V20.16B }

    v63 = *a1;
    v62 = a1 + 1;
    *a2 = veorq_s8(v63, veorq_s8(_Q7, _Q21));
    v64 = a2 + 1;
    v13 = v14 < 16;
    for (i = v14 - 16; !v13; i -= 16)
    {
      v66 = vqtbl1q_s8(*v62, v9);
      v67 = *(a5 + i);
      v17 = veorq_s8(v17, vmull_high_p64(v67, v66));
      v18 = veorq_s8(v18, vmull_p64(v67.u64[0], v66.u64[0]));
      v19 = veorq_s8(v19, vmull_p64(*(a5 + i + 128), veorq_s8(vextq_s8(v66, v66, 8uLL), v66).u64[0]));
      _Q4 = *a6;
      _Q5 = a6[1];
      _Q6 = a6[2];
      v11 = vaddq_s32(v8, v11);
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q4 = a6[3];
      _Q5 = a6[4];
      _Q6 = a6[5];
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q4 = a6[6];
      _Q5 = a6[7];
      _Q6 = a6[8];
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a6[9];
      _Q21 = a6[10];
      if (a7 > 160)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a6[11];
        _Q21 = a6[12];
        if (a7 > 192)
        {
          __asm
          {
            AESE            V7.16B, V20.16B
            AESMC           V7.16B, V7.16B
            AESE            V7.16B, V21.16B
            AESMC           V7.16B, V7.16B
          }

          _Q20 = a6[13];
          _Q21 = a6[14];
        }
      }

      __asm { AESE            V7.16B, V20.16B }

      v106 = *v62++;
      *v64++ = veorq_s8(v106, veorq_s8(_Q7, _Q21));
      v13 = i < 16;
    }

    v107 = veorq_s8(v18, veorq_s8(v17, v19));
    v108 = veorq_s8(vextq_s8(v12, v107, 8uLL), v18);
    v109 = veorq_s8(vextq_s8(v108, v108, 8uLL), vmull_p64(v10, v108.u64[0]));
    a8 = veorq_s8(veorq_s8(vextq_s8(v107, v12, 8uLL), v17), veorq_s8(vextq_s8(v109, v109, 8uLL), vmull_p64(v10, v109.u64[0])));
  }

  result = vqtbl1q_s8(a8, v9);
  a3[1] = result;
  a3[2] = vqtbl1q_s8(v11, v9);
  return result;
}

int8x16_t *ccm128_encrypt(int8x16_t *result, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *a3;
  v8 = *&qword_100010B80[2 * a7];
  v9 = *a3;
  _Q16 = *a5;
  _Q17 = a5[1];
  _Q18 = a5[2];
  _Q19 = a5[3];
  v10 = a5 + 4;
  _Q20 = *v10;
  _Q21 = v10[1];
  _Q22 = v10[2];
  _Q23 = v10[3];
  v10 += 4;
  _Q24 = *v10;
  _Q25 = v10[1];
  v21 = v10[2];
  v22 = vqtbl1q_s8(*a6, *Lbswap_mask_2);
  do
  {
    v22 = vorrq_s8(vandq_s8(vaddq_s64(v22, *qword_100010B80), v8), vbicq_s8(v22, v8));
    v23 = *result++;
    __asm
    {
      AESE            V3.16B, V16.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V16.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V17.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V17.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V18.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V18.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V19.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V19.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V20.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V20.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V21.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V21.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V22.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V22.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V23.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V23.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V24.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V24.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V25.16B
      AESE            V1.16B, V25.16B
    }

    v66 = veorq_s8(_Q1, v21);
    *a2++ = veorq_s8(v23, veorq_s8(_Q3, v21));
    _VF = __OFSUB__(a4--, 1);
  }

  while (!((a4 < 0) ^ _VF | (a4 == 0)));
  *a6 = vqtbl1q_s8(v22, *Lbswap_mask_2);
  *a3 = v66;
  return result;
}

int8x16_t *ccm192_encrypt(int8x16_t *result, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *a3;
  v8 = *&qword_100010B80[2 * a7];
  v9 = *a3;
  _Q16 = *a5;
  _Q17 = a5[1];
  _Q18 = a5[2];
  _Q19 = a5[3];
  v10 = a5 + 4;
  _Q20 = *v10;
  _Q21 = v10[1];
  _Q22 = v10[2];
  _Q23 = v10[3];
  v10 += 4;
  _Q24 = *v10;
  _Q25 = v10[1];
  _Q26 = v10[2];
  _Q27 = v10[3];
  v23 = v10[4];
  v24 = vqtbl1q_s8(*a6, *Lbswap_mask_2);
  do
  {
    v24 = vorrq_s8(vandq_s8(vaddq_s64(v24, *qword_100010B80), v8), vbicq_s8(v24, v8));
    v25 = *result++;
    __asm
    {
      AESE            V3.16B, V16.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V16.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V17.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V17.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V18.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V18.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V19.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V19.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V20.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V20.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V21.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V21.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V22.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V22.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V23.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V23.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V24.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V24.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V25.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V25.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V26.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V26.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V27.16B
      AESE            V1.16B, V27.16B
    }

    v76 = veorq_s8(_Q1, v23);
    *a2++ = veorq_s8(v25, veorq_s8(_Q3, v23));
    _VF = __OFSUB__(a4--, 1);
  }

  while (!((a4 < 0) ^ _VF | (a4 == 0)));
  *a6 = vqtbl1q_s8(v24, *Lbswap_mask_2);
  *a3 = v76;
  return result;
}

int8x16_t *ccm256_encrypt(int8x16_t *result, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *a3;
  v8 = *&qword_100010B80[2 * a7];
  v9 = *a3;
  _Q16 = *a5;
  _Q17 = a5[1];
  _Q18 = a5[2];
  _Q19 = a5[3];
  v10 = a5 + 4;
  _Q20 = *v10;
  _Q21 = v10[1];
  _Q22 = v10[2];
  _Q23 = v10[3];
  v10 += 4;
  _Q24 = *v10;
  _Q25 = v10[1];
  _Q26 = v10[2];
  _Q27 = v10[3];
  v10 += 4;
  _Q28 = *v10;
  _Q29 = v10[1];
  v25 = v10[2];
  v26 = vqtbl1q_s8(*a6, *Lbswap_mask_2);
  do
  {
    v26 = vorrq_s8(vandq_s8(vaddq_s64(v26, *qword_100010B80), v8), vbicq_s8(v26, v8));
    v27 = *result++;
    __asm
    {
      AESE            V3.16B, V16.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V16.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V17.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V17.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V18.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V18.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V19.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V19.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V20.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V20.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V21.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V21.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V22.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V22.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V23.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V23.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V24.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V24.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V25.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V25.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V26.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V26.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V27.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V27.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V28.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V28.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V29.16B
      AESE            V1.16B, V29.16B
    }

    v86 = veorq_s8(_Q1, v25);
    *a2++ = veorq_s8(v27, veorq_s8(_Q3, v25));
    _VF = __OFSUB__(a4--, 1);
  }

  while (!((a4 < 0) ^ _VF | (a4 == 0)));
  *a6 = vqtbl1q_s8(v26, *Lbswap_mask_2);
  *a3 = v86;
  return result;
}

uint64_t ccn_mul(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result *= -8;
    v4 = (a2 - result);
    v5 = a3 - result;
    v6 = a4 - result;
    v7 = result;
    v8 = result;
    v9 = 0;
    v10 = *(v6 + result);
    do
    {
      v11 = *(v5 + v8) * v10 + v9;
      *(v4 + v8) = v11;
      v9 = *(&v11 + 1);
      v8 += 8;
    }

    while (v8);
    while (1)
    {
      *v4 = v9;
      v7 += 8;
      if (!v7)
      {
        break;
      }

      ++v4;
      v12 = result;
      v9 = 0;
      v13 = *(v6 + v7);
      do
      {
        v14 = *(v5 + v12) * v13 + v9 + *(v4 + v12);
        *(v4 + v12) = v14;
        v9 = *(&v14 + 1);
        v12 += 8;
      }

      while (v12);
    }
  }

  return result;
}

BOOL ccn_add_asm(_BOOL8 result, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0;
  if (result)
  {
    if (result)
    {
      v6 = *a3++;
      v5 = v6;
      v7 = *a4++;
      v4 = __CFADD__(v5, v7);
      *a2++ = v5 + v7;
    }

    if (result & 2)
    {
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v10 = *a4;
      v11 = a4[1];
      a4 += 2;
      v13 = v4 + v8;
      v4 = __CFADD__(v4, v8) | __CFADD__(v10, v13);
      v12 = v10 + v13;
      v14 = v4 + v9;
      v4 = __CFADD__(v4, v9) | __CFADD__(v11, v14);
      *a2 = v12;
      a2[1] = v11 + v14;
      a2 += 2;
    }

    v15 = result & 0xFFFFFFFC;
    if (v15)
    {
      v16 = v15 - 4;
      v18 = *a3;
      v19 = a3[1];
      v17 = a3 + 2;
      v21 = *a4;
      v22 = a4[1];
      v20 = a4 + 2;
      v24 = *v17;
      v25 = v17[1];
      v23 = v17 + 2;
      v27 = *v20;
      v28 = v20[1];
      for (i = v20 + 2; v16; i = v38 + 2)
      {
        v30 = v4 + v18;
        v4 = __CFADD__(v4, v18) | __CFADD__(v21, v30);
        v29 = v21 + v30;
        v32 = v4 + v19;
        v4 = __CFADD__(v4, v19) | __CFADD__(v22, v32);
        v31 = v22 + v32;
        v18 = *v23;
        v19 = v23[1];
        v33 = v23 + 2;
        v35 = v4 + v24;
        v4 = __CFADD__(v4, v24) | __CFADD__(v27, v35);
        v34 = v27 + v35;
        *a2 = v29;
        a2[1] = v31;
        v36 = a2 + 2;
        v37 = v4 + v25;
        v4 = __CFADD__(v4, v25) | __CFADD__(v28, v37);
        v21 = *i;
        v22 = i[1];
        v38 = i + 2;
        *v36 = v34;
        v36[1] = v28 + v37;
        a2 = v36 + 2;
        v16 -= 4;
        v24 = *v33;
        v25 = v33[1];
        v23 = v33 + 2;
        v27 = *v38;
        v28 = v38[1];
      }

      v40 = v4 + v18;
      v4 = __CFADD__(v4, v18) | __CFADD__(v21, v40);
      v39 = v21 + v40;
      v42 = v4 + v19;
      v4 = __CFADD__(v4, v19) | __CFADD__(v22, v42);
      v41 = v22 + v42;
      v44 = v4 + v24;
      v4 = __CFADD__(v4, v24) | __CFADD__(v27, v44);
      v43 = v27 + v44;
      v45 = v4 + v25;
      v4 = __CFADD__(v4, v25) | __CFADD__(v28, v45);
      *a2 = v39;
      a2[1] = v41;
      v46 = a2 + 2;
      *v46 = v43;
      v46[1] = v28 + v45;
    }

    return v4;
  }

  return result;
}

BOOL ccn_sub_asm(_BOOL8 result, void *a2, uint64_t *a3, unint64_t *a4)
{
  v4 = 1;
  if (result)
  {
    if (result)
    {
      v6 = *a3++;
      v5 = v6;
      v7 = *a4++;
      v4 = v5 >= v7;
      *a2++ = v5 - v7;
    }

    if (result & 2)
    {
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v10 = *a4;
      v11 = a4[1];
      a4 += 2;
      v13 = v4;
      v4 = __CFSUB__(v8, v10, v4);
      v12 = v8 - (v10 + !v13);
      v14 = v4;
      v4 = __CFSUB__(v9, v11, v4);
      *a2 = v12;
      a2[1] = v9 - (v11 + !v14);
      a2 += 2;
    }

    v15 = result & 0xFFFFFFFC;
    if (v15)
    {
      v16 = v15 - 4;
      v18 = *a3;
      v19 = a3[1];
      v17 = a3 + 2;
      v21 = *a4;
      v22 = a4[1];
      v20 = (a4 + 2);
      v24 = *v17;
      v25 = v17[1];
      v23 = v17 + 2;
      v27 = *v20;
      v28 = v20[1];
      for (i = v20 + 2; v16; i = v38 + 2)
      {
        v30 = v4;
        v4 = __CFSUB__(v18, v21, v4);
        v29 = v18 - (v21 + !v30);
        v32 = v4;
        v4 = __CFSUB__(v19, v22, v4);
        v31 = v19 - (v22 + !v32);
        v18 = *v23;
        v19 = v23[1];
        v33 = v23 + 2;
        v35 = v4;
        v4 = __CFSUB__(v24, v27, v4);
        v34 = v24 - (v27 + !v35);
        *a2 = v29;
        a2[1] = v31;
        v36 = a2 + 2;
        v37 = v4;
        v4 = __CFSUB__(v25, v28, v4);
        v21 = *i;
        v22 = i[1];
        v38 = i + 2;
        *v36 = v34;
        v36[1] = v25 - (v28 + !v37);
        a2 = v36 + 2;
        v16 -= 4;
        v24 = *v33;
        v25 = v33[1];
        v23 = v33 + 2;
        v27 = *v38;
        v28 = v38[1];
      }

      v40 = v4;
      v4 = __CFSUB__(v18, v21, v4);
      v39 = v18 - (v21 + !v40);
      v42 = v4;
      v4 = __CFSUB__(v19, v22, v4);
      v41 = v19 - (v22 + !v42);
      v44 = v4;
      v4 = __CFSUB__(v24, v27, v4);
      v43 = v24 - (v27 + !v44);
      v45 = v4;
      v4 = __CFSUB__(v25, v28, v4);
      *a2 = v39;
      a2[1] = v41;
      v46 = a2 + 2;
      *v46 = v43;
      v46[1] = v25 - (v28 + !v45);
    }

    return !v4;
  }

  return result;
}

int8x16_t gcm_init(int8x16_t *a1, int8x16_t *a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8)
{
  v8 = vqtbl1q_s8(*a2, *qword_100011800);
  v9 = veorq_s8(a8, a8);
  v10 = veorq_s8(vandq_s8(vextq_s8(*&qword_100011800[2], *&qword_100011800[2], 8uLL), vshrq_n_s32(vdupq_laneq_s32(v8, 3), 0x1FuLL)), vorrq_s8(vextq_s8(v9, vshrq_n_u64(v8, 0x3FuLL), 8uLL), vshlq_n_s64(v8, 1uLL)));
  *a1 = v10;
  a1[8] = veorq_s8(v10, vextq_s8(v10, v10, 8uLL));
  v11 = vmull_high_p64(v10, v10);
  v12 = vmull_p64(v10.u64[0], v10.u64[0]);
  v13 = veorq_s8(v12, veorq_s8(v11, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0])));
  v14 = veorq_s8(vextq_s8(v9, v13, 8uLL), v12);
  v15 = veorq_s8(vextq_s8(v14, v14, 8uLL), vmull_p64(0xC200000000000000, v14.u64[0]));
  v16 = veorq_s8(veorq_s8(vextq_s8(v13, v9, 8uLL), v11), veorq_s8(vextq_s8(v15, v15, 8uLL), vmull_p64(0xC200000000000000, v15.u64[0])));
  a1[1] = v16;
  a1[9] = veorq_s8(v16, vextq_s8(v16, v16, 8uLL));
  v13.i64[0] = veorq_s8(v16, vextq_s8(v16, v16, 8uLL)).u64[0];
  v17 = vmull_high_p64(v16, v10);
  v18 = vmull_p64(v16.u64[0], v10.u64[0]);
  v19 = veorq_s8(v18, veorq_s8(v17, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v13.u64[0])));
  v20 = veorq_s8(vextq_s8(v9, v19, 8uLL), v18);
  v21 = veorq_s8(vextq_s8(v20, v20, 8uLL), vmull_p64(0xC200000000000000, v20.u64[0]));
  v22 = veorq_s8(veorq_s8(vextq_s8(v19, v9, 8uLL), v17), veorq_s8(vextq_s8(v21, v21, 8uLL), vmull_p64(0xC200000000000000, v21.u64[0])));
  a1[2] = v22;
  a1[10] = veorq_s8(v22, vextq_s8(v22, v22, 8uLL));
  v19.i64[0] = veorq_s8(v22, vextq_s8(v22, v22, 8uLL)).u64[0];
  v23 = vmull_high_p64(v22, v10);
  v24 = vmull_p64(v22.u64[0], v10.u64[0]);
  v25 = veorq_s8(v24, veorq_s8(v23, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v19.u64[0])));
  v26 = veorq_s8(vextq_s8(v9, v25, 8uLL), v24);
  v27 = veorq_s8(vextq_s8(v26, v26, 8uLL), vmull_p64(0xC200000000000000, v26.u64[0]));
  v28 = veorq_s8(veorq_s8(vextq_s8(v25, v9, 8uLL), v23), veorq_s8(vextq_s8(v27, v27, 8uLL), vmull_p64(0xC200000000000000, v27.u64[0])));
  a1[3] = v28;
  a1[11] = veorq_s8(v28, vextq_s8(v28, v28, 8uLL));
  v25.i64[0] = veorq_s8(v28, vextq_s8(v28, v28, 8uLL)).u64[0];
  v29 = vmull_high_p64(v28, v10);
  v30 = vmull_p64(v28.u64[0], v10.u64[0]);
  v31 = veorq_s8(v30, veorq_s8(v29, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v25.u64[0])));
  v32 = veorq_s8(vextq_s8(v9, v31, 8uLL), v30);
  v33 = veorq_s8(vextq_s8(v32, v32, 8uLL), vmull_p64(0xC200000000000000, v32.u64[0]));
  v34 = veorq_s8(veorq_s8(vextq_s8(v31, v9, 8uLL), v29), veorq_s8(vextq_s8(v33, v33, 8uLL), vmull_p64(0xC200000000000000, v33.u64[0])));
  a1[4] = v34;
  a1[12] = veorq_s8(v34, vextq_s8(v34, v34, 8uLL));
  v31.i64[0] = veorq_s8(v34, vextq_s8(v34, v34, 8uLL)).u64[0];
  v35 = vmull_high_p64(v34, v10);
  v36 = vmull_p64(v34.u64[0], v10.u64[0]);
  v37 = veorq_s8(v36, veorq_s8(v35, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v31.u64[0])));
  v38 = veorq_s8(vextq_s8(v9, v37, 8uLL), v36);
  v39 = veorq_s8(vextq_s8(v38, v38, 8uLL), vmull_p64(0xC200000000000000, v38.u64[0]));
  v40 = veorq_s8(veorq_s8(vextq_s8(v37, v9, 8uLL), v35), veorq_s8(vextq_s8(v39, v39, 8uLL), vmull_p64(0xC200000000000000, v39.u64[0])));
  a1[5] = v40;
  a1[13] = veorq_s8(v40, vextq_s8(v40, v40, 8uLL));
  v37.i64[0] = veorq_s8(v40, vextq_s8(v40, v40, 8uLL)).u64[0];
  v41 = vmull_high_p64(v40, v10);
  v42 = vmull_p64(v40.u64[0], v10.u64[0]);
  v43 = veorq_s8(v42, veorq_s8(v41, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v37.u64[0])));
  v44 = veorq_s8(vextq_s8(v9, v43, 8uLL), v42);
  v45 = veorq_s8(vextq_s8(v44, v44, 8uLL), vmull_p64(0xC200000000000000, v44.u64[0]));
  v46 = veorq_s8(veorq_s8(vextq_s8(v43, v9, 8uLL), v41), veorq_s8(vextq_s8(v45, v45, 8uLL), vmull_p64(0xC200000000000000, v45.u64[0])));
  a1[6] = v46;
  a1[14] = veorq_s8(v46, vextq_s8(v46, v46, 8uLL));
  v43.i64[0] = veorq_s8(v46, vextq_s8(v46, v46, 8uLL)).u64[0];
  v47 = vmull_high_p64(v46, v10);
  v48 = vmull_p64(v46.u64[0], v10.u64[0]);
  v49 = veorq_s8(v48, veorq_s8(v47, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v43.u64[0])));
  v50 = veorq_s8(vextq_s8(v9, v49, 8uLL), v48);
  v51 = veorq_s8(vextq_s8(v50, v50, 8uLL), vmull_p64(0xC200000000000000, v50.u64[0]));
  result = veorq_s8(veorq_s8(vextq_s8(v49, v9, 8uLL), v47), veorq_s8(vextq_s8(v51, v51, 8uLL), vmull_p64(0xC200000000000000, v51.u64[0])));
  a1[7] = result;
  a1[15] = veorq_s8(result, vextq_s8(result, result, 8uLL));
  return result;
}

int8x16_t gcm_gmult(int8x16_t *a1, uint64x2_t *a2, int8x16_t *a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  v9 = vqtbl1q_s8(*a1, *qword_100011800);
  v10 = veorq_s8(a9, a9);
  v11 = veorq_s8(v9, vextq_s8(v9, v9, 8uLL)).u64[0];
  v12 = vmull_high_p64(v9, *a2);
  v13 = vmull_p64(v9.u64[0], a2->i64[0]);
  v14 = veorq_s8(v13, veorq_s8(v12, vmull_p64(veorq_s8(*a2, vextq_s8(*a2, *a2, 8uLL)).u64[0], v11)));
  v15 = veorq_s8(vextq_s8(v10, v14, 8uLL), v13);
  v16 = veorq_s8(vextq_s8(v15, v15, 8uLL), vmull_p64(0xC200000000000000, v15.u64[0]));
  result = vqtbl1q_s8(veorq_s8(veorq_s8(vextq_s8(v14, v10, 8uLL), v12), veorq_s8(vextq_s8(v16, v16, 8uLL), vmull_p64(0xC200000000000000, v16.u64[0]))), *qword_100011800);
  *a3 = result;
  return result;
}

int8x16_t gcm_ghash(int8x16_t *a1, uint64x2_t *a2, int8x16_t *a3, uint64_t a4)
{
  v5 = veorq_s8(v4, v4);
  v6 = vqtbl1q_s8(*a1, *qword_100011800);
  v7 = a4 < 128;
  for (i = a4 - 128; !v7; i -= 128)
  {
    v9 = vqtbl1q_s8(a3[7], *qword_100011800);
    v10 = vmull_p64(a2->i64[0], v9.u64[0]);
    v11 = vmull_high_p64(*a2, v9);
    v12 = vmull_p64(a2[8].u64[0], veorq_s8(v9, vextq_s8(v9, v9, 8uLL)).u64[0]);
    v13 = vqtbl1q_s8(a3[6], *qword_100011800);
    v14 = a2[1];
    v15 = veorq_s8(v10, vmull_p64(v14.u64[0], v13.u64[0]));
    v16 = veorq_s8(v11, vmull_high_p64(v14, v13));
    v17 = veorq_s8(v12, vmull_p64(a2[9].u64[0], veorq_s8(v13, vextq_s8(v13, v13, 8uLL)).u64[0]));
    v18 = vqtbl1q_s8(a3[5], *qword_100011800);
    v19 = a2[2];
    v20 = veorq_s8(v15, vmull_p64(v19.u64[0], v18.u64[0]));
    v21 = veorq_s8(v16, vmull_high_p64(v19, v18));
    v22 = veorq_s8(v17, vmull_p64(a2[10].u64[0], veorq_s8(v18, vextq_s8(v18, v18, 8uLL)).u64[0]));
    v23 = vqtbl1q_s8(a3[4], *qword_100011800);
    v24 = a2[3];
    v25 = veorq_s8(v20, vmull_p64(v24.u64[0], v23.u64[0]));
    v26 = veorq_s8(v21, vmull_high_p64(v24, v23));
    v27 = veorq_s8(v22, vmull_p64(a2[11].u64[0], veorq_s8(v23, vextq_s8(v23, v23, 8uLL)).u64[0]));
    v28 = vqtbl1q_s8(a3[3], *qword_100011800);
    v29 = a2[4];
    v30 = veorq_s8(v25, vmull_p64(v29.u64[0], v28.u64[0]));
    v31 = veorq_s8(v26, vmull_high_p64(v29, v28));
    v32 = veorq_s8(v27, vmull_p64(a2[12].u64[0], veorq_s8(v28, vextq_s8(v28, v28, 8uLL)).u64[0]));
    v33 = vqtbl1q_s8(a3[2], *qword_100011800);
    v34 = a2[5];
    v35 = veorq_s8(v30, vmull_p64(v34.u64[0], v33.u64[0]));
    v36 = veorq_s8(v31, vmull_high_p64(v34, v33));
    v37 = veorq_s8(v32, vmull_p64(a2[13].u64[0], veorq_s8(v33, vextq_s8(v33, v33, 8uLL)).u64[0]));
    v38 = vqtbl1q_s8(a3[1], *qword_100011800);
    v39 = a2[6];
    v40 = veorq_s8(v35, vmull_p64(v39.u64[0], v38.u64[0]));
    v41 = veorq_s8(v36, vmull_high_p64(v39, v38));
    v42 = veorq_s8(v37, vmull_p64(a2[14].u64[0], veorq_s8(v38, vextq_s8(v38, v38, 8uLL)).u64[0]));
    v43 = a2[7];
    v44 = veorq_s8(vqtbl1q_s8(*a3, *qword_100011800), v6);
    v45 = veorq_s8(v40, vmull_p64(v43.u64[0], v44.u64[0]));
    v46 = veorq_s8(v41, vmull_high_p64(v43, v44));
    v47 = veorq_s8(v46, veorq_s8(v45, veorq_s8(v42, vmull_p64(a2[15].u64[0], veorq_s8(v44, vextq_s8(v44, v44, 8uLL)).u64[0]))));
    v48 = veorq_s8(v45, vextq_s8(v5, v47, 8uLL));
    v49 = veorq_s8(vmull_p64(0xC200000000000000, v48.u64[0]), vextq_s8(v48, v48, 8uLL));
    v6 = veorq_s8(veorq_s8(v46, vextq_s8(v47, v5, 8uLL)), veorq_s8(vmull_p64(0xC200000000000000, v49.u64[0]), vextq_s8(v49, v49, 8uLL)));
    a3 += 8;
    v7 = i < 128;
  }

  v7 = i < -112;
  v50 = i + 112;
  if (!v7)
  {
    v52 = *a3;
    v51 = a3 + 1;
    v53 = veorq_s8(v6, vqtbl1q_s8(v52, *qword_100011800));
    v54 = (a2 + v50);
    v55 = *(a2 + v50);
    v56 = vmull_p64(v53.u64[0], v55.u64[0]);
    v57 = vmull_high_p64(v53, v55);
    v58 = vmull_p64(veorq_s8(v53, vextq_s8(v53, v53, 8uLL)).u64[0], *(a2[8].u64 + v50));
    v7 = v50 < 16;
    for (j = v50 - 16; !v7; j -= 16)
    {
      --v54;
      v60 = *v51++;
      v61 = vqtbl1q_s8(v60, *qword_100011800);
      v56 = veorq_s8(v56, vmull_p64(v61.u64[0], v54->i64[0]));
      v57 = veorq_s8(v57, vmull_high_p64(v61, *v54));
      v58 = veorq_s8(v58, vmull_p64(veorq_s8(v61, vextq_s8(v61, v61, 8uLL)).u64[0], v54[8].u64[0]));
      v7 = j < 16;
    }

    v62 = veorq_s8(v57, veorq_s8(v56, v58));
    v63 = veorq_s8(v56, vextq_s8(v5, v62, 8uLL));
    v64 = veorq_s8(vmull_p64(0xC200000000000000, v63.u64[0]), vextq_s8(v63, v63, 8uLL));
    v6 = veorq_s8(veorq_s8(v57, vextq_s8(v62, v5, 8uLL)), veorq_s8(vmull_p64(0xC200000000000000, v64.u64[0]), vextq_s8(v64, v64, 8uLL)));
  }

  result = vqtbl1q_s8(v6, *qword_100011800);
  *a1 = result;
  return result;
}

int64x2_t *AccelerateCrypto_SHA512_compress_hwassist(int64x2_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    i8 = &ccsha512_K;
    v4 = *result;
    v5 = result[1];
    v6 = result[2];
    v7 = result[3];
    do
    {
      _Q24 = v4;
      _Q25 = v5;
      _Q0 = vrev64q_s8(*a3);
      _Q1 = vrev64q_s8(a3[1]);
      _Q2 = vrev64q_s8(a3[2]);
      _Q3 = vrev64q_s8(a3[3]);
      _Q4 = vrev64q_s8(a3[4]);
      v15 = *i8;
      _Q5 = vrev64q_s8(a3[5]);
      v17 = i8[1];
      _Q6 = vrev64q_s8(a3[6]);
      v19 = i8[2];
      _Q7 = vrev64q_s8(a3[7]);
      v21 = i8[3];
      v22 = i8[4];
      v23 = i8[5];
      v24 = i8[6];
      v25 = i8[7];
      a3 += 8;
      v26 = (i8 + 8);
      _Q29 = vextq_s8(v6, v7, 8uLL);
      _Q28 = vextq_s8(v5, v6, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      v30 = *v26;
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v37 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v40 = vaddq_s64(v5, v37);
      _Q29 = vextq_s8(v40, v6, 8uLL);
      _Q28 = vextq_s8(v4, v40, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      v44 = v26[1];
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v47 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v50 = vaddq_s64(v4, v47);
      _Q29 = vextq_s8(v50, v40, 8uLL);
      _Q28 = vextq_s8(_Q27, v50, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      v54 = v26[2];
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v57 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v60 = vaddq_s64(_Q27, v57);
      _Q29 = vextq_s8(v60, v50, 8uLL);
      _Q28 = vextq_s8(_Q26, v60, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      v64 = v26[3];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v67 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v70 = vaddq_s64(_Q26, v67);
      _Q29 = vextq_s8(v70, v60, 8uLL);
      _Q28 = vextq_s8(_Q25, v70, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      v74 = v26[4];
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v77 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v80 = vaddq_s64(_Q25, v77);
      _Q29 = vextq_s8(v80, v70, 8uLL);
      _Q28 = vextq_s8(_Q24, v80, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      v84 = v26[5];
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v87 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v90 = vaddq_s64(_Q24, v87);
      _Q29 = vextq_s8(v90, v80, 8uLL);
      _Q28 = vextq_s8(_Q27, v90, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      v94 = v26[6];
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v97 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v100 = vaddq_s64(_Q27, v97);
      _Q29 = vextq_s8(v100, v90, 8uLL);
      _Q28 = vextq_s8(_Q26, v100, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      v104 = v26[7];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v107 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v110 = vaddq_s64(_Q26, v107);
      v26 += 8;
      _Q29 = vextq_s8(v110, v100, 8uLL);
      _Q28 = vextq_s8(_Q25, v110, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      v114 = *v26;
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v117 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v120 = vaddq_s64(_Q25, v117);
      _Q29 = vextq_s8(v120, v110, 8uLL);
      _Q28 = vextq_s8(_Q24, v120, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      v124 = v26[1];
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v127 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v130 = vaddq_s64(_Q24, v127);
      _Q29 = vextq_s8(v130, v120, 8uLL);
      _Q28 = vextq_s8(_Q27, v130, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      v134 = v26[2];
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v137 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v140 = vaddq_s64(_Q27, v137);
      _Q29 = vextq_s8(v140, v130, 8uLL);
      _Q28 = vextq_s8(_Q26, v140, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      v144 = v26[3];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v147 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v150 = vaddq_s64(_Q26, v147);
      _Q29 = vextq_s8(v150, v140, 8uLL);
      _Q28 = vextq_s8(_Q25, v150, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      v154 = v26[4];
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v157 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v160 = vaddq_s64(_Q25, v157);
      _Q29 = vextq_s8(v160, v150, 8uLL);
      _Q28 = vextq_s8(_Q24, v160, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      v164 = v26[5];
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v167 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v170 = vaddq_s64(_Q24, v167);
      _Q29 = vextq_s8(v170, v160, 8uLL);
      _Q28 = vextq_s8(_Q27, v170, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      v174 = v26[6];
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v177 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v180 = vaddq_s64(_Q27, v177);
      _Q29 = vextq_s8(v180, v170, 8uLL);
      _Q28 = vextq_s8(_Q26, v180, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      v184 = v26[7];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v187 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v190 = vaddq_s64(_Q26, v187);
      v26 += 8;
      _Q29 = vextq_s8(v190, v180, 8uLL);
      _Q28 = vextq_s8(_Q25, v190, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      v194 = *v26;
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v197 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v200 = vaddq_s64(_Q25, v197);
      _Q29 = vextq_s8(v200, v190, 8uLL);
      _Q28 = vextq_s8(_Q24, v200, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      v204 = v26[1];
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v207 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v210 = vaddq_s64(_Q24, v207);
      _Q29 = vextq_s8(v210, v200, 8uLL);
      _Q28 = vextq_s8(_Q27, v210, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      v214 = v26[2];
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v217 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v220 = vaddq_s64(_Q27, v217);
      _Q29 = vextq_s8(v220, v210, 8uLL);
      _Q28 = vextq_s8(_Q26, v220, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      v224 = v26[3];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v227 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v230 = vaddq_s64(_Q26, v227);
      _Q29 = vextq_s8(v230, v220, 8uLL);
      _Q28 = vextq_s8(_Q25, v230, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      v234 = v26[4];
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v237 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v240 = vaddq_s64(_Q25, v237);
      _Q29 = vextq_s8(v240, v230, 8uLL);
      _Q28 = vextq_s8(_Q24, v240, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      v244 = v26[5];
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v247 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v250 = vaddq_s64(_Q24, v247);
      _Q29 = vextq_s8(v250, v240, 8uLL);
      _Q28 = vextq_s8(_Q27, v250, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      v254 = v26[6];
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v257 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v260 = vaddq_s64(_Q27, v257);
      _Q29 = vextq_s8(v260, v250, 8uLL);
      _Q28 = vextq_s8(_Q26, v260, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      v264 = v26[7];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v267 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v270 = vaddq_s64(_Q26, v267);
      v26 += 8;
      _Q29 = vextq_s8(v270, v260, 8uLL);
      _Q28 = vextq_s8(_Q25, v270, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v276 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v279 = vaddq_s64(_Q25, v276);
      v280 = vaddq_s64(_Q0, *v26);
      _Q29 = vextq_s8(v279, v270, 8uLL);
      _Q28 = vextq_s8(_Q24, v279, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v286 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v289 = vaddq_s64(_Q24, v286);
      v290 = vaddq_s64(_Q1, v26[1]);
      _Q29 = vextq_s8(v289, v279, 8uLL);
      _Q28 = vextq_s8(_Q27, v289, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v296 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v299 = vaddq_s64(_Q27, v296);
      v300 = vaddq_s64(_Q2, v26[2]);
      _Q29 = vextq_s8(v299, v289, 8uLL);
      _Q28 = vextq_s8(_Q26, v299, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v306 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v309 = vaddq_s64(_Q26, v306);
      v310 = vaddq_s64(_Q3, v26[3]);
      _Q29 = vextq_s8(v309, v299, 8uLL);
      _Q28 = vextq_s8(_Q25, v309, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v316 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v319 = vaddq_s64(_Q25, v316);
      v320 = vaddq_s64(_Q4, v26[4]);
      _Q29 = vextq_s8(v319, v309, 8uLL);
      _Q28 = vextq_s8(_Q24, v319, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v326 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v329 = vaddq_s64(_Q24, v326);
      v330 = vaddq_s64(_Q5, v26[5]);
      _Q29 = vextq_s8(v329, v319, 8uLL);
      _Q28 = vextq_s8(_Q27, v329, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v336 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v339 = vaddq_s64(_Q27, v336);
      v340 = vaddq_s64(_Q6, v26[6]);
      _Q29 = vextq_s8(v339, v329, 8uLL);
      _Q28 = vextq_s8(_Q26, v339, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v346 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v349 = vaddq_s64(_Q26, v346);
      v350 = vaddq_s64(_Q7, v26[7]);
      _Q29 = vextq_s8(v349, v339, 8uLL);
      _Q28 = vextq_s8(_Q25, v349, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q27, Q25, V24.2D
      }

      v355 = vaddq_s64(_Q25, _Q30);
      _Q29 = vextq_s8(v355, v349, 8uLL);
      _Q28 = vextq_s8(_Q24, v355, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q26, Q24, V27.2D
      }

      v360 = vaddq_s64(_Q24, _Q30);
      _Q29 = vextq_s8(v360, v355, 8uLL);
      _Q28 = vextq_s8(_Q27, v360, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q25, Q27, V26.2D
      }

      v365 = vaddq_s64(_Q27, _Q30);
      _Q29 = vextq_s8(v365, v360, 8uLL);
      _Q28 = vextq_s8(_Q26, v365, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q24, Q26, V25.2D
      }

      v370 = vaddq_s64(_Q26, _Q30);
      _Q29 = vextq_s8(v370, v365, 8uLL);
      _Q28 = vextq_s8(_Q25, v370, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q27, Q25, V24.2D
      }

      v375 = vaddq_s64(_Q25, _Q30);
      _Q29 = vextq_s8(v375, v370, 8uLL);
      _Q28 = vextq_s8(_Q24, v375, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q26, Q24, V27.2D
      }

      v380 = vaddq_s64(_Q24, _Q30);
      _Q29 = vextq_s8(v380, v375, 8uLL);
      _Q28 = vextq_s8(_Q27, v380, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q25, Q27, V26.2D
      }

      v385 = vaddq_s64(_Q27, _Q30);
      _Q29 = vextq_s8(v385, v380, 8uLL);
      _Q28 = vextq_s8(_Q26, v385, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q24, Q26, V25.2D
      }

      v4 = vaddq_s64(v4, _Q24);
      v5 = vaddq_s64(v5, _Q25);
      v6 = vaddq_s64(v6, vaddq_s64(_Q26, _Q30));
      v7 = vaddq_s64(v7, v385);
      v390 = a2-- <= 1;
      i8 = v26[-32].i8;
    }

    while (!v390);
    *result = v4;
    result[1] = v5;
    result[2] = v6;
    result[3] = v7;
  }

  return result;
}

uint64_t ccn_shift_right_asm(uint64_t result, int8x16_t *a2, int8x16_t *a3, uint64_t a4)
{
  if (result)
  {
    v4 = a3->i64[0];
    v5 = 64 - a4;
    v6 = vdupq_n_s64(64 - a4);
    v7 = vdupq_n_s64(-a4);
    v8 = result == 4;
    v9 = result < 4;
    result -= 4;
    if (!v9)
    {
      if (v8)
      {
        v13 = a3[1];
        *a2 = veorq_s8(vshlq_u64(*a3, v7), vshlq_u64(vextq_s8(*a3, v13, 8uLL), v6));
        a2[1] = veorq_s8(vshlq_u64(v13, v7), vshlq_u64(vextq_s8(v13, v13, 8uLL).u64[0], v6));
        return result;
      }

      do
      {
        v10 = *a3;
        v11 = a3[1];
        a3 += 2;
        v4 = a3->i64[0];
        v12.i64[0] = vextq_s8(v11, v11, 8uLL).u64[0];
        v12.i64[1] = a3->i64[0];
        *a2 = veorq_s8(vshlq_u64(v10, v7), vshlq_u64(vextq_s8(v10, v11, 8uLL), v6));
        a2[1] = veorq_s8(vshlq_u64(v11, v7), vshlq_u64(v12, v6));
        a2 += 2;
        v9 = result <= 4;
        result -= 4;
      }

      while (!v9);
    }

    v14 = result + 4;
    v15 = &a3->u64[1];
    v16 = v14 == 2;
    v9 = v14 < 2;
    result = v14 - 2;
    if (!v9)
    {
      if (v16)
      {
        v19 = *v15 >> a4;
        a2->i64[0] = (v4 >> a4) | (*v15 << v5) & (((64 - a4) >> 6) - 1);
        a2->i64[1] = v19;
        return result;
      }

      do
      {
        v17 = *v15;
        v18 = v15[1];
        v15 += 2;
        a2->i64[0] = (v4 >> a4) | (v17 << v5) & (((64 - a4) >> 6) - 1);
        a2->i64[1] = (v17 >> a4) | (v18 << v5) & (((64 - a4) >> 6) - 1);
        ++a2;
        v4 = v18;
        v9 = result <= 2;
        result -= 2;
      }

      while (!v9);
    }

    a2->i64[0] = v4 >> a4;
  }

  return result;
}

double ccn_shift_left(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64x2_t a5)
{
  v5 = a2 + 8 * a1;
  v6 = vdupq_n_s64(a4);
  v7 = vdupq_n_s64(a4 - 64);
  v8 = (a3 + 8 * a1 - 8);
  v9 = a1 == 4;
  v10 = a1 < 4;
  v11 = a1 - 4;
  if (!v10)
  {
    if (v9)
    {
      v16.i64[0] = 0;
      v16.i64[1] = *(v8 - 3);
      a5 = veorq_s8(vshlq_u64(v16, v7), vshlq_u64(*(v8 - 3), v6));
      v17 = veorq_s8(vshlq_u64(*(v8 - 1), v7), vshlq_u64(*(v8 - 1), v6));
      *(v5 - 32) = a5;
      *(v5 - 16) = v17;
      return *a5.i64;
    }

    do
    {
      v12 = *(v8 - 3);
      v13 = *(v8 - 1);
      v14 = *(v8 - 2);
      v15 = *(v8 - 1);
      v8 -= 4;
      a5 = veorq_s8(vshlq_u64(v14, v7), vshlq_u64(v12, v6));
      *(v5 - 32) = a5;
      *(v5 - 16) = veorq_s8(vshlq_u64(v15, v7), vshlq_u64(v13, v6));
      v5 -= 32;
      v10 = v11 <= 4;
      v11 -= 4;
    }

    while (!v10);
  }

  v18 = v11 & 3;
  if (!v18)
  {
    return *a5.i64;
  }

  if (v18 == 3)
  {
    v19 = *(v8 - 1);
  }

  else
  {
    if ((v18 & 2) == 0)
    {
      goto LABEL_13;
    }

    v19.i64[0] = 0;
    v19.i64[1] = *(v8 - 1);
  }

  a5 = veorq_s8(vshlq_u64(*(v8 - 1), v6), vshlq_u64(v19, v7));
  v8 -= 2;
  *(v5 - 16) = a5;
  v5 -= 16;
LABEL_13:
  if (v18)
  {
    a5.i64[0] = *v8;
    a5.i64[0] = vshlq_u64(a5, v6).u64[0];
    *(v5 - 8) = a5.i64[0];
  }

  return *a5.i64;
}

uint64_t ccn_cmp_asm(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  if (result)
  {
    v3 = result;
    result = 0;
    do
    {
      v5 = *a2++;
      v4 = v5;
      v6 = *a3++;
      v7 = v4 >= v6;
      if (v4 > v6)
      {
        result = 1;
      }

      if (!v7)
      {
        result = -1;
      }
    }

    while (v3-- > 1);
  }

  return result;
}

id acc_policies_shouldHideAccessoryWithModelNumber(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:@"ShowHiddenAccessories"];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    if (acc_policies_shouldHideAccessoryWithModelNumber_onceToken != -1)
    {
      acc_policies_shouldHideAccessoryWithModelNumber_cold_1();
    }

    v4 = [acc_policies_shouldHideAccessoryWithModelNumber_hiddenModelNumbers containsObject:a1];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = "NO";
    if (v4)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (v3)
    {
      v5 = "YES";
    }

    v8 = 136315394;
    v9 = v6;
    v10 = 2080;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "shouldHideAccessory: %s, showHiddenAccessories: %s", &v8, 0x16u);
  }

  return v4;
}

void __acc_policies_shouldHideAccessoryWithModelNumber_block_invoke(id a1)
{
  v1 = acc_policies_shouldHideAccessoryWithModelNumber_hiddenModelNumbers;
  acc_policies_shouldHideAccessoryWithModelNumber_hiddenModelNumbers = &off_100233C60;
}

id acc_policies_shouldOverrideNameOnAccessoryWithModelNumber(uint64_t a1)
{
  if (acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_onceToken != -1)
  {
    acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_cold_1();
  }

  v2 = [acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_hiddenModelNumbers containsObject:a1];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = "NO";
    if (v2)
    {
      v3 = "YES";
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "shouldOverrideName: %s", &v5, 0xCu);
  }

  return v2;
}

void __acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_block_invoke(id a1)
{
  v1 = acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_hiddenModelNumbers;
  acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_hiddenModelNumbers = &off_100233C78;
}

uint64_t acc_policies_shouldResetLightningBusWhenTransportIsNoLongerRestricted(unsigned int a1, int a2)
{
  if ((a2 - 3) < 0xFFFFFFFE)
  {
    return (a1 < 9) & (0x1C3u >> a1);
  }

  else
  {
    return 0;
  }
}

BOOL acc_policies_endpointRequiresChargingCurrentLimit(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5, _WORD *a6)
{
  v87[0] = @"nameMatch";
  v87[1] = @"modelContain";
  v88[0] = @"IntelliLink";
  v88[1] = @"1.0";
  v87[2] = @"overrideCurrentLimit";
  v88[2] = &off_100233D68;
  v6 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:3];
  v89[0] = v6;
  v85[0] = @"nameMatch";
  v85[1] = @"modelContain";
  v86[0] = @"MyLink";
  v86[1] = @"1.0";
  v85[2] = @"overrideCurrentLimit";
  v86[2] = &off_100233D68;
  v7 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:3];
  v89[1] = v7;
  v83[0] = @"nameMatch";
  v83[1] = @"manufacturerMatch";
  v84[0] = @"iPL24Z";
  v84[1] = @"SDI Technologies";
  v83[2] = @"overrideCurrentLimit";
  v84[2] = &off_100233D68;
  v8 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:3];
  v89[2] = v8;
  v81[0] = @"modelMatch";
  v81[1] = @"manufacturerMatch";
  v82[0] = @"MIB2";
  v82[1] = @"HARMAN";
  v81[2] = @"overrideCurrentLimit";
  v82[2] = &off_100233D80;
  v9 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:3];
  v89[3] = v9;
  v79[0] = @"modelMatch";
  v79[1] = @"manufacturerMatch";
  v80[0] = @"Range Rover Velar";
  v80[1] = @"Land Rover";
  v79[2] = @"overrideCurrentLimit";
  v80[2] = &off_100233D68;
  v10 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:3];
  v89[4] = v10;
  v77[0] = @"modelMatch";
  v77[1] = @"manufacturerMatch";
  v78[0] = @"Jaguar I-PACE";
  v78[1] = @"Jaguar";
  v77[2] = @"overrideCurrentLimit";
  v78[2] = &off_100233D68;
  v11 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:3];
  v89[5] = v11;
  v12 = [NSArray arrayWithObjects:v89 count:6];

  v13 = acc_userDefaultsIapd_copyIntegerForKey(@"ChargingPowerOverride");
  v14 = acc_userDefaultsIapd_copyIntegerForKey(@"ChargingPowerBehavior");
  v15 = acc_userDefaultsIapd_copyIntegerForKey(@"ChargingPowerBehavior");
  if (v15 <= 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = v15;
  }

  if (v14 - 3 < 6)
  {
    v17 = 10 * v14 - 5;
    v18 = a4;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v17 = 45;
  v18 = a4;
  if (v14 != 1)
  {
    goto LABEL_7;
  }

  v19 = 0;
LABEL_8:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67110656;
    v64 = a2;
    v65 = 1024;
    v66 = a3;
    v67 = 1024;
    v68 = v19;
    v69 = 1024;
    v70 = v13;
    v71 = 1024;
    v72 = v18;
    v73 = 1024;
    v74 = v14;
    v75 = 1024;
    v76 = v17;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "RequiresChargingCurrentLimit: isApple=%d deviceType=%d checkChargingCurrentLimit=%d chargingCurrentLimit=%d inLimit=%d behavior=%d batteryThreshold=%d", buf, 0x2Cu);
  }

  if (!v19)
  {
    goto LABEL_65;
  }

  v57 = 0;
  v20 = v13;
  v21 = v13 < v18 && v13 != 0;
  if (a1 && !v21)
  {
    v22 = *(a1 + 64);
    if (v22)
    {
      if (*v22)
      {
        v57 = CFRetain(*v22);
      }

      else
      {
        v57 = 0;
      }

      v23 = *(*(a1 + 64) + 16);
      if (v23)
      {
        v56 = CFRetain(v23);
      }

      else
      {
        v56 = 0;
      }

      v24 = *(*(a1 + 64) + 8);
      if (v24)
      {
        v55 = CFRetain(v24);
      }

      else
      {
        v55 = 0;
      }

      if (v57 && v56)
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        obj = v12;
        v25 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v25)
        {
          v26 = v25;
          v44 = v13;
          v45 = v17;
          v46 = v16;
          v47 = v12;
          v27 = *v59;
          while (2)
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v59 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v58 + 1) + 8 * i);
              v30 = [v29 objectForKey:@"nameMatch"];
              v31 = [v29 objectForKey:@"nameContain"];
              v32 = _matchOrContainString(v57, v30, v31);

              v33 = [v29 objectForKey:@"modelMatch"];
              v34 = [v29 objectForKey:@"modelContain"];
              v35 = _matchOrContainString(v56, v33, v34);

              v36 = [v29 objectForKey:@"manufacturerMatch"];
              v37 = [v29 objectForKey:@"manufacturerContain"];
              v38 = _matchOrContainString(v55, v36, v37);

              if (v32 && v35 && v38)
              {
                v39 = [v29 objectForKey:@"overrideCurrentLimit"];
                v20 = [v39 intValue];

                v18 = a4;
                v12 = v47;
                v17 = v45;
                v16 = v46;
                goto LABEL_40;
              }
            }

            v26 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }

          v18 = a4;
          v12 = v47;
          v17 = v45;
          v16 = v46;
          v20 = v44;
        }

LABEL_40:

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67110400;
          v64 = a2;
          v65 = 1024;
          v66 = a3;
          v67 = 1024;
          v68 = v20;
          v69 = 1024;
          v70 = v18;
          v71 = 1024;
          v72 = v16;
          v73 = 1024;
          v74 = v17;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "RequiresChargingCurrentLimit: isApple=%d deviceType=%d chargingCurrentLimit=%d inLimit=%d battery=%d threshold=%d", buf, 0x26u);
        }

        if (a3 != 3 && v16 >= v17 && (a2 & 1) == 0 && (v18 > 0x5DC || v20 >= 0x5DD) && v20 - 1501 < 0xFFFFFA24)
        {
          v20 = 1500;
        }

        if (v20)
        {
          v40 = v20 >= v18;
        }

        else
        {
          v40 = 1;
        }

        v21 = !v40;
        goto LABEL_55;
      }

LABEL_66:
      v21 = 0;
      v41 = a6 != 0;
      goto LABEL_58;
    }

LABEL_65:
    v56 = 0;
    v57 = 0;
    v55 = 0;
    goto LABEL_66;
  }

  v55 = 0;
  v56 = 0;
LABEL_55:
  v41 = a6 != 0;
  if (a6 && v21)
  {
    *a6 = v20;
    v41 = 1;
    v21 = 1;
  }

LABEL_58:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    if (v41)
    {
      v42 = *a6;
    }

    else
    {
      v42 = -1;
    }

    *buf = 67110656;
    v64 = a2;
    v65 = 1024;
    v66 = a3;
    v67 = 1024;
    v68 = a5;
    v69 = 1024;
    v70 = v16;
    v71 = 1024;
    v72 = v18;
    v73 = 1024;
    v74 = v42;
    v75 = 1024;
    v76 = v21;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "RequiresChargingCurrentLimit: isApple=%d, deviceType=%d, batt=%d(%d), %d->%d, return %d", buf, 0x2Cu);
  }

  return v21;
}

BOOL _matchOrContainString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = (v6 | v7) == 0;
  if (v5)
  {
    if (v6)
    {
      v10 = [v5 isEqualToString:v6];
LABEL_6:
      v9 = v10;
      goto LABEL_7;
    }

    if (v7)
    {
      v10 = [v5 containsString:v7];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v9;
}

id acc_policies_allowACCAuthProtocolOnAllTransport()
{
  v0 = +[ACCUserDefaults sharedDefaults];
  v1 = [v0 BOOLForKey:@"AllowACCAuthProtocolOnAllTransport"];

  return v1;
}

uint64_t acc_policies_allowACCAuthProtocolOnTransport(int a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:@"EnableACCAuthProtocolOnNFC"];

  v4 = +[ACCUserDefaults sharedDefaults];
  v5 = [v4 BOOLForKey:@"DisableACCAuthProtocolOnInductive"];

  v6 = +[ACCUserDefaults sharedDefaults];
  v7 = [v6 BOOLForKey:@"AllowACCAuthProtocolOnAllTransport"];

  if (a1 == 13 && (v3 & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = (a1 == 12) & (v5 ^ 1) | v7;
  }

  return v8 & 1;
}

id logObjectForModule()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 9;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1();
    }

    v2 = &_os_log_default;
    v1 = &_os_log_default;
  }

  else
  {
    v2 = *(gLogObjects + 64);
  }

  return v2;
}

void platform_connectionInfo_configStreamGetCategories(const void *a1, uint64_t a2, void *a3)
{
  v6 = 0;
  if (a2 && a3)
  {
    if (_categoriesAvailableForEndpoint(a3))
    {
      v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040AF9A0123uLL);
      *v6 = CFRetain(a1);
      v6[2] = 0;
      if (accFeatureHandlers_invokeHandler(a3, 60, v6))
      {
        return;
      }
    }

    else
    {
      platform_connectionInfo_configStreamGetCategories_cold_1();
      v6 = 0;
    }
  }

  if (gLogObjects)
  {
    v7 = gNumLogObjects < 9;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412802;
    v11 = a2;
    v12 = 2112;
    v13 = a3;
    v14 = 1024;
    v15 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "connectionInfo configStreamPropertyRequest: %@ - %@, success %d", &v10, 0x1Cu);
  }

  platform_connectionInfo_configStreamCategoriesResponse(a1, a3, a2, 0, 0);
  platform_configStream_deleteParams(v6);
}

uint64_t _categoriesAvailableForEndpoint(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = ___categoriesAvailableForEndpoint_block_invoke;
  v3[3] = &unk_100225940;
  v3[4] = &v4;
  v3[5] = a1;
  acc_manager_protectedEndpointCall(a1, 0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1000131D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void platform_connectionInfo_configStreamPropertyRequest(const void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  if (a2 && a3)
  {
    if (_categoriesAvailableForEndpoint(a3))
    {
      v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040AF9A0123uLL);
      *v10 = CFRetain(a1);
      v10[4] = a4;
      *(v10 + 10) = a5;
      *(v10 + 2) = 0;
      if (accFeatureHandlers_invokeHandler(a3, 62, v10))
      {
        return;
      }
    }

    else
    {
      platform_connectionInfo_configStreamGetCategories_cold_1();
      v10 = 0;
    }
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects < 9;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v12 = &_os_log_default;
  }

  else
  {
    v13 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = 138413314;
    v15 = a2;
    v16 = 2112;
    v17 = a3;
    v18 = 1024;
    v19 = 0;
    v20 = 1024;
    v21 = a4;
    v22 = 1024;
    v23 = a5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "connectionInfo configStreamPropertyRequest: %@ - %@, success %d, categoryID 0x%x, propertyID %u", &v14, 0x28u);
  }

  platform_connectionInfo_configStreamPropertyResponse(a1, a3, a2, a4, a5, 0, 0);
  platform_configStream_deleteParams(v10);
}

void platform_connectionInfo_configStreamPropertySetValue(const void *a1, uint64_t a2, void *a3, __int16 a4, char a5, const void *a6)
{
  v6 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_10;
  }

  if ((_categoriesAvailableForEndpoint(a3) & 1) == 0)
  {
    platform_connectionInfo_configStreamGetCategories_cold_1();
    v6 = 0;
LABEL_10:
    platform_configStream_deleteParams(v6);
    return;
  }

  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040AF9A0123uLL);
  *v6 = CFRetain(a1);
  *(v6 + 4) = a4;
  *(v6 + 10) = a5;
  if (a6)
  {
    v12 = CFRetain(a6);
  }

  else
  {
    v12 = 0;
  }

  v6[2] = v12;
  if ((accFeatureHandlers_invokeHandler(a3, 63, v6) & 1) == 0)
  {
    goto LABEL_10;
  }
}

uint64_t ___categoriesAvailableForEndpoint_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 28) == 11 && (v4 = *(a2 + 56)) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(v4 + 16);
  }

  else
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 9;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v7 = &_os_log_default;
      v6 = &_os_log_default;
    }

    else
    {
      v7 = *(gLogObjects + 64);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 28);
      v9 = *(a1 + 40);
      v11[0] = 67109378;
      v11[1] = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unexpected protocol %{coreacc:ACCEndpoint_Protocol_t}d for %@ !", v11, 0x12u);
    }
  }

  return 1;
}

id _getUSBCameraKitHubPluginInstance()
{
  v0 = +[ACCPlatformPluginManager sharedManager];
  v1 = [v0 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformUSBCameraKitHubPluginProtocol fallbackToTransportPlugins:1];

  return v1;
}

void *TLV8BufferInit(void *result, uint64_t a2)
{
  *result = result + 4;
  result[1] = 0;
  result[2] = a2;
  result[3] = 0;
  return result;
}

void sub_100017440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000176B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100017914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _getSleepAssertionPluginInstance()
{
  v0 = +[ACCPlatformPluginManager sharedManager];
  v1 = [v0 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformSleepAssertionPluginProtocol fallbackToTransportPlugins:0];

  if (!v1)
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 7;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v3 = &_os_log_default;
    }

    else
    {
      v4 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      _getSleepAssertionPluginInstance_cold_2();
    }
  }

  return v1;
}

id _getACPowerPluginInstance()
{
  v0 = +[ACCPlatformPluginManager sharedManager];
  v1 = [v0 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformIOKitPowerPluginProtocol fallbackToTransportPlugins:0];

  if (!v1)
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 7;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v3 = &_os_log_default;
    }

    else
    {
      v4 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      _getACPowerPluginInstance_cold_2();
    }
  }

  return v1;
}

uint64_t _shouldAllowSleepAssertions(int a1)
{
  if (a1 != 3)
  {
    return 1;
  }

  v1 = 0;
  v2 = MGGetProductType();
  if (v2 > 2619317133)
  {
    if (v2 == 2619317134)
    {
      return v1;
    }

    v3 = 3241053352;
  }

  else
  {
    if (v2 == 555503454)
    {
      return v1;
    }

    v3 = 2487868872;
  }

  if (v2 != v3)
  {
    return 1;
  }

  return v1;
}

uint64_t platform_sleepAssertion_connectionTypeAllowsAssertion(int a1)
{
  if ((platform_systemInfo_isATV() & 1) != 0 || (a1 - 1) >= 6 || ((0x2Du >> (a1 - 1)) & 1) == 0)
  {
    v2 = platform_systemInfo_isWatch();
  }

  else
  {
    v2 = 1;
  }

  shouldAllowSleepAssertions = _shouldAllowSleepAssertions(a1);
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 14;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 104);
  }

  v7 = v2 & shouldAllowSleepAssertions;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109376;
    v9[1] = a1;
    v10 = 1024;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[#SleepAssertions] connectionType: %{coreacc:ACCConnection_Type_t}d allows sleep assertion %d", v9, 0xEu);
  }

  return v7;
}

uint64_t platform_sleepAssertion_connectionTypeRequiresAssertion(int a1)
{
  v2 = platform_systemInfo_isATV();
  if ((a1 - 5) < 0xFFFFFFFE || v2)
  {
    v3 = platform_systemInfo_isWatch();
  }

  else
  {
    v3 = 1;
  }

  shouldAllowSleepAssertions = _shouldAllowSleepAssertions(a1);
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 14;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 104);
  }

  v8 = v3 & shouldAllowSleepAssertions;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109376;
    v10[1] = a1;
    v11 = 1024;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[#SleepAssertions] connectionType: %{coreacc:ACCConnection_Type_t}d requires sleep assertion %d", v10, 0xEu);
  }

  return v8;
}

void platform_sleepAssertion_create(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 7;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#SleepAssertions] Creating sleep assertion for UUID %@...", &v6, 0xCu);
  }

  v5 = +[ACCPlatformSleepAssertionManager sharedManager];
  [v5 addSleepAssertionForUUID:a1];
}

void platform_sleepAssertion_destroy(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 7;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#SleepAssertions] Removing sleep assertion for UUID %@...", &v6, 0xCu);
  }

  v5 = +[ACCPlatformSleepAssertionManager sharedManager];
  [v5 removeSleepAssertionForUUID:a1];
}

void platform_sleepAssertion_createEA()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 7;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v1 = &_os_log_default;
  }

  else
  {
    v2 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[#SleepAssertions] Creating EA sleep assertion...", v4, 2u);
  }

  v3 = _getSleepAssertionPluginInstance();
  [v3 createEASleepAssertion];
}

void platform_sleepAssertion_destroyEA()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 7;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v1 = &_os_log_default;
  }

  else
  {
    v2 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[#SleepAssertions] Removing EA sleep assertion...", v4, 2u);
  }

  v3 = _getSleepAssertionPluginInstance();
  [v3 removeEASleepAssertion];
}

void platform_sleepAssertion_createForApplePencil()
{
  v0 = _getSleepAssertionPluginInstance();
  [v0 createApplePencilSleepAssertion];
}

void platform_sleepAssertion_destroyForApplePencil()
{
  v0 = _getSleepAssertionPluginInstance();
  [v0 removeApplePencilSleepAssertion];
}

void platform_sleepAssertion_createForMFi4()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 7;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v1 = &_os_log_default;
  }

  else
  {
    v2 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[#SleepAssertions] acc_platform_sleep_assertions: platform_sleepAssertion_createForMFi4: MFi4 sleep assertion taken", v4, 2u);
  }

  v3 = _getSleepAssertionPluginInstance();
  [v3 createMFi4SleepAssertion];
}

BOOL acc_properties_setProperties(void *context, CFDictionaryRef theDict)
{
  if (theDict && context)
  {
    CFDictionaryApplyFunction(theDict, CFDictionaryApplierFunction_setValueInMutableDictionary, context);
  }

  return context != 0;
}

uint64_t acc_nvmInfo_getPairingStatus(unsigned int *a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 9;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      acc_nvmInfo_getPairingStatus_cold_1(v2, v3);
    }
  }

  else
  {
    v5 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a1;
    v8[0] = 67109120;
    v8[1] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "acc_nvmInfo_getPairingStatus: %d", v8, 8u);
  }

  return *a1;
}

uint64_t _parseIdentificationParams(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (!a1)
  {
    _parseIdentificationParams_cold_37(buf);
    return buf[0];
  }

  v5 = a1;
  ParamID = iAP2MsgGetParamID(a3);
  if (gLogObjects && gNumLogObjects >= 52)
  {
    v7 = *(gLogObjects + 408);
  }

  else
  {
    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v74) = ParamID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "parsing identification paramID 0x%X", buf, 8u);
  }

  if (ParamID != 38)
  {
    return 0;
  }

  v72 = -1;
  if (!a2)
  {
    _parseIdentificationParams_cold_36();
LABEL_204:
    v40 = 10;
LABEL_178:
    iap2_identification_addRejectParam(v5, 38, v40);
    return 0;
  }

  if (!a3)
  {
    _parseIdentificationParams_cold_35();
    goto LABEL_204;
  }

  if (iAP2MsgGetParamID(a3) != 38)
  {
    _parseIdentificationParams_cold_2();
    goto LABEL_204;
  }

  v64 = v5;
  MsgID = iAP2MsgGetMsgID(a2);
  v62 = iAP2MsgGetParamID(a3);
  theSet = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  FirstParam = iAP2MsgGetFirstParam(a2, a3);
  if (FirstParam)
  {
    NextParam = FirstParam;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v69 = 0;
    v70 = 0;
    while (1)
    {
      v16 = iAP2MsgGetParamID(NextParam);
      if (v16 <= 3)
      {
        if (v16 > 1)
        {
          if (v16 == 2)
          {
            DataAsString = iAP2MsgGetDataAsString(NextParam, &v72);
            if (v72)
            {
              value = v14;
              v56 = logObjectForModule_0();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                _parseIdentificationParams_cold_21();
              }

              goto LABEL_199;
            }

            if (v12)
            {
              value = v14;
              if (gLogObjects && gNumLogObjects >= 52)
              {
                v46 = *(gLogObjects + 408);
                v5 = v64;
                v36 = theSet;
              }

              else
              {
                v46 = &_os_log_default;
                v5 = v64;
                v36 = theSet;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  platform_connectionInfo_configStreamGetCategories_cold_2();
                }
              }

              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                _parseIdentificationParams_cold_23();
              }

LABEL_165:
              v40 = 5;
              if (!v10)
              {
                goto LABEL_167;
              }

              goto LABEL_166;
            }

            v12 = CFStringCreateWithCString(kCFAllocatorDefault, DataAsString, 0x8000100u);
          }

          else
          {
            v20 = iAP2MsgGetDataAsString(NextParam, &v72);
            if (v72)
            {
              value = v14;
              v59 = logObjectForModule_0();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                _parseIdentificationParams_cold_18();
              }

              goto LABEL_199;
            }

            if (v13)
            {
              value = v14;
              if (gLogObjects && gNumLogObjects >= 52)
              {
                v44 = *(gLogObjects + 408);
                v5 = v64;
                v36 = theSet;
              }

              else
              {
                v44 = &_os_log_default;
                v5 = v64;
                v36 = theSet;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  platform_connectionInfo_configStreamGetCategories_cold_2();
                }
              }

              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                _parseIdentificationParams_cold_20();
              }

              goto LABEL_165;
            }

            v13 = CFStringCreateWithCString(kCFAllocatorDefault, v20, 0x8000100u);
          }
        }

        else if (v16)
        {
          if (v16 == 1)
          {
            v19 = iAP2MsgGetDataAsString(NextParam, &v72);
            if (v72)
            {
              value = v14;
              v58 = logObjectForModule_0();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                _parseIdentificationParams_cold_24();
              }

              goto LABEL_199;
            }

            if (v11)
            {
              value = v14;
              if (gLogObjects && gNumLogObjects >= 52)
              {
                v47 = *(gLogObjects + 408);
                v5 = v64;
                v36 = theSet;
              }

              else
              {
                v47 = &_os_log_default;
                v5 = v64;
                v36 = theSet;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  platform_connectionInfo_configStreamGetCategories_cold_2();
                }
              }

              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                _parseIdentificationParams_cold_26();
              }

              goto LABEL_165;
            }

            v11 = CFStringCreateWithCString(kCFAllocatorDefault, v19, 0x8000100u);
          }
        }

        else
        {
          v22 = iAP2MsgGetDataAsString(NextParam, &v72);
          if (v72)
          {
            value = v14;
            v54 = logObjectForModule_0();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              _parseIdentificationParams_cold_27();
            }

            goto LABEL_199;
          }

          if (v10)
          {
            value = v14;
            if (gLogObjects && gNumLogObjects >= 52)
            {
              v49 = *(gLogObjects + 408);
              v5 = v64;
              v36 = theSet;
            }

            else
            {
              v49 = &_os_log_default;
              v5 = v64;
              v36 = theSet;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              _parseIdentificationParams_cold_29();
            }

            v40 = 5;
            goto LABEL_166;
          }

          v10 = CFStringCreateWithCString(kCFAllocatorDefault, v22, 0x8000100u);
        }
      }

      else if (v16 <= 5)
      {
        if (v16 == 4)
        {
          valuePtr = iAP2MsgGetDataAsU8(NextParam, &v72);
          if (v72)
          {
            value = v14;
            _parseIdentificationParams_cold_15(v62, MsgID, buf);
            v40 = *buf;
            goto LABEL_200;
          }

          v25 = v10;
          v26 = a2;
          v27 = v15;
          v65 = v25;
          v66 = v11;
          v28 = v12;
          v29 = v13;
          v30 = v14;
          v31 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
          if (CFSetContainsValue(theSet, v31))
          {
            if (gLogObjects && gNumLogObjects >= 52)
            {
              v45 = *(gLogObjects + 408);
              v5 = v64;
            }

            else
            {
              v45 = &_os_log_default;
              v5 = v64;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              _parseIdentificationParams_cold_17();
            }

            value = v30;
            if (v31)
            {
              CFRetain(v31);
            }

            v40 = 5;
            v13 = v29;
            v12 = v28;
            v10 = v65;
            v11 = v66;
            goto LABEL_142;
          }

          CFSetSetValue(theSet, v31);
          if (v31)
          {
            CFRetain(v31);
          }

          v13 = v29;
          v12 = v28;
          v11 = v66;
          v15 = v27;
          a2 = v26;
          v10 = v65;
        }

        else
        {
          v21 = iAP2MsgGetDataAsString(NextParam, &v72);
          if (v72)
          {
            value = v14;
            v53 = logObjectForModule_0();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              _parseIdentificationParams_cold_12();
            }

            goto LABEL_199;
          }

          if (v14)
          {
            value = v14;
            if (gLogObjects && gNumLogObjects >= 52)
            {
              v42 = *(gLogObjects + 408);
              v5 = v64;
              v36 = theSet;
            }

            else
            {
              v42 = &_os_log_default;
              v5 = v64;
              v36 = theSet;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              _parseIdentificationParams_cold_14();
            }

            goto LABEL_165;
          }

          v14 = CFStringCreateWithCString(kCFAllocatorDefault, v21, 0x8000100u);
        }
      }

      else
      {
        switch(v16)
        {
          case 6:
            DataAsBool = iAP2MsgGetDataAsBool(NextParam, &v72);
            if (v72)
            {
              value = v14;
              v55 = logObjectForModule_0();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                _parseIdentificationParams_cold_9();
              }

              goto LABEL_199;
            }

            if (v15)
            {
              value = v14;
              if (gLogObjects && gNumLogObjects >= 52)
              {
                v48 = *(gLogObjects + 408);
                v5 = v64;
                v36 = theSet;
              }

              else
              {
                v48 = &_os_log_default;
                v5 = v64;
                v36 = theSet;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  platform_connectionInfo_configStreamGetCategories_cold_2();
                }
              }

              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                _parseIdentificationParams_cold_11();
              }

              goto LABEL_165;
            }

            if (DataAsBool)
            {
              v15 = kCFBooleanTrue;
            }

            else
            {
              v15 = kCFBooleanFalse;
            }

            break;
          case 7:
            v32 = iAP2MsgGetDataAsBool(NextParam, &v72);
            if (v72)
            {
              value = v14;
              v52 = logObjectForModule_0();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                _parseIdentificationParams_cold_6();
              }

              goto LABEL_199;
            }

            if (v69)
            {
              value = v14;
              if (gLogObjects && gNumLogObjects >= 52)
              {
                v50 = *(gLogObjects + 408);
                v5 = v64;
                v36 = theSet;
              }

              else
              {
                v50 = &_os_log_default;
                v5 = v64;
                v36 = theSet;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  platform_connectionInfo_configStreamGetCategories_cold_2();
                }
              }

              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                _parseIdentificationParams_cold_8();
              }

              goto LABEL_165;
            }

            v33 = kCFBooleanTrue;
            if (!v32)
            {
              v33 = kCFBooleanFalse;
            }

            v69 = v33;
            break;
          case 8:
            v17 = iAP2MsgGetDataAsBool(NextParam, &v72);
            if (v72)
            {
              value = v14;
              v57 = logObjectForModule_0();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                _parseIdentificationParams_cold_3();
              }

              goto LABEL_199;
            }

            if (v70)
            {
              value = v14;
              if (gLogObjects && gNumLogObjects >= 52)
              {
                v43 = *(gLogObjects + 408);
                v5 = v64;
                v36 = theSet;
              }

              else
              {
                v43 = &_os_log_default;
                v5 = v64;
                v36 = theSet;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  platform_connectionInfo_configStreamGetCategories_cold_2();
                }
              }

              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                _parseIdentificationParams_cold_5();
              }

              goto LABEL_165;
            }

            v18 = kCFBooleanTrue;
            if (!v17)
            {
              v18 = kCFBooleanFalse;
            }

            v70 = v18;
            break;
        }
      }

      NextParam = iAP2MsgGetNextParam(a2, a3, NextParam);
      if (!NextParam)
      {
        goto LABEL_63;
      }
    }
  }

  v69 = 0;
  v70 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
LABEL_63:
  value = v14;
  v5 = v64;
  if (gLogObjects && gNumLogObjects >= 52)
  {
    v34 = *(gLogObjects + 408);
    v35 = theSet;
  }

  else
  {
    v34 = &_os_log_default;
    v35 = theSet;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  v36 = v35;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 138414338;
    v74 = v10;
    v75 = 2112;
    v76 = v11;
    v77 = 2112;
    v78 = v12;
    v79 = 2112;
    v80 = v13;
    v81 = 2112;
    v82 = v35;
    v83 = 2112;
    v84 = value;
    v85 = 2112;
    v86 = v15;
    v87 = 2112;
    v88 = v69;
    v89 = 2112;
    v90 = v70;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "VehicleDigitalCarKeyInfo group: identifier: %@, manufacturer: %@, brand: %@, ppid: %@, supportedTechnologies: %@, provisioningTemplate: %@, pairingAvailable: %@, onlineActivated: %@, ownershipPresent: %@", buf, 0x5Cu);
  }

  Count = CFSetGetCount(v35);
  if (v10 && v11 && v12 && v13 && Count >= 1 && value && v15)
  {
    if (iap2_feature_getFeature(v64, 0x1Bu) || (iap2_features_createFeature(v64, 0x1Bu), iap2_feature_getFeature(v64, 0x1Bu)))
    {
      v38 = *v64;
      if (*v64)
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetValue(Mutable, kCFACCProperties_Endpoint_DigitalCarKey_VehicleIdentifier, v10);
        CFDictionarySetValue(Mutable, kCFACCProperties_Endpoint_DigitalCarKey_CCCManufacturer, v11);
        CFDictionarySetValue(Mutable, kCFACCProperties_Endpoint_DigitalCarKey_CCCBrand, v12);
        CFDictionarySetValue(Mutable, kCFACCProperties_Endpoint_DigitalCarKey_ProductPlanUID, v13);
        if (v36)
        {
          CFDictionarySetValue(Mutable, kCFACCProperties_Endpoint_DigitalCarKey_SupportedRadioTechnologies, v36);
        }

        CFDictionarySetValue(Mutable, kCFACCProperties_Endpoint_DigitalCarKey_ProvisioningTemplate, value);
        CFDictionarySetValue(Mutable, kCFACCProperties_Endpoint_DigitalCarKey_OwnerKeyPairingAvailable, v15);
        if (v69)
        {
          CFDictionarySetValue(Mutable, kCFACCProperties_Endpoint_DigitalCarKey_OnlineServicesActivated, v69);
        }

        if (v70)
        {
          CFDictionarySetValue(Mutable, kCFACCProperties_Endpoint_DigitalCarKey_ProofOfOwnershipPresent, v70);
        }

        acc_endpoint_setProperty(v38, kCFACCProperties_Endpoint_DigitalCarKey_Group, Mutable);
        CFRelease(Mutable);
        v40 = 0;
      }

      else
      {
        v60 = logObjectForModule_0();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          _parseIdentificationParams_cold_33(v60);
        }

        v40 = 10;
      }

      goto LABEL_166;
    }

    v61 = logObjectForModule_0();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      _parseIdentificationParams_cold_34(v61);
    }

LABEL_199:
    v40 = 10;
LABEL_200:
    v5 = v64;
LABEL_142:
    v36 = theSet;
    if (v10)
    {
LABEL_166:
      CFRelease(v10);
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 52)
    {
      v41 = *(gLogObjects + 408);
    }

    else
    {
      v41 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      _parseIdentificationParams_cold_32();
    }

    v40 = 2;
    if (v10)
    {
      goto LABEL_166;
    }
  }

LABEL_167:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v40)
  {
    goto LABEL_178;
  }

  return 1;
}

void *logObjectForModule_0()
{
  if (gLogObjects && gNumLogObjects >= 52)
  {
    return *(gLogObjects + 408);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v0;
}

void OUTLINED_FUNCTION_7_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void *logObjectForModule_1(int a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects <= a1;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    return *(gLogObjects + 8 * a1);
  }

  v2 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v2;
}

void __iap2_accAuthentication_certificate_block_invoke(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 0x40000000;
  v1[2] = __iap2_accAuthentication_certificate_block_invoke_2;
  v1[3] = &__block_descriptor_tmp;
  v4 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  iap2_sessionControl_authorizationHook_authentication(v2, v1);
}

void __iap2_accAuthentication_certificate_block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = (a1 + 56);
    if (*(a1 + 56) == 1 && *(a1 + 40) && *(a1 + 48))
    {
      v4 = *(a1 + 32);
      iAP2MsgInit(v4 + 120, 43522, *(v4 + 192), 0xFFFF, 0, 0);
      iAP2MsgAddDataParam(v4 + 120, 0, 0, *(a1 + 40), *(a1 + 48));
      v5 = *(a1 + 32);

      iap2_sessionControl_sendOutgoingMessage(v5, v4 + 120);
    }

    else
    {
      if (gLogObjects)
      {
        v6 = gNumLogObjects < 25;
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
        v7 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      else
      {
        v7 = *(gLogObjects + 192);
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __iap2_accAuthentication_certificate_block_invoke_2_cold_2(v3, a1, v7);
      }

      _authCompleted(*(a1 + 32), 0);
    }
  }
}

void __iap2_accAuthentication_certSerial_block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = (a1 + 40);
  v3 = *(a1 + 40);
  if (v3)
  {
    __iap2_accAuthentication_certSerial_block_invoke_cold_1(v3, v4, v1, v2 + 120);
  }

  else
  {
    iAP2MsgInit(v2 + 120, 43520, *(v2 + 192), 0xFFFF, 0, 0);
    v5 = *v1;

    iap2_sessionControl_sendOutgoingMessage(v5, v2 + 120);
  }
}

uint64_t _startFeatureFromDevice(uint64_t **a1)
{
  v2 = **a1;
  Version = iap2_sessionControl_getVersion(a1);
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 25;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v5 = *(gLogObjects + 192);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting Accessory Authentication...", &v18, 2u);
  }

  _setAuthState(a1, 0);
  kdebug_trace();
  if (Version == 2 || !acc_connection_isAuthenticated(v2, 0))
  {
    LODWORD(v7) = 0;
  }

  else
  {
    AuthInfo = acc_connection_getAuthInfo(v2);
    v7 = AuthInfo;
    if (AuthInfo)
    {
      v8 = acc_authInfo_copyCertCapabilities(AuthInfo);
      v9 = acc_authInfo_copyCertSerialString(v7);
      isCTAAllowed = acc_authInfo_isCTAAllowed(v7);
      if (v8)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      v12 = !v11;
      LODWORD(v7) = v12 & isCTAAllowed;
      if (v8)
      {
        CFRelease(v8);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  if (acc_userDefaults_BOOLForKey(@"AuthenticationOverride"))
  {
    if (gLogObjects && gNumLogObjects >= 14)
    {
      v17 = *(gLogObjects + 104);
    }

    else
    {
      v17 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "_startFeatureFromDevice";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: skip iAP2 authentication due to property", &v18, 0xCu);
    }

    goto LABEL_41;
  }

  if (v7)
  {
LABEL_41:
    _authCompleted(a1, 1);
    return 1;
  }

  Feature = iap2_feature_getFeature(a1, 0);
  *(Feature + 80) = CFAbsoluteTimeGetCurrent();
  if ((*(Feature + 72) & 1) == 0)
  {
    isIdentifiedForIncomingMessageID = iap2_identification_isIdentifiedForIncomingMessageID(a1, 43526);
    if (Version < 2 || (isIdentifiedForIncomingMessageID & 1) == 0)
    {
      v15 = (a1 + 15);
      iAP2MsgInit((a1 + 15), 43520, a1[24], 0xFFFF, 0, 0);
      goto LABEL_31;
    }

    *(Feature + 72) = 1;
  }

  v15 = (a1 + 15);
  iAP2MsgInit((a1 + 15), 43520, a1[24], 0xFFFF, 0, 0);
  iAP2MsgAddVoidParam((a1 + 15), 0, 0);
LABEL_31:
  iap2_sessionControl_sendOutgoingMessage(a1, v15);
  return 1;
}

void ___createFeature_block_invoke(id a1)
{
  gbIsInternalBuild = platform_auth_isInternalBuild(a1);
  gbIsDesenseBuild = platform_auth_isDesenseBuild();
  isDevelopmentHW = platform_auth_isDevelopmentHW();
  gbIsDevelopmentHW = isDevelopmentHW;
  if (isDevelopmentHW && ((gbIsInternalBuild & 1) != 0 || gbIsDesenseBuild == 1))
  {
    _MergedGlobals = CFPreferencesGetAppBooleanValue(@"AuthCertAlwaysCached", @"com.apple.accessoryd", 0) != 0;
  }

  if (gLogObjects)
  {
    v2 = gNumLogObjects < 25;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v3 = *(gLogObjects + 192);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109632;
    v4[1] = gbIsInternalBuild;
    v5 = 1024;
    v6 = gbIsDesenseBuild;
    v7 = 1024;
    v8 = gbIsDevelopmentHW;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "gbIsInternalBuild:%d, gbIsDesenseBuild:%d, gbIsDevelopmentHW:%d", v4, 0x14u);
  }
}

void OUTLINED_FUNCTION_1_3(float a1)
{
  *(v2 - 144) = a1;
  *(v2 - 140) = v1;
  *(v2 - 132) = 1024;
}

__n128 OUTLINED_FUNCTION_3_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  *(v14 - 144) = a11.n128_u32[0];
  *(v14 - 140) = v13;
  *(v14 - 132) = v11;
  *(v14 - 130) = v12;
  return result;
}

BOOL OUTLINED_FUNCTION_18_2(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_2_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void *logObjectForModule_2(int a1)
{
  v1 = gLogObjects;
  v2 = gNumLogObjects;
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= a1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    return *(gLogObjects + 8 * a1);
  }

  v5 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    logObjectForModule_cold_1_0(v1, v2, v4);
  }

  return v5;
}

void OUTLINED_FUNCTION_2_9(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_error_impl(a1, v17, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

void OUTLINED_FUNCTION_7_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_error_impl(a1, v17, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

BOOL OUTLINED_FUNCTION_19_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_10001CCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void *logObjectForModule_3(int a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects <= a1;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    return *(gLogObjects + 8 * a1);
  }

  v2 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    logObjectForModule_cold_1_1();
  }

  return v2;
}

const __CFDictionary *_oobPairing_endpoint_init(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    v3 = *(a1 + 56);
    Value = CFDictionaryGetValue(result, @"SupportedTypes");
    if (Value)
    {
      v5 = Value;
      if (CFDataGetLength(Value) <= 1)
      {
        *(v3 + 16) = 514;
        BytePtr = CFDataGetBytePtr(v5);
        Length = CFDataGetLength(v5);
        memcpy((v3 + 16), BytePtr, Length);
      }
    }

    result = *(a1 + 72);
    if (result)
    {
      result = CFDictionaryGetValue(result, @"Supports2Way");
      if (result)
      {
        valuePtr = 0;
        result = CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
        *(v3 + 18) = valuePtr != 0;
      }
    }
  }

  return result;
}

CFDataRef _oobPairing_copySupportedTypes(const UInt8 *a1, CFIndex capacity)
{
  Copy = 0;
  if (a1)
  {
    v3 = capacity;
    if (capacity)
    {
      v4 = a1;
      Mutable = CFDataCreateMutable(kCFAllocatorDefault, capacity);
      do
      {
        if (*v4 <= 1u)
        {
          CFDataAppendBytes(Mutable, v4, 1);
        }

        ++v4;
        --v3;
      }

      while (v3);
      if (Mutable && CFDataGetLength(Mutable) >= 1)
      {
        Copy = CFDataCreateCopy(kCFAllocatorDefault, Mutable);
      }

      else
      {
        Copy = 0;
      }

      CFRelease(Mutable);
    }
  }

  return Copy;
}

BOOL oobPairing_endpoint_sendOutgoingData(uint64_t a1, unsigned int a2, int a3, const UInt8 *a4, unsigned int a5)
{
  if (a1)
  {
    v10 = *a1;
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 11;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        logObjectForModule_cold_1_1();
      }
    }

    else
    {
      v12 = *(gLogObjects + 80);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v10)
      {
        v13 = v10[2];
      }

      else
      {
        v13 = @"nil";
      }

      *buf = 138413314;
      v25 = v13;
      v26 = 1024;
      v27 = a2;
      v28 = 1024;
      v29 = a3;
      v30 = 1024;
      v31 = a5;
      v32 = 1024;
      v33 = a2 < 2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "oobPairing_endpoint_sendOutgoingData: endpointUUID %@, messageID %d, pairingType %d, dataOutLen %d, startOrStopType %d", buf, 0x24u);
    }

    v15 = a2 < 2 || a4 != 0;
    if (a2 <= 3 && v15 && (a2 > 1 || *(a1 + 16) == a3 || *(a1 + 17) == a3))
    {
      *bytes = a2;
      v16 = a5;
      Mutable = CFDataCreateMutable(kCFAllocatorDefault, a5 + 4);
      CFDataAppendBytes(Mutable, bytes, 2);
      *bytes = a3;
      CFDataAppendBytes(Mutable, bytes, 2);
      if (a4)
      {
        CFDataAppendBytes(Mutable, a4, v16);
      }

      v18 = acc_endpoint_sendOutgoingData(*a1, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v18)
      {
        return 1;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  result = acc_policies_shouldFailAuthOnOOBPairingFailure(v10);
  if (result)
  {
    if (gLogObjects)
    {
      v20 = gNumLogObjects < 11;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v21 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        logObjectForModule_cold_1_1();
      }
    }

    else
    {
      v21 = *(gLogObjects + 80);
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(*a1 + 24);
      *buf = 67109120;
      LODWORD(v25) = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed sendOutgoingData for OOBPairing for transportTpe %{coreacc:ACCEndpoint_TransportType_t}d, fail auth", buf, 8u);
    }

    acc_connection_setAuthStatus(**a1, 2, 1);
    return 0;
  }

  return result;
}

void *logObjectForModule_4()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 15;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    return *(gLogObjects + 112);
  }

  v1 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v1;
}

uint64_t ___invokeFeatureHandler_block_invoke_2(uint64_t a1)
{
  result = (*(a1 + 40))(*(*(a1 + 48) + 56), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___invokeFeatureHandler_block_invoke_3(uint64_t a1)
{
  result = (*(a1 + 40))(*(*(a1 + 48) + 56), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t mfi4Auth_protocol_messageHandler_receiveIncomingData(uint64_t a1, const void *a2)
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v4 = *(gLogObjects + 440);
  }

  else
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "mfi4Auth_protocol_messageHandler_receiveIncomingData", buf, 2u);
  }

  v33 = 0;
  v32 = 0;
  if (!a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v6 = *(gLogObjects + 440);
    }

    else
    {
      v6 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_13();
    }

    goto LABEL_73;
  }

  if (*(a1 + 30) == 1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v5 = *(gLogObjects + 440);
    }

    else
    {
      v5 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_11();
    }

LABEL_73:
    v16 = 0;
    goto LABEL_74;
  }

  if (!a2)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v11 = *(gLogObjects + 440);
    }

    else
    {
      v11 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_9();
    }

    goto LABEL_73;
  }

  CFRetain(a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[0] = v7;
  v30[1] = v7;
  v30[2] = v7;
  v30[3] = v7;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *(a1 + 200);
  v9 = mfi4Auth_util_parseMessage(*(a1 + 8), v30, a2, *(a1 + 200));
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v12 = *(gLogObjects + 440);
    }

    else
    {
      v12 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v35) = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "mfi4Auth_protocol_messageHandler_receiveIncomingData: Found no message starting with: %x", buf, 8u);
    }

    v13 = mfi4Auth_util_parseMessage(*(a1 + 8), v30, a2, 0);
    if (!v13)
    {
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v18 = *(gLogObjects + 440);
      }

      else
      {
        v18 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_7();
      }

      goto LABEL_73;
    }

    v10 = v13;
    v8 = 0;
  }

  if (mfi4Auth_util_packetLoggingEncryptedData())
  {
    mfi4Auth_util_packetLogging(*a1, v8, v10, 1, 1);
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v14 = *(gLogObjects + 440);
  }

  else
  {
    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "mfi4Auth_protocol_messageHandler_receiveIncomingData: Found message", buf, 2u);
  }

  if ((mfi4Auth_protocol_decryptIncomingData(a1) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v17 = *(gLogObjects + 440);
    }

    else
    {
      v17 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_5();
    }

    goto LABEL_73;
  }

  v15 = 1;
  mfi4Auth_util_packetLogging(*a1, v8, v10, 1, 0);
  if ((mfi4Auth_protocol_processIncomingMessage(a1, v8, v10, &v33) & 1) == 0)
  {
    v15 = mfi4Auth_protocol_processIncomingMessageExtra(a1, v8, v10, &v33, &v32);
  }

  if (v15 && v33)
  {
    v16 = 1;
  }

  else
  {
    v16 = mfi4Auth_protocol_processIncomingMessageRelay(a1, v8, v10, &v33, &v32);
  }

LABEL_74:
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v19 = *(gLogObjects + 440);
  }

  else
  {
    v19 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v35) = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "receiveIncomingData: processIncomingData returned:%d", buf, 8u);
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v20 = *(gLogObjects + 440);
  }

  else
  {
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v35) = v33 != 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "receiveIncomingData: outMessage:(%d)", buf, 8u);
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v21 = *(gLogObjects + 440);
  }

  else
  {
    v21 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v35) = v32;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "receiveIncomingData: keepOpen:%d", buf, 8u);
  }

  if (v33)
  {
    v22 = v16;
  }

  else
  {
    v22 = 0;
  }

  if (v22 == 1)
  {
    EndpointWithUUID = acc_manager_getEndpointWithUUID(*a1);
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v24 = *(gLogObjects + 440);
    }

    else
    {
      v24 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v35 = EndpointWithUUID;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "receiveIncomingData: pEndpoint:%p", buf, 0xCu);
    }

    if (EndpointWithUUID)
    {
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v25 = *(gLogObjects + 440);
      }

      else
      {
        v25 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = *(EndpointWithUUID + 7);
        *buf = 67109120;
        LODWORD(v35) = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "receiveIncomingData: protocol type:%d", buf, 8u);
      }

      v27 = *(EndpointWithUUID + 7);
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v28 = *(gLogObjects + 440);
      }

      else
      {
        v28 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v35 = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "receiveIncomingData: pProtocolEndpoint:%p", buf, 0xCu);
      }

      mfi4Auth_endpoint_sendOutgoingData(v27, v33);
    }

    if (v33)
    {
      free(v33);
      v33 = 0;
    }
  }

  else
  {
    mfi4Auth_protocol_handleAuthSessionClose(a1, v32);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return v16;
}

uint64_t mfi4Auth_protocol_messageHandler_setEndpointSecureTunnelDataReceiveTypeHandler(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v4 = *(gLogObjects + 440);
    }

    else
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_setEndpointSecureTunnelDataReceiveTypeHandler_cold_6();
    }

    return 0;
  }

  if (!a3)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v5 = *(gLogObjects + 440);
    }

    else
    {
      v5 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_setEndpointSecureTunnelDataReceiveTypeHandler_cold_4();
    }

    return 0;
  }

  if (a2 >= 3)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v6 = *(gLogObjects + 440);
    }

    else
    {
      v6 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_setEndpointSecureTunnelDataReceiveTypeHandler_cold_2();
    }

    return 0;
  }

  return mfi4Auth_protocol_setSecureTunnelDataReceiveTypeHandler(a1, a2, a3);
}

void mfi4Auth_protocol_messageHandler_handleOutgoingSecureTunnelDataForClient(uint64_t a1, unsigned int a2, const __CFData *a3)
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v6 = *(gLogObjects + 440);
  }

  else
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315906;
    v13 = "mfi4Auth_protocol_messageHandler_handleOutgoingSecureTunnelDataForClient";
    v14 = 1024;
    v15 = a1 != 0;
    v16 = 1024;
    v17 = a2;
    v18 = 2112;
    v19 = a3;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s: authSession(%d), secureTunnelType %d, dataOut %@", &v12, 0x22u);
    if (a1)
    {
LABEL_8:
      if (*(a1 + 30) == 1)
      {
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v7 = *(gLogObjects + 440);
        }

        else
        {
          v7 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
          }
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_handleOutgoingSecureTunnelDataForClient_cold_9();
        }
      }

      else if (a3)
      {
        if (a2 >= 3)
        {
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v9 = *(gLogObjects + 440);
          }

          else
          {
            v9 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
            }
          }

          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_messageHandler_setEndpointSecureTunnelDataReceiveTypeHandler_cold_2();
          }
        }

        else if ((a2 - 1) > 1u)
        {
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v11 = *(gLogObjects + 440);
          }

          else
          {
            v11 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
            }
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_messageHandler_handleOutgoingSecureTunnelDataForClient_cold_5();
          }
        }

        else
        {
          mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient(a1, a2, a3);
        }
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v8 = *(gLogObjects + 440);
        }

        else
        {
          v8 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
          }
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_setEndpointSecureTunnelDataReceiveTypeHandler_cold_4();
        }
      }

      return;
    }
  }

  else if (a1)
  {
    goto LABEL_8;
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v10 = *(gLogObjects + 440);
  }

  else
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    mfi4Auth_protocol_messageHandler_handleOutgoingSecureTunnelDataForClient_cold_11();
  }
}

void *logObjectForModule_5()
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    return *(gLogObjects + 440);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v0;
}

void __mfi4Auth_endpoint_setAccessoryUserName_block_invoke(uint64_t a1)
{
  if (_mfi4Auth_endpoint_waitSessionClosed(*(a1 + 48)))
  {
    if (acc_endpoint_getTransportType(**(a1 + 48)) == 13)
    {
      acc_endpoint_setProperty(**(a1 + 48), kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanTrue);
    }

    mfi4Auth_protocol_convertUserAccessoryInfoToAction(*(*(a1 + 48) + 8), *(a1 + 56));
    *(*(*(a1 + 48) + 8) + 32) = 8;
    *(*(*(a1 + 48) + 8) + 64) = _Block_copy(*(a1 + 32));
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    __mfi4Auth_endpoint_setAccessoryUserName_block_invoke_cold_1(a1);
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCocoa, -1, 0);
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t _mfi4Auth_endpoint_waitSessionClosed(uint64_t *a1)
{
  if (acc_endpoint_getTransportType(*a1) != 13)
  {
    return 1;
  }

  v2 = acc_endpoint_copyProperty(*a1);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    while (1)
    {
      v5 = CFGetTypeID(v3);
      if (v5 != CFBooleanGetTypeID())
      {
        _mfi4Auth_endpoint_waitSessionClosed_cold_1(buf);
        return buf[0];
      }

      if (v3 != kCFBooleanFalse)
      {
        _mfi4Auth_endpoint_waitSessionClosed_cold_2(buf);
        return buf[0];
      }

      v6 = acc_endpoint_copyProperty(*a1);
      if (!v6)
      {
        _mfi4Auth_endpoint_waitSessionClosed_cold_4(buf);
        return buf[0];
      }

      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 != CFBooleanGetTypeID())
      {
        break;
      }

      result = 1;
      if (v7 != kCFBooleanTrue || v4 > 4)
      {
        return result;
      }

      v10 = gLogObjects;
      v11 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v12 = *(gLogObjects + 440);
      }

      else
      {
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v14 = v10;
          v15 = 1024;
          v16 = v11;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v12 = &_os_log_default;
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v14) = 20;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "waitSessionClosed: wait %d ms", buf, 8u);
      }

      usleep(0x4E20u);
      ++v4;
      v3 = acc_endpoint_copyProperty(*a1);
      if (!v3)
      {
        goto LABEL_21;
      }
    }

    _mfi4Auth_endpoint_waitSessionClosed_cold_3(buf);
  }

  else
  {
LABEL_21:
    _mfi4Auth_endpoint_waitSessionClosed_cold_5(buf);
  }

  return buf[0];
}

void __mfi4Auth_endpoint_getAccessoryUserName_block_invoke(uint64_t a1)
{
  if (_mfi4Auth_endpoint_waitSessionClosed(*(a1 + 48)))
  {
    if (acc_endpoint_getTransportType(**(a1 + 48)) == 13)
    {
      acc_endpoint_setProperty(**(a1 + 48), kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanTrue);
    }

    *(*(*(a1 + 48) + 8) + 36) = 9;
    v2 = malloc_type_malloc(0x12uLL, 0x1000040BDFB0063uLL);
    v3 = 0;
    *(*(*(a1 + 48) + 8) + 40) = v2;
    v4 = *(*(a1 + 48) + 8);
    v5 = xmmword_1001C33D0;
    v6 = (*(v4 + 40) + 2);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), v5)).u8[0])
      {
        *(v6 - 1) = v3 + 21250;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v5)).i32[1])
      {
        *v6 = v3 + 21251;
      }

      v3 += 2;
      v5 = vaddq_s64(v5, v7);
      v6 += 2;
    }

    while (v3 != 10);
    *(v4 + 32) = 9;
    *(*(*(a1 + 48) + 8) + 64) = _Block_copy(*(a1 + 32));
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    __mfi4Auth_endpoint_getAccessoryUserName_block_invoke_cold_1(a1);
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCocoa, -1, 0);
    (*(*(a1 + 32) + 16))();
  }
}

void __mfi4Auth_endpoint_provisionPairing_block_invoke(uint64_t a1)
{
  if (_mfi4Auth_endpoint_waitSessionClosed(*(a1 + 48)))
  {
    if (acc_endpoint_getTransportType(**(a1 + 48)) == 13)
    {
      acc_endpoint_setProperty(**(a1 + 48), kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanTrue);
    }

    *(*(*(a1 + 48) + 8) + 32) = 4;
    *(*(*(a1 + 48) + 8) + 64) = _Block_copy(*(a1 + 32));
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    __mfi4Auth_endpoint_provisionPairing_block_invoke_cold_1(a1);
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCocoa, -1, 0);
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t mfi4Auth_endpoint_erasePairing(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v4 = *(gLogObjects + 440);
    }

    else
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_erasePairing", buf, 2u);
    }

    v5 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __mfi4Auth_endpoint_erasePairing_block_invoke;
    block[3] = &unk_100226030;
    block[5] = &v10;
    block[6] = a1;
    block[4] = a2;
    dispatch_sync(v5, block);
  }

  else
  {
    mfi4Auth_endpoint_erasePairing_cold_2();
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __mfi4Auth_endpoint_erasePairing_block_invoke(uint64_t a1)
{
  if (_mfi4Auth_endpoint_waitSessionClosed(*(a1 + 48)))
  {
    if (acc_endpoint_getTransportType(**(a1 + 48)) == 13)
    {
      acc_endpoint_setProperty(**(a1 + 48), kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanTrue);
    }

    *(*(*(a1 + 48) + 8) + 32) = 5;
    *(*(*(a1 + 48) + 8) + 64) = _Block_copy(*(a1 + 32));
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    __mfi4Auth_endpoint_erasePairing_block_invoke_cold_1(a1);
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCocoa, -1, 0);
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t mfi4Auth_endpoint_setPublicNvmKeyValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(a1 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = __mfi4Auth_endpoint_setPublicNvmKeyValues_block_invoke;
  v6[3] = &unk_100226058;
  v6[6] = a1;
  v6[7] = a2;
  v6[4] = a3;
  v6[5] = &v7;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __mfi4Auth_endpoint_setPublicNvmKeyValues_block_invoke(uint64_t a1)
{
  result = _mfi4Auth_endpoint_setNvmKeyValues(*(a1 + 48), *(a1 + 56), *(a1 + 32), 1);
  *(*(*(a1 + 40) + 8) + 24) = result;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCocoa, -1, 0);
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

uint64_t mfi4Auth_endpoint_getPublicNvmKeyValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (a1)
  {
    v3 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = __mfi4Auth_endpoint_getPublicNvmKeyValues_block_invoke;
    v6[3] = &unk_100226080;
    v6[6] = a1;
    v6[7] = a2;
    v6[4] = a3;
    v6[5] = &v7;
    dispatch_sync(v3, v6);
  }

  else
  {
    mfi4Auth_endpoint_getPublicNvmKeyValues_cold_1(a3);
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __mfi4Auth_endpoint_getPublicNvmKeyValues_block_invoke(uint64_t a1)
{
  if (_mfi4Auth_endpoint_waitSessionClosed(*(a1 + 48)))
  {
    Count = CFArrayGetCount(*(a1 + 56));
    v3 = Count;
    v4 = malloc_type_calloc(Count, 2uLL, 0x1000040BDFB0063uLL);
    if (v4)
    {
      v5 = v4;
      if (Count)
      {
        v13 = Count;
        v6 = 0;
        while (1)
        {
          valuePtr = -21846;
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v6);
          CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, &valuePtr);
          v8 = gLogObjects;
          v9 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v10 = *(gLogObjects + 440);
          }

          else
          {
            v10 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v16 = v8;
              *&v16[8] = 1024;
              v17[0] = v9;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              v10 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            *v16 = v6;
            *&v16[4] = 1024;
            *&v16[6] = v13;
            LOWORD(v17[0]) = 1024;
            *(v17 + 2) = valuePtr;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_getPublicNvmKeyValues: [%d / %d] 0x%x", buf, 0x14u);
          }

          if (valuePtr - 21249 > 0x4E)
          {
            break;
          }

          v5[v6++] = valuePtr;
          if (v3 == v6)
          {
            v11 = v13;
            goto LABEL_16;
          }
        }

        *(*(*(a1 + 40) + 8) + 24) = 0;
        free(v5);
      }

      else
      {
        v11 = 0;
LABEL_16:
        v12 = *(*(a1 + 48) + 8);
        *(v12 + 32) = 7;
        *(v12 + 36) = v11;
        *(v12 + 40) = v5;
        *(*(*(a1 + 48) + 8) + 64) = _Block_copy(*(a1 + 32));
        if (acc_endpoint_getTransportType(**(a1 + 48)) == 13)
        {
          acc_endpoint_setProperty(**(a1 + 48), kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanTrue);
        }

        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else
  {
    __mfi4Auth_endpoint_getPublicNvmKeyValues_block_invoke_cold_1(a1);
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCocoa, -1, 0);
    (*(*(a1 + 32) + 16))();
  }
}

void __mfi4Auth_endpoint_getPrivateNvmKeyValues_block_invoke(uint64_t a1)
{
  if (_mfi4Auth_endpoint_waitSessionClosed(*(a1 + 48)))
  {
    Count = CFArrayGetCount(*(a1 + 56));
    v3 = malloc_type_calloc(Count, 2uLL, 0x1000040BDFB0063uLL);
    if (!v3)
    {
LABEL_15:
      *(*(*(a1 + 40) + 8) + 24) = 0;
      goto LABEL_12;
    }

    v4 = v3;
    if (Count)
    {
      v5 = 0;
      while (1)
      {
        valuePtr = -21846;
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v5);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, &valuePtr);
        if (valuePtr - 21328 > 0xAF)
        {
          goto LABEL_15;
        }

        v4[v5++] = valuePtr;
        if (Count == v5)
        {
          v7 = Count;
          goto LABEL_9;
        }
      }
    }

    v7 = 0;
LABEL_9:
    v8 = *(*(a1 + 48) + 8);
    *(v8 + 32) = 7;
    *(v8 + 36) = v7;
    *(v8 + 40) = v4;
    *(*(*(a1 + 48) + 8) + 64) = _Block_copy(*(a1 + 32));
    if (acc_endpoint_getTransportType(**(a1 + 48)) == 13)
    {
      acc_endpoint_setProperty(**(a1 + 48), kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanTrue);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    __mfi4Auth_endpoint_getPrivateNvmKeyValues_block_invoke_cold_1(a1);
  }

LABEL_12:
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCocoa, -1, 0);
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t mfi4Auth_endpoint_setPrivateNvmKeyValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(a1 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = __mfi4Auth_endpoint_setPrivateNvmKeyValues_block_invoke;
  v6[3] = &unk_1002260D0;
  v6[6] = a1;
  v6[7] = a2;
  v6[4] = a3;
  v6[5] = &v7;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t mfi4Auth_endpoint_beginVendorKeyErase(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v4 = *(gLogObjects + 440);
    }

    else
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_beginVendorKeyErase", buf, 2u);
    }

    v5 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __mfi4Auth_endpoint_beginVendorKeyErase_block_invoke;
    block[3] = &unk_1002260F8;
    block[5] = &v10;
    block[6] = a1;
    block[4] = a2;
    dispatch_sync(v5, block);
  }

  else
  {
    mfi4Auth_endpoint_beginVendorKeyErase_cold_2();
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __mfi4Auth_endpoint_beginVendorKeyErase_block_invoke(uint64_t a1)
{
  if (_mfi4Auth_endpoint_waitSessionClosed(*(a1 + 48)))
  {
    if (acc_endpoint_getTransportType(**(a1 + 48)) == 13)
    {
      acc_endpoint_setProperty(**(a1 + 48), kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanTrue);
    }

    *(*(*(a1 + 48) + 8) + 32) = 10;
    *(*(*(a1 + 48) + 8) + 64) = _Block_copy(*(a1 + 32));
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    __mfi4Auth_endpoint_beginVendorKeyErase_block_invoke_cold_1(a1);
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCocoa, -1, 0);
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t mfi4Auth_endpoint_continueVendorKeyErase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v9 = *(gLogObjects + 440);
    }

    else
    {
      v9 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_continueVendorKeyErase", buf, 2u);
    }

    v10 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __mfi4Auth_endpoint_continueVendorKeyErase_block_invoke;
    block[3] = &unk_100226120;
    block[4] = a5;
    block[5] = &v15;
    block[6] = a1;
    block[7] = a2;
    block[8] = a3;
    dispatch_sync(v10, block);
  }

  else
  {
    mfi4Auth_endpoint_continueVendorKeyErase_cold_2();
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v11;
}

void __mfi4Auth_endpoint_continueVendorKeyErase_block_invoke(uint64_t a1)
{
  if (acc_endpoint_getTransportType(**(a1 + 48)) != 13)
  {
    goto LABEL_6;
  }

  v2 = acc_endpoint_copyProperty(**(a1 + 48));
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFBooleanGetTypeID())
    {
      if (v3 == kCFBooleanTrue)
      {
        dispatch_source_set_timer(*(*(a1 + 48) + 32), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
LABEL_6:
        *(*(*(a1 + 48) + 8) + 32) = 11;
        *(*(*(a1 + 48) + 8) + 64) = _Block_copy(*(a1 + 32));
        v5 = *(a1 + 56);
        v6 = *(a1 + 64);
        *(*(*(a1 + 40) + 8) + 24) = _mfi4Auth_endpoint_requestNvmErasePublicKey(*(a1 + 48));
        goto LABEL_7;
      }

      __mfi4Auth_endpoint_continueVendorKeyErase_block_invoke_cold_2(a1);
    }

    else
    {
      __mfi4Auth_endpoint_continueVendorKeyErase_block_invoke_cold_1(a1);
    }
  }

  else
  {
    __mfi4Auth_endpoint_continueVendorKeyErase_block_invoke_cold_3(a1);
  }

LABEL_7:
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCocoa, -1, 0);
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t _mfi4Auth_endpoint_requestNvmErasePublicKey(uint64_t *a1)
{
  v1 = a1;
  v20 = 0;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v2 = *(gLogObjects + 440);
    }

    else
    {
      v2 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "endpoint_requestNvmErasePublicKey", buf, 2u);
    }

    v3 = *v1;
    if (*v1)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        CFRetain(*(v3 + 16));
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v5 = *(gLogObjects + 440);
        }

        else
        {
          v5 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "endpoint_requestNvmErasePublicKey: block", v18, 2u);
        }

        mfi4Auth_protocol_requestNvmErasePublicKey(*(v1 + 8));
        if (v9)
        {
          v15 = logObjectForModule_5();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            _mfi4Auth_endpoint_requestNvmErasePublicKey_cold_3(v15, v16, v17);
          }
        }

        else
        {
          EndpointWithUUID = acc_manager_getEndpointWithUUID(v4);
          if (EndpointWithUUID && EndpointWithUUID[7] == 14 && *(EndpointWithUUID + 7))
          {
            mfi4Auth_endpoint_sendOutgoingData(v1, v20);
            v1 = 1;
            goto LABEL_27;
          }

          v12 = logObjectForModule_5();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            _mfi4Auth_endpoint_requestNvmErasePublicKey_cold_4(v12, v13, v14);
          }
        }

        v1 = 0;
        goto LABEL_27;
      }
    }

    v6 = logObjectForModule_5();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _mfi4Auth_endpoint_requestNvmErasePublicKey_cold_5(v6, v7, v8);
    }

    v1 = 0;
  }

  else if (_mfi4Auth_endpoint_requestNvmErasePublicKey_cold_6())
  {
    return v1;
  }

  v4 = 0;
LABEL_27:
  if (v20)
  {
    free(v20);
    v20 = 0;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v1;
}

uint64_t mfi4Auth_endpoint_cancelVendorKeyErase(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v4 = *(gLogObjects + 440);
    }

    else
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_cancelVendorKeyErase", buf, 2u);
    }

    v5 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __mfi4Auth_endpoint_cancelVendorKeyErase_block_invoke;
    block[3] = &unk_100226148;
    block[5] = &v10;
    block[6] = a1;
    block[4] = a2;
    dispatch_sync(v5, block);
  }

  else
  {
    mfi4Auth_endpoint_cancelVendorKeyErase_cold_2();
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t mfi4Auth_endpoint_beginUserKeyErase(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v4 = *(gLogObjects + 440);
    }

    else
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_beginUserKeyErase", buf, 2u);
    }

    v5 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __mfi4Auth_endpoint_beginUserKeyErase_block_invoke;
    block[3] = &unk_100226170;
    block[5] = &v10;
    block[6] = a1;
    block[4] = a2;
    dispatch_sync(v5, block);
  }

  else
  {
    mfi4Auth_endpoint_beginUserKeyErase_cold_2();
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __mfi4Auth_endpoint_beginUserKeyErase_block_invoke(uint64_t a1)
{
  if (_mfi4Auth_endpoint_waitSessionClosed(*(a1 + 48)))
  {
    if (acc_endpoint_getTransportType(**(a1 + 48)) == 13)
    {
      acc_endpoint_setProperty(**(a1 + 48), kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanTrue);
    }

    *(*(*(a1 + 48) + 8) + 32) = 12;
    *(*(*(a1 + 48) + 8) + 64) = _Block_copy(*(a1 + 32));
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    __mfi4Auth_endpoint_beginUserKeyErase_block_invoke_cold_1(a1);
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCocoa, -1, 0);
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t mfi4Auth_endpoint_continueUserKeyErase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v9 = *(gLogObjects + 440);
    }

    else
    {
      v9 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_continueUserKeyErase", buf, 2u);
    }

    v10 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __mfi4Auth_endpoint_continueUserKeyErase_block_invoke;
    block[3] = &unk_100226198;
    block[4] = a5;
    block[5] = &v15;
    block[6] = a1;
    block[7] = a2;
    block[8] = a3;
    dispatch_sync(v10, block);
  }

  else
  {
    mfi4Auth_endpoint_continueUserKeyErase_cold_2();
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v11;
}

void __mfi4Auth_endpoint_continueUserKeyErase_block_invoke(uint64_t a1)
{
  if (acc_endpoint_getTransportType(**(a1 + 48)) != 13)
  {
    goto LABEL_6;
  }

  v2 = acc_endpoint_copyProperty(**(a1 + 48));
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFBooleanGetTypeID())
    {
      if (v3 == kCFBooleanTrue)
      {
        dispatch_source_set_timer(*(*(a1 + 48) + 32), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
LABEL_6:
        *(*(*(a1 + 48) + 8) + 32) = 13;
        *(*(*(a1 + 48) + 8) + 64) = _Block_copy(*(a1 + 32));
        v5 = *(a1 + 56);
        v6 = *(a1 + 64);
        *(*(*(a1 + 40) + 8) + 24) = _mfi4Auth_endpoint_requestNvmErasePublicKey(*(a1 + 48));
        goto LABEL_7;
      }

      __mfi4Auth_endpoint_continueUserKeyErase_block_invoke_cold_2(a1);
    }

    else
    {
      __mfi4Auth_endpoint_continueUserKeyErase_block_invoke_cold_1(a1);
    }
  }

  else
  {
    __mfi4Auth_endpoint_continueUserKeyErase_block_invoke_cold_3(a1);
  }

LABEL_7:
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainCocoa, -1, 0);
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t mfi4Auth_endpoint_cancelUserKeyErase(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v4 = *(gLogObjects + 440);
    }

    else
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_cancelUserKeyErase", buf, 2u);
    }

    v5 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __mfi4Auth_endpoint_cancelUserKeyErase_block_invoke;
    block[3] = &unk_1002261C0;
    block[5] = &v10;
    block[6] = a1;
    block[4] = a2;
    dispatch_sync(v5, block);
  }

  else
  {
    mfi4Auth_endpoint_cancelUserKeyErase_cold_2();
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t mfi4Auth_endpoint_copyUserPrivateKey(uint64_t a1, uint64_t a2)
{
  error[0] = 0;
  v4 = *(a1 + 8);
  if (!v4)
  {
    mfi4Auth_endpoint_copyUserPrivateKey_cold_3();
    v7 = 0;
    v6 = 0;
LABEL_10:
    v8 = 0;
    v9 = error[1];
    goto LABEL_5;
  }

  v5 = mfi4Auth_protocol_nvm_copyUserPublicKeyForSerialNumber(*(*(v4 + 712) + 80));
  v6 = v5;
  if (!v5)
  {
    mfi4Auth_endpoint_copyUserPrivateKey_cold_2();
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v7 = SecKeyCopyExternalRepresentation(v5, error);
  if (!v7)
  {
    mfi4Auth_endpoint_copyUserPrivateKey_cold_1();
    goto LABEL_9;
  }

  v8 = 1;
  v9 = error[0];
LABEL_5:
  v10 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mfi4Auth_endpoint_copyUserPrivateKey_block_invoke;
  block[3] = &unk_1002261E8;
  v13 = v8;
  block[6] = v7;
  block[7] = v9;
  block[4] = a2;
  block[5] = v6;
  dispatch_async(v10, block);
  return v8;
}

uint64_t __mfi4Auth_endpoint_copyUserPrivateKey_block_invoke(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v2 = *(gLogObjects + 440);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 40) != 0;
    v5 = *(a1 + 48) != 0;
    v6 = *(a1 + 56) != 0;
    v10[0] = 67109888;
    v10[1] = v3;
    v11 = 1024;
    v12 = v4;
    v13 = 1024;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "copyUserPrivateKey: success:%d, key:%d, keyData:%d error:%d", v10, 0x1Au);
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  return (*(*(a1 + 32) + 16))();
}

void OUTLINED_FUNCTION_1_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

void *OUTLINED_FUNCTION_3_9(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 0;

  return logObjectForModule_5();
}

void OUTLINED_FUNCTION_10_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void OUTLINED_FUNCTION_12_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 8u);
}

uint64_t OUTLINED_FUNCTION_17_5()
{
  result = *(v0 + 32);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_1(uint64_t result)
{
  *v2 = result;
  *v1 = result;
  return result;
}

void OUTLINED_FUNCTION_20_0(float a1)
{
  *(v3 - 80) = a1;
  *(v3 - 76) = v1;
  *(v3 - 68) = 1024;
  *(v3 - 66) = v2;
}

void OUTLINED_FUNCTION_26_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char block, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, char a17)
{
  a15 = &a17;
  a16 = v18;
  a14 = v17;

  dispatch_sync(a1, &block);
}

id acc_userDefaults_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

id acc_userDefaults_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 integerForKey:a1];

  return v3;
}

id acc_userDefaultsIapd_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 integerForKey:a1];

  return v3;
}

BOOL iAP2PacketCheckDetect(uint64_t a1)
{
  v1 = *(a1 + 64);
  v3 = *v1;
  v2 = v1 + 1;
  v4 = (v3 - 255) < 0xFFFFFF02;
  if ((v3 - 255) >= 0xFFFFFF02)
  {
    v2 = *(a1 + 64);
  }

  if (*v2 == 85 && v2[1] == 2 && (v5 = *(a1 + 64) + v4, !*(v5 + 2)) && v2[3] == 238)
  {
    return *(v5 + 4) == 16;
  }

  else
  {
    return 0;
  }
}

BOOL iAP2PacketCheckDetectNACK(uint64_t a1)
{
  v1 = *(a1 + 64);
  v3 = v1 + 1;
  v2 = *v1;
  if (v2 != 255)
  {
    v3 = *(a1 + 64);
  }

  if (*v3 != 85)
  {
    return 0;
  }

  v4 = 1;
  if (v2 == 255)
  {
    v4 = 2;
  }

  if (v1[v4] != 4)
  {
    return 0;
  }

  v5 = 2;
  if (v2 == 255)
  {
    v5 = 3;
  }

  if (v1[v5])
  {
    return 0;
  }

  v6 = 3;
  if (v2 == 255)
  {
    v6 = 4;
  }

  if (v1[v6] != 2)
  {
    return 0;
  }

  v7 = 4;
  if (v2 == 255)
  {
    v7 = 5;
  }

  if (v1[v7] != 4)
  {
    return 0;
  }

  v8 = 5;
  if (v2 == 255)
  {
    v8 = 6;
  }

  if (v1[v8] != 238)
  {
    return 0;
  }

  v9 = v2 == 255;
  v10 = 6;
  if (v9)
  {
    v10 = 7;
  }

  return v1[v10] == 8;
}

BOOL iAP2PacketCheckRequestIdentify(uint64_t a1)
{
  v1 = *(a1 + 64);
  v3 = v1 + 1;
  v2 = *v1;
  if (v2 != 255)
  {
    v3 = *(a1 + 64);
  }

  if (*v3 != 85)
  {
    return 0;
  }

  v4 = 1;
  if (v2 == 255)
  {
    v4 = 2;
  }

  if (v1[v4] != 2)
  {
    return 0;
  }

  v5 = 2;
  if (v2 == 255)
  {
    v5 = 3;
  }

  if (v1[v5])
  {
    return 0;
  }

  v6 = 3;
  if (v2 == 255)
  {
    v6 = 4;
  }

  if (v1[v6])
  {
    return 0;
  }

  v8 = v2 == 255;
  v9 = 4;
  if (v8)
  {
    v9 = 5;
  }

  return v1[v9] == 254;
}

uint64_t iAP2PacketCreateSYNPacket(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  memset(v29, 170, sizeof(v29));
  v9 = *(v3 + 1);
  v10 = *(v3 + 4);
  v11 = *(v3 + 6);
  v12 = *(v3 + 8);
  v13 = *(v3 + 2);
  v14 = *(v3 + 24);
  v15 = *(v3 + 10);
  v27[0] = *v3;
  v27[1] = v9;
  v27[2] = HIBYTE(v10);
  v27[3] = v10;
  v27[4] = HIBYTE(v11);
  v27[5] = v11;
  v27[6] = HIBYTE(v12);
  v27[7] = v12;
  v28 = v13;
  if (!v27[0])
  {
    v16 = 0;
LABEL_5:
    v17 = 10;
    if (!v15)
    {
      goto LABEL_6;
    }

LABEL_12:
    if (v15 >= 5)
    {
      v21 = 5;
    }

    else
    {
      v21 = v15;
    }

    v22 = 3 * v21;
    v23 = (v3 + 33);
    v24 = &v27[v16 + 2];
    do
    {
      *(v24 - 2) = *(v23 - 3);
      if (*v23)
      {
        v25 = 0x80;
      }

      else
      {
        v25 = 0;
      }

      *(v24 - 1) = v25 | *(v23 - 2);
      *v24 = *(v23 - 1);
      v24 += 3;
      v23 += 4;
      --v21;
    }

    while (v21);
    v17 += v22;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_21:
    v18 = 0;
    v19 = 0x80;
    return iAP2PacketCreate(v8, v19, v7, v18, v27, v17, 0, 1);
  }

  if (v27[0] == 1)
  {
    v16 = 10;
    goto LABEL_5;
  }

  v29[0] = v14;
  if (v14)
  {
    memcpy(&v29[1], (v3 + 25), v14);
    v20 = v14 + 11;
  }

  else
  {
    v20 = 11;
  }

  v27[v20] = v15;
  v17 = v20 + 1;
  v16 = (v14 + 12);
  if (v15)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_7:
  v18 = *v5;
  v19 = -64;
  return iAP2PacketCreate(v8, v19, v7, v18, v27, v17, 0, 1);
}

BOOL iAP2PacketParseSYNData(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  if (a2 >= 0xA)
  {
    LODWORD(v3) = *a1;
    *a3 = v3;
    *(a3 + 1) = a1[1];
    v4 = a1[2];
    *(a3 + 4) = v4 << 8;
    *(a3 + 4) = a1[3] | (v4 << 8);
    v5 = a1[4];
    *(a3 + 6) = v5 << 8;
    *(a3 + 6) = a1[5] | (v5 << 8);
    v6 = a1[6];
    *(a3 + 8) = v6 << 8;
    *(a3 + 8) = a1[7] | (v6 << 8);
    *(a3 + 2) = a1[8];
    *(a3 + 3) = a1[9];
    if (v3)
    {
      if (v3 == 1)
      {
        LODWORD(v3) = (a2 - 10) / 3;
        *(a3 + 24) = 0;
        v7 = 10;
      }

      else
      {
        v8 = a1[10];
        if (v8 >= 5)
        {
          v9 = 5;
        }

        else
        {
          v9 = a1[10];
        }

        *(a3 + 24) = v9;
        if (v8)
        {
          v10 = (a1 + 11);
          v11 = (a3 + 25);
          v12 = v9;
          do
          {
            v13 = *v10++;
            *v11++ = v13;
            --v12;
          }

          while (v12);
        }

        LOBYTE(v3) = a1[v9 + 11];
        v7 = v9 + 12;
      }
    }

    else
    {
      v7 = 0;
    }

    *(a3 + 37) = 0;
    *(a3 + 30) = 0;
    v14 = v3;
    if (v3 >= 5u)
    {
      v3 = 5;
    }

    else
    {
      v3 = v3;
    }

    if (v14)
    {
      v15 = v7 + 3;
      if (v15 <= a2)
      {
        v16 = (a3 + 33);
        v17 = 1;
        do
        {
          v18 = &a1[v7];
          v19 = v18[1];
          *(v16 - 3) = *v18;
          *(v16 - 1) = v18[2];
          *(v16 - 2) = v19 & 0x7F;
          *v16 = v19 >> 7;
          if (v17 >= v3)
          {
            break;
          }

          v7 = v15;
          v15 = v15 + 3;
          v16 += 4;
          ++v17;
        }

        while (v15 <= a2);
      }
    }

    *(a3 + 10) = v3;
  }

  return a2 > 9;
}

_BYTE *iAP2PacketGetMissingSeqFromEAK(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v4 = 0;
  LODWORD(v5) = 0;
  if (a1 && a3)
  {
    v8 = malloc_type_calloc(1uLL, 2 * a2, 0x1000040BDFB0063uLL);
    v9 = v8;
    v10 = *(*(a1 + 64) + 6);
    if (a2)
    {
      v11 = 0;
      v12 = v8 + 2 * a2;
      if (v12 <= v8 + 2)
      {
        v12 = v8 + 2;
      }

      v13 = (v12 + ~v8) >> 1;
      v14 = vadd_s8(vdup_n_s8(v10), 0x706050403020100);
      v15 = vdupq_n_s64(v13);
      v16 = (v13 & 0x7FFFFFFFFFFFFFF8) + 8;
      v17 = (v8 + 8);
      do
      {
        v18 = vdupq_n_s64(v11);
        v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_1001C33D0)));
        v20 = vadd_s8(v14, 0x101010101010101);
        if (vuzp1_s8(vuzp1_s16(v19, v14), v14).u8[0])
        {
          *(v17 - 4) = v20.u8[0];
        }

        if (vuzp1_s8(vuzp1_s16(v19, v14), *&v14).i8[1])
        {
          *(v17 - 3) = v20.u8[1];
        }

        if (vuzp1_s8(vuzp1_s16(v14, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_1001C3420)))), *&v14).i8[2])
        {
          *(v17 - 2) = v20.u8[2];
          *(v17 - 1) = v20.u8[3];
        }

        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_1001C3410)));
        if (vuzp1_s8(*&v14, vuzp1_s16(v21, v14)).i32[1])
        {
          *v17 = v20.u8[4];
        }

        if (vuzp1_s8(*&v14, vuzp1_s16(v21, v14)).i8[5])
        {
          v17[1] = v20.u8[5];
        }

        if (vuzp1_s8(*&v14, vuzp1_s16(v14, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_1001C3400))))).i8[6])
        {
          v17[2] = v20.u8[6];
          v17[3] = v20.u8[7];
        }

        v11 += 8;
        v14 = vadd_s8(v14, 0x808080808080808);
        v17 += 8;
      }

      while (v16 != v11);
    }

    v22 = *(a1 + 72);
    PayloadLen = iAP2PacketGetPayloadLen(a1);
    v24 = 0;
    if (PayloadLen)
    {
      v25 = a2;
      v26 = &v22[PayloadLen];
      do
      {
        v27 = *v22 - v10;
        if (v27 && a2 >= v27)
        {
          v28 = (*v22 - v10);
          if (v28 > v24)
          {
            v24 = *v22 - v10;
          }

          v25 -= *&v9[2 * v28 - 2] != -1;
          *&v9[2 * v28 - 2] = -1;
        }

        ++v22;
      }

      while (v22 < v26);
    }

    else
    {
      v25 = a2;
    }

    v29 = v25 - a2;
    v5 = v29 + v24;
    if (v29 + v24 && (v30 = malloc_type_calloc(1uLL, v29 + v24, 0x2D519C26uLL)) != 0)
    {
      v4 = v30;
      if (a2)
      {
        v31 = v9 + 2;
        v32 = 1;
        v33 = v30;
        do
        {
          v34 = *(v31 - 1);
          if (v34 != 0xFFFF)
          {
            v35 = v32++;
            if (v35 <= v24)
            {
              *v33++ = v34;
            }
          }

          if (v31 >= &v9[2 * a2])
          {
            break;
          }

          v31 += 2;
        }

        while (v33 < &v30[v5]);
      }
    }

    else
    {
      if (_iAP2LogEnableMask)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v36 = *(gLogObjects + 152);
        }

        else
        {
          v36 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 136315650;
          v39 = "/Library/Caches/com.apple.xbs/Sources/CoreAccessories/PublicShared/iAP2/iAP2LinkLayer/iAP2Link/iAP2Packet.c";
          v40 = 1024;
          v41 = 1925;
          v42 = 1024;
          v43 = v5;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Unable to get buffer for recv'd packet list! resultLen=%d\n", &v38, 0x18u);
        }
      }

      v4 = 0;
      LODWORD(v5) = 0;
    }

    free(v9);
  }

  if (a3)
  {
    *a3 = v5;
  }

  return v4;
}

unsigned int *iAP2PacketRemoveTimer(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 59) != 255)
    {
      MainTimer = iAP2LinkGetMainTimer(*result);
      result = iAP2TimeCancelTimer(MainTimer, *(v1 + 59));
    }

    *(v1 + 59) = -1;
  }

  return result;
}

const char *iAP2PacketName(uint64_t a1)
{
  v1 = *(*(a1 + 64) + 4);
  if (*(*(a1 + 64) + 4) < 0)
  {
    if ((v1 & 0x40) != 0)
    {
      return "SYN-ACK";
    }

    else
    {
      return "SYN";
    }
  }

  else if ((v1 & 0x20) != 0)
  {
    return "EAK";
  }

  else if ((v1 & 0x10) != 0)
  {
    return "RST";
  }

  else if ((v1 & 8) != 0)
  {
    return "SUS";
  }

  else if (v1 >= 0x40)
  {
    v3 = *(a1 + 54);
    if (v3 <= iAP2LinkCurPckHdrSize(*a1))
    {
      return "ACK";
    }

    else
    {
      return "DATA";
    }
  }

  else
  {
    return "UNKNOWN";
  }
}

void __acc_endpoint_setupPassthroughPair(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 15;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v3 = *(gLogObjects + 112);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __acc_endpoint_setupPassthroughPair_cold_2(a1);
  }

  v4 = *(a1 + 92);
  if (v4 == -1)
  {
    __acc_endpoint_setupPassthroughMode(a1);
    v4 = *(a1 + 92);
  }

  switch(v4)
  {
    case -1:
      __acc_endpoint_setupPassthroughMode(a1);
      v4 = *(a1 + 92);
      break;
    case 1:
      v5 = acc_manager_copyAllEndpoints();
      Count = CFDictionaryGetCount(v5);
      if (gLogObjects && gNumLogObjects >= 15)
      {
        v7 = *(gLogObjects + 112);
      }

      else
      {
        v7 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        __acc_endpoint_setupPassthroughPair_cold_4(a1);
      }

      v60 = &v58;
      __chkstk_darwin(v11);
      v13 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      v61 = v5;
      if (Count)
      {
        memset(&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v12);
        CFDictionaryGetKeysAndValues(v5, 0, v13);
        if (Count >= 1)
        {
          v15 = 0;
          v63 = kCFAllocatorDefault;
          *&v14 = 134218240;
          v58 = v14;
          *&v14 = 138413314;
          v59 = v14;
          *&v14 = 138412546;
          v62 = v14;
          do
          {
            v16 = gLogObjects;
            v17 = gNumLogObjects;
            if (gLogObjects)
            {
              v18 = gNumLogObjects < 15;
            }

            else
            {
              v18 = 1;
            }

            if (v18)
            {
              v19 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v58;
                v65 = v16;
                v66 = 1024;
                *v67 = v17;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                v19 = &_os_log_default;
              }
            }

            else
            {
              v19 = *(gLogObjects + 112);
            }

            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v30 = *(a1 + 16);
              v31 = v13[v15];
              v32 = v31[2];
              LODWORD(v31) = *(v31 + 23);
              *buf = v59;
              v65 = v30;
              v66 = 1024;
              *v67 = v15;
              *&v67[4] = 2048;
              *&v67[6] = Count;
              v68 = 2112;
              v69 = v32;
              v70 = 1024;
              v71 = v31;
              _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "setupPassthroughPair (Accessory) for endpoint %@, index= %d / %ld, %@ passthroughMode=%d", buf, 0x2Cu);
            }

            v20 = v13[v15];
            v21 = v20[23];
            if (v21 == -1)
            {
              __acc_endpoint_setupPassthroughMode(v13[v15]);
              v21 = v20[23];
            }

            if (v21 == 2)
            {
              v22 = gLogObjects;
              v23 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 15)
              {
                v24 = *(gLogObjects + 112);
              }

              else
              {
                v24 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = v58;
                  v65 = v22;
                  v66 = 1024;
                  *v67 = v23;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  v24 = &_os_log_default;
                }
              }

              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v33 = *(v13[v15] + 2);
                v34 = *(a1 + 16);
                *buf = v62;
                v65 = v33;
                v66 = 2112;
                *v67 = v34;
                _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Found passthroughDevice endpoint %@ for passthroughAccessory endpoint %@", buf, 0x16u);
              }

              if (*(a1 + 96) == 1)
              {
                v25 = gLogObjects;
                v26 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 15)
                {
                  v27 = *(gLogObjects + 112);
                }

                else
                {
                  v27 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v58;
                    v65 = v25;
                    v66 = 1024;
                    *v67 = v26;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    v27 = &_os_log_default;
                  }
                }

                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = *(v13[v15] + 2);
                  v29 = *(a1 + 16);
                  *buf = v62;
                  v65 = v28;
                  v66 = 2112;
                  *v67 = v29;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "ERROR: Found more than one passthroughDevice endpoint (%@) for passthroughAccessory endpoint %@ !", buf, 0x16u);
                }
              }

              *(a1 + 104) = CFStringCreateCopy(v63, *(v13[v15] + 2));
              *(a1 + 96) = 1;
            }

            ++v15;
          }

          while (Count != v15);
        }

        goto LABEL_100;
      }

LABEL_99:
      CFDictionaryGetKeysAndValues(v5, 0, v13);
LABEL_100:
      if (v61)
      {
        CFRelease(v61);
      }

      return;
    case 2:
      v5 = acc_manager_copyAllEndpoints();
      v8 = CFDictionaryGetCount(v5);
      if (gLogObjects && gNumLogObjects >= 15)
      {
        v9 = *(gLogObjects + 112);
      }

      else
      {
        v9 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      v35 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (v35)
      {
        __acc_endpoint_setupPassthroughPair_cold_8(a1);
      }

      v60 = &v58;
      __chkstk_darwin(v35);
      v13 = (&v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
      v61 = v5;
      if (v8)
      {
        memset(&v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v36);
        CFDictionaryGetKeysAndValues(v5, 0, v13);
        if (v8 >= 1)
        {
          v38 = 0;
          v63 = kCFAllocatorDefault;
          *&v37 = 134218240;
          v58 = v37;
          *&v37 = 138413314;
          v59 = v37;
          *&v37 = 138412546;
          v62 = v37;
          do
          {
            v39 = gLogObjects;
            v40 = gNumLogObjects;
            if (gLogObjects)
            {
              v41 = gNumLogObjects < 15;
            }

            else
            {
              v41 = 1;
            }

            if (v41)
            {
              v42 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v58;
                v65 = v39;
                v66 = 1024;
                *v67 = v40;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                v42 = &_os_log_default;
              }
            }

            else
            {
              v42 = *(gLogObjects + 112);
            }

            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              v53 = *(a1 + 16);
              v54 = v13[v38];
              v55 = v54[2];
              LODWORD(v54) = *(v54 + 23);
              *buf = v59;
              v65 = v53;
              v66 = 1024;
              *v67 = v38;
              *&v67[4] = 2048;
              *&v67[6] = v8;
              v68 = 2112;
              v69 = v55;
              v70 = 1024;
              v71 = v54;
              _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "setupPassthroughPair (Device) for endpoint %@, index= %d / %ld, %@ passthroughMode=%d", buf, 0x2Cu);
            }

            v43 = v13[v38];
            v44 = v43[23];
            if (v44 == -1)
            {
              __acc_endpoint_setupPassthroughMode(v13[v38]);
              v44 = v43[23];
            }

            if (v44 == 1)
            {
              v45 = gLogObjects;
              v46 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 15)
              {
                v47 = *(gLogObjects + 112);
              }

              else
              {
                v47 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = v58;
                  v65 = v45;
                  v66 = 1024;
                  *v67 = v46;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  v47 = &_os_log_default;
                }
              }

              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                v56 = *(v13[v38] + 2);
                v57 = *(a1 + 16);
                *buf = v62;
                v65 = v56;
                v66 = 2112;
                *v67 = v57;
                _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "Found passthroughAccessory endpoint %@ for passthroughDevice endpoint %@", buf, 0x16u);
              }

              if (*(a1 + 96) == 1)
              {
                v48 = gLogObjects;
                v49 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 15)
                {
                  v50 = *(gLogObjects + 112);
                }

                else
                {
                  v50 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v58;
                    v65 = v48;
                    v66 = 1024;
                    *v67 = v49;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    v50 = &_os_log_default;
                  }
                }

                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  v51 = *(v13[v38] + 2);
                  v52 = *(a1 + 16);
                  *buf = v62;
                  v65 = v51;
                  v66 = 2112;
                  *v67 = v52;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "ERROR: Found more than one passthroughAccessory endpoint (%@) for passthroughDevice endpoint %@ !", buf, 0x16u);
                }
              }

              *(a1 + 104) = CFStringCreateCopy(v63, *(v13[v38] + 2));
              *(a1 + 96) = 1;
            }

            ++v38;
          }

          while (v8 != v38);
        }

        goto LABEL_100;
      }

      goto LABEL_99;
  }

  if (gLogObjects && gNumLogObjects >= 15)
  {
    v10 = *(gLogObjects + 112);
  }

  else
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __acc_endpoint_setupPassthroughPair_cold_6(a1);
  }

  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
}

uint64_t acc_endpoint_getProtocolString(uint64_t a1)
{
  result = kACCEndpoint_Protocol_Strings[0];
  if (a1)
  {
    v3 = *(a1 + 28);
    if (v3 <= 0x12)
    {
      return kACCEndpoint_Protocol_Strings[v3];
    }
  }

  return result;
}

void __acc_endpoint_setupPassthroughMode(uint64_t a1)
{
  if (*(a1 + 92) == -1)
  {
    v2 = acc_endpoint_copyProperties(a1);
    if (v2)
    {
      v3 = v2;
      Value = CFDictionaryGetValue(v2, @"__PASSTHROUGH_ACCESSORY__");
      if (Value)
      {
        valuePtr = -1431655766;
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
        if (gLogObjects && gNumLogObjects >= 15)
        {
          v5 = *(gLogObjects + 112);
        }

        else
        {
          v5 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 16);
          v7 = *(a1 + 92);
          *buf = 138412802;
          v14 = v6;
          v15 = 1024;
          v16 = v7;
          v17 = 1024;
          v18 = valuePtr != 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Endpoint %@ passthroughMode(0=NO,1=Acc,2=Dev) %d -> %d", buf, 0x18u);
        }

        *(a1 + 92) = valuePtr != 0;
      }

      v8 = CFDictionaryGetValue(v3, @"__PASSTHROUGH_DEVICE__");
      if (v8)
      {
        valuePtr = -1431655766;
        CFNumberGetValue(v8, kCFNumberIntType, &valuePtr);
        if (gLogObjects && gNumLogObjects >= 15)
        {
          v9 = *(gLogObjects + 112);
        }

        else
        {
          v9 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 16);
          v11 = *(a1 + 92);
          *buf = 138412802;
          v14 = v10;
          v15 = 1024;
          v16 = v11;
          v17 = 1024;
          v18 = 2 * (valuePtr != 0);
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Endpoint %@ passthroughMode(0=NO,1=Acc,2=Dev) %d -> %d", buf, 0x18u);
        }

        *(a1 + 92) = 2 * (valuePtr != 0);
      }

      else if (*(a1 + 92) == -1)
      {
        *(a1 + 92) = 0;
      }

      CFRelease(v3);
    }

    else
    {
      *(a1 + 92) = 0;
    }
  }
}

void OUTLINED_FUNCTION_20_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

void OUTLINED_FUNCTION_32_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

CFMutableDictionaryRef OUTLINED_FUNCTION_42_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *v13;

  return CFDictionaryCreateMutableCopy(v15, 0, v12);
}

void OUTLINED_FUNCTION_63(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_66(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0x20u);
}

BOOL OUTLINED_FUNCTION_75_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_77(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v9, OS_SIGNPOST_EVENT, v10, a5, a6, &a9, 0x20u);
}

void OUTLINED_FUNCTION_79_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

BOOL OUTLINED_FUNCTION_80(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_81()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_84_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 16);
  return result;
}

void OUTLINED_FUNCTION_91(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_debug_impl(a1, v13, OS_LOG_TYPE_DEBUG, a4, &buf, 0x20u);
}

os_signpost_id_t OUTLINED_FUNCTION_94_0()
{

  return os_signpost_id_make_with_pointer(v1, v0);
}

id acc_userNotifications_generateIdentifier(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 && a2)
  {
    v3 = [NSString stringWithFormat:@"%@_%@", a1, a2];
    v2 = vars8;
  }

  return v3;
}

ACCUserNotification *acc_userNotifications_accessoryNotSupported()
{
  v0 = objc_alloc_init(ACCUserNotification);
  [(ACCUserNotification *)v0 setType:2];
  v1 = acc_strings_bundle();
  v2 = [v1 localizedStringForKey:@"Accessory Not Supported" value:&stru_10022D360 table:0];
  [(ACCUserNotification *)v0 setTitle:v2];

  v3 = acc_strings_bundle();
  v4 = [v3 localizedStringForKey:@"This accessory is not supported by this device." value:&stru_10022D360 table:0];
  [(ACCUserNotification *)v0 setMessage:v4];

  [(ACCUserNotification *)v0 setIsModal:0];
  [(ACCUserNotification *)v0 setPresentViaSystemAperture:1];

  return v0;
}

id platform_communications_initiateCallToDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[ACCCommunicationsServer sharedServer];
  v7 = [v6 initiateCallToDestination:a1 withService:a2 addressBookID:a3];

  return v7;
}

id platform_communications_initiateCallToVoicemail()
{
  v0 = +[ACCCommunicationsServer sharedServer];
  v1 = [v0 initiateCallToVoicemail];

  return v1;
}

id platform_communications_initiateRedial()
{
  v0 = +[ACCCommunicationsServer sharedServer];
  v1 = [v0 initiateRedial];

  return v1;
}

id platform_communications_acceptCall(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCCommunicationsServer sharedServer];
  v5 = [v4 acceptCallWithAction:a1 callUUID:a2];

  return v5;
}

id platform_communications_endCall(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCCommunicationsServer sharedServer];
  v5 = [v4 endCallWithAction:a1 callUUID:a2];

  return v5;
}

id platform_communications_endAllCalls()
{
  v0 = +[ACCCommunicationsServer sharedServer];
  v1 = [v0 endAllCalls];

  return v1;
}

id platform_communications_swapCalls()
{
  v0 = +[ACCCommunicationsServer sharedServer];
  v1 = [v0 swapCalls];

  return v1;
}

id platform_communications_mergeCalls()
{
  v0 = +[ACCCommunicationsServer sharedServer];
  v1 = [v0 mergeCalls];

  return v1;
}

id platform_communications_updateHoldStatus(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCCommunicationsServer sharedServer];
  v5 = [v4 updateHoldStatus:a1 forCallWithUUID:a2];

  return v5;
}

id platform_communications_updateMuteStatus(uint64_t a1)
{
  v2 = +[ACCCommunicationsServer sharedServer];
  v3 = [v2 updateMuteStatus:a1];

  return v3;
}

id platform_communications_sendDTMF(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCCommunicationsServer sharedServer];
  v5 = [v4 sendDTMF:a1 forCallWithUUID:a2];

  return v5;
}

unint64_t platform_communications_listUpdate(int a1, uint64_t a2, int a3)
{
  if (a1 == 1)
  {
    v4 = 52;
    return accFeatureHandlers_invokeHandler(0, v4, a2);
  }

  if (!a1)
  {
    if (a3)
    {
      v4 = 51;
    }

    else
    {
      v4 = 50;
    }

    return accFeatureHandlers_invokeHandler(0, v4, a2);
  }

  return 0;
}

void platform_communications_triggerCallStateUpdates()
{
  v0 = +[ACCCommunicationsServer sharedServer];
  [v0 triggerCallStateUpdates];
}

void platform_communications_triggerCommunicationsUpdate()
{
  v0 = +[ACCCommunicationsServer sharedServer];
  [v0 triggerCommunicationsUpdate];
}

void platform_communications_triggerListUpdate(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCCommunicationsServer sharedServer];
  [v4 triggerUpdateForListType:a1 coalesce:a2];
}

void platform_communications_addSubscriber(uint64_t a1)
{
  v2 = +[ACCCommunicationsServer sharedServer];
  [v2 addSubscriber:a1];
}

void platform_communications_removeSubscriber(uint64_t a1)
{
  v2 = +[ACCCommunicationsServer sharedServer];
  [v2 removeSubscriber:a1];
}

void platform_communications_incrementUserCount()
{
  v0 = +[ACCCommunicationsServer sharedServer];
  [v0 incrementUserCount];

  v1 = +[ACCCommunicationsServer sharedServer];
  v2 = [v1 featureUserCount];

  if (v2 == 1)
  {
    v3 = +[ACCFeaturePluginManager sharedManager];
    [v3 startPlugInsWithClasses:&off_100233C90];
  }
}

void platform_communications_decrementUserCount()
{
  v0 = +[ACCCommunicationsServer sharedServer];
  [v0 decrementUserCount];
}

uint64_t platform_communications_copyDefaultCallState()
{
  v1 = @"Status";
  v2 = &off_100233DB0;
  [NSDictionary dictionaryWithObjects:&v2 forKeys:&v1 count:1];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t platform_communications_copyDefaultCommunicationsState()
{
  v1[0] = @"SignalStrength";
  v1[1] = @"RegistrationStatus";
  v2[0] = &off_100233DB0;
  v2[1] = &off_100233DB0;
  v1[2] = @"AirplaneModeStatus";
  v1[3] = @"TTYStatus";
  v2[2] = &__kCFBooleanFalse;
  v2[3] = &__kCFBooleanFalse;
  v1[4] = @"CarrierName";
  v1[5] = @"CellularSupported";
  v2[4] = &stru_10022D360;
  v2[5] = &__kCFBooleanFalse;
  v1[6] = @"TelephonyEnabled";
  v1[7] = @"FaceTimeAudioEnabled";
  v2[6] = &__kCFBooleanFalse;
  v2[7] = &__kCFBooleanFalse;
  v1[8] = @"FaceTimeVideoEnabled";
  v1[9] = @"MuteStatus";
  v2[8] = &__kCFBooleanFalse;
  v2[9] = &__kCFBooleanFalse;
  v1[10] = @"CurrentCallCount";
  v1[11] = @"NewVoicemailCount";
  v2[10] = &off_100233DC8;
  v2[11] = &off_100233DC8;
  v1[12] = @"InitiateCallAvailable";
  v1[13] = @"EndAndAcceptAvailable";
  v2[12] = &__kCFBooleanFalse;
  v2[13] = &__kCFBooleanFalse;
  v1[14] = @"HoldAndAcceptAvailable";
  v1[15] = @"SwapAvailable";
  v2[14] = &__kCFBooleanFalse;
  v2[15] = &__kCFBooleanFalse;
  v1[16] = @"MergeAvailable";
  v1[17] = @"HoldAvailable";
  v2[16] = &__kCFBooleanFalse;
  v2[17] = &__kCFBooleanFalse;
  [NSDictionary dictionaryWithObjects:v2 forKeys:v1 count:18];
  return objc_claimAutoreleasedReturnValue();
}

id convertNSDataToNSString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v3 bytes];
    v6 = objc_alloc_init(NSMutableString);
    if ([v3 length])
    {
      v7 = 0;
      do
      {
        [v6 appendFormat:v4, v5[v7++]];
      }

      while (v7 < [v3 length]);
    }

    v8 = [NSString stringWithString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id convertNSStringToNSData(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = +[NSCharacterSet hexadecimalCharacterSet];
    v3 = [v2 invertedSet];
    v4 = [v1 componentsSeparatedByCharactersInSet:v3];
    v5 = [v4 componentsJoinedByString:&stru_10022D360];

    v6 = [v5 UTF8String];
    v7 = strlen(v6) >> 1;
    v8 = malloc_type_malloc(v7, 0x5E84AA4CuLL);
    if (v6 && [v5 length] >= 2)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = 0;
        v23 = -86;
        v22 = -86;
        v12 = &v23;
        v13 = 1;
        do
        {
          v14 = v13;
          v15 = v6[2 * v10 + v11];
          v16 = v15 - 48;
          v17 = v15 - 65;
          if ((v15 - 97) >= 6)
          {
            v18 = 0;
          }

          else
          {
            v18 = v15 - 87;
          }

          v19 = v15 - 55;
          if (v17 > 5)
          {
            v19 = v18;
          }

          if (v16 < 0xA)
          {
            v19 = v16;
          }

          *v12 = v19;
          v12 = &v22;
          v11 = 1;
          v13 = 0;
        }

        while ((v14 & 1) != 0);
        v8[v9] = v22 | (16 * v23);
        v9 = (v10 + 1);
        v20 = [v5 length];
        v10 = v9;
      }

      while (v9 < v20 >> 1);
    }

    v1 = [NSData dataWithBytes:v8 length:v7];
    if (v8)
    {
      free(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v1;
}

uint64_t classImplementsMethodsInProtocol(void *a1, void *a2, BOOL a3, BOOL a4, void *a5)
{
  v9 = a2;
  v10 = +[NSMutableSet set];
  outCount = 0;
  v11 = protocol_copyMethodDescriptionList(v9, a3, a4, &outCount);
  v12 = v11;
  if (outCount)
  {
    v13 = 0;
    p_name = &v11->name;
    do
    {
      if (([a1 instancesRespondToSelector:*p_name] & 1) == 0)
      {
        v15 = NSStringFromSelector(*p_name);
        [v10 addObject:v15];
      }

      ++v13;
      p_name += 2;
    }

    while (v13 < outCount);
  }

  free(v12);
  if (outCount && [v10 count])
  {
    v16 = 0;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16 = 1;
  if (a5)
  {
LABEL_11:
    *a5 = [NSSet setWithSet:v10];
  }

LABEL_12:

  return v16;
}

uint64_t isNSObjectNull(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = a1;
  v2 = +[NSNull null];
  v3 = [v1 isEqual:v2];

  return v3;
}

id NSObjectIfNotNull(void *a1)
{
  v1 = a1;
  if (isNSObjectNull(v1))
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

void *logObjectForModule_6()
{
  if (gLogObjects && gNumLogObjects >= 44)
  {
    return *(gLogObjects + 344);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    logObjectForModule_cold_1_1();
  }

  return v0;
}

unsigned __int16 *_findComponentForID(uint64_t a1, int a2)
{
  Feature = iap2_feature_getFeature(a1, 5u);
  if (gLogObjects && gNumLogObjects >= 44)
  {
    v5 = *(gLogObjects + 344);
  }

  else
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1_1();
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (!a1 || (v6 = *(a1 + 8)) == 0)
    {
      v6 = 0;
    }

    v9 = 138412546;
    v10 = v6;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_findComponentForID %@, componentID=%u", &v9, 0x12u);
  }

  if (!Feature)
  {
    return 0;
  }

  v7 = *(Feature + 8);
  if (v7 < 1)
  {
    return 0;
  }

  for (result = *Feature; *result != a2; result += 16)
  {
    if (!--v7)
    {
      return 0;
    }
  }

  return result;
}

uint64_t iap2_btConnectionStatus_isSupportedOnConnection(uint64_t a1)
{
  v4 = 0;
  v2 = iap2_identification_checkRequiredMsgIDs(a1, &gskMsgBTConnectionStatusMainList, 3, &v4);
  return v2 | iap2_identification_checkRequiredMsgIDs(a1, &gskMsgBTComponentInfoMainList, 1, &v4);
}

uint64_t _checkIdentificationInfo_0(void *a1)
{
  v12 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &gskMsgBTConnectionStatusMainList, 3u, &v12 + 1);
  v3 = v2;
  if (HIBYTE(v12) != 1 || v2 == 0)
  {
    v5 = iap2_identification_checkIdentificationMsgIDs(a1, &gskMsgBTComponentInfoMainList, 1u, &v12);
    v3 = v5;
    if (v12 != 1 || v5 == 0)
    {
      if (HIBYTE(v12) == 1 && !v5)
      {
        if (!iap2_identification_getTransportComponent(a1) && !iap2_identification_getTransportComponent(a1))
        {
          v8 = &dword_1001C3454;
          v9 = 3;
          do
          {
            v10 = *(v8 - 2);
            v11 = *v8;
            v8 += 3;
            v3 = 12;
            iap2_identification_rejectMsgID(a1, v10, v11, 0xCu);
            --v9;
          }

          while (v9);
          return v3;
        }

        v3 = 0;
      }

      if (((v12 & 0x100) != 0 || v12 == 1) && !v3)
      {
        iap2_features_createFeature(a1, 5u);
        iap2_identification_setIdentifiedForFeature(a1);
        return 0;
      }
    }
  }

  return v3;
}

void _setupComponentList(uint64_t a1)
{
  v51 = a1;
  v1 = iap2_identification_transportComponents(a1);
  if (v1)
  {
    v2 = v1;
    Count = CFDictionaryGetCount(v1);
    if (gLogObjects && gNumLogObjects >= 44)
    {
      v4 = *(gLogObjects + 344);
    }

    else
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        logObjectForModule_cold_1_1();
      }
    }

    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      _setupComponentList_cold_2(Count, v4);
      if (!Count)
      {
        return;
      }
    }

    else if (!Count)
    {
      return;
    }

    v47 = &v45;
    __chkstk_darwin(v5);
    v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    memset(v7, 170, v6);
    CFDictionaryGetKeysAndValues(v2, 0, v7);
    v9 = &audioProductCerts_endpoint_publish_onceToken;
    if (Count >= 1)
    {
      v10 = 0;
      v49 = kCFAllocatorDefault;
      *&v8 = 134218240;
      v46 = v8;
      *&v8 = 67110146;
      v45 = v8;
      *&v8 = 138412802;
      v48 = v8;
      do
      {
        v11 = *&v7[8 * v10];
        v12 = v9[491];
        v13 = gNumLogObjects;
        if (v12)
        {
          v14 = gNumLogObjects <= 43;
        }

        else
        {
          v14 = 1;
        }

        v15 = !v14;
        if (v11)
        {
          if (v15)
          {
            v16 = *(v12 + 344);
          }

          else
          {
            v16 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v46;
              *v60 = v12;
              *&v60[8] = 1024;
              *&v60[10] = v13;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v36 = *v11;
            v37 = *(v11 + 5);
            v38 = *(v11 + 1);
            *buf = v45;
            *v60 = v10;
            *&v60[4] = 2048;
            *&v60[6] = Count;
            v61 = 1024;
            *v62 = v36;
            *&v62[4] = 1024;
            *&v62[6] = v37;
            v63 = 2112;
            v64 = v38;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "_setupComponentList: found transportComponent, %d/%ld id=%d type=%d name=%@", buf, 0x28u);
          }

          v18 = *(v11 + 5);
          if (v18 == 5 || v18 == 3)
          {
            v20 = v7;
            v57 = -1431655766;
            v58 = -21846;
            v55 = -1431655766;
            v56 = -21846;
            v54 = -21846;
            v21 = *v11;
            v22 = v49;
            v23 = CFUUIDCreate(v49);
            v24 = CFUUIDCreateString(v22, v23);
            Copy = CFStringCreateCopy(v22, *(v11 + 1));
            v55 = *(v11 + 6);
            v56 = v11[14];
            Feature = iap2_feature_getFeature(v51, 5u);
            v26 = v9[491];
            v27 = gNumLogObjects;
            if (v26 && gNumLogObjects >= 44)
            {
              v28 = *(v26 + 344);
            }

            else
            {
              v28 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v46;
                *v60 = v26;
                *&v60[8] = 1024;
                *&v60[10] = v27;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }
            }

            v9 = &audioProductCerts_endpoint_publish_onceToken;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              if (!v51 || (v29 = *(v51 + 8)) == 0)
              {
                v29 = 0;
              }

              *buf = v48;
              *v60 = v29;
              *&v60[8] = 1024;
              *&v60[10] = v21;
              v61 = 2112;
              *v62 = v24;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "_addComponent %@, component=(%u, %@)", buf, 0x1Cu);
            }

            if (Feature)
            {
              v30 = *(Feature + 12);
              if (!v30)
              {
                *(Feature + 12) = 4;
                *Feature = malloc_type_malloc(0x80uLL, 0x10600404D6FD926uLL);
                v30 = *(Feature + 12);
              }

              if (v30 <= *(Feature + 8))
              {
                v31 = 2 * v30;
                v32 = malloc_type_realloc(*Feature, 64 * v30, 0x10600404D6FD926uLL);
                if (v32)
                {
                  *Feature = v32;
                  *(Feature + 12) = v31;
                  bzero(&v32[32 * *(Feature + 8)], 32 * (v31 - *(Feature + 8)));
                }

                else
                {
                  v33 = gLogObjects;
                  v34 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 44)
                  {
                    v35 = *(gLogObjects + 344);
                  }

                  else
                  {
                    v39 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                    v35 = &_os_log_default;
                    if (v39)
                    {
                      *buf = v46;
                      *v60 = v33;
                      *&v60[8] = 1024;
                      *&v60[10] = v34;
                      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                      v35 = &_os_log_default;
                    }
                  }

                  v40 = v35;
                  v9 = &audioProductCerts_endpoint_publish_onceToken;
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                  {
                    if (!v51 || (v43 = *(v51 + 8)) == 0)
                    {
                      v43 = 0;
                    }

                    v44 = *(Feature + 12);
                    *buf = v48;
                    *v60 = v43;
                    *&v60[8] = 1024;
                    *&v60[10] = v44;
                    v61 = 1024;
                    *v62 = v31;
                    _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "_addComponent %@ FAILED to re-allocate buffer for componentInfoList, allocCount=%d->%d", buf, 0x18u);
                  }
                }
              }

              v41 = *Feature + 32 * *(Feature + 8);
              *v41 = v21;
              *(v41 + 2) = v57;
              *(v41 + 6) = v58;
              v42 = Copy;
              *(v41 + 8) = v24;
              *(v41 + 16) = v42;
              *(v41 + 24) = v55;
              *(v41 + 28) = v56;
              *(v41 + 30) = v54;
              ++*(Feature + 8);
            }

            if (v23)
            {
              CFRelease(v23);
            }

            v7 = v20;
          }
        }

        else
        {
          if (v15)
          {
            v17 = *(v12 + 344);
          }

          else
          {
            v17 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v46;
              *v60 = v12;
              *&v60[8] = 1024;
              *&v60[10] = v13;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            _setupComponentList_cold_3(&v52, v53, v17);
          }
        }

        ++v10;
      }

      while (Count != v10);
    }
  }
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return iAP2MsgGetMsgID(a19);
}

void acc_restrictedMode_accessoryAttached()
{
  v1[0] = 1;
  v0 = ACMKernelControl(34);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "acmStatus (accessoryAttached): %d", v1, 8u);
  }
}

void acc_restrictedMode_accessoryDetached()
{
  v1[0] = 1;
  v0 = ACMKernelControl(37);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "acmStatus (accessoryDetached): %d", v1, 8u);
  }
}

void *logObjectForModule_7()
{
  v0 = gLogObjects;
  v1 = gNumLogObjects;
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 18;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    return *(gLogObjects + 136);
  }

  v3 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    acc_nvmInfo_getPairingStatus_cold_1(v0, v1);
  }

  return v3;
}

uint64_t iap2_AvailableDigitalCarKeys(uint64_t a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v5 = Mutable;
  v6 = 0;
  if (!a1 || !a2 || !Mutable)
  {
    goto LABEL_34;
  }

  if (iAP2MsgGetMsgID(a2) != 17154)
  {
    v6 = 0;
    goto LABEL_35;
  }

  v21 = a1;
  if (gLogObjects && gNumLogObjects >= 52)
  {
    v7 = *(gLogObjects + 408);
  }

  else
  {
    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1_1();
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v24) = 17154;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iap2_AvailableDigitalCarKeys: Received message 0x%x", buf, 8u);
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  v22 = -1431655766;
  if (!FirstParam)
  {
LABEL_26:
    if (gLogObjects && gNumLogObjects >= 52)
    {
      v18 = *(gLogObjects + 408);
      v19 = v21;
    }

    else
    {
      v18 = &_os_log_default;
      v19 = v21;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        logObjectForModule_cold_1_1();
      }
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "iap2_AvailableDigitalCarKeys: calling platform_CarPlay_availableDigitalCarKeys with key IDs: %@", buf, 0xCu);
    }

    platform_CarPlay_availableDigitalCarKeys(*(v19 + 8), v5);
    v6 = 1;
LABEL_34:
    if (v5)
    {
      goto LABEL_35;
    }

    return v6;
  }

  NextParam = FirstParam;
  while (1)
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    if (!ParamID)
    {
      break;
    }

    v11 = ParamID;
    v12 = gLogObjects;
    v13 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 52)
    {
      v14 = *(gLogObjects + 408);
    }

    else
    {
      v14 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v24 = v12;
        v25 = 1024;
        v26 = v13;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        v14 = &_os_log_default;
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v24) = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Unrecognized AvailableDigitalCarKeys paramID:0x%04X", buf, 8u);
    }

LABEL_25:
    NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
    if (!NextParam)
    {
      goto LABEL_26;
    }
  }

  DataAsString = iAP2MsgGetDataAsString(NextParam, &v22);
  if (!v22)
  {
    v16 = CFStringCreateWithCString(kCFAllocatorDefault, DataAsString, 0x8000100u);
    if (v16)
    {
      v17 = v16;
      CFArrayAppendValue(v5, v16);
      CFRelease(v17);
    }

    goto LABEL_25;
  }

  iap2_AvailableDigitalCarKeys_cold_2(a2, buf);
  v6 = buf[0];
  if (!v5)
  {
    return v6;
  }

LABEL_35:
  CFRelease(v5);
  return v6;
}

void *logObjectForModule_8()
{
  if (gLogObjects && gNumLogObjects >= 52)
  {
    return *(gLogObjects + 408);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    logObjectForModule_cold_1_1();
  }

  return v0;
}

void sub_1000260C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_9_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x34u);
}

void OUTLINED_FUNCTION_12_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void _tryWRLock(uint64_t a1, int a2)
{
  v4 = pthread_rwlock_trywrlock(&_gAccManagerLock);
  if (v4 == 16)
  {
    v5 = 0;
    do
    {
      ++v5;
      usleep(0x1388u);
      v6 = pthread_rwlock_trywrlock(&_gAccManagerLock);
    }

    while (v6 == 16);
    v7 = v6;
  }

  else
  {
    v7 = v4;
    v5 = 0;
  }

  if (v7 | v5)
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects <= 12;
    }

    else
    {
      v8 = 1;
    }

    v9 = !v8;
    if (v7)
    {
      if (v9)
      {
        v10 = *(gLogObjects + 96);
      }

      else
      {
        v10 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v12 = 136316162;
        v13 = "_tryWRLock";
        v14 = 2080;
        v15 = a1;
        v16 = 1024;
        v17 = a2;
        v18 = 1024;
        v19 = v5;
        v20 = 1024;
        v21 = v7;
        _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%s: %s:%d tryCount %d, err %d ", &v12, 0x28u);
      }
    }

    else
    {
      if (v9)
      {
        v11 = *(gLogObjects + 96);
      }

      else
      {
        v11 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = 136316162;
        v13 = "_tryWRLock";
        v14 = 2080;
        v15 = a1;
        v16 = 1024;
        v17 = a2;
        v18 = 1024;
        v19 = v5;
        v20 = 1024;
        v21 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: %s:%d tryCount %d, err %d ", &v12, 0x28u);
      }
    }
  }
}

CFDictionaryRef acc_manager_copyAllConnections()
{
  pthread_rwlock_rdlock(&_gAccManagerLock);
  if (qword_100245F08 != -1)
  {
    acc_manager_copyAllEndpoints_cold_1();
  }

  if (qword_100245F10)
  {
    Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, qword_100245F10);
  }

  else
  {
    Copy = 0;
  }

  pthread_rwlock_unlock(&_gAccManagerLock);
  return Copy;
}

uint64_t acc_manager_enableLockoutForTransportType(unsigned int a1, unsigned int a2)
{
  v4 = a1 >= 0x11 || a2 == 0;
  v5 = !v4;
  if (v4)
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 13;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v11 = *(gLogObjects + 96);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      acc_manager_enableLockoutForTransportType_cold_2(a1, a2, v11);
    }
  }

  else
  {
    isLockoutActiveForTransportType = acc_manager_isLockoutActiveForTransportType(a1, 0);
    _tryWRLock("acc_manager_enableLockoutForTransportType", 914);
    _MergedGlobals_0[a1 + 7] = systemInfo_getCurrentUnixTime() + a2;
    pthread_rwlock_unlock(&_gAccManagerLock);
    if (gLogObjects)
    {
      v7 = gNumLogObjects <= 12;
    }

    else
    {
      v7 = 1;
    }

    v8 = !v7;
    if (isLockoutActiveForTransportType)
    {
      if (v8)
      {
        v9 = *(gLogObjects + 96);
      }

      else
      {
        v9 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 67109376;
        v15 = a1;
        v16 = 1024;
        v17 = a2;
        v12 = "Lockout for transport type: %{coreacc:ACCEndpoint_TransportType_t}d was extended to %d seconds!";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xEu);
      }
    }

    else
    {
      if (v8)
      {
        v9 = *(gLogObjects + 96);
      }

      else
      {
        v9 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 67109376;
        v15 = a1;
        v16 = 1024;
        v17 = a2;
        v12 = "Enabled lockout for transport type: %{coreacc:ACCEndpoint_TransportType_t}d for %d seconds!";
        goto LABEL_36;
      }
    }
  }

  return v5;
}

BOOL acc_manager_disableLockoutForTransportType(unsigned int a1)
{
  _tryWRLock("acc_manager_disableLockoutForTransportType", 939);
  if (a1 > 0x10)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 13;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      v5 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v5 = *(gLogObjects + 96);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      acc_manager_isLockoutActiveForTransportType_cold_2(a1, v5);
    }
  }

  else
  {
    _MergedGlobals_0[a1 + 7] = 0;
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 13;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v4 = *(gLogObjects + 96);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disabled lockout for transport type: %{coreacc:ACCEndpoint_TransportType_t}d!", v7, 8u);
    }
  }

  pthread_rwlock_unlock(&_gAccManagerLock);
  return a1 < 0x11;
}