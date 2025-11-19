uint64_t AppendOptions.flagList.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AppendOptions.internalDate.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t AppendOptions.internalDate.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t AppendOptions.extensions.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t AppendOptions.extensions.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];

  v8 = v3[4];

  v9 = v3[5];

  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return result;
}

uint64_t sub_1B0D31164()
{
  v0 = MEMORY[0x1E69E7CC0];
  result = sub_1B0D98A6C(MEMORY[0x1E69E7CC0]);
  static AppendOptions.none = v0;
  *algn_1EB7383D8 = 0;
  byte_1EB7383E0 = 1;
  qword_1EB7383E8 = result;
  unk_1EB7383F0 = v2;
  qword_1EB7383F8 = v3;
  return result;
}

uint64_t AppendOptions.init(flagList:internalDate:extensions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t *AppendOptions.none.unsafeMutableAddressor()
{
  if (qword_1EB6E6D78 != -1)
  {
    swift_once();
  }

  return &static AppendOptions.none;
}

uint64_t static AppendOptions.none.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB6E6D78 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EB7383D8;
  v2 = byte_1EB7383E0;
  v3 = qword_1EB7383E8;
  v4 = unk_1EB7383F0;
  v5 = qword_1EB7383F8;
  *a1 = static AppendOptions.none;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0D312C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 55);
    v4 = (a2 + 55);
    do
    {
      v8 = *(v3 - 23);
      v9 = *(v3 - 15);
      v10 = *(v3 - 7) | ((*(v3 - 3) | (*(v3 - 1) << 16)) << 32);
      v11 = *(v4 - 23);
      v12 = *(v4 - 15);
      v13 = *(v4 - 7);
      v14 = v13 | ((*(v4 - 3) | (*(v4 - 1) << 16)) << 32);
      if (*v3)
      {
        if ((*v4 & 1) == 0)
        {
          return 0;
        }

        sub_1B0D3C8F0(*(v4 - 23), *(v4 - 15), v13 | ((*(v4 - 3) | (*(v4 - 1) << 16)) << 32), 1);
        sub_1B0D3C8F0(v8, v9, v10, 1);
        v15 = sub_1B0D312C0(v8, v11);
        sub_1B0D3C8FC(v11, v12, v14, 1);
        sub_1B0D3C8FC(v8, v9, v10, 1);
        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if ((*v4 & 1) != 0 || HIDWORD(v9) - v9 != HIDWORD(v12) - v12)
        {
          return 0;
        }

        v16 = HIDWORD(v14) & 0xFFFFFF;
        v17 = BYTE6(v14);
        *(v3 - 3);
        *(v3 - 1);
        if (*(v3 - 7) != v14 || ((*(v3 - 1), *(v3 - 3) == WORD2(v14)) ? (v18 = BYTE6(v10) == BYTE6(v14)) : (v18 = 0), v18 ? (v19 = v8 == v11) : (v19 = 0), !v19))
        {
          v5 = BYTE6(v10);
          v21 = HIDWORD(v10) & 0xFFFFFF;
          v22 = v16;
          v6 = v17;
          swift_beginAccess();
          v7 = *(v8 + 24) + v9;
          swift_beginAccess();
          if (memcmp((v7 + (v5 & 0xFFFFFFFFFF0000FFLL | (v21 << 8))), (*(v11 + 24) + (v6 & 0xFFFFFFFFFF0000FFLL | (v22 << 8)) + v12), HIDWORD(v9) - v9))
          {
            return 0;
          }
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0D31510(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  while (1)
  {
    if (v3 == v2)
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v6 = v4 + 16 * v3;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = a2 + 32 + 16 * v3;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v8 > 1)
    {
      break;
    }

    if (v8)
    {
      if (v11 != 1)
      {
        return 0;
      }

      v22 = *(v7 + 16);
      if (v22 != *(v10 + 16))
      {
        return 0;
      }

      if (v22)
      {
        v23 = v7 == v10;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        goto LABEL_12;
      }

      v24 = 0;
      v25 = v7 + 32;
      v26 = v10 + 32;
      while (v24 != v22)
      {
        v39 = (v25 + 16 * v24);
        v40 = v26 + 16 * v24;
        if ((v39[2] | (v39[2] << 32)) != (*(v40 + 8) | (*(v40 + 8) << 32)))
        {
          return 0;
        }

        v41 = *v39;
        result = *v40;
        v42 = *(*v39 + 16);
        if (v42 != *(result + 16))
        {
          return 0;
        }

        if (v42)
        {
          v43 = v41 == result;
        }

        else
        {
          v43 = 1;
        }

        if (!v43)
        {
          v44 = (v41 + 32);
          result += 32;
          while (v42)
          {
            if (*v44 != *result)
            {
              return 0;
            }

            ++v44;
            ++result;
            if (!--v42)
            {
              goto LABEL_70;
            }
          }

          goto LABEL_99;
        }

LABEL_70:
        if (++v24 == v22)
        {
          goto LABEL_12;
        }
      }

LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v11)
    {
      return 0;
    }

    v12 = *(v7 + 16);
    if (v12 != *(v10 + 16))
    {
      return 0;
    }

    if (v12)
    {
      v13 = v7 == v10;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = 0;
      v15 = v7 + 32;
      v16 = v10 + 32;
      while (v14 != v12)
      {
        v27 = (v15 + 16 * v14);
        v28 = v16 + 16 * v14;
        if ((v27[2] | (v27[2] << 32)) != (*(v28 + 8) | (*(v28 + 8) << 32)))
        {
          return 0;
        }

        v29 = *v27;
        result = *v28;
        v30 = *(*v27 + 16);
        if (v30 != *(result + 16))
        {
          return 0;
        }

        if (v30)
        {
          v31 = v29 == result;
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          v32 = (v29 + 32);
          result += 32;
          while (v30)
          {
            if (*v32 != *result)
            {
              return 0;
            }

            ++v32;
            ++result;
            if (!--v30)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_98;
        }

LABEL_44:
        if (++v14 == v12)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_102;
    }

LABEL_12:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  if (v8 != 2)
  {
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v11 != 3 || v10 != 1)
        {
          return 0;
        }
      }

      else if (v11 != 3 || v10 != 0)
      {
        return 0;
      }
    }

    else if (v7 == 2)
    {
      if (v11 != 3 || v10 != 2)
      {
        return 0;
      }
    }

    else if (v7 == 3)
    {
      result = 0;
      if (v11 != 3 || v10 != 3)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v11 != 3 || v10 != 4)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  if (v11 != 2)
  {
    return 0;
  }

  v17 = *(v7 + 16);
  if (v17 != *(v10 + 16))
  {
    return 0;
  }

  if (v17)
  {
    v18 = v7 == v10;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    goto LABEL_12;
  }

  v19 = 0;
  v20 = v7 + 32;
  v21 = v10 + 32;
  while (v19 != v17)
  {
    v33 = (v20 + 16 * v19);
    v34 = v21 + 16 * v19;
    if ((v33[2] | (v33[2] << 32)) != (*(v34 + 8) | (*(v34 + 8) << 32)))
    {
      return 0;
    }

    v35 = *v33;
    result = *v34;
    v36 = *(*v33 + 16);
    if (v36 != *(result + 16))
    {
      return 0;
    }

    if (v36)
    {
      v37 = v35 == result;
    }

    else
    {
      v37 = 1;
    }

    if (!v37)
    {
      v38 = (v35 + 32);
      result += 32;
      while (v36)
      {
        if (*v38 != *result)
        {
          return 0;
        }

        ++v38;
        ++result;
        if (!--v36)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_57:
    if (++v19 == v17)
    {
      goto LABEL_12;
    }
  }

LABEL_103:
  __break(1u);
  return result;
}

uint64_t sub_1B0D3185C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_1B0D3CD9C(v21, v18, a4);
        sub_1B0D3CD9C(v22, v14, a4);
        v24 = a5(v18, v14);
        sub_1B0D3CE04(v14, a6);
        sub_1B0D3CE04(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1B0D319FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  for (i = (a2 + 32); ; ++i)
  {
    v7 = *v3++;
    v6 = v7;
    v8 = *i;
    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    v9 = *(v6 + 64);
    v58[2] = *(v6 + 48);
    v58[3] = v9;
    v59[0] = *(v6 + 80);
    *(v59 + 15) = *(v6 + 95);
    v10 = *(v6 + 32);
    v58[0] = *(v6 + 16);
    v58[1] = v10;
    if ((v8 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    v11 = *(v8 + 64);
    v60[2] = *(v8 + 48);
    v60[3] = v11;
    v61[0] = *(v8 + 80);
    *(v61 + 15) = *(v8 + 95);
    v12 = *(v8 + 32);
    v60[0] = *(v8 + 16);
    v60[1] = v12;

    sub_1B0D3CA68(v60, &v53);
    v13 = _s12NIOIMAPCore212EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(v58, v60);
    sub_1B0D3CAC4(v60);

    if ((v13 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    if (!--v2)
    {
      return 1;
    }
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v51 = v3;
  v14 = v6 & 0x7FFFFFFFFFFFFFFFLL;
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  v17 = *(v14 + 28);
  v18 = *(v14 + 32);
  v19 = *(v14 + 36);
  v20 = *(v14 + 38);
  v21 = *(v14 + 40);
  v48 = *(v14 + 48);
  v22 = *(v14 + 62);
  v23 = *(v14 + 60);
  v24 = *(v14 + 56);
  v25 = *(v14 + 64);
  v26 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v53 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v54 = v26;
  v55 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v56 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
  v27 = DWORD2(v53);
  if (v17 - v16 != HIDWORD(v53) - DWORD2(v53))
  {
    return 0;
  }

  v45 = v23;
  v46 = v22;
  v47 = v24;
  v50 = v25;
  v52 = v21;
  v28 = v53;
  if (v18 == v54 && v19 == WORD2(v54) && v20 == BYTE6(v54) && v15 == v53)
  {

    sub_1B0D3C9B8(&v53, v57);
  }

  else
  {
    v43 = BYTE6(v54);
    v44 = WORD2(v54);
    swift_beginAccess();
    v29 = *(v15 + 24);
    swift_beginAccess();
    v30 = *(v28 + 24);

    sub_1B0D3C9B8(&v53, v57);
    if (memcmp((v29 + (v20 | (v19 << 8)) + v16), (v30 + (v43 | (v44 << 8)) + v27), v17 - v16))
    {
      goto LABEL_28;
    }
  }

  v31 = *(&v54 + 1);
  if (!v52)
  {
    if (*(&v54 + 1))
    {
      goto LABEL_31;
    }

LABEL_6:
    v5 = sub_1B0D319FC(v50, v56);
    sub_1B0D3CA14(&v53);

    v3 = v51;
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (*(&v54 + 1))
  {
    v32 = v55;
    v33 = HIDWORD(v48);
    if (HIDWORD(v48) - v48 != DWORD1(v55) - v55)
    {
      goto LABEL_28;
    }

    v34 = v47 | ((v45 | (v46 << 16)) << 32);
    v35 = DWORD2(v55) | ((WORD6(v55) | (BYTE14(v55) << 16)) << 32);
    v36 = BYTE6(v35);
    v37 = HIDWORD(v34) & 0xFFFFFF;
    v38 = BYTE6(v34);
    if (v47 != DWORD2(v55) || WORD2(v34) != WORD6(v55) || BYTE6(v34) != BYTE6(v35) || v52 != *(&v54 + 1))
    {
      v39 = v48;
      v49 = HIDWORD(v35) & 0xFFFFFF;
      swift_beginAccess();
      v40 = v38 & 0xFFFFFFFFFF0000FFLL | (v37 << 8);
      v41 = *(v52 + 24) + v39;
      swift_beginAccess();
      if (memcmp((v41 + v40), (*(v31 + 24) + (v36 & 0xFFFFFFFFFF0000FFLL | (v49 << 8)) + v32), v33 - v39))
      {
LABEL_28:
        sub_1B0D3CA14(&v53);

        goto LABEL_32;
      }
    }

    goto LABEL_6;
  }

LABEL_31:

  sub_1B0D3CA14(&v53);

LABEL_32:

  return 0;
}

uint64_t sub_1B0D31DEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(v3 - 1);
      v8 = *v3;
      if (*(v4 - 3) == *(v3 - 3) && *(v4 - 2) == *(v3 - 2))
      {
        if (v7 != v9 || v6 != v8)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_1B0E46A78();
        result = 0;
        if ((v11 & 1) == 0 || v7 != v9 || v6 != v8)
        {
          return result;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0D31EBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;
        sub_1B0B23938(v5);
        sub_1B0B23938(v7);
        v8 = static SearchKey.__derived_enum_equals(_:_:)(v5, v7);
        sub_1B0B239C8(v7);
        sub_1B0B239C8(v5);
        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1B0D31F74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a1;
    if (a1 != a2)
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 44);
      v6 = *(a2 + 40);
      if (v4 - v5 == *(a2 + 44) - v6)
      {
        v7 = 0;
        v25 = a2;
        do
        {
          v8 = *(v3 + v7 + 54);
          v9 = *(v3 + v7 + 52);
          v10 = *(v3 + v7 + 32);
          v11 = *(a2 + v7 + 54);
          v12 = *(a2 + v7 + 52);
          v13 = *(a2 + v7 + 32);
          if (*(v3 + v7 + 48) != *(a2 + v7 + 48) || v9 != v12 || v8 != v11 || v10 != v13)
          {
            v17 = v5;
            v26 = v4;
            swift_beginAccess();
            v18 = *(v10 + 24) + (v8 | (v9 << 8));
            swift_beginAccess();
            v19 = memcmp((v18 + v17), (*(v13 + 24) + (v11 | (v12 << 8)) + v6), v26 - v17);
            v3 = a1;
            a2 = v25;
            if (v19)
            {
              break;
            }
          }

          if (!--v2)
          {
            return 1;
          }

          v20 = v3 + v7;
          v21 = a2 + v7;
          v7 += 24;
          v22 = v20 + 64;
          v5 = *(v20 + 64);
          v4 = *(v22 + 4);
          v6 = *(v21 + 64);
        }

        while (v4 - v5 == *(v21 + 68) - v6);
      }

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B0D320D8(uint64_t a1, uint64_t a2)
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

  v35 = v2;
  v36 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v27 = *v5;
    v28 = v8;
    v9 = v5[3];
    v29 = v5[2];
    v30 = v9;
    v10 = v6[1];
    v31 = *v6;
    v32 = v10;
    v11 = v6[3];
    v33 = v6[2];
    v34 = v11;
    v12 = v28;
    v13 = *(&v29 + 1);
    v14 = *(&v30 + 1);
    v15 = v30;
    if (v29 > 0xFDu)
    {
      if (v29 == 255)
      {
        if (v33 != 0xFF)
        {
          return 0;
        }

        goto LABEL_43;
      }

      if (v29 == 254)
      {
        if (v33 != 254)
        {
          return 0;
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (v29 == 252)
      {
        if (v33 != 252)
        {
          return 0;
        }

        goto LABEL_43;
      }

      if (v29 == 253)
      {
        if (v33 != 253)
        {
          return 0;
        }

        goto LABEL_43;
      }
    }

    if (v33 > 0xFBu)
    {
      return 0;
    }

    v24 = *(&v33 + 1);
    v16 = *(&v34 + 1);
    v25 = v34;
    if ((v29 & 1) == 0)
    {
      if (v33)
      {
        return 0;
      }

      if (v27 == v31)
      {
        goto LABEL_28;
      }

LABEL_27:
      if ((sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    if ((v33 & 1) == 0)
    {
      return 0;
    }

    v17 = *(&v32 + 1);
    v18 = v32;
    if (v27 != v31)
    {
      v23 = *(&v32 + 1);
      v19 = sub_1B0E46A78();
      v17 = v23;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    if (v12 != __PAIR128__(v17, v18))
    {
      goto LABEL_27;
    }

LABEL_28:
    if (HIBYTE(v14) != 255)
    {
      break;
    }

    if (HIBYTE(v16) != 255)
    {
      goto LABEL_48;
    }

LABEL_43:
    if (!i)
    {
      return 1;
    }

    v6 += 4;
    v5 += 4;
  }

  if (HIBYTE(v16) != 255)
  {
    if ((v14 & 0x100000000000000) != 0)
    {
      if ((v16 & 0x100000000000000) == 0)
      {
        return 0;
      }

      sub_1B0D3CBB0(&v31, v26);
      sub_1B0D3CBB0(&v27, v26);
      sub_1B0D3CB80(v13, v15, v14);
      sub_1B0D3CB80(v24, v25, v16);
      v21 = sub_1B0D312C0(v13, v24);
      sub_1B0D3CB98(v24, v25, v16);
      sub_1B0D3CB98(v13, v15, v14);
      sub_1B0D3CC0C(&v31);
      sub_1B0D3CC0C(&v27);
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((v16 & 0x100000000000000) != 0 || HIDWORD(v15) - v15 != HIDWORD(v25) - v25)
      {
        return 0;
      }

      if (v14 != v16 || WORD2(v14) != WORD2(v16) || BYTE6(v14) != BYTE6(v16) || v13 != v24)
      {
        swift_beginAccess();
        v20 = *(v13 + 24);
        swift_beginAccess();
        if (memcmp((v20 + (BYTE6(v14) | (WORD2(v14) << 8)) + v15), (*(v24 + 24) + (BYTE6(v16) | (WORD2(v16) << 8)) + v25), HIDWORD(v15) - v15))
        {
          return 0;
        }
      }
    }

    goto LABEL_43;
  }

LABEL_48:
  sub_1B0D3CB80(v13, v15, v14);
  sub_1B0D3CB80(v24, v25, v16);
  sub_1B0D3CB98(v13, v15, v14);
  sub_1B0D3CB98(v24, v25, v16);
  return 0;
}

uint64_t sub_1B0D32464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v108 - v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F10, &qword_1B0EEEAD0);
  v9 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v11 = &v108 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v116 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v108 - v16;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F18, &qword_1B0EEEAD8);
  v17 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v19 = &v108 - v18;
  v129 = type metadata accessor for ParameterValue();
  v20 = *(v129 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v119 = (&v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v124 = &v108 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v126 = &v108 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v130 = &v108 - v29;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F20, &unk_1B0EF5F80);
  v30 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v131 = &v108 - v31;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  v32 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v34 = (&v108 - v33);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F60, &qword_1B0EEEB08);
  v35 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134);
  v37 = &v108 - v36;
  Parameter = type metadata accessor for CreateParameter();
  v38 = *(*(Parameter - 8) + 64);
  MEMORY[0x1EEE9AC00](Parameter);
  MEMORY[0x1EEE9AC00](v39);
  v137 = &v108 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v138 = &v108 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v108 - v45;
  v48 = *(a1 + 16);
  if (v48 != *(a2 + 16))
  {
    return 0;
  }

  if (!v48 || a1 == a2)
  {
    return 1;
  }

  v114 = v46;
  v108 = v8;
  v109 = v4;
  v110 = v11;
  v49 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v123 = a1 + v49;
  v121 = a2 + v49;
  v112 = (v20 + 48);
  v50 = 0;
  v51 = (v5 + 48);
  v122 = *(v44 + 72);
  v52 = v131;
  v53 = v137;
  v115 = v51;
  v113 = v37;
  v111 = v19;
  v117 = v34;
  v135 = &v108 - v45;
  v136 = v48;
  while (1)
  {
    v54 = v122 * v50;
    v55 = v47;
    result = sub_1B0D3CD9C(v123 + v122 * v50, v47, type metadata accessor for CreateParameter);
    if (v50 == v136)
    {
      __break(1u);
      __break(1u);
      return result;
    }

    v132 = v50;
    v57 = v138;
    sub_1B0D3CD9C(v121 + v54, v138, type metadata accessor for CreateParameter);
    v58 = *(v134 + 48);
    sub_1B0D3CD9C(v55, v37, type metadata accessor for CreateParameter);
    sub_1B0D3CD9C(v57, v37 + v58, type metadata accessor for CreateParameter);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v59 = v114;
    sub_1B0D3CD9C(v37, v114, type metadata accessor for CreateParameter);
    v60 = *v59;
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_1B0D3CE04(v138, type metadata accessor for CreateParameter);
      sub_1B0D3CE04(v135, type metadata accessor for CreateParameter);
      goto LABEL_60;
    }

    v61 = *(v37 + v58);
    v19 = *(v60 + 16);
    if (v19 != *(v61 + 16))
    {
LABEL_56:
      sub_1B0D3CE04(v138, type metadata accessor for CreateParameter);
      sub_1B0D3CE04(v135, type metadata accessor for CreateParameter);

      v101 = v113;
      goto LABEL_77;
    }

    if (v19 && v60 != v61)
    {
      v62 = 0;
      v63 = (v60 + 40);
      v34 = (v61 + 40);
      while (v62 < *(v60 + 16))
      {
        if (v62 >= *(v61 + 16))
        {
          goto LABEL_68;
        }

        v64 = *(v63 - 1);
        v65 = *v63;
        v66 = *(v34 - 1);
        v37 = *v34;
        v67 = sub_1B0E44B98();
        v69 = v68;
        if (v67 == sub_1B0E44B98() && v69 == v70)
        {
        }

        else
        {
          v37 = sub_1B0E46A78();

          if ((v37 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        ++v62;
        v63 += 2;
        v34 += 2;
        if (v19 == v62)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      sub_1B0398EFC(v120, &qword_1EB6E4050, &unk_1B0EC2B20);
      sub_1B0D3CE04(v126, type metadata accessor for ParameterValue);
      sub_1B0D3CE04(v138, type metadata accessor for CreateParameter);
      sub_1B0D3CE04(v135, type metadata accessor for CreateParameter);
      sub_1B0398EFC(v60, &qword_1EB6E4040, &qword_1B0EC2B10);
LABEL_70:
      v106 = &qword_1EB6E6F10;
      v107 = &qword_1B0EEEAD0;
LABEL_72:
      sub_1B0398EFC(v110, v106, v107);
      sub_1B0398EFC(v124, &qword_1EB6E4050, &unk_1B0EC2B20);
      sub_1B0D3CE04(v19, type metadata accessor for ParameterValue);
      v53 = v137;
      goto LABEL_73;
    }

LABEL_5:
    sub_1B0D3CE04(v138, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v135, type metadata accessor for CreateParameter);

    v37 = v113;
    v19 = v111;
    v34 = v117;
    v52 = v131;
    v53 = v137;
    v51 = v115;
LABEL_6:
    v50 = v132 + 1;
    sub_1B0D3CE04(v37, type metadata accessor for CreateParameter);
    v47 = v135;
    if (v50 == v136)
    {
      return 1;
    }
  }

  sub_1B0D3CD9C(v37, v53, type metadata accessor for CreateParameter);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0D3CE04(v138, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v135, type metadata accessor for CreateParameter);
    sub_1B0398EFC(v53, &qword_1EB6E6F58, &unk_1B0EF5150);
LABEL_60:
    sub_1B0398EFC(v37, &qword_1EB6E6F60, &qword_1B0EEEB08);
    return 0;
  }

  sub_1B03C60A4(v37 + v58, v34, &qword_1EB6E6F58, &unk_1B0EF5150);
  if ((*v53 != *v34 || v53[1] != v34[1]) && (sub_1B0E46A78() & 1) == 0)
  {
    sub_1B0D3CE04(v138, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v135, type metadata accessor for CreateParameter);
    goto LABEL_76;
  }

  v72 = *(v127 + 52);
  v73 = *(v128 + 48);
  sub_1B03B5C80(v53 + v72, v52, &qword_1EB6E6440, &unk_1B0EF3530);
  sub_1B03B5C80(v34 + v72, v52 + v73, &qword_1EB6E6440, &unk_1B0EF3530);
  v74 = *v112;
  v75 = v129;
  if ((*v112)(v52, 1, v129) == 1)
  {
    sub_1B0D3CE04(v138, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v135, type metadata accessor for CreateParameter);
    v76 = v74(v52 + v73, 1, v75);
    v51 = v115;
    v53 = v137;
    v34 = v117;
    if (v76 != 1)
    {
      goto LABEL_63;
    }

    goto LABEL_54;
  }

  sub_1B03B5C80(v52, v130, &qword_1EB6E6440, &unk_1B0EF3530);
  if (v74(v52 + v73, 1, v75) == 1)
  {
    sub_1B0D3CE04(v138, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v135, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v130, type metadata accessor for ParameterValue);
    v53 = v137;
    v34 = v117;
LABEL_63:
    v103 = &qword_1EB6E6F20;
    v104 = &unk_1B0EF5F80;
    v105 = v52;
    goto LABEL_75;
  }

  v77 = v126;
  sub_1B0D3CD34(v52 + v73, v126, type metadata accessor for ParameterValue);
  v78 = *(v125 + 48);
  sub_1B0D3CD9C(v130, v19, type metadata accessor for ParameterValue);
  sub_1B0D3CD9C(v77, &v19[v78], type metadata accessor for ParameterValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v53 = v137;
  if (EnumCaseMultiPayload != 1)
  {
    v87 = v124;
    sub_1B0D3CD9C(v19, v124, type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v88 = v120;
      sub_1B03C60A4(&v19[v78], v120, &qword_1EB6E4050, &unk_1B0EC2B20);
      v89 = *(v118 + 48);
      v90 = v87;
      v91 = v88;
      v92 = v110;
      sub_1B03B5C80(v90, v110, &qword_1EB6E4050, &unk_1B0EC2B20);
      sub_1B03B5C80(v88, v92 + v89, &qword_1EB6E4050, &unk_1B0EC2B20);
      v93 = *v51;
      v94 = v92;
      v95 = v109;
      v96 = (*v51)(v94, 1, v109);
      v34 = v117;
      if (v96 == 1)
      {
        sub_1B0398EFC(v91, &qword_1EB6E4050, &unk_1B0EC2B20);
        sub_1B0D3CE04(v126, type metadata accessor for ParameterValue);
        sub_1B0D3CE04(v138, type metadata accessor for CreateParameter);
        sub_1B0D3CE04(v135, type metadata accessor for CreateParameter);
        if (v93(&v110[v89], 1, v95) != 1)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v97 = v110;
        v60 = v116;
        sub_1B03B5C80(v110, v116, &qword_1EB6E4050, &unk_1B0EC2B20);
        if (v93(v97 + v89, 1, v95) == 1)
        {
          goto LABEL_69;
        }

        v98 = v108;
        sub_1B03C60A4(&v110[v89], v108, &qword_1EB6E4040, &qword_1B0EC2B10);
        sub_1B03D06F8();
        v99 = v60;
        v100 = sub_1B0E46E08();
        sub_1B0398EFC(v98, &qword_1EB6E4040, &qword_1B0EC2B10);
        sub_1B0398EFC(v120, &qword_1EB6E4050, &unk_1B0EC2B20);
        sub_1B0D3CE04(v126, type metadata accessor for ParameterValue);
        sub_1B0D3CE04(v138, type metadata accessor for CreateParameter);
        sub_1B0D3CE04(v135, type metadata accessor for CreateParameter);
        sub_1B0398EFC(v99, &qword_1EB6E4040, &qword_1B0EC2B10);
        if ((v100 & 1) == 0)
        {
          v106 = &qword_1EB6E4050;
          v107 = &unk_1B0EC2B20;
          goto LABEL_72;
        }
      }

      sub_1B0398EFC(v110, &qword_1EB6E4050, &unk_1B0EC2B20);
      sub_1B0398EFC(v124, &qword_1EB6E4050, &unk_1B0EC2B20);
      v53 = v137;
      v52 = v131;
      goto LABEL_53;
    }

    sub_1B0D3CE04(v126, type metadata accessor for ParameterValue);
    sub_1B0D3CE04(v138, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v135, type metadata accessor for CreateParameter);
    sub_1B0398EFC(v87, &qword_1EB6E4050, &unk_1B0EC2B20);
LABEL_66:
    v34 = v117;
    sub_1B0398EFC(v19, &qword_1EB6E6F18, &qword_1B0EEEAD8);
LABEL_73:
    v102 = v131;
    goto LABEL_74;
  }

  v80 = v119;
  sub_1B0D3CD9C(v19, v119, type metadata accessor for ParameterValue);
  v81 = *v80;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_1B0D3CE04(v126, type metadata accessor for ParameterValue);
    sub_1B0D3CE04(v138, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v135, type metadata accessor for CreateParameter);
    goto LABEL_66;
  }

  v82 = *&v19[v78];
  v83 = *(v81 + 16);
  v34 = v117;
  if (v83 != *(v82 + 16))
  {
    goto LABEL_57;
  }

  if (!v83 || v81 == v82)
  {
LABEL_49:
    sub_1B0D3CE04(v126, type metadata accessor for ParameterValue);
    sub_1B0D3CE04(v138, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v135, type metadata accessor for CreateParameter);

    v52 = v131;
    v53 = v137;
    v51 = v115;
LABEL_53:
    sub_1B0D3CE04(v19, type metadata accessor for ParameterValue);
    sub_1B0D3CE04(v130, type metadata accessor for ParameterValue);
LABEL_54:
    sub_1B0398EFC(v52, &qword_1EB6E6440, &unk_1B0EF3530);
    sub_1B0398EFC(v34, &qword_1EB6E6F58, &unk_1B0EF5150);
    sub_1B0398EFC(v53, &qword_1EB6E6F58, &unk_1B0EF5150);
    goto LABEL_6;
  }

  v84 = (v81 + 40);
  v85 = (v82 + 40);
  while (1)
  {
    v86 = *(v84 - 1) == *(v85 - 1) && *v84 == *v85;
    if (!v86 && (sub_1B0E46A78() & 1) == 0)
    {
      break;
    }

    v84 += 2;
    v85 += 2;
    if (!--v83)
    {
      goto LABEL_49;
    }
  }

LABEL_57:
  sub_1B0D3CE04(v126, type metadata accessor for ParameterValue);
  sub_1B0D3CE04(v138, type metadata accessor for CreateParameter);
  sub_1B0D3CE04(v135, type metadata accessor for CreateParameter);

  sub_1B0D3CE04(v19, type metadata accessor for ParameterValue);
  v102 = v131;
  v53 = v137;
LABEL_74:
  sub_1B0D3CE04(v130, type metadata accessor for ParameterValue);
  v103 = &qword_1EB6E6440;
  v104 = &unk_1B0EF3530;
  v105 = v102;
LABEL_75:
  sub_1B0398EFC(v105, v103, v104);
LABEL_76:
  sub_1B0398EFC(v34, &qword_1EB6E6F58, &unk_1B0EF5150);
  sub_1B0398EFC(v53, &qword_1EB6E6F58, &unk_1B0EF5150);
  v101 = v37;
LABEL_77:
  sub_1B0D3CE04(v101, type metadata accessor for CreateParameter);
  return 0;
}

uint64_t sub_1B0D336F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QResyncParameter(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v112 - v11;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F10, &qword_1B0EEEAD0);
  v13 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121);
  v123 = &v112 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v120 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v112 - v19;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F18, &qword_1B0EEEAD8);
  v20 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v112 - v21;
  v137 = type metadata accessor for ParameterValue();
  v135 = *(v137 - 8);
  v22 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v122 = (&v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v125 = &v112 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v128 = &v112 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v129 = &v112 - v30;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F20, &unk_1B0EF5F80);
  v31 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v112 - v32;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  v33 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v138 = (&v112 - v34);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F68, &qword_1B0EEEB10);
  v35 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v37 = &v112 - v36;
  v139 = type metadata accessor for SelectParameter(0);
  v38 = *(*(v139 - 8) + 64);
  MEMORY[0x1EEE9AC00](v139);
  MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v112 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v48 = &v112 - v47;
  v49 = *(a1 + 16);
  if (v49 != *(a2 + 16))
  {
    return 0;
  }

  if (!v49 || a1 == a2)
  {
    return 1;
  }

  v117 = v7;
  v118 = v46;
  v132 = v45;
  v112 = v12;
  v114 = v8;
  v50 = 0;
  v51 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v136 = a1 + v51;
  v134 = a2 + v51;
  v116 = (v135 + 48);
  v113 = (v9 + 48);
  v135 = *(v44 + 72);
  v119 = v42;
  while (1)
  {
    v52 = v135 * v50;
    result = sub_1B0D3CD9C(v136 + v135 * v50, v48, type metadata accessor for SelectParameter);
    if (v50 == v49)
    {
      break;
    }

    sub_1B0D3CD9C(v134 + v52, v42, type metadata accessor for SelectParameter);
    v54 = *(v140 + 48);
    sub_1B0D3CD9C(v48, v37, type metadata accessor for SelectParameter);
    sub_1B0D3CD9C(v42, &v37[v54], type metadata accessor for SelectParameter);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v56 = v48;
        v57 = v118;
        sub_1B0D3CD9C(v37, v118, type metadata accessor for SelectParameter);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1B0D3CE04(v57, type metadata accessor for QResyncParameter);
LABEL_49:
          sub_1B0398EFC(v37, &qword_1EB6E6F68, &qword_1B0EEEB10);
          goto LABEL_62;
        }

        v58 = v117;
        sub_1B0D3CD34(&v37[v54], v117, type metadata accessor for QResyncParameter);
        _s12NIOIMAPCore216QResyncParameterV23__derived_struct_equalsySbAC_ACtFZ_0(v57);
        v60 = v59;
        sub_1B0D3CE04(v58, type metadata accessor for QResyncParameter);
        sub_1B0D3CE04(v57, type metadata accessor for QResyncParameter);
        v48 = v56;
        if ((v60 & 1) == 0)
        {
          sub_1B0D3CE04(v37, type metadata accessor for SelectParameter);
          goto LABEL_62;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v61 = v137;
      v62 = v132;
      sub_1B0D3CD9C(v37, v132, type metadata accessor for SelectParameter);
      v63 = swift_getEnumCaseMultiPayload();
      v64 = v133;
      if (v63)
      {
        sub_1B0398EFC(v62, &qword_1EB6E6F58, &unk_1B0EF5150);
        v42 = v119;
        goto LABEL_49;
      }

      v65 = v138;
      sub_1B03C60A4(&v37[v54], v138, &qword_1EB6E6F58, &unk_1B0EF5150);
      if (*v62 != *v65 || (v66 = v62, v62[1] != v65[1]))
      {
        v67 = sub_1B0E46A78();
        v66 = v132;
        if ((v67 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      v68 = *(v130 + 52);
      v69 = *(v131 + 48);
      sub_1B03B5C80(v66 + v68, v64, &qword_1EB6E6440, &unk_1B0EF3530);
      sub_1B03B5C80(v138 + v68, v64 + v69, &qword_1EB6E6440, &unk_1B0EF3530);
      v70 = *v116;
      if ((*v116)(v64, 1, v61) == 1)
      {
        v71 = v70(v64 + v69, 1, v137);
        v42 = v119;
        if (v71 != 1)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v72 = v64;
        v73 = v64;
        v74 = v129;
        sub_1B03B5C80(v72, v129, &qword_1EB6E6440, &unk_1B0EF3530);
        if (v70(v73 + v69, 1, v137) == 1)
        {
          sub_1B0D3CE04(v74, type metadata accessor for ParameterValue);
          v64 = v73;
LABEL_51:
          v106 = &qword_1EB6E6F20;
          v107 = &unk_1B0EF5F80;
          v108 = v64;
          goto LABEL_60;
        }

        v75 = v73 + v69;
        v76 = v128;
        sub_1B0D3CD34(v75, v128, type metadata accessor for ParameterValue);
        v77 = v127;
        v78 = *(v126 + 48);
        sub_1B0D3CD9C(v74, v127, type metadata accessor for ParameterValue);
        sub_1B0D3CD9C(v76, v77 + v78, type metadata accessor for ParameterValue);
        v79 = swift_getEnumCaseMultiPayload();
        v42 = v119;
        if (v79 == 1)
        {
          v80 = v122;
          sub_1B0D3CD9C(v77, v122, type metadata accessor for ParameterValue);
          v81 = *v80;
          if (swift_getEnumCaseMultiPayload() != 1)
          {

LABEL_54:
            sub_1B0398EFC(v77, &qword_1EB6E6F18, &qword_1B0EEEAD8);
            goto LABEL_59;
          }

          v82 = *(v77 + v78);
          v83 = *(v81 + 16);
          if (v83 != *(v82 + 16))
          {
            goto LABEL_46;
          }

          if (v83 && v81 != v82)
          {
            v84 = (v81 + 40);
            v85 = (v82 + 40);
            while (1)
            {
              v86 = *(v84 - 1) == *(v85 - 1) && *v84 == *v85;
              if (!v86 && (sub_1B0E46A78() & 1) == 0)
              {
                break;
              }

              v84 += 2;
              v85 += 2;
              if (!--v83)
              {
                goto LABEL_39;
              }
            }

LABEL_46:

            v105 = v127;
            goto LABEL_58;
          }

LABEL_39:

          v99 = v127;
          v42 = v119;
        }

        else
        {
          v87 = v125;
          sub_1B0D3CD9C(v77, v125, type metadata accessor for ParameterValue);
          v88 = swift_getEnumCaseMultiPayload();
          v89 = v123;
          if (v88 == 1)
          {
            sub_1B0398EFC(v87, &qword_1EB6E4050, &unk_1B0EC2B20);
            goto LABEL_54;
          }

          v90 = v77 + v78;
          v91 = v87;
          v92 = v124;
          sub_1B03C60A4(v90, v124, &qword_1EB6E4050, &unk_1B0EC2B20);
          v93 = *(v121 + 48);
          sub_1B03B5C80(v91, v89, &qword_1EB6E4050, &unk_1B0EC2B20);
          v115 = v93;
          sub_1B03B5C80(v92, v89 + v93, &qword_1EB6E4050, &unk_1B0EC2B20);
          v94 = *v113;
          v95 = v89;
          v96 = v89;
          v97 = v114;
          if ((*v113)(v95, 1, v114) == 1)
          {
            v86 = v94(v96 + v115, 1, v97) == 1;
            v98 = v96;
            v99 = v127;
            v100 = v125;
            if (!v86)
            {
              goto LABEL_56;
            }

            sub_1B0398EFC(v98, &qword_1EB6E4050, &unk_1B0EC2B20);
          }

          else
          {
            sub_1B03B5C80(v96, v120, &qword_1EB6E4050, &unk_1B0EC2B20);
            if (v94(v96 + v115, 1, v97) == 1)
            {
              sub_1B0398EFC(v120, &qword_1EB6E4040, &qword_1B0EC2B10);
              v98 = v96;
              v99 = v127;
              v100 = v125;
LABEL_56:
              sub_1B0398EFC(v98, &qword_1EB6E6F10, &qword_1B0EEEAD0);
LABEL_57:
              sub_1B0398EFC(v124, &qword_1EB6E4050, &unk_1B0EC2B20);
              sub_1B0398EFC(v100, &qword_1EB6E4050, &unk_1B0EC2B20);
              v105 = v99;
LABEL_58:
              sub_1B0D3CE04(v105, type metadata accessor for ParameterValue);
LABEL_59:
              v109 = v129;
              v110 = v133;
              sub_1B0D3CE04(v128, type metadata accessor for ParameterValue);
              sub_1B0D3CE04(v109, type metadata accessor for ParameterValue);
              v106 = &qword_1EB6E6440;
              v107 = &unk_1B0EF3530;
              v108 = v110;
LABEL_60:
              sub_1B0398EFC(v108, v106, v107);
              v66 = v132;
LABEL_61:
              v111 = v66;
              sub_1B0398EFC(v138, &qword_1EB6E6F58, &unk_1B0EF5150);
              sub_1B0398EFC(v111, &qword_1EB6E6F58, &unk_1B0EF5150);
              sub_1B0D3CE04(v37, type metadata accessor for SelectParameter);
              v42 = v119;
LABEL_62:
              sub_1B0D3CE04(v42, type metadata accessor for SelectParameter);
              sub_1B0D3CE04(v48, type metadata accessor for SelectParameter);
              return 0;
            }

            v101 = v96 + v115;
            v102 = v112;
            sub_1B03C60A4(v101, v112, &qword_1EB6E4040, &qword_1B0EC2B10);
            sub_1B03D06F8();
            v103 = v120;
            v104 = sub_1B0E46E08();
            sub_1B0398EFC(v102, &qword_1EB6E4040, &qword_1B0EC2B10);
            sub_1B0398EFC(v103, &qword_1EB6E4040, &qword_1B0EC2B10);
            sub_1B0398EFC(v123, &qword_1EB6E4050, &unk_1B0EC2B20);
            v99 = v127;
            v100 = v125;
            if ((v104 & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          sub_1B0398EFC(v124, &qword_1EB6E4050, &unk_1B0EC2B20);
          sub_1B0398EFC(v100, &qword_1EB6E4050, &unk_1B0EC2B20);
        }

        sub_1B0D3CE04(v99, type metadata accessor for ParameterValue);
        sub_1B0D3CE04(v128, type metadata accessor for ParameterValue);
        sub_1B0D3CE04(v129, type metadata accessor for ParameterValue);
        v64 = v133;
      }

      sub_1B0398EFC(v64, &qword_1EB6E6440, &unk_1B0EF3530);
      sub_1B0398EFC(v138, &qword_1EB6E6F58, &unk_1B0EF5150);
      sub_1B0398EFC(v132, &qword_1EB6E6F58, &unk_1B0EF5150);
    }

    ++v50;
    sub_1B0D3CE04(v37, type metadata accessor for SelectParameter);
    sub_1B0D3CE04(v42, type metadata accessor for SelectParameter);
    sub_1B0D3CE04(v48, type metadata accessor for SelectParameter);
    if (v50 == v49)
    {
      return 1;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1B0D34654(uint64_t a1, uint64_t a2)
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

  v32 = v2;
  v33 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24 = *v5;
    v25 = v8;
    v9 = v5[3];
    v26 = v5[2];
    v27 = v9;
    v10 = v6[1];
    v28 = *v6;
    v29 = v10;
    v11 = v6[3];
    v30 = v6[2];
    v31 = v11;
    if (v26 == 254)
    {
      if (v30 != 254)
      {
        return 0;
      }

      goto LABEL_36;
    }

    if (v26 == 255)
    {
      if (v30 != 0xFF)
      {
        return 0;
      }

      goto LABEL_36;
    }

    if (v30 > 0xFDu)
    {
      return 0;
    }

    v12 = *(&v27 + 1);
    v13 = v27;
    v20 = *(&v26 + 1);
    v21 = *(&v30 + 1);
    v14 = *(&v31 + 1);
    v22 = v31;
    if ((v26 & 1) == 0)
    {
      if (v30)
      {
        return 0;
      }

      if (v24 == v28)
      {
        goto LABEL_21;
      }

LABEL_20:
      if ((sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_21;
    }

    if ((v30 & 1) == 0)
    {
      return 0;
    }

    v15 = v25;
    v16 = v29;
    if (v24 != v28 && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }

    if (v15 != v16)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (HIBYTE(v12) != 255)
    {
      break;
    }

    if (HIBYTE(v14) != 255)
    {
      goto LABEL_41;
    }

LABEL_36:
    if (!i)
    {
      return 1;
    }

    v6 += 4;
    v5 += 4;
  }

  if (HIBYTE(v14) != 255)
  {
    if ((v12 & 0x100000000000000) != 0)
    {
      if ((v14 & 0x100000000000000) == 0)
      {
        return 0;
      }

      sub_1B0D3CC84(&v28, v23);
      sub_1B0D3CC84(&v24, v23);
      sub_1B0D3CB80(v20, v13, v12);
      sub_1B0D3CB80(v21, v22, v14);
      v18 = sub_1B0D312C0(v20, v21);
      sub_1B0D3CB98(v21, v22, v14);
      sub_1B0D3CB98(v20, v13, v12);
      sub_1B0D3CCE0(&v28);
      sub_1B0D3CCE0(&v24);
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((v14 & 0x100000000000000) != 0 || HIDWORD(v13) - v13 != HIDWORD(v22) - v22)
      {
        return 0;
      }

      if (v12 != v14 || WORD2(v12) != WORD2(v14) || BYTE6(v12) != BYTE6(v14) || v20 != v21)
      {
        swift_beginAccess();
        v17 = *(v20 + 24);
        swift_beginAccess();
        if (memcmp((v17 + (BYTE6(v12) | (WORD2(v12) << 8)) + v13), (*(v21 + 24) + (BYTE6(v14) | (WORD2(v14) << 8)) + v22), HIDWORD(v13) - v13))
        {
          return 0;
        }
      }
    }

    goto LABEL_36;
  }

LABEL_41:
  sub_1B0D3CB80(v20, v13, v12);
  sub_1B0D3CB80(v21, v22, v14);
  sub_1B0D3CB98(v20, v13, v12);
  sub_1B0D3CB98(v21, v22, v14);
  return 0;
}

uint64_t sub_1B0D34A04(uint64_t a1, uint64_t a2)
{
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v128 = *(v113 - 8);
  v4 = *(v128 + 8);
  MEMORY[0x1EEE9AC00](v113);
  v109 = &v101 - v5;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F10, &qword_1B0EEEAD0);
  v6 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v101 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v110 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v101 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F18, &qword_1B0EEEAD8);
  v13 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v15 = &v101 - v14;
  v125 = type metadata accessor for ParameterValue();
  v16 = *(v125 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v112 = (&v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v116 = &v101 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v119 = &v101 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v101 - v25;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F20, &unk_1B0EF5F80);
  v27 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v127 = &v101 - v28;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  v29 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v131 = (&v101 - v30);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F70, &qword_1B0EEEB18);
  v31 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v33 = &v101 - v32;
  v129 = type metadata accessor for StoreModifier();
  v34 = *(*(v129 - 8) + 64);
  MEMORY[0x1EEE9AC00](v129);
  v36 = (&v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v101 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v101 - v43;
  v46 = *(a1 + 16);
  if (v46 != *(a2 + 16))
  {
    return 0;
  }

  v126 = *(a1 + 16);
  if (!v46 || a1 == a2)
  {
    return 1;
  }

  v103 = v15;
  v108 = v44;
  v104 = v26;
  v47 = 0;
  v48 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v122 = a1 + v48;
  v120 = a2 + v48;
  v107 = (v16 + 48);
  v101 = (v128 + 48);
  v121 = *(v42 + 72);
  v128 = &v101 - v43;
  v49 = v126;
  v102 = v36;
  v106 = v33;
  v105 = v40;
  while (1)
  {
    v53 = v121 * v47;
    result = sub_1B0D3CD9C(v122 + v121 * v47, v45, type metadata accessor for StoreModifier);
    if (v47 == v49)
    {
      break;
    }

    sub_1B0D3CD9C(v120 + v53, v40, type metadata accessor for StoreModifier);
    v55 = *(v130 + 48);
    sub_1B0D3CD9C(v45, v33, type metadata accessor for StoreModifier);
    sub_1B0D3CD9C(v40, &v33[v55], type metadata accessor for StoreModifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v52 = v36;
      sub_1B0D3CD9C(v33, v36, type metadata accessor for StoreModifier);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1B0D3CE04(v40, type metadata accessor for StoreModifier);
        sub_1B0D3CE04(v128, type metadata accessor for StoreModifier);
        sub_1B0398EFC(v36, &qword_1EB6E6F58, &unk_1B0EF5150);
LABEL_45:
        sub_1B0398EFC(v33, &qword_1EB6E6F70, &qword_1B0EEEB18);
        return 0;
      }

      v56 = v131;
      sub_1B03C60A4(&v33[v55], v131, &qword_1EB6E6F58, &unk_1B0EF5150);
      if ((*v36 != *v56 || v36[1] != v56[1]) && (sub_1B0E46A78() & 1) == 0)
      {
        sub_1B0D3CE04(v40, type metadata accessor for StoreModifier);
        sub_1B0D3CE04(v128, type metadata accessor for StoreModifier);
LABEL_55:
        sub_1B0398EFC(v131, &qword_1EB6E6F58, &unk_1B0EF5150);
        sub_1B0398EFC(v52, &qword_1EB6E6F58, &unk_1B0EF5150);
LABEL_56:
        sub_1B0D3CE04(v33, type metadata accessor for StoreModifier);
        return 0;
      }

      v118 = v47;
      v57 = *(v123 + 52);
      v58 = *(v124 + 48);
      v59 = v127;
      v60 = v36;
      sub_1B03B5C80(v36 + v57, v127, &qword_1EB6E6440, &unk_1B0EF3530);
      sub_1B03B5C80(v131 + v57, v59 + v58, &qword_1EB6E6440, &unk_1B0EF3530);
      v61 = *v107;
      v62 = v125;
      if ((*v107)(v59, 1, v125) == 1)
      {
        v50 = v105;
        sub_1B0D3CE04(v105, type metadata accessor for StoreModifier);
        sub_1B0D3CE04(v128, type metadata accessor for StoreModifier);
        v51 = v61(v59 + v58, 1, v62);
        v40 = v50;
        v33 = v106;
        v52 = v60;
        if (v51 != 1)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v63 = v104;
        sub_1B03B5C80(v59, v104, &qword_1EB6E6440, &unk_1B0EF3530);
        if (v61(v59 + v58, 1, v62) == 1)
        {
          sub_1B0D3CE04(v105, type metadata accessor for StoreModifier);
          sub_1B0D3CE04(v128, type metadata accessor for StoreModifier);
          sub_1B0D3CE04(v63, type metadata accessor for ParameterValue);
          v52 = v102;
          v33 = v106;
LABEL_48:
          v95 = &qword_1EB6E6F20;
          v96 = &unk_1B0EF5F80;
          goto LABEL_54;
        }

        v64 = v59 + v58;
        v65 = v119;
        sub_1B0D3CD34(v64, v119, type metadata accessor for ParameterValue);
        v66 = *(v117 + 48);
        v67 = v63;
        v68 = v103;
        sub_1B0D3CD9C(v67, v103, type metadata accessor for ParameterValue);
        sub_1B0D3CD9C(v65, v68 + v66, type metadata accessor for ParameterValue);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v40 = v105;
        v33 = v106;
        if (EnumCaseMultiPayload == 1)
        {
          v70 = v112;
          sub_1B0D3CD9C(v68, v112, type metadata accessor for ParameterValue);
          v71 = *v70;
          v72 = swift_getEnumCaseMultiPayload();
          v52 = v102;
          if (v72 != 1)
          {

            sub_1B0D3CE04(v119, type metadata accessor for ParameterValue);
            sub_1B0D3CE04(v40, type metadata accessor for StoreModifier);
            sub_1B0D3CE04(v128, type metadata accessor for StoreModifier);
            goto LABEL_51;
          }

          v73 = *(v68 + v66);
          v74 = *(v71 + 16);
          if (v74 != *(v73 + 16))
          {
            goto LABEL_43;
          }

          if (v74 && v71 != v73)
          {
            v75 = (v71 + 40);
            v76 = (v73 + 40);
            while (1)
            {
              v77 = *(v75 - 1) == *(v76 - 1) && *v75 == *v76;
              if (!v77 && (sub_1B0E46A78() & 1) == 0)
              {
                break;
              }

              v75 += 2;
              v76 += 2;
              if (!--v74)
              {
                goto LABEL_37;
              }
            }

LABEL_43:
            sub_1B0D3CE04(v119, type metadata accessor for ParameterValue);
            sub_1B0D3CE04(v40, type metadata accessor for StoreModifier);
            sub_1B0D3CE04(v128, type metadata accessor for StoreModifier);

            sub_1B0D3CE04(v103, type metadata accessor for ParameterValue);
LABEL_52:
            v97 = v104;
            v59 = v127;
LABEL_53:
            sub_1B0D3CE04(v97, type metadata accessor for ParameterValue);
            v95 = &qword_1EB6E6440;
            v96 = &unk_1B0EF3530;
LABEL_54:
            sub_1B0398EFC(v59, v95, v96);
            goto LABEL_55;
          }

LABEL_37:
          sub_1B0D3CE04(v119, type metadata accessor for ParameterValue);
          sub_1B0D3CE04(v40, type metadata accessor for StoreModifier);
          sub_1B0D3CE04(v128, type metadata accessor for StoreModifier);

          v91 = v103;
          v59 = v127;
        }

        else
        {
          v81 = v116;
          sub_1B0D3CD9C(v68, v116, type metadata accessor for ParameterValue);
          v82 = swift_getEnumCaseMultiPayload();
          v83 = v113;
          v84 = v114;
          v85 = v101;
          if (v82 == 1)
          {
            sub_1B0D3CE04(v119, type metadata accessor for ParameterValue);
            sub_1B0D3CE04(v40, type metadata accessor for StoreModifier);
            sub_1B0D3CE04(v128, type metadata accessor for StoreModifier);
            sub_1B0398EFC(v81, &qword_1EB6E4050, &unk_1B0EC2B20);
            v52 = v102;
LABEL_51:
            sub_1B0398EFC(v68, &qword_1EB6E6F18, &qword_1B0EEEAD8);
            goto LABEL_52;
          }

          v86 = v68 + v66;
          v87 = v115;
          sub_1B03C60A4(v86, v115, &qword_1EB6E4050, &unk_1B0EC2B20);
          v88 = *(v111 + 48);
          sub_1B03B5C80(v81, v84, &qword_1EB6E4050, &unk_1B0EC2B20);
          sub_1B03B5C80(v87, v84 + v88, &qword_1EB6E4050, &unk_1B0EC2B20);
          v89 = *v85;
          if ((*v85)(v84, 1, v83) == 1)
          {
            sub_1B0398EFC(v87, &qword_1EB6E4050, &unk_1B0EC2B20);
            sub_1B0D3CE04(v119, type metadata accessor for ParameterValue);
            sub_1B0D3CE04(v40, type metadata accessor for StoreModifier);
            sub_1B0D3CE04(v128, type metadata accessor for StoreModifier);
            v77 = v89(v84 + v88, 1, v83) == 1;
            v90 = v84;
            v59 = v127;
            if (!v77)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v92 = v110;
            sub_1B03B5C80(v84, v110, &qword_1EB6E4050, &unk_1B0EC2B20);
            if (v89(v84 + v88, 1, v83) == 1)
            {
              sub_1B0398EFC(v115, &qword_1EB6E4050, &unk_1B0EC2B20);
              sub_1B0D3CE04(v119, type metadata accessor for ParameterValue);
              sub_1B0D3CE04(v40, type metadata accessor for StoreModifier);
              sub_1B0D3CE04(v128, type metadata accessor for StoreModifier);
              sub_1B0398EFC(v92, &qword_1EB6E4040, &qword_1B0EC2B10);
              v90 = v84;
              v59 = v127;
LABEL_59:
              v98 = &qword_1EB6E6F10;
              v99 = &qword_1B0EEEAD0;
              goto LABEL_61;
            }

            v93 = v109;
            sub_1B03C60A4(v84 + v88, v109, &qword_1EB6E4040, &qword_1B0EC2B10);
            sub_1B03D06F8();
            v94 = sub_1B0E46E08();
            sub_1B0398EFC(v93, &qword_1EB6E4040, &qword_1B0EC2B10);
            sub_1B0398EFC(v115, &qword_1EB6E4050, &unk_1B0EC2B20);
            sub_1B0D3CE04(v119, type metadata accessor for ParameterValue);
            sub_1B0D3CE04(v40, type metadata accessor for StoreModifier);
            sub_1B0D3CE04(v128, type metadata accessor for StoreModifier);
            sub_1B0398EFC(v92, &qword_1EB6E4040, &qword_1B0EC2B10);
            v90 = v84;
            v59 = v127;
            if ((v94 & 1) == 0)
            {
              v98 = &qword_1EB6E4050;
              v99 = &unk_1B0EC2B20;
LABEL_61:
              sub_1B0398EFC(v90, v98, v99);
              v100 = v103;
              sub_1B0398EFC(v116, &qword_1EB6E4050, &unk_1B0EC2B20);
              sub_1B0D3CE04(v100, type metadata accessor for ParameterValue);
              v97 = v104;
              v52 = v102;
              goto LABEL_53;
            }
          }

          sub_1B0398EFC(v90, &qword_1EB6E4050, &unk_1B0EC2B20);
          sub_1B0398EFC(v116, &qword_1EB6E4050, &unk_1B0EC2B20);
          v52 = v102;
          v91 = v103;
        }

        sub_1B0D3CE04(v91, type metadata accessor for ParameterValue);
        sub_1B0D3CE04(v104, type metadata accessor for ParameterValue);
        v49 = v126;
      }

      sub_1B0398EFC(v59, &qword_1EB6E6440, &unk_1B0EF3530);
      sub_1B0398EFC(v131, &qword_1EB6E6F58, &unk_1B0EF5150);
      v36 = v52;
      sub_1B0398EFC(v52, &qword_1EB6E6F58, &unk_1B0EF5150);
      v47 = v118;
    }

    else
    {
      sub_1B0D3CE04(v40, type metadata accessor for StoreModifier);
      sub_1B0D3CE04(v45, type metadata accessor for StoreModifier);
      v78 = v108;
      sub_1B0D3CD9C(v33, v108, type metadata accessor for StoreModifier);
      v79 = *v78;
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        goto LABEL_45;
      }

      v80 = *&v33[v55];
      v49 = v126;
      if ((v80 | v79) < 0)
      {
        goto LABEL_63;
      }

      if (v80 != v79)
      {
        goto LABEL_56;
      }
    }

    ++v47;
    sub_1B0D3CE04(v33, type metadata accessor for StoreModifier);
    v45 = v128;
    if (v47 == v49)
    {
      return 1;
    }
  }

  __break(1u);
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1B0D35B10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1B0E46A78();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0D35C20(uint64_t a1, uint64_t a2)
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

  v31 = v2;
  v32 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = v4 - 1;
  while (1)
  {
    v8 = v5[1];
    v27 = *v5;
    v28[0] = v8;
    *&v28[1] = *(v5 + 4);
    v9 = v27;
    v10 = DWORD2(v27);
    v11 = HIDWORD(v27);
    v12 = v8;
    v13 = WORD2(v8);
    v14 = BYTE6(v8);
    v15 = v6[1];
    v29 = *v6;
    *v30 = v15;
    *&v30[16] = *(v6 + 4);
    v16 = DWORD2(v29);
    if (HIDWORD(v27) - DWORD2(v27) != HIDWORD(v29) - DWORD2(v29))
    {
      break;
    }

    v24 = v5;
    v25 = v7;
    v17 = v29;
    v18 = *&v30[4];
    v19 = v30[6];
    if (v12 == *v30 && v13 == *&v30[4] && v14 == v30[6] && v27 == v29)
    {
      sub_1B0D3CE64(&v27, v26);
      sub_1B0D3CE64(&v29, v26);
    }

    else
    {
      swift_beginAccess();
      v20 = *(v9 + 24);
      swift_beginAccess();
      v21 = *(v17 + 24);
      sub_1B0D3CE64(&v27, v26);
      sub_1B0D3CE64(&v29, v26);
      if (memcmp((v20 + (v14 | (v13 << 8)) + v10), (v21 + (v19 | (v18 << 8)) + v16), v11 - v10))
      {
        sub_1B0D3CEC0(&v29);
        sub_1B0D3CEC0(&v27);
        return 0;
      }
    }

    if (*(v28 + 8) == *&v30[8])
    {
      sub_1B0D3CEC0(&v29);
      sub_1B0D3CEC0(&v27);
    }

    else
    {
      v22 = sub_1B0E46A78();
      sub_1B0D3CEC0(&v29);
      sub_1B0D3CEC0(&v27);
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    if (!v25)
    {
      return 1;
    }

    v7 = v25 - 1;
    v6 = (v6 + 40);
    v5 = (v24 + 40);
  }

  return 0;
}

uint64_t sub_1B0D35E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v11 = *(v4 - 2);
      v10 = *(v4 - 1);
      v12 = *v4 | ((*(v4 + 2) | (*(v4 + 6) << 16)) << 32);
      v13 = *v3 | ((*(v3 + 2) | (*(v3 + 6) << 16)) << 32);
      v15 = *(v3 - 2);
      v14 = *(v3 - 1);
      v16 = BYTE6(v12);
      if (v11 < 0)
      {
        if ((v15 & 0x8000000000000000) == 0 || HIDWORD(v10) - v10 != HIDWORD(v14) - v14)
        {
          return 0;
        }

        v21 = v11 & 0x7FFFFFFFFFFFFFFFLL;
        v22 = v15 & 0x7FFFFFFFFFFFFFFFLL;
        v23 = BYTE6(v13);
        *(v3 + 2);
        *(v3 + 6);
        *(v4 + 2);
        *(v4 + 6);
        if (*v4 != *v3 || ((*(v4 + 6), *(v3 + 6), *(v4 + 2) == *(v3 + 2)) ? (v24 = BYTE6(v12) == BYTE6(v13)) : (v24 = 0), v24 ? (v25 = v21 == v22) : (v25 = 0), !v25))
        {
          v26 = v10;
          v31 = HIDWORD(v13) & 0xFFFFFF;
          v33 = HIDWORD(v10);
          *(v4 + 6);
          v27 = *(v4 + 2);
          swift_beginAccess();
          v28 = *(v21 + 24) + v26;
          v7 = v33 - v26;
          swift_beginAccess();
          v8 = (*(v22 + 24) + (v23 & 0xFFFFFFFFFF0000FFLL | (v31 << 8)) + v14);
          v9 = (v28 + (v16 & 0xFFFFFFFFFF0000FFLL | (v27 << 8)));
LABEL_6:
          if (memcmp(v9, v8, v7))
          {
            return 0;
          }
        }
      }

      else
      {
        if (v15 < 0 || HIDWORD(v10) - v10 != HIDWORD(v14) - v14)
        {
          return 0;
        }

        v17 = HIDWORD(v13) & 0xFFFFFF;
        v18 = BYTE6(v13);
        *(v3 + 2);
        *(v3 + 6);
        *(v4 + 2);
        *(v4 + 6);
        if (*v4 != *v3 || ((*(v4 + 6), *(v3 + 6), *(v4 + 2) == *(v3 + 2)) ? (v19 = BYTE6(v12) == BYTE6(v13)) : (v19 = 0), v19 ? (v20 = v11 == v15) : (v20 = 0), !v20))
        {
          v5 = v10;
          v30 = HIDWORD(v12) & 0xFFFFFF;
          v32 = HIDWORD(v10);
          swift_beginAccess();
          v6 = *(v11 + 24) + v5;
          v7 = v32 - v5;
          swift_beginAccess();
          v8 = (*(v15 + 24) + (v18 & 0xFFFFFFFFFF0000FFLL | (v17 << 8)) + v14);
          v9 = (v6 + (v16 & 0xFFFFFFFFFF0000FFLL | (v30 << 8)));
          goto LABEL_6;
        }
      }

      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0D36050(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = *(v1 + 16);
  if (v3 != *(v2 + 16))
  {
    return 0;
  }

  if (!v3 || v1 == v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = v1 + 32;
  v6 = v2 + 32;
  v276 = *(v1 + 16);
  v277 = v2 + 32;
  v278 = v1 + 32;
  while (1)
  {
    v279 = v4;
    v7 = 184 * v4;
    v8 = v5 + v7;
    v9 = *(v5 + v7 + 144);
    v10 = *(v5 + v7 + 112);
    v399 = *(v5 + v7 + 128);
    v400 = v9;
    v11 = *(v5 + v7 + 144);
    v401 = *(v5 + v7 + 160);
    v12 = *(v5 + v7 + 80);
    v13 = *(v5 + v7 + 48);
    v395 = *(v5 + v7 + 64);
    v396 = v12;
    v14 = *(v5 + v7 + 80);
    v15 = *(v5 + v7 + 112);
    v397 = *(v5 + v7 + 96);
    v398 = v15;
    v16 = *(v5 + v7 + 16);
    v392[0] = *(v5 + v7);
    v392[1] = v16;
    v17 = *(v5 + v7 + 48);
    v19 = *(v5 + v7);
    v18 = *(v5 + v7 + 16);
    v393 = *(v5 + v7 + 32);
    v394 = v17;
    v20 = (v6 + v7);
    v21 = v20[9];
    v411 = v20[8];
    v412 = v21;
    v413 = v20[10];
    v22 = v20[5];
    v407 = v20[4];
    v408 = v22;
    v23 = v20[7];
    v409 = v20[6];
    v410 = v23;
    v24 = v20[1];
    v403 = *v20;
    v404 = v24;
    v25 = v20[3];
    v405 = v20[2];
    v406 = v25;
    v415[8] = v399;
    v415[9] = v11;
    v415[10] = *(v8 + 160);
    v415[4] = v395;
    v415[5] = v14;
    v415[6] = v397;
    v415[7] = v10;
    v415[0] = v19;
    v415[1] = v18;
    v402 = *(v8 + 176);
    v414 = *(v20 + 176);
    v416 = *(v8 + 176);
    v415[2] = v393;
    v415[3] = v13;
    if (sub_1B0717014(v415) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v415);
      v27 = v26;
      *&v370[128] = v411;
      *&v370[144] = v412;
      *&v370[160] = v413;
      v370[176] = v414;
      *&v370[64] = v407;
      *&v370[80] = v408;
      *&v370[96] = v409;
      *&v370[112] = v410;
      *v370 = v403;
      *&v370[16] = v404;
      *&v370[32] = v405;
      *&v370[48] = v406;
      if (sub_1B0717014(v370) != 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v370);
        return 0;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v370);
      v29 = v28;
      v30 = *v27;
      v31 = *v28;
      sub_1B07169CC(&v403, __dst);
      sub_1B07169CC(v392, __dst);
      if ((sub_1B0D36050(v30, v31, v32) & 1) == 0 || (v27[1] != v29[1] || v27[2] != v29[2]) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_230;
      }

      v33 = v27[3];
      v34 = v27[4];
      v35 = v27 + 3;
      v38 = v29[3];
      v37 = (v29 + 3);
      v36 = v38;
      v39 = v35[2];
      v40 = v35[4];
      v41 = v35[5];
      v348 = v35[3];
      v349 = v40;
      v350 = v41;
      v42 = v35[1];
      v347 = v39;
      v346 = v42;
      v43 = *(v37 + 8);
      v44 = *(v37 + 16);
      v45 = *(v37 + 32);
      v46 = *(v37 + 48);
      v47 = *(v37 + 64);
      v338 = *(v37 + 80);
      v337 = v47;
      v336 = v46;
      v334 = v44;
      v335 = v45;
      if (v34)
      {
        v48 = v35[2];
        v49 = v35[4];
        v50 = v35[5];
        v316 = v35[3];
        v317 = v49;
        v318 = v50;
        v314 = v35[1];
        v315 = v48;
        if (!v43)
        {
          goto LABEL_214;
        }

        *&v372 = v36;
        *(&v372 + 1) = v43;
        v373 = v334;
        v374 = v335;
        v375 = v336;
        v376 = v337;
        v377 = v338;
        v384 = v372;
        *v385 = v334;
        *&v385[64] = v338;
        *&v385[48] = v337;
        *&v385[32] = v336;
        *&v385[16] = v335;
        *&v326 = v33;
        *(&v326 + 1) = v34;
        *&v327[48] = v317;
        *&v327[64] = v318;
        *&v327[16] = v315;
        *&v327[32] = v316;
        *v327 = v314;
        v51 = *(v34 + 16);
        if (v51 != *(v43 + 16))
        {
          goto LABEL_208;
        }

        v52 = *v327;
        v53 = *v385;
        if (v51 && v43 != v34)
        {
          v54 = (v34 + 40);
          v55 = (v43 + 40);
          while (1)
          {
            v56 = *(v54 - 1) == *(v55 - 1) && *v54 == *v55;
            if (!v56 && (sub_1B0E46A78() & 1) == 0)
            {
              break;
            }

            v54 += 2;
            v55 += 2;
            if (!--v51)
            {
              goto LABEL_41;
            }
          }

LABEL_208:
          sub_1B03B5C80(v35, __dst, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(v37, __dst, &qword_1EB6E6F78, &qword_1B0EEEB20);
LABEL_209:
          sub_1B0398EFC(&v372, &qword_1EB6E6F78, &qword_1B0EEEB20);
LABEL_210:
          *__dst = v33;
          *&__dst[8] = v34;
          *&__dst[48] = v348;
          *&__dst[64] = v349;
          *&__dst[80] = v350;
          *&__dst[16] = v346;
          *&__dst[32] = v347;
          v248 = &qword_1EB6E6F78;
          v249 = &qword_1B0EEEB20;
LABEL_211:
          sub_1B0398EFC(__dst, v248, v249);
          goto LABEL_230;
        }

LABEL_41:
        v3 = v276;
        if ((sub_1B045202C(v52, v53) & 1) == 0)
        {
          goto LABEL_208;
        }

        v102 = *&v327[8];
        v103 = *&v327[16];
        v286 = *&v327[24];
        v287 = *&v327[40];
        v288 = *&v327[56];
        *&v289 = *&v327[72];
        if (*&v327[16] == 1)
        {
          if (*&v385[16] != 1)
          {
            goto LABEL_216;
          }

          *&v358 = *&v327[8];
          *(&v358 + 1) = 1;
          v359 = *&v327[24];
          v360 = *&v327[40];
          v361 = *&v327[56];
          *&v362 = *&v327[72];
          sub_1B03B5C80(v35, __dst, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(v37, __dst, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(&v327[8], __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
          sub_1B03B5C80(&v385[8], __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
          sub_1B0398EFC(&v358, &qword_1EB6E6F88, &qword_1B0EEEB30);
          sub_1B0398EFC(&v372, &qword_1EB6E6F78, &qword_1B0EEEB20);
        }

        else
        {
          if (*&v385[16] == 1)
          {
LABEL_216:
            *__dst = *&v327[8];
            *&__dst[16] = *&v327[24];
            *&__dst[32] = *&v327[40];
            *&__dst[48] = *&v327[56];
            *&__dst[64] = *&v327[72];
            *&__dst[72] = *&v385[8];
            *&__dst[88] = *&v385[24];
            *&__dst[104] = *&v385[40];
            *&__dst[120] = *&v385[56];
            *&__dst[136] = *&v385[72];
            sub_1B03B5C80(v35, &v358, &qword_1EB6E6F78, &qword_1B0EEEB20);
            sub_1B03B5C80(v37, &v358, &qword_1EB6E6F78, &qword_1B0EEEB20);
            sub_1B03B5C80(&v327[8], &v358, &qword_1EB6E6F88, &qword_1B0EEEB30);
            sub_1B03B5C80(&v385[8], &v358, &qword_1EB6E6F88, &qword_1B0EEEB30);
            sub_1B0398EFC(__dst, &qword_1EB6E6F90, &qword_1B0EEEB38);
            goto LABEL_209;
          }

          v302 = *&v385[8];
          v303 = *&v385[24];
          v304 = *&v385[40];
          v305 = *&v385[56];
          *&v306 = *&v385[72];
          v459 = *&v385[72];
          v458[2] = *&v385[40];
          v458[3] = *&v385[56];
          v458[0] = *&v385[8];
          v458[1] = *&v385[24];
          v457 = *&v327[72];
          v455 = *&v327[40];
          v456 = *&v327[56];
          v454 = *&v327[24];
          v453[0] = *&v327[8];
          v453[1] = *&v327[16];
          sub_1B03B5C80(v35, __dst, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(v37, __dst, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(&v327[8], __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
          sub_1B03B5C80(&v385[8], __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
          v112 = _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v453, v458);
          sub_1B0398EFC(&v302, &qword_1EB6E6F88, &qword_1B0EEEB30);
          *&v358 = v102;
          *(&v358 + 1) = v103;
          v359 = v286;
          v360 = v287;
          v361 = v288;
          *&v362 = v289;
          sub_1B0398EFC(&v358, &qword_1EB6E6F88, &qword_1B0EEEB30);
          sub_1B0398EFC(&v372, &qword_1EB6E6F78, &qword_1B0EEEB20);
          if (!v112)
          {
            goto LABEL_210;
          }
        }

        *__dst = v33;
        *&__dst[8] = v34;
        *&__dst[48] = v348;
        *&__dst[64] = v349;
        *&__dst[80] = v350;
        *&__dst[16] = v346;
        *&__dst[32] = v347;
      }

      else
      {
        if (v43)
        {
LABEL_214:
          *__dst = v33;
          *&__dst[8] = v34;
          *&__dst[48] = v348;
          *&__dst[64] = v349;
          *&__dst[80] = v350;
          *&__dst[16] = v346;
          *&__dst[32] = v347;
          *&__dst[96] = v36;
          *&__dst[104] = v43;
          *&__dst[160] = v337;
          *&__dst[176] = v338;
          *&__dst[128] = v335;
          *&__dst[144] = v336;
          *&__dst[112] = v334;
          sub_1B03B5C80(v35, &v326, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(v37, &v326, &qword_1EB6E6F78, &qword_1B0EEEB20);
          v248 = &qword_1EB6E6F80;
          v249 = &qword_1B0EEEB28;
          goto LABEL_211;
        }

        *__dst = v33;
        *&__dst[48] = v348;
        *&__dst[64] = v349;
        *&__dst[80] = v350;
        *&__dst[16] = v346;
        *&__dst[32] = v347;
        sub_1B03B5C80(v35, &v326, &qword_1EB6E6F78, &qword_1B0EEEB20);
        sub_1B03B5C80(v37, &v326, &qword_1EB6E6F78, &qword_1B0EEEB20);
      }

      sub_1B0398EFC(__dst, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B075E648(&v403);
      sub_1B075E648(v392);
      goto LABEL_203;
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v415);
    v58 = v57;
    v388 = v411;
    v389 = v412;
    v390 = v413;
    v391 = v414;
    *&v385[48] = v407;
    *&v385[64] = v408;
    v386 = v409;
    v387 = v410;
    v384 = v403;
    *v385 = v404;
    *&v385[16] = v405;
    *&v385[32] = v406;
    if (sub_1B0717014(&v384) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v384);
      return 0;
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v384);
    v60 = v59;
    v61 = *v58;
    v62 = *v59;
    v63 = *v58 >> 62;
    v274 = v58;
    v64 = *v59 >> 62;
    if (!v63)
    {
      if (v64)
      {
        return 0;
      }

      v104 = v59;
      v105 = *(v61 + 32);
      v106 = *(v61 + 40);
      v107 = *(v62 + 32);
      v108 = *(v62 + 40);
      if ((*(v61 + 16) != *(v62 + 16) || *(v61 + 24) != *(v62 + 24)) && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }

      if ((v105 != v107 || v106 != v108) && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }

      sub_1B07169CC(&v403, __dst);
      sub_1B07169CC(v392, __dst);
      v60 = v104;
      goto LABEL_142;
    }

    if (v63 == 1)
    {
      break;
    }

    if (v64 != 2)
    {
      return 0;
    }

    v109 = *((v61 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v110 = (v62 & 0x3FFFFFFFFFFFFFFFLL);
    v111 = v110[4];
    if ((*((v61 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != v110[2] || *((v61 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != v110[3]) && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }

    if (v109 != v111)
    {
      return 0;
    }

    sub_1B07169CC(&v403, __dst);
    sub_1B07169CC(v392, __dst);
LABEL_142:
    v206 = v58[2];
    v207 = v60[2];
    v208 = *(v206 + 16);
    if (v208 != *(v207 + 16))
    {
      goto LABEL_230;
    }

    v209 = v58[3];
    v210 = v58[5];
    v261 = v58[6];
    v211 = v58[7];
    v257 = v58[8];
    v271 = v58[9];
    v269 = v58[10];
    v212 = v60[3];
    v263 = v60[4];
    v265 = v58[4];
    v213 = v60[5];
    v259 = v60[6];
    v214 = v60[7];
    v255 = v60[8];
    v273 = v60[9];
    v215 = v60;
    v267 = v60[10];
    if (v208 && v206 != v207)
    {
      v216 = (v206 + 40);
      v217 = (v207 + 40);
      do
      {
        v218 = *(v216 - 1) == *(v217 - 1) && *v216 == *v217;
        if (!v218 && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_230;
        }

        v216 += 2;
        v217 += 2;
      }

      while (--v208);
    }

    v219 = *(v209 + 16);
    if (v219 != *(v212 + 16))
    {
      goto LABEL_230;
    }

    if (v219 && v209 != v212)
    {
      v220 = (v209 + 40);
      v221 = (v212 + 40);
      do
      {
        v222 = *(v220 - 1) == *(v221 - 1) && *v220 == *v221;
        if (!v222 && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_230;
        }

        v220 += 2;
        v221 += 2;
      }

      while (--v219);
    }

    if (v210)
    {
      if (!v213)
      {
        goto LABEL_230;
      }

      v223 = v215;
      if ((v265 != v263 || v210 != v213) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else
    {
      v223 = v215;
      if (v213)
      {
        goto LABEL_230;
      }
    }

    if (v211)
    {
      if (!v214 || (v261 != v259 || v211 != v214) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else if (v214)
    {
      goto LABEL_230;
    }

    if (v271)
    {
      v224 = v274;
      if (!v273 || (v257 != v255 || v271 != v273) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else
    {
      v224 = v274;
      if (v273)
      {
        goto LABEL_230;
      }
    }

    if (v269 != v267)
    {
      goto LABEL_230;
    }

    v225 = v224[11];
    v227 = v224[12];
    v226 = (v224 + 11);
    v228 = *(v226 + 64);
    v348 = *(v226 + 48);
    v349 = v228;
    *&v350 = *(v226 + 80);
    v229 = *(v226 + 16);
    v347 = *(v226 + 32);
    v346 = v229;
    v230 = v223[11];
    v231 = v223[12];
    v232 = (v223 + 11);
    v233 = *(v232 + 16);
    v234 = *(v232 + 32);
    v235 = *(v232 + 48);
    v236 = *(v232 + 64);
    *&v338 = *(v232 + 80);
    v337 = v236;
    v336 = v235;
    v334 = v233;
    v335 = v234;
    if (v227 != 1)
    {
      if (v231 == 1)
      {
LABEL_215:
        *__dst = v225;
        *&__dst[8] = v227;
        *&__dst[48] = v348;
        *&__dst[64] = v349;
        *&__dst[16] = v346;
        *&__dst[32] = v347;
        *&__dst[80] = v350;
        *&__dst[88] = v230;
        *&__dst[104] = v334;
        *&__dst[96] = v231;
        *&__dst[168] = v338;
        *&__dst[152] = v337;
        *&__dst[136] = v336;
        *&__dst[120] = v335;
        sub_1B03B5C80(v226, v370, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v232, v370, &qword_1EB6E6F98, &qword_1B0EEEB40);
        v248 = &qword_1EB6E6FA0;
        v249 = &qword_1B0EEEB48;
        goto LABEL_211;
      }

      *&v372 = v230;
      *(&v372 + 1) = v231;
      v239 = *(v232 + 32);
      v373 = *(v232 + 16);
      v374 = v239;
      v240 = *(v232 + 64);
      v375 = *(v232 + 48);
      v376 = v240;
      *&v377 = *(v232 + 80);
      v326 = v372;
      *v327 = v373;
      *&v327[64] = v377;
      *&v327[48] = v240;
      *&v327[16] = v374;
      *&v327[32] = v375;
      *v370 = v225;
      *&v370[8] = v227;
      v241 = *(v226 + 16);
      v242 = *(v226 + 32);
      v243 = *(v226 + 48);
      v244 = *(v226 + 64);
      *&v370[80] = *(v226 + 80);
      *&v370[48] = v243;
      *&v370[64] = v244;
      *&v370[16] = v241;
      *&v370[32] = v242;
      if (v227)
      {
        if (!v231 || (v225 != v326 || v227 != v231) && (sub_1B0E46A78() & 1) == 0)
        {
LABEL_217:
          sub_1B03B5C80(v226, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
          sub_1B03B5C80(v232, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
          v250 = &v372;
          goto LABEL_219;
        }
      }

      else if (v231)
      {
        goto LABEL_217;
      }

      v245 = *&v370[24];
      v302 = *&v370[32];
      v303 = *&v370[48];
      v304 = *&v370[64];
      *&v305 = *&v370[80];
      if (*&v370[24] == 1)
      {
        if (*&v327[8] != 1)
        {
          goto LABEL_218;
        }

        *&v358 = *&v370[16];
        *(&v358 + 1) = 1;
        v359 = *&v370[32];
        v360 = *&v370[48];
        v361 = *&v370[64];
        *&v362 = *&v370[80];
        sub_1B03B5C80(v226, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v232, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v226, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v232, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(&v370[16], __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
        sub_1B03B5C80(v327, __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
        sub_1B0398EFC(&v358, &qword_1EB6E6F88, &qword_1B0EEEB30);
        sub_1B0398EFC(&v372, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B0398EFC(v232, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B0398EFC(v226, &qword_1EB6E6F98, &qword_1B0EEEB40);
      }

      else
      {
        if (*&v327[8] == 1)
        {
LABEL_218:
          *&__dst[16] = *&v370[32];
          *&__dst[32] = *&v370[48];
          *&__dst[48] = *&v370[64];
          *&__dst[88] = *&v327[16];
          *__dst = *&v370[16];
          *&__dst[64] = *&v370[80];
          *&__dst[72] = *v327;
          *&__dst[104] = *&v327[32];
          *&__dst[120] = *&v327[48];
          *&__dst[136] = *&v327[64];
          sub_1B03B5C80(v226, &v358, &qword_1EB6E6F98, &qword_1B0EEEB40);
          sub_1B03B5C80(v232, &v358, &qword_1EB6E6F98, &qword_1B0EEEB40);
          sub_1B03B5C80(v226, &v358, &qword_1EB6E6F98, &qword_1B0EEEB40);
          sub_1B03B5C80(v232, &v358, &qword_1EB6E6F98, &qword_1B0EEEB40);
          sub_1B03B5C80(&v370[16], &v358, &qword_1EB6E6F88, &qword_1B0EEEB30);
          sub_1B03B5C80(v327, &v358, &qword_1EB6E6F88, &qword_1B0EEEB30);
          sub_1B0398EFC(__dst, &qword_1EB6E6F90, &qword_1B0EEEB38);
          sub_1B0398EFC(&v372, &qword_1EB6E6F98, &qword_1B0EEEB40);
          sub_1B0398EFC(v232, &qword_1EB6E6F98, &qword_1B0EEEB40);
          v250 = v226;
LABEL_219:
          sub_1B0398EFC(v250, &qword_1EB6E6F98, &qword_1B0EEEB40);
LABEL_220:
          *__dst = v225;
          *&__dst[8] = v227;
          *&__dst[48] = v348;
          *&__dst[64] = v349;
          *&__dst[80] = v350;
          *&__dst[16] = v346;
          *&__dst[32] = v347;
          v248 = &qword_1EB6E6F98;
          v249 = &qword_1B0EEEB40;
          goto LABEL_211;
        }

        v314 = *v327;
        v315 = *&v327[16];
        v316 = *&v327[32];
        v317 = *&v327[48];
        *&v318 = *&v327[64];
        v420 = *&v327[64];
        v419[3] = *&v327[48];
        v419[2] = *&v327[32];
        v419[0] = *v327;
        v419[1] = *&v327[16];
        v418 = *&v370[80];
        v417[2] = *&v370[48];
        v417[3] = *&v370[64];
        v417[1] = *&v370[32];
        v417[0] = *&v370[16];
        v275 = *&v370[16];
        sub_1B03B5C80(v226, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v232, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v226, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v232, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(&v370[16], __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
        sub_1B03B5C80(v327, __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
        v246 = _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v417, v419);
        sub_1B0398EFC(&v314, &qword_1EB6E6F88, &qword_1B0EEEB30);
        *&v358 = v275;
        *(&v358 + 1) = v245;
        v359 = v302;
        v360 = v303;
        v361 = v304;
        *&v362 = v305;
        sub_1B0398EFC(&v358, &qword_1EB6E6F88, &qword_1B0EEEB30);
        sub_1B0398EFC(&v372, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B0398EFC(v232, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B0398EFC(v226, &qword_1EB6E6F98, &qword_1B0EEEB40);
        if (!v246)
        {
          goto LABEL_220;
        }
      }

      *__dst = v225;
      *&__dst[8] = v227;
      *&__dst[48] = v348;
      *&__dst[64] = v349;
      *&__dst[80] = v350;
      *&__dst[16] = v346;
      *&__dst[32] = v347;
      sub_1B0398EFC(__dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B075E648(&v403);
      sub_1B075E648(v392);
      v3 = v276;
      goto LABEL_203;
    }

    if (v231 != 1)
    {
      goto LABEL_215;
    }

    *__dst = v225;
    *&__dst[8] = 1;
    v237 = *(v226 + 64);
    *&__dst[48] = *(v226 + 48);
    *&__dst[64] = v237;
    *&__dst[80] = *(v226 + 80);
    v238 = *(v226 + 32);
    *&__dst[16] = *(v226 + 16);
    *&__dst[32] = v238;
    sub_1B03B5C80(v226, v370, &qword_1EB6E6F98, &qword_1B0EEEB40);
    sub_1B03B5C80(v232, v370, &qword_1EB6E6F98, &qword_1B0EEEB40);
    sub_1B0398EFC(__dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
    sub_1B075E648(&v403);
    sub_1B075E648(v392);
    v3 = v276;
LABEL_203:
    v5 = v278;
    v4 = v279 + 1;
    v6 = v277;
    if (v279 + 1 == v3)
    {
      return 1;
    }
  }

  v65 = v61 & 0x3FFFFFFFFFFFFFFFLL;
  v66 = *(v65 + 16);
  v67 = *(v65 + 24);
  v68 = *(v65 + 112);
  v449[4] = *(v65 + 96);
  v449[5] = v68;
  v449[6] = *(v65 + 128);
  v69 = *(v65 + 144);
  v70 = *(v65 + 48);
  v449[0] = *(v65 + 32);
  v449[1] = v70;
  v71 = *(v65 + 80);
  v449[2] = *(v65 + 64);
  v449[3] = v71;
  v72 = *(v65 + 184);
  v375 = *(v65 + 200);
  v374 = v72;
  v73 = *(v65 + 152);
  v373 = *(v65 + 168);
  v372 = v73;
  v74 = *(v65 + 248);
  v75 = *(v65 + 280);
  v379 = *(v65 + 264);
  v378 = v74;
  v76 = *(v65 + 216);
  v377 = *(v65 + 232);
  v376 = v76;
  v77 = *(v65 + 296);
  v382 = *(v65 + 312);
  v450 = v69;
  v383 = *(v65 + 328);
  v381 = v77;
  v380 = v75;
  if (v64 != 1)
  {
    return 0;
  }

  v78 = *(v65 + 336);
  memcpy(__dst, ((v62 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
  if (__PAIR128__(v67, v66) != *__dst && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v451[4] = *&__dst[80];
  v451[5] = *&__dst[96];
  v451[6] = *&__dst[112];
  v452 = *&__dst[128];
  v451[0] = *&__dst[16];
  v451[1] = *&__dst[32];
  v451[2] = *&__dst[48];
  v451[3] = *&__dst[64];
  sub_1B07169CC(&v403, v370);
  sub_1B07169CC(v392, v370);
  sub_1B0C6700C(__dst, v370);
  if (!_s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v449, v451))
  {
    goto LABEL_229;
  }

  v366 = v380;
  v367 = v381;
  v368 = v382;
  v369 = v383;
  v362 = v376;
  v363 = v377;
  v364 = v378;
  v365 = v379;
  v358 = v372;
  v359 = v373;
  v360 = v374;
  v361 = v375;
  v253 = v60;
  if (sub_1B0717014(&v358) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v358);
    v80 = v79;
    v330 = *&__dst[264];
    v331 = *&__dst[280];
    v332 = *&__dst[296];
    LOBYTE(v333) = __dst[312];
    *&v327[48] = *&__dst[200];
    *&v327[64] = *&__dst[216];
    v328 = *&__dst[232];
    v329 = *&__dst[248];
    v326 = *&__dst[136];
    *v327 = *&__dst[152];
    *&v327[16] = *&__dst[168];
    *&v327[32] = *&__dst[184];
    if (sub_1B0717014(&v326) != 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v326);
      goto LABEL_229;
    }

    v81 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v326);
    v83 = v82;
    if ((sub_1B0D36050(*v80, *v82, v81) & 1) == 0 || (v80[1] != v83[1] || v80[2] != v83[2]) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_229;
    }

    v84 = v80[3];
    v86 = v80[4];
    v85 = v80 + 3;
    v89 = v83[3];
    v88 = (v83 + 3);
    v87 = v89;
    v90 = v85[2];
    v91 = v85[4];
    v92 = v85[5];
    v316 = v85[3];
    v317 = v91;
    v318 = v92;
    v314 = v85[1];
    v315 = v90;
    v93 = *(v88 + 8);
    v94 = *(v88 + 16);
    v95 = *(v88 + 32);
    v96 = *(v88 + 48);
    v97 = *(v88 + 80);
    v305 = *(v88 + 64);
    v306 = v97;
    v303 = v95;
    v304 = v96;
    v302 = v94;
    if (v86)
    {
      v98 = v85[2];
      v99 = v85[4];
      v100 = v85[5];
      v288 = v85[3];
      v289 = v99;
      v290 = v100;
      v286 = v85[1];
      v287 = v98;
      if (!v93)
      {
        goto LABEL_223;
      }

      *&v346 = v87;
      *(&v346 + 1) = v93;
      v349 = v304;
      v350 = v305;
      v347 = v302;
      v348 = v303;
      v351 = v306;
      v448[1] = v302;
      v448[0] = v346;
      v448[5] = v306;
      v448[4] = v305;
      v448[3] = v304;
      v448[2] = v303;
      v446 = v289;
      v447 = v290;
      v444 = v287;
      v445 = v288;
      v443 = v286;
      v442[0] = v84;
      v442[1] = v86;
      sub_1B03B5C80(v85, &v334, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B03B5C80(v88, &v334, &qword_1EB6E6F78, &qword_1B0EEEB20);
      v101 = _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v442, v448);
      sub_1B0398EFC(&v346, &qword_1EB6E6F78, &qword_1B0EEEB20);
      *v370 = v84;
      *&v370[8] = v86;
      *&v370[48] = v316;
      *&v370[64] = v317;
      *&v370[80] = v318;
      *&v370[16] = v314;
      *&v370[32] = v315;
      sub_1B0398EFC(v370, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B0C67068(__dst);
      if (!v101)
      {
        goto LABEL_230;
      }
    }

    else
    {
      if (v93)
      {
LABEL_223:
        *v370 = v84;
        *&v370[8] = v86;
        *&v370[48] = v316;
        *&v370[64] = v317;
        *&v370[80] = v318;
        *&v370[32] = v315;
        *&v370[16] = v314;
        *&v370[96] = v87;
        *&v370[104] = v93;
        *&v370[176] = v306;
        *&v370[160] = v305;
        *&v370[144] = v304;
        *&v370[112] = v302;
        *&v370[128] = v303;
        sub_1B03B5C80(v85, &v346, &qword_1EB6E6F78, &qword_1B0EEEB20);
        sub_1B03B5C80(v88, &v346, &qword_1EB6E6F78, &qword_1B0EEEB20);
        sub_1B0398EFC(v370, &qword_1EB6E6F80, &qword_1B0EEEB28);
        goto LABEL_229;
      }

      *v370 = v84;
      *&v370[48] = v316;
      *&v370[64] = v317;
      *&v370[80] = v318;
      *&v370[16] = v314;
      *&v370[32] = v315;
      sub_1B03B5C80(v85, &v346, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B03B5C80(v88, &v346, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B0398EFC(v370, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B0C67068(__dst);
    }

LABEL_141:
    v60 = v253;
    if (v78 != *&__dst[320])
    {
      goto LABEL_230;
    }

    goto LABEL_142;
  }

  v266 = v78;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v358);
  v114 = v113;
  v354 = *&__dst[264];
  v355 = *&__dst[280];
  v356 = *&__dst[296];
  v357 = __dst[312];
  v350 = *&__dst[200];
  v351 = *&__dst[216];
  v352 = *&__dst[232];
  v353 = *&__dst[248];
  v346 = *&__dst[136];
  v347 = *&__dst[152];
  v348 = *&__dst[168];
  v349 = *&__dst[184];
  if (sub_1B0717014(&v346) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v346);
    goto LABEL_229;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v346);
  v116 = v115;
  v117 = *v114;
  v118 = *v115;
  v119 = *v114 >> 62;
  if (v119)
  {
    if (v119 == 1)
    {
      v120 = v117 & 0x3FFFFFFFFFFFFFFFLL;
      v121 = *(v120 + 16);
      v122 = *(v120 + 24);
      v123 = *(v120 + 112);
      v438[4] = *(v120 + 96);
      v438[5] = v123;
      v438[6] = *(v120 + 128);
      v124 = *(v120 + 144);
      v125 = *(v120 + 48);
      v438[0] = *(v120 + 32);
      v438[1] = v125;
      v126 = *(v120 + 80);
      v438[2] = *(v120 + 64);
      v438[3] = v126;
      v127 = *(v120 + 184);
      v337 = *(v120 + 200);
      v336 = v127;
      v128 = *(v120 + 152);
      v335 = *(v120 + 168);
      v334 = v128;
      v129 = *(v120 + 248);
      v130 = *(v120 + 280);
      v341 = *(v120 + 264);
      v340 = v129;
      v131 = *(v120 + 216);
      v339 = *(v120 + 232);
      v338 = v131;
      v132 = *(v120 + 296);
      v344 = *(v120 + 312);
      v439 = v124;
      v345 = *(v120 + 328);
      v343 = v132;
      v342 = v130;
      if (v118 >> 62 != 1)
      {
        goto LABEL_229;
      }

      v133 = *(v120 + 336);
      memcpy(v370, ((v118 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(v370));
      if (__PAIR128__(v122, v121) != *v370 && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_229;
      }

      v440[4] = *&v370[80];
      v440[5] = *&v370[96];
      v440[6] = *&v370[112];
      v441 = *&v370[128];
      v440[0] = *&v370[16];
      v440[1] = *&v370[32];
      v440[2] = *&v370[48];
      v440[3] = *&v370[64];
      sub_1B0C6700C(v370, &v326);
      if (!_s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v438, v440))
      {
        goto LABEL_228;
      }

      v322 = v342;
      v323 = v343;
      v324 = v344;
      v325 = v345;
      v318 = v338;
      v319 = v339;
      v320 = v340;
      v321 = v341;
      v314 = v334;
      v315 = v335;
      v316 = v336;
      v317 = v337;
      if (sub_1B0717014(&v314) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v314);
        v135 = v134;
        v310 = *&v370[264];
        v311 = *&v370[280];
        v312 = *&v370[296];
        v313 = v370[312];
        v306 = *&v370[200];
        v307 = *&v370[216];
        v308 = *&v370[232];
        v309 = *&v370[248];
        v302 = *&v370[136];
        v303 = *&v370[152];
        v304 = *&v370[168];
        v305 = *&v370[184];
        if (sub_1B0717014(&v302) == 1)
        {
          v136 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v302);
          v138 = v137;
          if ((sub_1B0D36050(*v135, *v137, v136) & 1) == 0 || (v135[1] != v138[1] || v135[2] != v138[2]) && (sub_1B0E46A78() & 1) == 0)
          {
            goto LABEL_228;
          }

          v139 = v135[3];
          v141 = v135[4];
          v140 = v135 + 3;
          v142 = v138[3];
          v143 = v138[4];
          v144 = v138 + 3;
          v145 = v140[4];
          v299 = v140[3];
          v300 = v145;
          v301 = v140[5];
          v146 = v140[2];
          v297 = v140[1];
          v298 = v146;
          v147 = v144[1];
          v148 = v144[2];
          v149 = v144[5];
          v295 = v144[4];
          v296 = v149;
          v150 = v144[3];
          v293 = v148;
          v294 = v150;
          v292 = v147;
          if (v141)
          {
            v151 = v140[4];
            v283 = v140[3];
            v284 = v151;
            v285 = v140[5];
            v152 = v140[2];
            v281 = v140[1];
            v282 = v152;
            if (!v143)
            {
              goto LABEL_227;
            }

            *&v286 = v142;
            *(&v286 + 1) = v143;
            v289 = v294;
            v290 = v295;
            v287 = v292;
            v288 = v293;
            v291 = v296;
            v437[1] = v292;
            v437[0] = v286;
            v437[5] = v296;
            v437[4] = v295;
            v437[3] = v294;
            v437[2] = v293;
            v435 = v284;
            v436 = v285;
            v433 = v282;
            v434 = v283;
            v432 = v281;
            v431[0] = v139;
            v431[1] = v141;
            sub_1B03B5C80(v140, v280, &qword_1EB6E6F78, &qword_1B0EEEB20);
            sub_1B03B5C80(v144, v280, &qword_1EB6E6F78, &qword_1B0EEEB20);
            v153 = _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v431, v437);
            sub_1B0398EFC(&v286, &qword_1EB6E6F78, &qword_1B0EEEB20);
            *&v326 = v139;
            *(&v326 + 1) = v141;
            *&v327[32] = v299;
            *&v327[48] = v300;
            *&v327[64] = v301;
            *v327 = v297;
            *&v327[16] = v298;
            sub_1B0398EFC(&v326, &qword_1EB6E6F78, &qword_1B0EEEB20);
            goto LABEL_99;
          }

          if (!v143)
          {
            v326 = v139;
            *&v327[32] = v299;
            *&v327[48] = v300;
            *&v327[64] = v301;
            *v327 = v297;
            *&v327[16] = v298;
            sub_1B03B5C80(v140, &v286, &qword_1EB6E6F78, &qword_1B0EEEB20);
            sub_1B03B5C80(v144, &v286, &qword_1EB6E6F78, &qword_1B0EEEB20);
            sub_1B0398EFC(&v326, &qword_1EB6E6F78, &qword_1B0EEEB20);
            sub_1B0C67068(v370);
            goto LABEL_100;
          }

LABEL_227:
          *&v326 = v139;
          *(&v326 + 1) = v141;
          *&v327[48] = v300;
          *&v327[64] = v301;
          *&v327[16] = v298;
          *&v327[32] = v299;
          *v327 = v297;
          *&v328 = v142;
          *(&v328 + 1) = v143;
          v333 = v296;
          v332 = v295;
          v331 = v294;
          v329 = v292;
          v330 = v293;
          sub_1B03B5C80(v140, &v286, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(v144, &v286, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B0398EFC(&v326, &qword_1EB6E6F80, &qword_1B0EEEB28);
        }

        else
        {
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v302);
        }

LABEL_228:
        sub_1B0C67068(v370);
        goto LABEL_229;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v314);
      v163 = v162[9];
      v429[8] = v162[8];
      v429[9] = v163;
      v429[10] = v162[10];
      v164 = v162[5];
      v429[4] = v162[4];
      v429[5] = v164;
      v165 = v162[6];
      v429[7] = v162[7];
      v429[6] = v165;
      v166 = v162[1];
      v429[0] = *v162;
      v429[1] = v166;
      v167 = v162[2];
      v429[3] = v162[3];
      v429[2] = v167;
      LOBYTE(v333) = v370[312];
      v332 = *&v370[296];
      v331 = *&v370[280];
      v330 = *&v370[264];
      v329 = *&v370[248];
      v328 = *&v370[232];
      *&v327[64] = *&v370[216];
      *&v327[48] = *&v370[200];
      *&v327[16] = *&v370[168];
      *&v327[32] = *&v370[184];
      v326 = *&v370[136];
      *v327 = *&v370[152];
      if (sub_1B0717014(&v326) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v326);
        goto LABEL_228;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v326);
      v169 = v168[9];
      v430[8] = v168[8];
      v430[9] = v169;
      v430[10] = v168[10];
      v170 = v168[5];
      v430[4] = v168[4];
      v430[5] = v170;
      v171 = v168[6];
      v430[7] = v168[7];
      v430[6] = v171;
      v172 = v168[1];
      v430[0] = *v168;
      v430[1] = v172;
      v173 = v168[2];
      v430[3] = v168[3];
      v430[2] = v173;
      v153 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(v429, v430);
LABEL_99:
      sub_1B0C67068(v370);
      if ((v153 & 1) == 0)
      {
        goto LABEL_229;
      }

LABEL_100:
      if (v133 != *&v370[320])
      {
        goto LABEL_229;
      }
    }

    else
    {
      if (v118 >> 62 != 2)
      {
        goto LABEL_229;
      }

      v158 = (v117 & 0x3FFFFFFFFFFFFFFFLL);
      v159 = v158[4];
      v160 = (v118 & 0x3FFFFFFFFFFFFFFFLL);
      v161 = v160[4];
      if ((v158[2] != v160[2] || v158[3] != v160[3]) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_229;
      }

      if (v159 != v161)
      {
        goto LABEL_229;
      }
    }
  }

  else
  {
    if (v118 >> 62)
    {
      goto LABEL_229;
    }

    v154 = *(v117 + 32);
    v155 = *(v117 + 40);
    v156 = *(v118 + 32);
    v157 = *(v118 + 40);
    if ((*(v117 + 16) != *(v118 + 16) || *(v117 + 24) != *(v118 + 24)) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_229;
    }

    if ((v154 != v156 || v155 != v157) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_229;
    }
  }

  v174 = v114[2];
  v175 = v116[2];
  v176 = *(v174 + 16);
  if (v176 != *(v175 + 16))
  {
    goto LABEL_229;
  }

  v177 = v114[3];
  v178 = v114[5];
  v256 = v114[6];
  v272 = v114[7];
  v252 = v114[8];
  v270 = v114[9];
  v260 = v114[10];
  v179 = v116[3];
  v262 = v116[4];
  v264 = v114[4];
  v180 = v116[5];
  v254 = v116[6];
  v181 = v116[7];
  v251 = v116[8];
  v268 = v116[9];
  v258 = v116[10];
  if (!v176 || v174 == v175)
  {
LABEL_112:
    if ((sub_1B045202C(v177, v179) & 1) == 0)
    {
      goto LABEL_229;
    }

    if (v178)
    {
      if (!v180 || (v264 != v262 || v178 != v180) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_229;
      }
    }

    else if (v180)
    {
      goto LABEL_229;
    }

    if (v272)
    {
      if (!v181 || (v256 != v254 || v272 != v181) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_229;
      }
    }

    else if (v181)
    {
      goto LABEL_229;
    }

    if (v270)
    {
      if (!v268 || (v252 != v251 || v270 != v268) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_229;
      }
    }

    else if (v268)
    {
      goto LABEL_229;
    }

    if (v260 != v258)
    {
      goto LABEL_229;
    }

    v185 = v114[11];
    v186 = v114[12];
    v187 = (v114 + 11);
    v188 = v116[11];
    v189 = v116[12];
    v190 = (v116 + 11);
    v191 = *(v187 + 64);
    v316 = *(v187 + 48);
    v317 = v191;
    *&v318 = *(v187 + 80);
    v192 = *(v187 + 32);
    v314 = *(v187 + 16);
    v315 = v192;
    v193 = *(v190 + 16);
    v194 = *(v190 + 32);
    v195 = *(v190 + 48);
    v196 = *(v190 + 64);
    *&v306 = *(v190 + 80);
    v304 = v195;
    v305 = v196;
    v302 = v193;
    v303 = v194;
    if (v186 == 1)
    {
      v58 = v274;
      if (v189 != 1)
      {
        goto LABEL_224;
      }

      *v370 = v185;
      *&v370[8] = 1;
      v197 = *(v187 + 64);
      *&v370[48] = *(v187 + 48);
      *&v370[64] = v197;
      *&v370[80] = *(v187 + 80);
      v198 = *(v187 + 32);
      *&v370[16] = *(v187 + 16);
      *&v370[32] = v198;
      sub_1B03B5C80(v190, &v326, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B03B5C80(v187, &v326, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B0398EFC(v370, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B0C67068(__dst);
    }

    else
    {
      v58 = v274;
      if (v189 == 1)
      {
LABEL_224:
        sub_1B03B5C80(v190, v370, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v187, v370, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B0C67068(__dst);
        *v370 = v185;
        *&v370[8] = v186;
        *&v370[48] = v316;
        *&v370[64] = v317;
        *&v370[32] = v315;
        *&v370[16] = v314;
        *&v370[80] = v318;
        *&v370[88] = v188;
        *&v370[104] = v302;
        *&v370[96] = v189;
        *&v370[168] = v306;
        *&v370[152] = v305;
        *&v370[136] = v304;
        *&v370[120] = v303;
        sub_1B0398EFC(v370, &qword_1EB6E6FA0, &qword_1B0EEEB48);
        goto LABEL_230;
      }

      *&v326 = v188;
      *(&v326 + 1) = v189;
      v199 = *(v190 + 64);
      *&v327[32] = *(v190 + 48);
      *&v327[48] = v199;
      v200 = *(v190 + 32);
      *v327 = *(v190 + 16);
      *&v327[16] = v200;
      *&v327[64] = *(v190 + 80);
      v427[1] = *v327;
      v427[0] = v326;
      v428 = *&v327[64];
      v427[4] = v199;
      v427[3] = *&v327[32];
      v427[2] = v200;
      v201 = *(v187 + 16);
      v202 = *(v187 + 32);
      v203 = *(v187 + 48);
      v204 = *(v187 + 64);
      v426 = *(v187 + 80);
      v424 = v203;
      v425 = v204;
      v422 = v201;
      v423 = v202;
      v421[0] = v185;
      v421[1] = v186;
      sub_1B03B5C80(v190, &v334, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B03B5C80(v190, &v334, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B03B5C80(v187, &v334, &qword_1EB6E6F98, &qword_1B0EEEB40);
      v205 = _s12NIOIMAPCore213BodyStructureO10SinglepartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v421, v427);
      sub_1B0398EFC(&v326, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B0398EFC(v190, &qword_1EB6E6F98, &qword_1B0EEEB40);
      *v370 = v185;
      *&v370[8] = v186;
      *&v370[48] = v316;
      *&v370[64] = v317;
      *&v370[80] = v318;
      *&v370[16] = v314;
      *&v370[32] = v315;
      sub_1B0398EFC(v370, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B0C67068(__dst);
      if (!v205)
      {
        goto LABEL_230;
      }
    }

    v78 = v266;
    goto LABEL_141;
  }

  v182 = (v174 + 40);
  v183 = (v175 + 40);
  while (1)
  {
    v184 = *(v182 - 1) == *(v183 - 1) && *v182 == *v183;
    if (!v184 && (sub_1B0E46A78() & 1) == 0)
    {
      break;
    }

    v182 += 2;
    v183 += 2;
    if (!--v176)
    {
      goto LABEL_112;
    }
  }

LABEL_229:
  sub_1B0C67068(__dst);
LABEL_230:
  sub_1B075E648(&v403);
  sub_1B075E648(v392);
  return 0;
}

uint64_t sub_1B0D38528(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 55);
  for (i = (a2 + 55); ; i += 24)
  {
    v6 = *(v3 - 23);
    v7 = *(i - 23);
    v5 = *i;
    if (*v3)
    {
      if (v6 != v7)
      {
        v5 = 0;
      }

      if ((v5 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (*i)
    {
      return 0;
    }

    v8 = *(i - 15);
    v9 = *(i - 7) | ((*(i - 3) | (*(i - 1) << 16)) << 32);
    if (v6)
    {
      break;
    }

    if (v7)
    {
      goto LABEL_28;
    }

    sub_1B0D3CB74(0, v8, v9, 0);
LABEL_8:
    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  v10 = *(v3 - 15);
  v11 = *(v3 - 7) | ((*(v3 - 3) | (*(v3 - 1) << 16)) << 32);
  if (v7)
  {
    if (HIDWORD(v10) - v10 != HIDWORD(v8) - v8)
    {
      return 0;
    }

    v12 = BYTE6(v9);
    *(i - 3);
    *(i - 1);
    *(v3 - 3);
    *(v3 - 1);
    if (*(v3 - 7) != *(i - 7) || ((*(i - 1), *(v3 - 1), *(v3 - 3) == *(i - 3)) ? (v13 = BYTE6(v11) == BYTE6(v9)) : (v13 = 0), v13 ? (v14 = v6 == v7) : (v14 = 0), !v14))
    {
      v20 = HIDWORD(v9) & 0xFFFFFF;
      v21 = *(i - 15);
      swift_beginAccess();
      v15 = BYTE6(v11) | (WORD2(v11) << 8);
      v16 = *(v6 + 24) + v10;
      swift_beginAccess();
      if (memcmp((v16 + v15), (*(v7 + 24) + (v12 & 0xFFFFFFFFFF0000FFLL | (v20 << 8)) + v21), HIDWORD(v10) - v10))
      {
        return 0;
      }
    }

    goto LABEL_8;
  }

  v18 = *(i - 15);
  v19 = *(i - 7) | ((*(i - 3) | (*(i - 1) << 16)) << 32);
  sub_1B0D3CB74(0, v8, v9, 0);
  sub_1B0D3CB74(v6, v10, v11, 0);
  v8 = v18;
  v9 = v19;
  v7 = 0;
LABEL_28:
  sub_1B0D3CB74(v7, v8, v9, 0);

  return 0;
}

uint64_t sub_1B0D38730(uint64_t a1, uint64_t a2)
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
    v55 = a1 + 32;
    v56 = *(a1 + 16);
    v54 = a2 + 32;
    while (1)
    {
      v62 = v3;
      v6 = v3 << 6;
      v7 = (v4 + (v3 << 6));
      v8 = v7[1];
      v68 = *v7;
      *v69 = v8;
      v9 = v7[3];
      *&v69[16] = v7[2];
      v70 = v9;
      v10 = v68;
      v11 = DWORD2(v68);
      v12 = HIDWORD(v68);
      v13 = *&v69[4];
      v14 = v69[6];
      v15 = (v5 + v6);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[3];
      *&v72[16] = v15[2];
      v73 = v18;
      v71 = v16;
      *v72 = v17;
      v19 = DWORD2(v16);
      if (HIDWORD(v68) - DWORD2(v68) != HIDWORD(v16) - DWORD2(v16))
      {
        break;
      }

      v20 = v71;
      v21 = *&v72[4];
      v22 = v72[6];
      if (*v69 == *v72 && *&v69[4] == *&v72[4] && v69[6] == v72[6] && v68 == v71)
      {
        sub_1B0D3CB18(&v68, v67);
        sub_1B0D3CB18(&v71, v67);
      }

      else
      {
        swift_beginAccess();
        v23 = *(v10 + 24);
        v24 = (v14 | (v13 << 8)) + v11;
        v25 = v12 - v11;
        swift_beginAccess();
        v26 = *(v20 + 24);
        sub_1B0D3CB18(&v68, v67);
        sub_1B0D3CB18(&v71, v67);
        if (memcmp((v23 + v24), (v26 + (v22 | (v21 << 8)) + v19), v25))
        {
          goto LABEL_50;
        }
      }

      if (*&v69[16])
      {
        if (!*&v72[16] || *&v69[8] != *&v72[8] && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (*&v72[16])
      {
        goto LABEL_50;
      }

      v27 = *(&v70 + 1);
      v28 = *(&v73 + 1);
      result = sub_1B0D3A070(v70, v73);
      if ((result & 1) == 0)
      {
        goto LABEL_50;
      }

      v30 = *(v27 + 16);
      if (v30 != *(v28 + 16))
      {
        goto LABEL_50;
      }

      if (v30 && v27 != v28)
      {
        v31 = 0;
        v60 = v28 + 32;
        v61 = v27 + 32;
        v58 = v28;
        v59 = v27;
        v57 = *(v27 + 16);
        while (1)
        {
          if (v31 >= *(v27 + 16))
          {
            __break(1u);
LABEL_53:
            __break(1u);
            return result;
          }

          if (v31 >= *(v28 + 16))
          {
            goto LABEL_53;
          }

          v32 = *(v61 + 8 * v31);
          v33 = *(v60 + 8 * v31);
          v34 = *(v32 + 16);
          if (v34 != *(v33 + 16))
          {
            goto LABEL_50;
          }

          v63 = v31;
          if (v34 && v32 != v33)
          {
            break;
          }

LABEL_23:
          v31 = v63 + 1;
          v28 = v58;
          v27 = v59;
          if (v63 + 1 == v57)
          {
            goto LABEL_47;
          }
        }

        v37 = *(v32 + 40);
        v36 = *(v32 + 44);
        v38 = *(v33 + 40);
        if (v36 - v37 == *(v33 + 44) - v38)
        {
          v39 = 0;
          v64 = *(v60 + 8 * v31);
          v65 = *(v61 + 8 * v31);
          do
          {
            v40 = *(v32 + v39 + 54);
            v41 = *(v32 + v39 + 52);
            v42 = *(v32 + v39 + 32);
            v43 = *(v33 + v39 + 54);
            v44 = *(v33 + v39 + 52);
            v45 = *(v33 + v39 + 32);
            if (*(v32 + v39 + 48) != *(v33 + v39 + 48) || v41 != v44 || v40 != v43 || v42 != v45)
            {
              v49 = v37;
              v66 = v36;
              swift_beginAccess();
              v50 = *(v42 + 24) + (v40 | (v41 << 8));
              swift_beginAccess();
              result = memcmp((v50 + v49), (*(v45 + 24) + (v43 | (v44 << 8)) + v38), v66 - v49);
              v33 = v64;
              v32 = v65;
              if (result)
              {
                break;
              }
            }

            if (!--v34)
            {
              goto LABEL_23;
            }

            v51 = v32 + v39;
            v52 = v33 + v39;
            v39 += 24;
            v53 = v51 + 64;
            v37 = *(v51 + 64);
            v36 = *(v53 + 4);
            v38 = *(v52 + 64);
          }

          while (v36 - v37 == *(v52 + 68) - v38);
        }

LABEL_50:
        sub_1B0CF98D4(&v71);
        sub_1B0CF98D4(&v68);
        return 0;
      }

LABEL_47:
      sub_1B0CF98D4(&v71);
      sub_1B0CF98D4(&v68);
      if (v62 + 1 == v56)
      {
        return 1;
      }

      v3 = v62 + 1;
      v5 = v54;
      v4 = v55;
    }
  }

  return 0;
}

uint64_t sub_1B0D38AE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1);
        v7 = *(v4 - 1);
        v8 = sub_1B0E44BB8();
        v10 = v9;
        if (v8 == sub_1B0E44BB8() && v10 == v11)
        {
        }

        else
        {
          v13 = sub_1B0E46A78();

          if ((v13 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0D38BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 10)
    {
      v6 = *(i - 2);
      v5 = *(i - 1);
      v7 = *(i + 6);
      v8 = *(i + 2);
      v9 = *i;
      v11 = *(v3 - 2);
      v10 = *(v3 - 1);
      v12 = *(v3 + 6);
      v13 = *(v3 + 2);
      v14 = *v3;
      if (*(i - 4) != *(v3 - 4) || *(i - 3) != *(v3 - 3))
      {
        v31 = *(v3 + 2);
        v15 = *(v3 - 2);
        v33 = *(i - 2);
        v16 = *(i - 1);
        v17 = *(v3 + 6);
        v30 = *(v3 - 1);
        v18 = sub_1B0E46A78();
        v10 = v30;
        v13 = v31;
        v12 = v17;
        v5 = v16;
        v6 = v33;
        v11 = v15;
        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      if (v6)
      {
        if (!v11)
        {
          return 0;
        }

        v19 = HIDWORD(v5);
        if (HIDWORD(v5) - v5 != HIDWORD(v10) - v10)
        {
          return 0;
        }

        v20 = v10;
        v21 = v9 | ((v8 | (v7 << 16)) << 32);
        v22 = v14 | ((v13 | (v12 << 16)) << 32);
        v23 = BYTE6(v22);
        v24 = HIDWORD(v21) & 0xFFFFFF;
        v25 = BYTE6(v21);
        if (v21 != v14 || WORD2(v21) != WORD2(v22) || BYTE6(v21) != BYTE6(v22) || v6 != v11)
        {
          v26 = v5;
          v32 = v11;
          v34 = HIDWORD(v22) & 0xFFFFFF;
          swift_beginAccess();
          v27 = v25 & 0xFFFFFFFFFF0000FFLL | (v24 << 8);
          v28 = *(v6 + 24) + v26;
          swift_beginAccess();
          if (memcmp((v28 + v27), (*(v32 + 24) + (v23 & 0xFFFFFFFFFF0000FFLL | (v34 << 8)) + v20), v19 - v26))
          {
            return 0;
          }
        }
      }

      else if (v11)
      {
        return 0;
      }

      v3 += 10;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B0D38DC8(uint64_t a1, uint64_t a2)
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
  v7 = v4 - 1;
  while (1)
  {
    v8 = v5[1];
    v40 = *v5;
    *v41 = v8;
    *&v41[15] = *(v5 + 31);
    v9 = v40;
    v10 = DWORD2(v40);
    v11 = HIDWORD(v40);
    v12 = v8;
    v13 = WORD2(v8);
    v14 = BYTE6(v8);
    v15 = v6[1];
    v42 = *v6;
    *v43 = v15;
    *&v43[15] = *(v6 + 31);
    v16 = DWORD2(v42);
    if (HIDWORD(v40) - DWORD2(v40) != HIDWORD(v42) - DWORD2(v42))
    {
      return 0;
    }

    v37 = v5;
    v38 = v7;
    v17 = v42;
    v18 = *&v43[4];
    v19 = v43[6];
    if (v12 == *v43 && v13 == *&v43[4] && v14 == v43[6] && v40 == v42)
    {
      sub_1B0D3C908(&v40, v39);
      sub_1B0D3C908(&v42, v39);
    }

    else
    {
      swift_beginAccess();
      v20 = *(v9 + 24);
      swift_beginAccess();
      v21 = *(v17 + 24);
      sub_1B0D3C908(&v40, v39);
      sub_1B0D3C908(&v42, v39);
      if (memcmp((v20 + (v14 | (v13 << 8)) + v10), (v21 + (v19 | (v18 << 8)) + v16), v11 - v10))
      {
        goto LABEL_27;
      }
    }

    v22 = *&v41[8];
    v23 = *&v43[8];
    if (!*&v41[8])
    {
      if (*&v43[8])
      {
        goto LABEL_27;
      }

LABEL_22:
      sub_1B0D3C964(&v42);
      sub_1B0D3C964(&v40);
      goto LABEL_23;
    }

    if (!*&v43[8] || (v24 = *&v43[16], v25 = HIDWORD(*&v41[16]), *&v41[20] - *&v41[16] != *&v43[20] - *&v43[16]))
    {
LABEL_27:
      sub_1B0D3C964(&v42);
      sub_1B0D3C964(&v40);
      return 0;
    }

    v26 = *&v41[24] | ((*&v41[28] | (v41[30] << 16)) << 32);
    v27 = *&v43[24] | ((*&v43[28] | (v43[30] << 16)) << 32);
    v28 = HIDWORD(v27) & 0xFFFFFF;
    v29 = BYTE6(v27);
    v30 = HIDWORD(v26) & 0xFFFFFF;
    v31 = BYTE6(v26);
    if (*&v41[24] == *&v43[24] && *&v41[28] == *&v43[28] && BYTE6(v26) == BYTE6(v27) && *&v41[8] == *&v43[8])
    {
      goto LABEL_22;
    }

    v32 = *&v41[16];
    swift_beginAccess();
    v33 = v31 & 0xFFFFFFFFFF0000FFLL | (v30 << 8);
    v34 = *(v22 + 24) + v32;
    swift_beginAccess();
    v35 = memcmp((v34 + v33), (*(v23 + 24) + (v29 & 0xFFFFFFFFFF0000FFLL | (v28 << 8)) + v24), v25 - v32);
    sub_1B0D3C964(&v42);
    sub_1B0D3C964(&v40);
    if (v35)
    {
      return 0;
    }

LABEL_23:
    if (!v38)
    {
      return 1;
    }

    v7 = v38 - 1;
    v6 += 3;
    v5 = v37 + 3;
  }
}

uint64_t sub_1B0D390A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (v3 && a1 != a2)
  {
    v5 = (a1 + 40);
    v6 = (a2 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = a3(*(v5 - 1), *v5);
      v11 = v10;
      if (v9 == a3(v7, v8) && v11 == v12)
      {
      }

      else
      {
        v14 = sub_1B0E46A78();

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      v5 += 2;
      v6 += 2;
      --v3;
    }

    while (v3);
  }

  return 1;
}

uint64_t AppendOptions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  MEMORY[0x1B2728D70](v5);
  if (v5)
  {
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      sub_1B0E44BB8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  if (v2[2])
  {
    sub_1B0E46C68();
  }

  else
  {
    v9 = v2[1];
    sub_1B0E46C68();
    MEMORY[0x1B2728DB0](v9);
  }

  v10 = v2[4];
  v11 = v2[5];

  return sub_1B0D3C0FC(a1, v10, v11);
}

uint64_t AppendOptions.hashValue.getter()
{
  sub_1B0E46C28();
  AppendOptions.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D392B8()
{
  sub_1B0E46C28();
  AppendOptions.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D392FC()
{
  sub_1B0E46C28();
  AppendOptions.hash(into:)(v1);
  return sub_1B0E46CB8();
}

BOOL sub_1B0D39338(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  if ((sub_1B0D390A0(*a1, *a2, MEMORY[0x1E69E6088]) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v6)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return (sub_1B045202C(v5, v9) & 1) != 0 && (sub_1B0D3A338(v4, v8) & 1) != 0;
}

void sub_1B0D393EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v76 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F10, &qword_1B0EEEAD0);
  v9 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v82 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v76 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F18, &qword_1B0EEEAD8);
  v16 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v18 = &v76 - v17;
  v95 = type metadata accessor for ParameterValue();
  v19 = *(v95 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v85 = (&v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v89 = &v76 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v93 = &v76 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v94 = &v76 - v29;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F20, &unk_1B0EF5F80);
  v30 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v32 = &v76 - v31;
  v33 = *(a1 + 16);
  if (v33 == *(a2 + 16) && v33 && a1 != a2)
  {
    v76 = v8;
    v34 = 0;
    v35 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v91 = a2 + v35;
    v92 = a1 + v35;
    v36 = (v19 + 48);
    v77 = (v5 + 48);
    v78 = v4;
    v37 = *(v27 + 72);
    v79 = v37;
    v80 = v36;
    v88 = v33;
    v81 = v32;
    while (v34 != v33)
    {
      v39 = v18;
      v40 = *(v96 + 48);
      sub_1B03B5C80(v92 + v37 * v34, v32, &qword_1EB6E6440, &unk_1B0EF3530);
      sub_1B03B5C80(v91 + v37 * v34, &v32[v40], &qword_1EB6E6440, &unk_1B0EF3530);
      v41 = *v36;
      v42 = v32;
      v43 = v32;
      v44 = v95;
      if ((*v36)(v42, 1, v95) == 1)
      {
        v38 = v41((v43 + v40), 1, v44);
        v32 = v43;
        if (v38 != 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v86 = v34;
        v45 = v94;
        sub_1B03B5C80(v43, v94, &qword_1EB6E6440, &unk_1B0EF3530);
        if (v41((v43 + v40), 1, v44) == 1)
        {
          sub_1B0D3CE04(v45, type metadata accessor for ParameterValue);
          v32 = v43;
LABEL_35:
          v72 = &qword_1EB6E6F20;
          v73 = &unk_1B0EF5F80;
          goto LABEL_44;
        }

        v46 = v93;
        sub_1B0D3CD34(v43 + v40, v93, type metadata accessor for ParameterValue);
        v47 = *(v90 + 48);
        sub_1B0D3CD9C(v45, v18, type metadata accessor for ParameterValue);
        sub_1B0D3CD9C(v46, &v18[v47], type metadata accessor for ParameterValue);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v48 = v85;
          sub_1B0D3CD9C(v18, v85, type metadata accessor for ParameterValue);
          v49 = *v48;
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v34 = v86;
          if (EnumCaseMultiPayload != 1)
          {

            sub_1B0D3CE04(v93, type metadata accessor for ParameterValue);
            v56 = v94;
            goto LABEL_38;
          }

          v51 = *&v18[v47];
          v52 = *(v49 + 16);
          v32 = v81;
          if (v52 != *(v51 + 16))
          {
            goto LABEL_33;
          }

          if (v52 && v49 != v51)
          {
            v53 = (v49 + 40);
            v54 = (v51 + 40);
            while (1)
            {
              v55 = *(v53 - 1) == *(v54 - 1) && *v53 == *v54;
              if (!v55 && (sub_1B0E46A78() & 1) == 0)
              {
                break;
              }

              v53 += 2;
              v54 += 2;
              if (!--v52)
              {
                goto LABEL_27;
              }
            }

LABEL_33:
            sub_1B0D3CE04(v93, type metadata accessor for ParameterValue);

            sub_1B0D3CE04(v39, type metadata accessor for ParameterValue);
            v56 = v94;
LABEL_43:
            sub_1B0D3CE04(v56, type metadata accessor for ParameterValue);
            v72 = &qword_1EB6E6440;
            v73 = &unk_1B0EF3530;
LABEL_44:
            sub_1B0398EFC(v32, v72, v73);
            return;
          }

LABEL_27:
          sub_1B0D3CE04(v93, type metadata accessor for ParameterValue);

          v18 = v39;
        }

        else
        {
          v56 = v45;
          v57 = v89;
          sub_1B0D3CD9C(v18, v89, type metadata accessor for ParameterValue);
          v58 = swift_getEnumCaseMultiPayload();
          v34 = v86;
          v59 = v87;
          if (v58 == 1)
          {
            sub_1B0D3CE04(v93, type metadata accessor for ParameterValue);
            sub_1B0398EFC(v57, &qword_1EB6E4050, &unk_1B0EC2B20);
LABEL_38:
            v32 = v81;
            sub_1B0398EFC(v18, &qword_1EB6E6F18, &qword_1B0EEEAD8);
            goto LABEL_43;
          }

          sub_1B03C60A4(&v18[v47], v87, &qword_1EB6E4050, &unk_1B0EC2B20);
          v60 = v84;
          v61 = *(v83 + 48);
          sub_1B03B5C80(v57, v84, &qword_1EB6E4050, &unk_1B0EC2B20);
          sub_1B03B5C80(v59, v60 + v61, &qword_1EB6E4050, &unk_1B0EC2B20);
          v62 = v59;
          v63 = v78;
          v64 = *v77;
          v65 = (*v77)(v60, 1, v78);
          v32 = v81;
          if (v65 == 1)
          {
            sub_1B0398EFC(v62, &qword_1EB6E4050, &unk_1B0EC2B20);
            sub_1B0D3CE04(v93, type metadata accessor for ParameterValue);
            v66 = v64(v60 + v61, 1, v63);
            v67 = v89;
            if (v66 != 1)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v68 = v82;
            sub_1B03B5C80(v60, v82, &qword_1EB6E4050, &unk_1B0EC2B20);
            if (v64(v60 + v61, 1, v63) == 1)
            {
              sub_1B0398EFC(v87, &qword_1EB6E4050, &unk_1B0EC2B20);
              sub_1B0D3CE04(v93, type metadata accessor for ParameterValue);
              sub_1B0398EFC(v68, &qword_1EB6E4040, &qword_1B0EC2B10);
              v67 = v89;
LABEL_40:
              v74 = &qword_1EB6E6F10;
              v75 = &qword_1B0EEEAD0;
              goto LABEL_42;
            }

            v69 = v76;
            sub_1B03C60A4(v60 + v61, v76, &qword_1EB6E4040, &qword_1B0EC2B10);
            sub_1B03D06F8();
            v70 = sub_1B0E46E08();
            sub_1B0398EFC(v69, &qword_1EB6E4040, &qword_1B0EC2B10);
            sub_1B0398EFC(v87, &qword_1EB6E4050, &unk_1B0EC2B20);
            sub_1B0D3CE04(v93, type metadata accessor for ParameterValue);
            sub_1B0398EFC(v68, &qword_1EB6E4040, &qword_1B0EC2B10);
            v67 = v89;
            if ((v70 & 1) == 0)
            {
              v74 = &qword_1EB6E4050;
              v75 = &unk_1B0EC2B20;
LABEL_42:
              sub_1B0398EFC(v60, v74, v75);
              v56 = v94;
              sub_1B0398EFC(v67, &qword_1EB6E4050, &unk_1B0EC2B20);
              sub_1B0D3CE04(v18, type metadata accessor for ParameterValue);
              goto LABEL_43;
            }
          }

          sub_1B0398EFC(v60, &qword_1EB6E4050, &unk_1B0EC2B20);
          sub_1B0398EFC(v67, &qword_1EB6E4050, &unk_1B0EC2B20);
        }

        v71 = v94;
        sub_1B0D3CE04(v18, type metadata accessor for ParameterValue);
        sub_1B0D3CE04(v71, type metadata accessor for ParameterValue);
        v37 = v79;
        v36 = v80;
      }

      ++v34;
      sub_1B0398EFC(v32, &qword_1EB6E6440, &unk_1B0EF3530);
      v33 = v88;
      if (v34 == v88)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B0D39EA8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v28 = a2 + 32;
    v29 = result + 32;
    v27 = *(result + 16);
    while (1)
    {
      if (v3 == v2)
      {
        __break(1u);
        return result;
      }

      v4 = *(v29 + 8 * v3);
      v5 = *(v28 + 8 * v3);
      v6 = *(v4 + 16);
      if (v6 != *(v5 + 16))
      {
        return 0;
      }

      v30 = v3;
      if (v6 && v4 != v5)
      {
        break;
      }

LABEL_5:
      v3 = v30 + 1;
      result = 1;
      v2 = v27;
      if (v30 + 1 == v27)
      {
        return result;
      }
    }

    v9 = *(v4 + 40);
    v8 = *(v4 + 44);
    v10 = *(v5 + 40);
    if (v8 - v9 == *(v5 + 44) - v10)
    {
      v11 = 0;
      v31 = *(v28 + 8 * v3);
      v32 = *(v29 + 8 * v3);
      do
      {
        v12 = *(v4 + v11 + 54);
        v13 = *(v4 + v11 + 52);
        v14 = *(v4 + v11 + 32);
        v15 = *(v5 + v11 + 54);
        v16 = *(v5 + v11 + 52);
        v17 = *(v5 + v11 + 32);
        if (*(v4 + v11 + 48) != *(v5 + v11 + 48) || v13 != v16 || v12 != v15 || v14 != v17)
        {
          v21 = v9;
          v33 = v8;
          swift_beginAccess();
          v22 = *(v14 + 24) + (v12 | (v13 << 8));
          swift_beginAccess();
          v23 = memcmp((v22 + v21), (*(v17 + 24) + (v15 | (v16 << 8)) + v10), v33 - v21);
          v5 = v31;
          v4 = v32;
          if (v23)
          {
            break;
          }
        }

        if (!--v6)
        {
          goto LABEL_5;
        }

        v24 = v4 + v11;
        v25 = v5 + v11;
        v11 += 24;
        v26 = v24 + 64;
        v9 = *(v24 + 64);
        v8 = *(v26 + 4);
        v10 = *(v25 + 64);
      }

      while (v8 - v9 == *(v25 + 68) - v10);
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B0D3A070(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a1;
    if (a1 != a2)
    {
      v4 = 0;
      v22 = a2;
      while (1)
      {
        v5 = v3 + v4;
        v6 = *(v3 + v4 + 40);
        v7 = *(v3 + v4 + 44);
        v8 = a2 + v4;
        v9 = *(a2 + v4 + 40);
        if (v7 - v6 != *(a2 + v4 + 44) - v9)
        {
          break;
        }

        v10 = *(v5 + 32);
        v11 = *(v5 + 52);
        v12 = *(v5 + 54);
        v13 = *(v8 + 32);
        v14 = *(v8 + 54);
        v15 = *(v5 + 48) == *(v8 + 48) && v11 == *(v8 + 52);
        v16 = v15 && v12 == v14;
        if (!v16 || v10 != v13)
        {
          v23 = *(v8 + 52);
          swift_beginAccess();
          v18 = *(v10 + 24);
          swift_beginAccess();
          v19 = memcmp((v18 + (v12 | (v11 << 8)) + v6), (*(v13 + 24) + (v14 | (v23 << 8)) + v9), v7 - v6);
          v3 = a1;
          a2 = v22;
          if (v19)
          {
            break;
          }
        }

        v4 += 24;
        if (!--v2)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B0D3A1B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v3 - 2);
      if (v5)
      {
        if (!v6)
        {
          return 0;
        }

        v7 = *(v4 - 1);
        v8 = *(v3 - 1);
        v9 = HIDWORD(v7);
        if (HIDWORD(v7) - v7 != HIDWORD(v8) - v8)
        {
          return 0;
        }

        v10 = *v4 | ((*(v4 + 2) | (*(v4 + 6) << 16)) << 32);
        v11 = *v3 | ((*(v3 + 2) | (*(v3 + 6) << 16)) << 32);
        v12 = BYTE6(v11);
        v13 = HIDWORD(v10) & 0xFFFFFF;
        v14 = BYTE6(v10);
        if (*v4 != *v3 || ((*(v4 + 6), *(v3 + 6), *(v4 + 2) == *(v3 + 2)) ? (v15 = BYTE6(v10) == BYTE6(v11)) : (v15 = 0), v15 ? (v16 = v5 == v6) : (v16 = 0), !v16))
        {
          v20 = v7;
          v21 = HIDWORD(v11) & 0xFFFFFF;
          swift_beginAccess();
          v17 = v14 & 0xFFFFFFFFFF0000FFLL | (v13 << 8);
          v18 = *(v5 + 24) + v20;
          swift_beginAccess();
          if (memcmp((v18 + v17), (*(v6 + 24) + (v12 & 0xFFFFFFFFFF0000FFLL | (v21 << 8)) + v8), v9 - v20))
          {
            return 0;
          }
        }
      }

      else if (v6)
      {
        return 0;
      }

      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0D3A338(uint64_t a1, uint64_t a2)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v65 = *(v67 - 8);
  v4 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v6 = &v56 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F10, &qword_1B0EEEAD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F18, &qword_1B0EEEAD8);
  v18 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v20 = &v56 - v19;
  v69 = type metadata accessor for ParameterValue();
  v21 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v56 - v27;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
    return 0;
  }

  v68 = *(a1 + 16);
  if (!v30 || a1 == a2)
  {
    return 1;
  }

  v59 = v20;
  v60 = v7;
  v57 = v6;
  v58 = v14;
  v31 = 0;
  v32 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v63 = v24;
  v64 = a2 + v32;
  v61 = (v65 + 48);
  v62 = v28;
  v65 = *(v26 + 72);
  v66 = a1 + v32;
  v33 = v68;
  v71 = &v56 - v27;
  while (1)
  {
    v34 = v17;
    v35 = v65 * v31;
    result = sub_1B0D3CD9C(v66 + v65 * v31, v29, type metadata accessor for ParameterValue);
    if (v31 == v33)
    {
      __break(1u);
      return result;
    }

    v37 = *(v70 + 48);
    sub_1B0D3CD9C(v29, v20, type metadata accessor for ParameterValue);
    sub_1B0D3CD9C(v64 + v35, &v20[v37], type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B0D3CD9C(v20, v24, type metadata accessor for ParameterValue);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v17 = v34;
      v46 = v67;
      v47 = v61;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B0D3CE04(v71, type metadata accessor for ParameterValue);
        sub_1B0398EFC(v24, &qword_1EB6E4050, &unk_1B0EC2B20);
        goto LABEL_32;
      }

      sub_1B03C60A4(&v20[v37], v17, &qword_1EB6E4050, &unk_1B0EC2B20);
      v48 = *(v60 + 48);
      sub_1B03B5C80(v24, v10, &qword_1EB6E4050, &unk_1B0EC2B20);
      sub_1B03B5C80(v17, &v10[v48], &qword_1EB6E4050, &unk_1B0EC2B20);
      v49 = *v47;
      if ((*v47)(v10, 1, v46) == 1)
      {
        sub_1B0398EFC(v17, &qword_1EB6E4050, &unk_1B0EC2B20);
        sub_1B0D3CE04(v71, type metadata accessor for ParameterValue);
        if (v49(&v10[v48], 1, v46) != 1)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      v50 = v58;
      sub_1B03B5C80(v10, v58, &qword_1EB6E4050, &unk_1B0EC2B20);
      if (v49(&v10[v48], 1, v46) == 1)
      {
        sub_1B0398EFC(v17, &qword_1EB6E4050, &unk_1B0EC2B20);
        sub_1B0D3CE04(v71, type metadata accessor for ParameterValue);
        sub_1B0398EFC(v50, &qword_1EB6E4040, &qword_1B0EC2B10);
        v24 = v63;
LABEL_34:
        v54 = &qword_1EB6E6F10;
        v55 = &qword_1B0EEEAD0;
      }

      else
      {
        v51 = v57;
        sub_1B03C60A4(&v10[v48], v57, &qword_1EB6E4040, &qword_1B0EC2B10);
        sub_1B03D06F8();
        v52 = sub_1B0E46E08();
        sub_1B0398EFC(v51, &qword_1EB6E4040, &qword_1B0EC2B10);
        sub_1B0398EFC(v17, &qword_1EB6E4050, &unk_1B0EC2B20);
        sub_1B0D3CE04(v71, type metadata accessor for ParameterValue);
        sub_1B0398EFC(v50, &qword_1EB6E4040, &qword_1B0EC2B10);
        v24 = v63;
        if (v52)
        {
LABEL_27:
          sub_1B0398EFC(v10, &qword_1EB6E4050, &unk_1B0EC2B20);
          sub_1B0398EFC(v24, &qword_1EB6E4050, &unk_1B0EC2B20);
          goto LABEL_6;
        }

        v54 = &qword_1EB6E4050;
        v55 = &unk_1B0EC2B20;
      }

      sub_1B0398EFC(v10, v54, v55);
      sub_1B0398EFC(v24, &qword_1EB6E4050, &unk_1B0EC2B20);
      v53 = v20;
      goto LABEL_37;
    }

    v38 = v62;
    sub_1B0D3CD9C(v20, v62, type metadata accessor for ParameterValue);
    v39 = *v38;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B0D3CE04(v71, type metadata accessor for ParameterValue);

LABEL_32:
      sub_1B0398EFC(v20, &qword_1EB6E6F18, &qword_1B0EEEAD8);
      return 0;
    }

    v40 = *&v20[v37];
    v41 = *(v39 + 16);
    if (v41 != *(v40 + 16))
    {
      goto LABEL_29;
    }

    if (v41 && v39 != v40)
    {
      break;
    }

LABEL_5:
    sub_1B0D3CE04(v71, type metadata accessor for ParameterValue);

    v20 = v59;
    v24 = v63;
    v17 = v34;
LABEL_6:
    ++v31;
    sub_1B0D3CE04(v20, type metadata accessor for ParameterValue);
    v33 = v68;
    v29 = v71;
    if (v31 == v68)
    {
      return 1;
    }
  }

  v42 = (v39 + 40);
  v43 = (v40 + 40);
  while (1)
  {
    v44 = *(v42 - 1) == *(v43 - 1) && *v42 == *v43;
    if (!v44 && (sub_1B0E46A78() & 1) == 0)
    {
      break;
    }

    v42 += 2;
    v43 += 2;
    if (!--v41)
    {
      goto LABEL_5;
    }
  }

LABEL_29:
  sub_1B0D3CE04(v71, type metadata accessor for ParameterValue);

  v53 = v59;
LABEL_37:
  sub_1B0D3CE04(v53, type metadata accessor for ParameterValue);
  return 0;
}

uint64_t sub_1B0D3AB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  MEMORY[0x1B2728D70](v5);

  if (v5)
  {
    v7 = 0;
    v8 = (a3 + 40);
    v9 = (a2 + 40);
    while (v7 < *(a2 + 16))
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      ++v7;
      v12 = *(v8 - 1);
      v13 = *v8;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v8 += 2;
      v9 += 2;
      if (v5 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t sub_1B0D3AC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  MEMORY[0x1B2728D70](v4);
  v19 = a3;

  v17 = v4;
  if (!v4)
  {
  }

  v6 = 0;
  v7 = 0;
  while (v7 < *(a2 + 16))
  {
    v9 = *(a2 + v6 + 32);
    v10 = *(a2 + v6 + 40);
    v11 = *(a2 + v6 + 44);
    v12 = *(a2 + v6 + 52);
    v13 = *(a2 + v6 + 54);
    v14 = *(v19 + v6 + 32);
    v20 = *(v19 + v6 + 54);
    v21 = *(v19 + v6 + 40);
    v15 = *(v19 + v6 + 52);

    if (v9)
    {
      swift_beginAccess();
      v16 = *(v9 + 24) + (v13 | (v12 << 8));
      sub_1B0E46C38();
      sub_1B0E46C68();
      if (v14)
      {
        swift_beginAccess();
        v8 = *(v14 + 24) + ((v15 << 8) | v20);
        sub_1B0E46C38();
      }

      ++v7;

      v6 += 24;
      if (v17 != v7)
      {
        continue;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D3ADE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  MEMORY[0x1B2728D70](v4);

  v24 = v4;
  if (!v4)
  {
  }

  v6 = 0;
  v23 = a3 + 32;
  while (v6 < *(a2 + 16))
  {
    v7 = a2 + 32 + 24 * v6;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 12);
    v11 = *(v7 + 20);
    v12 = *(v7 + 22);
    v13 = *(v23 + 8 * v6);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v8)
    {
      swift_beginAccess();
      v14 = *(v8 + 24) + (v12 | (v11 << 8));
      sub_1B0E46C38();
      MEMORY[0x1B2728D70](*(v13 + 16));
      v15 = *(v13 + 16);
      if (v15)
      {
        v16 = (v13 + 54);
        do
        {
          v17 = *(v16 - 22);
          v18 = *(v16 - 14);
          v19 = *(v16 - 10);
          v20 = *(v16 - 1);
          v21 = *v16;
          v16 += 24;
          swift_beginAccess();
          v22 = *(v17 + 24) + (v21 | (v20 << 8));
          sub_1B0E46C38();
          --v15;
        }

        while (v15);
      }

      ++v6;

      if (v6 != v24)
      {
        continue;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D3AF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  MEMORY[0x1B2728D70](v5);

  if (v5)
  {
    v7 = 0;
    v8 = (a3 + 40);
    v9 = (a2 + 40);
    while (v7 < *(a2 + 16))
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      ++v7;
      v12 = *(v8 - 1);
      v13 = *v8;
      swift_bridgeObjectRetain_n();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v8 += 2;
      v9 += 2;
      if (v5 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t sub_1B0D3B080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v5 = *(v71 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v70 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v68 - v12;
  v14 = type metadata accessor for ParameterValue();
  v84 = *(v14 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v73 = (&v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  v78 = *(v19 - 8);
  v20 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v82 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v86 = &v68 - v23;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6570, &unk_1B0EF3540);
  v24 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = (&v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v75 = (&v68 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F48, &qword_1B0EEEAF8);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = (&v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = (&v68 - v34);
  v85 = *(a3 + 16);
  MEMORY[0x1B2728D70](v33);
  v79 = a2;
  v80 = a3;
  v74 = a2 + 32;
  v81 = (v84 + 48);
  v69 = (v5 + 48);

  v37 = 0;
  v72 = v13;
  v84 = v14;
  while (1)
  {
    if (v37 >= v85)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F50, &qword_1B0EEEB00);
      (*(*(v50 - 8) + 56))(v31, 1, 1, v50);
      goto LABEL_9;
    }

    if ((v37 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v37 >= *(v79 + 16))
    {
      goto LABEL_23;
    }

    v39 = v77;
    v38 = v78;
    v40 = *(v77 + 48);
    v41 = v75;
    v42 = (v74 + 16 * v37);
    v43 = v42[1];
    *v75 = *v42;
    *(v41 + 8) = v43;
    sub_1B03B5C80(v80 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37++, v41 + v40, &qword_1EB6E6440, &unk_1B0EF3530);
    v44 = v76;
    sub_1B03C60A4(v41, v76, &qword_1EB6E6570, &unk_1B0EF3540);
    v45 = *(v39 + 48);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F50, &qword_1B0EEEB00);
    v47 = *(v46 + 48);
    v48 = v44[1];
    *v31 = *v44;
    v31[1] = v48;
    v49 = v44 + v45;
    v14 = v84;
    sub_1B03C60A4(v49, v31 + v47, &qword_1EB6E6440, &unk_1B0EF3530);
    (*(*(v46 - 8) + 56))(v31, 0, 1, v46);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_9:
    sub_1B03C60A4(v31, v35, &qword_1EB6E6F48, &qword_1B0EEEAF8);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F50, &qword_1B0EEEB00);
    if ((*(*(v51 - 8) + 48))(v35, 1, v51) == 1)
    {
    }

    v52 = *(v51 + 48);
    v53 = *v35;
    v54 = v35[1];
    v55 = v86;
    sub_1B03C60A4(v35 + v52, v86, &qword_1EB6E6440, &unk_1B0EF3530);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v56 = v82;
    sub_1B03B5C80(v55, v82, &qword_1EB6E6440, &unk_1B0EF3530);
    if ((*v81)(v56, 1, v14) == 1)
    {
      sub_1B0E46C68();
    }

    else
    {
      v57 = v83;
      sub_1B0D3CD34(v56, v83, type metadata accessor for ParameterValue);
      sub_1B0E46C68();
      v58 = v73;
      sub_1B0D3CD9C(v57, v73, type metadata accessor for ParameterValue);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v59 = *v58;
        MEMORY[0x1B2728D70](1);
        MEMORY[0x1B2728D70](*(v59 + 16));
        v60 = *(v59 + 16);
        if (v60)
        {
          v61 = (v59 + 40);
          do
          {
            v63 = *(v61 - 1);
            v62 = *v61;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

            v61 += 2;
            --v60;
          }

          while (v60);
        }
      }

      else
      {
        v64 = v72;
        sub_1B03C60A4(v58, v72, &qword_1EB6E4050, &unk_1B0EC2B20);
        MEMORY[0x1B2728D70](0);
        v65 = v70;
        sub_1B03B5C80(v64, v70, &qword_1EB6E4050, &unk_1B0EC2B20);
        if ((*v69)(v65, 1, v71) == 1)
        {
          MEMORY[0x1B2728D70](1);

          v66 = v64;
        }

        else
        {
          v67 = v68;
          sub_1B03C60A4(v65, v68, &qword_1EB6E4040, &qword_1B0EC2B10);
          MEMORY[0x1B2728D70](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          sub_1B0E447C8();

          sub_1B0398EFC(v67, &qword_1EB6E4040, &qword_1B0EC2B10);
          v66 = v72;
        }

        sub_1B0398EFC(v66, &qword_1EB6E4050, &unk_1B0EC2B20);
      }

      sub_1B0D3CE04(v83, type metadata accessor for ParameterValue);
      v14 = v84;
    }

    result = sub_1B0398EFC(v86, &qword_1EB6E6440, &unk_1B0EF3530);
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0D3B918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v5 = *(v74 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v70 = &v69 - v7;
  v8 = &qword_1EB6E4050;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v73 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v69 - v13;
  v83 = type metadata accessor for ParameterValue();
  v79 = *(v83 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v69 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6EF8, " |\a");
  v18 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v76 = (&v69 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F00, &qword_1B0EEEAC0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v69 - v28;
  v84 = *(a3 + 16);
  MEMORY[0x1B2728D70](v27);
  v80 = a2;
  v81 = a3;
  v75 = a2 + 32;
  v71 = (v5 + 48);

  v31 = 0;
  while (1)
  {
    if (v31 >= v84)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F08, &qword_1B0EEEAC8);
      (*(*(v48 - 8) + 56))(v25, 1, 1, v48);
      goto LABEL_11;
    }

    if ((v31 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v31 >= *(v80 + 16))
    {
      goto LABEL_22;
    }

    v34 = v78;
    v35 = *(v78 + 48);
    v36 = v76;
    v37 = v75 + 24 * v31;
    v38 = *(v37 + 16);
    v39 = *(v37 + 20);
    v40 = *(v37 + 22);
    *v76 = *v37;
    *(v36 + 8) = *(v37 + 8);
    *(v36 + 16) = v38;
    *(v36 + 20) = v39;
    *(v36 + 22) = v40;
    sub_1B0D3CD9C(v81 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v31++, v36 + v35, type metadata accessor for ParameterValue);
    v41 = v77;
    sub_1B03C60A4(v36, v77, &qword_1EB6E6EF8, " |\a");
    v42 = *(v34 + 48);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F08, &qword_1B0EEEAC8);
    v44 = *(v43 + 48);
    v45 = *(v41 + 16);
    v46 = *(v41 + 20);
    v47 = *(v41 + 22);
    *v25 = *v41;
    *(v25 + 1) = *(v41 + 8);
    *(v25 + 4) = v45;
    *(v25 + 10) = v46;
    v25[22] = v47;
    sub_1B0D3CD34(v41 + v42, &v25[v44], type metadata accessor for ParameterValue);
    (*(*(v43 - 8) + 56))(v25, 0, 1, v43);

LABEL_11:
    sub_1B03C60A4(v25, v29, &qword_1EB6E6F00, &qword_1B0EEEAC0);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F08, &qword_1B0EEEAC8);
    if ((*(*(v49 - 8) + 48))(v29, 1, v49) == 1)
    {
    }

    v85 = v31;
    v50 = v8;
    v51 = *(v49 + 48);
    v52 = *v29;
    v53 = *(v29 + 2);
    v54 = *(v29 + 3);
    v55 = *(v29 + 10);
    v56 = v29[22];
    v57 = v86;
    sub_1B0D3CD34(&v29[v51], v86, type metadata accessor for ParameterValue);
    swift_beginAccess();
    v58 = *(v52 + 24) + (v56 | (v55 << 8));
    sub_1B0E46C38();
    v59 = v82;
    sub_1B0D3CD9C(v57, v82, type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v65 = v72;
      v8 = v50;
      sub_1B03C60A4(v59, v72, v50, &unk_1B0EC2B20);
      MEMORY[0x1B2728D70](0);
      v66 = v73;
      sub_1B03B5C80(v65, v73, v50, &unk_1B0EC2B20);
      if ((*v71)(v66, 1, v74) == 1)
      {
        MEMORY[0x1B2728D70](1);

        v32 = v65;
        v33 = v50;
      }

      else
      {
        v67 = v70;
        sub_1B03C60A4(v66, v70, &qword_1EB6E4040, &qword_1B0EC2B10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();

        v68 = v67;
        v8 = &qword_1EB6E4050;
        sub_1B0398EFC(v68, &qword_1EB6E4040, &qword_1B0EC2B10);
        v32 = v65;
        v33 = &qword_1EB6E4050;
      }

      sub_1B0398EFC(v32, v33, &unk_1B0EC2B20);
      goto LABEL_4;
    }

    v60 = *v59;
    MEMORY[0x1B2728D70](1);
    MEMORY[0x1B2728D70](*(v60 + 16));
    v61 = *(v60 + 16);
    if (!v61)
    {

      v8 = &qword_1EB6E4050;
LABEL_4:
      v31 = v85;
      goto LABEL_5;
    }

    v62 = (v60 + 40);
    do
    {
      v64 = *(v62 - 1);
      v63 = *v62;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v62 += 2;
      --v61;
    }

    while (v61);

    v8 = &qword_1EB6E4050;
    v31 = v85;
LABEL_5:
    result = sub_1B0D3CE04(v86, type metadata accessor for ParameterValue);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1B0D3C0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v5 = *(v73 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v70 - v7;
  v8 = &qword_1EB6E4050;
  v9 = &unk_1B0EC2B20;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v70 - v14;
  v82 = type metadata accessor for ParameterValue();
  v78 = *(v82 - 8);
  v15 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v81 = (&v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v70 - v18;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6568, &qword_1B0EE7F08);
  v19 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = (&v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v75 = (&v70 - v22);
  v23 = &qword_1EB6E6FA8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6FA8, &unk_1B0EEEB50);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = (&v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v28);
  v30 = *(a3 + 16);
  v83 = (&v70 - v31);
  v84 = v30;
  MEMORY[0x1B2728D70](v29);
  v79 = a2;
  v80 = a3;
  v74 = a2 + 32;
  v71 = (v5 + 48);

  for (i = 0; ; i = v86)
  {
    if (i >= v84)
    {
      v86 = i;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F30, &qword_1B0EEEAE0);
      (*(*(v52 - 8) + 56))(v27, 1, 1, v52);
      v34 = v85;
      goto LABEL_10;
    }

    v34 = v85;
    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= *(v79 + 16))
    {
      goto LABEL_21;
    }

    v36 = v77;
    v35 = v78;
    v37 = *(v77 + 48);
    v38 = (v74 + 16 * i);
    v39 = i;
    v40 = v38[1];
    v41 = v23;
    v42 = v75;
    *v75 = *v38;
    v42[1] = v40;
    sub_1B0D3CD9C(v80 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * i, v42 + v37, type metadata accessor for ParameterValue);
    v86 = v39 + 1;
    v43 = v42;
    v44 = v8;
    v45 = v9;
    v46 = v76;
    sub_1B03C60A4(v43, v76, &qword_1EB6E6568, &qword_1B0EE7F08);
    v47 = *(v36 + 48);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F30, &qword_1B0EEEAE0);
    v49 = *(v48 + 48);
    v50 = v46[1];
    *v27 = *v46;
    v27[1] = v50;
    v51 = v46 + v47;
    v9 = v45;
    v8 = v44;
    v23 = v41;
    sub_1B0D3CD34(v51, v27 + v49, type metadata accessor for ParameterValue);
    (*(*(v48 - 8) + 56))(v27, 0, 1, v48);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_10:
    v53 = v83;
    sub_1B03C60A4(v27, v83, v23, &unk_1B0EEEB50);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F30, &qword_1B0EEEAE0);
    if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
    {
    }

    v55 = *(v54 + 48);
    v56 = *v53;
    v57 = v53[1];
    v58 = v53 + v55;
    v59 = v87;
    sub_1B0D3CD34(v58, v87, type metadata accessor for ParameterValue);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v60 = v59;
    v61 = v81;
    sub_1B0D3CD9C(v60, v81, type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v62 = *v61;
      MEMORY[0x1B2728D70](1);
      MEMORY[0x1B2728D70](*(v62 + 16));
      v63 = *(v62 + 16);
      if (v63)
      {
        v64 = (v62 + 40);
        do
        {
          v65 = *(v64 - 1);
          v66 = *v64;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v64 += 2;
          --v63;
        }

        while (v63);

        v8 = &qword_1EB6E4050;
        v9 = &unk_1B0EC2B20;
      }

      else
      {
      }
    }

    else
    {
      sub_1B03C60A4(v61, v34, v8, v9);
      MEMORY[0x1B2728D70](0);
      v67 = v72;
      sub_1B03B5C80(v34, v72, v8, v9);
      if ((*v71)(v67, 1, v73) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v68 = v70;
        sub_1B03C60A4(v67, v70, &qword_1EB6E4040, &qword_1B0EC2B10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();

        v69 = v68;
        v9 = &unk_1B0EC2B20;
        v8 = &qword_1EB6E4050;
        sub_1B0398EFC(v69, &qword_1EB6E4040, &qword_1B0EC2B10);
      }

      sub_1B0398EFC(v34, v8, v9);
    }

    result = sub_1B0D3CE04(v87, type metadata accessor for ParameterValue);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1B0D3C88C()
{
  result = qword_1EB6E6EF0;
  if (!qword_1EB6E6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6EF0);
  }

  return result;
}

uint64_t sub_1B0D3C8F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
  }
}

uint64_t sub_1B0D3C8FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_1B0D3CB74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1B0D3CB80(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (HIBYTE(a3) != 255)
  {
    return sub_1B0D3C8F0(result, a2, a3, HIBYTE(a3) & 1);
  }

  return result;
}

uint64_t sub_1B0D3CB98(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (HIBYTE(a3) != 255)
  {
    return sub_1B0D3C8FC(result, a2, a3, HIBYTE(a3) & 1);
  }

  return result;
}

uint64_t sub_1B0D3CD34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0D3CD9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0D3CE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ApplePushService.hash(into:)(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 == 1)
    {
      MEMORY[0x1B2728D70](1);
      MEMORY[0x1B2728D70](a2);

      return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](2);
      swift_beginAccess();
      v9 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
      return sub_1B0E46C38();
    }
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    return MEMORY[0x1B2728D70](a3 | (a3 << 32));
  }
}

uint64_t ApplePushService.hashValue.getter(uint64_t a1, unsigned int a2, unint64_t a3, char a4)
{
  sub_1B0E46C28();
  ApplePushService.hash(into:)(v9, a1, a2, a3, a4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3D06C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1B0E46C28();
  ApplePushService.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3D0E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1B0E46C28();
  ApplePushService.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D3D164(Swift::Int a1, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_35;
    }

    v9 = *(v4 + 20);
    result = sub_1B0CFC1B0(0xD000000000000012, 0x80000001B0F2FAF0, (v4 + 8), *(v4 + 20));
    if (v11)
    {
      v12._object = 0x80000001B0F2FAF0;
      v12._countAndFlagsBits = 0xD000000000000012;
      result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
    }

    v13 = result;
    v14 = *(v4 + 20);
    v15 = __CFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    *(v4 + 20) = v16;
    result = sub_1B0DD55E0(0x737265762D737061uLL, 0xEB000000006E6F69);
    v17 = v13 + result;
    if (__OFADD__(v13, result))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v18 = *(v4 + 20);
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v4 + 8), *(v4 + 20));
    if (v19)
    {
      v20._countAndFlagsBits = 32;
      v20._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
    }

    v21 = *(v4 + 20);
    v15 = __CFADD__(v21, result);
    v22 = v21 + result;
    if (v15)
    {
      goto LABEL_46;
    }

    *(v4 + 20) = v22;
    v23 = v17 + result;
    if (__OFADD__(v17, result))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v61[0] = a1;
    v24 = sub_1B0E469C8();
    v26 = sub_1B0DD55E0(v24, v25);

    v27 = __OFADD__(v23, v26);
    v28 = v23 + v26;
    if (v27)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v29 = *(v5 + 20);
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
    if (v30)
    {
      v31._countAndFlagsBits = 32;
      v31._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
    }

    v32 = *(v5 + 20);
    v15 = __CFADD__(v32, result);
    v33 = v32 + result;
    if (v15)
    {
      goto LABEL_51;
    }

    *(v5 + 20) = v33;
    v34 = v28 + result;
    if (__OFADD__(v28, result))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    result = sub_1B0DD55E0(0x69706F742D737061uLL, 0xE900000000000063);
    v35 = v34 + result;
    if (__OFADD__(v34, result))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    a1 = *(v5 + 20);
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
    if (v36)
    {
      v37._countAndFlagsBits = 32;
      v37._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v37, a1);
    }

    v38 = *(v5 + 20);
    v15 = __CFADD__(v38, result);
    v39 = v38 + result;
    if (v15)
    {
      goto LABEL_54;
    }

    *(v5 + 20) = v39;
    v40 = v35 + result;
    if (__OFADD__(v35, result))
    {
LABEL_55:
      __break(1u);
      return result;
    }

    v41 = sub_1B0DD55E0(a2, a3);
    v27 = __OFADD__(v40, v41);
    result = v40 + v41;
    if (!v27)
    {
      return result;
    }

    __break(1u);
  }

  v42 = *(v5 + 20);
  result = sub_1B0CFC1B0(0xD000000000000012, 0x80000001B0F2FAF0, (v5 + 8), *(v5 + 20));
  if (v43)
  {
    v44._object = 0x80000001B0F2FAF0;
    v44._countAndFlagsBits = 0xD000000000000012;
    result = ByteBuffer._setStringSlowpath(_:at:)(v44, v42);
  }

  v45 = result;
  v46 = *(v5 + 20);
  v15 = __CFADD__(v46, result);
  v47 = v46 + result;
  if (v15)
  {
    goto LABEL_41;
  }

  *(v5 + 20) = v47;
  result = sub_1B0DD55E0(0x786F626C69616DuLL, 0xE700000000000000);
  a2 = v45 + result;
  if (__OFADD__(v45, result))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  a3 = *(v5 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v48)
  {
    v49._countAndFlagsBits = 32;
    v49._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v49, a3);
  }

  v50 = *(v5 + 20);
  v15 = __CFADD__(v50, result);
  v51 = v50 + result;
  if (v15)
  {
    goto LABEL_47;
  }

  *(v5 + 20) = v51;
  v52 = a2 + result;
  if (__OFADD__(a2, result))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v53 = sub_1B0DD59A4(a1);
  v27 = __OFADD__(v52, v53);
  result = v52 + v53;
  if (!v27)
  {
    return result;
  }

  __break(1u);
LABEL_35:
  v61[0] = a1;
  v61[1] = a2;
  v62 = a3;
  v63 = WORD2(a3);
  v64 = BYTE6(a3);
  v54 = *(v5 + 20);

  result = sub_1B0CFC1B0(0xD000000000000012, 0x80000001B0F2FAF0, (v5 + 8), v54);
  if (v55)
  {
    v56._object = 0x80000001B0F2FAF0;
    v56._countAndFlagsBits = 0xD000000000000012;
    result = ByteBuffer._setStringSlowpath(_:at:)(v56, v54);
  }

  v57 = result;
  v58 = *(v5 + 20);
  v15 = __CFADD__(v58, result);
  v59 = v58 + result;
  if (v15)
  {
    goto LABEL_42;
  }

  *(v5 + 20) = v59;
  v60 = EncodeBuffer.writeBuffer(_:)(v61);
  sub_1B0C26CD4(a1, a2, a3, 2u);
  result = v57 + v60;
  if (__OFADD__(v57, v60))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_1B0D3D570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  v9 = a3;
  if (a2 + 1 < a3)
  {
    v8 = a1;
    v11 = *a1;
    v16 = *(a1 + 8);
    v13 = *(a1 + 12);
    LODWORD(v17) = *(a1 + 16);
    v15 = *(a1 + 20);
    v12 = a2 + 2;
    v18 = *(a1 + 22);
    v67 = v18;
    if (a2 + 2 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = v9;
LABEL_44:
      swift_willThrow();
      goto LABEL_45;
    }

    v14 = 0x80000001B0F2D460;
    v50 = v17;
    if (("selectingMailbox" & 0x1000000000000000) == 0)
    {
      if (("selectingMailbox" & 0x2000000000000000) != 0)
      {
        v17 = ("selectingMailbox" >> 56) & 0xF;
      }

      else
      {
        v17 = 17;
      }

LABEL_10:
      if (v17 <= (v13 - v16))
      {
        v47 = a8;
        v48 = v13;
        v42 = a4;
        v43 = a6;
        v44 = a5;
        v45 = a7;
        v46 = v10;
        v23 = v18;
        swift_beginAccess();
        v24 = *(v11 + 24);
        LOWORD(v49) = v15;
        v13 = (v23 | (v15 << 8)) + v16;
        swift_retain_n();
        v25 = sub_1B0E44C68();
        if (!__CFADD__(v16, v17))
        {
          v13 = v25;
          v15 = v26;
          v41 = v16 + v17;
          *(v8 + 8) = v16 + v17;
          if (v25 == 0xD000000000000011 && v14 == v26 || (sub_1B0E46A78() & 1) != 0)
          {
LABEL_19:
            LODWORD(v17) = v50;

            sub_1B0D3DC0C(v8, v12, v9, v42, v44, v43, v45, v47);
            if (v46)
            {
              v27 = *v8;

              *v8 = v11;
              *(v8 + 8) = v41;
              *(v8 + 12) = v48;
              *(v8 + 16) = v50;
              LOWORD(v15) = v49;
              *(v8 + 20) = v49;
              *(v8 + 22) = v67;
              swift_willThrow();
              v51 = v46;
              v28 = v46;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
              if (swift_dynamicCast())
              {
              }

              else
              {

                v51 = v46;
                v34 = v46;
                if ((swift_dynamicCast() & 1) == 0)
                {

                  LODWORD(v13) = v48;
LABEL_45:
                  *v8 = v11;
                  *(v8 + 8) = v16;
                  *(v8 + 12) = v13;
                  *(v8 + 16) = v17;
                  *(v8 + 20) = v15;
                  *(v8 + 22) = v67;
                  return swift_willThrow();
                }
              }

              sub_1B0D3E7CC(v8, v12, v9, v47);
            }
          }

          if ((v15 & 0x1000000000000000) == 0)
          {
            v36 = v46;
            if ((v15 & 0x2000000000000000) != 0)
            {
              if (v17 != (HIBYTE(v15) & 0xF))
              {
                goto LABEL_42;
              }
            }

            else if (v17 != (v13 & 0xFFFFFFFFFFFFLL))
            {
              goto LABEL_42;
            }

LABEL_33:
            if (sub_1B043D8AC(0xD000000000000011, v14, v13, v15))
            {
              v46 = v36;
              goto LABEL_19;
            }

LABEL_42:
            sub_1B0E46298();

            v52 = 0xD000000000000037;
            v53 = 0x80000001B0F2F9D0;
            MEMORY[0x1B2726E80](v13, v15);

            sub_1B0436554();
            swift_allocError();
            *v40 = 0xD000000000000037;
            v40[1] = 0x80000001B0F2F9D0;
            v40[2] = 0xD000000000000020;
            v40[3] = 0x80000001B0F2FA10;
            v40[4] = 280;
            LODWORD(v13) = v48;
            LOWORD(v15) = v49;
            LODWORD(v17) = v50;
LABEL_43:
            swift_willThrow();

            goto LABEL_44;
          }

LABEL_41:
          v36 = v46;
          if (v17 != sub_1B0E44DC8())
          {
            goto LABEL_42;
          }

          goto LABEL_33;
        }

        goto LABEL_39;
      }

LABEL_11:
      if (v13 >= v16)
      {
        LOWORD(v49) = v13 - v16;
        v17 = v50;
        if (v50 - (v18 | (v15 << 8)) >= v13)
        {
          v59 = v11;
          v60 = v16;
          v61 = v13;
          v62 = v50;
          v63 = v15;
          v64 = v18;
          v65 = v16;
          v66 = v13;
          v21 = v18;
          swift_retain_n();
          v22 = sub_1B0DFD5B4(&v59, 0xD000000000000011, v14);
          sub_1B04394F4(&v59);
          if (v22)
          {
            sub_1B0D3EA30();
            swift_allocError();
          }

          else
          {
            sub_1B0E46298();

            v52 = v11;
            v53 = __PAIR64__(v13, v16);
            v54 = v50;
            v55 = v15;
            v56 = v21;
            v57 = v16;
            v58 = v13;
            swift_beginAccess();
            v29 = *(v11 + 24);

            v30 = sub_1B0E44C68();
            v31 = v13;
            v13 = v32;
            sub_1B04394F4(&v52);
            MEMORY[0x1B2726E80](v30, v13);

            sub_1B0436554();
            swift_allocError();
            *v33 = 0xD000000000000024;
            v33[1] = 0x80000001B0F2FA40;
            v33[2] = 0xD000000000000020;
            v33[3] = 0x80000001B0F2FA10;
            LODWORD(v13) = v31;
            LODWORD(v17) = v50;
            v33[4] = 264;
          }

          goto LABEL_43;
        }

        goto LABEL_40;
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_36:
    v47 = a8;
    v48 = v13;
    v44 = a5;
    v45 = a7;
    v49 = v15;
    v37 = a6;
    v38 = a4;
    v39 = sub_1B0E44DC8();
    v18 = v67;
    a4 = v38;
    a5 = v44;
    a7 = v45;
    a6 = v37;
    v15 = v49;
    a8 = v47;
    v17 = v39;
    if (v39 < 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_1B0439BCC();
  swift_allocError();
  *v19 = v9;
  return swift_willThrow();
}

uint64_t sub_1B0D3DC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
LABEL_37:
    v143 = a1;
    v144 = v16 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (a8)
      {
        if (--a8)
        {
          v64 = 0;
          v87 = &v143 + 1;
          while (1)
          {
            v88 = *v87 - 48;
            if (v88 > 9)
            {
              break;
            }

            v89 = (v64 * 10) >> 64;
            v90 = 10 * v64;
            if (v89 != v90 >> 63)
            {
              break;
            }

            v69 = __OFADD__(v90, v88);
            v64 = v90 + v88;
            if (v69)
            {
              break;
            }

            ++v87;
            if (!--a8)
            {
              goto LABEL_82;
            }
          }
        }

        goto LABEL_80;
      }

      goto LABEL_101;
    }

    if (a1 != 45)
    {
      if (a8)
      {
        v64 = 0;
        v94 = &v143;
        while (1)
        {
          v95 = *v94 - 48;
          if (v95 > 9)
          {
            break;
          }

          v96 = (v64 * 10) >> 64;
          v97 = 10 * v64;
          if (v96 != v97 >> 63)
          {
            break;
          }

          v69 = __OFADD__(v97, v95);
          v64 = v97 + v95;
          if (v69)
          {
            break;
          }

          v94 = (v94 + 1);
          if (!--a8)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_80;
    }

    if (a8)
    {
      if (--a8)
      {
        v64 = 0;
        v79 = &v143 + 1;
        while (1)
        {
          v80 = *v79 - 48;
          if (v80 > 9)
          {
            break;
          }

          v81 = (v64 * 10) >> 64;
          v82 = 10 * v64;
          if (v81 != v82 >> 63)
          {
            break;
          }

          v69 = __OFSUB__(v82, v80);
          v64 = v82 - v80;
          if (v69)
          {
            break;
          }

          ++v79;
          if (!--a8)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_80;
    }

    goto LABEL_99;
  }

  v11 = a3;
  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v22 = v11;
    return swift_willThrow();
  }

  v13 = a2;
  v12 = a1;
  v135 = a4;
  v136 = a5;
  v137 = a6;
  v138 = a7;
  v134 = a8;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = *(a1 + 20);
  v21 = *(a1 + 22);
  sub_1B0436204(a1);
  if (v10)
  {
    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = v19;
    *(v12 + 20) = v20;
    *(v12 + 22) = v21;
    return swift_willThrow();
  }

  v24 = sub_1B0DB3AC0(v12, v13, v11, v135, v136, v137, v138);
  v26 = v25;
  v28 = v27;
  v29 = v24;

  v30 = ByteBufferAllocator.buffer(string:)(0x786F626C69616DLL, 0xE700000000000000, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
  v133 = v26;
  LOBYTE(v26) = sub_1B0C2DB54(v30, v32, v31 & 0xFFFFFFFFFFFFFFLL, v29, v26, v28 & 0xFFFFFFFFFFFFFFLL);

  if (v26)
  {
    v33 = *v12;
    v34 = *(v12 + 8);
    v35 = *(v12 + 16);
    v36 = *(v12 + 20);
    v37 = *(v12 + 22);
    sub_1B0436204(v12);
    v38 = sub_1B0DB3AC0(v12, v13, v11, v135, v136, v137, v138);
    v40 = v39;
    v42 = HIDWORD(v41);
    v43 = v41;
    swift_beginAccess();
    v44 = v42 - v43;
    if (v44)
    {
      v70 = *(v38 + 24);
      v71 = ((v40 >> 24) & 0xFFFF00 | BYTE6(v40)) + v43;
      v72 = sub_1B0C0C9F0(v44, 0);
      memcpy(v72 + 4, (v70 + v71), v44);
      v45 = v72;
    }

    else
    {
      v45 = MEMORY[0x1E69E7CC0];
    }

    v73 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v45);
    v75 = v74;

    v76 = *(v12 + 16);
    v77 = *(v12 + 20);
    v78 = *(v12 + 22);
    v139[0] = *v12;
    v139[1] = *(v12 + 8);
    v140 = v76;
    v141 = v77;
    v142 = v78;

    sub_1B0448078(v139, v13, v11);

    *v134 = v73;
    *(v134 + 8) = v75;
    *(v134 + 16) = 0;
    *(v134 + 24) = 0;
    goto LABEL_35;
  }

  v46 = ByteBufferAllocator.buffer(string:)(0x737265762D737061, 0xEB000000006E6F69, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
  v49 = sub_1B0C2DB54(v46, v48, v47 & 0xFFFFFFFFFFFFFFLL, v29, v133, v28 & 0xFFFFFFFFFFFFFFLL);

  if (!v49)
  {
    sub_1B0E46298();

    v143 = 0xD000000000000029;
    v144 = 0x80000001B0F2FA70;
    v55 = ByteBuffer.description.getter(v29);
    MEMORY[0x1B2726E80](v55);

    sub_1B0436554();
    swift_allocError();
    *v56 = 0xD000000000000029;
    v56[1] = 0x80000001B0F2FA70;
    v56[2] = 0xD000000000000020;
    v56[3] = 0x80000001B0F2FA10;
    v56[4] = 75;
    swift_willThrow();
  }

  v50 = *v12;
  v51 = *(v12 + 8);
  v52 = *(v12 + 16);
  v53 = *(v12 + 20);
  v54 = *(v12 + 22);
  sub_1B0436204(v12);
  v15 = 0xD000000000000020;
  v14 = 0x80000001B0F2FA10;
  v132 = sub_1B0DB3AC0(v12, v13, v11, v135, v136, v137, v138);
  a1 = sub_1B0DFF2E8(v132, v58, v57 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 58);
  v9 = 0;
  v16 = v59;
  a8 = HIBYTE(v59) & 0xF;
  v60 = a1 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v61 = a8;
  }

  else
  {
    v61 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {

LABEL_94:
    sub_1B0436554();
    swift_allocError();
    *v127 = 0x1000000000000019;
    v127[1] = 0x80000001B0F2FAA0;
    v127[2] = v15;
    v127[3] = v14;
    v127[4] = 60;
    goto LABEL_95;
  }

  if ((v16 & 0x1000000000000000) != 0)
  {
    LOBYTE(v139[0]) = 0;
    v131 = sub_1B0B6CEA8(a1, v16, 10);
    v98 = v128;
    goto LABEL_84;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v62 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v62 = sub_1B0E46368();
  }

  v63 = *v62;
  if (v63 != 43)
  {
    if (v63 != 45)
    {
      v8 = 0;
      if (v60)
      {
        if (v62)
        {
          while (1)
          {
            v91 = *v62 - 48;
            if (v91 > 9)
            {
              break;
            }

            v92 = (v8 * 10) >> 64;
            v93 = 10 * v8;
            if (v92 != v93 >> 63)
            {
              break;
            }

            v69 = __OFADD__(v93, v91);
            v8 = v93 + v91;
            if (v69)
            {
              break;
            }

            ++v62;
            if (!--v60)
            {
              LOBYTE(a8) = 0;
              v15 = 0xD000000000000020;
              v131 = v8;
              goto LABEL_83;
            }
          }

          LOBYTE(a8) = 1;
          v15 = 0xD000000000000020;
          v131 = 0;
        }

        else
        {
          LOBYTE(a8) = 0;
          v131 = 0;
        }

        goto LABEL_83;
      }

      goto LABEL_102;
    }

    if (v60 >= 1)
    {
      a8 = v60 - 1;
      if (v60 != 1)
      {
        v64 = 0;
        if (v62)
        {
          v65 = v62 + 1;
          while (1)
          {
            v66 = *v65 - 48;
            if (v66 > 9)
            {
              break;
            }

            v67 = (v64 * 10) >> 64;
            v68 = 10 * v64;
            if (v67 != v68 >> 63)
            {
              break;
            }

            v69 = __OFSUB__(v68, v66);
            v64 = v68 - v66;
            if (v69)
            {
              break;
            }

            ++v65;
            if (!--a8)
            {
              goto LABEL_57;
            }
          }

LABEL_56:
          v64 = 0;
          LOBYTE(a8) = 1;
LABEL_57:
          v15 = 0xD000000000000020;
          goto LABEL_82;
        }

LABEL_81:
        LOBYTE(a8) = 0;
        goto LABEL_82;
      }

      goto LABEL_80;
    }

    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v60 < 1)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    LOBYTE(a8) = 1;
    v131 = v8;
    goto LABEL_83;
  }

  a8 = v60 - 1;
  if (v60 != 1)
  {
    v64 = 0;
    if (v62)
    {
      v83 = v62 + 1;
      while (1)
      {
        v84 = *v83 - 48;
        if (v84 > 9)
        {
          goto LABEL_56;
        }

        v85 = (v64 * 10) >> 64;
        v86 = 10 * v64;
        if (v85 != v86 >> 63)
        {
          goto LABEL_56;
        }

        v69 = __OFADD__(v86, v84);
        v64 = v86 + v84;
        if (v69)
        {
          goto LABEL_56;
        }

        ++v83;
        if (!--a8)
        {
          goto LABEL_57;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_80:
  v64 = 0;
  LOBYTE(a8) = 1;
LABEL_82:
  v131 = v64;
LABEL_83:
  LOBYTE(v139[0]) = a8;
  v98 = a8;
LABEL_84:

  if ((v98 & 1) != 0 || (v131 & 0x8000000000000000) != 0)
  {
    goto LABEL_94;
  }

  v130 = v14;
  v99 = *v12;
  v100 = *(v12 + 8);
  v101 = *(v12 + 16);
  v102 = *(v12 + 20);
  v103 = *(v12 + 22);
  sub_1B0436204(v12);
  if (v9)
  {
    *v12 = v99;
    *(v12 + 8) = v100;
    *(v12 + 16) = v101;
    *(v12 + 20) = v102;
    *(v12 + 22) = v103;
LABEL_95:
    swift_willThrow();
  }

  v104 = sub_1B0DB3AC0(v12, v13, v11, v135, v136, v137, v138);
  v106 = v105;
  v108 = v107;
  v109 = ByteBufferAllocator.buffer(string:)(0x69706F742D737061, 0xE900000000000063, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
  v129 = v104;
  LOBYTE(v104) = sub_1B0C2DB54(v104, v106, v108 & 0xFFFFFFFFFFFFFFLL, v109, v111, v110 & 0xFFFFFFFFFFFFFFLL);

  if ((v104 & 1) == 0)
  {
    v143 = 0;
    v144 = 0xE000000000000000;
    sub_1B0E46298();

    v143 = 0x1000000000000021;
    v144 = 0x80000001B0F2FAC0;
    v117 = ByteBuffer.description.getter(v129);
    MEMORY[0x1B2726E80](v117);

    MEMORY[0x1B2726E80](10322146, 0xA300000000000000);
    v118 = v143;
    v119 = v144;
    sub_1B0436554();
    swift_allocError();
    *v120 = v118;
    v120[1] = v119;
    v120[2] = 0xD000000000000020;
    v120[3] = v130;
    v120[4] = 66;
    swift_willThrow();
  }

  v112 = *v12;
  v113 = *(v12 + 8);
  v114 = *(v12 + 16);
  v115 = *(v12 + 20);
  v116 = *(v12 + 22);
  sub_1B0436204(v12);
  v121 = sub_1B0DB3AC0(v12, v13, v11, v135, v136, v137, v138);
  v124 = sub_1B0DFF2E8(v121, v123, v122 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, v130, 71);
  v126 = v125;

  *v134 = v131;
  *(v134 + 8) = v124;
  *(v134 + 16) = v126;
  *(v134 + 24) = 1;
LABEL_35:
  type metadata accessor for ResponsePayload();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B0D3E7CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_1B0436204(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    *a4 = sub_1B0DFF4DC(v9, a2, a3);
    *(a4 + 8) = v18;
    *(a4 + 16) = v17 & 0xFFFFFFFFFFFFFFLL;
    *(a4 + 24) = 2;
    type metadata accessor for ResponsePayload();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t _s12NIOIMAPCore216ApplePushServiceO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a4)
  {
    return !a8 && a2 == a6 && (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(a1, a5) & 1) != 0;
  }

  if (a4 == 1)
  {
    if (a8 == 1 && a1 == a5)
    {
      if (a2 == a6 && a3 == a7)
      {
        return 1;
      }

      return sub_1B0E46A78();
    }

    return 0;
  }

  if (a8 != 2)
  {
    return 0;
  }

  v10 = a3 & 0xFFFFFFFFFFFFFFLL;

  return sub_1B0C2DB54(a1, a2, v10, a5, a6, a7 & 0xFFFFFFFFFFFFFFLL);
}

unint64_t sub_1B0D3E9C0()
{
  result = qword_1EB6E6FB0;
  if (!qword_1EB6E6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FB0);
  }

  return result;
}

unint64_t sub_1B0D3EA30()
{
  result = qword_1EB6DE630;
  if (!qword_1EB6DE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE630);
  }

  return result;
}

uint64_t sub_1B0D3EA84()
{
  result = sub_1B0E44B98();
  static AttributeFlag.answered = result;
  *algn_1EB738408 = v1;
  return result;
}

NIOIMAPCore2::AttributeFlag __swiftcall AttributeFlag.init(_:)(Swift::String a1)
{
  v1 = sub_1B0E44B98();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result.stringValue._object = v5;
  result.stringValue._countAndFlagsBits = v4;
  return result;
}

uint64_t *AttributeFlag.answered.unsafeMutableAddressor()
{
  if (qword_1EB6E6D80 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.answered;
}

uint64_t sub_1B0D3EB7C()
{
  result = sub_1B0E44B98();
  static AttributeFlag.flagged = result;
  *algn_1EB738418 = v1;
  return result;
}

uint64_t *AttributeFlag.flagged.unsafeMutableAddressor()
{
  if (qword_1EB6E6D88 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.flagged;
}

uint64_t sub_1B0D3EC30()
{
  result = sub_1B0E44B98();
  static AttributeFlag.deleted = result;
  *algn_1EB738428 = v1;
  return result;
}

uint64_t *AttributeFlag.deleted.unsafeMutableAddressor()
{
  if (qword_1EB6E6D90 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.deleted;
}

uint64_t sub_1B0D3ECE4()
{
  result = sub_1B0E44B98();
  static AttributeFlag.seen = result;
  *algn_1EB738438 = v1;
  return result;
}

uint64_t *AttributeFlag.seen.unsafeMutableAddressor()
{
  if (qword_1EB6E6D98 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.seen;
}

uint64_t sub_1B0D3ED90()
{
  result = sub_1B0E44B98();
  static AttributeFlag.draft = result;
  *algn_1EB738448 = v1;
  return result;
}

uint64_t *AttributeFlag.draft.unsafeMutableAddressor()
{
  if (qword_1EB6E6DA0 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.draft;
}

uint64_t sub_1B0D3EE40(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v3;
}

uint64_t static AttributeFlag.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t AttributeFlag.hashValue.getter()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D3EF18()
{
  result = qword_1EB6E6FC0;
  if (!qword_1EB6E6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FC0);
  }

  return result;
}

uint64_t AuthenticatedURL.verifier.getter()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[13];
  v3 = v0[14];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t AuthenticatedURL.verifier.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[12];

  v10 = v4[14];

  v4[11] = a1;
  v4[12] = a2;
  v4[13] = a3;
  v4[14] = a4;
  return result;
}

__n128 AuthenticatedURL.init(authenticatedURL:verifier:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  LOBYTE(v10) = *(a1 + 80);
  result = a1[2];
  v7 = a1[4];
  v8 = *a1;
  v9 = a1[1];
  *(a6 + 48) = a1[3];
  *(a6 + 64) = v7;
  *(a6 + 16) = v9;
  *(a6 + 32) = result;
  *a6 = v8;
  *(a6 + 80) = v10;
  *(a6 + 88) = a2;
  *(a6 + 96) = a3;
  *(a6 + 104) = a4;
  *(a6 + 112) = a5;
  return result;
}

BOOL static AuthenticatedURL.__derived_struct_equals(_:_:)(int64x2_t *a1, int64x2_t *a2)
{
  v4 = a1[3];
  v19[2] = a1[2];
  v19[3] = v4;
  v19[4] = a1[4];
  v20 = a1[5].i8[0];
  v5 = a1[1];
  v19[0] = *a1;
  v19[1] = v5;
  v6 = a2[3];
  v17[2] = a2[2];
  v17[3] = v6;
  v17[4] = a2[4];
  v18 = a2[5].i8[0];
  v7 = a2[1];
  v17[0] = *a2;
  v17[1] = v7;
  if ((_s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(v19, v17) & 1) == 0)
  {
    return 0;
  }

  v8 = a1[5].i64[1];
  v9 = a1[6].i64[0];
  v10 = a1[6].i64[1];
  v11 = a1[7].i64[0];
  v12 = a2[5].i64[1];
  v13 = a2[6].i64[0];
  v15 = a2[6].i64[1];
  v14 = a2[7].i64[0];
  if ((v8 != v12 || v9 != v13) && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  return v10 == v15 && v11 == v14 || (sub_1B0E46A78() & 1) != 0;
}

uint64_t AuthenticatedURL.hash(into:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(v0 + 80);
  if ((*(v0 + 57) & 1) == 0)
  {
    v19 = v0[8];
    v20 = v0[9];
    v5 = v0[5];
    v18 = v0[6];
    v6 = *(v0 + 56);
    v8 = v0[3];
    v7 = v0[4];
    v10 = v0[1];
    v9 = v0[2];
    v11 = *v0;
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v11);
    MEMORY[0x1B2728D70](v10);
    MEMORY[0x1B2728D70](v9);
    MEMORY[0x1B2728D70](v8);
    MEMORY[0x1B2728D70](v7);
    MEMORY[0x1B2728D70](v5);
    sub_1B0E46C68();
    if ((v6 & 1) == 0)
    {
      MEMORY[0x1B2728D70](v18);
    }

    v2 = v19;
    v1 = v20;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  sub_1B0E46C68();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v3 != 1)
  {
    if (v2 | v1)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    MEMORY[0x1B2728D70](v12);
    goto LABEL_15;
  }

  v4 = 1;
LABEL_12:
  MEMORY[0x1B2728D70](v4);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_15:
  v13 = v0[11];
  v14 = v0[12];
  v16 = v0[13];
  v15 = v0[14];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t AuthenticatedURL.hashValue.getter()
{
  sub_1B0E46C28();
  AuthenticatedURL.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3F3EC()
{
  sub_1B0E46C28();
  AuthenticatedURL.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3F430()
{
  sub_1B0E46C28();
  AuthenticatedURL.hash(into:)();
  return sub_1B0E46CB8();
}

BOOL sub_1B0D3F46C(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[3];
  v17[2] = a1[2];
  v17[3] = v2;
  v17[4] = a1[4];
  v18 = a1[5].i8[0];
  v3 = a1[1];
  v17[0] = *a1;
  v17[1] = v3;
  v4 = a1[5].i64[1];
  v5 = a1[6].i64[0];
  v6 = a1[6].i64[1];
  v7 = a1[7].i64[0];
  v8 = a2[1];
  v19[0] = *a2;
  v19[1] = v8;
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v20 = a2[5].i8[0];
  v19[3] = v10;
  v19[4] = v11;
  v19[2] = v9;
  v12 = a2[5].i64[1];
  v13 = a2[6].i64[0];
  v14 = a2[6].i64[1];
  v15 = a2[7].i64[0];
  return (_s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(v17, v19) & 1) != 0 && (v4 == v12 && v5 == v13 || (sub_1B0E46A78() & 1) != 0) && (v6 == v14 && v7 == v15 || (sub_1B0E46A78() & 1) != 0);
}

unint64_t sub_1B0D3F578()
{
  result = qword_1EB6E6FC8;
  if (!qword_1EB6E6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FC8);
  }

  return result;
}

uint64_t sub_1B0D3F5CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0D3F614(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 AuthenticatedURLRump.expire.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 32);
  result = *(v1 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 AuthenticatedURLRump.expire.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  *(v1 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t AuthenticatedURLRump.access.getter()
{
  v1 = *(v0 + 64);
  sub_1B0D3FB38(v1, *(v0 + 72), *(v0 + 80));
  return v1;
}

uint64_t AuthenticatedURLRump.access.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1B0BD1294(*(v3 + 64), *(v3 + 72), *(v3 + 80));
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  return result;
}

__n128 AuthenticatedURLRump.init(expire:access:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v7;
  result = *(a1 + 32);
  *(a5 + 32) = result;
  *(a5 + 48) = v5;
  *(a5 + 56) = v6;
  *(a5 + 64) = a2;
  *(a5 + 72) = a3;
  *(a5 + 80) = a4;
  return result;
}

uint64_t AuthenticatedURLRump.hash(into:)()
{
  if (*(v0 + 57))
  {
    goto LABEL_3;
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = *(v0 + 56);
  v5 = v0[3];
  v4 = v0[4];
  v7 = v0[1];
  v6 = v0[2];
  v8 = *v0;
  sub_1B0E46C68();
  MEMORY[0x1B2728D70](v8);
  MEMORY[0x1B2728D70](v7);
  MEMORY[0x1B2728D70](v6);
  MEMORY[0x1B2728D70](v5);
  MEMORY[0x1B2728D70](v4);
  MEMORY[0x1B2728D70](v2);
  if (v3)
  {
LABEL_3:
    sub_1B0E46C68();
  }

  else
  {
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v1);
  }

  if (!*(v0 + 80))
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (*(v0 + 80) == 1)
  {
    v9 = 1;
LABEL_9:
    MEMORY[0x1B2728D70](v9);

    return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  if (*(v0 + 4) == 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  return MEMORY[0x1B2728D70](v11);
}

uint64_t AuthenticatedURLRump.hashValue.getter()
{
  sub_1B0E46C28();
  AuthenticatedURLRump.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3F920()
{
  sub_1B0E46C28();
  AuthenticatedURLRump.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3F964()
{
  sub_1B0E46C28();
  AuthenticatedURLRump.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3F9A0(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v7[4] = a1[4];
  v8 = a1[5].i8[0];
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v9[4] = a2[4];
  v10 = a2[5].i8[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t _s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  v3 = a2[3].i8[9];
  if (a1[3].i8[9])
  {
LABEL_2:
    if ((v3 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (a2[3].i8[9])
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) != 0 && a1[2].i64[0] == a2[2].i64[0] && a1[2].i64[1] == a2[2].i64[1])
  {
    v3 = a2[3].i8[8];
    if (a1[3].i8[8])
    {
      goto LABEL_2;
    }

    result = 0;
    if ((a2[3].i8[8] & 1) == 0 && a1[3].i64[0] == a2[3].i64[0])
    {
LABEL_3:
      v4 = a1[4].i64[0];
      v5 = a1[4].i64[1];
      v6 = a1[5].u8[0];
      v7 = a2[4].i64[0];
      v8 = a2[4].i64[1];
      v9 = a2[5].u8[0];
      if (v6)
      {
        if (v6 != 1)
        {
          if (v4 | v5)
          {
            if (v9 != 2 || v7 != 1 || v8)
            {
              return 0;
            }
          }

          else if (v9 != 2 || v8 | v7)
          {
            return 0;
          }

          return 1;
        }

        if (v9 == 1)
        {
LABEL_16:
          if (v4 == v7 && v5 == v8 || (sub_1B0E46A78() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!a2[5].i8[0])
      {
        goto LABEL_16;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0D3FB38(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

unint64_t sub_1B0D3FB54()
{
  result = qword_1EB6E6FD0;
  if (!qword_1EB6E6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FD0);
  }

  return result;
}

uint64_t sub_1B0D3FBA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D3FBF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t static AuthenticatedURLVerifier.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1B0E46A78(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1B0E46A78();
    }
  }

  return result;
}

uint64_t AuthenticatedURLVerifier.urlAuthenticationMechanism.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AuthenticatedURLVerifier.encodedAuthenticationURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AuthenticatedURLVerifier.hash(into:)()
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t AuthenticatedURLVerifier.hashValue.getter()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3FEE0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3FF48()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0D3FF98()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D40000()
{
  result = qword_1EB6E6FD8;
  if (!qword_1EB6E6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FD8);
  }

  return result;
}

NIOIMAPCore2::AuthenticationMechanism __swiftcall AuthenticationMechanism.init(_:)(Swift::String a1)
{
  v1 = sub_1B0E44BB8();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result.rawValue._object = v5;
  result.rawValue._countAndFlagsBits = v4;
  return result;
}

uint64_t static AuthenticationMechanism.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t AuthenticationMechanism.hashValue.getter()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D4021C()
{
  result = qword_1EB6E6FE0;
  if (!qword_1EB6E6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FE0);
  }

  return result;
}

uint64_t String.init<A>(base64Encoding:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = static Base64.encodeString<A>(bytes:options:)(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v6;
}

unint64_t sub_1B0D40354()
{
  result = qword_1EB6E6FE8;
  if (!qword_1EB6E6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FE8);
  }

  return result;
}

unint64_t sub_1B0D403AC()
{
  result = qword_1EB6E6FF0;
  if (!qword_1EB6E6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FF0);
  }

  return result;
}

unint64_t sub_1B0D40404()
{
  result = qword_1EB6E6FF8;
  if (!qword_1EB6E6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FF8);
  }

  return result;
}

unint64_t sub_1B0D4045C()
{
  result = qword_1EB6E7000;
  if (!qword_1EB6E7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7000);
  }

  return result;
}

unint64_t sub_1B0D404B4()
{
  result = qword_1EB6E7008;
  if (!qword_1EB6E7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7008);
  }

  return result;
}

unint64_t sub_1B0D4050C()
{
  result = qword_1EB6E7010;
  if (!qword_1EB6E7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7010);
  }

  return result;
}

unint64_t sub_1B0D40564()
{
  result = qword_1EB6E7018;
  if (!qword_1EB6E7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7018);
  }

  return result;
}

unint64_t sub_1B0D405BC()
{
  result = qword_1EB6E7020;
  if (!qword_1EB6E7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7020);
  }

  return result;
}

uint64_t sub_1B0D40640(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

BOOL static MessageAttribute.BodyStructure.__derived_enum_equals(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[9];
  v94 = a1[8];
  v95 = v3;
  v96 = a1[10];
  v97 = *(a1 + 176);
  v4 = a1[5];
  v90 = a1[4];
  v91 = v4;
  v5 = a1[7];
  v92 = a1[6];
  v93 = v5;
  v6 = a1[1];
  v86 = *a1;
  v87 = v6;
  v7 = a1[3];
  v88 = a1[2];
  v89 = v7;
  if (sub_1B04FAE88(&v86) == 1)
  {
    v8 = a2[9];
    v118 = a2[8];
    v119 = v8;
    v120 = a2[10];
    v121 = *(a2 + 176);
    v9 = a2[5];
    v114 = a2[4];
    v115 = v9;
    v10 = a2[7];
    v116 = a2[6];
    v117 = v10;
    v11 = a2[1];
    v110 = *a2;
    v111 = v11;
    v12 = a2[3];
    v112 = a2[2];
    v113 = v12;
    return sub_1B04FAE88(&v110) == 1;
  }

  v106 = v94;
  v107 = v95;
  v108 = v96;
  v109 = v97;
  v102 = v90;
  v103 = v91;
  v104 = v92;
  v105 = v93;
  v98 = v86;
  v99 = v87;
  v100 = v88;
  v101 = v89;
  v14 = a2[9];
  v47 = a2[8];
  v48 = v14;
  v49 = a2[10];
  v50 = *(a2 + 176);
  v15 = a2[5];
  v43 = a2[4];
  v44 = v15;
  v16 = a2[7];
  v45 = a2[6];
  v46 = v16;
  v17 = a2[1];
  v39 = *a2;
  v40 = v17;
  v18 = a2[3];
  v41 = a2[2];
  v42 = v18;
  if (sub_1B04FAE88(&v39) == 1)
  {
    return 0;
  }

  v59 = v47;
  v60 = v48;
  v61 = v49;
  v62 = v50;
  v55 = v43;
  v56 = v44;
  v57 = v45;
  v58 = v46;
  v51 = v39;
  v52 = v40;
  v53 = v41;
  v54 = v42;
  v118 = v106;
  v119 = v107;
  v120 = v108;
  v121 = v109;
  v114 = v102;
  v115 = v103;
  v116 = v104;
  v117 = v105;
  v110 = v98;
  v111 = v99;
  v112 = v100;
  v113 = v101;
  if (sub_1B0717014(&v110) != 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v110);
    v28 = v27[9];
    v130 = v27[8];
    v131 = v28;
    v132 = v27[10];
    v29 = v27[5];
    v126 = v27[4];
    v127 = v29;
    v30 = v27[7];
    v128 = v27[6];
    v129 = v30;
    v31 = v27[1];
    v122 = *v27;
    v123 = v31;
    v32 = v27[3];
    v124 = v27[2];
    v125 = v32;
    v74 = v62;
    v72 = v60;
    v73 = v61;
    v70 = v58;
    v71 = v59;
    v68 = v56;
    v69 = v57;
    v66 = v54;
    v67 = v55;
    v64 = v52;
    v65 = v53;
    v63 = v51;
    if (sub_1B0717014(&v63) != 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v63);
      v34 = v33[9];
      v83 = v33[8];
      v84 = v34;
      v85 = v33[10];
      v35 = v33[5];
      v79 = v33[4];
      v80 = v35;
      v36 = v33[7];
      v81 = v33[6];
      v82 = v36;
      v37 = v33[1];
      v75 = *v33;
      v76 = v37;
      v38 = v33[3];
      v77 = v33[2];
      v78 = v38;
      return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v122, &v75);
    }

LABEL_10:
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v63);
    return 0;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v110);
  v20 = v19[5];
  v126 = v19[4];
  v127 = v20;
  v128 = v19[6];
  *&v129 = *(v19 + 14);
  v21 = v19[1];
  v122 = *v19;
  v123 = v21;
  v22 = v19[3];
  v124 = v19[2];
  v125 = v22;
  v71 = v59;
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v67 = v55;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v63 = v51;
  v64 = v52;
  v65 = v53;
  v66 = v54;
  if (sub_1B0717014(&v63) != 1)
  {
    goto LABEL_10;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v63);
  v24 = v23[5];
  v79 = v23[4];
  v80 = v24;
  v81 = v23[6];
  *&v82 = *(v23 + 14);
  v25 = v23[1];
  v75 = *v23;
  v76 = v25;
  v26 = v23[3];
  v77 = v23[2];
  v78 = v26;
  return _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(&v122, &v75);
}

uint64_t MessageAttribute.BodyStructure.hash(into:)(uint64_t a1)
{
  v3 = v1[9];
  v30 = v1[8];
  v31 = v3;
  v32 = v1[10];
  v33 = *(v1 + 176);
  v4 = v1[5];
  v26 = v1[4];
  v27 = v4;
  v5 = v1[7];
  v28 = v1[6];
  v29 = v5;
  v6 = v1[1];
  v22 = *v1;
  v23 = v6;
  v7 = v1[3];
  v24 = v1[2];
  v25 = v7;
  if (sub_1B04FAE88(&v22) == 1)
  {
    return MEMORY[0x1B2728D70](1);
  }

  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  MEMORY[0x1B2728D70](0);
  v46[8] = v42;
  v46[9] = v43;
  v46[10] = v44;
  v47 = v45;
  v46[4] = v38;
  v46[5] = v39;
  v46[6] = v40;
  v46[7] = v41;
  v46[0] = v34;
  v46[1] = v35;
  v46[2] = v36;
  v46[3] = v37;
  if (sub_1B0717014(v46) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v46);
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 72);
    v50 = *(v9 + 56);
    v51 = v13;
    v14 = *(v9 + 104);
    v52 = *(v9 + 88);
    v53 = v14;
    v15 = *(v9 + 40);
    v48 = *(v9 + 24);
    v49 = v15;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(a1, v10);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1B0D49DD8(a1);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v46);
    v17 = *v16;
    v18 = *(v16 + 24);
    v19 = *(v16 + 56);
    v56 = *(v16 + 40);
    v57 = v19;
    v58 = *(v16 + 72);
    v54 = *(v16 + 8);
    v55 = v18;
    v20 = *(v16 + 136);
    v50 = *(v16 + 120);
    v51 = v20;
    v52 = *(v16 + 152);
    *&v53 = *(v16 + 168);
    v21 = *(v16 + 104);
    v48 = *(v16 + 88);
    v49 = v21;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, v17);
    BodyStructure.Fields.hash(into:)();
    return sub_1B0D4A1BC(a1);
  }
}

uint64_t MessageAttribute.BodyStructure.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = v0[9];
  v29 = v0[8];
  v30 = v1;
  v31 = v0[10];
  v32 = *(v0 + 176);
  v2 = v0[5];
  v25 = v0[4];
  v26 = v2;
  v3 = v0[7];
  v27 = v0[6];
  v28 = v3;
  v4 = v0[1];
  v21 = *v0;
  v22 = v4;
  v5 = v0[3];
  v23 = v0[2];
  v24 = v5;
  if (sub_1B04FAE88(&v21) == 1)
  {
    MEMORY[0x1B2728D70](1);
  }

  else
  {
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    MEMORY[0x1B2728D70](0);
    v45[8] = v41;
    v45[9] = v42;
    v45[10] = v43;
    v46 = v44;
    v45[4] = v37;
    v45[5] = v38;
    v45[6] = v39;
    v45[7] = v40;
    v45[0] = v33;
    v45[1] = v34;
    v45[2] = v35;
    v45[3] = v36;
    if (sub_1B0717014(v45) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v45);
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      v10 = *(v6 + 72);
      v49 = *(v6 + 56);
      v50 = v10;
      v11 = *(v6 + 104);
      v51 = *(v6 + 88);
      v52 = v11;
      v12 = *(v6 + 40);
      v47 = *(v6 + 24);
      v48 = v12;
      MEMORY[0x1B2728D70](1);
      sub_1B0D48CF0(v20, v7);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1B0D49DD8(v20);
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v45);
      v14 = *v13;
      v15 = *(v13 + 24);
      v16 = *(v13 + 56);
      v55 = *(v13 + 40);
      v56 = v16;
      v57 = *(v13 + 72);
      v53 = *(v13 + 8);
      v54 = v15;
      v17 = *(v13 + 136);
      v49 = *(v13 + 120);
      v50 = v17;
      v51 = *(v13 + 152);
      *&v52 = *(v13 + 168);
      v18 = *(v13 + 104);
      v47 = *(v13 + 88);
      v48 = v18;
      MEMORY[0x1B2728D70](0);
      BodyStructure.Singlepart.Kind.hash(into:)(v20, v14);
      BodyStructure.Fields.hash(into:)();
      sub_1B0D4A1BC(v20);
    }
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D40E9C(uint64_t a1)
{
  v3 = v1[9];
  v45 = v1[8];
  v46 = v3;
  v47 = v1[10];
  v48 = *(v1 + 176);
  v4 = v1[5];
  v41 = v1[4];
  v42 = v4;
  v5 = v1[7];
  v43 = v1[6];
  v44 = v5;
  v6 = v1[1];
  v37 = *v1;
  v38 = v6;
  v7 = v1[3];
  v39 = v1[2];
  v40 = v7;
  if (sub_1B04FAE88(&v37) == 1)
  {
    return MEMORY[0x1B2728D70](1);
  }

  MEMORY[0x1B2728D70](0);
  v24[8] = v45;
  v24[9] = v46;
  v24[10] = v47;
  v25 = v48;
  v24[4] = v41;
  v24[5] = v42;
  v24[6] = v43;
  v24[7] = v44;
  v24[0] = v37;
  v24[1] = v38;
  v24[2] = v39;
  v24[3] = v40;
  if (sub_1B0717014(v24) == 1)
  {
    v9 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v24);
    v11 = v10;
    MEMORY[0x1B2728D70](1, v9);
    sub_1B0D48CF0(a1, *v11);
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v14 = *(v11 + 72);
    v33 = *(v11 + 56);
    v34 = v14;
    v15 = *(v11 + 104);
    v35 = *(v11 + 88);
    v36 = v15;
    v16 = *(v11 + 40);
    v31 = *(v11 + 24);
    v32 = v16;
    return sub_1B0D49DD8(a1);
  }

  else
  {
    v17 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v24);
    v19 = v18;
    MEMORY[0x1B2728D70](0, v17);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, *v19);
    v20 = *(v19 + 24);
    v21 = *(v19 + 56);
    v28 = *(v19 + 40);
    v29 = v21;
    v30 = *(v19 + 72);
    v26 = *(v19 + 8);
    v27 = v20;
    BodyStructure.Fields.hash(into:)();
    v22 = *(v19 + 136);
    v33 = *(v19 + 120);
    v34 = v22;
    v35 = *(v19 + 152);
    *&v36 = *(v19 + 168);
    v23 = *(v19 + 104);
    v31 = *(v19 + 88);
    v32 = v23;
    return sub_1B0D4A1BC(a1);
  }
}

uint64_t sub_1B0D41060()
{
  sub_1B0E46C28();
  v1 = v0[9];
  v44 = v0[8];
  v45 = v1;
  v46 = v0[10];
  v47 = *(v0 + 176);
  v2 = v0[5];
  v40 = v0[4];
  v41 = v2;
  v3 = v0[7];
  v42 = v0[6];
  v43 = v3;
  v4 = v0[1];
  v36 = *v0;
  v37 = v4;
  v5 = v0[3];
  v38 = v0[2];
  v39 = v5;
  if (sub_1B04FAE88(&v36) == 1)
  {
    MEMORY[0x1B2728D70](1);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    v22[8] = v44;
    v22[9] = v45;
    v22[10] = v46;
    v23 = v47;
    v22[4] = v40;
    v22[5] = v41;
    v22[6] = v42;
    v22[7] = v43;
    v22[0] = v36;
    v22[1] = v37;
    v22[2] = v38;
    v22[3] = v39;
    if (sub_1B0717014(v22) == 1)
    {
      v6 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v22);
      v8 = v7;
      MEMORY[0x1B2728D70](1, v6);
      sub_1B0D48CF0(v24, *v8);
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v11 = *(v8 + 72);
      v32 = *(v8 + 56);
      v33 = v11;
      v12 = *(v8 + 104);
      v34 = *(v8 + 88);
      v35 = v12;
      v13 = *(v8 + 40);
      v30 = *(v8 + 24);
      v31 = v13;
      sub_1B0D49DD8(v24);
    }

    else
    {
      v14 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v22);
      v16 = v15;
      MEMORY[0x1B2728D70](0, v14);
      BodyStructure.Singlepart.Kind.hash(into:)(v24, *v16);
      v17 = *(v16 + 24);
      v18 = *(v16 + 56);
      v27 = *(v16 + 40);
      v28 = v18;
      v29 = *(v16 + 72);
      v25 = *(v16 + 8);
      v26 = v17;
      BodyStructure.Fields.hash(into:)();
      v19 = *(v16 + 136);
      v32 = *(v16 + 120);
      v33 = v19;
      v34 = *(v16 + 152);
      *&v35 = *(v16 + 168);
      v20 = *(v16 + 104);
      v30 = *(v16 + 88);
      v31 = v20;
      sub_1B0D4A1BC(v24);
    }
  }

  return sub_1B0E46CB8();
}

BOOL sub_1B0D4122C(__int128 *a1, __int128 *a2)
{
  v3 = a1[9];
  v95 = a1[8];
  v96 = v3;
  v97 = a1[10];
  v98 = *(a1 + 176);
  v4 = a1[5];
  v91 = a1[4];
  v92 = v4;
  v5 = a1[7];
  v93 = a1[6];
  v94 = v5;
  v6 = a1[1];
  v87 = *a1;
  v88 = v6;
  v7 = a1[3];
  v89 = a1[2];
  v90 = v7;
  if (sub_1B04FAE88(&v87) == 1)
  {
    v8 = a2[9];
    v61 = a2[8];
    v62 = v8;
    v63 = a2[10];
    v64 = *(a2 + 176);
    v9 = a2[5];
    v57 = a2[4];
    v58 = v9;
    v10 = a2[7];
    v59 = a2[6];
    v60 = v10;
    v11 = a2[1];
    v53 = *a2;
    v54 = v11;
    v12 = a2[3];
    v55 = a2[2];
    v56 = v12;
    return sub_1B04FAE88(&v53) == 1;
  }

  v14 = a2[9];
  v61 = a2[8];
  v62 = v14;
  v63 = a2[10];
  v64 = *(a2 + 176);
  v15 = a2[5];
  v57 = a2[4];
  v58 = v15;
  v16 = a2[7];
  v59 = a2[6];
  v60 = v16;
  v17 = a2[1];
  v53 = *a2;
  v54 = v17;
  v18 = a2[3];
  v55 = a2[2];
  v56 = v18;
  if (sub_1B04FAE88(&v53) == 1)
  {
    return 0;
  }

  v51[8] = v95;
  v51[9] = v96;
  v51[10] = v97;
  v52 = v98;
  v51[4] = v91;
  v51[5] = v92;
  v51[6] = v93;
  v51[7] = v94;
  v51[0] = v87;
  v51[1] = v88;
  v51[2] = v89;
  v51[3] = v90;
  if (sub_1B0717014(v51) != 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v51);
    v28 = v27[9];
    v73 = v27[8];
    v74 = v28;
    v75 = v27[10];
    v29 = v27[5];
    v69 = v27[4];
    v70 = v29;
    v30 = v27[7];
    v71 = v27[6];
    v72 = v30;
    v31 = v27[1];
    v65 = *v27;
    v66 = v31;
    v32 = v27[3];
    v67 = v27[2];
    v68 = v32;
    v50 = v64;
    v48 = v62;
    v49 = v63;
    v46 = v60;
    v47 = v61;
    v44 = v58;
    v45 = v59;
    v42 = v56;
    v43 = v57;
    v40 = v54;
    v41 = v55;
    v39 = v53;
    if (sub_1B0717014(&v39) != 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v39);
      v34 = v33[9];
      v84 = v33[8];
      v85 = v34;
      v86 = v33[10];
      v35 = v33[5];
      v80 = v33[4];
      v81 = v35;
      v36 = v33[7];
      v82 = v33[6];
      v83 = v36;
      v37 = v33[1];
      v76 = *v33;
      v77 = v37;
      v38 = v33[3];
      v78 = v33[2];
      v79 = v38;
      return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v65, &v76);
    }

LABEL_10:
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v39);
    return 0;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v51);
  v20 = v19[5];
  v69 = v19[4];
  v70 = v20;
  v71 = v19[6];
  *&v72 = *(v19 + 14);
  v21 = v19[1];
  v65 = *v19;
  v66 = v21;
  v22 = v19[3];
  v67 = v19[2];
  v68 = v22;
  v47 = v61;
  v48 = v62;
  v49 = v63;
  v50 = v64;
  v43 = v57;
  v44 = v58;
  v45 = v59;
  v46 = v60;
  v39 = v53;
  v40 = v54;
  v41 = v55;
  v42 = v56;
  if (sub_1B0717014(&v39) != 1)
  {
    goto LABEL_10;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v39);
  v24 = v23[5];
  v80 = v23[4];
  v81 = v24;
  v82 = v23[6];
  *&v83 = *(v23 + 14);
  v25 = v23[1];
  v76 = *v23;
  v77 = v25;
  v26 = v23[3];
  v78 = v23[2];
  v79 = v26;
  return _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(&v65, &v76);
}

uint64_t BodyStructure.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 144);
  v22[8] = *(v1 + 128);
  v22[9] = v3;
  v22[10] = *(v1 + 160);
  v23 = *(v1 + 176);
  v4 = *(v1 + 80);
  v22[4] = *(v1 + 64);
  v22[5] = v4;
  v5 = *(v1 + 112);
  v22[6] = *(v1 + 96);
  v22[7] = v5;
  v6 = *(v1 + 16);
  v22[0] = *v1;
  v22[1] = v6;
  v7 = *(v1 + 48);
  v22[2] = *(v1 + 32);
  v22[3] = v7;
  if (sub_1B0717014(v22) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v22);
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    v12 = *(v8 + 72);
    v26 = *(v8 + 56);
    v27 = v12;
    v13 = *(v8 + 104);
    v28 = *(v8 + 88);
    v29 = v13;
    v14 = *(v8 + 40);
    v24 = *(v8 + 24);
    v25 = v14;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(a1, v9);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1B0D49DD8(a1);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v22);
    v17 = *v16;
    v18 = *(v16 + 24);
    v19 = *(v16 + 56);
    v32 = *(v16 + 40);
    v33 = v19;
    v34 = *(v16 + 72);
    v30 = *(v16 + 8);
    v31 = v18;
    v20 = *(v16 + 136);
    v26 = *(v16 + 120);
    v27 = v20;
    v28 = *(v16 + 152);
    *&v29 = *(v16 + 168);
    v21 = *(v16 + 104);
    v24 = *(v16 + 88);
    v25 = v21;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, v17);
    BodyStructure.Fields.hash(into:)();
    return sub_1B0D4A1BC(a1);
  }
}

uint64_t BodyStructure.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = *(v0 + 144);
  v21[8] = *(v0 + 128);
  v21[9] = v1;
  v21[10] = *(v0 + 160);
  v22 = *(v0 + 176);
  v2 = *(v0 + 80);
  v21[4] = *(v0 + 64);
  v21[5] = v2;
  v3 = *(v0 + 112);
  v21[6] = *(v0 + 96);
  v21[7] = v3;
  v4 = *(v0 + 16);
  v21[0] = *v0;
  v21[1] = v4;
  v5 = *(v0 + 48);
  v21[2] = *(v0 + 32);
  v21[3] = v5;
  if (sub_1B0717014(v21) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v21);
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v6 + 72);
    v25 = *(v6 + 56);
    v26 = v10;
    v11 = *(v6 + 104);
    v27 = *(v6 + 88);
    v28 = v11;
    v12 = *(v6 + 40);
    v23 = *(v6 + 24);
    v24 = v12;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(v20, v7);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D49DD8(v20);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v21);
    v14 = *v13;
    v15 = *(v13 + 24);
    v16 = *(v13 + 56);
    v31 = *(v13 + 40);
    v32 = v16;
    v33 = *(v13 + 72);
    v29 = *(v13 + 8);
    v30 = v15;
    v17 = *(v13 + 136);
    v25 = *(v13 + 120);
    v26 = v17;
    v27 = *(v13 + 152);
    *&v28 = *(v13 + 168);
    v18 = *(v13 + 104);
    v23 = *(v13 + 88);
    v24 = v18;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(v20, v14);
    BodyStructure.Fields.hash(into:)();
    sub_1B0D4A1BC(v20);
  }

  return sub_1B0E46CB8();
}