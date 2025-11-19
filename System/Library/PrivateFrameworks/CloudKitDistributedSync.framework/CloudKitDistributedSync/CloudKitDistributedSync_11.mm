unint64_t sub_24392FB68(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v118 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 6)
  {
    LOBYTE(v15) = 6;
  }

  v16 = *(a1 + 96);
  v116 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBB000000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
  }

  else
  {
    v18 = a1 + 64;
    v19 = *(a1 + 44);
    if (v10 - v19 >= 0x181)
    {
      v20 = *(a1 + 56);
      v21 = *(a1 + 112);
      if (v19 <= 0xFFFFFF9F)
      {
        v82 = v19 + 96;
        do
        {
          v83 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
          v84 = (v83 >> 2) & 0x3FFFFFC0;
          _X19 = v5 + 4 * v84;
          __asm
          {
            PRFM            #0, [X19]
            PRFM            #0, [X19,#0x40]
          }

          _X7 = v6 + v84;
          __asm
          {
            PRFM            #0, [X7]
            PRFM            #0, [X7,#0x20]
          }

          v91 = *(v18 + 4 * (v19 & 7));
          *(v18 + 4 * (v19 & 7)) = v83;
          v92 = (v91 >> 2) & 0x3FFFFFC0;
          v93 = v5 + 4 * v92;
          v94 = (v6 + v92);
          if (((*v94 - 1) & 0x3F) != 0)
          {
            v95 = 0;
          }

          else
          {
            v95 = 63;
          }

          v96 = v95 + ((*v94 - 1) & 0x3F);
          *v94 = v96;
          v94[v96] = v91;
          *(v93 + 4 * v96) = v19++;
        }

        while (v82 != v19);
        v21 = *(a1 + 112);
        v20 = *(a1 + 56);
        v8 = v116;
      }

      v97 = v10 - 32;
      LODWORD(v19) = v10 - 32;
      v98 = a2 + 1 - (v8 + v97);
      if ((v98 + 1) < 8)
      {
        v99 = v98 + 1;
      }

      else
      {
        v99 = 8;
      }

      if (a2 + 1 >= v8 + v97)
      {
        v100 = v99;
      }

      else
      {
        v100 = 0;
      }

      if (v97 < v100 + v97)
      {
        v101 = *(a1 + 96);
        v102 = 56 - *(a1 + 52);
        do
        {
          v103 = ((0xCF1BBCDCBB000000 * *(v8 + v97)) ^ v101) >> v102;
          v104 = (v103 >> 2) & 0x3FFFFFC0;
          _X23 = v21 + 4 * v104;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X20 = v20 + v104;
          __asm
          {
            PRFM            #0, [X20]
            PRFM            #0, [X20,#0x20]
          }

          *(v18 + 4 * (v97++ & 7)) = v103;
          --v100;
        }

        while (v100);
      }
    }

    else
    {
      v20 = *(a1 + 56);
      v21 = *(a1 + 112);
    }

    if (v19 < v10)
    {
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v19 = v19;
      do
      {
        v24 = ((0xCF1BBCDCBB000000 * *(v22 + v19)) ^ *(a1 + 96)) >> v23;
        v25 = (v24 >> 2) & 0x3FFFFFC0;
        _X23 = v21 + 4 * v25;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v25;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x20]
        }

        v35 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v24;
        v36 = (v35 >> 2) & 0x3FFFFFC0;
        v37 = v21 + 4 * v36;
        v38 = (v20 + v36);
        if (((*v38 - 1) & 0x3F) != 0)
        {
          v39 = 0;
        }

        else
        {
          v39 = 63;
        }

        v40 = v39 + ((*v38 - 1) & 0x3F);
        *v38 = v40;
        v38[v40] = v35;
        *(v37 + 4 * v40) = v19++;
      }

      while (v19 < v10);
    }

    *(a1 + 44) = v10;
    v41 = ((0xCF1BBCDCBB000000 * *(v8 + v10 + 8)) ^ v16) >> (56 - v7);
    v42 = (v41 >> 2) & 0x3FFFFFC0;
    _X17 = v5 + 4 * v42;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x40]
    }

    _X14 = v6 + v42;
    __asm
    {
      PRFM            #0, [X14]
      PRFM            #0, [X14,#0x20]
    }

    LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
    *(v18 + 4 * (v10 & 7)) = v41;
  }

  *(a1 + 104) += _X14;
  v48 = (_X14 >> 2) & 0x3FFFFFC0;
  v49 = v5 + 4 * v48;
  v50 = (v6 + v48);
  v51 = *v50;
  v119 = vld4q_s8(v50);
  v52 = vdupq_n_s8(_X14);
  v119.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v119.val[3], v52), vceqq_s8(v119.val[2], v52), 1uLL), vsriq_n_s8(vceqq_s8(v119.val[1], v52), vceqq_s8(v119.val[0], v52), 1uLL), 2uLL);
  v53 = vshrn_n_s16(vsriq_n_s8(v119.val[0], v119.val[0], 4uLL), 4uLL);
  v54 = 0;
  if (v53)
  {
    v55 = 1 << v15;
    v56 = __ROR8__(*&v53, v51);
    do
    {
      v57 = (__clz(__rbit64(v56)) + v51) & 0x3F;
      if (v57)
      {
        v58 = *(v49 + 4 * v57);
        if (v58 < v14)
        {
          break;
        }

        if (v58 >= v12)
        {
          v59 = v8;
        }

        else
        {
          v59 = v9;
        }

        _X1 = v59 + v58;
        __asm { PRFM            #0, [X1] }

        v117[v54++] = v58;
        --v55;
      }

      v56 &= v56 - 1;
    }

    while (v56 && v55);
  }

  if (((v51 - 1) & 0x3F) != 0)
  {
    v62 = 0;
  }

  else
  {
    v62 = 63;
  }

  v63 = v62 + ((v51 - 1) & 0x3F);
  *v50 = v63;
  v50[v63] = _X14;
  v64 = *(a1 + 44);
  *(a1 + 44) = v64 + 1;
  *(v49 + 4 * v63) = v64;
  if (v54)
  {
    v65 = 0;
    v66 = a3 - 7;
    v112 = a3 - 1;
    v113 = a3 - 3;
    v114 = v10 + 3;
    v111 = v8 + 8;
    v67 = 3;
    while (1)
    {
      v68 = v117[v65];
      if (v68 >= v12)
      {
        v73 = (v8 + v68);
        if (*(v8 + v68 + v67 - 3) != *(a2 + v67 - 3))
        {
          goto LABEL_59;
        }

        if (v66 <= a2)
        {
          v76 = a2;
        }

        else
        {
          v74 = *v73;
          if (v74 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v74)) >> 3;
            goto LABEL_57;
          }

          v75 = 0;
          v76 = a2 + 4;
          v73 = (v111 + v68);
          while (v76 < v66)
          {
            v78 = *v73;
            v73 += 4;
            v77 = v78;
            v80 = *v76;
            v76 += 4;
            v79 = v80;
            v75 += 8;
            if (v77 != v80)
            {
              result = v75 + (__clz(__rbit64(v79 ^ v77)) >> 3);
              goto LABEL_57;
            }
          }
        }

        if (v76 < v113 && *v73 == *v76)
        {
          v73 += 2;
          v76 += 2;
        }

        if (v76 < v112 && *v73 == *v76)
        {
          ++v73;
          ++v76;
        }

        if (v76 < a3 && *v73 == *v76)
        {
          v76 = (v76 + 1);
        }

        result = v76 - a2;
      }

      else
      {
        if (*(v9 + v68) != *a2)
        {
          goto LABEL_59;
        }

        v69 = (v8 + v12);
        v70 = a3;
        v71 = sub_243913D40(a2 + 2, (v9 + v68 + 4), a3, (v9 + v12), v69);
        a3 = v70;
        v8 = v116;
        result = v71 + 4;
      }

LABEL_57:
      if (result > v67)
      {
        *a4 = v114 - v68;
        v67 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_62;
        }
      }

LABEL_59:
      ++v65;
      result = v67;
      if (v65 == v54)
      {
        goto LABEL_62;
      }
    }
  }

  result = 3;
LABEL_62:
  v81 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_243930154(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v109 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 4)
  {
    LOBYTE(v15) = 4;
  }

  v16 = *(a1 + 96);
  v107 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
  }

  else
  {
    v18 = a1 + 64;
    v19 = *(a1 + 44);
    if (v10 - v19 >= 0x181)
    {
      v20 = *(a1 + 56);
      v21 = *(a1 + 112);
      if (v19 <= 0xFFFFFF9F)
      {
        v77 = v19 + 96;
        do
        {
          v78 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
          v79 = (v78 >> 4) & 0xFFFFFF0;
          _X19 = v5 + 4 * v79;
          __asm { PRFM            #0, [X19] }

          _X7 = v6 + v79;
          __asm { PRFM            #0, [X7] }

          v84 = *(v18 + 4 * (v19 & 7));
          *(v18 + 4 * (v19 & 7)) = v78;
          v85 = (v84 >> 4) & 0xFFFFFF0;
          v86 = v5 + 4 * v85;
          v87 = (v6 + v85);
          if (((*v87 - 1) & 0xF) != 0)
          {
            v88 = 0;
          }

          else
          {
            v88 = 15;
          }

          v89 = v88 + ((*v87 - 1) & 0xF);
          *v87 = v89;
          v87[v89] = v84;
          *(v86 + 4 * v89) = v19++;
        }

        while (v77 != v19);
        v21 = *(a1 + 112);
        v20 = *(a1 + 56);
        v8 = v107;
      }

      v90 = v10 - 32;
      LODWORD(v19) = v10 - 32;
      v91 = a2 + 1 - (v8 + v90);
      if ((v91 + 1) < 8)
      {
        v92 = v91 + 1;
      }

      else
      {
        v92 = 8;
      }

      if (a2 + 1 >= v8 + v90)
      {
        v93 = v92;
      }

      else
      {
        v93 = 0;
      }

      if (v90 < v93 + v90)
      {
        v94 = *(a1 + 96);
        v95 = 56 - *(a1 + 52);
        do
        {
          v96 = ((0xCF1BBCDCBF9B0000 * *(v8 + v90)) ^ v94) >> v95;
          v97 = (v96 >> 4) & 0xFFFFFF0;
          _X23 = v21 + 4 * v97;
          __asm { PRFM            #0, [X23] }

          _X20 = v20 + v97;
          __asm { PRFM            #0, [X20] }

          *(v18 + 4 * (v90++ & 7)) = v96;
          --v93;
        }

        while (v93);
      }
    }

    else
    {
      v20 = *(a1 + 56);
      v21 = *(a1 + 112);
    }

    if (v19 < v10)
    {
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v19 = v19;
      do
      {
        v24 = ((0xCF1BBCDCBF9B0000 * *(v22 + v19)) ^ *(a1 + 96)) >> v23;
        v25 = (v24 >> 4) & 0xFFFFFF0;
        _X23 = v21 + 4 * v25;
        __asm { PRFM            #0, [X23] }

        _X20 = v20 + v25;
        __asm { PRFM            #0, [X20] }

        v33 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v24;
        v34 = (v33 >> 4) & 0xFFFFFF0;
        v35 = v21 + 4 * v34;
        v36 = (v20 + v34);
        if (((*v36 - 1) & 0xF) != 0)
        {
          v37 = 0;
        }

        else
        {
          v37 = 15;
        }

        v38 = v37 + ((*v36 - 1) & 0xF);
        *v36 = v38;
        v36[v38] = v33;
        *(v35 + 4 * v38) = v19++;
      }

      while (v19 < v10);
    }

    *(a1 + 44) = v10;
    v39 = ((0xCF1BBCDCBF9B0000 * *(v8 + v10 + 8)) ^ v16) >> (56 - v7);
    v40 = (v39 >> 4) & 0xFFFFFF0;
    _X17 = v5 + 4 * v40;
    __asm { PRFM            #0, [X17] }

    _X14 = v6 + v40;
    __asm { PRFM            #0, [X14] }

    LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
    *(v18 + 4 * (v10 & 7)) = v39;
  }

  *(a1 + 104) += _X14;
  v44 = (_X14 >> 4) & 0xFFFFFF0;
  v45 = v5 + 4 * v44;
  v46 = (v6 + v44);
  v47 = 4 * v46->i8[0];
  v48 = *v46;
  v49 = 0;
  v50 = __ROR8__(vshrn_n_s16(vceqq_s8(*v46, vdupq_n_s8(_X14)), 4uLL), v47) & 0x8888888888888888;
  if (v50)
  {
    v51 = 1 << v15;
    do
    {
      v52 = ((__clz(__rbit64(v50)) + (v47 & 0xFC)) >> 2) & 0xF;
      if (v52)
      {
        v53 = *(v45 + 4 * v52);
        if (v53 < v14)
        {
          break;
        }

        if (v53 >= v12)
        {
          v54 = v8;
        }

        else
        {
          v54 = v9;
        }

        _X3 = v54 + v53;
        __asm { PRFM            #0, [X3] }

        v108[v49++] = v53;
        --v51;
      }

      v50 &= v50 - 1;
    }

    while (v50 && v51);
  }

  if (((v48 - 1) & 0xF) != 0)
  {
    v57 = 0;
  }

  else
  {
    v57 = 15;
  }

  v58 = v57 + ((v48 - 1) & 0xF);
  v46->i8[0] = v58;
  v46->i8[v58] = _X14;
  v59 = *(a1 + 44);
  *(a1 + 44) = v59 + 1;
  *(v45 + 4 * v58) = v59;
  if (v49)
  {
    v60 = 0;
    v61 = a3 - 7;
    v103 = a3 - 1;
    v104 = a3 - 3;
    v105 = v10 + 3;
    v102 = v8 + 8;
    v62 = 3;
    while (1)
    {
      v63 = v108[v60];
      if (v63 >= v12)
      {
        v68 = (v8 + v63);
        if (*(v8 + v63 + v62 - 3) != *(a2 + v62 - 3))
        {
          goto LABEL_59;
        }

        if (v61 <= a2)
        {
          v71 = a2;
        }

        else
        {
          v69 = *v68;
          if (v69 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v69)) >> 3;
            goto LABEL_57;
          }

          v70 = 0;
          v71 = a2 + 4;
          v68 = (v102 + v63);
          while (v71 < v61)
          {
            v73 = *v68;
            v68 += 4;
            v72 = v73;
            v75 = *v71;
            v71 += 4;
            v74 = v75;
            v70 += 8;
            if (v72 != v75)
            {
              result = v70 + (__clz(__rbit64(v74 ^ v72)) >> 3);
              goto LABEL_57;
            }
          }
        }

        if (v71 < v104 && *v68 == *v71)
        {
          v68 += 2;
          v71 += 2;
        }

        if (v71 < v103 && *v68 == *v71)
        {
          ++v68;
          ++v71;
        }

        if (v71 < a3 && *v68 == *v71)
        {
          v71 = (v71 + 1);
        }

        result = v71 - a2;
      }

      else
      {
        if (*(v9 + v63) != *a2)
        {
          goto LABEL_59;
        }

        v64 = (v8 + v12);
        v65 = a3;
        v66 = sub_243913D40(a2 + 2, (v9 + v63 + 4), a3, (v9 + v12), v64);
        a3 = v65;
        v8 = v107;
        result = v66 + 4;
      }

LABEL_57:
      if (result > v62)
      {
        *a4 = v105 - v63;
        v62 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_62;
        }
      }

LABEL_59:
      ++v60;
      result = v62;
      if (v60 == v49)
      {
        goto LABEL_62;
      }
    }
  }

  result = 3;
LABEL_62:
  v76 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_243930714(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v114 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 5)
  {
    LOBYTE(v15) = 5;
  }

  v16 = *(a1 + 96);
  v112 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
  }

  else
  {
    v18 = a1 + 64;
    v19 = *(a1 + 44);
    if (v10 - v19 >= 0x181)
    {
      v20 = *(a1 + 56);
      v21 = *(a1 + 112);
      if (v19 <= 0xFFFFFF9F)
      {
        v80 = v19 + 96;
        do
        {
          v81 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
          v82 = (v81 >> 3) & 0x1FFFFFE0;
          _X19 = v5 + 4 * v82;
          __asm
          {
            PRFM            #0, [X19]
            PRFM            #0, [X19,#0x40]
          }

          _X7 = v6 + v82;
          __asm { PRFM            #0, [X7] }

          v88 = *(v18 + 4 * (v19 & 7));
          *(v18 + 4 * (v19 & 7)) = v81;
          v89 = (v88 >> 3) & 0x1FFFFFE0;
          v90 = v5 + 4 * v89;
          v91 = (v6 + v89);
          if (((*v91 - 1) & 0x1F) != 0)
          {
            v92 = 0;
          }

          else
          {
            v92 = 31;
          }

          v93 = v92 + ((*v91 - 1) & 0x1F);
          *v91 = v93;
          v91[v93] = v88;
          *(v90 + 4 * v93) = v19++;
        }

        while (v80 != v19);
        v21 = *(a1 + 112);
        v20 = *(a1 + 56);
        v8 = v112;
      }

      v94 = v10 - 32;
      LODWORD(v19) = v10 - 32;
      v95 = a2 + 1 - (v8 + v94);
      if ((v95 + 1) < 8)
      {
        v96 = v95 + 1;
      }

      else
      {
        v96 = 8;
      }

      if (a2 + 1 >= v8 + v94)
      {
        v97 = v96;
      }

      else
      {
        v97 = 0;
      }

      if (v94 < v97 + v94)
      {
        v98 = *(a1 + 96);
        v99 = 56 - *(a1 + 52);
        do
        {
          v100 = ((0xCF1BBCDCBF9B0000 * *(v8 + v94)) ^ v98) >> v99;
          v101 = (v100 >> 3) & 0x1FFFFFE0;
          _X23 = v21 + 4 * v101;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X20 = v20 + v101;
          __asm { PRFM            #0, [X20] }

          *(v18 + 4 * (v94++ & 7)) = v100;
          --v97;
        }

        while (v97);
      }
    }

    else
    {
      v20 = *(a1 + 56);
      v21 = *(a1 + 112);
    }

    if (v19 < v10)
    {
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v19 = v19;
      do
      {
        v24 = ((0xCF1BBCDCBF9B0000 * *(v22 + v19)) ^ *(a1 + 96)) >> v23;
        v25 = (v24 >> 3) & 0x1FFFFFE0;
        _X23 = v21 + 4 * v25;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v25;
        __asm { PRFM            #0, [X20] }

        v34 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v24;
        v35 = (v34 >> 3) & 0x1FFFFFE0;
        v36 = v21 + 4 * v35;
        v37 = (v20 + v35);
        if (((*v37 - 1) & 0x1F) != 0)
        {
          v38 = 0;
        }

        else
        {
          v38 = 31;
        }

        v39 = v38 + ((*v37 - 1) & 0x1F);
        *v37 = v39;
        v37[v39] = v34;
        *(v36 + 4 * v39) = v19++;
      }

      while (v19 < v10);
    }

    *(a1 + 44) = v10;
    v40 = ((0xCF1BBCDCBF9B0000 * *(v8 + v10 + 8)) ^ v16) >> (56 - v7);
    v41 = (v40 >> 3) & 0x1FFFFFE0;
    _X17 = v5 + 4 * v41;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x40]
    }

    _X14 = v6 + v41;
    __asm { PRFM            #0, [X14] }

    LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
    *(v18 + 4 * (v10 & 7)) = v40;
  }

  *(a1 + 104) += _X14;
  v46 = (_X14 >> 3) & 0x1FFFFFE0;
  v47 = v5 + 4 * v46;
  v48 = (v6 + v46);
  v115 = vld2q_s16(v48);
  v49 = *v48;
  v50 = 2 * *v48;
  v51 = vdupq_n_s8(_X14);
  v52 = 0;
  v53 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v51, v115.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v51, v115.val[1]), 6uLL), 4uLL), v50) & 0x5555555555555555;
  if (v53)
  {
    v54 = 1 << v15;
    do
    {
      v55 = ((__clz(__rbit64(v53)) + (v50 & 0xFE)) >> 1) & 0x1F;
      if (v55)
      {
        v56 = *(v47 + 4 * v55);
        if (v56 < v14)
        {
          break;
        }

        if (v56 >= v12)
        {
          v57 = v8;
        }

        else
        {
          v57 = v9;
        }

        _X3 = v57 + v56;
        __asm { PRFM            #0, [X3] }

        v113[v52++] = v56;
        --v54;
      }

      v53 &= v53 - 1;
    }

    while (v53 && v54);
  }

  if (((v49 - 1) & 0x1F) != 0)
  {
    v60 = 0;
  }

  else
  {
    v60 = 31;
  }

  v61 = v60 + ((v49 - 1) & 0x1F);
  *v48 = v61;
  *(v48 + v61) = _X14;
  v62 = *(a1 + 44);
  *(a1 + 44) = v62 + 1;
  *(v47 + 4 * v61) = v62;
  if (v52)
  {
    v63 = 0;
    v64 = a3 - 7;
    v108 = a3 - 1;
    v109 = a3 - 3;
    v110 = v10 + 3;
    v107 = v8 + 8;
    v65 = 3;
    while (1)
    {
      v66 = v113[v63];
      if (v66 >= v12)
      {
        v71 = (v8 + v66);
        if (*(v8 + v66 + v65 - 3) != *(a2 + v65 - 3))
        {
          goto LABEL_59;
        }

        if (v64 <= a2)
        {
          v74 = a2;
        }

        else
        {
          v72 = *v71;
          if (v72 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v72)) >> 3;
            goto LABEL_57;
          }

          v73 = 0;
          v74 = a2 + 4;
          v71 = (v107 + v66);
          while (v74 < v64)
          {
            v76 = *v71;
            v71 += 4;
            v75 = v76;
            v78 = *v74;
            v74 += 4;
            v77 = v78;
            v73 += 8;
            if (v75 != v78)
            {
              result = v73 + (__clz(__rbit64(v77 ^ v75)) >> 3);
              goto LABEL_57;
            }
          }
        }

        if (v74 < v109 && *v71 == *v74)
        {
          v71 += 2;
          v74 += 2;
        }

        if (v74 < v108 && *v71 == *v74)
        {
          ++v71;
          ++v74;
        }

        if (v74 < a3 && *v71 == *v74)
        {
          v74 = (v74 + 1);
        }

        result = v74 - a2;
      }

      else
      {
        if (*(v9 + v66) != *a2)
        {
          goto LABEL_59;
        }

        v67 = (v8 + v12);
        v68 = a3;
        v69 = sub_243913D40(a2 + 2, (v9 + v66 + 4), a3, (v9 + v12), v67);
        a3 = v68;
        v8 = v112;
        result = v69 + 4;
      }

LABEL_57:
      if (result > v65)
      {
        *a4 = v110 - v66;
        v65 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_62;
        }
      }

LABEL_59:
      ++v63;
      result = v65;
      if (v63 == v52)
      {
        goto LABEL_62;
      }
    }
  }

  result = 3;
LABEL_62:
  v79 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_243930CEC(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v118 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 6)
  {
    LOBYTE(v15) = 6;
  }

  v16 = *(a1 + 96);
  v116 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
  }

  else
  {
    v18 = a1 + 64;
    v19 = *(a1 + 44);
    if (v10 - v19 >= 0x181)
    {
      v20 = *(a1 + 56);
      v21 = *(a1 + 112);
      if (v19 <= 0xFFFFFF9F)
      {
        v82 = v19 + 96;
        do
        {
          v83 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
          v84 = (v83 >> 2) & 0x3FFFFFC0;
          _X19 = v5 + 4 * v84;
          __asm
          {
            PRFM            #0, [X19]
            PRFM            #0, [X19,#0x40]
          }

          _X7 = v6 + v84;
          __asm
          {
            PRFM            #0, [X7]
            PRFM            #0, [X7,#0x20]
          }

          v91 = *(v18 + 4 * (v19 & 7));
          *(v18 + 4 * (v19 & 7)) = v83;
          v92 = (v91 >> 2) & 0x3FFFFFC0;
          v93 = v5 + 4 * v92;
          v94 = (v6 + v92);
          if (((*v94 - 1) & 0x3F) != 0)
          {
            v95 = 0;
          }

          else
          {
            v95 = 63;
          }

          v96 = v95 + ((*v94 - 1) & 0x3F);
          *v94 = v96;
          v94[v96] = v91;
          *(v93 + 4 * v96) = v19++;
        }

        while (v82 != v19);
        v21 = *(a1 + 112);
        v20 = *(a1 + 56);
        v8 = v116;
      }

      v97 = v10 - 32;
      LODWORD(v19) = v10 - 32;
      v98 = a2 + 1 - (v8 + v97);
      if ((v98 + 1) < 8)
      {
        v99 = v98 + 1;
      }

      else
      {
        v99 = 8;
      }

      if (a2 + 1 >= v8 + v97)
      {
        v100 = v99;
      }

      else
      {
        v100 = 0;
      }

      if (v97 < v100 + v97)
      {
        v101 = *(a1 + 96);
        v102 = 56 - *(a1 + 52);
        do
        {
          v103 = ((0xCF1BBCDCBF9B0000 * *(v8 + v97)) ^ v101) >> v102;
          v104 = (v103 >> 2) & 0x3FFFFFC0;
          _X23 = v21 + 4 * v104;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X20 = v20 + v104;
          __asm
          {
            PRFM            #0, [X20]
            PRFM            #0, [X20,#0x20]
          }

          *(v18 + 4 * (v97++ & 7)) = v103;
          --v100;
        }

        while (v100);
      }
    }

    else
    {
      v20 = *(a1 + 56);
      v21 = *(a1 + 112);
    }

    if (v19 < v10)
    {
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v19 = v19;
      do
      {
        v24 = ((0xCF1BBCDCBF9B0000 * *(v22 + v19)) ^ *(a1 + 96)) >> v23;
        v25 = (v24 >> 2) & 0x3FFFFFC0;
        _X23 = v21 + 4 * v25;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v25;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x20]
        }

        v35 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v24;
        v36 = (v35 >> 2) & 0x3FFFFFC0;
        v37 = v21 + 4 * v36;
        v38 = (v20 + v36);
        if (((*v38 - 1) & 0x3F) != 0)
        {
          v39 = 0;
        }

        else
        {
          v39 = 63;
        }

        v40 = v39 + ((*v38 - 1) & 0x3F);
        *v38 = v40;
        v38[v40] = v35;
        *(v37 + 4 * v40) = v19++;
      }

      while (v19 < v10);
    }

    *(a1 + 44) = v10;
    v41 = ((0xCF1BBCDCBF9B0000 * *(v8 + v10 + 8)) ^ v16) >> (56 - v7);
    v42 = (v41 >> 2) & 0x3FFFFFC0;
    _X17 = v5 + 4 * v42;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x40]
    }

    _X14 = v6 + v42;
    __asm
    {
      PRFM            #0, [X14]
      PRFM            #0, [X14,#0x20]
    }

    LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
    *(v18 + 4 * (v10 & 7)) = v41;
  }

  *(a1 + 104) += _X14;
  v48 = (_X14 >> 2) & 0x3FFFFFC0;
  v49 = v5 + 4 * v48;
  v50 = (v6 + v48);
  v51 = *v50;
  v119 = vld4q_s8(v50);
  v52 = vdupq_n_s8(_X14);
  v119.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v119.val[3], v52), vceqq_s8(v119.val[2], v52), 1uLL), vsriq_n_s8(vceqq_s8(v119.val[1], v52), vceqq_s8(v119.val[0], v52), 1uLL), 2uLL);
  v53 = vshrn_n_s16(vsriq_n_s8(v119.val[0], v119.val[0], 4uLL), 4uLL);
  v54 = 0;
  if (v53)
  {
    v55 = 1 << v15;
    v56 = __ROR8__(*&v53, v51);
    do
    {
      v57 = (__clz(__rbit64(v56)) + v51) & 0x3F;
      if (v57)
      {
        v58 = *(v49 + 4 * v57);
        if (v58 < v14)
        {
          break;
        }

        if (v58 >= v12)
        {
          v59 = v8;
        }

        else
        {
          v59 = v9;
        }

        _X1 = v59 + v58;
        __asm { PRFM            #0, [X1] }

        v117[v54++] = v58;
        --v55;
      }

      v56 &= v56 - 1;
    }

    while (v56 && v55);
  }

  if (((v51 - 1) & 0x3F) != 0)
  {
    v62 = 0;
  }

  else
  {
    v62 = 63;
  }

  v63 = v62 + ((v51 - 1) & 0x3F);
  *v50 = v63;
  v50[v63] = _X14;
  v64 = *(a1 + 44);
  *(a1 + 44) = v64 + 1;
  *(v49 + 4 * v63) = v64;
  if (v54)
  {
    v65 = 0;
    v66 = a3 - 7;
    v112 = a3 - 1;
    v113 = a3 - 3;
    v114 = v10 + 3;
    v111 = v8 + 8;
    v67 = 3;
    while (1)
    {
      v68 = v117[v65];
      if (v68 >= v12)
      {
        v73 = (v8 + v68);
        if (*(v8 + v68 + v67 - 3) != *(a2 + v67 - 3))
        {
          goto LABEL_59;
        }

        if (v66 <= a2)
        {
          v76 = a2;
        }

        else
        {
          v74 = *v73;
          if (v74 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v74)) >> 3;
            goto LABEL_57;
          }

          v75 = 0;
          v76 = a2 + 4;
          v73 = (v111 + v68);
          while (v76 < v66)
          {
            v78 = *v73;
            v73 += 4;
            v77 = v78;
            v80 = *v76;
            v76 += 4;
            v79 = v80;
            v75 += 8;
            if (v77 != v80)
            {
              result = v75 + (__clz(__rbit64(v79 ^ v77)) >> 3);
              goto LABEL_57;
            }
          }
        }

        if (v76 < v113 && *v73 == *v76)
        {
          v73 += 2;
          v76 += 2;
        }

        if (v76 < v112 && *v73 == *v76)
        {
          ++v73;
          ++v76;
        }

        if (v76 < a3 && *v73 == *v76)
        {
          v76 = (v76 + 1);
        }

        result = v76 - a2;
      }

      else
      {
        if (*(v9 + v68) != *a2)
        {
          goto LABEL_59;
        }

        v69 = (v8 + v12);
        v70 = a3;
        v71 = sub_243913D40(a2 + 2, (v9 + v68 + 4), a3, (v9 + v12), v69);
        a3 = v70;
        v8 = v116;
        result = v71 + 4;
      }

LABEL_57:
      if (result > v67)
      {
        *a4 = v114 - v68;
        v67 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_62;
        }
      }

LABEL_59:
      ++v65;
      result = v67;
      if (v65 == v54)
      {
        goto LABEL_62;
      }
    }
  }

  result = 3;
LABEL_62:
  v81 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2439312D8(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 260);
  v7 = 1 << v6;
  v8 = (1 << v6) - 1;
  v9 = *(a1 + 8);
  v10 = a2 - v9;
  v11 = 1 << *(a1 + 256);
  v56 = *(a1 + 24);
  v12 = *(a1 + 44);
  if (a2 - v9 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v9 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = v10 >= v7;
  v16 = v10 - v7;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = 1 << *(a1 + 268);
  v19 = *(a1 + 248);
  v20 = *(a1 + 300);
  v21 = *(a1 + 112);
  v22 = 32 - *(a1 + 264);
  if (v12 <= v10)
  {
    v23 = v10;
  }

  else
  {
    v23 = v12;
  }

  do
  {
    if (v23 == v12)
    {
      break;
    }

    v24 = (-1640531535 * *(v9 + v12)) >> v22;
    *(v5 + 4 * (v12 & ~(-1 << v6))) = *(v21 + 4 * v24);
    *(v21 + 4 * v24) = v12++;
  }

  while (!v20);
  *(a1 + 44) = v10;
  v25 = *a2;
  v26 = *(v21 + 4 * ((-1640531535 * *a2) >> v22));
  if (v26 < v14)
  {
    result = 3;
    goto LABEL_17;
  }

  v41 = a3 - 7;
  result = 3;
  while (1)
  {
    v42 = v26;
    v43 = (v9 + v26);
    if (*(v43 + result - 3) == *(a2 + result - 3))
    {
      break;
    }

LABEL_53:
    if (v42 > v17)
    {
      if (--v18)
      {
        v26 = *(v5 + 4 * (v42 & v8));
        if (v26 >= v14)
        {
          continue;
        }
      }
    }

    goto LABEL_17;
  }

  if (v41 <= a2)
  {
    v46 = a2;
  }

  else
  {
    v44 = *v43;
    if (v44 != *a2)
    {
      v51 = __clz(__rbit64(*a2 ^ v44)) >> 3;
      goto LABEL_51;
    }

    v45 = 0;
    v43 = (v9 + 8 + v42);
    v46 = a2 + 4;
    while (v46 < v41)
    {
      v48 = *v43;
      v43 += 4;
      v47 = v48;
      v50 = *v46;
      v46 += 4;
      v49 = v50;
      v45 += 8;
      if (v47 != v50)
      {
        v51 = v45 + (__clz(__rbit64(v49 ^ v47)) >> 3);
        goto LABEL_51;
      }
    }
  }

  if (v46 < a3 - 3 && *v43 == *v46)
  {
    v43 += 2;
    v46 += 2;
  }

  if (v46 < a3 - 1 && *v43 == *v46)
  {
    ++v43;
    ++v46;
  }

  if (v46 < a3 && *v43 == *v46)
  {
    v46 = (v46 + 1);
  }

  v51 = v46 - a2;
LABEL_51:
  if (v51 <= result)
  {
    goto LABEL_53;
  }

  *a4 = v10 + 3 - v42;
  result = v51;
  if ((a2 + v51) != a3)
  {
    goto LABEL_53;
  }

  result = v51;
LABEL_17:
  v28 = 1 << *(v19 + 260);
  v29 = *(v19 + 8);
  v55 = *v19;
  v30 = *v19 - v29;
  if (v30 >= v28)
  {
    v31 = v30 - v28;
  }

  else
  {
    v31 = 0;
  }

  if (v18)
  {
    v32 = *(v19 + 24);
    v33 = *(*(v19 + 112) + 4 * ((-1640531535 * v25) >> -*(v19 + 264)));
    if (v33 >= v32)
    {
      v54 = *(v19 + 8);
      v34 = *(v19 + 128);
      v35 = v28 - 1;
      v52 = v10 - v56 + v30 + 3;
      v36 = v18 - 1;
      do
      {
        v37 = v29 + v33;
        if (*v37 == v25)
        {
          v57 = result;
          v38 = a3;
          v39 = sub_243913D40(a2 + 2, (v37 + 4), a3, v55, (v9 + v56));
          a3 = v38;
          v40 = v39 + 4;
          v29 = v54;
          result = v57;
          if (v40 > v57)
          {
            *a4 = v52 - v33;
            result = v40;
            if ((a2 + v40) == v38)
            {
              break;
            }
          }
        }

        if (v33 <= v31)
        {
          break;
        }

        v15 = v36-- != 0;
        if (!v15)
        {
          break;
        }

        v33 = *(v34 + 4 * (v33 & v35));
      }

      while (v33 >= v32);
    }
  }

  return result;
}

unint64_t sub_243931658(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v4 = *(a1 + 128);
  v5 = *(a1 + 260);
  v6 = 1 << v5;
  v7 = (1 << v5) - 1;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v60 = *(a1 + 24);
  v11 = *(a1 + 44);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v13 = a2 - v8 - v10;
  }

  else
  {
    v13 = *(a1 + 28);
  }

  v14 = v9 >= v6;
  v15 = v9 - v6;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = 1 << *(a1 + 268);
  v18 = *(a1 + 248);
  v19 = *(a1 + 300);
  v20 = *(a1 + 112);
  v21 = 64 - *(a1 + 264);
  if (v11 <= v9)
  {
    v22 = v9;
  }

  else
  {
    v22 = v11;
  }

  do
  {
    if (v22 == v11)
    {
      break;
    }

    v23 = (0xCF1BBCDCBB000000 * *(v8 + v11)) >> v21;
    *(v4 + 4 * (v11 & ~(-1 << v5))) = *(v20 + 4 * v23);
    *(v20 + 4 * v23) = v11++;
  }

  while (!v19);
  v24 = *a2;
  *(a1 + 44) = v9;
  v25 = *(v20 + 4 * ((0xCF1BBCDCBB000000 * v24) >> v21));
  if (v25 < v13)
  {
    v26 = 3;
    goto LABEL_17;
  }

  v44 = a3 - 7;
  v26 = 3;
  while (1)
  {
    v45 = v25;
    v46 = (v8 + v25);
    if (*(v46 + v26 - 3) == *(a2 + v26 - 3))
    {
      break;
    }

LABEL_53:
    if (v45 > v16)
    {
      if (--v17)
      {
        v25 = *(v4 + 4 * (v45 & v7));
        if (v25 >= v13)
        {
          continue;
        }
      }
    }

    goto LABEL_17;
  }

  if (v44 <= a2)
  {
    v49 = a2;
  }

  else
  {
    v47 = *v46;
    if (v47 != *a2)
    {
      v54 = __clz(__rbit64(*a2 ^ v47)) >> 3;
      goto LABEL_51;
    }

    v48 = 0;
    v46 = (v8 + 8 + v45);
    v49 = a2 + 4;
    while (v49 < v44)
    {
      v51 = *v46;
      v46 += 4;
      v50 = v51;
      v53 = *v49;
      v49 += 4;
      v52 = v53;
      v48 += 8;
      if (v50 != v53)
      {
        v54 = v48 + (__clz(__rbit64(v52 ^ v50)) >> 3);
        goto LABEL_51;
      }
    }
  }

  if (v49 < a3 - 3 && *v46 == *v49)
  {
    v46 += 2;
    v49 += 2;
  }

  if (v49 < a3 - 1 && *v46 == *v49)
  {
    ++v46;
    ++v49;
  }

  if (v49 < a3 && *v46 == *v49)
  {
    v49 = (v49 + 1);
  }

  v54 = v49 - a2;
LABEL_51:
  if (v54 <= v26)
  {
    goto LABEL_53;
  }

  *a4 = v9 + 3 - v45;
  v26 = v54;
  if ((a2 + v54) != a3)
  {
    goto LABEL_53;
  }

  v26 = v54;
LABEL_17:
  v27 = 1 << *(v18 + 260);
  v28 = *(v18 + 8);
  v59 = *v18;
  v29 = *v18 - v28;
  if (v29 >= v27)
  {
    v30 = v29 - v27;
  }

  else
  {
    v30 = 0;
  }

  if (v17)
  {
    v31 = *(v18 + 24);
    v32 = *(*(v18 + 112) + 4 * ((0xCF1BBCDCBB000000 * v24) >> -*(v18 + 264)));
    if (v32 >= v31)
    {
      v33 = *(v18 + 128);
      v34 = v27 - 1;
      v35 = *a2;
      v58 = *(v18 + 8);
      v55 = v9 - v60 + v29 + 3;
      v36 = v17 - 1;
      do
      {
        v37 = v28 + v32;
        if (*v37 == v35)
        {
          v38 = a3;
          v39 = v26;
          v40 = v35;
          v41 = sub_243913D40(a2 + 2, (v37 + 4), a3, v59, (v8 + v60));
          v35 = v40;
          v26 = v39;
          a3 = v38;
          v42 = v41 + 4;
          v28 = v58;
          if (v42 > v39)
          {
            *a4 = v55 - v32;
            v26 = v42;
            if ((a2 + v42) == v38)
            {
              break;
            }
          }
        }

        if (v32 <= v30)
        {
          break;
        }

        v14 = v36-- != 0;
        if (!v14)
        {
          break;
        }

        v32 = *(v33 + 4 * (v32 & v34));
      }

      while (v32 >= v31);
    }
  }

  return v26;
}

unint64_t sub_2439319E0(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v4 = *(a1 + 128);
  v5 = *(a1 + 260);
  v6 = 1 << v5;
  v7 = (1 << v5) - 1;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v60 = *(a1 + 24);
  v11 = *(a1 + 44);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v13 = a2 - v8 - v10;
  }

  else
  {
    v13 = *(a1 + 28);
  }

  v14 = v9 >= v6;
  v15 = v9 - v6;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = 1 << *(a1 + 268);
  v18 = *(a1 + 248);
  v19 = *(a1 + 300);
  v20 = *(a1 + 112);
  v21 = 64 - *(a1 + 264);
  if (v11 <= v9)
  {
    v22 = v9;
  }

  else
  {
    v22 = v11;
  }

  do
  {
    if (v22 == v11)
    {
      break;
    }

    v23 = (0xCF1BBCDCBF9B0000 * *(v8 + v11)) >> v21;
    *(v4 + 4 * (v11 & ~(-1 << v5))) = *(v20 + 4 * v23);
    *(v20 + 4 * v23) = v11++;
  }

  while (!v19);
  v24 = *a2;
  *(a1 + 44) = v9;
  v25 = *(v20 + 4 * ((0xCF1BBCDCBF9B0000 * v24) >> v21));
  if (v25 < v13)
  {
    v26 = 3;
    goto LABEL_17;
  }

  v44 = a3 - 7;
  v26 = 3;
  while (1)
  {
    v45 = v25;
    v46 = (v8 + v25);
    if (*(v46 + v26 - 3) == *(a2 + v26 - 3))
    {
      break;
    }

LABEL_53:
    if (v45 > v16)
    {
      if (--v17)
      {
        v25 = *(v4 + 4 * (v45 & v7));
        if (v25 >= v13)
        {
          continue;
        }
      }
    }

    goto LABEL_17;
  }

  if (v44 <= a2)
  {
    v49 = a2;
  }

  else
  {
    v47 = *v46;
    if (v47 != *a2)
    {
      v54 = __clz(__rbit64(*a2 ^ v47)) >> 3;
      goto LABEL_51;
    }

    v48 = 0;
    v46 = (v8 + 8 + v45);
    v49 = a2 + 4;
    while (v49 < v44)
    {
      v51 = *v46;
      v46 += 4;
      v50 = v51;
      v53 = *v49;
      v49 += 4;
      v52 = v53;
      v48 += 8;
      if (v50 != v53)
      {
        v54 = v48 + (__clz(__rbit64(v52 ^ v50)) >> 3);
        goto LABEL_51;
      }
    }
  }

  if (v49 < a3 - 3 && *v46 == *v49)
  {
    v46 += 2;
    v49 += 2;
  }

  if (v49 < a3 - 1 && *v46 == *v49)
  {
    ++v46;
    ++v49;
  }

  if (v49 < a3 && *v46 == *v49)
  {
    v49 = (v49 + 1);
  }

  v54 = v49 - a2;
LABEL_51:
  if (v54 <= v26)
  {
    goto LABEL_53;
  }

  *a4 = v9 + 3 - v45;
  v26 = v54;
  if ((a2 + v54) != a3)
  {
    goto LABEL_53;
  }

  v26 = v54;
LABEL_17:
  v27 = 1 << *(v18 + 260);
  v28 = *(v18 + 8);
  v59 = *v18;
  v29 = *v18 - v28;
  if (v29 >= v27)
  {
    v30 = v29 - v27;
  }

  else
  {
    v30 = 0;
  }

  if (v17)
  {
    v31 = *(v18 + 24);
    v32 = *(*(v18 + 112) + 4 * ((0xCF1BBCDCBF9B0000 * v24) >> -*(v18 + 264)));
    if (v32 >= v31)
    {
      v33 = *(v18 + 128);
      v34 = v27 - 1;
      v35 = *a2;
      v58 = *(v18 + 8);
      v55 = v9 - v60 + v29 + 3;
      v36 = v17 - 1;
      do
      {
        v37 = v28 + v32;
        if (*v37 == v35)
        {
          v38 = a3;
          v39 = v26;
          v40 = v35;
          v41 = sub_243913D40(a2 + 2, (v37 + 4), a3, v59, (v8 + v60));
          v35 = v40;
          v26 = v39;
          a3 = v38;
          v42 = v41 + 4;
          v28 = v58;
          if (v42 > v39)
          {
            *a4 = v55 - v32;
            v26 = v42;
            if ((a2 + v42) == v38)
            {
              break;
            }
          }
        }

        if (v32 <= v30)
        {
          break;
        }

        v14 = v36-- != 0;
        if (!v14)
        {
          break;
        }

        v32 = *(v33 + 4 * (v32 & v34));
      }

      while (v32 >= v31);
    }
  }

  return v26;
}

unint64_t sub_243931D68(uint64_t a1, uint64_t *a2, unint64_t a3, unsigned int *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  sub_24393ABA8(a1, a2, 4);

  return sub_24393ACD0(a1, a2, a3, a4, 4, 2);
}

unint64_t sub_243931DE8(uint64_t a1, uint64_t *a2, unint64_t a3, unsigned int *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  sub_24393ABA8(a1, a2, 5);

  return sub_24393ACD0(a1, a2, a3, a4, 5, 2);
}

unint64_t sub_243931E68(uint64_t a1, uint64_t *a2, unint64_t a3, unsigned int *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  sub_24393ABA8(a1, a2, 6);

  return sub_24393ACD0(a1, a2, a3, a4, 6, 2);
}

unint64_t sub_243931EE8(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v132 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v130 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 4)
  {
    LOBYTE(v13) = 4;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = -1640531535 * *a2;
  v18 = v17 >> (24 - *(v16 + 52));
  v19 = (v18 >> 4) & 0xFFFFFF0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    v27 = (v17 ^ v14) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v126 = a3;
    v28 = a1 + 64;
    v29 = *(a1 + 44);
    v128 = *(a1 + 52);
    v30 = *(a1 + 56);
    v31 = *(a1 + 112);
    if (v9 - v29 >= 0x181)
    {
      if (v29 <= 0xFFFFFF9F)
      {
        v99 = v29 + 96;
        v100 = 24 - v7;
        do
        {
          v101 = ((-1640531535 * *(v8 + 8 + v29)) ^ *(a1 + 96)) >> v100;
          v102 = (v101 >> 4) & 0xFFFFFF0;
          _X23 = v5 + 4 * v102;
          __asm { PRFM            #0, [X23] }

          _X22 = v6 + v102;
          __asm { PRFM            #0, [X22] }

          v107 = *(v28 + 4 * (v29 & 7));
          *(v28 + 4 * (v29 & 7)) = v101;
          v108 = (v107 >> 4) & 0xFFFFFF0;
          v109 = v5 + 4 * v108;
          v110 = (v6 + v108);
          if (((*v110 - 1) & 0xF) != 0)
          {
            v111 = 0;
          }

          else
          {
            v111 = 15;
          }

          v112 = v111 + ((*v110 - 1) & 0xF);
          *v110 = v112;
          v110[v112] = v107;
          *(v109 + 4 * v112) = v29++;
        }

        while (v99 != v29);
        v31 = *(a1 + 112);
        v30 = *(a1 + 56);
      }

      v113 = v9 - 32;
      LODWORD(v29) = v9 - 32;
      v114 = a2 + 1 - (v8 + v113);
      if ((v114 + 1) < 8)
      {
        v115 = v114 + 1;
      }

      else
      {
        v115 = 8;
      }

      if (a2 + 1 >= v8 + v113)
      {
        v116 = v115;
      }

      else
      {
        v116 = 0;
      }

      if (v113 < v116 + v113)
      {
        v117 = *(a1 + 96);
        v118 = 24 - *(a1 + 52);
        do
        {
          v119 = ((-1640531535 * *(v8 + v113)) ^ v117) >> v118;
          v120 = (v119 >> 4) & 0xFFFFFF0;
          _X26 = v31 + 4 * v120;
          __asm { PRFM            #0, [X26] }

          _X24 = v30 + v120;
          __asm { PRFM            #0, [X24] }

          *(v28 + 4 * (v113++ & 7)) = v119;
          --v116;
        }

        while (v116);
      }
    }

    if (v29 < v9)
    {
      v32 = *(a1 + 8) + 8;
      v33 = 24 - *(a1 + 52);
      v29 = v29;
      do
      {
        v34 = ((-1640531535 * *(v32 + v29)) ^ *(a1 + 96)) >> v33;
        v35 = (v34 >> 4) & 0xFFFFFF0;
        _X26 = v31 + 4 * v35;
        __asm { PRFM            #0, [X26] }

        _X24 = v30 + v35;
        __asm { PRFM            #0, [X24] }

        v40 = *(v28 + 4 * (v29 & 7));
        *(v28 + 4 * (v29 & 7)) = v34;
        v41 = (v40 >> 4) & 0xFFFFFF0;
        v42 = v31 + 4 * v41;
        v43 = (v30 + v41);
        if (((*v43 - 1) & 0xF) != 0)
        {
          v44 = 0;
        }

        else
        {
          v44 = 15;
        }

        v45 = v44 + ((*v43 - 1) & 0xF);
        *v43 = v45;
        v43[v45] = v40;
        *(v42 + 4 * v45) = v29++;
      }

      while (v29 < v9);
    }

    *(a1 + 44) = v9;
    v46 = ((-1640531535 * *(v8 + v9 + 8)) ^ v14) >> (24 - v128);
    v47 = (v46 >> 4) & 0xFFFFFF0;
    _X2 = v5 + 4 * v47;
    __asm { PRFM            #0, [X2] }

    _X17 = v6 + v47;
    __asm { PRFM            #0, [X17] }

    v27 = *(v28 + 4 * (v9 & 7));
    *(v28 + 4 * (v9 & 7)) = v46;
    a3 = v126;
  }

  *(a1 + 104) += v27;
  v52 = (v27 >> 4) & 0xFFFFFF0;
  v53 = v5 + 4 * v52;
  v54 = (v6 + v52);
  v55 = *v54;
  v56 = __ROR8__(vshrn_n_s16(vceqq_s8(*v54, vdupq_n_s8(v27)), 4uLL), 4 * v54->i8[0]) & 0x8888888888888888;
  if (v56)
  {
    v57 = 0;
    v58 = (4 * v54->i8[0]);
    do
    {
      v59 = ((__clz(__rbit64(v56)) + v58) >> 2) & 0xF;
      if (v59)
      {
        v60 = *(v53 + 4 * v59);
        if (v60 < v12)
        {
          break;
        }

        _X7 = v8 + v60;
        __asm { PRFM            #0, [X7] }

        v131[v57++] = v60;
        --v15;
      }

      v56 &= v56 - 1;
    }

    while (v56 && v15);
  }

  else
  {
    v57 = 0;
  }

  if (((v55 - 1) & 0xF) != 0)
  {
    v63 = 0;
  }

  else
  {
    v63 = 15;
  }

  v64 = v63 + ((v55 - 1) & 0xF);
  v54->i8[0] = v64;
  v54->i8[v64] = v27;
  v65 = *(a1 + 44);
  *(a1 + 44) = v65 + 1;
  *(v53 + 4 * v64) = v65;
  if (v57)
  {
    v66 = 0;
    v67 = a3 - 7;
    v68 = 3;
    while (1)
    {
      v69 = v131[v66];
      v70 = (v8 + v69);
      if (*(v8 + v69 + v68 - 3) != *(a2 + v68 - 3))
      {
        goto LABEL_54;
      }

      if (v67 <= a2)
      {
        v72 = a2;
      }

      else
      {
        if (*v70 != *a2)
        {
          v77 = __clz(__rbit64(*a2 ^ *v70)) >> 3;
          goto LABEL_52;
        }

        v71 = 0;
        v70 = (v8 + 8 + v69);
        v72 = a2 + 4;
        while (v72 < v67)
        {
          v74 = *v70++;
          v73 = v74;
          v76 = *v72;
          v72 += 4;
          v75 = v76;
          v71 += 8;
          if (v73 != v76)
          {
            v77 = v71 + (__clz(__rbit64(v75 ^ v73)) >> 3);
            goto LABEL_52;
          }
        }
      }

      if (v72 < a3 - 3 && *v70 == *v72)
      {
        v70 = (v70 + 4);
        v72 += 2;
      }

      if (v72 < a3 - 1 && *v70 == *v72)
      {
        v70 = (v70 + 2);
        ++v72;
      }

      if (v72 < a3 && *v70 == *v72)
      {
        v72 = (v72 + 1);
      }

      v77 = v72 - a2;
LABEL_52:
      if (v77 > v68)
      {
        *a4 = v9 + 3 - v69;
        v68 = v77;
        if ((a2 + v77) == a3)
        {
          goto LABEL_57;
        }
      }

LABEL_54:
      ++v66;
      v77 = v68;
      if (v66 == v57)
      {
        goto LABEL_57;
      }
    }
  }

  v77 = 3;
LABEL_57:
  v78 = 4 * _X13->i8[0];
  v79 = __ROR8__(vshrn_n_s16(vceqq_s8(*_X13, vdupq_n_s8(v18)), 4uLL), v78) & 0x8888888888888888;
  if (v79)
  {
    v80 = v15 == 0;
  }

  else
  {
    v80 = 1;
  }

  if (!v80)
  {
    v81 = 0;
    v82 = *(v16 + 24);
    v83 = *(v16 + 8);
    v129 = *v16;
    v84 = *v16 - v83;
    v85 = v78 & 0xFC;
    do
    {
      v86 = ((__clz(__rbit64(v79)) + v85) >> 2) & 0xF;
      if (v86)
      {
        v87 = *(_X10 + 4 * v86);
        if (v87 < v82)
        {
          break;
        }

        _X17 = v83 + v87;
        __asm { PRFM            #0, [X17] }

        v131[v81++] = v87;
        --v15;
      }

      v79 &= v79 - 1;
    }

    while (v79 && v15);
    if (v81)
    {
      v90 = *a2;
      v125 = v9 - v130 + v84 + 3;
      v91 = v131;
      do
      {
        v93 = *v91++;
        v92 = v93;
        v94 = v83 + v93;
        if (*v94 == v90)
        {
          v95 = a3;
          v96 = sub_243913D40(a2 + 2, (v94 + 4), a3, v129, (v8 + v130));
          a3 = v95;
          if (v96 + 4 > v77)
          {
            *a4 = v125 - v92;
            v77 = v96 + 4;
            if ((a2 + v96 + 4) == v95)
            {
              break;
            }
          }
        }

        --v81;
      }

      while (v81);
    }
  }

  v97 = *MEMORY[0x277D85DE8];
  return v77;
}

unint64_t sub_243932588(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v139 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v137 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 5)
  {
    LOBYTE(v13) = 5;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = -1640531535 * *a2;
  v18 = v17 >> (24 - *(v16 + 52));
  v19 = (v18 >> 3) & 0x1FFFFFE0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    v28 = (v17 ^ v14) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v133 = a3;
    v29 = a1 + 64;
    v30 = *(a1 + 44);
    v135 = *(a1 + 52);
    v31 = *(a1 + 56);
    v32 = *(a1 + 112);
    if (v9 - v30 >= 0x181)
    {
      if (v30 <= 0xFFFFFF9F)
      {
        v104 = v30 + 96;
        v105 = 24 - v7;
        do
        {
          v106 = ((-1640531535 * *(v8 + 8 + v30)) ^ *(a1 + 96)) >> v105;
          v107 = (v106 >> 3) & 0x1FFFFFE0;
          _X23 = v5 + 4 * v107;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v107;
          __asm { PRFM            #0, [X22] }

          v113 = *(v29 + 4 * (v30 & 7));
          *(v29 + 4 * (v30 & 7)) = v106;
          v114 = (v113 >> 3) & 0x1FFFFFE0;
          v115 = v5 + 4 * v114;
          v116 = (v6 + v114);
          if (((*v116 - 1) & 0x1F) != 0)
          {
            v117 = 0;
          }

          else
          {
            v117 = 31;
          }

          v118 = v117 + ((*v116 - 1) & 0x1F);
          *v116 = v118;
          v116[v118] = v113;
          *(v115 + 4 * v118) = v30++;
        }

        while (v104 != v30);
        v32 = *(a1 + 112);
        v31 = *(a1 + 56);
      }

      v119 = v9 - 32;
      LODWORD(v30) = v9 - 32;
      v120 = a2 + 1 - (v8 + v119);
      if ((v120 + 1) < 8)
      {
        v121 = v120 + 1;
      }

      else
      {
        v121 = 8;
      }

      if (a2 + 1 >= v8 + v119)
      {
        v122 = v121;
      }

      else
      {
        v122 = 0;
      }

      if (v119 < v122 + v119)
      {
        v123 = *(a1 + 96);
        v124 = 24 - *(a1 + 52);
        do
        {
          v125 = ((-1640531535 * *(v8 + v119)) ^ v123) >> v124;
          v126 = (v125 >> 3) & 0x1FFFFFE0;
          _X26 = v32 + 4 * v126;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v31 + v126;
          __asm { PRFM            #0, [X24] }

          *(v29 + 4 * (v119++ & 7)) = v125;
          --v122;
        }

        while (v122);
      }
    }

    if (v30 < v9)
    {
      v33 = *(a1 + 8) + 8;
      v34 = 24 - *(a1 + 52);
      v30 = v30;
      do
      {
        v35 = ((-1640531535 * *(v33 + v30)) ^ *(a1 + 96)) >> v34;
        v36 = (v35 >> 3) & 0x1FFFFFE0;
        _X26 = v32 + 4 * v36;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v31 + v36;
        __asm { PRFM            #0, [X24] }

        v42 = *(v29 + 4 * (v30 & 7));
        *(v29 + 4 * (v30 & 7)) = v35;
        v43 = (v42 >> 3) & 0x1FFFFFE0;
        v44 = v32 + 4 * v43;
        v45 = (v31 + v43);
        if (((*v45 - 1) & 0x1F) != 0)
        {
          v46 = 0;
        }

        else
        {
          v46 = 31;
        }

        v47 = v46 + ((*v45 - 1) & 0x1F);
        *v45 = v47;
        v45[v47] = v42;
        *(v44 + 4 * v47) = v30++;
      }

      while (v30 < v9);
    }

    *(a1 + 44) = v9;
    v48 = ((-1640531535 * *(v8 + v9 + 8)) ^ v14) >> (24 - v135);
    v49 = (v48 >> 3) & 0x1FFFFFE0;
    _X2 = v5 + 4 * v49;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v49;
    __asm { PRFM            #0, [X17] }

    v28 = *(v29 + 4 * (v9 & 7));
    *(v29 + 4 * (v9 & 7)) = v48;
    a3 = v133;
  }

  *(a1 + 104) += v28;
  v55 = (v28 >> 3) & 0x1FFFFFE0;
  v56 = v5 + 4 * v55;
  v57 = (v6 + v55);
  v140 = vld2q_s16(v57);
  v58 = *v57;
  v59 = vdupq_n_s8(v28);
  v60 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v59, v140.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v59, v140.val[1]), 6uLL), 4uLL), 2 * *v57) & 0x5555555555555555;
  if (v60)
  {
    v61 = 0;
    v62 = (2 * *v57);
    do
    {
      v63 = ((__clz(__rbit64(v60)) + v62) >> 1) & 0x1F;
      if (v63)
      {
        v64 = *(v56 + 4 * v63);
        if (v64 < v12)
        {
          break;
        }

        _X7 = v8 + v64;
        __asm { PRFM            #0, [X7] }

        v138[v61++] = v64;
        --v15;
      }

      v60 &= v60 - 1;
    }

    while (v60 && v15);
  }

  else
  {
    v61 = 0;
  }

  if (((v58 - 1) & 0x1F) != 0)
  {
    v67 = 0;
  }

  else
  {
    v67 = 31;
  }

  v68 = v67 + ((v58 - 1) & 0x1F);
  *v57 = v68;
  *(v57 + v68) = v28;
  v69 = *(a1 + 44);
  *(a1 + 44) = v69 + 1;
  *(v56 + 4 * v68) = v69;
  if (v61)
  {
    v70 = 0;
    v71 = a3 - 7;
    v72 = 3;
    while (1)
    {
      v73 = v138[v70];
      v74 = (v8 + v73);
      if (*(v8 + v73 + v72 - 3) != *(a2 + v72 - 3))
      {
        goto LABEL_54;
      }

      if (v71 <= a2)
      {
        v76 = a2;
      }

      else
      {
        if (*v74 != *a2)
        {
          v81 = __clz(__rbit64(*a2 ^ *v74)) >> 3;
          goto LABEL_52;
        }

        v75 = 0;
        v74 = (v8 + 8 + v73);
        v76 = a2 + 4;
        while (v76 < v71)
        {
          v78 = *v74++;
          v77 = v78;
          v80 = *v76;
          v76 += 4;
          v79 = v80;
          v75 += 8;
          if (v77 != v80)
          {
            v81 = v75 + (__clz(__rbit64(v79 ^ v77)) >> 3);
            goto LABEL_52;
          }
        }
      }

      if (v76 < a3 - 3 && *v74 == *v76)
      {
        v74 = (v74 + 4);
        v76 += 2;
      }

      if (v76 < a3 - 1 && *v74 == *v76)
      {
        v74 = (v74 + 2);
        ++v76;
      }

      if (v76 < a3 && *v74 == *v76)
      {
        v76 = (v76 + 1);
      }

      v81 = v76 - a2;
LABEL_52:
      if (v81 > v72)
      {
        *a4 = v9 + 3 - v73;
        v72 = v81;
        if ((a2 + v81) == a3)
        {
          goto LABEL_57;
        }
      }

LABEL_54:
      ++v70;
      v81 = v72;
      if (v70 == v61)
      {
        goto LABEL_57;
      }
    }
  }

  v81 = 3;
LABEL_57:
  v82 = 2 * *_X13;
  v141 = vld2q_s16(_X13);
  v83 = vdupq_n_s8(v18);
  v84 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v83, v141.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v83, v141.val[1]), 6uLL), 4uLL), v82) & 0x5555555555555555;
  if (v84)
  {
    v85 = v15 == 0;
  }

  else
  {
    v85 = 1;
  }

  if (!v85)
  {
    v86 = 0;
    v87 = *(v16 + 24);
    v88 = *(v16 + 8);
    v136 = *v16;
    v89 = *v16 - v88;
    v90 = v82 & 0xFE;
    do
    {
      v91 = ((__clz(__rbit64(v84)) + v90) >> 1) & 0x1F;
      if (v91)
      {
        v92 = *(_X10 + 4 * v91);
        if (v92 < v87)
        {
          break;
        }

        _X17 = v88 + v92;
        __asm { PRFM            #0, [X17] }

        v138[v86++] = v92;
        --v15;
      }

      v84 &= v84 - 1;
    }

    while (v84 && v15);
    if (v86)
    {
      v95 = *a2;
      v132 = v9 - v137 + v89 + 3;
      v96 = v138;
      do
      {
        v98 = *v96++;
        v97 = v98;
        v99 = v88 + v98;
        if (*v99 == v95)
        {
          v100 = a3;
          v101 = sub_243913D40(a2 + 2, (v99 + 4), a3, v136, (v8 + v137));
          a3 = v100;
          if (v101 + 4 > v81)
          {
            *a4 = v132 - v97;
            v81 = v101 + 4;
            if ((a2 + v101 + 4) == v100)
            {
              break;
            }
          }
        }

        --v86;
      }

      while (v86);
    }
  }

  v102 = *MEMORY[0x277D85DE8];
  return v81;
}

unint64_t sub_243932C50(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v144 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v142 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 6)
  {
    LOBYTE(v13) = 6;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = -1640531535 * *a2;
  v18 = v17 >> (24 - *(v16 + 52));
  v19 = (v18 >> 2) & 0x3FFFFFC0;
  _X12 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X12]
    PRFM            #0, [X12,#0x20]
  }

  if (*(a1 + 300))
  {
    v29 = (v17 ^ v14) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v138 = a3;
    v30 = a1 + 64;
    v31 = *(a1 + 44);
    v140 = *(a1 + 52);
    v32 = *(a1 + 56);
    v33 = *(a1 + 112);
    if (v9 - v31 >= 0x181)
    {
      if (v31 <= 0xFFFFFF9F)
      {
        v107 = v31 + 96;
        v108 = 24 - v7;
        do
        {
          v109 = ((-1640531535 * *(v8 + 8 + v31)) ^ *(a1 + 96)) >> v108;
          v110 = (v109 >> 2) & 0x3FFFFFC0;
          _X23 = v5 + 4 * v110;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v110;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          v117 = *(v30 + 4 * (v31 & 7));
          *(v30 + 4 * (v31 & 7)) = v109;
          v118 = (v117 >> 2) & 0x3FFFFFC0;
          v119 = v5 + 4 * v118;
          v120 = (v6 + v118);
          if (((*v120 - 1) & 0x3F) != 0)
          {
            v121 = 0;
          }

          else
          {
            v121 = 63;
          }

          v122 = v121 + ((*v120 - 1) & 0x3F);
          *v120 = v122;
          v120[v122] = v117;
          *(v119 + 4 * v122) = v31++;
        }

        while (v107 != v31);
        v33 = *(a1 + 112);
        v32 = *(a1 + 56);
      }

      v123 = v9 - 32;
      LODWORD(v31) = v9 - 32;
      v124 = a2 + 1 - (v8 + v123);
      if ((v124 + 1) < 8)
      {
        v125 = v124 + 1;
      }

      else
      {
        v125 = 8;
      }

      if (a2 + 1 >= v8 + v123)
      {
        v126 = v125;
      }

      else
      {
        v126 = 0;
      }

      if (v123 < v126 + v123)
      {
        v127 = *(a1 + 96);
        v128 = 24 - *(a1 + 52);
        do
        {
          v129 = ((-1640531535 * *(v8 + v123)) ^ v127) >> v128;
          v130 = (v129 >> 2) & 0x3FFFFFC0;
          _X26 = v33 + 4 * v130;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v32 + v130;
          __asm
          {
            PRFM            #0, [X24]
            PRFM            #0, [X24,#0x20]
          }

          *(v30 + 4 * (v123++ & 7)) = v129;
          --v126;
        }

        while (v126);
      }
    }

    if (v31 < v9)
    {
      v34 = *(a1 + 8) + 8;
      v35 = 24 - *(a1 + 52);
      v31 = v31;
      do
      {
        v36 = ((-1640531535 * *(v34 + v31)) ^ *(a1 + 96)) >> v35;
        v37 = (v36 >> 2) & 0x3FFFFFC0;
        _X26 = v33 + 4 * v37;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v32 + v37;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x20]
        }

        v44 = *(v30 + 4 * (v31 & 7));
        *(v30 + 4 * (v31 & 7)) = v36;
        v45 = (v44 >> 2) & 0x3FFFFFC0;
        v46 = v33 + 4 * v45;
        v47 = (v32 + v45);
        if (((*v47 - 1) & 0x3F) != 0)
        {
          v48 = 0;
        }

        else
        {
          v48 = 63;
        }

        v49 = v48 + ((*v47 - 1) & 0x3F);
        *v47 = v49;
        v47[v49] = v44;
        *(v46 + 4 * v49) = v31++;
      }

      while (v31 < v9);
    }

    *(a1 + 44) = v9;
    v50 = ((-1640531535 * *(v8 + v9 + 8)) ^ v14) >> (24 - v140);
    v51 = (v50 >> 2) & 0x3FFFFFC0;
    _X2 = v5 + 4 * v51;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v51;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x20]
    }

    v29 = *(v30 + 4 * (v9 & 7));
    *(v30 + 4 * (v9 & 7)) = v50;
    a3 = v138;
  }

  *(a1 + 104) += v29;
  v58 = (v29 >> 2) & 0x3FFFFFC0;
  v59 = v5 + 4 * v58;
  v60 = (v6 + v58);
  v61 = *v60;
  v145 = vld4q_s8(v60);
  v62 = vdupq_n_s8(v29);
  v145.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v145.val[3], v62), vceqq_s8(v145.val[2], v62), 1uLL), vsriq_n_s8(vceqq_s8(v145.val[1], v62), vceqq_s8(v145.val[0], v62), 1uLL), 2uLL);
  v63 = vshrn_n_s16(vsriq_n_s8(v145.val[0], v145.val[0], 4uLL), 4uLL);
  v64 = 0;
  if (v63)
  {
    v65 = __ROR8__(*&v63, v61);
    do
    {
      v66 = (__clz(__rbit64(v65)) + v61) & 0x3F;
      if (v66)
      {
        v67 = *(v59 + 4 * v66);
        if (v67 < v12)
        {
          break;
        }

        _X6 = v8 + v67;
        __asm { PRFM            #0, [X6] }

        v143[v64++] = v67;
        --v15;
      }

      v65 &= v65 - 1;
    }

    while (v65 && v15);
  }

  if (((v61 - 1) & 0x3F) != 0)
  {
    v70 = 0;
  }

  else
  {
    v70 = 63;
  }

  v71 = v70 + ((v61 - 1) & 0x3F);
  *v60 = v71;
  v60[v71] = v29;
  v72 = *(a1 + 44);
  *(a1 + 44) = v72 + 1;
  *(v59 + 4 * v71) = v72;
  if (v64)
  {
    v73 = 0;
    v74 = a3 - 7;
    v75 = 3;
    while (1)
    {
      v76 = v143[v73];
      v77 = (v8 + v76);
      if (*(v8 + v76 + v75 - 3) != *(a2 + v75 - 3))
      {
        goto LABEL_52;
      }

      if (v74 <= a2)
      {
        v79 = a2;
      }

      else
      {
        if (*v77 != *a2)
        {
          v84 = __clz(__rbit64(*a2 ^ *v77)) >> 3;
          goto LABEL_50;
        }

        v78 = 0;
        v77 = (v8 + 8 + v76);
        v79 = a2 + 4;
        while (v79 < v74)
        {
          v81 = *v77++;
          v80 = v81;
          v83 = *v79;
          v79 += 4;
          v82 = v83;
          v78 += 8;
          if (v80 != v83)
          {
            v84 = v78 + (__clz(__rbit64(v82 ^ v80)) >> 3);
            goto LABEL_50;
          }
        }
      }

      if (v79 < a3 - 3 && *v77 == *v79)
      {
        v77 = (v77 + 4);
        v79 += 2;
      }

      if (v79 < a3 - 1 && *v77 == *v79)
      {
        v77 = (v77 + 2);
        ++v79;
      }

      if (v79 < a3 && *v77 == *v79)
      {
        v79 = (v79 + 1);
      }

      v84 = v79 - a2;
LABEL_50:
      if (v84 > v75)
      {
        *a4 = v9 + 3 - v76;
        v75 = v84;
        if ((a2 + v84) == a3)
        {
          goto LABEL_55;
        }
      }

LABEL_52:
      ++v73;
      v84 = v75;
      if (v73 == v64)
      {
        goto LABEL_55;
      }
    }
  }

  v84 = 3;
LABEL_55:
  v146 = vld4q_s8(_X12);
  v85 = vdupq_n_s8(v18);
  v146.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v146.val[3], v85), vceqq_s8(v146.val[2], v85), 1uLL), vsriq_n_s8(vceqq_s8(v146.val[1], v85), vceqq_s8(v146.val[0], v85), 1uLL), 2uLL);
  v86 = vshrn_n_s16(vsriq_n_s8(v146.val[0], v146.val[0], 4uLL), 4uLL);
  if (v86)
  {
    v87 = v15 == 0;
  }

  else
  {
    v87 = 1;
  }

  if (!v87)
  {
    v88 = 0;
    v89 = *(v16 + 24);
    v90 = *(v16 + 8);
    v141 = *v16;
    v91 = *v16 - v90;
    v92 = *_X12;
    v93 = __ROR8__(*&v86, v92);
    do
    {
      v94 = (__clz(__rbit64(v93)) + v92) & 0x3F;
      if (v94)
      {
        v95 = *(_X10 + 4 * v94);
        if (v95 < v89)
        {
          break;
        }

        _X17 = v90 + v95;
        __asm { PRFM            #0, [X17] }

        v143[v88++] = v95;
        --v15;
      }

      v93 &= v93 - 1;
    }

    while (v93 && v15);
    if (v88)
    {
      v98 = *a2;
      v137 = v9 - v142 + v91 + 3;
      v99 = v143;
      do
      {
        v101 = *v99++;
        v100 = v101;
        v102 = v90 + v101;
        if (*v102 == v98)
        {
          v103 = a3;
          v104 = sub_243913D40(a2 + 2, (v102 + 4), a3, v141, (v8 + v142));
          a3 = v103;
          if (v104 + 4 > v84)
          {
            *a4 = v137 - v100;
            v84 = v104 + 4;
            if ((a2 + v104 + 4) == v103)
            {
              break;
            }
          }
        }

        --v88;
      }

      while (v88);
    }
  }

  v105 = *MEMORY[0x277D85DE8];
  return v84;
}

unint64_t sub_24393332C(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v131 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v129 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 4)
  {
    LOBYTE(v13) = 4;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBB000000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 4) & 0xFFFFFF0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v125 = a3;
    v28 = a1 + 64;
    v29 = *(a1 + 44);
    v127 = *(a1 + 52);
    v30 = *(a1 + 56);
    v31 = *(a1 + 112);
    if (v9 - v29 >= 0x181)
    {
      if (v29 <= 0xFFFFFF9F)
      {
        v98 = v29 + 96;
        v99 = 56 - v7;
        do
        {
          v100 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v29)) ^ *(a1 + 96)) >> v99;
          v101 = (v100 >> 4) & 0xFFFFFF0;
          _X23 = v5 + 4 * v101;
          __asm { PRFM            #0, [X23] }

          _X22 = v6 + v101;
          __asm { PRFM            #0, [X22] }

          v106 = *(v28 + 4 * (v29 & 7));
          *(v28 + 4 * (v29 & 7)) = v100;
          v107 = (v106 >> 4) & 0xFFFFFF0;
          v108 = v5 + 4 * v107;
          v109 = (v6 + v107);
          if (((*v109 - 1) & 0xF) != 0)
          {
            v110 = 0;
          }

          else
          {
            v110 = 15;
          }

          v111 = v110 + ((*v109 - 1) & 0xF);
          *v109 = v111;
          v109[v111] = v106;
          *(v108 + 4 * v111) = v29++;
        }

        while (v98 != v29);
        v31 = *(a1 + 112);
        v30 = *(a1 + 56);
      }

      v112 = v9 - 32;
      LODWORD(v29) = v9 - 32;
      v113 = a2 + 1 - (v8 + v112);
      if ((v113 + 1) < 8)
      {
        v114 = v113 + 1;
      }

      else
      {
        v114 = 8;
      }

      if (a2 + 1 >= v8 + v112)
      {
        v115 = v114;
      }

      else
      {
        v115 = 0;
      }

      if (v112 < v115 + v112)
      {
        v116 = *(a1 + 96);
        v117 = 56 - *(a1 + 52);
        do
        {
          v118 = ((0xCF1BBCDCBB000000 * *(v8 + v112)) ^ v116) >> v117;
          v119 = (v118 >> 4) & 0xFFFFFF0;
          _X26 = v31 + 4 * v119;
          __asm { PRFM            #0, [X26] }

          _X24 = v30 + v119;
          __asm { PRFM            #0, [X24] }

          *(v28 + 4 * (v112++ & 7)) = v118;
          --v115;
        }

        while (v115);
      }
    }

    if (v29 < v9)
    {
      v32 = *(a1 + 8) + 8;
      v33 = 56 - *(a1 + 52);
      v29 = v29;
      do
      {
        v34 = ((0xCF1BBCDCBB000000 * *(v32 + v29)) ^ *(a1 + 96)) >> v33;
        v35 = (v34 >> 4) & 0xFFFFFF0;
        _X26 = v31 + 4 * v35;
        __asm { PRFM            #0, [X26] }

        _X24 = v30 + v35;
        __asm { PRFM            #0, [X24] }

        v40 = *(v28 + 4 * (v29 & 7));
        *(v28 + 4 * (v29 & 7)) = v34;
        v41 = (v40 >> 4) & 0xFFFFFF0;
        v42 = v31 + 4 * v41;
        v43 = (v30 + v41);
        if (((*v43 - 1) & 0xF) != 0)
        {
          v44 = 0;
        }

        else
        {
          v44 = 15;
        }

        v45 = v44 + ((*v43 - 1) & 0xF);
        *v43 = v45;
        v43[v45] = v40;
        *(v42 + 4 * v45) = v29++;
      }

      while (v29 < v9);
    }

    *(a1 + 44) = v9;
    v46 = ((0xCF1BBCDCBB000000 * *(v8 + v9 + 8)) ^ v14) >> (56 - v127);
    v47 = (v46 >> 4) & 0xFFFFFF0;
    _X2 = v5 + 4 * v47;
    __asm { PRFM            #0, [X2] }

    _X17 = v6 + v47;
    __asm { PRFM            #0, [X17] }

    LODWORD(_X17) = *(v28 + 4 * (v9 & 7));
    *(v28 + 4 * (v9 & 7)) = v46;
    a3 = v125;
  }

  *(a1 + 104) += _X17;
  v51 = (_X17 >> 4) & 0xFFFFFF0;
  v52 = v5 + 4 * v51;
  v53 = (v6 + v51);
  v54 = *v53;
  v55 = __ROR8__(vshrn_n_s16(vceqq_s8(*v53, vdupq_n_s8(_X17)), 4uLL), 4 * v53->i8[0]) & 0x8888888888888888;
  if (v55)
  {
    v56 = 0;
    v57 = (4 * v53->i8[0]);
    do
    {
      v58 = ((__clz(__rbit64(v55)) + v57) >> 2) & 0xF;
      if (v58)
      {
        v59 = *(v52 + 4 * v58);
        if (v59 < v12)
        {
          break;
        }

        _X7 = v8 + v59;
        __asm { PRFM            #0, [X7] }

        v130[v56++] = v59;
        --v15;
      }

      v55 &= v55 - 1;
    }

    while (v55 && v15);
  }

  else
  {
    v56 = 0;
  }

  if (((v54 - 1) & 0xF) != 0)
  {
    v62 = 0;
  }

  else
  {
    v62 = 15;
  }

  v63 = v62 + ((v54 - 1) & 0xF);
  v53->i8[0] = v63;
  v53->i8[v63] = _X17;
  v64 = *(a1 + 44);
  *(a1 + 44) = v64 + 1;
  *(v52 + 4 * v63) = v64;
  if (v56)
  {
    v65 = 0;
    v66 = a3 - 7;
    v67 = 3;
    while (1)
    {
      v68 = v130[v65];
      v69 = (v8 + v68);
      if (*(v8 + v68 + v67 - 3) != *(a2 + v67 - 3))
      {
        goto LABEL_54;
      }

      if (v66 <= a2)
      {
        v71 = a2;
      }

      else
      {
        if (*v69 != *a2)
        {
          v76 = __clz(__rbit64(*a2 ^ *v69)) >> 3;
          goto LABEL_52;
        }

        v70 = 0;
        v69 = (v8 + 8 + v68);
        v71 = a2 + 4;
        while (v71 < v66)
        {
          v73 = *v69++;
          v72 = v73;
          v75 = *v71;
          v71 += 4;
          v74 = v75;
          v70 += 8;
          if (v72 != v75)
          {
            v76 = v70 + (__clz(__rbit64(v74 ^ v72)) >> 3);
            goto LABEL_52;
          }
        }
      }

      if (v71 < a3 - 3 && *v69 == *v71)
      {
        v69 = (v69 + 4);
        v71 += 2;
      }

      if (v71 < a3 - 1 && *v69 == *v71)
      {
        v69 = (v69 + 2);
        ++v71;
      }

      if (v71 < a3 && *v69 == *v71)
      {
        v71 = (v71 + 1);
      }

      v76 = v71 - a2;
LABEL_52:
      if (v76 > v67)
      {
        *a4 = v9 + 3 - v68;
        v67 = v76;
        if ((a2 + v76) == a3)
        {
          goto LABEL_57;
        }
      }

LABEL_54:
      ++v65;
      v76 = v67;
      if (v65 == v56)
      {
        goto LABEL_57;
      }
    }
  }

  v76 = 3;
LABEL_57:
  v77 = 4 * _X13->i8[0];
  v78 = __ROR8__(vshrn_n_s16(vceqq_s8(*_X13, vdupq_n_s8(v18)), 4uLL), v77) & 0x8888888888888888;
  if (v78)
  {
    v79 = v15 == 0;
  }

  else
  {
    v79 = 1;
  }

  if (!v79)
  {
    v80 = 0;
    v81 = *(v16 + 24);
    v82 = *(v16 + 8);
    v128 = *v16;
    v83 = *v16 - v82;
    v84 = v77 & 0xFC;
    do
    {
      v85 = ((__clz(__rbit64(v78)) + v84) >> 2) & 0xF;
      if (v85)
      {
        v86 = *(_X10 + 4 * v85);
        if (v86 < v81)
        {
          break;
        }

        _X17 = v82 + v86;
        __asm { PRFM            #0, [X17] }

        v130[v80++] = v86;
        --v15;
      }

      v78 &= v78 - 1;
    }

    while (v78 && v15);
    if (v80)
    {
      v89 = *a2;
      v124 = v9 - v129 + v83 + 3;
      v90 = v130;
      do
      {
        v92 = *v90++;
        v91 = v92;
        v93 = v82 + v92;
        if (*v93 == v89)
        {
          v94 = a3;
          v95 = sub_243913D40(a2 + 2, (v93 + 4), a3, v128, (v8 + v129));
          a3 = v94;
          if (v95 + 4 > v76)
          {
            *a4 = v124 - v91;
            v76 = v95 + 4;
            if ((a2 + v95 + 4) == v94)
            {
              break;
            }
          }
        }

        --v80;
      }

      while (v80);
    }
  }

  v96 = *MEMORY[0x277D85DE8];
  return v76;
}

unint64_t sub_2439339D0(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v138 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v136 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 5)
  {
    LOBYTE(v13) = 5;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBB000000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 3) & 0x1FFFFFE0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v132 = a3;
    v29 = a1 + 64;
    v30 = *(a1 + 44);
    v134 = *(a1 + 52);
    v31 = *(a1 + 56);
    v32 = *(a1 + 112);
    if (v9 - v30 >= 0x181)
    {
      if (v30 <= 0xFFFFFF9F)
      {
        v103 = v30 + 96;
        v104 = 56 - v7;
        do
        {
          v105 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v30)) ^ *(a1 + 96)) >> v104;
          v106 = (v105 >> 3) & 0x1FFFFFE0;
          _X23 = v5 + 4 * v106;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v106;
          __asm { PRFM            #0, [X22] }

          v112 = *(v29 + 4 * (v30 & 7));
          *(v29 + 4 * (v30 & 7)) = v105;
          v113 = (v112 >> 3) & 0x1FFFFFE0;
          v114 = v5 + 4 * v113;
          v115 = (v6 + v113);
          if (((*v115 - 1) & 0x1F) != 0)
          {
            v116 = 0;
          }

          else
          {
            v116 = 31;
          }

          v117 = v116 + ((*v115 - 1) & 0x1F);
          *v115 = v117;
          v115[v117] = v112;
          *(v114 + 4 * v117) = v30++;
        }

        while (v103 != v30);
        v32 = *(a1 + 112);
        v31 = *(a1 + 56);
      }

      v118 = v9 - 32;
      LODWORD(v30) = v9 - 32;
      v119 = a2 + 1 - (v8 + v118);
      if ((v119 + 1) < 8)
      {
        v120 = v119 + 1;
      }

      else
      {
        v120 = 8;
      }

      if (a2 + 1 >= v8 + v118)
      {
        v121 = v120;
      }

      else
      {
        v121 = 0;
      }

      if (v118 < v121 + v118)
      {
        v122 = *(a1 + 96);
        v123 = 56 - *(a1 + 52);
        do
        {
          v124 = ((0xCF1BBCDCBB000000 * *(v8 + v118)) ^ v122) >> v123;
          v125 = (v124 >> 3) & 0x1FFFFFE0;
          _X26 = v32 + 4 * v125;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v31 + v125;
          __asm { PRFM            #0, [X24] }

          *(v29 + 4 * (v118++ & 7)) = v124;
          --v121;
        }

        while (v121);
      }
    }

    if (v30 < v9)
    {
      v33 = *(a1 + 8) + 8;
      v34 = 56 - *(a1 + 52);
      v30 = v30;
      do
      {
        v35 = ((0xCF1BBCDCBB000000 * *(v33 + v30)) ^ *(a1 + 96)) >> v34;
        v36 = (v35 >> 3) & 0x1FFFFFE0;
        _X26 = v32 + 4 * v36;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v31 + v36;
        __asm { PRFM            #0, [X24] }

        v42 = *(v29 + 4 * (v30 & 7));
        *(v29 + 4 * (v30 & 7)) = v35;
        v43 = (v42 >> 3) & 0x1FFFFFE0;
        v44 = v32 + 4 * v43;
        v45 = (v31 + v43);
        if (((*v45 - 1) & 0x1F) != 0)
        {
          v46 = 0;
        }

        else
        {
          v46 = 31;
        }

        v47 = v46 + ((*v45 - 1) & 0x1F);
        *v45 = v47;
        v45[v47] = v42;
        *(v44 + 4 * v47) = v30++;
      }

      while (v30 < v9);
    }

    *(a1 + 44) = v9;
    v48 = ((0xCF1BBCDCBB000000 * *(v8 + v9 + 8)) ^ v14) >> (56 - v134);
    v49 = (v48 >> 3) & 0x1FFFFFE0;
    _X2 = v5 + 4 * v49;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v49;
    __asm { PRFM            #0, [X17] }

    LODWORD(_X17) = *(v29 + 4 * (v9 & 7));
    *(v29 + 4 * (v9 & 7)) = v48;
    a3 = v132;
  }

  *(a1 + 104) += _X17;
  v54 = (_X17 >> 3) & 0x1FFFFFE0;
  v55 = v5 + 4 * v54;
  v56 = (v6 + v54);
  v139 = vld2q_s16(v56);
  v57 = *v56;
  v58 = vdupq_n_s8(_X17);
  v59 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v58, v139.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v58, v139.val[1]), 6uLL), 4uLL), 2 * *v56) & 0x5555555555555555;
  if (v59)
  {
    v60 = 0;
    v61 = (2 * *v56);
    do
    {
      v62 = ((__clz(__rbit64(v59)) + v61) >> 1) & 0x1F;
      if (v62)
      {
        v63 = *(v55 + 4 * v62);
        if (v63 < v12)
        {
          break;
        }

        _X7 = v8 + v63;
        __asm { PRFM            #0, [X7] }

        v137[v60++] = v63;
        --v15;
      }

      v59 &= v59 - 1;
    }

    while (v59 && v15);
  }

  else
  {
    v60 = 0;
  }

  if (((v57 - 1) & 0x1F) != 0)
  {
    v66 = 0;
  }

  else
  {
    v66 = 31;
  }

  v67 = v66 + ((v57 - 1) & 0x1F);
  *v56 = v67;
  *(v56 + v67) = _X17;
  v68 = *(a1 + 44);
  *(a1 + 44) = v68 + 1;
  *(v55 + 4 * v67) = v68;
  if (v60)
  {
    v69 = 0;
    v70 = a3 - 7;
    v71 = 3;
    while (1)
    {
      v72 = v137[v69];
      v73 = (v8 + v72);
      if (*(v8 + v72 + v71 - 3) != *(a2 + v71 - 3))
      {
        goto LABEL_54;
      }

      if (v70 <= a2)
      {
        v75 = a2;
      }

      else
      {
        if (*v73 != *a2)
        {
          v80 = __clz(__rbit64(*a2 ^ *v73)) >> 3;
          goto LABEL_52;
        }

        v74 = 0;
        v73 = (v8 + 8 + v72);
        v75 = a2 + 4;
        while (v75 < v70)
        {
          v77 = *v73++;
          v76 = v77;
          v79 = *v75;
          v75 += 4;
          v78 = v79;
          v74 += 8;
          if (v76 != v79)
          {
            v80 = v74 + (__clz(__rbit64(v78 ^ v76)) >> 3);
            goto LABEL_52;
          }
        }
      }

      if (v75 < a3 - 3 && *v73 == *v75)
      {
        v73 = (v73 + 4);
        v75 += 2;
      }

      if (v75 < a3 - 1 && *v73 == *v75)
      {
        v73 = (v73 + 2);
        ++v75;
      }

      if (v75 < a3 && *v73 == *v75)
      {
        v75 = (v75 + 1);
      }

      v80 = v75 - a2;
LABEL_52:
      if (v80 > v71)
      {
        *a4 = v9 + 3 - v72;
        v71 = v80;
        if ((a2 + v80) == a3)
        {
          goto LABEL_57;
        }
      }

LABEL_54:
      ++v69;
      v80 = v71;
      if (v69 == v60)
      {
        goto LABEL_57;
      }
    }
  }

  v80 = 3;
LABEL_57:
  v81 = 2 * *_X13;
  v140 = vld2q_s16(_X13);
  v82 = vdupq_n_s8(v18);
  v83 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v82, v140.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v82, v140.val[1]), 6uLL), 4uLL), v81) & 0x5555555555555555;
  if (v83)
  {
    v84 = v15 == 0;
  }

  else
  {
    v84 = 1;
  }

  if (!v84)
  {
    v85 = 0;
    v86 = *(v16 + 24);
    v87 = *(v16 + 8);
    v135 = *v16;
    v88 = *v16 - v87;
    v89 = v81 & 0xFE;
    do
    {
      v90 = ((__clz(__rbit64(v83)) + v89) >> 1) & 0x1F;
      if (v90)
      {
        v91 = *(_X10 + 4 * v90);
        if (v91 < v86)
        {
          break;
        }

        _X17 = v87 + v91;
        __asm { PRFM            #0, [X17] }

        v137[v85++] = v91;
        --v15;
      }

      v83 &= v83 - 1;
    }

    while (v83 && v15);
    if (v85)
    {
      v94 = *a2;
      v131 = v9 - v136 + v88 + 3;
      v95 = v137;
      do
      {
        v97 = *v95++;
        v96 = v97;
        v98 = v87 + v97;
        if (*v98 == v94)
        {
          v99 = a3;
          v100 = sub_243913D40(a2 + 2, (v98 + 4), a3, v135, (v8 + v136));
          a3 = v99;
          if (v100 + 4 > v80)
          {
            *a4 = v131 - v96;
            v80 = v100 + 4;
            if ((a2 + v100 + 4) == v99)
            {
              break;
            }
          }
        }

        --v85;
      }

      while (v85);
    }
  }

  v101 = *MEMORY[0x277D85DE8];
  return v80;
}

unint64_t sub_24393409C(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v143 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v141 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 6)
  {
    LOBYTE(v13) = 6;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBB000000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 2) & 0x3FFFFFC0;
  _X12 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X12]
    PRFM            #0, [X12,#0x20]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v137 = a3;
    v30 = a1 + 64;
    v31 = *(a1 + 44);
    v139 = *(a1 + 52);
    v32 = *(a1 + 56);
    v33 = *(a1 + 112);
    if (v9 - v31 >= 0x181)
    {
      if (v31 <= 0xFFFFFF9F)
      {
        v106 = v31 + 96;
        v107 = 56 - v7;
        do
        {
          v108 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v31)) ^ *(a1 + 96)) >> v107;
          v109 = (v108 >> 2) & 0x3FFFFFC0;
          _X23 = v5 + 4 * v109;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v109;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          v116 = *(v30 + 4 * (v31 & 7));
          *(v30 + 4 * (v31 & 7)) = v108;
          v117 = (v116 >> 2) & 0x3FFFFFC0;
          v118 = v5 + 4 * v117;
          v119 = (v6 + v117);
          if (((*v119 - 1) & 0x3F) != 0)
          {
            v120 = 0;
          }

          else
          {
            v120 = 63;
          }

          v121 = v120 + ((*v119 - 1) & 0x3F);
          *v119 = v121;
          v119[v121] = v116;
          *(v118 + 4 * v121) = v31++;
        }

        while (v106 != v31);
        v33 = *(a1 + 112);
        v32 = *(a1 + 56);
      }

      v122 = v9 - 32;
      LODWORD(v31) = v9 - 32;
      v123 = a2 + 1 - (v8 + v122);
      if ((v123 + 1) < 8)
      {
        v124 = v123 + 1;
      }

      else
      {
        v124 = 8;
      }

      if (a2 + 1 >= v8 + v122)
      {
        v125 = v124;
      }

      else
      {
        v125 = 0;
      }

      if (v122 < v125 + v122)
      {
        v126 = *(a1 + 96);
        v127 = 56 - *(a1 + 52);
        do
        {
          v128 = ((0xCF1BBCDCBB000000 * *(v8 + v122)) ^ v126) >> v127;
          v129 = (v128 >> 2) & 0x3FFFFFC0;
          _X26 = v33 + 4 * v129;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v32 + v129;
          __asm
          {
            PRFM            #0, [X24]
            PRFM            #0, [X24,#0x20]
          }

          *(v30 + 4 * (v122++ & 7)) = v128;
          --v125;
        }

        while (v125);
      }
    }

    if (v31 < v9)
    {
      v34 = *(a1 + 8) + 8;
      v35 = 56 - *(a1 + 52);
      v31 = v31;
      do
      {
        v36 = ((0xCF1BBCDCBB000000 * *(v34 + v31)) ^ *(a1 + 96)) >> v35;
        v37 = (v36 >> 2) & 0x3FFFFFC0;
        _X26 = v33 + 4 * v37;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v32 + v37;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x20]
        }

        v44 = *(v30 + 4 * (v31 & 7));
        *(v30 + 4 * (v31 & 7)) = v36;
        v45 = (v44 >> 2) & 0x3FFFFFC0;
        v46 = v33 + 4 * v45;
        v47 = (v32 + v45);
        if (((*v47 - 1) & 0x3F) != 0)
        {
          v48 = 0;
        }

        else
        {
          v48 = 63;
        }

        v49 = v48 + ((*v47 - 1) & 0x3F);
        *v47 = v49;
        v47[v49] = v44;
        *(v46 + 4 * v49) = v31++;
      }

      while (v31 < v9);
    }

    *(a1 + 44) = v9;
    v50 = ((0xCF1BBCDCBB000000 * *(v8 + v9 + 8)) ^ v14) >> (56 - v139);
    v51 = (v50 >> 2) & 0x3FFFFFC0;
    _X2 = v5 + 4 * v51;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v51;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x20]
    }

    LODWORD(_X17) = *(v30 + 4 * (v9 & 7));
    *(v30 + 4 * (v9 & 7)) = v50;
    a3 = v137;
  }

  *(a1 + 104) += _X17;
  v57 = (_X17 >> 2) & 0x3FFFFFC0;
  v58 = v5 + 4 * v57;
  v59 = (v6 + v57);
  v60 = *v59;
  v144 = vld4q_s8(v59);
  v61 = vdupq_n_s8(_X17);
  v144.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v144.val[3], v61), vceqq_s8(v144.val[2], v61), 1uLL), vsriq_n_s8(vceqq_s8(v144.val[1], v61), vceqq_s8(v144.val[0], v61), 1uLL), 2uLL);
  v62 = vshrn_n_s16(vsriq_n_s8(v144.val[0], v144.val[0], 4uLL), 4uLL);
  v63 = 0;
  if (v62)
  {
    v64 = __ROR8__(*&v62, v60);
    do
    {
      v65 = (__clz(__rbit64(v64)) + v60) & 0x3F;
      if (v65)
      {
        v66 = *(v58 + 4 * v65);
        if (v66 < v12)
        {
          break;
        }

        _X6 = v8 + v66;
        __asm { PRFM            #0, [X6] }

        v142[v63++] = v66;
        --v15;
      }

      v64 &= v64 - 1;
    }

    while (v64 && v15);
  }

  if (((v60 - 1) & 0x3F) != 0)
  {
    v69 = 0;
  }

  else
  {
    v69 = 63;
  }

  v70 = v69 + ((v60 - 1) & 0x3F);
  *v59 = v70;
  v59[v70] = _X17;
  v71 = *(a1 + 44);
  *(a1 + 44) = v71 + 1;
  *(v58 + 4 * v70) = v71;
  if (v63)
  {
    v72 = 0;
    v73 = a3 - 7;
    v74 = 3;
    while (1)
    {
      v75 = v142[v72];
      v76 = (v8 + v75);
      if (*(v8 + v75 + v74 - 3) != *(a2 + v74 - 3))
      {
        goto LABEL_52;
      }

      if (v73 <= a2)
      {
        v78 = a2;
      }

      else
      {
        if (*v76 != *a2)
        {
          v83 = __clz(__rbit64(*a2 ^ *v76)) >> 3;
          goto LABEL_50;
        }

        v77 = 0;
        v76 = (v8 + 8 + v75);
        v78 = a2 + 4;
        while (v78 < v73)
        {
          v80 = *v76++;
          v79 = v80;
          v82 = *v78;
          v78 += 4;
          v81 = v82;
          v77 += 8;
          if (v79 != v82)
          {
            v83 = v77 + (__clz(__rbit64(v81 ^ v79)) >> 3);
            goto LABEL_50;
          }
        }
      }

      if (v78 < a3 - 3 && *v76 == *v78)
      {
        v76 = (v76 + 4);
        v78 += 2;
      }

      if (v78 < a3 - 1 && *v76 == *v78)
      {
        v76 = (v76 + 2);
        ++v78;
      }

      if (v78 < a3 && *v76 == *v78)
      {
        v78 = (v78 + 1);
      }

      v83 = v78 - a2;
LABEL_50:
      if (v83 > v74)
      {
        *a4 = v9 + 3 - v75;
        v74 = v83;
        if ((a2 + v83) == a3)
        {
          goto LABEL_55;
        }
      }

LABEL_52:
      ++v72;
      v83 = v74;
      if (v72 == v63)
      {
        goto LABEL_55;
      }
    }
  }

  v83 = 3;
LABEL_55:
  v145 = vld4q_s8(_X12);
  v84 = vdupq_n_s8(v18);
  v145.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v145.val[3], v84), vceqq_s8(v145.val[2], v84), 1uLL), vsriq_n_s8(vceqq_s8(v145.val[1], v84), vceqq_s8(v145.val[0], v84), 1uLL), 2uLL);
  v85 = vshrn_n_s16(vsriq_n_s8(v145.val[0], v145.val[0], 4uLL), 4uLL);
  if (v85)
  {
    v86 = v15 == 0;
  }

  else
  {
    v86 = 1;
  }

  if (!v86)
  {
    v87 = 0;
    v88 = *(v16 + 24);
    v89 = *(v16 + 8);
    v140 = *v16;
    v90 = *v16 - v89;
    v91 = *_X12;
    v92 = __ROR8__(*&v85, v91);
    do
    {
      v93 = (__clz(__rbit64(v92)) + v91) & 0x3F;
      if (v93)
      {
        v94 = *(_X10 + 4 * v93);
        if (v94 < v88)
        {
          break;
        }

        _X17 = v89 + v94;
        __asm { PRFM            #0, [X17] }

        v142[v87++] = v94;
        --v15;
      }

      v92 &= v92 - 1;
    }

    while (v92 && v15);
    if (v87)
    {
      v97 = *a2;
      v136 = v9 - v141 + v90 + 3;
      v98 = v142;
      do
      {
        v100 = *v98++;
        v99 = v100;
        v101 = v89 + v100;
        if (*v101 == v97)
        {
          v102 = a3;
          v103 = sub_243913D40(a2 + 2, (v101 + 4), a3, v140, (v8 + v141));
          a3 = v102;
          if (v103 + 4 > v83)
          {
            *a4 = v136 - v99;
            v83 = v103 + 4;
            if ((a2 + v103 + 4) == v102)
            {
              break;
            }
          }
        }

        --v87;
      }

      while (v87);
    }
  }

  v104 = *MEMORY[0x277D85DE8];
  return v83;
}

unint64_t sub_24393477C(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v131 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v129 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 4)
  {
    LOBYTE(v13) = 4;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBF9B0000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 4) & 0xFFFFFF0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v125 = a3;
    v28 = a1 + 64;
    v29 = *(a1 + 44);
    v127 = *(a1 + 52);
    v30 = *(a1 + 56);
    v31 = *(a1 + 112);
    if (v9 - v29 >= 0x181)
    {
      if (v29 <= 0xFFFFFF9F)
      {
        v98 = v29 + 96;
        v99 = 56 - v7;
        do
        {
          v100 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v29)) ^ *(a1 + 96)) >> v99;
          v101 = (v100 >> 4) & 0xFFFFFF0;
          _X23 = v5 + 4 * v101;
          __asm { PRFM            #0, [X23] }

          _X22 = v6 + v101;
          __asm { PRFM            #0, [X22] }

          v106 = *(v28 + 4 * (v29 & 7));
          *(v28 + 4 * (v29 & 7)) = v100;
          v107 = (v106 >> 4) & 0xFFFFFF0;
          v108 = v5 + 4 * v107;
          v109 = (v6 + v107);
          if (((*v109 - 1) & 0xF) != 0)
          {
            v110 = 0;
          }

          else
          {
            v110 = 15;
          }

          v111 = v110 + ((*v109 - 1) & 0xF);
          *v109 = v111;
          v109[v111] = v106;
          *(v108 + 4 * v111) = v29++;
        }

        while (v98 != v29);
        v31 = *(a1 + 112);
        v30 = *(a1 + 56);
      }

      v112 = v9 - 32;
      LODWORD(v29) = v9 - 32;
      v113 = a2 + 1 - (v8 + v112);
      if ((v113 + 1) < 8)
      {
        v114 = v113 + 1;
      }

      else
      {
        v114 = 8;
      }

      if (a2 + 1 >= v8 + v112)
      {
        v115 = v114;
      }

      else
      {
        v115 = 0;
      }

      if (v112 < v115 + v112)
      {
        v116 = *(a1 + 96);
        v117 = 56 - *(a1 + 52);
        do
        {
          v118 = ((0xCF1BBCDCBF9B0000 * *(v8 + v112)) ^ v116) >> v117;
          v119 = (v118 >> 4) & 0xFFFFFF0;
          _X26 = v31 + 4 * v119;
          __asm { PRFM            #0, [X26] }

          _X24 = v30 + v119;
          __asm { PRFM            #0, [X24] }

          *(v28 + 4 * (v112++ & 7)) = v118;
          --v115;
        }

        while (v115);
      }
    }

    if (v29 < v9)
    {
      v32 = *(a1 + 8) + 8;
      v33 = 56 - *(a1 + 52);
      v29 = v29;
      do
      {
        v34 = ((0xCF1BBCDCBF9B0000 * *(v32 + v29)) ^ *(a1 + 96)) >> v33;
        v35 = (v34 >> 4) & 0xFFFFFF0;
        _X26 = v31 + 4 * v35;
        __asm { PRFM            #0, [X26] }

        _X24 = v30 + v35;
        __asm { PRFM            #0, [X24] }

        v40 = *(v28 + 4 * (v29 & 7));
        *(v28 + 4 * (v29 & 7)) = v34;
        v41 = (v40 >> 4) & 0xFFFFFF0;
        v42 = v31 + 4 * v41;
        v43 = (v30 + v41);
        if (((*v43 - 1) & 0xF) != 0)
        {
          v44 = 0;
        }

        else
        {
          v44 = 15;
        }

        v45 = v44 + ((*v43 - 1) & 0xF);
        *v43 = v45;
        v43[v45] = v40;
        *(v42 + 4 * v45) = v29++;
      }

      while (v29 < v9);
    }

    *(a1 + 44) = v9;
    v46 = ((0xCF1BBCDCBF9B0000 * *(v8 + v9 + 8)) ^ v14) >> (56 - v127);
    v47 = (v46 >> 4) & 0xFFFFFF0;
    _X2 = v5 + 4 * v47;
    __asm { PRFM            #0, [X2] }

    _X17 = v6 + v47;
    __asm { PRFM            #0, [X17] }

    LODWORD(_X17) = *(v28 + 4 * (v9 & 7));
    *(v28 + 4 * (v9 & 7)) = v46;
    a3 = v125;
  }

  *(a1 + 104) += _X17;
  v51 = (_X17 >> 4) & 0xFFFFFF0;
  v52 = v5 + 4 * v51;
  v53 = (v6 + v51);
  v54 = *v53;
  v55 = __ROR8__(vshrn_n_s16(vceqq_s8(*v53, vdupq_n_s8(_X17)), 4uLL), 4 * v53->i8[0]) & 0x8888888888888888;
  if (v55)
  {
    v56 = 0;
    v57 = (4 * v53->i8[0]);
    do
    {
      v58 = ((__clz(__rbit64(v55)) + v57) >> 2) & 0xF;
      if (v58)
      {
        v59 = *(v52 + 4 * v58);
        if (v59 < v12)
        {
          break;
        }

        _X7 = v8 + v59;
        __asm { PRFM            #0, [X7] }

        v130[v56++] = v59;
        --v15;
      }

      v55 &= v55 - 1;
    }

    while (v55 && v15);
  }

  else
  {
    v56 = 0;
  }

  if (((v54 - 1) & 0xF) != 0)
  {
    v62 = 0;
  }

  else
  {
    v62 = 15;
  }

  v63 = v62 + ((v54 - 1) & 0xF);
  v53->i8[0] = v63;
  v53->i8[v63] = _X17;
  v64 = *(a1 + 44);
  *(a1 + 44) = v64 + 1;
  *(v52 + 4 * v63) = v64;
  if (v56)
  {
    v65 = 0;
    v66 = a3 - 7;
    v67 = 3;
    while (1)
    {
      v68 = v130[v65];
      v69 = (v8 + v68);
      if (*(v8 + v68 + v67 - 3) != *(a2 + v67 - 3))
      {
        goto LABEL_54;
      }

      if (v66 <= a2)
      {
        v71 = a2;
      }

      else
      {
        if (*v69 != *a2)
        {
          v76 = __clz(__rbit64(*a2 ^ *v69)) >> 3;
          goto LABEL_52;
        }

        v70 = 0;
        v69 = (v8 + 8 + v68);
        v71 = a2 + 4;
        while (v71 < v66)
        {
          v73 = *v69++;
          v72 = v73;
          v75 = *v71;
          v71 += 4;
          v74 = v75;
          v70 += 8;
          if (v72 != v75)
          {
            v76 = v70 + (__clz(__rbit64(v74 ^ v72)) >> 3);
            goto LABEL_52;
          }
        }
      }

      if (v71 < a3 - 3 && *v69 == *v71)
      {
        v69 = (v69 + 4);
        v71 += 2;
      }

      if (v71 < a3 - 1 && *v69 == *v71)
      {
        v69 = (v69 + 2);
        ++v71;
      }

      if (v71 < a3 && *v69 == *v71)
      {
        v71 = (v71 + 1);
      }

      v76 = v71 - a2;
LABEL_52:
      if (v76 > v67)
      {
        *a4 = v9 + 3 - v68;
        v67 = v76;
        if ((a2 + v76) == a3)
        {
          goto LABEL_57;
        }
      }

LABEL_54:
      ++v65;
      v76 = v67;
      if (v65 == v56)
      {
        goto LABEL_57;
      }
    }
  }

  v76 = 3;
LABEL_57:
  v77 = 4 * _X13->i8[0];
  v78 = __ROR8__(vshrn_n_s16(vceqq_s8(*_X13, vdupq_n_s8(v18)), 4uLL), v77) & 0x8888888888888888;
  if (v78)
  {
    v79 = v15 == 0;
  }

  else
  {
    v79 = 1;
  }

  if (!v79)
  {
    v80 = 0;
    v81 = *(v16 + 24);
    v82 = *(v16 + 8);
    v128 = *v16;
    v83 = *v16 - v82;
    v84 = v77 & 0xFC;
    do
    {
      v85 = ((__clz(__rbit64(v78)) + v84) >> 2) & 0xF;
      if (v85)
      {
        v86 = *(_X10 + 4 * v85);
        if (v86 < v81)
        {
          break;
        }

        _X17 = v82 + v86;
        __asm { PRFM            #0, [X17] }

        v130[v80++] = v86;
        --v15;
      }

      v78 &= v78 - 1;
    }

    while (v78 && v15);
    if (v80)
    {
      v89 = *a2;
      v124 = v9 - v129 + v83 + 3;
      v90 = v130;
      do
      {
        v92 = *v90++;
        v91 = v92;
        v93 = v82 + v92;
        if (*v93 == v89)
        {
          v94 = a3;
          v95 = sub_243913D40(a2 + 2, (v93 + 4), a3, v128, (v8 + v129));
          a3 = v94;
          if (v95 + 4 > v76)
          {
            *a4 = v124 - v91;
            v76 = v95 + 4;
            if ((a2 + v95 + 4) == v94)
            {
              break;
            }
          }
        }

        --v80;
      }

      while (v80);
    }
  }

  v96 = *MEMORY[0x277D85DE8];
  return v76;
}

unint64_t sub_243934E20(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v138 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v136 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 5)
  {
    LOBYTE(v13) = 5;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBF9B0000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 3) & 0x1FFFFFE0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v132 = a3;
    v29 = a1 + 64;
    v30 = *(a1 + 44);
    v134 = *(a1 + 52);
    v31 = *(a1 + 56);
    v32 = *(a1 + 112);
    if (v9 - v30 >= 0x181)
    {
      if (v30 <= 0xFFFFFF9F)
      {
        v103 = v30 + 96;
        v104 = 56 - v7;
        do
        {
          v105 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v30)) ^ *(a1 + 96)) >> v104;
          v106 = (v105 >> 3) & 0x1FFFFFE0;
          _X23 = v5 + 4 * v106;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v106;
          __asm { PRFM            #0, [X22] }

          v112 = *(v29 + 4 * (v30 & 7));
          *(v29 + 4 * (v30 & 7)) = v105;
          v113 = (v112 >> 3) & 0x1FFFFFE0;
          v114 = v5 + 4 * v113;
          v115 = (v6 + v113);
          if (((*v115 - 1) & 0x1F) != 0)
          {
            v116 = 0;
          }

          else
          {
            v116 = 31;
          }

          v117 = v116 + ((*v115 - 1) & 0x1F);
          *v115 = v117;
          v115[v117] = v112;
          *(v114 + 4 * v117) = v30++;
        }

        while (v103 != v30);
        v32 = *(a1 + 112);
        v31 = *(a1 + 56);
      }

      v118 = v9 - 32;
      LODWORD(v30) = v9 - 32;
      v119 = a2 + 1 - (v8 + v118);
      if ((v119 + 1) < 8)
      {
        v120 = v119 + 1;
      }

      else
      {
        v120 = 8;
      }

      if (a2 + 1 >= v8 + v118)
      {
        v121 = v120;
      }

      else
      {
        v121 = 0;
      }

      if (v118 < v121 + v118)
      {
        v122 = *(a1 + 96);
        v123 = 56 - *(a1 + 52);
        do
        {
          v124 = ((0xCF1BBCDCBF9B0000 * *(v8 + v118)) ^ v122) >> v123;
          v125 = (v124 >> 3) & 0x1FFFFFE0;
          _X26 = v32 + 4 * v125;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v31 + v125;
          __asm { PRFM            #0, [X24] }

          *(v29 + 4 * (v118++ & 7)) = v124;
          --v121;
        }

        while (v121);
      }
    }

    if (v30 < v9)
    {
      v33 = *(a1 + 8) + 8;
      v34 = 56 - *(a1 + 52);
      v30 = v30;
      do
      {
        v35 = ((0xCF1BBCDCBF9B0000 * *(v33 + v30)) ^ *(a1 + 96)) >> v34;
        v36 = (v35 >> 3) & 0x1FFFFFE0;
        _X26 = v32 + 4 * v36;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v31 + v36;
        __asm { PRFM            #0, [X24] }

        v42 = *(v29 + 4 * (v30 & 7));
        *(v29 + 4 * (v30 & 7)) = v35;
        v43 = (v42 >> 3) & 0x1FFFFFE0;
        v44 = v32 + 4 * v43;
        v45 = (v31 + v43);
        if (((*v45 - 1) & 0x1F) != 0)
        {
          v46 = 0;
        }

        else
        {
          v46 = 31;
        }

        v47 = v46 + ((*v45 - 1) & 0x1F);
        *v45 = v47;
        v45[v47] = v42;
        *(v44 + 4 * v47) = v30++;
      }

      while (v30 < v9);
    }

    *(a1 + 44) = v9;
    v48 = ((0xCF1BBCDCBF9B0000 * *(v8 + v9 + 8)) ^ v14) >> (56 - v134);
    v49 = (v48 >> 3) & 0x1FFFFFE0;
    _X2 = v5 + 4 * v49;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v49;
    __asm { PRFM            #0, [X17] }

    LODWORD(_X17) = *(v29 + 4 * (v9 & 7));
    *(v29 + 4 * (v9 & 7)) = v48;
    a3 = v132;
  }

  *(a1 + 104) += _X17;
  v54 = (_X17 >> 3) & 0x1FFFFFE0;
  v55 = v5 + 4 * v54;
  v56 = (v6 + v54);
  v139 = vld2q_s16(v56);
  v57 = *v56;
  v58 = vdupq_n_s8(_X17);
  v59 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v58, v139.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v58, v139.val[1]), 6uLL), 4uLL), 2 * *v56) & 0x5555555555555555;
  if (v59)
  {
    v60 = 0;
    v61 = (2 * *v56);
    do
    {
      v62 = ((__clz(__rbit64(v59)) + v61) >> 1) & 0x1F;
      if (v62)
      {
        v63 = *(v55 + 4 * v62);
        if (v63 < v12)
        {
          break;
        }

        _X7 = v8 + v63;
        __asm { PRFM            #0, [X7] }

        v137[v60++] = v63;
        --v15;
      }

      v59 &= v59 - 1;
    }

    while (v59 && v15);
  }

  else
  {
    v60 = 0;
  }

  if (((v57 - 1) & 0x1F) != 0)
  {
    v66 = 0;
  }

  else
  {
    v66 = 31;
  }

  v67 = v66 + ((v57 - 1) & 0x1F);
  *v56 = v67;
  *(v56 + v67) = _X17;
  v68 = *(a1 + 44);
  *(a1 + 44) = v68 + 1;
  *(v55 + 4 * v67) = v68;
  if (v60)
  {
    v69 = 0;
    v70 = a3 - 7;
    v71 = 3;
    while (1)
    {
      v72 = v137[v69];
      v73 = (v8 + v72);
      if (*(v8 + v72 + v71 - 3) != *(a2 + v71 - 3))
      {
        goto LABEL_54;
      }

      if (v70 <= a2)
      {
        v75 = a2;
      }

      else
      {
        if (*v73 != *a2)
        {
          v80 = __clz(__rbit64(*a2 ^ *v73)) >> 3;
          goto LABEL_52;
        }

        v74 = 0;
        v73 = (v8 + 8 + v72);
        v75 = a2 + 4;
        while (v75 < v70)
        {
          v77 = *v73++;
          v76 = v77;
          v79 = *v75;
          v75 += 4;
          v78 = v79;
          v74 += 8;
          if (v76 != v79)
          {
            v80 = v74 + (__clz(__rbit64(v78 ^ v76)) >> 3);
            goto LABEL_52;
          }
        }
      }

      if (v75 < a3 - 3 && *v73 == *v75)
      {
        v73 = (v73 + 4);
        v75 += 2;
      }

      if (v75 < a3 - 1 && *v73 == *v75)
      {
        v73 = (v73 + 2);
        ++v75;
      }

      if (v75 < a3 && *v73 == *v75)
      {
        v75 = (v75 + 1);
      }

      v80 = v75 - a2;
LABEL_52:
      if (v80 > v71)
      {
        *a4 = v9 + 3 - v72;
        v71 = v80;
        if ((a2 + v80) == a3)
        {
          goto LABEL_57;
        }
      }

LABEL_54:
      ++v69;
      v80 = v71;
      if (v69 == v60)
      {
        goto LABEL_57;
      }
    }
  }

  v80 = 3;
LABEL_57:
  v81 = 2 * *_X13;
  v140 = vld2q_s16(_X13);
  v82 = vdupq_n_s8(v18);
  v83 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v82, v140.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v82, v140.val[1]), 6uLL), 4uLL), v81) & 0x5555555555555555;
  if (v83)
  {
    v84 = v15 == 0;
  }

  else
  {
    v84 = 1;
  }

  if (!v84)
  {
    v85 = 0;
    v86 = *(v16 + 24);
    v87 = *(v16 + 8);
    v135 = *v16;
    v88 = *v16 - v87;
    v89 = v81 & 0xFE;
    do
    {
      v90 = ((__clz(__rbit64(v83)) + v89) >> 1) & 0x1F;
      if (v90)
      {
        v91 = *(_X10 + 4 * v90);
        if (v91 < v86)
        {
          break;
        }

        _X17 = v87 + v91;
        __asm { PRFM            #0, [X17] }

        v137[v85++] = v91;
        --v15;
      }

      v83 &= v83 - 1;
    }

    while (v83 && v15);
    if (v85)
    {
      v94 = *a2;
      v131 = v9 - v136 + v88 + 3;
      v95 = v137;
      do
      {
        v97 = *v95++;
        v96 = v97;
        v98 = v87 + v97;
        if (*v98 == v94)
        {
          v99 = a3;
          v100 = sub_243913D40(a2 + 2, (v98 + 4), a3, v135, (v8 + v136));
          a3 = v99;
          if (v100 + 4 > v80)
          {
            *a4 = v131 - v96;
            v80 = v100 + 4;
            if ((a2 + v100 + 4) == v99)
            {
              break;
            }
          }
        }

        --v85;
      }

      while (v85);
    }
  }

  v101 = *MEMORY[0x277D85DE8];
  return v80;
}

unint64_t sub_2439354EC(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v143 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v141 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 6)
  {
    LOBYTE(v13) = 6;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBF9B0000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 2) & 0x3FFFFFC0;
  _X12 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X12]
    PRFM            #0, [X12,#0x20]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v137 = a3;
    v30 = a1 + 64;
    v31 = *(a1 + 44);
    v139 = *(a1 + 52);
    v32 = *(a1 + 56);
    v33 = *(a1 + 112);
    if (v9 - v31 >= 0x181)
    {
      if (v31 <= 0xFFFFFF9F)
      {
        v106 = v31 + 96;
        v107 = 56 - v7;
        do
        {
          v108 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v31)) ^ *(a1 + 96)) >> v107;
          v109 = (v108 >> 2) & 0x3FFFFFC0;
          _X23 = v5 + 4 * v109;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v109;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          v116 = *(v30 + 4 * (v31 & 7));
          *(v30 + 4 * (v31 & 7)) = v108;
          v117 = (v116 >> 2) & 0x3FFFFFC0;
          v118 = v5 + 4 * v117;
          v119 = (v6 + v117);
          if (((*v119 - 1) & 0x3F) != 0)
          {
            v120 = 0;
          }

          else
          {
            v120 = 63;
          }

          v121 = v120 + ((*v119 - 1) & 0x3F);
          *v119 = v121;
          v119[v121] = v116;
          *(v118 + 4 * v121) = v31++;
        }

        while (v106 != v31);
        v33 = *(a1 + 112);
        v32 = *(a1 + 56);
      }

      v122 = v9 - 32;
      LODWORD(v31) = v9 - 32;
      v123 = a2 + 1 - (v8 + v122);
      if ((v123 + 1) < 8)
      {
        v124 = v123 + 1;
      }

      else
      {
        v124 = 8;
      }

      if (a2 + 1 >= v8 + v122)
      {
        v125 = v124;
      }

      else
      {
        v125 = 0;
      }

      if (v122 < v125 + v122)
      {
        v126 = *(a1 + 96);
        v127 = 56 - *(a1 + 52);
        do
        {
          v128 = ((0xCF1BBCDCBF9B0000 * *(v8 + v122)) ^ v126) >> v127;
          v129 = (v128 >> 2) & 0x3FFFFFC0;
          _X26 = v33 + 4 * v129;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v32 + v129;
          __asm
          {
            PRFM            #0, [X24]
            PRFM            #0, [X24,#0x20]
          }

          *(v30 + 4 * (v122++ & 7)) = v128;
          --v125;
        }

        while (v125);
      }
    }

    if (v31 < v9)
    {
      v34 = *(a1 + 8) + 8;
      v35 = 56 - *(a1 + 52);
      v31 = v31;
      do
      {
        v36 = ((0xCF1BBCDCBF9B0000 * *(v34 + v31)) ^ *(a1 + 96)) >> v35;
        v37 = (v36 >> 2) & 0x3FFFFFC0;
        _X26 = v33 + 4 * v37;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v32 + v37;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x20]
        }

        v44 = *(v30 + 4 * (v31 & 7));
        *(v30 + 4 * (v31 & 7)) = v36;
        v45 = (v44 >> 2) & 0x3FFFFFC0;
        v46 = v33 + 4 * v45;
        v47 = (v32 + v45);
        if (((*v47 - 1) & 0x3F) != 0)
        {
          v48 = 0;
        }

        else
        {
          v48 = 63;
        }

        v49 = v48 + ((*v47 - 1) & 0x3F);
        *v47 = v49;
        v47[v49] = v44;
        *(v46 + 4 * v49) = v31++;
      }

      while (v31 < v9);
    }

    *(a1 + 44) = v9;
    v50 = ((0xCF1BBCDCBF9B0000 * *(v8 + v9 + 8)) ^ v14) >> (56 - v139);
    v51 = (v50 >> 2) & 0x3FFFFFC0;
    _X2 = v5 + 4 * v51;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v51;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x20]
    }

    LODWORD(_X17) = *(v30 + 4 * (v9 & 7));
    *(v30 + 4 * (v9 & 7)) = v50;
    a3 = v137;
  }

  *(a1 + 104) += _X17;
  v57 = (_X17 >> 2) & 0x3FFFFFC0;
  v58 = v5 + 4 * v57;
  v59 = (v6 + v57);
  v60 = *v59;
  v144 = vld4q_s8(v59);
  v61 = vdupq_n_s8(_X17);
  v144.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v144.val[3], v61), vceqq_s8(v144.val[2], v61), 1uLL), vsriq_n_s8(vceqq_s8(v144.val[1], v61), vceqq_s8(v144.val[0], v61), 1uLL), 2uLL);
  v62 = vshrn_n_s16(vsriq_n_s8(v144.val[0], v144.val[0], 4uLL), 4uLL);
  v63 = 0;
  if (v62)
  {
    v64 = __ROR8__(*&v62, v60);
    do
    {
      v65 = (__clz(__rbit64(v64)) + v60) & 0x3F;
      if (v65)
      {
        v66 = *(v58 + 4 * v65);
        if (v66 < v12)
        {
          break;
        }

        _X6 = v8 + v66;
        __asm { PRFM            #0, [X6] }

        v142[v63++] = v66;
        --v15;
      }

      v64 &= v64 - 1;
    }

    while (v64 && v15);
  }

  if (((v60 - 1) & 0x3F) != 0)
  {
    v69 = 0;
  }

  else
  {
    v69 = 63;
  }

  v70 = v69 + ((v60 - 1) & 0x3F);
  *v59 = v70;
  v59[v70] = _X17;
  v71 = *(a1 + 44);
  *(a1 + 44) = v71 + 1;
  *(v58 + 4 * v70) = v71;
  if (v63)
  {
    v72 = 0;
    v73 = a3 - 7;
    v74 = 3;
    while (1)
    {
      v75 = v142[v72];
      v76 = (v8 + v75);
      if (*(v8 + v75 + v74 - 3) != *(a2 + v74 - 3))
      {
        goto LABEL_52;
      }

      if (v73 <= a2)
      {
        v78 = a2;
      }

      else
      {
        if (*v76 != *a2)
        {
          v83 = __clz(__rbit64(*a2 ^ *v76)) >> 3;
          goto LABEL_50;
        }

        v77 = 0;
        v76 = (v8 + 8 + v75);
        v78 = a2 + 4;
        while (v78 < v73)
        {
          v80 = *v76++;
          v79 = v80;
          v82 = *v78;
          v78 += 4;
          v81 = v82;
          v77 += 8;
          if (v79 != v82)
          {
            v83 = v77 + (__clz(__rbit64(v81 ^ v79)) >> 3);
            goto LABEL_50;
          }
        }
      }

      if (v78 < a3 - 3 && *v76 == *v78)
      {
        v76 = (v76 + 4);
        v78 += 2;
      }

      if (v78 < a3 - 1 && *v76 == *v78)
      {
        v76 = (v76 + 2);
        ++v78;
      }

      if (v78 < a3 && *v76 == *v78)
      {
        v78 = (v78 + 1);
      }

      v83 = v78 - a2;
LABEL_50:
      if (v83 > v74)
      {
        *a4 = v9 + 3 - v75;
        v74 = v83;
        if ((a2 + v83) == a3)
        {
          goto LABEL_55;
        }
      }

LABEL_52:
      ++v72;
      v83 = v74;
      if (v72 == v63)
      {
        goto LABEL_55;
      }
    }
  }

  v83 = 3;
LABEL_55:
  v145 = vld4q_s8(_X12);
  v84 = vdupq_n_s8(v18);
  v145.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v145.val[3], v84), vceqq_s8(v145.val[2], v84), 1uLL), vsriq_n_s8(vceqq_s8(v145.val[1], v84), vceqq_s8(v145.val[0], v84), 1uLL), 2uLL);
  v85 = vshrn_n_s16(vsriq_n_s8(v145.val[0], v145.val[0], 4uLL), 4uLL);
  if (v85)
  {
    v86 = v15 == 0;
  }

  else
  {
    v86 = 1;
  }

  if (!v86)
  {
    v87 = 0;
    v88 = *(v16 + 24);
    v89 = *(v16 + 8);
    v140 = *v16;
    v90 = *v16 - v89;
    v91 = *_X12;
    v92 = __ROR8__(*&v85, v91);
    do
    {
      v93 = (__clz(__rbit64(v92)) + v91) & 0x3F;
      if (v93)
      {
        v94 = *(_X10 + 4 * v93);
        if (v94 < v88)
        {
          break;
        }

        _X17 = v89 + v94;
        __asm { PRFM            #0, [X17] }

        v142[v87++] = v94;
        --v15;
      }

      v92 &= v92 - 1;
    }

    while (v92 && v15);
    if (v87)
    {
      v97 = *a2;
      v136 = v9 - v141 + v90 + 3;
      v98 = v142;
      do
      {
        v100 = *v98++;
        v99 = v100;
        v101 = v89 + v100;
        if (*v101 == v97)
        {
          v102 = a3;
          v103 = sub_243913D40(a2 + 2, (v101 + 4), a3, v140, (v8 + v141));
          a3 = v102;
          if (v103 + 4 > v83)
          {
            *a4 = v136 - v99;
            v83 = v103 + 4;
            if ((a2 + v103 + 4) == v102)
            {
              break;
            }
          }
        }

        --v87;
      }

      while (v87);
    }
  }

  v104 = *MEMORY[0x277D85DE8];
  return v83;
}

unint64_t sub_243935BCC(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 260);
  v7 = 1 << v6;
  v8 = (1 << v6) - 1;
  v9 = *(a1 + 8);
  v10 = a2 - v9;
  v11 = 1 << *(a1 + 256);
  v82 = *(a1 + 24);
  v12 = *(a1 + 28);
  if (a2 - v9 - v12 > v11 && *(a1 + 40) == 0)
  {
    v12 = a2 - v9 - v11;
  }

  _CF = v10 >= v7;
  v15 = v10 - v7;
  if (_CF)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = 1 << *(a1 + 268);
  v18 = *(a1 + 248);
  v19 = 4 * ((-1640531535 * *a2) >> (34 - *(v18 + 264)));
  v20 = *(v18 + 112);
  _X19 = (v20 + 16 * ((-1640531535 * *a2) >> (34 - *(v18 + 264))));
  __asm { PRFM            #0, [X19] }

  v25 = *(a1 + 300);
  v26 = *(a1 + 112);
  v27 = ~(-1 << v6);
  v28 = *(a1 + 44);
  v29 = 32 - *(a1 + 264);
  if (v28 <= v10)
  {
    v30 = v10;
  }

  else
  {
    v30 = v28;
  }

  do
  {
    if (v30 == v28)
    {
      break;
    }

    v31 = (-1640531535 * *(v9 + v28)) >> v29;
    *(v5 + 4 * (v28 & v27)) = *(v26 + 4 * v31);
    *(v26 + 4 * v31) = v28++;
  }

  while (!v25);
  *(a1 + 44) = v10;
  v32 = *a2;
  v33 = *(v26 + 4 * ((-1640531535 * *a2) >> v29));
  if (v33 >= v12)
  {
    v50 = a3 - 7;
    v34 = 3;
    while (1)
    {
      v51 = v33;
      v52 = (v9 + v33);
      if (*(v52 + v34 - 3) != *(a2 + v34 - 3))
      {
        goto LABEL_51;
      }

      if (v50 <= a2)
      {
        v55 = a2;
      }

      else
      {
        v53 = *v52;
        if (v53 != *a2)
        {
          v60 = __clz(__rbit64(*a2 ^ v53)) >> 3;
          goto LABEL_49;
        }

        v54 = 0;
        v52 = (v9 + 8 + v51);
        v55 = a2 + 4;
        while (v55 < v50)
        {
          v57 = *v52;
          v52 += 4;
          v56 = v57;
          v59 = *v55;
          v55 += 4;
          v58 = v59;
          v54 += 8;
          if (v56 != v59)
          {
            v60 = v54 + (__clz(__rbit64(v58 ^ v56)) >> 3);
            goto LABEL_49;
          }
        }
      }

      if (v55 < a3 - 3 && *v52 == *v55)
      {
        v52 += 2;
        v55 += 2;
      }

      if (v55 < a3 - 1 && *v52 == *v55)
      {
        ++v52;
        ++v55;
      }

      if (v55 < a3 && *v52 == *v55)
      {
        v55 = (v55 + 1);
      }

      v60 = v55 - a2;
LABEL_49:
      if (v60 > v34)
      {
        *a4 = v10 + 3 - v51;
        v34 = v60;
        if ((a2 + v60) == a3)
        {
          v34 = v60;
          goto LABEL_16;
        }
      }

LABEL_51:
      if (v51 > v16)
      {
        if (--v17)
        {
          v33 = *(v5 + 4 * (v51 & v8));
          if (v33 >= v12)
          {
            continue;
          }
        }
      }

      goto LABEL_16;
    }
  }

  v34 = 3;
LABEL_16:
  v35 = 0;
  v36 = *(v18 + 8);
  v79 = *v18;
  v37 = *v18 - v36 - v82;
  do
  {
    _X12 = v36 + _X19[v35];
    __asm { PRFM            #0, [X12] }

    ++v35;
  }

  while (v35 != 3);
  if (v17 >= 3)
  {
    v40 = 3;
  }

  else
  {
    v40 = v17;
  }

  v41 = *(v20 + 4 * v19 + 12);
  _X20 = (*(v18 + 128) + 4 * (v41 >> 8));
  __asm { PRFM            #0, [X20] }

  v81 = a3;
  v80 = v32;
  if (v17)
  {
    v74 = v40;
    v75 = v41;
    v76 = *v18 - v36 - v82;
    v77 = v10 + v37 + 3;
    v44 = v40;
    while (1)
    {
      v46 = *_X19++;
      v45 = v46;
      if (!v46)
      {
        return v34;
      }

      if (*(v36 + v45) == v32)
      {
        v47 = sub_243913D40(a2 + 2, (v36 + v45 + 4), a3, v79, (v9 + v82));
        v32 = v80;
        a3 = v81;
        v48 = v47 + 4;
        if (v47 + 4 > v34)
        {
          *a4 = (v77 - v45);
          v34 = v47 + 4;
          if ((a2 + v48) == v81)
          {
            return v48;
          }
        }
      }

      if (!--v44)
      {
        v37 = v76;
        v10 = a2 - v9;
        v49 = v74;
        LOBYTE(v41) = v75;
        goto LABEL_56;
      }
    }
  }

  v49 = 0;
LABEL_56:
  v61 = v17 - v49;
  if (v61 >= v41)
  {
    v62 = v41;
  }

  else
  {
    v62 = v61;
  }

  if (!v62)
  {
    return v34;
  }

  v63 = v62;
  v64 = _X20;
  do
  {
    v65 = *v64++;
    _X10 = v36 + v65;
    __asm { PRFM            #0, [X10] }

    --v63;
  }

  while (v63);
  v68 = v10 + v37 + 3;
  v48 = v34;
  do
  {
    v70 = *_X20++;
    v69 = v70;
    v71 = v36 + v70;
    if (*v71 == v32)
    {
      v72 = sub_243913D40(a2 + 2, (v71 + 4), a3, v79, (v9 + v82));
      v32 = v80;
      a3 = v81;
      if (v72 + 4 > v48)
      {
        *a4 = v68 - v69;
        v48 = v72 + 4;
        if ((a2 + v72 + 4) == v81)
        {
          break;
        }
      }
    }

    LODWORD(v62) = v62 - 1;
  }

  while (v62);
  return v48;
}

unint64_t sub_24393601C(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 260);
  v7 = 1 << v6;
  v8 = (1 << v6) - 1;
  v9 = *(a1 + 8);
  v10 = a2 - v9;
  v11 = 1 << *(a1 + 256);
  v83 = *(a1 + 24);
  v12 = *(a1 + 28);
  if (a2 - v9 - v12 > v11 && *(a1 + 40) == 0)
  {
    v12 = a2 - v9 - v11;
  }

  _CF = v10 >= v7;
  v15 = v10 - v7;
  if (_CF)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = 1 << *(a1 + 268);
  v18 = *(a1 + 248);
  v19 = 0xCF1BBCDCBB000000 * *a2;
  v20 = v19 >> (66 - *(v18 + 264));
  v21 = 4 * v20;
  v22 = *(v18 + 112);
  _X28 = (v22 + 16 * v20);
  __asm { PRFM            #0, [X28] }

  v27 = *(a1 + 300);
  v28 = *(a1 + 112);
  v29 = ~(-1 << v6);
  v30 = *(a1 + 44);
  v31 = 64 - *(a1 + 264);
  if (v30 <= v10)
  {
    v32 = v10;
  }

  else
  {
    v32 = v30;
  }

  do
  {
    if (v32 == v30)
    {
      break;
    }

    v33 = (0xCF1BBCDCBB000000 * *(v9 + v30)) >> v31;
    *(v5 + 4 * (v30 & v29)) = *(v28 + 4 * v33);
    *(v28 + 4 * v33) = v30++;
  }

  while (!v27);
  *(a1 + 44) = v10;
  v34 = *(v28 + 4 * (v19 >> v31));
  if (v34 >= v12)
  {
    v50 = a3 - 7;
    v35 = 3;
    while (1)
    {
      v51 = v34;
      v52 = (v9 + v34);
      if (*(v52 + v35 - 3) != *(a2 + v35 - 3))
      {
        goto LABEL_51;
      }

      if (v50 <= a2)
      {
        v55 = a2;
      }

      else
      {
        v53 = *v52;
        if (v53 != *a2)
        {
          v60 = __clz(__rbit64(*a2 ^ v53)) >> 3;
          goto LABEL_49;
        }

        v54 = 0;
        v52 = (v9 + 8 + v51);
        v55 = a2 + 4;
        while (v55 < v50)
        {
          v57 = *v52;
          v52 += 4;
          v56 = v57;
          v59 = *v55;
          v55 += 4;
          v58 = v59;
          v54 += 8;
          if (v56 != v59)
          {
            v60 = v54 + (__clz(__rbit64(v58 ^ v56)) >> 3);
            goto LABEL_49;
          }
        }
      }

      if (v55 < a3 - 3 && *v52 == *v55)
      {
        v52 += 2;
        v55 += 2;
      }

      if (v55 < a3 - 1 && *v52 == *v55)
      {
        ++v52;
        ++v55;
      }

      if (v55 < a3 && *v52 == *v55)
      {
        v55 = (v55 + 1);
      }

      v60 = v55 - a2;
LABEL_49:
      if (v60 > v35)
      {
        *a4 = v10 + 3 - v51;
        v35 = v60;
        if ((a2 + v60) == a3)
        {
          v35 = v60;
          goto LABEL_16;
        }
      }

LABEL_51:
      if (v51 > v16)
      {
        if (--v17)
        {
          v34 = *(v5 + 4 * (v51 & v8));
          if (v34 >= v12)
          {
            continue;
          }
        }
      }

      goto LABEL_16;
    }
  }

  v35 = 3;
LABEL_16:
  v78 = v10;
  v36 = 0;
  v37 = *(v18 + 8);
  v81 = *v18;
  v38 = *v18 - v37 - v83;
  do
  {
    _X12 = v37 + _X28[v36];
    __asm { PRFM            #0, [X12] }

    ++v36;
  }

  while (v36 != 3);
  if (v17 >= 3)
  {
    v41 = 3;
  }

  else
  {
    v41 = v17;
  }

  v42 = *(v22 + 4 * v21 + 12);
  _X26 = (*(v18 + 128) + 4 * (v42 >> 8));
  __asm { PRFM            #0, [X26] }

  v82 = a3;
  if (v17)
  {
    v75 = v41;
    v76 = v42;
    v77 = *v18 - v37 - v83;
    v79 = v78 + v38 + 3;
    while (1)
    {
      v46 = *_X28++;
      v45 = v46;
      if (!v46)
      {
        return v35;
      }

      if (*(v37 + v45) == *a2)
      {
        v47 = sub_243913D40(a2 + 2, (v37 + v45 + 4), a3, v81, (v9 + v83));
        a3 = v82;
        v48 = v47 + 4;
        if (v47 + 4 > v35)
        {
          *a4 = (v79 - v45);
          v35 = v47 + 4;
          if ((a2 + v48) == v82)
          {
            return v48;
          }
        }
      }

      if (!--v41)
      {
        v38 = v77;
        v49 = v75;
        LOBYTE(v42) = v76;
        goto LABEL_56;
      }
    }
  }

  v49 = 0;
LABEL_56:
  v61 = v17 - v49;
  if (v61 >= v42)
  {
    v62 = v42;
  }

  else
  {
    v62 = v61;
  }

  if (!v62)
  {
    return v35;
  }

  v63 = v62;
  v64 = _X26;
  do
  {
    v65 = *v64++;
    _X10 = v37 + v65;
    __asm { PRFM            #0, [X10] }

    --v63;
  }

  while (v63);
  v68 = *a2;
  v69 = v78 + v38 + 3;
  v48 = v35;
  do
  {
    v71 = *_X26++;
    v70 = v71;
    v72 = v37 + v71;
    if (*v72 == v68)
    {
      v73 = sub_243913D40(a2 + 2, (v72 + 4), a3, v81, (v9 + v83));
      a3 = v82;
      if (v73 + 4 > v48)
      {
        *a4 = v69 - v70;
        v48 = v73 + 4;
        if ((a2 + v73 + 4) == v82)
        {
          break;
        }
      }
    }

    LODWORD(v62) = v62 - 1;
  }

  while (v62);
  return v48;
}

unint64_t sub_243936470(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 260);
  v7 = 1 << v6;
  v8 = (1 << v6) - 1;
  v9 = *(a1 + 8);
  v10 = a2 - v9;
  v11 = 1 << *(a1 + 256);
  v83 = *(a1 + 24);
  v12 = *(a1 + 28);
  if (a2 - v9 - v12 > v11 && *(a1 + 40) == 0)
  {
    v12 = a2 - v9 - v11;
  }

  _CF = v10 >= v7;
  v15 = v10 - v7;
  if (_CF)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = 1 << *(a1 + 268);
  v18 = *(a1 + 248);
  v19 = 0xCF1BBCDCBF9B0000 * *a2;
  v20 = v19 >> (66 - *(v18 + 264));
  v21 = 4 * v20;
  v22 = *(v18 + 112);
  _X28 = (v22 + 16 * v20);
  __asm { PRFM            #0, [X28] }

  v27 = *(a1 + 300);
  v28 = *(a1 + 112);
  v29 = ~(-1 << v6);
  v30 = *(a1 + 44);
  v31 = 64 - *(a1 + 264);
  if (v30 <= v10)
  {
    v32 = v10;
  }

  else
  {
    v32 = v30;
  }

  do
  {
    if (v32 == v30)
    {
      break;
    }

    v33 = (0xCF1BBCDCBF9B0000 * *(v9 + v30)) >> v31;
    *(v5 + 4 * (v30 & v29)) = *(v28 + 4 * v33);
    *(v28 + 4 * v33) = v30++;
  }

  while (!v27);
  *(a1 + 44) = v10;
  v34 = *(v28 + 4 * (v19 >> v31));
  if (v34 >= v12)
  {
    v50 = a3 - 7;
    v35 = 3;
    while (1)
    {
      v51 = v34;
      v52 = (v9 + v34);
      if (*(v52 + v35 - 3) != *(a2 + v35 - 3))
      {
        goto LABEL_51;
      }

      if (v50 <= a2)
      {
        v55 = a2;
      }

      else
      {
        v53 = *v52;
        if (v53 != *a2)
        {
          v60 = __clz(__rbit64(*a2 ^ v53)) >> 3;
          goto LABEL_49;
        }

        v54 = 0;
        v52 = (v9 + 8 + v51);
        v55 = a2 + 4;
        while (v55 < v50)
        {
          v57 = *v52;
          v52 += 4;
          v56 = v57;
          v59 = *v55;
          v55 += 4;
          v58 = v59;
          v54 += 8;
          if (v56 != v59)
          {
            v60 = v54 + (__clz(__rbit64(v58 ^ v56)) >> 3);
            goto LABEL_49;
          }
        }
      }

      if (v55 < a3 - 3 && *v52 == *v55)
      {
        v52 += 2;
        v55 += 2;
      }

      if (v55 < a3 - 1 && *v52 == *v55)
      {
        ++v52;
        ++v55;
      }

      if (v55 < a3 && *v52 == *v55)
      {
        v55 = (v55 + 1);
      }

      v60 = v55 - a2;
LABEL_49:
      if (v60 > v35)
      {
        *a4 = v10 + 3 - v51;
        v35 = v60;
        if ((a2 + v60) == a3)
        {
          v35 = v60;
          goto LABEL_16;
        }
      }

LABEL_51:
      if (v51 > v16)
      {
        if (--v17)
        {
          v34 = *(v5 + 4 * (v51 & v8));
          if (v34 >= v12)
          {
            continue;
          }
        }
      }

      goto LABEL_16;
    }
  }

  v35 = 3;
LABEL_16:
  v78 = v10;
  v36 = 0;
  v37 = *(v18 + 8);
  v81 = *v18;
  v38 = *v18 - v37 - v83;
  do
  {
    _X12 = v37 + _X28[v36];
    __asm { PRFM            #0, [X12] }

    ++v36;
  }

  while (v36 != 3);
  if (v17 >= 3)
  {
    v41 = 3;
  }

  else
  {
    v41 = v17;
  }

  v42 = *(v22 + 4 * v21 + 12);
  _X26 = (*(v18 + 128) + 4 * (v42 >> 8));
  __asm { PRFM            #0, [X26] }

  v82 = a3;
  if (v17)
  {
    v75 = v41;
    v76 = v42;
    v77 = *v18 - v37 - v83;
    v79 = v78 + v38 + 3;
    while (1)
    {
      v46 = *_X28++;
      v45 = v46;
      if (!v46)
      {
        return v35;
      }

      if (*(v37 + v45) == *a2)
      {
        v47 = sub_243913D40(a2 + 2, (v37 + v45 + 4), a3, v81, (v9 + v83));
        a3 = v82;
        v48 = v47 + 4;
        if (v47 + 4 > v35)
        {
          *a4 = (v79 - v45);
          v35 = v47 + 4;
          if ((a2 + v48) == v82)
          {
            return v48;
          }
        }
      }

      if (!--v41)
      {
        v38 = v77;
        v49 = v75;
        LOBYTE(v42) = v76;
        goto LABEL_56;
      }
    }
  }

  v49 = 0;
LABEL_56:
  v61 = v17 - v49;
  if (v61 >= v42)
  {
    v62 = v42;
  }

  else
  {
    v62 = v61;
  }

  if (!v62)
  {
    return v35;
  }

  v63 = v62;
  v64 = _X26;
  do
  {
    v65 = *v64++;
    _X10 = v37 + v65;
    __asm { PRFM            #0, [X10] }

    --v63;
  }

  while (v63);
  v68 = *a2;
  v69 = v78 + v38 + 3;
  v48 = v35;
  do
  {
    v71 = *_X26++;
    v70 = v71;
    v72 = v37 + v71;
    if (*v72 == v68)
    {
      v73 = sub_243913D40(a2 + 2, (v72 + 4), a3, v81, (v9 + v83));
      a3 = v82;
      if (v73 + 4 > v48)
      {
        *a4 = v69 - v70;
        v48 = v73 + 4;
        if ((a2 + v73 + 4) == v82)
        {
          break;
        }
      }
    }

    LODWORD(v62) = v62 - 1;
  }

  while (v62);
  return v48;
}

unint64_t sub_2439368C4(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v148 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v146 = *(a1 + 24);
  v11 = a2 - v8 - v10;
  _ZF = a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v11 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  v14 = *(a1 + 248);
  v15 = v13 - 4;
  if (v13 >= 4)
  {
    LOBYTE(v13) = 4;
  }

  v16 = *(a1 + 96);
  v17 = 1 << v13;
  v18 = -1640531535 * *a2;
  v19 = v18 >> (34 - *(v14 + 264));
  _X3 = *(v14 + 112) + 16 * v19;
  __asm { PRFM            #0, [X3] }

  v25 = 1 << v15;
  if (!(!_ZF & _CF))
  {
    v25 = 0;
  }

  v145 = a3;
  v141 = v9;
  if (*(a1 + 300))
  {
    v26 = (v18 ^ v16) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v27 = a1 + 64;
    v28 = *(a1 + 44);
    if (v9 - v28 >= 0x181)
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
      if (v28 <= 0xFFFFFF9F)
      {
        v112 = v28 + 96;
        do
        {
          v113 = ((-1640531535 * *(v8 + 8 + v28)) ^ *(a1 + 96)) >> (24 - v7);
          v114 = (v113 >> 4) & 0xFFFFFF0;
          _X20 = v5 + 4 * v114;
          __asm { PRFM            #0, [X20] }

          _X19 = v6 + v114;
          __asm { PRFM            #0, [X19] }

          v119 = *(v27 + 4 * (v28 & 7));
          *(v27 + 4 * (v28 & 7)) = v113;
          v120 = (v119 >> 4) & 0xFFFFFF0;
          v121 = v5 + 4 * v120;
          v122 = (v6 + v120);
          if (((*v122 - 1) & 0xF) != 0)
          {
            v123 = 0;
          }

          else
          {
            v123 = 15;
          }

          v124 = v123 + ((*v122 - 1) & 0xF);
          *v122 = v124;
          v122[v124] = v119;
          *(v121 + 4 * v124) = v28++;
        }

        while (v112 != v28);
        v30 = *(a1 + 112);
        v29 = *(a1 + 56);
      }

      v125 = v9 - 32;
      LODWORD(v28) = v9 - 32;
      v126 = a2 + 1 - (v8 + v125);
      if ((v126 + 1) < 8)
      {
        v127 = v126 + 1;
      }

      else
      {
        v127 = 8;
      }

      if (a2 + 1 >= v8 + v125)
      {
        v128 = v127;
      }

      else
      {
        v128 = 0;
      }

      if (v125 < v128 + v125)
      {
        v129 = *(a1 + 96);
        v130 = 24 - *(a1 + 52);
        do
        {
          v131 = ((-1640531535 * *(v8 + v125)) ^ v129) >> v130;
          v132 = (v131 >> 4) & 0xFFFFFF0;
          _X23 = v30 + 4 * v132;
          __asm { PRFM            #0, [X23] }

          _X22 = v29 + v132;
          __asm { PRFM            #0, [X22] }

          *(v27 + 4 * (v125++ & 7)) = v131;
          --v128;
        }

        while (v128);
      }
    }

    else
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
    }

    if (v28 < v9)
    {
      v31 = *(a1 + 8) + 8;
      v32 = 24 - *(a1 + 52);
      v33 = v28;
      do
      {
        v34 = ((-1640531535 * *(v31 + v33)) ^ *(a1 + 96)) >> v32;
        v35 = (v34 >> 4) & 0xFFFFFF0;
        _X23 = v30 + 4 * v35;
        __asm { PRFM            #0, [X23] }

        _X22 = v29 + v35;
        __asm { PRFM            #0, [X22] }

        v40 = *(v27 + 4 * (v33 & 7));
        *(v27 + 4 * (v33 & 7)) = v34;
        v41 = (v40 >> 4) & 0xFFFFFF0;
        v42 = v30 + 4 * v41;
        v43 = (v29 + v41);
        if (((*v43 - 1) & 0xF) != 0)
        {
          v44 = 0;
        }

        else
        {
          v44 = 15;
        }

        v45 = v44 + ((*v43 - 1) & 0xF);
        *v43 = v45;
        v43[v45] = v40;
        *(v42 + 4 * v45) = v33++;
      }

      while (v33 < v141);
    }

    v9 = v141;
    *(a1 + 44) = v141;
    v46 = ((-1640531535 * *(v8 + v141 + 8)) ^ v16) >> (24 - v7);
    v47 = (v46 >> 4) & 0xFFFFFF0;
    _X17 = v5 + 4 * v47;
    __asm { PRFM            #0, [X17] }

    _X15 = v6 + v47;
    __asm { PRFM            #0, [X15] }

    v26 = *(v27 + 4 * (v141 & 7));
    *(v27 + 4 * (v141 & 7)) = v46;
  }

  *(a1 + 104) += v26;
  v52 = (v26 >> 4) & 0xFFFFFF0;
  v53 = v5 + 4 * v52;
  v54 = (v6 + v52);
  v55 = 4 * v54->i8[0];
  v56 = *v54;
  v57 = __ROR8__(vshrn_n_s16(vceqq_s8(*v54, vdupq_n_s8(v26)), 4uLL), v55) & 0x8888888888888888;
  if (v57)
  {
    v58 = 0;
    do
    {
      v59 = ((__clz(__rbit64(v57)) + (v55 & 0xFC)) >> 2) & 0xF;
      if (v59)
      {
        v60 = *(v53 + 4 * v59);
        if (v60 < v11)
        {
          break;
        }

        _X5 = v8 + v60;
        __asm { PRFM            #0, [X5] }

        v147[v58++] = v60;
        --v17;
      }

      v57 &= v57 - 1;
    }

    while (v57 && v17);
  }

  else
  {
    v58 = 0;
  }

  v63 = (v56 - 1) & 0xF;
  if (((v56 - 1) & 0xF) != 0)
  {
    v64 = 0;
  }

  else
  {
    v64 = 15;
  }

  v65 = v64 + v63;
  v54->i8[0] = v65;
  v54->i8[v65] = v26;
  v66 = 4 * v19;
  v67 = *(a1 + 44);
  *(a1 + 44) = v67 + 1;
  *(v53 + 4 * v65) = v67;
  if (v58)
  {
    v68 = 0;
    v69 = a3 - 7;
    v70 = 3;
    while (1)
    {
      v71 = v147[v68];
      v72 = (v8 + v71);
      if (*(v8 + v71 + v70 - 3) != *(a2 + v70 - 3))
      {
        goto LABEL_56;
      }

      if (v69 <= a2)
      {
        v75 = a2;
      }

      else
      {
        v73 = *v72;
        if (v73 != *a2)
        {
          v80 = __clz(__rbit64(*a2 ^ v73)) >> 3;
          goto LABEL_54;
        }

        v74 = 0;
        v72 = (v8 + 8 + v71);
        v75 = a2 + 4;
        while (v75 < v69)
        {
          v77 = *v72;
          v72 += 4;
          v76 = v77;
          v79 = *v75;
          v75 += 4;
          v78 = v79;
          v74 += 8;
          if (v76 != v79)
          {
            v80 = v74 + (__clz(__rbit64(v78 ^ v76)) >> 3);
            goto LABEL_54;
          }
        }
      }

      if (v75 < a3 - 3 && *v72 == *v75)
      {
        v72 += 2;
        v75 += 2;
      }

      if (v75 < a3 - 1 && *v72 == *v75)
      {
        ++v72;
        ++v75;
      }

      if (v75 < a3 && *v72 == *v75)
      {
        v75 = (v75 + 1);
      }

      v80 = v75 - a2;
LABEL_54:
      if (v80 > v70)
      {
        *a4 = v9 + 3 - v71;
        v70 = v80;
        if ((a2 + v80) == a3)
        {
          goto LABEL_59;
        }
      }

LABEL_56:
      ++v68;
      v80 = v70;
      if (v68 == v58)
      {
        goto LABEL_59;
      }
    }
  }

  v80 = 3;
LABEL_59:
  v81 = 0;
  v82 = *v14;
  v83 = *(v14 + 8);
  v84 = *v14 - v83 - v146;
  v85 = (*(v14 + 112) + 4 * v66);
  do
  {
    _X11 = v83 + v85[v81];
    __asm { PRFM            #0, [X11] }

    ++v81;
  }

  while (v81 != 3);
  v88 = v85[3];
  _X19 = (*(v14 + 128) + 4 * (v88 >> 8));
  __asm { PRFM            #0, [X19] }

  LODWORD(v91) = v17 + v25;
  if (v91)
  {
    v139 = v85[3];
    v138 = v91;
    if (v91 >= 3)
    {
      v91 = 3;
    }

    else
    {
      v91 = v91;
    }

    v140 = *v14 - v83 - v146;
    v142 = v9 + v84 + 3;
    v137 = v91;
    v92 = v91;
    while (1)
    {
      v94 = *v85++;
      v93 = v94;
      if (!v94)
      {
        break;
      }

      if (*(v83 + v93) == *a2)
      {
        v95 = sub_243913D40(a2 + 2, (v83 + v93 + 4), a3, v82, (v8 + v146));
        a3 = v145;
        v96 = v95 + 4;
        if (v95 + 4 > v80)
        {
          *a4 = (v142 - v93);
          v80 = v95 + 4;
          if ((a2 + v96) == v145)
          {
            goto LABEL_86;
          }
        }
      }

      if (!--v92)
      {
        v84 = v140;
        LOBYTE(v88) = v139;
        LODWORD(v91) = v138;
        v97 = v137;
        goto LABEL_73;
      }
    }

LABEL_85:
    v96 = v80;
    goto LABEL_86;
  }

  v97 = 0;
LABEL_73:
  v98 = v91 - v97;
  if (v98 >= v88)
  {
    v99 = v88;
  }

  else
  {
    v99 = v98;
  }

  if (!v99)
  {
    goto LABEL_85;
  }

  v100 = 4 * v99;
  v101 = _X19;
  do
  {
    v102 = *v101++;
    _X10 = v83 + v102;
    __asm { PRFM            #0, [X10] }

    v100 -= 4;
  }

  while (v100);
  v105 = *a2;
  v143 = v141 + v84 + 3;
  v96 = v80;
  do
  {
    v107 = *_X19++;
    v106 = v107;
    v108 = v83 + v107;
    if (*v108 == v105)
    {
      v109 = sub_243913D40(a2 + 2, (v108 + 4), a3, v82, (v8 + v146));
      a3 = v145;
      if (v109 + 4 > v96)
      {
        *a4 = v143 - v106;
        v96 = v109 + 4;
        if ((a2 + v109 + 4) == v145)
        {
          break;
        }
      }
    }

    --v99;
  }

  while (v99);
LABEL_86:
  v110 = *MEMORY[0x277D85DE8];
  return v96;
}

unint64_t sub_24393701C(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v153 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v151 = *(a1 + 24);
  v11 = a2 - v8 - v10;
  _ZF = a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v11 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  v14 = *(a1 + 248);
  v15 = v13 - 5;
  if (v13 >= 5)
  {
    LOBYTE(v13) = 5;
  }

  v16 = *(a1 + 96);
  v17 = 1 << v13;
  v18 = -1640531535 * *a2;
  v19 = v18 >> (34 - *(v14 + 264));
  _X3 = *(v14 + 112) + 16 * v19;
  __asm { PRFM            #0, [X3] }

  v25 = 1 << v15;
  if (!(!_ZF & _CF))
  {
    v25 = 0;
  }

  v150 = a3;
  v146 = v9;
  if (*(a1 + 300))
  {
    v26 = (v18 ^ v16) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v27 = a1 + 64;
    v28 = *(a1 + 44);
    if (v9 - v28 >= 0x181)
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
      if (v28 <= 0xFFFFFF9F)
      {
        v115 = v28 + 96;
        do
        {
          v116 = ((-1640531535 * *(v8 + 8 + v28)) ^ *(a1 + 96)) >> (24 - v7);
          v117 = (v116 >> 3) & 0x1FFFFFE0;
          _X20 = v5 + 4 * v117;
          __asm
          {
            PRFM            #0, [X20]
            PRFM            #0, [X20,#0x40]
          }

          _X19 = v6 + v117;
          __asm { PRFM            #0, [X19] }

          v123 = *(v27 + 4 * (v28 & 7));
          *(v27 + 4 * (v28 & 7)) = v116;
          v124 = (v123 >> 3) & 0x1FFFFFE0;
          v125 = v5 + 4 * v124;
          v126 = (v6 + v124);
          if (((*v126 - 1) & 0x1F) != 0)
          {
            v127 = 0;
          }

          else
          {
            v127 = 31;
          }

          v128 = v127 + ((*v126 - 1) & 0x1F);
          *v126 = v128;
          v126[v128] = v123;
          *(v125 + 4 * v128) = v28++;
        }

        while (v115 != v28);
        v30 = *(a1 + 112);
        v29 = *(a1 + 56);
      }

      v129 = v9 - 32;
      LODWORD(v28) = v9 - 32;
      v130 = a2 + 1 - (v8 + v129);
      if ((v130 + 1) < 8)
      {
        v131 = v130 + 1;
      }

      else
      {
        v131 = 8;
      }

      if (a2 + 1 >= v8 + v129)
      {
        v132 = v131;
      }

      else
      {
        v132 = 0;
      }

      if (v129 < v132 + v129)
      {
        v133 = *(a1 + 96);
        v134 = 24 - *(a1 + 52);
        do
        {
          v135 = ((-1640531535 * *(v8 + v129)) ^ v133) >> v134;
          v136 = (v135 >> 3) & 0x1FFFFFE0;
          _X23 = v30 + 4 * v136;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v29 + v136;
          __asm { PRFM            #0, [X22] }

          *(v27 + 4 * (v129++ & 7)) = v135;
          --v132;
        }

        while (v132);
      }
    }

    else
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
    }

    if (v28 < v9)
    {
      v31 = *(a1 + 8) + 8;
      v32 = 24 - *(a1 + 52);
      v33 = v28;
      do
      {
        v34 = ((-1640531535 * *(v31 + v33)) ^ *(a1 + 96)) >> v32;
        v35 = (v34 >> 3) & 0x1FFFFFE0;
        _X23 = v30 + 4 * v35;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X22 = v29 + v35;
        __asm { PRFM            #0, [X22] }

        v41 = *(v27 + 4 * (v33 & 7));
        *(v27 + 4 * (v33 & 7)) = v34;
        v42 = (v41 >> 3) & 0x1FFFFFE0;
        v43 = v30 + 4 * v42;
        v44 = (v29 + v42);
        if (((*v44 - 1) & 0x1F) != 0)
        {
          v45 = 0;
        }

        else
        {
          v45 = 31;
        }

        v46 = v45 + ((*v44 - 1) & 0x1F);
        *v44 = v46;
        v44[v46] = v41;
        *(v43 + 4 * v46) = v33++;
      }

      while (v33 < v146);
    }

    v9 = v146;
    *(a1 + 44) = v146;
    v47 = ((-1640531535 * *(v8 + v146 + 8)) ^ v16) >> (24 - v7);
    v48 = (v47 >> 3) & 0x1FFFFFE0;
    _X17 = v5 + 4 * v48;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x40]
    }

    _X15 = v6 + v48;
    __asm { PRFM            #0, [X15] }

    v26 = *(v27 + 4 * (v146 & 7));
    *(v27 + 4 * (v146 & 7)) = v47;
  }

  *(a1 + 104) += v26;
  v54 = (v26 >> 3) & 0x1FFFFFE0;
  v55 = v5 + 4 * v54;
  v56 = (v6 + v54);
  v154 = vld2q_s16(v56);
  v57 = *v56;
  v58 = 2 * *v56;
  v59 = vdupq_n_s8(v26);
  v60 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v59, v154.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v59, v154.val[1]), 6uLL), 4uLL), v58) & 0x5555555555555555;
  if (v60)
  {
    v61 = 0;
    do
    {
      v62 = ((__clz(__rbit64(v60)) + (v58 & 0xFE)) >> 1) & 0x1F;
      if (v62)
      {
        v63 = *(v55 + 4 * v62);
        if (v63 < v11)
        {
          break;
        }

        _X5 = v8 + v63;
        __asm { PRFM            #0, [X5] }

        v152[v61++] = v63;
        --v17;
      }

      v60 &= v60 - 1;
    }

    while (v60 && v17);
  }

  else
  {
    v61 = 0;
  }

  v66 = (v57 - 1) & 0x1F;
  if (((v57 - 1) & 0x1F) != 0)
  {
    v67 = 0;
  }

  else
  {
    v67 = 31;
  }

  v68 = v67 + v66;
  *v56 = v68;
  *(v56 + v68) = v26;
  v69 = 4 * v19;
  v70 = *(a1 + 44);
  *(a1 + 44) = v70 + 1;
  *(v55 + 4 * v68) = v70;
  if (v61)
  {
    v71 = 0;
    v72 = a3 - 7;
    v73 = 3;
    while (1)
    {
      v74 = v152[v71];
      v75 = (v8 + v74);
      if (*(v8 + v74 + v73 - 3) != *(a2 + v73 - 3))
      {
        goto LABEL_56;
      }

      if (v72 <= a2)
      {
        v78 = a2;
      }

      else
      {
        v76 = *v75;
        if (v76 != *a2)
        {
          v83 = __clz(__rbit64(*a2 ^ v76)) >> 3;
          goto LABEL_54;
        }

        v77 = 0;
        v75 = (v8 + 8 + v74);
        v78 = a2 + 4;
        while (v78 < v72)
        {
          v80 = *v75;
          v75 += 4;
          v79 = v80;
          v82 = *v78;
          v78 += 4;
          v81 = v82;
          v77 += 8;
          if (v79 != v82)
          {
            v83 = v77 + (__clz(__rbit64(v81 ^ v79)) >> 3);
            goto LABEL_54;
          }
        }
      }

      if (v78 < a3 - 3 && *v75 == *v78)
      {
        v75 += 2;
        v78 += 2;
      }

      if (v78 < a3 - 1 && *v75 == *v78)
      {
        ++v75;
        ++v78;
      }

      if (v78 < a3 && *v75 == *v78)
      {
        v78 = (v78 + 1);
      }

      v83 = v78 - a2;
LABEL_54:
      if (v83 > v73)
      {
        *a4 = v9 + 3 - v74;
        v73 = v83;
        if ((a2 + v83) == a3)
        {
          goto LABEL_59;
        }
      }

LABEL_56:
      ++v71;
      v83 = v73;
      if (v71 == v61)
      {
        goto LABEL_59;
      }
    }
  }

  v83 = 3;
LABEL_59:
  v84 = 0;
  v85 = *v14;
  v86 = *(v14 + 8);
  v87 = *v14 - v86 - v151;
  v88 = (*(v14 + 112) + 4 * v69);
  do
  {
    _X11 = v86 + v88[v84];
    __asm { PRFM            #0, [X11] }

    ++v84;
  }

  while (v84 != 3);
  v91 = v88[3];
  _X19 = (*(v14 + 128) + 4 * (v91 >> 8));
  __asm { PRFM            #0, [X19] }

  LODWORD(v94) = v17 + v25;
  if (v94)
  {
    v144 = v88[3];
    v143 = v94;
    if (v94 >= 3)
    {
      v94 = 3;
    }

    else
    {
      v94 = v94;
    }

    v145 = *v14 - v86 - v151;
    v147 = v9 + v87 + 3;
    v142 = v94;
    v95 = v94;
    while (1)
    {
      v97 = *v88++;
      v96 = v97;
      if (!v97)
      {
        break;
      }

      if (*(v86 + v96) == *a2)
      {
        v98 = sub_243913D40(a2 + 2, (v86 + v96 + 4), a3, v85, (v8 + v151));
        a3 = v150;
        v99 = v98 + 4;
        if (v98 + 4 > v83)
        {
          *a4 = (v147 - v96);
          v83 = v98 + 4;
          if ((a2 + v99) == v150)
          {
            goto LABEL_86;
          }
        }
      }

      if (!--v95)
      {
        v87 = v145;
        LOBYTE(v91) = v144;
        LODWORD(v94) = v143;
        v100 = v142;
        goto LABEL_73;
      }
    }

LABEL_85:
    v99 = v83;
    goto LABEL_86;
  }

  v100 = 0;
LABEL_73:
  v101 = v94 - v100;
  if (v101 >= v91)
  {
    v102 = v91;
  }

  else
  {
    v102 = v101;
  }

  if (!v102)
  {
    goto LABEL_85;
  }

  v103 = 4 * v102;
  v104 = _X19;
  do
  {
    v105 = *v104++;
    _X10 = v86 + v105;
    __asm { PRFM            #0, [X10] }

    v103 -= 4;
  }

  while (v103);
  v108 = *a2;
  v148 = v146 + v87 + 3;
  v99 = v83;
  do
  {
    v110 = *_X19++;
    v109 = v110;
    v111 = v86 + v110;
    if (*v111 == v108)
    {
      v112 = sub_243913D40(a2 + 2, (v111 + 4), a3, v85, (v8 + v151));
      a3 = v150;
      if (v112 + 4 > v99)
      {
        *a4 = v148 - v109;
        v99 = v112 + 4;
        if ((a2 + v112 + 4) == v150)
        {
          break;
        }
      }
    }

    --v102;
  }

  while (v102);
LABEL_86:
  v113 = *MEMORY[0x277D85DE8];
  return v99;
}

unint64_t sub_24393778C(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v157 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v155 = *(a1 + 24);
  v11 = a2 - v8 - v10;
  _ZF = a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v11 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  v14 = *(a1 + 248);
  v15 = v13 - 6;
  if (v13 >= 6)
  {
    LOBYTE(v13) = 6;
  }

  v16 = *(a1 + 96);
  v17 = 1 << v13;
  v18 = -1640531535 * *a2;
  v19 = v18 >> (34 - *(v14 + 264));
  _X3 = *(v14 + 112) + 16 * v19;
  __asm { PRFM            #0, [X3] }

  v25 = 1 << v15;
  if (!(!_ZF & _CF))
  {
    v25 = 0;
  }

  v154 = a3;
  v150 = v9;
  if (*(a1 + 300))
  {
    v26 = (v18 ^ v16) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v27 = a1 + 64;
    v28 = *(a1 + 44);
    if (v9 - v28 >= 0x181)
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
      if (v28 <= 0xFFFFFF9F)
      {
        v117 = v28 + 96;
        do
        {
          v118 = ((-1640531535 * *(v8 + 8 + v28)) ^ *(a1 + 96)) >> (24 - v7);
          v119 = (v118 >> 2) & 0x3FFFFFC0;
          _X20 = v5 + 4 * v119;
          __asm
          {
            PRFM            #0, [X20]
            PRFM            #0, [X20,#0x40]
          }

          _X19 = v6 + v119;
          __asm
          {
            PRFM            #0, [X19]
            PRFM            #0, [X19,#0x20]
          }

          v126 = *(v27 + 4 * (v28 & 7));
          *(v27 + 4 * (v28 & 7)) = v118;
          v127 = (v126 >> 2) & 0x3FFFFFC0;
          v128 = v5 + 4 * v127;
          v129 = (v6 + v127);
          if (((*v129 - 1) & 0x3F) != 0)
          {
            v130 = 0;
          }

          else
          {
            v130 = 63;
          }

          v131 = v130 + ((*v129 - 1) & 0x3F);
          *v129 = v131;
          v129[v131] = v126;
          *(v128 + 4 * v131) = v28++;
        }

        while (v117 != v28);
        v30 = *(a1 + 112);
        v29 = *(a1 + 56);
      }

      v132 = v9 - 32;
      LODWORD(v28) = v9 - 32;
      v133 = a2 + 1 - (v8 + v132);
      if ((v133 + 1) < 8)
      {
        v134 = v133 + 1;
      }

      else
      {
        v134 = 8;
      }

      if (a2 + 1 >= v8 + v132)
      {
        v135 = v134;
      }

      else
      {
        v135 = 0;
      }

      if (v132 < v135 + v132)
      {
        v136 = *(a1 + 96);
        v137 = 24 - *(a1 + 52);
        do
        {
          v138 = ((-1640531535 * *(v8 + v132)) ^ v136) >> v137;
          v139 = (v138 >> 2) & 0x3FFFFFC0;
          _X23 = v30 + 4 * v139;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v29 + v139;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          *(v27 + 4 * (v132++ & 7)) = v138;
          --v135;
        }

        while (v135);
      }
    }

    else
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
    }

    if (v28 < v9)
    {
      v31 = *(a1 + 8) + 8;
      v32 = 24 - *(a1 + 52);
      v33 = v28;
      do
      {
        v34 = ((-1640531535 * *(v31 + v33)) ^ *(a1 + 96)) >> v32;
        v35 = (v34 >> 2) & 0x3FFFFFC0;
        _X23 = v30 + 4 * v35;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X22 = v29 + v35;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x20]
        }

        v42 = *(v27 + 4 * (v33 & 7));
        *(v27 + 4 * (v33 & 7)) = v34;
        v43 = (v42 >> 2) & 0x3FFFFFC0;
        v44 = v30 + 4 * v43;
        v45 = (v29 + v43);
        if (((*v45 - 1) & 0x3F) != 0)
        {
          v46 = 0;
        }

        else
        {
          v46 = 63;
        }

        v47 = v46 + ((*v45 - 1) & 0x3F);
        *v45 = v47;
        v45[v47] = v42;
        *(v44 + 4 * v47) = v33++;
      }

      while (v33 < v150);
    }

    v9 = v150;
    *(a1 + 44) = v150;
    v48 = ((-1640531535 * *(v8 + v150 + 8)) ^ v16) >> (24 - v7);
    v49 = (v48 >> 2) & 0x3FFFFFC0;
    _X17 = v5 + 4 * v49;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x40]
    }

    _X15 = v6 + v49;
    __asm
    {
      PRFM            #0, [X15]
      PRFM            #0, [X15,#0x20]
    }

    v26 = *(v27 + 4 * (v150 & 7));
    *(v27 + 4 * (v150 & 7)) = v48;
  }

  *(a1 + 104) += v26;
  v56 = (v26 >> 2) & 0x3FFFFFC0;
  v57 = v5 + 4 * v56;
  v58 = (v6 + v56);
  v59 = *v58;
  v158 = vld4q_s8(v58);
  v60 = vdupq_n_s8(v26);
  v158.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v158.val[3], v60), vceqq_s8(v158.val[2], v60), 1uLL), vsriq_n_s8(vceqq_s8(v158.val[1], v60), vceqq_s8(v158.val[0], v60), 1uLL), 2uLL);
  v61 = vshrn_n_s16(vsriq_n_s8(v158.val[0], v158.val[0], 4uLL), 4uLL);
  v62 = 0;
  if (v61)
  {
    v63 = __ROR8__(*&v61, v59);
    do
    {
      v64 = (__clz(__rbit64(v63)) + v59) & 0x3F;
      if (v64)
      {
        v65 = *(v57 + 4 * v64);
        if (v65 < v11)
        {
          break;
        }

        _X4 = v8 + v65;
        __asm { PRFM            #0, [X4] }

        v156[v62++] = v65;
        --v17;
      }

      v63 &= v63 - 1;
    }

    while (v63 && v17);
  }

  v68 = (v59 - 1) & 0x3F;
  if (((v59 - 1) & 0x3F) != 0)
  {
    v69 = 0;
  }

  else
  {
    v69 = 63;
  }

  v70 = v69 + v68;
  *v58 = v70;
  v58[v70] = v26;
  v71 = 4 * v19;
  v72 = *(a1 + 44);
  *(a1 + 44) = v72 + 1;
  *(v57 + 4 * v70) = v72;
  if (v62)
  {
    v73 = 0;
    v74 = a3 - 7;
    v75 = 3;
    while (1)
    {
      v76 = v156[v73];
      v77 = (v8 + v76);
      if (*(v8 + v76 + v75 - 3) != *(a2 + v75 - 3))
      {
        goto LABEL_54;
      }

      if (v74 <= a2)
      {
        v80 = a2;
      }

      else
      {
        v78 = *v77;
        if (v78 != *a2)
        {
          v85 = __clz(__rbit64(*a2 ^ v78)) >> 3;
          goto LABEL_52;
        }

        v79 = 0;
        v77 = (v8 + 8 + v76);
        v80 = a2 + 4;
        while (v80 < v74)
        {
          v82 = *v77;
          v77 += 4;
          v81 = v82;
          v84 = *v80;
          v80 += 4;
          v83 = v84;
          v79 += 8;
          if (v81 != v84)
          {
            v85 = v79 + (__clz(__rbit64(v83 ^ v81)) >> 3);
            goto LABEL_52;
          }
        }
      }

      if (v80 < a3 - 3 && *v77 == *v80)
      {
        v77 += 2;
        v80 += 2;
      }

      if (v80 < a3 - 1 && *v77 == *v80)
      {
        ++v77;
        ++v80;
      }

      if (v80 < a3 && *v77 == *v80)
      {
        v80 = (v80 + 1);
      }

      v85 = v80 - a2;
LABEL_52:
      if (v85 > v75)
      {
        *a4 = v9 + 3 - v76;
        v75 = v85;
        if ((a2 + v85) == a3)
        {
          goto LABEL_57;
        }
      }

LABEL_54:
      ++v73;
      v85 = v75;
      if (v73 == v62)
      {
        goto LABEL_57;
      }
    }
  }

  v85 = 3;
LABEL_57:
  v86 = 0;
  v87 = *v14;
  v88 = *(v14 + 8);
  v89 = *v14 - v88 - v155;
  v90 = (*(v14 + 112) + 4 * v71);
  do
  {
    _X11 = v88 + v90[v86];
    __asm { PRFM            #0, [X11] }

    ++v86;
  }

  while (v86 != 3);
  v93 = v90[3];
  _X19 = (*(v14 + 128) + 4 * (v93 >> 8));
  __asm { PRFM            #0, [X19] }

  LODWORD(v96) = v17 + v25;
  if (v96)
  {
    v148 = v90[3];
    v147 = v96;
    if (v96 >= 3)
    {
      v96 = 3;
    }

    else
    {
      v96 = v96;
    }

    v149 = *v14 - v88 - v155;
    v151 = v9 + v89 + 3;
    v146 = v96;
    v97 = v96;
    while (1)
    {
      v99 = *v90++;
      v98 = v99;
      if (!v99)
      {
        break;
      }

      if (*(v88 + v98) == *a2)
      {
        v100 = sub_243913D40(a2 + 2, (v88 + v98 + 4), a3, v87, (v8 + v155));
        a3 = v154;
        v101 = v100 + 4;
        if (v100 + 4 > v85)
        {
          *a4 = (v151 - v98);
          v85 = v100 + 4;
          if ((a2 + v101) == v154)
          {
            goto LABEL_84;
          }
        }
      }

      if (!--v97)
      {
        v89 = v149;
        LOBYTE(v93) = v148;
        LODWORD(v96) = v147;
        v102 = v146;
        goto LABEL_71;
      }
    }

LABEL_83:
    v101 = v85;
    goto LABEL_84;
  }

  v102 = 0;
LABEL_71:
  v103 = v96 - v102;
  if (v103 >= v93)
  {
    v104 = v93;
  }

  else
  {
    v104 = v103;
  }

  if (!v104)
  {
    goto LABEL_83;
  }

  v105 = 4 * v104;
  v106 = _X19;
  do
  {
    v107 = *v106++;
    _X10 = v88 + v107;
    __asm { PRFM            #0, [X10] }

    v105 -= 4;
  }

  while (v105);
  v110 = *a2;
  v152 = v150 + v89 + 3;
  v101 = v85;
  do
  {
    v112 = *_X19++;
    v111 = v112;
    v113 = v88 + v112;
    if (*v113 == v110)
    {
      v114 = sub_243913D40(a2 + 2, (v113 + 4), a3, v87, (v8 + v155));
      a3 = v154;
      if (v114 + 4 > v101)
      {
        *a4 = v152 - v111;
        v101 = v114 + 4;
        if ((a2 + v114 + 4) == v154)
        {
          break;
        }
      }
    }

    --v104;
  }

  while (v104);
LABEL_84:
  v115 = *MEMORY[0x277D85DE8];
  return v101;
}

unint64_t sub_243937F08(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v147 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v145 = *(a1 + 24);
  v11 = a2 - v8 - v10;
  _ZF = a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v11 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  v14 = *(a1 + 248);
  v15 = v13 - 4;
  if (v13 >= 4)
  {
    LOBYTE(v13) = 4;
  }

  v16 = *(a1 + 96);
  v17 = 1 << v13;
  v18 = 0xCF1BBCDCBB000000 * *a2;
  v19 = v18 >> (66 - *(v14 + 264));
  _X3 = *(v14 + 112) + 16 * v19;
  __asm { PRFM            #0, [X3] }

  v25 = 1 << v15;
  if (!(!_ZF & _CF))
  {
    v25 = 0;
  }

  v144 = a3;
  v140 = v9;
  if (*(a1 + 300))
  {
    _X15 = (v18 ^ v16) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v27 = a1 + 64;
    v28 = *(a1 + 44);
    if (v9 - v28 >= 0x181)
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
      if (v28 <= 0xFFFFFF9F)
      {
        v111 = v28 + 96;
        do
        {
          v112 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v28)) ^ *(a1 + 96)) >> (56 - v7);
          v113 = (v112 >> 4) & 0xFFFFFF0;
          _X20 = v5 + 4 * v113;
          __asm { PRFM            #0, [X20] }

          _X19 = v6 + v113;
          __asm { PRFM            #0, [X19] }

          v118 = *(v27 + 4 * (v28 & 7));
          *(v27 + 4 * (v28 & 7)) = v112;
          v119 = (v118 >> 4) & 0xFFFFFF0;
          v120 = v5 + 4 * v119;
          v121 = (v6 + v119);
          if (((*v121 - 1) & 0xF) != 0)
          {
            v122 = 0;
          }

          else
          {
            v122 = 15;
          }

          v123 = v122 + ((*v121 - 1) & 0xF);
          *v121 = v123;
          v121[v123] = v118;
          *(v120 + 4 * v123) = v28++;
        }

        while (v111 != v28);
        v30 = *(a1 + 112);
        v29 = *(a1 + 56);
      }

      v124 = v9 - 32;
      LODWORD(v28) = v9 - 32;
      v125 = a2 + 1 - (v8 + v124);
      if ((v125 + 1) < 8)
      {
        v126 = v125 + 1;
      }

      else
      {
        v126 = 8;
      }

      if (a2 + 1 >= v8 + v124)
      {
        v127 = v126;
      }

      else
      {
        v127 = 0;
      }

      if (v124 < v127 + v124)
      {
        v128 = *(a1 + 96);
        v129 = 56 - *(a1 + 52);
        do
        {
          v130 = ((0xCF1BBCDCBB000000 * *(v8 + v124)) ^ v128) >> v129;
          v131 = (v130 >> 4) & 0xFFFFFF0;
          _X23 = v30 + 4 * v131;
          __asm { PRFM            #0, [X23] }

          _X22 = v29 + v131;
          __asm { PRFM            #0, [X22] }

          *(v27 + 4 * (v124++ & 7)) = v130;
          --v127;
        }

        while (v127);
      }
    }

    else
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
    }

    if (v28 < v9)
    {
      v31 = *(a1 + 8) + 8;
      v32 = 56 - *(a1 + 52);
      v33 = v28;
      do
      {
        v34 = ((0xCF1BBCDCBB000000 * *(v31 + v33)) ^ *(a1 + 96)) >> v32;
        v35 = (v34 >> 4) & 0xFFFFFF0;
        _X23 = v30 + 4 * v35;
        __asm { PRFM            #0, [X23] }

        _X22 = v29 + v35;
        __asm { PRFM            #0, [X22] }

        v40 = *(v27 + 4 * (v33 & 7));
        *(v27 + 4 * (v33 & 7)) = v34;
        v41 = (v40 >> 4) & 0xFFFFFF0;
        v42 = v30 + 4 * v41;
        v43 = (v29 + v41);
        if (((*v43 - 1) & 0xF) != 0)
        {
          v44 = 0;
        }

        else
        {
          v44 = 15;
        }

        v45 = v44 + ((*v43 - 1) & 0xF);
        *v43 = v45;
        v43[v45] = v40;
        *(v42 + 4 * v45) = v33++;
      }

      while (v33 < v140);
    }

    v9 = v140;
    *(a1 + 44) = v140;
    v46 = ((0xCF1BBCDCBB000000 * *(v8 + v140 + 8)) ^ v16) >> (56 - v7);
    v47 = (v46 >> 4) & 0xFFFFFF0;
    _X17 = v5 + 4 * v47;
    __asm { PRFM            #0, [X17] }

    _X15 = v6 + v47;
    __asm { PRFM            #0, [X15] }

    LODWORD(_X15) = *(v27 + 4 * (v140 & 7));
    *(v27 + 4 * (v140 & 7)) = v46;
  }

  *(a1 + 104) += _X15;
  v51 = (_X15 >> 4) & 0xFFFFFF0;
  v52 = v5 + 4 * v51;
  v53 = (v6 + v51);
  v54 = 4 * v53->i8[0];
  v55 = *v53;
  v56 = __ROR8__(vshrn_n_s16(vceqq_s8(*v53, vdupq_n_s8(_X15)), 4uLL), v54) & 0x8888888888888888;
  if (v56)
  {
    v57 = 0;
    do
    {
      v58 = ((__clz(__rbit64(v56)) + (v54 & 0xFC)) >> 2) & 0xF;
      if (v58)
      {
        v59 = *(v52 + 4 * v58);
        if (v59 < v11)
        {
          break;
        }

        _X5 = v8 + v59;
        __asm { PRFM            #0, [X5] }

        v146[v57++] = v59;
        --v17;
      }

      v56 &= v56 - 1;
    }

    while (v56 && v17);
  }

  else
  {
    v57 = 0;
  }

  v62 = (v55 - 1) & 0xF;
  if (((v55 - 1) & 0xF) != 0)
  {
    v63 = 0;
  }

  else
  {
    v63 = 15;
  }

  v64 = v63 + v62;
  v53->i8[0] = v64;
  v53->i8[v64] = _X15;
  v65 = 4 * v19;
  v66 = *(a1 + 44);
  *(a1 + 44) = v66 + 1;
  *(v52 + 4 * v64) = v66;
  if (v57)
  {
    v67 = 0;
    v68 = a3 - 7;
    v69 = 3;
    while (1)
    {
      v70 = v146[v67];
      v71 = (v8 + v70);
      if (*(v8 + v70 + v69 - 3) != *(a2 + v69 - 3))
      {
        goto LABEL_56;
      }

      if (v68 <= a2)
      {
        v74 = a2;
      }

      else
      {
        v72 = *v71;
        if (v72 != *a2)
        {
          v79 = __clz(__rbit64(*a2 ^ v72)) >> 3;
          goto LABEL_54;
        }

        v73 = 0;
        v71 = (v8 + 8 + v70);
        v74 = a2 + 4;
        while (v74 < v68)
        {
          v76 = *v71;
          v71 += 4;
          v75 = v76;
          v78 = *v74;
          v74 += 4;
          v77 = v78;
          v73 += 8;
          if (v75 != v78)
          {
            v79 = v73 + (__clz(__rbit64(v77 ^ v75)) >> 3);
            goto LABEL_54;
          }
        }
      }

      if (v74 < a3 - 3 && *v71 == *v74)
      {
        v71 += 2;
        v74 += 2;
      }

      if (v74 < a3 - 1 && *v71 == *v74)
      {
        ++v71;
        ++v74;
      }

      if (v74 < a3 && *v71 == *v74)
      {
        v74 = (v74 + 1);
      }

      v79 = v74 - a2;
LABEL_54:
      if (v79 > v69)
      {
        *a4 = v9 + 3 - v70;
        v69 = v79;
        if ((a2 + v79) == a3)
        {
          goto LABEL_59;
        }
      }

LABEL_56:
      ++v67;
      v79 = v69;
      if (v67 == v57)
      {
        goto LABEL_59;
      }
    }
  }

  v79 = 3;
LABEL_59:
  v80 = 0;
  v81 = *v14;
  v82 = *(v14 + 8);
  v83 = *v14 - v82 - v145;
  v84 = (*(v14 + 112) + 4 * v65);
  do
  {
    _X11 = v82 + v84[v80];
    __asm { PRFM            #0, [X11] }

    ++v80;
  }

  while (v80 != 3);
  v87 = v84[3];
  _X19 = (*(v14 + 128) + 4 * (v87 >> 8));
  __asm { PRFM            #0, [X19] }

  LODWORD(v90) = v17 + v25;
  if (v90)
  {
    v138 = v84[3];
    v137 = v90;
    if (v90 >= 3)
    {
      v90 = 3;
    }

    else
    {
      v90 = v90;
    }

    v139 = *v14 - v82 - v145;
    v141 = v9 + v83 + 3;
    v136 = v90;
    v91 = v90;
    while (1)
    {
      v93 = *v84++;
      v92 = v93;
      if (!v93)
      {
        break;
      }

      if (*(v82 + v92) == *a2)
      {
        v94 = sub_243913D40(a2 + 2, (v82 + v92 + 4), a3, v81, (v8 + v145));
        a3 = v144;
        v95 = v94 + 4;
        if (v94 + 4 > v79)
        {
          *a4 = (v141 - v92);
          v79 = v94 + 4;
          if ((a2 + v95) == v144)
          {
            goto LABEL_86;
          }
        }
      }

      if (!--v91)
      {
        v83 = v139;
        LOBYTE(v87) = v138;
        LODWORD(v90) = v137;
        v96 = v136;
        goto LABEL_73;
      }
    }

LABEL_85:
    v95 = v79;
    goto LABEL_86;
  }

  v96 = 0;
LABEL_73:
  v97 = v90 - v96;
  if (v97 >= v87)
  {
    v98 = v87;
  }

  else
  {
    v98 = v97;
  }

  if (!v98)
  {
    goto LABEL_85;
  }

  v99 = 4 * v98;
  v100 = _X19;
  do
  {
    v101 = *v100++;
    _X10 = v82 + v101;
    __asm { PRFM            #0, [X10] }

    v99 -= 4;
  }

  while (v99);
  v104 = *a2;
  v142 = v140 + v83 + 3;
  v95 = v79;
  do
  {
    v106 = *_X19++;
    v105 = v106;
    v107 = v82 + v106;
    if (*v107 == v104)
    {
      v108 = sub_243913D40(a2 + 2, (v107 + 4), a3, v81, (v8 + v145));
      a3 = v144;
      if (v108 + 4 > v95)
      {
        *a4 = v142 - v105;
        v95 = v108 + 4;
        if ((a2 + v108 + 4) == v144)
        {
          break;
        }
      }
    }

    --v98;
  }

  while (v98);
LABEL_86:
  v109 = *MEMORY[0x277D85DE8];
  return v95;
}

unint64_t sub_243938664(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v152 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v150 = *(a1 + 24);
  v11 = a2 - v8 - v10;
  _ZF = a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v11 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  v14 = *(a1 + 248);
  v15 = v13 - 5;
  if (v13 >= 5)
  {
    LOBYTE(v13) = 5;
  }

  v16 = *(a1 + 96);
  v17 = 1 << v13;
  v18 = 0xCF1BBCDCBB000000 * *a2;
  v19 = v18 >> (66 - *(v14 + 264));
  _X3 = *(v14 + 112) + 16 * v19;
  __asm { PRFM            #0, [X3] }

  v25 = 1 << v15;
  if (!(!_ZF & _CF))
  {
    v25 = 0;
  }

  v149 = a3;
  v145 = v9;
  if (*(a1 + 300))
  {
    _X15 = (v18 ^ v16) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v27 = a1 + 64;
    v28 = *(a1 + 44);
    if (v9 - v28 >= 0x181)
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
      if (v28 <= 0xFFFFFF9F)
      {
        v114 = v28 + 96;
        do
        {
          v115 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v28)) ^ *(a1 + 96)) >> (56 - v7);
          v116 = (v115 >> 3) & 0x1FFFFFE0;
          _X20 = v5 + 4 * v116;
          __asm
          {
            PRFM            #0, [X20]
            PRFM            #0, [X20,#0x40]
          }

          _X19 = v6 + v116;
          __asm { PRFM            #0, [X19] }

          v122 = *(v27 + 4 * (v28 & 7));
          *(v27 + 4 * (v28 & 7)) = v115;
          v123 = (v122 >> 3) & 0x1FFFFFE0;
          v124 = v5 + 4 * v123;
          v125 = (v6 + v123);
          if (((*v125 - 1) & 0x1F) != 0)
          {
            v126 = 0;
          }

          else
          {
            v126 = 31;
          }

          v127 = v126 + ((*v125 - 1) & 0x1F);
          *v125 = v127;
          v125[v127] = v122;
          *(v124 + 4 * v127) = v28++;
        }

        while (v114 != v28);
        v30 = *(a1 + 112);
        v29 = *(a1 + 56);
      }

      v128 = v9 - 32;
      LODWORD(v28) = v9 - 32;
      v129 = a2 + 1 - (v8 + v128);
      if ((v129 + 1) < 8)
      {
        v130 = v129 + 1;
      }

      else
      {
        v130 = 8;
      }

      if (a2 + 1 >= v8 + v128)
      {
        v131 = v130;
      }

      else
      {
        v131 = 0;
      }

      if (v128 < v131 + v128)
      {
        v132 = *(a1 + 96);
        v133 = 56 - *(a1 + 52);
        do
        {
          v134 = ((0xCF1BBCDCBB000000 * *(v8 + v128)) ^ v132) >> v133;
          v135 = (v134 >> 3) & 0x1FFFFFE0;
          _X23 = v30 + 4 * v135;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v29 + v135;
          __asm { PRFM            #0, [X22] }

          *(v27 + 4 * (v128++ & 7)) = v134;
          --v131;
        }

        while (v131);
      }
    }

    else
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
    }

    if (v28 < v9)
    {
      v31 = *(a1 + 8) + 8;
      v32 = 56 - *(a1 + 52);
      v33 = v28;
      do
      {
        v34 = ((0xCF1BBCDCBB000000 * *(v31 + v33)) ^ *(a1 + 96)) >> v32;
        v35 = (v34 >> 3) & 0x1FFFFFE0;
        _X23 = v30 + 4 * v35;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X22 = v29 + v35;
        __asm { PRFM            #0, [X22] }

        v41 = *(v27 + 4 * (v33 & 7));
        *(v27 + 4 * (v33 & 7)) = v34;
        v42 = (v41 >> 3) & 0x1FFFFFE0;
        v43 = v30 + 4 * v42;
        v44 = (v29 + v42);
        if (((*v44 - 1) & 0x1F) != 0)
        {
          v45 = 0;
        }

        else
        {
          v45 = 31;
        }

        v46 = v45 + ((*v44 - 1) & 0x1F);
        *v44 = v46;
        v44[v46] = v41;
        *(v43 + 4 * v46) = v33++;
      }

      while (v33 < v145);
    }

    v9 = v145;
    *(a1 + 44) = v145;
    v47 = ((0xCF1BBCDCBB000000 * *(v8 + v145 + 8)) ^ v16) >> (56 - v7);
    v48 = (v47 >> 3) & 0x1FFFFFE0;
    _X17 = v5 + 4 * v48;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x40]
    }

    _X15 = v6 + v48;
    __asm { PRFM            #0, [X15] }

    LODWORD(_X15) = *(v27 + 4 * (v145 & 7));
    *(v27 + 4 * (v145 & 7)) = v47;
  }

  *(a1 + 104) += _X15;
  v53 = (_X15 >> 3) & 0x1FFFFFE0;
  v54 = v5 + 4 * v53;
  v55 = (v6 + v53);
  v153 = vld2q_s16(v55);
  v56 = *v55;
  v57 = 2 * *v55;
  v58 = vdupq_n_s8(_X15);
  v59 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v58, v153.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v58, v153.val[1]), 6uLL), 4uLL), v57) & 0x5555555555555555;
  if (v59)
  {
    v60 = 0;
    do
    {
      v61 = ((__clz(__rbit64(v59)) + (v57 & 0xFE)) >> 1) & 0x1F;
      if (v61)
      {
        v62 = *(v54 + 4 * v61);
        if (v62 < v11)
        {
          break;
        }

        _X5 = v8 + v62;
        __asm { PRFM            #0, [X5] }

        v151[v60++] = v62;
        --v17;
      }

      v59 &= v59 - 1;
    }

    while (v59 && v17);
  }

  else
  {
    v60 = 0;
  }

  v65 = (v56 - 1) & 0x1F;
  if (((v56 - 1) & 0x1F) != 0)
  {
    v66 = 0;
  }

  else
  {
    v66 = 31;
  }

  v67 = v66 + v65;
  *v55 = v67;
  *(v55 + v67) = _X15;
  v68 = 4 * v19;
  v69 = *(a1 + 44);
  *(a1 + 44) = v69 + 1;
  *(v54 + 4 * v67) = v69;
  if (v60)
  {
    v70 = 0;
    v71 = a3 - 7;
    v72 = 3;
    while (1)
    {
      v73 = v151[v70];
      v74 = (v8 + v73);
      if (*(v8 + v73 + v72 - 3) != *(a2 + v72 - 3))
      {
        goto LABEL_56;
      }

      if (v71 <= a2)
      {
        v77 = a2;
      }

      else
      {
        v75 = *v74;
        if (v75 != *a2)
        {
          v82 = __clz(__rbit64(*a2 ^ v75)) >> 3;
          goto LABEL_54;
        }

        v76 = 0;
        v74 = (v8 + 8 + v73);
        v77 = a2 + 4;
        while (v77 < v71)
        {
          v79 = *v74;
          v74 += 4;
          v78 = v79;
          v81 = *v77;
          v77 += 4;
          v80 = v81;
          v76 += 8;
          if (v78 != v81)
          {
            v82 = v76 + (__clz(__rbit64(v80 ^ v78)) >> 3);
            goto LABEL_54;
          }
        }
      }

      if (v77 < a3 - 3 && *v74 == *v77)
      {
        v74 += 2;
        v77 += 2;
      }

      if (v77 < a3 - 1 && *v74 == *v77)
      {
        ++v74;
        ++v77;
      }

      if (v77 < a3 && *v74 == *v77)
      {
        v77 = (v77 + 1);
      }

      v82 = v77 - a2;
LABEL_54:
      if (v82 > v72)
      {
        *a4 = v9 + 3 - v73;
        v72 = v82;
        if ((a2 + v82) == a3)
        {
          goto LABEL_59;
        }
      }

LABEL_56:
      ++v70;
      v82 = v72;
      if (v70 == v60)
      {
        goto LABEL_59;
      }
    }
  }

  v82 = 3;
LABEL_59:
  v83 = 0;
  v84 = *v14;
  v85 = *(v14 + 8);
  v86 = *v14 - v85 - v150;
  v87 = (*(v14 + 112) + 4 * v68);
  do
  {
    _X11 = v85 + v87[v83];
    __asm { PRFM            #0, [X11] }

    ++v83;
  }

  while (v83 != 3);
  v90 = v87[3];
  _X19 = (*(v14 + 128) + 4 * (v90 >> 8));
  __asm { PRFM            #0, [X19] }

  LODWORD(v93) = v17 + v25;
  if (v93)
  {
    v143 = v87[3];
    v142 = v93;
    if (v93 >= 3)
    {
      v93 = 3;
    }

    else
    {
      v93 = v93;
    }

    v144 = *v14 - v85 - v150;
    v146 = v9 + v86 + 3;
    v141 = v93;
    v94 = v93;
    while (1)
    {
      v96 = *v87++;
      v95 = v96;
      if (!v96)
      {
        break;
      }

      if (*(v85 + v95) == *a2)
      {
        v97 = sub_243913D40(a2 + 2, (v85 + v95 + 4), a3, v84, (v8 + v150));
        a3 = v149;
        v98 = v97 + 4;
        if (v97 + 4 > v82)
        {
          *a4 = (v146 - v95);
          v82 = v97 + 4;
          if ((a2 + v98) == v149)
          {
            goto LABEL_86;
          }
        }
      }

      if (!--v94)
      {
        v86 = v144;
        LOBYTE(v90) = v143;
        LODWORD(v93) = v142;
        v99 = v141;
        goto LABEL_73;
      }
    }

LABEL_85:
    v98 = v82;
    goto LABEL_86;
  }

  v99 = 0;
LABEL_73:
  v100 = v93 - v99;
  if (v100 >= v90)
  {
    v101 = v90;
  }

  else
  {
    v101 = v100;
  }

  if (!v101)
  {
    goto LABEL_85;
  }

  v102 = 4 * v101;
  v103 = _X19;
  do
  {
    v104 = *v103++;
    _X10 = v85 + v104;
    __asm { PRFM            #0, [X10] }

    v102 -= 4;
  }

  while (v102);
  v107 = *a2;
  v147 = v145 + v86 + 3;
  v98 = v82;
  do
  {
    v109 = *_X19++;
    v108 = v109;
    v110 = v85 + v109;
    if (*v110 == v107)
    {
      v111 = sub_243913D40(a2 + 2, (v110 + 4), a3, v84, (v8 + v150));
      a3 = v149;
      if (v111 + 4 > v98)
      {
        *a4 = v147 - v108;
        v98 = v111 + 4;
        if ((a2 + v111 + 4) == v149)
        {
          break;
        }
      }
    }

    --v101;
  }

  while (v101);
LABEL_86:
  v112 = *MEMORY[0x277D85DE8];
  return v98;
}

unint64_t sub_243938DD8(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v156 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v154 = *(a1 + 24);
  v11 = a2 - v8 - v10;
  _ZF = a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v11 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  v14 = *(a1 + 248);
  v15 = v13 - 6;
  if (v13 >= 6)
  {
    LOBYTE(v13) = 6;
  }

  v16 = *(a1 + 96);
  v17 = 1 << v13;
  v18 = 0xCF1BBCDCBB000000 * *a2;
  v19 = v18 >> (66 - *(v14 + 264));
  _X3 = *(v14 + 112) + 16 * v19;
  __asm { PRFM            #0, [X3] }

  v25 = 1 << v15;
  if (!(!_ZF & _CF))
  {
    v25 = 0;
  }

  v153 = a3;
  v149 = v9;
  if (*(a1 + 300))
  {
    _X15 = (v18 ^ v16) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v27 = a1 + 64;
    v28 = *(a1 + 44);
    if (v9 - v28 >= 0x181)
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
      if (v28 <= 0xFFFFFF9F)
      {
        v116 = v28 + 96;
        do
        {
          v117 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v28)) ^ *(a1 + 96)) >> (56 - v7);
          v118 = (v117 >> 2) & 0x3FFFFFC0;
          _X20 = v5 + 4 * v118;
          __asm
          {
            PRFM            #0, [X20]
            PRFM            #0, [X20,#0x40]
          }

          _X19 = v6 + v118;
          __asm
          {
            PRFM            #0, [X19]
            PRFM            #0, [X19,#0x20]
          }

          v125 = *(v27 + 4 * (v28 & 7));
          *(v27 + 4 * (v28 & 7)) = v117;
          v126 = (v125 >> 2) & 0x3FFFFFC0;
          v127 = v5 + 4 * v126;
          v128 = (v6 + v126);
          if (((*v128 - 1) & 0x3F) != 0)
          {
            v129 = 0;
          }

          else
          {
            v129 = 63;
          }

          v130 = v129 + ((*v128 - 1) & 0x3F);
          *v128 = v130;
          v128[v130] = v125;
          *(v127 + 4 * v130) = v28++;
        }

        while (v116 != v28);
        v30 = *(a1 + 112);
        v29 = *(a1 + 56);
      }

      v131 = v9 - 32;
      LODWORD(v28) = v9 - 32;
      v132 = a2 + 1 - (v8 + v131);
      if ((v132 + 1) < 8)
      {
        v133 = v132 + 1;
      }

      else
      {
        v133 = 8;
      }

      if (a2 + 1 >= v8 + v131)
      {
        v134 = v133;
      }

      else
      {
        v134 = 0;
      }

      if (v131 < v134 + v131)
      {
        v135 = *(a1 + 96);
        v136 = 56 - *(a1 + 52);
        do
        {
          v137 = ((0xCF1BBCDCBB000000 * *(v8 + v131)) ^ v135) >> v136;
          v138 = (v137 >> 2) & 0x3FFFFFC0;
          _X23 = v30 + 4 * v138;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v29 + v138;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          *(v27 + 4 * (v131++ & 7)) = v137;
          --v134;
        }

        while (v134);
      }
    }

    else
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
    }

    if (v28 < v9)
    {
      v31 = *(a1 + 8) + 8;
      v32 = 56 - *(a1 + 52);
      v33 = v28;
      do
      {
        v34 = ((0xCF1BBCDCBB000000 * *(v31 + v33)) ^ *(a1 + 96)) >> v32;
        v35 = (v34 >> 2) & 0x3FFFFFC0;
        _X23 = v30 + 4 * v35;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X22 = v29 + v35;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x20]
        }

        v42 = *(v27 + 4 * (v33 & 7));
        *(v27 + 4 * (v33 & 7)) = v34;
        v43 = (v42 >> 2) & 0x3FFFFFC0;
        v44 = v30 + 4 * v43;
        v45 = (v29 + v43);
        if (((*v45 - 1) & 0x3F) != 0)
        {
          v46 = 0;
        }

        else
        {
          v46 = 63;
        }

        v47 = v46 + ((*v45 - 1) & 0x3F);
        *v45 = v47;
        v45[v47] = v42;
        *(v44 + 4 * v47) = v33++;
      }

      while (v33 < v149);
    }

    v9 = v149;
    *(a1 + 44) = v149;
    v48 = ((0xCF1BBCDCBB000000 * *(v8 + v149 + 8)) ^ v16) >> (56 - v7);
    v49 = (v48 >> 2) & 0x3FFFFFC0;
    _X17 = v5 + 4 * v49;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x40]
    }

    _X15 = v6 + v49;
    __asm
    {
      PRFM            #0, [X15]
      PRFM            #0, [X15,#0x20]
    }

    LODWORD(_X15) = *(v27 + 4 * (v149 & 7));
    *(v27 + 4 * (v149 & 7)) = v48;
  }

  *(a1 + 104) += _X15;
  v55 = (_X15 >> 2) & 0x3FFFFFC0;
  v56 = v5 + 4 * v55;
  v57 = (v6 + v55);
  v58 = *v57;
  v157 = vld4q_s8(v57);
  v59 = vdupq_n_s8(_X15);
  v157.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v157.val[3], v59), vceqq_s8(v157.val[2], v59), 1uLL), vsriq_n_s8(vceqq_s8(v157.val[1], v59), vceqq_s8(v157.val[0], v59), 1uLL), 2uLL);
  v60 = vshrn_n_s16(vsriq_n_s8(v157.val[0], v157.val[0], 4uLL), 4uLL);
  v61 = 0;
  if (v60)
  {
    v62 = __ROR8__(*&v60, v58);
    do
    {
      v63 = (__clz(__rbit64(v62)) + v58) & 0x3F;
      if (v63)
      {
        v64 = *(v56 + 4 * v63);
        if (v64 < v11)
        {
          break;
        }

        _X4 = v8 + v64;
        __asm { PRFM            #0, [X4] }

        v155[v61++] = v64;
        --v17;
      }

      v62 &= v62 - 1;
    }

    while (v62 && v17);
  }

  v67 = (v58 - 1) & 0x3F;
  if (((v58 - 1) & 0x3F) != 0)
  {
    v68 = 0;
  }

  else
  {
    v68 = 63;
  }

  v69 = v68 + v67;
  *v57 = v69;
  v57[v69] = _X15;
  v70 = 4 * v19;
  v71 = *(a1 + 44);
  *(a1 + 44) = v71 + 1;
  *(v56 + 4 * v69) = v71;
  if (v61)
  {
    v72 = 0;
    v73 = a3 - 7;
    v74 = 3;
    while (1)
    {
      v75 = v155[v72];
      v76 = (v8 + v75);
      if (*(v8 + v75 + v74 - 3) != *(a2 + v74 - 3))
      {
        goto LABEL_54;
      }

      if (v73 <= a2)
      {
        v79 = a2;
      }

      else
      {
        v77 = *v76;
        if (v77 != *a2)
        {
          v84 = __clz(__rbit64(*a2 ^ v77)) >> 3;
          goto LABEL_52;
        }

        v78 = 0;
        v76 = (v8 + 8 + v75);
        v79 = a2 + 4;
        while (v79 < v73)
        {
          v81 = *v76;
          v76 += 4;
          v80 = v81;
          v83 = *v79;
          v79 += 4;
          v82 = v83;
          v78 += 8;
          if (v80 != v83)
          {
            v84 = v78 + (__clz(__rbit64(v82 ^ v80)) >> 3);
            goto LABEL_52;
          }
        }
      }

      if (v79 < a3 - 3 && *v76 == *v79)
      {
        v76 += 2;
        v79 += 2;
      }

      if (v79 < a3 - 1 && *v76 == *v79)
      {
        ++v76;
        ++v79;
      }

      if (v79 < a3 && *v76 == *v79)
      {
        v79 = (v79 + 1);
      }

      v84 = v79 - a2;
LABEL_52:
      if (v84 > v74)
      {
        *a4 = v9 + 3 - v75;
        v74 = v84;
        if ((a2 + v84) == a3)
        {
          goto LABEL_57;
        }
      }

LABEL_54:
      ++v72;
      v84 = v74;
      if (v72 == v61)
      {
        goto LABEL_57;
      }
    }
  }

  v84 = 3;
LABEL_57:
  v85 = 0;
  v86 = *v14;
  v87 = *(v14 + 8);
  v88 = *v14 - v87 - v154;
  v89 = (*(v14 + 112) + 4 * v70);
  do
  {
    _X11 = v87 + v89[v85];
    __asm { PRFM            #0, [X11] }

    ++v85;
  }

  while (v85 != 3);
  v92 = v89[3];
  _X19 = (*(v14 + 128) + 4 * (v92 >> 8));
  __asm { PRFM            #0, [X19] }

  LODWORD(v95) = v17 + v25;
  if (v95)
  {
    v147 = v89[3];
    v146 = v95;
    if (v95 >= 3)
    {
      v95 = 3;
    }

    else
    {
      v95 = v95;
    }

    v148 = *v14 - v87 - v154;
    v150 = v9 + v88 + 3;
    v145 = v95;
    v96 = v95;
    while (1)
    {
      v98 = *v89++;
      v97 = v98;
      if (!v98)
      {
        break;
      }

      if (*(v87 + v97) == *a2)
      {
        v99 = sub_243913D40(a2 + 2, (v87 + v97 + 4), a3, v86, (v8 + v154));
        a3 = v153;
        v100 = v99 + 4;
        if (v99 + 4 > v84)
        {
          *a4 = (v150 - v97);
          v84 = v99 + 4;
          if ((a2 + v100) == v153)
          {
            goto LABEL_84;
          }
        }
      }

      if (!--v96)
      {
        v88 = v148;
        LOBYTE(v92) = v147;
        LODWORD(v95) = v146;
        v101 = v145;
        goto LABEL_71;
      }
    }

LABEL_83:
    v100 = v84;
    goto LABEL_84;
  }

  v101 = 0;
LABEL_71:
  v102 = v95 - v101;
  if (v102 >= v92)
  {
    v103 = v92;
  }

  else
  {
    v103 = v102;
  }

  if (!v103)
  {
    goto LABEL_83;
  }

  v104 = 4 * v103;
  v105 = _X19;
  do
  {
    v106 = *v105++;
    _X10 = v87 + v106;
    __asm { PRFM            #0, [X10] }

    v104 -= 4;
  }

  while (v104);
  v109 = *a2;
  v151 = v149 + v88 + 3;
  v100 = v84;
  do
  {
    v111 = *_X19++;
    v110 = v111;
    v112 = v87 + v111;
    if (*v112 == v109)
    {
      v113 = sub_243913D40(a2 + 2, (v112 + 4), a3, v86, (v8 + v154));
      a3 = v153;
      if (v113 + 4 > v100)
      {
        *a4 = v151 - v110;
        v100 = v113 + 4;
        if ((a2 + v113 + 4) == v153)
        {
          break;
        }
      }
    }

    --v103;
  }

  while (v103);
LABEL_84:
  v114 = *MEMORY[0x277D85DE8];
  return v100;
}