void sub_15CB74(uint64_t a1)
{
  sub_15CC10(a1 - 48);

  operator delete();
}

uint64_t sub_15CC10(uint64_t a1)
{
  *a1 = off_2637320;
  *(a1 + 48) = off_2637380;
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

void sub_15CDB8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2637408;
  *(a1 + 48) = off_2637468;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_15D4B4(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_15D578(uint64_t a1)
{
  sub_15DB58(a1);

  operator delete();
}

double sub_15D5B0(uint64_t a1)
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
      if (v2 < *v4)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v3 = v9;
      if (v2 < v4[1])
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v3[1] = v10;
      if (v2 < v4[2])
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v3[2] = v11;
      if (v2 < v4[3])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v3[3] = v12;
      if (v2 < v4[4])
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v3[4] = v13;
      if (v2 < v4[5])
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v3[5] = v14;
      if (v2 < v4[6])
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v3[6] = v15;
      if (v2 < v4[7])
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v3[7] = v16;
      if (v2 < v4[8])
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v3[8] = v17;
      if (v2 < v4[9])
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v3[9] = v18;
      if (v2 < v4[10])
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v3[10] = v19;
      if (v2 < v4[11])
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v3[11] = v20;
      if (v2 < v4[12])
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v3[12] = v21;
      if (v2 < v4[13])
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v3[13] = v22;
      if (v2 < v4[14])
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v3[14] = v23;
      if (v2 < v4[15])
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
      if (v2 >= *v4)
      {
        v27 = 1.0;
      }

      *v3 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v2 >= v4[v26])
      {
        v28 = 1.0;
      }

      v3[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v2 >= v4[v26])
      {
        v29 = 1.0;
      }

      v3[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v2 >= v4[v26])
      {
        v30 = 1.0;
      }

      v3[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v2 >= v4[v26])
      {
        v31 = 1.0;
      }

      v3[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v2 >= v4[v26])
      {
        v32 = 1.0;
      }

      v3[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v2 >= v4[v26])
      {
        v33 = 1.0;
      }

      v3[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v2 >= v4[v26])
      {
        v34 = 1.0;
      }

      v3[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v2 >= v4[v26])
      {
        v35 = 1.0;
      }

      v3[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v2 >= v4[v26])
      {
        v36 = 1.0;
      }

      v3[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v2 >= v4[v26])
      {
        v37 = 1.0;
      }

      v3[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v2 >= v4[v26])
      {
        v38 = 1.0;
      }

      v3[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v2 >= v4[v26])
      {
        v39 = 1.0;
      }

      v3[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v2 >= v4[v26])
      {
        v40 = 1.0;
      }

      v3[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v2 >= v4[v25])
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

void sub_15DABC(uint64_t a1)
{
  sub_15DB58(a1 - 48);

  operator delete();
}

uint64_t sub_15DB58(uint64_t a1)
{
  *a1 = off_2637408;
  *(a1 + 48) = off_2637468;
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

void sub_15DD00(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_26374F0;
  *(a1 + 48) = off_2637550;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_15E3FC(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_15E4C0(uint64_t a1)
{
  sub_15EAA0(a1);

  operator delete();
}

double sub_15E4F8(uint64_t a1)
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
      if (v2 == *v4)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.0;
      }

      *v3 = v9;
      if (v2 == v4[1])
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      v3[1] = v10;
      if (v2 == v4[2])
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      v3[2] = v11;
      if (v2 == v4[3])
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v3[3] = v12;
      if (v2 == v4[4])
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }

      v3[4] = v13;
      if (v2 == v4[5])
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      v3[5] = v14;
      if (v2 == v4[6])
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      v3[6] = v15;
      if (v2 == v4[7])
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      v3[7] = v16;
      if (v2 == v4[8])
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      v3[8] = v17;
      if (v2 == v4[9])
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v3[9] = v18;
      if (v2 == v4[10])
      {
        v19 = 1.0;
      }

      else
      {
        v19 = 0.0;
      }

      v3[10] = v19;
      if (v2 == v4[11])
      {
        v20 = 1.0;
      }

      else
      {
        v20 = 0.0;
      }

      v3[11] = v20;
      if (v2 == v4[12])
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 0.0;
      }

      v3[12] = v21;
      if (v2 == v4[13])
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 0.0;
      }

      v3[13] = v22;
      if (v2 == v4[14])
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      v3[14] = v23;
      if (v2 == v4[15])
      {
        v24 = 1.0;
      }

      else
      {
        v24 = 0.0;
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
      if (v2 == *v4)
      {
        v27 = 1.0;
      }

      *v3 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v2 == v4[v26])
      {
        v28 = 1.0;
      }

      v3[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v2 == v4[v26])
      {
        v29 = 1.0;
      }

      v3[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v2 == v4[v26])
      {
        v30 = 1.0;
      }

      v3[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v2 == v4[v26])
      {
        v31 = 1.0;
      }

      v3[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v2 == v4[v26])
      {
        v32 = 1.0;
      }

      v3[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v2 == v4[v26])
      {
        v33 = 1.0;
      }

      v3[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v2 == v4[v26])
      {
        v34 = 1.0;
      }

      v3[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v2 == v4[v26])
      {
        v35 = 1.0;
      }

      v3[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v2 == v4[v26])
      {
        v36 = 1.0;
      }

      v3[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v2 == v4[v26])
      {
        v37 = 1.0;
      }

      v3[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v2 == v4[v26])
      {
        v38 = 1.0;
      }

      v3[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v2 == v4[v26])
      {
        v39 = 1.0;
      }

      v3[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v2 == v4[v26])
      {
        v40 = 1.0;
      }

      v3[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v2 == v4[v25])
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

void sub_15EA04(uint64_t a1)
{
  sub_15EAA0(a1 - 48);

  operator delete();
}

uint64_t sub_15EAA0(uint64_t a1)
{
  *a1 = off_26374F0;
  *(a1 + 48) = off_2637550;
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

void sub_15EC48(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_26375D8;
  *(a1 + 48) = off_2637638;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_15F344(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_15F408(uint64_t a1)
{
  sub_15F9E8(a1);

  operator delete();
}

double sub_15F440(uint64_t a1)
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
      if (v2 == *v4)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v3 = v9;
      if (v2 == v4[1])
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v3[1] = v10;
      if (v2 == v4[2])
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v3[2] = v11;
      if (v2 == v4[3])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v3[3] = v12;
      if (v2 == v4[4])
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v3[4] = v13;
      if (v2 == v4[5])
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v3[5] = v14;
      if (v2 == v4[6])
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v3[6] = v15;
      if (v2 == v4[7])
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v3[7] = v16;
      if (v2 == v4[8])
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v3[8] = v17;
      if (v2 == v4[9])
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v3[9] = v18;
      if (v2 == v4[10])
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v3[10] = v19;
      if (v2 == v4[11])
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v3[11] = v20;
      if (v2 == v4[12])
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v3[12] = v21;
      if (v2 == v4[13])
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v3[13] = v22;
      if (v2 == v4[14])
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v3[14] = v23;
      if (v2 == v4[15])
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
      if (v2 != *v4)
      {
        v27 = 1.0;
      }

      *v3 = v27;
      v26 = 1;
LABEL_60:
      v28 = 0.0;
      if (v2 != v4[v26])
      {
        v28 = 1.0;
      }

      v3[v26++] = v28;
LABEL_63:
      v29 = 0.0;
      if (v2 != v4[v26])
      {
        v29 = 1.0;
      }

      v3[v26++] = v29;
LABEL_66:
      v30 = 0.0;
      if (v2 != v4[v26])
      {
        v30 = 1.0;
      }

      v3[v26++] = v30;
LABEL_69:
      v31 = 0.0;
      if (v2 != v4[v26])
      {
        v31 = 1.0;
      }

      v3[v26++] = v31;
LABEL_72:
      v32 = 0.0;
      if (v2 != v4[v26])
      {
        v32 = 1.0;
      }

      v3[v26++] = v32;
LABEL_75:
      v33 = 0.0;
      if (v2 != v4[v26])
      {
        v33 = 1.0;
      }

      v3[v26++] = v33;
LABEL_78:
      v34 = 0.0;
      if (v2 != v4[v26])
      {
        v34 = 1.0;
      }

      v3[v26++] = v34;
LABEL_81:
      v35 = 0.0;
      if (v2 != v4[v26])
      {
        v35 = 1.0;
      }

      v3[v26++] = v35;
LABEL_84:
      v36 = 0.0;
      if (v2 != v4[v26])
      {
        v36 = 1.0;
      }

      v3[v26++] = v36;
LABEL_87:
      v37 = 0.0;
      if (v2 != v4[v26])
      {
        v37 = 1.0;
      }

      v3[v26++] = v37;
LABEL_90:
      v38 = 0.0;
      if (v2 != v4[v26])
      {
        v38 = 1.0;
      }

      v3[v26++] = v38;
LABEL_93:
      v39 = 0.0;
      if (v2 != v4[v26])
      {
        v39 = 1.0;
      }

      v3[v26++] = v39;
LABEL_96:
      v40 = 0.0;
      if (v2 != v4[v26])
      {
        v40 = 1.0;
      }

      v3[v26] = v40;
      v25 = v26 + 1;
LABEL_99:
      v41 = 0.0;
      if (v2 != v4[v25])
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

void sub_15F94C(uint64_t a1)
{
  sub_15F9E8(a1 - 48);

  operator delete();
}

uint64_t sub_15F9E8(uint64_t a1)
{
  *a1 = off_26375D8;
  *(a1 + 48) = off_2637638;
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

void sub_15FB90(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_26376C0;
  *(a1 + 48) = off_2637720;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_16028C(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_160350(uint64_t a1)
{
  sub_160FF0(a1);

  operator delete();
}

double sub_160388(uint64_t a1)
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
    v9 = -v2;
    if (v2 >= 0.0)
    {
      v9 = v2;
    }

    do
    {
      v10 = *v4;
      v11 = v2 - *v4;
      if (v11 < 0.0)
      {
        v11 = -v11;
      }

      if (v10 < 0.0)
      {
        v10 = -v10;
      }

      if (v9 >= v10)
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

      *v3 = v12;
      v13 = v4[1];
      v14 = v2 - v13;
      if (v2 - v13 < 0.0)
      {
        v14 = -(v2 - v13);
      }

      if (v13 < 0.0)
      {
        v13 = -v13;
      }

      if (v9 >= v13)
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

      v3[1] = v15;
      v16 = v4[2];
      v17 = v2 - v16;
      if (v2 - v16 < 0.0)
      {
        v17 = -(v2 - v16);
      }

      if (v16 < 0.0)
      {
        v16 = -v16;
      }

      if (v9 >= v16)
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

      v3[2] = v18;
      v19 = v4[3];
      v20 = v2 - v19;
      if (v2 - v19 < 0.0)
      {
        v20 = -(v2 - v19);
      }

      if (v19 < 0.0)
      {
        v19 = -v19;
      }

      if (v9 >= v19)
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

      v3[3] = v21;
      v22 = v4[4];
      v23 = v2 - v22;
      if (v2 - v22 < 0.0)
      {
        v23 = -(v2 - v22);
      }

      if (v22 < 0.0)
      {
        v22 = -v22;
      }

      if (v9 >= v22)
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

      v3[4] = v24;
      v25 = v4[5];
      v26 = v2 - v25;
      if (v2 - v25 < 0.0)
      {
        v26 = -(v2 - v25);
      }

      if (v25 < 0.0)
      {
        v25 = -v25;
      }

      if (v9 >= v25)
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

      v3[5] = v27;
      v28 = v4[6];
      v29 = v2 - v28;
      if (v2 - v28 < 0.0)
      {
        v29 = -(v2 - v28);
      }

      if (v28 < 0.0)
      {
        v28 = -v28;
      }

      if (v9 >= v28)
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

      v3[6] = v30;
      v31 = v4[7];
      v32 = v2 - v31;
      if (v2 - v31 < 0.0)
      {
        v32 = -(v2 - v31);
      }

      if (v31 < 0.0)
      {
        v31 = -v31;
      }

      if (v9 >= v31)
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

      v3[7] = v33;
      v34 = v4[8];
      v35 = v2 - v34;
      if (v2 - v34 < 0.0)
      {
        v35 = -(v2 - v34);
      }

      if (v34 < 0.0)
      {
        v34 = -v34;
      }

      if (v9 >= v34)
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

      v3[8] = v36;
      v37 = v4[9];
      v38 = v2 - v37;
      if (v2 - v37 < 0.0)
      {
        v38 = -(v2 - v37);
      }

      if (v37 < 0.0)
      {
        v37 = -v37;
      }

      if (v9 >= v37)
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

      v3[9] = v39;
      v40 = v4[10];
      v41 = v2 - v40;
      if (v2 - v40 < 0.0)
      {
        v41 = -(v2 - v40);
      }

      if (v40 < 0.0)
      {
        v40 = -v40;
      }

      if (v9 >= v40)
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

      v3[10] = v42;
      v43 = v4[11];
      v44 = v2 - v43;
      if (v2 - v43 < 0.0)
      {
        v44 = -(v2 - v43);
      }

      if (v43 < 0.0)
      {
        v43 = -v43;
      }

      if (v9 >= v43)
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

      v3[11] = v45;
      v46 = v4[12];
      v47 = v2 - v46;
      if (v2 - v46 < 0.0)
      {
        v47 = -(v2 - v46);
      }

      if (v46 < 0.0)
      {
        v46 = -v46;
      }

      if (v9 >= v46)
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

      v3[12] = v48;
      v49 = v4[13];
      v50 = v2 - v49;
      if (v2 - v49 < 0.0)
      {
        v50 = -(v2 - v49);
      }

      if (v49 < 0.0)
      {
        v49 = -v49;
      }

      if (v9 >= v49)
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

      v3[13] = v51;
      v52 = v4[14];
      v53 = v2 - v52;
      if (v2 - v52 < 0.0)
      {
        v53 = -(v2 - v52);
      }

      if (v52 < 0.0)
      {
        v52 = -v52;
      }

      if (v9 >= v52)
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

      v3[14] = v54;
      v55 = v4[15];
      v56 = v2 - v55;
      if (v2 - v55 < 0.0)
      {
        v56 = -(v2 - v55);
      }

      if (v55 < 0.0)
      {
        v55 = -v55;
      }

      if (v9 >= v55)
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

      v3[15] = v57;
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
      v67 = *v4;
      v68 = v2 - *v4;
      v69 = -v68;
      if (v68 >= 0.0)
      {
        v69 = v2 - *v4;
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

      if (v67 < 0.0)
      {
        v67 = -v67;
      }

      if (v70 >= v67)
      {
        v67 = v70;
      }

      v71 = v69 > fmax(v67, 1.0) * 1.0e-10;
      v72 = 0.0;
      if (!v71)
      {
        v72 = 1.0;
      }

      *v3 = v72;
      v61 = 1;
LABEL_174:
      v73 = v4[v61];
      v74 = v2 - v73;
      if (v2 - v73 < 0.0)
      {
        v74 = -(v2 - v73);
      }

      if (v2 >= 0.0)
      {
        v75 = v2;
      }

      else
      {
        v75 = v59;
      }

      if (v73 < 0.0)
      {
        v73 = -v73;
      }

      if (v75 >= v73)
      {
        v73 = v75;
      }

      v71 = v74 > fmax(v73, 1.0) * 1.0e-10;
      v76 = 0.0;
      if (!v71)
      {
        v76 = 1.0;
      }

      v3[v61] = v76;
      v77 = v61 + 1;
LABEL_190:
      v81 = v4[v77];
      v82 = v2 - v81;
      if (v2 - v81 < 0.0)
      {
        v82 = -(v2 - v81);
      }

      if (v2 >= 0.0)
      {
        v83 = v2;
      }

      else
      {
        v83 = v59;
      }

      if (v81 < 0.0)
      {
        v81 = -v81;
      }

      if (v83 >= v81)
      {
        v81 = v83;
      }

      v71 = v82 > fmax(v81, 1.0) * 1.0e-10;
      v84 = 0.0;
      if (!v71)
      {
        v84 = 1.0;
      }

      v3[v77] = v84;
      v64 = v77 + 1;
LABEL_202:
      v85 = v4[v64];
      v86 = v2 - v85;
      if (v2 - v85 < 0.0)
      {
        v86 = -(v2 - v85);
      }

      if (v2 >= 0.0)
      {
        v87 = v2;
      }

      else
      {
        v87 = v59;
      }

      if (v85 < 0.0)
      {
        v85 = -v85;
      }

      if (v87 >= v85)
      {
        v85 = v87;
      }

      v71 = v86 > fmax(v85, 1.0) * 1.0e-10;
      v88 = 0.0;
      if (!v71)
      {
        v88 = 1.0;
      }

      v3[v64] = v88;
      v62 = v64 + 1;
LABEL_214:
      v89 = v4[v62];
      v90 = v2 - v89;
      if (v2 - v89 < 0.0)
      {
        v90 = -(v2 - v89);
      }

      if (v2 >= 0.0)
      {
        v91 = v2;
      }

      else
      {
        v91 = v59;
      }

      if (v89 < 0.0)
      {
        v89 = -v89;
      }

      if (v91 >= v89)
      {
        v89 = v91;
      }

      v71 = v90 > fmax(v89, 1.0) * 1.0e-10;
      v92 = 0.0;
      if (!v71)
      {
        v92 = 1.0;
      }

      v3[v62] = v92;
      v93 = v62 + 1;
LABEL_226:
      v94 = v4[v93];
      v95 = v2 - v94;
      if (v2 - v94 < 0.0)
      {
        v95 = -(v2 - v94);
      }

      if (v2 >= 0.0)
      {
        v96 = v2;
      }

      else
      {
        v96 = v59;
      }

      if (v94 < 0.0)
      {
        v94 = -v94;
      }

      if (v96 >= v94)
      {
        v94 = v96;
      }

      v71 = v95 > fmax(v94, 1.0) * 1.0e-10;
      v97 = 0.0;
      if (!v71)
      {
        v97 = 1.0;
      }

      v3[v93] = v97;
      v65 = v93 + 1;
LABEL_238:
      v98 = v4[v65];
      v99 = v2 - v98;
      if (v2 - v98 < 0.0)
      {
        v99 = -(v2 - v98);
      }

      if (v2 >= 0.0)
      {
        v100 = v2;
      }

      else
      {
        v100 = v59;
      }

      if (v98 < 0.0)
      {
        v98 = -v98;
      }

      if (v100 >= v98)
      {
        v98 = v100;
      }

      v71 = v99 > fmax(v98, 1.0) * 1.0e-10;
      v101 = 0.0;
      if (!v71)
      {
        v101 = 1.0;
      }

      v3[v65] = v101;
      v102 = v65 + 1;
LABEL_250:
      v103 = v4[v102];
      v104 = v2 - v103;
      if (v2 - v103 < 0.0)
      {
        v104 = -(v2 - v103);
      }

      if (v2 >= 0.0)
      {
        v105 = v2;
      }

      else
      {
        v105 = v59;
      }

      if (v103 < 0.0)
      {
        v103 = -v103;
      }

      if (v105 >= v103)
      {
        v103 = v105;
      }

      v71 = v104 > fmax(v103, 1.0) * 1.0e-10;
      v106 = 0.0;
      if (!v71)
      {
        v106 = 1.0;
      }

      v3[v102] = v106;
      v79 = v102 + 1;
LABEL_262:
      v107 = v4[v79];
      v108 = v2 - v107;
      if (v2 - v107 < 0.0)
      {
        v108 = -(v2 - v107);
      }

      if (v2 >= 0.0)
      {
        v109 = v2;
      }

      else
      {
        v109 = v59;
      }

      if (v107 < 0.0)
      {
        v107 = -v107;
      }

      if (v109 >= v107)
      {
        v107 = v109;
      }

      v71 = v108 > fmax(v107, 1.0) * 1.0e-10;
      v110 = 0.0;
      if (!v71)
      {
        v110 = 1.0;
      }

      v3[v79] = v110;
      v111 = v79 + 1;
LABEL_274:
      v112 = v4[v111];
      v113 = v2 - v112;
      if (v2 - v112 < 0.0)
      {
        v113 = -(v2 - v112);
      }

      if (v2 >= 0.0)
      {
        v114 = v2;
      }

      else
      {
        v114 = v59;
      }

      if (v112 < 0.0)
      {
        v112 = -v112;
      }

      if (v114 >= v112)
      {
        v112 = v114;
      }

      v71 = v113 > fmax(v112, 1.0) * 1.0e-10;
      v115 = 0.0;
      if (!v71)
      {
        v115 = 1.0;
      }

      v3[v111] = v115;
      v80 = v111 + 1;
LABEL_286:
      v116 = v4[v80];
      v117 = v2 - v116;
      if (v2 - v116 < 0.0)
      {
        v117 = -(v2 - v116);
      }

      if (v2 >= 0.0)
      {
        v118 = v2;
      }

      else
      {
        v118 = v59;
      }

      if (v116 < 0.0)
      {
        v116 = -v116;
      }

      if (v118 >= v116)
      {
        v116 = v118;
      }

      v71 = v117 > fmax(v116, 1.0) * 1.0e-10;
      v119 = 0.0;
      if (!v71)
      {
        v119 = 1.0;
      }

      v3[v80] = v119;
      v63 = v80 + 1;
LABEL_298:
      v120 = v4[v63];
      v121 = v2 - v120;
      if (v2 - v120 < 0.0)
      {
        v121 = -(v2 - v120);
      }

      if (v2 >= 0.0)
      {
        v122 = v2;
      }

      else
      {
        v122 = v59;
      }

      if (v120 < 0.0)
      {
        v120 = -v120;
      }

      if (v122 >= v120)
      {
        v120 = v122;
      }

      v71 = v121 > fmax(v120, 1.0) * 1.0e-10;
      v123 = 0.0;
      if (!v71)
      {
        v123 = 1.0;
      }

      v3[v63] = v123;
      v78 = v63 + 1;
LABEL_310:
      v124 = v4[v78];
      v125 = v2 - v124;
      if (v2 - v124 < 0.0)
      {
        v125 = -(v2 - v124);
      }

      if (v2 >= 0.0)
      {
        v126 = v2;
      }

      else
      {
        v126 = v59;
      }

      if (v124 < 0.0)
      {
        v124 = -v124;
      }

      if (v126 >= v124)
      {
        v124 = v126;
      }

      v71 = v125 > fmax(v124, 1.0) * 1.0e-10;
      v127 = 0.0;
      if (!v71)
      {
        v127 = 1.0;
      }

      v3[v78] = v127;
      v66 = v78 + 1;
LABEL_322:
      v128 = v4[v66];
      v129 = v2 - v128;
      if (v2 - v128 < 0.0)
      {
        v129 = -(v2 - v128);
      }

      if (v2 >= 0.0)
      {
        v130 = v2;
      }

      else
      {
        v130 = v59;
      }

      if (v128 < 0.0)
      {
        v128 = -v128;
      }

      if (v130 >= v128)
      {
        v128 = v130;
      }

      v71 = v129 > fmax(v128, 1.0) * 1.0e-10;
      v131 = 0.0;
      if (!v71)
      {
        v131 = 1.0;
      }

      v3[v66] = v131;
      v58 = (v66 + 1);
LABEL_334:
      v132 = v4[v58];
      v133 = v2 - v132;
      if (v2 - v132 < 0.0)
      {
        v133 = -(v2 - v132);
      }

      if (v2 >= 0.0)
      {
        v59 = v2;
      }

      if (v132 < 0.0)
      {
        v132 = -v132;
      }

      if (v59 < v132)
      {
        v59 = v132;
      }

      v71 = v133 > fmax(v59, 1.0) * 1.0e-10;
      v134 = 0.0;
      if (!v71)
      {
        v134 = 1.0;
      }

      v3[v58] = v134;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_160F54(uint64_t a1)
{
  sub_160FF0(a1 - 48);

  operator delete();
}

uint64_t sub_160FF0(uint64_t a1)
{
  *a1 = off_26376C0;
  *(a1 + 48) = off_2637720;
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

void sub_161198(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_26377A8;
  *(a1 + 48) = off_2637808;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_161894(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_161958(uint64_t a1)
{
  sub_161FFC(a1);

  operator delete();
}

double sub_161990(uint64_t a1)
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
      if (v2 != 0.0 && *v4 != 0.0)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.0;
      }

      *v3 = v9;
      if (v2 != 0.0 && v4[1] != 0.0)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      v3[1] = v10;
      if (v2 != 0.0 && v4[2] != 0.0)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      v3[2] = v11;
      if (v2 != 0.0 && v4[3] != 0.0)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v3[3] = v12;
      if (v2 != 0.0 && v4[4] != 0.0)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }

      v3[4] = v13;
      if (v2 != 0.0 && v4[5] != 0.0)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      v3[5] = v14;
      if (v2 != 0.0 && v4[6] != 0.0)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      v3[6] = v15;
      if (v2 != 0.0 && v4[7] != 0.0)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      v3[7] = v16;
      if (v2 != 0.0 && v4[8] != 0.0)
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      v3[8] = v17;
      if (v2 != 0.0 && v4[9] != 0.0)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v3[9] = v18;
      if (v2 != 0.0 && v4[10] != 0.0)
      {
        v19 = 1.0;
      }

      else
      {
        v19 = 0.0;
      }

      v3[10] = v19;
      if (v2 != 0.0 && v4[11] != 0.0)
      {
        v20 = 1.0;
      }

      else
      {
        v20 = 0.0;
      }

      v3[11] = v20;
      if (v2 != 0.0 && v4[12] != 0.0)
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 0.0;
      }

      v3[12] = v21;
      if (v2 != 0.0 && v4[13] != 0.0)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 0.0;
      }

      v3[13] = v22;
      if (v2 != 0.0 && v4[14] != 0.0)
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      v3[14] = v23;
      if (v2 != 0.0 && v4[15] != 0.0)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = 0.0;
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
      v27 = 0.0;
      if (*v4 != 0.0 && v2 != 0.0)
      {
        v27 = 1.0;
      }

      *v3 = v27;
      v26 = 1;
LABEL_63:
      v29 = 0.0;
      if (v4[v26] != 0.0 && v2 != 0.0)
      {
        v29 = 1.0;
      }

      v3[v26++] = v29;
LABEL_69:
      v31 = 0.0;
      if (v4[v26] != 0.0 && v2 != 0.0)
      {
        v31 = 1.0;
      }

      v3[v26++] = v31;
LABEL_75:
      v33 = 0.0;
      if (v4[v26] != 0.0 && v2 != 0.0)
      {
        v33 = 1.0;
      }

      v3[v26++] = v33;
LABEL_81:
      v35 = 0.0;
      if (v4[v26] != 0.0 && v2 != 0.0)
      {
        v35 = 1.0;
      }

      v3[v26++] = v35;
LABEL_87:
      v37 = 0.0;
      if (v4[v26] != 0.0 && v2 != 0.0)
      {
        v37 = 1.0;
      }

      v3[v26++] = v37;
LABEL_93:
      v39 = 0.0;
      if (v4[v26] != 0.0 && v2 != 0.0)
      {
        v39 = 1.0;
      }

      v3[v26++] = v39;
LABEL_99:
      v41 = 0.0;
      if (v4[v26] != 0.0 && v2 != 0.0)
      {
        v41 = 1.0;
      }

      v3[v26++] = v41;
LABEL_105:
      v43 = 0.0;
      if (v4[v26] != 0.0 && v2 != 0.0)
      {
        v43 = 1.0;
      }

      v3[v26++] = v43;
LABEL_111:
      v45 = 0.0;
      if (v4[v26] != 0.0 && v2 != 0.0)
      {
        v45 = 1.0;
      }

      v3[v26++] = v45;
LABEL_117:
      v47 = 0.0;
      if (v4[v26] != 0.0 && v2 != 0.0)
      {
        v47 = 1.0;
      }

      v3[v26++] = v47;
LABEL_123:
      v49 = 0.0;
      if (v4[v26] != 0.0 && v2 != 0.0)
      {
        v49 = 1.0;
      }

      v3[v26++] = v49;
LABEL_129:
      v51 = 0.0;
      if (v4[v26] != 0.0 && v2 != 0.0)
      {
        v51 = 1.0;
      }

      v3[v26++] = v51;
LABEL_135:
      v53 = 0.0;
      if (v4[v26] != 0.0 && v2 != 0.0)
      {
        v53 = 1.0;
      }

      v3[v26] = v53;
      v25 = v26 + 1;
LABEL_141:
      v55 = 0.0;
      if (v4[v25] != 0.0 && v2 != 0.0)
      {
        v55 = 1.0;
      }

      v3[v25] = v55;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_161F60(uint64_t a1)
{
  sub_161FFC(a1 - 48);

  operator delete();
}

uint64_t sub_161FFC(uint64_t a1)
{
  *a1 = off_26377A8;
  *(a1 + 48) = off_2637808;
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

void sub_1621A4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2637890;
  *(a1 + 48) = off_26378F0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_1628A0(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_162964(uint64_t a1)
{
  sub_163008(a1);

  operator delete();
}

double sub_16299C(uint64_t a1)
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
      if (v2 != 0.0 && *v4 != 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *v3 = v9;
      if (v2 != 0.0 && v4[1] != 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v3[1] = v10;
      if (v2 != 0.0 && v4[2] != 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v3[2] = v11;
      if (v2 != 0.0 && v4[3] != 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v3[3] = v12;
      if (v2 != 0.0 && v4[4] != 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v3[4] = v13;
      if (v2 != 0.0 && v4[5] != 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v3[5] = v14;
      if (v2 != 0.0 && v4[6] != 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v3[6] = v15;
      if (v2 != 0.0 && v4[7] != 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v3[7] = v16;
      if (v2 != 0.0 && v4[8] != 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v3[8] = v17;
      if (v2 != 0.0 && v4[9] != 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v3[9] = v18;
      if (v2 != 0.0 && v4[10] != 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v3[10] = v19;
      if (v2 != 0.0 && v4[11] != 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v3[11] = v20;
      if (v2 != 0.0 && v4[12] != 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v3[12] = v21;
      if (v2 != 0.0 && v4[13] != 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v3[13] = v22;
      if (v2 != 0.0 && v4[14] != 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v3[14] = v23;
      if (v2 != 0.0 && v4[15] != 0.0)
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
      v27 = 0.0;
      if (*v4 == 0.0 || v2 == 0.0)
      {
        v27 = 1.0;
      }

      *v3 = v27;
      v26 = 1;
LABEL_64:
      v29 = 0.0;
      if (v4[v26] == 0.0 || v2 == 0.0)
      {
        v29 = 1.0;
      }

      v3[v26++] = v29;
LABEL_71:
      v31 = 0.0;
      if (v4[v26] == 0.0 || v2 == 0.0)
      {
        v31 = 1.0;
      }

      v3[v26++] = v31;
LABEL_78:
      v33 = 0.0;
      if (v4[v26] == 0.0 || v2 == 0.0)
      {
        v33 = 1.0;
      }

      v3[v26++] = v33;
LABEL_85:
      v35 = 0.0;
      if (v4[v26] == 0.0 || v2 == 0.0)
      {
        v35 = 1.0;
      }

      v3[v26++] = v35;
LABEL_92:
      v37 = 0.0;
      if (v4[v26] == 0.0 || v2 == 0.0)
      {
        v37 = 1.0;
      }

      v3[v26++] = v37;
LABEL_99:
      v39 = 0.0;
      if (v4[v26] == 0.0 || v2 == 0.0)
      {
        v39 = 1.0;
      }

      v3[v26++] = v39;
LABEL_106:
      v41 = 0.0;
      if (v4[v26] == 0.0 || v2 == 0.0)
      {
        v41 = 1.0;
      }

      v3[v26++] = v41;
LABEL_113:
      v43 = 0.0;
      if (v4[v26] == 0.0 || v2 == 0.0)
      {
        v43 = 1.0;
      }

      v3[v26++] = v43;
LABEL_120:
      v45 = 0.0;
      if (v4[v26] == 0.0 || v2 == 0.0)
      {
        v45 = 1.0;
      }

      v3[v26++] = v45;
LABEL_127:
      v47 = 0.0;
      if (v4[v26] == 0.0 || v2 == 0.0)
      {
        v47 = 1.0;
      }

      v3[v26++] = v47;
LABEL_134:
      v49 = 0.0;
      if (v4[v26] == 0.0 || v2 == 0.0)
      {
        v49 = 1.0;
      }

      v3[v26++] = v49;
LABEL_141:
      v51 = 0.0;
      if (v4[v26] == 0.0 || v2 == 0.0)
      {
        v51 = 1.0;
      }

      v3[v26++] = v51;
LABEL_148:
      v53 = 0.0;
      if (v4[v26] == 0.0 || v2 == 0.0)
      {
        v53 = 1.0;
      }

      v3[v26] = v53;
      v25 = v26 + 1;
LABEL_155:
      v55 = 0.0;
      if (v4[v25] == 0.0 || v2 == 0.0)
      {
        v55 = 1.0;
      }

      v3[v25] = v55;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_162F6C(uint64_t a1)
{
  sub_163008(a1 - 48);

  operator delete();
}

uint64_t sub_163008(uint64_t a1)
{
  *a1 = off_2637890;
  *(a1 + 48) = off_26378F0;
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

void sub_1631B0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2637978;
  *(a1 + 48) = off_26379D8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_1638AC(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_163970(uint64_t a1)
{
  sub_164014(a1);

  operator delete();
}

double sub_1639A8(uint64_t a1)
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
      v9 = v2 != 0.0;
      if (*v4 != 0.0 || v2 != 0.0)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      *v3 = v11;
      if (v4[1] != 0.0 || v2 != 0.0)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }

      v3[1] = v13;
      if (v4[2] != 0.0 || v2 != 0.0)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      v3[2] = v15;
      if (v4[3] != 0.0 || v2 != 0.0)
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      v3[3] = v17;
      if (v4[4] != 0.0 || v2 != 0.0)
      {
        v19 = 1.0;
      }

      else
      {
        v19 = 0.0;
      }

      v3[4] = v19;
      if (v4[5] != 0.0 || v2 != 0.0)
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 0.0;
      }

      v3[5] = v21;
      if (v4[6] != 0.0 || v2 != 0.0)
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      v3[6] = v23;
      if (v4[7] != 0.0 || v2 != 0.0)
      {
        v25 = 1.0;
      }

      else
      {
        v25 = 0.0;
      }

      v3[7] = v25;
      if (v4[8] != 0.0 || v2 != 0.0)
      {
        v27 = 1.0;
      }

      else
      {
        v27 = 0.0;
      }

      v3[8] = v27;
      if (v4[9] != 0.0 || v2 != 0.0)
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 0.0;
      }

      v3[9] = v29;
      if (v4[10] != 0.0 || v2 != 0.0)
      {
        v31 = 1.0;
      }

      else
      {
        v31 = 0.0;
      }

      v3[10] = v31;
      if (v4[11] != 0.0 || v2 != 0.0)
      {
        v33 = 1.0;
      }

      else
      {
        v33 = 0.0;
      }

      v3[11] = v33;
      if (v4[12] != 0.0 || v2 != 0.0)
      {
        v35 = 1.0;
      }

      else
      {
        v35 = 0.0;
      }

      v3[12] = v35;
      if (v4[13] != 0.0 || v2 != 0.0)
      {
        v37 = 1.0;
      }

      else
      {
        v37 = 0.0;
      }

      v3[13] = v37;
      if (v4[14] != 0.0 || v2 != 0.0)
      {
        v39 = 1.0;
      }

      else
      {
        v39 = 0.0;
      }

      v3[14] = v39;
      if (v4[15] != 0.0)
      {
        v9 = 1;
      }

      if (v9)
      {
        v40 = 1.0;
      }

      else
      {
        v40 = 0.0;
      }

      v3[15] = v40;
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
      goto LABEL_188;
    case 2:
      goto LABEL_182;
    case 3:
      goto LABEL_176;
    case 4:
      goto LABEL_170;
    case 5:
      goto LABEL_164;
    case 6:
      goto LABEL_158;
    case 7:
      goto LABEL_152;
    case 8:
      goto LABEL_146;
    case 9:
      goto LABEL_140;
    case 0xA:
      goto LABEL_134;
    case 0xB:
      goto LABEL_128;
    case 0xC:
      goto LABEL_122;
    case 0xD:
      goto LABEL_116;
    case 0xE:
      goto LABEL_110;
    case 0xF:
      v43 = 0.0;
      if (*v4 != 0.0 || v2 != 0.0)
      {
        v43 = 1.0;
      }

      *v3 = v43;
      v42 = 1;
LABEL_110:
      v45 = 0.0;
      if (v4[v42] != 0.0 || v2 != 0.0)
      {
        v45 = 1.0;
      }

      v3[v42++] = v45;
LABEL_116:
      v47 = 0.0;
      if (v4[v42] != 0.0 || v2 != 0.0)
      {
        v47 = 1.0;
      }

      v3[v42++] = v47;
LABEL_122:
      v49 = 0.0;
      if (v4[v42] != 0.0 || v2 != 0.0)
      {
        v49 = 1.0;
      }

      v3[v42++] = v49;
LABEL_128:
      v51 = 0.0;
      if (v4[v42] != 0.0 || v2 != 0.0)
      {
        v51 = 1.0;
      }

      v3[v42++] = v51;
LABEL_134:
      v53 = 0.0;
      if (v4[v42] != 0.0 || v2 != 0.0)
      {
        v53 = 1.0;
      }

      v3[v42++] = v53;
LABEL_140:
      v55 = 0.0;
      if (v4[v42] != 0.0 || v2 != 0.0)
      {
        v55 = 1.0;
      }

      v3[v42++] = v55;
LABEL_146:
      v57 = 0.0;
      if (v4[v42] != 0.0 || v2 != 0.0)
      {
        v57 = 1.0;
      }

      v3[v42++] = v57;
LABEL_152:
      v59 = 0.0;
      if (v4[v42] != 0.0 || v2 != 0.0)
      {
        v59 = 1.0;
      }

      v3[v42++] = v59;
LABEL_158:
      v61 = 0.0;
      if (v4[v42] != 0.0 || v2 != 0.0)
      {
        v61 = 1.0;
      }

      v3[v42++] = v61;
LABEL_164:
      v63 = 0.0;
      if (v4[v42] != 0.0 || v2 != 0.0)
      {
        v63 = 1.0;
      }

      v3[v42++] = v63;
LABEL_170:
      v65 = 0.0;
      if (v4[v42] != 0.0 || v2 != 0.0)
      {
        v65 = 1.0;
      }

      v3[v42++] = v65;
LABEL_176:
      v67 = 0.0;
      if (v4[v42] != 0.0 || v2 != 0.0)
      {
        v67 = 1.0;
      }

      v3[v42++] = v67;
LABEL_182:
      v69 = 0.0;
      if (v4[v42] != 0.0 || v2 != 0.0)
      {
        v69 = 1.0;
      }

      v3[v42] = v69;
      v41 = v42 + 1;
LABEL_188:
      v71 = 0.0;
      if (v4[v41] != 0.0 || v2 != 0.0)
      {
        v71 = 1.0;
      }

      v3[v41] = v71;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_163F78(uint64_t a1)
{
  sub_164014(a1 - 48);

  operator delete();
}

uint64_t sub_164014(uint64_t a1)
{
  *a1 = off_2637978;
  *(a1 + 48) = off_26379D8;
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

void sub_1641BC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2637A60;
  *(a1 + 48) = off_2637AC0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_1648B8(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_16497C(uint64_t a1)
{
  sub_165020(a1);

  operator delete();
}

double sub_1649B4(uint64_t a1)
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
      v9 = v2 != 0.0;
      if (*v4 != 0.0 || v2 != 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      *v3 = v11;
      if (v4[1] != 0.0 || v2 != 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v3[1] = v13;
      if (v4[2] != 0.0 || v2 != 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v3[2] = v15;
      if (v4[3] != 0.0 || v2 != 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v3[3] = v17;
      if (v4[4] != 0.0 || v2 != 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v3[4] = v19;
      if (v4[5] != 0.0 || v2 != 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v3[5] = v21;
      if (v4[6] != 0.0 || v2 != 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v3[6] = v23;
      if (v4[7] != 0.0 || v2 != 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = 1.0;
      }

      v3[7] = v25;
      if (v4[8] != 0.0 || v2 != 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = 1.0;
      }

      v3[8] = v27;
      if (v4[9] != 0.0 || v2 != 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = 1.0;
      }

      v3[9] = v29;
      if (v4[10] != 0.0 || v2 != 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = 1.0;
      }

      v3[10] = v31;
      if (v4[11] != 0.0 || v2 != 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = 1.0;
      }

      v3[11] = v33;
      if (v4[12] != 0.0 || v2 != 0.0)
      {
        v35 = 0.0;
      }

      else
      {
        v35 = 1.0;
      }

      v3[12] = v35;
      if (v4[13] != 0.0 || v2 != 0.0)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = 1.0;
      }

      v3[13] = v37;
      if (v4[14] != 0.0 || v2 != 0.0)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = 1.0;
      }

      v3[14] = v39;
      if (v4[15] != 0.0)
      {
        v9 = 1;
      }

      if (v9)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = 1.0;
      }

      v3[15] = v40;
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
      goto LABEL_202;
    case 2:
      goto LABEL_195;
    case 3:
      goto LABEL_188;
    case 4:
      goto LABEL_181;
    case 5:
      goto LABEL_174;
    case 6:
      goto LABEL_167;
    case 7:
      goto LABEL_160;
    case 8:
      goto LABEL_153;
    case 9:
      goto LABEL_146;
    case 0xA:
      goto LABEL_139;
    case 0xB:
      goto LABEL_132;
    case 0xC:
      goto LABEL_125;
    case 0xD:
      goto LABEL_118;
    case 0xE:
      goto LABEL_111;
    case 0xF:
      v43 = 0.0;
      if (*v4 == 0.0 && v2 == 0.0)
      {
        v43 = 1.0;
      }

      *v3 = v43;
      v42 = 1;
LABEL_111:
      v45 = 0.0;
      if (v4[v42] == 0.0 && v2 == 0.0)
      {
        v45 = 1.0;
      }

      v3[v42++] = v45;
LABEL_118:
      v47 = 0.0;
      if (v4[v42] == 0.0 && v2 == 0.0)
      {
        v47 = 1.0;
      }

      v3[v42++] = v47;
LABEL_125:
      v49 = 0.0;
      if (v4[v42] == 0.0 && v2 == 0.0)
      {
        v49 = 1.0;
      }

      v3[v42++] = v49;
LABEL_132:
      v51 = 0.0;
      if (v4[v42] == 0.0 && v2 == 0.0)
      {
        v51 = 1.0;
      }

      v3[v42++] = v51;
LABEL_139:
      v53 = 0.0;
      if (v4[v42] == 0.0 && v2 == 0.0)
      {
        v53 = 1.0;
      }

      v3[v42++] = v53;
LABEL_146:
      v55 = 0.0;
      if (v4[v42] == 0.0 && v2 == 0.0)
      {
        v55 = 1.0;
      }

      v3[v42++] = v55;
LABEL_153:
      v57 = 0.0;
      if (v4[v42] == 0.0 && v2 == 0.0)
      {
        v57 = 1.0;
      }

      v3[v42++] = v57;
LABEL_160:
      v59 = 0.0;
      if (v4[v42] == 0.0 && v2 == 0.0)
      {
        v59 = 1.0;
      }

      v3[v42++] = v59;
LABEL_167:
      v61 = 0.0;
      if (v4[v42] == 0.0 && v2 == 0.0)
      {
        v61 = 1.0;
      }

      v3[v42++] = v61;
LABEL_174:
      v63 = 0.0;
      if (v4[v42] == 0.0 && v2 == 0.0)
      {
        v63 = 1.0;
      }

      v3[v42++] = v63;
LABEL_181:
      v65 = 0.0;
      if (v4[v42] == 0.0 && v2 == 0.0)
      {
        v65 = 1.0;
      }

      v3[v42++] = v65;
LABEL_188:
      v67 = 0.0;
      if (v4[v42] == 0.0 && v2 == 0.0)
      {
        v67 = 1.0;
      }

      v3[v42++] = v67;
LABEL_195:
      v69 = 0.0;
      if (v4[v42] == 0.0 && v2 == 0.0)
      {
        v69 = 1.0;
      }

      v3[v42] = v69;
      v41 = v42 + 1;
LABEL_202:
      v71 = 0.0;
      if (v4[v41] == 0.0 && v2 == 0.0)
      {
        v71 = 1.0;
      }

      v3[v41] = v71;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_164F84(uint64_t a1)
{
  sub_165020(a1 - 48);

  operator delete();
}

uint64_t sub_165020(uint64_t a1)
{
  *a1 = off_2637A60;
  *(a1 + 48) = off_2637AC0;
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

void sub_1651C8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2637B48;
  *(a1 + 48) = off_2637BA8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_1658C4(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_165988(uint64_t a1)
{
  sub_16615C(a1);

  operator delete();
}

double sub_1659C0(uint64_t a1)
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
      v9 = v2 == 0.0;
      if (v9 != (*v4 == 0.0))
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      *v3 = v10;
      if (v9 != (v4[1] == 0.0))
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      v3[1] = v11;
      if (v9 != (v4[2] == 0.0))
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v3[2] = v12;
      if (v9 != (v4[3] == 0.0))
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }

      v3[3] = v13;
      if (v9 != (v4[4] == 0.0))
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      v3[4] = v14;
      if (v9 != (v4[5] == 0.0))
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      v3[5] = v15;
      if (v9 != (v4[6] == 0.0))
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      v3[6] = v16;
      if (v9 != (v4[7] == 0.0))
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      v3[7] = v17;
      if (v9 != (v4[8] == 0.0))
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v3[8] = v18;
      if (v9 != (v4[9] == 0.0))
      {
        v19 = 1.0;
      }

      else
      {
        v19 = 0.0;
      }

      v3[9] = v19;
      if (v9 != (v4[10] == 0.0))
      {
        v20 = 1.0;
      }

      else
      {
        v20 = 0.0;
      }

      v3[10] = v20;
      if (v9 != (v4[11] == 0.0))
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 0.0;
      }

      v3[11] = v21;
      if (v9 != (v4[12] == 0.0))
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 0.0;
      }

      v3[12] = v22;
      if (v9 != (v4[13] == 0.0))
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      v3[13] = v23;
      if (v9 != (v4[14] == 0.0))
      {
        v24 = 1.0;
      }

      else
      {
        v24 = 0.0;
      }

      v3[14] = v24;
      if (v9 != (v4[15] == 0.0))
      {
        v25 = 1.0;
      }

      else
      {
        v25 = 0.0;
      }

      v3[15] = v25;
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
      if ((v2 == 0.0) != (*v4 == 0.0))
      {
        v28 = 1.0;
      }

      *v3 = v28;
      v27 = 1;
LABEL_60:
      v29 = 0.0;
      if ((v2 == 0.0) != (v4[v27] == 0.0))
      {
        v29 = 1.0;
      }

      v3[v27++] = v29;
LABEL_63:
      v30 = 0.0;
      if ((v2 == 0.0) != (v4[v27] == 0.0))
      {
        v30 = 1.0;
      }

      v3[v27++] = v30;
LABEL_66:
      v31 = 0.0;
      if ((v2 == 0.0) != (v4[v27] == 0.0))
      {
        v31 = 1.0;
      }

      v3[v27++] = v31;
LABEL_69:
      v32 = 0.0;
      if ((v2 == 0.0) != (v4[v27] == 0.0))
      {
        v32 = 1.0;
      }

      v3[v27++] = v32;
LABEL_72:
      v33 = 0.0;
      if ((v2 == 0.0) != (v4[v27] == 0.0))
      {
        v33 = 1.0;
      }

      v3[v27++] = v33;
LABEL_75:
      v34 = 0.0;
      if ((v2 == 0.0) != (v4[v27] == 0.0))
      {
        v34 = 1.0;
      }

      v3[v27++] = v34;
LABEL_78:
      v35 = 0.0;
      if ((v2 == 0.0) != (v4[v27] == 0.0))
      {
        v35 = 1.0;
      }

      v3[v27++] = v35;
LABEL_81:
      v36 = 0.0;
      if ((v2 == 0.0) != (v4[v27] == 0.0))
      {
        v36 = 1.0;
      }

      v3[v27++] = v36;
LABEL_84:
      v37 = 0.0;
      if ((v2 == 0.0) != (v4[v27] == 0.0))
      {
        v37 = 1.0;
      }

      v3[v27++] = v37;
LABEL_87:
      v38 = 0.0;
      if ((v2 == 0.0) != (v4[v27] == 0.0))
      {
        v38 = 1.0;
      }

      v3[v27++] = v38;
LABEL_90:
      v39 = 0.0;
      if ((v2 == 0.0) != (v4[v27] == 0.0))
      {
        v39 = 1.0;
      }

      v3[v27++] = v39;
LABEL_93:
      v40 = 0.0;
      if ((v2 == 0.0) != (v4[v27] == 0.0))
      {
        v40 = 1.0;
      }

      v3[v27++] = v40;
LABEL_96:
      v41 = 0.0;
      if ((v2 == 0.0) != (v4[v27] == 0.0))
      {
        v41 = 1.0;
      }

      v3[v27] = v41;
      v26 = v27 + 1;
LABEL_99:
      v42 = 0.0;
      if ((v2 == 0.0) != (v4[v26] == 0.0))
      {
        v42 = 1.0;
      }

      v3[v26] = v42;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_1660C0(uint64_t a1)
{
  sub_16615C(a1 - 48);

  operator delete();
}

uint64_t sub_16615C(uint64_t a1)
{
  *a1 = off_2637B48;
  *(a1 + 48) = off_2637BA8;
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

void sub_166304(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2637C30;
  *(a1 + 48) = off_2637C90;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_166A00(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_166AC4(uint64_t a1)
{
  sub_167298(a1);

  operator delete();
}

double sub_166AFC(uint64_t a1)
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
      v9 = v2 != 0.0;
      if (v9 != (*v4 != 0.0))
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      *v3 = v10;
      if (v9 != (v4[1] != 0.0))
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      v3[1] = v11;
      if (v9 != (v4[2] != 0.0))
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v3[2] = v12;
      if (v9 != (v4[3] != 0.0))
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v3[3] = v13;
      if (v9 != (v4[4] != 0.0))
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v3[4] = v14;
      if (v9 != (v4[5] != 0.0))
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      v3[5] = v15;
      if (v9 != (v4[6] != 0.0))
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v3[6] = v16;
      if (v9 != (v4[7] != 0.0))
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v3[7] = v17;
      if (v9 != (v4[8] != 0.0))
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v3[8] = v18;
      if (v9 != (v4[9] != 0.0))
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }

      v3[9] = v19;
      if (v9 != (v4[10] != 0.0))
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      v3[10] = v20;
      if (v9 != (v4[11] != 0.0))
      {
        v21 = 0.0;
      }

      else
      {
        v21 = 1.0;
      }

      v3[11] = v21;
      if (v9 != (v4[12] != 0.0))
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      v3[12] = v22;
      if (v9 != (v4[13] != 0.0))
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }

      v3[13] = v23;
      if (v9 != (v4[14] != 0.0))
      {
        v24 = 0.0;
      }

      else
      {
        v24 = 1.0;
      }

      v3[14] = v24;
      if (v9 != (v4[15] != 0.0))
      {
        v25 = 0.0;
      }

      else
      {
        v25 = 1.0;
      }

      v3[15] = v25;
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
      if ((v2 != 0.0) != (*v4 != 0.0))
      {
        v28 = 0.0;
      }

      *v3 = v28;
      v27 = 1;
LABEL_60:
      v29 = 1.0;
      if ((v2 != 0.0) != (v4[v27] != 0.0))
      {
        v29 = 0.0;
      }

      v3[v27++] = v29;
LABEL_63:
      v30 = 1.0;
      if ((v2 != 0.0) != (v4[v27] != 0.0))
      {
        v30 = 0.0;
      }

      v3[v27++] = v30;
LABEL_66:
      v31 = 1.0;
      if ((v2 != 0.0) != (v4[v27] != 0.0))
      {
        v31 = 0.0;
      }

      v3[v27++] = v31;
LABEL_69:
      v32 = 1.0;
      if ((v2 != 0.0) != (v4[v27] != 0.0))
      {
        v32 = 0.0;
      }

      v3[v27++] = v32;
LABEL_72:
      v33 = 1.0;
      if ((v2 != 0.0) != (v4[v27] != 0.0))
      {
        v33 = 0.0;
      }

      v3[v27++] = v33;
LABEL_75:
      v34 = 1.0;
      if ((v2 != 0.0) != (v4[v27] != 0.0))
      {
        v34 = 0.0;
      }

      v3[v27++] = v34;
LABEL_78:
      v35 = 1.0;
      if ((v2 != 0.0) != (v4[v27] != 0.0))
      {
        v35 = 0.0;
      }

      v3[v27++] = v35;
LABEL_81:
      v36 = 1.0;
      if ((v2 != 0.0) != (v4[v27] != 0.0))
      {
        v36 = 0.0;
      }

      v3[v27++] = v36;
LABEL_84:
      v37 = 1.0;
      if ((v2 != 0.0) != (v4[v27] != 0.0))
      {
        v37 = 0.0;
      }

      v3[v27++] = v37;
LABEL_87:
      v38 = 1.0;
      if ((v2 != 0.0) != (v4[v27] != 0.0))
      {
        v38 = 0.0;
      }

      v3[v27++] = v38;
LABEL_90:
      v39 = 1.0;
      if ((v2 != 0.0) != (v4[v27] != 0.0))
      {
        v39 = 0.0;
      }

      v3[v27++] = v39;
LABEL_93:
      v40 = 1.0;
      if ((v2 != 0.0) != (v4[v27] != 0.0))
      {
        v40 = 0.0;
      }

      v3[v27++] = v40;
LABEL_96:
      v41 = 1.0;
      if ((v2 != 0.0) != (v4[v27] != 0.0))
      {
        v41 = 0.0;
      }

      v3[v27] = v41;
      v26 = v27 + 1;
LABEL_99:
      v42 = 1.0;
      if ((v2 != 0.0) != (v4[v26] != 0.0))
      {
        v42 = 0.0;
      }

      v3[v26] = v42;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_1671FC(uint64_t a1)
{
  sub_167298(a1 - 48);

  operator delete();
}

uint64_t sub_167298(uint64_t a1)
{
  *a1 = off_2637C30;
  *(a1 + 48) = off_2637C90;
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

void sub_167440(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2637D18;
  *(a1 + 48) = off_2637D78;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_167D44(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_167DE4(uint64_t a1)
{
  sub_168308(a1);

  operator delete();
}

double sub_167E1C(uint64_t a1)
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
      *v4 = *v2 + *v3;
      v4[1] = v2[1] + v3[1];
      v4[2] = v2[2] + v3[2];
      v4[3] = v2[3] + v3[3];
      v4[4] = v2[4] + v3[4];
      v4[5] = v2[5] + v3[5];
      v4[6] = v2[6] + v3[6];
      v4[7] = v2[7] + v3[7];
      v4[8] = v2[8] + v3[8];
      v4[9] = v2[9] + v3[9];
      v4[10] = v2[10] + v3[10];
      v4[11] = v2[11] + v3[11];
      v4[12] = v2[12] + v3[12];
      v4[13] = v2[13] + v3[13];
      v4[14] = v2[14] + v3[14];
      v4[15] = v2[15] + v3[15];
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
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
      *v4 = *v2 + *v3;
      v10 = 1;
LABEL_10:
      v4[v10] = v2[v10] + v3[v10];
      ++v10;
LABEL_11:
      v4[v10] = v2[v10] + v3[v10];
      ++v10;
LABEL_12:
      v4[v10] = v2[v10] + v3[v10];
      ++v10;
LABEL_13:
      v4[v10] = v2[v10] + v3[v10];
      ++v10;
LABEL_14:
      v4[v10] = v2[v10] + v3[v10];
      ++v10;
LABEL_15:
      v4[v10] = v2[v10] + v3[v10];
      ++v10;
LABEL_16:
      v4[v10] = v2[v10] + v3[v10];
      ++v10;
LABEL_17:
      v4[v10] = v2[v10] + v3[v10];
      ++v10;
LABEL_18:
      v4[v10] = v2[v10] + v3[v10];
      ++v10;
LABEL_19:
      v4[v10] = v2[v10] + v3[v10];
      ++v10;
LABEL_20:
      v4[v10] = v2[v10] + v3[v10];
      ++v10;
LABEL_21:
      v4[v10] = v2[v10] + v3[v10];
      ++v10;
LABEL_22:
      v4[v10] = v2[v10] + v3[v10];
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v2[v9] + v3[v9];
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_1682A0(uint64_t a1)
{
  sub_168308(a1 - 48);

  operator delete();
}

uint64_t sub_168308(uint64_t a1)
{
  *a1 = off_2637D18;
  *(a1 + 48) = off_2637D78;
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

void sub_1684B0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2637E00;
  *(a1 + 48) = off_2637E60;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_168DB4(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_168E54(uint64_t a1)
{
  sub_169378(a1);

  operator delete();
}

double sub_168E8C(uint64_t a1)
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
      *v4 = *v2 - *v3;
      v4[1] = v2[1] - v3[1];
      v4[2] = v2[2] - v3[2];
      v4[3] = v2[3] - v3[3];
      v4[4] = v2[4] - v3[4];
      v4[5] = v2[5] - v3[5];
      v4[6] = v2[6] - v3[6];
      v4[7] = v2[7] - v3[7];
      v4[8] = v2[8] - v3[8];
      v4[9] = v2[9] - v3[9];
      v4[10] = v2[10] - v3[10];
      v4[11] = v2[11] - v3[11];
      v4[12] = v2[12] - v3[12];
      v4[13] = v2[13] - v3[13];
      v4[14] = v2[14] - v3[14];
      v4[15] = v2[15] - v3[15];
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
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
      *v4 = *v2 - *v3;
      v10 = 1;
LABEL_10:
      v4[v10] = v2[v10] - v3[v10];
      ++v10;
LABEL_11:
      v4[v10] = v2[v10] - v3[v10];
      ++v10;
LABEL_12:
      v4[v10] = v2[v10] - v3[v10];
      ++v10;
LABEL_13:
      v4[v10] = v2[v10] - v3[v10];
      ++v10;
LABEL_14:
      v4[v10] = v2[v10] - v3[v10];
      ++v10;
LABEL_15:
      v4[v10] = v2[v10] - v3[v10];
      ++v10;
LABEL_16:
      v4[v10] = v2[v10] - v3[v10];
      ++v10;
LABEL_17:
      v4[v10] = v2[v10] - v3[v10];
      ++v10;
LABEL_18:
      v4[v10] = v2[v10] - v3[v10];
      ++v10;
LABEL_19:
      v4[v10] = v2[v10] - v3[v10];
      ++v10;
LABEL_20:
      v4[v10] = v2[v10] - v3[v10];
      ++v10;
LABEL_21:
      v4[v10] = v2[v10] - v3[v10];
      ++v10;
LABEL_22:
      v4[v10] = v2[v10] - v3[v10];
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v2[v9] - v3[v9];
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_169310(uint64_t a1)
{
  sub_169378(a1 - 48);

  operator delete();
}

uint64_t sub_169378(uint64_t a1)
{
  *a1 = off_2637E00;
  *(a1 + 48) = off_2637E60;
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

void sub_169520(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2637EE8;
  *(a1 + 48) = off_2637F48;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_169E24(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_169EC4(uint64_t a1)
{
  sub_16A3E8(a1);

  operator delete();
}

double sub_169EFC(uint64_t a1)
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
      *v4 = *v2 * *v3;
      v4[1] = v2[1] * v3[1];
      v4[2] = v2[2] * v3[2];
      v4[3] = v2[3] * v3[3];
      v4[4] = v2[4] * v3[4];
      v4[5] = v2[5] * v3[5];
      v4[6] = v2[6] * v3[6];
      v4[7] = v2[7] * v3[7];
      v4[8] = v2[8] * v3[8];
      v4[9] = v2[9] * v3[9];
      v4[10] = v2[10] * v3[10];
      v4[11] = v2[11] * v3[11];
      v4[12] = v2[12] * v3[12];
      v4[13] = v2[13] * v3[13];
      v4[14] = v2[14] * v3[14];
      v4[15] = v2[15] * v3[15];
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
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
      *v4 = *v2 * *v3;
      v10 = 1;
LABEL_10:
      v4[v10] = v2[v10] * v3[v10];
      ++v10;
LABEL_11:
      v4[v10] = v2[v10] * v3[v10];
      ++v10;
LABEL_12:
      v4[v10] = v2[v10] * v3[v10];
      ++v10;
LABEL_13:
      v4[v10] = v2[v10] * v3[v10];
      ++v10;
LABEL_14:
      v4[v10] = v2[v10] * v3[v10];
      ++v10;
LABEL_15:
      v4[v10] = v2[v10] * v3[v10];
      ++v10;
LABEL_16:
      v4[v10] = v2[v10] * v3[v10];
      ++v10;
LABEL_17:
      v4[v10] = v2[v10] * v3[v10];
      ++v10;
LABEL_18:
      v4[v10] = v2[v10] * v3[v10];
      ++v10;
LABEL_19:
      v4[v10] = v2[v10] * v3[v10];
      ++v10;
LABEL_20:
      v4[v10] = v2[v10] * v3[v10];
      ++v10;
LABEL_21:
      v4[v10] = v2[v10] * v3[v10];
      ++v10;
LABEL_22:
      v4[v10] = v2[v10] * v3[v10];
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v2[v9] * v3[v9];
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_16A380(uint64_t a1)
{
  sub_16A3E8(a1 - 48);

  operator delete();
}

uint64_t sub_16A3E8(uint64_t a1)
{
  *a1 = off_2637EE8;
  *(a1 + 48) = off_2637F48;
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

void sub_16A590(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2637FD0;
  *(a1 + 48) = off_2638030;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_16AE94(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_16AF34(uint64_t a1)
{
  sub_16B458(a1);

  operator delete();
}

double sub_16AF6C(uint64_t a1)
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
      *v4 = *v2 / *v3;
      v4[1] = v2[1] / v3[1];
      v4[2] = v2[2] / v3[2];
      v4[3] = v2[3] / v3[3];
      v4[4] = v2[4] / v3[4];
      v4[5] = v2[5] / v3[5];
      v4[6] = v2[6] / v3[6];
      v4[7] = v2[7] / v3[7];
      v4[8] = v2[8] / v3[8];
      v4[9] = v2[9] / v3[9];
      v4[10] = v2[10] / v3[10];
      v4[11] = v2[11] / v3[11];
      v4[12] = v2[12] / v3[12];
      v4[13] = v2[13] / v3[13];
      v4[14] = v2[14] / v3[14];
      v4[15] = v2[15] / v3[15];
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v8);
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
      *v4 = *v2 / *v3;
      v10 = 1;
LABEL_10:
      v4[v10] = v2[v10] / v3[v10];
      ++v10;
LABEL_11:
      v4[v10] = v2[v10] / v3[v10];
      ++v10;
LABEL_12:
      v4[v10] = v2[v10] / v3[v10];
      ++v10;
LABEL_13:
      v4[v10] = v2[v10] / v3[v10];
      ++v10;
LABEL_14:
      v4[v10] = v2[v10] / v3[v10];
      ++v10;
LABEL_15:
      v4[v10] = v2[v10] / v3[v10];
      ++v10;
LABEL_16:
      v4[v10] = v2[v10] / v3[v10];
      ++v10;
LABEL_17:
      v4[v10] = v2[v10] / v3[v10];
      ++v10;
LABEL_18:
      v4[v10] = v2[v10] / v3[v10];
      ++v10;
LABEL_19:
      v4[v10] = v2[v10] / v3[v10];
      ++v10;
LABEL_20:
      v4[v10] = v2[v10] / v3[v10];
      ++v10;
LABEL_21:
      v4[v10] = v2[v10] / v3[v10];
      ++v10;
LABEL_22:
      v4[v10] = v2[v10] / v3[v10];
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v2[v9] / v3[v9];
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_16B3F0(uint64_t a1)
{
  sub_16B458(a1 - 48);

  operator delete();
}

uint64_t sub_16B458(uint64_t a1)
{
  *a1 = off_2637FD0;
  *(a1 + 48) = off_2638030;
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

void sub_16B600(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_26380B8;
  *(a1 + 48) = off_2638118;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_16BF04(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_16BFA4(uint64_t a1)
{
  sub_16C4D8(a1);

  operator delete();
}

double sub_16BFDC(uint64_t a1)
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
    v9 = &v4[v8 / 8];
    do
    {
      *v4 = fmod(*v2, *v3);
      v4[1] = fmod(v2[1], v3[1]);
      v4[2] = fmod(v2[2], v3[2]);
      v4[3] = fmod(v2[3], v3[3]);
      v4[4] = fmod(v2[4], v3[4]);
      v4[5] = fmod(v2[5], v3[5]);
      v4[6] = fmod(v2[6], v3[6]);
      v4[7] = fmod(v2[7], v3[7]);
      v4[8] = fmod(v2[8], v3[8]);
      v4[9] = fmod(v2[9], v3[9]);
      v4[10] = fmod(v2[10], v3[10]);
      v4[11] = fmod(v2[11], v3[11]);
      v4[12] = fmod(v2[12], v3[12]);
      v4[13] = fmod(v2[13], v3[13]);
      v4[14] = fmod(v2[14], v3[14]);
      v4[15] = fmod(v2[15], v3[15]);
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v9);
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
      *v4 = fmod(*v2, *v3);
      v11 = 1;
LABEL_10:
      v4[v11] = fmod(v2[v11], v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = fmod(v2[v11], v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = fmod(v2[v11], v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = fmod(v2[v11], v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = fmod(v2[v11], v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = fmod(v2[v11], v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = fmod(v2[v11], v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = fmod(v2[v11], v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = fmod(v2[v11], v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = fmod(v2[v11], v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = fmod(v2[v11], v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = fmod(v2[v11], v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = fmod(v2[v11], v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = fmod(v2[v10], v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_16C470(uint64_t a1)
{
  sub_16C4D8(a1 - 48);

  operator delete();
}

uint64_t sub_16C4D8(uint64_t a1)
{
  *a1 = off_26380B8;
  *(a1 + 48) = off_2638118;
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

void sub_16C680(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_26381A0;
  *(a1 + 48) = off_2638200;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  operator new();
}

void sub_16CF84(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_16D024(uint64_t a1)
{
  sub_16D558(a1);

  operator delete();
}

double sub_16D05C(uint64_t a1)
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
    v9 = &v4[v8 / 8];
    do
    {
      *v4 = pow(*v2, *v3);
      v4[1] = pow(v2[1], v3[1]);
      v4[2] = pow(v2[2], v3[2]);
      v4[3] = pow(v2[3], v3[3]);
      v4[4] = pow(v2[4], v3[4]);
      v4[5] = pow(v2[5], v3[5]);
      v4[6] = pow(v2[6], v3[6]);
      v4[7] = pow(v2[7], v3[7]);
      v4[8] = pow(v2[8], v3[8]);
      v4[9] = pow(v2[9], v3[9]);
      v4[10] = pow(v2[10], v3[10]);
      v4[11] = pow(v2[11], v3[11]);
      v4[12] = pow(v2[12], v3[12]);
      v4[13] = pow(v2[13], v3[13]);
      v4[14] = pow(v2[14], v3[14]);
      v4[15] = pow(v2[15], v3[15]);
      v2 += 16;
      v3 += 16;
      v4 += 16;
    }

    while (v4 < v9);
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
      *v4 = pow(*v2, *v3);
      v11 = 1;
LABEL_10:
      v4[v11] = pow(v2[v11], v3[v11]);
      ++v11;
LABEL_11:
      v4[v11] = pow(v2[v11], v3[v11]);
      ++v11;
LABEL_12:
      v4[v11] = pow(v2[v11], v3[v11]);
      ++v11;
LABEL_13:
      v4[v11] = pow(v2[v11], v3[v11]);
      ++v11;
LABEL_14:
      v4[v11] = pow(v2[v11], v3[v11]);
      ++v11;
LABEL_15:
      v4[v11] = pow(v2[v11], v3[v11]);
      ++v11;
LABEL_16:
      v4[v11] = pow(v2[v11], v3[v11]);
      ++v11;
LABEL_17:
      v4[v11] = pow(v2[v11], v3[v11]);
      ++v11;
LABEL_18:
      v4[v11] = pow(v2[v11], v3[v11]);
      ++v11;
LABEL_19:
      v4[v11] = pow(v2[v11], v3[v11]);
      ++v11;
LABEL_20:
      v4[v11] = pow(v2[v11], v3[v11]);
      ++v11;
LABEL_21:
      v4[v11] = pow(v2[v11], v3[v11]);
      ++v11;
LABEL_22:
      v4[v11] = pow(v2[v11], v3[v11]);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = pow(v2[v10], v3[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_16D4F0(uint64_t a1)
{
  sub_16D558(a1 - 48);

  operator delete();
}

uint64_t sub_16D558(uint64_t a1)
{
  *a1 = off_26381A0;
  *(a1 + 48) = off_2638200;
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

void sub_16D70C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2638288;
  *(a1 + 48) = off_26382E8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_16DE08(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_16DECC(uint64_t a1)
{
  sub_16E3B0(a1);

  operator delete();
}

double sub_16DF04(uint64_t a1)
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
      *v4 = v2 + *v3;
      v4[1] = v2 + v3[1];
      v4[2] = v2 + v3[2];
      v4[3] = v2 + v3[3];
      v4[4] = v2 + v3[4];
      v4[5] = v2 + v3[5];
      v4[6] = v2 + v3[6];
      v4[7] = v2 + v3[7];
      v4[8] = v2 + v3[8];
      v4[9] = v2 + v3[9];
      v4[10] = v2 + v3[10];
      v4[11] = v2 + v3[11];
      v4[12] = v2 + v3[12];
      v4[13] = v2 + v3[13];
      v4[14] = v2 + v3[14];
      v4[15] = v2 + v3[15];
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
      *v4 = v2 + *v3;
      v10 = 1;
LABEL_10:
      v4[v10] = v2 + v3[v10];
      ++v10;
LABEL_11:
      v4[v10] = v2 + v3[v10];
      ++v10;
LABEL_12:
      v4[v10] = v2 + v3[v10];
      ++v10;
LABEL_13:
      v4[v10] = v2 + v3[v10];
      ++v10;
LABEL_14:
      v4[v10] = v2 + v3[v10];
      ++v10;
LABEL_15:
      v4[v10] = v2 + v3[v10];
      ++v10;
LABEL_16:
      v4[v10] = v2 + v3[v10];
      ++v10;
LABEL_17:
      v4[v10] = v2 + v3[v10];
      ++v10;
LABEL_18:
      v4[v10] = v2 + v3[v10];
      ++v10;
LABEL_19:
      v4[v10] = v2 + v3[v10];
      ++v10;
LABEL_20:
      v4[v10] = v2 + v3[v10];
      ++v10;
LABEL_21:
      v4[v10] = v2 + v3[v10];
      ++v10;
LABEL_22:
      v4[v10] = v2 + v3[v10];
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v2 + v3[v9];
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_16E314(uint64_t a1)
{
  sub_16E3B0(a1 - 48);

  operator delete();
}

uint64_t sub_16E3B0(uint64_t a1)
{
  *a1 = off_2638288;
  *(a1 + 48) = off_26382E8;
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

void sub_16E558(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2638370;
  *(a1 + 48) = off_26383D0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_16EC54(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_16ED18(uint64_t a1)
{
  sub_16F1FC(a1);

  operator delete();
}

double sub_16ED50(uint64_t a1)
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
      *v4 = *v3 - v2;
      v4[1] = v3[1] - v2;
      v4[2] = v3[2] - v2;
      v4[3] = v3[3] - v2;
      v4[4] = v3[4] - v2;
      v4[5] = v3[5] - v2;
      v4[6] = v3[6] - v2;
      v4[7] = v3[7] - v2;
      v4[8] = v3[8] - v2;
      v4[9] = v3[9] - v2;
      v4[10] = v3[10] - v2;
      v4[11] = v3[11] - v2;
      v4[12] = v3[12] - v2;
      v4[13] = v3[13] - v2;
      v4[14] = v3[14] - v2;
      v4[15] = v3[15] - v2;
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
      *v4 = *v3 - v2;
      v10 = 1;
LABEL_10:
      v4[v10] = v3[v10] - v2;
      ++v10;
LABEL_11:
      v4[v10] = v3[v10] - v2;
      ++v10;
LABEL_12:
      v4[v10] = v3[v10] - v2;
      ++v10;
LABEL_13:
      v4[v10] = v3[v10] - v2;
      ++v10;
LABEL_14:
      v4[v10] = v3[v10] - v2;
      ++v10;
LABEL_15:
      v4[v10] = v3[v10] - v2;
      ++v10;
LABEL_16:
      v4[v10] = v3[v10] - v2;
      ++v10;
LABEL_17:
      v4[v10] = v3[v10] - v2;
      ++v10;
LABEL_18:
      v4[v10] = v3[v10] - v2;
      ++v10;
LABEL_19:
      v4[v10] = v3[v10] - v2;
      ++v10;
LABEL_20:
      v4[v10] = v3[v10] - v2;
      ++v10;
LABEL_21:
      v4[v10] = v3[v10] - v2;
      ++v10;
LABEL_22:
      v4[v10] = v3[v10] - v2;
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v3[v9] - v2;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_16F160(uint64_t a1)
{
  sub_16F1FC(a1 - 48);

  operator delete();
}

uint64_t sub_16F1FC(uint64_t a1)
{
  *a1 = off_2638370;
  *(a1 + 48) = off_26383D0;
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

void sub_16F3A4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2638458;
  *(a1 + 48) = off_26384B8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_16FAA0(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_16FB64(uint64_t a1)
{
  sub_170048(a1);

  operator delete();
}

double sub_16FB9C(uint64_t a1)
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
      *v4 = v2 * *v3;
      v4[1] = v2 * v3[1];
      v4[2] = v2 * v3[2];
      v4[3] = v2 * v3[3];
      v4[4] = v2 * v3[4];
      v4[5] = v2 * v3[5];
      v4[6] = v2 * v3[6];
      v4[7] = v2 * v3[7];
      v4[8] = v2 * v3[8];
      v4[9] = v2 * v3[9];
      v4[10] = v2 * v3[10];
      v4[11] = v2 * v3[11];
      v4[12] = v2 * v3[12];
      v4[13] = v2 * v3[13];
      v4[14] = v2 * v3[14];
      v4[15] = v2 * v3[15];
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
      *v4 = v2 * *v3;
      v10 = 1;
LABEL_10:
      v4[v10] = v2 * v3[v10];
      ++v10;
LABEL_11:
      v4[v10] = v2 * v3[v10];
      ++v10;
LABEL_12:
      v4[v10] = v2 * v3[v10];
      ++v10;
LABEL_13:
      v4[v10] = v2 * v3[v10];
      ++v10;
LABEL_14:
      v4[v10] = v2 * v3[v10];
      ++v10;
LABEL_15:
      v4[v10] = v2 * v3[v10];
      ++v10;
LABEL_16:
      v4[v10] = v2 * v3[v10];
      ++v10;
LABEL_17:
      v4[v10] = v2 * v3[v10];
      ++v10;
LABEL_18:
      v4[v10] = v2 * v3[v10];
      ++v10;
LABEL_19:
      v4[v10] = v2 * v3[v10];
      ++v10;
LABEL_20:
      v4[v10] = v2 * v3[v10];
      ++v10;
LABEL_21:
      v4[v10] = v2 * v3[v10];
      ++v10;
LABEL_22:
      v4[v10] = v2 * v3[v10];
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v2 * v3[v9];
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_16FFAC(uint64_t a1)
{
  sub_170048(a1 - 48);

  operator delete();
}

uint64_t sub_170048(uint64_t a1)
{
  *a1 = off_2638458;
  *(a1 + 48) = off_26384B8;
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

void sub_1701F0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2638540;
  *(a1 + 48) = off_26385A0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_1708EC(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_1709B0(uint64_t a1)
{
  sub_170E94(a1);

  operator delete();
}

double sub_1709E8(uint64_t a1)
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
      *v4 = *v3 / v2;
      v4[1] = v3[1] / v2;
      v4[2] = v3[2] / v2;
      v4[3] = v3[3] / v2;
      v4[4] = v3[4] / v2;
      v4[5] = v3[5] / v2;
      v4[6] = v3[6] / v2;
      v4[7] = v3[7] / v2;
      v4[8] = v3[8] / v2;
      v4[9] = v3[9] / v2;
      v4[10] = v3[10] / v2;
      v4[11] = v3[11] / v2;
      v4[12] = v3[12] / v2;
      v4[13] = v3[13] / v2;
      v4[14] = v3[14] / v2;
      v4[15] = v3[15] / v2;
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
      *v4 = *v3 / v2;
      v10 = 1;
LABEL_10:
      v4[v10] = v3[v10] / v2;
      ++v10;
LABEL_11:
      v4[v10] = v3[v10] / v2;
      ++v10;
LABEL_12:
      v4[v10] = v3[v10] / v2;
      ++v10;
LABEL_13:
      v4[v10] = v3[v10] / v2;
      ++v10;
LABEL_14:
      v4[v10] = v3[v10] / v2;
      ++v10;
LABEL_15:
      v4[v10] = v3[v10] / v2;
      ++v10;
LABEL_16:
      v4[v10] = v3[v10] / v2;
      ++v10;
LABEL_17:
      v4[v10] = v3[v10] / v2;
      ++v10;
LABEL_18:
      v4[v10] = v3[v10] / v2;
      ++v10;
LABEL_19:
      v4[v10] = v3[v10] / v2;
      ++v10;
LABEL_20:
      v4[v10] = v3[v10] / v2;
      ++v10;
LABEL_21:
      v4[v10] = v3[v10] / v2;
      ++v10;
LABEL_22:
      v4[v10] = v3[v10] / v2;
      v9 = v10 + 1;
LABEL_23:
      v4[v9] = v3[v9] / v2;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_170DF8(uint64_t a1)
{
  sub_170E94(a1 - 48);

  operator delete();
}

uint64_t sub_170E94(uint64_t a1)
{
  *a1 = off_2638540;
  *(a1 + 48) = off_26385A0;
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

void sub_17103C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2638628;
  *(a1 + 48) = off_2638688;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_171738(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_1717FC(uint64_t a1)
{
  sub_171D64(a1);

  operator delete();
}

double sub_171834(uint64_t a1)
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
      *v4 = fmod(*v3, v2);
      v4[1] = fmod(v3[1], v2);
      v4[2] = fmod(v3[2], v2);
      v4[3] = fmod(v3[3], v2);
      v4[4] = fmod(v3[4], v2);
      v4[5] = fmod(v3[5], v2);
      v4[6] = fmod(v3[6], v2);
      v4[7] = fmod(v3[7], v2);
      v4[8] = fmod(v3[8], v2);
      v4[9] = fmod(v3[9], v2);
      v4[10] = fmod(v3[10], v2);
      v4[11] = fmod(v3[11], v2);
      v4[12] = fmod(v3[12], v2);
      v4[13] = fmod(v3[13], v2);
      v4[14] = fmod(v3[14], v2);
      v4[15] = fmod(v3[15], v2);
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
      *v4 = fmod(*v3, v2);
      v11 = 1;
LABEL_10:
      v4[v11] = fmod(v3[v11], v2);
      ++v11;
LABEL_11:
      v4[v11] = fmod(v3[v11], v2);
      ++v11;
LABEL_12:
      v4[v11] = fmod(v3[v11], v2);
      ++v11;
LABEL_13:
      v4[v11] = fmod(v3[v11], v2);
      ++v11;
LABEL_14:
      v4[v11] = fmod(v3[v11], v2);
      ++v11;
LABEL_15:
      v4[v11] = fmod(v3[v11], v2);
      ++v11;
LABEL_16:
      v4[v11] = fmod(v3[v11], v2);
      ++v11;
LABEL_17:
      v4[v11] = fmod(v3[v11], v2);
      ++v11;
LABEL_18:
      v4[v11] = fmod(v3[v11], v2);
      ++v11;
LABEL_19:
      v4[v11] = fmod(v3[v11], v2);
      ++v11;
LABEL_20:
      v4[v11] = fmod(v3[v11], v2);
      ++v11;
LABEL_21:
      v4[v11] = fmod(v3[v11], v2);
      ++v11;
LABEL_22:
      v4[v11] = fmod(v3[v11], v2);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = fmod(v3[v10], v2);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_171CC8(uint64_t a1)
{
  sub_171D64(a1 - 48);

  operator delete();
}

uint64_t sub_171D64(uint64_t a1)
{
  *a1 = off_2638628;
  *(a1 + 48) = off_2638688;
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

void sub_171F0C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2638710;
  *(a1 + 48) = off_2638770;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_172608(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_1726CC(uint64_t a1)
{
  sub_172C34(a1);

  operator delete();
}

double sub_172704(uint64_t a1)
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
      *v4 = pow(*v3, v2);
      v4[1] = pow(v3[1], v2);
      v4[2] = pow(v3[2], v2);
      v4[3] = pow(v3[3], v2);
      v4[4] = pow(v3[4], v2);
      v4[5] = pow(v3[5], v2);
      v4[6] = pow(v3[6], v2);
      v4[7] = pow(v3[7], v2);
      v4[8] = pow(v3[8], v2);
      v4[9] = pow(v3[9], v2);
      v4[10] = pow(v3[10], v2);
      v4[11] = pow(v3[11], v2);
      v4[12] = pow(v3[12], v2);
      v4[13] = pow(v3[13], v2);
      v4[14] = pow(v3[14], v2);
      v4[15] = pow(v3[15], v2);
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
      *v4 = pow(*v3, v2);
      v11 = 1;
LABEL_10:
      v4[v11] = pow(v3[v11], v2);
      ++v11;
LABEL_11:
      v4[v11] = pow(v3[v11], v2);
      ++v11;
LABEL_12:
      v4[v11] = pow(v3[v11], v2);
      ++v11;
LABEL_13:
      v4[v11] = pow(v3[v11], v2);
      ++v11;
LABEL_14:
      v4[v11] = pow(v3[v11], v2);
      ++v11;
LABEL_15:
      v4[v11] = pow(v3[v11], v2);
      ++v11;
LABEL_16:
      v4[v11] = pow(v3[v11], v2);
      ++v11;
LABEL_17:
      v4[v11] = pow(v3[v11], v2);
      ++v11;
LABEL_18:
      v4[v11] = pow(v3[v11], v2);
      ++v11;
LABEL_19:
      v4[v11] = pow(v3[v11], v2);
      ++v11;
LABEL_20:
      v4[v11] = pow(v3[v11], v2);
      ++v11;
LABEL_21:
      v4[v11] = pow(v3[v11], v2);
      ++v11;
LABEL_22:
      v4[v11] = pow(v3[v11], v2);
      v10 = v11 + 1;
LABEL_23:
      v4[v10] = pow(v3[v10], v2);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_172B98(uint64_t a1)
{
  sub_172C34(a1 - 48);

  operator delete();
}

uint64_t sub_172C34(uint64_t a1)
{
  *a1 = off_2638710;
  *(a1 + 48) = off_2638770;
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

void sub_172DDC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_26387F8;
  *(a1 + 48) = off_2638858;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_1734D8(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_17359C(uint64_t a1)
{
  sub_173A80(a1);

  operator delete();
}

double sub_1735D4(uint64_t a1)
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
      *v3 = v2 + *v4;
      v3[1] = v2 + v4[1];
      v3[2] = v2 + v4[2];
      v3[3] = v2 + v4[3];
      v3[4] = v2 + v4[4];
      v3[5] = v2 + v4[5];
      v3[6] = v2 + v4[6];
      v3[7] = v2 + v4[7];
      v3[8] = v2 + v4[8];
      v3[9] = v2 + v4[9];
      v3[10] = v2 + v4[10];
      v3[11] = v2 + v4[11];
      v3[12] = v2 + v4[12];
      v3[13] = v2 + v4[13];
      v3[14] = v2 + v4[14];
      v3[15] = v2 + v4[15];
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
      *v3 = v2 + *v4;
      v10 = 1;
LABEL_10:
      v3[v10] = v2 + v4[v10];
      ++v10;
LABEL_11:
      v3[v10] = v2 + v4[v10];
      ++v10;
LABEL_12:
      v3[v10] = v2 + v4[v10];
      ++v10;
LABEL_13:
      v3[v10] = v2 + v4[v10];
      ++v10;
LABEL_14:
      v3[v10] = v2 + v4[v10];
      ++v10;
LABEL_15:
      v3[v10] = v2 + v4[v10];
      ++v10;
LABEL_16:
      v3[v10] = v2 + v4[v10];
      ++v10;
LABEL_17:
      v3[v10] = v2 + v4[v10];
      ++v10;
LABEL_18:
      v3[v10] = v2 + v4[v10];
      ++v10;
LABEL_19:
      v3[v10] = v2 + v4[v10];
      ++v10;
LABEL_20:
      v3[v10] = v2 + v4[v10];
      ++v10;
LABEL_21:
      v3[v10] = v2 + v4[v10];
      ++v10;
LABEL_22:
      v3[v10] = v2 + v4[v10];
      v9 = v10 + 1;
LABEL_23:
      v3[v9] = v2 + v4[v9];
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_1739E4(uint64_t a1)
{
  sub_173A80(a1 - 48);

  operator delete();
}

uint64_t sub_173A80(uint64_t a1)
{
  *a1 = off_26387F8;
  *(a1 + 48) = off_2638858;
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

void sub_173C28(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_26388E0;
  *(a1 + 48) = off_2638940;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_174324(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_1743E8(uint64_t a1)
{
  sub_1748CC(a1);

  operator delete();
}

double sub_174420(uint64_t a1)
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
      *v3 = v2 - *v4;
      v3[1] = v2 - v4[1];
      v3[2] = v2 - v4[2];
      v3[3] = v2 - v4[3];
      v3[4] = v2 - v4[4];
      v3[5] = v2 - v4[5];
      v3[6] = v2 - v4[6];
      v3[7] = v2 - v4[7];
      v3[8] = v2 - v4[8];
      v3[9] = v2 - v4[9];
      v3[10] = v2 - v4[10];
      v3[11] = v2 - v4[11];
      v3[12] = v2 - v4[12];
      v3[13] = v2 - v4[13];
      v3[14] = v2 - v4[14];
      v3[15] = v2 - v4[15];
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
      *v3 = v2 - *v4;
      v10 = 1;
LABEL_10:
      v3[v10] = v2 - v4[v10];
      ++v10;
LABEL_11:
      v3[v10] = v2 - v4[v10];
      ++v10;
LABEL_12:
      v3[v10] = v2 - v4[v10];
      ++v10;
LABEL_13:
      v3[v10] = v2 - v4[v10];
      ++v10;
LABEL_14:
      v3[v10] = v2 - v4[v10];
      ++v10;
LABEL_15:
      v3[v10] = v2 - v4[v10];
      ++v10;
LABEL_16:
      v3[v10] = v2 - v4[v10];
      ++v10;
LABEL_17:
      v3[v10] = v2 - v4[v10];
      ++v10;
LABEL_18:
      v3[v10] = v2 - v4[v10];
      ++v10;
LABEL_19:
      v3[v10] = v2 - v4[v10];
      ++v10;
LABEL_20:
      v3[v10] = v2 - v4[v10];
      ++v10;
LABEL_21:
      v3[v10] = v2 - v4[v10];
      ++v10;
LABEL_22:
      v3[v10] = v2 - v4[v10];
      v9 = v10 + 1;
LABEL_23:
      v3[v9] = v2 - v4[v9];
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_174830(uint64_t a1)
{
  sub_1748CC(a1 - 48);

  operator delete();
}

uint64_t sub_1748CC(uint64_t a1)
{
  *a1 = off_26388E0;
  *(a1 + 48) = off_2638940;
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

void sub_174A74(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_26389C8;
  *(a1 + 48) = off_2638A28;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_175170(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_175234(uint64_t a1)
{
  sub_175718(a1);

  operator delete();
}

double sub_17526C(uint64_t a1)
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
      *v3 = v2 * *v4;
      v3[1] = v2 * v4[1];
      v3[2] = v2 * v4[2];
      v3[3] = v2 * v4[3];
      v3[4] = v2 * v4[4];
      v3[5] = v2 * v4[5];
      v3[6] = v2 * v4[6];
      v3[7] = v2 * v4[7];
      v3[8] = v2 * v4[8];
      v3[9] = v2 * v4[9];
      v3[10] = v2 * v4[10];
      v3[11] = v2 * v4[11];
      v3[12] = v2 * v4[12];
      v3[13] = v2 * v4[13];
      v3[14] = v2 * v4[14];
      v3[15] = v2 * v4[15];
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
      *v3 = v2 * *v4;
      v10 = 1;
LABEL_10:
      v3[v10] = v2 * v4[v10];
      ++v10;
LABEL_11:
      v3[v10] = v2 * v4[v10];
      ++v10;
LABEL_12:
      v3[v10] = v2 * v4[v10];
      ++v10;
LABEL_13:
      v3[v10] = v2 * v4[v10];
      ++v10;
LABEL_14:
      v3[v10] = v2 * v4[v10];
      ++v10;
LABEL_15:
      v3[v10] = v2 * v4[v10];
      ++v10;
LABEL_16:
      v3[v10] = v2 * v4[v10];
      ++v10;
LABEL_17:
      v3[v10] = v2 * v4[v10];
      ++v10;
LABEL_18:
      v3[v10] = v2 * v4[v10];
      ++v10;
LABEL_19:
      v3[v10] = v2 * v4[v10];
      ++v10;
LABEL_20:
      v3[v10] = v2 * v4[v10];
      ++v10;
LABEL_21:
      v3[v10] = v2 * v4[v10];
      ++v10;
LABEL_22:
      v3[v10] = v2 * v4[v10];
      v9 = v10 + 1;
LABEL_23:
      v3[v9] = v2 * v4[v9];
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_17567C(uint64_t a1)
{
  sub_175718(a1 - 48);

  operator delete();
}

uint64_t sub_175718(uint64_t a1)
{
  *a1 = off_26389C8;
  *(a1 + 48) = off_2638A28;
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

void sub_1758C0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2638AB0;
  *(a1 + 48) = off_2638B10;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_175FBC(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_176080(uint64_t a1)
{
  sub_176564(a1);

  operator delete();
}

double sub_1760B8(uint64_t a1)
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
      *v3 = v2 / *v4;
      v3[1] = v2 / v4[1];
      v3[2] = v2 / v4[2];
      v3[3] = v2 / v4[3];
      v3[4] = v2 / v4[4];
      v3[5] = v2 / v4[5];
      v3[6] = v2 / v4[6];
      v3[7] = v2 / v4[7];
      v3[8] = v2 / v4[8];
      v3[9] = v2 / v4[9];
      v3[10] = v2 / v4[10];
      v3[11] = v2 / v4[11];
      v3[12] = v2 / v4[12];
      v3[13] = v2 / v4[13];
      v3[14] = v2 / v4[14];
      v3[15] = v2 / v4[15];
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
      *v3 = v2 / *v4;
      v10 = 1;
LABEL_10:
      v3[v10] = v2 / v4[v10];
      ++v10;
LABEL_11:
      v3[v10] = v2 / v4[v10];
      ++v10;
LABEL_12:
      v3[v10] = v2 / v4[v10];
      ++v10;
LABEL_13:
      v3[v10] = v2 / v4[v10];
      ++v10;
LABEL_14:
      v3[v10] = v2 / v4[v10];
      ++v10;
LABEL_15:
      v3[v10] = v2 / v4[v10];
      ++v10;
LABEL_16:
      v3[v10] = v2 / v4[v10];
      ++v10;
LABEL_17:
      v3[v10] = v2 / v4[v10];
      ++v10;
LABEL_18:
      v3[v10] = v2 / v4[v10];
      ++v10;
LABEL_19:
      v3[v10] = v2 / v4[v10];
      ++v10;
LABEL_20:
      v3[v10] = v2 / v4[v10];
      ++v10;
LABEL_21:
      v3[v10] = v2 / v4[v10];
      ++v10;
LABEL_22:
      v3[v10] = v2 / v4[v10];
      v9 = v10 + 1;
LABEL_23:
      v3[v9] = v2 / v4[v9];
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_1764C8(uint64_t a1)
{
  sub_176564(a1 - 48);

  operator delete();
}

uint64_t sub_176564(uint64_t a1)
{
  *a1 = off_2638AB0;
  *(a1 + 48) = off_2638B10;
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

void sub_17670C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = off_2638B98;
  *(a1 + 48) = off_2638BF8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  operator new();
}

void sub_176E08(_Unwind_Exception *a1)
{
  sub_F5710((v1 + 80));
  sub_12A624(v1);
  _Unwind_Resume(a1);
}

void sub_176ECC(uint64_t a1)
{
  sub_177434(a1);

  operator delete();
}

double sub_176F04(uint64_t a1)
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
      *v3 = fmod(v2, *v4);
      v3[1] = fmod(v2, v4[1]);
      v3[2] = fmod(v2, v4[2]);
      v3[3] = fmod(v2, v4[3]);
      v3[4] = fmod(v2, v4[4]);
      v3[5] = fmod(v2, v4[5]);
      v3[6] = fmod(v2, v4[6]);
      v3[7] = fmod(v2, v4[7]);
      v3[8] = fmod(v2, v4[8]);
      v3[9] = fmod(v2, v4[9]);
      v3[10] = fmod(v2, v4[10]);
      v3[11] = fmod(v2, v4[11]);
      v3[12] = fmod(v2, v4[12]);
      v3[13] = fmod(v2, v4[13]);
      v3[14] = fmod(v2, v4[14]);
      v3[15] = fmod(v2, v4[15]);
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
      *v3 = fmod(v2, *v4);
      v11 = 1;
LABEL_10:
      v3[v11] = fmod(v2, v4[v11]);
      ++v11;
LABEL_11:
      v3[v11] = fmod(v2, v4[v11]);
      ++v11;
LABEL_12:
      v3[v11] = fmod(v2, v4[v11]);
      ++v11;
LABEL_13:
      v3[v11] = fmod(v2, v4[v11]);
      ++v11;
LABEL_14:
      v3[v11] = fmod(v2, v4[v11]);
      ++v11;
LABEL_15:
      v3[v11] = fmod(v2, v4[v11]);
      ++v11;
LABEL_16:
      v3[v11] = fmod(v2, v4[v11]);
      ++v11;
LABEL_17:
      v3[v11] = fmod(v2, v4[v11]);
      ++v11;
LABEL_18:
      v3[v11] = fmod(v2, v4[v11]);
      ++v11;
LABEL_19:
      v3[v11] = fmod(v2, v4[v11]);
      ++v11;
LABEL_20:
      v3[v11] = fmod(v2, v4[v11]);
      ++v11;
LABEL_21:
      v3[v11] = fmod(v2, v4[v11]);
      ++v11;
LABEL_22:
      v3[v11] = fmod(v2, v4[v11]);
      v10 = v11 + 1;
LABEL_23:
      v3[v10] = fmod(v2, v4[v10]);
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}

void sub_177398(uint64_t a1)
{
  sub_177434(a1 - 48);

  operator delete();
}

uint64_t sub_177434(uint64_t a1)
{
  *a1 = off_2638B98;
  *(a1 + 48) = off_2638BF8;
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

uint64_t sub_1775DC(uint64_t result)
{
  *result = off_2638C80;
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

void sub_177660(uint64_t a1)
{
  *a1 = off_2638C80;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 16) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 8) = 0;
  }

  operator delete();
}

double sub_177700(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));
  result = 1.0;
  if (*(a1 + 17))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_177778(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  switch(*a3)
  {
    case 1:
      sub_177D88();
    case 2:
      sub_177E84();
    case 3:
      sub_177F80();
    case 4:
      sub_17807C();
    case 5:
      sub_178178();
    case 6:
      sub_178274();
    case 7:
      sub_178370();
    case 8:
      sub_17846C();
    case 9:
      sub_178568();
    case 0xA:
      sub_178664();
    case 0xB:
      sub_178760();
    case 0xC:
      sub_17885C();
    case 0xD:
      sub_178958();
    case 0xE:
      sub_178A54();
    case 0xF:
      sub_178B50();
    case 0x10:
      sub_178C4C();
    case 0x11:
      sub_178D48();
    case 0x12:
      sub_178E44();
    case 0x13:
      sub_178F40();
    case 0x14:
      sub_17903C();
    case 0x15:
      sub_179138();
    case 0x16:
      sub_179234();
    case 0x17:
      sub_179330();
    case 0x18:
      sub_17942C();
    case 0x19:
      sub_179528();
    case 0x1A:
      sub_179624();
    case 0x1B:
      sub_179720();
    case 0x1C:
      sub_17981C();
    case 0x1D:
      sub_179918();
    case 0x1E:
      sub_179A14();
    case 0x1F:
      sub_179B10();
    case 0x20:
      sub_179C0C();
    case 0x21:
      sub_179D08();
    case 0x22:
      sub_179E04();
    case 0x23:
      sub_179F00();
    case 0x24:
      sub_179FFC();
    case 0x25:
      sub_17A0F8();
    case 0x26:
      sub_17A1F4();
    case 0x27:
      sub_17A2F0();
    case 0x28:
      sub_17A3EC();
    case 0x29:
      sub_17A4E8();
    case 0x2A:
      sub_17A5E4();
    case 0x2B:
      sub_17A6E0();
    case 0x2C:
      sub_17A7DC();
    case 0x2D:
      sub_17A8D8();
    case 0x2E:
      sub_17A9D4();
    case 0x2F:
      sub_17AAD0();
    case 0x30:
      sub_17ABCC();
    case 0x31:
      sub_17ACC8();
    case 0x32:
      sub_17ADC4();
    case 0x33:
      sub_17AEC0();
    case 0x34:
      sub_17AFBC();
    case 0x35:
      sub_17B0B8();
    case 0x36:
      sub_17B1B4();
    case 0x37:
      sub_17B2B0();
    case 0x38:
      sub_17B3AC();
    case 0x39:
      sub_17B4A8();
    case 0x3A:
      sub_17B5A4();
    case 0x3B:
      sub_17B6A0();
    case 0x3C:
      sub_17B79C();
    default:
      return 0;
  }
}

uint64_t sub_177A80(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  switch(*a3)
  {
    case 1:
      sub_181280();
    case 2:
      sub_18137C();
    case 3:
      sub_181478();
    case 4:
      sub_181574();
    case 5:
      sub_181670();
    case 6:
      sub_18176C();
    case 7:
      sub_181868();
    case 8:
      sub_181964();
    case 9:
      sub_181A60();
    case 0xA:
      sub_181B5C();
    case 0xB:
      sub_181C58();
    case 0xC:
      sub_181D54();
    case 0xD:
      sub_181E50();
    case 0xE:
      sub_181F4C();
    case 0xF:
      sub_182048();
    case 0x10:
      sub_182144();
    case 0x11:
      sub_182240();
    case 0x12:
      sub_18233C();
    case 0x13:
      sub_182438();
    case 0x14:
      sub_182534();
    case 0x15:
      sub_182630();
    case 0x16:
      sub_18272C();
    case 0x17:
      sub_182828();
    case 0x18:
      sub_182924();
    case 0x19:
      sub_182A20();
    case 0x1A:
      sub_182B1C();
    case 0x1B:
      sub_182C18();
    case 0x1C:
      sub_182D14();
    case 0x1D:
      sub_182E10();
    case 0x1E:
      sub_182F0C();
    case 0x1F:
      sub_183008();
    case 0x20:
      sub_183104();
    case 0x21:
      sub_183200();
    case 0x22:
      sub_1832FC();
    case 0x23:
      sub_1833F8();
    case 0x24:
      sub_1834F4();
    case 0x25:
      sub_1835F0();
    case 0x26:
      sub_1836EC();
    case 0x27:
      sub_1837E8();
    case 0x28:
      sub_1838E4();
    case 0x29:
      sub_1839E0();
    case 0x2A:
      sub_183ADC();
    case 0x2B:
      sub_183BD8();
    case 0x2C:
      sub_183CD4();
    case 0x2D:
      sub_183DD0();
    case 0x2E:
      sub_183ECC();
    case 0x2F:
      sub_183FC8();
    case 0x30:
      sub_1840C4();
    case 0x31:
      sub_1841C0();
    case 0x32:
      sub_1842BC();
    case 0x33:
      sub_1843B8();
    case 0x34:
      sub_1844B4();
    case 0x35:
      sub_1845B0();
    case 0x36:
      sub_1846AC();
    case 0x37:
      sub_1847A8();
    case 0x38:
      sub_1848A4();
    case 0x39:
      sub_1849A0();
    case 0x3A:
      sub_184A9C();
    case 0x3B:
      sub_184B98();
    case 0x3C:
      sub_184C94();
    default:
      return 0;
  }
}