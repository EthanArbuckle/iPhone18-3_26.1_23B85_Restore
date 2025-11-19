void sub_148E48(uint64_t a1)
{
  sub_148EB0(a1 - 48);

  operator delete();
}

uint64_t sub_148EB0(uint64_t a1)
{
  *a1 = off_26361E8;
  *(a1 + 48) = off_2636248;
  if (*(a1 + 72))
  {
    operator delete();
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
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

    *(a1 + 96) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

double sub_149058(double *a1, double *a2)
{
  v2 = *a2 == 0.0 && *a1 == 0.0;
  result = 1.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

void sub_149078(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_26362D0;
  *(a1 + 48) = off_2636330;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_14997C(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_149A1C(uint64_t a1)
{
  sub_14A0B8(a1);

  operator delete();
}

double sub_149A54(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v2 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v3 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
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
    v8 = &v4[v7 / 8];
    do
    {
      if (*v3 == 0.0 && *v2 == 0.0)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      *v4 = v10;
      if (v3[1] == 0.0 && v2[1] == 0.0)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v4[1] = v12;
      if (v3[2] == 0.0 && v2[2] == 0.0)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      v4[2] = v14;
      if (v3[3] == 0.0 && v2[3] == 0.0)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      v4[3] = v16;
      if (v3[4] == 0.0 && v2[4] == 0.0)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v4[4] = v18;
      if (v3[5] == 0.0 && v2[5] == 0.0)
      {
        v20 = 1.0;
      }

      else
      {
        v20 = 0.0;
      }

      v4[5] = v20;
      if (v3[6] == 0.0 && v2[6] == 0.0)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 0.0;
      }

      v4[6] = v22;
      if (v3[7] == 0.0 && v2[7] == 0.0)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = 0.0;
      }

      v4[7] = v24;
      if (v3[8] == 0.0 && v2[8] == 0.0)
      {
        v26 = 1.0;
      }

      else
      {
        v26 = 0.0;
      }

      v4[8] = v26;
      if (v3[9] == 0.0 && v2[9] == 0.0)
      {
        v28 = 1.0;
      }

      else
      {
        v28 = 0.0;
      }

      v4[9] = v28;
      if (v3[10] == 0.0 && v2[10] == 0.0)
      {
        v30 = 1.0;
      }

      else
      {
        v30 = 0.0;
      }

      v4[10] = v30;
      if (v3[11] == 0.0 && v2[11] == 0.0)
      {
        v32 = 1.0;
      }

      else
      {
        v32 = 0.0;
      }

      v4[11] = v32;
      if (v3[12] == 0.0 && v2[12] == 0.0)
      {
        v34 = 1.0;
      }

      else
      {
        v34 = 0.0;
      }

      v4[12] = v34;
      if (v3[13] == 0.0 && v2[13] == 0.0)
      {
        v36 = 1.0;
      }

      else
      {
        v36 = 0.0;
      }

      v4[13] = v36;
      if (v3[14] == 0.0 && v2[14] == 0.0)
      {
        v38 = 1.0;
      }

      else
      {
        v38 = 0.0;
      }

      v4[14] = v38;
      if (v3[15] == 0.0 && v2[15] == 0.0)
      {
        v40 = 1.0;
      }

      else
      {
        v40 = 0.0;
      }

      v4[15] = v40;
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
  }

  v41 = 0;
  v42 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_189;
    case 2:
      goto LABEL_183;
    case 3:
      goto LABEL_177;
    case 4:
      goto LABEL_171;
    case 5:
      goto LABEL_165;
    case 6:
      goto LABEL_159;
    case 7:
      goto LABEL_153;
    case 8:
      goto LABEL_147;
    case 9:
      goto LABEL_141;
    case 0xA:
      goto LABEL_135;
    case 0xB:
      goto LABEL_129;
    case 0xC:
      goto LABEL_123;
    case 0xD:
      goto LABEL_117;
    case 0xE:
      goto LABEL_111;
    case 0xF:
      v43 = *v3 == 0.0 && *v2 == 0.0;
      v44 = 1.0;
      if (!v43)
      {
        v44 = 0.0;
      }

      *v4 = v44;
      v42 = 1;
LABEL_111:
      v45 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v46 = 1.0;
      if (!v45)
      {
        v46 = 0.0;
      }

      v4[v42++] = v46;
LABEL_117:
      v47 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v48 = 1.0;
      if (!v47)
      {
        v48 = 0.0;
      }

      v4[v42++] = v48;
LABEL_123:
      v49 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v50 = 1.0;
      if (!v49)
      {
        v50 = 0.0;
      }

      v4[v42++] = v50;
LABEL_129:
      v51 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v52 = 1.0;
      if (!v51)
      {
        v52 = 0.0;
      }

      v4[v42++] = v52;
LABEL_135:
      v53 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v54 = 1.0;
      if (!v53)
      {
        v54 = 0.0;
      }

      v4[v42++] = v54;
LABEL_141:
      v55 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v56 = 1.0;
      if (!v55)
      {
        v56 = 0.0;
      }

      v4[v42++] = v56;
LABEL_147:
      v57 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v58 = 1.0;
      if (!v57)
      {
        v58 = 0.0;
      }

      v4[v42++] = v58;
LABEL_153:
      v59 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v60 = 1.0;
      if (!v59)
      {
        v60 = 0.0;
      }

      v4[v42++] = v60;
LABEL_159:
      v61 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v62 = 1.0;
      if (!v61)
      {
        v62 = 0.0;
      }

      v4[v42++] = v62;
LABEL_165:
      v63 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v64 = 1.0;
      if (!v63)
      {
        v64 = 0.0;
      }

      v4[v42++] = v64;
LABEL_171:
      v65 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v66 = 1.0;
      if (!v65)
      {
        v66 = 0.0;
      }

      v4[v42++] = v66;
LABEL_177:
      v67 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v68 = 1.0;
      if (!v67)
      {
        v68 = 0.0;
      }

      v4[v42++] = v68;
LABEL_183:
      v69 = v3[v42] == 0.0 && v2[v42] == 0.0;
      v70 = 1.0;
      if (!v69)
      {
        v70 = 0.0;
      }

      v4[v42] = v70;
      v41 = v42 + 1;
LABEL_189:
      v71 = v3[v41] == 0.0 && v2[v41] == 0.0;
      v72 = 1.0;
      if (!v71)
      {
        v72 = 0.0;
      }

      v4[v41] = v72;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_14A050(uint64_t a1)
{
  sub_14A0B8(a1 - 48);

  operator delete();
}

uint64_t sub_14A0B8(uint64_t a1)
{
  *a1 = off_26362D0;
  *(a1 + 48) = off_2636330;
  if (*(a1 + 72))
  {
    operator delete();
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
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

    *(a1 + 96) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

double sub_14A260(double *a1, double *a2)
{
  v2 = *a2 == 0.0 && *a1 == 0.0;
  result = 1.0;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

void sub_14A280(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_26363B8;
  *(a1 + 48) = off_2636418;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_14AB84(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_14AC24(uint64_t a1)
{
  sub_14B4B0(a1);

  operator delete();
}

double sub_14AC5C(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v2 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v3 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
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
    v8 = &v4[v7 / 8];
    do
    {
      if ((*v2 == 0.0) != (*v3 == 0.0))
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.0;
      }

      *v4 = v9;
      if ((v2[1] == 0.0) != (v3[1] == 0.0))
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      v4[1] = v10;
      if ((v2[2] == 0.0) != (v3[2] == 0.0))
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      v4[2] = v11;
      if ((v2[3] == 0.0) != (v3[3] == 0.0))
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v4[3] = v12;
      if ((v2[4] == 0.0) != (v3[4] == 0.0))
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }

      v4[4] = v13;
      if ((v2[5] == 0.0) != (v3[5] == 0.0))
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      v4[5] = v14;
      if ((v2[6] == 0.0) != (v3[6] == 0.0))
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      v4[6] = v15;
      if ((v2[7] == 0.0) != (v3[7] == 0.0))
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      v4[7] = v16;
      if ((v2[8] == 0.0) != (v3[8] == 0.0))
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      v4[8] = v17;
      if ((v2[9] == 0.0) != (v3[9] == 0.0))
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v4[9] = v18;
      if ((v2[10] == 0.0) != (v3[10] == 0.0))
      {
        v19 = 1.0;
      }

      else
      {
        v19 = 0.0;
      }

      v4[10] = v19;
      if ((v2[11] == 0.0) != (v3[11] == 0.0))
      {
        v20 = 1.0;
      }

      else
      {
        v20 = 0.0;
      }

      v4[11] = v20;
      if ((v2[12] == 0.0) != (v3[12] == 0.0))
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 0.0;
      }

      v4[12] = v21;
      if ((v2[13] == 0.0) != (v3[13] == 0.0))
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 0.0;
      }

      v4[13] = v22;
      if ((v2[14] == 0.0) != (v3[14] == 0.0))
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      v4[14] = v23;
      if ((v2[15] == 0.0) != (v3[15] == 0.0))
      {
        v24 = 1.0;
      }

      else
      {
        v24 = 0.0;
      }

      v4[15] = v24;
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if ((*v2 == 0.0) != (*v3 == 0.0))
      {
        v27 = 1.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if ((v2[v26] == 0.0) != (v3[v26] == 0.0))
      {
        v28 = 1.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if ((v2[v26] == 0.0) != (v3[v26] == 0.0))
      {
        v29 = 1.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if ((v2[v26] == 0.0) != (v3[v26] == 0.0))
      {
        v30 = 1.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if ((v2[v26] == 0.0) != (v3[v26] == 0.0))
      {
        v31 = 1.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if ((v2[v26] == 0.0) != (v3[v26] == 0.0))
      {
        v32 = 1.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if ((v2[v26] == 0.0) != (v3[v26] == 0.0))
      {
        v33 = 1.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if ((v2[v26] == 0.0) != (v3[v26] == 0.0))
      {
        v34 = 1.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if ((v2[v26] == 0.0) != (v3[v26] == 0.0))
      {
        v35 = 1.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if ((v2[v26] == 0.0) != (v3[v26] == 0.0))
      {
        v36 = 1.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if ((v2[v26] == 0.0) != (v3[v26] == 0.0))
      {
        v37 = 1.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if ((v2[v26] == 0.0) != (v3[v26] == 0.0))
      {
        v38 = 1.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if ((v2[v26] == 0.0) != (v3[v26] == 0.0))
      {
        v39 = 1.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if ((v2[v26] == 0.0) != (v3[v26] == 0.0))
      {
        v40 = 1.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if ((v2[v25] == 0.0) != (v3[v25] == 0.0))
      {
        v41 = 1.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_14B448(uint64_t a1)
{
  sub_14B4B0(a1 - 48);

  operator delete();
}

uint64_t sub_14B4B0(uint64_t a1)
{
  *a1 = off_26363B8;
  *(a1 + 48) = off_2636418;
  if (*(a1 + 72))
  {
    operator delete();
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
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

    *(a1 + 96) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

double sub_14B658(double *a1, double *a2)
{
  result = 0.0;
  if ((*a1 == 0.0) != (*a2 == 0.0))
  {
    return 1.0;
  }

  return result;
}

void sub_14B688(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_26364A0;
  *(a1 + 48) = off_2636500;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_14BF8C(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_14C02C(uint64_t a1)
{
  sub_14C8B8(a1);

  operator delete();
}

double sub_14C064(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v2 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
  v3 = *(*(*(**(a1 + 64) + 64))(*(a1 + 64)) + 16);
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
    v8 = &v4[v7 / 8];
    do
    {
      if ((*v2 != 0.0) != (*v3 != 0.0))
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v4 = v9;
      if ((v2[1] != 0.0) != (v3[1] != 0.0))
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v4[1] = v10;
      if ((v2[2] != 0.0) != (v3[2] != 0.0))
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v4[2] = v11;
      if ((v2[3] != 0.0) != (v3[3] != 0.0))
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[3] = v12;
      if ((v2[4] != 0.0) != (v3[4] != 0.0))
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v4[4] = v13;
      if ((v2[5] != 0.0) != (v3[5] != 0.0))
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[5] = v14;
      if ((v2[6] != 0.0) != (v3[6] != 0.0))
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v4[6] = v15;
      if ((v2[7] != 0.0) != (v3[7] != 0.0))
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[7] = v16;
      if ((v2[8] != 0.0) != (v3[8] != 0.0))
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v4[8] = v17;
      if ((v2[9] != 0.0) != (v3[9] != 0.0))
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[9] = v18;
      if ((v2[10] != 0.0) != (v3[10] != 0.0))
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v4[10] = v19;
      if ((v2[11] != 0.0) != (v3[11] != 0.0))
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[11] = v20;
      if ((v2[12] != 0.0) != (v3[12] != 0.0))
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v4[12] = v21;
      if ((v2[13] != 0.0) != (v3[13] != 0.0))
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[13] = v22;
      if ((v2[14] != 0.0) != (v3[14] != 0.0))
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v4[14] = v23;
      if ((v2[15] != 0.0) != (v3[15] != 0.0))
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[15] = v24;
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 1.0;
      if ((*v2 != 0.0) != (*v3 != 0.0))
      {
        v27 = 0.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 1.0;
      if ((v2[v26] != 0.0) != (v3[v26] != 0.0))
      {
        v28 = 0.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 1.0;
      if ((v2[v26] != 0.0) != (v3[v26] != 0.0))
      {
        v29 = 0.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 1.0;
      if ((v2[v26] != 0.0) != (v3[v26] != 0.0))
      {
        v30 = 0.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 1.0;
      if ((v2[v26] != 0.0) != (v3[v26] != 0.0))
      {
        v31 = 0.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 1.0;
      if ((v2[v26] != 0.0) != (v3[v26] != 0.0))
      {
        v32 = 0.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 1.0;
      if ((v2[v26] != 0.0) != (v3[v26] != 0.0))
      {
        v33 = 0.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 1.0;
      if ((v2[v26] != 0.0) != (v3[v26] != 0.0))
      {
        v34 = 0.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 1.0;
      if ((v2[v26] != 0.0) != (v3[v26] != 0.0))
      {
        v35 = 0.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 1.0;
      if ((v2[v26] != 0.0) != (v3[v26] != 0.0))
      {
        v36 = 0.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 1.0;
      if ((v2[v26] != 0.0) != (v3[v26] != 0.0))
      {
        v37 = 0.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 1.0;
      if ((v2[v26] != 0.0) != (v3[v26] != 0.0))
      {
        v38 = 0.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 1.0;
      if ((v2[v26] != 0.0) != (v3[v26] != 0.0))
      {
        v39 = 0.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 1.0;
      if ((v2[v26] != 0.0) != (v3[v26] != 0.0))
      {
        v40 = 0.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 1.0;
      if ((v2[v25] != 0.0) != (v3[v25] != 0.0))
      {
        v41 = 0.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_14C850(uint64_t a1)
{
  sub_14C8B8(a1 - 48);

  operator delete();
}

uint64_t sub_14C8B8(uint64_t a1)
{
  *a1 = off_26364A0;
  *(a1 + 48) = off_2636500;
  if (*(a1 + 72))
  {
    operator delete();
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
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

    *(a1 + 96) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

double sub_14CA60(double *a1, double *a2)
{
  result = 1.0;
  if ((*a1 != 0.0) != (*a2 != 0.0))
  {
    return 0.0;
  }

  return result;
}

void sub_14CA90(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2636588;
  *(a1 + 48) = off_26365E8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_14D18C(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_14D250(uint64_t a1)
{
  sub_14D830(a1);

  operator delete();
}

double sub_14D288(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      if (*v3 >= v2)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v4 = v9;
      if (v3[1] >= v2)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v4[1] = v10;
      if (v3[2] >= v2)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v4[2] = v11;
      if (v3[3] >= v2)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[3] = v12;
      if (v3[4] >= v2)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v4[4] = v13;
      if (v3[5] >= v2)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[5] = v14;
      if (v3[6] >= v2)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v4[6] = v15;
      if (v3[7] >= v2)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[7] = v16;
      if (v3[8] >= v2)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v4[8] = v17;
      if (v3[9] >= v2)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[9] = v18;
      if (v3[10] >= v2)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v4[10] = v19;
      if (v3[11] >= v2)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[11] = v20;
      if (v3[12] >= v2)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v4[12] = v21;
      if (v3[13] >= v2)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[13] = v22;
      if (v3[14] >= v2)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v4[14] = v23;
      if (v3[15] >= v2)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[15] = v24;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (*v3 < v2)
      {
        v27 = 1.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v3[v26] < v2)
      {
        v28 = 1.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v3[v26] < v2)
      {
        v29 = 1.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v3[v26] < v2)
      {
        v30 = 1.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v3[v26] < v2)
      {
        v31 = 1.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v3[v26] < v2)
      {
        v32 = 1.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v3[v26] < v2)
      {
        v33 = 1.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v3[v26] < v2)
      {
        v34 = 1.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v3[v26] < v2)
      {
        v35 = 1.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v3[v26] < v2)
      {
        v36 = 1.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v3[v26] < v2)
      {
        v37 = 1.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v3[v26] < v2)
      {
        v38 = 1.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v3[v26] < v2)
      {
        v39 = 1.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v3[v26] < v2)
      {
        v40 = 1.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v3[v25] < v2)
      {
        v41 = 1.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_14D794(uint64_t a1)
{
  sub_14D830(a1 - 48);

  operator delete();
}

uint64_t sub_14D830(uint64_t a1)
{
  *a1 = off_2636588;
  *(a1 + 48) = off_26365E8;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_14D9D8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2636670;
  *(a1 + 48) = off_26366D0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_14E0D4(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_14E198(uint64_t a1)
{
  sub_14E778(a1);

  operator delete();
}

double sub_14E1D0(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      if (*v3 > v2)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v4 = v9;
      if (v3[1] > v2)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v4[1] = v10;
      if (v3[2] > v2)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v4[2] = v11;
      if (v3[3] > v2)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[3] = v12;
      if (v3[4] > v2)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v4[4] = v13;
      if (v3[5] > v2)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[5] = v14;
      if (v3[6] > v2)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v4[6] = v15;
      if (v3[7] > v2)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[7] = v16;
      if (v3[8] > v2)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v4[8] = v17;
      if (v3[9] > v2)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[9] = v18;
      if (v3[10] > v2)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v4[10] = v19;
      if (v3[11] > v2)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[11] = v20;
      if (v3[12] > v2)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v4[12] = v21;
      if (v3[13] > v2)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[13] = v22;
      if (v3[14] > v2)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v4[14] = v23;
      if (v3[15] > v2)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[15] = v24;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (*v3 <= v2)
      {
        v27 = 1.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v3[v26] <= v2)
      {
        v28 = 1.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v3[v26] <= v2)
      {
        v29 = 1.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v3[v26] <= v2)
      {
        v30 = 1.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v3[v26] <= v2)
      {
        v31 = 1.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v3[v26] <= v2)
      {
        v32 = 1.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v3[v26] <= v2)
      {
        v33 = 1.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v3[v26] <= v2)
      {
        v34 = 1.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v3[v26] <= v2)
      {
        v35 = 1.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v3[v26] <= v2)
      {
        v36 = 1.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v3[v26] <= v2)
      {
        v37 = 1.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v3[v26] <= v2)
      {
        v38 = 1.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v3[v26] <= v2)
      {
        v39 = 1.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v3[v26] <= v2)
      {
        v40 = 1.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v3[v25] <= v2)
      {
        v41 = 1.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_14E6DC(uint64_t a1)
{
  sub_14E778(a1 - 48);

  operator delete();
}

uint64_t sub_14E778(uint64_t a1)
{
  *a1 = off_2636670;
  *(a1 + 48) = off_26366D0;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_14E920(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2636758;
  *(a1 + 48) = off_26367B8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_14F01C(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_14F0E0(uint64_t a1)
{
  sub_14F6C0(a1);

  operator delete();
}

double sub_14F118(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      if (*v3 <= v2)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v4 = v9;
      if (v3[1] <= v2)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v4[1] = v10;
      if (v3[2] <= v2)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v4[2] = v11;
      if (v3[3] <= v2)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[3] = v12;
      if (v3[4] <= v2)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v4[4] = v13;
      if (v3[5] <= v2)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[5] = v14;
      if (v3[6] <= v2)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v4[6] = v15;
      if (v3[7] <= v2)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[7] = v16;
      if (v3[8] <= v2)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v4[8] = v17;
      if (v3[9] <= v2)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[9] = v18;
      if (v3[10] <= v2)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v4[10] = v19;
      if (v3[11] <= v2)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[11] = v20;
      if (v3[12] <= v2)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v4[12] = v21;
      if (v3[13] <= v2)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[13] = v22;
      if (v3[14] <= v2)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v4[14] = v23;
      if (v3[15] <= v2)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[15] = v24;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (*v3 > v2)
      {
        v27 = 1.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v3[v26] > v2)
      {
        v28 = 1.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v3[v26] > v2)
      {
        v29 = 1.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v3[v26] > v2)
      {
        v30 = 1.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v3[v26] > v2)
      {
        v31 = 1.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v3[v26] > v2)
      {
        v32 = 1.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v3[v26] > v2)
      {
        v33 = 1.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v3[v26] > v2)
      {
        v34 = 1.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v3[v26] > v2)
      {
        v35 = 1.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v3[v26] > v2)
      {
        v36 = 1.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v3[v26] > v2)
      {
        v37 = 1.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v3[v26] > v2)
      {
        v38 = 1.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v3[v26] > v2)
      {
        v39 = 1.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v3[v26] > v2)
      {
        v40 = 1.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v3[v25] > v2)
      {
        v41 = 1.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_14F624(uint64_t a1)
{
  sub_14F6C0(a1 - 48);

  operator delete();
}

uint64_t sub_14F6C0(uint64_t a1)
{
  *a1 = off_2636758;
  *(a1 + 48) = off_26367B8;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_14F868(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2636840;
  *(a1 + 48) = off_26368A0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_14FF64(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_150028(uint64_t a1)
{
  sub_150608(a1);

  operator delete();
}

double sub_150060(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      if (*v3 < v2)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v4 = v9;
      if (v3[1] < v2)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v4[1] = v10;
      if (v3[2] < v2)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v4[2] = v11;
      if (v3[3] < v2)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[3] = v12;
      if (v3[4] < v2)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v4[4] = v13;
      if (v3[5] < v2)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[5] = v14;
      if (v3[6] < v2)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v4[6] = v15;
      if (v3[7] < v2)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[7] = v16;
      if (v3[8] < v2)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v4[8] = v17;
      if (v3[9] < v2)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[9] = v18;
      if (v3[10] < v2)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v4[10] = v19;
      if (v3[11] < v2)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[11] = v20;
      if (v3[12] < v2)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v4[12] = v21;
      if (v3[13] < v2)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[13] = v22;
      if (v3[14] < v2)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v4[14] = v23;
      if (v3[15] < v2)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[15] = v24;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (*v3 >= v2)
      {
        v27 = 1.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v3[v26] >= v2)
      {
        v28 = 1.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v3[v26] >= v2)
      {
        v29 = 1.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v3[v26] >= v2)
      {
        v30 = 1.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v3[v26] >= v2)
      {
        v31 = 1.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v3[v26] >= v2)
      {
        v32 = 1.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v3[v26] >= v2)
      {
        v33 = 1.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v3[v26] >= v2)
      {
        v34 = 1.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v3[v26] >= v2)
      {
        v35 = 1.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v3[v26] >= v2)
      {
        v36 = 1.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v3[v26] >= v2)
      {
        v37 = 1.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v3[v26] >= v2)
      {
        v38 = 1.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v3[v26] >= v2)
      {
        v39 = 1.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v3[v26] >= v2)
      {
        v40 = 1.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v3[v25] >= v2)
      {
        v41 = 1.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_15056C(uint64_t a1)
{
  sub_150608(a1 - 48);

  operator delete();
}

uint64_t sub_150608(uint64_t a1)
{
  *a1 = off_2636840;
  *(a1 + 48) = off_26368A0;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_1507B0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2636928;
  *(a1 + 48) = off_2636988;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_150EAC(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_150F70(uint64_t a1)
{
  sub_151550(a1);

  operator delete();
}

double sub_150FA8(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      if (*v3 == v2)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.0;
      }

      *v4 = v9;
      if (v3[1] == v2)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      v4[1] = v10;
      if (v3[2] == v2)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      v4[2] = v11;
      if (v3[3] == v2)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v4[3] = v12;
      if (v3[4] == v2)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }

      v4[4] = v13;
      if (v3[5] == v2)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      v4[5] = v14;
      if (v3[6] == v2)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      v4[6] = v15;
      if (v3[7] == v2)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      v4[7] = v16;
      if (v3[8] == v2)
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      v4[8] = v17;
      if (v3[9] == v2)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v4[9] = v18;
      if (v3[10] == v2)
      {
        v19 = 1.0;
      }

      else
      {
        v19 = 0.0;
      }

      v4[10] = v19;
      if (v3[11] == v2)
      {
        v20 = 1.0;
      }

      else
      {
        v20 = 0.0;
      }

      v4[11] = v20;
      if (v3[12] == v2)
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 0.0;
      }

      v4[12] = v21;
      if (v3[13] == v2)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 0.0;
      }

      v4[13] = v22;
      if (v3[14] == v2)
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      v4[14] = v23;
      if (v3[15] == v2)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = 0.0;
      }

      v4[15] = v24;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (*v3 == v2)
      {
        v27 = 1.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v3[v26] == v2)
      {
        v28 = 1.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v3[v26] == v2)
      {
        v29 = 1.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v3[v26] == v2)
      {
        v30 = 1.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v3[v26] == v2)
      {
        v31 = 1.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v3[v26] == v2)
      {
        v32 = 1.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v3[v26] == v2)
      {
        v33 = 1.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v3[v26] == v2)
      {
        v34 = 1.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v3[v26] == v2)
      {
        v35 = 1.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v3[v26] == v2)
      {
        v36 = 1.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v3[v26] == v2)
      {
        v37 = 1.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v3[v26] == v2)
      {
        v38 = 1.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v3[v26] == v2)
      {
        v39 = 1.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v3[v26] == v2)
      {
        v40 = 1.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v3[v25] == v2)
      {
        v41 = 1.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_1514B4(uint64_t a1)
{
  sub_151550(a1 - 48);

  operator delete();
}

uint64_t sub_151550(uint64_t a1)
{
  *a1 = off_2636928;
  *(a1 + 48) = off_2636988;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_1516F8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2636A10;
  *(a1 + 48) = off_2636A70;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_151DF4(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_151EB8(uint64_t a1)
{
  sub_152498(a1);

  operator delete();
}

double sub_151EF0(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      if (*v3 == v2)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v4 = v9;
      if (v3[1] == v2)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v4[1] = v10;
      if (v3[2] == v2)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v4[2] = v11;
      if (v3[3] == v2)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[3] = v12;
      if (v3[4] == v2)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v4[4] = v13;
      if (v3[5] == v2)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[5] = v14;
      if (v3[6] == v2)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v4[6] = v15;
      if (v3[7] == v2)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[7] = v16;
      if (v3[8] == v2)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v4[8] = v17;
      if (v3[9] == v2)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[9] = v18;
      if (v3[10] == v2)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v4[10] = v19;
      if (v3[11] == v2)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[11] = v20;
      if (v3[12] == v2)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v4[12] = v21;
      if (v3[13] == v2)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[13] = v22;
      if (v3[14] == v2)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v4[14] = v23;
      if (v3[15] == v2)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[15] = v24;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (*v3 != v2)
      {
        v27 = 1.0;
      }

      *v4 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v3[v26] != v2)
      {
        v28 = 1.0;
      }

      v4[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v3[v26] != v2)
      {
        v29 = 1.0;
      }

      v4[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v3[v26] != v2)
      {
        v30 = 1.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v3[v26] != v2)
      {
        v31 = 1.0;
      }

      v4[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v3[v26] != v2)
      {
        v32 = 1.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v3[v26] != v2)
      {
        v33 = 1.0;
      }

      v4[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v3[v26] != v2)
      {
        v34 = 1.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v3[v26] != v2)
      {
        v35 = 1.0;
      }

      v4[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v3[v26] != v2)
      {
        v36 = 1.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v3[v26] != v2)
      {
        v37 = 1.0;
      }

      v4[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v3[v26] != v2)
      {
        v38 = 1.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v3[v26] != v2)
      {
        v39 = 1.0;
      }

      v4[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v3[v26] != v2)
      {
        v40 = 1.0;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v3[v25] != v2)
      {
        v41 = 1.0;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_1523FC(uint64_t a1)
{
  sub_152498(a1 - 48);

  operator delete();
}

uint64_t sub_152498(uint64_t a1)
{
  *a1 = off_2636A10;
  *(a1 + 48) = off_2636A70;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_152640(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2636AF8;
  *(a1 + 48) = off_2636B58;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_152D3C(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_152E00(uint64_t a1)
{
  sub_153AA0(a1);

  operator delete();
}

double sub_152E38(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
    v9 = -v2;
    if (v2 >= 0.0)
    {
      v9 = v2;
    }

    do
    {
      v10 = *v3;
      v11 = *v3 - v2;
      if (v11 < 0.0)
      {
        v11 = -v11;
      }

      if (v10 < 0.0)
      {
        v10 = -v10;
      }

      if (v10 < v9)
      {
        v10 = v9;
      }

      if (v11 > fmax(v10, 1.0) * 1.0e-10)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      *v4 = v12;
      v13 = v3[1];
      v14 = v13 - v2;
      if (v13 - v2 < 0.0)
      {
        v14 = -(v13 - v2);
      }

      if (v13 < 0.0)
      {
        v13 = -v13;
      }

      if (v13 < v9)
      {
        v13 = v9;
      }

      if (v14 > fmax(v13, 1.0) * 1.0e-10)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v4[1] = v15;
      v16 = v3[2];
      v17 = v16 - v2;
      if (v16 - v2 < 0.0)
      {
        v17 = -(v16 - v2);
      }

      if (v16 < 0.0)
      {
        v16 = -v16;
      }

      if (v16 < v9)
      {
        v16 = v9;
      }

      if (v17 > fmax(v16, 1.0) * 1.0e-10)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[2] = v18;
      v19 = v3[3];
      v20 = v19 - v2;
      if (v19 - v2 < 0.0)
      {
        v20 = -(v19 - v2);
      }

      if (v19 < 0.0)
      {
        v19 = -v19;
      }

      if (v19 < v9)
      {
        v19 = v9;
      }

      if (v20 > fmax(v19, 1.0) * 1.0e-10)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v4[3] = v21;
      v22 = v3[4];
      v23 = v22 - v2;
      if (v22 - v2 < 0.0)
      {
        v23 = -(v22 - v2);
      }

      if (v22 < 0.0)
      {
        v22 = -v22;
      }

      if (v22 < v9)
      {
        v22 = v9;
      }

      if (v23 > fmax(v22, 1.0) * 1.0e-10)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[4] = v24;
      v25 = v3[5];
      v26 = v25 - v2;
      if (v25 - v2 < 0.0)
      {
        v26 = -(v25 - v2);
      }

      if (v25 < 0.0)
      {
        v25 = -v25;
      }

      if (v25 < v9)
      {
        v25 = v9;
      }

      if (v26 > fmax(v25, 1.0) * 1.0e-10)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = 1.0;
      }

      v4[5] = v27;
      v28 = v3[6];
      v29 = v28 - v2;
      if (v28 - v2 < 0.0)
      {
        v29 = -(v28 - v2);
      }

      if (v28 < 0.0)
      {
        v28 = -v28;
      }

      if (v28 < v9)
      {
        v28 = v9;
      }

      if (v29 > fmax(v28, 1.0) * 1.0e-10)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = 1.0;
      }

      v4[6] = v30;
      v31 = v3[7];
      v32 = v31 - v2;
      if (v31 - v2 < 0.0)
      {
        v32 = -(v31 - v2);
      }

      if (v31 < 0.0)
      {
        v31 = -v31;
      }

      if (v31 < v9)
      {
        v31 = v9;
      }

      if (v32 > fmax(v31, 1.0) * 1.0e-10)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = 1.0;
      }

      v4[7] = v33;
      v34 = v3[8];
      v35 = v34 - v2;
      if (v34 - v2 < 0.0)
      {
        v35 = -(v34 - v2);
      }

      if (v34 < 0.0)
      {
        v34 = -v34;
      }

      if (v34 < v9)
      {
        v34 = v9;
      }

      if (v35 > fmax(v34, 1.0) * 1.0e-10)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = 1.0;
      }

      v4[8] = v36;
      v37 = v3[9];
      v38 = v37 - v2;
      if (v37 - v2 < 0.0)
      {
        v38 = -(v37 - v2);
      }

      if (v37 < 0.0)
      {
        v37 = -v37;
      }

      if (v37 < v9)
      {
        v37 = v9;
      }

      if (v38 > fmax(v37, 1.0) * 1.0e-10)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = 1.0;
      }

      v4[9] = v39;
      v40 = v3[10];
      v41 = v40 - v2;
      if (v40 - v2 < 0.0)
      {
        v41 = -(v40 - v2);
      }

      if (v40 < 0.0)
      {
        v40 = -v40;
      }

      if (v40 < v9)
      {
        v40 = v9;
      }

      if (v41 > fmax(v40, 1.0) * 1.0e-10)
      {
        v42 = 0.0;
      }

      else
      {
        v42 = 1.0;
      }

      v4[10] = v42;
      v43 = v3[11];
      v44 = v43 - v2;
      if (v43 - v2 < 0.0)
      {
        v44 = -(v43 - v2);
      }

      if (v43 < 0.0)
      {
        v43 = -v43;
      }

      if (v43 < v9)
      {
        v43 = v9;
      }

      if (v44 > fmax(v43, 1.0) * 1.0e-10)
      {
        v45 = 0.0;
      }

      else
      {
        v45 = 1.0;
      }

      v4[11] = v45;
      v46 = v3[12];
      v47 = v46 - v2;
      if (v46 - v2 < 0.0)
      {
        v47 = -(v46 - v2);
      }

      if (v46 < 0.0)
      {
        v46 = -v46;
      }

      if (v46 < v9)
      {
        v46 = v9;
      }

      if (v47 > fmax(v46, 1.0) * 1.0e-10)
      {
        v48 = 0.0;
      }

      else
      {
        v48 = 1.0;
      }

      v4[12] = v48;
      v49 = v3[13];
      v50 = v49 - v2;
      if (v49 - v2 < 0.0)
      {
        v50 = -(v49 - v2);
      }

      if (v49 < 0.0)
      {
        v49 = -v49;
      }

      if (v49 < v9)
      {
        v49 = v9;
      }

      if (v50 > fmax(v49, 1.0) * 1.0e-10)
      {
        v51 = 0.0;
      }

      else
      {
        v51 = 1.0;
      }

      v4[13] = v51;
      v52 = v3[14];
      v53 = v52 - v2;
      if (v52 - v2 < 0.0)
      {
        v53 = -(v52 - v2);
      }

      if (v52 < 0.0)
      {
        v52 = -v52;
      }

      if (v52 < v9)
      {
        v52 = v9;
      }

      if (v53 > fmax(v52, 1.0) * 1.0e-10)
      {
        v54 = 0.0;
      }

      else
      {
        v54 = 1.0;
      }

      v4[14] = v54;
      v55 = v3[15];
      v56 = v55 - v2;
      if (v55 - v2 < 0.0)
      {
        v56 = -(v55 - v2);
      }

      if (v55 < 0.0)
      {
        v55 = -v55;
      }

      if (v55 < v9)
      {
        v55 = v9;
      }

      if (v56 > fmax(v55, 1.0) * 1.0e-10)
      {
        v57 = 0.0;
      }

      else
      {
        v57 = 1.0;
      }

      v4[15] = v57;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  switch(v5 & 0xF)
  {
    case 1:
      v58 = 0;
      v59 = -v2;
      goto LABEL_334;
    case 2:
      v66 = 0;
      v59 = -v2;
      goto LABEL_322;
    case 3:
      v78 = 0;
      v59 = -v2;
      goto LABEL_310;
    case 4:
      v63 = 0;
      v59 = -v2;
      goto LABEL_298;
    case 5:
      v80 = 0;
      v59 = -v2;
      goto LABEL_286;
    case 6:
      v111 = 0;
      v59 = -v2;
      goto LABEL_274;
    case 7:
      v79 = 0;
      v59 = -v2;
      goto LABEL_262;
    case 8:
      v102 = 0;
      v59 = -v2;
      goto LABEL_250;
    case 9:
      v65 = 0;
      v59 = -v2;
      goto LABEL_238;
    case 0xA:
      v93 = 0;
      v59 = -v2;
      goto LABEL_226;
    case 0xB:
      v62 = 0;
      v59 = -v2;
      goto LABEL_214;
    case 0xC:
      v64 = 0;
      v59 = -v2;
      goto LABEL_202;
    case 0xD:
      v77 = 0;
      v59 = -v2;
      goto LABEL_190;
    case 0xE:
      v61 = 0;
      v59 = -v2;
      goto LABEL_174;
    case 0xF:
      v67 = *v3;
      v68 = *v3 - v2;
      if (v68 < 0.0)
      {
        v68 = -v68;
      }

      v69 = -v67;
      if (v67 >= 0.0)
      {
        v69 = *v3;
      }

      v59 = -v2;
      if (v2 >= 0.0)
      {
        v70 = v2;
      }

      else
      {
        v70 = -v2;
      }

      if (v69 < v70)
      {
        v69 = v70;
      }

      v71 = v68 > fmax(v69, 1.0) * 1.0e-10;
      v72 = 0.0;
      if (!v71)
      {
        v72 = 1.0;
      }

      *v4 = v72;
      v61 = 1;
LABEL_174:
      v73 = v3[v61];
      v74 = v73 - v2;
      if (v73 - v2 < 0.0)
      {
        v74 = -(v73 - v2);
      }

      if (v73 < 0.0)
      {
        v73 = -v73;
      }

      if (v2 >= 0.0)
      {
        v75 = v2;
      }

      else
      {
        v75 = v59;
      }

      if (v73 < v75)
      {
        v73 = v75;
      }

      v71 = v74 > fmax(v73, 1.0) * 1.0e-10;
      v76 = 0.0;
      if (!v71)
      {
        v76 = 1.0;
      }

      v4[v61] = v76;
      v77 = v61 + 1;
LABEL_190:
      v81 = v3[v77];
      v82 = v81 - v2;
      if (v81 - v2 < 0.0)
      {
        v82 = -(v81 - v2);
      }

      if (v81 < 0.0)
      {
        v81 = -v81;
      }

      if (v2 >= 0.0)
      {
        v83 = v2;
      }

      else
      {
        v83 = v59;
      }

      if (v81 < v83)
      {
        v81 = v83;
      }

      v71 = v82 > fmax(v81, 1.0) * 1.0e-10;
      v84 = 0.0;
      if (!v71)
      {
        v84 = 1.0;
      }

      v4[v77] = v84;
      v64 = v77 + 1;
LABEL_202:
      v85 = v3[v64];
      v86 = v85 - v2;
      if (v85 - v2 < 0.0)
      {
        v86 = -(v85 - v2);
      }

      if (v85 < 0.0)
      {
        v85 = -v85;
      }

      if (v2 >= 0.0)
      {
        v87 = v2;
      }

      else
      {
        v87 = v59;
      }

      if (v85 < v87)
      {
        v85 = v87;
      }

      v71 = v86 > fmax(v85, 1.0) * 1.0e-10;
      v88 = 0.0;
      if (!v71)
      {
        v88 = 1.0;
      }

      v4[v64] = v88;
      v62 = v64 + 1;
LABEL_214:
      v89 = v3[v62];
      v90 = v89 - v2;
      if (v89 - v2 < 0.0)
      {
        v90 = -(v89 - v2);
      }

      if (v89 < 0.0)
      {
        v89 = -v89;
      }

      if (v2 >= 0.0)
      {
        v91 = v2;
      }

      else
      {
        v91 = v59;
      }

      if (v89 < v91)
      {
        v89 = v91;
      }

      v71 = v90 > fmax(v89, 1.0) * 1.0e-10;
      v92 = 0.0;
      if (!v71)
      {
        v92 = 1.0;
      }

      v4[v62] = v92;
      v93 = v62 + 1;
LABEL_226:
      v94 = v3[v93];
      v95 = v94 - v2;
      if (v94 - v2 < 0.0)
      {
        v95 = -(v94 - v2);
      }

      if (v94 < 0.0)
      {
        v94 = -v94;
      }

      if (v2 >= 0.0)
      {
        v96 = v2;
      }

      else
      {
        v96 = v59;
      }

      if (v94 < v96)
      {
        v94 = v96;
      }

      v71 = v95 > fmax(v94, 1.0) * 1.0e-10;
      v97 = 0.0;
      if (!v71)
      {
        v97 = 1.0;
      }

      v4[v93] = v97;
      v65 = v93 + 1;
LABEL_238:
      v98 = v3[v65];
      v99 = v98 - v2;
      if (v98 - v2 < 0.0)
      {
        v99 = -(v98 - v2);
      }

      if (v98 < 0.0)
      {
        v98 = -v98;
      }

      if (v2 >= 0.0)
      {
        v100 = v2;
      }

      else
      {
        v100 = v59;
      }

      if (v98 < v100)
      {
        v98 = v100;
      }

      v71 = v99 > fmax(v98, 1.0) * 1.0e-10;
      v101 = 0.0;
      if (!v71)
      {
        v101 = 1.0;
      }

      v4[v65] = v101;
      v102 = v65 + 1;
LABEL_250:
      v103 = v3[v102];
      v104 = v103 - v2;
      if (v103 - v2 < 0.0)
      {
        v104 = -(v103 - v2);
      }

      if (v103 < 0.0)
      {
        v103 = -v103;
      }

      if (v2 >= 0.0)
      {
        v105 = v2;
      }

      else
      {
        v105 = v59;
      }

      if (v103 < v105)
      {
        v103 = v105;
      }

      v71 = v104 > fmax(v103, 1.0) * 1.0e-10;
      v106 = 0.0;
      if (!v71)
      {
        v106 = 1.0;
      }

      v4[v102] = v106;
      v79 = v102 + 1;
LABEL_262:
      v107 = v3[v79];
      v108 = v107 - v2;
      if (v107 - v2 < 0.0)
      {
        v108 = -(v107 - v2);
      }

      if (v107 < 0.0)
      {
        v107 = -v107;
      }

      if (v2 >= 0.0)
      {
        v109 = v2;
      }

      else
      {
        v109 = v59;
      }

      if (v107 < v109)
      {
        v107 = v109;
      }

      v71 = v108 > fmax(v107, 1.0) * 1.0e-10;
      v110 = 0.0;
      if (!v71)
      {
        v110 = 1.0;
      }

      v4[v79] = v110;
      v111 = v79 + 1;
LABEL_274:
      v112 = v3[v111];
      v113 = v112 - v2;
      if (v112 - v2 < 0.0)
      {
        v113 = -(v112 - v2);
      }

      if (v112 < 0.0)
      {
        v112 = -v112;
      }

      if (v2 >= 0.0)
      {
        v114 = v2;
      }

      else
      {
        v114 = v59;
      }

      if (v112 < v114)
      {
        v112 = v114;
      }

      v71 = v113 > fmax(v112, 1.0) * 1.0e-10;
      v115 = 0.0;
      if (!v71)
      {
        v115 = 1.0;
      }

      v4[v111] = v115;
      v80 = v111 + 1;
LABEL_286:
      v116 = v3[v80];
      v117 = v116 - v2;
      if (v116 - v2 < 0.0)
      {
        v117 = -(v116 - v2);
      }

      if (v116 < 0.0)
      {
        v116 = -v116;
      }

      if (v2 >= 0.0)
      {
        v118 = v2;
      }

      else
      {
        v118 = v59;
      }

      if (v116 < v118)
      {
        v116 = v118;
      }

      v71 = v117 > fmax(v116, 1.0) * 1.0e-10;
      v119 = 0.0;
      if (!v71)
      {
        v119 = 1.0;
      }

      v4[v80] = v119;
      v63 = v80 + 1;
LABEL_298:
      v120 = v3[v63];
      v121 = v120 - v2;
      if (v120 - v2 < 0.0)
      {
        v121 = -(v120 - v2);
      }

      if (v120 < 0.0)
      {
        v120 = -v120;
      }

      if (v2 >= 0.0)
      {
        v122 = v2;
      }

      else
      {
        v122 = v59;
      }

      if (v120 < v122)
      {
        v120 = v122;
      }

      v71 = v121 > fmax(v120, 1.0) * 1.0e-10;
      v123 = 0.0;
      if (!v71)
      {
        v123 = 1.0;
      }

      v4[v63] = v123;
      v78 = v63 + 1;
LABEL_310:
      v124 = v3[v78];
      v125 = v124 - v2;
      if (v124 - v2 < 0.0)
      {
        v125 = -(v124 - v2);
      }

      if (v124 < 0.0)
      {
        v124 = -v124;
      }

      if (v2 >= 0.0)
      {
        v126 = v2;
      }

      else
      {
        v126 = v59;
      }

      if (v124 < v126)
      {
        v124 = v126;
      }

      v71 = v125 > fmax(v124, 1.0) * 1.0e-10;
      v127 = 0.0;
      if (!v71)
      {
        v127 = 1.0;
      }

      v4[v78] = v127;
      v66 = v78 + 1;
LABEL_322:
      v128 = v3[v66];
      v129 = v128 - v2;
      if (v128 - v2 < 0.0)
      {
        v129 = -(v128 - v2);
      }

      if (v128 < 0.0)
      {
        v128 = -v128;
      }

      if (v2 >= 0.0)
      {
        v130 = v2;
      }

      else
      {
        v130 = v59;
      }

      if (v128 < v130)
      {
        v128 = v130;
      }

      v71 = v129 > fmax(v128, 1.0) * 1.0e-10;
      v131 = 0.0;
      if (!v71)
      {
        v131 = 1.0;
      }

      v4[v66] = v131;
      v58 = (v66 + 1);
LABEL_334:
      v132 = v3[v58];
      v133 = v132 - v2;
      if (v132 - v2 < 0.0)
      {
        v133 = -(v132 - v2);
      }

      if (v132 < 0.0)
      {
        v132 = -v132;
      }

      if (v2 >= 0.0)
      {
        v59 = v2;
      }

      if (v132 >= v59)
      {
        v59 = v132;
      }

      v71 = v133 > fmax(v59, 1.0) * 1.0e-10;
      v134 = 0.0;
      if (!v71)
      {
        v134 = 1.0;
      }

      v4[v58] = v134;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_153A04(uint64_t a1)
{
  sub_153AA0(a1 - 48);

  operator delete();
}

uint64_t sub_153AA0(uint64_t a1)
{
  *a1 = off_2636AF8;
  *(a1 + 48) = off_2636B58;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_153C48(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2636BE0;
  *(a1 + 48) = off_2636C40;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_154344(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_154408(uint64_t a1)
{
  sub_154AAC(a1);

  operator delete();
}

double sub_154440(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      if (*v3 != 0.0 && v2 != 0.0)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.0;
      }

      *v4 = v9;
      if (v3[1] != 0.0 && v2 != 0.0)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      v4[1] = v10;
      if (v3[2] != 0.0 && v2 != 0.0)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      v4[2] = v11;
      if (v3[3] != 0.0 && v2 != 0.0)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v4[3] = v12;
      if (v3[4] != 0.0 && v2 != 0.0)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }

      v4[4] = v13;
      if (v3[5] != 0.0 && v2 != 0.0)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      v4[5] = v14;
      if (v3[6] != 0.0 && v2 != 0.0)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      v4[6] = v15;
      if (v3[7] != 0.0 && v2 != 0.0)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      v4[7] = v16;
      if (v3[8] != 0.0 && v2 != 0.0)
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      v4[8] = v17;
      if (v3[9] != 0.0 && v2 != 0.0)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v4[9] = v18;
      if (v3[10] != 0.0 && v2 != 0.0)
      {
        v19 = 1.0;
      }

      else
      {
        v19 = 0.0;
      }

      v4[10] = v19;
      if (v3[11] != 0.0 && v2 != 0.0)
      {
        v20 = 1.0;
      }

      else
      {
        v20 = 0.0;
      }

      v4[11] = v20;
      if (v3[12] != 0.0 && v2 != 0.0)
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 0.0;
      }

      v4[12] = v21;
      if (v3[13] != 0.0 && v2 != 0.0)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 0.0;
      }

      v4[13] = v22;
      if (v3[14] != 0.0 && v2 != 0.0)
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      v4[14] = v23;
      if (v3[15] != 0.0 && v2 != 0.0)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = 0.0;
      }

      v4[15] = v24;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_155;
    case 2:
      goto LABEL_148;
    case 3:
      goto LABEL_141;
    case 4:
      goto LABEL_134;
    case 5:
      goto LABEL_127;
    case 6:
      goto LABEL_120;
    case 7:
      goto LABEL_113;
    case 8:
      goto LABEL_106;
    case 9:
      goto LABEL_99;
    case 0xA:
      goto LABEL_92;
    case 0xB:
      goto LABEL_85;
    case 0xC:
      goto LABEL_78;
    case 0xD:
      goto LABEL_71;
    case 0xE:
      goto LABEL_64;
    case 0xF:
      v27 = v2 == 0.0 || *v3 == 0.0;
      v28 = 1.0;
      if (v27)
      {
        v28 = 0.0;
      }

      *v4 = v28;
      v26 = 1;
LABEL_64:
      v29 = v2 == 0.0 || v3[v26] == 0.0;
      v30 = 1.0;
      if (v29)
      {
        v30 = 0.0;
      }

      v4[v26++] = v30;
LABEL_71:
      v31 = v2 == 0.0 || v3[v26] == 0.0;
      v32 = 1.0;
      if (v31)
      {
        v32 = 0.0;
      }

      v4[v26++] = v32;
LABEL_78:
      v33 = v2 == 0.0 || v3[v26] == 0.0;
      v34 = 1.0;
      if (v33)
      {
        v34 = 0.0;
      }

      v4[v26++] = v34;
LABEL_85:
      v35 = v2 == 0.0 || v3[v26] == 0.0;
      v36 = 1.0;
      if (v35)
      {
        v36 = 0.0;
      }

      v4[v26++] = v36;
LABEL_92:
      v37 = v2 == 0.0 || v3[v26] == 0.0;
      v38 = 1.0;
      if (v37)
      {
        v38 = 0.0;
      }

      v4[v26++] = v38;
LABEL_99:
      v39 = v2 == 0.0 || v3[v26] == 0.0;
      v40 = 1.0;
      if (v39)
      {
        v40 = 0.0;
      }

      v4[v26++] = v40;
LABEL_106:
      v41 = v2 == 0.0 || v3[v26] == 0.0;
      v42 = 1.0;
      if (v41)
      {
        v42 = 0.0;
      }

      v4[v26++] = v42;
LABEL_113:
      v43 = v2 == 0.0 || v3[v26] == 0.0;
      v44 = 1.0;
      if (v43)
      {
        v44 = 0.0;
      }

      v4[v26++] = v44;
LABEL_120:
      v45 = v2 == 0.0 || v3[v26] == 0.0;
      v46 = 1.0;
      if (v45)
      {
        v46 = 0.0;
      }

      v4[v26++] = v46;
LABEL_127:
      v47 = v2 == 0.0 || v3[v26] == 0.0;
      v48 = 1.0;
      if (v47)
      {
        v48 = 0.0;
      }

      v4[v26++] = v48;
LABEL_134:
      v49 = v2 == 0.0 || v3[v26] == 0.0;
      v50 = 1.0;
      if (v49)
      {
        v50 = 0.0;
      }

      v4[v26++] = v50;
LABEL_141:
      v51 = v2 == 0.0 || v3[v26] == 0.0;
      v52 = 1.0;
      if (v51)
      {
        v52 = 0.0;
      }

      v4[v26++] = v52;
LABEL_148:
      v53 = v2 == 0.0 || v3[v26] == 0.0;
      v54 = 1.0;
      if (v53)
      {
        v54 = 0.0;
      }

      v4[v26] = v54;
      v25 = v26 + 1;
LABEL_155:
      v55 = v2 == 0.0 || v3[v25] == 0.0;
      v56 = 1.0;
      if (v55)
      {
        v56 = 0.0;
      }

      v4[v25] = v56;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_154A10(uint64_t a1)
{
  sub_154AAC(a1 - 48);

  operator delete();
}

uint64_t sub_154AAC(uint64_t a1)
{
  *a1 = off_2636BE0;
  *(a1 + 48) = off_2636C40;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_154C54(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2636CC8;
  *(a1 + 48) = off_2636D28;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_155350(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_155414(uint64_t a1)
{
  sub_155AB8(a1);

  operator delete();
}

double sub_15544C(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      if (*v3 != 0.0 && v2 != 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v4 = v9;
      if (v3[1] != 0.0 && v2 != 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v4[1] = v10;
      if (v3[2] != 0.0 && v2 != 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v4[2] = v11;
      if (v3[3] != 0.0 && v2 != 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[3] = v12;
      if (v3[4] != 0.0 && v2 != 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v4[4] = v13;
      if (v3[5] != 0.0 && v2 != 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[5] = v14;
      if (v3[6] != 0.0 && v2 != 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v4[6] = v15;
      if (v3[7] != 0.0 && v2 != 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[7] = v16;
      if (v3[8] != 0.0 && v2 != 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v4[8] = v17;
      if (v3[9] != 0.0 && v2 != 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[9] = v18;
      if (v3[10] != 0.0 && v2 != 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v4[10] = v19;
      if (v3[11] != 0.0 && v2 != 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[11] = v20;
      if (v3[12] != 0.0 && v2 != 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v4[12] = v21;
      if (v3[13] != 0.0 && v2 != 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[13] = v22;
      if (v3[14] != 0.0 && v2 != 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v4[14] = v23;
      if (v3[15] != 0.0 && v2 != 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[15] = v24;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_141;
    case 2:
      goto LABEL_135;
    case 3:
      goto LABEL_129;
    case 4:
      goto LABEL_123;
    case 5:
      goto LABEL_117;
    case 6:
      goto LABEL_111;
    case 7:
      goto LABEL_105;
    case 8:
      goto LABEL_99;
    case 9:
      goto LABEL_93;
    case 0xA:
      goto LABEL_87;
    case 0xB:
      goto LABEL_81;
    case 0xC:
      goto LABEL_75;
    case 0xD:
      goto LABEL_69;
    case 0xE:
      goto LABEL_63;
    case 0xF:
      v27 = v2 == 0.0 || *v3 == 0.0;
      v28 = 1.0;
      if (!v27)
      {
        v28 = 0.0;
      }

      *v4 = v28;
      v26 = 1;
LABEL_63:
      v29 = v2 == 0.0 || v3[v26] == 0.0;
      v30 = 1.0;
      if (!v29)
      {
        v30 = 0.0;
      }

      v4[v26++] = v30;
LABEL_69:
      v31 = v2 == 0.0 || v3[v26] == 0.0;
      v32 = 1.0;
      if (!v31)
      {
        v32 = 0.0;
      }

      v4[v26++] = v32;
LABEL_75:
      v33 = v2 == 0.0 || v3[v26] == 0.0;
      v34 = 1.0;
      if (!v33)
      {
        v34 = 0.0;
      }

      v4[v26++] = v34;
LABEL_81:
      v35 = v2 == 0.0 || v3[v26] == 0.0;
      v36 = 1.0;
      if (!v35)
      {
        v36 = 0.0;
      }

      v4[v26++] = v36;
LABEL_87:
      v37 = v2 == 0.0 || v3[v26] == 0.0;
      v38 = 1.0;
      if (!v37)
      {
        v38 = 0.0;
      }

      v4[v26++] = v38;
LABEL_93:
      v39 = v2 == 0.0 || v3[v26] == 0.0;
      v40 = 1.0;
      if (!v39)
      {
        v40 = 0.0;
      }

      v4[v26++] = v40;
LABEL_99:
      v41 = v2 == 0.0 || v3[v26] == 0.0;
      v42 = 1.0;
      if (!v41)
      {
        v42 = 0.0;
      }

      v4[v26++] = v42;
LABEL_105:
      v43 = v2 == 0.0 || v3[v26] == 0.0;
      v44 = 1.0;
      if (!v43)
      {
        v44 = 0.0;
      }

      v4[v26++] = v44;
LABEL_111:
      v45 = v2 == 0.0 || v3[v26] == 0.0;
      v46 = 1.0;
      if (!v45)
      {
        v46 = 0.0;
      }

      v4[v26++] = v46;
LABEL_117:
      v47 = v2 == 0.0 || v3[v26] == 0.0;
      v48 = 1.0;
      if (!v47)
      {
        v48 = 0.0;
      }

      v4[v26++] = v48;
LABEL_123:
      v49 = v2 == 0.0 || v3[v26] == 0.0;
      v50 = 1.0;
      if (!v49)
      {
        v50 = 0.0;
      }

      v4[v26++] = v50;
LABEL_129:
      v51 = v2 == 0.0 || v3[v26] == 0.0;
      v52 = 1.0;
      if (!v51)
      {
        v52 = 0.0;
      }

      v4[v26++] = v52;
LABEL_135:
      v53 = v2 == 0.0 || v3[v26] == 0.0;
      v54 = 1.0;
      if (!v53)
      {
        v54 = 0.0;
      }

      v4[v26] = v54;
      v25 = v26 + 1;
LABEL_141:
      v55 = v2 == 0.0 || v3[v25] == 0.0;
      v56 = 1.0;
      if (!v55)
      {
        v56 = 0.0;
      }

      v4[v25] = v56;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_155A1C(uint64_t a1)
{
  sub_155AB8(a1 - 48);

  operator delete();
}

uint64_t sub_155AB8(uint64_t a1)
{
  *a1 = off_2636CC8;
  *(a1 + 48) = off_2636D28;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_155C60(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2636DB0;
  *(a1 + 48) = off_2636E10;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_15635C(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_156420(uint64_t a1)
{
  sub_156B3C(a1);

  operator delete();
}

double sub_156458(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      v9 = *v3 != 0.0;
      if (v2 != 0.0)
      {
        v9 = 1;
      }

      if (v9)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      *v4 = v10;
      v11 = v3[1] != 0.0;
      if (v2 != 0.0)
      {
        v11 = 1;
      }

      if (v11)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v4[1] = v12;
      v13 = v3[2] != 0.0;
      if (v2 != 0.0)
      {
        v13 = 1;
      }

      if (v13)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      v4[2] = v14;
      v15 = v3[3] != 0.0;
      if (v2 != 0.0)
      {
        v15 = 1;
      }

      if (v15)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      v4[3] = v16;
      v17 = v3[4] != 0.0;
      if (v2 != 0.0)
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v4[4] = v18;
      v19 = v3[5] != 0.0;
      if (v2 != 0.0)
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = 1.0;
      }

      else
      {
        v20 = 0.0;
      }

      v4[5] = v20;
      v21 = v3[6] != 0.0;
      if (v2 != 0.0)
      {
        v21 = 1;
      }

      if (v21)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 0.0;
      }

      v4[6] = v22;
      v23 = v3[7] != 0.0;
      if (v2 != 0.0)
      {
        v23 = 1;
      }

      if (v23)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = 0.0;
      }

      v4[7] = v24;
      v25 = v3[8] != 0.0;
      if (v2 != 0.0)
      {
        v25 = 1;
      }

      if (v25)
      {
        v26 = 1.0;
      }

      else
      {
        v26 = 0.0;
      }

      v4[8] = v26;
      v27 = v3[9] != 0.0;
      if (v2 != 0.0)
      {
        v27 = 1;
      }

      if (v27)
      {
        v28 = 1.0;
      }

      else
      {
        v28 = 0.0;
      }

      v4[9] = v28;
      v29 = v3[10] != 0.0;
      if (v2 != 0.0)
      {
        v29 = 1;
      }

      if (v29)
      {
        v30 = 1.0;
      }

      else
      {
        v30 = 0.0;
      }

      v4[10] = v30;
      v31 = v3[11] != 0.0;
      if (v2 != 0.0)
      {
        v31 = 1;
      }

      if (v31)
      {
        v32 = 1.0;
      }

      else
      {
        v32 = 0.0;
      }

      v4[11] = v32;
      v33 = v3[12] != 0.0;
      if (v2 != 0.0)
      {
        v33 = 1;
      }

      if (v33)
      {
        v34 = 1.0;
      }

      else
      {
        v34 = 0.0;
      }

      v4[12] = v34;
      v35 = v3[13] != 0.0;
      if (v2 != 0.0)
      {
        v35 = 1;
      }

      if (v35)
      {
        v36 = 1.0;
      }

      else
      {
        v36 = 0.0;
      }

      v4[13] = v36;
      v37 = v3[14] != 0.0;
      if (v2 != 0.0)
      {
        v37 = 1;
      }

      if (v37)
      {
        v38 = 1.0;
      }

      else
      {
        v38 = 0.0;
      }

      v4[14] = v38;
      v39 = v3[15] != 0.0;
      if (v2 != 0.0)
      {
        v39 = 1;
      }

      if (v39)
      {
        v40 = 1.0;
      }

      else
      {
        v40 = 0.0;
      }

      v4[15] = v40;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v41 = 0;
  v42 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_187;
    case 2:
      goto LABEL_180;
    case 3:
      goto LABEL_173;
    case 4:
      goto LABEL_166;
    case 5:
      goto LABEL_159;
    case 6:
      goto LABEL_152;
    case 7:
      goto LABEL_145;
    case 8:
      goto LABEL_138;
    case 9:
      goto LABEL_131;
    case 0xA:
      goto LABEL_124;
    case 0xB:
      goto LABEL_117;
    case 0xC:
      goto LABEL_110;
    case 0xD:
      goto LABEL_103;
    case 0xE:
      goto LABEL_96;
    case 0xF:
      v43 = v2 == 0.0 && *v3 == 0.0;
      v44 = 1.0;
      if (v43)
      {
        v44 = 0.0;
      }

      *v4 = v44;
      v42 = 1;
LABEL_96:
      v45 = v2 == 0.0 && v3[v42] == 0.0;
      v46 = 1.0;
      if (v45)
      {
        v46 = 0.0;
      }

      v4[v42++] = v46;
LABEL_103:
      v47 = v2 == 0.0 && v3[v42] == 0.0;
      v48 = 1.0;
      if (v47)
      {
        v48 = 0.0;
      }

      v4[v42++] = v48;
LABEL_110:
      v49 = v2 == 0.0 && v3[v42] == 0.0;
      v50 = 1.0;
      if (v49)
      {
        v50 = 0.0;
      }

      v4[v42++] = v50;
LABEL_117:
      v51 = v2 == 0.0 && v3[v42] == 0.0;
      v52 = 1.0;
      if (v51)
      {
        v52 = 0.0;
      }

      v4[v42++] = v52;
LABEL_124:
      v53 = v2 == 0.0 && v3[v42] == 0.0;
      v54 = 1.0;
      if (v53)
      {
        v54 = 0.0;
      }

      v4[v42++] = v54;
LABEL_131:
      v55 = v2 == 0.0 && v3[v42] == 0.0;
      v56 = 1.0;
      if (v55)
      {
        v56 = 0.0;
      }

      v4[v42++] = v56;
LABEL_138:
      v57 = v2 == 0.0 && v3[v42] == 0.0;
      v58 = 1.0;
      if (v57)
      {
        v58 = 0.0;
      }

      v4[v42++] = v58;
LABEL_145:
      v59 = v2 == 0.0 && v3[v42] == 0.0;
      v60 = 1.0;
      if (v59)
      {
        v60 = 0.0;
      }

      v4[v42++] = v60;
LABEL_152:
      v61 = v2 == 0.0 && v3[v42] == 0.0;
      v62 = 1.0;
      if (v61)
      {
        v62 = 0.0;
      }

      v4[v42++] = v62;
LABEL_159:
      v63 = v2 == 0.0 && v3[v42] == 0.0;
      v64 = 1.0;
      if (v63)
      {
        v64 = 0.0;
      }

      v4[v42++] = v64;
LABEL_166:
      v65 = v2 == 0.0 && v3[v42] == 0.0;
      v66 = 1.0;
      if (v65)
      {
        v66 = 0.0;
      }

      v4[v42++] = v66;
LABEL_173:
      v67 = v2 == 0.0 && v3[v42] == 0.0;
      v68 = 1.0;
      if (v67)
      {
        v68 = 0.0;
      }

      v4[v42++] = v68;
LABEL_180:
      v69 = v2 == 0.0 && v3[v42] == 0.0;
      v70 = 1.0;
      if (v69)
      {
        v70 = 0.0;
      }

      v4[v42] = v70;
      v41 = v42 + 1;
LABEL_187:
      v71 = v2 == 0.0 && v3[v41] == 0.0;
      v72 = 1.0;
      if (v71)
      {
        v72 = 0.0;
      }

      v4[v41] = v72;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_156AA0(uint64_t a1)
{
  sub_156B3C(a1 - 48);

  operator delete();
}

uint64_t sub_156B3C(uint64_t a1)
{
  *a1 = off_2636DB0;
  *(a1 + 48) = off_2636E10;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_156CE4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2636E98;
  *(a1 + 48) = off_2636EF8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_1573E0(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_1574A4(uint64_t a1)
{
  sub_157BC0(a1);

  operator delete();
}

double sub_1574DC(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      v9 = *v3 != 0.0;
      if (v2 != 0.0)
      {
        v9 = 1;
      }

      if (v9)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      *v4 = v10;
      v11 = v3[1] != 0.0;
      if (v2 != 0.0)
      {
        v11 = 1;
      }

      if (v11)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[1] = v12;
      v13 = v3[2] != 0.0;
      if (v2 != 0.0)
      {
        v13 = 1;
      }

      if (v13)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[2] = v14;
      v15 = v3[3] != 0.0;
      if (v2 != 0.0)
      {
        v15 = 1;
      }

      if (v15)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[3] = v16;
      v17 = v3[4] != 0.0;
      if (v2 != 0.0)
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[4] = v18;
      v19 = v3[5] != 0.0;
      if (v2 != 0.0)
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[5] = v20;
      v21 = v3[6] != 0.0;
      if (v2 != 0.0)
      {
        v21 = 1;
      }

      if (v21)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[6] = v22;
      v23 = v3[7] != 0.0;
      if (v2 != 0.0)
      {
        v23 = 1;
      }

      if (v23)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[7] = v24;
      v25 = v3[8] != 0.0;
      if (v2 != 0.0)
      {
        v25 = 1;
      }

      if (v25)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = 1.0;
      }

      v4[8] = v26;
      v27 = v3[9] != 0.0;
      if (v2 != 0.0)
      {
        v27 = 1;
      }

      if (v27)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = 1.0;
      }

      v4[9] = v28;
      v29 = v3[10] != 0.0;
      if (v2 != 0.0)
      {
        v29 = 1;
      }

      if (v29)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = 1.0;
      }

      v4[10] = v30;
      v31 = v3[11] != 0.0;
      if (v2 != 0.0)
      {
        v31 = 1;
      }

      if (v31)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = 1.0;
      }

      v4[11] = v32;
      v33 = v3[12] != 0.0;
      if (v2 != 0.0)
      {
        v33 = 1;
      }

      if (v33)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = 1.0;
      }

      v4[12] = v34;
      v35 = v3[13] != 0.0;
      if (v2 != 0.0)
      {
        v35 = 1;
      }

      if (v35)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = 1.0;
      }

      v4[13] = v36;
      v37 = v3[14] != 0.0;
      if (v2 != 0.0)
      {
        v37 = 1;
      }

      if (v37)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = 1.0;
      }

      v4[14] = v38;
      v39 = v3[15] != 0.0;
      if (v2 != 0.0)
      {
        v39 = 1;
      }

      if (v39)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = 1.0;
      }

      v4[15] = v40;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v41 = 0;
  v42 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_173;
    case 2:
      goto LABEL_167;
    case 3:
      goto LABEL_161;
    case 4:
      goto LABEL_155;
    case 5:
      goto LABEL_149;
    case 6:
      goto LABEL_143;
    case 7:
      goto LABEL_137;
    case 8:
      goto LABEL_131;
    case 9:
      goto LABEL_125;
    case 0xA:
      goto LABEL_119;
    case 0xB:
      goto LABEL_113;
    case 0xC:
      goto LABEL_107;
    case 0xD:
      goto LABEL_101;
    case 0xE:
      goto LABEL_95;
    case 0xF:
      v43 = v2 == 0.0 && *v3 == 0.0;
      v44 = 1.0;
      if (!v43)
      {
        v44 = 0.0;
      }

      *v4 = v44;
      v42 = 1;
LABEL_95:
      v45 = v2 == 0.0 && v3[v42] == 0.0;
      v46 = 1.0;
      if (!v45)
      {
        v46 = 0.0;
      }

      v4[v42++] = v46;
LABEL_101:
      v47 = v2 == 0.0 && v3[v42] == 0.0;
      v48 = 1.0;
      if (!v47)
      {
        v48 = 0.0;
      }

      v4[v42++] = v48;
LABEL_107:
      v49 = v2 == 0.0 && v3[v42] == 0.0;
      v50 = 1.0;
      if (!v49)
      {
        v50 = 0.0;
      }

      v4[v42++] = v50;
LABEL_113:
      v51 = v2 == 0.0 && v3[v42] == 0.0;
      v52 = 1.0;
      if (!v51)
      {
        v52 = 0.0;
      }

      v4[v42++] = v52;
LABEL_119:
      v53 = v2 == 0.0 && v3[v42] == 0.0;
      v54 = 1.0;
      if (!v53)
      {
        v54 = 0.0;
      }

      v4[v42++] = v54;
LABEL_125:
      v55 = v2 == 0.0 && v3[v42] == 0.0;
      v56 = 1.0;
      if (!v55)
      {
        v56 = 0.0;
      }

      v4[v42++] = v56;
LABEL_131:
      v57 = v2 == 0.0 && v3[v42] == 0.0;
      v58 = 1.0;
      if (!v57)
      {
        v58 = 0.0;
      }

      v4[v42++] = v58;
LABEL_137:
      v59 = v2 == 0.0 && v3[v42] == 0.0;
      v60 = 1.0;
      if (!v59)
      {
        v60 = 0.0;
      }

      v4[v42++] = v60;
LABEL_143:
      v61 = v2 == 0.0 && v3[v42] == 0.0;
      v62 = 1.0;
      if (!v61)
      {
        v62 = 0.0;
      }

      v4[v42++] = v62;
LABEL_149:
      v63 = v2 == 0.0 && v3[v42] == 0.0;
      v64 = 1.0;
      if (!v63)
      {
        v64 = 0.0;
      }

      v4[v42++] = v64;
LABEL_155:
      v65 = v2 == 0.0 && v3[v42] == 0.0;
      v66 = 1.0;
      if (!v65)
      {
        v66 = 0.0;
      }

      v4[v42++] = v66;
LABEL_161:
      v67 = v2 == 0.0 && v3[v42] == 0.0;
      v68 = 1.0;
      if (!v67)
      {
        v68 = 0.0;
      }

      v4[v42++] = v68;
LABEL_167:
      v69 = v2 == 0.0 && v3[v42] == 0.0;
      v70 = 1.0;
      if (!v69)
      {
        v70 = 0.0;
      }

      v4[v42] = v70;
      v41 = v42 + 1;
LABEL_173:
      v71 = v2 == 0.0 && v3[v41] == 0.0;
      v72 = 1.0;
      if (!v71)
      {
        v72 = 0.0;
      }

      v4[v41] = v72;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_157B24(uint64_t a1)
{
  sub_157BC0(a1 - 48);

  operator delete();
}

uint64_t sub_157BC0(uint64_t a1)
{
  *a1 = off_2636E98;
  *(a1 + 48) = off_2636EF8;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_157D68(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2636F80;
  *(a1 + 48) = off_2636FE0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_158464(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_158528(uint64_t a1)
{
  sub_158CFC(a1);

  operator delete();
}

double sub_158560(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      v9 = v2 == 0.0;
      if (v9 != (*v3 == 0.0))
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      *v4 = v10;
      if (v9 != (v3[1] == 0.0))
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      v4[1] = v11;
      if (v9 != (v3[2] == 0.0))
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v4[2] = v12;
      if (v9 != (v3[3] == 0.0))
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }

      v4[3] = v13;
      if (v9 != (v3[4] == 0.0))
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      v4[4] = v14;
      if (v9 != (v3[5] == 0.0))
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      v4[5] = v15;
      if (v9 != (v3[6] == 0.0))
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      v4[6] = v16;
      if (v9 != (v3[7] == 0.0))
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      v4[7] = v17;
      if (v9 != (v3[8] == 0.0))
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v4[8] = v18;
      if (v9 != (v3[9] == 0.0))
      {
        v19 = 1.0;
      }

      else
      {
        v19 = 0.0;
      }

      v4[9] = v19;
      if (v9 != (v3[10] == 0.0))
      {
        v20 = 1.0;
      }

      else
      {
        v20 = 0.0;
      }

      v4[10] = v20;
      if (v9 != (v3[11] == 0.0))
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 0.0;
      }

      v4[11] = v21;
      if (v9 != (v3[12] == 0.0))
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 0.0;
      }

      v4[12] = v22;
      if (v9 != (v3[13] == 0.0))
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      v4[13] = v23;
      if (v9 != (v3[14] == 0.0))
      {
        v24 = 1.0;
      }

      else
      {
        v24 = 0.0;
      }

      v4[14] = v24;
      if (v9 != (v3[15] == 0.0))
      {
        v25 = 1.0;
      }

      else
      {
        v25 = 0.0;
      }

      v4[15] = v25;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v26 = 0;
  v27 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v28 = 0.0;
      if ((v2 == 0.0) != (*v3 == 0.0))
      {
        v28 = 1.0;
      }

      *v4 = v28;
      v27 = 1;
LABEL_60:
      v29 = 0.0;
      if ((v2 == 0.0) != (v3[v27] == 0.0))
      {
        v29 = 1.0;
      }

      v4[v27++] = v29;
LABEL_63:
      v30 = 0.0;
      if ((v2 == 0.0) != (v3[v27] == 0.0))
      {
        v30 = 1.0;
      }

      v4[v27++] = v30;
LABEL_66:
      v31 = 0.0;
      if ((v2 == 0.0) != (v3[v27] == 0.0))
      {
        v31 = 1.0;
      }

      v4[v27++] = v31;
LABEL_69:
      v32 = 0.0;
      if ((v2 == 0.0) != (v3[v27] == 0.0))
      {
        v32 = 1.0;
      }

      v4[v27++] = v32;
LABEL_72:
      v33 = 0.0;
      if ((v2 == 0.0) != (v3[v27] == 0.0))
      {
        v33 = 1.0;
      }

      v4[v27++] = v33;
LABEL_75:
      v34 = 0.0;
      if ((v2 == 0.0) != (v3[v27] == 0.0))
      {
        v34 = 1.0;
      }

      v4[v27++] = v34;
LABEL_78:
      v35 = 0.0;
      if ((v2 == 0.0) != (v3[v27] == 0.0))
      {
        v35 = 1.0;
      }

      v4[v27++] = v35;
LABEL_81:
      v36 = 0.0;
      if ((v2 == 0.0) != (v3[v27] == 0.0))
      {
        v36 = 1.0;
      }

      v4[v27++] = v36;
LABEL_84:
      v37 = 0.0;
      if ((v2 == 0.0) != (v3[v27] == 0.0))
      {
        v37 = 1.0;
      }

      v4[v27++] = v37;
LABEL_87:
      v38 = 0.0;
      if ((v2 == 0.0) != (v3[v27] == 0.0))
      {
        v38 = 1.0;
      }

      v4[v27++] = v38;
LABEL_90:
      v39 = 0.0;
      if ((v2 == 0.0) != (v3[v27] == 0.0))
      {
        v39 = 1.0;
      }

      v4[v27++] = v39;
LABEL_93:
      v40 = 0.0;
      if ((v2 == 0.0) != (v3[v27] == 0.0))
      {
        v40 = 1.0;
      }

      v4[v27++] = v40;
LABEL_96:
      v41 = 0.0;
      if ((v2 == 0.0) != (v3[v27] == 0.0))
      {
        v41 = 1.0;
      }

      v4[v27] = v41;
      v26 = v27 + 1;
LABEL_99:
      v42 = 0.0;
      if ((v2 == 0.0) != (v3[v26] == 0.0))
      {
        v42 = 1.0;
      }

      v4[v26] = v42;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_158C60(uint64_t a1)
{
  sub_158CFC(a1 - 48);

  operator delete();
}

uint64_t sub_158CFC(uint64_t a1)
{
  *a1 = off_2636F80;
  *(a1 + 48) = off_2636FE0;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_158EA4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2637068;
  *(a1 + 48) = off_26370C8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_1595A0(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_159664(uint64_t a1)
{
  sub_159E38(a1);

  operator delete();
}

double sub_15969C(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      v9 = v2 != 0.0;
      if (v9 != (*v3 != 0.0))
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      *v4 = v10;
      if (v9 != (v3[1] != 0.0))
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v4[1] = v11;
      if (v9 != (v3[2] != 0.0))
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v4[2] = v12;
      if (v9 != (v3[3] != 0.0))
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v4[3] = v13;
      if (v9 != (v3[4] != 0.0))
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v4[4] = v14;
      if (v9 != (v3[5] != 0.0))
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v4[5] = v15;
      if (v9 != (v3[6] != 0.0))
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v4[6] = v16;
      if (v9 != (v3[7] != 0.0))
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v4[7] = v17;
      if (v9 != (v3[8] != 0.0))
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v4[8] = v18;
      if (v9 != (v3[9] != 0.0))
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v4[9] = v19;
      if (v9 != (v3[10] != 0.0))
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v4[10] = v20;
      if (v9 != (v3[11] != 0.0))
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v4[11] = v21;
      if (v9 != (v3[12] != 0.0))
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v4[12] = v22;
      if (v9 != (v3[13] != 0.0))
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v4[13] = v23;
      if (v9 != (v3[14] != 0.0))
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v4[14] = v24;
      if (v9 != (v3[15] != 0.0))
      {
        v25 = 0.0;
      }

      else
      {
        v25 = 1.0;
      }

      v4[15] = v25;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v26 = 0;
  v27 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v28 = 1.0;
      if ((v2 != 0.0) != (*v3 != 0.0))
      {
        v28 = 0.0;
      }

      *v4 = v28;
      v27 = 1;
LABEL_60:
      v29 = 1.0;
      if ((v2 != 0.0) != (v3[v27] != 0.0))
      {
        v29 = 0.0;
      }

      v4[v27++] = v29;
LABEL_63:
      v30 = 1.0;
      if ((v2 != 0.0) != (v3[v27] != 0.0))
      {
        v30 = 0.0;
      }

      v4[v27++] = v30;
LABEL_66:
      v31 = 1.0;
      if ((v2 != 0.0) != (v3[v27] != 0.0))
      {
        v31 = 0.0;
      }

      v4[v27++] = v31;
LABEL_69:
      v32 = 1.0;
      if ((v2 != 0.0) != (v3[v27] != 0.0))
      {
        v32 = 0.0;
      }

      v4[v27++] = v32;
LABEL_72:
      v33 = 1.0;
      if ((v2 != 0.0) != (v3[v27] != 0.0))
      {
        v33 = 0.0;
      }

      v4[v27++] = v33;
LABEL_75:
      v34 = 1.0;
      if ((v2 != 0.0) != (v3[v27] != 0.0))
      {
        v34 = 0.0;
      }

      v4[v27++] = v34;
LABEL_78:
      v35 = 1.0;
      if ((v2 != 0.0) != (v3[v27] != 0.0))
      {
        v35 = 0.0;
      }

      v4[v27++] = v35;
LABEL_81:
      v36 = 1.0;
      if ((v2 != 0.0) != (v3[v27] != 0.0))
      {
        v36 = 0.0;
      }

      v4[v27++] = v36;
LABEL_84:
      v37 = 1.0;
      if ((v2 != 0.0) != (v3[v27] != 0.0))
      {
        v37 = 0.0;
      }

      v4[v27++] = v37;
LABEL_87:
      v38 = 1.0;
      if ((v2 != 0.0) != (v3[v27] != 0.0))
      {
        v38 = 0.0;
      }

      v4[v27++] = v38;
LABEL_90:
      v39 = 1.0;
      if ((v2 != 0.0) != (v3[v27] != 0.0))
      {
        v39 = 0.0;
      }

      v4[v27++] = v39;
LABEL_93:
      v40 = 1.0;
      if ((v2 != 0.0) != (v3[v27] != 0.0))
      {
        v40 = 0.0;
      }

      v4[v27++] = v40;
LABEL_96:
      v41 = 1.0;
      if ((v2 != 0.0) != (v3[v27] != 0.0))
      {
        v41 = 0.0;
      }

      v4[v27] = v41;
      v26 = v27 + 1;
LABEL_99:
      v42 = 1.0;
      if ((v2 != 0.0) != (v3[v26] != 0.0))
      {
        v42 = 0.0;
      }

      v4[v26] = v42;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_159D9C(uint64_t a1)
{
  sub_159E38(a1 - 48);

  operator delete();
}

uint64_t sub_159E38(uint64_t a1)
{
  *a1 = off_2637068;
  *(a1 + 48) = off_26370C8;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_159FE0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2637150;
  *(a1 + 48) = off_26371B0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_15A6DC(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_15A7A0(uint64_t a1)
{
  sub_15AD80(a1);

  operator delete();
}

double sub_15A7D8(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  v2 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(*a1 + 72))(a1) + 16);
  v4 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      if (v2 >= *v4)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v3 = v9;
      if (v2 >= v4[1])
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v3[1] = v10;
      if (v2 >= v4[2])
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v3[2] = v11;
      if (v2 >= v4[3])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v3[3] = v12;
      if (v2 >= v4[4])
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v3[4] = v13;
      if (v2 >= v4[5])
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v3[5] = v14;
      if (v2 >= v4[6])
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v3[6] = v15;
      if (v2 >= v4[7])
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v3[7] = v16;
      if (v2 >= v4[8])
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v3[8] = v17;
      if (v2 >= v4[9])
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v3[9] = v18;
      if (v2 >= v4[10])
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v3[10] = v19;
      if (v2 >= v4[11])
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v3[11] = v20;
      if (v2 >= v4[12])
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v3[12] = v21;
      if (v2 >= v4[13])
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v3[13] = v22;
      if (v2 >= v4[14])
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v3[14] = v23;
      if (v2 >= v4[15])
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v3[15] = v24;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (v2 < *v4)
      {
        v27 = 1.0;
      }

      *v3 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v2 < v4[v26])
      {
        v28 = 1.0;
      }

      v3[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v2 < v4[v26])
      {
        v29 = 1.0;
      }

      v3[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v2 < v4[v26])
      {
        v30 = 1.0;
      }

      v3[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v2 < v4[v26])
      {
        v31 = 1.0;
      }

      v3[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v2 < v4[v26])
      {
        v32 = 1.0;
      }

      v3[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v2 < v4[v26])
      {
        v33 = 1.0;
      }

      v3[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v2 < v4[v26])
      {
        v34 = 1.0;
      }

      v3[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v2 < v4[v26])
      {
        v35 = 1.0;
      }

      v3[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v2 < v4[v26])
      {
        v36 = 1.0;
      }

      v3[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v2 < v4[v26])
      {
        v37 = 1.0;
      }

      v3[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v2 < v4[v26])
      {
        v38 = 1.0;
      }

      v3[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v2 < v4[v26])
      {
        v39 = 1.0;
      }

      v3[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v2 < v4[v26])
      {
        v40 = 1.0;
      }

      v3[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v2 < v4[v25])
      {
        v41 = 1.0;
      }

      v3[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_15ACE4(uint64_t a1)
{
  sub_15AD80(a1 - 48);

  operator delete();
}

uint64_t sub_15AD80(uint64_t a1)
{
  *a1 = off_2637150;
  *(a1 + 48) = off_26371B0;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_15AF28(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2637238;
  *(a1 + 48) = off_2637298;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_15B624(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_15B6E8(uint64_t a1)
{
  sub_15BCC8(a1);

  operator delete();
}

double sub_15B720(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  v2 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(*a1 + 72))(a1) + 16);
  v4 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      if (v2 > *v4)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v3 = v9;
      if (v2 > v4[1])
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v3[1] = v10;
      if (v2 > v4[2])
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v3[2] = v11;
      if (v2 > v4[3])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v3[3] = v12;
      if (v2 > v4[4])
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v3[4] = v13;
      if (v2 > v4[5])
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v3[5] = v14;
      if (v2 > v4[6])
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v3[6] = v15;
      if (v2 > v4[7])
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v3[7] = v16;
      if (v2 > v4[8])
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v3[8] = v17;
      if (v2 > v4[9])
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v3[9] = v18;
      if (v2 > v4[10])
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v3[10] = v19;
      if (v2 > v4[11])
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v3[11] = v20;
      if (v2 > v4[12])
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v3[12] = v21;
      if (v2 > v4[13])
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v3[13] = v22;
      if (v2 > v4[14])
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v3[14] = v23;
      if (v2 > v4[15])
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v3[15] = v24;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (v2 <= *v4)
      {
        v27 = 1.0;
      }

      *v3 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v2 <= v4[v26])
      {
        v28 = 1.0;
      }

      v3[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v2 <= v4[v26])
      {
        v29 = 1.0;
      }

      v3[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v2 <= v4[v26])
      {
        v30 = 1.0;
      }

      v3[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v2 <= v4[v26])
      {
        v31 = 1.0;
      }

      v3[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v2 <= v4[v26])
      {
        v32 = 1.0;
      }

      v3[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v2 <= v4[v26])
      {
        v33 = 1.0;
      }

      v3[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v2 <= v4[v26])
      {
        v34 = 1.0;
      }

      v3[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v2 <= v4[v26])
      {
        v35 = 1.0;
      }

      v3[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v2 <= v4[v26])
      {
        v36 = 1.0;
      }

      v3[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v2 <= v4[v26])
      {
        v37 = 1.0;
      }

      v3[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v2 <= v4[v26])
      {
        v38 = 1.0;
      }

      v3[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v2 <= v4[v26])
      {
        v39 = 1.0;
      }

      v3[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v2 <= v4[v26])
      {
        v40 = 1.0;
      }

      v3[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v2 <= v4[v25])
      {
        v41 = 1.0;
      }

      v3[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_15BC2C(uint64_t a1)
{
  sub_15BCC8(a1 - 48);

  operator delete();
}

uint64_t sub_15BCC8(uint64_t a1)
{
  *a1 = off_2637238;
  *(a1 + 48) = off_2637298;
  if (*(a1 + 64))
  {
    operator delete();
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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

    *(a1 + 80) = 0;
  }

  *a1 = off_26345A0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_15BE70(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2637320;
  *(a1 + 48) = off_2637380;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_15C56C(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_15C630(uint64_t a1)
{
  sub_15CC10(a1);

  operator delete();
}

double sub_15C668(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return NAN;
  }

  v2 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = *(*(*(*a1 + 72))(a1) + 16);
  v4 = *(*(*(**(a1 + 56) + 64))(*(a1 + 56)) + 16);
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
      if (v2 <= *v4)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v3 = v9;
      if (v2 <= v4[1])
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v3[1] = v10;
      if (v2 <= v4[2])
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v3[2] = v11;
      if (v2 <= v4[3])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v3[3] = v12;
      if (v2 <= v4[4])
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v3[4] = v13;
      if (v2 <= v4[5])
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v3[5] = v14;
      if (v2 <= v4[6])
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v3[6] = v15;
      if (v2 <= v4[7])
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v3[7] = v16;
      if (v2 <= v4[8])
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v3[8] = v17;
      if (v2 <= v4[9])
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v3[9] = v18;
      if (v2 <= v4[10])
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v3[10] = v19;
      if (v2 <= v4[11])
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v3[11] = v20;
      if (v2 <= v4[12])
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v3[12] = v21;
      if (v2 <= v4[13])
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v3[13] = v22;
      if (v2 <= v4[14])
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v3[14] = v23;
      if (v2 <= v4[15])
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v3[15] = v24;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_99;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_93;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_87;
    case 6:
      goto LABEL_84;
    case 7:
      goto LABEL_81;
    case 8:
      goto LABEL_78;
    case 9:
      goto LABEL_75;
    case 0xA:
      goto LABEL_72;
    case 0xB:
      goto LABEL_69;
    case 0xC:
      goto LABEL_66;
    case 0xD:
      goto LABEL_63;
    case 0xE:
      goto LABEL_60;
    case 0xF:
      v27 = 0.0;
      if (v2 > *v4)
      {
        v27 = 1.0;
      }

      *v3 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v2 > v4[v26])
      {
        v28 = 1.0;
      }

      v3[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v2 > v4[v26])
      {
        v29 = 1.0;
      }

      v3[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v2 > v4[v26])
      {
        v30 = 1.0;
      }

      v3[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v2 > v4[v26])
      {
        v31 = 1.0;
      }

      v3[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v2 > v4[v26])
      {
        v32 = 1.0;
      }

      v3[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v2 > v4[v26])
      {
        v33 = 1.0;
      }

      v3[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v2 > v4[v26])
      {
        v34 = 1.0;
      }

      v3[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v2 > v4[v26])
      {
        v35 = 1.0;
      }

      v3[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v2 > v4[v26])
      {
        v36 = 1.0;
      }

      v3[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v2 > v4[v26])
      {
        v37 = 1.0;
      }

      v3[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v2 > v4[v26])
      {
        v38 = 1.0;
      }

      v3[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v2 > v4[v26])
      {
        v39 = 1.0;
      }

      v3[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v2 > v4[v26])
      {
        v40 = 1.0;
      }

      v3[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v2 > v4[v25])
      {
        v41 = 1.0;
      }

      v3[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}