@interface RETextureLoaderASTCHelper
+ (int64_t)isASTCHDRData:(id)a3 textureType:(unint64_t)a4 error:(id *)a5;
@end

@implementation RETextureLoaderASTCHelper

+ (int64_t)isASTCHDRData:(id)a3 textureType:(unint64_t)a4 error:(id *)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__RETextureLoaderASTCHelper_isASTCHDRData_textureType_error___block_invoke;
  v13[3] = &unk_1E8721610;
  v13[4] = &v14;
  v13[5] = a4;
  [a3 enumerateByteRangesUsingBlock:v13];
  v6 = v15;
  if (a5 && v15[3] == -1)
  {
    v7 = *MEMORY[0x1E696A578];
    v18[0] = @"MTKTextureLoaderErrorKey";
    v18[1] = v7;
    v19[0] = @"Could not load ASTC texture, data is malformed";
    v19[1] = @"Could not load ASTC texture, data is malformed";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTKTextureLoaderErrorDomain" code:-1 userInfo:v8];

    v10 = v9;
    *a5 = v9;
    v6 = v15;
  }

  v11 = v6[3];
  _Block_object_dispose(&v14, 8);
  return v11;
}

uint64_t __61__RETextureLoaderASTCHelper_isASTCHDRData_textureType_error___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v69 = *MEMORY[0x1E69E9840];
  if ((a4 & 0xF) != 0)
  {
    *(*(*(result + 32) + 8) + 24) = -1;
    *a5 = 1;
  }

  v5 = 0;
  do
  {
    v6 = v5 + 16;
    if (v5 + 16 > a4)
    {
      break;
    }

    v68 = *(a2 + v5);
    v7 = v68 | ((BYTE1(v68) & 7) << 8);
    if ((v68 | ((BYTE1(v68) & 7) << 8) & 0x1FF) == 0x1FC)
    {
      if ((BYTE1(v68) & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    v8 = (BYTE1(v68) >> 3) & 3;
    if (!v8)
    {
      if (((1 << (((BYTE1(v68) | (BYTE2(v68) << 8)) >> 5) & 0xF)) & 0xC88C) == 0)
      {
        goto LABEL_19;
      }

LABEL_17:
      *(*(*(result + 32) + 8) + 24) = 1;
      goto LABEL_18;
    }

    v9 = ((BYTE2(v68) | (BYTE3(v68) << 8)) >> 7) & 3;
    if (v9)
    {
      v10 = (BYTE1(v68) & 7) << 8;
      v11 = v10 >> 9;
      v12 = (v10 >> 9) & 1;
      v13 = v10 >> 10;
      v14 = (v68 >> 5) & 3;
      v15 = v68 & 3;
      if (*(result + 40) != 7)
      {
        v21 = (v68 >> 2) & 3;
        if ((v68 & 3) != 0)
        {
          v22 = (v7 >> 7) & 3;
          v23 = v14 + 2;
          v24 = v22 | 8;
          v25 = (v7 >> 7) & 1;
          v26 = v25 | 6;
          v27 = v25 | 2;
          if (BYTE1(v68))
          {
            v28 = v27;
          }

          else
          {
            v28 = v23;
          }

          if (BYTE1(v68))
          {
            v29 = v23;
          }

          else
          {
            v29 = v26;
          }

          if (v21 == 2)
          {
            v28 = v23;
            v29 = v22 | 8;
          }

          if (!v21)
          {
            v24 = v22 | 4;
          }

          if (((v68 >> 2) & 3u) <= 1)
          {
            v28 = v24;
            v29 = v23;
          }
        }

        else
        {
          if (!v21)
          {
            goto LABEL_90;
          }

          v33 = (v7 >> 7) & 3;
          if (v33 > 1)
          {
            if (v33 == 2)
            {
              v12 = 0;
              v13 = 0;
              v28 = v14 + 6;
              v29 = v11 + 6;
            }

            else
            {
              if ((v68 & 0x40) != 0)
              {
                goto LABEL_90;
              }

              v29 = 10;
              v28 = 6;
            }
          }

          else
          {
            v34 = v33 == 0;
            if (v33)
            {
              v28 = v14 + 2;
            }

            else
            {
              v28 = 12;
            }

            if (v34)
            {
              v29 = v14 + 2;
            }

            else
            {
              v29 = 12;
            }
          }

          v15 = (v68 >> 2) & 3;
        }

        v20 = (v28 + v28 * v13) * v29;
        goto LABEL_65;
      }

      if ((v68 & 3) != 0)
      {
        v16 = (v7 >> 7) & 3;
        v17 = v14 + 2;
        v18 = v16 + 2;
        v19 = ((v68 >> 2) & 3) + 2;
        goto LABEL_13;
      }

      v15 = (v68 >> 2) & 3;
      if (v15)
      {
        v30 = (v7 >> 7) & 3;
        if (v30 != 3)
        {
          v12 = 0;
          v13 = 0;
        }

        if (((v7 >> 7) & 3) > 1)
        {
          if (v30 == 2)
          {
            v17 = v14 + 2;
            v18 = v11 + 2;
            v19 = 6;
            goto LABEL_13;
          }

          if (v14 != 3)
          {
            v18 = 2;
            v17 = 6;
            v19 = 2;
            goto LABEL_13;
          }

          goto LABEL_90;
        }

        v31 = v11 + 2;
        v32 = v14 + 2;
        if (v30)
        {
          v17 = v32;
        }

        else
        {
          v17 = 6;
        }

        if (v30)
        {
          v18 = 6;
        }

        else
        {
          v18 = v31;
        }

        if (v30)
        {
          v19 = v31;
        }

        else
        {
          v19 = v32;
        }

LABEL_13:
        v20 = (v17 + v17 * v13) * v18 * v19;
LABEL_65:
        v35 = ((v68 >> 4) | 0xFFFFFFFE) + 6 * v12 + 2 * v15;
        if (v35 > 5)
        {
          if (v35 > 8)
          {
            if (v35 != 9)
            {
              if (v35 == 10)
              {
                v36 = 23;
LABEL_81:
                v20 = (26215 * (v20 * v36 + 4)) >> 17;
              }

              else
              {
                v20 *= 5;
              }

              goto LABEL_89;
            }

            v37 = 283998;
          }

          else
          {
            if (v35 != 6)
            {
              if (v35 == 7)
              {
                v36 = 18;
                goto LABEL_81;
              }

              v20 *= 4;
              goto LABEL_89;
            }

            v37 = 218460;
          }
        }

        else
        {
          if (v35 <= 2)
          {
            if (v35)
            {
              if (v35 == 1)
              {
                v20 = (13108 * ((8 * v20) | 4)) >> 16;
              }

              else
              {
                v20 *= 2;
              }
            }

            goto LABEL_89;
          }

          if (v35 != 3)
          {
            if (v35 == 4)
            {
              v36 = 13;
              goto LABEL_81;
            }

            v20 *= 3;
LABEL_89:
            if (v20 - 129 > 0xFFFFFF7F)
            {
              if (v8 == 3)
              {
                if (v20 >= 0x79)
                {
                  goto LABEL_100;
                }

                v63 = vuzp1_s8((*&vshl_u16(vdup_n_s16(BYTE3(v68)), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01), 0xFFFCFFFDFFFEFFFFLL).u32[0];
                v40 = (120 - v20) & 7;
                if (v40 >= 6)
                {
                  v41 = *((&v68 | ((120 - v20) >> 3)) + 1) << 8;
                }

                else
                {
                  v41 = 0;
                }

                v64 = ((v41 | *(&v68 | ((120 - v20) >> 3))) >> v40) & 3;
                v50 = (122 - v20) & 7;
                if (v50 >= 6)
                {
                  v51 = *((&v68 | ((122 - v20) >> 3)) + 1) << 8;
                }

                else
                {
                  v51 = 0;
                }

                v65 = ((v51 | *(&v68 | ((122 - v20) >> 3))) >> v50) & 3;
                v52 = (124 - v20) & 7;
                if (v52 >= 6)
                {
                  v53 = *((&v68 | ((124 - v20) >> 3)) + 1) << 8;
                }

                else
                {
                  v53 = 0;
                }

                v66 = ((v53 | *(&v68 | ((124 - v20) >> 3))) >> v52) & 3;
                v54 = (&v68 | ((126 - v20) >> 3));
                v55 = (126 - v20) & 7;
                if (v55 >= 6)
                {
                  v56 = *((&v68 | ((126 - v20) >> 3)) + 1) << 8;
                }

                else
                {
                  v56 = 0;
                }

                v67 = ((v56 | *v54) >> v55) & 3;
              }

              else
              {
                if (v8 == 2)
                {
                  if (v20 < 0x7C)
                  {
                    LOBYTE(v63) = (BYTE3(v68) & 2) != 0;
                    BYTE1(v63) = (BYTE3(v68) & 4) != 0;
                    BYTE2(v63) = (BYTE3(v68) & 8) != 0;
                    v38 = (123 - v20) & 7;
                    if (v38 == 7)
                    {
                      v39 = *((&v68 | ((123 - v20) >> 3)) + 1) << 8;
                    }

                    else
                    {
                      v39 = 0;
                    }

                    v64 = ((BYTE3(v68) & 0x10) != 0) | (2 * (((v39 | *(&v68 | ((123 - v20) >> 3))) >> v38) & 1));
                    v45 = (124 - v20) & 7;
                    if (v45 >= 6)
                    {
                      v46 = *((&v68 | ((124 - v20) >> 3)) + 1) << 8;
                    }

                    else
                    {
                      v46 = 0;
                    }

                    v65 = ((v46 | *(&v68 | ((124 - v20) >> 3))) >> v45) & 3;
                    v47 = (&v68 | ((126 - v20) >> 3));
                    v48 = (126 - v20) & 7;
                    if (v48 >= 6)
                    {
                      v49 = *((&v68 | ((126 - v20) >> 3)) + 1) << 8;
                    }

                    else
                    {
                      v49 = 0;
                    }

                    v66 = ((v49 | *v47) >> v48) & 3;
                    goto LABEL_124;
                  }

LABEL_100:
                  *(*(*(result + 32) + 8) + 24) = -1;
                  *a5 = 1;
                  goto LABEL_124;
                }

                if (v20 >= 0x7F)
                {
                  goto LABEL_100;
                }

                LOBYTE(v63) = (BYTE3(v68) & 2) != 0;
                BYTE1(v63) = (BYTE3(v68) & 4) != 0;
                v64 = (BYTE3(v68) >> 3) & 3;
                v42 = (&v68 | ((126 - v20) >> 3));
                v43 = (126 - v20) & 7;
                if (v43 >= 6)
                {
                  v44 = *((&v68 | ((126 - v20) >> 3)) + 1) << 8;
                }

                else
                {
                  v44 = 0;
                }

                v65 = ((v44 | *v42) >> v43) & 3;
              }

LABEL_124:
              v57 = 0;
              v58 = v9 + 63;
              do
              {
                v59 = (*(&v64 + v57) + 4 * (v58 + *(&v63 + v57)));
                v60 = v59 > 0xF;
                v61 = (1 << v59) & 0xC88C;
                if (!v60 && v61 != 0)
                {
                  *(*(*(result + 32) + 8) + 24) = 1;
                  *a5 = 1;
                }

                ++v57;
              }

              while (v8 + 1 != v57);
              goto LABEL_19;
            }

            goto LABEL_90;
          }

          v37 = 152922;
        }

        v20 = (v20 * v37 + 43692) >> 16;
        goto LABEL_89;
      }

LABEL_90:
      *(*(*(result + 32) + 8) + 24) = -1;
LABEL_18:
      *a5 = 1;
      goto LABEL_19;
    }

    if (((1 << ((BYTE3(v68) >> 1) & 0xF)) & 0xC88C) != 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    v5 = v6;
  }

  while (*a5 != 1);
  return result;
}

@end