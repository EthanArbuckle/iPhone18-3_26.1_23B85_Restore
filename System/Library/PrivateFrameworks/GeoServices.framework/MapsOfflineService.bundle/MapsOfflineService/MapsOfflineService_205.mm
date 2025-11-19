void sub_C33794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  __cxa_guard_abort(&qword_27339C8);
  v51 = a1;
  v52 = *v49;
  if (*v49)
  {
    *(v49 + 8) = v52;
    operator delete(v52);
    v51 = a1;
  }

  _Unwind_Resume(v51);
}

unint64_t sub_C3382C(unint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v74 = *(a2 - 1);
      v75 = *v10;
      if (v74 < *v10)
      {
        *v10 = v74;
        *(a2 - 1) = v75;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v86 = v10 + 1;
      v88 = v10 == a2 || v86 == a2;
      if (a5)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v10;
          do
          {
            v93 = *v90;
            v92 = v90[1];
            v90 = v86;
            if (v92 < v93)
            {
              v94 = v89;
              do
              {
                *(v10 + v94 + 4) = v93;
                if (!v94)
                {
                  v91 = v10;
                  goto LABEL_128;
                }

                v93 = *(v10 + v94 - 4);
                v94 -= 4;
              }

              while (v92 < v93);
              v91 = (v10 + v94 + 4);
LABEL_128:
              *v91 = v92;
            }

            v86 = v90 + 1;
            v89 += 4;
          }

          while (v90 + 1 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v100 = *v9;
          v99 = v9[1];
          v9 = v86;
          if (v99 < v100)
          {
            do
            {
              *v86 = v100;
              v100 = *(v86 - 2);
              --v86;
            }

            while (v99 < v100);
            *v86 = v99;
          }

          v86 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_C34114(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v10;
      v18 = *v12;
      if (*v10 < *v13)
      {
        if (v14 < v17)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v17;
        *v10 = v18;
        v28 = *(a2 - 1);
        if (v28 < v18)
        {
          *v10 = v28;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v14 >= v17)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v17;
      v20 = *v13;
      if (*v10 >= *v13)
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= *(a2 - 1))
      {
        v57 = v10 + 1;
        do
        {
          v10 = v57;
          if (v57 >= a2)
          {
            break;
          }

          ++v57;
        }

        while (v21 >= *v10);
      }

      else
      {
        do
        {
          v56 = v10[1];
          ++v10;
        }

        while (v21 >= v56);
      }

      v58 = a2;
      if (v10 < a2)
      {
        v58 = a2;
        do
        {
          v59 = *--v58;
        }

        while (v21 < v59);
      }

      if (v10 < v58)
      {
        v60 = *v10;
        v61 = *v58;
        do
        {
          *v10 = v61;
          *v58 = v60;
          do
          {
            v62 = v10[1];
            ++v10;
            v60 = v62;
          }

          while (v21 >= v62);
          do
          {
            v63 = *--v58;
            v61 = v63;
          }

          while (v21 < v63);
        }

        while (v10 < v58);
      }

      v64 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v64;
      }

      a5 = 0;
      *v64 = v21;
    }

    else
    {
      v15 = *v12;
      v16 = *v10;
      if (*v12 >= *v10)
      {
        if (v14 < v15)
        {
          *v12 = v14;
          *(a2 - 1) = v15;
          v19 = *v10;
          if (*v12 < *v10)
          {
            *v10 = *v12;
            *v12 = v19;
          }
        }
      }

      else
      {
        if (v14 >= v15)
        {
          *v10 = v15;
          *v12 = v16;
          v22 = *(a2 - 1);
          if (v22 >= v16)
          {
            goto LABEL_29;
          }

          *v12 = v22;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v16;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = *(v12 - 1);
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v10[1];
          if (*v23 < v27)
          {
            v10[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 >= v24)
        {
          v10[1] = v24;
          *v23 = v25;
          v29 = *(a2 - 2);
          if (v29 >= v25)
          {
            goto LABEL_43;
          }

          *v23 = v29;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v32 = v12[1];
      v30 = v12 + 1;
      v31 = v32;
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v10[2];
          if (*v30 < v35)
          {
            v10[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 >= v31)
        {
          v10[2] = v31;
          *v30 = v33;
          v36 = *(a2 - 3);
          if (v36 >= v33)
          {
            goto LABEL_52;
          }

          *v30 = v36;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v37 = *v13;
      v38 = *v23;
      v39 = *v30;
      if (*v13 >= *v23)
      {
        if (v39 >= v37)
        {
          goto LABEL_60;
        }

        *v13 = v39;
        *v30 = v37;
        v30 = v13;
        v37 = v38;
        if (v39 < v38)
        {
LABEL_59:
          *v23 = v39;
          *v30 = v38;
LABEL_60:
          v41 = *v10;
          *v10 = v37;
          *v13 = v41;
          --a4;
          v21 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v55 = *v10;
        *v10 = v39;
        *v13 = v55;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v39 < v37)
      {
        goto LABEL_59;
      }

      *v23 = v37;
      *v13 = v38;
      v23 = v13;
      v37 = v39;
      if (v39 < v38)
      {
        goto LABEL_59;
      }

      v40 = *v10;
      *v10 = v38;
      *v13 = v40;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 < v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *--v45;
        }

        while (v47 >= v21);
      }

      else
      {
        do
        {
          v46 = *--v45;
        }

        while (v46 >= v21);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 1;
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 < v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 >= v21);
      }

      while (v49 < v50);
      v53 = v49 - 1;
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = sub_9BDA94(v10, v53);
      v10 = v53 + 1;
      result = sub_9BDA94(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = sub_C3382C(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v53 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v79 = v10 + 1;
      v80 = v10[1];
      v81 = v10 + 2;
      v82 = v10[2];
      v83 = *v10;
      if (v80 >= v83)
      {
        if (v82 < v80)
        {
          *v79 = v82;
          *v81 = v80;
          v84 = v10;
          v85 = v10 + 1;
          result = v80;
          if (v82 < v83)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_157:
        LODWORD(v80) = v82;
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      else
      {
        v84 = v10;
        v85 = v10 + 2;
        result = *v10;
        if (v82 >= v80)
        {
          *v10 = v80;
          v10[1] = v83;
          v84 = v10 + 1;
          v85 = v10 + 2;
          result = v83;
          if (v82 >= v83)
          {
            goto LABEL_157;
          }
        }

LABEL_148:
        *v84 = v82;
        *v85 = v83;
        LODWORD(v80) = result;
LABEL_149:
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      *v81 = v98;
      *(a2 - 1) = v80;
      v101 = *v81;
      v102 = *v79;
      if (v101 < v102)
      {
        v10[1] = v101;
        v10[2] = v102;
        v103 = *v10;
        if (v101 < *v10)
        {
          *v10 = v101;
          v10[1] = v103;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v65 = v10 + 1;
      v66 = v10[1];
      v68 = v10 + 2;
      v67 = v10[2];
      v69 = *v10;
      if (v66 >= v69)
      {
        if (v67 >= v66)
        {
          v72 = *v10;
          LODWORD(v69) = v10[1];
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v70 = v10;
          v71 = v10 + 1;
          *v65 = v67;
          *v68 = v66;
          v72 = v67;
          result = v69;
          v73 = v66;
          if (v67 < v69)
          {
            goto LABEL_162;
          }

          v72 = v69;
          LODWORD(v69) = v67;
          LODWORD(v67) = v66;
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        if (v67 < v66)
        {
          v70 = v10;
          v71 = v10 + 2;
          v72 = v10[2];
          result = v10[1];
          v73 = *v10;
          goto LABEL_162;
        }

        v70 = v10 + 1;
        v71 = v10 + 2;
        *v10 = v66;
        v10[1] = v69;
        v72 = v66;
        result = v67;
        v73 = v69;
        if (v67 < v69)
        {
LABEL_162:
          *v70 = v67;
          *v71 = v69;
          LODWORD(v69) = result;
          LODWORD(v67) = v73;
          v95 = v10[3];
          if (v95 < v73)
          {
            goto LABEL_163;
          }

LABEL_167:
          LODWORD(v67) = v95;
LABEL_168:
          v104 = *(a2 - 1);
          if (v104 >= v67)
          {
            return result;
          }

          v10[3] = v104;
          *(a2 - 1) = v67;
          v105 = v10[2];
          v96 = v10[3];
          if (v96 >= v105)
          {
            return result;
          }

          v10[2] = v96;
          v10[3] = v105;
          v106 = v10[1];
          if (v96 >= v106)
          {
            return result;
          }

          v10[1] = v96;
          v10[2] = v106;
          v97 = *v10;
          if (v96 >= *v10)
          {
            return result;
          }

LABEL_172:
          *v10 = v96;
          v10[1] = v97;
          return result;
        }

        v72 = v66;
        v95 = v10[3];
        if (v95 >= v67)
        {
          goto LABEL_167;
        }
      }

LABEL_163:
      v10[2] = v95;
      v10[3] = v67;
      if (v95 < v69)
      {
        *v65 = v95;
        *v68 = v69;
        if (v95 < v72)
        {
          *v10 = v95;
          v10[1] = v72;
        }
      }

      goto LABEL_168;
    }

    goto LABEL_10;
  }

  v76 = *v10;
  v77 = v10[1];
  v78 = *(a2 - 1);
  if (v77 < *v10)
  {
    if (v78 >= v77)
    {
      *v10 = v77;
      v10[1] = v76;
      v107 = *(a2 - 1);
      if (v107 >= v76)
      {
        return result;
      }

      v10[1] = v107;
    }

    else
    {
      *v10 = v78;
    }

    *(a2 - 1) = v76;
    return result;
  }

  if (v78 < v77)
  {
    v10[1] = v78;
    *(a2 - 1) = v77;
    v97 = *v10;
    v96 = v10[1];
    if (v96 < *v10)
    {
      goto LABEL_172;
    }
  }

  return result;
}

int *sub_C34114(int *a1, int *a2, int *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v6 = (2 * (v5 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v7 = &a1[v6];
        v8 = *v7;
        if (2 * (v5 & 0x3FFFFFFFFFFFFFFFLL) + 2 < v3)
        {
          v9 = v7[1];
          v10 = v8 < v9;
          if (v8 <= v9)
          {
            v8 = v7[1];
          }

          if (v10)
          {
            ++v7;
            v6 = 2 * (v5 & 0x3FFFFFFFFFFFFFFFLL) + 2;
          }
        }

        v11 = &a1[v5];
        v12 = *v11;
        if (v8 >= *v11)
        {
          while (1)
          {
            v15 = v7;
            *v11 = v8;
            if (v4 < v6)
            {
              break;
            }

            v16 = (2 * v6) | 1;
            v7 = &a1[v16];
            v6 = 2 * v6 + 2;
            v8 = *v7;
            if (v6 < v3)
            {
              v13 = v7[1];
              v14 = v8 < v13;
              if (v8 <= v13)
              {
                v8 = v7[1];
              }

              if (v14)
              {
                ++v7;
              }

              else
              {
                v6 = v16;
              }

              v11 = v15;
              if (v8 < v12)
              {
                break;
              }
            }

            else
            {
              v6 = v16;
              v11 = v15;
              if (v8 < v12)
              {
                break;
              }
            }
          }

          *v15 = v12;
        }
      }

      v10 = v5-- <= 0;
    }

    while (!v10);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v18 = *a1;
      i = a2;
      do
      {
        v19 = *i;
        if (*i < v18)
        {
          *i = v18;
          *a1 = v19;
          v18 = v19;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_57;
    }

    for (i = a2; i != a3; ++i)
    {
      v20 = *i;
      if (*i < *a1)
      {
        *i = *a1;
        *a1 = v20;
        v21 = a1[1];
        if (a2 - a1 == 8)
        {
          v22 = a1 + 1;
          v23 = 1;
          if (v21 >= v20)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v24 = a1[2];
          v25 = v21 < v24;
          if (v21 <= v24)
          {
            v21 = a1[2];
          }

          if (v25)
          {
            v22 = a1 + 2;
          }

          else
          {
            v22 = a1 + 1;
          }

          if (v25)
          {
            v23 = 2;
          }

          else
          {
            v23 = 1;
          }

          if (v21 >= v20)
          {
LABEL_46:
            v26 = a1;
            while (1)
            {
              v29 = v22;
              *v26 = v21;
              if (((v3 - 2) >> 1) < v23)
              {
                break;
              }

              v30 = (2 * v23) | 1;
              v22 = &a1[v30];
              v23 = 2 * v23 + 2;
              v21 = *v22;
              if (v23 < v3)
              {
                v27 = v22[1];
                v28 = v21 < v27;
                if (v21 <= v27)
                {
                  v21 = v22[1];
                }

                if (v28)
                {
                  ++v22;
                }

                else
                {
                  v23 = v30;
                }

                v26 = v29;
                if (v21 < v20)
                {
                  break;
                }
              }

              else
              {
                v23 = v30;
                v26 = v29;
                if (v21 < v20)
                {
                  break;
                }
              }
            }

            *v29 = v20;
          }
        }
      }
    }
  }

LABEL_57:
  if (v3 >= 2)
  {
    do
    {
      v32 = 0;
      v33 = *a1;
      v34 = (v3 - 2) >> 1;
      v35 = a1;
      do
      {
        while (1)
        {
          v42 = &v35[v32];
          v41 = v42 + 1;
          v40 = v42[1];
          v43 = (2 * v32) | 1;
          v32 = 2 * v32 + 2;
          if (v32 < v3)
          {
            break;
          }

          v32 = v43;
          *v35 = v40;
          v35 = v42 + 1;
          if (v43 > v34)
          {
            goto LABEL_71;
          }
        }

        v38 = v42[2];
        v37 = v42 + 2;
        v36 = v38;
        v39 = v40 < v38;
        if (v40 <= v38)
        {
          v40 = v36;
        }

        if (v39)
        {
          v41 = v37;
        }

        else
        {
          v32 = v43;
        }

        *v35 = v40;
        v35 = v41;
      }

      while (v32 <= v34);
LABEL_71:
      if (v41 == --a2)
      {
        *v41 = v33;
      }

      else
      {
        *v41 = *a2;
        *a2 = v33;
        v44 = (v41 - a1 + 4) >> 2;
        v10 = v44 < 2;
        v45 = v44 - 2;
        if (!v10)
        {
          v46 = v45 >> 1;
          v47 = &a1[v46];
          v48 = *v47;
          v49 = *v41;
          if (*v47 < *v41)
          {
            do
            {
              v50 = v47;
              *v41 = v48;
              if (!v46)
              {
                break;
              }

              v46 = (v46 - 1) >> 1;
              v47 = &a1[v46];
              v48 = *v47;
              v41 = v50;
            }

            while (*v47 < v49);
            *v50 = v49;
          }
        }
      }

      v10 = v3-- <= 2;
    }

    while (!v10);
  }

  return i;
}

void sub_C3444C(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 20;
  strcpy(__p, "enable_local_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v10 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 21) = v10;
  operator new();
}

void sub_C34680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C349C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  sub_1F1A8(va);
  sub_1F1A8(va1);
  sub_1F1A8(va2);
  sub_1F1A8(va3);
  sub_A8A480(v4);
  sub_A8A480(v3);
  _Unwind_Resume(a1);
}

void sub_C34A20(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 112);
  if (!v5)
  {
    _Unwind_Resume(exception_object);
  }

  free(v5);
  _Unwind_Resume(exception_object);
}

double sub_C34A54@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  sub_BA93E8(a1 + 32);
  sub_BA93E8(a1 + 152);
  v6 = *(a1 + 16);
  *(a1 + 272) = *(a1 + 8);
  *(a1 + 288) = v6;
  *(a1 + 280) = *(a1 + 24);
  *(a1 + 297) = *(a1 + 28);
  *(a1 + 304) = *(a1 + 30);
  if (*a2)
  {
    sub_BAC190(a1 + 272, a2);
    sub_BAC5F0(a1 + 272, a3);
  }

  else
  {
    sub_BB1910(a1 + 272, a2);
    sub_BB1D70((a1 + 272), a3);
  }

  result = (*(a1 + 80) - *(a1 + 72));
  v8 = (*(a1 + 200) - *(a1 + 192));
  *(a3 + 160) = result;
  *(a3 + 168) = v8;
  *(a3 + 176) += *(a1 + 136) - *(a1 + 120) + *(a1 + 256) + 12 * (*(a1 + 208) + *(a1 + 88)) - *(a1 + 240) + 1016;
  return result;
}

void sub_C34B6C(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 20;
  strcpy(__p, "enable_local_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v10 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 21) = v10;
  operator new();
}

void sub_C34DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C3502C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  sub_1F1A8(va);
  sub_1F1A8(va1);
  sub_1F1A8(va2);
  sub_1F1A8(va3);
  sub_A92768((v2 + 152));
  sub_A92768(v3);
  _Unwind_Resume(a1);
}

void sub_C35068(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 248) = v5;
    operator delete(v5);
  }

  sub_A9595C(v1 + 152);
  sub_A92768(v2);
  _Unwind_Resume(a1);
}

void sub_C350A8(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 128) = v5;
    operator delete(v5);
  }

  sub_A9595C(v2);
  _Unwind_Resume(a1);
}

double sub_C350D0@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 72) | *(a1 + 112))
  {
    for (i = *(a1 + 80); i != *(a1 + 88); i += 16)
    {
      if (*i)
      {
        free(*i);
        *i = 0;
      }

      *(i + 8) = 0;
    }

    *(a1 + 112) = 0;
  }

  *(a1 + 32) = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 48), *(a1 + 104))));
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 128) = *(a1 + 120);
  *(a1 + 144) = 0;
  if (*(a1 + 192) | *(a1 + 232))
  {
    for (j = *(a1 + 200); j != *(a1 + 208); j += 16)
    {
      if (*j)
      {
        free(*j);
        *j = 0;
      }

      *(j + 8) = 0;
    }

    *(a1 + 232) = 0;
  }

  *(a1 + 152) = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 168), *(a1 + 224))));
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 248) = *(a1 + 240);
  *(a1 + 264) = 0;
  v8 = *(a1 + 16);
  *(a1 + 272) = *(a1 + 8);
  *(a1 + 288) = v8;
  *(a1 + 280) = *(a1 + 24);
  *(a1 + 297) = *(a1 + 28);
  *(a1 + 304) = *(a1 + 30);
  if (*a2)
  {
    sub_C36834(a1 + 272, a2);
    sub_C36CDC(a1 + 272, a3);
  }

  else
  {
    sub_C353E4(a1 + 272, a2);
    sub_C3588C(a1 + 272, a3);
  }

  v9 = *(a1 + 104);
  result = (*(a1 + 112) - *(a1 + 72));
  v11 = *(a1 + 224);
  v12 = (*(a1 + 232) - *(a1 + 192));
  *(a3 + 160) = result;
  *(a3 + 168) = v12;
  *(a3 + 176) += *(a1 + 136) - *(a1 + 120) + *(a1 + 256) + 12 * (v11 + v9) - *(a1 + 240) + 1016;
  return result;
}

void *sub_C352C0(void *a1)
{
  sub_A40284((a1 + 34));
  v2 = a1[30];
  if (v2)
  {
    a1[31] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[14];
  if (v5)
  {
    free(v5);
  }

  return a1;
}

void sub_C35324(void *a1)
{
  sub_A40284((a1 + 34));
  v2 = a1[30];
  if (v2)
  {
    a1[31] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[14];
  if (v5)
  {
    free(v5);
  }

  operator delete();
}

void sub_C353AC(void *a1)
{
  sub_C427F4(a1);

  operator delete();
}

void sub_C353E4(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v46);
  v4 = *(a2 + 16);
  *(a1 + 112) = *a2;
  *(a1 + 128) = v4;
  *(a1 + 144) = *(a2 + 32);
  *(a1 + 152) = *(a2 + 40);
  sub_C37B04(a1);
  v5 = *(a1 + 48);
  v47[0] = 0x1FFFFFFFDLL;
  v6 = sub_B34C5C(v5, v47);
  v7 = *(v6 + 8);
  if (v7 != -1)
  {
    *(a1 + 456) = v7;
    if (*(a1 + 33) != 1)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (!sub_A822FC(*(a1 + 40)))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v8 = *(v5 + 112);
  *(v5 + 112) = v8 + 1;
  *(v6 + 8) = v8;
  v9 = v6;
  sub_2512DC(v5 + 88, v47);
  *(a1 + 456) = *(v9 + 8);
  if (*(a1 + 33) == 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = *(a1 + 48);
  v47[0] = 0x1FFFFFFFELL;
  v11 = sub_B34C5C(v10, v47);
  v12 = *(v11 + 8);
  if (v12 == -1)
  {
    v13 = *(v10 + 112);
    *(v10 + 112) = v13 + 1;
    *(v11 + 8) = v13;
    v14 = v11;
    sub_2512DC(v10 + 88, v47);
    v12 = *(v14 + 8);
  }

  sub_C3A95C(a1, 0, v12, 0, *(a1 + 116));
LABEL_9:
  LODWORD(v15) = *(a1 + 168);
  if (v15 >= 2)
  {
    v16 = 1;
    while (1)
    {
      if (*(a1 + 25) & 1) == 0 && v16 >= 2 && (*(a1 + 27))
      {
        v17 = *(a1 + 360);
        v18 = *(a1 + 368);
        if (v17 == v18)
        {
          v26 = *(a1 + 360);
        }

        else
        {
          do
          {
            v19 = *v17;
            v20 = *(a1 + 176);
            LODWORD(v47[0]) = (*v17 << *v20) | (v16 - 2);
            v21 = *(sub_C3AD10((v20 + 8), v47) + 4);
            v22 = *(a1 + 176);
            LODWORD(v47[0]) = (v19 << *v22) | v16;
            v23 = sub_C3AD10((v22 + 8), v47);
            if (v21 != 0x7FFFFFFF)
            {
              v24 = *(v23 + 4);
              if (v24 == 0x7FFFFFFF || v21 < v24)
              {
                *(v23 + 4) = v21;
              }
            }

            ++v17;
          }

          while (v17 != v18);
          v17 = *(a1 + 360);
          v26 = *(a1 + 368);
        }

        *(a1 + 696) = *(a1 + 696) + ((v26 - v17) >> 2);
      }

      if (v16)
      {
        v36 = *(a1 + 312);
        v37 = *(a1 + 320);
        if (v36 != v37)
        {
          v38 = *(a1 + 288);
          v39 = *(a1 + 312);
          do
          {
            v40 = *v39++;
            *(v38 + ((v40 >> 3) & 0x1FFFFFF8)) &= ~(1 << v40);
          }

          while (v39 != v37);
        }

        *(a1 + 320) = v36;
        sub_C37DB0(a1, v16);
        sub_C37FC0(a1, v16);
        v41 = *(a1 + 456);
        if (*(a1 + 296) > v41 && ((*(*(a1 + 288) + ((v41 >> 3) & 0x1FFFFFF8)) >> v41) & 1) != 0)
        {
          *(*(a1 + 464) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        }

        if (*(a1 + 25) == 1 && *(a1 + 312) == *(a1 + 320))
        {
LABEL_55:
          LODWORD(v15) = *(a1 + 168);
          if (v15)
          {
            goto LABEL_56;
          }

          goto LABEL_60;
        }
      }

      else
      {
        v27 = *(a1 + 264);
        v28 = *(a1 + 272);
        if (v27 != v28)
        {
          v29 = *(a1 + 240);
          v30 = *(a1 + 264);
          do
          {
            v31 = *v30++;
            *(v29 + ((v31 >> 3) & 0x1FFFFFF8)) &= ~(1 << v31);
          }

          while (v30 != v28);
        }

        *(a1 + 272) = v27;
        sub_C3910C(a1, v16);
        sub_7E9A4(v47);
        v32 = *(a1 + 432);
        v33 = *(a1 + 440);
        while (v32 != v33)
        {
          v34 = *v32++;
          sub_C3D494(a1, v16, v34);
        }

        *(a1 + 624) = sub_7EA60(v47) + *(a1 + 624);
        v35 = *(a1 + 456);
        if (*(a1 + 248) > v35 && ((*(*(a1 + 240) + ((v35 >> 3) & 0x1FFFFFF8)) >> v35) & 1) != 0)
        {
          *(*(a1 + 464) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v16 & 0x3E);
        }

        if (*(a1 + 25) == 1 && *(a1 + 264) == *(a1 + 272))
        {
          goto LABEL_55;
        }
      }

      v42 = sub_C3E5B4(a1) + 744;
      if (*(a1 + 736) > v42)
      {
        v42 = *(a1 + 736);
      }

      *(a1 + 736) = v42;
      if (sub_C3A4E4(a1))
      {
        goto LABEL_55;
      }

      ++v16;
      v15 = *(a1 + 168);
      if (v16 >= v15)
      {
        goto LABEL_53;
      }
    }
  }

  LODWORD(v16) = 1;
LABEL_53:
  if (v15)
  {
LABEL_56:
    v43 = 0;
    v44 = v15;
    do
    {
      if ((*(*(a1 + 464) + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v43))
      {
        *(a1 + 656) = *(a1 + 656) + 1.0;
        v45 = *(a1 + 176);
        LODWORD(v47[0]) = (*(a1 + 456) << *v45) | v43;
        *(a1 + 648) += *(sub_C3AD10((v45 + 8), v47) + 4);
      }

      ++v43;
    }

    while (v44 != v43);
  }

LABEL_60:
  *(a1 + 664) = v16;
  *(a1 + 616) = sub_7EA60(v46);
}

__n128 sub_C3588C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v134 = a2 + 8;
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  HIBYTE(v170) = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(a2 + 32, &__p);
  __dst = v3;
  if (SHIBYTE(v170) < 0)
  {
    operator delete(__p);
  }

  *(a2 + 256) = 0;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 184) = *(a1 + 112);
  v136 = *(a1 + 168);
  if (v136 >= 2)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v135 = _Q0;
    v8 = 1;
    v139 = a1;
    while (((*(*(a1 + 464) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
LABEL_9:
      if (++v8 == v136)
      {
        goto LABEL_4;
      }
    }

    v9 = *(a1 + 176);
    LODWORD(__p) = (*(a1 + 456) << *v9) | v8;
    v10 = sub_C3AD10((v9 + 8), &__p);
    v11 = *(v10 + 4);
    v12 = *(v10 + 8);
    v13 = *(v10 + 12);
    v15 = *(v10 + 20);
    v14 = *(v10 + 24);
    v141 = *(a1 + 456);
    LOWORD(__p) = 0;
    BYTE2(__p) = 0;
    *(&__p + 4) = 0;
    HIDWORD(__p) = 0;
    v170 = -NAN;
    v171 = 0x7FFFFFFF;
    v172 = 0;
    v173 = 0x8000000080000000;
    v174 = 0;
    v175 = 0x8000000080000000;
    v176 = 0x7FFFFFFF;
    v177 = 0;
    v178 = 0x8000000080000000;
    v179 = 0;
    v180 = 0x8000000080000000;
    v181 = 0;
    v182 = 0xFFFFFFFF00000000;
    v183 = -1;
    v184 = 0;
    v186 = 0;
    v187 = 0;
    v188 = 0;
    v185 = 0x7FFFFFFF;
    v189 = 100;
    v190 = -1;
    v191 = v135;
    v192 = v135;
    v193 = v135;
    v194 = 0u;
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v16 = *(a1 + 40);
    if (sub_68312C(v16 + 3896) && *(v16 + 3944))
    {
      v17 = 1;
    }

    else
    {
      v18 = *(a1 + 40);
      v17 = sub_4C2B90(v18 + 3896) && *(v18 + 3960) != 0;
    }

    BYTE1(__p) = v17;
    v19 = *(a1 + 40);
    v138 = v8;
    if (sub_4C2B90(v19 + 3896))
    {
      DWORD2(__p) = 2 * (*(v19 + 3960) != 0);
      DWORD1(__p) = DWORD2(__p);
      if (v12 != -1)
      {
        goto LABEL_25;
      }

      goto LABEL_120;
    }

    *(&__p + 4) = 0;
    if (v12 == -1)
    {
LABEL_120:
      v108 = v194;
      if (v194 != *(&v194 + 1))
      {
        v109 = *(&v194 + 1) - 72;
        if (*(&v194 + 1) - 72 > v194)
        {
          do
          {
            v112 = *v108;
            v113 = *(v108 + 16);
            *(v108 + 8) = 0;
            *(v108 + 16) = 0;
            *v108 = 0;
            v114 = *(v108 + 24);
            v140 = v112;
            v142 = *(v108 + 32);
            v115 = *(v108 + 48);
            *(v108 + 32) = 0;
            *(v108 + 40) = 0;
            *(v108 + 48) = 0;
            *v154 = *(v108 + 56);
            *&v154[7] = *(v108 + 63);
            v116 = *(v109 + 24);
            v117 = *(v109 + 16);
            *v108 = *v109;
            *(v108 + 16) = v117;
            *(v109 + 8) = 0;
            *(v109 + 16) = 0;
            *v109 = 0;
            *(v108 + 24) = v116;
            v118 = *(v108 + 32);
            if (v118)
            {
              *(v108 + 40) = v118;
              operator delete(v118);
              *(v108 + 32) = 0;
              *(v108 + 40) = 0;
              *(v108 + 48) = 0;
            }

            *(v108 + 32) = *(v109 + 32);
            *(v108 + 48) = *(v109 + 48);
            *(v109 + 32) = 0;
            *(v109 + 40) = 0;
            *(v109 + 48) = 0;
            v119 = *(v109 + 56);
            *(v108 + 63) = *(v109 + 63);
            *(v108 + 56) = v119;
            v120 = *v109;
            if (*v109)
            {
              v121 = *(v109 + 8);
              v122 = *v109;
              if (v121 != v120)
              {
                do
                {
                  v123 = v121 - 168;
                  v124 = *(v121 - 8);
                  if (v124 != -1)
                  {
                    (off_2672A20[v124])(&v143, v121 - 168);
                  }

                  *(v121 - 8) = -1;
                  v121 -= 168;
                }

                while (v123 != v120);
                v122 = *v109;
              }

              *(v109 + 8) = v120;
              operator delete(v122);
            }

            *v109 = v140;
            *(v109 + 16) = v113;
            *(v109 + 24) = v114;
            v125 = *(v109 + 32);
            if (v125)
            {
              *(v109 + 40) = v125;
              operator delete(v125);
            }

            *(v109 + 32) = v142;
            *(v109 + 48) = v115;
            *(v109 + 56) = *v154;
            *(v109 + 63) = *&v154[7];
            v108 += 72;
            v109 -= 72;
          }

          while (v108 < v109);
        }
      }

      sub_A83920(&__p);
      a1 = v139;
      v8 = v138;
      v110 = *(a2 + 16);
      if (v110 >= *(a2 + 24))
      {
        v111 = sub_BA7328(v134, &__p);
      }

      else
      {
        sub_A32C84(*(a2 + 16), &__p);
        v111 = v110 + 296;
      }

      *(a2 + 16) = v111;
      if (*(&v198 + 1))
      {
        *&v199 = *(&v198 + 1);
        operator delete(*(&v198 + 1));
      }

      if (v197)
      {
        *(&v197 + 1) = v197;
        operator delete(v197);
      }

      if (*(&v195 + 1))
      {
        *&v196 = *(&v195 + 1);
        operator delete(*(&v195 + 1));
      }

      *v154 = &v194;
      sub_A3212C(v154);
      if (SHIBYTE(v188) < 0)
      {
        operator delete(v186);
      }

      goto LABEL_9;
    }

    while (1)
    {
LABEL_25:
      v160 = 0;
      v159 = 0u;
      v161 = 1;
      v163 = 0;
      v164 = 0;
      v162 = 0;
      v165 = 1;
      v166 = 0x8000000080000000;
      v167 = 0;
      v168 = 0;
      *v154 = 0;
      *&v154[16] = 0u;
      *v155 = 0xFFFFFFFFLL;
      *&v155[16] = 0u;
      *v158 = 1;
      v157[0] = 0x7FFFFFFFuLL;
      *&v154[4] = 0x8000000080000000;
      *&v154[12] = 0x7FFFFFFF;
      *&v154[20] = 0x8000000080000000;
      *&v155[8] = xmmword_2266560;
      *&v155[24] = -1;
      memset(v156, 0, sizeof(v156));
      v157[1] = 0uLL;
      *&v158[4] = xmmword_22A7500;
      if (v14 == 0xFFFFFFFF)
      {
        v161 = 1;
        v21 = *sub_A9C5E0((*(a1 + 48) + 88), v12);
        v22 = *sub_A9C5E0((*(a1 + 48) + 88), v141);
        if (*&v158[16] != -1)
        {
          if (*&v158[16] == 1)
          {
            *v154 = 0;
            *&v154[4] = v15;
            *&v154[8] = v11;
            *&v154[12] = v21;
            v23 = v12;
            *&v154[20] = v22;
            goto LABEL_78;
          }

          (off_2672A20[*&v158[16]])(&v143, v154);
        }

        *v154 = 0;
        *&v154[4] = v15;
        *&v154[12] = v21;
        *&v154[20] = v22;
        v23 = v12;
        *&v154[8] = v11;
        *&v158[16] = 1;
LABEL_78:
        v67 = *(&v159 + 1);
        if (*(&v159 + 1) >= v160)
        {
          goto LABEL_79;
        }

        goto LABEL_71;
      }

      v143 = xmmword_2297BF0;
      LOWORD(v144) = 0;
      *(&v144 + 4) = 0x8000000080000000;
      WORD6(v144) = 0;
      *v145 = xmmword_22A7450;
      *&v145[16] = -COERCE_DOUBLE(0x8000000080000000);
      v146 = 0uLL;
      v147 = 0uLL;
      v148 = 0uLL;
      *&v145[24] = -1;
      v149 = 0x7FFFFFFF;
      v151 = 0;
      v152 = 0;
      v150 = 0;
      LOBYTE(v153) = 1;
      *(&v153 + 4) = 0x8000000080000000;
      HIDWORD(v153) = 0;
      v161 = 0;
      v24 = *sub_A9C5E0((*(a1 + 56) + 88), v14);
      *v145 = v24;
      *&v145[8] = v13;
      *&v145[16] = v15;
      *&v145[20] = v12;
      v25 = *(a1 + 40);
      *v209 = *sub_A9C5E0((*(a1 + 48) + 88), v141);
      v26 = sub_A79708(v200, v25, v24, v12, 0, 0);
      v206 = v205 + 12 * *&v145[8];
      if (v207 == 1)
      {
        v208 = *&v145[12];
      }

      if (v204)
      {
        v27 = *(v204 + 4 * ((v202 - *&v201[4]) >> 4));
      }

      else
      {
        v27 = 0;
      }

      sub_AA98A0(v26, v209, v27);
      _CF = v202 < v203 && v202 >= *&v201[4];
      v29 = (v202 - *&v201[4]) >> 4;
      if (!_CF)
      {
        LODWORD(v29) = -1;
      }

      *&v145[24] = v29;
      v30 = *(a1 + 48);
      v31 = *&v145[20];
      v32 = sub_A57920((*(a1 + 40) + 4136), *v145);
      v33 = (v32 - *v32);
      if (*v33 >= 9u && (v34 = v33[4]) != 0)
      {
        v35 = (v32 + v34 + *(v32 + v34));
      }

      else
      {
        v35 = 0;
      }

      *v200 = __ROR8__(*sub_A571D4(v35, v31), 32);
      v36 = sub_B34C5C(v30, v200);
      v23 = *(v36 + 8);
      if (v23 == -1)
      {
        v37 = *(v30 + 112);
        *(v30 + 112) = v37 + 1;
        *(v36 + 8) = v37;
        v38 = v36;
        sub_2512DC(v30 + 88, v200);
        v23 = *(v38 + 8);
      }

      v39 = *&v145[20];
      v40 = sub_A57920((*(a1 + 40) + 4136), *v145);
      v41 = (v40 - *v40);
      if (*v41 >= 9u && (v42 = v41[4]) != 0)
      {
        v43 = (v40 + v42 + *(v40 + v42));
      }

      else
      {
        v43 = 0;
      }

      DWORD1(v143) = 10 * *(sub_A571D4(v43, v39) + 8);
      v44 = *(a1 + 40);
      v45 = *v145;
      v46 = *&v145[20];
      *v200 = sub_A56F04((v44 + 4136), *v145, *&v145[20], *&v145[8]);
      *&v200[8] = v47;
      v48 = sub_A57920((v44 + 4136), v45);
      v49 = (v48 - *v48);
      if (*v49 >= 9u && (v50 = v49[4]) != 0)
      {
        v51 = (v48 + v50 + *(v48 + v50));
      }

      else
      {
        v51 = 0;
      }

      v52 = *(sub_A571D4(v51, v46) + 12);
      v53 = *&v145[12] == -1 ? 0x7FFFFFFF : *&v145[16];
      *(&v143 + 1) = sub_A56700((v44 + 4184), v200, v52, v53);
      LOWORD(v144) = v54;
      v55 = *(a1 + 40);
      v56 = *v145;
      v57 = *&v145[24];
      *v200 = sub_A56F04((v55 + 4136), *v145, *&v145[24], *&v145[8]);
      *&v200[8] = v58;
      v59 = sub_A57920((v55 + 4136), v56);
      v60 = (v59 - *v59);
      if (*v60 >= 9u && (v61 = v60[4]) != 0)
      {
        v62 = (v59 + v61 + *(v59 + v61));
      }

      else
      {
        v62 = 0;
      }

      v63 = *(sub_A571D4(v62, v57) + 12);
      v64 = *&v145[12] == -1 ? 0x7FFFFFFF : *&v145[16];
      *(&v144 + 4) = sub_A56A5C((v55 + 4184), v200, v63, v64);
      WORD6(v144) = v65;
      if (*&v158[16])
      {
        break;
      }

      *v154 = v143;
      *&v154[16] = v144;
      *v155 = *v145;
      *&v155[12] = *&v145[12];
      sub_A349D4(v156, v146, *(&v146 + 1), 0xEEEEEEEEEEEEEEEFLL * ((*(&v146 + 1) - v146) >> 2));
      sub_A349D4(&v156[1] + 1, *(&v147 + 1), v148, 0xEEEEEEEEEEEEEEEFLL * ((v148 - *(&v147 + 1)) >> 2));
      LODWORD(v157[0]) = v149;
      sub_956400(v157 + 1, v150, v151, 0xCCCCCCCCCCCCCCCDLL * ((v151 - v150) >> 3));
      *v158 = v153;
      v66 = v150;
      if (v150)
      {
        goto LABEL_65;
      }

LABEL_66:
      if (*(&v147 + 1))
      {
        *&v148 = *(&v147 + 1);
        operator delete(*(&v147 + 1));
      }

      if (v146)
      {
        *(&v146 + 1) = v146;
        operator delete(v146);
      }

      v67 = *(&v159 + 1);
      if (*(&v159 + 1) >= v160)
      {
LABEL_79:
        v69 = sub_AA9AE0(&v159, v154);
        goto LABEL_80;
      }

LABEL_71:
      *v67 = 0;
      *(v67 + 160) = -1;
      v68 = *&v158[16];
      if (*&v158[16] != -1)
      {
        *&v143 = v67;
        (off_2672A30[*&v158[16]])(&v143, v154);
        *(v67 + 160) = v68;
      }

      v69 = v67 + 168;
LABEL_80:
      *(&v159 + 1) = v69;
      v70 = *(&v194 + 1);
      if (*(&v194 + 1) >= v195)
      {
        v71 = sub_BA71A0(&v194, &v159);
      }

      else
      {
        sub_A33054(*(&v194 + 1), &v159);
        v71 = v70 + 72;
      }

      *(&v194 + 1) = v71;
      LODWORD(v8) = v8 - 1;
      v72 = *(a1 + 176);
      v73 = v72 + 32;
      v209[0] = (v23 << *v72) | v8;
      v74 = sub_C3AF54(v72 + 32, v209);
      v141 = v23;
      if (v74 != -1)
      {
        v77 = *(v72 + 80) + 16 * (v74 / 0x30);
        v78 = (v77 + 10);
        v79 = v74 % 0x30;
        if (v74 % 0x30 < 9)
        {
          v83 = 0;
        }

        else
        {
          v80 = 48 * (v74 / 0x30);
          v81 = (v80 - v74 + 7);
          if (v81 <= 0xFFF7)
          {
            LOWORD(v81) = -9;
          }

          v82 = v81 + v74 - v80;
          if (v82 < 8u)
          {
            v83 = 0;
            v84 = v74 % 0x30;
            v85 = (v77 + 10);
            goto LABEL_97;
          }

          v88 = 0;
          v89 = 0;
          v90 = (v82 >> 3) + 1;
          LOWORD(v84) = v79 - 8 * (((v82 >> 3) + 1) & 0x3FFE);
          v85 = &v78[v90 & 0x3FFE];
          v91 = (v77 + 11);
          v92 = v90 & 0x3FFE;
          do
          {
            v93 = *(v91 - 1);
            v94 = *v91;
            v91 += 2;
            v88 += byte_22ABE1B[v93];
            v89 += byte_22ABE1B[v94];
            v92 -= 2;
          }

          while (v92);
          v83 = v89 + v88;
          if ((v90 & 0x3FFE) != v90)
          {
            do
            {
LABEL_97:
              v95 = *v85++;
              v83 += byte_22ABE1B[v95];
              LOWORD(v84) = v84 - 8;
            }

            while (v84 > 8u);
          }

          v78 += ((v79 - 9) >> 3) + 1;
          LOBYTE(v79) = v84;
        }

        v96 = *(v72 + 88);
        v87 = *v77 + 28 * (v83 + byte_22ABE1B[~(-1 << v79) & *v78]);
        if (*v77 + 28 * *(v77 + 8) == v87 && v77 + 16 != v96)
        {
          v98 = v77 + 32;
          do
          {
            if (*(v98 - 8))
            {
              v99 = 1;
            }

            else
            {
              v99 = v98 == v96;
            }

            v98 += 16;
          }

          while (!v99);
          v87 = *(v98 - 32);
        }

        goto LABEL_110;
      }

      v86 = v75;
      if (sub_C3B3A4(v73, 1))
      {
        *v200 = v209[0];
        *&v200[4] = xmmword_22A8400;
        *v201 = -COERCE_DOUBLE(0x8000000080000000);
        v76 = sub_C3B6B4(v73, v200, &v143);
      }

      else
      {
        *v200 = v209[0];
        *&v200[4] = xmmword_22A8400;
        *v201 = -COERCE_DOUBLE(0x8000000080000000);
        sub_C3B8E4(v73, v200, v86, &v143);
      }

      v87 = *v145;
LABEL_110:
      v11 = *(v87 + 4);
      v12 = *(v87 + 8);
      v13 = *(v87 + 12);
      v15 = *(v87 + 20);
      v14 = *(v87 + 24);
      if (*&v158[16] != -1)
      {
        (off_2672A20[*&v158[16]])(&v143, v154, v76);
      }

      if (v162)
      {
        v163 = v162;
        operator delete(v162);
      }

      v100 = v159;
      if (v159)
      {
        v101 = *(&v159 + 1);
        v20 = v159;
        if (*(&v159 + 1) != v159)
        {
          v102 = v8;
          v103 = v15;
          v104 = v13;
          v105 = v11;
          do
          {
            v106 = v101 - 168;
            v107 = *(v101 - 8);
            if (v107 != -1)
            {
              (off_2672A20[v107])(v154, v101 - 168);
            }

            *(v101 - 8) = -1;
            v101 -= 168;
          }

          while (v106 != v100);
          v20 = v159;
          v11 = v105;
          v13 = v104;
          v15 = v103;
          LODWORD(v8) = v102;
        }

        *(&v159 + 1) = v100;
        operator delete(v20);
      }

      a1 = v139;
      if (v12 == -1)
      {
        goto LABEL_120;
      }
    }

    *v200 = v154;
    *&v200[8] = &v143;
    sub_BB0908(v200);
    v66 = v150;
    if (!v150)
    {
      goto LABEL_66;
    }

LABEL_65:
    v151 = v66;
    operator delete(v66);
    goto LABEL_66;
  }

LABEL_4:
  if (__dst != (a1 + 592))
  {
    v4 = *(a1 + 615);
    if (*(a2 + 55) < 0)
    {
      if (v4 >= 0)
      {
        v126 = (a1 + 592);
      }

      else
      {
        v126 = *(a1 + 592);
      }

      if (v4 >= 0)
      {
        v127 = *(a1 + 615);
      }

      else
      {
        v127 = *(a1 + 600);
      }

      sub_13B38(__dst, v126, v127);
    }

    else if ((*(a1 + 615) & 0x80) != 0)
    {
      sub_13A68(__dst, *(a1 + 592), *(a1 + 600));
    }

    else
    {
      *__dst = *(a1 + 592);
      __dst[2] = *(a1 + 608);
    }
  }

  v128 = *(a1 + 696);
  *(a2 + 120) = *(a1 + 680);
  *(a2 + 136) = v128;
  v129 = *(a1 + 728);
  *(a2 + 152) = *(a1 + 712);
  *(a2 + 168) = v129;
  v130 = *(a1 + 632);
  *(a2 + 56) = *(a1 + 616);
  *(a2 + 72) = v130;
  result = *(a1 + 648);
  v132 = *(a1 + 664);
  *(a2 + 88) = result;
  *(a2 + 104) = v132;
  return result;
}

void sub_C36730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  sub_A7850C(a10);
  _Unwind_Resume(a1);
}

void sub_C36754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(a15 + 16) = v15;
  sub_A7847C(&STACK[0x260]);
  sub_A37AFC(a15);
  _Unwind_Resume(a1);
}

void sub_C36790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_A7847C(&STACK[0x260]);
  sub_A37AFC(a15);
  _Unwind_Resume(a1);
}

void sub_C367AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_A3238C(v55);
  STACK[0x220] = v55;
  sub_BA94A4(&a55);
  sub_A785D0(&STACK[0x218]);
  sub_A7847C(&STACK[0x260]);
  sub_A37AFC(a15);
  _Unwind_Resume(a1);
}

void sub_C36834(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v46);
  v4 = *(a2 + 16);
  *(a1 + 112) = *a2;
  *(a1 + 128) = v4;
  *(a1 + 144) = *(a2 + 32);
  *(a1 + 152) = *(a2 + 40);
  sub_C3E8FC(a1);
  v5 = *(a1 + 48);
  v47[0] = 0x1FFFFFFFELL;
  v6 = sub_B34C5C(v5, v47);
  v7 = *(v6 + 8);
  if (v7 != -1)
  {
    *(a1 + 456) = v7;
    if (*(a1 + 33) != 1)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (!sub_A822FC(*(a1 + 40)))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v8 = *(v5 + 112);
  *(v5 + 112) = v8 + 1;
  *(v6 + 8) = v8;
  v9 = v6;
  sub_2512DC(v5 + 88, v47);
  *(a1 + 456) = *(v9 + 8);
  if (*(a1 + 33) == 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = *(a1 + 48);
  v47[0] = 0x1FFFFFFFDLL;
  v11 = sub_B34C5C(v10, v47);
  v12 = *(v11 + 8);
  if (v12 == -1)
  {
    v13 = *(v10 + 112);
    *(v10 + 112) = v13 + 1;
    *(v11 + 8) = v13;
    v14 = v11;
    sub_2512DC(v10 + 88, v47);
    v12 = *(v14 + 8);
  }

  sub_C412F8(a1, 0, v12, 0, *(a1 + 116));
LABEL_9:
  LODWORD(v15) = *(a1 + 168);
  if (v15 >= 2)
  {
    v16 = 1;
    while (1)
    {
      if (*(a1 + 25) & 1) == 0 && v16 >= 2 && (*(a1 + 27))
      {
        v17 = *(a1 + 360);
        v18 = *(a1 + 368);
        if (v17 == v18)
        {
          v26 = *(a1 + 360);
        }

        else
        {
          do
          {
            v19 = *v17;
            v20 = *(a1 + 176);
            LODWORD(v47[0]) = (*v17 << *v20) | (v16 - 2);
            v21 = *(sub_C3AD10((v20 + 8), v47) + 4);
            v22 = *(a1 + 176);
            LODWORD(v47[0]) = (v19 << *v22) | v16;
            v23 = sub_C3AD10((v22 + 8), v47);
            if (v21 != 0x7FFFFFFF)
            {
              v24 = *(v23 + 4);
              if (v24 == 0x7FFFFFFF || v24 < v21)
              {
                *(v23 + 4) = v21;
              }
            }

            ++v17;
          }

          while (v17 != v18);
          v17 = *(a1 + 360);
          v26 = *(a1 + 368);
        }

        *(a1 + 696) = *(a1 + 696) + ((v26 - v17) >> 2);
      }

      if (v16)
      {
        v36 = *(a1 + 312);
        v37 = *(a1 + 320);
        if (v36 != v37)
        {
          v38 = *(a1 + 288);
          v39 = *(a1 + 312);
          do
          {
            v40 = *v39++;
            *(v38 + ((v40 >> 3) & 0x1FFFFFF8)) &= ~(1 << v40);
          }

          while (v39 != v37);
        }

        *(a1 + 320) = v36;
        sub_C3EBA8(a1, v16);
        sub_C3EDBC(a1, v16);
        v41 = *(a1 + 456);
        if (*(a1 + 296) > v41 && ((*(*(a1 + 288) + ((v41 >> 3) & 0x1FFFFFF8)) >> v41) & 1) != 0)
        {
          *(*(a1 + 464) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        }

        if (*(a1 + 25) == 1 && *(a1 + 312) == *(a1 + 320))
        {
LABEL_55:
          LODWORD(v15) = *(a1 + 168);
          if (v15)
          {
            goto LABEL_56;
          }

          goto LABEL_60;
        }
      }

      else
      {
        v27 = *(a1 + 264);
        v28 = *(a1 + 272);
        if (v27 != v28)
        {
          v29 = *(a1 + 240);
          v30 = *(a1 + 264);
          do
          {
            v31 = *v30++;
            *(v29 + ((v31 >> 3) & 0x1FFFFFF8)) &= ~(1 << v31);
          }

          while (v30 != v28);
        }

        *(a1 + 272) = v27;
        sub_C3FF20(a1, v16);
        sub_7E9A4(v47);
        v32 = *(a1 + 432);
        v33 = *(a1 + 440);
        while (v32 != v33)
        {
          v34 = *v32++;
          sub_C416C4(a1, v16, v34);
        }

        *(a1 + 624) = sub_7EA60(v47) + *(a1 + 624);
        v35 = *(a1 + 456);
        if (*(a1 + 248) > v35 && ((*(*(a1 + 240) + ((v35 >> 3) & 0x1FFFFFF8)) >> v35) & 1) != 0)
        {
          *(*(a1 + 464) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v16 & 0x3E);
        }

        if (*(a1 + 25) == 1 && *(a1 + 264) == *(a1 + 272))
        {
          goto LABEL_55;
        }
      }

      v42 = sub_C3E5B4(a1) + 744;
      if (*(a1 + 736) > v42)
      {
        v42 = *(a1 + 736);
      }

      *(a1 + 736) = v42;
      if (sub_C3A4E4(a1))
      {
        goto LABEL_55;
      }

      ++v16;
      v15 = *(a1 + 168);
      if (v16 >= v15)
      {
        goto LABEL_53;
      }
    }
  }

  LODWORD(v16) = 1;
LABEL_53:
  if (v15)
  {
LABEL_56:
    v43 = 0;
    v44 = v15;
    do
    {
      if ((*(*(a1 + 464) + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v43))
      {
        *(a1 + 656) = *(a1 + 656) + 1.0;
        v45 = *(a1 + 176);
        LODWORD(v47[0]) = (*(a1 + 456) << *v45) | v43;
        *(a1 + 648) += *(sub_C3AD10((v45 + 8), v47) + 4);
      }

      ++v43;
    }

    while (v44 != v43);
  }

LABEL_60:
  *(a1 + 664) = v16;
  *(a1 + 616) = sub_7EA60(v46);
}

__n128 sub_C36CDC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v116 = a2 + 8;
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  HIBYTE(v151) = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(a2 + 32, &__p);
  __dst = v3;
  if (SHIBYTE(v151) < 0)
  {
    operator delete(__p);
  }

  *(a2 + 256) = 0;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 184) = *(a1 + 112);
  v118 = *(a1 + 168);
  if (v118 >= 2)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v117 = _Q0;
    v8 = 1;
    v121 = a1;
    while (((*(*(a1 + 464) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
LABEL_9:
      if (++v8 == v118)
      {
        goto LABEL_4;
      }
    }

    v9 = *(a1 + 176);
    LODWORD(__p) = (*(a1 + 456) << *v9) | v8;
    v10 = sub_C3AD10((v9 + 8), &__p);
    v12 = *(v10 + 4);
    v11 = *(v10 + 8);
    v122 = *(v10 + 12);
    v14 = *(v10 + 20);
    v13 = *(v10 + 24);
    v123 = *(a1 + 456);
    LOWORD(__p) = 0;
    BYTE2(__p) = 0;
    *(&__p + 4) = 0;
    HIDWORD(__p) = 0;
    v151 = -NAN;
    v152 = 0x7FFFFFFF;
    v153 = 0;
    v154 = 0x8000000080000000;
    v155 = 0;
    v156 = 0x8000000080000000;
    v157 = 0x7FFFFFFF;
    v158 = 0;
    v159 = 0x8000000080000000;
    v160 = 0;
    v161 = 0x8000000080000000;
    v162 = 0;
    v163 = 0xFFFFFFFF00000000;
    v164 = -1;
    v165 = 0;
    v167 = 0;
    v168 = 0;
    v169 = 0;
    v166 = 0x7FFFFFFF;
    v170 = 100;
    v171 = -1;
    v172 = v117;
    v173 = v117;
    v174 = v117;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v15 = *(a1 + 40);
    if (sub_68312C(v15 + 3896) && *(v15 + 3944))
    {
      v16 = 1;
    }

    else
    {
      v17 = *(a1 + 40);
      v16 = sub_4C2B90(v17 + 3896) && *(v17 + 3960) != 0;
    }

    BYTE1(__p) = v16;
    v18 = *(a1 + 40);
    v120 = v8;
    if (sub_4C2B90(v18 + 3896))
    {
      DWORD2(__p) = 2 * (*(v18 + 3960) != 0);
      DWORD1(__p) = DWORD2(__p);
      if (v11 != -1)
      {
        goto LABEL_25;
      }

      goto LABEL_120;
    }

    *(&__p + 4) = 0;
    if (v11 == -1)
    {
LABEL_120:
      sub_A83920(&__p);
      v8 = v120;
      v106 = *(a2 + 16);
      if (v106 >= *(a2 + 24))
      {
        v107 = sub_BA7328(v116, &__p);
      }

      else
      {
        sub_A32C84(*(a2 + 16), &__p);
        v107 = v106 + 296;
      }

      *(a2 + 16) = v107;
      if (*(&v179 + 1))
      {
        *&v180 = *(&v179 + 1);
        operator delete(*(&v179 + 1));
      }

      if (v178)
      {
        *(&v178 + 1) = v178;
        operator delete(v178);
      }

      if (*(&v176 + 1))
      {
        *&v177 = *(&v176 + 1);
        operator delete(*(&v176 + 1));
      }

      *v135 = &v175;
      sub_A3212C(v135);
      if (SHIBYTE(v169) < 0)
      {
        operator delete(v167);
      }

      goto LABEL_9;
    }

    while (1)
    {
LABEL_25:
      v141 = 0;
      v140 = 0u;
      v142 = 1;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v146 = 1;
      v147 = 0x8000000080000000;
      v148 = 0;
      v149 = 0;
      *v135 = 0;
      *&v135[16] = 0u;
      *&v136[16] = 0u;
      *v139 = 1;
      *&v135[4] = 0x8000000080000000;
      *&v135[12] = 0x7FFFFFFF;
      *&v135[20] = 0x8000000080000000;
      *&v136[8] = xmmword_2266560;
      *v136 = 0xFFFFFFFFLL;
      *&v136[24] = -1;
      memset(v137, 0, sizeof(v137));
      v138[0] = 0x7FFFFFFFu;
      v138[1] = 0uLL;
      *&v139[4] = xmmword_22A7500;
      if (v13 == 0xFFFFFFFF)
      {
        v142 = 1;
        v20 = *sub_A9C5E0((*(a1 + 48) + 88), v123);
        v21 = *sub_A9C5E0((*(a1 + 48) + 88), v11);
        if (*&v139[16] != -1)
        {
          if (*&v139[16] == 1)
          {
            *v135 = 0;
            *&v135[4] = v12;
            *&v135[8] = v14;
            *&v135[12] = v20;
            v22 = v11;
            *&v135[20] = v21;
            goto LABEL_78;
          }

          (off_2672A20[*&v139[16]])(&v124, v135);
        }

        *v135 = 0;
        *&v135[4] = v12;
        *&v135[12] = v20;
        *&v135[20] = v21;
        v22 = v11;
        *&v135[8] = v14;
        *&v139[16] = 1;
LABEL_78:
        a1 = v121;
        v66 = *(&v140 + 1);
        if (*(&v140 + 1) >= v141)
        {
          goto LABEL_79;
        }

        goto LABEL_71;
      }

      v124 = xmmword_2297BF0;
      LOWORD(v125) = 0;
      *(&v125 + 4) = 0x8000000080000000;
      WORD6(v125) = 0;
      *v126 = xmmword_22A7450;
      *&v126[16] = -COERCE_DOUBLE(0x8000000080000000);
      v127 = 0uLL;
      v128 = 0uLL;
      v129 = 0uLL;
      *&v126[24] = -1;
      v130 = 0x7FFFFFFF;
      v132 = 0;
      v133 = 0;
      v131 = 0;
      LOBYTE(v134) = 1;
      *(&v134 + 4) = 0x8000000080000000;
      HIDWORD(v134) = 0;
      v142 = 0;
      v23 = *sub_A9C5E0((*(a1 + 56) + 88), v13);
      *v126 = v23;
      *&v126[8] = v122;
      *&v126[16] = v14;
      *&v126[24] = v11;
      v24 = *(a1 + 40);
      *v190 = *sub_A9C5E0((*(a1 + 48) + 88), v123);
      v25 = sub_A79708(v181, v24, v23, v11, 0, 0);
      v187 = v186 + 12 * *&v126[8];
      if (v188 == 1)
      {
        v189 = *&v126[12];
      }

      if (v185)
      {
        v26 = *(v185 + 4 * ((v183 - *&v182[4]) >> 4));
      }

      else
      {
        v26 = 0;
      }

      sub_AB3DEC(v25, v190, v26);
      _CF = v183 < v184 && v183 >= *&v182[4];
      v28 = (v183 - *&v182[4]) >> 4;
      if (!_CF)
      {
        LODWORD(v28) = -1;
      }

      *&v126[20] = v28;
      v29 = *(a1 + 48);
      v30 = *&v126[24];
      v31 = sub_A57920((*(a1 + 40) + 4136), *v126);
      v32 = (v31 - *v31);
      if (*v32 >= 9u && (v33 = v32[4]) != 0)
      {
        v34 = (v31 + v33 + *(v31 + v33));
      }

      else
      {
        v34 = 0;
      }

      *v181 = __ROR8__(*sub_A571D4(v34, v30), 32);
      v35 = sub_B34C5C(v29, v181);
      v22 = *(v35 + 8);
      if (v22 == -1)
      {
        v36 = *(v29 + 112);
        *(v29 + 112) = v36 + 1;
        *(v35 + 8) = v36;
        v37 = v35;
        sub_2512DC(v29 + 88, v181);
        v22 = *(v37 + 8);
      }

      v38 = *&v126[20];
      v39 = sub_A57920((*(a1 + 40) + 4136), *v126);
      v40 = (v39 - *v39);
      if (*v40 >= 9u && (v41 = v40[4]) != 0)
      {
        v42 = (v39 + v41 + *(v39 + v41));
      }

      else
      {
        v42 = 0;
      }

      DWORD1(v124) = 10 * *(sub_A571D4(v42, v38) + 8);
      v43 = *(a1 + 40);
      v44 = *v126;
      v45 = *&v126[20];
      *v181 = sub_A56F04((v43 + 4136), *v126, *&v126[20], *&v126[8]);
      *&v181[8] = v46;
      v47 = sub_A57920((v43 + 4136), v44);
      v48 = (v47 - *v47);
      if (*v48 >= 9u && (v49 = v48[4]) != 0)
      {
        v50 = (v47 + v49 + *(v47 + v49));
      }

      else
      {
        v50 = 0;
      }

      v51 = *(sub_A571D4(v50, v45) + 12);
      v52 = *&v126[12] == -1 ? 0x7FFFFFFF : *&v126[16];
      *(&v124 + 1) = sub_A56700((v43 + 4184), v181, v51, v52);
      LOWORD(v125) = v53;
      v54 = *(a1 + 40);
      v55 = *v126;
      v56 = *&v126[24];
      *v181 = sub_A56F04((v54 + 4136), *v126, *&v126[24], *&v126[8]);
      *&v181[8] = v57;
      v58 = sub_A57920((v54 + 4136), v55);
      v59 = (v58 - *v58);
      if (*v59 >= 9u && (v60 = v59[4]) != 0)
      {
        v61 = (v58 + v60 + *(v58 + v60));
      }

      else
      {
        v61 = 0;
      }

      v62 = *(sub_A571D4(v61, v56) + 12);
      v63 = *&v126[12] == -1 ? 0x7FFFFFFF : *&v126[16];
      *(&v125 + 4) = sub_A56A5C((v54 + 4184), v181, v62, v63);
      WORD6(v125) = v64;
      if (*&v139[16])
      {
        break;
      }

      *v135 = v124;
      *&v135[16] = v125;
      *v136 = *v126;
      *&v136[12] = *&v126[12];
      sub_A349D4(v137, v127, *(&v127 + 1), 0xEEEEEEEEEEEEEEEFLL * ((*(&v127 + 1) - v127) >> 2));
      sub_A349D4(&v137[1] + 1, *(&v128 + 1), v129, 0xEEEEEEEEEEEEEEEFLL * ((v129 - *(&v128 + 1)) >> 2));
      LODWORD(v138[0]) = v130;
      sub_956400(v138 + 1, v131, v132, 0xCCCCCCCCCCCCCCCDLL * ((v132 - v131) >> 3));
      *v139 = v134;
      v65 = v131;
      if (v131)
      {
        goto LABEL_65;
      }

LABEL_66:
      if (*(&v128 + 1))
      {
        *&v129 = *(&v128 + 1);
        operator delete(*(&v128 + 1));
      }

      if (v127)
      {
        *(&v127 + 1) = v127;
        operator delete(v127);
      }

      v66 = *(&v140 + 1);
      if (*(&v140 + 1) >= v141)
      {
LABEL_79:
        v68 = sub_AA9AE0(&v140, v135);
        goto LABEL_80;
      }

LABEL_71:
      *v66 = 0;
      *(v66 + 160) = -1;
      v67 = *&v139[16];
      if (*&v139[16] != -1)
      {
        *&v124 = v66;
        (off_2672A30[*&v139[16]])(&v124, v135);
        *(v66 + 160) = v67;
      }

      v68 = v66 + 168;
LABEL_80:
      *(&v140 + 1) = v68;
      v69 = *(&v175 + 1);
      if (*(&v175 + 1) >= v176)
      {
        v70 = sub_BA71A0(&v175, &v140);
      }

      else
      {
        sub_A33054(*(&v175 + 1), &v140);
        v70 = v69 + 72;
      }

      *(&v175 + 1) = v70;
      LODWORD(v8) = v8 - 1;
      v71 = *(a1 + 176);
      v72 = v71 + 32;
      v190[0] = (v22 << *v71) | v8;
      v73 = sub_C3AF54(v71 + 32, v190);
      v123 = v22;
      if (v73 != -1)
      {
        v76 = *(v71 + 80) + 16 * (v73 / 0x30);
        v77 = (v76 + 10);
        v78 = v73 % 0x30;
        if (v73 % 0x30 < 9)
        {
          v82 = 0;
        }

        else
        {
          v79 = 48 * (v73 / 0x30);
          v80 = (v79 - v73 + 7);
          if (v80 <= 0xFFF7)
          {
            LOWORD(v80) = -9;
          }

          v81 = v80 + v73 - v79;
          if (v81 < 8u)
          {
            v82 = 0;
            v83 = v73 % 0x30;
            v84 = (v76 + 10);
            goto LABEL_97;
          }

          v87 = 0;
          v88 = 0;
          v89 = (v81 >> 3) + 1;
          LOWORD(v83) = v78 - 8 * (((v81 >> 3) + 1) & 0x3FFE);
          v84 = &v77[v89 & 0x3FFE];
          v90 = (v76 + 11);
          v91 = v89 & 0x3FFE;
          do
          {
            v92 = *(v90 - 1);
            v93 = *v90;
            v90 += 2;
            v87 += byte_22ABE1B[v92];
            v88 += byte_22ABE1B[v93];
            v91 -= 2;
          }

          while (v91);
          v82 = v88 + v87;
          if ((v89 & 0x3FFE) != v89)
          {
            do
            {
LABEL_97:
              v94 = *v84++;
              v82 += byte_22ABE1B[v94];
              LOWORD(v83) = v83 - 8;
            }

            while (v83 > 8u);
          }

          v77 += ((v78 - 9) >> 3) + 1;
          LOBYTE(v78) = v83;
        }

        v95 = *(v71 + 88);
        v86 = *v76 + 28 * (v82 + byte_22ABE1B[~(-1 << v78) & *v77]);
        if (*v76 + 28 * *(v76 + 8) == v86 && v76 + 16 != v95)
        {
          v97 = v76 + 32;
          do
          {
            if (*(v97 - 8))
            {
              v98 = 1;
            }

            else
            {
              v98 = v97 == v95;
            }

            v97 += 16;
          }

          while (!v98);
          v86 = *(v97 - 32);
        }

        goto LABEL_110;
      }

      v85 = v74;
      if (sub_C3B3A4(v72, 1))
      {
        *v181 = v190[0];
        *&v181[4] = xmmword_22A8400;
        *v182 = -COERCE_DOUBLE(0x8000000080000000);
        v75 = sub_C3B6B4(v72, v181, &v124);
      }

      else
      {
        *v181 = v190[0];
        *&v181[4] = xmmword_22A8400;
        *v182 = -COERCE_DOUBLE(0x8000000080000000);
        sub_C3B8E4(v72, v181, v85, &v124);
      }

      v86 = *v126;
LABEL_110:
      v12 = *(v86 + 4);
      v11 = *(v86 + 8);
      v99 = *(v86 + 12);
      v14 = *(v86 + 20);
      v13 = *(v86 + 24);
      if (*&v139[16] != -1)
      {
        (off_2672A20[*&v139[16]])(&v124, v135, v75);
      }

      v122 = v99;
      if (v143)
      {
        v144 = v143;
        operator delete(v143);
      }

      v100 = v140;
      if (v140)
      {
        v101 = v14;
        v102 = v12;
        v103 = *(&v140 + 1);
        v19 = v140;
        if (*(&v140 + 1) != v140)
        {
          do
          {
            v104 = v103 - 168;
            v105 = *(v103 - 8);
            if (v105 != -1)
            {
              (off_2672A20[v105])(v135, v103 - 168);
            }

            *(v103 - 8) = -1;
            v103 -= 168;
          }

          while (v104 != v100);
          v19 = v140;
          a1 = v121;
        }

        *(&v140 + 1) = v100;
        operator delete(v19);
        v12 = v102;
        v14 = v101;
      }

      if (v11 == -1)
      {
        goto LABEL_120;
      }
    }

    *v181 = v135;
    *&v181[8] = &v124;
    sub_BB0908(v181);
    v65 = v131;
    if (!v131)
    {
      goto LABEL_66;
    }

LABEL_65:
    v132 = v65;
    operator delete(v65);
    goto LABEL_66;
  }

LABEL_4:
  if (__dst != (a1 + 592))
  {
    v4 = *(a1 + 615);
    if (*(a2 + 55) < 0)
    {
      if (v4 >= 0)
      {
        v108 = (a1 + 592);
      }

      else
      {
        v108 = *(a1 + 592);
      }

      if (v4 >= 0)
      {
        v109 = *(a1 + 615);
      }

      else
      {
        v109 = *(a1 + 600);
      }

      sub_13B38(__dst, v108, v109);
    }

    else if ((*(a1 + 615) & 0x80) != 0)
    {
      sub_13A68(__dst, *(a1 + 592), *(a1 + 600));
    }

    else
    {
      *__dst = *(a1 + 592);
      __dst[2] = *(a1 + 608);
    }
  }

  v110 = *(a1 + 696);
  *(a2 + 120) = *(a1 + 680);
  *(a2 + 136) = v110;
  v111 = *(a1 + 728);
  *(a2 + 152) = *(a1 + 712);
  *(a2 + 168) = v111;
  v112 = *(a1 + 632);
  *(a2 + 56) = *(a1 + 616);
  *(a2 + 72) = v112;
  result = *(a1 + 648);
  v114 = *(a1 + 664);
  *(a2 + 88) = result;
  *(a2 + 104) = v114;
  return result;
}

void sub_C37A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  sub_A7850C(a10);
  _Unwind_Resume(a1);
}

void sub_C37A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(a15 + 16) = v15;
  sub_A7847C(&STACK[0x240]);
  sub_A37AFC(a15);
  _Unwind_Resume(a1);
}

void sub_C37A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_A7847C(&STACK[0x240]);
  sub_A37AFC(a15);
  _Unwind_Resume(a1);
}

void sub_C37A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_A3238C(v72);
  STACK[0x200] = v72;
  sub_BA94A4(&a51);
  sub_A785D0(&a72);
  sub_A7847C(&STACK[0x240]);
  sub_A37AFC(a15);
  _Unwind_Resume(a1);
}

double sub_C37B04(uint64_t a1)
{
  v2 = *(a1 + 264);
  v3 = *(a1 + 272);
  if (v2 != v3)
  {
    v4 = *(a1 + 240);
    v5 = *(a1 + 264);
    do
    {
      v6 = *v5++;
      *(v4 + ((v6 >> 3) & 0x1FFFFFF8)) &= ~(1 << v6);
    }

    while (v5 != v3);
  }

  *(a1 + 272) = v2;
  v7 = *(a1 + 312);
  v8 = *(a1 + 320);
  if (v7 != v8)
  {
    v9 = *(a1 + 288);
    v10 = *(a1 + 312);
    do
    {
      v11 = *v10++;
      *(v9 + ((v11 >> 3) & 0x1FFFFFF8)) &= ~(1 << v11);
    }

    while (v10 != v8);
  }

  *(a1 + 320) = v7;
  v12 = *(a1 + 360);
  v13 = *(a1 + 368);
  if (v12 != v13)
  {
    v14 = *(a1 + 336);
    v15 = *(a1 + 360);
    do
    {
      v16 = *v15++;
      *(v14 + ((v16 >> 3) & 0x1FFFFFF8)) &= ~(1 << v16);
    }

    while (v15 != v13);
  }

  *(a1 + 368) = v12;
  v17 = *(a1 + 432);
  v18 = *(a1 + 440);
  if (v17 != v18)
  {
    v19 = *(a1 + 408);
    v20 = *(a1 + 384);
    v21 = *(a1 + 432);
    do
    {
      v22 = *v21++;
      *(v19 + ((v22 >> 3) & 0x1FFFFFF8)) &= ~(1 << v22);
      *(v20 + 4 * v22) = -1;
    }

    while (v21 != v18);
  }

  *(a1 + 440) = v17;
  sub_C4306C((a1 + 488));
  *(a1 + 472) = 0;
  v34 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v35, &__p);
  v23 = (a1 + 592);
  if (*(a1 + 615) < 0)
  {
    operator delete(*v23);
  }

  *v23 = v35;
  *(a1 + 608) = v36;
  HIBYTE(v36) = 0;
  LOBYTE(v35) = 0;
  v24 = v42;
  *(a1 + 680) = v41;
  *(a1 + 696) = v24;
  v25 = v44;
  *(a1 + 712) = v43;
  *(a1 + 728) = v25;
  v26 = v38;
  *(a1 + 616) = v37;
  *(a1 + 632) = v26;
  v27 = v40;
  *(a1 + 648) = v39;
  *(a1 + 664) = v27;
  if (v34 < 0)
  {
    operator delete(__p);
  }

  v28 = 2 * *(a1 + 8) + 2;
  *(a1 + 168) = v28;
  if (*(a1 + 24) == 1)
  {
    v29 = *(a1 + 176);
    *v29 = 32 - __clz(v28);
    if (*(v29 + 72) | *(v29 + 112))
    {
      for (i = *(v29 + 80); i != *(v29 + 88); i += 16)
      {
        if (*i)
        {
          free(*i);
          *i = 0;
        }

        *(i + 8) = 0;
      }

      *(v29 + 112) = 0;
    }

    *(v29 + 32) = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(v29 + 48), *(v29 + 104))));
    *(v29 + 56) = 0;
    *(v29 + 72) = 0;
    v28 = *(a1 + 168);
  }

  *(a1 + 200) = *(a1 + 192);
  *(a1 + 224) = *(a1 + 216);
  sub_4D9168(a1 + 464, v28, 0);
  return sub_C430C8((a1 + 488), *(a1 + 16), v31);
}

void sub_C37D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_C37DB0(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v23);
  v4 = *(a1 + 264);
  v5 = *(a1 + 272);
  if (v4 != v5)
  {
    while (1)
    {
      v6 = *v4;
      v7 = *sub_A9C5E0((*(a1 + 48) + 88), *v4);
      v8 = *(a1 + 176);
      v24 = (v6 << *v8) | (a2 - 1);
      v9 = *(sub_C3AD10((v8 + 8), &v24) + 4);
      if (HIDWORD(v7) == 1 && (v7 + 3) < 2)
      {
LABEL_14:
        v15 = v9;
        v16 = *(a1 + 64);
        if (v16)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }

      v11 = *(*(a1 + 40) + 4120);
      if (*(v11 + 17) == 1)
      {
        break;
      }

      v12 = sub_502FF8(v11 + 24, __ROR8__(v7, 32), 0, "stop");
      v17 = (v12 - *v12);
      if (*v17 >= 0x15u)
      {
        v14 = v17[10];
        if (v14)
        {
          goto LABEL_18;
        }
      }

      v15 = v9 + 30;
      v16 = *(a1 + 64);
      if (v16)
      {
LABEL_21:
        v18 = sub_C3D18C(v16, v6, *(a1 + 168) + ~a2);
        if (v18 == 0x7FFFFFFF || v18 < v15)
        {
          goto LABEL_3;
        }
      }

LABEL_25:
      if (sub_C3A95C(a1, 1u, v6, a2, v15))
      {
        v20 = *(a1 + 176);
        v24 = (v6 << *v20) | a2;
        v21 = sub_C3AD10((v20 + 8), &v24);
        *(v21 + 8) = v6;
        *(v21 + 12) = -1;
        *(v21 + 20) = v9;
        *(v21 + 24) = -1;
      }

LABEL_3:
      if (++v4 == v5)
      {
        goto LABEL_27;
      }
    }

    v12 = sub_A74944(v11 + 24, v7, 0, "transfers at stop");
    v13 = (v12 - *v12);
    if (*v13 < 5u)
    {
      goto LABEL_14;
    }

    v14 = v13[2];
    if (!v14)
    {
      v15 = v9;
      v16 = *(a1 + 64);
      if (v16)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }

LABEL_18:
    v15 = *(v12 + v14) + v9;
    v16 = *(a1 + 64);
    if (v16)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

LABEL_27:
  result = sub_7EA60(v23) + *(a1 + 632);
  *(a1 + 632) = result;
  return result;
}

double sub_C37FC0(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v233);
  v3 = *(a1 + 264);
  v220 = *(a1 + 272);
  if (v3 != v220)
  {
    v225 = a1;
    do
    {
      v221 = v3;
      v4 = *v3;
      v5 = *sub_A9C5E0((*(a1 + 48) + 88), *v3);
      v6 = *(a1 + 176);
      v226 = v4;
      LODWORD(v237[0]) = (v4 << *v6) | (a2 - 1);
      v224 = *(sub_C3AD10((v6 + 8), v237) + 4);
      sub_A74644(&v227, *(a1 + 40), v5);
      v7 = v228;
      v8 = 16;
      if (v232)
      {
        v8 = 32;
      }

      v9 = *(&v227 + v8);
      while (v7 < v9)
      {
        v12 = 0;
        v13 = __ROR8__(*v7, 32);
        v14 = *(a1 + 48);
        v15 = *(v14 + 72) - 1;
        v16 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v13 ^ (v13 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v13 ^ (v13 >> 33))) >> 33));
        v17 = v16 ^ (v16 >> 33);
        v18 = *(v14 + 48);
        v19 = v18 + 11;
        v20 = -1;
        for (i = v17; ; i = v12 + v22)
        {
          v22 = i & v15;
          v23 = (i & v15) / 0x30;
          v24 = (i & v15) % 0x30;
          v25 = (v18 + 16 * v23);
          if (((*(v25 + (v24 >> 3) + 10) >> (v24 & 7)) & 1) == 0)
          {
            if (v20 == -1)
            {
              v61 = v22;
            }

            else
            {
              v61 = v20;
            }

            if (!sub_B35190(v14, 1))
            {
              goto LABEL_99;
            }

            goto LABEL_55;
          }

          v26 = *v25;
          if (!*(v14 + 40))
          {
            break;
          }

          v27 = v25 + 10;
          if (v24 < 9)
          {
            v29 = 0;
            LOBYTE(v30) = v24;
            goto LABEL_29;
          }

          v28 = (48 * v23 - v22 + 7);
          if (v28 <= 0xFFF7)
          {
            LOWORD(v28) = -9;
          }

          if ((v28 + v22 - 48 * v23) >= 8u)
          {
            v32 = 0;
            v33 = 0;
            v34 = ((v28 + v22 - 48 * v23) >> 3) + 1;
            v30 = v24 - 8 * ((((v28 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE);
            v31 = &v27[(((v28 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE];
            v35 = (v19 + 16 * v23);
            v36 = v34 & 0x3FFE;
            do
            {
              v37 = *(v35 - 1);
              v38 = *v35;
              v35 += 2;
              v32 += byte_22A7D46[v37];
              v33 += byte_22A7D46[v38];
              v36 -= 2;
            }

            while (v36);
            v29 = v33 + v32;
            if ((v34 & 0x3FFE) == v34)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v29 = 0;
            v30 = v24;
            v31 = v25 + 10;
          }

          do
          {
            v39 = *v31++;
            v29 += byte_22A7D46[v39];
            v30 -= 8;
          }

          while (v30 > 8u);
LABEL_28:
          v27 += ((v24 - 9) >> 3) + 1;
LABEL_29:
          v40 = (v26 + 12 * (v29 + byte_22A7D46[~(-1 << v30) & *v27]));
          if (*(v14 + 36) != v40[1] || *(v14 + 32) != *v40)
          {
            break;
          }

          if (v20 == -1)
          {
            v20 = v22;
          }

LABEL_15:
          ++v12;
        }

        v42 = v25 + 10;
        if (v24 < 9)
        {
          v44 = 0;
          LOBYTE(v45) = v24;
        }

        else
        {
          v43 = (48 * v23 - v22 + 7);
          if (v43 <= 0xFFF7)
          {
            LOWORD(v43) = -9;
          }

          if ((v43 + v22 - 48 * v23) < 8u)
          {
            v44 = 0;
            v45 = v24;
            v46 = v25 + 10;
            goto LABEL_42;
          }

          v47 = 0;
          v48 = 0;
          v49 = ((v43 + v22 - 48 * v23) >> 3) + 1;
          v45 = v24 - 8 * ((((v43 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE);
          v46 = &v42[(((v43 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE];
          v50 = (v19 + 16 * v23);
          v51 = v49 & 0x3FFE;
          do
          {
            v52 = *(v50 - 1);
            v53 = *v50;
            v50 += 2;
            v47 += byte_22A7D46[v52];
            v48 += byte_22A7D46[v53];
            v51 -= 2;
          }

          while (v51);
          v44 = v48 + v47;
          if ((v49 & 0x3FFE) != v49)
          {
            do
            {
LABEL_42:
              v54 = *v46++;
              v44 += byte_22A7D46[v54];
              v45 -= 8;
            }

            while (v45 > 8u);
          }

          v42 += ((v24 - 9) >> 3) + 1;
        }

        if (v13 != *(v26 + 12 * (v44 + byte_22A7D46[~(-1 << v45) & *v42])))
        {
          goto LABEL_15;
        }

        if (v22 != -1)
        {
          v55 = v25 + 10;
          if (v24 < 9)
          {
            v58 = 0;
          }

          else
          {
            v56 = (48 * v23 - v22 + 7);
            if (v56 <= 0xFFF7)
            {
              LOWORD(v56) = -9;
            }

            v57 = v56 + v22 - 48 * v23;
            if (v57 < 8u)
            {
              v58 = 0;
              v59 = v24;
              v60 = v25 + 10;
              goto LABEL_182;
            }

            v177 = 0;
            v178 = 0;
            v179 = (v57 >> 3) + 1;
            v59 = v24 - 8 * (((v57 >> 3) + 1) & 0x3FFE);
            v60 = &v55[v179 & 0x3FFE];
            v180 = v25 + 11;
            v181 = v179 & 0x3FFE;
            do
            {
              v182 = *(v180 - 1);
              v183 = *v180;
              v180 += 2;
              v177 += byte_22A7D46[v182];
              v178 += byte_22A7D46[v183];
              v181 -= 2;
            }

            while (v181);
            v58 = v178 + v177;
            if ((v179 & 0x3FFE) != v179)
            {
              do
              {
LABEL_182:
                v184 = *v60++;
                v58 += byte_22A7D46[v184];
                v59 -= 8;
              }

              while (v59 > 8u);
            }

            v55 += ((v24 - 9) >> 3) + 1;
            LOBYTE(v24) = v59;
          }

          v185 = *(v14 + 56);
          v109 = (v26 + 12 * (v58 + byte_22A7D46[~(-1 << v24) & *v55]));
          if ((*v25 + 12 * *(v25 + 4)) == v109 && v25 + 2 != v185)
          {
            v187 = v25 + 4;
            do
            {
              if (*(v187 - 4))
              {
                v188 = 1;
              }

              else
              {
                v188 = v187 == v185;
              }

              v187 += 2;
            }

            while (!v188);
            v109 = *(v187 - 4);
          }

          goto LABEL_101;
        }

        v61 = -1;
        if (!sub_B35190(v14, 1))
        {
LABEL_99:
          *v235 = v13;
          *&v235[8] = -1;
          v108 = v14;
          v107 = v61;
LABEL_100:
          sub_B356C0(v108, v235, v107, v237);
          v109 = v238;
          goto LABEL_101;
        }

LABEL_55:
        v62 = 0;
        *v235 = v13;
        *&v235[8] = -1;
        v63 = *(v14 + 72) - 1;
        v64 = *(v14 + 48);
        v65 = v64 + 11;
        v66 = -1;
        while (2)
        {
          v67 = v17 & v63;
          v68 = (v17 & v63) / 0x30;
          v69 = (v17 & v63) % 0x30;
          v70 = v64 + 16 * v68;
          if (((*(v70 + (v69 >> 3) + 10) >> (v69 & 7)) & 1) == 0)
          {
            if (v66 == -1)
            {
              v107 = v17 & v63;
            }

            else
            {
              v107 = v66;
            }

            goto LABEL_97;
          }

          v71 = *(v14 + 40);
          v72 = *v70;
          if (v71)
          {
            v73 = (v70 + 10);
            if (v69 < 9)
            {
              v75 = 0;
              LOBYTE(v76) = (v17 & v63) % 0x30;
            }

            else
            {
              v74 = (48 * v68 - v67 + 7);
              if (v74 <= 0xFFF7)
              {
                LOWORD(v74) = -9;
              }

              if ((v74 + v67 - 48 * v68) < 8u)
              {
                v75 = 0;
                v76 = (v17 & v63) % 0x30;
                v77 = (v70 + 10);
                goto LABEL_70;
              }

              v78 = 0;
              v79 = 0;
              v80 = ((v74 + v67 - 48 * v68) >> 3) + 1;
              v76 = v69 - 8 * ((((v74 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE);
              v77 = &v73[(((v74 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE];
              v81 = (v65 + 16 * v68);
              v82 = v80 & 0x3FFE;
              do
              {
                v83 = *(v81 - 1);
                v84 = *v81;
                v81 += 2;
                v78 += byte_22A7D46[v83];
                v79 += byte_22A7D46[v84];
                v82 -= 2;
              }

              while (v82);
              v75 = v79 + v78;
              if ((v80 & 0x3FFE) != v80)
              {
                do
                {
LABEL_70:
                  v85 = *v77++;
                  v75 += byte_22A7D46[v85];
                  v76 -= 8;
                }

                while (v76 > 8u);
              }

              v73 += ((v69 - 9) >> 3) + 1;
            }

            v86 = &v72[3 * (v75 + byte_22A7D46[~(-1 << v76) & *v73])];
            if (*(v14 + 36) == v86[1] && *(v14 + 32) == *v86)
            {
              if (v66 == -1)
              {
                v66 = v17 & v63;
              }

LABEL_58:
              v17 = ++v62 + v67;
              continue;
            }
          }

          break;
        }

        v88 = (v70 + 10);
        if (v69 < 9)
        {
          v90 = 0;
          LOBYTE(v91) = (v17 & v63) % 0x30;
        }

        else
        {
          v89 = (48 * v68 - v67 + 7);
          if (v89 <= 0xFFF7)
          {
            LOWORD(v89) = -9;
          }

          if ((v89 + v67 - 48 * v68) < 8u)
          {
            v90 = 0;
            v91 = (v17 & v63) % 0x30;
            v92 = (v70 + 10);
            goto LABEL_85;
          }

          v93 = 0;
          v94 = 0;
          v95 = ((v89 + v67 - 48 * v68) >> 3) + 1;
          v91 = v69 - 8 * ((((v89 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE);
          v92 = &v88[(((v89 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE];
          v96 = (v65 + 16 * v68);
          v97 = v95 & 0x3FFE;
          do
          {
            v98 = *(v96 - 1);
            v99 = *v96;
            v96 += 2;
            v93 += byte_22A7D46[v98];
            v94 += byte_22A7D46[v99];
            v97 -= 2;
          }

          while (v97);
          v90 = v94 + v93;
          if ((v95 & 0x3FFE) != v95)
          {
            do
            {
LABEL_85:
              v100 = *v92++;
              v90 += byte_22A7D46[v100];
              v91 -= 8;
            }

            while (v91 > 8u);
          }

          v88 += ((v69 - 9) >> 3) + 1;
        }

        if (v13 != *&v72[3 * (v90 + byte_22A7D46[~(-1 << v91) & *v88])])
        {
          goto LABEL_58;
        }

        if (v67 == -1)
        {
          v107 = -1;
LABEL_97:
          v108 = v14;
          goto LABEL_100;
        }

        v101 = (v70 + 10);
        if (v69 < 9)
        {
          v104 = 0;
        }

        else
        {
          v102 = (48 * v68 - v67 + 7);
          if (v102 <= 0xFFF7)
          {
            LOWORD(v102) = -9;
          }

          v103 = v102 + v67 - 48 * v68;
          if (v103 < 8u)
          {
            v104 = 0;
            v105 = (v17 & v63) % 0x30;
            v106 = (v70 + 10);
            goto LABEL_244;
          }

          v207 = 0;
          v208 = 0;
          v209 = (v103 >> 3) + 1;
          v105 = v69 - 8 * (((v103 >> 3) + 1) & 0x3FFE);
          v106 = &v101[v209 & 0x3FFE];
          v210 = (v70 + 11);
          v211 = v209 & 0x3FFE;
          do
          {
            v212 = *(v210 - 1);
            v213 = *v210;
            v210 += 2;
            v207 += byte_22A7D46[v212];
            v208 += byte_22A7D46[v213];
            v211 -= 2;
          }

          while (v211);
          v104 = v208 + v207;
          if ((v209 & 0x3FFE) != v209)
          {
            do
            {
LABEL_244:
              v214 = *v106++;
              v104 += byte_22A7D46[v214];
              v105 -= 8;
            }

            while (v105 > 8u);
          }

          v101 += ((v69 - 9) >> 3) + 1;
          LOBYTE(v69) = v105;
        }

        v215 = *(v14 + 56);
        v109 = &v72[3 * (v104 + byte_22A7D46[~(-1 << v69) & *v101])];
        if ((*v70 + 12 * *(v70 + 8)) == v109)
        {
          v70 += 16;
          if (v70 != v215)
          {
            do
            {
              v216 = v70;
              if (*(v70 + 8))
              {
                break;
              }

              v70 += 16;
            }

            while (v216 + 2 != v215);
            v109 = *v216;
          }
        }

        if (v70 != v215 && v71)
        {
          do
          {
            if (*(v14 + 36) != v109[1] || *(v14 + 32) != *v109)
            {
              break;
            }

            v109 += 3;
            if (v109 == (*v70 + 12 * *(v70 + 8)))
            {
              v70 += 16;
              if (v70 != v215)
              {
                do
                {
                  v218 = v70;
                  if (*(v70 + 8))
                  {
                    break;
                  }

                  v70 += 16;
                }

                while (v218 + 2 != v215);
                v109 = *v218;
              }
            }
          }

          while (v70 != v215);
        }

LABEL_101:
        v110 = v109[2];
        if (v110 == -1)
        {
          v111 = *(v14 + 112);
          *(v14 + 112) = v111 + 1;
          v109[2] = v111;
          v113 = *(v14 + 96);
          v112 = *(v14 + 104);
          if (v113 >= v112)
          {
            v115 = *(v14 + 88);
            v116 = v113 - v115;
            v117 = (v113 - v115) >> 3;
            v118 = v117 + 1;
            if ((v117 + 1) >> 61)
            {
              sub_1794();
            }

            v119 = v112 - v115;
            if (v119 >> 2 > v118)
            {
              v118 = v119 >> 2;
            }

            if (v119 >= 0x7FFFFFFFFFFFFFF8)
            {
              v120 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v120 = v118;
            }

            if (v120)
            {
              if (!(v120 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v121 = (v113 - v115) >> 3;
            v122 = (8 * v117);
            v123 = (8 * v117 - 8 * v121);
            *v122 = v13;
            v114 = v122 + 1;
            memcpy(v123, v115, v116);
            *(v14 + 88) = v123;
            *(v14 + 96) = v114;
            *(v14 + 104) = 0;
            if (v115)
            {
              operator delete(v115);
            }
          }

          else
          {
            *v113 = v13;
            v114 = v113 + 8;
          }

          *(v14 + 96) = v114;
          v110 = v109[2];
        }

        a1 = v225;
        *(v225 + 688) = *(v225 + 688) + 1.0;
        if (v226 == v110)
        {
          goto LABEL_217;
        }

        v124 = v110;
        v125 = *(v228 + 2);
        v126 = v125 / 10;
        v127 = v125 % 10;
        if (v125 < 0)
        {
          v128 = -5;
        }

        else
        {
          v128 = 5;
        }

        v129 = (((103 * (v128 + v127)) >> 15) & 1) + ((103 * (v128 + v127)) >> 10);
        v130 = v126 + v224;
        v131 = v130 + v129;
        v132 = *(v225 + 64);
        if (!v132)
        {
LABEL_170:
          if (!sub_C3A95C(v225, 1u, v124, a2, v131))
          {
            goto LABEL_217;
          }

          v163 = *(v225 + 176);
          v164 = v163 + 32;
          v234 = (v124 << *v163) | a2;
          v165 = sub_C3AF54(v163 + 32, &v234);
          if (v165 == -1)
          {
            v176 = v166;
            if (sub_C3B3A4(v164, 1))
            {
              *v235 = v234;
              *&v235[4] = xmmword_22A8400;
              v236 = -COERCE_DOUBLE(0x8000000080000000);
              sub_C3B6B4(v164, v235, v237);
            }

            else
            {
              *v235 = v234;
              *&v235[4] = xmmword_22A8400;
              v236 = -COERCE_DOUBLE(0x8000000080000000);
              sub_C3B8E4(v164, v235, v176, v237);
            }

            v189 = v238;
          }

          else
          {
            v167 = *(v163 + 80) + 16 * (v165 / 0x30);
            v168 = (v167 + 10);
            v169 = v165 % 0x30;
            if (v165 % 0x30 < 9)
            {
              v173 = 0;
            }

            else
            {
              v170 = 48 * (v165 / 0x30);
              v171 = (v170 - v165 + 7);
              if (v171 <= 0xFFF7)
              {
                LOWORD(v171) = -9;
              }

              v172 = v171 + v165 - v170;
              if (v172 < 8u)
              {
                v173 = 0;
                v174 = v165 % 0x30;
                v175 = (v167 + 10);
                goto LABEL_203;
              }

              v190 = 0;
              v191 = 0;
              v192 = (v172 >> 3) + 1;
              LOWORD(v174) = v169 - 8 * (((v172 >> 3) + 1) & 0x3FFE);
              v175 = &v168[v192 & 0x3FFE];
              v193 = (v167 + 11);
              v194 = v192 & 0x3FFE;
              do
              {
                v195 = *(v193 - 1);
                v196 = *v193;
                v193 += 2;
                v190 += byte_22ABE1B[v195];
                v191 += byte_22ABE1B[v196];
                v194 -= 2;
              }

              while (v194);
              v173 = v191 + v190;
              if ((v192 & 0x3FFE) != v192)
              {
                do
                {
LABEL_203:
                  v197 = *v175++;
                  v173 += byte_22ABE1B[v197];
                  LOWORD(v174) = v174 - 8;
                }

                while (v174 > 8u);
              }

              v168 += ((v169 - 9) >> 3) + 1;
              LOBYTE(v169) = v174;
            }

            v198 = *(v163 + 88);
            v189 = *v167 + 28 * (v173 + byte_22ABE1B[~(-1 << v169) & *v168]);
            if (*v167 + 28 * *(v167 + 8) == v189 && v167 + 16 != v198)
            {
              v200 = v167 + 32;
              do
              {
                if (*(v200 - 8))
                {
                  v201 = 1;
                }

                else
                {
                  v201 = v200 == v198;
                }

                v200 += 16;
              }

              while (!v201);
              v189 = *(v200 - 32);
            }
          }

          *(v189 + 8) = v226;
          *(v189 + 12) = -1;
          *(v189 + 20) = v224;
          *(v189 + 24) = -1;
          goto LABEL_217;
        }

        v223 = v130 + v129;
        v133 = 0;
        v134 = *(v225 + 168) + ~a2;
        while (2)
        {
          while (2)
          {
            LODWORD(v237[0]) = (v124 << *v132) | (v134 - v133);
            if (*(v132 + 112) == *(v132 + 72))
            {
              goto LABEL_123;
            }

            v137 = sub_C3AF54(v132 + 32, v237);
            if (v137 == -1)
            {
              goto LABEL_123;
            }

            v138 = *(v132 + 80) + 16 * (v137 / 0x30);
            v139 = (v138 + 10);
            v140 = v137 % 0x30;
            if (v137 % 0x30 < 9)
            {
              v144 = 0;
            }

            else
            {
              v141 = 48 * (v137 / 0x30);
              v142 = (v141 - v137 + 7);
              if (v142 <= 0xFFF7)
              {
                LOWORD(v142) = -9;
              }

              v143 = v142 + v137 - v141;
              if (v143 < 8u)
              {
                v144 = 0;
                v145 = v137 % 0x30;
                v146 = (v138 + 10);
                goto LABEL_138;
              }

              v147 = 0;
              v148 = 0;
              v149 = (v143 >> 3) + 1;
              LOWORD(v145) = v140 - 8 * (((v143 >> 3) + 1) & 0x3FFE);
              v146 = &v139[v149 & 0x3FFE];
              v150 = (v138 + 11);
              v151 = v149 & 0x3FFE;
              do
              {
                v152 = *(v150 - 1);
                v153 = *v150;
                v150 += 2;
                v147 += byte_22ABE1B[v152];
                v148 += byte_22ABE1B[v153];
                v151 -= 2;
              }

              while (v151);
              v144 = v148 + v147;
              if ((v149 & 0x3FFE) != v149)
              {
                do
                {
LABEL_138:
                  v154 = *v146++;
                  v144 += byte_22ABE1B[v154];
                  LOWORD(v145) = v145 - 8;
                }

                while (v145 > 8u);
              }

              v139 += ((v140 - 9) >> 3) + 1;
              LOBYTE(v140) = v145;
            }

            v155 = *(v132 + 88);
            v156 = (*v138 + 28 * (v144 + byte_22ABE1B[~(-1 << v140) & *v139]));
            if ((*v138 + 28 * *(v138 + 8)) == v156)
            {
              v138 += 16;
              if (v138 != v155)
              {
                do
                {
                  v157 = v138;
                  if (*(v138 + 8))
                  {
                    break;
                  }

                  v138 += 16;
                }

                while (v157 + 2 != v155);
                v156 = *v157;
              }
            }

            if (v138 == v155)
            {
LABEL_123:
              v135 = *(v132 + 4);
              v133 += 2;
              if (v135 != 0x7FFFFFFF || v133 > v134)
              {
                goto LABEL_166;
              }

              continue;
            }

            break;
          }

          if (*(v132 + 72))
          {
            v158 = v138;
            do
            {
              if (*(v132 + 64) != *v156)
              {
                break;
              }

              v156 += 7;
              if (v156 == (*v138 + 28 * *(v138 + 8)))
              {
                v138 += 16;
                v158 = *(v132 + 88);
                if (v138 != v155)
                {
                  do
                  {
                    v159 = v138;
                    if (*(v138 + 8))
                    {
                      v158 = v138;
                      goto LABEL_149;
                    }

                    v138 += 16;
                  }

                  while (v159 + 2 != v155);
                  v158 = *(v132 + 88);
LABEL_149:
                  v156 = *v159;
                }
              }
            }

            while (v138 != v155);
          }

          else
          {
            v158 = v138;
          }

          if (v158 == v155)
          {
            v160 = v132;
          }

          else
          {
            v160 = v156;
          }

          v135 = v160[1];
          v133 += 2;
          if (v135 == 0x7FFFFFFF && v133 <= v134)
          {
            continue;
          }

          break;
        }

LABEL_166:
        v131 = v223;
        if (v135 != 0x7FFFFFFF && v135 >= v223)
        {
          goto LABEL_170;
        }

LABEL_217:
        v9 = v229;
        v7 = (v228 + 12);
        v228 = v7;
        if (v7 == v229)
        {
          v7 = v230;
          v228 = v230;
          v10 = 1;
          v232 = 1;
        }

        else
        {
          v10 = v232;
        }

        v11 = v231;
        if (v10)
        {
          v202 = v231;
        }

        else
        {
          v202 = v229;
        }

        if (*(v227 + 16) == 1 && v7 < v202)
        {
          while (1)
          {
            v204 = __ROR8__(*v7, 32);
            if (HIDWORD(v204) == 1 && (v204 + 3) < 2)
            {
              break;
            }

            if (sub_2D5204(**(v227 + 4120)))
            {
              v7 = v228;
              v9 = v229;
              v10 = v232;
              break;
            }

            v9 = v229;
            v7 = (v228 + 12);
            v228 = v7;
            if (v7 == v229)
            {
              v7 = v230;
              v228 = v230;
              v10 = 1;
              v232 = 1;
              if (v230 >= v231)
              {
                break;
              }
            }

            else
            {
              v10 = v232;
              v206 = 16;
              if (v232)
              {
                v206 = 32;
              }

              if (v7 >= *(&v227 + v206))
              {
                break;
              }
            }
          }

          v11 = v231;
        }

        if (v10)
        {
          v9 = v11;
        }
      }

      v3 = v221 + 1;
    }

    while (v221 + 1 != v220);
  }

  result = sub_7EA60(v233) + *(a1 + 632);
  *(a1 + 632) = result;
  return result;
}

double sub_C3910C(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v251);
  v4 = *(a1 + 432);
  v5 = *(a1 + 440);
  if (v4 != v5)
  {
    v6 = *(a1 + 408);
    v7 = *(a1 + 384);
    v8 = *(a1 + 432);
    do
    {
      v9 = *v8++;
      *(v6 + ((v9 >> 3) & 0x1FFFFFF8)) &= ~(1 << v9);
      *(v7 + 4 * v9) = -1;
    }

    while (v8 != v5);
  }

  *(a1 + 440) = v4;
  v10 = *(a1 + 312);
  v240 = *(a1 + 320);
  if (v10 != v240)
  {
    v241 = a2;
    v237 = a2 + 1;
    do
    {
      v243 = v10;
      v11 = a1;
      v12 = sub_A9C5E0((*(a1 + 48) + 88), *v10);
      sub_A7905C(v244, *(a1 + 40), *v12, 0, 0, 0);
      v13 = v247;
      v14 = v248;
      while (v13 < v14)
      {
        v15 = 0;
        v16 = __ROR8__(*v13, 32);
        v17 = v11[7];
        v18 = *(v17 + 72) - 1;
        v19 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) >> 33));
        v20 = v19 ^ (v19 >> 33);
        v21 = *(v17 + 48);
        v22 = v21 + 11;
        v23 = -1;
        for (i = v20; ; i = v15 + v25)
        {
          v25 = i & v18;
          v26 = (i & v18) / 0x30;
          v27 = (i & v18) % 0x30;
          v28 = (v21 + 16 * v26);
          if (((*(v28 + (v27 >> 3) + 10) >> (v27 & 7)) & 1) == 0)
          {
            if (v23 == -1)
            {
              v64 = v25;
            }

            else
            {
              v64 = v23;
            }

            if (!sub_B35190(v11[7], 1))
            {
              goto LABEL_96;
            }

            goto LABEL_52;
          }

          v29 = *v28;
          if (!*(v17 + 40))
          {
            break;
          }

          v30 = v28 + 10;
          if (v27 < 9)
          {
            v32 = 0;
            LOBYTE(v33) = v27;
            goto LABEL_26;
          }

          v31 = (48 * v26 - v25 + 7);
          if (v31 <= 0xFFF7)
          {
            LOWORD(v31) = -9;
          }

          if ((v31 + v25 - 48 * v26) >= 8u)
          {
            v35 = 0;
            v36 = 0;
            v37 = ((v31 + v25 - 48 * v26) >> 3) + 1;
            v33 = v27 - 8 * ((((v31 + v25 - 48 * v26) >> 3) + 1) & 0x3FFE);
            v34 = &v30[(((v31 + v25 - 48 * v26) >> 3) + 1) & 0x3FFE];
            v38 = (v22 + 16 * v26);
            v39 = v37 & 0x3FFE;
            do
            {
              v40 = *(v38 - 1);
              v41 = *v38;
              v38 += 2;
              v35 += byte_22A7D46[v40];
              v36 += byte_22A7D46[v41];
              v39 -= 2;
            }

            while (v39);
            v32 = v36 + v35;
            if ((v37 & 0x3FFE) == v37)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v32 = 0;
            v33 = v27;
            v34 = v28 + 10;
          }

          do
          {
            v42 = *v34++;
            v32 += byte_22A7D46[v42];
            v33 -= 8;
          }

          while (v33 > 8u);
LABEL_25:
          v30 += ((v27 - 9) >> 3) + 1;
LABEL_26:
          v43 = (v29 + 12 * (v32 + byte_22A7D46[~(-1 << v33) & *v30]));
          if (*(v17 + 36) != v43[1] || *(v17 + 32) != *v43)
          {
            break;
          }

          if (v23 == -1)
          {
            v23 = v25;
          }

LABEL_12:
          ++v15;
        }

        v45 = v28 + 10;
        if (v27 < 9)
        {
          v47 = 0;
          LOBYTE(v48) = v27;
        }

        else
        {
          v46 = (48 * v26 - v25 + 7);
          if (v46 <= 0xFFF7)
          {
            LOWORD(v46) = -9;
          }

          if ((v46 + v25 - 48 * v26) < 8u)
          {
            v47 = 0;
            v48 = v27;
            v49 = v28 + 10;
            goto LABEL_39;
          }

          v50 = 0;
          v51 = 0;
          v52 = ((v46 + v25 - 48 * v26) >> 3) + 1;
          v48 = v27 - 8 * ((((v46 + v25 - 48 * v26) >> 3) + 1) & 0x3FFE);
          v49 = &v45[(((v46 + v25 - 48 * v26) >> 3) + 1) & 0x3FFE];
          v53 = (v22 + 16 * v26);
          v54 = v52 & 0x3FFE;
          do
          {
            v55 = *(v53 - 1);
            v56 = *v53;
            v53 += 2;
            v50 += byte_22A7D46[v55];
            v51 += byte_22A7D46[v56];
            v54 -= 2;
          }

          while (v54);
          v47 = v51 + v50;
          if ((v52 & 0x3FFE) != v52)
          {
            do
            {
LABEL_39:
              v57 = *v49++;
              v47 += byte_22A7D46[v57];
              v48 -= 8;
            }

            while (v48 > 8u);
          }

          v45 += ((v27 - 9) >> 3) + 1;
        }

        if (v16 != *(v29 + 12 * (v47 + byte_22A7D46[~(-1 << v48) & *v45])))
        {
          goto LABEL_12;
        }

        if (v25 != -1)
        {
          v58 = v28 + 10;
          if (v27 < 9)
          {
            v61 = 0;
          }

          else
          {
            v59 = (48 * v26 - v25 + 7);
            if (v59 <= 0xFFF7)
            {
              LOWORD(v59) = -9;
            }

            v60 = v59 + v25 - 48 * v26;
            if (v60 < 8u)
            {
              v61 = 0;
              v62 = v27;
              v63 = v28 + 10;
              goto LABEL_138;
            }

            v147 = 0;
            v148 = 0;
            v149 = (v60 >> 3) + 1;
            v62 = v27 - 8 * (((v60 >> 3) + 1) & 0x3FFE);
            v63 = &v58[v149 & 0x3FFE];
            v150 = v28 + 11;
            v151 = v149 & 0x3FFE;
            do
            {
              v152 = *(v150 - 1);
              v153 = *v150;
              v150 += 2;
              v147 += byte_22A7D46[v152];
              v148 += byte_22A7D46[v153];
              v151 -= 2;
            }

            while (v151);
            v61 = v148 + v147;
            if ((v149 & 0x3FFE) != v149)
            {
              do
              {
LABEL_138:
                v154 = *v63++;
                v61 += byte_22A7D46[v154];
                v62 -= 8;
              }

              while (v62 > 8u);
            }

            v58 += ((v27 - 9) >> 3) + 1;
            LOBYTE(v27) = v62;
          }

          v155 = *(v17 + 56);
          v112 = (v29 + 12 * (v61 + byte_22A7D46[~(-1 << v27) & *v58]));
          if ((*v28 + 12 * *(v28 + 4)) == v112 && v28 + 2 != v155)
          {
            v157 = v28 + 4;
            do
            {
              if (*(v157 - 4))
              {
                v158 = 1;
              }

              else
              {
                v158 = v157 == v155;
              }

              v157 += 2;
            }

            while (!v158);
            v112 = *(v157 - 4);
          }

          goto LABEL_98;
        }

        v64 = -1;
        if (!sub_B35190(v11[7], 1))
        {
LABEL_96:
          v252 = v16;
          v253 = -1;
          v111 = v17;
          v110 = v64;
LABEL_97:
          sub_B356C0(v111, &v252, v110, v254);
          v112 = v254[4];
          goto LABEL_98;
        }

LABEL_52:
        v65 = 0;
        v252 = v16;
        v253 = -1;
        v66 = *(v17 + 72) - 1;
        v67 = *(v17 + 48);
        v68 = v67 + 11;
        v69 = -1;
        while (2)
        {
          v70 = v20 & v66;
          v71 = (v20 & v66) / 0x30;
          v72 = (v20 & v66) % 0x30;
          v73 = v67 + 16 * v71;
          if (((*(v73 + (v72 >> 3) + 10) >> (v72 & 7)) & 1) == 0)
          {
            if (v69 == -1)
            {
              v110 = v20 & v66;
            }

            else
            {
              v110 = v69;
            }

            goto LABEL_94;
          }

          v74 = *(v17 + 40);
          v75 = *v73;
          if (v74)
          {
            v76 = (v73 + 10);
            if (v72 < 9)
            {
              v78 = 0;
              LOBYTE(v79) = (v20 & v66) % 0x30;
            }

            else
            {
              v77 = (48 * v71 - v70 + 7);
              if (v77 <= 0xFFF7)
              {
                LOWORD(v77) = -9;
              }

              if ((v77 + v70 - 48 * v71) < 8u)
              {
                v78 = 0;
                v79 = (v20 & v66) % 0x30;
                v80 = (v73 + 10);
                goto LABEL_67;
              }

              v81 = 0;
              v82 = 0;
              v83 = ((v77 + v70 - 48 * v71) >> 3) + 1;
              v79 = v72 - 8 * ((((v77 + v70 - 48 * v71) >> 3) + 1) & 0x3FFE);
              v80 = &v76[(((v77 + v70 - 48 * v71) >> 3) + 1) & 0x3FFE];
              v84 = (v68 + 16 * v71);
              v85 = v83 & 0x3FFE;
              do
              {
                v86 = *(v84 - 1);
                v87 = *v84;
                v84 += 2;
                v81 += byte_22A7D46[v86];
                v82 += byte_22A7D46[v87];
                v85 -= 2;
              }

              while (v85);
              v78 = v82 + v81;
              if ((v83 & 0x3FFE) != v83)
              {
                do
                {
LABEL_67:
                  v88 = *v80++;
                  v78 += byte_22A7D46[v88];
                  v79 -= 8;
                }

                while (v79 > 8u);
              }

              v76 += ((v72 - 9) >> 3) + 1;
            }

            v89 = &v75[3 * (v78 + byte_22A7D46[~(-1 << v79) & *v76])];
            if (*(v17 + 36) == v89[1] && *(v17 + 32) == *v89)
            {
              if (v69 == -1)
              {
                v69 = v70;
              }

LABEL_55:
              v20 = ++v65 + v70;
              continue;
            }
          }

          break;
        }

        v91 = (v73 + 10);
        if (v72 < 9)
        {
          v93 = 0;
          LOBYTE(v94) = v72;
        }

        else
        {
          v92 = (48 * v71 - v70 + 7);
          if (v92 <= 0xFFF7)
          {
            LOWORD(v92) = -9;
          }

          if ((v92 + v70 - 48 * v71) < 8u)
          {
            v93 = 0;
            v94 = v72;
            v95 = (v73 + 10);
            goto LABEL_82;
          }

          v96 = 0;
          v97 = 0;
          v98 = ((v92 + v70 - 48 * v71) >> 3) + 1;
          v94 = v72 - 8 * ((((v92 + v70 - 48 * v71) >> 3) + 1) & 0x3FFE);
          v95 = &v91[(((v92 + v70 - 48 * v71) >> 3) + 1) & 0x3FFE];
          v99 = (v68 + 16 * v71);
          v100 = v98 & 0x3FFE;
          do
          {
            v101 = *(v99 - 1);
            v102 = *v99;
            v99 += 2;
            v96 += byte_22A7D46[v101];
            v97 += byte_22A7D46[v102];
            v100 -= 2;
          }

          while (v100);
          v93 = v97 + v96;
          if ((v98 & 0x3FFE) != v98)
          {
            do
            {
LABEL_82:
              v103 = *v95++;
              v93 += byte_22A7D46[v103];
              v94 -= 8;
            }

            while (v94 > 8u);
          }

          v91 += ((v72 - 9) >> 3) + 1;
        }

        if (v16 != *&v75[3 * (v93 + byte_22A7D46[~(-1 << v94) & *v91])])
        {
          goto LABEL_55;
        }

        if (v70 == -1)
        {
          v110 = -1;
LABEL_94:
          v111 = v17;
          goto LABEL_97;
        }

        v104 = (v73 + 10);
        if (v72 < 9)
        {
          v107 = 0;
        }

        else
        {
          v105 = (48 * v71 - v70 + 7);
          if (v105 <= 0xFFF7)
          {
            LOWORD(v105) = -9;
          }

          v106 = v105 + v70 - 48 * v71;
          if (v106 < 8u)
          {
            v107 = 0;
            v108 = v72;
            v109 = (v73 + 10);
            goto LABEL_158;
          }

          v160 = 0;
          v161 = 0;
          v162 = (v106 >> 3) + 1;
          v108 = v72 - 8 * (((v106 >> 3) + 1) & 0x3FFE);
          v109 = &v104[v162 & 0x3FFE];
          v163 = (v73 + 11);
          v164 = v162 & 0x3FFE;
          do
          {
            v165 = *(v163 - 1);
            v166 = *v163;
            v163 += 2;
            v160 += byte_22A7D46[v165];
            v161 += byte_22A7D46[v166];
            v164 -= 2;
          }

          while (v164);
          v107 = v161 + v160;
          if ((v162 & 0x3FFE) != v162)
          {
            do
            {
LABEL_158:
              v167 = *v109++;
              v107 += byte_22A7D46[v167];
              v108 -= 8;
            }

            while (v108 > 8u);
          }

          v104 += ((v72 - 9) >> 3) + 1;
          LOBYTE(v72) = v108;
        }

        v168 = *(v17 + 56);
        v112 = &v75[3 * (v107 + byte_22A7D46[~(-1 << v72) & *v104])];
        if ((*v73 + 12 * *(v73 + 8)) == v112)
        {
          v73 += 16;
          if (v73 != v168)
          {
            do
            {
              v169 = v73;
              if (*(v73 + 8))
              {
                break;
              }

              v73 += 16;
            }

            while (v169 + 2 != v168);
            v112 = *v169;
          }
        }

        if (v73 != v168 && v74)
        {
          do
          {
            if (*(v17 + 36) != v112[1] || *(v17 + 32) != *v112)
            {
              break;
            }

            v112 += 3;
            if (v112 == (*v73 + 12 * *(v73 + 8)))
            {
              v73 += 16;
              if (v73 != v168)
              {
                do
                {
                  v233 = v73;
                  if (*(v73 + 8))
                  {
                    break;
                  }

                  v73 += 16;
                }

                while (v233 + 2 != v168);
                v112 = *v233;
              }
            }
          }

          while (v73 != v168);
        }

LABEL_98:
        v113 = v112[2];
        if (v113 == -1)
        {
          v117 = *(v17 + 112);
          *(v17 + 112) = v117 + 1;
          v112[2] = v117;
          v119 = *(v17 + 96);
          v118 = *(v17 + 104);
          if (v119 >= v118)
          {
            v121 = *(v17 + 88);
            v122 = v119 - v121;
            v123 = (v119 - v121) >> 3;
            v124 = v123 + 1;
            if ((v123 + 1) >> 61)
            {
              sub_1794();
            }

            v125 = v118 - v121;
            if (v125 >> 2 > v124)
            {
              v124 = v125 >> 2;
            }

            if (v125 >= 0x7FFFFFFFFFFFFFF8)
            {
              v126 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v126 = v124;
            }

            if (v126)
            {
              if (!(v126 >> 61))
              {
                operator new();
              }

LABEL_294:
              sub_1808();
            }

            v127 = v123;
            v128 = (8 * v123);
            v129 = &v128[-v127];
            *v128 = v16;
            v120 = v128 + 1;
            memcpy(v129, v121, v122);
            *(v17 + 88) = v129;
            *(v17 + 96) = v120;
            *(v17 + 104) = 0;
            if (v121)
            {
              operator delete(v121);
            }

            v11 = a1;
          }

          else
          {
            *v119 = v16;
            v120 = v119 + 1;
          }

          *(v17 + 96) = v120;
          v113 = v112[2];
          v114 = *(v247 + 4);
          v115 = v11[12];
          v116 = v113;
          if (!v115)
          {
            goto LABEL_121;
          }

          goto LABEL_117;
        }

        v114 = *(v247 + 4);
        v115 = v11[12];
        v116 = v113;
        if (!v115)
        {
          goto LABEL_121;
        }

LABEL_117:
        v130 = *v115;
        v131 = 0xAAAAAAAAAAAAAAABLL * ((*(v115 + 8) - *v115) >> 4);
        if (v131 <= v241)
        {
          sub_A9C3BC(v115, v237 - v131);
          v130 = *v115;
        }

        v132 = &v130[48 * v241];
        if (*(v132 + 1) > v116 && ((*(*v132 + ((v116 >> 3) & 0x1FFFFFF8)) >> v116) & 1) != 0)
        {
LABEL_121:
          v133 = v116 >> 6;
          v242 = v114;
          if (v11[52] <= v116)
          {
            v137 = v11[48];
            goto LABEL_186;
          }

          v134 = v11[51];
          v135 = *(v134 + 8 * v133);
          v136 = 1 << v116;
          v137 = v11[48];
          if ((v135 & (1 << v116)) != 0)
          {
            v138 = v11[49];
            v139 = &v138[-v137] >> 2;
            if (v139 <= v116)
            {
              v140 = v113 + 1;
              v141 = v140 >= v139;
              v142 = v140 - v139;
              if (v142 == 0 || !v141)
              {
                if (!v141)
                {
                  v159 = (v137 + 4 * v140);
                  goto LABEL_166;
                }

                goto LABEL_167;
              }

              v143 = v11[50];
              if (v142 > (v143 - v138) >> 2)
              {
                v144 = v143 - v137;
                v145 = v144 >> 1;
                if (v144 >> 1 <= v140)
                {
                  v145 = v113 + 1;
                }

                v141 = v144 >= 0x7FFFFFFFFFFFFFFCLL;
                v146 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v141)
                {
                  v146 = v145;
                }

                if (!(v146 >> 62))
                {
                  operator new();
                }

                goto LABEL_294;
              }

              v170 = 4 * v142;
              memset(v138, 255, 4 * v142);
              v159 = &v138[v170];
LABEL_166:
              v11[49] = v159;
LABEL_167:
              sub_4D9168((v11 + 51), v113 + 1, 0);
              v134 = v11[51];
              v133 = v116 >> 6;
              v135 = *(v134 + 8 * (v116 >> 6));
            }

            if ((v135 & v136) != 0)
            {
              v137 = v11[48];
              if (*(v137 + 4 * v116) <= v242)
              {
                goto LABEL_216;
              }

              goto LABEL_186;
            }

            *(v134 + 8 * v133) = v135 | v136;
            v172 = v11[55];
            v171 = v11[56];
            if (v172 < v171)
            {
              *v172 = v113;
              v173 = v172 + 4;
              goto LABEL_185;
            }

            v174 = v11[54];
            v175 = v172 - v174;
            v176 = (v172 - v174) >> 2;
            v177 = v176 + 1;
            if (!((v176 + 1) >> 62))
            {
              v178 = v171 - v174;
              if (v178 >> 1 > v177)
              {
                v177 = v178 >> 1;
              }

              if (v178 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v179 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v179 = v177;
              }

              v238 = v133;
              if (v179)
              {
                if (!(v179 >> 62))
                {
                  operator new();
                }

                goto LABEL_294;
              }

              v180 = (v172 - v174) >> 2;
              v181 = (4 * v176);
              v182 = (4 * v176 - 4 * v180);
              *v181 = v113;
              v173 = v181 + 1;
              memcpy(v182, v174, v175);
              v11[54] = v182;
              v11[55] = v173;
              v11[56] = 0;
              if (v174)
              {
                operator delete(v174);
              }

              v133 = v238;
LABEL_185:
              v11[55] = v173;
              v137 = v11[48];
              if (*(v137 + 4 * v116) <= v242)
              {
                goto LABEL_216;
              }

              goto LABEL_186;
            }

LABEL_297:
            sub_1794();
          }

LABEL_186:
          v183 = v11[49];
          v184 = &v183[-v137] >> 2;
          if (v184 <= v116)
          {
            v185 = v113 + 1;
            v186 = v185 - v184;
            v239 = v133;
            if (v185 <= v184)
            {
              if (v185 < v184)
              {
                v191 = (v137 + 4 * v185);
                goto LABEL_198;
              }
            }

            else
            {
              v187 = v11[50];
              if (v186 > (v187 - v183) >> 2)
              {
                v188 = v187 - v137;
                v189 = v188 >> 1;
                if (v188 >> 1 <= v185)
                {
                  v189 = v113 + 1;
                }

                v141 = v188 >= 0x7FFFFFFFFFFFFFFCLL;
                v190 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v141)
                {
                  v190 = v189;
                }

                if (!(v190 >> 62))
                {
                  operator new();
                }

                goto LABEL_294;
              }

              v192 = 4 * v186;
              memset(v183, 255, v192);
              v191 = &v183[v192];
LABEL_198:
              v11[49] = v191;
            }

            sub_4D9168((v11 + 51), v113 + 1, 0);
            v133 = v239;
          }

          v193 = v11[51];
          v194 = *(v193 + 8 * v133);
          if ((v194 & (1 << v116)) == 0)
          {
            *(v193 + 8 * v133) = v194 | (1 << v116);
            v196 = v11[55];
            v195 = v11[56];
            if (v196 >= v195)
            {
              v198 = v11[54];
              v199 = v196 - v198;
              v200 = (v196 - v198) >> 2;
              v201 = v200 + 1;
              if ((v200 + 1) >> 62)
              {
                goto LABEL_297;
              }

              v202 = v195 - v198;
              if (v202 >> 1 > v201)
              {
                v201 = v202 >> 1;
              }

              if (v202 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v203 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v203 = v201;
              }

              if (v203)
              {
                if (!(v203 >> 62))
                {
                  operator new();
                }

                goto LABEL_294;
              }

              v204 = (v196 - v198) >> 2;
              v205 = (4 * v200);
              v206 = (4 * v200 - 4 * v204);
              *v205 = v113;
              v197 = v205 + 1;
              memcpy(v206, v198, v199);
              v11[54] = v206;
              v11[55] = v197;
              v11[56] = 0;
              if (v198)
              {
                operator delete(v198);
              }
            }

            else
            {
              *v196 = v113;
              v197 = v196 + 4;
            }

            v11[55] = v197;
          }

          *(v11[48] + 4 * v116) = v242;
        }

LABEL_216:
        v14 = v248;
        v13 = v247 + 2;
        v247 = v13;
        if (v13 == v248)
        {
          v207 = v245 + 2;
          v245 = v207;
          if (v207 >= v246)
          {
            break;
          }

          while (1)
          {
            v13 = *v207;
            v14 = v207[1];
            if (*v207 != v14)
            {
              break;
            }

            v207 += 2;
            v245 = v207;
            if (v207 >= v246)
            {
              goto LABEL_6;
            }
          }

          v247 = *v207;
          v248 = v14;
          if (v13 < v14)
          {
            goto LABEL_227;
          }
        }

        else if (v13 < v248)
        {
          while (1)
          {
LABEL_227:
            if ((v250 & 1) == 0)
            {
              v208 = v244[0];
              v209 = *v13;
              v210 = *(v244[0] + 4136);
              if (sub_68312C(v210 + 3896))
              {
                if (*(v210 + 3944))
                {
                  if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                  {
                    v230 = sub_A57824(-85.0, 0.0);
                    sub_58168(v230 >> 17, v230 >> 49);
                    dword_27339C0 = v231 | 0x40000000;
                    __cxa_guard_release(&qword_27339C8);
                    v11 = a1;
                  }

                  v211 = __ROR8__(v209, 32);
                  v212 = *(v208 + 4136);
                  if (dword_27339C0 == HIDWORD(v211))
                  {
                    if (!sub_68312C(v212 + 3896) || !*(v212 + 3944))
                    {
                      exception = __cxa_allocate_exception(0x40uLL);
                      v236 = sub_2D390(exception, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                    }
                  }

                  else
                  {
                    v215 = *(v212 + 3944);
                    v216 = v215[1];
                    if (v216)
                    {
                      v217 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v211 ^ (v211 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v211 ^ (v211 >> 33))) >> 33));
                      v218 = v217 ^ (v217 >> 33);
                      v219 = vcnt_s8(v216);
                      v219.i16[0] = vaddlv_u8(v219);
                      if (v219.u32[0] > 1uLL)
                      {
                        v220 = v218;
                        if (v218 >= *&v216)
                        {
                          v220 = v218 % *&v216;
                        }
                      }

                      else
                      {
                        v220 = (*&v216 - 1) & v218;
                      }

                      v221 = *(*v215 + 8 * v220);
                      if (v221)
                      {
                        v222 = *v221;
                        if (v222)
                        {
                          if (v219.u32[0] < 2uLL)
                          {
                            v223 = *&v216 - 1;
                            while (1)
                            {
                              v227 = v222[1];
                              if (v218 == v227)
                              {
                                if (*(v222 + 5) == HIDWORD(v211) && *(v222 + 4) == v211)
                                {
                                  goto LABEL_225;
                                }
                              }

                              else if ((v227 & v223) != v220)
                              {
                                goto LABEL_267;
                              }

                              v222 = *v222;
                              if (!v222)
                              {
                                goto LABEL_267;
                              }
                            }
                          }

                          do
                          {
                            v225 = v222[1];
                            if (v218 == v225)
                            {
                              if (*(v222 + 5) == HIDWORD(v211) && *(v222 + 4) == v211)
                              {
                                goto LABEL_225;
                              }
                            }

                            else
                            {
                              if (v225 >= *&v216)
                              {
                                v225 %= *&v216;
                              }

                              if (v225 != v220)
                              {
                                break;
                              }
                            }

                            v222 = *v222;
                          }

                          while (v222);
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_267:
            if (v249 == 1)
            {
              break;
            }

            v228 = sub_C9E544(v244[0] + 3896);
            v13 = v247;
            if (v228 >= *(v247 + 14))
            {
              if (v249)
              {
                goto LABEL_276;
              }

              v229 = sub_585D8((v244[0] + 3896));
              v13 = v247;
              if ((v229 & 1) != 0 || (*(v247 + 15) & 1) == 0)
              {
                goto LABEL_276;
              }
            }

LABEL_225:
            v13 = v247 + 2;
            v247 = v13;
            if (v13 == v248)
            {
              v213 = v245 + 2;
              v245 = v213;
              if (v213 >= v246)
              {
                goto LABEL_276;
              }

              while (1)
              {
                v13 = *v213;
                v214 = v213[1];
                if (*v213 != v214)
                {
                  break;
                }

                v213 += 2;
                v245 = v213;
                if (v213 >= v246)
                {
                  goto LABEL_6;
                }
              }

              v247 = *v213;
              v248 = v214;
              if (v13 >= v214)
              {
                goto LABEL_276;
              }
            }

            else if (v13 >= v248)
            {
              goto LABEL_276;
            }
          }

          v13 = v247;
LABEL_276:
          v14 = v248;
        }
      }

LABEL_6:
      v10 = v243 + 1;
    }

    while (v243 + 1 != v240);
  }

  result = sub_7EA60(v251) + *(a1 + 624);
  *(a1 + 624) = result;
  return result;
}

uint64_t sub_C3A4E4(uint64_t a1)
{
  if (*a1 == -1)
  {
    return 0;
  }

  v2 = sub_C3E5B4(a1);
  v3 = sub_C3E6F0(a1) + v2;
  sub_2D577C(**(a1 + 40));
  if (v31 == 1)
  {
    v4 = sub_32AD80(&v20) * 1048576.0;
    if (v4 >= 0.0)
    {
      v5 = v4;
      if (v4 >= 4.50359963e15)
      {
        goto LABEL_13;
      }

      v6 = (v4 + v4) + 1;
    }

    else
    {
      v5 = v4;
      if (v4 <= -4.50359963e15)
      {
        goto LABEL_13;
      }

      v6 = (v4 + v4) - 1 + (((v4 + v4) - 1) >> 63);
    }

    v5 = (v6 >> 1);
LABEL_13:
    if (v5 >= 1.84467441e19)
    {
      v3 -= 2;
      if (v3 > *a1)
      {
        goto LABEL_23;
      }

      return 0;
    }

    if (v4 >= 0.0)
    {
      if (v4 >= 4.50359963e15)
      {
        goto LABEL_22;
      }

      v8 = (v4 + v4) + 1;
    }

    else
    {
      if (v4 <= -4.50359963e15)
      {
        goto LABEL_22;
      }

      v8 = (v4 + v4) - 1 + (((v4 + v4) - 1) >> 63);
    }

    v4 = (v8 >> 1);
LABEL_22:
    v3 += v4;
    if (v3 > *a1)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v3 <= *a1)
  {
    return 0;
  }

LABEL_23:
  v9 = sub_7E7E4(1u);
  result = 1;
  if (!v9)
  {
    return result;
  }

  sub_19594F8(&v20);
  v10 = sub_4A5C(&v20, "Exceeded memory limit of ", 25);
  v11 = sub_71478(v10, *a1);
  v12 = sub_4A5C(v11, " in directional SPA (", 21);
  v13 = sub_71478(v12, v3);
  v14 = sub_4A5C(v13, ") in round ", 11);
  std::ostream::operator<<();
  sub_4A5C(v14, "; terminating algorithm.", 24);
  if ((v30 & 0x10) != 0)
  {
    v16 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v16 = v26;
    }

    v17 = v25;
    v15 = v16 - v25;
    if (v16 - v25 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_41:
      sub_3244();
    }

LABEL_30:
    if (v15 >= 0x17)
    {
      operator new();
    }

    v19 = v15;
    if (v15)
    {
      memmove(&__dst, v17, v15);
    }

    goto LABEL_35;
  }

  if ((v30 & 8) != 0)
  {
    v17 = v23;
    v15 = v24 - v23;
    if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  v15 = 0;
  v19 = 0;
LABEL_35:
  *(&__dst + v15) = 0;
  sub_7E854(&__dst, 1u);
  if (v19 < 0)
  {
    operator delete(__dst);
  }

  if (v28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v22);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_C3A910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_C3A95C(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, signed int a5)
{
  v7 = a3;
  v52 = a3;
  v10 = *(a1 + 80);
  if (v10)
  {
    v12 = *v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 4);
    if (v13 <= a4)
    {
      sub_A9C3BC(*(a1 + 80), a4 - v13 + 1);
      v12 = *v10;
    }

    v14 = (v12 + 48 * a4);
    if (v14[1] <= v7 || ((*(*v14 + ((v7 >> 3) & 0x1FFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 25) == 1)
  {
    v15 = a1 + 24 * a2;
    v16 = *(v15 + 192);
    v17 = *(v15 + 200);
    v18 = (v15 + 192);
    v19 = *(a1 + 456);
    v20 = (v17 - v16) >> 2;
    if (v20 <= v19)
    {
      sub_617214(v18, v19 - v20 + 1);
      v16 = *v18;
    }

    v21 = *(v16 + 4 * v19);
    if (*(a1 + 26) != 1 || v21 == 0x7FFFFFFF)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v23 = *(a1 + 176);
    v53 = (*(a1 + 456) << *v23) | a4;
    v21 = *(sub_C3AD10((v23 + 8), &v53) + 4);
    if (*(a1 + 26) != 1 || v21 == 0x7FFFFFFF)
    {
      goto LABEL_23;
    }
  }

  v25 = *(a1 + 28);
  v26 = v25 / 10;
  v27 = v25 % 10;
  if (v25 < 0)
  {
    v28 = -5;
  }

  else
  {
    v28 = 5;
  }

  if ((v26 + v21 + (((103 * (v28 + v27)) >> 15) & 1) + ((103 * (v28 + v27)) >> 10)) <= a5)
  {
    return 0;
  }

LABEL_23:
  if (*(a1 + 25) == 1)
  {
    v29 = a1 + 24 * a2;
    v30 = *(v29 + 192);
    v31 = *(v29 + 200);
    v32 = (v29 + 192);
    v33 = (v31 - v30) >> 2;
    if (v33 <= v7)
    {
      sub_617214(v32, v7 - v33 + 1);
      v30 = *v32;
    }

    v34 = *(v30 + 4 * v7);
    if (v34 != 0x7FFFFFFF && v34 <= a5)
    {
      return 0;
    }
  }

  v36 = *(a1 + 176);
  v54 = (v7 << *v36) | a4;
  v37 = sub_C3AD10((v36 + 8), &v54);
  v38 = *(v37 + 4);
  if (v38 != 0x7FFFFFFF && v38 <= a5)
  {
    return 0;
  }

  if (*(a1 + 25))
  {
    v40 = a1 + 24 * a2;
    v41 = *(v40 + 192);
    v42 = *(v40 + 200);
    v43 = (v40 + 192);
    v44 = a2;
    v45 = v7;
    v46 = (v42 - v41) >> 2;
    if (v46 <= v7)
    {
      v47 = v37;
      sub_617214(v43, v7 - v46 + 1);
      v37 = v47;
      v41 = *v43;
    }

    *(v41 + 4 * v7) = a5;
  }

  else
  {
    v44 = a2;
    v45 = v7;
  }

  *(v37 + 4) = a5;
  v49 = a1 + 48 * v44;
  v50 = (v49 + 240);
  if (*(v49 + 248) > v45)
  {
    if ((*(*v50 + ((v45 >> 3) & 0x1FFFFFF8)) >> v45))
    {
      goto LABEL_43;
    }

LABEL_46:
    sub_DD38((v50 + 3), &v52);
    v7 = v52;
    *(*v50 + ((v52 >> 3) & 0x1FFFFFF8)) |= 1 << v52;
    if (*(a1 + 25))
    {
      return 1;
    }

    goto LABEL_47;
  }

  sub_4D9168(v50, v7 + 1, 0);
  if (((*(*v50 + ((v45 >> 3) & 0x1FFFFFF8)) >> v45) & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_43:
  if (*(a1 + 25))
  {
    return 1;
  }

LABEL_47:
  v51 = v7;
  if (*(a1 + 344) <= v7)
  {
    sub_4D9168(a1 + 336, v7 + 1, 0);
    v51 = v52;
  }

  if ((*(*(a1 + 336) + ((v51 >> 3) & 0x1FFFFFF8)) >> v51))
  {
    return 1;
  }

  sub_DD38(a1 + 360, &v52);
  result = 1;
  *(*(a1 + 336) + ((v52 >> 3) & 0x1FFFFFF8)) |= 1 << v52;
  return result;
}

uint64_t sub_C3AD10(uint64_t a1, unsigned int *a2)
{
  v4 = sub_C3AF54(a1, a2);
  if (v4 == -1)
  {
    v19 = v5;
    if (sub_C3B3A4(a1, 1))
    {
      v32 = *a2;
      v33 = xmmword_22A8400;
      v34 = -COERCE_DOUBLE(0x8000000080000000);
      sub_C3B6B4(a1, &v32, v35);
    }

    else
    {
      v32 = *a2;
      v33 = xmmword_22A8400;
      v34 = -COERCE_DOUBLE(0x8000000080000000);
      sub_C3B8E4(a1, &v32, v19, v35);
    }

    return v35[4];
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = 16 * (v4 / 0x30);
  v9 = v8 + v7;
  v11 = (v8 + v7 + 10);
  v10 = *(v8 + v7);
  v12 = v4 % 0x30;
  if (v4 % 0x30 < 9)
  {
    v16 = 0;
    goto LABEL_18;
  }

  v13 = 48 * (v4 / 0x30);
  v14 = (v13 - v4 + 7);
  if (v14 <= 0xFFF7)
  {
    LOWORD(v14) = -9;
  }

  v15 = v14 + v4 - v13;
  if (v15 >= 8u)
  {
    v21 = 0;
    v22 = 0;
    v23 = (v15 >> 3) + 1;
    LOWORD(v17) = v12 - 8 * (((v15 >> 3) + 1) & 0x3FFE);
    v18 = &v11[v23 & 0x3FFE];
    v24 = (v8 + v7 + 11);
    v25 = v23 & 0x3FFE;
    do
    {
      v26 = *(v24 - 1);
      v27 = *v24;
      v24 += 2;
      v21 += byte_22ABE1B[v26];
      v22 += byte_22ABE1B[v27];
      v25 -= 2;
    }

    while (v25);
    v16 = v22 + v21;
    if ((v23 & 0x3FFE) == v23)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    v17 = v4 % 0x30;
    v18 = v11;
  }

  do
  {
    v28 = *v18++;
    v16 += byte_22ABE1B[v28];
    LOWORD(v17) = v17 - 8;
  }

  while (v17 > 8u);
LABEL_17:
  v11 += ((v12 - 9) >> 3) + 1;
  LOBYTE(v12) = v17;
LABEL_18:
  result = v10 + 28 * (v16 + byte_22ABE1B[~(-1 << v12) & *v11]);
  if (*v9 + 28 * *(v9 + 8) == result && v9 + 16 != v6)
  {
    v30 = v9 + 32;
    do
    {
      if (*(v30 - 8))
      {
        v31 = 1;
      }

      else
      {
        v31 = v30 == v6;
      }

      v30 += 16;
    }

    while (!v31);
    return *(v30 - 32);
  }

  return result;
}

unint64_t sub_C3AF54(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 72) - 1;
  v4 = *a2;
  result = v3 & v4;
  v6 = *(a1 + 48);
  v7 = (v3 & v4) / 0x30uLL;
  v8 = (v3 & v4) % 0x30;
  if ((*(v6 + 16 * v7 + (v8 >> 3) + 10) >> (v8 & 7)))
  {
    if (*(a1 + 40))
    {
      v9 = 0;
      v10 = v6 + 11;
      v11 = *(a1 + 32);
      v12 = -1;
      LODWORD(v13) = (v3 & v4) % 0x30;
      while (1)
      {
        v14 = (v6 + 16 * v7);
        v17 = *v14;
        v16 = v14 + 10;
        v15 = v17;
        if (v8 < 9)
        {
          v20 = 0;
          v23 = v16;
          LOBYTE(v21) = v13;
          goto LABEL_18;
        }

        v18 = (7 - v13);
        if (v18 <= 0xFFF7)
        {
          LOWORD(v18) = -9;
        }

        v19 = v18 + v13;
        if (v19 >= 8u)
        {
          v24 = 0;
          v25 = 0;
          v26 = (v19 >> 3) + 1;
          v21 = v13 - 8 * (((v19 >> 3) + 1) & 0x3FFE);
          v22 = &v16[v26 & 0x3FFE];
          v27 = (v10 + 16 * v7);
          v28 = v26 & 0x3FFE;
          do
          {
            v29 = *(v27 - 1);
            v30 = *v27;
            v27 += 2;
            v24 += byte_22ABE1B[v29];
            v25 += byte_22ABE1B[v30];
            v28 -= 2;
          }

          while (v28);
          v20 = v25 + v24;
          if ((v26 & 0x3FFE) == v26)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v20 = 0;
          v21 = v13;
          v22 = v16;
        }

        do
        {
          v31 = *v22++;
          v20 += byte_22ABE1B[v31];
          v21 -= 8;
        }

        while (v21 > 8u);
LABEL_17:
        v23 = &v16[((v8 - 9) >> 3) + 1];
LABEL_18:
        if (v11 == *(v15 + 28 * (v20 + byte_22ABE1B[~(-1 << v21) & *v23])))
        {
          if (v12 == -1)
          {
            v12 = result;
          }

          goto LABEL_6;
        }

        if (v8 < 9)
        {
          v33 = 0;
          goto LABEL_30;
        }

        v32 = (7 - v13);
        if (v32 <= 0xFFF7)
        {
          LOWORD(v32) = -9;
        }

        if ((v32 + v13) >= 8u)
        {
          v35 = 0;
          v36 = 0;
          v37 = ((v32 + v13) >> 3) + 1;
          LOWORD(v13) = v13 - 8 * ((((v32 + v13) >> 3) + 1) & 0x3FFE);
          v34 = &v16[v37 & 0x3FFE];
          v38 = (v10 + 16 * v7);
          v39 = v37 & 0x3FFE;
          do
          {
            v40 = *(v38 - 1);
            v41 = *v38;
            v38 += 2;
            v35 += byte_22ABE1B[v40];
            v36 += byte_22ABE1B[v41];
            v39 -= 2;
          }

          while (v39);
          v33 = v36 + v35;
          if ((v37 & 0x3FFE) == v37)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v33 = 0;
          v34 = v16;
        }

        do
        {
          v42 = *v34++;
          v33 += byte_22ABE1B[v42];
          LOWORD(v13) = v13 - 8;
        }

        while (v13 > 8u);
LABEL_29:
        v16 += ((v8 - 9) >> 3) + 1;
LABEL_30:
        if (v4 == *(v15 + 28 * (v33 + byte_22ABE1B[~(-1 << v13) & *v16])))
        {
          return result;
        }

LABEL_6:
        result = (++v9 + result) & v3;
        v7 = result / 0x30;
        v8 = result % 0x30;
        v13 = result % 0x30;
        if (((*(v6 + 16 * (result / 0x30) + (v8 >> 3) + 10) >> (v8 & 7)) & 1) == 0)
        {
          return -1;
        }
      }
    }

    v43 = 0;
    LODWORD(v44) = (v3 & v4) % 0x30;
    while (1)
    {
      v45 = (v6 + 16 * v7);
      v48 = *v45;
      v47 = v45 + 10;
      v46 = v48;
      if (v8 >= 9)
      {
        break;
      }

      v51 = 0;
LABEL_45:
      if (v4 == *(v46 + 28 * (v51 + byte_22ABE1B[~(-1 << v44) & *v47])))
      {
        return result;
      }

      result = (++v43 + result) & v3;
      v7 = result / 0x30;
      v8 = result % 0x30;
      v44 = result % 0x30;
      if (((*(v6 + 16 * (result / 0x30) + (v8 >> 3) + 10) >> (v8 & 7)) & 1) == 0)
      {
        return -1;
      }
    }

    v49 = (7 - v44);
    if (v49 <= 0xFFF7)
    {
      LOWORD(v49) = -9;
    }

    v50 = v49 + v44;
    if (v50 >= 8u)
    {
      v53 = 0;
      v54 = 0;
      v55 = (v50 >> 3) + 1;
      LOWORD(v44) = v44 - 8 * (((v50 >> 3) + 1) & 0x3FFE);
      v52 = &v47[((v50 >> 3) + 1) & 0x3FFE];
      v56 = (v6 + 11 + 16 * v7);
      v57 = v55 & 0x3FFE;
      do
      {
        v58 = *(v56 - 1);
        v59 = *v56;
        v56 += 2;
        v53 += byte_22ABE1B[v58];
        v54 += byte_22ABE1B[v59];
        v57 -= 2;
      }

      while (v57);
      v51 = v54 + v53;
      if ((v55 & 0x3FFE) == v55)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v51 = 0;
      v52 = v47;
    }

    do
    {
      v60 = *v52++;
      v51 += byte_22ABE1B[v60];
      LOWORD(v44) = v44 - 8;
    }

    while (v44 > 8u);
LABEL_44:
    v47 += ((v8 - 9) >> 3) + 1;
    goto LABEL_45;
  }

  return -1;
}

uint64_t sub_C3B3A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_C3BE34(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 80);
  if (v5 >= ~a2)
  {
    goto LABEL_32;
  }

  v6 = *(a1 + 72);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    if (v7 >= vcvts_n_u32_f32(v8, 2uLL))
    {
      v9 = 4;
      while ((v9 & 0x8000000000000000) == 0)
      {
        v9 *= 2;
        if (v7 < (v8 * v9))
        {
          goto LABEL_12;
        }
      }

LABEL_32:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

    v9 = 4;
LABEL_12:
    if (v9 > v6)
    {
      v10 = v5 - *(a1 + 40) + a2;
      v11 = 4;
      if (v6 > 4)
      {
        goto LABEL_15;
      }

LABEL_14:
      if (v10 >= (v8 * v11))
      {
LABEL_15:
        while ((v11 & 0x8000000000000000) == 0)
        {
          v11 *= 2;
          if (v11 >= v6)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_32;
      }

      if (v11 < v9 && v11 <= 0x7FFFFFFFFFFFFFFELL && v10 >= (*(a1 + 20) * (2 * v11)))
      {
        v11 *= 2;
      }

      v28 = *(a1 + 16);
      v29 = *(a1 + 32);
      memset(v30, 0, sizeof(v30));
      v31 = 0u;
      v27 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*&v28, 0)));
      BYTE8(v28) = 0;
      sub_C3C014(&v27, 0, a1, v11);
      v12 = *(a1 + 32);
      *(a1 + 32) = v29;
      v29 = v12;
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      *(a1 + 40) = v30[0];
      v16 = *a1;
      v15 = *(a1 + 16);
      v17 = v28;
      *a1 = v27;
      *(a1 + 16) = v17;
      v27 = v16;
      v28 = v15;
      v18 = *&v30[1];
      v30[0] = v13;
      v30[1] = v14;
      v19 = v30[3];
      v20 = *(a1 + 56);
      *(a1 + 48) = v18;
      *(a1 + 64) = v19;
      *&v30[2] = v20;
      *&v18 = v31;
      v21 = *(a1 + 72);
      *(a1 + 72) = v31;
      v31 = v21;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v18)));
      *(a1 + 24) = 0;
      v27 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v28, v21)));
      BYTE8(v28) = 0;
      if (v14)
      {
        v22 = v20;
        v23 = v14;
        if (v20 != v14)
        {
          do
          {
            v25 = *(v22 - 2);
            v22 -= 2;
            v24 = v25;
            if (v25)
            {
              free(v24);
              *v22 = 0;
            }
          }

          while (v22 != v14);
          v23 = v30[1];
        }

        v30[2] = v14;
        free(v23);
      }

      return 1;
    }
  }

  return result;
}

__n128 sub_C3B6B4@<Q0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_C3AF54(a1, a2);
  if (v6 == -1)
  {
    sub_C3B8E4(a1, a2, v7, a3);
    *(a3 + 72) = 1;
    return result;
  }

  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = 16 * (v6 / 0x30);
  v11 = v10 + v9;
  v13 = (v10 + v9 + 10);
  v12 = *(v10 + v9);
  v14 = v6 % 0x30;
  if (v6 % 0x30 < 9)
  {
    v18 = 0;
    goto LABEL_14;
  }

  v15 = 48 * (v6 / 0x30);
  v16 = (v15 - v6 + 7);
  if (v16 <= 0xFFF7)
  {
    LOWORD(v16) = -9;
  }

  v17 = v16 + v6 - v15;
  if (v17 >= 8u)
  {
    v22 = 0;
    v23 = 0;
    v24 = (v17 >> 3) + 1;
    LOWORD(v19) = v14 - 8 * (((v17 >> 3) + 1) & 0x3FFE);
    v20 = &v13[v24 & 0x3FFE];
    v25 = (v10 + v9 + 11);
    v26 = v24 & 0x3FFE;
    do
    {
      v27 = *(v25 - 1);
      v28 = *v25;
      v25 += 2;
      v22 += byte_22ABE1B[v27];
      v23 += byte_22ABE1B[v28];
      v26 -= 2;
    }

    while (v26);
    v18 = v23 + v22;
    if ((v24 & 0x3FFE) == v24)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = 0;
    v19 = v6 % 0x30;
    v20 = (v10 + v9 + 10);
  }

  do
  {
    v29 = *v20++;
    v18 += byte_22ABE1B[v29];
    LOWORD(v19) = v19 - 8;
  }

  while (v19 > 8u);
LABEL_13:
  v13 += ((v14 - 9) >> 3) + 1;
  LOBYTE(v14) = v19;
LABEL_14:
  v30 = v12 + 28 * (v18 + byte_22ABE1B[~(-1 << v14) & *v13]);
  if (*v11 + 28 * *(v11 + 8) == v30)
  {
    v11 += 16;
    if (v11 != v8)
    {
      do
      {
        v31 = v11;
        if (*(v11 + 8))
        {
          break;
        }

        v11 += 16;
      }

      while (v31 + 2 != v8);
      v30 = *v31;
    }
  }

  *&v33 = a1;
  *(&v33 + 1) = v9;
  v34.n128_u64[0] = v8;
  v34.n128_u64[1] = v11;
  *&v35 = v30;
  *(&v35 + 1) = v9;
  *&v36 = v8;
  *(&v36 + 1) = v8;
  v37 = 0;
  sub_C3CFC4(&v33);
  v32 = v36;
  *(a3 + 32) = v35;
  *(a3 + 48) = v32;
  *(a3 + 64) = v37;
  result = v34;
  *a3 = v33;
  *(a3 + 16) = result;
  *(a3 + 72) = 0;
  return result;
}

void *sub_C3B8E4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *(a1 + 40);
  if ((*(a1 + 80) - v4) >= 0x924924924924924)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  v5 = a3 / 0x30;
  v6 = a3 % 0x30;
  if (!v4)
  {
    v7 = *(a1 + 48);
    goto LABEL_18;
  }

  v7 = *(a1 + 48);
  v8 = (v7 + 16 * v5);
  if (((*(v8 + (v6 >> 3) + 10) >> (v6 & 7)) & 1) == 0)
  {
    goto LABEL_18;
  }

  v10 = v8 + 10;
  v9 = *v8;
  if (v6 < 9)
  {
    v13 = 0;
    v14 = a3 % 0x30;
    goto LABEL_16;
  }

  v11 = (48 * v5 - a3 + 7);
  if (v11 <= 0xFFF7)
  {
    LOWORD(v11) = -9;
  }

  v12 = v11 + a3 - 48 * v5;
  if (v12 >= 8u)
  {
    v16 = 0;
    v17 = 0;
    v18 = (v12 >> 3) + 1;
    LOWORD(v14) = v6 - 8 * (((v12 >> 3) + 1) & 0x3FFE);
    v15 = &v10[v18 & 0x3FFE];
    v19 = v8 + 11;
    v20 = v18 & 0x3FFE;
    do
    {
      v21 = *(v19 - 1);
      v22 = *v19;
      v19 += 2;
      v16 += byte_22ABE1B[v21];
      v17 += byte_22ABE1B[v22];
      v20 -= 2;
    }

    while (v20);
    v13 = v17 + v16;
    if ((v18 & 0x3FFE) == v18)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
    v14 = a3 % 0x30;
    v15 = v8 + 10;
  }

  do
  {
    v23 = *v15++;
    v13 += byte_22ABE1B[v23];
    LOWORD(v14) = v14 - 8;
  }

  while (v14 > 8u);
LABEL_15:
  v10 += ((v6 - 9) >> 3) + 1;
LABEL_16:
  if (*(a1 + 32) == *(v9 + 28 * (v13 + byte_22ABE1B[~(-1 << v14) & *v10])))
  {
    *(a1 + 40) = v4 - 1;
  }

LABEL_18:
  v24 = v7 + 16 * v5;
  v25 = *(v24 + 8);
  v26 = v24 + 10;
  if (v6 < 9)
  {
    v29 = 0;
    v32 = (v24 + 10);
    v30 = a3 % 0x30;
    goto LABEL_29;
  }

  v27 = (48 * (a3 / 0x30) - a3 + 7);
  if (v27 <= 0xFFF7)
  {
    LOWORD(v27) = -9;
  }

  v28 = v27 + a3 - 48 * (a3 / 0x30);
  if (v28 >= 8u)
  {
    v33 = 0;
    v34 = 0;
    v35 = (v28 >> 3) + 1;
    LOWORD(v30) = v6 - 8 * (((v28 >> 3) + 1) & 0x3FFE);
    v31 = (v26 + (v35 & 0x3FFE));
    v36 = (v24 + 11);
    v37 = v35 & 0x3FFE;
    do
    {
      v38 = *(v36 - 1);
      v39 = *v36;
      v36 += 2;
      v33 += byte_22ABE1B[v38];
      v34 += byte_22ABE1B[v39];
      v37 -= 2;
    }

    while (v37);
    v29 = v34 + v33;
    if ((v35 & 0x3FFE) == v35)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v29 = 0;
    v30 = a3 % 0x30;
    v31 = (v24 + 10);
  }

  do
  {
    v40 = *v31++;
    v29 += byte_22ABE1B[v40];
    LOWORD(v30) = v30 - 8;
  }

  while (v30 > 8u);
LABEL_28:
  v32 = (v26 + ((v6 - 9) >> 3) + 1);
LABEL_29:
  v41 = v6 >> 3;
  v42 = v29 + byte_22ABE1B[~(-1 << v30) & *v32];
  v43 = 1 << (v6 & 7);
  if ((v43 & *(v26 + (v6 >> 3))) == 0)
  {
    v71 = a2;
    v72 = a3 / 0x30;
    v44 = a1;
    v45 = a4;
    v70 = a3 % 0x30;
    v46 = a3;
    sub_C3CEB0(v24, (v29 + byte_22ABE1B[~(-1 << v30) & *v32]));
    LOWORD(a3) = v46;
    v6 = v70;
    a2 = v71;
    a1 = v44;
    a4 = v45;
    v5 = v72;
    ++*(v24 + 8);
    *(v26 + v41) |= v43;
  }

  v47 = (*v24 + 28 * v42);
  v48 = *a2;
  *(v47 + 12) = *(a2 + 12);
  *v47 = v48;
  v49 = *(a1 + 48);
  v50 = *(a1 + 56);
  v51 = v49 + 16 * v5;
  *(a1 + 80) = *(a1 + 80) - v25 + *(v51 + 8);
  v52 = (v51 + 10);
  if (v6 >= 9)
  {
    v53 = (48 * v5 - a3 + 7);
    if (v53 <= 0xFFF7)
    {
      LOWORD(v53) = -9;
    }

    v54 = v53 + a3 - 48 * v5;
    if (v54 >= 8u)
    {
      v58 = 0;
      v59 = 0;
      v60 = (v54 >> 3) + 1;
      v56 = v6 - 8 * (((v54 >> 3) + 1) & 0x3FFE);
      v57 = &v52[v60 & 0x3FFE];
      v61 = (16 * v5 + v49 + 11);
      v62 = v60 & 0x3FFE;
      do
      {
        v63 = *(v61 - 1);
        v64 = *v61;
        v61 += 2;
        v58 += byte_22ABE1B[v63];
        v59 += byte_22ABE1B[v64];
        v62 -= 2;
      }

      while (v62);
      v55 = v59 + v58;
      if ((v60 & 0x3FFE) == v60)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v55 = 0;
      v56 = v6;
      v57 = (v51 + 10);
    }

    do
    {
      v65 = *v57++;
      v55 += byte_22ABE1B[v65];
      v56 -= 8;
    }

    while (v56 > 8u);
LABEL_41:
    v52 += ((v6 - 9) >> 3) + 1;
    LOBYTE(v6) = v56;
    goto LABEL_42;
  }

  v55 = 0;
LABEL_42:
  v66 = *v51 + 28 * (v55 + byte_22ABE1B[~(-1 << v6) & *v52]);
  if (*v51 + 28 * *(v51 + 8) == v66)
  {
    v51 += 16;
    if (v51 != v50)
    {
      do
      {
        v67 = v51;
        if (*(v51 + 8))
        {
          break;
        }

        v51 += 16;
      }

      while (v67 + 2 != v50);
      v66 = *v67;
    }
  }

  *a4 = a1;
  a4[1] = v49;
  a4[2] = v50;
  a4[3] = v51;
  a4[4] = v66;
  a4[5] = v49;
  a4[6] = v50;
  a4[7] = v50;
  a4[8] = 0;

  return sub_C3CFC4(a4);
}

uint64_t sub_C3BE34(uint64_t a1)
{
  v2 = *(a1 + 80) - *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 72), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    do
    {
      v6 = v5;
      v5 >>= 1;
    }

    while (v6 >= 0x42 && v2 < (*(a1 + 20) * v5));
    v23 = *(a1 + 16);
    v24 = *(a1 + 32);
    memset(v25, 0, sizeof(v25));
    v26 = 0u;
    v22 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*&v23, 0)));
    BYTE8(v23) = 0;
    sub_C3C014(&v22, 0, a1, v5);
    v7 = *(a1 + 32);
    *(a1 + 32) = v24;
    v24 = v7;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *(a1 + 40) = v25[0];
    v11 = *a1;
    v10 = *(a1 + 16);
    v12 = v23;
    *a1 = v22;
    *(a1 + 16) = v12;
    v22 = v11;
    v23 = v10;
    v13 = *&v25[1];
    v25[0] = v8;
    v25[1] = v9;
    v14 = v25[3];
    v15 = *(a1 + 56);
    *(a1 + 48) = v13;
    *(a1 + 64) = v14;
    *&v25[2] = v15;
    *&v13 = v26;
    v16 = *(a1 + 72);
    *(a1 + 72) = v26;
    v26 = v16;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v13)));
    *(a1 + 24) = 0;
    v22 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v23, v16)));
    BYTE8(v23) = 0;
    if (v9)
    {
      v17 = v15;
      v18 = v9;
      if (v15 != v9)
      {
        do
        {
          v20 = *(v17 - 2);
          v17 -= 2;
          v19 = v20;
          if (v20)
          {
            free(v19);
            *v17 = 0;
          }
        }

        while (v17 != v9);
        v18 = v25[1];
      }

      v25[2] = v9;
      free(v18);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_C3C014(void *a1, int a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  if (a1[5] | a1[10])
  {
    for (i = a1[6]; i != v7[7]; i += 16)
    {
      if (*i)
      {
        free(*i);
        *i = 0;
      }

      *(i + 8) = 0;
    }

    v7[10] = 0;
  }

  v9 = v7[9];
  v10 = v7[2];
  *v7 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(v10, v9)));
  *(v7 + 24) = 0;
  v7[5] = 0;
  if (a2 == 1)
  {
    v11 = *(a3 + 72);
  }

  else
  {
    v11 = 4;
    if (a4 > 4)
    {
      goto LABEL_32;
    }

    while (*(a3 + 80) - *(a3 + 40) >= (v10.f32[0] * v11))
    {
      do
      {
LABEL_32:
        if ((v11 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "resize overflow");
        }

        v11 *= 2;
      }

      while (v11 < a4);
    }
  }

  if (v11 > v9)
  {
    sub_C3CA4C(v7 + 6, v11);
    *v7 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(v7[2], v7[9])));
    *(v7 + 24) = 0;
  }

  v12 = *(a3 + 48);
  v13 = *(a3 + 56);
  if (v12 == v13)
  {
    v14 = 0;
LABEL_36:
    v16 = *(a3 + 48);
    v17 = *(a3 + 56);
    v19 = 1;
    if (v12 == v13)
    {
      goto LABEL_50;
    }

    goto LABEL_37;
  }

  v14 = *v12;
  if (*(v12 + 8))
  {
    goto LABEL_36;
  }

  v15 = v12 + 16;
  do
  {
    v16 = v15;
    if (v14)
    {
      free(v14);
      *(v16 - 16) = 0;
    }

    *(v16 - 8) = 0;
    if (v16 == v13)
    {
      break;
    }

    v14 = *v16;
    v15 = v16 + 16;
  }

  while (!*(v16 + 8));
  v17 = *(a3 + 56);
  v19 = v12 == *(a3 + 48) && v13 == v17;
  if (v16 != v17 || !v19)
  {
LABEL_37:
    if (*(a3 + 40))
    {
      do
      {
        if (*(a3 + 32) != *v14)
        {
          break;
        }

        v14 += 7;
        v21 = *v16;
        if (v14 == (*v16 + 28 * *(v16 + 8)))
        {
          v22 = v16 + 16;
          do
          {
            v16 = v22;
            if (v21)
            {
              free(v21);
              *(v16 - 16) = 0;
            }

            *(v16 - 8) = 0;
            if (v16 == v13)
            {
              break;
            }

            v14 = *v16;
            v22 = v16 + 16;
            v21 = *v16;
          }

          while (!*(v16 + 8));
        }

        v23 = v16 == v17 && v19;
      }

      while (!v23 && *(a3 + 40));
    }
  }

LABEL_50:
  v24 = *(a3 + 56);
  if (v12 != *(a3 + 48) || v13 != v24 || v16 != v24)
  {
    v72 = a3;
    v73 = v7;
    v70 = v17;
    v71 = v12;
    v69 = v19;
    while (1)
    {
      v30 = v7[9] - 1;
      v31 = v30 & *v14;
      v32 = v7[6];
      v33 = v31 / 0x30;
      v34 = (v30 & *v14) % 0x30;
      v35 = v34 >> 3;
      v36 = 1 << (v34 & 7);
      if ((v36 & *(v32 + 16 * (v31 / 0x30) + (v34 >> 3) + 10)) != 0)
      {
        v37 = 1;
        do
        {
          v31 = (v31 + v37) & v30;
          v33 = v31 / 0x30;
          v34 = v31 % 0x30;
          v35 = (v31 % 0x30) >> 3;
          v36 = 1 << ((v31 % 0x30) & 7);
          ++v37;
        }

        while ((v36 & *(v32 + 16 * (v31 / 0x30) + v35 + 10)) != 0);
      }

      v38 = v34;
      v39 = v32 + 16 * v33;
      v40 = v39 + 10;
      if (v34 >= 9)
      {
        break;
      }

      v43 = 0;
      v45 = (v39 + 10);
LABEL_79:
      v54 = *(v39 + 8);
      v55 = v43 + byte_22ABE1B[~(-1 << v38) & *v45];
      if ((v36 & *(v40 + v35)) == 0)
      {
        v68 = *(v39 + 8);
        sub_C3CEB0(v39, (v43 + byte_22ABE1B[~(-1 << v38) & *v45]));
        v54 = v68;
        ++*(v39 + 8);
        *(v40 + v35) |= v36;
      }

      v56 = (*v39 + 28 * v55);
      v57 = *v14;
      *(v56 + 12) = *(v14 + 3);
      *v56 = v57;
      v7 = v73;
      v73[10] = v73[10] - v54 + *(v73[6] + 16 * v33 + 8);
      v14 += 7;
      v58 = *v16;
      if (v14 == (*v16 + 28 * *(v16 + 8)))
      {
        v63 = v16 + 16;
        v60 = v71;
        v59 = v72;
        v61 = v70;
        v62 = v69;
        do
        {
          v16 = v63;
          if (v58)
          {
            free(v58);
            *(v16 - 16) = 0;
          }

          *(v16 - 8) = 0;
          if (v16 == v13)
          {
            break;
          }

          v14 = *v16;
          v63 = v16 + 16;
          v58 = *v16;
        }

        while (!*(v16 + 8));
      }

      else
      {
        v60 = v71;
        v59 = v72;
        v61 = v70;
        v62 = v69;
      }

      while (1)
      {
        v64 = v16 == v61 && v62;
        if (v64 || !*(v59 + 40) || *(v59 + 32) != *v14)
        {
          break;
        }

        v14 += 7;
        v65 = *v16;
        if (v14 == (*v16 + 28 * *(v16 + 8)))
        {
          v66 = v16 + 16;
          do
          {
            v16 = v66;
            if (v65)
            {
              free(v65);
              *(v16 - 16) = 0;
            }

            *(v16 - 8) = 0;
            if (v16 == v13)
            {
              break;
            }

            v14 = *v16;
            v66 = v16 + 16;
            v65 = *v16;
          }

          while (!*(v16 + 8));
        }
      }

      v27 = *(v59 + 56);
      if (v60 == *(v59 + 48) && v13 == v27 && v16 == v27)
      {
        goto LABEL_101;
      }
    }

    v41 = (7 - v34);
    if (v41 <= 0xFFF7)
    {
      LOWORD(v41) = -9;
    }

    v42 = v41 + v34;
    if ((v41 + v34) >= 8u)
    {
      v46 = 0;
      v47 = 0;
      v48 = (v42 >> 3) + 1;
      v38 = v34 - 8 * (((v42 >> 3) + 1) & 0x3FFE);
      v44 = (v40 + (((v42 >> 3) + 1) & 0x3FFE));
      v49 = (v39 + 11);
      v50 = v48 & 0x3FFE;
      do
      {
        v51 = *(v49 - 1);
        v52 = *v49;
        v49 += 2;
        v46 += byte_22ABE1B[v51];
        v47 += byte_22ABE1B[v52];
        v50 -= 2;
      }

      while (v50);
      v43 = v47 + v46;
      if ((v48 & 0x3FFE) == v48)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v43 = 0;
      v44 = (v39 + 10);
    }

    do
    {
      v53 = *v44++;
      v43 += byte_22ABE1B[v53];
      v38 -= 8;
    }

    while (v38 > 8u);
LABEL_78:
    v45 = (v40 + ((v34 - 9) >> 3) + 1);
    goto LABEL_79;
  }

LABEL_101:
  ++*(v7 + 7);
}

void sub_C3C5D4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 4)
  {
    if (a2)
    {
      v13 = v6 + 16 * a2;
      do
      {
        *v6 = 0;
        v15 = *(a3 + 8);
        *(v6 + 8) = v15;
        if (v15)
        {
          v16 = malloc_type_malloc(28 * v15, 0x100004027586B93uLL);
          if (!v16)
          {
            fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v15);
            exit(1);
          }

          *v6 = v16;
          if (*(a3 + 8))
          {
            v17 = *a3;
            v18 = 28 * *(a3 + 8);
            do
            {
              v19 = *v17;
              *(v16 + 12) = *(v17 + 12);
              *v16 = v19;
              v16 = (v16 + 28);
              v17 = (v17 + 28);
              v18 -= 28;
            }

            while (v18);
          }
        }

        v14 = *(a3 + 10);
        *(v6 + 14) = *(a3 + 14);
        *(v6 + 10) = v14;
        v6 += 16;
      }

      while (v6 != v13);
      v6 = v13;
    }

    *(a1 + 8) = v6;
  }

  else
  {
    v7 = (v6 - *a1) >> 4;
    if ((v7 + a2) >> 60)
    {
      sub_1794();
    }

    v8 = v5 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = a2;
      v12 = malloc_type_malloc(16 * v10, 0x1020040EDED9539uLL);
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v20 = &v12[16 * v7];
    v26 = v20;
    v27 = &v12[16 * v10];
    v21 = 16 * a2;
    v22 = v20 + 16 * a2;
    do
    {
      sub_C3C814(a1, v20, a3);
      v20 += 16;
      v21 -= 16;
    }

    while (v21);
    v23 = *(a1 + 8);
    v24 = v26 + *a1 - v23;
    sub_C3C8E0(a1, *a1, v23, v24);
    v25 = *a1;
    *a1 = v24;
    *(a1 + 8) = v22;
    *(a1 + 16) = v27;
    if (v25)
    {
      free(v25);
    }
  }
}

void sub_C3C7D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_B2F26C(va);
  _Unwind_Resume(a1);
}

void sub_C3C7FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_B2F26C(va);
  _Unwind_Resume(a1);
}

void sub_C3C814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  v5 = *(a3 + 8);
  *(a2 + 8) = v5;
  if (v5)
  {
    v6 = malloc_type_malloc(28 * v5, 0x100004027586B93uLL);
    if (!v6)
    {
      fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v5);
      exit(1);
    }

    *a2 = v6;
    if (*(a3 + 8))
    {
      v7 = *a3;
      v8 = 28 * *(a3 + 8);
      do
      {
        v9 = *v7;
        *(v6 + 12) = *(v7 + 12);
        *v6 = v9;
        v6 = (v6 + 28);
        v7 = (v7 + 28);
        v8 -= 28;
      }

      while (v8);
    }
  }

  v10 = *(a3 + 10);
  *(a2 + 14) = *(a3 + 14);
  *(a2 + 10) = v10;
}

void sub_C3C8E0(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v14 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = 0;
      v9 = *(v7 + 4);
      *(v4 + 8) = v9;
      if (v9)
      {
        v10 = malloc_type_malloc(28 * v9, 0x100004027586B93uLL);
        if (!v10)
        {
          fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v9);
          exit(1);
        }

        *v4 = v10;
        if (*(v7 + 4))
        {
          v11 = *v7;
          v12 = 28 * *(v7 + 4);
          do
          {
            v13 = *v11;
            *(v10 + 12) = *(v11 + 12);
            *v10 = v13;
            v10 = (v10 + 28);
            v11 = (v11 + 28);
            v12 -= 28;
          }

          while (v12);
        }
      }

      v8 = *(v7 + 10);
      *(v4 + 14) = *(v7 + 7);
      *(v4 + 10) = v8;
      v7 += 2;
      v4 = v14 + 16;
      v14 += 16;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      if (*v6)
      {
        free(*v6);
        *v6 = 0;
      }

      v6 += 2;
    }
  }
}

void sub_C3CA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_B2F210(va);
  _Unwind_Resume(a1);
}

void sub_C3CA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_B2F210(va);
  _Unwind_Resume(a1);
}

void sub_C3CA4C(void *a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (a2)
  {
    v4 = (a2 - 1) / 0x30 + 1;
  }

  else
  {
    v4 = 0;
  }

  v42[0] = 0;
  v42[1] = 0;
  v5 = a1[1];
  v6 = (v5 - *a1) >> 4;
  if (v4 <= v6)
  {
    if (v4 < v6)
    {
      v7 = *a1 + 16 * v4;
      while (v5 != v7)
      {
        v9 = *(v5 - 2);
        v5 -= 2;
        v8 = v9;
        if (v9)
        {
          free(v8);
          *v5 = 0;
        }
      }

      v3[1] = v7;
    }
  }

  else
  {
    sub_C3C5D4(a1, v4 - v6, v42);
    if (v42[0])
    {
      free(v42[0]);
    }
  }

  if (v3[3] <= v2)
  {
    goto LABEL_42;
  }

  v10 = v2 % 0x30;
  v11 = v3[1];
  if (!(v2 % 0x30))
  {
    goto LABEL_34;
  }

  v39 = v3;
  v40 = v2;
  v12 = 0;
  v13 = (v11 - 16);
  v14 = v11 - 6;
  v41 = v2 - 9 - 48 * (v2 / 0x30);
  v15 = v41;
  do
  {
    v16 = v10 >> 3;
    v17 = 1 << (v10 & 7);
    if ((v17 & *(v14 + v16)) != 0)
    {
      if (v10 < 9u)
      {
        v18 = 0;
        v21 = (v11 - 6);
        LOBYTE(v19) = v10;
        if (*(v11 - 8) == 1)
        {
          goto LABEL_30;
        }

        goto LABEL_16;
      }

      if ((v41 + v12) >= 8u)
      {
        v22 = 0;
        v23 = 0;
        v24 = ((v15 >> 3) + 1) & 0x3FFE;
        v19 = v10 - 8 * ((((v41 + v12) >> 3) + 1) & 0x3FFE);
        v20 = (v14 + ((((v41 + v12) >> 3) + 1) & 0x3FFE));
        v26 = (v11 - 6);
        do
        {
          v22 += byte_22ABE1B[*v26];
          v23 += byte_22ABE1B[v26[1]];
          v26 += 2;
          v24 -= 2;
        }

        while (v24);
        v18 = v23 + v22;
        v25 = ((v41 + v12) >> 3) + 1;
        if ((v25 & 0x3FFE) == v25)
        {
LABEL_29:
          v21 = (v11 - 5 + ((v10 - 9) >> 3));
          if (*(v11 - 8) == 1)
          {
LABEL_30:
            if (*v13)
            {
              free(*v13);
            }

            *v13 = 0;
            goto LABEL_17;
          }

LABEL_16:
          sub_C3CD90(v11 - 16, (v18 + byte_22ABE1B[~(-1 << v19) & *v21]));
LABEL_17:
          --*(v11 - 8);
          *(v14 + v16) &= ~v17;
          goto LABEL_18;
        }
      }

      else
      {
        v18 = 0;
        v19 = v10;
        v20 = (v11 - 6);
      }

      do
      {
        v27 = *v20++;
        v18 += byte_22ABE1B[v27];
        v19 -= 8;
      }

      while (v19 > 8u);
      goto LABEL_29;
    }

LABEL_18:
    LOWORD(v10) = v10 + 1;
    ++v12;
    ++v15;
  }

  while (v10 != 48);
  v3 = v39;
  v2 = v40;
  v11 = v39[1];
LABEL_34:
  v3[4] = 0;
  v28 = *v3;
  if (*v3 != v11)
  {
    v29 = v11 - v28 - 16;
    if (v29 < 0x10)
    {
      v30 = 0;
      v31 = *v3;
      goto LABEL_40;
    }

    v32 = 0;
    v33 = 0;
    v34 = (v29 >> 4) + 1;
    v31 = v28 + 16 * (v34 & 0x1FFFFFFFFFFFFFFELL);
    v35 = (v28 + 24);
    v36 = v34 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      v37 = *(v35 - 8);
      v38 = *v35;
      v35 += 16;
      v32 += v37;
      v33 += v38;
      v36 -= 2;
    }

    while (v36);
    v30 = v33 + v32;
    if (v34 != (v34 & 0x1FFFFFFFFFFFFFFELL))
    {
      do
      {
LABEL_40:
        v30 += *(v31 + 8);
        v31 += 16;
      }

      while (v31 != v11);
    }

    v3[4] = v30;
  }

LABEL_42:
  v3[3] = v2;
}

void sub_C3CD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_C3CD90(uint64_t a1, unsigned int a2)
{
  v4 = (*(a1 + 8) - 1);
  v5 = malloc_type_malloc(28 * v4, 0x100004027586B93uLL);
  if (!v5)
  {
    fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v4);
    exit(1);
  }

  v6 = v5;
  v7 = *a1;
  if (a2)
  {
    v8 = 28 * a2;
    v9 = v6;
    do
    {
      v10 = *v7;
      *(v9 + 12) = *(v7 + 12);
      *v9 = v10;
      v9 = (v9 + 28);
      v7 = (v7 + 28);
      v8 -= 28;
    }

    while (v8);
    v7 = *a1;
  }

  v11 = (v7 + 28 * a2 + 28);
  if (v11 != (v7 + 28 * *(a1 + 8)))
  {
    v12 = 28 * a2;
    v13 = (v6 + v12);
    v14 = 28 * *(a1 + 8) - v12 - 28;
    do
    {
      v15 = *v11;
      *(v13 + 12) = *(v11 + 12);
      *v13 = v15;
      v13 = (v13 + 28);
      v11 = (v11 + 28);
      v14 -= 28;
    }

    while (v14);
    v7 = *a1;
  }

  if (v7)
  {
    free(v7);
  }

  *a1 = v6;
}

void sub_C3CEB0(uint64_t a1, unsigned int a2)
{
  v4 = (*(a1 + 8) + 1);
  v5 = malloc_type_malloc(28 * v4, 0x100004027586B93uLL);
  if (!v5)
  {
    fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v4);
    exit(1);
  }

  v6 = v5;
  v7 = *a1;
  if (a2)
  {
    v8 = 28 * a2;
    v9 = v6;
    do
    {
      v10 = *v7;
      *(v9 + 12) = *(v7 + 12);
      *v9 = v10;
      v9 = (v9 + 28);
      v7 = (v7 + 28);
      v8 -= 28;
    }

    while (v8);
    v7 = *a1;
  }

  if (*(a1 + 8) != a2)
  {
    v11 = 28 * a2;
    v12 = (v7 + v11);
    v13 = (v6 + v11 + 28);
    v14 = 28 * *(a1 + 8) - v11;
    do
    {
      v15 = *v12;
      *(v13 + 12) = *(v12 + 12);
      *v13 = v15;
      v13 = (v13 + 28);
      v12 = (v12 + 28);
      v14 -= 28;
    }

    while (v14);
    v7 = *a1;
  }

  if (v7)
  {
    free(v7);
  }

  *a1 = v6;
}

void *sub_C3CFC4(void *result)
{
  if (result[1] == result[5])
  {
    v6 = result[2];
    if (v6 == result[6])
    {
      v10 = result[7];
      v11 = result[3];
      while (v11 != v10 || v10 != v6 && result[4] != result[8])
      {
        if (!*(*result + 40))
        {
          break;
        }

        v12 = result[4];
        if (*(*result + 32) != *v12)
        {
          break;
        }

        result[4] = v12 + 7;
        if (v12 + 7 == (*v11 + 28 * *(v11 + 4)))
        {
          v13 = v11 + 2;
          do
          {
            v11 = v13;
            if (v13 == v6)
            {
              break;
            }

            result[4] = *v13;
            v13 += 2;
          }

          while (!*(v11 + 4));
          result[3] = v11;
        }
      }
    }

    else if (*(*result + 40))
    {
      v7 = *(*result + 32);
      v2 = result[4];
      if (v7 == *v2)
      {
        v8 = result[3];
        do
        {
          v2 += 7;
          if (v2 == (*v8 + 28 * *(v8 + 8)))
          {
            v8 += 16;
            if (v8 != v6)
            {
              do
              {
                v9 = v8;
                if (*(v8 + 8))
                {
                  break;
                }

                v8 += 16;
              }

              while (v9 + 2 != v6);
              v2 = *v9;
            }

            result[3] = v8;
          }
        }

        while (v7 == *v2);
        goto LABEL_25;
      }
    }
  }

  else if (*(*result + 40))
  {
    v1 = *(*result + 32);
    v2 = result[4];
    if (v1 == *v2)
    {
      v3 = result[3];
      do
      {
        v2 += 7;
        if (v2 == (*v3 + 28 * *(v3 + 8)))
        {
          v4 = result[2];
          v3 += 16;
          if (v3 != v4)
          {
            do
            {
              v5 = v3;
              if (*(v3 + 8))
              {
                break;
              }

              v3 += 16;
            }

            while (v5 + 2 != v4);
            v2 = *v5;
          }

          result[3] = v3;
        }
      }

      while (v1 == *v2);
LABEL_25:
      result[4] = v2;
    }
  }

  return result;
}

uint64_t sub_C3D18C(uint64_t a1, int a2, unsigned int a3)
{
  v6 = (a1 + 32);
  v7 = 2;
  v8 = a3;
  do
  {
    LODWORD(v14) = (a2 << *a1) | v8;
    sub_C3D298(v6, &v14, v23);
    v9 = *(a1 + 80);
    v10 = *(a1 + 88);
    v14 = v6;
    v15 = v9;
    v16 = v10;
    v17 = v10;
    v18 = 0;
    v19 = v9;
    v20 = v10;
    v21 = v10;
    v22 = 0;
    sub_C3CFC4(&v14);
    if (v23[1] != v15 || v24 != v16 || v25 != v17 || (v11 = a1, v25 != v24) && (v11 = a1, v26 != v18))
    {
      v11 = v26;
    }

    result = *(v11 + 4);
    v8 -= 2;
    v13 = result != 0x7FFFFFFF || v7 > a3;
    v7 += 2;
  }

  while (!v13);
  return result;
}

void *sub_C3D298@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  if (a1[10] == a1[5] || (v5 = sub_C3AF54(a1, a2), v5 == -1))
  {
    v19 = 0;
    v6 = a1[6];
    v7 = a1[7];
    *a3 = a1;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v7;
    goto LABEL_21;
  }

  v6 = a1[6];
  v7 = a1[7];
  v8 = 16 * (v5 / 0x30);
  v9 = v8 + v6;
  v11 = (v8 + v6 + 10);
  v10 = *(v8 + v6);
  v12 = v5 % 0x30;
  if (v5 % 0x30 < 9)
  {
    v16 = 0;
    goto LABEL_15;
  }

  v13 = 48 * (v5 / 0x30);
  v14 = (v13 - v5 + 7);
  if (v14 <= 0xFFF7)
  {
    LOWORD(v14) = -9;
  }

  v15 = v14 + v5 - v13;
  if (v15 >= 8u)
  {
    v20 = 0;
    v21 = 0;
    v22 = (v15 >> 3) + 1;
    LOWORD(v17) = v12 - 8 * (((v15 >> 3) + 1) & 0x3FFE);
    v18 = &v11[v22 & 0x3FFE];
    v23 = (v8 + v6 + 11);
    v24 = v22 & 0x3FFE;
    do
    {
      v25 = *(v23 - 1);
      v26 = *v23;
      v23 += 2;
      v20 += byte_22ABE1B[v25];
      v21 += byte_22ABE1B[v26];
      v24 -= 2;
    }

    while (v24);
    v16 = v21 + v20;
    if ((v22 & 0x3FFE) == v22)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v17 = v5 % 0x30;
    v18 = (v8 + v6 + 10);
  }

  do
  {
    v27 = *v18++;
    v16 += byte_22ABE1B[v27];
    LOWORD(v17) = v17 - 8;
  }

  while (v17 > 8u);
LABEL_14:
  v11 += ((v12 - 9) >> 3) + 1;
  LOBYTE(v12) = v17;
LABEL_15:
  v19 = v10 + 28 * (v16 + byte_22ABE1B[~(-1 << v12) & *v11]);
  if (*v9 + 28 * *(v9 + 8) == v19)
  {
    v9 += 16;
    if (v9 != v7)
    {
      do
      {
        v28 = v9;
        if (*(v9 + 8))
        {
          break;
        }

        v9 += 16;
      }

      while (v28 + 2 != v7);
      v19 = *v28;
    }
  }

  *a3 = a1;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v9;
LABEL_21:
  a3[4] = v19;
  a3[5] = v6;
  a3[6] = v7;
  a3[7] = v7;
  a3[8] = 0;

  return sub_C3CFC4(a3);
}

void sub_C3D494(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = a1;
  v221 = a3;
  *(a1 + 672) = *(a1 + 672) + 1.0;
  v5 = a3;
  v198 = *sub_A9C5E0((*(a1 + 56) + 88), a3);
  v6 = *(v4 + 384);
  v7 = (*(v4 + 392) - v6) >> 2;
  if (v7 <= v5)
  {
    v8 = a3 + 1;
    if (v8 <= v7)
    {
      if (v8 < v7)
      {
        *(v4 + 392) = v6 + 4 * v8;
      }
    }

    else
    {
      sub_49ABAC(v4 + 384, v8 - v7);
    }

    sub_4D9168(v4 + 408, a3 + 1, 0);
  }

  v9 = *(v4 + 408);
  v10 = *(v9 + 8 * (v5 >> 6));
  if (((1 << a3) & v10) == 0)
  {
    *(v9 + 8 * (v5 >> 6)) = (1 << a3) | v10;
    sub_DD38(v4 + 432, &v221);
    v5 = v221;
  }

  v197 = *(*(v4 + 384) + 4 * v5);
  sub_A9D53C(&v219, *(v4 + 40), v198);
  v11 = v219;
  if (v219 < v220)
  {
    v205 = v4;
    do
    {
      *(v4 + 680) = *(v4 + 680) + 1.0;
      v204 = *v11;
      v203 = v221;
      sub_A79708(&v207, *(v4 + 40), v198, v197, 0, 1);
      v12 = v211;
      if (v211 < v210 || v211 >= v212)
      {
        goto LABEL_11;
      }

      v206 = 0;
      v201 = 0x7FFFFFFF;
      v199 = 0xFFFFFFFFLL;
      v202 = 0xFFFFFFFFLL;
      LODWORD(v200) = -1;
      do
      {
        v14 = 0;
        v15 = __ROR8__(*v12, 32);
        v16 = *(v4 + 48);
        v17 = *(v16 + 72) - 1;
        v18 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v15 ^ (v15 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v15 ^ (v15 >> 33))) >> 33));
        v19 = v18 ^ (v18 >> 33);
        v20 = *(v16 + 48);
        v21 = v20 + 11;
        v22 = -1;
        for (i = v19; ; i = v14 + v24)
        {
          v24 = i & v17;
          v25 = (i & v17) / 0x30;
          v26 = (i & v17) % 0x30;
          v27 = (v20 + 16 * v25);
          if (((*(v27 + (v26 >> 3) + 10) >> (v26 & 7)) & 1) == 0)
          {
            if (v22 == -1)
            {
              v63 = v24;
            }

            else
            {
              v63 = v22;
            }

            if (!sub_B35190(v16, 1))
            {
              goto LABEL_104;
            }

            goto LABEL_60;
          }

          v28 = *v27;
          if (!*(v16 + 40))
          {
            break;
          }

          v29 = v27 + 10;
          if (v26 < 9)
          {
            v31 = 0;
            LOBYTE(v32) = v26;
            goto LABEL_34;
          }

          v30 = (48 * v25 - v24 + 7);
          if (v30 <= 0xFFF7)
          {
            LOWORD(v30) = -9;
          }

          if ((v30 + v24 - 48 * v25) >= 8u)
          {
            v34 = 0;
            v35 = 0;
            v36 = ((v30 + v24 - 48 * v25) >> 3) + 1;
            v32 = v26 - 8 * ((((v30 + v24 - 48 * v25) >> 3) + 1) & 0x3FFE);
            v33 = &v29[(((v30 + v24 - 48 * v25) >> 3) + 1) & 0x3FFE];
            v37 = (v21 + 16 * v25);
            v38 = v36 & 0x3FFE;
            do
            {
              v39 = *(v37 - 1);
              v40 = *v37;
              v37 += 2;
              v34 += byte_22A7D46[v39];
              v35 += byte_22A7D46[v40];
              v38 -= 2;
            }

            while (v38);
            v31 = v35 + v34;
            if ((v36 & 0x3FFE) == v36)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v31 = 0;
            v32 = v26;
            v33 = v27 + 10;
          }

          do
          {
            v41 = *v33++;
            v31 += byte_22A7D46[v41];
            v32 -= 8;
          }

          while (v32 > 8u);
LABEL_33:
          v29 += ((v26 - 9) >> 3) + 1;
LABEL_34:
          v42 = (v28 + 12 * (v31 + byte_22A7D46[~(-1 << v32) & *v29]));
          if (*(v16 + 36) != v42[1] || *(v16 + 32) != *v42)
          {
            break;
          }

          if (v22 == -1)
          {
            v22 = v24;
          }

LABEL_20:
          ++v14;
        }

        v44 = v27 + 10;
        if (v26 < 9)
        {
          v46 = 0;
          LOBYTE(v47) = v26;
        }

        else
        {
          v45 = (48 * v25 - v24 + 7);
          if (v45 <= 0xFFF7)
          {
            LOWORD(v45) = -9;
          }

          if ((v45 + v24 - 48 * v25) < 8u)
          {
            v46 = 0;
            v47 = v26;
            v48 = v27 + 10;
            goto LABEL_47;
          }

          v49 = 0;
          v50 = 0;
          v51 = ((v45 + v24 - 48 * v25) >> 3) + 1;
          v47 = v26 - 8 * ((((v45 + v24 - 48 * v25) >> 3) + 1) & 0x3FFE);
          v48 = &v44[(((v45 + v24 - 48 * v25) >> 3) + 1) & 0x3FFE];
          v52 = (v21 + 16 * v25);
          v53 = v51 & 0x3FFE;
          do
          {
            v54 = *(v52 - 1);
            v55 = *v52;
            v52 += 2;
            v49 += byte_22A7D46[v54];
            v50 += byte_22A7D46[v55];
            v53 -= 2;
          }

          while (v53);
          v46 = v50 + v49;
          if ((v51 & 0x3FFE) != v51)
          {
            do
            {
LABEL_47:
              v56 = *v48++;
              v46 += byte_22A7D46[v56];
              v47 -= 8;
            }

            while (v47 > 8u);
          }

          v44 += ((v26 - 9) >> 3) + 1;
        }

        if (v15 != *(v28 + 12 * (v46 + byte_22A7D46[~(-1 << v47) & *v44])))
        {
          goto LABEL_20;
        }

        if (v24 != -1)
        {
          v57 = v27 + 10;
          if (v26 < 9)
          {
            v60 = 0;
            v4 = v205;
          }

          else
          {
            v58 = (48 * v25 - v24 + 7);
            if (v58 <= 0xFFF7)
            {
              LOWORD(v58) = -9;
            }

            v59 = v58 + v24 - 48 * v25;
            v4 = v205;
            v60 = 0;
            if (v59 < 8u)
            {
              v61 = v26;
              v62 = v27 + 10;
              goto LABEL_109;
            }

            v111 = 0;
            v112 = (v59 >> 3) + 1;
            v61 = v26 - 8 * (((v59 >> 3) + 1) & 0x3FFE);
            v62 = &v57[v112 & 0x3FFE];
            v113 = v27 + 11;
            v114 = v112 & 0x3FFE;
            do
            {
              v115 = *(v113 - 1);
              v116 = *v113;
              v113 += 2;
              v60 += byte_22A7D46[v115];
              v111 += byte_22A7D46[v116];
              v114 -= 2;
            }

            while (v114);
            v60 += v111;
            if ((v112 & 0x3FFE) != v112)
            {
              do
              {
LABEL_109:
                v117 = *v62++;
                v60 += byte_22A7D46[v117];
                v61 -= 8;
              }

              while (v61 > 8u);
            }

            v57 += ((v26 - 9) >> 3) + 1;
            LOBYTE(v26) = v61;
          }

          v118 = *(v16 + 56);
          v110 = (v28 + 12 * (v60 + byte_22A7D46[~(-1 << v26) & *v57]));
          if ((*v27 + 12 * *(v27 + 4)) == v110 && v27 + 2 != v118)
          {
            v120 = v27 + 4;
            do
            {
              if (*(v120 - 4))
              {
                v121 = 1;
              }

              else
              {
                v121 = v120 == v118;
              }

              v120 += 2;
            }

            while (!v121);
            v110 = *(v120 - 4);
          }

          goto LABEL_122;
        }

        v63 = -1;
        if (!sub_B35190(v16, 1))
        {
LABEL_104:
          *v223 = v15;
          *&v223[8] = -1;
          sub_B356C0(v16, v223, v63, v225);
          v110 = v226;
          v4 = v205;
          goto LABEL_122;
        }

LABEL_60:
        v64 = 0;
        *v223 = v15;
        *&v223[8] = -1;
        v65 = *(v16 + 72) - 1;
        v66 = *(v16 + 48);
        v67 = v66 + 11;
        v68 = -1;
        while (2)
        {
          v69 = v19 & v65;
          v70 = (v19 & v65) / 0x30;
          v71 = (v19 & v65) % 0x30;
          v72 = v66 + 16 * v70;
          if (((*(v72 + (v71 >> 3) + 10) >> (v71 & 7)) & 1) == 0)
          {
            if (v68 == -1)
            {
              v109 = v19 & v65;
            }

            else
            {
              v109 = v68;
            }

            goto LABEL_102;
          }

          v73 = *(v16 + 40);
          v74 = *v72;
          if (v73)
          {
            v75 = (v72 + 10);
            if (v71 < 9)
            {
              v77 = 0;
              v78 = (v19 & v65) % 0x30;
            }

            else
            {
              v76 = (48 * v70 - v69 + 7);
              if (v76 <= 0xFFF7)
              {
                LOWORD(v76) = -9;
              }

              if ((v76 + v69 - 48 * v70) < 8u)
              {
                v77 = 0;
                v78 = (v19 & v65) % 0x30;
                v79 = (v72 + 10);
                goto LABEL_75;
              }

              v80 = 0;
              v81 = 0;
              v82 = ((v76 + v69 - 48 * v70) >> 3) + 1;
              LOWORD(v78) = v71 - 8 * ((((v76 + v69 - 48 * v70) >> 3) + 1) & 0x3FFE);
              v79 = &v75[(((v76 + v69 - 48 * v70) >> 3) + 1) & 0x3FFE];
              v83 = (v67 + 16 * v70);
              v84 = v82 & 0x3FFE;
              do
              {
                v85 = *(v83 - 1);
                v86 = *v83;
                v83 += 2;
                v80 += byte_22A7D46[v85];
                v81 += byte_22A7D46[v86];
                v84 -= 2;
              }

              while (v84);
              v77 = v81 + v80;
              if ((v82 & 0x3FFE) != v82)
              {
                do
                {
LABEL_75:
                  v87 = *v79++;
                  v77 += byte_22A7D46[v87];
                  LOWORD(v78) = v78 - 8;
                }

                while (v78 > 8u);
              }

              v75 += ((v71 - 9) >> 3) + 1;
            }

            v88 = &v74[3 * (v77 + byte_22A7D46[~(-1 << v78) & *v75])];
            if (*(v16 + 36) == v88[1] && *(v16 + 32) == *v88)
            {
              if (v68 == -1)
              {
                v68 = v19 & v65;
              }

LABEL_63:
              v19 = ++v64 + v69;
              continue;
            }
          }

          break;
        }

        v90 = (v72 + 10);
        if (v71 < 9)
        {
          v92 = 0;
          v93 = (v19 & v65) % 0x30;
        }

        else
        {
          v91 = (48 * v70 - v69 + 7);
          if (v91 <= 0xFFF7)
          {
            LOWORD(v91) = -9;
          }

          if ((v91 + v69 - 48 * v70) < 8u)
          {
            v92 = 0;
            v93 = (v19 & v65) % 0x30;
            v94 = (v72 + 10);
            goto LABEL_90;
          }

          v95 = 0;
          v96 = 0;
          v97 = ((v91 + v69 - 48 * v70) >> 3) + 1;
          LOWORD(v93) = v71 - 8 * ((((v91 + v69 - 48 * v70) >> 3) + 1) & 0x3FFE);
          v94 = &v90[(((v91 + v69 - 48 * v70) >> 3) + 1) & 0x3FFE];
          v98 = (v67 + 16 * v70);
          v99 = v97 & 0x3FFE;
          do
          {
            v100 = *(v98 - 1);
            v101 = *v98;
            v98 += 2;
            v95 += byte_22A7D46[v100];
            v96 += byte_22A7D46[v101];
            v99 -= 2;
          }

          while (v99);
          v92 = v96 + v95;
          if ((v97 & 0x3FFE) != v97)
          {
            do
            {
LABEL_90:
              v102 = *v94++;
              v92 += byte_22A7D46[v102];
              LOWORD(v93) = v93 - 8;
            }

            while (v93 > 8u);
          }

          v90 += ((v71 - 9) >> 3) + 1;
        }

        if (v15 != *&v74[3 * (v92 + byte_22A7D46[~(-1 << v93) & *v90])])
        {
          goto LABEL_63;
        }

        if (v69 == -1)
        {
          v109 = -1;
LABEL_102:
          v4 = v205;
          sub_B356C0(v16, v223, v109, v225);
          v110 = v226;
          goto LABEL_122;
        }

        v103 = (v72 + 10);
        v4 = v205;
        if (v71 < 9)
        {
          v106 = 0;
        }

        else
        {
          v104 = (48 * v70 - v69 + 7);
          if (v104 <= 0xFFF7)
          {
            LOWORD(v104) = -9;
          }

          v105 = v104 + v69 - 48 * v70;
          if (v105 < 8u)
          {
            v106 = 0;
            v107 = (v19 & v65) % 0x30;
            v108 = (v72 + 10);
            goto LABEL_191;
          }

          v166 = 0;
          v167 = 0;
          v168 = (v105 >> 3) + 1;
          v107 = v71 - 8 * (((v105 >> 3) + 1) & 0x3FFE);
          v108 = &v103[v168 & 0x3FFE];
          v169 = (v72 + 11);
          v170 = v168 & 0x3FFE;
          do
          {
            v171 = *(v169 - 1);
            v172 = *v169;
            v169 += 2;
            v166 += byte_22A7D46[v171];
            v167 += byte_22A7D46[v172];
            v170 -= 2;
          }

          while (v170);
          v106 = v167 + v166;
          if ((v168 & 0x3FFE) != v168)
          {
            do
            {
LABEL_191:
              v173 = *v108++;
              v106 += byte_22A7D46[v173];
              v107 -= 8;
            }

            while (v107 > 8u);
          }

          v103 += ((v71 - 9) >> 3) + 1;
          LOBYTE(v71) = v107;
        }

        v174 = *(v16 + 56);
        v110 = &v74[3 * (v106 + byte_22A7D46[~(-1 << v71) & *v103])];
        if ((*v72 + 12 * *(v72 + 8)) == v110)
        {
          v72 += 16;
          if (v72 != v174)
          {
            do
            {
              v175 = v72;
              if (*(v72 + 8))
              {
                break;
              }

              v72 += 16;
            }

            while (v175 + 2 != v174);
            v110 = *v175;
          }
        }

        if (v72 != v174 && v73)
        {
          do
          {
            if (*(v16 + 36) != v110[1] || *(v16 + 32) != *v110)
            {
              break;
            }

            v110 += 3;
            if (v110 == (*v72 + 12 * *(v72 + 8)))
            {
              v72 += 16;
              if (v72 != v174)
              {
                do
                {
                  v195 = v72;
                  if (*(v72 + 8))
                  {
                    break;
                  }

                  v72 += 16;
                }

                while (v195 + 2 != v174);
                v110 = *v195;
              }
            }
          }

          while (v72 != v174);
        }

LABEL_122:
        v122 = v110[2];
        if (v122 != -1)
        {
          v123 = v110[2];
          if (sub_C435EC((v4 + 488), v122, v15))
          {
            goto LABEL_124;
          }

LABEL_155:
          v206 &= *(v4 + 32);
          goto LABEL_156;
        }

        v125 = *(v16 + 112);
        *(v16 + 112) = v125 + 1;
        v110[2] = v125;
        v127 = *(v16 + 96);
        v126 = *(v16 + 104);
        if (v127 >= v126)
        {
          v129 = *(v16 + 88);
          v130 = v127 - v129;
          v131 = (v127 - v129) >> 3;
          v132 = v131 + 1;
          if ((v131 + 1) >> 61)
          {
            sub_1794();
          }

          v133 = v126 - v129;
          if (v133 >> 2 > v132)
          {
            v132 = v133 >> 2;
          }

          if (v133 >= 0x7FFFFFFFFFFFFFF8)
          {
            v134 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v134 = v132;
          }

          if (v134)
          {
            if (!(v134 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v148 = (v127 - v129) >> 3;
          v149 = (8 * v131);
          v150 = (8 * v131 - 8 * v148);
          *v149 = v15;
          v128 = v149 + 1;
          memcpy(v150, v129, v130);
          *(v16 + 88) = v150;
          *(v16 + 96) = v128;
          *(v16 + 104) = 0;
          if (v129)
          {
            operator delete(v129);
          }

          v4 = v205;
        }

        else
        {
          *v127 = v15;
          v128 = v127 + 1;
        }

        *(v16 + 96) = v128;
        v123 = v110[2];
        if (!sub_C435EC((v4 + 488), v123, v15))
        {
          goto LABEL_155;
        }

LABEL_124:
        if (v206 & 1) != 0 && (*(v211 + 15))
        {
          v124 = v213;
          if (v213)
          {
            v124 = *(v213 + 4 * ((v211 - v210) >> 4));
          }

          if ((v124 & v204) == 0)
          {
            v156 = (v209 + *(v209 - *v209 + 6));
            v157 = v156 + *v156;
            v158 = &v218;
            if (!v216)
            {
              v158 = v215;
            }

            v159 = *&v157[8 * v215[1] + 4 + 8 * ((v211 - v210) >> 4)] + *v158;
            v160 = *(v4 + 64);
            if (!v160 || (v161 = sub_C3D18C(v160, v123, *(v4 + 168) + ~a2), v161 != 0x7FFFFFFF) && v161 >= v159)
            {
              if (sub_C3A95C(v4, 0, v123, a2, v159))
              {
                v162 = *(v4 + 176);
                LODWORD(v225[0]) = (v123 << *v162) | a2;
                v163 = sub_C3AD10((v162 + 8), v225);
                *(v163 + 8) = v200;
                *(v163 + 12) = v202 | (v199 << 32);
                *(v163 + 20) = v201;
                *(v163 + 24) = v203;
              }
            }
          }
        }

        if ((*(v211 + 15) & 2) != 0)
        {
          if (v213)
          {
            if (*(v213 + 4 * ((v211 - v210) >> 4)) != v204)
            {
              goto LABEL_156;
            }
          }

          else if (v204)
          {
            goto LABEL_156;
          }

          v135 = *(v4 + 176);
          v136 = v135 + 32;
          v222 = (v123 << *v135) | (a2 - 1);
          v137 = sub_C3AF54(v135 + 32, &v222);
          if (v137 == -1)
          {
            v164 = v138;
            if (sub_C3B3A4(v136, 1))
            {
              *v223 = v222;
              *&v223[4] = xmmword_22A8400;
              v224 = -COERCE_DOUBLE(0x8000000080000000);
              sub_C3B6B4(v136, v223, v225);
            }

            else
            {
              *v223 = v222;
              *&v223[4] = xmmword_22A8400;
              v224 = -COERCE_DOUBLE(0x8000000080000000);
              sub_C3B8E4(v136, v223, v164, v225);
            }

            v165 = v226;
          }

          else
          {
            v139 = *(v135 + 80) + 16 * (v137 / 0x30);
            v140 = (v139 + 10);
            v141 = v137 % 0x30;
            if (v137 % 0x30 < 9)
            {
              v145 = 0;
            }

            else
            {
              v142 = 48 * (v137 / 0x30);
              v143 = (v142 - v137 + 7);
              if (v143 <= 0xFFF7)
              {
                LOWORD(v143) = -9;
              }

              v144 = v143 + v137 - v142;
              v145 = 0;
              if (v144 < 8u)
              {
                v146 = v137 % 0x30;
                v147 = (v139 + 10);
                goto LABEL_201;
              }

              v176 = 0;
              v177 = (v144 >> 3) + 1;
              LOWORD(v146) = v141 - 8 * (((v144 >> 3) + 1) & 0x3FFE);
              v147 = &v140[v177 & 0x3FFE];
              v178 = (v139 + 11);
              v179 = v177 & 0x3FFE;
              do
              {
                v180 = *(v178 - 1);
                v181 = *v178;
                v178 += 2;
                v145 += byte_22ABE1B[v180];
                v176 += byte_22ABE1B[v181];
                v179 -= 2;
              }

              while (v179);
              v145 += v176;
              if ((v177 & 0x3FFE) != v177)
              {
                do
                {
LABEL_201:
                  v182 = *v147++;
                  v145 += byte_22ABE1B[v182];
                  LOWORD(v146) = v146 - 8;
                }

                while (v146 > 8u);
              }

              v140 += ((v141 - 9) >> 3) + 1;
              LOBYTE(v141) = v146;
            }

            v183 = *(v135 + 88);
            v165 = *v139 + 28 * (v145 + byte_22ABE1B[~(-1 << v141) & *v140]);
            if (*v139 + 28 * *(v139 + 8) == v165 && v139 + 16 != v183)
            {
              v185 = v139 + 32;
              do
              {
                if (*(v185 - 8))
                {
                  v186 = 1;
                }

                else
                {
                  v186 = v185 == v183;
                }

                v185 += 16;
              }

              while (!v186);
              v165 = *(v185 - 32);
            }
          }

          v187 = *(v165 + 4);
          if (v187 == 0x7FFFFFFF)
          {
            goto LABEL_156;
          }

          v188 = *(v211 + 2) + v187;
          if (v206)
          {
            v189 = (v209 + *(v209 - *v209 + 6));
            v190 = v189 + *v189;
            v191 = &v218;
            if (!v216)
            {
              v191 = v215;
            }

            if (v188 >= *&v190[8 * v215[1] + 8 + 8 * ((v211 - v210) >> 4)] + *v191 || !sub_A9D3B8(*(v4 + 40), &v207, v188))
            {
              goto LABEL_232;
            }

            goto LABEL_225;
          }

          if (v216 == 1)
          {
            if (!sub_A7A1E8(*(v4 + 40), &v207, v188, 1u))
            {
LABEL_223:
              v206 = 0;
              goto LABEL_156;
            }
          }

          else if ((sub_A7A710(&v207, v188, 1) & 1) == 0)
          {
            goto LABEL_223;
          }

LABEL_225:
          v200 = (v211 - v210) >> 4;
          v202 = -1431655765 * ((v215 - v214) >> 2);
          if (v216)
          {
            v192 = v218;
          }

          else
          {
            v192 = 0x7FFFFFFF;
          }

          v201 = v192;
          if (v216)
          {
            v193 = v217;
          }

          else
          {
            v193 = 0xFFFFFFFFLL;
          }

          v199 = v193;
LABEL_232:
          v206 = 1;
        }

LABEL_156:
        v151 = v210;
        v12 = v211 + 2;
        v211 += 2;
        if (*(v207 + 16) == 1 && (v208 & 1) == 0 && v12 >= v210 && v12 < v212)
        {
          do
          {
            v152 = __ROR8__(*v12, 32);
            if (HIDWORD(v152) == 1 && (v152 + 3) < 2)
            {
              break;
            }

            v154 = sub_2D5204(**(v207 + 4120));
            v151 = v210;
            v12 = v211;
            if (v154)
            {
              break;
            }

            v12 = v211 + 2;
            v211 = v12;
          }

          while (v12 >= v210 && v12 < v212);
        }
      }

      while (v12 >= v151 && v12 < v212);
LABEL_11:
      v11 = v219 + 4;
      v219 = v11;
    }

    while (v11 < v220);
  }
}

uint64_t sub_C3E5B4(uint64_t a1)
{
  v21 = *(a1 + 232);
  v22 = *(a1 + 192);
  v19 = *(a1 + 216);
  v20 = *(a1 + 208);
  v17 = 8 * (*(a1 + 256) & 0x3FFFFFFFFFFFFFFLL);
  v18 = *(a1 + 264);
  v15 = *(a1 + 280);
  v16 = *(a1 + 312);
  v2 = *(a1 + 328);
  v13 = 8 * (*(a1 + 304) & 0x3FFFFFFFFFFFFFFLL);
  v14 = *(a1 + 360);
  v3 = 8 * (*(a1 + 352) & 0x3FFFFFFFFFFFFFFLL);
  v4 = *(a1 + 400);
  v5 = *(a1 + 376);
  v6 = *(a1 + 384);
  v7 = *(a1 + 432);
  v8 = 8 * (*(a1 + 424) & 0x3FFFFFFFFFFFFFFLL);
  v9 = 8 * (*(a1 + 480) & 0x3FFFFFFFFFFFFFFLL);
  v10 = *(a1 + 448);
  result = v20 + v21 - (v22 + v19) + v15 + v17 - v18 + v2 + v13 - v16 + v5 + v3 + v4 - (v14 + v6) + v8 + v10 - v7 + sub_C439D4((a1 + 488)) + v9;
  v12 = *(a1 + 176);
  if (v12)
  {
    if (*(a1 + 584) == 1)
    {
      result += 28 * *(v12 + 104);
    }
  }

  return result;
}

uint64_t sub_C3E6F0(uint64_t a1)
{
  result = *(*(a1 + 48) + 104) - *(*(a1 + 48) + 88) + *(*(a1 + 56) + 104) + 12 * (*(*(a1 + 56) + 72) + *(*(a1 + 48) + 72)) - *(*(a1 + 56) + 88);
  v3 = *(a1 + 64);
  if (v3)
  {
    result += 28 * *(v3 + 104);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *v4;
    v7 = v4 + 1;
    v6 = v4[1];
    v8 = v7[1] - v5;
    if (v5 != v6)
    {
      v9 = v6 - v5 - 48;
      if (v9 >= 0x30)
      {
        v11 = 0;
        v12 = v9 / 0x30 + 1;
        v10 = &v5[48 * (v12 & 0xFFFFFFFFFFFFFFELL)];
        v13 = v5 + 64;
        v14 = v12 & 0xFFFFFFFFFFFFFFELL;
        do
        {
          v8 = v8 + *(v13 - 3) + 8 * (*(v13 - 6) & 0x3FFFFFFFFFFFFFFLL) - *(v13 - 5);
          v11 = v11 + v13[3] + 8 * (*v13 & 0x3FFFFFFFFFFFFFFLL) - v13[1];
          v13 += 12;
          v14 -= 2;
        }

        while (v14);
        v8 += v11;
        if (v12 == (v12 & 0xFFFFFFFFFFFFFFELL))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v10 = v5;
      }

      do
      {
        v8 = v8 + *(v10 + 5) + 8 * (*(v10 + 2) & 0x3FFFFFFFFFFFFFFLL) - *(v10 + 3);
        v10 += 48;
      }

      while (v10 != v6);
    }

LABEL_11:
    result += v8;
  }

  v15 = *(a1 + 96);
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *v15;
  v18 = v15 + 1;
  v17 = v15[1];
  v19 = v18[1] - v16;
  if (v16 != v17)
  {
    v20 = v17 - v16 - 48;
    if (v20 >= 0x30)
    {
      v22 = 0;
      v23 = v20 / 0x30 + 1;
      v21 = &v16[48 * (v23 & 0xFFFFFFFFFFFFFFELL)];
      v24 = v16 + 64;
      v25 = v23 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        v19 = v19 + *(v24 - 3) + 8 * (*(v24 - 6) & 0x3FFFFFFFFFFFFFFLL) - *(v24 - 5);
        v22 = v22 + v24[3] + 8 * (*v24 & 0x3FFFFFFFFFFFFFFLL) - v24[1];
        v24 += 12;
        v25 -= 2;
      }

      while (v25);
      v19 += v22;
      if (v23 == (v23 & 0xFFFFFFFFFFFFFFELL))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v21 = v16;
    }

    do
    {
      v19 = v19 + *(v21 + 5) + 8 * (*(v21 + 2) & 0x3FFFFFFFFFFFFFFLL) - *(v21 + 3);
      v21 += 48;
    }

    while (v21 != v17);
  }

LABEL_20:
  result += v19;
LABEL_21:
  v26 = *(a1 + 176);
  if (v26)
  {
    if ((*(a1 + 584) & 1) == 0)
    {
      result += 28 * *(v26 + 104);
    }
  }

  return result;
}