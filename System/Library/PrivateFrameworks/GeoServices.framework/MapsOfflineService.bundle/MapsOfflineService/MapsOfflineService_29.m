void sub_245A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_246690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_246778(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  v2 = *(a2 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  v4 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *(v4 + 32);
      if (v6 < 35)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (v6 == 34)
    {
      break;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  v7 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v8 = v7;
      v9 = *(v7 + 32);
      if (v9 < 36)
      {
        break;
      }

      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_13;
      }
    }

    if (v9 == 35)
    {
      break;
    }

    v7 = v8[1];
    if (!v7)
    {
LABEL_13:
      operator new();
    }
  }

  v10 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v11 = v10;
      v12 = *(v10 + 32);
      if (v12 < 37)
      {
        break;
      }

      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_19;
      }
    }

    if (v12 == 36)
    {
      break;
    }

    v10 = v11[1];
    if (!v10)
    {
LABEL_19:
      operator new();
    }
  }

  v13 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v14 = v13;
      v15 = *(v13 + 32);
      if (v15 < 38)
      {
        break;
      }

      v13 = *v14;
      if (!*v14)
      {
        goto LABEL_25;
      }
    }

    if (v15 == 37)
    {
      break;
    }

    v13 = v14[1];
    if (!v13)
    {
LABEL_25:
      operator new();
    }
  }

  v16 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v17 = v16;
      v18 = *(v16 + 32);
      if (v18 < 39)
      {
        break;
      }

      v16 = *v17;
      if (!*v17)
      {
        goto LABEL_31;
      }
    }

    if (v18 == 38)
    {
      break;
    }

    v16 = v17[1];
    if (!v16)
    {
LABEL_31:
      operator new();
    }
  }

  v19 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v20 = v19;
      v21 = *(v19 + 32);
      if (v21 < 41)
      {
        break;
      }

      v19 = *v20;
      if (!*v20)
      {
        goto LABEL_37;
      }
    }

    if (v21 == 40)
    {
      break;
    }

    v19 = v20[1];
    if (!v19)
    {
LABEL_37:
      operator new();
    }
  }

  v22 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v23 = v22;
      v24 = *(v22 + 32);
      if (v24 < 42)
      {
        break;
      }

      v22 = *v23;
      if (!*v23)
      {
        goto LABEL_43;
      }
    }

    if (v24 == 41)
    {
      break;
    }

    v22 = v23[1];
    if (!v22)
    {
LABEL_43:
      operator new();
    }
  }

  v25 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v26 = v25;
      v27 = *(v25 + 32);
      if (v27 < 43)
      {
        break;
      }

      v25 = *v26;
      if (!*v26)
      {
        goto LABEL_49;
      }
    }

    if (v27 == 42)
    {
      break;
    }

    v25 = v26[1];
    if (!v25)
    {
LABEL_49:
      operator new();
    }
  }

  v28 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v29 = v28;
      v30 = *(v28 + 32);
      if (v30 < 44)
      {
        break;
      }

      v28 = *v29;
      if (!*v29)
      {
        goto LABEL_55;
      }
    }

    if (v30 == 43)
    {
      break;
    }

    v28 = v29[1];
    if (!v28)
    {
LABEL_55:
      operator new();
    }
  }

  v31 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v32 = v31;
      v33 = *(v31 + 32);
      if (v33 < 45)
      {
        break;
      }

      v31 = *v32;
      if (!*v32)
      {
        goto LABEL_61;
      }
    }

    if (v33 == 44)
    {
      break;
    }

    v31 = v32[1];
    if (!v31)
    {
LABEL_61:
      operator new();
    }
  }

  v34 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v35 = v34;
      v36 = *(v34 + 32);
      if (v36 < 46)
      {
        break;
      }

      v34 = *v35;
      if (!*v35)
      {
        goto LABEL_67;
      }
    }

    if (v36 == 45)
    {
      break;
    }

    v34 = v35[1];
    if (!v34)
    {
LABEL_67:
      operator new();
    }
  }

  v37 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v38 = v37;
      v39 = *(v37 + 32);
      if (v39 < 47)
      {
        break;
      }

      v37 = *v38;
      if (!*v38)
      {
        goto LABEL_73;
      }
    }

    if (v39 == 46)
    {
      break;
    }

    v37 = v38[1];
    if (!v37)
    {
LABEL_73:
      operator new();
    }
  }

  v40 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v41 = v40;
      v42 = *(v40 + 32);
      if (v42 < 48)
      {
        break;
      }

      v40 = *v41;
      if (!*v41)
      {
        goto LABEL_79;
      }
    }

    if (v42 == 47)
    {
      break;
    }

    v40 = v41[1];
    if (!v40)
    {
LABEL_79:
      operator new();
    }
  }

  v43 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v44 = v43;
      v45 = *(v43 + 32);
      if (v45 < 49)
      {
        break;
      }

      v43 = *v44;
      if (!*v44)
      {
        goto LABEL_85;
      }
    }

    if (v45 == 48)
    {
      break;
    }

    v43 = v44[1];
    if (!v43)
    {
LABEL_85:
      operator new();
    }
  }

  v46 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v47 = v46;
      v48 = *(v46 + 32);
      if (v48 < 50)
      {
        break;
      }

      v46 = *v47;
      if (!*v47)
      {
        goto LABEL_91;
      }
    }

    if (v48 == 49)
    {
      break;
    }

    v46 = v47[1];
    if (!v46)
    {
LABEL_91:
      operator new();
    }
  }

  v49 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v50 = v49;
      v51 = *(v49 + 32);
      if (v51 < 51)
      {
        break;
      }

      v49 = *v50;
      if (!*v50)
      {
        goto LABEL_97;
      }
    }

    if (v51 == 50)
    {
      break;
    }

    v49 = v50[1];
    if (!v49)
    {
LABEL_97:
      operator new();
    }
  }

  v52 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v53 = v52;
      v54 = *(v52 + 32);
      if (v54 < 53)
      {
        break;
      }

      v52 = *v53;
      if (!*v53)
      {
        goto LABEL_103;
      }
    }

    if (v54 == 52)
    {
      break;
    }

    v52 = v53[1];
    if (!v52)
    {
LABEL_103:
      operator new();
    }
  }

  v55 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v56 = v55;
      v57 = *(v55 + 32);
      if (v57 < 54)
      {
        break;
      }

      v55 = *v56;
      if (!*v56)
      {
        goto LABEL_109;
      }
    }

    if (v57 == 53)
    {
      break;
    }

    v55 = v56[1];
    if (!v55)
    {
LABEL_109:
      operator new();
    }
  }

  v58 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v59 = v58;
      v60 = *(v58 + 32);
      if (v60 < 55)
      {
        break;
      }

      v58 = *v59;
      if (!*v59)
      {
        goto LABEL_115;
      }
    }

    if (v60 == 54)
    {
      break;
    }

    v58 = v59[1];
    if (!v58)
    {
LABEL_115:
      operator new();
    }
  }

  v61 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v62 = v61;
      v63 = *(v61 + 32);
      if (v63 < 59)
      {
        break;
      }

      v61 = *v62;
      if (!*v62)
      {
        goto LABEL_121;
      }
    }

    if (v63 == 58)
    {
      break;
    }

    v61 = v62[1];
    if (!v61)
    {
LABEL_121:
      operator new();
    }
  }

  v64 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v65 = v64;
      v66 = *(v64 + 32);
      if (v66 < 60)
      {
        break;
      }

      v64 = *v65;
      if (!*v65)
      {
        goto LABEL_127;
      }
    }

    if (v66 == 59)
    {
      break;
    }

    v64 = v65[1];
    if (!v64)
    {
LABEL_127:
      operator new();
    }
  }

  v67 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v68 = v67;
      v69 = *(v67 + 32);
      if (v69 < 61)
      {
        break;
      }

      v67 = *v68;
      if (!*v68)
      {
        goto LABEL_133;
      }
    }

    if (v69 == 60)
    {
      break;
    }

    v67 = v68[1];
    if (!v67)
    {
LABEL_133:
      operator new();
    }
  }

  while (1)
  {
    while (1)
    {
      v70 = v2;
      v71 = *(v2 + 32);
      if (v71 < 58)
      {
        break;
      }

      v2 = *v70;
      if (!*v70)
      {
        goto LABEL_139;
      }
    }

    if (v71 == 57)
    {
      break;
    }

    v2 = v70[1];
    if (!v2)
    {
LABEL_139:
      operator new();
    }
  }

  v72 = *v3;
  if (!*v3)
  {
LABEL_146:
    operator new();
  }

  v73 = *v3;
  while (1)
  {
    while (1)
    {
      v74 = v73;
      v75 = *(v73 + 32);
      if (v75 < 64)
      {
        break;
      }

      v73 = *v74;
      if (!*v74)
      {
        goto LABEL_146;
      }
    }

    if (v75 == 63)
    {
      break;
    }

    v73 = v74[1];
    if (!v73)
    {
      goto LABEL_146;
    }
  }

  if (!v72)
  {
LABEL_153:
    operator new();
  }

  v76 = *v3;
  while (1)
  {
    while (1)
    {
      v77 = v76;
      v78 = *(v76 + 32);
      if (v78 < 65)
      {
        break;
      }

      v76 = *v77;
      if (!*v77)
      {
        goto LABEL_153;
      }
    }

    if (v78 == 64)
    {
      break;
    }

    v76 = v77[1];
    if (!v76)
    {
      goto LABEL_153;
    }
  }

  v79 = *v3;
  while (1)
  {
    while (1)
    {
      v80 = v79;
      v81 = *(v79 + 32);
      if (v81 < 66)
      {
        break;
      }

      v79 = *v80;
      if (!*v80)
      {
        goto LABEL_159;
      }
    }

    if (v81 == 65)
    {
      break;
    }

    v79 = v80[1];
    if (!v79)
    {
LABEL_159:
      operator new();
    }
  }

  v82 = *v3;
  while (1)
  {
    while (1)
    {
      v83 = v82;
      v84 = *(v82 + 32);
      if (v84 < 62)
      {
        break;
      }

      v82 = *v83;
      if (!*v83)
      {
        goto LABEL_165;
      }
    }

    if (v84 == 61)
    {
      break;
    }

    v82 = v83[1];
    if (!v82)
    {
LABEL_165:
      operator new();
    }
  }

  v85 = *v3;
  while (1)
  {
    while (1)
    {
      v86 = v85;
      v87 = *(v85 + 32);
      if (v87 < 63)
      {
        break;
      }

      v85 = *v86;
      if (!*v86)
      {
        goto LABEL_171;
      }
    }

    if (v87 == 62)
    {
      break;
    }

    v85 = v86[1];
    if (!v85)
    {
LABEL_171:
      operator new();
    }
  }

  v88 = *v3;
  while (1)
  {
    while (1)
    {
      v89 = v88;
      v90 = *(v88 + 32);
      if (v90 < 71)
      {
        break;
      }

      v88 = *v89;
      if (!*v89)
      {
        goto LABEL_177;
      }
    }

    if (v90 == 70)
    {
      break;
    }

    v88 = v89[1];
    if (!v88)
    {
LABEL_177:
      operator new();
    }
  }

  v91 = *v3;
  while (1)
  {
    while (1)
    {
      v92 = v91;
      v93 = *(v91 + 32);
      if (v93 < 72)
      {
        break;
      }

      v91 = *v92;
      if (!*v92)
      {
        goto LABEL_183;
      }
    }

    if (v93 == 71)
    {
      break;
    }

    v91 = v92[1];
    if (!v91)
    {
LABEL_183:
      operator new();
    }
  }

  v94 = *v3;
  while (1)
  {
    while (1)
    {
      v95 = v94;
      v96 = *(v94 + 32);
      if (v96 < 73)
      {
        break;
      }

      v94 = *v95;
      if (!*v95)
      {
        goto LABEL_189;
      }
    }

    if (v96 == 72)
    {
      break;
    }

    v94 = v95[1];
    if (!v94)
    {
LABEL_189:
      operator new();
    }
  }

  v97 = *v3;
  while (1)
  {
    while (1)
    {
      v98 = v97;
      v99 = *(v97 + 32);
      if (v99 < 74)
      {
        break;
      }

      v97 = *v98;
      if (!*v98)
      {
        goto LABEL_195;
      }
    }

    if (v99 == 73)
    {
      break;
    }

    v97 = v98[1];
    if (!v97)
    {
LABEL_195:
      operator new();
    }
  }

  v100 = *v3;
  while (1)
  {
    while (1)
    {
      v101 = v100;
      v102 = *(v100 + 32);
      if (v102 < 76)
      {
        break;
      }

      v100 = *v101;
      if (!*v101)
      {
        goto LABEL_201;
      }
    }

    if (v102 == 75)
    {
      break;
    }

    v100 = v101[1];
    if (!v100)
    {
LABEL_201:
      operator new();
    }
  }

  v103 = *v3;
  while (1)
  {
    while (1)
    {
      v104 = v103;
      v105 = *(v103 + 32);
      if (v105 < 70)
      {
        break;
      }

      v103 = *v104;
      if (!*v104)
      {
        goto LABEL_207;
      }
    }

    if (v105 == 69)
    {
      break;
    }

    v103 = v104[1];
    if (!v103)
    {
LABEL_207:
      operator new();
    }
  }

  v106 = *v3;
  while (1)
  {
    while (1)
    {
      v107 = v106;
      v108 = *(v106 + 32);
      if (v108 < 77)
      {
        break;
      }

      v106 = *v107;
      if (!*v107)
      {
        goto LABEL_213;
      }
    }

    if (v108 == 76)
    {
      break;
    }

    v106 = v107[1];
    if (!v106)
    {
LABEL_213:
      operator new();
    }
  }

  v109 = *v3;
  while (1)
  {
    while (1)
    {
      v110 = v109;
      v111 = *(v109 + 32);
      if (v111 < 78)
      {
        break;
      }

      v109 = *v110;
      if (!*v110)
      {
        goto LABEL_219;
      }
    }

    if (v111 == 77)
    {
      break;
    }

    v109 = v110[1];
    if (!v109)
    {
LABEL_219:
      operator new();
    }
  }

  v112 = *v3;
  while (1)
  {
    while (1)
    {
      v113 = v112;
      v114 = *(v112 + 32);
      if (v114 < 79)
      {
        break;
      }

      v112 = *v113;
      if (!*v113)
      {
        goto LABEL_225;
      }
    }

    if (v114 == 78)
    {
      break;
    }

    v112 = v113[1];
    if (!v112)
    {
LABEL_225:
      operator new();
    }
  }

  v115 = *v3;
  while (1)
  {
    while (1)
    {
      v116 = v115;
      v117 = *(v115 + 32);
      if (v117 < 80)
      {
        break;
      }

      v115 = *v116;
      if (!*v116)
      {
        goto LABEL_231;
      }
    }

    if (v117 == 79)
    {
      break;
    }

    v115 = v116[1];
    if (!v115)
    {
LABEL_231:
      operator new();
    }
  }

  while (1)
  {
    while (1)
    {
      v118 = v72;
      v119 = *(v72 + 32);
      if (v119 < 81)
      {
        break;
      }

      v72 = *v118;
      if (!*v118)
      {
        goto LABEL_237;
      }
    }

    if (v119 == 80)
    {
      break;
    }

    v72 = v118[1];
    if (!v72)
    {
LABEL_237:
      operator new();
    }
  }
}

void sub_247F7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  v3 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 < 3)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 == 2)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v6 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v7 = v6;
      v8 = *(v6 + 32);
      if (v8 < 4)
      {
        break;
      }

      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_13;
      }
    }

    if (v8 == 3)
    {
      break;
    }

    v6 = v7[1];
    if (!v6)
    {
LABEL_13:
      operator new();
    }
  }

  v9 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v10 = v9;
      v11 = *(v9 + 32);
      if (v11 < 5)
      {
        break;
      }

      v9 = *v10;
      if (!*v10)
      {
        goto LABEL_19;
      }
    }

    if (v11 == 4)
    {
      break;
    }

    v9 = v10[1];
    if (!v9)
    {
LABEL_19:
      operator new();
    }
  }

  v12 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v13 = v12;
      v14 = *(v12 + 32);
      if (v14 < 6)
      {
        break;
      }

      v12 = *v13;
      if (!*v13)
      {
        goto LABEL_25;
      }
    }

    if (v14 == 5)
    {
      break;
    }

    v12 = v13[1];
    if (!v12)
    {
LABEL_25:
      operator new();
    }
  }

  v15 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v16 = v15;
      v17 = *(v15 + 32);
      if (v17 < 7)
      {
        break;
      }

      v15 = *v16;
      if (!*v16)
      {
        goto LABEL_31;
      }
    }

    if (v17 == 6)
    {
      break;
    }

    v15 = v16[1];
    if (!v15)
    {
LABEL_31:
      operator new();
    }
  }

  v18 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v19 = v18;
      v20 = *(v18 + 32);
      if (v20 < 8)
      {
        break;
      }

      v18 = *v19;
      if (!*v19)
      {
        goto LABEL_37;
      }
    }

    if (v20 == 7)
    {
      break;
    }

    v18 = v19[1];
    if (!v18)
    {
LABEL_37:
      operator new();
    }
  }

  v21 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v22 = v21;
      v23 = *(v21 + 32);
      if (v23 < 15)
      {
        break;
      }

      v21 = *v22;
      if (!*v22)
      {
        goto LABEL_43;
      }
    }

    if (v23 == 14)
    {
      break;
    }

    v21 = v22[1];
    if (!v21)
    {
LABEL_43:
      operator new();
    }
  }

  v24 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v25 = v24;
      v26 = *(v24 + 32);
      if (v26 < 16)
      {
        break;
      }

      v24 = *v25;
      if (!*v25)
      {
        goto LABEL_49;
      }
    }

    if (v26 == 15)
    {
      break;
    }

    v24 = v25[1];
    if (!v24)
    {
LABEL_49:
      operator new();
    }
  }

  v27 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v28 = v27;
      v29 = *(v27 + 32);
      if (v29 < 22)
      {
        break;
      }

      v27 = *v28;
      if (!*v28)
      {
        goto LABEL_55;
      }
    }

    if (v29 == 21)
    {
      break;
    }

    v27 = v28[1];
    if (!v27)
    {
LABEL_55:
      operator new();
    }
  }

  v30 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v31 = v30;
      v32 = *(v30 + 32);
      if (v32 < 21)
      {
        break;
      }

      v30 = *v31;
      if (!*v31)
      {
        goto LABEL_61;
      }
    }

    if (v32 == 20)
    {
      break;
    }

    v30 = v31[1];
    if (!v30)
    {
LABEL_61:
      operator new();
    }
  }

  v33 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v34 = v33;
      v35 = *(v33 + 32);
      if (v35 < 17)
      {
        break;
      }

      v33 = *v34;
      if (!*v34)
      {
        goto LABEL_67;
      }
    }

    if (v35 == 16)
    {
      break;
    }

    v33 = v34[1];
    if (!v33)
    {
LABEL_67:
      operator new();
    }
  }

  v36 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v37 = v36;
      v38 = *(v36 + 32);
      if (v38 < 19)
      {
        break;
      }

      v36 = *v37;
      if (!*v37)
      {
        goto LABEL_73;
      }
    }

    if (v38 == 18)
    {
      break;
    }

    v36 = v37[1];
    if (!v36)
    {
LABEL_73:
      operator new();
    }
  }

  v39 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v40 = v39;
      v41 = *(v39 + 32);
      if (v41 < 23)
      {
        break;
      }

      v39 = *v40;
      if (!*v40)
      {
        goto LABEL_79;
      }
    }

    if (v41 == 22)
    {
      break;
    }

    v39 = v40[1];
    if (!v39)
    {
LABEL_79:
      operator new();
    }
  }

  v42 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v43 = v42;
      v44 = *(v42 + 32);
      if (v44 < 24)
      {
        break;
      }

      v42 = *v43;
      if (!*v43)
      {
        goto LABEL_85;
      }
    }

    if (v44 == 23)
    {
      break;
    }

    v42 = v43[1];
    if (!v42)
    {
LABEL_85:
      operator new();
    }
  }

  v45 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v46 = v45;
      v47 = *(v45 + 32);
      if (v47 < 25)
      {
        break;
      }

      v45 = *v46;
      if (!*v46)
      {
        goto LABEL_91;
      }
    }

    if (v47 == 24)
    {
      break;
    }

    v45 = v46[1];
    if (!v45)
    {
LABEL_91:
      operator new();
    }
  }

  v48 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v49 = v48;
      v50 = *(v48 + 32);
      if (v50 < 26)
      {
        break;
      }

      v48 = *v49;
      if (!*v49)
      {
        goto LABEL_97;
      }
    }

    if (v50 == 25)
    {
      break;
    }

    v48 = v49[1];
    if (!v48)
    {
LABEL_97:
      operator new();
    }
  }

  v51 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v52 = v51;
      v53 = *(v51 + 32);
      if (v53 < 27)
      {
        break;
      }

      v51 = *v52;
      if (!*v52)
      {
        goto LABEL_103;
      }
    }

    if (v53 == 26)
    {
      break;
    }

    v51 = v52[1];
    if (!v51)
    {
LABEL_103:
      operator new();
    }
  }

  while (1)
  {
    while (1)
    {
      v54 = v2;
      v55 = *(v2 + 32);
      if (v55 < 28)
      {
        break;
      }

      v2 = *v54;
      if (!*v54)
      {
        goto LABEL_109;
      }
    }

    if (v55 == 27)
    {
      break;
    }

    v2 = v54[1];
    if (!v2)
    {
LABEL_109:
      operator new();
    }
  }
}

void sub_248AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  v3 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= sub_131ACC)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= sub_131ACC)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v6 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v7 = v6;
      v8 = v6[4];
      if (v8 <= sub_131D24)
      {
        break;
      }

      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_13;
      }
    }

    if (v8 >= sub_131D24)
    {
      break;
    }

    v6 = v7[1];
    if (!v6)
    {
LABEL_13:
      operator new();
    }
  }

  v9 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v10 = v9;
      v11 = v9[4];
      if (v11 <= sub_131F7C)
      {
        break;
      }

      v9 = *v10;
      if (!*v10)
      {
        goto LABEL_19;
      }
    }

    if (v11 >= sub_131F7C)
    {
      break;
    }

    v9 = v10[1];
    if (!v9)
    {
LABEL_19:
      operator new();
    }
  }

  v12 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v13 = v12;
      v14 = v12[4];
      if (v14 <= sub_1321D4)
      {
        break;
      }

      v12 = *v13;
      if (!*v13)
      {
        goto LABEL_25;
      }
    }

    if (v14 >= sub_1321D4)
    {
      break;
    }

    v12 = v13[1];
    if (!v12)
    {
LABEL_25:
      operator new();
    }
  }

  v15 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v16 = v15;
      v17 = v15[4];
      if (v17 <= sub_132430)
      {
        break;
      }

      v15 = *v16;
      if (!*v16)
      {
        goto LABEL_31;
      }
    }

    if (v17 >= sub_132430)
    {
      break;
    }

    v15 = v16[1];
    if (!v15)
    {
LABEL_31:
      operator new();
    }
  }

  v18 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v19 = v18;
      v20 = v18[4];
      if (v20 <= sub_16D700)
      {
        break;
      }

      v18 = *v19;
      if (!*v19)
      {
        goto LABEL_37;
      }
    }

    if (v20 >= sub_16D700)
    {
      break;
    }

    v18 = v19[1];
    if (!v18)
    {
LABEL_37:
      operator new();
    }
  }

  v21 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v22 = v21;
      v23 = v21[4];
      if (v23 <= sub_13EA24)
      {
        break;
      }

      v21 = *v22;
      if (!*v22)
      {
        goto LABEL_43;
      }
    }

    if (v23 >= sub_13EA24)
    {
      break;
    }

    v21 = v22[1];
    if (!v21)
    {
LABEL_43:
      operator new();
    }
  }

  v24 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v25 = v24;
      v26 = v24[4];
      if (v26 <= sub_13FBAC)
      {
        break;
      }

      v24 = *v25;
      if (!*v25)
      {
        goto LABEL_49;
      }
    }

    if (v26 >= sub_13FBAC)
    {
      break;
    }

    v24 = v25[1];
    if (!v24)
    {
LABEL_49:
      operator new();
    }
  }

  v27 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v28 = v27;
      v29 = v27[4];
      if (v29 <= sub_140D34)
      {
        break;
      }

      v27 = *v28;
      if (!*v28)
      {
        goto LABEL_55;
      }
    }

    if (v29 >= sub_140D34)
    {
      break;
    }

    v27 = v28[1];
    if (!v27)
    {
LABEL_55:
      operator new();
    }
  }

  v30 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v31 = v30;
      v32 = v30[4];
      if (v32 <= sub_141EBC)
      {
        break;
      }

      v30 = *v31;
      if (!*v31)
      {
        goto LABEL_61;
      }
    }

    if (v32 >= sub_141EBC)
    {
      break;
    }

    v30 = v31[1];
    if (!v30)
    {
LABEL_61:
      operator new();
    }
  }

  v33 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v34 = v33;
      v35 = v33[4];
      if (v35 <= sub_143044)
      {
        break;
      }

      v33 = *v34;
      if (!*v34)
      {
        goto LABEL_67;
      }
    }

    if (v35 >= sub_143044)
    {
      break;
    }

    v33 = v34[1];
    if (!v33)
    {
LABEL_67:
      operator new();
    }
  }

  v36 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v37 = v36;
      v38 = v36[4];
      if (v38 <= sub_1441CC)
      {
        break;
      }

      v36 = *v37;
      if (!*v37)
      {
        goto LABEL_73;
      }
    }

    if (v38 >= sub_1441CC)
    {
      break;
    }

    v36 = v37[1];
    if (!v36)
    {
LABEL_73:
      operator new();
    }
  }

  v39 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v40 = v39;
      v41 = v39[4];
      if (v41 <= sub_146C48)
      {
        break;
      }

      v39 = *v40;
      if (!*v40)
      {
        goto LABEL_79;
      }
    }

    if (v41 >= sub_146C48)
    {
      break;
    }

    v39 = v40[1];
    if (!v39)
    {
LABEL_79:
      operator new();
    }
  }

  v42 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v43 = v42;
      v44 = v42[4];
      if (v44 <= sub_147E50)
      {
        break;
      }

      v42 = *v43;
      if (!*v43)
      {
        goto LABEL_85;
      }
    }

    if (v44 >= sub_147E50)
    {
      break;
    }

    v42 = v43[1];
    if (!v42)
    {
LABEL_85:
      operator new();
    }
  }

  v45 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v46 = v45;
      v47 = v45[4];
      if (v47 <= sub_149058)
      {
        break;
      }

      v45 = *v46;
      if (!*v46)
      {
        goto LABEL_91;
      }
    }

    if (v47 >= sub_149058)
    {
      break;
    }

    v45 = v46[1];
    if (!v45)
    {
LABEL_91:
      operator new();
    }
  }

  v48 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v49 = v48;
      v50 = v48[4];
      if (v50 <= sub_14A260)
      {
        break;
      }

      v48 = *v49;
      if (!*v49)
      {
        goto LABEL_97;
      }
    }

    if (v50 >= sub_14A260)
    {
      break;
    }

    v48 = v49[1];
    if (!v48)
    {
LABEL_97:
      operator new();
    }
  }

  v51 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v52 = v51;
      v53 = v51[4];
      if (v53 <= sub_14B658)
      {
        break;
      }

      v51 = *v52;
      if (!*v52)
      {
        goto LABEL_103;
      }
    }

    if (v53 >= sub_14B658)
    {
      break;
    }

    v51 = v52[1];
    if (!v51)
    {
LABEL_103:
      operator new();
    }
  }

  while (1)
  {
    while (1)
    {
      v54 = v2;
      v55 = v2[4];
      if (v55 <= sub_14CA60)
      {
        break;
      }

      v2 = *v54;
      if (!*v54)
      {
        goto LABEL_109;
      }
    }

    if (v55 >= sub_14CA60)
    {
      break;
    }

    v2 = v54[1];
    if (!v2)
    {
LABEL_109:
      operator new();
    }
  }
}

void sub_24979C(uint64_t a1, uint64_t a2)
{
  v36 = 7;
  strcpy(__p, "(t+t)/t");
  v37 = __p;
  v3 = sub_2538E4(a2, __p);
  v3[7] = sub_1DFDC8;
  *(v3 + 16) = 1000;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t+t)*t");
  v37 = __p;
  v4 = sub_2538E4(a2, __p);
  v4[7] = sub_1DFE20;
  *(v4 + 16) = 1001;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t+t)-t");
  v37 = __p;
  v5 = sub_2538E4(a2, __p);
  v5[7] = sub_1DFE78;
  *(v5 + 16) = 1002;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t+t)+t");
  v37 = __p;
  v6 = sub_2538E4(a2, __p);
  v6[7] = sub_1DFED0;
  *(v6 + 16) = 1003;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t-t)+t");
  v37 = __p;
  v7 = sub_2538E4(a2, __p);
  v7[7] = sub_1DFF28;
  *(v7 + 16) = 1004;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t-t)/t");
  v37 = __p;
  v8 = sub_2538E4(a2, __p);
  v8[7] = sub_1DFF80;
  *(v8 + 16) = 1005;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t-t)*t");
  v37 = __p;
  v9 = sub_2538E4(a2, __p);
  v9[7] = sub_1DFFD8;
  *(v9 + 16) = 1006;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t*t)+t");
  v37 = __p;
  v10 = sub_2538E4(a2, __p);
  v10[7] = sub_1E0030;
  *(v10 + 16) = 1007;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t*t)-t");
  v37 = __p;
  v11 = sub_2538E4(a2, __p);
  v11[7] = sub_1E0088;
  *(v11 + 16) = 1008;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t*t)/t");
  v37 = __p;
  v12 = sub_2538E4(a2, __p);
  v12[7] = sub_1E00E0;
  *(v12 + 16) = 1009;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t*t)*t");
  v37 = __p;
  v13 = sub_2538E4(a2, __p);
  v13[7] = sub_1E0138;
  *(v13 + 16) = 1010;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t/t)+t");
  v37 = __p;
  v14 = sub_2538E4(a2, __p);
  v14[7] = sub_1E0190;
  *(v14 + 16) = 1011;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t/t)-t");
  v37 = __p;
  v15 = sub_2538E4(a2, __p);
  v15[7] = sub_1E01E8;
  *(v15 + 16) = 1012;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t/t)/t");
  v37 = __p;
  v16 = sub_2538E4(a2, __p);
  v16[7] = sub_1E0240;
  *(v16 + 16) = 1013;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t/t)*t");
  v37 = __p;
  v17 = sub_2538E4(a2, __p);
  v17[7] = sub_1E0298;
  *(v17 + 16) = 1014;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t/(t+t)");
  v37 = __p;
  v18 = sub_2538E4(a2, __p);
  v18[7] = sub_1E02F0;
  *(v18 + 16) = 1015;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t/(t-t)");
  v37 = __p;
  v19 = sub_2538E4(a2, __p);
  v19[7] = sub_1E0348;
  *(v19 + 16) = 1016;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t/(t*t)");
  v37 = __p;
  v20 = sub_2538E4(a2, __p);
  v20[7] = sub_1E03A0;
  *(v20 + 16) = 1017;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t/(t/t)");
  v37 = __p;
  v21 = sub_2538E4(a2, __p);
  v21[7] = sub_1E03F8;
  *(v21 + 16) = 1018;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t*(t+t)");
  v37 = __p;
  v22 = sub_2538E4(a2, __p);
  v22[7] = sub_1E0450;
  *(v22 + 16) = 1019;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t*(t-t)");
  v37 = __p;
  v23 = sub_2538E4(a2, __p);
  v23[7] = sub_1E04A8;
  *(v23 + 16) = 1020;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t*(t*t)");
  v37 = __p;
  v24 = sub_2538E4(a2, __p);
  v24[7] = sub_1E0500;
  *(v24 + 16) = 1021;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t*(t/t)");
  v37 = __p;
  v25 = sub_2538E4(a2, __p);
  v25[7] = sub_1E0558;
  *(v25 + 16) = 1022;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t-(t+t)");
  v37 = __p;
  v26 = sub_2538E4(a2, __p);
  v26[7] = sub_1E05B0;
  *(v26 + 16) = 1023;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t-(t-t)");
  v37 = __p;
  v27 = sub_2538E4(a2, __p);
  v27[7] = sub_1E0608;
  *(v27 + 16) = 1024;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t-(t/t)");
  v37 = __p;
  v28 = sub_2538E4(a2, __p);
  v28[7] = sub_1E0660;
  *(v28 + 16) = 1025;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t-(t*t)");
  v37 = __p;
  v29 = sub_2538E4(a2, __p);
  v29[7] = sub_1E06B8;
  *(v29 + 16) = 1026;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t+(t*t)");
  v37 = __p;
  v30 = sub_2538E4(a2, __p);
  v30[7] = sub_1E0710;
  *(v30 + 16) = 1027;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t+(t/t)");
  v37 = __p;
  v31 = sub_2538E4(a2, __p);
  v31[7] = sub_1E0768;
  *(v31 + 16) = 1028;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t+(t+t)");
  v37 = __p;
  v32 = sub_2538E4(a2, __p);
  v32[7] = sub_1E07C0;
  *(v32 + 16) = 1029;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "t+(t-t)");
  v37 = __p;
  v33 = sub_2538E4(a2, __p);
  v33[7] = sub_1E0818;
  *(v33 + 16) = 1030;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 7;
  strcpy(__p, "(t-t)-t");
  v37 = __p;
  v34 = sub_2538E4(a2, __p);
  v34[7] = sub_1E05B0;
  *(v34 + 16) = 1023;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24A5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24A66C(uint64_t a1, uint64_t a2)
{
  v102 = 11;
  strcpy(__p, "t+((t+t)/t)");
  v103 = __p;
  v3 = sub_2538E4(a2, __p);
  v3[7] = sub_18E18C;
  *(v3 + 16) = 1048;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t+((t+t)*t)");
  v103 = __p;
  v4 = sub_2538E4(a2, __p);
  v4[7] = sub_18E220;
  *(v4 + 16) = 1049;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t+((t-t)/t)");
  v103 = __p;
  v5 = sub_2538E4(a2, __p);
  v5[7] = sub_18E2B4;
  *(v5 + 16) = 1050;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t+((t-t)*t)");
  v103 = __p;
  v6 = sub_2538E4(a2, __p);
  v6[7] = sub_18E348;
  *(v6 + 16) = 1051;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t+((t*t)/t)");
  v103 = __p;
  v7 = sub_2538E4(a2, __p);
  v7[7] = sub_18E3DC;
  *(v7 + 16) = 1052;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t+((t*t)*t)");
  v103 = __p;
  v8 = sub_2538E4(a2, __p);
  v8[7] = sub_18E470;
  *(v8 + 16) = 1053;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t+((t/t)+t)");
  v103 = __p;
  v9 = sub_2538E4(a2, __p);
  v9[7] = sub_18E504;
  *(v9 + 16) = 1054;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t+((t/t)/t)");
  v103 = __p;
  v10 = sub_2538E4(a2, __p);
  v10[7] = sub_18E598;
  *(v10 + 16) = 1055;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t+((t/t)*t)");
  v103 = __p;
  v11 = sub_2538E4(a2, __p);
  v11[7] = sub_18E62C;
  *(v11 + 16) = 1056;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t-((t+t)/t)");
  v103 = __p;
  v12 = sub_2538E4(a2, __p);
  v12[7] = sub_18E6C0;
  *(v12 + 16) = 1057;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t-((t+t)*t)");
  v103 = __p;
  v13 = sub_2538E4(a2, __p);
  v13[7] = sub_18E754;
  *(v13 + 16) = 1058;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t-((t-t)/t)");
  v103 = __p;
  v14 = sub_2538E4(a2, __p);
  v14[7] = sub_18E7E8;
  *(v14 + 16) = 1059;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t-((t-t)*t)");
  v103 = __p;
  v15 = sub_2538E4(a2, __p);
  v15[7] = sub_18E87C;
  *(v15 + 16) = 1060;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t-((t*t)/t)");
  v103 = __p;
  v16 = sub_2538E4(a2, __p);
  v16[7] = sub_18E910;
  *(v16 + 16) = 1061;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t-((t*t)*t)");
  v103 = __p;
  v17 = sub_2538E4(a2, __p);
  v17[7] = sub_18E9A4;
  *(v17 + 16) = 1062;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t-((t/t)/t)");
  v103 = __p;
  v18 = sub_2538E4(a2, __p);
  v18[7] = sub_18EA38;
  *(v18 + 16) = 1063;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t-((t/t)*t)");
  v103 = __p;
  v19 = sub_2538E4(a2, __p);
  v19[7] = sub_18EACC;
  *(v19 + 16) = 1064;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "((t+t)*t)-t");
  v103 = __p;
  v20 = sub_2538E4(a2, __p);
  v20[7] = sub_18EB60;
  *(v20 + 16) = 1065;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "((t-t)*t)-t");
  v103 = __p;
  v21 = sub_2538E4(a2, __p);
  v21[7] = sub_18EBF4;
  *(v21 + 16) = 1066;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "((t*t)*t)-t");
  v103 = __p;
  v22 = sub_2538E4(a2, __p);
  v22[7] = sub_18EC88;
  *(v22 + 16) = 1067;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "((t/t)*t)-t");
  v103 = __p;
  v23 = sub_2538E4(a2, __p);
  v23[7] = sub_18ED1C;
  *(v23 + 16) = 1068;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "((t+t)/t)-t");
  v103 = __p;
  v24 = sub_2538E4(a2, __p);
  v24[7] = sub_18EDB0;
  *(v24 + 16) = 1069;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "((t-t)/t)-t");
  v103 = __p;
  v25 = sub_2538E4(a2, __p);
  v25[7] = sub_18EE44;
  *(v25 + 16) = 1070;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "((t*t)/t)-t");
  v103 = __p;
  v26 = sub_2538E4(a2, __p);
  v26[7] = sub_18EED8;
  *(v26 + 16) = 1071;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "((t/t)/t)-t");
  v103 = __p;
  v27 = sub_2538E4(a2, __p);
  v27[7] = sub_18EF6C;
  *(v27 + 16) = 1072;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t*t)+(t*t)");
  v103 = __p;
  v28 = sub_2538E4(a2, __p);
  v28[7] = sub_18F000;
  *(v28 + 16) = 1073;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t*t)-(t*t)");
  v103 = __p;
  v29 = sub_2538E4(a2, __p);
  v29[7] = sub_18F094;
  *(v29 + 16) = 1074;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t*t)+(t/t)");
  v103 = __p;
  v30 = sub_2538E4(a2, __p);
  v30[7] = sub_18F128;
  *(v30 + 16) = 1075;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t*t)-(t/t)");
  v103 = __p;
  v31 = sub_2538E4(a2, __p);
  v31[7] = sub_18F1BC;
  *(v31 + 16) = 1076;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t/t)+(t/t)");
  v103 = __p;
  v32 = sub_2538E4(a2, __p);
  v32[7] = sub_18F250;
  *(v32 + 16) = 1077;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t/t)-(t/t)");
  v103 = __p;
  v33 = sub_2538E4(a2, __p);
  v33[7] = sub_18F2E4;
  *(v33 + 16) = 1078;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t/t)-(t*t)");
  v103 = __p;
  v34 = sub_2538E4(a2, __p);
  v34[7] = sub_18F378;
  *(v34 + 16) = 1079;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t/(t+(t*t))");
  v103 = __p;
  v35 = sub_2538E4(a2, __p);
  v35[7] = sub_18F40C;
  *(v35 + 16) = 1080;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t/(t-(t*t))");
  v103 = __p;
  v36 = sub_2538E4(a2, __p);
  v36[7] = sub_18F4A0;
  *(v36 + 16) = 1081;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t*(t+(t*t))");
  v103 = __p;
  v37 = sub_2538E4(a2, __p);
  v37[7] = sub_18F534;
  *(v37 + 16) = 1082;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t*(t-(t*t))");
  v103 = __p;
  v38 = sub_2538E4(a2, __p);
  v38[7] = sub_18F5C8;
  *(v38 + 16) = 1083;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)-(t*t)");
  v103 = __p;
  v39 = sub_2538E4(a2, __p);
  v39[7] = sub_18F65C;
  *(v39 + 16) = 2000;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)-(t/t)");
  v103 = __p;
  v40 = sub_2538E4(a2, __p);
  v40[7] = sub_18F6F0;
  *(v40 + 16) = 2001;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)+(t*t)");
  v103 = __p;
  v41 = sub_2538E4(a2, __p);
  v41[7] = sub_18F784;
  *(v41 + 16) = 2002;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)+(t/t)");
  v103 = __p;
  v42 = sub_2538E4(a2, __p);
  v42[7] = sub_18F818;
  *(v42 + 16) = 2003;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)+(t*t)");
  v103 = __p;
  v43 = sub_2538E4(a2, __p);
  v43[7] = sub_18F8AC;
  *(v43 + 16) = 2004;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)+(t/t)");
  v103 = __p;
  v44 = sub_2538E4(a2, __p);
  v44[7] = sub_18F940;
  *(v44 + 16) = 2005;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)-(t*t)");
  v103 = __p;
  v45 = sub_2538E4(a2, __p);
  v45[7] = sub_18F9D4;
  *(v45 + 16) = 2006;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)-(t/t)");
  v103 = __p;
  v46 = sub_2538E4(a2, __p);
  v46[7] = sub_18FA68;
  *(v46 + 16) = 2007;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)-(t-t)");
  v103 = __p;
  v47 = sub_2538E4(a2, __p);
  v47[7] = sub_18FAFC;
  *(v47 + 16) = 2008;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)+(t-t)");
  v103 = __p;
  v48 = sub_2538E4(a2, __p);
  v48[7] = sub_18FB90;
  *(v48 + 16) = 2009;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)+(t+t)");
  v103 = __p;
  v49 = sub_2538E4(a2, __p);
  v49[7] = sub_18FC24;
  *(v49 + 16) = 2010;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)*(t-t)");
  v103 = __p;
  v50 = sub_2538E4(a2, __p);
  v50[7] = sub_18FCB8;
  *(v50 + 16) = 2011;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)/(t-t)");
  v103 = __p;
  v51 = sub_2538E4(a2, __p);
  v51[7] = sub_18FD4C;
  *(v51 + 16) = 2012;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)-(t+t)");
  v103 = __p;
  v52 = sub_2538E4(a2, __p);
  v52[7] = sub_18FDE0;
  *(v52 + 16) = 2013;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)+(t+t)");
  v103 = __p;
  v53 = sub_2538E4(a2, __p);
  v53[7] = sub_18FE74;
  *(v53 + 16) = 2014;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)*(t+t)");
  v103 = __p;
  v54 = sub_2538E4(a2, __p);
  v54[7] = sub_18FF08;
  *(v54 + 16) = 2015;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)/(t+t)");
  v103 = __p;
  v55 = sub_2538E4(a2, __p);
  v55[7] = sub_18FF9C;
  *(v55 + 16) = 2016;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t*t)-(t+t)");
  v103 = __p;
  v56 = sub_2538E4(a2, __p);
  v56[7] = sub_190030;
  *(v56 + 16) = 2017;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t/t)-(t+t)");
  v103 = __p;
  v57 = sub_2538E4(a2, __p);
  v57[7] = sub_1900C4;
  *(v57 + 16) = 2018;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t*t)+(t+t)");
  v103 = __p;
  v58 = sub_2538E4(a2, __p);
  v58[7] = sub_190158;
  *(v58 + 16) = 2019;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t/t)+(t+t)");
  v103 = __p;
  v59 = sub_2538E4(a2, __p);
  v59[7] = sub_1901EC;
  *(v59 + 16) = 2020;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t*t)+(t-t)");
  v103 = __p;
  v60 = sub_2538E4(a2, __p);
  v60[7] = sub_190280;
  *(v60 + 16) = 2021;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t/t)+(t-t)");
  v103 = __p;
  v61 = sub_2538E4(a2, __p);
  v61[7] = sub_190314;
  *(v61 + 16) = 2022;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t*t)-(t-t)");
  v103 = __p;
  v62 = sub_2538E4(a2, __p);
  v62[7] = sub_1903A8;
  *(v62 + 16) = 2023;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t/t)-(t-t)");
  v103 = __p;
  v63 = sub_2538E4(a2, __p);
  v63[7] = sub_19043C;
  *(v63 + 16) = 2024;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)*(t*t)");
  v103 = __p;
  v64 = sub_2538E4(a2, __p);
  v64[7] = sub_1904D0;
  *(v64 + 16) = 2025;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)*(t/t)");
  v103 = __p;
  v65 = sub_2538E4(a2, __p);
  v65[7] = sub_190564;
  *(v65 + 16) = 2026;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)/(t*t)");
  v103 = __p;
  v66 = sub_2538E4(a2, __p);
  v66[7] = sub_1905F8;
  *(v66 + 16) = 2027;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)/(t/t)");
  v103 = __p;
  v67 = sub_2538E4(a2, __p);
  v67[7] = sub_19068C;
  *(v67 + 16) = 2028;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)/(t*t)");
  v103 = __p;
  v68 = sub_2538E4(a2, __p);
  v68[7] = sub_190720;
  *(v68 + 16) = 2029;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)/(t/t)");
  v103 = __p;
  v69 = sub_2538E4(a2, __p);
  v69[7] = sub_1907B4;
  *(v69 + 16) = 2030;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)*(t*t)");
  v103 = __p;
  v70 = sub_2538E4(a2, __p);
  v70[7] = sub_190848;
  *(v70 + 16) = 2031;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)*(t/t)");
  v103 = __p;
  v71 = sub_2538E4(a2, __p);
  v71[7] = sub_1908DC;
  *(v71 + 16) = 2032;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t*t)*(t+t)");
  v103 = __p;
  v72 = sub_2538E4(a2, __p);
  v72[7] = sub_190970;
  *(v72 + 16) = 2033;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t/t)*(t+t)");
  v103 = __p;
  v73 = sub_2538E4(a2, __p);
  v73[7] = sub_190A04;
  *(v73 + 16) = 2034;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t*t)/(t+t)");
  v103 = __p;
  v74 = sub_2538E4(a2, __p);
  v74[7] = sub_190A98;
  *(v74 + 16) = 2035;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t/t)/(t+t)");
  v103 = __p;
  v75 = sub_2538E4(a2, __p);
  v75[7] = sub_190B2C;
  *(v75 + 16) = 2036;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t/t)/(t+t)");
  v103 = __p;
  v76 = sub_2538E4(a2, __p);
  v76[7] = sub_190B2C;
  *(v76 + 16) = 2036;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t/t)/(t-t)");
  v103 = __p;
  v77 = sub_2538E4(a2, __p);
  v77[7] = sub_190C34;
  *(v77 + 16) = 2038;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t*t)*(t-t)");
  v103 = __p;
  v78 = sub_2538E4(a2, __p);
  v78[7] = sub_190CC8;
  *(v78 + 16) = 2039;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t*t)/(t*t)");
  v103 = __p;
  v79 = sub_2538E4(a2, __p);
  v79[7] = sub_190D5C;
  *(v79 + 16) = 2040;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t/t)*(t/t)");
  v103 = __p;
  v80 = sub_2538E4(a2, __p);
  v80[7] = sub_190DF0;
  *(v80 + 16) = 2041;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t/t)*(t-t)");
  v103 = __p;
  v81 = sub_2538E4(a2, __p);
  v81[7] = sub_190E84;
  *(v81 + 16) = 2042;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t*t)*(t*t)");
  v103 = __p;
  v82 = sub_2538E4(a2, __p);
  v82[7] = sub_190F18;
  *(v82 + 16) = 2043;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t+(t*(t/t))");
  v103 = __p;
  v83 = sub_2538E4(a2, __p);
  v83[7] = sub_190FAC;
  *(v83 + 16) = 2044;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t-(t*(t/t))");
  v103 = __p;
  v84 = sub_2538E4(a2, __p);
  v84[7] = sub_191040;
  *(v84 + 16) = 2045;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t+(t/(t*t))");
  v103 = __p;
  v85 = sub_2538E4(a2, __p);
  v85[7] = sub_1910D4;
  *(v85 + 16) = 2046;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "t-(t/(t*t))");
  v103 = __p;
  v86 = sub_2538E4(a2, __p);
  v86[7] = sub_191168;
  *(v86 + 16) = 2047;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "((t-t)-t)*t");
  v103 = __p;
  v87 = sub_2538E4(a2, __p);
  v87[7] = sub_1911FC;
  *(v87 + 16) = 2048;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "((t-t)-t)/t");
  v103 = __p;
  v88 = sub_2538E4(a2, __p);
  v88[7] = sub_191290;
  *(v88 + 16) = 2049;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "((t-t)+t)*t");
  v103 = __p;
  v89 = sub_2538E4(a2, __p);
  v89[7] = sub_191324;
  *(v89 + 16) = 2050;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "((t-t)+t)/t");
  v103 = __p;
  v90 = sub_2538E4(a2, __p);
  v90[7] = sub_1913B8;
  *(v90 + 16) = 2051;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+(t-t))*t");
  v103 = __p;
  v91 = sub_2538E4(a2, __p);
  v91[7] = sub_19144C;
  *(v91 + 16) = 2052;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+(t-t))/t");
  v103 = __p;
  v92 = sub_2538E4(a2, __p);
  v92[7] = sub_1914E0;
  *(v92 + 16) = 2053;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)/(t+t)");
  v103 = __p;
  v93 = sub_2538E4(a2, __p);
  v93[7] = sub_191574;
  *(v93 + 16) = 2054;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)/(t-t)");
  v103 = __p;
  v94 = sub_2538E4(a2, __p);
  v94[7] = sub_191608;
  *(v94 + 16) = 2055;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t+t)*(t+t)");
  v103 = __p;
  v95 = sub_2538E4(a2, __p);
  v95[7] = sub_19169C;
  *(v95 + 16) = 2056;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)*(t-t)");
  v103 = __p;
  v96 = sub_2538E4(a2, __p);
  v96[7] = sub_191730;
  *(v96 + 16) = 2057;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)+(t-t)");
  v103 = __p;
  v97 = sub_2538E4(a2, __p);
  v97[7] = sub_1917C4;
  *(v97 + 16) = 2058;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t-t)-(t-t)");
  v103 = __p;
  v98 = sub_2538E4(a2, __p);
  v98[7] = sub_191858;
  *(v98 + 16) = 2059;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "(t/t)+(t*t)");
  v103 = __p;
  v99 = sub_2538E4(a2, __p);
  v99[7] = sub_1918EC;
  *(v99 + 16) = 2060;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  v102 = 11;
  strcpy(__p, "((t*t)*t)/t");
  v103 = __p;
  v100 = sub_2538E4(a2, __p);
  v100[7] = sub_191980;
  *(v100 + 16) = 2061;
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24D300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x24D36CLL);
}

void sub_24D830(uint64_t a1)
{
  v3 = 7;
  strcpy(__p, "(v)o(v)");
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_253A60;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = 7;
  strcpy(__p, "(c)o(v)");
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_125A58;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = 7;
  strcpy(__p, "(v)o(c)");
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_253F2C;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_2697A4(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25476C;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_26A184(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_254B24;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_26C23C(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_254ED8;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_26E2E0(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25532C;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_26ECCC(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_2556E4;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_26F6B4(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_255AA0;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_271770(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_255E58;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_272158(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_256214;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_274184(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_256664;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_274B6C(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_256B88;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_276B18(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_2570C8;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_278AC0(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_257604;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_279764(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_257B60;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_27A550(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25828C;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_27B344(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_258818;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_27C13C(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_258DA4;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_27CF2C(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_259330;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_27DD20(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_2598BC;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_27EB1C(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25A13C;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_27F914(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25AAF8;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_284808(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25B378;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_285600(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25BC00;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_28639C(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25BEEC;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_287138(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25C1E0;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_287ED8(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25C4D8;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_288C74(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25C7CC;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_289A14(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25CB58;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_28A7BC(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25CEEC;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_28B560(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25D1E8;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_28C304(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25D578;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_28D0A8(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25D868;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_28DE40(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25DB54;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_28EBE0(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25DE48;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_28F980(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25E140;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_290720(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25E434;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_2914C0(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25E7C0;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_292268(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25EB54;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29300C(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25EE50;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_293DB0(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25F1E0;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_294B48(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25F4D0;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_2958E8(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25F85C;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29668C(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25FB50;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_297428(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_25FE48;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_2981C8(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_26013C;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_298F70(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_260438;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_299D14(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_2607CC;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29AAB8(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_260B5C;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29B85C(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_260E4C;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29C5F4(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_26113C;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29D394(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_2614C8;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29E134(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_2617BC;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29EED4(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_261AB4;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29FC74(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_261DA8;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_2A0A1C(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_2620A4;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_2A17C0(__p);
  v4 = __p;
  sub_262CB0(a1 + 16, __p)[7] = sub_262438;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24E9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24EAFC(void *result)
{
  *result = off_265C240;
  v1 = result[3];
  if (v1)
  {
    result[4] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void *sub_24EB58(void *a1)
{
  *a1 = off_265C168;
  sub_25332C((a1 + 1), a1[2]);
  return a1;
}

uint64_t sub_24EBA8(uint64_t a1)
{
  *a1 = off_265C050;
  sub_7E724(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_24EBF8(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 48));
      v2 = *a1;
      if (!*a1)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 135) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 112));
  if (*(a1 + 71) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

LABEL_9:
  v4 = *(a1 + 8);
  v5 = v2;
  if (v4 != v2)
  {
    do
    {
      if (*(v4 - 9) < 0)
      {
        operator delete(*(v4 - 4));
      }

      v4 -= 5;
    }

    while (v4 != v2);
    v5 = *a1;
  }

  *(a1 + 8) = v2;
  operator delete(v5);
  return a1;
}

void *sub_24ECC8(void *a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v4;
  a1[3] = 0;
  v5 = a1 + 3;
  a1[2] = a1 + 3;
  v6 = a1 + 2;
  a1[4] = 0;
  v7 = a2[2];
  v8 = a2 + 3;
  if (v7 != a2 + 3)
  {
    do
    {
      sub_BF33C(v6, v5, (v7 + 4));
      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v19 = *v18 == v7;
          v7 = v18;
        }

        while (!v19);
      }

      v7 = v18;
    }

    while (v18 != v8);
  }

  a1[6] = 0;
  a1[5] = a1 + 6;
  a1[7] = 0;
  v9 = a2[5];
  if (v9 != a2 + 6)
  {
    do
    {
      sub_BF33C(a1 + 5, a1 + 6, (v9 + 4));
      v20 = v9[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v9[2];
          v19 = *v21 == v9;
          v9 = v21;
        }

        while (!v19);
      }

      v9 = v21;
    }

    while (v21 != a2 + 6);
  }

  a1[9] = 0;
  a1[8] = a1 + 9;
  a1[10] = 0;
  v10 = a2[8];
  if (v10 != a2 + 9)
  {
    do
    {
      sub_BF33C(a1 + 8, a1 + 9, (v10 + 4));
      v22 = v10[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v10[2];
          v19 = *v23 == v10;
          v10 = v23;
        }

        while (!v19);
      }

      v10 = v23;
    }

    while (v23 != a2 + 9);
  }

  a1[12] = 0;
  a1[11] = a1 + 12;
  a1[13] = 0;
  v11 = a2[11];
  if (v11 != a2 + 12)
  {
    do
    {
      sub_BF33C(a1 + 11, a1 + 12, (v11 + 4));
      v24 = v11[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v11[2];
          v19 = *v25 == v11;
          v11 = v25;
        }

        while (!v19);
      }

      v11 = v25;
    }

    while (v25 != a2 + 12);
  }

  a1[15] = 0;
  a1[14] = a1 + 15;
  a1[16] = 0;
  v12 = a2[14];
  if (v12 != a2 + 15)
  {
    do
    {
      sub_BF33C(a1 + 14, a1 + 15, (v12 + 4));
      v26 = v12[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v12[2];
          v19 = *v27 == v12;
          v12 = v27;
        }

        while (!v19);
      }

      v12 = v27;
    }

    while (v27 != a2 + 15);
  }

  a1[18] = 0;
  v13 = a1 + 18;
  v30 = a1;
  a1[17] = a1 + 18;
  v14 = a1 + 17;
  a1[19] = 0;
  v15 = a2[17];
  if (v15 != a2 + 18)
  {
    do
    {
      sub_BF33C(v14, v13, (v15 + 4));
      v28 = v15[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v15[2];
          v19 = *v29 == v15;
          v15 = v29;
        }

        while (!v19);
      }

      v15 = v29;
    }

    while (v29 != a2 + 18);
  }

  return v30;
}

void sub_24EFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char **a9, uint64_t a10, char **a11, uint64_t a12)
{
  sub_7E724(v13, *v12);
  sub_7E724(v14, *v15);
  sub_7E724(v18, *v19);
  sub_7E724(v16, *v17);
  sub_7E724(a10, *a9);
  sub_7E724(a12, *a11);
  _Unwind_Resume(a1);
}

uint64_t sub_24F0A0(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, uint64_t a5)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  *a3 = 1;
  *a4 = 0;
  if (*(a5 + 23) < 0)
  {
    **a5 = 0;
    *(a5 + 8) = 0;
  }

  else
  {
    *a5 = 0;
    *(a5 + 23) = 0;
  }

  return 1;
}

uint64_t sub_24F10C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 3);
    v6 = a1[1];
    v7 = v5 >= v6;
    v8 = v5 - v6;
    if (v7 && v8 != -1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      while (1)
      {
        v16 = 0;
        v18 = 0;
        LOBYTE(__p) = 0;
        v19 = -1;
        if (v6 <= 2)
        {
          if (v6 == 1)
          {
            v15 = (*(*a1 + 48))(a1, v2 + v12, &v16);
LABEL_23:
            if ((v15 & 0x80000000) == 0 && v15 <= *(a1 + 2) + 1)
            {
              sub_20A044(a2, *a2 + 40 * (v13 + v15), &v16);
              ++v14;
            }

            if (v18 < 0)
            {
              operator delete(__p);
            }

            goto LABEL_11;
          }

          if (v6 == 2)
          {
            v15 = (*(*a1 + 56))(a1, v2 + v12, v2 + v12 + 40, &v16);
            goto LABEL_23;
          }
        }

        else
        {
          switch(v6)
          {
            case 3:
              v15 = (*(*a1 + 64))(a1, v2 + v12, v2 + v12 + 40, v2 + v12 + 80, &v16);
              goto LABEL_23;
            case 4:
              v15 = (*(*a1 + 72))(a1, v2 + v12, v2 + v12 + 40, v2 + v12 + 80, v2 + v12 + 120, &v16);
              goto LABEL_23;
            case 5:
              v15 = (*(*a1 + 80))(a1, v2 + v12, v2 + v12 + 40, v2 + v12 + 80, v2 + v12 + 120, v2 + v12 + 160, &v16);
              goto LABEL_23;
          }
        }

LABEL_11:
        ++v13;
        v2 = *a2;
        v6 = a1[1];
        v12 += 40;
        if (v13 >= 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) - v6 + 1)
        {
          return v14;
        }
      }
    }
  }

  return 0;
}

void sub_24F37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24F39C(uint64_t a1)
{
  *a1 = off_265C050;
  sub_7E724(a1 + 16, *(a1 + 24));

  operator delete();
}

uint64_t sub_24F410(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  *a4 = 42;
  if (*(a4 + 31) < 0)
  {
    *(a4 + 16) = 1;
    v6 = *(a4 + 8);
  }

  else
  {
    v6 = (a4 + 8);
    *(a4 + 31) = 1;
  }

  *v6 = 42;
  *(a4 + 32) = *(a3 + 4);
  if (*a2 == 8)
  {
    v7 = (a2 + 2);
    v8 = a1;
    if ((a1 + 24) != sub_BC284(a1 + 16, a2 + 1))
    {
      return 0xFFFFFFFFLL;
    }

    if (*(a2 + 31) < 0)
    {
      a1 = v8;
      if (*(a2 + 2) && **v7 == 36)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      a1 = v8;
      if (*(a2 + 31) && *v7 == 36)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  v10 = *a3;
  if (*a3 == 8)
  {
    if ((a1 + 24) != sub_BC284(a1 + 16, a3 + 1))
    {
      return 0xFFFFFFFFLL;
    }

    v10 = *a3;
  }

  v11 = *a2;
  v14 = v10 == 40 || (v10 & 0xFFFFFFDF) == 91 || v10 == 8;
  if (v11 == 7 && v14)
  {
    return 1;
  }

  if (v11 == 8 && v10 == 7)
  {
    return 1;
  }

  if (v11 == 41 && v10 == 7)
  {
    return 1;
  }

  if (v11 == 125 && v10 == 7)
  {
    return 1;
  }

  v15 = v10 == 7 && v11 == 93;
  v16 = v10 == 8 && v11 == 41;
  v17 = v10 == 8 && v11 == 125;
  v18 = v10 == 8 && v11 == 93;
  result = 1;
  if (!v15 && !v16 && !v17)
  {
    if (v10 == 8 && v11 == 8)
    {
      v20 = 1;
    }

    else
    {
      v20 = -1;
    }

    if (v18)
    {
      return 1;
    }

    else
    {
      return v20;
    }
  }

  return result;
}

uint64_t sub_24F680(uint64_t a1, uint64_t *a2)
{
  if (*a2 == a2[1])
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 != 3)
  {
    if (v2 == 2)
    {
      return sub_24FB54(a1, a2);
    }

    return 0;
  }

  return sub_24FE18(a1, a2);
}

uint64_t sub_24F6C4(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *a3;
  if (*a2 == 58 && v5 == 61)
  {
    *a4 = 10;
    if (*(a4 + 31) < 0)
    {
      *(a4 + 16) = 2;
      v6 = *(a4 + 8);
    }

    else
    {
      v6 = (a4 + 8);
      *(a4 + 31) = 2;
    }

    *v6 = 15674;
    v9 = v6 + 1;
    goto LABEL_89;
  }

  if (v4 == 43 && v5 == 61)
  {
    *a4 = 11;
    if (*(a4 + 31) < 0)
    {
      *(a4 + 16) = 2;
      v7 = *(a4 + 8);
    }

    else
    {
      v7 = (a4 + 8);
      *(a4 + 31) = 2;
    }

    *v7 = 15659;
    v9 = v7 + 1;
    goto LABEL_89;
  }

  if (v4 == 45 && v5 == 61)
  {
    *a4 = 12;
    if (*(a4 + 31) < 0)
    {
      *(a4 + 16) = 2;
      v8 = *(a4 + 8);
    }

    else
    {
      v8 = (a4 + 8);
      *(a4 + 31) = 2;
    }

    *v8 = 15661;
    v9 = v8 + 1;
    goto LABEL_89;
  }

  if (v4 == 42 && v5 == 61)
  {
    *a4 = 13;
    if (*(a4 + 31) < 0)
    {
      *(a4 + 16) = 2;
      v10 = *(a4 + 8);
    }

    else
    {
      v10 = (a4 + 8);
      *(a4 + 31) = 2;
    }

    *v10 = 15658;
    v9 = v10 + 1;
    goto LABEL_89;
  }

  if (v4 == 47 && v5 == 61)
  {
    *a4 = 14;
    if (*(a4 + 31) < 0)
    {
      *(a4 + 16) = 2;
      v11 = *(a4 + 8);
    }

    else
    {
      v11 = (a4 + 8);
      *(a4 + 31) = 2;
    }

    *v11 = 15663;
    v9 = v11 + 1;
    goto LABEL_89;
  }

  if (v4 == 37 && v5 == 61)
  {
    *a4 = 15;
    if (*(a4 + 31) < 0)
    {
      *(a4 + 16) = 2;
      v12 = *(a4 + 8);
    }

    else
    {
      v12 = (a4 + 8);
      *(a4 + 31) = 2;
    }

    *v12 = 15653;
    v9 = v12 + 1;
    goto LABEL_89;
  }

  if (v4 == 62 && v5 == 61)
  {
    *a4 = 20;
    if (*(a4 + 31) < 0)
    {
      *(a4 + 16) = 2;
      v13 = *(a4 + 8);
    }

    else
    {
      v13 = (a4 + 8);
      *(a4 + 31) = 2;
    }

    *v13 = 15678;
    v9 = v13 + 1;
    goto LABEL_89;
  }

  if (v4 == 60 && v5 == 61)
  {
    *a4 = 18;
    if (*(a4 + 31) < 0)
    {
      *(a4 + 16) = 2;
      v14 = *(a4 + 8);
    }

    else
    {
      v14 = (a4 + 8);
      *(a4 + 31) = 2;
    }

    *v14 = 15676;
    v9 = v14 + 1;
    goto LABEL_89;
  }

  if (v4 == 61 && v5 == 61)
  {
    *a4 = 61;
    if (*(a4 + 31) < 0)
    {
      *(a4 + 16) = 2;
      v15 = *(a4 + 8);
    }

    else
    {
      v15 = (a4 + 8);
      *(a4 + 31) = 2;
    }

    *v15 = 15677;
    v9 = v15 + 1;
    goto LABEL_89;
  }

  if (*a2 == 33 && v5 == 61)
  {
    *a4 = 19;
    if (*(a4 + 31) < 0)
    {
      *(a4 + 16) = 2;
      v16 = *(a4 + 8);
    }

    else
    {
      v16 = (a4 + 8);
      *(a4 + 31) = 2;
    }

    *v16 = 15649;
    v9 = v16 + 1;
    goto LABEL_89;
  }

  if (v4 == 60 && v5 == 62)
  {
    *a4 = 19;
    if (*(a4 + 31) < 0)
    {
      *(a4 + 16) = 2;
      v17 = *(a4 + 8);
    }

    else
    {
      v17 = (a4 + 8);
      *(a4 + 31) = 2;
    }

    *v17 = 15932;
    v9 = v17 + 1;
    goto LABEL_89;
  }

  if (v4 == 18 && v5 == 62)
  {
    *a4 = 21;
    if (*(a4 + 31) < 0)
    {
      *(a4 + 16) = 3;
      v18 = *(a4 + 8);
    }

    else
    {
      v18 = a4 + 8;
      *(a4 + 31) = 3;
    }

    *(v18 + 2) = 62;
    *v18 = 15676;
    v9 = (v18 + 3);
    goto LABEL_89;
  }

  if (v4 == 43 && v5 == 45)
  {
    goto LABEL_74;
  }

  if (v4 == 45 && v5 == 43)
  {
    v5 = 45;
LABEL_74:
    *a4 = v5;
    if (*(a4 + 31) < 0)
    {
      *(a4 + 16) = 1;
      v19 = *(a4 + 8);
    }

    else
    {
      v19 = (a4 + 8);
      *(a4 + 31) = 1;
    }

    v20 = 45;
LABEL_88:
    *v19 = v20;
    v9 = v19 + 1;
LABEL_89:
    *v9 = 0;
    *(a4 + 32) = *(a2 + 4);
    return 1;
  }

  result = 0;
  if (v4 == 45 && v5 == 45)
  {
    *a4 = 43;
    if (*(a4 + 31) < 0)
    {
      *(a4 + 16) = 1;
      v19 = *(a4 + 8);
    }

    else
    {
      v19 = (a4 + 8);
      *(a4 + 31) = 1;
    }

    v20 = 43;
    goto LABEL_88;
  }

  return result;
}

uint64_t sub_24FAE8(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v6 = *a2 == 91 && *a3 == 42 && *a4 == 93;
  result = v6;
  if (v6)
  {
    *a5 = 8;
    if (*(a5 + 31) < 0)
    {
      *(a5 + 16) = 3;
      v8 = *(a5 + 8);
    }

    else
    {
      v8 = (a5 + 8);
      *(a5 + 31) = 3;
    }

    *v8 = 6105691;
    *(a5 + 32) = *(a2 + 32);
  }

  return result;
}

uint64_t sub_24FB54(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a2) >> 3);
  if (v4 < 2 || v4 - 1 < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = a2 + 5;
  v25 = 71;
  do
  {
    v12 = v9;
    v26 = 0;
    HIBYTE(v28) = 0;
    LOBYTE(__p) = 0;
    v29 = -1;
    ++v9;
    do
    {
      v13 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 3);
      if (v13 <= v12)
      {
        v14 = v11;
      }

      else
      {
        v14 = (v2 + 40 * v12);
      }

      v15 = (v2 + 40 * v9);
      if (v13 <= v9)
      {
        v16 = v11;
      }

      else
      {
        v16 = v15;
      }

      if (!(*(*a1 + 48))(a1, v14, v16, &v26))
      {
        break;
      }

      v17 = *a2 + 40 * v12;
      *v17 = v26;
      v18 = (v17 + 8);
      if (v17 != &v26)
      {
        if (*(v17 + 31) < 0)
        {
          if (v28 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v28 >= 0)
          {
            v21 = HIBYTE(v28);
          }

          else
          {
            v21 = *(&__p + 1);
          }

          sub_13B38(v18, p_p, v21);
        }

        else if (v28 < 0)
        {
          sub_13A68(v18, __p, *(&__p + 1));
        }

        else
        {
          v19 = __p;
          *(v17 + 24) = v28;
          *v18 = v19;
        }
      }

      *(v17 + 32) = v29;
      v22 = a2[1];
      v3 = *a2 + 40 * v9;
      if ((v3 + 40) != v22)
      {
        v23 = (*a2 + v25);
        do
        {
          *(v23 - 31) = *(v23 + 9);
          v24 = (v23 - 23);
          if (*v23 < 0)
          {
            operator delete(*v24);
          }

          *(v23 - 7) = *(v23 + 33);
          v23[40] = 0;
          v23 += 40;
          *v24 = *(v23 - 23);
          *(v23 - 23) = 0;
          *(v23 - 39) = *(v23 + 1);
        }

        while (v23 + 9 != v22);
        v22 = a2[1];
        v3 = (v23 - 31);
      }

      while (v22 != v3)
      {
        if (*(v22 - 9) < 0)
        {
          operator delete(*(v22 - 4));
        }

        v22 -= 40;
      }

      a2[1] = v3;
      ++v10;
      v2 = *a2;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v3 - *a2) >> 3) > v9);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p);
    }

    v2 = *a2;
    v3 = a2[1];
    v25 += 40;
  }

  while (v9 < (-1 - 858993459 * ((v3 - *a2) >> 3)));
  return v10;
}

void sub_24FDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    v18 = a1;
    operator delete(__p);
    a1 = v18;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24FE18(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a2) >> 3);
  if (v4 >= 3 && v4 - 2 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = a2 + 5;
    while (1)
    {
      v12 = v9;
      v28 = 0;
      HIBYTE(v30) = 0;
      LOBYTE(__p) = 0;
      v31 = -1;
      ++v9;
      v13 = v12 + 2;
      do
      {
        v14 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 3);
        v15 = v14 <= v12 ? v11 : (v2 + 40 * v12);
        v16 = v14 <= v9 ? v11 : (v2 + 40 * v9);
        v17 = (v2 + 40 * v13);
        v18 = v14 <= v13 ? v11 : v17;
        if (!(*(*a1 + 56))(a1, v15, v16, v18, &v28))
        {
          break;
        }

        v19 = *a2 + 40 * v12;
        *v19 = v28;
        v20 = (v19 + 8);
        if (v19 != &v28)
        {
          if (*(v19 + 31) < 0)
          {
            if (v30 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v30 >= 0)
            {
              v23 = HIBYTE(v30);
            }

            else
            {
              v23 = *(&__p + 1);
            }

            sub_13B38(v20, p_p, v23);
          }

          else if (v30 < 0)
          {
            sub_13A68(v20, __p, *(&__p + 1));
          }

          else
          {
            v21 = __p;
            *(v19 + 24) = v30;
            *v20 = v21;
          }
        }

        *(v19 + 32) = v31;
        v24 = a2[1];
        v3 = *a2 + 40 * v9;
        v25 = v3 + 80;
        if (v3 + 80 != v24)
        {
          do
          {
            *(v25 - 80) = *v25;
            v27 = (v25 - 72);
            if (*(v25 - 49) < 0)
            {
              operator delete(*v27);
            }

            *v27 = *(v25 + 8);
            v26 = *(v25 + 32);
            *(v25 - 56) = *(v25 + 24);
            *(v25 + 31) = 0;
            *(v25 + 8) = 0;
            *(v25 - 48) = v26;
            v25 += 40;
          }

          while (v25 != v24);
          v24 = a2[1];
          v3 = v25 - 80;
          if (v24 == v25 - 80)
          {
            goto LABEL_12;
          }

          do
          {
LABEL_44:
            if (*(v24 - 9) < 0)
            {
              operator delete(*(v24 - 32));
            }

            v24 -= 40;
          }

          while (v24 != v3);
          goto LABEL_12;
        }

        if (v24 != v3)
        {
          goto LABEL_44;
        }

LABEL_12:
        a2[1] = v3;
        ++v10;
        v2 = *a2;
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((v3 - *a2) >> 3) > v13);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p);
      }

      v2 = *a2;
      v3 = a2[1];
      if (v9 >= (-2 - 858993459 * ((v3 - *a2) >> 3)))
      {
        return v10;
      }
    }
  }

  return 0;
}

void sub_2500C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    v18 = a1;
    operator delete(__p);
    a1 = v18;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2500E8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] == *a2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v7 += (*(*a1 + 48))(a1, v2 + v5);
    ++v6;
    v2 = *a2;
    v5 += 40;
  }

  while (v6 < 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  return v7;
}

void sub_2501AC(void *a1)
{
  *a1 = off_265C168;
  sub_25332C((a1 + 1), a1[2]);

  operator delete();
}

uint64_t sub_250218(uint64_t a1, uint64_t a2)
{
  if (*a2 != 8 || !*(a1 + 24))
  {
    return 0;
  }

  v3 = a2 + 8;
  v5 = sub_BC284(a1 + 8, (a2 + 8));
  if ((a1 + 16) == v5)
  {
    return 0;
  }

  v6 = a2;
  if (v3 != v5 + 7)
  {
    v7 = *(v5 + 79);
    if (*(a2 + 31) < 0)
    {
      if (v7 >= 0)
      {
        v10 = v5 + 7;
      }

      else
      {
        v10 = v5[7];
      }

      if (v7 >= 0)
      {
        v11 = *(v5 + 79);
      }

      else
      {
        v11 = v5[8];
      }

      v12 = v5;
      sub_13B38(v3, v10, v11);
    }

    else
    {
      if ((*(v5 + 79) & 0x80) == 0)
      {
        v8 = *(v5 + 7);
        *(v3 + 16) = v5[9];
        *v3 = v8;
        goto LABEL_19;
      }

      v12 = v5;
      sub_13A68(v3, v5[7], v5[8]);
    }

    v5 = v12;
    v6 = a2;
  }

LABEL_19:
  *v6 = *(v5 + 20);
  return 1;
}

void sub_250314(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  *__p = 0u;
  sub_250A4C((a1 + 24), __p);
  v2 = __p[1];
  v3 = v9;
  *(&v10 + 1) = 0;
  v4 = (v9 - __p[1]) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = v9;
      v2 = (__p[1] + 8);
      __p[1] = v2;
      v4 = (v9 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 256;
LABEL_7:
    *&v10 = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    if (v9 != __p[1])
    {
      *&v9 = v9 + ((__p[1] - v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  *(a1 + 16) = 1;
  *(a1 + 72) = 0;
  if (*(a1 + 103) < 0)
  {
    *(a1 + 88) = 0;
    v7 = *(a1 + 80);
  }

  else
  {
    v7 = (a1 + 80);
    *(a1 + 103) = 0;
  }

  *v7 = 0;
  *(a1 + 104) = -1;
}

uint64_t sub_250430(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return *(a1 + 16) & 1;
  }

  v8 = 0;
  *(a1 + 72) = 0;
  v3 = *(*(a1 + 32) + (((v2 + *(a1 + 56) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v2 + *(a1 + 56) - 1);
  v4 = *v3;
  HIBYTE(v10) = 1;
  LOWORD(__p) = v4;
  v5 = *(v3 + 8);
  v11 = v5;
  if ((a1 + 72) == &v8)
  {
LABEL_5:
    *(a1 + 104) = v5;
    *(a1 + 16) = 0;
    return 0;
  }

  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    *(a1 + 80) = __p;
    *(a1 + 96) = v10;
    goto LABEL_5;
  }

  sub_13B38(a1 + 80, &__p, 1uLL);
  v7 = SHIBYTE(v10);
  *(a1 + 104) = v11;
  *(a1 + 16) = 0;
  if (v7 < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_250550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_25056C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  v4 = a1[1];
  v5 = v3 >= v4;
  v6 = v3 - v4;
  if (v5 && v6 != -1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          if (((*(*a1 + 64))(a1, v2 + v9, v2 + v9 + 40, v2 + v9 + 80) & 1) == 0)
          {
            return v10;
          }
        }

        else if (v4 == 4 && !(*(*a1 + 72))(a1, v2 + v9, v2 + v9 + 40, v2 + v9 + 80, v2 + v9 + 120))
        {
          return v10;
        }
      }

      else if (v4 == 1)
      {
        if (((*(*a1 + 48))(a1, v2 + v9) & 1) == 0)
        {
          return v10;
        }
      }

      else if (v4 == 2 && ((*(*a1 + 56))(a1, v2 + v9, v2 + v9 + 40) & 1) == 0)
      {
        return v10;
      }

      ++v10;
      v2 = *a2;
      v4 = a1[1];
      v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) - v4;
      v9 += 40;
    }

    while (v10 < v6 + 1);
  }

  return v6 + 1;
}

void sub_250734(uint64_t a1)
{
  *a1 = off_265C1E0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  sub_42728(a1 + 24);

  operator delete();
}

uint64_t sub_2507AC(void *a1, uint64_t a2)
{
  v2 = *(a2 + 31);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 16);
  }

  if (!v2)
  {
    return 1;
  }

  v4 = *a2;
  if ((*a2 & 0xFFFFFFFE) == 8)
  {
    return 1;
  }

  if (v3 >= 0)
  {
    v6 = (a2 + 8);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = *v6;
  v8 = (v7 - 91) > 0x22 || ((1 << (v7 - 91)) & 0x500000005) == 0;
  if (v8 && (v7 - 40) >= 2)
  {
    return 1;
  }

  switch(v4)
  {
    case '{':
      v22 = a1[5];
      v23 = a1[4];
      v24 = 32 * (v22 - v23) - 1;
      v12 = *(a2 + 32);
      if (v22 == v23)
      {
        v24 = 0;
      }

      v25 = a1[8] + a1[7];
      if (v24 == v25)
      {
        v26 = a1;
        sub_250D8C(a1 + 3);
        a1 = v26;
        v23 = v26[4];
        v25 = v26[8] + v26[7];
      }

      v15 = (*(v23 + ((v25 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v25);
      v16 = 125;
      goto LABEL_33;
    case '[':
      v17 = a1[5];
      v18 = a1[4];
      v19 = 32 * (v17 - v18) - 1;
      v12 = *(a2 + 32);
      if (v17 == v18)
      {
        v19 = 0;
      }

      v20 = a1[8] + a1[7];
      if (v19 == v20)
      {
        v21 = a1;
        sub_250D8C(a1 + 3);
        a1 = v21;
        v18 = v21[4];
        v20 = v21[8] + v21[7];
      }

      v15 = (*(v18 + ((v20 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v20);
      v16 = 93;
      goto LABEL_33;
    case '(':
      v9 = a1[5];
      v10 = a1[4];
      v11 = 32 * (v9 - v10) - 1;
      v12 = *(a2 + 32);
      if (v9 == v10)
      {
        v11 = 0;
      }

      v13 = a1[8] + a1[7];
      if (v11 == v13)
      {
        v14 = a1;
        sub_250D8C(a1 + 3);
        a1 = v14;
        v10 = v14[4];
        v13 = v14[8] + v14[7];
      }

      v15 = (*(v10 + ((v13 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v13);
      v16 = 41;
LABEL_33:
      *v15 = v16;
      v15[1] = v12;
      ++a1[8];
      return 1;
  }

  if (v7 != 41 && v7 != 125 && v7 != 93)
  {
    return 1;
  }

  v27 = a1[8];
  if (v27 && v7 == *(*(a1[4] + (((v27 + a1[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v27 + *(a1 + 56) - 1)))
  {
    sub_251154(a1 + 3);
    return 1;
  }

  else
  {
    *(a1 + 16) = 0;
    sub_C599C((a1 + 9), a2);
    return 0;
  }
}

double sub_250A4C(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  a1[5] = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = a1[2];
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 128;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 256;
  }

  a1[4] = v8;
LABEL_8:
  sub_250B28(a1);
  v10 = a1[1];
  v9 = a1[2];
  if (v9 != v10)
  {
    a1[2] = v9 + ((v10 - v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_250C1C(a1);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_250B28(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[1];
    if (v3 >= 0x100)
    {
      operator delete(*v4);
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v2 = a1[5];
      v3 = a1[4] - 256;
      a1[4] = v3;
    }

    v5 = a1[2];
    if (v5 == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 32 * (v5 - v4) - 1;
    }

    if (v6 - (v2 + v3) >= 0x100)
    {
      operator delete(*(v5 - 1));
      a1[2] -= 8;
    }

    v7 = a1;
  }

  else
  {
    v8 = a1[2];
    if (v8 != a1[1])
    {
      do
      {
        operator delete(*(v8 - 8));
        v9 = a1[1];
        v8 = a1[2] - 8;
        a1[2] = v8;
      }

      while (v8 != v9);
    }

    a1[4] = 0;
    v7 = a1;
  }

  sub_250C1C(v7);
}

void sub_250C1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v3 - v4;
  v7 = v2 - v5;
  if (v6 > v2 - v5)
  {
    v8 = v7 >> 3;
    if (v2 != v5)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    if (v7 < v6)
    {
      v9 = *(a1 + 8);
      v10 = (*(a1 + 16) - v9);
      v11 = v10;
      if (!v10)
      {
        goto LABEL_16;
      }

      v12 = (v10 - 1);
      if ((v10 - 1) < 0x18)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        if (-v9 >= 0x20)
        {
          v14 = (v12 >> 3) + 1;
          v13 = (8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
          v15 = (v13 + v9);
          v16 = (v9 + 16);
          v17 = dword_10;
          v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v19 = *v16;
            *(v17 - 1) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 2;
            v18 -= 4;
          }

          while (v18);
          v9 = v15;
          if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_16:
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = v11;
            *(a1 + 24) = 8 * v8;
            if (v4)
            {

              operator delete(v4);
            }

            return;
          }
        }
      }

      do
      {
        v20 = *v9;
        v9 += 8;
        *v13++ = v20;
      }

      while (v13 != v11);
      goto LABEL_16;
    }
  }
}

void *sub_250D8C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_2133C(a1, &v11);
}

void sub_2510FC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_251154(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = 32 * (v1 - v2) - 1;
  v4 = v1 == v2;
  v6 = a1[4];
  v5 = a1[5];
  if (v4)
  {
    v3 = 0;
  }

  a1[5] = v5 - 1;
  if ((v3 - (v5 + v6) + 1) >= 0x200)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }
}

void *sub_2511C4(void *result)
{
  result[4] = result[3];
  result[2] = 0;
  return result;
}

void sub_2511E4(void *a1)
{
  *a1 = off_265C240;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_251258(uint64_t a1, uint64_t a2)
{
  if (*a2 == 7)
  {
    v5 = *(a2 + 8);
    v3 = a2 + 8;
    v4 = v5;
    v6 = *(v3 + 23);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(v3 + 8);
    }

    else
    {
      v4 = v3;
    }

    v8 = 0;
    v9 = v4;
    if ((sub_CCE68(&v9, &v4[v6], &v8) & 1) == 0)
    {
      sub_2512DC(a1 + 24, (a1 + 16));
    }
  }

  ++*(a1 + 16);
  return 1;
}

void sub_2512DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_1794();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_2513F4(void *a1)
{
  *a1 = off_265C2A0;
  a1[1] = 2;
  a1[3] = 0;
  a1[2] = a1 + 3;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  operator new();
}

void sub_2517A0(_Unwind_Exception *a1)
{
  sub_25220C(v2);
  sub_252664(v1, *v3);
  _Unwind_Resume(a1);
}

uint64_t sub_2517C0(uint64_t result, unsigned int a2)
{
  v2 = *(result + 24);
  if (!v2)
  {
LABEL_11:
    operator new();
  }

  v3 = *(result + 24);
  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 7);
      if (v5 != a2)
      {
        break;
      }

      v6 = *(v4 + 8);
      if (v6 <= 0xA)
      {
        if (v6 == 10)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }

LABEL_3:
      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_11;
      }
    }

    if (v5 > a2)
    {
      goto LABEL_3;
    }

    if (v5 >= a2)
    {
      break;
    }

LABEL_10:
    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v7 = *(result + 24);
  while (1)
  {
    v8 = v7;
    v9 = *(v7 + 7);
    if (v9 != a2)
    {
      break;
    }

    v10 = *(v8 + 8);
    if (v10 > 0x10)
    {
LABEL_13:
      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v10 == 16)
      {
        goto LABEL_22;
      }

LABEL_20:
      v7 = v8[1];
      if (!v7)
      {
LABEL_21:
        operator new();
      }
    }
  }

  if (v9 > a2)
  {
    goto LABEL_13;
  }

  if (v9 < a2)
  {
    goto LABEL_20;
  }

LABEL_22:
  v11 = *(result + 24);
  while (2)
  {
    while (2)
    {
      v12 = v11;
      v13 = *(v11 + 7);
      if (v13 == a2)
      {
        v14 = *(v12 + 8);
        if (v14 > 0x11)
        {
          goto LABEL_23;
        }

        if (v14 == 17)
        {
          goto LABEL_32;
        }

LABEL_30:
        v11 = v12[1];
        if (!v11)
        {
LABEL_31:
          operator new();
        }

        continue;
      }

      break;
    }

    if (v13 > a2)
    {
LABEL_23:
      v11 = *v12;
      if (!*v12)
      {
        goto LABEL_31;
      }

      continue;
    }

    break;
  }

  if (v13 < a2)
  {
    goto LABEL_30;
  }

LABEL_32:
  v15 = *(result + 24);
  while (2)
  {
    while (2)
    {
      v16 = v15;
      v17 = *(v15 + 7);
      if (v17 == a2)
      {
        v18 = *(v16 + 8);
        if (v18 > 0x12)
        {
          goto LABEL_33;
        }

        if (v18 == 18)
        {
          goto LABEL_42;
        }

LABEL_40:
        v15 = v16[1];
        if (!v15)
        {
LABEL_41:
          operator new();
        }

        continue;
      }

      break;
    }

    if (v17 > a2)
    {
LABEL_33:
      v15 = *v16;
      if (!*v16)
      {
        goto LABEL_41;
      }

      continue;
    }

    break;
  }

  if (v17 < a2)
  {
    goto LABEL_40;
  }

LABEL_42:
  v19 = *(result + 24);
  while (2)
  {
    while (2)
    {
      v20 = v19;
      v21 = *(v19 + 7);
      if (v21 == a2)
      {
        v22 = *(v20 + 8);
        if (v22 > 0x13)
        {
          goto LABEL_43;
        }

        if (v22 == 19)
        {
          goto LABEL_52;
        }

LABEL_50:
        v19 = v20[1];
        if (!v19)
        {
LABEL_51:
          operator new();
        }

        continue;
      }

      break;
    }

    if (v21 > a2)
    {
LABEL_43:
      v19 = *v20;
      if (!*v20)
      {
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  if (v21 < a2)
  {
    goto LABEL_50;
  }

LABEL_52:
  v23 = *(result + 24);
  while (2)
  {
    while (2)
    {
      v24 = v23;
      v25 = *(v23 + 7);
      if (v25 == a2)
      {
        v26 = *(v24 + 8);
        if (v26 > 0x14)
        {
          goto LABEL_53;
        }

        if (v26 == 20)
        {
          goto LABEL_62;
        }

LABEL_60:
        v23 = v24[1];
        if (!v23)
        {
LABEL_61:
          operator new();
        }

        continue;
      }

      break;
    }

    if (v25 > a2)
    {
LABEL_53:
      v23 = *v24;
      if (!*v24)
      {
        goto LABEL_61;
      }

      continue;
    }

    break;
  }

  if (v25 < a2)
  {
    goto LABEL_60;
  }

LABEL_62:
  v27 = *(result + 24);
  while (2)
  {
    while (2)
    {
      v28 = v27;
      v29 = *(v27 + 7);
      if (v29 == a2)
      {
        v30 = *(v28 + 8);
        if (v30 > 0x3C)
        {
          goto LABEL_63;
        }

        if (v30 == 60)
        {
          goto LABEL_72;
        }

LABEL_70:
        v27 = v28[1];
        if (!v27)
        {
LABEL_71:
          operator new();
        }

        continue;
      }

      break;
    }

    if (v29 > a2)
    {
LABEL_63:
      v27 = *v28;
      if (!*v28)
      {
        goto LABEL_71;
      }

      continue;
    }

    break;
  }

  if (v29 < a2)
  {
    goto LABEL_70;
  }

LABEL_72:
  v31 = *(result + 24);
  while (2)
  {
    while (2)
    {
      v32 = v31;
      v33 = *(v31 + 7);
      if (v33 == a2)
      {
        v34 = *(v32 + 8);
        if (v34 > 0x3E)
        {
          goto LABEL_73;
        }

        if (v34 == 62)
        {
          goto LABEL_82;
        }

LABEL_80:
        v31 = v32[1];
        if (!v31)
        {
LABEL_81:
          operator new();
        }

        continue;
      }

      break;
    }

    if (v33 > a2)
    {
LABEL_73:
      v31 = *v32;
      if (!*v32)
      {
        goto LABEL_81;
      }

      continue;
    }

    break;
  }

  if (v33 < a2)
  {
    goto LABEL_80;
  }

LABEL_82:
  v35 = *(result + 24);
  while (2)
  {
    while (2)
    {
      v36 = v35;
      v37 = *(v35 + 7);
      if (v37 == a2)
      {
        v38 = *(v36 + 8);
        if (v38 > 0x3D)
        {
          goto LABEL_83;
        }

        if (v38 == 61)
        {
          goto LABEL_92;
        }

LABEL_90:
        v35 = v36[1];
        if (!v35)
        {
LABEL_91:
          operator new();
        }

        continue;
      }

      break;
    }

    if (v37 > a2)
    {
LABEL_83:
      v35 = *v36;
      if (!*v36)
      {
        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  if (v37 < a2)
  {
    goto LABEL_90;
  }

LABEL_92:
  v39 = *(result + 24);
  while (2)
  {
    while (2)
    {
      v40 = v39;
      v41 = *(v39 + 7);
      if (v41 == a2)
      {
        v42 = *(v40 + 8);
        if (v42 > 0x2C)
        {
          goto LABEL_93;
        }

        if (v42 == 44)
        {
          goto LABEL_102;
        }

LABEL_100:
        v39 = v40[1];
        if (!v39)
        {
LABEL_101:
          operator new();
        }

        continue;
      }

      break;
    }

    if (v41 > a2)
    {
LABEL_93:
      v39 = *v40;
      if (!*v40)
      {
        goto LABEL_101;
      }

      continue;
    }

    break;
  }

  if (v41 < a2)
  {
    goto LABEL_100;
  }

LABEL_102:
  v43 = *(result + 24);
  while (2)
  {
    while (2)
    {
      v44 = v43;
      v45 = *(v43 + 7);
      if (v45 == a2)
      {
        v46 = *(v44 + 8);
        if (v46 > 0x2F)
        {
          goto LABEL_103;
        }

        if (v46 == 47)
        {
          goto LABEL_112;
        }

LABEL_110:
        v43 = v44[1];
        if (!v43)
        {
LABEL_111:
          operator new();
        }

        continue;
      }

      break;
    }

    if (v45 > a2)
    {
LABEL_103:
      v43 = *v44;
      if (!*v44)
      {
        goto LABEL_111;
      }

      continue;
    }

    break;
  }

  if (v45 < a2)
  {
    goto LABEL_110;
  }

LABEL_112:
  v47 = *(result + 24);
  while (2)
  {
    while (2)
    {
      v48 = v47;
      v49 = *(v47 + 7);
      if (v49 == a2)
      {
        v50 = *(v48 + 8);
        if (v50 > 0x2A)
        {
          goto LABEL_113;
        }

        if (v50 == 42)
        {
          goto LABEL_122;
        }

LABEL_120:
        v47 = v48[1];
        if (!v47)
        {
LABEL_121:
          operator new();
        }

        continue;
      }

      break;
    }

    if (v49 > a2)
    {
LABEL_113:
      v47 = *v48;
      if (!*v48)
      {
        goto LABEL_121;
      }

      continue;
    }

    break;
  }

  if (v49 < a2)
  {
    goto LABEL_120;
  }

LABEL_122:
  v51 = *(result + 24);
  while (2)
  {
    while (2)
    {
      v52 = v51;
      v53 = *(v51 + 7);
      if (v53 == a2)
      {
        v54 = *(v52 + 8);
        if (v54 > 0x25)
        {
          goto LABEL_123;
        }

        if (v54 == 37)
        {
          goto LABEL_132;
        }

LABEL_130:
        v51 = v52[1];
        if (!v51)
        {
LABEL_131:
          operator new();
        }

        continue;
      }

      break;
    }

    if (v53 > a2)
    {
LABEL_123:
      v51 = *v52;
      if (!*v52)
      {
        goto LABEL_131;
      }

      continue;
    }

    break;
  }

  if (v53 < a2)
  {
    goto LABEL_130;
  }

LABEL_132:
  v55 = *(result + 24);
  while (2)
  {
    while (2)
    {
      v56 = v55;
      v57 = *(v55 + 7);
      if (v57 == a2)
      {
        v58 = *(v56 + 8);
        if (v58 > 0x5E)
        {
          goto LABEL_133;
        }

        if (v58 == 94)
        {
          goto LABEL_144;
        }

LABEL_140:
        v55 = v56[1];
        if (!v55)
        {
LABEL_141:
          operator new();
        }

        continue;
      }

      break;
    }

    if (v57 > a2)
    {
LABEL_133:
      v55 = *v56;
      if (!*v56)
      {
        goto LABEL_141;
      }

      continue;
    }

    break;
  }

  if (v57 < a2)
  {
    goto LABEL_140;
  }

LABEL_144:
  while (1)
  {
    v59 = v2;
    v60 = *(v2 + 7);
    if (v60 != a2)
    {
      break;
    }

    v61 = *(v59 + 8);
    if (v61 > 0x3A)
    {
LABEL_143:
      v2 = *v59;
      if (!*v59)
      {
        goto LABEL_151;
      }
    }

    else
    {
      if (v61 == 58)
      {
        return result;
      }

LABEL_150:
      v2 = v59[1];
      if (!v2)
      {
LABEL_151:
        operator new();
      }
    }
  }

  if (v60 > a2)
  {
    goto LABEL_143;
  }

  if (v60 < a2)
  {
    goto LABEL_150;
  }

  return result;
}

void **sub_25220C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
        if (*(v3 - 49) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 9));
        }
      }

      else if (*(v3 - 49) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 10;
      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

void sub_2522AC(uint64_t a1)
{
  *a1 = off_265C2A0;
  v2 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  if (v3 == v2)
  {
LABEL_11:
    *(a1 + 48) = v2;
    operator delete(v4);
LABEL_12:
    sub_252664(a1 + 16, *(a1 + 24));

    operator delete();
  }

  while (1)
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 32));
      if (*(v3 - 49) < 0)
      {
LABEL_9:
        operator delete(*(v3 - 72));
      }
    }

    else if (*(v3 - 49) < 0)
    {
      goto LABEL_9;
    }

    v3 -= 80;
    if (v3 == v2)
    {
      v4 = *(a1 + 40);
      goto LABEL_11;
    }
  }
}

uint64_t sub_252384(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a3;
  if (sub_2526BC(a1, *a2, *a3))
  {
    v30 = *a2;
    if (*(a2 + 31) < 0)
    {
      sub_325C(__p, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      *__p = *(a2 + 8);
      v32 = *(a2 + 24);
    }

    v33 = *(a2 + 32);
    v34 = *a3;
    if (*(a3 + 31) < 0)
    {
      sub_325C(v35, *(a3 + 8), *(a3 + 16));
    }

    else
    {
      *v35 = *(a3 + 8);
      v36 = *(a3 + 24);
    }

    v37 = *(a3 + 32);
    v24 = a1[6];
    if (v24 < a1[7])
    {
LABEL_40:
      *v24 = v30;
      v25 = *__p;
      *(v24 + 24) = v32;
      *(v24 + 8) = v25;
      __p[1] = 0;
      v32 = 0;
      __p[0] = 0;
      *(v24 + 32) = v33;
      *(v24 + 40) = v34;
      v26 = v36;
      *(v24 + 48) = *v35;
      *(v24 + 64) = v26;
      v35[1] = 0;
      v36 = 0;
      v35[0] = 0;
      *(v24 + 72) = v37;
      a1[6] = v24 + 80;
      if (SHIBYTE(v32) < 0)
      {
        goto LABEL_44;
      }

      return 1;
    }
  }

  else
  {
    v8 = a1[3];
    if (!v8)
    {
      return 1;
    }

    v9 = a1 + 3;
    do
    {
      v12 = *(v8 + 28);
      v13 = v12 == v6;
      if (v12 >= v6)
      {
        v14 = 1;
      }

      else
      {
        v14 = -1;
      }

      if (v13)
      {
        v15 = *(v8 + 32);
        v16 = v15 == v7;
        v14 = v15 >= v7 ? 1 : -1;
        if (v16)
        {
          v14 = 0;
        }
      }

      v10 = v14 & 0x80;
      v13 = v10 == 0;
      v11 = v10 >> 4;
      if (v13)
      {
        v9 = v8;
      }

      v8 = *(v8 + v11);
    }

    while (v8);
    if (v9 == a1 + 3)
    {
      return 1;
    }

    v17 = *(v9 + 7);
    v18 = v6 == v17;
    if (v6 >= v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = -1;
    }

    if (v18)
    {
      v20 = *(v9 + 8);
      v21 = v7 >= v20;
      v22 = v7 == v20;
      v23 = -1;
      if (v21)
      {
        v23 = 1;
      }

      if (v22)
      {
        v19 = 0;
      }

      else
      {
        v19 = v23;
      }
    }

    if (v19 < 0)
    {
      return 1;
    }

    v30 = *a2;
    if (*(a2 + 31) < 0)
    {
      sub_325C(__p, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      *__p = *(a2 + 8);
      v32 = *(a2 + 24);
    }

    v33 = *(a2 + 32);
    v34 = *a3;
    if (*(a3 + 31) < 0)
    {
      sub_325C(v35, *(a3 + 8), *(a3 + 16));
    }

    else
    {
      *v35 = *(a3 + 8);
      v36 = *(a3 + 24);
    }

    v37 = *(a3 + 32);
    v24 = a1[6];
    if (v24 < a1[7])
    {
      goto LABEL_40;
    }
  }

  v27 = sub_252810(a1 + 5, &v30);
  v28 = SHIBYTE(v36);
  a1[6] = v27;
  if (v28 < 0)
  {
    operator delete(v35[0]);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      return 1;
    }

    goto LABEL_44;
  }

  if (SHIBYTE(v32) < 0)
  {
LABEL_44:
    operator delete(__p[0]);
  }

  return 1;
}

void sub_25261C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_252664(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_252664(a1, *a2);
    sub_252664(a1, a2[1]);

    operator delete(a2);
  }
}

BOOL sub_2526BC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x5Cu)
  {
    if (a2 != 125)
    {
      if (a2 == 123)
      {
LABEL_14:
        if (a3 - 91 <= 0x22)
        {
          v6 = 0;
          if (((1 << (a3 - 91)) & 0x500000005) != 0)
          {
            return v6 & 1;
          }
        }

        if (a3 >= 0x40)
        {
          v7 = 1;
        }

        else
        {
          v7 = 0x7BFFD7FFFFFFFC7FuLL >> a3;
        }

        if (a3 - 40 >= 2)
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }

        return v8 & 1;
      }

      if (a2 != 93)
      {
        goto LABEL_24;
      }
    }

LABEL_9:
    v3 = a2 != 41;
    v4 = a2 != 93;
    if (a3 != 10)
    {
      v4 = 0;
    }

    if (a3 != 9)
    {
      return v4;
    }

    return v3;
  }

  switch(a2)
  {
    case '(':
      goto LABEL_14;
    case ')':
      goto LABEL_9;
    case '[':
      goto LABEL_14;
  }

LABEL_24:
  v6 = 0;
  if (a3 > 0x5Cu)
  {
    if (a3 == 125)
    {
      goto LABEL_32;
    }

    if (a3 != 123)
    {
      if (a3 != 93)
      {
        return v6 & 1;
      }

      goto LABEL_32;
    }
  }

  else if (a3 != 40)
  {
    if (a3 != 41)
    {
      if (a3 != 91)
      {
        return v6 & 1;
      }

      goto LABEL_36;
    }

LABEL_32:
    if (a2 >= 0x40)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0x7BFFFFFFFFFFFC3FuLL >> a2;
    }

    return v9 & 1;
  }

LABEL_36:
  v6 = 1;
  if (a2 == 41 || a2 == 93 || a2 == 125)
  {
    return v6 & 1;
  }

  return 0;
}

uint64_t sub_252810(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = v7;
  *(v6 + 32) = v8;
  *(v6 + 40) = *(a2 + 40);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  *(a2 + 64) = 0;
  *(v6 + 64) = v9;
  *(v6 + 72) = v10;
  v11 = 80 * v2 + 80;
  v12 = *a1;
  v13 = a1[1];
  v14 = v6 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v6 + *a1 - v13;
    do
    {
      *v16 = *v15;
      v17 = *(v15 + 8);
      *(v16 + 24) = *(v15 + 24);
      *(v16 + 8) = v17;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 8) = 0;
      *(v16 + 32) = *(v15 + 32);
      *(v16 + 40) = *(v15 + 40);
      v18 = *(v15 + 48);
      *(v16 + 64) = *(v15 + 64);
      *(v16 + 48) = v18;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      *(v15 + 48) = 0;
      *(v16 + 72) = *(v15 + 72);
      v15 += 80;
      v16 += 80;
    }

    while (v15 != v13);
    while (1)
    {
      if (*(v12 + 71) < 0)
      {
        operator delete(*(v12 + 48));
        if (*(v12 + 31) < 0)
        {
LABEL_19:
          operator delete(*(v12 + 8));
        }
      }

      else if (*(v12 + 31) < 0)
      {
        goto LABEL_19;
      }

      v12 += 80;
      if (v12 == v13)
      {
        v12 = *a1;
        break;
      }
    }
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void *sub_2529F8(void *a1)
{
  *a1 = off_265C300;
  a1[1] = 3;
  a1[3] = 0;
  a1[2] = a1 + 3;
  v2 = (a1 + 2);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  v4 = 0x700000007;
  v5 = 7;
  sub_2530D4((a1 + 2), &v4);
  v4 = 0x900000009;
  v5 = 9;
  sub_2530D4(v2, &v4);
  v4 = 0x2C0000002CLL;
  v5 = 44;
  sub_2530D4(v2, &v4);
  v4 = 0x2B0000002BLL;
  v5 = 43;
  sub_2530D4(v2, &v4);
  v4 = 0x2D0000002DLL;
  v5 = 45;
  sub_2530D4(v2, &v4);
  v4 = 0x2F0000002FLL;
  v5 = 47;
  sub_2530D4(v2, &v4);
  v4 = 0x2A0000002ALL;
  v5 = 42;
  sub_2530D4(v2, &v4);
  v4 = 0x2500000025;
  v5 = 37;
  sub_2530D4(v2, &v4);
  v4 = 0x5E0000005ELL;
  v5 = 94;
  sub_2530D4(v2, &v4);
  v4 = 0x2D0000002BLL;
  v5 = 43;
  sub_2530D4(v2, &v4);
  v4 = 0x2B0000002DLL;
  v5 = 45;
  sub_2530D4(v2, &v4);
  v4 = 0x2A0000002FLL;
  v5 = 47;
  sub_2530D4(v2, &v4);
  v4 = 0x2F0000002ALL;
  v5 = 42;
  sub_2530D4(v2, &v4);
  v4 = 0x5E00000025;
  v5 = 37;
  sub_2530D4(v2, &v4);
  v4 = 0x250000005ELL;
  v5 = 94;
  sub_2530D4(v2, &v4);
  return a1;
}

void sub_252D3C(_Unwind_Exception *a1)
{
  sub_25220C(v2);
  sub_252664(v1, *v3);
  _Unwind_Resume(a1);
}

void sub_252D6C(uint64_t a1)
{
  *a1 = off_265C300;
  v2 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  if (v3 == v2)
  {
LABEL_11:
    *(a1 + 48) = v2;
    operator delete(v4);
LABEL_12:
    sub_252664(a1 + 16, *(a1 + 24));

    operator delete();
  }

  while (1)
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 32));
      if (*(v3 - 49) < 0)
      {
LABEL_9:
        operator delete(*(v3 - 72));
      }
    }

    else if (*(v3 - 49) < 0)
    {
      goto LABEL_9;
    }

    v3 -= 80;
    if (v3 == v2)
    {
      v4 = *(a1 + 40);
      goto LABEL_11;
    }
  }
}

uint64_t sub_252E44(void *a1, int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a3;
  v5 = *a4;
  v6 = *a2;
  v41 = *a2;
  *v42 = v4 | (v5 << 32);
  v7 = a1[3];
  if (!v7)
  {
    return 1;
  }

  v8 = a1 + 3;
  do
  {
    v11 = v7[7];
    v12 = v11 == v41;
    if (v11 >= v41)
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }

    if (v12)
    {
      v14 = v7[8];
      v15 = v14 == *v42;
      v13 = v14 >= *v42 ? 1 : -1;
      if (v15)
      {
        v16 = v7[9];
        v17 = v16 == v5;
        v13 = v16 >= v5 ? 1 : -1;
        if (v17)
        {
          v13 = 0;
        }
      }
    }

    v9 = v13 & 0x80;
    v12 = v9 == 0;
    v10 = v9 >> 4;
    if (v12)
    {
      v8 = v7;
    }

    v7 = *(v7 + v10);
  }

  while (v7);
  if (v8 == (a1 + 3))
  {
    return 1;
  }

  v18 = v8[7];
  v19 = v18 == v41;
  if (v18 <= v41)
  {
    v20 = 1;
  }

  else
  {
    v20 = -1;
  }

  if (v19)
  {
    v21 = v8[8];
    v22 = v21 == *v42;
    v20 = v21 <= *v42 ? 1 : -1;
    if (v22)
    {
      v23 = v8[9];
      v24 = v5 >= v23;
      v25 = v5 == v23;
      v26 = -1;
      if (v24)
      {
        v26 = 1;
      }

      if (v25)
      {
        v20 = 0;
      }

      else
      {
        v20 = v26;
      }
    }
  }

  if (v20 < 0)
  {
    return 1;
  }

  v41 = v6;
  if (*(a2 + 31) < 0)
  {
    v28 = a1;
    v30 = a3;
    sub_325C(&v42[4], *(a2 + 1), *(a2 + 2));
    a3 = v30;
    a1 = v28;
    v31 = *v30;
    v44 = *(a2 + 4);
    v45 = v31;
    if ((*(v30 + 31) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    *&v42[4] = *(a2 + 2);
    v27 = *(a2 + 4);
    v43 = *(a2 + 3);
    v44 = v27;
    v45 = v4;
    if ((*(a3 + 31) & 0x80000000) == 0)
    {
LABEL_42:
      __p = *(a3 + 2);
      v47 = *(a3 + 3);
      goto LABEL_45;
    }
  }

  v32 = a1;
  v33 = a3;
  sub_325C(&__p, *(a3 + 1), *(a3 + 2));
  a3 = v33;
  a1 = v32;
LABEL_45:
  v48 = *(a3 + 4);
  v34 = a1[6];
  if (v34 >= a1[7])
  {
    v37 = a1;
    v38 = sub_252810(a1 + 5, &v41);
    v39 = SHIBYTE(v47);
    v37[6] = v38;
    if (v39 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *v34 = v41;
    v35 = *&v42[4];
    *(v34 + 24) = v43;
    *(v34 + 8) = v35;
    *&v42[12] = 0;
    v43 = 0;
    *&v42[4] = 0;
    *(v34 + 32) = v44;
    *(v34 + 40) = v45;
    v36 = v47;
    *(v34 + 48) = __p;
    *(v34 + 64) = v36;
    v47 = 0;
    __p = 0uLL;
    *(v34 + 72) = v48;
    a1[6] = v34 + 80;
  }

  if ((SHIBYTE(v43) & 0x80000000) == 0)
  {
    return 1;
  }

  operator delete(*&v42[4]);
  return 1;
}

void sub_2530A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2530D4(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_26:
    operator new();
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  while (1)
  {
    v6 = v2;
    v7 = *(v2 + 7);
    if (v3 != v7)
    {
      break;
    }

    v8 = *(v6 + 8);
    if (v4 == v8)
    {
      v9 = *(v6 + 9);
      if (v5 >= v9)
      {
        v10 = v9 == v5;
        if (v9 >= v5)
        {
          v11 = 1;
        }

        else
        {
          v11 = -1;
        }

        if (v10)
        {
          v11 = 0;
        }

        if ((v11 & 0x80) == 0)
        {
          return v6;
        }

        goto LABEL_25;
      }

LABEL_3:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v4 < v8)
      {
        goto LABEL_3;
      }

      if (v8 >= v4)
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }

      if ((v13 & 0x80) == 0)
      {
        return v6;
      }

LABEL_25:
      v2 = v6[1];
      if (!v2)
      {
        goto LABEL_26;
      }
    }
  }

  if (v3 < v7)
  {
    goto LABEL_3;
  }

  if (v7 >= v3)
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  if (v12 < 0)
  {
    goto LABEL_25;
  }

  return v6;
}

BOOL sub_25322C(uint64_t a1, uint64_t *a2, __int128 *a3, int a4)
{
  v8 = sub_BC284(a1 + 8, a2);
  if ((a1 + 16) == v8)
  {
    if (*(a3 + 23) < 0)
    {
      sub_325C(&v12, *a3, *(a3 + 1));
    }

    else
    {
      v12 = *a3;
      v13 = *(a3 + 2);
    }

    v14 = a4;
    v15 = a2;
    v9 = sub_2533C8(a1 + 8, a2);
    if (*(v9 + 79) < 0)
    {
      v10 = v9;
      operator delete(*(v9 + 56));
      v9 = v10;
    }

    *(v9 + 56) = v12;
    *(v9 + 72) = v13;
    *(v9 + 80) = v14;
  }

  return a1 + 16 == v8;
}

void sub_253310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25332C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_25332C(a1, *a2);
    sub_25332C(a1, *(a2 + 8));
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v4 = a2;

LABEL_6:
        operator delete(v4);
        return;
      }
    }

    else if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a2 + 32));
    v4 = a2;

    goto LABEL_6;
  }
}

uint64_t sub_2533C8(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_64:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      v6 = v2 + 4;
      v7 = *(a2 + 23);
      v8 = a2[1];
      v9 = (v7 & 0x80u) == 0 ? *(a2 + 23) : a2[1];
      v10 = *(v5 + 55);
      v11 = v5[5];
      v12 = (v10 & 0x80u) == 0 ? *(v5 + 55) : v5[5];
      v13 = v12 >= v9 ? v9 : v12;
      if (v13)
      {
        break;
      }

LABEL_25:
      if ((v7 & 0x80u) == 0)
      {
        v19 = v7;
      }

      else
      {
        v19 = v8;
      }

      if ((v10 & 0x80u) == 0)
      {
        v20 = v10;
      }

      else
      {
        v20 = v11;
      }

      if (v19 >= v20)
      {
        goto LABEL_34;
      }

LABEL_3:
      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_64;
      }
    }

    v14 = 0;
    while (1)
    {
      v15 = *(a2 + 23) >= 0 ? a2 : *a2;
      v16 = __tolower(*(v15 + v14));
      v17 = *(v5 + 55) >= 0 ? v6 : v5[4];
      v18 = __tolower(*(v17 + v14));
      if (v16 > v18)
      {
        break;
      }

      if (v16 < v18)
      {
        goto LABEL_3;
      }

      if (v13 == ++v14)
      {
        v7 = *(a2 + 23);
        v8 = a2[1];
        v10 = *(v5 + 55);
        v11 = v5[5];
        goto LABEL_25;
      }
    }

    v10 = *(v5 + 55);
    v11 = v5[5];
    v7 = *(a2 + 23);
    v8 = a2[1];
LABEL_34:
    if ((v10 & 0x80u) == 0)
    {
      v21 = v10;
    }

    else
    {
      v21 = v11;
    }

    if ((v7 & 0x80u) == 0)
    {
      v22 = v7;
    }

    else
    {
      v22 = v8;
    }

    if (v22 >= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*(v5 + 55) >= 0)
        {
          v25 = v6;
        }

        else
        {
          v25 = v5[4];
        }

        v26 = __tolower(*(v25 + i));
        if (*(a2 + 23) >= 0)
        {
          v27 = a2;
        }

        else
        {
          v27 = *a2;
        }

        v28 = __tolower(*(v27 + i));
        if (v26 > v28)
        {
          goto LABEL_62;
        }

        if (v26 < v28)
        {
          goto LABEL_60;
        }
      }

      v10 = *(v5 + 55);
      v11 = v5[5];
      v7 = *(a2 + 23);
      v8 = a2[1];
    }

    if ((v10 & 0x80u) != 0)
    {
      v10 = v11;
    }

    if ((v7 & 0x80u) != 0)
    {
      v7 = v8;
    }

    if (v10 >= v7)
    {
      break;
    }

LABEL_60:
    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_64;
    }
  }

LABEL_62:
  if (!*v3)
  {
    goto LABEL_64;
  }

  return *v3;
}

void sub_253674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_253688(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_253688(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 79) < 0)
      {
        operator delete(*(v2 + 56));
        if ((*(v2 + 55) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 32));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

void sub_2538D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7E6BC(va);
  _Unwind_Resume(a1);
}

void *sub_2538E4(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

uint64_t sub_253A60(uint64_t a1, _DWORD *a2, void **a3)
{
  (*(**a3 + 40))();
  (*(*a3[1] + 40))(a3[1]);
  result = 0;
  switch(*a2)
  {
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
      operator new();
    case 6:
      operator new();
    case 7:
      operator new();
    case 0xE:
      operator new();
    case 0xF:
      operator new();
    case 0x10:
      operator new();
    case 0x12:
      operator new();
    case 0x14:
      operator new();
    case 0x15:
      operator new();
    case 0x16:
      operator new();
    case 0x17:
      operator new();
    case 0x18:
      operator new();
    case 0x19:
      operator new();
    case 0x1A:
      operator new();
    case 0x1B:
      operator new();
    default:
      return result;
  }
}

uint64_t sub_253F2C(uint64_t a1, int *a2, void **a3)
{
  v6 = (*(**a3 + 40))();
  *v7.i64 = (*(*a3[1] + 16))(a3[1]);
  v9 = a3[1];
  v18 = v7;
  if (v9)
  {
    v10 = (*(*v9 + 32))(v9);
    v7 = v18;
    if (v10 != 17)
    {
      v11 = a3[1];
      if (v11)
      {
        v12 = (*(*v11 + 32))(v11, v18);
        v7 = v18;
        if (v12 == 18)
        {
          goto LABEL_8;
        }

        v13 = a3[1];
        if (v13)
        {
          (*(*v13 + 8))(v13, v18);
          v7 = v18;
        }
      }

      a3[1] = 0;
    }
  }

LABEL_8:
  v14 = *a2;
  if (*a2 == 7)
  {
    if (*v7.i64 >= 0.0)
    {
      v15 = *v7.i64;
    }

    else
    {
      v15 = -*v7.i64;
    }

    if (v15 <= 60.0)
    {
      *v8.i64 = *v7.i64 - trunc(*v7.i64);
      v16.f64[0] = NAN;
      v16.f64[1] = NAN;
      if (*vbslq_s8(vnegq_f64(v16), v8, v7).i64 == 0.0)
      {
        if (*v7.i64 == 1.0)
        {
          return *a3;
        }

        v19 = v15;
        if (!v15)
        {
          operator new();
        }

        if (*v7.i64 == 2.0)
        {
          operator new();
        }

        if (*v7.i64 >= 0.0)
        {
          return sub_262E28(a1, v6, &v19);
        }

        else
        {
          return sub_263F54(a1, v6, &v19);
        }
      }
    }
  }

  else if (*v7.i64 == 0.0)
  {
    switch(v14)
    {
      case 2:
        return *a3;
      case 5:
        operator new();
      case 4:
        operator new();
    }
  }

  result = 0;
  if (*v7.i64 == 1.0)
  {
    switch(v14)
    {
      case 2:
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
      case 5:
        return *a3;
      case 6:
        goto LABEL_34;
      case 7:
        goto LABEL_35;
      case 14:
        goto LABEL_38;
      case 15:
        goto LABEL_39;
      case 16:
        goto LABEL_43;
      case 18:
        goto LABEL_42;
      case 20:
        goto LABEL_33;
      case 21:
        goto LABEL_40;
      case 22:
        goto LABEL_32;
      case 23:
        goto LABEL_31;
      case 24:
        goto LABEL_41;
      case 25:
        goto LABEL_36;
      case 26:
        goto LABEL_45;
      case 27:
        goto LABEL_44;
      default:
        return result;
    }
  }

  switch(v14)
  {
    case 2:
LABEL_25:
      operator new();
    case 3:
LABEL_37:
      operator new();
    case 4:
      operator new();
    case 5:
      operator new();
    case 6:
LABEL_34:
      operator new();
    case 7:
LABEL_35:
      operator new();
    case 14:
LABEL_38:
      operator new();
    case 15:
LABEL_39:
      operator new();
    case 16:
LABEL_43:
      operator new();
    case 18:
LABEL_42:
      operator new();
    case 20:
LABEL_33:
      operator new();
    case 21:
LABEL_40:
      operator new();
    case 22:
LABEL_32:
      operator new();
    case 23:
LABEL_31:
      operator new();
    case 24:
LABEL_41:
      operator new();
    case 25:
LABEL_36:
      operator new();
    case 26:
LABEL_45:
      operator new();
    case 27:
LABEL_44:
      operator new();
    default:
      return result;
  }

  return result;
}

uint64_t sub_25476C(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(**a3 + 48))(*a3);
  (*(*v6 + 56))(v6);
  (*(*a3[1] + 40))(a3[1]);
  v7 = (*(*v6 + 40))(v6);
  v8 = *a2;
  if (!*a3 || (*(**a3 + 32))(*a3) == 17)
  {
    goto LABEL_8;
  }

  if (*a3)
  {
    if ((*(**a3 + 32))(*a3) == 18)
    {
      goto LABEL_8;
    }

    if (*a3)
    {
      (*(**a3 + 8))(*a3);
    }
  }

  *a3 = 0;
LABEL_8:
  if (*(a1[10] + 190) == 1 && v7 == 5 && v8 == 5)
  {
    v28 = 7;
    strcpy(__p, "t/(t*t)");
    v23 = sub_BC168(a1[8], __p);
    v24 = v23;
    v25 = a1[8] + 8;
    if (v25 == v23)
    {
      v26 = 0;
      if ((v28 & 0x80000000) == 0)
      {
LABEL_38:
        if (v25 == v24)
        {
          return 0;
        }

        else
        {
          return v26;
        }
      }
    }

    else
    {
      v29 = *(v23 + 16);
      v26 = sub_267DBC(a1, &v29);
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    operator delete(__p[0]);
    goto LABEL_38;
  }

  sub_2677C0(v7, v8, __p);
  v11 = sub_BC168(a1[8], __p);
  v12 = v11;
  v13 = a1[8] + 8;
  if (v13 != v11)
  {
    v29 = *(v11 + 16);
    result = sub_267DBC(a1, &v29);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v15 = result;
    operator delete(__p[0]);
    result = v15;
    if (v13 != v12)
    {
      return result;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v28 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v13 != v12)
  {
    return result;
  }

LABEL_21:
  v16 = a1[6];
  v19 = *(v16 + 8);
  v17 = v16 + 8;
  v18 = v19;
  if (v19)
  {
    v20 = v17;
    v21 = v18;
    do
    {
      if (*(v21 + 32) >= v7)
      {
        v20 = v21;
      }

      v21 = *(v21 + 8 * (*(v21 + 32) < v7));
    }

    while (v21);
    if (v20 != v17 && v7 >= *(v20 + 32))
    {
      v22 = v17;
      do
      {
        if (*(v18 + 32) >= v8)
        {
          v22 = v18;
        }

        v18 = *(v18 + 8 * (*(v18 + 32) < v8));
      }

      while (v18);
      if (v22 != v17 && v8 >= *(v22 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_254B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B24(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 40))();
  (*(*v6 + 48))(v6);
  (*(*v6 + 56))(v6);
  v7 = *a2;
  v8 = (*(*v6 + 40))(v6);
  v9 = a3[1];
  if (!v9 || (*(*v9 + 32))(v9) == 17)
  {
    goto LABEL_8;
  }

  v10 = a3[1];
  if (v10)
  {
    if ((*(*v10 + 32))(v10) == 18)
    {
      goto LABEL_8;
    }

    v11 = a3[1];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  a3[1] = 0;
LABEL_8:
  if (*(a1[10] + 190) == 1 && v7 == 5 && v8 == 5)
  {
    v31 = 7;
    strcpy(__p, "(t*t)/t");
    v26 = sub_BC168(a1[8], __p);
    v27 = v26;
    v28 = a1[8] + 8;
    if (v28 == v26)
    {
      v29 = 0;
      if ((v31 & 0x80000000) == 0)
      {
LABEL_38:
        if (v28 == v27)
        {
          return 0;
        }

        else
        {
          return v29;
        }
      }
    }

    else
    {
      v32 = *(v26 + 16);
      v29 = sub_267DBC(a1, &v32);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    operator delete(__p[0]);
    goto LABEL_38;
  }

  sub_269B1C(v7, v8, __p);
  v14 = sub_BC168(a1[8], __p);
  v15 = v14;
  v16 = a1[8] + 8;
  if (v16 != v14)
  {
    v32 = *(v14 + 16);
    result = sub_267DBC(a1, &v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v18 = result;
    operator delete(__p[0]);
    result = v18;
    if (v16 != v15)
    {
      return result;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v31 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v16 != v15)
  {
    return result;
  }

LABEL_21:
  v19 = a1[6];
  v22 = *(v19 + 8);
  v20 = v19 + 8;
  v21 = v22;
  if (v22)
  {
    v23 = v20;
    v24 = v21;
    do
    {
      if (*(v24 + 32) >= v7)
      {
        v23 = v24;
      }

      v24 = *(v24 + 8 * (*(v24 + 32) < v7));
    }

    while (v24);
    if (v23 != v20 && v7 >= *(v23 + 32))
    {
      v25 = v20;
      do
      {
        if (*(v21 + 32) >= v8)
        {
          v25 = v21;
        }

        v21 = *(v21 + 8 * (*(v21 + 32) < v8));
      }

      while (v21);
      if (v25 != v20 && v8 >= *(v25 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_254EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254ED8(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(**a3 + 48))(*a3);
  (*(*v6 + 56))(v6);
  (*(*a3[1] + 16))(a3[1]);
  v7 = (*(*v6 + 40))(v6);
  v8 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v9 = a3[1];
  if (!v9 || (*(*v9 + 32))(v9) == 17)
  {
    goto LABEL_15;
  }

  v10 = a3[1];
  if (v10)
  {
    if ((*(*v10 + 32))(v10) == 18)
    {
      goto LABEL_15;
    }

    v11 = a3[1];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  a3[1] = 0;
LABEL_15:
  if (*(a1[10] + 190) == 1 && v7 == 5 && v8 == 5)
  {
    v31 = 7;
    strcpy(__p, "t/(t*t)");
    v26 = sub_BC168(a1[8], __p);
    v27 = v26;
    v28 = a1[8] + 8;
    if (v28 == v26)
    {
      v29 = 0;
      if ((v31 & 0x80000000) == 0)
      {
LABEL_45:
        if (v28 == v27)
        {
          return 0;
        }

        else
        {
          return v29;
        }
      }
    }

    else
    {
      v32 = *(v26 + 16);
      v29 = sub_26AB90(a1, &v32);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }
    }

    operator delete(__p[0]);
    goto LABEL_45;
  }

  sub_26A594(v7, v8, __p);
  v14 = sub_BC168(a1[8], __p);
  v15 = v14;
  v16 = a1[8] + 8;
  if (v16 != v14)
  {
    v32 = *(v14 + 16);
    result = sub_26AB90(a1, &v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v18 = result;
    operator delete(__p[0]);
    result = v18;
    if (v16 != v15)
    {
      return result;
    }

    goto LABEL_28;
  }

  result = 0;
  if (v31 < 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (v16 != v15)
  {
    return result;
  }

LABEL_28:
  v19 = a1[6];
  v22 = *(v19 + 8);
  v20 = v19 + 8;
  v21 = v22;
  if (v22)
  {
    v23 = v20;
    v24 = v21;
    do
    {
      if (*(v24 + 32) >= v7)
      {
        v23 = v24;
      }

      v24 = *(v24 + 8 * (*(v24 + 32) < v7));
    }

    while (v24);
    if (v23 != v20 && v7 >= *(v23 + 32))
    {
      v25 = v20;
      do
      {
        if (*(v21 + 32) >= v8)
        {
          v25 = v21;
        }

        v21 = *(v21 + 8 * (*(v21 + 32) < v8));
      }

      while (v21);
      if (v25 != v20 && v8 >= *(v25 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_25530C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25532C(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 40))();
  (*(*v6 + 56))(v6);
  (*(*v6 + 48))(v6);
  v7 = *a2;
  v8 = (*(*v6 + 40))(v6);
  v9 = a3[1];
  if (!v9 || (*(*v9 + 32))(v9) == 17)
  {
    goto LABEL_8;
  }

  v10 = a3[1];
  if (v10)
  {
    if ((*(*v10 + 32))(v10) == 18)
    {
      goto LABEL_8;
    }

    v11 = a3[1];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  a3[1] = 0;
LABEL_8:
  if (*(a1[10] + 190) == 1 && v7 == 5 && v8 == 5)
  {
    v31 = 7;
    strcpy(__p, "(t*t)/t");
    v26 = sub_BC168(a1[8], __p);
    v27 = v26;
    v28 = a1[8] + 8;
    if (v28 == v26)
    {
      v29 = 0;
      if ((v31 & 0x80000000) == 0)
      {
LABEL_38:
        if (v28 == v27)
        {
          return 0;
        }

        else
        {
          return v29;
        }
      }
    }

    else
    {
      v32 = *(v26 + 16);
      v29 = sub_26CBB8(a1, &v32);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    operator delete(__p[0]);
    goto LABEL_38;
  }

  sub_26C5BC(v7, v8, __p);
  v14 = sub_BC168(a1[8], __p);
  v15 = v14;
  v16 = a1[8] + 8;
  if (v16 != v14)
  {
    v32 = *(v14 + 16);
    result = sub_26AB90(a1, &v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v18 = result;
    operator delete(__p[0]);
    result = v18;
    if (v16 != v15)
    {
      return result;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v31 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v16 != v15)
  {
    return result;
  }

LABEL_21:
  v19 = a1[6];
  v22 = *(v19 + 8);
  v20 = v19 + 8;
  v21 = v22;
  if (v22)
  {
    v23 = v20;
    v24 = v21;
    do
    {
      if (*(v24 + 32) >= v7)
      {
        v23 = v24;
      }

      v24 = *(v24 + 8 * (*(v24 + 32) < v7));
    }

    while (v24);
    if (v23 != v20 && v7 >= *(v23 + 32))
    {
      v25 = v20;
      do
      {
        if (*(v21 + 32) >= v8)
        {
          v25 = v21;
        }

        v21 = *(v21 + 8 * (*(v21 + 32) < v8));
      }

      while (v21);
      if (v25 != v20 && v8 >= *(v25 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_2556C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2556E4(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(**a3 + 56))(*a3);
  (*(*v6 + 48))(v6);
  (*(*a3[1] + 40))(a3[1]);
  v7 = (*(*v6 + 40))(v6);
  v8 = *a2;
  if (!*a3 || (*(**a3 + 32))(*a3) == 17)
  {
    goto LABEL_8;
  }

  if (*a3)
  {
    if ((*(**a3 + 32))(*a3) == 18)
    {
      goto LABEL_8;
    }

    if (*a3)
    {
      (*(**a3 + 8))(*a3);
    }
  }

  *a3 = 0;
LABEL_8:
  if (*(a1[10] + 190) == 1 && v7 == 5 && v8 == 5)
  {
    v28 = 7;
    strcpy(__p, "t/(t*t)");
    v23 = sub_BC168(a1[8], __p);
    v24 = v23;
    v25 = a1[8] + 8;
    if (v25 == v23)
    {
      v26 = 0;
      if ((v28 & 0x80000000) == 0)
      {
LABEL_38:
        if (v25 == v24)
        {
          return 0;
        }

        else
        {
          return v26;
        }
      }
    }

    else
    {
      v29 = *(v23 + 16);
      v26 = sub_26AB90(a1, &v29);
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    operator delete(__p[0]);
    goto LABEL_38;
  }

  sub_26E660(v7, v8, __p);
  v11 = sub_BC168(a1[8], __p);
  v12 = v11;
  v13 = a1[8] + 8;
  if (v13 != v11)
  {
    v29 = *(v11 + 16);
    result = sub_26CBB8(a1, &v29);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v15 = result;
    operator delete(__p[0]);
    result = v15;
    if (v13 != v12)
    {
      return result;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v28 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v13 != v12)
  {
    return result;
  }

LABEL_21:
  v16 = a1[6];
  v19 = *(v16 + 8);
  v17 = v16 + 8;
  v18 = v19;
  if (v19)
  {
    v20 = v17;
    v21 = v18;
    do
    {
      if (*(v21 + 32) >= v7)
      {
        v20 = v21;
      }

      v21 = *(v21 + 8 * (*(v21 + 32) < v7));
    }

    while (v21);
    if (v20 != v17 && v7 >= *(v20 + 32))
    {
      v22 = v17;
      do
      {
        if (*(v18 + 32) >= v8)
        {
          v22 = v18;
        }

        v18 = *(v18 + 8 * (*(v18 + 32) < v8));
      }

      while (v18);
      if (v22 != v17 && v8 >= *(v22 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}