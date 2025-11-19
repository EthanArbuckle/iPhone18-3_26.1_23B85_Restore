void sub_1136B8(uint64_t a1)
{
  sub_113754(a1 - 32);

  operator delete();
}

uint64_t sub_113754(uint64_t a1)
{
  *a1 = off_2633260;
  *(a1 + 32) = off_26332C0;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_1138C0(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2633348;
  *(a1 + 32) = off_26333A8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_113F14(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_113FB4(uint64_t a1)
{
  sub_114620(a1);

  operator delete();
}

double sub_113FEC(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      if (*v3 >= 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = -1.0;
      }

      if (*v3 > 0.0)
      {
        v9 = 1.0;
      }

      *v4 = v9;
      v10 = v3[1];
      v11 = v10 <= 0.0;
      if (v10 >= 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = -1.0;
      }

      if (!v11)
      {
        v12 = 1.0;
      }

      v4[1] = v12;
      v13 = v3[2];
      v14 = v13 <= 0.0;
      if (v13 >= 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = -1.0;
      }

      if (!v14)
      {
        v15 = 1.0;
      }

      v4[2] = v15;
      v16 = v3[3];
      v17 = v16 <= 0.0;
      if (v16 >= 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = -1.0;
      }

      if (!v17)
      {
        v18 = 1.0;
      }

      v4[3] = v18;
      v19 = v3[4];
      v20 = v19 <= 0.0;
      if (v19 >= 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = -1.0;
      }

      if (!v20)
      {
        v21 = 1.0;
      }

      v4[4] = v21;
      v22 = v3[5];
      v23 = v22 <= 0.0;
      if (v22 >= 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = -1.0;
      }

      if (!v23)
      {
        v24 = 1.0;
      }

      v4[5] = v24;
      v25 = v3[6];
      v26 = v25 <= 0.0;
      if (v25 >= 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = -1.0;
      }

      if (!v26)
      {
        v27 = 1.0;
      }

      v4[6] = v27;
      v28 = v3[7];
      v29 = v28 <= 0.0;
      if (v28 >= 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = -1.0;
      }

      if (!v29)
      {
        v30 = 1.0;
      }

      v4[7] = v30;
      v31 = v3[8];
      v32 = v31 <= 0.0;
      if (v31 >= 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = -1.0;
      }

      if (!v32)
      {
        v33 = 1.0;
      }

      v4[8] = v33;
      v34 = v3[9];
      v35 = v34 <= 0.0;
      if (v34 >= 0.0)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = -1.0;
      }

      if (!v35)
      {
        v36 = 1.0;
      }

      v4[9] = v36;
      v37 = v3[10];
      v38 = v37 <= 0.0;
      if (v37 >= 0.0)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = -1.0;
      }

      if (!v38)
      {
        v39 = 1.0;
      }

      v4[10] = v39;
      v40 = v3[11];
      v41 = v40 <= 0.0;
      if (v40 >= 0.0)
      {
        v42 = 0.0;
      }

      else
      {
        v42 = -1.0;
      }

      if (!v41)
      {
        v42 = 1.0;
      }

      v4[11] = v42;
      v43 = v3[12];
      v44 = v43 <= 0.0;
      if (v43 >= 0.0)
      {
        v45 = 0.0;
      }

      else
      {
        v45 = -1.0;
      }

      if (!v44)
      {
        v45 = 1.0;
      }

      v4[12] = v45;
      v46 = v3[13];
      v47 = v46 <= 0.0;
      if (v46 >= 0.0)
      {
        v48 = 0.0;
      }

      else
      {
        v48 = -1.0;
      }

      if (!v47)
      {
        v48 = 1.0;
      }

      v4[13] = v48;
      v49 = v3[14];
      v50 = v49 <= 0.0;
      if (v49 >= 0.0)
      {
        v51 = 0.0;
      }

      else
      {
        v51 = -1.0;
      }

      if (!v50)
      {
        v51 = 1.0;
      }

      v4[14] = v51;
      v52 = v3[15];
      v53 = v52 <= 0.0;
      if (v52 >= 0.0)
      {
        v54 = 0.0;
      }

      else
      {
        v54 = -1.0;
      }

      if (!v53)
      {
        v54 = 1.0;
      }

      v4[15] = v54;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v55 = 0;
  v56 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_159;
    case 2:
      goto LABEL_154;
    case 3:
      goto LABEL_149;
    case 4:
      goto LABEL_144;
    case 5:
      goto LABEL_139;
    case 6:
      goto LABEL_134;
    case 7:
      goto LABEL_129;
    case 8:
      goto LABEL_124;
    case 9:
      goto LABEL_119;
    case 0xA:
      goto LABEL_114;
    case 0xB:
      goto LABEL_109;
    case 0xC:
      goto LABEL_104;
    case 0xD:
      goto LABEL_99;
    case 0xE:
      goto LABEL_94;
    case 0xF:
      v57 = 0.0;
      if (*v3 < 0.0)
      {
        v57 = -1.0;
      }

      if (*v3 > 0.0)
      {
        v57 = 1.0;
      }

      *v4 = v57;
      v56 = 1;
LABEL_94:
      v58 = v3[v56];
      v59 = v58 < 0.0;
      v60 = v58 <= 0.0;
      v61 = 0.0;
      if (v59)
      {
        v61 = -1.0;
      }

      if (!v60)
      {
        v61 = 1.0;
      }

      v4[v56++] = v61;
LABEL_99:
      v62 = v3[v56];
      v59 = v62 < 0.0;
      v63 = v62 <= 0.0;
      v64 = 0.0;
      if (v59)
      {
        v64 = -1.0;
      }

      if (!v63)
      {
        v64 = 1.0;
      }

      v4[v56++] = v64;
LABEL_104:
      v65 = v3[v56];
      v59 = v65 < 0.0;
      v66 = v65 <= 0.0;
      v67 = 0.0;
      if (v59)
      {
        v67 = -1.0;
      }

      if (!v66)
      {
        v67 = 1.0;
      }

      v4[v56++] = v67;
LABEL_109:
      v68 = v3[v56];
      v59 = v68 < 0.0;
      v69 = v68 <= 0.0;
      v70 = 0.0;
      if (v59)
      {
        v70 = -1.0;
      }

      if (!v69)
      {
        v70 = 1.0;
      }

      v4[v56++] = v70;
LABEL_114:
      v71 = v3[v56];
      v59 = v71 < 0.0;
      v72 = v71 <= 0.0;
      v73 = 0.0;
      if (v59)
      {
        v73 = -1.0;
      }

      if (!v72)
      {
        v73 = 1.0;
      }

      v4[v56++] = v73;
LABEL_119:
      v74 = v3[v56];
      v59 = v74 < 0.0;
      v75 = v74 <= 0.0;
      v76 = 0.0;
      if (v59)
      {
        v76 = -1.0;
      }

      if (!v75)
      {
        v76 = 1.0;
      }

      v4[v56++] = v76;
LABEL_124:
      v77 = v3[v56];
      v59 = v77 < 0.0;
      v78 = v77 <= 0.0;
      v79 = 0.0;
      if (v59)
      {
        v79 = -1.0;
      }

      if (!v78)
      {
        v79 = 1.0;
      }

      v4[v56++] = v79;
LABEL_129:
      v80 = v3[v56];
      v59 = v80 < 0.0;
      v81 = v80 <= 0.0;
      v82 = 0.0;
      if (v59)
      {
        v82 = -1.0;
      }

      if (!v81)
      {
        v82 = 1.0;
      }

      v4[v56++] = v82;
LABEL_134:
      v83 = v3[v56];
      v59 = v83 < 0.0;
      v84 = v83 <= 0.0;
      v85 = 0.0;
      if (v59)
      {
        v85 = -1.0;
      }

      if (!v84)
      {
        v85 = 1.0;
      }

      v4[v56++] = v85;
LABEL_139:
      v86 = v3[v56];
      v59 = v86 < 0.0;
      v87 = v86 <= 0.0;
      v88 = 0.0;
      if (v59)
      {
        v88 = -1.0;
      }

      if (!v87)
      {
        v88 = 1.0;
      }

      v4[v56++] = v88;
LABEL_144:
      v89 = v3[v56];
      v59 = v89 < 0.0;
      v90 = v89 <= 0.0;
      v91 = 0.0;
      if (v59)
      {
        v91 = -1.0;
      }

      if (!v90)
      {
        v91 = 1.0;
      }

      v4[v56++] = v91;
LABEL_149:
      v92 = v3[v56];
      v59 = v92 < 0.0;
      v93 = v92 <= 0.0;
      v94 = 0.0;
      if (v59)
      {
        v94 = -1.0;
      }

      if (!v93)
      {
        v94 = 1.0;
      }

      v4[v56++] = v94;
LABEL_154:
      v95 = v3[v56];
      v59 = v95 < 0.0;
      v96 = v95 <= 0.0;
      v97 = 0.0;
      if (v59)
      {
        v97 = -1.0;
      }

      if (!v96)
      {
        v97 = 1.0;
      }

      v4[v56] = v97;
      v55 = v56 + 1;
LABEL_159:
      v98 = v3[v55];
      v59 = v98 < 0.0;
      v99 = v98 <= 0.0;
      v100 = 0.0;
      if (v59)
      {
        v100 = -1.0;
      }

      if (!v99)
      {
        v100 = 1.0;
      }

      v4[v55] = v100;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_114584(uint64_t a1)
{
  sub_114620(a1 - 32);

  operator delete();
}

uint64_t sub_114620(uint64_t a1)
{
  *a1 = off_2633348;
  *(a1 + 32) = off_26333A8;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_11478C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2633430;
  *(a1 + 32) = off_2633490;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_114DE0(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_114E80(uint64_t a1)
{
  sub_115340(a1);

  operator delete();
}

double sub_114EB8(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = erf(*v3);
      v4[1] = erf(v3[1]);
      v4[2] = erf(v3[2]);
      v4[3] = erf(v3[3]);
      v4[4] = erf(v3[4]);
      v4[5] = erf(v3[5]);
      v4[6] = erf(v3[6]);
      v4[7] = erf(v3[7]);
      v4[8] = erf(v3[8]);
      v4[9] = erf(v3[9]);
      v4[10] = erf(v3[10]);
      v4[11] = erf(v3[11]);
      v4[12] = erf(v3[12]);
      v4[13] = erf(v3[13]);
      v4[14] = erf(v3[14]);
      v4[15] = erf(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = erf(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = erf(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = erf(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = erf(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = erf(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = erf(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = erf(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = erf(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = erf(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = erf(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = erf(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = erf(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = erf(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = erf(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = erf(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_1152A4(uint64_t a1)
{
  sub_115340(a1 - 32);

  operator delete();
}

uint64_t sub_115340(uint64_t a1)
{
  *a1 = off_2633430;
  *(a1 + 32) = off_2633490;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_1154AC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2633518;
  *(a1 + 32) = off_2633578;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_115B00(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_115BA0(uint64_t a1)
{
  sub_116060(a1);

  operator delete();
}

double sub_115BD8(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  v6 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    v7 = -16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * (v7 + v5);
  if (v8 >= 1)
  {
    v9 = &v3[v8 / 8];
    do
    {
      *v4 = erfc(*v3);
      v4[1] = erfc(v3[1]);
      v4[2] = erfc(v3[2]);
      v4[3] = erfc(v3[3]);
      v4[4] = erfc(v3[4]);
      v4[5] = erfc(v3[5]);
      v4[6] = erfc(v3[6]);
      v4[7] = erfc(v3[7]);
      v4[8] = erfc(v3[8]);
      v4[9] = erfc(v3[9]);
      v4[10] = erfc(v3[10]);
      v4[11] = erfc(v3[11]);
      v4[12] = erfc(v3[12]);
      v4[13] = erfc(v3[13]);
      v4[14] = erfc(v3[14]);
      v4[15] = erfc(v3[15]);
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v9);
  }

  v10 = 0;
  v11 = 0;
  switch(v6)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_13;
    case 12:
      goto LABEL_12;
    case 13:
      goto LABEL_11;
    case 14:
      goto LABEL_10;
    case 15:
      *v4 = erfc(*v3);
      v11 = 1;
LABEL_10:
      v4[v11] = erfc(v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = erfc(v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = erfc(v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = erfc(v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = erfc(v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = erfc(v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = erfc(v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = erfc(v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = erfc(v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = erfc(v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = erfc(v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = erfc(v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = erfc(v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = erfc(v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_115FC4(uint64_t a1)
{
  sub_116060(a1 - 32);

  operator delete();
}

uint64_t sub_116060(uint64_t a1)
{
  *a1 = off_2633518;
  *(a1 + 32) = off_2633578;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_1161CC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2633600;
  *(a1 + 32) = off_2633660;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_116820(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_1168C0(uint64_t a1)
{
  sub_1172A8(a1);

  operator delete();
}

uint64_t sub_1168F8(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(*(*(*result + 64))(result) + 16);
    v4 = *(*(*(*a1 + 72))(a1) + 16);
    v5 = (*(*a1 + 56))(a1);
    v6 = v5 & 0xF;
    if ((v5 & 0xF) != 0)
    {
      v7 = -16;
    }

    else
    {
      v7 = 0;
    }

    v8 = 8 * (v7 + v5);
    if (v8 >= 1)
    {
      v9 = &v3[v8 / 8];
      do
      {
        v10 = *v3;
        v11 = -*v3;
        if (*v3 >= 0.0)
        {
          v11 = *v3;
        }

        v12 = (erf(v11 / 1.41421356) + 1.0) * 0.5;
        if (v10 < 0.0)
        {
          v12 = 1.0 - v12;
        }

        *v4 = v12;
        v13 = v3[1];
        v14 = -v13;
        if (v13 >= 0.0)
        {
          v14 = v3[1];
        }

        v15 = (erf(v14 / 1.41421356) + 1.0) * 0.5;
        if (v13 < 0.0)
        {
          v15 = 1.0 - v15;
        }

        v4[1] = v15;
        v16 = v3[2];
        v17 = -v16;
        if (v16 >= 0.0)
        {
          v17 = v3[2];
        }

        v18 = (erf(v17 / 1.41421356) + 1.0) * 0.5;
        if (v16 < 0.0)
        {
          v18 = 1.0 - v18;
        }

        v4[2] = v18;
        v19 = v3[3];
        v20 = -v19;
        if (v19 >= 0.0)
        {
          v20 = v3[3];
        }

        v21 = (erf(v20 / 1.41421356) + 1.0) * 0.5;
        if (v19 < 0.0)
        {
          v21 = 1.0 - v21;
        }

        v4[3] = v21;
        v22 = v3[4];
        v23 = -v22;
        if (v22 >= 0.0)
        {
          v23 = v3[4];
        }

        v24 = (erf(v23 / 1.41421356) + 1.0) * 0.5;
        if (v22 < 0.0)
        {
          v24 = 1.0 - v24;
        }

        v4[4] = v24;
        v25 = v3[5];
        v26 = -v25;
        if (v25 >= 0.0)
        {
          v26 = v3[5];
        }

        v27 = (erf(v26 / 1.41421356) + 1.0) * 0.5;
        if (v25 < 0.0)
        {
          v27 = 1.0 - v27;
        }

        v4[5] = v27;
        v28 = v3[6];
        v29 = -v28;
        if (v28 >= 0.0)
        {
          v29 = v3[6];
        }

        v30 = (erf(v29 / 1.41421356) + 1.0) * 0.5;
        if (v28 < 0.0)
        {
          v30 = 1.0 - v30;
        }

        v4[6] = v30;
        v31 = v3[7];
        v32 = -v31;
        if (v31 >= 0.0)
        {
          v32 = v3[7];
        }

        v33 = (erf(v32 / 1.41421356) + 1.0) * 0.5;
        if (v31 < 0.0)
        {
          v33 = 1.0 - v33;
        }

        v4[7] = v33;
        v34 = v3[8];
        v35 = -v34;
        if (v34 >= 0.0)
        {
          v35 = v3[8];
        }

        v36 = (erf(v35 / 1.41421356) + 1.0) * 0.5;
        if (v34 < 0.0)
        {
          v36 = 1.0 - v36;
        }

        v4[8] = v36;
        v37 = v3[9];
        v38 = -v37;
        if (v37 >= 0.0)
        {
          v38 = v3[9];
        }

        v39 = (erf(v38 / 1.41421356) + 1.0) * 0.5;
        if (v37 < 0.0)
        {
          v39 = 1.0 - v39;
        }

        v4[9] = v39;
        v40 = v3[10];
        v41 = -v40;
        if (v40 >= 0.0)
        {
          v41 = v3[10];
        }

        v42 = (erf(v41 / 1.41421356) + 1.0) * 0.5;
        if (v40 < 0.0)
        {
          v42 = 1.0 - v42;
        }

        v4[10] = v42;
        v43 = v3[11];
        v44 = -v43;
        if (v43 >= 0.0)
        {
          v44 = v3[11];
        }

        v45 = (erf(v44 / 1.41421356) + 1.0) * 0.5;
        if (v43 < 0.0)
        {
          v45 = 1.0 - v45;
        }

        v4[11] = v45;
        v46 = v3[12];
        v47 = -v46;
        if (v46 >= 0.0)
        {
          v47 = v3[12];
        }

        v48 = (erf(v47 / 1.41421356) + 1.0) * 0.5;
        if (v46 < 0.0)
        {
          v48 = 1.0 - v48;
        }

        v4[12] = v48;
        v49 = v3[13];
        v50 = -v49;
        if (v49 >= 0.0)
        {
          v50 = v3[13];
        }

        v51 = (erf(v50 / 1.41421356) + 1.0) * 0.5;
        if (v49 < 0.0)
        {
          v51 = 1.0 - v51;
        }

        v4[13] = v51;
        v52 = v3[14];
        v53 = -v52;
        if (v52 >= 0.0)
        {
          v53 = v3[14];
        }

        v54 = (erf(v53 / 1.41421356) + 1.0) * 0.5;
        if (v52 < 0.0)
        {
          v54 = 1.0 - v54;
        }

        v4[14] = v54;
        v55 = v3[15];
        v56 = -v55;
        if (v55 >= 0.0)
        {
          v56 = v3[15];
        }

        v57 = (erf(v56 / 1.41421356) + 1.0) * 0.5;
        if (v55 < 0.0)
        {
          v57 = 1.0 - v57;
        }

        v4[15] = v57;
        v3 += 16;
        v4 += 16;
      }

      while (v3 < v9);
    }

    v58 = 0;
    v59 = 0;
    switch(v6)
    {
      case 1:
        goto LABEL_143;
      case 2:
        goto LABEL_138;
      case 3:
        goto LABEL_133;
      case 4:
        goto LABEL_128;
      case 5:
        goto LABEL_123;
      case 6:
        goto LABEL_118;
      case 7:
        goto LABEL_113;
      case 8:
        goto LABEL_108;
      case 9:
        goto LABEL_103;
      case 10:
        goto LABEL_98;
      case 11:
        goto LABEL_93;
      case 12:
        goto LABEL_88;
      case 13:
        goto LABEL_83;
      case 14:
        goto LABEL_78;
      case 15:
        v60 = *v3;
        v61 = -*v3;
        if (*v3 >= 0.0)
        {
          v61 = *v3;
        }

        v62 = (erf(v61 / 1.41421356) + 1.0) * 0.5;
        if (v60 < 0.0)
        {
          v62 = 1.0 - v62;
        }

        *v4 = v62;
        v59 = 1;
LABEL_78:
        v63 = v3[v59];
        v64 = -v63;
        if (v63 >= 0.0)
        {
          v64 = v3[v59];
        }

        v65 = (erf(v64 / 1.41421356) + 1.0) * 0.5;
        if (v63 < 0.0)
        {
          v65 = 1.0 - v65;
        }

        v4[v59++] = v65;
LABEL_83:
        v66 = v3[v59];
        v67 = -v66;
        if (v66 >= 0.0)
        {
          v67 = v3[v59];
        }

        v68 = (erf(v67 / 1.41421356) + 1.0) * 0.5;
        if (v66 < 0.0)
        {
          v68 = 1.0 - v68;
        }

        v4[v59++] = v68;
LABEL_88:
        v69 = v3[v59];
        v70 = -v69;
        if (v69 >= 0.0)
        {
          v70 = v3[v59];
        }

        v71 = (erf(v70 / 1.41421356) + 1.0) * 0.5;
        if (v69 < 0.0)
        {
          v71 = 1.0 - v71;
        }

        v4[v59++] = v71;
LABEL_93:
        v72 = v3[v59];
        v73 = -v72;
        if (v72 >= 0.0)
        {
          v73 = v3[v59];
        }

        v74 = (erf(v73 / 1.41421356) + 1.0) * 0.5;
        if (v72 < 0.0)
        {
          v74 = 1.0 - v74;
        }

        v4[v59++] = v74;
LABEL_98:
        v75 = v3[v59];
        v76 = -v75;
        if (v75 >= 0.0)
        {
          v76 = v3[v59];
        }

        v77 = (erf(v76 / 1.41421356) + 1.0) * 0.5;
        if (v75 < 0.0)
        {
          v77 = 1.0 - v77;
        }

        v4[v59++] = v77;
LABEL_103:
        v78 = v3[v59];
        v79 = -v78;
        if (v78 >= 0.0)
        {
          v79 = v3[v59];
        }

        v80 = (erf(v79 / 1.41421356) + 1.0) * 0.5;
        if (v78 < 0.0)
        {
          v80 = 1.0 - v80;
        }

        v4[v59++] = v80;
LABEL_108:
        v81 = v3[v59];
        v82 = -v81;
        if (v81 >= 0.0)
        {
          v82 = v3[v59];
        }

        v83 = (erf(v82 / 1.41421356) + 1.0) * 0.5;
        if (v81 < 0.0)
        {
          v83 = 1.0 - v83;
        }

        v4[v59++] = v83;
LABEL_113:
        v84 = v3[v59];
        v85 = -v84;
        if (v84 >= 0.0)
        {
          v85 = v3[v59];
        }

        v86 = (erf(v85 / 1.41421356) + 1.0) * 0.5;
        if (v84 < 0.0)
        {
          v86 = 1.0 - v86;
        }

        v4[v59++] = v86;
LABEL_118:
        v87 = v3[v59];
        v88 = -v87;
        if (v87 >= 0.0)
        {
          v88 = v3[v59];
        }

        v89 = (erf(v88 / 1.41421356) + 1.0) * 0.5;
        if (v87 < 0.0)
        {
          v89 = 1.0 - v89;
        }

        v4[v59++] = v89;
LABEL_123:
        v90 = v3[v59];
        v91 = -v90;
        if (v90 >= 0.0)
        {
          v91 = v3[v59];
        }

        v92 = (erf(v91 / 1.41421356) + 1.0) * 0.5;
        if (v90 < 0.0)
        {
          v92 = 1.0 - v92;
        }

        v4[v59++] = v92;
LABEL_128:
        v93 = v3[v59];
        v94 = -v93;
        if (v93 >= 0.0)
        {
          v94 = v3[v59];
        }

        v95 = (erf(v94 / 1.41421356) + 1.0) * 0.5;
        if (v93 < 0.0)
        {
          v95 = 1.0 - v95;
        }

        v4[v59++] = v95;
LABEL_133:
        v96 = v3[v59];
        v97 = -v96;
        if (v96 >= 0.0)
        {
          v97 = v3[v59];
        }

        v98 = (erf(v97 / 1.41421356) + 1.0) * 0.5;
        if (v96 < 0.0)
        {
          v98 = 1.0 - v98;
        }

        v4[v59++] = v98;
LABEL_138:
        v99 = v3[v59];
        v100 = -v99;
        if (v99 >= 0.0)
        {
          v100 = v3[v59];
        }

        v101 = (erf(v100 / 1.41421356) + 1.0) * 0.5;
        if (v99 < 0.0)
        {
          v101 = 1.0 - v101;
        }

        v4[v59] = v101;
        v58 = v59 + 1;
LABEL_143:
        v102 = v3[v58];
        v103 = -v102;
        if (v102 >= 0.0)
        {
          v103 = v3[v58];
        }

        v104 = (erf(v103 / 1.41421356) + 1.0) * 0.5;
        if (v102 < 0.0)
        {
          v104 = 1.0 - v104;
        }

        v4[v58] = v104;
        break;
      default:
        return (*(*a1 + 72))(a1);
    }

    return (*(*a1 + 72))(a1);
  }

  return result;
}

void sub_11720C(uint64_t a1)
{
  sub_1172A8(a1 - 32);

  operator delete();
}

uint64_t sub_1172A8(uint64_t a1)
{
  *a1 = off_2633600;
  *(a1 + 32) = off_2633660;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_117414(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_26336E8;
  *(a1 + 32) = off_2633748;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_117A68(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_117B08(uint64_t a1)
{
  sub_1180B4(a1);

  operator delete();
}

double sub_117B40(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      *v4 = *v3 - *v3;
      v4[1] = v3[1] - v3[1];
      v4[2] = v3[2] - v3[2];
      v4[3] = v3[3] - v3[3];
      v4[4] = v3[4] - v3[4];
      v4[5] = v3[5] - v3[5];
      v4[6] = v3[6] - v3[6];
      v4[7] = v3[7] - v3[7];
      v4[8] = v3[8] - v3[8];
      v4[9] = v3[9] - v3[9];
      v4[10] = v3[10] - v3[10];
      v4[11] = v3[11] - v3[11];
      v4[12] = v3[12] - v3[12];
      v4[13] = v3[13] - v3[13];
      v4[14] = v3[14] - v3[14];
      v4[15] = v3[15] - v3[15];
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v9 = 0;
  v10 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v4 = *v3 - *v3;
      v10 = 1;
LABEL_10:
      v4[v10] = v3[v10] - v3[v10];
      ++v10;
LABEL_11:
      v4[v10] = v3[v10] - v3[v10];
      ++v10;
LABEL_12:
      v4[v10] = v3[v10] - v3[v10];
      ++v10;
LABEL_13:
      v4[v10] = v3[v10] - v3[v10];
      ++v10;
LABEL_14:
      v4[v10] = v3[v10] - v3[v10];
      ++v10;
LABEL_15:
      v4[v10] = v3[v10] - v3[v10];
      ++v10;
LABEL_16:
      v4[v10] = v3[v10] - v3[v10];
      ++v10;
LABEL_17:
      v4[v10] = v3[v10] - v3[v10];
      ++v10;
LABEL_18:
      v4[v10] = v3[v10] - v3[v10];
      ++v10;
LABEL_19:
      v4[v10] = v3[v10] - v3[v10];
      ++v10;
LABEL_20:
      v4[v10] = v3[v10] - v3[v10];
      ++v10;
LABEL_21:
      v4[v10] = v3[v10] - v3[v10];
      ++v10;
LABEL_22:
      v4[v10] = v3[v10] - v3[v10];
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v3[v9] - v3[v9];
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_118018(uint64_t a1)
{
  sub_1180B4(a1 - 32);

  operator delete();
}

uint64_t sub_1180B4(uint64_t a1)
{
  *a1 = off_26336E8;
  *(a1 + 32) = off_2633748;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_118220(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_26337D0;
  *(a1 + 32) = off_2633830;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_118874(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

void sub_118914(uint64_t a1)
{
  sub_118E44(a1);

  operator delete();
}

double sub_11894C(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      *v4 = *v3;
      v4[1] = v3[1];
      v4[2] = v3[2];
      v4[3] = v3[3];
      v4[4] = v3[4];
      v4[5] = v3[5];
      v4[6] = v3[6];
      v4[7] = v3[7];
      v4[8] = v3[8];
      v4[9] = v3[9];
      v4[10] = v3[10];
      v4[11] = v3[11];
      v4[12] = v3[12];
      v4[13] = v3[13];
      v4[14] = v3[14];
      v4[15] = v3[15];
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v9 = 0;
  v10 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v4 = *v3;
      v10 = 1;
LABEL_10:
      v4[v10] = v3[v10];
      ++v10;
LABEL_11:
      v4[v10] = v3[v10];
      ++v10;
LABEL_12:
      v4[v10] = v3[v10];
      ++v10;
LABEL_13:
      v4[v10] = v3[v10];
      ++v10;
LABEL_14:
      v4[v10] = v3[v10];
      ++v10;
LABEL_15:
      v4[v10] = v3[v10];
      ++v10;
LABEL_16:
      v4[v10] = v3[v10];
      ++v10;
LABEL_17:
      v4[v10] = v3[v10];
      ++v10;
LABEL_18:
      v4[v10] = v3[v10];
      ++v10;
LABEL_19:
      v4[v10] = v3[v10];
      ++v10;
LABEL_20:
      v4[v10] = v3[v10];
      ++v10;
LABEL_21:
      v4[v10] = v3[v10];
      ++v10;
LABEL_22:
      v4[v10] = v3[v10];
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v3[v9];
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_118DA8(uint64_t a1)
{
  sub_118E44(a1 - 32);

  operator delete();
}

uint64_t sub_118E44(uint64_t a1)
{
  *a1 = off_26337D0;
  *(a1 + 32) = off_2633830;
  if (*(a1 + 48))
  {
    operator delete();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (*v3)
    {
      v4 = *v3 - 1;
      *v3 = v4;
      if (!v4)
      {
        if (*(v3 + 16))
        {
          if (*(v3 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26303D0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  return a1;
}

uint64_t sub_118FB0(uint64_t result)
{
  *result = off_26338B8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_119034(uint64_t a1)
{
  *a1 = off_26338B8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_1190D4(uint64_t a1)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (result < 0.0)
  {
    return -result;
  }

  return result;
}

uint64_t sub_11912C(uint64_t result)
{
  *result = off_2633908;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_1191B0(uint64_t a1)
{
  *a1 = off_2633908;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_119250(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));

  return acos(v1);
}

uint64_t sub_1192AC(uint64_t result)
{
  *result = off_2633958;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_119330(uint64_t a1)
{
  *a1 = off_2633958;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_1193D0(uint64_t a1)
{
  v1 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v2 = v1 + sqrt(v1 * v1 + -1.0);

  return log(v2);
}

uint64_t sub_119440(uint64_t result)
{
  *result = off_26339A8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_1194C4(uint64_t a1)
{
  *a1 = off_26339A8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_119564(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));

  return asin(v1);
}

uint64_t sub_1195C0(uint64_t result)
{
  *result = off_26339F8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_119644(uint64_t a1)
{
  *a1 = off_26339F8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_1196E4(uint64_t a1)
{
  v1 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v2 = v1 + sqrt(v1 * v1 + 1.0);

  return log(v2);
}

uint64_t sub_119754(uint64_t result)
{
  *result = off_2633A48;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_1197D8(uint64_t a1)
{
  *a1 = off_2633A48;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_119878(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));

  return atan(v1);
}

uint64_t sub_1198D4(uint64_t result)
{
  *result = off_2633A98;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_119958(uint64_t a1)
{
  *a1 = off_2633A98;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

long double sub_1199F8(uint64_t a1)
{
  v1 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v2 = log(v1 + 1.0);
  return (v2 - log(1.0 - v1)) * 0.5;
}

uint64_t sub_119A7C(uint64_t result)
{
  *result = off_2633AE8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_119B00(uint64_t a1)
{
  *a1 = off_2633AE8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_119BF0(uint64_t result)
{
  *result = off_2633B38;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_119C74(uint64_t a1)
{
  *a1 = off_2633B38;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_119D14(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));

  return cos(v1);
}

uint64_t sub_119D70(uint64_t result)
{
  *result = off_2633B88;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_119DF4(uint64_t a1)
{
  *a1 = off_2633B88;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_119E94(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));

  return cosh(v1);
}

uint64_t sub_119EF0(uint64_t result)
{
  *result = off_2633BD8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_119F74(uint64_t a1)
{
  *a1 = off_2633BD8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11A014(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));

  return exp(v1);
}

uint64_t sub_11A070(uint64_t result)
{
  *result = off_2633C28;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11A0F4(uint64_t a1)
{
  *a1 = off_2633C28;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11A194(uint64_t a1)
{
  v1 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v2 = -v1;
  if (v1 >= 0.0)
  {
    v2 = v1;
  }

  if (v2 >= 0.00001)
  {
    return exp(v1) + -1.0;
  }

  else
  {
    return v1 + v1 * (v1 * 0.5);
  }
}

uint64_t sub_11A220(uint64_t result)
{
  *result = off_2633C78;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11A2A4(uint64_t a1)
{
  *a1 = off_2633C78;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_11A394(uint64_t result)
{
  *result = off_2633CC8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11A418(uint64_t a1)
{
  *a1 = off_2633CC8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11A4B8(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));

  return log(v1);
}

uint64_t sub_11A514(uint64_t result)
{
  *result = off_2633D18;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11A598(uint64_t a1)
{
  *a1 = off_2633D18;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11A638(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));

  return log10(v1);
}

uint64_t sub_11A694(uint64_t result)
{
  *result = off_2633D68;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11A718(uint64_t a1)
{
  *a1 = off_2633D68;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_11A814(uint64_t result)
{
  *result = off_2633DB8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11A898(uint64_t a1)
{
  *a1 = off_2633DB8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11A938(uint64_t a1)
{
  v1 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v1 <= -1.0)
  {
    return NAN;
  }

  v2 = -v1;
  if (v1 >= 0.0)
  {
    v2 = v1;
  }

  if (v2 <= 0.0001)
  {
    return v1 * (v1 * -0.5 + 1.0);
  }

  v3 = v1 + 1.0;

  return log(v3);
}

uint64_t sub_11A9F0(uint64_t result)
{
  *result = off_2633E08;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11AA74(uint64_t a1)
{
  *a1 = off_2633E08;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_11AB64(uint64_t result)
{
  *result = off_2633E58;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11ABE8(uint64_t a1)
{
  *a1 = off_2633E58;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_11ACC0(uint64_t result)
{
  *result = off_2633EA8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11AD44(uint64_t a1)
{
  *a1 = off_2633EA8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11ADE4(uint64_t a1)
{
  v1 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v2 = ceil(v1 + -0.5);
  v3 = floor(v1 + 0.5);
  if (v1 >= 0.0)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_11AE50(uint64_t result)
{
  *result = off_2633EF8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11AED4(uint64_t a1)
{
  *a1 = off_2633EF8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11AF74(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));

  return sin(v1);
}

uint64_t sub_11AFD0(uint64_t result)
{
  *result = off_2633F48;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11B054(uint64_t a1)
{
  *a1 = off_2633F48;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11B0F4(uint64_t a1)
{
  v1 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v2 = 1.0;
  if (fabs(v1) >= 2.22044605e-16)
  {
    return sin(v1) / v1;
  }

  return v2;
}

uint64_t sub_11B170(uint64_t result)
{
  *result = off_2633F98;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11B1F4(uint64_t a1)
{
  *a1 = off_2633F98;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11B294(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));

  return sinh(v1);
}

uint64_t sub_11B2F0(uint64_t result)
{
  *result = off_2633FE8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11B374(uint64_t a1)
{
  *a1 = off_2633FE8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_11B464(uint64_t result)
{
  *result = off_2634038;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11B4E8(uint64_t a1)
{
  *a1 = off_2634038;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11B588(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));

  return tan(v1);
}

uint64_t sub_11B5E4(uint64_t result)
{
  *result = off_2634088;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11B668(uint64_t a1)
{
  *a1 = off_2634088;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11B708(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));

  return tanh(v1);
}

uint64_t sub_11B764(uint64_t result)
{
  *result = off_26340D8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11B7E8(uint64_t a1)
{
  *a1 = off_26340D8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_11B8E0(uint64_t result)
{
  *result = off_2634128;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11B964(uint64_t a1)
{
  *a1 = off_2634128;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_11BA5C(uint64_t result)
{
  *result = off_2634178;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11BAE0(uint64_t a1)
{
  *a1 = off_2634178;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_11BBD8(uint64_t result)
{
  *result = off_26341C8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11BC5C(uint64_t a1)
{
  *a1 = off_26341C8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_11BD54(uint64_t result)
{
  *result = off_2634218;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11BDD8(uint64_t a1)
{
  *a1 = off_2634218;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_11BED0(uint64_t result)
{
  *result = off_2634268;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11BF54(uint64_t a1)
{
  *a1 = off_2634268;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_11C04C(uint64_t result)
{
  *result = off_26342B8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11C0D0(uint64_t a1)
{
  *a1 = off_26342B8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_11C1C8(uint64_t result)
{
  *result = off_2634308;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11C24C(uint64_t a1)
{
  *a1 = off_2634308;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11C2EC(uint64_t a1)
{
  v1 = (*(**(a1 + 8) + 16))(*(a1 + 8)) == 0.0;
  result = 1.0;
  if (!v1)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_11C348(uint64_t result)
{
  *result = off_2634358;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11C3CC(uint64_t a1)
{
  *a1 = off_2634358;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11C46C(uint64_t a1)
{
  v1 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v2 = v1 < 0.0;
  v3 = v1 <= 0.0;
  result = 0.0;
  if (v2)
  {
    result = -1.0;
  }

  if (!v3)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_11C4D0(uint64_t result)
{
  *result = off_26343A8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11C554(uint64_t a1)
{
  *a1 = off_26343A8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11C5F4(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));

  return erf(v1);
}

uint64_t sub_11C650(uint64_t result)
{
  *result = off_26343F8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11C6D4(uint64_t a1)
{
  *a1 = off_26343F8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_11C774(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));

  return erfc(v1);
}

uint64_t sub_11C7D0(uint64_t result)
{
  *result = off_2634448;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11C854(uint64_t a1)
{
  *a1 = off_2634448;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

void sub_11C8F4(uint64_t a1)
{
  v1 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v2 = -v1;
  if (v1 >= 0.0)
  {
    v2 = v1;
  }

  erf(v2 / 1.41421356);
}

uint64_t sub_11C984(uint64_t result)
{
  *result = off_2634498;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11CA08(uint64_t a1)
{
  *a1 = off_2634498;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_11CB00(uint64_t result)
{
  *result = off_26344E8;
  v1 = *(result + 8);
  if (v1)
  {
    if (*(result + 16) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 8) = 0;
    }
  }

  return result;
}

void sub_11CB84(uint64_t a1)
{
  *a1 = off_26344E8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

uint64_t sub_11CC78(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*a3 || ((v4 = (*(**a3 + 32))(*a3), v5 = 1, v4 <= 0x21) ? (v6 = ((1 << v4) & 0x388FC0000) == 0) : (v6 = 1), v6 && v4 != 123))
  {
    v5 = 0;
  }

  v7 = a3[1];
  if (v7 && ((v8 = (*(*v7 + 32))(v7), v8 <= 0x21) ? (v9 = ((1 << v8) & 0x388FC0000) == 0) : (v9 = 1), !v9 || v8 == 123) || v5)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_11CE08(uint64_t a1, int *a2, void *a3)
{
  if ((*a2 - 82) > 4)
  {
    return 0;
  }

  result = sub_12E884(*(a1 + 80) + 184, a2);
  if (result)
  {
    v5 = a3[1];
    if (!v5 || ((v6 = (*(*v5 + 32))(v5), v7 = 1, v6 <= 0x21) ? (v8 = ((1 << v6) & 0x388FC0000) == 0) : (v8 = 1), v8 && v6 != 123))
    {
      v7 = 0;
    }

    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        return v7 ^ 1;
      }

      if (*a3 && ((*(**a3 + 32))(*a3) == 17 || *a3 && ((*(**a3 + 32))(*a3) == 125 || *a3 && ((*(**a3 + 32))(*a3) == 126 || *a3 && ((*(**a3 + 32))(*a3) == 127 || *a3 && (*(**a3 + 32))(*a3) == 124)))))
      {
        return v7;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_11D018(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  if (!*a3)
  {
    goto LABEL_31;
  }

  v6 = (*(**a3 + 32))(*a3);
  v7 = *a3;
  if (v6 == 17)
  {
    sub_1283D8(a1, 1, v7);

    return sub_128728(a1, a2, a3);
  }

  if (!v7)
  {
    goto LABEL_31;
  }

  v9 = (*(*v7 + 32))(*a3);
  v10 = *a3;
  if (v9 == 125)
  {
    sub_1283D8(a1, 3, v10);

    return sub_128BCC(a1, a2, a3);
  }

  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = (*(*v10 + 32))(*a3);
  v12 = *a3;
  if (v11 == 126)
  {
    sub_1283D8(a1, 3, v12);

    return sub_129070(a1, a2, a3);
  }

  if (!v12)
  {
    goto LABEL_31;
  }

  v13 = (*(*v12 + 32))(*a3);
  v14 = *a3;
  if (v13 == 127)
  {
    sub_1283D8(a1, 3, v14);

    return sub_129514(a1, a2, a3);
  }

  if (!v14 || (*(*v14 + 32))(*a3) != 124)
  {
LABEL_31:
    operator new();
  }

  sub_1283D8(a1, 2, *a3);
  v15 = a3[1];
  if (!v15 || ((v16 = (*(*v15 + 32))(v15), (v16 - 124) <= 0x11) ? (v17 = ((1 << (v16 - 124)) & 0x3C5E1) == 0) : (v17 = 1), v17))
  {

    return sub_129E3C(a1, a2, a3);
  }

  else
  {

    return sub_1299B8(a1, a2, a3);
  }
}

void sub_11D380(uint64_t a1, void *a2)
{
  v3 = *a2;
  if (*a2)
  {
    if ((*(*v3 + 32))(*a2) == 17 || (*(*v3 + 32))(v3) == 125 || (*(*v3 + 32))(v3) == 126)
    {
      v4 = 0;
      v5 = a2[1];
      if (v5)
      {
LABEL_6:
        if ((*(*v5 + 32))(v5) == 17 || (*(*v5 + 32))(v5) == 125 || (*(*v5 + 32))(v5) == 126)
        {
          v6 = 0;
          v7 = *a2;
          if (!*a2)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v6 = (*(*v5 + 32))(v5) != 127;
          v7 = *a2;
          if (!*a2)
          {
            goto LABEL_25;
          }
        }

LABEL_13:
        v8 = (*(*v7 + 32))(v7) - 124;
        if (v8 <= 0x11)
        {
          v9 = 0x3A1Eu >> v8;
          v10 = a2[1];
          if (v10)
          {
            goto LABEL_26;
          }

          goto LABEL_15;
        }

LABEL_25:
        v9 = 1;
        v10 = a2[1];
        if (v10)
        {
LABEL_26:
          v13 = (*(*v10 + 32))(v10);
          v11 = 0x3A1Eu >> (v13 - 124);
          if ((v13 - 124) > 0x11)
          {
            v11 = 1;
          }

          if (v4 || v6)
          {
LABEL_29:
            if ((v9 | v11))
            {
              operator new();
            }

            operator new();
          }

LABEL_16:
          if (*a2)
          {
            {
              v12 = a2[1];
              if (v12)
              {
                {
                  operator new();
                }
              }
            }
          }

          operator new();
        }

LABEL_15:
        v11 = 1;
        if (v4 || v6)
        {
          goto LABEL_29;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v4 = (*(*v3 + 32))(v3) != 127;
      v5 = a2[1];
      if (v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = a2[1];
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v6 = 1;
  v7 = *a2;
  if (!*a2)
  {
    goto LABEL_25;
  }

  goto LABEL_13;
}

uint64_t sub_11D890(uint64_t a1, int *a2, uint64_t *a3)
{
  if (!*a3)
  {
    goto LABEL_84;
  }

  v6 = (*(**a3 + 32))(*a3);
  v7 = *a3;
  if (v6 == 17)
  {
    sub_1283D8(a1, 1, v7);
    v8 = *a2;
    if (*a2 <= 83)
    {
      if (v8 == 82)
      {

        sub_12E9CC();
      }

      if (v8 == 83)
      {

        sub_12EBE0();
      }
    }

    else
    {
      switch(v8)
      {
        case 'T':

          sub_12EDF4();
        case 'U':

          sub_12F008();
        case 'V':

          sub_12F21C();
      }
    }

    return 0;
  }

  if (!v7)
  {
    goto LABEL_84;
  }

  v9 = (*(*v7 + 32))(*a3);
  v10 = *a3;
  if (v9 == 125)
  {
    sub_1283D8(a1, 3, v10);
    v11 = *a2;
    if (*a2 <= 83)
    {
      if (v11 == 82)
      {

        sub_12F430();
      }

      if (v11 == 83)
      {

        sub_12F644();
      }
    }

    else
    {
      switch(v11)
      {
        case 'T':

          sub_12F858();
        case 'U':

          sub_12FA6C();
        case 'V':

          sub_12FC80();
      }
    }

    return 0;
  }

  if (!v10)
  {
    goto LABEL_84;
  }

  v12 = (*(*v10 + 32))(*a3);
  v13 = *a3;
  if (v12 == 126)
  {
    sub_1283D8(a1, 3, v13);
    v14 = *a2;
    if (*a2 <= 83)
    {
      if (v14 == 82)
      {

        sub_12FE94();
      }

      if (v14 == 83)
      {

        sub_1300A8();
      }
    }

    else
    {
      switch(v14)
      {
        case 'T':

          sub_1302BC();
        case 'U':

          sub_1304D0();
        case 'V':

          sub_1306E4();
      }
    }

    return 0;
  }

  if (!v13)
  {
    goto LABEL_84;
  }

  v15 = (*(*v13 + 32))(*a3);
  v16 = *a3;
  if (v15 == 127)
  {
    sub_1283D8(a1, 3, v16);
    v17 = *a2;
    if (*a2 <= 83)
    {
      if (v17 == 82)
      {

        sub_1308F8();
      }

      if (v17 == 83)
      {

        sub_130B0C();
      }
    }

    else
    {
      switch(v17)
      {
        case 'T':

          sub_130D20();
        case 'U':

          sub_130F34();
        case 'V':

          sub_131148();
      }
    }

    return 0;
  }

  if (!v16 || (*(*v16 + 32))(*a3) != 124)
  {
LABEL_84:
    operator new();
  }

  sub_1283D8(a1, 2, *a3);
  v18 = a3[1];
  if (!v18 || ((v19 = (*(*v18 + 32))(v18), (v19 - 124) <= 0x11) ? (v20 = ((1 << (v19 - 124)) & 0x3C5E1) == 0) : (v20 = 1), v20))
  {
    v23 = *a2;
    if (*a2 <= 83)
    {
      if (v23 == 82)
      {

        sub_1315F0();
      }

      if (v23 == 83)
      {

        sub_131674();
      }
    }

    else
    {
      switch(v23)
      {
        case 'T':

          sub_1316F8();
        case 'U':

          sub_13177C();
        case 'V':

          sub_131800();
      }
    }
  }

  else
  {
    v21 = *a2;
    if (*a2 <= 83)
    {
      if (v21 == 82)
      {

        sub_13135C();
      }

      if (v21 == 83)
      {

        sub_1313E0();
      }
    }

    else
    {
      switch(v21)
      {
        case 'T':

          sub_131464();
        case 'U':

          sub_1314E8();
        case 'V':

          sub_13156C();
      }
    }
  }

  return 0;
}

uint64_t sub_11E1D4(uint64_t a1, _DWORD *a2, void *a3)
{
  if (!*a3 || ((v5 = (*(**a3 + 32))(*a3), (v5 - 124) <= 0x11) ? (v6 = ((1 << (v5 - 124)) & 0x3C5E1) == 0) : (v6 = 1), v6))
  {
    v7 = a3[1];
    if (!v7)
    {
      return 0;
    }

    v8 = (*(*v7 + 32))(v7);
    if ((v8 - 124) > 0x11 || ((1 << (v8 - 124)) & 0x3C5E1) == 0)
    {
      return 0;
    }
  }

  v10 = 0xFF7C000u >> *a2;
  if (*a2 > 0x1Bu)
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_11E2C8(uint64_t a1, _DWORD *a2, void *a3)
{
  if (*a3 && (v5 = (*(**a3 + 32))(*a3) - 124, v5 <= 0x11))
  {
    v6 = 0x3C5E1u >> v5;
    v7 = a3[1];
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
    v7 = a3[1];
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  v8 = (*(*v7 + 32))(v7);
  if ((v8 - 124) > 0x11 || ((1 << (v8 - 124)) & 0x3C5E1) == 0)
  {
LABEL_13:
    result = 0;
    if (v6)
    {
      switch(*a2)
      {
        case 0xE:

          sub_13CB50();
        case 0xF:

          sub_13CBD4();
        case 0x10:

          sub_13CD60();
        case 0x11:

          sub_13CE68();
        case 0x12:

          sub_13CDE4();
        case 0x14:

          sub_13CCDC();
        case 0x15:

          sub_13CC58();
        case 0x16:

          sub_13CEEC();
        case 0x17:

          sub_13CF70();
        case 0x18:

          sub_13CFF4();
        case 0x19:

          sub_13D078();
        case 0x1A:

          sub_13D0FC();
        case 0x1B:

          sub_13D180();
        default:
          return result;
      }
    }

    return result;
  }

  result = 0;
  if (v6)
  {
    switch(*a2)
    {
      case 0xE:
        operator new();
      case 0xF:
        operator new();
      case 0x10:
        operator new();
      case 0x11:
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

  else
  {
    switch(*a2)
    {
      case 0xE:

        sub_13D204();
      case 0xF:

        sub_13D288();
      case 0x10:

        sub_13D414();
      case 0x11:

        sub_13D51C();
      case 0x12:

        sub_13D498();
      case 0x14:

        sub_13D390();
      case 0x15:

        sub_13D30C();
      case 0x16:

        sub_13D5A0();
      case 0x17:

        sub_13D624();
      case 0x18:

        sub_13D6A8();
      case 0x19:

        sub_13D72C();
      case 0x1A:

        sub_13D7B0();
      case 0x1B:

        sub_13D834();
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_11ECC0(uint64_t a1, _DWORD *a2, void *a3)
{
  if (!*a3 || ((v5 = (*(**a3 + 32))(*a3), (v5 - 124) <= 0x11) ? (v6 = ((1 << (v5 - 124)) & 0x3C5E1) == 0) : (v6 = 1), v6))
  {
    v7 = a3[1];
    if (!v7)
    {
      return 0;
    }

    v8 = (*(*v7 + 32))(v7);
    if ((v8 - 124) > 0x11 || ((1 << (v8 - 124)) & 0x3C5E1) == 0)
    {
      return 0;
    }
  }

  v10 = 0xBCu >> *a2;
  if (*a2 > 7u)
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_11EDB0(uint64_t a1, int *a2, void *a3)
{
  if (*a3 && (v5 = (*(**a3 + 32))(*a3) - 124, v5 <= 0x11))
  {
    v6 = 0x3C5E1u >> v5;
    v7 = a3[1];
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
    v7 = a3[1];
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  v8 = (*(*v7 + 32))(v7);
  if ((v8 - 124) <= 0x11 && ((1 << (v8 - 124)) & 0x3C5E1) != 0)
  {
    v10 = *a2;
    if (v6)
    {
      if (v10 > 4)
      {
        switch(v10)
        {
          case 5:
            operator new();
          case 6:
            operator new();
          case 7:
            operator new();
        }
      }

      else
      {
        switch(v10)
        {
          case 2:
            operator new();
          case 3:
            operator new();
          case 4:
            operator new();
        }
      }
    }

    else if (v10 <= 3)
    {
      if (v10 == 2)
      {
        operator new();
      }

      if (v10 == 3)
      {
        operator new();
      }
    }

    else
    {
      switch(v10)
      {
        case 4:
          operator new();
        case 5:
          operator new();
        case 6:
          operator new();
      }
    }

    return 0;
  }

LABEL_16:
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v11 = *a2;
  if (*a2 > 4)
  {
    switch(v11)
    {
      case 5:
        operator new();
      case 6:
        operator new();
      case 7:
        operator new();
    }
  }

  else
  {
    switch(v11)
    {
      case 2:
        operator new();
      case 3:
        operator new();
      case 4:
        operator new();
    }
  }

  return 0;
}

uint64_t sub_11F41C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    (*(**a3 + 32))(*a3);
  }

  v4 = a3[1];
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  return 0;
}

uint64_t sub_11F498(uint64_t a1, void *a2)
{
  if (!*a2 || (result = (*(**a2 + 32))(*a2), result != 1))
  {
    result = a2[1];
    if (result)
    {
      return (*(*result + 32))(result) == 1;
    }
  }

  return result;
}

uint64_t sub_11F520(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  if (*a3)
  {
    v6 = (*(**a3 + 32))(*a3) == 1;
    v7 = a3[1];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v6 = 0;
  v7 = a3[1];
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = (*(*v7 + 32))(v7);
  v9 = v8 == 1;
  if (v8 != 1 || !v6)
  {
LABEL_12:
    v11 = *a2;
    if (*a2 == 18)
    {
      operator new();
    }

    if (v11 == 16)
    {
      operator new();
    }

    if (!v6)
    {
      if (!v9)
      {
LABEL_34:
        if (v11 <= 0x1B)
        {
          if (((1 << v11) & 0xFF0C000) != 0)
          {
            goto LABEL_38;
          }

          if (((1 << v11) & 0xFC) != 0)
          {
            return *a3;
          }
        }

        if (v11 - 87 >= 3)
        {
          sub_C9D74(*(a1 + 8), a3, 0);
          operator new();
        }

LABEL_38:
        operator new();
      }

      v12 = a3[1];
      if (v12 && (*(*v12 + 32))(v12) != 17)
      {
        v13 = a3[1];
        if (v13)
        {
          if ((*(*v13 + 32))(v13) == 18)
          {
            goto LABEL_25;
          }

          v14 = a3[1];
          if (v14)
          {
            (*(*v14 + 8))(v14);
          }
        }

        a3[1] = 0;
      }

LABEL_25:
      a3[1] = 0;
      v11 = *a2;
      goto LABEL_34;
    }

    if (*a3 && (*(**a3 + 32))(*a3) != 17)
    {
      if (!*a3)
      {
LABEL_23:
        *a3 = 0;
        goto LABEL_24;
      }

      if ((*(**a3 + 32))(*a3) != 18)
      {
        if (*a3)
        {
          (*(**a3 + 8))(*a3);
        }

        goto LABEL_23;
      }
    }

LABEL_24:
    *a3 = a3[1];
    goto LABEL_25;
  }

  if (*a2 == 16 || *a2 == 18)
  {
    operator new();
  }

  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (!v16)
    {
LABEL_46:
      a3[1] = 0;
      return *a3;
    }

    if ((*(*v16 + 32))(v16) != 18)
    {
      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      goto LABEL_46;
    }
  }

  return *a3;
}

uint64_t sub_11FCBC(uint64_t a1, _DWORD *a2, void *a3)
{
  result = a3[1];
  if (result)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    if (!*a3)
    {
      goto LABEL_16;
    }

    if ((*(**a3 + 32))(*a3) == 2)
    {
      return 0;
    }

    if (!*a3)
    {
      goto LABEL_16;
    }

    if ((*(**a3 + 32))(*a3) == 17)
    {
      return 0;
    }

    if (!*a3)
    {
      goto LABEL_16;
    }

    if ((*(**a3 + 32))(*a3) == 124)
    {
      return 0;
    }

    if (!*a3 || ((v6 = (*(**a3 + 32))(*a3), result = 0, v6 <= 0x21) ? (v7 = ((1 << v6) & 0x388FC0000) == 0) : (v7 = 1), v7 && v6 != 123))
    {
LABEL_16:
      (*(*a3[1] + 16))(a3[1]);
      if (*a2 == 7)
      {
        v10 = -*v8.i64;
        if (*v8.i64 >= 0.0)
        {
          v10 = *v8.i64;
        }

        if (v10 <= 60.0)
        {
          *v9.i64 = *v8.i64 - trunc(*v8.i64);
          v11.f64[0] = NAN;
          v11.f64[1] = NAN;
          return *vbslq_s8(vnegq_f64(v11), v9, v8).i64 == 0.0;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_11FE88(uint64_t a1, void *a2)
{
  v4 = (*(*a2[1] + 16))(a2[1]);
  v5 = -v4;
  if (v4 >= 0.0)
  {
    v5 = v4;
  }

  v6 = v5;
  v12 = v5;
  v7 = a2[1];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  a2[1] = 0;
  if (!v6)
  {
    if (!*a2)
    {
      goto LABEL_22;
    }

    if ((*(**a2 + 32))(*a2) != 17)
    {
      if (!*a2)
      {
LABEL_14:
        *a2 = 0;
        goto LABEL_15;
      }

      if ((*(**a2 + 32))(*a2) != 18)
      {
        if (*a2)
        {
          (*(**a2 + 8))(*a2);
        }

        goto LABEL_14;
      }
    }

LABEL_15:
    v9 = a2[1];
    if (v9 && (*(*v9 + 32))(v9) != 17)
    {
      v10 = a2[1];
      if (v10)
      {
        if ((*(*v10 + 32))(v10) == 18)
        {
          goto LABEL_22;
        }

        v11 = a2[1];
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      a2[1] = 0;
    }

LABEL_22:
    operator new();
  }

  if (v4 >= 0.0)
  {
    return sub_177778(a1, a2, &v12);
  }

  else
  {
    return sub_177A80(a1, a2, &v12);
  }
}

BOOL sub_1200EC(uint64_t a1, _DWORD *a2, uint64_t **a3, void *a4)
{
  *a4 = 0;
  if (*a2 > 0x1Bu || ((1 << *a2) & 0xFF5C0FC) == 0)
  {
    return 0;
  }

  sub_18A96C(a3, &__p);
  v9 = sub_BC168(a1 + 16, &__p.__r_.__value_.__l.__data_);
  v10 = a1 + 24 != v9;
  if ((a1 + 24) != v9)
  {
    *a4 = (v9[7])(a1, a2, a3);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_1201B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_1201D0(uint64_t a1, _DWORD *a2, void *a3)
{
  if ((*a2 - 2) > 3)
  {
    return 0;
  }

  if (*a3)
  {
    if ((*(**a3 + 32))(*a3) == 2)
    {
      v4 = a3[1];
      if (v4)
      {
        {
          return &dword_0 + 1;
        }
      }
    }
  }

  result = a3[1];
  if (result)
  {
    if ((*(*result + 32))(result) == 2)
    {
      result = *a3;
      if (*a3)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *sub_120338(uint64_t a1, int *a2, void *a3)
{
  v5 = *a3;
  {
    v11 = a3 + 1;
    v12 = a3[1];
    {
      return 0;
    }

    v13 = (*(*v5 + 16))(v5);
    v14 = *a2;
    if (v13 == 0.0)
    {
      if (v14 != 2)
      {
        if (v14 == 5 || v14 == 4)
        {
          if (*a3 && (*(**a3 + 32))(*a3) != 17)
          {
            if (!*a3)
            {
LABEL_33:
              *a3 = 0;
              goto LABEL_34;
            }

            if ((*(**a3 + 32))(*a3) != 18)
            {
              if (*a3)
              {
                (*(**a3 + 8))(*a3);
              }

              goto LABEL_33;
            }
          }

LABEL_34:
          if (*v11 && (*(**v11 + 32))(*v11) != 17)
          {
            if (*v11)
            {
              if ((*(**v11 + 32))(*v11) == 18)
              {
                goto LABEL_41;
              }

              if (*v11)
              {
                (*(**v11 + 8))(*v11);
              }
            }

            *v11 = 0;
          }

LABEL_41:
          operator new();
        }

LABEL_62:
        v21 = v13;
        if ((*(*v12 + 40))(v12) == 2)
        {
          v22 = *a2;
          if (*a2 == 3)
          {
            (*(*v12 + 48))(v12);
            v32 = 0;
            (*(*v12 + 64))(v12, &v32);
            sub_18B228();
          }
        }

        else
        {
          if ((*(*v12 + 40))(v12) != 3)
          {
            if ((*(*v12 + 40))(v12) == 4)
            {
              v30 = *a2;
              if (*a2 == 5)
              {
                (*(*v12 + 48))(v12);
                v32 = 0;
                (*(*v12 + 64))(v12, &v32);
                sub_18B11C();
              }
            }

            else
            {
              if ((*(*v12 + 40))(v12) != 5)
              {
                return 0;
              }

              v30 = *a2;
              if (*a2 == 5)
              {
                (*(*v12 + 48))(v12);
                v32 = 0;
                (*(*v12 + 64))(v12, &v32);
                sub_18B440();
              }
            }

            if (v30 != 4)
            {
              return 0;
            }

            v26.n128_f64[0] = v21 * (*(*v12 + 48))(v12);
            goto LABEL_92;
          }

          v22 = *a2;
          if (*a2 == 3)
          {
            (*(*v12 + 48))(v12);
            v32 = 0;
            (*(*v12 + 64))(v12, &v32);
            sub_18B334();
          }
        }

        if (v22 != 2)
        {
          return 0;
        }

        v26.n128_f64[0] = v21 + (*(*v12 + 48))(v12);
LABEL_92:
        (*(*v12 + 56))(v12, v26);
        if (!*a3 || (*(**a3 + 32))(*a3) == 17)
        {
          return v12;
        }

        if (*a3)
        {
          if ((*(**a3 + 32))(*a3) == 18)
          {
            return v12;
          }

          if (*a3)
          {
            (*(**a3 + 8))(*a3);
          }
        }

        *a3 = 0;
        return v12;
      }
    }

    else if (v13 != 1.0 || v14 != 4)
    {
      goto LABEL_62;
    }

    if (*a3 && (*(**a3 + 32))(*a3) != 17)
    {
      if (!*a3)
      {
LABEL_71:
        *a3 = 0;
        return *v11;
      }

      if ((*(**a3 + 32))(*a3) != 18)
      {
        if (*a3)
        {
          (*(**a3 + 8))(*a3);
        }

        goto LABEL_71;
      }
    }

    return *v11;
  }

  v6 = (*(*a3[1] + 16))(a3[1]);
  if (v6 != 0.0)
  {
    goto LABEL_42;
  }

  v7 = *a2;
  if (*a2 == 2)
  {
    goto LABEL_45;
  }

  if (v7 == 5)
  {
    if (*a3 && (*(**a3 + 32))(*a3) != 17)
    {
      if (!*a3)
      {
LABEL_79:
        *a3 = 0;
        goto LABEL_80;
      }

      if ((*(**a3 + 32))(*a3) != 18)
      {
        if (*a3)
        {
          (*(**a3 + 8))(*a3);
        }

        goto LABEL_79;
      }
    }

LABEL_80:
    v23 = a3[1];
    if (v23 && (*(*v23 + 32))(v23) != 17)
    {
      v24 = a3[1];
      if (v24)
      {
        if ((*(*v24 + 32))(v24) == 18)
        {
          goto LABEL_87;
        }

        v25 = a3[1];
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }

      a3[1] = 0;
    }

LABEL_87:
    operator new();
  }

  if (v7 == 4)
  {
    if (*a3 && (*(**a3 + 32))(*a3) != 17)
    {
      if (!*a3)
      {
LABEL_13:
        *a3 = 0;
        goto LABEL_14;
      }

      if ((*(**a3 + 32))(*a3) != 18)
      {
        if (*a3)
        {
          (*(**a3 + 8))(*a3);
        }

        goto LABEL_13;
      }
    }

LABEL_14:
    v8 = a3[1];
    if (v8 && (*(*v8 + 32))(v8) != 17)
    {
      v9 = a3[1];
      if (v9)
      {
        if ((*(*v9 + 32))(v9) == 18)
        {
          goto LABEL_41;
        }

        v10 = a3[1];
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }
      }

      a3[1] = 0;
    }

    goto LABEL_41;
  }

LABEL_42:
  if (v6 == 1.0 && (*a2 == 5 || *a2 == 4))
  {
LABEL_45:
    v15 = a3[1];
    if (!v15 || (*(*v15 + 32))(v15) == 17)
    {
      return *a3;
    }

    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        return *a3;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
    return *a3;
  }

  v18 = v6;
  if ((*(*v5 + 40))(v5) != 2 && (*(*v5 + 40))(v5) != 3)
  {
    if ((*(*v5 + 40))(v5) == 4)
    {
      if (*a2 == 5)
      {
        v19.n128_f64[0] = (*(*v5 + 48))(v5) / v18;
        goto LABEL_94;
      }

      if (*a2 != 4)
      {
        return 0;
      }
    }

    else
    {
      if ((*(*v5 + 40))(v5) != 5)
      {
        return 0;
      }

      if (*a2 == 5)
      {
        (*(*v5 + 48))(v5);
        v32 = 0;
        (*(*v5 + 64))(v5, &v32);
        sub_18B11C();
      }

      if (*a2 != 4)
      {
        return 0;
      }
    }

    v19.n128_f64[0] = v18 * (*(*v5 + 48))(v5);
    goto LABEL_94;
  }

  if (*a2 == 3)
  {
    v19.n128_f64[0] = (*(*v5 + 48))(v5) - v18;
    goto LABEL_94;
  }

  if (*a2 != 2)
  {
    return 0;
  }

  v19.n128_f64[0] = v18 + (*(*v5 + 48))(v5);
LABEL_94:
  (*(*v5 + 56))(v5, v19);
  v27 = a3[1];
  if (v27 && (*(*v27 + 32))(v27) != 17)
  {
    v28 = a3[1];
    if (v28)
    {
      if ((*(*v28 + 32))(v28) == 18)
      {
        return v5;
      }

      v29 = a3[1];
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }
    }

    a3[1] = 0;
  }

  return v5;
}

const void *sub_121164(uint64_t a1, _DWORD *a2, void *a3)
{
  if ((*a2 - 2) > 3)
  {
    return 0;
  }

  if (*a3)
  {
    if ((*(**a3 + 32))(*a3) == 2)
    {
      v4 = a3[1];
      if (v4)
      {
        {
          return &dword_0 + 1;
        }
      }
    }
  }

  result = a3[1];
  if (result)
  {
    if ((*(*result + 32))(result) == 2)
    {
      result = *a3;
      if (*a3)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *sub_1212CC(uint64_t a1, _DWORD *a2, void *a3)
{
  v5 = *a3;
  {
    v9 = a3[1];
    {
      return 0;
    }

    v10 = (*(*v5 + 16))(v5);
    if ((*(*v9 + 40))(v9) == 2)
    {
      if (*a2 == 3)
      {
        (*(*v9 + 48))(v9);
        v15 = 0;
        (*(*v9 + 64))(v9, &v15);
        operator new();
      }

      if (*a2 != 2)
      {
        return 0;
      }

      v11.n128_f64[0] = v10 + (*(*v9 + 48))(v9);
      goto LABEL_13;
    }

    if ((*(*v9 + 40))(v9) == 3)
    {
      if (*a2 == 3)
      {
        (*(*v9 + 48))(v9);
        v15 = 0;
        (*(*v9 + 64))(v9, &v15);
        operator new();
      }

      if (*a2 == 2)
      {
        v15 = 0;
        (*(*v9 + 64))(v9, &v15);
        (*(*v9 + 48))(v9);
        operator new();
      }

      return 0;
    }

    if ((*(*v9 + 40))(v9) == 4)
    {
      if (*a2 != 5)
      {
        if (*a2 != 4)
        {
          return 0;
        }

        v11.n128_f64[0] = v10 * (*(*v9 + 48))(v9);
LABEL_13:
        (*(*v9 + 56))(v9, v11);
        v5 = v9;
        if (!*a3 || (*(**a3 + 32))(*a3) == 17)
        {
          return v5;
        }

        if (!*a3)
        {
          v6 = a3;
          goto LABEL_58;
        }

        if ((*(**a3 + 32))(*a3) == 18)
        {
          return v5;
        }

        v12 = *a3;
        v6 = a3;
        if (*a3)
        {
LABEL_56:
          (*(*v12 + 8))(v12);
        }

LABEL_58:
        *v6 = 0;
        return v5;
      }
    }

    else
    {
      if ((*(*v9 + 40))(v9) != 5)
      {
        return 0;
      }

      if (*a2 != 5)
      {
        if (*a2 != 4)
        {
          return 0;
        }

        v11.n128_f64[0] = (*(*v9 + 48))(v9) / v10;
        goto LABEL_13;
      }
    }

    v14.n128_f64[0] = (*(*v9 + 48))(v9);
    v15 = 0;
    (*(*v9 + 64))(v9, &v15, v14);
    sub_18B11C();
  }

  v6 = a3 + 1;
  v7 = (*(*a3[1] + 16))(a3[1]);
  if ((*(*v5 + 40))(v5) == 2)
  {
    if (*a2 == 3)
    {
      v8.n128_f64[0] = (*(*v5 + 48))(v5) - v7;
      goto LABEL_36;
    }

    if (*a2 == 2)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if ((*(*v5 + 40))(v5) == 4)
  {
    if (*a2 != 5)
    {
      if (*a2 != 4)
      {
        return 0;
      }

LABEL_17:
      v8.n128_f64[0] = v7 * (*(*v5 + 48))(v5);
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if ((*(*v5 + 40))(v5) != 3)
  {
    if ((*(*v5 + 40))(v5) != 5)
    {
      return 0;
    }

    if (*a2 != 4)
    {
      if (*a2 != 5)
      {
        return 0;
      }

      goto LABEL_17;
    }

LABEL_35:
    v8.n128_f64[0] = (*(*v5 + 48))(v5) / v7;
    goto LABEL_36;
  }

  if (*a2 != 3)
  {
    if (*a2 == 2)
    {
      v15 = 0;
      (*(*v5 + 64))(v5, &v15);
      (*(*v5 + 48))(v5);
      operator new();
    }

    return 0;
  }

LABEL_6:
  v8.n128_f64[0] = v7 + (*(*v5 + 48))(v5);
LABEL_36:
  (*(*v5 + 56))(v5, v8);
  if (!*v6 || (*(**v6 + 32))(*v6) == 17)
  {
    return v5;
  }

  if (!*v6)
  {
    goto LABEL_58;
  }

  if ((*(**v6 + 32))(*v6) != 18)
  {
    v12 = *v6;
    if (!*v6)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  return v5;
}

void *sub_121F6C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*a2 > 0x1Bu || ((1 << *a2) & 0xFF5C0FC) == 0)
  {
    return 0;
  }

  result = *a3;
  if (*a3)
  {
    if (result)
    {
      result = *(a3 + 8);
      if (result)
      {
      }
    }
  }

  return result;
}

uint64_t sub_122058(uint64_t a1, int *a2, void **a3)
{
  v6 = (*(**a3 + 40))();
  v7 = (*(*a3[1] + 40))(a3[1]);
  (*(**a3 + 48))();
  (*(*a3[1] + 48))(a3[1]);
  v8 = *(a1 + 40);
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (v11)
  {
    v12 = v9;
    v13 = v10;
    do
    {
      if (*(v13 + 32) >= v6)
      {
        v12 = v13;
      }

      v13 = *(v13 + 8 * (*(v13 + 32) < v6));
    }

    while (v13);
    if (v12 != v9 && v6 >= *(v12 + 32))
    {
      v14 = v9;
      do
      {
        if (*(v10 + 32) >= v7)
        {
          v14 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 32) < v7));
      }

      while (v10);
      if (v14 != v9 && v7 >= *(v14 + 32))
      {
        v15 = *(a1 + 48);
        v18 = *(v15 + 8);
        v16 = v15 + 8;
        v17 = v18;
        if (v18)
        {
          v19 = *a2;
          v20 = v16;
          do
          {
            if (*(v17 + 32) >= v19)
            {
              v20 = v17;
            }

            v17 = *(v17 + 8 * (*(v17 + 32) < v19));
          }

          while (v17);
          if (v20 != v16 && v19 >= *(v20 + 32))
          {
            if (v6 == 52 && v7 == 52)
            {
              if (v19 > 3)
              {
                if (v19 == 4)
                {
                  operator new();
                }

                if (v19 == 5)
                {
                  operator new();
                }
              }

              else
              {
                if (v19 == 2)
                {
                  operator new();
                }

                if (v19 == 3)
                {
                  operator new();
                }
              }
            }

            operator new();
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_122538(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  if (*a2 > 0x1Bu || ((1 << *a2) & 0xFF5C0FC) == 0)
  {
    return 0;
  }

  result = *a3;
  if (*a3)
  {
    if ((*(*result + 32))(result) == 17)
    {
      v6 = a3[1];
      return !v6 || (*(*v6 + 32))(v6) != 17;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_122618(uint64_t a1, int *a2, uint64_t *a3)
{
  v6 = (*(**a3 + 40))();
  v8 = a3[1];
  v7 = a3 + 1;
  if ((*(*v8 + 32))(v8) - 106 <= 4)
  {
    v13 = 0;
    if (sub_18BF14(a1, v6, a2, v7, &v13))
    {
      if (!*v7 || (*(**v7 + 32))(*v7) == 17)
      {
        return v13;
      }

      if (*v7)
      {
        if ((*(**v7 + 32))(*v7) == 18)
        {
          return v13;
        }

        if (*v7)
        {
          (*(**v7 + 8))(*v7);
        }
      }

      *v7 = 0;
      return v13;
    }
  }

  v10 = *a2;
  if ((*a2 & 0xFFFFFFFE) == 4)
  {
    v11 = *v7;
    if (*v7)
    {
      v12 = *v11;
      {
        if ((*(v12 + 40))(v11) == 52)
        {
          (*(**v7 + 48))();
          if (!*v7 || (*(**v7 + 32))(*v7) == 17)
          {
            goto LABEL_22;
          }

          if (*v7)
          {
            if ((*(**v7 + 32))(*v7) == 18)
            {
LABEL_22:
              v10 = *a2;
              if (*a2 == 5)
              {
                operator new();
              }

              if (v10 == 4)
              {
                operator new();
              }

              goto LABEL_26;
            }

            if (*v7)
            {
              (*(**v7 + 8))(*v7);
            }
          }

          *v7 = 0;
          goto LABEL_22;
        }

        v10 = *a2;
      }
    }
  }

LABEL_26:
  result = 0;
  switch(v10)
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
    case 14:
      operator new();
    case 15:
      operator new();
    case 16:
      operator new();
    case 18:
      operator new();
    case 20:
      operator new();
    case 21:
      operator new();
    case 22:
      operator new();
    case 23:
      operator new();
    case 24:
      operator new();
    case 25:
      operator new();
    case 26:
      operator new();
    case 27:
      operator new();
    default:
      return result;
  }

  return result;
}

uint64_t sub_12365C(uint64_t a1, _DWORD *a2, void *a3)
{
  if (*a2 > 0x1Bu || ((1 << *a2) & 0xFF5C0FC) == 0)
  {
    return 0;
  }

  if (*a3 && (*(**a3 + 32))(*a3) == 17)
  {
    return 0;
  }

  result = a3[1];
  if (result)
  {
    return (*(*result + 32))(result) == 17;
  }

  return result;
}

uint64_t sub_123728(uint64_t a1, int *a2, uint64_t *a3)
{
  v6 = (*(*a3[1] + 40))(a3[1]);
  if ((*(**a3 + 32))() - 106 <= 4)
  {
    v11 = 0;
    if (sub_1A4060(a1, v6, a2, a3, &v11))
    {
      if (!*a3 || (*(**a3 + 32))(*a3) == 17)
      {
        return v11;
      }

      if (*a3)
      {
        if ((*(**a3 + 32))(*a3) == 18)
        {
          return v11;
        }

        if (*a3)
        {
          (*(**a3 + 8))(*a3);
        }
      }

      *a3 = 0;
      return v11;
    }
  }

  v8 = *a2;
  if ((*a2 - 2) <= 3)
  {
    v9 = *a3;
    if (*a3)
    {
      v10 = *v9;
      {
        if ((*(v10 + 40))(v9) == 52)
        {
          (*(**a3 + 48))();
          if (*a3 && (*(**a3 + 32))(*a3) != 17)
          {
            if (*a3)
            {
              if ((*(**a3 + 32))(*a3) == 18)
              {
                goto LABEL_22;
              }

              if (*a3)
              {
                (*(**a3 + 8))(*a3);
              }
            }

            *a3 = 0;
          }

LABEL_22:
          v8 = *a2;
          if (*a2 > 3)
          {
            if (v8 == 4)
            {
              operator new();
            }

            if (v8 == 5)
            {
              operator new();
            }
          }

          else
          {
            if (v8 == 2)
            {
              operator new();
            }

            if (v8 == 3)
            {
              operator new();
            }
          }

          goto LABEL_27;
        }

        v8 = *a2;
      }
    }
  }

LABEL_27:
  result = 0;
  switch(v8)
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
    case 14:
      operator new();
    case 15:
      operator new();
    case 16:
      operator new();
    case 18:
      operator new();
    case 20:
      operator new();
    case 21:
      operator new();
    case 22:
      operator new();
    case 23:
      operator new();
    case 24:
      operator new();
    case 25:
      operator new();
    case 26:
      operator new();
    case 27:
      operator new();
    default:
      return result;
  }

  return result;
}

uint64_t sub_124818(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  if (*a2 > 0x1Bu || ((1 << *a2) & 0xFF5C0FC) == 0)
  {
    return 0;
  }

  result = *a3;
  if (*a3)
  {
    if ((*(*result + 32))(result) == 2)
    {
      v6 = a3[1];
      return !v6 || (*(*v6 + 32))(v6) != 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1248F8(uint64_t a1, int *a2, uint64_t *a3)
{
  v6 = (*(**a3 + 16))();
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
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
  }

LABEL_8:
  v7 = *a2;
  if (v6 != 0.0)
  {
    if (v6 != 1.0 || v7 != 4)
    {
      goto LABEL_24;
    }

    return a3[1];
  }

  if (v7 == 2)
  {
    return a3[1];
  }

  if (v7 == 5 || v7 == 4)
  {
    v8 = a3[1];
    if (v8 && (*(*v8 + 32))(v8) != 17)
    {
      v9 = a3[1];
      if (v9)
      {
        if ((*(*v9 + 32))(v9) == 18)
        {
          goto LABEL_19;
        }

        v10 = a3[1];
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }
      }

      a3[1] = 0;
    }

LABEL_19:
    operator new();
  }

LABEL_24:
  v13 = a3[1];
  v12 = a3 + 1;
  v14 = *v13;
  v15 = v13;
  {
    if ((*(v14 + 32))(v15) - 106 > 4 || (v27 = 0, !sub_1AED04(a1, a2, v12, &v27)))
    {
LABEL_50:
      result = 0;
      switch(*a2)
      {
        case 2:
          sub_18B334();
        case 3:
          sub_18B228();
        case 4:
          sub_18B440();
        case 5:
          sub_18B11C();
        case 6:
          sub_1AF850();
        case 7:
          sub_1AF95C();
        case 14:
          sub_1AFA68();
        case 15:
          sub_1AFB74();
        case 16:
          sub_1AFE98();
        case 18:
          sub_1AFFA4();
        case 20:
          sub_1AFD8C();
        case 21:
          sub_1AFC80();
        case 22:
          sub_1B00B0();
        case 23:
          sub_1B01BC();
        case 24:
          sub_1B02C8();
        case 25:
          sub_1B03D4();
        case 26:
          sub_1B04E0();
        case 27:
          sub_1B05EC();
        default:
          return result;
      }

      return result;
    }

    if (*v12 && (*(**v12 + 32))(*v12) != 17)
    {
      if (!*v12)
      {
LABEL_45:
        *v12 = 0;
        return v27;
      }

      if ((*(**v12 + 32))(*v12) != 18)
      {
        if (*v12)
        {
          (*(**v12 + 8))(*v12);
        }

        goto LABEL_45;
      }
    }

    return v27;
  }

  if (v7 != 4 && (v16 = v7, v7 != 2) || (v17 = (*(v14 + 40))(v15), v16 = *a2, v7 != v17))
  {
    if (v16 == 5)
    {
      v23 = *v12;
      v24 = (*(**v12 + 40))(*v12);
      if ((v24 & 0xFFFFFFFE) == 4)
      {
        v25 = v24;
        v26 = (*(*v23 + 48))(v23);
        if (v25 == 5)
        {
          v27 = 0;
          (*(*v23 + 64))(v23, &v27, v26);
          sub_18B440();
        }

        v27 = 0;
        (*(*v23 + 64))(v23, &v27, v26);
        sub_18B11C();
      }
    }

    else if (v16 == 4)
    {
      v15 = *v12;
      v20 = (*(**v12 + 40))();
      if ((v20 & 0xFFFFFFFE) == 4)
      {
        v21 = v20;
        (*(*v15 + 48))(v15);
        v22 = *(*v15 + 56);
        if (v21 == 5)
        {
          v18.n128_f64[0] = v6 * v18.n128_f64[0];
        }

        else
        {
          v18.n128_f64[0] = v18.n128_f64[0] / v6;
        }

        goto LABEL_54;
      }
    }

    goto LABEL_50;
  }

  if (v16 == 4)
  {
    v18.n128_f64[0] = v6 * (*(*v15 + 48))(v15);
    goto LABEL_53;
  }

  if (v16 == 2)
  {
    v18.n128_f64[0] = v6 + (*(*v15 + 48))(v15);
LABEL_53:
    v22 = *(*v15 + 56);
LABEL_54:
    v22(v15, v18);
    return v15;
  }

  return 0;
}

uint64_t sub_1250D0(uint64_t a1, _DWORD *a2, void *a3)
{
  if (*a2 > 0x1Bu || ((1 << *a2) & 0xFF5C0FC) == 0)
  {
    return 0;
  }

  if (*a3 && (*(**a3 + 32))(*a3) == 2)
  {
    return 0;
  }

  result = a3[1];
  if (result)
  {
    return (*(*result + 32))(result) == 2;
  }

  return result;
}

uint64_t sub_12519C(uint64_t a1, int *a2, uint64_t *a3)
{
  v6 = (*(*a3[1] + 16))(a3[1]);
  *&v19[1] = v6;
  v7 = a3[1];
  if (v7 && (*(*v7 + 32))(v7) != 17)
  {
    v8 = a3[1];
    if (v8)
    {
      if ((*(*v8 + 32))(v8) == 18)
      {
        goto LABEL_8;
      }

      v9 = a3[1];
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    a3[1] = 0;
  }

LABEL_8:
  v10 = *a2;
  if (v6 != 0.0)
  {
    if (v6 != 1.0 || v10 != 4)
    {
      goto LABEL_24;
    }

    return *a3;
  }

  switch(v10)
  {
    case 2:
      return *a3;
    case 5:
      if (*a3 && (*(**a3 + 32))(*a3) != 17)
      {
        if (*a3)
        {
          if ((*(**a3 + 32))(*a3) == 18)
          {
            goto LABEL_41;
          }

          if (*a3)
          {
            (*(**a3 + 8))(*a3);
          }
        }

        *a3 = 0;
      }

LABEL_41:
      operator new();
    case 4:
      if (*a3 && (*(**a3 + 32))(*a3) != 17)
      {
        if (*a3)
        {
          if ((*(**a3 + 32))(*a3) == 18)
          {
            goto LABEL_19;
          }

          if (*a3)
          {
            (*(**a3 + 8))(*a3);
          }
        }

        *a3 = 0;
      }

LABEL_19:
      operator new();
  }

LABEL_24:
  v12 = *a3;
  if (!*a3)
  {
    goto LABEL_49;
  }

  v13 = *v12;
  {
    goto LABEL_49;
  }

  if (v10 > 4)
  {
    if (v10 == 5)
    {
      v16 = (*(v13 + 40))(v12);
      if ((v16 & 0xFFFFFFFE) == 4)
      {
        v17 = v16;
        (*(*v12 + 48))(v12);
        v18 = *(*v12 + 56);
        if (v17 == 5)
        {
          v14.n128_f64[0] = v6 * v14.n128_f64[0];
        }

        else
        {
          v14.n128_f64[0] = v14.n128_f64[0] / v6;
        }

        goto LABEL_80;
      }
    }

    else if (v10 == 7 && (*(v13 + 40))(v12) == 7)
    {
      v14.n128_f64[0] = (*(*v12 + 48))(v12) * v6;
      goto LABEL_79;
    }

LABEL_49:
    if ((*(**a3 + 32))() - 106 > 4 || (v19[0] = 0, !sub_1BDE98(a1, a2, a3, v19)))
    {
      result = 0;
      switch(*a2)
      {
        case 2:
          sub_1BE9B4();
        case 3:
          sub_1BEAC0();
        case 4:
          sub_1BEBCC();
        case 5:
          sub_1BECD8();
        case 6:
          sub_1BEDE4();
        case 7:
          sub_1BEEF0();
        case 14:
          sub_1BEFFC();
        case 15:
          sub_1BF108();
        case 16:
          sub_1BF42C();
        case 18:
          sub_1BF538();
        case 20:
          sub_1BF320();
        case 21:
          sub_1BF214();
        case 22:
          sub_1BF644();
        case 23:
          sub_1BF750();
        case 24:
          sub_1BF85C();
        case 25:
          sub_1BF968();
        case 26:
          sub_1BFA74();
        case 27:
          sub_1BFB80();
        default:
          return result;
      }

      return result;
    }

    if (*a3 && (*(**a3 + 32))(*a3) != 17)
    {
      if (!*a3)
      {
LABEL_57:
        *a3 = 0;
        return v19[0];
      }

      if ((*(**a3 + 32))(*a3) != 18)
      {
        if (*a3)
        {
          (*(**a3 + 8))(*a3);
        }

        goto LABEL_57;
      }
    }

    return v19[0];
  }

  if (v10 != 2 && v10 != 4 || v10 != (*(v13 + 40))(v12))
  {
    goto LABEL_49;
  }

  if (*a2 == 4)
  {
    v14.n128_f64[0] = v6 * (*(*v12 + 48))(v12);
    goto LABEL_79;
  }

  if (*a2 == 2)
  {
    v14.n128_f64[0] = v6 + (*(*v12 + 48))(v12);
LABEL_79:
    v18 = *(*v12 + 56);
LABEL_80:
    v18(v12, v14);
    return v12;
  }

  return 0;
}

uint64_t sub_12598C(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  if (*a2 > 0x1Bu || ((1 << *a2) & 0xFF5C0FC) == 0)
  {
    return 0;
  }

  result = *a3;
  if (*a3)
  {
    if ((*(*result + 32))(result) == 2)
    {
      result = a3[1];
      if (result)
      {
        return (*(*result + 32))(result) == 17;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_125A58(uint64_t a1, int *a2, void *a3)
{
  v5 = (*(**a3 + 16))();
  (*(*a3[1] + 40))(a3[1]);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
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
  }

LABEL_8:
  if (v5 == 0.0)
  {
    v6 = *a2;
    if (*a2 == 2)
    {
      return a3[1];
    }

    if (v6 == 5 || v6 == 4)
    {
      operator new();
    }
  }

  v7 = *a2;
  if (v5 == 1.0 && v7 == 4)
  {
    return a3[1];
  }

  result = 0;
  switch(v7)
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
    case 14:
      operator new();
    case 15:
      operator new();
    case 16:
      operator new();
    case 18:
      operator new();
    case 20:
      operator new();
    case 21:
      operator new();
    case 22:
      operator new();
    case 23:
      operator new();
    case 24:
      operator new();
    case 25:
      operator new();
    case 26:
      operator new();
    case 27:
      operator new();
    default:
      return result;
  }

  return result;
}

BOOL sub_12605C(uint64_t a1, _DWORD *a2, void *a3)
{
  if (*a2 > 0x1Bu || ((1 << *a2) & 0xFF5C0FC) == 0)
  {
    return 0;
  }

  if (*a3)
  {
    if ((*(**a3 + 32))(*a3) == 2)
    {
      v5 = a3[1];
      if (v5)
      {
        return (*(*v5 + 32))(v5) != 2;
      }
    }
  }

  return 1;
}

uint64_t sub_126128(uint64_t a1, int *a2, uint64_t *a3)
{
  if (!*a3)
  {
    v6 = 0;
    v8 = a3 + 1;
    v7 = a3[1];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:
    v10 = 0;
    v12 = !v6;
    v11 = 1;
    goto LABEL_14;
  }

  v6 = (*(**a3 + 32))(*a3) == 75;
  v8 = a3 + 1;
  v7 = a3[1];
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v9 = (*(*v7 + 32))(v7);
  v10 = v9 == 75;
  v11 = v9 != 75;
  v12 = !v6;
  if (!v6 || v9 != 75)
  {
LABEL_14:
    if (v12 || v10)
    {
      v13 = *a2;
      if (!v6 && !v11 && (v13 - 6) >= 0xFFFFFFFC)
      {
        if ((sub_CC64C(*(a1 + 80), v8) & 1) == 0)
        {
          goto LABEL_33;
        }

        v15 = *a2;
        if (*a2 > 3)
        {
          if (v15 == 4)
          {
            sub_1CA11C();
          }

          if (v15 == 5)
          {
            sub_1CA29C();
          }

          return 0;
        }

        if (v15 != 2)
        {
          if (v15 == 3)
          {

            sub_1C9E1C();
          }

          return 0;
        }

        goto LABEL_74;
      }
    }

    else
    {
      v13 = *a2;
      if ((*a2 - 2) <= 3)
      {
        if ((sub_CC64C(*(a1 + 80), a3) & 1) == 0)
        {
          goto LABEL_33;
        }

        v14 = *a2;
        if (*a2 > 3)
        {
          if (v14 == 4)
          {
            sub_1CA11C();
          }

          if (v14 == 5)
          {
            sub_1CA29C();
          }

          return 0;
        }

        if (v14 != 2)
        {
          if (v14 == 3)
          {
            sub_1C9E1C();
          }

          return 0;
        }

LABEL_74:

        sub_1C9F9C();
      }
    }

LABEL_31:
    switch(v13)
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
      case 14:
        operator new();
      case 15:
        operator new();
      case 16:
        operator new();
      case 18:
        operator new();
      case 20:
        operator new();
      case 21:
        operator new();
      case 22:
        operator new();
      case 23:
        operator new();
      case 24:
        operator new();
      case 25:
        operator new();
      case 26:
        operator new();
      case 27:
        operator new();
      default:
        return 0;
    }

    return 0;
  }

  v13 = *a2;
  if ((*a2 - 2) > 3)
  {
LABEL_9:
    if (v13 == 3)
    {
      operator new();
    }

    if (v13 == 2)
    {
      operator new();
    }

    goto LABEL_31;
  }

  if (sub_CC64C(*(a1 + 80), a3) && (sub_CC64C(*(a1 + 80), v8) & 1) != 0)
  {
    v13 = *a2;
    goto LABEL_9;
  }

LABEL_33:
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_39:
      *a3 = 0;
      goto LABEL_40;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_39;
    }
  }

LABEL_40:
  if (*v8 && (*(**v8 + 32))(*v8) != 17)
  {
    if (*v8)
    {
      if ((*(**v8 + 32))(*v8) == 18)
      {
        return 0;
      }

      if (*v8)
      {
        (*(**v8 + 8))(*v8);
      }
    }

    *v8 = 0;
  }

  return 0;
}

uint64_t sub_127D9C(uint64_t a1, _DWORD *a2, void *a3)
{
  v4 = *a3;
  if ((*a2 - 87) <= 2)
  {
    if (!v4 || (*(*v4 + 32))(v4) == 17)
    {
      goto LABEL_9;
    }

    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
LABEL_9:
        result = a3[1];
        if (!result)
        {
          return result;
        }

        if ((*(*result + 32))(result) == 17)
        {
          return 0;
        }

        v9 = a3[1];
        if (!v9)
        {
          goto LABEL_37;
        }

        if ((*(*v9 + 32))(v9) == 18)
        {
          return 0;
        }

        goto LABEL_35;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
    goto LABEL_9;
  }

  v6 = a3[1];
  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a2)
    {
      operator new();
    }

    return 0;
  }

  if (v4)
  {
    if ((*(*v4 + 32))(v4) != 17)
    {
      if (!*a3)
      {
LABEL_23:
        *a3 = 0;
        goto LABEL_24;
      }

      if ((*(**a3 + 32))(*a3) != 18)
      {
        if (*a3)
        {
          (*(**a3 + 8))(*a3);
        }

        goto LABEL_23;
      }
    }

LABEL_24:
    v6 = a3[1];
  }

  if (!v6 || (*(*v6 + 32))(v6) == 17)
  {
    return 0;
  }

  v8 = a3[1];
  if (v8)
  {
    if ((*(*v8 + 32))(v8) == 18)
    {
      return 0;
    }

LABEL_35:
    v10 = a3[1];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

LABEL_37:
  result = 0;
  a3[1] = 0;
  return result;
}

uint64_t sub_12835C(uint64_t result)
{
  if (result)
  {
    v1 = (*(*result + 32))(result);
    result = 1;
    if ((v1 > 0x21 || ((1 << v1) & 0x388FC0000) == 0) && v1 != 123)
    {
      return 0;
    }
  }

  return result;
}

void sub_1283D8(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 80);
  if ((*(v3 + 651) & 1) == 0)
  {
    *(v3 + 651) = 1;
  }

  if (*(v3 + 474))
  {
    switch(a2)
    {
      case 3:
        v21 = *(**(v3 + 440) + 8);
        if (v21[26])
        {
          v17 = v21[24];
          v22 = v21 + 25;
          if (v22 != v17)
          {
            while (v17[8] != *(a3 + 24))
            {
              v23 = v17[1];
              if (v23)
              {
                do
                {
                  v24 = v23;
                  v23 = *v23;
                }

                while (v23);
              }

              else
              {
                do
                {
                  v24 = v17[2];
                  v15 = *v24 == v17;
                  v17 = v24;
                }

                while (!v15);
              }

              v17 = v24;
              if (v22 == v24)
              {
                goto LABEL_45;
              }
            }

            goto LABEL_53;
          }
        }

        break;
      case 2:
        v16 = *(**(v3 + 440) + 8);
        if (v16[26])
        {
          v17 = v16[24];
          v18 = v16 + 25;
          if (v18 != v17)
          {
            while (v17[8] != *(a3 + 16))
            {
              v19 = v17[1];
              if (v19)
              {
                do
                {
                  v20 = v19;
                  v19 = *v19;
                }

                while (v19);
              }

              else
              {
                do
                {
                  v20 = v17[2];
                  v15 = *v20 == v17;
                  v17 = v20;
                }

                while (!v15);
              }

              v17 = v20;
              if (v18 == v20)
              {
                goto LABEL_45;
              }
            }

LABEL_53:
            if (*(v17 + 55) < 0)
            {
              v27 = a1;
              sub_325C(__p, v17[4], v17[5]);
              a1 = v27;
            }

            else
            {
              *__p = *(v17 + 2);
              v31 = v17[6];
            }

            goto LABEL_46;
          }
        }

        break;
      case 1:
        v4 = *(**(v3 + 440) + 8);
        if (v4[2] && (v7 = *v4, v5 = v4 + 1, v6 = v7, v5 != v7))
        {
          while (v6[8] != a3)
          {
            v13 = v6[1];
            if (v13)
            {
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13);
            }

            else
            {
              do
              {
                v14 = v6[2];
                v15 = *v14 == v6;
                v6 = v14;
              }

              while (!v15);
            }

            v6 = v14;
            if (v5 == v14)
            {
              goto LABEL_9;
            }
          }

          if (*(v6 + 55) < 0)
          {
            v28 = a1;
            sub_325C(__p, v6[4], v6[5]);
            a1 = v28;
          }

          else
          {
            *__p = *(v6 + 2);
            v31 = v6[6];
          }
        }

        else
        {
LABEL_9:
          __p[0] = 0;
          __p[1] = 0;
          v31 = 0;
        }

        v9 = __p[0];
        v8 = __p[1];
        *v29 = v31;
        *&v29[3] = *(&v31 + 3);
        v10 = HIBYTE(v31);
        v11 = 1;
        if (v31 >= 0)
        {
          v12 = HIBYTE(v31);
        }

        else
        {
          v12 = __p[1];
        }

        if (!v12)
        {
          goto LABEL_58;
        }

        goto LABEL_50;
      default:
        return;
    }

LABEL_45:
    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
LABEL_46:
    v9 = __p[0];
    v8 = __p[1];
    *v29 = v31;
    *&v29[3] = *(&v31 + 3);
    v10 = HIBYTE(v31);
    v11 = 2;
    if (v31 >= 0)
    {
      v25 = HIBYTE(v31);
    }

    else
    {
      v25 = __p[1];
    }

    if (!v25)
    {
LABEL_58:
      if (v10 < 0)
      {
        operator delete(v9);
      }

      return;
    }

LABEL_50:
    v26 = *(a1 + 80);
    if (*(v26 + 474) == 1)
    {
      if (v10 < 0)
      {
        sub_325C(__p, v9, v8);
      }

      else
      {
        __p[0] = v9;
        __p[1] = v8;
        LODWORD(v31) = *v29;
        *(&v31 + 3) = *&v29[3];
        HIBYTE(v31) = v10;
      }

      v32 = v11;
      sub_E5D1C(v26 + 504, __p);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_58;
  }
}

void sub_1286F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 0x80) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((v17 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v16);
  _Unwind_Resume(exception_object);
}

uint64_t sub_128728(uint64_t a1, _DWORD *a2, void *a3)
{
  v4 = *a3;
  if ((*a2 - 87) > 2)
  {
    v7 = a3 + 1;
    v6 = a3[1];
    if (v4)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (*a2)
      {
        sub_12A410();
      }

      return 0;
    }

    if (!v4)
    {
LABEL_25:
      if (!v6 || (*(*v6 + 32))(v6) == 17)
      {
        return 0;
      }

      if (*v7)
      {
        if ((*(**v7 + 32))(*v7) == 18)
        {
          return 0;
        }

        if (*v7)
        {
          (*(**v7 + 8))(*v7);
        }
      }

      result = 0;
      *v7 = 0;
      return result;
    }

    if ((*(*v4 + 32))(v4) != 17)
    {
      if (!*a3)
      {
LABEL_23:
        *a3 = 0;
        goto LABEL_24;
      }

      if ((*(**a3 + 32))(*a3) != 18)
      {
        if (*a3)
        {
          (*(**a3 + 8))(*a3);
        }

        goto LABEL_23;
      }
    }

LABEL_24:
    v6 = *v7;
    goto LABEL_25;
  }

  if (v4 && (*(*v4 + 32))(v4) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_9;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_9:
  result = a3[1];
  if (result)
  {
    if ((*(*result + 32))(result) == 17)
    {
      return 0;
    }

    v9 = a3[1];
    if (v9)
    {
      if ((*(*v9 + 32))(v9) == 18)
      {
        return 0;
      }

      v10 = a3[1];
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    result = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_128BCC(uint64_t a1, _DWORD *a2, void *a3)
{
  v4 = *a3;
  if ((*a2 - 87) > 2)
  {
    v7 = a3 + 1;
    v6 = a3[1];
    if (v4)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (*a2)
      {
        sub_12B198();
      }

      return 0;
    }

    if (!v4)
    {
LABEL_25:
      if (!v6 || (*(*v6 + 32))(v6) == 17)
      {
        return 0;
      }

      if (*v7)
      {
        if ((*(**v7 + 32))(*v7) == 18)
        {
          return 0;
        }

        if (*v7)
        {
          (*(**v7 + 8))(*v7);
        }
      }

      result = 0;
      *v7 = 0;
      return result;
    }

    if ((*(*v4 + 32))(v4) != 17)
    {
      if (!*a3)
      {
LABEL_23:
        *a3 = 0;
        goto LABEL_24;
      }

      if ((*(**a3 + 32))(*a3) != 18)
      {
        if (*a3)
        {
          (*(**a3 + 8))(*a3);
        }

        goto LABEL_23;
      }
    }

LABEL_24:
    v6 = *v7;
    goto LABEL_25;
  }

  if (v4 && (*(*v4 + 32))(v4) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_9;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_9:
  result = a3[1];
  if (result)
  {
    if ((*(*result + 32))(result) == 17)
    {
      return 0;
    }

    v9 = a3[1];
    if (v9)
    {
      if ((*(*v9 + 32))(v9) == 18)
      {
        return 0;
      }

      v10 = a3[1];
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    result = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_129070(uint64_t a1, _DWORD *a2, void *a3)
{
  v4 = *a3;
  if ((*a2 - 87) > 2)
  {
    v7 = a3 + 1;
    v6 = a3[1];
    if (v4)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (*a2)
      {
        sub_12B5EC();
      }

      return 0;
    }

    if (!v4)
    {
LABEL_25:
      if (!v6 || (*(*v6 + 32))(v6) == 17)
      {
        return 0;
      }

      if (*v7)
      {
        if ((*(**v7 + 32))(*v7) == 18)
        {
          return 0;
        }

        if (*v7)
        {
          (*(**v7 + 8))(*v7);
        }
      }

      result = 0;
      *v7 = 0;
      return result;
    }

    if ((*(*v4 + 32))(v4) != 17)
    {
      if (!*a3)
      {
LABEL_23:
        *a3 = 0;
        goto LABEL_24;
      }

      if ((*(**a3 + 32))(*a3) != 18)
      {
        if (*a3)
        {
          (*(**a3 + 8))(*a3);
        }

        goto LABEL_23;
      }
    }

LABEL_24:
    v6 = *v7;
    goto LABEL_25;
  }

  if (v4 && (*(*v4 + 32))(v4) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_9;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_9:
  result = a3[1];
  if (result)
  {
    if ((*(*result + 32))(result) == 17)
    {
      return 0;
    }

    v9 = a3[1];
    if (v9)
    {
      if ((*(*v9 + 32))(v9) == 18)
      {
        return 0;
      }

      v10 = a3[1];
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    result = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_129514(uint64_t a1, _DWORD *a2, void *a3)
{
  v4 = *a3;
  if ((*a2 - 87) > 2)
  {
    v7 = a3 + 1;
    v6 = a3[1];
    if (v4)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (*a2)
      {
        sub_12BA40();
      }

      return 0;
    }

    if (!v4)
    {
LABEL_25:
      if (!v6 || (*(*v6 + 32))(v6) == 17)
      {
        return 0;
      }

      if (*v7)
      {
        if ((*(**v7 + 32))(*v7) == 18)
        {
          return 0;
        }

        if (*v7)
        {
          (*(**v7 + 8))(*v7);
        }
      }

      result = 0;
      *v7 = 0;
      return result;
    }

    if ((*(*v4 + 32))(v4) != 17)
    {
      if (!*a3)
      {
LABEL_23:
        *a3 = 0;
        goto LABEL_24;
      }

      if ((*(**a3 + 32))(*a3) != 18)
      {
        if (*a3)
        {
          (*(**a3 + 8))(*a3);
        }

        goto LABEL_23;
      }
    }

LABEL_24:
    v6 = *v7;
    goto LABEL_25;
  }

  if (v4 && (*(*v4 + 32))(v4) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_9;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_9:
  result = a3[1];
  if (result)
  {
    if ((*(*result + 32))(result) == 17)
    {
      return 0;
    }

    v9 = a3[1];
    if (v9)
    {
      if ((*(*v9 + 32))(v9) == 18)
      {
        return 0;
      }

      v10 = a3[1];
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    result = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_1299B8(uint64_t a1, _DWORD *a2, void *a3)
{
  v4 = *a3;
  if ((*a2 - 87) > 2)
  {
    v6 = a3[1];
    if (v4)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      if (*a2)
      {
        operator new();
      }

      return 0;
    }

    if (!v4)
    {
LABEL_26:
      if (!v6 || (*(*v6 + 32))(v6) == 17)
      {
        return 0;
      }

      v8 = a3[1];
      if (v8)
      {
        if ((*(*v8 + 32))(v8) == 18)
        {
          return 0;
        }

        goto LABEL_36;
      }

LABEL_38:
      result = 0;
      a3[1] = 0;
      return result;
    }

    if ((*(*v4 + 32))(v4) != 17)
    {
      if (!*a3)
      {
LABEL_24:
        *a3 = 0;
        goto LABEL_25;
      }

      if ((*(**a3 + 32))(*a3) != 18)
      {
        if (*a3)
        {
          (*(**a3 + 8))(*a3);
        }

        goto LABEL_24;
      }
    }

LABEL_25:
    v6 = a3[1];
    goto LABEL_26;
  }

  if (v4 && (*(*v4 + 32))(v4) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_9;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_9:
  result = a3[1];
  if (!result)
  {
    return result;
  }

  if ((*(*result + 32))(result) != 17)
  {
    v9 = a3[1];
    if (v9)
    {
      if ((*(*v9 + 32))(v9) == 18)
      {
        return 0;
      }

LABEL_36:
      v10 = a3[1];
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      goto LABEL_38;
    }

    goto LABEL_38;
  }

  return 0;
}

uint64_t sub_129E3C(uint64_t a1, _DWORD *a2, void *a3)
{
  v4 = *a3;
  if ((*a2 - 87) > 2)
  {
    v6 = a3[1];
    if (v4)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      if (*a2)
      {
        operator new();
      }

      return 0;
    }

    if (!v4)
    {
LABEL_26:
      if (!v6 || (*(*v6 + 32))(v6) == 17)
      {
        return 0;
      }

      v8 = a3[1];
      if (v8)
      {
        if ((*(*v8 + 32))(v8) == 18)
        {
          return 0;
        }

        goto LABEL_36;
      }

LABEL_38:
      result = 0;
      a3[1] = 0;
      return result;
    }

    if ((*(*v4 + 32))(v4) != 17)
    {
      if (!*a3)
      {
LABEL_24:
        *a3 = 0;
        goto LABEL_25;
      }

      if ((*(**a3 + 32))(*a3) != 18)
      {
        if (*a3)
        {
          (*(**a3 + 8))(*a3);
        }

        goto LABEL_24;
      }
    }

LABEL_25:
    v6 = a3[1];
    goto LABEL_26;
  }

  if (v4 && (*(*v4 + 32))(v4) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_9;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_9:
  result = a3[1];
  if (!result)
  {
    return result;
  }

  if ((*(*result + 32))(result) != 17)
  {
    v9 = a3[1];
    if (v9)
    {
      if ((*(*v9 + 32))(v9) == 18)
      {
        return 0;
      }

LABEL_36:
      v10 = a3[1];
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      goto LABEL_38;
    }

    goto LABEL_38;
  }

  return 0;
}

uint64_t sub_12A2C0(uint64_t a1, void *a2)
{
  if (*a2 && (*(**a2 + 32))(*a2) != 17)
  {
    if (!*a2)
    {
LABEL_7:
      *a2 = 0;
      goto LABEL_8;
    }

    if ((*(**a2 + 32))(*a2) != 18)
    {
      if (*a2)
      {
        (*(**a2 + 8))(*a2);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  result = a2[1];
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result != 17)
    {
      result = a2[1];
      if (result)
      {
        result = (*(*result + 32))(result);
        if (result == 18)
        {
          return result;
        }

        result = a2[1];
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      a2[1] = 0;
    }
  }

  return result;
}

uint64_t sub_12A624(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_12A6EC(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_12A7B4(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_12A89C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = (*(**(a1 + 32) + 16))(*(a1 + 32));
  *v3 = result;
  return result;
}

uint64_t sub_12A92C(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return *(a1 + 16);
  }

  if (*a2 == 1)
  {
    return *(a1 + 32);
  }

  return 0;
}

uint64_t sub_12A964(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_12AA2C(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_12AB14(uint64_t a1)
{
  v2 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v3 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v4 = *(a1 + 8);

  return sub_12ABAC(v4, v2, v3);
}

double sub_12ABAC(int a1, double a2, double a3)
{
  v4 = NAN;
  switch(a1)
  {
    case 2:
      return a2 + a3;
    case 3:
      return a2 - a3;
    case 4:
      return a2 * a3;
    case 5:
      return a2 / a3;
    case 6:
      return fmod(a2, a3);
    case 7:
      v17 = a3;

      return pow(a2, v17);
    case 8:

      return atan2(a2, a3);
    case 9:
      if (a3 >= a2)
      {
        return a2;
      }

      else
      {
        return a3;
      }

    case 10:
      if (a2 >= a3)
      {
        return a2;
      }

      else
      {
        return a3;
      }

    case 14:
      v25 = 1.0;
      if (a2 >= a3)
      {
        return 0.0;
      }

      return v25;
    case 15:
      v11 = 1.0;
      if (a2 > a3)
      {
        return 0.0;
      }

      return v11;
    case 16:
      v18 = 1.0;
      if (a2 != a3)
      {
        return 0.0;
      }

      return v18;
    case 17:
      v12 = a2 - a3;
      if (a2 - a3 < 0.0)
      {
        v12 = -(a2 - a3);
      }

      if (a2 < 0.0)
      {
        a2 = -a2;
      }

      v13 = -a3;
      if (a3 >= 0.0)
      {
        v13 = a3;
      }

      if (a2 < v13)
      {
        a2 = v13;
      }

      if (v12 > fmax(a2, 1.0) * 1.0e-10)
      {
        return 0.0;
      }

      else
      {
        return 1.0;
      }

    case 18:
      v8 = a2 == a3;
      goto LABEL_11;
    case 19:
      v21 = a2 - a3;
      if (a2 - a3 < 0.0)
      {
        v21 = -(a2 - a3);
      }

      if (a2 < 0.0)
      {
        a2 = -a2;
      }

      v22 = -a3;
      if (a3 >= 0.0)
      {
        v22 = a3;
      }

      if (a2 < v22)
      {
        a2 = v22;
      }

      if (v21 <= fmax(a2, 1.0) * 1.0e-10)
      {
        return 0.0;
      }

      else
      {
        return 1.0;
      }

    case 20:
      v24 = 1.0;
      if (a2 < a3)
      {
        return 0.0;
      }

      return v24;
    case 21:
      v29 = 1.0;
      if (a2 <= a3)
      {
        return 0.0;
      }

      return v29;
    case 22:
      v27 = 0.0;
      if (a3 != 0.0 && a2 != 0.0)
      {
        return 1.0;
      }

      return v27;
    case 23:
      v6 = 0.0;
      if (a3 == 0.0 || a2 == 0.0)
      {
        return 1.0;
      }

      return v6;
    case 24:
      v15 = 0.0;
      if (a3 != 0.0 || a2 != 0.0)
      {
        return 1.0;
      }

      return v15;
    case 25:
      v30 = 0.0;
      if (a3 == 0.0 && a2 == 0.0)
      {
        return 1.0;
      }

      return v30;
    case 26:
      v8 = (a2 == 0.0) == (a3 == 0.0);
LABEL_11:
      v9 = 1.0;
      if (v8)
      {
        return 0.0;
      }

      return v9;
    case 27:
      v4 = 0.0;
      if ((a2 != 0.0) == (a3 != 0.0))
      {
        return 1.0;
      }

      return v4;
    case 32:
      return 1.0 / ldexp(1.0, a3) * a2;
    case 33:
      v19 = a3;
      a3 = a2;
      a2 = ldexp(1.0, v19);
      return a2 * a3;
    case 51:
      v10 = log(a2);
      return v10 / log(a3);
    case 55:
      v32 = vcvtmd_s64_f64(a3);
      if (v32 >= 16)
      {
        v32 = 16;
      }

      v33 = dbl_226B2A0[v32 & ~(v32 >> 31)];
      v34 = ceil(v33 * a2 + -0.5);
      v35 = floor(v33 * a2 + 0.5);
      if (a2 >= 0.0)
      {
        v36 = v35;
      }

      else
      {
        v36 = v34;
      }

      return v36 / v33;
    case 56:
      if (a3 < 0.0)
      {
        return NAN;
      }

      if (a2 < 0.0 && (a3 & 1) == 0)
      {
        return NAN;
      }

      v17 = 1.0 / a3;

      return pow(a2, v17);
    case 74:
      return sqrt(a2 * a2 + a3 * a3);
    default:
      return v4;
  }
}

uint64_t sub_12B3AC(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_12B474(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_12B55C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = (*(**(a1 + 32) + 16))(*(a1 + 32));
  *v3 = result;
  return result;
}

uint64_t sub_12B800(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_12B8C8(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_12B9B0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = (*(**(a1 + 32) + 16))(*(a1 + 32));
  *v3 = result;
  return result;
}

uint64_t sub_12BC54(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_12BD1C(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_12BE04(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return NAN;
  }

  v3 = (*(*v2 + 40))(v2);
  result = (*(**(a1 + 32) + 16))(*(a1 + 32));
  *v3 = result;
  return result;
}

void sub_12BE94(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_26346C8;
  *(a1 + 48) = off_2634728;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_12C4D4(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_12C508(uint64_t a1)
{
  *a1 = off_26346C8;
  *(a1 + 48) = off_2634728;
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_12C668(uint64_t a1)
{
  *a1 = off_26346C8;
  *(a1 + 48) = off_2634728;
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  operator delete();
}

double sub_12C7E8(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = **(a1 + 56);
  if ((*(a1 + 73) & 1) == 0)
  {
    v4 = *(*(*(**(a1 + 56) + 64))() + 16);
    v5 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
    v6 = (*(*a1 + 56))(a1);
    if ((v6 & 0xF) != 0)
    {
      v7 = -16;
    }

    else
    {
      v7 = 0;
    }

    v8 = 8 * (v7 + v6);
    if (v8 >= 1)
    {
      v9 = &v4[v8 / 8];
      do
      {
        *v4 = *v5;
        v4[1] = v5[1];
        v4[2] = v5[2];
        v4[3] = v5[3];
        v4[4] = v5[4];
        v4[5] = v5[5];
        v4[6] = v5[6];
        v4[7] = v5[7];
        v4[8] = v5[8];
        v4[9] = v5[9];
        v4[10] = v5[10];
        v4[11] = v5[11];
        v4[12] = v5[12];
        v4[13] = v5[13];
        v4[14] = v5[14];
        v4[15] = v5[15];
        v4 += 16;
        v5 += 16;
      }

      while (v4 < v9);
    }

    switch(v6 & 0xF)
    {
      case 1:
        goto LABEL_24;
      case 2:
        goto LABEL_23;
      case 3:
        goto LABEL_22;
      case 4:
        goto LABEL_21;
      case 5:
        goto LABEL_20;
      case 6:
        goto LABEL_19;
      case 7:
        goto LABEL_18;
      case 8:
        goto LABEL_17;
      case 9:
        goto LABEL_16;
      case 0xA:
        goto LABEL_15;
      case 0xB:
        goto LABEL_14;
      case 0xC:
        goto LABEL_13;
      case 0xD:
        goto LABEL_12;
      case 0xE:
        goto LABEL_11;
      case 0xF:
        v10 = *v5++;
        *v4++ = v10;
LABEL_11:
        v11 = *v5++;
        *v4++ = v11;
LABEL_12:
        v12 = *v5++;
        *v4++ = v12;
LABEL_13:
        v13 = *v5++;
        *v4++ = v13;
LABEL_14:
        v14 = *v5++;
        *v4++ = v14;
LABEL_15:
        v15 = *v5++;
        *v4++ = v15;
LABEL_16:
        v16 = *v5++;
        *v4++ = v16;
LABEL_17:
        v17 = *v5++;
        *v4++ = v17;
LABEL_18:
        v18 = *v5++;
        *v4++ = v18;
LABEL_19:
        v19 = *v5++;
        *v4++ = v19;
LABEL_20:
        v20 = *v5++;
        *v4++ = v20;
LABEL_21:
        v21 = *v5++;
        *v4++ = v21;
LABEL_22:
        v22 = *v5++;
        *v4++ = v22;
LABEL_23:
        v23 = *v5++;
        *v4++ = v23;
LABEL_24:
        *v4 = *v5;
        break;
      default:
        break;
    }

    v3 = **(a1 + 56);
  }

  v24 = *(v3 + 16);

  v24();
  return result;
}

uint64_t sub_12CB30(void *a1)
{
  *(a1 - 6) = off_26346C8;
  *a1 = off_2634728;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[4] = 0;
  }

  *(a1 - 6) = off_26345A0;
  v4 = *(a1 - 4);
  if (v4 && *(a1 - 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 - 4) = 0;
  }

  result = *(a1 - 2);
  if (result && *(a1 - 8) == 1)
  {
    result = (*(*result + 8))(result);
    *(a1 - 2) = 0;
  }

  return result;
}

void sub_12CCFC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_26345A0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 16) = a3;
    *(a1 + 24) = v7;
  }

  if (a4)
  {
    v8 = (*(*a4 + 32))(a4) != 17 && (*(*a4 + 32))(a4) != 18;
    *(a1 + 32) = a4;
    *(a1 + 40) = v8;
  }

  *a1 = off_26347B0;
  *(a1 + 48) = off_2634810;
  *(a1 + 56) = 0;
  operator new();
}

void sub_12D024(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 64));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_12D040(uint64_t a1)
{
  *a1 = off_26347B0;
  *(a1 + 48) = off_2634810;
  v2 = *(a1 + 64);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_12D1A0(uint64_t a1)
{
  *a1 = off_26347B0;
  *(a1 + 48) = off_2634810;
  v2 = *(a1 + 64);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 64) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  operator delete();
}

double sub_12D320(void **a1)
{
  if (!a1[7])
  {
    return NAN;
  }

  v2 = (*(*a1[4] + 16))(a1[4]);
  v3 = *(*((*a1)[9])(a1) + 16);
  v4 = ((*a1)[7])(a1);
  if ((v4 & 0xF) != 0)
  {
    v5 = -16;
  }

  else
  {
    v5 = 0;
  }

  v6 = 8 * (v5 + v4);
  if (v6 >= 1)
  {
    v7 = &v3[v6 / 8];
    do
    {
      *v3 = v2;
      v3[1] = v2;
      v3[2] = v2;
      v3[3] = v2;
      v3[4] = v2;
      v3[5] = v2;
      v3[6] = v2;
      v3[7] = v2;
      v3[8] = v2;
      v3[9] = v2;
      v3[10] = v2;
      v3[11] = v2;
      v3[12] = v2;
      v3[13] = v2;
      v3[14] = v2;
      v3[15] = v2;
      v3 += 16;
    }

    while (v3 < v7);
  }

  switch(v4 & 0xF)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_21;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_18;
    case 7:
      goto LABEL_17;
    case 8:
      goto LABEL_16;
    case 9:
      goto LABEL_15;
    case 0xA:
      goto LABEL_14;
    case 0xB:
      goto LABEL_13;
    case 0xC:
      goto LABEL_12;
    case 0xD:
      goto LABEL_11;
    case 0xE:
      goto LABEL_10;
    case 0xF:
      *v3++ = v2;
LABEL_10:
      *v3++ = v2;
LABEL_11:
      *v3++ = v2;
LABEL_12:
      *v3++ = v2;
LABEL_13:
      *v3++ = v2;
LABEL_14:
      *v3++ = v2;
LABEL_15:
      *v3++ = v2;
LABEL_16:
      *v3++ = v2;
LABEL_17:
      *v3++ = v2;
LABEL_18:
      *v3++ = v2;
LABEL_19:
      *v3++ = v2;
LABEL_20:
      *v3++ = v2;
LABEL_21:
      *v3++ = v2;
LABEL_22:
      *v3++ = v2;
LABEL_23:
      *v3 = v2;
      break;
    default:
      break;
  }

  v8 = *(*a1[7] + 16);

  v8();
  return result;
}

uint64_t sub_12D568(void *a1)
{
  *(a1 - 6) = off_26347B0;
  *a1 = off_2634810;
  v2 = a1[2];
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    a1[2] = 0;
  }

  *(a1 - 6) = off_26345A0;
  v4 = *(a1 - 4);
  if (v4 && *(a1 - 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 - 4) = 0;
  }

  result = *(a1 - 2);
  if (result && *(a1 - 8) == 1)
  {
    result = (*(*result + 8))(result);
    *(a1 - 2) = 0;
  }

  return result;
}

double sub_12D7C0(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v3 = (*(**(a1 + 16) + 40))(*(a1 + 16));
  v4 = *v2;
  *v2 = *v3;
  *v3 = v4;
  return *(*(**(a1 + 16) + 40))(*(a1 + 16));
}

uint64_t sub_12D878(uint64_t a1, void *lpsrc, const void *a3)
{
  *a1 = off_26345A0;
  *(a1 + 8) = 92;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (lpsrc)
  {
    v6 = (*(*lpsrc + 32))(lpsrc) != 17 && (*(*lpsrc + 32))(lpsrc) != 18;
    *(a1 + 16) = lpsrc;
    *(a1 + 24) = v6;
  }

  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 32) = a3;
    *(a1 + 40) = v7;
  }

  *a1 = off_26348E8;
  if (lpsrc)
  {
    if (a3)
    {
LABEL_13:
      return a1;
    }
  }

  else
  {
    *(a1 + 48) = 0;
    if (a3)
    {
      goto LABEL_13;
    }
  }

  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_12DAA4(uint64_t result)
{
  *result = off_26345A0;
  v1 = *(result + 16);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 16));
    result = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (*(result + 40) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 32));
      result = v4;
      *(v4 + 32) = 0;
    }
  }

  return result;
}

void sub_12DB6C(uint64_t a1)
{
  *a1 = off_26345A0;
  v1 = *(a1 + 16);
  if (v1 && *(a1 + 24) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 16));
    a1 = v2;
    *(v2 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3 && *(a1 + 40) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 32));
    *(v4 + 32) = 0;
  }

  operator delete();
}

double sub_12DC54(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v3 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  v4 = *v2;
  *v2 = *v3;
  *v3 = v4;
  return *(*(**(a1 + 56) + 16))(*(a1 + 56));
}

void sub_12DD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_26345A0;
  *(a1 + 8) = 92;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a2)
  {
    v6 = (*(*a2 + 32))(a2) != 17 && (*(*a2 + 32))(a2) != 18;
    *(a1 + 16) = a2;
    *(a1 + 24) = v6;
  }

  if (a3)
  {
    v7 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
    *(a1 + 32) = a3;
    *(a1 + 40) = v7;
  }

  *a1 = off_2634938;
  *(a1 + 48) = off_2634998;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  operator new();
}

void sub_12E1F4(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 88));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_12E234(uint64_t a1)
{
  *a1 = off_2634938;
  *(a1 + 48) = off_2634998;
  v2 = *(a1 + 88);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 88) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_12E394(uint64_t a1)
{
  *a1 = off_2634938;
  *(a1 + 48) = off_2634998;
  v2 = *(a1 + 88);
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *(a1 + 88) = 0;
  }

  *a1 = off_26345A0;
  v4 = *(a1 + 16);
  if (v4 && *(a1 + 24) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 32) = 0;
  }

  operator delete();
}

uint64_t sub_12E514(uint64_t result)
{
  if (*(result + 80) != 1)
  {
    return result;
  }

  v2 = result;
  (*(**(result + 16) + 16))(*(result + 16));
  (*(**(v2 + 32) + 16))(*(v2 + 32));
  v3 = *(*(*(**(v2 + 56) + 64))(*(v2 + 56)) + 16);
  v4 = (*(**(v2 + 64) + 64))(*(v2 + 64));
  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = *(*v4 + 16);
    if (v5 <= 3 || (v3 < v6 + 8 * v5 ? (v7 = v6 >= v3 + 8 * v5) : (v7 = 1), !v7))
    {
      v8 = 0;
LABEL_15:
      v15 = v5 - v8;
      v16 = 8 * v8;
      v17 = (v6 + v16);
      v18 = (v3 + v16);
      do
      {
        v19 = *v18;
        *v18++ = *v17;
        *v17++ = v19;
        --v15;
      }

      while (v15);
      goto LABEL_17;
    }

    v8 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (v3 + 16);
    v10 = (v6 + 16);
    v11 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *(v9 - 1);
      v13 = *v9;
      v14 = *v10;
      *(v9 - 1) = *(v10 - 1);
      *v9 = v14;
      *(v10 - 1) = v12;
      *v10 = v13;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v5 != v8)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  v20 = *(**(v2 + 64) + 16);

  return v20();
}