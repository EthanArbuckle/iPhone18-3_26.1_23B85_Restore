uint64_t sub_1ADE4DC50(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1AE23E00C() & 1) == 0)
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

void sub_1ADE4DD20(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t))
{
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v7 = sub_1AE23C32C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32[-v13];
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16) || !v15 || a1 == a2)
  {
    return;
  }

  v16 = (a1 + 32);
  v17 = a2 + 32;
  v37 = v7;
  v38 = (v12 + 8);
  while (1)
  {
    if (*v16 == *v17)
    {
      v22 = *v16;

      goto LABEL_13;
    }

    v18 = *(*v16 + 16);
    v19 = *(*v17 + 16);
    v20 = v19 & 0xF000000000000007;
    if ((~v18 & 0xF000000000000007) == 0)
    {
      if (v20 != 0xF000000000000007)
      {
        break;
      }

      v21 = *v16;
      swift_retain_n();
      swift_retain_n();
      v7 = v37;
      goto LABEL_12;
    }

    if (v20 == 0xF000000000000007)
    {
      break;
    }

    v23 = *v16;
    swift_retain_n();
    swift_retain_n();
    v24 = v14;
    v25 = v10;
    v26 = v34;
    v34(v19);
    v26(v18);
    v10 = v25;
    v14 = v24;
    v33 = v35(v18, v19);

    v27 = v19;
    v28 = v36;
    v36(v27);
    v28(v18);
    v7 = v37;
    if ((v33 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_12:

LABEL_13:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v29 = sub_1AE23CCBC();

    v30 = *v38;
    (*v38)(v10, v7);
    v30(v14, v7);
    if (v29)
    {
      ++v16;
      v17 += 8;
      if (--v15)
      {
        continue;
      }
    }

    return;
  }

  v31 = *v16;
  swift_retain_n();
  swift_retain_n();
LABEL_18:
}

void sub_1ADE4E034(uint64_t a1, uint64_t a2)
{
  v58 = sub_1AE23C32C();
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v53 - v8;
  v9 = *(a1 + 16);
  if (v9 != *(a2 + 16) || !v9 || a1 == a2)
  {
    return;
  }

  v54 = (v7 + 8);
  v55 = 0;
  v10 = (a2 + 64);
  v11 = (a1 + 64);
  while (v9)
  {
    if (*(v11 - 4) != *(v10 - 4))
    {
      return;
    }

    v12 = *(v11 - 2);
    v13 = *(v11 - 1);
    v14 = *v11;
    v64 = *(v11 - 3);
    v65 = v13;
    v16 = *(v10 - 3);
    v15 = *(v10 - 2);
    v18 = *(v10 - 1);
    v17 = *v10;
    v19 = v12 >> 62;
    v62 = *v10;
    v63 = v15;
    v20 = v15 >> 62;
    if (v12 >> 62 == 3)
    {
      v21 = 0;
      if (!v64 && v12 == 0xC000000000000000 && v20 >= 3)
      {
        v21 = 0;
        if (!v16 && v63 == 0xC000000000000000)
        {
          sub_1ADDD86D8(0, 0xC000000000000000);
          sub_1ADDD86D8(v65, v14);
          v22 = 0;
          v23 = 0xC000000000000000;
          goto LABEL_35;
        }
      }
    }

    else if (v19)
    {
      if (v19 == 1)
      {
        LODWORD(v21) = HIDWORD(v64) - v64;
        if (__OFSUB__(HIDWORD(v64), v64))
        {
          goto LABEL_72;
        }

        v21 = v21;
      }

      else
      {
        v25 = *(v64 + 16);
        v24 = *(v64 + 24);
        v26 = __OFSUB__(v24, v25);
        v21 = v24 - v25;
        if (v26)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
      v21 = BYTE6(v12);
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        if (v21)
        {
          return;
        }

LABEL_34:
        sub_1ADDD86D8(v64, v12);
        sub_1ADDD86D8(v65, v14);
        v22 = v16;
        v23 = v63;
LABEL_35:
        sub_1ADDD86D8(v22, v23);
        sub_1ADDD86D8(v18, v17);
        goto LABEL_36;
      }

      v29 = *(v16 + 16);
      v28 = *(v16 + 24);
      v26 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v26)
      {
        goto LABEL_69;
      }
    }

    else if (v20)
    {
      LODWORD(v27) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_68;
      }

      v27 = v27;
    }

    else
    {
      v27 = BYTE6(v63);
    }

    if (v21 != v27)
    {
      return;
    }

    if (v21 < 1)
    {
      goto LABEL_34;
    }

    v30 = v64;
    sub_1ADDD86D8(v64, v12);
    sub_1ADDD86D8(v65, v14);
    v31 = v63;
    sub_1ADDD86D8(v16, v63);
    sub_1ADDD86D8(v18, v17);
    sub_1ADDD86D8(v16, v31);
    v32 = v55;
    v33 = sub_1ADDD1544(v30, v12, v16, v31);
    v55 = v32;
    if ((v33 & 1) == 0)
    {
      goto LABEL_65;
    }

    v17 = v62;
LABEL_36:
    v34 = v14 >> 62;
    v35 = v17 >> 62;
    if (v14 >> 62 == 3)
    {
      v36 = 0;
      if (!v65 && v14 == 0xC000000000000000 && v17 >> 62 == 3)
      {
        v36 = 0;
        if (!v18 && v17 == 0xC000000000000000)
        {
          goto LABEL_62;
        }
      }

LABEL_49:
      if (v35 <= 1)
      {
        goto LABEL_50;
      }

      goto LABEL_55;
    }

    if (v34 == 2)
    {
      v38 = *(v65 + 16);
      v37 = *(v65 + 24);
      v26 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (v26)
      {
        goto LABEL_75;
      }

      goto LABEL_49;
    }

    if (v34 == 1)
    {
      LODWORD(v36) = HIDWORD(v65) - v65;
      if (__OFSUB__(HIDWORD(v65), v65))
      {
        goto LABEL_74;
      }

      v36 = v36;
      if (v35 <= 1)
      {
LABEL_50:
        if (v35)
        {
          LODWORD(v39) = HIDWORD(v18) - v18;
          if (__OFSUB__(HIDWORD(v18), v18))
          {
            goto LABEL_70;
          }

          v39 = v39;
        }

        else
        {
          v39 = BYTE6(v17);
        }

        goto LABEL_57;
      }
    }

    else
    {
      v36 = BYTE6(v14);
      if (v35 <= 1)
      {
        goto LABEL_50;
      }
    }

LABEL_55:
    if (v35 != 2)
    {
      if (v36)
      {
        goto LABEL_65;
      }

      goto LABEL_62;
    }

    v41 = *(v18 + 16);
    v40 = *(v18 + 24);
    v26 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (v26)
    {
      goto LABEL_71;
    }

LABEL_57:
    if (v36 != v39 || v36 >= 1 && (v42 = v62, sub_1ADDD86D8(v18, v62), v43 = v42, v44 = v55, v45 = sub_1ADDD1544(v65, v14, v18, v43), v55 = v44, (v45 & 1) == 0))
    {
LABEL_65:
      sub_1ADDCC35C(v16, v63);
      sub_1ADDCC35C(v18, v62);
      sub_1ADDCC35C(v64, v12);
      sub_1ADDCC35C(v65, v14);
      return;
    }

LABEL_62:
    v60 = v16;
    v61 = v12;
    v46 = v14;
    v47 = v9;
    v48 = v56;
    sub_1AE23C31C();
    v49 = v57;
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v50 = v58;
    v59 = sub_1AE23CCBC();
    v51 = v18;
    v52 = *v54;
    (*v54)(v49, v50);
    v52(v48, v50);
    sub_1ADDCC35C(v60, v63);
    sub_1ADDCC35C(v51, v62);
    sub_1ADDCC35C(v64, v61);
    sub_1ADDCC35C(v65, v46);
    if (v59)
    {
      v10 += 5;
      v11 += 5;
      v9 = v47 - 1;
      if (v47 != 1)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
}

void sub_1ADE4E544(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12)
    {
      if (a1 != a2)
      {
        v13 = a2 + 32;
        v24 = a1 + 32;
        v14 = *(a1 + 32);
        v15 = *(a2 + 32);
        v16 = *(v14 + 16);
        if (v16 == *(v15 + 16))
        {
          v17 = (v9 + 8);
          v18 = 1;
          while (!v16 || v14 == v15)
          {
LABEL_11:

            sub_1AE23C31C();
            sub_1AE23C31C();
            sub_1ADE51EAC();
            v21 = sub_1AE23CCBC();

            v22 = *v17;
            (*v17)(v7, v4);
            v22(v11, v4);
            if ((v21 & 1) != 0 && v18 != v12)
            {
              v14 = *(v24 + 8 * v18);
              v15 = *(v13 + 8 * v18++);
              v16 = *(v14 + 16);
              if (v16 == *(v15 + 16))
              {
                continue;
              }
            }

            return;
          }

          v19 = (v14 + 32);
          v20 = (v15 + 32);
          while (*v19 == *v20)
          {
            ++v19;
            ++v20;
            if (!--v16)
            {
              goto LABEL_11;
            }
          }
        }
      }
    }
  }
}

void sub_1ADE4E77C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v23 = a3;
  v5 = sub_1AE23C32C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16) && v13 && a1 != a2)
  {
    v14 = (a1 + 32);
    v15 = (a2 + 32);
    v16 = (v10 + 8);
    while (1)
    {
      v17 = *v14;
      v18 = *v15;

      if (v17 != v18)
      {

        v19 = v23(v17, v18);

        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v20 = sub_1AE23CCBC();

      v21 = *v16;
      (*v16)(v8, v5);
      v21(v12, v5);
      if (v20)
      {
        ++v14;
        ++v15;
        if (--v13)
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_1ADE4E9A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v46 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16) || !v12 || a1 == a2)
  {
    return;
  }

  v48 = v7;
  v49 = v9;
  v13 = 0;
  v52 = a1 + 32;
  v50 = 0;
  v51 = a2 + 32;
  v47 = (v8 + 8);
  while (v13 != v12)
  {
    v14 = (v52 + 24 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    v18 = (v51 + 24 * v13);
    v20 = *v18;
    v19 = v18[1];
    v21 = v18[2];
    v22 = v15 >> 62;
    v23 = v19 >> 62;
    if (v15 >> 62 == 3)
    {
      if (v16)
      {
        v24 = 0;
      }

      else
      {
        v24 = v15 == 0xC000000000000000;
      }

      if (v24 && v19 >> 62 == 3 && !v20 && v19 == 0xC000000000000000)
      {
        sub_1ADDD86D8(0, 0xC000000000000000);

        v35 = 0;
        v36 = 0xC000000000000000;
        goto LABEL_42;
      }

      v27 = 0;
    }

    else if (v22)
    {
      if (v22 == 1)
      {
        LODWORD(v27) = HIDWORD(v16) - v16;
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_59;
        }

        v27 = v27;
      }

      else
      {
        v29 = *(v16 + 16);
        v28 = *(v16 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      v27 = BYTE6(v15);
    }

    if (v23 > 1)
    {
      if (v23 != 2)
      {
        if (v27)
        {
          return;
        }

LABEL_40:
        sub_1ADDD86D8(v16, v15);

        v35 = v20;
        v36 = v19;
LABEL_42:
        sub_1ADDD86D8(v35, v36);

        goto LABEL_43;
      }

      v33 = *(v20 + 16);
      v32 = *(v20 + 24);
      v30 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v30)
      {
        goto LABEL_56;
      }
    }

    else if (v23)
    {
      LODWORD(v31) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_57;
      }

      v31 = v31;
    }

    else
    {
      v31 = BYTE6(v19);
    }

    if (v27 != v31)
    {
      return;
    }

    if (v27 < 1)
    {
      goto LABEL_40;
    }

    sub_1ADDD86D8(v16, v15);

    sub_1ADDD86D8(v20, v19);

    sub_1ADDD86D8(v20, v19);
    v34 = v50;
    if ((sub_1ADDD1544(v16, v15, v20, v19) & 1) == 0)
    {
      goto LABEL_53;
    }

    v50 = v34;
LABEL_43:
    v37 = *(v17 + 16);
    if (v37 != *(v21 + 16))
    {
      goto LABEL_53;
    }

    if (v37 && v17 != v21)
    {
      v38 = 32;
      while (*(v17 + v38) == *(v21 + v38))
      {
        v38 += 8;
        if (!--v37)
        {
          goto LABEL_49;
        }
      }

LABEL_53:
      sub_1ADDCC35C(v20, v19);

      sub_1ADDCC35C(v16, v15);

      return;
    }

LABEL_49:
    v56 = v19;
    v39 = v13;
    sub_1AE23C31C();
    v54 = v20;
    v40 = v11;
    v41 = v49;
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v42 = v48;
    v55 = sub_1AE23CCBC();
    v53 = v17;
    v43 = v16;
    v44 = *v47;
    v45 = v41;
    v11 = v40;
    (*v47)(v45, v42);
    v44(v40, v42);
    sub_1ADDCC35C(v54, v56);

    sub_1ADDCC35C(v43, v15);

    if (v55)
    {
      v13 = v39 + 1;
      if (v39 + 1 != v12)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

uint64_t sub_1ADE4ED9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v11 = 1;
    }

    else
    {
      v3 = (a2 + 48);
      v4 = (a1 + 48);
      do
      {
        v6 = *(v4 - 1);
        v5 = *v4;
        v7 = *(v4 - 2);
        v8 = *(v3 - 2);
        v9 = *(v3 - 1);
        v10 = *v3;

        v11 = sub_1ADE9C460(v7, v6, v5, v8, v9, v10);

        if ((v11 & 1) == 0)
        {
          break;
        }

        v3 += 3;
        v4 += 3;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1ADE4EED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a5 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v9;
  if ((result & 1) == 0)
  {
    result = sub_1ADE559C8(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *(a5 + 16) = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_1ADE559C8((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = (v9 + 24 * v12);
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  *(a5 + 16) = v9;
  return result;
}

uint64_t sub_1ADE4EFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  swift_unknownObjectRetain();
  v10(a2, a3, a4, a5);

  return swift_unknownObjectRelease();
}

uint64_t CRString.Cursor.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Timestamp(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = *(a1 + 72);
  if (!v12)
  {
    v15 = 0x80000001AE25FB70;
    sub_1ADE42E40();
    swift_allocError();
    v17 = 0xD000000000000017;
    goto LABEL_8;
  }

  v13 = *(v12 + 16);
  v14 = (~v13 & 0xF000000000000007) != 0 && ((v13 >> 59) & 0x1E | (v13 >> 2) & 1) == 13;
  if (!v14 || (v19 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x18), *(v19 + 16) != 2))
  {
    v15 = 0x80000001AE25FB90;
    sub_1ADE42E40();
    swift_allocError();
    v17 = 0xD00000000000001ALL;
LABEL_8:
    *v16 = v17;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v20 = *(*(v19 + 32) + 16);
  v21 = (~v20 & 0xF000000000000007);

  if (v21)
  {
    if (((v20 >> 59) & 0x1E | (v20 >> 2) & 1) == 9)
    {
      v23 = v20 & 0xFFFFFFFFFFFFFFBLL;
      v22 = *((v20 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v21 = *(v23 + 24);
    }

    else
    {
      v22 = 0;
      v21 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  result = sub_1ADE017C0(v22, v21, a1, v11);
  if (v2)
  {
  }

  v24 = *(a1 + 72);
  if (v24)
  {
    v25 = *(v24 + 16);
    if ((~v25 & 0xF000000000000007) != 0 && ((v25 >> 59) & 0x1E | (v25 >> 2) & 1) == 0xD)
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    if (*(v26 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v27 = *(v26 + 40);

      v28 = *(v27 + 16);
      if ((~v28 & 0xF000000000000007) != 0 && !((v28 >> 59) & 0x1E | (v28 >> 2) & 1))
      {
        v22 = *(v28 + 16);
      }

      else
      {
        v22 = 0;
      }

      sub_1ADDF8030(v11, v8, type metadata accessor for Timestamp);
      v29 = type metadata accessor for ObjCTimestamp(0);
      v30 = objc_allocWithZone(v29);
      sub_1ADDF8030(v8, v30 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp, type metadata accessor for Timestamp);
      v33.receiver = v30;
      v33.super_class = v29;
      v21 = objc_msgSendSuper2(&v33, sel_init);
      sub_1ADDE52A0(v8, type metadata accessor for Timestamp);
      if (qword_1ED96B308 == -1)
      {
        goto LABEL_27;
      }
    }

    swift_once();
LABEL_27:
    v31 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    v32 = [objc_allocWithZone(_TtC9Coherence24CRTTMergeableStringIndex) initWithTimestamp:v21 affinity:v22 renameGeneration:v34];

    result = sub_1ADDE52A0(v11, type metadata accessor for Timestamp);
    *a2 = v32;
    return result;
  }

  __break(1u);
  return result;
}

void CRString.Cursor.encode(to:)(uint64_t a1)
{
  v4 = type metadata accessor for Replica();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Timestamp(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  objc_opt_self();
  if ([swift_dynamicCastObjCClassUnconditional() needToFinalizeTimestamps])
  {
    v13 = *(a1 + 16);
    objc_opt_self();
    v47 = [swift_dynamicCastObjCClassUnconditional() finalizedInContext_];
    v14 = v47;
    CRString.Cursor.encode(to:)(a1);
  }

  else
  {
    v15 = sub_1ADE71C08();
    if (!v2)
    {
      v16 = v15;
      v46[2] = 0;
      v46[1] = type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
      objc_opt_self();
      v18 = swift_dynamicCastObjCClassUnconditional();

      v19 = [v18 timestamp];
      type metadata accessor for ObjCTimestamp(0);
      v20 = swift_dynamicCastClassUnconditional();
      sub_1ADDF8030(v20 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp, v11, type metadata accessor for Timestamp);

      sub_1ADDF8030(v11, v7, type metadata accessor for Replica);
      v21 = sub_1ADDF66A8(v7);
      v22 = sub_1AE23BFEC();
      (*(*(v22 - 8) + 8))(v7, v22);
      v23 = *&v11[*(v8 + 20)];
      sub_1ADDE52A0(v11, type metadata accessor for Timestamp);
      v24 = inited;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = swift_allocObject();
        v25 = *(inited + 16);
        *(v24 + 16) = v25;
        sub_1ADE51B2C(v25);
      }

      v26 = swift_allocObject();
      *(v26 + 16) = v21;
      *(v26 + 24) = v23;
      v27 = v26 | 0x4000000000000004;
      v28 = *(v24 + 16);
      *(v24 + 16) = v27;
      sub_1ADE51B48(v28);
      swift_beginAccess();
      v29 = *(*(v16 + 24) + 16);
      if ((~v29 & 0xF000000000000007) != 0 && ((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0xD)
      {
        v30 = v29 & 0xFFFFFFFFFFFFFFBLL;
        v32 = *(v30 + 16);
        v31 = *(v30 + 24);
      }

      else
      {
        v32 = MEMORY[0x1E69E7CC0];
        v31 = MEMORY[0x1E69E7CC0];
      }

      v48 = v31;

      MEMORY[0x1B26FB860](v33);
      if (*(v48 + 16) >= *(v48 + 24) >> 1)
      {
        v44 = *(v48 + 16);
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      sub_1AE1B6BF8(v32, v48);
      swift_endAccess();
      objc_opt_self();
      v34 = [swift_dynamicCastObjCClassUnconditional() affinity];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = swift_allocObject();
        v36 = *(inited + 16);
        *(v35 + 16) = v36;
        sub_1ADE51B2C(v36);

        inited = v35;
      }

      v37 = swift_allocObject();
      *(v37 + 16) = v34;
      v38 = *(inited + 16);
      *(inited + 16) = v37;
      sub_1ADE51B48(v38);
      swift_beginAccess();
      v39 = *(*(v16 + 24) + 16);
      if ((~v39 & 0xF000000000000007) != 0 && ((v39 >> 59) & 0x1E | (v39 >> 2) & 1) == 0xD)
      {
        v40 = v39 & 0xFFFFFFFFFFFFFFBLL;
        v42 = *(v40 + 16);
        v41 = *(v40 + 24);
      }

      else
      {
        v42 = MEMORY[0x1E69E7CC0];
        v41 = MEMORY[0x1E69E7CC0];
      }

      v48 = v41;

      MEMORY[0x1B26FB860](v43);
      if (*(v48 + 16) >= *(v48 + 24) >> 1)
      {
        v45 = *(v48 + 16);
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      sub_1AE1B6BF8(v42, v48);
      swift_endAccess();
    }
  }
}

void CRString.Cursor.finalizeTimestamps(_:)(uint64_t a1)
{
  v3 = *v1;
  objc_opt_self();
  v4 = [swift_dynamicCastObjCClassUnconditional() finalizedInContext_];

  *v1 = v4;
}

Swift::Bool __swiftcall CRString.Cursor.needToFinalizeTimestamps()()
{
  v1 = *v0;
  objc_opt_self();
  return [swift_dynamicCastObjCClassUnconditional() needToFinalizeTimestamps];
}

uint64_t static CRString.Cursor.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1ADDEE524(0, &qword_1ED966B40, 0x1E69E58C0);
  return sub_1AE23D78C() & 1;
}

uint64_t sub_1ADE4FB0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1ADDEE524(0, &qword_1ED966B40, 0x1E69E58C0);
  return sub_1AE23D78C() & 1;
}

id sub_1ADE4FB68()
{
  v1 = *v0;
  objc_opt_self();
  return [swift_dynamicCastObjCClassUnconditional() needToFinalizeTimestamps];
}

void sub_1ADE4FBB8(uint64_t a1)
{
  v3 = *v1;
  objc_opt_self();
  v4 = [swift_dynamicCastObjCClassUnconditional() finalizedInContext_];

  *v1 = v4;
}

Coherence::CRString::Cursor __swiftcall CRString.cursor(at:affinity:)(Swift::Int at, Coherence::CRAffinity affinity)
{
  v6 = v2;
  v8 = *(*v3 + 16);
  sub_1ADE4FCD8(v8, at, affinity, v6);

  return result;
}

id sub_1ADE4FCD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  v8 = a3;
  v9 = [a1 length];
  if (!v8)
  {
    if (v9 <= a2)
    {
      goto LABEL_10;
    }

    v10 = 2;
    goto LABEL_7;
  }

  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 + 1 > a2)
  {
    v10 = a3 == 2;
LABEL_7:
    result = [a1 mergeableIndexForCharacterIndex:a2 affinity:v10];
    if (result)
    {
      *a4 = result;
      return result;
    }
  }

LABEL_10:
  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

void CRString.cursor(range:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(*v3 + 16);
  sub_1ADE4FE3C(v7, a1, a2, a3);
}

void sub_1ADE4FE3C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2 < 0)
  {
    goto LABEL_15;
  }

  v8 = [a1 length];
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v8 + 1 <= a3)
  {
    goto LABEL_15;
  }

  v9 = [a1 mergeableIndexForCharacterIndex:a3 affinity:0];
  if (!v9)
  {
    goto LABEL_15;
  }

  if (__OFSUB__(a3, a2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a3 != a2)
  {
    v11 = v9;
    v12 = [a1 mergeableIndexForCharacterIndex:a2 affinity:1];
    if (v12)
    {
      v13 = v12;

      *a4 = v13;
      a4[1] = v11;
      return;
    }

    while (1)
    {
LABEL_15:
      sub_1AE23DC5C();
      __break(1u);
    }
  }

  *a4 = v9;
  a4[1] = v9;

  v10 = v9;
}

Swift::Int_optional __swiftcall CRString.index(of:)(Coherence::CRString::Cursor of)
{
  v2 = *of.mergeableIndex.isa;
  v3 = *(*v1 + 16);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = v3;
  v6 = [v5 characterIndexForIndex_];
  v7 = sub_1AE23BB0C();

  v8 = v6 == v7;
  if (v6 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  result.value = v9;
  result.is_nil = v8;
  return result;
}

void CRString.range(of:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*v1 + 16);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v6 = v4;
  v7 = [v6 characterIndexForIndex_];
  objc_opt_self();
  v8 = [v6 characterIndexForIndex_];
  if (v7 == sub_1AE23BB0C())
  {
  }

  else
  {
    v9 = sub_1AE23BB0C();

    if (v8 != v9 && v8 < v7)
    {
      __break(1u);
    }
  }
}

void CRString.cursor(range:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 16);
  sub_1ADE4FE3C(v9, a3, a4, v11);

  v10 = v11[1];
  *a1 = v11[0];
  *a2 = v10;
}

void CRString.range(of:)(id *a1, void **a2)
{
  v3 = *a2;
  v4 = *v2;
  v5 = *a1;
  v6 = *(v4 + 16);
  v7 = v3;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = v6;
  v10 = [v9 characterIndexForIndex_];
  objc_opt_self();
  v11 = [v9 characterIndexForIndex_];
  if (v10 == sub_1AE23BB0C())
  {
  }

  else
  {
    v12 = sub_1AE23BB0C();

    if (v11 != v12 && v11 < v10)
    {
      __break(1u);
    }
  }
}

void sub_1ADE502C4(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v7 = *(*v3 + 16);
  sub_1ADE4FCD8(v7, a1, a2, a3);
}

void sub_1ADE50330(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(*v3 + 16);
  sub_1ADE4FE3C(v7, a1, a2, a3);
}

void sub_1ADE5039C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 16);
  sub_1ADE4FE3C(v9, a3, a4, v11);

  v10 = v11[1];
  *a1 = v11[0];
  *a2 = v10;
}

id sub_1ADE50410(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 16);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = v3;
  v6 = [v5 characterIndexForIndex_];
  v7 = sub_1AE23BB0C();

  if (v6 == v7)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void *sub_1ADE50584(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = objc_allocWithZone(type metadata accessor for CRTTStringEncoder());

  v6 = sub_1ADF8B964(v5);
  v7 = [*(v3 + 16) fullyRenamed_];
  *&v28 = 0;
  LODWORD(a1) = [v7 saveToEncoder:v6 error:&v28];

  v8 = v28;
  if (a1)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    v10 = &v6[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
    swift_beginAccess();
    v11 = *v10;
    v12 = *(v10 + 2);
    v29 = *(v10 + 1);
    v30 = v12;
    v28 = v11;
    v13 = *(v10 + 3);
    v14 = *(v10 + 4);
    v15 = *(v10 + 5);
    v34 = *(v10 + 12);
    v32 = v14;
    v33 = v15;
    v31 = v13;
    v16 = v8;
    sub_1ADE51B64(&v28, &v27);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = swift_allocObject();
      v18 = inited[2];
      *(v17 + 16) = v18;
      sub_1ADE5215C(v18);

      inited = v17;
    }

    v19 = swift_allocObject();
    v20 = v33;
    *(v19 + 80) = v32;
    *(v19 + 96) = v20;
    *(v19 + 112) = v34;
    v21 = v29;
    *(v19 + 16) = v28;
    *(v19 + 32) = v21;
    v22 = v31;
    *(v19 + 48) = v30;
    *(v19 + 64) = v22;
    v23 = v19 | 0x4000000000000000;
    v24 = inited[2];
    inited[2] = v23;
    sub_1ADE52174(v24);
  }

  else
  {
    inited = v28;
    sub_1AE23BC9C();

    swift_willThrow();
  }

  v25 = *MEMORY[0x1E69E9840];
  return inited;
}

uint64_t sub_1ADE50788()
{
  v1 = [*(*v0 + 16) attributedString];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  sub_1AE23CD0C();
  swift_unknownObjectRelease();
  sub_1AE23CDDC();
}

uint64_t CRString.Partial.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v5 = *(sub_1ADDE78C8() + 16);
    v6 = (~v5 & 0xF000000000000007) != 0 && (v5 & 0xF000000000000000) == 0x4000000000000000;
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v13 = v5 & 0xFFFFFFFFFFFFFFFLL;
      v14 = *(v13 + 80);
      *&v36[16] = *(v13 + 64);
      *&v36[32] = v14;
      *&v36[48] = *(v13 + 96);
      *&v36[64] = *(v13 + 112);
      v15 = *(v13 + 32);
      v34 = *(v13 + 16);
      v35 = v15;
      *v36 = *(v13 + 48);
      sub_1ADE51B64(&v34, v33);

      v28 = *&v36[56];
      v29 = *&v36[40];
      v27 = *&v36[24];
      v10 = *v36;
      v30 = v35;
      v31 = *&v36[8];
      v9 = *(&v34 + 1);
      v8 = v34;
    }

    else
    {

      v8 = 0;
      v30 = vdupq_n_s64(v7);
      v31 = 0u;
      v9 = 0xE000000000000000;
      v10 = v7;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
    }

    v16 = type metadata accessor for CRStringDecoder();
    v17 = objc_allocWithZone(v16);
    v18 = &v17[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0]];
    LOBYTE(v34) = 1;
    *v18 = 0;
    *(v18 + 1) = v7;
    *(v18 + 2) = v7;
    *(v18 + 3) = v7;
    *(v18 + 4) = 0;
    v18[40] = 1;
    *(v18 + 41) = v33[0];
    *(v18 + 11) = *(v33 + 3);
    *(v18 + 6) = 0;
    *(v18 + 7) = 0;
    v18[64] = 1;
    v19 = &v17[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
    *v19 = v8;
    *(v19 + 1) = v9;
    *(v19 + 1) = v30;
    *(v19 + 4) = v10;
    *(v19 + 56) = v27;
    *(v19 + 40) = v31;
    *(v19 + 88) = v28;
    *(v19 + 72) = v29;
    *&v17[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = a1;
    v32.receiver = v17;
    v32.super_class = v16;

    v20 = objc_msgSendSuper2(&v32, sel_init);
    v21 = objc_allocWithZone(_TtC9Coherence24CRTTMergeableStringDelta);
    *&v34 = 0;
    v22 = [v21 initWithDecoder:v20 error:&v34];
    if (v22)
    {
      v23 = v22;
      v24 = v34;

      *a2 = v23;
    }

    else
    {
      v25 = v34;
      sub_1AE23BC9C();

      swift_willThrow();
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v11 = 0xD000000000000014;
    *(v11 + 8) = 0x80000001AE25FB50;
    *(v11 + 16) = 0;
    swift_willThrow();
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void CRString.Partial.encode(to:)()
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  sub_1ADDFCC74();
  if (!v1)
  {
    v3 = objc_allocWithZone(type metadata accessor for CRTTStringEncoder());

    v5 = sub_1ADF8B964(v4);
    v17[0] = 0;
    v6 = [v2 saveToEncoder:v5 error:v17];
    v7 = v17[0];
    if (v6)
    {
      v8 = &v5[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
      swift_beginAccess();
      v9 = *v8;
      v10 = *(v8 + 2);
      v18[1] = *(v8 + 1);
      v18[2] = v10;
      v18[0] = v9;
      v11 = *(v8 + 3);
      v12 = *(v8 + 4);
      v13 = *(v8 + 5);
      v19 = *(v8 + 12);
      v18[4] = v12;
      v18[5] = v13;
      v18[3] = v11;
      swift_beginAccess();
      v14 = v7;
      sub_1ADE51B64(v18, v17);
      sub_1AE1B6CF4(v18);
      swift_endAccess();
    }

    else
    {
      v15 = v17[0];
      sub_1AE23BC9C();

      swift_willThrow();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1ADE50D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0D0, &qword_1AE2418B0);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v15 = *(i - 1);
      v7 = *i;
      sub_1ADDD86D8(v5, v6);
      swift_unknownObjectRetain();
      result = sub_1ADDDE7CC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[7] + 24 * result;
      *v11 = v15;
      *(v11 + 16) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1ADE50E58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA100, &unk_1AE2418D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9EA0, &qword_1AE240EE0);
    v8 = sub_1AE23DCDC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1ADDCEE40(v10, v6, &qword_1EB5BA100, &unk_1AE2418D0);
      result = sub_1ADDFF050(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1AE23BDDC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_1ADE42D60(&v6[v9], v8[7] + 8 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1ADE51044(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA000, &qword_1AE2417E8);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1ADDD7A10(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1ADE51154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA068, &qword_1AE241848);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;
      sub_1ADDD86D8(v5, v6);
      sub_1ADDD86D8(v15, *(&v15 + 1));
      sub_1ADDD86D8(v14, *(&v14 + 1));
      result = sub_1ADDDE7CC(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1ADE51288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0F0, &qword_1AE2418C8);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_1ADDD86D8(v5, v6);
      sub_1ADDD86D8(v7, v8);
      result = sub_1ADDDE7CC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1ADE513A4@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  a1[3] = sub_1ADDEE524(0, &qword_1EB5BA0E8, 0x1E696AEC0);
  *a1 = v4;

  return v4;
}

unint64_t sub_1ADE51410(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA060, &qword_1AE241840);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1ADDD86D8(v5, v6);

      result = sub_1ADDDE7CC(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1ADE51518(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0B0, &qword_1AE241890);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0B8, &qword_1AE241898);
    v8 = sub_1AE23DCDC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1ADDCEE40(v10, v6, &qword_1EB5BA0B0, &qword_1AE241890);
      result = sub_1ADDD8A6C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Replica();
      sub_1ADE5223C(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for Replica);
      v17 = v8[7];
      v18 = sub_1AE23C12C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1ADE51758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA008, &qword_1AE2417F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA010, &qword_1AE2417F8);
    v8 = sub_1AE23DCDC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1ADDCEE40(v10, v6, &qword_1EB5BA008, &qword_1AE2417F0);
      result = sub_1ADF4A4C0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1AE23DBCC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_1ADDEE390(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1ADE51944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA050, &qword_1AE241830);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA058, &qword_1AE241838);
    v8 = sub_1AE23DCDC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1ADDCEE40(v10, v6, &qword_1EB5BA050, &qword_1AE241830);
      result = sub_1ADDDF300(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1AE23BFEC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1ADE51B2C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1ADE51B48(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_1ADE51BCC(uint64_t a1)
{
  result = sub_1ADE51BF4();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1ADE51BF4()
{
  result = qword_1EB5B9FF0;
  if (!qword_1EB5B9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9FF0);
  }

  return result;
}

unint64_t sub_1ADE51C48(uint64_t a1)
{
  result = sub_1ADE51C70();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ADE51C70()
{
  result = qword_1EB5B9FF8;
  if (!qword_1EB5B9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9FF8);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for CRString.ObservableDifference.Edit(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CRString.ObservableDifference.Edit(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CRAsset(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CRAsset(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1ADE51EAC()
{
  result = qword_1EB5BA018;
  if (!qword_1EB5BA018)
  {
    sub_1AE23C32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA018);
  }

  return result;
}

uint64_t sub_1ADE51F04(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 != 0xFF)
  {
    return sub_1ADE51F18(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1ADE51F18(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 3u)
  {
    if (a7 > 1u)
    {
      if (a7 != 2)
      {
        if (a7 != 3)
        {
          return result;
        }

        goto LABEL_17;
      }
    }

    else if (!a7)
    {
      goto LABEL_20;
    }

LABEL_13:
    sub_1ADDD86D8(result, a2);

LABEL_17:
  }

  if (a7 <= 5u)
  {
    if (a7 != 4 && a7 != 5)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (a7 == 6)
  {
    goto LABEL_13;
  }

  if (a7 != 7)
  {
    if (a7 != 8)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_20:
}

uint64_t sub_1ADE52030(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 != 0xFF)
  {
    return sub_1ADE52044(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1ADE52044(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 3u)
  {
    if (a7 > 1u)
    {
      if (a7 != 2)
      {
        if (a7 != 3)
        {
          return result;
        }

        goto LABEL_17;
      }
    }

    else if (!a7)
    {
      goto LABEL_20;
    }

LABEL_13:
    sub_1ADDCC35C(result, a2);

LABEL_17:
  }

  if (a7 <= 5u)
  {
    if (a7 != 4 && a7 != 5)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (a7 == 6)
  {
    goto LABEL_13;
  }

  if (a7 != 7)
  {
    if (a7 != 8)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_20:
}

uint64_t sub_1ADE5215C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1ADE52174(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1ADE5223C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CRKeyPath.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CRKeyPath.rawValue.getter()
{
  v1 = *v0;
  sub_1ADDD86D8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1ADE52308(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA208, &qword_1AE241BE0);
  if (swift_dynamicCast())
  {
    sub_1ADE23E6C(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_1AE23BBDC();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1ADE570DC(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1AE23DADC();
  }

  sub_1ADE56784(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1ADE57144(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1ADE5684C(sub_1ADE571E4);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1AE23BE4C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1ADE56CA4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1AE23CDFC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1AE23CE2C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1AE23DADC();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1ADE56CA4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1AE23CE0C();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1AE23BE6C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1AE23BE6C();
    sub_1ADDE158C(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1ADDE158C(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1ADDD86D8(*&__src[0], *(&__src[0] + 1));

  sub_1ADDCC35C(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

double CRKeyPath.init(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v10 = sub_1ADDCC6B4(&unk_1F23BBC58);
  *(&v10 + 1) = v4;
  v5 = sub_1ADDD8E0C();
  v7 = v6;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v5, v7);
  v8 = sub_1AE23BFEC();
  (*(*(v8 - 8) + 8))(a1, v8);
  result = *&v10;
  *a2 = v10;
  return result;
}

uint64_t CRKeyPath.init(_:)@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_1AE23CD5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = sub_1ADDCC6B4(&unk_1F23BBC80);
  *(&v12 + 1) = v7;
  sub_1AE23CD4C();
  v8 = sub_1AE23CD1C();
  v10 = v9;
  result = (*(v3 + 8))(v6, v2);
  if (v10 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_1AE23BEEC();
    result = sub_1ADDE158C(v8, v10);
    *a1 = v12;
  }

  return result;
}

double CRKeyPath.init(_:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v8 = sub_1ADDCC6B4(&unk_1F23BBCA8);
  *(&v8 + 1) = v6;
  sub_1AE23BEEC();
  sub_1ADDCC35C(a1, a2);
  result = *&v8;
  *a3 = v8;
  return result;
}

double CRKeyPath.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v42 = a3;
  v52 = *MEMORY[0x1E69E9840];
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v38 - v12;
  *&v51 = sub_1ADDCC6B4(&unk_1F23BBCD0);
  *(&v51 + 1) = v14;
  *__dst = 0;
  sub_1AE23CF2C();
  if (__OFADD__(v47, 1))
  {
    goto LABEL_30;
  }

  v38 = v10;
  sub_1AE23BE5C();
  v39 = v5;
  v40 = a1;
  (*(v5 + 16))(v8, a1, a2);
  sub_1AE23CE7C();
  v41 = a2;
  swift_getAssociatedConformanceWitness();
  v15 = AssociatedTypeWitness;
  sub_1AE23D80C();
  v16 = v48;
  if (v48 >> 60 != 15)
  {
    v19 = v47;
    v44 = xmmword_1AE2418F0;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA108, &qword_1AE241920);
      v22 = swift_allocObject();
      v23 = v22;
      *(v22 + 16) = v44;
      v24 = v16 >> 62;
      if ((v16 >> 62) > 1)
      {
        if (v24 != 2)
        {
          LOBYTE(v25) = 0;
          goto LABEL_20;
        }

        v27 = *(v19 + 16);
        v26 = *(v19 + 24);
        v28 = __OFSUB__(v26, v27);
        v25 = v26 - v27;
        if (v28)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (!v24)
        {
          v25 = HIWORD(v16);
          goto LABEL_20;
        }

        LODWORD(v25) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
          goto LABEL_28;
        }

        v25 = v25;
      }

      if ((v25 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      if (v25 > 0xFF)
      {
        goto LABEL_27;
      }

LABEL_20:
      *(v22 + 32) = v25;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA110, &qword_1AE241928);
      v49 = v29;
      v50 = sub_1ADDCC7D4(&qword_1ED96AA40, &qword_1EB5BA110, &qword_1AE241928);
      v47 = v23;
      v30 = __swift_project_boxed_opaque_existential_1(&v47, v29);
      v31 = *v30;
      v32 = *(*v30 + 16);
      if (v32)
      {
        if (v32 <= 0xE)
        {
          memset(__dst, 0, sizeof(__dst));
          v46 = v32;
          memcpy(__dst, (v31 + 32), v32);
          v20 = *__dst;
          v21 = v43 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v46 << 16)) << 32);
          v43 = v21;
        }

        else
        {
          v33 = sub_1AE23BBCC();
          v34 = *(v33 + 48);
          v35 = *(v33 + 52);
          swift_allocObject();
          v36 = sub_1AE23BB6C();
          v37 = v36;
          if (v32 >= 0x7FFFFFFF)
          {
            sub_1AE23BE2C();
            v20 = swift_allocObject();
            *(v20 + 16) = 0;
            *(v20 + 24) = v32;
            v21 = v37 | 0x8000000000000000;
          }

          else
          {
            v20 = v32 << 32;
            v21 = v36 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v20 = 0;
        v21 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(&v47);
      sub_1AE23BEEC();
      sub_1ADDD86D8(v19, v16);
      sub_1AE23BEEC();
      sub_1ADDE158C(v19, v16);
      sub_1ADDCC35C(v20, v21);
      sub_1ADDE158C(v19, v16);
      sub_1AE23D80C();
      v19 = v47;
      v16 = v48;
    }

    while (v48 >> 60 != 15);
  }

  (*(v39 + 8))(v40, v41);
  (*(v38 + 8))(v13, v15);
  result = *&v51;
  *v42 = v51;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1ADE52F74@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = v4 + 16;
      v7 = *(v4 + 16);
      v8 = *(v9 + 8);
      v10 = __OFSUB__(v8, v7);
      v4 = v8 - v7;
      if (v10)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_12:
    v10 = __OFADD__(v3, v4);
    v11 = v3 + v4;
    if (!v10)
    {
      *a3 = v11;
      return result;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
    v4 = BYTE6(v5);
    goto LABEL_12;
  }

LABEL_9:
  v10 = __OFSUB__(HIDWORD(v4), v4);
  LODWORD(v4) = HIDWORD(v4) - v4;
  if (!v10)
  {
    v4 = v4;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

void CRKeyPath.uuid.getter(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2 || *(v4 + 16) == *(v4 + 24))
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  if (v5)
  {
    if (v4 == v4 >> 32)
    {
      goto LABEL_20;
    }

LABEL_10:
    if (v5 == 2)
    {
      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      v8 = __OFSUB__(v6, v7);
      v9 = v6 - v7;
      if (!v8)
      {
        if (v9 < 1)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!__OFSUB__(HIDWORD(v4), v4))
    {
      if (HIDWORD(v4) - v4 < 1)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_31;
  }

  if ((v3 & 0xFF000000000000) == 0 || !BYTE6(v3))
  {
    goto LABEL_20;
  }

LABEL_16:
  if (sub_1AE23BE8C() == 2)
  {
    if (v5)
    {
      if (v5 == 2)
      {
        v11 = *(v4 + 16);
        v10 = *(v4 + 24);
      }

      else
      {
        v11 = v4;
        v10 = v4 >> 32;
      }
    }

    else
    {
      v11 = 0;
      v10 = BYTE6(v3);
    }

    if (v10 >= 1 && v10 >= v11)
    {
      v15 = sub_1AE23BE7C();
      sub_1ADDFE348(v15, v16);
      v12 = 0;
      goto LABEL_21;
    }

LABEL_31:
    __break(1u);
    return;
  }

LABEL_20:
  v12 = 1;
LABEL_21:
  v13 = sub_1AE23BFEC();
  v14 = *(*(v13 - 8) + 56);

  v14(a1, v12, 1, v13);
}

void CRKeyPath.string.getter()
{
  v1 = sub_1AE23CD5C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = *v0;
  v3 = v0[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      return;
    }

    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 < 1)
      {
        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v5)
  {
    if (!BYTE6(v3))
    {
      return;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v4), v4))
  {
    goto LABEL_23;
  }

  if (HIDWORD(v4) - v4 < 1)
  {
    return;
  }

LABEL_11:
  if (sub_1AE23BE8C() != 1)
  {
    return;
  }

  if (v5)
  {
    if (v5 == 2)
    {
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
    }

    else
    {
      v11 = v4;
      v10 = v4 >> 32;
    }
  }

  else
  {
    v11 = 0;
    v10 = BYTE6(v3);
  }

  if (v10 < 1 || v10 < v11)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v12 = sub_1AE23BE7C();
  v14 = v13;
  sub_1AE23CD4C();
  sub_1AE23CD2C();
  v16 = v15;
  sub_1ADDCC35C(v12, v14);
  if (!v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }
}

uint64_t CRKeyPath.data.getter()
{
  v35[5] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 < 1)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_47;
  }

  if (v3)
  {
    if (!__OFSUB__(HIDWORD(v1), v1))
    {
      if (HIDWORD(v1) - v1 >= 1)
      {
        goto LABEL_11;
      }

LABEL_12:
      result = 0;
LABEL_13:
      v9 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (!BYTE6(v2))
  {
    goto LABEL_12;
  }

LABEL_11:
  result = sub_1AE23BE8C();
  if (result)
  {
    goto LABEL_12;
  }

  if (v3 == 2)
  {
    v10 = *(v1 + 16);
    v11 = *(v1 + 24);
  }

  else if (v3 == 1)
  {
    v10 = v1;
    v11 = v1 >> 32;
  }

  else
  {
    v10 = 0;
    v11 = BYTE6(v2);
  }

  if (v11 >= 1 && v11 >= v10)
  {
    v13 = sub_1AE23BE7C();
    v35[3] = MEMORY[0x1E6969080];
    v35[4] = MEMORY[0x1E6969078];
    v35[0] = v13;
    v35[1] = v14;
    v15 = __swift_project_boxed_opaque_existential_1(v35, MEMORY[0x1E6969080]);
    v16 = *v15;
    v17 = v15[1];
    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2)
      {
        memset(v33, 0, 14);
        v20 = v33;
        v19 = v33;
        goto LABEL_45;
      }

      v21 = *(v16 + 16);
      v22 = *(v16 + 24);
      v23 = sub_1AE23BB7C();
      if (v23)
      {
        v24 = sub_1AE23BBAC();
        v16 = v21 - v24;
        if (__OFSUB__(v21, v24))
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v23 += v16;
      }

      v6 = __OFSUB__(v22, v21);
      v25 = v22 - v21;
      if (!v6)
      {
        goto LABEL_37;
      }

      __break(1u);
    }

    else if (!v18)
    {
      v33[0] = *v15;
      LOWORD(v33[1]) = v17;
      BYTE2(v33[1]) = BYTE2(v17);
      BYTE3(v33[1]) = BYTE3(v17);
      BYTE4(v33[1]) = BYTE4(v17);
      BYTE5(v33[1]) = BYTE5(v17);
      v19 = v33 + BYTE6(v17);
      v20 = v33;
LABEL_45:
      sub_1ADDCC920(v20, v19, &v34);
      v32 = v34;
      __swift_destroy_boxed_opaque_existential_1(v35);
      result = v32;
      goto LABEL_13;
    }

    v26 = v16;
    v27 = v16 >> 32;
    v25 = v27 - v26;
    if (v27 >= v26)
    {
      v23 = sub_1AE23BB7C();
      if (!v23)
      {
LABEL_37:
        v29 = sub_1AE23BB9C();
        if (v29 >= v25)
        {
          v30 = v25;
        }

        else
        {
          v30 = v29;
        }

        v31 = (v30 + v23);
        if (v23)
        {
          v19 = v31;
        }

        else
        {
          v19 = 0;
        }

        v20 = v23;
        goto LABEL_45;
      }

      v28 = sub_1AE23BBAC();
      if (!__OFSUB__(v26, v28))
      {
        v23 += v26 - v28;
        goto LABEL_37;
      }

LABEL_50:
      __break(1u);
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  __break(1u);
  return result;
}

uint64_t CRKeyPath.components.getter()
{
  v80 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(v1 + 16) == *(v1 + 24))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (!v3)
    {
      if ((v2 & 0xFF000000000000) == 0 || !BYTE6(v2))
      {
        goto LABEL_21;
      }

LABEL_16:
      v8 = *v0;
      v9 = v0[1];
      if (sub_1AE23BE8C() != 3)
      {
        goto LABEL_21;
      }

      if (v3 == 2)
      {
        v15 = *(v1 + 16);
        v14 = *(v1 + 24);
        v10 = v14 - v15;
        if (!__OFSUB__(v14, v15))
        {
          goto LABEL_27;
        }

        __break(1u);
      }

      else if (v3 == 1)
      {
        if (__OFSUB__(HIDWORD(v1), v1))
        {
          goto LABEL_116;
        }

        v10 = HIDWORD(v1) - v1;
        goto LABEL_27;
      }

      v10 = BYTE6(v2);
LABEL_27:
      v11 = MEMORY[0x1E69E7CC0];
      v16 = 1;
      v67 = v10;
      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
        }

        if (v10 < v17)
        {
          goto LABEL_22;
        }

        if (v3 == 2)
        {
          break;
        }

        if (v3 == 1)
        {
          if (v16 < v1 || v16 >= v1 >> 32)
          {
            goto LABEL_106;
          }

          result = sub_1AE23BB7C();
          if (!result)
          {
            __break(1u);
LABEL_118:
            __break(1u);
            return result;
          }

          v18 = result;
          v19 = sub_1AE23BBAC();
          v20 = v16 - v19;
          if (__OFSUB__(v16, v19))
          {
            goto LABEL_108;
          }

          goto LABEL_42;
        }

        if (v16 >= BYTE6(v2))
        {
          goto LABEL_105;
        }

        v76 = v1;
        LOWORD(v77) = v2;
        BYTE2(v77) = BYTE2(v2);
        BYTE3(v77) = BYTE3(v2);
        BYTE4(v77) = BYTE4(v2);
        BYTE5(v77) = BYTE5(v2);
        v22 = *(&v76 + v16);
        v23 = v17 + v22;
        if (__OFADD__(v17, v22))
        {
          goto LABEL_101;
        }

LABEL_47:
        if (v10 < v23)
        {
          goto LABEL_22;
        }

        if (v23 < v17)
        {
          goto LABEL_102;
        }

        v24 = sub_1AE23BE7C();
        v78 = MEMORY[0x1E6969080];
        v79 = MEMORY[0x1E6969078];
        v76 = v24;
        v77 = v25;
        v26 = __swift_project_boxed_opaque_existential_1(&v76, MEMORY[0x1E6969080]);
        v27 = *v26;
        v28 = v26[1];
        v29 = v28 >> 62;
        if ((v28 >> 62) > 1)
        {
          if (v29 == 2)
          {
            v34 = *(v27 + 16);
            v33 = *(v27 + 24);
            v35 = sub_1AE23BB7C();
            v66 = v22;
            if (v35)
            {
              v36 = v35;
              v37 = sub_1AE23BBAC();
              if (__OFSUB__(v34, v37))
              {
                goto LABEL_112;
              }

              v38 = (v34 - v37 + v36);
              v6 = __OFSUB__(v33, v34);
              v39 = v33 - v34;
              if (v6)
              {
                goto LABEL_111;
              }
            }

            else
            {
              v38 = 0;
              v6 = __OFSUB__(v33, v34);
              v39 = v33 - v34;
              if (v6)
              {
                goto LABEL_111;
              }
            }

            v46 = sub_1AE23BB9C();
            v27 = 0;
            if (v46 >= v39)
            {
              v47 = v39;
            }

            else
            {
              v47 = v46;
            }

            v28 = 0xC000000000000000;
            if (v38)
            {
              LODWORD(v3) = v2 >> 62;
              if (v47)
              {
                if (v47 < 15)
                {
                  memset(__dst, 0, sizeof(__dst));
                  v75 = v47;
                  memcpy(__dst, v38, v47);
                  v27 = *__dst;
                  v28 = v63 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v75 << 16)) << 32);
                  v63 = v28;
                }

                else
                {
                  v48 = sub_1AE23BBCC();
                  v49 = *(v48 + 48);
                  v50 = *(v48 + 52);
                  swift_allocObject();
                  v51 = sub_1AE23BB6C();
                  v52 = v51;
                  if (v47 >= 0x7FFFFFFF)
                  {
                    sub_1AE23BE2C();
                    v27 = swift_allocObject();
                    *(v27 + 16) = 0;
                    *(v27 + 24) = v47;
                    v28 = v52 | 0x8000000000000000;
                  }

                  else
                  {
                    v27 = v47 << 32;
                    v28 = v51 | 0x4000000000000000;
                  }
                }
              }
            }

            else
            {
              LODWORD(v3) = v2 >> 62;
            }

            v22 = v66;
          }
        }

        else if (v29)
        {
          v40 = (v27 >> 32) - v27;
          if (v27 >> 32 < v27)
          {
            goto LABEL_110;
          }

          v41 = sub_1AE23BB7C();
          if (v41)
          {
            v42 = v41;
            v43 = sub_1AE23BBAC();
            if (__OFSUB__(v27, v43))
            {
              goto LABEL_113;
            }

            v44 = v22;
            v45 = (v27 - v43 + v42);
          }

          else
          {
            v44 = v22;
            v45 = 0;
          }

          v53 = sub_1AE23BB9C();
          v27 = 0;
          if (v53 >= v40)
          {
            v54 = v40;
          }

          else
          {
            v54 = v53;
          }

          v28 = 0xC000000000000000;
          if (v45)
          {
            LODWORD(v3) = v2 >> 62;
            if (v54)
            {
              if (v54 < 15)
              {
                memset(__dst, 0, sizeof(__dst));
                v75 = v54;
                memcpy(__dst, v45, v54);
                v27 = *__dst;
                v28 = v64 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v75 << 16)) << 32);
                v64 = v28;
                v22 = v44;
              }

              else
              {
                v55 = sub_1AE23BBCC();
                v56 = *(v55 + 48);
                v57 = *(v55 + 52);
                swift_allocObject();
                v58 = sub_1AE23BB6C();
                v59 = v58;
                if (v54 >= 0x7FFFFFFF)
                {
                  sub_1AE23BE2C();
                  v27 = swift_allocObject();
                  *(v27 + 16) = 0;
                  *(v27 + 24) = v54;
                  v28 = v59 | 0x8000000000000000;
                }

                else
                {
                  v27 = v54 << 32;
                  v28 = v58 | 0x4000000000000000;
                }

                v22 = v44;
              }
            }

            else
            {
              v22 = v44;
            }
          }

          else
          {
            LODWORD(v3) = v2 >> 62;
            v22 = v44;
          }
        }

        else
        {
          __src = *v26;
          v69 = v28;
          v70 = BYTE2(v28);
          v71 = BYTE3(v28);
          v72 = BYTE4(v28);
          v73 = BYTE5(v28);
          if (BYTE6(v28))
          {
            if (BYTE6(v28) <= 0xEuLL)
            {
              memset(__dst, 0, sizeof(__dst));
              v75 = BYTE6(v28);
              memcpy(__dst, &__src, BYTE6(v28));
              v27 = *__dst;
              v28 = v65 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v75 << 16)) << 32);
              v65 = v28;
            }

            else
            {
              v30 = sub_1AE23BBCC();
              v31 = *(v30 + 48);
              v32 = *(v30 + 52);
              swift_allocObject();
              v27 = BYTE6(v28) << 32;
              v28 = sub_1AE23BB6C() | 0x4000000000000000;
            }
          }

          else
          {
            v27 = 0;
            v28 = 0xC000000000000000;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v76);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1ADE5534C(0, *(v11 + 2) + 1, 1, v11);
        }

        v61 = *(v11 + 2);
        v60 = *(v11 + 3);
        if (v61 >= v60 >> 1)
        {
          v11 = sub_1ADE5534C((v60 > 1), v61 + 1, 1, v11);
        }

        *(v11 + 2) = v61 + 1;
        v62 = &v11[16 * v61];
        *(v62 + 4) = v27;
        *(v62 + 5) = v28;
        v6 = __OFADD__(v16, v22 + 1);
        v16 += v22 + 1;
        v10 = v67;
        if (v6)
        {
          goto LABEL_103;
        }
      }

      if (v16 < *(v1 + 16))
      {
        goto LABEL_104;
      }

      if (v16 >= *(v1 + 24))
      {
        goto LABEL_107;
      }

      result = sub_1AE23BB7C();
      if (!result)
      {
        goto LABEL_118;
      }

      v18 = result;
      v21 = sub_1AE23BBAC();
      v20 = v16 - v21;
      if (__OFSUB__(v16, v21))
      {
        goto LABEL_109;
      }

LABEL_42:
      v22 = *(v18 + v20);
      v23 = v17 + v22;
      if (__OFADD__(v17, v22))
      {
        goto LABEL_101;
      }

      goto LABEL_47;
    }

    if (v1 == v1 >> 32)
    {
      goto LABEL_21;
    }
  }

  if (v3 == 2)
  {
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v6)
    {
      goto LABEL_114;
    }

    if (v7 >= 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (__OFSUB__(HIDWORD(v1), v1))
    {
      goto LABEL_115;
    }

    if (HIDWORD(v1) - v1 >= 1)
    {
      goto LABEL_16;
    }
  }

LABEL_21:
  v11 = 0;
LABEL_22:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t static CRKeyPath.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1ADDD86D8(*a1, v3);
  sub_1ADDD86D8(v4, v5);
  v6 = sub_1ADDD6F8C(v2, v3, v4, v5);
  sub_1ADDCC35C(v4, v5);
  sub_1ADDCC35C(v2, v3);
  return v6 & 1;
}

uint64_t CRKeyPath.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1AE23BECC();
}

void sub_1ADE53D94()
{
  v1 = sub_1AE23BFEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AE23CD5C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *v0;
  v8 = v0[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_20;
    }

    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 < 1)
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_49;
  }

  if (!v10)
  {
    if (!BYTE6(v8))
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v9), v9))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    return;
  }

  if (HIDWORD(v9) - v9 < 1)
  {
    goto LABEL_20;
  }

LABEL_11:
  v15 = sub_1AE23BE8C();
  if (v15 <= 1)
  {
    if (!v15)
    {
      sub_1AE23BEAC();
      return;
    }

    *&v51 = 39;
    *(&v51 + 1) = 0xE100000000000000;
    if (v10)
    {
      if (v10 == 2)
      {
        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
      }

      else
      {
        v17 = v9;
        v16 = v9 >> 32;
      }
    }

    else
    {
      v17 = 0;
      v16 = BYTE6(v8);
    }

    if (v16 < 1 || v16 < v17)
    {
      goto LABEL_52;
    }

    v43 = sub_1AE23BE7C();
    v45 = v44;
    sub_1AE23CD4C();
    v46 = sub_1AE23CD2C();
    v48 = v47;
    sub_1ADDCC35C(v43, v45);
    if (v48)
    {
      MEMORY[0x1B26FB670](v46, v48);

      MEMORY[0x1B26FB670](39, 0xE100000000000000);
      return;
    }

    goto LABEL_50;
  }

  if (v15 == 2)
  {
    if (v10)
    {
      if (v10 == 2)
      {
        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
      }

      else
      {
        v20 = v9;
        v19 = v9 >> 32;
      }
    }

    else
    {
      v20 = 0;
      v19 = BYTE6(v8);
    }

    if (v19 >= 1 && v19 >= v20)
    {
      v36 = sub_1AE23BE7C();
      sub_1ADDFE348(v36, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1AE241900;
      sub_1AE23BFCC();
      v39 = MEMORY[0x1E69E7508];
      v40 = MEMORY[0x1E69E7558];
      *(v38 + 56) = MEMORY[0x1E69E7508];
      *(v38 + 64) = v40;
      *(v38 + 32) = v41;
      sub_1AE23BFCC();
      *(v38 + 96) = v39;
      *(v38 + 104) = v40;
      *(v38 + 72) = v42;
      sub_1AE23CD3C();
      (*(v2 + 8))(v5, v1);
      return;
    }

    goto LABEL_51;
  }

  if (v15 == 3)
  {
    *&v51 = v9;
    *(&v51 + 1) = v8;
    v21 = CRKeyPath.components.getter();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    v23 = *(v22 + 16);
    if (v23)
    {
      v50 = MEMORY[0x1E69E7CC0];
      v24 = sub_1ADE0B11C(0, v23, 0);
      v25 = 32;
      v26 = v50;
      do
      {
        v51 = *(v22 + v25);
        v24 = sub_1ADE53D94(v24);
        v50 = v26;
        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          v31 = v24;
          v32 = v27;
          sub_1ADE0B11C((v28 > 1), v29 + 1, 1);
          v27 = v32;
          v24 = v31;
          v26 = v50;
        }

        *(v26 + 16) = v29 + 1;
        v30 = v26 + 16 * v29;
        *(v30 + 32) = v24;
        *(v30 + 40) = v27;
        v25 += 16;
        --v23;
      }

      while (v23);
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }

    *&v51 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
    sub_1ADDCC7D4(&qword_1EB5B8C10, &qword_1EB5BA250, &unk_1AE251E30);
    v33 = sub_1AE23CBFC();
    v35 = v34;

    *&v51 = 91;
    *(&v51 + 1) = 0xE100000000000000;
    MEMORY[0x1B26FB670](v33, v35);

    v18 = 93;
    goto LABEL_21;
  }

  if (v15 != 255)
  {
LABEL_20:
    v18 = sub_1AE23BEAC();
    *&v51 = 0x3A6E776F6E6B6E75;
    *(&v51 + 1) = 0xE900000000000020;
LABEL_21:
    MEMORY[0x1B26FB670](v18);
  }
}

uint64_t CRKeyPath.description.getter()
{
  v4 = *v0;
  sub_1ADE53D94();
  MEMORY[0x1B26FB670](v1, v2);

  MEMORY[0x1B26FB670](41, 0xE100000000000000);
  return 10278;
}

void CRKeyPath.init(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a2;
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v49 - v10 + 40;

  v13 = sub_1ADF89BC8(v12);
  v15 = v2;
  if (!v2)
  {
    v22 = v13;
    v23 = v14;

    goto LABEL_5;
  }

  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    sub_1ADE02BFC(v11);
    (*(v5 + 16))(v9, v11, v4);
    v50 = sub_1ADDCC6B4(&unk_1F23BBC08);
    v51 = v16;
    v17 = sub_1ADDD8E0C();
    v48 = 0;
    v18 = v17;
    v20 = v19;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v18, v20);

    v21 = *(v5 + 8);
    v21(v11, v4);
    v21(v9, v4);
    v22 = v50;
    v23 = v51;
LABEL_5:
    v24 = v52;
    *v52 = v22;
    v24[1] = v23;
    return;
  }

  sub_1ADE42E40();
  v25 = swift_allocError();
  *v26 = 0xD000000000000017;
  *(v26 + 8) = 0x80000001AE25FB70;
  *(v26 + 16) = 0;
  swift_willThrow();
  v27 = *(a1 + 72);
  if (v27)
  {
    v28 = *(v27 + 16);
    if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v29 = &unk_1ED966F48;
    }

    swift_beginAccess();
    if (v29[8])
    {
      v30 = *(v27 + 16);
      v48 = v25;
      if ((~v30 & 0xF000000000000007) != 0 && ((v30 >> 59) & 0x1E | (v30 >> 2) & 1) == 7)
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v31 = &unk_1ED966F48;
      }

      swift_beginAccess();
      v33 = v31[8];
      v34 = v31[9];
      v35 = v31[10];
      if (v33)
      {
        v36 = v31[8];
        v37 = v31[9];
      }

      else
      {
        v37 = 0;
      }

      if (v33)
      {
        v38 = v31[10];
      }

      else
      {
        v38 = 0xC000000000000000;
      }

      sub_1ADE56F74(v33, v34, v35);
      sub_1ADDE94BC(v37, v38, v49);

      v22 = v49[0];
      v23 = v49[1];
      goto LABEL_5;
    }

    v39 = *(v27 + 16);
    if ((~v39 & 0xF000000000000007) != 0 && ((v40 = (v39 >> 59) & 0x1E | (v39 >> 2) & 1, v40 == 15) || v40 == 16))
    {
      v41 = *(a1 + 40);
      v42 = *(v41 + 16);
      if (v42)
      {
        v43 = *((v39 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        if (v43 < v42)
        {
          v44 = v41 + 16 * v43;
          v45 = v25;
          v22 = *(v44 + 32);
          v23 = *(v44 + 40);

          sub_1ADDD86D8(v22, v23);

          goto LABEL_5;
        }
      }

      sub_1ADE42E40();
      swift_allocError();
      *v47 = 0xD000000000000013;
      *(v47 + 8) = 0x80000001AE25FC60;
      *(v47 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      sub_1ADE42E40();
      swift_allocError();
      *v46 = 0xD00000000000001DLL;
      *(v46 + 8) = 0x80000001AE25FC40;
      *(v46 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v32 = 0xD000000000000017;
    *(v32 + 8) = 0x80000001AE25FB70;
    *(v32 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t CRKeyPath.encode(to:)()
{
  v2 = *v0;
  v3 = v0[1];
  result = sub_1ADE71C08();
  if (!v1)
  {

    sub_1ADE6D26C(v2, v3);
  }

  return result;
}

uint64_t CRKeyPath.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AE23E31C();
  sub_1AE23BECC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE5498C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AE23E31C();
  sub_1AE23BECC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE549D8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1AE23BECC();
}

uint64_t sub_1ADE549E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AE23E31C();
  sub_1AE23BECC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE54A28()
{
  v4 = *v0;
  sub_1ADE53D94();
  MEMORY[0x1B26FB670](v1, v2);

  MEMORY[0x1B26FB670](41, 0xE100000000000000);
  return 10278;
}

uint64_t sub_1ADE54ABC()
{
  v2 = *v0;
  v3 = v0[1];
  result = sub_1ADE71C08();
  if (!v1)
  {

    sub_1ADE6D26C(v2, v3);
  }

  return result;
}

uint64_t sub_1ADE54BA0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  __s2[2] = *MEMORY[0x1E69E9840];
  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(__s2, 0, 14);
      if (!result)
      {
        goto LABEL_47;
      }

      v13 = a5;
      result = memcmp(result, __s2, (a2 - result) & ((a2 - result) >> 63));
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

      if (!result)
      {
        v41 = a6 >> 62;
        if ((a6 >> 62) <= 1)
        {
          if (!v41)
          {
            LOBYTE(v26) = 0;
            goto LABEL_95;
          }

          LODWORD(v46) = HIDWORD(v13) - v13;
          if (__OFSUB__(HIDWORD(v13), v13))
          {
            goto LABEL_103;
          }

          v46 = v46;
LABEL_79:
          v26 = v46 >> 63;
          goto LABEL_95;
        }

LABEL_62:
        if (v41 != 2)
        {
          LOBYTE(v26) = 0;
          goto LABEL_95;
        }

        v37 = *(v13 + 16);
        v45 = *(v13 + 24);
        v24 = __OFSUB__(v45, v37);
        v46 = v45 - v37;
        if (!v24)
        {
          goto LABEL_79;
        }

        __break(1u);
LABEL_66:
        v38 = v58;
        if (v37 != 2)
        {
          v39 = 0;
          goto LABEL_87;
        }

        v48 = *(v57 + 16);
        v47 = *(v57 + 24);
        v24 = __OFSUB__(v47, v48);
        v39 = v47 - v48;
        if (!v24)
        {
LABEL_87:
          v24 = __OFSUB__(HIDWORD(v38), v38);
          v51 = HIDWORD(v38) - v38;
          if (!v24)
          {
            v17 = v39 < v51;
            goto LABEL_92;
          }

          goto LABEL_100;
        }

        __break(1u);
        goto LABEL_70;
      }

LABEL_49:
      LOBYTE(v26) = 0;
      goto LABEL_95;
    }

    v58 = a3;
    v57 = a5;
    v19 = result;
    v21 = *(a3 + 16);
    v20 = *(a3 + 24);
    v22 = sub_1AE23BB7C();
    if (v22)
    {
      v23 = sub_1AE23BBAC();
      if (__OFSUB__(v21, v23))
      {
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v22 += v21 - v23;
    }

    v24 = __OFSUB__(v20, v21);
    v25 = v20 - v21;
    if (!v24)
    {
      result = sub_1AE23BB9C();
      LOBYTE(v26) = 0;
      if (v19 && v22)
      {
        v13 = v7;
        if (result >= v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = result;
        }

        if (v27 >= a2 - v19)
        {
          v28 = a2 - v19;
        }

        else
        {
          v28 = v27;
        }

        result = memcmp(v19, v22, v28);
        if ((result & 0x80000000) != 0)
        {
          LOBYTE(v26) = 1;
          goto LABEL_95;
        }

        if (result)
        {
          LOBYTE(v26) = 0;
          goto LABEL_95;
        }

        v39 = a6 >> 62;
        if ((a6 >> 62) <= 1)
        {
          v42 = v58;
          if (v39)
          {
            LODWORD(v15) = HIDWORD(v57) - v57;
            if (__OFSUB__(HIDWORD(v57), v57))
            {
              goto LABEL_105;
            }

            v15 = v15;
          }

          else
          {
            v15 = BYTE6(a6);
          }

          goto LABEL_90;
        }

LABEL_70:
        v42 = v58;
        if (v39 == 2)
        {
          v50 = *(v57 + 16);
          v49 = *(v57 + 24);
          v24 = __OFSUB__(v49, v50);
          v15 = v49 - v50;
          if (v24)
          {
            __break(1u);
            goto LABEL_74;
          }
        }

        else
        {
          v15 = 0;
        }

LABEL_90:
        v54 = v42 + 16;
        v52 = *(v42 + 16);
        v53 = *(v54 + 8);
        v24 = __OFSUB__(v53, v52);
        v55 = v53 - v52;
        if (!v24)
        {
          v17 = v15 < v55;
LABEL_92:
          LOBYTE(v26) = v17;
          goto LABEL_95;
        }

LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      goto LABEL_95;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (!v10)
  {
    __s2[0] = a3;
    LOWORD(__s2[1]) = a4;
    BYTE2(__s2[1]) = BYTE2(a4);
    BYTE3(__s2[1]) = BYTE3(a4);
    BYTE4(__s2[1]) = BYTE4(a4);
    BYTE5(__s2[1]) = BYTE5(a4);
    if (!result)
    {
      goto LABEL_47;
    }

    v13 = BYTE6(a4);
    if (BYTE6(a4) >= a2 - result)
    {
      v14 = a2 - result;
    }

    else
    {
      v14 = BYTE6(a4);
    }

    result = memcmp(result, __s2, v14);
    if ((result & 0x80000000) == 0)
    {
      if (!result)
      {
        v15 = a5;
        v16 = a6 >> 62;
        if ((a6 >> 62) <= 1)
        {
          if (!v16)
          {
            v17 = BYTE6(a6) < BYTE6(a4);
            goto LABEL_92;
          }

LABEL_74:
          LODWORD(v41) = HIDWORD(v15) - v15;
          if (!__OFSUB__(HIDWORD(v15), v15))
          {
            v41 = v41;
LABEL_76:
            v17 = v41 < v13;
            goto LABEL_92;
          }

          goto LABEL_102;
        }

        if (v16 != 2)
        {
          v17 = BYTE6(a4) != 0;
          goto LABEL_92;
        }

        v44 = *(a5 + 16);
        v43 = *(a5 + 24);
        v24 = __OFSUB__(v43, v44);
        v41 = v43 - v44;
        if (!v24)
        {
          goto LABEL_76;
        }

        __break(1u);
        goto LABEL_62;
      }

LABEL_47:
      LOBYTE(v26) = 0;
      goto LABEL_95;
    }

LABEL_46:
    LOBYTE(v26) = 1;
    goto LABEL_95;
  }

  v29 = a3;
  v30 = (a3 >> 32) - a3;
  if (a3 >> 32 < a3)
  {
    __break(1u);
    goto LABEL_97;
  }

  v58 = a3;
  v57 = a5;
  v32 = result;
  v33 = sub_1AE23BB7C();
  if (v33)
  {
    v34 = sub_1AE23BBAC();
    if (!__OFSUB__(v29, v34))
    {
      v33 += v29 - v34;
      goto LABEL_31;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

LABEL_31:
  v13 = a4 & 0x3FFFFFFFFFFFFFFFLL;
  result = sub_1AE23BB9C();
  LOBYTE(v26) = 0;
  if (v32 && v33)
  {
    if (result >= v30)
    {
      v35 = v30;
    }

    else
    {
      v35 = result;
    }

    if (v35 >= a2 - v32)
    {
      v36 = a2 - v32;
    }

    else
    {
      v36 = v35;
    }

    result = memcmp(v32, v33, v36);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

    if (!result)
    {
      v37 = a6 >> 62;
      if ((a6 >> 62) <= 1)
      {
        v38 = v58;
        if (v37)
        {
          LODWORD(v39) = HIDWORD(v57) - v57;
          if (__OFSUB__(HIDWORD(v57), v57))
          {
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
          }

          v39 = v39;
        }

        else
        {
          v39 = BYTE6(a6);
        }

        goto LABEL_87;
      }

      goto LABEL_66;
    }

    goto LABEL_49;
  }

LABEL_95:
  *a7 = v26;
  v56 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CRKeyPath.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE23E38C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_1ADE56FBC();
    sub_1AE23E03C();
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v7;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CRKeyPath.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23E3BC();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1ADE57060();
  sub_1AE23E06C();
  sub_1ADDCC35C(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void *sub_1ADE551C0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1ADE55240(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE5534C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE55498(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA178, &qword_1AE241B70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE555A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA158, &unk_1AE242220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE556CC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1ADE557D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA188, &unk_1AE242290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1ADE558CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1ADE559C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA260, &qword_1AE241C18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_1ADE55AE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1B8, &qword_1AE241BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1C0, &qword_1AE241BA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE55C2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA248, &qword_1AE241C10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE55D60(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1C8, &qword_1AE241BB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1ADE55E64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA220, &qword_1AE241BF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE55F84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1A8, &qword_1AE241B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1ADE56088(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1A0, &qword_1AE241B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE561AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA190, &qword_1AE241B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE562C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA198, &qword_1AE241B88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE563E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_1ADE564E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1E8, &unk_1AE2422E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F0, &qword_1AE241BD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1ADE5662C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1D8, &qword_1AE241BC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1E0, &qword_1AE241BC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1ADE56784@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1ADDCC868(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1AE23BBCC();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1AE23BB6C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1AE23BE2C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1ADE5684C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1ADDCC35C(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1ADDCC35C(v6, v5);
    *v3 = xmmword_1AE241910;
    sub_1ADDCC35C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1AE23BB7C() && __OFSUB__(v6, sub_1AE23BBAC()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1AE23BBCC();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1AE23BB5C();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1ADE56BF0(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1ADDCC35C(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1AE241910;
    sub_1ADDCC35C(0, 0xC000000000000000);
    sub_1AE23BDEC();
    result = sub_1ADE56BF0(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1ADE56BF0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1AE23BB7C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1AE23BBAC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1AE23BB9C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1ADE56CA4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1AE23CE3C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B26FB6C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1ADE56D20@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1AE23DA3C();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE56D70(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v17, 0, 14);
      v8 = a1;
      sub_1ADDD86D8(a3, a4);
      v9 = v17;
      goto LABEL_9;
    }

    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v17[0] = a1;
      LOWORD(v17[1]) = a2;
      BYTE2(v17[1]) = BYTE2(a2);
      BYTE3(v17[1]) = BYTE3(a2);
      BYTE4(v17[1]) = BYTE4(a2);
      BYTE5(v17[1]) = BYTE5(a2);
      v8 = a1;
      sub_1ADDD86D8(a3, a4);
      v9 = v17 + BYTE6(a2);
LABEL_9:
      sub_1ADE54BA0(v17, v9, a3, a4, v8, a2, &v16);
      sub_1ADDCC35C(a3, a4);
      sub_1ADDCC35C(v8, a2);
      v13 = v16;
      goto LABEL_10;
    }

    v10 = a1;
    v11 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1ADDD86D8(a3, a4);
  sub_1ADDD86D8(a1, a2);
  v13 = sub_1ADECB664(v10, v11, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4, a1, a2);
  sub_1ADDCC35C(a3, a4);
  sub_1ADDCC35C(a1, a2);
LABEL_10:
  v14 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

uint64_t sub_1ADE56F74(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_1ADDD86D8(a2, a3);
  }

  return result;
}

unint64_t sub_1ADE56FBC()
{
  result = qword_1EB5BA118;
  if (!qword_1EB5BA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA118);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1ADE57060()
{
  result = qword_1EB5BA120;
  if (!qword_1EB5BA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA120);
  }

  return result;
}

unint64_t sub_1ADE570B4(uint64_t a1)
{
  result = sub_1ADDDF200();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADE570DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA210, &qword_1AE241BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADE57144(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1AE1A3858(result);
    }

    else
    {
      v2 = sub_1AE23BBCC();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1AE23BB8C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1AE23BE2C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1ADE571E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1ADE551C0(sub_1ADE5724C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1ADE5726C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *v2;
  swift_getWitnessTable();
  result = sub_1AE23D4FC();
  if ((v10 & 1) == 0)
  {
    sub_1AE23D0EC();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

id sub_1ADE57398(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3[1];
  v23 = *v3;
  v24 = v5;
  v6 = a3[3];
  v13 = a3[2];
  v14 = v6;
  v15 = a3[4];
  v16 = a1;
  v7 = type metadata accessor for TreeNode();

  v17 = v13;
  v18 = v7;
  v19 = v6;
  v20 = v15;
  v21 = &off_1F23C93F8;
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for CROrderedDictionary();
  v9 = CROrderedDictionary.index(where:)(sub_1ADE5E670, &v12, v8);
  LOBYTE(v5) = v10;

  if ((v5 & 1) == 0)
  {
    return sub_1AE017788(a2, v9, v8);
  }

  return result;
}

uint64_t sub_1ADE574C4(uint64_t a1, uint64_t a2, unint64_t a3, int a4, void *a5)
{
  v6 = v5;
  v177 = a4;
  v206 = a1;
  v10 = a5[2];
  v11 = a5[3];
  v12 = a5[4];
  v13 = type metadata accessor for TreeNode();
  v179 = sub_1AE23D7CC();
  v178 = *(v179 - 8);
  v14 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v175 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v172 = &v171 - v17;
  v197 = *(v10 - 8);
  v18 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v189 = (&v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v171 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v183 = &v171 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v184 = &v171 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v185 = &v171 - v29;
  v30 = sub_1AE23D7CC();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v176 = &v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v173 = &v171 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](&v171 - v36);
  v180 = &v171 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v188 = &v171 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v190 = &v171 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v50 = MEMORY[0x1EEE9AC00](v44);
  v52 = &v171 - v51;
  v198 = a3;
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v187 = v46;
  v182 = v23;
  v53 = *(v49 + 16);
  v54 = v45;
  v204 = v48;
  v205 = a2;
  v55 = v47;
  v202 = v49 + 16;
  v196 = v53;
  v53(v50);
  v192 = v54;
  v193 = v11;
  sub_1ADE1E114(v54, v10, v52);
  v56 = v6[2];
  v57 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  v203 = v57;
  v191 = WitnessTable;
  sub_1AE23CB7C();
  v186 = v55;
  v59 = *(v55 + 8);
  v200 = v55 + 8;
  v201 = v13;
  v199 = v59;
  v59(v52, v13);
  if (v209)
  {
    v60 = sub_1AE23D0AC();
  }

  else
  {
    v60 = 0;
  }

  if (v60 < v198)
  {
    goto LABEL_47;
  }

  v194 = v10;
  v61 = v12;
  v62 = *v6;
  v63 = v6[1];
  v64 = v6[2];
  v65 = v6[3];
  v181 = v6 + 3;
  v209 = v62;
  v210 = v63;
  v211 = v64;
  v212 = v65;

  v66 = v205;
  v67 = v206;
  LOBYTE(v63) = sub_1AE180290(v206, v205, a5);
  v68 = a5;

  if ((v63 & 1) == 0)
  {
LABEL_15:
    v93 = 0;
    return sub_1ADDDCE80(v93);
  }

  sub_1AE18065C(v67, a5);
  v69 = v192;
  (v196)(v192, v66, v204);
  v70 = v187;
  v71 = v194;
  sub_1ADE1E114(v69, v194, v187);
  v72 = v6;
  v73 = v6[2];
  v74 = v201;
  sub_1AE23CB7C();
  v199(v70, v74);
  v75 = v209;
  v171 = v68;
  v195 = v6;
  v174 = v12;
  if (!v209)
  {
    goto LABEL_17;
  }

  v76 = sub_1AE23D0AC();
  if (v76 <= 0)
  {

LABEL_17:
    v94 = v12;
    v95 = v192;
    v96 = v205;
    v97 = v196;
    (v196)(v192, v205, v204);
    v98 = v190;
    v99 = v194;
    v100 = v193;
    sub_1ADE1E114(v95, v194, v190);
    v101 = swift_getWitnessTable();
    v209 = v99;
    v210 = v74;
    v211 = v100;
    v212 = v94;
    v213 = &off_1F23C93F8;
    v214 = v101;
    v102 = type metadata accessor for CROrderedDictionary();
    v103 = v206;
    v187 = v102;
    CROrderedDictionary.append(value:forKey:)(v98, v206, v102);
    v199(v98, v74);
    (v97)(v95, v96, v204);
    v104 = v95;
    v105 = v180;
    sub_1ADE1E114(v104, v99, v180);
    v106 = swift_allocObject();
    v106[2] = v99;
    v106[3] = v100;
    v106[4] = v94;
    v107 = *(v197 + 16);
    v192 = v197 + 16;
    v188 = v107;
    (v107)(v189, v103, v99);
    v108 = swift_allocObject();
    v108[2] = v99;
    v108[3] = v100;
    v108[4] = v94;
    v108[5] = sub_1ADE5E694;
    v198 = v106;
    v108[6] = v106;
    v109 = v72[2];
    swift_isUniquelyReferenced_nonNull_native();
    v110 = v72[2];
    v209 = v110;
    v111 = v191;
    v112 = sub_1ADDFFB6C(v105, v74, v191);
    if (!__OFADD__(*(v110 + 16), (v113 & 1) == 0))
    {
      v114 = v112;
      v115 = v113;
      sub_1AE23DC0C();
      v116 = sub_1AE23DBEC();
      if (v116)
      {
        v116 = sub_1ADDFFB6C(v105, v74, v111);
        if ((v115 & 1) != (v117 & 1))
        {
          goto LABEL_53;
        }

        v114 = v116;
      }

      v118 = v209;
      v195[2] = v209;
      if ((v115 & 1) == 0)
      {
        v119 = v108[6];
        v209 = (v108[5])(v116);
        (*(v186 + 16))(v190, v105, v201);
        sub_1AE23DBFC();
      }

      v120 = *(v118 + 56) + 8 * v114;
      sub_1AE23D0CC();
      v121 = v201;
      v199(v105, v201);
      v122 = v197;
      v123 = *(v197 + 48);
      v124 = v205;
      v125 = v194;
      if (v123(v205, 1, v194) == 1)
      {
        goto LABEL_26;
      }

      v126 = *v195;
      v127 = v195[1];
      v128 = v176;
      (v196)(v176, v124, v204);
      if (v123(v128, 1, v125) == 1)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v209 = v126;
      v210 = v127;
      v129 = v175;
      CROrderedDictionary.subscript.getter(v128, v187);
      v130 = (*(v186 + 48))(v129, 1, v121);
      (*(v178 + 8))(v129, v179);
      v122 = v197;
      (*(v197 + 8))(v128, v125);
      v93 = sub_1ADE5E6B4;
      if (v130 == 1)
      {
LABEL_26:
        v131 = v206;
        (v188)(v182, v206, v125);
        sub_1AE23D38C();
        v132 = v183;
        sub_1AE23D33C();
        (*(v122 + 8))(v132, v125);
        v133 = 0;
        v134 = 0;
        v93 = sub_1ADE5E6B4;
        v135 = sub_1ADE5E694;
      }

      else
      {
        v135 = sub_1ADE5E694;
        v133 = 0;
        v134 = 0;
        v131 = v206;
      }

LABEL_44:
      sub_1AE180C48(v131, v171);
      sub_1ADDDCE80(v133);
      sub_1ADDDCE80(v134);
      sub_1ADDDCE80(v135);
      return sub_1ADDDCE80(v93);
    }

    goto LABEL_48;
  }

  v77 = v76;
  v78 = v198;
  v79 = v185;
  v187 = v75;
  sub_1AE23D15C();
  v80 = *v72;
  v81 = v72[1];
  v207 = v80;
  v208 = v81;
  MEMORY[0x1EEE9AC00](v80);
  v82 = v193;
  *(&v171 - 4) = v71;
  *(&v171 - 3) = v82;
  *(&v171 - 2) = v61;
  *(&v171 - 1) = v79;

  v83 = swift_getWitnessTable();
  v209 = v71;
  v210 = v74;
  v84 = v82;
  v211 = v82;
  v212 = v61;
  v213 = &off_1F23C93F8;
  v214 = v83;
  v189 = type metadata accessor for CROrderedDictionary();
  v85 = CROrderedDictionary.index(where:)(sub_1ADE5E698, (&v171 - 6), v189);
  v87 = v86;

  if (v87)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v88 = v71;
  v90 = v205;
  v89 = v206;
  v91 = v192;
  if (v77 != v78)
  {
    v136 = v196;
    v137 = v190;
    goto LABEL_27;
  }

  v92 = __OFADD__(v85, 1);
  v85 = (v85 + 1);
  v136 = v196;
  v137 = v190;
  if (v92)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_27:
  v138 = v136;
  if (v177)
  {
    (v136)(v192, v205, v204);
    v139 = v174;
    sub_1ADE1E114(v91, v88, v137);
    CROrderedDictionary.moveOrInsert(value:forKey:to:)(v137, v89, v85, v189);
  }

  else
  {
    (v136)(v192, v205, v204);
    v139 = v174;
    sub_1ADE1E114(v91, v88, v137);
    CROrderedDictionary.insert(value:forKey:at:)(v137, v89, v85, v189);
  }

  v140 = v137;
  v141 = v201;
  v199(v140, v201);
  (v138)(v91, v90, v204);
  v142 = v188;
  sub_1ADE1E114(v91, v88, v188);
  v143 = swift_allocObject();
  v143[2] = v88;
  v143[3] = v84;
  v143[4] = v139;
  v144 = *(v197 + 16);
  v192 = v197 + 16;
  v180 = v144;
  (v144)(v184, v89, v88);
  v145 = swift_allocObject();
  v145[2] = v88;
  v145[3] = v84;
  v145[4] = v139;
  v145[5] = sub_1ADE5E694;
  v193 = v143;
  v145[6] = v143;
  v146 = v195;
  v147 = v195[2];
  swift_isUniquelyReferenced_nonNull_native();
  v148 = v146[2];
  v149 = v141;
  v209 = v148;
  v150 = v191;
  v151 = sub_1ADDFFB6C(v142, v141, v191);
  if (__OFADD__(*(v148 + 16), (v152 & 1) == 0))
  {
    goto LABEL_49;
  }

  v153 = v151;
  v154 = v152;
  sub_1AE23DC0C();
  v155 = sub_1AE23DBEC();
  if ((v155 & 1) == 0)
  {
    v157 = v197;
    goto LABEL_35;
  }

  v155 = sub_1ADDFFB6C(v188, v149, v150);
  v157 = v197;
  if ((v154 & 1) == (v156 & 1))
  {
    v153 = v155;
LABEL_35:
    v158 = v209;
    v195[2] = v209;
    if ((v154 & 1) == 0)
    {
      v159 = v145[6];
      v209 = (v145[5])(v155);
      (*(v186 + 16))(v190, v188, v201);
      sub_1AE23DBFC();
    }

    v160 = *(v158 + 56) + 8 * v153;
    sub_1AE23D0DC();
    v199(v188, v201);
    v161 = *(v157 + 48);
    v162 = v205;
    if (v161(v205, 1, v88) == 1)
    {

      goto LABEL_41;
    }

    v163 = *v195;
    v164 = v195[1];
    v165 = v173;
    (v196)(v173, v162, v204);
    if (v161(v165, 1, v88) != 1)
    {

      v209 = v163;
      v210 = v164;
      v166 = v172;
      CROrderedDictionary.subscript.getter(v165, v189);
      v167 = (*(v186 + 48))(v166, 1, v201);
      (*(v178 + 8))(v166, v179);
      v157 = v197;
      v168 = *(v197 + 8);
      v168(v165, v88);
      if (v167 != 1)
      {
LABEL_43:
        v168(v185, v88);
        v135 = 0;
        v93 = 0;
        v134 = sub_1ADE5E6B4;
        v133 = sub_1ADE5E694;
        v131 = v206;
        goto LABEL_44;
      }

LABEL_41:
      (v180)(v182, v206, v88);
      sub_1AE23D38C();
      v169 = v183;
      sub_1AE23D33C();
      v168 = *(v157 + 8);
      v168(v169, v88);
      goto LABEL_43;
    }

    goto LABEL_52;
  }

LABEL_53:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t CROrderedTree.insert(_:toParent:at:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v160 = a2;
  v159 = a1;
  v6 = a4[2];
  v157 = *(v6 - 8);
  v7 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v154 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v155 = &v135 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v135 - v12;
  v14 = sub_1AE23D7CC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v156 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v135 - v19;
  v22 = a4[3];
  v21 = a4[4];
  v158 = a4;
  v23 = type metadata accessor for TreeNode();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](&v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v34 = MEMORY[0x1EEE9AC00](v28);
  v36 = &v135 - v35;
  v162 = a3;
  if (a3 < 0)
  {
    goto LABEL_22;
  }

  v150 = v30;
  v140 = v29;
  v144 = v33;
  v145 = v13;
  v142 = v32;
  v143 = v15;
  v37 = *(v15 + 16);
  v149 = v14;
  v38 = v14;
  v39 = v31;
  v152 = v15 + 16;
  v148 = v37;
  (v37)(v20, v160, v38, v34);
  v147 = v20;
  v153 = v21;
  sub_1ADE1E114(v20, v6, v36);
  v40 = v161[2];
  v41 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  v141 = v41;
  v146 = WitnessTable;
  sub_1AE23CB7C();
  v139 = v39;
  v44 = *(v39 + 8);
  v43 = (v39 + 8);
  v151 = v44;
  v44(v36, v23);
  v45 = v22;
  if (v163)
  {
    v46 = v6;
    v47 = sub_1AE23D0AC();

    if (v47 < v162)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v46 = v6;
    if (v162)
    {
LABEL_8:
      v60 = 0;
      v61 = 0;
LABEL_23:
      sub_1ADDDCE80(v61);
      return v60;
    }
  }

  v138 = v45;
  v137 = v23;
  v48 = v161;
  v49 = v161[1];
  v50 = v161[2];
  v51 = v161[3];
  v163 = *v161;
  v164 = v49;
  v165 = v50;
  v166 = v51;

  v136 = v50;

  v53 = v159;
  v52 = v160;
  LOBYTE(v49) = sub_1AE180290(v159, v160, v158);

  if ((v49 & 1) == 0)
  {
LABEL_22:
    v60 = 0;
    v61 = 0;
    goto LABEL_23;
  }

  v54 = v48[1];
  v169 = *v48;
  v170 = v54;

  v55 = v137;
  v56 = swift_getWitnessTable();
  v57 = v46;
  v163 = v46;
  v164 = v55;
  v165 = v138;
  v166 = v153;
  v167 = &off_1F23C93F8;
  v168 = v56;
  v58 = type metadata accessor for CROrderedDictionary();
  LOBYTE(v54) = CROrderedDictionary.contains(_:)(v53, v58);

  v59 = v162;
  if (v54)
  {
    goto LABEL_8;
  }

  v62 = v55;
  v158 = v43;
  v63 = v147;
  v148(v147, v52, v149);
  v64 = v150;
  sub_1ADE1E114(v63, v57, v150);
  v65 = v136;
  if (*(v136 + 16) && (v66 = sub_1ADDFFB6C(v64, v62, v146), (v67 & 1) != 0))
  {
    v68 = *(*(v65 + 56) + 8 * v66);
  }

  else
  {
    sub_1AE23D05C();
  }

  v69 = v156;
  v70 = v143;
  v71 = v62;
  v151(v150, v62);
  v135 = v58;
  if (v59)
  {
    sub_1AE23D15C();

    v72 = v157;
    (*(v157 + 56))(v69, 0, 1, v57);
LABEL_20:
    v96 = v145;
    (*(v72 + 32))(v145, v69, v57);
    v97 = v161[1];
    v163 = *v161;
    v164 = v97;
    MEMORY[0x1EEE9AC00](v163);
    v98 = v57;
    v99 = v138;
    *(&v135 - 4) = v57;
    *(&v135 - 3) = v99;
    v100 = v153;
    *(&v135 - 2) = v153;
    *(&v135 - 1) = v96;

    v101 = v72;
    v102 = CROrderedDictionary.index(where:)(sub_1ADE5E698, (&v135 - 6), v135);
    v104 = v103;

    if (v104)
    {
      (*(v101 + 8))(v96, v57);
      goto LABEL_22;
    }

    v106 = v147;
    v107 = v160;
    v108 = v149;
    v109 = v148;
    v148(v147, v160, v149);
    v110 = v142;
    sub_1ADE1E114(v106, v98, v142);
    v111 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
      __break(1u);
    }

    else
    {
      v112 = v159;
      v113 = v161;
      CROrderedDictionary.insert(value:forKey:at:)(v110, v159, v111, v135);
      v151(v110, v137);
      v109(v106, v107, v108);
      v114 = v144;
      sub_1ADE1E114(v106, v98, v144);
      v115 = swift_allocObject();
      v115[2] = v98;
      v115[3] = v99;
      v115[4] = v100;
      v116 = v112;
      v117 = v115;
      (*(v157 + 16))(v155, v116, v98);
      v118 = swift_allocObject();
      v160 = v98;
      v118[2] = v98;
      v118[3] = v99;
      v118[4] = v100;
      v118[5] = sub_1ADE5E694;
      v118[6] = v117;
      v119 = v113[2];
      swift_isUniquelyReferenced_nonNull_native();
      v120 = v113[2];
      v163 = v120;
      v121 = v137;
      v122 = v146;
      v123 = sub_1ADDFFB6C(v114, v137, v146);
      if (!__OFADD__(*(v120 + 16), (v124 & 1) == 0))
      {
        v125 = v123;
        v126 = v124;
        sub_1AE23DC0C();
        if ((sub_1AE23DBEC() & 1) == 0)
        {
LABEL_29:
          v129 = v163;
          v161[2] = v163;
          if ((v126 & 1) == 0)
          {
            v130 = v118[6];
            v163 = (v118[5])();
            (*(v139 + 16))(v142, v144, v121);
            sub_1AE23DBFC();
          }

          v131 = *(v129 + 56) + 8 * v125;
          sub_1AE23D0DC();
          v151(v144, v121);
          (*(v157 + 8))(v145, v160);

          v61 = 0;
          v60 = 1;
          goto LABEL_23;
        }

        v127 = sub_1ADDFFB6C(v144, v121, v122);
        if ((v126 & 1) == (v128 & 1))
        {
          v125 = v127;
          goto LABEL_29;
        }

        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    sub_1AE23E27C();
    __break(1u);
    goto LABEL_40;
  }

  v73 = v148;
  v148(v69, v52, v149);
  v72 = v157;
  if ((*(v157 + 48))(v69, 1, v57) != 1)
  {
    goto LABEL_20;
  }

  v74 = v149;
  (*(v70 + 8))(v69, v149);
  v73(v63, v52, v74);
  v75 = v142;
  v76 = v63;
  v77 = v138;
  v78 = v63;
  v79 = v153;
  sub_1ADE1E114(v76, v57, v142);
  v80 = v57;
  v81 = v72;
  v82 = v161;
  CROrderedDictionary.insert(value:forKey:at:)(v75, v159, 0, v135);
  v151(v75, v71);
  v148(v78, v52, v74);
  v83 = v140;
  sub_1ADE1E114(v78, v80, v140);
  v84 = swift_allocObject();
  v84[2] = v80;
  v84[3] = v77;
  v84[4] = v79;
  (*(v81 + 16))(v154, v159, v80);
  v85 = swift_allocObject();
  v85[2] = v80;
  v85[3] = v77;
  v85[4] = v79;
  v85[5] = sub_1ADE5E694;
  v160 = v85;
  v85[6] = v84;
  v86 = v82[2];
  swift_isUniquelyReferenced_nonNull_native();
  v87 = v82[2];
  v163 = v87;
  v88 = v146;
  v89 = sub_1ADDFFB6C(v83, v71, v146);
  if (__OFADD__(*(v87 + 16), (v90 & 1) == 0))
  {
    goto LABEL_38;
  }

  v91 = v89;
  v92 = v90;
  sub_1AE23DC0C();
  if ((sub_1AE23DBEC() & 1) == 0)
  {
    v95 = v161;
    goto LABEL_33;
  }

  v93 = sub_1ADDFFB6C(v140, v71, v88);
  v95 = v161;
  if ((v92 & 1) == (v94 & 1))
  {
    v91 = v93;
LABEL_33:
    v132 = v163;
    v95[2] = v163;
    if ((v92 & 1) == 0)
    {
      v133 = v160[6];
      v163 = (v160[5])();
      (*(v139 + 16))(v142, v140, v71);
      sub_1AE23DBFC();
    }

    v134 = *(v132 + 56) + 8 * v91;
    sub_1AE23D0DC();
    v151(v140, v71);

    v61 = sub_1ADE5DA58;
    v60 = 1;
    goto LABEL_23;
  }

LABEL_40:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t CROrderedTree.move(_:toParent:at:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4[2];
  v8 = *(v7 - 8);
  v261 = a1;
  v262 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v252 = &v212 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v251 = &v212 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v243 = &v212 - v14;
  v15 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v250 = *(TupleTypeMetadata2 - 8);
  v16 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v245 = &v212 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v244 = &v212 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v249 = &v212 - v21;
  v23 = a4[3];
  v22 = a4[4];
  v259 = a4;
  v24 = type metadata accessor for TreeNode();
  v254 = sub_1AE23D7CC();
  v253 = *(v254 - 8);
  v25 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v254);
  v260 = &v212 - v26;
  v27 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  v247 = &v212 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v246 = (&v212 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v212 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v42 = *(v24 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  MEMORY[0x1EEE9AC00](&v212 - v46);
  v248 = &v212 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v255 = &v212 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v63 = MEMORY[0x1EEE9AC00](v51);
  v65 = &v212 - v64;
  if (a3 < 0)
  {
    return 0;
  }

  v228 = v59;
  v232 = v57;
  v227 = v56;
  v229 = v55;
  v231 = v54;
  v226 = v53;
  v230 = v52;
  v234 = v62;
  v240 = v61;
  v263 = a3;
  v233 = v58;
  v66 = *(v58 + 16);
  v67 = v60;
  v256 = a2;
  v241 = v58 + 16;
  v242 = v66;
  (v66)(v60, a2, v15, v63);
  v238 = v67;
  v258 = v22;
  sub_1ADE1E114(v67, v7, v65);
  v68 = v264[2];
  v235 = v264 + 2;
  v69 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  v236 = v69;
  v237 = WitnessTable;
  sub_1AE23CB7C();
  v71 = (v42 + 8);
  v72 = *(v42 + 8);
  v72(v65, v24);
  if (v266)
  {
    v73 = sub_1AE23D0AC();

    if (v73 < v263)
    {
      return 0;
    }
  }

  else if (v263)
  {
    return 0;
  }

  v239 = v23;
  v224 = v42;
  v223 = v72;
  v75 = v262 + 48;
  v76 = v256;
  v225 = *(v262 + 48);
  if (v225(v256, 1, v7) != 1)
  {
    v77 = v264[1];
    v272 = *v264;
    v273 = v77;
    v242(v40, v76, v15);
    if (v225(v40, 1, v7) == 1)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v78 = swift_getWitnessTable();
    v266 = v7;
    v267 = v24;
    v268 = v239;
    v269 = v258;
    v270 = &off_1F23C93F8;
    v271 = v78;
    v79 = type metadata accessor for CROrderedDictionary();
    v80 = CROrderedDictionary.contains(_:)(v40, v79);

    (*(v262 + 8))(v40, v7);
    if (!v80)
    {
      return 0;
    }
  }

  v220 = v75;
  v221 = v15;
  v81 = v7;
  v82 = v264;
  v83 = v264[1];
  v272 = *v264;
  v273 = v83;
  MEMORY[0x1EEE9AC00](v272);
  v84 = v239;
  *(&v212 - 4) = v81;
  *(&v212 - 3) = v84;
  v85 = v258;
  v86 = v261;
  *(&v212 - 2) = v258;
  *(&v212 - 1) = v86;

  v87 = swift_getWitnessTable();
  v266 = v81;
  v267 = v24;
  v222 = v24;
  v268 = v84;
  v269 = v85;
  v270 = &off_1F23C93F8;
  v271 = v87;
  v88 = type metadata accessor for CROrderedDictionary();
  v219 = CROrderedDictionary.index(where:)(sub_1ADE5E698, (&v212 - 6), v88);
  LOBYTE(v83) = v89;

  if (v83)
  {
    return 0;
  }

  v217 = 0;
  v218 = v88;
  v90 = v82[3];
  v91 = v261;
  if (sub_1AE23D37C())
  {
    v92 = v238;
    (*(v262 + 56))(v238, 1, 1, v81);
    v93 = v81;
    v94 = v81;
    v95 = v260;
    sub_1ADE1E114(v92, v94, v260);
    v96 = v224;
    v97 = v222;
    (*(v224 + 56))(v95, 0, 1, v222);
    goto LABEL_15;
  }

  v93 = v81;
  v98 = v82[1];
  v266 = *v82;
  v267 = v98;
  v95 = v260;
  CROrderedDictionary.subscript.getter(v91, v218);
  v96 = v224;
  v97 = v222;
  if ((*(v224 + 48))(v95, 1, v222) == 1)
  {
    (*(v253 + 8))(v95, v254);
    return 0;
  }

LABEL_15:
  v254 = (v82 + 3);
  v260 = v71;
  v99 = v240;
  (*(v96 + 32))(v240, v95, v97);
  v100 = *v82;
  v101 = v82[1];
  v102 = v82[2];
  v103 = v82[3];
  v266 = v100;
  v267 = v101;
  v268 = v102;
  v269 = v103;

  v104 = v256;
  v105 = sub_1AE180290(v91, v256, v259);

  if ((v105 & 1) == 0)
  {
    v223(v99, v97);
    return 0;
  }

  v253 = v103;
  v106 = v238;
  v107 = v221;
  v242(v238, v104, v221);
  v108 = v255;
  v109 = v258;
  sub_1ADE1E114(v106, v93, v255);
  v110 = v263;
  if (*(v102 + 16) && (v111 = sub_1ADDFFB6C(v108, v97, v237), v109 = v258, (v112 & 1) != 0))
  {
    v259 = *(*(v102 + 56) + 8 * v111);
  }

  else
  {
    v259 = sub_1AE23D05C();
  }

  v113 = v223;
  v223(v108, v97);
  v114 = v240;
  sub_1AE23CB7C();
  if (!v272)
  {
    v113(v114, v97);
    goto LABEL_26;
  }

  v265 = v272;
  swift_getWitnessTable();
  v115 = *(v109 + 8);
  sub_1AE23D4FC();

  if (v267 == 1)
  {
    v223(v240, v97);
LABEL_26:

    return 0;
  }

  v214 = v115;
  v215 = v266;
  v116 = v246;
  sub_1ADE17570(v97, v246);
  v117 = *(TupleTypeMetadata2 + 48);
  v118 = v249;
  v119 = v242;
  v242(v249, v116, v107);
  v119(&v118[v117], v256, v107);
  v120 = v225;
  v121 = v225(v118, 1, v93);
  v216 = v93;
  if (v121 != 1)
  {
    v119(v247, v118, v221);
    if (v120(&v118[v117], 1, v93) != 1)
    {
      v127 = v118;
      v128 = v262;
      v129 = v243;
      (*(v262 + 32))(v243, &v127[v117], v93);
      v130 = v247;
      v131 = sub_1AE23CCBC();
      v132 = *(v128 + 8);
      v132(v129, v93);
      v122 = *(v233 + 8);
      v125 = v221;
      (v122)(v116, v221);
      v132(v130, v93);
      (v122)(v249, v125);
      v124 = v224;
      v126 = v248;
      if ((v131 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v122 = *(v233 + 8);
    v125 = v221;
    (v122)(v116, v221);
    (*(v262 + 8))(v247, v93);
    v124 = v224;
    v126 = v248;
LABEL_33:
    (*(v250 + 8))(v118, TupleTypeMetadata2);
    goto LABEL_37;
  }

  v122 = *(v233 + 8);
  (v122)(v116, v221);
  v123 = v120(&v118[v117], 1, v93);
  v124 = v224;
  if (v123 != 1)
  {
    v126 = v248;
    v125 = v221;
    goto LABEL_33;
  }

  v125 = v221;
  (v122)(v118, v221);
  v126 = v248;
LABEL_35:
  if (v215 == v110 || v215 == v110 - 1)
  {
    v223(v240, v97);

    return 1;
  }

LABEL_37:
  v255 = v122;
  v133 = *(v124 + 16);
  v224 = v124 + 16;
  v213 = v133;
  v133(v126, v240, v97);
  sub_1AE23CB1C();
  v134 = sub_1AE23CB6C();
  if (*v135)
  {
    v136 = v228;
    sub_1AE23D0EC();
    v134(&v266, 0);
    v137 = 0;
    v138 = v242;
  }

  else
  {
    v134(&v266, 0);
    v137 = 1;
    v138 = v242;
    v136 = v228;
  }

  v223(v126, v97);
  v139 = *(v262 + 56);
  v140 = v97;
  v141 = v216;
  v247 = (v262 + 56);
  v246 = v139;
  (v139)(v136, v137, 1, v216);
  v142 = (v233 + 8);
  (v255)(v136, v125);
  v143 = v232;
  sub_1ADE17570(v140, v232);
  v144 = *(TupleTypeMetadata2 + 48);
  v145 = v244;
  v138(v244, v143, v125);
  v248 = v144;
  v138(&v144[v145], v256, v125);
  v146 = v225;
  v147 = v225(v145, 1, v141);
  v249 = v142;
  if (v147 == 1)
  {
    (v255)(v143, v125);
    v148 = v216;
    v149 = v146(&v248[v145], 1);
    v150 = v218;
    v151 = v222;
    if (v149 == 1)
    {
      (v255)(v145, v125);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v152 = v227;
  v138(v227, v145, v125);
  v153 = v248;
  v154 = v216;
  if ((v146)(&v248[v145], 1, v216) == 1)
  {
    (v255)(v232, v125);
    v155 = v152;
    v148 = v154;
    (*(v262 + 8))(v155, v154);
    v150 = v218;
    v151 = v222;
LABEL_45:
    (*(v250 + 8))(v145, TupleTypeMetadata2);
LABEL_46:
    v156 = v238;
    v242(v238, v256, v125);
    v157 = v230;
    sub_1ADE1E114(v156, v148, v230);
    sub_1AE00D9DC(v261, v157, v150);
    v223(v157, v151);
    goto LABEL_47;
  }

  v178 = v262;
  v179 = &v153[v145];
  v180 = v125;
  v181 = v145;
  v182 = v243;
  (*(v262 + 32))(v243, v179, v154);
  v183 = sub_1AE23CCBC();
  v184 = *(v178 + 8);
  v184(v182, v154);
  v185 = v255;
  (v255)(v232, v180);
  v186 = v152;
  v148 = v154;
  v184(v186, v154);
  v110 = v263;
  v187 = v181;
  v125 = v180;
  (v185)(v187, v180);
  v150 = v218;
  v151 = v222;
  if ((v183 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_47:
  if (v110)
  {
    v158 = v229;
    v159 = v148;
    sub_1AE23D15C();
    (v246)(v158, 0, 1, v148);
  }

  else
  {
    v158 = v229;
    v242(v229, v256, v125);
    v159 = v148;
    if (v225(v158, 1, v148) == 1)
    {

      (v255)(v158, v125);
      v160 = 0;
      v161 = v245;
      goto LABEL_54;
    }
  }

  v162 = v251;
  (*(v262 + 32))(v251, v158, v159);
  v163 = v264[1];
  v266 = *v264;
  v267 = v163;
  MEMORY[0x1EEE9AC00](v266);
  v164 = v239;
  *(&v212 - 4) = v159;
  *(&v212 - 3) = v164;
  *(&v212 - 2) = v258;
  *(&v212 - 1) = v162;

  v165 = CROrderedDictionary.index(where:)(sub_1ADE5E698, (&v212 - 6), v218);
  v167 = v166;

  if (v167)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v160 = v165 + 1;
  v161 = v245;
  if (__OFADD__(v165, 1))
  {
    goto LABEL_77;
  }

  (*(v262 + 8))(v251, v159);
LABEL_54:
  CROrderedDictionary.move(from:to:)(v219, v160);
  v168 = v231;
  sub_1ADE17570(v151, v231);
  v169 = *(TupleTypeMetadata2 + 48);
  v170 = v242;
  v242(v161, v168, v125);
  v170(&v161[v169], v256, v125);
  v171 = v125;
  v172 = v225;
  if (v225(v161, 1, v159) == 1)
  {
    (v255)(v168, v171);
    v173 = v159;
    v174 = v172(&v161[v169], 1, v159);
    v175 = v258;
    if (v174 == 1)
    {
      (v255)(v161, v221);
      v176 = v261;
LABEL_67:
      v263 = v110 - (v215 < v110);
      goto LABEL_68;
    }

    goto LABEL_59;
  }

  v177 = v226;
  v170(v226, v161, v171);
  if (v172(&v161[v169], 1, v159) == 1)
  {
    (v255)(v231, v171);
    v173 = v159;
    (*(v262 + 8))(v177, v159);
    v175 = v258;
    v172 = v225;
LABEL_59:
    (*(v250 + 8))(v161, TupleTypeMetadata2);
    v176 = v261;
    goto LABEL_60;
  }

  v188 = v262;
  v189 = v243;
  (*(v262 + 32))(v243, &v161[v169], v159);
  LODWORD(v264) = sub_1AE23CCBC();
  v190 = *(v188 + 8);
  v190(v189, v159);
  v191 = v255;
  (v255)(v231, v171);
  v173 = v159;
  v190(v177, v159);
  v151 = v222;
  (v191)(v161, v171);
  v175 = v258;
  v172 = v225;
  v176 = v261;
  if (v264)
  {
    goto LABEL_67;
  }

LABEL_60:
  if ((sub_1AE23D37C() & 1) != 0 && v172(v256, 1, v173) == 1)
  {
    goto LABEL_67;
  }

LABEL_68:
  v192 = v238;
  v242(v238, v256, v221);
  v193 = v234;
  v194 = v239;
  sub_1ADE1E114(v192, v173, v234);
  v195 = swift_allocObject();
  v195[2] = v173;
  v195[3] = v194;
  v195[4] = v175;
  (*(v262 + 16))(v252, v176, v173);
  v196 = swift_allocObject();
  v196[2] = v173;
  v196[3] = v194;
  v196[4] = v175;
  v196[5] = sub_1ADE5E694;
  v196[6] = v195;
  v197 = v235;
  v198 = *v235;
  swift_isUniquelyReferenced_nonNull_native();
  v199 = *v197;
  v266 = v199;
  v200 = v237;
  v201 = sub_1ADDFFB6C(v193, v151, v237);
  if (__OFADD__(*(v199 + 16), (v202 & 1) == 0))
  {
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v203 = v201;
  v204 = v202;
  sub_1AE23DC0C();
  if (sub_1AE23DBEC())
  {
    v205 = sub_1ADDFFB6C(v234, v151, v200);
    if ((v204 & 1) == (v206 & 1))
    {
      v203 = v205;
      goto LABEL_72;
    }

LABEL_80:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_72:
  v207 = v266;
  *v235 = v266;
  if ((v204 & 1) == 0)
  {
    v208 = v196[6];
    v266 = (v196[5])();
    v213(v230, v234, v151);
    sub_1AE23DBFC();
  }

  v209 = *(v207 + 56) + 8 * v203;
  sub_1AE23D0DC();
  v210 = v223;
  v223(v234, v151);
  sub_1AE23D38C();
  v211 = v238;
  sub_1AE23D34C();
  (v255)(v211, v221);
  v210(v240, v151);

  return 1;
}

uint64_t CROrderedTree.append(_:inParent:)(void (*a1)(void, void), uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = a3[2];
  v9 = a3[4];
  v156 = a3[3];
  v154 = v9;
  v10 = type metadata accessor for TreeNode();
  v138 = sub_1AE23D7CC();
  v137 = *(v138 - 8);
  v11 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v124 - v12;
  v153 = v10;
  v158 = *(v10 - 8);
  v13 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v155 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v150 = &v124 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v140 = &v124 - v19;
  v152 = sub_1AE23D7CC();
  v149 = *(v152 - 8);
  v20 = v149[8];
  MEMORY[0x1EEE9AC00](v152);
  v139 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v147 = &v124 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v141 = &v124 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v124 - v27;
  v159 = *(v8 - 8);
  v29 = v159[8];
  MEMORY[0x1EEE9AC00](v30);
  v143 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v144 = &v124 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v151 = &v124 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v133 = &v124 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v145 = &v124 - v39;
  v40 = *v3;
  v41 = v3[1];
  v42 = v3[2];
  v43 = v4[3];
  v142 = v4 + 3;
  v162 = v40;
  v163 = v41;
  v164 = v42;
  v165 = v43;

  v44 = a1;
  v45 = a1;
  v46 = a2;
  LOBYTE(v41) = sub_1AE180290(v45, a2, a3);

  if (v41)
  {
    v146 = v44;
    v134 = a3;
    sub_1AE18065C(v44, a3);
    v48 = v149;
    v49 = v149[2];
    v50 = a2;
    v51 = v152;
    v148 = v149 + 2;
    v49(v28, v46, v152);
    v52 = v159;
    v53 = v159[6];
    v132 = v159 + 6;
    v54 = v53(v28, 1, v8);
    v157 = v4;
    v55 = v52;
    v56 = v8;
    v135 = v50;
    v131 = v49;
    v130 = v53;
    if (v54 == 1)
    {
      v57 = v48;
      v58 = v28;
      v59 = v146;
      v60 = v154;
      v61 = v156;
      v62 = v147;
    }

    else
    {
      v63 = v145;
      v64 = v8;
      v65 = v4;
      v66 = v55;
      v128 = v55[4];
      v127 = v55 + 4;
      v128(v145, v28, v64);
      v67 = v66[2];
      v62 = v147;
      v126 = v66 + 2;
      v125 = v67;
      v67(v147, v63, v56);
      v129 = v66[7];
      v129(v62, 0, 1, v56);
      v68 = v140;
      sub_1ADE1E114(v62, v56, v140);
      v69 = v65[2];
      sub_1AE23D11C();
      v70 = v153;
      swift_getWitnessTable();
      sub_1AE23CB7C();
      v140 = *(v158 + 8);
      (v140)(v68, v70);
      if (v162)
      {
        v124 = v66 + 7;
        v160 = v162;
        swift_getWitnessTable();
        v58 = v141;
        sub_1AE23CBEC();

        if (v53(v58, 1, v56) != 1)
        {
          v110 = v133;
          v128(v133, v58, v56);
          v111 = v157[1];
          v160 = *v157;
          v161 = v111;
          MEMORY[0x1EEE9AC00](v160);
          v112 = v156;
          *(&v124 - 4) = v56;
          *(&v124 - 3) = v112;
          v113 = v154;
          *(&v124 - 2) = v154;
          *(&v124 - 1) = v110;

          v114 = v153;
          WitnessTable = swift_getWitnessTable();
          v162 = v56;
          v163 = v114;
          v164 = v112;
          v165 = v113;
          v166 = &off_1F23C93F8;
          v167 = WitnessTable;
          v116 = type metadata accessor for CROrderedDictionary();
          v117 = CROrderedDictionary.index(where:)(sub_1ADE5E698, (&v124 - 6), v116);
          LOBYTE(v114) = v118;

          if (v114)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v119 = v147;
          v120 = v145;
          v125(v147, v145, v56);
          v129(v119, 0, 1, v56);
          v121 = v150;
          sub_1ADE1E114(v119, v56, v150);
          v122 = v152;
          if (__OFADD__(v117, 1))
          {
            goto LABEL_26;
          }

          v59 = v146;
          CROrderedDictionary.moveOrInsert(value:forKey:to:)(v121, v146, v117 + 1, v116);
          v73 = v153;
          (v140)(v121, v153);
          v123 = v159[1];
          v123(v120, v56);
          v123(v133, v56);
          v77 = v156;
          v60 = v154;
          v76 = v56;
          v62 = v147;
          v131(v147, v135, v122);
LABEL_9:
          v78 = v155;
          sub_1ADE1E114(v62, v76, v155);
          v79 = swift_allocObject();
          v79[2] = v76;
          v79[3] = v77;
          v79[4] = v60;
          v80 = (v159 + 2);
          v147 = v159[2];
          (v147)(v151, v59, v76);
          v81 = swift_allocObject();
          v81[2] = v76;
          v81[3] = v77;
          v81[4] = v60;
          v81[5] = sub_1ADE5E694;
          v149 = v79;
          v81[6] = v79;
          v82 = v157;
          v83 = v157[2];
          swift_isUniquelyReferenced_nonNull_native();
          v162 = v82[2];
          v84 = v162;
          v85 = swift_getWitnessTable();
          v141 = sub_1ADDFFB6C(v78, v73, v85);
          if (!__OFADD__(*(v84 + 16), (v86 & 1) == 0))
          {
            v87 = v86;
            v88 = v76;
            v145 = v80;
            sub_1AE23D11C();
            sub_1AE23DC0C();
            if (sub_1AE23DBEC())
            {
              v89 = sub_1ADDFFB6C(v155, v73, v85);
              v91 = v135;
              if ((v87 & 1) != (v90 & 1))
              {
LABEL_29:
                result = sub_1AE23E27C();
                __break(1u);
                return result;
              }

              v92 = v89;
            }

            else
            {
              v91 = v135;
              v92 = v141;
            }

            v93 = v162;
            v157[2] = v162;
            if ((v87 & 1) == 0)
            {
              v94 = v81[6];
              v162 = (v81[5])();
              (*(v158 + 16))(v150, v155, v73);
              sub_1AE23DBFC();
            }

            v95 = *(v93 + 56) + 8 * v92;
            sub_1AE23D0CC();
            (v140)(v155, v73);
            v96 = v130;
            v97 = v130(v91, 1, v88);
            v98 = v134;
            v99 = v146;
            v100 = v154;
            if (v97 == 1)
            {
              goto LABEL_19;
            }

            v101 = v91;
            v102 = *v157;
            v103 = v157[1];
            v104 = v139;
            v131(v139, v101, v152);
            if (v96(v104, 1, v88) != 1)
            {
              v160 = v102;
              v161 = v103;
              v105 = v153;
              v106 = swift_getWitnessTable();
              v162 = v88;
              v163 = v105;
              v164 = v156;
              v165 = v100;
              v166 = &off_1F23C93F8;
              v167 = v106;
              v107 = type metadata accessor for CROrderedDictionary();
              v108 = v136;
              CROrderedDictionary.subscript.getter(v104, v107);
              LODWORD(v105) = (*(v158 + 48))(v108, 1, v105);
              (*(v137 + 8))(v108, v138);
              (v159[1])(v104, v88);
              v98 = v134;
              if (v105 != 1)
              {
LABEL_20:
                sub_1AE180C48(v99, v98);
              }

LABEL_19:
              (v147)(v143, v99, v88);
              sub_1AE23D38C();
              v109 = v144;
              sub_1AE23D33C();
              (v159[1])(v109, v88);
              goto LABEL_20;
            }

            goto LABEL_27;
          }

          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        (v159[1])(v145, v56);
        v50 = v135;
        v51 = v152;
        v60 = v154;
        v49 = v131;
        v57 = v149;
        v61 = v156;
        v59 = v146;
      }

      else
      {
        (v66[1])(v63, v56);
        v58 = v141;
        v129(v141, 1, 1, v56);
        v59 = v146;
        v50 = v135;
        v51 = v152;
        v60 = v154;
        v49 = v131;
        v57 = v149;
        v61 = v156;
      }
    }

    (v57[1])(v58, v51);
    v49(v62, v50, v51);
    v71 = v150;
    sub_1ADE1E114(v62, v56, v150);
    v72 = v61;
    v73 = v153;
    v74 = swift_getWitnessTable();
    v162 = v56;
    v163 = v73;
    v164 = v72;
    v165 = v60;
    v166 = &off_1F23C93F8;
    v167 = v74;
    v75 = type metadata accessor for CROrderedDictionary();
    v76 = v56;
    CROrderedDictionary.moveOrAppend(value:forKey:)(v71, v59, v75);
    v140 = *(v158 + 8);
    (v140)(v71, v73);
    v77 = v156;
    v49(v62, v50, v51);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1ADE5C0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for TreeNode();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v19 - v15;
  (*(*(a4 - 8) + 16))(&v19 - v15, a1, a4, v14);
  (*(*(v10 - 8) + 16))(&v16[*(TupleTypeMetadata2 + 48)], a2, v10);
  v17 = *(a6 + 8);
  LOBYTE(a4) = sub_1AE23CCBC();
  (*(v12 + 8))(v16, TupleTypeMetadata2);
  return a4 & 1;
}

uint64_t CROrderedTree.append(_:toParent:)(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *v3;
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];

  CROrderedTree.children(of:)(a2, a3);

  v7 = a3[2];
  v8 = sub_1AE23D0AC();

  return CROrderedTree.insert(_:toParent:at:)(a1, a2, v8, a3);
}

uint64_t CROrderedTree.init<A>(uniqueNodesAndParents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (**a6)(char *, char *, uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v188 = a6;
  v160 = a1;
  v153 = a7;
  v197 = type metadata accessor for TreeNode();
  v159 = *(v197 - 8);
  v11 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v196 = &v150 - v12;
  v13 = sub_1AE23D7CC();
  i = sub_1AE23D11C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v178 = sub_1AE23D7CC();
  v156 = *(v178 - 8);
  v14 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v177 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v185 = &v150 - v17;
  v155 = sub_1AE23D7CC();
  v154 = *(v155 - 8);
  v18 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v163 = &v150 - v19;
  v161 = *(v13 - 8);
  v20 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v192 = (&v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v190 = &v150 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v158 = &v150 - v26;
  v198 = *(a2 - 8);
  v27 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v201 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v195 = (&v150 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v194 = &v150 - v33;
  v151 = v34;
  MEMORY[0x1EEE9AC00](v35);
  v187 = &v150 - v36;
  v179 = swift_getTupleTypeMetadata2();
  v37 = sub_1AE23D7CC();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v150 - v39;
  v176 = a3;
  v41 = *(a3 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v150 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v157 = *(AssociatedTypeWitness - 8);
  v47 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = (&v150 - v48);
  v199 = a4;
  CROrderedTree.init()(a2, a5, &v202);
  v210 = v202;
  v211 = v203;
  v212 = v204;
  v50 = i;
  swift_getTupleTypeMetadata2();
  v51 = sub_1AE23D05C();
  v200 = a5;
  v208 = a5;
  WitnessTable = swift_getWitnessTable();
  v52 = sub_1ADDEAF38(v51, v13, v50, WitnessTable);

  v209 = v52;
  v53 = v40;
  v152 = v41;
  (*(v41 + 16))(v45, v160, v176);
  sub_1AE23CE7C();
  v54 = v158;
  v55 = v187;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v174 = v49;
  v175 = AssociatedTypeWitness;
  v173 = AssociatedConformanceWitness;
  sub_1AE23D80C();
  v57 = v179;
  v58 = *(v179 - 8);
  v172 = *(v58 + 48);
  v171 = (v58 + 48);
  v59 = v172(v53, 1, v179);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v191 = v13;
  if (v59 == 1)
  {
LABEL_2:
    v167 = v60;
    v182 = v62;
    v184 = v63;
    v181 = v61;
    (*(v157 + 8))(v174, v175);
    sub_1AE23DDAC();
    v64 = v161;
    v65 = *(v161 + 80);
    v175 = *(v161 + 72);
    swift_allocObject();
    v66 = sub_1AE23CFFC();
    v67 = *(v198 + 56);
    v194 = (v198 + 56);
    v193 = v67;
    v67(v68, 1, 1, a2);
    v202 = v66;
    v69 = sub_1AE23D11C();
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v69, v70);
    v71 = swift_getWitnessTable();
    v169 = v69;
    v168 = v71;
    v72 = sub_1ADE5E330(&v202, v13, v69, v71);

    v207 = v72;
    v73 = sub_1AE23C26C();
    v74 = v163;
    v179 = v73;
    sub_1AE23C25C();
    v75 = *(v64 + 48);
    v174 = (v64 + 48);
    v173 = v75;
    v76 = v75(v74, 1, v13);
    v77 = TupleTypeMetadata2;
    v78 = v192;
    if (v76 != 1)
    {
      v171 = *(v161 + 32);
      v189 = (v198 + 16);
      v188 = (v161 + 16);
      v187 = (v159 + 8);
      v134 = (v198 + 8);
      v172 = (v161 + 32);
      v170 = (v161 + 8);
      v135 = v195;
      v171(v192, v74, v13);
      while (1)
      {
        sub_1AE23CB7C();
        v136 = v202;
        if (v202)
        {
          v202 = sub_1AE23DB9C();
          sub_1AE23C22C();

          sub_1AE23CB1C();
          sub_1AE23CA1C();

          if (sub_1AE23D0AC())
          {
            v137 = 0;
            do
            {
              v138 = sub_1AE23D08C();
              sub_1AE23D00C();
              if (v138)
              {
                (*(v198 + 16))(v195, v136 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v137, a2);
                v139 = v137 + 1;
                if (__OFADD__(v137, 1))
                {
                  goto LABEL_56;
                }
              }

              else
              {
                v149 = sub_1AE23DAAC();
                if (v151 != 8)
                {
                  goto LABEL_60;
                }

                v202 = v149;
                (*v189)(v195, &v202, a2);
                swift_unknownObjectRelease();
                v139 = v137 + 1;
                if (__OFADD__(v137, 1))
                {
LABEL_56:
                  __break(1u);
                  goto LABEL_57;
                }
              }

              v140 = v190;
              (*v188)(v190, v78, v13);
              v141 = v196;
              v142 = v140;
              v144 = v199;
              v143 = v200;
              sub_1ADE1E114(v142, a2, v196);
              v145 = v197;
              v146 = swift_getWitnessTable();
              v202 = a2;
              *&v203 = v145;
              *(&v203 + 1) = v144;
              v204 = v143;
              v78 = v192;
              v205 = &off_1F23C93F8;
              v206 = v146;
              v147 = type metadata accessor for CROrderedDictionary();
              CROrderedDictionary.append(value:forKey:)(v141, v135, v147);
              v148 = v141;
              v13 = v191;
              (*v187)(v148, v145);
              (*v134)(v135, a2);
              ++v137;
            }

            while (v139 != sub_1AE23D0AC());
          }

          (*v170)(v78, v13);
          v77 = TupleTypeMetadata2;
        }

        else
        {
          (*v170)(v78, v13);
        }

        v74 = v163;
        sub_1AE23C25C();
        if (v173(v74, 1, v13) == 1)
        {
          break;
        }

        v171(v78, v74, v13);
      }
    }

    (*(v154 + 8))(v74, v155);
    v79 = v209 + 64;
    v80 = 1 << *(v209 + 32);
    v81 = -1;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    v189 = (v81 & *(v209 + 64));
    v172 = ((v80 + 63) >> 6);
    v187 = (v77 - 8);
    v174 = (v161 + 16);
    v173 = (v161 + 32);
    v188 = (v156 + 32);
    v195 = (v198 + 16);
    v192 = (v159 + 8);
    v82 = (v198 + 8);
    WitnessTable = (v161 + 8);
    v179 = v209;

    v83 = 0;
    for (i = v79; ; v79 = i)
    {
      v84 = v189;
      if (!v189)
      {
        break;
      }

      v85 = v83;
LABEL_17:
      v189 = ((v84 - 1) & v84);
      v88 = __clz(__rbit64(v84)) | (v85 << 6);
      v89 = v179;
      v90 = v190;
      v91 = v191;
      (*v174)(v190, *(v179 + 48) + v88 * v175, v191);
      v92 = *(*(v89 + 56) + 8 * v88);
      v93 = *(v77 + 48);
      v94 = v177;
      (*v173)(v177, v90, v91);
      *&v94[v93] = v92;
      v95 = *(v77 - 8);
      (*(v95 + 56))(v94, 0, 1, v77);

LABEL_18:
      v96 = v185;
      (*v188)(v185, v94, v178);
      if ((*(v95 + 48))(v96, 1, v77) == 1)
      {

        v107 = type metadata accessor for CROrderedTree();
        sub_1ADE145CC(1, v107);
        (*(v152 + 8))(v160, v176);

        sub_1ADDDCE80(v167);
        result = sub_1ADDDCE80(v182);
        v109 = v212;
        v110 = v153;
        *v153 = v210;
        *(v110 + 1) = v211;
        v110[3] = v109;
        return result;
      }

      v97 = *&v96[*(v77 + 48)];
      if (sub_1AE23D0AC())
      {
        v98 = 0;
        do
        {
          v99 = sub_1AE23D08C();
          sub_1AE23D00C();
          if (v99)
          {
            (*(v198 + 16))(v201, v97 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v98, a2);
            v100 = v98 + 1;
            if (__OFADD__(v98, 1))
            {
              goto LABEL_55;
            }
          }

          else
          {
            v106 = sub_1AE23DAAC();
            if (v151 != 8)
            {
              goto LABEL_59;
            }

            v202 = v106;
            (*v195)(v201, &v202, a2);
            swift_unknownObjectRelease();
            v100 = v98 + 1;
            if (__OFADD__(v98, 1))
            {
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }
          }

          v101 = v196;
          v193(v196, 1, 1, a2);
          v102 = v197;
          v103 = swift_getWitnessTable();
          v202 = a2;
          *&v203 = v102;
          *(&v203 + 1) = v199;
          v204 = v200;
          v205 = &off_1F23C93F8;
          v206 = v103;
          v104 = type metadata accessor for CROrderedDictionary();
          v105 = v201;
          CROrderedDictionary.append(value:forKey:)(v101, v201, v104);
          (*v192)(v101, v102);
          (*v82)(v105, a2);
          ++v98;
        }

        while (v100 != sub_1AE23D0AC());
      }

      (*WitnessTable)(v185, v191);
      v77 = TupleTypeMetadata2;
    }

    if (v172 <= v83 + 1)
    {
      v86 = (v83 + 1);
    }

    else
    {
      v86 = v172;
    }

    v87 = v86 - 1;
    while (1)
    {
      v85 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v85 >= v172)
      {
        v95 = *(v77 - 8);
        v94 = v177;
        (*(v95 + 56))(v177, 1, 1, v77);
        v189 = 0;
        v83 = v87;
        goto LABEL_18;
      }

      v84 = *(v79 + 8 * v85);
      ++v83;
      if (v84)
      {
        v83 = v85;
        goto LABEL_17;
      }
    }

LABEL_57:
    __break(1u);
  }

  else
  {
    v111 = 0;
    v62 = 0;
    v112 = 0;
    v60 = 0;
    v169 = *(v198 + 32);
    v168 = (v161 + 32);
    v167 = (v198 + 16);
    v162 = (v161 + 16);
    v165 = (v161 + 8);
    v170 = (v198 + 32);
    v164 = (v198 + 8);
    v166 = v53;
    while (1)
    {
      v189 = v112;
      v182 = v62;
      v193 = v111;
      v115 = *(v57 + 48);
      v116 = v60;
      (v169)(v55, v53, a2);
      (*v168)(v54, &v53[v115], v13);
      v117 = swift_allocObject();
      v118 = v176;
      v117[2] = a2;
      v117[3] = v118;
      v120 = v199;
      v119 = v200;
      v117[4] = v199;
      v117[5] = v119;
      v121 = v54;
      v122 = v188;
      v117[6] = v188;
      sub_1ADDDCE80(v116);
      (*v167)(v194, v55, a2);
      v123 = swift_allocObject();
      v123[2] = a2;
      v123[3] = v118;
      v123[4] = v120;
      v123[5] = v119;
      v123[6] = v122;
      v123[7] = sub_1ADE176F4;
      v181 = v117;
      v184 = v123;
      v123[8] = v117;
      sub_1ADDDCE80(v182);
      v124 = v209;
      swift_isUniquelyReferenced_nonNull_native();
      v202 = v124;
      v125 = WitnessTable;
      v126 = sub_1ADDFFB6C(v121, v13, WitnessTable);
      if (__OFADD__(*(v124 + 16), (v127 & 1) == 0))
      {
        break;
      }

      v128 = v126;
      v129 = v127;
      sub_1AE23DC0C();
      if (sub_1AE23DBEC())
      {
        v130 = sub_1ADDFFB6C(v121, v13, v125);
        if ((v129 & 1) != (v131 & 1))
        {
          goto LABEL_61;
        }

        v128 = v130;
      }

      v54 = v121;
      v132 = v202;
      v209 = v202;
      if ((v129 & 1) == 0)
      {
        v133 = v184[8];
        v202 = (v184[7])();
        (*v162)(v190, v121, v191);
        sub_1AE23DBFC();
      }

      v113 = *(v132 + 56) + 8 * v128;
      sub_1AE23D0CC();
      v13 = v191;
      (*v165)(v121, v191);
      v55 = v187;
      (*v164)(v187, a2);
      v53 = v166;
      sub_1AE23D80C();
      v57 = v179;
      v114 = v172(v53, 1, v179);
      v62 = sub_1ADE5E4B8;
      v60 = sub_1ADE176F4;
      v63 = v184;
      v111 = v184;
      v61 = v181;
      v112 = v181;
      if (v114 == 1)
      {
        goto LABEL_2;
      }
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADE5D9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static CRDT.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1ADE5DA58@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1ADE5DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x1EEE9AC00]();
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v22 = *(v20 + 64);
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_7;
  }

  v25 = *(*(v15 - 8) + 80);
  v26 = __CFADD__(v24, v25 + 1);
  v27 = v24 + v25 + 1;
  if (v26)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = v16(v14 + v21, v14 + ((v27 - 1) & ~v25), v18);
  if (v9)
  {
    return (*(v11 + 32))(a9, v18, a6);
  }

  return result;
}

uint64_t sub_1ADE5DC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23D7CC();
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v28 - v14;
  v29 = *(a5 - 8);
  v15 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v21 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v28 - v22;
  v31 = a2;
  v32 = a4;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a2;
  v40 = a3;
  sub_1AE23CEAC();
  if (v42 != 1)
  {
    return v41;
  }

  (*(v29 + 16))(v18, a1, a5);
  v24 = sub_1AE23CE8C();
  swift_getAssociatedConformanceWitness();
  v25 = v33;
  sub_1AE23D80C();
  (*(v30 + 8))(v23, AssociatedTypeWitness);
  v26 = (*(*(v32 - 8) + 48))(v25, 1);
  result = (*(v34 + 8))(v25, v35);
  if (v26 == 1)
  {
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE5DF20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    sub_1AE23C21C();
    v12 = sub_1AE23D7EC();
    v14 = v13;
    MEMORY[0x1EEE9AC00](v12);
    v15 = *(a7 + 8);
    result = sub_1AE23CEAC();
    if (v17 == 1)
    {
      result = sub_1ADE5DC00(a4, v12, v14, a5, a6, a7);
    }

    *(v16 + 8) = a3;
  }

  return result;
}

uint64_t sub_1ADE5E050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[1] = a2;
  v11[0] = a1;
  v8 = sub_1AE23CCCC();
  WitnessTable = swift_getWitnessTable();
  return sub_1ADE5DC00(v11, a3, a4, a5, v8, WitnessTable);
}

void (*sub_1ADE5E0E4(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_1ADE5E170(v7, *a2, *v3, *(a3 + 16));
  return sub_1ADDF195C;
}

void (*sub_1ADE5E170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = *(a4 - 8);
  v9 = v8;
  a1[1] = a4;
  a1[2] = v8;
  v10 = *(v8 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  a1[3] = v11;
  v13 = sub_1AE23D08C();
  sub_1AE23D00C();
  if (v13)
  {
    (*(v9 + 16))(v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, a4);
    return sub_1ADE5E2E4;
  }

  result = sub_1AE23DAAC();
  if (v10 == 8)
  {
    *a1 = result;
    (*(v9 + 16))(v12, a1, a4);
    swift_unknownObjectRelease();
    return sub_1ADE5E2E4;
  }

  __break(1u);
  return result;
}

void sub_1ADE5E2E4(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

uint64_t sub_1ADE5E330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23D43C();
  if (v8 <= 0)
  {

    return MEMORY[0x1EEDF5A00](a2);
  }

  else
  {
    v9 = v8;
    v10 = sub_1AE23C23C();
    MEMORY[0x1EEE9AC00](v10);
    v15[8] = a2;
    v15[9] = a3;
    v15[10] = a4;
    v15[11] = v9;
    v15[12] = a1;
    MEMORY[0x1EEE9AC00](v11);
    v15[2] = a2;
    v15[3] = sub_1ADE5E588;
    v15[4] = v12;

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    sub_1ADE5DA88(sub_1ADE5E5AC, v15, v10, MEMORY[0x1E6995658], a2, v13, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v16);

    return v10;
  }
}

uint64_t sub_1ADE5E4B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  result = v3();
  *a1 = result;
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

uint64_t sub_1ADE5E500(uint64_t a1, int a2)
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

uint64_t sub_1ADE5E548(uint64_t result, int a2, int a3)
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

uint64_t sub_1ADE5E5AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  result = v6();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1ADE5E5E4(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1ADE5E050(a1, a2, v2[5], v2[6], v2[2]);
}

uint64_t sub_1ADE5E608@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return result;
  }

  if (v3[6] >= a2)
  {
    v6 = v3[2];
    v7 = v3[5];
    result = sub_1AE23D7AC();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE5E6B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1ADE6F294(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1AE23D8EC();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 56) + 8 * result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1ADE6F294((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1ADDFFBC8(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1ADDFFBC8(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}