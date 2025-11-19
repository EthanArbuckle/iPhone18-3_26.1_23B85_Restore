void sub_22C838290(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  v8 = sub_22C3A5908(a4, a5);
  sub_22C36985C(v8);
  v10 = *(v9 + 72);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_20;
  }

  sub_22C375DB4();
  v13 = !v13 || v5 >= v12;
  if (v13)
  {
    sub_22C36BBCC();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    sub_22C36BBCC();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_22C838370(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  sub_22C36985C(v7);
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  sub_22C375DB4();
  v12 = !v12 || v4 >= v11;
  if (v12)
  {
    sub_22C36BBCC();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    sub_22C36BBCC();

    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_22C838438(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v7 = sub_22C370114();
    v8 = a6(v7);

    return v8;
  }

  return result;
}

void sub_22C8384D4()
{
  v1 = *MEMORY[0x277D85DE8];
  sub_22C838538();
  v0 = *MEMORY[0x277D85DE8];
}

void sub_22C838538()
{
  sub_22C370030();
  v4 = v3;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(v5 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    v9 = v2;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      sub_22C37E8C0();
      sub_22C838438(v10, v11, v12, v13, v14, v9);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](v1);
  sub_22C88FAFC(0, v7, v15 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_22C370114();
  sub_22C37E8C0();
  v4();
  if (v0)
  {
    swift_willThrow();
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  sub_22C36FB20();
}

void sub_22C8386A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v43 = a4;
  v32[1] = a2;
  v33 = a1;
  v42 = sub_22C902D0C();
  v5 = *(v42 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v42);
  v45 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C902C9C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v44 = a3;
  v14 = *(a3 + 64);
  v34 = 0;
  v35 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v38 = v5 + 16;
  v39 = v10 + 16;
  v40 = v10;
  v41 = v5;
  v36 = (v5 + 8);
  v37 = (v10 + 8);
  while (v17)
  {
    v46 = (v17 - 1) & v17;
    v19 = __clz(__rbit64(v17)) | (v13 << 6);
    v20 = v45;
LABEL_11:
    v23 = v44;
    (*(v40 + 16))(v12, *(v44 + 48) + *(v40 + 72) * v19, v8);
    v24 = v19;
    v25 = *(v23 + 56) + *(v41 + 72) * v19;
    v26 = v8;
    v27 = v42;
    (*(v41 + 16))(v20, v25, v42);
    v28 = v47;
    v29 = v43(v12, v20);
    v47 = v28;
    if (v28)
    {
      (*v36)(v20, v27);
      (*v37)(v12, v26);
      return;
    }

    v30 = v29;
    (*v36)(v20, v27);
    (*v37)(v12, v26);
    v8 = v26;
    v17 = v46;
    if (v30)
    {
      *(v33 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        sub_22C838F9C();
        return;
      }
    }
  }

  v21 = v13;
  v20 = v45;
  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      goto LABEL_16;
    }

    v22 = *(v35 + 8 * v13);
    ++v21;
    if (v22)
    {
      v46 = (v22 - 1) & v22;
      v19 = __clz(__rbit64(v22)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22C838A00(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, _BYTE *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v11 = 0;
  v32 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v11 << 6);
    v23 = v32;
    sub_22C839D2C(v32[6] + *(v29 + 72) * v22, v10);
    sub_22C6337B8(v23[7] + 40 * v22, v31);
    v24 = v30(v10, v31);
    sub_22C83A014(v31);
    result = sub_22C839C78(v10, type metadata accessor for CacheKeyHashableRepresentation);
    if (v4)
    {
      return result;
    }

    if (v24)
    {
      *(v27 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_22C8395DC(v27, v26, v28, v32);
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      return sub_22C8395DC(v27, v26, v28, v32);
    }

    v21 = v13[v11];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_22C838C18()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_22C902D0C();
  v9 = sub_22C369824(v8);
  v54 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v55 = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA58();
  v56 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA58();
  v51 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  v50 = v19;
  if (!v3)
  {
    goto LABEL_28;
  }

  if (*(v1 + 16) == v3)
  {

LABEL_28:
    sub_22C36CC48();
    return;
  }

  sub_22C3A5908(&qword_27D9C0980, &unk_22C929500);
  sub_22C37FF48();
  v20 = sub_22C90B1EC();
  v49 = v1;
  if (v5 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *v7;
  }

  v22 = 0;
  v46 = v20;
  v23 = v20 + 64;
  v47 = v5;
  v48 = v7;
  while (v21)
  {
    sub_22C36C050();
    v52 = v25;
LABEL_16:
    v53 = v54[9];
    v28 = v53 * (v24 | (v22 << 6));
    v29 = v54[2];
    v29(v50, *(v49 + 48) + v28, v8);
    v29(v51, *(v49 + 56) + v28, v8);
    v30 = v54[4];
    v30(v56, v50, v8);
    v30(v55, v51, v8);
    v31 = *(v46 + 40);
    sub_22C373F18(&qword_27D9BAAA8, 255, MEMORY[0x277D1D800]);
    sub_22C83A98C();
    sub_22C909F7C();
    v32 = *(v46 + 32);
    sub_22C36C03C();
    v34 = *(v23 + 8 * v33);
    sub_22C37AC88();
    if (v35)
    {
      sub_22C370840();
      v5 = v47;
      v7 = v48;
      while (1)
      {
        sub_22C36D130();
        if (v35)
        {
          if (v40)
          {
            goto LABEL_30;
          }
        }

        if (v39 == v41)
        {
          v39 = 0;
        }

        if (*(v23 + 8 * v39) != -1)
        {
          sub_22C83A8EC();
          v38 = v43 + (v42 << 6);
          goto LABEL_26;
        }
      }
    }

    sub_22C83A8FC();
    v38 = v36 | v37;
    v5 = v47;
    v7 = v48;
LABEL_26:
    *(v23 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v44 = v38 * v53;
    v30(*(v46 + 48) + v38 * v53, v56, v8);
    v30(*(v46 + 56) + v44, v55, v8);
    ++*(v46 + 16);
    if (__OFSUB__(v3--, 1))
    {
      goto LABEL_31;
    }

    v21 = v52;
    if (!v3)
    {
      goto LABEL_28;
    }
  }

  v26 = v22;
  while (1)
  {
    v22 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v22 >= v5)
    {
      goto LABEL_28;
    }

    ++v26;
    if (v7[v22])
    {
      sub_22C37FCE8();
      v52 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_22C838F9C()
{
  sub_22C36BA7C();
  sub_22C83A9E8();
  v43 = sub_22C902D0C();
  v6 = sub_22C369824(v43);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  sub_22C36BA0C();
  v10 = sub_22C902C9C();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  if (!v0)
  {
    goto LABEL_27;
  }

  if (*(v4 + 16) == v0)
  {

LABEL_27:
    sub_22C36CC48();
    return;
  }

  sub_22C3A5908(&qword_27D9BC1F8, &qword_22C9126D0);
  sub_22C37FF48();
  sub_22C90B1EC();
  if (v1 >= 1)
  {
    v15 = *v2;
  }

  sub_22C83A868();
  while (v16)
  {
    sub_22C83A938();
LABEL_15:
    v19 = sub_22C375BDC();
    v20(v19);
    v21 = sub_22C83A8A0();
    v22(v21);
    v23 = sub_22C83A91C();
    v24(v23);
    v25 = sub_22C3866B0();
    (v4)(v25);
    v26 = *(v39 + 40);
    sub_22C373F18(&qword_27D9BC1A8, 255, MEMORY[0x277D1D780]);
    sub_22C83A98C();
    sub_22C909F7C();
    v27 = *(v39 + 32);
    sub_22C36C03C();
    v29 = *(v5 + 8 * v28);
    sub_22C37AC88();
    if (v30)
    {
      sub_22C370840();
      v1 = v40;
      v2 = v41;
      while (1)
      {
        sub_22C36D130();
        if (v30)
        {
          if (v32)
          {
            goto LABEL_29;
          }
        }

        if (v31 == v33)
        {
          v31 = 0;
        }

        if (*(v5 + 8 * v31) != -1)
        {
          sub_22C83A8EC();
          goto LABEL_25;
        }
      }
    }

    sub_22C83A8FC();
    v1 = v40;
    v2 = v41;
LABEL_25:
    v34 = sub_22C370430();
    v35(v34);
    v36 = sub_22C83AA54();
    (v4)(v36);
    sub_22C83AA40();
    if (v37)
    {
      goto LABEL_30;
    }

    v4 = v38;
    v16 = v42;
  }

  v17 = v3;
  while (1)
  {
    v3 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v3 >= v1)
    {
      goto LABEL_27;
    }

    ++v17;
    if (v2[v3])
    {
      sub_22C37FCE8();
      v42 = v18;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_22C8392BC()
{
  sub_22C36BA7C();
  sub_22C83A9E8();
  v43 = sub_22C908C5C();
  v6 = sub_22C369824(v43);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  sub_22C36BA0C();
  v10 = sub_22C9069BC();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  if (!v0)
  {
    goto LABEL_27;
  }

  if (*(v4 + 16) == v0)
  {

LABEL_27:
    sub_22C36CC48();
    return;
  }

  sub_22C3A5908(&qword_27D9C07A0, &qword_22C92B510);
  sub_22C37FF48();
  sub_22C90B1EC();
  if (v1 >= 1)
  {
    v15 = *v2;
  }

  sub_22C83A868();
  while (v16)
  {
    sub_22C83A938();
LABEL_15:
    v19 = sub_22C375BDC();
    v20(v19);
    v21 = sub_22C83A8A0();
    v22(v21);
    v23 = sub_22C83A91C();
    v24(v23);
    v25 = sub_22C3866B0();
    (v4)(v25);
    v26 = *(v39 + 40);
    sub_22C373F18(&qword_27D9BAA98, 255, MEMORY[0x277D1DCF0]);
    sub_22C83A98C();
    sub_22C909F7C();
    v27 = *(v39 + 32);
    sub_22C36C03C();
    v29 = *(v5 + 8 * v28);
    sub_22C37AC88();
    if (v30)
    {
      sub_22C370840();
      v1 = v40;
      v2 = v41;
      while (1)
      {
        sub_22C36D130();
        if (v30)
        {
          if (v32)
          {
            goto LABEL_29;
          }
        }

        if (v31 == v33)
        {
          v31 = 0;
        }

        if (*(v5 + 8 * v31) != -1)
        {
          sub_22C83A8EC();
          goto LABEL_25;
        }
      }
    }

    sub_22C83A8FC();
    v1 = v40;
    v2 = v41;
LABEL_25:
    v34 = sub_22C370430();
    v35(v34);
    v36 = sub_22C83AA54();
    (v4)(v36);
    sub_22C83AA40();
    if (v37)
    {
      goto LABEL_30;
    }

    v4 = v38;
    v16 = v42;
  }

  v17 = v3;
  while (1)
  {
    v3 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v3 >= v1)
    {
      goto LABEL_27;
    }

    ++v17;
    if (v2[v3])
    {
      sub_22C37FCE8();
      v42 = v18;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_22C8395DC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_22C3A5908(&qword_27D9C0790, &qword_22C928C60);
  result = sub_22C90B1EC();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v30 = result + 64;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v18 = v15 | (v14 << 6);
    v19 = v31;
    v20 = *(v32 + 72);
    sub_22C839D2C(a4[6] + v20 * v18, v31);
    v21 = a4;
    sub_22C6337B8(a4[7] + 40 * v18, v34);
    v22 = *(v12 + 40);
    sub_22C90B62C();
    sub_22C834E6C();
    sub_22C90B66C();
    v23 = -1 << *(v12 + 32);
    v24 = v30;
    v25 = sub_22C90AE8C();
    *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = sub_22C839CD0(v19, *(v12 + 48) + v25 * v20);
    v26 = *(v12 + 56) + 40 * v25;
    v27 = v34[0];
    v28 = v34[1];
    *(v26 + 32) = v35;
    *v26 = v27;
    *(v26 + 16) = v28;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v21;
    v13 = v33;
    if (!a3)
    {
      return v12;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v17 = a1[v14];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v33 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_22C839890()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v51 = v10;
  v57 = v11(0);
  v12 = sub_22C369824(v57);
  v55 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  v56 = v16;
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  v52 = v18;
  if (!v7)
  {
    goto LABEL_28;
  }

  if (v5[2] == v7)
  {

LABEL_28:
    sub_22C36CC48();
    return;
  }

  sub_22C3A5908(v3, v1);
  sub_22C37FF48();
  v19 = sub_22C90B1EC();
  if (v9 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *v51;
  }

  v21 = 0;
  v50 = v19;
  v22 = v55 + 32;
  v23 = v19 + 64;
  v49 = v5;
  while (v20)
  {
    v24 = v22;
    sub_22C36C050();
    v53 = v26;
LABEL_16:
    v29 = v25 | (v21 << 6);
    v30 = (v5[6] + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    v54 = *(v55 + 72);
    (*(v55 + 16))(v52, v5[7] + v54 * v29, v57);
    v33 = *(v55 + 32);
    v22 = v24;
    v33(v56, v52, v57);
    v34 = *(v50 + 40);
    sub_22C90B62C();

    sub_22C909FFC();
    sub_22C90B66C();
    v35 = *(v50 + 32);
    sub_22C36C03C();
    v37 = *(v23 + 8 * v36);
    sub_22C37AC88();
    if (v38)
    {
      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v38)
        {
          if (v43)
          {
            goto LABEL_30;
          }
        }

        if (v42 == v44)
        {
          v42 = 0;
        }

        if (*(v23 + 8 * v42) != -1)
        {
          sub_22C83A8EC();
          v41 = v46 + (v45 << 6);
          goto LABEL_26;
        }
      }
    }

    sub_22C83A8FC();
    v41 = v39 | v40;
LABEL_26:
    *(v23 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v47 = (*(v50 + 48) + 16 * v41);
    *v47 = v31;
    v47[1] = v32;
    v33(*(v50 + 56) + v41 * v54, v56, v57);
    ++*(v50 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_31;
    }

    v5 = v49;
    v20 = v53;
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  v27 = v21;
  while (1)
  {
    v21 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v21 >= v9)
    {
      goto LABEL_28;
    }

    ++v27;
    if (v51[v21])
    {
      v24 = v22;
      sub_22C37FCE8();
      v53 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

unint64_t sub_22C839B7C()
{
  result = qword_27D9C0730;
  if (!qword_27D9C0730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0730);
  }

  return result;
}

unint64_t sub_22C839BD0()
{
  result = qword_27D9C0738;
  if (!qword_27D9C0738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0738);
  }

  return result;
}

unint64_t sub_22C839C24()
{
  result = qword_27D9C0758;
  if (!qword_27D9C0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0758);
  }

  return result;
}

uint64_t sub_22C839C78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C839CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v6 = v5(v4);
  sub_22C36985C(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22C839D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheKeyHashableRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C839D90()
{
  sub_22C36D5EC();
  sub_22C83AA68();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36EE74(v1);

  return sub_22C832B1C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C839E24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C839E64()
{
  sub_22C36D5EC();
  sub_22C83AA68();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36EE74(v1);

  return sub_22C832468(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C839EF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C839F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C83A084()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22C83A0C0()
{
  result = sub_22C908D2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C83A134(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for QueryDecorationCacheKey.Input();
  v2 = sub_22C90AC6C();
  if (v3 <= 0x3F)
  {
    sub_22C436620();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      DecorationCache = type metadata accessor for QueryDecorationCacheValue.Identifier();
      if (v7 > 0x3F)
      {
        return DecorationCache;
      }

      sub_22C836D70(319, &qword_281435798, MEMORY[0x277D1D2C8]);
      if (v8 > 0x3F)
      {
        return DecorationCache;
      }

      else
      {
        sub_22C836D70(319, &qword_281435718, MEMORY[0x277D1F0F8]);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

unint64_t sub_22C83A2E0()
{
  result = qword_27D9C07B0;
  if (!qword_27D9C07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C07B0);
  }

  return result;
}

unint64_t sub_22C83A370()
{
  result = qword_27D9C07B8;
  if (!qword_27D9C07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C07B8);
  }

  return result;
}

unint64_t sub_22C83A3C8()
{
  result = qword_27D9C07C0;
  if (!qword_27D9C07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C07C0);
  }

  return result;
}

unint64_t sub_22C83A420()
{
  result = qword_27D9C07C8;
  if (!qword_27D9C07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C07C8);
  }

  return result;
}

unint64_t sub_22C83A478()
{
  result = qword_27D9C07D0;
  if (!qword_27D9C07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C07D0);
  }

  return result;
}

unint64_t sub_22C83A4D0()
{
  result = qword_27D9C07D8;
  if (!qword_27D9C07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C07D8);
  }

  return result;
}

unint64_t sub_22C83A528()
{
  result = qword_27D9C07E0;
  if (!qword_27D9C07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C07E0);
  }

  return result;
}

_BYTE *sub_22C83A5C4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22C83A690(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_22C83A868()
{
  v5 = *(v4 - 128);
  *(v4 - 200) = v5 + 16;
  *(v4 - 192) = v1;
  v6 = *(v4 - 120);
  *(v4 - 216) = v0;
  *(v4 - 208) = v6 + 16;
  *(v4 - 112) = v5 + 32;
  *(v4 - 184) = v2;
  *(v4 - 224) = v3;
}

uint64_t sub_22C83A8A0()
{
  v2 = *(v0 + 56);
  v3 = *(v1 - 120);
  *(v1 - 144) = *(v3 + 72);
  v4 = *(v3 + 16);
  result = *(v1 - 168);
  v6 = *(v1 - 88);
  v7 = *(v1 - 208);
  return result;
}

uint64_t sub_22C83A91C()
{
  v2 = *(v1 - 112);
  result = *(v1 - 104);
  *(v1 - 152) = *(v0 + 32);
  return result;
}

void sub_22C83A954()
{

  sub_22C82BB44();
}

uint64_t sub_22C83A9AC()
{
  v2 = *(v1 - 240);
  v3 = *(v1 - 248) + 8;
  result = v0;
  v5 = *(v1 - 296);
  return result;
}

uint64_t sub_22C83A9C4()
{
  v2 = v0[41];
  result = v0[42];
  v3 = v0[40];
  return result;
}

uint64_t sub_22C83A9D0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

BOOL sub_22C83AA00(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C83AA1C(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
  a1[5] = v3;
  a1[6] = v2;
}

uint64_t sub_22C83AA54()
{
  result = *(v0 + 56) + v1 * *(v2 - 144);
  v4 = *(v2 - 96);
  v5 = *(v2 - 88);
  return result;
}

void sub_22C83AA68()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t sub_22C83AA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  return 0;
}

uint64_t sub_22C83AAA8()
{
  type metadata accessor for QueryDecorationCacheKey.Input();

  return sub_22C90AC6C();
}

uint64_t sub_22C83AAF4(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

uint64_t sub_22C83AB44(float a1)
{
  *v1 = a1;

  return sub_22C82F03C(v2);
}

uint64_t sub_22C83AB78()
{
  v3 = sub_22C903D4C();
  v4 = sub_22C369CE4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C373B14();
  MEMORY[0x28223BE20](v9);
  sub_22C83BEAC();
  sub_22C903BFC();
  if (v10)
  {

    sub_22C903C7C();
    sub_22C9034BC();
    sub_22C386908(&qword_281435730);
    v11 = sub_22C90A0BC();
    v12 = *(v6 + 8);
    v12(v1, v0);
    v12(v2, v0);
    v13 = v11 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_22C83ACAC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C887608(v5);
    v5 = v10;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(type metadata accessor for PromptTreeIdentifier(0) - 8);
    v8 = *(v7 + 72);
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v8 * a1;
    sub_22C4ED690(v9, a2);
    sub_22C3D70C8(v9 + v8, v6 - 1 - a1, v9);
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

uint64_t sub_22C83AD9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_22C8876C8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    sub_22C3D874C(v8 + 40, v7, v8 + 32);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t QueryDecorationContext.__allocating_init(input:toolboxResources:lookback:toolExecutionSession:selfLogger:signposter:intelligenceFlowSessionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  QueryDecorationContext.init(input:toolboxResources:lookback:toolExecutionSession:selfLogger:signposter:intelligenceFlowSessionId:)(a1, a2, a3, a4, a5, a6, a7);
  return v17;
}

uint64_t QueryDecorationContext.init(input:toolboxResources:lookback:toolExecutionSession:selfLogger:signposter:intelligenceFlowSessionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  *(v7 + 96) = a1;
  sub_22C378A4C(a5, v7 + 16);
  *(v7 + 104) = a2;
  sub_22C5652C0(a3, v7 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_lookback, &qword_27D9C0250, &unk_22C929510);
  sub_22C5652C0(a4, v7 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_toolExecutionSession, &qword_27D9C06A0, &qword_22C929950);
  sub_22C378A4C(a6, v7 + 56);
  sub_22C5652C0(a7, v7 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_intelligenceFlowSessionId, &qword_27D9C06F8, &qword_22C929520);
  type metadata accessor for CancellationToken();
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22C3770B0(a7, &qword_27D9C06F8, &qword_22C929520);
  sub_22C36FF94(a6);
  sub_22C36FF94(a5);
  sub_22C3770B0(a4, &qword_27D9C06A0, &qword_22C929950);
  sub_22C3770B0(a3, &qword_27D9C0250, &unk_22C929510);
  *(v14 + 112) = 1;
  *(v7 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_cancellationToken) = v14;
  return v7;
}

uint64_t QueryDecorationContext.deinit()
{
  sub_22C36FF94((v0 + 16));
  sub_22C36FF94((v0 + 56));

  v1 = *(v0 + 104);

  sub_22C3770B0(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_lookback, &qword_27D9C0250, &unk_22C929510);
  sub_22C3770B0(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_toolExecutionSession, &qword_27D9C06A0, &qword_22C929950);
  sub_22C3770B0(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_intelligenceFlowSessionId, &qword_27D9C06F8, &qword_22C929520);
  v2 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_cancellationToken);

  return v0;
}

uint64_t QueryDecorationContext.__deallocating_deinit()
{
  QueryDecorationContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for QueryDecorationContext()
{
  result = qword_2814331A8;
  if (!qword_2814331A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C83B288()
{
  sub_22C83B3EC(319, &qword_281435710, MEMORY[0x277D1F128]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22C83B3EC(319, &qword_281435798, MEMORY[0x277D1D2C8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_22C83B3EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22C83B440()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22C83B470(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22C83B490, v1, 0);
}

uint64_t sub_22C83B490()
{
  v36 = v0;
  v1 = v0[9];
  swift_beginAccess();
  v32 = v1;
  v2 = *(v1 + 112);
  v34 = MEMORY[0x277D84F90];
  v3 = sub_22C36E2B8(v2);

  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2318B8460](i, v2);
      v8 = v4;
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v8 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v9 = v0[8];
    v35 = v8;
    if (sub_22C83B9DC(&v35, v9))
    {
      sub_22C90AFEC();
      v10 = *(v34 + 16);
      sub_22C90B02C();
      sub_22C90B03C();
      v4 = sub_22C90AFFC();
    }

    else
    {
    }
  }

  v0[10] = v34;
  v4 = sub_22C36E2B8(v34);
  v11 = v1;
  v33 = v4;
  if (v4)
  {
    v12 = 0;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2318B8460](v12, v34);
        v13 = v4;
      }

      else
      {
        if (v12 >= *(v34 + 16))
        {
          goto LABEL_53;
        }

        v13 = *(v34 + 32 + 8 * v12);
      }

      if (__OFADD__(v12++, 1))
      {
        goto LABEL_52;
      }

      v15 = *(v11 + 112);
      if (v15 >> 62)
      {
        if (v15 < 0)
        {
          v20 = *(v11 + 112);
        }

        v16 = sub_22C90B1BC();
        if (v16)
        {
LABEL_21:

          v17 = 0;
          while (1)
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x2318B8460](v17, v15);
              v4 = swift_unknownObjectRelease();
              if (v18 == v13)
              {
                goto LABEL_30;
              }
            }

            else
            {
              if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_49;
              }

              if (*(v15 + 8 * v17 + 32) == v13)
              {
LABEL_30:

                v11 = v32;
                sub_22C371E88();
                sub_22C83AD9C(v17);
                swift_endAccess();

                goto LABEL_31;
              }
            }

            v19 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            ++v17;
            if (v19 == v16)
            {

              v11 = v32;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_21;
        }
      }

LABEL_31:
    }

    while (v12 != v33);
  }

  v21 = v0[8];
  sub_22C371E88();

  MEMORY[0x2318B7AA0](v22);
  sub_22C3D3460(*((*(v11 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_22C90A65C();
  swift_endAccess();
  v4 = sub_22C36E2B8(v34);
  v0[11] = v4;
  if (!v4)
  {
    v25 = v0[10];

    v26 = v0[1];
    sub_22C378644();

    __asm { BRAA            X1, X16 }
  }

  if (v4 < 1)
  {
LABEL_54:
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v0[12] = 0;
  v23 = v0[10];
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x2318B8460](0);
  }

  else
  {
    v29 = *(v23 + 32);
  }

  v0[13] = v24;
  sub_22C36B80C(v24, OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_cancellationToken);
  sub_22C378644();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C83B88C()
{
  v1 = *(v0 + 72);
  *(*(v0 + 112) + 112) = 0;

  return MEMORY[0x2822009F8](sub_22C83B8FC, v1, 0);
}

uint64_t sub_22C83B8FC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  if (v2 + 1 == v3)
  {
    v4 = v0[10];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[12] + 1;
    v0[12] = v7;
    v8 = v0[10];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2318B8460]();
    }

    else
    {
      v10 = *(v8 + 8 * v7 + 32);
    }

    v0[13] = v9;
    sub_22C36B80C();

    return MEMORY[0x2822009F8](v3, v2, 0);
  }
}

uint64_t sub_22C83B9DC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_22C903D4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = *a1;
  v13 = *(a2 + 96);
  sub_22C903C7C();
  sub_22C9034CC();
  sub_22C386908(&qword_281435728);
  sub_22C90A56C();
  sub_22C90A56C();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v14(v11, v4);
  if (v45 == v44)
  {
    v15 = *(v12 + 96);
    sub_22C903C7C();
    sub_22C9034EC();
    sub_22C90A56C();
    sub_22C90A56C();
    v14(v9, v4);
    v14(v11, v4);
    v16 = v45 == v44;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v12 + 96);
  v18 = sub_22C903CAC();
  v20 = v19;
  v21 = sub_22C903CAC();
  if (!v20)
  {
    if (!v22)
    {
      return 1;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!v22)
  {
    goto LABEL_13;
  }

  if (v18 == v21 && v20 == v22)
  {

    return 1;
  }

  v24 = sub_22C90B4FC();

  if (v24)
  {
    return 1;
  }

LABEL_14:
  v25 = *(v12 + 96);
  sub_22C903BFC();
  if (v26)
  {

    v27 = *(v12 + 96);
    v28 = sub_22C903BFC();
    v30 = v29;
    v31 = sub_22C903BFC();
    if (v30)
    {
      if (!v32)
      {
        goto LABEL_36;
      }

      if (v28 == v31 && v30 == v32)
      {
      }

      else
      {
        v34 = sub_22C90B4FC();

        if ((v34 & 1) == 0)
        {
          return v16;
        }
      }
    }

    else if (v32)
    {
      goto LABEL_36;
    }

    v35 = *(v12 + 96);
    v36 = sub_22C903C6C();
    v38 = v37;
    if (v36 != sub_22C903C6C() || v38 != v39)
    {
      v41 = sub_22C90B4FC();

      if (v41)
      {
        return v16;
      }

      return 1;
    }

LABEL_36:
  }

  return v16;
}

BOOL sub_22C83BD74()
{
  v3 = sub_22C903D4C();
  v4 = sub_22C369CE4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C373B14();
  MEMORY[0x28223BE20](v9);
  sub_22C83BEAC();
  sub_22C903C7C();
  sub_22C9034FC();
  sub_22C386908(&qword_281435728);
  sub_22C90A56C();
  sub_22C90A56C();
  v10 = *(v6 + 8);
  v10(v1, v0);
  v10(v2, v0);
  return v13 == v12;
}

uint64_t sub_22C83BEC0(uint64_t a1, void *a2)
{
  v64 = a2;
  v3 = sub_22C3A5908(&qword_27D9BDA90, &unk_22C91A460);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v68 = sub_22C9039FC();
  v10 = *(*(v68 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v68);
  v57 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v70 = &v54 - v14;
  v15 = 0;
  v61 = *(a1 + 16);
  v63 = v16 + 16;
  v58 = v16;
  v55 = (v16 + 8);
  v56 = (v16 + 32);
  v59 = a1;
  v60 = MEMORY[0x277D84F90];
  while (2)
  {
    v17 = v15;
LABEL_3:
    if (v17 == v61)
    {

      return v60;
    }

    if (v17 < *(a1 + 16))
    {
      v18 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v19 = *(v58 + 72);
      v67 = v17 + 1;
      v69 = v19;
      v62 = *(v58 + 16);
      v62(v70, a1 + v18 + v19 * v17, v68);
      v20 = *v64;
      v21 = *(*v64 + 16);
      v65 = v18;
      v66 = v20;
      v22 = v20 + v18;

      if (!v21)
      {
LABEL_32:

        v38 = v64;
        v39 = *v64;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v38 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = *(v39 + 16);
          sub_22C596C08();
          v39 = v52;
          *v64 = v52;
        }

        v41 = *(v39 + 16);
        if (v41 >= *(v39 + 24) >> 1)
        {
          sub_22C596C08();
          v39 = v53;
          *v64 = v53;
        }

        *(v39 + 16) = v41 + 1;
        v42 = v70;
        v43 = v39 + v65 + v41 * v69;
        v44 = v68;
        v62(v43, v70, v68);
        v45 = *v56;
        (*v56)(v57, v42, v44);
        v46 = v60;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v48 = v46;
        v71 = v46;
        if ((v47 & 1) == 0)
        {
          sub_22C3B73FC(0, *(v46 + 16) + 1, 1);
          v48 = v71;
        }

        v50 = *(v48 + 16);
        v49 = *(v48 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_22C3B73FC(v49 > 1, v50 + 1, 1);
          v48 = v71;
        }

        *(v48 + 16) = v50 + 1;
        v60 = v48;
        result = v45((v48 + v65 + v50 * v69), v57, v68);
        a1 = v59;
        v15 = v67;
        continue;
      }

      while (1)
      {
        v23 = sub_22C9039DC();
        v24 = *(v23 + 16);
        v25 = sub_22C90361C();
        v26 = v25;
        if (v24)
        {
          (*(*(v25 - 8) + 16))(v9, v23 + ((*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80)), v25);
          v27 = 0;
        }

        else
        {
          v27 = 1;
        }

        sub_22C36C640(v9, v27, 1, v26);

        if (sub_22C370B74(v9, 1, v26) == 1)
        {
          sub_22C376B84(v9, &qword_27D9BDA90, &unk_22C91A460);
          v28 = 0;
          v29 = 0;
        }

        else
        {
          v28 = sub_22C90357C();
          v29 = v30;
          (*(*(v26 - 8) + 8))(v9, v26);
        }

        v31 = sub_22C9039DC();
        if (*(v31 + 16))
        {
          (*(*(v26 - 8) + 16))(v7, v31 + ((*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80)), v26);
          v32 = 0;
        }

        else
        {
          v32 = 1;
        }

        sub_22C36C640(v7, v32, 1, v26);

        if (sub_22C370B74(v7, 1, v26) == 1)
        {
          break;
        }

        v33 = sub_22C90357C();
        v35 = v34;
        (*(*(v26 - 8) + 8))(v7, v26);
        if (!v29)
        {
          if (!v35)
          {
            goto LABEL_30;
          }

          goto LABEL_27;
        }

        if (!v35)
        {
          goto LABEL_27;
        }

        if (v28 == v33 && v29 == v35)
        {

LABEL_30:

          result = (*v55)(v70, v68);
          v17 = v67;
          a1 = v59;
          goto LABEL_3;
        }

        v37 = sub_22C90B4FC();

        if (v37)
        {
          goto LABEL_30;
        }

LABEL_28:
        v22 += v69;
        if (!--v21)
        {
          goto LABEL_32;
        }
      }

      sub_22C376B84(v7, &qword_27D9BDA90, &unk_22C91A460);
      if (!v29)
      {
        goto LABEL_30;
      }

LABEL_27:

      goto LABEL_28;
    }

    break;
  }

  __break(1u);
  return result;
}

void sub_22C83C4EC()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v83 = v80 - v8;
  v9 = sub_22C9063DC();
  v10 = sub_22C369824(v9);
  v89 = v11;
  v90 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v85 = v14;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v80 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v80 - v19;
  v21 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v21);
  v23 = *(v22 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  v26 = v80 - v25;
  v27 = sub_22C9093BC();
  v28 = sub_22C369824(v27);
  v86 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v88 = v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22C90399C();
  v34 = sub_22C369824(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  v82 = v39;
  v41 = MEMORY[0x28223BE20](v40);
  v43 = v80 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = v80 - v44;
  v46 = v3;
  v48 = v47;
  v84 = *(v36 + 16);
  v84(v80 - v44, v46, v47);
  sub_22C6AEA50(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_toolExecutionSession, &v91, &qword_27D9C06A0, &qword_22C929950);
  if (v92)
  {
    sub_22C36C730(&v91, v93);
    v87 = v45;
    sub_22C90391C();
    sub_22C36D0A8(v26, 1, v27);
    if (v49)
    {
      sub_22C376B84(v26, &qword_27D9BB908, &qword_22C910960);
      sub_22C90400C();
      v50 = sub_22C9063CC();
      v51 = sub_22C90AADC();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = sub_22C36D240();
        *v52 = 0;
        _os_log_impl(&dword_22C366000, v50, v51, "Entity Hydration: not a Typed Value skipping", v52, 2u);
        sub_22C3699EC();
      }

      (*(v89 + 8))(v18, v90);
      (*(v36 + 8))(v87, v48);
      sub_22C36FF94(v93);
    }

    else
    {
      v56 = v86;
      v57 = v88;
      (*(v86 + 32))();
      sub_22C375EAC(v93);
      v58 = sub_22C90851C();
      if (v58)
      {
        sub_22C90400C();
        v59 = v84;
        v84(v43, v87, v48);
        v60 = sub_22C9063CC();
        v61 = sub_22C90AACC();
        if (os_log_type_enabled(v60, v61))
        {
          sub_22C36FB44();
          v81 = sub_22C388D58();
          *&v91 = v81;
          *v48 = 136315138;
          v80[1] = v61;
          v62 = sub_22C372164();
          v59(v62);
          v82 = sub_22C90A1AC();
          v64 = v63;
          v65 = *(v36 + 8);
          v65(v43, v48);
          v66 = v65;
          v56 = v86;
          v67 = sub_22C36F9F4(v82, v64, &v91);

          *(v48 + 4) = v67;
          sub_22C84BC84();
          _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
          sub_22C36FF94(v81);
          sub_22C37E124();
          v73 = v66;
          sub_22C3699EC();

          v74 = v84;
        }

        else
        {

          v73 = *(v36 + 8);
          v74 = v59;
          v73(v43, v48);
        }

        (*(v89 + 8))(v85, v90);
        v75 = v83;
        v76 = v87;
        v74(v83, v87, v48);
        sub_22C36BECC();
        sub_22C36C640(v77, v78, v79, v48);
        sub_22C826584(v75);
        sub_22C376B84(v75, &qword_27D9BB670, &unk_22C90FA40);
        (*(v56 + 8))(v88, v27);
        v73(v76, v48);
      }

      else
      {
        (*(v56 + 8))(v57, v27);
        (*(v36 + 8))(v87, v48);
      }

      sub_22C36FF94(v93);
    }
  }

  else
  {
    sub_22C376B84(&v91, &qword_27D9C06A0, &qword_22C929950);
    sub_22C90400C();
    v53 = sub_22C9063CC();
    v54 = sub_22C90AADC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = sub_22C36D240();
      *v55 = 0;
      _os_log_impl(&dword_22C366000, v53, v54, "Entity Hydration: ToolExecutionSession is nil so hydration will not run.", v55, 2u);
      sub_22C3699EC();
    }

    (*(v89 + 8))(v20, v90);
    (*(v36 + 8))(v45, v48);
  }

  sub_22C36CC48();
}

uint64_t sub_22C83CBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9C06D0, &qword_22C929880);
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = sub_22C83D478(a2, a3, a4);
  v18 = v17;

  v16(a1);

  sub_22C376B84(a4, &qword_27D9C06C8, &qword_22C929790);
  sub_22C3A5908(&qword_27D9C0240, &qword_22C926718);
  v19 = sub_22C37FF48();
  sub_22C36D3E0(v19);
  if (v20)
  {
    sub_22C376B84(v15, &qword_27D9C06D0, &qword_22C929880);
    v25 = 1;
  }

  else
  {
    v21 = sub_22C36A724();
    sub_22C6AE8BC(v21, v22, v23, v24);
    v25 = 0;
  }

  return sub_22C36C640(a5, v25, 1, v18);
}

uint64_t sub_22C83CD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9C09D0, &qword_22C929848);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_22C83D664(a2, a3, a4);

  v14(a1);

  sub_22C376B84(a4, &qword_27D9C06C8, &qword_22C929790);
  v15 = sub_22C3A5908(&qword_27D9C09D8, &qword_22C929850);
  if (sub_22C370B74(v13, 1, v15) == 1)
  {
    sub_22C376B84(v13, &qword_27D9C09D0, &qword_22C929848);
    v16 = 1;
  }

  else
  {
    sub_22C6AE8BC(v13, a5, &qword_27D9C09D8, &qword_22C929850);
    v16 = 0;
  }

  return sub_22C36C640(a5, v16, 1, v15);
}

uint64_t sub_22C83CEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9C0A08, &unk_22C9298F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_22C83D850(a2, a3, a4);

  v14(a1);

  sub_22C376B84(a4, &qword_27D9C06C8, &qword_22C929790);
  v15 = sub_22C3A5908(&qword_27D9C0260, &unk_22C926740);
  if (sub_22C370B74(v13, 1, v15) == 1)
  {
    sub_22C376B84(v13, &qword_27D9C0A08, &unk_22C9298F0);
    v16 = 1;
  }

  else
  {
    sub_22C6AE8BC(v13, a5, &qword_27D9C0260, &unk_22C926740);
    v16 = 0;
  }

  return sub_22C36C640(a5, v16, 1, v15);
}

uint64_t sub_22C83D01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9C09A0, &qword_22C9297D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_22C83DA3C(a2, a3, a4);

  v14(a1);

  sub_22C376B84(a4, &qword_27D9C06C8, &qword_22C929790);
  v15 = sub_22C3A5908(&qword_27D9C09A8, &qword_22C9297D8);
  if (sub_22C370B74(v13, 1, v15) == 1)
  {
    sub_22C376B84(v13, &qword_27D9C09A0, &qword_22C9297D0);
    v16 = 1;
  }

  else
  {
    sub_22C6AE8BC(v13, a5, &qword_27D9C09A8, &qword_22C9297D8);
    v16 = 0;
  }

  return sub_22C36C640(a5, v16, 1, v15);
}

uint64_t sub_22C83D190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9C09B8, &qword_22C929828);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_22C83DC28(a2, a3, a4);

  v14(a1);

  sub_22C376B84(a4, &qword_27D9C06C8, &qword_22C929790);
  v15 = sub_22C3A5908(&qword_27D9C09C0, &qword_22C929830);
  if (sub_22C370B74(v13, 1, v15) == 1)
  {
    sub_22C376B84(v13, &qword_27D9C09B8, &qword_22C929828);
    v16 = 1;
  }

  else
  {
    sub_22C6AE8BC(v13, a5, &qword_27D9C09C0, &qword_22C929830);
    v16 = 0;
  }

  return sub_22C36C640(a5, v16, 1, v15);
}

uint64_t sub_22C83D304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9C0998, &qword_22C929798);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_22C83DE14(a2, a3, a4);

  v14(a1);

  sub_22C376B84(a4, &qword_27D9C06C8, &qword_22C929790);
  v15 = sub_22C3A5908(&qword_27D9C0208, &qword_22C9297A0);
  if (sub_22C370B74(v13, 1, v15) == 1)
  {
    sub_22C376B84(v13, &qword_27D9C0998, &qword_22C929798);
    v16 = 1;
  }

  else
  {
    sub_22C6AE8BC(v13, a5, &qword_27D9C0208, &qword_22C9297A0);
    v16 = 0;
  }

  return sub_22C36C640(a5, v16, 1, v15);
}

void *sub_22C83D478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - v9;

  v11 = sub_22C834AD4();
  if ((v11 - 2) >= 3)
  {
    if (v11 == 7)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v13 = (v15 + 24);
      v14 = sub_22C84B6CC;
    }

    else
    {
      sub_22C6AEA50(a3, v10, &qword_27D9C06C8, &qword_22C929790);
      v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      sub_22C6AE8BC(v10, v18 + v16, &qword_27D9C06C8, &qword_22C929790);
      *(v18 + v17) = a1;
      v13 = (v18 + v17 + 8);
      v14 = sub_22C84B6A8;
    }
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = (v12 + 24);
    v14 = sub_22C84B708;
  }

  v19 = v14;
  *v13 = a2;

  return v19;
}

void *sub_22C83D664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - v9;

  v11 = sub_22C834AD4();
  if ((v11 - 2) >= 3)
  {
    if (v11 == 7)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v13 = (v15 + 24);
      v14 = sub_22C84B4C4;
    }

    else
    {
      sub_22C6AEA50(a3, v10, &qword_27D9C06C8, &qword_22C929790);
      v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      sub_22C6AE8BC(v10, v18 + v16, &qword_27D9C06C8, &qword_22C929790);
      *(v18 + v17) = a1;
      v13 = (v18 + v17 + 8);
      v14 = sub_22C84B4A0;
    }
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = (v12 + 24);
    v14 = sub_22C84B500;
  }

  v19 = v14;
  *v13 = a2;

  return v19;
}

void *sub_22C83D850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - v9;

  v11 = sub_22C834AD4();
  if ((v11 - 2) >= 3)
  {
    if (v11 == 7)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v13 = (v15 + 24);
      v14 = sub_22C84BAB0;
    }

    else
    {
      sub_22C6AEA50(a3, v10, &qword_27D9C06C8, &qword_22C929790);
      v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      sub_22C6AE8BC(v10, v18 + v16, &qword_27D9C06C8, &qword_22C929790);
      *(v18 + v17) = a1;
      v13 = (v18 + v17 + 8);
      v14 = sub_22C84B9B4;
    }
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = (v12 + 24);
    v14 = sub_22C84BAEC;
  }

  v19 = v14;
  *v13 = a2;

  return v19;
}

void *sub_22C83DA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - v9;

  v11 = sub_22C834AD4();
  if ((v11 - 2) >= 3)
  {
    if (v11 == 7)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v13 = (v15 + 24);
      v14 = sub_22C84B1FC;
    }

    else
    {
      sub_22C6AEA50(a3, v10, &qword_27D9C06C8, &qword_22C929790);
      v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      sub_22C6AE8BC(v10, v18 + v16, &qword_27D9C06C8, &qword_22C929790);
      *(v18 + v17) = a1;
      v13 = (v18 + v17 + 8);
      v14 = sub_22C84B1D8;
    }
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = (v12 + 24);
    v14 = sub_22C84B238;
  }

  v19 = v14;
  *v13 = a2;

  return v19;
}

void *sub_22C83DC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - v9;

  v11 = sub_22C834AD4();
  if ((v11 - 2) >= 3)
  {
    if (v11 == 7)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v13 = (v15 + 24);
      v14 = sub_22C84B38C;
    }

    else
    {
      sub_22C6AEA50(a3, v10, &qword_27D9C06C8, &qword_22C929790);
      v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      sub_22C6AE8BC(v10, v18 + v16, &qword_27D9C06C8, &qword_22C929790);
      *(v18 + v17) = a1;
      v13 = (v18 + v17 + 8);
      v14 = sub_22C84B368;
    }
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = (v12 + 24);
    v14 = sub_22C84B3C8;
  }

  v19 = v14;
  *v13 = a2;

  return v19;
}

void *sub_22C83DE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - v9;

  v11 = sub_22C834AD4();
  if ((v11 - 2) >= 3)
  {
    if (v11 == 7)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v13 = (v15 + 24);
      v14 = sub_22C84B0CC;
    }

    else
    {
      sub_22C6AEA50(a3, v10, &qword_27D9C06C8, &qword_22C929790);
      v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      sub_22C6AE8BC(v10, v18 + v16, &qword_27D9C06C8, &qword_22C929790);
      *(v18 + v17) = a1;
      v13 = (v18 + v17 + 8);
      v14 = sub_22C84B0A8;
    }
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = (v12 + 24);
    v14 = sub_22C84B108;
  }

  v19 = v14;
  *v13 = a2;

  return v19;
}

uint64_t sub_22C83E000()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  v8 = sub_22C84BE94(v7);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_22C37A06C();
    v14 = sub_22C3A5908(v12, v13);
    v15 = v14[10];
    sub_22C902DBC();
    sub_22C36A748();
    sub_22C36C640(v16, v17, v18, v19);
    v20 = v14[13];
    sub_22C903D4C();
    sub_22C36A748();
    sub_22C36C640(v21, v22, v23, v24);
    sub_22C3A5908(v6, v4);
    v25 = sub_22C3788F8();
    sub_22C36C640(v25, v26, v27, v28);
    v29 = (v1 + v14[7]);
    *v29 = v10;
    v29[1] = v11;
    v30 = (v1 + v14[8]);
    *v30 = v2;
    v30[1] = v0;
    sub_22C84BE04(v14[9]);
    sub_22C84BE04(v14[11]);
    *(v1 + v14[12]) = 0;
    sub_22C36BECC();
    sub_22C36C640(v31, v32, v33, v14);
    sub_22C36CC48();
  }

  else
  {
    v36 = sub_22C37A06C();
    sub_22C3A5908(v36, v37);
    sub_22C3788F8();
    sub_22C36CC48();

    return sub_22C36C640(v38, v39, v40, v41);
  }
}

void sub_22C83E124()
{
  sub_22C36BA7C();
  v77 = v0;
  v78 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_22C3A5908(&qword_27D9C0588, &qword_22C927FD0);
  sub_22C369914(v16);
  v18 = *(v17 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  v80 = &v73 - v20;
  v21 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v21);
  v23 = *(v22 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  v79 = &v73 - v25;
  v26 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  sub_22C369914(v26);
  v28 = *(v27 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  v31 = &v73 - v30;
  v32 = *(v13 + 96);
  v33 = sub_22C903CAC();
  if (v34)
  {
    v73 = v34;
    v74 = v33;
    v75 = v9;
    v35 = sub_22C908D2C();
    sub_22C36D0A8(v11, 1, v35);
    v76 = v7;
    if (v48)
    {
      v36 = sub_22C903C6C();
      v38 = v37;
    }

    else
    {
      v44 = sub_22C36CA88();
      sub_22C6AEA50(v44, v45, v46, v47);
      sub_22C36D0A8(v31, 1, v35);
      if (v48)
      {
        sub_22C376B84(v31, &qword_27D9C06C8, &qword_22C929790);
        v36 = 0;
        v38 = 0;
      }

      else
      {
        v36 = sub_22C908D1C();
        v38 = v49;
        sub_22C36BBA8(v35);
        (*(v50 + 8))(v31, v35);
      }
    }

    v51 = v75;
    v52 = v13 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_intelligenceFlowSessionId;
    v53 = v79;
    sub_22C6AEA50(v52, v79, &qword_27D9C06F8, &qword_22C929520);
    sub_22C903BFC();

    v54 = v80;
    sub_22C903C7C();
    sub_22C903D4C();
    sub_22C36BECC();
    sub_22C36C640(v55, v56, v57, v58);
    if (v38)
    {
      *v15 = v36;
      v15[1] = v38;
      sub_22C3A5908(v77, v78);
      sub_22C36A724();
      swift_storeEnumTagMultiPayload();
      sub_22C84BC74();
    }

    else
    {
      sub_22C3A5908(v77, v78);
      v59 = sub_22C3788F8();
    }

    sub_22C36C640(v59, v60, v61, v62);
    v63 = sub_22C3A5908(v5, v3);
    v64 = (v15 + v63[7]);
    v65 = v73;
    *v64 = v74;
    v64[1] = v65;
    v66 = (v15 + v63[8]);
    v67 = v76;
    *v66 = v51;
    v66[1] = v67;
    sub_22C84BE04(v63[9]);
    sub_22C6AE8BC(v53, v15 + *(v68 + 40), &qword_27D9C06F8, &qword_22C929520);
    sub_22C84BE04(v63[11]);
    *(v15 + v63[12]) = 0;
    sub_22C6AE8BC(v54, v15 + v63[13], &qword_27D9C0588, &qword_22C927FD0);
    sub_22C84BC74();
    sub_22C36C640(v69, v70, v71, v72);

    sub_22C36CC48();
  }

  else
  {
    sub_22C3A5908(v5, v3);
    sub_22C3788F8();
    sub_22C36CC48();

    sub_22C36C640(v39, v40, v41, v42);
  }
}

uint64_t sub_22C83E49C()
{
  sub_22C36BA7C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = sub_22C84BE94(v10);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = sub_22C3A5908(v3, v9);
    v16 = v15[10];
    sub_22C902DBC();
    sub_22C36A748();
    sub_22C36C640(v17, v18, v19, v20);
    sub_22C903BFC();

    v21 = v15[13];
    sub_22C903C7C();
    sub_22C903D4C();
    sub_22C36BECC();
    sub_22C36C640(v22, v23, v24, v25);
    sub_22C3A5908(v7, v5);
    v26 = sub_22C3788F8();
    sub_22C36C640(v26, v27, v28, v29);
    v30 = (v1 + v15[7]);
    *v30 = v13;
    v30[1] = v14;
    v31 = (v1 + v15[8]);
    *v31 = v2;
    v31[1] = v0;
    sub_22C84BE04(v15[9]);
    sub_22C84BE04(v15[11]);
    *(v1 + v15[12]) = 0;
    sub_22C36BECC();
    sub_22C36C640(v32, v33, v34, v15);
    sub_22C36CC48();
  }

  else
  {
    sub_22C3A5908(v3, v9);
    sub_22C3788F8();
    sub_22C36CC48();

    return sub_22C36C640(v37, v38, v39, v40);
  }
}

uint64_t sub_22C83E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v9 = *(*(sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = *(*(sub_22C3A5908(&qword_27D9C0A08, &unk_22C9298F0) - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = sub_22C3A5908(&qword_27D9C0260, &unk_22C926740);
  v6[11] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v13 = swift_allocObject();
  v6[13] = v13;
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;

  return MEMORY[0x2822009F8](sub_22C83E734, 0, 0);
}

uint64_t sub_22C83E734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22C83AB14();
  sub_22C3743E4();
  sub_22C386E28();
  v11 = sub_22C3788F8();
  sub_22C36C640(v11, v12, v13, v14);

  v15 = sub_22C84BC2C();
  sub_22C83CEA8(v15, v16, v17, v18, v19);
  sub_22C36D3E0(v9);
  if (v20)
  {
    sub_22C376B84(v10[10], &qword_27D9C0A08, &unk_22C9298F0);
    swift_task_alloc();
    sub_22C36CC90();
    v10[16] = v21;
    *v21 = v22;
    v21[1] = sub_22C83EA20;
    v23 = v10[7];
    v24 = v10[8];
    sub_22C84BF4C();
    sub_22C83AB2C();

    return sub_22C841508(v25, v26, v27);
  }

  else
  {
    v30 = sub_22C375DC8();
    v31 = v10[6];
    sub_22C6AE8BC(v30, v32, &qword_27D9C0260, &unk_22C926740);
    v33 = *(sub_22C380640() + 40);
    sub_22C37A468();
    v50 = v34 + *v34;
    v36 = *(v35 + 4);
    v37 = swift_task_alloc();
    v10[14] = v37;
    sub_22C3A5908(&qword_27D9C0270, &unk_22C926750);
    sub_22C36CBD0();
    *v37 = v38;
    v37[1] = sub_22C83E928;
    v39 = v10[12];
    v40 = v10[13];
    sub_22C84BC14();
    sub_22C83AB2C();

    return v48(v41, v42, v43, v44, v45, v46, v47, v48, a9, v50);
  }
}

uint64_t sub_22C83E928()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C83EA20()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C83EB18()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  sub_22C376B84(*(v0 + 96), &qword_27D9C0260, &unk_22C926740);
  sub_22C37DA50();

  v1 = *(v0 + 16);

  sub_22C36D5E0();
  sub_22C7E4ED0();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22C83EBC0()
{
  sub_22C84BFD0();
  sub_22C36D5EC();
  sub_22C376B84(*(v0 + 96), &qword_27D9C0260, &unk_22C926740);
  v1 = *(v0 + 120);
  sub_22C84BEF0();

  sub_22C369A24();
  sub_22C7E4EBC();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22C83EC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v9 = *(*(sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = *(*(sub_22C3A5908(&qword_27D9C09A0, &qword_22C9297D0) - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = sub_22C3A5908(&qword_27D9C09A8, &qword_22C9297D8);
  v6[11] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v13 = swift_allocObject();
  v6[13] = v13;
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;

  return MEMORY[0x2822009F8](sub_22C83EDB8, 0, 0);
}

uint64_t sub_22C83EDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22C83AB14();
  sub_22C3743E4();
  sub_22C386E28();
  v11 = sub_22C3788F8();
  sub_22C36C640(v11, v12, v13, v14);

  v15 = sub_22C84BC2C();
  sub_22C83D01C(v15, v16, v17, v18, v19);
  sub_22C36D3E0(v9);
  if (v20)
  {
    sub_22C376B84(v10[10], &qword_27D9C09A0, &qword_22C9297D0);
    swift_task_alloc();
    sub_22C36CC90();
    v10[16] = v21;
    *v21 = v22;
    v21[1] = sub_22C83F0A4;
    v23 = v10[7];
    v24 = v10[8];
    sub_22C84BF4C();
    sub_22C83AB2C();

    return sub_22C848EE4(v25, v26, v27);
  }

  else
  {
    v30 = sub_22C375DC8();
    v31 = v10[6];
    sub_22C6AE8BC(v30, v32, &qword_27D9C09A8, &qword_22C9297D8);
    v33 = *(sub_22C380640() + 40);
    sub_22C37A468();
    v50 = v34 + *v34;
    v36 = *(v35 + 4);
    v37 = swift_task_alloc();
    v10[14] = v37;
    sub_22C3A5908(&qword_27D9BFAA8, &qword_22C9297F0);
    sub_22C36CBD0();
    *v37 = v38;
    v37[1] = sub_22C83EFAC;
    v39 = v10[12];
    v40 = v10[13];
    sub_22C84BC14();
    sub_22C83AB2C();

    return v48(v41, v42, v43, v44, v45, v46, v47, v48, a9, v50);
  }
}

uint64_t sub_22C83EFAC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C83F0A4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C83F19C()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  sub_22C376B84(*(v0 + 96), &qword_27D9C09A8, &qword_22C9297D8);
  sub_22C37DA50();

  v1 = *(v0 + 16);

  sub_22C36D5E0();
  sub_22C7E4ED0();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22C83F244()
{
  sub_22C84BFD0();
  sub_22C36D5EC();
  sub_22C376B84(*(v0 + 96), &qword_27D9C09A8, &qword_22C9297D8);
  v1 = *(v0 + 120);
  sub_22C84BEF0();

  sub_22C369A24();
  sub_22C7E4EBC();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22C83F2E4()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  sub_22C37DA50();

  v1 = *(v0 + 16);

  sub_22C36D5E0();
  sub_22C7E4ED0();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22C83F374()
{
  sub_22C84BFD0();
  sub_22C36D5EC();
  v1 = *(v0 + 136);
  sub_22C84BEF0();

  sub_22C369A24();
  sub_22C7E4EBC();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22C83F3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *(*(sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v8 = *(*(sub_22C3A5908(&qword_27D9C09B8, &qword_22C929828) - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v9 = sub_22C3A5908(&qword_27D9C09C0, &qword_22C929830);
  v6[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C83F514, 0, 0);
}

uint64_t sub_22C83F514()
{
  sub_22C83AB14();
  v36 = v2;
  sub_22C3743E4();
  sub_22C386E28();
  v3 = sub_22C3788F8();
  sub_22C36C640(v3, v4, v5, v6);

  v7 = sub_22C84BC2C();
  sub_22C83D190(v7, v8, v9, v10, v11);
  sub_22C36D3E0(v0);
  if (!v12)
  {
    v20 = sub_22C375DC8();
    v21 = v1[8];
    sub_22C6AE8BC(v20, v22, &qword_27D9C09C0, &qword_22C929830);
    v23 = *(sub_22C380640() + 40);
    sub_22C37A468();
    v35 = v24 + *v24;
    v26 = *(v25 + 4);
    v27 = swift_task_alloc();
    v1[13] = v27;
    sub_22C903DCC();
    sub_22C36CBD0();
    *v27 = v28;
    v27[1] = sub_22C83F74C;
    v29 = v1[12];
    v30 = v1[6];
    v31 = v1[7];
    sub_22C84BC14();
    sub_22C83AB2C();

    __asm { BRAA            X7, X16 }
  }

  v13 = v1[6];
  sub_22C376B84(v1[10], &qword_27D9C09B8, &qword_22C929828);
  v34 = (v13 + *v13);
  v14 = v13[1];
  swift_task_alloc();
  sub_22C36CC90();
  v1[15] = v15;
  *v15 = v16;
  v15[1] = sub_22C83F844;
  v17 = v1[7];
  v18 = sub_22C84BF4C();

  return v34(v18);
}

uint64_t sub_22C83F74C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 112) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C83F844()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C83F93C()
{
  sub_22C36FB38();
  sub_22C376B84(v0[12], &qword_27D9C09C0, &qword_22C929830);
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[2];

  sub_22C36D5E0();

  return v5(v4);
}

uint64_t sub_22C83F9D4()
{
  sub_22C36FB38();
  sub_22C376B84(v0[12], &qword_27D9C09C0, &qword_22C929830);
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C83FA64()
{
  sub_22C36FB38();
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[2];

  sub_22C36D5E0();

  return v5(v4);
}

uint64_t sub_22C83FAE4()
{
  sub_22C36FB38();
  v1 = v0[16];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C83FB5C()
{
  sub_22C369980();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_22C903D4C();
  v1[15] = v4;
  sub_22C3699B8(v4);
  v1[16] = v5;
  v7 = *(v6 + 64);
  v1[17] = sub_22C3699D4();
  v8 = sub_22C9063DC();
  v1[18] = v8;
  sub_22C3699B8(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = sub_22C36D0D4();
  v1[21] = swift_task_alloc();
  v12 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C83FC5C()
{
  sub_22C6AEA50(*(v0 + 112) + 16, v0 + 16, &qword_27D9C0990, &qword_22C929780);
  sub_22C6AEA50(v0 + 16, v0 + 56, &qword_27D9C0990, &qword_22C929780);
  v2 = *(v0 + 80);
  sub_22C376B84(v0 + 56, &qword_27D9C0990, &qword_22C929780);
  if (!v2)
  {
    v49 = *(v0 + 104);
    v50 = *(v49 + 104);
    if (v50)
    {
      v51 = *(v0 + 168);
      v52 = *(v49 + 104);

      sub_22C90400C();
      v53 = sub_22C9063CC();
      v54 = sub_22C90AACC();
      if (sub_22C37026C(v54))
      {
        v55 = sub_22C36D240();
        *v55 = 0;
        _os_log_impl(&dword_22C366000, v53, OS_LOG_TYPE_DEFAULT, "ToolRetriever is nil. Constructing one now using supplied toolbox", v55, 2u);
        sub_22C3699EC();
      }

      v56 = *(v0 + 168);
      v57 = *(v0 + 144);
      v58 = *(v0 + 152);
      v1 = *(v0 + 112);

      v59 = *(v58 + 8);
      v60 = sub_22C36D264();
      v61(v60);
      v62 = type metadata accessor for ToolRetrievalService(0);
      v63 = *(v1 + 248);
      v64 = *(v1 + 256);

      v65 = sub_22C36D264();
      v67 = ToolRetrievalService.__allocating_init(clientApplicationIdentifier:toolboxResources:toolkitCache:)(v65, v66, v50, 0);

      sub_22C376B84(v0 + 16, &qword_27D9C0990, &qword_22C929780);
      *(v0 + 16) = v67;
      *(v0 + 24) = v71;
      *(v0 + 40) = v62;
      *(v0 + 48) = &off_283FC14A8;
    }
  }

  v3 = *(v0 + 160);
  v4 = *(v0 + 104);
  sub_22C90400C();

  v5 = sub_22C9063CC();
  sub_22C90AABC();
  sub_22C84BE54();
  v6 = sub_22C84BE2C();
  v7 = *(v0 + 152);
  v8 = *(v0 + 144);
  if (v6)
  {
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = *(v0 + 120);
    v70 = *(v0 + 160);
    v12 = *(v0 + 104);
    sub_22C383050();
    sub_22C37ACD0();
    sub_22C36D450();
    *v1 = 136315394;
    sub_22C38ABD0();
    v15 = sub_22C36F9F4(0xD00000000000002ELL, v13, v14);
    sub_22C38C1F0(v15);
    sub_22C903C7C();
    sub_22C36B838();
    sub_22C38694C(v16, v17);
    sub_22C381408();
    v18 = sub_22C90B47C();
    v19 = sub_22C84BBDC();
    v20(v19);
    v21 = sub_22C37170C();
    sub_22C36F9F4(v21, v22, v23);
    sub_22C37FF48();

    *(v1 + 14) = v18;
    sub_22C389318();
    _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
    sub_22C84BCAC();
    sub_22C37E124();
    sub_22C370510();

    v37 = sub_22C84BD08(v29, v30, v31, v32, v33, v34, v35, v36, v68, v8, v69, v70);
  }

  else
  {

    v37 = sub_22C84BBF0();
  }

  v38(v37);
  sub_22C376B84(v0 + 16, &qword_27D9C0990, &qword_22C929780);
  v39 = *(v0 + 160);
  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  v42 = *(v0 + 96);
  sub_22C903F4C();
  sub_22C36A748();
  sub_22C36C640(v43, v44, v45, v46);

  sub_22C369C50();

  return v47();
}

uint64_t sub_22C840000()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_22C903D4C();
  v1[6] = v5;
  sub_22C3699B8(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = sub_22C3699D4();
  v9 = sub_22C9063DC();
  v1[9] = v9;
  sub_22C3699B8(v9);
  v1[10] = v10;
  v12 = *(v11 + 64);
  v1[11] = sub_22C3699D4();
  v13 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  v1[12] = sub_22C3699D4();
  v16 = sub_22C3A5908(&qword_27D9C09D0, &qword_22C929848);
  sub_22C369914(v16);
  v18 = *(v17 + 64);
  v1[13] = sub_22C3699D4();
  v19 = sub_22C3A5908(&qword_27D9C09D8, &qword_22C929850);
  v1[14] = v19;
  sub_22C369914(v19);
  v21 = *(v20 + 64);
  v1[15] = sub_22C3699D4();
  v22 = sub_22C90363C();
  v1[16] = v22;
  sub_22C3699B8(v22);
  v1[17] = v23;
  v25 = *(v24 + 64);
  v1[18] = sub_22C3699D4();
  v26 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_22C840650()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 168) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C840748()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 184) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C840840()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = v0[19];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_22C376B84(v0[15], &qword_27D9C09D8, &qword_22C929850);

  sub_22C84BD40();

  sub_22C369C50();
  sub_22C7E4ED0();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22C840908()
{
  sub_22C3743E4();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_22C376B84(v0[15], &qword_27D9C09D8, &qword_22C929850);

  v4 = v0[21];
  sub_22C84BF28();

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C8409E0()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = v0[19];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  sub_22C84BD40();

  sub_22C369C50();
  sub_22C7E4ED0();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22C840A8C()
{
  sub_22C3743E4();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = v0[23];
  sub_22C84BF28();

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C840B48()
{
  sub_22C369980();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_22C903D4C();
  v1[9] = v3;
  sub_22C3699B8(v3);
  v1[10] = v4;
  v6 = *(v5 + 64);
  v1[11] = sub_22C3699D4();
  v7 = sub_22C9063DC();
  v1[12] = v7;
  sub_22C3699B8(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = sub_22C36D0D4();
  v1[15] = swift_task_alloc();
  v11 = sub_22C90363C();
  v1[16] = v11;
  sub_22C3699B8(v11);
  v1[17] = v12;
  v14 = *(v13 + 64);
  v1[18] = sub_22C3699D4();
  v15 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C840F2C()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  v3[20] = v7;

  if (v0)
  {
    v8 = v3[18];
    v10 = v3[14];
    v9 = v3[15];
    v11 = v3[11];

    sub_22C369A24();

    return v12();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_22C84107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v20 = v16[7];
  if (sub_22C83AB78())
  {
    v21 = v16[15];
    v22 = v16[7];
    sub_22C90400C();

    v23 = sub_22C9063CC();
    sub_22C90AACC();
    sub_22C84BE54();
    v24 = sub_22C84BE2C();
    v25 = v16[12];
    v26 = v16[13];
    if (v24)
    {
      v28 = v16[10];
      v27 = v16[11];
      HIDWORD(a10) = v17;
      v29 = v16[9];
      v66 = v16[15];
      v30 = v16[7];
      sub_22C36FB44();
      sub_22C388D58();
      sub_22C37E8D4();
      sub_22C84BED4(4.8149e-34);
      sub_22C36B838();
      sub_22C38694C(v31, v32);
      sub_22C381408();
      v33 = sub_22C90B47C();
      a11 = v25;
      v34 = sub_22C375184();
      v35(v34, v29);
      v36 = sub_22C37170C();
      sub_22C36F9F4(v36, v37, v38);
      sub_22C37FF48();

      *(v18 + 4) = v33;
      sub_22C84BC84();
      _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
      sub_22C36FF94(v19);
      sub_22C36C30C();
      sub_22C370510();

      (*(v26 + 8))(v66, v25);
    }

    else
    {

      v54 = sub_22C84BBF0();
      v56(v54, v55);
    }

    sub_22C378AB0(v16[8] + 208, (v16 + 2));
    v57 = swift_task_alloc();
    v16[21] = v57;
    *v57 = v16;
    v57[1] = sub_22C8412C0;
    sub_22C386674(v16[7]);
    sub_22C36EC40();

    return v61(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, sub_22C7B85FC, a13, a14, a15, a16);
  }

  else
  {
    v44 = v16[20];
    sub_22C380204();

    sub_22C371EA8();
    sub_22C36EC40();

    return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_22C8412C0()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 168);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  v5[22] = v0;

  if (v0)
  {
    v11 = v5[20];
    sub_22C7B8E10((v5 + 2));
  }

  else
  {
    v5[23] = v3;
    sub_22C7B8E10((v5 + 2));
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C8413E8()
{
  sub_22C36FB38();
  v1 = v0[20];
  v2 = v0[8];
  if (v0[23])
  {
    v3 = v0[23];
  }

  v4 = sub_22C36BAFC();
  sub_22C8421B0(v4);
  sub_22C37FF48();

  sub_22C380204();

  v5 = sub_22C371EA8();

  return v6(v5);
}

uint64_t sub_22C841490()
{
  sub_22C36FB38();
  v1 = *(v0 + 176);
  sub_22C380204();

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C841508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_22C903D4C();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_22C9064EC();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = sub_22C90069C();
  v3[19] = v13;
  v14 = *(v13 - 8);
  v3[20] = v14;
  v15 = *(v14 + 64) + 15;
  v3[21] = swift_task_alloc();
  v16 = sub_22C90651C();
  v3[22] = v16;
  v17 = *(v16 - 8);
  v3[23] = v17;
  v18 = *(v17 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C84173C, 0, 0);
}

uint64_t sub_22C84173C()
{
  sub_22C3743E4();
  v1 = v0[8];
  v2 = v1[10];
  v3 = v1[11];
  sub_22C375EAC(v1 + 7);
  if (qword_27D9BA740 != -1)
  {
    swift_once();
  }

  v4 = v0[8];
  sub_22C84BC5C();
  v5();
  v0[25] = *(v4 + 96);
  sub_22C903CAC();
  if (v6)
  {
    sub_22C50B5FC();
  }

  else
  {
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[19];
    sub_22C90068C();
    sub_22C90065C();
    sub_22C50B5FC();
    v10 = *(v8 + 8);
    v11 = sub_22C372164();
    v12(v11);
  }

  v0[26] = v3;
  v13 = v0[18];
  v14 = v0[9];
  sub_22C900F8C();
  sub_22C903C6C();
  sub_22C9064CC();
  v15 = *(MEMORY[0x277D08420] + 4);

  v16 = swift_task_alloc();
  v0[27] = v16;
  v17 = MEMORY[0x277D1D970];
  sub_22C38694C(&qword_28142FB00, MEMORY[0x277D1D970]);
  sub_22C38694C(qword_28142FB08, v17);
  v18 = MEMORY[0x277D1D988];
  sub_22C38694C(&qword_28142FAF0, MEMORY[0x277D1D988]);
  sub_22C38694C(&qword_28142FAF8, v18);
  *v16 = v0;
  v16[1] = sub_22C8419BC;
  v19 = v0[24];
  v20 = v0[22];
  v21 = v0[18];
  v22 = v0[16];
  v23 = v0[9];
  sub_22C372E90();

  return MEMORY[0x28215E6E8](v24);
}

uint64_t sub_22C8419BC()
{
  sub_22C84BFD0();
  sub_22C36D5EC();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = v4[27];
  v6 = v4[26];
  v7 = v4[18];
  v8 = v4[17];
  v9 = v4[16];
  v10 = v4[9];
  v11 = *v1;
  sub_22C369970();
  *v12 = v11;
  *(v13 + 224) = v0;

  v14 = *(v8 + 8);
  v15 = sub_22C36D264();
  v16(v15);

  sub_22C36BB08();
  sub_22C7E4EBC();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_22C841B44()
{
  v54 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 120);
  v3 = *(v0 + 64);
  v4 = sub_22C90650C();
  sub_22C90400C();

  v5 = sub_22C9063CC();
  v6 = sub_22C90AABC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 200);
    v51 = *(v0 + 176);
    v52 = *(v0 + 192);
    v49 = *(v0 + 120);
    v50 = *(v0 + 184);
    v8 = *(v0 + 96);
    v47 = *(v0 + 112);
    v48 = *(v0 + 104);
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    v11 = sub_22C370060();
    v53 = swift_slowAlloc();
    *v11 = 136315650;
    sub_22C36EE00();
    *(v11 + 4) = sub_22C36F9F4(0xD00000000000001BLL, v12, &v53);
    *(v11 + 12) = 2080;
    sub_22C903C7C();
    sub_22C36B838();
    sub_22C38694C(v13, v14);
    v15 = sub_22C90B47C();
    v17 = v16;
    v18 = *(v9 + 8);
    v19 = sub_22C36CA88();
    v20(v19);
    v21 = sub_22C36F9F4(v15, v17, &v53);

    *(v11 + 14) = v21;
    *(v11 + 22) = 2080;
    v22 = static QueryDecorationLoggingUtils.generateReadableSpans(_:)(v4);
    v24 = sub_22C36F9F4(v22, v23, &v53);

    *(v11 + 24) = v24;
    _os_log_impl(&dword_22C366000, v5, v6, "QDInternal: Output of Span Matching | %s for caller: %s\n%s", v11, 0x20u);
    swift_arrayDestroy();
    sub_22C37E124();
    sub_22C3699EC();

    (*(v47 + 8))(v49, v48);
    (*(v50 + 8))(v52, v51);
  }

  else
  {
    v26 = *(v0 + 184);
    v25 = *(v0 + 192);
    v27 = *(v0 + 176);
    v29 = *(v0 + 112);
    v28 = *(v0 + 120);
    v30 = *(v0 + 104);

    v31 = *(v29 + 8);
    v32 = sub_22C36CA88();
    v33(v32);
    v34 = *(v26 + 8);
    v35 = sub_22C372164();
    v36(v35);
  }

  v37 = *(v0 + 192);
  v38 = *(v0 + 168);
  v39 = *(v0 + 144);
  v40 = *(v0 + 120);
  v41 = *(v0 + 96);
  **(v0 + 56) = v4;
  v42 = *(v0 + 40);
  v43 = *(v0 + 48);
  sub_22C374168((v0 + 16), v42);
  sub_22C387CDC();
  v44(v42, v43);
  sub_22C36FF94((v0 + 16));

  sub_22C369C50();

  return v45();
}

void sub_22C841E60()
{
  sub_22C3743E4();
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[5];
  v7 = v0[6];
  sub_22C374168(v0 + 2, v6);
  sub_22C387CDC();
  v8(v6, v7);
  sub_22C36FF94(v0 + 2);

  sub_22C369A24();
  v9 = v0[28];
  sub_22C372E90();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C841F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C841F54, 0, 0);
}

uint64_t sub_22C841F54()
{
  sub_22C36FB38();
  v1 = v0[3];
  v2 = sub_22C374168((v0[4] + 96), *(v0[4] + 120));
  sub_22C9064DC();
  v0[5] = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v6 = sub_22C84BD2C(v5);

  return sub_22C80BD50(v6, v7);
}

uint64_t sub_22C842008()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *(v7 + 40);
  v10 = *v1;
  sub_22C369970();
  *v11 = v10;

  if (v0)
  {
    v12 = *(v10 + 8);
    sub_22C7E4ED0();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    *(v5 + 56) = v3;
    sub_22C36BB08();
    sub_22C7E4ED0();

    return MEMORY[0x2822009F8](v22, v23, v24);
  }
}

uint64_t sub_22C842154()
{
  sub_22C369980();
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  sub_22C9064FC();
  sub_22C369C50();

  return v3();
}

uint64_t sub_22C8421B0(uint64_t a1)
{
  v5 = a1;

  sub_22C3CF084(v1);
  v2 = v5;
  v5 = MEMORY[0x277D84F90];
  v3 = sub_22C83BEC0(v2, &v5);

  return v3;
}

uint64_t sub_22C842224()
{
  sub_22C369980();
  *(v1 + 456) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v0;
  v4 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  *(v1 + 72) = sub_22C3699D4();
  v7 = sub_22C3A5908(&qword_27D9C06D0, &qword_22C929880);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  *(v1 + 80) = sub_22C3699D4();
  v10 = sub_22C3A5908(&qword_27D9C0240, &qword_22C926718);
  *(v1 + 88) = v10;
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  *(v1 + 96) = sub_22C3699D4();
  v13 = sub_22C3A5908(&qword_27D9C0238, &qword_22C9266F0);
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  v16 = sub_22C36D0D4();
  *(v1 + 112) = sub_22C84BFB8(v16);
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  v17 = sub_22C903E7C();
  *(v1 + 136) = v17;
  sub_22C3699B8(v17);
  *(v1 + 144) = v18;
  v20 = *(v19 + 64);
  *(v1 + 152) = sub_22C36D0D4();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  v21 = sub_22C903D4C();
  *(v1 + 200) = v21;
  sub_22C3699B8(v21);
  *(v1 + 208) = v22;
  v24 = *(v23 + 64);
  *(v1 + 216) = sub_22C3699D4();
  v25 = sub_22C9063DC();
  *(v1 + 224) = v25;
  sub_22C3699B8(v25);
  *(v1 + 232) = v26;
  v28 = *(v27 + 64);
  *(v1 + 240) = sub_22C36D0D4();
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  v29 = sub_22C90363C();
  *(v1 + 288) = v29;
  sub_22C3699B8(v29);
  *(v1 + 296) = v30;
  v32 = *(v31 + 64);
  *(v1 + 304) = sub_22C3699D4();
  v33 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_22C8424F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v28 = *(v24 + 296);
  v29 = *(v24 + 288);
  v30 = *MEMORY[0x277D1EBB0];
  v31 = sub_22C37F610(v28);
  v32(v31);
  v33 = sub_22C90362C();
  v34 = *(v28 + 8);
  v35 = sub_22C36BBCC();
  v36(v35);
  v37 = *(v24 + 56);
  if (v33)
  {
    v38 = *(v24 + 280);
    sub_22C90400C();

    v39 = sub_22C9063CC();
    sub_22C90AACC();
    sub_22C84BE54();
    v40 = sub_22C84BE2C();
    v41 = *(v24 + 224);
    v42 = *(v24 + 232);
    if (v40)
    {
      v43 = *(v24 + 208);
      v27 = *(v24 + 216);
      v26 = *(v24 + 200);
      v200 = *(v24 + 280);
      sub_22C84BE10();
      a19 = sub_22C37ACD0();
      a21 = a19;
      *v25 = 136315394;
      v44 = sub_22C370A8C("callContextRetriever(qdContext:hydrationStrategy:)");
      sub_22C38C1F0(v44);
      sub_22C903C7C();
      sub_22C36B838();
      sub_22C38694C(v45, v46);
      sub_22C381408();
      v47 = sub_22C90B47C();
      a18 = v41;
      v48 = sub_22C84BBDC();
      v49(v48);
      v50 = sub_22C37170C();
      sub_22C36F9F4(v50, v51, v52);
      sub_22C37FF48();

      *(v25 + 14) = v47;
      sub_22C389318();
      _os_log_impl(v53, v54, v55, v56, v57, 0x16u);
      sub_22C383C94();
      sub_22C37E124();
      sub_22C370510();

      v58 = *(v42 + 8);
      v58(v200, v41);
    }

    else
    {

      v58 = *(v42 + 8);
      v81 = sub_22C37170C();
      v58(v81, v82);
    }

    sub_22C84BF64();
    *(v24 + 312) = v58;
    v83 = *(v24 + 56);
    if (sub_22C83AB78())
    {
      v84 = *(v24 + 272);
      v85 = *(v24 + 56);
      sub_22C90400C();

      v86 = sub_22C9063CC();
      v87 = sub_22C90AACC();

      v88 = os_log_type_enabled(v86, v87);
      v89 = *(v24 + 272);
      v90 = *(v24 + 232);
      if (v88)
      {
        a19 = *(v24 + 272);
        v202 = *(v24 + 224);
        v91 = *(v24 + 208);
        v92 = *(v24 + 216);
        v93 = *(v24 + 200);
        sub_22C84BE10();
        a18 = sub_22C84BF0C();
        a21 = a18;
        *v26 = 136315394;
        v94 = sub_22C370A8C("callContextRetriever(qdContext:hydrationStrategy:)");
        sub_22C84BE6C(v94);
        v95 = *(v89 + 96);
        sub_22C903C7C();
        sub_22C36B838();
        sub_22C38694C(v96, v97);
        sub_22C383E68();
        v98 = sub_22C90B47C();
        a17 = v90;
        v99 = *(v91 + 8);
        v100 = sub_22C37A06C();
        v101(v100);
        v102 = sub_22C372164();
        sub_22C36F9F4(v102, v103, v104);
        sub_22C3798CC();
        *(v26 + 14) = v98;
        sub_22C84BDB8(&dword_22C366000, v105, v106, "%s This is a remote request. Retrieving remote state and skipping local context retrieval for caller: %s.");
        sub_22C383C94();
        sub_22C84BF64();
        sub_22C3699EC();
        sub_22C36C30C();

        v107 = a19;
        v108 = v202;
      }

      else
      {

        v107 = sub_22C36BBCC();
      }

      v58(v107, v108);
      sub_22C378AB0(*(v24 + 64) + 208, v24 + 16);
      swift_task_alloc();
      sub_22C36CC90();
      *(v24 + 320) = v155;
      *v155 = v156;
      v155[1] = sub_22C842D44;
      v157 = *(v24 + 128);
      v158 = *(v24 + 56);
      sub_22C375C0C();

      return v163(v159, v160, v161, v162, v163, v164, v165, v166, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, sub_22C7B8144, a21, a22, a23, a24);
    }

    else
    {
      v132 = *(v24 + 80);
      v131 = *(v24 + 88);
      v134 = *(v24 + 64);
      v133 = *(v24 + 72);
      v135 = *(v24 + 456);
      v136 = *(v24 + 56);
      v137 = swift_allocObject();
      *(v24 + 336) = v137;
      *(v137 + 16) = v136;
      *(v137 + 24) = v134;
      *(v137 + 32) = v135;
      v138 = sub_22C908D2C();
      swift_retain_n();
      swift_retain_n();
      sub_22C36A748();
      sub_22C36C640(v139, v140, v141, v138);

      sub_22C83CBDC(v142, v27, 0xE700000000000000, v133, v132);
      sub_22C36D0A8(v132, 1, v131);
      if (v143)
      {
        sub_22C376B84(*(v24 + 80), &qword_27D9C06D0, &qword_22C929880);
        swift_task_alloc();
        sub_22C36CC90();
        *(v24 + 360) = v144;
        *v144 = v145;
        v144[1] = sub_22C843398;
        v146 = *(v24 + 176);
        v147 = *(v24 + 56);
        v148 = *(v24 + 64);
        v149 = *(v24 + 456);
        sub_22C375C0C();

        return sub_22C8446D8(v150, v151, v152, v153);
      }

      else
      {
        v167 = sub_22C375DC8();
        v168 = *(v24 + 64);
        sub_22C6AE8BC(v167, v169, &qword_27D9C0240, &qword_22C926718);
        v170 = sub_22C84BD90();
        v171 = *(v170 + 40);
        v199 = v170 + 40;
        sub_22C369B5C();
        v204 = v172 + *v172;
        v174 = *(v173 + 4);
        swift_task_alloc();
        sub_22C36CC90();
        *(v24 + 344) = v175;
        *v175 = v176;
        v175[1] = sub_22C8432A0;
        v177 = *(v24 + 176);
        v178 = *(v24 + 136);
        v179 = *(v24 + 96);
        sub_22C84BD18();
        sub_22C375C0C();

        return v187(v180, v181, v182, v183, v184, v185, v186, v187, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v199, v204, a21, a22, a23, a24);
      }
    }
  }

  else
  {
    v59 = *(v24 + 240);
    sub_22C90400C();

    v60 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C84BE54();
    v61 = sub_22C84BE2C();
    v62 = *(v24 + 232);
    v63 = *(v24 + 224);
    if (v61)
    {
      v65 = *(v24 + 208);
      v64 = *(v24 + 216);
      v66 = *(v24 + 200);
      v201 = *(v24 + 240);
      sub_22C84BE10();
      a21 = sub_22C37ACD0();
      *v25 = 136315394;
      v67 = sub_22C370A8C("callContextRetriever(qdContext:hydrationStrategy:)");
      sub_22C38C1F0(v67);
      sub_22C903C7C();
      sub_22C36B838();
      sub_22C38694C(v68, v69);
      sub_22C381408();
      v70 = sub_22C90B47C();
      v71 = sub_22C84BBDC();
      v72(v71);
      v73 = sub_22C37170C();
      sub_22C36F9F4(v73, v74, v75);
      sub_22C37FF48();

      *(v25 + 14) = v70;
      sub_22C389318();
      _os_log_impl(v76, v77, v78, v79, v80, 0x16u);
      sub_22C383C94();
      sub_22C37E124();
      sub_22C370510();

      (*(v62 + 8))(v201, v63);
    }

    else
    {

      v109 = sub_22C84BBF0();
      v111(v109, v110);
    }

    v112 = *(v24 + 304);
    v113 = *(v24 + 272);
    v114 = *(v24 + 280);
    v116 = *(v24 + 256);
    v115 = *(v24 + 264);
    v118 = *(v24 + 240);
    v117 = *(v24 + 248);
    v119 = *(v24 + 216);
    v121 = *(v24 + 184);
    v120 = *(v24 + 192);
    v189 = *(v24 + 176);
    v190 = *(v24 + 168);
    v191 = *(v24 + 160);
    v192 = *(v24 + 152);
    v193 = *(v24 + 128);
    v194 = *(v24 + 120);
    v195 = *(v24 + 112);
    v196 = *(v24 + 104);
    v197 = *(v24 + 96);
    v198 = *(v24 + 80);
    v203 = *(v24 + 72);

    sub_22C36D5E0();
    sub_22C375C0C();

    return v124(v122, v123, v124, v125, v126, v127, v128, v129, a9, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v203, a21, a22, a23, a24);
  }
}

uint64_t sub_22C842D44()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 328) = v0;

  sub_22C7B8E10(v3 + 16);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C8432A0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 352) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C843398()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 360);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 368) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C843490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v26 = v24[8];
  sub_22C376B84(v24[12], &qword_27D9C0240, &qword_22C926718);

  v27 = v24[44];
  sub_22C381580();

  v28 = sub_22C84BD70();
  v29(v28);
  sub_22C84BC74();
  sub_22C36C640(v30, v31, v32, v33);
  sub_22C846020(v25);
  v59 = v27;
  if (v27)
  {
    v34 = v24[22];
    v35 = v24[17];
    v36 = v24[18];
    sub_22C376B84(v24[15], &qword_27D9C0238, &qword_22C9266F0);
    v37 = *(v36 + 8);
    v38 = sub_22C36BBCC();
    v39(v38);
    sub_22C84BF58();
    v41 = v24[32];
    v40 = v24[33];
    v43 = v24[30];
    v42 = v24[31];
    v44 = v24[27];
    v45 = v24[23];
    v46 = v24[24];
    sub_22C36A444();

    sub_22C369A24();
    sub_22C375C0C();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v59, a21, a22, a23, a24);
  }

  else
  {
    sub_22C376B84(v24[15], &qword_27D9C0238, &qword_22C9266F0);
    swift_task_alloc();
    sub_22C36CC90();
    v24[49] = v56;
    *v56 = v57;
    sub_22C37EDF4(v56);
    sub_22C375C0C();

    return sub_22C84670C();
  }
}

uint64_t sub_22C8436A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v25 = v24[42];
  v27 = v24[7];
  v26 = v24[8];
  sub_22C376B84(v24[12], &qword_27D9C0240, &qword_22C926718);

  sub_22C373B30(v24[44]);

  sub_22C369A24();
  sub_22C375C0C();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22C8437DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v26 = v24[8];

  v27 = v24[46];
  sub_22C381580();

  v28 = sub_22C84BD70();
  v29(v28);
  sub_22C84BC74();
  sub_22C36C640(v30, v31, v32, v33);
  sub_22C846020(v25);
  v59 = v27;
  if (v27)
  {
    v34 = v24[22];
    v35 = v24[17];
    v36 = v24[18];
    sub_22C376B84(v24[15], &qword_27D9C0238, &qword_22C9266F0);
    v37 = *(v36 + 8);
    v38 = sub_22C36BBCC();
    v39(v38);
    sub_22C84BF58();
    v41 = v24[32];
    v40 = v24[33];
    v43 = v24[30];
    v42 = v24[31];
    v44 = v24[27];
    v45 = v24[23];
    v46 = v24[24];
    sub_22C36A444();

    sub_22C369A24();
    sub_22C375C0C();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v59, a21, a22, a23, a24);
  }

  else
  {
    sub_22C376B84(v24[15], &qword_27D9C0238, &qword_22C9266F0);
    swift_task_alloc();
    sub_22C36CC90();
    v24[49] = v56;
    *v56 = v57;
    sub_22C37EDF4(v56);
    sub_22C375C0C();

    return sub_22C84670C();
  }
}

uint64_t sub_22C8439D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v25 = v24[42];
  v26 = v24[7];
  v27 = v24[8];

  sub_22C373B30(v24[46]);

  sub_22C369A24();
  sub_22C375C0C();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22C843AF0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 392);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 400) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C843BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v25 = *(v24 + 400);
  v26 = *(v24 + 56);
  v27 = *(v24 + 64);
  sub_22C846020(*(v24 + 112));
  v28 = *(v24 + 176);
  if (v25)
  {
    v80 = v25;
    v29 = *(v24 + 136);
    v30 = *(v24 + 144);
    sub_22C376B84(*(v24 + 112), &qword_27D9C0238, &qword_22C9266F0);
    v49 = *(v30 + 8);
    v50 = sub_22C36BBCC();
    v51(v50);
    v52 = *(v24 + 304);
    v54 = *(v24 + 272);
    v53 = *(v24 + 280);
    v56 = *(v24 + 256);
    v55 = *(v24 + 264);
    v58 = *(v24 + 240);
    v57 = *(v24 + 248);
    v59 = *(v24 + 216);
    v61 = *(v24 + 184);
    v60 = *(v24 + 192);
    sub_22C36A444();

    sub_22C369A24();
    sub_22C375C0C();

    return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v80, a21, a22, a23, a24);
  }

  else
  {
    v31 = *(v24 + 136);
    v33 = *(v24 + 104);
    v32 = *(v24 + 112);
    sub_22C903E4C();
    v34 = sub_22C36CA88();
    sub_22C6AEA50(v34, v35, v36, v37);
    sub_22C36D0A8(v33, 1, v31);
    if (v38)
    {
      sub_22C376B84(*(v24 + 104), &qword_27D9C0238, &qword_22C9266F0);
    }

    else
    {
      v39 = *(v24 + 136);
      v40 = *(v24 + 144);
      v41 = *(v24 + 104);
      sub_22C903E4C();
      v42 = *(v40 + 8);
      v43 = sub_22C3806B8();
      v44(v43);
    }

    v46 = *(v24 + 56);
    v45 = *(v24 + 64);
    sub_22C846F14();
    v48 = v47;

    sub_22C847304(v48, v46);
    v71 = *(v24 + 160);
    sub_22C903E3C();
    swift_task_alloc();
    sub_22C36CC90();
    *(v24 + 408) = v72;
    *v72 = v73;
    v72[1] = sub_22C843EB8;
    v75 = *(v24 + 160);
    v74 = *(v24 + 168);
    v76 = *(v24 + 56);
    v77 = *(v24 + 64);
    v78 = *(v24 + 456);
    sub_22C375C0C();

    return sub_22C845BF0();
  }
}

uint64_t sub_22C843EB8()
{
  sub_22C36FB38();
  v2 = *v1;
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  v5 = v2[51];
  *v4 = *v1;
  v3[52] = v0;

  v6 = v2[20];
  v7 = v2[18];
  v8 = v2[17];
  v9 = *(v7 + 8);
  v10 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v3[55] = v9;
    v3[56] = v10;
  }

  else
  {
    v3[53] = v9;
    v3[54] = v10;
  }

  v9(v6, v8);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C844388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  sub_22C373B30(*(v24 + 328));

  sub_22C369A24();
  sub_22C375C0C();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22C84448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  (*(v24[18] + 8))(v24[22], v24[17]);
  sub_22C373B30(v24[50]);

  sub_22C369A24();
  sub_22C375C0C();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22C8445A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v26 = v24[55];
  v25 = v24[56];
  v27 = v24[22];
  v28 = v24[17];
  sub_22C376B84(v24[14], &qword_27D9C0238, &qword_22C9266F0);
  v29 = sub_22C36BBCC();
  v26(v29);
  sub_22C373B30(v24[52]);

  sub_22C369A24();
  sub_22C375C0C();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22C8446D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 344) = a4;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 56) = a1;
  v5 = sub_22C903E7C();
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v8 = sub_22C90843C();
  *(v4 + 112) = v8;
  v9 = *(v8 - 8);
  *(v4 + 120) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v11 = sub_22C90069C();
  *(v4 + 136) = v11;
  v12 = *(v11 - 8);
  *(v4 + 144) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  v14 = sub_22C90846C();
  *(v4 + 160) = v14;
  v15 = *(v14 - 8);
  *(v4 + 168) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  v17 = sub_22C903D4C();
  *(v4 + 192) = v17;
  v18 = *(v17 - 8);
  *(v4 + 200) = v18;
  v19 = *(v18 + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  v20 = sub_22C9063DC();
  *(v4 + 216) = v20;
  v21 = *(v20 - 8);
  *(v4 + 224) = v21;
  v22 = *(v21 + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C84499C, 0, 0);
}

uint64_t sub_22C84499C()
{
  sub_22C381520();
  v78 = v0;
  v1 = v0[8];
  v2 = v1[10];
  v3 = v1[11];
  sub_22C375EAC(v1 + 7);
  if (qword_281432A50 != -1)
  {
    swift_once();
  }

  v4 = v0[8];
  sub_22C84BC5C();
  v5();
  v0[32] = *(v4 + 96);
  v6 = sub_22C903C2C();
  v7 = v0[8];
  if (v6)
  {
    v8 = v0[31];
    sub_22C90400C();

    v9 = sub_22C9063CC();
    v10 = sub_22C90AACC();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[31];
    v14 = v0[27];
    v13 = v0[28];
    if (v11)
    {
      v75 = v0[31];
      v15 = v0[25];
      v16 = v0[26];
      v17 = v0[24];
      sub_22C383050();
      v77 = sub_22C84BF0C();
      *v14 = 136315394;
      sub_22C36EE00();
      v19 = sub_22C36F9F4(0xD000000000000032, v18, &v77);
      sub_22C84BE6C(v19);
      sub_22C903C7C();
      sub_22C36B838();
      sub_22C38694C(v20, v21);
      sub_22C383E68();
      sub_22C90B47C();
      v22 = *(v15 + 8);
      v23 = sub_22C37A06C();
      v24(v23);
      v25 = sub_22C36BBCC();
      v28 = sub_22C36F9F4(v25, v26, v27);

      *(v14 + 14) = v28;
      sub_22C84BDB8(&dword_22C366000, v29, v30, "%s is refreshing Context Retrieval for caller: %s");
      sub_22C383C94();
      sub_22C37E124();
      sub_22C36C30C();

      v31 = *(v13 + 8);
      v31(v75, v14);
    }

    else
    {

      v31 = *(v13 + 8);
      v31(v12, v14);
    }

    v0[33] = v31;
    v56 = sub_22C374168((v0[9] + 56), *(v0[9] + 80));
    if (qword_281432E48 != -1)
    {
      swift_once();
    }

    v57 = qword_281437510;
    v58 = *v56;
    v59 = swift_task_alloc();
    v0[34] = v59;
    *v59 = v0;
    sub_22C84BD64(v59);

    return sub_22C7B3158(v57);
  }

  else
  {
    v32 = v0[30];
    sub_22C90400C();

    v33 = sub_22C9063CC();
    v34 = sub_22C90AABC();

    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[30];
    v38 = v0[27];
    v37 = v0[28];
    if (v35)
    {
      v76 = v0[30];
      v39 = v0[25];
      v40 = v0[26];
      v41 = v0[24];
      sub_22C383050();
      v77 = sub_22C84BF0C();
      *v38 = 136315394;
      sub_22C36EE00();
      v43 = sub_22C36F9F4(0xD000000000000032, v42, &v77);
      sub_22C84BE6C(v43);
      sub_22C903C7C();
      sub_22C36B838();
      sub_22C38694C(v44, v45);
      sub_22C383E68();
      sub_22C90B47C();
      v46 = *(v39 + 8);
      v47 = sub_22C37A06C();
      v48(v47);
      v49 = sub_22C36BBCC();
      v52 = sub_22C36F9F4(v49, v50, v51);

      *(v38 + 14) = v52;
      sub_22C84BDB8(&dword_22C366000, v53, v54, "%s Context Retrieval was NOT refreshed for caller: %s. This should only be done in specific circumstances.");
      sub_22C383C94();
      sub_22C37E124();
      sub_22C36C30C();

      v55 = *(v37 + 8);
      v55(v76, v38);
    }

    else
    {

      v55 = *(v37 + 8);
      v55(v36, v38);
    }

    v0[36] = v55;
    v61 = v0[32];
    sub_22C903C8C();
    sub_22C903CAC();
    if (v62)
    {
      sub_22C50B5FC();
    }

    else
    {
      v64 = v0[18];
      v63 = v0[19];
      v65 = v0[17];
      sub_22C90068C();
      sub_22C90065C();
      sub_22C50B5FC();
      v66 = *(v64 + 8);
      v67 = sub_22C372164();
      v68(v67);
    }

    sub_22C36D190();
    sub_22C903C6C();
    sub_22C90841C();
    v69 = *(MEMORY[0x277D08420] + 4);

    v70 = swift_task_alloc();
    v0[38] = v70;
    sub_22C84BC94();
    sub_22C38694C(v71, v34);
    sub_22C84BCCC(&qword_28142FAC8);
    sub_22C388444();
    sub_22C38694C(v72, v38);
    v73 = sub_22C383940(&qword_28142FAB8);
    *v70 = v0;
    v74 = sub_22C3829F4(v73);

    return MEMORY[0x28215E6E8](v74);
  }
}

uint64_t sub_22C844F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = *(v14 + 280);
  sub_22C37BC9C();

  sub_22C369A24();
  sub_22C36D5F8();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C844FD4()
{
  sub_22C84BFD0();
  sub_22C36D5EC();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = v4[38];
  v6 = v4[37];
  v7 = v4[16];
  v8 = v4[15];
  v9 = v4[14];
  v10 = v4[9];
  v11 = *v1;
  sub_22C369970();
  *v12 = v11;
  *(v13 + 312) = v0;

  v14 = *(v8 + 8);
  v15 = sub_22C36D264();
  v16(v15);

  sub_22C36BB08();
  sub_22C7E4EBC();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_22C84515C()
{
  v58 = v0;
  v1 = *(v0 + 232);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  sub_22C374168((v0 + 16), v7);
  sub_22C387CDC();
  v9(v7, v8);
  sub_22C90400C();
  (*(v5 + 16))(v3, v2, v4);

  v10 = sub_22C9063CC();
  v11 = sub_22C90AACC();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 288);
  if (v12)
  {
    v53 = *(v0 + 288);
    v54 = *(v0 + 224);
    v14 = *(v0 + 208);
    v55 = *(v0 + 216);
    v56 = *(v0 + 232);
    v15 = *(v0 + 200);
    v52 = *(v0 + 192);
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v50 = *(v0 + 160);
    v51 = *(v0 + 256);
    v18 = *(v0 + 104);
    v19 = *(v0 + 88);
    v49 = *(v0 + 80);
    sub_22C370060();
    v57 = sub_22C37ACD0();
    *v6 = 136315650;
    sub_22C36EE00();
    *(v6 + 4) = sub_22C36F9F4(0xD000000000000032, v20, &v57);
    *(v6 + 12) = 2048;
    sub_22C90844C();
    v21 = sub_22C903E4C();
    (*(v19 + 8))(v18, v49);
    v22 = *(v21 + 16);

    v23 = *(v17 + 8);
    v23(v16, v50);
    *(v6 + 14) = v22;
    *(v6 + 22) = 2080;
    sub_22C903C7C();
    sub_22C36B838();
    sub_22C38694C(v24, v25);
    sub_22C381408();
    v26 = sub_22C90B47C();
    (*(v15 + 8))(v14, v52);
    v27 = sub_22C37170C();
    sub_22C36F9F4(v27, v28, v29);
    sub_22C37FF48();

    *(v6 + 24) = v26;
    sub_22C84BC84();
    _os_log_impl(v30, v31, v32, v33, v34, 0x20u);
    sub_22C383C94();
    sub_22C37E124();
    sub_22C370510();

    v53(v56, v55);
  }

  else
  {
    v36 = *(v0 + 224);
    v35 = *(v0 + 232);
    v37 = *(v0 + 216);
    v23 = *(*(v0 + 168) + 8);
    v23(*(v0 + 176), *(v0 + 160));

    v38 = sub_22C37170C();
    v13(v38);
  }

  *(v0 + 320) = v23;
  v39 = *(v0 + 184);
  v40 = *(v0 + 96);
  sub_22C90844C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 328) = v41;
  *v41 = v42;
  v41[1] = sub_22C8454A8;
  v43 = *(v0 + 96);
  v44 = *(v0 + 64);
  v45 = *(v0 + 72);
  v46 = *(v0 + 56);
  v47 = *(v0 + 344);

  return sub_22C845BF0();
}

uint64_t sub_22C8454A8()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = v4[41];
  v6 = v4[12];
  v7 = v4[11];
  v8 = v4[10];
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  *(v11 + 336) = v0;

  v12 = *(v7 + 8);
  v13 = sub_22C36BAFC();
  v14(v13);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C8455F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 240);
  v14 = *(v12 + 248);
  v15 = *(v12 + 232);
  v16 = *(v12 + 208);
  v17 = *(v12 + 176);
  v18 = *(v12 + 152);
  v19 = *(v12 + 128);
  v20 = *(v12 + 104);
  v31 = *(v12 + 96);
  v21 = (*(v12 + 168) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v12 + 320))(*(v12 + 184), *(v12 + 160));
  sub_22C36FF94((v12 + 16));

  sub_22C369C50();
  sub_22C372034();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, a10, a11, a12);
}

uint64_t sub_22C8456E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = *(v14 + 312);
  sub_22C37BC9C();

  sub_22C369A24();
  sub_22C36D5F8();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C845790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = *(v14 + 168) + 8;
  (*(v14 + 320))(*(v14 + 184), *(v14 + 160));
  v16 = *(v14 + 336);
  sub_22C37BC9C();

  sub_22C369A24();
  sub_22C36D5F8();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C845858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22C903E7C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C845928, 0, 0);
}

uint64_t sub_22C845928()
{
  sub_22C36FB38();
  v1 = v0[3];
  v2 = sub_22C374168((v0[4] + 56), *(v0[4] + 80));
  sub_22C90842C();
  v3 = *v2;
  swift_task_alloc();
  sub_22C36CC90();
  v0[9] = v4;
  *v4 = v5;
  v4[1] = sub_22C8459E4;
  v6 = v0[8];

  return sub_22C7B32A0();
}

uint64_t sub_22C8459E4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 80) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C845ADC()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  v5 = *(v3 + 16);
  v6 = sub_22C36BA00();
  v7(v6);
  sub_22C90845C();
  v8 = *(v3 + 8);
  v9 = sub_22C37170C();
  v10(v9);

  sub_22C369C50();
  sub_22C7E4ED0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_22C845B8C()
{
  sub_22C369980();
  v2 = v0[7];
  v1 = v0[8];

  sub_22C369A24();
  v4 = v0[10];

  return v3();
}

uint64_t sub_22C845BF0()
{
  sub_22C369980();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 104) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = sub_22C90399C();
  *(v1 + 48) = v6;
  sub_22C3699B8(v6);
  *(v1 + 56) = v7;
  v9 = *(v8 + 64);
  *(v1 + 64) = sub_22C3699D4();
  v10 = sub_22C90363C();
  *(v1 + 72) = v10;
  sub_22C3699B8(v10);
  *(v1 + 80) = v11;
  v13 = *(v12 + 64);
  *(v1 + 88) = sub_22C3699D4();
  v14 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C845CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 80);
  v14 = *(v12 + 72);
  v15 = *(v12 + 104);
  v16 = *MEMORY[0x277D1EC68];
  v17 = sub_22C37F610(v13);
  v18(v17);
  v19 = sub_22C90362C();
  v20 = *(v13 + 8);
  v21 = sub_22C36BBCC();
  v22(v21);
  if ((v19 & 1) != 0 || v15 != 1)
  {
LABEL_11:
    v41 = *(v12 + 32);
    v42 = *(v12 + 16);
    v43 = sub_22C903E7C();
    sub_22C369A9C(v43);
    v45 = *(v44 + 16);
    v46 = sub_22C36BA00();
    v47(v46);
    v48 = *(v12 + 88);
    v49 = *(v12 + 64);

    sub_22C369C50();
    sub_22C372034();

    return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12);
  }

  else
  {
    v23 = *(v12 + 56);
    v24 = *(v12 + 32);
    result = sub_22C903E4C();
    v26 = result;
    v27 = 0;
    v28 = *(result + 16);
    do
    {
      if (v28 == v27)
      {

        goto LABEL_11;
      }

      if (v27 >= *(v26 + 16))
      {
        __break(1u);
        return result;
      }

      v29 = *(v12 + 24);
      (*(v23 + 16))(*(v12 + 64), v26 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v27++, *(v12 + 48));
      sub_22C83C4EC();
      LOBYTE(v29) = v30;
      v31 = *(v23 + 8);
      v32 = sub_22C36BAFC();
      result = v33(v32);
    }

    while ((v29 & 1) == 0);

    swift_task_alloc();
    sub_22C36CC90();
    *(v12 + 96) = v34;
    *v34 = v35;
    v34[1] = sub_22C845F00;
    v36 = *(v12 + 32);
    v37 = *(v12 + 40);
    v38 = *(v12 + 16);
    v39 = *(v12 + 24);
    sub_22C372034();

    return sub_22C847FD8();
  }
}

uint64_t sub_22C845F00()
{
  sub_22C36FB38();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = *(v1 + 88);
  v6 = *(v1 + 64);

  sub_22C84BE44();

  return v7();
}

uint64_t sub_22C846020(uint64_t a1)
{
  v2 = sub_22C9063DC();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v47 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = v43 - v6;
  v7 = sub_22C90355C();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C90363C();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9C0238, &qword_22C9266F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v43 - v18;
  result = sub_22C83BD74();
  if (result)
  {
    sub_22C6AEA50(a1, v19, &qword_27D9C0238, &qword_22C9266F0);
    v21 = sub_22C903E7C();
    if (sub_22C370B74(v19, 1, v21) == 1)
    {
      return sub_22C376B84(v19, &qword_27D9C0238, &qword_22C9266F0);
    }

    v22 = sub_22C903E5C();
    result = (*(*(v21 - 8) + 8))(v19, v21);
    if (v22)
    {
      v46 = v22;
      v23 = *MEMORY[0x277D1EC58];
      v45 = v12[13];
      v45(v15, v23, v11);
      v24 = sub_22C90362C();
      v44 = v12[1];
      v44(v15, v11);
      if (v24)
      {
        v25 = (*(v51 + 104))(v10, *MEMORY[0x277D1EAB8], v7);
        v43[1] = v43;
        MEMORY[0x28223BE20](v25);
        v43[-2] = v10;
        v26 = sub_22C5EC71C(sub_22C84BBB8, &v43[-4], v46);
        (*(v51 + 8))(v10, v7);
        if (v26)
        {

          v27 = v48;
          sub_22C90400C();
          v28 = sub_22C9063CC();
          v29 = sub_22C90AABC();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v52 = v31;
            *v30 = 136315138;
            *(v30 + 4) = sub_22C36F9F4(0xD00000000000002DLL, 0x800000022C9376A0, &v52);
            _os_log_impl(&dword_22C366000, v28, v29, "QDInternal: %s has failed to fetch the foreground app. This radar should be routed to IntelligenceFlow | Context", v30, 0xCu);
            sub_22C36FF94(v31);
            MEMORY[0x2318B9880](v31, -1, -1);
            MEMORY[0x2318B9880](v30, -1, -1);
          }

          (*(v49 + 8))(v27, v50);
          v32 = 0;
LABEL_15:
          sub_22C84B654();
          swift_allocError();
          *v42 = v32;
          return swift_willThrow();
        }
      }

      v45(v15, *MEMORY[0x277D1EC18], v11);
      v33 = sub_22C90362C();
      v44(v15, v11);
      if (v33)
      {
        v34 = v51;
        v35 = (*(v51 + 104))(v10, *MEMORY[0x277D1EB18], v7);
        MEMORY[0x28223BE20](v35);
        v43[-2] = v10;
        v36 = sub_22C5EC71C(sub_22C84B634, &v43[-4], v46);

        result = (*(v34 + 8))(v10, v7);
        if (!v36)
        {
          return result;
        }

        v37 = v47;
        sub_22C90400C();
        v38 = sub_22C9063CC();
        v39 = sub_22C90AABC();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v52 = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_22C36F9F4(0xD00000000000002DLL, 0x800000022C9376A0, &v52);
          _os_log_impl(&dword_22C366000, v38, v39, "QDInternal: %s has failed to fetch an AppEntity. This radar should be routed to IntelligenceFlow | Context", v40, 0xCu);
          sub_22C36FF94(v41);
          MEMORY[0x2318B9880](v41, -1, -1);
          MEMORY[0x2318B9880](v40, -1, -1);
        }

        (*(v49 + 8))(v37, v50);
        v32 = 1;
        goto LABEL_15;
      }
    }
  }

  return result;
}

uint64_t sub_22C84670C()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22C9063DC();
  v1[5] = v4;
  sub_22C3699B8(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_22C3699D4();
  v8 = sub_22C903E7C();
  v1[8] = v8;
  sub_22C3699B8(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = sub_22C3699D4();
  v12 = sub_22C3A5908(&qword_27D9C09F8, &unk_22C9298B8);
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  v1[11] = sub_22C3699D4();
  v15 = sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
  v1[12] = v15;
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  v18 = sub_22C36D0D4();
  v1[14] = sub_22C84BFB8(v18);
  v19 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  sub_22C369914(v19);
  v21 = *(v20 + 64);
  v1[15] = sub_22C3699D4();
  v22 = sub_22C3A5908(&qword_27D9C09D0, &qword_22C929848);
  sub_22C369914(v22);
  v24 = *(v23 + 64);
  v1[16] = sub_22C3699D4();
  v25 = sub_22C3A5908(&qword_27D9C09D8, &qword_22C929850);
  v1[17] = v25;
  sub_22C369914(v25);
  v27 = *(v26 + 64);
  v1[18] = sub_22C3699D4();
  v28 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_22C8468E8()
{
  sub_22C3749D8();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[3];
  sub_22C908D2C();
  v5 = sub_22C3788F8();
  sub_22C36C640(v5, v6, v7, v8);

  sub_22C38B544();
  sub_22C83CD34(v9, v10, v11, v3, v1);
  sub_22C36D3E0(v1);
  if (v12)
  {
    sub_22C376B84(v0[16], &qword_27D9C09D0, &qword_22C929848);
    sub_22C38A138();
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[2];
    sub_22C36A748();
    sub_22C36C640(v16, v17, v18, v19);

    sub_22C369C50();

    return v20();
  }

  else
  {
    v22 = v0[4];
    sub_22C6AE8BC(v0[16], v0[18], &qword_27D9C09D8, &qword_22C929850);
    v23 = *(sub_22C380640() + 8);
    sub_22C37A468();
    v32 = (v24 + *v24);
    v26 = *(v25 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    v0[19] = v27;
    *v27 = v28;
    v27[1] = sub_22C846B14;
    v29 = v0[18];
    v30 = v0[11];
    v31 = v0[12];

    return v32(v30, v29, v31, v1, v3);
  }
}

uint64_t sub_22C846B14()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 160) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_22C846C0C()
{
  sub_22C3743E4();
  v1 = v0[11];
  sub_22C36D0A8(v1, 1, v0[12]);
  if (v12)
  {
    v2 = &unk_27D9C09F8;
    v3 = &unk_22C9298B8;
    v4 = v1;
  }

  else
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = sub_22C36BBCC();
    sub_22C6AE8BC(v7, v8, &qword_27D9C09E0, &qword_22C929868);
    v9 = sub_22C36BAFC();
    sub_22C6AE8BC(v9, v10, &qword_27D9C09E0, &qword_22C929868);
    type metadata accessor for RetrievedToolContext();
    v11 = sub_22C37FF48();
    sub_22C36D3E0(v11);
    if (!v12)
    {
      v25 = v0[13];
      v27 = v0[9];
      v26 = v0[10];
      v28 = v0[8];
      v29 = v0[2];
      sub_22C376B84(v0[18], &qword_27D9C09D8, &qword_22C929850);
      (*(v27 + 16))(v26, v25 + *(v1 + 24), v28);
      sub_22C84B5D8(v25);
      (*(v27 + 32))(v29, v26, v28);
      goto LABEL_10;
    }

    v4 = v0[13];
    v2 = &qword_27D9C09E0;
    v3 = &qword_22C929868;
  }

  sub_22C376B84(v4, v2, v3);
  v13 = v0[7];
  sub_22C90400C();
  v14 = sub_22C9063CC();
  v15 = sub_22C90AABC();
  if (sub_22C370048(v15))
  {
    *sub_22C36D240() = 0;
    sub_22C36BB14(&dword_22C366000, v16, v17, "No existing tool context not found in cache. Will not merge");
    sub_22C3699EC();
  }

  v18 = v0[18];
  v20 = v0[6];
  v19 = v0[7];
  v21 = v0[5];

  v22 = *(v20 + 8);
  v23 = sub_22C36D264();
  v24(v23);
  sub_22C376B84(v18, &qword_27D9C09D8, &qword_22C929850);
LABEL_10:
  sub_22C38A138();
  v30 = v0[7];
  sub_22C36C640(v0[2], v31, 1, v0[8]);

  sub_22C369C50();
  sub_22C372E90();

  __asm { BRAA            X1, X16 }
}

void sub_22C846E50()
{
  sub_22C3743E4();
  sub_22C38A138();
  v2 = *(v1 + 56);
  sub_22C376B84(v0, &qword_27D9C09D8, &qword_22C929850);

  sub_22C369A24();
  v3 = *(v1 + 160);
  sub_22C372E90();

  __asm { BRAA            X1, X16 }
}

void sub_22C846F14()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C90399C();
  v13 = sub_22C369824(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C3698E4();
  v51 = v16;
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  if (v1)
  {
    v45 = v11;
    v46 = v7;
    v47 = v4;
    v50 = *(v1 + 16);
    if (v50)
    {
      v22 = *(v18 + 16);
      v21 = v18 + 16;
      v52 = (*(v21 + 64) + 32) & ~*(v21 + 64);
      v53 = v22;
      v49 = v1 + v52;
      v23 = *(v21 + 56);
      v24 = (v21 - 8);
      v54 = v21;
      v48 = (v21 + 16);

      v25 = 0;
      do
      {
        v26 = v49 + v23 * v25++;
        v53(v20, v26, v12);
        v27 = *(v3 + 16);
        v28 = v3 + v52;

        v29 = v27 + 1;
        while (--v29)
        {
          sub_22C38694C(&qword_27D9C09F0, MEMORY[0x277D1EE00]);
          v28 += v23;
          if (sub_22C90A0BC())
          {

            goto LABEL_13;
          }
        }

        v53(v51, v20, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = *(v3 + 16);
          sub_22C595C60();
          v3 = v32;
        }

        v30 = *(v3 + 16);
        if (v30 >= *(v3 + 24) >> 1)
        {
          sub_22C595C60();
          v3 = v33;
        }

        *(v3 + 16) = v30 + 1;
        (*v48)(v3 + v52 + v30 * v23, v51, v12);
LABEL_13:
        (*v24)(v20, v12);
      }

      while (v25 != v50);
    }

    else
    {
    }

    v34 = v45;
    sub_22C90400C();
    v35 = sub_22C9063CC();
    v36 = sub_22C90AACC();
    if (sub_22C370048(v36))
    {
      v37 = sub_22C36FB44();
      v38 = sub_22C370060();
      v55 = v38;
      *v37 = 136315138;

      v40 = MEMORY[0x2318B7AD0](v39, v12);
      v42 = v41;

      v43 = sub_22C36F9F4(v40, v42, &v55);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_22C366000, v35, v36, "Context after merge: %s", v37, 0xCu);
      sub_22C36FF94(v38);
      sub_22C36C30C();
      sub_22C3699EC();
    }

    (*(v46 + 8))(v34, v47);
  }

  else
  {
  }

  sub_22C36CC48();
}

uint64_t sub_22C847304(uint64_t a1, uint64_t a2)
{
  v114 = a1;
  v3 = sub_22C9063DC();
  v97 = *(v3 - 8);
  v98 = v3;
  v4 = *(v97 + 64);
  MEMORY[0x28223BE20](v3);
  v99 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22C90931C();
  v93 = *(v94 - 8);
  v6 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_22C90926C();
  v90 = *(v91 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v95 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v101 = &v89 - v14;
  v15 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = &v89 - v17;
  v108 = sub_22C90355C();
  v106 = *(v108 - 8);
  v18 = *(v106 + 64);
  v19 = MEMORY[0x28223BE20](v108);
  v110 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v109 = &v89 - v21;
  v22 = sub_22C90399C();
  v112 = *(v22 - 8);
  v113 = v22;
  v23 = *(v112 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v96 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v111 = &v89 - v26;
  v27 = sub_22C90363C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22C903D4C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v89 - v38;
  v40 = *(a2 + 96);
  sub_22C903C7C();
  sub_22C9034CC();
  sub_22C38694C(&qword_281435730, MEMORY[0x277D1F0F8]);
  LOBYTE(v40) = sub_22C90A0BC();
  v41 = *(v33 + 8);
  v41(v37, v32);
  result = (v41)(v39, v32);
  if ((v40 & 1) == 0)
  {
    return result;
  }

  (*(v28 + 104))(v31, *MEMORY[0x277D1ECB0], v27);
  v43 = sub_22C90362C();
  result = (*(v28 + 8))(v31, v27);
  if ((v43 & 1) == 0)
  {
    return result;
  }

  v44 = *(v114 + 16);
  if (!v44)
  {
    return result;
  }

  v107 = *(v112 + 16);
  v45 = v114 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
  v105 = *MEMORY[0x277D1EB18];
  v103 = (v106 + 8);
  v104 = (v106 + 104);
  v106 = v112 + 8;
  v112 += 16;
  v102 = *(v112 + 56);
  v46 = v109;
  while (1)
  {
    v114 = v44;
    v47 = v111;
    v48 = v113;
    v107(v111, v45, v113);
    sub_22C90394C();
    v49 = v110;
    v50 = v108;
    (*v104)(v110, v105, v108);
    sub_22C38694C(&qword_281435780, MEMORY[0x277D1EB58]);
    v51 = sub_22C90A0BC();
    v52 = *v103;
    (*v103)(v49, v50);
    v52(v46, v50);
    if ((v51 & 1) == 0)
    {
      result = (*v106)(v47, v48);
      goto LABEL_10;
    }

    v53 = v101;
    sub_22C90391C();
    v54 = sub_22C9093BC();
    if (sub_22C370B74(v53, 1, v54) == 1)
    {
      break;
    }

    v55 = v53;
    v56 = v100;
    sub_22C90939C();
    (*(*(v54 - 8) + 8))(v55, v54);
    v57 = sub_22C90993C();
    if (sub_22C370B74(v56, 1, v57) == 1)
    {
      goto LABEL_13;
    }

    (*v106)(v47, v113);
    result = sub_22C376B84(v56, &qword_27D9BC390, &qword_22C912AC0);
LABEL_10:
    v45 += v102;
    v44 = v114 - 1;
    if (v114 == 1)
    {
      return result;
    }
  }

  sub_22C376B84(v53, &qword_27D9BB908, &qword_22C910960);
  v58 = sub_22C90993C();
  v56 = v100;
  sub_22C36C640(v100, 1, 1, v58);
LABEL_13:
  sub_22C376B84(v56, &qword_27D9BC390, &qword_22C912AC0);
  v59 = v95;
  sub_22C90391C();
  if (sub_22C370B74(v59, 1, v54) == 1)
  {
    v60 = 0x6E776F6E6B6E55;
    sub_22C376B84(v59, &qword_27D9BB908, &qword_22C910960);
    v61 = 0xE700000000000000;
    v62 = v99;
    v63 = v113;
    v64 = v96;
    goto LABEL_22;
  }

  v65 = *(v54 - 8);
  v66 = (*(v65 + 88))(v59, v54);
  v62 = v99;
  v64 = v96;
  if (v66 != *MEMORY[0x277D72A58])
  {
    v60 = 0x6E776F6E6B6E55;
    (*(v65 + 8))(v59, v54);
LABEL_20:
    v61 = 0xE700000000000000;
    goto LABEL_21;
  }

  (*(v65 + 96))(v59, v54);
  v67 = *v59;
  v68 = swift_projectBox();
  v69 = v93;
  v70 = v92;
  v71 = v94;
  (*(v93 + 16))(v92, v68, v94);
  if ((*(v69 + 88))(v70, v71) != *MEMORY[0x277D72970])
  {
    v60 = 0x6E776F6E6B6E55;
    (*(v69 + 8))(v70, v71);

    goto LABEL_20;
  }

  (*(v69 + 96))(v70, v71);
  v72 = v90;
  v73 = v89;
  v74 = v91;
  (*(v90 + 32))(v89, v70, v91);

  v60 = sub_22C90924C();
  v61 = v75;
  (*(v72 + 8))(v73, v74);
LABEL_21:
  v63 = v113;
LABEL_22:
  sub_22C90400C();
  v107(v64, v111, v63);

  v76 = sub_22C9063CC();
  v77 = sub_22C90AADC();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v115 = v114;
    *v78 = 136315394;
    v112 = v60;
    v79 = sub_22C90390C();
    v80 = v64;
    v82 = v81;
    v83 = *v106;
    (*v106)(v80, v63);
    v84 = sub_22C36F9F4(v79, v82, &v115);

    *(v78 + 4) = v84;
    *(v78 + 12) = 2080;
    v85 = sub_22C36F9F4(v112, v61, &v115);

    *(v78 + 14) = v85;
    _os_log_impl(&dword_22C366000, v76, v77, "QDInternal: This request failed because one or more context AppEntity items had a missing display representation and the missingContextDisplayRepresentationFailRequest feature flag is enabled. \nPlease route to IntelligenceFlow | QueryDecoration and quote this error in the radar.\nFailed Context Entity ID: %s\nBundleId: %s", v78, 0x16u);
    v86 = v114;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v86, -1, -1);
    MEMORY[0x2318B9880](v78, -1, -1);

    (*(v97 + 8))(v99, v98);
    v87 = v113;
  }

  else
  {

    v83 = *v106;
    (*v106)(v64, v63);
    (*(v97 + 8))(v62, v98);
    v87 = v63;
  }

  sub_22C839C24();
  swift_allocError();
  *v88 = 6;
  swift_willThrow();
  return v83(v111, v87);
}

uint64_t sub_22C847FD8()
{
  sub_22C369980();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 184) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  v6 = sub_22C9063DC();
  *(v1 + 88) = v6;
  sub_22C3699B8(v6);
  *(v1 + 96) = v7;
  v9 = *(v8 + 64);
  v10 = sub_22C36D0D4();
  *(v1 + 112) = sub_22C84BFB8(v10);
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  v11 = sub_22C90363C();
  *(v1 + 144) = v11;
  sub_22C3699B8(v11);
  *(v1 + 152) = v12;
  v14 = *(v13 + 64);
  *(v1 + 160) = sub_22C3699D4();
  v15 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C8480F8()
{
  sub_22C84BFD0();
  sub_22C36D5EC();
  v2 = *(v1 + 160);
  v3 = *(v1 + 144);
  v4 = *MEMORY[0x277D1EC68];
  v5 = sub_22C37F610(*(v1 + 152));
  v6(v5);
  sub_22C90362C();
  v7 = sub_22C84BC00();
  v8(v7);
  if (v0)
  {
    v10 = (v1 + 136);
    v9 = *(v1 + 136);
    sub_22C90400C();
    v11 = sub_22C9063CC();
    v12 = sub_22C90AACC();
    if (!sub_22C37026C(v12))
    {
LABEL_5:
      v15 = *v10;
      v16 = *(v1 + 88);
      v17 = *(v1 + 96);
      v18 = *(v1 + 72);
      v19 = *(v1 + 56);

      v20 = *(v17 + 8);
      v21 = sub_22C36BAFC();
      v22(v21);
      v23 = sub_22C903E7C();
      sub_22C369A9C(v23);
      v25 = *(v24 + 16);
      v26 = sub_22C3806B8();
      v27(v26);
      sub_22C84BF98();

      sub_22C369C50();
      sub_22C7E4EBC();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35);
    }

    v13 = sub_22C36D240();
    *v13 = 0;
    v14 = "runHydrationStrategy: entity hydration is disabled";
LABEL_4:
    _os_log_impl(&dword_22C366000, v11, v0, v14, v13, 2u);
    sub_22C3699EC();
    goto LABEL_5;
  }

  v37 = *(v1 + 184);
  if (v37 == 2)
  {
    v57 = *(v1 + 112);
    sub_22C90400C();
    v58 = sub_22C9063CC();
    v59 = sub_22C90AACC();
    if (sub_22C370048(v59))
    {
      *sub_22C36D240() = 0;
      sub_22C36BB14(&dword_22C366000, v60, v61, "Entity Hydration: Background. Running after returning context.");
      sub_22C3699EC();
    }

    v62 = *(v1 + 112);
    v63 = *(v1 + 88);
    v64 = *(v1 + 96);
    v65 = *(v1 + 80);

    v66 = *(v64 + 8);
    v67 = sub_22C36BAFC();
    v68(v67);
    sub_22C378AB0(v65 + 208, v1 + 16);
    v69 = swift_task_alloc();
    *(v1 + 176) = v69;
    *v69 = v1;
    v69[1] = sub_22C848664;
    v70 = *(v1 + 64);
    sub_22C386674(*(v1 + 72));
    sub_22C7E4EBC();

    return sub_22C826BC0();
  }

  else
  {
    if (v37 != 1)
    {
      if (*(v1 + 184))
      {
        v10 = (v1 + 104);
        v72 = *(v1 + 104);
        sub_22C90400C();
        v11 = sub_22C9063CC();
        v73 = sub_22C90AACC();
        if (!sub_22C37026C(v73))
        {
          goto LABEL_5;
        }

        v13 = sub_22C36D240();
        *v13 = 0;
        v14 = "Entity Hydration: no behavior specified, no hydration performed";
      }

      else
      {
        v10 = (v1 + 128);
        v38 = *(v1 + 128);
        sub_22C90400C();
        v11 = sub_22C9063CC();
        v39 = sub_22C90AACC();
        if (!sub_22C37026C(v39))
        {
          goto LABEL_5;
        }

        v13 = sub_22C36D240();
        *v13 = 0;
        v14 = "Entity Hydration: Skipped";
      }

      goto LABEL_4;
    }

    v40 = *(v1 + 120);
    sub_22C90400C();
    v41 = sub_22C9063CC();
    v42 = sub_22C90AACC();
    if (sub_22C370048(v42))
    {
      *sub_22C36D240() = 0;
      sub_22C36BB14(&dword_22C366000, v43, v44, "Entity Hydration: Foreground. Running before returning context.");
      sub_22C3699EC();
    }

    v45 = *(v1 + 120);
    v46 = *(v1 + 88);
    v47 = *(v1 + 96);

    v48 = *(v47 + 8);
    v49 = sub_22C36BAFC();
    v50(v49);
    swift_task_alloc();
    sub_22C36CC90();
    *(v1 + 168) = v51;
    *v51 = v52;
    v51[1] = sub_22C8484D0;
    v54 = *(v1 + 64);
    v53 = *(v1 + 72);
    v55 = *(v1 + 56);
    sub_22C7E4EBC();

    return sub_22C825CFC();
  }
}

uint64_t sub_22C8484D0()
{
  sub_22C84BFD0();
  sub_22C36D5EC();
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = v1[20];
  v6 = v1[17];
  v7 = v1[16];
  v8 = v1[15];
  v9 = v1[14];
  v10 = v1[13];

  sub_22C84BE44();
  sub_22C7E4EBC();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_22C848664()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = v1;
  sub_22C36D994();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v0;
  sub_22C369970();
  *v7 = v6;

  sub_22C376B84(v2 + 16, &qword_27D9C01C8, &qword_22C9298B0);
  v8 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C848764()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = sub_22C903E7C();
  sub_22C369A9C(v3);
  v5 = *(v4 + 16);
  v6 = sub_22C36BA00();
  v7(v6);
  sub_22C84BF98();

  sub_22C369C50();
  sub_22C7E4ED0();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_22C84881C()
{
  sub_22C369980();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22C903D4C();
  v1[4] = v3;
  sub_22C3699B8(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_22C3699D4();
  v7 = sub_22C9063DC();
  v1[7] = v7;
  sub_22C3699B8(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = sub_22C36D0D4();
  v1[10] = swift_task_alloc();
  v11 = sub_22C90363C();
  v1[11] = v11;
  sub_22C3699B8(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = sub_22C3699D4();
  v15 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C848964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v21 = v17[13];
  v22 = v17[11];
  v23 = *MEMORY[0x277D1EC98];
  v24 = sub_22C37F610(v17[12]);
  v25(v24);
  sub_22C90362C();
  v26 = sub_22C84BC00();
  v27(v26);
  if (v16)
  {
    v28 = *(v17[3] + 152);
    v17[14] = v28;
    if (v28)
    {
      v29 = v17[2];
      swift_retain_n();

      v30 = swift_task_alloc();
      v17[15] = v30;
      *v30 = v17;
      v30[1] = sub_22C848CC0;
      v32 = v17[2];
      v31 = v17[3];
      sub_22C36EC40();

      return sub_22C83EC60(v33, v34, v35, v36, v37, v38);
    }

    v48 = v17[10];
    v49 = v17[2];
    sub_22C90400C();

    v43 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C84BE54();
    v50 = sub_22C84BE2C();
    v51 = v17[10];
    v47 = v17[7];
    v46 = v17[8];
    if (v50)
    {
      goto LABEL_9;
    }

LABEL_10:

    v65 = sub_22C84BBF0();
    v67(v65, v66);
    goto LABEL_11;
  }

  v41 = v17[9];
  v42 = v17[2];
  sub_22C90400C();

  v43 = sub_22C9063CC();
  sub_22C90AABC();
  sub_22C84BE54();
  v44 = sub_22C84BE2C();
  v46 = v17[8];
  v45 = v17[9];
  v47 = v17[7];
  if (!v44)
  {
    goto LABEL_10;
  }

LABEL_9:
  sub_22C84BDD8();
  sub_22C388D58();
  sub_22C37E8D4();
  sub_22C84BED4(4.8149e-34);
  sub_22C36B838();
  sub_22C38694C(v52, v53);
  sub_22C381408();
  v54 = sub_22C90B47C();
  a11 = v47;
  v55 = sub_22C375184();
  v56(v55, v18);
  v57 = sub_22C37170C();
  sub_22C36F9F4(v57, v58, v59);
  sub_22C37FF48();

  *(v19 + 4) = v54;
  sub_22C84BC84();
  _os_log_impl(v60, v61, v62, v63, v64, 0xCu);
  sub_22C36FF94(v20);
  sub_22C36C30C();
  sub_22C370510();

  (*(v46 + 8))(a12, v47);
LABEL_11:
  v68 = v17[13];
  v69 = v17[9];
  v70 = v17[10];
  v71 = v17[6];

  sub_22C36D5E0();
  sub_22C36EC40();

  return v74(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22C848CC0()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 120);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  *(v5 + 128) = v0;

  if (!v0)
  {
    *(v5 + 136) = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C848DCC()
{
  sub_22C36FB38();
  v1 = v0[14];

  v2 = v0[17];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[6];

  v7 = sub_22C371EA8();

  return v8(v7);
}

uint64_t sub_22C848E58()
{
  sub_22C36FB38();
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];

  sub_22C369A24();
  v7 = v0[16];

  return v6();
}

uint64_t sub_22C848EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = sub_22C903D4C();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v3[7] = v7;
  v8 = *(v7 - 8);
  v3[8] = v8;
  v9 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[10] = v10;
  *v10 = v3;
  v10[1] = sub_22C849030;

  return sub_22C7B43D4();
}

uint64_t sub_22C849030()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 80);
  *v4 = *v1;
  v3[11] = v7;

  if (v0)
  {
    v8 = v3[9];
    v9 = v3[6];

    sub_22C84BE44();

    return v10();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_22C849380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22C8493A4, 0, 0);
}

uint64_t sub_22C8493A4()
{
  sub_22C369980();
  if (*(v0[3] + 160))
  {
    swift_task_alloc();
    sub_22C36CC90();
    v0[6] = v1;
    *v1 = v2;
    v1[1] = sub_22C849488;
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[2];

    return sub_22C7B5724();
  }

  else
  {
    v7 = v0[2];
    type metadata accessor for RetrievedToolContext();
    sub_22C36A748();
    sub_22C36C640(v8, v9, v10, v11);
    sub_22C369C50();

    return v12();
  }
}

uint64_t sub_22C849488()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = *(v2 + 48);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;

  if (v0)
  {
    sub_22C369A24();

    return v6();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_22C8495A0()
{
  sub_22C369980();
  v1 = *(v0 + 16);
  type metadata accessor for RetrievedToolContext();
  sub_22C36BECC();
  sub_22C36C640(v2, v3, v4, v5);
  sub_22C369C50();

  return v6();
}

uint64_t sub_22C84960C()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_22C903D4C();
  v1[7] = v6;
  sub_22C3699B8(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = sub_22C3699D4();
  v10 = sub_22C9063DC();
  v1[10] = v10;
  sub_22C3699B8(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = sub_22C36D0D4();
  v14 = swift_task_alloc();
  v1[14] = sub_22C84BFB8(v14);
  v15 = sub_22C903F4C();
  v1[15] = v15;
  sub_22C3699B8(v15);
  v1[16] = v16;
  v1[17] = *(v17 + 64);
  v1[18] = sub_22C36D0D4();
  v1[19] = swift_task_alloc();
  v18 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v18);
  v20 = *(v19 + 64);
  v1[20] = sub_22C36D0D4();
  v1[21] = swift_task_alloc();
  v21 = sub_22C90363C();
  v1[22] = v21;
  sub_22C3699B8(v21);
  v1[23] = v22;
  v24 = *(v23 + 64);
  v1[24] = sub_22C3699D4();
  v25 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_22C849E78()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 224);
  v9 = *(v7 + 216);
  v10 = *v1;
  sub_22C369970();
  *v11 = v10;
  *(v5 + 232) = v0;

  if (!v0)
  {
    *(v5 + 240) = v3;
  }

  sub_22C36BB08();
  sub_22C7E4ED0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C849FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v14 = v12[25];
  v13 = v12[26];
  v15 = v12[19];
  v16 = v12[15];
  v17 = v12[16];

  v18 = *(v17 + 8);
  v19 = sub_22C36BAFC();
  v20(v19);
  sub_22C903D7C();

  v21 = v12[30];
  v22 = v12[24];
  v24 = v12[20];
  v23 = v12[21];
  sub_22C84BF78();

  sub_22C371EA8();
  sub_22C372034();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_22C84A074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v16 = v14[25];
  v15 = v14[26];
  v17 = v14[24];
  v19 = v14[20];
  v18 = v14[21];
  v21 = v14[18];
  v20 = v14[19];
  v22 = v14[15];
  v23 = v14[16];
  v24 = v14[14];
  v35 = v14[13];
  v36 = v14[12];
  v37 = v14[9];

  (*(v23 + 8))(v20, v22);
  sub_22C903D7C();

  sub_22C369A24();
  v25 = v14[29];
  sub_22C36D5F8();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, a12, a13, a14);
}

uint64_t sub_22C84A164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return MEMORY[0x2822009F8](sub_22C84A18C, 0, 0);
}

uint64_t sub_22C84A18C()
{
  sub_22C36FB38();
  v1 = v0[8];
  v2 = v1[10];
  v3 = v1[11];
  sub_22C375EAC(v1 + 7);
  if (qword_27D9BA738 != -1)
  {
    swift_once();
  }

  sub_22C84BC5C();
  v4();
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_22C84A280;
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[8];
  sub_22C386674(v0[10]);

  return sub_22C7C7C0C();
}

uint64_t sub_22C84A280()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 104);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  *(v5 + 112) = v0;

  if (!v0)
  {
    *(v5 + 120) = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C84A38C()
{
  sub_22C36FB38();
  **(v0 + 56) = *(v0 + 120);
  v1 = *(v0 + 48);
  sub_22C374168((v0 + 16), *(v0 + 40));
  v2 = sub_22C84BC44();
  v3(v2);
  sub_22C36FF94((v0 + 16));
  sub_22C369C50();

  return v4();
}

uint64_t sub_22C84A418()
{
  sub_22C36FB38();
  v1 = v0[6];
  sub_22C374168(v0 + 2, v0[5]);
  v2 = sub_22C84BC44();
  v3(v2);
  sub_22C36FF94(v0 + 2);
  sub_22C369A24();
  v5 = v0[14];

  return v4();
}

uint64_t sub_22C84A49C()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  v1[7] = sub_22C3699D4();
  v7 = sub_22C3A5908(&qword_27D9C0998, &qword_22C929798);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  v1[8] = sub_22C3699D4();
  v10 = sub_22C3A5908(&qword_27D9C0208, &qword_22C9297A0);
  v1[9] = v10;
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  v1[10] = sub_22C3699D4();
  v13 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22C84A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v16 = v14[8];
  v15 = v14[9];
  v18 = v14[6];
  v17 = v14[7];
  v19 = v14[4];
  v20 = v14[5];
  sub_22C36D2A8();
  v21 = swift_allocObject();
  v14[11] = v21;
  v21[2] = v19;
  v21[3] = v18;
  v21[4] = v20;
  v22 = sub_22C908D2C();
  swift_retain_n();
  swift_retain_n();
  v23 = v20;
  sub_22C36A748();
  sub_22C36C640(v24, v25, v26, v22);

  sub_22C83D304(v27, 0xD000000000000015, 0x800000022C92EF70, v17, v16);
  sub_22C36D0A8(v16, 1, v15);
  if (v28)
  {
    sub_22C376B84(v14[8], &qword_27D9C0998, &qword_22C929798);
    swift_task_alloc();
    sub_22C36CC90();
    v14[14] = v29;
    *v29 = v30;
    v29[1] = sub_22C84A904;
    v32 = v14[5];
    v31 = v14[6];
    v33 = v14[4];
    sub_22C84BF4C();
    sub_22C36D5F8();

    return sub_22C84AC94(v34, v35, v36, v37);
  }

  else
  {
    v40 = v14[6];
    sub_22C6AE8BC(v14[8], v14[10], &qword_27D9C0208, &qword_22C9297A0);
    v41 = sub_22C84BD90();
    v42 = *(v41 + 56);
    v57 = v41 + 56;
    sub_22C369B5C();
    v58 = v43 + *v43;
    v45 = *(v44 + 4);
    v46 = swift_task_alloc();
    v14[12] = v46;
    sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
    *v46 = v14;
    v46[1] = sub_22C84A80C;
    v47 = v14[10];
    sub_22C84BD18();
    sub_22C36D5F8();

    return v55(v48, v49, v50, v51, v52, v53, v54, v55, a9, v57, v58, a12, a13, a14);
  }
}

uint64_t sub_22C84A80C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C84A904()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C84A9FC()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = v0[5];
  v2 = v0[6];
  sub_22C376B84(v0[10], &qword_27D9C0208, &qword_22C9297A0);

  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];

  v8 = v0[2];
  v9 = v0[3];

  sub_22C84BE7C();
  sub_22C7E4ED0();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_22C84AAB0()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = v0[5];
  v2 = v0[6];
  sub_22C376B84(v0[10], &qword_27D9C0208, &qword_22C9297A0);

  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[4];

  sub_22C369A24();
  sub_22C7E4ED0();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_22C84AB64()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v2 = v0[5];
  v1 = v0[6];

  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];

  v8 = v0[2];
  v9 = v0[3];

  sub_22C84BE7C();
  sub_22C7E4ED0();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_22C84ABFC()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[4];

  sub_22C369A24();
  sub_22C7E4ED0();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_22C84AC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  return MEMORY[0x2822009F8](sub_22C84ACB8, 0, 0);
}

uint64_t sub_22C84ACB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = v14[25];
  v16 = v15[10];
  v17 = v15[11];
  sub_22C374168(v15 + 7, v16);
  if (qword_27D9BA798 != -1)
  {
    swift_once();
  }

  v18 = v14[26];
  v47 = v14[27];
  v48 = v14[24];
  (*(v17 + 8))(qword_27D9C0610, v16, v17);
  sub_22C378AB0(v18 + 168, (v14 + 14));
  v19 = v14[17];
  v20 = sub_22C36D1E4((v14 + 14), v19);
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  v23 = sub_22C3699D4();
  (*(v21 + 16))(v23, v20, v19);
  v24 = *v23;
  v14[22] = &type metadata for QueryDecorationFeatureControl;
  v14[23] = &off_283FC14D0;
  v14[19] = v24;
  type metadata accessor for AppPreLaunchSelectionService();
  inited = swift_initStackObject();
  v26 = v14[22];
  v27 = sub_22C36D1E4((v14 + 19), v26);
  v28 = *(v26 - 8);
  v29 = *(v28 + 64);
  v30 = sub_22C3699D4();
  (*(v28 + 16))(v30, v27, v26);
  v31 = *v30;
  inited[5] = &type metadata for QueryDecorationFeatureControl;
  inited[6] = &off_283FC14D0;
  inited[2] = v31;
  sub_22C36FF94(v14 + 19);

  sub_22C36FF94(v14 + 14);
  v32 = sub_22C7ADD94();
  v34 = v33;
  swift_setDeallocating();
  sub_22C36FF94(inited + 2);

  *v48 = v32;
  v48[1] = v34;
  v35 = v14[13];
  sub_22C374168(v14 + 9, v14[12]);
  v36 = sub_22C84BC44();
  v37(v36);
  sub_22C36FF94(v14 + 9);
  sub_22C369C50();
  sub_22C36D5F8();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47, v48, a12, a13, a14);
}

uint64_t sub_22C84AF48()
{
  result = sub_22C90B10C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C84B00C()
{
  sub_22C36FB38();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_22C36D860(v4);
  *v5 = v6;
  v7 = sub_22C36DBE8(v5);

  return sub_22C84AC94(v7, v8, v2, v3);
}

uint64_t sub_22C84B0CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22C83E000();
}

uint64_t sub_22C84B108()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22C83E49C();
}

uint64_t sub_22C84B144()
{
  sub_22C36FB38();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22C36D860(v3);
  *v4 = v5;
  v6 = sub_22C36DBE8(v4);

  return sub_22C848EE4(v6, v7, v1);
}

uint64_t sub_22C84B1FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22C83E000();
}

uint64_t sub_22C84B238()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22C83E49C();
}

uint64_t sub_22C84B274()
{
  sub_22C3743E4();
  v2 = v1;
  v3 = sub_22C903F4C();
  sub_22C369914(v3);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = swift_task_alloc();
  v11 = sub_22C36D860(v10);
  *v11 = v12;
  v11[1] = sub_22C382AF4;

  return sub_22C84A164(v2, v6, v7, v8, v9, v0 + v5);
}

uint64_t sub_22C84B38C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22C83E000();
}

uint64_t sub_22C84B3C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22C83E49C();
}

uint64_t sub_22C84B404()
{
  sub_22C36FB38();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_22C36D860(v4);
  *v5 = v6;
  v7 = sub_22C36DBE8(v5);

  return sub_22C849380(v7, v8, v2, v3);
}

uint64_t sub_22C84B4C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22C83E000();
}

uint64_t sub_22C84B500()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22C83E49C();
}

uint64_t sub_22C84B53C()
{
  sub_22C36FB38();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = sub_22C36D860(v4);
  *v5 = v6;
  v7 = sub_22C36DBE8(v5);

  return sub_22C8446D8(v7, v8, v2, v3);
}

uint64_t sub_22C84B5D8(uint64_t a1)
{
  v2 = type metadata accessor for RetrievedToolContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C84B654()
{
  result = qword_27D9C0A00;
  if (!qword_27D9C0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0A00);
  }

  return result;
}

uint64_t sub_22C84B6CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22C83E000();
}

uint64_t sub_22C84B708()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22C83E49C();
}

uint64_t sub_22C84B744()
{
  sub_22C36FB38();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C372190(v1);

  return sub_22C845858(v3, v4, v5);
}

uint64_t sub_22C84B7D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = sub_22C36BBCC();

  return MEMORY[0x2821FE8E8](v3, v4, 7);
}

uint64_t sub_22C84B81C()
{
  sub_22C36FB38();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22C36D860(v3);
  *v4 = v5;
  v6 = sub_22C36DBE8(v4);

  return sub_22C841508(v6, v7, v1);
}

uint64_t sub_22C84B8B0()
{
  v1 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  sub_22C3699B8(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_22C908D2C();
  if (!sub_22C370B74(v0 + v4, 1, v7))
  {
    sub_22C36BBA8(v7);
    (*(v8 + 8))(v0 + v4, v7);
  }

  v9 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9 + 8);

  return MEMORY[0x2821FE8E8](v0, v9 + 16, v3 | 7);
}

void sub_22C84B9D8()
{
  v1 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  sub_22C3699B8(v1);
  v4 = (v0 + ((*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  sub_22C83E124();
}

uint64_t sub_22C84BAB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22C83E000();
}

uint64_t sub_22C84BAEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22C83E49C();
}

uint64_t sub_22C84BB28()
{
  sub_22C36FB38();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C372190(v1);

  return sub_22C841F30(v3, v4, v5);
}

uint64_t sub_22C84BCAC()
{

  return swift_arrayDestroy();
}

uint64_t sub_22C84BCCC(unint64_t *a1)
{

  return sub_22C38694C(a1, v1);
}

uint64_t sub_22C84BD40()
{
  v2 = v0[18];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[8];
}

uint64_t sub_22C84BD70()
{
  *(v0 + 376) = *(v2 + 16);
  *(v0 + 384) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t sub_22C84BD90()
{
  v1 = v0[30];
  sub_22C374168(v0 + 26, v0[29]);
  return v1;
}

void sub_22C84BDB8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_22C84BDD8()
{
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];

  return swift_slowAlloc();
}

void sub_22C84BE04(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_22C84BE10()
{
  v2 = *(v0 + 56);

  return swift_slowAlloc();
}

BOOL sub_22C84BE2C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22C84BE44()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22C84BE54()
{
}

uint64_t sub_22C84BE6C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_22C84BE94(uint64_t a1)
{
  v2 = *(a1 + 96);

  return sub_22C903CAC();
}

uint64_t sub_22C84BEB8()
{

  return swift_slowAlloc();
}

uint64_t sub_22C84BED4(float a1)
{
  *v2 = a1;
  v4 = *(v1 + 96);

  return sub_22C903C7C();
}

uint64_t sub_22C84BEF0()
{
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
}

uint64_t sub_22C84BF0C()
{

  return swift_slowAlloc();
}

uint64_t sub_22C84BF28()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v8 = v0[8];
}

uint64_t sub_22C84BF58()
{
  result = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  return result;
}

uint64_t sub_22C84BF78()
{
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
}

uint64_t sub_22C84BF98()
{
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
}

uint64_t sub_22C84BFB8(uint64_t a1)
{
  *(v1 + 104) = a1;

  return swift_task_alloc();
}

uint64_t QueryDecorator.getSpanMatches(queryDecorationInput:sessionId:)()
{
  sub_22C369980();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_22C90622C();
  v1[10] = v4;
  sub_22C3699B8(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = sub_22C3699D4();
  v8 = sub_22C903D4C();
  v1[13] = v8;
  sub_22C3699B8(v8);
  v1[14] = v9;
  v11 = *(v10 + 64);
  v1[15] = sub_22C3699D4();
  v12 = sub_22C9063DC();
  v1[16] = v12;
  sub_22C3699B8(v12);
  v1[17] = v13;
  v15 = *(v14 + 64);
  v1[18] = sub_22C3699D4();
  v16 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  sub_22C369914(v16);
  v18 = *(v17 + 64);
  v1[19] = sub_22C3699D4();
  v19 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_22C84C150()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  sub_22C85D5A8();
  sub_22C598F54();
  sub_22C36A748();
  sub_22C36C640(v4, v5, v6, v7);
  v2[20] = sub_22C85D388();
  sub_22C36DD28(v3, &qword_27D9C06A0, &qword_22C929950);
  sub_22C36DD28(v0, &qword_27D9C0250, &unk_22C929510);
  v8 = *(v1 + 144);
  v9 = *(v1 + 152);
  v10 = swift_task_alloc();
  v2[21] = v10;
  *v10 = v2;
  v10[1] = sub_22C84C234;
  v11 = v2[9];
  sub_22C36BAFC();
  sub_22C7E4ED0();

  return sub_22C84C9E0(v12, v13);
}

uint64_t sub_22C84C234()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  v3[22] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85D124, 0, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v3[23] = v9;
    *v9 = v7;
    v9[1] = sub_22C84C38C;
    v10 = v3[9];
    v11 = sub_22C386674(v3[20]);

    return sub_22C84CCF0(v11);
  }
}

uint64_t sub_22C84C38C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 184);
  *v3 = *v1;
  *(v2 + 192) = v6;
  *(v2 + 200) = v0;

  if (v0)
  {
    v7 = sub_22C85D128;
  }

  else
  {
    v7 = sub_22C84C490;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C84C6D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v36 = a5;
  v37 = a2;
  v8 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v35 = &v32 - v10;
  v34 = sub_22C90292C();
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v34);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22C90069C();
  v15 = *(v33 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v33);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v32 - v21;
  v23 = sub_22C903DEC();
  sub_22C36C640(v22, 1, 1, v23);
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v24 = v6[11];
  v25 = v6[12];
  sub_22C374168(v6 + 8, v24);
  v32 = a1;
  sub_22C903C9C();
  sub_22C903C0C();
  sub_22C90291C();

  (*(v25 + 8))(v39, v18, v14, v24, v25);
  (*(v11 + 8))(v14, v34);
  (*(v15 + 8))(v18, v33);
  sub_22C378A4C((v6 + 13), v38);
  v26 = v35;
  sub_22C379DF8(v36, v35, &qword_27D9C06F8, &qword_22C929520);
  DecorationContext = type metadata accessor for QueryDecorationContext();
  v28 = *(DecorationContext + 48);
  v29 = *(DecorationContext + 52);
  swift_allocObject();
  v30 = v37;

  return QueryDecorationContext.init(input:toolboxResources:lookback:toolExecutionSession:selfLogger:signposter:intelligenceFlowSessionId:)(v32, v30, v22, v40, v39, v38, v26);
}

uint64_t sub_22C84C9E0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22C9063DC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C84CAA0, 0, 0);
}

uint64_t sub_22C84CAA0()
{
  sub_22C36D5EC();
  v1 = v0[3];
  if (v1 && (0x800000022C937B20 == v1 ? (v2 = v0[2] == 0xD000000000000021) : (v2 = 0), v2 || (sub_22C90B4FC() & 1) != 0))
  {
    v3 = v0[6];
    sub_22C90400C();
    v4 = sub_22C9063CC();
    v5 = sub_22C90AABC();
    if (sub_22C37B204(v5))
    {
      v6 = sub_22C36D240();
      sub_22C36C890(v6);
      sub_22C36BB14(&dword_22C366000, v7, v8, "QueryDecorationCache has been cleared as this request is running via iftool.");
      sub_22C372FB0();
    }

    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];

    v12 = *(v10 + 8);
    v13 = sub_22C36BAFC();
    v14(v13);
    if (qword_281431278 != -1)
    {
      sub_22C38A0F4();
    }

    v15 = sub_22C36FAB8();
    v0[7] = v15;

    return MEMORY[0x2822009F8](sub_22C84CC34, v15, 0);
  }

  else
  {
    v16 = v0[6];

    sub_22C369C50();

    return v17();
  }
}

uint64_t sub_22C84CC34()
{
  sub_22C369980();
  v1 = *(v0 + 56);
  sub_22C8317F4();
  v2 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22C84CC90()
{
  sub_22C369980();
  v1 = *(v0 + 56);

  v2 = *(v0 + 48);

  sub_22C369C50();

  return v3();
}

uint64_t sub_22C84CCF0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_22C90363C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_22C9063DC();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = sub_22C905A5C();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  v12 = sub_22C903E9C();
  v2[15] = v12;
  v13 = *(v12 - 8);
  v2[16] = v13;
  v14 = *(v13 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C84CEEC, 0, 0);
}

uint64_t sub_22C84CEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C83AB14();
  sub_22C3743E4();
  sub_22C85D4E0();
  v12 = *MEMORY[0x277D1F170];
  v13 = sub_22C375194();
  v14(v13);
  sub_22C85D4B4();
  v15 = sub_22C38ABE0();
  v16(v15);
  if (v10)
  {
    v18 = *(v11 + 104);
    v17 = *(v11 + 112);
    v19 = *(v11 + 96);
    v62 = *(v11 + 24);
    v20 = *(v62 + 40);
    v21 = *(v62 + 48);
    sub_22C36CD90((v62 + 16));
    v22 = *MEMORY[0x277D20038];
    v23 = sub_22C85D354();
    v24(v23);
    v25 = swift_task_alloc();
    sub_22C85D514(v25, v26, v27, v28, v29, v30, v31, v32, v33);
    v34 = swift_task_alloc();
    *(v11 + 152) = v34;
    sub_22C3A5908(&qword_27D9C0A10, &qword_22C9299C8);
    sub_22C381898();
    *v34 = v35;
    v34[1] = sub_22C84D0EC;
    v36 = *(v11 + 112);
    sub_22C370AB0();
    sub_22C83AB2C();

    return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
  }

  else
  {
    v39 = *(v11 + 88);
    sub_22C90400C();
    v40 = sub_22C9063CC();
    v41 = sub_22C90AABC();
    v42 = sub_22C370048(v41);
    v44 = *(v11 + 80);
    v43 = *(v11 + 88);
    v45 = *(v11 + 72);
    if (v42)
    {
      *sub_22C36D240() = 0;
      sub_22C374ED0();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
      sub_22C36BAE0();
    }

    v51 = *(v44 + 8);
    v52 = sub_22C36BAFC();
    v53(v52);
    sub_22C85D304();

    sub_22C36D5E0();
    sub_22C83AB2C();

    return v56(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10);
  }
}

uint64_t sub_22C84D0EC()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = v1[19];
  *v4 = *v2;
  *(v3 + 160) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 144);
  (*(v1[13] + 8))(v1[14], v1[12]);

  sub_22C374448();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C84D254()
{
  sub_22C36FB38();
  v1 = v0[2];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];

  sub_22C36D5E0();

  return v6(v1);
}

uint64_t sub_22C84D2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C83AB14();
  sub_22C3743E4();
  sub_22C85D594();
  v13 = *MEMORY[0x277D1EC50];
  v15 = sub_22C36D45C(v14);
  v16(v15);
  v17 = *(v10 + 96);
  sub_22C903C8C();
  v18 = sub_22C85D588();
  sub_22C85D324(v18, 35, v19, v20);
  v21 = v12[20];
  if (v11)
  {
    v22 = sub_22C85D3E4();
    v23(v22);

    sub_22C379B94();
    sub_22C83AB2C();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }

  else
  {
    (*(v12[7] + 8))(v12[8], v12[6]);

    sub_22C85D304();

    sub_22C36D5E0();
    sub_22C83AB2C();

    return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }
}

uint64_t QueryDecorator.getContext(queryDecorationInput:sessionId:)()
{
  sub_22C369980();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_22C90622C();
  v1[10] = v4;
  sub_22C3699B8(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = sub_22C3699D4();
  v8 = sub_22C903D4C();
  v1[13] = v8;
  sub_22C3699B8(v8);
  v1[14] = v9;
  v11 = *(v10 + 64);
  v1[15] = sub_22C3699D4();
  v12 = sub_22C9063DC();
  v1[16] = v12;
  sub_22C3699B8(v12);
  v1[17] = v13;
  v15 = *(v14 + 64);
  v1[18] = sub_22C3699D4();
  v16 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  sub_22C369914(v16);
  v18 = *(v17 + 64);
  v1[19] = sub_22C3699D4();
  v19 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_22C84D5A0()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  sub_22C85D5A8();
  sub_22C598F54();
  sub_22C36A748();
  sub_22C36C640(v4, v5, v6, v7);
  v2[20] = sub_22C85D388();
  sub_22C36DD28(v3, &qword_27D9C06A0, &qword_22C929950);
  sub_22C36DD28(v0, &qword_27D9C0250, &unk_22C929510);
  v8 = *(v1 + 144);
  v9 = *(v1 + 152);
  v10 = swift_task_alloc();
  v2[21] = v10;
  *v10 = v2;
  v10[1] = sub_22C84D684;
  v11 = v2[9];
  sub_22C36BAFC();
  sub_22C7E4ED0();

  return sub_22C84C9E0(v12, v13);
}

uint64_t sub_22C84D684()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  v3[22] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C84DB24, 0, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v3[23] = v9;
    *v9 = v7;
    v9[1] = sub_22C84D7DC;
    v10 = v3[9];
    v11 = sub_22C386674(v3[20]);

    return sub_22C84DCEC(v11);
  }
}

uint64_t sub_22C84D7DC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 184);
  *v3 = *v1;
  *(v2 + 192) = v6;
  *(v2 + 200) = v0;

  if (v0)
  {
    v7 = sub_22C84DC08;
  }

  else
  {
    v7 = sub_22C84D8E0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C84DB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = v14[22];
  v17 = v14[19];
  v16 = v14[20];
  v33 = v14[18];
  v34 = v14[15];
  v18 = v14[11];
  v19 = v14[12];
  v20 = v14[10];
  v21 = v16[6];
  sub_22C3766E0(v16 + 2, v16[5]);
  sub_22C90621C();
  v22 = sub_22C85D404();
  v23(v22);
  (*(v18 + 8))(v19, v20);
  swift_willThrow();

  sub_22C37F620();
  sub_22C36D5F8();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, a11, a12, a13, a14);
}

uint64_t sub_22C84DC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = v14[25];
  v17 = v14[19];
  v16 = v14[20];
  v33 = v14[18];
  v34 = v14[15];
  v18 = v14[11];
  v19 = v14[12];
  v20 = v14[10];
  v21 = v16[6];
  sub_22C3766E0(v16 + 2, v16[5]);
  sub_22C90621C();
  v22 = sub_22C85D404();
  v23(v22);
  (*(v18 + 8))(v19, v20);
  swift_willThrow();

  sub_22C37F620();
  sub_22C36D5F8();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, a11, a12, a13, a14);
}

uint64_t sub_22C84DCEC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_22C90363C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_22C9063DC();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = sub_22C905A5C();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  v12 = sub_22C903E9C();
  v2[15] = v12;
  v13 = *(v12 - 8);
  v2[16] = v13;
  v14 = *(v13 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C84DEE8, 0, 0);
}

uint64_t sub_22C84DEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C83AB14();
  sub_22C3743E4();
  sub_22C85D4E0();
  v12 = *MEMORY[0x277D1F188];
  v13 = sub_22C375194();
  v14(v13);
  sub_22C85D4B4();
  v15 = sub_22C38ABE0();
  v16(v15);
  if (v10)
  {
    v18 = *(v11 + 104);
    v17 = *(v11 + 112);
    v19 = *(v11 + 96);
    v62 = *(v11 + 24);
    v20 = *(v62 + 40);
    v21 = *(v62 + 48);
    sub_22C36CD90((v62 + 16));
    v22 = *MEMORY[0x277D20060];
    v23 = sub_22C85D354();
    v24(v23);
    v25 = swift_task_alloc();
    sub_22C85D514(v25, v26, v27, v28, v29, v30, v31, v32, v33);
    v34 = swift_task_alloc();
    *(v11 + 152) = v34;
    sub_22C3A5908(&qword_27D9BE358, &qword_22C9299A0);
    sub_22C381898();
    *v34 = v35;
    v34[1] = sub_22C84E0E8;
    v36 = *(v11 + 112);
    sub_22C370AB0();
    sub_22C83AB2C();

    return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
  }

  else
  {
    v39 = *(v11 + 88);
    sub_22C90400C();
    v40 = sub_22C9063CC();
    v41 = sub_22C90AABC();
    v42 = sub_22C370048(v41);
    v44 = *(v11 + 80);
    v43 = *(v11 + 88);
    v45 = *(v11 + 72);
    if (v42)
    {
      *sub_22C36D240() = 0;
      sub_22C374ED0();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
      sub_22C36BAE0();
    }

    v51 = *(v44 + 8);
    v52 = sub_22C36BAFC();
    v53(v52);
    sub_22C85D304();

    sub_22C36D5E0();
    sub_22C83AB2C();

    return v56(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10);
  }
}

uint64_t sub_22C84E0E8()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = v1[19];
  *v4 = *v2;
  *(v3 + 160) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 144);
  (*(v1[13] + 8))(v1[14], v1[12]);

  sub_22C374448();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C84E250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C83AB14();
  sub_22C3743E4();
  sub_22C85D594();
  v13 = *MEMORY[0x277D1EC70];
  v15 = sub_22C36D45C(v14);
  v16(v15);
  v17 = *(v10 + 96);
  sub_22C903C8C();
  v18 = sub_22C85D588();
  sub_22C85D324(v18, 40, v19, v20);
  v21 = v12[20];
  if (v11)
  {
    v22 = sub_22C85D3E4();
    v23(v22);

    sub_22C379B94();
    sub_22C83AB2C();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }

  else
  {
    (*(v12[7] + 8))(v12[8], v12[6]);

    sub_22C85D304();

    sub_22C36D5E0();
    sub_22C83AB2C();

    return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }
}

uint64_t QueryDecorator.getRetrievedTools(queryDecorationInput:toolboxResources:qdLookback:toolExecutionSession:sessionId:)()
{
  sub_22C369980();
  v1[295] = v0;
  v1[289] = v2;
  v1[283] = v3;
  v1[277] = v4;
  v1[271] = v5;
  v1[265] = v6;
  v1[259] = v7;
  v8 = sub_22C90622C();
  v1[301] = v8;
  sub_22C3699B8(v8);
  v1[307] = v9;
  v11 = *(v10 + 64);
  v1[313] = sub_22C3699D4();
  v12 = sub_22C903D4C();
  v1[319] = v12;
  sub_22C3699B8(v12);
  v1[325] = v13;
  v15 = *(v14 + 64);
  v1[331] = sub_22C3699D4();
  v16 = sub_22C9063DC();
  v1[337] = v16;
  sub_22C3699B8(v16);
  v1[343] = v17;
  v19 = *(v18 + 64);
  v1[349] = sub_22C36D0D4();
  v1[355] = swift_task_alloc();
  v20 = sub_22C903F4C();
  v1[361] = v20;
  sub_22C3699B8(v20);
  v1[367] = v21;
  v23 = *(v22 + 64);
  v1[373] = sub_22C36D0D4();
  v1[379] = swift_task_alloc();
  v24 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  v1[385] = v24;
  sub_22C369914(v24);
  v26 = *(v25 + 64);
  v1[391] = sub_22C36D0D4();
  v1[397] = swift_task_alloc();
  v1[398] = swift_task_alloc();
  v27 = sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
  sub_22C3699B8(v27);
  v1[399] = v28;
  v1[400] = *(v29 + 64);
  v1[401] = sub_22C36D0D4();
  v1[402] = swift_task_alloc();
  v30 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_22C84E608()
{
  sub_22C36FB38();
  v1 = *(v0 + 2360);
  *(v0 + 3224) = sub_22C84C6D8(*(v0 + 2120), *(v0 + 2168), *(v0 + 2216), *(v0 + 2264), *(v0 + 2312));
  v2 = *(v1 + 144);
  v3 = *(v1 + 152);
  v4 = swift_task_alloc();
  *(v0 + 3232) = v4;
  *v4 = v0;
  v4[1] = sub_22C84E6C4;
  v5 = *(v0 + 2360);
  v6 = sub_22C36BAFC();

  return sub_22C84C9E0(v6, v7);
}

uint64_t sub_22C84E6C4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 3232);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 3240) = v0;

  if (v0)
  {
    v9 = sub_22C84F754;
  }

  else
  {
    v9 = sub_22C84E7C0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22C84E7C0()
{
  sub_22C36FB38();
  v1 = v0[403];
  v2 = v0[295];
  sub_22C36A83C();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_22C36A83C();
  v4 = swift_allocObject();
  v0[406] = v4;
  sub_22C383A10(v4);

  sub_22C3A5908(&qword_27D9BE358, &qword_22C9299A0);
  swift_asyncLet_begin();
  sub_22C36A83C();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  sub_22C36A83C();
  v6 = swift_allocObject();
  v0[407] = v6;
  sub_22C383A10(v6);

  sub_22C3A5908(&qword_27D9C0A10, &qword_22C9299C8);
  swift_asyncLet_begin();
  v7 = sub_22C377770();

  return MEMORY[0x282200930](v7, v8, v9, v0 + 392);
}

uint64_t sub_22C84E940()
{
  sub_22C36FB38();
  v1[408] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C84F8E8, 0, 0);
  }

  else
  {
    v2 = v1[247];
    v1[409] = v2;

    swift_task_alloc();
    sub_22C36CC90();
    v1[410] = v3;
    *v3 = v4;
    v3[1] = sub_22C84EA38;
    v5 = v1[403];
    v6 = v1[402];
    v7 = v1[295];

    return sub_22C37D378(v6, v5, v2);
  }
}

uint64_t sub_22C84EA38()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 3280);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 3288) = v0;

  if (v0)
  {
    v9 = sub_22C84FA9C;
  }

  else
  {
    v10 = *(v3 + 3272);

    v9 = sub_22C84EB3C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22C84EB3C()
{
  sub_22C388250();
  sub_22C3743E4();
  v1 = v0[403];
  v2 = v0[401];
  v3 = v0[400];
  v4 = v0[399];
  v5 = v0[398];
  v6 = v0[385];
  v7 = v0[295];
  sub_22C379DF8(v0[402], v2, &qword_27D9C09E0, &qword_22C929868);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[412] = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v1;
  sub_22C85C364(v2, v9 + v8);

  swift_asyncLet_begin();
  sub_22C377770();
  sub_22C36EC14();

  return MEMORY[0x282200930](v10, v11, v12, v13);
}

uint64_t sub_22C84EC48()
{
  sub_22C369980();
  v1[413] = v0;
  if (v0)
  {
    v2 = v1[398];

    return MEMORY[0x282200920](v1 + 162, v2, sub_22C84FC90, v1 + 290);
  }

  else
  {
    v1[414] = v1[247];

    v3 = sub_22C85D2F4();

    return MEMORY[0x282200930](v3, v4, v5, v1 + 308);
  }
}

uint64_t sub_22C84ECF0()
{
  sub_22C369980();
  v1[415] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C84FE74, 0, 0);
  }

  else
  {
    sub_22C379DF8(v1[398], v1[397], &qword_27D9BD290, &qword_22C917EC0);

    return MEMORY[0x282200930](v1 + 82, v1 + 253, sub_22C84EDAC, v1 + 332);
  }
}

uint64_t sub_22C84EDAC()
{
  sub_22C369980();
  v1[416] = v0;
  if (v0)
  {
    v2 = v1[414];
    sub_22C36DD28(v1[397], &qword_27D9BD290, &qword_22C917EC0);

    v3 = sub_22C8500B8;
  }

  else
  {
    v3 = sub_22C84EE44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22C84EE44()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = v0[414];
  v2 = v0[397];
  v3 = v0[253];
  v4 = *(v0[403] + 96);

  sub_22C903BFC();
  v5 = objc_allocWithZone(sub_22C903DCC());
  sub_22C36BAFC();
  v0[417] = sub_22C903D9C();
  v6 = swift_task_alloc();
  v0[418] = v6;
  *v6 = v0;
  v6[1] = sub_22C84EF3C;
  v7 = v0[295];
  sub_22C386674(v0[403]);
  sub_22C7E4ED0();

  return sub_22C8516F4();
}

uint64_t sub_22C84EF3C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 3344);
  *v3 = *v1;
  *(v2 + 3352) = v6;
  *(v2 + 3360) = v0;

  if (v0)
  {
    v7 = sub_22C8502B8;
  }

  else
  {
    v7 = sub_22C84F044;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C84F044()
{
  v97 = v0;
  v1 = *(v0 + 3352);
  v2 = *(v0 + 3128);
  v3 = *(v0 + 2888);
  sub_22C903D5C();
  v4 = sub_22C36CCF8();
  sub_22C85D5C8(v4, v5);
  if (v6)
  {
    v7 = *(v0 + 2792);
    sub_22C36DD28(*(v0 + 3128), &qword_27D9BD290, &qword_22C917EC0);
    sub_22C90400C();
    v8 = sub_22C9063CC();
    v9 = sub_22C90AADC();
    v10 = sub_22C370048(v9);
    v11 = *(v0 + 3352);
    v12 = *(v0 + 3336);
    v13 = *(v0 + 2792);
    v14 = *(v0 + 2744);
    v15 = *(v0 + 2696);
    if (v10)
    {
      v16 = sub_22C36FB44();
      v17 = sub_22C370060();
      v96 = v17;
      *v16 = 136315138;
      sub_22C36EE00();
      *(v16 + 4) = sub_22C36F9F4(0xD000000000000063, v18, &v96);
      sub_22C374ED0();
      _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
      sub_22C36FF94(v17);
      sub_22C370510();
      sub_22C36BAE0();
    }

    v24 = *(v14 + 8);
    v25 = sub_22C36BAFC();
    v26(v25);
    v27 = *(v0 + 2888);
    v28 = *(v0 + 2072);
    sub_22C36A748();
    sub_22C36C640(v29, v30, v31, v32);
    v33 = sub_22C85D2F4();
    v36 = v0 + 2992;
  }

  else
  {
    v37 = *(v0 + 3224);
    v38 = *(v0 + 2984);
    v39 = *(v0 + 2936);
    v40 = *(v0 + 2840);
    v41 = *(v39 + 32);
    v41(*(v0 + 3032), *(v0 + 3128), *(v0 + 2888));
    sub_22C90400C();
    v43 = *(v39 + 16);
    v42 = v39 + 16;
    v44 = sub_22C36BA00();
    v45(v44);

    v46 = sub_22C9063CC();
    v47 = sub_22C90AABC();

    v48 = os_log_type_enabled(v46, v47);
    v95 = *(v0 + 3336);
    if (v48)
    {
      v90 = v47;
      v49 = *(v0 + 3224);
      v50 = *(v0 + 2936);
      v88 = *(v0 + 2984);
      v89 = *(v0 + 2888);
      v91 = *(v0 + 3352);
      v92 = *(v0 + 2744);
      v93 = *(v0 + 2696);
      v94 = *(v0 + 2840);
      v51 = *(v0 + 2648);
      v52 = *(v0 + 2600);
      v53 = *(v0 + 2552);
      sub_22C370060();
      v96 = sub_22C84BEB8();
      *v42 = 136315650;
      sub_22C36EE00();
      *(v42 + 4) = sub_22C36F9F4(0xD000000000000063, v54, &v96);
      *(v42 + 12) = 2080;
      v55 = *(v49 + 96);
      sub_22C903C7C();
      sub_22C37890C(&qword_281435720);
      v56 = sub_22C380220();
      v87 = v46;
      v57 = v41;
      v59 = v58;
      v60 = *(v52 + 8);
      v61 = sub_22C36D264();
      v62(v61);
      v63 = sub_22C36F9F4(v56, v59, &v96);
      v41 = v57;

      *(v42 + 14) = v63;
      *(v42 + 22) = 2080;
      v64 = sub_22C903F1C();
      static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v64);

      (*(v50 + 8))(v88, v89);
      v65 = sub_22C36D264();
      v68 = sub_22C36F9F4(v65, v66, v67);

      *(v42 + 24) = v68;
      sub_22C38B2B8(&dword_22C366000, v69, v90, "Output of %s for caller: %s\n%s");
      sub_22C375DD4();
      sub_22C37E124();
      sub_22C370510();

      (*(v92 + 8))(v94, v93);
    }

    else
    {
      v70 = *(v0 + 2984);
      v71 = *(v0 + 2936);
      v72 = *(v0 + 2888);
      v73 = *(v0 + 2840);
      v74 = *(v0 + 2744);
      v75 = *(v0 + 2696);

      v76 = *(v71 + 8);
      v77 = sub_22C37170C();
      v78(v77);
      v79 = *(v74 + 8);
      v80 = sub_22C36ECB4();
      v81(v80);
    }

    v82 = *(v0 + 2888);
    v41(*(v0 + 2072), *(v0 + 3032), v82);
    sub_22C36BECC();
    sub_22C36C640(v83, v84, v85, v82);
    v33 = sub_22C85D2F4();
    v36 = v0 + 1984;
  }

  return MEMORY[0x282200920](v33, v34, v35, v36);
}

uint64_t sub_22C84F4BC()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3216), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C377770();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 2224);
}

uint64_t sub_22C84F574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v17 = v16[412];
  v18 = v16[407];
  v19 = v16[406];
  v20 = v16[403];
  v21 = v16[402];
  v22 = v16[401];
  v23 = v16[398];
  v24 = v16[397];
  v25 = v16[391];
  v26 = v16[379];
  v36 = v16[373];
  v37 = v16[355];
  v38 = v16[349];
  v39 = v16[331];
  v40 = v16[313];

  sub_22C369C50();
  sub_22C36EC40();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v40, a14, a15, a16);
}

uint64_t sub_22C84F69C()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3216), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C377770();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 3040);
}

uint64_t sub_22C84F754()
{
  v1 = v0[405];
  v2 = v0[403];
  v3 = v0[402];
  v16 = v0[401];
  v17 = v0[398];
  v18 = v0[397];
  v19 = v0[391];
  v20 = v0[379];
  v21 = v0[373];
  v22 = v0[355];
  v23 = v0[349];
  v24 = v0[331];
  v4 = v0[313];
  v5 = v0[307];
  v6 = v0[301];
  v7 = v2[6];
  sub_22C3766E0(v2 + 2, v2[5]);
  sub_22C90621C();
  v8 = *(v7 + 40);
  v9 = sub_22C36D39C();
  v10(v9);
  (*(v5 + 8))(v4, v6);
  swift_willThrow();

  v11 = sub_22C3E3574();
  sub_22C372F94(v11);
  v12 = sub_22C3E3574();
  sub_22C372F94(v12);
  v13 = sub_22C3E3574();
  sub_22C372F94(v13);

  sub_22C37F620();

  return v14();
}

uint64_t sub_22C84F950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v26 = v24[408];
  v27 = v24[406];
  v28 = v24[403];
  v46 = v24[407];
  v47 = v24[402];
  sub_22C373B8C();
  v29 = v24[307];
  v30 = v24[301];
  v31 = v28[6];
  sub_22C3766E0(v28 + 2, v28[5]);
  sub_22C90621C();
  v32 = sub_22C37A478();
  v33(v32);
  (*(v29 + 8))(v25, v30);
  swift_willThrow();

  v34 = sub_22C85D13C();
  sub_22C372F94(v34);
  v35 = sub_22C36A484();
  sub_22C372F94(v35);
  v36 = sub_22C3E3574();
  sub_22C372F94(v36);

  sub_22C37F620();
  sub_22C375C0C();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46, v47, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22C84FA9C()
{
  sub_22C369980();
  v1 = *(v0 + 3272);

  v2 = sub_22C377770();

  return MEMORY[0x282200920](v2, v3, v4, v0 + 2128);
}

uint64_t sub_22C84FB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v26 = v24[411];
  v27 = v24[406];
  v28 = v24[403];
  v46 = v24[407];
  v47 = v24[402];
  sub_22C373B8C();
  v29 = v24[307];
  v30 = v24[301];
  v31 = v28[6];
  sub_22C3766E0(v28 + 2, v28[5]);
  sub_22C90621C();
  v32 = sub_22C37A478();
  v33(v32);
  (*(v29 + 8))(v25, v30);
  swift_willThrow();

  v34 = sub_22C85D13C();
  sub_22C372F94(v34);
  v35 = sub_22C36A484();
  sub_22C372F94(v35);
  v36 = sub_22C3E3574();
  sub_22C372F94(v36);

  sub_22C37F620();
  sub_22C375C0C();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46, v47, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22C84FCA4()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3216), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C377770();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 2368);
}

uint64_t sub_22C84FD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v25 = v24[413];
  v42 = v24[407];
  v26 = v24[406];
  v27 = v24[403];
  v43 = v24[402];
  v44 = v24[412];
  sub_22C373B8C();
  sub_22C85D26C();
  sub_22C37A478();
  sub_22C387D9C();
  v28();
  v29 = sub_22C85D344();
  v30(v29);
  swift_willThrow();

  v31 = sub_22C85D13C();
  sub_22C372F94(v31);
  v32 = sub_22C36A484();
  sub_22C85D154(v32);

  sub_22C37F620();
  sub_22C375C0C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22C84FE74()
{
  sub_22C369980();
  v1 = *(v0 + 3312);

  v2 = sub_22C85D2F4();

  return MEMORY[0x282200920](v2, v3, v4, v0 + 2512);
}

uint64_t sub_22C84FEE8()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3216), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C377770();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 2560);
}

uint64_t sub_22C84FFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v25 = v24[415];
  v42 = v24[407];
  v26 = v24[406];
  v27 = v24[403];
  v43 = v24[402];
  v44 = v24[412];
  sub_22C373B8C();
  sub_22C85D26C();
  sub_22C37A478();
  sub_22C387D9C();
  v28();
  v29 = sub_22C85D344();
  v30(v29);
  swift_willThrow();

  v31 = sub_22C85D13C();
  sub_22C372F94(v31);
  v32 = sub_22C36A484();
  sub_22C85D154(v32);

  sub_22C37F620();
  sub_22C375C0C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22C8500EC()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3216), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C377770();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 2752);
}

uint64_t sub_22C8501A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v25 = v24[416];
  v42 = v24[407];
  v26 = v24[406];
  v27 = v24[403];
  v43 = v24[402];
  v44 = v24[412];
  sub_22C373B8C();
  sub_22C85D26C();
  sub_22C37A478();
  sub_22C387D9C();
  v28();
  v29 = sub_22C85D344();
  v30(v29);
  swift_willThrow();

  v31 = sub_22C85D13C();
  sub_22C372F94(v31);
  v32 = sub_22C36A484();
  sub_22C85D154(v32);

  sub_22C37F620();
  sub_22C375C0C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22C8502B8()
{
  sub_22C369980();

  v1 = sub_22C85D2F4();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 2848);
}

uint64_t sub_22C85032C()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3216), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C377770();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 2896);
}

uint64_t sub_22C8503E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v25 = v24[420];
  v42 = v24[407];
  v26 = v24[406];
  v27 = v24[403];
  v43 = v24[402];
  v44 = v24[412];
  sub_22C373B8C();
  sub_22C85D26C();
  sub_22C37A478();
  sub_22C387D9C();
  v28();
  v29 = sub_22C85D344();
  v30(v29);
  swift_willThrow();

  v31 = sub_22C85D13C();
  sub_22C372F94(v31);
  v32 = sub_22C36A484();
  sub_22C85D154(v32);

  sub_22C37F620();
  sub_22C375C0C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22C8504F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22C85D138;

  return sub_22C84DCEC(a2);
}

uint64_t sub_22C850594()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  sub_22C85D364();

  return v11();
}

uint64_t sub_22C850684(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22C85D138;

  return sub_22C84CCF0(a2);
}

uint64_t sub_22C850720(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_22C85D114;

  return v6();
}

uint64_t sub_22C85080C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  v3[19] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85094C, 0, 0);
  }

  else
  {
    v9 = v3[17];

    v10 = v3[15];
    v11 = v3[12];
    v12 = v3[9];

    sub_22C369C50();

    return v13();
  }
}

uint64_t sub_22C85094C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v11 = v10[19];
  v13 = v10[16];
  v12 = v10[17];
  v15 = v10[8];
  v14 = v10[9];
  v16 = v10[6];
  v17 = v10[7];

  (*(v15 + 104))(v14, *MEMORY[0x277D1EC70], v17);
  sub_22C903C8C();
  sub_22C858AA4(v11, 0xD000000000000032, 0x800000022C937A80, v14, v18);
  v19 = *(v15 + 8);
  v20 = sub_22C36ECB4();
  v21(v20);

  v22 = v10[2];
  type metadata accessor for RetrievedToolContext();
  sub_22C36A748();
  sub_22C36C640(v23, v24, v25, v26);
  sub_22C85D498();

  sub_22C369C50();
  sub_22C36EC14();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_22C850A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(*(sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C850B28, 0, 0);
}

uint64_t sub_22C850B28()
{
  sub_22C36FB38();
  sub_22C379DF8(v0[6], v0[8], &qword_27D9C09E0, &qword_22C929868);
  v1 = type metadata accessor for RetrievedToolContext();
  v2 = sub_22C36CCF8();
  v4 = sub_22C370B74(v2, v3, v1);
  v5 = v0[8];
  if (v4 == 1)
  {
    sub_22C36DD28(v0[8], &qword_27D9C09E0, &qword_22C929868);
    v6 = 0;
  }

  else
  {
    v6 = *v5;

    sub_22C84B5D8(v5);
  }

  v7 = v0[6];
  v8 = v0[7];
  v0[2] = v6;
  sub_22C379DF8(v7, v8, &qword_27D9C09E0, &qword_22C929868);
  v9 = sub_22C36CCF8();
  v11 = sub_22C370B74(v9, v10, v1);
  v12 = v0[7];
  if (v11 == 1)
  {
    sub_22C36DD28(v0[7], &qword_27D9C09E0, &qword_22C929868);
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 8);

    sub_22C84B5D8(v12);
  }

  v0[9] = v13;
  swift_task_alloc();
  sub_22C36CC90();
  v0[10] = v14;
  *v14 = v15;
  v16 = sub_22C387CEC(v14);

  return sub_22C850DF8(v16, v17, v18, v19);
}

uint64_t sub_22C850C9C()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *(v5 + 72);
  v8 = *v1;
  sub_22C369970();
  *v9 = v8;
  v3[11] = v0;

  v10 = v3[2];

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85D12C, 0, 0);
  }

  else
  {
    v12 = v3[7];
    v11 = v3[8];

    sub_22C369C50();

    return v13();
  }
}

uint64_t sub_22C850DF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v5[9] = a4;
  v5[10] = v6;
  v5[7] = a1;
  v5[8] = a2;
  v5[11] = *v6;
  v8 = sub_22C9063DC();
  v5[12] = v8;
  v9 = *(v8 - 8);
  v5[13] = v9;
  v10 = *(v9 + 64) + 15;
  v5[14] = swift_task_alloc();
  v11 = sub_22C905A5C();
  v5[15] = v11;
  v12 = *(v11 - 8);
  v5[16] = v12;
  v13 = *(v12 + 64) + 15;
  v5[17] = swift_task_alloc();
  v14 = sub_22C90363C();
  v5[18] = v14;
  v15 = *(v14 - 8);
  v5[19] = v15;
  v16 = *(v15 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v17 = sub_22C903E9C();
  v5[22] = v17;
  v18 = *(v17 - 8);
  v5[23] = v18;
  v19 = *(v18 + 64) + 15;
  v20 = swift_task_alloc();
  v21 = *a3;
  v5[24] = v20;
  v5[25] = v21;

  return MEMORY[0x2822009F8](sub_22C85100C, 0, 0);
}