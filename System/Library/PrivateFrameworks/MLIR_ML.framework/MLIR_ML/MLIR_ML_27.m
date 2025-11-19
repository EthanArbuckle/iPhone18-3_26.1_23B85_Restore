char *_ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (2)
  {
    while (2)
    {
      if (a6 <= a8 || a5 <= a8)
      {
        if (a5 > a6)
        {
          if (a2 == a3)
          {
            return result;
          }

          v79 = a3 - a2 - 8;
          v80 = a7;
          v81 = a2;
          if (v79 < 0x18)
          {
            goto LABEL_133;
          }

          v80 = a7;
          v81 = a2;
          if ((a7 - a2) <= 0x1F)
          {
            goto LABEL_133;
          }

          v82 = (v79 >> 3) + 1;
          v83 = 8 * (v82 & 0x3FFFFFFFFFFFFFFCLL);
          v80 = &a7[v83];
          v81 = &a2[v83];
          v84 = (a2 + 16);
          v85 = a7 + 16;
          v86 = v82 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v87 = *v84;
            *(v85 - 1) = *(v84 - 1);
            *v85 = v87;
            v84 += 2;
            v85 += 2;
            v86 -= 4;
          }

          while (v86);
          if (v82 != (v82 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_133:
            do
            {
              v88 = *v81;
              v81 += 8;
              *v80 = v88;
              v80 += 8;
            }

            while (v81 != a3);
          }

          v89 = *(a4 + 8);
          for (i = a3; ; i -= 8)
          {
            if (a2 == result)
            {
              v112 = v80 - a7;
              if (v80 != a7)
              {
                v113 = v112 - 8;
                if ((v112 - 8) < 0x48 || (v80 - i) < 0x20)
                {
                  v114 = v80;
                  goto LABEL_121;
                }

                v117 = a3 - 16;
                v118 = (v113 >> 3) + 1;
                v119 = 8 * (v118 & 0x3FFFFFFFFFFFFFFCLL);
                v114 = &v80[-v119];
                a3 -= v119;
                v120 = v80 - 16;
                v121 = v118 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v122 = *v120;
                  *(v117 - 1) = *(v120 - 1);
                  *v117 = v122;
                  v117 -= 32;
                  v120 -= 32;
                  v121 -= 4;
                }

                while (v121);
                if (v118 != (v118 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_121:
                  v115 = a3 - 8;
                  do
                  {
                    v116 = *(v114 - 1);
                    v114 -= 8;
                    *v115 = v116;
                    v115 -= 8;
                  }

                  while (v114 != a7);
                }
              }

              return result;
            }

            v92 = a2 - 8;
            v91 = *(a2 - 1);
            v93 = *v89;
            v94 = *(*v91 + 16);
            v95 = *(**(v80 - 1) + 16);
            if (v95 == *v89)
            {
              if (v94 != v93)
              {
                goto LABEL_87;
              }
            }

            else if (v94 != v93 && v94 > v95)
            {
              goto LABEL_87;
            }

            v91 = *(v80 - 1);
            v92 = a2;
            v80 -= 8;
LABEL_87:
            *(a3 - 1) = v91;
            a3 -= 8;
            a2 = v92;
            if (v80 == a7)
            {
              return result;
            }
          }
        }

        if (result == a2)
        {
          return result;
        }

        v97 = a2 - result - 8;
        v98 = a7;
        v99 = result;
        if (v97 < 0x18)
        {
          goto LABEL_134;
        }

        v98 = a7;
        v99 = result;
        if ((a7 - result) <= 0x1F)
        {
          goto LABEL_134;
        }

        v100 = (v97 >> 3) + 1;
        v101 = 8 * (v100 & 0x3FFFFFFFFFFFFFFCLL);
        v98 = &a7[v101];
        v99 = &result[v101];
        v102 = (result + 16);
        v103 = a7 + 16;
        v104 = v100 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v105 = *v102;
          *(v103 - 1) = *(v102 - 1);
          *v103 = v105;
          v102 += 2;
          v103 += 2;
          v104 -= 4;
        }

        while (v104);
        if (v100 != (v100 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_134:
          do
          {
            v106 = *v99;
            v99 += 8;
            *v98 = v106;
            v98 += 8;
          }

          while (v99 != a2);
        }

        v107 = *(a4 + 8);
        while (1)
        {
          while (1)
          {
            if (a2 == a3)
            {

              return memmove(result, a7, v98 - a7);
            }

            v108 = *v107;
            v109 = *(**a2 + 16);
            v110 = *(**a7 + 16);
            if (v109 == *v107)
            {
              break;
            }

            if (v110 == v108 || v110 <= v109)
            {
              goto LABEL_114;
            }

LABEL_105:
            *result = *a2;
            result += 8;
            a2 += 8;
            if (a7 == v98)
            {
              return result;
            }
          }

          if (v110 != v108)
          {
            goto LABEL_105;
          }

LABEL_114:
          *result = *a7;
          result += 8;
          a7 += 8;
          if (a7 == v98)
          {
            return result;
          }
        }
      }

      if (!a5)
      {
        return result;
      }

      v9 = 0;
      v10 = 0;
      v11 = **(a4 + 8);
      v12 = *(**a2 + 16);
      while (1)
      {
        v14 = *&result[8 * v10];
        v15 = *(*v14 + 16);
        if (v12 != v11)
        {
          break;
        }

        if (v15 != v11)
        {
          goto LABEL_13;
        }

LABEL_10:
        ++v10;
        v9 -= 8;
        if (a5 == v10)
        {
          return result;
        }
      }

      v13 = v15 != v11 && v15 > v12;
      if (!v13)
      {
        goto LABEL_10;
      }

LABEL_13:
      v16 = a5 - v10;
      v17 = &result[-v9];
      if (a5 - v10 >= a6)
      {
        if (a5 - 1 == v10)
        {
          *&result[8 * v10] = *a2;
          *a2 = v14;
          return result;
        }

        v31 = v16 / 2;
        v33 = &result[8 * (v16 / 2)];
        v19 = a2;
        if (a3 != a2)
        {
          v34 = (a3 - a2) >> 3;
          v35 = *(**&v33[8 * v10] + 16);
          v19 = a2;
          if (v35 == v11)
          {
            do
            {
              v36 = v34 >> 1;
              v37 = &v19[8 * (v34 >> 1)];
              v39 = *v37;
              v38 = (v37 + 1);
              v40 = *(*v39 + 16);
              v41 = v40 != v11 || v35 == v40;
              v34 += ~v36;
              if (v41)
              {
                v34 = v36;
              }

              else
              {
                v19 = v38;
              }
            }

            while (v34);
          }

          else
          {
            do
            {
              v42 = v34 >> 1;
              v43 = &v19[8 * (v34 >> 1)];
              v45 = *v43;
              v44 = (v43 + 1);
              v46 = *(*v45 + 16);
              v48 = v46 == v11 || v35 > v46;
              v34 += ~v42;
              if (v48)
              {
                v19 = v44;
              }

              else
              {
                v34 = v42;
              }
            }

            while (v34);
          }
        }

        v22 = &v33[-v9];
        v18 = (v19 - a2) >> 3;
        v32 = v19;
        if (&v33[-v9] == a2)
        {
          goto LABEL_72;
        }

LABEL_51:
        v32 = v22;
        if (a2 != v19)
        {
          v49 = v22 + 8;
          if (v22 + 8 == a2)
          {
            v123 = *v22;
            v125 = v17;
            v55 = v19 - a2;
            v127 = a3;
            v56 = a5;
            v57 = a6;
            v58 = a4;
            memmove(v22, v22 + 8, v19 - a2);
            v17 = v125;
            a3 = v127;
            a4 = v58;
            a6 = v57;
            a5 = v56;
            v32 = &v22[v55];
            *&v22[v55] = v123;
          }

          else
          {
            v50 = a2 + 8;
            if (a2 + 8 == v19)
            {
              v59 = *(v19 - 1);
              v32 = v22 + 8;
              if (v19 - 8 != v22)
              {
                v126 = v17;
                v128 = a3;
                v60 = a5;
                v124 = a6;
                v61 = a4;
                memmove(v22 + 8, v22, v19 - 8 - v22);
                a6 = v124;
                v17 = v126;
                a4 = v61;
                a5 = v60;
                a3 = v128;
              }

              *v22 = v59;
            }

            else
            {
              v51 = a2 - v22;
              v52 = (a2 - v22) >> 3;
              v53 = (v19 - a2) >> 3;
              if (v52 == v53)
              {
                do
                {
                  v54 = *(v49 - 1);
                  *(v49 - 1) = *(v50 - 1);
                  *(v50 - 1) = v54;
                  if (v49 == a2)
                  {
                    break;
                  }

                  v49 += 8;
                  v41 = v50 == v19;
                  v50 += 8;
                }

                while (!v41);
                v32 = a2;
              }

              else
              {
                v62 = (a2 - v22) >> 3;
                do
                {
                  v63 = v62;
                  v62 = v53;
                  v53 = v63 % v53;
                }

                while (v53);
                v64 = &v22[8 * v62];
                do
                {
                  v66 = *(v64 - 1);
                  v64 -= 8;
                  v65 = v66;
                  v67 = &v64[v51];
                  v68 = v64;
                  do
                  {
                    v69 = v68;
                    v68 = v67;
                    *v69 = *v67;
                    v70 = (v19 - v67) >> 3;
                    v71 = __OFSUB__(v52, v70);
                    v72 = v52 - v70;
                    v13 = (v72 < 0) ^ v71;
                    v67 = &v22[8 * v72];
                    if (v13)
                    {
                      v67 = v68 + v51;
                    }
                  }

                  while (v67 != v64);
                  *v68 = v65;
                }

                while (v64 != v22);
                v32 = &v22[v19 - a2];
              }
            }
          }
        }

        goto LABEL_72;
      }

      v18 = a6 / 2;
      v19 = &a2[8 * (a6 / 2)];
      if (v17 == a2)
      {
        v22 = &result[-v9];
        v31 = 0;
        v32 = &a2[8 * (a6 / 2)];
        goto LABEL_72;
      }

      v20 = (a2 - result + v9) >> 3;
      v21 = *(**v19 + 16);
      v22 = v17;
      if (v21 == v11)
      {
        do
        {
          v23 = v20 >> 1;
          v24 = &v22[8 * (v20 >> 1)];
          v26 = *v24;
          v25 = (v24 + 1);
          v20 += ~(v20 >> 1);
          if (*(*v26 + 16) == v11)
          {
            v22 = v25;
          }

          else
          {
            v20 = v23;
          }
        }

        while (v20);
      }

      else
      {
        do
        {
          v27 = v20 >> 1;
          v28 = &v22[8 * (v20 >> 1)];
          v30 = *v28;
          v29 = (v28 + 1);
          v20 += ~(v20 >> 1);
          if (*(*v30 + 16) != v11 && *(*v30 + 16) > v21)
          {
            v20 = v27;
          }

          else
          {
            v22 = v29;
          }
        }

        while (v20);
      }

      v31 = (v22 - v17) >> 3;
      v32 = &a2[8 * (a6 / 2)];
      if (v22 != a2)
      {
        goto LABEL_51;
      }

LABEL_72:
      v73 = a5 - v31 - v10;
      v74 = a6 - v18;
      if (v31 + v18 < a6 + a5 - (v31 + v18) - v10)
      {
        v75 = a3;
        v76 = a4;
        _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v17, v22);
        a3 = v75;
        result = v32;
        a5 = v73;
        a6 = v74;
        a2 = v19;
        a4 = v76;
        if (!v74)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v77 = a4;
    v78 = v17;
    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v32, v19);
    result = v78;
    a3 = v32;
    a5 = v31;
    a6 = v18;
    a2 = v22;
    a4 = v77;
    if (v18)
    {
      continue;
    }

    return result;
  }
}

void _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = a2[-1].n128_u64[1];
    v7 = a1->n128_u64[0];
    v8 = **(a3 + 8);
    v9 = *(*(v6 + 16) + 16);
    v10 = *(*(a1->n128_u64[0] + 16) + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    a1->n128_u64[0] = v6;
    a2[-1].n128_u64[1] = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return;
    }

    v11 = &a1->n128_u64[1];
    if (&a1->n128_i8[8] == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = a1;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = v16->n128_u64[0];
      v17 = v16->n128_u64[1];
      v19 = *(*(v17 + 16) + 16);
      v20 = *(*(v16->n128_u64[0] + 16) + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v21 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v21);
            v22 = *(&a1->n128_u64[-1] + v21);
            if (*(*(v22 + 16) + 16) == v13)
            {
              break;
            }

            v15->n128_u64[0] = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v24 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v24);
            v25 = *(&a1->n128_u64[-1] + v24);
            v26 = *(*(v25 + 16) + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            v15->n128_u64[0] = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = a1;
              break;
            }
          }
        }
      }

      v15->n128_u64[0] = v17;
LABEL_13:
      v11 = &v14->n128_u64[1];
      v12 += 8;
      if (&v14->n128_i8[8] == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = (a1 + 8 * (a4 >> 1));
  v32 = a4 - (a4 >> 1);
  v33 = a1;
  if (a4 > a6)
  {
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(a1, v31, a3, a4 >> 1, a5, a6);
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v31, a2, a3, v32, a5, a6);

    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(a1, v31, a3, a4 >> 1, a5);
  v40 = (v39 + 8 * v30);
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(v31, a2, a3, v32, v40);
  v41 = (v39 + 8 * a4);
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = (v33 + 16);
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = (v39 + v57);
            v58 = v39 + 1;
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              v55[-1] = v58[-1];
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = v54->n128_u64[0];
          v54 = (v54 + 8);
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*(v44->n128_u64[0] + 16) + 16);
      v47 = *(*(v39->n128_u64[0] + 16) + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = v44->n128_u64[0];
      v33 += 8;
      v44 = (v44 + 8);
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = v39->n128_u64[0];
    v33 += 8;
    v39 = (v39 + 8);
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = v51->n128_u64[0];
      v51 = (v51 + 8);
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = (v44 + v64);
  v65 = v44 + 1;
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = v65[-1];
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  switch(a4)
  {
    case 0:
      return result;
    case 1:
LABEL_36:
      a5->n128_u64[0] = a1->n128_u64[0];
      return result;
    case 2:
      v7 = a2[-1].n128_u64[1];
      v5 = (a2 - 8);
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*(v7 + 16) + 16);
      v10 = *(*(a1->n128_u64[0] + 16) + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = a1->n128_u64[0];
      a1 = v5;
LABEL_35:
      a5->n128_u64[0] = v6;
      a5 = (a5 + 8);
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = a1->n128_u64[0];
    v12 = &a1->n128_i8[8];
    a5->n128_u64[0] = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = *v17++;
      v20 = v21;
      v22 = *(*(v12->n128_u64[0] + 16) + 16);
      v23 = *(*(v21 + 16) + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          v16->n128_u64[1] = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *(&a5->n128_u64[-1] + v24);
            v26 = *(*(v12->n128_u64[0] + 16) + 16);
            v27 = *(*(v25 + 16) + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = (a5 + v24);
LABEL_12:
                v19 = v12->n128_u64[0];
                v12 = (v12 + 8);
                v18->n128_u64[0] = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 = (v16 - 8);
            *(a5->n128_u64 + v24) = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      *v17 = v12->n128_u64[0];
      v12 = (v12 + 8);
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = 8 * (a4 >> 1);
  v32 = (a1 + v31);
  v33 = a1;
  v37 = a5;
  (_ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl)();
  _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v32, a2, a3, a4 - v30, v37 + v31, a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33->n128_u64[v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = v37 + 1;
            v54 = (v51 >> 3) + 1;
            v55 = 8 * (v54 & 0x3FFFFFFFFFFFFFFCLL);
            v37 = (v37 + v55);
            v52 = (v41 + v55);
            v56 = v41 + 1;
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
              *v53 = v58;
              v56 += 2;
              v53 += 2;
              v57 -= 4;
            }

            while (v57);
            if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = v52->n128_u64[0];
          v52 = (v52 + 8);
          v37->n128_u64[0] = v59;
          v37 = (v37 + 8);
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(*(v42->n128_u64[0] + 16) + 16);
      v45 = *(*(v41->n128_u64[0] + 16) + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      v37->n128_u64[0] = v42->n128_u64[0];
      v37 = (v37 + 8);
      v42 = (v42 + 8);
      v40 += 8;
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    v37->n128_u64[0] = v41->n128_u64[0];
    v37 = (v37 + 8);
    v41 = (v41 + 8);
    v40 += 8;
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = v49->n128_u64[0];
      v49 = (v49 + 8);
      v48->n128_u64[0] = v50;
      v48 = (v48 + 8);
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = 8 * (v61 & 0x3FFFFFFFFFFFFFFCLL);
  v48 = (v37 + v62);
  v49 = (v42 + v62);
  v63 = v42 + 1;
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    v65[1] = v66;
    v63 += 2;
    v60 += 2;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}

double llvm::function_ref<void ()(mlir::Operation *,mlir::WalkStage const&)>::callback_fn<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::$_0>(uint64_t **a1, unint64_t a2, int *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v38 = a2;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0 && v4 == v5)
  {
    v13 = *(*a1 + 2);
    v14 = *(**a1 + 24 * v13 - 16);
    *(*a1 + 2) = v13 - 1;
    if ((*(v14 + 5) & 1) == 0)
    {
      *(v14 + 4) = 257;
    }
  }

  else if (!v4)
  {
    v9 = a1[1];
    v10 = *(*a1 + 2);
    if (v10 && *(**a1 + 24 * v10 - 8) == 1)
    {
      v11 = *(a2 + 16);
      if (v11)
      {
        Parent = mlir::Block::getParent(v11);
        v6 = *(a2 + 44);
      }

      else
      {
        Parent = 0;
      }

      if ((v6 & 0x800000) != 0)
      {
        v15 = *(a2 + 68);
        if (v15)
        {
          v16 = 0;
          v17 = *(a2 + 72);
          do
          {
            v35.n128_u64[0] = *(v17 + 32 * v16 + 24);
            ParentRegion = mlir::Value::getParentRegion(&v35);
            if (ParentRegion != Parent)
            {
              v19 = **a1;
              v20 = 24 * *(*a1 + 2);
              v21 = v19 + v20;
              while (v20)
              {
                v22 = *(v19 + v20 - 24);
                v23 = *(v19 + v20 - 8);
                v20 -= 24;
                if (v23 != 1 || v22 == *(ParentRegion + 2))
                {
                  v19 += v20 + 24;
                  break;
                }
              }

              while (v21 != v19)
              {
                *(v21 - 8) = *(v19 - 8);
                *(*(v21 - 16) + 4) = 256;
                v21 -= 24;
              }
            }

            ++v16;
          }

          while (v16 != v15);
        }
      }
    }

    v9[66] += 8;
    v25 = v9[56];
    if (v25 && (Slow = (v25 + 3) & 0xFFFFFFFFFFFFFFFCLL, Slow + 8 <= v9[57]))
    {
      v9[56] = Slow + 8;
    }

    else
    {
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((v9 + 56), 8, 8, 2);
    }

    v27 = a1[2];
    v28 = (*v27)++;
    *Slow = v28;
    *(Slow + 4) = 0;
    v37 = Slow;
    {
      v33 = llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v33, v34);
    }

    if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      *(v37 + 4) = 257;
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>((v9 + 3), &v38, &v37, &v35);
    if ((*(v38 + 44) & 0x7FFFFF) != 0)
    {
      v30 = *a1;
      v35.n128_u64[0] = v38;
      v35.n128_u64[1] = v37;
      LOBYTE(v36) = *(v37 + 5) ^ 1;
      v31 = *(v30 + 2);
      if (v31 >= *(v30 + 3))
      {
        *&result = llvm::SmallVectorTemplateBase<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState,true>::growAndEmplaceBack<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState>(v30, &v35).n128_u64[0];
      }

      else
      {
        v32 = (*v30 + 24 * v31);
        result = v35.n128_f64[0];
        *v32 = v35;
        v32[1].n128_u64[0] = v36;
        ++*(v30 + 2);
      }
    }
  }

  return result;
}

__n128 llvm::SmallVectorTemplateBase<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState,true>::growAndEmplaceBack<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState>(uint64_t a1, __n128 *a2)
{
  v6 = *a2;
  v7 = a2[1].n128_u64[0];
  v2 = *(a1 + 8);
  v3 = *a1;
  if (v2 >= *(a1 + 12))
  {
    if (v3 > &v6 || v3 + 24 * v2 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v3 + 24 * *(a1 + 8));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a1 + 8);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::try_emplace<unsigned int const&>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*v9 == -1)
      {
LABEL_7:
        *v9 = *a2;
        *(v9 + 4) = *a3;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*v9 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v13 = 0;
    result = 0;
    goto LABEL_44;
  }

  v5 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v8 = v4 - 1;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (!v10)
  {
    if (v9 != -2)
    {
      v21 = 0;
      v30 = 1;
      v31 = HashValue & v8;
      v13 = (v5 + 24 * (HashValue & v8));
      v32 = *v13;
      if (*v13 != -2)
      {
        goto LABEL_41;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32 + 2 == 0;
          }

          if (v33)
          {
            v21 = v13;
          }

          v34 = v30 + v31;
          ++v30;
          v31 = v34 & v8;
          v13 = (v5 + 24 * (v34 & v8));
          v32 = *v13;
        }

        while (*v13 == -2);
LABEL_41:
        if (v32 == -1)
        {
          goto LABEL_18;
        }

        if (!v13[1])
        {
          goto LABEL_43;
        }
      }
    }

    v17 = 1;
    v18 = HashValue & v8;
    v13 = (v5 + 24 * (HashValue & v8));
    v19 = *v13;
    if (*v13 != -2)
    {
      while (v19 != -1)
      {
        if (v13[1])
        {
          v20 = v17 + v18;
          ++v17;
          v18 = v20 & v8;
          v13 = (v5 + 24 * (v20 & v8));
          v19 = *v13;
          if (*v13 != -2)
          {
            continue;
          }
        }

        goto LABEL_43;
      }

      goto LABEL_17;
    }

LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  if (v9 != -2)
  {
    v21 = 0;
    v22 = 1;
    v23 = HashValue & v8;
    v13 = (v5 + 24 * (HashValue & v8));
    v24 = *v13;
    if (*v13 != -2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 + 2 == 0;
        }

        if (v25)
        {
          v21 = v13;
        }

        v26 = v22 + v23;
        ++v22;
        v23 = v26 & v8;
        v13 = (v5 + 24 * (v26 & v8));
        v24 = *v13;
      }

      while (*v13 == -2);
LABEL_30:
      if (v24 == -1)
      {
        goto LABEL_18;
      }

      if (v10 == v13[1])
      {
        v35 = v24;
        v27 = v21;
        v28 = v22;
        v29 = memcmp(v9, v24, v10);
        v22 = v28;
        v21 = v27;
        v24 = v35;
        if (!v29)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = (v5 + 24 * (HashValue & v8));
  v14 = *v13;
  if (*v13 == -2)
  {
    goto LABEL_43;
  }

  while (v14 != -1)
  {
    if (v10 != v13[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v14, v10))
    {
      v15 = v11 + v12;
      ++v11;
      v12 = v15 & v8;
      v13 = (v5 + 24 * (v15 & v8));
      v14 = *v13;
      if (*v13 != -2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

LABEL_17:
  v21 = 0;
LABEL_18:
  if (!v21)
  {
    v21 = v13;
  }

  if (v9 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v21;
    result = 0;
  }

LABEL_44:
  *a3 = v13;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_25736B6D0;
        *(v17 + 24) = xmmword_25736B6D0;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
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
              llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, v22, &v28);
              v23 = v28;
              *v28 = *v22;
              *(v23 + 4) = *(v22 + 16);
              ++*(a1 + 8);
            }

            v22 += 24;
            v21 -= 24;
          }

          while (v21);
        }

        llvm::deallocate_buffer(v4, (8 * v20));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = (result + 24 * v10);
    do
    {
      *v12 = xmmword_25736B6D0;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_25:
      v27 = (result + 24 * v13);
      do
      {
        *v15 = xmmword_25736B6D0;
        v15 = (v15 + 24);
      }

      while (v15 != v27);
      return result;
    }

    v24 = v14 / 0x18 + 1;
    v15 = (result + 24 * (v24 & 0x1FFFFFFFFFFFFFFELL));
    v25 = result;
    v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v25 = xmmword_25736B6D0;
      *(v25 + 24) = xmmword_25736B6D0;
      v25 += 3;
      v26 -= 2;
    }

    while (v26);
    if (v24 != (v24 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 24 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v13 = 0;
    v14 = 1;
    while (v9 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v9 == -8192;
      }

      if (v15)
      {
        v13 = v8;
      }

      v16 = v7 + v14++;
      v7 = v16 & v6;
      v8 = (v5 + 24 * (v16 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v8 = v13;
    }

LABEL_5:
    v19 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        v12 = *a2;
        v8[2] = a2[2];
        *v8 = v12;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a3;
    llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v19);
    result = v17;
    a3 = v18;
    v8 = v19;
    ++*(v17 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 24 * v4;
  *(a3 + 16) = v10;
  return result;
}

int64x2_t *llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x48)
    {
      v16 = v11 / 0x18 + 1;
      v12 = &result->i64[3 * (v16 & 0x1FFFFFFFFFFFFFFCLL)];
      v17 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v18 = result;
      v19 = v16 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *v18 = v17;
        v18[1] = xmmword_25736EEE0;
        v18[4] = xmmword_25736EEE0;
        v18[5] = xmmword_25736B1E0;
        v18[2] = xmmword_25736B1E0;
        v18[3] = v17;
        v18 += 6;
        v19 -= 4;
      }

      while (v19);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_16:
        if (v3)
        {
          v21 = v4;
          do
          {
            v29 = *v21;
            if ((*v21 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v30 = *(a1 + 16) - 1;
              v31 = v30 & ((v29 >> 4) ^ (v29 >> 9));
              v27 = (*a1 + 24 * v31);
              v32 = *v27;
              if (v29 != *v27)
              {
                v33 = 0;
                v34 = 1;
                while (v32 != -4096)
                {
                  if (v33)
                  {
                    v35 = 0;
                  }

                  else
                  {
                    v35 = v32 == -8192;
                  }

                  if (v35)
                  {
                    v33 = v27;
                  }

                  v36 = v31 + v34++;
                  v31 = v36 & v30;
                  v27 = (*a1 + 24 * (v36 & v30));
                  v32 = *v27;
                  if (v29 == *v27)
                  {
                    goto LABEL_26;
                  }
                }

                if (v33)
                {
                  v27 = v33;
                }
              }

LABEL_26:
              v28 = *v21;
              v27[2] = *(v21 + 2);
              *v27 = v28;
              ++*(a1 + 8);
            }

            v21 = (v21 + 24);
          }

          while (v21 != (v4 + 24 * v3));
        }

        llvm::deallocate_buffer(v4, (24 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v20 = &result->i64[3 * v10];
    do
    {
      *v12 = -4096;
      v12[1] = -4096;
      v12[2] = 0;
      v12 += 3;
    }

    while (v12 != v20);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x48)
    {
      v15 = result;
LABEL_21:
      v26 = &result->i64[3 * v13];
      do
      {
        *v15 = -4096;
        v15[1] = -4096;
        v15[2] = 0;
        v15 += 3;
      }

      while (v15 != v26);
      return result;
    }

    v22 = v14 / 0x18 + 1;
    v15 = &result->i64[3 * (v22 & 0x1FFFFFFFFFFFFFFCLL)];
    v23 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v24 = result;
    v25 = v22 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *v24 = v23;
      v24[1] = xmmword_25736EEE0;
      v24[4] = xmmword_25736EEE0;
      v24[5] = xmmword_25736B1E0;
      v24[2] = xmmword_25736B1E0;
      v24[3] = v23;
      v24 += 6;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0x1FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

BOOL mlir::parseSourceFile(uint64_t **a1, const llvm::SourceMgr *a2, uint64_t ***a3, uint64_t *a4)
{
  v7 = **a1;
  if (a4)
  {
    v9 = *a3;
    v10 = (*(*v7 + 16))(**a1);
    *a4 = mlir::FileLineColLoc::get(v9, v10, v11, 0, 0);
  }

  llvm::MemoryBufferRef::MemoryBufferRef(v14, v7);
  if (!mlir::isBytecode(v14))
  {
    mlir::parseAsmSourceFile(a1, a2, a3, 0, 0, v12);
  }

  llvm::MemoryBufferRef::MemoryBufferRef(v14, v7);
  return mlir::readBytecodeFile(v14, a2, a3);
}

BOOL mlir::parseSourceFile(uint64_t ***a1, const llvm::SourceMgr *a2, uint64_t ***a3, uint64_t *a4)
{
  v7 = ***a1;
  if (a4)
  {
    v9 = *a3;
    v10 = (*(*v7 + 16))(v7);
    *a4 = mlir::FileLineColLoc::get(v9, v10, v11, 0, 0);
  }

  llvm::MemoryBufferRef::MemoryBufferRef(v14, v7);
  if (!mlir::isBytecode(v14))
  {
    mlir::parseAsmSourceFile(*a1, a2, a3, 0, 0, v12);
  }

  return mlir::readBytecodeFile(a1, a2, a3);
}

BOOL mlir::parseSourceFile(void *a1, mlir::MLIRContext *a2, uint64_t *a3, const llvm::SourceMgr *a4, mlir::UnknownLoc **a5, uint64_t *a6)
{
  if (!loadSourceFileBuffer(a1, a2, *a3, *a5))
  {
    return 0;
  }

  return mlir::parseSourceFile(a3, a4, a5, a6);
}

BOOL mlir::parseSourceFile(void *a1, mlir::MLIRContext *a2, uint64_t **a3, const llvm::SourceMgr *a4, mlir::UnknownLoc **a5, uint64_t *a6)
{
  if (!loadSourceFileBuffer(a1, a2, a3, *a5))
  {
    return 0;
  }

  return mlir::parseSourceFile(a3, a4, a5, a6);
}

BOOL loadSourceFileBuffer(void *a1, mlir::MLIRContext *a2, uint64_t a3, mlir::UnknownLoc *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  if (-1431655765 * ((*(a3 + 8) - *a3) >> 3))
  {
    v4 = mlir::UnknownLoc::get(a4, a2);
    v33[0] = "only main buffer parsed at the moment";
    v34 = 259;
    mlir::emitError(v4, v33, &v37);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
    if (v37)
    {
      mlir::InFlightDiagnostic::report(&v37);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v46;
        v8 = __p;
        if (v46 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v46 = v6;
        operator delete(v8);
      }

      v9 = v43;
      if (v43)
      {
        v10 = v44;
        v11 = v43;
        if (v44 != v43)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v43;
        }

        v44 = v9;
        operator delete(v11);
      }

      if (v40 != v42)
      {
        free(v40);
      }
    }

    return v5;
  }

  v41 = 261;
  v37 = a1;
  v38 = a2;
  llvm::MemoryBuffer::getFileOrSTDIN(&v37, 0, 1, 0, &v35);
  if (v36)
  {
    v19 = v35;
    if (v35)
    {
      v20 = mlir::UnknownLoc::get(a4, v18);
      v34 = 1283;
      v33[0] = "could not open input file ";
      v33[2] = a1;
      v33[3] = a2;
      mlir::emitError(v20, v33, &v37);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
      if (v37)
      {
        mlir::InFlightDiagnostic::report(&v37);
      }

      if (v48 == 1)
      {
        if (v47 != &v48)
        {
          free(v47);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v46;
          v23 = __p;
          if (v46 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v46 = v21;
          operator delete(v23);
        }

        v24 = v43;
        if (v43)
        {
          v25 = v44;
          v26 = v43;
          if (v44 != v43)
          {
            do
            {
              v28 = *--v25;
              v27 = v28;
              *v25 = 0;
              if (v28)
              {
                MEMORY[0x259C63150](v27, 0x1000C8077774924);
              }
            }

            while (v25 != v24);
            v26 = v43;
          }

          v44 = v24;
          operator delete(v26);
        }

        if (v40 != v42)
        {
          free(v40);
        }
      }

      goto LABEL_41;
    }
  }

  else
  {
    v19 = v35;
  }

  v35 = 0;
  v38 = 0;
  v39 = 0;
  v37 = v19;
  v29 = *(a3 + 8);
  if (v29 >= *(a3 + 16))
  {
    v30 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(a3, &v37);
  }

  else
  {
    v30 = llvm::SourceMgr::SrcBuffer::SrcBuffer(v29, &v37) + 3;
  }

  *(a3 + 8) = v30;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v37);
  v5 = 1;
LABEL_41:
  if ((v36 & 1) == 0)
  {
    v31 = v35;
    v35 = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }
  }

  return v5;
}

BOOL mlir::parseSourceString(uint64_t a1, uint64_t a2, const llvm::SourceMgr *a3, uint64_t ***a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  llvm::MemoryBuffer::getMemBuffer(a1, a2, a5, a6, &v18);
  if (!v18)
  {
    return 0;
  }

  llvm::SourceMgr::SourceMgr(&v15);
  v10 = v18;
  v18 = 0;
  v19[0] = v10;
  v19[1] = 0;
  v19[2] = 0;
  if (v16 >= v17)
  {
    v11 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(&v15, v19);
  }

  else
  {
    v11 = llvm::SourceMgr::SrcBuffer::SrcBuffer(v16, v19) + 3;
  }

  v16 = v11;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(v19);
  v12 = mlir::parseSourceFile(&v15, a3, a4, a7);
  llvm::SourceMgr::~SourceMgr(&v15);
  v14 = v18;
  v18 = 0;
  if (!v14)
  {
    return v12;
  }

  (*(*v14 + 8))(v14);
  return v12;
}

uint64_t std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(llvm::SourceMgr::SrcBuffer **a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = (8 * ((a1[1] - *a1) >> 3));
  llvm::SourceMgr::SrcBuffer::SrcBuffer(v6, a2);
  v7 = 24 * v2 + 24;
  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = llvm::SourceMgr::SrcBuffer::SrcBuffer(v12, v11);
      v11 += 3;
      v12 = v13 + 3;
    }

    while (v11 != v9);
    do
    {
      llvm::SourceMgr::SrcBuffer::~SrcBuffer(v8);
      v8 = (v8 + 24);
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

BOOL mlir::BytecodeReader::Impl::read(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v194 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 1176);
  v6 = *(a1 + 1184);
  v7 = *(a1 + 8);
  v140 = v5;
  v141 = v6;
  v142 = v5;
  v143 = v7;
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  *&v172 = 4;
  if (v6 > 3)
  {
    v142 = v5 + 4;
  }

  else
  {
    v145 = v6;
    mlir::emitError(v7, &v149);
    if (v149)
    {
      mlir::Diagnostic::append<char const(&)[20],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(&v150, "attempting to skip ", &v172, " bytes when only ", &v145, " remain");
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v182, &v149);
    if (v149)
    {
      mlir::InFlightDiagnostic::report(&v149);
    }

    if (v170 == 1)
    {
      if (v168 != &v170)
      {
        free(v168);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v167;
        v10 = __p;
        if (v167 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v167 = v8;
        operator delete(v10);
      }

      v11 = v164;
      if (v164)
      {
        v12 = v165;
        v13 = v164;
        if (v165 != v164)
        {
          do
          {
            v15 = *--v12;
            v14 = v15;
            *v12 = 0;
            if (v15)
            {
              MEMORY[0x259C63150](v14, 0x1000C8077774924);
            }
          }

          while (v12 != v11);
          v13 = v164;
        }

        *&v165 = v11;
        operator delete(v13);
      }

      if (v152 != &v154)
      {
        free(v152);
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v182);
    if (v182)
    {
      mlir::InFlightDiagnostic::report(&v182);
    }

    if (v193[0] == 1)
    {
      if (v192 != v193)
      {
        free(v192);
      }

      v17 = v190;
      if (v190)
      {
        v18 = v191;
        v19 = v190;
        if (v191 != v190)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = v190;
        }

        v191 = v17;
        operator delete(v19);
      }

      v20 = v188;
      if (v188)
      {
        v21 = v189;
        v22 = v188;
        if (v189 != v188)
        {
          do
          {
            v24 = *--v21;
            v23 = v24;
            *v21 = 0;
            if (v24)
            {
              MEMORY[0x259C63150](v23, 0x1000C8077774924);
            }
          }

          while (v21 != v20);
          v22 = v188;
        }

        v189 = v20;
        operator delete(v22);
      }

      if (v184 != v187)
      {
        free(v184);
      }
    }

    if (!v16)
    {
      goto LABEL_128;
    }
  }

  {
    goto LABEL_128;
  }

  *&v172 = 6;
  v25 = *(a1 + 248);
  if (v25 < 7)
  {
    if (v25 <= 1)
    {
      *(a1 + 16) = 0;
    }
  }

  else
  {
    mlir::emitError(v143, &v149);
    if (v149)
    {
      mlir::Diagnostic::append<char const(&)[18],unsigned long long &,char const(&)[36],unsigned long long &>(&v150, "bytecode version ", (a1 + 248), " is newer than the current version ", &v172);
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v182, &v149);
    if (v149)
    {
      mlir::InFlightDiagnostic::report(&v149);
    }

    if (v170 == 1)
    {
      if (v168 != &v170)
      {
        free(v168);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v167;
        v28 = __p;
        if (v167 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v167 = v26;
        operator delete(v28);
      }

      v29 = v164;
      if (v164)
      {
        v30 = v165;
        v31 = v164;
        if (v165 != v164)
        {
          do
          {
            v33 = *--v30;
            v32 = v33;
            *v30 = 0;
            if (v33)
            {
              MEMORY[0x259C63150](v32, 0x1000C8077774924);
            }
          }

          while (v30 != v29);
          v31 = v164;
        }

        *&v165 = v29;
        operator delete(v31);
      }

      if (v152 != &v154)
      {
        free(v152);
      }
    }

    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v182);
    if (v182)
    {
      mlir::InFlightDiagnostic::report(&v182);
    }

    if (v193[0] == 1)
    {
      if (v192 != v193)
      {
        free(v192);
      }

      v35 = v190;
      if (v190)
      {
        v36 = v191;
        v37 = v190;
        if (v191 != v190)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = v190;
        }

        v191 = v35;
        operator delete(v37);
      }

      v38 = v188;
      if (v188)
      {
        v39 = v189;
        v40 = v188;
        if (v189 != v188)
        {
          do
          {
            v42 = *--v39;
            v41 = v42;
            *v39 = 0;
            if (v42)
            {
              MEMORY[0x259C63150](v41, 0x1000C8077774924);
            }
          }

          while (v39 != v38);
          v40 = v188;
        }

        v189 = v38;
        operator delete(v40);
      }

      if (v184 != v187)
      {
        free(v184);
      }
    }

    if (!v34)
    {
      goto LABEL_128;
    }
  }

  {
LABEL_128:
    result = 0;
    goto LABEL_129;
  }

  v139 = **a1;
  DiagEngine = mlir::MLIRContext::getDiagEngine(v139);
  v149 = a1;
  v152 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallbacksHolder<mlir::BytecodeReader::Impl::read(mlir::Block *,llvm::function_ref<BOOL ()(mlir::Operation *)>)::$_1,mlir::BytecodeReader::Impl::read(mlir::Block *,llvm::function_ref<BOOL ()(mlir::Operation *)>)::$_1,void>::Callbacks + 2;
  v138 = mlir::DiagnosticEngine::registerHandler(DiagEngine, &v149);
  v45 = v152;
  if (v152 >= 8)
  {
    if ((v152 & 4) != 0)
    {
      if ((v152 & 2) != 0)
      {
        v46 = &v149;
      }

      else
      {
        v46 = v149;
      }

      (*((v152 & 0xFFFFFFFFFFFFFFF8) + 16))(v46, v44);
    }

    if ((v45 & 2) == 0)
    {
      llvm::deallocate_buffer(v149, v150);
    }
  }

  LOBYTE(v149) = 0;
  LOBYTE(v151) = 0;
  LOBYTE(v152) = 0;
  v154 = 0;
  LOBYTE(v155) = 0;
  v157 = 0;
  LOBYTE(v158) = 0;
  v160 = 0;
  LOBYTE(v161) = 0;
  v162 = 0;
  LOBYTE(v163) = 0;
  LOBYTE(v164) = 0;
  LOBYTE(v165) = 0;
  LOBYTE(__p) = 0;
  LOBYTE(v167) = 0;
  LOBYTE(v168) = 0;
  LOBYTE(v169) = 0;
  v171 = 0;
  if (v142 == &v141[v140])
  {
LABEL_130:
    v63 = 0;
LABEL_131:
    toString(&v145, v63);
    mlir::emitError(v143, &v182);
    if (v182)
    {
      mlir::Diagnostic::append<char const(&)[30],std::string>(&v182 + 8, "missing data for top-level section: ", &v145);
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v172, &v182);
    if (v182)
    {
      mlir::InFlightDiagnostic::report(&v182);
    }

    if (v193[0] == 1)
    {
      if (v192 != v193)
      {
        free(v192);
      }

      v64 = v190;
      if (v190)
      {
        v65 = v191;
        v66 = v190;
        if (v191 != v190)
        {
          do
          {
            v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
          }

          while (v65 != v64);
          v66 = v190;
        }

        v191 = v64;
        operator delete(v66);
      }

      v67 = v188;
      if (v188)
      {
        v68 = v189;
        v69 = v188;
        if (v189 != v188)
        {
          do
          {
            v71 = *--v68;
            v70 = v71;
            *v68 = 0;
            if (v71)
            {
              MEMORY[0x259C63150](v70, 0x1000C8077774924);
            }
          }

          while (v68 != v67);
          v69 = v188;
        }

        v189 = v67;
        operator delete(v69);
      }

      if (v184 != v187)
      {
        free(v184);
      }
    }

    v81 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v172);
    if (v172)
    {
      mlir::InFlightDiagnostic::report(&v172);
    }

    if (v181 == 1)
    {
      if (v180 != &v181)
      {
        free(v180);
      }

      v82 = v178;
      if (v178)
      {
        v83 = v179;
        v84 = v178;
        if (v179 != v178)
        {
          do
          {
            v83 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v83 - 1);
          }

          while (v83 != v82);
          v84 = v178;
        }

        v179 = v82;
        operator delete(v84);
      }

      v85 = v176;
      if (v176)
      {
        v86 = v177;
        v87 = v176;
        if (v177 != v176)
        {
          do
          {
            v89 = *--v86;
            v88 = v89;
            *v86 = 0;
            if (v89)
            {
              MEMORY[0x259C63150](v88, 0x1000C8077774924);
            }
          }

          while (v86 != v85);
          v87 = v176;
        }

        v177 = v85;
        operator delete(v87);
      }

      if (v174 != v175)
      {
        free(v174);
      }
    }

    if (SHIBYTE(v147) < 0)
    {
      operator delete(v145);
    }

    goto LABEL_222;
  }

  do
  {
    LOBYTE(v144) = 0;
    v137 = 0uLL;
    {
      v72 = 0;
LABEL_221:
      v81 = v72;
      goto LABEL_222;
    }

    v47 = &(&v149)[3 * v144];
    if (*(v47 + 16) == 1)
    {
      toString(&v145, v144);
      mlir::emitError(v143, &v182);
      if (v182)
      {
        mlir::Diagnostic::append<char const(&)[30],std::string>(&v182 + 8, "duplicate top-level section: ", &v145);
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v172, &v182);
      if (v182)
      {
        mlir::InFlightDiagnostic::report(&v182);
      }

      if (v193[0] == 1)
      {
        if (v192 != v193)
        {
          free(v192);
        }

        v73 = v190;
        if (v190)
        {
          v74 = v191;
          v75 = v190;
          if (v191 != v190)
          {
            do
            {
              v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
            }

            while (v74 != v73);
            v75 = v190;
          }

          v191 = v73;
          operator delete(v75);
        }

        v76 = v188;
        if (v188)
        {
          v77 = v189;
          v78 = v188;
          if (v189 != v188)
          {
            do
            {
              v80 = *--v77;
              v79 = v80;
              *v77 = 0;
              if (v80)
              {
                MEMORY[0x259C63150](v79, 0x1000C8077774924);
              }
            }

            while (v77 != v76);
            v78 = v188;
          }

          v189 = v76;
          operator delete(v78);
        }

        if (v184 != v187)
        {
          free(v184);
        }
      }

      v72 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v172);
      v90 = v72;
      if (v172)
      {
        mlir::InFlightDiagnostic::report(&v172);
        v72 = v90;
      }

      if (v181 == 1)
      {
        if (v180 != &v181)
        {
          free(v180);
          v72 = v90;
        }

        v91 = v178;
        if (v178)
        {
          v92 = v179;
          v93 = v178;
          if (v179 != v178)
          {
            do
            {
              v92 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v92 - 1);
            }

            while (v92 != v91);
            v93 = v178;
          }

          v179 = v91;
          operator delete(v93);
          v72 = v90;
        }

        v94 = v176;
        if (v176)
        {
          v95 = v177;
          v96 = v176;
          if (v177 != v176)
          {
            do
            {
              v98 = *--v95;
              v97 = v98;
              *v95 = 0;
              if (v98)
              {
                MEMORY[0x259C63150](v97, 0x1000C8077774924);
              }
            }

            while (v95 != v94);
            v96 = v176;
          }

          v177 = v94;
          operator delete(v96);
          v72 = v90;
        }

        if (v174 != v175)
        {
          free(v174);
          v72 = v90;
        }
      }

      if (SHIBYTE(v147) < 0)
      {
        operator delete(v145);
        v72 = v90;
      }

      goto LABEL_221;
    }

    *v47 = v137;
    *(v47 + 16) = 1;
  }

  while (v142 != &v141[v140]);
  if ((v151 & 1) == 0)
  {
    goto LABEL_130;
  }

  if (v154 != 1)
  {
    v63 = 1;
    goto LABEL_131;
  }

  if (v157 != 1)
  {
    v63 = 2;
    goto LABEL_131;
  }

  if (v160 != 1)
  {
    v63 = 3;
    goto LABEL_131;
  }

  if (v162 != 1)
  {
    v63 = 4;
    goto LABEL_131;
  }

  v48 = v171;
  if ((v171 & 1) == 0 && *(a1 + 248) > 4)
  {
    v63 = 8;
    goto LABEL_131;
  }

  v49 = *(a1 + 8);
  v50 = v149;
  v51 = v150;
  v145 = v149;
  v146 = v150;
  v147 = v149;
  v148 = v49;
  *&v137 = 0;
  {
    goto LABEL_326;
  }

  v52 = (a1 + 536);
  v53 = v137;
  v54 = *(a1 + 544);
  if (v137 != v54)
  {
    if (v137 >= v54)
    {
      if (v137 > *(a1 + 548))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v137 != v54)
      {
        v55 = v137;
        bzero((*v52 + 16 * v54), 16 * (v137 - v54));
        LODWORD(v53) = v55;
      }
    }

    LODWORD(v54) = v53;
    *(a1 + 544) = v53;
    v53 = v53;
  }

  if (!v54)
  {
    v59 = v51;
LABEL_228:
    if ((v147 + v51 - (v145 + v146)) == v59)
    {
      if (!v48)
      {
        goto LABEL_322;
      }
    }

    else
    {
      mlir::emitError(v148, &v182);
      if (v182)
      {
        LODWORD(v172) = 3;
        *(&v172 + 1) = "unexpected trailing data between the offsets for strings and their data";
        v173 = 71;
        if (v185 >= v186)
        {
          if (v184 > &v172 || v184 + 24 * v185 <= &v172)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v99 = v184 + 24 * v185;
        v100 = v172;
        *(v99 + 2) = v173;
        *v99 = v100;
        ++v185;
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v172, &v182);
      if (v182)
      {
        mlir::InFlightDiagnostic::report(&v182);
      }

      if (v193[0] == 1)
      {
        if (v192 != v193)
        {
          free(v192);
        }

        v101 = v190;
        if (v190)
        {
          v102 = v191;
          v103 = v190;
          if (v191 != v190)
          {
            do
            {
              v102 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v102 - 1);
            }

            while (v102 != v101);
            v103 = v190;
          }

          v191 = v101;
          operator delete(v103);
        }

        v104 = v188;
        if (v188)
        {
          v105 = v189;
          v106 = v188;
          if (v189 != v188)
          {
            do
            {
              v108 = *--v105;
              v107 = v108;
              *v105 = 0;
              if (v108)
              {
                MEMORY[0x259C63150](v107, 0x1000C8077774924);
              }
            }

            while (v105 != v104);
            v106 = v188;
          }

          v189 = v104;
          operator delete(v106);
        }

        if (v184 != v187)
        {
          free(v184);
        }
      }

      v119 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v172);
      if (v172)
      {
        mlir::InFlightDiagnostic::report(&v172);
      }

      if (v181 == 1)
      {
        if (v180 != &v181)
        {
          free(v180);
        }

        v120 = v178;
        if (v178)
        {
          v121 = v179;
          v122 = v178;
          if (v179 != v178)
          {
            do
            {
              v121 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v121 - 1);
            }

            while (v121 != v120);
            v122 = v178;
          }

          v179 = v120;
          operator delete(v122);
        }

        v123 = v176;
        if (v176)
        {
          v124 = v177;
          v125 = v176;
          if (v177 != v176)
          {
            do
            {
              v127 = *--v124;
              v126 = v127;
              *v124 = 0;
              if (v127)
              {
                MEMORY[0x259C63150](v126, 0x1000C8077774924);
              }
            }

            while (v124 != v123);
            v125 = v176;
          }

          v177 = v123;
          operator delete(v125);
        }

        if (v174 != v175)
        {
          free(v174);
        }
      }

      if (!v119)
      {
        goto LABEL_326;
      }

LABEL_320:
      if ((v171 & 1) == 0)
      {
LABEL_322:
        if (mlir::BytecodeReader::Impl::parseDialectSection(a1, v152, v153))
        {
          v182 = v163;
          v183 = v164;
          v172 = v165;
          v173 = __p;
          {
            mlir::BytecodeReader::Impl::parseIRSection(a1);
          }
        }

        goto LABEL_326;
      }
    }

    {
      goto LABEL_326;
    }

    goto LABEL_322;
  }

  v56 = 16 * v53;
  v57 = (v56 + *v52 - 8);
  v58 = -v56;
  v59 = v51;
  while (1)
  {
    v144 = 0;
    {
      break;
    }

    v60 = v59 >= v144;
    v59 -= v144;
    if (!v60)
    {
      mlir::emitError(v148, &v182);
      if (v182)
      {
        LODWORD(v172) = 3;
        *(&v172 + 1) = "string size exceeds the available data size";
        v173 = 43;
        if (v185 >= v186)
        {
          if (v184 > &v172 || v184 + 24 * v185 <= &v172)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v109 = v184 + 24 * v185;
        v110 = v172;
        *(v109 + 2) = v173;
        *v109 = v110;
        ++v185;
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v172, &v182);
      if (v182)
      {
        mlir::InFlightDiagnostic::report(&v182);
      }

      if (v193[0] == 1)
      {
        if (v192 != v193)
        {
          free(v192);
        }

        v111 = v190;
        if (v190)
        {
          v112 = v191;
          v113 = v190;
          if (v191 != v190)
          {
            do
            {
              v112 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v112 - 1);
            }

            while (v112 != v111);
            v113 = v190;
          }

          v191 = v111;
          operator delete(v113);
        }

        v114 = v188;
        if (v188)
        {
          v115 = v189;
          v116 = v188;
          if (v189 != v188)
          {
            do
            {
              v118 = *--v115;
              v117 = v118;
              *v115 = 0;
              if (v118)
              {
                MEMORY[0x259C63150](v117, 0x1000C8077774924);
              }
            }

            while (v115 != v114);
            v116 = v188;
          }

          v189 = v114;
          operator delete(v116);
        }

        if (v184 != v187)
        {
          free(v184);
        }
      }

      v128 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v172);
      if (v172)
      {
        mlir::InFlightDiagnostic::report(&v172);
      }

      if (v181 == 1)
      {
        if (v180 != &v181)
        {
          free(v180);
        }

        v129 = v178;
        if (v178)
        {
          v130 = v179;
          v131 = v178;
          if (v179 != v178)
          {
            do
            {
              v130 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v130 - 1);
            }

            while (v130 != v129);
            v131 = v178;
          }

          v179 = v129;
          operator delete(v131);
        }

        v132 = v176;
        if (v176)
        {
          v133 = v177;
          v134 = v176;
          if (v177 != v176)
          {
            do
            {
              v136 = *--v133;
              v135 = v136;
              *v133 = 0;
              if (v136)
              {
                MEMORY[0x259C63150](v135, 0x1000C8077774924);
              }
            }

            while (v133 != v132);
            v134 = v176;
          }

          v177 = v132;
          operator delete(v134);
        }

        if (v174 != v175)
        {
          free(v174);
        }
      }

      if (!v128)
      {
        break;
      }

      goto LABEL_320;
    }

    v61 = v144 - 1;
    *(v57 - 1) = v50 + v59;
    *v57 = v61;
    v57 -= 2;
    v58 += 16;
    if (!v58)
    {
      goto LABEL_228;
    }
  }

LABEL_326:
  v81 = 0;
LABEL_222:
  mlir::ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&v138);
  result = v81;
LABEL_129:
  *(a1 + 72) = 0;
  return result;
}

BOOL anonymous namespace::EncodingReader::parseNullTerminatedString(_anonymous_namespace_::EncodingReader *this, llvm::StringRef *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  v5 = memchr(v4, 0, *this + *(this + 1) - v4);
  if (v5)
  {
    *a2 = v4;
    *(a2 + 1) = v5 - v4;
    *(this + 2) = v5 + 1;
    return 1;
  }

  else
  {
    mlir::emitError(*(this + 3), v36);
    if (v36[0])
    {
      LODWORD(v26) = 3;
      *(&v26 + 1) = "malformed null-terminated string, no null character found";
      v27 = 57;
      if (v38 >= v39)
      {
        if (v37 > &v26 || v37 + 24 * v38 <= &v26)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v37 + 24 * v38;
      v8 = v26;
      *(v7 + 2) = v27;
      *v7 = v8;
      ++v38;
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v26, v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v44;
        v11 = __p;
        if (v44 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v44 = v9;
        operator delete(v11);
      }

      v12 = v41;
      if (v41)
      {
        v13 = v42;
        v14 = v41;
        if (v42 != v41)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x259C63150](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v41;
        }

        v42 = v12;
        operator delete(v14);
      }

      if (v37 != &v40)
      {
        free(v37);
      }
    }

    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
    if (v26)
    {
      mlir::InFlightDiagnostic::report(&v26);
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
      }

      v17 = v32;
      if (v32)
      {
        v18 = v33;
        v19 = v32;
        if (v33 != v32)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = v32;
        }

        v33 = v17;
        operator delete(v19);
      }

      v20 = v30;
      if (v30)
      {
        v21 = v31;
        v22 = v30;
        if (v31 != v30)
        {
          do
          {
            v24 = *--v21;
            v23 = v24;
            *v21 = 0;
            if (v24)
            {
              MEMORY[0x259C63150](v23, 0x1000C8077774924);
            }
          }

          while (v21 != v20);
          v22 = v30;
        }

        v31 = v20;
        operator delete(v22);
      }

      if (v28 != &v29)
      {
        free(v28);
      }
    }
  }

  return v6;
}

uint64_t anonymous namespace::EncodingReader::parseSection(_anonymous_namespace_::EncodingReader *a1, _BYTE *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v29 = 0;
  {
    return 0;
  }

  v28 = 0;
  {
    return 0;
  }

  v6 = v29;
  v7 = v29 & 0x7F;
  *a2 = v29 & 0x7F;
  if (v7 >= 9)
  {
    v27 = v7;
    mlir::emitError(*(a1 + 3), v39);
    if (*v39)
    {
      mlir::Diagnostic::append<char const(&)[21],unsigned int>(&v40, "invalid section ID: ", &v27);
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(v30, v39);
    if (*v39)
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v8 = v45;
      if (v45)
      {
        v9 = v46;
        v10 = v45;
        if (v46 != v45)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = v45;
        }

        v46 = v8;
        operator delete(v10);
      }

      v11 = v43;
      if (v43)
      {
        v12 = v44;
        v13 = v43;
        if (v44 != v43)
        {
          do
          {
            v15 = *--v12;
            v14 = v15;
            *v12 = 0;
            if (v15)
            {
              MEMORY[0x259C63150](v14, 0x1000C8077774924);
            }
          }

          while (v12 != v11);
          v13 = v43;
        }

        v44 = v11;
        operator delete(v13);
      }

      if (v41 != &v42)
      {
        free(v41);
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v18 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v18;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v18;
      }

      v19 = v35;
      if (v35)
      {
        v20 = v36;
        v21 = v35;
        if (v36 != v35)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = v35;
        }

        v36 = v19;
        operator delete(v21);
        result = v18;
      }

      v22 = v33;
      if (v33)
      {
        v23 = v34;
        v24 = v33;
        if (v34 != v33)
        {
          do
          {
            v26 = *--v23;
            v25 = v26;
            *v23 = 0;
            if (v26)
            {
              MEMORY[0x259C63150](v25, 0x1000C8077774924);
            }
          }

          while (v23 != v22);
          v24 = v33;
        }

        v34 = v22;
        operator delete(v24);
        result = v18;
      }

      if (v31 != &v32)
      {
        free(v31);
        return v18;
      }
    }

    return result;
  }

  if (v6 < 0)
  {
    *v39 = 0;
    {
      return 0;
    }
  }

  v16 = v28;
}

void toString(char *a1, int a2)
{
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        a1[23] = 10;
        strcpy(a1, "String (0)");
        return;
      }

      if (a2 == 1)
      {
        a1[23] = 11;
        strcpy(a1, "Dialect (1)");
        return;
      }

LABEL_20:
      v8 = v2;
      v9 = v3;
      v4[0] = "Unknown (";
      v4[2] = a2;
      v5 = 2307;
      v6[0] = v4;
      v6[2] = ")";
      v7 = 770;
      llvm::Twine::str(v6, a1);
      return;
    }

    if (a2 == 2)
    {
      a1[23] = 12;
      strcpy(a1, "AttrType (2)");
    }

    else
    {
      a1[23] = 18;
      strcpy(a1, "AttrTypeOffset (3)");
    }
  }

  else
  {
    if (a2 > 5)
    {
      switch(a2)
      {
        case 6:
          a1[23] = 18;
          strcpy(a1, "ResourceOffset (6)");
          return;
        case 7:
          a1[23] = 19;
          strcpy(a1, "DialectVersions (7)");
          return;
        case 8:
          a1[23] = 14;
          strcpy(a1, "Properties (8)");
          return;
      }

      goto LABEL_20;
    }

    if (a2 == 4)
    {
      a1[23] = 6;
      strcpy(a1, "IR (4)");
    }

    else
    {
      a1[23] = 12;
      strcpy(a1, "Resource (5)");
    }
  }
}

BOOL anonymous namespace::PropertiesSectionReader::initialize(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    return 1;
  }

  v20 = a3;
  v21 = a4;
  v22 = a3;
  v23 = a2;
  v19 = 0;
  {
    return 0;
  }

  v6 = *a1;
  v7 = a1[1];
  v15 = v6;
  v16 = v7;
  v17 = v6;
  v18 = a2;
  v8 = v19;
  if (v19 > *(a1 + 7))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    while (1)
    {
      v9 = *(a1 + 6);
      if (v9 >= *(a1 + 7))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(a1[2] + 8 * v9) = a1[1] - (v15 + v16) + v17;
      ++*(a1 + 6);
      *&v24 = 0;
      {
        return 0;
      }

      if (!--v8)
      {
        if (v17 == v15 + v16)
        {
          return 1;
        }

        goto LABEL_15;
      }
    }
  }

  if (v6 == v6 + v7)
  {
    return 1;
  }

LABEL_15:
  mlir::emitError(v18, &v26);
  if (v26)
  {
    LODWORD(v24) = 3;
    *(&v24 + 1) = "Broken properties section: didn't exhaust the offsets table";
    v25 = 59;
    if (v29 >= v30)
    {
      if (v28 > &v24 || v28 + 24 * v29 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v28 + 24 * v29;
    v12 = v24;
    *(v11 + 16) = v25;
    *v11 = v12;
    ++v29;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
  if (v26)
  {
    v13 = result;
    mlir::InFlightDiagnostic::report(&v26);
    result = v13;
  }

  if (v31 == 1)
  {
    v14 = result;
    mlir::Diagnostic::~Diagnostic(&v27);
    return v14;
  }

  return result;
}

uint64_t mlir::BytecodeReader::Impl::parseDialectSection(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[27] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v19 = a2;
  v20 = a3;
  v21 = a2;
  v22 = v4;
  v18 = 0;
  {
    return 0;
  }

  v5 = v18;
  v6 = *(a1 + 280);
  if (v18 != v6)
  {
    if (v18 >= v6)
    {
      if (v18 > *(a1 + 284))
      {
        v17[0] = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      if (v18 != v6)
      {
        bzero((*(a1 + 272) + 8 * v6), 8 * (v18 - v6));
      }
    }

    else
    {
      v7 = 8 * v6;
      v8 = 8 * v18 - v7;
      v9 = (v7 + *(a1 + 272) - 8);
      do
      {
        v10 = *v9;
        *v9 = 0;
        if (v10)
        {
          v11 = *(v10 + 56);
          *(v10 + 56) = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          MEMORY[0x259C63180](v10, 0x1072C4009F0BF78);
        }

        --v9;
        v8 += 8;
      }

      while (v8);
    }

    *(a1 + 280) = v5;
  }

  if (v5)
  {
    operator new();
  }

  v16[0] = a1;
  v16[1] = &v19;
  if (*(a1 + 248) >= 4uLL)
  {
    v17[0] = 0;
    {
      return 0;
    }

    if (v17[0] > *(a1 + 372))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v21 == v19 + v20)
  {
    return 1;
  }

  while (1)
  {
    v12 = *(a1 + 280);
    v17[0] = *(a1 + 272);
    v17[1] = v12;
    v24[0] = 0;
    {
      return 0;
    }

    v23 = 0;
    {
      return 0;
    }

    v13 = v23;
    if (v23)
    {
      v14 = v24[0];
      {
        if (!--v13)
        {
          goto LABEL_23;
        }
      }

      return 0;
    }

LABEL_23:
    if (v21 == v19 + v20)
    {
      return 1;
    }
  }
}

uint64_t mlir::BytecodeReader::Impl::parseResourceSection(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v163 = *MEMORY[0x277D85DE8];
  if (*(a3 + 16) == *(a4 + 16))
  {
    if (*(a3 + 16))
    {
      v123[0] = &unk_2868648C8;
      v123[1] = a1 + 11;
      v15 = a1 + 53;
      v123[2] = a1 + 67;
      v123[3] = a1 + 53;
      v123[4] = a1 + 42;
      v123[5] = a2;
      v123[6] = a1 + 31;
      v17 = *a1;
      v16 = a1[1];
      v18 = a1[34];
      v19 = a1[151];
      v136[1] = *(a1 + 70);
      v137 = v16;
      v135 = v16;
      v136[0] = v18;
      v133 = *a3;
      v134 = v133;
      v130 = *a4;
      v131 = v130;
      v132 = v16;
      v129 = 0;
      {
        return 0;
      }

      v122 = v19;
      if (v129)
      {
        for (i = 0; i < v129; ++i)
        {
          v147 = 0uLL;
          *&v152 = 0;
          {
            return 0;
          }

          v21 = v147;
          v152 = v147;
          v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>((v17 + 16), &v152);
          if (!v22 || v22 == *(v17 + 16) + 24 * *(v17 + 32))
          {
            v25 = *(v17 + 40);
            if (v25)
            {
              ParserFor = mlir::FallbackAsmResourceMap::getParserFor(v25, v152, *(&v152 + 1));
              v24 = 0;
              goto LABEL_57;
            }
          }

          else
          {
            ParserFor = *(v22 + 16);
            if (ParserFor)
            {
              v24 = 0;
              goto LABEL_57;
            }
          }

          mlir::emitWarning(v137, &v152);
          if (v152)
          {
            LODWORD(v138) = 3;
            *(&v138 + 1) = "ignoring unknown external resources for '";
            v139 = 41;
            if (v154 >= v155)
            {
              if (v153 > &v138 || v153 + 24 * v154 <= &v138)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v26 = v153 + 24 * v154;
            v27 = v138;
            *(v26 + 2) = v139;
            *v26 = v27;
            ++v154;
            if (v152)
            {
              LOWORD(v141) = 261;
              v138 = v21;
              mlir::Diagnostic::operator<<(&v152 + 8, &v138);
              if (v152)
              {
                LODWORD(v138) = 3;
                *(&v138 + 1) = "'";
                v139 = 1;
                if (v154 >= v155)
                {
                  if (v153 > &v138 || v153 + 24 * v154 <= &v138)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v28 = v153 + 24 * v154;
                v29 = v138;
                *(v28 + 2) = v139;
                *v28 = v29;
                ++v154;
                if (v152)
                {
                  mlir::InFlightDiagnostic::report(&v152);
                }
              }
            }
          }

          if (v162 == 1)
          {
            if (v161 != &v162)
            {
              free(v161);
            }

            v30 = __p;
            if (__p)
            {
              v31 = v160;
              v32 = __p;
              if (v160 != __p)
              {
                do
                {
                  v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
                }

                while (v31 != v30);
                v32 = __p;
              }

              v160 = v30;
              operator delete(v32);
            }

            v33 = v157;
            if (v157)
            {
              v34 = v158;
              v35 = v157;
              if (v158 != v157)
              {
                do
                {
                  v37 = *--v34;
                  v36 = v37;
                  *v34 = 0;
                  if (v37)
                  {
                    MEMORY[0x259C63150](v36, 0x1000C8077774924);
                  }
                }

                while (v34 != v33);
                v35 = v157;
              }

              v158 = v33;
              operator delete(v35);
            }

            if (v153 != v156)
            {
              free(v153);
            }
          }

          ParserFor = 0;
          v24 = 1;
LABEL_57:
          v38 = v137;
          v151 = 0;
          {
            return 0;
          }

          v39 = v151;
          if (v151)
          {
            if (v24)
            {
              while (1)
              {
                v124 = 0uLL;
                v148 = 0;
                *&v152 = 0;
                {
                  break;
                }

                if (!--v39)
                {
                  goto LABEL_83;
                }
              }
            }

            else
            {
              while (1)
              {
                v124 = 0uLL;
                LODWORD(v128) = 0;
                v148 = 0;
                v150 = 0uLL;
                *&v152 = 0;
                {
                  break;
                }

                v42 = *(&v124 + 1);
                v41 = v124;
                v144 = v150;
                v145 = v150;
                v146 = v38;
                v43 = llvm::StringMapImpl::hash(v124, *(&v124 + 1), v40);
                Key = llvm::StringMapImpl::FindKey(a1 + 61, v41, v42, v43);
                if (Key != -1 && Key != *(a1 + 124))
                {
                  v45 = *(a1[61] + 8 * Key);
                  v48 = *(v45 + 8);
                  v46 = v45 + 8;
                  v47 = v48;
                  v49 = *(v46 + 23);
                  if (v49 >= 0)
                  {
                    v41 = v46;
                  }

                  else
                  {
                    v41 = v47;
                  }

                  v50 = *(v46 + 8);
                  if (v49 >= 0)
                  {
                    v42 = v49;
                  }

                  else
                  {
                    v42 = v50;
                  }
                }

                *&v124 = v41;
                *(&v124 + 1) = v42;
                *&v138 = &unk_286864988;
                *(&v138 + 1) = v41;
                v139 = v42;
                v140 = v128;
                v141 = &v144;
                v142 = a1 + 67;
                v143 = v122;
                if (((*(*ParserFor + 16))(ParserFor, &v138) & 1) == 0)
                {
LABEL_186:
                  mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v138);
                  return 0;
                }

                if (v145 != v144 + *(&v144 + 1))
                {
                  v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v152);
                  if (v152)
                  {
                    mlir::InFlightDiagnostic::report(&v152);
                  }

                  if (v162)
                  {
                    if (v161 != &v162)
                    {
                      free(v161);
                    }

                    v52 = __p;
                    if (__p)
                    {
                      v53 = v160;
                      v54 = __p;
                      if (v160 != __p)
                      {
                        do
                        {
                          v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
                        }

                        while (v53 != v52);
                        v54 = __p;
                      }

                      v160 = v52;
                      operator delete(v54);
                    }

                    v55 = v157;
                    if (v157)
                    {
                      v56 = v158;
                      v57 = v157;
                      if (v158 != v157)
                      {
                        do
                        {
                          v59 = *--v56;
                          v58 = v59;
                          *v56 = 0;
                          if (v59)
                          {
                            MEMORY[0x259C63150](v58, 0x1000C8077774924);
                          }
                        }

                        while (v56 != v55);
                        v57 = v157;
                      }

                      v158 = v55;
                      operator delete(v57);
                    }

                    if (v153 != v156)
                    {
                      free(v153);
                    }
                  }

                  mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v138);
                  if (v51)
                  {
                    goto LABEL_83;
                  }

                  return 0;
                }

                mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v138);
                if (!--v39)
                {
                  goto LABEL_83;
                }
              }
            }

            return 0;
          }

LABEL_83:
          v15 = a1 + 53;
        }
      }

      Context = mlir::Attribute::getContext(&v137);
      if (v131 != v130 + *(&v130 + 1))
      {
        v68 = Context;
        v69 = "dialect";
        while (1)
        {
          v128 = 0;
          {
            return 0;
          }

          v70 = **v128;
          if (!v70)
          {
            mlir::emitError(v135, &v152);
            if (v152)
            {
              LODWORD(v138) = 3;
              *(&v138 + 1) = "dialect '";
              v139 = 9;
              if (v154 >= v155)
              {
                if (v153 > &v138 || v153 + 24 * v154 <= &v138)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v95 = v153 + 24 * v154;
              v96 = v138;
              *(v95 + 2) = v139;
              *v95 = v96;
              ++v154;
              if (v152)
              {
                v97 = *v128;
                LOWORD(v141) = 261;
                v99 = *(v97 + 24);
                v98 = *(v97 + 32);
                *&v138 = v99;
                *(&v138 + 1) = v98;
                mlir::Diagnostic::operator<<(&v152 + 8, &v138);
                if (v152)
                {
                  LODWORD(v138) = 3;
                  *(&v138 + 1) = "' is unknown";
                  v139 = 12;
                  if (v154 >= v155)
                  {
                    if (v153 > &v138 || v153 + 24 * v154 <= &v138)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v100 = v153 + 24 * v154;
                  v101 = v138;
                  *(v100 + 2) = v139;
                  *v100 = v101;
                  ++v154;
                }
              }
            }

            v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v152);
            if (v152)
            {
              mlir::InFlightDiagnostic::report(&v152);
            }

            if (v162 != 1)
            {
              return v6;
            }

            if (v161 != &v162)
            {
              free(v161);
            }

            v102 = __p;
            if (__p)
            {
              v103 = v160;
              v104 = __p;
              if (v160 != __p)
              {
                do
                {
                  v103 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v103 - 1);
                }

                while (v103 != v102);
                v104 = __p;
              }

              v160 = v102;
              operator delete(v104);
            }

            v10 = v157;
            if (!v157)
            {
              goto LABEL_234;
            }

            v105 = v158;
            v12 = v157;
            if (v158 == v157)
            {
              goto LABEL_233;
            }

            do
            {
              v107 = *--v105;
              v106 = v107;
              *v105 = 0;
              if (v107)
              {
                MEMORY[0x259C63150](v106, 0x1000C8077774924);
              }
            }

            while (v105 != v10);
            goto LABEL_232;
          }

          if (!mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(**v128))
          {
            v127 = 0;
            mlir::emitError(v135, &v152);
            if (v152)
            {
              LODWORD(v138) = 3;
              *(&v138 + 1) = "unexpected resources for dialect '";
              v139 = 34;
              if (v154 >= v155)
              {
                if (v153 > &v138 || v153 + 24 * v154 <= &v138)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v108 = v153 + 24 * v154;
              v109 = v138;
              *(v108 + 2) = v139;
              *v108 = v109;
              ++v154;
              if (v152)
              {
                v110 = *v128;
                LOWORD(v141) = 261;
                v112 = *(v110 + 24);
                v111 = *(v110 + 32);
                *&v138 = v112;
                *(&v138 + 1) = v111;
                mlir::Diagnostic::operator<<(&v152 + 8, &v138);
                if (v152)
                {
                  LODWORD(v138) = 3;
                  *(&v138 + 1) = "'";
                  v139 = 1;
                  if (v154 >= v155)
                  {
                    if (v153 > &v138 || v153 + 24 * v154 <= &v138)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v113 = v153 + 24 * v154;
                  v114 = v138;
                  *(v113 + 2) = v139;
                  *v113 = v114;
                  ++v154;
                }
              }
            }

            v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v152);
            if (v152)
            {
              mlir::InFlightDiagnostic::report(&v152);
            }

            if (v162 != 1)
            {
              return v6;
            }

            if (v161 != &v162)
            {
              free(v161);
            }

            v115 = __p;
            if (__p)
            {
              v116 = v160;
              v117 = __p;
              if (v160 != __p)
              {
                do
                {
                  v116 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v116 - 1);
                }

                while (v116 != v115);
                v117 = __p;
              }

              v160 = v115;
              operator delete(v117);
            }

            v10 = v157;
            if (!v157)
            {
              goto LABEL_234;
            }

            v118 = v158;
            v12 = v157;
            if (v158 == v157)
            {
              goto LABEL_233;
            }

            do
            {
              v120 = *--v118;
              v119 = v120;
              *v118 = 0;
              if (v120)
              {
                MEMORY[0x259C63150](v119, 0x1000C8077774924);
              }
            }

            while (v118 != v10);
            goto LABEL_232;
          }

          v71 = v69;
          v72 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(v70);
          v126 = v15;
          v127 = v72;
          *&v124 = &v127;
          *(&v124 + 1) = &v133;
          v125 = &v128;
          v73 = v137;
          v151 = 0;
          {
            return 0;
          }

          v74 = v151;
          if (v151)
          {
            do
            {
              v150 = 0uLL;
              v149 = 0;
              v148 = 0;
              v147 = 0uLL;
              *&v152 = 0;
              {
                return 0;
              }

              if (*(&v147 + 1))
              {
                v144 = v147;
                v145 = v147;
                v146 = v73;
                v77 = *(&v150 + 1);
                v76 = v150;
                v78 = llvm::StringMapImpl::hash(v150, *(&v150 + 1), v75);
                v79 = llvm::StringMapImpl::FindKey(a1 + 61, v76, v77, v78);
                if (v79 != -1 && v79 != *(a1 + 124))
                {
                  v80 = *(a1[61] + 8 * v79);
                  v83 = *(v80 + 8);
                  v81 = v80 + 8;
                  v82 = v83;
                  v84 = *(v81 + 23);
                  if (v84 >= 0)
                  {
                    v76 = v81;
                  }

                  else
                  {
                    v76 = v82;
                  }

                  v85 = *(v81 + 8);
                  if (v84 >= 0)
                  {
                    v77 = v84;
                  }

                  else
                  {
                    v77 = v85;
                  }
                }

                *&v150 = v76;
                *(&v150 + 1) = v77;
                *&v138 = &unk_286864988;
                *(&v138 + 1) = v76;
                v139 = v77;
                v140 = v149;
                v141 = &v144;
                v142 = a1 + 67;
                v143 = v122;
                if (((*(*v72 + 48))(v72, &v138) & 1) == 0)
                {
                  goto LABEL_186;
                }

                if (v145 != v144 + *(&v144 + 1))
                {
                  v86 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v152);
                  if (v152)
                  {
                    mlir::InFlightDiagnostic::report(&v152);
                  }

                  v15 = a1 + 53;
                  if (v162)
                  {
                    if (v161 != &v162)
                    {
                      free(v161);
                    }

                    v87 = __p;
                    if (__p)
                    {
                      v88 = v160;
                      v89 = __p;
                      if (v160 != __p)
                      {
                        do
                        {
                          v88 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v88 - 1);
                        }

                        while (v88 != v87);
                        v89 = __p;
                      }

                      v160 = v87;
                      operator delete(v89);
                    }

                    v90 = v157;
                    if (v157)
                    {
                      v91 = v158;
                      v92 = v157;
                      if (v158 != v157)
                      {
                        do
                        {
                          v94 = *--v91;
                          v93 = v94;
                          *v91 = 0;
                          if (v94)
                          {
                            MEMORY[0x259C63150](v93, 0x1000C8077774924);
                          }
                        }

                        while (v91 != v90);
                        v92 = v157;
                      }

                      v158 = v90;
                      operator delete(v92);
                      v15 = a1 + 53;
                    }

                    if (v153 != v156)
                    {
                      free(v153);
                    }

                    mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v138);
                    v69 = v71;
                  }

                  else
                  {
                    v69 = v71;
                    mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v138);
                  }

                  if (v86)
                  {
                    goto LABEL_140;
                  }

                  return 0;
                }

                mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v138);
              }
            }

            while (--v74);
          }

          v15 = a1 + 53;
          v69 = v71;
LABEL_140:
          v6 = 1;
          if (v131 == v130 + *(&v130 + 1))
          {
            return v6;
          }
        }
      }
    }

    return 1;
  }

  if (*(a4 + 16))
  {
    v5 = a1[1];
    *&v138 = "unexpected resource offset section when resource section is not present";
    LOWORD(v141) = 259;
    mlir::emitError(v5, &v138, &v152);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v152);
    if (v152)
    {
      mlir::InFlightDiagnostic::report(&v152);
    }

    if (v162 == 1)
    {
      if (v161 != &v162)
      {
        free(v161);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v160;
        v9 = __p;
        if (v160 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v160 = v7;
        operator delete(v9);
      }

      v10 = v157;
      if (!v157)
      {
        goto LABEL_234;
      }

      v11 = v158;
      v12 = v157;
      if (v158 == v157)
      {
LABEL_233:
        v158 = v10;
        operator delete(v12);
LABEL_234:
        if (v153 != v156)
        {
          free(v153);
        }

        return v6;
      }

      do
      {
        v14 = *--v11;
        v13 = v14;
        *v11 = 0;
        if (v14)
        {
          MEMORY[0x259C63150](v13, 0x1000C8077774924);
        }
      }

      while (v11 != v10);
LABEL_232:
      v12 = v157;
      goto LABEL_233;
    }
  }

  else
  {
    v60 = a1[1];
    *&v138 = "expected resource offset section when resource section is present";
    LOWORD(v141) = 259;
    mlir::emitError(v60, &v138, &v152);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v152);
    if (v152)
    {
      mlir::InFlightDiagnostic::report(&v152);
    }

    if (v162 == 1)
    {
      if (v161 != &v162)
      {
        free(v161);
      }

      v61 = __p;
      if (__p)
      {
        v62 = v160;
        v63 = __p;
        if (v160 != __p)
        {
          do
          {
            v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
          }

          while (v62 != v61);
          v63 = __p;
        }

        v160 = v61;
        operator delete(v63);
      }

      v10 = v157;
      if (!v157)
      {
        goto LABEL_234;
      }

      v64 = v158;
      v12 = v157;
      if (v158 == v157)
      {
        goto LABEL_233;
      }

      do
      {
        v66 = *--v64;
        v65 = v66;
        *v64 = 0;
        if (v66)
        {
          MEMORY[0x259C63150](v65, 0x1000C8077774924);
        }
      }

      while (v64 != v10);
      goto LABEL_232;
    }
  }

  return v6;
}

BOOL anonymous namespace::AttrTypeReader::initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = *MEMORY[0x277D85DE8];
  v32[0] = a4;
  v32[1] = a5;
  v10 = *(a1 + 136);
  v28 = a6;
  v29 = a7;
  v30 = a6;
  v31 = v10;
  v27 = 0;
  {
    return 0;
  }

  v26 = 0;
  {
    return 0;
  }

  v11 = v27;
  v12 = *(a1 + 32);
  if (v27 != v12)
  {
    if (v27 >= v12)
    {
      if (v27 > *(a1 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v27 != v12)
      {
        bzero((*(a1 + 24) + 40 * v12), 40 * ((40 * (v27 - v12) - 40) / 0x28) + 40);
      }
    }

    *(a1 + 32) = v11;
    LODWORD(v12) = v11;
  }

  v13 = (a1 + 80);
  v14 = v26;
  v15 = *(a1 + 88);
  if (v26 != v15)
  {
    if (v26 >= v15)
    {
      if (v26 > *(a1 + 92))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v26 != v15)
      {
        bzero((*v13 + 40 * v15), 40 * ((40 * (v26 - v15) - 40) / 0x28) + 40);
      }
    }

    *(a1 + 88) = v14;
    LODWORD(v12) = *(a1 + 32);
    LODWORD(v15) = v14;
  }

  v25 = 0;
  v33 = 0;
  v38 = (a1 + 24);
  v39 = &v33;
  v40 = &v28;
  v41 = &v25;
  v42 = v32;
  if (v12)
  {
    v16 = v12;
    while (1)
    {
      v36 = a2;
      v37 = a3;
      v35 = 0;
      {
        return 0;
      }

      v34 = 0;
      {
        return 0;
      }

      v17 = v34;
      if (v34)
      {
        v18 = v35;
        while ((_ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir9AttributeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_(&v38, *v18) & 1) != 0)
        {
          if (!--v17)
          {
            goto LABEL_19;
          }
        }

        return 0;
      }

LABEL_19:
      if (v33 == v16)
      {
        LODWORD(v15) = *(a1 + 88);
        v13 = (a1 + 80);
        break;
      }
    }
  }

  v33 = 0;
  v38 = v13;
  v39 = &v33;
  v40 = &v28;
  v41 = &v25;
  v42 = v32;
  if (v15)
  {
    v19 = v15;
    do
    {
      v36 = a2;
      v37 = a3;
      v35 = 0;
      {
        return 0;
      }

      v34 = 0;
      {
        return 0;
      }

      v20 = v34;
      if (v34)
      {
        v21 = v35;
        while ((_ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir9AttributeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_(&v38, *v21) & 1) != 0)
        {
          if (!--v20)
          {
            goto LABEL_30;
          }
        }

        return 0;
      }

LABEL_30:
      ;
    }

    while (v33 != v19);
  }

  if (v30 == v28 + v29)
  {
    return 1;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
  if (v38)
  {
    v23 = result;
    mlir::InFlightDiagnostic::report(&v38);
    result = v23;
  }

  if (v43 == 1)
  {
    v24 = result;
    mlir::Diagnostic::~Diagnostic(&v39);
    return v24;
  }

  return result;
}

void mlir::BytecodeReader::Impl::parseIRSection(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  LOBYTE(v2) = 0;
  v3 = 0;
  mlir::ModuleOp::create(v1, &v2);
}

uint64_t anonymous namespace::EncodingReader::parseVarInt(_anonymous_namespace_::EncodingReader *this, unint64_t *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  if (v4 == (*this + *(this + 1)))
  {
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__dst);
    if (*__dst)
    {
      mlir::InFlightDiagnostic::report(__dst);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v23;
        v11 = __p;
        if (v23 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v23 = v9;
        operator delete(v11);
      }

      v12 = v20;
      if (v20)
      {
        v13 = v21;
        v14 = v20;
        if (v21 != v20)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x259C63150](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v20;
        }

        v21 = v12;
        operator delete(v14);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }

    if (!v8)
    {
      return 0;
    }

    v5 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }

LABEL_28:
    if (v5)
    {
    }

    {
      v6 = *__dst;
      goto LABEL_4;
    }

    return 0;
  }

  *(this + 2) = v4 + 1;
  v5 = *v4;
  *a2 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_3:
  v6 = v5 >> 1;
LABEL_4:
  *a2 = v6;
  return 1;
}

uint64_t mlir::BytecodeReader::Impl::sortUseListOrder(uint64_t a1, void *a2)
{
  v114 = *MEMORY[0x277D85DE8];
  v94 = a2;
  v3 = *a2;
  if (!*a2 || !*v3)
  {
    return 1;
  }

  v5 = *(a1 + 528);
  if (v5)
  {
    v6 = *(a1 + 512);
    v7 = v5 - 1;
    v8 = v7 & ((a2 >> 4) ^ (a2 >> 9));
    v9 = *(v6 + 48 * v8);
    if (v9 == a2)
    {
      v10 = 0;
    }

    else
    {
      v89 = 1;
      do
      {
        v10 = v9 == -4096;
        if (v9 == -4096)
        {
          break;
        }

        v10 = 0;
        v90 = v8 + v89++;
        v8 = v90 & v7;
        v9 = *(v6 + 48 * v8);
      }

      while (v9 != a2);
    }
  }

  else
  {
    v10 = 1;
  }

  v12 = *(a1 + 704);
  v13 = *(a1 + 720);
  if (!v13)
  {
LABEL_14:
    v15 = *(a1 + 720);
    goto LABEL_15;
  }

  v14 = *(v3 + 2);
  v15 = ((v14 >> 4) ^ (v14 >> 9)) & (v13 - 1);
  v16 = *(v12 + 16 * v15);
  if (v16 != v14)
  {
    v17 = 1;
    while (v16 != -4096)
    {
      v18 = v15 + v17++;
      v15 = v18 & (v13 - 1);
      v16 = *(v12 + 16 * v15);
      if (v16 == v14)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  v19 = *(v12 + 16 * v15 + 8);
  v20 = mlir::OpOperand::getOperandNumber(v3) | (v19 << 32);
  v110 = &v112;
  v112 = 0;
  v113 = v20;
  v111 = 0x300000001;
  v21 = **a2;
  if (!v21)
  {
    if (v10)
    {
      goto LABEL_84;
    }

LABEL_39:
    v41 = *(a1 + 512);
    v42 = *(a1 + 528);
    if (v42)
    {
      v43 = ((v94 >> 4) ^ (v94 >> 9)) & (v42 - 1);
      v44 = v41 + 48 * v43;
      v45 = *v44;
      if (*v44 == v94)
      {
        goto LABEL_46;
      }

      v46 = 1;
      while (v45 != -4096)
      {
        v47 = v43 + v46++;
        v43 = v47 & (v42 - 1);
        v44 = v41 + 48 * v43;
        v45 = *v44;
        if (*v44 == v94)
        {
          goto LABEL_46;
        }
      }
    }

    v44 = v41 + 48 * v42;
LABEL_46:
    __dst = v102;
    v101 = 0x400000000;
    v48 = *(v44 + 16);
    if (&__dst == (v44 + 8) || v48 == 0)
    {
      v48 = 0;
      v103 = *(v44 + 40);
      v97 = v99;
      v98 = 0x400000000;
      v50 = *v94;
      if (!*v94)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v48 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v102, *(v44 + 8), 4 * *(v44 + 16));
      LODWORD(v101) = v48;
      v103 = *(v44 + 40);
      v97 = v99;
      v98 = 0x400000000;
      if (__dst == v102)
      {
        memcpy(v97, __dst, 4 * v48);
        LODWORD(v98) = v48;
        LODWORD(v101) = 0;
        v50 = *v94;
        if (!*v94)
        {
LABEL_63:
          v51 = 0;
          if (v103 != 1)
          {
            goto LABEL_64;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v97 = __dst;
        v98 = __PAIR64__(HIDWORD(v101), v48);
        __dst = v102;
        v101 = 0;
        v50 = *v94;
        if (!*v94)
        {
          goto LABEL_63;
        }
      }
    }

    v51 = 0;
    do
    {
      ++v51;
      v50 = *v50;
    }

    while (v50);
    if (v103 != 1)
    {
LABEL_64:
      v91 = 0;
      v92 = 0;
      v93 = 0;
      if (v48)
      {
LABEL_65:
        v57 = 0;
        v58 = v97;
        v59 = 4 * v48;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v91, v58, &v104);
          if (LOBYTE(v106[0]) != 1)
          {
            goto LABEL_104;
          }

          v60 = *v58++;
          v57 += v60;
          v59 -= 4;
        }

        while (v59);
        if (v51 != v98)
        {
LABEL_104:
          llvm::deallocate_buffer(v91, (4 * v93));
        }

LABEL_100:
        if (v57 == ((v51 - 1) * v51) >> 1)
        {
          v104 = v110;
          v105 = &v97;
          LOBYTE(v106[0]) = 1;
          v107 = &v110[4 * v111];
          v108 = &v97;
          v109 = 1;
          llvm::SmallVector<unsigned int,4u>::SmallVector<llvm::mapped_iterator<std::pair<unsigned int,unsigned long long> *,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_1,unsigned int>>(v95, &v104);
          llvm::SmallVectorImpl<unsigned int>::operator=(&v97, v95);
          if (v95[0] != &v96)
          {
            free(v95[0]);
          }

          mlir::Value::shuffleUseList(&v94, v97, v98);
        }

        goto LABEL_104;
      }

LABEL_99:
      v57 = 0;
      if (v51)
      {
        goto LABEL_104;
      }

      goto LABEL_100;
    }

LABEL_55:
    if (v48)
    {
      v11 = 0;
      if (v97 != v99)
      {
        free(v97);
      }

      if (__dst != v102)
      {
        free(__dst);
      }

      goto LABEL_109;
    }

    llvm::SmallVector<unsigned int,4u>::SmallVector(&v104, v51);
    v52 = v104;
    v53 = v105;
    if (v105)
    {
      v54 = (v105 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v54 < 7)
      {
        LODWORD(v55) = 0;
        v56 = v104;
LABEL_91:
        v85 = &v52[v53];
        do
        {
          *v56++ = v55;
          LODWORD(v55) = v55 + 1;
        }

        while (v56 != v85);
        goto LABEL_93;
      }

      v79 = v54 + 1;
      v55 = (v54 + 1) & 0x7FFFFFFFFFFFFFF8;
      v56 = v104 + 4 * v55;
      v80 = xmmword_257369620;
      v81 = (v104 + 16);
      v82.i64[0] = 0x400000004;
      v82.i64[1] = 0x400000004;
      v83.i64[0] = 0x800000008;
      v83.i64[1] = 0x800000008;
      v84 = v55;
      do
      {
        v81[-1] = v80;
        *v81 = vaddq_s32(v80, v82);
        v80 = vaddq_s32(v80, v83);
        v81 += 2;
        v84 -= 8;
      }

      while (v84);
      if (v79 != v55)
      {
        goto LABEL_91;
      }
    }

LABEL_93:
    if (v98)
    {
      v86 = 0;
      v87 = v97;
      do
      {
        v52[v87[v86]] = v87[v86 + 1];
        v86 += 2;
      }

      while (v86 < v98);
    }

    llvm::SmallVectorImpl<unsigned int>::operator=(&v97, &v104);
    if (v104 != v106)
    {
      free(v104);
    }

    v48 = v98;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    if (v98)
    {
      goto LABEL_65;
    }

    goto LABEL_99;
  }

  v22 = 1;
  v23 = 1;
  do
  {
    v24 = *(a1 + 704);
    v25 = *(a1 + 720);
    if (v25)
    {
      v26 = *(v21 + 2);
      v27 = ((v26 >> 4) ^ (v26 >> 9)) & (v25 - 1);
      v28 = *(v24 + 16 * v27);
      if (v28 == v26)
      {
        goto LABEL_24;
      }

      v29 = 1;
      while (v28 != -4096)
      {
        v30 = v27 + v29++;
        v27 = v30 & (v25 - 1);
        v28 = *(v24 + 16 * v27);
        if (v28 == v26)
        {
          goto LABEL_24;
        }
      }
    }

    v27 = *(a1 + 720);
LABEL_24:
    v31 = *(v24 + 16 * v27 + 8);
    v32 = mlir::OpOperand::getOperandNumber(v21) | (v31 << 32);
    v33 = v20 > v32;
    if (v111 >= HIDWORD(v111))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 &= v33;
    v34 = &v110[4 * v111];
    *v34 = v23;
    *(v34 + 1) = v32;
    v35 = (v111 + 1);
    LODWORD(v111) = v111 + 1;
    ++v23;
    v21 = *v21;
    v20 = v32;
  }

  while (v21);
  if (v10 & v22)
  {
    goto LABEL_84;
  }

  if ((v22 & 1) == 0)
  {
    v36 = 126 - 2 * __clz(v35);
    if (v35)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }
  }

  if (!v10)
  {
    goto LABEL_39;
  }

  v38 = v110;
  v39 = v111;
  v104 = v106;
  v105 = 0xC00000000;
  if (v111 >= 0xD)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v111)
  {
    v61 = v106;
    v62 = (v111 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v62 < 0x18)
    {
      v40 = v110;
    }

    else if (v106 >= &v110[4 * v111 - 2] || (v40 = v110, v110 >= &v106[v62 + 1]))
    {
      v63 = v62 + 1;
      v64 = (v62 + 1) & 7;
      if (!v64)
      {
        v64 = 8;
      }

      v65 = v63 - v64;
      v66 = &v106[v65];
      v40 = &v110[4 * v65];
      v67 = (v110 + 16);
      v68 = &v108;
      do
      {
        v69 = v67 - 8;
        v70 = vld2q_f64(v69);
        v71 = v67 - 4;
        v72 = vld2q_f64(v71);
        v73 = v67 + 16;
        v75 = vld2q_f64(v67);
        v74 = v67 + 4;
        v76 = vld2q_f64(v74);
        v68[-1] = vuzp1q_s32(v70, v72);
        *v68 = vuzp1q_s32(v75, v76);
        v68 += 2;
        v67 = v73;
        v65 -= 8;
      }

      while (v65);
      v61 = v66;
    }

    do
    {
      v77 = *v40;
      v40 += 4;
      *v61++ = v77;
    }

    while (v40 != &v38[4 * v39]);
    v78 = v105;
  }

  else
  {
    v78 = 0;
  }

  LODWORD(v105) = v78 + v39;
  mlir::Value::shuffleUseList(&v94, v106, (v78 + v39));
  if (v104 != v106)
  {
    free(v104);
  }

LABEL_84:
  v11 = 1;
LABEL_109:
  if (v110 != &v112)
  {
    free(v110);
  }

  return v11;
}

uint64_t llvm::SmallVector<unsigned int,4u>::SmallVector(uint64_t result, unint64_t a2)
{
  v2 = a2;
  *result = result + 16;
  *(result + 8) = 0x400000000;
  if (a2)
  {
    if (a2 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v3 = result;
    bzero(*result, 4 * a2);
    result = v3;
    *(v3 + 8) = v2;
  }

  return result;
}

void *llvm::SmallVector<unsigned int,4u>::SmallVector<llvm::mapped_iterator<std::pair<unsigned int,unsigned long long> *,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_1,unsigned int>>(void *result, uint64_t a2)
{
  *result = result + 2;
  result[1] = 0x400000000;
  v2 = *a2;
  v3 = *(a2 + 24);
  v4 = v3 - *a2;
  if ((v4 >> 4) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = 0;
  if (v2 != v3)
  {
    v6 = *result;
    v7 = **(a2 + 8);
    do
    {
      v8 = *v2;
      v2 += 4;
      *v6++ = *(v7 + 4 * v8);
    }

    while (v2 != v3);
    v5 = *(result + 2);
  }

  *(result + 2) = v5 + (v4 >> 4);
  return result;
}

BOOL mlir::BytecodeReader::Impl::processUseLists(mlir::BytecodeReader::Impl *this, mlir::Operation *a2)
{
  v9 = 0;
  v8[0] = this;
  v8[1] = &v9;
  mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_0>, v8, 0);
  v8[0] = this;
  v4 = mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<mlir::WalkResult ()(mlir::Block *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_1>, v8, 1);
  v8[0] = this;
  v5 = mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_2>, v8, 1);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

uint64_t mlir::BytecodeReader::Impl::parseBlockHeader(uint64_t a1, _anonymous_namespace_::EncodingReader *this, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  {
    return 0;
  }

  v6 = *(a3 + 112);
  *(a3 + 112) = v6 >> 1;
  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = *(a3 + 104);
  if (v7)
  {
    v8 = (v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v24 = 0;
  {
    return 0;
  }

  v30 = &v32;
  v31 = 0x600000000;
  v27 = v29;
  v28 = 0x600000000;
  v10 = v24;
  if (v24 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = mlir::UnknownLoc::get(**a1, v9);
  if (!v10)
  {
LABEL_27:
    mlir::TypeRange::TypeRange(&v25, v30, v31);
    mlir::Block::addArguments(v8, v25, v26, v27, v28);
    mlir::ValueRange::ValueRange(&v25, v8[6], (v8[7] - v8[6]) >> 3);
    v18 = mlir::BytecodeReader::Impl::defineValues(a1, *(this + 3), v25, v26) ^ 1;
    v19 = v27;
    if (v27 == v29)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v12 = v11;
  while (1)
  {
    v23 = v12;
    if (*(a1 + 248) < 4uLL)
    {
      break;
    }

    v25 = 0;
    {
      goto LABEL_36;
    }

    v13 = v25;
    if (!v14)
    {
      goto LABEL_36;
    }

    v15 = v14;
    if (v13)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (v31 >= HIDWORD(v31))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v30 + v31) = v15;
    LODWORD(v31) = v31 + 1;
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v27 + v28) = v23;
    LODWORD(v28) = v28 + 1;
    if (!--v10)
    {
      goto LABEL_27;
    }
  }

  v25 = 0;
  {
    if (v16)
    {
      v15 = v16;
LABEL_19:
      if ((mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(a1, this, &v23) & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_20;
    }
  }

LABEL_36:
  v18 = 1;
  v19 = v27;
  if (v27 != v29)
  {
LABEL_28:
    free(v19);
  }

LABEL_29:
  if (v30 != &v32)
  {
    free(v30);
  }

  if (v18)
  {
    return 0;
  }

  if (*(a1 + 248) < 3uLL)
  {
    return 1;
  }

  LOBYTE(v25) = 0;
  result = 0;
  if (v20)
  {
    if (v25)
    {
      v21 = *(a3 + 104);
      if (v21)
      {
        v22 = v21 - 8;
      }

      else
      {
        v22 = 0;
      }

      mlir::BytecodeReader::Impl::parseUseListOrderForRange(&v30, this, ((*(v22 + 56) - *(v22 + 48)) >> 3));
    }

    return 1;
  }

  return result;
}

BOOL mlir::BytecodeReader::Impl::parseRegions(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2;
  v267 = *MEMORY[0x277D85DE8];
  if (*a3 == *(a3 + 8))
  {
LABEL_361:
    if (*(a3 + 120) == 1)
    {
      v175 = a1[86];
      v176 = (v175 - 7);
      v177 = *(v175 - 4);
      if (v177 != v175 - 2)
      {
        free(v177);
      }

      v178 = *v176;
      if (*v176)
      {
        *(v175 - 6) = v178;
        operator delete(v178);
      }

      a1[86] = v176;
    }

    v179 = v5[1];
    v180 = *(v179 - 88);
    if (v180 != (v179 - 72))
    {
      free(v180);
    }

    v181 = *(v179 - 104);
    *(v179 - 104) = 0;
    if (v181)
    {
      MEMORY[0x259C63180](v181, 0x1070C401CF53446);
    }

    v5[1] = v179 - 128;
    return 1;
  }

  v7 = (a1 + 11);
  v209 = a1 + 53;
  v210 = (a1 + 67);
  v208 = (a1 + 42);
  v211 = a1 + 31;
  v212 = (a1 + 11);
  while (!*(a3 + 104))
  {
    if ((mlir::BytecodeReader::Impl::parseRegion(a1, a3) & 1) == 0)
    {
      return 0;
    }

    v8 = *a3;
    if (**a3 != *a3)
    {
      break;
    }

LABEL_360:
    v174 = v8 + 24;
    *a3 = v174;
    if (v174 == *(a3 + 8))
    {
      goto LABEL_361;
    }
  }

  v9 = *(a3 + 16);
  while (1)
  {
    v10 = *(a3 + 112);
    *(a3 + 112) = v10 - 1;
    v11 = v3;
    if (v10)
    {
      break;
    }

LABEL_352:
    v168 = *(*(a3 + 104) + 8);
    *(a3 + 104) = v168;
    v8 = *a3;
    if (v168 == *a3)
    {
      *(a3 + 104) = 0;
      v169 = a1[86];
      v170 = *(v169 - 7);
      v171 = (*(v169 - 6) - v170) >> 3;
      v172 = *(a3 + 32);
      v173 = v171 - v172;
      if (v171 >= v172)
      {
        if (v171 > v173)
        {
          *(v169 - 6) = v170 + 8 * v173;
        }
      }

      else
      {
        std::vector<mlir::Value>::__append((v169 - 7), -v172);
        v8 = *a3;
      }

      --*(v169 - 6);
      v3 = v11;
      goto LABEL_360;
    }

    v3 = v11;
    v152 = 0;
    if ((mlir::BytecodeReader::Impl::parseBlockHeader(a1, v9, a3) & 1) == 0)
    {
      return v152;
    }
  }

  while (1)
  {
    *v214 = 0;
    {
      return 0;
    }

    v12 = *(v9 + 3);
    v13 = a1[45];
    v14 = *(a1 + 92);
    *__src = "operation name";
    *&__src[8] = 14;
    v221 = *v214;
    if (*v214 < v14)
    {
      v15 = &v13[6 * *v214];
      v16 = *(v15 + 20);
      if (v15[1])
      {
        goto LABEL_47;
      }

LABEL_34:
      if (v15[4])
      {
        v231[0] = &unk_2868648C8;
        v231[1] = v7;
        v232 = v210;
        v233 = v209;
        v234 = v208;
        v235[0] = v9;
        v235[1] = v211;
        {
          return 0;
        }

        v26 = v15[2];
        WORD4(v223) = 773;
        v28 = *(v26 + 24);
        v27 = *(v26 + 32);
        v221 = v28;
        *&v222 = v27;
        *(&v222 + 1) = ".";
        v29 = v15[3];
        v30 = v15[4];
        *__src = &v221;
        *&__src[16] = v29;
        *&v254 = v30;
        WORD4(v254) = 1282;
        llvm::Twine::str(__src, v214);
        v31 = **a1;
        if (*(v15 + 8) == 1)
        {
          *(v15 + 8) = 0;
        }

        if (v214[23] >= 0)
        {
          v32 = v214;
        }

        else
        {
          v32 = *v214;
        }

        if (v214[23] >= 0)
        {
          v33 = v214[23];
        }

        else
        {
          v33 = *&v214[8];
        }

        mlir::OperationName::OperationName(v15, v32, v33, v31);
        *(v15 + 8) = 1;
        if ((v214[23] & 0x80000000) != 0)
        {
          operator delete(*v214);
        }
      }

      else
      {
        mlir::OperationName::OperationName(v15, *(v15[2] + 24), *(v15[2] + 32), **a1);
        *(v15 + 8) = 1;
      }

      goto LABEL_47;
    }

    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v231);
    if (v231[0])
    {
      mlir::InFlightDiagnostic::report(v231);
    }

    if (v248 == 1)
    {
      if (v246 != &v248)
      {
        free(v246);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v245;
        v20 = __p;
        if (v245 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v245 = v18;
        operator delete(v20);
      }

      v21 = v242;
      if (v242)
      {
        v22 = v243;
        v23 = v242;
        if (v243 != v242)
        {
          do
          {
            v25 = *--v22;
            v24 = v25;
            *v22 = 0;
            if (v25)
            {
              MEMORY[0x259C63150](v24, 0x1000C8077774924);
            }
          }

          while (v22 != v21);
          v23 = v242;
        }

        v243 = v21;
        operator delete(v23);
      }

      if (v233 != v235)
      {
        free(v233);
      }
    }

    if (!v17)
    {
      return 0;
    }

    v15 = 0;
    v16 = MEMORY[0x28];
    if ((MEMORY[8] & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_47:
    v34 = *v15;
    v35 = *(v9 + 2);
    v207 = v11;
    if (v35 == (*v9 + *(v9 + 1)))
    {
      v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v231);
      if (v231[0])
      {
        mlir::InFlightDiagnostic::report(v231);
      }

      if (v248 == 1)
      {
        if (v246 != &v248)
        {
          free(v246);
        }

        v38 = __p;
        if (__p)
        {
          v39 = v245;
          v40 = __p;
          if (v245 != __p)
          {
            do
            {
              v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
            }

            while (v39 != v38);
            v40 = __p;
          }

          v245 = v38;
          operator delete(v40);
        }

        v41 = v242;
        if (v242)
        {
          v42 = v243;
          v43 = v242;
          if (v243 != v242)
          {
            do
            {
              v45 = *--v42;
              v44 = v45;
              *v42 = 0;
              if (v45)
              {
                MEMORY[0x259C63150](v44, 0x1000C8077774924);
              }
            }

            while (v42 != v41);
            v43 = v242;
          }

          v243 = v41;
          operator delete(v43);
        }

        if (v233 != v235)
        {
          free(v233);
        }
      }

      if (!v37)
      {
        return 0;
      }

      v36 = 0;
      v218 = 0;
      if ((mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(a1, v9, &v218) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      *(v9 + 2) = v35 + 1;
      v36 = *v35;
      v218 = 0;
      if ((mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(a1, v9, &v218) & 1) == 0)
      {
        return 0;
      }
    }

    mlir::OperationState::OperationState(v231, v218, v34);
    if (v36)
    {
      *__src = 0;
      {
        goto LABEL_413;
      }

      *v214 = v47;
      if (!v47)
      {
        goto LABEL_413;
      }

      v48 = *(*v47 + 136);
      if (v48 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        v49 = v47;
      }

      else
      {
        v49 = 0;
      }

      if (v48 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        v49 = v47;
      }

      else
      {
        v221 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DictionaryAttr]";
        *&v222 = 70;
        v50 = llvm::StringRef::find(&v221, "DesiredTypeName = ", 0x12uLL, 0);
        if (v222 >= v50)
        {
          v51 = v50;
        }

        else
        {
          v51 = v222;
        }

        v52 = v221 + v51;
        v53 = v222 - v51;
        v54 = 18;
        if (v53 < 0x12)
        {
          v54 = v53;
        }

        v55 = &v52[v54];
        v56 = v53 - v54;
        if (v56 >= v56 - 1)
        {
          --v56;
        }

        v221 = v55;
        *&v222 = v56;
        v57 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
        if (*__src)
        {
          mlir::InFlightDiagnostic::report(__src);
        }

        if (v266 == 1)
        {
          if (v265 != &v266)
          {
            free(v265);
          }

          v58 = v263;
          if (v263)
          {
            v59 = v264;
            v60 = v263;
            if (v264 != v263)
            {
              do
              {
                v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
              }

              while (v59 != v58);
              v60 = v263;
            }

            v264 = v58;
            operator delete(v60);
          }

          v61 = v261;
          if (v261)
          {
            v62 = v262;
            v63 = v261;
            if (v262 != v261)
            {
              do
              {
                v65 = *--v62;
                v64 = v65;
                *v62 = 0;
                if (v65)
                {
                  MEMORY[0x259C63150](v64, 0x1000C8077774924);
                }
              }

              while (v62 != v61);
              v63 = v261;
            }

            v262 = v61;
            operator delete(v63);
          }

          if (v254 != &v255)
          {
            free(v254);
          }
        }

        if (!v57)
        {
          goto LABEL_413;
        }
      }

      mlir::NamedAttrList::NamedAttrList(__src, v49);
      v46 = *__src;
      if (*__src == &__src[16])
      {
        v89 = *&__src[8];
        v90 = v240;
        if (v240 >= *&__src[8])
        {
          if (*&__src[8])
          {
            memmove(__dst, *__src, 16 * *&__src[8]);
          }
        }

        else
        {
          if (HIDWORD(v240) < *&__src[8])
          {
            LODWORD(v240) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v240)
          {
            memmove(__dst, *__src, 16 * v240);
          }

          else
          {
            v90 = 0;
          }

          if (*&__src[8] != v90)
          {
            memcpy(__dst + 16 * v90, (*__src + 16 * v90), 16 * (*&__src[8] - v90));
          }
        }

        LODWORD(v240) = v89;
        *&__src[8] = 0;
        v247 = v258;
        if (*__src != &__src[16])
        {
          free(*__src);
        }
      }

      else
      {
        if (__dst != &v241)
        {
          free(__dst);
          v46 = *__src;
        }

        __dst = v46;
        v240 = *&__src[8];
        *__src = &__src[16];
        *&__src[8] = 0;
        v247 = v258;
      }
    }

    if ((v36 & 0x40) == 0)
    {
      goto LABEL_204;
    }

    if ((v16 & 0x100) == 0)
    {
      v190 = a1[1];
      WORD4(v223) = 259;
      mlir::emitError(v190, &v221, __src);
      if (*__src)
      {
        v191 = *v211;
        *v214 = 5;
        *&v214[8] = v191;
        if (DWORD2(v254) >= HIDWORD(v254))
        {
          if (v254 > v214 || v254 + 24 * DWORD2(v254) <= v214)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v192 = v254 + 24 * DWORD2(v254);
        v193 = *v214;
        *(v192 + 16) = *&v214[16];
        *v192 = v193;
        v194 = ++DWORD2(v254);
        if (*__src)
        {
          *v214 = 3;
          *&v214[8] = " with properties.";
          *&v214[16] = 17;
          if (v194 >= HIDWORD(v254))
          {
            if (v254 > v214 || v254 + 24 * v194 <= v214)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v195 = v254 + 24 * DWORD2(v254);
          v196 = *v214;
          *(v195 + 16) = *&v214[16];
          *v195 = v196;
          ++DWORD2(v254);
          if (*__src)
          {
            mlir::InFlightDiagnostic::report(__src);
          }
        }
      }

      if (v266 == 1)
      {
        if (v265 != &v266)
        {
          free(v265);
        }

        v197 = v263;
        if (v263)
        {
          v198 = v264;
          v199 = v263;
          if (v264 != v263)
          {
            do
            {
              v198 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v198 - 1);
            }

            while (v198 != v197);
            v199 = v263;
          }

          v264 = v197;
          operator delete(v199);
        }

        v200 = v261;
        if (v261)
        {
          v201 = v262;
          v202 = v261;
          if (v262 != v261)
          {
            do
            {
              v204 = *--v201;
              v203 = v204;
              *v201 = 0;
              if (v204)
              {
                MEMORY[0x259C63150](v203, 0x1000C8077774924);
              }
            }

            while (v201 != v200);
            v202 = v261;
          }

          v262 = v200;
          operator delete(v202);
        }

        if (v254 != &v255)
        {
          free(v254);
        }
      }

LABEL_413:
      mlir::OperationState::~OperationState(v231);
      return 0;
    }

    *v214 = &unk_2868648C8;
    *&v214[8] = v212;
    *&v214[16] = v210;
    *&v215 = v209;
    *(&v215 + 1) = v208;
    v216 = v9;
    v217 = v211;
    v66 = a1[1];
    v227 = 0;
    {
      goto LABEL_413;
    }

    if (v227 >= *(a1 + 156))
    {
      v228 = "Properties idx out-of-bound for ";
      v230 = 259;
      (*(*v214 + 16))(__src, v214, &v228);
      v221 = *(v34 + 8);
      Value = mlir::StringAttr::getValue(&v221);
      if (*__src)
      {
        WORD4(v223) = 261;
        v221 = Value;
        *&v222 = v79;
        mlir::Diagnostic::operator<<(&__src[8], &v221);
      }

      v80 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
      if (*__src)
      {
        mlir::InFlightDiagnostic::report(__src);
      }

      if (v266 == 1)
      {
        if (v265 != &v266)
        {
          free(v265);
        }

        v81 = v263;
        if (v263)
        {
          v82 = v264;
          v83 = v263;
          if (v264 != v263)
          {
            do
            {
              v82 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v82 - 1);
            }

            while (v82 != v81);
            v83 = v263;
          }

          v264 = v81;
          operator delete(v83);
        }

        v84 = v261;
        if (v261)
        {
          v85 = v262;
          v86 = v261;
          if (v262 == v261)
          {
            goto LABEL_200;
          }

          do
          {
            v88 = *--v85;
            v87 = v88;
            *v85 = 0;
            if (v88)
            {
              MEMORY[0x259C63150](v87, 0x1000C8077774924);
            }
          }

          while (v85 != v84);
LABEL_199:
          v86 = v261;
          goto LABEL_200;
        }

LABEL_201:
        if (v254 != &v255)
        {
          free(v254);
        }
      }

LABEL_203:
      if (!v80)
      {
        goto LABEL_413;
      }

      goto LABEL_204;
    }

    v67 = a1[76];
    if (v227 >= v67)
    {
      v228 = "Properties offset out-of-bound for ";
      v230 = 259;
      (*(*v214 + 16))(__src, v214, &v228);
      v221 = *(v34 + 8);
      v91 = mlir::StringAttr::getValue(&v221);
      if (*__src)
      {
        WORD4(v223) = 261;
        v221 = v91;
        *&v222 = v92;
        mlir::Diagnostic::operator<<(&__src[8], &v221);
      }

      v80 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
      if (*__src)
      {
        mlir::InFlightDiagnostic::report(__src);
      }

      if (v266 != 1)
      {
        goto LABEL_203;
      }

      if (v265 != &v266)
      {
        free(v265);
      }

      v93 = v263;
      if (v263)
      {
        v94 = v264;
        v95 = v263;
        if (v264 != v263)
        {
          do
          {
            v94 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v94 - 1);
          }

          while (v94 != v93);
          v95 = v263;
        }

        v264 = v93;
        operator delete(v95);
      }

      v84 = v261;
      if (!v261)
      {
        goto LABEL_201;
      }

      v96 = v262;
      v86 = v261;
      if (v262 != v261)
      {
        do
        {
          v98 = *--v96;
          v97 = v98;
          *v96 = 0;
          if (v98)
          {
            MEMORY[0x259C63150](v97, 0x1000C8077774924);
          }
        }

        while (v96 != v84);
        goto LABEL_199;
      }

LABEL_200:
      v262 = v84;
      operator delete(v86);
      goto LABEL_201;
    }

    v68 = *(a1[77] + 8 * v227);
    v221 = (a1[75] + v68);
    *&v222 = v67 - v68;
    *(&v222 + 1) = v221;
    *&v223 = v66;
    *&__src[8] = *&v214[8];
    v254 = v215;
    *__src = &unk_2868648C8;
    v255 = &v221;
    v256 = v217;
    v219[0] = 0;
    v228 = 0;
    v229 = 0;
    {
      goto LABEL_413;
    }

    v226[0] = v228;
    v226[1] = v229;
    v226[2] = v228;
    v226[3] = v66;
    v222 = *&v214[8];
    v223 = v215;
    v221 = &unk_2868648C8;
    v224 = v226;
    v225 = v217;
    {
      v69 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
      v70 = *(v34 + 32);
      v71 = *(v34 + 40);
      if (v71)
      {
        goto LABEL_122;
      }
    }

    else
    {
      mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
      v69 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
      v70 = *(v34 + 32);
      v71 = *(v34 + 40);
      if (v71)
      {
LABEL_122:
        v72 = v70;
        v73 = v71;
        do
        {
          v74 = v73 >> 1;
          v75 = &v72[2 * (v73 >> 1)];
          v77 = *v75;
          v76 = v75 + 2;
          v73 += ~(v73 >> 1);
          if (v77 < v69)
          {
            v72 = v76;
          }

          else
          {
            v73 = v74;
          }
        }

        while (v73);
        if (v72 != &v70[2 * v71] && *v72 == v69)
        {
          v162 = v72[1];
          if (v162)
          {
            if (((*v162)(&v221, v231) & 1) == 0)
            {
              goto LABEL_413;
            }

            goto LABEL_204;
          }
        }
      }
    }

    if (*(v34 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v219[0] = "has properties but missing BytecodeOpInterface for ";
      v220 = 259;
      v228 = *(v34 + 8);
      v99 = mlir::StringAttr::getValue(&v228);
      if (*__src)
      {
        v230 = 261;
        v228 = v99;
        v229 = v100;
        mlir::Diagnostic::operator<<(&__src[8], &v228);
      }

      v80 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
      if (*__src)
      {
        mlir::InFlightDiagnostic::report(__src);
      }

      if (v266 != 1)
      {
        goto LABEL_203;
      }

      if (v265 != &v266)
      {
        free(v265);
      }

      v101 = v263;
      if (v263)
      {
        v102 = v264;
        v103 = v263;
        if (v264 != v263)
        {
          do
          {
            v102 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v102 - 1);
          }

          while (v102 != v101);
          v103 = v263;
        }

        v264 = v101;
        operator delete(v103);
      }

      v84 = v261;
      if (!v261)
      {
        goto LABEL_201;
      }

      v104 = v262;
      v86 = v261;
      if (v262 != v261)
      {
        do
        {
          v106 = *--v104;
          v105 = v106;
          *v104 = 0;
          if (v106)
          {
            MEMORY[0x259C63150](v105, 0x1000C8077774924);
          }
        }

        while (v104 != v84);
        goto LABEL_199;
      }

      goto LABEL_200;
    }

    v146 = v222;
    *__src = 0;
    {
      goto LABEL_413;
    }

    {
      goto LABEL_413;
    }

LABEL_204:
    if ((v36 & 2) != 0)
    {
      v221 = 0;
      {
        goto LABEL_413;
      }

      v131 = v221;
      if (v221 == v237)
      {
        v132 = v212;
        if (v221 >= 1)
        {
          goto LABEL_278;
        }
      }

      else
      {
        v132 = v212;
        if (v221 >= v237)
        {
          if (v221 > v238)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v221 != v237)
          {
            bzero((v236 + 8 * v237), 8 * (v221 - v237));
          }
        }

        v237 = v131;
        if (v131 >= 1)
        {
LABEL_278:
          v136 = 0;
          v137 = v131 & 0x7FFFFFFF;
          do
          {
            v138 = v236;
            *__src = 0;
            {
              goto LABEL_413;
            }

            *(v138 + 8 * v136) = v139;
            if (!v139)
            {
              goto LABEL_413;
            }
          }

          while (v137 != ++v136);
        }
      }
    }

    v7 = v212;
    if ((v36 & 4) != 0)
    {
      v219[0] = 0;
      {
        goto LABEL_413;
      }

      v107 = v219[0];
      if (v219[0] != v233)
      {
        if (v219[0] >= v233)
        {
          if (v219[0] > HIDWORD(v233))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v219[0] != v233)
          {
            bzero(&v232[v233], 8 * (v219[0] - v233));
          }
        }

        LODWORD(v233) = v107;
      }

      if (v107 >= 1)
      {
        v108 = 0;
        v109 = v107 & 0x7FFFFFFF;
        while (1)
        {
          v110 = a1[86];
          v228 = 0;
          {
            break;
          }

          v111 = v228;
          v46 = *(v9 + 3);
          v113 = *(v110 - 7);
          v112 = *(v110 - 6);
          v221 = "value";
          *&v222 = 5;
          *v214 = v228;
          if (v228 >= (v112 - v113) >> 3)
          {
            mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
            if (*__src)
            {
              mlir::InFlightDiagnostic::report(__src);
            }

            if (v266 == 1)
            {
              if (v265 != &v266)
              {
                free(v265);
              }

              v182 = v263;
              if (v263)
              {
                v183 = v264;
                v184 = v263;
                if (v264 != v263)
                {
                  do
                  {
                    v183 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v183 - 1);
                  }

                  while (v183 != v182);
                  v184 = v263;
                }

                v264 = v182;
                operator delete(v184);
              }

              v185 = v261;
              if (v261)
              {
                v186 = v262;
                v187 = v261;
                if (v262 != v261)
                {
                  do
                  {
                    v189 = *--v186;
                    v188 = v189;
                    *v186 = 0;
                    if (v189)
                    {
                      MEMORY[0x259C63150](v188, 0x1000C8077774924);
                    }
                  }

                  while (v186 != v185);
                  v187 = v261;
                }

                v262 = v185;
                operator delete(v187);
              }

              if (v254 != &v255)
              {
                free(v254);
              }
            }

            break;
          }

          v114 = *(v113 + 8 * v228);
          if (v114)
          {
            v232[v108] = v114;
          }

          else
          {
            ForwardRef = mlir::BytecodeReader::Impl::createForwardRef(a1, v46);
            *(v113 + 8 * v111) = ForwardRef;
            v232[v108] = ForwardRef;
            if (!ForwardRef)
            {
              goto LABEL_413;
            }
          }

          if (v109 == ++v108)
          {
            goto LABEL_223;
          }
        }

        v232[v108] = 0;
        goto LABEL_413;
      }
    }

LABEL_223:
    if ((v36 & 8) != 0)
    {
      v219[0] = 0;
      {
        goto LABEL_413;
      }

      v116 = v219[0];
      if (v219[0] != v249)
      {
        if (v219[0] >= v249)
        {
          if (v219[0] > v250)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v219[0] != v249)
          {
            bzero((v248 + 8 * v249), 8 * (v219[0] - v249));
          }
        }

        v249 = v116;
      }

      if (v116 >= 1)
      {
        v117 = 0;
        v118 = v116 & 0x7FFFFFFF;
        do
        {
          v119 = v248;
          v228 = 0;
          {
            goto LABEL_413;
          }

          v46 = *(v9 + 3);
          v120 = *(a3 + 40);
          v121 = *(a3 + 48);
          v221 = "successor";
          *&v222 = 9;
          *v214 = v228;
          if (v228 < v121)
          {
            *(v119 + 8 * v117) = *(v120 + 8 * v228);
          }

          else
          {
            v122 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
            if (*__src)
            {
              mlir::InFlightDiagnostic::report(__src);
            }

            if (v266 == 1)
            {
              if (v265 != &v266)
              {
                free(v265);
              }

              v123 = v263;
              if (v263)
              {
                v124 = v264;
                v125 = v263;
                if (v264 != v263)
                {
                  do
                  {
                    v124 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v124 - 1);
                  }

                  while (v124 != v123);
                  v125 = v263;
                }

                v264 = v123;
                operator delete(v125);
              }

              v126 = v261;
              if (v261)
              {
                v127 = v262;
                v128 = v261;
                if (v262 != v261)
                {
                  do
                  {
                    v130 = *--v127;
                    v129 = v130;
                    *v127 = 0;
                    if (v130)
                    {
                      MEMORY[0x259C63150](v129, 0x1000C8077774924);
                    }
                  }

                  while (v127 != v126);
                  v128 = v261;
                }

                v262 = v126;
                operator delete(v128);
              }

              if (v254 != &v255)
              {
                free(v254);
              }
            }

            if (!v122)
            {
              goto LABEL_413;
            }
          }
        }

        while (++v117 != v118);
      }
    }

    if (*v211 > 2uLL)
    {
      v133 = (v36 >> 5) & 1;
    }

    else
    {
      v133 = 0;
    }

    if (v133 == 1)
    {
      mlir::BytecodeReader::Impl::parseUseListOrderForRange(__src, v9, v237);
    }

    v213 &= 0xFFFFFFFFFFFFFF00;
    if ((v36 & 0x10) != 0)
    {
      *__src = 0;
      {
        goto LABEL_413;
      }

      v134 = __src[0];
      v135 = *__src >> 1;
      llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::reserve(&v251, *__src >> 1);
      v11 = v207;
      if (v135 >= 1)
      {
        operator new();
      }
    }

    else
    {
      v134 = 0;
      v11 = v207;
    }

    v140 = mlir::Operation::create(v231, v46);
    v141 = *(a3 + 104);
    if (v141)
    {
      v142 = v141 - 8;
    }

    else
    {
      v142 = 0;
    }

    llvm::ilist_traits<mlir::Operation>::addNodeToList(v142 + 32, v140);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v140);
    v144 = *(v142 + 32);
    *NodePtr = v144;
    NodePtr[1] = v142 + 32;
    *(v144 + 8) = NodePtr;
    *(v142 + 32) = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v140);
    if (*(a3 + 32))
    {
      v145 = v140[9];
      if (v145)
      {
        mlir::ValueRange::ValueRange(__src, (v140 - 4), v145);
        if ((mlir::BytecodeReader::Impl::defineValues(a1, *(v9 + 3), *__src, *&__src[8]) & 1) == 0)
        {
          goto LABEL_413;
        }
      }
    }

    mlir::OperationState::~OperationState(v231);
    v147 = v140[11];
    if ((v147 & 0x7FFFFF) != 0)
    {
      break;
    }

    v5 = a2;
    v167 = *(a3 + 112);
    *(a3 + 112) = v167 - 1;
    if (!v167)
    {
      goto LABEL_352;
    }
  }

  *__src = ((&v140[4 * ((v147 >> 23) & 1) + 17] + ((v147 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v140[10];
  *&__src[8] = *__src + 24 * (v147 & 0x7FFFFF);
  *&__src[16] = v9;
  *&v254 = 0;
  DWORD2(v254) = 0;
  v255 = v257;
  v256 = 0x600000000;
  v259 = 0uLL;
  v260 = v134 & 1;
  if (*v211 < 2uLL || (v134 & 1) == 0)
  {
    v148 = a2[1];
    if (v148 >= a2[2])
    {
      a2[1] = std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__emplace_back_slow_path<mlir::BytecodeReader::Impl::RegionReadState>(a2, __src);
      if ((v134 & 1) == 0)
      {
LABEL_339:
        v152 = 1;
        goto LABEL_340;
      }
    }

    else
    {
      v149 = *__src;
      *(v148 + 16) = *&__src[16];
      *v148 = v149;
      v150 = v254;
      *&v254 = 0;
      *(v148 + 24) = v150;
      *(v148 + 32) = DWORD2(v254);
      *(v148 + 40) = v148 + 56;
      *(v148 + 48) = 0x600000000;
      if (v148 != __src)
      {
        v151 = v256;
        if (v256)
        {
          if (v255 == v257)
          {
            if (v256 >= 7)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            memcpy((v148 + 56), v255, 8 * v256);
            *(v148 + 48) = v151;
          }

          else
          {
            *(v148 + 40) = v255;
            *(v148 + 48) = v151;
            *(v148 + 52) = HIDWORD(v256);
            v255 = v257;
            HIDWORD(v256) = 0;
          }

          LODWORD(v256) = 0;
        }
      }

      v163 = v259;
      *(v148 + 120) = v260;
      *(v148 + 104) = v163;
      a2[1] = v148 + 128;
      if ((v134 & 1) == 0)
      {
        goto LABEL_339;
      }
    }

    v164 = a1[86];
    if (v164 >= a1[87])
    {
      v165 = std::vector<mlir::BytecodeReader::Impl::ValueScope>::__emplace_back_slow_path<>(a1 + 85);
    }

    else
    {
      *(v164 + 1) = 0u;
      *(v164 + 2) = 0u;
      v164[6] = 0;
      *v164 = 0u;
      v164[3] = v164 + 5;
      v165 = (v164 + 7);
      *(v164 + 9) = 4;
    }

    a1[86] = v165;
    goto LABEL_339;
  }

  LOBYTE(v228) = 0;
  *v214 = 0;
  *&v214[8] = 0;
  {
    if (v228 == 4)
    {
      operator new();
    }

    v153 = a1[1];
    v221 = "expected IR section for region";
    WORD4(v223) = 259;
    mlir::emitError(v153, &v221, v231);
    v152 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v231);
    if (v231[0])
    {
      mlir::InFlightDiagnostic::report(v231);
    }

    if (v248 == 1)
    {
      if (v246 != &v248)
      {
        free(v246);
      }

      v154 = __p;
      if (__p)
      {
        v155 = v245;
        v156 = __p;
        if (v245 != __p)
        {
          do
          {
            v155 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v155 - 1);
          }

          while (v155 != v154);
          v156 = __p;
        }

        v245 = v154;
        operator delete(v156);
      }

      v157 = v242;
      if (v242)
      {
        v158 = v243;
        v159 = v242;
        if (v243 != v242)
        {
          do
          {
            v161 = *--v158;
            v160 = v161;
            *v158 = 0;
            if (v161)
            {
              MEMORY[0x259C63150](v160, 0x1000C8077774924);
            }
          }

          while (v158 != v157);
          v159 = v242;
        }

        v243 = v157;
        operator delete(v159);
      }

      if (v233 != v235)
      {
        free(v233);
      }
    }
  }

  else
  {
    v152 = 0;
  }

LABEL_340:
  if (v255 != v257)
  {
    free(v255);
  }

  v166 = v254;
  *&v254 = 0;
  if (v166)
  {
    MEMORY[0x259C63180](v166, 0x1070C401CF53446);
  }

  return v152;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[54]>(uint64_t a1, uint64_t a2, const char *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  mlir::emitError(a2, v17);
  if (v17[0])
  {
    LODWORD(v15) = 3;
    *(&v15 + 1) = a3;
    v16 = strlen(a3);
    if (v19 >= v20)
    {
      if (v18 > &v15 || v18 + 24 * v19 <= &v15)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v18 + 24 * v19;
    v6 = v15;
    *(v5 + 2) = v16;
    *v5 = v6;
    ++v19;
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, v17);
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v25;
      v9 = __p;
      if (v25 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v25 = v7;
      operator delete(v9);
    }

    v10 = v22;
    if (v22)
    {
      v11 = v23;
      v12 = v22;
      if (v23 != v22)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v22;
      }

      v23 = v10;
      operator delete(v12);
    }

    if (v18 != &v21)
    {
      free(v18);
    }
  }
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::splice(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a4 != a5 && a2 != a5)
  {
    result = llvm::ilist_traits<mlir::Operation>::transferNodesFromList(result, a3, a4, a5);
    v8 = *a5;
    v9 = *a4;
    *(v9 + 8) = a5;
    *a5 = v9;
    v10 = *a2;
    *(v8 + 8) = a2;
    *a4 = v10;
    *(v10 + 8) = a4;
    *a2 = v8;
  }

  return result;
}

uint64_t mlir::BytecodeReader::Impl::parseRegion(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v7 = 0;
  {
    return 0;
  }

  v4 = v7;
  if (v7)
  {
    v6 = 0;
    {
      *(a2 + 32) = v6;
      *(a2 + 48) = 0;
      if (v4 > *(a2 + 52))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      operator new();
    }

    return 0;
  }

  return 1;
}

uint64_t mlir::BytecodeReader::Impl::createForwardRef(mlir::BytecodeReader::Impl *this, const mlir::OperationState *a2)
{
  v3 = this + 832;
  v4 = *(this + 104);
  v5 = (this + 760);
  if (v4 == v3)
  {
    v7 = mlir::Operation::create((this + 872), a2);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(this + 760, v7);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v7);
    v9 = *(this + 95);
    *NodePtr = v9;
    NodePtr[1] = v5;
    *(v9 + 8) = NodePtr;
    *(this + 95) = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v7);
  }

  else
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v4);
    mlir::Operation::moveBefore(ValuePtr, (this + 728), this + 95);
  }

  return llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*v5) - 16;
}

void mlir::BytecodeReader::~BytecodeReader(llvm ***this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::BytecodeReader::Impl::~Impl(v2);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::BytecodeReader::Impl::~Impl(v2);
  }
}

void mlir::BytecodeReader::BytecodeReader(void *a1, uint64_t a2, mlir::StringAttr **a3)
{
  *a1 = 0;
  mlir::FileLineColLoc::get(*a3, *(a2 + 16), *(a2 + 24), 0, 0);
  operator new();
}

{
  *a1 = 0;
  mlir::FileLineColLoc::get(*a3, *(a2 + 16), *(a2 + 24), 0, 0);
  operator new();
}

BOOL mlir::BytecodeReader::isMaterializable(mlir::BytecodeReader *this, Operation *a2)
{
  v2 = *(*this + 64);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*this + 48);
  v4 = v2 - 1;
  v5 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v3 + 16 * v5);
  if (v6 == a2)
  {
    return 1;
  }

  v8 = 1;
  do
  {
    result = v6 != -4096;
    if (v6 == -4096)
    {
      break;
    }

    v9 = v5 + v8++;
    v5 = v9 & v4;
    v6 = *(v3 + 16 * v5);
    result = 1;
  }

  while (v6 != a2);
  return result;
}

uint64_t mlir::BytecodeReader::materialize(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  *(v4 + 72) = a3;
  *(v4 + 80) = a4;
  v5 = *(v4 + 48);
  v6 = *(v4 + 64);
  if (v6)
  {
    v7 = (v6 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v8 = *(v5 + 16 * v7);
    if (v8 == a2)
    {
LABEL_3:
      result = mlir::BytecodeReader::Impl::materialize(v4, (v5 + 16 * v7));
      *(v4 + 72) = 0;
      return result;
    }

    v10 = 1;
    while (v8 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & (v6 - 1);
      v8 = *(v5 + 16 * v7);
      if (v8 == a2)
      {
        goto LABEL_3;
      }
    }
  }

  result = mlir::BytecodeReader::Impl::materialize(v4, (v5 + 16 * v6));
  *(v4 + 72) = 0;
  return result;
}

uint64_t mlir::BytecodeReader::Impl::finalize(int32x2_t *a1, unsigned int (*a2)(uint64_t, mlir::Operation *), uint64_t a3)
{
  if (!*&a1[5])
  {
    return 1;
  }

  while (1)
  {
    v6 = *(*&a1[4] + 16);
    if (!a2(a3, v6))
    {
      mlir::Operation::dropAllReferences(v6);
      mlir::Operation::erase(v6);
      v12 = a1[4];
      v11 = a1[5];
      v14 = *v12;
      v13 = v12[1];
      *(v14 + 8) = v13;
      *v13 = v14;
      a1[5] = (*&v11 - 1);
      v15 = v12[8];
      if (v15 != v12 + 10)
      {
        free(v15);
      }

      v16 = v12[6];
      v12[6] = 0;
      if (v16)
      {
        MEMORY[0x259C63180](v16, 0x1070C401CF53446);
      }

      operator delete(v12);
      v17 = a1[8].i32[0];
      if (v17)
      {
        v18 = a1[6];
        v19 = v17 - 1;
        v20 = (v17 - 1) & ((v6 >> 4) ^ (v6 >> 9));
        v21 = *(*&v18 + 16 * v20);
        if (v6 == v21)
        {
LABEL_16:
          *(*&v18 + 16 * v20) = -8192;
          a1[7] = vadd_s32(a1[7], 0x1FFFFFFFFLL);
        }

        else
        {
          v24 = 1;
          while (v21 != -4096)
          {
            v25 = v20 + v24++;
            v20 = v25 & v19;
            v21 = *(*&v18 + 16 * v20);
            if (v6 == v21)
            {
              goto LABEL_16;
            }
          }
        }
      }

      goto LABEL_17;
    }

    v7 = a1[6];
    v8 = a1[8].u32[0];
    if (!v8)
    {
      goto LABEL_3;
    }

    v9 = (v8 - 1) & ((v6 >> 4) ^ (v6 >> 9));
    v10 = *(*&v7 + 16 * v9);
    if (v10 == v6)
    {
      break;
    }

    v22 = 1;
    while (v10 != -4096)
    {
      v23 = v9 + v22++;
      v9 = v23 & (v8 - 1);
      v10 = *(*&v7 + 16 * v9);
      if (v10 == v6)
      {
        goto LABEL_8;
      }
    }

LABEL_3:
    if ((mlir::BytecodeReader::Impl::materialize(a1, (*&v7 + 16 * v8)) & 1) == 0)
    {
      return 0;
    }

LABEL_17:
    if (!*&a1[5])
    {
      return 1;
    }
  }

LABEL_8:
  if (mlir::BytecodeReader::Impl::materialize(a1, (*&v7 + 16 * v9)))
  {
    goto LABEL_17;
  }

  return 0;
}

BOOL mlir::readBytecodeFile(_OWORD *a1, uint64_t a2, mlir::StringAttr **a3)
{
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v7 = 0;
  v8 = 0;
  result = readBytecodeFileImpl(v9, a2, a3, &v7);
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

BOOL readBytecodeFileImpl(uint64_t a1, uint64_t a2, mlir::StringAttr **a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = mlir::FileLineColLoc::get(*a3, *(a1 + 16), *(a1 + 24), 0, 0);
  if (*(a1 + 8) >= 4uLL && **a1 == 1391414349)
  {
    v18 = *(a1 + 16);
    v21[0] = *a1;
    v21[1] = v18;
    mlir::BytecodeReader::Impl::Impl(v23, v8, a3, 0, v21, a4);
    mlir::BytecodeReader::Impl::read(v23, a2, 0, v19);
    mlir::BytecodeReader::Impl::~Impl(v23);
  }

  *&v21[0] = "input buffer is not an MLIR bytecode file";
  v22 = 259;
  mlir::emitError(v8, v21, v23);
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v29;
      v12 = __p;
      if (v29 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v29 = v10;
      operator delete(v12);
    }

    v13 = v26;
    if (v26)
    {
      v14 = v27;
      v15 = v26;
      if (v27 != v26)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v26;
      }

      v27 = v13;
      operator delete(v15);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v9;
}

uint64_t mlir::Diagnostic::append<char const(&)[20],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(uint64_t a1, char *__s, uint64_t *a3, char *a4, uint64_t *a5, char *a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v15 = *(a1 + 16);
  a1 += 16;
  v14 = v15;
  LODWORD(v26) = 3;
  *(&v26 + 1) = __s;
  v27 = v12;
  v16 = *(a1 + 8);
  if (v16 >= *(a1 + 12))
  {
    if (v14 > &v26 || v14 + 24 * v16 <= &v26)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = v14 + 24 * *(v13 + 24);
  v18 = v26;
  *(v17 + 16) = v27;
  *v17 = v18;
  v19 = *(v13 + 28);
  v20 = *(v13 + 24) + 1;
  *(v13 + 24) = v20;
  v21 = *a3;
  LODWORD(v26) = 5;
  *(&v26 + 1) = v21;
  v22 = *(v13 + 16);
  if (v20 >= v19)
  {
    if (v22 > &v26 || v22 + 24 * v20 <= &v26)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v23 = v22 + 24 * *(v13 + 24);
  v24 = v26;
  *(v23 + 16) = v27;
  *v23 = v24;
  ++*(v13 + 24);
  return mlir::Diagnostic::append<char const(&)[18],unsigned long,char const(&)[8]>(v13, a4, a5, a6);
}

uint64_t mlir::Diagnostic::append<char const(&)[18],unsigned long,char const(&)[8]>(uint64_t a1, char *__s, uint64_t *a3, char *a4)
{
  v8 = strlen(__s);
  v9 = *(a1 + 16);
  LODWORD(v14) = 3;
  *(&v14 + 1) = __s;
  v15 = v8;
  v10 = *(a1 + 24);
  if (v10 >= *(a1 + 28))
  {
    if (v9 > &v14 || v9 + 24 * v10 <= &v14)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = v9 + 24 * *(a1 + 24);
  v12 = v14;
  *(v11 + 16) = v15;
  *v11 = v12;
  ++*(a1 + 24);
  return mlir::Diagnostic::append<unsigned long,char const(&)[8]>(a1, a3, a4);
}

uint64_t mlir::Diagnostic::append<unsigned long,char const(&)[8]>(uint64_t a1, uint64_t *a2, char *__s)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  LODWORD(v14) = 5;
  *(&v14 + 1) = v5;
  v6 = *(a1 + 24);
  if (v6 >= *(a1 + 28))
  {
    if (v4 > &v14 || v4 + 24 * v6 <= &v14)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v4 + 24 * *(a1 + 24);
  v8 = v14;
  *(v7 + 16) = v15;
  *v7 = v8;
  v9 = *(a1 + 24) + 1;
  *(a1 + 24) = v9;
  LODWORD(v14) = 3;
  *(&v14 + 1) = __s;
  v15 = strlen(__s);
  v10 = *(a1 + 16);
  if (v9 >= *(a1 + 28))
  {
    if (v10 > &v14 || v10 + 24 * v9 <= &v14)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = v10 + 24 * *(a1 + 24);
  v12 = v14;
  *(v11 + 16) = v15;
  *v11 = v12;
  ++*(a1 + 24);
  return a1;
}

uint64_t anonymous namespace::EncodingReader::parseByte<unsigned char>(void *a1, _BYTE *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1[2];
  if (v2 == (*a1 + a1[1]))
  {
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
    if (v13[0])
    {
      mlir::InFlightDiagnostic::report(v13);
    }

    if (v21 == 1)
    {
      if (v20 != &v21)
      {
        free(v20);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v19;
        v6 = __p;
        if (v19 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v19 = v4;
        operator delete(v6);
      }

      v7 = v16;
      if (v16)
      {
        v8 = v17;
        v9 = v16;
        if (v17 != v16)
        {
          do
          {
            v11 = *--v8;
            v10 = v11;
            *v8 = 0;
            if (v11)
            {
              MEMORY[0x259C63150](v10, 0x1000C8077774924);
            }
          }

          while (v8 != v7);
          v9 = v16;
        }

        v17 = v7;
        operator delete(v9);
      }

      if (v14 != &v15)
      {
        free(v14);
      }
    }
  }

  else
  {
    a1[2] = v2 + 1;
    *a2 = *v2;
    return 1;
  }

  return v3;
}

BOOL anonymous namespace::EncodingReader::alignTo(_anonymous_namespace_::EncodingReader *this, int a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = (a2 - 1);
  if ((a2 ^ v3) > v3)
  {
    do
    {
      if ((v3 & *(this + 2)) == 0)
      {
        return 1;
      }

      v53 = 0;
      {
        return 0;
      }

      v4 = v53;
    }

    while (v53 == 203);
    if (v53)
    {
      v5 = 16;
      do
      {
        v66[v5-- - 8] = llvm::hexdigit(unsigned int,BOOL)::LUT[v4 & 0xF];
        v6 = v4 > 0xF;
        v4 >>= 4;
      }

      while (v6);
      v7 = v5 + 1;
      v8 = 16 - v5;
      if ((16 - v5) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }
    }

    else
    {
      v66[8] = 48;
      v7 = 16;
      v8 = 1;
    }

    if (v8 > 0x16)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v8;
    if (v7 != 17)
    {
      memcpy(&__dst, &v66[v7 - 8], v8);
    }

    __dst.__r_.__value_.__s.__data_[v8] = 0;
    v28 = std::string::insert(&__dst, 0, "expected alignment byte (0xCB), but got: '0x");
    v29 = v28->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = *&v28->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v50, "'");
    v31 = v30->__r_.__value_.__r.__words[2];
    *v51 = *&v30->__r_.__value_.__l.__data_;
    v52 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    mlir::emitError(*(this + 3), &v65);
    if (v65)
    {
      v57 = 260;
      *&v54 = v51;
      mlir::Diagnostic::operator<<(v66, &v54);
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v54, &v65);
    if (v65)
    {
      mlir::InFlightDiagnostic::report(&v65);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v74;
        v34 = __p;
        if (v74 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v74 = v32;
        operator delete(v34);
      }

      v35 = v71;
      if (v71)
      {
        v36 = v72;
        v37 = v71;
        if (v72 != v71)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              MEMORY[0x259C63150](v38, 0x1000C8077774924);
            }
          }

          while (v36 != v35);
          v37 = v71;
        }

        v72 = v35;
        operator delete(v37);
      }

      if (v67 != v70)
      {
        free(v67);
      }
    }

    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v54);
    if (v54)
    {
      mlir::InFlightDiagnostic::report(&v54);
    }

    if (v64 == 1)
    {
      if (v63 != &v64)
      {
        free(v63);
      }

      v40 = v61;
      if (v61)
      {
        v41 = v62;
        v42 = v61;
        if (v62 != v61)
        {
          do
          {
            v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
          }

          while (v41 != v40);
          v42 = v61;
        }

        v62 = v40;
        operator delete(v42);
      }

      v43 = v59;
      if (v59)
      {
        v44 = v60;
        v45 = v59;
        if (v60 != v59)
        {
          do
          {
            v47 = *--v44;
            v46 = v47;
            *v44 = 0;
            if (v47)
            {
              MEMORY[0x259C63150](v46, 0x1000C8077774924);
            }
          }

          while (v44 != v43);
          v45 = v59;
        }

        v60 = v43;
        operator delete(v45);
      }

      if (v56 != v58)
      {
        free(v56);
      }
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51[0]);
      if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_105:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v19;
        }

LABEL_109:
        operator delete(__dst.__r_.__value_.__l.__data_);
        return v19;
      }
    }

    else if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    operator delete(v50.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v19;
    }

    goto LABEL_109;
  }

  mlir::emitError(*(this + 3), &v65);
  if (v65)
  {
    LODWORD(v54) = 3;
    *(&v54 + 1) = "expected alignment to be a power-of-two";
    v55 = 39;
    if (v68 >= v69)
    {
      if (v67 > &v54 || v67 + 24 * v68 <= &v54)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v67 + 24 * v68;
    v10 = v54;
    *(v9 + 2) = v55;
    *v9 = v10;
    ++v68;
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(&v54, &v65);
  if (v65)
  {
    mlir::InFlightDiagnostic::report(&v65);
  }

  if (v76 == 1)
  {
    if (v75 != &v76)
    {
      free(v75);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v74;
      v13 = __p;
      if (v74 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v74 = v11;
      operator delete(v13);
    }

    v14 = v71;
    if (v71)
    {
      v15 = v72;
      v16 = v71;
      if (v72 != v71)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            MEMORY[0x259C63150](v17, 0x1000C8077774924);
          }
        }

        while (v15 != v14);
        v16 = v71;
      }

      v72 = v14;
      operator delete(v16);
    }

    if (v67 != v70)
    {
      free(v67);
    }
  }

  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v54);
  if (v54)
  {
    mlir::InFlightDiagnostic::report(&v54);
  }

  if (v64 == 1)
  {
    if (v63 != &v64)
    {
      free(v63);
    }

    v20 = v61;
    if (v61)
    {
      v21 = v62;
      v22 = v61;
      if (v62 != v61)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = v61;
      }

      v62 = v20;
      operator delete(v22);
    }

    v23 = v59;
    if (v59)
    {
      v24 = v60;
      v25 = v59;
      if (v60 != v59)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v24 != v23);
        v25 = v59;
      }

      v60 = v23;
      operator delete(v25);
    }

    if (v56 != v58)
    {
      free(v56);
    }
  }

  return v19;
}

uint64_t anonymous namespace::EncodingReader::parseBytes(void *a1, unint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v3 = a1[2];
  if (*a1 + a1[1] - v3 >= a2)
  {
    *a3 = v3;
    a3[1] = a2;
    a1[2] += a2;
    return 1;
  }

  else
  {
    v14 = *a1 + a1[1] - v3;
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
    if (v16[0])
    {
      mlir::InFlightDiagnostic::report(v16);
    }

    if (v24 == 1)
    {
      if (v23 != &v24)
      {
        free(v23);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v22;
        v7 = __p;
        if (v22 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v22 = v5;
        operator delete(v7);
      }

      v8 = v19;
      if (v19)
      {
        v9 = v20;
        v10 = v19;
        if (v20 != v19)
        {
          do
          {
            v12 = *--v9;
            v11 = v12;
            *v9 = 0;
            if (v12)
            {
              MEMORY[0x259C63150](v11, 0x1000C8077774924);
            }
          }

          while (v9 != v8);
          v10 = v19;
        }

        v20 = v8;
        operator delete(v10);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }
  }

  return v4;
}

__n128 mlir::Diagnostic::append<char const(&)[21],unsigned int>(uint64_t a1, char *__s, unsigned int *a3)
{
  v6 = strlen(__s);
  v7 = a1;
  v9 = *(a1 + 16);
  a1 += 16;
  v8 = v9;
  v19.n128_u32[0] = 3;
  v19.n128_u64[1] = __s;
  v20 = v6;
  v10 = *(a1 + 8);
  if (v10 >= *(a1 + 12))
  {
    if (v8 > &v19 || v8 + 24 * v10 <= &v19)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = (v8 + 24 * *(v7 + 24));
  v12 = v19;
  v11[1].n128_u64[0] = v20;
  *v11 = v12;
  v13 = *(v7 + 28);
  v14 = *(v7 + 24) + 1;
  *(v7 + 24) = v14;
  v15 = *a3;
  v19.n128_u32[0] = 5;
  v19.n128_u64[1] = v15;
  v16 = *(v7 + 16);
  if (v14 >= v13)
  {
    if (v16 > &v19 || v16 + 24 * v14 <= &v19)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = (v16 + 24 * *(v7 + 24));
  result = v19;
  v17[1].n128_u64[0] = v20;
  *v17 = result;
  ++*(v7 + 24);
  return result;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[21],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  mlir::emitError(a2, &v15);
  if (v15)
  {
    mlir::Diagnostic::append<char const(&)[20],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(&v16, "attempting to parse ", a3, " bytes when only ", a4, " remain");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v15);
  if (v15)
  {
    mlir::InFlightDiagnostic::report(&v15);
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }
}

uint64_t _ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir9AttributeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (*v5)++;
  v7 = *v4;
  v24 = 0;
  {
    return 0;
  }

  v8 = v7 + 40 * v6;
  v9 = v24;
  *(v8 + 16) = v24 & 1;
  v10 = v9 >> 1;
  v24 = v10;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *v11 + v10;
  if (v13 <= v12[1])
  {
    *(v8 + 24) = *v12 + *v11;
    *(v8 + 32) = v10;
    *(v8 + 8) = a2;
    *v11 = v13;
    return 1;
  }

  else
  {
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v31;
        v17 = __p;
        if (v31 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v31 = v15;
        operator delete(v17);
      }

      v18 = v28;
      if (v28)
      {
        v19 = v29;
        v20 = v28;
        if (v29 != v28)
        {
          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              MEMORY[0x259C63150](v21, 0x1000C8077774924);
            }
          }

          while (v19 != v18);
          v20 = v28;
        }

        v29 = v18;
        operator delete(v20);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }

  return v14;
}

double mlir::Diagnostic::append<char const(&)[18],unsigned long long &,char const(&)[36],unsigned long long &>(uint64_t a1, char *__s, uint64_t *a3, char *a4, unint64_t *a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v13 = *(a1 + 16);
  a1 += 16;
  v12 = v13;
  LODWORD(v24) = 3;
  *(&v24 + 1) = __s;
  v25 = v10;
  v14 = *(a1 + 8);
  if (v14 >= *(a1 + 12))
  {
    if (v12 > &v24 || v12 + 24 * v14 <= &v24)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v15 = v12 + 24 * *(v11 + 24);
  v16 = v24;
  *(v15 + 16) = v25;
  *v15 = v16;
  v17 = *(v11 + 28);
  v18 = *(v11 + 24) + 1;
  *(v11 + 24) = v18;
  v19 = *a3;
  LODWORD(v24) = 5;
  *(&v24 + 1) = v19;
  v20 = *(v11 + 16);
  if (v18 >= v17)
  {
    if (v20 > &v24 || v20 + 24 * v18 <= &v24)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v21 = v20 + 24 * *(v11 + 24);
  v22 = v24;
  *(v21 + 16) = v25;
  *v21 = v22;
  ++*(v11 + 24);
  *&result = mlir::Diagnostic::append<char const(&)[36],unsigned long long &>(v11, a4, a5).n128_u64[0];
  return result;
}

__n128 mlir::Diagnostic::append<char const(&)[36],unsigned long long &>(uint64_t a1, char *__s, unint64_t *a3)
{
  v6 = strlen(__s);
  v7 = a1;
  v9 = *(a1 + 16);
  a1 += 16;
  v8 = v9;
  v19.n128_u32[0] = 3;
  v19.n128_u64[1] = __s;
  v20 = v6;
  v10 = *(a1 + 8);
  if (v10 >= *(a1 + 12))
  {
    if (v8 > &v19 || v8 + 24 * v10 <= &v19)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = (v8 + 24 * *(v7 + 24));
  v12 = v19;
  v11[1].n128_u64[0] = v20;
  *v11 = v12;
  v13 = *(v7 + 28);
  v14 = *(v7 + 24) + 1;
  *(v7 + 24) = v14;
  v15 = *a3;
  v19.n128_u32[0] = 5;
  v19.n128_u64[1] = v15;
  v16 = *(v7 + 16);
  if (v14 >= v13)
  {
    if (v16 > &v19 || v16 + 24 * v14 <= &v19)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = (v16 + 24 * *(v7 + 24));
  result = v19;
  v17[1].n128_u64[0] = v20;
  *v17 = result;
  ++*(v7 + 24);
  return result;
}

BOOL anonymous namespace::EncodingReader::parseBytes(_anonymous_namespace_::EncodingReader *this, size_t __n, unsigned __int8 *__dst)
{
  v27 = *MEMORY[0x277D85DE8];
  v17 = __n;
  v5 = *(this + 2);
  if (*this + *(this + 1) - v5 >= __n)
  {
    memcpy(__dst, v5, __n);
    *(this + 2) += __n;
    return 1;
  }

  else
  {
    v16 = *this + *(this + 1) - v5;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              MEMORY[0x259C63150](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t anonymous namespace::EncodingReader::parseMultiByteVarInt(_anonymous_namespace_::EncodingReader *this, unint64_t *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v3 = __clz(__rbit32(*a2));
  v5[0] = *a2;
  {
    return 0;
  }

  *a2 = v5[0] >> (v3 + 1);
  return 1;
}

uint64_t resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v18[0] = a6;
  v18[1] = a7;
  v17 = a4;
  if (a3 <= a4)
  {
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }

    if (v27 == 1)
    {
      if (v26 != &v27)
      {
        free(v26);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v25;
        v10 = __p;
        if (v25 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v25 = v8;
        operator delete(v10);
      }

      v11 = v22;
      if (v22)
      {
        v12 = v23;
        v13 = v22;
        if (v23 != v22)
        {
          do
          {
            v15 = *--v12;
            v14 = v15;
            *v12 = 0;
            if (v15)
            {
              MEMORY[0x259C63150](v14, 0x1000C8077774924);
            }
          }

          while (v12 != v11);
          v13 = v22;
        }

        v23 = v11;
        operator delete(v13);
      }

      if (v20 != &v21)
      {
        free(v20);
      }
    }
  }

  else
  {
    *a5 = *(a2 + 16 * a4);
    return 1;
  }

  return v7;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[9],llvm::StringRef &,char const(&)[9],unsigned long long &>(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  mlir::emitError(a2, &v15);
  if (v15)
  {
    mlir::Diagnostic::append<char const(&)[9],llvm::StringRef &,char const(&)[9],unsigned long long &>(&v16, "invalid ", a3, " index: ", a4);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v15);
  if (v15)
  {
    mlir::InFlightDiagnostic::report(&v15);
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }
}

double mlir::Diagnostic::append<char const(&)[9],llvm::StringRef &,char const(&)[9],unsigned long long &>(uint64_t a1, char *__s, void *a3, char *a4, unint64_t *a5)
{
  v10 = strlen(__s);
  v11 = *(a1 + 16);
  LODWORD(v17) = 3;
  *(&v17 + 1) = __s;
  v18 = v10;
  v12 = *(a1 + 24);
  if (v12 >= *(a1 + 28))
  {
    if (v11 > &v17 || v11 + 24 * v12 <= &v17)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = v11 + 24 * *(a1 + 24);
  v14 = v17;
  *(v13 + 16) = v18;
  *v13 = v14;
  ++*(a1 + 24);
  v19 = 261;
  v15 = a3[1];
  *&v17 = *a3;
  *(&v17 + 1) = v15;
  mlir::Diagnostic::operator<<(a1, &v17);
  *&result = mlir::Diagnostic::append<char const(&)[36],unsigned long long &>(a1, a4, a5).n128_u64[0];
  return result;
}