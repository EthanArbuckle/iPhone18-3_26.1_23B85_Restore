void sub_1000BEB5C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return;
    }

    v10 = 0;
    v11 = *(a2 + 8);
    v12 = v11 & 0x3FFFFFFF;
    v13 = v11 & 0x40000000;
    v14 = (v11 >> 30) & 1;
    v15 = -a4;
    v136 = a5;
    while (1)
    {
      v17 = a1[v10 + 4];
      if (v12 != (v17 & 0x3FFFFFFF))
      {
        if (v12 < (v17 & 0x3FFFFFFF))
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }

      if (v14 == ((v17 >> 30) & 1))
      {
        break;
      }

      if (v13)
      {
        goto LABEL_22;
      }

LABEL_7:
      v10 += 13;
      v16 = __CFADD__(v15++, 1);
      if (v16)
      {
        return;
      }
    }

    if (LOBYTE(a1[v10 + 3]) != 1)
    {
      goto LABEL_7;
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_22;
    }

    v18 = a2[2];
    v19 = a1[v10 + 2];
    if (v19 >= v18)
    {
      v20 = a2[2];
    }

    else
    {
      v20 = a1[v10 + 2];
    }

    if (v20)
    {
      v21 = memcmp(a2[1], a1[v10 + 1], v20);
      a5 = v136;
      if (v21)
      {
        if (v21 < 0)
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }
    }

    if (v18 >= v19)
    {
      goto LABEL_7;
    }

LABEL_22:
    v132 = &a1[v10];
    if (-v15 >= a5)
    {
      if (v15 == -1)
      {

        sub_1000BE154(&a1[v10], a2);
        return;
      }

      v43 = -v15 / 2;
      if (a3 == a2)
      {
        v22 = 0;
LABEL_82:
        v23 = &a1[13 * v43 + v10];
        v58 = 0x4EC4EC4EC4EC4EC5 * (v22 >> 3);
        v59 = (a2 + v22);
        v60 = (a2 + v22);
        if (v23 == a2)
        {
          goto LABEL_133;
        }

LABEL_103:
        v60 = v23;
        if (v22)
        {
          v67 = v43;
          sub_1000BE154(v23, a2);
          v60 = v23 + 13;
          v68 = v22 - 104;
          if (v22 != 104)
          {
            v69 = a2 + 13;
            do
            {
              if (v60 == a2)
              {
                a2 = v69;
              }

              sub_1000BE154(v60, v69);
              v60 += 13;
              v69 += 13;
              v68 -= 104;
            }

            while (v68);
          }

          if (v60 != a2)
          {
            v70 = v60;
            v71 = a2;
            while (1)
            {
              sub_1000BE154(v70, a2);
              a2 += 13;
              v72 = v70 + 13 == v71;
              if (a2 == v59)
              {
                if (v70 + 13 == v71)
                {
                  goto LABEL_132;
                }

                a2 = v71 + 13;
                v70 += 26;
                while (1)
                {
                  sub_1000BE154(v70 - 13, v71);
                  v72 = v70 == v71;
                  if (a2 != v59)
                  {
                    break;
                  }

                  v73 = v70 == v71;
                  v70 += 13;
                  if (v73)
                  {
                    goto LABEL_132;
                  }
                }
              }

              else
              {
                v70 += 13;
              }

              if (v72)
              {
                v71 = a2;
              }
            }
          }

          v60 = a2;
LABEL_132:
          a5 = v136;
          v43 = v67;
        }

        goto LABEL_133;
      }

      v44 = 0x4EC4EC4EC4EC4EC5 * (a3 - a2);
      v45 = &a1[13 * v43 + v10];
      v46 = *(v45 + 8);
      v47 = v46 & 0x3FFFFFFF;
      v48 = (v46 >> 30) & 1;
      if (v45[3])
      {
        v22 = 0;
        v49 = v45[2];
        __s1a = v45[1];
        v128 = v49;
        v130 = (v46 >> 30) & 1;
        while (1)
        {
          v50 = v44 >> 1;
          v51 = v22 + 104 * (v44 >> 1);
          v52 = a2 + v51;
          v53 = *(a2 + v51 + 32);
          if ((v53 & 0x3FFFFFFF) == v47)
          {
            v54 = v53 & 0x40000000;
            if (v48 == v54 >> 30)
            {
              if (v52[24] == 1)
              {
                v55 = *(v52 + 2);
                if (v49 >= v55)
                {
                  v56 = *(v52 + 2);
                }

                else
                {
                  v56 = v49;
                }

                if (v56 && (v57 = memcmp(*(v52 + 1), __s1a, v56), v49 = v128, v48 = v130, v43 = -v15 / 2, a5 = v136, v57))
                {
                  if ((v57 & 0x80000000) == 0)
                  {
                    goto LABEL_64;
                  }
                }

                else if (v55 >= v49)
                {
                  goto LABEL_64;
                }
              }
            }

            else if (!v54)
            {
              goto LABEL_64;
            }
          }

          else if ((v53 & 0x3FFFFFFFu) >= v47)
          {
            goto LABEL_64;
          }

          v22 = v51 + 104;
          v50 = v44 + ~v50;
LABEL_64:
          v44 = v50;
          if (!v50)
          {
            goto LABEL_82;
          }
        }
      }

      v22 = 0;
      while (2)
      {
        v74 = v44 >> 1;
        v75 = v22 + 104 * (v44 >> 1);
        v76 = *(a2 + v75 + 32);
        if ((v76 & 0x3FFFFFFF) == v47)
        {
          if ((v76 & 0x40000000) == 0 || ((v76 >> 30) & 1) == v48)
          {
LABEL_124:
            v44 = v74;
            if (!v74)
            {
              goto LABEL_82;
            }

            continue;
          }
        }

        else if ((v76 & 0x3FFFFFFF) >= v47)
        {
          goto LABEL_124;
        }

        break;
      }

      v22 = v75 + 104;
      v74 = v44 + ~v74;
      goto LABEL_124;
    }

    v131 = a5 / 2;
    v22 = 104 * (a5 / 2);
    v23 = &a1[v10];
    if (&a1[v10] != a2)
    {
      v24 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1 - v10 * 8) >> 3);
      v25 = a2 + v22;
      v26 = *(a2 + v22 + 32);
      v27 = v26 & 0x3FFFFFFF;
      v28 = v26 & 0x40000000;
      v29 = (v26 >> 30) & 1;
      if (*(a2 + v22 + 24))
      {
        v30 = *(v25 + 2);
        __s1 = *(v25 + 1);
        v127 = v30;
        v23 = &a1[v10];
        v129 = v29;
        if (!v28)
        {
          while (1)
          {
            v31 = v24 >> 1;
            v32 = &v23[13 * (v24 >> 1)];
            v33 = *(v32 + 8);
            if (v27 == (v33 & 0x3FFFFFFF))
            {
              if (v29 == ((v33 >> 30) & 1) && *(v32 + 24) == 1)
              {
                v34 = v32[2];
                if (v34 >= v30)
                {
                  v35 = v30;
                }

                else
                {
                  v35 = v32[2];
                }

                if (v35 && (v123 = v32[2], v36 = memcmp(__s1, v32[1], v35), v34 = v123, v30 = v127, v29 = v129, a5 = v136, v36))
                {
                  if (v36 < 0)
                  {
                    goto LABEL_28;
                  }
                }

                else if (v30 < v34)
                {
                  goto LABEL_28;
                }
              }
            }

            else if (v27 < (v33 & 0x3FFFFFFF))
            {
              goto LABEL_28;
            }

            v23 = v32 + 13;
            v31 = v24 + ~v31;
LABEL_28:
            v24 = v31;
            if (!v31)
            {
              goto LABEL_102;
            }
          }
        }

        while (1)
        {
          v37 = v24 >> 1;
          v38 = &v23[13 * (v24 >> 1)];
          v39 = *(v38 + 8);
          if (v27 == (v39 & 0x3FFFFFFF))
          {
            if (v29 != ((v39 >> 30) & 1))
            {
              goto LABEL_44;
            }

            if (*(v38 + 24) == 1)
            {
              v40 = v38[2];
              if (v40 >= v30)
              {
                v41 = v30;
              }

              else
              {
                v41 = v38[2];
              }

              if (v41 && (v124 = v38[2], v42 = memcmp(__s1, v38[1], v41), v40 = v124, v30 = v127, v29 = v129, a5 = v136, v42))
              {
                if (v42 < 0)
                {
                  goto LABEL_44;
                }
              }

              else if (v30 < v40)
              {
                goto LABEL_44;
              }
            }
          }

          else if (v27 < (v39 & 0x3FFFFFFF))
          {
            goto LABEL_44;
          }

          v23 = v38 + 13;
          v37 = v24 + ~v37;
LABEL_44:
          v24 = v37;
          if (!v37)
          {
            goto LABEL_102;
          }
        }
      }

      v23 = &a1[v10];
      if (!v28)
      {
        while (1)
        {
          v61 = v24 >> 1;
          v62 = &v23[13 * (v24 >> 1)];
          v63 = *(v62 + 8);
          if (v27 == (v63 & 0x3FFFFFFF))
          {
            if (v29 == ((v63 >> 30) & 1) && (v62[3] & 1) != 0)
            {
              goto LABEL_87;
            }
          }

          else if (v27 < (v63 & 0x3FFFFFFF))
          {
            goto LABEL_87;
          }

          v23 = v62 + 13;
          v61 = v24 + ~v61;
LABEL_87:
          v24 = v61;
          if (!v61)
          {
            goto LABEL_102;
          }
        }
      }

      do
      {
        v64 = v24 >> 1;
        v65 = &v23[13 * (v24 >> 1)];
        v66 = *(v65 + 8);
        if (v27 == (v66 & 0x3FFFFFFF))
        {
          if (v29 != ((v66 >> 30) & 1) || (v65[3] & 1) != 0)
          {
            goto LABEL_95;
          }
        }

        else if (v27 < (v66 & 0x3FFFFFFF))
        {
          goto LABEL_95;
        }

        v23 = v65 + 13;
        v64 = v24 + ~v64;
LABEL_95:
        v24 = v64;
      }

      while (v64);
    }

LABEL_102:
    v43 = 0x4EC4EC4EC4EC4EC5 * ((v23 - a1 - v10 * 8) >> 3);
    v58 = v131;
    v59 = (a2 + v22);
    v60 = (a2 + v22);
    if (v23 != a2)
    {
      goto LABEL_103;
    }

LABEL_133:
    a4 = -(v43 + v15);
    v77 = a5 - v58;
    a1 = v132;
    if (v43 + v58 >= a5 - (v43 + v58) - v15)
    {
      v78 = v43;
      sub_1000BEB5C(v60, v59, a3, -(v43 + v15), a5 - v58, a6, a7);
      a4 = v78;
      a3 = v60;
      a5 = v58;
      a2 = v23;
      if (!v58)
      {
        return;
      }
    }

    else
    {
      sub_1000BEB5C(v132, v23, v60, v43, v58, a6, a7);
      a1 = v60;
      a5 = v77;
      a2 = v59;
      if (!v77)
      {
        return;
      }
    }
  }

  if (a4 > a5)
  {
    if (a2 == a3)
    {
      return;
    }

    v79 = 0;
    v80 = 0;
    v81 = a6;
    do
    {
      v82 = &a2[v79];
      *(a6 + v79 * 8) = a2[v79];
      v83 = *&a2[v79 + 1];
      v84 = *(&a2[v79 + 2] + 4);
      *(a6 + v79 * 8 + 40) = a6 + v79 * 8 + 56;
      v85 = a6 + v79 * 8 + 40;
      *(v85 - 20) = v84;
      *(v85 - 32) = v83;
      *(v85 + 8) = 0x600000000;
      if (LODWORD(a2[v79 + 6]))
      {
        sub_100056AF0(v85, v82 + 5);
      }

      ++v80;
      v79 += 13;
    }

    while (v82 + 13 != a3);
    v91 = a3 - 13;
    v92 = a6 + v79 * 8;
    while (1)
    {
      if (a2 == a1)
      {
        while (v92 != v81)
        {
          v103 = *(v92 - 104);
          v92 -= 104;
          *v91 = v103;
          v104 = *(v92 + 8);
          *(v91 + 20) = *(v92 + 20);
          *(v91 + 1) = v104;
          sub_100056AF0((v91 + 5), (v92 + 40));
          v91 -= 13;
        }

        goto LABEL_199;
      }

      v95 = (v92 - 96);
      v96 = *(v92 - 72);
      v97 = *(a2 - 18);
      if ((v96 & 0x3FFFFFFF) == (v97 & 0x3FFFFFFF))
      {
        v98 = v96 & 0x40000000;
        if (((v97 >> 30) & 1) == v98 >> 30)
        {
          if (*(a2 - 80) == 1)
          {
            if (*(v92 - 80) != 1)
            {
              goto LABEL_167;
            }

            v99 = *(v92 - 88);
            v100 = *(a2 - 11);
            if (v100 >= v99)
            {
              v101 = *(v92 - 88);
            }

            else
            {
              v101 = *(a2 - 11);
            }

            if (v101 && (v102 = memcmp(*v95, *(a2 - 12), v101)) != 0)
            {
              v81 = a6;
              if (v102 < 0)
              {
                goto LABEL_167;
              }
            }

            else
            {
              v16 = v99 >= v100;
              v81 = a6;
              if (!v16)
              {
LABEL_167:
                v95 = a2 - 12;
                v93 = a2;
                a2 -= 13;
                goto LABEL_151;
              }
            }
          }
        }

        else if (v98)
        {
          goto LABEL_167;
        }
      }

      else if ((v96 & 0x3FFFFFFFu) < (v97 & 0x3FFFFFFF))
      {
        goto LABEL_167;
      }

      v93 = v92;
      v92 -= 104;
LABEL_151:
      *v91 = *(v93 - 13);
      v94 = *v95;
      *(v91 + 20) = *(v95 + 12);
      *(v91 + 1) = v94;
      sub_100056AF0((v91 + 5), v93 - 8);
      v91 -= 13;
      if (v92 == v81)
      {
        goto LABEL_199;
      }
    }
  }

  if (a1 == a2)
  {
    return;
  }

  v86 = 0;
  v80 = 0;
  v81 = a6;
  do
  {
    v87 = &a1[v86];
    *(a6 + v86 * 8) = a1[v86];
    v88 = *&a1[v86 + 1];
    v89 = *(&a1[v86 + 2] + 4);
    *(a6 + v86 * 8 + 40) = a6 + v86 * 8 + 56;
    v90 = a6 + v86 * 8 + 40;
    *(v90 - 20) = v89;
    *(v90 - 32) = v88;
    *(v90 + 8) = 0x600000000;
    if (LODWORD(a1[v86 + 6]))
    {
      sub_100056AF0(v90, v87 + 5);
    }

    ++v80;
    v86 += 13;
  }

  while (v87 + 13 != a2);
  v105 = a6 + v86 * 8;
  v106 = a6 + v86 * 8 - 104;
  v107 = a6;
  do
  {
    while (1)
    {
      if (a2 == a3)
      {
        v117 = 0;
        do
        {
          v118 = &a1[v117 / 8];
          v119 = v107 + v117;
          *v118 = *(v107 + v117);
          v120 = *(v107 + v117 + 8);
          *(v118 + 20) = *(v107 + v117 + 20);
          *(v118 + 1) = v120;
          sub_100056AF0(&a1[v117 / 8 + 5], (v107 + v117 + 40));
          v117 += 104;
        }

        while (v106 != v119);
        goto LABEL_199;
      }

      v109 = *(a2 + 8);
      v110 = *(v107 + 32);
      if ((v109 & 0x3FFFFFFF) != (v110 & 0x3FFFFFFF))
      {
        break;
      }

      v111 = v109 & 0x40000000;
      if (((v110 >> 30) & 1) != v111 >> 30)
      {
        if (v111)
        {
          goto LABEL_190;
        }

        goto LABEL_174;
      }

      if (*(v107 + 24) != 1)
      {
        goto LABEL_174;
      }

      if (*(a2 + 24) != 1)
      {
        goto LABEL_190;
      }

      v112 = a2[2];
      v113 = *(v107 + 16);
      if (v113 >= v112)
      {
        v114 = a2[2];
      }

      else
      {
        v114 = *(v107 + 16);
      }

      if (!v114 || (v115 = memcmp(a2[1], *(v107 + 8), v114)) == 0)
      {
        if (v112 >= v113)
        {
          goto LABEL_174;
        }

        goto LABEL_190;
      }

      if (v115 < 0)
      {
        goto LABEL_190;
      }

LABEL_174:
      *a1 = *v107;
      v108 = *(v107 + 8);
      *(a1 + 20) = *(v107 + 20);
      *(a1 + 1) = v108;
      sub_100056AF0((a1 + 5), (v107 + 40));
      v107 += 104;
      a1 += 13;
      if (v105 == v107)
      {
        goto LABEL_199;
      }
    }

    if ((v109 & 0x3FFFFFFFu) >= (v110 & 0x3FFFFFFF))
    {
      goto LABEL_174;
    }

LABEL_190:
    *a1 = *a2;
    v116 = *(a2 + 1);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 1) = v116;
    sub_100056AF0((a1 + 5), a2 + 5);
    a2 += 13;
    a1 += 13;
  }

  while (v105 != v107);
LABEL_199:
  if (v81 && v80)
  {
    v121 = (a6 + 56);
    do
    {
      v122 = *(v121 - 2);
      if (v121 != v122)
      {
        free(v122);
      }

      v121 += 13;
      --v80;
    }

    while (v80);
  }
}

uint64_t *sub_1000BF600(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[2] = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

__n128 sub_1000BF720(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v12 = *a2;
  v13 = *a3;
  v14 = *(a3 + 2);
  v3 = *(a1 + 8);
  v4 = *a1;
  v5 = &v12;
  if (v3 >= *(a1 + 12))
  {
    if (v4 <= &v12 && v4 + 32 * v3 > &v12)
    {
      v10 = &v12 - v4;
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 32);
      a1 = v11;
      v4 = *v11;
      v5 = &v10[*v11];
    }

    else
    {
      v9 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 32);
      a1 = v9;
      v4 = *v9;
      v5 = &v12;
    }
  }

  v6 = (v4 + 32 * *(a1 + 8));
  result = *v5;
  v8 = *(v5 + 1);
  *v6 = *v5;
  v6[1] = v8;
  ++*(a1 + 8);
  return result;
}

llvm::raw_ostream *sub_1000BF7F4(llvm::raw_ostream *result, unsigned int a2, llvm::raw_ostream **a3, _DWORD *a4, int a5)
{
  i = result;
  if (a2)
  {
    v9 = 32 * a2;
    for (i = result; a5 != *(i + 6) >> 31; i = (i + 32))
    {
      v9 -= 32;
      if (!v9)
      {
        return result;
      }
    }
  }

  v10 = (result + 32 * a2);
  while (i != v10)
  {
    v11 = *a3;
    if ((*(i + 27) & 0x40) != 0)
    {
      v12 = "!";
    }

    else
    {
      v12 = "#";
    }

    v13 = *(v11 + 4);
    if (*(v11 + 3) == v13)
    {
      v15 = llvm::raw_ostream::write(*a3, v12, 1uLL);
      v14 = v15[4];
      v16 = *(i + 1);
      v17 = *(i + 2);
      if (v17 > v15[3] - v14)
      {
LABEL_14:
        llvm::raw_ostream::write(v15, v16, v17);
        goto LABEL_18;
      }
    }

    else
    {
      *v13 = *v12;
      v14 = (*(v11 + 4) + 1);
      *(v11 + 4) = v14;
      v15 = v11;
      v16 = *(i + 1);
      v17 = *(i + 2);
      if (v17 > *(v11 + 3) - v14)
      {
        goto LABEL_14;
      }
    }

    if (v17)
    {
      v18 = v17;
      memcpy(v14, v16, v17);
      v15[4] += v18;
    }

LABEL_18:
    v19 = *(i + 6);
    if ((v19 & 0x3FFFFFFF) != 0)
    {
      llvm::raw_ostream::operator<<(v11, v19 & 0x3FFFFFFF);
    }

    v20 = *a3;
    v21 = *(*a3 + 4);
    if ((*(*a3 + 3) - v21) > 2)
    {
      *(v21 + 2) = 32;
      *v21 = 15648;
      *(v20 + 4) += 3;
      v22 = *i;
      if ((*(i + 27) & 0x40) == 0)
      {
LABEL_24:
        v23 = *v22;
        if ((atomic_load_explicit(&qword_1002C0580, memory_order_acquire) & 1) == 0)
        {
          sub_10027968C();
        }

        v24 = v23 + 9;
        v25 = v23[12];
        if ((v25 & 2) == 0)
        {
          v24 = *v24;
        }

        if ((*(v25 & 0xFFFFFFFFFFFFFFF8))(v24, qword_1002C0578))
        {
          v26 = *a3;
          v28 = v22;
          mlir::Attribute::print(&v28, v26);
        }

        else
        {
          mlir::AsmPrinter::Impl::printAttributeImpl(a3, v22, 0);
        }

        goto LABEL_31;
      }
    }

    else
    {
      llvm::raw_ostream::write(v20, " = ", 3uLL);
      v22 = *i;
      if ((*(i + 27) & 0x40) == 0)
      {
        goto LABEL_24;
      }
    }

    mlir::AsmPrinter::Impl::printTypeImpl(a3, v22);
    *(i + 28) = 1;
LABEL_31:
    result = *a3;
    ++*a4;
    v27 = *(result + 4);
    if (v27 >= *(result + 3))
    {
      result = llvm::raw_ostream::write(result, 10);
    }

    else
    {
      *(result + 4) = v27 + 1;
      *v27 = 10;
    }

    do
    {
      i = (i + 32);
    }

    while (i != v10 && a5 != *(i + 6) >> 31);
  }

  return result;
}

void sub_1000BFA78(uint64_t a1, char *a2, size_t a3, void *(*a4)(const char ***a1, llvm::raw_ostream *this), void ***p_p_p)
{
  v10 = *(a1 + 8);
  (**a1)(*(*a1 + 8));
  __p = 0;
  v62 = 0;
  v63 = 0;
  p_p = &__p;
  if (*(v10 + 56))
  {
    v11 = *(v10 + 48);
    v53 = 0;
    v57 = 0;
    v58 = 1;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    v52 = &off_1002B45C0;
    v59 = &__p;
    llvm::raw_ostream::SetBufferAndMode(&v52, 0, 0, 0);
    a4(p_p_p, &v52);
    v12 = HIBYTE(v63);
    if (v63 < 0)
    {
      v12 = v62;
    }

    if (v12 > v11)
    {
      llvm::raw_ostream::~raw_ostream(&v52);
      if ((SHIBYTE(v63) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_55;
    }

    p_p_p = &p_p;
    llvm::raw_ostream::~raw_ostream(&v52);
    a4 = sub_1000C007C;
  }

  v13 = *(a1 + 16);
  v14 = *v13;
  *v13 = 1;
  if ((v14 & 1) == 0)
  {
    if (**(a1 + 24) != 1)
    {
      goto LABEL_13;
    }

    v15 = *(v10 + 16);
    v16 = *(v15 + 4);
    if (*(v15 + 3) == v16)
    {
      v15 = llvm::raw_ostream::write(v15, ",", 1uLL);
      v17 = *(v15 + 4);
      ++*(v10 + 80);
      if (v17 < *(v15 + 3))
      {
        goto LABEL_12;
      }
    }

    else
    {
      *v16 = 44;
      v17 = (*(v15 + 4) + 1);
      *(v15 + 4) = v17;
      ++*(v10 + 80);
      if (v17 < *(v15 + 3))
      {
LABEL_12:
        *(v15 + 4) = v17 + 1;
        *v17 = 10;
LABEL_13:
        v18 = *(v10 + 16);
        v19 = *(v18 + 4);
        if (*(v18 + 3) - v19 <= 1uLL)
        {
          goto LABEL_14;
        }

        goto LABEL_26;
      }
    }

    llvm::raw_ostream::write(v15, 10);
    v18 = *(v10 + 16);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 <= 1uLL)
    {
LABEL_14:
      v18 = llvm::raw_ostream::write(v18, "  ", 2uLL);
      v20 = *(a1 + 32);
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v18 + 4);
      if (v22 <= *(v18 + 3) - v23)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }

LABEL_26:
    *v19 = 8224;
    v23 = (*(v18 + 4) + 2);
    *(v18 + 4) = v23;
    v34 = *(a1 + 32);
    v21 = *v34;
    v22 = *(v34 + 8);
    if (v22 <= *(v18 + 3) - v23)
    {
LABEL_15:
      if (v22)
      {
        v24 = v18;
        v25 = v22;
        memcpy(v23, v21, v22);
        v18 = v24;
        v23 = (*(v24 + 4) + v25);
        *(v24 + 4) = v23;
      }

      if (*(v18 + 3) - v23 <= 0xCuLL)
      {
LABEL_18:
        v18 = llvm::raw_ostream::write(v18, "_resources: {", 0xDuLL);
        v26 = *(v18 + 4);
        ++*(v10 + 80);
        if (v26 >= *(v18 + 3))
        {
LABEL_19:
          llvm::raw_ostream::write(v18, 10);
          goto LABEL_20;
        }

LABEL_29:
        *(v18 + 4) = v26 + 1;
        *v26 = 10;
        v35 = *(a1 + 40);
        v36 = *v35;
        *v35 = 1;
        if (v36)
        {
          goto LABEL_21;
        }

        goto LABEL_30;
      }

LABEL_28:
      qmemcpy(v23, "_resources: {", 13);
      v26 = (*(v18 + 4) + 13);
      *(v18 + 4) = v26;
      ++*(v10 + 80);
      if (v26 >= *(v18 + 3))
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }

LABEL_27:
    v18 = llvm::raw_ostream::write(v18, v21, v22);
    v23 = *(v18 + 4);
    if (*(v18 + 3) - v23 <= 0xCuLL)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_20:
  v27 = *(a1 + 40);
  v28 = *v27;
  *v27 = 1;
  if (v28)
  {
LABEL_21:
    v29 = *(v10 + 16);
    v30 = *(v29 + 4);
    if (*(v29 + 3) != v30)
    {
      *v30 = 44;
      v31 = (*(v29 + 4) + 1);
      goto LABEL_48;
    }

    v32 = ",";
    v33 = 1;
LABEL_40:
    v29 = llvm::raw_ostream::write(v29, v32, v33);
    v31 = *(v29 + 4);
    ++*(v10 + 80);
    if (v31 < *(v29 + 3))
    {
      goto LABEL_49;
    }

    goto LABEL_41;
  }

LABEL_30:
  if (**(a1 + 48) != 1)
  {
    goto LABEL_34;
  }

  v37 = *(v10 + 16);
  v38 = *(v37 + 4);
  if (*(v37 + 3) == v38)
  {
    v37 = llvm::raw_ostream::write(v37, ",", 1uLL);
    v39 = *(v37 + 4);
    ++*(v10 + 80);
    if (v39 < *(v37 + 3))
    {
      goto LABEL_33;
    }
  }

  else
  {
    *v38 = 44;
    v39 = (*(v37 + 4) + 1);
    *(v37 + 4) = v39;
    ++*(v10 + 80);
    if (v39 < *(v37 + 3))
    {
LABEL_33:
      *(v37 + 4) = v39 + 1;
      *v39 = 10;
LABEL_34:
      v29 = *(v10 + 16);
      v40 = *(v29 + 4);
      if (*(v29 + 3) - v40 <= 3uLL)
      {
        goto LABEL_35;
      }

      goto LABEL_45;
    }
  }

  llvm::raw_ostream::write(v37, 10);
  v29 = *(v10 + 16);
  v40 = *(v29 + 4);
  if (*(v29 + 3) - v40 <= 3uLL)
  {
LABEL_35:
    v29 = llvm::raw_ostream::write(v29, "    ", 4uLL);
    v41 = *(a1 + 56);
    v42 = *v41;
    v43 = *(v41 + 8);
    v44 = *(v29 + 4);
    if (v43 <= *(v29 + 3) - v44)
    {
      goto LABEL_36;
    }

    goto LABEL_46;
  }

LABEL_45:
  *v40 = 538976288;
  v44 = (*(v29 + 4) + 4);
  *(v29 + 4) = v44;
  v49 = *(a1 + 56);
  v42 = *v49;
  v43 = *(v49 + 8);
  if (v43 <= *(v29 + 3) - v44)
  {
LABEL_36:
    if (v43)
    {
      v45 = v29;
      v46 = v43;
      memcpy(v44, v42, v43);
      v29 = v45;
      v44 = (*(v45 + 4) + v46);
      *(v45 + 4) = v44;
    }

    if (*(v29 + 3) - v44 <= 2uLL)
    {
      goto LABEL_39;
    }

    goto LABEL_47;
  }

LABEL_46:
  v29 = llvm::raw_ostream::write(v29, v42, v43);
  v44 = *(v29 + 4);
  if (*(v29 + 3) - v44 <= 2uLL)
  {
LABEL_39:
    v32 = ": {";
    v33 = 3;
    goto LABEL_40;
  }

LABEL_47:
  v44[2] = 123;
  *v44 = 8250;
  v31 = (*(v29 + 4) + 3);
LABEL_48:
  *(v29 + 4) = v31;
  ++*(v10 + 80);
  if (v31 < *(v29 + 3))
  {
LABEL_49:
    *(v29 + 4) = v31 + 1;
    *v31 = 10;
    v47 = *(v10 + 16);
    v48 = v47[4];
    if ((v47[3] - v48) <= 5)
    {
      goto LABEL_50;
    }

LABEL_42:
    *(v48 + 4) = 8224;
    *v48 = 538976288;
    v47[4] += 6;
    goto LABEL_51;
  }

LABEL_41:
  llvm::raw_ostream::write(v29, 10);
  v47 = *(v10 + 16);
  v48 = v47[4];
  if ((v47[3] - v48) > 5)
  {
    goto LABEL_42;
  }

LABEL_50:
  llvm::raw_ostream::write(v47, "      ", 6uLL);
LABEL_51:
  sub_1000AF0CC(a2, a3, *(v10 + 16));
  v50 = *(v10 + 16);
  v51 = v50[4];
  if (v50[3] - v51 > 1uLL)
  {
    *v51 = 8250;
    v50[4] += 2;
    a4(p_p_p, *(v10 + 16));
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    llvm::raw_ostream::write(v50, ": ", 2uLL);
    a4(p_p_p, *(v10 + 16));
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      return;
    }
  }

LABEL_55:
  operator delete(__p);
}

void *sub_1000C007C(const char ***a1, llvm::raw_ostream *this)
{
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  return llvm::raw_ostream::write(this, v4, v5);
}

uint64_t sub_1000C00B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a4;
  v5 = &v6;
  return (*(a1 + 8))(*(a1 + 16), a2, a3, sub_1000C018C, &v5);
}

uint64_t sub_1000C00FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a4;
  v7[1] = a5;
  v6 = v7;
  return (*(a1 + 8))(*(a1 + 16), a2, a3, sub_1000C021C, &v6);
}

uint64_t sub_1000C0140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9[0] = a4;
  v9[1] = a5;
  v8 = a6;
  v7[0] = &v8;
  v7[1] = v9;
  return (*(a1 + 8))(*(a1 + 16), a2, a3, sub_1000C02D4, v7);
}

void *sub_1000C018C(_BYTE **a1, llvm::raw_ostream *this)
{
  if (**a1)
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  if (**a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  v5 = *(this + 4);
  if (v4 <= *(this + 3) - v5)
  {
    result = memcpy(v5, v3, v4);
    *(this + 4) += v4;
  }

  else
  {

    return llvm::raw_ostream::write(this, v3, v4);
  }

  return result;
}

llvm::raw_ostream *sub_1000C021C(llvm::raw_ostream ***a1, llvm::raw_ostream *this)
{
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    llvm::raw_ostream::write(this, "", 1uLL);
  }

  else
  {
    *v4 = 34;
    ++*(this + 4);
  }

  result = llvm::printEscapedString(**a1, (*a1)[1], this);
  v6 = *(this + 4);
  if (*(this + 3) == v6)
  {

    return llvm::raw_ostream::write(this, "", 1uLL);
  }

  else
  {
    *v6 = 34;
    ++*(this + 4);
  }

  return result;
}

void sub_1000C02D4(int **a1, llvm::raw_ostream *this)
{
  v2 = this;
  v16 = **a1;
  v4 = *(this + 4);
  if ((*(this + 3) - v4) > 2)
  {
    *(v4 + 2) = 120;
    *v4 = 12322;
    *(this + 4) += 3;
  }

  else
  {
    v2 = llvm::raw_ostream::write(this, "0x", 3uLL);
  }

  sub_1000B8FA8(&v16, 4, 0, v14);
  if ((v15 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v14[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v6 = v15;
  }

  else
  {
    v6 = v14[1];
  }

  v7 = llvm::raw_ostream::write(v2, v5, v6);
  sub_1000B8FA8(*a1[1], *(a1[1] + 1), 0, __p);
  if ((v13 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = llvm::raw_ostream::write(v7, v8, v9);
  v11 = v10[4];
  if (v10[3] != v11)
  {
    *v11 = 34;
    ++v10[4];
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  llvm::raw_ostream::write(v10, "", 1uLL);
  if (v13 < 0)
  {
LABEL_18:
    operator delete(__p[0]);
  }

LABEL_19:
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_1000C0440(uint64_t a1, char *a2, size_t a3, void *(*a4)(const char ***a1, llvm::raw_ostream *this), void ***p_p_p)
{
  v10 = *(a1 + 8);
  (**a1)(*(*a1 + 8));
  __p = 0;
  v62 = 0;
  v63 = 0;
  p_p = &__p;
  if (*(v10 + 56))
  {
    v11 = *(v10 + 48);
    v53 = 0;
    v57 = 0;
    v58 = 1;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    v52 = &off_1002B45C0;
    v59 = &__p;
    llvm::raw_ostream::SetBufferAndMode(&v52, 0, 0, 0);
    a4(p_p_p, &v52);
    v12 = HIBYTE(v63);
    if (v63 < 0)
    {
      v12 = v62;
    }

    if (v12 > v11)
    {
      llvm::raw_ostream::~raw_ostream(&v52);
      if ((SHIBYTE(v63) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_55;
    }

    p_p_p = &p_p;
    llvm::raw_ostream::~raw_ostream(&v52);
    a4 = sub_1000C0A44;
  }

  v13 = *(a1 + 16);
  v14 = *v13;
  *v13 = 1;
  if ((v14 & 1) == 0)
  {
    if (**(a1 + 24) != 1)
    {
      goto LABEL_13;
    }

    v15 = *(v10 + 16);
    v16 = *(v15 + 4);
    if (*(v15 + 3) == v16)
    {
      v15 = llvm::raw_ostream::write(v15, ",", 1uLL);
      v17 = *(v15 + 4);
      ++*(v10 + 80);
      if (v17 < *(v15 + 3))
      {
        goto LABEL_12;
      }
    }

    else
    {
      *v16 = 44;
      v17 = (*(v15 + 4) + 1);
      *(v15 + 4) = v17;
      ++*(v10 + 80);
      if (v17 < *(v15 + 3))
      {
LABEL_12:
        *(v15 + 4) = v17 + 1;
        *v17 = 10;
LABEL_13:
        v18 = *(v10 + 16);
        v19 = *(v18 + 4);
        if (*(v18 + 3) - v19 <= 1uLL)
        {
          goto LABEL_14;
        }

        goto LABEL_26;
      }
    }

    llvm::raw_ostream::write(v15, 10);
    v18 = *(v10 + 16);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 <= 1uLL)
    {
LABEL_14:
      v18 = llvm::raw_ostream::write(v18, "  ", 2uLL);
      v20 = *(a1 + 32);
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v18 + 4);
      if (v22 <= *(v18 + 3) - v23)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }

LABEL_26:
    *v19 = 8224;
    v23 = (*(v18 + 4) + 2);
    *(v18 + 4) = v23;
    v34 = *(a1 + 32);
    v21 = *v34;
    v22 = *(v34 + 8);
    if (v22 <= *(v18 + 3) - v23)
    {
LABEL_15:
      if (v22)
      {
        v24 = v18;
        v25 = v22;
        memcpy(v23, v21, v22);
        v18 = v24;
        v23 = (*(v24 + 4) + v25);
        *(v24 + 4) = v23;
      }

      if (*(v18 + 3) - v23 <= 0xCuLL)
      {
LABEL_18:
        v18 = llvm::raw_ostream::write(v18, "_resources: {", 0xDuLL);
        v26 = *(v18 + 4);
        ++*(v10 + 80);
        if (v26 >= *(v18 + 3))
        {
LABEL_19:
          llvm::raw_ostream::write(v18, 10);
          goto LABEL_20;
        }

LABEL_29:
        *(v18 + 4) = v26 + 1;
        *v26 = 10;
        v35 = *(a1 + 40);
        v36 = *v35;
        *v35 = 1;
        if (v36)
        {
          goto LABEL_21;
        }

        goto LABEL_30;
      }

LABEL_28:
      qmemcpy(v23, "_resources: {", 13);
      v26 = (*(v18 + 4) + 13);
      *(v18 + 4) = v26;
      ++*(v10 + 80);
      if (v26 >= *(v18 + 3))
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }

LABEL_27:
    v18 = llvm::raw_ostream::write(v18, v21, v22);
    v23 = *(v18 + 4);
    if (*(v18 + 3) - v23 <= 0xCuLL)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_20:
  v27 = *(a1 + 40);
  v28 = *v27;
  *v27 = 1;
  if (v28)
  {
LABEL_21:
    v29 = *(v10 + 16);
    v30 = *(v29 + 4);
    if (*(v29 + 3) != v30)
    {
      *v30 = 44;
      v31 = (*(v29 + 4) + 1);
      goto LABEL_48;
    }

    v32 = ",";
    v33 = 1;
LABEL_40:
    v29 = llvm::raw_ostream::write(v29, v32, v33);
    v31 = *(v29 + 4);
    ++*(v10 + 80);
    if (v31 < *(v29 + 3))
    {
      goto LABEL_49;
    }

    goto LABEL_41;
  }

LABEL_30:
  if (**(a1 + 48) != 1)
  {
    goto LABEL_34;
  }

  v37 = *(v10 + 16);
  v38 = *(v37 + 4);
  if (*(v37 + 3) == v38)
  {
    v37 = llvm::raw_ostream::write(v37, ",", 1uLL);
    v39 = *(v37 + 4);
    ++*(v10 + 80);
    if (v39 < *(v37 + 3))
    {
      goto LABEL_33;
    }
  }

  else
  {
    *v38 = 44;
    v39 = (*(v37 + 4) + 1);
    *(v37 + 4) = v39;
    ++*(v10 + 80);
    if (v39 < *(v37 + 3))
    {
LABEL_33:
      *(v37 + 4) = v39 + 1;
      *v39 = 10;
LABEL_34:
      v29 = *(v10 + 16);
      v40 = *(v29 + 4);
      if (*(v29 + 3) - v40 <= 3uLL)
      {
        goto LABEL_35;
      }

      goto LABEL_45;
    }
  }

  llvm::raw_ostream::write(v37, 10);
  v29 = *(v10 + 16);
  v40 = *(v29 + 4);
  if (*(v29 + 3) - v40 <= 3uLL)
  {
LABEL_35:
    v29 = llvm::raw_ostream::write(v29, "    ", 4uLL);
    v41 = *(a1 + 56);
    v42 = *v41;
    v43 = *(v41 + 8);
    v44 = *(v29 + 4);
    if (v43 <= *(v29 + 3) - v44)
    {
      goto LABEL_36;
    }

    goto LABEL_46;
  }

LABEL_45:
  *v40 = 538976288;
  v44 = (*(v29 + 4) + 4);
  *(v29 + 4) = v44;
  v49 = *(a1 + 56);
  v42 = *v49;
  v43 = *(v49 + 8);
  if (v43 <= *(v29 + 3) - v44)
  {
LABEL_36:
    if (v43)
    {
      v45 = v29;
      v46 = v43;
      memcpy(v44, v42, v43);
      v29 = v45;
      v44 = (*(v45 + 4) + v46);
      *(v45 + 4) = v44;
    }

    if (*(v29 + 3) - v44 <= 2uLL)
    {
      goto LABEL_39;
    }

    goto LABEL_47;
  }

LABEL_46:
  v29 = llvm::raw_ostream::write(v29, v42, v43);
  v44 = *(v29 + 4);
  if (*(v29 + 3) - v44 <= 2uLL)
  {
LABEL_39:
    v32 = ": {";
    v33 = 3;
    goto LABEL_40;
  }

LABEL_47:
  v44[2] = 123;
  *v44 = 8250;
  v31 = (*(v29 + 4) + 3);
LABEL_48:
  *(v29 + 4) = v31;
  ++*(v10 + 80);
  if (v31 < *(v29 + 3))
  {
LABEL_49:
    *(v29 + 4) = v31 + 1;
    *v31 = 10;
    v47 = *(v10 + 16);
    v48 = v47[4];
    if ((v47[3] - v48) <= 5)
    {
      goto LABEL_50;
    }

LABEL_42:
    *(v48 + 4) = 8224;
    *v48 = 538976288;
    v47[4] += 6;
    goto LABEL_51;
  }

LABEL_41:
  llvm::raw_ostream::write(v29, 10);
  v47 = *(v10 + 16);
  v48 = v47[4];
  if ((v47[3] - v48) > 5)
  {
    goto LABEL_42;
  }

LABEL_50:
  llvm::raw_ostream::write(v47, "      ", 6uLL);
LABEL_51:
  sub_1000AF0CC(a2, a3, *(v10 + 16));
  v50 = *(v10 + 16);
  v51 = v50[4];
  if (v50[3] - v51 > 1uLL)
  {
    *v51 = 8250;
    v50[4] += 2;
    a4(p_p_p, *(v10 + 16));
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    llvm::raw_ostream::write(v50, ": ", 2uLL);
    a4(p_p_p, *(v10 + 16));
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      return;
    }
  }

LABEL_55:
  operator delete(__p);
}

void *sub_1000C0A44(const char ***a1, llvm::raw_ostream *this)
{
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  return llvm::raw_ostream::write(this, v4, v5);
}

void sub_1000C0A6C(uint64_t a1, char *a2, size_t a3, void *(*a4)(const char ***a1, llvm::raw_ostream *this), void ***p_p_p)
{
  v10 = *(a1 + 8);
  (**a1)(*(*a1 + 8));
  __p = 0;
  v62 = 0;
  v63 = 0;
  p_p = &__p;
  if (*(v10 + 56))
  {
    v11 = *(v10 + 48);
    v53 = 0;
    v57 = 0;
    v58 = 1;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    v52 = &off_1002B45C0;
    v59 = &__p;
    llvm::raw_ostream::SetBufferAndMode(&v52, 0, 0, 0);
    a4(p_p_p, &v52);
    v12 = HIBYTE(v63);
    if (v63 < 0)
    {
      v12 = v62;
    }

    if (v12 > v11)
    {
      llvm::raw_ostream::~raw_ostream(&v52);
      if ((SHIBYTE(v63) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_55;
    }

    p_p_p = &p_p;
    llvm::raw_ostream::~raw_ostream(&v52);
    a4 = sub_1000C1070;
  }

  v13 = *(a1 + 16);
  v14 = *v13;
  *v13 = 1;
  if ((v14 & 1) == 0)
  {
    if (**(a1 + 24) != 1)
    {
      goto LABEL_13;
    }

    v15 = *(v10 + 16);
    v16 = *(v15 + 4);
    if (*(v15 + 3) == v16)
    {
      v15 = llvm::raw_ostream::write(v15, ",", 1uLL);
      v17 = *(v15 + 4);
      ++*(v10 + 80);
      if (v17 < *(v15 + 3))
      {
        goto LABEL_12;
      }
    }

    else
    {
      *v16 = 44;
      v17 = (*(v15 + 4) + 1);
      *(v15 + 4) = v17;
      ++*(v10 + 80);
      if (v17 < *(v15 + 3))
      {
LABEL_12:
        *(v15 + 4) = v17 + 1;
        *v17 = 10;
LABEL_13:
        v18 = *(v10 + 16);
        v19 = *(v18 + 4);
        if (*(v18 + 3) - v19 <= 1uLL)
        {
          goto LABEL_14;
        }

        goto LABEL_26;
      }
    }

    llvm::raw_ostream::write(v15, 10);
    v18 = *(v10 + 16);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 <= 1uLL)
    {
LABEL_14:
      v18 = llvm::raw_ostream::write(v18, "  ", 2uLL);
      v20 = *(a1 + 32);
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v18 + 4);
      if (v22 <= *(v18 + 3) - v23)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }

LABEL_26:
    *v19 = 8224;
    v23 = (*(v18 + 4) + 2);
    *(v18 + 4) = v23;
    v34 = *(a1 + 32);
    v21 = *v34;
    v22 = *(v34 + 8);
    if (v22 <= *(v18 + 3) - v23)
    {
LABEL_15:
      if (v22)
      {
        v24 = v18;
        v25 = v22;
        memcpy(v23, v21, v22);
        v18 = v24;
        v23 = (*(v24 + 4) + v25);
        *(v24 + 4) = v23;
      }

      if (*(v18 + 3) - v23 <= 0xCuLL)
      {
LABEL_18:
        v18 = llvm::raw_ostream::write(v18, "_resources: {", 0xDuLL);
        v26 = *(v18 + 4);
        ++*(v10 + 80);
        if (v26 >= *(v18 + 3))
        {
LABEL_19:
          llvm::raw_ostream::write(v18, 10);
          goto LABEL_20;
        }

LABEL_29:
        *(v18 + 4) = v26 + 1;
        *v26 = 10;
        v35 = *(a1 + 40);
        v36 = *v35;
        *v35 = 1;
        if (v36)
        {
          goto LABEL_21;
        }

        goto LABEL_30;
      }

LABEL_28:
      qmemcpy(v23, "_resources: {", 13);
      v26 = (*(v18 + 4) + 13);
      *(v18 + 4) = v26;
      ++*(v10 + 80);
      if (v26 >= *(v18 + 3))
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }

LABEL_27:
    v18 = llvm::raw_ostream::write(v18, v21, v22);
    v23 = *(v18 + 4);
    if (*(v18 + 3) - v23 <= 0xCuLL)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_20:
  v27 = *(a1 + 40);
  v28 = *v27;
  *v27 = 1;
  if (v28)
  {
LABEL_21:
    v29 = *(v10 + 16);
    v30 = *(v29 + 4);
    if (*(v29 + 3) != v30)
    {
      *v30 = 44;
      v31 = (*(v29 + 4) + 1);
      goto LABEL_48;
    }

    v32 = ",";
    v33 = 1;
LABEL_40:
    v29 = llvm::raw_ostream::write(v29, v32, v33);
    v31 = *(v29 + 4);
    ++*(v10 + 80);
    if (v31 < *(v29 + 3))
    {
      goto LABEL_49;
    }

    goto LABEL_41;
  }

LABEL_30:
  if (**(a1 + 48) != 1)
  {
    goto LABEL_34;
  }

  v37 = *(v10 + 16);
  v38 = *(v37 + 4);
  if (*(v37 + 3) == v38)
  {
    v37 = llvm::raw_ostream::write(v37, ",", 1uLL);
    v39 = *(v37 + 4);
    ++*(v10 + 80);
    if (v39 < *(v37 + 3))
    {
      goto LABEL_33;
    }
  }

  else
  {
    *v38 = 44;
    v39 = (*(v37 + 4) + 1);
    *(v37 + 4) = v39;
    ++*(v10 + 80);
    if (v39 < *(v37 + 3))
    {
LABEL_33:
      *(v37 + 4) = v39 + 1;
      *v39 = 10;
LABEL_34:
      v29 = *(v10 + 16);
      v40 = *(v29 + 4);
      if (*(v29 + 3) - v40 <= 3uLL)
      {
        goto LABEL_35;
      }

      goto LABEL_45;
    }
  }

  llvm::raw_ostream::write(v37, 10);
  v29 = *(v10 + 16);
  v40 = *(v29 + 4);
  if (*(v29 + 3) - v40 <= 3uLL)
  {
LABEL_35:
    v29 = llvm::raw_ostream::write(v29, "    ", 4uLL);
    v41 = *(a1 + 56);
    v42 = *v41;
    v43 = *(v41 + 8);
    v44 = *(v29 + 4);
    if (v43 <= *(v29 + 3) - v44)
    {
      goto LABEL_36;
    }

    goto LABEL_46;
  }

LABEL_45:
  *v40 = 538976288;
  v44 = (*(v29 + 4) + 4);
  *(v29 + 4) = v44;
  v49 = *(a1 + 56);
  v42 = *v49;
  v43 = *(v49 + 8);
  if (v43 <= *(v29 + 3) - v44)
  {
LABEL_36:
    if (v43)
    {
      v45 = v29;
      v46 = v43;
      memcpy(v44, v42, v43);
      v29 = v45;
      v44 = (*(v45 + 4) + v46);
      *(v45 + 4) = v44;
    }

    if (*(v29 + 3) - v44 <= 2uLL)
    {
      goto LABEL_39;
    }

    goto LABEL_47;
  }

LABEL_46:
  v29 = llvm::raw_ostream::write(v29, v42, v43);
  v44 = *(v29 + 4);
  if (*(v29 + 3) - v44 <= 2uLL)
  {
LABEL_39:
    v32 = ": {";
    v33 = 3;
    goto LABEL_40;
  }

LABEL_47:
  v44[2] = 123;
  *v44 = 8250;
  v31 = (*(v29 + 4) + 3);
LABEL_48:
  *(v29 + 4) = v31;
  ++*(v10 + 80);
  if (v31 < *(v29 + 3))
  {
LABEL_49:
    *(v29 + 4) = v31 + 1;
    *v31 = 10;
    v47 = *(v10 + 16);
    v48 = v47[4];
    if ((v47[3] - v48) <= 5)
    {
      goto LABEL_50;
    }

LABEL_42:
    *(v48 + 4) = 8224;
    *v48 = 538976288;
    v47[4] += 6;
    goto LABEL_51;
  }

LABEL_41:
  llvm::raw_ostream::write(v29, 10);
  v47 = *(v10 + 16);
  v48 = v47[4];
  if ((v47[3] - v48) > 5)
  {
    goto LABEL_42;
  }

LABEL_50:
  llvm::raw_ostream::write(v47, "      ", 6uLL);
LABEL_51:
  sub_1000AF0CC(a2, a3, *(v10 + 16));
  v50 = *(v10 + 16);
  v51 = v50[4];
  if (v50[3] - v51 > 1uLL)
  {
    *v51 = 8250;
    v50[4] += 2;
    a4(p_p_p, *(v10 + 16));
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    llvm::raw_ostream::write(v50, ": ", 2uLL);
    a4(p_p_p, *(v10 + 16));
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      return;
    }
  }

LABEL_55:
  operator delete(__p);
}

void *sub_1000C1070(const char ***a1, llvm::raw_ostream *this)
{
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  return llvm::raw_ostream::write(this, v4, v5);
}

llvm::raw_ostream *sub_1000C1098(llvm::raw_ostream *result)
{
  v1 = *(result + 1);
  v2 = **result;
  **result = 1;
  if (v2)
  {
    return result;
  }

  result = *(v1 + 16);
  ++*(v1 + 80);
  v3 = *(result + 4);
  if (v3 < *(result + 3))
  {
    *(result + 4) = v3 + 1;
    *v3 = 10;
    v4 = *(result + 4);
    if ((*(result + 3) - v4) > 2)
    {
      goto LABEL_4;
    }

LABEL_9:
    result = llvm::raw_ostream::write(result, "{-#", 3uLL);
    v5 = *(result + 4);
    ++*(v1 + 80);
    if (v5 >= *(result + 3))
    {
      goto LABEL_5;
    }

LABEL_10:
    *(result + 4) = v5 + 1;
    *v5 = 10;
    return result;
  }

  result = llvm::raw_ostream::write(result, 10);
  v4 = *(result + 4);
  if ((*(result + 3) - v4) <= 2)
  {
    goto LABEL_9;
  }

LABEL_4:
  *(v4 + 2) = 35;
  *v4 = 11643;
  v5 = (*(result + 4) + 3);
  *(result + 4) = v5;
  ++*(v1 + 80);
  if (v5 < *(result + 3))
  {
    goto LABEL_10;
  }

LABEL_5:

  return llvm::raw_ostream::write(result, 10);
}

llvm::raw_ostream *sub_1000C11AC(llvm::raw_ostream *result, uint64_t a2, int a3, uint64_t a4)
{
  if (!a3)
  {
    goto LABEL_4;
  }

  v4 = ((a4 >> 4) ^ (a4 >> 9)) & (a3 - 1);
  v5 = *(a2 + 16 * v4);
  if (v5 != a4)
  {
    v10 = 1;
    while (v5 != -4096)
    {
      v11 = v4 + v10++;
      v4 = v11 & (a3 - 1);
      v5 = *(a2 + 16 * v4);
      if (v5 == a4)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  if (v4 == a3)
  {
LABEL_4:
    v6 = *(result + 4);
    if (*(result + 3) - v6 > 0x14uLL)
    {
      qmemcpy(v6, "<<UNKNOWN OPERATION>>", 21);
      *(result + 4) += 21;
    }

    else
    {

      return llvm::raw_ostream::write(result, "<<UNKNOWN OPERATION>>", 0x15uLL);
    }

    return result;
  }

  v7 = *(result + 4);
  if (v7 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 37);
    v8 = *(a2 + 16 * v4 + 8);
  }

  else
  {
    *(result + 4) = v7 + 1;
    *v7 = 37;
    v8 = *(a2 + 16 * v4 + 8);
  }

  return llvm::raw_ostream::operator<<(result, v8);
}

void sub_1000C12EC(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = *(a1 + 16);
    v4 = v3[4];
    if ((v3[3] - v4) > 5)
    {
      *(v4 + 4) = 25701;
      *v4 = 1937075829;
      v3[4] += 6;
    }

    else
    {
      v5 = a2;
      llvm::raw_ostream::write(v3, "unused", 6uLL);
      a2 = v5;
    }
  }

  v22 = &v26;
  v23 = 1;
  v24 = 0;
  v25 = 1;
  v6 = *a2;
  if (*a2)
  {
    for (i = 0; ; ++i)
    {
      v8 = v6[2];
      if (v25 != 1)
      {
        goto LABEL_16;
      }

      v9 = HIDWORD(v23);
      if (HIDWORD(v23))
      {
        v10 = 8 * HIDWORD(v23);
        v11 = v22;
        while (*v11 != v8)
        {
          ++v11;
          v10 -= 8;
          if (!v10)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_8;
      }

LABEL_14:
      if (HIDWORD(v23) < v23)
      {
        ++HIDWORD(v23);
        *(v22 + v9) = v8;
      }

      else
      {
LABEL_16:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v22, v6[2]);
        if ((v12 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      if (i)
      {
        v13 = *(a1 + 16);
        v14 = v13[4];
        if (v13[3] - v14 > 1uLL)
        {
          *v14 = 8236;
          v13[4] += 2;
          v15 = *(v8 + 36);
          if (v15)
          {
LABEL_23:
            v16 = v8 - 16;
            v17 = *(a1 + 16);
            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
            sub_1000B64E4((*(a1 + 24) + 280), NextResultAtOffset, 1, *(a1 + 16));
            if (v15 != 1)
            {
              for (j = 1; j != v15; ++j)
              {
                v21 = v17[4];
                if (v17[3] - v21 > 1uLL)
                {
                  *v21 = 8236;
                  v17[4] += 2;
                }

                else
                {
                  llvm::raw_ostream::write(v17, ", ", 2uLL);
                }

                v20 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j);
                sub_1000B64E4((*(a1 + 24) + 280), v20, 1, *(a1 + 16));
              }
            }

            goto LABEL_8;
          }

          goto LABEL_7;
        }

        llvm::raw_ostream::write(v13, ", ", 2uLL);
      }

      v15 = *(v8 + 36);
      if (v15)
      {
        goto LABEL_23;
      }

LABEL_7:
      sub_1000C11AC(*(a1 + 16), *(*(a1 + 24) + 328), *(*(a1 + 24) + 344), v8);
LABEL_8:
      v6 = *v6;
      if (!v6)
      {
        if ((v25 & 1) == 0)
        {
          free(v22);
        }

        return;
      }
    }
  }
}

void sub_1000C1548(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 16);
  sub_1000B64E4((*(a1 + 24) + 280), a2, 1, *(a1 + 16));
  v5 = *v4;
  v6 = *(*v4 + 4);
  if (*(*v4 + 3) - v6 > 1uLL)
  {
    *v6 = 8250;
    *(v5 + 4) += 2;
    v7 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
LABEL_3:
      if ((mlir::AsmPrinter::Impl::printAlias(v4, v7) & 1) == 0)
      {
        mlir::AsmPrinter::Impl::printTypeImpl(v4, v7);
        if ((*(a1 + 72) & 1) == 0)
        {
          return;
        }

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v5, ": ", 2uLL);
    v7 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v8 = *v4;
  v9 = *(*v4 + 4);
  if (*(*v4 + 3) - v9 <= 0xCuLL)
  {
    llvm::raw_ostream::write(v8, "<<NULL TYPE>>", 0xDuLL);
LABEL_9:
    if ((*(a1 + 72) & 1) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

  qmemcpy(v9, "<<NULL TYPE>>", 13);
  *(v8 + 4) += 13;
  if ((*(a1 + 72) & 1) == 0)
  {
    return;
  }

LABEL_10:
  v10 = *(a2 + 32);
  v11 = *v4;
  v12 = *(*v4 + 4);
  if (*(*v4 + 3) == v12)
  {
    llvm::raw_ostream::write(v11, " ", 1uLL);
    if ((*(a1 + 72) & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *v12 = 32;
    ++*(v11 + 4);
    if ((*(a1 + 72) & 2) == 0)
    {
LABEL_12:
      v13 = *v4;
      v14 = *(*v4 + 4);
      if (*(*v4 + 3) - v14 > 3uLL)
      {
        *v14 = 677605228;
        *(v13 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(v13, "loc(", 4uLL);
      }

      mlir::AsmPrinter::Impl::printLocationInternal(v4, v10, 0, 1);
      v15 = *v4;
      v16 = *(*v4 + 4);
      if (v16 >= *(*v4 + 3))
      {

        llvm::raw_ostream::write(v15, 41);
      }

      else
      {
        *(v15 + 4) = v16 + 1;
        *v16 = 41;
      }

      return;
    }
  }

  mlir::AsmPrinter::Impl::printLocationInternal(v4, v10, 1, 1);
}

__n128 sub_1000C1778(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
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
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      v90 = *(a2 - 24);
      v89 = (a2 - 24);
      if (v90 >= *v12)
      {
        return result;
      }

      goto LABEL_108;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v100 = v12 + 24;
      v102 = v12 == a2 || v100 == a2;
      if (a4)
      {
        if (!v102)
        {
          v103 = 0;
          v104 = v12;
          do
          {
            v106 = v100;
            v107 = *(v104 + 24);
            if (v107 < *v104)
            {
              v179 = *(v104 + 28);
              v208 = *(v104 + 44);
              v108 = v103;
              do
              {
                v109 = v12 + v108;
                *(v109 + 24) = *(v12 + v108);
                *(v109 + 40) = *(v12 + v108 + 16);
                if (!v108)
                {
                  v105 = v12;
                  goto LABEL_122;
                }

                v108 -= 24;
              }

              while (v107 < *(v109 - 24));
              v105 = v12 + v108 + 24;
LABEL_122:
              *v105 = v107;
              result = v179;
              *(v105 + 20) = v208;
              *(v105 + 4) = v179;
            }

            v100 = v106 + 24;
            v103 += 24;
            v104 = v106;
          }

          while (v106 + 24 != a2);
        }
      }

      else if (!v102)
      {
        do
        {
          v144 = v100;
          v145 = *(a1 + 24);
          if (v145 < *a1)
          {
            v183 = *(a1 + 28);
            v212 = *(a1 + 44);
            do
            {
              *v100 = *(v100 - 24);
              *(v100 + 16) = *(v100 - 8);
              v146 = *(v100 - 48);
              v100 -= 24;
            }

            while (v145 < v146);
            *v100 = v145;
            result = v183;
            *(v100 + 20) = v212;
            *(v100 + 4) = v183;
          }

          v100 = v144 + 24;
          a1 = v144;
        }

        while (v144 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v110 = (v14 - 2) >> 1;
        v111 = v110;
        do
        {
          if (v110 >= v111)
          {
            v112 = (2 * (v111 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v113 = v12 + 24 * v112;
            v114 = *v113;
            if (2 * v111 + 2 < v14)
            {
              v115 = *(v113 + 24);
              v116 = v114 < v115;
              if (v114 <= v115)
              {
                v114 = *(v113 + 24);
              }

              if (v116)
              {
                v113 += 24;
                v112 = 2 * v111 + 2;
              }
            }

            v117 = v12 + 24 * v111;
            v118 = *v117;
            if (v114 >= *v117)
            {
              v209 = *(v117 + 20);
              v180 = *(v117 + 4);
              while (1)
              {
                v122 = v117;
                v117 = v113;
                v123 = *v113;
                *(v122 + 16) = *(v113 + 16);
                *v122 = v123;
                if (v110 < v112)
                {
                  break;
                }

                v124 = (2 * v112) | 1;
                v113 = v12 + 24 * v124;
                v112 = 2 * v112 + 2;
                v121 = *v113;
                if (v112 < v14)
                {
                  v119 = *(v113 + 24);
                  v120 = v121 < v119;
                  if (v121 <= v119)
                  {
                    v121 = *(v113 + 24);
                  }

                  if (v120)
                  {
                    v113 += 24;
                  }

                  else
                  {
                    v112 = v124;
                  }

                  if (v121 < v118)
                  {
                    break;
                  }
                }

                else
                {
                  v112 = v124;
                  if (v121 < v118)
                  {
                    break;
                  }
                }
              }

              *v117 = v118;
              *(v117 + 20) = v209;
              *(v117 + 4) = v180;
            }
          }

          v116 = v111-- <= 0;
        }

        while (!v116);
        v125 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v126 = 0;
          v210 = *(v12 + 16);
          v181 = *v12;
          v127 = v12;
          do
          {
            v132 = v127 + 24 * v126;
            v130 = v132 + 24;
            v133 = (2 * v126) | 1;
            v126 = 2 * v126 + 2;
            if (v126 < v125)
            {
              v129 = *(v132 + 48);
              v128 = v132 + 48;
              if (*(v128 - 24) >= v129)
              {
                v126 = v133;
              }

              else
              {
                v130 = v128;
              }
            }

            else
            {
              v126 = v133;
            }

            v131 = *v130;
            *(v127 + 16) = *(v130 + 16);
            *v127 = v131;
            v127 = v130;
          }

          while (v126 <= ((v125 - 2) >> 1));
          a2 -= 24;
          if (v130 == a2)
          {
            result = v181;
            *(v130 + 16) = v210;
            *v130 = v181;
          }

          else
          {
            v134 = *a2;
            *(v130 + 16) = *(a2 + 16);
            *v130 = v134;
            result = v181;
            *(a2 + 16) = v210;
            *a2 = v181;
            v135 = v130 - v12 + 24;
            if (v135 >= 25)
            {
              v136 = (-2 - 0x5555555555555555 * (v135 >> 3)) >> 1;
              v137 = v12 + 24 * v136;
              v138 = *v130;
              if (*v137 < *v130)
              {
                v157 = *(v130 + 20);
                v154 = *(v130 + 4);
                do
                {
                  v139 = v130;
                  v130 = v137;
                  v140 = *v137;
                  *(v139 + 16) = *(v137 + 16);
                  *v139 = v140;
                  if (!v136)
                  {
                    break;
                  }

                  v136 = (v136 - 1) >> 1;
                  v137 = v12 + 24 * v136;
                }

                while (*v137 < v138);
                *v130 = v138;
                result = v154;
                *(v130 + 20) = v157;
                *(v130 + 4) = v154;
              }
            }
          }

          v116 = v125-- <= 2;
        }

        while (!v116);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 24 * (v14 >> 1);
    v17 = *v9;
    if (v13 < 0xC01)
    {
      v20 = *v12;
      if (*v12 < *v16)
      {
        if (v17 < v20)
        {
          v188 = *(v16 + 16);
          v159 = *v16;
          v21 = *v9;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v21;
          goto LABEL_36;
        }

        v195 = *(v16 + 16);
        v166 = *v16;
        v42 = *v12;
        *(v16 + 16) = *(v12 + 16);
        *v16 = v42;
        *(v12 + 16) = v195;
        *v12 = v166;
        if (*v9 < *v12)
        {
          v188 = *(v12 + 16);
          v159 = *v12;
          v43 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v43;
LABEL_36:
          *(a2 - 8) = v188;
          *v9 = v159;
        }

LABEL_37:
        --a3;
        v26 = *v12;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v17 >= v20)
      {
        goto LABEL_37;
      }

      v191 = *(v12 + 16);
      v162 = *v12;
      v24 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v24;
      *(a2 - 8) = v191;
      *v9 = v162;
      if (*v12 >= *v16)
      {
        goto LABEL_37;
      }

      v192 = *(v16 + 16);
      v163 = *v16;
      v25 = *v12;
      *(v16 + 16) = *(v12 + 16);
      *v16 = v25;
      *(v12 + 16) = v192;
      *v12 = v163;
      --a3;
      v26 = *v12;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v12 - 24) < v26)
      {
        goto LABEL_62;
      }

      v156 = *(v12 + 20);
      v153 = *(v12 + 4);
      if (v26 >= *v9)
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

        while (v26 >= *v12);
      }

      else
      {
        do
        {
          v81 = *(v12 + 24);
          v12 += 24;
        }

        while (v26 >= v81);
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

        while (v26 < v84);
      }

      while (v12 < v83)
      {
        v205 = *(v12 + 16);
        v176 = *v12;
        v85 = *v83;
        *(v12 + 16) = *(v83 + 16);
        *v12 = v85;
        *(v83 + 16) = v205;
        *v83 = v176;
        do
        {
          v86 = *(v12 + 24);
          v12 += 24;
        }

        while (v26 >= v86);
        do
        {
          v87 = *(v83 - 24);
          v83 -= 24;
        }

        while (v26 < v87);
      }

      if (v12 - 24 != a1)
      {
        v88 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 24) = v26;
      result = v153;
      *(v12 - 4) = v156;
      *(v12 - 20) = v153;
    }

    else
    {
      v18 = *v16;
      if (*v16 >= *v12)
      {
        if (v17 < v18)
        {
          v189 = *(v16 + 16);
          v160 = *v16;
          v22 = *v9;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v189;
          *v9 = v160;
          if (*v16 < *v12)
          {
            v190 = *(v12 + 16);
            v161 = *v12;
            v23 = *v16;
            *(v12 + 16) = *(v16 + 16);
            *v12 = v23;
            *(v16 + 16) = v190;
            *v16 = v161;
          }
        }
      }

      else
      {
        if (v17 >= v18)
        {
          v193 = *(v12 + 16);
          v164 = *v12;
          v27 = *v16;
          *(v12 + 16) = *(v16 + 16);
          *v12 = v27;
          *(v16 + 16) = v193;
          *v16 = v164;
          if (*v9 >= *v16)
          {
            goto LABEL_28;
          }

          v187 = *(v16 + 16);
          v158 = *v16;
          v28 = *v9;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v28;
        }

        else
        {
          v187 = *(v12 + 16);
          v158 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
        }

        *(a2 - 8) = v187;
        *v9 = v158;
      }

LABEL_28:
      v29 = (v12 + 24);
      v30 = v12 + 24 * v15;
      v33 = *(v30 - 24);
      v31 = v30 - 24;
      v32 = v33;
      v34 = *v10;
      if (v33 >= *(v12 + 24))
      {
        if (v34 < v32)
        {
          v194 = *(v31 + 16);
          v165 = *v31;
          v38 = *v10;
          *(v31 + 16) = *(a2 - 32);
          *v31 = v38;
          *(a2 - 32) = v194;
          *v10 = v165;
          if (*v31 < *v29)
          {
            v39 = *v29;
            v40 = *(v12 + 40);
            v41 = *(v31 + 16);
            *v29 = *v31;
            *(v12 + 40) = v41;
            *(v31 + 16) = v40;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v34 >= v32)
        {
          v44 = *v29;
          v45 = *(v12 + 40);
          v46 = *(v31 + 16);
          *v29 = *v31;
          *(v12 + 40) = v46;
          *(v31 + 16) = v45;
          *v31 = v44;
          if (*v10 >= *v31)
          {
            goto LABEL_42;
          }

          v196 = *(v31 + 16);
          v167 = *v31;
          v47 = *v10;
          *(v31 + 16) = *(a2 - 32);
          *v31 = v47;
          v35 = v167;
          *(a2 - 32) = v196;
        }

        else
        {
          v35 = *v29;
          v36 = *(v12 + 40);
          v37 = *(a2 - 32);
          *v29 = *v10;
          *(v12 + 40) = v37;
          *(a2 - 32) = v36;
        }

        *v10 = v35;
      }

LABEL_42:
      v48 = (v12 + 48);
      v49 = v12 + 24 * v15;
      v52 = *(v49 + 24);
      v50 = v49 + 24;
      v51 = v52;
      v53 = *v11;
      if (v52 >= *(v12 + 48))
      {
        if (v53 < v51)
        {
          v197 = *(v50 + 16);
          v168 = *v50;
          v57 = *v11;
          *(v50 + 16) = *(a2 - 56);
          *v50 = v57;
          *(a2 - 56) = v197;
          *v11 = v168;
          if (*v50 < *v48)
          {
            v58 = *v48;
            v59 = *(v12 + 64);
            v60 = *(v50 + 16);
            *v48 = *v50;
            *(v12 + 64) = v60;
            *(v50 + 16) = v59;
            *v50 = v58;
          }
        }
      }

      else
      {
        if (v53 >= v51)
        {
          v61 = *v48;
          v62 = *(v12 + 64);
          v63 = *(v50 + 16);
          *v48 = *v50;
          *(v12 + 64) = v63;
          *(v50 + 16) = v62;
          *v50 = v61;
          if (*v11 >= *v50)
          {
            goto LABEL_51;
          }

          v198 = *(v50 + 16);
          v169 = *v50;
          v64 = *v11;
          *(v50 + 16) = *(a2 - 56);
          *v50 = v64;
          v54 = v169;
          *(a2 - 56) = v198;
        }

        else
        {
          v54 = *v48;
          v55 = *(v12 + 64);
          v56 = *(a2 - 56);
          *v48 = *v11;
          *(v12 + 64) = v56;
          *(a2 - 56) = v55;
        }

        *v11 = v54;
      }

LABEL_51:
      v65 = *v16;
      v66 = *v50;
      if (*v16 >= *v31)
      {
        if (v66 < v65)
        {
          v200 = *(v16 + 16);
          v171 = *v16;
          *v16 = *v50;
          *(v16 + 16) = *(v50 + 16);
          *(v50 + 16) = v200;
          *v50 = v171;
          if (*v16 < *v31)
          {
            v201 = *(v31 + 16);
            v172 = *v31;
            *v31 = *v16;
            *(v31 + 16) = *(v16 + 16);
            *(v16 + 16) = v201;
            *v16 = v172;
          }
        }
      }

      else
      {
        if (v66 >= v65)
        {
          v202 = *(v31 + 16);
          v173 = *v31;
          *v31 = *v16;
          *(v31 + 16) = *(v16 + 16);
          *(v16 + 16) = v202;
          *v16 = v173;
          if (*v50 >= *v16)
          {
            goto LABEL_60;
          }

          v199 = *(v16 + 16);
          v170 = *v16;
          *v16 = *v50;
          *(v16 + 16) = *(v50 + 16);
        }

        else
        {
          v199 = *(v31 + 16);
          v170 = *v31;
          *v31 = *v50;
          *(v31 + 16) = *(v50 + 16);
        }

        *(v50 + 16) = v199;
        *v50 = v170;
      }

LABEL_60:
      v203 = *(v12 + 16);
      v174 = *v12;
      v67 = *v16;
      *(v12 + 16) = *(v16 + 16);
      *v12 = v67;
      *(v16 + 16) = v203;
      *v16 = v174;
      --a3;
      v26 = *v12;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v68 = 0;
      v155 = *(v12 + 20);
      v152 = *(v12 + 4);
      do
      {
        v69 = *(v12 + v68 + 24);
        v68 += 24;
      }

      while (v69 < v26);
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

        while (v73 >= v26);
      }

      else
      {
        do
        {
          v72 = *(v71 - 24);
          v71 -= 24;
        }

        while (v72 >= v26);
      }

      v12 += v68;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v204 = *(v12 + 16);
          v175 = *v12;
          v75 = *v74;
          *(v12 + 16) = *(v74 + 16);
          *v12 = v75;
          *(v74 + 16) = v204;
          *v74 = v175;
          do
          {
            v76 = *(v12 + 24);
            v12 += 24;
          }

          while (v76 < v26);
          do
          {
            v77 = *(v74 - 24);
            v74 -= 24;
          }

          while (v77 >= v26);
        }

        while (v12 < v74);
      }

      if (v12 - 24 != a1)
      {
        v78 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v78;
      }

      *(v12 - 24) = v26;
      *(v12 - 4) = v155;
      *(v12 - 20) = v152;
      if (v70 < v71)
      {
        goto LABEL_81;
      }

      v79 = sub_1000C2A00(a1, v12 - 24, v152);
      if (sub_1000C2A00(v12, a2, v80))
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
LABEL_81:
        sub_1000C1778(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v96 = *(v12 + 24);
      v97 = (v12 + 48);
      v98 = *(v12 + 48);
      if (v96 >= *v12)
      {
        if (v98 < v96)
        {
          v143 = *(v12 + 40);
          result = *v91;
          *v91 = *v97;
          *(v12 + 40) = *(v12 + 64);
          *v97 = result;
          *(v12 + 64) = v143;
          if (*(v12 + 24) < *v12)
          {
            v211 = *(v12 + 16);
            v182 = *v12;
            *v12 = *v91;
            *(v12 + 16) = *(v12 + 40);
            result = v182;
            *v91 = v182;
            *(v12 + 40) = v211;
          }
        }
      }

      else
      {
        if (v98 < v96)
        {
          v207 = *(v12 + 16);
          v178 = *v12;
          *v12 = *v97;
          *(v12 + 16) = *(v12 + 64);
          result = v178;
          *v97 = v178;
          v99 = v207;
          goto LABEL_184;
        }

        v214 = *(v12 + 16);
        v185 = *v12;
        *v12 = *v91;
        *(v12 + 16) = *(v12 + 40);
        result = v185;
        *v91 = v185;
        *(v12 + 40) = v214;
        if (v98 < *(v12 + 24))
        {
          v99 = *(v12 + 40);
          result = *v91;
          *v91 = *v97;
          *(v12 + 40) = *(v12 + 64);
          *v97 = result;
LABEL_184:
          *(v12 + 64) = v99;
        }
      }

      if (*v9 >= v97->n128_u32[0])
      {
        return result;
      }

      result = *v97;
      v149 = *(v12 + 64);
      v150 = *(a2 - 8);
      *v97 = *v9;
      *(v12 + 64) = v150;
      *(a2 - 8) = v149;
      *v9 = result;
      if (v97->n128_u32[0] >= v91->n128_u32[0])
      {
        return result;
      }

      v151 = *(v12 + 40);
      result = *v91;
      *v91 = *v97;
      *(v12 + 40) = *(v12 + 64);
      *v97 = result;
      *(v12 + 64) = v151;
LABEL_188:
      if (*(v12 + 24) < *v12)
      {
        v215 = *(v12 + 16);
        v186 = *v12;
        *v12 = *v91;
        *(v12 + 16) = v91[1].n128_u64[0];
        result = v186;
        *v91 = v186;
        v91[1].n128_u64[0] = v215;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_1000C27B8(v12, (v12 + 24), (v12 + 48), (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v91 = (v12 + 24);
  v92 = *(v12 + 24);
  v94 = *(a2 - 24);
  v89 = (a2 - 24);
  v93 = v94;
  if (v92 >= *v12)
  {
    if (v93 >= v92)
    {
      return result;
    }

    result = *v91;
    v141 = *(v12 + 40);
    v142 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v142;
    v89[1].n128_u64[0] = v141;
    *v89 = result;
    goto LABEL_188;
  }

  if (v93 < v92)
  {
LABEL_108:
    v206 = *(v12 + 16);
    v177 = *v12;
    v95 = *v89;
    *(v12 + 16) = v89[1].n128_u64[0];
    *v12 = v95;
    result = v177;
    v89[1].n128_u64[0] = v206;
    *v89 = v177;
    return result;
  }

  v213 = *(v12 + 16);
  v184 = *v12;
  *v12 = *v91;
  *(v12 + 16) = *(v12 + 40);
  result = v184;
  *v91 = v184;
  *(v12 + 40) = v213;
  if (v89->n128_u32[0] < *(v12 + 24))
  {
    result = *v91;
    v147 = *(v12 + 40);
    v148 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v148;
    v89[1].n128_u64[0] = v147;
    *v89 = result;
  }

  return result;
}

__n128 sub_1000C27B8(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = a3->n128_u32[0];
  if (a2->n128_u32[0] >= a1->n128_u32[0])
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
      if (a2->n128_u32[0] < a1->n128_u32[0])
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
    if (a3->n128_u32[0] < a2->n128_u32[0])
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
  if (a4->n128_u32[0] < a3->n128_u32[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_u32[0] < a2->n128_u32[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_u32[0] < a1->n128_u32[0])
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

  if (a5->n128_u32[0] < a4->n128_u32[0])
  {
    v23 = a4[1].n128_i64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    if (a4->n128_u32[0] < a3->n128_u32[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      if (a3->n128_u32[0] < a2->n128_u32[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        if (a2->n128_u32[0] < a1->n128_u32[0])
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

BOOL sub_1000C2A00(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v9 = *(a2 - 24);
      v4 = (a2 - 24);
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_u32[0] < *(a1 + 24))
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

      if (v8 >= v7)
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
LABEL_47:
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

      sub_1000C27B8(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
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
        if (v6->n128_u32[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_44;
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
        goto LABEL_44;
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
LABEL_44:
    if (v23->n128_u32[0] >= v21->n128_u32[0])
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
    if (v21->n128_u32[0] >= v6->n128_u32[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_47;
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
      if (v15->n128_u32[0] < v17)
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
    v51 = *v47;
    if (*v47 < v13->n128_u32[0])
    {
      v64 = *(v47 + 4);
      v65 = *(v47 + 20);
      v52 = v48;
      do
      {
        v53 = a1 + v52;
        *(v53 + 72) = *(a1 + v52 + 48);
        *(v53 + 88) = *(a1 + v52 + 64);
        if (v52 == -48)
        {
          v50 = a1;
          goto LABEL_34;
        }

        v52 -= 24;
      }

      while (v51 < *(v53 + 24));
      v50 = a1 + v52 + 72;
LABEL_34:
      *v50 = v51;
      *(v50 + 4) = v64;
      *(v50 + 20) = v65;
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

void sub_1000C2EBC(uint64_t a1, uint64_t *a2)
{
  v2 = a2[6];
  if (v2 >= 8)
  {
    v4 = a2 + 3;
    v5 = *a2;
    v6 = (v2 & 2) != 0 ? v4 : a2[3];
    (*(v2 & 0xFFFFFFFFFFFFFFF8))(v6, v5, a2[1], a2[2]);
    v7 = a2[6];
    if (v7 >= 8)
    {
      if ((v7 & 4) != 0)
      {
        if ((v7 & 2) != 0)
        {
          v8 = v4;
        }

        else
        {
          v8 = *v4;
        }

        (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
      }

      if ((v7 & 2) == 0)
      {
        v9 = a2[3];
        v10 = a2[4];
        v11 = a2[5];

        llvm::deallocate_buffer(v9, v10, v11);
      }
    }
  }
}

void sub_1000C2F6C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_1000C2F80(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v7 = v2;
    sub_1000AA41C(v3);
    v2 = v7;
  }

  else
  {
    *(*v3 + 8 * v4) = 0;
    *(v3 + 8) = v4 + 1;
  }

  v5 = *(*v2 + 536);

  return v5();
}

uint64_t sub_1000C32AC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    *(result + 2032) = off_1002B4118;
    v2 = result + 2184;
    v3 = *(result + 2208);
    if (v3 == v2)
    {
      (*(*v3 + 32))(v3);
      *(v1 + 2032) = &off_1002B3FB8;
      if ((*(v1 + 2140) & 1) == 0)
      {
LABEL_6:
        free(*(v1 + 2120));
      }
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      *(v1 + 2032) = &off_1002B3FB8;
      if ((*(v1 + 2140) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v4 = *(v1 + 2096);
    if (v4 != (v1 + 2112))
    {
      free(v4);
    }

    *(v1 + 1848) = off_1002B4118;
    v5 = *(v1 + 2024);
    if (v5 == v1 + 2000)
    {
      (*(*v5 + 32))(v5);
      *(v1 + 1848) = &off_1002B3FB8;
      if ((*(v1 + 1956) & 1) == 0)
      {
LABEL_13:
        free(*(v1 + 1936));
      }
    }

    else
    {
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      *(v1 + 1848) = &off_1002B3FB8;
      if ((*(v1 + 1956) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v6 = *(v1 + 1912);
    if (v6 != (v1 + 1928))
    {
      free(v6);
    }

    *(v1 + 1664) = off_1002B4118;
    v7 = *(v1 + 1840);
    if (v7 == v1 + 1816)
    {
      (*(*v7 + 32))(v7);
      *(v1 + 1664) = &off_1002B3FB8;
      if ((*(v1 + 1772) & 1) == 0)
      {
LABEL_20:
        free(*(v1 + 1752));
      }
    }

    else
    {
      if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      *(v1 + 1664) = &off_1002B3FB8;
      if ((*(v1 + 1772) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v8 = *(v1 + 1728);
    if (v8 != (v1 + 1744))
    {
      free(v8);
    }

    *(v1 + 1480) = off_1002B4118;
    v9 = *(v1 + 1656);
    if (v9 == v1 + 1632)
    {
      (*(*v9 + 32))(v9);
      *(v1 + 1480) = &off_1002B3FB8;
      if ((*(v1 + 1588) & 1) == 0)
      {
LABEL_27:
        free(*(v1 + 1568));
      }
    }

    else
    {
      if (v9)
      {
        (*(*v9 + 40))(v9);
      }

      *(v1 + 1480) = &off_1002B3FB8;
      if ((*(v1 + 1588) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v10 = *(v1 + 1544);
    if (v10 != (v1 + 1560))
    {
      free(v10);
    }

    *(v1 + 1296) = off_1002B4118;
    v11 = *(v1 + 1472);
    if (v11 == v1 + 1448)
    {
      (*(*v11 + 32))(v11);
      *(v1 + 1296) = &off_1002B3FB8;
      if ((*(v1 + 1404) & 1) == 0)
      {
LABEL_34:
        free(*(v1 + 1384));
      }
    }

    else
    {
      if (v11)
      {
        (*(*v11 + 40))(v11);
      }

      *(v1 + 1296) = &off_1002B3FB8;
      if ((*(v1 + 1404) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v12 = *(v1 + 1360);
    if (v12 != (v1 + 1376))
    {
      free(v12);
    }

    *(v1 + 1112) = off_1002B4118;
    v13 = *(v1 + 1288);
    if (v13 == v1 + 1264)
    {
      (*(*v13 + 32))(v13);
      *(v1 + 1112) = &off_1002B3FB8;
      if ((*(v1 + 1220) & 1) == 0)
      {
LABEL_41:
        free(*(v1 + 1200));
      }
    }

    else
    {
      if (v13)
      {
        (*(*v13 + 40))(v13);
      }

      *(v1 + 1112) = &off_1002B3FB8;
      if ((*(v1 + 1220) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v14 = *(v1 + 1176);
    if (v14 != (v1 + 1192))
    {
      free(v14);
    }

    *(v1 + 928) = off_1002B4118;
    v15 = *(v1 + 1104);
    if (v15 == v1 + 1080)
    {
      (*(*v15 + 32))(v15);
      *(v1 + 928) = &off_1002B3FB8;
      if ((*(v1 + 1036) & 1) == 0)
      {
LABEL_48:
        free(*(v1 + 1016));
      }
    }

    else
    {
      if (v15)
      {
        (*(*v15 + 40))(v15);
      }

      *(v1 + 928) = &off_1002B3FB8;
      if ((*(v1 + 1036) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v16 = *(v1 + 992);
    if (v16 != (v1 + 1008))
    {
      free(v16);
    }

    *(v1 + 744) = off_1002B4118;
    v17 = *(v1 + 920);
    if (v17 == v1 + 896)
    {
      (*(*v17 + 32))(v17);
      *(v1 + 744) = &off_1002B3FB8;
      if ((*(v1 + 852) & 1) == 0)
      {
LABEL_55:
        free(*(v1 + 832));
      }
    }

    else
    {
      if (v17)
      {
        (*(*v17 + 40))(v17);
      }

      *(v1 + 744) = &off_1002B3FB8;
      if ((*(v1 + 852) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    v18 = *(v1 + 808);
    if (v18 != (v1 + 824))
    {
      free(v18);
    }

    *(v1 + 560) = off_1002B4118;
    v19 = *(v1 + 736);
    if (v19 == v1 + 712)
    {
      (*(*v19 + 32))(v19);
      *(v1 + 560) = &off_1002B3FB8;
      if ((*(v1 + 668) & 1) == 0)
      {
LABEL_62:
        free(*(v1 + 648));
      }
    }

    else
    {
      if (v19)
      {
        (*(*v19 + 40))(v19);
      }

      *(v1 + 560) = &off_1002B3FB8;
      if ((*(v1 + 668) & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    v20 = *(v1 + 624);
    if (v20 != (v1 + 640))
    {
      free(v20);
    }

    *(v1 + 376) = off_1002B40B0;
    v21 = *(v1 + 552);
    if (v21 == v1 + 528)
    {
      (*(*v21 + 32))(v21);
      *(v1 + 376) = &off_1002B3FB8;
      if ((*(v1 + 484) & 1) == 0)
      {
LABEL_69:
        free(*(v1 + 464));
      }
    }

    else
    {
      if (v21)
      {
        (*(*v21 + 40))(v21);
      }

      *(v1 + 376) = &off_1002B3FB8;
      if ((*(v1 + 484) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    v22 = *(v1 + 440);
    if (v22 != (v1 + 456))
    {
      free(v22);
    }

    *(v1 + 192) = off_1002B40B0;
    v23 = *(v1 + 368);
    if (v23 == v1 + 344)
    {
      (*(*v23 + 32))(v23);
      *(v1 + 192) = &off_1002B3FB8;
      if ((*(v1 + 300) & 1) == 0)
      {
LABEL_76:
        free(*(v1 + 280));
      }
    }

    else
    {
      if (v23)
      {
        (*(*v23 + 40))(v23);
      }

      *(v1 + 192) = &off_1002B3FB8;
      if ((*(v1 + 300) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    v24 = *(v1 + 256);
    if (v24 != (v1 + 272))
    {
      free(v24);
    }

    *v1 = off_1002B6118;
    v25 = *(v1 + 184);
    if (v25 == v1 + 160)
    {
      (*(*v25 + 32))(v25);
      *v1 = &off_1002B3FB8;
      if ((*(v1 + 108) & 1) == 0)
      {
LABEL_83:
        free(*(v1 + 88));
      }
    }

    else
    {
      if (v25)
      {
        (*(*v25 + 40))(v25);
      }

      *v1 = &off_1002B3FB8;
      if ((*(v1 + 108) & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v26 = *(v1 + 64);
    if (v26 != (v1 + 80))
    {
      free(v26);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1000C3DA4(uint64_t a1, const char *a2, _OWORD *a3)
{
  *a1 = &off_1002B3FB8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v6 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v7 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = &_mh_execute_header;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    v12 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v6, v9 + 1, 8);
    GeneralCategory = v12;
    LODWORD(v9) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 128) = &off_1002B6180;
  *a1 = off_1002B6118;
  *(a1 + 152) = off_1002B4050;
  *(a1 + 160) = off_1002B61A0;
  *(a1 + 184) = a1 + 160;
  v10 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v10);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t sub_1000C3F54(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v11 = 0;
  result = llvm::cl::parser<long long>::parse(a1 + 152, a1, a3, a4, a5, a6, &v11);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 120) = v11;
    *(a1 + 12) = a2;
    v10 = *(a1 + 184);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v11);
      return v9;
    }

    else
    {
      sub_100033DA0();
      return sub_1000C3FE8();
    }
  }

  return result;
}

uint64_t sub_1000C3FF0(uint64_t a1)
{
  *a1 = off_1002B6118;
  v2 = a1 + 160;
  v3 = *(a1 + 184);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &off_1002B3FB8;
    if ((*(a1 + 108) & 1) == 0)
    {
LABEL_5:
      free(*(a1 + 88));
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &off_1002B3FB8;
    if ((*(a1 + 108) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(a1 + 64);
  if (v4 != (a1 + 80))
  {
    free(v4);
  }

  return a1;
}

void sub_1000C40F4(uint64_t a1)
{
  *a1 = off_1002B6118;
  v2 = a1 + 160;
  v3 = *(a1 + 184);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &off_1002B3FB8;
    if ((*(a1 + 108) & 1) == 0)
    {
LABEL_5:
      free(*(a1 + 88));
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &off_1002B3FB8;
    if ((*(a1 + 108) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(a1 + 64);
  if (v4 != (a1 + 80))
  {
    free(v4);
  }

  operator delete();
}

void sub_1000C4234(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 144) != 1 || *(a1 + 136) != *(a1 + 120))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 120);
    v6 = *(a1 + 136);
    v8 = *(a1 + 144);
    v7[0] = &off_1002B6180;
    v7[1] = v6;
    llvm::cl::parser<long long>::printOptionDiff((a1 + 152), a1, v5, v7, a2);
  }
}

uint64_t sub_1000C42B8(uint64_t result)
{
  if (*(result + 144) == 1)
  {
    *(result + 120) = *(result + 136);
  }

  else
  {
    *(result + 120) = 0;
  }

  return result;
}

uint64_t sub_1000C439C(uint64_t a1, const char *a2, _OWORD *a3)
{
  *a1 = &off_1002B3FB8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v6 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v7 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = &_mh_execute_header;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    v12 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v6, v9 + 1, 8);
    GeneralCategory = v12;
    LODWORD(v9) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 120) = 0;
  *(a1 + 128) = &off_1002B41E8;
  *(a1 + 136) = 0;
  *a1 = off_1002B40B0;
  *(a1 + 144) = off_1002B4080;
  *(a1 + 152) = off_1002B61E8;
  *(a1 + 176) = a1 + 152;
  v10 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v10);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t sub_1000C45D0(uint64_t a1, const char *a2, _BYTE **a3, _OWORD *a4)
{
  *a1 = &off_1002B3FB8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v8 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v9 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = &_mh_execute_header;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    v15 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v11 + 1, 8);
    GeneralCategory = v15;
    LODWORD(v11) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 120) = 0;
  *(a1 + 128) = &off_1002B4180;
  *(a1 + 136) = 0;
  *a1 = off_1002B4118;
  *(a1 + 144) = off_1002B4020;
  *(a1 + 152) = off_1002B41A0;
  *(a1 + 176) = a1 + 152;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12);
  v13 = *a3;
  *(a1 + 120) = **a3;
  *(a1 + 137) = 1;
  *(a1 + 136) = *v13;
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t sub_1000C479C(uint64_t a1, const char *a2, _BYTE **a3, _OWORD *a4, _WORD *a5)
{
  *a1 = &off_1002B3FB8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = &_mh_execute_header;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    v17 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v13 + 1, 8);
    GeneralCategory = v17;
    LODWORD(v13) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 120) = 0;
  *(a1 + 128) = &off_1002B4180;
  *(a1 + 136) = 0;
  *a1 = off_1002B4118;
  *(a1 + 144) = off_1002B4020;
  *(a1 + 152) = off_1002B41A0;
  *(a1 + 176) = a1 + 152;
  v14 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v14);
  v15 = *a3;
  *(a1 + 120) = **a3;
  *(a1 + 137) = 1;
  *(a1 + 136) = *v15;
  *(a1 + 32) = *a4;
  *(a1 + 10) = (32 * (*a5 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t *sub_1000C498C(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, _DWORD *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  buffer[2] = *a5;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v14 = *v10 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
      v15 = v16;
      if (v16)
      {
        v17 = v15 == -8;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v10;
}

void sub_1000C4AB4(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v17);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[32 * v6];
    v8 = v4;
    do
    {
      v9 = *v5;
      v8[2] = *(v5 + 2);
      *v8 = v9;
      *v5 = 0;
      *(v5 + 1) = 0;
      v10 = *(v5 + 3);
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      v8[3] = v10;
      v8 += 4;
      v5 += 32;
    }

    while (v5 != v7);
    v5 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 32 * v11;
      v13 = &v5[v12 - 9];
      v14 = -v12;
      do
      {
        v15 = *(v13 + 1);
        *(v13 + 1) = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

        if (*v13 < 0)
        {
          operator delete(*(v13 - 23));
        }

        v13 -= 32;
        v14 += 32;
      }

      while (v14);
      v5 = *a1;
    }
  }

  v16 = v17;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v16;
}

uint64_t sub_1000C4BDC(uint64_t result)
{
  *result = off_1002B5D48;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_1000C4C38(uint64_t a1)
{
  *a1 = off_1002B5D48;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_1000C4CD4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v31 = 0;
  v6 = (a1 + 16);
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 96, &v31);
  v8 = &v7[96 * *(a1 + 8)];
  v10 = *a2;
  v9 = *(a2 + 8);
  v33 = *a3;
  v11 = *(a3 + 6);
  v34 = *(a3 + 2);
  v37 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 2) != 0 && (v11 & 4) != 0)
    {
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 8))(&v35, a3 + 24);
      (*((v37 & 0xFFFFFFFFFFFFFFF8) + 16))(a3 + 24);
    }

    else
    {
      v35 = *(a3 + 24);
      v36 = *(a3 + 5);
    }

    *(a3 + 6) = 0;
  }

  v38 = *(a3 + 56);
  v39 = 0;
  if (!v10)
  {
    v12 = 0;
    v8[24] = 0;
    v13 = v8 + 24;
    *(v8 + 22) = -1;
    v14 = (v8 + 88);
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    goto LABEL_17;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10002BC08();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  v8[23] = v9;
  if (v9)
  {
    memmove(v8, v10, v9);
  }

  v8[v9] = 0;
  v12 = v39;
  *(v8 + 22) = -1;
  v15 = v8 + 88;
  *(v15 - 64) = 0;
  v13 = v15 - 16;
  if (v12 != -1)
  {
    v14 = v15;
LABEL_17:
    v32 = v13;
    (off_1002B6248[v12])(&v32, &v33);
    *v14 = v12;
    if (v39 != -1)
    {
      (off_1002B60F0[v39])(&v32, &v33);
    }
  }

  v39 = -1;
  v16 = *a1;
  v17 = *(a1 + 8);
  if (v17)
  {
    v18 = &v16[96 * v17];
    v19 = v7 + 88;
    v20 = v16 + 24;
    do
    {
      v22 = *(v20 - 24);
      *(v19 - 9) = *(v20 - 1);
      *(v19 - 22) = v22;
      *(v20 - 2) = 0;
      *(v20 - 1) = 0;
      *(v20 - 3) = 0;
      *(v19 - 64) = 0;
      *v19 = -1;
      v23 = *(v20 + 16);
      if (v23 != -1)
      {
        v32 = v19 - 16;
        (off_1002B6248[v23])(&v32, v20);
        *v19 = v23;
      }

      v21 = v20 - 24;
      v19 += 24;
      v20 += 96;
    }

    while (v21 + 96 != v18);
    v16 = *a1;
    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = &v16[96 * v24 - 8];
      v26 = -96 * v24;
      do
      {
        v27 = *v25;
        if (v27 != -1)
        {
          (off_1002B60F0[v27])(&v32, v25 - 64);
        }

        *v25 = -1;
        if (*(v25 - 65) < 0)
        {
          operator delete(*(v25 - 11));
        }

        v25 -= 96;
        v26 += 96;
      }

      while (v26);
      v16 = *a1;
    }
  }

  v28 = v31;
  if (v16 != v6)
  {
    free(v16);
  }

  *a1 = v7;
  v29 = *(a1 + 8) + 1;
  *(a1 + 8) = v29;
  *(a1 + 12) = v28;
  return &v7[96 * v29 - 96];
}

uint64_t *sub_1000C5024(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  *(v2 + 48) = 0;
  v4 = *(a2 + 6);
  *(v2 + 48) = v4;
  if (v4 >= 8)
  {
    if ((v4 & 2) != 0 && (v4 & 4) != 0)
    {
      v6 = a2;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 8))(v2 + 24, a2 + 24);
      result = (*((*(v2 + 48) & 0xFFFFFFFFFFFFFFF8) + 16))(v6 + 24);
      a2 = v6;
    }

    else
    {
      v5 = *(a2 + 24);
      *(v2 + 40) = *(a2 + 5);
      *(v2 + 24) = v5;
    }

    *(a2 + 6) = 0;
  }

  *(v2 + 56) = *(a2 + 56);
  return result;
}

__n128 sub_1000C50D0(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t sub_1000C50F0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v30 = 0;
  v6 = (a1 + 16);
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 96, &v30);
  v8 = &v7[96 * *(a1 + 8)];
  v10 = *a2;
  v9 = *(a2 + 8);
  v32[0] = *a3;
  v33 = 1;
  if (!v10)
  {
    v8[24] = 0;
    v11 = v8 + 24;
    *(v8 + 22) = -1;
    v12 = (v8 + 88);
    *v8 = 0;
    *(v8 + 1) = 0;
    v13 = 1;
    *(v8 + 2) = 0;
    goto LABEL_11;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10002BC08();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  v8[23] = v9;
  if (v9)
  {
    memmove(v8, v10, v9);
  }

  v8[v9] = 0;
  v13 = v33;
  *(v8 + 22) = -1;
  v14 = v8 + 88;
  *(v14 - 64) = 0;
  v11 = v14 - 16;
  if (v13 != -1)
  {
    v12 = v14;
LABEL_11:
    v31 = v11;
    (off_1002B6248[v13])(&v31, v32);
    *v12 = v13;
    if (v33 != -1)
    {
      (off_1002B60F0[v33])(&v31, v32);
    }
  }

  v33 = -1;
  v15 = *a1;
  v16 = *(a1 + 8);
  if (v16)
  {
    v17 = &v15[96 * v16];
    v18 = v7 + 88;
    v19 = v15 + 24;
    do
    {
      v21 = *(v19 - 24);
      *(v18 - 9) = *(v19 - 1);
      *(v18 - 22) = v21;
      *(v19 - 2) = 0;
      *(v19 - 1) = 0;
      *(v19 - 3) = 0;
      *(v18 - 64) = 0;
      *v18 = -1;
      v22 = *(v19 + 16);
      if (v22 != -1)
      {
        v31 = v18 - 16;
        (off_1002B6248[v22])(&v31, v19);
        *v18 = v22;
      }

      v20 = v19 - 24;
      v18 += 24;
      v19 += 96;
    }

    while (v20 + 96 != v17);
    v15 = *a1;
    v23 = *(a1 + 8);
    if (v23)
    {
      v24 = &v15[96 * v23 - 8];
      v25 = -96 * v23;
      do
      {
        v26 = *v24;
        if (v26 != -1)
        {
          (off_1002B60F0[v26])(&v31, v24 - 64);
        }

        *v24 = -1;
        if (*(v24 - 65) < 0)
        {
          operator delete(*(v24 - 11));
        }

        v24 -= 96;
        v25 += 96;
      }

      while (v25);
      v15 = *a1;
    }
  }

  v27 = v30;
  if (v15 != v6)
  {
    free(v15);
  }

  *a1 = v7;
  v28 = *(a1 + 8) + 1;
  *(a1 + 8) = v28;
  *(a1 + 12) = v27;
  return &v7[96 * v28 - 96];
}

uint64_t sub_1000C53D8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v30 = 0;
  v6 = (a1 + 16);
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 96, &v30);
  v8 = &v7[96 * *(a1 + 8)];
  v10 = *a2;
  v9 = *(a2 + 8);
  v32 = *a3;
  v33 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v34 = 2;
  if (!v10)
  {
    v8[24] = 0;
    v11 = v8 + 24;
    *(v8 + 22) = -1;
    v12 = (v8 + 88);
    *v8 = 0;
    *(v8 + 1) = 0;
    v13 = 2;
    *(v8 + 2) = 0;
    goto LABEL_11;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10002BC08();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  v8[23] = v9;
  if (v9)
  {
    memmove(v8, v10, v9);
  }

  v8[v9] = 0;
  v13 = v34;
  *(v8 + 22) = -1;
  v14 = v8 + 88;
  *(v14 - 64) = 0;
  v11 = v14 - 16;
  if (v13 != -1)
  {
    v12 = v14;
LABEL_11:
    v31 = v11;
    (off_1002B6248[v13])(&v31, &v32);
    *v12 = v13;
    if (v34 != -1)
    {
      (off_1002B60F0[v34])(&v31, &v32);
    }
  }

  v34 = -1;
  v15 = *a1;
  v16 = *(a1 + 8);
  if (v16)
  {
    v17 = &v15[96 * v16];
    v18 = v7 + 88;
    v19 = v15 + 24;
    do
    {
      v21 = *(v19 - 24);
      *(v18 - 9) = *(v19 - 1);
      *(v18 - 22) = v21;
      *(v19 - 2) = 0;
      *(v19 - 1) = 0;
      *(v19 - 3) = 0;
      *(v18 - 64) = 0;
      *v18 = -1;
      v22 = *(v19 + 16);
      if (v22 != -1)
      {
        v31 = v18 - 16;
        (off_1002B6248[v22])(&v31, v19);
        *v18 = v22;
      }

      v20 = v19 - 24;
      v18 += 24;
      v19 += 96;
    }

    while (v20 + 96 != v17);
    v15 = *a1;
    v23 = *(a1 + 8);
    if (v23)
    {
      v24 = &v15[96 * v23 - 8];
      v25 = -96 * v23;
      do
      {
        v26 = *v24;
        if (v26 != -1)
        {
          (off_1002B60F0[v26])(&v31, v24 - 64);
        }

        *v24 = -1;
        if (*(v24 - 65) < 0)
        {
          operator delete(*(v24 - 11));
        }

        v24 -= 96;
        v25 += 96;
      }

      while (v25);
      v15 = *a1;
    }
  }

  v27 = v30;
  if (v15 != v6)
  {
    free(v15);
  }

  *a1 = v7;
  v28 = *(a1 + 8) + 1;
  *(a1 + 8) = v28;
  *(a1 + 12) = v27;
  return &v7[96 * v28 - 96];
}

uint64_t sub_1000C56D0(uint64_t a1, unsigned int *a2, _OWORD *a3, uint64_t a4)
{
  Context = mlir::Attribute::getContext((a2 + 6));
  sub_1000C6CF4(a1, Context);
  *(a1 + 184) = 0u;
  *(a1 + 56) = a1 + 72;
  *(a1 + 64) = 0x600000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0;
  *(a1 + 200) = a1 + 216;
  *(a1 + 208) = 0x400000000;
  *(a1 + 248) = a1 + 264;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  v8 = a1 + 280;
  *(a1 + 264) = 0;
  *(a1 + 272) = 1;
  *(a1 + 296) = 0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = a1 + 464;
  *(a1 + 456) = 0x400000000;
  *(a1 + 496) = a1 + 512;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 1;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0;
  v9 = *a3;
  v10 = a3[1];
  v209 = a3;
  *(a1 + 576) = a3[2];
  *(a1 + 560) = v10;
  *(a1 + 544) = v9;
  v237 = 0;
  v236 = 0;
  v238 = v240;
  v239 = 0x400000000;
  v241 = &v242 + 8;
  v243 = 1;
  v242 = xmmword_10028FC90;
  v11 = sub_10003A984(&v236, 24, 24, 3);
  v12 = a2;
  v13 = *(a1 + 424);
  *v11 = a1 + 400;
  v11[1] = v13;
  v212 = a1 + 184;
  *(a1 + 424) = v11;
  v11[2] = 0;
  v208 = a1 + 400;
  v233 = v235;
  v234 = 0x800000000;
  v14 = a2[11];
  v210 = a1;
  if ((v14 & 0x7FFFFF) != 0)
  {
    v15 = 0;
    v16 = ((&a2[4 * ((v14 >> 23) & 1) + 17] + ((v14 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
    v17 = 24 * (v14 & 0x7FFFFF);
    do
    {
      *&v244 = v16;
      *(&v244 + 1) = *(a1 + 528);
      LODWORD(v245) = *(a1 + 536);
      v246 = v11;
      v18 = v233;
      if (v15 >= HIDWORD(v234))
      {
        v22 = v11;
        v23 = v12;
        if (v233 <= &v244 && v233 + 32 * v15 > &v244)
        {
          v24 = &v244 - v233;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v233, v235, v15 + 1, 32);
          v18 = v233;
          v19 = (v233 + v24);
          a1 = v210;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v233, v235, v15 + 1, 32);
          v19 = &v244;
          v18 = v233;
        }

        v12 = v23;
        v11 = v22;
      }

      else
      {
        v19 = &v244;
      }

      v20 = &v18[32 * v234];
      v21 = v19[1];
      *v20 = *v19;
      *(v20 + 1) = v21;
      v15 = v234 + 1;
      LODWORD(v234) = v234 + 1;
      v16 += 24;
      v17 -= 24;
    }

    while (v17);
  }

  sub_1000C6DE4(v8, v12);
  v25 = v234;
  if (v234)
  {
    v219 = v8;
    while (1)
    {
      v26 = v233 + 32 * v25;
      v211 = *(v26 - 4);
      if ((*(v209 + 20) & 0x84) == 0)
      {
        break;
      }

      v27 = *(v26 - 1);
      LODWORD(v234) = v25 - 1;
      v28 = *(v212 + 240);
      if (v28 != v27)
      {
        goto LABEL_19;
      }

LABEL_104:
      *(&v242 + 1) += 24;
      if (v236 && (v77 = ((v236 + 7) & 0xFFFFFFFFFFFFFFF8), (v77 + 3) <= v237))
      {
        v236 = v77 + 3;
      }

      else
      {
        v77 = sub_10003A984(&v236, 24, 24, 3);
        v28 = *(v212 + 240);
      }

      a1 = v210;
      *v77 = v208;
      v77[1] = v28;
      *(v210 + 424) = v77;
      v77[2] = 0;
      v222 = v219;
      if ((*(v210 + 584) & 4) == 0)
      {
        v78 = *(v211 + 2);
        if (v78)
        {
          if (sub_1000BA82C(*(v211 + 2)))
          {
            v79 = sub_1000BA82C(v78);
            (*(v79 + 8))(v79, v78, v211, sub_1000C8438, &v222);
          }
        }
      }

      v80 = *(v211 + 1);
      if (v80 != v211)
      {
        v81 = 0;
        while (1)
        {
          v82 = v80 ? (v80 - 8) : 0;
          v83 = *(a1 + 392);
          v216 = v80;
          if (!v83)
          {
            break;
          }

          v84 = *(a1 + 376);
          v85 = ((v82 >> 4) ^ (v82 >> 9)) & (v83 - 1);
          v86 = v84 + 32 * v85;
          v87 = *v86;
          if (*v86 == v82)
          {
            goto LABEL_147;
          }

          v88 = 0;
          v89 = 1;
          while (v87 != -4096)
          {
            if (v88)
            {
              v90 = 0;
            }

            else
            {
              v90 = v87 == -8192;
            }

            if (v90)
            {
              v88 = v86;
            }

            v91 = v85 + v89++;
            v85 = v91 & (v83 - 1);
            v86 = v84 + 32 * v85;
            v87 = *v86;
            if (*v86 == v82)
            {
              goto LABEL_147;
            }
          }

          if (v88)
          {
            v86 = v88;
          }

          v119 = *(a1 + 384);
          if (4 * v119 + 4 >= 3 * v83)
          {
            goto LABEL_181;
          }

          if (v83 + ~v119 - *(a1 + 388) <= v83 >> 3)
          {
            goto LABEL_182;
          }

          *(a1 + 384) = v119 + 1;
          if (*v86 != -4096)
          {
            goto LABEL_131;
          }

LABEL_132:
          *v86 = v82;
          *(v86 + 8) = -1;
          *(v86 + 16) = "";
          *(v86 + 24) = 0;
          __p[0] = 0;
          __p[1] = 0;
          v224 = 0;
          DWORD2(v244) = 0;
          LOBYTE(v248) = 0;
          HIDWORD(v248) = 1;
          v246 = 0;
          v247 = 0;
          v245 = 0;
          *&v244 = &off_1002B45C0;
          v249 = __p;
          llvm::raw_ostream::SetBufferAndMode(&v244, 0, 0, 0);
          v93 = v247;
          if (v246 - v247 > 2)
          {
            *(v247 + 2) = 98;
            *v93 = 25182;
            v247 += 3;
          }

          else
          {
            llvm::raw_ostream::write(&v244, "^bb", 3uLL);
          }

          llvm::raw_ostream::operator<<(&v244, v81);
          llvm::raw_ostream::~raw_ostream(&v244);
          if (v224 >= 0)
          {
            v94 = __p;
          }

          else
          {
            v94 = __p[0];
          }

          if (v224 >= 0)
          {
            v95 = SHIBYTE(v224);
          }

          else
          {
            v95 = __p[1];
          }

          if (v95)
          {
            *(a1 + 512) += v95;
            v96 = *(a1 + 432);
            if (v96 && &v96[v95] <= *(a1 + 440))
            {
              *(v212 + 248) = &v96[v95];
            }

            else
            {
              v129 = v94;
              v130 = sub_10003A984(v212 + 248, v95, v95, 0);
              v94 = v129;
              a1 = v210;
              v96 = v130;
            }

            memmove(v96, v94, v95);
            *(v86 + 16) = v96;
            *(v86 + 24) = v95;
            if ((SHIBYTE(v224) & 0x80000000) == 0)
            {
              goto LABEL_147;
            }
          }

          else
          {
            *(v86 + 16) = 0;
            *(v86 + 24) = 0;
            if ((SHIBYTE(v224) & 0x80000000) == 0)
            {
              goto LABEL_147;
            }
          }

          operator delete(__p[0]);
LABEL_147:
          v214 = v81;
          *(v86 + 8) = v81;
          isEntryBlock = mlir::Block::isEntryBlock(v82);
          v98 = isEntryBlock;
          v99 = 3;
          if (!isEntryBlock)
          {
            v99 = 0;
          }

          *&v244 = &v246;
          v245 = 32;
          if (isEntryBlock)
          {
            qmemcpy(&v246, "arg", 3);
          }

          *(&v244 + 1) = v99;
          LODWORD(__p[1]) = 2;
          v227 = 0;
          v228 = 1;
          v225 = 0;
          v226 = 0;
          v224 = 0;
          __p[0] = off_1002B4638;
          v229 = &v244;
          llvm::raw_ostream::SetBufferAndMode(__p, 0, 0, 0);
          v101 = *(v82 + 6);
          v100 = *(v82 + 7);
          while (v101 != v100)
          {
            v108 = *v101;
            v109 = *(a1 + 296);
            if (v109)
            {
              v102 = *(a1 + 280);
              v103 = 0x9DDFEA08EB382D69 * ((8 * *v101 - 0xAE502812AA7333) ^ HIDWORD(*v101));
              v104 = 0x9DDFEA08EB382D69 * (HIDWORD(v108) ^ (v103 >> 47) ^ v103);
              v105 = v109 - 1;
              v106 = (-348639895 * ((v104 >> 47) ^ v104)) & v105;
              v107 = *(v102 + 16 * v106);
              if (v107 == v108)
              {
                goto LABEL_153;
              }

              v114 = 1;
              while (v107 != -4096)
              {
                v115 = v106 + v114++;
                v106 = v115 & v105;
                v107 = *(v102 + 16 * v106);
                if (v107 == v108)
                {
                  goto LABEL_153;
                }
              }
            }

            if (v98)
            {
              v110 = *(&v244 + 1);
              if (*(&v244 + 1) != 3)
              {
                if (*(&v244 + 1) <= 3uLL)
                {
                  if (v245 > 2 || (llvm::SmallVectorBase<unsigned long long>::grow_pod(&v244, &v246, 3uLL, 1), v110 = *(&v244 + 1), *(&v244 + 1) != 3))
                  {
                    bzero((v244 + v110), 3 - v110);
                  }
                }

                *(&v244 + 1) = 3;
              }

              v111 = *(a1 + 532);
              *(a1 + 532) = v111 + 1;
              llvm::raw_ostream::operator<<(__p, v111);
            }

            Value = *v229;
            v113 = *(v229 + 1);
            if ((*(a1 + 584) & 0x100) != 0)
            {
              v231 = v108;
              Loc = mlir::Value::getLoc(&v231);
              *&v220 = 0;
              Name = &v220;
              mlir::LocationAttr::walk(&Loc, sub_1000C7D18, &Name);
              if (v220)
              {
                Name = mlir::NameLoc::getName(&v220);
                Value = mlir::StringAttr::getValue(&Name);
                v113 = v116;
              }
            }

            sub_1000C7150(v219, v108, Value, v113);
LABEL_153:
            ++v101;
          }

          for (i = *(v82 + 5); i != (v82 + 32); i = i[1])
          {
            ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(i);
            sub_1000C6DE4(v219, ValuePtr);
          }

          llvm::raw_ostream::~raw_ostream(__p);
          if (v244 != &v246)
          {
            free(v244);
          }

          v81 = v214 + 1;
          v80 = *(v216 + 1);
          a1 = v210;
          if (v80 == v211)
          {
            goto LABEL_200;
          }
        }

        v92 = (4 * *(a1 + 384) + 4);
LABEL_181:
        v83 *= 2;
LABEL_182:
        sub_1000C7980(v212 + 192, v83);
        v120 = *(a1 + 392);
        if (v120)
        {
          v121 = *(a1 + 376);
          v122 = v120 - 1;
          v123 = v122 & ((v82 >> 4) ^ (v82 >> 9));
          v86 = v121 + 32 * v123;
          v124 = *v86;
          if (*v86 != v82)
          {
            v125 = 0;
            v126 = 1;
            while (v124 != -4096)
            {
              if (v125)
              {
                v127 = 0;
              }

              else
              {
                v127 = v124 == -8192;
              }

              if (v127)
              {
                v125 = v86;
              }

              v128 = v123 + v126++;
              v123 = v128 & v122;
              v86 = v121 + 32 * v123;
              v124 = *v86;
              a1 = v210;
              if (*v86 == v82)
              {
                goto LABEL_195;
              }
            }

            if (v125)
            {
              v86 = v125;
            }

            a1 = v210;
          }
        }

        else
        {
          v86 = 0;
        }

LABEL_195:
        ++*(a1 + 384);
        if (*v86 == -4096)
        {
          goto LABEL_132;
        }

LABEL_131:
        --*(a1 + 388);
        goto LABEL_132;
      }

LABEL_200:
      mlir::Region::OpIterator::OpIterator(__p, v211, 0);
      mlir::Region::OpIterator::OpIterator(&v246, v211, 1);
      v131 = v224;
      v245 = v224;
      v244 = *__p;
      v220 = *__p;
      v221 = v224;
      v132 = v248;
      while (v131 != v132)
      {
        v133 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v131);
        v134 = *(v133 + 44);
        v135 = v134 & 0x7FFFFF;
        if ((v134 & 0x7FFFFF) != 0)
        {
          v136 = (v133 + 16 * ((v134 >> 23) & 1) + ((v134 >> 21) & 0x7F8) + 32 * *(v133 + 40) + 64);
          v137 = v234;
          v138 = 24 * v135;
          do
          {
            __p[0] = v136;
            __p[1] = *(a1 + 528);
            LODWORD(v224) = *(a1 + 536);
            v225 = v77;
            v139 = v233;
            if (v137 >= HIDWORD(v234))
            {
              if (v233 <= __p && v233 + 32 * v137 > __p)
              {
                v143 = __p - v233;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v233, v235, v137 + 1, 32);
                v139 = v233;
                v140 = (v233 + v143);
                a1 = v210;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v233, v235, v137 + 1, 32);
                v140 = __p;
                v139 = v233;
              }
            }

            else
            {
              v140 = __p;
            }

            v141 = &v139[32 * v234];
            v142 = *(v140 + 1);
            *v141 = *v140;
            *(v141 + 1) = v142;
            v137 = v234 + 1;
            LODWORD(v234) = v234 + 1;
            v136 += 24;
            v138 -= 24;
          }

          while (v138);
        }

        mlir::Region::OpIterator::operator++(&v220);
        v131 = v221;
      }

      v25 = v234;
      if (!v234)
      {
        goto LABEL_215;
      }
    }

    v29 = *(v26 - 4);
    v27 = *(v26 - 1);
    *(a1 + 528) = *(v26 - 3);
    *(a1 + 536) = v29;
    LODWORD(v234) = v25 - 1;
    v28 = *(v212 + 240);
    if (v28 == v27)
    {
      goto LABEL_104;
    }

LABEL_19:
    v215 = v27;
LABEL_21:
    *(*v28 + 24) = v28[1];
    while (1)
    {
      v35 = v28[2];
      if (!v35)
      {
        v28 = *(v212 + 240);
        if (v28 == v215)
        {
          goto LABEL_104;
        }

        goto LABEL_21;
      }

      v36 = *v28;
      v37 = **v28;
      v38 = *(*v28 + 16);
      if (*(v35 + 8))
      {
        if (!v38)
        {
          v51 = 0;
          v31 = 0;
          goto LABEL_43;
        }

        HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v35 + 16), *(v35 + 24));
        v39 = v38 - 1;
        v41 = *(v35 + 16);
        v40 = *(v35 + 24);
        if (v40)
        {
          if (v41 == -2)
          {
            for (j = 1; ; ++j)
            {
              v30 = HashValue & v39;
              v31 = (v37 + 24 * (HashValue & v39));
              v32 = *v31;
              if (*v31 == -2)
              {
                break;
              }

              if (v32 == -1)
              {
                goto LABEL_62;
              }

              if (v40 == v31[1] && !memcmp(0xFFFFFFFFFFFFFFFELL, v32, v40))
              {
                break;
              }

              HashValue = j + v30;
            }

            goto LABEL_48;
          }

          v61 = 0;
          v62 = 1;
          v63 = HashValue & v39;
          v31 = (v37 + 24 * (HashValue & v39));
          v64 = *v31;
          if (*v31 == -2)
          {
            goto LABEL_74;
          }

          while (v64 != -1)
          {
            if (v40 == v31[1])
            {
              v213 = v62;
              v206 = v63;
              v65 = memcmp(v41, v64, v40);
              v63 = v206;
              v62 = v213;
              if (!v65)
              {
                goto LABEL_48;
              }
            }

            do
            {
LABEL_74:
              if (v61)
              {
                v66 = 0;
              }

              else
              {
                v66 = v64 + 2 == 0;
              }

              if (v66)
              {
                v61 = v31;
              }

              v67 = v62 + v63;
              ++v62;
              v63 = v67 & v39;
              v31 = (v37 + 24 * (v67 & v39));
              v64 = *v31;
            }

            while (*v31 == -2);
          }

LABEL_63:
          if (v41 != -1)
          {
            if (v61)
            {
              v31 = v61;
            }

            v51 = *(v36 + 16);
LABEL_43:
            *&v244 = v31;
            v52 = *(v36 + 8);
            if (4 * v52 + 4 >= 3 * v51)
            {
              v51 *= 2;
            }

            else if (v51 + ~v52 - *(v36 + 12) > v51 >> 3)
            {
              *(v36 + 8) = v52 + 1;
              if (*v31 != -1)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            sub_1000C7E30(v36, v51);
            sub_100095A6C(v36, v35 + 16, &v244);
            v31 = v244;
            ++*(v36 + 8);
            if (*v31 != -1)
            {
LABEL_46:
              --*(v36 + 12);
            }

LABEL_47:
            *v31 = *(v35 + 16);
            v31[2] = 0;
          }
        }

        else
        {
          if (v41 != -2)
          {
            v61 = 0;
            v72 = 1;
            v73 = HashValue & v39;
            v31 = (v37 + 24 * (HashValue & v39));
            v74 = *v31;
            if (*v31 == -2)
            {
              goto LABEL_90;
            }

            while (v74 != -1)
            {
              if (!v31[1])
              {
                goto LABEL_48;
              }

              do
              {
LABEL_90:
                if (v61)
                {
                  v75 = 0;
                }

                else
                {
                  v75 = v74 + 2 == 0;
                }

                if (v75)
                {
                  v61 = v31;
                }

                v76 = v72 + v73;
                ++v72;
                v73 = v76 & v39;
                v31 = (v37 + 24 * (v76 & v39));
                v74 = *v31;
              }

              while (*v31 == -2);
            }

            goto LABEL_63;
          }

          v53 = 1;
          v54 = HashValue & v39;
          v31 = (v37 + 24 * (HashValue & v39));
          v55 = *v31;
          if (*v31 != -2)
          {
            while (v55 != -1)
            {
              if (v31[1])
              {
                v56 = v53 + v54;
                ++v53;
                v54 = v56 & v39;
                v31 = (v37 + 24 * (v56 & v39));
                v55 = *v31;
                if (*v31 != -2)
                {
                  continue;
                }
              }

              goto LABEL_48;
            }

LABEL_62:
            v61 = 0;
            goto LABEL_63;
          }
        }

LABEL_48:
        v31[2] = *(v35 + 8);
        goto LABEL_49;
      }

      if (!v38)
      {
        goto LABEL_49;
      }

      v42 = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v35 + 16), *(v35 + 24));
      v43 = v38 - 1;
      v44 = *(v35 + 16);
      v45 = *(v35 + 24);
      if (v45)
      {
        if (v44 != -2)
        {
          v68 = 1;
          v69 = v42 & v43;
          v48 = v37 + 24 * (v42 & v43);
          v70 = *v48;
          if (*v48 == -2)
          {
            goto LABEL_85;
          }

          while (1)
          {
            if (v70 == -1)
            {
              goto LABEL_102;
            }

            if (v45 == *(v48 + 8) && !memcmp(v44, v70, v45))
            {
              goto LABEL_103;
            }

            do
            {
LABEL_85:
              v71 = v68 + v69;
              ++v68;
              v69 = v71 & v43;
              v48 = v37 + 24 * (v71 & v43);
              v70 = *v48;
            }

            while (*v48 == -2);
          }
        }

        v46 = 1;
        v47 = v42 & v43;
        v48 = v37 + 24 * (v42 & v43);
        v49 = *v48;
        if (*v48 != -2)
        {
          while (v49 != -1)
          {
            if (v45 != *(v48 + 8) || memcmp(0xFFFFFFFFFFFFFFFELL, v49, v45))
            {
              v50 = v46 + v47;
              ++v46;
              v47 = v50 & v43;
              v48 = v37 + 24 * (v50 & v43);
              v49 = *v48;
              if (*v48 != -2)
              {
                continue;
              }
            }

            goto LABEL_103;
          }

          goto LABEL_102;
        }
      }

      else
      {
        v57 = 1;
        if (v44 == -2)
        {
          v58 = v42 & v43;
          v48 = v37 + 24 * (v42 & v43);
          v59 = *v48;
          if (*v48 != -2)
          {
            while (v59 != -1)
            {
              if (*(v48 + 8))
              {
                v60 = v57 + v58;
                ++v57;
                v58 = v60 & v43;
                v48 = v37 + 24 * (v60 & v43);
                v59 = *v48;
                if (*v48 != -2)
                {
                  continue;
                }
              }

              goto LABEL_103;
            }

LABEL_102:
            if (v44 != -1)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (1)
          {
            v48 = v37 + 24 * (v42 & v43);
            if (*v48 != -2)
            {
              if (*v48 == -1)
              {
                goto LABEL_102;
              }

              if (!*(v48 + 8))
              {
                break;
              }
            }

            v42 = v57 + (v42 & v43);
            ++v57;
          }
        }
      }

LABEL_103:
      *v48 = xmmword_10028FCA0;
      *(v36 + 8) = vadd_s32(*(v36 + 8), 0x1FFFFFFFFLL);
LABEL_49:
      v28[2] = *v35;
      llvm::deallocate_buffer(v35, 0x28, 8uLL);
    }
  }

LABEL_215:
  v144 = *(v212 + 240);
  if (v144)
  {
LABEL_218:
    *(*v144 + 24) = v144[1];
    while (1)
    {
      v150 = v144[2];
      if (!v150)
      {
        v144 = *(v212 + 240);
        if (!v144)
        {
          break;
        }

        goto LABEL_218;
      }

      v151 = *v144;
      v152 = **v144;
      v153 = *(*v144 + 16);
      if (*(v150 + 8))
      {
        if (!v153)
        {
          v166 = 0;
          v146 = 0;
          goto LABEL_240;
        }

        v148 = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v150 + 16), *(v150 + 24));
        v154 = v153 - 1;
        v156 = *(v150 + 16);
        v155 = *(v150 + 24);
        if (v155)
        {
          if (v156 == -2)
          {
            for (k = 1; ; ++k)
            {
              v145 = v148 & v154;
              v146 = (v152 + 24 * (v148 & v154));
              v147 = *v146;
              if (*v146 == -2)
              {
                break;
              }

              if (v147 == -1)
              {
                goto LABEL_259;
              }

              if (v155 == v146[1] && !memcmp(0xFFFFFFFFFFFFFFFELL, v147, v155))
              {
                break;
              }

              v148 = k + v145;
            }

            goto LABEL_245;
          }

          v176 = 0;
          v177 = 1;
          v178 = v148 & v154;
          v146 = (v152 + 24 * (v148 & v154));
          v179 = *v146;
          if (*v146 == -2)
          {
            goto LABEL_271;
          }

          while (v179 != -1)
          {
            if (v155 == v146[1])
            {
              v218 = v177;
              v217 = v178;
              v180 = memcmp(v156, v179, v155);
              v178 = v217;
              v177 = v218;
              if (!v180)
              {
                goto LABEL_245;
              }
            }

            do
            {
LABEL_271:
              if (v176)
              {
                v181 = 0;
              }

              else
              {
                v181 = v179 + 2 == 0;
              }

              if (v181)
              {
                v176 = v146;
              }

              v182 = v177 + v178;
              ++v177;
              v178 = v182 & v154;
              v146 = (v152 + 24 * (v182 & v154));
              v179 = *v146;
            }

            while (*v146 == -2);
          }

LABEL_260:
          if (v156 != -1)
          {
            if (v176)
            {
              v146 = v176;
            }

            v166 = *(v151 + 16);
LABEL_240:
            *&v244 = v146;
            v167 = *(v151 + 8);
            if (4 * v167 + 4 >= 3 * v166)
            {
              v166 *= 2;
            }

            else if (v166 + ~v167 - *(v151 + 12) > v166 >> 3)
            {
              *(v151 + 8) = v167 + 1;
              if (*v146 != -1)
              {
                goto LABEL_243;
              }

              goto LABEL_244;
            }

            sub_1000C7E30(v151, v166);
            sub_100095A6C(v151, v150 + 16, &v244);
            v146 = v244;
            ++*(v151 + 8);
            if (*v146 != -1)
            {
LABEL_243:
              --*(v151 + 12);
            }

LABEL_244:
            *v146 = *(v150 + 16);
            v146[2] = 0;
          }
        }

        else
        {
          if (v156 != -2)
          {
            v176 = 0;
            v187 = 1;
            v188 = v148 & v154;
            v146 = (v152 + 24 * (v148 & v154));
            v189 = *v146;
            if (*v146 == -2)
            {
              goto LABEL_287;
            }

            while (v189 != -1)
            {
              if (!v146[1])
              {
                goto LABEL_245;
              }

              do
              {
LABEL_287:
                if (v176)
                {
                  v190 = 0;
                }

                else
                {
                  v190 = v189 + 2 == 0;
                }

                if (v190)
                {
                  v176 = v146;
                }

                v191 = v187 + v188;
                ++v187;
                v188 = v191 & v154;
                v146 = (v152 + 24 * (v191 & v154));
                v189 = *v146;
              }

              while (*v146 == -2);
            }

            goto LABEL_260;
          }

          v168 = 1;
          v169 = v148 & v154;
          v146 = (v152 + 24 * (v148 & v154));
          v170 = *v146;
          if (*v146 != -2)
          {
            while (v170 != -1)
            {
              if (v146[1])
              {
                v171 = v168 + v169;
                ++v168;
                v169 = v171 & v154;
                v146 = (v152 + 24 * (v171 & v154));
                v170 = *v146;
                if (*v146 != -2)
                {
                  continue;
                }
              }

              goto LABEL_245;
            }

LABEL_259:
            v176 = 0;
            goto LABEL_260;
          }
        }

LABEL_245:
        v146[2] = *(v150 + 8);
        goto LABEL_246;
      }

      if (!v153)
      {
        goto LABEL_246;
      }

      v157 = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v150 + 16), *(v150 + 24));
      v158 = v153 - 1;
      v159 = *(v150 + 16);
      v160 = *(v150 + 24);
      if (v160)
      {
        if (v159 != -2)
        {
          v183 = 1;
          v184 = v157 & v158;
          v163 = v152 + 24 * (v157 & v158);
          v185 = *v163;
          if (*v163 == -2)
          {
            goto LABEL_282;
          }

          while (1)
          {
            if (v185 == -1)
            {
              goto LABEL_299;
            }

            if (v160 == *(v163 + 8) && !memcmp(v159, v185, v160))
            {
              goto LABEL_300;
            }

            do
            {
LABEL_282:
              v186 = v183 + v184;
              ++v183;
              v184 = v186 & v158;
              v163 = v152 + 24 * (v186 & v158);
              v185 = *v163;
            }

            while (*v163 == -2);
          }
        }

        v161 = 1;
        v162 = v157 & v158;
        v163 = v152 + 24 * (v157 & v158);
        v164 = *v163;
        if (*v163 != -2)
        {
          while (v164 != -1)
          {
            if (v160 != *(v163 + 8) || memcmp(0xFFFFFFFFFFFFFFFELL, v164, v160))
            {
              v165 = v161 + v162;
              ++v161;
              v162 = v165 & v158;
              v163 = v152 + 24 * (v165 & v158);
              v164 = *v163;
              if (*v163 != -2)
              {
                continue;
              }
            }

            goto LABEL_300;
          }

          goto LABEL_299;
        }
      }

      else
      {
        v172 = 1;
        if (v159 == -2)
        {
          v173 = v157 & v158;
          v163 = v152 + 24 * (v157 & v158);
          v174 = *v163;
          if (*v163 != -2)
          {
            while (v174 != -1)
            {
              if (*(v163 + 8))
              {
                v175 = v172 + v173;
                ++v172;
                v173 = v175 & v158;
                v163 = v152 + 24 * (v175 & v158);
                v174 = *v163;
                if (*v163 != -2)
                {
                  continue;
                }
              }

              goto LABEL_300;
            }

LABEL_299:
            if (v159 != -1)
            {
              goto LABEL_246;
            }
          }
        }

        else
        {
          while (1)
          {
            v163 = v152 + 24 * (v157 & v158);
            if (*v163 != -2)
            {
              if (*v163 == -1)
              {
                goto LABEL_299;
              }

              if (!*(v163 + 8))
              {
                break;
              }
            }

            v157 = v172 + (v157 & v158);
            ++v172;
          }
        }
      }

LABEL_300:
      *v163 = xmmword_10028FCA0;
      *(v151 + 8) = vadd_s32(*(v151 + 8), 0x1FFFFFFFFLL);
LABEL_246:
      v144[2] = *v150;
      llvm::deallocate_buffer(v150, 0x28, 8uLL);
    }
  }

  if (v233 != v235)
  {
    free(v233);
  }

  v192 = v210;
  if (v239)
  {
    v193 = v238;
    v194 = 8 * v239;
    v195 = v238;
    do
    {
      v196 = ((v193 - v238) >> 10) & 0x1FFFFFF;
      if (v196 >= 0x1E)
      {
        LOBYTE(v196) = 30;
      }

      v197 = *v195++;
      llvm::deallocate_buffer(v197, (4096 << v196), 8uLL);
      v193 += 8;
      v194 -= 8;
    }

    while (v194);
  }

  v198 = v241;
  if (v242)
  {
    v199 = (v241 + 16 * v242);
    v200 = a4;
    do
    {
      v201 = *v198;
      v202 = v198[1];
      v198 += 2;
      llvm::deallocate_buffer(v201, v202, 8uLL);
    }

    while (v198 != v199);
    v198 = v241;
    v192 = v210;
    if (v241 != &v242 + 8)
    {
      goto LABEL_312;
    }
  }

  else
  {
    v200 = a4;
    if (v241 != &v242 + 8)
    {
LABEL_312:
      free(v198);
    }
  }

  if (v238 != v240)
  {
    free(v238);
  }

  *(v192 + 536) = 0;
  *(v192 + 528) = 0;
  *(v192 + 592) = 0;
  *(v192 + 616) = 0;
  *(v192 + 600) = 0u;
  v203 = *v209;
  v204 = v209[2];
  *(v192 + 640) = v209[1];
  *(v192 + 656) = v204;
  *(v192 + 624) = v203;
  *(v192 + 672) = v200;
  *(v192 + 680) = 0u;
  *(v192 + 696) = 0;
  *(v192 + 704) = v192 + 720;
  *(v192 + 712) = 0;
  return v192;
}

void *sub_1000C6CF4(uint64_t a1, mlir::MLIRContext *a2)
{
  if ((atomic_load_explicit(&qword_1002C04D8, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v5 = a2;
    sub_1002791C4();
    a2 = v5;
    a1 = v7;
    v2 = qword_1002C04D0;
    if (atomic_load_explicit(&qword_1002C04F0, memory_order_acquire))
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = a1;
    v4 = v2;
    v6 = a2;
    sub_100279218();
    v2 = v4;
    a2 = v6;
    a1 = v8;
    goto LABEL_3;
  }

  v2 = qword_1002C04D0;
  if ((atomic_load_explicit(&qword_1002C04F0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(a1, a2, v2);
  *result = &off_1002B6270;
  return result;
}

void sub_1000C6DAC(mlir::detail::DialectInterfaceCollectionBase *a1)
{
  mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(a1);

  operator delete();
}

void sub_1000C6DE4(uint64_t a1, uint64_t a2)
{
  __base = &v40;
  v40 = 0;
  __nel = 0x200000001;
  v36[0] = a1;
  v36[1] = &__base;
  v35 = a1;
  if ((*(a1 + 304) & 4) == 0)
  {
    if (sub_1000BA82C(a2))
    {
      v4 = sub_1000BA82C(a2);
      v5 = v4;
      if (a2)
      {
        (*(v4 + 16))(v4, a2, sub_1000C764C, &v35);
        (*v5)(v5, a2, sub_1000C7B98, v36);
      }
    }
  }

  if (!*(a2 + 36))
  {
    if ((*(a1 + 304) & 0x40) != 0)
    {
      Name = a2;
      sub_1000A7950(a1 + 48, &Name, (a1 + 248), v33);
      if (v34 == 1)
      {
        ++*(a1 + 248);
      }
    }

    goto LABEL_37;
  }

  v6 = a2 - 16;
  v32 = a2 - 16;
  if ((*(a1 + 304) & 0x100) != 0)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
LABEL_17:
      Loc = mlir::Value::getLoc(&v32);
      v33[0] = 0;
      Name = v33;
      mlir::LocationAttr::walk(&Loc, sub_1000C7D18, &Name);
      if (v33[0])
      {
        v15 = v32;
        Name = mlir::NameLoc::getName(v33);
        Value = mlir::StringAttr::getValue(&Name);
        sub_1000C7150(a1, v15, Value, v17);
      }

      goto LABEL_19;
    }

    v8 = 0x9DDFEA08EB382D69 * ((((8 * v6) & 0x7FFFFFFC0) - 0xAE502812AA7333) ^ HIDWORD(v6));
    v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v8 >> 47) ^ v8);
    v10 = v7 - 1;
    v11 = v10 & (-348639895 * ((v9 >> 47) ^ v9));
    v12 = *(*a1 + 16 * v11);
    if (v6 != v12)
    {
      v13 = 1;
      while (v12 != -4096)
      {
        v14 = v11 + v13++;
        v11 = v14 & v10;
        v12 = *(*a1 + 16 * v11);
        if (v6 == v12)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_17;
    }
  }

LABEL_19:
  sub_10008FFCC(a1, &v32, (a1 + 248), v33);
  if (v34 == 1)
  {
    ++*(a1 + 248);
  }

  if (__nel)
  {
    if (__nel == 1)
    {
      goto LABEL_37;
    }

    qsort(__base, __nel, 4uLL, sub_1000C8060);
  }

  v20 = *(a1 + 72);
  v19 = a1 + 72;
  v18 = v20;
  v33[0] = a2;
  v21 = *(v19 + 16);
  if (v21)
  {
    v22 = v21 - 1;
    v23 = v22 & ((a2 >> 4) ^ (a2 >> 9));
    v24 = (v18 + 32 * v23);
    v25 = *v24;
    if (*v24 == a2)
    {
      goto LABEL_37;
    }

    v26 = 0;
    v27 = 1;
    while (v25 != -4096)
    {
      if (v26)
      {
        v28 = 0;
      }

      else
      {
        v28 = v25 == -8192;
      }

      if (v28)
      {
        v26 = v24;
      }

      v29 = v23 + v27++;
      v23 = v29 & v22;
      v24 = (v18 + 32 * v23);
      v25 = *v24;
      if (*v24 == a2)
      {
        goto LABEL_37;
      }
    }

    if (v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v24;
    }
  }

  else
  {
    v30 = 0;
  }

  sub_1000C807C(v19, v30, v33, &__base);
LABEL_37:
  if (__base != &v40)
  {
    free(__base);
  }
}

uint64_t sub_1000C7150(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v40 = a2;
  if (!a4)
  {
    v11 = *(a1 + 248);
    *(a1 + 248) = v11 + 1;
    result = sub_10008A43C(a1, &v40);
    *result = v11;
    return result;
  }

  *sub_10008A43C(a1, &v40) = -1;
  v48 = v50;
  v49 = xmmword_10028EDC0;
  __src[0] = sub_1000BC574(a3, a4, &v48, "$._-", 4uLL, 1);
  __src[1] = v7;
  if (!sub_10007EDD8((a1 + 120), __src))
  {
    v13 = __src[1];
    if (__src[1])
    {
      *(a1 + 232) += __src[1];
      v14 = *(a1 + 152);
      if (v14 && &v14[v13] <= *(a1 + 160))
      {
        *(a1 + 152) = &v14[v13];
LABEL_11:
        memmove(v14, __src[0], v13);
        v15 = __src[1];
LABEL_58:
        __src[0] = v14;
        __src[1] = v15;
        goto LABEL_59;
      }

      v14 = sub_10003A984(a1 + 152, v13, v13, 0);
      v13 = __src[1];
      if (__src[1])
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
    goto LABEL_58;
  }

  v9 = __src[0];
  v8 = __src[1];
  v45 = v47;
  v46 = xmmword_10028F190;
  if (__src[1] < 0x41)
  {
    v10 = 0;
    if (!__src[1])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v45, v47, __src[1], 1);
  v10 = v46;
  if (v8)
  {
LABEL_13:
    memcpy(v45 + v10, v9, v8);
    v10 = v46;
  }

LABEL_14:
  v16 = &v8[v10];
  *&v46 = v16;
  if ((v16 + 1) > *(&v46 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v45, v47, (v16 + 1), 1);
    v16 = v46;
  }

  v16[v45] = 95;
  *&v46 = v46 + 1;
  while (1)
  {
    v17 = *(a1 + 256);
    *(a1 + 256) = v17 + 1;
    if (v17)
    {
      v18 = 20;
      do
      {
        v50[v18-- + 19] = (v17 % 0xA) | 0x30;
        v19 = v17 > 9;
        v17 /= 0xAuLL;
      }

      while (v19);
      v20 = v18 + 1;
      v21 = 20 - v18;
      if ((20 - v18) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10002BC08();
      }
    }

    else
    {
      v50[39] = 48;
      v20 = 20;
      v21 = 1;
    }

    if (v21 > 0x16)
    {
      operator new();
    }

    v43 = v21;
    if (v20 != 21)
    {
      memcpy(&__dst, &v50[v20 + 19], v21);
    }

    *(&__dst + v21) = 0;
    v22 = v43;
    v23 = __dst;
    if (v43 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if (v43 >= 0)
    {
      v25 = v43;
    }

    else
    {
      v25 = v42;
    }

    v26 = v46;
    if (*(&v46 + 1) < v46 + v25)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v45, v47, v46 + v25, 1);
      v26 = v46;
    }

    if (v25)
    {
      memcpy(v45 + v26, p_dst, v25);
      v26 = v46;
    }

    v27 = v26 + v25;
    *&v46 = v27;
    if (v22 < 0)
    {
      operator delete(v23);
      v27 = v46;
    }

    __dst = v45;
    v42 = v27;
    if (!sub_10007EDD8((a1 + 120), &__dst))
    {
      break;
    }

    v28 = __src[1] + 1;
    v29 = v46;
    if (v46 != __src[1] + 1)
    {
      if (v46 <= __src[1] + 1)
      {
        if (*(&v46 + 1) < v28)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v45, v47, __src[1] + 1, 1);
          v29 = v46;
        }

        if (v28 != v29)
        {
          bzero(&v29[v45], v28 - v29);
        }
      }

      *&v46 = v28;
    }
  }

  v30 = v45;
  v31 = v46;
  if (v46)
  {
    *(a1 + 232) += v46;
    v32 = *(a1 + 152);
    if (v32 && &v32[v31] <= *(a1 + 160))
    {
      *(a1 + 152) = &v32[v31];
    }

    else
    {
      v32 = sub_10003A984(a1 + 152, v31, v31, 0);
    }

    memmove(v32, v30, v31);
    v30 = v45;
    __src[0] = v32;
    __src[1] = v31;
    if (v45 == v47)
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

  __src[0] = 0;
  __src[1] = 0;
  if (v45 != v47)
  {
LABEL_55:
    free(v30);
  }

LABEL_59:
  v33 = *(a1 + 144);
  v34 = sub_1000C7D4C(a1 + 120, __src);
  v35 = *(v33 + 16);
  v36 = *v34;
  buffer = llvm::allocate_buffer(0x28, 8uLL);
  buffer[1] = *__src;
  *(buffer + 32) = 0;
  *buffer = v35;
  *(buffer + 1) = v36;
  *v34 = buffer;
  *(v33 + 16) = buffer;
  v38 = __src[0];
  v39 = __src[1];
  if (v48 != v50)
  {
    free(v48);
  }

  result = sub_1000BAA10(a1 + 24, &v40);
  *result = v38;
  *(result + 8) = v39;
  return result;
}

void sub_1000C764C(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = *a1;
  v29 = v31;
  v30 = xmmword_10028FCB0;
  v31[0] = 94;
  v6 = sub_1000BC574(a3, a4, &v29, "$._-", 4uLL, 1);
  v7 = v6;
  v9 = v8;
  v10 = v29;
  if (v29 == v6)
  {
    v10 = v6;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = v30;
    if (*(&v30 + 1) < v30 + v9)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v29, v31, v30 + v9, 1);
      v10 = v29;
      v11 = v30;
    }

    if (v9)
    {
      memcpy(&v10[v11], v7, v9);
      v10 = v29;
      v11 = v30;
    }

    v9 += v11;
    *&v30 = v9;
    if (v9)
    {
LABEL_7:
      *(v5 + 232) += v9;
      v12 = *(v5 + 152);
      v13 = &v12[v9];
      if (v12)
      {
        v14 = v13 > *(v5 + 160);
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v26 = v10;
        v27 = sub_10003A984(v5 + 152, v9, v9, 0);
        v10 = v26;
        v12 = v27;
      }

      else
      {
        *(v5 + 152) = v13;
      }

      memmove(v12, v10, v9);
      v15 = v5 + 96;
      v16 = *(v5 + 96);
      v17 = *(v5 + 112);
      if (v17)
      {
        goto LABEL_13;
      }

LABEL_25:
      v19 = 0;
      goto LABEL_26;
    }
  }

  v12 = 0;
  v15 = v5 + 96;
  v16 = *(v5 + 96);
  v17 = *(v5 + 112);
  if (!v17)
  {
    goto LABEL_25;
  }

LABEL_13:
  v18 = (v17 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v19 = (v16 + 32 * v18);
  v20 = *v19;
  if (*v19 == a2)
  {
    goto LABEL_31;
  }

  v21 = 0;
  v22 = 1;
  while (v20 != -4096)
  {
    if (v21)
    {
      v23 = 0;
    }

    else
    {
      v23 = v20 == -8192;
    }

    if (v23)
    {
      v21 = v19;
    }

    v24 = v18 + v22++;
    v18 = v24 & (v17 - 1);
    v19 = (v16 + 32 * v18);
    v20 = *v19;
    if (*v19 == a2)
    {
      goto LABEL_31;
    }
  }

  if (v21)
  {
    v19 = v21;
  }

LABEL_26:
  v28 = v19;
  v25 = *(v5 + 104);
  if (4 * v25 + 4 >= 3 * v17)
  {
    v17 *= 2;
LABEL_39:
    sub_1000C7980(v15, v17);
    sub_1000C78FC(*(v5 + 96), *(v5 + 112), a2, &v28);
    v19 = v28;
    ++*(v5 + 104);
    if (*v19 == -4096)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v17 + ~v25 - *(v5 + 108) <= v17 >> 3)
  {
    goto LABEL_39;
  }

  *(v5 + 104) = v25 + 1;
  if (*v19 != -4096)
  {
LABEL_29:
    --*(v5 + 108);
  }

LABEL_30:
  *v19 = a2;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = 0;
LABEL_31:
  *(v19 + 2) = -1;
  v19[2] = v12;
  v19[3] = v9;
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t sub_1000C78FC(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (result + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
LABEL_3:
      *a4 = v5;
    }

    else
    {
      v7 = 0;
      v8 = 1;
      while (v6 != -4096)
      {
        if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = v6 == -8192;
        }

        if (v9)
        {
          v7 = v5;
        }

        v10 = v4 + v8++;
        v4 = v10 & (a2 - 1);
        v5 = (result + 32 * v4);
        v6 = *v5;
        if (*v5 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v7)
      {
        v5 = v7;
      }

      *a4 = v5;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void sub_1000C7980(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((32 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = buffer + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *v13 = -4096;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &buffer[4 * v11];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = *a1 + 32 * v26;
          v27 = *v22;
          if (*v22 != v24)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = *a1 + 32 * v26;
              v27 = *v22;
              if (*v22 == v24)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          *v22 = v24;
          v23 = *(v16 + 8);
          *(v22 + 24) = *(v16 + 3);
          *(v22 + 8) = v23;
          ++*(a1 + 8);
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v17 = *(a1 + 16);
    if (v17)
    {
      if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_19;
      }

      v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
      v19 = buffer + 4;
      v20 = v18 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v19 - 4) = -4096;
        *v19 = -4096;
        v19 += 8;
        v20 -= 2;
      }

      while (v20);
      if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_19:
        v21 = &buffer[4 * v17];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v21);
      }
    }
  }
}

void sub_1000C7B98(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *a1;
  if ((*(v6 + 304) & 0x100) != 0)
  {
    v10 = v6;
    v11 = sub_1000C7C80(a2, a3);
    sub_1000C7150(v10, a2, v11, v12);
    v7 = *(a2 + 8);
    if (!a2)
    {
LABEL_7:
      v9 = v7 & 7;
      if ((v7 & 7) == 0)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else
  {
    sub_1000C7150(v6, a2, a3, a4);
    v7 = *(a2 + 8);
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if ((v7 & 7) != 6)
  {
    goto LABEL_7;
  }

  v8 = *(a2 + 16);
  v9 = v8 + 6;
  if (v8 == -6)
  {
    return;
  }

LABEL_8:
  v13 = a1[1];
  v14 = *(v13 + 8);
  if (v14 >= *(v13 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v13 + 16), v14 + 1, 4);
    LODWORD(v14) = *(v13 + 8);
  }

  *(*v13 + 4 * v14) = v9;
  ++*(v13 + 8);
}

uint64_t sub_1000C7C80(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  Loc = mlir::Value::getLoc(&v6);
  Name = &v8;
  v8 = 0;
  result = mlir::LocationAttr::walk(&Loc, sub_1000C7D18, &Name);
  v4 = v8;
  if (v8)
  {
    Name = mlir::NameLoc::getName(&v8);
    result = mlir::StringAttr::getValue(&Name);
  }

  if (!v4)
  {
    return a2;
  }

  return result;
}

uint64_t sub_1000C7D18(void **a1, uint64_t a2)
{
  result = 1;
  if (a2)
  {
    if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
    {
      result = 0;
      **a1 = a2;
    }
  }

  return result;
}

char **sub_1000C7D4C(uint64_t a1, _OWORD *a2)
{
  v9 = 0;
  v4 = sub_100095A6C(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
    {
      *(a1 + 8) = v6 + 1;
      if (*v5 == -1)
      {
LABEL_6:
        *v5 = *a2;
        v5[2] = 0;
        return v5 + 2;
      }

LABEL_5:
      --*(a1 + 12);
      goto LABEL_6;
    }

    sub_1000C7E30(a1, v7);
    sub_100095A6C(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 8);
    if (*v5 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v5 + 2;
}

void sub_1000C7E30(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (!v13)
    {
      return;
    }

    v14 = 24 * v13 - 24;
    if (v14 >= 0x18)
    {
      v24 = v14 / 0x18 + 1;
      v15 = (buffer + 24 * (v24 & 0x1FFFFFFFFFFFFFFELL));
      v25 = buffer;
      v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v25 = xmmword_10028F1D0;
        *(v25 + 24) = xmmword_10028F1D0;
        v25 += 3;
        v26 -= 2;
      }

      while (v26);
      if (v24 == (v24 & 0x1FFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v27 = (buffer + 24 * v13);
    do
    {
      *v15 = xmmword_10028F1D0;
      v15 = (v15 + 24);
    }

    while (v15 != v27);
    return;
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (buffer + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = buffer;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_10028F1D0;
        *(v17 + 24) = xmmword_10028F1D0;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = buffer;
    }

    v19 = (buffer + 24 * v10);
    do
    {
      *v12 = xmmword_10028F1D0;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
  }

LABEL_16:
  v20 = 3 * v3;
  if (v3)
  {
    v21 = 24 * v3;
    v22 = v4;
    do
    {
      if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v28 = 0;
        sub_100095A6C(a1, v22, &v28);
        v23 = v28;
        *v28 = *v22;
        v23[2] = *(v22 + 16);
        ++*(a1 + 8);
      }

      v22 += 24;
      v21 -= 24;
    }

    while (v21);
  }

  llvm::deallocate_buffer(v4, (8 * v20), 8uLL);
}

uint64_t sub_1000C8060(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

void *sub_1000C807C(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a2;
  v12 = a2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v8 = a3;
    v9 = a4;
    v6 *= 2;
  }

  else
  {
    if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
    {
      *(a1 + 2) = v5 + 1;
      if (*v4 == -4096)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v8 = a3;
    v9 = a4;
  }

  v10 = a1;
  sub_1000C8194(a1, v6);
  sub_10007F30C(v10, v8, &v12);
  a1 = v10;
  a3 = v8;
  v11 = *(v10 + 2);
  v4 = v12;
  a4 = v9;
  *(a1 + 2) = v11 + 1;
  if (*v4 != -4096)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v4 = *a3;
  v4[1] = v4 + 3;
  v4[2] = &_mh_execute_header;
  if (*(a4 + 8))
  {
    sub_10008BE34((v4 + 1), a4);
  }

  return v4;
}

void sub_1000C8194(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((32 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (!v11)
    {
      return;
    }

    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &buffer[4 * v14];
      v16 = buffer + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v18 = &buffer[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
    return;
  }

  v10 = (32 * v3);
  sub_1000C82AC(a1, v4, &v10[v4]);

  llvm::deallocate_buffer(v4, v10, 8uLL);
}

void sub_1000C82AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0xFFFFFFFFFFFFFFELL;
      v11 = &v7[4 * v10];
      v12 = v7 + 4;
      v13 = v10;
      do
      {
        *(v12 - 4) = -4096;
        *v12 = -4096;
        v12 += 8;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[4 * v6];
    do
    {
      *v11 = -4096;
      v11 += 4;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = *(a1 + 16) - 1;
        v17 = v16 & ((v15 >> 4) ^ (v15 >> 9));
        v18 = (*a1 + 32 * v17);
        v19 = *v18;
        if (v15 != *v18)
        {
          v21 = 0;
          v22 = 1;
          while (v19 != -4096)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v19 == -8192;
            }

            if (v23)
            {
              v21 = v18;
            }

            v24 = v17 + v22++;
            v17 = v24 & v16;
            v18 = (*a1 + 32 * v17);
            v19 = *v18;
            if (v15 == *v18)
            {
              goto LABEL_15;
            }
          }

          if (v21)
          {
            v18 = v21;
          }
        }

LABEL_15:
        *v18 = v15;
        v18[1] = v18 + 3;
        v18[2] = &_mh_execute_header;
        if (*(v4 + 4))
        {
          sub_10008BE34((v18 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v20 = v4[1];
        if (v20 != v4 + 3)
        {
          free(v20);
        }
      }

      v4 += 4;
    }

    while (v4 != a3);
  }
}

uint64_t sub_1000C8438(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = *a1;
  if ((*(v5 + 304) & 0x100) != 0)
  {
    v7 = v5;
    v8 = a2;
    a3 = sub_1000C7C80(a2, a3);
    v5 = v7;
    a4 = v9;
    a2 = v8;
  }

  return sub_1000C7150(v5, a2, a3, a4);
}

void sub_1000C84A8(uint64_t a1)
{
  v2 = *(a1 + 704);
  if (v2 != (a1 + 720))
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(a1 + 680), (8 * *(a1 + 696)), 8uLL);
  llvm::deallocate_buffer(*(a1 + 600), (16 * *(a1 + 616)), 8uLL);
  sub_10003EA00(a1 + 432);
  llvm::deallocate_buffer(*(a1 + 400), (24 * *(a1 + 416)), 8uLL);
  llvm::deallocate_buffer(*(a1 + 376), (32 * *(a1 + 392)), 8uLL);
  v3 = *(a1 + 368);
  v4 = *(a1 + 352);
  if (v3)
  {
    v5 = v4 + 24;
    v6 = 32 * v3;
    do
    {
      if ((*(v5 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v7 = *(v5 - 2);
        if (v5 != v7)
        {
          free(v7);
        }
      }

      v5 += 32;
      v6 -= 32;
    }

    while (v6);
    v4 = *(a1 + 352);
    v8 = (32 * *(a1 + 368));
  }

  else
  {
    v8 = 0;
  }

  llvm::deallocate_buffer(v4, v8, 8uLL);
  llvm::deallocate_buffer(*(a1 + 328), (16 * *(a1 + 344)), 8uLL);
  llvm::deallocate_buffer(*(a1 + 304), (24 * *(a1 + 320)), 8uLL);
  llvm::deallocate_buffer(*(a1 + 280), (16 * *(a1 + 296)), 8uLL);
  sub_10003EA00(a1 + 184);
  v9 = *(a1 + 168);
  if (v9 != (a1 + 184))
  {
    free(v9);
  }

  llvm::deallocate_buffer(*(a1 + 144), (16 * *(a1 + 160)), 8uLL);
  v10 = *(a1 + 136);
  v11 = *(a1 + 120);
  if (!v10)
  {
    llvm::deallocate_buffer(v11, 0, 8uLL);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    if (!v16)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v12 = v11 + 48;
  v13 = 48 * v10;
  do
  {
    if ((*(v12 - 6) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = *(v12 - 2);
      if (v12 != v14)
      {
        free(v14);
      }

      llvm::deallocate_buffer(*(v12 - 5), (24 * *(v12 - 6)), 8uLL);
    }

    v12 += 48;
    v13 -= 48;
  }

  while (v13);
  llvm::deallocate_buffer(*(a1 + 120), (48 * *(a1 + 136)), 8uLL);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  if (v16)
  {
LABEL_23:
    v17 = 8 * v16;
    v18 = v15 - 8;
    do
    {
      v19 = *&v18[v17];
      *&v18[v17] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      v17 -= 8;
    }

    while (v17);
    v15 = *(a1 + 56);
  }

LABEL_28:
  if (v15 != (a1 + 72))
  {
    free(v15);
  }

  mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(a1);
}

void sub_1000C8728(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((48 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (!v11)
    {
      return;
    }

    v12 = 48 * v11 - 48;
    if (v12 >= 0x30)
    {
      v14 = v12 / 0x30 + 1;
      v13 = &buffer[6 * (v14 & 0xFFFFFFFFFFFFFFELL)];
      v15 = buffer;
      v16 = v14 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v15 = -4096;
        v15[6] = -4096;
        v15 += 12;
        v16 -= 2;
      }

      while (v16);
      if (v14 == (v14 & 0xFFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v13 = buffer;
    }

    v17 = &buffer[6 * v11];
    do
    {
      *v13 = -4096;
      v13 += 6;
    }

    while (v13 != v17);
    return;
  }

  v10 = 6 * v3;
  sub_1000C886C(a1, v4, &v4[v10]);

  llvm::deallocate_buffer(v4, (v10 * 8), 8uLL);
}

void sub_1000C886C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 48 * v6 - 48;
    if (v8 < 0x30)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[6 * v6];
      do
      {
        *v9 = -4096;
        v9 += 6;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x30 + 1;
    v9 = &v7[6 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[6] = -4096;
      v11 += 12;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = *(a1 + 16) - 1;
        v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
        v17 = *a1 + 48 * v16;
        v18 = *v17;
        if (v14 != *v17)
        {
          v23 = 0;
          v24 = 1;
          while (v18 != -4096)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v18 == -8192;
            }

            if (v25)
            {
              v23 = v17;
            }

            v26 = v16 + v24++;
            v16 = v26 & v15;
            v17 = *a1 + 48 * v16;
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_15;
            }
          }

          if (v23)
          {
            v17 = v23;
          }
        }

LABEL_15:
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *v17 = v14;
        *(v17 + 24) = 0;
        *(v17 + 8) = v4[1];
        v4[1] = 0;
        *(v17 + 16) = *(v4 + 4);
        *(v4 + 4) = 0;
        v19 = *(v17 + 20);
        *(v17 + 20) = *(v4 + 5);
        *(v4 + 5) = v19;
        v20 = *(v17 + 24);
        *(v17 + 24) = *(v4 + 6);
        *(v4 + 6) = v20;
        *(v17 + 32) = v17 + 48;
        *(v17 + 40) = 0;
        v21 = v17 + 32;
        if (*(v4 + 10))
        {
          sub_1000A8718(v21, v4 + 4);
        }

        ++*(a1 + 8);
        v22 = v4[4];
        if (v22 != v4 + 6)
        {
          free(v22);
        }

        llvm::deallocate_buffer(v4[1], (24 * *(v4 + 6)), 8uLL);
      }

      v4 += 6;
    }

    while (v4 != a3);
  }
}

uint64_t sub_1000C8A68(uint64_t result, void *a2, uint64_t *a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
    return result;
  }

  v6 = *result;
  v7 = **result;
  if (!v7)
  {
    result = *a3;
    v8 = *(*a3 + 32);
    if ((*(*a3 + 24) - v8) > 0x11)
    {
      *(v8 + 16) = 15934;
      *v8 = *"<<NULL ATTRIBUTE>>";
      *(result + 32) += 18;
      if (v3 == 1)
      {
        return result;
      }

LABEL_11:
      v9 = v6 + 1;
      v10 = 8 * v3 - 8;
      while (1)
      {
        v11 = a2[4];
        if (a2[3] - v11 > 1uLL)
        {
          *v11 = 8236;
          a2[4] += 2;
          v12 = *v9;
          if (*v9)
          {
LABEL_19:
            result = sub_1000AEDE4((a3[1] + 144), v12, *a3);
            if ((result & 1) == 0)
            {
              result = mlir::AsmPrinter::Impl::printAttributeImpl(a3, v12, 1);
            }

            goto LABEL_13;
          }
        }

        else
        {
          llvm::raw_ostream::write(a2, ", ", 2uLL);
          v12 = *v9;
          if (*v9)
          {
            goto LABEL_19;
          }
        }

        result = *a3;
        v13 = *(*a3 + 32);
        if ((*(*a3 + 24) - v13) > 0x11)
        {
          *(v13 + 16) = 15934;
          *v13 = *"<<NULL ATTRIBUTE>>";
          *(result + 32) += 18;
        }

        else
        {
          result = llvm::raw_ostream::write(result, "<<NULL ATTRIBUTE>>", 0x12uLL);
        }

LABEL_13:
        ++v9;
        v10 -= 8;
        if (!v10)
        {
          return result;
        }
      }
    }

    result = llvm::raw_ostream::write(result, "<<NULL ATTRIBUTE>>", 0x12uLL);
LABEL_8:
    if (v3 == 1)
    {
      return result;
    }

    goto LABEL_11;
  }

  result = sub_1000AEDE4((a3[1] + 144), v7, *a3);
  if (result)
  {
    goto LABEL_8;
  }

  result = mlir::AsmPrinter::Impl::printAttributeImpl(a3, v7, 1);
  if (v3 != 1)
  {
    goto LABEL_11;
  }

  return result;
}

void *sub_1000C8C20(__int128 **a1, unsigned int a2)
{
  v3 = a1[1];
  v4 = (*a1)[1];
  v11 = **a1;
  v13 = *(&v4 + 1);
  v12 = v4 + a2;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v11, &v14);
  v5 = *v3;
  v6 = *(*v3 + 4);
  if (*(*v3 + 3) == v6)
  {
    llvm::raw_ostream::write(v5, "(", 1uLL);
    DWORD2(v11) = v15;
    if (v15 <= 0x40)
    {
      goto LABEL_3;
    }

LABEL_5:
    llvm::APInt::initSlowCase(&v11, &v14);
  }

  *v6 = 40;
  ++*(v5 + 4);
  DWORD2(v11) = v15;
  if (v15 > 0x40)
  {
    goto LABEL_5;
  }

LABEL_3:
  *&v11 = v14;
  sub_1000C8E3C(&v11, *v3, *a1[2]);
  if (DWORD2(v11) >= 0x41 && v11)
  {
    operator delete[]();
  }

  v7 = *v3;
  v8 = *(*v3 + 4);
  if (*(*v3 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, ",", 1uLL);
    DWORD2(v11) = v17;
    if (v17 <= 0x40)
    {
      goto LABEL_11;
    }

LABEL_13:
    llvm::APInt::initSlowCase(&v11, &v16);
  }

  *v8 = 44;
  ++*(v7 + 4);
  DWORD2(v11) = v17;
  if (v17 > 0x40)
  {
    goto LABEL_13;
  }

LABEL_11:
  *&v11 = v16;
  sub_1000C8E3C(&v11, *v3, *a1[2]);
  if (DWORD2(v11) >= 0x41 && v11)
  {
    operator delete[]();
  }

  result = *v3;
  v10 = *(*v3 + 4);
  if (*(*v3 + 3) == v10)
  {
    result = llvm::raw_ostream::write(result, ")", 1uLL);
    if (v17 < 0x41)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v10 = 41;
    ++result[4];
    if (v17 < 0x41)
    {
      goto LABEL_23;
    }
  }

  result = v16;
  if (v16)
  {
    operator delete[]();
  }

LABEL_23:
  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_1000C8E3C(llvm::APInt *a1, llvm::raw_ostream *a2, uint64_t a3)
{
  v12 = a3;
  if (mlir::Type::isInteger(&v12, 1))
  {
    v5 = *(a1 + 2);
    if (v5 > 0x40)
    {
      v6 = llvm::APInt::countLeadingZerosSlowCase(a1) == v5;
    }

    else
    {
      v6 = *a1 == 0;
    }

    v8 = v6;
    if (v8)
    {
      v9 = "false";
    }

    else
    {
      v9 = "true";
    }

    if (v8)
    {
      v10 = 5;
    }

    else
    {
      v10 = 4;
    }

    v11 = *(a2 + 4);
    if (v10 <= *(a2 + 3) - v11)
    {
      memcpy(v11, v9, v10);
      *(a2 + 4) += v10;
    }

    else
    {
      llvm::raw_ostream::write(a2, v9, v10);
    }
  }

  else
  {
    isUnsignedInteger = mlir::Type::isUnsignedInteger(&v12);
    llvm::APInt::print(a1, a2, !isUnsignedInteger);
  }
}

void sub_1000C8F3C(__int128 **a1, unsigned int a2)
{
  v2 = a1[1];
  v3 = *(*a1 + 4);
  v4 = (*a1)[1];
  v19 = **a1;
  v21 = *(&v4 + 1);
  v22 = v3;
  v20 = v4 + a2;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v19, &v15);
  sub_1000C9214(&v15, &v19, v23);
  if (v18 >= 0x41 && v17)
  {
    operator delete[]();
  }

  if (v16 >= 0x41)
  {
    if (v15)
    {
      operator delete[]();
    }
  }

  v5 = *v2;
  v6 = *(*v2 + 4);
  if (*(*v2 + 3) == v6)
  {
    v9 = llvm::raw_ostream::write(v5, "(", 1uLL);
    v10 = v23[0];
    v8 = llvm::APFloatBase::PPCDoubleDouble(v9);
    if (v8 != v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *v6 = 40;
    ++*(v5 + 4);
    v7 = v23[0];
    v8 = llvm::APFloatBase::PPCDoubleDouble(v5);
    if (v8 != v7)
    {
LABEL_9:
      llvm::detail::IEEEFloat::IEEEFloat(&v19, v23);
      goto LABEL_12;
    }
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v19, v23);
LABEL_12:
  sub_1000B0610(&v19, *v2, 0);
  if (v8 != v19)
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v19);
    v11 = *v2;
    v12 = *(*v2 + 4);
    if (*(*v2 + 3) != v12)
    {
      goto LABEL_14;
    }

LABEL_17:
    llvm::raw_ostream::write(v11, ",", 1uLL);
    if (v8 != v24[0])
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  sub_100029F40(&v19);
  v11 = *v2;
  v12 = *(*v2 + 4);
  if (*(*v2 + 3) == v12)
  {
    goto LABEL_17;
  }

LABEL_14:
  *v12 = 44;
  ++*(v11 + 4);
  if (v8 != v24[0])
  {
LABEL_15:
    llvm::detail::IEEEFloat::IEEEFloat(&v19, v24);
    goto LABEL_19;
  }

LABEL_18:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v19, v24);
LABEL_19:
  sub_1000B0610(&v19, *v2, 0);
  if (v8 == v19)
  {
    sub_100029F40(&v19);
    v13 = *v2;
    v14 = *(*v2 + 4);
    if (*(*v2 + 3) != v14)
    {
LABEL_21:
      *v14 = 41;
      ++*(v13 + 4);
      if (v8 != v24[0])
      {
        goto LABEL_22;
      }

LABEL_27:
      sub_100029F40(v24);
      if (v8 != v23[0])
      {
        goto LABEL_23;
      }

LABEL_28:
      sub_100029F40(v23);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v19);
    v13 = *v2;
    v14 = *(*v2 + 4);
    if (*(*v2 + 3) != v14)
    {
      goto LABEL_21;
    }
  }

  llvm::raw_ostream::write(v13, ")", 1uLL);
  if (v8 == v24[0])
  {
    goto LABEL_27;
  }

LABEL_22:
  llvm::detail::IEEEFloat::~IEEEFloat(v24);
  if (v8 == v23[0])
  {
    goto LABEL_28;
  }

LABEL_23:
  llvm::detail::IEEEFloat::~IEEEFloat(v23);
}

void sub_1000C9214(llvm::APInt *a1@<X1>, llvm::APFloatBase *a2@<X0>, void *a3@<X8>)
{
  v6 = *(a2 + 4);
  v13 = *(a1 + 2);
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&v12, a1);
  }

  v12 = *a1;
  v7 = llvm::APFloatBase::PPCDoubleDouble(a2);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v15, v6);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v15, v6, &v12);
  v8 = *(a2 + 4);
  v11 = *(a1 + 6);
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(&v10, (a1 + 16));
  }

  v10 = *(a1 + 2);
  if (v7 == v8)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, v8);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v14, v8, &v10);
  if (v7 == v15[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a3, v15);
    v9 = (a3 + 3);
    if (v7 != v14[0])
    {
LABEL_7:
      llvm::detail::IEEEFloat::IEEEFloat(v9, v14);
      if (v7 != v14[0])
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(a3, v15);
    v9 = (a3 + 3);
    if (v7 != v14[0])
    {
      goto LABEL_7;
    }
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v14);
  if (v7 != v14[0])
  {
LABEL_8:
    llvm::detail::IEEEFloat::~IEEEFloat(v14);
    if (v11 < 0x41)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  sub_100029F40(v14);
  if (v11 < 0x41)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (v10)
  {
    operator delete[]();
  }

LABEL_19:
  if (v7 == v15[0])
  {
    sub_100029F40(v15);
    if (v13 < 0x41)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v15);
    if (v13 < 0x41)
    {
      return;
    }
  }

  if (v12)
  {
    operator delete[]();
  }
}

void sub_1000C9464(__int128 **a1, unsigned int a2)
{
  v3 = a1[1];
  v4 = (*a1)[1];
  v5 = **a1;
  v7 = *(&v4 + 1);
  v6 = v4 + a2;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v5, &v8);
  sub_1000C8E3C(&v8, *v3, *a1[2]);
  if (v9 >= 0x41)
  {
    if (v8)
    {
      operator delete[]();
    }
  }
}

void sub_1000C94EC(__int128 **a1, unsigned int a2)
{
  v2 = a1[1];
  v3 = *(*a1 + 4);
  v4 = (*a1)[1];
  v8 = **a1;
  v10 = *(&v4 + 1);
  v11 = v3;
  v9 = v4 + a2;
  v5 = mlir::DenseElementsAttr::IntElementIterator::operator*(&v8, &v12);
  v6 = v11;
  v7 = llvm::APFloatBase::PPCDoubleDouble(v5);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, v6);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v14, v6, &v12);
  if (v13 >= 0x41 && v12)
  {
    operator delete[]();
  }

  sub_1000B0610(v14, *v2, 0);
  if (v7 == v14[0])
  {
    sub_100029F40(v14);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v14);
  }
}

llvm::raw_ostream *sub_1000C961C(llvm::raw_ostream ***a1, unsigned int a2)
{
  v2 = *a1;
  v3 = *a1[1] + 16 * a2;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = **a1;
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "", 1uLL);
  }

  else
  {
    *v7 = 34;
    ++*(v6 + 4);
  }

  llvm::printEscapedString(v4, v5, *v2);
  result = *v2;
  v9 = *(*v2 + 4);
  if (*(*v2 + 3) == v9)
  {

    return llvm::raw_ostream::write(result, "", 1uLL);
  }

  else
  {
    *v9 = 34;
    ++*(result + 4);
  }

  return result;
}

void sub_1000C96E8(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = **a1;
  v21 = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20);
  }

  v20 = 0;
  if (v4)
  {
    llvm::LoadIntFromMemory(&v20, (**(a1 + 8) + (**(a1 + 16) * a2)), **(a1 + 16));
  }

  if (mlir::Type::isIntOrIndex(*(a1 + 24)))
  {
    sub_1000C8E3C(&v20, *v3, **(a1 + 24));
    if (v21 < 0x41)
    {
      return;
    }

    goto LABEL_30;
  }

  v5 = **(a1 + 24);
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = *v5;
  {
    sub_100279428();
    v7 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_12;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_12:
  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 == &v8[2 * v9] || *v10 != v7)
  {
    goto LABEL_22;
  }

  v16 = v10[1];
LABEL_23:
  v19[0] = v5;
  v19[1] = v16;
  FloatSemantics = mlir::FloatType::getFloatSemantics(v19);
  v18 = llvm::APFloatBase::PPCDoubleDouble(FloatSemantics);
  if (v18 == FloatSemantics)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v22, FloatSemantics);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v22, FloatSemantics, &v20);
  sub_1000B0610(v22, *v3, 0);
  if (v18 == v22[0])
  {
    sub_100029F40(v22);
    if (v21 < 0x41)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v22);
    if (v21 < 0x41)
    {
      return;
    }
  }

LABEL_30:
  if (v20)
  {
    operator delete[]();
  }
}