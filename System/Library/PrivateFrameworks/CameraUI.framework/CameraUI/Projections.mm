@interface Projections
@end

@implementation Projections

void __Projections_projectionRows_planar8UtoF_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  STACK[0xFF38] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 32);
  v3 = *(v2 + 6);
  v4 = v2[2];
  _X20 = *v2;
  __asm
  {
    PRFM            #0, [X20]
    PRFM            #0x10, [SP,#0x50+var_30]
  }

  v12 = *(v2 + 2);
  __memcpy_chk();
  v13 = v12 - 16;
  if (v12 < 17)
  {
    LODWORD(v14) = 0;
  }

  else
  {
    v14 = 0;
    v15 = &STACK[0x3320];
    do
    {
      v16 = *(&v43 + v14);
      v17 = vmovl_u8(*v16.i8);
      v18 = vmovl_high_u8(v16);
      *v15 = vmovl_u16(*v17.i8);
      v15[1] = vmovl_high_u16(v17);
      v15[2] = vmovl_u16(*v18.i8);
      v15[3] = vmovl_high_u16(v18);
      v15 += 4;
      v14 += 16;
    }

    while (v14 < v13);
  }

  if (v14 < v12)
  {
    v19 = v12 - v14;
    v20 = &STACK[0x3320] + v14;
    v21 = &v43 + v14;
    do
    {
      v22 = *v21++;
      *v20++ = v22;
      --v19;
    }

    while (v19);
  }

  v42 = v2;
  v23 = *(v2 + 3);
  if (v3 < v23)
  {
    v24 = v4 * v3;
    v25 = v3;
    do
    {
      _X20 += v24;
      __asm
      {
        PRFM            #0, [X20]
        PRFM            #0x10, [SP,#0x50+var_30]
      }

      __memcpy_chk();
      if (v12 < 17)
      {
        v37 = 0;
      }

      else
      {
        v28 = 0;
        v29 = &STACK[0x3320];
        do
        {
          v30 = *(&v43 + v28);
          v31 = vmovl_u8(*v30.i8);
          v32 = vaddw_u16(*v29, *v31.i8);
          v33 = vaddw_high_u16(v29[1], v31);
          v34 = vmovl_high_u8(v30);
          *v29 = v32;
          v29[1] = v33;
          v35 = vaddw_u16(v29[2], *v34.i8);
          v36 = vaddw_high_u16(v29[3], v34);
          v29[2] = v35;
          v29[3] = v36;
          v28 += 16;
          v29 += 4;
        }

        while (v28 < v13);
        v37 = v28;
      }

      if (v37 < v12)
      {
        v38 = v12 - v37;
        v39 = &STACK[0x3320] + v37;
        v40 = &v43 + v37;
        do
        {
          v41 = *v40++;
          *v39++ += v41;
          --v38;
        }

        while (v38);
      }

      v25 += v3;
    }

    while (v25 < v23);
  }

  vDSP_vflt32(&STACK[0x3320], 1, v42[4], 1, v12);
  *(v42 + 10) = 0;
}

uint64_t __Projections_projectionCols_planar8UtoF_block_invoke(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  STACK[0x3308] = *MEMORY[0x1E69E9840];
  v2 = *(result + 32);
  v3 = *(v2 + 3);
  if (v3 >= 1)
  {
    v4 = 0;
    _X19 = *v2;
    v6 = *(v2 + 2);
    v7 = v6 - 16;
    do
    {
      __asm
      {
        PRFM            #0, [X19]
        PRFM            #0x10, [SP,#0x60+var_60]
      }

      result = __memcpy_chk();
      v14 = *(v2 + 6);
      switch(v14)
      {
        case 1:
          if (v6 < 17)
          {
            LODWORD(v17) = 0;
            v22 = 0uLL;
          }

          else
          {
            v21 = 0;
            v22 = 0uLL;
            do
            {
              v22 = vpadalq_s16(v22, vpaddlq_u8(*(&v24 + v21)));
              v21 += 16;
            }

            while (v21 < v7);
            LODWORD(v17) = ((v6 - 17) & 0xFFFFFFF0) + 16;
          }

          v16 = vpaddq_s32(v22, v22).u64[0];
          break;
        case 2:
          if (v6 < 17)
          {
            LODWORD(v17) = 0;
            v16 = 0;
          }

          else
          {
            v18 = 0;
            v16 = 0;
            do
            {
              v19 = &v24 + v18;
              v20 = *vld2_s8(v19).val;
              v16 = vpadal_s16(v16, vpaddl_u8(v20));
              v18 += 16;
            }

            while (v18 < v7);
            LODWORD(v17) = ((v6 - 17) & 0xFFFFFFF0) + 16;
          }

          break;
        case 4:
          if (v6 < 17)
          {
            LODWORD(v17) = 0;
            v16.i32[0] = 0;
          }

          else
          {
            v15 = 0;
            v16 = 0;
            do
            {
              v16 = vpadal_s16(v16, vpaddl_u8(vqtbl1_s8(*(&v24 + v15), 0xC0804000C080400)));
              v15 += 16;
            }

            while (v15 < v7);
            LODWORD(v17) = ((v6 - 17) & 0xFFFFFFF0) + 16;
          }

          goto LABEL_23;
        default:
          goto LABEL_27;
      }

      v16.i32[0] = vpadd_s32(v16, v16).u32[0];
LABEL_23:
      v23 = v16.i32[0];
      if (v17 < v6)
      {
        v17 = v17;
        do
        {
          v23 += *(&v24 + v17);
          v17 += v14;
        }

        while (v17 < v6);
      }

      *(v2[4] + 4 * v4) = v23;
      _X19 += v2[2];
      ++v4;
    }

    while (v4 != v3);
  }

LABEL_27:
  *(v2 + 10) = 0;
  return result;
}

@end