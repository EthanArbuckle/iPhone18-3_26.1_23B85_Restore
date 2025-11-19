unsigned __int8 *sub_24D618518(unsigned __int8 *result, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = (v3 - *v3);
    v5 = *v4;
    if (v5 < 5)
    {
      v7 = 0;
      v6 = 0;
    }

    else
    {
      v6 = v4[2];
      if (v4[2])
      {
        v6 = *(v3 + v6 + *(v3 + v6));
      }

      if (v5 < 7)
      {
        v7 = 0;
      }

      else
      {
        v7 = v4[3];
        if (v4[3])
        {
          v7 = *(v3 + v7 + *(v3 + v7));
        }

        if (v5 >= 9)
        {
          v8 = v4[4];
          if (v4[4])
          {
            v9 = *(v3 + v8);
            v10 = (v3 + v8 + v9);
            v11 = *v10;
            if (v11)
            {
              v12 = 0;
              v13 = 0;
              v14 = 4 * v11;
              v15 = v3 + v8 + v9;
              do
              {
                v16 = v10[v12 / 4 + 1];
                v17 = &v15[v12 + v16 - *(&v10[v12 / 4 + 1] + v16)];
                v19 = *(v17 + 2) >= 5u && (v18 = *(v17 + 4)) != 0 && *&v15[v16 + 4 + v18 + v12 + *&v15[v12 + 4 + v16 + v18]] != 0;
                v13 += v19;
                v12 += 4;
              }

              while (v14 != v12);
              v20 = v13 != 0;
              goto LABEL_22;
            }
          }
        }
      }
    }

    v20 = 0;
LABEL_22:
    v21 = (v6 | v7) != 0 || v20;
    goto LABEL_23;
  }

  v21 = 0;
LABEL_23:
  v22 = *(a2 + 16);
  if (v22 && (v23 = *v22, v23))
  {
    v24 = 8 * v23;
    v25 = v22 + 1;
    while (!*v25)
    {
      ++v25;
      v24 -= 8;
      if (!v24)
      {
        goto LABEL_28;
      }
    }

    v43 = 1;
  }

  else
  {
LABEL_28:
    if (!v21)
    {
      *result = 0u;
      *(result + 1) = 0u;
      return result;
    }

    v43 = 0;
  }

  md = result;
  if (v3 && (v26 = (v3 - *v3), *v26 >= 5u) && (v27 = v26[2]) != 0)
  {
    v28 = (v3 + v27 + *(v3 + v27));
  }

  else
  {
    v28 = 0;
  }

  sub_24D619380(a2, v28);
  v29 = *(a2 + 8);
  if (v29 && (v30 = (v29 - *v29), *v30 >= 7u) && (v31 = v30[3]) != 0)
  {
    v32 = (v29 + v31 + *(v29 + v31));
  }

  else
  {
    v32 = 0;
  }

  sub_24D619380(a2, v32);
  v33 = *(a2 + 8);
  if (v33)
  {
    v34 = (v33 - *v33);
    if (*v34 >= 9u)
    {
      v35 = v34[4];
      if (v35)
      {
        if (*(v33 + v35 + *(v33 + v35)))
        {
          operator new();
        }

        sub_24D61A780(0, 0, 0, 1);
      }
    }
  }

  data[0] = 0;
  CC_SHA256_Update(*a2, data, 8u);
  if (v43)
  {
    v36 = *(a2 + 16);
    if (v36)
    {
      v37 = *v36;
      if (v37)
      {
        v38 = (v36 + 1);
        if (v37 >= 3)
        {
          v37 = 3;
        }

        v39 = 8 * v37;
        v40 = data;
        do
        {
          v41 = *v38++;
          *v40++ = v41;
          v39 -= 8;
        }

        while (v39);
      }

      else
      {
        v40 = data;
      }

      if (data - v40 + 24 >= 1)
      {
        memset_pattern16(v40, &unk_24D61CE70, data - v40 + 24);
      }
    }

    else
    {
      memset(data, 0, sizeof(data));
    }

    for (i = 0; i != 3; ++i)
    {
      v46 = data[i];
      CC_SHA256_Update(*a2, &v46, 8u);
    }
  }

  return CC_SHA256_Final(md, *a2);
}

void MTLGPUCompilerHashComputePipelineScript()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  v1 = 0u;
  sub_24D618D04();
}

void MTLGPUCompilerHashVertexPipelineScript()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  v1 = 0u;
  sub_24D618D04();
}

void MTLGPUCompilerHashObjectPipelineScript()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  v1 = 0u;
  sub_24D618D04();
}

void MTLGPUCompilerHashMeshPipelineScript()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  v1 = 0u;
  sub_24D618D04();
}

void MTLGPUCompilerHashFragmentPipelineScript()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  v1 = 0u;
  sub_24D618D04();
}

void sub_24D619380(CC_SHA256_CTX **a1, unsigned int *a2)
{
  v2 = a1;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if (a2)
  {
    v3 = a2;
    sub_24D6196D8(&v47, *a2);
    v4 = *v3;
    v5 = v48;
    if (v4)
    {
      v6 = v3 + 9;
      v7 = v49;
      v8 = v47;
      v9 = v3;
      v45 = &v3[v4];
      do
      {
        v46 = v8;
        v10 = v7;
        v12 = v9[1];
        ++v9;
        v11 = v12;
        v13 = (v9 + v12);
        v15 = (v13 + 1);
        v14 = *v13;
        v16 = v13 + v14 + 4;
        if (*v13 >= 0x12u)
        {
          v17 = *v13;
          v18 = v13 + 1;
          do
          {
            v19 = memchr(v18, 95, v17 - 17);
            if (!v19)
            {
              break;
            }

            if (*v19 == 0x65725F7269615F5FLL && *(v19 + 1) == 0x5F5F6465766C6F73 && *(v19 + 8) == 14906)
            {
              goto LABEL_16;
            }

            v18 = v19 + 1;
            v17 = v16 - v18;
          }

          while (v16 - v18 > 17);
        }

        v19 = v13 + v14 + 4;
LABEL_16:
        v23 = v19 != v16 && v15 == v19;
        if (v14)
        {
          v24 = -1;
          v25 = v14;
          while (v25)
          {
            v26 = v24;
            v27 = *(v3 + v11 + v25-- + 7);
            --v24;
            if (v27 == 95)
            {
              v28 = !v23;
              if (v25 - 19 > 0xFFFFFFFFFFFFFFEBLL)
              {
                v28 = 1;
              }

              if ((v28 & 1) != 0 || v25 >= v14 - 1)
              {
                break;
              }

              if (v25 >= v14)
              {
                goto LABEL_71;
              }

              v29 = &v6[v11 + v14];
              v7 = v10;
              v8 = v46;
              while (v26 != -1)
              {
                v30 = v29[v26];
                if ((v30 & 0x8000000000000000) == 0)
                {
                  ++v26;
                  if ((*(MEMORY[0x277D85DE0] + 4 * v30 + 60) & 0x400) != 0)
                  {
                    continue;
                  }
                }

                goto LABEL_38;
              }

              if (v14 <= 0x11)
              {
LABEL_71:
                abort();
              }

              v36 = v25 - 18;
              v15 = v13 + 22;
              if (v14 - 18 >= v36)
              {
                v14 = v36;
              }

              else
              {
                v14 -= 18;
              }

              goto LABEL_38;
            }
          }
        }

        else
        {
          v14 = 0;
        }

        v7 = v10;
        v8 = v46;
LABEL_38:
        if (v5 >= v7)
        {
          v31 = v5 - v8;
          v32 = v5 - v8;
          v33 = v32 + 1;
          if ((v32 + 1) >> 60)
          {
            sub_24D619794();
          }

          if ((v7 - v8) >> 3 > v33)
          {
            v33 = (v7 - v8) >> 3;
          }

          if (v7 - v8 >= 0x7FFFFFFFFFFFFFF0)
          {
            v34 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v33;
          }

          if (v34)
          {
            if (!(v34 >> 60))
            {
              operator new();
            }

            sub_24D619794();
          }

          v35 = (16 * v32);
          v7 = 0;
          *v35 = v15;
          v35[1] = v14;
          v5 = (16 * v32 + 16);
          memcpy(0, v8, v31);
          v47 = 0;
          v49 = 0;
          if (v8)
          {
            operator delete(v8);
          }

          v8 = 0;
        }

        else
        {
          v5->n128_u64[0] = v15;
          v5->n128_u64[1] = v14;
          ++v5;
        }

        v48 = v5;
        v6 += 4;
        v3 = v9;
      }

      while (v9 != v45);
    }

    v37 = v47;
    v38 = v5 - v47;
    v39 = 126 - 2 * __clz(v38);
    if (v5 == v47)
    {
      v40 = 0;
    }

    else
    {
      v40 = v39;
    }

    sub_24D6197A4(v47, v5, v40, 1);
    v2 = a1;
  }

  else
  {
    v5 = 0;
    v37 = 0;
    v38 = 0;
  }

  data = v38;
  CC_SHA256_Update(*v2, &data, 8u);
  if (v37 != v5)
  {
    v41 = v37;
    do
    {
      v42 = v41->n128_u64[0];
      v43 = v41->n128_u64[1];
      ++v41;
      data = v43;
      CC_SHA256_Update(*v2, &data, 8u);
      CC_SHA256_Update(*v2, v42, v43);
    }

    while (v41 != v5);
  }

  if (v37)
  {
    operator delete(v37);
  }
}

void *sub_24D6196D8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    v2 = result[1] - *result;
    operator new();
  }

  return result;
}

__n128 sub_24D6197A4(__n128 *a1, __n128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = &a2[-1];
  v167 = &a2[-3];
  v168 = &a2[-2];
  v8 = a1;
  v172 = a2;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          result.n128_u64[0] = sub_24D61A218(v8, (v8 + 16), v7).n128_u64[0];
          return result;
        case 4:

          result.n128_u64[0] = sub_24D61A370(v8, v8 + 16, v8 + 32, v7).n128_u64[0];
          return result;
        case 5:

          result.n128_u64[0] = sub_24D61A460(v8, v8 + 16, v8 + 32, v8 + 48, v7).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v70 = a2[-1].n128_u64[0];
        v71 = a2[-1].n128_u64[1];
        v72 = a2 - 1;
        v73 = *(v8 + 8);
        if (v73 >= v71)
        {
          v74 = v71;
        }

        else
        {
          v74 = *(v8 + 8);
        }

        v75 = memcmp(v70, *v8, v74);
        if (v75)
        {
          if ((v75 & 0x80000000) == 0)
          {
            return result;
          }
        }

        else if (v71 >= v73)
        {
          return result;
        }

        v178 = *v8;
        *v8 = *v72;
        result = v178;
        *v72 = v178;
        return result;
      }
    }

    if (v9 <= 23)
    {
      v76 = (v8 + 16);
      v78 = v8 == a2 || v76 == a2;
      if ((a4 & 1) == 0)
      {
        if (v78)
        {
          return result;
        }

        while (1)
        {
          v155 = a1;
          a1 = v76;
          v156 = v155[1].n128_u64[0];
          v157 = v155[1].n128_u64[1];
          v158 = v155->n128_u64[1];
          if (v158 >= v157)
          {
            v159 = v155[1].n128_u64[1];
          }

          else
          {
            v159 = v155->n128_u64[1];
          }

          v160 = memcmp(v155[1].n128_u64[0], v155->n128_u64[0], v159);
          if (v160)
          {
            if (v160 < 0)
            {
              goto LABEL_289;
            }
          }

          else if (v157 < v158)
          {
            do
            {
LABEL_289:
              while (1)
              {
                v161 = v155;
                v155[1] = *v155;
                v163 = v155[-1].n128_u64[0];
                --v155;
                v162 = v163;
                v164 = v161[-1].n128_u64[1];
                v165 = v164 >= v157 ? v157 : v161[-1].n128_u64[1];
                v166 = memcmp(v156, v162, v165);
                if (!v166)
                {
                  break;
                }

                if ((v166 & 0x80000000) == 0)
                {
                  goto LABEL_296;
                }
              }
            }

            while (v157 < v164);
LABEL_296:
            v161->n128_u64[0] = v156;
            v161->n128_u64[1] = v157;
          }

          v76 = a1 + 1;
          if (&a1[1] == a2)
          {
            return result;
          }
        }
      }

      if (v78)
      {
        return result;
      }

      v79 = 0;
      v80 = v8;
      while (2)
      {
        v81 = *(v80 + 16);
        v82 = *(v80 + 24);
        v83 = *v80;
        v84 = *(v80 + 8);
        v80 = v76;
        if (v84 >= v82)
        {
          v85 = v82;
        }

        else
        {
          v85 = v84;
        }

        v86 = memcmp(v81, v83, v85);
        if (v86)
        {
          if ((v86 & 0x80000000) == 0)
          {
LABEL_187:
            v76 = (v80 + 16);
            v79 += 16;
            if ((v80 + 16) == a2)
            {
              return result;
            }

            continue;
          }
        }

        else if (v82 >= v84)
        {
          goto LABEL_187;
        }

        break;
      }

      v87 = v79;
      while (1)
      {
        v88 = v87;
        v89 = v8 + v87;
        result = *v89;
        *(v89 + 16) = *v89;
        if (!v88)
        {
          break;
        }

        v90 = *(v89 - 8);
        if (v90 >= v82)
        {
          v91 = v82;
        }

        else
        {
          v91 = *(v89 - 8);
        }

        v92 = memcmp(v81, *(v89 - 16), v91);
        if (!v92)
        {
          if (v82 >= v90)
          {
            goto LABEL_184;
          }

          v92 = -1;
        }

        v87 = v88 - 16;
        if ((v92 & 0x80000000) == 0)
        {
LABEL_184:
          v93 = (v8 + v88);
          goto LABEL_186;
        }
      }

      v93 = v8;
LABEL_186:
      *v93 = v81;
      v93[1] = v82;
      goto LABEL_187;
    }

    if (!a3)
    {
      break;
    }

    v10 = (v8 + 16 * (v9 >> 1));
    if (v9 < 0x81)
    {
      sub_24D61A218((v8 + 16 * (v9 >> 1)), v8, v7);
    }

    else
    {
      sub_24D61A218(v8, (v8 + 16 * (v9 >> 1)), v7);
      sub_24D61A218((v8 + 16), v10 - 1, v168);
      sub_24D61A218((v8 + 32), (v8 + 16 + 16 * (v9 >> 1)), v167);
      sub_24D61A218(v10 - 1, (v8 + 16 * (v9 >> 1)), (v8 + 16 + 16 * (v9 >> 1)));
      v174 = *v8;
      *v8 = *v10;
      *v10 = v174;
    }

    --a3;
    v11 = *v8;
    if (a4)
    {
      v12 = *(v8 + 8);
LABEL_21:
      v16 = 0;
      do
      {
        v17 = v16;
        v18 = v8 + v16;
        v19 = *(v18 + 24);
        if (v12 >= v19)
        {
          v20 = *(v18 + 24);
        }

        else
        {
          v20 = v12;
        }

        v21 = memcmp(*(v18 + 16), v11, v20);
        if (!v21)
        {
          if (v19 >= v12)
          {
            break;
          }

          v21 = -1;
        }

        v16 = v17 + 16;
      }

      while (v21 < 0);
      v22 = v8 + v17 + 16;
      v23 = v7;
      if (v17)
      {
        do
        {
          v24 = v23;
          v25 = *(v23 + 1);
          if (v12 >= v25)
          {
            v26 = *(v23 + 1);
          }

          else
          {
            v26 = v12;
          }

          v27 = memcmp(*v23, v11, v26);
          if (!v27)
          {
            if (v25 == v12)
            {
              v27 = 0;
            }

            else
            {
              if (v25 < v12)
              {
                break;
              }

              v27 = 1;
            }
          }

          v23 = (v24 - 16);
        }

        while ((v27 & 0x80000000) == 0);
      }

      else
      {
        v28 = v7;
        while (1)
        {
          v24 = v28;
          v29 = (v28 + 1);
          if (v22 >= v29)
          {
            break;
          }

          v30 = *(v24 + 8);
          if (v12 >= v30)
          {
            v31 = *(v24 + 8);
          }

          else
          {
            v31 = v12;
          }

          v32 = memcmp(*v24, v11, v31);
          if (!v32)
          {
            if (v30 == v12)
            {
              v32 = 0;
            }

            else
            {
              if (v30 < v12)
              {
                goto LABEL_70;
              }

              v32 = 1;
            }
          }

          v28 = (v24 - 16);
          if (v32 < 0)
          {
            goto LABEL_70;
          }
        }

        v24 = v29;
      }

LABEL_70:
      v8 = v22;
      if (v22 < v24)
      {
        v41 = v24;
        do
        {
          v175 = *v8;
          *v8 = *v41;
          *v41 = v175;
          v42 = v8 + 16;
          do
          {
            v8 = v42;
            v43 = *(v42 + 8);
            if (v12 >= v43)
            {
              v44 = *(v42 + 8);
            }

            else
            {
              v44 = v12;
            }

            v45 = memcmp(*v42, v11, v44);
            if (!v45)
            {
              if (v43 >= v12)
              {
                break;
              }

              v45 = -1;
            }

            v42 = v8 + 16;
          }

          while (v45 < 0);
          v46 = v41 - 1;
          do
          {
            v41 = v46;
            v47 = *(v46 + 1);
            if (v12 >= v47)
            {
              v48 = *(v46 + 1);
            }

            else
            {
              v48 = v12;
            }

            v49 = memcmp(*v46, v11, v48);
            if (!v49)
            {
              if (v47 == v12)
              {
                v49 = 0;
              }

              else
              {
                if (v47 < v12)
                {
                  break;
                }

                v49 = 1;
              }
            }

            v46 = v41 - 1;
          }

          while ((v49 & 0x80000000) == 0);
        }

        while (v8 < v41);
      }

      if ((v8 - 16) != a1)
      {
        *a1 = *(v8 - 16);
      }

      *(v8 - 16) = v11;
      *(v8 - 8) = v12;
      v50 = v22 >= v24;
      a2 = v172;
      if (!v50)
      {
        goto LABEL_97;
      }

      v51 = sub_24D61A594(a1, v8 - 16);
      if (sub_24D61A594(v8, v172))
      {
        a2 = (v8 - 16);
        if (v51)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v51)
      {
LABEL_97:
        sub_24D6197A4(a1, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v13 = *(v8 - 8);
      v12 = *(v8 + 8);
      if (v12 >= v13)
      {
        v14 = *(v8 - 8);
      }

      else
      {
        v14 = *(v8 + 8);
      }

      v15 = memcmp(*(v8 - 16), *v8, v14);
      if (v15)
      {
        if (v15 < 0)
        {
          goto LABEL_21;
        }
      }

      else if (v13 < v12)
      {
        goto LABEL_21;
      }

      v33 = a2[-1].n128_u64[1];
      if (v33 >= v12)
      {
        v34 = v12;
      }

      else
      {
        v34 = a2[-1].n128_u64[1];
      }

      v35 = memcmp(v11, a2[-1].n128_u64[0], v34);
      if (v35)
      {
        if (v35 < 0)
        {
          goto LABEL_58;
        }
      }

      else if (v12 < v33)
      {
LABEL_58:
        v37 = v8 + 16;
        do
        {
          v8 = v37;
          v38 = *(v37 + 8);
          if (v38 >= v12)
          {
            v39 = v12;
          }

          else
          {
            v39 = *(v37 + 8);
          }

          v40 = memcmp(v11, *v37, v39);
          if (!v40)
          {
            if (v12 == v38)
            {
              v40 = 0;
            }

            else
            {
              if (v12 < v38)
              {
                goto LABEL_110;
              }

              v40 = 1;
            }
          }

          v37 = v8 + 16;
        }

        while ((v40 & 0x80000000) == 0);
        goto LABEL_110;
      }

      v52 = v8 + 16;
      do
      {
        v8 = v52;
        if (v52 >= a2)
        {
          break;
        }

        v53 = *(v52 + 8);
        if (v53 >= v12)
        {
          v54 = v12;
        }

        else
        {
          v54 = *(v52 + 8);
        }

        v55 = memcmp(v11, *v52, v54);
        if (!v55)
        {
          if (v12 == v53)
          {
            v55 = 0;
          }

          else
          {
            if (v12 < v53)
            {
              break;
            }

            v55 = 1;
          }
        }

        v52 = v8 + 16;
      }

      while ((v55 & 0x80000000) == 0);
LABEL_110:
      v56 = a2;
      if (v8 < a2)
      {
        v57 = v7;
        do
        {
          v56 = v57;
          v58 = *(v57 + 1);
          if (v58 >= v12)
          {
            v59 = v12;
          }

          else
          {
            v59 = *(v57 + 1);
          }

          v60 = memcmp(v11, *v57, v59);
          if (!v60)
          {
            if (v12 >= v58)
            {
              break;
            }

            v60 = -1;
          }

          v57 = v56 - 1;
        }

        while (v60 < 0);
      }

LABEL_138:
      while (v8 < v56)
      {
        v176 = *v8;
        *v8 = *v56;
        *v56 = v176;
        v61 = v8 + 16;
        do
        {
          v8 = v61;
          v62 = *(v61 + 8);
          if (v62 >= v12)
          {
            v63 = v12;
          }

          else
          {
            v63 = *(v61 + 8);
          }

          v64 = memcmp(v11, *v61, v63);
          if (!v64)
          {
            if (v12 == v62)
            {
              v64 = 0;
            }

            else
            {
              if (v12 < v62)
              {
                break;
              }

              v64 = 1;
            }
          }

          v61 = v8 + 16;
        }

        while ((v64 & 0x80000000) == 0);
        v65 = v56 - 1;
        do
        {
          v56 = v65;
          v66 = *(v65 + 1);
          if (v66 >= v12)
          {
            v67 = v12;
          }

          else
          {
            v67 = *(v65 + 1);
          }

          v68 = memcmp(v11, *v65, v67);
          if (!v68)
          {
            if (v12 >= v66)
            {
              goto LABEL_138;
            }

            v68 = -1;
          }

          v65 = v56 - 1;
        }

        while (v68 < 0);
      }

      v69 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        result = *v69;
        *a1 = *v69;
      }

      a4 = 0;
      *(v8 - 16) = v11;
      *(v8 - 8) = v12;
    }
  }

  if (v8 == a2)
  {
    return result;
  }

  v94 = (v9 - 2) >> 1;
  v95 = v94;
  v170 = v8;
  while (2)
  {
    v96 = v95;
    if (v94 < v95)
    {
      goto LABEL_240;
    }

    v97 = (2 * v95) | 1;
    v98 = &a1[v97];
    v99 = 2 * v95 + 2;
    if (v99 < v9)
    {
      v100 = v98->n128_u64[1];
      v101 = v95;
      v102 = v98[1].n128_u64[1];
      if (v102 >= v100)
      {
        v103 = v98->n128_u64[1];
      }

      else
      {
        v103 = v98[1].n128_u64[1];
      }

      v104 = memcmp(v98->n128_u64[0], v98[1].n128_u64[0], v103);
      v96 = v101;
      if (v100 < v102)
      {
        v105 = -1;
      }

      else
      {
        v105 = 1;
      }

      if (v100 == v102)
      {
        v105 = 0;
      }

      if (v104)
      {
        v105 = v104;
      }

      if (v105 < 0)
      {
        ++v98;
        v97 = v99;
      }
    }

    v169 = v96;
    v106 = &a1[v96];
    v107 = v98->n128_u64[1];
    v108 = v106->n128_u64[0];
    v109 = v106->n128_u64[1];
    if (v109 >= v107)
    {
      v110 = v98->n128_u64[1];
    }

    else
    {
      v110 = v106->n128_u64[1];
    }

    v111 = memcmp(v98->n128_u64[0], v106->n128_u64[0], v110);
    if (!v111)
    {
      v96 = v169;
      if (v107 < v109)
      {
        goto LABEL_240;
      }

      while (1)
      {
        while (1)
        {
LABEL_212:
          v112 = v106;
          v106 = v98;
          *v112 = *v98;
          if (v94 < v97)
          {
LABEL_239:
            v106->n128_u64[0] = v108;
            v106->n128_u64[1] = v109;
            v96 = v169;
            goto LABEL_240;
          }

          v113 = (2 * v97) | 1;
          v98 = &a1[v113];
          v97 = 2 * v97 + 2;
          if (v97 >= v9)
          {
            v97 = v113;
          }

          else
          {
            v114 = v98->n128_u64[1];
            v115 = v109;
            v116 = v108;
            v117 = v98[1].n128_u64[1];
            if (v117 >= v114)
            {
              v118 = v98->n128_u64[1];
            }

            else
            {
              v118 = v98[1].n128_u64[1];
            }

            v119 = memcmp(v98->n128_u64[0], v98[1].n128_u64[0], v118);
            v50 = v114 >= v117;
            v120 = v114 == v117;
            v108 = v116;
            v109 = v115;
            if (v50)
            {
              v121 = 1;
            }

            else
            {
              v121 = -1;
            }

            if (v120)
            {
              v121 = 0;
            }

            if (v119)
            {
              v121 = v119;
            }

            if (v121 < 0)
            {
              ++v98;
            }

            a1 = v170;
            v94 = (v9 - 2) >> 1;
            if (v121 >= 0)
            {
              v97 = v113;
            }
          }

          v122 = v98->n128_u64[1];
          v123 = v109 >= v122 ? v98->n128_u64[1] : v109;
          v124 = memcmp(v98->n128_u64[0], v108, v123);
          if (!v124)
          {
            break;
          }

LABEL_236:
          if (v124 < 0)
          {
            goto LABEL_239;
          }
        }

        if (v122 == v109)
        {
          v124 = 0;
          goto LABEL_236;
        }

        if (v122 < v109)
        {
          goto LABEL_239;
        }
      }
    }

    v96 = v169;
    if ((v111 & 0x80000000) == 0)
    {
      goto LABEL_212;
    }

LABEL_240:
    v95 = v96 - 1;
    if (v96)
    {
      continue;
    }

    break;
  }

  v125 = v172;
  do
  {
    v173 = v125;
    v126 = 0;
    v177 = *a1;
    v127 = a1;
    do
    {
      v128 = &v127[v126];
      v129 = v128 + 1;
      v130 = (2 * v126) | 1;
      v131 = 2 * v126 + 2;
      if (v131 >= v9)
      {
        v126 = (2 * v126) | 1;
      }

      else
      {
        v134 = v128[2].n128_u64[0];
        v133 = v128 + 2;
        v132 = v134;
        v135 = v133[-1].n128_u64[1];
        v136 = v133->n128_u64[1];
        if (v136 >= v135)
        {
          v137 = v133[-1].n128_u64[1];
        }

        else
        {
          v137 = v133->n128_u64[1];
        }

        v138 = memcmp(v133[-1].n128_u64[0], v132, v137);
        if (v135 < v136)
        {
          v139 = -1;
        }

        else
        {
          v139 = 1;
        }

        if (v135 == v136)
        {
          v139 = 0;
        }

        if (v138)
        {
          v139 = v138;
        }

        if (v139 >= 0)
        {
          v126 = v130;
        }

        else
        {
          v129 = v133;
          v126 = v131;
        }
      }

      *v127 = *v129;
      v127 = v129;
    }

    while (v126 <= ((v9 - 2) >> 1));
    v140 = (v173 - 16);
    if (v129 == (v173 - 16))
    {
      v125 = v173 - 16;
      result = v177;
      *v129 = v177;
    }

    else
    {
      *v129 = *v140;
      result = v177;
      v125 = v173 - 16;
      *v140 = v177;
      v141 = (v129 - a1 + 16) >> 4;
      v142 = v141 < 2;
      v143 = v141 - 2;
      if (!v142)
      {
        v144 = v143 >> 1;
        v145 = &a1[v143 >> 1];
        v146 = v145->n128_u64[1];
        v147 = v129->n128_u64[0];
        v148 = v129->n128_u64[1];
        if (v148 >= v146)
        {
          v149 = v145->n128_u64[1];
        }

        else
        {
          v149 = v129->n128_u64[1];
        }

        v150 = memcmp(v145->n128_u64[0], v129->n128_u64[0], v149);
        if (v150)
        {
          if (v150 < 0)
          {
            goto LABEL_269;
          }
        }

        else if (v146 < v148)
        {
LABEL_269:
          while (1)
          {
            v151 = v129;
            v129 = v145;
            result = *v145;
            *v151 = *v145;
            if (!v144)
            {
              break;
            }

            v144 = (v144 - 1) >> 1;
            v145 = &a1[v144];
            v152 = v145->n128_u64[1];
            if (v148 >= v152)
            {
              v153 = v145->n128_u64[1];
            }

            else
            {
              v153 = v148;
            }

            v154 = memcmp(v145->n128_u64[0], v147, v153);
            if (v154)
            {
              if ((v154 & 0x80000000) == 0)
              {
                break;
              }
            }

            else if (v152 >= v148)
            {
              break;
            }
          }

          v129->n128_u64[0] = v147;
          v129->n128_u64[1] = v148;
        }
      }
    }

    v142 = v9-- <= 2;
  }

  while (!v142);
  return result;
}

__n128 sub_24D61A218(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a1 + 1);
  if (v8 >= v7)
  {
    v9 = *(a2 + 1);
  }

  else
  {
    v9 = *(a1 + 1);
  }

  v10 = memcmp(v6, *a1, v9);
  if (v10)
  {
    if (v10 < 0)
    {
      goto LABEL_6;
    }
  }

  else if (v7 < v8)
  {
LABEL_6:
    v11 = *(a3 + 1);
    if (v7 >= v11)
    {
      v12 = *(a3 + 1);
    }

    else
    {
      v12 = v7;
    }

    v13 = memcmp(*a3, v6, v12);
    if (v13)
    {
      if (v13 < 0)
      {
LABEL_11:
        result = *a1;
        *a1 = *a3;
LABEL_35:
        *a3 = result;
        return result;
      }
    }

    else if (v11 < v7)
    {
      goto LABEL_11;
    }

    v18 = *a1;
    *a1 = *a2;
    *a2 = v18;
    v19 = *(a3 + 1);
    v20 = *(a2 + 1);
    if (v20 >= v19)
    {
      v21 = *(a3 + 1);
    }

    else
    {
      v21 = *(a2 + 1);
    }

    v22 = memcmp(*a3, *a2, v21);
    if (v22)
    {
      if ((v22 & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v19 >= v20)
    {
      return result;
    }

    result = *a2;
    *a2 = *a3;
    goto LABEL_35;
  }

  v15 = *(a3 + 1);
  if (v7 >= v15)
  {
    v16 = *(a3 + 1);
  }

  else
  {
    v16 = v7;
  }

  v17 = memcmp(*a3, v6, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v15 >= v7)
  {
    return result;
  }

  v23 = *a2;
  *a2 = *a3;
  *a3 = v23;
  v24 = *(a2 + 1);
  v25 = *(a1 + 1);
  if (v25 >= v24)
  {
    v26 = *(a2 + 1);
  }

  else
  {
    v26 = *(a1 + 1);
  }

  v27 = memcmp(*a2, *a1, v26);
  if (!v27)
  {
    if (v24 >= v25)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (v27 < 0)
  {
LABEL_37:
    result = *a1;
    *a1 = *a2;
    *a2 = result;
  }

  return result;
}

__n128 sub_24D61A370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24D61A218(a1, a2, a3);
  v8 = *(a4 + 8);
  v9 = *(a3 + 8);
  if (v9 >= v8)
  {
    v10 = *(a4 + 8);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = memcmp(*a4, *a3, v10);
  if (v11)
  {
    if ((v11 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v8 >= v9)
  {
    return result;
  }

  v13 = *a3;
  *a3 = *a4;
  *a4 = v13;
  v14 = *(a3 + 8);
  v15 = *(a2 + 8);
  if (v15 >= v14)
  {
    v16 = *(a3 + 8);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = memcmp(*a3, *a2, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v14 >= v15)
  {
    return result;
  }

  v18 = *a2;
  *a2 = *a3;
  *a3 = v18;
  v19 = *(a2 + 8);
  v20 = *(a1 + 8);
  if (v20 >= v19)
  {
    v21 = *(a2 + 8);
  }

  else
  {
    v21 = *(a1 + 8);
  }

  v22 = memcmp(*a2, *a1, v21);
  if (v22)
  {
    if ((v22 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v19 >= v20)
  {
    return result;
  }

  result = *a1;
  *a1 = *a2;
  *a2 = result;
  return result;
}

__n128 sub_24D61A460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24D61A370(a1, a2, a3, a4);
  v10 = *(a5 + 8);
  v11 = *(a4 + 8);
  if (v11 >= v10)
  {
    v12 = *(a5 + 8);
  }

  else
  {
    v12 = *(a4 + 8);
  }

  v13 = memcmp(*a5, *a4, v12);
  if (v13)
  {
    if ((v13 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v10 >= v11)
  {
    return result;
  }

  v15 = *a4;
  *a4 = *a5;
  *a5 = v15;
  v16 = *(a4 + 8);
  v17 = *(a3 + 8);
  if (v17 >= v16)
  {
    v18 = *(a4 + 8);
  }

  else
  {
    v18 = *(a3 + 8);
  }

  v19 = memcmp(*a4, *a3, v18);
  if (v19)
  {
    if ((v19 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v16 >= v17)
  {
    return result;
  }

  v20 = *a3;
  *a3 = *a4;
  *a4 = v20;
  v21 = *(a3 + 8);
  v22 = *(a2 + 8);
  if (v22 >= v21)
  {
    v23 = *(a3 + 8);
  }

  else
  {
    v23 = *(a2 + 8);
  }

  v24 = memcmp(*a3, *a2, v23);
  if (v24)
  {
    if ((v24 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v21 >= v22)
  {
    return result;
  }

  v25 = *a2;
  *a2 = *a3;
  *a3 = v25;
  v26 = *(a2 + 8);
  v27 = *(a1 + 8);
  if (v27 >= v26)
  {
    v28 = *(a2 + 8);
  }

  else
  {
    v28 = *(a1 + 8);
  }

  v29 = memcmp(*a2, *a1, v28);
  if (v29)
  {
    if ((v29 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v26 >= v27)
  {
    return result;
  }

  result = *a1;
  *a1 = *a2;
  *a2 = result;
  return result;
}

BOOL sub_24D61A594(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_24D61A218(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        sub_24D61A370(a1, a1 + 16, a1 + 32, a2 - 16);
        return 1;
      case 5:
        sub_24D61A460(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v6 = *(a2 - 8);
      v5 = (a2 - 16);
      v7 = *(a1 + 8);
      if (v7 >= v6)
      {
        v8 = *(a2 - 8);
      }

      else
      {
        v8 = *(a1 + 8);
      }

      v9 = memcmp(*(a2 - 16), *a1, v8);
      if (v9)
      {
        if ((v9 & 0x80000000) == 0)
        {
          return 1;
        }

        goto LABEL_40;
      }

      if (v6 < v7)
      {
LABEL_40:
        v27 = *a1;
        *a1 = *v5;
        *v5 = v27;
      }

      return 1;
    }
  }

  v10 = a1 + 32;
  sub_24D61A218(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v11;
    v15 = *(v11 + 8);
    v16 = *v10;
    v17 = *(v10 + 8);
    v18 = v17 >= v15 ? *(v11 + 8) : v17;
    v19 = memcmp(*v11, v16, v18);
    if (!v19)
    {
      break;
    }

    if (v19 < 0)
    {
      goto LABEL_24;
    }

LABEL_36:
    v10 = v11;
    v12 += 16;
    v11 += 16;
    if (v11 == a2)
    {
      return 1;
    }
  }

  if (v15 >= v17)
  {
    goto LABEL_36;
  }

LABEL_24:
  v20 = v12;
  while (1)
  {
    v21 = v20;
    v22 = a1 + v20;
    *(v22 + 48) = *(v22 + 32);
    if (v21 == -32)
    {
      break;
    }

    v23 = *(v22 + 24);
    if (v23 >= v15)
    {
      v24 = v15;
    }

    else
    {
      v24 = *(v22 + 24);
    }

    v25 = memcmp(v14, *(v22 + 16), v24);
    if (!v25)
    {
      if (v15 >= v23)
      {
        goto LABEL_33;
      }

      v25 = -1;
    }

    v20 = v21 - 16;
    if ((v25 & 0x80000000) == 0)
    {
LABEL_33:
      v26 = (a1 + v21 + 32);
      goto LABEL_35;
    }
  }

  v26 = a1;
LABEL_35:
  *v26 = v14;
  v26[1] = v15;
  if (++v13 != 8)
  {
    goto LABEL_36;
  }

  return v11 + 16 == a2;
}

uint64_t sub_24D61A780(uint64_t result, int **a2, uint64_t a3, char a4)
{
  v534 = result;
LABEL_2:
  v527 = a2 - 1;
  v531 = a2;
  v520 = a2 - 3;
  v521 = a2 - 2;
  v6 = v534;
  while (1)
  {
    v7 = a2 - v6;
    v534 = v6;
    if (v7 > 2)
    {
      break;
    }

    if (v7 < 2)
    {
      return result;
    }

    v8 = v6;
    if (v7 == 2)
    {
      v190 = *(a2 - 1);
      v191 = *v6;
      v192 = (v190 - *v190);
      if (*v192 >= 5u && (v193 = v192[2]) != 0)
      {
        v194 = (v190 + v193);
        v195 = *v194;
        v196 = v194 + v195 + 4;
        v197 = *(v194 + v195);
      }

      else
      {
        v197 = 0;
        v196 = 0;
      }

      v375 = (v191 - *v191);
      if (*v375 >= 5u && (v376 = v375[2]) != 0)
      {
        v377 = (v191 + v376);
        v378 = *v377;
        v379 = v377 + v378 + 4;
        v380 = *(v377 + v378);
      }

      else
      {
        v380 = 0;
        v379 = 0;
      }

      if (v380 >= v197)
      {
        v381 = v197;
      }

      else
      {
        v381 = v380;
      }

      result = memcmp(v196, v379, v381);
      if (result)
      {
        if ((result & 0x80000000) == 0)
        {
          return result;
        }
      }

      else if (v197 >= v380)
      {
        return result;
      }

      *v6 = v190;
      *(a2 - 1) = v191;
      return result;
    }

LABEL_10:
    if (v7 <= 23)
    {
      v206 = v8 + 1;
      v208 = v8 == a2 || v206 == a2;
      if ((a4 & 1) == 0)
      {
        if (v208)
        {
          return result;
        }

        while (1)
        {
          v389 = v534;
          v534 = v206;
          v390 = v389[1];
          v391 = (v390 - *v390);
          v392 = *v391;
          if (v392 >= 5 && v391[2])
          {
            v393 = (v390 + v391[2]);
            v394 = *v393;
            v395 = v393 + v394 + 4;
            v396 = *(v393 + v394);
          }

          else
          {
            v396 = 0;
            v395 = 0;
          }

          v397 = *v389;
          v398 = (*v389 - **v389);
          if (*v398 >= 5u && (v399 = v398[2]) != 0)
          {
            v400 = (v397 + v399);
            v401 = *v400;
            v402 = v400 + v401 + 4;
            v403 = *(v400 + v401);
          }

          else
          {
            v403 = 0;
            v402 = 0;
          }

          if (v403 >= v396)
          {
            v404 = v396;
          }

          else
          {
            v404 = v403;
          }

          result = memcmp(v395, v402, v404);
          if (result)
          {
            if ((result & 0x80000000) != 0)
            {
              do
              {
LABEL_499:
                while (1)
                {
                  v405 = v389;
                  v406 = v397;
                  v407 = *--v389;
                  v397 = v407;
                  v389[2] = v406;
                  if (v392 >= 5 && v391[2])
                  {
                    v408 = (v390 + v391[2]);
                    v409 = *v408;
                    v410 = v408 + v409 + 4;
                    v411 = *(v408 + v409);
                  }

                  else
                  {
                    v411 = 0;
                    v410 = 0;
                  }

                  v412 = (v397 - *v397);
                  if (*v412 >= 5u && (v413 = v412[2]) != 0)
                  {
                    v414 = (v397 + v413);
                    v415 = *v414;
                    v416 = v414 + v415 + 4;
                    v417 = *(v414 + v415);
                  }

                  else
                  {
                    v417 = 0;
                    v416 = 0;
                  }

                  v418 = v417 >= v411 ? v411 : v417;
                  result = memcmp(v410, v416, v418);
                  if (!result)
                  {
                    break;
                  }

                  if ((result & 0x80000000) == 0)
                  {
                    goto LABEL_514;
                  }
                }
              }

              while (v411 < v417);
LABEL_514:
              *v405 = v390;
            }
          }

          else if (v396 < v403)
          {
            goto LABEL_499;
          }

          v206 = v534 + 1;
          if (v534 + 1 == v531)
          {
            return result;
          }
        }
      }

      if (v208)
      {
        return result;
      }

      v209 = 0;
      v210 = v6;
LABEL_262:
      v211 = v210;
      v210 = v206;
      v212 = v211[1];
      v213 = (v212 - *v212);
      v214 = *v213;
      if (v214 >= 5 && v213[2])
      {
        v215 = (v212 + v213[2]);
        v216 = *v215;
        v217 = v215 + v216 + 4;
        v218 = *(v215 + v216);
      }

      else
      {
        v218 = 0;
        v217 = 0;
      }

      v219 = *v211;
      v220 = (*v211 - **v211);
      if (*v220 >= 5u && (v221 = v220[2]) != 0)
      {
        v222 = (v219 + v221);
        v223 = *v222;
        v224 = v222 + v223 + 4;
        v225 = *(v222 + v223);
      }

      else
      {
        v225 = 0;
        v224 = 0;
      }

      if (v225 >= v218)
      {
        v226 = v218;
      }

      else
      {
        v226 = v225;
      }

      result = memcmp(v217, v224, v226);
      if (result)
      {
        if ((result & 0x80000000) == 0)
        {
          goto LABEL_298;
        }
      }

      else if (v218 >= v225)
      {
        goto LABEL_298;
      }

      v227 = v209;
      while (1)
      {
        *(v534 + v227 + 8) = v219;
        if (!v227)
        {
          v228 = v534;
          goto LABEL_297;
        }

        v228 = v211;
        if (v214 >= 5 && v213[2])
        {
          v229 = (v212 + v213[2]);
          v230 = *v229;
          v231 = v229 + v230 + 4;
          v232 = *(v229 + v230);
        }

        else
        {
          v232 = 0;
          v231 = 0;
        }

        v219 = *(v534 + v227 - 8);
        v233 = (v219 - *v219);
        if (*v233 >= 5u && (v234 = v233[2]) != 0)
        {
          v235 = (v219 + v234);
          v236 = *v235;
          v237 = v235 + v236 + 4;
          v238 = *(v235 + v236);
        }

        else
        {
          v238 = 0;
          v237 = 0;
        }

        if (v238 >= v232)
        {
          v239 = v232;
        }

        else
        {
          v239 = v238;
        }

        result = memcmp(v231, v237, v239);
        if (!result)
        {
          if (v232 >= v238)
          {
            v228 = (v534 + v227);
LABEL_297:
            *v228 = v212;
LABEL_298:
            v206 = v210 + 1;
            v209 += 8;
            if (v210 + 1 == v531)
            {
              return result;
            }

            goto LABEL_262;
          }

          result = 0xFFFFFFFFLL;
        }

        v211 = v228 - 1;
        v227 -= 8;
        if ((result & 0x80000000) == 0)
        {
          goto LABEL_297;
        }
      }
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v240 = (v7 - 2) >> 1;
      v528 = v240;
      while (1)
      {
        v241 = v240;
        if (v528 >= v240)
        {
          v242 = (2 * v240) | 1;
          v243 = &v534[v242];
          if (2 * v240 + 2 < v7)
          {
            v244 = (*v243 - **v243);
            if (*v244 >= 5u && (v245 = v244[2]) != 0)
            {
              v246 = (*v243 + v245);
              v247 = *v246;
              v248 = v246 + v247 + 4;
              v249 = *(v246 + v247);
            }

            else
            {
              v249 = 0;
              v248 = 0;
            }

            v251 = v243[1];
            ++v243;
            v250 = v251;
            v252 = (v251 - *v251);
            if (*v252 >= 5u && (v253 = v252[2]) != 0)
            {
              v254 = (v250 + v253);
              v255 = *v254;
              v256 = v254 + v255 + 4;
              v257 = *(v254 + v255);
            }

            else
            {
              v257 = 0;
              v256 = 0;
            }

            if (v257 >= v249)
            {
              v258 = v249;
            }

            else
            {
              v258 = v257;
            }

            v259 = memcmp(v248, v256, v258);
            if (v249 < v257)
            {
              v260 = -1;
            }

            else
            {
              v260 = 1;
            }

            if (v249 == v257)
            {
              v260 = 0;
            }

            if (v259)
            {
              v260 = v259;
            }

            if (v260 < 0)
            {
              v242 = 2 * v241 + 2;
            }

            else
            {
              v243 = &v534[v242];
            }
          }

          v261 = &v534[v241];
          v262 = *v243;
          v526 = *v261;
          v263 = (v262 - *v262);
          if (*v263 >= 5u && (v264 = v263[2]) != 0)
          {
            v265 = (v262 + v264);
            v266 = *v265;
            v267 = v265 + v266 + 4;
            v268 = *(v265 + v266);
          }

          else
          {
            v268 = 0;
            v267 = 0;
          }

          v269 = (v526 - *v526);
          v270 = *v269;
          if (v270 >= 5 && v269[2])
          {
            v271 = (v526 + v269[2]);
            v272 = *v271;
            v273 = v271 + v272 + 4;
            v274 = *(v271 + v272);
          }

          else
          {
            v274 = 0;
            v273 = 0;
          }

          if (v274 >= v268)
          {
            v275 = v268;
          }

          else
          {
            v275 = v274;
          }

          result = memcmp(v267, v273, v275);
          if (result)
          {
            if ((result & 0x80000000) == 0)
            {
              goto LABEL_340;
            }
          }

          else if (v268 >= v274)
          {
LABEL_340:
            v524 = v269;
            do
            {
              v276 = v243;
              *v261 = v262;
              if (v528 < v242)
              {
                break;
              }

              v277 = (2 * v242) | 1;
              v243 = &v534[v277];
              if (2 * v242 + 2 >= v7)
              {
                v242 = (2 * v242) | 1;
              }

              else
              {
                v278 = (*v243 - **v243);
                if (*v278 >= 5u && (v279 = v278[2]) != 0)
                {
                  v280 = (*v243 + v279);
                  v281 = *v280;
                  v282 = v280 + v281 + 4;
                  v283 = *(v280 + v281);
                }

                else
                {
                  v283 = 0;
                  v282 = 0;
                }

                v285 = v243[1];
                ++v243;
                v284 = v285;
                v286 = (v285 - *v285);
                if (*v286 >= 5u && (v287 = v286[2]) != 0)
                {
                  v288 = (v284 + v287);
                  v289 = *v288;
                  v290 = v288 + v289 + 4;
                  v291 = *(v288 + v289);
                }

                else
                {
                  v291 = 0;
                  v290 = 0;
                }

                if (v291 >= v283)
                {
                  v292 = v283;
                }

                else
                {
                  v292 = v291;
                }

                v293 = memcmp(v282, v290, v292);
                if (v283 < v291)
                {
                  v294 = -1;
                }

                else
                {
                  v294 = 1;
                }

                if (v283 == v291)
                {
                  v294 = 0;
                }

                if (v293)
                {
                  v294 = v293;
                }

                if (v294 < 0)
                {
                  v242 = 2 * v242 + 2;
                }

                else
                {
                  v243 = &v534[v277];
                  v242 = (2 * v242) | 1;
                }
              }

              v262 = *v243;
              v295 = (*v243 - **v243);
              if (*v295 >= 5u && (v296 = v295[2]) != 0)
              {
                v297 = (v262 + v296);
                v298 = *v297;
                v299 = v297 + v298 + 4;
                v300 = *(v297 + v298);
              }

              else
              {
                v300 = 0;
                v299 = 0;
              }

              if (v270 >= 5 && v524[2])
              {
                v301 = (v526 + v524[2]);
                v302 = *v301;
                v303 = v301 + v302 + 4;
                v304 = *(v301 + v302);
              }

              else
              {
                v304 = 0;
                v303 = 0;
              }

              if (v304 >= v300)
              {
                v305 = v300;
              }

              else
              {
                v305 = v304;
              }

              result = memcmp(v299, v303, v305);
              if (!result)
              {
                if (v300 == v304)
                {
                  result = 0;
                }

                else
                {
                  if (v300 < v304)
                  {
                    break;
                  }

                  result = 1;
                }
              }

              v261 = v276;
            }

            while ((result & 0x80000000) == 0);
            *v276 = v526;
          }
        }

        v240 = v241 - 1;
        if (!v241)
        {
          v306 = v531;
          do
          {
            v307 = 0;
            v308 = v534;
            v529 = *v534;
            v532 = v306;
            do
            {
              v309 = &v308[v307];
              v310 = v309 + 1;
              v311 = (2 * v307) | 1;
              v312 = 2 * v307 + 2;
              if (v312 >= v7)
              {
                v307 = (2 * v307) | 1;
              }

              else
              {
                v315 = v309[2];
                v314 = v309 + 2;
                v313 = v315;
                v316 = *(v314 - 1);
                v317 = (v316 - *v316);
                if (*v317 >= 5u && (v318 = v317[2]) != 0)
                {
                  v319 = (v316 + v318);
                  v320 = *v319;
                  v321 = v319 + v320 + 4;
                  v322 = *(v319 + v320);
                }

                else
                {
                  v322 = 0;
                  v321 = 0;
                }

                v323 = (v313 - *v313);
                if (*v323 >= 5u && (v324 = v323[2]) != 0)
                {
                  v325 = (v313 + v324);
                  v326 = *v325;
                  v327 = v325 + v326 + 4;
                  v328 = *(v325 + v326);
                }

                else
                {
                  v328 = 0;
                  v327 = 0;
                }

                if (v328 >= v322)
                {
                  v329 = v322;
                }

                else
                {
                  v329 = v328;
                }

                result = memcmp(v321, v327, v329);
                if (v322 < v328)
                {
                  v330 = -1;
                }

                else
                {
                  v330 = 1;
                }

                if (v322 == v328)
                {
                  v330 = 0;
                }

                if (result)
                {
                  v330 = result;
                }

                if (v330 >= 0)
                {
                  v307 = v311;
                }

                else
                {
                  v310 = v314;
                  v307 = v312;
                }
              }

              *v308 = *v310;
              v308 = v310;
            }

            while (v307 <= ((v7 - 2) >> 1));
            v306 = v532 - 1;
            if (v310 == v532 - 1)
            {
              *v310 = v529;
            }

            else
            {
              *v310 = *v306;
              *v306 = v529;
              v331 = (v310 - v534 + 8) >> 3;
              v332 = v331 < 2;
              v333 = v331 - 2;
              if (!v332)
              {
                v334 = v333 >> 1;
                v335 = &v534[v333 >> 1];
                v336 = *v335;
                v337 = (*v335 - **v335);
                v533 = v532 - 1;
                if (*v337 >= 5u && (v338 = v337[2]) != 0)
                {
                  v339 = (v336 + v338);
                  v340 = *v339;
                  v341 = v339 + v340 + 4;
                  v342 = *(v339 + v340);
                }

                else
                {
                  v342 = 0;
                  v341 = 0;
                }

                v530 = *v310;
                v343 = (*v310 - **v310);
                v344 = *v343;
                if (v344 >= 5 && v343[2])
                {
                  v345 = (v530 + v343[2]);
                  v346 = *v345;
                  v347 = v345 + v346 + 4;
                  v348 = *(v345 + v346);
                }

                else
                {
                  v348 = 0;
                  v347 = 0;
                }

                if (v348 >= v342)
                {
                  v349 = v342;
                }

                else
                {
                  v349 = v348;
                }

                result = memcmp(v341, v347, v349);
                if (result)
                {
                  v306 = v533;
                  if ((result & 0x80000000) != 0)
                  {
                    goto LABEL_428;
                  }
                }

                else
                {
                  v306 = v533;
                  if (v342 < v348)
                  {
                    do
                    {
LABEL_428:
                      v350 = v335;
                      *v310 = v336;
                      if (!v334)
                      {
                        break;
                      }

                      v334 = (v334 - 1) >> 1;
                      v335 = &v534[v334];
                      v336 = *v335;
                      v351 = (*v335 - **v335);
                      if (*v351 >= 5u && (v352 = v351[2]) != 0)
                      {
                        v353 = (v336 + v352);
                        v354 = *v353;
                        v355 = v353 + v354 + 4;
                        v356 = *(v353 + v354);
                      }

                      else
                      {
                        v356 = 0;
                        v355 = 0;
                      }

                      if (v344 >= 5 && v343[2])
                      {
                        v357 = (v530 + v343[2]);
                        v358 = *v357;
                        v359 = v357 + v358 + 4;
                        v360 = *(v357 + v358);
                      }

                      else
                      {
                        v360 = 0;
                        v359 = 0;
                      }

                      if (v360 >= v356)
                      {
                        v361 = v356;
                      }

                      else
                      {
                        v361 = v360;
                      }

                      result = memcmp(v355, v359, v361);
                      if (!result)
                      {
                        if (v356 >= v360)
                        {
                          break;
                        }

                        result = 0xFFFFFFFFLL;
                      }

                      v310 = v350;
                    }

                    while ((result & 0x80000000) != 0);
                    v306 = v533;
                    *v350 = v530;
                  }
                }
              }
            }

            v332 = v7-- <= 2;
          }

          while (!v332);
          return result;
        }
      }
    }

    v9 = v7 >> 1;
    v10 = &v8[v7 >> 1];
    if (v7 < 0x81)
    {
      sub_24D61C124(&v8[v7 >> 1], v8, v527);
    }

    else
    {
      sub_24D61C124(v8, &v8[v7 >> 1], v527);
      sub_24D61C124(v8 + 1, v10 - 1, v521);
      sub_24D61C124(v8 + 2, &v8[v9 + 1], v520);
      sub_24D61C124(v10 - 1, &v8[v7 >> 1], &v8[v9 + 1]);
      v11 = *v8;
      *v8 = *v10;
      *v10 = v11;
    }

    v12 = *v8;
    v525 = a3 - 1;
    if (a4)
    {
      v13 = *v12;
      v14 = -v13;
      v15 = *(v12 - v13);
LABEL_30:
      v31 = v12 + v14;
      v32 = 8;
      do
      {
        v33 = v32;
        v34 = *(v8 + v32);
        v35 = (v34 - *v34);
        if (*v35 >= 5u && (v36 = v35[2]) != 0)
        {
          v37 = (v34 + v36);
          v38 = *v37;
          v39 = v37 + v38 + 4;
          v40 = *(v37 + v38);
        }

        else
        {
          v40 = 0;
          v39 = 0;
        }

        if (v15 >= 5 && *(v31 + 2))
        {
          v41 = (v12 + *(v31 + 2));
          v42 = *v41;
          v43 = v41 + v42 + 4;
          v44 = *(v41 + v42);
        }

        else
        {
          v44 = 0;
          v43 = 0;
        }

        if (v44 >= v40)
        {
          v45 = v40;
        }

        else
        {
          v45 = v44;
        }

        v46 = memcmp(v39, v43, v45);
        if (!v46)
        {
          if (v40 >= v44)
          {
            break;
          }

          v46 = -1;
        }

        v32 = v33 + 8;
      }

      while (v46 < 0);
      v6 = (v8 + v33);
      v47 = v527;
      if (v33 == 8)
      {
        v62 = v527;
        while (1)
        {
          v48 = v62;
          v63 = v62 + 1;
          if (v6 >= v63)
          {
            break;
          }

          v64 = (*v48 - **v48);
          if (*v64 >= 5u && (v65 = v64[2]) != 0)
          {
            v66 = (*v48 + v65);
            v67 = *v66;
            v68 = v66 + v67 + 4;
            v69 = *(v66 + v67);
          }

          else
          {
            v69 = 0;
            v68 = 0;
          }

          if (v15 >= 5 && *(v31 + 2))
          {
            v70 = (v12 + *(v31 + 2));
            v71 = *v70;
            v72 = v70 + v71 + 4;
            v73 = *(v70 + v71);
          }

          else
          {
            v73 = 0;
            v72 = 0;
          }

          if (v73 >= v69)
          {
            v74 = v69;
          }

          else
          {
            v74 = v73;
          }

          v75 = memcmp(v68, v72, v74);
          if (!v75)
          {
            if (v69 == v73)
            {
              v75 = 0;
            }

            else
            {
              if (v69 < v73)
              {
                goto LABEL_90;
              }

              v75 = 1;
            }
          }

          v62 = v48 - 1;
          if (v75 < 0)
          {
            goto LABEL_90;
          }
        }

        v48 = v63;
      }

      else
      {
        do
        {
          v48 = v47;
          v49 = *v47;
          v50 = (v49 - *v49);
          if (*v50 >= 5u && (v51 = v50[2]) != 0)
          {
            v52 = (v49 + v51);
            v53 = *v52;
            v54 = v52 + v53 + 4;
            v55 = *(v52 + v53);
          }

          else
          {
            v55 = 0;
            v54 = 0;
          }

          if (v15 >= 5 && *(v31 + 2))
          {
            v56 = (v12 + *(v31 + 2));
            v57 = *v56;
            v58 = v56 + v57 + 4;
            v59 = *(v56 + v57);
          }

          else
          {
            v59 = 0;
            v58 = 0;
          }

          if (v59 >= v55)
          {
            v60 = v55;
          }

          else
          {
            v60 = v59;
          }

          v61 = memcmp(v54, v58, v60);
          if (!v61)
          {
            if (v55 == v59)
            {
              v61 = 0;
            }

            else
            {
              if (v55 < v59)
              {
                break;
              }

              v61 = 1;
            }
          }

          v47 = v48 - 1;
        }

        while ((v61 & 0x80000000) == 0);
      }

LABEL_90:
      v523 = v6;
      if (v6 < v48)
      {
        v80 = *v48;
        v81 = v48;
        do
        {
          *v6 = v80;
          *v81 = v34;
          v82 = v6 + 1;
          do
          {
            v6 = v82;
            v34 = *v82;
            v83 = (*v82 - **v82);
            if (*v83 >= 5u && (v84 = v83[2]) != 0)
            {
              v85 = (v34 + v84);
              v86 = *v85;
              v87 = v85 + v86 + 4;
              v88 = *(v85 + v86);
            }

            else
            {
              v88 = 0;
              v87 = 0;
            }

            if (v15 >= 5 && *(v31 + 2))
            {
              v89 = (v12 + *(v31 + 2));
              v90 = *v89;
              v91 = v89 + v90 + 4;
              v92 = *(v89 + v90);
            }

            else
            {
              v92 = 0;
              v91 = 0;
            }

            if (v92 >= v88)
            {
              v93 = v88;
            }

            else
            {
              v93 = v92;
            }

            v94 = memcmp(v87, v91, v93);
            if (!v94)
            {
              if (v88 >= v92)
              {
                break;
              }

              v94 = -1;
            }

            v82 = v6 + 1;
          }

          while (v94 < 0);
          v95 = v81 - 1;
          do
          {
            v81 = v95;
            v80 = *v95;
            v96 = (*v95 - **v95);
            if (*v96 >= 5u && (v97 = v96[2]) != 0)
            {
              v98 = (v80 + v97);
              v99 = *v98;
              v100 = v98 + v99 + 4;
              v101 = *(v98 + v99);
            }

            else
            {
              v101 = 0;
              v100 = 0;
            }

            if (v15 >= 5 && *(v31 + 2))
            {
              v102 = (v12 + *(v31 + 2));
              v103 = *v102;
              v104 = v102 + v103 + 4;
              v105 = *(v102 + v103);
            }

            else
            {
              v105 = 0;
              v104 = 0;
            }

            if (v105 >= v101)
            {
              v106 = v101;
            }

            else
            {
              v106 = v105;
            }

            v107 = memcmp(v100, v104, v106);
            if (!v107)
            {
              if (v101 == v105)
              {
                v107 = 0;
              }

              else
              {
                if (v101 < v105)
                {
                  break;
                }

                v107 = 1;
              }
            }

            v95 = v81 - 1;
          }

          while ((v107 & 0x80000000) == 0);
        }

        while (v6 < v81);
      }

      v108 = v6 - 1;
      if (v6 - 1 != v534)
      {
        *v534 = *v108;
      }

      *v108 = v12;
      a3 = v525;
      a2 = v531;
      if (v523 < v48)
      {
LABEL_132:
        result = sub_24D61A780(v534, v6 - 1, v525, a4 & 1);
        a4 = 0;
      }

      else
      {
        v109 = sub_24D61C470(v534, v6 - 1);
        result = sub_24D61C470(v6, v531);
        if (result)
        {
          a2 = v6 - 1;
          if (v109)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v109)
        {
          goto LABEL_132;
        }
      }
    }

    else
    {
      v16 = *(v8 - 1);
      v17 = (v16 - *v16);
      if (*v17 >= 5u && (v18 = v17[2]) != 0)
      {
        v19 = (v16 + v18);
        v20 = *v19;
        v21 = v19 + v20 + 4;
        v22 = *(v19 + v20);
      }

      else
      {
        v22 = 0;
        v21 = 0;
      }

      v23 = *v12;
      v24 = v12 - v23;
      v15 = *(v12 - v23);
      if (v15 >= 5 && *(v24 + 2))
      {
        v25 = (v12 + *(v24 + 2));
        v26 = *v25;
        v27 = v25 + v26 + 4;
        v28 = *(v25 + v26);
      }

      else
      {
        v28 = 0;
        v27 = 0;
      }

      v14 = -v23;
      if (v28 >= v22)
      {
        v29 = v22;
      }

      else
      {
        v29 = v28;
      }

      v30 = memcmp(v21, v27, v29);
      if (v30)
      {
        if (v30 < 0)
        {
          goto LABEL_30;
        }
      }

      else if (v22 < v28)
      {
        goto LABEL_30;
      }

      if (v15 >= 5 && *(v24 + 2))
      {
        v76 = (v12 + *(v24 + 2));
        v77 = *v76;
        v78 = v76 + v77 + 4;
        v79 = *(v76 + v77);
      }

      else
      {
        v79 = 0;
        v78 = 0;
      }

      v110 = (*v527 - **v527);
      if (*v110 >= 5u && (v111 = v110[2]) != 0)
      {
        v112 = (*v527 + v111);
        v113 = *v112;
        v114 = v112 + v113 + 4;
        v115 = *(v112 + v113);
      }

      else
      {
        v115 = 0;
        v114 = 0;
      }

      if (v115 >= v79)
      {
        v116 = v79;
      }

      else
      {
        v116 = v115;
      }

      result = memcmp(v78, v114, v116);
      if (result)
      {
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_143;
        }
      }

      else if (v79 < v115)
      {
LABEL_143:
        v117 = v8 + 1;
        do
        {
          v6 = v117;
          if (v15 >= 5 && *(v24 + 2))
          {
            v118 = (v12 + *(v24 + 2));
            v119 = *v118;
            v120 = v118 + v119 + 4;
            v121 = *(v118 + v119);
          }

          else
          {
            v121 = 0;
            v120 = 0;
          }

          v122 = (*v6 - **v6);
          if (*v122 >= 5u && (v123 = v122[2]) != 0)
          {
            v124 = (*v6 + v123);
            v125 = *v124;
            v126 = v124 + v125 + 4;
            v127 = *(v124 + v125);
          }

          else
          {
            v127 = 0;
            v126 = 0;
          }

          if (v127 >= v121)
          {
            v128 = v121;
          }

          else
          {
            v128 = v127;
          }

          result = memcmp(v120, v126, v128);
          if (!result)
          {
            if (v121 == v127)
            {
              result = 0;
            }

            else
            {
              if (v121 < v127)
              {
                goto LABEL_182;
              }

              result = 1;
            }
          }

          v117 = v6 + 1;
        }

        while ((result & 0x80000000) == 0);
        goto LABEL_182;
      }

      v129 = v8 + 1;
      do
      {
        v6 = v129;
        if (v129 >= a2)
        {
          break;
        }

        if (v15 >= 5 && *(v24 + 2))
        {
          v130 = (v12 + *(v24 + 2));
          v131 = *v130;
          v132 = v130 + v131 + 4;
          v133 = *(v130 + v131);
        }

        else
        {
          v133 = 0;
          v132 = 0;
        }

        v134 = (*v6 - **v6);
        if (*v134 >= 5u && (v135 = v134[2]) != 0)
        {
          v136 = (*v6 + v135);
          v137 = *v136;
          v138 = v136 + v137 + 4;
          v139 = *(v136 + v137);
        }

        else
        {
          v139 = 0;
          v138 = 0;
        }

        if (v139 >= v133)
        {
          v140 = v133;
        }

        else
        {
          v140 = v139;
        }

        result = memcmp(v132, v138, v140);
        if (!result)
        {
          if (v133 == v139)
          {
            result = 0;
          }

          else
          {
            if (v133 < v139)
            {
              break;
            }

            result = 1;
          }
        }

        v129 = v6 + 1;
      }

      while ((result & 0x80000000) == 0);
LABEL_182:
      v141 = a2;
      if (v6 < a2)
      {
        v142 = v527;
        do
        {
          v141 = v142;
          if (v15 >= 5 && *(v24 + 2))
          {
            v143 = (v12 + *(v24 + 2));
            v144 = *v143;
            v145 = v143 + v144 + 4;
            v146 = *(v143 + v144);
          }

          else
          {
            v146 = 0;
            v145 = 0;
          }

          v147 = (*v141 - **v141);
          if (*v147 >= 5u && (v148 = v147[2]) != 0)
          {
            v149 = (*v141 + v148);
            v150 = *v149;
            v151 = v149 + v150 + 4;
            v152 = *(v149 + v150);
          }

          else
          {
            v152 = 0;
            v151 = 0;
          }

          if (v152 >= v146)
          {
            v153 = v146;
          }

          else
          {
            v153 = v152;
          }

          result = memcmp(v145, v151, v153);
          if (!result)
          {
            if (v146 >= v152)
            {
              break;
            }

            result = 0xFFFFFFFFLL;
          }

          v142 = v141 - 1;
        }

        while ((result & 0x80000000) != 0);
      }

      if (v6 < v141)
      {
        v154 = *v6;
        v155 = *v141;
        do
        {
          *v6 = v155;
          *v141 = v154;
          v156 = v6 + 1;
          do
          {
            v6 = v156;
            v154 = *v156;
            if (v15 >= 5 && *(v24 + 2))
            {
              v157 = (v12 + *(v24 + 2));
              v158 = *v157;
              v159 = v157 + v158 + 4;
              v160 = *(v157 + v158);
            }

            else
            {
              v160 = 0;
              v159 = 0;
            }

            v161 = (v154 - *v154);
            if (*v161 >= 5u && (v162 = v161[2]) != 0)
            {
              v163 = (v154 + v162);
              v164 = *v163;
              v165 = v163 + v164 + 4;
              v166 = *(v163 + v164);
            }

            else
            {
              v166 = 0;
              v165 = 0;
            }

            if (v166 >= v160)
            {
              v167 = v160;
            }

            else
            {
              v167 = v166;
            }

            v168 = memcmp(v159, v165, v167);
            if (!v168)
            {
              if (v160 == v166)
              {
                v168 = 0;
              }

              else
              {
                if (v160 < v166)
                {
                  break;
                }

                v168 = 1;
              }
            }

            v156 = v6 + 1;
          }

          while ((v168 & 0x80000000) == 0);
          v169 = v141 - 1;
          do
          {
            v141 = v169;
            v155 = *v169;
            if (v15 >= 5 && *(v24 + 2))
            {
              v170 = (v12 + *(v24 + 2));
              v171 = *v170;
              v172 = v170 + v171 + 4;
              v173 = *(v170 + v171);
            }

            else
            {
              v173 = 0;
              v172 = 0;
            }

            v174 = (v155 - *v155);
            if (*v174 >= 5u && (v175 = v174[2]) != 0)
            {
              v176 = (v155 + v175);
              v177 = *v176;
              v178 = v176 + v177 + 4;
              v179 = *(v176 + v177);
            }

            else
            {
              v179 = 0;
              v178 = 0;
            }

            if (v179 >= v173)
            {
              v180 = v173;
            }

            else
            {
              v180 = v179;
            }

            result = memcmp(v172, v178, v180);
            if (!result)
            {
              if (v173 >= v179)
              {
                break;
              }

              result = 0xFFFFFFFFLL;
            }

            v169 = v141 - 1;
          }

          while ((result & 0x80000000) != 0);
        }

        while (v6 < v141);
      }

      v181 = v6 - 1;
      a2 = v531;
      if (v6 - 1 != v534)
      {
        *v534 = *v181;
      }

      a4 = 0;
      *v181 = v12;
      a3 = v525;
    }
  }

  v8 = v6;
  if (v7 == 3)
  {

    return sub_24D61C124(v6, v6 + 1, v527);
  }

  if (v7 == 4)
  {
    sub_24D61C124(v6, v6 + 1, v6 + 2);
    v198 = *(a2 - 1);
    v199 = v6[2];
    v200 = (v198 - *v198);
    if (*v200 >= 5u && (v201 = v200[2]) != 0)
    {
      v202 = (v198 + v201);
      v203 = *v202;
      v204 = v202 + v203 + 4;
      v205 = *(v202 + v203);
    }

    else
    {
      v205 = 0;
      v204 = 0;
    }

    v382 = (v199 - *v199);
    if (*v382 >= 5u && (v383 = v382[2]) != 0)
    {
      v384 = (v199 + v383);
      v385 = *v384;
      v386 = v384 + v385 + 4;
      v387 = *(v384 + v385);
    }

    else
    {
      v387 = 0;
      v386 = 0;
    }

    if (v387 >= v205)
    {
      v388 = v205;
    }

    else
    {
      v388 = v387;
    }

    result = memcmp(v204, v386, v388);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v205 >= v387)
    {
      return result;
    }

    v6[2] = v198;
    *(a2 - 1) = v199;
    v420 = v6[1];
    v419 = v6[2];
    v421 = (v419 - *v419);
    v422 = *v421;
    if (v422 >= 5 && v421[2])
    {
      v423 = (v419 + v421[2]);
      v424 = *v423;
      v425 = v423 + v424 + 4;
      v426 = *(v423 + v424);
    }

    else
    {
      v426 = 0;
      v425 = 0;
    }

    v435 = (v420 - *v420);
    if (*v435 >= 5u && (v436 = v435[2]) != 0)
    {
      v437 = (v420 + v436);
      v438 = *v437;
      v439 = v437 + v438 + 4;
      v440 = *(v437 + v438);
    }

    else
    {
      v440 = 0;
      v439 = 0;
    }

    if (v440 >= v426)
    {
      v441 = v426;
    }

    else
    {
      v441 = v440;
    }

    result = memcmp(v425, v439, v441);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v426 >= v440)
    {
      return result;
    }

    v6[1] = v419;
    v6[2] = v420;
    v447 = *v6;
    if (v422 >= 5 && v421[2])
    {
      v448 = (v419 + v421[2]);
      v449 = *v448;
      v450 = v448 + v449 + 4;
      v451 = *(v448 + v449);
    }

    else
    {
      v451 = 0;
      v450 = 0;
    }

    v501 = (v447 - *v447);
    if (*v501 >= 5u && (v502 = v501[2]) != 0)
    {
      v503 = (v447 + v502);
      v504 = *v503;
      v505 = v503 + v504 + 4;
      v506 = *(v503 + v504);
    }

    else
    {
      v506 = 0;
      v505 = 0;
    }

    if (v506 >= v451)
    {
      v507 = v451;
    }

    else
    {
      v507 = v506;
    }

    result = memcmp(v450, v505, v507);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v451 >= v506)
    {
      return result;
    }

    *v6 = v419;
    v6[1] = v447;
    return result;
  }

  if (v7 != 5)
  {
    goto LABEL_10;
  }

  sub_24D61C124(v6, v6 + 1, v6 + 2);
  v182 = v6[3];
  v183 = v6[2];
  v184 = (v182 - *v182);
  v185 = *v184;
  if (v185 >= 5 && v184[2])
  {
    v186 = (v182 + v184[2]);
    v187 = *v186;
    v188 = v186 + v187 + 4;
    v189 = *(v186 + v187);
  }

  else
  {
    v189 = 0;
    v188 = 0;
  }

  v362 = (v183 - *v183);
  if (*v362 >= 5u && (v363 = v362[2]) != 0)
  {
    v364 = (v183 + v363);
    v365 = *v364;
    v366 = v364 + v365 + 4;
    v367 = *(v364 + v365);
  }

  else
  {
    v367 = 0;
    v366 = 0;
  }

  if (v367 >= v189)
  {
    v368 = v189;
  }

  else
  {
    v368 = v367;
  }

  v369 = memcmp(v188, v366, v368);
  if (!v369)
  {
    if (v189 < v367)
    {
      goto LABEL_458;
    }

    goto LABEL_518;
  }

  if ((v369 & 0x80000000) == 0)
  {
LABEL_518:
    v183 = v182;
    goto LABEL_566;
  }

LABEL_458:
  v6[2] = v182;
  v6[3] = v183;
  v370 = v6[1];
  if (v185 >= 5 && v184[2])
  {
    v371 = (v182 + v184[2]);
    v372 = *v371;
    v373 = v371 + v372 + 4;
    v374 = *(v371 + v372);
  }

  else
  {
    v374 = 0;
    v373 = 0;
  }

  v427 = (v370 - *v370);
  if (*v427 >= 5u && (v428 = v427[2]) != 0)
  {
    v429 = (v370 + v428);
    v430 = *v429;
    v431 = v429 + v430 + 4;
    v432 = *(v429 + v430);
  }

  else
  {
    v432 = 0;
    v431 = 0;
  }

  if (v432 >= v374)
  {
    v433 = v374;
  }

  else
  {
    v433 = v432;
  }

  v434 = memcmp(v373, v431, v433);
  if (v434)
  {
    if ((v434 & 0x80000000) == 0)
    {
      goto LABEL_566;
    }
  }

  else if (v374 >= v432)
  {
    goto LABEL_566;
  }

  v534[1] = v182;
  v534[2] = v370;
  v442 = *v534;
  if (v185 >= 5 && v184[2])
  {
    v443 = (v182 + v184[2]);
    v444 = *v443;
    v445 = v443 + v444 + 4;
    v446 = *(v443 + v444);
  }

  else
  {
    v446 = 0;
    v445 = 0;
  }

  v452 = (v442 - *v442);
  if (*v452 >= 5u && (v453 = v452[2]) != 0)
  {
    v454 = (v442 + v453);
    v455 = *v454;
    v456 = v454 + v455 + 4;
    v457 = *(v454 + v455);
  }

  else
  {
    v457 = 0;
    v456 = 0;
  }

  if (v457 >= v446)
  {
    v458 = v446;
  }

  else
  {
    v458 = v457;
  }

  v459 = memcmp(v445, v456, v458);
  if (v459)
  {
    if ((v459 & 0x80000000) == 0)
    {
      goto LABEL_566;
    }

    goto LABEL_565;
  }

  if (v446 < v457)
  {
LABEL_565:
    *v534 = v182;
    v534[1] = v442;
  }

LABEL_566:
  v460 = *(v531 - 1);
  v461 = (v460 - *v460);
  if (*v461 >= 5u && (v462 = v461[2]) != 0)
  {
    v463 = (v460 + v462);
    v464 = *v463;
    v465 = v463 + v464 + 4;
    v466 = *(v463 + v464);
  }

  else
  {
    v466 = 0;
    v465 = 0;
  }

  v467 = (v183 - *v183);
  if (*v467 >= 5u && (v468 = v467[2]) != 0)
  {
    v469 = (v183 + v468);
    v470 = *v469;
    v471 = v469 + v470 + 4;
    v472 = *(v469 + v470);
  }

  else
  {
    v472 = 0;
    v471 = 0;
  }

  if (v472 >= v466)
  {
    v473 = v466;
  }

  else
  {
    v473 = v472;
  }

  result = memcmp(v465, v471, v473);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v466 >= v472)
  {
    return result;
  }

  v534[3] = v460;
  *(v531 - 1) = v183;
  v475 = v534[2];
  v474 = v534[3];
  v476 = (v474 - *v474);
  v477 = *v476;
  if (v477 >= 5 && v476[2])
  {
    v478 = (v474 + v476[2]);
    v479 = *v478;
    v480 = v478 + v479 + 4;
    v481 = *(v478 + v479);
  }

  else
  {
    v481 = 0;
    v480 = 0;
  }

  v482 = (v475 - *v475);
  if (*v482 >= 5u && (v483 = v482[2]) != 0)
  {
    v484 = (v475 + v483);
    v485 = *v484;
    v486 = v484 + v485 + 4;
    v487 = *(v484 + v485);
  }

  else
  {
    v487 = 0;
    v486 = 0;
  }

  if (v487 >= v481)
  {
    v488 = v481;
  }

  else
  {
    v488 = v487;
  }

  result = memcmp(v480, v486, v488);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v481 >= v487)
  {
    return result;
  }

  v534[2] = v474;
  v534[3] = v475;
  v489 = v534[1];
  if (v477 >= 5 && v476[2])
  {
    v490 = (v474 + v476[2]);
    v491 = *v490;
    v492 = v490 + v491 + 4;
    v493 = *(v490 + v491);
  }

  else
  {
    v493 = 0;
    v492 = 0;
  }

  v494 = (v489 - *v489);
  if (*v494 >= 5u && (v495 = v494[2]) != 0)
  {
    v496 = (v489 + v495);
    v497 = *v496;
    v498 = v496 + v497 + 4;
    v499 = *(v496 + v497);
  }

  else
  {
    v499 = 0;
    v498 = 0;
  }

  if (v499 >= v493)
  {
    v500 = v493;
  }

  else
  {
    v500 = v499;
  }

  result = memcmp(v492, v498, v500);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v493 >= v499)
  {
    return result;
  }

  v534[1] = v474;
  v534[2] = v489;
  v508 = *v534;
  if (v477 >= 5 && v476[2])
  {
    v509 = (v474 + v476[2]);
    v510 = *v509;
    v511 = v509 + v510 + 4;
    v512 = *(v509 + v510);
  }

  else
  {
    v512 = 0;
    v511 = 0;
  }

  v513 = (v508 - *v508);
  if (*v513 >= 5u && (v514 = v513[2]) != 0)
  {
    v515 = (v508 + v514);
    v516 = *v515;
    v517 = v515 + v516 + 4;
    v518 = *(v515 + v516);
  }

  else
  {
    v518 = 0;
    v517 = 0;
  }

  if (v518 >= v512)
  {
    v519 = v512;
  }

  else
  {
    v519 = v518;
  }

  result = memcmp(v511, v517, v519);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v512 >= v518)
  {
    return result;
  }

  *v534 = v474;
  v534[1] = v508;
  return result;
}

uint64_t sub_24D61C124(int **a1, int **a2, int **a3)
{
  v5 = *a2;
  v6 = *a1;
  v7 = (*a2 - **a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (v5 + v7[2]);
    v10 = *v9;
    v11 = v9 + v10 + 4;
    v12 = *(v9 + v10);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = (v6 - *v6);
  v14 = *v13;
  if (v14 >= 5 && v13[2])
  {
    v15 = (v6 + v13[2]);
    v16 = *v15;
    v17 = v15 + v16 + 4;
    v18 = *(v15 + v16);
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  if (v18 >= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v18;
  }

  v20 = memcmp(v11, v17, v19);
  if (v20)
  {
    if (v20 < 0)
    {
LABEL_14:
      v21 = *a3;
      v22 = (*a3 - **a3);
      if (*v22 >= 5u && (v23 = v22[2]) != 0)
      {
        v24 = (v21 + v23);
        v25 = *v24;
        v26 = v24 + v25 + 4;
        v27 = *(v24 + v25);
      }

      else
      {
        v27 = 0;
        v26 = 0;
      }

      if (v8 >= 5 && v7[2])
      {
        v35 = (v5 + v7[2]);
        v36 = *v35;
        v37 = v35 + v36 + 4;
        v38 = *(v35 + v36);
      }

      else
      {
        v38 = 0;
        v37 = 0;
      }

      if (v38 >= v27)
      {
        v43 = v27;
      }

      else
      {
        v43 = v38;
      }

      result = memcmp(v26, v37, v43);
      if (result)
      {
        if ((result & 0x80000000) != 0)
        {
LABEL_35:
          *a1 = v21;
LABEL_75:
          *a3 = v6;
          return result;
        }
      }

      else if (v27 < v38)
      {
        goto LABEL_35;
      }

      *a1 = v5;
      *a2 = v6;
      v46 = *a3;
      v47 = (*a3 - **a3);
      if (*v47 >= 5u && (v48 = v47[2]) != 0)
      {
        v49 = (v46 + v48);
        v50 = *v49;
        v51 = v49 + v50 + 4;
        v52 = *(v49 + v50);
      }

      else
      {
        v52 = 0;
        v51 = 0;
      }

      if (v14 >= 5 && v13[2])
      {
        v61 = (v6 + v13[2]);
        v62 = *v61;
        v63 = v61 + v62 + 4;
        v64 = *(v61 + v62);
      }

      else
      {
        v64 = 0;
        v63 = 0;
      }

      if (v64 >= v52)
      {
        v71 = v52;
      }

      else
      {
        v71 = v64;
      }

      result = memcmp(v51, v63, v71);
      if (result)
      {
        if ((result & 0x80000000) == 0)
        {
          return result;
        }
      }

      else if (v52 >= v64)
      {
        return result;
      }

      *a2 = v46;
      goto LABEL_75;
    }
  }

  else if (v12 < v18)
  {
    goto LABEL_14;
  }

  v28 = *a3;
  v29 = (*a3 - **a3);
  if (*v29 >= 5u && (v30 = v29[2]) != 0)
  {
    v31 = (v28 + v30);
    v32 = *v31;
    v33 = v31 + v32 + 4;
    v34 = *(v31 + v32);
  }

  else
  {
    v34 = 0;
    v33 = 0;
  }

  if (v8 >= 5 && v7[2])
  {
    v39 = (v5 + v7[2]);
    v40 = *v39;
    v41 = v39 + v40 + 4;
    v42 = *(v39 + v40);
  }

  else
  {
    v42 = 0;
    v41 = 0;
  }

  if (v42 >= v34)
  {
    v45 = v34;
  }

  else
  {
    v45 = v42;
  }

  result = memcmp(v33, v41, v45);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v34 >= v42)
  {
    return result;
  }

  *a2 = v28;
  *a3 = v5;
  v53 = *a2;
  v54 = *a1;
  v55 = (*a2 - **a2);
  if (*v55 >= 5u && (v56 = v55[2]) != 0)
  {
    v57 = (v53 + v56);
    v58 = *v57;
    v59 = v57 + v58 + 4;
    v60 = *(v57 + v58);
  }

  else
  {
    v60 = 0;
    v59 = 0;
  }

  v65 = (v54 - *v54);
  if (*v65 >= 5u && (v66 = v65[2]) != 0)
  {
    v67 = (v54 + v66);
    v68 = *v67;
    v69 = v67 + v68 + 4;
    v70 = *(v67 + v68);
  }

  else
  {
    v70 = 0;
    v69 = 0;
  }

  if (v70 >= v60)
  {
    v72 = v60;
  }

  else
  {
    v72 = v70;
  }

  result = memcmp(v59, v69, v72);
  if (!result)
  {
    if (v60 >= v70)
    {
      return result;
    }

    goto LABEL_77;
  }

  if ((result & 0x80000000) != 0)
  {
LABEL_77:
    *a1 = v53;
    *a2 = v54;
  }

  return result;
}

BOOL sub_24D61C470(int **a1, int **a2)
{
  v2 = a2;
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      sub_24D61C124(a1, a1 + 1, a2 - 1);
      return 1;
    }

    if (v3 == 4)
    {
      sub_24D61C124(a1, a1 + 1, a1 + 2);
      v56 = *(v2 - 1);
      v57 = a1[2];
      v58 = (v56 - *v56);
      if (*v58 >= 5u && (v59 = v58[2]) != 0)
      {
        v60 = (v56 + v59);
        v61 = *v60;
        v62 = v60 + v61 + 4;
        v63 = *(v60 + v61);
      }

      else
      {
        v63 = 0;
        v62 = 0;
      }

      v85 = (v57 - *v57);
      if (*v85 >= 5u && (v86 = v85[2]) != 0)
      {
        v87 = (v57 + v86);
        v88 = *v87;
        v89 = v87 + v88 + 4;
        v90 = *(v87 + v88);
      }

      else
      {
        v90 = 0;
        v89 = 0;
      }

      if (v90 >= v63)
      {
        v91 = v63;
      }

      else
      {
        v91 = v90;
      }

      v92 = memcmp(v62, v89, v91);
      if (v92)
      {
        if ((v92 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v63 >= v90)
      {
        return 1;
      }

      a1[2] = v56;
      *(v2 - 1) = v57;
      v94 = a1[1];
      v93 = a1[2];
      v95 = (v93 - *v93);
      v96 = *v95;
      if (v96 >= 5 && v95[2])
      {
        v97 = (v93 + v95[2]);
        v98 = *v97;
        v99 = v97 + v98 + 4;
        v100 = *(v97 + v98);
      }

      else
      {
        v100 = 0;
        v99 = 0;
      }

      v109 = (v94 - *v94);
      if (*v109 >= 5u && (v110 = v109[2]) != 0)
      {
        v111 = (v94 + v110);
        v112 = *v111;
        v113 = v111 + v112 + 4;
        v114 = *(v111 + v112);
      }

      else
      {
        v114 = 0;
        v113 = 0;
      }

      if (v114 >= v100)
      {
        v115 = v100;
      }

      else
      {
        v115 = v114;
      }

      v116 = memcmp(v99, v113, v115);
      if (v116)
      {
        if ((v116 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v100 >= v114)
      {
        return 1;
      }

      a1[1] = v93;
      a1[2] = v94;
      v123 = *a1;
      if (v96 >= 5 && v95[2])
      {
        v124 = (v93 + v95[2]);
        v125 = *v124;
        v126 = v124 + v125 + 4;
        v127 = *(v124 + v125);
      }

      else
      {
        v127 = 0;
        v126 = 0;
      }

      v180 = (v123 - *v123);
      if (*v180 >= 5u && (v181 = v180[2]) != 0)
      {
        v182 = (v123 + v181);
        v183 = *v182;
        v184 = v182 + v183 + 4;
        v185 = *(v182 + v183);
      }

      else
      {
        v185 = 0;
        v184 = 0;
      }

      if (v185 >= v127)
      {
        v186 = v127;
      }

      else
      {
        v186 = v185;
      }

      v187 = memcmp(v126, v184, v186);
      if (v187)
      {
        if ((v187 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v127 >= v185)
      {
        return 1;
      }

      *a1 = v93;
      a1[1] = v123;
      return 1;
    }

    if (v3 != 5)
    {
LABEL_14:
      v20 = a1 + 2;
      sub_24D61C124(a1, a1 + 1, a1 + 2);
      v21 = a1 + 3;
      if (a1 + 3 == v2)
      {
        return 1;
      }

      v22 = 0;
      v23 = 0;
      v201 = v2;
      while (1)
      {
        v24 = *v21;
        v25 = (*v21 - **v21);
        v26 = *v25;
        if (v26 >= 5 && v25[2])
        {
          v27 = (v24 + v25[2]);
          v28 = *v27;
          v29 = v27 + v28 + 4;
          v30 = *(v27 + v28);
        }

        else
        {
          v30 = 0;
          v29 = 0;
        }

        v31 = *v20;
        v32 = (v31 - *v31);
        if (*v32 >= 5u && (v33 = v32[2]) != 0)
        {
          v34 = (v31 + v33);
          v35 = *v34;
          v36 = v34 + v35 + 4;
          v37 = *(v34 + v35);
        }

        else
        {
          v37 = 0;
          v36 = 0;
        }

        if (v37 >= v30)
        {
          v38 = v30;
        }

        else
        {
          v38 = v37;
        }

        v39 = memcmp(v29, v36, v38);
        if (v39)
        {
          if ((v39 & 0x80000000) == 0)
          {
            goto LABEL_51;
          }
        }

        else if (v30 >= v37)
        {
          goto LABEL_51;
        }

        v40 = v22;
        while (1)
        {
          v41 = v40;
          v42 = a1 + v40;
          *(v42 + 3) = v31;
          if (v41 == -16)
          {
            break;
          }

          if (v26 >= 5 && v25[2])
          {
            v43 = (v24 + v25[2]);
            v44 = *v43;
            v45 = v43 + v44 + 4;
            v46 = *(v43 + v44);
          }

          else
          {
            v46 = 0;
            v45 = 0;
          }

          v31 = *(v42 + 1);
          v47 = (v31 - *v31);
          if (*v47 >= 5u && (v48 = v47[2]) != 0)
          {
            v49 = (v31 + v48);
            v50 = *v49;
            v51 = v49 + v50 + 4;
            v52 = *(v49 + v50);
          }

          else
          {
            v52 = 0;
            v51 = 0;
          }

          if (v52 >= v46)
          {
            v53 = v46;
          }

          else
          {
            v53 = v52;
          }

          v54 = memcmp(v45, v51, v53);
          if (!v54)
          {
            if (v46 >= v52)
            {
              goto LABEL_48;
            }

            v54 = -1;
          }

          v40 = v41 - 8;
          if ((v54 & 0x80000000) == 0)
          {
LABEL_48:
            v55 = (a1 + v41 + 16);
            goto LABEL_50;
          }
        }

        v55 = a1;
LABEL_50:
        *v55 = v24;
        ++v23;
        v2 = v201;
        if (v23 == 8)
        {
          return v21 + 1 == v201;
        }

LABEL_51:
        v20 = v21;
        v22 += 8;
        if (++v21 == v2)
        {
          return 1;
        }
      }
    }

    sub_24D61C124(a1, a1 + 1, a1 + 2);
    v12 = a1[2];
    v13 = a1[3];
    v14 = (v13 - *v13);
    v15 = *v14;
    if (v15 >= 5 && v14[2])
    {
      v16 = (v13 + v14[2]);
      v17 = *v16;
      v18 = v16 + v17 + 4;
      v19 = *(v16 + v17);
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    v72 = (v12 - *v12);
    if (*v72 >= 5u && (v73 = v72[2]) != 0)
    {
      v74 = (v12 + v73);
      v75 = *v74;
      v76 = v74 + v75 + 4;
      v77 = *(v74 + v75);
    }

    else
    {
      v77 = 0;
      v76 = 0;
    }

    if (v77 >= v19)
    {
      v78 = v19;
    }

    else
    {
      v78 = v77;
    }

    v79 = memcmp(v18, v76, v78);
    if (v79)
    {
      if (v79 < 0)
      {
        goto LABEL_77;
      }
    }

    else if (v19 < v77)
    {
LABEL_77:
      a1[2] = v13;
      a1[3] = v12;
      v80 = a1[1];
      if (v15 >= 5 && v14[2])
      {
        v81 = (v13 + v14[2]);
        v82 = *v81;
        v83 = v81 + v82 + 4;
        v84 = *(v81 + v82);
      }

      else
      {
        v84 = 0;
        v83 = 0;
      }

      v101 = (v80 - *v80);
      if (*v101 >= 5u && (v102 = v101[2]) != 0)
      {
        v103 = (v80 + v102);
        v104 = *v103;
        v105 = v103 + v104 + 4;
        v106 = *(v103 + v104);
      }

      else
      {
        v106 = 0;
        v105 = 0;
      }

      if (v106 >= v84)
      {
        v107 = v84;
      }

      else
      {
        v107 = v106;
      }

      v108 = memcmp(v83, v105, v107);
      if (v108)
      {
        if ((v108 & 0x80000000) == 0)
        {
          goto LABEL_141;
        }
      }

      else if (v84 >= v106)
      {
        goto LABEL_141;
      }

      a1[1] = v13;
      a1[2] = v80;
      v118 = *a1;
      if (v15 >= 5 && v14[2])
      {
        v119 = (v13 + v14[2]);
        v120 = *v119;
        v121 = v119 + v120 + 4;
        v122 = *(v119 + v120);
      }

      else
      {
        v122 = 0;
        v121 = 0;
      }

      v128 = (v118 - *v118);
      if (*v128 >= 5u && (v129 = v128[2]) != 0)
      {
        v130 = (v118 + v129);
        v131 = *v130;
        v132 = v130 + v131 + 4;
        v133 = *(v130 + v131);
      }

      else
      {
        v133 = 0;
        v132 = 0;
      }

      if (v133 >= v122)
      {
        v134 = v122;
      }

      else
      {
        v134 = v133;
      }

      v135 = memcmp(v121, v132, v134);
      if (!v135)
      {
        if (v122 >= v133)
        {
          goto LABEL_141;
        }

        goto LABEL_140;
      }

      if (v135 < 0)
      {
LABEL_140:
        *a1 = v13;
        a1[1] = v118;
      }

LABEL_141:
      v136 = *(v2 - 1);
      v137 = (v136 - *v136);
      if (*v137 >= 5u && (v138 = v137[2]) != 0)
      {
        v139 = (v136 + v138);
        v140 = *v139;
        v141 = v139 + v140 + 4;
        v142 = *(v139 + v140);
      }

      else
      {
        v142 = 0;
        v141 = 0;
      }

      v143 = (v12 - *v12);
      if (*v143 >= 5u && (v144 = v143[2]) != 0)
      {
        v145 = (v12 + v144);
        v146 = *v145;
        v147 = v145 + v146 + 4;
        v148 = *(v145 + v146);
      }

      else
      {
        v148 = 0;
        v147 = 0;
      }

      if (v148 >= v142)
      {
        v149 = v142;
      }

      else
      {
        v149 = v148;
      }

      v150 = memcmp(v141, v147, v149);
      if (v150)
      {
        if ((v150 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v142 >= v148)
      {
        return 1;
      }

      a1[3] = v136;
      *(v2 - 1) = v12;
      v152 = a1[2];
      v151 = a1[3];
      v153 = (v151 - *v151);
      v154 = *v153;
      if (v154 >= 5 && v153[2])
      {
        v155 = (v151 + v153[2]);
        v156 = *v155;
        v157 = v155 + v156 + 4;
        v158 = *(v155 + v156);
      }

      else
      {
        v158 = 0;
        v157 = 0;
      }

      v159 = (v152 - *v152);
      if (*v159 >= 5u && (v160 = v159[2]) != 0)
      {
        v161 = (v152 + v160);
        v162 = *v161;
        v163 = v161 + v162 + 4;
        v164 = *(v161 + v162);
      }

      else
      {
        v164 = 0;
        v163 = 0;
      }

      if (v164 >= v158)
      {
        v165 = v158;
      }

      else
      {
        v165 = v164;
      }

      v166 = memcmp(v157, v163, v165);
      if (v166)
      {
        if ((v166 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v158 >= v164)
      {
        return 1;
      }

      a1[2] = v151;
      a1[3] = v152;
      v167 = a1[1];
      if (v154 >= 5 && v153[2])
      {
        v168 = (v151 + v153[2]);
        v169 = *v168;
        v170 = v168 + v169 + 4;
        v171 = *(v168 + v169);
      }

      else
      {
        v171 = 0;
        v170 = 0;
      }

      v172 = (v167 - *v167);
      if (*v172 >= 5u && (v173 = v172[2]) != 0)
      {
        v174 = (v167 + v173);
        v175 = *v174;
        v176 = v174 + v175 + 4;
        v177 = *(v174 + v175);
      }

      else
      {
        v177 = 0;
        v176 = 0;
      }

      if (v177 >= v171)
      {
        v178 = v171;
      }

      else
      {
        v178 = v177;
      }

      v179 = memcmp(v170, v176, v178);
      if (v179)
      {
        if ((v179 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v171 >= v177)
      {
        return 1;
      }

      a1[1] = v151;
      a1[2] = v167;
      v188 = *a1;
      if (v154 >= 5 && v153[2])
      {
        v189 = (v151 + v153[2]);
        v190 = *v189;
        v191 = v189 + v190 + 4;
        v192 = *(v189 + v190);
      }

      else
      {
        v192 = 0;
        v191 = 0;
      }

      v193 = (v188 - *v188);
      if (*v193 >= 5u && (v194 = v193[2]) != 0)
      {
        v195 = (v188 + v194);
        v196 = *v195;
        v197 = v195 + v196 + 4;
        v198 = *(v195 + v196);
      }

      else
      {
        v198 = 0;
        v197 = 0;
      }

      if (v198 >= v192)
      {
        v199 = v192;
      }

      else
      {
        v199 = v198;
      }

      v200 = memcmp(v191, v197, v199);
      if (v200)
      {
        if ((v200 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v192 >= v198)
      {
        return 1;
      }

      *a1 = v151;
      a1[1] = v188;
      return 1;
    }

    v12 = v13;
    goto LABEL_141;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 1);
  v5 = *a1;
  v6 = (v4 - *v4);
  if (*v6 >= 5u && (v7 = v6[2]) != 0)
  {
    v8 = (v4 + v7);
    v9 = *v8;
    v10 = v8 + v9 + 4;
    v11 = *(v8 + v9);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v64 = (v5 - *v5);
  if (*v64 >= 5u && (v65 = v64[2]) != 0)
  {
    v66 = (v5 + v65);
    v67 = *v66;
    v68 = v66 + v67 + 4;
    v69 = *(v66 + v67);
  }

  else
  {
    v69 = 0;
    v68 = 0;
  }

  if (v69 >= v11)
  {
    v70 = v11;
  }

  else
  {
    v70 = v69;
  }

  v71 = memcmp(v10, v68, v70);
  if (v71)
  {
    if ((v71 & 0x80000000) == 0)
    {
      return 1;
    }

    goto LABEL_92;
  }

  if (v11 < v69)
  {
LABEL_92:
    *a1 = v4;
    *(v2 - 1) = v5;
  }

  return 1;
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