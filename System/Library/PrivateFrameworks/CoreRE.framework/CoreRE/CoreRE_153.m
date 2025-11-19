uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::NonmanifoldFaceVertex *,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
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
        v70 = *v8;
        if ((*(a2 - 1) & 0xFFFFFFFu) < (*v8 & 0xFFFFFFFu))
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v70;
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
      v77 = v8 + 1;
      v78 = v8[1];
      v79 = v8 + 2;
      v80 = v8[2];
      v81 = v78 & 0xFFFFFFF;
      v82 = *v8;
      v83 = *v8 & 0xFFFFFFF;
      v84 = v80 & 0xFFFFFFF;
      if ((v78 & 0xFFFFFFF) >= v83)
      {
        if (v84 < v81)
        {
          v85 = v8;
          *v77 = v80;
          *v79 = v78;
          v86 = v8 + 1;
          v127 = v84 >= v83;
          LODWORD(v83) = v78 & 0xFFFFFFF;
          v84 = v78 & 0xFFFFFFF;
          if (!v127)
          {
            goto LABEL_190;
          }

LABEL_192:
          if ((*(a2 - 1) & 0xFFFFFFFu) < v84)
          {
            *v79 = *(a2 - 1);
            *(a2 - 1) = v78;
            v131 = *v79;
            v132 = *v77;
            if ((v131 & 0xFFFFFFF) < (v132 & 0xFFFFFFF))
            {
              v8[1] = v131;
              v8[2] = v132;
              v133 = *v8;
              if ((v131 & 0xFFFFFFF) < (*v8 & 0xFFFFFFFu))
              {
                *v8 = v131;
                v8[1] = v133;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v84 < v81)
        {
          v85 = v8;
          v86 = v8 + 2;
          v78 = *v8;
          goto LABEL_190;
        }

        *v8 = v78;
        v8[1] = v82;
        v85 = v8 + 1;
        v86 = v8 + 2;
        v78 = v82;
        if (v84 < v83)
        {
LABEL_190:
          *v85 = v80;
          *v86 = v82;
          v84 = v83;
          goto LABEL_192;
        }
      }

      v78 = v80;
      goto LABEL_192;
    }

    if (v9 == 5)
    {
    }

LABEL_10:
    if (v9 <= 23)
    {
      v87 = v8 + 1;
      v89 = v8 == a2 || v87 == a2;
      if (a4)
      {
        if (!v89)
        {
          v90 = 8;
          v91 = v8;
          do
          {
            v93 = *v91;
            v92 = v91[1];
            v91 = v87;
            if ((v92 & 0xFFFFFFF) < (v93 & 0xFFFFFFF))
            {
              v94 = v90;
              while (1)
              {
                *(v8 + v94) = v93;
                v95 = v94 - 8;
                if (v94 == 8)
                {
                  break;
                }

                v93 = *(v8 + v94 - 16);
                v94 -= 8;
                if ((v92 & 0xFFFFFFF) >= (v93 & 0xFFFFFFF))
                {
                  v96 = (v8 + v95);
                  goto LABEL_129;
                }
              }

              v96 = v8;
LABEL_129:
              *v96 = v92;
            }

            v87 = v91 + 1;
            v90 += 8;
          }

          while (v91 + 1 != a2);
        }
      }

      else if (!v89)
      {
        do
        {
          v129 = *v7;
          v128 = v7[1];
          v7 = v87;
          if ((v128 & 0xFFFFFFF) < (v129 & 0xFFFFFFF))
          {
            v130 = v87;
            do
            {
              *v130 = v129;
              v129 = *(v130 - 2);
              --v130;
            }

            while ((v128 & 0xFFFFFFF) < (v129 & 0xFFFFFFF));
            *v130 = v128;
          }

          ++v87;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v97 = (v9 - 2) >> 1;
        v98 = v97;
        do
        {
          v99 = v98;
          if (v97 >= v98)
          {
            v100 = (2 * v98) | 1;
            v101 = &v8[v100];
            if (2 * v99 + 2 >= v9)
            {
              v102 = *v101;
            }

            else
            {
              v102 = v101[1];
              v103 = *v101 & 0xFFFFFFF;
              result = v102 & 0xFFFFFFF;
              if (v103 < (v102 & 0xFFFFFFF))
              {
                ++v101;
              }

              else
              {
                v102 = *v101;
              }

              if (v103 < result)
              {
                v100 = 2 * v99 + 2;
              }
            }

            v104 = &v8[v99];
            v105 = *v104;
            v106 = *v104 & 0xFFFFFFF;
            if ((v102 & 0xFFFFFFF) >= v106)
            {
              do
              {
                *v104 = v102;
                v104 = v101;
                if (v97 < v100)
                {
                  break;
                }

                v107 = (2 * v100) | 1;
                v101 = &v8[v107];
                v100 = 2 * v100 + 2;
                if (v100 >= v9)
                {
                  v102 = *v101;
                  v100 = v107;
                }

                else
                {
                  v102 = *v101;
                  result = (v101 + 1);
                  if ((*v101 & 0xFFFFFFFu) >= (v101[1] & 0xFFFFFFFu))
                  {
                    v100 = v107;
                  }

                  else
                  {
                    v102 = v101[1];
                    ++v101;
                  }
                }
              }

              while ((v102 & 0xFFFFFFF) >= v106);
              *v104 = v105;
            }
          }

          v98 = v99 - 1;
        }

        while (v99);
        do
        {
          v108 = 0;
          v109 = *v8;
          v110 = v8;
          do
          {
            v111 = &v110[v108];
            v112 = v111 + 1;
            v113 = (2 * v108) | 1;
            v108 = 2 * v108 + 2;
            if (v108 >= v9)
            {
              v115 = *v112;
              v108 = v113;
            }

            else
            {
              v116 = v111[2];
              v114 = v111 + 2;
              v115 = v116;
              result = *(v114 - 1) & 0xFFFFFFF;
              v117 = v116 & 0xFFFFFFF;
              if (result < (v116 & 0xFFFFFFF))
              {
                v112 = v114;
              }

              else
              {
                v115 = *(v114 - 1);
              }

              if (result >= v117)
              {
                v108 = v113;
              }
            }

            *v110 = v115;
            v110 = v112;
          }

          while (v108 <= ((v9 - 2) >> 1));
          if (v112 == --a2)
          {
            *v112 = v109;
          }

          else
          {
            *v112 = *a2;
            *a2 = v109;
            v118 = (v112 - v8 + 8) >> 3;
            v119 = v118 < 2;
            v120 = v118 - 2;
            if (!v119)
            {
              v121 = v120 >> 1;
              v122 = &v8[v121];
              v123 = *v122;
              v124 = *v112;
              v125 = *v112 & 0xFFFFFFF;
              if ((*v122 & 0xFFFFFFFu) < v125)
              {
                do
                {
                  *v112 = v123;
                  v112 = v122;
                  if (!v121)
                  {
                    break;
                  }

                  v121 = (v121 - 1) >> 1;
                  v122 = &v8[v121];
                  v123 = *v122;
                }

                while ((*v122 & 0xFFFFFFFu) < v125);
                *v112 = v124;
              }
            }
          }

          v119 = v9-- <= 2;
        }

        while (!v119);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = v12 & 0xFFFFFFF;
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v10 & 0xFFFFFFF;
      v16 = *v8;
      v17 = *v8 & 0xFFFFFFF;
      if (v15 >= v17)
      {
        if (v13 < v15)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if ((*v10 & 0xFFFFFFFu) < (*v8 & 0xFFFFFFFu))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v15)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v16;
        if ((*(a2 - 1) & 0xFFFFFFFu) < v17)
        {
          *v10 = *(a2 - 1);
LABEL_27:
          *(a2 - 1) = v16;
        }
      }

      v24 = v10 - 1;
      v25 = *(v10 - 1);
      v26 = v25 & 0xFFFFFFF;
      v27 = v8[1];
      v28 = *(a2 - 2);
      v29 = v28 & 0xFFFFFFF;
      if ((v25 & 0xFFFFFFF) >= (v27 & 0xFFFFFFF))
      {
        if (v29 < v26)
        {
          *v24 = v28;
          *(a2 - 2) = v25;
          v30 = v8[1];
          if ((*v24 & 0xFFFFFFFu) < (v8[1] & 0xFFFFFFFu))
          {
            v8[1] = *v24;
            *v24 = v30;
          }
        }
      }

      else
      {
        if (v29 < v26)
        {
          v8[1] = v28;
          goto LABEL_39;
        }

        v8[1] = v25;
        *v24 = v27;
        if ((*(a2 - 2) & 0xFFFFFFFu) < (v27 & 0xFFFFFFF))
        {
          *v24 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v33 = v10[1];
      v31 = v10 + 1;
      v32 = v33;
      v34 = v33 & 0xFFFFFFF;
      v35 = v8[2];
      v36 = *(a2 - 3);
      v37 = v36 & 0xFFFFFFF;
      if ((v33 & 0xFFFFFFF) >= (v35 & 0xFFFFFFF))
      {
        if (v37 < v34)
        {
          *v31 = v36;
          *(a2 - 3) = v32;
          v38 = v8[2];
          if ((*v31 & 0xFFFFFFFu) < (v8[2] & 0xFFFFFFFu))
          {
            v8[2] = *v31;
            *v31 = v38;
          }
        }
      }

      else
      {
        if (v37 < v34)
        {
          v8[2] = v36;
          goto LABEL_48;
        }

        v8[2] = v32;
        *v31 = v35;
        if ((*(a2 - 3) & 0xFFFFFFFu) < (v35 & 0xFFFFFFF))
        {
          *v31 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v35;
        }
      }

      v39 = *v11;
      v40 = *v11 & 0xFFFFFFF;
      v41 = *v24;
      v42 = *v24 & 0xFFFFFFF;
      v43 = *v31;
      v44 = *v31 & 0xFFFFFFF;
      if (v40 >= v42)
      {
        if (v44 >= v40)
        {
          goto LABEL_56;
        }

        *v11 = v43;
        *v31 = v39;
        v31 = v11;
        v39 = v41;
        if (v44 >= v42)
        {
          v39 = v43;
          goto LABEL_56;
        }
      }

      else if (v44 >= v40)
      {
        *v24 = v39;
        *v11 = v41;
        v24 = v11;
        v39 = v43;
        if (v44 >= v42)
        {
          v39 = v41;
LABEL_56:
          v45 = *v8;
          *v8 = v39;
          *v11 = v45;
          goto LABEL_57;
        }
      }

      *v24 = v43;
      *v31 = v41;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v8 & 0xFFFFFFF;
    v20 = *v11;
    v21 = *v11 & 0xFFFFFFF;
    if (v19 >= v21)
    {
      if (v13 < v19)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if ((*v8 & 0xFFFFFFFu) < (*v11 & 0xFFFFFFFu))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v19)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v20;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v20;
    if ((*(a2 - 1) & 0xFFFFFFFu) < v21)
    {
      *v8 = *(a2 - 1);
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v46 = *v8;
    if (a4)
    {
      v47 = v46 & 0xFFFFFFF;
LABEL_60:
      v48 = 0;
      do
      {
        v49 = v8[++v48];
      }

      while ((v49 & 0xFFFFFFF) < v47);
      v50 = &v8[v48];
      v51 = a2;
      if (v48 == 1)
      {
        v51 = a2;
        do
        {
          if (v50 >= v51)
          {
            break;
          }

          v53 = *(v51-- - 2);
        }

        while ((v53 & 0xFFFFFFFu) >= v47);
      }

      else
      {
        do
        {
          v52 = *(v51-- - 2);
        }

        while ((v52 & 0xFFFFFFFu) >= v47);
      }

      if (v50 >= v51)
      {
        v59 = v50 - 1;
      }

      else
      {
        v54 = *v51;
        v55 = &v8[v48];
        v56 = v51;
        do
        {
          *v55 = v54;
          *v56 = v49;
          do
          {
            v57 = v55[1];
            ++v55;
            v49 = v57;
          }

          while ((v57 & 0xFFFFFFF) < v47);
          do
          {
            v58 = *--v56;
            v54 = v58;
          }

          while ((v58 & 0xFFFFFFF) >= v47);
        }

        while (v55 < v56);
        v59 = v55 - 1;
      }

      if (v59 != v8)
      {
        *v8 = *v59;
      }

      *v59 = v46;
      if (v50 < v51)
      {
        goto LABEL_81;
      }

      v8 = v59 + 1;
      if (result)
      {
        a2 = v59;
        if (!v60)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v60)
      {
LABEL_81:
        a4 = 0;
        v8 = v59 + 1;
      }
    }

    else
    {
      v47 = v46 & 0xFFFFFFF;
      if ((*(v8 - 1) & 0xFFFFFFFu) < (v46 & 0xFFFFFFF))
      {
        goto LABEL_60;
      }

      if (v47 >= (*(a2 - 1) & 0xFFFFFFFu))
      {
        v62 = v8 + 1;
        do
        {
          v8 = v62;
          if (v62 >= a2)
          {
            break;
          }

          ++v62;
        }

        while (v47 >= (*v8 & 0xFFFFFFFu));
      }

      else
      {
        do
        {
          v61 = *(v8++ + 2);
        }

        while (v47 >= (v61 & 0xFFFFFFFu));
      }

      v63 = a2;
      if (v8 < a2)
      {
        v63 = a2;
        do
        {
          v64 = *(v63-- - 2);
        }

        while (v47 < (v64 & 0xFFFFFFFu));
      }

      if (v8 < v63)
      {
        v65 = *v8;
        v66 = *v63;
        do
        {
          *v8 = v66;
          *v63 = v65;
          do
          {
            v67 = v8[1];
            ++v8;
            v65 = v67;
          }

          while (v47 >= (v67 & 0xFFFFFFF));
          do
          {
            v68 = *--v63;
            v66 = v68;
          }

          while (v47 < (v68 & 0xFFFFFFF));
        }

        while (v8 < v63);
      }

      v69 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v69;
      }

      a4 = 0;
      *v69 = v46;
    }
  }

  v71 = *v8;
  v72 = v8[1];
  v73 = v72 & 0xFFFFFFF;
  v74 = *v8 & 0xFFFFFFF;
  v75 = *(a2 - 1);
  v76 = v75 & 0xFFFFFFF;
  if ((v72 & 0xFFFFFFF) >= v74)
  {
    if (v76 < v73)
    {
      v8[1] = v75;
      *(a2 - 1) = v72;
      v126 = *v8;
      if ((v8[1] & 0xFFFFFFFu) < (*v8 & 0xFFFFFFFu))
      {
        *v8 = v8[1];
        v8[1] = v126;
      }
    }
  }

  else
  {
    if (v76 >= v73)
    {
      *v8 = v72;
      v8[1] = v71;
      if ((*(a2 - 1) & 0xFFFFFFFu) >= v74)
      {
        return result;
      }

      v8[1] = *(a2 - 1);
    }

    else
    {
      *v8 = v75;
    }

    *(a2 - 1) = v71;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::NonmanifoldFaceVertex *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a2 & 0xFFFFFFF;
  v7 = *result;
  v8 = *result & 0xFFFFFFF;
  v9 = *a3;
  v10 = *a3 & 0xFFFFFFF;
  if (v6 >= v8)
  {
    if (v10 >= v6)
    {
      v8 = *a3 & 0xFFFFFFF;
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      LODWORD(v8) = v6;
      if ((*a2 & 0xFFFFFFFu) < (*result & 0xFFFFFFFu))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
        v8 = *a3 & 0xFFFFFFF;
      }
    }
  }

  else
  {
    if (v10 >= v6)
    {
      *result = v5;
      *a2 = v7;
      v5 = *a3;
      if ((*a3 & 0xFFFFFFFu) >= v8)
      {
        v8 = *a3 & 0xFFFFFFF;
        goto LABEL_12;
      }

      *a2 = v5;
    }

    else
    {
      *result = v9;
    }

    *a3 = v7;
    v5 = v7;
  }

LABEL_12:
  if ((*a4 & 0xFFFFFFFu) < v8)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if ((*a3 & 0xFFFFFFFu) < (*a2 & 0xFFFFFFFu))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if ((*a2 & 0xFFFFFFFu) < (*result & 0xFFFFFFFu))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if ((*a5 & 0xFFFFFFFu) < (*a4 & 0xFFFFFFFu))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if ((*a4 & 0xFFFFFFFu) < (*a3 & 0xFFFFFFFu))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if ((*a3 & 0xFFFFFFFu) < (*a2 & 0xFFFFFFFu))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if ((*a2 & 0xFFFFFFFu) < (*result & 0xFFFFFFFu))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::NonmanifoldFaceVertex *>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *a1;
      v5 = a1[1];
      v6 = v5 & 0xFFFFFFF;
      v7 = *a1 & 0xFFFFFFF;
      v8 = *(a2 - 1);
      v9 = v8 & 0xFFFFFFF;
      if ((v5 & 0xFFFFFFF) >= v7)
      {
        if (v9 < v6)
        {
          a1[1] = v8;
          *(a2 - 1) = v5;
          v29 = *a1;
          if ((a1[1] & 0xFFFFFFFu) < (*a1 & 0xFFFFFFFu))
          {
            *a1 = a1[1];
            a1[1] = v29;
          }
        }

        return 1;
      }

      if (v9 >= v6)
      {
        *a1 = v5;
        a1[1] = v4;
        if ((*(a2 - 1) & 0xFFFFFFFu) >= v7)
        {
          return 1;
        }

        a1[1] = *(a2 - 1);
      }

      else
      {
        *a1 = v8;
      }

      *(a2 - 1) = v4;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }

    v19 = a1 + 1;
    v20 = a1[1];
    v21 = a1 + 2;
    v22 = a1[2];
    v23 = v20 & 0xFFFFFFF;
    v24 = *a1;
    v25 = *a1 & 0xFFFFFFF;
    v26 = v22 & 0xFFFFFFF;
    if ((v20 & 0xFFFFFFF) >= v25)
    {
      if (v26 < v23)
      {
        v27 = a1;
        *v19 = v22;
        *v21 = v20;
        v28 = a1 + 1;
        v39 = v26 >= v25;
        LODWORD(v25) = v20 & 0xFFFFFFF;
        v26 = v20 & 0xFFFFFFF;
        if (v39)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (v26 < v23)
      {
        v27 = a1;
        v28 = a1 + 2;
        v20 = *a1;
LABEL_45:
        *v27 = v22;
        *v28 = v24;
        v26 = v25;
LABEL_47:
        if ((*(a2 - 1) & 0xFFFFFFFu) < v26)
        {
          *v21 = *(a2 - 1);
          *(a2 - 1) = v20;
          v40 = *v21;
          v41 = *v19;
          if ((v40 & 0xFFFFFFF) < (v41 & 0xFFFFFFF))
          {
            a1[1] = v40;
            a1[2] = v41;
            v42 = *a1;
            if ((v40 & 0xFFFFFFF) < (*a1 & 0xFFFFFFFu))
            {
              *a1 = v40;
              a1[1] = v42;
            }
          }
        }

        return 1;
      }

      *a1 = v20;
      a1[1] = v24;
      v27 = a1 + 1;
      v28 = a1 + 2;
      v20 = v24;
      if (v26 < v25)
      {
        goto LABEL_45;
      }
    }

    v20 = v22;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *a1;
    if ((*(a2 - 1) & 0xFFFFFFFu) < (*a1 & 0xFFFFFFFu))
    {
      *a1 = *(a2 - 1);
      *(a2 - 1) = v3;
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 2;
  v10 = a1[2];
  v12 = a1[1];
  v13 = v12 & 0xFFFFFFF;
  v14 = *a1;
  v15 = *a1 & 0xFFFFFFF;
  v16 = v10 & 0xFFFFFFF;
  if ((v12 & 0xFFFFFFF) >= v15)
  {
    if (v16 >= v13)
    {
      goto LABEL_26;
    }

    a1[1] = v10;
    *v11 = v12;
    v17 = a1;
    v18 = a1 + 1;
LABEL_24:
    if (v16 >= v15)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v17 = a1;
  v18 = a1 + 2;
  if (v16 >= v13)
  {
    *a1 = v12;
    a1[1] = v14;
    v17 = a1 + 1;
    v18 = a1 + 2;
    goto LABEL_24;
  }

LABEL_25:
  *v17 = v10;
  *v18 = v14;
LABEL_26:
  v30 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v31 = 0;
  for (i = 24; ; i += 8)
  {
    v33 = *v30;
    v34 = *v30 & 0xFFFFFFF;
    v35 = *v11;
    if (v34 < (v35 & 0xFFFFFFF))
    {
      v36 = i;
      while (1)
      {
        *(a1 + v36) = v35;
        v37 = v36 - 8;
        if (v36 == 8)
        {
          break;
        }

        v35 = *(a1 + v36 - 16);
        v36 -= 8;
        if (v34 >= (v35 & 0xFFFFFFF))
        {
          v38 = (a1 + v37);
          goto LABEL_34;
        }
      }

      v38 = a1;
LABEL_34:
      *v38 = v33;
      if (++v31 == 8)
      {
        break;
      }
    }

    v11 = v30++;
    if (v30 == a2)
    {
      return 1;
    }
  }

  return v30 + 1 == a2;
}

re::GeomMesh *re::internal::removeSmallAndThinFeatures(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  v203 = *MEMORY[0x1E69E9840];
  if (!v1[10])
  {

    return re::GeomMesh::GeomMesh(v3, 0);
  }

  v6 = v2;
  v7 = v1;
  v115 = v3;
  v116 = *(v2 + 24);
  v8 = &v151;
  bzero(&v151, 0x2D0uLL);
  v10 = v6;
  re::DynamicArray<re::BlendNode>::setCapacity(&v153, 1uLL);
  ++v154;
  re::internal::GeomAttributeManager::GeomAttributeManager(v156);
  re::internal::GeomAttributeManager::addAttribute(v156, "vertexPosition", 1, 7);
  v148 = v7;
  v149 = re::GeomMesh::accessVertexPositions(v7);
  v150 = v11;
  v147 = 0;
  v144 = 0;
  memset(v145, 0, sizeof(v145));
  v146 = 0;
  memset(v142, 0, sizeof(v142));
  v143 = 0;
  re::DynamicArray<BOOL>::resize(v145, *(v7 + 16));
  v135[0] = 0;
  v135[1] = 0;
  v136 = 0;
  v141 = 0;
  v138 = 0u;
  v139 = 0u;
  v137 = 0;
  v140 = 0;
  re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(v135, v7);
  v134[0] = v145;
  v134[1] = v7;
  v134[2] = v142;
  v134[3] = &v148;
  v12 = *v6;
  v13 = v6[1];
  v133 = 0;
  v130[1] = 0;
  v131 = 0;
  v130[0] = 0;
  v132 = 0;
  LOBYTE(v183) = 1;
  v117 = v136;
  re::DynamicArray<BOOL>::resize(v130, v136, &v183);
  v15 = v148;
  v14 = v149;
  v16 = v150;
  v129 = 0;
  v126[1] = 0;
  v127 = 0;
  v126[0] = 0;
  v128 = 0;
  LOBYTE(v183) = 5;
  v120 = v136;
  re::DynamicArray<unsigned char>::resize(v126, v136, &v183);
  v118 = v10;
  v119 = v7;
  if (!*(v10 + 20))
  {
    goto LABEL_101;
  }

  re::GeomMesh::GeomMesh(&v183, 0);
  v17 = v7;
  if (*(v5 + 10))
  {
    bzero(v164, 0x2D0uLL);
    re::DynamicArray<re::BlendNode>::setCapacity(&v164[16], 1uLL);
    LODWORD(v165) = v165 + 1;
    re::internal::GeomAttributeManager::GeomAttributeManager(&v167);
    re::internal::GeomAttributeManager::addAttribute(&v167, "vertexPosition", 1, 7);
    re::GeomMeshBuilder::appendMesh(v164, v7);
    re::GeomMeshBuilder::appendMesh(v164, v5);
    re::GeomMesh::operator=(&v183, &v164[8]);
    re::GeomMesh::setName(&v183, *v164);
    re::GeomMesh::freeName(v164);
    re::GeomMesh::freeName(v164);
    re::internal::GeomAttributeManager::~GeomAttributeManager(&v167);
    if (*&v164[16] && v166)
    {
      (*(**&v164[16] + 40))();
    }

    if (*(v5 + 10))
    {
      v17 = &v183;
    }

    else
    {
      v17 = v7;
    }
  }

  re::computeOrientedBoundingBox(v17, v164);
  v19 = vmulq_f32(*v164, *v164);
  v20 = vmulq_f32(*&v164[16], *&v164[16]);
  v21 = (sqrtf(vaddv_f32(vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)))) * 0.25) * sqrtf(vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL))));
  if (*(v10 + 12) >= v21)
  {
    v22 = *(v10 + 12);
  }

  else
  {
    v22 = v21;
  }

  re::computeAABB(v17, v164);
  v23 = vsubq_f32(*&v164[16], *v164);
  v23.i32[3] = 0;
  _Q0 = vmaxnmq_f32(v23, 0);
  v25 = *(v10 + 12);
  _S4 = 0.75;
  __asm { FMLA            S5, S4, V0.S[1] }

  if (vmuls_lane_f32(_Q0.f32[0], _Q0, 2) >= v25)
  {
    v32 = _S5;
  }

  else
  {
    v32 = *&v164[4];
  }

  re::internal::PlaneDetector::build(v17, *(v10 + 16) | (LODWORD(v25) << 32), *(v10 + 20), v164);
  re::GeomMesh::~GeomMesh(&v183);
  *&v162[2] = 0;
  memset(v160, 0, sizeof(v160));
  v180.i8[0] = 0;
  v33 = v172;
  if (v172)
  {
    v114 = v12;
    v7 = 0;
    v10 = &v188;
    v34 = -1;
    v35 = -INFINITY;
    v36 = 48;
    do
    {
      v37 = v7;
      if (v33 <= v7)
      {
        goto LABEL_217;
      }

      v38 = v174 + 16 * v7;
      v39 = *(v38 + 4);
      if (v39 >= 0.0)
      {
        v40 = 1.0;
      }

      else
      {
        v40 = -1.0;
      }

      if ((v40 * v39) >= 0.99619)
      {
        v41 = *(v38 + 12);
        re::DynamicArray<unsigned char>::add(v160, &v180);
        v7 = v180.u8[0];
        v33 = v177;
        if (v177 <= v180.u8[0])
        {
          goto LABEL_220;
        }

        v42 = (v179 + 48 * v180.u8[0]);
        v43 = vmulq_f32(*v42, *v42);
        v44 = vmulq_f32(v42[1], v42[1]);
        *v43.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&vextq_s8(v44, v44, 8uLL)), vadd_f32(vzip1_s32(*v43.i8, *v44.i8), vzip2_s32(*v43.i8, *v44.i8))));
        if (vmul_lane_f32(*v43.i8, *v43.i8, 1).f32[0] > v22 && -(v40 * v41) > v35 && -(v40 * v41) > v32)
        {
          v34 = v180.i8[0];
          v35 = -(v40 * v41);
        }
      }

      v7 = (v7 + 1);
      v180.i8[0] = v7;
      v33 = v172;
    }

    while (v172 > v7);
    v45 = *&v162[2];
    v37 = *&v160[16];
    if (v34 == -1)
    {
      v8 = &v151;
      v7 = v119;
      v12 = v114;
    }

    else
    {
      v46 = memchr(*&v162[2], v34, *&v160[16]);
      v7 = v119;
      v12 = v114;
      if (v46)
      {
        v47 = v45 + v37;
        v8 = &v151;
        if (v46 != (v45 + v37))
        {
          v36 = &v46[-v45];
          if (v37 <= &v46[-v45])
          {
            goto LABEL_226;
          }

          if (--v37 > v36)
          {
            *v46 = *(v47 - 1);
            v45 = *&v162[2];
            v37 = *&v160[16] - 1;
          }

          *&v160[16] = v37;
          ++*&v160[24];
        }
      }

      else
      {
        v8 = &v151;
      }
    }
  }

  else
  {
    v37 = 0;
    v45 = 0;
  }

  re::internal::PlaneDetector::removePlaneSubset(v164, v45, v37);
  v193 = 0;
  v190 = 0;
  v188 = 0;
  v189 = 0;
  v191 = 0;
  if (!v120)
  {
    goto LABEL_83;
  }

  v37 = 0;
  v7 = 3;
  v10 = &v180;
  while (1)
  {
    re::internal::ExtractMeshConnectedComponents::facesInComponent(v135, v37, &v188);
    if (v190)
    {
      v50 = v193;
      v36 = v167;
      v8 = *&v164[16];
      v51 = 4 * v190;
      v52 = 0.0;
      v53 = 0.0;
      v54 = v193;
      do
      {
        v33 = *v54;
        if (v167 <= v33)
        {
          goto LABEL_212;
        }

        if (*&v164[16] <= v33)
        {
          goto LABEL_213;
        }

        v55 = *(v169 + 4 * v33);
        if (*(*&v164[32] + v33) != 255)
        {
          v53 = v53 + v55;
        }

        v52 = v52 + v55;
        ++v54;
        v51 -= 4;
      }

      while (v51);
      if (v52 > 0.0 && (v53 / v52) > 0.5)
      {
        v36 = v127;
        if (v127 <= v37)
        {
          goto LABEL_225;
        }

        goto LABEL_53;
      }

      v57 = 0;
      v36 = *(v15 + 40);
      v56 = 0uLL;
      do
      {
        v33 = *v50;
        if (v36 <= v33)
        {
          goto LABEL_216;
        }

        v58 = 0;
        v180 = *(*(v15 + 56) + 16 * v33);
        if (v180.i32[3] == -1)
        {
          v59 = 3;
        }

        else
        {
          v59 = 4;
        }

        do
        {
          v33 = v180.u32[v58];
          if (v16 <= v33)
          {
            goto LABEL_79;
          }

          v56 = vaddq_f32(v56, *(v14 + 16 * v33));
          ++v58;
        }

        while (v59 != v58);
        v57 += v59;
        ++v50;
      }

      while (v50 != &v193[v190]);
      if (v57)
      {
        v56 = vmulq_n_f32(v56, 1.0 / v57);
      }
    }

    else
    {
      v56 = 0uLL;
    }

    v8 = v172;
    if (!v172)
    {
      goto LABEL_74;
    }

    v60 = 0;
    v61 = v56;
    v61.i32[3] = 1.0;
    v36 = v177;
    while (1)
    {
      if (v60 == 256)
      {
        goto LABEL_214;
      }

      v33 = v60;
      if (v172 <= v60)
      {
        goto LABEL_215;
      }

      v62 = vmulq_f32(v61, *(v174 + 16 * v60));
      *v62.i8 = vadd_f32(*v62.i8, *&vextq_s8(v62, v62, 8uLL));
      *v62.i8 = vadd_f32(*v62.i8, vdup_lane_s32(*v62.i8, 1));
      if (vmul_f32(*v62.i8, *v62.i8).f32[0] <= (v118[4] * v118[4]))
      {
        if (v177 <= v60)
        {
          goto LABEL_219;
        }

        v63 = (v179 + 48 * v60);
        v64 = vsubq_f32(v56, v63[2]);
        v65 = vmulq_f32(*v63, v64);
        v66 = vmulq_f32(*v63, *v63);
        if (fabsf(v65.f32[2] + vaddv_f32(*v65.f32)) <= (v66.f32[2] + vaddv_f32(*v66.f32)))
        {
          v67 = v63[1];
          v68 = vmulq_f32(v64, v67);
          v69 = vmulq_f32(v67, v67);
          if (fabsf(v68.f32[2] + vaddv_f32(*v68.f32)) <= (v69.f32[2] + vaddv_f32(*v69.f32)))
          {
            break;
          }
        }
      }

      if (v172 == ++v60)
      {
        goto LABEL_74;
      }
    }

    if (v60 == 255)
    {
      goto LABEL_74;
    }

    v70 = v127;
    if (v127 <= v37)
    {
      break;
    }

LABEL_53:
    *(v129 + v37) = 2;
LABEL_74:
    if (++v37 == v120)
    {
      goto LABEL_80;
    }
  }

  v180.i64[0] = 0;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v197 = 136315906;
  *&v197[4] = "operator[]";
  *&v197[12] = 1024;
  *&v197[14] = 789;
  *&v197[18] = 2048;
  *&v197[20] = v37;
  v198 = 2048;
  *v199 = v70;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_79:
  v122[0] = 0;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v197 = 136315906;
  *&v197[4] = "operator[]";
  *&v197[12] = 1024;
  *&v197[14] = 613;
  *&v197[18] = 2048;
  *&v197[20] = v33;
  v198 = 2048;
  *v199 = v16;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_80:
  v8 = &v151;
  v7 = v119;
  if (v188 && v193)
  {
    (*(*v188 + 40))(v188, v193);
  }

LABEL_83:
  if (*v160 && *&v162[2])
  {
    (*(**v160 + 40))(*v160, *&v162[2]);
  }

  if (v175)
  {
    if (v179)
    {
      (*(*v175 + 40))(v175, v179);
    }

    v179 = 0;
    v176 = 0;
    v177 = 0;
    v175 = 0;
    ++v178;
  }

  if (v170)
  {
    if (v174)
    {
      (*(*v170 + 40))(v170, v174);
    }

    v174 = 0;
    v171 = 0;
    v172 = 0;
    v170 = 0;
    ++v173;
  }

  if (v165)
  {
    if (v169)
    {
      (*(*v165 + 40))(v165, v169);
    }

    v169 = 0;
    v166 = 0;
    v167 = 0;
    v165 = 0;
    ++v168;
  }

  if (*v164 && *&v164[32])
  {
    (*(**v164 + 40))(*v164, *&v164[32]);
  }

LABEL_101:
  v33 = v116;
  v71 = v117;
  if (!v117)
  {
    goto LABEL_186;
  }

  v7 = 0;
  v72 = 0;
  v37 = v160;
  do
  {
    v125 = 0;
    v122[1] = 0;
    v123 = 0;
    v122[0] = 0;
    v124 = 0;
    re::internal::ExtractMeshConnectedComponents::facesInComponent(v135, v7, v122);
    v36 = v127;
    if (v127 <= v7)
    {
      goto LABEL_218;
    }

    v73 = *(v129 + v7);
    if ((v73 & 1) != 0 && re::internal::removeSmallAndThinFeatures(re::GeomMesh const&,re::GeomMesh const&,re::internal::RemoveThinFeatureOptions const&)::$_0::operator()(v134, v125, v123, v13, v13 * v13))
    {
      goto LABEL_170;
    }

    if ((v73 & 2) != 0)
    {
      v74 = re::internal::removeSmallAndThinFeatures(re::GeomMesh const&,re::GeomMesh const&,re::internal::RemoveThinFeatureOptions const&)::$_0::operator()(v134, v125, v123, v12, v12 * v12);
      if ((v73 & 4) == 0 || v74)
      {
        if (v74)
        {
          goto LABEL_170;
        }

        goto LABEL_172;
      }
    }

    else if ((v73 & 4) == 0)
    {
      goto LABEL_172;
    }

    v75 = v125;
    v76 = v123;
    v157 = -1;
    if (v33 && !re::internal::ExtractMeshConnectedComponents::componentHasOneMaterial(v135, v7, v119, v33, &v157))
    {
      goto LABEL_150;
    }

    v77 = *v118;
    v78 = re::GeomMesh::accessVertexPositions(v119);
    if (!v76)
    {
      goto LABEL_150;
    }

    v80 = v79;
    v36 = *(v119 + 5);
    v81 = *(v119 + 7);
    v82 = v75;
LABEL_115:
    v33 = *v82;
    if (v36 <= v33)
    {
      goto LABEL_224;
    }

    v83 = 0;
    *v160 = *(v81 + 16 * v33);
    v84 = 3;
    if (*&v160[12] != -1)
    {
      v84 = 4;
    }

    while (1)
    {
      if (v84 - 1 == v83)
      {
        v85 = 0;
      }

      else
      {
        v85 = v83 + 1;
      }

      v33 = *&v160[4 * v85];
      if (v33 >= v79)
      {
        v188 = 0;
        v187 = 0u;
        v186 = 0u;
        v185 = 0u;
        v184 = 0u;
        v183 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 613;
        *&v164[18] = 2048;
        *&v164[20] = v33;
        *&v164[28] = 2048;
        *&v164[30] = v80;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_211:
        v188 = 0;
        v187 = 0u;
        v186 = 0u;
        v185 = 0u;
        v184 = 0u;
        v183 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 613;
        *&v164[18] = 2048;
        *&v164[20] = v10;
        *&v164[28] = 2048;
        *&v164[30] = v80;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_212:
        v180.i64[0] = 0;
        v187 = 0u;
        v186 = 0u;
        v185 = 0u;
        v184 = 0u;
        v183 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        *&v197[14] = 797;
        *&v197[18] = 2048;
        *&v197[20] = v33;
        v198 = 2048;
        *v199 = v36;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_213:
        v180.i64[0] = 0;
        v187 = 0u;
        v186 = 0u;
        v185 = 0u;
        v184 = 0u;
        v183 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        *&v197[14] = 797;
        *&v197[18] = 2048;
        *&v197[20] = v33;
        v198 = 2048;
        *v199 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_214:
        re::internal::assertLog(5, v49, "assertion failure: '%s' (%s:line %i) planeIndex (%zu) is too large for unsigned 8-bit integer.", "!overflow", "findPlaneNearPoint", 133, v60);
        _os_crash();
        __break(1u);
LABEL_215:
        v180.i64[0] = 0;
        v187 = 0u;
        v186 = 0u;
        v185 = 0u;
        v184 = 0u;
        v183 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        *&v197[14] = 797;
        *&v197[18] = 2048;
        *&v197[20] = v33;
        v198 = 2048;
        *v199 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_216:
        v180.i64[0] = 0;
        v187 = 0u;
        v186 = 0u;
        v185 = 0u;
        v184 = 0u;
        v183 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        *&v197[14] = 797;
        *&v197[18] = 2048;
        *&v197[20] = v33;
        v198 = 2048;
        *v199 = v36;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_217:
        *v197 = 0;
        v187 = 0u;
        v186 = 0u;
        v185 = 0u;
        v184 = 0u;
        v183 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v188) = 136315906;
        *(v10 + 4) = "operator[]";
        WORD2(v189) = 1024;
        *(v10 + 14) = 797;
        WORD1(v190) = 2048;
        *(v10 + 20) = v37;
        v192 = 2048;
        *(v10 + 30) = v33;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_218:
        *v160 = 0;
        v187 = 0u;
        v186 = 0u;
        v185 = 0u;
        v184 = 0u;
        v183 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 789;
        *&v164[18] = 2048;
        *&v164[20] = v7;
        *&v164[28] = 2048;
        *&v164[30] = v36;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_219:
        v180.i64[0] = 0;
        v187 = 0u;
        v186 = 0u;
        v185 = 0u;
        v184 = 0u;
        v183 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        *&v197[14] = 797;
        *&v197[18] = 2048;
        *&v197[20] = v33;
        v198 = 2048;
        *v199 = v36;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_220:
        *v197 = 0;
        v187 = 0u;
        v186 = 0u;
        v185 = 0u;
        v184 = 0u;
        v183 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v188) = 136315906;
        *(v10 + 4) = "operator[]";
        WORD2(v189) = 1024;
        *(v10 + 14) = 797;
        WORD1(v190) = 2048;
        *(v10 + 20) = v7;
        v192 = 2048;
        *(v10 + 30) = v33;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_221:
        *v160 = 0;
        v187 = 0u;
        v186 = 0u;
        v185 = 0u;
        v184 = 0u;
        v183 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 789;
        *&v164[18] = 2048;
        *&v164[20] = v10;
        *&v164[28] = 2048;
        *&v164[30] = v36;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_222;
      }

      v10 = *&v160[4 * v83];
      if (v10 >= v79)
      {
        goto LABEL_211;
      }

      v86 = vsubq_f32(*(v78 + 16 * v33), *(v78 + 16 * v10));
      v87 = vmulq_f32(v86, v86);
      if ((v87.f32[2] + vaddv_f32(*v87.f32)) < (v77 * v77))
      {
        break;
      }

      if (v84 == ++v83)
      {
        v82 = (v82 + 4);
        v33 = v116;
        if (v82 == (v75 + 4 * v76))
        {
          goto LABEL_150;
        }

        goto LABEL_115;
      }
    }

    v33 = v116;
    re::internal::extractMeshFromFaceSubset(v119, v75, v76, v116, v164);
    {
      re::GeomMesh::~GeomMesh(v164);
LABEL_150:
      v71 = v117;
      goto LABEL_172;
    }

    v88.i32[0] = *v118;
    v121 = v88;
    memset(v197, 0, sizeof(v197));
    v202 = 0;
    *&v199[2] = 0u;
    v200 = 0u;
    v201 = 0;
    re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(v197, v164);
    bzero(&v188, 0x2D0uLL);
    re::DynamicArray<re::BlendNode>::setCapacity(&v190, 1uLL);
    ++v194;
    re::internal::GeomAttributeManager::GeomAttributeManager(v196);
    re::internal::GeomAttributeManager::addAttribute(v196, "vertexPosition", 1, 7);
    v90 = *&v197[16];
    v71 = v117;
    if (!*&v197[16])
    {
      goto LABEL_151;
    }

    v10 = 0;
    v91 = 0;
    v92 = vdup_lane_s32(v121, 0);
    do
    {
      v182.i64[0] = 0;
      v181.i64[0] = 0;
      v180 = 0uLL;
      v181.i32[2] = 0;
      re::internal::ExtractMeshConnectedComponents::facesInComponent(v197, v91, &v180);
      MeshFromFaceSubset = re::internal::extractMeshFromFaceSubset(v164, v182.i64[0], v181.i64[0], v116, &v183);
      if (v180.i64[0] && v182.i64[0])
      {
        (*(*v180.i64[0] + 40))(MeshFromFaceSubset);
      }

      re::computeOrientedBoundingBox(&v183, &v180);
      v94 = vmulq_f32(v180, v180);
      *v94.i8 = vadd_f32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
      v95 = vmulq_f32(v181, v181);
      *v95.i8 = vadd_f32(*v95.i8, *&vextq_s8(v95, v95, 8uLL));
      v96 = vmulq_f32(v182, v182);
      *v96.i32 = sqrtf(vaddv_f32(vadd_f32(*v96.i8, *&vextq_s8(v96, v96, 8uLL))));
      *v94.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*v95.i8, *v94.i8), vzip2_s32(*v95.i8, *v94.i8)));
      *v94.i8 = vcgt_f32(v92, vadd_f32(*v94.i8, *v94.i8));
      v97 = (v94.i8[0] & 1) - v94.i32[1];
      if ((*v96.i32 + *v96.i32) < *v121.i32)
      {
        ++v97;
      }

      if (v97 > 1)
      {
        goto LABEL_144;
      }

      v158[0] = v164;
      v158[1] = re::GeomMesh::accessVertexPositions(v164);
      v159 = v98;
      if (v165)
      {
        v99 = 0;
        v100 = 0.0;
        do
        {
          re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(v158, v99);
          v102.i64[0] = v101;
          v102.i64[1] = v103;
          v104 = vmulq_f32(v102, v102);
          v100 = v100 + sqrtf(v104.f32[2] + vaddv_f32(*v104.f32));
          ++v99;
        }

        while (v99 < v165);
      }

      else
      {
        v100 = 0.0;
      }

      if (v100 >= (*v121.i32 * *v121.i32))
      {
        re::GeomMeshBuilder::appendMesh(&v188, &v183);
      }

      else
      {
LABEL_144:
        v10 = 1;
      }

      re::GeomMesh::~GeomMesh(&v183);
      ++v91;
    }

    while (v91 != v90);
    if (v10)
    {
      re::GeomMesh::GeomMesh(v160, 0);
      re::GeomMesh::operator=(v160, &v189);
      re::GeomMesh::setName(v160, v188);
      re::GeomMesh::freeName(&v188);
    }

    else
    {
LABEL_151:
      *v160 = 0;
      *&v160[8] = 0;
      bzero(&v160[16], 0x2C8uLL);
      re::internal::GeomBaseMesh::GeomBaseMesh(&v160[16]);
      v163 = 0;
      re::GeomMesh::copy(v164, v160);
    }

    re::GeomMesh::freeName(&v188);
    re::internal::GeomAttributeManager::~GeomAttributeManager(v196);
    if (v190 && v195)
    {
      (*(*v190 + 40))(v190, v195);
    }

    if (*&v199[10])
    {
      if (v202)
      {
        (*(**&v199[10] + 40))(*&v199[10], v202);
      }

      v202 = 0;
      v200 = 0uLL;
      *&v199[10] = 0;
      ++v201;
    }

    if (*v197 && *&v199[2])
    {
      (*(**v197 + 40))(*v197, *&v199[2]);
    }

    re::GeomMesh::operator=(v164, v160);
    re::GeomMesh::~GeomMesh(v160);
    if (v116)
    {
      v105 = v157;
      if (v157 != -1)
      {
        v106 = re::GeomMesh::addAttribute(v164, v116, 2, 2);
        if (v106)
        {
          v107 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v106);
          v109 = v165;
          if (v165)
          {
            v36 = v108;
            v110 = v108;
            while (v110)
            {
              *v107++ = v105;
              --v110;
              if (!--v109)
              {
                goto LABEL_169;
              }
            }

LABEL_222:
            v188 = 0;
            v187 = 0u;
            v186 = 0u;
            v185 = 0u;
            v184 = 0u;
            v183 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v160 = 136315906;
            *&v160[4] = "operator[]";
            *&v160[12] = 1024;
            *&v160[14] = 621;
            *&v160[18] = 2048;
            *&v160[20] = v36;
            v161 = 2048;
            *v162 = v36;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_223:
            *v160 = 0;
            v187 = 0u;
            v186 = 0u;
            v185 = 0u;
            v184 = 0u;
            v183 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v164 = 136315906;
            *&v164[4] = "operator[]";
            *&v164[12] = 1024;
            *&v164[14] = 789;
            *&v164[18] = 2048;
            *&v164[20] = v7;
            *&v164[28] = 2048;
            *&v164[30] = v36;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_224:
            v188 = 0;
            v187 = 0u;
            v186 = 0u;
            v185 = 0u;
            v184 = 0u;
            v183 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v164 = 136315906;
            *&v164[4] = "operator[]";
            *&v164[12] = 1024;
            *&v164[14] = 797;
            *&v164[18] = 2048;
            *&v164[20] = v33;
            *&v164[28] = 2048;
            *&v164[30] = v36;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_225:
            v180.i64[0] = 0;
            v187 = 0u;
            v186 = 0u;
            v185 = 0u;
            v184 = 0u;
            v183 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v197 = 136315906;
            *&v197[4] = "operator[]";
            *&v197[12] = 1024;
            *&v197[14] = 789;
            *&v197[18] = 2048;
            *&v197[20] = v37;
            v198 = 2048;
            *v199 = v36;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_226:
            *v197 = 0;
            v187 = 0u;
            v186 = 0u;
            v185 = 0u;
            v184 = 0u;
            v183 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v188) = 136315906;
            *(v10 + 4) = "removeAt";
            WORD2(v189) = 1024;
            *(v10 + 14) = 931;
            WORD1(v190) = 2048;
            *(v10 + 20) = v36;
            v192 = 2048;
            *(v10 + 30) = v37;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }
        }
      }
    }

LABEL_169:
    re::GeomMeshBuilder::appendMesh(&v151, v164);
    re::GeomMesh::~GeomMesh(v164);
LABEL_170:
    v36 = v131;
    if (v131 <= v7)
    {
      goto LABEL_223;
    }

    *(v133 + v7) = 0;
    v72 = 1;
LABEL_172:
    if (v122[0] && v125)
    {
      (*(*v122[0] + 40))(v122[0], v125);
    }

    ++v7;
  }

  while (v7 != v71);
  v7 = v119;
  if ((v72 & 1) == 0)
  {
LABEL_186:
    *v115 = 0;
    *(v115 + 2) = 0;
    bzero(v115 + 16, 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh((v115 + 16));
    *(v115 + 91) = 0;
    re::GeomMesh::copy(v7, v115);
    goto LABEL_187;
  }

  v10 = 0;
  do
  {
    v36 = v131;
    if (v131 <= v10)
    {
      goto LABEL_221;
    }

    if (*(v133 + v10) == 1)
    {
      *&v164[32] = 0;
      memset(v164, 0, 28);
      re::internal::ExtractMeshConnectedComponents::facesInComponent(v135, v10, v164);
      v111 = re::internal::extractMeshFromFaceSubset(v119, *&v164[32], *&v164[16], v33, &v183);
      if (*v164 && *&v164[32])
      {
        (*(**v164 + 40))(v111);
      }

      re::GeomMeshBuilder::appendMesh(&v151, &v183);
      re::GeomMesh::~GeomMesh(&v183);
    }

    ++v10;
  }

  while (v71 != v10);
  v112 = re::GeomMesh::GeomMesh(v115, 0);
  v113 = re::GeomMesh::operator=(v112, &v152);
  re::GeomMesh::setName(v113, v151);
  re::GeomMesh::freeName(&v151);
LABEL_187:
  if (v126[0] && v129)
  {
    (*(*v126[0] + 40))(v126[0], v129);
  }

  if (v130[0] && v133)
  {
    (*(*v130[0] + 40))(v130[0], v133);
  }

  if (*(&v138 + 1))
  {
    if (v141)
    {
      (*(**(&v138 + 1) + 40))(*(&v138 + 1), v141);
    }

    v141 = 0;
    v139 = 0uLL;
    *(&v138 + 1) = 0;
    ++v140;
  }

  if (v135[0] && v138)
  {
    (*(*v135[0] + 40))(v135[0], v138);
  }

  if (v142[0] && v144)
  {
    (*(*v142[0] + 40))(v142[0], v144);
  }

  if (v145[0] && v147)
  {
    (*(*v145[0] + 40))(v145[0], v147);
  }

  re::GeomMesh::freeName(&v151);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v156);
  result = v153;
  if (v153)
  {
    if (v155)
    {
      return (*(*v153 + 40))(v153, v155);
    }
  }

  return result;
}

BOOL re::internal::removeSmallAndThinFeatures(re::GeomMesh const&,re::GeomMesh const&,re::internal::RemoveThinFeatureOptions const&)::$_0::operator()(re::GeomMesh **a1, unsigned int *a2, uint64_t a3, float a4, float a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  *(v9 + 2) = 0;
  ++*(v9 + 6);
  v10 = *(a1[1] + 4);
  LOBYTE(v54) = 0;
  re::DynamicArray<BOOL>::resize(v9, v10, &v54);
  v11 = a1[2];
  *(v11 + 2) = 0;
  ++*(v11 + 6);
  v12 = re::GeomMesh::accessVertexPositions(a1[1]);
  v44 = a3;
  if (!a3)
  {
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  v16 = a2;
  do
  {
    v17 = *v16;
    v18 = a1[1];
    v19 = *(v18 + 5);
    if (v19 <= v17)
    {
      goto LABEL_27;
    }

    v19 = 0;
    v45 = *(*(v18 + 7) + 16 * v17);
    if (HIDWORD(v45) == -1)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    do
    {
      v17 = *(&v45 + v19);
      v21 = *(*a1 + 2);
      if (v21 <= v17)
      {
        v58 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v46 = 136315906;
        v47 = "operator[]";
        v48 = 1024;
        v49 = 789;
        v50 = 2048;
        v51 = v17;
        v52 = 2048;
        v53 = v21;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_26:
        v58 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v46 = 136315906;
        v47 = "operator[]";
        v48 = 1024;
        v49 = 613;
        v50 = 2048;
        v51 = v17;
        v52 = 2048;
        v53 = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_27:
        *&v45 = 0;
        v58 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v46 = 136315906;
        v47 = "operator[]";
        v48 = 1024;
        v49 = 797;
        v50 = 2048;
        v51 = v17;
        v52 = 2048;
        v53 = v19;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v22 = *(*a1 + 4);
      if ((*(v22 + v17) & 1) == 0)
      {
        *(v22 + v17) = 1;
        if (v17 >= v15)
        {
          goto LABEL_26;
        }

        re::DynamicArray<re::Vector3<float>>::add(a1[2], (v14 + 16 * v17));
      }

      ++v19;
    }

    while (v20 != v19);
    ++v16;
  }

  while (v16 != &a2[v44]);
LABEL_13:
  MEMORY[0x1E69070C0](*(a1[2] + 2), *(a1[2] + 4));
  result = 1;
  if (v44)
  {
    v27 = vmulq_f32(v23, v23);
    *v27.i8 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    _Q1 = vmulq_f32(v24, v24);
    *_Q1.i8 = vadd_f32(*_Q1.i8, *&vextq_s8(_Q1, _Q1, 8uLL));
    *v27.i8 = vadd_f32(vzip1_s32(*v27.i8, *_Q1.i8), vzip2_s32(*v27.i8, *_Q1.i8));
    __asm { FMOV            V1.2S, #4.0 }

    *v27.i8 = vmul_f32(*v27.i8, *_Q1.i8);
    v31 = vmulq_f32(v25, v25);
    v32 = (vaddv_f32(vadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL))) * 4.0) + vaddv_f32(*v27.i8);
    if (vmuls_lane_f32(*v27.i32, *v27.i8, 1) >= (a5 * a5) && v32 >= (a4 * a4))
    {
      v34 = a2;
      v35 = 4 * v44 - 4;
      v36 = 0.0;
      do
      {
        v37 = *v34++;
        re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(a1[3], v37);
        v39.i64[0] = v38;
        v39.i64[1] = v40;
        v41 = vmulq_f32(v39, v39);
        v36 = v36 + sqrtf(v41.f32[2] + vaddv_f32(*v41.f32));
        result = v36 <= a5;
        _ZF = v36 > a5 || v35 == 0;
        v35 -= 4;
      }

      while (!_ZF);
    }
  }

  return result;
}

void re::internal::ExtractMeshConnectedComponents::facesInComponent(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2 - 1;
    v6 = a1[2];
    if (v6 <= v5)
    {
      goto LABEL_17;
    }

    v7 = *(a1[4] + 4 * v5);
  }

  else
  {
    v7 = 0;
    v6 = a1[2];
  }

  if (v6 <= a2)
  {
LABEL_16:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_17:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(a1[4] + 4 * a2);
  re::DynamicArray<float>::resize(a3, v8 - v7);
  if (v8 > v7)
  {
    v9 = 0;
    v10 = *(a3 + 16);
    v11 = *(a3 + 32);
    if (a1[7] <= v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = a1[7];
    }

    while (v12 - v7 != v9)
    {
      if (v10 <= v9)
      {
        goto LABEL_15;
      }

      *(v11 + 4 * v9) = *(a1[9] + 4 * v7 + 4 * v9);
      if (v8 - v7 == ++v9)
      {
        return;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_15:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }
}

uint64_t re::internal::ExtractMeshConnectedComponents::componentHasOneMaterial(re::internal::ExtractMeshConnectedComponents *this, unsigned int a2, const re::GeomMesh *a3, const char *a4, unsigned int *a5)
{
  *a5 = -1;
  if (a4)
  {
    v8 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), a4);
    if (v8)
    {
      v9 = re::GeomAttribute::accessValues<int>(v8);
      if (a2)
      {
        v11 = a2 - 1;
        v12 = *(this + 2);
        if (v12 <= v11)
        {
          goto LABEL_25;
        }

        v13 = *(*(this + 4) + 4 * v11);
      }

      else
      {
        v13 = 0;
        v12 = *(this + 2);
      }

      if (v12 <= a2)
      {
        goto LABEL_24;
      }

      for (i = v13 + 1; i < *(*(this + 4) + 4 * a2); ++i)
      {
        v15 = *(this + 7);
        if (v15 <= v13)
        {
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_21:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_22:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_23:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_24:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_25:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_26:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v16 = *(this + 9);
        v17 = *(v16 + 4 * v13);
        if (v17 >= v10)
        {
          goto LABEL_21;
        }

        if (v15 <= i)
        {
          goto LABEL_22;
        }

        v18 = *(v16 + 4 * i);
        if (v18 >= v10)
        {
          goto LABEL_23;
        }

        if (*(v9 + 4 * v17) != *(v9 + 4 * v18))
        {
          return 0;
        }
      }

      if (v13 >= v10)
      {
        goto LABEL_26;
      }

      *a5 = *(v9 + 4 * v13);
    }
  }

  return 1;
}

uint64_t re::anonymous namespace::removeThinFeaturesByVoxelization(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v306;
  v325 = *MEMORY[0x1E69E9840];
  v283 = 0;
  memset(v282, 0, sizeof(v282));
  v281 = 0u;
  v284 = 0x7FFFFFFFLL;
  v6 = *v5;
  v216 = v5;
  v7 = v5[2];
  re::GeomMesh::GeomMesh(v272, 0);
  re::computeOrientedBoundingBox(v3, &v319);
  v8 = 0;
  v9 = 0;
  v275 = xmmword_1E3047670;
  v276 = xmmword_1E3047680;
  v277 = xmmword_1E30476A0;
  v278 = xmmword_1E30474D0;
  v10 = vdup_n_s32(0x3A83126Fu);
  do
  {
    v11 = *(&v319 + v8);
    v12 = vmulq_f32(v11, v11);
    v13 = vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
    if (vaddv_f32(v13) > 0.0)
    {
      v14 = vadd_f32(v13, vdup_lane_s32(v13, 1)).u32[0];
      v15 = vrsqrte_f32(v14);
      v16 = vmul_f32(v15, vrsqrts_f32(v14, vmul_f32(v15, v15)));
      v11 = vmulq_n_f32(v11, vmul_f32(v16, vrsqrts_f32(v14, vmul_f32(v16, v16))).f32[0]);
    }

    v17 = vcgt_f32(v10, vabs_f32(*v11.f32));
    v18 = (v17.i8[0] & 1) - v17.i32[1];
    if (fabsf(v11.f32[2]) < 0.001)
    {
      ++v18;
    }

    v9 |= v18 < 2;
    *(&v275 + v8) = v11;
    v8 += 16;
  }

  while (v8 != 48);
  v19 = v3 + 56;
  v20 = v322;
  v20.i32[3] = HIDWORD(v278);
  v278 = v20;
  v217 = (v3 + 40);
  if (v9)
  {
    v21 = vmulq_f32(v275, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v277, v277, 0xCuLL), v277, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v276, v276), v276, 0xCuLL))), vextq_s8(vuzp1q_s32(v277, v277), v277, 0xCuLL), vextq_s8(vextq_s8(v276, v276, 0xCuLL), v276, 8uLL)));
    v22 = v21.f32[2] + vaddv_f32(*v21.f32);
    if (v22 == 1.0 || (v230 = (v3 + 40), v23 = v3, fabsf(v22 + -1.0) < (((fabsf(v22) + 1.0) + 1.0) * 0.00001)))
    {
      v23 = v272;
      v241 = v277;
      v244 = v20;
      v237 = v276;
      re::GeomMesh::copy(v3, v272);
      v326.columns[0] = v275;
      v326.columns[1] = v237;
      v326.columns[2] = v241;
      v326.columns[3] = v244;
      v327 = __invert_f4(v326);
      v319 = v327.columns[0];
      v320 = v327.columns[1];
      v321 = v327.columns[2];
      v322 = v327.columns[3];
      re::transform(v272, &v319);
      v230 = &v273;
      v19 = &v274;
    }
  }

  else
  {
    v230 = (v3 + 40);
    v23 = v3;
  }

  v259 = 0;
  v253 = 0;
  v255 = 0;
  v257 = 0;
  v256 = 0;
  v258 = 0;
  re::GeomMeshBVHTree::init(&v253, v23);
  v286 = re::GeomMesh::accessVertexPositions(v23);
  LODWORD(v287) = v24;
  *&v299[24] = re::globalAllocators(v286)[2];
  v25 = (*(**&v299[24] + 32))(*&v299[24], 32, 0);
  *v25 = &unk_1F5D021F8;
  v25[1] = v23;
  v25[2] = &v286;
  v25[3] = v299;
  *&v299[32] = v25;
  re::computeAABB(v23, &v319);
  v26 = vsubq_f32(v320, v319);
  *v27.i32 = (v6 + 0.000001) + (v6 + 0.000001);
  v28 = vaddq_f32(vdupq_lane_s32(v27, 0), v26);
  v29 = v6 / 10.0;
  v280 = v6;
  if ((v6 / 10.0) >= v26.f32[0])
  {
    v30 = 1;
  }

  else
  {
    v30 = ((v28.f32[0] / v6) + 0.5);
  }

  LOWORD(v279) = v30;
  if (v29 >= v26.f32[1])
  {
    v31 = 1;
  }

  else
  {
    v31 = ((v28.f32[1] / v6) + 0.5);
  }

  WORD1(v279) = v31;
  if (v29 >= v26.f32[2])
  {
    v32 = 1;
  }

  else
  {
    v32 = ((v28.f32[2] / v6) + 0.5);
  }

  WORD2(v279) = v32;
  v33.i64[0] = 0x3F0000003F000000;
  v33.i64[1] = 0x3F0000003F000000;
  v34 = vmulq_f32(vaddq_f32(v320, v319), v33);
  v281.f32[0] = v34.f32[0] - (v6 * vcvts_n_f32_u32(v30, 1uLL));
  v281.f32[1] = v34.f32[1] - (v6 * vcvts_n_f32_u32(v31, 1uLL));
  v281.f32[2] = v34.f32[2] - (v6 * vcvts_n_f32_u32(v32, 1uLL));
  v218 = v3;
  v219 = v23;
  if (v30)
  {
    v35 = 0;
    v36 = v6 * v6;
    v37 = 3;
    v38 = v316;
    v4 = &v300;
    v39 = v32;
    v40 = v31;
    while (!v40)
    {
      v40 = 0;
LABEL_56:
      v35 = (v35 + 1);
      if (v35 >= v30)
      {
        v214 = v32;
        v215 = v31;
        v1 = v30 - 1;
        v4 = v306;
        goto LABEL_60;
      }
    }

    v41 = 0;
    while (!v39)
    {
      v39 = 0;
LABEL_53:
      v41 = (v41 + 1);
      if (v41 >= v31)
      {
        LOWORD(v30) = v279;
        v40 = v31;
        goto LABEL_56;
      }
    }

    v42 = 0;
    v245.i32[0] = v41;
    while (1)
    {
      LOWORD(v264[0]) = v35;
      WORD1(v264[0]) = v41;
      WORD2(v264[0]) = v42;
      v251 = 0;
      v248 = 0;
      v249 = 0;
      v247 = 0;
      v250 = 0;
      v252 = 0.0;
      v34.i32[0] = LODWORD(v264[0]) << 16;
      v34.i32[1] = v264[0];
      v33.f32[0] = v280;
      v43 = vdupq_lane_s32(*v33.f32, 0);
      *v34.f32 = vmul_f32(*v43.f32, vcvt_f32_s32(vshr_n_s32(*v34.f32, 0x10uLL)));
      v34.f32[2] = v280 * v42;
      v291 = vaddq_f32(v281, v34);
      v292 = vaddq_f32(v43, v291);
      if (!v257)
      {
        goto LABEL_404;
      }

      (*(**&v299[32] + 16))(*&v299[32], &v291, v259, &v247);
      if (v249)
      {
        break;
      }

LABEL_47:
      if (v247 && v251)
      {
        (*(*v247 + 40))();
      }

      v42 = (v42 + 1);
      LOWORD(v32) = WORD2(v279);
      if (WORD2(v279) <= v42)
      {
        LOWORD(v31) = WORD1(v279);
        v39 = WORD2(v279);
        goto LABEL_53;
      }
    }

    v301 = 0;
    v300 = 0;
    v302 = 0;
    v252 = 0.0;
    v44 = v251;
    v1 = &v251[v249];
LABEL_30:
    v3 = *v44;
    v45 = 0uLL;
    v307[0] = 0u;
    memset(v306, 0, sizeof(v306));
    v46 = *v230;
    if (*v230 <= v3)
    {
      goto LABEL_326;
    }

    v47 = 0;
    *v316 = *(*v19 + 16 * v3);
    v3 = v287;
    v48 = v286;
    if (*&v316[12] == -1)
    {
      v49 = 3;
    }

    else
    {
      v49 = 4;
    }

    v50 = v306;
    while (1)
    {
      v51 = *&v316[4 * v47];
      if (v3 <= v51)
      {
        break;
      }

      *v50 = *(v48 + v51);
      v50 += 2;
      if (v49 == ++v47)
      {
        re::internal::VoxelGrid::accumulateAreaProjectionsOfFaceInBox(v49, v306, &v291, &v300);
        if (++v44 == v1)
        {
          v52 = &v300;
          v53 = *&v300;
          for (i = 4; i != 24; i += 4)
          {
            if (v53 < *(&v300 + i))
            {
              v53 = *(&v300 + i);
              v52 = (&v300 + i);
            }
          }

          v55 = *v52 / v36;
          if (v55 > 1.0)
          {
            v55 = 1.0;
          }

          v252 = v55;
          v41 = v245.u32[0];
          if (v55 > 0.0)
          {
            v319 = 0uLL;
            v320.i64[0] = 0;
            re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v319, v282, v264);
            if (v319.i32[3] == 0x7FFFFFFF)
            {
              v3 = re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::allocEntry(v282, v319.u32[2], v319.u64[0]);
              *(v3 + 4) = v264[0];
              *(v3 + 8) = WORD2(v264[0]);
              re::DynamicArray<float>::DynamicArray(v3 + 16, &v247);
              *(v3 + 56) = v252;
              ++HIDWORD(v284);
            }
          }

          goto LABEL_47;
        }

        goto LABEL_30;
      }
    }

    v268[0] = 0;
    v322 = 0u;
    v323 = 0u;
    v320 = 0u;
    v321 = 0u;
    v319 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v324 = 136315906;
    *&v324[4] = "operator[]";
    *&v324[12] = 1024;
    *&v324[14] = 613;
    *&v324[18] = 2048;
    *&v324[20] = v51;
    *&v324[28] = 2048;
    *&v324[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v214 = v32;
  v215 = v31;
  v1 = 0xFFFFFFFFLL;
LABEL_60:
  if (*&v299[32])
  {
    (***&v299[32])(*&v299[32]);
    if (*&v299[32] != v299)
    {
      (*(**&v299[24] + 40))(*&v299[24]);
    }
  }

  if (v255 && v259)
  {
    (*(*v255 + 40))(v255, v259);
  }

  v271 = 0;
  v269 = 0;
  v268[0] = 0;
  v268[1] = 0;
  v267 = 0;
  v265 = 0;
  v264[0] = 0;
  v264[1] = 0;
  LODWORD(v306[4]) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 36) = 0x7FFFFFFFLL;
  v270 = 1;
  v266 = 1;
  *&v299[32] = 0;
  memset(v299, 0, 28);
  re::internal::VoxelGrid::fetchVoxelsWithOccupancyRange(&v279, v299, 0.0, v7);
  *&v324[32] = 0;
  memset(v324, 0, 28);
  re::DynamicArray<re::internal::Voxel>::setCapacity(v324, 0x1BuLL);
  if (*&v299[16])
  {
    v56 = *&v299[32];
    v220 = *&v299[32] + 6 * *&v299[16];
    v57 = *&v324[24];
    v223 = v1;
    do
    {
      v319.i32[0] = *v56;
      v227 = v56;
      v319.i16[2] = *(v56 + 4);
      v58 = v319.i16[0] - (v319.i16[0] > 0);
      v246 = v319.i16[0];
      if (v1 <= v319.i16[0])
      {
        v59 = v319.i16[0];
      }

      else
      {
        v59 = v319.i16[0] + 1;
      }

      if (v215 - 1 <= v319.i16[1])
      {
        v60 = v319.i16[1];
      }

      else
      {
        v60 = v319.i16[1] + 1;
      }

      if (v319.i16[2] <= 0)
      {
        v61 = 0;
      }

      else
      {
        v61 = -1;
      }

      v242 = v61;
      if (v214 - 1 <= v319.i16[2])
      {
        v62 = v319.i16[2];
      }

      else
      {
        v62 = v319.i16[2] + 1;
      }

      *&v324[16] = 0;
      *&v324[24] = ++v57;
      v235 = v59;
      if (v58 <= v59)
      {
        v63 = 0;
        v238 = v319.i16[1];
        LODWORD(v3) = v319.i16[1] - (v319.i16[1] > 0);
        v64 = v319.i16[2] - (v319.i16[2] > 0);
        v232 = v3;
        do
        {
          while (v3 <= v60)
          {
            if (v64 <= v62)
            {
              v65 = v58 == v246 && v3 == v238;
              v66 = v65;
              v67 = v242;
              v68 = v64;
              do
              {
                if (v67)
                {
                  v69 = 0;
                }

                else
                {
                  v69 = v66;
                }

                if ((v69 & 1) == 0)
                {
                  if (v63 >= *&v324[8])
                  {
                    re::DynamicArray<re::internal::Voxel>::growCapacity(v324, v63 + 1);
                    v63 = *&v324[16];
                    v57 = *&v324[24];
                  }

                  v70 = (*&v324[32] + 6 * v63);
                  *v70 = v58;
                  v70[1] = v3;
                  v70[2] = v68;
                  *&v324[16] = ++v63;
                  *&v324[24] = ++v57;
                }

                ++v68;
                ++v67;
              }

              while (v68 <= v62);
            }

            LODWORD(v3) = v3 + 1;
          }

          ++v58;
          v3 = v232;
        }

        while (v58 <= v235);
      }

      else
      {
        v63 = 0;
      }

      v71 = *&v324[32];
      v72 = v63 + 1;
      v1 = v223;
      v73 = v224;
      while (--v72)
      {
        v74 = (v71 + 6);
        v73 = v73 & 0xFFFF000000000000 | *v71 | (*(v71 + 2) << 32);
        v75 = re::internal::VoxelGrid::occupancy(&v279, v73);
        v71 = v74;
        if (v75 > v7)
        {
          LOBYTE(v253) = 0;
          goto LABEL_107;
        }
      }

      LOBYTE(v253) = 1;
LABEL_107:
      re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::add(v306, &v319, &v253);
      v224 = v73;
      v56 = v227 + 6;
    }

    while (v227 + 6 != v220);
    v76 = v306[4];
    if (LODWORD(v306[4]))
    {
      v77 = 0;
      v78 = v306[2];
      while (1)
      {
        v79 = *v78;
        v78 += 24;
        if (v79 < 0)
        {
          break;
        }

        if (LODWORD(v306[4]) == ++v77)
        {
          LODWORD(v77) = v306[4];
          break;
        }
      }
    }

    else
    {
      LODWORD(v77) = 0;
    }

    v4 = v306;
    if (v77 != LODWORD(v306[4]))
    {
      v80 = v306[2];
      while (1)
      {
        v81 = &v80[24 * v77];
        LODWORD(v253) = *(v81 + 1);
        WORD2(v253) = *(v81 + 4);
        if (v81[10] != 1)
        {
LABEL_135:
          v85 = v264;
          goto LABEL_136;
        }

        v82 = WORD2(v253);
        v83 = v253;
        v84 = v253 | (WORD2(v253) << 32);
        v3 = v3 & 0xFFFF000000000000 | v84;
        if (re::internal::VoxelGrid::occupancy(&v279, v3) < 0.05)
        {
          break;
        }

        LOWORD(v247) = v83 - 1;
        v86 = v84 >> 16;
        WORD1(v247) = v86;
        WORD2(v247) = v82;
        re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v319, v306, &v247);
        if (v319.i32[3] != 0x7FFFFFFF && v80[24 * v319.u32[3] + 10] != 1 || (LOWORD(v247) = v83 + 1, WORD1(v247) = v86, WORD2(v247) = v82, re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v319, v306, &v247), v319.i32[3] != 0x7FFFFFFF) && v80[24 * v319.u32[3] + 10] != 1 || (LOWORD(v247) = v83, WORD1(v247) = v86 - 1, WORD2(v247) = v82, re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v319, v306, &v247), v319.i32[3] != 0x7FFFFFFF) && v80[24 * v319.u32[3] + 10] != 1 || (LOWORD(v247) = v83, WORD1(v247) = v86 + 1, WORD2(v247) = v82, re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v319, v306, &v247), v319.i32[3] != 0x7FFFFFFF) && v80[24 * v319.u32[3] + 10] != 1 || (LOWORD(v247) = v83, WORD1(v247) = v86, WORD2(v247) = v82 - 1, re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v319, v306, &v247), v319.i32[3] != 0x7FFFFFFF) && v80[24 * v319.u32[3] + 10] != 1)
        {
          v85 = v264;
          goto LABEL_132;
        }

        LOWORD(v247) = v83;
        WORD1(v247) = v86;
        WORD2(v247) = v82 + 1;
        re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v319, v306, &v247);
        if (v319.i32[3] == 0x7FFFFFFF)
        {
          v4 = v306;
        }

        else
        {
          v4 = v306;
          if (v80[24 * v319.u32[3] + 10] != 1)
          {
            goto LABEL_135;
          }
        }

        v85 = v268;
LABEL_136:
        re::DynamicArray<re::internal::Voxel>::add(v85, &v253);
        if (LODWORD(v306[4]) <= (v77 + 1))
        {
          v87 = v77 + 1;
        }

        else
        {
          v87 = v306[4];
        }

        while (v87 - 1 != v77)
        {
          LODWORD(v77) = v77 + 1;
          if ((*&v80[24 * v77] & 0x80000000) != 0)
          {
            goto LABEL_143;
          }
        }

        LODWORD(v77) = v87;
LABEL_143:
        if (v77 == v76)
        {
          goto LABEL_144;
        }
      }

      v85 = v268;
LABEL_132:
      v4 = v306;
      goto LABEL_136;
    }
  }

LABEL_144:
  re::internal::VoxelGrid::fetchVoxelsWithOccupancyRange(&v279, v299, v7, 1.0);
  v88 = *&v299[32];
  if (*&v299[16])
  {
    v89 = 6 * *&v299[16];
    v90 = *&v299[32];
    do
    {
      v319.i32[0] = *v90;
      v319.i16[2] = *(v90 + 4);
      re::DynamicArray<re::internal::Voxel>::add(v264, &v319);
      v90 += 6;
      v89 -= 6;
    }

    while (v89);
  }

  v321.i32[0] = 0;
  v319 = 0u;
  v320 = 0u;
  *(v321.i64 + 4) = 0x7FFFFFFFLL;
  v91 = v271;
  v3 = v269;
  v38 = v324;
  if (!v269)
  {
    v125 = 0;
    v121 = 0;
    v257 = 0;
    goto LABEL_224;
  }

  v236 = (v271 + 6 * v269);
  v92 = 6 * v269;
  v93 = v271;
  do
  {
    LODWORD(v253) = *v93;
    WORD2(v253) = *(v93 + 2);
    LOBYTE(v247) = 0;
    re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v319, &v253, &v247);
    v93 = (v93 + 6);
    v92 -= 6;
  }

  while (v92);
  v257 = 0;
  v255 = 0;
  v253 = 0;
  v254 = 0;
  LODWORD(v256) = 0;
  v251 = 0;
  v248 = 0;
  v249 = 0;
  v247 = 0;
  v250 = 0;
  if (!v3)
  {
    v125 = 0;
    v121 = 0;
    v38 = v324;
    goto LABEL_224;
  }

  v221 = 6 * v3;
  v228 = v88;
  re::DynamicArray<re::internal::Voxel>::setCapacity(&v253, v3);
  v225 = v3;
  re::DynamicArray<re::internal::Voxel>::setCapacity(&v247, v3);
  v239 = 0;
  v94 = 0;
  v3 = 0x7FFFFFFFLL;
  v95 = &v300;
  v96 = v91;
  v97 = v236;
  do
  {
    LODWORD(v286) = *v96;
    WORD2(v286) = *(v96 + 2);
    re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v291, &v319, &v286);
    v98 = v320.i64[0];
    if ((*(v320.i64[0] + 24 * v291.u32[3] + 10) & 1) == 0)
    {
      v255 = 0;
      LODWORD(v256) = v256 + 1;
      v249 = 0;
      ++v250;
      re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v291, &v319, &v286);
      if (v291.i32[3] == 0x7FFFFFFF || (*(v98 + 24 * v291.u32[3] + 10) & 1) != 0 || (v291.i8[0] = 1, re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v319, &v286, &v291), re::DynamicArray<re::internal::Voxel>::add(&v247, &v286), (v99 = v249) == 0))
      {
        v104 = 0;
      }

      else
      {
        v233 = v94;
        do
        {
          v100 = v251 + 6 * v99;
          LODWORD(v300) = *(v100 - 6);
          WORD2(v300) = *(v100 - 1);
          v249 = v99 - 1;
          ++v250;
          re::DynamicArray<re::internal::Voxel>::add(&v253, &v300);
          v101 = v300;
          v102 = SWORD1(v300);
          v103 = SWORD2(v300);
          if (v300 >= 1)
          {
            *v316 = v300 - 1;
            *&v316[2] = *(&v300 + 2);
            re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v291, &v319, v316);
            if (v291.i32[3] != 0x7FFFFFFF && (*(v320.i64[0] + 24 * v291.u32[3] + 10) & 1) == 0)
            {
              v291.i8[0] = 1;
              re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v319, v316, &v291);
              re::DynamicArray<re::internal::Voxel>::add(&v247, v316);
            }
          }

          if (v102 >= 1)
          {
            *v316 = v101;
            *&v316[2] = v102 - 1;
            *&v316[4] = v103;
            re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v291, &v319, v316);
            if (v291.i32[3] != 0x7FFFFFFF && (*(v320.i64[0] + 24 * v291.u32[3] + 10) & 1) == 0)
            {
              v291.i8[0] = 1;
              re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v319, v316, &v291);
              re::DynamicArray<re::internal::Voxel>::add(&v247, v316);
            }
          }

          if (v103 >= 1)
          {
            *v316 = v101;
            *&v316[2] = v102;
            *&v316[4] = v103 - 1;
            re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v291, &v319, v316);
            if (v291.i32[3] != 0x7FFFFFFF && (*(v320.i64[0] + 24 * v291.u32[3] + 10) & 1) == 0)
            {
              v291.i8[0] = 1;
              re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v319, v316, &v291);
              re::DynamicArray<re::internal::Voxel>::add(&v247, v316);
            }
          }

          if (v1 > v101)
          {
            *v316 = v101 + 1;
            *&v316[2] = v102;
            *&v316[4] = v103;
            re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v291, &v319, v316);
            if (v291.i32[3] != 0x7FFFFFFF && (*(v320.i64[0] + 24 * v291.u32[3] + 10) & 1) == 0)
            {
              v291.i8[0] = 1;
              re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v319, v316, &v291);
              re::DynamicArray<re::internal::Voxel>::add(&v247, v316);
            }
          }

          if (v215 - 1 > v102)
          {
            *v316 = v101;
            *&v316[2] = v102 + 1;
            *&v316[4] = v103;
            re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v291, &v319, v316);
            if (v291.i32[3] != 0x7FFFFFFF && (*(v320.i64[0] + 24 * v291.u32[3] + 10) & 1) == 0)
            {
              v291.i8[0] = 1;
              re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v319, v316, &v291);
              re::DynamicArray<re::internal::Voxel>::add(&v247, v316);
            }
          }

          if (v214 - 1 > v103)
          {
            *v316 = v101;
            *&v316[2] = v102;
            *&v316[4] = v103 + 1;
            re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v291, &v319, v316);
            if (v291.i32[3] != 0x7FFFFFFF && (*(v320.i64[0] + 24 * v291.u32[3] + 10) & 1) == 0)
            {
              v291.i8[0] = 1;
              re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v319, v316, &v291);
              re::DynamicArray<re::internal::Voxel>::add(&v247, v316);
            }
          }

          v99 = v249;
        }

        while (v249);
        v104 = v255;
        v97 = v236;
        v94 = v233;
      }

      v105 = 0x7FFF;
      v291.i16[2] = 0x7FFF;
      v291.i32[0] = 2147450879;
      v106 = -32767;
      WORD2(v300) = -32767;
      LODWORD(v300) = -2147385343;
      if (v104)
      {
        v107 = v257;
        v108 = &v257[3 * v104];
        v109 = 0x7FFF;
        v110 = -32767;
        v111 = -32767;
        v112 = 0x7FFF;
        v105 = 0x7FFF;
        do
        {
          v113 = *v107;
          if (v105 >= v113)
          {
            v105 = *v107;
          }

          v114 = v107[1];
          if (v112 >= v114)
          {
            v112 = v107[1];
          }

          v115 = v107[2];
          if (v109 >= v115)
          {
            v109 = v107[2];
          }

          if (v113 > v106)
          {
            v106 = *v107;
          }

          if (v114 > v111)
          {
            v111 = v107[1];
          }

          if (v115 > v110)
          {
            v110 = v107[2];
          }

          v107 += 3;
        }

        while (v107 != v108);
        v291.i16[1] = v112;
        v291.i16[2] = v109;
        WORD1(v300) = v111;
        WORD2(v300) = v110;
      }

      v116 = 0;
      v117 = 0;
      ++v239;
      v291.i16[0] = v105;
      LOWORD(v300) = v106;
      do
      {
        if ((*(&v300 + v116 * 2) - v291.i16[v116] - 2) < 0xFFFDu)
        {
          ++v117;
        }

        ++v116;
      }

      while (v116 != 3);
      v94 |= v117 > 1u;
      if ((v94 & 1) != 0 && v239 >= 2)
      {
        v38 = v324;
        v4 = v306;
        goto LABEL_219;
      }
    }

    v96 = (v96 + 6);
  }

  while (v96 != v97);
  v3 = v221;
  if ((v94 & (v239 == 1)) != 1)
  {
    v38 = v324;
    v4 = v306;
    v121 = v225;
    if ((v94 & 1) == 0)
    {
      goto LABEL_220;
    }

    goto LABEL_219;
  }

  v118 = 0.0;
  v119 = v91;
  v120 = 0.0;
  v38 = v324;
  v4 = v306;
  v121 = v225;
  do
  {
    v122 = *(v119 + 2);
    v123 = *v119;
    v119 = (v119 + 6);
    v95 = v95 & 0xFFFF000000000000 | v123 | (v122 << 32);
    v124 = re::internal::VoxelGrid::occupancy(&v279, v95);
    if (v120 < v124)
    {
      v120 = v124;
    }

    v118 = v118 + v124;
    v3 -= 6;
  }

  while (v3);
  if (v120 > 0.4 || v118 > (v225 * 0.2))
  {
LABEL_219:
    v121 = 0;
    v269 = 0;
    ++v270;
  }

LABEL_220:
  v88 = v228;
  if (v247 && v251)
  {
    (*(*v247 + 40))(v247, v251);
  }

  v125 = v253;
LABEL_224:
  if (v125 && v257)
  {
    (*(*v125 + 40))(v125);
  }

  v126.n128_f64[0] = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(&v319);
  if (*v324 && *&v324[32])
  {
    (*(**v324 + 40))(v126.n128_f64[0]);
  }

  if (*v299 && v88)
  {
    (*(**v299 + 40))(v126);
  }

  v127.n128_f64[0] = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v306);
  if (!v121)
  {
    v149 = 0;
    goto LABEL_396;
  }

  v263 = 0;
  v261 = 0;
  v260[0] = 0;
  v260[1] = 0;
  v262 = 0;
  v301 = 0;
  v300 = 0;
  LODWORD(v302) = 1;
  v304 = 0;
  v303 = 0;
  v305 = 0;
  *v128.i32 = v280;
  v245 = v128;
  v129 = v280 * (v280 * 0.125);
  v291.i64[0] = v219;
  v291.i64[1] = re::GeomMesh::accessVertexPositions(v219);
  v292.i32[0] = v130;
  v257 = 0;
  v255 = 0;
  v253 = 0;
  v254 = 0;
  LODWORD(v256) = 0;
  v131 = *v230;
  v319.i32[0] = 0;
  re::DynamicArray<float>::resize(&v253, v131, &v319, v132);
  v133 = (v91 + 6 * v121);
  v134 = vdupq_lane_s32(v245, 0);
  v240 = v134;
  v243 = v281;
  while (2)
  {
    v135 = *(v91 + 2);
    v136 = *v91;
    v134.i32[0] = v136 << 16;
    v134.i32[1] = *v91;
    *v134.f32 = vmul_f32(*v240.f32, vcvt_f32_s32(vshr_n_s32(*v134.f32, 0x10uLL)));
    v134.f32[2] = *v245.i32 * v135;
    *v324 = vaddq_f32(v243, v134);
    *&v324[16] = vaddq_f32(v240, *v324);
    v3 = v3 & 0xFFFF000000000000 | v136 | (v135 << 32);
    re::internal::VoxelGrid::faces(&v247, &v279, v3);
    if (v249)
    {
      v137 = v251;
      v138 = 4 * v249;
      while (1)
      {
        v139 = *v137;
        *(v4 + 32) = 0u;
        *(v4 + 48) = 0u;
        *v4 = 0u;
        *(v4 + 16) = 0u;
        v140 = re::internal::FaceEvaluator::faceVertexPositions(&v291, v139, v306);
        re::internal::computeFractionOfFaceInBox(v140, v306, v324);
        v37 = v255;
        if (v255 <= v139)
        {
          break;
        }

        *&v257[2 * v139] = v134.f32[0] + *&v257[2 * v139];
        ++v137;
        v138 -= 4;
        if (!v138)
        {
          goto LABEL_239;
        }
      }

      v286 = 0;
      v322 = 0u;
      v323 = 0u;
      v320 = 0u;
      v321 = 0u;
      v319 = 0u;
      v46 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v299 = 136315906;
      *&v299[4] = "operator[]";
      *&v299[12] = 1024;
      *&v299[14] = 789;
      *&v299[18] = 2048;
      *&v299[20] = v139;
      *&v299[28] = 2048;
      *&v299[30] = v37;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_325:
      re::internal::assertLog(6, v174, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v46, v46);
      _os_crash();
      __break(1u);
LABEL_326:
      *v316 = 0;
      v322 = v45;
      v323 = v45;
      v320 = v45;
      v321 = v45;
      v319 = v45;
      v176 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v324 = 136315906;
      *&v324[4] = "operator[]";
      *&v324[12] = 1024;
      *&v324[14] = 797;
      *&v324[18] = 2048;
      *&v324[20] = v3;
      *&v324[28] = 2048;
      *&v324[30] = v46;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_327:
      LODWORD(v306[1]) = v187;
      v308 = v187;
      if (v309)
      {
        v188 = v310;
        v189 = 8 * v309;
        do
        {
          v190 = *v188++;
          (*(*v190 + 80))(v190, v308);
          v189 -= 8;
        }

        while (v189);
      }

      v41 = v292.i64[0];
      if ((v292.i64[0] & 0x3FFFFFFFCLL) != 0)
      {
        v42 = 0;
        do
        {
          v3 = 4 * v42;
          if (v41 <= 4 * v42)
          {
            goto LABEL_410;
          }

          v38 = v3 | 1;
          if (v41 <= (v3 | 1))
          {
            goto LABEL_411;
          }

          v4 = v3 | 2;
          if (v41 <= (v3 | 2))
          {
            goto LABEL_412;
          }

          v1 = v3 | 3;
          if (v41 <= (v3 | 3))
          {
            goto LABEL_413;
          }

          v191 = *(v293 + 16 * v42);
          v38 = *(v293 + 4 * v38);
          v4 = *(v293 + 4 * v4);
          v192 = *(v293 + 4 * v1);
          v41 = v306[4];
          if (v192 == -1)
          {
            if (v306[4] <= v42)
            {
              goto LABEL_416;
            }

            v200 = (*&v307[0] + 16 * v42);
            v201 = *v200;
            v202 = v200[3];
            if (v201 != -1 && v202 == -1)
            {
              v204 = v315;
              if (v315)
              {
                v205 = 0;
                do
                {
                  v206 = re::internal::GeomAttributeContainer::attributeByIndex(v314, v205);
                  re::internal::accessFaceVaryingAttributeSubmesh(v206, v207);
                  ++v205;
                }

                while (v204 != v205);
                v41 = v306[4];
              }
            }

            if (v41 <= v42)
            {
              goto LABEL_417;
            }

            v192 = -1;
          }

          else
          {
            if (v306[4] <= v42)
            {
              goto LABEL_414;
            }

            v193 = (*&v307[0] + 16 * v42);
            v194 = *v193;
            v195 = v193[3];
            if (v194 != -1 && v195 != -1)
            {
              v1 = v315;
              if (v315)
              {
                v197 = 0;
                do
                {
                  v198 = re::internal::GeomAttributeContainer::attributeByIndex(v314, v197);
                  re::internal::accessFaceVaryingAttributeSubmesh(v198, v199);
                  ++v197;
                }

                while (v1 != v197);
                v41 = v306[4];
              }
            }

            if (v41 <= v42)
            {
              goto LABEL_415;
            }
          }

          v208 = (*&v307[0] + 16 * v42);
          *v208 = v191;
          v208[1] = v38;
          v208[2] = v4;
          v208[3] = v192;
          ++v42;
          v41 = v292.i64[0];
          v37 = v324;
        }

        while (v42 < (v292.i64[0] >> 2));
      }

      re::GeomMesh::GeomMesh(&v319, 0);
      re::GeomMesh::operator=(&v319, &v306[1]);
      re::GeomMesh::setName(&v319, v306[0]);
      re::GeomMesh::freeName(v306);
      v209 = re::GeomMesh::modifyVertexPositions(&v319);
      v42 = *(&v294 + 1);
      if (DWORD2(v294))
      {
        v41 = 0;
        v3 = v210;
        while (v42 > v41)
        {
          if (v41 == v210)
          {
            goto LABEL_409;
          }

          *(v209 + 16 * v41) = *(v296 + 16 * v41);
          ++v41;
          v42 = *(&v294 + 1);
          if (v41 >= DWORD2(v294))
          {
            goto LABEL_366;
          }
        }

        goto LABEL_408;
      }

LABEL_366:
      re::GeomMesh::freeName(v306);
      re::internal::GeomAttributeManager::~GeomAttributeManager((v176 + 7));
      if (v306[2] && *&v307[0])
      {
        (*(*v306[2] + 40))(v306[2], *&v307[0]);
      }

      *v37 = 1;
      *(v37 + 1) = 0;
      *(v37 + 12) = xmmword_1E30A0560;
      *&v324[32] = 0;
      *&v324[8] = *v245.i32 * 0.001;
      *&v318[2] = 0;
      memset(v316, 0, sizeof(v316));
      re::mergeVertices(&v319, v299, v316, v324);
      *&v285[3] = 0;
      v211.i32[0] = v245.i32[0];
      v285[5] = 0;
      v285[0] = 1056964608;
      v211.f32[1] = v211.f32[0] * v211.f32[0];
      *&v285[1] = vmul_f32(v211, 0x3F0000003E800000);
      re::internal::simplifyPlanarRegions(v299, v285, v306);
      re::GeomMesh::operator=(v299, v306);
      re::GeomMesh::~GeomMesh(v306);
      if (*v316 && *&v318[2])
      {
        (*(**v316 + 40))(*v316, *&v318[2]);
      }

      re::GeomMesh::~GeomMesh(&v319);
      goto LABEL_373;
    }

LABEL_239:
    if (v247 && v251)
    {
      (*(*v247 + 40))(v247, v251);
    }

    v91 = (v91 + 6);
    if (v91 != v133)
    {
      continue;
    }

    break;
  }

  v141 = *v230;
  v142 = v305;
  if ((*v230 & 0x3F) != 0)
  {
    v143 = (*v230 >> 6) + 1;
  }

  else
  {
    v143 = *v230 >> 6;
  }

  v305 = *v230;
  v319.i64[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v300, v143, &v319);
  if (!v141 || v142 <= v141)
  {
    v148 = v301;
    v42 = v218;
    v37 = v219;
    v35 = v316;
    v38 = &v275;
    v3 = &v303;
    if (!v301)
    {
      goto LABEL_262;
    }

    goto LABEL_257;
  }

  v144 = 63;
  v145 = v305 & 0x3F;
  v42 = v218;
  v35 = v316;
  v3 = &v303;
  if ((v305 & 0x3F) != 0)
  {
    v65 = v145 == 63;
    v146 = -1 << v145;
    if (!v65)
    {
      v144 = ~v146;
    }
  }

  v37 = v219;
  v38 = &v275;
  v147 = v304;
  if (v302)
  {
    v147 = &v303;
  }

  v148 = v301;
  *&v147[v301 - 1] &= v144;
  if (v148)
  {
LABEL_257:
    v150 = v304;
    if (v302)
    {
      v150 = &v303;
    }

    do
    {
      *v150++ = 0;
      v151 = v304;
      if (v302)
      {
        v151 = &v303;
      }
    }

    while (v150 != &v151[v148]);
  }

LABEL_262:
  v261 = 0;
  ++v262;
  *v299 = 0;
  if (*v230)
  {
    v152 = 0;
    do
    {
      re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(&v291, v152);
      v41 = *v299;
      v19 = v255;
      if (v255 <= *v299)
      {
        v247 = 0;
        v322 = 0u;
        v323 = 0u;
        v320 = 0u;
        v321 = 0u;
        v319 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v306[0]) = 136315906;
        *(v4 + 4) = "operator[]";
        WORD2(v306[1]) = 1024;
        *(v4 + 14) = 789;
        WORD1(v306[2]) = 2048;
        *(v4 + 20) = v41;
        WORD2(v306[3]) = 2048;
        *(v4 + 30) = v19;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_404:
        *v324 = 0;
        v322 = 0u;
        v323 = 0u;
        v320 = 0u;
        v321 = 0u;
        v319 = 0u;
        v46 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v306[0]) = 136315906;
        *(v306 + 4) = "operator[]";
        WORD2(v306[1]) = 1024;
        *(&v306[1] + 6) = 797;
        WORD1(v306[2]) = 2048;
        *(&v306[2] + 4) = 0;
        WORD2(v306[3]) = 2048;
        *(&v306[3] + 6) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_405:
        re::internal::assertLog(6, v174, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v19, v46);
        _os_crash();
        __break(1u);
LABEL_406:
        v247 = 0;
        *(v35 + 96) = 0u;
        *(v35 + 112) = 0u;
        *(v35 + 64) = 0u;
        *(v35 + 80) = 0u;
        *(v35 + 48) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v306[0]) = 136315906;
        *(v4 + 4) = "operator[]";
        WORD2(v306[1]) = 1024;
        *(v4 + 14) = 858;
        WORD1(v306[2]) = 2048;
        *(v4 + 20) = v19;
        WORD2(v306[3]) = 2048;
        *(v4 + 30) = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_407:
        *v316 = 0;
        v322 = 0u;
        v323 = 0u;
        v320 = 0u;
        v321 = 0u;
        v319 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v299 = 136315906;
        *&v299[4] = "operator[]";
        *&v299[12] = 1024;
        *&v299[14] = 866;
        *&v299[18] = 2048;
        *&v299[20] = v19;
        *&v299[28] = 2048;
        *&v299[30] = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_408:
        *v285 = 0;
        *(v37 + 48) = 0u;
        *(v37 + 64) = 0u;
        *(v37 + 16) = 0u;
        *(v37 + 32) = 0u;
        *v37 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v316 = 136315906;
        *&v316[4] = "operator[]";
        *&v316[12] = 1024;
        *&v316[14] = 797;
        *&v316[18] = 2048;
        *&v316[20] = v41;
        v317 = 2048;
        *v318 = v42;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_409:
        *v285 = 0;
        *(v37 + 48) = 0u;
        *(v37 + 64) = 0u;
        *(v37 + 16) = 0u;
        *(v37 + 32) = 0u;
        *v37 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v316 = 136315906;
        *&v316[4] = "operator[]";
        *&v316[12] = 1024;
        *&v316[14] = 621;
        *&v316[18] = 2048;
        *&v316[20] = v3;
        v317 = 2048;
        *v318 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_410:
        *v316 = 0;
        v322 = 0u;
        v323 = 0u;
        v320 = 0u;
        v321 = 0u;
        v319 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v324 = 136315906;
        *(v37 + 4) = "operator[]";
        *&v324[12] = 1024;
        *(v37 + 14) = 797;
        *&v324[18] = 2048;
        *(v37 + 20) = v3;
        *&v324[28] = 2048;
        *(v37 + 30) = v41;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_411:
        *v316 = 0;
        v322 = 0u;
        v323 = 0u;
        v320 = 0u;
        v321 = 0u;
        v319 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v324 = 136315906;
        *&v324[4] = "operator[]";
        *&v324[12] = 1024;
        *&v324[14] = 797;
        *&v324[18] = 2048;
        *&v324[20] = v38;
        *&v324[28] = 2048;
        *&v324[30] = v41;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_412:
        *v316 = 0;
        v322 = 0u;
        v323 = 0u;
        v320 = 0u;
        v321 = 0u;
        v319 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v324 = 136315906;
        *&v324[4] = "operator[]";
        *&v324[12] = 1024;
        *&v324[14] = 797;
        *&v324[18] = 2048;
        *&v324[20] = v4;
        *&v324[28] = 2048;
        *&v324[30] = v41;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_413:
        *v316 = 0;
        v322 = 0u;
        v323 = 0u;
        v320 = 0u;
        v321 = 0u;
        v319 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v324 = 136315906;
        *&v324[4] = "operator[]";
        *&v324[12] = 1024;
        *&v324[14] = 797;
        *&v324[18] = 2048;
        *&v324[20] = v1;
        *&v324[28] = 2048;
        *&v324[30] = v41;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_414:
        *v316 = 0;
        v322 = 0u;
        v323 = 0u;
        v320 = 0u;
        v321 = 0u;
        v319 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v324 = 136315906;
        *&v324[4] = "operator[]";
        *&v324[12] = 1024;
        *&v324[14] = 797;
        *&v324[18] = 2048;
        *&v324[20] = v42;
        *&v324[28] = 2048;
        *&v324[30] = v41;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_415:
        *v316 = 0;
        v322 = 0u;
        v323 = 0u;
        v320 = 0u;
        v321 = 0u;
        v319 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v324 = 136315906;
        *&v324[4] = "operator[]";
        *&v324[12] = 1024;
        *&v324[14] = 789;
        *&v324[18] = 2048;
        *&v324[20] = v42;
        *&v324[28] = 2048;
        *&v324[30] = v41;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_416:
        *v316 = 0;
        v322 = 0u;
        v323 = 0u;
        v320 = 0u;
        v321 = 0u;
        v319 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v324 = 136315906;
        *&v324[4] = "operator[]";
        *&v324[12] = 1024;
        *&v324[14] = 797;
        *&v324[18] = 2048;
        *&v324[20] = v42;
        *&v324[28] = 2048;
        *&v324[30] = v41;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_417:
        *v316 = 0;
        v322 = 0u;
        v323 = 0u;
        v320 = 0u;
        v321 = 0u;
        v319 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v324 = 136315906;
        *&v324[4] = "operator[]";
        *&v324[12] = 1024;
        *&v324[14] = 789;
        *&v324[18] = 2048;
        *&v324[20] = v42;
        *&v324[28] = 2048;
        *&v324[30] = v41;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v155.i64[0] = v153;
      v155.i64[1] = v154;
      v127 = vmulq_f32(v155, v155);
      v156 = sqrtf(v127.n128_f32[2] + vaddv_f32(v127.n128_u64[0]));
      v127.n128_u32[0] = *&v257[2 * *v299];
      if ((v156 * v127.n128_f32[0]) >= v129)
      {
        if ((v156 - (v156 * v127.n128_f32[0])) > v129)
        {
          if (v127.n128_f32[0] > 0.5)
          {
            v19 = *v299 >> 6;
            v3 = v301;
            if (v301 <= v19)
            {
              goto LABEL_406;
            }

            v3 = &v303;
            if (v302)
            {
              v157 = &v303;
            }

            else
            {
              v157 = v304;
            }

            *&v157[v19] |= 1 << v299[0];
            goto LABEL_276;
          }

LABEL_275:
          re::DynamicArray<int>::add(v260, v299);
        }
      }

      else if (v127.n128_f32[0] < 0.5)
      {
        goto LABEL_275;
      }

LABEL_276:
      v152 = *v299 + 1;
      *v299 = v152;
    }

    while (v152 < *v230);
  }

  if (v253 && v257)
  {
    (*(*v253 + 40))(v253, v257);
  }

  v158 = *v217;
  v149 = v261 != v158;
  if (v261 != v158)
  {
    re::GeomMesh::GeomMesh(&v253, 0);
    if (v261)
    {
      re::internal::extractMeshFromFaceSubset(v37, v263, v261, *(v216 + 3), &v319);
      re::GeomMesh::operator=(&v253, &v319);
      re::GeomMesh::~GeomMesh(&v319);
    }

    re::GeomMesh::GeomMesh(&v247, 0);
    v159 = v304;
    if (v302)
    {
      v159 = &v303;
    }

    if (v301)
    {
      v160 = 0;
      v161 = 8 * v301;
      do
      {
        v162 = *v159++;
        v163 = vcnt_s8(v162);
        v163.i16[0] = vaddlv_u8(v163);
        v160 += v163.u32[0];
        v161 -= 8;
      }

      while (v161);
      if (v160)
      {
        v223 = v149;
        v164 = v267;
        v165 = v265;
        v297[0] = v37;
        v297[1] = re::GeomMesh::accessVertexPositions(v37);
        v298 = v167;
        v291 = 0uLL;
        v292.i64[0] = 0;
        v296 = 0;
        v168.n128_u32[3] = 0;
        v293 = 0u;
        v294 = 0u;
        v292.i32[2] = 0;
        v295 = 0;
        v290 = 0;
        v288 = 0;
        v286 = 0;
        v287 = 0;
        v289 = 0;
        if (v165)
        {
          v222 = v164 + 6 * v165;
          v38 = &v291;
          v41 = &re::kInvalidMeshIndex;
          while (1)
          {
            v169 = *(v164 + 2);
            v229 = v164;
            v170 = *v164;
            v168.n128_u32[0] = v170 << 16;
            v168.n128_u32[1] = *v164;
            v168.n128_u64[0] = vmul_f32(*v240.f32, vcvt_f32_s32(vshr_n_s32(v168.n128_u64[0], 0x10uLL)));
            v168.n128_f32[2] = *v245.i32 * v169;
            *v324 = vaddq_f32(v243, v168);
            *&v324[16] = vaddq_f32(v240, *v324);
            v226 = v166 & 0xFFFF000000000000 | v170 | (v169 << 32);
            re::internal::VoxelGrid::faces(v306, &v279, v226);
            if (v306[2])
            {
              break;
            }

LABEL_308:
            if (v306[0] && v306[4])
            {
              (*(*v306[0] + 40))(v306[0], v306[4]);
            }

            v166 = v226;
            v164 = (v229 + 6);
            if (v229 + 6 == v222)
            {
              goto LABEL_312;
            }
          }

          v171 = v306[4];
          v231 = &v306[4][4 * v306[2]];
          while (1)
          {
            v172 = *v171;
            v19 = v172 >> 6;
            v3 = v301;
            if (v301 <= v172 >> 6)
            {
              goto LABEL_407;
            }

            v173 = v304;
            if (v302)
            {
              v173 = &v303;
            }

            if ((*&v173[v19] >> v172))
            {
              v234 = v171;
              v321 = 0u;
              v322 = 0u;
              v319 = 0u;
              v320 = 0u;
              v3 = re::internal::FaceEvaluator::faceVertexPositions(v297, v172, &v319);
              v42 = 2;
              do
              {
                if (re::internal::triangleIntersectsAABB(&v319, &v319 + v42 - 1, &v319 + v42, v324, &v286))
                {
                  v37 = v290;
                  v46 = v288;
                  *v299 = DWORD2(v294);
                  v19 = v288 - 2;
                  if (v288 != 2)
                  {
                    v4 = 0;
                    v175 = v290;
                    do
                    {
                      if (v46 == v4)
                      {
                        goto LABEL_325;
                      }

                      re::DynamicArray<re::Vector3<float>>::add((&v293 + 8), v175);
                      re::DynamicArray<int>::add(&v291, v299);
                      *v316 = v4 + *v299 + 1;
                      re::DynamicArray<int>::add(&v291, v316);
                      *v316 = v4 + *v299 + 2;
                      re::DynamicArray<int>::add(&v291, v316);
                      re::DynamicArray<int>::add(&v291, &re::kInvalidMeshIndex);
                      ++v175;
                      v1 = ++v4;
                    }

                    while (v19 != v4);
                    v35 = &v319;
                    if (v46 <= 1)
                    {
                      goto LABEL_405;
                    }
                  }

                  re::DynamicArray<re::Vector3<float>>::add((&v293 + 8), (v37 + 16 * v19));
                  v168 = re::DynamicArray<re::Vector3<float>>::add((&v293 + 8), (v37 + 16 * v46 - 16));
                }

                ++v42;
              }

              while (v42 != v3);
              v171 = v234;
            }

            v171 += 4;
            if (v171 == v231)
            {
              goto LABEL_308;
            }
          }
        }

LABEL_312:
        re::GeomMesh::GeomMesh(v299, 0);
        if ((v292.i64[0] & 0x3FFFFFFFCLL) != 0)
        {
          v176 = v306;
          bzero(v306, 0x2D0uLL);
          re::DynamicArray<re::BlendNode>::setCapacity(&v306[2], 1uLL);
          ++LODWORD(v306[5]);
          re::internal::GeomAttributeManager::GeomAttributeManager((v307 + 8));
          re::internal::GeomAttributeManager::addAttribute((v307 + 8), "vertexPosition", 1, 7);
          v178 = v292.i64[0];
          v179 = v292.i64[0] >> 2;
          if (LODWORD(v306[4]) > (v292.i64[0] >> 2))
          {
            v180 = v315;
            if (v315)
            {
              v181 = 0;
              do
              {
                v182 = re::internal::GeomAttributeContainer::attributeByIndex(v314, v181);
                re::internal::accessFaceVaryingAttributeSubmesh(v182, v183);
                ++v181;
              }

              while (v180 != v181);
            }
          }

          re::DynamicArray<re::GeomCell4>::resize(&v306[2], (v178 >> 2));
          v311 = v179;
          v37 = v324;
          if (v312)
          {
            v184 = v313;
            v185 = 8 * v312;
            do
            {
              v186 = *v184++;
              (*(*v186 + 80))(v186, v311);
              v185 -= 8;
            }

            while (v185);
          }

          v187 = DWORD2(v294);
          if (LODWORD(v306[1]) > DWORD2(v294) && LODWORD(v306[4]) && (LODWORD(v306[4]) - 1) > v306[4])
          {
              ;
            }
          }

          goto LABEL_327;
        }

LABEL_373:
        if (v286 && v290)
        {
          (*(*v286 + 40))(v286, v290);
        }

        v42 = v218;
        v37 = v219;
        if (*(&v293 + 1))
        {
          if (v296)
          {
            (*(**(&v293 + 1) + 40))(*(&v293 + 1), v296);
          }

          v296 = 0;
          v294 = 0uLL;
          *(&v293 + 1) = 0;
          ++v295;
        }

        if (v291.i64[0] && v293)
        {
          (*(*v291.i64[0] + 40))(v291.i64[0], v293);
        }

        re::GeomMesh::operator=(&v247, v299);
        re::GeomMesh::~GeomMesh(v299);
        bzero(&v319, 0x2D0uLL);
        v320.i64[0] = v46;
        re::DynamicArray<re::BlendNode>::setCapacity(&v320, 1uLL);
        ++v321.i32[2];
        re::internal::GeomAttributeManager::GeomAttributeManager(&v322.u32[2]);
        re::internal::GeomAttributeManager::addAttribute(&v322.u32[2], "vertexPosition", 1, 7);
        re::GeomMeshBuilder::appendMesh(&v319, &v253);
        re::GeomMeshBuilder::appendMesh(&v319, &v247);
        re::GeomMesh::operator=(&v253, &v319.i32[2]);
        re::GeomMesh::setName(&v253, v319.i64[0]);
        re::GeomMesh::freeName(&v319);
        re::GeomMesh::freeName(&v319);
        re::internal::GeomAttributeManager::~GeomAttributeManager(&v322.u32[2]);
        if (v320.i64[0] && v322.i64[0])
        {
          (*(*v320.i64[0] + 40))(v320.i64[0], v322.i64[0]);
        }

        v149 = v223;
      }
    }

    if (v37 == v272)
    {
      re::transform(&v253, &v275);
    }

    re::GeomMesh::copy(&v253, v42);
    re::GeomMesh::~GeomMesh(&v247);
    re::GeomMesh::~GeomMesh(&v253);
  }

  if (v300 && (v302 & 1) == 0)
  {
    (*(*v300 + 40))(v300, v304);
  }

  if (v260[0] && v263)
  {
    (*(*v260[0] + 40))(v260[0], v263);
  }

LABEL_396:
  if (v264[0] && v267)
  {
    (*(*v264[0] + 40))(v127);
  }

  if (v268[0] && v271)
  {
    (*(*v268[0] + 40))(v127);
  }

  re::GeomMesh::~GeomMesh(v272);
  re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::deinit(v282);
  return v149;
}

uint64_t re::internal::VoxelGrid::accumulateAreaProjectionsOfFaceInBox(int a1, unint64_t a2, float32x4_t *a3, float *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *a2;
  v7.i32[3] = 0;
  v8 = vminnmq_f32(v7, xmmword_1E306D4A0);
  v9 = *(a2 + 16);
  v8.i32[3] = 0;
  v10 = v9;
  v10.i32[3] = 0;
  v11 = vmaxnmq_f32(v7, xmmword_1E306D4B0);
  v11.i32[3] = 0;
  v12 = (a2 + 32);
  v13 = *(a2 + 32);
  v14 = vminnmq_f32(v8, v10);
  v14.i32[3] = 0;
  v15 = v13;
  v15.i32[3] = 0;
  v16 = vmaxnmq_f32(v11, v10);
  v17 = vminnmq_f32(v14, v15);
  v16.i32[3] = 0;
  v18 = vmaxnmq_f32(v16, v15);
  if (a1 == 4)
  {
    v19 = *(a2 + 48);
    v17.i32[3] = 0;
    v19.i32[3] = 0;
    v17 = vminnmq_f32(v17, v19);
    v18.i32[3] = 0;
    v18 = vmaxnmq_f32(v18, v19);
  }

  v42 = 0;
  v39[1] = 0;
  v40 = 0;
  v39[0] = 0;
  v41 = 0;
  v20 = vcgtq_f32(*a3, v17);
  v20.i32[3] = v20.i32[2];
  if ((vmaxvq_u32(v20) & 0x80000000) != 0 || (v21 = a3[1], v22 = vcgtq_f32(v17, v21), v22.i32[3] = v22.i32[2], (vmaxvq_u32(v22) & 0x80000000) != 0) || (v23 = vcgtq_f32(*a3, v18), v23.i32[3] = v23.i32[2], (vmaxvq_u32(v23) & 0x80000000) != 0) || (v24 = vcgtq_f32(v18, v21), v24.i32[3] = v24.i32[2], (vmaxvq_u32(v24) & 0x80000000) != 0))
  {
    if (a1 == 4)
    {
      v30 = *v12;
      v43 = *a2;
      v44 = v30;
      v45 = *(a2 + 48);
      v46 = 0;
      v47 = 0;
      re::internal::VoxelGrid::accumulateAreaProjectionsOfFaceInBox(3);
      re::internal::VoxelGrid::accumulateAreaProjectionsOfFaceInBox(3);
    }

    else if (re::internal::triangleIntersectsAABB(a2, (a2 + 16), v12, a3, v39) && v40 >= 3)
    {
      v31 = v42;
      v32 = v42 + 2;
      v33 = v40 - 2;
      v34.i64[0] = 0x3F0000003F000000;
      v34.i64[1] = 0x3F0000003F000000;
      do
      {
        v35 = vsubq_f32(v32[-1], *v31);
        v36 = vsubq_f32(*v32, *v31);
        v37 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), vnegq_f32(v35)), v36, vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL)), v34);
        if (v37.f32[2] <= 0.0)
        {
          a4[1] = a4[1] - v37.f32[2];
        }

        else
        {
          *a4 = v37.f32[2] + *a4;
        }

        if (v37.f32[0] <= 0.0)
        {
          a4[3] = a4[3] - v37.f32[0];
        }

        else
        {
          a4[2] = v37.f32[0] + a4[2];
        }

        if (v37.f32[1] <= 0.0)
        {
          a4[5] = a4[5] - v37.f32[1];
        }

        else
        {
          a4[4] = v37.f32[1] + a4[4];
        }

        ++v32;
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    v25 = v6;
    if (a1 != 3)
    {
      v25 = *(a2 + 48);
    }

    v26 = vsubq_f32(v13, v6);
    v27 = vsubq_f32(v9, v25);
    v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v27)), v26, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL));
    v26.i64[0] = 0x3F0000003F000000;
    v26.i64[1] = 0x3F0000003F000000;
    v29 = vmulq_f32(v28, v26);
    if (v29.f32[2] <= 0.0)
    {
      a4[1] = a4[1] - v29.f32[2];
    }

    else
    {
      *a4 = v29.f32[2] + *a4;
    }

    if (v29.f32[0] <= 0.0)
    {
      a4[3] = a4[3] - v29.f32[0];
    }

    else
    {
      a4[2] = v29.f32[0] + a4[2];
    }

    if (v29.f32[1] <= 0.0)
    {
      a4[5] = a4[5] - v29.f32[1];
    }

    else
    {
      a4[4] = v29.f32[1] + a4[4];
    }
  }

  result = v39[0];
  if (v39[0])
  {
    if (v42)
    {
      return (*(*v39[0] + 40))();
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::internal::VoxelGrid::build(re::GeomMesh const&,re::GeomMeshBVHTree const&,float,re::internal::VoxelGrid&)::{lambda(re::AABB const&,re::GeomMeshBVHTree::Node const&,re::DynamicArray<unsigned int> &)#1},void ()(re::AABB const&,re::GeomMeshBVHTree::Node const&,re::DynamicArray<unsigned int> &)>::operator()(uint64_t result, float32x4_t *a2, float32x4_t *a3, void *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = vcgtq_f32(*a2, a3[2]);
  v6.i32[3] = v6.i32[2];
  if ((vmaxvq_u32(v6) & 0x80000000) != 0)
  {
    return result;
  }

  v9 = a2 + 1;
  v10 = vcgtq_f32(a3[1], a2[1]);
  v10.i32[3] = v10.i32[2];
  if ((vmaxvq_u32(v10) & 0x80000000) != 0)
  {
    return result;
  }

  v12 = result;
  v13 = a3->i64[1];
  if (v13)
  {
    (*(**(*(result + 24) + 32) + 16))(*(*(result + 24) + 32), a2, v13, a4);
    v14 = *(**(*(v12 + 24) + 32) + 16);

    return v14();
  }

  v15 = a3->u32[0];
  v37 = v15;
  v16 = *(result + 8);
  v17 = *(v16 + 40);
  if (v17 <= v15)
  {
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 797;
    v43 = 2048;
    v44 = v15;
    v45 = 2048;
    v46 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v18 = (*(v16 + 56) + 16 * v15);
  v17 = *v18;
  v19 = *(result + 16);
  v15 = *(v19 + 8);
  if (v15 <= v17)
  {
LABEL_22:
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 613;
    v43 = 2048;
    v44 = v17;
    v45 = 2048;
    v46 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_23;
  }

  v4 = v18[1];
  if (v15 <= v4)
  {
LABEL_23:
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 613;
    v43 = 2048;
    v44 = v4;
    v45 = 2048;
    v46 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v20 = v18[2];
  if (v15 <= v20)
  {
LABEL_24:
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v36 = v20;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 613;
    v43 = 2048;
    v44 = v36;
    v45 = 2048;
    v46 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  v5 = v18[3];
  v21 = (*v19 + 16 * v17);
  v22 = (*v19 + 16 * v4);
  v23 = (*v19 + 16 * v20);
  result = re::triangleOverlapsBox(v21, v22, v23, a2, v9);
  if (result)
  {
    return re::DynamicArray<int>::add(a4, &v37);
  }

  if (v5 != -1)
  {
    v24 = *(v12 + 16);
    v12 = *(v24 + 8);
    if (v12 > v5)
    {
      result = re::triangleOverlapsBox(v22, v23, (*v24 + 16 * v5), a2, v9);
      if ((result & 1) == 0)
      {
        goto LABEL_15;
      }

      return re::DynamicArray<int>::add(a4, &v37);
    }

LABEL_25:
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 613;
    v43 = 2048;
    v44 = v5;
    v45 = 2048;
    v46 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_15:
  v25 = vsubq_f32(*v22, *v21);
  v26 = vsubq_f32(*v23, *v21);
  v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v25)), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
  v28 = vmulq_f32(v27, v27);
  v29 = v28.f32[1] + (v28.f32[2] + v28.f32[0]);
  if (v29 > 0.0)
  {
    v30 = v29;
    v31 = vrsqrte_f32(LODWORD(v29));
    v32 = vmul_f32(v31, vrsqrts_f32(LODWORD(v30), vmul_f32(v31, v31)));
    v33 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL), vmul_f32(v32, vrsqrts_f32(LODWORD(v30), vmul_f32(v32, v32))).f32[0]);
    v34 = vcgt_f32(vdup_n_s32(0x3A83126Fu), vabs_f32(*v33.f32));
    v35 = (v34.i8[0] & 1) - v34.i32[1];
    if (fabsf(v33.f32[2]) < 0.001)
    {
      ++v35;
    }

    if (v35 == 2)
    {
      return re::DynamicArray<int>::add(a4, &v37);
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::internal::VoxelGrid::build(re::GeomMesh const&,re::GeomMeshBVHTree const&,float,re::internal::VoxelGrid&)::{lambda(re::AABB const&,re::GeomMeshBVHTree::Node const&,re::DynamicArray<unsigned int> &)#1},void ()(re::AABB const&,re::GeomMeshBVHTree::Node const&,re::DynamicArray<unsigned int> &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D021F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::internal::VoxelGrid::build(re::GeomMesh const&,re::GeomMeshBVHTree const&,float,re::internal::VoxelGrid&)::{lambda(re::AABB const&,re::GeomMeshBVHTree::Node const&,re::DynamicArray<unsigned int> &)#1},void ()(re::AABB const&,re::GeomMeshBVHTree::Node const&,re::DynamicArray<unsigned int> &)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D021F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(uint64_t result, uint64_t a2, __int16 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = 0xBF58476D1CE4E5B9 * (((v4 << 16) | (v3 << 32) | v5) ^ (((v4 << 16) | (v3 << 32) | v5) >> 30));
  v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
  v8 = *a2;
  v9 = 0x7FFFFFFF;
  if (*a2 && (v8 = v7 % *(a2 + 24), v10 = *(*(a2 + 8) + 4 * v8), v10 != 0x7FFFFFFF))
  {
    v12 = v4;
    v13 = *(a2 + 16);
    v9 = 0x7FFFFFFF;
    v11 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v10;
      v15 = v13 + 72 * v10;
      v17 = *(v15 + 4);
      v16 = v15 + 4;
      if (v17 == v3 && *(v16 + 2) == v12 && *(v16 + 4) == v5)
      {
        break;
      }

      v10 = *(v13 + 72 * v10) & 0x7FFFFFFF;
      v11 = v14;
      if (v10 == 0x7FFFFFFF)
      {
        v11 = v14;
        goto LABEL_11;
      }
    }

    v9 = v10;
  }

  else
  {
    v11 = 0x7FFFFFFF;
  }

LABEL_11:
  *result = v7;
  *(result + 8) = v8;
  *(result + 12) = v9;
  *(result + 16) = v11;
  return result;
}

uint64_t re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::allocEntry(a1, *(v17 + 32) % *(a1 + 24));
                v19 = *(v17 - 28);
                *(v18 + 8) = *(v17 - 24);
                *(v18 + 4) = v19;
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 16) = 0;
                v20 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 24) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v22;
                ++*(v17 + 8);
                ++*(v18 + 40);
                *(v18 + 56) = *(v17 + 24);
              }

              v17 += 72;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 72 * v5);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 72 * v5);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + 72 * v5;
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v5;
  *(v26 + 64) = a3;
  ++*(a1 + 28);
  return v23 + 72 * v5;
}

double re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 72;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void *re::internal::VoxelGrid::fetchVoxelsWithOccupancyRange(void *result, _anonymous_namespace_ *this, float a3, float a4)
{
  v7 = result;
  *(this + 2) = 0;
  ++*(this + 6);
  v8 = *(result + 15);
  if (*(this + 1) < v8)
  {
    result = re::DynamicArray<re::internal::Voxel>::setCapacity(this, v8);
  }

  v9 = *(v7 + 64);
  if (v9)
  {
    v10 = 0;
    v11 = *(v7 + 48);
    while (1)
    {
      v12 = *v11;
      v11 += 18;
      if (v12 < 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        LODWORD(v10) = *(v7 + 64);
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  while (v10 != v9)
  {
    v13 = *(v7 + 48);
    v14 = *(v13 + 72 * v10 + 56);
    if (v14 > a3 && v14 <= a4)
    {
      result = re::DynamicArray<re::internal::Voxel>::add(this, (v13 + 72 * v10 + 4));
      LODWORD(v9) = *(v7 + 64);
    }

    if (v9 <= v10 + 1)
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = v9;
    }

    while (v16 - 1 != v10)
    {
      LODWORD(v10) = v10 + 1;
      if ((*(*(v7 + 48) + 72 * v10) & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    LODWORD(v10) = v16;
LABEL_22:
    ;
  }

  return result;
}

float re::internal::VoxelGrid::occupancy(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = WORD2(a2);
  re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(v6, a1 + 32, &v4);
  result = 0.0;
  if (v7 != 0x7FFFFFFF)
  {
    return *(*(a1 + 48) + 72 * v7 + 56);
  }

  return result;
}

uint64_t re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::add(uint64_t a1, __int16 *a2, _BYTE *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  result = re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v8, a1, a2);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::allocEntry(a1, v9, v8);
    v7 = *a2;
    *(result + 8) = a2[2];
    *(result + 4) = v7;
    *(result + 10) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

void *re::DynamicArray<re::internal::Voxel>::add(void *this, int *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::internal::Voxel>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 6 * v4;
  v6 = *a2;
  *(v5 + 4) = *(a2 + 2);
  *v5 = v6;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::internal::Voxel>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 6uLL))
        {
          v2 = 6 * a2;
          result = (*(*result + 32))(result, 6 * a2, 2);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 6 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 6, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::Voxel>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::Voxel>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::internal::Voxel>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::Voxel>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(uint64_t result, uint64_t a2, __int16 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = 0xBF58476D1CE4E5B9 * (((v4 << 16) | (v3 << 32) | v5) ^ (((v4 << 16) | (v3 << 32) | v5) >> 30));
  v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
  v8 = *a2;
  v9 = 0x7FFFFFFF;
  if (*a2 && (v8 = v7 % *(a2 + 24), v10 = *(*(a2 + 8) + 4 * v8), v10 != 0x7FFFFFFF))
  {
    v12 = v4;
    v13 = *(a2 + 16);
    v9 = 0x7FFFFFFF;
    v11 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v10;
      v15 = v13 + 24 * v10;
      v17 = *(v15 + 4);
      v16 = v15 + 4;
      if (v17 == v3 && *(v16 + 2) == v12 && *(v16 + 4) == v5)
      {
        break;
      }

      v10 = *(v13 + 24 * v10) & 0x7FFFFFFF;
      v11 = v14;
      if (v10 == 0x7FFFFFFF)
      {
        v11 = v14;
        goto LABEL_11;
      }
    }

    v9 = v10;
  }

  else
  {
    v11 = 0x7FFFFFFF;
  }

LABEL_11:
  *result = v7;
  *(result + 8) = v8;
  *(result + 12) = v9;
  *(result + 16) = v11;
  return result;
}

uint64_t re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 10;
            do
            {
              if ((*(v17 - 10) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::allocEntry(a1, *(v17 + 6) % *(a1 + 24));
                v19 = *(v17 - 6);
                *(v18 + 8) = *(v17 - 2);
                *(v18 + 4) = v19;
                *(v18 + 10) = *v17;
              }

              v17 += 24;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 24 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 24 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 24 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 16) = a3;
  ++*(a1 + 28);
  return v20 + 24 * v5;
}

uint64_t re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(uint64_t a1, __int16 *a2, _BYTE *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  result = re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v9, a1, a2);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::allocEntry(a1, v10, v9);
    v8 = *a2;
    *(result + 8) = a2[2];
    *(result + 4) = v8;
    *(result + 10) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 24 * v7 + 10) = *a3;
  }

  return result;
}

uint64_t re::internal::VoxelGrid::faces(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = WORD2(a3);
  result = re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(v9, a2 + 32, &v7);
  if (v10 == 0x7FFFFFFF)
  {
    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = (*(a2 + 48) + 72 * v10 + 16);

    return re::DynamicArray<float>::DynamicArray(a1, v6);
  }

  return result;
}

uint64_t re::internal::FaceEvaluator::faceVertexPositions(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  v3 = &v18;
  v23 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(*a1 + 40);
  if (v5 <= a2)
  {
LABEL_8:
    *&v9 = 0;
    v3[4] = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    v13 = 797;
    v14 = 2048;
    v15 = v4;
    v16 = 2048;
    v17 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = 0;
  v9 = *(*(*a1 + 56) + 16 * a2);
  v7 = 3;
  if (HIDWORD(v9) != -1)
  {
    v7 = 4;
  }

  do
  {
    v4 = *(&v9 + v6);
    v5 = *(a1 + 16);
    if (v5 <= v4)
    {
      v22 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v10 = 136315906;
      v11 = "operator[]";
      v12 = 1024;
      v13 = 613;
      v14 = 2048;
      v15 = v4;
      v16 = 2048;
      v17 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_8;
    }

    *a3++ = *(*(a1 + 8) + 16 * v4);
    ++v6;
  }

  while (v7 != v6);
  return v7;
}

uint64_t re::internal::simplifyPlanarRegions@<X0>(unsigned int *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v366 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 16);
  v239 = 0;
  v237 = 0;
  v236[0] = 0;
  v236[1] = 0;
  v238 = 0;
  v235 = 0;
  v232[1] = 0;
  v233 = 0;
  v232[0] = 0;
  v234 = 0;
  v231 = 0;
  memset(v230, 0, 44);
  v229 = 0;
  v226[1] = 0;
  v227 = 0;
  v226[0] = 0;
  v228 = 0;
  re::GeomConnectivityManifold::GeomConnectivityManifold(&v259);
  v289 = 0;
  v288 = 0;
  v291 = 0;
  v290 = 0;
  v310 = 0;
  v292 = 0u;
  v293 = 0u;
  v294 = 0;
  v295 = 0u;
  v296 = 0u;
  v297 = 0;
  v298 = 0u;
  v299 = 0u;
  v300 = 0;
  v301 = 0u;
  v302 = 0u;
  v303 = 0;
  v304 = 0u;
  v305 = 0u;
  v306 = 0;
  v307 = 0u;
  v308 = 0u;
  v309 = 0;
  v8 = re::GeomMesh::accessVertexPositions(a1);
  v10 = v9;
  v11 = a1[10];
  LODWORD(v247[0]) = 0;
  re::DynamicArray<float>::resize(&v292 + 1, v11, v247, v12);
  v247[0] = 0uLL;
  re::DynamicArray<re::Vector3<float>>::resize(&v298 + 1, v11, v247);
  v247[0] = 0uLL;
  re::DynamicArray<re::Vector3<float>>::resize(&v301 + 1, v11, v247);
  re::DynamicArray<unsigned int>::resize(&v288, v11, &re::kInvalidMeshIndex);
  v208 = a1;
  v203 = v7;
  if (v7)
  {
    v13 = re::internal::GeomAttributeManager::attributeByName((a1 + 16), v7);
    v14 = 0xFFFFFFFFLL;
    if (v13)
    {
      i = re::GeomAttribute::accessValues<int>(v13);
      v4 = v16;
      LODWORD(v247[0]) = -1;
      re::DynamicArray<unsigned int>::resize(&v295 + 1, v11, v247);
      v17 = 0;
      v14 = v4;
    }

    else
    {
      i = 0;
      v17 = 1;
    }

    v18 = a1;
    if (v11)
    {
LABEL_8:
      v19 = 0;
      v20 = 0;
      __asm { FMOV            V0.4S, #3.0 }

      v25.i64[0] = 0x3F0000003F000000;
      v25.i64[1] = 0x3F0000003F000000;
      __asm { FMOV            V2.4S, #0.25 }

      while (1)
      {
        v7 = *(v18 + 5);
        if (v7 <= v20)
        {
          goto LABEL_520;
        }

        v27 = (*(v18 + 7) + v19);
        v4 = *v27;
        if (v4 >= v10)
        {
          break;
        }

        v5 = v27[1];
        if (v5 >= v10)
        {
          goto LABEL_522;
        }

        v28 = v27[2];
        if (v28 >= v10)
        {
          goto LABEL_523;
        }

        v7 = v27[3];
        if (v7 == -1)
        {
          v7 = *(&v302 + 1);
          if (*(&v302 + 1) <= v20)
          {
            goto LABEL_544;
          }

          *(v304 + 16 * v20) = vdivq_f32(vaddq_f32(vaddq_f32(*(v8 + 16 * v4), *(v8 + 16 * v5)), *(v8 + 16 * v28)), _Q0);
          v31 = *(v8 + 16 * v4);
          v29 = vsubq_f32(*(v8 + 16 * v5), v31);
          v30 = vsubq_f32(*(v8 + 16 * v28), v31);
        }

        else
        {
          if (v7 >= v10)
          {
            goto LABEL_532;
          }

          v3 = *(&v302 + 1);
          if (*(&v302 + 1) <= v20)
          {
            goto LABEL_533;
          }

          *(v304 + 16 * v20) = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*(v8 + 16 * v4), *(v8 + 16 * v5)), *(v8 + 16 * v28)), *(v8 + 16 * v7)), _Q2);
          v29 = vsubq_f32(*(v8 + 16 * v5), *(v8 + 16 * v7));
          v30 = vsubq_f32(*(v8 + 16 * v28), *(v8 + 16 * v4));
        }

        v7 = *(&v293 + 1);
        if (*(&v293 + 1) <= v20)
        {
          goto LABEL_527;
        }

        v32 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), vnegq_f32(v29)), v30, vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL)), v25);
        v33 = vmulq_f32(v32, v32);
        v34 = v33.f32[1] + (v33.f32[2] + v33.f32[0]);
        v35 = sqrtf(v34);
        *(v295 + 4 * v20) = v35;
        if (v35 > 0.0)
        {
          v7 = *(&v299 + 1);
          if (*(&v299 + 1) <= v20)
          {
            goto LABEL_536;
          }

          v36 = v34;
          v37 = vrsqrte_f32(LODWORD(v34));
          v38 = vmul_f32(v37, vrsqrts_f32(LODWORD(v36), vmul_f32(v37, v37)));
          *(v301 + 16 * v20) = vmulq_n_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vmul_f32(v38, vrsqrts_f32(LODWORD(v36), vmul_f32(v38, v38))).f32[0]);
        }

        if ((v17 & 1) == 0)
        {
          if (v14 <= v20)
          {
            goto LABEL_537;
          }

          v7 = *(&v296 + 1);
          if (*(&v296 + 1) <= v20)
          {
LABEL_538:
            *v250 = 0;
            v248 = 0u;
            v249 = 0u;
            memset(v247, 0, sizeof(v247));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 789;
            *&v318[18] = 2048;
            *&v318[20] = v20;
            *&v318[28] = 2048;
            *&v318[30] = v7;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_539:
            *v311 = 0;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v256 = 136315906;
            *&v256[4] = "operator[]";
            *&v256[12] = 1024;
            *&v256[14] = 789;
            *&v256[18] = 2048;
            *&v256[20] = v3;
            v257 = 2048;
            *v258 = v7;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_540:
            *v311 = 0;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v256 = 136315906;
            *&v256[4] = "operator[]";
            *&v256[12] = 1024;
            *&v256[14] = 789;
            *&v256[18] = 2048;
            *&v256[20] = v7;
            v257 = 2048;
            *v258 = i;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_541:
            *v311 = 0;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v256 = 136315906;
            *&v256[4] = "operator[]";
            *&v256[12] = 1024;
            *&v256[14] = 789;
            *&v256[18] = 2048;
            *&v256[20] = v11;
            v257 = 2048;
            *v258 = i;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_542:
            *v250 = 0;
            v248 = 0u;
            v249 = 0u;
            memset(v247, 0, sizeof(v247));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 613;
            *&v318[18] = 2048;
            *&v318[20] = v20;
            *&v318[28] = 2048;
            *&v318[30] = v20;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_543:
            *v250 = 0;
            v248 = 0u;
            v249 = 0u;
            memset(v247, 0, sizeof(v247));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 789;
            *&v318[18] = 2048;
            *&v318[20] = v7;
            *&v318[28] = 2048;
            *&v318[30] = v3;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_544:
            *v250 = 0;
            v248 = 0u;
            v249 = 0u;
            memset(v247, 0, sizeof(v247));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 789;
            *&v318[18] = 2048;
            *&v318[20] = v20;
            *&v318[28] = 2048;
            *&v318[30] = v7;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_545:
            *v250 = 0;
            v248 = 0u;
            v249 = 0u;
            memset(v247, 0, sizeof(v247));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 613;
            *&v318[18] = 2048;
            *&v318[20] = v20;
            *&v318[28] = 2048;
            *&v318[30] = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_546:
            *v250 = 0;
            v248 = 0u;
            v249 = 0u;
            memset(v247, 0, sizeof(v247));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 789;
            *&v318[18] = 2048;
            *&v318[20] = v7;
            *&v318[28] = 2048;
            *&v318[30] = v3;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_547:
            *v250 = 0;
            v248 = 0u;
            v249 = 0u;
            memset(v247, 0, sizeof(v247));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 797;
            *&v318[18] = 2048;
            *&v318[20] = v7;
            *&v318[28] = 2048;
            *&v318[30] = v20;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_548:
            v242 = 0;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 797;
            *&v318[18] = 2048;
            *&v318[20] = v7;
            *&v318[28] = 2048;
            *&v318[30] = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_549:
            v242 = 0;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 613;
            *&v318[18] = 2048;
            *&v318[20] = v10;
            *&v318[28] = 2048;
            *&v318[30] = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_550:
            v242 = 0;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 613;
            *&v318[18] = 2048;
            *&v318[20] = v7;
            *&v318[28] = 2048;
            *&v318[30] = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_551:
            v242 = 0;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 613;
            *&v318[18] = 2048;
            *&v318[20] = i;
            *&v318[28] = 2048;
            *&v318[30] = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_552:
            *v355 = 0;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v358 = 136315906;
            *&v358[4] = "operator[]";
            *&v358[12] = 1024;
            *&v358[14] = 797;
            *&v358[18] = 2048;
            *&v358[20] = v20;
            v359 = 2048;
            *v360 = v7;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_553:
            v242 = 0;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 613;
            *&v318[18] = 2048;
            *&v318[20] = v5;
            *&v318[28] = 2048;
            *&v318[30] = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_554:
            v241 = 0;
            v364 = 0u;
            v365 = 0u;
            v362 = 0u;
            v363 = 0u;
            v361 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v311 = 136315906;
            *&v311[4] = "operator[]";
            v312 = 1024;
            v313 = 789;
            v314 = 2048;
            v315 = v7;
            v316 = 2048;
            v317 = v20;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_555:
            v241 = 0;
            v364 = 0u;
            v365 = 0u;
            v362 = 0u;
            v363 = 0u;
            v361 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v311 = 136315906;
            *&v311[4] = "operator[]";
            v312 = 1024;
            v313 = 613;
            v314 = 2048;
            v315 = v7;
            v316 = 2048;
            v317 = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_556:
            *v256 = 0;
            v364 = 0u;
            v365 = 0u;
            v362 = 0u;
            v363 = 0u;
            v361 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v352[0] = 136315906;
            *&v352[1] = "operator[]";
            LOWORD(v352[3]) = 1024;
            *(&v352[3] + 2) = 789;
            HIWORD(v352[4]) = 2048;
            *&v352[5] = v7;
            v353 = 2048;
            *v354 = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_557:
            *v256 = 0;
            v364 = 0u;
            v365 = 0u;
            v362 = 0u;
            v363 = 0u;
            v361 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v352[0] = 136315906;
            *&v352[1] = "operator[]";
            LOWORD(v352[3]) = 1024;
            *(&v352[3] + 2) = 789;
            HIWORD(v352[4]) = 2048;
            *&v352[5] = v3;
            v353 = 2048;
            *v354 = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_558:
            *v256 = 0;
            v364 = 0u;
            v365 = 0u;
            v362 = 0u;
            v363 = 0u;
            v361 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v352[0] = 136315906;
            *&v352[1] = "operator[]";
            LOWORD(v352[3]) = 1024;
            *(&v352[3] + 2) = 789;
            HIWORD(v352[4]) = 2048;
            *&v352[5] = v5;
            v353 = 2048;
            *v354 = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_559:
            *v256 = 0;
            v364 = 0u;
            v365 = 0u;
            v362 = 0u;
            v363 = 0u;
            v361 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v352[0] = 136315906;
            *&v352[1] = "operator[]";
            LOWORD(v352[3]) = 1024;
            *(&v352[3] + 2) = 797;
            HIWORD(v352[4]) = 2048;
            *&v352[5] = v11;
            v353 = 2048;
            *v354 = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_560:
            *v256 = 0;
            v364 = 0u;
            v365 = 0u;
            v362 = 0u;
            v363 = 0u;
            v361 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v352[0] = 136315906;
            *&v352[1] = "operator[]";
            LOWORD(v352[3]) = 1024;
            *(&v352[3] + 2) = 789;
            HIWORD(v352[4]) = 2048;
            *&v352[5] = v11;
            v353 = 2048;
            *v354 = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_561:
            v241 = 0;
            v364 = 0u;
            v365 = 0u;
            v362 = 0u;
            v363 = 0u;
            v361 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v311 = 136315906;
            *&v311[4] = "operator[]";
            v312 = 1024;
            v313 = 613;
            v314 = 2048;
            v315 = v7;
            v316 = 2048;
            v317 = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_562;
          }

          *(v298 + 4 * v20) = *(i + 4 * v20);
        }

        ++v20;
        v19 += 16;
        if (v11 == v20)
        {
          goto LABEL_28;
        }
      }

LABEL_521:
      *v250 = 0;
      v248 = 0u;
      v249 = 0u;
      memset(v247, 0, sizeof(v247));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v318 = 136315906;
      *&v318[4] = "operator[]";
      *&v318[12] = 1024;
      *&v318[14] = 613;
      *&v318[18] = 2048;
      *&v318[20] = v4;
      *&v318[28] = 2048;
      *&v318[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_522:
      *v250 = 0;
      v248 = 0u;
      v249 = 0u;
      memset(v247, 0, sizeof(v247));
      v28 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v318 = 136315906;
      *&v318[4] = "operator[]";
      *&v318[12] = 1024;
      *&v318[14] = 613;
      *&v318[18] = 2048;
      *&v318[20] = v5;
      *&v318[28] = 2048;
      *&v318[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_523:
      *v250 = 0;
      v248 = 0u;
      v249 = 0u;
      memset(v247, 0, sizeof(v247));
      v7 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v318 = 136315906;
      *&v318[4] = "operator[]";
      *&v318[12] = 1024;
      *&v318[14] = 613;
      *&v318[18] = 2048;
      *&v318[20] = v28;
      *&v318[28] = 2048;
      *&v318[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_524;
    }
  }

  else
  {
    i = 0;
    v17 = 1;
    v14 = 0xFFFFFFFFLL;
    v18 = a1;
    if (v11)
    {
      goto LABEL_8;
    }
  }

LABEL_28:
  v11 = &v304 + 8;
  i = &v307 + 8;
  v39 = v18;
  re::GeomConnectivityManifold::buildAndMakeManifold((v18 + 4), &v259, &v307 + 8);
  v4 = DWORD2(v308);
  if (DWORD2(v308))
  {
    re::DynamicArray<re::Vector3<float>>::resize(&v304 + 8, DWORD2(v308));
    v20 = 0;
    while (1)
    {
      v7 = *(&v308 + 1);
      if (*(&v308 + 1) <= v20)
      {
        break;
      }

      v7 = *(v310 + 4 * v20);
      if (v7 >= v10)
      {
        goto LABEL_525;
      }

      v3 = *(&v305 + 1);
      if (*(&v305 + 1) <= v20)
      {
        goto LABEL_526;
      }

      *(v307 + 16 * v20++) = *(v8 + 16 * v7);
      if (v20 == v4)
      {
        goto LABEL_40;
      }
    }

LABEL_524:
    *v250 = 0;
    v248 = 0u;
    v249 = 0u;
    memset(v247, 0, sizeof(v247));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v318 = 136315906;
    *&v318[4] = "operator[]";
    *&v318[12] = 1024;
    *&v318[14] = 789;
    *&v318[18] = 2048;
    *&v318[20] = v20;
    *&v318[28] = 2048;
    *&v318[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_525:
    *v250 = 0;
    v248 = 0u;
    v249 = 0u;
    memset(v247, 0, sizeof(v247));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v318 = 136315906;
    *&v318[4] = "operator[]";
    *&v318[12] = 1024;
    *&v318[14] = 613;
    *&v318[18] = 2048;
    *&v318[20] = v7;
    *&v318[28] = 2048;
    *&v318[30] = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_526:
    *v250 = 0;
    v248 = 0u;
    v249 = 0u;
    memset(v247, 0, sizeof(v247));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v318 = 136315906;
    *&v318[4] = "operator[]";
    *&v318[12] = 1024;
    *&v318[14] = 789;
    *&v318[18] = 2048;
    *&v318[20] = v20;
    *&v318[28] = 2048;
    *&v318[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_527:
    *v250 = 0;
    v248 = 0u;
    v249 = 0u;
    memset(v247, 0, sizeof(v247));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v318 = 136315906;
    *&v318[4] = "operator[]";
    *&v318[12] = 1024;
    *&v318[14] = 789;
    *&v318[18] = 2048;
    *&v318[20] = v20;
    *&v318[28] = 2048;
    *&v318[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_528;
  }

  re::DynamicArray<re::Vector3<float>>::resize(&v304 + 8, v39[4]);
  if (v39[4])
  {
    v7 = 0;
    v20 = v10;
    while (v7 != v10)
    {
      v3 = *(&v305 + 1);
      if (*(&v305 + 1) <= v7)
      {
        goto LABEL_543;
      }

      *(v307 + 16 * v7) = *(v8 + 16 * v7);
      if (++v7 >= v39[4])
      {
        goto LABEL_40;
      }
    }

    goto LABEL_542;
  }

LABEL_40:
  *&v363 = 0;
  *&v362 = 0;
  v361 = 0uLL;
  DWORD2(v362) = 0;
  v40 = v363;
  v20 = v362;
  *&v318[32] = 0;
  memset(v318, 0, 28);
  v10 = v362;
  if (v362)
  {
    v8 = *&v318[32];
    v42 = v20 > *&v318[16] && v20 > *&v318[16];
    if (v42)
    {
      bzero((*&v318[32] + 8 * *&v318[16]), 8 * (v20 - *&v318[16]));
    }

    *&v318[16] = v20;
    ++*&v318[24];
    if (v20)
    {
      v43 = 0;
      v44 = (v8 + 4);
      while (1)
      {
        *(v44 - 1) = v43;
        if (v20 == v43)
        {
          break;
        }

        *v44 = *(v40 + 4 * v43);
        v44 += 2;
        if (v20 == ++v43)
        {
          goto LABEL_53;
        }
      }

LABEL_528:
      re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, v20);
      _os_crash();
      __break(1u);
LABEL_529:
      *v311 = 0;
      v263 = 0u;
      v262 = 0u;
      v261 = 0u;
      v260 = 0u;
      v259 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v256 = 136315906;
      *&v256[4] = "operator[]";
      *&v256[12] = 1024;
      *&v256[14] = 789;
      *&v256[18] = 2048;
      *&v256[20] = v7;
      v257 = 2048;
      *v258 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_530:
      *&v361 = 0;
      v263 = 0u;
      v262 = 0u;
      v261 = 0u;
      v260 = 0u;
      v259 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v318 = 136315906;
      *&v318[4] = "operator[]";
      *&v318[12] = 1024;
      *&v318[14] = 789;
      *&v318[18] = 2048;
      *&v318[20] = v7;
      *&v318[28] = 2048;
      *&v318[30] = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_531;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_53:
  v45 = 126 - 2 * __clz(v20);
  if (v20)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v237 = 0;
  ++v238;
  re::DynamicArray<unsigned int>::resize(v232, v20, &re::kInvalidMeshIndex);
  *v355 = 0;
  if (v20)
  {
    v47 = 0;
    v3 = v250;
    while (1)
    {
      v7 = v47;
      if (v20 <= v47)
      {
        break;
      }

      v48 = *(v8 + 8 * v47 + 4);
      v49 = v233;
      v50 = v235;
      do
      {
        v4 = v47;
        if (v20 <= v47)
        {
          *v358 = 0;
          v248 = 0u;
          v249 = 0u;
          memset(v247, 0, sizeof(v247));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v250 = 136315906;
          *&v250[4] = "operator[]";
          *&v250[12] = 1024;
          *&v250[14] = 789;
          *&v250[18] = 2048;
          *&v250[20] = v4;
          v251 = 2048;
          *v252 = v20;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_174:
          *v358 = 0;
          v248 = 0u;
          v249 = 0u;
          memset(v247, 0, sizeof(v247));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v250 = 136315906;
          *&v250[4] = "operator[]";
          *&v250[12] = 1024;
          *&v250[14] = 789;
          *&v250[18] = 2048;
          *&v250[20] = v4;
          v251 = 2048;
          *v252 = v49;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_175;
        }

        v51 = (v8 + 8 * v47);
        if (v51[1] != v48)
        {
          break;
        }

        if (v49 <= v4)
        {
          goto LABEL_174;
        }

        *(v50 + 4 * v4) = *v51;
        v47 = *v355 + 1;
        *v355 = v47;
      }

      while (v47 < v20);
      re::DynamicArray<int>::add(v236, v355);
      v47 = *v355;
      if (*v355 >= v20)
      {
        goto LABEL_65;
      }
    }

LABEL_531:
    *v358 = 0;
    v248 = 0u;
    v249 = 0u;
    memset(v247, 0, sizeof(v247));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v250 = 136315906;
    *(v3 + 4) = "operator[]";
    *&v250[12] = 1024;
    *(v3 + 14) = 789;
    *&v250[18] = 2048;
    *(v3 + 20) = v7;
    v251 = 2048;
    *(v3 + 30) = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_532:
    *v250 = 0;
    v248 = 0u;
    v249 = 0u;
    memset(v247, 0, sizeof(v247));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v318 = 136315906;
    *&v318[4] = "operator[]";
    *&v318[12] = 1024;
    *&v318[14] = 613;
    *&v318[18] = 2048;
    *&v318[20] = v7;
    *&v318[28] = 2048;
    *&v318[30] = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_533:
    *v250 = 0;
    v248 = 0u;
    v249 = 0u;
    memset(v247, 0, sizeof(v247));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v318 = 136315906;
    *&v318[4] = "operator[]";
    *&v318[12] = 1024;
    *&v318[14] = 789;
    *&v318[18] = 2048;
    *&v318[20] = v20;
    *&v318[28] = 2048;
    *&v318[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_534;
  }

LABEL_65:
  if (*v318 && v8)
  {
    (*(**v318 + 40))();
  }

  v8 = v352;
  *&v360[2] = 0;
  memset(v358, 0, 24);
  *&v358[24] = 1;
  v20 = v259;
  v352[0] = 0;
  if (!v259)
  {
    goto LABEL_92;
  }

  v52 = 0;
LABEL_70:
  *&v318[32] = 0;
  memset(v318, 0, 28);
  re::GeomConnectivityManifold::fetchVertexIncidentFaces(&v259, v52, v318);
  *&v252[2] = 0;
  memset(v250, 0, sizeof(v250));
  if (!*&v318[16])
  {
    goto LABEL_88;
  }

  v53 = *&v318[32];
  v7 = *&v318[32] + 4 * *&v318[16];
LABEL_72:
  v3 = *v53;
  v54 = *&v250[16];
  v55 = *&v252[2];
  v10 = v290;
  v56 = (v292 + 4 * v3);
  while (1)
  {
    if (!v54)
    {
      if (v290 <= v3)
      {
        goto LABEL_519;
      }

      re::DynamicArray<int>::add(v250, v56);
LABEL_80:
      if (++v53 != v7)
      {
        goto LABEL_72;
      }

      if (*&v250[16] > 2uLL || *&v250[16] == 2 && re::GeomConnectivityManifold::isBoundaryVertex(&v259, v352[0]))
      {
        re::DynamicArray<int>::add(v358, v352);
      }

      if (*v250 && *&v252[2])
      {
        (*(**v250 + 40))();
      }

LABEL_88:
      if (*v318 && *&v318[32])
      {
        (*(**v318 + 40))();
      }

      v52 = v352[0] + 1;
      v352[0] = v52;
      if (v52 >= v20)
      {
LABEL_92:
        v20 = *(&v308 + 1);
        if (*(&v308 + 1))
        {
          v58 = *&v358[16];
          if (*&v358[16])
          {
            v59 = *&v360[2];
            v60 = v310;
            do
            {
              v7 = *v59;
              if (v20 <= v7)
              {
                goto LABEL_547;
              }

              *v59++ = *(v60 + 4 * v7);
            }

            while (--v58);
          }
        }

        v8 = re::GeomMesh::accessVertexPositions(v208);
        v10 = v61;
        re::DynamicArray<re::Vector3<float>>::resize(v226, *&v358[16]);
        if (*&v358[16])
        {
          v62 = 0;
          v7 = 0;
          do
          {
            v20 = *(*&v360[2] + 4 * v7);
            if (v20 >= v10)
            {
              goto LABEL_545;
            }

            v3 = v227;
            if (v227 <= v7)
            {
              goto LABEL_546;
            }

            *(v229 + v62) = *(v8 + 16 * v20);
            ++v7;
            v62 += 16;
          }

          while (v7 < *&v358[16]);
        }

        if (v227)
        {
          v63 = v229;
        }

        else
        {
          v63 = 0;
        }

        re::internal::GeomKDTree<re::Vector3<float>>::build(v230, v227, v63);
        if (*v358 && *&v360[2])
        {
          (*(**v358 + 40))();
        }

        if (v361 && v363)
        {
          (*(*v361 + 40))();
        }

        if (*(&v307 + 1))
        {
          if (v310)
          {
            (*(**(&v307 + 1) + 40))();
          }

          v310 = 0;
          v308 = 0uLL;
          *(&v307 + 1) = 0;
          ++v309;
        }

        if (*(&v304 + 1))
        {
          if (v307)
          {
            (*(**(&v304 + 1) + 40))();
          }

          *&v307 = 0;
          v305 = 0uLL;
          *(&v304 + 1) = 0;
          ++v306;
        }

        if (*(&v301 + 1))
        {
          if (v304)
          {
            (*(**(&v301 + 1) + 40))();
          }

          *&v304 = 0;
          v302 = 0uLL;
          *(&v301 + 1) = 0;
          ++v303;
        }

        if (*(&v298 + 1))
        {
          if (v301)
          {
            (*(**(&v298 + 1) + 40))();
          }

          *&v301 = 0;
          v299 = 0uLL;
          *(&v298 + 1) = 0;
          ++v300;
        }

        if (*(&v295 + 1))
        {
          if (v298)
          {
            (*(**(&v295 + 1) + 40))();
          }

          *&v298 = 0;
          v296 = 0uLL;
          *(&v295 + 1) = 0;
          ++v297;
        }

        if (*(&v292 + 1))
        {
          if (v295)
          {
            (*(**(&v292 + 1) + 40))();
          }

          *&v295 = 0;
          v293 = 0uLL;
          *(&v292 + 1) = 0;
          ++v294;
        }

        if (v288)
        {
          if (v292)
          {
            (*(*v288 + 40))();
          }

          *&v292 = 0;
          v289 = 0;
          v290 = 0;
          v288 = 0;
          ++v291;
        }

        if (v285)
        {
          v64 = v287;
          if ((v287 & 1) == 0)
          {
            (*(*v285 + 40))();
            v64 = v287;
          }

          v285 = 0;
          v286 = 0;
          v287 = (v64 | 1) + 2;
        }

        if (v280)
        {
          if (v284)
          {
            (*(*v280 + 40))();
          }

          v284 = 0;
          v281 = 0;
          v282 = 0;
          v280 = 0;
          ++v283;
        }

        if (v275)
        {
          if (v279)
          {
            (*(*v275 + 40))();
          }

          v279 = 0;
          v276 = 0;
          v277 = 0;
          v275 = 0;
          ++v278;
        }

        if (v270)
        {
          if (v274)
          {
            (*(*v270 + 40))();
          }

          v274 = 0;
          v271 = 0;
          v272 = 0;
          v270 = 0;
          ++v273;
        }

        if (v265)
        {
          if (v269)
          {
            (*(*v265 + 40))();
          }

          v269 = 0;
          v266 = 0;
          v267 = 0;
          v265 = 0;
          ++v268;
        }

        if (v262)
        {
          if (v264)
          {
            (*(*v262 + 40))();
          }

          v264 = 0;
          *&v263 = 0;
          v262 = 0uLL;
          ++DWORD2(v263);
        }

        if (*(&v259 + 1) && *(&v261 + 1))
        {
          (*(**(&v259 + 1) + 40))();
        }

        v20 = v250;
        bzero(v250, 0x2D0uLL);
        re::DynamicArray<re::BlendNode>::setCapacity(&v250[16], 1uLL);
        ++v253;
        re::internal::GeomAttributeManager::GeomAttributeManager(v255);
        re::internal::GeomAttributeManager::addAttribute(v255, "vertexPosition", 1, 7);
        v3 = v237;
        v225 = 0;
        v222[1] = 0;
        v223 = 0;
        v222[0] = 0;
        v224 = 0;
        v7 = v208;
        if (*(v208 + 10))
        {
          re::DynamicArray<int>::setCapacity(v222, *(v208 + 10));
          v7 = v208;
        }

        v221 = 0;
        v218[1] = 0;
        v219 = 0;
        v218[0] = 0;
        v220 = 0;
        if (!v203)
        {
          goto LABEL_171;
        }

        v66 = re::internal::GeomAttributeManager::attributeByName((v7 + 64), v203);
        if (v66)
        {
          v194 = re::GeomAttribute::accessValues<int>(v66);
          v195 = v67;
          v197 = 0;
          goto LABEL_176;
        }

LABEL_175:
        v194 = 0;
        v195 = -1;
        v197 = 1;
LABEL_176:
        v7 = v208;
        if (!v3)
        {
          goto LABEL_483;
        }

        goto LABEL_177;
      }

      goto LABEL_70;
    }

    if (v290 <= v3)
    {
      break;
    }

    v57 = *v55++;
    --v54;
    if (v57 == *v56)
    {
      goto LABEL_80;
    }
  }

  v242 = 0;
  v248 = 0u;
  v249 = 0u;
  memset(v247, 0, sizeof(v247));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v355 = 136315906;
  *&v355[4] = "operator[]";
  *&v355[12] = 1024;
  *&v355[14] = 797;
  *&v355[18] = 2048;
  *&v355[20] = v3;
  v356 = 2048;
  *v357 = v10;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_171:
  v194 = 0;
  v195 = -1;
  v197 = 1;
  if (!v3)
  {
    goto LABEL_483;
  }

LABEL_177:
  i = 0;
  v193 = v3;
  while (2)
  {
    v11 = v237;
    if (i)
    {
      v7 = i - 1;
      if (v237 <= i - 1)
      {
        goto LABEL_568;
      }

      v68 = *(v239 + 4 * v7);
    }

    else
    {
      v68 = 0;
    }

    if (v237 <= i)
    {
      goto LABEL_565;
    }

    v10 = *(v239 + 4 * i) - v68;
    re::DynamicArray<float>::resize(v218, v10);
    re::DynamicArray<float>::copy(v218, 0, (v235 + 4 * v68), v10);
    re::GeomMesh::GeomMesh(v247, 0);
    if (v10 < 2)
    {
      goto LABEL_477;
    }

    v196 = i;
    v69 = *(a2 + 12);
    v70 = *(a2 + 4);
    v3 = v221;
    v7 = v219;
    v5 = re::GeomMesh::accessVertexPositions(v208);
    v4 = v71;
    *&v318[8] = 0;
    *v318 = 0;
    *&v318[16] = 1;
    *&v318[24] = 0;
    *&v318[32] = 0;
    *&v363 = 0;
    *&v362 = 0;
    v361 = 0uLL;
    v8 = 4 * v7;
    DWORD2(v362) = 0;
    if (4 * v7)
    {
      re::DynamicArray<re::Quaternion<float>>::setCapacity(&v361, 4 * v7);
    }

    v72 = *(v208 + 4);
    if ((v72 & 0x3F) != 0)
    {
      v73 = (v72 >> 6) + 1;
    }

    else
    {
      v73 = v72 >> 6;
    }

    v320 = *(v208 + 4);
    *&v259 = 0;
    re::DynamicOverflowArray<unsigned long long,3ul>::resize(v318, v73, &v259);
    v74 = *&v318[8];
    if (*&v318[8])
    {
      v75 = *&v318[32];
      if (v318[16])
      {
        v75 = &v318[24];
      }

      do
      {
        *v75++ = 0;
        v76 = *&v318[32];
        if (v318[16])
        {
          v76 = &v318[24];
        }
      }

      while (v75 != &v76[8 * v74]);
    }

    v200 = v7;
    if (v7)
    {
      v205 = v3 + 4 * v7;
      for (i = v3; i != v205; i += 4)
      {
        v20 = *i;
        v7 = *(v208 + 5);
        if (v7 <= v20)
        {
          goto LABEL_552;
        }

        v7 = 0;
        *v355 = *(*(v208 + 7) + 16 * v20);
        if (*&v355[12] == -1)
        {
          v77 = 3;
        }

        else
        {
          v77 = 4;
        }

        do
        {
          v10 = *&v355[4 * v7];
          if ((re::DynamicBitset<unsigned long long,64ul>::getBit(v318, v10) & 1) == 0)
          {
            v20 = v10 >> 6;
            v11 = *&v318[8];
            if (*&v318[8] <= v10 >> 6)
            {
              v242 = 0;
              v263 = 0u;
              v262 = 0u;
              v261 = 0u;
              v260 = 0u;
              v259 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v358 = 136315906;
              *&v358[4] = "operator[]";
              *&v358[12] = 1024;
              *&v358[14] = 858;
              *&v358[18] = 2048;
              *&v358[20] = v10 >> 6;
              v359 = 2048;
              *v360 = v11;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_516:
              v242 = 0;
              v263 = 0u;
              v262 = 0u;
              v261 = 0u;
              v260 = 0u;
              v259 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v358 = 136315906;
              *&v358[4] = "operator[]";
              *&v358[12] = 1024;
              *&v358[14] = 613;
              *&v358[18] = 2048;
              *&v358[20] = v10;
              v359 = 2048;
              *v360 = v4;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_517:
              re::internal::assertLog(6, v96, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v107, v105);
              _os_crash();
              __break(1u);
LABEL_518:
              *v311 = 0;
              v263 = 0u;
              v262 = 0u;
              v261 = 0u;
              v260 = 0u;
              v259 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v256 = 136315906;
              *&v256[4] = "operator[]";
              *&v256[12] = 1024;
              *&v256[14] = 789;
              *&v256[18] = 2048;
              *&v256[20] = 0;
              v257 = 2048;
              *v258 = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_519:
              v242 = 0;
              v248 = 0u;
              v249 = 0u;
              memset(v247, 0, sizeof(v247));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v355 = 136315906;
              *(v8 + 52) = "operator[]";
              *&v355[12] = 1024;
              *(v8 + 62) = 797;
              *&v355[18] = 2048;
              *(v8 + 68) = v3;
              v356 = 2048;
              *(v8 + 78) = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_520:
              *v250 = 0;
              v248 = 0u;
              v249 = 0u;
              memset(v247, 0, sizeof(v247));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v318 = 136315906;
              *&v318[4] = "operator[]";
              *&v318[12] = 1024;
              *&v318[14] = 797;
              *&v318[18] = 2048;
              *&v318[20] = v20;
              *&v318[28] = 2048;
              *&v318[30] = v7;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_521;
            }

            v78 = &v318[24];
            if ((v318[16] & 1) == 0)
            {
              v78 = *&v318[32];
            }

            *&v78[8 * v20] &= ~(1 << v10);
            if (v10 >= v4)
            {
              goto LABEL_516;
            }

            re::DynamicArray<re::Vector3<float>>::add(&v361, (v5 + 16 * v10));
          }

          ++v7;
        }

        while (v77 != v7);
      }
    }

    if (*v318 && (v318[16] & 1) == 0)
    {
      (*(**v318 + 40))(*v318, *&v318[32]);
    }

    *v355 = 0u;
    *v358 = 0u;
    re::computeBestFitPlane(v363, v362, v355, v358);
    v79 = re::GeomMesh::accessVertexPositions(v208);
    if (v200)
    {
      LODWORD(v4) = v80;
      v11 = *(v208 + 5);
      v81 = 0.0;
      v82 = 0.0;
      do
      {
        v7 = *v3;
        if (v11 <= v7)
        {
          goto LABEL_548;
        }

        v83 = (*(v208 + 7) + 16 * v7);
        v10 = *v83;
        if (v10 >= v80)
        {
          goto LABEL_549;
        }

        v7 = v83[1];
        if (v7 >= v80)
        {
          goto LABEL_550;
        }

        i = v83[2];
        if (i >= v80)
        {
          goto LABEL_551;
        }

        v5 = v83[3];
        if (v5 == -1)
        {
          v86 = *(v79 + 16 * v10);
          v84 = vsubq_f32(*(v79 + 16 * v7), v86);
          v85 = vsubq_f32(*(v79 + 16 * i), v86);
        }

        else
        {
          if (v5 >= v80)
          {
            goto LABEL_553;
          }

          v84 = vsubq_f32(*(v79 + 16 * v7), *(v79 + 16 * v5));
          v85 = vsubq_f32(*(v79 + 16 * i), *(v79 + 16 * v10));
        }

        v87 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL), vnegq_f32(v84)), v85, vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL));
        v88.i64[0] = 0x3F0000003F000000;
        v88.i64[1] = 0x3F0000003F000000;
        v89 = vaddq_f32(vmulq_f32(v87, v88), 0);
        v90 = vmulq_f32(*v358, vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL));
        v91 = v90.f32[2] + vaddv_f32(*v90.f32);
        if (v91 > 0.0)
        {
          v81 = v81 + v91;
        }

        else
        {
          v82 = v82 - v91;
        }

        v3 += 4;
        v8 -= 4;
      }

      while (v8);
      if (v82 > v81)
      {
        *v358 = vnegq_f32(*v358);
      }
    }

    if (v361 && v363)
    {
      (*(*v361 + 40))(v361, v363);
    }

    v217 = *v358;
    v216 = 0;
    v213[1] = 0;
    v214 = 0;
    v212 = 0;
    v213[0] = 0;
    v209[1] = 0;
    v210 = 0;
    v209[0] = 0;
    v215 = 1;
    v211 = 1;
    if (!v219)
    {
      v198 = 0;
      v199.i64[0] = 0;
      v4 = 0;
      v206 = 0;
      goto LABEL_327;
    }

    v246 = 0;
    v244 = 0;
    v242 = 0;
    v243 = 0;
    v245 = 0;
    *&v354[2] = 0;
    memset(v352, 0, sizeof(v352));
    *&v258[2] = 0;
    memset(v256, 0, sizeof(v256));
    re::internal::extractMeshFromFaceSubset(v208, v221, v219, 0, &v259);
    re::computeAABB(&v259, v240);
    v199 = v240[0];
    v201 = v240[1];
    *&v360[2] = 0;
    memset(v358, 0, sizeof(v358));
    re::GeomConnectivityManifold::GeomConnectivityManifold(v318);
    re::GeomConnectivityManifold::buildAndMakeManifold(&v260, v318, v358);
    *&v357[2] = 0;
    memset(v355, 0, sizeof(v355));
    re::findBoundaryLoops(v318, &v242, v355);
    *&v352[4] = 0;
    ++v352[6];
    if (*&v352[2] < *&v355[16])
    {
      re::DynamicArray<re::Quaternion<float>>::setCapacity(v352, *&v355[16]);
    }

    v4 = re::GeomMesh::accessVertexPositions(&v259);
    v8 = v92;
    v11 = *&v357[2];
    if (!*&v358[16])
    {
      if (!*&v355[16])
      {
        goto LABEL_246;
      }

      v94 = 4 * *&v355[16];
      while (1)
      {
        v7 = *v11;
        if (v7 >= v8)
        {
          goto LABEL_561;
        }

        re::DynamicArray<re::Vector3<float>>::add(v352, (v4 + 16 * v7));
        v11 += 4;
        v94 -= 4;
        if (!v94)
        {
          goto LABEL_246;
        }
      }
    }

    if (*&v355[16])
    {
      v93 = 4 * *&v355[16];
      do
      {
        v7 = *v11;
        v20 = *&v358[16];
        if (*&v358[16] <= v7)
        {
          goto LABEL_554;
        }

        v7 = *(*&v360[2] + 4 * v7);
        if (v7 >= v8)
        {
          goto LABEL_555;
        }

        re::DynamicArray<re::Vector3<float>>::add(v352, (v4 + 16 * v7));
        v11 += 4;
        v93 -= 4;
      }

      while (v93);
    }

LABEL_246:
    if (*v355 && *&v357[2])
    {
      (*(**v355 + 40))(*v355, *&v357[2]);
    }

    if (v344)
    {
      v95 = v346;
      if ((v346 & 1) == 0)
      {
        (*(*v344 + 40))(v344, v347);
        v95 = v346;
      }

      v344 = 0;
      v345 = 0;
      v346 = (v95 | 1) + 2;
    }

    if (v339)
    {
      if (v343)
      {
        (*(*v339 + 40))(v339, v343);
      }

      v343 = 0;
      v340 = 0;
      v341 = 0;
      v339 = 0;
      ++v342;
    }

    if (v334)
    {
      if (v338)
      {
        (*(*v334 + 40))(v334, v338);
      }

      v338 = 0;
      v335 = 0;
      v336 = 0;
      v334 = 0;
      LODWORD(v337) = v337 + 1;
    }

    if (v329)
    {
      if (v333)
      {
        (*(*v329 + 40))(v329, v333);
      }

      v333 = 0;
      v330 = 0;
      v331 = 0;
      v329 = 0;
      ++v332;
    }

    if (v324)
    {
      if (v328)
      {
        (*(*v324 + 40))(v324, v328);
      }

      v328 = 0;
      v325 = 0;
      v326 = 0;
      v324 = 0;
      ++v327;
    }

    if (v320)
    {
      if (v323)
      {
        (*(*v320 + 40))(v320, v323);
      }

      v323 = 0;
      v321[0] = 0;
      v321[1] = 0;
      v320 = 0;
      ++v322;
    }

    if (*&v318[8] && v319)
    {
      (*(**&v318[8] + 40))(*&v318[8], v319);
    }

    if (*v358 && *&v360[2])
    {
      (*(**v358 + 40))(*v358, *&v360[2]);
    }

    re::GeomMesh::~GeomMesh(&v259);
    if (v244)
    {
      i = 0;
      v97 = 0.0;
      v98 = 0.0;
      do
      {
        if (i)
        {
          v99 = 16 * *(v246 + 4 * i - 4);
        }

        else
        {
          v99 = 0;
        }

        v100 = 16 * *(v246 + 4 * i);
        if (v100 == v99)
        {
          v101.i64[0] = 0x7F0000007FLL;
          v101.i64[1] = 0x7F0000007FLL;
          v102 = 0.0;
        }

        else
        {
          v103 = 0;
          v104 = (*&v354[2] + v99);
          v105 = (v100 - v99) >> 4;
          v106 = 0.0;
          do
          {
            if (v105 - 1 == v103)
            {
              v107 = 0;
            }

            else
            {
              v107 = v103 + 1;
            }

            if (v105 <= v107)
            {
              goto LABEL_517;
            }

            v108 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v104[v107], v104[v107]), v104[v107], 0xCuLL), vnegq_f32(v104[v103])), v104[v107], vextq_s8(vuzp1q_s32(v104[v103], v104[v103]), v104[v103], 0xCuLL));
            v109 = vmulq_f32(v217, vextq_s8(vuzp1q_s32(v108, v108), v108, 0xCuLL));
            v106 = v106 + (v109.f32[2] + vaddv_f32(*v109.f32));
            ++v103;
          }

          while (v105 != v103);
          v110 = v99 - v100;
          v111.i64[0] = 0x7F0000007FLL;
          v111.i64[1] = 0x7F0000007FLL;
          v112 = vnegq_f32(v111);
          do
          {
            v113 = *v104++;
            v114 = v113;
            v112.i32[3] = 0;
            v114.i32[3] = 0;
            v112 = vminnmq_f32(v112, v114);
            v111.i32[3] = 0;
            v111 = vmaxnmq_f32(v111, v114);
            v110 += 16;
          }

          while (v110);
          v102 = v106 * 0.5;
          v101 = vsubq_f32(v111, v112);
        }

        v115 = fabsf(v102);
        if (v115 >= v69)
        {
          v207 = v101;
          LODWORD(v259) = i;
          re::DynamicArray<int>::add(v256, &v259);
          if (v115 > v97)
          {
            v116 = v207;
            v116.i32[3] = 0;
            v117 = vmaxnmq_f32(v116, 0);
            v118 = vmulq_f32(v117, v117);
            v98 = sqrtf(v118.f32[2] + vaddv_f32(*v118.f32)) * 0.5;
            if (*&v256[16] >= 2uLL)
            {
              v119 = *&v258[2] + 4 * *&v256[16];
              v120 = **&v258[2];
              **&v258[2] = *(v119 - 4);
              *(v119 - 4) = v120;
            }

            v97 = v115;
          }
        }

        ++i;
      }

      while (i < v244);
    }

    else
    {
      v98 = 0.0;
    }

    v121 = vsubq_f32(v201, v199);
    v121.i32[3] = 0;
    v122 = vmaxnmq_f32(v121, 0);
    v123 = vmulq_f32(v122, v122);
    if (v98 >= ((sqrtf(v123.f32[2] + vaddv_f32(*v123.f32)) * 0.5) * 0.66667))
    {
      *v358 = 0;
      if (!*&v256[16])
      {
        goto LABEL_317;
      }

      i = 0;
      while (1)
      {
        v7 = *(*&v258[2] + 4 * i);
        v11 = v244;
        if (v7)
        {
          v20 = v7 - 1;
          if (v244 <= v7 - 1)
          {
            goto LABEL_566;
          }

          v124 = *(v246 + 4 * v20);
        }

        else
        {
          v124 = 0;
        }

        if (v244 <= v7)
        {
          goto LABEL_564;
        }

        v3 = *(v246 + 4 * v7);
        if (v124 < v3)
        {
          break;
        }

LABEL_316:
        *v358 += v3 - v124;
        re::DynamicArray<int>::add(v213, v358);
        if (++i >= *&v256[16])
        {
          goto LABEL_317;
        }
      }

      v11 = 16 * v124;
      v7 = v124;
      while (1)
      {
        v20 = *&v352[4];
        if (*&v352[4] <= v7)
        {
          goto LABEL_530;
        }

        re::DynamicArray<re::Vector3<float>>::add(v209, (*&v354[2] + v11));
        ++v7;
        v11 += 16;
        if (v3 == v7)
        {
          goto LABEL_316;
        }
      }
    }

    v214 = 0;
    ++v215;
    v210 = 0;
    ++v211;
LABEL_317:
    if (*v256 && *&v258[2])
    {
      (*(**v256 + 40))(*v256, *&v258[2]);
    }

    if (*v352 && *&v354[2])
    {
      (*(**v352 + 40))(*v352, *&v354[2]);
    }

    if (v242 && v246)
    {
      (*(*v242 + 40))(v242, v246);
    }

    v206 = v216;
    v4 = v214;
    v198 = v212;
    v199.i64[0] = v210;
LABEL_327:
    v240[0].i32[0] = 0;
    *&v357[2] = 0;
    memset(v355, 0, sizeof(v355));
    v246 = 0;
    v244 = 0;
    v242 = 0;
    v243 = 0;
    v245 = 0;
    if (!v4)
    {
      *&v360[2] = 0;
      memset(v358, 0, sizeof(v358));
      goto LABEL_414;
    }

    v8 = 0;
    while (2)
    {
      if (v8)
      {
        v7 = *(v206 - 4 + 4 * v8);
      }

      else
      {
        v7 = 0;
      }

      v125 = *(v206 + 4 * v8);
      *&v354[2] = 0;
      memset(v352, 0, sizeof(v352));
      re::DynamicArray<re::Vector3<float>>::resize(v352, (v125 - v7));
      if (v125 > v7)
      {
        v127 = 0;
        v11 = 0;
        v128 = v199.i64[0];
        if (v199.i64[0] <= v7)
        {
          v128 = v7;
        }

        v129 = v198 + 16 * v7;
        v130 = v125 - v7;
        v131 = v128 - v7;
        while (v131 != v11)
        {
          v7 = *&v352[4];
          if (*&v352[4] <= v11)
          {
            goto LABEL_535;
          }

          *(*&v354[2] + v127) = *(v129 + v127);
          ++v11;
          v127 += 16;
          if (v130 == v11)
          {
            goto LABEL_339;
          }
        }

LABEL_534:
        re::internal::assertLog(6, v126, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v128, v199.i64[0]);
        _os_crash();
        __break(1u);
LABEL_535:
        *&v361 = 0;
        v263 = 0u;
        v262 = 0u;
        v261 = 0u;
        v260 = 0u;
        v259 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v318 = 136315906;
        *&v318[4] = "operator[]";
        *&v318[12] = 1024;
        *&v318[14] = 789;
        *&v318[18] = 2048;
        *&v318[20] = v11;
        *&v318[28] = 2048;
        *&v318[30] = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_536:
        *v250 = 0;
        v248 = 0u;
        v249 = 0u;
        memset(v247, 0, sizeof(v247));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v318 = 136315906;
        *&v318[4] = "operator[]";
        *&v318[12] = 1024;
        *&v318[14] = 789;
        *&v318[18] = 2048;
        *&v318[20] = v20;
        *&v318[28] = 2048;
        *&v318[30] = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_537:
        *v250 = 0;
        v248 = 0u;
        v249 = 0u;
        memset(v247, 0, sizeof(v247));
        v7 = v14;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v318 = 136315906;
        *&v318[4] = "operator[]";
        *&v318[12] = 1024;
        *&v318[14] = 613;
        *&v318[18] = 2048;
        *&v318[20] = v20;
        *&v318[28] = 2048;
        *&v318[30] = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_538;
      }

LABEL_339:
      *&v318[32] = 0;
      memset(v318, 0, 24);
      v5 = *&v354[2];
      i = *&v352[4];
      *&v318[24] = 1;
      *&v261 = 0;
      *&v260 = 0;
      v259 = 0uLL;
      DWORD2(v260) = 0;
      if (!*&v352[4])
      {
        goto LABEL_573;
      }

      v7 = 0;
      v10 = *&v354[2];
      do
      {
        *&v260 = 0;
        ++DWORD2(v260);
        if (*&v230[2])
        {
          re::internal::GeomKDTree<re::Vector3<float>>::findWithinRadiusHelper(v230, v231, v10, &v259, 0.000000999999997);
          if (v260)
          {
            LODWORD(v361) = v7;
            re::DynamicArray<int>::add(v318, &v361);
          }
        }

        ++v7;
        v10 += 16;
      }

      while (i != v7);
      v132 = *&v318[16];
      if (!*&v318[16])
      {
        if (i == 1)
        {
          v133 = 0;
        }

        else
        {
          v134 = 1;
          v135 = *v5;
          do
          {
            v136 = *(v5 + 16 * v134);
            v135.i32[3] = 0;
            v136.i32[3] = 0;
            v135 = vminnmq_f32(v135, v136);
            ++v134;
          }

          while (i != v134);
          v133 = 0;
          v137 = vsubq_f32(*v5, v135);
          v138 = vmulq_f32(v137, v137);
          v139 = v138.f32[2] + vaddv_f32(*v138.f32);
          for (j = 1; j != i; ++j)
          {
            v141 = vsubq_f32(*(v5 + 16 * j), v135);
            v142 = vmulq_f32(v141, v141);
            v143 = vaddv_f32(*v142.f32);
            if ((v142.f32[2] + v143) < v139)
            {
              v139 = v142.f32[2] + v143;
              v133 = j;
            }
          }
        }

        LODWORD(v361) = v133;
        re::DynamicArray<int>::add(v318, &v361);
        v132 = *&v318[16];
      }

      if (v132 == 1)
      {
        v144 = **&v318[32];
        if (i <= v144)
        {
          goto LABEL_570;
        }

        v145 = 0;
        v146 = 0.0;
        v147 = **&v318[32];
        do
        {
          v148 = vsubq_f32(*(v5 + 16 * v145), *(v5 + 16 * v144));
          v149 = vmulq_f32(v148, v148);
          v150 = vaddv_f32(*v149.f32);
          if ((v149.f32[2] + v150) >= v146)
          {
            v147 = v145;
            v146 = v149.f32[2] + v150;
          }

          ++v145;
        }

        while (i != v145);
        if (v147 >= v144)
        {
          LODWORD(v361) = v147;
        }

        else
        {
          **&v318[32] = v147;
          LODWORD(v361) = v144;
        }

        re::DynamicArray<int>::add(v318, &v361);
      }

      if (v259 && v261)
      {
        (*(*v259 + 40))(v259, v261);
      }

      *&v363 = 0;
      *&v362 = 0;
      v361 = 0uLL;
      DWORD2(v362) = 0;
      if (*&v352[4])
      {
        re::DynamicArray<re::Quaternion<float>>::setCapacity(&v361, *&v352[4]);
      }

      *&v360[2] = 0;
      memset(v358, 0, sizeof(v358));
      i = *&v318[16];
      if (*&v318[16] != 1)
      {
        v11 = 0;
        v151 = 0;
        while (1)
        {
          v7 = v11;
          if (i <= v11)
          {
            goto LABEL_540;
          }

          v11 = (v151 + 1);
          if (i <= v11)
          {
            goto LABEL_541;
          }

          v152 = *(*&v318[32] + 4 * v7);
          v10 = (*(*&v318[32] + 4 * v11) - v152 + 1);
          re::DynamicArray<re::Vector3<float>>::resize(v358, v10);
          re::DynamicArray<re::Vector3<float>>::copy(v358, 0, (*&v354[2] + 16 * v152), v10);
          re::internal::simplifyPolyLine(v358, v70);
          v7 = *&v358[16];
          if (*&v358[16] != 1)
          {
            break;
          }

LABEL_379:
          i = *&v318[16];
          v7 = *&v318[16] - 1;
          v151 = v11;
          if (*&v318[16] - 1 <= v11)
          {
            *&v358[16] = 0;
            ++*&v358[24];
            if (*&v318[16])
            {
              goto LABEL_381;
            }

LABEL_567:
            *v311 = 0;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v256 = 136315906;
            *&v256[4] = "operator[]";
            *&v256[12] = 1024;
            *&v256[14] = 789;
            *&v256[18] = 2048;
            *&v256[20] = v7;
            v257 = 2048;
            *v258 = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_568:
            *v318 = 0;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v247[0]) = 136315906;
            *(v247 + 4) = "operator[]";
            WORD6(v247[0]) = 1024;
            *(v247 + 14) = 789;
            WORD1(v247[1]) = 2048;
            *(&v247[1] + 4) = v7;
            WORD6(v247[1]) = 2048;
            *(&v247[1] + 14) = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_569:
            *&v361 = 0;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 621;
            *&v318[18] = 2048;
            *&v318[20] = v7;
            *&v318[28] = 2048;
            *&v318[30] = v7;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_570:
            re::internal::assertLog(6, v126, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v144, i);
            _os_crash();
            __break(1u);
LABEL_571:
            *&v361 = 0;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 789;
            *&v318[18] = 2048;
            *&v318[20] = 0;
            *&v318[28] = 2048;
            *&v318[30] = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_572:
            *&v361 = 0;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v318 = 136315906;
            *&v318[4] = "operator[]";
            *&v318[12] = 1024;
            *&v318[14] = 613;
            *&v318[18] = 2048;
            *&v318[20] = v7;
            *&v318[28] = 2048;
            *&v318[30] = v195;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_573:
            re::internal::assertLog(6, v126, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
          }
        }

        v153 = 0;
        v3 = 0;
        while (v7 > v3)
        {
          re::DynamicArray<re::Vector3<float>>::add(&v361, (*&v360[2] + v153));
          ++v3;
          v7 = *&v358[16];
          v153 += 16;
          if (v3 >= *&v358[16] - 1)
          {
            goto LABEL_379;
          }
        }

        *v311 = 0;
        v263 = 0u;
        v262 = 0u;
        v261 = 0u;
        v260 = 0u;
        v259 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v256 = 136315906;
        *&v256[4] = "operator[]";
        *&v256[12] = 1024;
        *&v256[14] = 789;
        *&v256[18] = 2048;
        *&v256[20] = v3;
        v257 = 2048;
        *v258 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_491;
      }

      v7 = 0;
      *&v358[24] = 1;
LABEL_381:
      v154 = *(*&v318[32] + 4 * v7);
      if (*&v352[4] > v154)
      {
        v155 = v154 + 1;
        do
        {
          re::DynamicArray<re::Vector3<float>>::add(v358, (*&v354[2] + 16 * v154));
          v154 = v155;
          v42 = *&v352[4] > v155++;
        }

        while (v42);
        if (!*&v318[16])
        {
          goto LABEL_518;
        }
      }

      v156 = 0;
      while (v156 <= **&v318[32])
      {
        v7 = v156;
        v20 = *&v352[4];
        if (*&v352[4] <= v156)
        {
          goto LABEL_529;
        }

        re::DynamicArray<re::Vector3<float>>::add(v358, (*&v354[2] + 16 * v156++));
        if (!*&v318[16])
        {
          goto LABEL_518;
        }
      }

      re::internal::simplifyPolyLine(v358, v70);
      v7 = *&v358[16];
      if (*&v358[16] != 1)
      {
        v157 = 0;
        v3 = 0;
        while (v7 > v3)
        {
          re::DynamicArray<re::Vector3<float>>::add(&v361, (*&v360[2] + v157));
          ++v3;
          v7 = *&v358[16];
          v157 += 16;
          if (v3 >= *&v358[16] - 1)
          {
            goto LABEL_394;
          }
        }

        goto LABEL_539;
      }

LABEL_394:
      re::DynamicArray<re::RigComponentConstraint>::operator=(v352, &v361);
      if (*v358 && *&v360[2])
      {
        (*(**v358 + 40))(*v358, *&v360[2]);
      }

      if (v361 && v363)
      {
        (*(*v361 + 40))(v361, v363);
      }

      if (*v318 && *&v318[32])
      {
        (*(**v318 + 40))(*v318, *&v318[32]);
      }

      if (*&v352[4] > 2uLL)
      {
        v240[0].i32[0] += v352[4];
        re::DynamicArray<int>::add(v355, v240);
        if (*&v352[4])
        {
          v10 = *&v354[2];
          v158 = 16 * *&v352[4];
          do
          {
            re::DynamicArray<re::Vector3<float>>::add(&v242, v10);
            v10 += 16;
            v158 -= 16;
          }

          while (v158);
        }
      }

      if (*v352 && *&v354[2])
      {
        (*(**v352 + 40))(*v352, *&v354[2]);
      }

      if (++v8 != v4)
      {
        continue;
      }

      break;
    }

    *&v360[2] = 0;
    memset(v358, 0, sizeof(v358));
    if (*&v355[16])
    {
      re::internal::triangulatePolygonWithHoles(*&v357[2], *&v355[16], v246, v244, &v217, v358);
    }

LABEL_414:
    re::GeomMesh::GeomMesh(&v259, 0);
    v159 = *&v358[16] / 3uLL;
    i = v196;
    v7 = v318;
    if ((*&v358[16] / 3uLL))
    {
      i = v244;
      bzero(v318, 0x2D0uLL);
      re::DynamicArray<re::BlendNode>::setCapacity(&v318[16], 1uLL);
      LODWORD(v319) = v319 + 1;
      re::internal::GeomAttributeManager::GeomAttributeManager(v321);
      re::internal::GeomAttributeManager::addAttribute(v321, "vertexPosition", 1, 7);
      if (*&v318[32] > v159)
      {
        v161 = v351;
        if (v351)
        {
          v162 = 0;
          do
          {
            v163 = re::internal::GeomAttributeContainer::attributeByIndex(v350, v162);
            re::internal::accessFaceVaryingAttributeSubmesh(v163, v164);
            ++v162;
          }

          while (v161 != v162);
        }
      }

      v8 = v159;
      re::DynamicArray<re::GeomCell4>::resize(&v318[16], v159);
      LODWORD(v347) = v159;
      if (v348)
      {
        v165 = v349;
        v166 = 8 * v348;
        do
        {
          v167 = *v165++;
          (*(*v167 + 80))(v167, v347);
          v166 -= 8;
        }

        while (v166);
      }

      if (*&v318[8] > i && *&v318[32] && (*&v318[32] - 1) > *&v318[32])
      {
          ;
        }
      }

      v20 = v318;
      *&v318[8] = i;
      LODWORD(v334) = i;
      if (v337)
      {
        v168 = v339;
        v169 = 8 * v337;
        do
        {
          v170 = *v168++;
          (*(*v170 + 80))(v170, v334);
          v169 -= 8;
        }

        while (v169);
      }

      v11 = 0;
      do
      {
        v7 = (3 * v11);
        v10 = *&v358[16];
        if (*&v358[16] <= v7)
        {
          goto LABEL_556;
        }

        v3 = (v7 + 1);
        if (*&v358[16] <= v3)
        {
          goto LABEL_557;
        }

        v5 = (v7 + 2);
        if (*&v358[16] <= v5)
        {
          goto LABEL_558;
        }

        v10 = *&v318[32];
        if (*&v318[32] <= v11)
        {
          goto LABEL_559;
        }

        v7 = *(*&v360[2] + 4 * v7);
        v3 = *(*&v360[2] + 4 * v3);
        v5 = *(*&v360[2] + 4 * v5);
        v171 = (v320 + 16 * v11);
        v172 = *v171;
        v173 = v171[3];
        if (v172 != -1 && v173 == -1)
        {
          v175 = v351;
          if (v351)
          {
            v176 = 0;
            do
            {
              v177 = re::internal::GeomAttributeContainer::attributeByIndex(v350, v176);
              re::internal::accessFaceVaryingAttributeSubmesh(v177, v178);
              ++v176;
            }

            while (v175 != v176);
            v20 = v318;
            v10 = *&v318[32];
          }
        }

        if (v10 <= v11)
        {
          goto LABEL_560;
        }

        v179 = (v320 + 16 * v11);
        *v179 = v7;
        v179[1] = v3;
        v179[2] = v5;
        v179[3] = -1;
        ++v11;
      }

      while (v11 != v8);
      re::GeomMesh::operator=(&v259, &v318[8]);
      re::GeomMesh::setName(&v259, *v318);
      re::GeomMesh::freeName(v318);
      v180 = re::GeomMesh::modifyVertexPositions(&v259);
      if (i)
      {
        v7 = 0;
        v3 = v181;
        while (1)
        {
          v20 = v244;
          if (v244 <= v7)
          {
            break;
          }

          if (v7 == v181)
          {
            goto LABEL_563;
          }

          *(v180 + 16 * v7) = *(v246 + 16 * v7);
          if (++v7 == i)
          {
            goto LABEL_449;
          }
        }

LABEL_562:
        *v256 = 0;
        v364 = 0u;
        v365 = 0u;
        v362 = 0u;
        v363 = 0u;
        v361 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v352[0] = 136315906;
        *&v352[1] = "operator[]";
        LOWORD(v352[3]) = 1024;
        *(&v352[3] + 2) = 789;
        HIWORD(v352[4]) = 2048;
        *&v352[5] = v7;
        v353 = 2048;
        *v354 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_563:
        *v256 = 0;
        v364 = 0u;
        v365 = 0u;
        v362 = 0u;
        v363 = 0u;
        v361 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v352[0] = 136315906;
        *&v352[1] = "operator[]";
        LOWORD(v352[3]) = 1024;
        *(&v352[3] + 2) = 621;
        HIWORD(v352[4]) = 2048;
        *&v352[5] = v3;
        v353 = 2048;
        *v354 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_564:
        *&v361 = 0;
        v263 = 0u;
        v262 = 0u;
        v261 = 0u;
        v260 = 0u;
        v259 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v318 = 136315906;
        *&v318[4] = "operator[]";
        *&v318[12] = 1024;
        *&v318[14] = 789;
        *&v318[18] = 2048;
        *&v318[20] = v7;
        *&v318[28] = 2048;
        *&v318[30] = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_565:
        *v318 = 0;
        v263 = 0u;
        v262 = 0u;
        v261 = 0u;
        v260 = 0u;
        v259 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v247[0]) = 136315906;
        *(v247 + 4) = "operator[]";
        WORD6(v247[0]) = 1024;
        *(v247 + 14) = 789;
        WORD1(v247[1]) = 2048;
        *(&v247[1] + 4) = i;
        WORD6(v247[1]) = 2048;
        *(&v247[1] + 14) = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_566:
        *&v361 = 0;
        v263 = 0u;
        v262 = 0u;
        v261 = 0u;
        v260 = 0u;
        v259 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v318 = 136315906;
        *&v318[4] = "operator[]";
        *&v318[12] = 1024;
        *&v318[14] = 789;
        *&v318[18] = 2048;
        *&v318[20] = v20;
        *&v318[28] = 2048;
        *&v318[30] = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_567;
      }

LABEL_449:
      re::GeomMesh::freeName(v318);
      re::internal::GeomAttributeManager::~GeomAttributeManager(v321);
      if (*&v318[16] && v320)
      {
        (*(**&v318[16] + 40))(*&v318[16], v320);
      }

      i = v196;
    }

    if (*v358 && *&v360[2])
    {
      (*(**v358 + 40))(*v358, *&v360[2]);
    }

    if (v242 && v246)
    {
      (*(*v242 + 40))(v242, v246);
    }

    if (*v355 && *&v357[2])
    {
      (*(**v355 + 40))(*v355, *&v357[2]);
    }

    re::GeomMesh::operator=(v247, &v259);
    re::GeomMesh::~GeomMesh(&v259);
    if ((v197 & 1) == 0)
    {
      if (!v219)
      {
        goto LABEL_571;
      }

      v7 = *v221;
      if (v195 <= v7)
      {
        goto LABEL_572;
      }

      if (v203)
      {
        v182 = *(v194 + 4 * v7);
        v183 = re::GeomMesh::addAttribute(v247, v203, 2, 2);
        if (v183)
        {
          v184 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v183);
          v186 = DWORD2(v247[2]);
          if (DWORD2(v247[2]))
          {
            v7 = v185;
            v187 = v185;
            while (v187)
            {
              *v184++ = v182;
              --v187;
              if (!--v186)
              {
                goto LABEL_471;
              }
            }

            goto LABEL_569;
          }
        }
      }
    }

LABEL_471:
    if (v209[0] && v212)
    {
      (*(*v209[0] + 40))(v209[0], v212);
    }

    v20 = v250;
    v3 = v193;
    if (v213[0] && v216)
    {
      (*(*v213[0] + 40))(v213[0], v216);
    }

LABEL_477:
    if (DWORD2(v247[2]))
    {
      re::GeomMeshBuilder::appendMesh(v250, v247);
    }

    else if (v219)
    {
      v188 = v221;
      v189 = 4 * v219;
      do
      {
        v190 = *v188;
        v188 = (v188 + 4);
        LODWORD(v259) = v190;
        re::DynamicArray<int>::add(v222, &v259);
        v189 -= 4;
      }

      while (v189);
    }

    re::GeomMesh::~GeomMesh(v247);
    ++i;
    v7 = v208;
    if (i != v3)
    {
      continue;
    }

    break;
  }

LABEL_483:
  if (v223 != *(v7 + 40))
  {
    re::GeomMesh::GeomMesh(&v259, 0);
    if (v223)
    {
      re::internal::extractMeshFromFaceSubset(v7, v225, v223, 0, v247);
      re::GeomMeshBuilder::appendMesh(v250, v247);
      re::GeomMesh::~GeomMesh(v247);
    }

    re::GeomMesh::operator=(&v259, &v250[8]);
    re::GeomMesh::setName(&v259, *v250);
    re::GeomMesh::freeName(v250);
    if (DWORD2(v259) + 2 * (DWORD2(v261) - DWORD2(v259)) < (*(v7 + 8) + 2 * (*(v7 + 40) - *(v7 + 8))))
    {
      *(&v247[0] + 1) = v203;
      v191 = *(a2 + 4);
      *v247 = *a2 * 0.5;
      DWORD1(v247[0]) = v191;
      re::internal::mergePlanarRegions(&v259, v247, a3);
LABEL_492:
      re::GeomMesh::~GeomMesh(&v259);
      goto LABEL_493;
    }

LABEL_491:
    *a3 = 0;
    *(a3 + 8) = 0;
    bzero((a3 + 16), 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh((a3 + 16));
    *(a3 + 728) = 0;
    re::GeomMesh::copy(v7, a3);
    goto LABEL_492;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  bzero((a3 + 16), 0x2C8uLL);
  re::internal::GeomBaseMesh::GeomBaseMesh((a3 + 16));
  *(a3 + 728) = 0;
  re::GeomMesh::copy(v7, a3);
LABEL_493:
  if (v218[0] && v221)
  {
    (*(*v218[0] + 40))(v218[0], v221);
  }

  if (v222[0] && v225)
  {
    (*(*v222[0] + 40))(v222[0], v225);
  }

  re::GeomMesh::freeName(v250);
  re::internal::GeomAttributeManager::~GeomAttributeManager((v20 + 56));
  if (*&v250[16] && v254)
  {
    (*(**&v250[16] + 40))(*&v250[16], v254);
  }

  if (v226[0] && v229)
  {
    (*(*v226[0] + 40))(v226[0], v229);
  }

  if (*&v230[1] && v231)
  {
    (*(**&v230[1] + 40))(*&v230[1], v231);
  }

  if (v232[0] && v235)
  {
    (*(*v232[0] + 40))(v232[0], v235);
  }

  result = v236[0];
  if (v236[0])
  {
    if (v239)
    {
      return (*(*v236[0] + 40))(v236[0], v239);
    }
  }

  return result;
}

uint64_t re::anonymous namespace::segmentIntoPlanarRegions(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v11 = a1;
  v237 = *MEMORY[0x1E69E9840];
  v195 = 0;
  v192 = 0;
  v193 = 0;
  v191 = 0;
  v194 = 0;
  *&v224[2] = 0;
  memset(v222, 0, sizeof(v222));
  v12 = *(a1 + 24);
  re::DynamicArray<float>::resize(v222, v12);
  v182 = a2;
  if (v12)
  {
    v13 = 0;
    v14 = *&v222[16];
    v15 = *&v224[2];
    do
    {
      if (v14 == v13)
      {
        goto LABEL_248;
      }

      *(v15 + 4 * v13) = v13;
      ++v13;
    }

    while (v12 != v13);
  }

  else
  {
    v15 = *&v224[2];
    v14 = *&v222[16];
  }

  *&v228 = v11;
  v16 = 126 - 2 * __clz(v14);
  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v11[3];
  v14 = v18;
  v209[0] = 0;
  v209[1] = 0;
  v209[2].i32[0] = 1;
  v209[3] = 0;
  v209[4] = 0;
  if ((v18 & 0x3F) != 0)
  {
    v19 = (v18 >> 6) + 1;
  }

  else
  {
    v19 = v18 >> 6;
  }

  v209[6] = v18;
  *&v228 = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(v209, v19, &v228);
  v20 = v209[1];
  if (v209[1])
  {
    v21 = v209[4];
    if (v209[2].i8[0])
    {
      v21 = &v209[3];
    }

    do
    {
      *v21++ = 0;
      v22 = v209[4];
      if (v209[2].i8[0])
      {
        v22 = &v209[3];
      }
    }

    while (v21 != &v22[*&v20]);
  }

  *&v208[2] = 0;
  memset(v206, 0, sizeof(v206));
  v23.n128_f32[0] = cosf((*a3 * 3.1416) / 180.0);
  v203 = 0;
  memset(v201, 0, sizeof(v201));
  v202 = 0;
  if (!v14)
  {
    goto LABEL_97;
  }

  v9 = v23.n128_f32[0];
  v5 = 0;
  i = 0;
  v183 = v14;
  do
  {
    v12 = *&v222[16];
    if (*&v222[16] <= v5)
    {
      goto LABEL_393;
    }

    v12 = *(*&v224[2] + 4 * v5);
    if (re::DynamicBitset<unsigned long long,64ul>::getBit(v209, v12))
    {
      goto LABEL_84;
    }

    *&v206[16] = 0;
    ++*&v206[24];
    v200 = 0;
    v197[1] = 0;
    v198 = 0;
    v197[0] = 0;
    v199 = 0;
    LODWORD(v228) = v12;
    re::DynamicArray<int>::add(v197, &v228);
    v14 = v11[60];
    if (v14 <= v12)
    {
      goto LABEL_403;
    }

    *v225 = *(v11[62] + 16 * v12);
    v14 = v11[55];
    if (v14 <= v12)
    {
LABEL_404:
      *&v210 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v216[0].n128_u32[0] = 136315906;
      *(v216[0].n128_u64 + 4) = "operator[]";
      v216[0].n128_u16[6] = 1024;
      *(&v216[0].n128_u32[3] + 2) = 797;
      v216[1].n128_u16[1] = 2048;
      *(v216[1].n128_u64 + 4) = v12;
      v216[1].n128_u16[6] = 2048;
      *(&v216[1].n128_u64[1] + 6) = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_405:
      *&v210 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v216[0].n128_u32[0] = 136315906;
      *(v216[0].n128_u64 + 4) = "operator[]";
      v216[0].n128_u16[6] = 1024;
      *(&v216[0].n128_u32[3] + 2) = 797;
      v216[1].n128_u16[1] = 2048;
      *(v216[1].n128_u64 + 4) = v12;
      v216[1].n128_u16[6] = 2048;
      *(&v216[1].n128_u64[1] + 6) = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_406;
    }

    v26 = (v11[57] + 16 * v12);
    v28 = *v26;
    v27 = v26[1];
    *v211 = v28;
    *&v211[8] = v27;
    v14 = v11[45];
    if (v14 <= v12)
    {
      goto LABEL_405;
    }

    v29 = *(v11[47] + 4 * v12);
    v14 = v11[50];
    if (v14)
    {
      if (v14 <= v12)
      {
        goto LABEL_409;
      }

      v8 = *(v11[52] + 4 * v12);
      *(&v235 + 1) = 0;
      v228 = 0u;
      v229 = 0u;
      v230 = 0u;
      v231 = 0u;
      v232 = 0u;
      v233 = 0u;
      v234 = 0u;
    }

    else
    {
      *(&v235 + 1) = 0;
      v228 = 0u;
      v229 = 0u;
      v230 = 0u;
      v231 = 0u;
      v232 = 0u;
      v233 = 0u;
      v234 = 0u;
      v8 = 0xFFFFFFFFLL;
    }

    LODWORD(v235) = v8;
    while (v198)
    {
      v196 = re::internal::Stack<unsigned int>::pop(v197);
      if ((re::DynamicBitset<unsigned long long,64ul>::getBit(v209, v196) & 1) == 0)
      {
        v3 = v11[55];
        if (v3 <= v12)
        {
          *v211 = 0;
          v217 = 0u;
          v218 = 0u;
          memset(v216, 0, sizeof(v216));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v225 = 136315906;
          *&v225[4] = "operator[]";
          *&v225[12] = 1024;
          *&v225[14] = 797;
          *&v225[18] = 2048;
          *&v225[20] = v12;
          *&v225[28] = 2048;
          *&v225[30] = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_240:
          *v211 = 0;
          v217 = 0u;
          v218 = 0u;
          memset(v216, 0, sizeof(v216));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v225 = 136315906;
          *&v225[4] = "operator[]";
          *&v225[12] = 1024;
          *&v225[14] = 797;
          *&v225[18] = 2048;
          *&v225[20] = v14;
          *&v225[28] = 2048;
          *&v225[30] = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_241:
          *v211 = 0;
          v217 = 0u;
          v218 = 0u;
          memset(v216, 0, sizeof(v216));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v225 = 136315906;
          *&v225[4] = "operator[]";
          *&v225[12] = 1024;
          *&v225[14] = 797;
          *&v225[18] = 2048;
          *&v225[20] = v14;
          *&v225[28] = 2048;
          *&v225[30] = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_242:
          *&v210 = 0;
          v217 = 0u;
          v218 = 0u;
          memset(v216, 0, sizeof(v216));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v225 = 136315906;
          *&v225[4] = "operator[]";
          *&v225[12] = 1024;
          *&v225[14] = 797;
          *&v225[18] = 2048;
          *&v225[20] = v14;
          *&v225[28] = 2048;
          *&v225[30] = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_243;
        }

        v14 = v196;
        if (v3 <= v196)
        {
          goto LABEL_240;
        }

        v33 = v11[57];
        v34 = *(v33 + 16 * v12);
        v35 = (v33 + 16 * v196);
        v37 = *v35;
        v36 = v35[1];
        v204[0] = v37;
        v204[1] = v36;
        if ((v34.f32[0] == v37.f32[0] || (*v32.f64 = fabsf(v34.f32[0]), *v31.f64 = ((*v32.f64 + fabsf(v37.f32[0])) + 1.0) * 0.00001, vabds_f32(v37.f32[0], v34.f32[0]) < *v31.f64)) && ((LODWORD(v31.f64[0]) = v34.i32[1], v34.f32[1] == v37.f32[1]) || (*v32.f64 = ((fabsf(v34.f32[1]) + fabsf(v37.f32[1])) + 1.0) * 0.00001, vabds_f32(v37.f32[1], v34.f32[1]) < *v32.f64)) && ((v30.i32[0] = v36.i32[0], LODWORD(v31.f64[0]) = v34.i32[2], v34.f32[2] == v36.f32[0]) || (*v32.f64 = ((fabsf(v34.f32[2]) + fabsf(v36.f32[0])) + 1.0) * 0.00001, v30.f32[0] = vabds_f32(v36.f32[0], v34.f32[2]), v30.f32[0] < *v32.f64)) || (*v30.f32 = v37, *&v30.u32[2] = v36, v38 = vmulq_f32(v34, v30), v30.f32[0] = vaddv_f32(*v38.f32), (v38.f32[2] + v30.f32[0]) >= v9))
        {
          v3 = v11[60];
          if (v3 <= v196)
          {
            goto LABEL_241;
          }

          v54 = (v11[62] + 16 * v196);
          v56 = *v54;
          v55 = v54[1];
          *v211 = v56;
          *&v211[8] = v55;
          v3 = v11[45];
          if (v3 <= v196)
          {
            goto LABEL_242;
          }

          v52 = *(v11[47] + 4 * v196);
          v53 = v211;
LABEL_57:
LABEL_58:
          re::DynamicBitset<unsigned long long,64ul>::setBit(v209, v14);
          re::DynamicArray<int>::add(v206, &v196);
          FaceIncidentFaces = re::GeomConnectivityManifold::fetchFaceIncidentFaces(v11, v196, v211);
          if (FaceIncidentFaces)
          {
            v3 = FaceIncidentFaces;
            v7 = v211;
            do
            {
              v58 = *v7;
              v7 += 4;
              v14 = v58;
              if ((re::DynamicBitset<unsigned long long,64ul>::getBit(v209, v58) & 1) == 0)
              {
                v4 = v11[50];
                if (v4)
                {
                  if (v4 <= v14)
                  {
                    goto LABEL_172;
                  }

                  v59 = *(v11[52] + 4 * v14);
                }

                else
                {
                  v59 = -1;
                }

                if (v59 == v8)
                {
                  v216[0].n128_u32[0] = v14;
                  re::DynamicArray<int>::add(v197, v216);
                }
              }

              --v3;
            }

            while (v3);
          }
        }

        else
        {
          v39 = 0uLL;
          memset(v225, 0, 64);
          v3 = v11[3];
          if (v3 <= v196)
          {
            goto LABEL_392;
          }

          v40 = 0;
          v210 = *(v11[5] + 16 * v196);
          v41 = 3;
          if (HIDWORD(v210) != -1)
          {
            v41 = 4;
          }

          v3 = v11[65];
          v42 = v11[67];
          v43 = v225;
          do
          {
            v4 = *&v211[4 * v40 - 16];
            if (v3 <= v4)
            {
              goto LABEL_170;
            }

            *v43++ = *(v42 + 16 * v4);
            ++v40;
          }

          while (v41 != v40);
          v44 = 0;
          v45 = &v225[8];
          v30.i32[0] = *(a3 + 4);
          v46 = 1;
          v47 = v41;
          while (1)
          {
            v48.i64[0] = *(v45 - 1);
            v48.i32[2] = *v45;
            v48.i32[3] = 1.0;
            v31 = vmulq_f32(v234, v48);
            v32 = vextq_s8(v31, v31, 8uLL);
            *&v31.f64[0] = vadd_f32(*&v31.f64[0], *&v32.f64[0]);
            *v31.f64 = fabsf(vaddv_f32(*&v31.f64[0]));
            if (*v31.f64 > v30.f32[0])
            {
              break;
            }

            v44 = v46 >= v41;
            v45 += 4;
            ++v46;
            if (!--v47)
            {
              v3 = v11[60];
              if (v3 > v14)
              {
                v49 = (v11[62] + 16 * v14);
                v51 = *v49;
                v50 = v49[1];
                *&v210 = v51;
                *(&v210 + 1) = v50;
                v3 = v11[45];
                if (v3 > v14)
                {
                  v52 = *(v11[47] + 4 * v14);
                  v53 = &v210;
                  goto LABEL_57;
                }

LABEL_407:
                v205 = 0;
                v217 = 0u;
                v218 = 0u;
                memset(v216, 0, sizeof(v216));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v211 = 136315906;
                *&v211[4] = "operator[]";
                *&v211[12] = 1024;
                *&v211[14] = 797;
                v212 = 2048;
                v213 = v14;
                v214 = 2048;
                v215 = v3;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_408:
                v209[0] = 0;
                v231 = 0u;
                v232 = 0u;
                v229 = 0u;
                v230 = 0u;
                v228 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v225 = 136315906;
                *&v225[4] = "operator[]";
                *&v225[12] = 1024;
                *&v225[14] = 789;
                *&v225[18] = 2048;
                *&v225[20] = v4;
                *&v225[28] = 2048;
                *&v225[30] = v3;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_409:
                *&v210 = 0;
                v231 = 0u;
                v232 = 0u;
                v229 = 0u;
                v230 = 0u;
                v228 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v216[0].n128_u32[0] = 136315906;
                *(v216[0].n128_u64 + 4) = "operator[]";
                v216[0].n128_u16[6] = 1024;
                *(&v216[0].n128_u32[3] + 2) = 789;
                v216[1].n128_u16[1] = 2048;
                *(v216[1].n128_u64 + 4) = v12;
                v216[1].n128_u16[6] = 2048;
                *(&v216[1].n128_u64[1] + 6) = v14;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_410;
              }

LABEL_406:
              *&v210 = 0;
              v217 = 0u;
              v218 = 0u;
              memset(v216, 0, sizeof(v216));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v211 = 136315906;
              *&v211[4] = "operator[]";
              *&v211[12] = 1024;
              *&v211[14] = 797;
              v212 = 2048;
              v213 = v14;
              v214 = 2048;
              v215 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_407;
            }
          }

          if (v44)
          {
            goto LABEL_58;
          }
        }
      }
    }

    v216[0] = v234;
    re::DynamicArray<re::Vector4<float>>::add(v201, v216);
    if (*&v206[16])
    {
      v61 = *&v208[2];
      v12 = v11[40];
      v62 = 4 * *&v206[16];
      v63 = v11[42];
      while (1)
      {
        v14 = *v61;
        if (v12 <= v14)
        {
          break;
        }

        *(v63 + 4 * v14) = i;
        ++v61;
        v62 -= 4;
        if (!v62)
        {
          goto LABEL_75;
        }
      }

LABEL_173:
      *v211 = 0;
      v217 = 0u;
      v218 = 0u;
      memset(v216, 0, sizeof(v216));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v225 = 136315906;
      *&v225[4] = "operator[]";
      *&v225[12] = 1024;
      *&v225[14] = 789;
      *&v225[18] = 2048;
      *&v225[20] = v14;
      *&v225[28] = 2048;
      *&v225[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_174;
    }

LABEL_75:
    v64 = v193 + 1;
    v65 = v193 < v192 || v192 >= v64;
    v14 = v183;
    if (!v65)
    {
      if (v191)
      {
        v68 = 8;
        if (v192)
        {
          v68 = 2 * v192;
        }

        if (v68 <= v64)
        {
          v69 = v193 + 1;
        }

        else
        {
          v69 = v68;
        }
      }

      else
      {
        ++v194;
      }
    }

    v66 = v193;
    v67 = v195 + (v193 << 7);
    *(v67 + 64) = v232;
    *(v67 + 80) = v233;
    *(v67 + 96) = v234;
    *(v67 + 112) = v235;
    *v67 = v228;
    *(v67 + 16) = v229;
    *(v67 + 32) = v230;
    v23 = v231;
    *(v67 + 48) = v231;
    v193 = v66 + 1;
    ++v194;
    if (v197[0] && v200)
    {
      (*(*v197[0] + 40))();
    }

    i = (i + 1);
LABEL_84:
    ++v5;
  }

  while (v5 != v14);
  if (v201[0] && v203)
  {
    (*(*v201[0] + 40))();
  }

LABEL_97:
  if (*v206 && *&v208[2])
  {
    (*(**v206 + 40))(v23);
  }

  if (*v209 && (v209[2].i8[0] & 1) == 0)
  {
    (*(**v209 + 40))(v23);
  }

  if (*v222 && *&v224[2])
  {
    (*(**v222 + 40))(v23);
  }

  v70 = 0;
  v14 = v193;
  v12 = v195;
  v184 = v193 << 7;
  i = v209;
  v9 = 1.0;
  v7 = v222;
  do
  {
    v187 = v70;
    v8 = *(v11 + 6);
    v216[2].n128_u64[0] = 0;
    memset(v216, 0, 28);
    re::DynamicArray<float>::operator=(v216, v11 + 38);
    if (!v8)
    {
      v98 = 1;
      v79 = 0uLL;
      goto LABEL_143;
    }

    v4 = 0;
    v5 = 0;
    do
    {
      v74 = re::GeomConnectivityManifold::fetchFaceIncidentFaces(v11, v4, v209);
      if (!v74)
      {
        v79 = 0uLL;
        goto LABEL_136;
      }

      v75 = 0;
      v76 = 0;
      v77 = v11[40];
      v78 = v11[42];
      v79 = 0uLL;
      do
      {
        v3 = v209[0].u32[v75];
        if (v77 <= v3)
        {
          *v206 = 0;
          v231 = 0u;
          v232 = 0u;
          v229 = 0u;
          v230 = 0u;
          v228 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v225 = 136315906;
          *&v225[4] = "operator[]";
          *&v225[12] = 1024;
          *&v225[14] = 789;
          *&v225[18] = 2048;
          *&v225[20] = v3;
          *&v225[28] = 2048;
          *&v225[30] = v77;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_169:
          *v206 = 0;
          v231 = 0u;
          v232 = 0u;
          v229 = 0u;
          v230 = 0u;
          v228 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v225 = 136315906;
          *&v225[4] = "operator[]";
          *&v225[12] = 1024;
          *&v225[14] = 789;
          *&v225[18] = 2048;
          *&v225[20] = v4;
          *&v225[28] = 2048;
          *&v225[30] = v77;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_170:
          v205 = 0;
          v217 = 0u;
          v218 = 0u;
          memset(v216, 0, sizeof(v216));
          v92 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v211 = 136315906;
          *&v211[4] = "operator[]";
          *&v211[12] = 1024;
          *&v211[14] = 789;
          v212 = 2048;
          v213 = v4;
          v214 = 2048;
          v215 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_171:
          v209[0] = 0;
          v231 = 0u;
          v232 = 0u;
          v229 = 0u;
          v230 = 0u;
          v228 = 0u;
          v11 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v225 = 136315906;
          *&v225[4] = "operator[]";
          *&v225[12] = 1024;
          *&v225[14] = 789;
          *&v225[18] = 2048;
          *&v225[20] = v92;
          *&v225[28] = 2048;
          *&v225[30] = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_172:
          *&v210 = 0;
          v217 = 0u;
          v218 = 0u;
          memset(v216, 0, sizeof(v216));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v225 = 136315906;
          *&v225[4] = "operator[]";
          *&v225[12] = 1024;
          *&v225[14] = 789;
          *&v225[18] = 2048;
          *&v225[20] = v14;
          *&v225[28] = 2048;
          *&v225[30] = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_173;
        }

        if (v77 <= v4)
        {
          goto LABEL_169;
        }

        v80 = *(v78 + 4 * v3);
        v3 = *(v78 + 4 * v4);
        if (v80 != v3)
        {
          if (v76)
          {
            v81 = v76;
            v82 = v222;
            v83 = v76;
            while (1)
            {
              v84 = *v82++;
              if (v80 == v84)
              {
                break;
              }

              if (!--v83)
              {
                goto LABEL_120;
              }
            }
          }

          else
          {
            v81 = 0;
LABEL_120:
            ++v76;
            *&v222[4 * v81] = v80;
          }
        }

        ++v75;
      }

      while (v75 != v74);
      if (!v76)
      {
        goto LABEL_136;
      }

      if (v14 <= v3)
      {
        goto LABEL_394;
      }

      v85 = v11[55];
      if (v85 <= v4)
      {
LABEL_395:
        v209[0] = 0;
        v231 = 0u;
        v232 = 0u;
        v229 = 0u;
        v230 = 0u;
        v228 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        *&v225[12] = 1024;
        *&v225[14] = 797;
        *&v225[18] = 2048;
        *&v225[20] = v4;
        *&v225[28] = 2048;
        *&v225[30] = v85;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_396:
        *v222 = 0;
        v217 = 0u;
        v218 = 0u;
        memset(v216, 0, sizeof(v216));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        *&v225[12] = 1024;
        *&v225[14] = 789;
        *&v225[18] = 2048;
        *&v225[20] = v3;
        *&v225[28] = 2048;
        *&v225[30] = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_397:
        *v222 = 0;
        v217 = 0u;
        v218 = 0u;
        memset(v216, 0, sizeof(v216));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        *&v225[12] = 1024;
        *&v225[14] = 789;
        *&v225[18] = 2048;
        *&v225[20] = i;
        *&v225[28] = 2048;
        *&v225[30] = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_398:
        *v206 = 0;
        v217 = 0u;
        v218 = 0u;
        memset(v216, 0, sizeof(v216));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v209[0].i32[0] = 136315906;
        *(v209 + 4) = "operator[]";
        v209[1].i16[2] = 1024;
        *(&v209[1].i32[1] + 2) = 789;
        v209[2].i16[1] = 2048;
        *(&v209[2] + 4) = v3;
        v209[3].i16[2] = 2048;
        *(&v209[3] + 6) = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_399:
        *v222 = 0;
        v217 = 0u;
        v218 = 0u;
        memset(v216, 0, sizeof(v216));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v209[0].i32[0] = 136315906;
        *(v209 + 4) = "operator[]";
        v209[1].i16[2] = 1024;
        *(&v209[1].i32[1] + 2) = 789;
        v209[2].i16[1] = 2048;
        *(&v209[2] + 4) = v3;
        v209[3].i16[2] = 2048;
        *(&v209[3] + 6) = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_400:
        *v222 = 0;
        v217 = 0u;
        v218 = 0u;
        memset(v216, 0, sizeof(v216));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v209[0].i32[0] = 136315906;
        *(v209 + 4) = "operator[]";
        v209[1].i16[2] = 1024;
        *(&v209[1].i32[1] + 2) = 789;
        v209[2].i16[1] = 2048;
        *(&v209[2] + 4) = v3;
        v209[3].i16[2] = 2048;
        *(&v209[3] + 6) = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_401:
        *v222 = 0;
        v217 = 0u;
        v218 = 0u;
        memset(v216, 0, sizeof(v216));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v209[0].i32[0] = 136315906;
        *(v209 + 4) = "operator[]";
        v209[1].i16[2] = 1024;
        *(&v209[1].i32[1] + 2) = 789;
        v209[2].i16[1] = 2048;
        *(&v209[2] + 4) = v4;
        v209[3].i16[2] = 2048;
        *(&v209[3] + 6) = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_402:
        *v222 = 0;
        v217 = 0u;
        v218 = 0u;
        memset(v216, 0, sizeof(v216));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v209[0].i32[0] = 136315906;
        *(v209 + 4) = "operator[]";
        v209[1].i16[2] = 1024;
        *(&v209[1].i32[1] + 2) = 789;
        v209[2].i16[1] = 2048;
        *(&v209[2] + 4) = v4;
        v209[3].i16[2] = 2048;
        *(&v209[3] + 6) = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_403:
        *v211 = 0;
        v231 = 0u;
        v232 = 0u;
        v229 = 0u;
        v230 = 0u;
        v228 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v216[0].n128_u32[0] = 136315906;
        *(v216[0].n128_u64 + 4) = "operator[]";
        v216[0].n128_u16[6] = 1024;
        *(&v216[0].n128_u32[3] + 2) = 797;
        v216[1].n128_u16[1] = 2048;
        *(v216[1].n128_u64 + 4) = v12;
        v216[1].n128_u16[6] = 2048;
        *(&v216[1].n128_u64[1] + 6) = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_404;
      }

      v86 = (v12 + (v3 << 7));
      v87 = v86[7].i32[0];
      v88 = *(v11[57] + 16 * v4);
      v71 = vmulq_f32(v86[6], v88);
      v71.f32[0] = 1.0 - fminf(v71.f32[2] + vaddv_f32(*v71.f32), 1.0);
      v72.f64[0] = *(a3 + 8);
      v89 = v76;
      v90 = v222;
      v91 = v3;
      do
      {
        v93 = *v90++;
        v92 = v93;
        if (v14 <= v93)
        {
          goto LABEL_171;
        }

        v94 = (v12 + (v92 << 7));
        *&v73.f64[0] = v94[7].i64[1];
        if (v73.f64[0] >= v72.f64[0] && v94[7].i32[0] == v87)
        {
          v73 = vmulq_f32(v88, v94[6]);
          *v73.f64 = 1.0 - fminf(*&v73.f64[1] + vaddv_f32(*&v73.f64[0]), 1.0);
          if (*v73.f64 < v71.f32[0])
          {
            v91 = v92;
            v71.f32[0] = *v73.f64;
          }
        }

        --v89;
      }

      while (v89);
      if (v91 != v3)
      {
        v3 = v216[1].n128_u64[0];
        if (v216[1].n128_u64[0] <= v4)
        {
          goto LABEL_408;
        }

        *(v216[2].n128_u64[0] + 4 * v4) = v91;
        v5 = (v5 + 1);
      }

LABEL_136:
      ++v4;
    }

    while (v4 != v8);
    v95 = 0;
    v3 = v11[40];
    v4 = v216[1].n128_u64[0];
    v96 = v216[2].n128_u64[0];
    v97 = v11[42];
    do
    {
      if (v4 == v95)
      {
        goto LABEL_388;
      }

      if (v3 == v95)
      {
LABEL_389:
        v209[0] = 0;
        v231 = 0u;
        v232 = 0u;
        v229 = 0u;
        v230 = 0u;
        v228 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        *&v225[12] = 1024;
        *&v225[14] = 789;
        *&v225[18] = 2048;
        *&v225[20] = v3;
        *&v225[28] = 2048;
        *&v225[30] = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_390;
      }

      *(v97 + 4 * v95) = *(v96 + 4 * v95);
      ++v95;
    }

    while (v8 != v95);
    v98 = v5 == 0;
LABEL_143:
    v8 = v187;
    if (v216[0].n128_u64[0] && v216[2].n128_u64[0])
    {
      (*(*v216[0].n128_u64[0] + 40))();
      v79 = 0uLL;
    }

    v99 = v187 == 9 || v98;
    if (v99)
    {
      break;
    }

    v100 = v184;
    v101 = v12;
    if (v14)
    {
      do
      {
        *(v101 + 120) = 0;
        *v101 = v79;
        *(v101 + 16) = v79;
        *(v101 + 32) = v79;
        *(v101 + 48) = v79;
        *(v101 + 64) = v79;
        *(v101 + 80) = v79;
        *(v101 + 96) = v79;
        v101 += 128;
        v100 -= 128;
      }

      while (v100);
    }

    v102 = *(v11 + 6);
    if (*(v11 + 6))
    {
      v4 = 0;
      while (1)
      {
        v3 = v11[40];
        if (v3 <= v4)
        {
          break;
        }

        v3 = *(v11[42] + 4 * v4);
        if (v14 <= v3)
        {
          goto LABEL_244;
        }

        v5 = v11[60];
        if (v5 <= v4)
        {
          goto LABEL_245;
        }

        *v225 = *(v11[62] + 16 * v4);
        v5 = v11[55];
        if (v5 <= v4)
        {
          goto LABEL_246;
        }

        v103 = (v11[57] + 16 * v4);
        v105 = *v103;
        v104 = v103[1];
        v209[0] = v105;
        v209[1] = v104;
        v5 = v11[45];
        if (v5 <= v4)
        {
          goto LABEL_247;
        }

        if (v102 == v4)
        {
          goto LABEL_160;
        }
      }

LABEL_243:
      *v225 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v216[0].n128_u32[0] = 136315906;
      *(v216[0].n128_u64 + 4) = "operator[]";
      v216[0].n128_u16[6] = 1024;
      *(&v216[0].n128_u32[3] + 2) = 797;
      v216[1].n128_u16[1] = 2048;
      *(v216[1].n128_u64 + 4) = v4;
      v216[1].n128_u16[6] = 2048;
      *(&v216[1].n128_u64[1] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_244:
      *v225 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v216[0].n128_u32[0] = 136315906;
      *(v216[0].n128_u64 + 4) = "operator[]";
      v216[0].n128_u16[6] = 1024;
      *(&v216[0].n128_u32[3] + 2) = 789;
      v216[1].n128_u16[1] = 2048;
      *(v216[1].n128_u64 + 4) = v3;
      v216[1].n128_u16[6] = 2048;
      *(&v216[1].n128_u64[1] + 6) = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_245:
      *v225 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v216[0].n128_u32[0] = 136315906;
      *(v216[0].n128_u64 + 4) = "operator[]";
      v216[0].n128_u16[6] = 1024;
      *(&v216[0].n128_u32[3] + 2) = 797;
      v216[1].n128_u16[1] = 2048;
      *(v216[1].n128_u64 + 4) = v4;
      v216[1].n128_u16[6] = 2048;
      *(&v216[1].n128_u64[1] + 6) = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_246:
      v209[0] = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v216[0].n128_u32[0] = 136315906;
      *(v216[0].n128_u64 + 4) = "operator[]";
      v216[0].n128_u16[6] = 1024;
      *(&v216[0].n128_u32[3] + 2) = 797;
      v216[1].n128_u16[1] = 2048;
      *(v216[1].n128_u64 + 4) = v4;
      v216[1].n128_u16[6] = 2048;
      *(&v216[1].n128_u64[1] + 6) = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_247:
      *v222 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v216[0].n128_u32[0] = 136315906;
      *(v216[0].n128_u64 + 4) = "operator[]";
      v216[0].n128_u16[6] = 1024;
      *(&v216[0].n128_u32[3] + 2) = 797;
      v216[1].n128_u16[1] = 2048;
      *(v216[1].n128_u64 + 4) = v4;
      v216[1].n128_u16[6] = 2048;
      *(&v216[1].n128_u64[1] + 6) = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_248:
      *v225 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      v11 = v206;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v216[0].n128_u32[0] = 136315906;
      *(v216[0].n128_u64 + 4) = "operator[]";
      v216[0].n128_u16[6] = 1024;
      *(&v216[0].n128_u32[3] + 2) = 789;
      v216[1].n128_u16[1] = 2048;
      *(v216[1].n128_u64 + 4) = v14;
      v216[1].n128_u16[6] = 2048;
      *(&v216[1].n128_u64[1] + 6) = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_249:
      v186 = v130 + 48;
      re::DynamicArray<unsigned int>::resize(v130 + 6, 0, v225);
      goto LABEL_250;
    }

LABEL_160:
    v70 = v187 + 1;
  }

  while (v187 < 9);
  v9 = *(a3 + 8);
  v228 = 0uLL;
  DWORD2(v229) = 0;
  *&v229 = 0;
  v230 = 0u;
  v231 = 0u;
  LODWORD(v232) = 0;
  v233 = 0uLL;
  *(&v232 + 1) = 0;
  v234.i32[0] = 1;
  v234.i64[1] = 0;
  *&v235 = 0;
  v4 = v14;
  v236 = 0;
  re::DynamicArray<float>::resize(&v228, v14);
  v106 = v231.n128_u64[1];
  if (v231.n128_u64[1] < v14)
  {
    if (v231.n128_u64[0] < v14)
    {
      re::DynamicArray<re::DynamicBitset<unsigned long long,128ul>>::setCapacity(&v230 + 1, v14);
      v106 = v231.n128_u64[1];
    }

    v107 = v14 - v106;
    if (v14 > v106)
    {
      v108 = 56 * v106;
      do
      {
        v109 = *(&v232 + 1) + v108;
        *v109 = 0;
        *(v109 + 8) = 0;
        *(v109 + 16) = 1;
        *(v109 + 24) = 0;
        *(v109 + 32) = 0;
        *(v109 + 48) = 0;
        v108 += 56;
        --v107;
      }

      while (v107);
    }

LABEL_177:
    v231.n128_u64[1] = v4;
    LODWORD(v232) = v232 + 1;
    goto LABEL_178;
  }

LABEL_174:
  if (v106 > v4)
  {
    v110 = 56 * v4;
    v111 = v4;
    do
    {
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(*(&v232 + 1) + v110);
      ++v111;
      v110 += 56;
    }

    while (v111 < v231.n128_u64[1]);
    goto LABEL_177;
  }

LABEL_178:
  v181 = &v234.i64[1];
  v112 = v236;
  if ((v14 & 0x3F) != 0)
  {
    v5 = (v4 >> 6) + 1;
  }

  else
  {
    v5 = v4 >> 6;
  }

  v236 = v4;
  v216[0].n128_u64[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v233, v5, v216);
  a3 = v4;
  if (v14 && v112 > v4)
  {
    v113 = 63;
    v114 = v236 & 0x3F;
    if ((v236 & 0x3F) != 0 && v114 != 63)
    {
      v113 = ~(-1 << v114);
    }

    v115 = &v234.i64[1];
    if ((v234.i8[0] & 1) == 0)
    {
      v115 = v235;
    }

    v115[*(&v233 + 1) - 1] &= v113;
    goto LABEL_190;
  }

  if (v14)
  {
LABEL_190:
    v3 = 0;
    v7 = -1;
    v8 = v4;
    while (1)
    {
      v4 = v231.n128_u64[1];
      if (v231.n128_u64[1] <= v3)
      {
        goto LABEL_411;
      }

      i = *(&v232 + 1) + 56 * v3;
      v116 = *(i + 48);
      *(i + 48) = a3;
      v216[0].n128_u64[0] = 0;
      re::DynamicOverflowArray<unsigned long long,3ul>::resize(i, v5, v216);
      if (v116 > a3)
      {
        v117 = *(i + 48) & 0x3FLL;
        if (v117)
        {
          v129 = v117 == 63;
          v118 = -1 << v117;
          if (v129)
          {
            v119 = 63;
          }

          else
          {
            v119 = ~v118;
          }
        }

        else
        {
          v119 = 63;
        }

        if (*(i + 16))
        {
          v120 = i + 24;
        }

        else
        {
          v120 = *(i + 32);
        }

        *(v120 + 8 * *(i + 8) - 8) &= v119;
      }

      v4 = v231.n128_u64[1];
      if (v231.n128_u64[1] <= v3)
      {
        break;
      }

      v121 = *(&v232 + 1) + 56 * v3;
      v122 = *(v121 + 16);
      if (v122)
      {
        v123 = (v121 + 24);
      }

      else
      {
        v123 = *(v121 + 32);
      }

      v124 = *(v121 + 8);
      while (1)
      {
        v125 = v121 + 24;
        if ((v122 & 1) == 0)
        {
          v125 = *(v121 + 32);
        }

        if (v123 == (v125 + 8 * v124))
        {
          break;
        }

        *v123++ = 0;
        v122 = *(v121 + 16);
      }

      re::DynamicBitset<unsigned long long,64ul>::setBit(&v233, v3++);
      if (v3 == a3)
      {
        goto LABEL_212;
      }
    }

LABEL_412:
    v209[0] = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v225 = 136315906;
    *&v225[4] = "operator[]";
    *&v225[12] = 1024;
    *&v225[14] = 789;
    *&v225[18] = 2048;
    *&v225[20] = v3;
    *&v225[28] = 2048;
    *&v225[30] = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_413:
    *v222 = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v209[0].i32[0] = 136315906;
    *(v209 + 4) = "operator[]";
    v209[1].i16[2] = 1024;
    *(&v209[1].i32[1] + 2) = 789;
    v209[2].i16[1] = 2048;
    *(&v209[2] + 4) = v14;
    v209[3].i16[2] = 2048;
    *(&v209[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_414:
    *v222 = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v225 = 136315906;
    *&v225[4] = "operator[]";
    *&v225[12] = 1024;
    *&v225[14] = 797;
    *&v225[18] = 2048;
    *&v225[20] = v4;
    *&v225[28] = 2048;
    *&v225[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_415:
    *v222 = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v225 = 136315906;
    *&v225[4] = "operator[]";
    *&v225[12] = 1024;
    *&v225[14] = 789;
    *&v225[18] = 2048;
    *&v225[20] = v3;
    *&v225[28] = 2048;
    *&v225[30] = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_416:
    *v222 = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v209[0].i32[0] = 136315906;
    *(v209 + 4) = "operator[]";
    v209[1].i16[2] = 1024;
    *(&v209[1].i32[1] + 2) = 789;
    v209[2].i16[1] = 2048;
    *(&v209[2] + 4) = v5;
    v209[3].i16[2] = 2048;
    *(&v209[3] + 6) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_417:
    v201[0] = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    *&v206[14] = 789;
    *&v206[18] = 2048;
    *&v206[20] = v5;
    v207 = 2048;
    *v208 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_418:
    v201[0] = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    v176 = v147;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    *&v206[14] = 789;
    *&v206[18] = 2048;
    *&v206[20] = v5;
    v207 = 2048;
    *v208 = v176;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_419:
    v201[0] = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    *&v206[14] = 858;
    *&v206[18] = 2048;
    *&v206[20] = a3;
    v207 = 2048;
    *v208 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_420:
    v201[0] = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    v177 = v151;
    v178 = v147;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    *&v206[14] = 789;
    *&v206[18] = 2048;
    *&v206[20] = v177;
    v207 = 2048;
    *v208 = v178;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_421:
    *v222 = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v209[0].i32[0] = 136315906;
    *(v209 + 4) = "operator[]";
    v209[1].i16[2] = 1024;
    *(&v209[1].i32[1] + 2) = 789;
    v209[2].i16[1] = 2048;
    *(&v209[2] + 4) = i;
    v209[3].i16[2] = 2048;
    *(&v209[3] + 6) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_422:
    *v222 = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v209[0].i32[0] = 136315906;
    *(v209 + 4) = "operator[]";
    v209[1].i16[2] = 1024;
    *(&v209[1].i32[1] + 2) = 789;
    v209[2].i16[1] = 2048;
    *(&v209[2] + 4) = 0;
    v209[3].i16[2] = 2048;
    *(&v209[3] + 6) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_423:
    *v222 = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v209[0].i32[0] = 136315906;
    *(v209 + 4) = "operator[]";
    v209[1].i16[2] = 1024;
    *(&v209[1].i32[1] + 2) = 789;
    v209[2].i16[1] = 2048;
    *(&v209[2] + 4) = v3;
    v209[3].i16[2] = 2048;
    *(&v209[3] + 6) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_424:
    *v206 = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v209[0].i32[0] = 136315906;
    *(v209 + 4) = "operator[]";
    v209[1].i16[2] = 1024;
    *(&v209[1].i32[1] + 2) = 789;
    v209[2].i16[1] = 2048;
    *(&v209[2] + 4) = v5;
    v209[3].i16[2] = 2048;
    *(&v209[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_425:
    *v206 = 0;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v228 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v222 = 136315906;
    *&v222[4] = "operator[]";
    *&v222[12] = 1024;
    *&v222[14] = 789;
    *&v222[18] = 2048;
    *&v222[20] = v14;
    v223 = 2048;
    *v224 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_426:
    *v206 = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v209[0].i32[0] = 136315906;
    *(v209 + 4) = "operator[]";
    v209[1].i16[2] = 1024;
    *(&v209[1].i32[1] + 2) = 789;
    v209[2].i16[1] = 2048;
    *(&v209[2] + 4) = v3;
    v209[3].i16[2] = 2048;
    *(&v209[3] + 6) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_427:
    *v206 = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v209[0].i32[0] = 136315906;
    *(v209 + 4) = "operator[]";
    v209[1].i16[2] = 1024;
    *(&v209[1].i32[1] + 2) = 789;
    v209[2].i16[1] = 2048;
    *(&v209[2] + 4) = v3;
    v209[3].i16[2] = 2048;
    *(&v209[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_428:
    *v206 = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v209[0].i32[0] = 136315906;
    *(v209 + 4) = "operator[]";
    v209[1].i16[2] = 1024;
    *(&v209[1].i32[1] + 2) = 789;
    v209[2].i16[1] = 2048;
    *(&v209[2] + 4) = v4;
    v209[3].i16[2] = 2048;
    *(&v209[3] + 6) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_429:
    v201[0] = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    *&v206[14] = 789;
    *&v206[18] = 2048;
    *&v206[20] = v5;
    v207 = 2048;
    *v208 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_430:
    v201[0] = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    *&v206[14] = 858;
    *&v206[18] = 2048;
    *&v206[20] = v3;
    v207 = 2048;
    *v208 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_212:
  v185 = *(v11 + 6);
  if (*(v11 + 6))
  {
    v4 = 0;
    v7 = 56;
    while (1)
    {
      v126 = re::GeomConnectivityManifold::fetchFaceIncidentFaces(v11, v4, v209);
      v3 = v11[40];
      if (v3 <= v4)
      {
        goto LABEL_414;
      }

      v3 = *(v11[42] + 4 * v4);
      if (v14 <= v3)
      {
        goto LABEL_415;
      }

      v188 = v4;
      if (v126)
      {
        break;
      }

LABEL_229:
      v4 = v188 + 1;
      if (v188 + 1 == v185)
      {
        *v225 = -1;
        memset(&v225[8], 0, 28);
        v227 = 0;
        memset(&v225[40], 0, 32);
        v226 = 0;
        v5 = a3;
        goto LABEL_232;
      }
    }

    v8 = *(v12 + (v3 << 7) + 112);
    v127 = v126;
    v4 = v209;
    while (1)
    {
      v128 = *v4;
      v4 += 4;
      i = v128;
      v5 = v11[40];
      if (v5 <= v128)
      {
        break;
      }

      i = *(v11[42] + 4 * i);
      if (v14 <= i)
      {
        goto LABEL_391;
      }

      v129 = i != v3 && *(v12 + (i << 7) + 112) == v8;
      if (v129)
      {
        v5 = v231.n128_u64[1];
        if (v231.n128_u64[1] <= v3)
        {
          goto LABEL_396;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(*(&v232 + 1) + 56 * v3, i);
        v5 = v231.n128_u64[1];
        if (v231.n128_u64[1] <= i)
        {
          goto LABEL_397;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(*(&v232 + 1) + 56 * i, v3);
      }

      if (!--v127)
      {
        goto LABEL_229;
      }
    }

LABEL_390:
    *v222 = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v225 = 136315906;
    *&v225[4] = "operator[]";
    *&v225[12] = 1024;
    *&v225[14] = 797;
    *&v225[18] = 2048;
    *&v225[20] = i;
    *&v225[28] = 2048;
    *&v225[30] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_391:
    *v222 = 0;
    v217 = 0u;
    v218 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v225 = 136315906;
    *&v225[4] = "operator[]";
    *&v225[12] = 1024;
    *&v225[14] = 789;
    *&v225[18] = 2048;
    *&v225[20] = i;
    *&v225[28] = 2048;
    *&v225[30] = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_392:
    *&v210 = 0;
    v217 = v39;
    v218 = v39;
    v216[1] = v39;
    v216[2] = v39;
    v216[0] = v39;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v211 = 136315906;
    *&v211[4] = "operator[]";
    *&v211[12] = 1024;
    *&v211[14] = 797;
    v212 = 2048;
    v213 = v14;
    v214 = 2048;
    v215 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_393:
    *v225 = 0;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v228 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v216[0].n128_u32[0] = 136315906;
    *(v216[0].n128_u64 + 4) = "operator[]";
    v216[0].n128_u16[6] = 1024;
    *(&v216[0].n128_u32[3] + 2) = 789;
    v216[1].n128_u16[1] = 2048;
    *(v216[1].n128_u64 + 4) = v5;
    v216[1].n128_u16[6] = 2048;
    *(&v216[1].n128_u64[1] + 6) = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_394:
    v209[0] = 0;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v228 = 0u;
    v85 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v225 = 136315906;
    *&v225[4] = "operator[]";
    *&v225[12] = 1024;
    *&v225[14] = 789;
    *&v225[18] = 2048;
    *&v225[20] = v3;
    *&v225[28] = 2048;
    *&v225[30] = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_395;
  }

  *v225 = -1;
  v130 = v225;
  memset(&v225[8], 0, 28);
  v227 = 0;
  memset(&v225[40], 0, 32);
  v226 = 0;
  v5 = a3;
  if (!v14)
  {
    goto LABEL_249;
  }

LABEL_232:
  re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v225[8], v14);
  v4 = &v225[48];
  re::DynamicArray<unsigned int>::resize(&v225[48], v14, v225);
  v186 = &v225[48];
  if (v5)
  {
    v131 = 0;
    v3 = v12 + 120;
    while (v14 != v131)
    {
      v132 = *v3;
      if (v9 > v132)
      {
        v216[0].n128_u64[0] = __PAIR64__(LODWORD(v132), v131);
        re::internal::PriorityQueue::push(v225, v216);
      }

      ++v131;
      v3 += 128;
      if (v5 == v131)
      {
        goto LABEL_250;
      }
    }

    goto LABEL_413;
  }

LABEL_250:
  v3 = *&v225[24];
  if (*&v225[24])
  {
    v133 = v9;
    v7 = 56;
    while (1)
    {
      i = **&v225[40];
      v5 = **&v225[40];
      if (v3 == 1)
      {
        *&v225[24] = 0;
        ++*&v225[32];
        v3 = *&v225[64];
        if (*&v225[64] <= v5)
        {
          goto LABEL_416;
        }

        goto LABEL_277;
      }

      v134 = **&v225[40];
      i = v3 - 1;
      if (v3 <= i)
      {
        goto LABEL_421;
      }

      **&v225[40] = *(*&v225[40] + 8 * i);
      v8 = *&v225[24];
      if (!*&v225[24])
      {
        goto LABEL_422;
      }

      v4 = *&v225[64];
      v3 = **&v225[40];
      if (*&v225[64] <= v3)
      {
        goto LABEL_423;
      }

      *(v227 + 4 * v3) = 0;
      if (v8 < i)
      {
        break;
      }

      if (v8 > i)
      {
        goto LABEL_262;
      }

LABEL_263:
      v135 = 0;
      for (i = 0; ; v135 = i)
      {
        v3 = (2 * v135) | 1u;
        if (v3 < v8)
        {
          if (v8 <= v3)
          {
            goto LABEL_399;
          }

          v4 = v135;
          if (v8 <= v135)
          {
            goto LABEL_401;
          }

          i = v135;
          if (*(*&v225[40] + 8 * v3 + 4) < *(*&v225[40] + 8 * v135 + 4))
          {
            i = (2 * v135) | 1u;
          }
        }

        v3 = (2 * v135 + 2);
        if (v3 < v8)
        {
          if (v8 <= v3)
          {
            goto LABEL_400;
          }

          v4 = i;
          if (v8 <= i)
          {
            goto LABEL_402;
          }

          if (*(*&v225[40] + 8 * v3 + 4) < *(*&v225[40] + 8 * i + 4))
          {
            i = (2 * v135 + 2);
          }
        }

        if (i == v135)
        {
          break;
        }

        re::internal::PriorityQueue::swap(v225, v135, i);
        v8 = *&v225[24];
      }

      v3 = *&v225[64];
      i = v134;
      if (*&v225[64] <= v5)
      {
        goto LABEL_416;
      }

LABEL_277:
      *(v227 + 4 * v5) = *v225;
      if (re::DynamicBitset<unsigned long long,64ul>::getBit(&v233, v5))
      {
        *&v224[2] = 0;
        memset(v222, 0, sizeof(v222));
        re::internal::Graph<unsigned int>::nodeNeighbors(&v228, i, v222);
        if (v14 <= v5)
        {
          goto LABEL_424;
        }

        if (*&v222[16])
        {
          v136 = *&v224[2];
          v137 = (v12 + (v5 << 7));
          *&v138 = v137[5].f64[0];
          *v139.f32 = vcvt_f32_f64(v137[4]);
          v139.i64[1] = __PAIR64__(1.0, v138);
          v140 = 4 * *&v222[16];
          v141 = INFINITY;
          LODWORD(v142) = i;
          do
          {
            v3 = *v136;
            if (v14 <= v3)
            {
              goto LABEL_398;
            }

            v144 = vmulq_f32(v139, *(v12 + (v3 << 7) + 96));
            v143 = vextq_s8(v144, v144, 8uLL);
            *&v144.f64[0] = vadd_f32(*&v144.f64[0], *&v143.f64[0]);
            *v144.f64 = fabsf(vaddv_f32(*&v144.f64[0]));
            if (*v144.f64 >= v141)
            {
              v142 = v142;
            }

            else
            {
              v142 = v3;
            }

            if (*v144.f64 < v141)
            {
              v141 = *v144.f64;
            }

            ++v136;
            v140 -= 4;
          }

          while (v140);
          v145 = i;
          v8 = v142;
          if (v142 != i)
          {
            do
            {
              v5 = v8;
              v8 = v145;
              v145 = v5;
            }

            while (v8 > v5);
            if (v8 != v5)
            {
              v209[4] = 0;
              memset(v209, 0, 28);
              re::internal::Graph<unsigned int>::nodeNeighbors(&v228, v5, v209);
              if (v209[2])
              {
                v4 = v209[4];
                v146 = v8;
                v189 = ~(1 << v5);
                v179 = v5;
                v180 = i;
                a3 = v5 >> 6;
                i = 4 * *&v209[2];
                do
                {
                  v5 = *v4;
                  if (v5 != v8)
                  {
                    v3 = v231.n128_u64[1];
                    if (v231.n128_u64[1] <= v5)
                    {
                      goto LABEL_417;
                    }

                    v3 = v146;
                    re::DynamicBitset<unsigned long long,64ul>::setBit(*(&v232 + 1) + 56 * v5, v146);
                    v147 = v231.n128_u64[1];
                    if (v231.n128_u64[1] <= v5)
                    {
                      goto LABEL_418;
                    }

                    v148 = *(&v232 + 1);
                    v149 = *(&v232 + 1) + 56 * v5;
                    v7 = *(v149 + 8);
                    if (v7 <= a3)
                    {
                      goto LABEL_419;
                    }

                    if (*(v149 + 16))
                    {
                      v150 = v149 + 24;
                    }

                    else
                    {
                      v150 = *(v149 + 32);
                    }

                    v7 = 56;
                    v151 = v3;
                    *(v150 + 8 * a3) &= v189;
                    if (v147 <= v3)
                    {
                      goto LABEL_420;
                    }

                    re::DynamicBitset<unsigned long long,64ul>::setBit(v148 + 56 * v3, v5);
                    v146 = v3;
                  }

                  v4 += 4;
                  i -= 4;
                }

                while (i);
                v5 = v179;
                i = v180;
              }

              else
              {
                v5 = v5;
              }

              v3 = v231.n128_u64[1];
              if (v231.n128_u64[1] <= v5)
              {
                goto LABEL_429;
              }

              v152 = (*(&v232 + 1) + 56 * v5);
              *(v152 + 6) = 0;
              v216[0].n128_u64[0] = 0;
              re::DynamicOverflowArray<unsigned long long,3ul>::resize(v152, 0, v216);
              v3 = v5 >> 6;
              v4 = *(&v233 + 1);
              if (*(&v233 + 1) <= v5 >> 6)
              {
                goto LABEL_430;
              }

              v153 = v181;
              if ((v234.i8[0] & 1) == 0)
              {
                v153 = v235;
              }

              v153[v3] &= ~(1 << v5);
              if (*v209 && *&v209[4])
              {
                (*(**v209 + 40))(*v209, *&v209[4]);
              }
            }

            v3 = v8;
            v4 = v229;
            if (v229 <= v8)
            {
              goto LABEL_426;
            }

            *(v230 + 4 * v8) = 1;
            if (v8 == i)
            {
              v3 = i;
            }

            else
            {
              v3 = v142;
            }

            if (v8 == i)
            {
              v4 = v142;
            }

            else
            {
              v4 = i;
            }

            if (v14 <= v3)
            {
              goto LABEL_427;
            }

            if (v14 <= v4)
            {
              goto LABEL_428;
            }

            v154 = v12 + (v3 << 7);
            *(&v221 + 1) = 0;
            memset(v216, 0, sizeof(v216));
            v217 = 0u;
            v218 = 0u;
            v219 = 0u;
            v220 = 0u;
            v155 = *(v154 + 64);
            *&v155.f64[0] = vcvt_f32_f64(v155);
            v156 = *(v154 + 80);
            *&v156 = v156;
            LODWORD(v155.f64[1]) = LODWORD(v156);
            v5 = v12 + (v4 << 7);
            *v209[0].f32 = v155;
            *v206 = *(v154 + 96);
            *v155.f64 = *(v154 + 120);
            v157 = *(v5 + 64);
            *&v157.f64[0] = vcvt_f32_f64(v157);
            v158 = *(v5 + 80);
            *&v158 = v158;
            LODWORD(v157.f64[1]) = LODWORD(v158);
            *v209[0].f32 = v157;
            *v206 = *(v5 + 96);
            *v157.f64 = *(v5 + 120);
            LODWORD(v221) = *(v154 + 112);
            *(v154 + 64) = v218;
            *(v154 + 80) = v219;
            *(v154 + 96) = v220;
            *v154 = v216[0];
            *(v154 + 16) = v216[1];
            *(v154 + 32) = v216[2];
            *(v154 + 48) = v217;
            *(v154 + 112) = v221;
            *(v5 + 120) = 0;
            *v5 = 0u;
            *(v5 + 16) = 0u;
            *(v5 + 32) = 0u;
            *(v5 + 48) = 0u;
            *(v5 + 64) = 0u;
            *(v5 + 80) = 0u;
            *(v5 + 96) = 0u;
            v161 = v11[40];
            if (v161)
            {
              v162 = v11[42];
              do
              {
                if (*v162 == v4)
                {
                  *v162 = v3;
                }

                ++v162;
                --v161;
              }

              while (v161);
            }

            v163 = *(v154 + 120);
            if (v163 < v133)
            {
              *&v164 = v163;
              v216[0].n128_u64[0] = __PAIR64__(v164, v3);
              re::internal::PriorityQueue::push(v225, v216);
            }
          }
        }

        if (*v222 && *&v224[2])
        {
          (*(**v222 + 40))(*v222, *&v224[2]);
        }
      }

      v3 = *&v225[24];
      if (!*&v225[24])
      {
        goto LABEL_332;
      }
    }

    if (*&v225[16] < i)
    {
      re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v225[8], i);
    }

LABEL_262:
    *&v225[24] = i;
    ++*&v225[32];
    v8 = i;
    goto LABEL_263;
  }

LABEL_332:
  if (*&v225[48])
  {
    if (v227)
    {
      (*(**&v225[48] + 40))(*&v225[48], v227);
    }

    v227 = 0;
    v186[1] = 0;
    v186[2] = 0;
    *v186 = 0;
    ++v226;
  }

  if (*&v225[8] && *&v225[40])
  {
    (*(**&v225[8] + 40))(*&v225[8], *&v225[40]);
  }

  if (v233)
  {
    v165 = v234.i32[0];
    if ((v234.i8[0] & 1) == 0)
    {
      (*(*v233 + 40))(v233, v235);
      v165 = v234.i32[0];
    }

    v233 = 0uLL;
    v234.i32[0] = (v165 | 1) + 2;
  }

  v166 = *(&v230 + 1);
  if (*(&v230 + 1))
  {
    v167 = *(&v232 + 1);
    if (*(&v232 + 1))
    {
      if (v231.n128_u64[1])
      {
        v168 = 56 * v231.n128_u64[1];
        do
        {
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v167);
          v167 += 56;
          v168 -= 56;
        }

        while (v168);
        v166 = *(&v230 + 1);
        v167 = *(&v232 + 1);
      }

      (*(*v166 + 40))(v166, v167);
    }

    *(&v232 + 1) = 0;
    v231 = 0uLL;
    *(&v230 + 1) = 0;
    LODWORD(v232) = v232 + 1;
  }

  if (v228 && v230)
  {
    (*(*v228 + 40))(v228, v230);
  }

  v169 = v11[3];
  v216[0] = 0uLL;
  v216[1].n128_u32[0] = 1;
  v216[1].n128_u64[1] = 0;
  v216[2].n128_u64[0] = 0;
  if ((v169 & 0x3F) != 0)
  {
    v170 = (v169 >> 6) + 1;
  }

  else
  {
    v170 = v169 >> 6;
  }

  v217.n128_u64[0] = v169;
  *&v228 = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(v216, v170, &v228);
  *&v225[32] = 0;
  memset(v225, 0, 28);
  re::DynamicArray<unsigned int>::resize(v225, v169, &re::kInvalidMeshIndex);
  v209[4] = 0;
  memset(v209, 0, 28);
  LODWORD(v197[0]) = 0;
  if (v169)
  {
    v3 = 0;
    v171 = 0;
    do
    {
      if ((re::DynamicBitset<unsigned long long,64ul>::getBit(v216, v171) & 1) == 0)
      {
        re::DynamicArray<int>::add(v209, v197);
        re::DynamicBitset<unsigned long long,64ul>::setBit(v216, LODWORD(v197[0]));
        v14 = LODWORD(v197[0]);
        v4 = v11[40];
        if (v4 <= LODWORD(v197[0]))
        {
          goto LABEL_425;
        }

        v172 = v209[2];
        if (v209[2])
        {
          v4 = *(v11[42] + 4 * LODWORD(v197[0]));
          while (1)
          {
            v14 = *(*&v209[4] + 4 * (*&v172 - 1));
            re::DynamicArray<float>::resize(v209, *&v172 - 1);
            v5 = *&v225[16];
            if (*&v225[16] <= v14)
            {
              break;
            }

            *(*&v225[32] + 4 * v14) = v3;
            v173 = re::GeomConnectivityManifold::fetchFaceIncidentFaces(v11, v14, v206);
            if (v173)
            {
              v5 = v173;
              i = v206;
              do
              {
                v174 = *i;
                i += 4;
                *v211 = v174;
                if ((re::DynamicBitset<unsigned long long,64ul>::getBit(v216, v174) & 1) == 0)
                {
                  v14 = *v211;
                  v7 = v11[40];
                  if (v7 <= *v211)
                  {
                    v201[0] = 0;
                    v231 = 0u;
                    v232 = 0u;
                    v229 = 0u;
                    v230 = 0u;
                    v228 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v222 = 136315906;
                    *&v222[4] = "operator[]";
                    *&v222[12] = 1024;
                    *&v222[14] = 789;
                    *&v222[18] = 2048;
                    *&v222[20] = v14;
                    v223 = 2048;
                    *v224 = v7;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_388:
                    v209[0] = 0;
                    v231 = 0u;
                    v232 = 0u;
                    v229 = 0u;
                    v230 = 0u;
                    v228 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v225 = 136315906;
                    *&v225[4] = "operator[]";
                    *&v225[12] = 1024;
                    *&v225[14] = 789;
                    *&v225[18] = 2048;
                    *&v225[20] = v4;
                    *&v225[28] = 2048;
                    *&v225[30] = v4;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    goto LABEL_389;
                  }

                  if (v4 == *(v11[42] + 4 * *v211))
                  {
                    re::DynamicBitset<unsigned long long,64ul>::setBit(v216, *v211);
                    re::DynamicArray<int>::add(v209, v211);
                  }
                }

                --v5;
              }

              while (v5);
            }

            v172 = v209[2];
            if (!*&v209[2])
            {
              goto LABEL_372;
            }
          }

LABEL_410:
          *v206 = 0;
          v231 = 0u;
          v232 = 0u;
          v229 = 0u;
          v230 = 0u;
          v228 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v222 = 136315906;
          *&v222[4] = "operator[]";
          *&v222[12] = 1024;
          *&v222[14] = 789;
          *&v222[18] = 2048;
          *&v222[20] = v14;
          v223 = 2048;
          *v224 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_411:
          v209[0] = 0;
          v217 = 0u;
          v218 = 0u;
          memset(v216, 0, sizeof(v216));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v225 = 136315906;
          *&v225[4] = "operator[]";
          *&v225[12] = 1024;
          *&v225[14] = 789;
          *&v225[18] = 2048;
          *&v225[20] = v3;
          *&v225[28] = 2048;
          *&v225[30] = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_412;
        }

LABEL_372:
        v3 = (v3 + 1);
      }

      v171 = LODWORD(v197[0]) + 1;
      LODWORD(v197[0]) = v171;
    }

    while (v171 < v169);
  }

  re::DynamicArray<float>::operator=((v11 + 38), v225);
  if (*v209 && *&v209[4])
  {
    (*(**v209 + 40))(*v209, *&v209[4]);
  }

  if (*v225 && *&v225[32])
  {
    (*(**v225 + 40))(*v225, *&v225[32]);
  }

  if (v216[0].n128_u64[0] && (v216[1].n128_u8[0] & 1) == 0)
  {
    (*(*v216[0].n128_u64[0] + 40))(v216[0].n128_u64[0], v216[2].n128_u64[0]);
  }

  re::DynamicArray<float>::operator=(v182, v11 + 38);
  result = v191;
  if (v191 && v12)
  {
    return (*(*v191 + 40))(v191, v12);
  }

  return result;
}