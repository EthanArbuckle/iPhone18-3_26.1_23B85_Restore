void *anonymous namespace::Demangler::printLifetime(void *this, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = this[2];
    if (a2 - 1 >= v2)
    {
      *(this + 49) = 1;
    }

    else
    {
      if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
      {
        v3 = this[7];
        v4 = this[8];
        v5 = v4 + 1;
        v6 = this[9];
        if (v4 + 1 > v6)
        {
          v7 = a2;
          v8 = v4 + 993;
          if (2 * v6 <= v8)
          {
            v9 = v8;
          }

          else
          {
            v9 = 2 * v6;
          }

          this[9] = v9;
          v10 = this;
          v3 = malloc_type_realloc(v3, v9, 0x100004077774924uLL);
          v10[7] = v3;
          if (!v3)
          {
            goto LABEL_54;
          }

          this = v10;
          v4 = v10[8];
          v5 = v4 + 1;
          a2 = v7;
        }

        this[8] = v5;
        *(v3 + v4) = 39;
      }

      v11 = v2 - a2;
      v12 = v2 - a2 >= 0x19;
      v13 = v2 - a2 - 25;
      if (v13 != 0 && v12)
      {
        if ((*(this + 49) & 1) == 0)
        {
          if (*(this + 48) != 1)
          {
            goto LABEL_45;
          }

          v28 = this[7];
          v29 = this[8];
          v30 = v29 + 1;
          v31 = this[9];
          if (v29 + 1 > v31)
          {
            v32 = v29 + 993;
            if (2 * v31 <= v32)
            {
              v33 = v32;
            }

            else
            {
              v33 = 2 * v31;
            }

            this[9] = v33;
            v34 = this;
            v28 = malloc_type_realloc(v28, v33, 0x100004077774924uLL);
            v34[7] = v28;
            if (!v28)
            {
              goto LABEL_54;
            }

            this = v34;
            v29 = v34[8];
            v30 = v29 + 1;
          }

          this[8] = v30;
          *(v28 + v29) = 122;
          if ((*(this + 49) & 1) == 0)
          {
LABEL_45:
            if (*(this + 48) == 1)
            {
              v35 = 0;
              do
              {
                v44[v35-- + 20] = (v13 % 0xA) | 0x30;
                v36 = v13 > 9;
                v13 /= 0xAuLL;
              }

              while (v36);
              if (v35)
              {
                v37 = this[7];
                v38 = this[8];
                v39 = v38 - v35;
                v40 = this[9];
                if (v38 - v35 <= v40)
                {
                  v42 = this;
                }

                else
                {
                  if (2 * v40 <= v39 + 992)
                  {
                    v41 = v39 + 992;
                  }

                  else
                  {
                    v41 = 2 * v40;
                  }

                  this[9] = v41;
                  v42 = this;
                  v43 = malloc_type_realloc(v37, v41, 0x100004077774924uLL);
                  v42[7] = v43;
                  if (!v43)
                  {
                    goto LABEL_54;
                  }

                  v37 = v43;
                  v38 = v42[8];
                }

                this = memcpy(&v37[v38], &v44[v35 + 21], -v35);
                v42[8] -= v35;
              }
            }
          }
        }
      }

      else if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
      {
        v14 = this[7];
        v15 = this[8];
        v16 = v15 + 1;
        v17 = this[9];
        if (v15 + 1 <= v17)
        {
LABEL_21:
          this[8] = v16;
          v14[v15] = v11 + 97;
          return this;
        }

        v18 = v15 + 993;
        if (2 * v17 <= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = 2 * v17;
        }

        this[9] = v19;
        v20 = this;
        v14 = malloc_type_realloc(v14, v19, 0x100004077774924uLL);
        v20[7] = v14;
        if (v14)
        {
          this = v20;
          v15 = v20[8];
          v16 = v15 + 1;
          goto LABEL_21;
        }

LABEL_54:
        abort();
      }
    }
  }

  else if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
  {
    v21 = this[7];
    v22 = this[8];
    v23 = this[9];
    if (v22 + 2 > v23)
    {
      v24 = v22 + 994;
      v25 = 2 * v23;
      if (v25 <= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      this[9] = v26;
      v27 = this;
      v21 = malloc_type_realloc(v21, v26, 0x100004077774924uLL);
      v27[7] = v21;
      if (!v21)
      {
        goto LABEL_54;
      }

      this = v27;
      v22 = v27[8];
    }

    *&v21[v22] = 24359;
    this[8] += 2;
  }

  return this;
}

char *anonymous namespace::Demangler::demangleFnSig(_anonymous_namespace_::Demangler *this)
{
  v2 = *(this + 2);
  if (*(this + 49))
  {
    goto LABEL_2;
  }

  v4 = *(this + 5);
  if (v4 >= *(this + 4))
  {
    goto LABEL_14;
  }

  if (*(*(this + 3) + v4) != 85)
  {
    goto LABEL_14;
  }

  *(this + 5) = v4 + 1;
  if (*(this + 48) != 1)
  {
    goto LABEL_14;
  }

  result = *(this + 7);
  v5 = *(this + 8);
  v6 = *(this + 9);
  if (v5 + 7 > v6)
  {
    v7 = v5 + 999;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *(this + 9) = v9;
    result = malloc_type_realloc(result, v9, 0x100004077774924uLL);
    *(this + 7) = result;
    if (!result)
    {
      goto LABEL_102;
    }

    v5 = *(this + 8);
  }

  v10 = &result[v5];
  *(v10 + 3) = 543516257;
  *v10 = 1634954869;
  *(this + 8) += 7;
  if ((*(this + 49) & 1) == 0)
  {
LABEL_14:
    v11 = *(this + 5);
    if (v11 >= *(this + 4) || *(*(this + 3) + v11) != 75)
    {
      goto LABEL_80;
    }

    *(this + 5) = v11 + 1;
    if (*(this + 48) == 1)
    {
      result = *(this + 7);
      v12 = *(this + 8);
      v13 = *(this + 9);
      if (v12 + 8 > v13)
      {
        v14 = v12 + 1000;
        v15 = 2 * v13;
        if (v15 <= v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v15;
        }

        *(this + 9) = v16;
        result = malloc_type_realloc(result, v16, 0x100004077774924uLL);
        *(this + 7) = result;
        if (!result)
        {
          goto LABEL_102;
        }

        v12 = *(this + 8);
      }

      *&result[v12] = 0x22206E7265747865;
      *(this + 8) += 8;
      if (*(this + 49))
      {
        goto LABEL_34;
      }
    }

    v17 = *(this + 5);
    if (v17 >= *(this + 4) || *(*(this + 3) + v17) != 67)
    {
LABEL_34:
      if (v65 == 1)
      {
        *(this + 49) = v65;
      }

      v23 = v64;
      if (v64 && (*(this + 49) & 1) == 0)
      {
        v56 = v63;
        do
        {
          if (*v56 == 95)
          {
            v57 = 45;
          }

          else
          {
            v57 = *v56;
          }

          if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
          {
            result = *(this + 7);
            v58 = *(this + 8);
            v59 = v58 + 1;
            v60 = *(this + 9);
            if (v58 + 1 > v60)
            {
              v61 = v58 + 993;
              if (2 * v60 <= v61)
              {
                v62 = v61;
              }

              else
              {
                v62 = 2 * v60;
              }

              *(this + 9) = v62;
              result = malloc_type_realloc(result, v62, 0x100004077774924uLL);
              *(this + 7) = result;
              if (!result)
              {
                goto LABEL_102;
              }

              v58 = *(this + 8);
              v59 = v58 + 1;
            }

            *(this + 8) = v59;
            result[v58] = v57;
          }

          ++v56;
        }

        while (--v23);
      }
    }

    else
    {
      *(this + 5) = v17 + 1;
      if (*(this + 48) == 1)
      {
        result = *(this + 7);
        v18 = *(this + 8);
        v19 = *(this + 9);
        if (v18 + 1 > v19)
        {
          v20 = v18 + 993;
          v21 = 2 * v19;
          if (v21 <= v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = v21;
          }

          *(this + 9) = v22;
          result = malloc_type_realloc(result, v22, 0x100004077774924uLL);
          *(this + 7) = result;
          if (!result)
          {
            goto LABEL_102;
          }

          v18 = *(this + 8);
        }

        result[v18] = 67;
        ++*(this + 8);
      }
    }

    if ((*(this + 49) & 1) == 0)
    {
      if (*(this + 48) != 1)
      {
        goto LABEL_80;
      }

      result = *(this + 7);
      v24 = *(this + 8);
      v25 = *(this + 9);
      if (v24 + 2 > v25)
      {
        v26 = v24 + 994;
        v27 = 2 * v25;
        if (v27 <= v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        *(this + 9) = v28;
        result = malloc_type_realloc(result, v28, 0x100004077774924uLL);
        *(this + 7) = result;
        if (!result)
        {
          goto LABEL_102;
        }

        v24 = *(this + 8);
      }

      *&result[v24] = 8226;
      *(this + 8) += 2;
      if ((*(this + 49) & 1) == 0)
      {
LABEL_80:
        if (*(this + 48) != 1)
        {
          goto LABEL_105;
        }

        result = *(this + 7);
        v29 = *(this + 8);
        v30 = *(this + 9);
        if (v29 + 3 > v30)
        {
          v31 = v29 + 995;
          v32 = 2 * v30;
          if (v32 <= v31)
          {
            v33 = v31;
          }

          else
          {
            v33 = v32;
          }

          *(this + 9) = v33;
          result = malloc_type_realloc(result, v33, 0x100004077774924uLL);
          *(this + 7) = result;
          if (!result)
          {
            goto LABEL_102;
          }

          v29 = *(this + 8);
        }

        v34 = &result[v29];
        v34[2] = 40;
        *v34 = 28262;
        *(this + 8) += 3;
        if ((*(this + 49) & 1) == 0)
        {
LABEL_105:
          v35 = 0;
          v36 = 0;
          while (1)
          {
            v37 = *(this + 5);
            if (v37 < *(this + 4) && *(*(this + 3) + v37) == 69)
            {
              break;
            }

            if (v35 && *(this + 48) == 1)
            {
              v38 = *(this + 7);
              v39 = *(this + 8);
              v40 = *(this + 9);
              if (v39 + 2 > v40)
              {
                v41 = v39 + 994;
                v42 = 2 * v40;
                if (v42 <= v41)
                {
                  v43 = v41;
                }

                else
                {
                  v43 = v42;
                }

                *(this + 9) = v43;
                v38 = malloc_type_realloc(v38, v43, 0x100004077774924uLL);
                *(this + 7) = v38;
                if (!v38)
                {
                  goto LABEL_102;
                }

                v39 = *(this + 8);
              }

              *&v38[v39] = 8236;
              *(this + 8) += 2;
            }

            v36 = *(this + 49);
            --v35;
            if (v36)
            {
              goto LABEL_2;
            }
          }

          *(this + 5) = v37 + 1;
          if (*(this + 48) == 1)
          {
            result = *(this + 7);
            v44 = *(this + 8);
            v45 = *(this + 9);
            if (v44 + 1 > v45)
            {
              v46 = v44 + 993;
              v47 = 2 * v45;
              if (v47 <= v46)
              {
                v48 = v46;
              }

              else
              {
                v48 = v47;
              }

              *(this + 9) = v48;
              result = malloc_type_realloc(result, v48, 0x100004077774924uLL);
              *(this + 7) = result;
              if (!result)
              {
                goto LABEL_102;
              }

              v44 = *(this + 8);
            }

            result[v44] = 41;
            ++*(this + 8);
            v36 = *(this + 49);
          }

          if ((v36 & 1) == 0)
          {
            v49 = *(this + 5);
            if (v49 < *(this + 4) && *(*(this + 3) + v49) == 117)
            {
              *(this + 5) = v49 + 1;
              goto LABEL_3;
            }

            if (*(this + 48) == 1)
            {
              v50 = *(this + 7);
              v51 = *(this + 8);
              v52 = *(this + 9);
              if (v51 + 4 <= v52)
              {
LABEL_87:
                *&v50[v51] = 540945696;
                *(this + 8) += 4;
                goto LABEL_2;
              }

              v53 = v51 + 996;
              v54 = 2 * v52;
              if (v54 <= v53)
              {
                v55 = v53;
              }

              else
              {
                v55 = v54;
              }

              *(this + 9) = v55;
              v50 = malloc_type_realloc(v50, v55, 0x100004077774924uLL);
              *(this + 7) = v50;
              if (v50)
              {
                v51 = *(this + 8);
                goto LABEL_87;
              }

LABEL_102:
              abort();
            }
          }
        }
      }
    }
  }

LABEL_2:
LABEL_3:
  *(this + 2) = v2;
  return result;
}

uint64_t anonymous namespace::Demangler::demangleDynBounds(_anonymous_namespace_::Demangler *this)
{
  v2 = *(this + 2);
  if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
  {
    v3 = *(this + 7);
    v4 = *(this + 8);
    v5 = *(this + 9);
    if (v4 + 4 > v5)
    {
      v6 = v4 + 996;
      v7 = 2 * v5;
      if (v7 <= v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = v7;
      }

      *(this + 9) = v8;
      v3 = malloc_type_realloc(v3, v8, 0x100004077774924uLL);
      *(this + 7) = v3;
      if (!v3)
      {
LABEL_107:
        abort();
      }

      v4 = *(this + 8);
    }

    *&v3[v4] = 544110948;
    *(this + 8) += 4;
  }

  if ((*(this + 49) & 1) == 0)
  {
    for (i = 0; ; ++i)
    {
      v12 = *(this + 5);
      if (v12 < *(this + 4) && *(*(this + 3) + v12) == 69)
      {
        *(this + 5) = v12 + 1;
        goto LABEL_11;
      }

      if (i && *(this + 48) == 1)
      {
        v13 = *(this + 7);
        v14 = *(this + 8);
        v15 = *(this + 9);
        if (v14 + 3 > v15)
        {
          v16 = v14 + 995;
          v17 = 2 * v15;
          if (v17 <= v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = v17;
          }

          *(this + 9) = v18;
          v13 = malloc_type_realloc(v13, v18, 0x100004077774924uLL);
          *(this + 7) = v13;
          if (!v13)
          {
            goto LABEL_107;
          }

          v14 = *(this + 8);
        }

        v19 = &v13[v14];
        v19[2] = 32;
        *v19 = 11040;
        *(this + 8) += 3;
      }

      if (*(this + 49))
      {
        goto LABEL_11;
      }

      v20 = *(this + 5);
      if (v20 < *(this + 4))
      {
        break;
      }

LABEL_100:
      if (result)
      {
LABEL_101:
        if (*(this + 48) == 1)
        {
          result = *(this + 7);
          v11 = *(this + 8);
          v57 = *(this + 9);
          if (v11 + 1 > v57)
          {
            v58 = v11 + 993;
            v59 = 2 * v57;
            if (v59 <= v58)
            {
              v60 = v58;
            }

            else
            {
              v60 = v59;
            }

            *(this + 9) = v60;
            result = malloc_type_realloc(result, v60, 0x100004077774924uLL);
            *(this + 7) = result;
            if (!result)
            {
              goto LABEL_107;
            }

            v11 = *(this + 8);
          }

          *(result + v11) = 62;
          ++*(this + 8);
          if (*(this + 49))
          {
            goto LABEL_11;
          }
        }
      }
    }

    while (1)
    {
      if (*(*(this + 3) + v20) != 112)
      {
        goto LABEL_100;
      }

      *(this + 5) = v20 + 1;
      if (result)
      {
        if (*(this + 48))
        {
          v21 = *(this + 7);
          v22 = *(this + 8);
          v23 = *(this + 9);
          if (v22 + 2 > v23)
          {
            v24 = v22 + 994;
            v25 = 2 * v23;
            if (v25 <= v24)
            {
              v26 = v24;
            }

            else
            {
              v26 = v25;
            }

            *(this + 9) = v26;
            v21 = malloc_type_realloc(v21, v26, 0x100004077774924uLL);
            *(this + 7) = v21;
            if (!v21)
            {
              goto LABEL_107;
            }

            v22 = *(this + 8);
          }

          *&v21[v22] = 8236;
          *(this + 8) += 2;
        }
      }

      else if (*(this + 48))
      {
        v27 = *(this + 7);
        v28 = *(this + 8);
        v29 = v28 + 1;
        v30 = *(this + 9);
        if (v28 + 1 > v30)
        {
          v31 = v28 + 993;
          if (2 * v30 <= v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = 2 * v30;
          }

          *(this + 9) = v32;
          v27 = malloc_type_realloc(v27, v32, 0x100004077774924uLL);
          *(this + 7) = v27;
          if (!v27)
          {
            goto LABEL_107;
          }

          v28 = *(this + 8);
          v29 = v28 + 1;
        }

        *(this + 8) = v29;
        *(v27 + v28) = 60;
      }

      if ((*(this + 49) & 1) == 0)
      {
        v33 = *(this + 4);
        v34 = *(this + 5);
        if (v34 < v33 && *(*(this + 3) + v34) == 117)
        {
          *(this + 5) = ++v34;
        }

        if (v34 < v33)
        {
          v35 = *(this + 3);
          v36 = *(v35 + v34);
          if ((v36 - 48) <= 9)
          {
            if (v36 == 48)
            {
              v37 = 0;
              *(this + 5) = ++v34;
LABEL_55:
              if (v34 < v33 && *(v35 + v34) == 95)
              {
                *(this + 5) = ++v34;
              }

              if (v37 <= v33 - v34)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v37 = 0;
              do
              {
                if (*(v35 + v34) - 48 > 9)
                {
                  goto LABEL_55;
                }

                if (v37 > 0x1999999999999999)
                {
                  goto LABEL_59;
                }

                v38 = v34 + 1;
                *(this + 5) = v34 + 1;
                v39 = *(v35 + v34);
                if (10 * v37 > 47 - v39)
                {
                  goto LABEL_59;
                }

                v37 = 10 * v37 + v39 - 48;
                v34 = v38;
              }

              while (v33 != v38);
              v34 = v33;
              if (!v37)
              {
LABEL_69:
                if (v33 < v34)
                {
                  goto LABEL_107;
                }

                *(this + 5) = v34 + v37;
                if (!v37)
                {
                  goto LABEL_92;
                }

                v40 = 0;
                v41 = (v35 + v34);
                do
                {
                  v42 = v41[v40];
                  if ((v42 - 48) >= 0xA && (v42 - 97) >= 0x1A && v42 != 95 && (v42 - 65) >= 0x1A)
                  {
                    goto LABEL_59;
                  }

                  ++v40;
                }

                while (v37 != v40);
                if (*(this + 48) != 1)
                {
                  goto LABEL_92;
                }

                v45 = *(this + 7);
                v46 = *(this + 8);
                v47 = v46 + v37;
                v48 = *(this + 9);
                if (v46 + v37 > v48)
                {
                  if (2 * v48 <= v47 + 992)
                  {
                    v49 = v47 + 992;
                  }

                  else
                  {
                    v49 = 2 * v48;
                  }

                  *(this + 9) = v49;
                  v45 = malloc_type_realloc(v45, v49, 0x100004077774924uLL);
                  *(this + 7) = v45;
                  if (!v45)
                  {
                    goto LABEL_107;
                  }

                  v46 = *(this + 8);
                }

                memcpy(&v45[v46], v41, v37);
                *(this + 8) += v37;
                if ((*(this + 49) & 1) == 0)
                {
LABEL_92:
                  if (*(this + 48) == 1)
                  {
                    v50 = *(this + 7);
                    v51 = *(this + 8);
                    v52 = *(this + 9);
                    if (v51 + 3 > v52)
                    {
                      v53 = v51 + 995;
                      v54 = 2 * v52;
                      if (v54 <= v53)
                      {
                        v55 = v53;
                      }

                      else
                      {
                        v55 = v54;
                      }

                      *(this + 9) = v55;
                      v50 = malloc_type_realloc(v50, v55, 0x100004077774924uLL);
                      *(this + 7) = v50;
                      if (!v50)
                      {
                        goto LABEL_107;
                      }

                      v51 = *(this + 8);
                    }

                    v56 = &v50[v51];
                    v56[2] = 32;
                    *v56 = 15648;
                    *(this + 8) += 3;
                  }
                }

                goto LABEL_60;
              }
            }
          }
        }
      }

LABEL_59:
      *(this + 49) = 1;
LABEL_60:
      if (*(this + 49))
      {
        break;
      }

      v20 = *(this + 5);
      result = 1;
      if (v20 >= *(this + 4))
      {
        goto LABEL_101;
      }
    }
  }

LABEL_11:
  *(this + 2) = v2;
  return result;
}

uint64_t anonymous namespace::Demangler::demangleBackref<anonymous namespace::Demangler::demangleType(void)::$_0>(uint64_t result, _anonymous_namespace_::Demangler *this)
{
  if (*(result + 49))
  {
    goto LABEL_23;
  }

  v2 = *(result + 32);
  v3 = *(result + 40);
  if (v3 >= v2)
  {
    goto LABEL_23;
  }

  v4 = *(result + 24);
  if (*(v4 + v3) != 95)
  {
    v8 = 0;
    v9 = (v4 + v3);
    v10 = v3 + 1;
    while (1)
    {
      *(result + 40) = v10;
      v12 = *v9++;
      v11 = v12;
      if (v12 == 95)
      {
        break;
      }

      if ((v11 - 48) >= 0xAu)
      {
        if ((v11 - 97) >= 0x1Au)
        {
          if ((v11 - 65) > 0x19u)
          {
            goto LABEL_23;
          }

          v13 = -29;
        }

        else
        {
          v13 = -87;
        }
      }

      else
      {
        v13 = -48;
      }

      if (v8 <= 0x421084210842108)
      {
        v14 = v13 + v11;
        v15 = 62 * v8;
        if (!__CFADD__(v14, v15))
        {
          v8 = v14 + v15;
          if (v2 != v10++)
          {
            continue;
          }
        }
      }

      goto LABEL_23;
    }

    if (v8 != -1)
    {
      v5 = v8 + 1;
      v6 = *(result + 40);
      if (v8 + 1 < v6)
      {
        goto LABEL_5;
      }
    }

LABEL_23:
    *(result + 49) = 1;
    return result;
  }

  v5 = 0;
  *(result + 40) = v3 + 1;
  v6 = v3 + 1;
  if (v3 == -1)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (*(result + 48) == 1)
  {
    *(result + 40) = v5;
    v7 = result;
    *(v7 + 40) = v6;
  }

  return result;
}

char *anonymous namespace::Demangler::demangleConstBool(_anonymous_namespace_::Demangler *this)
{
  v15 = 0;
  v16 = 0;
  if (v16 != 1)
  {
    goto LABEL_14;
  }

  v3 = *v15;
  if (v3 != 49)
  {
    if (v3 == 48)
    {
      if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
      {
        result = *(this + 7);
        v4 = *(this + 8);
        v5 = *(this + 9);
        if (v4 + 5 <= v5)
        {
LABEL_12:
          v9 = &result[v4];
          v9[4] = 101;
          *v9 = 1936482662;
          *(this + 8) += 5;
          return result;
        }

        v6 = v4 + 997;
        v7 = 2 * v5;
        if (v7 <= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        *(this + 9) = v8;
        result = malloc_type_realloc(result, v8, 0x100004077774924uLL);
        *(this + 7) = result;
        if (result)
        {
          v4 = *(this + 8);
          goto LABEL_12;
        }

LABEL_24:
        abort();
      }

      return result;
    }

LABEL_14:
    *(this + 49) = 1;
    return result;
  }

  if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
  {
    result = *(this + 7);
    v10 = *(this + 8);
    v11 = *(this + 9);
    if (v10 + 4 > v11)
    {
      v12 = v10 + 996;
      v13 = 2 * v11;
      if (v13 <= v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }

      *(this + 9) = v14;
      result = malloc_type_realloc(result, v14, 0x100004077774924uLL);
      *(this + 7) = result;
      if (!result)
      {
        goto LABEL_24;
      }

      v10 = *(this + 8);
    }

    *&result[v10] = 1702195828;
    *(this + 8) += 4;
  }

  return result;
}

uint64_t anonymous namespace::Demangler::demangleConstChar(_anonymous_namespace_::Demangler *this)
{
  v46 = 0;
  v47 = 0;
  if ((*(this + 49) & 1) != 0 || (v3 = v47, v47 >= 7))
  {
    *(this + 49) = 1;
    return result;
  }

  if (*(this + 48) == 1)
  {
    v4 = *(this + 7);
    v5 = *(this + 8);
    v6 = *(this + 9);
    if (v5 + 1 > v6)
    {
      v7 = result;
      v8 = v5 + 993;
      v9 = 2 * v6;
      if (v9 <= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      *(this + 9) = v10;
      v11 = malloc_type_realloc(v4, v10, 0x100004077774924uLL);
      *(this + 7) = v11;
      if (!v11)
      {
        goto LABEL_90;
      }

      v4 = v11;
      v5 = *(this + 8);
      result = v7;
    }

    *(v4 + v5) = 39;
    ++*(this + 8);
  }

  if (result > 33)
  {
    switch(result)
    {
      case '""':
        if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
        {
          result = *(this + 7);
          v26 = *(this + 8);
          v27 = *(this + 9);
          if (v26 + 1 > v27)
          {
            v28 = v26 + 993;
            v29 = 2 * v27;
            if (v29 <= v28)
            {
              v30 = v28;
            }

            else
            {
              v30 = v29;
            }

            *(this + 9) = v30;
            result = malloc_type_realloc(result, v30, 0x100004077774924uLL);
            *(this + 7) = result;
            if (!result)
            {
              goto LABEL_90;
            }

            v26 = *(this + 8);
          }

          *(result + v26) = 34;
          ++*(this + 8);
          if (*(this + 49))
          {
            return result;
          }

          goto LABEL_79;
        }

        goto LABEL_78;
      case '\'':
        if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
        {
          result = *(this + 7);
          v12 = *(this + 8);
          v37 = *(this + 9);
          if (v12 + 2 > v37)
          {
            v38 = v12 + 994;
            v39 = 2 * v37;
            if (v39 <= v38)
            {
              v40 = v38;
            }

            else
            {
              v40 = v39;
            }

            *(this + 9) = v40;
            result = malloc_type_realloc(result, v40, 0x100004077774924uLL);
            *(this + 7) = result;
            if (!result)
            {
              goto LABEL_90;
            }

            v12 = *(this + 8);
          }

          v17 = 10076;
          goto LABEL_77;
        }

        goto LABEL_78;
      case '\\':
        if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
        {
          result = *(this + 7);
          v12 = *(this + 8);
          v18 = *(this + 9);
          if (v12 + 2 > v18)
          {
            v19 = v12 + 994;
            v20 = 2 * v18;
            if (v20 <= v19)
            {
              v21 = v19;
            }

            else
            {
              v21 = v20;
            }

            *(this + 9) = v21;
            result = malloc_type_realloc(result, v21, 0x100004077774924uLL);
            *(this + 7) = result;
            if (!result)
            {
              goto LABEL_90;
            }

            v12 = *(this + 8);
          }

          v17 = 23644;
          goto LABEL_77;
        }

        goto LABEL_78;
    }

    goto LABEL_57;
  }

  if (result == 9)
  {
    if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
    {
      result = *(this + 7);
      v12 = *(this + 8);
      v22 = *(this + 9);
      if (v12 + 2 > v22)
      {
        v23 = v12 + 994;
        v24 = 2 * v22;
        if (v24 <= v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        *(this + 9) = v25;
        result = malloc_type_realloc(result, v25, 0x100004077774924uLL);
        *(this + 7) = result;
        if (!result)
        {
          goto LABEL_90;
        }

        v12 = *(this + 8);
      }

      v17 = 29788;
      goto LABEL_77;
    }

    goto LABEL_78;
  }

  if (result != 10)
  {
    if (result == 13)
    {
      if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
      {
        result = *(this + 7);
        v12 = *(this + 8);
        v13 = *(this + 9);
        if (v12 + 2 > v13)
        {
          v14 = v12 + 994;
          v15 = 2 * v13;
          if (v15 <= v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = v15;
          }

          *(this + 9) = v16;
          result = malloc_type_realloc(result, v16, 0x100004077774924uLL);
          *(this + 7) = result;
          if (!result)
          {
            goto LABEL_90;
          }

          v12 = *(this + 8);
        }

        v17 = 29276;
LABEL_77:
        *(result + v12) = v17;
        *(this + 8) += 2;
        goto LABEL_78;
      }

      goto LABEL_78;
    }

LABEL_57:
    if ((result - 32) > 0x5E)
    {
      v32 = this;
      v31 = 125;
    }

    else
    {
      v31 = result;
      v32 = this;
    }

    if (*(this + 49))
    {
      return result;
    }

    goto LABEL_79;
  }

  if ((*(this + 49) & 1) == 0 && *(this + 48) == 1)
  {
    result = *(this + 7);
    v12 = *(this + 8);
    v33 = *(this + 9);
    if (v12 + 2 > v33)
    {
      v34 = v12 + 994;
      v35 = 2 * v33;
      if (v35 <= v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      *(this + 9) = v36;
      result = malloc_type_realloc(result, v36, 0x100004077774924uLL);
      *(this + 7) = result;
      if (!result)
      {
        goto LABEL_90;
      }

      v12 = *(this + 8);
    }

    v17 = 28252;
    goto LABEL_77;
  }

LABEL_78:
  if (*(this + 49))
  {
    return result;
  }

LABEL_79:
  if (*(this + 48) == 1)
  {
    result = *(this + 7);
    v41 = *(this + 8);
    v42 = v41 + 1;
    v43 = *(this + 9);
    if (v41 + 1 <= v43)
    {
LABEL_86:
      *(this + 8) = v42;
      *(result + v41) = 39;
      return result;
    }

    v44 = v41 + 993;
    if (2 * v43 <= v44)
    {
      v45 = v44;
    }

    else
    {
      v45 = 2 * v43;
    }

    *(this + 9) = v45;
    result = malloc_type_realloc(result, v45, 0x100004077774924uLL);
    *(this + 7) = result;
    if (result)
    {
      v41 = *(this + 8);
      v42 = v41 + 1;
      goto LABEL_86;
    }

LABEL_90:
    abort();
  }

  return result;
}

uint64_t anonymous namespace::Demangler::parseHexNumber(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 40);
  if ((*(a1 + 49) & 1) != 0 || v2 >= *(a1 + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*(a1 + 24) + v2);
    if ((v3 - 48) < 0xA)
    {
      goto LABEL_8;
    }
  }

  if ((v3 - 97) > 5)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (*(a1 + 49))
  {
    *a2 = 0;
    a2[1] = 0;
    return 0;
  }

  v5 = *(a1 + 32);
  if (v2 >= v5 || (v6 = *(a1 + 24), *(v6 + v2) != 48))
  {
    v14 = *(a1 + 32);
    if (v2 < v14)
    {
      v7 = 0;
      v15 = *(a1 + 24);
      v16 = *(a1 + 40);
      while (1)
      {
        v8 = v16 + 1;
        if (*(v15 + v16) == 95)
        {
          goto LABEL_15;
        }

        *(a1 + 40) = v8;
        v17 = *(*(a1 + 24) + v16);
        v18 = 16 * v7;
        if ((v17 - 48) <= 9)
        {
          v7 = v17 + v18 - 48;
          v16 = v8;
          if (v8 >= v14)
          {
            break;
          }
        }

        else
        {
          if ((v17 - 97) > 5)
          {
            break;
          }

          v7 = v18 + ((v17 + 9) & 0x1F);
          v16 = v8;
          if (v8 >= v14)
          {
            break;
          }
        }
      }
    }

LABEL_7:
    *(a1 + 49) = 1;
    *a2 = 0;
    a2[1] = 0;
    return 0;
  }

  *(a1 + 40) = v2 + 1;
  if (v2 + 1 >= v5 || *(v6 + v2 + 1) != 95)
  {
    goto LABEL_7;
  }

  v7 = 0;
  v8 = v2 + 2;
LABEL_15:
  *(a1 + 40) = v8;
  v9 = *(a1 + 32);
  v10 = v9 >= v2;
  v11 = v9 - v2;
  if (!v10)
  {
    abort();
  }

  v12 = v8 + ~v2;
  v13 = *(a1 + 24) + v2;
  if (v11 < v12)
  {
    v12 = v11;
  }

  *a2 = v13;
  a2[1] = v12;
  return v7;
}

char *anonymous namespace::Demangler::demangleOptionalBinder(char *this)
{
  if (this[49])
  {
    return this;
  }

  v1 = this;
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v3 >= v2)
  {
    return this;
  }

  v4 = *(this + 3);
  if (*(v4 + v3) != 71)
  {
    return this;
  }

  v5 = v3 + 1;
  *(this + 5) = v3 + 1;
  if (v3 + 1 >= v2)
  {
    goto LABEL_51;
  }

  if (*(v4 + v5) == 95)
  {
    v6 = 0;
    *(this + 5) = v3 + 2;
  }

  else
  {
    v20 = 0;
    v21 = (v4 + v5);
    v22 = ~v3 + v2;
    v23 = v3 + 2;
    while (1)
    {
      *(this + 5) = v23;
      v25 = *v21++;
      v24 = v25;
      if (v25 == 95)
      {
        break;
      }

      if ((v24 - 48) >= 0xAu)
      {
        if ((v24 - 97) >= 0x1Au)
        {
          if ((v24 - 65) >= 0x1Au)
          {
            goto LABEL_51;
          }

          v26 = -29;
        }

        else
        {
          v26 = -87;
        }
      }

      else
      {
        v26 = -48;
      }

      if (v20 < 0x421084210842109)
      {
        v27 = v26 + v24;
        v28 = 62 * v20;
        if (!__CFADD__(v27, v28))
        {
          v20 = v27 + v28;
          ++v23;
          if (--v22)
          {
            continue;
          }
        }
      }

      goto LABEL_51;
    }

    if (v20 == -1)
    {
      goto LABEL_51;
    }

    v6 = v20 + 1;
    if (v20 == -2)
    {
      goto LABEL_51;
    }
  }

  v7 = *(this + 2);
  if (v6 + 1 >= v2 - v7)
  {
LABEL_51:
    this[49] = 1;
    return this;
  }

  if (this[48] == 1)
  {
    v8 = *(this + 7);
    v9 = v1[8];
    v10 = v1[9];
    if (v9 + 4 > v10)
    {
      v11 = v9 + 996;
      v12 = 2 * v10;
      if (v12 <= v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v12;
      }

      v1[9] = v13;
      v8 = malloc_type_realloc(v8, v13, 0x100004077774924uLL);
      v1[7] = v8;
      if (!v8)
      {
        goto LABEL_53;
      }

      v9 = v1[8];
    }

    *&v8[v9] = 1014132582;
    v1[8] += 4;
    v7 = v1[2];
  }

  v1[2] = v7 + 1;
  {
    ++v1[2];
    if ((*(v1 + 49) & 1) == 0 && *(v1 + 48) == 1)
    {
      v14 = v1[7];
      v15 = v1[8];
      v16 = v1[9];
      if (v15 + 2 > v16)
      {
        v17 = v15 + 994;
        v18 = 2 * v16;
        if (v18 <= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        v1[9] = v19;
        v14 = malloc_type_realloc(v14, v19, 0x100004077774924uLL);
        v1[7] = v14;
        if (!v14)
        {
          goto LABEL_53;
        }

        v15 = v1[8];
      }

      *&v14[v15] = 8236;
      v1[8] += 2;
    }
  }

  if ((*(v1 + 49) & 1) == 0 && *(v1 + 48) == 1)
  {
    this = v1[7];
    v29 = v1[8];
    v30 = v1[9];
    if (v29 + 2 <= v30)
    {
LABEL_48:
      *&this[v29] = 8254;
      v1[8] += 2;
      return this;
    }

    v31 = v29 + 994;
    v32 = 2 * v30;
    if (v32 <= v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v32;
    }

    v1[9] = v33;
    this = malloc_type_realloc(this, v33, 0x100004077774924uLL);
    v1[7] = this;
    if (this)
    {
      v29 = v1[8];
      goto LABEL_48;
    }

LABEL_53:
    abort();
  }

  return this;
}

_BYTE *llvm::dlangDemangle(_WORD *a1, unint64_t a2)
{
  if (a2 < 2 || *a1 != 17503)
  {
    return 0;
  }

  v80 = 0;
  *ptr = 0u;
  v81 = -1;
  v82 = 1;
  if (a2 == 6 && *a1 == 1634550879 && a1[2] == 28265)
  {
    v80 = 998;
    v71 = malloc_type_realloc(0, 0x3E6uLL, 0x100004077774924uLL);
    ptr[0] = v71;
    if (!v71)
    {
      goto LABEL_122;
    }

    v71[2] = 28265;
    *v71 = 1634541636;
    v72 = 6;
LABEL_107:
    result = ptr[0];
    if (v72 + 1 <= v80 || (2 * v80 <= v72 + 993 ? (v74 = v72 + 993) : (v74 = 2 * v80), (result = malloc_type_realloc(ptr[0], v74, 0x100004077774924uLL)) != 0))
    {
      result[v72] = 0;
      ptr[1] = v72;
      return result;
    }

LABEL_122:
    abort();
  }

  v3 = 0;
  v77[0] = a1;
  v77[1] = a2;
  v78 = a2;
  v4 = a1 + 1;
  v5 = a2 - 2;
  v6 = 0x9D89D89D89D89D7;
  v7 = MEMORY[0x277D85DE0];
  *&v83 = a1 + 1;
  *(&v83 + 1) = a2 - 2;
  while (1)
  {
    if (v5 && *v4 == 48)
    {
      v8 = v4;
      do
      {
        if (!--v5)
        {
          goto LABEL_118;
        }

        v10 = *++v4;
        v9 = v10;
        ++v8;
      }

      while (v10 == 48);
      *&v83 = v4;
      *(&v83 + 1) = v5;
    }

    else
    {
      if (v3)
      {
        v11 = ptr[0];
        v12 = ptr[1];
        v13 = ptr[1] + 1;
        if (ptr[1] + 1 > v80)
        {
          v14 = (2 * v80) <= ptr[1] + 993 ? ptr[1] + 993 : (2 * v80);
          v80 = v14;
          v15 = a1;
          v16 = v6;
          v17 = malloc_type_realloc(ptr[0], v14, 0x100004077774924uLL);
          v6 = v16;
          v11 = v17;
          a1 = v15;
          ptr[0] = v11;
          if (!v11)
          {
            goto LABEL_122;
          }
        }

        ptr[1] = v13;
        v12[v11] = 46;
      }

      if (!v5)
      {
        goto LABEL_118;
      }

      while (1)
      {
        v18 = *v4;
        if (v18 == 81)
        {
          break;
        }

        LOBYTE(v19) = *v4;
        if (v18 < 0 || (*(v7 + 4 * v18 + 60) & 0x400) == 0)
        {
          goto LABEL_118;
        }

        v20 = 0;
        v21 = 0;
        v22 = -1;
        do
        {
          v23 = v19;
          if (v21 > ((0x10000002FLL - v19) * 0x199999999999999AuLL) >> 64)
          {
            goto LABEL_118;
          }

          v24 = v20;
          v25 = v22;
          *&v83 = &v4[v20 + 1];
          *(&v83 + 1) = v5 + v22;
          if (v5 - 1 == v20)
          {
            goto LABEL_118;
          }

          v26 = v21;
          v21 = v19 + 10 * v21 - 48;
          v19 = v4[v20 + 1];
          if (v19 < 0)
          {
            break;
          }

          ++v20;
          --v22;
        }

        while ((*(v7 + 4 * v19 + 60) & 0x400) != 0);
        if (v21 - 1 >= v5 + v25)
        {
          goto LABEL_118;
        }

        v27 = v5 - v24 - 4;
        if (v5 - v24 < 4 || v21 < 4)
        {
          goto LABEL_48;
        }

        if (*&v4[v24 + 1] != 24415 || v4[v24 + 3] != 83)
        {
          goto LABEL_48;
        }

        v29 = v5 - (v23 + 10 * v26);
        v30 = v29 - v24 + 47;
        if (v27 > v30)
        {
          v31 = &v4[v24 + 4];
          do
          {
            v32 = *v31;
            if (v32 < 0 || (*(v7 + 4 * v32 + 60) & 0x400) == 0)
            {
              break;
            }

            ++v31;
            --v27;
          }

          while (v27 > v30);
        }

        if (v5 - v23 - (v27 + 10 * v26) + 47 != v24)
        {
LABEL_48:
          v33 = a1;
          v34 = v6;
          v6 = v34;
          a1 = v33;
          v5 = *(&v83 + 1);
          goto LABEL_67;
        }

        v4 = &v4[10 * v26 - 47 + v24 + v23];
        *&v83 = v4;
        *(&v83 + 1) = v29 - v24 + 47;
        v5 = *(&v83 + 1);
        if (v29 + 47 == v24)
        {
          goto LABEL_118;
        }
      }

      v84 = 0;
      v85 = 0;
      *&v83 = v4 + 1;
      *(&v83 + 1) = v5 - 1;
      if (v5 != 1)
      {
        v35 = 0;
        v36 = 2 - v5;
        v37 = v4 + 2;
        do
        {
          v38 = *(v37 - 1);
          if ((v38 & 0x80000000) != 0)
          {
            v40 = a1;
            v41 = v6;
            v42 = __maskrune(*(v37 - 1), 0x100uLL);
            v6 = v41;
            v39 = v42;
            a1 = v40;
          }

          else
          {
            v39 = *(v7 + 4 * v38 + 60) & 0x100;
          }

          if (!v39 || v35 > v6)
          {
            break;
          }

          v44 = 26 * v35;
          v45 = *(v37 - 1);
          if ((v45 - 97) <= 0x19u)
          {
            v46 = v44 + v45 - 97;
            if (v46 >= 1)
            {
              v5 = -v36;
              *&v83 = v37;
              *(&v83 + 1) = v5;
              if (v46 <= v4 - a1)
              {
                v47 = &v4[-v46];
                v76 = a1;
                v48 = v6;
                v49 = strlen(&v4[-v46]);
                v6 = v48;
                v50 = v49;
                a1 = v76;
                v84 = v47;
                v85 = v50;
                if (v50)
                {
                  v51 = *v47;
                  if ((v51 & 0x8000000000000000) == 0 && (*(v7 + 4 * v51 + 60) & 0x400) != 0)
                  {
                    v68 = 0;
                    v69 = &v4[-v45 + 98 + -26 * v35];
                    v70 = v50 - 1;
                    while (v70)
                    {
                      v68 = v51 + 10 * v68 - 48;
                      v51 = *v69;
                      if (v51 < 0 || (*(v7 + 4 * v51 + 60) & 0x400) == 0)
                      {
                        v84 = v69;
                        v85 = v70;
                        if (v70 >= v68)
                        {
                          v6 = v48;
                          a1 = v76;
                          if (v85)
                          {
                            goto LABEL_67;
                          }
                        }

                        goto LABEL_66;
                      }

                      v69 = (v69 + 1);
                      --v70;
                      if (v68 > ((0x10000002FLL - v51) * 0x199999999999999AuLL) >> 64)
                      {
                        goto LABEL_66;
                      }
                    }
                  }
                }
              }
            }

            break;
          }

          v35 = v44 + v45 - 65;
          ++v36;
          ++v37;
        }

        while (v36 != 1);
      }

LABEL_66:
      v5 = 0;
      v83 = 0uLL;
LABEL_67:
      if (!v5)
      {
        goto LABEL_118;
      }

      v4 = v83;
      v9 = *v83;
      v8 = v83;
      v3 = 1;
    }

    if ((v9 & 0x80) != 0)
    {
      break;
    }

    if ((*(v7 + 4 * v9 + 60) & 0x400) == 0)
    {
      if (v9 != 81)
      {
        break;
      }

      v52 = v5 - 1;
      if (v5 == 1)
      {
        break;
      }

      v53 = 0;
      v54 = v4 + 1;
      while (1)
      {
        v55 = *v54;
        if ((v55 & 0x80000000) != 0)
        {
          v57 = a1;
          v58 = v6;
          v59 = v3;
          v60 = __maskrune(*v54, 0x100uLL);
          v3 = v59;
          v6 = v58;
          v61 = v60;
          a1 = v57;
          if (v61)
          {
            v62 = v53 > v58;
          }

          else
          {
            v62 = 1;
          }

          if (v62)
          {
            goto LABEL_113;
          }
        }

        else if ((*(v7 + 4 * v55 + 60) & 0x100) == 0 || v53 > v6)
        {
          goto LABEL_113;
        }

        v63 = 26 * v53;
        v64 = *v54;
        if ((v64 - 97) <= 0x19u)
        {
          break;
        }

        v53 = v63 + v64 - 65;
        ++v54;
        if (!--v52)
        {
          goto LABEL_113;
        }
      }

      v65 = v63 + v64 - 97;
      if (v65 < 1 || v65 > v8 - a1)
      {
        break;
      }

      v67 = v4[-v65];
      if (v67 < 0 || (*(v7 + 4 * v67 + 60) & 0x400) == 0)
      {
        break;
      }
    }
  }

LABEL_113:
  if (*v4 == 90)
  {
    v75 = v4 + 1;
  }

  else
  {
    {
      goto LABEL_118;
    }

    v75 = v83;
    if (!v83)
    {
      goto LABEL_118;
    }
  }

  if (!*v75)
  {
    v72 = ptr[1];
    if (ptr[1])
    {
      goto LABEL_107;
    }
  }

LABEL_118:
  free(ptr[0]);
  return 0;
}

uint64_t anonymous namespace::Demangler::parseType(uint64_t a1, unsigned __int8 **a2)
{
  v2 = a2[1];
  if (!v2)
  {
    result = 0;
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  v3 = *a2;
  v4 = **a2;
  if (v4 == 81)
  {
    v6 = &v3[-*a1];
    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      *a2 = 0;
      a2[1] = 0;
    }

    else
    {
      *(a1 + 16) = v6;
      v10 = 0;
      v11 = 0;
      {
        goto LABEL_12;
      }

      {
        *a2 = 0;
        a2[1] = 0;
      }

      *(a1 + 16) = v7;
      if (!v11)
      {
LABEL_12:
        *a2 = 0;
        a2[1] = 0;
      }
    }
  }

  else
  {
    if (v4 != 105)
    {
      result = 0;
      *a2 = 0;
      a2[1] = 0;
      return result;
    }

    *a2 = v3 + 1;
    a2[1] = v2 - 1;
  }

  return 1;
}

void **anonymous namespace::Demangler::parseLName(void **result, int **a2, uint64_t a3)
{
  v5 = result;
  v6 = a2[1];
  if (a3 <= 10)
  {
    if (a3 != 6)
    {
      if (a3 == 7 && v6 >= 8 && **a2 == 0x5A7373616C435F5FLL)
      {
        v8 = *result;
        v7 = result[1];
        v9 = result[2];
        if (v7 + 14 <= v9)
        {
LABEL_12:
          result = memmove(v8 + 14, v8, v7);
          qmemcpy(*v5, "ClassInfo for ", 14);
          v5[1] = v5[1] + 13;
          v13 = a2[1] - 7;
          *a2 = (*a2 + 7);
          a2[1] = v13;
          return result;
        }

        v10 = 2 * v9;
        if (v10 <= v7 + 1006)
        {
          v11 = v7 + 1006;
        }

        else
        {
          v11 = v10;
        }

        result[2] = v11;
        v12 = malloc_type_realloc(v8, v11, 0x100004077774924uLL);
        *v5 = v12;
        if (v12)
        {
          v8 = v12;
          v7 = v5[1];
          goto LABEL_12;
        }

LABEL_77:
        abort();
      }

      goto LABEL_50;
    }

    if (v6 >= 7)
    {
      v22 = *a2;
      if (**a2 == 1852399455 && *(*a2 + 3) == 1517578606)
      {
        v44 = *result;
        v43 = result[1];
        v45 = result[2];
        if (v43 + 16 > v45)
        {
          v46 = 2 * v45;
          if (v46 <= v43 + 1008)
          {
            v47 = v43 + 1008;
          }

          else
          {
            v47 = v46;
          }

          result[2] = v47;
          v48 = malloc_type_realloc(v44, v47, 0x100004077774924uLL);
          *v5 = v48;
          if (!v48)
          {
            goto LABEL_77;
          }

          v44 = v48;
          v43 = v5[1];
        }

        result = memmove(v44 + 16, v44, v43);
        **v5 = *"initializer for ";
        v34 = v5[1] + 15;
      }

      else
      {
        v24 = *v22;
        v25 = *(v22 + 3);
        if (v24 != 1953914719 || v25 != 1517052532)
        {
          goto LABEL_50;
        }

        v28 = *result;
        v27 = result[1];
        v29 = result[2];
        if (v27 + 11 > v29)
        {
          v30 = 2 * v29;
          if (v30 <= v27 + 1003)
          {
            v31 = v27 + 1003;
          }

          else
          {
            v31 = v30;
          }

          result[2] = v31;
          v32 = malloc_type_realloc(v28, v31, 0x100004077774924uLL);
          *v5 = v32;
          if (!v32)
          {
            goto LABEL_77;
          }

          v28 = v32;
          v27 = v5[1];
        }

        result = memmove(v28 + 11, v28, v27);
        v33 = *v5;
        *v33 = *"vtable for ";
        *(v33 + 7) = 544370534;
        v34 = v5[1] + 10;
      }

      v5[1] = v34;
      v49 = a2[1] - 6;
      *a2 = (*a2 + 6);
      a2[1] = v49;
      return result;
    }

LABEL_50:
    v36 = *a2;
    if (v6 >= a3)
    {
      v37 = a3;
    }

    else
    {
      v37 = a2[1];
    }

    if (v37)
    {
      v38 = *result;
      v39 = v5[1];
      v40 = &v39[v37];
      v41 = v5[2];
      if (&v39[v37] > v41)
      {
        if (2 * v41 <= (v40 + 992))
        {
          v42 = (v40 + 992);
        }

        else
        {
          v42 = 2 * v41;
        }

        v5[2] = v42;
        v38 = malloc_type_realloc(v38, v42, 0x100004077774924uLL);
        *v5 = v38;
        if (!v38)
        {
          goto LABEL_77;
        }

        v39 = v5[1];
      }

      result = memcpy(&v39[v38], v36, v37);
      v5[1] = v5[1] + v37;
      v36 = *a2;
      v6 = a2[1];
    }

    *a2 = &v36[a3];
    a2[1] = (v6 - a3);
    return result;
  }

  if (a3 == 11)
  {
    if (v6 < 0xC)
    {
      goto LABEL_50;
    }

    if (**a2 != 0x667265746E495F5FLL || (*a2)[2] != 1516594017)
    {
      goto LABEL_50;
    }

    v51 = *result;
    v50 = result[1];
    v52 = result[2];
    if (v50 + 14 > v52)
    {
      v53 = 2 * v52;
      if (v53 <= v50 + 1006)
      {
        v54 = v50 + 1006;
      }

      else
      {
        v54 = v53;
      }

      result[2] = v54;
      v55 = malloc_type_realloc(v51, v54, 0x100004077774924uLL);
      *v5 = v55;
      if (!v55)
      {
        goto LABEL_77;
      }

      v51 = v55;
      v50 = v5[1];
    }

    result = memmove(v51 + 14, v51, v50);
    qmemcpy(*v5, "Interface for ", 14);
    v5[1] = v5[1] + 13;
    v56 = a2[1] - 11;
    *a2 = (*a2 + 11);
    a2[1] = v56;
  }

  else
  {
    if (a3 != 12 || v6 < 0xD)
    {
      goto LABEL_50;
    }

    if (**a2 != 0x656C75646F4D5F5FLL || *(*a2 + 5) != 0x5A6F666E49656C75)
    {
      goto LABEL_50;
    }

    v16 = *result;
    v15 = result[1];
    v17 = result[2];
    if (v15 + 15 > v17)
    {
      v18 = 2 * v17;
      if (v18 <= v15 + 1007)
      {
        v19 = v15 + 1007;
      }

      else
      {
        v19 = v18;
      }

      result[2] = v19;
      v20 = malloc_type_realloc(v16, v19, 0x100004077774924uLL);
      *v5 = v20;
      if (!v20)
      {
        goto LABEL_77;
      }

      v16 = v20;
      v15 = v5[1];
    }

    result = memmove(v16 + 15, v16, v15);
    qmemcpy(*v5, "ModuleInfo for ", 15);
    v5[1] = v5[1] + 14;
    v21 = (a2[1] - 3);
    *a2 += 3;
    a2[1] = v21;
  }

  return result;
}

uint64_t anonymous namespace::Demangler::decodeBackref(void *a1, unsigned __int8 **a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  v4 = *a2;
  v5 = (*a2 + 1);
  v6 = (a2[1] - 1);
  *a2 = v5;
  a2[1] = v6;
  if (!v6)
  {
    goto LABEL_19;
  }

  v9 = 0;
  v10 = MEMORY[0x277D85DE0];
  while (1)
  {
    v11 = *v5;
    if ((v11 & 0x80000000) != 0)
    {
      if (__maskrune(v11, 0x100uLL))
      {
        v13 = v9 > 0x9D89D89D89D89D7;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        goto LABEL_19;
      }
    }

    else if ((*(v10 + 4 * v11 + 60) & 0x100) == 0 || v9 > 0x9D89D89D89D89D7)
    {
      goto LABEL_19;
    }

    v14 = 26 * v9;
    v15 = *a2;
    v16 = **a2;
    if ((v16 - 97) <= 0x19u)
    {
      break;
    }

    v9 = v14 + v16 - 65;
    v5 = (v15 + 1);
    v17 = (a2[1] - 1);
    *a2 = v5;
    a2[1] = v17;
    if (!v17)
    {
      goto LABEL_19;
    }
  }

  v18 = v14 + v16 - 97;
  if (v18 >= 1 && (v19 = (a2[1] - 1), *a2 = (v15 + 1), a2[1] = v19, v18 <= v4 - *a1))
  {
    v21 = v4 - v18;
    v22 = strlen((v4 - v18));
    *a3 = v21;
    a3[1] = v22;
    return 1;
  }

  else
  {
LABEL_19:
    result = 0;
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

float __divsc3(float a1, float a2, float a3, float a4)
{
  v4 = fmaxf(fabsf(a3), fabsf(a4));
  v5 = LODWORD(v4) >> 23;
  v6 = -INFINITY;
  v7 = __clz(LODWORD(v4));
  v8 = ((LODWORD(v4) << (v7 - 8) >> 23) - v7 - 119);
  if (LODWORD(v4) >= 0x800000)
  {
    v8 = (v5 - 127);
  }

  if (v4 != 0.0)
  {
    v6 = v8;
  }

  if (v5 == 255)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v9;
  v24 = -v9;
  if (a3 == 0.0 || (v25 = (LODWORD(a3) >> 23), v25 == 255))
  {
LABEL_32:
    if (a4 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  v26 = LODWORD(a3) & 0x7FFFFF;
  if (!(LODWORD(a3) >> 23))
  {
    v27 = __clz(v26);
    v28 = v26 << (v27 - 8);
    v25 = 9 - v27;
    v26 = v28 & 0xFF7FFFFF;
  }

  v21 = __OFADD__(v25, v24);
  v29 = v25 - v9;
  if (v21)
  {
    v29 = (v29 >> 31) ^ 0x80000000;
  }

  v30 = LODWORD(a3) & 0x80000000;
  if (v29 < 255)
  {
    if (v29 <= 0)
    {
      v40 = v26 | v30 | 0x800000;
      if (v29 <= -125)
      {
        v41 = -125;
      }

      else
      {
        v41 = v29;
      }

      a3 = *&v40 * COERCE_FLOAT((v41 << 23) + 1056964608);
      if (a4 == 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

    LODWORD(a3) = v30 | (v29 << 23) | v26;
    goto LABEL_32;
  }

  a3 = COERCE_FLOAT(v30 | 0x7F000000) + COERCE_FLOAT(v30 | 0x7F000000);
  if (a4 == 0.0)
  {
    goto LABEL_10;
  }

LABEL_33:
  v31 = (LODWORD(a4) >> 23);
  if (v31 != 255)
  {
    v32 = LODWORD(a4) & 0x7FFFFF;
    if (!(LODWORD(a4) >> 23))
    {
      v33 = __clz(v32);
      v34 = v32 << (v33 - 8);
      v31 = 9 - v33;
      v32 = v34 & 0xFF7FFFFF;
    }

    v21 = __OFADD__(v31, v24);
    v35 = v31 - v9;
    if (v21)
    {
      v35 = (v35 >> 31) ^ 0x80000000;
    }

    v36 = LODWORD(a4) & 0x80000000;
    if (v35 < 255)
    {
      if (v35 <= 0)
      {
        if (v35 <= -125)
        {
          v35 = -125;
        }

        a4 = COERCE_FLOAT(v32 | v36 | 0x800000) * COERCE_FLOAT((v35 << 23) + 1056964608);
      }

      else
      {
        LODWORD(a4) = v36 | (v35 << 23) | v32;
      }
    }

    else
    {
      a4 = COERCE_FLOAT(v36 | 0x7F000000) + COERCE_FLOAT(v36 | 0x7F000000);
    }
  }

LABEL_10:
  v11 = (a4 * a4) + (a3 * a3);
  *&v12 = ((a4 * a2) + (a1 * a3)) / v11;
  v13 = -v10;
  if (*&v12 != 0.0)
  {
    v14 = ((a4 * a2) + (a1 * a3)) / v11;
    v15 = (v12 >> 23);
    if (v15 != 255)
    {
      v16 = LODWORD(v14) & 0x7FFFFF;
      v17 = __clz(LODWORD(v14) & 0x7FFFFF);
      v18 = (LODWORD(v14) & 0x7FFFFF) << (v17 - 8);
      v19 = 9 - v17;
      v20 = v18 & 0xFF7FFFFF;
      if (!(v12 >> 23))
      {
        v16 = v20;
        v15 = v19;
      }

      v21 = __OFADD__(v15, v13);
      v22 = v15 + v13;
      if (v21)
      {
        v22 = (v22 >> 31) ^ 0x80000000;
      }

      v23 = v12 & 0x80000000;
      if (v22 < 255)
      {
        if (v22 <= 0)
        {
          v37 = v16 | v23 | 0x800000;
          if (v22 <= -125)
          {
            v38 = -125;
          }

          else
          {
            v38 = v22;
          }

          *&v12 = *&v37 * COERCE_FLOAT((v38 << 23) + 1056964608);
        }

        else
        {
          v12 = v23 | (v22 << 23) | v16;
        }
      }

      else
      {
        *&v12 = COERCE_FLOAT(v23 | 0x7F000000) + COERCE_FLOAT(v23 | 0x7F000000);
      }
    }
  }

  return *&v12;
}

void mlir::OpBuilder::create<mlir::ModuleOp>(llvm::formatv_object_base **a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "builtin.module";
  *(a2 + 24) = 14;
  *(a3 + 32) = 259;
  llvm::operator+(a2, a3, a1);
  llvm::report_fatal_error(a1, 1);
}

void mlir::mps::MPSSerializationPass::runOnOperation(void)::{lambda(mlir::func::FuncOp)#1}::operator() const(mlir::func::FuncOp)::{lambda(mlir::func::ReturnOp)#1}::operator()(mlir::OpBuilder **a1, mlir::Operation *a2)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v19 = a2;
  v4 = *a1;
  v5 = *(a2 + 2);
  NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2);
  *(v4 + 2) = v5;
  *(v4 + 3) = NodePtr;
  v7 = *a1;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v19, 0);
  if ((*(v19 + 46) & 0x80) != 0)
  {
    v10 = *(v19 + 9);
  }

  else
  {
    v10 = 0;
  }

  v11 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v12 = v11 - ODSOperandIndexAndLength;
  v20 = v22;
  v21 = 0x600000000;
  if (v12 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v11 == ODSOperandIndexAndLength)
  {
    v13 = 0;
  }

  else
  {
    v14 = v22;
    v15 = ODSOperandIndexAndLength - v11;
    v16 = (32 * ODSOperandIndexAndLength + v10 + 24);
    do
    {
      v17 = *v16;
      v16 += 4;
      *v14++ = v17;
    }

    while (!__CFADD__(v15++, 1));
    v13 = v21;
  }

  LODWORD(v21) = v13 + v12;
  mlir::OpBuilder::create<mlir::mps::serialization::ReturnOp,llvm::SmallVector<mlir::Value,6u>>(v7, v8, &v20);
  if (v20 != v22)
  {
    free(v20);
  }

  mlir::Operation::erase(v19);
}

void mlir::mps::MPSDeserializationPass::runOnOperation(void)::{lambda(mlir::mps::serialization::FuncOp)#1}::operator() const(mlir::mps::serialization::FuncOp)::{lambda(mlir::mps::serialization::ReturnOp)#1}::operator()(mlir::OpBuilder **a1, mlir::Operation *a2)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v19 = a2;
  v4 = *a1;
  v5 = *(a2 + 2);
  NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2);
  *(v4 + 2) = v5;
  *(v4 + 3) = NodePtr;
  v7 = *a1;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::serialization::ReturnOp::getODSOperandIndexAndLength(&v19, 0);
  if ((*(v19 + 46) & 0x80) != 0)
  {
    v10 = *(v19 + 9);
  }

  else
  {
    v10 = 0;
  }

  v11 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v12 = v11 - ODSOperandIndexAndLength;
  v20 = v22;
  v21 = 0x600000000;
  if (v12 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v11 == ODSOperandIndexAndLength)
  {
    v13 = 0;
  }

  else
  {
    v14 = v22;
    v15 = ODSOperandIndexAndLength - v11;
    v16 = (32 * ODSOperandIndexAndLength + v10 + 24);
    do
    {
      v17 = *v16;
      v16 += 4;
      *v14++ = v17;
    }

    while (!__CFADD__(v15++, 1));
    v13 = v21;
  }

  LODWORD(v21) = v13 + v12;
  mlir::OpBuilder::create<mlir::func::ReturnOp,llvm::SmallVector<mlir::Value,6u>>(v7, v8, &v20);
  if (v20 != v22)
  {
    free(v20);
  }

  mlir::Operation::erase(v19);
}

void mlir::OpBuilder::create<mlir::mps::serialization::ModuleOp>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "mps.module";
  *(a2 + 24) = 10;
}

void mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>()
{
  {
    v0 = llvm::getTypeName<mlir::BytecodeDialectInterface>();
    mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpBuilder::create<mlir::mps::serialization::FuncOp,llvm::StringRef,mlir::FunctionType,llvm::ArrayRef<mlir::NamedAttribute>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "mps.func";
  *(a2 + 24) = 8;
}

void mlir::OpBuilder::create<mlir::mps::serialization::ReturnOp,llvm::SmallVector<mlir::Value,6u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "mps.return";
  *(a2 + 24) = 10;
}

void mlir::OpBuilder::create<mlir::mps::serialization::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "mps.for";
  *(a2 + 24) = 7;
}

void mlir::OpBuilder::create<mlir::mps::serialization::WhileOp,mlir::TypeRange,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "mps.while";
  *(a2 + 24) = 9;
}

void mlir::OpBuilder::create<mlir::mps::serialization::IfOp,mlir::TypeRange,mlir::Value>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "mps.if";
  *(a2 + 24) = 6;
}

void mlir::OpBuilder::create<mlir::mps::serialization::ConditionOp,mlir::TypeRange,mlir::Value,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "mps.condition";
  *(a2 + 24) = 13;
}

void mlir::OpBuilder::create<mlir::mps::serialization::YieldOp,mlir::TypeRange,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "mps.yield";
  *(a2 + 24) = 9;
}

void mlir::OpBuilder::create<mlir::mps::serialization::FromElementsOp,mlir::RankedTensorType,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "mps.from_elements";
  *(a2 + 24) = 17;
}

void mlir::OpBuilder::create<mlir::mps::serialization::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "mps.extract";
  *(a2 + 24) = 11;
}

void mlir::OpBuilder::create<mlir::func::FuncOp,llvm::StringRef,mlir::FunctionType,llvm::ArrayRef<mlir::NamedAttribute>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "func.func";
  *(a2 + 24) = 9;
}

void mlir::OpBuilder::create<mlir::func::ReturnOp,llvm::SmallVector<mlir::Value,6u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "func.return";
  *(a2 + 24) = 11;
}

void mlir::OpBuilder::create<mlir::scf::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "scf.for";
  *(a2 + 24) = 7;
}

void mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::TypeRange,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "scf.while";
  *(a2 + 24) = 9;
}

void mlir::OpBuilder::create<mlir::scf::IfOp,mlir::TypeRange,mlir::Value>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "scf.if";
  *(a2 + 24) = 6;
}

void mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::TypeRange,mlir::Value,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "scf.condition";
  *(a2 + 24) = 13;
}

void mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::TypeRange,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "scf.yield";
  *(a2 + 24) = 9;
}

void mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::RankedTensorType,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "tensor.from_elements";
  *(a2 + 24) = 20;
}

void mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "tensor.extract";
  *(a2 + 24) = 14;
}

void mlir::detail::constant_op_binder<mlir::ElementsAttr>::match()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_5(v2);
  }
}

void mlir::ElementsAttr::value_begin<llvm::APInt>(llvm *a1, uint64_t *a2)
{
  v3 = llvm::errs(a1);
  v4 = llvm::getTypeName<llvm::APInt>();
  v6 = OUTLINED_FUNCTION_16(v4, v5);
  v8 = mlir::operator<<(v7, *a2);
  llvm::raw_ostream::operator<<(v8, "\n");
  __break(1u);
}

void mlir::ElementsAttr::try_value_begin<llvm::APInt>()
{
  {
    v0 = llvm::getTypeName<llvm::APInt>();
    mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ElementsAttr::value_begin<mlir::Attribute>(llvm *a1, uint64_t *a2)
{
  v3 = llvm::errs(a1);
  v4 = llvm::getTypeName<mlir::Attribute>();
  v6 = OUTLINED_FUNCTION_16(v4, v5);
  v8 = mlir::operator<<(v7, *a2);
  llvm::raw_ostream::operator<<(v8, "\n");
  __break(1u);
}

void mlir::ElementsAttr::try_value_begin<mlir::Attribute>()
{
  {
    v0 = llvm::getTypeName<mlir::Attribute>();
    mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "mps.constant";
  *(a2 + 24) = 12;
}

void mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "mps.reciprocal_square_root";
  *(a2 + 24) = 26;
}

void mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::MemoryEffectOpInterface>();
    mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::MemoryEffectOpInterface>();
    mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::FunctionOpInterface>();
    mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::FunctionOpInterface>();
    mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::RegionBranchOpInterface>();
    mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::RegionBranchOpInterface>();
    mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::ViewLikeOpInterface>();
    mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::ViewLikeOpInterface>();
    mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::BranchOpInterface>();
    mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::BranchOpInterface>();
    mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface>();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface>();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::CallOpInterface>();
    mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::CallOpInterface>();
    mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::LoopLikeOpInterface>();
    mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::LoopLikeOpInterface>();
    mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "arith.constant";
  *(a2 + 24) = 14;
}

void mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>()
{
  {
    v0 = llvm::getTypeName<mlir::TypedAttr>();
    mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

uint64_t *mlir::Operation::getOperandTypes@<X0>(mlir::Operation *this@<X0>, uint64_t *a2@<X8>)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    v2 = *(this + 9);
    v3 = *(this + 17);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v5[0] = v2;
  v5[1] = v3;
  return mlir::OperandRange::getTypes(v5, a2);
}

void mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::InferTypeOpInterface>();
    mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::InferTypeOpInterface>();
    mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::DialectInterfaceCollection<mlir::DialectFoldInterface>::DialectInterfaceCollection()
{
  {
    v0 = llvm::getTypeName<mlir::DialectFoldInterface>();
    mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::DialectInterfaceCollection<mlir::DialectInlinerInterface>::DialectInterfaceCollection()
{
  {
    v0 = llvm::getTypeName<mlir::DialectInlinerInterface>();
    mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::CallableOpInterface>();
    mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::CallableOpInterface>();
    mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>()
{
  {
    v0 = llvm::getTypeName<mlir::DominanceInfo>();
    mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void anonymous namespace::CSEDriver::simplifyBlock()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::MemoryEffects::Write>();
    mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::MemoryEffectOpInterface::onlyHasEffect<mlir::MemoryEffects::Read>()
{
  {
    v0 = llvm::getTypeName<mlir::MemoryEffects::Read>();
    mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::MemoryEffects::Write::Write()
{
  {
    v0 = llvm::getTypeName<mlir::MemoryEffects::Write>();
    mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::PreservedAnalyses::preserveAll()
{
  {
    v0 = llvm::getTypeName<mlir::detail::PreservedAnalyses::AllAnalysesType>();
    mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::PreservedAnalyses::preserve<mlir::DominanceInfo>()
{
  {
    v0 = llvm::getTypeName<mlir::DominanceInfo>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_0_0(v2);
  }
}

void mlir::detail::PreservedAnalyses::preserve<mlir::PostDominanceInfo>()
{
  {
    v0 = llvm::getTypeName<mlir::PostDominanceInfo>();
    mlir::detail::TypeIDResolver<mlir::PostDominanceInfo,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::RuntimeVerifiableOpInterface,mlir::detail::RuntimeVerifiableOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::RuntimeVerifiableOpInterface>();
    mlir::detail::TypeIDResolver<mlir::RuntimeVerifiableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::RuntimeVerifiableOpInterface>();
    mlir::detail::TypeIDResolver<mlir::RuntimeVerifiableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void anonymous namespace::InlinerPass::runOnOperation()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::AnalysisMap::getAnalysisImpl<mlir::CallGraph,mlir::Operation *>()
{
  {
    v0 = llvm::getTypeName<mlir::CallGraph>();
    mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::RegionKindInterface>();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::RegionKindInterface>();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::PromotableOpInterface,mlir::detail::PromotableOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::PromotableOpInterface>();
    mlir::detail::TypeIDResolver<mlir::PromotableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::PromotableOpInterface>();
    mlir::detail::TypeIDResolver<mlir::PromotableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::PromotableMemOpInterface,mlir::detail::PromotableMemOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::PromotableMemOpInterface>();
    mlir::detail::TypeIDResolver<mlir::PromotableMemOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::PromotableMemOpInterface>();
    mlir::detail::TypeIDResolver<mlir::PromotableMemOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DataLayoutAnalysis,mlir::Operation *>()
{
  {
    v0 = llvm::getTypeName<mlir::DataLayoutAnalysis>();
    mlir::detail::TypeIDResolver<mlir::DataLayoutAnalysis,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::PromotableAllocationOpInterface,mlir::detail::PromotableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::PromotableAllocationOpInterface>();
    mlir::detail::TypeIDResolver<mlir::PromotableAllocationOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::PromotableAllocationOpInterface>();
    mlir::detail::TypeIDResolver<mlir::PromotableAllocationOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::SymbolOpInterface>();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::SymbolOpInterface>();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::SymbolUserOpInterface>();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::SymbolUserOpInterface>();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::RemoveDeadValues::runOnOperation(void)::$_1>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void anonymous namespace::SCCP::runOnOperation()
{
  {
    v0 = llvm::getTypeName<mlir::dataflow::Lattice<mlir::dataflow::ConstantValue>>();
    mlir::detail::TypeIDResolver<mlir::dataflow::Lattice<mlir::dataflow::ConstantValue>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::DestructurableAccessorOpInterface,mlir::detail::DestructurableAccessorOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::DestructurableAccessorOpInterface>();
    mlir::detail::TypeIDResolver<mlir::DestructurableAccessorOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::DestructurableAccessorOpInterface>();
    mlir::detail::TypeIDResolver<mlir::DestructurableAccessorOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::SafeMemorySlotAccessOpInterface,mlir::detail::SafeMemorySlotAccessOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::SafeMemorySlotAccessOpInterface>();
    mlir::detail::TypeIDResolver<mlir::SafeMemorySlotAccessOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::SafeMemorySlotAccessOpInterface>();
    mlir::detail::TypeIDResolver<mlir::SafeMemorySlotAccessOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::DestructurableAllocationOpInterface,mlir::detail::DestructurableAllocationOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::DestructurableAllocationOpInterface>();
    mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::DestructurableAllocationOpInterface>();
    mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void anonymous namespace::SymbolDCE::runOnOperation()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible()
{
  {
    v0 = llvm::getTypeName<mlir::ElementsAttr>();
    mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpBuilder::create<mlir::anec::Reshape,mlir::ShapedType &,mlir::Value &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "anec.reshape";
  *(a2 + 24) = 12;
}

void mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::Type &,mlir::ElementsAttr &>(llvm::formatv_object_base **a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "mps.constant";
  *(a2 + 24) = 12;
  *(a3 + 32) = 259;
  llvm::operator+(a2, a3, a1);
  llvm::report_fatal_error(a1, 1);
}

void mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_14(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_14(v2);
  }
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::CallOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    return *(a2 + 72);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::IfOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 + 32 * v3;
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::InvokeOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    return *(a2 + 72);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::CoreInlinerInterface::handleTerminator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 72);
    v6 = *(a2 + 68);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v17 = a3;
  v18 = 0;
  v19 = v5;
  v20 = 0;
  if (a4 && v6)
  {
    v7 = 0;
    do
    {
      v8 = mlir::ValueRange::dereference_iterator(&v17, v7);
      v9 = v20;
      v10 = *v8;
      if (*v8)
      {
        v11 = *(v19 + 32 * v20 + 24);
        do
        {
          v12 = v10[1];
          if (v12)
          {
            v13 = *v10;
            *v12 = *v10;
            if (v13)
            {
              *(v13 + 8) = v12;
            }
          }

          v10[3] = v11;
          v14 = *v11;
          *v10 = *v11;
          v10[1] = v11;
          if (v14)
          {
            *(v14 + 8) = v10;
          }

          *v11 = v10;
          v10 = *v8;
        }

        while (*v8);
      }

      v7 = v18 + 1;
      v15 = v9 + 1;
      v18 = v7;
      v20 = v15;
    }

    while (v7 != a4 && v15 != v6);
  }
}

void mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant()
{
  {
    v0 = llvm::getTypeName<mlir::TypedAttr>();
    mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::Type &,mlir::TypedAttr>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.constant";
  *(a2 + 24) = 15;
}

void mlir::ODIE::Compiler::CoreML::createElementsAttr()
{
  {
    v0 = llvm::getTypeName<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>();
    mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::ElementsAttr>();
    mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::ConditionallySpeculatable>();
    mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::MemoryEffectOpInterface>();
    mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::InferShapedTypeOpInterface>();
    mlir::detail::TypeIDResolver<mlir::InferShapedTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::InferShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferShapedTypeOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::InferShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AllOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::AllOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AndOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::InferTypeOpInterface>();
    mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::InferTypeOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::CallOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::BytecodeOpInterface>();
    mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::SymbolUserOpInterface>();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::CallOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::CallOpInterface>();
    mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable()
{
  {
    v0 = llvm::getTypeName<mlir::TypedAttr>();
    mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::NoRegionArguments<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::NoTerminator<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::SymbolTable<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpAsmOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::RegionKindInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ODIE::Compiler::CoreML::ClassOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::OpAsmOpInterface>();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::RegionKindInterface>();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ClassOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::SymbolOpInterface>();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ClassOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::ODIE::Compiler::CoreML::ConditionOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface>();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::DelegateOp>,mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait<mlir::ODIE::Compiler::CoreML::DelegateOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultShape,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::FuncOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::CallableOpInterface>();
    mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::FuncOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::FunctionOpInterface>();
    mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::CallableOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::FunctionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpAsmOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ImportableOpInterface>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::IfOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::RegionBranchOpInterface>();
    mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::ClassOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::ClassOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::ClassOp>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::ClassOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::ClassOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::GraphOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::GraphOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::GraphOp>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::GraphOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::GraphOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::FuncOp>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::FuncOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::Type &,mlir::Value &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.cast";
  *(a2 + 24) = 11;
}

void mlir::detail::InterfaceMap::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>>()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::KeywordPrintableAttr>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::KeywordPrintableAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::ODIXSerializableAttr>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIXSerializableAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::storage_user_base_impl::hasTrait<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>()
{
  {
    v0 = llvm::getTypeName<mlir::VerifiableTensorEncoding>();
    mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,mlir::detail::AttributeUniquer,mlir::VerifiableTensorEncoding::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke()
{
  {
    v0 = llvm::getTypeName<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::detail::ParamAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::ParamAttrInterface>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ODIE::Compiler::ParamAttrInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ParamAttrInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ParamAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::ApproximateAttr>()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::ODIXSerializableAttr>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIXSerializableAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::YieldOp::getMutableSuccessorOperands@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_88(a1);
  if (v3 < 0)
  {
    v4 = *(v2 + 68);
  }

  else
  {
    v4 = 0;
  }

  return OUTLINED_FUNCTION_4(v1, v2, 0, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::YieldOp::getArgsMutable@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_88(a1);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return OUTLINED_FUNCTION_4(v2, v3, 0, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::ConditionOp::getMutableSuccessorOperands@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_88(a1);
  if (v3 < 0)
  {
    v4 = *(v2 + 68) - 1;
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_4(v1, v2, 1, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::ConditionOp::getArgsMutable@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_88(a1);
  if (v4 < 0)
  {
    v5 = *(v3 + 68) - 1;
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_4(v2, v3, 1, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::WhileOp::getEntrySuccessorOperands(uint64_t a1)
{
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    return *(*a1 + 72);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::verifySufficientMatch(uint64_t a1)
{
  v151 = OUTLINED_FUNCTION_63(a1, *MEMORY[0x277D85DE8], v127, v135, v143, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
  mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(&v152);
  OUTLINED_FUNCTION_113();
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v144 = v9;
  if (v9)
  {
    mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::FuncOp>::getAllParamDecls(&v153, &v154);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_86(v10, v11, v12, v13, v14, v15, v16, v17, v128, v136, v144);
  }

  mlir::FunctionType::getInputs(&v151);
  OUTLINED_FUNCTION_100();
  if ((*(v152 + 46) & 0x80) != 0)
  {
    v18 = *(v152 + 72);
  }

  else
  {
    v18 = 0;
  }

  OUTLINED_FUNCTION_84(v18, v128, v136, 0, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
  if (v1)
  {
    OUTLINED_FUNCTION_48();
    do
    {
      if (!v19)
      {
        break;
      }

      OUTLINED_FUNCTION_78();
      if (!v26)
      {
        OUTLINED_FUNCTION_68(v20, v21, v22, v23, v24, v25);
        if (v154)
        {
          OUTLINED_FUNCTION_95();
          OUTLINED_FUNCTION_22("expected an argument of type ");
          if (v45)
          {
            OUTLINED_FUNCTION_15();
            if (v108 > v109 || (v107 & 1) == 0)
            {
              OUTLINED_FUNCTION_46();
            }

            OUTLINED_FUNCTION_46();
          }

          OUTLINED_FUNCTION_7((v43 + 24 * v158), *v44);
          if (v154)
          {
            v46 = OUTLINED_FUNCTION_59();
            mlir::DiagnosticArgument::DiagnosticArgument(v46, v47);
            OUTLINED_FUNCTION_20();
            if (v45)
            {
              OUTLINED_FUNCTION_10();
              if (v114 > v2 || (v113 & 1) == 0)
              {
                OUTLINED_FUNCTION_34();
              }

              OUTLINED_FUNCTION_92();
              OUTLINED_FUNCTION_34();
            }

            OUTLINED_FUNCTION_6(v48);
            OUTLINED_FUNCTION_40();
            if (v49)
            {
              OUTLINED_FUNCTION_50();
              v181 = " but got ";
              v182 = v50;
              OUTLINED_FUNCTION_39();
              if (v45)
              {
                OUTLINED_FUNCTION_41();
                if (v118 > v119 || (v117 & 1) == 0)
                {
                  OUTLINED_FUNCTION_45();
                }

                OUTLINED_FUNCTION_45();
              }

              OUTLINED_FUNCTION_7((v51 + 24 * v158), *v52);
              if (v154)
              {
                v53 = OUTLINED_FUNCTION_59();
                mlir::DiagnosticArgument::DiagnosticArgument(v53, v1);
                OUTLINED_FUNCTION_20();
                if (v45)
                {
                  OUTLINED_FUNCTION_10();
                  if (v124 > v2 || (v123 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_34();
                  }

                  OUTLINED_FUNCTION_91();
                  OUTLINED_FUNCTION_34();
                }

                OUTLINED_FUNCTION_6(v54);
                OUTLINED_FUNCTION_17();
              }
            }
          }
        }

        OUTLINED_FUNCTION_116(v35, v36, v37, v38, v39, v40, v41, v42, v129, v137, v145, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
        if (v154)
        {
          mlir::InFlightDiagnostic::report(&v154);
        }

        OUTLINED_FUNCTION_89();
        if (v26)
        {
          v62 = v177;
          if (v177 != v5)
          {
            free(v177);
          }

          v63 = v174;
          if (v174)
          {
            v64 = OUTLINED_FUNCTION_49(v62, v55, v56, v57, v58, v59, v60, v61, v131, v139, v147, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
            if (!v26)
            {
              do
              {
                v64 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100]((v64 - 8));
              }

              while (v64 != v63);
              v65 = v174;
            }

            OUTLINED_FUNCTION_118(v65, v132, v140, v148, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
          }

          v66 = v171;
          if (v171)
          {
            v67 = v172;
            v68 = v171;
            if (v172 != v171)
            {
              OUTLINED_FUNCTION_16_0();
              do
              {
                v70 = *--v67;
                v69 = v70;
                *v67 = 0;
                if (v70)
                {
                  MEMORY[0x259C63150](v69, v63);
                }
              }

              while (v67 != v66);
              v68 = v171;
            }

            v172 = v66;
            operator delete(v68);
          }

          v71 = OUTLINED_FUNCTION_112(v62, v55, v56, v57, v58, v59, v60, v61, v131, v139, v147, v151, v152, v153, v154, v155, v156, v157);
          if (!v26)
          {
            free(v71);
          }
        }

        OUTLINED_FUNCTION_111();
        mlir::Diagnostic::attachNote();
      }

      OUTLINED_FUNCTION_98();
    }

    while (!v26);
  }

  mlir::FunctionType::getResults(&v151);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_85(v27, v129, v137, v145, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
  if (v1)
  {
    OUTLINED_FUNCTION_61();
    do
    {
      if (v6 == v4)
      {
        break;
      }

      mlir::detail::OpResultImpl::getNextResultAtOffset(v3, v4);
      OUTLINED_FUNCTION_96();
      if (!v26)
      {
        OUTLINED_FUNCTION_68(v28, v29, v30, v31, v32, v33);
        if (v154)
        {
          OUTLINED_FUNCTION_95();
          OUTLINED_FUNCTION_22("expected a result of type ");
          if (v45)
          {
            OUTLINED_FUNCTION_15();
            if (v111 > v112 || (v110 & 1) == 0)
            {
              OUTLINED_FUNCTION_46();
            }

            OUTLINED_FUNCTION_46();
          }

          OUTLINED_FUNCTION_7((v80 + 24 * v158), *v81);
          if (v154)
          {
            v82 = OUTLINED_FUNCTION_59();
            mlir::DiagnosticArgument::DiagnosticArgument(v82, v83);
            OUTLINED_FUNCTION_20();
            if (v45)
            {
              OUTLINED_FUNCTION_10();
              if (v116 > v2 || (v115 & 1) == 0)
              {
                OUTLINED_FUNCTION_33();
              }

              OUTLINED_FUNCTION_92();
              OUTLINED_FUNCTION_33();
            }

            OUTLINED_FUNCTION_6(v84);
            OUTLINED_FUNCTION_40();
            if (v85)
            {
              OUTLINED_FUNCTION_50();
              v181 = " but got ";
              v182 = v86;
              OUTLINED_FUNCTION_39();
              if (v45)
              {
                OUTLINED_FUNCTION_41();
                if (v121 > v122 || (v120 & 1) == 0)
                {
                  OUTLINED_FUNCTION_45();
                }

                OUTLINED_FUNCTION_45();
              }

              OUTLINED_FUNCTION_7((v87 + 24 * v158), *v88);
              if (v154)
              {
                v89 = OUTLINED_FUNCTION_59();
                mlir::DiagnosticArgument::DiagnosticArgument(v89, v1);
                OUTLINED_FUNCTION_20();
                if (v45)
                {
                  OUTLINED_FUNCTION_10();
                  if (v126 > v2 || (v125 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_33();
                  }

                  OUTLINED_FUNCTION_91();
                  OUTLINED_FUNCTION_33();
                }

                OUTLINED_FUNCTION_6(v90);
                OUTLINED_FUNCTION_17();
              }
            }
          }
        }

        OUTLINED_FUNCTION_116(v72, v73, v74, v75, v76, v77, v78, v79, v130, v138, v146, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
        if (v154)
        {
          mlir::InFlightDiagnostic::report(&v154);
        }

        OUTLINED_FUNCTION_89();
        if (v26)
        {
          v98 = v177;
          if (v177 != " but got ")
          {
            free(v177);
          }

          v99 = v174;
          if (v174)
          {
            v100 = OUTLINED_FUNCTION_49(v98, v91, v92, v93, v94, v95, v96, v97, v133, v141, v149, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
            if (!v26)
            {
              do
              {
                v100 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100]((v100 - 8));
              }

              while (v100 != v99);
              v101 = v174;
            }

            OUTLINED_FUNCTION_118(v101, v134, v142, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
          }

          v102 = v171;
          if (v171)
          {
            v103 = v172;
            v104 = OUTLINED_FUNCTION_114();
            if (!v26)
            {
              OUTLINED_FUNCTION_16_0();
              do
              {
                v105 = OUTLINED_FUNCTION_104();
                if (v105)
                {
                  MEMORY[0x259C63150](v105, v99);
                }
              }

              while (v103 != v102);
              v104 = v171;
            }

            v172 = v102;
            operator delete(v104);
          }

          v106 = OUTLINED_FUNCTION_112(v98, v91, v92, v93, v94, v95, v96, v97, v133, v141, v149, v151, v152, v153, v154, v155, v156, v157);
          if (!v26)
          {
            free(v106);
          }
        }

        OUTLINED_FUNCTION_111();
        mlir::Diagnostic::attachNote();
      }

      v2 += 8;
      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::verifySufficientMatch(uint64_t a1)
{
  v151 = OUTLINED_FUNCTION_63(a1, *MEMORY[0x277D85DE8], v127, v135, v143, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
  mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(&v152);
  OUTLINED_FUNCTION_113();
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v144 = v9;
  if (v9)
  {
    mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getAllParamDecls(&v153, &v154);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_86(v10, v11, v12, v13, v14, v15, v16, v17, v128, v136, v144);
  }

  mlir::FunctionType::getInputs(&v151);
  OUTLINED_FUNCTION_100();
  if ((*(v152 + 46) & 0x80) != 0)
  {
    v18 = *(v152 + 72);
  }

  else
  {
    v18 = 0;
  }

  OUTLINED_FUNCTION_84(v18, v128, v136, 0, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
  if (v1)
  {
    OUTLINED_FUNCTION_48();
    do
    {
      if (!v19)
      {
        break;
      }

      OUTLINED_FUNCTION_78();
      if (!v26)
      {
        OUTLINED_FUNCTION_68(v20, v21, v22, v23, v24, v25);
        if (v154)
        {
          OUTLINED_FUNCTION_95();
          OUTLINED_FUNCTION_22("expected an argument of type ");
          if (v45)
          {
            OUTLINED_FUNCTION_15();
            if (v108 > v109 || (v107 & 1) == 0)
            {
              OUTLINED_FUNCTION_46();
            }

            OUTLINED_FUNCTION_46();
          }

          OUTLINED_FUNCTION_7((v43 + 24 * v158), *v44);
          if (v154)
          {
            v46 = OUTLINED_FUNCTION_59();
            mlir::DiagnosticArgument::DiagnosticArgument(v46, v47);
            OUTLINED_FUNCTION_20();
            if (v45)
            {
              OUTLINED_FUNCTION_10();
              if (v114 > v2 || (v113 & 1) == 0)
              {
                OUTLINED_FUNCTION_34();
              }

              OUTLINED_FUNCTION_92();
              OUTLINED_FUNCTION_34();
            }

            OUTLINED_FUNCTION_6(v48);
            OUTLINED_FUNCTION_40();
            if (v49)
            {
              OUTLINED_FUNCTION_50();
              v181 = " but got ";
              v182 = v50;
              OUTLINED_FUNCTION_39();
              if (v45)
              {
                OUTLINED_FUNCTION_41();
                if (v118 > v119 || (v117 & 1) == 0)
                {
                  OUTLINED_FUNCTION_45();
                }

                OUTLINED_FUNCTION_45();
              }

              OUTLINED_FUNCTION_7((v51 + 24 * v158), *v52);
              if (v154)
              {
                v53 = OUTLINED_FUNCTION_59();
                mlir::DiagnosticArgument::DiagnosticArgument(v53, v1);
                OUTLINED_FUNCTION_20();
                if (v45)
                {
                  OUTLINED_FUNCTION_10();
                  if (v124 > v2 || (v123 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_34();
                  }

                  OUTLINED_FUNCTION_91();
                  OUTLINED_FUNCTION_34();
                }

                OUTLINED_FUNCTION_6(v54);
                OUTLINED_FUNCTION_17();
              }
            }
          }
        }

        OUTLINED_FUNCTION_116(v35, v36, v37, v38, v39, v40, v41, v42, v129, v137, v145, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
        if (v154)
        {
          mlir::InFlightDiagnostic::report(&v154);
        }

        OUTLINED_FUNCTION_89();
        if (v26)
        {
          v62 = v177;
          if (v177 != v5)
          {
            free(v177);
          }

          v63 = v174;
          if (v174)
          {
            v64 = OUTLINED_FUNCTION_49(v62, v55, v56, v57, v58, v59, v60, v61, v131, v139, v147, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
            if (!v26)
            {
              do
              {
                v64 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100]((v64 - 8));
              }

              while (v64 != v63);
              v65 = v174;
            }

            OUTLINED_FUNCTION_118(v65, v132, v140, v148, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
          }

          v66 = v171;
          if (v171)
          {
            v67 = v172;
            v68 = v171;
            if (v172 != v171)
            {
              OUTLINED_FUNCTION_16_0();
              do
              {
                v70 = *--v67;
                v69 = v70;
                *v67 = 0;
                if (v70)
                {
                  MEMORY[0x259C63150](v69, v63);
                }
              }

              while (v67 != v66);
              v68 = v171;
            }

            v172 = v66;
            operator delete(v68);
          }

          v71 = OUTLINED_FUNCTION_112(v62, v55, v56, v57, v58, v59, v60, v61, v131, v139, v147, v151, v152, v153, v154, v155, v156, v157);
          if (!v26)
          {
            free(v71);
          }
        }

        OUTLINED_FUNCTION_111();
        mlir::Diagnostic::attachNote();
      }

      OUTLINED_FUNCTION_98();
    }

    while (!v26);
  }

  mlir::FunctionType::getResults(&v151);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_85(v27, v129, v137, v145, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
  if (v1)
  {
    OUTLINED_FUNCTION_61();
    do
    {
      if (v6 == v4)
      {
        break;
      }

      mlir::detail::OpResultImpl::getNextResultAtOffset(v3, v4);
      OUTLINED_FUNCTION_96();
      if (!v26)
      {
        OUTLINED_FUNCTION_68(v28, v29, v30, v31, v32, v33);
        if (v154)
        {
          OUTLINED_FUNCTION_95();
          OUTLINED_FUNCTION_22("expected a result of type ");
          if (v45)
          {
            OUTLINED_FUNCTION_15();
            if (v111 > v112 || (v110 & 1) == 0)
            {
              OUTLINED_FUNCTION_46();
            }

            OUTLINED_FUNCTION_46();
          }

          OUTLINED_FUNCTION_7((v80 + 24 * v158), *v81);
          if (v154)
          {
            v82 = OUTLINED_FUNCTION_59();
            mlir::DiagnosticArgument::DiagnosticArgument(v82, v83);
            OUTLINED_FUNCTION_20();
            if (v45)
            {
              OUTLINED_FUNCTION_10();
              if (v116 > v2 || (v115 & 1) == 0)
              {
                OUTLINED_FUNCTION_33();
              }

              OUTLINED_FUNCTION_92();
              OUTLINED_FUNCTION_33();
            }

            OUTLINED_FUNCTION_6(v84);
            OUTLINED_FUNCTION_40();
            if (v85)
            {
              OUTLINED_FUNCTION_50();
              v181 = " but got ";
              v182 = v86;
              OUTLINED_FUNCTION_39();
              if (v45)
              {
                OUTLINED_FUNCTION_41();
                if (v121 > v122 || (v120 & 1) == 0)
                {
                  OUTLINED_FUNCTION_45();
                }

                OUTLINED_FUNCTION_45();
              }

              OUTLINED_FUNCTION_7((v87 + 24 * v158), *v88);
              if (v154)
              {
                v89 = OUTLINED_FUNCTION_59();
                mlir::DiagnosticArgument::DiagnosticArgument(v89, v1);
                OUTLINED_FUNCTION_20();
                if (v45)
                {
                  OUTLINED_FUNCTION_10();
                  if (v126 > v2 || (v125 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_33();
                  }

                  OUTLINED_FUNCTION_91();
                  OUTLINED_FUNCTION_33();
                }

                OUTLINED_FUNCTION_6(v90);
                OUTLINED_FUNCTION_17();
              }
            }
          }
        }

        OUTLINED_FUNCTION_116(v72, v73, v74, v75, v76, v77, v78, v79, v130, v138, v146, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
        if (v154)
        {
          mlir::InFlightDiagnostic::report(&v154);
        }

        OUTLINED_FUNCTION_89();
        if (v26)
        {
          v98 = v177;
          if (v177 != " but got ")
          {
            free(v177);
          }

          v99 = v174;
          if (v174)
          {
            v100 = OUTLINED_FUNCTION_49(v98, v91, v92, v93, v94, v95, v96, v97, v133, v141, v149, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
            if (!v26)
            {
              do
              {
                v100 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100]((v100 - 8));
              }

              while (v100 != v99);
              v101 = v174;
            }

            OUTLINED_FUNCTION_118(v101, v134, v142, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
          }

          v102 = v171;
          if (v171)
          {
            v103 = v172;
            v104 = OUTLINED_FUNCTION_114();
            if (!v26)
            {
              OUTLINED_FUNCTION_16_0();
              do
              {
                v105 = OUTLINED_FUNCTION_104();
                if (v105)
                {
                  MEMORY[0x259C63150](v105, v99);
                }
              }

              while (v103 != v102);
              v104 = v171;
            }

            v172 = v102;
            operator delete(v104);
          }

          v106 = OUTLINED_FUNCTION_112(v98, v91, v92, v93, v94, v95, v96, v97, v133, v141, v149, v151, v152, v153, v154, v155, v156, v157);
          if (!v26)
          {
            free(v106);
          }
        }

        OUTLINED_FUNCTION_111();
        mlir::Diagnostic::attachNote();
      }

      v2 += 8;
      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::getCalleeType(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  v32 = *MEMORY[0x277D85DE8];
  Context = mlir::Attribute::getContext((*this + 24));
  OUTLINED_FUNCTION_80();
  if (v2 < 0)
  {
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_81();
  }

  v22 = v4;
  v23 = v3;
  Types = mlir::OperandRange::getTypes(&v22, &v24);
  OUTLINED_FUNCTION_83(Types, v6, v7, v8, v9, v10, v11, v12, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  mlir::TypeRange::TypeRange(v29, v30, v31);
  OUTLINED_FUNCTION_23();
  v20 = v13;
  v21 = v14;
  mlir::ResultRange::getTypes(&v20, &v24);
  NextResultAtOffset = v24;
  v16 = v25;
  v17 = v27;
  if (v25)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v24, v25);
  }

  mlir::ValueRange::ValueRange(&v30, NextResultAtOffset, v17 - v16);
  mlir::TypeRange::TypeRange(v28, v30, v31);
  return mlir::FunctionType::get(Context, v29[0], v29[1], v28[0], v28[1]);
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::CallOp::print(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::OpAsmPrinter *a2)
{
  OUTLINED_FUNCTION_76();
  v50[2] = *MEMORY[0x277D85DE8];
  (*(*v6 + 16))(v6);
  OUTLINED_FUNCTION_54();
  if (v9)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    OUTLINED_FUNCTION_12(v7, v8);
  }

  mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(v3);
  OUTLINED_FUNCTION_113();
  if (v11 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v50[0] = v12;
  if (v12)
  {
    Value = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(v50);
LABEL_9:
    (*(*v2 + 40))(v2, Value);
    goto LABEL_10;
  }

  Value = v10;
  if (!v10 || v11 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    goto LABEL_9;
  }

  mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(v2, v10);
LABEL_10:
  (*(*v2 + 16))(v2);
  OUTLINED_FUNCTION_54();
  if (v9)
  {
    llvm::raw_ostream::write(v14, "(", 1uLL);
  }

  else
  {
    OUTLINED_FUNCTION_12(v14, v15);
  }

  OUTLINED_FUNCTION_77();
  if (v16 < 0)
  {
    OUTLINED_FUNCTION_75();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  (*(*v2 + 16))(v2);
  if (v5)
  {
    OUTLINED_FUNCTION_24();
    (*(v17 + 160))(v2);
    v18 = v5 - 1;
    if (v18)
    {
      v19 = v4 + 56;
      do
      {
        OUTLINED_FUNCTION_44();
        if (!v9 & v21)
        {
          OUTLINED_FUNCTION_21(v20);
        }

        else
        {
          OUTLINED_FUNCTION_64();
        }

        v19 += 32;
        OUTLINED_FUNCTION_42();
        (*(v22 + 160))(v2);
        --v18;
      }

      while (v18);
    }
  }

  (*(*v2 + 16))(v2);
  OUTLINED_FUNCTION_51();
  if (!v9 & v21)
  {
    *v24 = 8233;
    OUTLINED_FUNCTION_52(v23);
  }

  else
  {
    llvm::raw_ostream::write(v23, ") ", 2uLL);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*v3);
  v33 = OUTLINED_FUNCTION_115(AttrDictionary, v26, v27, v28, v29, v30, v31, v32, v48, v50[0]);
  v50[0] = OUTLINED_FUNCTION_67(v33, v34, v35, v36, v37, v38, v39, v40, v49);
  v50[1] = v41;
  OUTLINED_FUNCTION_42();
  v42 = OUTLINED_FUNCTION_74();
  v43(v42);
  OUTLINED_FUNCTION_42();
  v45 = (*(v44 + 16))(v2);
  v46 = v45[4];
  if ((v45[3] - v46) > 2)
  {
    OUTLINED_FUNCTION_65(v45, v46);
  }

  else
  {
    llvm::raw_ostream::write(v45, " : ", 3uLL);
  }

  return mlir::OpAsmPrinter::printFunctionalType(v2, *v3);
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::InvokeOp::print(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::OpAsmPrinter *a2)
{
  OUTLINED_FUNCTION_76();
  v50[2] = *MEMORY[0x277D85DE8];
  (*(*v6 + 16))(v6);
  OUTLINED_FUNCTION_54();
  if (v9)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    OUTLINED_FUNCTION_12(v7, v8);
  }

  mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(v3);
  OUTLINED_FUNCTION_113();
  if (v11 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v50[0] = v12;
  if (v12)
  {
    Value = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(v50);
LABEL_9:
    (*(*v2 + 40))(v2, Value);
    goto LABEL_10;
  }

  Value = v10;
  if (!v10 || v11 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    goto LABEL_9;
  }

  mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(v2, v10);
LABEL_10:
  (*(*v2 + 16))(v2);
  OUTLINED_FUNCTION_54();
  if (v9)
  {
    llvm::raw_ostream::write(v14, "(", 1uLL);
  }

  else
  {
    OUTLINED_FUNCTION_12(v14, v15);
  }

  OUTLINED_FUNCTION_77();
  if (v16 < 0)
  {
    OUTLINED_FUNCTION_75();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  (*(*v2 + 16))(v2);
  if (v5)
  {
    OUTLINED_FUNCTION_24();
    (*(v17 + 160))(v2);
    v18 = v5 - 1;
    if (v18)
    {
      v19 = v4 + 56;
      do
      {
        OUTLINED_FUNCTION_44();
        if (!v9 & v21)
        {
          OUTLINED_FUNCTION_21(v20);
        }

        else
        {
          OUTLINED_FUNCTION_64();
        }

        v19 += 32;
        OUTLINED_FUNCTION_42();
        (*(v22 + 160))(v2);
        --v18;
      }

      while (v18);
    }
  }

  (*(*v2 + 16))(v2);
  OUTLINED_FUNCTION_51();
  if (!v9 & v21)
  {
    *v24 = 8233;
    OUTLINED_FUNCTION_52(v23);
  }

  else
  {
    llvm::raw_ostream::write(v23, ") ", 2uLL);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*v3);
  v33 = OUTLINED_FUNCTION_115(AttrDictionary, v26, v27, v28, v29, v30, v31, v32, v48, v50[0]);
  v50[0] = OUTLINED_FUNCTION_67(v33, v34, v35, v36, v37, v38, v39, v40, v49);
  v50[1] = v41;
  OUTLINED_FUNCTION_42();
  v42 = OUTLINED_FUNCTION_74();
  v43(v42);
  OUTLINED_FUNCTION_42();
  v45 = (*(v44 + 16))(v2);
  v46 = v45[4];
  if ((v45[3] - v46) > 2)
  {
    OUTLINED_FUNCTION_65(v45, v46);
  }

  else
  {
    llvm::raw_ostream::write(v45, " : ", 3uLL);
  }

  return mlir::OpAsmPrinter::printFunctionalType(v2, *v3);
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeType(mlir::ODIE::Compiler::CoreML::InvokeOp *this)
{
  v32 = *MEMORY[0x277D85DE8];
  Context = mlir::Attribute::getContext((*this + 24));
  OUTLINED_FUNCTION_80();
  if (v2 < 0)
  {
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_81();
  }

  v22 = v4;
  v23 = v3;
  Types = mlir::OperandRange::getTypes(&v22, &v24);
  OUTLINED_FUNCTION_83(Types, v6, v7, v8, v9, v10, v11, v12, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  mlir::TypeRange::TypeRange(v29, v30, v31);
  OUTLINED_FUNCTION_23();
  v20 = v13;
  v21 = v14;
  mlir::ResultRange::getTypes(&v20, &v24);
  NextResultAtOffset = v24;
  v16 = v25;
  v17 = v27;
  if (v25)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v24, v25);
  }

  mlir::ValueRange::ValueRange(&v30, NextResultAtOffset, v17 - v16);
  mlir::TypeRange::TypeRange(v28, v30, v31);
  return mlir::FunctionType::get(Context, v29[0], v29[1], v28[0], v28[1]);
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOpAdaptor::AddOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::AllOpAdaptor::AllOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::AndOpAdaptor::AndOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::AnyOpAdaptor::AnyOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::AvgPool2dOpAdaptor::AvgPool2dOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOpAdaptor::AwaitOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::BatchMatmulOpAdaptor::BatchMatmulOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::BatchNormOpAdaptor::BatchNormOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastInDimsOpAdaptor::BroadcastInDimsOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastShapesOpAdaptor::BroadcastShapesOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastToOpAdaptor::BroadcastToOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOpAdaptor::CallOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

unint64_t mlir::ODIE::Compiler::CoreML::CallOp::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::CallOp *this, int a2)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_18(a2, v2);
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::getOperandsMutable@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_88(a1);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return OUTLINED_FUNCTION_4(v2, v3, 0, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::CastOpAdaptor::CastOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOpAdaptor::ClassOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConcatOpAdaptor::ConcatOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConcatOp::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::ConcatOp *this, unsigned int a2)
{
  v2 = byte_25736D3A0;
  if (a2)
  {
    v3 = a2;
    if (a2 < 4)
    {
      v4 = 0;
      v5 = 0;
      goto LABEL_14;
    }

    if (a2 >= 0x20)
    {
      *v6.i64 = OUTLINED_FUNCTION_37();
      do
      {
        *v6.i64 = OUTLINED_FUNCTION_19(v6);
      }

      while (!v14);
      OUTLINED_FUNCTION_43(v6, v7, v8, v9, v10, v11, v12, v13);
      if (v14)
      {
        goto LABEL_16;
      }

      if ((v3 & 0x1C) == 0)
      {
LABEL_14:
        v20 = &v2[v4];
        v21 = v3 - v4;
        do
        {
          v22 = *v20++;
          v5 += v22;
          --v21;
        }

        while (v21);
        goto LABEL_16;
      }
    }

    *v17.i32 = OUTLINED_FUNCTION_72();
    do
    {
      v19 = *v15++;
      v18.i32[0] = v19;
      v18 = vmovl_u8(v18).u64[0];
      v17 = vaddw_u16(v17, v18);
      v16 += 4;
    }

    while (v16);
    v5 = vaddvq_s32(v17);
    if (v4 != v3)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_66();
  if (!v14)
  {
    v23 = v24;
  }

  return OUTLINED_FUNCTION_69(v23);
}

uint64_t mlir::ODIE::Compiler::CoreML::ConcatOp::getInputsMutable@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_88(a1);
  if (v4 < 0)
  {
    v5 = *(v3 + 68) - 1;
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_4(v2, v3, 1, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::ConditionOpAdaptor::ConditionOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConditionOp::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::ConditionOp *this, unsigned int a2)
{
  v2 = byte_25736D3A0;
  if (a2)
  {
    v3 = a2;
    if (a2 < 4)
    {
      v4 = 0;
      v5 = 0;
      goto LABEL_14;
    }

    if (a2 >= 0x20)
    {
      *v6.i64 = OUTLINED_FUNCTION_37();
      do
      {
        *v6.i64 = OUTLINED_FUNCTION_19(v6);
      }

      while (!v14);
      OUTLINED_FUNCTION_43(v6, v7, v8, v9, v10, v11, v12, v13);
      if (v14)
      {
        goto LABEL_16;
      }

      if ((v3 & 0x1C) == 0)
      {
LABEL_14:
        v20 = &v2[v4];
        v21 = v3 - v4;
        do
        {
          v22 = *v20++;
          v5 += v22;
          --v21;
        }

        while (v21);
        goto LABEL_16;
      }
    }

    *v17.i32 = OUTLINED_FUNCTION_72();
    do
    {
      v19 = *v15++;
      v18.i32[0] = v19;
      v18 = vmovl_u8(v18).u64[0];
      v17 = vaddw_u16(v17, v18);
      v16 += 4;
    }

    while (v16);
    v5 = vaddvq_s32(v17);
    if (v4 != v3)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_66();
  if (!v14)
  {
    v23 = v24;
  }

  return OUTLINED_FUNCTION_69(v23);
}

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOpAdaptor::ConstantOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::Conv2dOpAdaptor::Conv2dOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::CosOpAdaptor::CosOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateComplexOpAdaptor::CreateComplexOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateTokenOpAdaptor::CreateTokenOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOpAdaptor::DelegateOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

unint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::DelegateOp *this, int a2)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_18(a2, v2);
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::getInputsMutable@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_88(a1);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return OUTLINED_FUNCTION_4(v2, v3, 0, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::DivideOpAdaptor::DivideOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::EqualOpAdaptor::EqualOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOpAdaptor::ErrorOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v6, v7);
  OUTLINED_FUNCTION_62();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v6, v7);
  OUTLINED_FUNCTION_62();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ExpOpAdaptor::ExpOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ExpandDimsOpAdaptor::ExpandDimsOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::FillOpAdaptor::FillOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::FloorDivideOpAdaptor::FloorDivideOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOpAdaptor::FuncOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14_0(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 88), v6, v7);
  OUTLINED_FUNCTION_99();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14_0(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 88), v6, v7);
  OUTLINED_FUNCTION_99();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::GELUOpAdaptor::GELUOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v6, v7);
  OUTLINED_FUNCTION_62();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v6, v7);
  OUTLINED_FUNCTION_62();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::GatherNdOpAdaptor::GatherNdOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetShapeOpAdaptor::GetShapeOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOpAdaptor::GraphOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14_0(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 88), v6, v7);
  OUTLINED_FUNCTION_99();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14_0(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 88), v6, v7);
  OUTLINED_FUNCTION_99();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::GreaterOpAdaptor::GreaterOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::IfOpAdaptor::IfOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImaginaryPartOpAdaptor::ImaginaryPartOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOpAdaptor::ImportOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v3 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(&v14, v4, v5);
  OUTLINED_FUNCTION_2();
  v8 = v6 + 16 * v7;
  v9 = *(v8 + 16);
  *(v0 + 24) = *v8;
  *(v0 + 40) = v9;
  OUTLINED_FUNCTION_38();
  if (v10)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 48), v11, v12);
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v3 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(&v14, v4, v5);
  OUTLINED_FUNCTION_2();
  v8 = v6 + 16 * v7;
  v9 = *(v8 + 16);
  *(v0 + 24) = *v8;
  *(v0 + 40) = v9;
  OUTLINED_FUNCTION_38();
  if (v10)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 48), v11, v12);
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOpAdaptor::InvokeOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

unint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::InvokeOp *this, int a2)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_18(a2, v2);
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getOperandsMutable@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_88(a1);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return OUTLINED_FUNCTION_4(v2, v3, 0, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOpAdaptor::IsolatedGroupOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v6, v7);
  OUTLINED_FUNCTION_62();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v6, v7);
  OUTLINED_FUNCTION_62();
  return v0;
}

unint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp *this, int a2)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_18(a2, v2);
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getInputsMutable@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_88(a1);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return OUTLINED_FUNCTION_4(v2, v3, 0, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::JoinTokenOpAdaptor::JoinTokenOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::JoinTokenOp *this, unsigned int a2)
{
  v2 = byte_25736D3A0;
  if (a2)
  {
    v3 = a2;
    if (a2 < 4)
    {
      v4 = 0;
      v5 = 0;
      goto LABEL_14;
    }

    if (a2 >= 0x20)
    {
      *v6.i64 = OUTLINED_FUNCTION_37();
      do
      {
        *v6.i64 = OUTLINED_FUNCTION_19(v6);
      }

      while (!v14);
      OUTLINED_FUNCTION_43(v6, v7, v8, v9, v10, v11, v12, v13);
      if (v14)
      {
        goto LABEL_16;
      }

      if ((v3 & 0x1C) == 0)
      {
LABEL_14:
        v20 = &v2[v4];
        v21 = v3 - v4;
        do
        {
          v22 = *v20++;
          v5 += v22;
          --v21;
        }

        while (v21);
        goto LABEL_16;
      }
    }

    *v17.i32 = OUTLINED_FUNCTION_72();
    do
    {
      v19 = *v15++;
      v18.i32[0] = v19;
      v18 = vmovl_u8(v18).u64[0];
      v17 = vaddw_u16(v17, v18);
      v16 += 4;
    }

    while (v16);
    v5 = vaddvq_s32(v17);
    if (v4 != v3)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_66();
  if (!v14)
  {
    v23 = v24;
  }

  return OUTLINED_FUNCTION_69(v23);
}

uint64_t mlir::ODIE::Compiler::CoreML::JoinTokenOp::getRestTokensMutable@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_88(a1);
  if (v4 < 0)
  {
    v5 = *(v3 + 68) - 1;
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_4(v2, v3, 1, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::LogOpAdaptor::LogOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::MaxPool2dOpAdaptor::MaxPool2dOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::MaximumOpAdaptor::MaximumOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOpAdaptor::MemberOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v3 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(&v14, v4, v5);
  OUTLINED_FUNCTION_2();
  v8 = (v6 + 16 * v7);
  v9 = v8[1];
  *(v0 + 24) = *v8;
  *(v0 + 40) = v9;
  OUTLINED_FUNCTION_38();
  if (v10)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 56), v11, v12);
  *(v0 + 72) = v1;
  *(v0 + 80) = v2;
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v3 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(&v14, v4, v5);
  OUTLINED_FUNCTION_2();
  v8 = (v6 + 16 * v7);
  v9 = v8[1];
  *(v0 + 24) = *v8;
  *(v0 + 40) = v9;
  OUTLINED_FUNCTION_38();
  if (v10)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 56), v11, v12);
  *(v0 + 72) = v1;
  *(v0 + 80) = v2;
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::MinimumOpAdaptor::MinimumOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOpAdaptor::ModuleOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuloOpAdaptor::ModuloOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::MulOpAdaptor::MulOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::NonZeroOpAdaptor::NonZeroOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::NotEqualOpAdaptor::NotEqualOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::NotOpAdaptor::NotOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::OrOpAdaptor::OrOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}