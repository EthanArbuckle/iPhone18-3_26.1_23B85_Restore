uint64_t sub_24B5D2BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v10 = *(a1 + v5 + 48);
      v9 = *(a1 + v5 + 56);
      v11 = *(a1 + v5 + 64);
      v12 = *(a1 + v5 + 72);
      v14 = *(a2 + v5 + 48);
      v13 = *(a2 + v5 + 56);
      v15 = *(a2 + v5 + 64);
      v16 = *(a2 + v5 + 72);
      if (*(a1 + v5 + 32) == *(a2 + v5 + 32) && *(a1 + v5 + 40) == *(a2 + v5 + 40))
      {
        if (v10 != v14 || v9 != v13 || v11 != v15 || v12 != v16)
        {
          return 0;
        }
      }

      else
      {
        v18 = sub_24B5FFECC();
        result = 0;
        if ((v18 & 1) == 0)
        {
          return result;
        }

        v20 = v10 == v14 && v9 == v13;
        v21 = v20 && v11 == v15;
        if (!v21 || v12 != v16)
        {
          return result;
        }
      }

      v5 += 48;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24B5D2CFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (!v4 || a1 == a2)
    {
      return 1;
    }

    v5 = (a1 + 32);
    v6 = (a2 + 32);
    for (i = v4 - 1; ; --i)
    {
      v7 = v5[1];
      v31 = *v5;
      v32 = v7;
      *v33 = v5[2];
      v19 = v6;
      v20 = v5;
      *&v33[9] = *(v5 + 41);
      v8 = v6[1];
      v34[0] = *v6;
      v34[1] = v8;
      *v35 = v6[2];
      *&v35[9] = *(v6 + 41);
      v9 = *(&v31 + 1);
      v10 = v32;
      v11 = *&v33[8];
      v24 = *&v33[16];
      v25 = v31;
      v12 = *(&v34[0] + 1);
      v22 = *&v34[0];
      v23 = *(&v32 + 1);
      v13 = v8;
      v14 = *&v35[8];
      v26 = *v35;
      v27 = *v33;
      v15 = *&v35[16];
      sub_24B57BAFC(&v31, v30, a3, a4);
      sub_24B57BAFC(v34, v30, a3, a4);
      if ((sub_24B584F70(v25, v22) & 1) == 0)
      {
        break;
      }

      if (v10)
      {
        if (!v13 || (v9 != v12 || v10 != v13) && (sub_24B5FFECC() & 1) == 0)
        {
          break;
        }
      }

      else if (v13)
      {
        break;
      }

      if ((v23 != *(&v13 + 1) || v27 != v26) && (sub_24B5FFECC() & 1) == 0 || (v11 != v14 || v24 != v15) && (sub_24B5FFECC() & 1) == 0)
      {
        break;
      }

      v16 = v33[24];
      v17 = v35[24];
      sub_24B58090C(v34, a3, a4);
      sub_24B58090C(&v31, a3, a4);
      if (v16 != v17)
      {
        return 0;
      }

      if (!i)
      {
        return 1;
      }

      v5 = v20 + 4;
      v6 = v19 + 4;
    }

    sub_24B58090C(v34, a3, a4);
    sub_24B58090C(&v31, a3, a4);
  }

  return 0;
}

uint64_t sub_24B5D2F30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    v26 = a2 + 32;
    v27 = *(a1 + 16);
    v25 = a1 + 32;
    while (1)
    {
      v6 = (v4 + 80 * v3);
      v7 = v6[3];
      v38 = v6[2];
      *v39 = v7;
      *&v39[9] = *(v6 + 57);
      v8 = v6[1];
      v36 = *v6;
      v37 = v8;
      v9 = (v5 + 80 * v3);
      *&v43[9] = *(v9 + 57);
      v10 = v9[3];
      v42 = v9[2];
      *v43 = v10;
      v11 = v9[1];
      v40 = *v9;
      v41 = v11;
      v12 = *(v36 + 16);
      if (v12 != *(v40 + 16))
      {
        break;
      }

      v13 = v37;
      v14 = v38;
      v15 = *(&v41 + 1);
      v16 = v42;
      if (v12 && v36 != v40)
      {
        v17 = (v36 + 32);
        v18 = (v40 + 32);
        while (*v17 == *v18)
        {
          ++v17;
          ++v18;
          if (!--v12)
          {
            goto LABEL_11;
          }
        }

        return 0;
      }

LABEL_11:
      v33 = *(&v40 + 1);
      v34 = *(&v36 + 1);
      v19 = v41;
      v20 = *(&v37 + 1);
      v28 = v3;
      v29 = *&v39[16];
      v31 = *v39;
      v32 = *v43;
      v21 = *&v39[8];
      v30 = *&v43[16];
      sub_24B57BAFC(&v36, v35, &qword_27F018BF8, &unk_24B601080);
      sub_24B57BAFC(&v40, v35, &qword_27F018BF8, &unk_24B601080);
      if ((sub_24B584F70(v34, v33) & 1) == 0)
      {
        goto LABEL_28;
      }

      if (v20)
      {
        if (!v15 || (v13 != v19 || v20 != v15) && (sub_24B5FFECC() & 1) == 0)
        {
LABEL_28:
          sub_24B58090C(&v40, &qword_27F018BF8, &unk_24B601080);
          sub_24B58090C(&v36, &qword_27F018BF8, &unk_24B601080);
          return 0;
        }
      }

      else if (v15)
      {
        goto LABEL_28;
      }

      if (v14 != v16 && (sub_24B5FFECC() & 1) == 0 || __PAIR128__(v21, v31) != v32 && (sub_24B5FFECC() & 1) == 0 || (sub_24B58600C(v29, v30) & 1) == 0)
      {
        goto LABEL_28;
      }

      v22 = v39[24];
      v23 = v43[24];
      sub_24B58090C(&v40, &qword_27F018BF8, &unk_24B601080);
      sub_24B58090C(&v36, &qword_27F018BF8, &unk_24B601080);
      if (v22 != v23)
      {
        return 0;
      }

      v3 = v28 + 1;
      if (v28 + 1 == v27)
      {
        return 1;
      }

      v4 = v25;
      v5 = v26;
    }
  }

  return 0;
}

uint64_t sub_24B5D321C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v36 = v2;
  v37 = v3;
  v5 = (a1 + 32);
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v7 = v5[3];
    v29 = v5[2];
    v30 = v7;
    v31 = *(v5 + 64);
    v8 = v5[1];
    v19 = v6;
    v20 = v5;
    v27 = *v5;
    v28 = v8;
    v9 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v9;
    v35 = *(v6 + 64);
    v10 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v10;
    v11 = *(&v27 + 1);
    v12 = v28;
    v25 = v27;
    v13 = v29;
    v23 = v30;
    v24 = *(&v29 + 1);
    *v14 = v32[0];
    *&v14[16] = v10;
    *&v14[32] = v33;
    v22 = *(&v30 + 1);
    v15 = v9;
    sub_24B57BAFC(&v27, v26, &qword_27F018BE0, &qword_24B602300);
    sub_24B57BAFC(v32, v26, &qword_27F018BE0, &qword_24B602300);
    if ((sub_24B584F70(v25, *v14) & 1) == 0)
    {
      goto LABEL_23;
    }

    if (v12)
    {
      if (!*&v14[16] || __PAIR128__(v12, v11) != *&v14[8] && (sub_24B5FFECC() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*&v14[16])
    {
      goto LABEL_23;
    }

    if (__PAIR128__(v13, *(&v12 + 1)) != *&v14[24] && (sub_24B5FFECC() & 1) == 0 || (v24 != *&v14[40] || v23 != v15) && (sub_24B5FFECC() & 1) == 0 || v22 != *(&v15 + 1))
    {
LABEL_23:
      sub_24B58090C(v32, &qword_27F018BE0, &qword_24B602300);
      sub_24B58090C(&v27, &qword_27F018BE0, &qword_24B602300);
      return 0;
    }

    v16 = v31;
    v17 = v35;
    sub_24B58090C(v32, &qword_27F018BE0, &qword_24B602300);
    sub_24B58090C(&v27, &qword_27F018BE0, &qword_24B602300);
    if (v16 != v17)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = v19 + 72;
    v5 = (v20 + 72);
  }

  return 1;
}

uint64_t sub_24B5D349C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (!v4 || a1 == a2)
    {
      return 1;
    }

    v5 = (a1 + 32);
    v6 = (a2 + 32);
    for (i = v4 - 1; ; --i)
    {
      v7 = v5[3];
      v33 = v5[2];
      *v34 = v7;
      *&v34[9] = *(v5 + 57);
      v8 = v5[1];
      v21 = v6;
      v22 = v5;
      v31 = *v5;
      v32 = v8;
      v9 = v6[3];
      v36 = v6[2];
      *v37 = v9;
      *&v37[9] = *(v6 + 57);
      v10 = v6[1];
      v35[0] = *v6;
      v35[1] = v10;
      v11 = *(&v31 + 1);
      *v12 = v32;
      *&v12[16] = v33;
      v25 = *v34;
      v13 = *&v34[16];
      v24 = *&v34[8];
      v14 = *(&v35[0] + 1);
      v26 = *&v35[0];
      v27 = v31;
      *v15 = v10;
      *&v15[16] = v36;
      v16 = *v37;
      v17 = *&v37[16];
      sub_24B57BAFC(&v31, v30, a3, a4);
      sub_24B57BAFC(v35, v30, a3, a4);
      if ((sub_24B584F70(v27, v26) & 1) == 0)
      {
        break;
      }

      if (*v12)
      {
        if (!*v15 || (v11 != v14 || *v12 != *v15) && (sub_24B5FFECC() & 1) == 0)
        {
          break;
        }
      }

      else if (*v15)
      {
        break;
      }

      if (*&v12[8] != *&v15[8] && (sub_24B5FFECC() & 1) == 0)
      {
        break;
      }

      if (v25)
      {
        if (!v16 || (*&v12[24] != *&v15[24] || v25 != v16) && (sub_24B5FFECC() & 1) == 0)
        {
          break;
        }
      }

      else if (v16)
      {
        break;
      }

      if ((v24 != *(&v16 + 1) || v13 != v17) && (sub_24B5FFECC() & 1) == 0)
      {
        break;
      }

      v18 = v34[24];
      v19 = v37[24];
      sub_24B58090C(v35, a3, a4);
      sub_24B58090C(&v31, a3, a4);
      if (v18 != v19)
      {
        return 0;
      }

      if (!i)
      {
        return 1;
      }

      v6 = v21 + 5;
      v5 = v22 + 5;
    }

    sub_24B58090C(v35, a3, a4);
    sub_24B58090C(&v31, a3, a4);
  }

  return 0;
}

uint64_t sub_24B5D372C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24B5FFECC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24B5D37BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v19 = v2;
  v20 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    *v17 = *v5;
    *&v17[16] = v8;
    v9 = v5[3];
    *&v17[32] = v5[2];
    *&v17[48] = v9;
    v10 = *v17;
    v11 = v6[1];
    *v18 = *v6;
    *&v18[16] = v11;
    v12 = v6[3];
    *&v18[32] = v6[2];
    *&v18[48] = v12;
    v13 = *v18;
    sub_24B5A1888(v17, v16);
    sub_24B5A1888(v18, v16);
    if ((sub_24B584F70(v10, v13) & 1) == 0)
    {
LABEL_22:
      sub_24B5C75FC(v18);
      sub_24B5C75FC(v17);
      return 0;
    }

    if (*&v17[16])
    {
      if (!*&v18[16] || *&v17[8] != *&v18[8] && (sub_24B5FFECC() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*&v18[16])
    {
      goto LABEL_22;
    }

    if (*&v17[24] != *&v18[24] && (sub_24B5FFECC() & 1) == 0)
    {
      goto LABEL_22;
    }

    if (*&v17[40] == *&v18[40])
    {
      sub_24B5C75FC(v18);
      sub_24B5C75FC(v17);
    }

    else
    {
      v14 = sub_24B5FFECC();
      sub_24B5C75FC(v18);
      sub_24B5C75FC(v17);
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    if (*&v17[56] != *&v18[56])
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

uint64_t sub_24B5D3968(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_24B5FFECC() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_24B5FFECC() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24B5D3A38(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v44 = v2;
  v45 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v7 = v5[1];
    v38[0] = *v5;
    v38[1] = v7;
    v8 = v5[3];
    v23 = v6;
    v24 = v5;
    v39 = v5[2];
    v40 = v8;
    v9 = *(&v7 + 1);
    v26 = *(&v7 + 1);
    v27 = v39;
    v11 = *(&v38[0] + 1);
    v10 = v7;
    v12 = *&v38[0];
    v13 = *v6;
    v14 = v6[1];
    v15 = v6[3];
    v16 = BYTE8(v39);
    v42 = v6[2];
    v43 = v15;
    v41[0] = v13;
    v41[1] = v14;
    v17 = v13;
    v18 = v14;
    v19 = v42;
    v20 = BYTE8(v42);
    v33 = v38[0];
    v34 = v10;
    v35 = v9;
    v36 = v39;
    v37 = BYTE8(v39);
    v29 = v13;
    v30 = v14;
    v31 = v42;
    v32 = BYTE8(v42);
    sub_24B5A208C(v38, v28);
    sub_24B5A208C(v41, v28);
    sub_24B57BA1C(v12, v11, v10, v26, v27, v16);
    sub_24B57BA1C(v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20);
    LOBYTE(v19) = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v33, &v29);
    sub_24B57BA04(v29, *(&v29 + 1), v30, *(&v30 + 1), v31, v32);
    sub_24B57BA04(v33, *(&v33 + 1), v34, v35, v36, v37);
    if ((v19 & 1) == 0)
    {
      sub_24B5A20C4(v41);
      sub_24B5A20C4(v38);
      return 0;
    }

    if (v40 == v43)
    {
      sub_24B5A20C4(v41);
      sub_24B5A20C4(v38);
    }

    else
    {
      v21 = sub_24B5FFECC();
      sub_24B5A20C4(v41);
      sub_24B5A20C4(v38);
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 = v23 + 4;
    v5 = v24 + 4;
  }

  return 1;
}

uint64_t sub_24B5D3C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 3)
      {
        if (*v3 > 5u)
        {
          if (v6 == 6)
          {
            v7 = 0x4E72656E69617274;
          }

          else
          {
            v7 = 0x6D614E656D656874;
          }

          if (v6 == 6)
          {
            v8 = 0xEB00000000656D61;
          }

          else
          {
            v8 = 0xE900000000000065;
          }
        }

        else if (v6 == 4)
        {
          v7 = 0x6E6547636973756DLL;
          v8 = 0xEE00656D614E6572;
        }

        else
        {
          v8 = 0xE400000000000000;
          v7 = 1701736302;
        }
      }

      else if (*v3 > 1u)
      {
        if (v6 == 2)
        {
          v8 = 0xE800000000000000;
          v7 = 0x6E6F697461727564;
        }

        else
        {
          v7 = 0x7974696C61646F6DLL;
          v8 = 0xEC000000656D614ELL;
        }
      }

      else
      {
        if (*v3)
        {
          v7 = 0x656C655265746164;
        }

        else
        {
          v7 = 0xD000000000000013;
        }

        if (*v3)
        {
          v8 = 0xEC00000064657361;
        }

        else
        {
          v8 = 0x800000024B609D90;
        }
      }

      v9 = *v4;
      if (v9 > 3)
      {
        if (*v4 > 5u)
        {
          if (v9 == 6)
          {
            v11 = 0xEB00000000656D61;
            if (v7 != 0x4E72656E69617274)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v11 = 0xE900000000000065;
            if (v7 != 0x6D614E656D656874)
            {
LABEL_5:
              v5 = sub_24B5FFECC();

              if ((v5 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_6;
            }
          }
        }

        else if (v9 == 4)
        {
          v11 = 0xEE00656D614E6572;
          if (v7 != 0x6E6547636973756DLL)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v11 = 0xE400000000000000;
          if (v7 != 1701736302)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        if (*v4 > 1u)
        {
          if (v9 == 2)
          {
            v11 = 0xE800000000000000;
            if (v7 != 0x6E6F697461727564)
            {
              goto LABEL_5;
            }

            goto LABEL_47;
          }

          v10 = 0x7974696C61646F6DLL;
          v11 = 0xEC000000656D614ELL;
        }

        else
        {
          v10 = 0x656C655265746164;
          v11 = 0xEC00000064657361;
          if (!*v4)
          {
            v11 = 0x800000024B609D90;
            if (v7 != 0xD000000000000013)
            {
              goto LABEL_5;
            }

            goto LABEL_47;
          }
        }

        if (v7 != v10)
        {
          goto LABEL_5;
        }
      }

LABEL_47:
      if (v8 != v11)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24B5D3F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B5FEDEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v75 = &v64 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019FC8, &unk_24B609D00);
  v12 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v14 = &v64 - v13;
  v77 = type metadata accessor for FilterSectionDescriptor();
  v15 = *(*(v77 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v77);
  v78 = (&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = (&v64 - v19);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    return 0;
  }

  if (!v21 || a1 == a2)
  {
    return 1;
  }

  v22 = 0;
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v71 = v4;
  v72 = a2 + v23;
  v69 = v21;
  v70 = (v5 + 48);
  v65 = (v5 + 32);
  v66 = v8;
  v67 = (v5 + 8);
  v73 = *(v18 + 72);
  v74 = a1 + v23;
  while (1)
  {
    v24 = v73 * v22;
    result = sub_24B5D5A20(v74 + v73 * v22, v20);
    if (v22 == v21)
    {
      break;
    }

    v26 = v72 + v24;
    v27 = v78;
    sub_24B5D5A20(v26, v78);
    v28 = *v20 == *v27 && v20[1] == v27[1];
    if (!v28 && (sub_24B5FFECC() & 1) == 0)
    {
      goto LABEL_69;
    }

    v29 = *(v77 + 20);
    v30 = *(v76 + 48);
    sub_24B57BAFC(v20 + v29, v14, &qword_27F018BD0, &unk_24B6022F0);
    sub_24B57BAFC(v78 + v29, &v14[v30], &qword_27F018BD0, &unk_24B6022F0);
    v31 = v71;
    v32 = *v70;
    if ((*v70)(v14, 1, v71) == 1)
    {
      if (v32(&v14[v30], 1, v31) != 1)
      {
        goto LABEL_68;
      }

      sub_24B58090C(v14, &qword_27F018BD0, &unk_24B6022F0);
    }

    else
    {
      v33 = v75;
      sub_24B57BAFC(v14, v75, &qword_27F018BD0, &unk_24B6022F0);
      if (v32(&v14[v30], 1, v31) == 1)
      {
        (*v67)(v33, v31);
LABEL_68:
        sub_24B58090C(v14, &qword_27F019FC8, &unk_24B609D00);
LABEL_69:
        sub_24B5D5A84(v78);
        sub_24B5D5A84(v20);
        return 0;
      }

      v34 = v66;
      (*v65)(v66, &v14[v30], v31);
      sub_24B5D5AE0(&qword_27F019FD0, MEMORY[0x277CC8C40]);
      v68 = sub_24B5FFA5C();
      v35 = *v67;
      (*v67)(v34, v31);
      v35(v33, v31);
      sub_24B58090C(v14, &qword_27F018BD0, &unk_24B6022F0);
      if ((v68 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    v36 = *(v77 + 24);
    v37 = *(v20 + v36);
    v38 = *(v20 + v36 + 8);
    v39 = v78 + v36;
    v40 = *v39;
    v41 = v39[8];
    if (v38 > 3)
    {
      if (v38 <= 5)
      {
        if (v38 == 4)
        {
          if (v41 != 4)
          {
            goto LABEL_69;
          }

          v42 = v37;
          v43 = v40;
          v44 = &qword_27F018BF0;
          v45 = &qword_24B603600;
          goto LABEL_5;
        }

        if (v41 != 5)
        {
          goto LABEL_69;
        }

        v60 = v37;
        v61 = v40;
        v62 = &qword_27F018BE8;
        v63 = &unk_24B601070;
        goto LABEL_64;
      }

      if (v38 != 6)
      {
        if (v41 != 7)
        {
          goto LABEL_69;
        }

        v60 = v37;
        v61 = v40;
        v62 = &qword_27F018BD8;
        v63 = &unk_24B601060;
LABEL_64:
        if ((sub_24B5D349C(v60, v61, v62, v63) & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_6;
      }

      if (v41 != 6 || (sub_24B5D321C(v37, v40) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (v38 > 1)
    {
      if (v38 == 2)
      {
        if (v41 != 2)
        {
          goto LABEL_69;
        }

        v42 = v37;
        v43 = v40;
        v44 = &qword_27F018C00;
        v45 = &qword_24B603620;
        goto LABEL_5;
      }

      if (v41 != 3 || (sub_24B5D2F30(v37, v40) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (!v38)
      {
        if (v41)
        {
          goto LABEL_69;
        }

        v42 = v37;
        v43 = v40;
        v44 = &qword_27F018C08;
        v45 = &qword_24B601090;
LABEL_5:
        if ((sub_24B5D2CFC(v42, v43, v44, v45) & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_6;
      }

      if (v41 != 1)
      {
        goto LABEL_69;
      }

      v46 = *(v37 + 16);
      if (v46 != *(v40 + 16))
      {
        goto LABEL_69;
      }

      if (v46 && v37 != v40)
      {
        v47 = 0;
        do
        {
          v49 = *(v37 + v47 + 48);
          v48 = *(v37 + v47 + 56);
          v50 = *(v37 + v47 + 64);
          v51 = *(v37 + v47 + 72);
          v53 = *(v40 + v47 + 48);
          v52 = *(v40 + v47 + 56);
          v54 = *(v40 + v47 + 64);
          v55 = *(v40 + v47 + 72);
          v56 = *(v37 + v47 + 32) == *(v40 + v47 + 32) && *(v37 + v47 + 40) == *(v40 + v47 + 40);
          if (!v56 && (sub_24B5FFECC() & 1) == 0)
          {
            goto LABEL_69;
          }

          v57 = v49 == v53 && v48 == v52;
          v58 = v57 && v50 == v54;
          if (!v58 || v51 != v55)
          {
            goto LABEL_69;
          }

          v47 += 48;
        }

        while (--v46);
      }
    }

LABEL_6:
    ++v22;
    sub_24B5D5A84(v78);
    sub_24B5D5A84(v20);
    v21 = v69;
    if (v22 == v69)
    {
      return 1;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t ThemeCategory.iconName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ThemeCategory.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ThemeCategory.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ThemeCategory.init(artworks:iconName:identifier:name:sortOrder:themes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t sub_24B5D46B0()
{
  v1 = *v0;
  v2 = 0x736B726F77747261;
  v3 = 1701667182;
  v4 = 0x6564724F74726F73;
  if (v1 != 4)
  {
    v4 = 0x73656D656874;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D614E6E6F6369;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B5D4768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B5D5818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B5D4790(uint64_t a1)
{
  v2 = sub_24B5D4B20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5D47CC(uint64_t a1)
{
  v2 = sub_24B5D4B20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThemeCategory.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019F68, &unk_24B607690);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v23 = v1[2];
  v24 = v9;
  v12 = v1[5];
  v21 = v1[4];
  v22 = v11;
  v13 = v1[7];
  v19 = v1[6];
  v20 = v12;
  v17 = v1[8];
  v18 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D4B20();

  sub_24B5FFF5C();
  v26 = v10;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  sub_24B5D50C4(&qword_27F018710, &qword_27F018718);
  sub_24B5FFE8C();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v26) = 1;
    sub_24B5FFE1C();
    LOBYTE(v26) = 2;
    sub_24B5FFE3C();
    LOBYTE(v26) = 3;
    sub_24B5FFE3C();
    LOBYTE(v26) = 4;
    sub_24B5FFE6C();
    v26 = v17;
    v25 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019F78, &qword_24B6076A0);
    sub_24B5D4B74(&qword_27F019F80, sub_24B5D4BEC);
    sub_24B5FFE8C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B5D4B20()
{
  result = qword_27F019F70;
  if (!qword_27F019F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019F70);
  }

  return result;
}

uint64_t sub_24B5D4B74(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019F78, &qword_24B6076A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B5D4BEC()
{
  result = qword_27F019F88;
  if (!qword_27F019F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019F88);
  }

  return result;
}

uint64_t ThemeCategory.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019F90, &qword_24B6076A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D4B20();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  LOBYTE(v32) = 0;
  sub_24B5D50C4(&qword_27F018728, &qword_27F018730);
  sub_24B5FFDDC();
  v11 = v37[0];
  LOBYTE(v37[0]) = 1;
  v29 = sub_24B5FFD6C();
  v31 = v12;
  LOBYTE(v37[0]) = 2;
  v13 = sub_24B5FFD8C();
  v30 = v14;
  v27 = v13;
  LOBYTE(v37[0]) = 3;
  v26 = sub_24B5FFD8C();
  v28 = v15;
  LOBYTE(v37[0]) = 4;
  v25 = sub_24B5FFDBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019F78, &qword_24B6076A0);
  v38 = 5;
  sub_24B5D4B74(&qword_27F019F98, sub_24B5D5160);
  sub_24B5FFDDC();
  (*(v6 + 8))(v9, v5);
  v16 = v39;
  v17 = v29;
  *&v32 = v11;
  *(&v32 + 1) = v29;
  v19 = v30;
  v18 = v31;
  *&v33 = v31;
  *(&v33 + 1) = v27;
  *&v34 = v30;
  *(&v34 + 1) = v26;
  v20 = v28;
  *&v35 = v28;
  *(&v35 + 1) = v25;
  v36 = v39;
  *(a2 + 64) = v39;
  v21 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v21;
  v22 = v33;
  *a2 = v32;
  *(a2 + 16) = v22;
  sub_24B5A16FC(&v32, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v11;
  v37[1] = v17;
  v37[2] = v18;
  v37[3] = v27;
  v37[4] = v19;
  v37[5] = v26;
  v37[6] = v20;
  v37[7] = v25;
  v37[8] = v16;
  return sub_24B5A1758(v37);
}

uint64_t sub_24B5D50C4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018708, &qword_24B6073B0);
    sub_24B5D5AE0(a2, type metadata accessor for Artwork);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B5D5160()
{
  result = qword_27F019FA0;
  if (!qword_27F019FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FA0);
  }

  return result;
}

uint64_t ThemeCategory.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v5)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  MEMORY[0x24C243ED0](v8);

  return sub_24B5A8CFC(a1, v10);
}

uint64_t ThemeCategory.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  sub_24B5FFEFC();
  sub_24B57926C(v11, v2);
  sub_24B5FFF1C();
  if (v4)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  MEMORY[0x24C243ED0](v7);
  sub_24B5A8CFC(v11, v9);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D5398(__int128 *a1)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v5)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  MEMORY[0x24C243ED0](v8);

  return sub_24B5A8CFC(a1, v10);
}

uint64_t sub_24B5D5464()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  sub_24B5FFEFC();
  sub_24B57926C(v11, v2);
  sub_24B5FFF1C();
  if (v4)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  MEMORY[0x24C243ED0](v7);
  sub_24B5A8CFC(v11, v9);
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering13ThemeCategoryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v17 = a1[5];
  v18 = a1[6];
  v16 = a1[7];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v14 = a1[8];
  v15 = a2[7];
  v13 = a2[8];
  if ((sub_24B584F70(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v7 || (v2 != v6 || v3 != v7) && (sub_24B5FFECC() & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if ((v4 != v8 || v5 != v10) && (sub_24B5FFECC() & 1) == 0 || (v17 != v9 || v18 != v11) && (sub_24B5FFECC() & 1) == 0 || v16 != v15)
  {
    return 0;
  }

  return sub_24B5D37BC(v14, v13);
}

unint64_t sub_24B5D569C()
{
  result = qword_27F019FA8;
  if (!qword_27F019FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FA8);
  }

  return result;
}

unint64_t sub_24B5D5714()
{
  result = qword_27F019FB0;
  if (!qword_27F019FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FB0);
  }

  return result;
}

unint64_t sub_24B5D576C()
{
  result = qword_27F019FB8;
  if (!qword_27F019FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FB8);
  }

  return result;
}

unint64_t sub_24B5D57C4()
{
  result = qword_27F019FC0;
  if (!qword_27F019FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FC0);
  }

  return result;
}

uint64_t sub_24B5D5818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B726F77747261 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6564724F74726F73 && a2 == 0xE900000000000072 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73656D656874 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B5FFECC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B5D5A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B5D5A84(uint64_t a1)
{
  v2 = type metadata accessor for FilterSectionDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B5D5AE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ResultPlaceholder.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ResultPlaceholder.referenceType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

FitnessFiltering::ResultPlaceholder __swiftcall ResultPlaceholder.init(identifier:referenceType:)(Swift::String identifier, Swift::String referenceType)
{
  *v2 = identifier;
  v2[1] = referenceType;
  result.referenceType = referenceType;
  result.identifier = identifier;
  return result;
}

uint64_t sub_24B5D5B9C()
{
  if (*v0)
  {
    result = 0x636E657265666572;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_24B5D5BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_24B5FFECC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B5FFECC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B5D5CD4(uint64_t a1)
{
  v2 = sub_24B5D5EE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5D5D10(uint64_t a1)
{
  v2 = sub_24B5D5EE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResultPlaceholder.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019FD8, &qword_24B607980);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D5EE0();
  sub_24B5FFF5C();
  v16 = 0;
  v12 = v14[3];
  sub_24B5FFE3C();
  if (!v12)
  {
    v15 = 1;
    sub_24B5FFE3C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B5D5EE0()
{
  result = qword_27F019FE0;
  if (!qword_27F019FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FE0);
  }

  return result;
}

uint64_t ResultPlaceholder.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019FE8, &qword_24B607988);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D5EE0();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_24B5FFD8C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_24B5FFD8C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static ResultPlaceholder.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24B5FFECC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24B5FFECC();
    }
  }

  return result;
}

uint64_t ResultPlaceholder.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24B5FFB1C();

  return sub_24B5FFB1C();
}

uint64_t ResultPlaceholder.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24B5FFEFC();
  sub_24B5FFB1C();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D62C0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24B5FFEFC();
  sub_24B5FFB1C();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D6328()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24B5FFB1C();

  return sub_24B5FFB1C();
}

uint64_t sub_24B5D6378()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24B5FFEFC();
  sub_24B5FFB1C();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

unint64_t sub_24B5D63E0()
{
  result = qword_27F019FF0;
  if (!qword_27F019FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FF0);
  }

  return result;
}

uint64_t sub_24B5D6434(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24B5FFECC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24B5FFECC();
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24B5D64E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B5D652C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B5D6590()
{
  result = qword_27F019FF8;
  if (!qword_27F019FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019FF8);
  }

  return result;
}

unint64_t sub_24B5D65E8()
{
  result = qword_27F01A000;
  if (!qword_27F01A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A000);
  }

  return result;
}

unint64_t sub_24B5D6640()
{
  result = qword_27F01A008;
  if (!qword_27F01A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A008);
  }

  return result;
}

uint64_t EditorialTrait.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7053747369747261;
  v2 = 0x576D6172676F7270;
  if (a1 != 6)
  {
    v2 = 0x6967736B6E616874;
  }

  v3 = 0x7261655977656ELL;
  if (a1 != 4)
  {
    v3 = 0x6564697270;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x796164696C6F68;
  if (a1 != 2)
  {
    v4 = 0x77654E72616E756CLL;
  }

  if (a1)
  {
    v1 = 0x6565776F6C6C6168;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B5D67CC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF746867696C746FLL;
  v3 = 0x7053747369747261;
  v4 = *a1;
  v5 = *a2;
  v6 = 0x576D6172676F7270;
  v7 = 0xEE0074756F6B726FLL;
  if (v4 != 6)
  {
    v6 = 0x6967736B6E616874;
    v7 = 0xEC000000676E6976;
  }

  v8 = 0xE700000000000000;
  v9 = 0x7261655977656ELL;
  if (v4 != 4)
  {
    v9 = 0x6564697270;
    v8 = 0xE500000000000000;
  }

  if (*a1 <= 5u)
  {
    v6 = v9;
    v7 = v8;
  }

  v10 = 0xE700000000000000;
  v11 = 0x796164696C6F68;
  if (v4 != 2)
  {
    v11 = 0x77654E72616E756CLL;
    v10 = 0xEC00000072616559;
  }

  v12 = 0x6565776F6C6C6168;
  v13 = 0xE90000000000006ELL;
  if (!*a1)
  {
    v12 = 0x7053747369747261;
    v13 = 0xEF746867696C746FLL;
  }

  if (*a1 <= 1u)
  {
    v11 = v12;
    v10 = v13;
  }

  if (*a1 <= 3u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v6;
  }

  if (v4 <= 3)
  {
    v15 = v10;
  }

  else
  {
    v15 = v7;
  }

  if (*a2 > 3u)
  {
    if (*a2 > 5u)
    {
      if (v5 == 6)
      {
        v2 = 0xEE0074756F6B726FLL;
        if (v14 != 0x576D6172676F7270)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEC000000676E6976;
        if (v14 != 0x6967736B6E616874)
        {
          goto LABEL_41;
        }
      }
    }

    else if (v5 == 4)
    {
      v2 = 0xE700000000000000;
      if (v14 != 0x7261655977656ELL)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v14 != 0x6564697270)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (*a2 > 1u)
    {
      if (v5 == 2)
      {
        v2 = 0xE700000000000000;
        if (v14 != 0x796164696C6F68)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x77654E72616E756CLL;
      v2 = 0xEC00000072616559;
    }

    else if (*a2)
    {
      v2 = 0xE90000000000006ELL;
      if (v14 != 0x6565776F6C6C6168)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v14 != v3)
    {
LABEL_41:
      v16 = sub_24B5FFECC();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v15 != v2)
  {
    goto LABEL_41;
  }

  v16 = 1;
LABEL_42:

  return v16 & 1;
}

uint64_t sub_24B5D6A74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s16FitnessFiltering14EditorialTraitO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_24B5D6AA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF746867696C746FLL;
  v4 = 0x7053747369747261;
  v5 = 0xEE0074756F6B726FLL;
  v6 = 0x576D6172676F7270;
  if (v2 != 6)
  {
    v6 = 0x6967736B6E616874;
    v5 = 0xEC000000676E6976;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7261655977656ELL;
  if (v2 != 4)
  {
    v8 = 0x6564697270;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x796164696C6F68;
  if (v2 != 2)
  {
    v10 = 0x77654E72616E756CLL;
    v9 = 0xEC00000072616559;
  }

  if (*v1)
  {
    v4 = 0x6565776F6C6C6168;
    v3 = 0xE90000000000006ELL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24B5D6C8C()
{
  v1 = *v0;
  sub_24B5FFEFC();
  sub_24B5FFB1C();

  return sub_24B5FFF3C();
}

uint64_t sub_24B5D6DF8()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_24B5FFB1C();
}

uint64_t sub_24B5D6F50()
{
  v1 = *v0;
  sub_24B5FFEFC();
  sub_24B5FFB1C();

  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering14EditorialTraitO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_24B5FFD3C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24B5D7108()
{
  result = qword_27F01A010;
  if (!qword_27F01A010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A018, &qword_24B607C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A010);
  }

  return result;
}

unint64_t sub_24B5D7170()
{
  result = qword_27F01A020;
  if (!qword_27F01A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A020);
  }

  return result;
}

unint64_t sub_24B5D71D4()
{
  result = qword_27F01A028;
  if (!qword_27F01A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A028);
  }

  return result;
}

uint64_t Trainer.iconName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Trainer.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Trainer.informalName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Trainer.name.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t Trainer.init(artworks:iconName:identifier:informalName:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t sub_24B5D730C()
{
  v1 = *v0;
  v2 = 0x736B726F77747261;
  v3 = 0x696669746E656469;
  v4 = 0x6C616D726F666E69;
  if (v1 != 3)
  {
    v4 = 1701667182;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E6E6F6369;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B5D73AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B5D81CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B5D73D4(uint64_t a1)
{
  v2 = sub_24B5D76D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5D7410(uint64_t a1)
{
  v2 = sub_24B5D76D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Trainer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A030, &unk_24B607D40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v17[7] = v1[2];
  v17[8] = v9;
  v12 = v1[5];
  v17[5] = v1[4];
  v17[6] = v11;
  v13 = v1[7];
  v17[3] = v1[6];
  v17[4] = v12;
  v14 = v1[8];
  v17[1] = v13;
  v17[2] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D76D4();

  sub_24B5FFF5C();
  v23 = v10;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  sub_24B5C7530(&qword_27F018710, &qword_27F018718);
  sub_24B5FFE8C();

  if (!v2)
  {
    v21 = 1;
    sub_24B5FFE1C();
    v20 = 2;
    sub_24B5FFE3C();
    v19 = 3;
    sub_24B5FFE1C();
    v18 = 4;
    sub_24B5FFE3C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B5D76D4()
{
  result = qword_27F01A038;
  if (!qword_27F01A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A038);
  }

  return result;
}

uint64_t Trainer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A040, &qword_24B607D50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5D76D4();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  LOBYTE(v33) = 0;
  sub_24B5C7530(&qword_27F018728, &qword_27F018730);
  sub_24B5FFDDC();
  v11 = v38[0];
  LOBYTE(v38[0]) = 1;
  v12 = sub_24B5FFD6C();
  v32 = v13;
  v29 = v12;
  LOBYTE(v38[0]) = 2;
  v28 = sub_24B5FFD8C();
  v31 = v14;
  LOBYTE(v38[0]) = 3;
  v27 = sub_24B5FFD6C();
  v30 = v15;
  v39 = 4;
  v16 = sub_24B5FFD8C();
  v18 = v17;
  v19 = v16;
  (*(v6 + 8))(v9, v5);
  v20 = v29;
  *&v33 = v11;
  *(&v33 + 1) = v29;
  v21 = v32;
  *&v34 = v32;
  *(&v34 + 1) = v28;
  v22 = v30;
  *&v35 = v31;
  *(&v35 + 1) = v27;
  *&v36 = v30;
  *(&v36 + 1) = v19;
  v37 = v18;
  *(a2 + 64) = v18;
  v23 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v23;
  v24 = v34;
  *a2 = v33;
  *(a2 + 16) = v24;
  sub_24B5A1548(&v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v11;
  v38[1] = v20;
  v38[2] = v21;
  v38[3] = v28;
  v38[4] = v31;
  v38[5] = v27;
  v38[6] = v22;
  v38[7] = v19;
  v38[8] = v18;
  return sub_24B5A15A4(v38);
}

uint64_t sub_24B5D7B5C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
  {
    return 0;
  }

  else
  {
    return sub_24B5FFECC();
  }
}

uint64_t sub_24B5D7B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_24B5FFECC() ^ 1) & 1;
  }
}

uint64_t sub_24B5D7BD4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
  {
    return 1;
  }

  else
  {
    return (sub_24B5FFECC() ^ 1) & 1;
  }
}

uint64_t sub_24B5D7C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_24B5FFECC();
  }
}

uint64_t Trainer.hash(into:)(__int128 *a1)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v4)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFF1C();
  if (v8)
  {
    sub_24B5FFB1C();
  }

  return sub_24B5FFB1C();
}

uint64_t Trainer.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  sub_24B5FFEFC();
  sub_24B57926C(v11, v2);
  sub_24B5FFF1C();
  if (v4)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFF1C();
  if (v8)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D7E24()
{
  sub_24B5FFEFC();
  Trainer.hash(into:)(v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D7E68()
{
  sub_24B5FFEFC();
  Trainer.hash(into:)(v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5D7EA4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t _s16FitnessFiltering7TrainerV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[6];
  v17 = a1[8];
  v18 = a1[7];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v13 = a2[5];
  v14 = a1[5];
  v11 = a2[6];
  v15 = a2[8];
  v16 = a2[7];
  if ((sub_24B584F70(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v9 || (v2 != v7 || v3 != v9) && (sub_24B5FFECC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((v4 != v8 || v5 != v10) && (sub_24B5FFECC() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (v11 && (v14 == v13 && v6 == v11 || (sub_24B5FFECC() & 1) != 0))
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v11)
  {
    return 0;
  }

LABEL_17:
  if (v18 == v16 && v17 == v15)
  {
    return 1;
  }

  return sub_24B5FFECC();
}

unint64_t sub_24B5D8050()
{
  result = qword_27F01A048;
  if (!qword_27F01A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A048);
  }

  return result;
}

unint64_t sub_24B5D80C8()
{
  result = qword_27F01A050;
  if (!qword_27F01A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A050);
  }

  return result;
}

unint64_t sub_24B5D8120()
{
  result = qword_27F01A058;
  if (!qword_27F01A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A058);
  }

  return result;
}

unint64_t sub_24B5D8178()
{
  result = qword_27F01A060;
  if (!qword_27F01A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A060);
  }

  return result;
}

uint64_t sub_24B5D81CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B726F77747261 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616D726F666E69 && a2 == 0xEC000000656D614ELL || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B5FFECC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24B5D83A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A200, qword_24B608100);
  v5 = sub_24B58085C(&qword_2810F6680, &qword_27F01A200, qword_24B608100);

  return MEMORY[0x282130840](v1, v2, v3, v4, v5);
}

uint64_t sub_24B5D8444()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  return sub_24B5FEE5C();
}

uint64_t sub_24B5D84EC(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  sub_24B5FEE7C();
  sub_24B5FEE6C();
  return v4;
}

uint64_t FilterView.init(store:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = sub_24B5D864C;
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  v7 = a3 + *(type metadata accessor for FilterView() + 36);
  return sub_24B5D8444();
}

uint64_t sub_24B5D864C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t FilterView.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  sub_24B5C3D68();
  sub_24B5C3B90();
  sub_24B5D9BC8();
  sub_24B5D9C1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  sub_24B5D9C70();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for FilterModalitySectionView();
  sub_24B5FF21C();
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  sub_24B5D9DB4();
  sub_24B5D9E08();
  sub_24B5D9E5C();
  sub_24B5D9EB0();
  type metadata accessor for FilterTrainerSectionView();
  sub_24B5FF21C();
  sub_24B5FF21C();
  sub_24B5FF21C();
  sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010);
  sub_24B5FF8CC();
  sub_24B5D9F04();
  sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5D9FE8();
  sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF87C();
  swift_getWitnessTable();
  sub_24B5FEF2C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B5FEFBC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A160, &qword_24B609500);
  sub_24B5FF21C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A168, &qword_24B608080);
  swift_getWitnessTable();
  sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B58085C(qword_27F01A178, &qword_27F01A168, &qword_24B608080);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return sub_24B5FEFFC();
}

uint64_t sub_24B5D8D78()
{
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  memcpy(__dst, __src, 0x111uLL);
  v0 = sub_24B58FDFC(__dst);
  if ((v0 - 2) < 2)
  {
    return 0;
  }

  if (v0)
  {
    v12 = nullsub_1(__dst);
    v54 = *(v12 + 8);
    v56 = *v12;
    v50 = *(v12 + 32);
    v52 = *(v12 + 16);
    v46 = *(v12 + 48);
    v48 = *(v12 + 40);
    v44 = *(v12 + 56);
    v38 = *(v12 + 72);
    v40 = *(v12 + 64);
    v34 = *(v12 + 88);
    v36 = *(v12 + 80);
    v1 = v12 + 104;
    v13 = *(v12 + 176);
    v14 = *(v12 + 184);
    v15 = *(v12 + 192);
    v16 = *(v12 + 200);
    v17 = *(v12 + 208);
    v30 = *(v12 + 216);
    v32 = *(v12 + 96);
    v18 = *(v12 + 232);
    v29 = *(v12 + 224);
    v20 = *(v12 + 240);
    v19 = *(v12 + 248);
    v22 = *(v12 + 256);
    v21 = *(v12 + 264);
    v42 = *(v12 + 24);

    sub_24B5DCA50(v13);

    sub_24B5A0960(v56);
  }

  else
  {
    v1 = nullsub_1(__dst);
    v47 = *(v1 + 96);
    v45 = *(v1 + 104);
    v43 = *(v1 + 112);
    v41 = *(v1 + 120);
    v37 = *(v1 + 72);
    v39 = *(v1 + 128);
    v33 = *(v1 + 144);
    v35 = *(v1 + 136);
    v53 = *(v1 + 152);
    v55 = *(v1 + 80);
    v49 = *(v1 + 168);
    v51 = *(v1 + 88);
    v2 = *(v1 + 184);
    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = *(v1 + 208);
    v6 = *(v1 + 216);
    v31 = *(v1 + 224);
    v7 = *(v1 + 232);
    v8 = *(v1 + 240);
    v10 = *(v1 + 248);
    v9 = *(v1 + 256);
    v11 = *(v1 + 264);

    sub_24B5DCA50(v2);
  }

  v58[0] = *v1;
  v23 = *(v1 + 16);
  v24 = *(v1 + 32);
  v25 = *(v1 + 48);
  v61 = *(v1 + 64);
  v59 = v24;
  v60 = v25;
  v58[1] = v23;
  if (!*&v58[0])
  {
    return 0;
  }

  v26 = *(&v59 + 1);

  sub_24B58090C(v58, &qword_27F018B70, &unk_24B604EC0);
  v27 = *(v26 + 16);

  return v27;
}

uint64_t sub_24B5D907C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a1;
  v101 = a4;
  v6 = sub_24B5FF11C();
  v99 = *(v6 - 8);
  v100 = v6;
  v7 = *(v99 + 64);
  MEMORY[0x28223BE20](v6);
  v98 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = type metadata accessor for FilterView();
  v11 = *(v10 - 8);
  v95 = v10;
  v96 = v11;
  v97 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v94 = &v79 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  v89 = v13;
  v14 = sub_24B5C3D68();
  v15 = sub_24B5C3B90();
  v16 = sub_24B5D9BC8();
  v17 = sub_24B5D9C1C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  v19 = sub_24B5D9C70();
  v133 = v18;
  v134 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v102 = v9;
  v103 = a2;
  v133 = a2;
  v134 = &type metadata for Modality;
  v135 = v13;
  v136 = v9;
  v21 = v9;
  v137 = &protocol witness table for Modality;
  v138 = &protocol witness table for Modality;
  v139 = v14;
  v140 = v15;
  v141 = v16;
  v142 = v17;
  v143 = OpaqueTypeConformance2;
  v91 = type metadata accessor for FilterModalitySectionView();
  v92 = sub_24B5FF21C();
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  v22 = sub_24B5D9DB4();
  v23 = sub_24B5D9E08();
  v24 = sub_24B5D9E5C();
  v25 = sub_24B5D9EB0();
  v133 = a2;
  v134 = &type metadata for Trainer;
  v135 = v89;
  v136 = v21;
  v137 = &protocol witness table for Trainer;
  v138 = &protocol witness table for Trainer;
  v139 = v22;
  v140 = v23;
  v141 = v24;
  v142 = v25;
  v143 = OpaqueTypeConformance2;
  type metadata accessor for FilterTrainerSectionView();
  sub_24B5FF21C();
  sub_24B5FF21C();
  v26 = sub_24B5FF21C();
  v27 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010);
  v133 = v93;
  v134 = MEMORY[0x277D837D0];
  v135 = v26;
  v136 = v27;
  v137 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v28 = sub_24B5D9F04();
  v29 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020);
  WitnessTable = swift_getWitnessTable();
  v131 = v29;
  v132 = WitnessTable;
  v31 = swift_getWitnessTable();
  v129 = v28;
  v130 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_24B5D9FE8();
  v34 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050);
  v35 = swift_getWitnessTable();
  v127 = v34;
  v128 = v35;
  v36 = swift_getWitnessTable();
  v125 = v33;
  v126 = v36;
  v37 = swift_getWitnessTable();
  v123 = v32;
  v124 = v37;
  v122 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF87C();
  swift_getWitnessTable();
  v38 = sub_24B5FEF2C();
  v39 = swift_getWitnessTable();
  v133 = v38;
  v134 = v39;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v133 = v38;
  v134 = v39;
  v41 = swift_getOpaqueTypeConformance2();
  v133 = OpaqueTypeMetadata2;
  v134 = v41;
  swift_getOpaqueTypeMetadata2();
  v133 = OpaqueTypeMetadata2;
  v134 = v41;
  swift_getOpaqueTypeConformance2();
  sub_24B5FEFBC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A160, &qword_24B609500);
  v81 = sub_24B5FF21C();
  v42 = sub_24B5FEFEC();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A168, &qword_24B608080);
  v44 = swift_getWitnessTable();
  v45 = sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500);
  v120 = v44;
  v121 = v45;
  v86 = swift_getWitnessTable();
  v118 = v86;
  v119 = MEMORY[0x277CE0790];
  v46 = swift_getWitnessTable();
  v47 = sub_24B58085C(qword_27F01A178, &qword_27F01A168, &qword_24B608080);
  v133 = v42;
  v134 = v43;
  v79 = v42;
  v84 = v46;
  v85 = v43;
  v135 = v46;
  v136 = v47;
  v48 = v47;
  v83 = v47;
  v49 = swift_getOpaqueTypeMetadata2();
  v89 = v49;
  v93 = *(v49 - 8);
  v50 = *(v93 + 64);
  MEMORY[0x28223BE20](v49);
  v82 = &v79 - v51;
  v133 = v42;
  v134 = v43;
  v135 = v46;
  v136 = v48;
  v88 = swift_getOpaqueTypeConformance2();
  v133 = v49;
  v134 = v88;
  v90 = MEMORY[0x277CDED18];
  v52 = swift_getOpaqueTypeMetadata2();
  v53 = *(v52 - 8);
  v91 = v52;
  v92 = v53;
  v54 = *(v53 + 64);
  v55 = MEMORY[0x28223BE20](v52);
  v80 = &v79 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v87 = &v79 - v57;
  v58 = v95;
  v59 = v104;
  sub_24B5DA2D4(v95, &v108);
  v115 = v108;
  v116 = v109;
  v117 = v110;
  v60 = v96;
  v61 = v94;
  (*(v96 + 16))(v94, v59, v58);
  v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v63 = swift_allocObject();
  v64 = v102;
  *(v63 + 16) = v103;
  *(v63 + 24) = v64;
  (*(v60 + 32))(v63 + v62, v61, v58);
  swift_checkMetadataState();
  sub_24B5FF72C();

  sub_24B5DB830();
  v65 = v136;
  v66 = v138;
  v108 = v133;
  v109 = v134;
  v110 = v135;
  v111 = v136;
  v112 = v137;
  v113 = v138;
  v114 = v139;
  v105 = v103;
  v106 = v102;
  v107 = v104;
  swift_checkMetadataState();
  v67 = v82;
  sub_24B5FF6FC();
  sub_24B5DB830();
  sub_24B5DBCA4(v65);
  sub_24B5DBCA4(v66);
  v69 = v98;
  v68 = v99;
  v70 = v100;
  (*(v99 + 104))(v98, *MEMORY[0x277CDDDC0], v100);
  v71 = v80;
  v73 = v88;
  v72 = v89;
  sub_24B5FEDE8();
  (*(v68 + 8))(v69, v70);
  (*(v93 + 8))(v67, v72);
  v133 = v72;
  v134 = v73;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = v87;
  v76 = v91;
  sub_24B5FC7F0(v71, v91, v74);
  v77 = *(v92 + 8);
  v77(v71, v76);
  sub_24B5FC7F0(v75, v76, v74);
  return (v77)(v75, v76);
}

unint64_t sub_24B5D9BC8()
{
  result = qword_27F01A088;
  if (!qword_27F01A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A088);
  }

  return result;
}

unint64_t sub_24B5D9C1C()
{
  result = qword_27F01A090;
  if (!qword_27F01A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A090);
  }

  return result;
}

unint64_t sub_24B5D9C70()
{
  result = qword_27F01A0A0;
  if (!qword_27F01A0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
    sub_24B5D9CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A0A0);
  }

  return result;
}

unint64_t sub_24B5D9CFC()
{
  result = qword_27F01A0A8;
  if (!qword_27F01A0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0B0, &qword_24B608038);
    sub_24B58085C(&qword_27F01A0B8, &qword_27F01A0C0, &qword_24B608040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A0A8);
  }

  return result;
}

unint64_t sub_24B5D9DB4()
{
  result = qword_27F01A0D8;
  if (!qword_27F01A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A0D8);
  }

  return result;
}

unint64_t sub_24B5D9E08()
{
  result = qword_27F01A0E0;
  if (!qword_27F01A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A0E0);
  }

  return result;
}

unint64_t sub_24B5D9E5C()
{
  result = qword_27F01A0E8;
  if (!qword_27F01A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A0E8);
  }

  return result;
}

unint64_t sub_24B5D9EB0()
{
  result = qword_27F01A0F0;
  if (!qword_27F01A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A0F0);
  }

  return result;
}

unint64_t sub_24B5D9F04()
{
  result = qword_27F01A100;
  if (!qword_27F01A100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
    sub_24B58085C(&qword_27F01A108, &qword_27F01A110, &qword_24B608058);
    sub_24B58085C(&qword_27F01A118, &qword_27F01A120, &qword_24B608060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A100);
  }

  return result;
}

unint64_t sub_24B5D9FE8()
{
  result = qword_27F01A130;
  if (!qword_27F01A130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
    sub_24B58085C(&qword_27F01A138, &qword_27F01A140, &qword_24B608068);
    sub_24B58085C(&qword_27F01A148, &qword_27F01A150, &unk_24B608070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A130);
  }

  return result;
}

void sub_24B5DA114(uint64_t a1)
{
  sub_24B5DA230();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
    swift_getFunctionTypeMetadata3();
    sub_24B5FEE7C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B5DA230()
{
  if (!qword_2810F6688[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A200, qword_24B608100);
    sub_24B58085C(&qword_2810F6680, &qword_27F01A200, qword_24B608100);
    v0 = sub_24B5FEF5C();
    if (!v1)
    {
      atomic_store(v0, qword_2810F6688);
    }
  }
}

uint64_t sub_24B5DA2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  memcpy(v189, v188, 0x111uLL);
  v6 = sub_24B58FDFC(v189);
  v173 = a1;
  if ((v6 - 2) >= 2)
  {
    v171 = v2;
    if (v6)
    {
      v53 = nullsub_1(v189);
      v54 = *v53;
      v169 = *(v53 + 8);
      *&v170 = v54;
      v55 = *(v53 + 16);
      v56 = *(v53 + 40);
      v167 = *(v53 + 32);
      v168 = v55;
      v57 = *(v53 + 56);
      v165 = *(v53 + 48);
      v166 = v56;
      v164 = v57;
      v58 = *(v53 + 64);
      v161 = *(v53 + 72);
      v162 = v58;
      v59 = *(v53 + 80);
      v159 = *(v53 + 88);
      v160 = v59;
      v60 = *(v53 + 96);
      v61 = *(v53 + 104);
      v62 = *(v53 + 112);
      v157 = *(v53 + 120);
      v158 = v60;
      v63 = *(v53 + 128);
      v64 = *(v53 + 136);
      v65 = *(v53 + 152);
      v155 = *(v53 + 144);
      v156 = v63;
      v66 = *(v53 + 168);
      v153[1] = *(v53 + 160);
      v154 = v65;
      v67 = *(v53 + 176);
      v68 = *(v53 + 184);
      v69 = *(v53 + 192);
      v70 = *(v53 + 200);
      v71 = *(v53 + 208);
      v72 = *(v53 + 216);
      v73 = *(v53 + 224);
      v74 = *(v53 + 232);
      v75 = *(v53 + 240);
      LODWORD(v163) = *(v53 + 24);
      sub_24B5DCA50(v67);
      v76 = *(v53 + 248);
      v77 = *(v53 + 256);

      sub_24B5DCAD0(v61);

      v52 = *(v53 + 264);
      sub_24B5A0960(v170);
    }

    else
    {
      v31 = nullsub_1(v189);
      v32 = *v31;
      v169 = v31[1];
      *&v170 = v32;
      v33 = v31[2];
      v167 = v31[3];
      v168 = v33;
      v34 = v31[4];
      v165 = v31[5];
      v166 = v34;
      v35 = v31[6];
      v163 = v31[7];
      v164 = v35;
      v36 = v31[8];
      v37 = v31[9];
      v38 = v31[11];
      v161 = v31[10];
      v162 = v36;
      v39 = v31[12];
      v156 = v31[13];
      v157 = v39;
      v40 = v31[15];
      v155 = v31[14];
      v42 = v31[16];
      v41 = v31[17];
      v44 = v31[18];
      v43 = v31[19];
      v159 = v38;
      v160 = v43;
      v158 = v31[21];
      v45 = v31[24];
      v46 = v31[25];
      v47 = v31[26];
      v48 = v31[27];
      v49 = v31[28];
      v50 = v31[29];
      v51 = v31[30];
      v152 = v31[31];
      sub_24B5DCA50(v31[23]);
      v154 = v31[32];

      v52 = v31[33];
      sub_24B5DCAD0(v170);
    }

    v78 = v173;
    (*(v4 + 16))(v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v171, v173);
    v79 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v80 = swift_allocObject();
    v171 = v80;
    v82 = *(v78 + 16);
    v81 = *(v78 + 24);
    v167 = v82;
    v168 = v81;
    *(v80 + 2) = v82;
    *(v80 + 3) = v81;
    v83 = v82;
    *(v80 + 4) = v52;
    (*(v4 + 32))(&v80[v79], v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v78);
    *&v170 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
    v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
    v166 = v84;
    v85 = sub_24B5C3D68();
    v86 = sub_24B5C3B90();
    v87 = sub_24B5D9BC8();
    v88 = sub_24B5D9C1C();
    v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
    v90 = sub_24B5D9C70();
    *&v188[0] = v89;
    *(&v188[0] + 1) = v90;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v188[0] = v83;
    *(&v188[0] + 1) = &type metadata for Modality;
    *&v188[1] = v84;
    v92 = v168;
    *(&v188[1] + 1) = v168;
    *&v188[2] = &protocol witness table for Modality;
    *(&v188[2] + 1) = &protocol witness table for Modality;
    *&v188[3] = v85;
    *(&v188[3] + 1) = v86;
    *&v188[4] = v87;
    *(&v188[4] + 1) = v88;
    *&v188[5] = OpaqueTypeConformance2;
    type metadata accessor for FilterModalitySectionView();
    v169 = sub_24B5FF21C();
    sub_24B5FF21C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
    v93 = sub_24B5D9DB4();
    v94 = sub_24B5D9E08();
    v95 = sub_24B5D9E5C();
    v96 = sub_24B5D9EB0();
    *&v188[0] = v167;
    *(&v188[0] + 1) = &type metadata for Trainer;
    *&v188[1] = v166;
    *(&v188[1] + 1) = v92;
    *&v188[2] = &protocol witness table for Trainer;
    *(&v188[2] + 1) = &protocol witness table for Trainer;
    *&v188[3] = v93;
    *(&v188[3] + 1) = v94;
    *&v188[4] = v95;
    *(&v188[4] + 1) = v96;
    *&v188[5] = OpaqueTypeConformance2;
    type metadata accessor for FilterTrainerSectionView();
    sub_24B5FF21C();
    sub_24B5FF21C();
    v97 = sub_24B5FF21C();
    v98 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010);
    *&v188[0] = v170;
    *(&v188[0] + 1) = MEMORY[0x277D837D0];
    *&v188[1] = v97;
    *(&v188[1] + 1) = v98;
    *&v188[2] = MEMORY[0x277D837E0];
    sub_24B5FF8CC();
    v99 = sub_24B5D9F04();
    v100 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020);
    WitnessTable = swift_getWitnessTable();
    v174[13] = v100;
    v174[14] = WitnessTable;
    v102 = swift_getWitnessTable();
    v174[11] = v99;
    v174[12] = v102;
    v103 = swift_getWitnessTable();
    v104 = sub_24B5D9FE8();
    v105 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050);
    v106 = swift_getWitnessTable();
    v174[9] = v105;
    v174[10] = v106;
    v107 = swift_getWitnessTable();
    v174[7] = v104;
    v174[8] = v107;
    v108 = swift_getWitnessTable();
    v174[5] = v103;
    v174[6] = v108;
    v174[4] = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_24B5FF87C();
    swift_getWitnessTable();
    v109 = sub_24B5FEF2C();
    v110 = swift_getWitnessTable();
    *&v188[0] = v109;
    *(&v188[0] + 1) = v110;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    *&v188[0] = v109;
    *(&v188[0] + 1) = v110;
    v112 = swift_getOpaqueTypeConformance2();
    *&v188[0] = OpaqueTypeMetadata2;
    *(&v188[0] + 1) = v112;
    swift_getOpaqueTypeMetadata2();
    *&v188[0] = OpaqueTypeMetadata2;
    *(&v188[0] + 1) = v112;
    swift_getOpaqueTypeConformance2();
    *&v188[0] = sub_24B5FEFAC();
    *(&v188[0] + 1) = v113;
    v114 = sub_24B5FEFBC();
    v115 = swift_getWitnessTable();
    sub_24B5FC7F0(v188, v114, v115);

    v188[0] = v175;
    sub_24B5FC7F0(v188, v114, v115);
    v174[0] = v174[2];
    v174[1] = v174[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A160, &qword_24B609500);
    sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500);
    sub_24B5F7EAC(v174, v114);
  }

  else
  {
    v171 = sub_24B5FF78C();
    *&v175 = v171;
    WORD4(v175) = 256;
    *&v170 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
    v168 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
    v169 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
    v167 = *(a1 + 16);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
    v166 = *(a1 + 24);
    v8 = sub_24B5C3D68();
    v9 = sub_24B5C3B90();
    v10 = sub_24B5D9BC8();
    v11 = sub_24B5D9C1C();
    v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
    v13 = sub_24B5D9C70();
    *&v188[0] = v12;
    *(&v188[0] + 1) = v13;
    v14 = swift_getOpaqueTypeConformance2();
    *&v188[0] = v167;
    *(&v188[0] + 1) = &type metadata for Modality;
    *&v188[1] = v7;
    v15 = v7;
    *(&v188[1] + 1) = v166;
    *&v188[2] = &protocol witness table for Modality;
    *(&v188[2] + 1) = &protocol witness table for Modality;
    *&v188[3] = v8;
    *(&v188[3] + 1) = v9;
    *&v188[4] = v10;
    *(&v188[4] + 1) = v11;
    *&v188[5] = v14;
    type metadata accessor for FilterModalitySectionView();
    v169 = sub_24B5FF21C();
    sub_24B5FF21C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
    v16 = sub_24B5D9DB4();
    v17 = sub_24B5D9E08();
    v18 = sub_24B5D9E5C();
    v19 = sub_24B5D9EB0();
    *&v188[0] = v167;
    *(&v188[0] + 1) = &type metadata for Trainer;
    *&v188[1] = v15;
    *(&v188[1] + 1) = v166;
    *&v188[2] = &protocol witness table for Trainer;
    *(&v188[2] + 1) = &protocol witness table for Trainer;
    *&v188[3] = v16;
    *(&v188[3] + 1) = v17;
    *&v188[4] = v18;
    *(&v188[4] + 1) = v19;
    *&v188[5] = v14;
    type metadata accessor for FilterTrainerSectionView();
    sub_24B5FF21C();
    sub_24B5FF21C();
    v20 = sub_24B5FF21C();
    v21 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010);
    *&v188[0] = v170;
    *(&v188[0] + 1) = MEMORY[0x277D837D0];
    *&v188[1] = v20;
    *(&v188[1] + 1) = v21;
    *&v188[2] = MEMORY[0x277D837E0];
    sub_24B5FF8CC();
    v22 = sub_24B5D9F04();
    v186 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020);
    v187 = swift_getWitnessTable();
    v184 = v22;
    v185 = swift_getWitnessTable();
    v23 = swift_getWitnessTable();
    v24 = sub_24B5D9FE8();
    v182 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050);
    v183 = swift_getWitnessTable();
    v180 = v24;
    v181 = swift_getWitnessTable();
    v178 = v23;
    v179 = swift_getWitnessTable();
    v177 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_24B5FF87C();
    swift_getWitnessTable();
    v25 = sub_24B5FEF2C();
    v26 = swift_getWitnessTable();
    *&v188[0] = v25;
    *(&v188[0] + 1) = v26;
    v27 = swift_getOpaqueTypeMetadata2();
    *&v188[0] = v25;
    *(&v188[0] + 1) = v26;
    v28 = swift_getOpaqueTypeConformance2();
    *&v188[0] = v27;
    *(&v188[0] + 1) = v28;
    swift_getOpaqueTypeMetadata2();
    *&v188[0] = v27;
    *(&v188[0] + 1) = v28;
    swift_getOpaqueTypeConformance2();
    v29 = sub_24B5FEFBC();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A160, &qword_24B609500);
    swift_getWitnessTable();
    sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500);
    sub_24B5F7FA4(&v175, v29, v30);
  }

  v170 = v188[0];
  LODWORD(v171) = LOBYTE(v188[1]);
  v175 = v188[0];
  v176 = v188[1];
  v169 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
  v168 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  v116 = v173;
  v167 = *(v173 + 16);
  v117 = v167;
  v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  v166 = *(v116 + 24);
  v119 = v166;
  v120 = sub_24B5C3D68();
  v121 = sub_24B5C3B90();
  v122 = sub_24B5D9BC8();
  v123 = sub_24B5D9C1C();
  v124 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  v125 = sub_24B5D9C70();
  *&v188[0] = v124;
  *(&v188[0] + 1) = v125;
  v126 = swift_getOpaqueTypeConformance2();
  *&v188[0] = v117;
  *(&v188[0] + 1) = &type metadata for Modality;
  *&v188[1] = v118;
  *(&v188[1] + 1) = v119;
  *&v188[2] = &protocol witness table for Modality;
  *(&v188[2] + 1) = &protocol witness table for Modality;
  *&v188[3] = v120;
  *(&v188[3] + 1) = v121;
  *&v188[4] = v122;
  *(&v188[4] + 1) = v123;
  *&v188[5] = v126;
  type metadata accessor for FilterModalitySectionView();
  v173 = sub_24B5FF21C();
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  v127 = sub_24B5D9DB4();
  v128 = sub_24B5D9E08();
  v129 = sub_24B5D9E5C();
  v130 = sub_24B5D9EB0();
  *&v188[0] = v167;
  *(&v188[0] + 1) = &type metadata for Trainer;
  *&v188[1] = v118;
  *(&v188[1] + 1) = v166;
  *&v188[2] = &protocol witness table for Trainer;
  *(&v188[2] + 1) = &protocol witness table for Trainer;
  *&v188[3] = v127;
  *(&v188[3] + 1) = v128;
  *&v188[4] = v129;
  *(&v188[4] + 1) = v130;
  *&v188[5] = v126;
  type metadata accessor for FilterTrainerSectionView();
  sub_24B5FF21C();
  sub_24B5FF21C();
  v131 = sub_24B5FF21C();
  v132 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010);
  *&v188[0] = v169;
  *(&v188[0] + 1) = MEMORY[0x277D837D0];
  *&v188[1] = v131;
  *(&v188[1] + 1) = v132;
  *&v188[2] = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v133 = sub_24B5D9F04();
  v134 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020);
  v135 = swift_getWitnessTable();
  v174[26] = v134;
  v174[27] = v135;
  v136 = swift_getWitnessTable();
  v174[24] = v133;
  v174[25] = v136;
  v137 = swift_getWitnessTable();
  v138 = sub_24B5D9FE8();
  v139 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050);
  v140 = swift_getWitnessTable();
  v174[22] = v139;
  v174[23] = v140;
  v141 = swift_getWitnessTable();
  v174[20] = v138;
  v174[21] = v141;
  v142 = swift_getWitnessTable();
  v174[18] = v137;
  v174[19] = v142;
  v174[17] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF87C();
  swift_getWitnessTable();
  v143 = sub_24B5FEF2C();
  v144 = swift_getWitnessTable();
  *&v188[0] = v143;
  *(&v188[0] + 1) = v144;
  v145 = swift_getOpaqueTypeMetadata2();
  *&v188[0] = v143;
  *(&v188[0] + 1) = v144;
  v146 = swift_getOpaqueTypeConformance2();
  *&v188[0] = v145;
  *(&v188[0] + 1) = v146;
  swift_getOpaqueTypeMetadata2();
  *&v188[0] = v145;
  *(&v188[0] + 1) = v146;
  swift_getOpaqueTypeConformance2();
  sub_24B5FEFBC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A160, &qword_24B609500);
  v147 = sub_24B5FF21C();
  v148 = swift_getWitnessTable();
  v149 = sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500);
  v174[15] = v148;
  v174[16] = v149;
  v150 = swift_getWitnessTable();
  sub_24B5FC7F0(&v175, v147, v150);
  return sub_24B5DB830();
}

uint64_t sub_24B5DB83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A208, &qword_24B608118);
  v7 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v32 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A210, &qword_24B608120);
  v37 = *(v39 - 8);
  v9 = *(v37 + 64);
  v10 = MEMORY[0x28223BE20](v39);
  v36 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = sub_24B5FF27C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A218, &qword_24B608128);
  v41 = *(v34 - 8);
  v16 = *(v41 + 64);
  MEMORY[0x28223BE20](v34);
  v18 = &v32 - v17;
  sub_24B5FF26C();
  v48 = a2;
  v49 = a3;
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A220, &qword_24B608130);
  sub_24B58085C(&qword_27F01A228, &qword_27F01A220, &qword_24B608130);
  v33 = v18;
  sub_24B5FEF6C();
  sub_24B5FF24C();
  v45 = a2;
  v46 = a3;
  v19 = a1;
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A230, &qword_24B608138);
  swift_getOpaqueTypeConformance2();
  v20 = v13;
  sub_24B5FEF6C();
  sub_24B5FF25C();
  v42 = a2;
  v43 = a3;
  v44 = v19;
  v21 = v36;
  sub_24B5FEF6C();
  v22 = *(v35 + 48);
  v23 = *(v35 + 64);
  v24 = v38;
  v25 = v34;
  (*(v41 + 16))(v38, v18, v34);
  v26 = v37;
  v27 = *(v37 + 16);
  v28 = &v24[v22];
  v29 = v39;
  v27(v28, v20, v39);
  v27(&v24[v23], v21, v29);
  sub_24B5FF1EC();
  v30 = *(v26 + 8);
  v30(v21, v29);
  v30(v20, v29);
  return (*(v41 + 8))(v33, v25);
}

uint64_t sub_24B5DBCA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 sub_24B5DBCB4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_24B5FF1CC();
  sub_24B5DBD60(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_24B5DBD60@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v1 = sub_24B5FEE1C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B5FFADC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_24B5FFABC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_24B5FFAAC();
  sub_24B5FFA9C();
  type metadata accessor for FilterView();
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  sub_24B5FFA8C();

  sub_24B5FFA9C();
  sub_24B5FFACC();
  if (qword_27F0186F0 != -1)
  {
    swift_once();
  }

  v9 = qword_27F02AD70;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  v46 = sub_24B5FFAFC();
  v47 = v10;
  v39[2] = sub_24B58096C();
  v11 = sub_24B5FF53C();
  v13 = v12;
  v39[1] = v4;
  v15 = v14;
  sub_24B5FF45C();
  sub_24B5FF46C();

  v16 = sub_24B5FF50C();
  v42 = v17;
  v43 = v16;
  v41 = v18;
  v40 = v19;

  sub_24B5809C0(v11, v13, v15 & 1);

  sub_24B5FFAAC();
  sub_24B5FFA9C();
  v46 = sub_24B5D8D78();
  sub_24B5FFA7C();
  sub_24B5FFA9C();
  sub_24B5FFACC();
  v20 = qword_27F02AD70;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  v46 = sub_24B5FFAFC();
  v47 = v21;
  v22 = sub_24B5FF53C();
  v24 = v23;
  LOBYTE(v13) = v25;
  sub_24B5FF4BC();
  v26 = sub_24B5FF50C();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_24B5809C0(v22, v24, v13 & 1);

  v33 = v40 & 1;
  v45 = v40 & 1;
  LOBYTE(v46) = v40 & 1;
  v48 = v30 & 1;
  v35 = v43;
  v34 = v44;
  v37 = v41;
  v36 = v42;
  *v44 = v43;
  v34[1] = v37;
  *(v34 + 16) = v33;
  v34[3] = v36;
  v34[4] = v26;
  v34[5] = v28;
  *(v34 + 48) = v30 & 1;
  v34[7] = v32;
  sub_24B580A5C(v35, v37, v33);

  sub_24B580A5C(v26, v28, v30 & 1);

  sub_24B5809C0(v26, v28, v30 & 1);

  sub_24B5809C0(v35, v37, v45);
}

uint64_t sub_24B5DC248()
{
  v0 = sub_24B5FEE1C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_24B5FFADC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24B5FFA6C();
  if (qword_27F0186F0 != -1)
  {
    swift_once();
  }

  v4 = qword_27F02AD70;
  type metadata accessor for FilterView();
  v5 = v4;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  sub_24B5FFAFC();
  sub_24B58096C();
  return sub_24B5FF53C();
}

uint64_t sub_24B5DC3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a6;
  v29 = a7;
  v25[0] = a3;
  v25[1] = a5;
  v27 = a8;
  v11 = type metadata accessor for FilterView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v26 = sub_24B5FEF0C();
  v16 = *(v26 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v26);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(v18);
  (*(v12 + 16))(v15, a1, v11);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v23 = v25[0];
  *(v22 + 16) = a2;
  *(v22 + 24) = v23;
  (*(v12 + 32))(v22 + v21, v15, v11);
  v30 = a2;
  v31 = v23;
  v32 = a1;
  sub_24B5FEE9C();

  return (*(v16 + 8))(v20, v26);
}

uint64_t sub_24B5DC5F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = type metadata accessor for FilterAction();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FilterView();
  sub_24B5D83A4();
  *v8 = a4;
  swift_storeEnumTagMultiPayload();
  sub_24B5FF9BC();

  return sub_24B5E3948(v8, type metadata accessor for FilterAction);
}

uint64_t sub_24B5DC6D8()
{
  v0 = sub_24B5FEE1C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_24B5FFADC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24B5FFA6C();
  if (qword_27F0186F0 != -1)
  {
    swift_once();
  }

  v4 = qword_27F02AD70;
  type metadata accessor for FilterView();
  v5 = v4;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  sub_24B5FFAFC();
  sub_24B58096C();
  v6 = sub_24B5FF53C();
  v8 = v7;
  v10 = v9;
  v11 = sub_24B5FF4FC();
  sub_24B5809C0(v6, v8, v10 & 1);

  return v11;
}

double sub_24B5DC8D4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *&result = sub_24B5DBCB4(a1).n128_u64[0];
  return result;
}

uint64_t sub_24B5DC9B0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_24B5DC6D8();
}

uint64_t sub_24B5DC9C4(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for FilterView() - 8);
  return sub_24B5DC5F0(v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v4, a1);
}

uint64_t sub_24B5DCA44()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_24B5DC248();
}

uint64_t sub_24B5DCA50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24B5DCAD0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24B5DCB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a5;
  v69 = a3;
  v67 = a2;
  v68 = a1;
  v75 = a6;
  v74 = sub_24B5FF23C();
  v73 = *(v74 - 8);
  v7 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24B5FF2AC();
  v70 = *(v71 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v66 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  v62 = v11;
  v12 = sub_24B5C3D68();
  v13 = sub_24B5C3B90();
  v14 = sub_24B5D9BC8();
  v15 = sub_24B5D9C1C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  v17 = sub_24B5D9C70();
  v93 = v16;
  v94 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = a4;
  v93 = a4;
  v94 = &type metadata for Modality;
  v95 = v11;
  v19 = v76;
  v96 = v76;
  v97 = &protocol witness table for Modality;
  v98 = &protocol witness table for Modality;
  v99 = v12;
  v100 = v13;
  v101 = v14;
  v102 = v15;
  v103 = OpaqueTypeConformance2;
  type metadata accessor for FilterModalitySectionView();
  v63 = sub_24B5FF21C();
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  v20 = sub_24B5D9DB4();
  v21 = sub_24B5D9E08();
  v22 = sub_24B5D9E5C();
  v23 = sub_24B5D9EB0();
  v93 = a4;
  v94 = &type metadata for Trainer;
  v95 = v62;
  v96 = v19;
  v97 = &protocol witness table for Trainer;
  v98 = &protocol witness table for Trainer;
  v99 = v20;
  v100 = v21;
  v101 = v22;
  v102 = v23;
  v103 = OpaqueTypeConformance2;
  type metadata accessor for FilterTrainerSectionView();
  sub_24B5FF21C();
  sub_24B5FF21C();
  v24 = sub_24B5FF21C();
  v25 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010);
  v93 = v64;
  v94 = MEMORY[0x277D837D0];
  v95 = v24;
  v96 = v25;
  v97 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v26 = sub_24B5D9F04();
  v27 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020);
  WitnessTable = swift_getWitnessTable();
  v91 = v27;
  v92 = WitnessTable;
  v29 = swift_getWitnessTable();
  v89 = v26;
  v90 = v29;
  v30 = swift_getWitnessTable();
  v31 = sub_24B5D9FE8();
  v32 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050);
  v33 = swift_getWitnessTable();
  v87 = v32;
  v88 = v33;
  v34 = swift_getWitnessTable();
  v85 = v31;
  v86 = v34;
  v35 = swift_getWitnessTable();
  v83 = v30;
  v84 = v35;
  v82 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF87C();
  swift_getWitnessTable();
  v36 = sub_24B5FEF2C();
  v61 = *(v36 - 8);
  v37 = *(v61 + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v61 - v38;
  v40 = swift_getWitnessTable();
  v93 = v36;
  v94 = v40;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = *(OpaqueTypeMetadata2 - 8);
  v42 = *(v64 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v44 = &v61 - v43;
  v93 = v36;
  v94 = v40;
  v45 = swift_getOpaqueTypeConformance2();
  v93 = OpaqueTypeMetadata2;
  v94 = v45;
  v62 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v63 = *(v46 - 8);
  v47 = *(v63 + 64);
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v61 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v52 = &v61 - v51;
  v77 = v65;
  v78 = v76;
  v79 = v67;
  v80 = v69;
  v81 = v68;
  sub_24B5FF3DC();
  sub_24B5EB7C0();
  v53 = sub_24B5FF41C();
  v54 = v66;
  sub_24B5FF29C();
  MEMORY[0x24C2435C0](v53, 0x4034000000000000, 0, v54, v36, v40);
  (*(v70 + 8))(v54, v71);
  v55 = v36;
  v56 = v72;
  (*(v61 + 8))(v39, v55);
  sub_24B5FF22C();
  LOBYTE(v53) = sub_24B5FF3DC();
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v53)
  {
    sub_24B5FF3CC();
  }

  v57 = v62;
  sub_24B5FF66C();
  (*(v73 + 8))(v56, v74);
  (*(v64 + 8))(v44, OpaqueTypeMetadata2);
  v93 = OpaqueTypeMetadata2;
  v94 = v57;
  v58 = swift_getOpaqueTypeConformance2();
  sub_24B5FC7F0(v50, v46, v58);
  v59 = *(v63 + 8);
  v59(v50, v46);
  sub_24B5FC7F0(v52, v46, v58);
  return (v59)(v52, v46);
}

uint64_t sub_24B5DD550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(type metadata accessor for FilterView() - 8);
  v8 = v2[4];
  v9 = v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return sub_24B5DCB7C(a1, v8, v9, v5, v6, a2);
}

uint64_t sub_24B5DD5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a3;
  v30 = a2;
  v29 = a1;
  v32 = a6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
  v25[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  sub_24B5C3D68();
  sub_24B5C3B90();
  sub_24B5D9BC8();
  sub_24B5D9C1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  sub_24B5D9C70();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = a4;
  v27 = a5;
  type metadata accessor for FilterModalitySectionView();
  v25[2] = sub_24B5FF21C();
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  v54 = &protocol witness table for Trainer;
  v55 = sub_24B5D9DB4();
  v56 = sub_24B5D9E08();
  v57 = sub_24B5D9E5C();
  v58 = sub_24B5D9EB0();
  v59 = OpaqueTypeConformance2;
  type metadata accessor for FilterTrainerSectionView();
  sub_24B5FF21C();
  sub_24B5FF21C();
  v9 = sub_24B5FF21C();
  v10 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010);
  v49 = v26;
  v50 = MEMORY[0x277D837D0];
  v51 = v9;
  v52 = v10;
  v53 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v11 = sub_24B5D9F04();
  v47 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020);
  WitnessTable = swift_getWitnessTable();
  v45 = v11;
  v46 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = sub_24B5D9FE8();
  v43 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050);
  v44 = swift_getWitnessTable();
  v41 = v13;
  v42 = swift_getWitnessTable();
  v39 = v12;
  v40 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  swift_getWitnessTable();
  v14 = sub_24B5FF87C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v25 - v20;
  sub_24B5FF1DC();
  v33 = v28;
  v34 = v27;
  v35 = v29;
  v36 = v30;
  v37 = v31;
  sub_24B5FF86C();
  v22 = swift_getWitnessTable();
  sub_24B5FC7F0(v19, v14, v22);
  v23 = *(v15 + 8);
  v23(v19, v14);
  sub_24B5FC7F0(v21, v14, v22);
  return (v23)(v21, v14);
}

uint64_t sub_24B5DDBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v78 = a3;
  v76 = a2;
  v79 = a1;
  v80 = a6;
  v75 = sub_24B5FEF9C();
  v74 = *(v75 - 8);
  v77 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for FilterView();
  v68 = *(v71 - 8);
  v72 = *(v68 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v56 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  v11 = sub_24B5C3D68();
  v12 = sub_24B5C3B90();
  v13 = sub_24B5D9BC8();
  v14 = sub_24B5D9C1C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  v16 = sub_24B5D9C70();
  v92 = v15;
  v93 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = a4;
  v92 = a4;
  v93 = &type metadata for Modality;
  v94 = v10;
  v95 = a5;
  v57 = a5;
  v96 = &protocol witness table for Modality;
  v97 = &protocol witness table for Modality;
  v98 = v11;
  v99 = v12;
  v100 = v13;
  v101 = v14;
  v102 = OpaqueTypeConformance2;
  v65 = type metadata accessor for FilterModalitySectionView();
  v67 = sub_24B5FF21C();
  v59 = sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  v18 = sub_24B5D9DB4();
  v19 = sub_24B5D9E08();
  v20 = sub_24B5D9E5C();
  v21 = sub_24B5D9EB0();
  v92 = a4;
  v93 = &type metadata for Trainer;
  v94 = v10;
  v95 = a5;
  v96 = &protocol witness table for Trainer;
  v97 = &protocol witness table for Trainer;
  v98 = v18;
  v99 = v19;
  v100 = v20;
  v101 = v21;
  v102 = OpaqueTypeConformance2;
  v60 = type metadata accessor for FilterTrainerSectionView();
  v63 = sub_24B5FF21C();
  v64 = sub_24B5FF21C();
  v22 = sub_24B5FF21C();
  v61 = v22;
  v23 = sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010);
  v92 = v70;
  v93 = MEMORY[0x277D837D0];
  v94 = v22;
  v95 = v23;
  v96 = MEMORY[0x277D837E0];
  v24 = sub_24B5FF8CC();
  v70 = *(v24 - 8);
  v25 = *(v70 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v62 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v66 = &v56 - v28;
  v29 = v68;
  v30 = v69;
  v31 = v71;
  (*(v68 + 16))(v69, v76, v71);
  v32 = v74;
  v33 = v73;
  v34 = v75;
  (*(v74 + 16))(v73, v78, v75);
  v35 = v29;
  v36 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v37 = (v72 + *(v32 + 80) + v36) & ~*(v32 + 80);
  v38 = swift_allocObject();
  v39 = v57;
  *(v38 + 16) = v58;
  *(v38 + 24) = v39;
  (*(v35 + 32))(v38 + v36, v30, v31);
  (*(v32 + 32))(v38 + v37, v33, v34);
  type metadata accessor for FilterSectionDescriptor();
  v40 = sub_24B5D9F04();
  v41 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020);

  WitnessTable = swift_getWitnessTable();
  v90 = v41;
  v91 = WitnessTable;
  v43 = swift_getWitnessTable();
  v88 = v40;
  v89 = v43;
  v44 = swift_getWitnessTable();
  v45 = sub_24B5D9FE8();
  v46 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050);
  v47 = swift_getWitnessTable();
  v86 = v46;
  v87 = v47;
  v48 = swift_getWitnessTable();
  v84 = v45;
  v85 = v48;
  v49 = swift_getWitnessTable();
  v82 = v44;
  v83 = v49;
  v50 = swift_getWitnessTable();
  sub_24B5C3F00(&qword_27F01A238);
  sub_24B5C3F00(&qword_27F01A240);
  v51 = v62;
  sub_24B5FF8AC();
  v81 = v50;
  v52 = swift_getWitnessTable();
  v53 = v66;
  sub_24B5FC7F0(v51, v24, v52);
  v54 = *(v70 + 8);
  v54(v51, v24);
  sub_24B5FC7F0(v53, v24, v52);
  return (v54)(v53, v24);
}

uint64_t sub_24B5DE450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v91 = a4;
  v105 = a3;
  v103 = a2;
  v99 = a1;
  v100 = a7;
  v9 = type metadata accessor for FilterSectionDescriptor();
  v93 = *(v9 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = v11;
  v102 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for FilterView();
  v96 = *(v97 - 8);
  v12 = *(v96 + 64);
  v13 = MEMORY[0x28223BE20](v97);
  v95 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v14;
  MEMORY[0x28223BE20](v13);
  v101 = v76 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  v17 = sub_24B5C3D68();
  v18 = sub_24B5C3B90();
  v19 = sub_24B5D9BC8();
  v20 = sub_24B5D9C1C();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  v22 = sub_24B5D9C70();
  v116 = v21;
  v117 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v116 = a5;
  v117 = &type metadata for Modality;
  v118 = v16;
  v119 = a6;
  v120 = &protocol witness table for Modality;
  v121 = &protocol witness table for Modality;
  v122 = v17;
  v123 = v18;
  v124 = v19;
  v125 = v20;
  v126 = OpaqueTypeConformance2;
  v86 = type metadata accessor for FilterModalitySectionView();
  v87 = sub_24B5FF21C();
  v24 = sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  v25 = sub_24B5D9DB4();
  v26 = sub_24B5D9E08();
  v27 = sub_24B5D9E5C();
  v28 = sub_24B5D9EB0();
  v98 = a5;
  v116 = a5;
  v117 = &type metadata for Trainer;
  v94 = v16;
  v118 = v16;
  v119 = a6;
  v104 = a6;
  v120 = &protocol witness table for Trainer;
  v121 = &protocol witness table for Trainer;
  v122 = v25;
  v123 = v26;
  v124 = v27;
  v125 = v28;
  v83 = OpaqueTypeConformance2;
  v126 = OpaqueTypeConformance2;
  v79 = type metadata accessor for FilterTrainerSectionView();
  v80 = sub_24B5FF21C();
  v29 = sub_24B5FF21C();
  v88 = v24;
  v82 = v29;
  v90 = sub_24B5FF21C();
  v89 = *(v90 - 8);
  v30 = *(v89 + 64);
  v31 = MEMORY[0x28223BE20](v90);
  v81 = v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v84 = v76 - v33;
  v34 = sub_24B5FEE1C();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = sub_24B5FFADC();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  sub_24B5FFA6C();
  if (qword_27F0186F0 != -1)
  {
    swift_once();
  }

  v38 = qword_27F02AD70;
  v39 = v97;
  v40 = v105;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  v78 = sub_24B5FFAFC();
  v77 = v41;
  sub_24B5FEF8C();
  v43 = v42;
  v44 = v96;
  v91 = *(v96 + 16);
  v45 = v39;
  v91(v101, v40, v39);
  sub_24B5D5A20(v103, v102);
  v46 = *(v44 + 80);
  v47 = (v46 + 32) & ~v46;
  v85 += v47;
  v76[1] = v46 | 7;
  v48 = (v85 + *(v93 + 80)) & ~*(v93 + 80);
  v49 = (v92 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v98;
  v52 = v104;
  *(v50 + 16) = v98;
  *(v50 + 24) = v52;
  v96 = *(v44 + 32);
  (v96)(v50 + v47, v101, v45);
  sub_24B5E2A78(v102, v50 + v48);
  v53 = v99;
  *(v50 + v49) = v99;
  v54 = (v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8));
  v55 = v77;
  *v54 = v78;
  v54[1] = v55;
  v56 = v95;
  v91(v95, v105, v45);
  v57 = (v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v59 = v104;
  *(v58 + 16) = v51;
  *(v58 + 24) = v59;
  (v96)(v58 + v47, v56, v45);
  *(v58 + v57) = v53;
  v60 = v81;
  sub_24B5DF96C(v103, sub_24B5E2ADC, v50, sub_24B5E2C08, v58, v45, v94, v83, v81, v43);

  v61 = sub_24B5D9F04();
  v62 = sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020);
  WitnessTable = swift_getWitnessTable();
  v114 = v62;
  v115 = WitnessTable;
  v64 = swift_getWitnessTable();
  v112 = v61;
  v113 = v64;
  v65 = swift_getWitnessTable();
  v66 = sub_24B5D9FE8();
  v67 = sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050);
  v68 = swift_getWitnessTable();
  v110 = v67;
  v111 = v68;
  v69 = swift_getWitnessTable();
  v108 = v66;
  v109 = v69;
  v70 = swift_getWitnessTable();
  v106 = v65;
  v107 = v70;
  v71 = v90;
  v72 = swift_getWitnessTable();
  v73 = v84;
  sub_24B5FC7F0(v60, v71, v72);
  v74 = *(v89 + 8);
  v74(v60, v71);
  sub_24B5FC7F0(v73, v71, v72);
  return (v74)(v73, v71);
}

uint64_t sub_24B5DEE40@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v71 = a7;
  v68 = a6;
  v66 = a5;
  v65 = a4;
  v72 = a1;
  v75 = a8;
  v77 = sub_24B5FFA3C();
  v76 = *(v77 - 8);
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v74 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B5FF9DC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v73 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24B5FEDEC();
  v67 = *(v15 - 8);
  v16 = *(v67 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v62 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v63 = &v61 - v19;
  v20 = sub_24B5FF9FC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018910, &qword_24B606920);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v70 = &v61 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v64 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v61 - v31;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A098, &qword_24B608030);
  v33 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v35 = &v61 - v34;
  v36 = *(type metadata accessor for FilterSectionDescriptor() + 20);
  sub_24B57BAFC(a2 + v36, v32, &qword_27F018BD0, &unk_24B6022F0);
  if (a3)
  {
    v37 = 0;
  }

  else
  {
    v37 = v65;
  }

  if (a3)
  {
    v38 = 0;
  }

  else
  {
    v38 = v66;
  }

  v39 = type metadata accessor for FilterView();
  v71 = v35;
  v40 = v38;
  v41 = v67;
  sub_24B5DF598(v32, v37, v40, v39, v35);
  sub_24B58090C(v32, &qword_27F018BD0, &unk_24B6022F0);
  v42 = *a2;
  v43 = a2[1];

  v72 = v23;
  sub_24B5FF9EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018988, &unk_24B6034F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B600A40;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v45 = a2 + v36;
  v46 = v64;
  sub_24B57BAFC(v45, v64, &qword_27F018BD0, &unk_24B6022F0);
  v47 = (*(v41 + 48))(v46, 1, v15);
  v48 = MEMORY[0x277D837D0];
  if (v47 == 1)
  {
    v49 = (inited + 48);
    *(inited + 72) = MEMORY[0x277D837D0];
LABEL_11:
    *v49 = 0;
    v53 = 0xE000000000000000;
    goto LABEL_12;
  }

  v50 = v63;
  (*(v41 + 32))(v63, v46, v15);
  (*(v41 + 16))(v62, v50, v15);
  v51 = sub_24B5FFB0C();
  v53 = v52;
  (*(v41 + 8))(v50, v15);
  v49 = (inited + 48);
  *(inited + 72) = v48;
  if (!v53)
  {
    goto LABEL_11;
  }

  *v49 = v51;
LABEL_12:
  *(inited + 56) = v53;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x666C656873;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 120) = v48;
  *(inited + 128) = 0x6973736572706D69;
  v54 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = a3;
  *(inited + 168) = v54;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v48;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B5EA4D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018990, &unk_24B600BF0);
  swift_arrayDestroy();
  sub_24B5FF9CC();
  v55 = MEMORY[0x277D84F90];
  sub_24B5F033C(MEMORY[0x277D84F90]);
  sub_24B5F033C(v55);
  v56 = v70;
  sub_24B5FFA0C();
  v57 = sub_24B5FFA1C();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  v58 = v74;
  sub_24B5FFA2C();
  sub_24B5D9C70();
  v59 = v71;
  sub_24B5FF55C();
  (*(v76 + 8))(v58, v77);
  sub_24B58090C(v56, &qword_27F018910, &qword_24B606920);
  return sub_24B58090C(v59, &qword_27F01A098, &qword_24B608030);
}

uint64_t sub_24B5DF598@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A0C0, &qword_24B608040);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A0B0, &qword_24B608038);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v38 - v19;
  *v15 = sub_24B5FF12C();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A2E8, &qword_24B6081D0);
  sub_24B5E3F30(a1, a2, a3, v6, *(a4 + 16), *(a4 + 24), &v15[*(v21 + 44)]);
  sub_24B5FF90C();
  sub_24B5FF03C();
  sub_24B5CD578(v15, v20, &qword_27F01A0C0, &qword_24B608040);
  v22 = &v20[*(v17 + 44)];
  v23 = v38[5];
  *(v22 + 4) = v38[4];
  *(v22 + 5) = v23;
  *(v22 + 6) = v38[6];
  v24 = v38[1];
  *v22 = v38[0];
  *(v22 + 1) = v24;
  v25 = v38[3];
  *(v22 + 2) = v38[2];
  *(v22 + 3) = v25;
  v26 = sub_24B5FF41C();
  v27 = sub_24B5FF43C();
  sub_24B5FF43C();
  if (sub_24B5FF43C() != v26)
  {
    v27 = sub_24B5FF43C();
  }

  sub_24B5FEF1C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_24B5CD578(v20, a5, &qword_27F01A0B0, &qword_24B608038);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A098, &qword_24B608030);
  v37 = a5 + *(result + 36);
  *v37 = v27;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_24B5DF808(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[1] = a7;
  v19[2] = a4;
  v21 = a3;
  v22 = a5;
  v20 = type metadata accessor for FilterAction();
  v9 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *a2;
  LOBYTE(a2) = *(a1 + 40);
  type metadata accessor for FilterView();
  sub_24B5D83A4();
  LODWORD(a1) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B38, &qword_24B600DD0) + 64);
  *v11 = v13;
  *(v11 + 1) = v12;
  *(v11 + 2) = v14;
  *(v11 + 3) = v15;
  *(v11 + 4) = v16;
  v11[40] = a2;
  v11[41] = v17;
  sub_24B57BA1C(v13, v12, v14, v15, v16, a2);
  MEMORY[0x24C242E00](v21, v22);
  swift_storeEnumTagMultiPayload();
  sub_24B5FF9BC();

  return sub_24B5E3948(v11, type metadata accessor for FilterAction);
}

uint64_t sub_24B5DF96C@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, ValueMetadata *a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v432 = a5;
  v431 = a4;
  v443 = a3;
  v433 = a2;
  v428 = a1;
  v440 = a9;
  v427 = a6;
  v13 = *(a6 + 16);
  v14 = *(a6 + 24);
  v15 = sub_24B5D9DB4();
  v16 = sub_24B5D9E08();
  v17 = sub_24B5D9E5C();
  v572 = v13;
  v573 = &type metadata for Trainer;
  *&v574 = a7;
  *(&v574 + 1) = v14;
  v575 = &protocol witness table for Trainer;
  v576 = &protocol witness table for Trainer;
  v391 = v16;
  v392 = v15;
  v577 = v15;
  v578 = v16;
  v389 = sub_24B5D9EB0();
  v390 = v17;
  v579 = v17;
  v580 = v389;
  v581 = a8;
  v18 = type metadata accessor for FilterTrainerSectionView();
  v422 = *(v18 - 8);
  v19 = *(v422 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v413 = v378 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v412 = v378 - v22;
  v23 = sub_24B5D5160();
  v24 = sub_24B5D4BEC();
  v25 = sub_24B5E2CD8();
  v26 = sub_24B5E2D2C();
  v572 = &type metadata for Theme;
  v573 = a7;
  *&v574 = &protocol witness table for Theme;
  *(&v574 + 1) = &protocol witness table for Theme;
  v387 = v24;
  v388 = v23;
  v575 = v23;
  v576 = v24;
  v385 = v26;
  v386 = v25;
  v577 = v25;
  v578 = v26;
  v579 = a8;
  v450 = type metadata accessor for FilterThemeSectionView();
  v452 = v18;
  v27 = sub_24B5FF21C();
  v415 = *(v27 - 8);
  v28 = *(v415 + 64);
  MEMORY[0x28223BE20](v27);
  v414 = v378 - v29;
  v382 = type metadata accessor for FilterLayout();
  v30 = *(*(v382 - 8) + 64);
  MEMORY[0x28223BE20](v382);
  v379 = v378 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24B5E2D80();
  v33 = sub_24B5E2DD4();
  v34 = sub_24B5E2E28();
  v35 = sub_24B5E2E7C();
  v572 = &type metadata for SkillLevel;
  v573 = a7;
  *&v574 = &protocol witness table for SkillLevel;
  *(&v574 + 1) = &protocol witness table for SkillLevel;
  v383 = v33;
  v384 = v32;
  v575 = v32;
  v576 = v33;
  v380 = v35;
  v381 = v34;
  v577 = v34;
  v578 = v35;
  v579 = a8;
  v36 = type metadata accessor for FilterStandardSectionView();
  v421 = *(v36 - 8);
  v37 = *(v421 + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v409 = (v378 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38);
  v408 = v378 - v40;
  v41 = sub_24B5E2ED0();
  v42 = sub_24B5E2F24();
  v43 = sub_24B5E2F78();
  v44 = sub_24B5E2FCC();
  v572 = &type metadata for MusicGenre;
  v573 = a7;
  *&v574 = &protocol witness table for MusicGenre;
  *(&v574 + 1) = &protocol witness table for MusicGenre;
  v378[15] = v42;
  v378[16] = v41;
  v575 = v41;
  v576 = v42;
  v378[13] = v44;
  v378[14] = v43;
  v577 = v43;
  v578 = v44;
  v579 = a8;
  v45 = type metadata accessor for FilterStandardSectionView();
  v455 = v36;
  v46 = sub_24B5FF21C();
  v411 = *(v46 - 8);
  v47 = *(v411 + 64);
  MEMORY[0x28223BE20](v46);
  v410 = v378 - v48;
  v449 = v49;
  v451 = v27;
  v50 = sub_24B5FF21C();
  v424 = *(v50 - 8);
  v51 = *(v424 + 64);
  v52 = MEMORY[0x28223BE20](v50);
  v425 = v378 - v53;
  v453 = v45;
  v420 = *(v45 - 8);
  v54 = *(v420 + 64);
  v55 = MEMORY[0x28223BE20](v52);
  v407 = (v378 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v55);
  v406 = v378 - v57;
  v58 = sub_24B5C3D68();
  v59 = sub_24B5C3B90();
  v60 = sub_24B5D9BC8();
  v61 = sub_24B5D9C1C();
  *&v444 = v13;
  v572 = v13;
  v573 = &type metadata for Modality;
  *&v574 = a7;
  *(&v574 + 1) = v14;
  v430 = v14;
  v575 = &protocol witness table for Modality;
  v576 = &protocol witness table for Modality;
  v378[11] = v59;
  v378[12] = v58;
  v577 = v58;
  v578 = v59;
  v378[9] = v61;
  v378[10] = v60;
  v579 = v60;
  v580 = v61;
  v581 = a8;
  v62 = type metadata accessor for FilterModalitySectionView();
  v419 = *(v62 - 8);
  v63 = *(v419 + 64);
  v64 = MEMORY[0x28223BE20](v62);
  v403 = v378 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v402 = v378 - v66;
  v67 = sub_24B5E3020();
  v68 = sub_24B5E3074();
  v69 = sub_24B5E30C8();
  v70 = sub_24B5E311C();
  v572 = &type metadata for Equipment;
  v573 = a7;
  *&v574 = &protocol witness table for Equipment;
  *(&v574 + 1) = &protocol witness table for Equipment;
  v378[7] = v68;
  v378[8] = v67;
  v575 = v67;
  v576 = v68;
  v378[5] = v70;
  v378[6] = v69;
  v577 = v69;
  v578 = v70;
  v579 = a8;
  v71 = type metadata accessor for FilterStandardSectionView();
  v448 = v62;
  v72 = sub_24B5FF21C();
  v405 = *(v72 - 8);
  v73 = *(v405 + 64);
  v74 = MEMORY[0x28223BE20](v72);
  v404 = v378 - v75;
  v454 = v71;
  v418 = *(v71 - 8);
  v76 = *(v418 + 64);
  v77 = MEMORY[0x28223BE20](v74);
  v401 = (v378 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v77);
  v400 = v378 - v79;
  v80 = sub_24B5FEE1C();
  v81 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80 - 8);
  v395 = v378 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_24B5AE4A8();
  v84 = sub_24B5AE3AC();
  v85 = sub_24B5E3170();
  v86 = sub_24B5E31C4();
  v572 = &type metadata for Duration;
  v573 = a7;
  *&v574 = &protocol witness table for Duration;
  *(&v574 + 1) = &protocol witness table for Duration;
  v378[3] = v84;
  v378[4] = v83;
  v575 = v83;
  v576 = v84;
  v378[1] = v86;
  v378[2] = v85;
  v577 = v85;
  v578 = v86;
  v579 = a8;
  v87 = type metadata accessor for FilterDurationSectionView();
  v417 = *(v87 - 8);
  v88 = *(v417 + 64);
  v89 = MEMORY[0x28223BE20](v87);
  v397 = v378 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v89);
  v396 = v378 - v91;
  v92 = sub_24B5E3218();
  v93 = sub_24B5E326C();
  v94 = sub_24B5E32C0();
  v95 = sub_24B5E3314();
  v572 = &type metadata for BodyFocus;
  v573 = a7;
  v442 = a7;
  *&v574 = &protocol witness table for BodyFocus;
  *(&v574 + 1) = &protocol witness table for BodyFocus;
  v378[0] = v92;
  v575 = v92;
  v576 = v93;
  v577 = v94;
  v578 = v95;
  v579 = a8;
  v96 = type metadata accessor for FilterStandardSectionView();
  v446 = v87;
  v97 = sub_24B5FF21C();
  v399 = *(v97 - 8);
  v98 = *(v399 + 64);
  MEMORY[0x28223BE20](v97);
  v398 = v378 - v99;
  v447 = v100;
  v438 = v72;
  v101 = sub_24B5FF21C();
  v423 = *(v101 - 8);
  v102 = *(v423 + 64);
  v103 = MEMORY[0x28223BE20](v101);
  v426 = v378 - v104;
  v105 = v427;
  v106 = *(v427 - 8);
  v107 = *(v106 + 64);
  v108 = MEMORY[0x28223BE20](v103);
  v441 = v378 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v445 = v96;
  v416 = *(v96 - 8);
  v109 = *(v416 + 64);
  v110 = MEMORY[0x28223BE20](v108);
  v394 = (v378 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v110);
  v393 = v378 - v112;
  v434 = v113;
  v439 = v50;
  v437 = sub_24B5FF21C();
  v436 = *(v437 - 8);
  v114 = *(v436 + 64);
  MEMORY[0x28223BE20](v437);
  v116 = v378 - v115;
  v117 = v428 + *(type metadata accessor for FilterSectionDescriptor() + 24);
  v118 = *v117;
  v119 = *(v117 + 8);
  v435 = v116;
  if (v119 > 3)
  {
    if (v119 > 5)
    {
      if (v119 == 6)
      {

        v207 = v105;
        v208 = v429;
        sub_24B5D83A4();
        swift_getKeyPath();
        v209 = v379;
        sub_24B5FF9AC();

        LODWORD(v426) = *(v209 + *(v382 + 20));
        sub_24B5E3948(v209, type metadata accessor for FilterLayout);
        v210 = v441;
        (*(v106 + 16))(v441, v208, v207);
        v211 = (*(v106 + 80) + 48) & ~*(v106 + 80);
        v212 = (v107 + v211 + 7) & 0xFFFFFFFFFFFFFFF8;
        v213 = swift_allocObject();
        v214 = v118;
        v215 = v442;
        *(v213 + 2) = v444;
        *(v213 + 3) = v215;
        *(v213 + 4) = v430;
        *(v213 + 5) = a8;
        (*(v106 + 32))(&v213[v211], v210, v207);
        v216 = &v213[v212];
        v217 = v432;
        *v216 = v431;
        *(v216 + 1) = v217;
        FilterThemeSectionView.init(sizeClass:headerViewBuilder:options:onOptionSelected:)(v426, v433, v443, v214, sub_24B5E39A8, v213, v543);
        v540[0] = v543[0];
        v541[0] = v544[0];
        v541[1] = v544[1];
        v542 = v545;
        v218 = v450;
        WitnessTable = swift_getWitnessTable();
        sub_24B5FC7F0(v540, v218, WitnessTable);

        v540[0] = v572;
        *&v541[0] = v573;
        v444 = v574;
        *(v541 + 8) = v574;
        *(&v541[1] + 1) = v575;
        v542 = v576;
        sub_24B5FC7F0(v540, v218, WitnessTable);

        v540[0] = v543[0];
        *&v541[0] = *&v544[0];
        *(v541 + 8) = *(v544 + 8);
        *(&v541[1] + 1) = *(&v544[1] + 1);
        v542 = v545;

        v220 = swift_getWitnessTable();
        v221 = v414;
        sub_24B5F7EAC(v540, v218);

        v222 = swift_getWitnessTable();
        v223 = swift_getWitnessTable();
        v538 = v222;
        v539 = v223;
        v224 = v449;
        v225 = swift_getWitnessTable();
        v536 = WitnessTable;
        v537 = v220;
        v226 = v451;
        v227 = swift_getWitnessTable();
        v228 = v425;
        sub_24B5F7FA4(v221, v224, v226);
        (*(v415 + 8))(v221, v226);
        v229 = swift_getWitnessTable();
        v230 = swift_getWitnessTable();
        v534 = v229;
        v535 = v230;
        v231 = swift_getWitnessTable();
        v232 = swift_getWitnessTable();
        v233 = swift_getWitnessTable();
        v532 = v232;
        v533 = v233;
        v234 = swift_getWitnessTable();
        v530 = v231;
        v531 = v234;
        v235 = v434;
        swift_getWitnessTable();
        v528 = v225;
        v529 = v227;
        v236 = v439;
        swift_getWitnessTable();
        v146 = v435;
        sub_24B5F7FA4(v228, v235, v236);
        (*(v424 + 8))(v228, v236);
      }

      else
      {
        v428 = v118;

        v327 = v105;
        v328 = v429;
        v426 = sub_24B5D84EC(v105);
        v423 = v329;
        v330 = v441;
        (*(v106 + 16))(v441, v328, v105);
        v331 = (*(v106 + 80) + 48) & ~*(v106 + 80);
        v332 = (v107 + v331 + 7) & 0xFFFFFFFFFFFFFFF8;
        v333 = swift_allocObject();
        v334 = v442;
        *(v333 + 2) = v444;
        *(v333 + 3) = v334;
        *(v333 + 4) = v430;
        *(v333 + 5) = a8;
        (*(v106 + 32))(&v333[v331], v330, v327);
        v335 = &v333[v332];
        v336 = v432;
        *v335 = v431;
        *(v335 + 1) = v336;

        v337 = v413;
        FilterTrainerSectionView.init(containerWidth:artworkViewBuilder:headerViewBuilder:options:onOptionSelected:)(v426, v423, v433, v428, sub_24B5E3930, v333, v413, a10);
        v338 = v452;
        v339 = swift_getWitnessTable();
        v340 = v412;
        sub_24B5FC7F0(v337, v338, v339);
        v341 = *(v422 + 8);
        v422 += 8;
        *&v444 = v341;
        v341(v337, v338);
        sub_24B5FC7F0(v340, v338, v339);
        v342 = v450;
        v343 = swift_getWitnessTable();
        v344 = v414;
        sub_24B5F7FA4(v337, v342, v338);
        v345 = swift_getWitnessTable();
        v346 = swift_getWitnessTable();
        v570 = v345;
        v571 = v346;
        v347 = v449;
        v348 = swift_getWitnessTable();
        v568 = v343;
        v569 = v339;
        v349 = v451;
        v350 = swift_getWitnessTable();
        sub_24B5F7FA4(v344, v347, v349);
        (*(v415 + 8))(v344, v349);
        v351 = swift_getWitnessTable();
        v352 = swift_getWitnessTable();
        v566 = v351;
        v567 = v352;
        v353 = swift_getWitnessTable();
        v354 = swift_getWitnessTable();
        v355 = swift_getWitnessTable();
        v564 = v354;
        v565 = v355;
        v356 = swift_getWitnessTable();
        v562 = v353;
        v563 = v356;
        v357 = v434;
        swift_getWitnessTable();
        v560 = v348;
        v561 = v350;
        v358 = v439;
        swift_getWitnessTable();
        v146 = v435;
        v359 = v425;
        sub_24B5F7FA4(v425, v357, v358);
        (*(v424 + 8))(v359, v358);
        v360 = v444;
        (v444)(v413, v338);
        v360(v412, v338);
      }
    }

    else
    {
      v150 = v441;
      if (v119 == 4)
      {
        (*(v106 + 16))(v441, v429, v105);
        v151 = (*(v106 + 80) + 48) & ~*(v106 + 80);
        v152 = (v107 + v151 + 7) & 0xFFFFFFFFFFFFFFF8;
        v153 = swift_allocObject();
        v154 = v442;
        *(v153 + 2) = v444;
        *(v153 + 3) = v154;
        *(v153 + 4) = v430;
        *(v153 + 5) = a8;
        (*(v106 + 32))(&v153[v151], v150, v105);
        v155 = &v153[v152];
        v156 = v432;
        *v155 = v431;
        *(v155 + 1) = v156;
        sub_24B5E3B80(v118, 4u);

        v157 = v407;
        FilterStandardSectionView.init(containerWidth:headerViewBuilder:options:onOptionSelected:)(v433, v118, sub_24B5E3B94, v153, v407, a10);
        v158 = v453;
        v159 = swift_getWitnessTable();
        v160 = v406;
        sub_24B5FC7F0(v157, v158, v159);
        v161 = *(v420 + 8);
        v420 += 8;
        *&v444 = v161;
        v161(v157, v158);
        sub_24B5FC7F0(v160, v158, v159);
        v162 = swift_getWitnessTable();
        v163 = v410;
        sub_24B5F7EAC(v157, v158);
        v514 = v159;
        v515 = v162;
        v164 = v449;
        v443 = swift_getWitnessTable();
        v165 = swift_getWitnessTable();
        v166 = swift_getWitnessTable();
        v512 = v165;
        v513 = v166;
        v167 = swift_getWitnessTable();
        v168 = v425;
        sub_24B5F7EAC(v163, v164);
        (*(v411 + 8))(v163, v164);
        v169 = swift_getWitnessTable();
        v170 = swift_getWitnessTable();
        v510 = v169;
        v511 = v170;
        v171 = swift_getWitnessTable();
        v172 = swift_getWitnessTable();
        v173 = swift_getWitnessTable();
        v508 = v172;
        v509 = v173;
        v174 = swift_getWitnessTable();
        v506 = v171;
        v507 = v174;
        v175 = v434;
        swift_getWitnessTable();
        v504 = v443;
        v505 = v167;
        v176 = v439;
        swift_getWitnessTable();
        v146 = v435;
        sub_24B5F7FA4(v168, v175, v176);
        (*(v424 + 8))(v168, v176);
        v177 = v453;
        v178 = v444;
        (v444)(v407, v453);
        v178(v406, v177);
      }

      else
      {
        (*(v106 + 16))(v441, v429, v105);
        v267 = (*(v106 + 80) + 48) & ~*(v106 + 80);
        v268 = (v107 + v267 + 7) & 0xFFFFFFFFFFFFFFF8;
        v269 = swift_allocObject();
        v270 = v442;
        *(v269 + 2) = v444;
        *(v269 + 3) = v270;
        *(v269 + 4) = v430;
        *(v269 + 5) = a8;
        (*(v106 + 32))(&v269[v267], v150, v105);
        v271 = &v269[v268];
        v272 = v432;
        *v271 = v431;
        *(v271 + 1) = v272;
        sub_24B5E3B80(v118, 5u);

        v273 = v409;
        FilterStandardSectionView.init(containerWidth:headerViewBuilder:options:onOptionSelected:)(v433, v118, sub_24B5E3A84, v269, v409, a10);
        v274 = v455;
        v275 = swift_getWitnessTable();
        v276 = v408;
        sub_24B5FC7F0(v273, v274, v275);
        *&v444 = *(v421 + 8);
        v421 += 8;
        (v444)(v273, v274);
        sub_24B5FC7F0(v276, v274, v275);
        v277 = v453;
        v278 = swift_getWitnessTable();
        v279 = v410;
        sub_24B5F7FA4(v273, v277, v274);
        v526 = v278;
        v527 = v275;
        v280 = v449;
        v443 = swift_getWitnessTable();
        v281 = swift_getWitnessTable();
        v282 = swift_getWitnessTable();
        v524 = v281;
        v525 = v282;
        v283 = swift_getWitnessTable();
        v284 = v425;
        sub_24B5F7EAC(v279, v280);
        (*(v411 + 8))(v279, v280);
        v285 = swift_getWitnessTable();
        v286 = swift_getWitnessTable();
        v522 = v285;
        v523 = v286;
        v287 = swift_getWitnessTable();
        v288 = swift_getWitnessTable();
        v289 = swift_getWitnessTable();
        v520 = v288;
        v521 = v289;
        v290 = swift_getWitnessTable();
        v518 = v287;
        v291 = v455;
        v519 = v290;
        v292 = v434;
        swift_getWitnessTable();
        v516 = v443;
        v517 = v283;
        v293 = v439;
        swift_getWitnessTable();
        v146 = v435;
        sub_24B5F7FA4(v284, v292, v293);
        (*(v424 + 8))(v284, v293);
        v294 = v444;
        (v444)(v409, v291);
        v294(v408, v291);
      }
    }
  }

  else
  {
    if (v119 > 1)
    {
      if (v119 == 2)
      {
        v179 = v441;
        (*(v106 + 16))(v441, v429, v105);
        v180 = (*(v106 + 80) + 48) & ~*(v106 + 80);
        v181 = (v107 + v180 + 7) & 0xFFFFFFFFFFFFFFF8;
        v182 = swift_allocObject();
        v183 = v442;
        *(v182 + 2) = v444;
        *(v182 + 3) = v183;
        *(v182 + 4) = v430;
        *(v182 + 5) = a8;
        (*(v106 + 32))(&v182[v180], v179, v105);
        v184 = &v182[v181];
        v185 = v432;
        *v184 = v431;
        *(v184 + 1) = v185;
        sub_24B5E3B80(v118, 2u);

        v186 = v401;
        FilterStandardSectionView.init(containerWidth:headerViewBuilder:options:onOptionSelected:)(v433, v118, sub_24B5E3BC4, v182, v401, a10);
        v187 = v454;
        v188 = swift_getWitnessTable();
        v189 = v400;
        sub_24B5FC7F0(v186, v187, v188);
        v190 = *(v418 + 8);
        v418 += 8;
        *&v444 = v190;
        v190(v186, v187);
        sub_24B5FC7F0(v189, v187, v188);
        v191 = swift_getWitnessTable();
        v192 = v404;
        sub_24B5F7EAC(v186, v187);
        v193 = swift_getWitnessTable();
        v194 = swift_getWitnessTable();
        v490 = v193;
        v491 = v194;
        v195 = v447;
        v196 = swift_getWitnessTable();
        v488 = v188;
        v489 = v191;
        v197 = v438;
        v198 = swift_getWitnessTable();
        v199 = v426;
        sub_24B5F7FA4(v192, v195, v197);
        (*(v405 + 8))(v192, v197);
        v486 = v196;
        v487 = v198;
        v200 = v434;
        swift_getWitnessTable();
        v201 = swift_getWitnessTable();
        v202 = swift_getWitnessTable();
        v484 = v201;
        v485 = v202;
        v203 = swift_getWitnessTable();
        v204 = swift_getWitnessTable();
        v205 = swift_getWitnessTable();
        v482 = v204;
        v483 = v205;
        v206 = swift_getWitnessTable();
        v480 = v203;
        v481 = v206;
        swift_getWitnessTable();
        v146 = v435;
        sub_24B5F7EAC(v199, v200);
        (*(v423 + 8))(v199, v200);
        v128 = v454;
        v148 = v444;
        (v444)(v401, v454);
        v149 = v400;
      }

      else
      {
        v428 = v118;

        v295 = v105;
        v296 = v429;
        v297 = sub_24B5D84EC(v105);
        v424 = v298;
        v425 = v297;
        v299 = v441;
        (*(v106 + 16))(v441, v296, v105);
        v300 = (*(v106 + 80) + 48) & ~*(v106 + 80);
        v301 = (v107 + v300 + 7) & 0xFFFFFFFFFFFFFFF8;
        v302 = swift_allocObject();
        v303 = v442;
        *(v302 + 2) = v444;
        *(v302 + 3) = v303;
        *(v302 + 4) = v430;
        *(v302 + 5) = a8;
        (*(v106 + 32))(&v302[v300], v299, v295);
        v304 = &v302[v301];
        v305 = v432;
        *v304 = v431;
        *(v304 + 1) = v305;

        v306 = v403;
        FilterModalitySectionView.init(containerWidth:artworkViewBuilder:headerViewBuilder:options:onOptionSelected:)(v425, v424, v433, v428, sub_24B5E3BAC, v302, v403, a10);
        v128 = v448;
        v307 = swift_getWitnessTable();
        v308 = v402;
        sub_24B5FC7F0(v306, v128, v307);
        v309 = *(v419 + 8);
        v419 += 8;
        *&v444 = v309;
        v309(v306, v128);
        sub_24B5FC7F0(v308, v128, v307);
        v310 = v454;
        v311 = swift_getWitnessTable();
        v312 = v404;
        sub_24B5F7FA4(v306, v310, v128);
        v313 = swift_getWitnessTable();
        v314 = swift_getWitnessTable();
        v502 = v313;
        v503 = v314;
        v315 = v447;
        v316 = swift_getWitnessTable();
        v500 = v311;
        v501 = v307;
        v317 = v438;
        v318 = swift_getWitnessTable();
        sub_24B5F7FA4(v312, v315, v317);
        (*(v405 + 8))(v312, v317);
        v498 = v316;
        v499 = v318;
        v319 = v434;
        swift_getWitnessTable();
        v320 = swift_getWitnessTable();
        v321 = swift_getWitnessTable();
        v496 = v320;
        v497 = v321;
        v322 = swift_getWitnessTable();
        v323 = swift_getWitnessTable();
        v324 = swift_getWitnessTable();
        v494 = v323;
        v495 = v324;
        v325 = swift_getWitnessTable();
        v492 = v322;
        v493 = v325;
        swift_getWitnessTable();
        v146 = v435;
        v326 = v426;
        sub_24B5F7EAC(v426, v319);
        (*(v423 + 8))(v326, v319);
        v148 = v444;
        (v444)(v403, v128);
        v149 = v402;
      }

      goto LABEL_15;
    }

    v428 = v118;
    if (!v119)
    {
      (*(v106 + 16))(v441, v429, v105);
      v120 = (*(v106 + 80) + 48) & ~*(v106 + 80);
      v121 = (v107 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
      v122 = swift_allocObject();
      v123 = v442;
      *(v122 + 2) = v444;
      *(v122 + 3) = v123;
      *(v122 + 4) = v430;
      *(v122 + 5) = a8;
      (*(v106 + 32))(&v122[v120], v441, v105);
      v124 = &v122[v121];
      v125 = v432;
      *v124 = v431;
      *(v124 + 1) = v125;
      v126 = v428;
      sub_24B5E3B80(v428, 0);

      v127 = v394;
      FilterStandardSectionView.init(containerWidth:headerViewBuilder:options:onOptionSelected:)(v433, v126, sub_24B5E3F18, v122, v394, a10);
      v128 = v445;
      v129 = swift_getWitnessTable();
      v130 = v393;
      sub_24B5FC7F0(v127, v128, v129);
      v131 = *(v416 + 8);
      v416 += 8;
      *&v444 = v131;
      v131(v127, v128);
      sub_24B5FC7F0(v130, v128, v129);
      v132 = swift_getWitnessTable();
      v133 = v398;
      sub_24B5F7EAC(v127, v128);
      v466 = v129;
      v467 = v132;
      v134 = v447;
      v135 = swift_getWitnessTable();
      v136 = swift_getWitnessTable();
      v137 = swift_getWitnessTable();
      v464 = v136;
      v465 = v137;
      v138 = swift_getWitnessTable();
      sub_24B5F7EAC(v133, v134);
      (*(v399 + 8))(v133, v134);
      v462 = v135;
      v463 = v138;
      v139 = v434;
      swift_getWitnessTable();
      v140 = swift_getWitnessTable();
      v141 = swift_getWitnessTable();
      v460 = v140;
      v461 = v141;
      v142 = swift_getWitnessTable();
      v143 = swift_getWitnessTable();
      v144 = swift_getWitnessTable();
      v458 = v143;
      v459 = v144;
      v145 = swift_getWitnessTable();
      v456 = v142;
      v457 = v145;
      swift_getWitnessTable();
      v146 = v435;
      v147 = v426;
      sub_24B5F7EAC(v426, v139);
      (*(v423 + 8))(v147, v139);
      v148 = v444;
      (v444)(v394, v128);
      v149 = v393;
LABEL_15:
      v148(v149, v128);
      goto LABEL_17;
    }

    sub_24B5E3B80(v118, 1u);

    v237 = v105;
    v238 = v429;
    sub_24B5D83A4();
    swift_getKeyPath();
    sub_24B5FF9AC();

    v239 = v441;
    (*(v106 + 16))(v441, v238, v105);
    v240 = (*(v106 + 80) + 48) & ~*(v106 + 80);
    v241 = swift_allocObject();
    v242 = v442;
    *(v241 + 2) = v444;
    *(v241 + 3) = v242;
    *(v241 + 4) = v430;
    *(v241 + 5) = a8;
    (*(v106 + 32))(&v241[v240], v239, v237);
    v243 = &v241[(v107 + v240 + 7) & 0xFFFFFFFFFFFFFFF8];
    v244 = v432;
    *v243 = v431;
    *(v243 + 1) = v244;

    v245 = v397;
    FilterDurationSectionView.init(headerViewBuilder:locale:options:onOptionSelected:)(v433, v395, v428, sub_24B5E3CC0, v241, v397);
    v246 = v446;
    v247 = swift_getWitnessTable();
    v248 = v396;
    sub_24B5FC7F0(v245, v246, v247);
    v249 = *(v417 + 8);
    v417 += 8;
    *&v444 = v249;
    v249(v245, v246);
    sub_24B5FC7F0(v248, v246, v247);
    v250 = v445;
    v251 = swift_getWitnessTable();
    v252 = v398;
    sub_24B5F7FA4(v245, v250, v246);
    v478 = v251;
    v479 = v247;
    v253 = v447;
    v254 = swift_getWitnessTable();
    v255 = swift_getWitnessTable();
    v256 = swift_getWitnessTable();
    v476 = v255;
    v477 = v256;
    v257 = swift_getWitnessTable();
    sub_24B5F7EAC(v252, v253);
    (*(v399 + 8))(v252, v253);
    v474 = v254;
    v475 = v257;
    v258 = v434;
    swift_getWitnessTable();
    v259 = swift_getWitnessTable();
    v260 = swift_getWitnessTable();
    v472 = v259;
    v473 = v260;
    v261 = swift_getWitnessTable();
    v262 = swift_getWitnessTable();
    v263 = swift_getWitnessTable();
    v470 = v262;
    v471 = v263;
    v264 = swift_getWitnessTable();
    v468 = v261;
    v469 = v264;
    swift_getWitnessTable();
    v146 = v435;
    v265 = v426;
    sub_24B5F7EAC(v426, v258);
    (*(v423 + 8))(v265, v258);
    v266 = v444;
    (v444)(v397, v246);
    v266(v396, v246);
  }

LABEL_17:
  v361 = swift_getWitnessTable();
  v362 = swift_getWitnessTable();
  v558 = v361;
  v559 = v362;
  v363 = swift_getWitnessTable();
  v364 = swift_getWitnessTable();
  v365 = swift_getWitnessTable();
  v556 = v364;
  v557 = v365;
  v366 = swift_getWitnessTable();
  v554 = v363;
  v555 = v366;
  v367 = swift_getWitnessTable();
  v368 = swift_getWitnessTable();
  v369 = swift_getWitnessTable();
  v552 = v368;
  v553 = v369;
  v370 = swift_getWitnessTable();
  v371 = swift_getWitnessTable();
  v372 = swift_getWitnessTable();
  v550 = v371;
  v551 = v372;
  v373 = swift_getWitnessTable();
  v548 = v370;
  v549 = v373;
  v374 = swift_getWitnessTable();
  v546 = v367;
  v547 = v374;
  v375 = v437;
  v376 = swift_getWitnessTable();
  sub_24B5FC7F0(v146, v375, v376);
  return (*(v436 + 8))(v146, v375);
}

uint64_t sub_24B5E295C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(type metadata accessor for FilterView() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_24B5FEF9C() - 8);
  v13 = (v3 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)));

  return sub_24B5DE450(a1, a2, v3 + v10, v13, v7, v8, a3);
}

uint64_t sub_24B5E2A64(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 7u)
  {
  }

  return result;
}

uint64_t sub_24B5E2A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterSectionDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B5E2ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for FilterView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FilterSectionDescriptor() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + v10);
  v12 = (v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_24B5DEE40((v1 + v6), (v1 + v9), v11, v13, v14, v3, v4, a1);
}

uint64_t sub_24B5E2C08(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(type metadata accessor for FilterView() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v3 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24B5DF808(a1, a2, a3, v3 + v10, v11, v7, v8);
}

unint64_t sub_24B5E2CD8()
{
  result = qword_27F01A248;
  if (!qword_27F01A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A248);
  }

  return result;
}

unint64_t sub_24B5E2D2C()
{
  result = qword_27F01A250;
  if (!qword_27F01A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A250);
  }

  return result;
}

unint64_t sub_24B5E2D80()
{
  result = qword_27F01A258;
  if (!qword_27F01A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A258);
  }

  return result;
}

unint64_t sub_24B5E2DD4()
{
  result = qword_27F01A260;
  if (!qword_27F01A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A260);
  }

  return result;
}

unint64_t sub_24B5E2E28()
{
  result = qword_27F01A268;
  if (!qword_27F01A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A268);
  }

  return result;
}

unint64_t sub_24B5E2E7C()
{
  result = qword_27F01A270;
  if (!qword_27F01A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A270);
  }

  return result;
}

unint64_t sub_24B5E2ED0()
{
  result = qword_27F01A278;
  if (!qword_27F01A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A278);
  }

  return result;
}

unint64_t sub_24B5E2F24()
{
  result = qword_27F01A280;
  if (!qword_27F01A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A280);
  }

  return result;
}

unint64_t sub_24B5E2F78()
{
  result = qword_27F01A288;
  if (!qword_27F01A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A288);
  }

  return result;
}

unint64_t sub_24B5E2FCC()
{
  result = qword_27F01A290;
  if (!qword_27F01A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A290);
  }

  return result;
}

unint64_t sub_24B5E3020()
{
  result = qword_27F01A298;
  if (!qword_27F01A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A298);
  }

  return result;
}

unint64_t sub_24B5E3074()
{
  result = qword_27F01A2A0;
  if (!qword_27F01A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2A0);
  }

  return result;
}

unint64_t sub_24B5E30C8()
{
  result = qword_27F01A2A8;
  if (!qword_27F01A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2A8);
  }

  return result;
}

unint64_t sub_24B5E311C()
{
  result = qword_27F01A2B0;
  if (!qword_27F01A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2B0);
  }

  return result;
}

unint64_t sub_24B5E3170()
{
  result = qword_27F01A2B8;
  if (!qword_27F01A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2B8);
  }

  return result;
}

unint64_t sub_24B5E31C4()
{
  result = qword_27F01A2C0;
  if (!qword_27F01A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2C0);
  }

  return result;
}

unint64_t sub_24B5E3218()
{
  result = qword_27F01A2C8;
  if (!qword_27F01A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2C8);
  }

  return result;
}

unint64_t sub_24B5E326C()
{
  result = qword_27F01A2D0;
  if (!qword_27F01A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2D0);
  }

  return result;
}

unint64_t sub_24B5E32C0()
{
  result = qword_27F01A2D8;
  if (!qword_27F01A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2D8);
  }

  return result;
}

unint64_t sub_24B5E3314()
{
  result = qword_27F01A2E0;
  if (!qword_27F01A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A2E0);
  }

  return result;
}

uint64_t sub_24B5E3368(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1[1];
  v20[0] = *a1;
  v20[1] = v13;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v14 = sub_24B5E3218();
  v15 = sub_24B5E326C();
  v16 = sub_24B5E32C0();
  v17 = sub_24B5E3314();
  *&v19 = v14;
  *(&v19 + 1) = v15;
  return sub_24B5E4AF8(v20, a2, a4, a5, a6, &type metadata for BodyFocus, a8, &protocol witness table for BodyFocus, v19, v16, v17);
}

uint64_t sub_24B5E3420(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 8);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v22[0] = *a1;
  v22[1] = v13;
  v23 = *(a1 + 16);
  v24 = v14;
  v25 = v15;
  v16 = sub_24B5AE4A8();
  v17 = sub_24B5AE3AC();
  v18 = sub_24B5E3170();
  v19 = sub_24B5E31C4();
  *&v21 = v16;
  *(&v21 + 1) = v17;
  return sub_24B5E4AF8(v22, a2, a4, a5, a6, &type metadata for Duration, a8, &protocol witness table for Duration, v21, v18, v19);
}

uint64_t sub_24B5E34E0(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1[1];
  v20[0] = *a1;
  v20[1] = v13;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v14 = sub_24B5E3020();
  v15 = sub_24B5E3074();
  v16 = sub_24B5E30C8();
  v17 = sub_24B5E311C();
  *&v19 = v14;
  *(&v19 + 1) = v15;
  return sub_24B5E4AF8(v20, a2, a4, a5, a6, &type metadata for Equipment, a8, &protocol witness table for Equipment, v19, v16, v17);
}

uint64_t sub_24B5E3598(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1[3];
  v21[2] = a1[2];
  v22[0] = v13;
  *(v22 + 9) = *(a1 + 57);
  v14 = a1[1];
  v21[0] = *a1;
  v21[1] = v14;
  v15 = sub_24B5C3D68();
  v16 = sub_24B5C3B90();
  v17 = sub_24B5D9BC8();
  v18 = sub_24B5D9C1C();
  *&v20 = v15;
  *(&v20 + 1) = v16;
  return sub_24B5E4AF8(v21, a2, a4, a5, a6, &type metadata for Modality, a8, &protocol witness table for Modality, v20, v17, v18);
}

uint64_t sub_24B5E3650(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1[1];
  v20[0] = *a1;
  v20[1] = v13;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v14 = sub_24B5E2ED0();
  v15 = sub_24B5E2F24();
  v16 = sub_24B5E2F78();
  v17 = sub_24B5E2FCC();
  *&v19 = v14;
  *(&v19 + 1) = v15;
  return sub_24B5E4AF8(v20, a2, a4, a5, a6, &type metadata for MusicGenre, a8, &protocol witness table for MusicGenre, v19, v16, v17);
}

uint64_t sub_24B5E3708(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1[3];
  v21[2] = a1[2];
  v22[0] = v13;
  *(v22 + 9) = *(a1 + 57);
  v14 = a1[1];
  v21[0] = *a1;
  v21[1] = v14;
  v15 = sub_24B5E2D80();
  v16 = sub_24B5E2DD4();
  v17 = sub_24B5E2E28();
  v18 = sub_24B5E2E7C();
  *&v20 = v15;
  *(&v20 + 1) = v16;
  return sub_24B5E4AF8(v21, a2, a4, a5, a6, &type metadata for SkillLevel, a8, &protocol witness table for SkillLevel, v20, v17, v18);
}

uint64_t sub_24B5E37C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v13;
  v22 = *(a1 + 64);
  v14 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v14;
  v15 = sub_24B5D5160();
  v16 = sub_24B5D4BEC();
  v17 = sub_24B5E2CD8();
  v18 = sub_24B5E2D2C();
  *&v20 = v15;
  *(&v20 + 1) = v16;
  return sub_24B5E4AF8(v21, a2, a4, a5, a6, &type metadata for Theme, a8, &protocol witness table for Theme, v20, v17, v18);
}

uint64_t sub_24B5E3878(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1[3];
  v21[2] = a1[2];
  v22[0] = v13;
  *(v22 + 9) = *(a1 + 57);
  v14 = a1[1];
  v21[0] = *a1;
  v21[1] = v14;
  v15 = sub_24B5D9DB4();
  v16 = sub_24B5D9E08();
  v17 = sub_24B5D9E5C();
  v18 = sub_24B5D9EB0();
  *&v20 = v15;
  *(&v20 + 1) = v16;
  return sub_24B5E4AF8(v21, a2, a4, a5, a6, &type metadata for Trainer, a8, &protocol witness table for Trainer, v20, v17, v18);
}

uint64_t sub_24B5E3948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B5E39A8(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for FilterView() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_24B5E37C0(a1, a2, v2 + v10, *v11, *(v11 + 1), v5, v6, v7);
}

uint64_t sub_24B5E3A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, char *, void, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v3 + 2);
  v8 = *(v3 + 3);
  v9 = *(v3 + 4);
  v10 = *(v3 + 5);
  v11 = *(type metadata accessor for FilterView() - 8);
  v12 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v13 = &v3[(*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8];
  return a3(a1, a2, &v3[v12], *v13, *(v13 + 1), v7, v8, v9, v10);
}

uint64_t sub_24B5E3B80(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 7u)
  {
  }

  return result;
}

uint64_t sub_24B5E3BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, char *, void, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v3 + 2);
  v8 = *(v3 + 3);
  v9 = *(v3 + 4);
  v10 = *(v3 + 5);
  v11 = *(type metadata accessor for FilterView() - 8);
  v12 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v13 = &v3[(*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8];
  return a3(a1, a2, &v3[v12], *v13, *(v13 + 1), v7, v8, v9, v10);
}

uint64_t sub_24B5E3CC0(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for FilterView() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_24B5E3420(a1, a2, v2 + v10, *v11, *(v11 + 1), v5, v6, v7);
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = (type metadata accessor for FilterView() - 8);
  v4 = (*(*v3 + 80) + 48) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = *(v0 + v4 + 16);
  sub_24B5DB820();
  v10 = v3[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  v11 = sub_24B5FEE7C();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = *(v0 + v5 + 8);

  return swift_deallocObject();
}

uint64_t sub_24B5E3F30@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v86 = a4;
  v96 = a3;
  v92 = a2;
  v100 = a7;
  v90 = a5;
  v91 = a6;
  v89 = type metadata accessor for FilterView();
  v87 = *(v89 - 8);
  v84 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v85 = &v76 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A2F0, &qword_24B6081D8);
  v97 = *(v98 - 8);
  v9 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v88 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A2F8, &qword_24B6081E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v99 = &v76 - v16;
  v83 = sub_24B5FF1BC();
  v82 = *(v83 - 8);
  v17 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A300, &qword_24B6081E8);
  v79 = *(v80 - 8);
  v19 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v76 - v20;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A308, &qword_24B6081F0);
  v93 = *(v94 - 8);
  v21 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v77 = &v76 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v76 - v25;
  v27 = sub_24B5FEDEC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v76 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A310, &qword_24B6081F8);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v95 = &v76 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v76 - v39;
  sub_24B57BAFC(a1, v26, &qword_27F018BD0, &unk_24B6022F0);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_24B58090C(v26, &qword_27F018BD0, &unk_24B6022F0);
    (*(v93 + 56))(v40, 1, 1, v94);
  }

  else
  {
    (*(v28 + 32))(v34, v26, v27);
    (*(v28 + 16))(v32, v34, v27);
    v41 = sub_24B5FF52C();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    KeyPath = swift_getKeyPath();
    v49 = sub_24B5FF4AC();
    v76 = v15;
    v50 = v49;
    v51 = swift_getKeyPath();
    v107 = v45 & 1;
    v106 = 0;
    *&v101 = v41;
    *(&v101 + 1) = v43;
    LOBYTE(v102) = v45 & 1;
    *(&v102 + 1) = v47;
    *&v103 = KeyPath;
    *(&v103 + 1) = 1;
    LOBYTE(v104) = 0;
    *(&v104 + 1) = v51;
    v105 = v50;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A320, &qword_24B608268);
    v53 = sub_24B5E4DE4();
    v54 = v78;
    sub_24B5FF6BC();
    v108[2] = v103;
    v108[3] = v104;
    v109 = v105;
    v108[0] = v101;
    v108[1] = v102;
    sub_24B58090C(v108, &qword_27F01A320, &qword_24B608268);
    v55 = v81;
    sub_24B5FF1AC();
    *&v101 = v52;
    *(&v101 + 1) = v53;
    v15 = v76;
    swift_getOpaqueTypeConformance2();
    v56 = v77;
    v57 = v80;
    sub_24B5FF68C();
    (*(v82 + 8))(v55, v83);
    (*(v79 + 8))(v54, v57);
    (*(v28 + 8))(v34, v27);
    sub_24B5CD578(v56, v40, &qword_27F01A308, &qword_24B6081F0);
    (*(v93 + 56))(v40, 0, 1, v94);
  }

  v58 = v99;
  v59 = v96;
  if (v96)
  {
    v60 = v87;
    v61 = v85;
    v62 = v89;
    (*(v87 + 16))(v85, v86, v89);
    v63 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v64 = swift_allocObject();
    v65 = v91;
    *(v64 + 16) = v90;
    *(v64 + 24) = v65;
    v66 = (*(v60 + 32))(v64 + v63, v61, v62);
    MEMORY[0x28223BE20](v66);
    *(&v76 - 2) = v92;
    *(&v76 - 1) = v59;
    v67 = v88;
    sub_24B5FF81C();
    v68 = v97;
    v69 = v98;
    (*(v97 + 32))(v58, v67, v98);
    v70 = 0;
  }

  else
  {
    v70 = 1;
    v69 = v98;
    v68 = v97;
  }

  (*(v68 + 56))(v58, v70, 1, v69);
  v71 = v95;
  sub_24B576E78(v40, v95);
  sub_24B57BAFC(v58, v15, &qword_27F01A2F8, &qword_24B6081E0);
  v72 = v100;
  sub_24B576E78(v71, v100);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A318, &qword_24B608200);
  v74 = v72 + *(v73 + 48);
  *v74 = 0x4014000000000000;
  *(v74 + 8) = 0;
  sub_24B57BAFC(v15, v72 + *(v73 + 64), &qword_27F01A2F8, &qword_24B6081E0);
  sub_24B58090C(v58, &qword_27F01A2F8, &qword_24B6081E0);
  sub_24B58090C(v40, &qword_27F01A310, &qword_24B6081F8);
  sub_24B58090C(v15, &qword_27F01A2F8, &qword_24B6081E0);
  return sub_24B58090C(v71, &qword_27F01A310, &qword_24B6081F8);
}

uint64_t sub_24B5E4950()
{
  v0 = type metadata accessor for FilterAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FilterView();
  sub_24B5D83A4();
  swift_storeEnumTagMultiPayload();
  sub_24B5FF9BC();

  return sub_24B5E3948(v3, type metadata accessor for FilterAction);
}

uint64_t sub_24B5E4A34@<X0>(uint64_t a1@<X8>)
{
  sub_24B58096C();

  result = sub_24B5FF53C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_24B5E4AA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B5FF0BC();
  *a1 = result;
  return result;
}

uint64_t sub_24B5E4ACC(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B5FF0CC();
}

uint64_t sub_24B5E4AF8(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *&v23 = a6;
  *(&v23 + 1) = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  result = type metadata accessor for Option();
  v17 = *(result + 68);
  if (*(a1 + v17) - 1 <= 1)
  {
    (*(a8 + 8))(&v23, a6, a8);
    v19 = v23;
    v20 = v24;
    v21 = v25;
    v22 = v26;
    v18 = *(a1 + v17);
    a3(&v19, &v18, a2);
    return sub_24B57BA04(v19, *(&v19 + 1), v20, *(&v20 + 1), v21, v22);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for FilterView() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_24B5DB820();
  v9 = v3[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  v10 = sub_24B5FEE7C();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_24B5E4D5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for FilterView() - 8) + 80);
  return sub_24B5E4950();
}

uint64_t sub_24B5E4DDC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_24B5E4A34(a1);
}

unint64_t sub_24B5E4DE4()
{
  result = qword_27F01A328;
  if (!qword_27F01A328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A320, &qword_24B608268);
    sub_24B5E4E9C();
    sub_24B58085C(&qword_27F019390, &qword_27F019398, &unk_24B608280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A328);
  }

  return result;
}

unint64_t sub_24B5E4E9C()
{
  result = qword_27F01A330;
  if (!qword_27F01A330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A338, &qword_24B608270);
    sub_24B58085C(&qword_27F01A340, &qword_27F01A348, &qword_24B608278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A330);
  }

  return result;
}

uint64_t sub_24B5E4FB0@<X0>(uint64_t a1@<X8>)
{
  sub_24B5FF7BC();
  v2 = sub_24B5FF54C();
  v4 = v3;
  v6 = v5;
  v7 = sub_24B5FF4EC();
  v41 = v8;
  v42 = v7;
  v10 = v9;
  sub_24B5809C0(v2, v4, v6 & 1);

  sub_24B58096C();

  v11 = sub_24B5FF53C();
  v13 = v12;
  v15 = v14;
  v16 = sub_24B5FF4EC();
  v43 = v17;
  v44 = v16;
  LOBYTE(v4) = v18;
  sub_24B5809C0(v11, v13, v15 & 1);

  sub_24B5809C0(v42, v41, v10 & 1);

  sub_24B5FF4BC();
  sub_24B5FF46C();

  v19 = sub_24B5FF50C();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_24B5809C0(v44, v43, v4 & 1);

  KeyPath = swift_getKeyPath();
  v27 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A380, &qword_24B608368) + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A390, &qword_24B608370) + 28);
  v29 = *MEMORY[0x277CE1048];
  v30 = sub_24B5FF7EC();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v25;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  LOBYTE(v25) = sub_24B5FF3FC();
  v31 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A370, &qword_24B608360) + 36);
  *v31 = v25;
  *(v31 + 8) = xmmword_24B608290;
  *(v31 + 24) = xmmword_24B6082A0;
  *(v31 + 40) = 0;
  v32 = sub_24B5FF90C();
  v34 = v33;
  v35 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A358, &qword_24B608358) + 36);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_24B5FF18C();
  (*(*(v37 - 8) + 104))(v35, v36, v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3C0, &qword_24B6083E8);
  *(v35 + *(v38 + 52)) = 2;
  *(v35 + *(v38 + 56)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3A0, &qword_24B608378);
  v40 = (v35 + *(result + 36));
  *v40 = v32;
  v40[1] = v34;
  return result;
}

uint64_t sub_24B5E5334@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B5FF02C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A350, &qword_24B608350);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18[-v11];
  v13 = *v1;
  v14 = v1[1];
  v16 = v1[2];
  v15 = v1[3];
  v19 = v13;
  v20 = v14;
  v21 = v16;
  v22 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A358, &qword_24B608358);
  sub_24B5E5598();
  sub_24B5FF81C();
  sub_24B5FF01C();
  sub_24B58085C(&qword_27F01A3A8, &qword_27F01A350, &qword_24B608350);
  sub_24B5E5794();
  sub_24B5FF5AC();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  LODWORD(v15) = sub_24B5FF2BC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3B8, &qword_24B608380);
  *(a1 + *(result + 36)) = v15;
  return result;
}

uint64_t sub_24B5E558C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_24B5E4FB0(a1);
}

unint64_t sub_24B5E5598()
{
  result = qword_27F01A360;
  if (!qword_27F01A360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A358, &qword_24B608358);
    sub_24B5E5650();
    sub_24B58085C(&qword_27F01A398, &qword_27F01A3A0, &qword_24B608378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A360);
  }

  return result;
}

unint64_t sub_24B5E5650()
{
  result = qword_27F01A368;
  if (!qword_27F01A368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A370, &qword_24B608360);
    sub_24B5E56DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A368);
  }

  return result;
}

unint64_t sub_24B5E56DC()
{
  result = qword_27F01A378;
  if (!qword_27F01A378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A380, &qword_24B608368);
    sub_24B5E4E9C();
    sub_24B58085C(&qword_27F01A388, &qword_27F01A390, &qword_24B608370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A378);
  }

  return result;
}

unint64_t sub_24B5E5794()
{
  result = qword_27F01A3B0;
  if (!qword_27F01A3B0)
  {
    sub_24B5FF02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A3B0);
  }

  return result;
}

uint64_t sub_24B5E57EC@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B5FF0FC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B5E5820(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24B5FF10C();
}

uint64_t sub_24B5E5850(uint64_t a1)
{
  v2 = sub_24B5FF7EC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24B5FF06C();
}

unint64_t sub_24B5E5918()
{
  result = qword_27F01A3C8;
  if (!qword_27F01A3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A3B8, &qword_24B608380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A350, &qword_24B608350);
    sub_24B5FF02C();
    sub_24B58085C(&qword_27F01A3A8, &qword_27F01A350, &qword_24B608350);
    sub_24B5E5794();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F0193A8, &qword_27F0193B0, &qword_24B603570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A3C8);
  }

  return result;
}

uint64_t FilterOptions.init(bodyFocuses:categories:durations:equipment:filterConfigurations:modalities:musicGenres:skillLevels:trainers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

unint64_t sub_24B5E5AD0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x75636F4679646F62;
    v6 = 0x6E6F697461727564;
    if (a1 != 2)
    {
      v6 = 0x6E656D7069757165;
    }

    if (a1)
    {
      v5 = 0x69726F6765746163;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E6547636973756DLL;
    v2 = 0x76654C6C6C696B73;
    if (a1 != 7)
    {
      v2 = 0x7372656E69617274;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    if (a1 != 4)
    {
      v3 = 0x6974696C61646F6DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B5E5C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B5E7940(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B5E5C30(uint64_t a1)
{
  v2 = sub_24B5E6C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5E5C6C(uint64_t a1)
{
  v2 = sub_24B5E6C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3D0, &qword_24B6083F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v28 = v1[2];
  v29 = v9;
  v12 = v1[5];
  v26 = v1[4];
  v27 = v11;
  v13 = v1[7];
  v24 = v1[6];
  v25 = v12;
  v23 = v13;
  v14 = v1[8];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  sub_24B5E6C9C();

  sub_24B5FFF5C();
  v31 = v10;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3E0, &qword_24B6083F8);
  sub_24B5E6CF0();
  sub_24B5FFE8C();
  if (v2)
  {
  }

  else
  {
    v21 = v27;
    v20 = v28;

    v31 = v29;
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3F0, &qword_24B608400);
    sub_24B5E6D74();
    sub_24B5FFE8C();
    v31 = v20;
    v30 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A408, &qword_24B608408);
    sub_24B5E6E4C();
    sub_24B5FFE8C();
    v31 = v21;
    v30 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A418, &qword_24B608410);
    sub_24B5E6ED0();
    sub_24B5FFE8C();
    v31 = v26;
    v30 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A428, &qword_24B608418);
    sub_24B5E6F54();
    sub_24B5FFE8C();
    v31 = v25;
    v30 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A440, &qword_24B608420);
    sub_24B5E702C();
    sub_24B5FFE8C();
    v31 = v24;
    v30 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A450, &qword_24B608428);
    sub_24B5E70B0();
    sub_24B5FFE8C();
    v31 = v23;
    v30 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A460, &qword_24B608430);
    sub_24B5E7134();
    sub_24B5FFE8C();
    v31 = v14;
    v30 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A470, &qword_24B608438);
    sub_24B5E71B8();
    sub_24B5FFE8C();
  }

  return (*(v5 + 8))(v8, v19);
}

uint64_t FilterOptions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A480, &qword_24B608440);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5E6C9C();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3E0, &qword_24B6083F8);
  LOBYTE(v28) = 0;
  sub_24B5E723C();
  sub_24B5FFDDC();
  v11 = a2;
  v12 = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A3F0, &qword_24B608400);
  LOBYTE(v28) = 1;
  sub_24B5E72C0();
  sub_24B5FFDDC();
  v26 = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A408, &qword_24B608408);
  LOBYTE(v28) = 2;
  sub_24B5E7398();
  sub_24B5FFDDC();
  v25 = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A418, &qword_24B608410);
  LOBYTE(v28) = 3;
  sub_24B5E741C();
  sub_24B5FFDDC();
  v27 = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A428, &qword_24B608418);
  LOBYTE(v28) = 4;
  sub_24B5E74A0();
  sub_24B5FFDDC();
  v13 = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A440, &qword_24B608420);
  LOBYTE(v28) = 5;
  sub_24B5E7578();
  sub_24B5FFDDC();
  v24 = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A450, &qword_24B608428);
  LOBYTE(v28) = 6;
  sub_24B5E75FC();
  v23 = 0;
  sub_24B5FFDDC();
  *&v22 = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A460, &qword_24B608430);
  LOBYTE(v28) = 7;
  sub_24B5E7680();
  sub_24B5FFDDC();
  *(&v22 + 1) = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A470, &qword_24B608438);
  v36 = 8;
  sub_24B5E7704();
  sub_24B5FFDDC();
  (*(v6 + 8))(v9, v5);
  v14 = v37;
  v15 = v26;
  v16 = v27;
  *&v28 = v12;
  *(&v28 + 1) = v26;
  v17 = v25;
  *&v29 = v25;
  *(&v29 + 1) = v27;
  *&v30 = v13;
  *(&v30 + 1) = v24;
  v31 = v22;
  v32 = v37;
  *(v11 + 64) = v37;
  v18 = v31;
  *(v11 + 32) = v30;
  *(v11 + 48) = v18;
  v19 = v29;
  *v11 = v28;
  *(v11 + 16) = v19;
  sub_24B5E7788(&v28, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v12;
  v33[1] = v15;
  v33[2] = v17;
  v33[3] = v16;
  v33[4] = v13;
  v33[5] = v24;
  v34 = v22;
  v35 = v14;
  return sub_24B5A0ACC(v33);
}

uint64_t FilterOptions.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  sub_24B57BC0C(a1, v3);
  sub_24B57ADD8(a1, v4);
  sub_24B57AC24(a1, v5);
  sub_24B57BC0C(a1, v6);
  sub_24B57A87C(a1, v7);
  sub_24B57A604(a1, v8);
  sub_24B57A410(a1, v9);
  sub_24B57A1D4(a1, v10);

  return sub_24B579FA4(a1, v11);
}

uint64_t FilterOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_24B5FFEFC();
  sub_24B57BC0C(v11, v1);
  sub_24B57ADD8(v11, v2);
  sub_24B57AC24(v11, v3);
  sub_24B57BC0C(v11, v4);
  sub_24B57A87C(v11, v5);
  sub_24B57A604(v11, v6);
  sub_24B57A410(v11, v7);
  sub_24B57A1D4(v11, v8);
  sub_24B579FA4(v11, v9);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5E69D0(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  sub_24B57BC0C(a1, v3);
  sub_24B57ADD8(a1, v4);
  sub_24B57AC24(a1, v5);
  sub_24B57BC0C(a1, v6);
  sub_24B57A87C(a1, v7);
  sub_24B57A604(a1, v8);
  sub_24B57A410(a1, v9);
  sub_24B57A1D4(a1, v10);

  return sub_24B579FA4(a1, v11);
}

uint64_t sub_24B5E6A94()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_24B5FFEFC();
  sub_24B57BC0C(v11, v1);
  sub_24B57ADD8(v11, v2);
  sub_24B57AC24(v11, v3);
  sub_24B57BC0C(v11, v4);
  sub_24B57A87C(v11, v5);
  sub_24B57A604(v11, v6);
  sub_24B57A410(v11, v7);
  sub_24B57A1D4(v11, v8);
  sub_24B579FA4(v11, v9);
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering13FilterOptionsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v18 = a1[6];
  v14 = a1[8];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v16 = a1[7];
  v17 = a2[6];
  v15 = a2[7];
  v13 = a2[8];
  if ((sub_24B5A19B0(*a1, *a2) & 1) == 0 || (sub_24B58617C(v2, v7) & 1) == 0 || (sub_24B5864EC(v4, v9) & 1) == 0 || (sub_24B574498(v3, v8) & 1) == 0 || (sub_24B5866FC(v6, v11) & 1) == 0 || (sub_24B586D40(v5, v10) & 1) == 0 || (sub_24B5A19B0(v18, v17) & 1) == 0 || (sub_24B5875DC(v16, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_24B587608(v14, v13);
}

unint64_t sub_24B5E6C9C()
{
  result = qword_27F01A3D8;
  if (!qword_27F01A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A3D8);
  }

  return result;
}

unint64_t sub_24B5E6CF0()
{
  result = qword_27F01A3E8;
  if (!qword_27F01A3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A3E0, &qword_24B6083F8);
    sub_24B5E326C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A3E8);
  }

  return result;
}

unint64_t sub_24B5E6D74()
{
  result = qword_27F01A3F8;
  if (!qword_27F01A3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A3F0, &qword_24B608400);
    sub_24B5E6DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A3F8);
  }

  return result;
}

unint64_t sub_24B5E6DF8()
{
  result = qword_27F01A400;
  if (!qword_27F01A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A400);
  }

  return result;
}

unint64_t sub_24B5E6E4C()
{
  result = qword_27F01A410;
  if (!qword_27F01A410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A408, &qword_24B608408);
    sub_24B5AE3AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A410);
  }

  return result;
}

unint64_t sub_24B5E6ED0()
{
  result = qword_27F01A420;
  if (!qword_27F01A420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A418, &qword_24B608410);
    sub_24B5E3074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A420);
  }

  return result;
}

unint64_t sub_24B5E6F54()
{
  result = qword_27F01A430;
  if (!qword_27F01A430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A428, &qword_24B608418);
    sub_24B5E6FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A430);
  }

  return result;
}

unint64_t sub_24B5E6FD8()
{
  result = qword_27F01A438;
  if (!qword_27F01A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A438);
  }

  return result;
}

unint64_t sub_24B5E702C()
{
  result = qword_27F01A448;
  if (!qword_27F01A448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A440, &qword_24B608420);
    sub_24B5C3B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A448);
  }

  return result;
}

unint64_t sub_24B5E70B0()
{
  result = qword_27F01A458;
  if (!qword_27F01A458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A450, &qword_24B608428);
    sub_24B5E2F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A458);
  }

  return result;
}

unint64_t sub_24B5E7134()
{
  result = qword_27F01A468;
  if (!qword_27F01A468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A460, &qword_24B608430);
    sub_24B5E2DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A468);
  }

  return result;
}

unint64_t sub_24B5E71B8()
{
  result = qword_27F01A478;
  if (!qword_27F01A478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A470, &qword_24B608438);
    sub_24B5D9E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A478);
  }

  return result;
}

unint64_t sub_24B5E723C()
{
  result = qword_27F01A488;
  if (!qword_27F01A488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A3E0, &qword_24B6083F8);
    sub_24B5E3218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A488);
  }

  return result;
}

unint64_t sub_24B5E72C0()
{
  result = qword_27F01A490;
  if (!qword_27F01A490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A3F0, &qword_24B608400);
    sub_24B5E7344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A490);
  }

  return result;
}

unint64_t sub_24B5E7344()
{
  result = qword_27F01A498;
  if (!qword_27F01A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A498);
  }

  return result;
}

unint64_t sub_24B5E7398()
{
  result = qword_27F01A4A0;
  if (!qword_27F01A4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A408, &qword_24B608408);
    sub_24B5AE4A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4A0);
  }

  return result;
}

unint64_t sub_24B5E741C()
{
  result = qword_27F01A4A8;
  if (!qword_27F01A4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A418, &qword_24B608410);
    sub_24B5E3020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4A8);
  }

  return result;
}

unint64_t sub_24B5E74A0()
{
  result = qword_27F01A4B0;
  if (!qword_27F01A4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A428, &qword_24B608418);
    sub_24B5E7524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4B0);
  }

  return result;
}

unint64_t sub_24B5E7524()
{
  result = qword_27F01A4B8;
  if (!qword_27F01A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4B8);
  }

  return result;
}

unint64_t sub_24B5E7578()
{
  result = qword_27F01A4C0;
  if (!qword_27F01A4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A440, &qword_24B608420);
    sub_24B5C3D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4C0);
  }

  return result;
}

unint64_t sub_24B5E75FC()
{
  result = qword_27F01A4C8;
  if (!qword_27F01A4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A450, &qword_24B608428);
    sub_24B5E2ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4C8);
  }

  return result;
}

unint64_t sub_24B5E7680()
{
  result = qword_27F01A4D0;
  if (!qword_27F01A4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A460, &qword_24B608430);
    sub_24B5E2D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4D0);
  }

  return result;
}

unint64_t sub_24B5E7704()
{
  result = qword_27F01A4D8;
  if (!qword_27F01A4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A470, &qword_24B608438);
    sub_24B5D9DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4D8);
  }

  return result;
}

unint64_t sub_24B5E77C4()
{
  result = qword_27F01A4E0;
  if (!qword_27F01A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4E0);
  }

  return result;
}

unint64_t sub_24B5E783C()
{
  result = qword_27F01A4E8;
  if (!qword_27F01A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4E8);
  }

  return result;
}

unint64_t sub_24B5E7894()
{
  result = qword_27F01A4F0;
  if (!qword_27F01A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4F0);
  }

  return result;
}

unint64_t sub_24B5E78EC()
{
  result = qword_27F01A4F8;
  if (!qword_27F01A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A4F8);
  }

  return result;
}

uint64_t sub_24B5E7940(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x75636F4679646F62 && a2 == 0xEB00000000736573 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE900000000000073 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B60AC60 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6974696C61646F6DLL && a2 == 0xEA00000000007365 || (sub_24B5FFECC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6547636973756DLL && a2 == 0xEB00000000736572 || (sub_24B5FFECC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEB00000000736C65 || (sub_24B5FFECC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7372656E69617274 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_24B5FFECC();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24B5E7C4C(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_24B5FEE1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B5FFADC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        sub_24B5FFA6C();
        if (qword_27F0186F0 == -1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_24B5FFA6C();
        if (qword_27F0186F0 == -1)
        {
          goto LABEL_23;
        }
      }
    }

    else if (a2)
    {
      sub_24B5FFA6C();
      if (qword_27F0186F0 == -1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_24B5FFA6C();
      if (qword_27F0186F0 == -1)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      sub_24B5FFA6C();
      if (qword_27F0186F0 == -1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_24B5FFA6C();
      if (qword_27F0186F0 == -1)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

  if (a2 == 6)
  {
    sub_24B5FFA6C();
    if (qword_27F0186F0 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  sub_24B5FFA6C();
  if (qword_27F0186F0 != -1)
  {
LABEL_24:
    swift_once();
  }

LABEL_23:
  v11 = qword_27F02AD70;
  (*(v5 + 16))(v8, a1, v4);
  v12 = v11;
  return sub_24B5FFAEC();
}

uint64_t Option.identifier.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 56);
  sub_24B5FFCDC();
  return v4;
}

uint64_t sub_24B5E82A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_24B5FFECC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24B5E83A0(char a1)
{
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](a1 & 1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5E83E8(char a1)
{
  if (a1)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

BOOL sub_24B5E841C(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  return sub_24B5E8368(*a1, *a2);
}

uint64_t sub_24B5E8438(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return sub_24B5E83A0(*v1);
}

uint64_t sub_24B5E8450(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  return sub_24B5E8378(a1, *v2);
}

uint64_t sub_24B5E8468(uint64_t a1, void *a2)
{
  sub_24B5FFEFC();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  sub_24B5E8378(v11, *v2);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5E84B8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return sub_24B5E83E8(*v1);
}

uint64_t sub_24B5E84D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  result = sub_24B5E82A0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_24B5E8508@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  result = sub_24B5E928C();
  *a2 = result;
  return result;
}

uint64_t sub_24B5E8540(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B5E8594(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Option.id.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 56);
  sub_24B5FFCDC();
  return v4;
}

uint64_t sub_24B5E861C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Option.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t Option.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 56);
  v17 = *(a2 + 16);
  v19 = v17;
  v20 = v4;
  v15 = *(a2 + 40);
  v21 = v15;
  v22 = v5;
  type metadata accessor for Option.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_24B5FFE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v16;
  sub_24B5FFF5C();
  LOBYTE(v19) = 0;
  v13 = v18;
  sub_24B5FFE8C();
  if (!v13)
  {
    LOBYTE(v19) = *(v12 + *(a2 + 68));
    v23 = 1;
    sub_24B5A4B04();
    sub_24B5FFE8C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t Option.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a7;
  v42 = a8;
  v44 = *(a2 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](a1);
  v45 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v16;
  v52 = v17;
  v53 = v18;
  v54 = v19;
  v55 = v20;
  v56 = v21;
  type metadata accessor for Option.CodingKeys();
  swift_getWitnessTable();
  v48 = sub_24B5FFDFC();
  v43 = *(v48 - 8);
  v22 = *(v43 + 64);
  MEMORY[0x28223BE20](v48);
  v24 = &v39 - v23;
  v46 = a2;
  v47 = a4;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v56 = v49;
  v25 = type metadata accessor for Option();
  v41 = *(v25 - 8);
  v26 = *(v41 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v39 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v49 = v24;
  v30 = v50;
  sub_24B5FFF4C();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = v25;
  v31 = v43;
  v32 = v44;
  v50 = a1;
  LOBYTE(v51) = 0;
  v34 = v45;
  v33 = v46;
  v35 = v48;
  sub_24B5FFDDC();
  (*(v32 + 32))(v28, v34, v33);
  v57 = 1;
  sub_24B5A69BC();
  sub_24B5FFDDC();
  (*(v31 + 8))(v49, v35);
  v36 = v40;
  v37 = v41;
  v28[*(v40 + 68)] = v51;
  (*(v37 + 16))(v42, v28, v36);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return (*(v37 + 8))(v28, v36);
}

BOOL static Option.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 + 8);
  if ((sub_24B5FFA5C() & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for Option();
  return *(a1 + *(v10 + 68)) == *(a2 + *(v10 + 68));
}

uint64_t Option.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 48);
  sub_24B5FFA4C();
  return MEMORY[0x24C243ED0](*(v2 + *(a2 + 68)));
}

uint64_t Option.hashValue.getter(uint64_t a1)
{
  sub_24B5FFEFC();
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  sub_24B5FFA4C();
  MEMORY[0x24C243ED0](*(v1 + *(a1 + 68)));
  return sub_24B5FFF3C();
}

uint64_t sub_24B5E8DAC(uint64_t a1, uint64_t a2)
{
  sub_24B5FFEFC();
  Option.hash(into:)(v4, a2);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5E8E28(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B5E8EA0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 3)
      {
        return v15 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_24B5E9008(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

unint64_t FilterSortMode.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656C655265746164;
  v2 = 0x4E72656E69617274;
  if (a1 != 6)
  {
    v2 = 0x6D614E656D656874;
  }

  v3 = 0x6E6547636973756DLL;
  if (a1 != 4)
  {
    v3 = 1701736302;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x6E6F697461727564;
  if (a1 != 2)
  {
    v4 = 0x7974696C61646F6DLL;
  }

  if (!a1)
  {
    v1 = 0xD000000000000013;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B5E93C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = FilterSortMode.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == FilterSortMode.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B5FFECC();
  }

  return v8 & 1;
}

uint64_t sub_24B5E944C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s16FitnessFiltering14FilterSortModeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_24B5E947C@<X0>(unint64_t *a1@<X8>)
{
  result = FilterSortMode.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B5E9568()
{
  v1 = *v0;
  sub_24B5FFEFC();
  FilterSortMode.rawValue.getter(v1);
  sub_24B5FFB1C();

  return sub_24B5FFF3C();
}

uint64_t sub_24B5E95CC()
{
  FilterSortMode.rawValue.getter(*v0);
  sub_24B5FFB1C();
}

uint64_t sub_24B5E9620()
{
  v1 = *v0;
  sub_24B5FFEFC();
  FilterSortMode.rawValue.getter(v1);
  sub_24B5FFB1C();

  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering14FilterSortModeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_24B5FFD3C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24B5E96D0()
{
  result = qword_27F01A600;
  if (!qword_27F01A600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019950, &qword_24B604E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A600);
  }

  return result;
}

unint64_t sub_24B5E9738()
{
  result = qword_27F01A608;
  if (!qword_27F01A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A608);
  }

  return result;
}

unint64_t sub_24B5E979C()
{
  result = qword_27F01A610;
  if (!qword_27F01A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A610);
  }

  return result;
}

uint64_t Equipment.iconName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Equipment.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Equipment.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Equipment.init(artworks:iconName:identifier:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_24B5E989C(uint64_t a1)
{
  v2 = sub_24B5E9B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5E98D8(uint64_t a1)
{
  v2 = sub_24B5E9B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Equipment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A618, &unk_24B608A60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v15[5] = v1[2];
  v15[6] = v9;
  v12 = v1[5];
  v15[3] = v1[4];
  v15[4] = v11;
  v15[1] = v1[6];
  v15[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5E9B6C();

  sub_24B5FFF5C();
  v20 = v10;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  sub_24B5C7530(&qword_27F018710, &qword_27F018718);
  sub_24B5FFE8C();

  if (!v2)
  {
    v18 = 1;
    sub_24B5FFE1C();
    v17 = 2;
    sub_24B5FFE3C();
    v16 = 3;
    sub_24B5FFE3C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B5E9B6C()
{
  result = qword_27F01A620;
  if (!qword_27F01A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A620);
  }

  return result;
}

uint64_t Equipment.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A628, &qword_24B608A70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5E9B6C();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  v31 = 0;
  sub_24B5C7530(&qword_27F018728, &qword_27F018730);
  sub_24B5FFDDC();
  v11 = v32;
  v30 = 1;
  v12 = sub_24B5FFD6C();
  v27 = v13;
  v25 = v12;
  v29 = 2;
  v24 = sub_24B5FFD8C();
  v26 = v14;
  v28 = 3;
  v15 = sub_24B5FFD8C();
  v18 = v17;
  v19 = v15;
  (*(v6 + 8))(v9, v5);
  v20 = v24;
  v21 = v25;
  *a2 = v11;
  a2[1] = v21;
  v22 = v26;
  a2[2] = v27;
  a2[3] = v20;
  a2[4] = v22;
  a2[5] = v19;
  a2[6] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Equipment.hash(into:)(__int128 *a1)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v4)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();

  return sub_24B5FFB1C();
}

uint64_t Equipment.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_24B5FFEFC();
  sub_24B57926C(v9, v2);
  sub_24B5FFF1C();
  if (v4)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

unint64_t sub_24B5EA0A0()
{
  result = qword_27F01A630;
  if (!qword_27F01A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A630);
  }

  return result;
}

unint64_t sub_24B5EA118()
{
  result = qword_27F01A638;
  if (!qword_27F01A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A638);
  }

  return result;
}

unint64_t sub_24B5EA170()
{
  result = qword_27F01A640;
  if (!qword_27F01A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A640);
  }

  return result;
}

unint64_t sub_24B5EA1C8()
{
  result = qword_27F01A648;
  if (!qword_27F01A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A648);
  }

  return result;
}

uint64_t HKWorkoutActivityType.activityTypeSystemName.getter(uint64_t a1)
{
  v2 = 0x726568746FLL;
  v3 = sub_24B5EA6E4(qword_285E881B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A650, &qword_24B608D20);
  swift_arrayDestroy();
  if (v3[2])
  {
    v4 = sub_24B5EA348(a1);
    if (v5)
    {
      v6 = (v3[7] + 16 * v4);
      v2 = *v6;
      v7 = v6[1];
    }
  }

  return v2;
}

unint64_t sub_24B5EA2D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24B5FFEFC();
  sub_24B5FFB1C();
  v6 = sub_24B5FFF3C();

  return sub_24B5EA3B4(a1, a2, v6);
}

unint64_t sub_24B5EA348(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](a1);
  v4 = sub_24B5FFF3C();

  return sub_24B5EA46C(a1, v4);
}

unint64_t sub_24B5EA3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24B5FFECC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24B5EA46C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24B5EA4D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A658, &qword_24B608D30);
    v3 = sub_24B5FFD2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24B5EA7F8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_24B5EA2D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24B5EA868(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24B5EA5E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CB0, &qword_24B601138);
    v3 = sub_24B5FFD2C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24B5EA2D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_24B5EA6E4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A660, &qword_24B608D38);
  v3 = sub_24B5FFD2C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_24B5EA348(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_24B5EA348(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B5EA7F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018990, &unk_24B600BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_24B5EA868(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void TimedFilterContent.minutes.getter(uint64_t a1, uint64_t a2)
{
  v2 = round((*(a2 + 8))() / 60.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t SkillLevel.iconName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SkillLevel.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SkillLevel.kind.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t SkillLevel.name.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t SkillLevel.init(artworks:iconName:identifier:kind:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t sub_24B5EA9F0()
{
  v1 = *v0;
  v2 = 0x736B726F77747261;
  v3 = 0x696669746E656469;
  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 1701667182;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E6E6F6369;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B5EAA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B5EB600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B5EAAA8(uint64_t a1)
{
  v2 = sub_24B5EADA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5EAAE4(uint64_t a1)
{
  v2 = sub_24B5EADA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SkillLevel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A668, &unk_24B608D80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v17[7] = v1[2];
  v17[8] = v9;
  v12 = v1[5];
  v17[5] = v1[4];
  v17[6] = v11;
  v13 = v1[7];
  v17[3] = v1[6];
  v17[4] = v12;
  v14 = v1[8];
  v17[1] = v13;
  v17[2] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5EADA8();

  sub_24B5FFF5C();
  v23 = v10;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  sub_24B5C7530(&qword_27F018710, &qword_27F018718);
  sub_24B5FFE8C();

  if (!v2)
  {
    v21 = 1;
    sub_24B5FFE1C();
    v20 = 2;
    sub_24B5FFE3C();
    v19 = 3;
    sub_24B5FFE1C();
    v18 = 4;
    sub_24B5FFE3C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B5EADA8()
{
  result = qword_27F01A670;
  if (!qword_27F01A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A670);
  }

  return result;
}

uint64_t SkillLevel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A678, &qword_24B608D90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5EADA8();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  LOBYTE(v33) = 0;
  sub_24B5C7530(&qword_27F018728, &qword_27F018730);
  sub_24B5FFDDC();
  v11 = v38[0];
  LOBYTE(v38[0]) = 1;
  v12 = sub_24B5FFD6C();
  v32 = v13;
  v29 = v12;
  LOBYTE(v38[0]) = 2;
  v28 = sub_24B5FFD8C();
  v31 = v14;
  LOBYTE(v38[0]) = 3;
  v27 = sub_24B5FFD6C();
  v30 = v15;
  v39 = 4;
  v16 = sub_24B5FFD8C();
  v18 = v17;
  v19 = v16;
  (*(v6 + 8))(v9, v5);
  v20 = v29;
  *&v33 = v11;
  *(&v33 + 1) = v29;
  v21 = v32;
  *&v34 = v32;
  *(&v34 + 1) = v28;
  v22 = v30;
  *&v35 = v31;
  *(&v35 + 1) = v27;
  *&v36 = v30;
  *(&v36 + 1) = v19;
  v37 = v18;
  *(a2 + 64) = v18;
  v23 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v23;
  v24 = v34;
  *a2 = v33;
  *(a2 + 16) = v24;
  sub_24B5A15F8(&v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v11;
  v38[1] = v20;
  v38[2] = v21;
  v38[3] = v28;
  v38[4] = v31;
  v38[5] = v27;
  v38[6] = v22;
  v38[7] = v19;
  v38[8] = v18;
  return sub_24B5A1654(v38);
}

uint64_t SkillLevel.hash(into:)(__int128 *a1)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v4)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFF1C();
  if (v8)
  {
    sub_24B5FFB1C();
  }

  return sub_24B5FFB1C();
}

uint64_t SkillLevel.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  sub_24B5FFEFC();
  sub_24B57926C(v11, v2);
  sub_24B5FFF1C();
  if (v4)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFF1C();
  if (v8)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t sub_24B5EB404()
{
  sub_24B5FFEFC();
  SkillLevel.hash(into:)(v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5EB448()
{
  sub_24B5FFEFC();
  SkillLevel.hash(into:)(v1);
  return sub_24B5FFF3C();
}

unint64_t sub_24B5EB484()
{
  result = qword_27F01A680;
  if (!qword_27F01A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A680);
  }

  return result;
}

unint64_t sub_24B5EB4FC()
{
  result = qword_27F01A688;
  if (!qword_27F01A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A688);
  }

  return result;
}

unint64_t sub_24B5EB554()
{
  result = qword_27F01A690;
  if (!qword_27F01A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A690);
  }

  return result;
}

unint64_t sub_24B5EB5AC()
{
  result = qword_27F01A698;
  if (!qword_27F01A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A698);
  }

  return result;
}

uint64_t sub_24B5EB600(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B726F77747261 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B5FFECC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t FilterDurationSectionView.init(headerViewBuilder:locale:options:onOptionSelected:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  a1();

  v11 = type metadata accessor for FilterDurationSectionView();
  v12 = v11[23];
  v13 = sub_24B5FEE1C();
  result = (*(*(v13 - 8) + 32))(a6 + v12, a2, v13);
  *(a6 + v11[25]) = a3;
  v15 = (a6 + v11[24]);
  *v15 = a4;
  v15[1] = a5;
  return result;
}