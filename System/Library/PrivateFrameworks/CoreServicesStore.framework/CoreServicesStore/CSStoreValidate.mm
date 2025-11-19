@interface CSStoreValidate
@end

@implementation CSStoreValidate

void ___CSStoreValidate_block_invoke_3(uint64_t a1, CSStore2::Table *this)
{
  if (*(this + 18) == 0x3FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = CSStore2::Table::copyCFName(this);
    (*(v4 + 16))(v4, "Table %s (%llx) has no remaining unit identifiers.", [(__CFString *)v5 UTF8String], (4 * *this));

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void ___CSStoreValidate_block_invoke_4(uint64_t a1, _DWORD *a2)
{
  v2 = a2[19];
  if (v2 == -1)
  {
    return;
  }

  v5 = *(a1 + 48);
  v6 = *(*v5 + 8);
  v7 = *(v6 + 12);
  v8 = (v6 + v2);
  if (v7 <= v2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 32);
  v11 = v10;
  v12 = *v9;
  if (*v9 - 16 > 0x1FF0)
  {
    v10[2](v10, "Nonsensical bucket count %llu", *v9);
LABEL_140:

    return;
  }

  v13 = v9 + 1;
  v14 = *v5;
  if (*v5)
  {
    v15 = *(v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = v13 - v15;
  if (v13 < v15 || HIDWORD(v16))
  {
    v17 = *(v14 + 8);
    v18 = *(v17 + 12);
    LODWORD(v16) = -1;
  }

  else
  {
    v17 = *(v14 + 8);
    v18 = *(v17 + 12);
    if (v16 + 1 > v18 || v16 == -1)
    {
      LODWORD(v16) = -1;
    }
  }

  if (__CFADD__(v16, 8 * v12) || v16 + 8 * v12 > v18)
  {
    if (v14)
    {
      v54 = v17;
    }

    else
    {
      v54 = 0;
    }

    v52 = v9 >= v54;
    v55 = v9 - v54;
    v56 = !v52;
    if (HIDWORD(v55))
    {
      v56 = 1;
    }

    v57 = v55 + 1 > v18 || v55 == -1;
    v58 = ((v56 | v57) & 1) == 0;
    v59 = 0xFFFFFFFFLL;
    if (v58)
    {
      v59 = v55;
    }

    v10[2](v10, "Hash map at %llu has invalid buckets range %llu-(%llu*%zu)", v59, v16, *v9, 8uLL);
    goto LABEL_140;
  }

  v20 = 0;
  v21 = *MEMORY[0x1E69E54E8];
  v82 = *MEMORY[0x1E69E54E8];
  v83 = *(MEMORY[0x1E69E54E8] + 24);
  if (v12 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v12;
  }

  do
  {
    v23 = &v13[2 * v20];
    v24 = v23[1];
    if (v24 != -1)
    {
      v25 = *v23;
      if (v25 >> 29 || __CFADD__(v24, 8 * v25) || (v26 = *(v14 + 8), v27 = *(v26 + 12), v24 + 8 * v25 > v27))
      {
        if (v14)
        {
          v72 = v17;
        }

        else
        {
          v72 = 0;
        }

        v52 = v9 >= v72;
        v73 = v9 - v72;
        v74 = !v52;
        if (HIDWORD(v73))
        {
          v74 = 1;
        }

        v75 = v73 + 1 > v18 || v73 == -1;
        if ((v74 | v75))
        {
          v73 = 0xFFFFFFFFLL;
        }

        v10[2](v10, "Bucket [%llu,%llu] has invalid key-value pairs offset range %llu-(%llu*%zu)", v73, v20, v24, v25, 8uLL);
        goto LABEL_140;
      }

      v28 = v26 + v24;
      v29 = v27 <= v24 ? 0 : v28;
      if (v25)
      {
        for (i = 0; v25 != i; ++i)
        {
          v31 = v29[1];
          if (v31 != -1)
          {
            if (v18 <= v31)
            {
              std::ostringstream::basic_ostringstream[abi:nn200100](&v86);
              MEMORY[0x1BFAE5BE0](&v86, v29[1]);
              v60 = *v5;
              if (*v5)
              {
                v61 = *(v60 + 8);
              }

              else
              {
                v61 = 0;
              }

              v66 = 0xFFFFFFFFLL;
              v52 = v9 >= v61;
              v67 = v9 - v61;
              if (v52 && !HIDWORD(v67))
              {
                if ((v67 + 1) > *(*(v60 + 8) + 12) || v67 == -1)
                {
                  v66 = 0xFFFFFFFFLL;
                }

                else
                {
                  v66 = v67;
                }
              }

              if ((v93 & 0x10) != 0)
              {
                v70 = v92;
                if (v92 < v89)
                {
                  v92 = v89;
                  v70 = v89;
                }

                locale = v88[4].__locale_;
              }

              else
              {
                if ((v93 & 8) == 0)
                {
                  v69 = 0;
                  v85 = 0;
LABEL_133:
                  *(&__dst + v69) = 0;
                  p_dst = &__dst;
                  if (v85 < 0)
                  {
                    p_dst = __dst;
                  }

                  v11[2](v11, "Key-value pair [%llu,%llu,%llu] has invalid value (interpreted as Offset) %s", v66, v20, i, p_dst);
                  if (v85 < 0)
                  {
                    operator delete(__dst);
                  }

                  v86 = v82;
                  *(&v86 + *(v82 - 24)) = v83;
                  v87 = MEMORY[0x1E69E5548] + 16;
                  if (v91 < 0)
                  {
                    operator delete(__p);
                  }

                  v87 = MEMORY[0x1E69E5538] + 16;
                  std::locale::~locale(v88);
                  std::ostream::~ostream();
                  MEMORY[0x1BFAE5C80](&v94);
                  goto LABEL_140;
                }

                locale = v88[1].__locale_;
                v70 = v88[3].__locale_;
              }

              v69 = v70 - locale;
              if ((v70 - locale) >= 0x7FFFFFFFFFFFFFF8)
              {
                std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
              }

              if (v69 >= 0x17)
              {
                operator new();
              }

              v85 = v70 - locale;
              if (v69)
              {
                memmove(&__dst, locale, v69);
              }

              goto LABEL_133;
            }

            v32 = (*v29 >> 2) % v12;
            if (v20 != v32)
            {
              if (v14)
              {
                v62 = v17;
              }

              else
              {
                v62 = 0;
              }

              v52 = v9 >= v62;
              v63 = v9 - v62;
              v64 = !v52;
              if (HIDWORD(v63))
              {
                v64 = 1;
              }

              v65 = v63 + 1 > v18 || v63 == -1;
              if ((v64 | v65))
              {
                v63 = 0xFFFFFFFFLL;
              }

              v10[2](v10, "Key-value pair [%llu,%llu,%llu] is in the wrong bucket (should be %llu)", v63, v20, i, v32);
              goto LABEL_140;
            }
          }

          v29 += 2;
        }
      }
    }

    ++v20;
  }

  while (v20 != v22);

  v33 = *(*(a1 + 40) + 8);
  v34 = *(v33 + 24);
  v35 = *v9;
  if (!v35)
  {
    goto LABEL_64;
  }

  v36 = 0;
  v37 = *(a1 + 48);
  do
  {
    v38 = &v13[2 * v36];
    v39 = *v38;
    if (*v38 - 0x20000000 >= 0xE0000001)
    {
      v40 = v38[1];
      v41 = v40 + 8 * v39;
      if (!__CFADD__(v40, 8 * v39))
      {
        v42 = *(*v37 + 8);
        v43 = *(v42 + 12);
        if (v41 <= v43 && v43 > v40)
        {
          v45 = 0;
          v46 = (v42 + v40);
          while (1)
          {
            v47 = v46[1];
            if (v47 != -1)
            {
              v48 = *(*v37 + 8);
              v49 = *(v48 + 12);
              if (v49 <= v47)
              {
                v78 = *v46;
                v80 = (4 * *a2);
                (*(*(a1 + 32) + 16))(*(a1 + 32), "Unit %llx in table %llx has an invalid address.");
                goto LABEL_59;
              }

              v50 = (v48 + v47);
              v51 = *(v48 + v47 + 4);
              if (v51 >> 25)
              {
                v77 = *v46;
                (*(*(a1 + 32) + 16))(*(a1 + 32), "Unit %llx is insanely long (payload %llu bytes long.)");
LABEL_59:
                v34 = 0;
                goto LABEL_60;
              }

              if (v47 >= 0xFFFFFFF8 || v47 + 8 > v49 || (v52 = __CFADD__(v47, v51 + 8), v53 = v47 + v51 + 8, v52) || v53 > v49)
              {
                v79 = *v46;
                (*(*(a1 + 32) + 16))(*(a1 + 32), "Unit %llx is out of range (total %llu bytes long.)");
                goto LABEL_59;
              }

              if (((*a2 & 0x3FFFFFFF) == 1073732445) != (*v50 >> 30 == 1))
              {
                v81 = *v46;
                (*(*(a1 + 32) + 16))(*(a1 + 32), "Unit %llx/%llx is garbage");
                goto LABEL_59;
              }
            }

LABEL_60:
            ++v45;
            v46 += 2;
            if (v45 >= *v38)
            {
              v35 = *v9;
              break;
            }
          }
        }
      }
    }

    ++v36;
  }

  while (v36 < v35);
  v33 = *(*(a1 + 40) + 8);
LABEL_64:
  *(v33 + 24) = v34;
}

void ___CSStoreValidate_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v13 = [v11 initWithFormat:v12 arguments:&a9];

  fprintf(*MEMORY[0x1E69E9848], "*** %s ***\n", [v13 UTF8String]);
  objc_autoreleasePoolPop(v10);
}

@end