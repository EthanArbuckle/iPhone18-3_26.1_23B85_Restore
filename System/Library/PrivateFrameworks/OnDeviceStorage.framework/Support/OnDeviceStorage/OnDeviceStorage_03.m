uint64_t sub_100025A04(uint64_t result)
{
  *(result + 40) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = 0;
  *result = off_1001640A8;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_100025A38(void *a1, uint64_t a2)
{
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_100006504();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_100006754((a1 + 1), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = a1[1];
    v14 = a1[2] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[1];
    a1[1] = v15;
    a1[2] = v6;
    a1[3] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  a1[2] = v6;
}

double sub_100025B04(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 8);
  }

  *(a1 + 16) = v2;
  *(a1 + 32) = 0;
  free(*(a1 + 40));
  *(a1 + 40) = 0;
  result = NAN;
  *(a1 + 48) = -1;
  return result;
}

void *sub_100025B90(void *a1)
{
  *a1 = off_1001640A8;
  sub_100025B04(a1);
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_100025BFC(void *a1)
{
  sub_100025B90(a1);

  operator delete();
}

uint64_t sub_100025C68(uint64_t result, uint64_t a2, int a3, int a4)
{
  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 52) = a4;
  return result;
}

uint64_t sub_100025C74(void *a1, uint64_t a2)
{
  v5 = a1[8];
  v4 = a1[9];
  if (v5 >= v4)
  {
    v7 = a1[7];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_100006504();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_100006754((a1 + 7), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = (8 * v8 + 8);
    v13 = a1[7];
    v14 = a1[8] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[7];
    a1[7] = v15;
    a1[8] = v6;
    a1[9] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  v17 = a1[7];
  v18 = 126 - 2 * __clz((v6 - v17) >> 3);
  a1[8] = v6;
  if (v6 == v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  return sub_100025D78(v17, v6, v19, 1);
}

uint64_t sub_100025D78(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*(v76 + 80) < *(*v8 + 80))
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = v8 + 2;
      v87 = v8[2];
      v88 = *v8;
      v89 = v85[10];
      v90 = *(*v8 + 80);
      v91 = *(v87 + 80);
      if (v89 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_177;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = (v8 + 1);
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v92 = v8;
        v93 = (v8 + 2);
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = (v8 + 2);
          result = v88;
          if (v91 >= v90)
          {
LABEL_177:
            v85 = v87;
            goto LABEL_178;
          }
        }

LABEL_169:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_178:
      v140 = *(a2 - 1);
      if (*(v140 + 80) < v85[10])
      {
        *v86 = v140;
        *(a2 - 1) = v85;
        v141 = *v86;
        v142 = *v84;
        v143 = *(v141 + 80);
        if (v143 < *(v142 + 80))
        {
          v8[1] = v141;
          v8[2] = v142;
          v144 = *v8;
          if (v143 < *(*v8 + 80))
          {
            *v8 = v141;
            v8[1] = v144;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return sub_10002672C(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *(v99 + 80);
            if (v101 < *(v100 + 80))
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102 + 8) = v100;
                if (!v102)
                {
                  break;
                }

                v100 = *(v8 + v102 - 8);
                v102 -= 8;
                if (v101 >= *(v100 + 80))
                {
                  v103 = (v8 + v102 + 8);
                  goto LABEL_130;
                }
              }

              v103 = v8;
LABEL_130:
              *v103 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v137 = *v7;
          v136 = v7[1];
          v7 = v94;
          v138 = *(v136 + 80);
          if (v138 < *(v137 + 80))
          {
            v139 = v7;
            do
            {
              *v139 = v137;
              v137 = *(v139 - 2);
              --v139;
            }

            while (v138 < *(v137 + 80));
            *v139 = v136;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v104 = (v9 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v8[v107];
            v109 = *v108;
            if (2 * v106 + 2 < v9 && *(v109 + 80) < *(v108[1] + 80))
            {
              v109 = v108[1];
              ++v108;
              v107 = 2 * v106 + 2;
            }

            result = &v8[v106];
            v110 = *result;
            v111 = *(*result + 80);
            if (*(v109 + 80) >= v111)
            {
              do
              {
                v112 = v108;
                *result = v109;
                if (v104 < v107)
                {
                  break;
                }

                v113 = (2 * v107) | 1;
                v108 = &v8[v113];
                v114 = 2 * v107 + 2;
                v109 = *v108;
                if (v114 < v9 && *(v109 + 80) < *(v108[1] + 80))
                {
                  v109 = v108[1];
                  ++v108;
                  v113 = v114;
                }

                result = v112;
                v107 = v113;
              }

              while (*(v109 + 80) >= v111);
              *v112 = v110;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        do
        {
          v115 = 0;
          v116 = *v8;
          v117 = v8;
          do
          {
            v118 = &v117[v115];
            v119 = v118 + 1;
            v120 = v118[1];
            v121 = (2 * v115) | 1;
            v115 = 2 * v115 + 2;
            if (v115 >= v9)
            {
              v115 = v121;
            }

            else
            {
              v124 = v118[2];
              v122 = v118 + 2;
              v123 = v124;
              result = *(v120 + 80);
              if (result >= *(v124 + 80))
              {
                v115 = v121;
              }

              else
              {
                v120 = v123;
                v119 = v122;
              }
            }

            *v117 = v120;
            v117 = v119;
          }

          while (v115 <= ((v9 - 2) >> 1));
          if (v119 == --a2)
          {
            *v119 = v116;
          }

          else
          {
            *v119 = *a2;
            *a2 = v116;
            v125 = (v119 - v8 + 8) >> 3;
            v126 = v125 < 2;
            v127 = v125 - 2;
            if (!v126)
            {
              v128 = v127 >> 1;
              v129 = &v8[v128];
              v130 = *v129;
              v131 = *v119;
              v132 = *(*v119 + 80);
              if (*(*v129 + 80) < v132)
              {
                do
                {
                  v133 = v129;
                  *v119 = v130;
                  if (!v128)
                  {
                    break;
                  }

                  v128 = (v128 - 1) >> 1;
                  v129 = &v8[v128];
                  v130 = *v129;
                  v119 = v133;
                }

                while (*(*v129 + 80) < v132);
                *v133 = v131;
              }
            }
          }

          v126 = v9-- <= 2;
        }

        while (!v126);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 80);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 80);
      v17 = *(*v8 + 80);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 80) < *(*v8 + 80))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 80) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 80);
      v29 = *(v27 + 80);
      v30 = *(a2 - 2);
      v31 = *(v30 + 80);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 80) < *(v32 + 80))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 80) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 80);
      v40 = *(v38 + 80);
      v41 = *(a2 - 3);
      v42 = *(v41 + 80);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 80) < *(v43 + 80))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 80) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 80);
      v48 = *(*v25 + 80);
      v49 = *v35;
      v50 = *(*v35 + 80);
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 80);
    v21 = *(*v11 + 80);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 80) < *(*v11 + 80))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 80) < v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 80);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 80) < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 80) >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 80) >= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 80) < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 80) >= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_81;
      }

      v66 = sub_1000268A0(v8, v65);
      v8 = v65 + 1;
      result = sub_1000268A0(v65 + 1, a2);
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_81:
        result = sub_100025D78(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 80);
      if (*(*(v8 - 1) + 80) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(*(a2 - 1) + 80))
      {
        v68 = v8 + 1;
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          ++v68;
        }

        while (v53 >= *(*v8 + 80));
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *(v67 + 80));
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *(v70 + 80));
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 >= *(v73 + 80));
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *(v74 + 80));
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *(v79 + 80);
  v81 = *(*v8 + 80);
  v82 = *(a2 - 1);
  v83 = *(v82 + 80);
  if (v80 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v135 = *v8;
      v134 = v8[1];
      if (*(v134 + 80) < *(*v8 + 80))
      {
        *v8 = v134;
        v8[1] = v135;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v145 = *(a2 - 1);
      if (*(v145 + 80) >= v81)
      {
        return result;
      }

      v8[1] = v145;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

uint64_t *sub_10002672C(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 80);
  v8 = *(*result + 80);
  v9 = *a3;
  v10 = *(*a3 + 80);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 80) < *(*result + 80))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 80) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 80) < *(v5 + 80))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 80) < *(*a2 + 80))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 80) < *(*result + 80))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 80) < *(*a4 + 80))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 80) < *(*a3 + 80))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 80) < *(*a2 + 80))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 80) < *(*result + 80))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL sub_1000268A0(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 80);
      v8 = *(*a1 + 80);
      v9 = *(a2 - 1);
      v10 = *(v9 + 80);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 80) < *(*a1 + 80))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 80) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_10002672C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 80);
    v26 = *(*a1 + 80);
    v27 = *(v23 + 80);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 80) < *(v21 + 80))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 80);
          if (v45 < *(v44 + 80))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 80))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 80) < *(*a1 + 80))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 80);
  v16 = *(*a1 + 80);
  v17 = *(v11 + 80);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 80);
    if (v38 < *(v37 + 80))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 80))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

int main(int argc, const char **argv, const char **envp)
{
  if (qword_10016A620 != -1)
  {
    swift_once();
  }

  sub_100026EEC(qword_100173730, v12);
  sub_100026F50(v12, v13);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v3 = *(type metadata accessor for LogMessage() - 8);
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC(v12);
  [objc_opt_self() check];
  sub_10010F814();
  sub_100026EEC(qword_100173730, v12);
  sub_100026F50(v12, v13);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC(v12);
  v6 = objc_opt_self();
  v7 = [v6 sharedURLCache];
  [v7 setMemoryCapacity:0];

  v8 = [v6 sharedURLCache];
  [v8 setDiskCapacity:0];

  v9 = objc_autoreleasePoolPush();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_10016A698 != -1)
  {
    swift_once();
  }

  v10 = qword_100173898;

  objc_autoreleasePoolPop(v9);
  qword_1001732E0 = v10;
  sub_1001013B8();
  return 0;
}

uint64_t sub_100026EEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100026F50(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100026F94(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100026FDC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void (*sub_100027068(uint64_t *a1, uint64_t *a2))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_10002A1EC(v2, *a2);
  sub_10002A1F8(v6, v7);
  return sub_1000270F4;
}

void sub_1000270F4(uint64_t *a1)
{
  v1 = sub_10001BBEC(*a1);

  free(v1);
}

uint64_t sub_100027120@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = sub_10002A1C8(v2);
  v8 = sub_10002A1D0(v2);
  v9 = v6;
  result = sub_10002A1D8(&v9, &v8);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result >= v4)
  {
    result = sub_10002A864(a2 + 2, v2);
    *a2 = v5;
    a2[1] = v4;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100027240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100027430(a1, a3, sub_10002BFD0, sub_10002BF74, sub_10002A1D8);
  if (a2 >= 1)
  {
    if (result < 0 || result >= a2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (result <= 0 && result > a2)
  {
    return 0;
  }

LABEL_8:
  v8 = __OFADD__(a1, a2);
  v7 = a1 + a2;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_10002A1C8(v3);
    v10 = sub_10002A1D0(v3);
    v11 = v9;
    result = sub_10002A1D8(&v11, &v10);
    if ((v7 & 0x8000000000000000) == 0 && result >= v7)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100027338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100027430(a1, a3, sub_10002BFD4, sub_10002BF78, sub_10002A2EC);
  if (a2 >= 1)
  {
    if (result < 0 || result >= a2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (result <= 0 && result > a2)
  {
    return 0;
  }

LABEL_8:
  v8 = __OFADD__(a1, a2);
  v7 = a1 + a2;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_10002A1C8(v3);
    v10 = sub_10002A1D0(v3);
    v11 = v9;
    result = sub_10002A2EC(&v11, &v10);
    if ((v7 & 0x8000000000000000) == 0 && result >= v7)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100027430(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v9 = v5;
  v12 = a3(v9);
  v15 = a4(v9);
  v16 = v12;
  result = a5(&v16, &v15);
  if (a1 < 0 || result < a1)
  {
    __break(1u);
  }

  else
  {
    v14 = a3(v9);
    v15 = a4(v9);
    v16 = v14;
    result = a5(&v16, &v15);
    if ((a2 & 0x8000000000000000) == 0 && result >= a2)
    {
      return a2 - a1;
    }
  }

  __break(1u);
  return result;
}

void (*sub_1000275E8(uint64_t *a1, uint64_t *a2))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_10002A32C(v2, *a2);
  sub_10002A33C(v6, v7);
  return sub_100027674;
}

void sub_100027674(uint64_t *a1)
{
  v1 = sub_10001B428(*a1);

  free(v1);
}

int64_t sub_1000276A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = sub_10002A1C8(v2);
  v8 = sub_10002A1D0(v2);
  v9 = v6;
  result = sub_10002A2EC(&v9, &v8);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result >= v4)
  {
    result = sub_10002A468(a2 + 2, v2);
    *a2 = v5;
    a2[1] = v4;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100027770@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(uint64_t *, uint64_t *)@<X4>, void *a4@<X8>)
{
  v8 = a1(v4);
  v10 = a2(v4);
  v11 = v8;
  result = a3(&v11, &v10);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = 0;
    a4[1] = result;
  }

  return result;
}

BOOL sub_10002782C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v8 = a3(v5);
  v10 = a4(v5);
  v11 = v8;
  return a5(&v11, &v10) == 0;
}

void *sub_10002789C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1000278BC(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100027958@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(uint64_t *, uint64_t *)@<X4>, uint64_t *a4@<X8>)
{
  v8 = a1(v4);
  v10 = a2(v4);
  v11 = v8;
  result = a3(&v11, &v10);
  *a4 = result;
  return result;
}

uint64_t *sub_1000279CC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000279E8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t (*a4)(uint64_t *, uint64_t *)@<X5>, void *a5@<X8>)
{
  v9 = *a1;
  v10 = a2(v5);
  v12 = a3(v5);
  v13 = v10;
  result = a4(&v13, &v12);
  if (v9 < 0 || v9 >= result)
  {
    __break(1u);
  }

  else
  {
    *a5 = v9 + 1;
  }

  return result;
}

uint64_t sub_100027A74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t *, uint64_t *))
{
  v10 = *a1;
  v11 = a4(v6);
  v13 = a5(v6);
  v14 = v11;
  result = a6(&v14, &v13);
  if (v10 < 0 || v10 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v10 + 1;
  }

  return result;
}

uint64_t sub_100027B00(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100027B78(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100027BF8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

void **sub_100027C48@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100026F94(&qword_10016A910, &qword_100130918);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = CxxSequenceBox.init(_:)(v1);
  v8 = CxxSequenceBox.sequence.modify();
  v10 = sub_10002A1D0(v9);
  (v8)(v15, 0);
  v11 = CxxSequenceBox.sequence.modify();
  v13 = sub_10002A1C8(v12);
  (v11)(v15, 0);
  result = sub_10002A4B8(v2);
  *a1 = v7;
  a1[1] = v10;
  a1[2] = v13;
  return result;
}

void *sub_100027D70()
{
  v1 = sub_1000297F4(v0);
  sub_10002A4B8(v0);
  return v1;
}

_DWORD *sub_100027DE0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100027E30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100027240(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void **sub_100027EE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100026F94(&qword_10016A918, &qword_100130920);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = CxxSequenceBox.init(_:)(v1);
  v8 = CxxSequenceBox.sequence.modify();
  v10 = sub_10002A1D0(v9);
  (v8)(v15, 0);
  v11 = CxxSequenceBox.sequence.modify();
  v13 = sub_10002A1C8(v12);
  (v11)(v15, 0);
  result = sub_10002A8A8(v2);
  *a1 = v7;
  a1[1] = v10;
  a1[2] = v13;
  return result;
}

uint64_t sub_100028004(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v8 = a3(v5);
  v10 = a4(v5);
  v11 = v8;
  return a5(&v11, &v10);
}

void *sub_100028068()
{
  v1 = sub_1000298A4(v0);
  sub_10002A8A8(v0);
  return v1;
}

uint64_t sub_1000280A0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10002A1EC(v2, *a2);
  v5 = sub_10001BBEC(v4);
  sub_10002B9C8(v5, a1);

  return sub_10001BBEC(a1);
}

void (*sub_1000280EC(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x90uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  *(v5 + 128) = v2;
  *(v5 + 136) = v7;
  v8 = sub_10002A1EC(v2, v7);
  sub_10002A1F8(v6, v8);
  return sub_10002817C;
}

void sub_10002817C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10002A1F8(v2 + 64, v2);
    v3 = sub_10002A1EC(*(v2 + 128), *(v2 + 136));
    v4 = sub_10001BBEC(v3);
    sub_10002B9C8(v4, v2 + 64);
    sub_10001BBEC(v2 + 64);
  }

  else
  {
    v5 = sub_10002A1EC(*(v2 + 128), *(v2 + 136));
    v6 = sub_10001BBEC(v5);
    sub_10002B9C8(v6, v2);
  }

  v7 = sub_10001BBEC(v2);

  free(v7);
}

uint64_t (*sub_100028248(void *a1, uint64_t *a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1000282C0(v4, *a2, a2[1]);
  return sub_10002BFF0;
}

uint64_t sub_1000282C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x70uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[12] = a3;
  v8[13] = v4;
  v8[11] = a2;
  v10 = sub_10002A1C8(v4);
  v9[10] = sub_10002A1D0(v4);
  v9[5] = v10;
  result = sub_10002A1D8(v9 + 5, v9 + 10);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    sub_10002A864(v9 + 2, v4);
    *v9 = a2;
    v9[1] = a3;
    return sub_1000283A0;
  }

LABEL_10:
  __break(1u);
  return result;
}

int64_t sub_1000283C8(void *a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x70uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[12] = a3;
  v8[13] = v4;
  v8[11] = a2;
  v10 = sub_10002A1C8(v4);
  v9[10] = sub_10002A1D0(v4);
  v9[5] = v10;
  result = sub_10002A2EC(v9 + 5, v9 + 10);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    sub_10002A468(v9 + 2, v4);
    *v9 = a2;
    v9[1] = a3;
    return sub_1000284A8;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1000284D0(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, void *), uint64_t *a4, uint64_t *a5)
{
  v8 = *a1;
  if (a2)
  {
    v10 = v8[12];
    v9 = v8[13];
    v11 = v8[11];
    sub_10002BA04(*a1, (v8 + 5), a4, a5);
    a3(v9, v11, v10, v8 + 5);
    sub_10002BA6C((v8 + 5), a4, a5);
  }

  else
  {
    a3(v8[13], v8[11], v8[12], v8);
  }

  sub_10002BA6C(v8, a4, a5);

  free(v8);
}

uint64_t sub_100028598@<X0>(uint64_t (*a1)(void *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100029954(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_1000285C4(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v5 = sub_10002A1EC(v2, v3);
    sub_10002A1F8(v12, v5);
    v6 = sub_10002A1EC(v2, v4);
    sub_10002A1F8(v11, v6);
    v7 = sub_10002A1EC(v2, v3);
    v8 = sub_10001BBEC(v7);
    sub_10002B9C8(v8, v11);
    sub_10001BBEC(v11);
    v9 = sub_10002A1EC(v2, v4);
    v10 = sub_10001BBEC(v9);
    sub_10002B9C8(v10, v12);
    return sub_10001BBEC(v12);
  }

  return result;
}

uint64_t sub_100028678(__int128 *a1, uint64_t *a2)
{
  v4 = sub_10002A32C(v2, *a2);
  v5 = sub_10001B428(v4);
  sub_10002A694(v5, a1);

  return sub_10001B428(a1);
}

void (*sub_1000286C4(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xB0uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  *(v5 + 160) = v2;
  *(v5 + 168) = v7;
  v8 = sub_10002A32C(v2, v7);
  sub_10002A33C(v6, v8);
  return sub_100028754;
}

void sub_100028754(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10002A33C((v2 + 80), v2);
    v3 = sub_10002A32C(*(v2 + 160), *(v2 + 168));
    v4 = sub_10001B428(v3);
    sub_10002A694(v4, (v2 + 80));
    sub_10001B428(v2 + 80);
  }

  else
  {
    v5 = sub_10002A32C(*(v2 + 160), *(v2 + 168));
    v6 = sub_10001B428(v5);
    sub_10002A694(v6, v2);
  }

  v7 = sub_10001B428(v2);

  free(v7);
}

uint64_t (*sub_100028820(void *a1, uint64_t *a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1000283C8(v4, *a2, a2[1]);
  return sub_100028898;
}

void sub_10002889C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

int64_t sub_1000288E4@<X0>(uint64_t (*a1)(__int128 *)@<X0>, int64_t *a2@<X8>)
{
  result = sub_100029BB4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_100028910(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v5 = sub_10002A32C(v2, v3);
    sub_10002A33C(__dst, v5);
    v6 = sub_10002A32C(v2, v4);
    sub_10002A33C(v11, v6);
    v7 = sub_10002A32C(v2, v3);
    v8 = sub_10001B428(v7);
    sub_10002A694(v8, v11);
    sub_10001B428(v11);
    v9 = sub_10002A32C(v2, v4);
    v10 = sub_10001B428(v9);
    sub_10002A694(v10, __dst);
    return sub_10001B428(__dst);
  }

  return result;
}

uint64_t sub_100028A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100027338(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_100028AE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002A1D0(v1);
  *a1 = result;
  return result;
}

uint64_t sub_100028B10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002A1C8(v1);
  *a1 = result;
  return result;
}

void (*sub_100028BC8(uint64_t *a1))(uint64_t *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = *v1;
  v5 = sub_10002A1D0(v3 + 64);
  sub_10002A1F8(v4, v5);
  return sub_10002BF9C;
}

void *sub_100028C50@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = sub_10002A294(&v4);
  *a1 = v4;
  return result;
}

uint64_t sub_100028C94@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100028CC0(uint64_t a1)
{
  v2 = sub_100029F88(&qword_10016A778, type metadata accessor for FileAttributeKey);
  v3 = sub_100029F88(&qword_10016A780, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100028D7C(uint64_t a1)
{
  v2 = sub_100029F88(&qword_10016A788, type metadata accessor for FileProtectionType);
  v3 = sub_100029F88(&qword_10016A790, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void *sub_100028E98@<X0>(void *result@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t (*a4)(uint64_t *, uint64_t *)@<X5>, uint64_t *a5@<X8>)
{
  v7 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = a2(v5);
    v11 = a3(v5);
    v12 = v10;
    result = a4(&v12, &v11);
    if ((v7 & 0x8000000000000000) == 0 && v7 < result)
    {
      *a5 = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_100028F6C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t *, uint64_t *))
{
  v7 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = a4(v6);
    v12 = a5(v6);
    v13 = v11;
    result = a6(&v13, &v12);
    if ((v7 & 0x8000000000000000) == 0 && v7 < result)
    {
      *v10 = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *sub_100029000@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t (*a5)(uint64_t *, uint64_t *)@<X6>, uint64_t *a6@<X8>)
{
  v8 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v11 = a3(v6);
    v12 = a4(v6);
    v13 = v11;
    result = a5(&v13, &v12);
    if ((v8 & 0x8000000000000000) == 0 && result >= v8)
    {
      *a6 = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100029094@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t *)@<X4>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v7 = *a2;
  v8 = v5;
  result = a3(&v8, &v7);
  *a4 = result;
  return result;
}

uint64_t sub_1000290DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100029124(uint64_t a1)
{
  v2 = sub_100029F88(&qword_10016A768, type metadata accessor for URLResourceKey);
  v3 = sub_100029F88(&qword_10016A770, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000291F8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100029234()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100029288()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

void (*sub_1000292FC(uint64_t *a1))(uint64_t *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = *v1;
  v5 = sub_10002A1D0(v3 + 80);
  sub_10002A33C(v4, v5);
  return sub_10002BFA0;
}

void *sub_100029384@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = sub_10002A428(&v4);
  *a1 = v4;
  return result;
}

uint64_t sub_1000293C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100029464(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v5 = *a1;
  v7 = *a2;
  v8 = v5;
  return a5(&v8, &v7);
}

uint64_t sub_10002949C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v24[0] = sub_10002A1C8(a1);
  v25 = sub_10002A1D0(a1);
  result = sub_10002A1D8(v24, &v25);
  if (result < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (result < a3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = *a4;
  v10 = a4[1];
  v11 = *a4 == v10;
  v12 = a2 == a3;
  if (a2 != a3 && v9 != v10)
  {
    v13 = a3 - 1;
    v14 = v10 - 1;
    v15 = *a4;
    while (v15 < v10)
    {
      v16 = sub_10002A1EC(a4 + 2, v15);
      sub_10002A1F8(v24, v16);
      v17 = sub_10002A1EC(a1, a2);
      v18 = sub_10001BBEC(v17);
      sub_10002B9C8(v18, v24);
      sub_10001BBEC(v24);
      v19 = sub_10002A1C8(a1);
      v20 = sub_10002A1D0(a1);
      v24[0] = v19;
      v25 = v20;
      result = sub_10002A1D8(v24, &v25);
      if (a2 >= result)
      {
        goto LABEL_18;
      }

      v21 = sub_10002A1C8((a4 + 2));
      v22 = sub_10002A1D0((a4 + 2));
      v24[0] = v21;
      v25 = v22;
      result = sub_10002A1D8(v24, &v25);
      if (v9 < 0 || v15 >= result)
      {
        goto LABEL_19;
      }

      v11 = v14 == v15;
      v12 = v13 == a2;
      if (v13 != a2)
      {
        ++a2;
        if (v14 != v15++)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  if (!v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v11)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

int64_t sub_100029648(void *a1, uint64_t a2, int64_t a3, uint64_t *a4)
{
  *&__dst[0] = sub_10002A1C8(a1);
  v25 = sub_10002A1D0(a1);
  result = sub_10002A2EC(__dst, &v25);
  if (result < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (result < a3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = *a4;
  v10 = a4[1];
  v11 = *a4 == v10;
  v12 = a2 == a3;
  if (a2 != a3 && v9 != v10)
  {
    v13 = a3 - 1;
    v14 = v10 - 1;
    v15 = *a4;
    while (v15 < v10)
    {
      v16 = sub_10002A32C(a4 + 2, v15);
      sub_10002A33C(__dst, v16);
      v17 = sub_10002A32C(a1, a2);
      v18 = sub_10001B428(v17);
      sub_10002A694(v18, __dst);
      sub_10001B428(__dst);
      v19 = sub_10002A1C8(a1);
      v20 = sub_10002A1D0(a1);
      *&__dst[0] = v19;
      v25 = v20;
      result = sub_10002A2EC(__dst, &v25);
      if (a2 >= result)
      {
        goto LABEL_18;
      }

      v21 = sub_10002A1C8((a4 + 2));
      v22 = sub_10002A1D0((a4 + 2));
      *&__dst[0] = v21;
      v25 = v22;
      result = sub_10002A2EC(__dst, &v25);
      if (v9 < 0 || v15 >= result)
      {
        goto LABEL_19;
      }

      v11 = v14 == v15;
      v12 = v13 == a2;
      if (v13 != a2)
      {
        ++a2;
        if (v14 != v15++)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  if (!v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v11)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

void *sub_1000297F4(uint64_t *a1)
{
  v8[0] = sub_10002A1C8(a1);
  v7[0] = sub_10002A1D0(a1);
  v2 = sub_10002A2EC(v8, v7);
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = v2;
  v4 = sub_10007E714(v2, 0);
  sub_10002A468(v7, a1);
  v5 = sub_1000801B0(v8, (v4 + 4), v3);

  if (v5 != v3)
  {
    __break(1u);
    return &_swiftEmptyArrayStorage;
  }

  return v4;
}

void *sub_1000298A4(uint64_t *a1)
{
  v8[0] = sub_10002A1C8(a1);
  v7[0] = sub_10002A1D0(a1);
  v2 = sub_10002A1D8(v8, v7);
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = v2;
  v4 = sub_10007E7A4(v2, 0);
  sub_10002A864(v7, a1);
  v5 = sub_10008030C(v8, (v4 + 4), v3);

  if (v5 != v3)
  {
    __break(1u);
    return &_swiftEmptyArrayStorage;
  }

  return v4;
}

uint64_t sub_100029954(uint64_t (*a1)(void *))
{
  v27[0] = sub_10002A1C8(v1);
  v26[0] = sub_10002A1D0(v1);
  v4 = sub_10002A1D8(v27, v26);
  if (v4 >= 1)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = sub_10002A1EC(v1, v6);
      sub_10002A1F8(v27, v7);
      v8 = a1(v27);
      sub_10001BBEC(v27);
      if (v2)
      {
        return v6;
      }

      if (v8)
      {
        break;
      }

      v9 = sub_10002A1C8(v1);
      v10 = sub_10002A1D0(v1);
      v27[0] = v9;
      v26[0] = v10;
      result = sub_10002A1D8(v27, v26);
      if (v6 >= result)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

LABEL_6:
      if (++v6 >= v5)
      {
        return v6;
      }
    }

    v12 = v5;
    while (1)
    {
      v13 = sub_10002A1C8(v1);
      v14 = sub_10002A1D0(v1);
      v27[0] = v13;
      v26[0] = v14;
      result = sub_10002A1D8(v27, v26);
      v5 = v12 - 1;
      if (v12 < 1 || v12 > result)
      {
        goto LABEL_22;
      }

      if (v6 >= v5)
      {
        return v6;
      }

      v15 = sub_10002A1EC(v1, v12 - 1);
      sub_10002A1F8(v27, v15);
      v16 = a1(v27);
      sub_10001BBEC(v27);
      --v12;
      if ((v16 & 1) == 0)
      {
        if (v6 != v5)
        {
          v17 = sub_10002A1EC(v1, v6);
          sub_10002A1F8(v27, v17);
          v18 = sub_10002A1EC(v1, v5);
          sub_10002A1F8(v26, v18);
          v19 = sub_10002A1EC(v1, v6);
          v20 = sub_10001BBEC(v19);
          sub_10002B9C8(v20, v26);
          sub_10001BBEC(v26);
          v21 = sub_10002A1EC(v1, v5);
          v22 = sub_10001BBEC(v21);
          sub_10002B9C8(v22, v27);
          sub_10001BBEC(v27);
        }

        v23 = sub_10002A1C8(v1);
        v24 = sub_10002A1D0(v1);
        v27[0] = v23;
        v26[0] = v24;
        v25 = sub_10002A1D8(v27, v26);
        if (v6 < 0 || v6 >= v25)
        {
          __break(1u);
          return 0;
        }

        goto LABEL_6;
      }
    }
  }

  return 0;
}

int64_t sub_100029BB4(uint64_t (*a1)(__int128 *))
{
  *&__dst[0] = sub_10002A1C8(v1);
  *&v26[0] = sub_10002A1D0(v1);
  v4 = sub_10002A2EC(__dst, v26);
  if (v4 >= 1)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = sub_10002A32C(v1, v6);
      sub_10002A33C(__dst, v7);
      v8 = a1(__dst);
      sub_10001B428(__dst);
      if (v2)
      {
        return v6;
      }

      if (v8)
      {
        break;
      }

      v9 = sub_10002A1C8(v1);
      v10 = sub_10002A1D0(v1);
      *&__dst[0] = v9;
      *&v26[0] = v10;
      result = sub_10002A2EC(__dst, v26);
      if (v6 >= result)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

LABEL_6:
      if (++v6 >= v5)
      {
        return v6;
      }
    }

    v12 = v5;
    while (1)
    {
      v13 = sub_10002A1C8(v1);
      v14 = sub_10002A1D0(v1);
      *&__dst[0] = v13;
      *&v26[0] = v14;
      result = sub_10002A2EC(__dst, v26);
      v5 = v12 - 1;
      if (v12 < 1 || v12 > result)
      {
        goto LABEL_22;
      }

      if (v6 >= v5)
      {
        return v6;
      }

      v15 = sub_10002A32C(v1, v12 - 1);
      sub_10002A33C(__dst, v15);
      v16 = a1(__dst);
      sub_10001B428(__dst);
      --v12;
      if ((v16 & 1) == 0)
      {
        if (v6 != v5)
        {
          v17 = sub_10002A32C(v1, v6);
          sub_10002A33C(__dst, v17);
          v18 = sub_10002A32C(v1, v5);
          sub_10002A33C(v26, v18);
          v19 = sub_10002A32C(v1, v6);
          v20 = sub_10001B428(v19);
          sub_10002A694(v20, v26);
          sub_10001B428(v26);
          v21 = sub_10002A32C(v1, v5);
          v22 = sub_10001B428(v21);
          sub_10002A694(v22, __dst);
          sub_10001B428(__dst);
        }

        v23 = sub_10002A1C8(v1);
        v24 = sub_10002A1D0(v1);
        *&__dst[0] = v23;
        *&v26[0] = v24;
        v25 = sub_10002A2EC(__dst, v26);
        if (v6 < 0 || v6 >= v25)
        {
          __break(1u);
          return 0;
        }

        goto LABEL_6;
      }
    }
  }

  return 0;
}

uint64_t sub_100029E4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100029E6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100029F88(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002A1F8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    sub_1000120CC((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  if (*(a2 + 63) < 0)
  {
    sub_1000120CC((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }

  return a1;
}

void sub_10002A278(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

char *sub_10002A33C(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000120CC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_1000120CC(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_1000120CC(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  __dst[72] = *(a2 + 72);
  return __dst;
}

void sub_10002A3E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002A438(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

void *sub_10002A468(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1000238C4(a1, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4));
  return a1;
}

void **sub_10002A4B8(void **a1)
{
  v3 = a1;
  sub_10002BE40(&v3, sub_10002BDC8);
  return a1;
}

__n128 *sub_10002A550(__n128 *a1, __n128 *a2)
{
  sub_10002A960(a1, a2);
  sub_10002A4B8(a2);
  return a1;
}

uint64_t sub_10002A5B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002A5D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_10002A660(uint64_t a1, __int128 *a2)
{
  sub_10002A694(a1, a2);
  sub_10001B428(a2);
  return a1;
}

__n128 sub_10002A694(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  result = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = result;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  *(a1 + 72) = *(a2 + 72);
  return result;
}

uint64_t sub_10002A714(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10002A768(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_10002A7D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10002A7E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002A800(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void *sub_10002A864(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1000239D4(a1, *a2, a2[1], (a2[1] - *a2) >> 6);
  return a1;
}

void **sub_10002A8A8(void **a1)
{
  v3 = a1;
  sub_10001182C(&v3);
  return a1;
}

__n128 *sub_10002A92C(__n128 *a1, __n128 *a2)
{
  sub_10002A960(a1, a2);
  sub_10002A8A8(a2);
  return a1;
}

__n128 sub_10002A960(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_10002A9C4(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_1000238C4(a1 + 8, *(a2 + 1), *(a2 + 2), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 2) - *(a2 + 1)) >> 4));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10002394C(a1 + 32, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 5));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_1000239D4(a1 + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 6);
  *(a1 + 80) = *(a2 + 10);
  return a1;
}

void sub_10002AA8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002BE40(va, sub_10002BE98);
  sub_10002BE40(va, sub_10002BDC8);
  _Unwind_Resume(a1);
}

void **sub_10002AAE4(void **a1)
{
  v3 = a1 + 7;
  sub_10001182C(&v3);
  v3 = a1 + 4;
  sub_10002BE40(&v3, sub_10002BE98);
  v3 = a1 + 1;
  sub_10002BE40(&v3, sub_10002BDC8);
  return a1;
}

uint64_t sub_10002ABB4(uint64_t a1, int *a2)
{
  sub_10002ABE8(a1, a2);
  sub_10002AAE4(a2);
  return a1;
}

__n128 sub_10002ABE8(uint64_t a1, int *a2)
{
  v2 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 24) = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = *(a2 + 6);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  result = *(a2 + 14);
  *(a1 + 56) = result;
  v4 = *(a2 + 10);
  *(a1 + 72) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a1 + 80) = v4;
  return result;
}

uint64_t sub_10002AC8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 88))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10002ACE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10002AD94(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10002ADDC()
{
  result = qword_10016A7E8;
  if (!qword_10016A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A7E8);
  }

  return result;
}

uint64_t sub_10002B000(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(&qword_10016A7E0, &qword_100130140);
    sub_10002ADDC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002B1A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(&qword_10016A7F8, &qword_100130148);
    sub_100029F88(a2, type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.ExpansionPoint_ std.__1.allocator_hsql.SQLStatementSummary.ExpansionPoint__);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002B31C()
{
  result = qword_10016A880;
  if (!qword_10016A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A880);
  }

  return result;
}

unint64_t sub_10002B3F0()
{
  result = qword_10016A890;
  if (!qword_10016A890)
  {
    sub_10002AD94(&qword_10016A898, &qword_100130530);
    sub_100029F88(&qword_10016A8A0, type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.Table_ std.__1.allocator_hsql.SQLStatementSummary.Table__);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A890);
  }

  return result;
}

unint64_t sub_10002B640()
{
  result = qword_10016A8C8;
  if (!qword_10016A8C8)
  {
    sub_10002AD94(&qword_10016A898, &qword_100130530);
    sub_100029F88(&qword_10016A8D0, type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.Table_ std.__1.allocator_hsql.SQLStatementSummary.Table__);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A8C8);
  }

  return result;
}

unint64_t sub_10002B788()
{
  result = qword_10016A8E0;
  if (!qword_10016A8E0)
  {
    sub_10002AD94(&qword_10016A898, &qword_100130530);
    sub_100029F88(&qword_10016A8E8, type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.Table_ std.__1.allocator_hsql.SQLStatementSummary.Table__);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A8E0);
  }

  return result;
}

uint64_t sub_10002B95C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10002B9C8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10002BA04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100026F94(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002BA6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100026F94(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10002BAD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002BAF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_10002BB70(uint64_t a1, uint64_t a2)
{
  sub_10002B9C8(a1, a2);
  sub_10001BBEC(a2);
  return a1;
}

uint64_t sub_10002BBD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002BBF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 *sub_10002BC90(__n128 *a1, __n128 *a2)
{
  sub_10002BCC4(a1, a2);
  std::string::~string(a2);
  return a1;
}

__n128 sub_10002BCC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t sub_10002BD0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  a4();
  a5(a1, a2);
  (a4)(a2);
  return a1;
}

void sub_10002BD7C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_10002BDC8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
      }

      if (*(v3 - 33) < 0)
      {
        operator delete(*(v3 - 7));
      }

      v4 = v3 - 10;
      if (*(v3 - 57) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 10;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void sub_10002BE40(void ***a1, void (*a2)(void))
{
  if (**a1)
  {
    a2();
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10002BE98(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
      }

      if (*(v3 - 49) < 0)
      {
        operator delete(*(v3 - 9));
      }

      v4 = v3 - 12;
      if (*(v3 - 73) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 12;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_10002C044(uint64_t a1, void *a2)
{
  v4 = sub_100026F94(&qword_10016A940, &qword_100130A60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v35 - v7;
  SelectRequest.query.getter();
  sub_100026F94(&qword_10016A948, &unk_100131880);
  sub_100026F94(&qword_10016A950, &unk_100133310);
  if (swift_dynamicCast())
  {
    sub_10002C604(v35, &v39);
    v9 = v41;
    v10 = v42;
    v11 = sub_100026F50(&v39, v41);
    v12 = *(v9 - 8);
    v13 = *(v12 + 64);
    __chkstk_darwin(v11);
    v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    dispatch thunk of QueryType.descoped.getter();
    v16 = *(v10 + 8);
    dispatch thunk of Expressible.expression.getter();
    (*(v12 + 8))(v15, v9);
    sub_10002C61C();
    v17 = ExpressionType.description.getter();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    sub_100026FDC(&v39);
  }

  else
  {
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    sub_10002C4F0(v35);
    type metadata accessor for SelectRequest();
    sub_10002C558();
    v39 = QueryRequest.statement.getter();
    v40 = v20;
    v37 = a1;
    v38 = a2;

    v21._countAndFlagsBits = 46;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    *&v35[0] = 0;
    *(&v35[0] + 1) = 0xE000000000000000;
    sub_10002C5B0();
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v24 = v23;

    v39 = v22;
    v40 = v24;
    v37 = 34;
    v38 = 0xE100000000000000;
    v25._countAndFlagsBits = a1;
    v25._object = a2;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 11810;
    v26._object = 0xE200000000000000;
    String.append(_:)(v26);
    *&v35[0] = 0;
    *(&v35[0] + 1) = 0xE000000000000000;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v19 = v27;
  }

  if ((SelectRequest.isBatched.getter() & 1) == 0)
  {
    return v17;
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v39 = 0x2A205443454C4553;
  v40 = 0xEF28204D4F524620;
  v28._countAndFlagsBits = v17;
  v28._object = v19;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0x2054494D494C2029;
  v29._object = 0xE800000000000000;
  String.append(_:)(v29);
  v37 = SelectRequest.batchRowCount.getter();
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0x2054455346464F20;
  v31._object = 0xE800000000000000;
  String.append(_:)(v31);
  v32 = SelectRequest.batchIndex.getter();
  result = SelectRequest.batchRowCount.getter();
  if ((v32 * result) >> 64 == (v32 * result) >> 63)
  {
    v37 = v32 * result;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    return v39;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C4F0(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016A958, &qword_100130A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002C558()
{
  result = qword_10016A960;
  if (!qword_10016A960)
  {
    type metadata accessor for SelectRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A960);
  }

  return result;
}

unint64_t sub_10002C5B0()
{
  result = qword_10016A968;
  if (!qword_10016A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A968);
  }

  return result;
}

uint64_t sub_10002C604(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10002C61C()
{
  result = qword_10016A970;
  if (!qword_10016A970)
  {
    sub_10002AD94(&qword_10016A940, &qword_100130A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A970);
  }

  return result;
}

uint64_t sub_10002C680(uint64_t a1)
{
  swift_getObjectType();
  sub_10002D56C(a1, v11);
  if (!v12)
  {
    sub_10002D504(v11);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v8 = 0;
    return v8 & 1;
  }

  Strong = swift_weakLoadStrong();
  v4 = swift_weakLoadStrong();
  if (!Strong)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

  if (!v4)
  {
LABEL_19:

    goto LABEL_20;
  }

  v5 = v4;

  if (Strong != v5)
  {
LABEL_20:

    goto LABEL_21;
  }

LABEL_9:
  v6 = *(v1 + OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table) == *&v10[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table] && *(v1 + OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table + 8) == *&v10[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table + 8];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (*(v1 + OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema) == *&v10[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema] && *(v1 + OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema + 8) == *&v10[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema + 8])
  {

    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10002C880()
{
  v1 = v0;
  Hasher.init()();
  Strong = swift_weakLoadStrong();
  v3 = v1;
  if (Strong)
  {

    v3 = Strong;
  }

  Hasher._combine(_:)(v3);
  v4 = *(v1 + OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table);
  v5 = *(v1 + OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table + 8);
  String.hash(into:)();
  v6 = *(v1 + OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema);
  v7 = *(v1 + OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema + 8);
  String.hash(into:)();
  return Hasher.finalize()();
}

id sub_10002C94C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002C9FC()
{
  v4 = 0;
  nullsub_1(&v4);
  *(v0 + 16) = v4;
  *(v0 + 24) = 0;
  v3 = 0;
  nullsub_1(&v3);
  *(v0 + 32) = v3;
  *(v0 + 40) = 0;
  v2 = 0;
  nullsub_1(&v2);
  *(v0 + 48) = v2;
  *(v0 + 56) = 0;
  return v0;
}

uint64_t sub_10002CA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultConnectionDelegate.CacheKey();
  v11 = objc_allocWithZone(v10);
  swift_weakInit();
  swift_weakAssign();
  v12 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema];
  *v13 = a4;
  *(v13 + 1) = a5;
  v19.receiver = v11;
  v19.super_class = v10;

  v14 = objc_msgSendSuper2(&v19, "init");
  v15 = [*(v5 + 16) objectForKey:{v14, v19.receiver, v19.super_class}];
  if (v15)
  {
    v16 = v15;
    os_unfair_lock_lock(v15 + 4);
    v17 = *&v16[6]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v16 + 4);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t sub_10002CB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultConnectionDelegate.CacheKey();
  v11 = objc_allocWithZone(v10);
  swift_weakInit();
  swift_weakAssign();
  v12 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema];
  *v13 = a4;
  *(v13 + 1) = a5;
  v19.receiver = v11;
  v19.super_class = v10;

  v14 = objc_msgSendSuper2(&v19, "init");
  v15 = [*(v5 + 16) objectForKey:{v14, v19.receiver, v19.super_class}];
  if (v15)
  {
    v16 = v15;
    os_unfair_lock_lock(v15 + 8);
    v17 = *&v16[10]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t sub_10002CCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultConnectionDelegate.CacheKey();
  v11 = objc_allocWithZone(v10);
  swift_weakInit();
  swift_weakAssign();
  v12 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema];
  *v13 = a4;
  *(v13 + 1) = a5;
  v19.receiver = v11;
  v19.super_class = v10;

  v14 = objc_msgSendSuper2(&v19, "init");
  v15 = [*(v5 + 16) objectForKey:{v14, v19.receiver, v19.super_class}];
  if (v15)
  {
    v16 = v15;
    os_unfair_lock_lock(v15 + 12);
    v17 = *&v16[14]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v16 + 12);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_10002CDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultConnectionDelegate.CacheKey();
  v11 = objc_allocWithZone(v10);
  swift_weakInit();
  swift_weakAssign();
  v12 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema];
  *v13 = a4;
  *(v13 + 1) = a5;
  v22.receiver = v11;
  v22.super_class = v10;

  v14 = objc_msgSendSuper2(&v22, "init");
  v15 = *(v5 + 16);
  v16 = [v15 objectForKey:{v14, v22.receiver, v22.super_class}];
  if (v16)
  {
    v17 = v16;
    os_unfair_lock_lock(v16 + 4);
    *&v17[6]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v17 + 4);
  }

  v18 = [v15 objectForKey:v14];
  if (v18)
  {
    v19 = v18;
    os_unfair_lock_lock(v18 + 8);
    *&v19[10]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v19 + 8);
  }

  v20 = [v15 objectForKey:v14];
  if (v20)
  {
    v21 = v20;
    os_unfair_lock_lock(v20 + 12);
    *&v21[14]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v21 + 12);
  }
}

void sub_10002CFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultConnectionDelegate.CacheKey();
  v11 = objc_allocWithZone(v10);
  swift_weakInit();
  swift_weakAssign();
  v12 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema];
  *v13 = a4;
  *(v13 + 1) = a5;
  v21.receiver = v11;
  v21.super_class = v10;

  v14 = objc_msgSendSuper2(&v21, "init");
  v15 = *(v5 + 16);
  v16 = [v15 objectForKey:{v14, v21.receiver, v21.super_class}];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    type metadata accessor for DefaultConnectionDelegate.Context();
    swift_allocObject();
    v17 = sub_10002C9FC();
    [v15 setObject:v17 forKey:v14];
  }

  os_unfair_lock_lock((v17 + 16));
  v18 = *(v17 + 24);
  os_unfair_lock_unlock((v17 + 16));
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_lock((v17 + 16));
    *(v17 + 24) = v20;
    os_unfair_lock_unlock((v17 + 16));
  }
}

void sub_10002D124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultConnectionDelegate.CacheKey();
  v11 = objc_allocWithZone(v10);
  swift_weakInit();
  swift_weakAssign();
  v12 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema];
  *v13 = a4;
  *(v13 + 1) = a5;
  v21.receiver = v11;
  v21.super_class = v10;

  v14 = objc_msgSendSuper2(&v21, "init");
  v15 = *(v5 + 16);
  v16 = [v15 objectForKey:{v14, v21.receiver, v21.super_class}];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    type metadata accessor for DefaultConnectionDelegate.Context();
    swift_allocObject();
    v17 = sub_10002C9FC();
    [v15 setObject:v17 forKey:v14];
  }

  os_unfair_lock_lock((v17 + 32));
  v18 = *(v17 + 40);
  os_unfair_lock_unlock((v17 + 32));
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_lock((v17 + 32));
    *(v17 + 40) = v20;
    os_unfair_lock_unlock((v17 + 32));
  }
}

void sub_10002D2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultConnectionDelegate.CacheKey();
  v11 = objc_allocWithZone(v10);
  swift_weakInit();
  swift_weakAssign();
  v12 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema];
  *v13 = a4;
  *(v13 + 1) = a5;
  v21.receiver = v11;
  v21.super_class = v10;

  v14 = objc_msgSendSuper2(&v21, "init");
  v15 = *(v5 + 16);
  v16 = [v15 objectForKey:{v14, v21.receiver, v21.super_class}];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    type metadata accessor for DefaultConnectionDelegate.Context();
    swift_allocObject();
    v17 = sub_10002C9FC();
    [v15 setObject:v17 forKey:v14];
  }

  os_unfair_lock_lock((v17 + 48));
  v18 = *(v17 + 56);
  os_unfair_lock_unlock((v17 + 48));
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_lock((v17 + 48));
    *(v17 + 56) = v20;
    os_unfair_lock_unlock((v17 + 48));
  }
}

uint64_t FileManagerWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_10002D4D0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100026F94(&qword_10016AB08, &qword_100130AF8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10002D504(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016AB10, &unk_100130B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002D56C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026F94(&qword_10016AB10, &unk_100130B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10002D5E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v189 = a5;
  v188 = a4;
  v184 = a2;
  v180 = a1;
  v206 = type metadata accessor for DataSpecification.Namespace.Table.Column();
  v202 = *(v206 - 8);
  v6 = *(v202 + 64);
  __chkstk_darwin(v206);
  v204 = v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for ColumnDefinition();
  v175 = *(v196 - 8);
  v8 = *(v175 + 64);
  __chkstk_darwin(v196);
  v195 = v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for AccessCredential.Error();
  v172 = *(v173 - 8);
  v10 = *(v172 + 64);
  __chkstk_darwin(v173);
  v181 = v171 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for DataSpecification();
  v225 = *(v179 - 8);
  v12 = *(v225 + 64);
  __chkstk_darwin(v179);
  v186 = v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for DataSpecification.Namespace.Table();
  v212 = *(v178 - 8);
  v14 = *(v212 + 64);
  __chkstk_darwin(v178);
  v187 = v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LogMessage.StringInterpolation();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  if (qword_10016A648 != -1)
  {
    goto LABEL_148;
  }

  while (1)
  {
    TaskLocal.get()();
    sub_100026F50(&v220, v223);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v18 = *(type metadata accessor for LogMessage() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._countAndFlagsBits = 0xD00000000000001DLL;
    v21._object = 0x8000000100139E70;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    sub_10001E05C(a3, &v224);
    v22 = sub_10002BFD0(&v224);
    v23 = sub_10002BF74(&v224);
    v216 = v22;
    v214 = v23;
    v24 = sub_10002A1D8(&v216, &v214);
    sub_10002A8A8(&v224.__r_.__value_.__l.__data_);
    v218.__r_.__value_.__l.__size_ = &type metadata for Int;
    v216 = v24;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(&v216);
    v25._object = 0x8000000100139E90;
    v25._countAndFlagsBits = 0xD000000000000011;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC(&v220);
    sub_10001E05C(a3, &v220);
    v26 = sub_10002BFD0(&v220);
    v27 = sub_10002BF74(&v220);
    v216 = v26;
    v224.__r_.__value_.__r.__words[0] = v27;
    v28 = sub_10002A1D8(&v216, &v224);
    sub_10002A8A8(&v220);
    v29 = v207;
    v30 = v188;
    v31 = v189;
    if (!v28)
    {

      return v30;
    }

    v171[1] = a3;
    sub_10001E05C(a3, &v216);
    v32 = sub_100026F94(&qword_10016A918, &qword_100130920);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = CxxSequenceBox.init(_:)(&v216);
    v36 = CxxSequenceBox.sequence.modify();
    v38 = sub_10002BF74(v37);
    (v36)(&v220, 0);
    v171[2] = v35;
    v39 = CxxSequenceBox.sequence.modify();
    a3 = sub_10002BFD0(v40);
    (v39)(&v220, 0);
    v41 = sub_10002A8A8(&v216);
    v216 = v38;
    v177 = a3;
    v224.__r_.__value_.__r.__words[0] = a3;
    if (!sub_10002BFC4(v41, &v224))
    {
      break;
    }

    v190 = _swiftEmptyDictionarySingleton;
LABEL_5:

    v216 = 0;
    v217 = 0xE000000000000000;
    v42 = sub_1000838FC();
    v43 = v42;
    *(&v211 + 1) = *(v42 + 16);
    if (!*(&v211 + 1))
    {

      return 0;
    }

    v207 = v29;
    v44 = 0;
    v45 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v45 = v30 & 0xFFFFFFFFFFFFLL;
    }

    *&v211 = 4 * v45;
    v46 = 7;
    if (((v31 >> 60) & ((v30 & 0x800000000000000) == 0)) != 0)
    {
      v46 = 11;
    }

    v210 = v46 | (v45 << 16);
    v47 = (v42 + 40);
    while (v44 < *(v43 + 16))
    {
      if (v44 && __OFADD__(*(v47 - 3), *(v47 - 2)))
      {
        goto LABEL_142;
      }

      a3 = *(v47 - 1);
      v212 = *v47;
      v48 = String.index(_:offsetBy:)();
      v225 = a3;
      if (String.index(_:offsetBy:)() >> 14 < v48 >> 14)
      {
        goto LABEL_143;
      }

      v49 = v43;
      v50 = String.subscript.getter();
      v54 = v53;
      v55 = v190;
      if (!v190[2] || (v56 = v50, v57 = v51, v58 = v52, v59 = sub_10009E574(v225, v212), (v60 & 1) == 0))
      {

        v165 = type metadata accessor for DaemonError();
        sub_10002F1C8(&qword_10016AB40, &type metadata accessor for DaemonError);
        swift_allocError();
        v166 = v212;
        *v167 = v225;
        v167[1] = v166;
        (*(*(v165 - 8) + 104))(v167, enum case for DaemonError.missingExpansionPoint(_:), v165);
        swift_willThrow();

        goto LABEL_138;
      }

      v61 = v55[7] + 16 * v59;
      v63 = *v61;
      v62 = *(v61 + 8);
      v220 = v56;
      v221 = v57;
      a3 = v62;
      v222 = v58;
      v223 = v54;
      sub_10002F210();

      String.UnicodeScalarView.append<A>(contentsOf:)();

      v220 = v63;
      v221 = a3;
      String.UnicodeScalarView.append<A>(contentsOf:)();
      v43 = v49;
      if (v44 == *(v49 + 16) - 1)
      {
        v30 = v188;
        if (__OFADD__(v225, v212))
        {
          goto LABEL_146;
        }

        if (v211 < String.index(_:offsetBy:)() >> 14)
        {
          goto LABEL_147;
        }

        v64 = String.subscript.getter();
        a3 = v65;
        v220 = v64;
        v221 = v66;
        v222 = v67;
        v223 = v65;
        String.UnicodeScalarView.append<A>(contentsOf:)();
      }

      else
      {

        v30 = v188;
      }

      ++v44;
      v47 += 2;
      if (*(&v211 + 1) == v44)
      {

        return v216;
      }
    }

LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    swift_once();
  }

  v176 = (v225 + 8);
  v193 = v175 + 16;
  v192 = (v175 + 8);
  v199 = v202 + 16;
  v198 = (v202 + 8);
  v174 = (v212 + 8);
  v190 = _swiftEmptyDictionarySingleton;
  v191 = xmmword_100130B20;
  while (1)
  {
    v216 = v38;
    v72 = sub_10002A1D0(&v216);
    sub_10002A1F8(&v220, v72);
    v216 = v38;
    sub_10002A294(&v216);
    a3 = v216;
    sub_10002B9C8(&v216, &v220);
    sub_10001BBEC(&v220);
    v73 = v216;
    v74 = String.index(_:offsetBy:)();
    v183 = v73;
    v185 = v217;
    if (__OFADD__(v73, v217))
    {
      goto LABEL_144;
    }

    if (String.index(_:offsetBy:)() >> 14 < v74 >> 14)
    {
      goto LABEL_145;
    }

    v182 = a3;
    v75 = String.subscript.getter();
    v77 = v76;
    v79 = v78;
    v81 = v80;

    v194 = v75;
    v197 = Substring.fastContains(_:)();

    v82 = std::string::basic_string(&v224, &v219);
    sub_10002EFB0(v82);
    sub_10002EFC4(&v224);
    v83 = static String._fromUTF8Repairing(_:)();
    v85 = v84;
    std::string::~string(&v224);
    AccessCredential.dataSpecification.getter();
    v86 = std::string::basic_string(&v224, &v218);
    sub_10002EFB0(v86);
    sub_10002EFC4(&v224);
    static String._fromUTF8Repairing(_:)();
    v87 = v186;
    std::string::~string(&v224);
    _s19OnDeviceStorageCore17DataSpecificationV05tableF03for2inAC9NamespaceV5TableVSS_SStAA16AccessCredentialV5ErrorOYKF();
    if (v29)
    {
      goto LABEL_137;
    }

    v88 = 0;
    (*v176)(v87, v179);

    *&v211 = v77;
    if (v184)
    {

      v89._countAndFlagsBits = v83;
      v89._object = v85;
      v90 = Connection.tableExists(_:)(v89);
      v91 = v206;
      if (!v90)
      {

        v203 = 0;
        goto LABEL_45;
      }

      Connection.schema.getter();
      v92 = dispatch thunk of SchemaReader.columnDefinitions(table:)();

      v93 = *(v92 + 16);
      if (v93)
      {
        v207 = 0;
        v224.__r_.__value_.__r.__words[0] = _swiftEmptyArrayStorage;
        sub_10007E9EC(0, v93, 0);
        v94 = v92;
        v95 = v224.__r_.__value_.__r.__words[0];
        v96 = (*(v175 + 80) + 32) & ~*(v175 + 80);
        v210 = v94;
        v97 = v94 + v96;
        v212 = *(v175 + 72);
        *(&v211 + 1) = *(v175 + 16);
        do
        {
          v98 = v195;
          v99 = v196;
          (*(&v211 + 1))(v195, v97, v196);
          v100 = ColumnDefinition.name.getter();
          v225 = v101;
          (*v192)(v98, v99);
          v224.__r_.__value_.__r.__words[0] = v95;
          v103 = *(v95 + 16);
          v102 = *(v95 + 24);
          if (v103 >= v102 >> 1)
          {
            sub_10007E9EC((v102 > 1), v103 + 1, 1);
            v95 = v224.__r_.__value_.__r.__words[0];
          }

          *(v95 + 16) = v103 + 1;
          v104 = v95 + 16 * v103;
          v105 = v225;
          *(v104 + 32) = v100;
          *(v104 + 40) = v105;
          v97 += v212;
          --v93;
        }

        while (v93);
        v203 = v95;

        v88 = v207;
        v30 = v188;
      }

      else
      {

        v203 = _swiftEmptyArrayStorage;
      }
    }

    else
    {

      v203 = 0;
    }

    v91 = v206;
LABEL_45:
    v207 = v88;
    v214 = 0;
    v215 = 0xE000000000000000;
    v106 = DataSpecification.Namespace.Table.columns.getter();
    v107 = v106;
    a3 = v204;
    v201 = *(v106 + 16);
    if (v201)
    {
      break;
    }

LABEL_124:

    v68 = v190;
    v31 = v189;
    v158 = v183;
    if (v190[2])
    {
      v159 = sub_10009E574(v183, v185);
      if (v160)
      {
        v161 = (*(v68 + 56) + 16 * v159);
        v163 = *v161;
        v162 = v161[1];
        v164 = v214 & 0xFFFFFFFFFFFFLL;
        if ((v215 & 0x2000000000000000) != 0)
        {
          v164 = HIBYTE(v215) & 0xF;
        }

        if (v164)
        {
          v224.__r_.__value_.__r.__words[0] = 8236;
          v224.__r_.__value_.__l.__size_ = 0xE200000000000000;
          sub_10002F040();

          String.UnicodeScalarView.replaceSubrange<A>(_:with:)();
          v224.__r_.__value_.__r.__words[0] = v163;
          v224.__r_.__value_.__l.__size_ = v162;
          String.UnicodeScalarView.replaceSubrange<A>(_:with:)();
        }

        else
        {
          v224.__r_.__value_.__r.__words[0] = v163;
          v224.__r_.__value_.__l.__size_ = v162;
          sub_10002F040();
          String.UnicodeScalarView.replaceSubrange<A>(_:with:)();
        }

        v68 = v190;
      }
    }

    v69 = v214;
    a3 = v215;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v224.__r_.__value_.__r.__words[0] = v68;
    sub_1000A0D5C(v69, a3, v158, v185, isUniquelyReferenced_nonNull_native);

    v190 = v224.__r_.__value_.__r.__words[0];
    (*v174)(v187, v178);
    sub_10001BBEC(&v216);

    v38 = v182;
    v216 = v182;
    v224.__r_.__value_.__r.__words[0] = v177;
    v71 = sub_10002BFC4(&v216, &v224);
    v29 = v207;
    if (v71)
    {
      goto LABEL_5;
    }
  }

  v108 = 0;
  v200 = v106 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
  v109 = v211 >> 14;
  v225 = v194 >> 14;
  v110 = (v79 >> 59) & 1;
  if ((v81 & 0x1000000000000000) == 0)
  {
    LOBYTE(v110) = 1;
  }

  v30 = 4 << v110;
  v210 = v81 & 0xFFFFFFFFFFFFFFLL;
  v111 = HIBYTE(v81) & 0xF;
  if ((v81 & 0x2000000000000000) == 0)
  {
    v111 = v79 & 0xFFFFFFFFFFFFLL;
  }

  v212 = v111;
  v209 = (v81 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v205 = v106;
  while (1)
  {
    if (v108 >= *(v107 + 16))
    {
      __break(1u);
      goto LABEL_141;
    }

    v113 = *(v202 + 72);
    v208 = v108;
    (*(v202 + 16))(a3, v200 + v113 * v108, v91);
    v114 = v203;
    if (!v203)
    {
      break;
    }

    v115 = a3;
    v224.__r_.__value_.__r.__words[0] = DataSpecification.Namespace.Table.Column.name.getter();
    v224.__r_.__value_.__l.__size_ = v116;
    __chkstk_darwin(v224.__r_.__value_.__r.__words[0]);
    v171[-2] = &v224;
    v117 = v207;
    v118 = sub_10008AC28(sub_10002F1A8, &v171[-4], v114);
    v207 = v117;

    if (v118)
    {
      v91 = v206;
      break;
    }

    v124 = v206;
    (*v198)(v115, v206);
    a3 = v115;
    v91 = v124;
    v107 = v205;
LABEL_53:
    v108 = v208 + 1;
    if (v208 + 1 == v201)
    {

      v30 = v188;
      goto LABEL_124;
    }
  }

  v119 = v214 & 0xFFFFFFFFFFFFLL;
  if ((v215 & 0x2000000000000000) != 0)
  {
    v119 = HIBYTE(v215) & 0xF;
  }

  if (v119)
  {
    v224.__r_.__value_.__r.__words[0] = 8236;
    v224.__r_.__value_.__l.__size_ = 0xE200000000000000;
    String.UnicodeScalarView.append<A>(contentsOf:)();
  }

  v107 = v205;
  if (v197)
  {
    v120._countAndFlagsBits = DataSpecification.Namespace.Table.Column.name.getter();
    v224.__r_.__value_.__r.__words[0] = 34;
    v224.__r_.__value_.__l.__size_ = 0xE100000000000000;
    String.append(_:)(v120);

    v121._countAndFlagsBits = 34;
    v121._object = 0xE100000000000000;
    String.append(_:)(v121);
    v211 = *&v224.__r_.__value_.__l.__data_;
  }

  else
  {
    sub_100026F94(&qword_10016AB20, &unk_100130B30);
    v122 = swift_allocObject();
    *(v122 + 16) = v191;
    v123 = std::string::basic_string(&v224, &v219);
    sub_10002EFB0(v123);
    sub_10002EFC4(&v224);
    v125 = static String._fromUTF8Repairing(_:)();
    v127 = v126;
    std::string::~string(&v224);
    v224.__r_.__value_.__r.__words[0] = 34;
    v224.__r_.__value_.__l.__size_ = 0xE100000000000000;
    v128._countAndFlagsBits = v125;
    v128._object = v127;
    String.append(_:)(v128);

    v129._countAndFlagsBits = 34;
    v129._object = 0xE100000000000000;
    String.append(_:)(v129);
    size = v224.__r_.__value_.__l.__size_;
    *(v122 + 32) = v224.__r_.__value_.__r.__words[0];
    *(v122 + 40) = size;
    v131._countAndFlagsBits = DataSpecification.Namespace.Table.Column.name.getter();
    v224.__r_.__value_.__r.__words[0] = 34;
    v224.__r_.__value_.__l.__size_ = 0xE100000000000000;
    String.append(_:)(v131);

    v132._countAndFlagsBits = 34;
    v132._object = 0xE100000000000000;
    String.append(_:)(v132);
    v133 = v224.__r_.__value_.__l.__size_;
    *(v122 + 48) = v224.__r_.__value_.__r.__words[0];
    *(v122 + 56) = v133;
    v224.__r_.__value_.__r.__words[0] = v122;
    sub_100026F94(&qword_10016AB28, &qword_100131390);
    sub_10002EFDC();
    *&v211 = BidirectionalCollection<>.joined(separator:)();
    *(&v211 + 1) = v134;

    v91 = v206;
    v107 = v205;
  }

  v135 = 0xE000000000000000;
  v224.__r_.__value_.__r.__words[0] = 0;
  v224.__r_.__value_.__l.__size_ = 0xE000000000000000;
  v136 = v225;
  if (v225 == v109)
  {
    v112 = 0;
LABEL_52:
    *&v213 = v112;
    *(&v213 + 1) = v135;

    String.UnicodeScalarView.append<A>(contentsOf:)();
    swift_bridgeObjectRelease_n();

    a3 = v204;
    (*v198)(v204, v91);
    goto LABEL_53;
  }

  v137 = v194;
  v138 = v136;
  v139 = v136;
  while (1)
  {
    v87 = (v137 & 0xC);
    v140 = (v137 & 1) == 0 || v87 == v30;
    v141 = v140;
    if (v140)
    {
      break;
    }

    if (v138 < v139)
    {
      goto LABEL_134;
    }

    v142 = v137;
    if (v138 >= v109)
    {
      goto LABEL_134;
    }

LABEL_86:
    if ((v81 & 0x1000000000000000) != 0)
    {
      v146 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      if (!v141)
      {
        goto LABEL_108;
      }

      goto LABEL_99;
    }

    v143 = v142 >> 16;
    if ((v81 & 0x2000000000000000) != 0)
    {
      *&v213 = v79;
      *(&v213 + 1) = v210;
      v145 = &v213 + v143;
    }

    else
    {
      v144 = v209;
      if ((v79 & 0x1000000000000000) == 0)
      {
        v144 = _StringObject.sharedUTF8.getter();
      }

      v145 = (v144 + v143);
    }

    v146 = *v145;
    if ((*v145 & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    v147 = (__clz(v146 ^ 0xFF) - 24);
    if (v147 <= 2)
    {
      if (v147 != 1)
      {
        v146 = v145[1] & 0x3F | ((v146 & 0x1F) << 6);
      }

LABEL_98:
      if (!v141)
      {
        goto LABEL_108;
      }

      goto LABEL_99;
    }

    if (v147 == 3)
    {
      v148 = v145[1];
      v149 = v145[2];
      v150 = ((v146 & 0xF) << 12) | ((v148 & 0x3F) << 6);
    }

    else
    {
      v151 = v145[1];
      v152 = v145[2];
      v149 = v145[3];
      v150 = ((v146 & 0xF) << 18) | ((v151 & 0x3F) << 12) | ((v152 & 0x3F) << 6);
    }

    v146 = v150 & 0xFFFFFFC0 | v149 & 0x3F;
    if (!v141)
    {
LABEL_108:
      if (v212 <= v137 >> 16)
      {
        goto LABEL_136;
      }

      goto LABEL_109;
    }

LABEL_99:
    if (v87 == v30)
    {
      v137 = sub_1000876A8(v137, v79, v81);
    }

    if (v212 <= v137 >> 16)
    {
      goto LABEL_135;
    }

    if ((v137 & 1) == 0)
    {
      v137 = v137 & 0xC | sub_10002F094(v137, v79, v81) & 0xFFFFFFFFFFFFFFF3 | 1;
    }

LABEL_109:
    if ((v81 & 0x1000000000000000) != 0)
    {
      v137 = String.UnicodeScalarView._foreignIndex(after:)();
      if (v146 == 42)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v153 = v137 >> 16;
      if ((v81 & 0x2000000000000000) != 0)
      {
        *&v213 = v79;
        *(&v213 + 1) = v210;
        v155 = *(&v213 + v153);
      }

      else
      {
        v154 = v209;
        if ((v79 & 0x1000000000000000) == 0)
        {
          v154 = _StringObject.sharedUTF8.getter();
        }

        v155 = *(v154 + v153);
      }

      v156 = v155;
      v157 = __clz(v155 ^ 0xFF) - 24;
      if (v156 >= 0)
      {
        LOBYTE(v157) = 1;
      }

      v137 = ((v153 + v157) << 16) | 5;
      if (v146 == 42)
      {
LABEL_120:
        v213 = v211;
        String.UnicodeScalarView.append<A>(contentsOf:)();
        goto LABEL_69;
      }
    }

    String.UnicodeScalarView.append(_:)();
LABEL_69:
    v138 = v137 >> 14;
    v139 = v225;
    if (v137 >> 14 == v109)
    {

      v135 = v224.__r_.__value_.__l.__size_;
      v112 = v224.__r_.__value_.__r.__words[0];
      v91 = v206;
      goto LABEL_52;
    }
  }

  v142 = v137;
  if (v87 == v30)
  {
    v142 = sub_1000876A8(v137, v79, v81);
    v139 = v225;
  }

  if (v142 >> 14 >= v139 && v142 >> 14 < v109)
  {
    if ((v142 & 1) == 0)
    {
      v142 = sub_10002F094(v142, v79, v81);
    }

    goto LABEL_86;
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  (*v176)(v87, v179);

  sub_10002F1C8(&qword_10016AB18, &type metadata accessor for AccessCredential.Error);
  v168 = v173;
  swift_allocError();
  (*(v172 + 32))(v169, v181, v168);

  sub_10001BBEC(&v216);
LABEL_138:

  return v30;
}

char *sub_10002EFB0(char *result)
{
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_10002EFC4(uint64_t a1)
{
  result = *(a1 + 23);
  if (result < 0)
  {
    return *(a1 + 8);
  }

  return result;
}

unint64_t sub_10002EFDC()
{
  result = qword_10016AB30;
  if (!qword_10016AB30)
  {
    sub_10002AD94(&qword_10016AB28, &qword_100131390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AB30);
  }

  return result;
}

unint64_t sub_10002F040()
{
  result = qword_10016AB38;
  if (!qword_10016AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AB38);
  }

  return result;
}

unint64_t sub_10002F094(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_10002F1C8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002F210()
{
  result = qword_10016AB48;
  if (!qword_10016AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AB48);
  }

  return result;
}

uint64_t sub_10002F264()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSLogger();
  sub_10002FDA4(v5, qword_10016AB50);
  sub_10002FD14(v5, qword_10016AB50);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v6 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v4, v6, v0);
  return OSLogger.init(subsystem:category:)();
}

void *sub_10002F3B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_10007E9EC(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10002FE08(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10007E9EC((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10002F4CC()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10002F52C()
{
  v1 = sub_100026F94(&qword_10016AC08, &qword_100131520);
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();
  v4 = type metadata accessor for Bag();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_10002F6A8;

  return BaseObjectGraph.inject<A>(_:)(v7, v4, v4);
}

uint64_t sub_10002F6A8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10002FCA4;
  }

  else
  {
    v3 = sub_10002F7BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002F7BC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v4 = async function pointer to Bag.Value.currentOrNil()[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_10002F898;
  v6 = v0[5];
  v7 = v0[3];

  return Bag.Value.currentOrNil()(v0 + 2, v7);
}

uint64_t sub_10002F898()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_10002F994, 0, 0);
}

uint64_t sub_10002F994()
{
  if (v0[2])
  {
    v1 = sub_10002F3B8(v0[2]);

    if (!v1)
    {
      if (qword_10016A2D8 != -1)
      {
        swift_once();
      }

      v2 = v0[7];
      v21 = v0[8];
      v4 = v0[5];
      v3 = v0[6];
      v5 = v0[3];
      v6 = v0[4];
      v7 = type metadata accessor for OSLogger();
      sub_10002FD14(v7, qword_10016AB50);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v8 = *(type metadata accessor for LogMessage() - 8);
      v9 = *(v8 + 72);
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      v11 = type metadata accessor for AccessCredential.Error();
      sub_10002FD4C();
      swift_allocError();
      (*(*(v11 - 8) + 104))(v12, enum case for AccessCredential.Error.invalidRevokedCredentialIdList(_:), v11);
      swift_willThrow();
      (*(v6 + 8))(v4, v5);
      (*(v2 + 8))(v21, v3);
      v13 = v0[8];
      v14 = v0[5];

      v15 = v0[1];

      return v15();
    }
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v18 + 8))(v17, v19);

  v20 = v0[1];

  return v20(v1);
}

uint64_t sub_10002FCA4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002FD14(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10002FD4C()
{
  result = qword_10016AB18;
  if (!qword_10016AB18)
  {
    type metadata accessor for AccessCredential.Error();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AB18);
  }

  return result;
}

uint64_t *sub_10002FDA4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10002FE08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002FE64()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSLogger();
  sub_10002FDA4(v5, qword_10016AC10);
  sub_10002FD14(v5, qword_10016AC10);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v6 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v4, v6, v0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_10002FFB8()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016AC28);
  sub_10002FD14(v0, qword_10016AC28);
  if (qword_10016A520 != -1)
  {
    swift_once();
  }

  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100030074()
{
  v0 = type metadata accessor for Table();
  sub_10002FDA4(v0, qword_1001732E8);
  sub_10002FD14(v0, qword_1001732E8);
  return Table.init(_:database:)();
}

uint64_t sub_1000300E0()
{
  v0 = type metadata accessor for Table();
  sub_10002FDA4(v0, qword_100173300);
  sub_10002FD14(v0, qword_100173300);
  return Table.init(_:database:)();
}

uint64_t sub_10003014C()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_100173318);
  sub_10002FD14(v0, qword_100173318);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100030204()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_100173330);
  sub_10002FD14(v0, qword_100173330);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000302B4()
{
  v0 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FDA4(v0, qword_100173348);
  sub_10002FD14(v0, qword_100173348);
  sub_10002B95C(&qword_10016ADE0, &qword_10016ADB0, &unk_100130CD0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10003036C()
{
  v0 = sub_100026F94(&qword_10016AD40, &qword_100130C88);
  sub_10002FDA4(v0, qword_100173360);
  sub_10002FD14(v0, qword_100173360);
  sub_10002B95C(&qword_10016AD78, &qword_10016AD40, &qword_100130C88);
  return ExpressionType.init(_:)();
}

uint64_t sub_100030428()
{
  v0 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
  sub_10002FDA4(v0, qword_100173378);
  sub_10002FD14(v0, qword_100173378);
  sub_10002B95C(&qword_10016AD70, &qword_10016AD58, &qword_100130C98);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000304D8()
{
  v0 = sub_100026F94(&qword_10016AD40, &qword_100130C88);
  sub_10002FDA4(v0, qword_100173390);
  sub_10002FD14(v0, qword_100173390);
  sub_10002B95C(&qword_10016AD78, &qword_10016AD40, &qword_100130C88);
  return ExpressionType.init(_:)();
}

uint64_t sub_100030584()
{
  v0 = sub_100026F94(&qword_10016AE08, &qword_100130D18);
  sub_10002FDA4(v0, qword_1001733A8);
  sub_10002FD14(v0, qword_1001733A8);
  sub_10002B95C(&qword_10016AE10, &qword_10016AE08, &qword_100130D18);
  return ExpressionType.init(_:)();
}

uint64_t sub_100030640()
{
  v0 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
  sub_10002FDA4(v0, qword_1001733C0);
  sub_10002FD14(v0, qword_1001733C0);
  sub_10002B95C(&qword_10016AD70, &qword_10016AD58, &qword_100130C98);
  return ExpressionType.init(_:)();
}

uint64_t sub_100030700()
{
  v0 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
  sub_10002FDA4(v0, qword_1001733D8);
  sub_10002FD14(v0, qword_1001733D8);
  sub_10002B95C(&qword_10016AD70, &qword_10016AD58, &qword_100130C98);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000307B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 224) = a5;
  *(v6 + 232) = v5;
  *(v6 + 648) = a4;
  *(v6 + 208) = a2;
  *(v6 + 216) = a3;
  *(v6 + 200) = a1;
  *(v6 + 240) = *v5;
  v7 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  *(v6 + 248) = v7;
  v8 = *(v7 - 8);
  *(v6 + 256) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 264) = swift_task_alloc();
  v10 = type metadata accessor for Table();
  *(v6 + 272) = v10;
  v11 = *(v10 - 8);
  *(v6 + 280) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 288) = swift_task_alloc();
  v13 = type metadata accessor for Delete();
  *(v6 + 296) = v13;
  v14 = *(v13 - 8);
  *(v6 + 304) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 312) = swift_task_alloc();
  v16 = type metadata accessor for AccessCredential();
  *(v6 + 320) = v16;
  v17 = *(v16 - 8);
  *(v6 + 328) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  v19 = *(*(sub_100026F94(&qword_10016AD38, &qword_1001332F0) - 8) + 64) + 15;
  *(v6 + 360) = swift_task_alloc();
  v20 = type metadata accessor for Row();
  *(v6 + 368) = v20;
  v21 = *(v20 - 8);
  *(v6 + 376) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 384) = swift_task_alloc();
  v23 = type metadata accessor for OSSignpostID();
  *(v6 + 392) = v23;
  v24 = *(v23 - 8);
  *(v6 + 400) = v24;
  v25 = *(v24 + 64) + 15;
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();

  return _swift_task_switch(sub_100030AD8, v5, 0);
}

uint64_t sub_100030AD8()
{
  if (qword_10016A2E8 != -1)
  {
    swift_once();
  }

  v1 = v0[52];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016AC28);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[52];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "credential(for:)", "", v6, 2u);
  }

  v8 = v0[51];
  v9 = v0[52];
  v10 = v0[49];
  v11 = v0[50];

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[53] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v15 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v16 = swift_task_alloc();
  v0[54] = v16;
  *v16 = v0;
  v16[1] = sub_100030CD0;
  v17 = v0[28];

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_100030CD0()
{
  v2 = *(*v1 + 432);
  v3 = *v1;
  v3[55] = v0;

  if (v0)
  {
    v4 = v3[29];

    return _swift_task_switch(sub_100032834, v4, 0);
  }

  else
  {
    v5 = sub_100026F94(&qword_10016AD88, &qword_100130CB0);
    v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v7 = swift_task_alloc();
    v3[56] = v7;
    *v7 = v3;
    v7[1] = sub_100030E74;
    v8 = v3[28];

    return BaseObjectGraph.inject<A>(_:)(v3 + 13, v5, v5);
  }
}

uint64_t sub_100030E74()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v7 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = *(v2 + 232);
    v5 = sub_10003294C;
  }

  else
  {
    v4 = *(v2 + 232);
    if (*(v2 + 648))
    {
      v5 = sub_100031134;
    }

    else
    {
      v5 = sub_100030FA4;
    }
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100030FA4()
{
  v1 = v0[27];
  v2 = sub_100026F50((v0[29] + 152), *(v0[29] + 176));
  v3 = *v2;
  v0[58] = *v2;

  return _swift_task_switch(sub_100031034, v3, 0);
}

uint64_t sub_100031034()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v0[59] = v2;
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_100031330;
  v4 = v0[58];

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100031134()
{
  v1 = sub_100088054(v0[26], v0[27]);
  if (v2)
  {
    v0[24] = v1;
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    swift_willThrowTypedImpl();
LABEL_4:
    sub_100026FDC(v0 + 13);
    sub_100042AFC((v0 + 2));
    v8 = v0[52];
    v7 = v0[53];
    v9 = v0[51];
    v10 = v0[48];
    v12 = v0[44];
    v11 = v0[45];
    v14 = v0[42];
    v13 = v0[43];
    v22 = v0[39];
    v23 = v0[36];
    v24 = v0[33];
    sub_100042820("credential(for:)", 16, 2);

    v15 = v0[1];

    return v15();
  }

  v3 = v0[57];
  v4 = v0[42];
  v6 = v0[26];
  v5 = v0[27];

  AccessCredential.init(from:verifySignature:)();
  if (v3)
  {
    goto LABEL_4;
  }

  v17 = v0[42];
  v18 = v0[29];
  v0[66] = AccessCredential.requestId.getter();
  v0[67] = v19;
  v20 = sub_100026F50((v18 + 152), *(v18 + 176));
  v21 = *v20;
  v0[68] = *v20;

  return _swift_task_switch(sub_100031D20, v21, 0);
}

uint64_t sub_100031330(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v7 = *(v3 + 464);
  if (v1)
  {
    v8 = sub_10003155C;
  }

  else
  {
    v8 = sub_100031464;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100031464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[58];
  v5 = *(v4 + 216);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v3[61];
  v8 = v3[62];
  v9 = v3[45];
  v10 = v3[30];
  v11 = v3[26];
  v12 = v3[27];
  *(v4 + 216) = v6;
  sub_100040EF8(v7, v11, v12, v9);
  v13 = v3[61];

  v14 = *(v4 + 216);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  v17 = v15;
  if (v8)
  {
    if ((v17 & 1) == 0)
    {
      *(v4 + 216) = v16;
      v3[63] = v8;
      v18 = v3[29];
      v19 = v3[26];
      v20 = v3[27];
      sub_100042BA4();
      v21 = sub_100031738;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v17)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v18 = v3[29];
  v22 = v3[26];
  v23 = v3[27];
  *(v4 + 216) = v16;
  sub_100042BA4();
  v21 = sub_1000315D4;
LABEL_10:
  a1 = v21;
  a2 = v18;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10003155C()
{
  v0[63] = v0[62];
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  sub_100042BA4();

  return _swift_task_switch(sub_100031738, v1, 0);
}

uint64_t sub_1000315D4()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[29];
    sub_10002BA6C(v3, &qword_10016AD38, &qword_1001332F0);
    v5 = *sub_100026F50((v4 + 232), *(v4 + 256));

    return _swift_task_switch(sub_100031CB0, v5, 0);
  }

  else
  {
    v6 = v0[27];
    (*(v2 + 32))(v0[48], v3, v1);
    v7 = swift_task_alloc();
    v0[64] = v7;
    *v7 = v0;
    v7[1] = sub_100031860;
    v8 = v0[48];
    v9 = v0[43];
    v10 = v0[29];
    v11 = v0[26];

    return sub_10003315C(v9, v8, v11, v6);
  }
}

uint64_t sub_100031738()
{
  sub_100026FDC(v0 + 13);
  sub_100042AFC((v0 + 2));
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[48];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[39];
  v12 = v0[36];
  v13 = v0[33];
  v14 = v0[63];
  sub_100042820("credential(for:)", 16, 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100031860()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    v6 = sub_100032A6C;
  }

  else
  {
    v6 = sub_10003198C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10003198C()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 352);
  v3 = *(*(v0 + 328) + 32);
  v3(v2, *(v0 + 344), *(v0 + 320));
  v4 = *(v0 + 96);
  v5 = (*(v0 + 88))(*(v0 + 16), *(v0 + 24), v2);
  if (v1)
  {
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v9 = *(v0 + 352);
    AccessCredential.entitlements.getter();
    v10 = *(v0 + 80);
    sub_100026F50((v0 + 48), *(v0 + 72));
    LOBYTE(v9) = dispatch thunk of EntitlementChecker.hasEntitlements(_:)();

    if (v9)
    {
      v11 = *(v0 + 352);
      v12 = *(v0 + 320);
      v13 = *(v0 + 200);
      (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
      sub_100026FDC((v0 + 104));
      sub_100042AFC(v0 + 16);
      v3(v13, v11, v12);
      v14 = *(v0 + 416);
      v15 = *(v0 + 424);
      v16 = *(v0 + 408);
      v17 = *(v0 + 384);
      v19 = *(v0 + 352);
      v18 = *(v0 + 360);
      v21 = *(v0 + 336);
      v20 = *(v0 + 344);
      v22 = *(v0 + 312);
      v42 = *(v0 + 288);
      v44 = *(v0 + 264);
      sub_100042820("credential(for:)", 16, 2);

      v23 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_100042B50();
    *(v0 + 176) = 0;
    *(v0 + 184) = 0;
    swift_willThrowTypedImpl();
    v7 = 0;
    v8 = 0;
  }

  v24 = *(v0 + 376);
  v25 = *(v0 + 384);
  v26 = *(v0 + 368);
  v27 = *(v0 + 352);
  v28 = *(v0 + 320);
  v29 = *(v0 + 328);
  sub_100042B50();
  swift_allocError();
  *v30 = v7;
  v30[1] = v8;
  (*(v29 + 8))(v27, v28);
  (*(v24 + 8))(v25, v26);
  sub_100026FDC((v0 + 104));
  sub_100042AFC(v0 + 16);
  v32 = *(v0 + 416);
  v31 = *(v0 + 424);
  v33 = *(v0 + 408);
  v34 = *(v0 + 384);
  v36 = *(v0 + 352);
  v35 = *(v0 + 360);
  v38 = *(v0 + 336);
  v37 = *(v0 + 344);
  v39 = *(v0 + 312);
  v41 = *(v0 + 288);
  v43 = *(v0 + 264);
  sub_100042820("credential(for:)", 16, 2);

  v23 = *(v0 + 8);
LABEL_7:

  return v23();
}

uint64_t sub_100031D20()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 552) = v3;
  *v3 = v0;
  v3[1] = sub_100031E1C;
  v4 = *(v0 + 544);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100031E1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;
  *(v4 + 560) = a1;
  *(v4 + 568) = v1;

  v7 = *(v3 + 544);
  if (v1)
  {
    v8 = sub_100032050;
  }

  else
  {
    v8 = sub_100031F54;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100031F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[68];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[71];
  v9 = v3[70];
  v10 = v3[67];
  v11 = v3[66];
  v12 = v3[30];
  *(v4 + 216) = v7;
  sub_1000408BC(v9, v11, v10);
  v3[72] = v8;
  v13 = v3[70];

  v14 = *(v4 + 216);
  v6 = __OFSUB__(v14, 1);
  v15 = v14 - 1;
  v16 = v6;
  if (v8)
  {
    if ((v16 & 1) == 0)
    {
      v17 = v3[67];
      *(v4 + 216) = v15;

      v3[73] = v8;
      a2 = v3[29];
      a1 = sub_10003234C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v16)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v18 = v3[67];
  v19 = v3[29];
  *(v4 + 216) = v15;

  a1 = sub_1000320C0;
  a2 = v19;
LABEL_10:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100032050()
{
  v1 = v0[67];

  v0[73] = v0[71];
  v2 = v0[29];

  return _swift_task_switch(sub_10003234C, v2, 0);
}

uint64_t sub_1000320C0()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 96);
  v3 = (*(v0 + 88))(*(v0 + 16), *(v0 + 24), *(v0 + 336));
  if (v1)
  {
    v5 = v3;
    v6 = v4;
LABEL_8:
    v15 = *(v0 + 328);
    v16 = *(v0 + 336);
    v17 = *(v0 + 320);
    sub_100042B50();
    swift_allocError();
    *v18 = v5;
    v18[1] = v6;
    (*(v15 + 8))(v16, v17);
    sub_100026FDC((v0 + 104));
    sub_100042AFC(v0 + 16);
    v20 = *(v0 + 416);
    v19 = *(v0 + 424);
    v21 = *(v0 + 408);
    v22 = *(v0 + 384);
    v24 = *(v0 + 352);
    v23 = *(v0 + 360);
    v26 = *(v0 + 336);
    v25 = *(v0 + 344);
    v27 = *(v0 + 312);
    v29 = *(v0 + 288);
    v30 = *(v0 + 264);
    sub_100042820("credential(for:)", 16, 2);

    v28 = *(v0 + 8);

    return v28();
  }

  v7 = *(v0 + 336);
  AccessCredential.entitlements.getter();
  v8 = *(v0 + 80);
  sub_100026F50((v0 + 48), *(v0 + 72));
  LOBYTE(v7) = dispatch thunk of EntitlementChecker.hasEntitlements(_:)();

  if ((v7 & 1) == 0)
  {
    sub_100042B50();
    *(v0 + 144) = 0;
    *(v0 + 152) = 0;
    swift_willThrowTypedImpl();
    v5 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v9 = *(v0 + 216);
  v10 = swift_task_alloc();
  *(v0 + 592) = v10;
  *v10 = v0;
  v10[1] = sub_10003248C;
  v11 = *(v0 + 336);
  v12 = *(v0 + 232);
  v13 = *(v0 + 208);

  return sub_10003E568(v13, v9, v11, v0 + 16, 1);
}

uint64_t sub_10003234C()
{
  (*(v0[41] + 8))(v0[42], v0[40]);
  v14 = v0[73];
  sub_100026FDC(v0 + 13);
  sub_100042AFC((v0 + 2));
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[48];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[39];
  v12 = v0[36];
  v13 = v0[33];
  sub_100042820("credential(for:)", 16, 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10003248C()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v4 = *v1;
  *(*v1 + 600) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    v6 = sub_1000326F4;
  }

  else
  {
    v6 = sub_1000325B8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000325B8()
{
  (*(v0[41] + 32))(v0[25], v0[42], v0[40]);
  sub_100026FDC(v0 + 13);
  sub_100042AFC((v0 + 2));
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];
  v4 = v0[48];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[39];
  v12 = v0[36];
  v13 = v0[33];
  sub_100042820("credential(for:)", 16, 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000326F4()
{
  (*(v0[41] + 8))(v0[42], v0[40]);
  v14 = v0[75];
  sub_100026FDC(v0 + 13);
  sub_100042AFC((v0 + 2));
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[48];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[39];
  v12 = v0[36];
  v13 = v0[33];
  sub_100042820("credential(for:)", 16, 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100032834()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[48];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[39];
  v12 = v0[36];
  v13 = v0[33];
  v14 = v0[55];
  sub_100042820("credential(for:)", 16, 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10003294C()
{
  sub_100042AFC((v0 + 2));
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[48];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[39];
  v12 = v0[36];
  v13 = v0[33];
  v14 = v0[57];
  sub_100042820("credential(for:)", 16, 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100032A6C()
{
  v1 = v0[27];
  v0[76] = *sub_100026F50((v0[29] + 152), *(v0[29] + 176));

  v2 = swift_task_alloc();
  v0[77] = v2;
  *v2 = v0;
  v2[1] = sub_100032B50;
  v3 = v0[59];

  return sub_100050F58(v3, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100032B50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 616);
  v6 = *v2;
  *(v4 + 624) = a1;
  *(v4 + 632) = v1;

  v7 = *(v3 + 608);
  if (v1)
  {
    v8 = sub_100032F94;
  }

  else
  {
    v8 = sub_100032C88;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100032C88()
{
  v1 = v0[76];
  v2 = *(v1 + 216);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 216) = v4;
    if (qword_10016A2F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_10002FD14(v0[34], qword_1001732E8);
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v29 = v0[78];
  v30 = v0[79];
  v5 = v0[39];
  v6 = v0[35];
  v7 = v0[36];
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[32];
  v28 = v0[31];
  v11 = v0[26];
  v12 = v0[27];
  v13 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v13, qword_100173318);
  v0[20] = v11;
  v0[21] = v12;
  static Expression<A>.== infix<A>(_:_:)();
  sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
  QueryType.where(_:)();
  (*(v10 + 8))(v9, v28);
  QueryType.delete()();
  (*(v6 + 8))(v7, v8);
  Connection.run(_:)();
  v14 = v0[78];
  (*(v0[38] + 8))(v0[39], v0[37]);

  v18 = *(v1 + 216);
  v3 = __OFSUB__(v18, 1);
  v19 = v18 - 1;
  v20 = v3;
  if (v30)
  {
    if ((v20 & 1) == 0)
    {
      *(v1 + 216) = v19;
      v0[80] = v30;
      v21 = v0[29];
      v22 = v0[26];
      v23 = v0[27];
      sub_100042BA4();
      v24 = sub_10003300C;
      goto LABEL_13;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return _swift_task_switch(v15, v16, v17);
  }

  if (v20)
  {
    goto LABEL_19;
  }

  v21 = v0[29];
  v25 = v0[26];
  v26 = v0[27];
  *(v1 + 216) = v19;
  sub_100042BA4();
  v24 = sub_100032F24;
LABEL_13:
  v15 = v24;
  v16 = v21;
  v17 = 0;

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100032F24()
{
  v1 = *sub_100026F50((*(v0 + 232) + 232), *(*(v0 + 232) + 256));

  return _swift_task_switch(sub_100042C58, v1, 0);
}

uint64_t sub_100032F94()
{
  v0[80] = v0[79];
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  sub_100042BA4();

  return _swift_task_switch(sub_10003300C, v1, 0);
}

uint64_t sub_10003300C()
{
  v1 = v0[65];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];

  (*(v3 + 8))(v2, v4);
  sub_100026FDC(v0 + 13);
  sub_100042AFC((v0 + 2));
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[51];
  v8 = v0[48];
  v10 = v0[44];
  v9 = v0[45];
  v12 = v0[42];
  v11 = v0[43];
  v13 = v0[39];
  v16 = v0[36];
  v17 = v0[33];
  v18 = v0[80];
  sub_100042820("credential(for:)", 16, 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10003315C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v5[33] = *v4;
  v6 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v5[35] = v7;
  v8 = *(v7 - 8);
  v5[36] = v8;
  v9 = *(v8 + 64) + 15;
  v5[37] = swift_task_alloc();

  return _swift_task_switch(sub_100033278, v4, 0);
}

uint64_t sub_100033278()
{
  if (qword_10016A310 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FD14(v2, qword_100173348);
  Row.get<A>(_:)();
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[25];
  default argument 1 of static AccessCredential.isExpired(_:at:)();
  v7 = static AccessCredential.isExpired(_:at:)();
  (*(v4 + 8))(v3, v5);
  if (v7)
  {
    if (qword_10016A2E0 != -1)
    {
      swift_once();
    }

    v8 = v0[34];
    v10 = v0[30];
    v9 = v0[31];
    v11 = type metadata accessor for OSLogger();
    sub_10002FD14(v11, qword_10016AC10);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v12 = *(type metadata accessor for LogMessage() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._object = 0x800000010013A3B0;
    v15._countAndFlagsBits = 0xD000000000000028;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    v0[17] = &type metadata for String;
    v0[14] = v10;
    v0[15] = v9;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 14), &qword_10016AB10, &unk_100130B10);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();

    v17 = type metadata accessor for AccessCredential.Error();
    sub_100042C10(&qword_10016AB18, &type metadata accessor for AccessCredential.Error);
    swift_allocError();
    *v18 = v6;
    (*(*(v17 - 8) + 104))(v18, enum case for AccessCredential.Error.invalidExpiresAtDate(_:), v17);
LABEL_7:
    swift_willThrow();
    v21 = v0[37];
    v22 = v0[34];

    v23 = v0[1];

    return v23();
  }

  if (qword_10016A308 != -1)
  {
    swift_once();
  }

  v19 = v0[29];
  v20 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v20, qword_100173330);
  Row.get<A>(_:)();
  v25 = v0[21];
  v26 = v0[22];
  v0[38] = v25;
  v0[39] = v26;
  v27 = sub_100088054(v25, v26);
  if (v28)
  {
    v29 = v27;

    v0[26] = v29;
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    swift_willThrowTypedImpl();
    if (qword_10016A2E0 != -1)
    {
      swift_once();
    }

    v30 = v0[34];
    v32 = v0[30];
    v31 = v0[31];
    v33 = type metadata accessor for OSLogger();
    sub_10002FD14(v33, qword_10016AC10);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v34 = *(type metadata accessor for LogMessage() - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v37._countAndFlagsBits = 0xD000000000000037;
    v37._object = 0x800000010013A340;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    v0[5] = &type metadata for String;
    v0[2] = v32;
    v0[3] = v31;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 2), &qword_10016AB10, &unk_100130B10);
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();

    goto LABEL_7;
  }

  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v39 = v0[29];
  sub_10002FD14(v20, qword_100173318);
  Row.get<A>(_:)();
  v40 = v0[32];
  v41 = v0[24];
  v0[40] = v0[23];
  v0[41] = v41;
  v42 = sub_100026F50((v40 + 152), *(v40 + 176));
  v43 = *v42;
  v0[42] = *v42;

  return _swift_task_switch(sub_1000338FC, v43, 0);
}

uint64_t sub_1000338FC()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 344) = v3;
  *v3 = v0;
  v3[1] = sub_1000339F8;
  v4 = *(v0 + 336);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000339F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v7 = *(v3 + 336);
  if (v1)
  {
    v8 = sub_100033C2C;
  }

  else
  {
    v8 = sub_100033B2C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100033B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[42];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[44];
  v9 = v3[45];
  v10 = v3[40];
  v11 = v3[41];
  v12 = v3[33];
  *(v4 + 216) = v7;
  sub_1000408BC(v8, v10, v11);
  v3[46] = v9;
  v13 = v3[44];

  v14 = *(v4 + 216);
  v6 = __OFSUB__(v14, 1);
  v15 = v14 - 1;
  v16 = v6;
  if (v9)
  {
    if ((v16 & 1) == 0)
    {
      v17 = v3[41];
      v18 = v3[39];
      *(v4 + 216) = v15;

      v3[47] = v9;
      a2 = v3[32];
      a1 = sub_100033F7C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v16)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v19 = v3[41];
  v20 = v3[32];
  *(v4 + 216) = v15;

  a1 = sub_100033CA8;
  a2 = v20;
LABEL_10:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100033C2C()
{
  v1 = v0[41];
  v2 = v0[39];

  v0[47] = v0[45];
  v3 = v0[32];

  return _swift_task_switch(sub_100033F7C, v3, 0);
}

uint64_t sub_100033CA8()
{
  v1 = v0[46];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[28];
  AccessCredential.init(from:verifySignature:)();
  if (v1)
  {
    if (qword_10016A2E0 != -1)
    {
      swift_once();
    }

    v5 = v0[34];
    v7 = v0[30];
    v6 = v0[31];
    v8 = type metadata accessor for OSLogger();
    sub_10002FD14(v8, qword_10016AC10);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v9 = *(type metadata accessor for LogMessage() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._object = 0x800000010013A380;
    v12._countAndFlagsBits = 0xD00000000000002BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    v0[9] = &type metadata for String;
    v0[6] = v7;
    v0[7] = v6;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 6), &qword_10016AB10, &unk_100130B10);
    v13._countAndFlagsBits = 2629678;
    v13._object = 0xE300000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    swift_getErrorValue();
    v14 = v0[18];
    v15 = v0[19];
    v0[13] = v15;
    v16 = sub_100042BAC(v0 + 10);
    (*(*(v15 - 8) + 16))(v16, v14, v15);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 10), &qword_10016AB10, &unk_100130B10);
    v17._countAndFlagsBits = 41;
    v17._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();

    swift_willThrow();
    v18 = v0[37];
    v19 = v0[34];

    v20 = v0[1];
  }

  else
  {
    v21 = v0[37];
    v22 = v0[34];

    v20 = v0[1];
  }

  return v20();
}

uint64_t sub_100033F7C()
{
  v1 = v0[47];
  v2 = v0[37];
  v3 = v0[34];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100033FEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for OSSignpostID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000340E4, v2, 0);
}

uint64_t sub_1000340E4()
{
  if (qword_10016A2E8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016AC28);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "hasCredential(for:)", "", v6, 2u);
  }

  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[3];
  v13 = v0[4];

  (*(v11 + 16))(v8, v9, v10);
  v14 = type metadata accessor for OSSignpostIntervalState();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[10] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v17 = sub_100026F50((v13 + 152), *(v13 + 176));
  v18 = *v17;
  v0[11] = *v17;

  return _swift_task_switch(sub_1000342C0, v18, 0);
}

uint64_t sub_1000342C0()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1000343BC;
  v4 = *(v0 + 88);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000343BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v7 = *(v3 + 88);
  if (v1)
  {
    v8 = sub_1000345EC;
  }

  else
  {
    v8 = sub_1000344F0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000344F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 88);
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(v3 + 104);
  v9 = *(v3 + 112);
  v10 = *(v3 + 40);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  *(v4 + 216) = v7;
  sub_10003479C(v8, v11, v12, (v3 + 128));

  v13 = *(v4 + 216);
  v6 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  v15 = v6;
  if (v9)
  {
    if ((v15 & 1) == 0)
    {
      v16 = *(v3 + 24);
      *(v4 + 216) = v14;

      *(v3 + 120) = v9;
      a2 = *(v3 + 32);
      a1 = sub_1000346FC;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v15)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v17 = *(v3 + 24);
  v18 = *(v3 + 32);
  *(v4 + 216) = v14;

  *(v3 + 129) = *(v3 + 128);
  a1 = sub_10003465C;
  a2 = v18;
LABEL_10:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1000345EC()
{
  v1 = v0[3];

  v0[15] = v0[14];
  v2 = v0[4];

  return _swift_task_switch(sub_1000346FC, v2, 0);
}

uint64_t sub_10003465C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_100042820("hasCredential(for:)", 19, 2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 129);

  return v4(v5);
}

uint64_t sub_1000346FC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_100042820("hasCredential(for:)", 19, 2);

  v4 = v0[1];
  v5 = v0[15];

  return v4(0);
}

uint64_t sub_10003479C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v53 = a2;
  v54 = a3;
  v6 = sub_100026F94(&qword_10016AD10, &qword_100132950);
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 8);
  v8 = __chkstk_darwin(v6);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v42 - v10;
  v52 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v49 = *(v52 - 8);
  v12 = *(v49 + 64);
  __chkstk_darwin(v52);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Table();
  v56 = *(v15 - 8);
  v16 = *(v56 + 64);
  v17 = __chkstk_darwin(v15);
  v47 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v42 - v19;
  if (qword_10016A2F0 != -1)
  {
    swift_once();
  }

  v21 = sub_10002FD14(v15, qword_1001732E8);
  v22 = sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
  v46 = v21;
  v23._countAndFlagsBits = QueryType.name.getter();
  v55 = a1;
  LOBYTE(v21) = Connection.tableExists(_:)(v23);

  if ((v21 & 1) == 0)
  {
LABEL_11:
    *a4 = 0;
    return result;
  }

  v45 = v14;
  if (qword_10016A2F8 != -1)
  {
    swift_once();
  }

  v25 = v11;
  v44 = a4;
  sub_10002FD14(v15, qword_100173300);
  v27 = v53;
  v26 = v54;
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v28 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v29 = sub_10002FD14(v28, qword_100173318);
  v58 = v27;
  v59 = v26;
  v30 = v45;
  v43 = v29;
  static Expression<A>.== infix<A>(_:_:)();
  QueryType.where(_:)();
  v31 = *(v49 + 8);
  v31(v30, v52);
  QueryType.exists.getter();
  v49 = v22;
  v33 = v56 + 8;
  v32 = *(v56 + 8);
  v32(v20, v15);
  v34 = v57;
  Connection.scalar<A>(_:)();
  v35 = v51;
  v36 = v25;
  v37 = *(v50 + 1);
  result = v37(v36, v51);
  if (!v34)
  {
    v42 = v37;
    v50 = v32;
    result = v43;
    v56 = v33;
    if ((v60 & 1) == 0)
    {
      v38 = v31;
      v58 = v53;
      v59 = v54;
      v39 = v45;
      v57 = 0;
      static Expression<A>.== infix<A>(_:_:)();
      v40 = v47;
      QueryType.where(_:)();
      v38(v39, v52);
      v41 = v48;
      QueryType.exists.getter();
      v50(v40, v15);
      Connection.scalar<A>(_:)();
      return v42(v41, v35);
    }

    a4 = v44;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100034D04(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v2[39] = *v1;
  v3 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v2[42] = v4;
  v5 = *(v4 - 8);
  v2[43] = v5;
  v6 = *(v5 + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return _swift_task_switch(sub_100034E3C, v1, 0);
}

uint64_t sub_100034E3C()
{
  if (qword_10016A2E8 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016AC28);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[45];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "cleanupInvalidCredentials", "", v6, 2u);
  }

  v8 = v0[44];
  v9 = v0[45];
  v10 = v0[42];
  v11 = v0[43];

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[46] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v15 = sub_100026F94(&qword_10016AD88, &qword_100130CB0);
  v16 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v17 = swift_task_alloc();
  v0[47] = v17;
  *v17 = v0;
  v17[1] = sub_100035048;
  v18 = v0[37];

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v15, v15);
}

uint64_t sub_100035048()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 304);
  if (v0)
  {
    v6 = sub_100035C14;
  }

  else
  {
    v6 = sub_100035174;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100035174()
{
  v1 = *(v0 + 304);
  v2 = sub_100026F50((v1 + 152), *(v1 + 176));
  sub_100026EEC(v1 + 312, v0 + 56);
  sub_100026EEC(v0 + 16, v0 + 96);
  v3 = *v2;
  *(v0 + 392) = *v2;

  return _swift_task_switch(sub_100035204, v3, 0);
}

uint64_t sub_100035204()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 400) = v3;
  *v3 = v0;
  v3[1] = sub_100035300;
  v4 = *(v0 + 392);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100035300(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  *(v4 + 408) = a1;
  *(v4 + 416) = v1;

  v7 = *(v3 + 392);
  if (v1)
  {
    v8 = sub_1000355C4;
  }

  else
  {
    v8 = sub_100035434;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100035434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[49];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[51];
  v9 = v3[52];
  v10 = v3[39];
  *(v4 + 216) = v7;
  sub_100035D8C(v8, v10, v3 + 36);
  v11 = v3[51];

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (!v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;
      v3[53] = v3[36];
      sub_100026FDC(v3 + 7);
      sub_100026FDC(v3 + 12);
      v16 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
      v17 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v18 = swift_task_alloc();
      v3[54] = v18;
      *v18 = v3;
      v18[1] = sub_100035640;
      v19 = v3[37];
      a1 = (v3 + 17);
      a2 = v16;
      a3 = v16;

      return BaseObjectGraph.inject<A>(_:)(a1, a2, a3);
    }

LABEL_16:
    __break(1u);
    return BaseObjectGraph.inject<A>(_:)(a1, a2, a3);
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v4 + 216) = v13;
  v3[56] = v9;
  v15 = v3[38];
  sub_100026FDC(v3 + 7);
  sub_100026FDC(v3 + 12);

  return _swift_task_switch(sub_100035768, v15, 0);
}

uint64_t sub_1000355C4()
{
  v0[56] = v0[52];
  v1 = v0[38];
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 12);

  return _swift_task_switch(sub_100035768, v1, 0);
}

uint64_t sub_100035640()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v9 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v4 = *(v2 + 424);
    v5 = *(v2 + 304);

    v6 = sub_100035CCC;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 304);
    v6 = sub_100035828;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100035768()
{
  sub_100026FDC(v0 + 2);
  v1 = v0[56];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
  sub_100042820("cleanupInvalidCredentials", 25, 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100035828()
{
  v1 = *(v0 + 424);
  v2 = *(v1 + 16);
  if (v2)
  {
    v32 = type metadata accessor for AccessCredentialDataCleanupTask();
    v3 = (v1 + 40);
    do
    {
      v33 = v2;
      v4 = *(v0 + 328);
      v5 = *(v0 + 296);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = swift_allocObject();

      swift_defaultActor_initialize();
      *(v8 + 112) = v6;
      *(v8 + 120) = v7;
      *(v0 + 200) = v32;
      *(v0 + 208) = sub_100042C10(&qword_10016AD98, type metadata accessor for AccessCredentialDataCleanupTask);
      *(v0 + 176) = v8;
      v9 = type metadata accessor for TaskPriority();
      v10 = *(v9 - 8);
      (*(v10 + 56))(v4, 1, 1, v9);
      sub_100026EEC(v0 + 176, v0 + 216);
      v11 = qword_10016A6C8;

      if (v11 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 320);
      v12 = *(v0 + 328);
      v14 = *(v0 + 296);
      v15 = qword_1001738A8;
      v16 = sub_100042C10(&qword_10016ADA0, type metadata accessor for DaemonActor);
      v17 = swift_allocObject();
      v17[2] = v15;
      v17[3] = v16;
      sub_10002C604((v0 + 216), (v17 + 4));
      v17[9] = v14;
      sub_100042774(v12, v13);
      LODWORD(v13) = (*(v10 + 48))(v13, 1, v9);

      v18 = *(v0 + 320);
      if (v13 == 1)
      {
        sub_10002BA6C(*(v0 + 320), &qword_10016AD80, &qword_1001311B0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v10 + 8))(v18, v9);
      }

      v19 = v17[2];
      v20 = v17[3];
      swift_unknownObjectRetain();

      if (v19)
      {
        swift_getObjectType();
        v21 = dispatch thunk of Actor.unownedExecutor.getter();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      sub_10002BA6C(*(v0 + 328), &qword_10016AD80, &qword_1001311B0);
      if (v23 | v21)
      {
        *(v0 + 256) = 0;
        *(v0 + 264) = 0;
        *(v0 + 272) = v21;
        *(v0 + 280) = v23;
      }

      swift_task_create();

      sub_100026FDC((v0 + 176));
      v3 += 2;
      v2 = v33 - 1;
    }

    while (v33 != 1);
    v24 = *(v0 + 424);
  }

  v26 = *(v0 + 360);
  v25 = *(v0 + 368);
  v27 = *(v0 + 352);
  v29 = *(v0 + 320);
  v28 = *(v0 + 328);

  sub_100026FDC((v0 + 136));
  sub_100026FDC((v0 + 16));
  sub_100042820("cleanupInvalidCredentials", 25, 2);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_100035C14()
{
  v1 = v0[48];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
  sub_100042820("cleanupInvalidCredentials", 25, 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100035CCC()
{
  sub_100026FDC(v0 + 2);
  v1 = v0[55];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
  sub_100042820("cleanupInvalidCredentials", 25, 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100035D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v4 = v3;
  v172 = a2;
  v166 = type metadata accessor for Row();
  v164 = *(v166 - 8);
  v7 = *(v164 + 64);
  __chkstk_darwin(v166);
  v170 = v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v165 = v151 - v11;
  v12 = type metadata accessor for Date();
  v176 = *(v12 - 8);
  v177 = v12;
  v13 = *(v176 + 64);
  __chkstk_darwin(v12);
  v175 = v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LogMessage.StringInterpolation();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v161 = v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for Delete();
  v169 = *(v168 - 8);
  v18 = *(v169 + 64);
  v19 = __chkstk_darwin(v168);
  v160 = v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v163 = v151 - v22;
  __chkstk_darwin(v21);
  v162 = (v151 - v23);
  v24 = sub_100026F94(&qword_10016A940, &qword_100130A60);
  v173 = *(v24 - 8);
  v25 = v173[8];
  __chkstk_darwin(v24);
  v27 = v151 - v26;
  v181 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v184 = *(v181 - 8);
  v28 = *(v184 + 64);
  __chkstk_darwin(v181);
  v180 = v151 - v29;
  v30 = type metadata accessor for Table();
  v178 = *(v30 - 8);
  v31 = *(v178 + 8);
  v32 = __chkstk_darwin(v30);
  v34 = v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v32);
  v179 = v151 - v36;
  __chkstk_darwin(v35);
  v174 = v151 - v37;
  if (qword_10016A2F0 != -1)
  {
    swift_once();
  }

  v38 = sub_10002FD14(v30, qword_1001732E8);
  v185 = sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
  v182 = v38;
  v39._countAndFlagsBits = QueryType.name.getter();
  LOBYTE(v38) = Connection.tableExists(_:)(v39);

  if (v38)
  {
    v183 = a1;
    if (qword_10016A2F8 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v30, qword_100173300);
    v40._countAndFlagsBits = QueryType.name.getter();
    v41 = Connection.tableExists(_:)(v40);

    v42 = &selRef_processInfo;
    v159 = v34;
    v158 = a3;
    v171 = v30;
    if (v41)
    {
      v167 = v3;
      if (qword_10016A300 != -1)
      {
        swift_once();
      }

      v43 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
      v44 = sub_10002FD14(v43, qword_100173318);
      sub_10002B95C(&qword_10016ADC8, &qword_10016AD28, &unk_1001318C0);
      v187[0] = dispatch thunk of CustomStringConvertible.description.getter();
      v187[1] = v45;
      v46._countAndFlagsBits = 0x28204E4920;
      v46._object = 0xE500000000000000;
      String.append(_:)(v46);
      v190 = v43;
      v191 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0);
      v47 = sub_100042BAC(&v188);
      (*(*(v43 - 8) + 16))(v47, v44, v43);
      sub_100042C10(&qword_10016AD68, &type metadata accessor for Table);
      v48 = v179;
      v49 = v171;
      SchemaType.select(_:_:)();
      sub_100026FDC(&v188);
      v50 = v185;
      QueryType.expression.getter();
      v51 = v178;
      v157 = *(v178 + 1);
      v157(v48, v49);
      sub_10002B95C(&qword_10016ADD0, &qword_10016A940, &qword_100130A60);
      v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v52);

      (v173[1])(v27, v24);
      v53._countAndFlagsBits = 41;
      v53._object = 0xE100000000000000;
      String.append(_:)(v53);
      sub_10002B95C(&qword_10016ADD8, &qword_10016AD18, &unk_100130C70);
      v54 = v180;
      v55 = v181;
      ExpressionType.init(literal:)();
      v56 = v174;
      QueryType.where(_:)();
      (*(v184 + 8))(v54, v55);
      v190 = v49;
      v191 = v50;
      v57 = sub_100042BAC(&v188);
      (*(v51 + 2))(v57, v56, v49);
      v58 = v167;
      Connection.prepare(_:)();
      if (v58)
      {
        v157(v56, v49);
        return sub_100026FDC(&v188);
      }

      v91 = sub_100026FDC(&v188);
      v92 = __chkstk_darwin(v91);
      v151[-2] = v172;
      __chkstk_darwin(v92);
      v151[-2] = sub_100042C5C;
      v151[-1] = v93;
      v173 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v96 = v162;
      QueryType.delete()();
      v118 = Connection.run(_:)();
      (*(v169 + 8))(v96, v168);
      if (qword_10016A2E0 != -1)
      {
        swift_once();
      }

      v119 = type metadata accessor for OSLogger();
      sub_10002FD14(v119, qword_10016AC10);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v120 = *(type metadata accessor for LogMessage() - 8);
      v121 = *(v120 + 72);
      v122 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v123._countAndFlagsBits = 0x20646574656C6544;
      v123._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v123);
      v190 = &type metadata for Int;
      v188 = v118;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v188, &qword_10016AB10, &unk_100130B10);
      v124._object = 0x800000010013A110;
      v124._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v124);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v157(v56, v171);
      v4 = 0;
      v42 = &selRef_processInfo;
    }

    else
    {
      v173 = _swiftEmptyArrayStorage;
    }

    v64 = v179;
    if (v42[96] != -1)
    {
      swift_once();
    }

    v167 = v4;
    v65 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    v66 = sub_10002FD14(v65, qword_100173318);
    v190 = v65;
    v157 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0);
    v191 = v157;
    v67 = sub_100042BAC(&v188);
    v68 = *(v65 - 8);
    v69 = *(v68 + 16);
    v174 = v66;
    v162 = v65;
    v156 = v69;
    v155 = v68 + 16;
    v69(v67, v66, v65);
    v70 = sub_100042C10(&qword_10016AD68, &type metadata accessor for Table);
    v71 = v171;
    v154 = v70;
    SchemaType.select(_:_:)();
    sub_100026FDC(&v188);
    if (qword_10016A310 != -1)
    {
      swift_once();
    }

    v72 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
    sub_10002FD14(v72, qword_100173348);
    v73 = v175;
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v75 = v74;
    (*(v176 + 8))(v73, v177);
    v188 = v75;
    v76 = v180;
    static Expression<A>.< infix<A>(_:_:)();
    v77 = v159;
    v78 = v185;
    v79 = v64;
    QueryType.where(_:)();
    v81 = v184 + 8;
    v80 = *(v184 + 8);
    v80(v76, v181);
    v82 = v178;
    v84 = (v178 + 8);
    v83 = *(v178 + 1);
    v83(v79, v71);
    v190 = v71;
    v191 = v78;
    v85 = sub_100042BAC(&v188);
    (*(v82 + 2))(v85, v77, v71);
    v86 = v167;
    Connection.prepare(_:)();
    if (v86)
    {
      v83(v77, v71);

      return sub_100026FDC(&v188);
    }

    else
    {
      v177 = v80;
      v178 = v83;
      v87 = v84;
      v184 = v81;
      v88 = sub_100026FDC(&v188);
      v89 = __chkstk_darwin(v88);
      v151[-2] = v172;
      __chkstk_darwin(v89);
      v151[-2] = sub_1000427E4;
      v151[-1] = v90;
      v176 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v94 = v163;
      v95 = v159;
      QueryType.delete()();
      v97 = Connection.run(_:)();
      v167 = 0;
      v98 = *(v169 + 8);
      v169 += 8;
      v152 = v98;
      v98(v94, v168);
      if (qword_10016A2E0 != -1)
      {
        swift_once();
      }

      v99 = type metadata accessor for OSLogger();
      v100 = sub_10002FD14(v99, qword_10016AC10);
      v101 = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v102 = *(type metadata accessor for LogMessage() - 8);
      v103 = *(v102 + 80);
      v104 = (v103 + 32) & ~v103;
      v151[2] = *(v102 + 72);
      v151[1] = v103;
      v151[3] = v101;
      v105 = swift_allocObject();
      v153 = xmmword_10012FA10;
      *(v105 + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v106._countAndFlagsBits = 0x20646574656C6544;
      v106._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v106);
      v190 = &type metadata for Int;
      v188 = v97;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v188, &qword_10016AB10, &unk_100130B10);
      v107._object = 0x800000010013A0D0;
      v107._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v107);
      v151[4] = v104;
      LogMessage.init(stringInterpolation:)();
      v151[6] = v99;
      v151[5] = v100;
      Logger.info(_:)();

      v108 = v162;
      v109 = v157;
      v187[3] = v162;
      v187[4] = v157;
      v110 = sub_100042BAC(v187);
      v111 = v156;
      v156(v110, v174, v108);
      sub_100026F94(&qword_10016AD50, &qword_100130C90);
      v112 = swift_allocObject();
      *(v112 + 16) = v153;
      if (qword_10016A308 != -1)
      {
        swift_once();
      }

      v113 = sub_10002FD14(v108, qword_100173330);
      *(v112 + 56) = v108;
      *(v112 + 64) = v109;
      v114 = sub_100042BAC((v112 + 32));
      v111(v114, v113, v108);
      v115 = v171;
      v190 = v171;
      v191 = v185;
      sub_100042BAC(&v188);
      SchemaType.select(_:_:)();

      sub_100026FDC(v187);
      v116 = v167;
      v117 = Connection.prepare(_:)();
      if (v116)
      {
        v178(v95, v115);

        return sub_100026FDC(&v188);
      }

      v125 = v117;
      v172 = v113;
      v156 = v87;
      sub_100026FDC(&v188);

      v126 = dispatch thunk of _AnySequenceBox._makeIterator()();
      v155 = v125;

      v127 = v165;
      v175 = v126;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v128 = v164;
      v129 = *(v164 + 48);
      v130 = v166;
      v167 = v164 + 48;
      v163 = v129;
      if ((v129)(v127, 1, v166) == 1)
      {
        v131 = _swiftEmptyArrayStorage;
      }

      else
      {
        v137 = *(v128 + 32);
        v136 = v128 + 32;
        v157 = v137;
        v162 = (v136 - 24);
        v131 = _swiftEmptyArrayStorage;
        v164 = v136;
        (v137)(v170, v127, v130);
        while (1)
        {
          Row.get<A>(_:)();
          v140 = sub_100088054(v188, v189);
          v142 = v141;

          if (v142)
          {
            v188 = v140;
            sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
            swift_willThrowTypedImpl();
            Row.get<A>(_:)();
            v143 = v188;
            v144 = v189;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v131 = sub_10007E054(0, *(v131 + 2) + 1, 1, v131);
            }

            v146 = *(v131 + 2);
            v145 = *(v131 + 3);
            if (v146 >= v145 >> 1)
            {
              v131 = sub_10007E054((v145 > 1), v146 + 1, 1, v131);
            }

            v138 = v166;
            (*v162)(v170, v166);
            *(v131 + 2) = v146 + 1;
            v147 = &v131[16 * v146];
            *(v147 + 4) = v143;
            *(v147 + 5) = v144;
            v115 = v171;
          }

          else
          {
            v138 = v166;
            (*v162)(v170, v166);
          }

          v139 = v165;
          dispatch thunk of _AnyIteratorBoxBase.next()();
          if ((v163)(v139, 1, v138) == 1)
          {
            break;
          }

          (v157)(v170, v139, v138);
        }
      }

      v188 = v131;

      sub_100026F94(&qword_10016AB28, &qword_100131390);
      sub_10002B95C(&qword_10016ADC0, &qword_10016AB28, &qword_100131390);
      v132 = v180;
      Collection<>.contains(_:)();

      v133 = v179;
      QueryType.where(_:)();
      v177(v132, v181);
      v134 = v160;
      QueryType.delete()();
      v135 = v178;
      v178(v133, v115);
      v148 = Connection.run(_:)();
      v152(v134, v168);
      *(swift_allocObject() + 16) = v153;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v149._countAndFlagsBits = 0x20646574656C6544;
      v149._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v149);
      v190 = &type metadata for Int;
      v188 = v148;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v188, &qword_10016AB10, &unk_100130B10);
      v150._object = 0x800000010013A0F0;
      v150._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v150);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v186 = v173;
      sub_10007FDCC(v176);
      sub_10007FDCC(v131);

      result = v135(v159, v115);
      *v158 = v186;
    }
  }

  else
  {
    if (qword_10016A2E0 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for OSLogger();
    sub_10002FD14(v60, qword_10016AC10);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v61 = *(type metadata accessor for LogMessage() - 8);
    v62 = *(v61 + 72);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    *a3 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1000379E0(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v5 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v5, qword_100173318);
  result = Row.get<A>(_:)();
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_100037A8C(uint64_t a1, char a2)
{
  *(v3 + 284) = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  *(v3 + 104) = *v2;
  v4 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  *(v3 + 120) = v5;
  v6 = *(v5 - 8);
  *(v3 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_100037BB0, v2, 0);
}

uint64_t sub_100037BB0()
{
  if (qword_10016A2E8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016AC28);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "updateRevokedCredentials", "", v6, 2u);
  }

  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[16];

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[19] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_100037DA8;
  v16 = v0[11];

  return sub_10002F52C();
}

uint64_t sub_100037DA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 96);
  if (v1)
  {
    v8 = sub_100038194;
  }

  else
  {
    v8 = sub_100037EDC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100037EDC()
{
  if (qword_10016A2E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  v3 = type metadata accessor for OSLogger();
  *(v0 + 184) = v3;
  *(v0 + 192) = sub_10002FD14(v3, qword_10016AC10);
  *(v0 + 200) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v4 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 208) = *(v4 + 72);
  *(v0 + 280) = *(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x2064656863746546;
  v5._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = *(v1 + 16);
  *(v0 + 40) = &type metadata for Int;
  *(v0 + 16) = v6;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 16, &qword_10016AB10, &unk_100130B10);
  v7._countAndFlagsBits = 0x64656B6F76657220;
  v7._object = 0xED00002E73444920;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  if (*(v1 + 16))
  {
    v8 = sub_100026F50((*(v0 + 96) + 152), *(*(v0 + 96) + 176));
    v9 = *v8;
    *(v0 + 216) = *v8;

    return _swift_task_switch(sub_100038238, v9, 0);
  }

  else
  {
    v10 = *(v0 + 168);

    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
    v13 = *(v0 + 136);
    v14 = *(v0 + 112);
    sub_100042820("updateRevokedCredentials", 24, 2);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100038194()
{
  v1 = v0[19];
  sub_100042820("updateRevokedCredentials", 24, 2);

  v2 = v0[22];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100038238()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 224) = v3;
  *v3 = v0;
  v3[1] = sub_100038334;
  v4 = *(v0 + 216);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100038334(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(v4 + 232) = a1;
  *(v4 + 240) = v1;

  v7 = *(v3 + 216);
  if (v1)
  {
    v8 = sub_100038564;
  }

  else
  {
    v8 = sub_100038468;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100038468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[27];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[29];
  v9 = v3[30];
  v10 = v3[21];
  v11 = v3[13];
  *(v4 + 216) = v7;
  sub_100038B00(v8, v10, v3 + 10);
  v12 = v3[29];

  v13 = *(v4 + 216);
  v6 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  v15 = v6;
  if (v9)
  {
    if ((v15 & 1) == 0)
    {
      v16 = v3[21];
      *(v4 + 216) = v14;

      v3[32] = v9;
      a2 = v3[12];
      a1 = sub_1000387E4;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v15)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v17 = v3[21];
  v18 = v3[12];
  *(v4 + 216) = v14;

  v3[31] = v3[10];
  a1 = sub_1000385D4;
  a2 = v18;
LABEL_10:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100038564()
{
  v1 = v0[21];

  v0[32] = v0[30];
  v2 = v0[12];

  return _swift_task_switch(sub_1000387E4, v2, 0);
}

uint64_t sub_1000385D4()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 112);
  v6 = *(v0 + 284);
  v7 = ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(v0 + 208);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x800000010013A150;
  v8._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  *(v0 + 48) = v1;
  *(v0 + 72) = &type metadata for Int64;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 48, &qword_10016AB10, &unk_100130B10);
  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  if (v1 >= 1 && v6)
  {
    v10 = swift_task_alloc();
    *(v0 + 264) = v10;
    *v10 = v0;
    v10[1] = sub_100038888;
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);

    return sub_100034D04(v11);
  }

  else
  {
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);
    v16 = *(v0 + 136);
    v17 = *(v0 + 112);
    sub_100042820("updateRevokedCredentials", 24, 2);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000387E4()
{
  v1 = v0[19];
  sub_100042820("updateRevokedCredentials", 24, 2);

  v2 = v0[32];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100038888()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_100038A5C;
  }

  else
  {
    v6 = sub_1000389B4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000389B4()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  sub_100042820("updateRevokedCredentials", 24, 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100038A5C()
{
  v1 = v0[19];
  sub_100042820("updateRevokedCredentials", 24, 2);

  v2 = v0[34];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100038B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *&v47 = a2;
  v44 = a3;
  v5 = type metadata accessor for OnConflict();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin(v5);
  v45 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Insert();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A2F8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Table();
  v14 = sub_10002FD14(v13, qword_100173300);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v3)
  {
  }

  v40 = v14;
  v41 = v13;
  v42 = 0;
  v43 = v12;

  v16 = v47;
  v17 = *(v47 + 16);
  if (v17)
  {
    v36 = v9;
    v37 = v5;
    v38 = v8;
    v39 = a1;
    v51 = _swiftEmptyArrayStorage;
    sub_10007EA0C(0, v17, 0);
    v18 = v51;
    v19 = *(type metadata accessor for Setter() - 8);
    v48 = *(v19 + 72);
    v20 = *(v19 + 80);
    v21 = (v16 + 40);
    v47 = xmmword_10012FA10;
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      sub_100026F94(&qword_10016ADE8, &qword_1001318A0);
      v24 = swift_allocObject();
      *(v24 + 16) = v47;
      v25 = qword_10016A300;

      if (v25 != -1)
      {
        swift_once();
      }

      v26 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
      sub_10002FD14(v26, qword_100173318);
      v49 = v22;
      v50 = v23;
      <- infix<A>(_:_:)();

      v51 = v18;
      v28 = v18[2];
      v27 = v18[3];
      if (v28 >= v27 >> 1)
      {
        sub_10007EA0C((v27 > 1), v28 + 1, 1);
        v18 = v51;
      }

      v18[2] = v28 + 1;
      v18[v28 + 4] = v24;
      v21 += 2;
      --v17;
    }

    while (v17);
    v8 = v38;
    v9 = v36;
    v5 = v37;
  }

  v30 = v45;
  v29 = v46;
  (*(v46 + 104))(v45, enum case for OnConflict.ignore(_:), v5);
  sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
  v31 = v43;
  QueryType.insertMany(or:_:)();

  (*(v29 + 8))(v30, v5);
  v32 = v42;
  v33 = Connection.run(_:)();
  if (v32)
  {
    return (*(v9 + 8))(v31, v8);
  }

  v34 = v33;
  result = (*(v9 + 8))(v31, v8);
  *v44 = v34;
  return result;
}

uint64_t sub_100038FC0()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return _swift_task_switch(sub_100039008, v0, 0);
}

uint64_t sub_100039008()
{
  v1 = sub_100026F50((*(v0 + 24) + 152), *(*(v0 + 24) + 176));
  v2 = *v1;
  *(v0 + 40) = *v1;

  return _swift_task_switch(sub_10003907C, v2, 0);
}

uint64_t sub_10003907C()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_100039178;
  v4 = *(v0 + 40);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100039178(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(v4 + 56) = a1;
  *(v4 + 64) = v1;

  v7 = *(v3 + 40);
  if (v1)
  {
    v8 = sub_1000393A8;
  }

  else
  {
    v8 = sub_1000392AC;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_1000392AC()
{
  v1 = v0[5];
  v2 = *(v1 + 216);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[4];
  *(v1 + 216) = v4;
  sub_1000393C0(v5, v0 + 2);

  v8 = *(v1 + 216);
  v3 = __OFSUB__(v8, 1);
  v9 = v8 - 1;
  v10 = v3;
  if (v6)
  {
    if ((v10 & 1) == 0)
    {
      *(v1 + 216) = v9;
      v11 = v0[1];

      v11();
      return;
    }

    goto LABEL_15;
  }

  if (v10)
  {
LABEL_16:
    __break(1u);
    return;
  }

  *(v1 + 216) = v9;
  v12 = v0[2];
  v13 = v0[1];

  v13(v12);
}

uint64_t sub_1000393C0@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v95 = a2;
  v92 = type metadata accessor for ForwardDeletionRules();
  v89 = *(v92 - 8);
  v5 = *(v89 + 64);
  v6 = __chkstk_darwin(v92);
  v91 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v83 = &v73 - v8;
  v96 = type metadata accessor for Row();
  v86 = *(v96 - 8);
  v9 = *(v86 + 64);
  __chkstk_darwin(v96);
  v93 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v94 = &v73 - v13;
  v14 = type metadata accessor for Table();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A2F0 != -1)
  {
LABEL_47:
    swift_once();
  }

  sub_10002FD14(v14, qword_1001732E8);
  v19 = sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
  v20._countAndFlagsBits = QueryType.name.getter();
  v21 = Connection.tableExists(_:)(v20);

  if (v21)
  {
    v78 = v18;
    v84 = v14;
    if (qword_10016A318 != -1)
    {
      swift_once();
    }

    v87 = v15;
    v88 = a1;
    v22 = sub_100026F94(&qword_10016AD40, &qword_100130C88);
    v23 = sub_10002FD14(v22, qword_100173360);
    v101 = v22;
    v102 = sub_10002B95C(&qword_10016AD48, &qword_10016AD40, &qword_100130C88);
    v24 = sub_100042BAC(&v99);
    v25 = *(*(v22 - 8) + 16);
    v90 = v23;
    v25(v24, v23, v22);
    sub_100026F94(&qword_10016AD50, &qword_100130C90);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10012FA10;
    if (qword_10016A320 != -1)
    {
      swift_once();
    }

    v27 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
    v28 = sub_10002FD14(v27, qword_100173378);
    *(v26 + 56) = v27;
    *(v26 + 64) = sub_10002B95C(&qword_10016AD60, &qword_10016AD58, &qword_100130C98);
    v29 = sub_100042BAC((v26 + 32));
    (*(*(v27 - 8) + 16))(v29, v28, v27);
    sub_100042C10(&qword_10016AD68, &type metadata accessor for Table);
    v30 = v78;
    v31 = v84;
    SchemaType.select(_:_:)();

    sub_100026FDC(&v99);
    v101 = v31;
    v102 = v19;
    v32 = sub_100042BAC(&v99);
    v33 = v87;
    (*(v87 + 16))(v32, v30, v31);
    v34 = Connection.prepare(_:)();
    if (v3)
    {
      (*(v33 + 8))(v30, v31);
      return sub_100026FDC(&v99);
    }

    v40 = v34;
    v77 = v28;
    sub_100026FDC(&v99);
    v75 = v40;
    v41 = dispatch thunk of _AnySequenceBox._makeIterator()();
    v42 = v94;
    v88 = v41;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v43 = v86;
    v44 = *(v86 + 48);
    v45 = v96;
    v82 = v86 + 48;
    v81 = v44;
    if (v44(v42, 1, v96) == 1)
    {
      v85 = _swiftEmptyArrayStorage;
      a1 = v95;
LABEL_14:

      v46 = sub_100081630(v85);

      v47 = *(v46 + 16);
      if (!v47)
      {

        v48 = _swiftEmptyArrayStorage;
        goto LABEL_44;
      }

      v48 = sub_10007E8CC(*(v46 + 16), 0);
      v49 = sub_100080560(&v99, &v48[(*(v89 + 80) + 32) & ~*(v89 + 80)], v47, v46);
      sub_100042570();
      if (v49 == v47)
      {

        v33 = v87;
LABEL_44:
        result = (*(v33 + 8))(v78, v31);
        *a1 = v48;
        return result;
      }

      __break(1u);
LABEL_49:

      __break(1u);
    }

    else
    {
      v50 = *(v43 + 32);
      v14 = v43 + 32;
      v80 = v50;
      v79 = (v14 - 24);
      v76 = (v89 + 32);
      v85 = _swiftEmptyArrayStorage;
      v51 = v93;
      a1 = v95;
      v50(v93, v42, v45);
      while (1)
      {
        Row.get<A>(_:)();
        if (v3)
        {
          break;
        }

        v52 = v100;
        if (v100)
        {
          v53 = v14;
          v54 = v99;
          Row.get<A>(_:)();
          v86 = 0;
          if (v100)
          {
            v55 = v96;
            (*v79)(v51, v96);
            v45 = v55;

            v14 = v53;
            v42 = v94;
            v3 = v86;
          }

          else
          {
            v99 = v54;
            v100 = v52;
            v97 = 47;
            v98 = 0xE100000000000000;
            sub_10002C5B0();
            v56 = StringProtocol.components<A>(separatedBy:)();

            v18 = 0;
            v15 = *(v56 + 16);
            v3 = v56 + 40;
            v57 = _swiftEmptyArrayStorage;
LABEL_26:
            v58 = (v3 + 16 * v18);
            v14 = v53;
            while (v15 != v18)
            {
              if (v18 >= *(v56 + 16))
              {
                __break(1u);
                goto LABEL_47;
              }

              ++v18;
              a1 = *(v58 - 1);
              v59 = *v58;
              v58 += 2;
              v60 = HIBYTE(v59) & 0xF;
              if ((v59 & 0x2000000000000000) == 0)
              {
                v60 = a1 & 0xFFFFFFFFFFFFLL;
              }

              if (v60)
              {

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v99 = v57;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_10007E9EC(0, *(v57 + 2) + 1, 1);
                  v57 = v99;
                }

                v63 = *(v57 + 2);
                v62 = *(v57 + 3);
                v64 = v63 + 1;
                if (v63 >= v62 >> 1)
                {
                  v74 = v63 + 1;
                  sub_10007E9EC((v62 > 1), v63 + 1, 1);
                  v64 = v74;
                  v57 = v99;
                }

                *(v57 + 2) = v64;
                v65 = &v57[16 * v63];
                *(v65 + 4) = a1;
                *(v65 + 5) = v59;
                goto LABEL_26;
              }
            }

            v99 = v57;

            v66 = v86;
            sub_10007F2F4(&v99);
            v3 = v66;
            if (v66)
            {
              goto LABEL_49;
            }

            v67 = v83;
            ForwardDeletionRules.init(bundleIds:retentionInterval:)();
            v45 = v96;
            (*v79)(v93, v96);
            v68 = *v76;
            (*v76)(v91, v67, v92);
            v69 = swift_isUniquelyReferenced_nonNull_native();
            v42 = v94;
            a1 = v95;
            v31 = v84;
            if ((v69 & 1) == 0)
            {
              v85 = sub_10007E164(0, *(v85 + 2) + 1, 1, v85);
            }

            v71 = *(v85 + 2);
            v70 = *(v85 + 3);
            if (v71 >= v70 >> 1)
            {
              v85 = sub_10007E164(v70 > 1, v71 + 1, 1, v85);
            }

            v72 = v85;
            *(v85 + 2) = v71 + 1;
            v68(&v72[((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v71], v91, v92);
            v33 = v87;
            v51 = v93;
          }
        }

        else
        {
          v45 = v96;
          (*v79)(v51, v96);
        }

        dispatch thunk of _AnyIteratorBoxBase.next()();
        if (v81(v42, 1, v45) == 1)
        {
          goto LABEL_14;
        }

        v80(v51, v42, v45);
      }

      (*v79)(v51, v45);
      (*(v33 + 8))(v78, v31);
    }
  }

  else
  {
    if (qword_10016A2E0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for OSLogger();
    sub_10002FD14(v36, qword_10016AC10);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v37 = *(type metadata accessor for LogMessage() - 8);
    v38 = *(v37 + 72);
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    *v95 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10003A070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_10003A0BC, v3, 0);
}

uint64_t sub_10003A0BC()
{
  v1 = v0[4];
  v2 = sub_100026F50((v0[5] + 152), *(v0[5] + 176));
  v3 = *v2;
  v0[7] = *v2;

  return _swift_task_switch(sub_10003A148, v3, 0);
}

uint64_t sub_10003A148()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_10003A244;
  v4 = *(v0 + 56);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10003A244(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v7 = *(v3 + 56);
  if (v1)
  {
    v8 = sub_10003A464;
  }

  else
  {
    v8 = sub_10003A378;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10003A378()
{
  v1 = v0[7];
  v2 = *(v1 + 216);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];
  *(v1 + 216) = v3;
  sub_10003A4C8(v7, v8, v4, v9);

  v11 = *(v1 + 216);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  v14 = v12;
  if (v5)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (v14)
  {
LABEL_14:
    __break(1u);
    return result;
  }

LABEL_9:
  v15 = v0[4];
  *(v1 + 216) = v13;

  v16 = v0[1];

  return v16();
}

uint64_t sub_10003A464()
{
  v1 = v0[4];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10003A4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v82 = a4;
  v6 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v99 = v79 - v8;
  v9 = type metadata accessor for Row();
  v90 = *(v9 - 8);
  v91 = v9;
  v10 = *(v90 + 64);
  __chkstk_darwin(v9);
  v80 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v94 = *(v96 - 8);
  v12 = *(v94 + 64);
  __chkstk_darwin(v96);
  v93 = v79 - v13;
  v14 = type metadata accessor for Table();
  v95 = *(v14 - 8);
  v15 = *(v95 + 64);
  v16 = __chkstk_darwin(v14);
  v92 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v108 = v79 - v18;
  v19 = type metadata accessor for LogMessage.StringInterpolation();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A2E0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for OSLogger();
  v24 = sub_10002FD14(v23, qword_10016AC10);
  v25 = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v26 = *(type metadata accessor for LogMessage() - 8);
  v27 = *(v26 + 80);
  v28 = (v27 + 32) & ~v27;
  v87 = *(v26 + 72);
  v84 = v27;
  v88 = v25;
  v29 = swift_allocObject();
  v86 = xmmword_10012FA10;
  *(v29 + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0xD000000000000027;
  v30._object = 0x800000010013A200;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  v106 = &type metadata for String;
  v102 = a1;
  v103 = a2;
  v104 = a1;
  v105 = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v104, &qword_10016AB10, &unk_100130B10);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  v83 = v28;
  LogMessage.init(stringInterpolation:)();
  v85 = v24;
  Logger.info(_:)();

  if (qword_10016A2F0 != -1)
  {
    swift_once();
  }

  v89 = v23;
  v101 = sub_10002FD14(v14, qword_1001732E8);
  if (qword_10016A330 != -1)
  {
    swift_once();
  }

  v81 = v22;
  v100 = v14;
  v32 = sub_100026F94(&qword_10016AE08, &qword_100130D18);
  v33 = sub_10002FD14(v32, qword_1001733A8);
  v106 = v32;
  v107 = sub_10002B95C(&qword_10016AE18, &qword_10016AE08, &qword_100130D18);
  v34 = sub_100042BAC(&v104);
  v35 = *(*(v32 - 8) + 16);
  v79[1] = v33;
  v35(v34, v33, v32);
  sub_100026F94(&qword_10016AD50, &qword_100130C90);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100130B20;
  v37 = v102;
  v38 = v92;
  if (qword_10016A338 != -1)
  {
    swift_once();
  }

  v39 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
  v40 = sub_10002FD14(v39, qword_1001733C0);
  *(v36 + 56) = v39;
  v41 = sub_10002B95C(&qword_10016AD60, &qword_10016AD58, &qword_100130C98);
  *(v36 + 64) = v41;
  v42 = sub_100042BAC((v36 + 32));
  v43 = *(*(v39 - 8) + 16);
  v79[0] = v40;
  v43(v42, v40, v39);
  if (qword_10016A340 != -1)
  {
    swift_once();
  }

  v44 = sub_10002FD14(v39, qword_1001733D8);
  *(v36 + 96) = v39;
  *(v36 + 104) = v41;
  v45 = sub_100042BAC((v36 + 72));
  v43(v45, v44, v39);
  sub_100042C10(&qword_10016AD68, &type metadata accessor for Table);
  v46 = v100;
  SchemaType.select(_:_:)();

  sub_100026FDC(&v104);
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v47 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v47, qword_100173318);
  v104 = v37;
  v105 = v103;
  v48 = v93;
  static Expression<A>.== infix<A>(_:_:)();
  v49 = sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
  v50 = v108;
  QueryType.where(_:)();
  (*(v94 + 8))(v48, v96);
  v51 = v95;
  v52 = *(v95 + 8);
  v52(v38, v46);
  v106 = v46;
  v107 = v49;
  v53 = sub_100042BAC(&v104);
  (*(v51 + 16))(v53, v50, v46);
  v54 = v98;
  v55 = v99;
  Connection.pluck(_:)();
  if (v54)
  {
    v52(v50, v46);
    return sub_100026FDC(&v104);
  }

  v101 = 0;
  v98 = v52;
  sub_100026FDC(&v104);
  v58 = v90;
  v57 = v91;
  if ((*(v90 + 48))(v55, 1, v91) == 1)
  {
    sub_10002BA6C(v55, &qword_10016AD38, &qword_1001332F0);
LABEL_17:
    v59 = v98;
LABEL_18:
    *(swift_allocObject() + 16) = v86;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v60._countAndFlagsBits = 0xD000000000000021;
    v60._object = 0x800000010013A230;
    LogMessage.StringInterpolation.appendLiteral(_:)(v60);
    v106 = &type metadata for String;
    v104 = v102;
    v105 = v103;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v104, &qword_10016AB10, &unk_100130B10);
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v61);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

LABEL_19:
    v59(v108, v46);
    v62 = type metadata accessor for RateLimitInfo();
    return (*(*(v62 - 8) + 56))(v82, 1, 1, v62);
  }

  v63 = v80;
  (*(v58 + 32))(v80, v55, v57);
  v64 = v101;
  Row.get<A>(_:)();
  v101 = v64;
  if (v64)
  {
    (*(v58 + 8))(v63, v57);
    return (v98)(v50, v46);
  }

  else
  {
    if (v105)
    {
      (*(v58 + 8))(v63, v57);
      goto LABEL_17;
    }

    v65 = v104;
    v66 = v101;
    Row.get<A>(_:)();
    v101 = v66;
    if (v105 == 1)
    {
      (*(v58 + 8))(v80, v57);
      goto LABEL_17;
    }

    v67 = v104;
    Row.get<A>(_:)();
    v101 = 0;
    v59 = v98;
    if (v105)
    {
      (*(v58 + 8))(v80, v91);
      goto LABEL_18;
    }

    v68 = v104;
    *(swift_allocObject() + 16) = v86;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v69._object = 0x800000010013A260;
    v69._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v69);
    v106 = &type metadata for Int64;
    v103 = v67;
    v104 = v67;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v104, &qword_10016AB10, &unk_100130B10);
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v70);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    *(swift_allocObject() + 16) = v86;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v71._countAndFlagsBits = 0xD00000000000001BLL;
    v71._object = 0x800000010013A280;
    LogMessage.StringInterpolation.appendLiteral(_:)(v71);
    v106 = &type metadata for Double;
    v104 = v68;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v104, &qword_10016AB10, &unk_100130B10);
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v72);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    *(swift_allocObject() + 16) = v86;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v73._countAndFlagsBits = 0x20746E6572727543;
    v73._object = 0xEF203A79616C6564;
    LogMessage.StringInterpolation.appendLiteral(_:)(v73);
    v106 = &type metadata for Double;
    v104 = v65;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v104, &qword_10016AB10, &unk_100130B10);
    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v74);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    if (*&v68 > 9.22337204e18)
    {
      *(swift_allocObject() + 16) = v86;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v75._countAndFlagsBits = 0xD00000000000002BLL;
      v75._object = 0x800000010013A2A0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v75);
      v106 = &type metadata for Double;
      v104 = v68;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v104, &qword_10016AB10, &unk_100130B10);
      v76._countAndFlagsBits = 0;
      v76._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v76);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v58 + 8))(v80, v91);
      goto LABEL_19;
    }

    v77 = v82;
    MonotonicTime.init(timeInterval:)();
    (*(v58 + 8))(v80, v91);
    v59(v108, v46);
    v78 = type metadata accessor for RateLimitInfo();
    *(v77 + *(v78 + 20)) = v103;
    *(v77 + *(v78 + 24)) = v65;
    return (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  }
}

uint64_t sub_10003B500(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 104) = v3;
  *(v4 + 96) = a3;
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;
  v5 = type metadata accessor for Setter();
  *(v4 + 112) = v5;
  v6 = *(v5 - 8);
  *(v4 + 120) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v8 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  *(v4 + 136) = v8;
  v9 = *(v8 - 8);
  *(v4 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  v11 = type metadata accessor for Table();
  *(v4 + 160) = v11;
  v12 = *(v11 - 8);
  *(v4 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v14 = type metadata accessor for Update();
  *(v4 + 184) = v14;
  v15 = *(v14 - 8);
  *(v4 + 192) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_10003B6E8, v3, 0);
}

uint64_t sub_10003B6E8()
{
  v1 = v0[11];
  v2 = sub_100026F50((v0[13] + 152), *(v0[13] + 176));
  v3 = *v2;
  v0[26] = *v2;

  return _swift_task_switch(sub_10003B778, v3, 0);
}

uint64_t sub_10003B778()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  *v3 = v0;
  v3[1] = sub_10003B874;
  v4 = *(v0 + 208);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10003B874(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = v1;

  v7 = *(v3 + 208);
  if (v1)
  {
    v8 = sub_10003BE70;
  }

  else
  {
    v8 = sub_10003B9A8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10003B9A8()
{
  v1 = *(v0 + 208);
  v2 = *(v1 + 216);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v45 = *(v0 + 208);
    *(v1 + 216) = v4;
    if (qword_10016A2F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_10002FD14(*(v0 + 160), qword_1001732E8);
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v12, qword_100173318);
  *(v0 + 16) = v11;
  *(v0 + 24) = v10;
  static Expression<A>.== infix<A>(_:_:)();
  sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
  QueryType.where(_:)();
  (*(v8 + 8))(v6, v9);
  if (qword_10016A330 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  v15 = sub_100026F94(&qword_10016AE08, &qword_100130D18);
  sub_10002FD14(v15, qword_1001733A8);
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  <- infix<A>(_:_:)();
  sub_100026F94(&qword_10016ADE8, &qword_1001318A0);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v44 = *(v13 + 72);
  *(swift_allocObject() + 16) = xmmword_100130B20;
  if (qword_10016A340 != -1)
  {
    swift_once();
  }

  v17 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
  sub_10002FD14(v17, qword_1001733D8);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  <- infix<A>(_:_:)();
  if (qword_10016A338 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 224);
  v43 = *(v0 + 232);
  v18 = *(v0 + 200);
  v19 = *(v0 + 168);
  v20 = *(v0 + 176);
  v21 = *(v0 + 160);
  v23 = *(v0 + 120);
  v22 = *(v0 + 128);
  v41 = *(v0 + 112);
  v24 = *(v0 + 96);
  sub_10002FD14(v17, qword_1001733C0);
  *(v0 + 64) = v24;
  *(v0 + 72) = 0;
  <- infix<A>(_:_:)();
  QueryType.update(_:_:)();

  (*(v23 + 8))(v22, v41);
  (*(v19 + 8))(v20, v21);
  Connection.run(_:)();
  v25 = *(v0 + 224);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

  v27 = *(v45 + 216);
  v3 = __OFSUB__(v27, 1);
  v28 = v27 - 1;
  v29 = v3;
  if (!v43)
  {
    if ((v29 & 1) == 0)
    {
      v36 = *(v0 + 200);
      v37 = *(v0 + 176);
      v38 = *(v0 + 152);
      v39 = *(v0 + 128);
      v40 = *(v0 + 88);
      *(v45 + 216) = v28;

      v35 = *(v0 + 8);
      goto LABEL_19;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (v29)
  {
    __break(1u);
    goto LABEL_25;
  }

  v30 = *(v0 + 88);
  *(v45 + 216) = v28;

  v31 = *(v0 + 200);
  v32 = *(v0 + 176);
  v33 = *(v0 + 152);
  v34 = *(v0 + 128);

  v35 = *(v0 + 8);
LABEL_19:

  return v35();
}