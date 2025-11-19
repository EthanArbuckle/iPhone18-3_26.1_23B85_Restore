void sub_22C7F3AA8()
{
  sub_22C36BA7C();
  v4 = v3;
  v56 = v5;
  v60 = sub_22C908C5C();
  v6 = sub_22C369824(v60);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  v59 = v11;
  sub_22C36BA0C();
  v58 = sub_22C9069BC();
  v12 = sub_22C369824(v58);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v57 = v15;
  v16 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v17 = sub_22C369914(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v20);
  v22 = (v55 - v21);
  v24 = v4 + 64;
  v23 = *(v4 + 64);
  v25 = *(v4 + 32);
  sub_22C36D280();
  sub_22C386B70();
  v26 = 0;
  sub_22C36CB90();
  while (1)
  {
    v61 = v27;
    if (!v2)
    {
      break;
    }

    v28 = v26;
LABEL_8:
    v29 = sub_22C37AD78(v28);
    v30(v29);
    v31 = sub_22C7F4530();
    v32(v31);
    v33 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
    v34 = sub_22C388DBC(v33);
    v35(v34);
    v22[4](v0 + v8, &qword_27D9BF110, v1);
    sub_22C633C54();
    sub_22C36C640(v36, v37, v38, v39);
    sub_22C375DA0();
LABEL_9:
    sub_22C407C2C();
    v40 = sub_22C36BA00();
    v42 = sub_22C3A5908(v40, v41);
    sub_22C36D3E0(v22);
    if (v43)
    {

      MEMORY[0x2318B8B10](v61);
      sub_22C36CC48();
      return;
    }

    v44 = *(v42 + 48);
    v45 = sub_22C36D400();
    v1 = v58;
    v46(v45, v22, v58);
    v47 = sub_22C383C78();
    v48(v47);
    memcpy(v62, v56, sizeof(v62));
    sub_22C7F4358(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
    sub_22C37A430();
    sub_22C909F8C();
    v49 = sub_22C36D400();
    v50(v49, v1);
    sub_22C380600();
    sub_22C7F4358(&qword_27D9BAA90, v51);
    sub_22C7E4C18();
    sub_22C909F8C();
    (*v55[10])(&qword_27D9BF110, v8);
    v27 = sub_22C90B66C() ^ v61;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v55[1])
    {
      v52 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
      sub_22C374D84(v0, v53, v54, v52);
      v2 = 0;
      goto LABEL_9;
    }

    v2 = *(v24 + 8 * v28);
    ++v26;
    if (v2)
    {
      v26 = v28;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_22C7F3E64()
{
  sub_22C36BA7C();
  v4 = v3;
  v57 = v5;
  v61 = sub_22C908C5C();
  v6 = sub_22C369824(v61);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  v60 = v11;
  sub_22C36BA0C();
  v59 = sub_22C901FAC();
  v12 = sub_22C369824(v59);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v58 = v15;
  v16 = sub_22C3A5908(&qword_27D9BF0F0, &qword_22C921F58);
  v17 = sub_22C369914(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v20);
  v22 = (v56 - v21);
  v24 = v4 + 64;
  v23 = *(v4 + 64);
  v25 = *(v4 + 32);
  sub_22C36D280();
  sub_22C386B70();
  v26 = 0;
  sub_22C36CB90();
  while (1)
  {
    v62 = v27;
    if (!v2)
    {
      break;
    }

    v28 = v26;
LABEL_8:
    v29 = sub_22C37AD78(v28);
    v30(v29);
    v31 = sub_22C7F4530();
    v32(v31);
    v33 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
    v34 = sub_22C388DBC(v33);
    v35(v34);
    v22[4](v0 + v8, &qword_27D9BF100, v1);
    sub_22C633C54();
    sub_22C36C640(v36, v37, v38, v39);
    sub_22C375DA0();
LABEL_9:
    sub_22C407C2C();
    v40 = sub_22C36BA00();
    v42 = sub_22C3A5908(v40, v41);
    sub_22C36D3E0(v22);
    if (v43)
    {

      MEMORY[0x2318B8B10](v62);
      sub_22C36CC48();
      return;
    }

    v44 = *(v42 + 48);
    v45 = sub_22C36D400();
    v1 = v59;
    v46(v45, v22, v59);
    v47 = sub_22C383C78();
    v48(v47);
    memcpy(v63, v57, sizeof(v63));
    sub_22C371E00();
    sub_22C7F4358(&qword_2814357B0, v49);
    sub_22C37A430();
    sub_22C909F8C();
    v50 = sub_22C36D400();
    v51(v50, v1);
    sub_22C380600();
    sub_22C7F4358(&qword_27D9BAA90, v52);
    sub_22C7E4C18();
    sub_22C909F8C();
    (*v56[10])(&qword_27D9BF100, v8);
    v27 = sub_22C90B66C() ^ v62;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v56[1])
    {
      v53 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
      sub_22C374D84(v0, v54, v55, v53);
      v2 = 0;
      goto LABEL_9;
    }

    v2 = *(v24 + 8 * v28);
    ++v26;
    if (v2)
    {
      v26 = v28;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_22C7F4250()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C7F42A8()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C7F4300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C7F4358(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C7F441C()
{

  return sub_22C909F8C();
}

uint64_t sub_22C7F443C@<X0>(unint64_t a1@<X8>)
{
  *(v1 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v4 = *(v3 - 96);
  result = *(v2 + 48) + a1 * *(v3 - 104);
  v6 = **(v3 - 128);
  v7 = *(v3 - 88);
  return result;
}

uint64_t sub_22C7F4484()
{
  v2 = *(*(v0 - 208) + 24);

  return sub_22C90963C();
}

uint64_t sub_22C7F44A0()
{

  return sub_22C909FFC();
}

void sub_22C7F44C8(uint64_t a1@<X8>)
{
  v1 = *(a1 - 256);
  v2 = *v1;
  v3 = v1[1];
}

uint64_t sub_22C7F44FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(a1 - 256) + 8);

  return sub_22C7EDAF8(v1 - 160, v3);
}

void sub_22C7F4524(uint64_t a1@<X8>)
{
  v1 = *(a1 - 256);
  v3 = *v1;
  v2 = v1[1];
}

uint64_t sub_22C7F4530()
{
  v3 = *(v2 - 256);
  v4 = *(v1 + 56) + *(v3 + 72) * v0;
  v5 = *(v3 + 16);
  v6 = *(v2 - 176);
  result = *(v2 - 184);
  v8 = *(v2 - 304);
  return result;
}

uint64_t sub_22C7F4594()
{
  v3 = *(v0 + 8);

  return sub_22C7EDAF8(v1 - 160, v3);
}

uint64_t sub_22C7F45AC()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_22C7F45C4(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v4 = *v2;
  v3 = v2[1];

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C7F45E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 192);

  return sub_22C7F42A8();
}

uint64_t sub_22C7F45FC()
{
  v3 = *v0;

  return sub_22C4706F0(v1 - 160, v3);
}

void sub_22C7F4614()
{

  JUMPOUT(0x2318B8B10);
}

void sub_22C7F462C()
{

  JUMPOUT(0x2318B8B10);
}

void sub_22C7F4644()
{

  JUMPOUT(0x2318B8B10);
}

void sub_22C7F4674()
{
  v2 = *v0;

  JUMPOUT(0x2318B8B10);
}

void sub_22C7F468C()
{
  v2 = *(v0 + 16);

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C7F46B0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22C7F46E0()
{

  return sub_22C909FFC();
}

void sub_22C7F46FC(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C7F4714@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_22C7F4300(v3, a1);
}

uint64_t sub_22C7F472C()
{
  v2 = *(v0 - 1024);
}

void sub_22C7F4768()
{
  v2 = *(v0 + 16);

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C7F4780()
{

  return sub_22C909F7C();
}

uint64_t sub_22C7F479C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_22C909FFC();
}

void sub_22C7F47B4()
{
  v2 = *(v0 + 16);

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C7F47CC()
{
  v2 = *(v0 - 1240);
}

void sub_22C7F47E4()
{
  v2 = *(v0 + 16);

  JUMPOUT(0x2318B8B10);
}

void sub_22C7F47FC()
{
  v2 = *(v0 + 16);

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C7F484C()
{
  v2 = *(v0 - 168);

  return swift_getEnumCaseMultiPayload();
}

uint64_t *sub_22C7F4864()
{
  sub_22C36FF94(v0 + 2);
  v1 = v0[7];

  sub_22C36FF94(v0 + 8);
  return v0;
}

uint64_t sub_22C7F4894()
{
  sub_22C7F4864();

  return swift_deallocClassInstance();
}

uint64_t sub_22C7F48EC(void *a1)
{
  sub_22C3B0E80();
  sub_22C7FDC08();
  sub_22C7FB64C(v8, v9, v10, v11, v12, v13, v14);
  sub_22C7FDD30();
  if (!v37)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    sub_22C633A28(0, v3, a1);
    sub_22C37B448();
    if (v6)
    {
      sub_22C90B50C();
      sub_22C386898();
      v21 = swift_dynamicCastClass();
      if (!v21)
      {
        swift_unknownObjectRelease();
        v21 = MEMORY[0x277D84F90];
      }

      v22 = *(v21 + 16);

      if (__OFSUB__(v6 >> 1, v5))
      {
        goto LABEL_35;
      }

      if (v22 != (v6 >> 1) - v5)
      {
        goto LABEL_36;
      }

      v20 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v20)
      {
        goto LABEL_12;
      }

      v20 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    while (1)
    {
      v15 = sub_22C3759D0();
      sub_22C46FFFC(v15, v16, v17, v18);
      v20 = v19;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v40 = v1;
      v41 = v20;
      if (v2 >= v3)
      {
        break;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_unknownObjectRelease();
    }

    sub_22C633A28(v3, v2, a1);
    sub_22C7FDCA0();

    v23 = v20 >> 1;
    while (1)
    {
LABEL_14:
      if (v4 == v23)
      {
        swift_unknownObjectRelease();

        return sub_22C36BA00();
      }

      if (v4 >= v23)
      {
        __break(1u);
        goto LABEL_33;
      }

      v24 = (v3 + 16 * v4);
      v26 = *v24;
      v25 = v24[1];
      ++v4;
      a1 = v40;
      v27 = *(v41 + 16);
      if (!v40)
      {
        break;
      }

      v28 = v24[1];

      v29 = sub_22C371510();
      sub_22C7DA844(v29, v30, v31, v27, v32);
      v34 = v33;

      if (v34)
      {
        goto LABEL_29;
      }

LABEL_30:
    }

    v35 = (v41 + 40);
    a1 = (v27 + 1);
    while (1)
    {
      a1 = (a1 - 1);
      if (!a1)
      {
        break;
      }

      v36 = v35 + 2;
      v37 = *(v35 - 1) == v26 && *v35 == v25;
      if (!v37)
      {
        v38 = sub_22C90B4FC();
        v35 = v36;
        if ((v38 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

LABEL_29:
    a1 = &v40;
    sub_22C371510();
    sub_22C7D4160();
    goto LABEL_30;
  }

  return sub_22C36BA00();
}

void sub_22C7F4B3C()
{
  sub_22C36BA7C();
  sub_22C369A48();
  v7 = sub_22C90644C();
  v8 = sub_22C369824(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C36993C();
  MEMORY[0x28223BE20](v11);
  sub_22C370404();
  sub_22C3B0E80();
  sub_22C7FDC08();
  sub_22C7FB714(v12, v13, v14, v15, v16, v17, v18, v19);
  sub_22C370A78();
  if (!v20)
  {
    if (v4 < 0)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v21 = sub_22C380618();
    sub_22C606094(v21, v22, v23);
    sub_22C37B814();
    if (v6)
    {
      sub_22C7FDDB8(v24, v25, v26);
      sub_22C3745F8();
      v31 = sub_22C7FDDA0();
      if (!v31)
      {
        swift_unknownObjectRelease();
        v31 = MEMORY[0x277D84F90];
      }

      v32 = *(v31 + 16);

      sub_22C37BC74();
      if (v40)
      {
        goto LABEL_32;
      }

      sub_22C7FDD04();
      if (!v20)
      {
        goto LABEL_33;
      }

      swift_dynamicCastClass();
      sub_22C7FDDD0();
      if (v6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    while (1)
    {
      v27 = sub_22C37E804();
      sub_22C4700CC(v27, v28, v29, v30);
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      sub_22C7FDCF8();
      if (v33)
      {
        break;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      swift_unknownObjectRelease();
      sub_22C7FDCC4();
    }

    v34 = sub_22C3855B8();
    v37 = sub_22C606094(v34, v35, v36);
    sub_22C380078(v37, v38);

    sub_22C38C134();
    while (1)
    {
      sub_22C386BD4();
      if (v20)
      {
        swift_unknownObjectRelease();

        goto LABEL_29;
      }

      if (v39 == v40)
      {
        __break(1u);
        goto LABEL_30;
      }

      v41 = sub_22C7FDBD0();
      v5(v41);
      sub_22C372E08();
      if (!v3)
      {
        break;
      }

      sub_22C7FDBF8();
      sub_22C7DA91C();
      sub_22C7FDC74();
      if (v0)
      {
        goto LABEL_26;
      }

LABEL_27:
      v45 = sub_22C36C494();
      v46(v45);
    }

    v3 = v2 + 1;
    while (--v3)
    {
      v42 = sub_22C37512C();
      v5(v42);
      sub_22C7FB604(&qword_27D9C02E0, MEMORY[0x277D1D8A0]);
      sub_22C36DB90();
      v43 = sub_22C3892EC();
      v44(v43);
      v0 = v1;
      if (v2)
      {
        goto LABEL_27;
      }
    }

    v2 = 0;
LABEL_26:
    sub_22C37FB0C();
    sub_22C7D4268();
    goto LABEL_27;
  }

LABEL_29:
  sub_22C379B84();
  sub_22C36CC48();
}

uint64_t sub_22C7F4DE0(uint64_t a1)
{
  v4 = sub_22C3B0E80();
  v5 = sub_22C7FB714(&v24, a1, 0, 1, v4, type metadata accessor for _PromptToolData, sub_22C7FCD04, sub_22C7FBD94);
  v6 = *(a1 + 16);
  v7 = v24;
  if (v24 != v6)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_16;
    }

    sub_22C6060AC(0, v24, a1);
    sub_22C37B448();
    if (v2)
    {
      sub_22C90B50C();
      sub_22C386898();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = MEMORY[0x277D84F90];
      }

      v15 = *(v14 + 16);

      if (__OFSUB__(v2 >> 1, v1))
      {
        goto LABEL_17;
      }

      if (v15 != (v2 >> 1) - v1)
      {
        goto LABEL_18;
      }

      v13 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v13)
      {
        goto LABEL_12;
      }

      v13 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    while (1)
    {
      v8 = sub_22C3759D0();
      sub_22C4700F8(v8, v9, v10, v11);
      v13 = v12;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v25 = v5;
      v26 = v13;
      if (v6 >= v7)
      {
        break;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      swift_unknownObjectRelease();
    }

    v16 = sub_22C6060AC(v7, v6, a1);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_22C4A78F8(v16, v18, v20, v22);
    swift_unknownObjectRelease();

    return v25;
  }

  return v5;
}

void sub_22C7F4FB4()
{
  sub_22C36BA7C();
  sub_22C369A48();
  v7 = sub_22C90430C();
  v8 = sub_22C369824(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C36993C();
  MEMORY[0x28223BE20](v11);
  sub_22C370404();
  sub_22C3B0E80();
  sub_22C7FDC08();
  sub_22C7FB714(v12, v13, v14, v15, v16, v17, v18, v19);
  sub_22C370A78();
  if (!v20)
  {
    if (v4 < 0)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v21 = sub_22C380618();
    sub_22C6060F4(v21, v22, v23);
    sub_22C37B814();
    if (v6)
    {
      sub_22C7FDDB8(v24, v25, v26);
      sub_22C3745F8();
      v31 = sub_22C7FDDA0();
      if (!v31)
      {
        swift_unknownObjectRelease();
        v31 = MEMORY[0x277D84F90];
      }

      v32 = *(v31 + 16);

      sub_22C37BC74();
      if (v40)
      {
        goto LABEL_32;
      }

      sub_22C7FDD04();
      if (!v20)
      {
        goto LABEL_33;
      }

      swift_dynamicCastClass();
      sub_22C7FDDD0();
      if (v6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    while (1)
    {
      v27 = sub_22C37E804();
      sub_22C470150(v27, v28, v29, v30);
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      sub_22C7FDCF8();
      if (v33)
      {
        break;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      swift_unknownObjectRelease();
      sub_22C7FDCC4();
    }

    v34 = sub_22C3855B8();
    v37 = sub_22C6060F4(v34, v35, v36);
    sub_22C380078(v37, v38);

    sub_22C38C134();
    while (1)
    {
      sub_22C386BD4();
      if (v20)
      {
        swift_unknownObjectRelease();

        goto LABEL_29;
      }

      if (v39 == v40)
      {
        __break(1u);
        goto LABEL_30;
      }

      v41 = sub_22C7FDBD0();
      v5(v41);
      sub_22C372E08();
      if (!v3)
      {
        break;
      }

      sub_22C7FDBF8();
      sub_22C7DB73C();
      sub_22C7FDC74();
      if (v0)
      {
        goto LABEL_26;
      }

LABEL_27:
      v45 = sub_22C36C494();
      v46(v45);
    }

    v3 = v2 + 1;
    while (--v3)
    {
      v42 = sub_22C37512C();
      v5(v42);
      sub_22C7FB604(&qword_27D9BC808, MEMORY[0x277D85578]);
      sub_22C36DB90();
      v43 = sub_22C3892EC();
      v44(v43);
      v0 = v1;
      if (v2)
      {
        goto LABEL_27;
      }
    }

    v2 = 0;
LABEL_26:
    sub_22C37FB0C();
    sub_22C7D4BE0();
    goto LABEL_27;
  }

LABEL_29:
  sub_22C379B84();
  sub_22C36CC48();
}

void sub_22C7F5258()
{
  sub_22C36BA7C();
  sub_22C369A48();
  v7 = sub_22C901FAC();
  v8 = sub_22C369824(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C36993C();
  MEMORY[0x28223BE20](v11);
  sub_22C370404();
  sub_22C3B0E80();
  sub_22C7FDC08();
  sub_22C7FB714(v12, v13, v14, v15, v16, v17, v18, v19);
  sub_22C370A78();
  if (!v20)
  {
    if (v4 < 0)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v21 = sub_22C380618();
    sub_22C60610C(v21, v22, v23);
    sub_22C37B814();
    if (v6)
    {
      sub_22C7FDDB8(v24, v25, v26);
      sub_22C3745F8();
      v31 = sub_22C7FDDA0();
      if (!v31)
      {
        swift_unknownObjectRelease();
        v31 = MEMORY[0x277D84F90];
      }

      v32 = *(v31 + 16);

      sub_22C37BC74();
      if (v40)
      {
        goto LABEL_32;
      }

      sub_22C7FDD04();
      if (!v20)
      {
        goto LABEL_33;
      }

      swift_dynamicCastClass();
      sub_22C7FDDD0();
      if (v6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    while (1)
    {
      v27 = sub_22C37E804();
      sub_22C47017C(v27, v28, v29, v30);
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      sub_22C7FDCF8();
      if (v33)
      {
        break;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      swift_unknownObjectRelease();
      sub_22C7FDCC4();
    }

    v34 = sub_22C3855B8();
    v37 = sub_22C60610C(v34, v35, v36);
    sub_22C380078(v37, v38);

    sub_22C38C134();
    while (1)
    {
      sub_22C386BD4();
      if (v20)
      {
        swift_unknownObjectRelease();

        goto LABEL_29;
      }

      if (v39 == v40)
      {
        __break(1u);
        goto LABEL_30;
      }

      v41 = sub_22C7FDBD0();
      v5(v41);
      sub_22C372E08();
      if (!v3)
      {
        break;
      }

      sub_22C7FDBF8();
      sub_22C7DBC48();
      sub_22C7FDC74();
      if (v0)
      {
        goto LABEL_26;
      }

LABEL_27:
      v45 = sub_22C36C494();
      v46(v45);
    }

    v3 = v2 + 1;
    while (--v3)
    {
      v42 = sub_22C37512C();
      v5(v42);
      sub_22C7FB604(&qword_27D9BAA28, MEMORY[0x277D1C338]);
      sub_22C36DB90();
      v43 = sub_22C3892EC();
      v44(v43);
      v0 = v1;
      if (v2)
      {
        goto LABEL_27;
      }
    }

    v2 = 0;
LABEL_26:
    sub_22C37FB0C();
    sub_22C7D4F14();
    goto LABEL_27;
  }

LABEL_29:
  sub_22C379B84();
  sub_22C36CC48();
}

uint64_t sub_22C7F54FC(uint64_t *a1)
{
  sub_22C3B0E80();
  sub_22C7FDC08();
  sub_22C7FB64C(v8, v9, v10, v11, v12, v13, v14);
  sub_22C7FDD30();
  if (!v15)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_22C633A28(0, v3, a1);
    sub_22C37B448();
    if (v6)
    {
      sub_22C90B50C();
      sub_22C386898();
      v22 = swift_dynamicCastClass();
      if (!v22)
      {
        swift_unknownObjectRelease();
        v22 = MEMORY[0x277D84F90];
      }

      v23 = *(v22 + 16);

      if (__OFSUB__(v6 >> 1, v5))
      {
        goto LABEL_28;
      }

      if (v23 != (v6 >> 1) - v5)
      {
        goto LABEL_29;
      }

      v21 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v21)
      {
        goto LABEL_12;
      }

      v21 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    while (1)
    {
      v16 = sub_22C3759D0();
      sub_22C4701A8(v16, v17, v18, v19);
      v21 = v20;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v31 = v1;
      v32 = v21;
      if (v2 >= v3)
      {
        break;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      swift_unknownObjectRelease();
    }

    sub_22C633A28(v3, v2, a1);
    sub_22C7FDCA0();

    v24 = v21 >> 1;
    while (1)
    {
LABEL_14:
      if (v4 == v24)
      {
        swift_unknownObjectRelease();

        return sub_22C36BA00();
      }

      if (v4 >= v24)
      {
        __break(1u);
        goto LABEL_26;
      }

      v25 = *(v3 + 8 * v4++);
      v26 = (v32 + 32);
      v27 = *(v32 + 16);
      if (v31)
      {
        sub_22C7DD10C(v26, v25, v27, (v31 + 16));
        if (v28)
        {
          goto LABEL_23;
        }
      }

      else
      {
        while (v27)
        {
          v29 = *v26++;
          --v27;
          if (v29 == v25)
          {
            goto LABEL_14;
          }
        }

LABEL_23:
        a1 = &v31;
        sub_22C7D5954(v25);
      }
    }
  }

  return sub_22C36BA00();
}

void sub_22C7F56F4()
{
  sub_22C36BA7C();
  sub_22C369A48();
  v7 = sub_22C9037EC();
  v8 = sub_22C369824(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C36993C();
  MEMORY[0x28223BE20](v11);
  sub_22C370404();
  sub_22C3B0E80();
  sub_22C7FDC08();
  sub_22C7FB714(v12, v13, v14, v15, v16, v17, v18, v19);
  sub_22C370A78();
  if (!v20)
  {
    if (v4 < 0)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v21 = sub_22C380618();
    sub_22C60607C(v21, v22, v23);
    sub_22C37B814();
    if (v6)
    {
      sub_22C7FDDB8(v24, v25, v26);
      sub_22C3745F8();
      v31 = sub_22C7FDDA0();
      if (!v31)
      {
        swift_unknownObjectRelease();
        v31 = MEMORY[0x277D84F90];
      }

      v32 = *(v31 + 16);

      sub_22C37BC74();
      if (v40)
      {
        goto LABEL_32;
      }

      sub_22C7FDD04();
      if (!v20)
      {
        goto LABEL_33;
      }

      swift_dynamicCastClass();
      sub_22C7FDDD0();
      if (v6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    while (1)
    {
      v27 = sub_22C37E804();
      sub_22C46FEFC(v27, v28, v29, v30);
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      sub_22C7FDCF8();
      if (v33)
      {
        break;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      swift_unknownObjectRelease();
      sub_22C7FDCC4();
    }

    v34 = sub_22C3855B8();
    v37 = sub_22C60607C(v34, v35, v36);
    sub_22C380078(v37, v38);

    sub_22C38C134();
    while (1)
    {
      sub_22C386BD4();
      if (v20)
      {
        swift_unknownObjectRelease();

        goto LABEL_29;
      }

      if (v39 == v40)
      {
        __break(1u);
        goto LABEL_30;
      }

      v41 = sub_22C7FDBD0();
      v5(v41);
      sub_22C372E08();
      if (!v3)
      {
        break;
      }

      sub_22C7FDBF8();
      sub_22C7DD200();
      sub_22C7FDC74();
      if (v0)
      {
        goto LABEL_26;
      }

LABEL_27:
      v46 = sub_22C36C494();
      v47(v46);
    }

    v3 = v2 + 1;
    while (--v3)
    {
      v42 = sub_22C37512C();
      v5(v42);
      sub_22C373A7C();
      sub_22C7FB604(&qword_281435760, v43);
      sub_22C36DB90();
      v44 = sub_22C3892EC();
      v45(v44);
      v0 = v1;
      if (v2)
      {
        goto LABEL_27;
      }
    }

    v2 = 0;
LABEL_26:
    sub_22C37FB0C();
    sub_22C7D5A80();
    goto LABEL_27;
  }

LABEL_29:
  sub_22C379B84();
  sub_22C36CC48();
}

void sub_22C7F5988()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_22C369A48();
  v7 = sub_22C9037EC();
  v8 = sub_22C369824(v7);
  v56 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = sub_22C3B0E80();
  sub_22C7FB848(&v59, v0, v6, v4, v2, 0, 1, v18);
  v20 = v19;
  v21 = v2 >> 1;
  v22 = v59;
  if (v59 != v2 >> 1)
  {
    if (v59 < v4)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v57 = v2 >> 1;
    v55 = v6;
    v25 = sub_22C3E1F20(v4);
    v27 = v26;
    v58 = v17;
    v53 = v20;
    if (v26)
    {
      v54 = v24;
      v52 = v23;
      sub_22C90B50C();
      swift_unknownObjectRetain_n();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        swift_unknownObjectRelease();
        v32 = MEMORY[0x277D84F90];
      }

      v33 = *(v32 + 16);

      if (__OFSUB__(v27 >> 1, v54))
      {
        __break(1u);
      }

      else if (v33 == (v27 >> 1) - v54)
      {
        v6 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v20 = v53;
        v17 = v58;
        if (v6)
        {
          goto LABEL_20;
        }

        v6 = MEMORY[0x277D84F90];
LABEL_19:
        swift_unknownObjectRelease();
LABEL_20:
        v60[0] = v20;
        v60[1] = v6;
        if (v57 >= v22)
        {
          v52 = sub_22C3E1F20(v22);
          v54 = v34;
          v2 = v35;
          v37 = v36;

          swift_unknownObjectRelease();
          v55 = (v37 >> 1);
          v4 = v56 + 16;
          for (i = (v56 + 8); ; (*i)(v58, v7))
          {
            sub_22C386BD4();
            if (v41)
            {
              swift_unknownObjectRelease();

              goto LABEL_35;
            }

            if (v39 == v40)
            {
              __break(1u);
              goto LABEL_36;
            }

            v42 = v56;
            v43 = *(v56 + 72);
            v57 = v2;
            v6 = *(v56 + 16);
            v6(v17, v54 + v43 * v2, v7);
            v0 = v60[0];
            v44 = *(v42 + 80);
            sub_22C37BEE8();
            v47 = v45 + v46;
            if (!v0)
            {
              break;
            }

            sub_22C7DD200();
            v49 = v48;

            if (v49)
            {
              goto LABEL_32;
            }

LABEL_33:
            v17 = v58;
            v2 = v57 + 1;
          }

          v50 = *(v45 + 16) + 1;
          while (--v50)
          {
            v6(v14, v47, v7);
            sub_22C373A7C();
            sub_22C7FB604(&qword_281435760, v51);
            v0 = sub_22C90A0BC();
            (*i)(v14, v7);
            v47 += v43;
            if (v0)
            {
              goto LABEL_33;
            }
          }

LABEL_32:
          v0 = v60;
          sub_22C7D5A80();
          goto LABEL_33;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      swift_unknownObjectRelease();
      v20 = v53;
      v24 = v54;
      v17 = v58;
      v23 = v52;
    }

    sub_22C46FEFC(v25, v23, v24, v27);
    v6 = v28;
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
LABEL_3:
    sub_22C46FEFC(v0, v6, v4, v2);
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  sub_22C90B50C();
  swift_unknownObjectRetain_n();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
    v29 = MEMORY[0x277D84F90];
  }

  v30 = *(v29 + 16);

  if (__OFSUB__(v21, v4))
  {
    goto LABEL_38;
  }

  if (v30 != v21 - v4)
  {
LABEL_39:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v31 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v31)
  {
    goto LABEL_12;
  }

LABEL_35:
  sub_22C36CC48();
}

uint64_t sub_22C7F5E00()
{
  sub_22C9093EC();
  sub_22C3858B4();
  v0 = sub_22C90AD9C();

  v1 = sub_22C3A5CEC(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;

  if (!v7)
  {
    return 0;
  }

  v8 = MEMORY[0x2318B76D0](v1, v3, v5, v7);

  return v8;
}

void sub_22C7F5ED0()
{
  sub_22C36BA7C();
  v66 = sub_22C90981C();
  v1 = sub_22C369824(v66);
  v62 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v64 = v6 - v5;
  v63 = sub_22C90941C();
  v7 = sub_22C369824(v63);
  v56 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v65 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v55 = &v55 - v14;
  v71 = 8227;
  v72 = 0xE200000000000000;
  v15 = sub_22C908E7C();
  MEMORY[0x2318B7850](v15);

  MEMORY[0x2318B7850](10, 0xE100000000000000);
  v57 = v0;
  v69 = sub_22C908E8C();
  v70 = v16;
  v61 = sub_22C3858B4();
  v17 = sub_22C90AD9C();

  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = (v17 + 56);
    do
    {
      v20 = *(v19 - 3);
      v21 = *(v19 - 2);
      v22 = *(v19 - 1);
      v23 = *v19;
      v69 = 8227;
      v70 = 0xE200000000000000;

      v24 = MEMORY[0x2318B76D0](v20, v21, v22, v23);
      v26 = v25;

      MEMORY[0x2318B7850](v24, v26);

      MEMORY[0x2318B7850](10, 0xE100000000000000);
      MEMORY[0x2318B7850](v69, v70);

      v19 += 4;
      --v18;
    }

    while (v18);
  }

  v69 = 543581540;
  v70 = 0xE400000000000000;
  v27 = sub_22C908E7C();
  MEMORY[0x2318B7850](v27);

  MEMORY[0x2318B7850](40, 0xE100000000000000);
  MEMORY[0x2318B7850](v69, v70);

  v28 = sub_22C908DCC();
  v29 = *(v28 + 16);
  if (v29)
  {
    v68 = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v30 = 0;
    v31 = v68;
    v32 = *(v62 + 80);
    sub_22C36BA94();
    v60 = v28 + v33;
    v58 = (v56 + 8);
    v59 = v34 + 16;
    v35 = (v34 + 8);
    while (v30 < *(v28 + 16))
    {
      (*(v62 + 16))(v64, v60 + *(v62 + 72) * v30, v66);
      v69 = sub_22C9097DC();
      v70 = v36;
      v37 = MEMORY[0x2318B7850](8250, 0xE200000000000000);
      MEMORY[0x2318B6CE0](v37);
      v67[0] = sub_22C9093EC();
      v67[1] = v38;
      sub_22C90AD9C();
      sub_22C37FF48();

      if (v68)
      {
        v39 = &v67[4 * v68];
        v40 = *v39;
        v41 = v39[1];
        v42 = v39[2];
        v43 = v39[3];

        v44 = MEMORY[0x2318B76D0](v40, v41, v42, v43);
        v46 = v45;
      }

      else
      {

        v44 = 0;
        v46 = 0xE000000000000000;
      }

      (*v58)(v65, v63);
      MEMORY[0x2318B7850](v44, v46);

      v47 = v69;
      v48 = v70;
      (*v35)(v64, v66);
      v68 = v31;
      v49 = *(v31 + 16);
      if (v49 >= *(v31 + 24) >> 1)
      {
        sub_22C3B5E2C();
        v31 = v68;
      }

      ++v30;
      *(v31 + 16) = v49 + 1;
      v50 = v31 + 16 * v49;
      *(v50 + 32) = v47;
      *(v50 + 40) = v48;
      if (v29 == v30)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
LABEL_15:
    v69 = v31;
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3F035C();
    sub_22C90A04C();

    v51 = sub_22C36BAFC();
    MEMORY[0x2318B7850](v51);

    v69 = 0x203E2D2029;
    v70 = 0xE500000000000000;
    v53 = v55;
    MEMORY[0x2318B6290](v52);
    sub_22C7F5E00();
    (*(v56 + 8))(v53, v63);
    v54 = sub_22C36BAFC();
    MEMORY[0x2318B7850](v54);

    MEMORY[0x2318B7850](v69, v70);

    sub_22C36CC48();
  }
}

uint64_t sub_22C7F646C()
{
  v0 = sub_22C9036EC();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C90371C();
  sub_22C7FDC18();
  sub_22C7FB604(v9, v10);
  sub_22C909F8C();
  (*(v3 + 8))(v8, v0);
  sub_22C90374C();
  v11 = sub_22C36BA00();
  sub_22C47180C(v11, v12);
}

uint64_t sub_22C7F657C()
{
  v0 = sub_22C9036EC();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369ABC();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  sub_22C90371C();
  sub_22C90371C();
  v12 = sub_22C9036DC();
  v13 = *(v3 + 8);
  v13(v8, v0);
  v13(v11, v0);
  if (v12)
  {
    sub_22C90374C();
    sub_22C90374C();
    sub_22C37FF48();
    sub_22C46D0B8();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_22C7F66D8()
{
  v0 = sub_22C9036EC();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C90B62C();
  sub_22C90371C();
  sub_22C7FDC18();
  sub_22C7FB604(v9, v10);
  sub_22C909F8C();
  (*(v3 + 8))(v8, v0);
  v11 = sub_22C90374C();
  sub_22C47180C(v13, v11);

  return sub_22C90B66C();
}

uint64_t sub_22C7F6808()
{
  sub_22C90B62C();
  sub_22C7F646C();
  return sub_22C90B66C();
}

uint64_t sub_22C7F6848(uint64_t a1)
{
  v2 = sub_22C7FB3F0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C7F6884(uint64_t a1)
{
  v2 = sub_22C7FB3F0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t ToolRetrievalService.__allocating_init(clientApplicationIdentifier:toolboxResources:toolkitCache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_22C908AEC();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14, a3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v19 = *(v5 + 48);
  v20 = *(v5 + 52);
  v21 = swift_allocObject();
  sub_22C7F6A9C(a1, a2, v16, sub_22C7F6A80, v18);
  return v21;
}

uint64_t sub_22C7F6A20@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = ToolboxResources.makeQueryableToolbox(toolkitCache:)(a1);
  if (!v2)
  {
    v5 = result;
    sub_22C90717C();
    result = sub_22C9071BC();
    a2[3] = result;
    a2[4] = &off_283FC0758;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_22C7F6A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v12 = sub_22C369914(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C90A75C();
  sub_22C7FDC90();
  sub_22C36C640(v15, v16, v17, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a1;
  v19[7] = a2;

  sub_22C7FDD10();
  sub_22C82BB30();
  *(v5 + 16) = v20;
  sub_22C7FDC90();
  sub_22C36C640(v21, v22, v23, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a4;
  v25[5] = a5;
  sub_22C7FDD10();
  sub_22C82BD98();
  *(v5 + 24) = v26;
  v27 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20ToolRetrievalService_toolbox;
  v28 = sub_22C908AEC();
  sub_22C36985C(v28);
  (*(v29 + 32))(v5 + v27, a3);
  return v5;
}

uint64_t sub_22C7F6C24(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22C7F6CDC;

  return sub_22C7FE8B8();
}

uint64_t sub_22C7F6CDC()
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

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_22C7F6E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22C7F6E30, 0, 0);
}

uint64_t sub_22C7F6E30()
{
  sub_22C36FB38();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  (*(v0 + 24))();
  sub_22C369A24();

  return v3();
}

uint64_t sub_22C7F6EB4()
{
  sub_22C369980();
  v3 = v2;
  v1[27] = v4;
  v1[28] = v0;
  v1[25] = v5;
  v1[26] = v6;
  v1[24] = v7;
  v8 = sub_22C908EAC();
  v1[29] = v8;
  sub_22C3699B8(v8);
  v1[30] = v9;
  v11 = *(v10 + 64);
  v1[31] = sub_22C3699D4();
  v12 = sub_22C9037EC();
  v1[32] = v12;
  sub_22C3699B8(v12);
  v1[33] = v13;
  v15 = *(v14 + 64);
  v1[34] = sub_22C36D0D4();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v16 = sub_22C9039AC();
  v1[37] = v16;
  sub_22C3699B8(v16);
  v1[38] = v17;
  v19 = *(v18 + 64);
  v1[39] = sub_22C36D0D4();
  v1[40] = swift_task_alloc();
  v20 = sub_22C9036EC();
  v1[41] = v20;
  sub_22C3699B8(v20);
  v1[42] = v21;
  v23 = *(v22 + 64);
  v1[43] = sub_22C36D0D4();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v24 = type metadata accessor for LooselyComparableRetrievedTool(0);
  sub_22C3699B8(v24);
  v1[46] = v25;
  v27 = *(v26 + 64);
  v1[47] = sub_22C36D0D4();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v28 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v28);
  v30 = *(v29 + 64);
  v1[51] = sub_22C36D0D4();
  v31 = swift_task_alloc();
  v32 = *v3;
  v1[52] = v31;
  v1[53] = v32;
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_22C7F7130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36FB38();
  v19 = *(v18[28] + 16);
  v20 = *(MEMORY[0x277D857C8] + 4);
  v21 = swift_task_alloc();
  v18[54] = v21;
  v22 = sub_22C3A5908(&qword_27D9C0388, &qword_22C927078);
  v23 = sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  v18[55] = v23;
  *v21 = v18;
  v21[1] = sub_22C7F7218;
  v27 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v18 + 21, v19, v22, v23, v27, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22C7F7218()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = *(v2 + 432);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 448) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C7F7318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 168);
  v20 = *(v19 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v159 = MEMORY[0x277D84F90];
    v22 = sub_22C38390C();
    sub_22C3B7D98(v22, v20, 0);
    v23 = v159;
    v24 = v19 + 32;
    do
    {
      v153 = v23;
      v156 = v20;
      v26 = *(v18 + 416);
      v25 = *(v18 + 424);
      v27 = *(v18 + 408);
      v29 = *(v18 + 208);
      v28 = *(v18 + 216);
      v31 = *(v18 + 192);
      v30 = *(v18 + 200);
      v150 = v24;
      sub_22C378A4C(v24, v18 + 16);
      v32 = sub_22C90A75C();
      sub_22C7FDC90();
      sub_22C36C640(v33, v34, v35, v36);
      sub_22C378A4C(v18 + 16, v18 + 56);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      sub_22C36C730((v18 + 56), (v37 + 4));
      v37[9] = v31;
      v37[10] = v30;
      v37[11] = v25;
      v37[12] = v29;
      v37[13] = v28;
      sub_22C7FB53C(v26, v27);
      LODWORD(v27) = sub_22C370B74(v27, 1, v32);

      v38 = *(v18 + 408);
      if (v27 == 1)
      {
        sub_22C3FC848(*(v18 + 408));
      }

      else
      {
        sub_22C90A74C();
        (*(*(v32 - 8) + 8))(v38, v32);
      }

      v39 = v37[2];
      v40 = v37[3];
      swift_unknownObjectRetain();

      if (v39)
      {
        swift_getObjectType();
        v41 = sub_22C90A6DC();
        v43 = v42;
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      sub_22C3FC848(*(v18 + 416));
      if (v43 | v41)
      {
        *(v18 + 96) = 0;
        *(v18 + 104) = 0;
        *(v18 + 112) = v41;
        *(v18 + 120) = v43;
      }

      v44 = swift_task_create();
      sub_22C36FF94((v18 + 16));
      v23 = v153;
      v46 = *(v153 + 16);
      v45 = *(v153 + 24);
      if (v46 >= v45 >> 1)
      {
        v47 = sub_22C381848(v45);
        sub_22C3B7D98(v47, v46 + 1, 1);
        v23 = v153;
      }

      *(v23 + 16) = v46 + 1;
      *(v23 + 8 * v46 + 32) = v44;
      v24 = v150 + 40;
      v20 = v156 - 1;
    }

    while (v156 != 1);

    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v56 = *(v18 + 168);

    v23 = MEMORY[0x277D84F90];
  }

  *(v18 + 456) = v23;
  v57 = *(v23 + 16);
  *(v18 + 480) = 0;
  *(v18 + 488) = v21;
  *(v18 + 464) = v57;
  *(v18 + 472) = 0;
  if (v57)
  {
    if (*(v23 + 16))
    {
      *(v18 + 496) = *(v23 + 32);
      v58 = *(MEMORY[0x277D857C8] + 4);

      v59 = swift_task_alloc();
      *(v18 + 504) = v59;
      *v59 = v18;
      sub_22C3834B8(v59);
      sub_22C377448();

      return MEMORY[0x282200430](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

LABEL_56:
    __break(1u);
    return MEMORY[0x282200430](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v60 = *(v21 + 16);
  if (v60)
  {
    v61 = *(v18 + 368);
    v62 = *(v18 + 264);
    v63 = sub_22C38390C();
    sub_22C3B60C0(v63, v60, 0);
    v64 = 0;
    v65 = v21;
    v66 = *(v61 + 80);
    sub_22C36BA94();
    v68 = v21 + v67;
    v69 = (v62 + 32);
    while (v64 < *(v21 + 16))
    {
      (*(*(v18 + 264) + 16))(*(v18 + 288), v68 + *(*(v18 + 368) + 72) * v64, *(v18 + 256));
      v71 = *(v21 + 16);
      v70 = *(v21 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_22C381848(v70);
        sub_22C375CCC();
        sub_22C3B60C0(v78, v79, v80);
      }

      v72 = *(v18 + 288);
      v73 = *(v18 + 256);
      v74 = *(v18 + 264);
      ++v64;
      *(v21 + 16) = v71 + 1;
      v75 = *(v74 + 80);
      sub_22C37BEE8();
      v48 = (*v69)(v21 + v76 + *(v77 + 72) * v71);
      if (v60 == v64)
      {
        v157 = *(v21 + 16);
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  v157 = 0;
  v65 = v21;
LABEL_29:
  v81 = 0;
  v82 = *(v18 + 264);
  v83 = *(v18 + 240);
  v148 = *(v18 + 224);
  v154 = (*(v18 + 336) + 88);
  v151 = *MEMORY[0x277D1ECE0];
  v142 = *MEMORY[0x277D1ECE8];
  v141 = *MEMORY[0x277D1ECD8];
  v137 = *MEMORY[0x277D1ECD0];
  v84 = (v83 + 32);
  v85 = (v83 + 8);
  v136 = *MEMORY[0x277D1ECF8];
  v144 = (v82 + 8);
  v139 = (v82 + 32);
  v140 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v157 == v81)
    {
      v124 = *(v18 + 408);
      v123 = *(v18 + 416);
      v126 = *(v18 + 392);
      v125 = *(v18 + 400);
      v128 = *(v18 + 376);
      v127 = *(v18 + 384);
      v129 = *(v18 + 360);
      v143 = *(v18 + 352);
      v145 = *(v18 + 344);
      v146 = *(v18 + 320);
      v147 = *(v18 + 312);
      v149 = *(v18 + 288);
      v152 = *(v18 + 280);
      v155 = *(v18 + 272);
      v158 = *(v18 + 248);

      sub_22C7F56F4();

      v130 = *(v18 + 8);
      sub_22C36BAFC();
      sub_22C377448();

      __asm { BRAA            X3, X16 }
    }

    if (v81 >= *(v65 + 16))
    {
      break;
    }

    v86 = *(v18 + 344);
    v87 = *(v18 + 328);
    v88 = *(v18 + 280);
    sub_22C7FDCE4();
    v91 = v90 & ~v89;
    v93 = *(v92 + 56);
    v94(v88, v65 + v91 + v93 * v81);
    sub_22C90371C();
    v95 = *v154;
    v96 = sub_22C36ECB4();
    v98 = v97(v96);
    if (v98 == v151)
    {
      goto LABEL_35;
    }

    if (v98 == v142)
    {
LABEL_42:
      (*(*(v18 + 336) + 8))(*(v18 + 344), *(v18 + 328));
LABEL_43:
      v138 = *v139;
      (*v139)(*(v18 + 272), *(v18 + 280), *(v18 + 256));
      v112 = v140;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = *(v140 + 16);
        v114 = sub_22C38390C();
        sub_22C3B60C0(v114, v115, 1);
        v112 = v140;
      }

      v117 = *(v112 + 16);
      v116 = *(v112 + 24);
      if (v117 >= v116 >> 1)
      {
        sub_22C381848(v116);
        sub_22C375CCC();
        sub_22C3B60C0(v120, v121, v122);
        v112 = v140;
      }

      ++v81;
      v118 = *(v18 + 272);
      v119 = *(v18 + 256);
      *(v112 + 16) = v117 + 1;
      v140 = v112;
      v138(v112 + v91 + v117 * v93, v118, v119);
    }

    else
    {
      if (v98 != v141)
      {
        if (v98 != v137 && v98 != v136)
        {
          goto LABEL_52;
        }

        goto LABEL_42;
      }

LABEL_35:
      v99 = *(v18 + 344);
      v100 = *(v18 + 328);
      v101 = *(v18 + 248);
      v102 = *(v18 + 232);
      v103 = sub_22C38C41C();
      v104(v103);
      v105 = *v84;
      v106 = sub_22C7FDBF8();
      v107(v106);
      LOBYTE(v99) = sub_22C908A5C();
      v108 = *v85;
      v109 = sub_22C36ECB4();
      v110(v109);
      if (v99)
      {
        goto LABEL_43;
      }

      (*v144)(*(v18 + 280), *(v18 + 256));
      ++v81;
    }
  }

  __break(1u);
LABEL_52:
  v133 = *(v18 + 328);
  sub_22C377448();

  return sub_22C90B4EC();
}

uint64_t sub_22C7F7B20()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 504);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 512) = v0;

  if (v0)
  {
    v9 = *(v3 + 456);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C7F7C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = (v18 + 19);
  v251 = v18[20];
  v20 = v251[2];
  v21 = MEMORY[0x277D84F90];
  v232 = v18[19];
  if (v20)
  {
    v22 = v18[33];
    v18[22] = MEMORY[0x277D84F90];

    sub_22C3B7D40(0, v20, 0);
    v18 = v296;
    v23 = 0;
    v21 = v296[22];
    v24 = *(v22 + 80);
    v25 = v251;
    sub_22C36BA94();
    v27 = v251 + v26;
    do
    {
      if (v23 >= v25[2])
      {
        goto LABEL_96;
      }

      (*(v18[33] + 16))(v18[47], &v27[*(v18[33] + 72) * v23], v18[32]);
      v28 = v21;
      v18[22] = v21;
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_22C3B7D40(v29 > 1, v30 + 1, 1);
        v18 = v296;
        v28 = *(v19 + 24);
      }

      v32 = v18[46];
      v31 = v18[47];
      ++v23;
      *(v28 + 16) = v30 + 1;
      v33 = *(v32 + 80);
      sub_22C37BEE8();
      v21 = v34;
      v36 = *(v35 + 72);
      sub_22C36B7A0();
      sub_22C7FDB44(v37, v38);
      v25 = v251;
    }

    while (v20 != v23);
  }

  v238 = v19;
  v241 = v19 - 24;
  v39 = v18[60];
  v40 = v18[61];
  v254 = v21;
  v258 = *(v21 + 16);

  v41 = 0;
  v244 = v39;
  v229 = v39;
  while (1)
  {
    if (v41 == v258)
    {
      v114 = v18[62];
      v115 = v296[61];

      v116 = v296;

      v117 = v296[58];
      v118 = v296[59] + 1;
      v296[60] = v39;
      v296[61] = v40;
      v296[59] = v118;
      isUniquelyReferenced_native = v296[57];
      if (v118 == v117)
      {

        v119 = *(v40 + 16);
        v120 = MEMORY[0x277D84F90];
        v248 = v40;
        if (!v119)
        {
          goto LABEL_69;
        }

        v121 = v39;
        v18 = v296[46];
        v122 = v296[33];
        v298 = MEMORY[0x277D84F90];
        v123 = sub_22C38390C();
        sub_22C3B60C0(v123, v119, 0);
        v116 = v296;
        v120 = v298;
        v124 = 0;
        v125 = *(v18 + 80);
        sub_22C36BA94();
        v127 = v40 + v126;
        while (v124 < *(v40 + 16))
        {
          (*(v116[33] + 16))(v116[36], v127 + *(v116[46] + 72) * v124, v116[32]);
          v129 = *(v298 + 16);
          v128 = *(v298 + 24);
          if (v129 >= v128 >> 1)
          {
            sub_22C3B60C0(v128 > 1, v129 + 1, 1);
            v116 = v296;
          }

          v130 = v116[36];
          v131 = v116[32];
          v132 = v116[33];
          ++v124;
          *(v298 + 16) = v129 + 1;
          v133 = *(v132 + 80);
          sub_22C37BEE8();
          isUniquelyReferenced_native = (*(v122 + 32))(v298 + v134 + *(v135 + 72) * v129);
          v40 = v248;
          if (v119 == v124)
          {
            v39 = v121;
LABEL_69:
            v138 = 0;
            v139 = v116[42];
            v140 = v116[33];
            v141 = v116[30];
            v286 = v116[28];
            v295 = *(v120 + 16);
            v283 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20ToolRetrievalService_toolbox;
            v292 = (v139 + 88);
            v289 = *MEMORY[0x277D1ECE0];
            LODWORD(v265) = *MEMORY[0x277D1ECE8];
            LODWORD(v262) = *MEMORY[0x277D1ECD8];
            v278 = (v139 + 96);
            LODWORD(v244) = *MEMORY[0x277D1ECD0];
            v142 = (v141 + 8);
            LODWORD(v241) = *MEMORY[0x277D1ECF8];
            v268 = (v140 + 8);
            v273 = v141 + 32;
            v255 = (v140 + 32);
            v259 = MEMORY[0x277D84F90];
            while (2)
            {
              while (2)
              {
                if (v295 == v138)
                {
                  v213 = v116[51];
                  v212 = v116[52];
                  v215 = v116[49];
                  v214 = v116[50];
                  v217 = v116[47];
                  v216 = v116[48];
                  v218 = v116;
                  v219 = v116[45];
                  v271 = v218[44];
                  v276 = v218[43];
                  v281 = v218[40];
                  v284 = v218[39];
                  v287 = v218[36];
                  v290 = v218[35];
                  v293 = v218[34];
                  v297 = v218[31];

                  sub_22C7F56F4();

                  v220 = v218[1];
                  sub_22C7FDD44();

                  __asm { BRAA            X3, X16 }
                }

                if (v138 >= *(v120 + 16))
                {
                  goto LABEL_97;
                }

                v143 = v39;
                v144 = v116[43];
                v145 = v116[41];
                v18 = v116;
                v146 = v116[35];
                sub_22C7FDCE4();
                v149 = v148 & ~v147;
                v151 = *(v150 + 56);
                v152(v146, v120 + v149 + v151 * v138);
                sub_22C90371C();
                v153 = *v292;
                v154 = sub_22C36BAFC();
                v156 = v155(v154);
                if (v156 == v289)
                {
                  v163 = v18[43];
                  v164 = v18[31];
                  v165 = v18[29];
                  v166 = sub_22C36FEB0(v156, v18[41], v157, v158, v159, v160, v161, v162, v226, v229, v232, v235, v238, v241, v244, v248, v251, v255, v259, v262, v265, v268, v273, v278);
                  v167(v166);
                  v168 = *v274;
                  v169 = sub_22C36BA00();
                  v171 = v170(v169);
                  LOBYTE(v163) = sub_22C7FDD60(v171, v172, v173, v174, v175, v176, v177, v178, v227, v230, v233, v236, v239, v242, v245, v249, v252, v256, v260, v263, v266, v269, v274, v279, v283);
                  v179 = *v142;
                  v180 = sub_22C36BAFC();
                  v181(v180);
                  v39 = v143;
                  if ((v163 & 1) == 0)
                  {
                    goto LABEL_78;
                  }
                }

                else
                {
                  if (v156 != v265)
                  {
                    if (v156 == v262)
                    {
                      v182 = v18[43];
                      v183 = v18[31];
                      v184 = v18[29];
                      v185 = sub_22C36FEB0(v156, v18[41], v157, v158, v159, v160, v161, v162, v226, v229, v232, v235, v238, v241, v244, v248, v251, v255, v259, v262, v265, v268, v273, v278);
                      v186(v185);
                      v187 = *v275;
                      v188 = sub_22C36BA00();
                      v190 = v189(v188);
                      LOBYTE(v182) = sub_22C7FDD60(v190, v191, v192, v193, v194, v195, v196, v197, v228, v231, v234, v237, v240, v243, v246, v250, v253, v257, v261, v264, v267, v270, v275, v280, v283);
                      v198 = *v142;
                      v199 = sub_22C36BAFC();
                      v39 = v143;
                      v200(v199);
                      if ((v182 & 1) == 0)
                      {
LABEL_78:
                        (*v268)(v18[35], v18[32]);
                        ++v138;
                        v116 = v18;
                        continue;
                      }

                      break;
                    }

                    if (v156 != v244 && v156 != v241)
                    {
                      goto LABEL_98;
                    }
                  }

                  (*(v18[42] + 8))(v18[43], v18[41]);
                }

                break;
              }

              v251 = *v255;
              (*v255)(v18[34], v18[35], v18[32]);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v203 = v259;
              if (isUniquelyReferenced_nonNull_native)
              {
                v116 = v18;
              }

              else
              {
                v204 = *(v259 + 16);
                v205 = sub_22C38390C();
                sub_22C3B60C0(v205, v206, 1);
                v116 = v296;
                v203 = v259;
              }

              v208 = *(v203 + 16);
              v207 = *(v203 + 24);
              if (v208 >= v207 >> 1)
              {
                v211 = sub_22C381848(v207);
                sub_22C3B60C0(v211, v208 + 1, 1);
                v116 = v296;
                v203 = v259;
              }

              ++v138;
              v209 = v116[34];
              v210 = v116[32];
              *(v203 + 16) = v208 + 1;
              v259 = v203;
              (v251)(v203 + v149 + v208 * v151, v209, v210);
              v39 = v143;
              continue;
            }
          }
        }

        __break(1u);
LABEL_102:
        __break(1u);
      }

      else if (v118 < *(isUniquelyReferenced_native + 16))
      {
        v296[62] = *(isUniquelyReferenced_native + 8 * v118 + 32);
        v136 = *(MEMORY[0x277D857C8] + 4);

        v137 = swift_task_alloc();
        v296[63] = v137;
        *v137 = v296;
        sub_22C3834B8();
        sub_22C7FDD44();

        return MEMORY[0x282200430](isUniquelyReferenced_native, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }

      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      return MEMORY[0x282200430](isUniquelyReferenced_native, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    v42 = v18[50];
    v43 = v18[46];
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v282 = *(v43 + 72);
    sub_22C36B7A0();
    sub_22C7FDAEC(v45, v46);
    v47 = v40 + v44;
    v272 = v41;
    v262 = v44;
    if (v39)
    {
      v48 = v18[50];
      v49 = *(v40 + 16);

      sub_22C7DD340(v48, v47, v49, v39 + 16, v39 + 32, v50, v51, v52, v226, v229, v232, v235, v238, v241, v244, v247, v251, v254, v258, v262);
      v44 = v53;
      v55 = v54;

      if (v44)
      {
        v18 = v296;
        goto LABEL_32;
      }

      v18 = v296;
LABEL_48:
      v110 = v272;
      goto LABEL_56;
    }

    if (*(v40 + 16))
    {
      break;
    }

    v55 = 0;
LABEL_32:
    v82 = v18[50];
    v83 = v18[48];
    sub_22C36B7A0();
    sub_22C7FDAEC(v84, v85);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v18[23] = v40;
    if ((v86 & 1) == 0)
    {
      v44 = v238 + 32;
      sub_22C3B7D40(0, *(v40 + 16) + 1, 1);
      v18 = v296;
      v40 = *(v238 + 32);
    }

    v88 = *(v40 + 16);
    v87 = *(v40 + 24);
    v89 = v88 + 1;
    if (v88 >= v87 >> 1)
    {
      v44 = v238 + 32;
      sub_22C3B7D40(v87 > 1, v88 + 1, 1);
      v18 = v296;
      v40 = *(v238 + 32);
    }

    v90 = v18[48];
    *(v40 + 16) = v89;
    sub_22C36B7A0();
    sub_22C7FDB44(v91, v92);
    if (!v39)
    {
      v112 = 0;
      v113 = v88 > 0xE;
      v110 = v272;
      if (!v113)
      {
        goto LABEL_55;
      }

LABEL_54:
      MEMORY[0x2318B0670](v89);
      sub_22C7D62A4(v40);
      sub_22C37FF48();

      v244 = v112;
      v39 = v112;
LABEL_55:
      v18 = v296;
      goto LABEL_56;
    }

    swift_beginAccess();
    if (MEMORY[0x2318B0640](*(v39 + 16) & 0x3FLL) <= v88)
    {
      v112 = *(v39 + 24) & 0x3FLL;
      v113 = v88 > 0xE;
      v110 = v272;
      if (v113 || v112)
      {
        goto LABEL_54;
      }

      v244 = 0;
      v39 = 0;
      goto LABEL_55;
    }

    v39 = v244;
    isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
    if ((isUniquelyReferenced_native & 1) == 0)
    {
      if (!v244)
      {
        goto LABEL_105;
      }

      sub_22C90318C();
      sub_22C37FF48();

      v39 = v44;
      v18 = v296;
    }

    if (!v39)
    {
      goto LABEL_104;
    }

    v101 = *(v39 + 16);
    v102 = *(v40 + 16) + ~(*(v39 + 24) >> 6);
    v103 = (-1 << v101) ^ ~(((v102 >> 63) & ~(-1 << v101)) + v102);
    v104 = (v101 & 0x3F) * v55;
    v105 = v104 >> 6;
    *(v39 + 32 + 8 * (v104 >> 6)) = (v103 << v104) | ((((-1 << v101) + 1) << v104) - 1) & *(v39 + 32 + 8 * (v104 >> 6));
    v106 = 64 - (v104 & 0x3F);
    v244 = v39;
    if (v106 >= (v101 & 0x3Fu))
    {
      goto LABEL_48;
    }

    v107 = (v101 & 0x3F) << (v101 & 0x3F);
    v108 = __OFADD__(v107, 64);
    v109 = v107 + 64;
    v110 = v272;
    if (v108)
    {
      goto LABEL_102;
    }

    if (v105 + 1 == (v109 - 1) / 64)
    {
      v111 = 0;
    }

    else
    {
      v111 = v105 + 1;
    }

    *(v39 + 32 + 8 * v111) = *(v39 + 32 + 8 * v111) & (-1 << (v101 - v106)) | (v103 >> v106);
LABEL_56:
    v41 = v110 + 1;
    sub_22C371E18(v18[50]);
  }

  v265 = *(v40 + 16);
  v235 = 0;
  v247 = v40;
  v56 = 0;
  while (1)
  {
    v57 = v18[49];
    v58 = v18[50];
    v59 = v18;
    v60 = v18[44];
    v61 = v18[45];
    v277 = v56;
    v62 = v18[42];
    v63 = v59[41];
    sub_22C36B7A0();
    sub_22C7FDAEC(v64, v57);
    sub_22C90371C();
    sub_22C90371C();
    v44 = sub_22C9036DC();
    v65 = *(v62 + 8);
    v65(v60, v63);
    v65(v61, v63);
    if (v44)
    {
      break;
    }

    sub_22C371E18(v59[49]);
    v18 = v59;
LABEL_27:
    v56 = v277 + 1;
    if (v277 + 1 == v265)
    {
      v55 = 0;
      v40 = v247;
      v39 = 0;
      goto LABEL_32;
    }
  }

  v67 = v59[49];
  v66 = v59[50];
  v68 = sub_22C90374C();
  v44 = v66;
  v69 = sub_22C90374C();
  v70 = v69;
  v291 = *(v68 + 16);
  v294 = v68;
  if (v291 != *(v69 + 16))
  {
LABEL_26:
    v18 = v296;
    sub_22C371E18(v296[49]);

    goto LABEL_27;
  }

  v18 = v296;
  if (!v291 || v294 == v69)
  {
LABEL_30:
    sub_22C371E18(v18[49]);

    v39 = 0;
    v40 = v247;
    goto LABEL_48;
  }

  v71 = 0;
  v72 = *(v296[38] + 80);
  sub_22C36BA94();
  v285 = v70 + v73;
  v288 = v294 + v73;
  while (v71 < *(v294 + 16))
  {
    v74 = v18[38];
    v75 = *(v74 + 16);
    v76 = *(v74 + 72) * v71;
    v75(v18[40], v288 + v76, v18[37]);
    if (v71 >= *(v70 + 16))
    {
      goto LABEL_95;
    }

    v77 = v18[39];
    v44 = v18[37];
    v78 = v18[38];
    v75(v77, v285 + v76, v44);
    sub_22C7FB604(&qword_27D9BC820, MEMORY[0x277D1EE20]);
    v79 = sub_22C90A0BC();
    v80 = *(v78 + 8);
    v80(v77, v44);
    v81 = sub_22C36BA00();
    (v80)(v81);
    if ((v79 & 1) == 0)
    {
      goto LABEL_26;
    }

    ++v71;
    v18 = v296;
    if (v291 == v71)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  v223 = v18[41];
  sub_22C7FDD44();

  return sub_22C90B4EC();
}

uint64_t sub_22C7F8958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  v19 = *(v18 + 448);
  sub_22C382978();

  sub_22C369A24();
  sub_22C375E04();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22C7F8A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  v19 = v18[61];
  v20 = v18[62];
  v21 = v18[60];

  v22 = v18[64];
  sub_22C382978();

  sub_22C369A24();
  sub_22C375E04();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22C7F8B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[3] = a1;
  return MEMORY[0x2822009F8](sub_22C7F8B58, 0, 0);
}

uint64_t sub_22C7F8B58()
{
  sub_22C36D5EC();
  v1 = v0[7];
  v2 = v0[4];
  v3 = v2[4];
  sub_22C374168(v2, v2[3]);
  v0[2] = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_22C7F8C2C;
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[5];
  v7 = v0[6];

  return sub_22C7FEBEC();
}

uint64_t sub_22C7F8C2C()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  sub_22C369A3C();
  v7 = v6;
  sub_22C36D994();
  *v8 = v7;
  v10 = *(v9 + 80);
  v11 = *v1;
  sub_22C369970();
  *v12 = v11;
  v7[11] = v0;

  if (!v0)
  {
    v7[12] = v3;
    v7[13] = v5;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22C7F8D44()
{
  v1 = v0[12];
  v2 = v0[3];
  *v2 = v0[13];
  v2[1] = v1;
  return sub_22C37A3A0();
}

uint64_t ToolRetrievalService.retrieveTools(query:qdContext:)()
{
  sub_22C369980();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = sub_22C90384C();
  v1[12] = v4;
  sub_22C3699B8(v4);
  v1[13] = v5;
  v7 = *(v6 + 64);
  v1[14] = sub_22C3699D4();
  v8 = sub_22C9099FC();
  v1[15] = v8;
  sub_22C3699B8(v8);
  v1[16] = v9;
  v11 = *(v10 + 64);
  v1[17] = sub_22C3699D4();
  v12 = sub_22C9036EC();
  v1[18] = v12;
  sub_22C3699B8(v12);
  v1[19] = v13;
  v15 = *(v14 + 64);
  v1[20] = sub_22C3699D4();
  v16 = sub_22C908EAC();
  v1[21] = v16;
  sub_22C3699B8(v16);
  v1[22] = v17;
  v19 = *(v18 + 64);
  v1[23] = sub_22C3699D4();
  v20 = type metadata accessor for ToolRetrievalStageTwo(0);
  v1[24] = v20;
  sub_22C369914(v20);
  v22 = *(v21 + 64);
  v1[25] = sub_22C3699D4();
  v23 = sub_22C908D2C();
  v1[26] = v23;
  sub_22C3699B8(v23);
  v1[27] = v24;
  v26 = *(v25 + 64);
  v1[28] = sub_22C3699D4();
  v27 = sub_22C9063DC();
  v1[29] = v27;
  sub_22C3699B8(v27);
  v1[30] = v28;
  v30 = *(v29 + 64);
  v1[31] = sub_22C36D0D4();
  v1[32] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_22C7F8FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_22C36CC74();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = v26[10];
  v30 = sub_22C908CFC();
  v26[33] = v30;
  if (v30)
  {
    if (*(v30 + 16))
    {
      v31 = v26[32];
      v33 = v26[27];
      v32 = v26[28];
      v34 = v26[26];
      v35 = v26[10];
      sub_22C903FCC();
      v36 = *(v33 + 16);
      v37 = sub_22C36D39C();
      v38(v37);

      v39 = sub_22C9063CC();
      v40 = sub_22C90AABC();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v26[32];
      v43 = v26[29];
      v44 = v26[30];
      v46 = v26[27];
      v45 = v26[28];
      v47 = v26[26];
      if (v41)
      {
        HIDWORD(a10) = v40;
        v48 = swift_slowAlloc();
        a11 = swift_slowAlloc();
        a14 = a11;
        *v48 = 136315394;
        sub_22C908D1C();
        a12 = v43;
        a13 = v42;
        (*(v46 + 8))(v45, v47);
        v49 = sub_22C36D39C();
        v52 = sub_22C36F9F4(v49, v50, v51);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        v53 = sub_22C90A8CC();
        v55 = sub_22C36F9F4(v53, v54, &a14);

        *(v48 + 14) = v55;
        _os_log_impl(&dword_22C366000, v39, BYTE4(a10), "ToolRetrievalService: retrieveTools query: %s, apps: %s", v48, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();

        v56 = *(v44 + 8);
        v56(a13, v43);
      }

      else
      {

        (*(v46 + 8))(v45, v47);
        v56 = *(v44 + 8);
        v67 = sub_22C36D39C();
        v56(v67, v68);
      }

      v26[34] = v56;
      v69 = *(v26[11] + 24);
      v70 = *(MEMORY[0x277D857C8] + 4);
      v71 = swift_task_alloc();
      v26[35] = v71;
      sub_22C3A5908(&qword_27D9C0328, &unk_22C928C70);
      sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
      *v71 = v26;
      v71[1] = sub_22C7F9310;
      sub_22C375E04();

      return MEMORY[0x282200430](v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }
  }

  sub_22C7FAF3C();
  swift_allocError();
  *v57 = 5;
  swift_willThrow();
  sub_22C37F5AC();

  sub_22C369A24();
  sub_22C375E04();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22C7F9310()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 288) = v0;

  if (v0)
  {
    v9 = *(v3 + 264);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C7F9410()
{
  sub_22C36D5EC();
  v1 = v0[33];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[10];
  sub_22C378A4C((v0 + 2), v2 + *(v3 + 20));
  v5 = *MEMORY[0x277D1ED30];
  v6 = sub_22C90377C();
  sub_22C36985C(v6);
  (*(v7 + 104))(v2, v5);
  *(v2 + *(v3 + 24)) = 20;
  sub_22C908D1C();
  v0[37] = v8;
  sub_22C80E0F0(v1, v0 + 7);
  v9 = swift_task_alloc();
  v0[38] = v9;
  *v9 = v0;
  v9[1] = sub_22C7F953C;
  v10 = v0[25];

  return sub_22C7FF9CC();
}

uint64_t sub_22C7F953C()
{
  sub_22C36D5EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  v7 = v4[38];
  *v6 = *v1;
  v5[39] = v8;
  v5[40] = v0;

  v9 = v4[37];
  if (!v0)
  {
    v5[41] = v3;
  }

  v10 = v5[7];

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_22C7F968C()
{
  v115 = v0;
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[31];
  sub_22C903FCC();

  v4 = sub_22C9063CC();
  v5 = sub_22C90AABC();
  v96 = v1;

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[39];
    swift_slowAlloc();
    v93 = swift_slowAlloc();
    v7 = sub_22C386034(v93, 4.8149e-34);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      HIDWORD(v87) = v5;
      v88 = v4;
      v10 = v0[39];
      v11 = v0[22];
      v12 = v0[19];
      v13 = v0[16];
      v14 = v0[13];
      sub_22C386E04(v7, v8);
      v9 = v114;
      v15 = sub_22C9037EC();
      sub_22C369914(v15);
      v107 = v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v105 = *MEMORY[0x277D1ECE0];
      LODWORD(v100) = *MEMORY[0x277D1ECE8];
      HIDWORD(v99) = *MEMORY[0x277D1ECD8];
      LODWORD(v99) = *MEMORY[0x277D1ECD0];
      sub_22C7FDC30();
      v18 = *v17;
      sub_22C7FDC54();
      while (1)
      {
        if (!*(v111 + 16))
        {
          __break(1u);
          return;
        }

        v19 = v0[20];
        v20 = v0[18];
        sub_22C7FDD80();
        v21 = *(v12 + 88);
        v22 = sub_22C36D39C();
        v24 = v23(v22);
        if (v24 != v105)
        {
          if (v24 == v100)
          {
            v41 = v0[20];
            v43 = v0[17];
            v42 = v0[18];
            v44 = v0[15];
            v45 = sub_22C7FDD24();
            v46(v45);
            v47 = *v98;
            v48 = sub_22C7FDBF8();
            v49(v48);
            sub_22C9099DC();
            sub_22C36EE68();
            v50 = v97;
LABEL_9:
            v51 = *v50;
            v38 = sub_22C36ECB4();
            goto LABEL_10;
          }

          v53 = v24 == HIDWORD(v99) || v24 == v99;
          if (!v53)
          {
            v54 = v0[20];
            v55 = v0[18];
            if (v24 != HIDWORD(v95))
            {
              v63 = sub_22C38C41C();
              v64(v63);
              goto LABEL_11;
            }

            v56 = v0[14];
            v57 = v0[12];
            v58 = sub_22C7FDD24();
            v59(v58);
            v60 = *v90;
            v61 = sub_22C7FDBF8();
            v62(v61);
            sub_22C9037FC();
            sub_22C36EE68();
            v50 = v89;
            goto LABEL_9;
          }
        }

        v25 = v0[23];
        v26 = v0[20];
        v27 = v0[21];
        (*v12)(v26, v0[18]);
        v28 = sub_22C38C41C();
        v29(v28, v26, v27);
        sub_22C908E7C();
        sub_22C36EE68();
        v38 = sub_22C36FEB0(v30, v31, v32, v33, v34, v35, v36, v37, v86, v87, v88, v89, v90, v91, v92, v93, buf, v95, v96, v97, v98, v99, v100, v102);
        v40 = v27;
LABEL_10:
        v39(v38, v40);
LABEL_11:
        sub_22C388DE4();
        if (v52)
        {
          sub_22C375CCC();
          sub_22C3B5E2C();
          v9 = v114;
        }

        sub_22C38C4E4();
        if (v53)
        {
          v4 = v88;
          LOBYTE(v5) = BYTE4(v87);
          break;
        }
      }
    }

    v65 = v0[34];
    v72 = v0[30];
    v71 = v0[31];
    v73 = v0[29];
    v0[8] = v9;
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3F035C();
    v74 = sub_22C90A04C();
    v76 = v75;

    v77 = sub_22C36F9F4(v74, v76, &v113);

    *(buf + 4) = v77;
    _os_log_impl(&dword_22C366000, v4, v5, "ToolRetrievalService: Combined set of tools:\n%s", buf, 0xCu);
    sub_22C36FF94(v93);
    sub_22C3699EC();
    sub_22C3699EC();

    v69 = v71;
    v70 = v73;
  }

  else
  {
    v65 = v0[34];
    v67 = v0[30];
    v66 = v0[31];
    v68 = v0[29];

    v69 = v66;
    v70 = v68;
  }

  v65(v69, v70);
  v78 = v0[39];
  v103 = v0[32];
  v104 = v0[31];
  v106 = v0[28];
  v101 = v0[25];
  v108 = v0[23];
  v109 = v0[20];
  v110 = v0[17];
  v112 = v0[14];
  v80 = v0[9];
  v79 = v0[10];
  sub_22C908D1C();
  sub_22C908D1C();
  sub_22C90952C();
  sub_22C90947C();
  sub_22C376A4C();
  sub_22C7FB604(v81, v82);

  sub_22C909F0C();
  sub_22C903EDC();

  sub_22C377758();
  sub_22C7FB5AC(v101, v83);
  sub_22C36FF94(v0 + 2);
  v84 = sub_22C903F4C();
  sub_22C36C640(v80, 0, 1, v84);

  sub_22C369A24();

  v85();
}

uint64_t sub_22C7F9C60()
{
  v1 = *(v0 + 288);
  sub_22C37F5AC();

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C7F9D0C()
{
  v1 = v0[25];
  sub_22C377758();
  sub_22C7FB5AC(v2, v3);
  sub_22C36FF94(v0 + 2);
  v4 = v0[40];
  sub_22C37F5AC();

  sub_22C369A24();

  return v5();
}

uint64_t ToolRetrievalService.retrieveTools(queries:apps:appEntities:qdContext:)()
{
  sub_22C369980();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v0;
  v1[6] = v5;
  v1[7] = v6;
  v1[4] = v7;
  v1[5] = v8;
  v9 = sub_22C90384C();
  v1[10] = v9;
  sub_22C3699B8(v9);
  v1[11] = v10;
  v12 = *(v11 + 64);
  v1[12] = sub_22C3699D4();
  v13 = sub_22C9099FC();
  v1[13] = v13;
  sub_22C3699B8(v13);
  v1[14] = v14;
  v16 = *(v15 + 64);
  v1[15] = sub_22C3699D4();
  v17 = sub_22C9036EC();
  v1[16] = v17;
  sub_22C3699B8(v17);
  v1[17] = v18;
  v20 = *(v19 + 64);
  v1[18] = sub_22C3699D4();
  v21 = sub_22C908EAC();
  v1[19] = v21;
  sub_22C3699B8(v21);
  v1[20] = v22;
  v24 = *(v23 + 64);
  v1[21] = sub_22C3699D4();
  v25 = sub_22C9063DC();
  v1[22] = v25;
  sub_22C3699B8(v25);
  v1[23] = v26;
  v28 = *(v27 + 64);
  v1[24] = sub_22C36D0D4();
  v1[25] = swift_task_alloc();
  v29 = swift_task_alloc();
  v30 = *v3;
  v1[26] = v29;
  v1[27] = v30;
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_22C7F9FCC()
{
  v1 = v0[26];
  v2 = v0[6];
  sub_22C903FCC();

  v3 = sub_22C9063CC();
  v4 = sub_22C90AABC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[26];
  v7 = v0[22];
  v8 = v0[23];
  if (v5)
  {
    v10 = v0[5];
    v9 = v0[6];
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v11 = 136315138;
    v12 = sub_22C371510();
    *(v11 + 4) = sub_22C36F9F4(v12, v13, v14);
    _os_log_impl(&dword_22C366000, v3, v4, "Tool Retrieval queries: %s.", v11, 0xCu);
    sub_22C36FF94(v24);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  v15 = *(v8 + 8);
  v16 = sub_22C36BAFC();
  v15(v16);
  v0[28] = v15;
  v0[2] = v0[27];
  v17 = swift_task_alloc();
  v0[29] = v17;
  *v17 = v0;
  v17[1] = sub_22C7FA17C;
  v18 = v0[8];
  v19 = v0[9];
  v20 = v0[6];
  v21 = v0[7];
  v22 = v0[5];

  return sub_22C7F6EB4();
}

uint64_t sub_22C7FA17C()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 232);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  v5[30] = v11;
  v5[31] = v0;

  if (!v0)
  {
    v5[32] = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_22C7FA288()
{
  v122 = v0;
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[25];
  sub_22C903FCC();

  v4 = sub_22C9063CC();
  v5 = sub_22C90AABC();
  v105 = v1;

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    swift_slowAlloc();
    v102 = swift_slowAlloc();
    v7 = sub_22C386034(v102, 4.8149e-34);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      HIDWORD(v96) = v5;
      v97 = v4;
      v10 = v0[30];
      v11 = v0[20];
      v12 = v0[17];
      v13 = v0[14];
      v14 = v0[11];
      sub_22C386E04(v7, v8);
      v9 = v121;
      v15 = sub_22C9037EC();
      sub_22C369914(v15);
      v114 = v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v112 = *MEMORY[0x277D1ECE0];
      HIDWORD(v109) = *MEMORY[0x277D1ECE8];
      LODWORD(v109) = *MEMORY[0x277D1ECD8];
      HIDWORD(v108) = *MEMORY[0x277D1ECD0];
      sub_22C7FDC30();
      v18 = *v17;
      sub_22C7FDC54();
      while (1)
      {
        if (!*(v118 + 16))
        {
          __break(1u);
          return;
        }

        v19 = v0[18];
        v20 = v0[16];
        sub_22C7FDD80();
        v21 = *(v12 + 88);
        v22 = sub_22C36D39C();
        v24 = v23(v22);
        if (v24 != v112)
        {
          if (v24 == HIDWORD(v109))
          {
            v41 = v0[18];
            v43 = v0[15];
            v42 = v0[16];
            v44 = v0[13];
            v45 = sub_22C7FDD24();
            v46(v45);
            v47 = *v107;
            v48 = sub_22C7FDBF8();
            v49(v48);
            sub_22C9099DC();
            sub_22C36EE68();
            v50 = v106;
LABEL_9:
            v51 = *v50;
            v38 = sub_22C36ECB4();
            goto LABEL_10;
          }

          v53 = v24 == v109 || v24 == HIDWORD(v108);
          if (!v53)
          {
            v54 = v0[18];
            v55 = v0[16];
            if (v24 != HIDWORD(v104))
            {
              v63 = sub_22C38C41C();
              v64(v63);
              goto LABEL_11;
            }

            v56 = v0[12];
            v57 = v0[10];
            v58 = sub_22C7FDD24();
            v59(v58);
            v60 = *v99;
            v61 = sub_22C7FDBF8();
            v62(v61);
            sub_22C9037FC();
            sub_22C36EE68();
            v50 = v98;
            goto LABEL_9;
          }
        }

        v25 = v0[21];
        v26 = v0[18];
        v27 = v0[19];
        (*v12)(v26, v0[16]);
        v28 = sub_22C38C41C();
        v29(v28, v26, v27);
        sub_22C908E7C();
        sub_22C36EE68();
        v38 = sub_22C36FEB0(v30, v31, v32, v33, v34, v35, v36, v37, v95, v96, v97, v98, v99, v100, v101, v102, buf, v104, v105, v106, v107, v108, v109, v110);
        v40 = v27;
LABEL_10:
        v39(v38, v40);
LABEL_11:
        sub_22C388DE4();
        if (v52)
        {
          sub_22C375CCC();
          sub_22C3B5E2C();
          v9 = v121;
        }

        sub_22C38C4E4();
        if (v53)
        {
          v4 = v97;
          LOBYTE(v5) = BYTE4(v96);
          break;
        }
      }
    }

    v65 = v0[28];
    v71 = v0[25];
    v73 = v0[22];
    v72 = v0[23];
    v0[3] = v9;
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3F035C();
    v74 = sub_22C90A04C();
    v76 = v75;

    v77 = sub_22C36F9F4(v74, v76, &v120);

    *(buf + 4) = v77;
    _os_log_impl(&dword_22C366000, v4, v5, "Combined set of tools:\n%s", buf, 0xCu);
    sub_22C36FF94(v102);
    sub_22C3699EC();
    sub_22C3699EC();

    v69 = v71;
    v70 = v73;
  }

  else
  {
    v65 = v0[28];
    v66 = v0[25];
    v67 = v0[22];
    v68 = v0[23];

    v69 = v66;
    v70 = v67;
  }

  v65(v69, v70);
  v78 = v0[24];
  sub_22C903FCC();
  v79 = sub_22C9063CC();
  v80 = sub_22C90AACC();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&dword_22C366000, v79, v80, "Returning a QueryDecorationToolRetrievalResponse", v81, 2u);
    sub_22C3699EC();
  }

  v82 = v0[30];
  v83 = v0[28];
  v111 = v0[26];
  v113 = v0[25];
  v85 = v0[23];
  v84 = v0[24];
  v86 = v0[22];
  v115 = v0[21];
  v116 = v0[18];
  v117 = v0[15];
  v119 = v0[12];
  v88 = v0[5];
  v87 = v0[6];
  v89 = v0[4];

  v90 = sub_22C371510();
  v83(v90);
  sub_22C90952C();
  sub_22C90947C();
  sub_22C376A4C();
  sub_22C7FB604(v91, v92);
  swift_bridgeObjectRetain_n();

  sub_22C909F0C();
  sub_22C903EDC();

  v93 = sub_22C903F4C();
  sub_22C36C640(v89, 0, 1, v93);

  sub_22C369A24();

  v94();
}

uint64_t sub_22C7FA8B0()
{
  sub_22C36D5EC();
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[12];

  sub_22C369A24();
  v9 = v0[31];

  return v8();
}

uint64_t ToolRetrievalService.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20ToolRetrievalService_toolbox;
  v4 = sub_22C908AEC();
  sub_22C36985C(v4);
  (*(v5 + 8))(v0 + v3);
  return v0;
}

uint64_t ToolRetrievalService.__deallocating_deinit()
{
  ToolRetrievalService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C7FAA20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xED00007972657551)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C7FAAEC(char a1)
{
  if (a1)
  {
    return 0x6465696669646F6DLL;
  }

  else
  {
    return 0x7972657571;
  }
}

uint64_t sub_22C7FAB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C7FAA20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C7FAB5C(uint64_t a1)
{
  v2 = sub_22C7FAF90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C7FAB98(uint64_t a1)
{
  v2 = sub_22C7FAF90();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolRetrievalFeatureStoreQuery.encode(to:)()
{
  sub_22C370030();
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9C0338, &qword_22C926D70);
  v5 = sub_22C369824(v4);
  v16 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v15 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v15[1] = v0[3];
  v15[2] = v13;
  v14 = v3[4];
  sub_22C374168(v3, v3[3]);
  sub_22C7FAF90();
  sub_22C90B6CC();
  sub_22C90B3CC();
  if (!v1)
  {
    sub_22C90B3CC();
  }

  (*(v16 + 8))(v10, v4);
  sub_22C36FB20();
}

void ToolRetrievalFeatureStoreQuery.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9C0348, &qword_22C926D78);
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v2[4];
  sub_22C374168(v2, v2[3]);
  sub_22C7FAF90();
  sub_22C90B6BC();
  if (v0)
  {
    sub_22C36FF94(v2);
  }

  else
  {
    v12 = sub_22C90B2DC();
    v14 = v13;
    v15 = sub_22C90B2DC();
    v17 = v16;
    v18 = *(v8 + 8);
    v21 = v15;
    v19 = sub_22C371510();
    v20(v19);
    *v4 = v12;
    v4[1] = v14;
    v4[2] = v21;
    v4[3] = v17;

    sub_22C36FF94(v2);
  }

  sub_22C36FB20();
}

unint64_t sub_22C7FAF3C()
{
  result = qword_27D9C0320;
  if (!qword_27D9C0320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0320);
  }

  return result;
}

unint64_t sub_22C7FAF90()
{
  result = qword_27D9C0340;
  if (!qword_27D9C0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0340);
  }

  return result;
}

uint64_t sub_22C7FB00C()
{
  result = sub_22C908AEC();
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

_BYTE *storeEnumTagSinglePayload for ToolRetrievalFeatureStoreQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ToolRetrievalServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C7FB294()
{
  result = qword_27D9C0360;
  if (!qword_27D9C0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0360);
  }

  return result;
}

unint64_t sub_22C7FB2EC()
{
  result = qword_27D9C0368;
  if (!qword_27D9C0368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0368);
  }

  return result;
}

unint64_t sub_22C7FB344()
{
  result = qword_27D9C0370;
  if (!qword_27D9C0370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0370);
  }

  return result;
}

unint64_t sub_22C7FB39C()
{
  result = qword_27D9C0378;
  if (!qword_27D9C0378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0378);
  }

  return result;
}

unint64_t sub_22C7FB3F0()
{
  result = qword_27D9C0380;
  if (!qword_27D9C0380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0380);
  }

  return result;
}

uint64_t sub_22C7FB464()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[13];
  v8 = swift_task_alloc();
  v9 = sub_22C36D860(v8);
  *v9 = v10;
  v9[1] = sub_22C382AF4;
  v11 = sub_22C36DBB4();

  return sub_22C7F8B24(v11, v12, v13, v14, v3, v4, v5, v6);
}

uint64_t sub_22C7FB53C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7FB5AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C7FB604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C7FB64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t))
{
  sub_22C38A124(a1, a2);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = MEMORY[0x2318B0670](v8);
  if (v16 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = v17;
  }

  if (v18 > 4)
  {
    v19 = MEMORY[0x2318B0680]();
    sub_22C7FDCD0();
    a6();
    *v7 = v20;
  }

  else if (v8 >= 2)
  {
    v21 = a7(v9 + 32, v8);
    v19 = 0;
    *v7 = v21;
  }

  else
  {
    v19 = 0;
    *v7 = v8;
  }

  return v19;
}

uint64_t sub_22C7FB714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(void), uint64_t (*a8)(uint64_t, uint64_t))
{
  sub_22C38A124(a1, a2);
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = MEMORY[0x2318B0670](v9);
  if (v18 <= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= a5)
  {
    v20 = a5;
  }

  else
  {
    v20 = v19;
  }

  if (v20 > 4)
  {
    v21 = MEMORY[0x2318B0680]();
    v22 = a6(0);
    sub_22C369914(v22);
    v24 = *(v23 + 80);
    sub_22C36BA94();
    sub_22C7FDCD0();
    a7();
    *v8 = v25;
  }

  else if (v9 >= 2)
  {
    v26 = a6(0);
    sub_22C369914(v26);
    v28 = *(v27 + 80);
    sub_22C36BA94();
    v30 = a8(v10 + v29, v9);
    v21 = 0;
    *v8 = v30;
  }

  else
  {
    v21 = 0;
    *v8 = v9;
  }

  return v21;
}

void sub_22C7FB848(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v8 = a5 >> 1;
  v9 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
    __break(1u);
  }

  else
  {
    if (a7)
    {
      v13 = 0;
    }

    else
    {
      v13 = a6;
    }

    v14 = MEMORY[0x2318B0670]((a5 >> 1) - a4);
    if (v14 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    if (v15 <= a8)
    {
      v16 = a8;
    }

    else
    {
      v16 = v15;
    }

    if (v16 > 4)
    {
      MEMORY[0x2318B0680]();
      v17 = *(*(sub_22C9037EC() - 8) + 72);
      sub_22C3A0354();
      v19 = a4 + v18;
      if (!__OFADD__(a4, v18))
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (v9 < 2)
    {
      *a1 = v8;
      return;
    }

    v20 = *(*(sub_22C9037EC() - 8) + 72);
    sub_22C3A00A4();
    v19 = a4 + v21;
    if (!__OFADD__(a4, v21))
    {
LABEL_18:
      *a1 = v19;
      return;
    }
  }

  __break(1u);
}

void sub_22C7FB970(uint64_t a1, uint64_t a2)
{
  v14 = MEMORY[0x277D84F90];
  sub_22C3B5E2C();
  for (i = 0; ; ++i)
  {
    if (i == a2)
    {
LABEL_15:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v5 = (a1 + 16 * i);
    v6 = *v5;
    v7 = v5[1];
    v8 = v14 + 5;
    v9 = v14[2] + 1;
    while (--v9)
    {
      if (v6 != *(v8 - 1) || v7 != *v8)
      {
        v8 += 2;
        if ((sub_22C90B4FC() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v11 = v14[2];
    v12 = v14[3];

    if (v11 >= v12 >> 1)
    {
      sub_22C3B5E2C();
    }

    v14[2] = v11 + 1;
    v13 = &v14[2 * v11];
    v13[4] = v6;
    v13[5] = v7;
  }

  __break(1u);
}

void sub_22C7FBAAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90644C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v24 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v31 = MEMORY[0x277D84F90];
  sub_22C3B647C(0, a2 & ~(a2 >> 63), 0);
  v11 = 0;
  v12 = v31;
  v30 = v5 + 16;
  v28 = (v5 + 8);
  v21[1] = v5 + 32;
  v22 = a1;
  v23 = a2;
  while (1)
  {
    if (v11 == a2)
    {
LABEL_11:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v13 = *(v5 + 72);
    v25 = v11;
    v26 = *(v5 + 16);
    v27 = v11 + 1;
    v26(v10, a1 + v13 * v11, v4);
    v14 = *(v12 + 16) + 1;
    v29 = v12;
    while (--v14)
    {
      v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_22C7FB604(&qword_27D9C02E0, MEMORY[0x277D1D8A0]);
      v12 += v13;
      if (sub_22C90A0BC())
      {
        (*v28)(v10, v4);
        goto LABEL_11;
      }
    }

    v16 = v24;
    v26(v24, v10, v4);
    v31 = v29;
    v18 = *(v29 + 16);
    v17 = *(v29 + 24);
    a2 = v23;
    if (v18 >= v17 >> 1)
    {
      sub_22C3B647C(v17 > 1, v18 + 1, 1);
      v16 = v24;
    }

    (*(v5 + 8))(v10, v4);
    v19 = v31;
    *(v31 + 16) = v18 + 1;
    v20 = v16;
    v12 = v19;
    (*(v5 + 32))(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v18 * v13, v20, v4);
    v11 = v27;
    a1 = v22;
  }

  __break(1u);
}

void sub_22C7FBD94(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = type metadata accessor for _PromptToolData(0);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v24 - v9);
  MEMORY[0x28223BE20](v8);
  v12 = (&v24 - v11);
  v31 = MEMORY[0x277D84F90];
  sub_22C3B6914(0, a2 & ~(a2 >> 63), 0);
  v13 = v31;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v14 = 0;
      v25 = v7;
      v26 = a2;
      while (!__OFADD__(v14, 1))
      {
        v29 = v14 + 1;
        v15 = *(v30 + 72);
        v27 = v14;
        sub_22C7FDAEC(v28 + v15 * v14, v12);
        v16 = *(v13 + 16);
        if (v16)
        {
          v17 = 0;
          v18 = v13 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
          v19 = *v12;
          while (v17 < *(v13 + 16))
          {
            sub_22C7FDAEC(v18, v10);
            if (sub_22C48819C(v19, *v10))
            {
              v20 = sub_22C48819C(v12[1], v10[1]);
              sub_22C7FB5AC(v10, type metadata accessor for _PromptToolData);
              if (v20)
              {
                sub_22C7FB5AC(v12, type metadata accessor for _PromptToolData);

                return;
              }
            }

            else
            {
              sub_22C7FB5AC(v10, type metadata accessor for _PromptToolData);
            }

            ++v17;
            v18 += v15;
            if (v16 == v17)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v21 = v25;
        sub_22C7FDAEC(v12, v25);
        v31 = v13;
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_22C3B6914(v22 > 1, v23 + 1, 1);
          v13 = v31;
        }

        *(v13 + 16) = v23 + 1;
        sub_22C7FDB44(v21, v13 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + v23 * v15);
        sub_22C7FB5AC(v12, type metadata accessor for _PromptToolData);
        v14 = v29;
        if (v29 == v26)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

void sub_22C7FC0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90430C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v24 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v31 = MEMORY[0x277D84F90];
  sub_22C3B6BF8(0, a2 & ~(a2 >> 63), 0);
  v11 = 0;
  v12 = v31;
  v30 = v5 + 16;
  v28 = (v5 + 8);
  v21[1] = v5 + 32;
  v22 = a1;
  v23 = a2;
  while (1)
  {
    if (v11 == a2)
    {
LABEL_11:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v13 = *(v5 + 72);
    v25 = v11;
    v26 = *(v5 + 16);
    v27 = v11 + 1;
    v26(v10, a1 + v13 * v11, v4);
    v14 = *(v12 + 16) + 1;
    v29 = v12;
    while (--v14)
    {
      v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_22C7FB604(&qword_27D9BC808, MEMORY[0x277D85578]);
      v12 += v13;
      if (sub_22C90A0BC())
      {
        (*v28)(v10, v4);
        goto LABEL_11;
      }
    }

    v16 = v24;
    v26(v24, v10, v4);
    v31 = v29;
    v18 = *(v29 + 16);
    v17 = *(v29 + 24);
    a2 = v23;
    if (v18 >= v17 >> 1)
    {
      sub_22C3B6BF8(v17 > 1, v18 + 1, 1);
      v16 = v24;
    }

    (*(v5 + 8))(v10, v4);
    v19 = v31;
    *(v31 + 16) = v18 + 1;
    v20 = v16;
    v12 = v19;
    (*(v5 + 32))(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v18 * v13, v20, v4);
    v11 = v27;
    a1 = v22;
  }

  __break(1u);
}

void sub_22C7FC3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C901FAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  v30 = MEMORY[0x277D84F90];
  sub_22C3B6EDC();
  v11 = 0;
  v12 = v30;
  v29 = v5 + 16;
  v27 = (v5 + 8);
  v20[1] = v5 + 32;
  v21 = a1;
  v22 = a2;
  while (1)
  {
    if (v11 == a2)
    {
LABEL_11:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v13 = *(v5 + 72);
    v24 = v11;
    v25 = *(v5 + 16);
    v26 = v11 + 1;
    v25(v10, a1 + v13 * v11, v4);
    v14 = *(v12 + 16) + 1;
    v28 = v12;
    while (--v14)
    {
      v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_22C7FB604(&qword_27D9BAA28, MEMORY[0x277D1C338]);
      v12 += v13;
      if (sub_22C90A0BC())
      {
        (*v27)(v10, v4);
        goto LABEL_11;
      }
    }

    v16 = v23;
    v25(v23, v10, v4);
    v30 = v28;
    v17 = *(v28 + 16);
    a2 = v22;
    if (v17 >= *(v28 + 24) >> 1)
    {
      sub_22C3B6EDC();
      v16 = v23;
    }

    (*(v5 + 8))(v10, v4);
    v18 = v30;
    *(v30 + 16) = v17 + 1;
    v19 = v16;
    v12 = v18;
    (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v17 * v13, v19, v4);
    v11 = v26;
    a1 = v21;
  }

  __break(1u);
}

uint64_t sub_22C7FC6B0(uint64_t a1, uint64_t a2)
{
  v11 = MEMORY[0x277D84F90];
  sub_22C3B7454();
  result = v11;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v7 = 0;
        v8 = *(a1 + 8 * i);
        v9 = *(result + 16);
        while (v9 != v7)
        {
          v10 = result + 8 * v7++;
          if (v8 == *(v10 + 32))
          {

            return i;
          }
        }

        v12 = result;
        if (v9 >= *(result + 24) >> 1)
        {
          sub_22C3B7454();
          result = v12;
        }

        *(result + 16) = v9 + 1;
        *(result + 8 * v9 + 32) = v8;
        if (v6 == a2)
        {

          return a2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_22C7FC7E0(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_20;
  }

  v3 = a3;
  v4 = result;
  v5 = 0;
  while (2)
  {
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v16 = v5 + 1;
    v6 = (v4 + 16 * v5);
    v7 = *v6;
    v8 = v6[1];
    v9 = *v3;
    sub_22C90B62C();

    sub_22C909FFC();
    result = sub_22C90B66C();
    if (__OFSUB__(1 << *v3, 1))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    sub_22C9030FC();

    while (1)
    {
      v10 = sub_22C90313C();
      if (v11)
      {
        break;
      }

      v12 = (v4 + 16 * v10);
      v13 = *v12 == *v6 && v12[1] == v6[1];
      if (v13 || (sub_22C90B4FC() & 1) != 0)
      {
        return 0;
      }

      sub_22C90315C();
    }

    sub_22C90314C();
    result = 1;
    ++v5;
    v3 = a3;
    if (v16 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_22C7FC994(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v39 = a4;
  v55 = a1;
  v7 = sub_22C90644C();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v15 = &v34 - v14;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v45 = a3;
  v37 = v4;
  v16 = 0;
  v17 = (v13 + 8);
  v36 = a2;
  v35 = v13;
  while (2)
  {
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v38 = v16 + 1;
    v18 = *(v13 + 72);
    v44 = v16;
    v46 = v18;
    v19 = v55 + v18 * v16;
    v20 = *(v13 + 16);
    v20(v15, v19, v7);
    v21 = v45;
    v22 = *v45;
    sub_22C7FB604(&qword_27D9C02D8, MEMORY[0x277D1D8A0]);
    result = sub_22C909F7C();
    v23 = 1 << *v21;
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v24)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v43 = v25 & result;
    v26 = v39;
    v27 = sub_22C9030FC();
    v41 = v28;
    v42 = v27;
    v40 = v29;
    v30 = *v17;
    (*v17)(v15, v7);
    *&v47 = v45;
    *(&v47 + 1) = v26;
    *&v48 = v43;
    *(&v48 + 1) = v42;
    *&v49 = v41;
    *(&v49 + 1) = v40;
    v50 = 0;
    while (1)
    {
      v51 = v47;
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v31 = sub_22C90313C();
      if (v32)
      {
        break;
      }

      v20(v15, v55 + v31 * v46, v7);
      v20(v11, v19, v7);
      sub_22C7FB604(&qword_27D9C02E0, MEMORY[0x277D1D8A0]);
      v33 = sub_22C90A0BC();
      v30(v11, v7);
      v30(v15, v7);
      if (v33)
      {
        return 0;
      }

      sub_22C90315C();
    }

    result = sub_22C90314C();
    v16 = v38;
    v13 = v35;
    if (v38 != v36)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_22C7FCD04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v39 = a4;
  v7 = type metadata accessor for _PromptToolData(0);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v35 - v13);
  result = MEMORY[0x28223BE20](v12);
  v17 = (&v35 - v16);
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v38 = a2;
    v37 = a3;
    v36 = (&v35 - v16);
    while (!__OFADD__(v18, 1))
    {
      v41 = v18 + 1;
      v19 = *(v40 + 72);
      v53 = v18;
      v20 = a1 + v19 * v18;
      sub_22C7FDAEC(v20, v17);
      v21 = *a3;
      sub_22C90B62C();
      sub_22C48A9B4(v44, v17[1]);
      sub_22C48A9B4(v44, *v17);
      result = sub_22C90B66C();
      v22 = 1 << *a3;
      v23 = __OFSUB__(v22, 1);
      v24 = v22 - 1;
      if (v23)
      {
        goto LABEL_17;
      }

      v25 = v24 & result;
      v26 = v39;
      v27 = sub_22C9030FC();
      v28 = v17;
      v29 = v27;
      v43 = v30;
      v42 = v31;
      sub_22C7FB5AC(v28, type metadata accessor for _PromptToolData);
      *&v45 = a3;
      *(&v45 + 1) = v26;
      *&v46 = v25;
      *(&v46 + 1) = v29;
      *&v47 = v43;
      *(&v47 + 1) = v42;
      v48 = 0;
      while (1)
      {
        v49 = v45;
        v50 = v46;
        v51 = v47;
        v52 = v48;
        v32 = sub_22C90313C();
        if (v33)
        {
          break;
        }

        sub_22C7FDAEC(a1 + v32 * v19, v14);
        sub_22C7FDAEC(v20, v11);
        if (sub_22C48819C(*v14, *v11))
        {
          v34 = sub_22C48819C(v14[1], v11[1]);
          sub_22C7FB5AC(v11, type metadata accessor for _PromptToolData);
          sub_22C7FB5AC(v14, type metadata accessor for _PromptToolData);
          if (v34)
          {
            return 0;
          }
        }

        else
        {
          sub_22C7FB5AC(v11, type metadata accessor for _PromptToolData);
          sub_22C7FB5AC(v14, type metadata accessor for _PromptToolData);
        }

        sub_22C90315C();
      }

      result = sub_22C90314C();
      v18 = v41;
      a3 = v37;
      v17 = v36;
      if (v41 == v38)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C7FD07C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v39 = a4;
  v55 = a1;
  v7 = sub_22C90430C();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v15 = &v34 - v14;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v45 = a3;
  v37 = v4;
  v16 = 0;
  v17 = (v13 + 8);
  v36 = a2;
  v35 = v13;
  while (2)
  {
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v38 = v16 + 1;
    v18 = *(v13 + 72);
    v44 = v16;
    v46 = v18;
    v19 = v55 + v18 * v16;
    v20 = *(v13 + 16);
    v20(v15, v19, v7);
    v21 = v45;
    v22 = *v45;
    sub_22C7FB604(&qword_27D9BC810, MEMORY[0x277D85578]);
    result = sub_22C909F7C();
    v23 = 1 << *v21;
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v24)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v43 = v25 & result;
    v26 = v39;
    v27 = sub_22C9030FC();
    v41 = v28;
    v42 = v27;
    v40 = v29;
    v30 = *v17;
    (*v17)(v15, v7);
    *&v47 = v45;
    *(&v47 + 1) = v26;
    *&v48 = v43;
    *(&v48 + 1) = v42;
    *&v49 = v41;
    *(&v49 + 1) = v40;
    v50 = 0;
    while (1)
    {
      v51 = v47;
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v31 = sub_22C90313C();
      if (v32)
      {
        break;
      }

      v20(v15, v55 + v31 * v46, v7);
      v20(v11, v19, v7);
      sub_22C7FB604(&qword_27D9BC808, MEMORY[0x277D85578]);
      v33 = sub_22C90A0BC();
      v30(v11, v7);
      v30(v15, v7);
      if (v33)
      {
        return 0;
      }

      sub_22C90315C();
    }

    result = sub_22C90314C();
    v16 = v38;
    v13 = v35;
    if (v38 != v36)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_22C7FD3EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v39 = a4;
  v55 = a1;
  v7 = sub_22C901FAC();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v15 = &v34 - v14;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v45 = a3;
  v37 = v4;
  v16 = 0;
  v17 = (v13 + 8);
  v36 = a2;
  v35 = v13;
  while (2)
  {
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v38 = v16 + 1;
    v18 = *(v13 + 72);
    v44 = v16;
    v46 = v18;
    v19 = v55 + v18 * v16;
    v20 = *(v13 + 16);
    v20(v15, v19, v7);
    v21 = v45;
    v22 = *v45;
    sub_22C7FB604(&qword_2814357B0, MEMORY[0x277D1C338]);
    result = sub_22C909F7C();
    v23 = 1 << *v21;
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v24)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v43 = v25 & result;
    v26 = v39;
    v27 = sub_22C9030FC();
    v41 = v28;
    v42 = v27;
    v40 = v29;
    v30 = *v17;
    (*v17)(v15, v7);
    *&v47 = v45;
    *(&v47 + 1) = v26;
    *&v48 = v43;
    *(&v48 + 1) = v42;
    *&v49 = v41;
    *(&v49 + 1) = v40;
    v50 = 0;
    while (1)
    {
      v51 = v47;
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v31 = sub_22C90313C();
      if (v32)
      {
        break;
      }

      v20(v15, v55 + v31 * v46, v7);
      v20(v11, v19, v7);
      sub_22C7FB604(&qword_27D9BAA28, MEMORY[0x277D1C338]);
      v33 = sub_22C90A0BC();
      v30(v11, v7);
      v30(v15, v7);
      if (v33)
      {
        return 0;
      }

      sub_22C90315C();
    }

    result = sub_22C90314C();
    v16 = v38;
    v13 = v35;
    if (v38 != v36)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_22C7FD75C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = result;
    v6 = 0;
    while (2)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
      }

      else
      {
        v8 = *a3;
        *(v5 + 8 * v6);
        result = sub_22C90B61C();
        if (!__OFSUB__(1 << v8, 1))
        {
          sub_22C9030FC();
          while (1)
          {
            v9 = sub_22C90313C();
            if (v10)
            {
              break;
            }

            if (*(v5 + 8 * v9) == *(v5 + 8 * v6))
            {
              return 0;
            }

            sub_22C90315C();
          }

          result = sub_22C90314C();
          ++v6;
          if (v7 != a2)
          {
            continue;
          }

          return 1;
        }
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C7FD8A8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_22C36D860(v7);
  *v8 = v9;
  v8[1] = sub_22C46BC08;
  v10 = sub_22C36DBB4();

  return sub_22C7F6C24(v10);
}

uint64_t sub_22C7FD968()
{
  sub_22C36D5EC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_22C36D860(v5);
  *v6 = v7;
  v6[1] = sub_22C46BC08;
  v8 = sub_22C36DBB4();

  return sub_22C7F6E0C(v8, v9, v10, v4, v3);
}

uint64_t sub_22C7FDA38()
{
  result = sub_22C9037EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C7FDAEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C7FDB44(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C7FDBD0()
{
  v3 = *(v2 - 128);
  v4 = *(v3 + 72);
  v5 = *(v2 - 144);
  *(v2 - 120) = v1;
  v6 = *(v3 + 16);
  result = v0;
  v8 = *(v2 - 112);
  return result;
}

uint64_t sub_22C7FDC74()
{
}

uint64_t sub_22C7FDCA0()
{
}

void sub_22C7FDCC4()
{
  v1 = *(v0 - 120);
  v2 = *(v0 - 112);
  v3 = *(v0 - 152);
}

void sub_22C7FDCE4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v2 + 16);
  v4 = *(v2 + 80) + 32;
}

uint64_t sub_22C7FDD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = *(v25 - 120) + a25;

  return sub_22C908A5C();
}

uint64_t sub_22C7FDD80()
{
  v3 = *(v1 - 128) + *(*(v1 - 120) + 72) * v0;

  return sub_22C90371C();
}

uint64_t sub_22C7FDDA0()
{

  return swift_dynamicCastClass();
}

uint64_t sub_22C7FDDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 120) = a2;
  *(v3 - 112) = a3;

  return sub_22C90B50C();
}

uint64_t sub_22C7FDDD0()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_22C7FDE30()
{
  result = sub_22C90377C();
  if (v1 <= 0x3F)
  {
    result = sub_22C457168(319, qword_281431738);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C7FDECC(uint64_t a1)
{
  v43 = sub_22C908EAC();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v34[1] = v1;
    v47 = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v8 = v47;
    v11 = sub_22C57D74C(a1);
    result = v8;
    v12 = 0;
    v13 = a1 + 56;
    v39 = v3 + 8;
    v40 = v3 + 16;
    v35 = a1 + 64;
    v36 = v6;
    v37 = v3;
    v38 = a1;
    v41 = a1 + 56;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(a1 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_25;
        }

        v46 = v10;
        v44 = v12;
        v45 = v9;
        v15 = v42;
        v16 = v43;
        v17 = result;
        (*(v3 + 16))(v42, *(a1 + 48) + *(v3 + 72) * v11, v43);
        v18 = sub_22C908E7C();
        v20 = v19;
        (*(v3 + 8))(v15, v16);
        result = v17;
        v47 = v17;
        v21 = *(v17 + 16);
        if (v21 >= *(v17 + 24) >> 1)
        {
          sub_22C3B5E2C();
          result = v47;
        }

        *(result + 16) = v21 + 1;
        v22 = result + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v20;
        v13 = v41;
        if (v46)
        {
          goto LABEL_29;
        }

        v3 = v37;
        a1 = v38;
        v23 = 1 << *(v38 + 32);
        if (v11 >= v23)
        {
          goto LABEL_26;
        }

        v24 = *(v41 + 8 * v14);
        if ((v24 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v38 + 36) != v45)
        {
          goto LABEL_28;
        }

        v25 = v24 & (-2 << (v11 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
          v26 = v36;
        }

        else
        {
          v27 = v14 << 6;
          v28 = v14 + 1;
          v26 = v36;
          v29 = (v35 + 8 * v14);
          while (v28 < (v23 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              v32 = result;
              sub_22C3A5038(v11, v45, 0);
              result = v32;
              v23 = __clz(__rbit64(v30)) + v27;
              goto LABEL_19;
            }
          }

          v33 = result;
          sub_22C3A5038(v11, v45, 0);
          result = v33;
        }

LABEL_19:
        v12 = v44 + 1;
        if (v44 + 1 == v26)
        {
          return result;
        }

        v10 = 0;
        v9 = *(a1 + 36);
        v11 = v23;
        if (v23 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

void sub_22C7FE1F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v29 = MEMORY[0x277D84F90];
    sub_22C3B7DB8();
    v5 = sub_22C6339F8(a1);
    v6 = 0;
    v7 = a1 + 64;
    v23 = v3;
    v24 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (*(a1 + 36) != v3)
      {
        goto LABEL_23;
      }

      v26 = v6;
      v27 = v3;
      v25 = v4;
      v9 = (*(a1 + 48) + 16 * v5);
      v10 = v9[1];
      v28 = *v9;
      v11 = *(*(a1 + 56) + v5);
      v12 = *(v29 + 16);
      v13 = *(v29 + 24);

      if (v12 >= v13 >> 1)
      {
        sub_22C3B7DB8();
      }

      *(v29 + 16) = v12 + 1;
      v14 = v29 + 24 * v12;
      *(v14 + 32) = v28;
      *(v14 + 40) = v10;
      *(v14 + 48) = v11;
      v15 = 1 << *(a1 + 32);
      if (v5 >= v15)
      {
        goto LABEL_24;
      }

      v7 = a1 + 64;
      v16 = *(a1 + 64 + 8 * v8);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v27)
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v8 << 6;
        v19 = v8 + 1;
        v20 = (a1 + 72 + 8 * v8);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_22C3A5038(v5, v27, v25 & 1);
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_19;
          }
        }

        sub_22C3A5038(v5, v27, v25 & 1);
      }

LABEL_19:
      v4 = 0;
      v6 = v26 + 1;
      v5 = v15;
      v3 = v23;
      if (v26 + 1 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

id sub_22C7FE43C(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22C90A0EC();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_22C90030C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_22C7FE524()
{
  v1 = sub_22C90384C();
  v2 = sub_22C369824(v1);
  v46 = v3;
  v47 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v45 = v7 - v6;
  v8 = sub_22C9099FC();
  v9 = sub_22C369824(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  sub_22C36EC5C();
  v14 = sub_22C9036EC();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v22 = v21 - v20;
  v23 = sub_22C908EAC();
  v24 = sub_22C369824(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v31 = v30 - v29;
  sub_22C90371C();
  v32 = (*(v17 + 88))(v22, v14);
  if (v32 == *MEMORY[0x277D1ECE0])
  {
LABEL_2:
    v33 = sub_22C370414();
    v34(v33);
    (*(v26 + 32))(v31, v22, v23);
    v35 = sub_22C908E7C();
    (*(v26 + 8))(v31, v23);
    return v35;
  }

  if (v32 == *MEMORY[0x277D1ECE8])
  {
    v36 = sub_22C370414();
    v37(v36);
    (*(v11 + 32))(v0, v22, v8);
    v35 = sub_22C9099DC();
    v38 = *(v11 + 8);
    v39 = sub_22C3720DC();
    v40(v39);
  }

  else
  {
    if (v32 == *MEMORY[0x277D1ECD8] || v32 == *MEMORY[0x277D1ECD0])
    {
      goto LABEL_2;
    }

    if (v32 == *MEMORY[0x277D1ECF8])
    {
      v43 = sub_22C370414();
      v44(v43);
      (*(v46 + 32))(v45, v22, v47);
      v35 = sub_22C9037FC();
      (*(v46 + 8))(v45, v47);
    }

    else
    {
      (*(v17 + 8))(v22, v14);
      return 0xD000000000000013;
    }
  }

  return v35;
}

uint64_t sub_22C7FE8B8()
{
  sub_22C369980();
  v0[14] = v1;
  v0[15] = v2;
  v0[12] = v3;
  v0[13] = v4;
  v5 = *(*(sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70) - 8) + 64);
  v0[16] = sub_22C3699D4();
  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C7FE944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C375B98();
  a19 = v21;
  a20 = v22;
  sub_22C3749D8();
  a18 = v20;
  v23 = *(v20 + 104);
  (*(v20 + 96))();
  v24 = *(v20 + 128);
  v26 = *(v20 + 112);
  v25 = *(v20 + 120);
  *(v20 + 40) = &type metadata for ToolRetrievalStageCombined;
  *(v20 + 48) = &off_283FC09F0;
  v27 = swift_allocObject();
  *(v20 + 16) = v27;
  v28 = type metadata accessor for AppNameRenderer_v1_0(0);
  v27[10] = v28;
  v27[11] = &off_283FB8878;
  v29 = sub_22C36D548(v27 + 7);
  FullPlannerPreferences.init()(v29 + *(v28 + 20));
  sub_22C9006AC();
  v27[15] = &type metadata for LaunchServicesDeveloperTypeRetriever;
  v27[16] = &off_283FC09E0;
  sub_22C36C730((v20 + 56), (v27 + 2));
  v27[17] = v26;
  v27[18] = v25;
  v27[19] = 100;
  v30 = sub_22C906D3C();
  sub_22C36C640(v24, 1, 1, v30);
  v31 = type metadata accessor for RenderingState();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();

  v27[20] = sub_22C480800(v24);
  sub_22C59675C();
  a9 = v34;
  v36 = *(v34 + 16);
  v35 = *(v34 + 24);
  if (v36 >= v35 >> 1)
  {
    sub_22C369AB0(v35);
    sub_22C59675C();
    a9 = v54;
  }

  v37 = *(v20 + 128);
  v38 = *(v20 + 40);
  v39 = *(v20 + 48);
  v40 = sub_22C36D1E4(v20 + 16, v38);
  v41 = *(v38 - 8);
  v42 = *(v41 + 64);
  v43 = sub_22C3699D4();
  (*(v41 + 16))(v43, v40, v38);
  sub_22C807574(v36, v43, &a9, v38, v39);
  sub_22C36FF94((v20 + 16));

  v44 = *(v20 + 8);
  sub_22C807C0C();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
}

uint64_t sub_22C7FEBEC()
{
  sub_22C36FB38();
  v3 = v2;
  v5 = v4;
  v1[65] = v0;
  v1[63] = v6;
  v1[64] = v2;
  v1[61] = v7;
  v1[62] = v8;
  v1[60] = v9;
  v10 = sub_22C9063DC();
  v1[66] = v10;
  sub_22C3699B8(v10);
  v1[67] = v11;
  v13 = *(v12 + 64);
  v1[68] = sub_22C3699D4();
  v14 = *(v3 - 8);
  v1[69] = v14;
  v15 = *(v14 + 64);
  v1[70] = sub_22C3699D4();
  v1[71] = *v5;
  v16 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22C7FECFC()
{
  sub_22C3743E4();
  (*(*(v0 + 552) + 16))(*(v0 + 560), *(v0 + 520), *(v0 + 512));
  sub_22C3A5908(&qword_27D9C03A8, &qword_22C9272A0);
  if (sub_22C37FB1C())
  {
    sub_22C36C730((v0 + 16), v0 + 296);
    sub_22C374168((v0 + 296), *(v0 + 320));
    v1 = swift_task_alloc();
    *(v0 + 576) = v1;
    *v1 = v0;
    v1[1] = sub_22C7FF1AC;
    v2 = *(v0 + 488);
    sub_22C386674(*(v0 + 480));

    return sub_22C800560();
  }

  else
  {
    v4 = *(v0 + 560);
    v5 = *(v0 + 512);
    sub_22C3A5908(&qword_27D9C03B0, &qword_22C9272A8);
    if (sub_22C37FB1C())
    {
      v6 = *(v0 + 568);
      sub_22C36C730((v0 + 56), v0 + 256);
      v7 = *(v0 + 288);
      sub_22C374168((v0 + 256), *(v0 + 280));
      *(v0 + 472) = v6;
      v8 = *(v7 + 16);
      sub_22C36CCA8();
      v43 = (v9 + *v9);
      v11 = *(v10 + 4);
      v12 = swift_task_alloc();
      *(v0 + 592) = v12;
      *v12 = v0;
      v12[1] = sub_22C7FF3B4;
      v13 = *(v0 + 488);
      v14 = sub_22C386674(*(v0 + 480));

      return v43(v14);
    }

    else
    {
      v15 = *(v0 + 560);
      v16 = *(v0 + 512);
      sub_22C3A5908(&qword_27D9C03B8, &qword_22C9272B0);
      if (sub_22C37FB1C())
      {
        sub_22C36C730((v0 + 96), v0 + 216);
        sub_22C374168((v0 + 216), *(v0 + 240));
        v17 = swift_task_alloc();
        *(v0 + 608) = v17;
        *v17 = v0;
        v17[1] = sub_22C7FF538;
        v18 = *(v0 + 488);
        v19 = *(v0 + 496);
        sub_22C386674(*(v0 + 480));

        return sub_22C802164();
      }

      else
      {
        v20 = *(v0 + 560);
        v21 = *(v0 + 512);
        sub_22C3A5908(&qword_27D9C03C0, &qword_22C9272B8);
        if (sub_22C37FB1C())
        {
          v22 = *(v0 + 568);
          sub_22C36C730((v0 + 136), v0 + 176);
          sub_22C374168((v0 + 176), *(v0 + 200));
          *(v0 + 464) = v22;
          v23 = swift_task_alloc();
          *(v0 + 624) = v23;
          *v23 = v0;
          v23[1] = sub_22C7FF740;
          v24 = *(v0 + 496);
          v25 = *(v0 + 504);
          v26 = *(v0 + 488);
          sub_22C386674(*(v0 + 480));

          return sub_22C803160();
        }

        else
        {
          v27 = *(v0 + 544);
          sub_22C903FCC();
          v28 = sub_22C9063CC();
          v29 = sub_22C90AADC();
          if (sub_22C37B204(v29))
          {
            v30 = sub_22C36D240();
            sub_22C36C890(v30);
            sub_22C36BB14(&dword_22C366000, v31, v32, "Unsupported tool retrieval stage type.");
            sub_22C369B50();
            MEMORY[0x2318B9880]();
          }

          v33 = *(v0 + 544);
          v34 = *(v0 + 536);
          v35 = *(v0 + 528);

          v36 = *(v34 + 8);
          v37 = sub_22C36BAFC();
          v38(v37);
          sub_22C802110();
          swift_allocError();
          *v39 = 0;
          swift_willThrow();
          v40 = sub_22C373A94();
          v41(v40);

          sub_22C369A24();

          return v42();
        }
      }
    }
  }
}

uint64_t sub_22C7FF1AC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v2[42] = v1;
  v2[43] = v4;
  v2[44] = v5;
  v2[45] = v0;
  sub_22C807C64();
  v7 = *(v6 + 576);
  v8 = *v1;
  sub_22C369970();
  *v9 = v8;
  *(v10 + 584) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C7FF2AC()
{
  sub_22C36FB38();
  sub_22C36FF94(v0 + 37);
  v2 = v0[43];
  v1 = v0[44];
  v3 = sub_22C807BD8();
  v4(v3);

  v5 = sub_22C36C4B0();

  return v6(v5);
}

uint64_t sub_22C7FF330()
{
  sub_22C36FB38();
  sub_22C36FF94((v0 + 296));
  v1 = *(v0 + 584);
  v2 = sub_22C373A94();
  v3(v2);

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C7FF3B4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v2[46] = v1;
  v2[47] = v4;
  v2[48] = v5;
  v2[49] = v0;
  sub_22C807C64();
  v7 = *(v6 + 592);
  v8 = *v1;
  sub_22C369970();
  *v9 = v8;
  *(v10 + 600) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C7FF4B4()
{
  sub_22C36FB38();
  sub_22C36FF94(v0 + 32);
  v2 = v0[47];
  v1 = v0[48];
  v3 = sub_22C807BD8();
  v4(v3);

  v5 = sub_22C36C4B0();

  return v6(v5);
}

uint64_t sub_22C7FF538()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v2[50] = v1;
  v2[51] = v4;
  v2[52] = v5;
  v2[53] = v0;
  sub_22C807C64();
  v7 = *(v6 + 608);
  v8 = *v1;
  sub_22C369970();
  *v9 = v8;
  *(v10 + 616) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C7FF638()
{
  sub_22C36FB38();
  sub_22C36FF94(v0 + 27);
  v2 = v0[51];
  v1 = v0[52];
  v3 = sub_22C807BD8();
  v4(v3);

  v5 = sub_22C36C4B0();

  return v6(v5);
}

uint64_t sub_22C7FF6BC()
{
  sub_22C36FB38();
  sub_22C36FF94((v0 + 216));
  v1 = *(v0 + 616);
  v2 = sub_22C373A94();
  v3(v2);

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C7FF740()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v2[54] = v1;
  v2[55] = v4;
  v2[56] = v5;
  v2[57] = v0;
  sub_22C807C64();
  v7 = *(v6 + 624);
  v8 = *v1;
  sub_22C369970();
  *v9 = v8;
  *(v10 + 632) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C7FF840()
{
  sub_22C36FB38();
  sub_22C36FF94(v0 + 22);
  v2 = v0[55];
  v1 = v0[56];
  v3 = sub_22C807BD8();
  v4(v3);

  v5 = sub_22C36C4B0();

  return v6(v5);
}

uint64_t sub_22C7FF8C4()
{
  sub_22C36FB38();
  sub_22C36FF94((v0 + 176));
  v1 = *(v0 + 632);
  v2 = sub_22C373A94();
  v3(v2);

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C7FF948()
{
  sub_22C36FB38();
  sub_22C36FF94((v0 + 256));
  v1 = *(v0 + 600);
  v2 = sub_22C373A94();
  v3(v2);

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C7FF9CC()
{
  sub_22C369980();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v1[2] = v5;
  v6 = sub_22C9063DC();
  v1[5] = v6;
  sub_22C3699B8(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = sub_22C36D0D4();
  v10 = swift_task_alloc();
  v11 = *v3;
  v1[8] = v10;
  v1[9] = v11;
  v12 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_22C7FFA88()
{
  if (*(v0[9] + 16))
  {
    v1 = v0[3];
    v2 = v0[4];
    v3 = v0[2];
    v4 = type metadata accessor for ToolRetrievalStageTwo(0);
    v5 = sub_22C374168((v2 + *(v4 + 20)), *(v2 + *(v4 + 20) + 24));

    v7 = sub_22C3AE694(v6);
    sub_22C807FA0(v7);
    v8 = *v5;
    sub_22C90716C();

    v9 = v0[8];
    v22 = v0[4];
    *(swift_task_alloc() + 16) = v22;
    sub_22C3B50C0();
    v24 = v23;

    sub_22C812724(*(v22 + *(v4 + 24)), v24);
    sub_22C7F5988();
    v26 = v25;
    sub_22C903FCC();

    v27 = sub_22C9063CC();
    LOBYTE(v22) = sub_22C90AABC();

    v28 = os_log_type_enabled(v27, v22);
    v29 = v0[8];
    v31 = v0[5];
    v30 = v0[6];
    if (v28)
    {
      sub_22C36FB44();
      v32 = sub_22C385814();
      v43 = v32;
      *v31 = 136315138;
      v33 = sub_22C7FFE58(v32, v26);
      v42 = v29;
      v35 = sub_22C36F9F4(v33, v34, &v43);

      *(v31 + 4) = v35;
      sub_22C376034(&dword_22C366000, v36, v37, "Stage two tools:\n%s");
      sub_22C36FF94(v32);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v30 + 8))(v42, v31);
    }

    else
    {

      (*(v30 + 8))(v29, v31);
    }
  }

  else
  {
    v10 = v0[7];
    sub_22C903FCC();
    v11 = sub_22C9063CC();
    v12 = sub_22C90AABC();
    if (sub_22C37B204(v12))
    {
      v13 = sub_22C36D240();
      sub_22C36C890(v13);
      sub_22C36BB14(&dword_22C366000, v14, v15, "No apps to retrieve tools over. Returning no tools from stage 2.");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];

    v19 = *(v17 + 8);
    v20 = sub_22C36BAFC();
    v21(v20);
    sub_22C7F56F4();
  }

  v39 = v0[7];
  v38 = v0[8];

  sub_22C37FCB8();
  sub_22C36BAFC();
  sub_22C36EC40();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_22C7FFDA8(uint64_t a1)
{
  v2 = sub_22C807B84();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C7FFDE4(uint64_t a1)
{
  v2 = sub_22C807B84();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C7FFE20()
{
  v0 = qword_27D9C0398;

  return v0;
}

uint64_t sub_22C7FFE58(uint64_t a1, uint64_t a2)
{
  v78 = sub_22C90384C();
  v3 = sub_22C369824(v78);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v84 = sub_22C9099FC();
  v8 = sub_22C369824(v84);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v13 = sub_22C9036EC();
  v14 = sub_22C369824(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  sub_22C36EC5C();
  v86 = sub_22C908EAC();
  v19 = sub_22C369824(v86);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v24 = *(a2 + 16);
  if (v24)
  {
    v90 = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v25 = sub_22C9037EC();
    sub_22C3699B8(v25);
    v27 = v26;
    v29 = v28;
    v30 = *(v27 + 80);
    v89 = *(v29 + 72);
    sub_22C36BA94();
    v32 = a2 + v31;
    v88 = v16 + 11;
    v87 = *MEMORY[0x277D1ECE0];
    v85 = *MEMORY[0x277D1ECE8];
    v83 = *MEMORY[0x277D1ECD8];
    v82 = *MEMORY[0x277D1ECD0];
    v77 = v16 + 1;
    v33 = v16 + 12;
    v76 = (v5 + 32);
    v75 = (v5 + 8);
    v79 = *MEMORY[0x277D1ECF8];
    v80 = (v10 + 8);
    v81 = (v10 + 32);
    do
    {
      sub_22C90371C();
      v34 = *v88;
      v35 = sub_22C3720DC();
      v37 = v36(v35);
      if (v37 == v87)
      {
        goto LABEL_4;
      }

      if (v37 == v85)
      {
        v48 = *v33;
        v49 = sub_22C3720DC();
        v50(v49);
        v51 = *v81;
        v52 = sub_22C38644C();
        v53(v52);
        v44 = sub_22C9099DC();
        v46 = v54;
        v47 = v80;
        goto LABEL_7;
      }

      if (v37 == v83 || v37 == v82)
      {
LABEL_4:
        v38 = *v33;
        v39 = sub_22C3720DC();
        v40(v39);
        v41 = *(v21 + 32);
        v42 = sub_22C38644C();
        v43(v42);
        v44 = sub_22C908E7C();
        v46 = v45;
        v47 = (v21 + 8);
      }

      else
      {
        if (v37 != v79)
        {
          v69 = *v77;
          v70 = sub_22C3720DC();
          v71(v70);
          v44 = 0xD000000000000013;
          v46 = 0x800000022C935760;
          goto LABEL_8;
        }

        v62 = *v33;
        v63 = sub_22C3720DC();
        v64(v63);
        v65 = *v76;
        v66 = sub_22C38644C();
        v67(v66);
        v44 = sub_22C9037FC();
        v46 = v68;
        v47 = v75;
      }

LABEL_7:
      v55 = *v47;
      v56 = sub_22C372FA4();
      v57(v56);
LABEL_8:
      v59 = *(v90 + 16);
      v58 = *(v90 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_22C369AB0(v58);
        sub_22C3B5E2C();
      }

      *(v90 + 16) = v59 + 1;
      v60 = v90 + 16 * v59;
      *(v60 + 32) = v44;
      *(v60 + 40) = v46;
      v32 += v89;
      --v24;
    }

    while (v24);
  }

  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C375144();
  sub_22C3D32C8(v72, &qword_27D9BB5D0, &unk_22C9112A0);
  v73 = sub_22C90A04C();

  return v73;
}

uint64_t sub_22C80037C(uint64_t a1, uint64_t a2, void (*a3)(void), unsigned int *a4, void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v11 = sub_22C90377C();
  v12 = sub_22C369824(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C36EC5C();
  v17 = sub_22C9036EC();
  v18 = sub_22C369824(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v25 = v24 - v23;
  a3();
  v26 = (*(v20 + 104))(v25, *a4, v17);
  a5(v26);
  (*(v14 + 16))(v6, a2, v11);
  sub_22C90370C();
  (*(v14 + 8))(a2, v11);
  v27 = a6(0);
  sub_22C369848(v27);
  return (*(v28 + 8))(a1);
}

uint64_t sub_22C800560()
{
  sub_22C369980();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = sub_22C9063DC();
  v1[14] = v4;
  sub_22C3699B8(v4);
  v1[15] = v5;
  v7 = *(v6 + 64);
  v1[16] = sub_22C36D0D4();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v8 = sub_22C90363C();
  v1[19] = v8;
  sub_22C3699B8(v8);
  v1[20] = v9;
  v11 = *(v10 + 64);
  v1[21] = sub_22C3699D4();
  v12 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C80066C()
{
  v52 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[13];
  v5 = type metadata accessor for ToolRetrievalStageOne(0);
  sub_22C378A4C(v4 + v5[5], (v0 + 2));
  v6 = sub_22C374168(v0 + 2, v0[5]);
  sub_22C90850C();
  (*(v2 + 104))(v1, *MEMORY[0x277D1EBD8], v3);
  v7 = sub_22C90362C();
  v8 = *(v2 + 8);
  v9 = sub_22C372FA4();
  v10(v9);
  if (v7)
  {
    v11 = (v0[13] + v5[7]);
    v13 = *v11;
    v12 = v11[1];
  }

  v14 = v0[11];
  v15 = v0[12];
  v16 = *v6;
  sub_22C90713C();
  v17 = v0[18];
  v18 = v0[13];

  sub_22C36FF94(v0 + 2);
  *(swift_task_alloc() + 16) = v18;
  sub_22C794B1C();

  sub_22C7F56F4();
  sub_22C8127DC(*(v18 + v5[6]), v19, v20);
  v22 = v21;
  v24 = v23;

  v25 = sub_22C36BAFC();
  v27 = sub_22C8019DC(v25, v26, v22, v24);
  v29 = v28;
  sub_22C903FCC();

  v30 = sub_22C9063CC();
  v31 = sub_22C90AABC();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[18];
  v35 = v0[14];
  v34 = v0[15];
  if (v32)
  {
    v36 = sub_22C36FB44();
    v37 = sub_22C370060();
    v50 = v27;
    v51 = v37;
    v38 = v37;
    *v36 = 136315138;
    v39 = sub_22C7FFE58(v37, v29);
    v49 = v33;
    v41 = sub_22C36F9F4(v39, v40, &v51);

    *(v36 + 4) = v41;
    sub_22C3863B4(&dword_22C366000, v42, v31, "Stage one tools:\n%s");
    sub_22C36FF94(v38);
    v27 = v50;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (*(v34 + 8))(v49, v35);
  }

  else
  {

    (*(v34 + 8))(v33, v35);
  }

  v43 = v0[21];
  v44 = v0[17];
  v45 = v0[18];
  v46 = v0[16];

  sub_22C37FCB8();

  return v47(v27, v29);
}

uint64_t sub_22C800BE4@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v100 = a3;
  v98 = a2;
  v4 = sub_22C3A5908(&qword_27D9C03D0, &unk_22C9272E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v79 - v6;
  v86 = sub_22C90848C();
  v83 = *(v86 - 8);
  v7 = *(v83 + 64);
  v8 = MEMORY[0x28223BE20](v86);
  v81 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = &v79 - v10;
  v90 = sub_22C9036EC();
  v89 = *(v90 - 8);
  v11 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v95 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C9037DC();
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = *(v96 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v93 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v79 - v17;
  v18 = sub_22C90377C();
  v103 = *(v18 - 8);
  v104 = v18;
  v19 = *(v103 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v91 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v105 = &v79 - v22;
  v99 = sub_22C908EAC();
  v88 = *(v99 - 8);
  v23 = *(v88 + 64);
  MEMORY[0x28223BE20](v99);
  v101 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v92 = &v79 - v27;
  v28 = sub_22C3A5908(&qword_27D9C03D8, &qword_22C9272F0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v79 - v30;
  v32 = sub_22C9084FC();
  v84 = *(v32 - 8);
  v33 = *(v84 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v79 - v37;
  v39 = sub_22C3A5908(&qword_27D9C03E0, &qword_22C9272F8);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v79 - v41;
  v43 = sub_22C90643C();
  v102 = *(v43 - 8);
  v44 = *(v102 + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v87 = (&v79 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v45);
  v48 = &v79 - v47;
  sub_22C378A4C(a1, v106);
  sub_22C3A5908(&qword_27D9C03E8, &unk_22C927300);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_22C36C640(v42, 1, 1, v43);
    sub_22C3AC228(v42, &qword_27D9C03E0, &qword_22C9272F8);
    sub_22C378A4C(a1, v106);
    if (swift_dynamicCast())
    {
      sub_22C36C640(v31, 0, 1, v32);
      v59 = v84;
      (*(v84 + 32))(v38, v31, v32);
      (*(v59 + 16))(v36, v38, v32);
      v60 = v105;
      (*(v103 + 16))(v105, v98, v104);
      v61 = v100;
      sub_22C80037C(v36, v60, MEMORY[0x277D1E520], MEMORY[0x277D1ECE8], MEMORY[0x277D1E528], MEMORY[0x277D1E530]);
      (*(v59 + 8))(v38, v32);
    }

    else
    {
      sub_22C36C640(v31, 1, 1, v32);
      sub_22C3AC228(v31, &qword_27D9C03D8, &qword_22C9272F0);
      sub_22C378A4C(a1, v106);
      v70 = v85;
      v71 = v86;
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_22C36C640(v70, 1, 1, v71);
        sub_22C3AC228(v70, &qword_27D9C03D0, &unk_22C9272E0);
        v76 = sub_22C9037EC();
        v77 = v100;
        v78 = 1;
        return sub_22C36C640(v77, v78, 1, v76);
      }

      sub_22C36C640(v70, 0, 1, v71);
      v72 = v83;
      v73 = v82;
      (*(v83 + 32))(v82, v70, v71);
      v74 = v81;
      (*(v72 + 16))(v81, v73, v71);
      v75 = v105;
      (*(v103 + 16))(v105, v98, v104);
      v61 = v100;
      sub_22C80037C(v74, v75, MEMORY[0x277D1E4B0], MEMORY[0x277D1ECD0], MEMORY[0x277D1E4B8], MEMORY[0x277D1E4C0]);
      (*(v72 + 8))(v73, v71);
    }

    v76 = sub_22C9037EC();
    v77 = v61;
    v78 = 0;
    return sub_22C36C640(v77, v78, 1, v76);
  }

  sub_22C36C640(v42, 0, 1, v43);
  (*(v102 + 32))(v48, v42, v43);
  v49 = v101;
  sub_22C90641C();
  v50 = sub_22C908E5C();
  v51 = v88;
  v52 = *(v88 + 8);
  v52(v49, v99);
  v89 += 104;
  v80 = v48;
  if (v50)
  {
    sub_22C90641C();
    v87 = *(v103 + 16);
    v53 = v105;
    v87(v105, v98, v104);
    v106[0] = MEMORY[0x277D84F90];
    sub_22C80760C(&qword_27D9BB820, MEMORY[0x277D1ED48]);
    v98 = v52;
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
    v54 = v94;
    v55 = v97;
    sub_22C90AE4C();
    v56 = v95;
    (*(v51 + 16))(v95, v101, v99);
    (*v89)(v56, *MEMORY[0x277D1ECD8], v90);
    v87(v91, v53, v104);
    v57 = v96;
    (*(v96 + 16))(v93, v54, v55);
    v58 = v92;
    sub_22C9036FC();
    (*(v57 + 8))(v54, v55);
    (*(v103 + 8))(v105, v104);
    v98(v101, v99);
    (*(v102 + 8))(v80, v43);
  }

  else
  {
    (*(v102 + 16))();
    v101 = *(v103 + 16);
    (v101)(v105, v98, v104);
    v106[0] = MEMORY[0x277D84F90];
    sub_22C80760C(&qword_27D9BB820, MEMORY[0x277D1ED48]);
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
    v62 = v94;
    v63 = v97;
    sub_22C90AE4C();
    v64 = v95;
    sub_22C90641C();
    (*v89)(v64, *MEMORY[0x277D1ECE0], v90);
    sub_22C90642C();
    v65 = v104;
    (v101)(v91, v105, v104);
    v66 = v96;
    (*(v96 + 16))(v93, v62, v63);
    v58 = v92;
    sub_22C9036FC();
    (*(v66 + 8))(v62, v63);
    (*(v103 + 8))(v105, v65);
    v67 = *(v102 + 8);
    v67(v87, v43);
    v67(v80, v43);
  }

  v68 = sub_22C9037EC();
  sub_22C36C640(v58, 0, 1, v68);
  return sub_22C8073A4(v58, v100);
}

uint64_t sub_22C8019DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = a3;
  v4 = a2;
  v6 = *(a2 + 16);
  if (v6 < a3 || v6 < a4)
  {
    goto LABEL_13;
  }

  if (a4 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 == a4 - a3)
  {

    v8 = v4;
    goto LABEL_9;
  }

LABEL_15:
  v13 = (2 * a4) | 1;
  v14 = *(sub_22C9037EC() - 8);
  sub_22C46FEFC(v4, v4 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v5, v13);
  v8 = v15;
LABEL_9:
  sub_22C3B0E80();
  sub_22C7D61C0();
  v10 = v9;
  v11 = *(v8 + 16);

  if (v11 <= 0xF)
  {

    return 0;
  }

  return v10;
}

uint64_t sub_22C801AF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_22C9036EC();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22C9037DC();
  v42 = *(v39 - 8);
  v6 = *(v42 + 64);
  v7 = MEMORY[0x28223BE20](v39);
  v41 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = &v32 - v9;
  v10 = sub_22C90377C();
  v33 = v10;
  v35 = *(v10 - 8);
  v11 = v35;
  v12 = *(v35 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v34 = &v32 - v16;
  v18 = sub_22C90643C();
  v19 = *(v18 - 8);
  v37 = v18;
  v38 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))();
  v24 = *(v11 + 16);
  v24(v17, a1, v10);
  v46 = MEMORY[0x277D84F90];
  sub_22C80760C(&qword_27D9BB820, MEMORY[0x277D1ED48]);
  sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
  sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
  v25 = v36;
  v26 = v39;
  sub_22C90AE4C();
  v27 = v40;
  v32 = v23;
  sub_22C90641C();
  (*(v43 + 104))(v27, *MEMORY[0x277D1ECE0], v44);
  sub_22C90642C();
  v28 = v33;
  v29 = v34;
  v24(v15, v34, v33);
  v30 = v42;
  (*(v42 + 16))(v41, v25, v26);
  sub_22C9036FC();
  (*(v30 + 8))(v25, v26);
  (*(v35 + 8))(v29, v28);
  return (*(v38 + 8))(v32, v37);
}

uint64_t sub_22C801F68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C802014;

  return sub_22C7FF9CC();
}

uint64_t sub_22C802014()
{
  sub_22C36FB38();
  v3 = v2;
  v5 = v4;
  sub_22C369A3C();
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_22C369970();
  *v9 = v8;

  sub_22C37FCB8();
  if (!v0)
  {
    v10 = v5;
    v11 = v3;
  }

  return v12(v10, v11);
}

unint64_t sub_22C802110()
{
  result = qword_27D9C03C8;
  if (!qword_27D9C03C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C03C8);
  }

  return result;
}

uint64_t sub_22C802164()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_22C9036EC();
  v1[7] = v5;
  sub_22C3699B8(v5);
  v1[8] = v6;
  v8 = *(v7 + 64);
  v1[9] = sub_22C3699D4();
  v9 = sub_22C9037DC();
  v1[10] = v9;
  sub_22C3699B8(v9);
  v1[11] = v10;
  v12 = *(v11 + 64);
  v1[12] = sub_22C36D0D4();
  v1[13] = swift_task_alloc();
  v13 = sub_22C90377C();
  v1[14] = v13;
  sub_22C3699B8(v13);
  v1[15] = v14;
  v16 = *(v15 + 64);
  v1[16] = sub_22C36D0D4();
  v1[17] = swift_task_alloc();
  v17 = sub_22C908EAC();
  v1[18] = v17;
  sub_22C3699B8(v17);
  v1[19] = v18;
  v20 = *(v19 + 64);
  v1[20] = sub_22C3699D4();
  v21 = sub_22C90643C();
  v1[21] = v21;
  sub_22C3699B8(v21);
  v1[22] = v22;
  v24 = *(v23 + 64);
  v1[23] = sub_22C3699D4();
  v25 = sub_22C9037EC();
  v1[24] = v25;
  sub_22C3699B8(v25);
  v1[25] = v26;
  v28 = *(v27 + 64);
  v1[26] = sub_22C3699D4();
  v29 = sub_22C9063DC();
  v1[27] = v29;
  sub_22C3699B8(v29);
  v1[28] = v30;
  v32 = *(v31 + 64);
  v1[29] = sub_22C36D0D4();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v33 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_22C802410()
{
  v147 = v0;
  v1 = v0[32];
  v3 = v0[4];
  v2 = v0[5];
  sub_22C903FCC();

  v4 = sub_22C9063CC();
  v5 = sub_22C90AABC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  v9 = v0[27];
  v8 = v0[28];
  if (v6)
  {
    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[3];
    v13 = swift_slowAlloc();
    v146[0] = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_22C36F9F4(v12, v11, v146);
    *(v13 + 12) = 2080;
    sub_22C9093BC();
    sub_22C80760C(&qword_28142FA90, MEMORY[0x277D72A78]);
    v14 = sub_22C90A8CC();
    v16 = sub_22C36F9F4(v14, v15, v146);

    *(v13 + 14) = v16;
    _os_log_impl(&dword_22C366000, v4, v5, "Tool Retrieval Query for stage 3: %s, types: %s", v13, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v17 = *(v8 + 8);
    v17(v7, v9);
  }

  else
  {

    v17 = *(v8 + 8);
    v17(v7, v9);
  }

  if (*(v0[5] + 16))
  {
    v140 = v17;
    v18 = v0[6];
    v19 = type metadata accessor for ToolRetrievalStageThree(0);
    v20 = (v18 + *(v19 + 24));
    v21 = v20[4];
    sub_22C374168(v20, v20[3]);
    sub_22C3A5908(&qword_27D9BEC40, &unk_22C920500);
    v22 = sub_22C908D4C();
    sub_22C369824(v22);
    v24 = v23;
    v26 = *(v25 + 72);
    v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_22C90F800;
    (*(v24 + 104))(v28 + v27, *MEMORY[0x277D720E0], v22);
    sub_22C36BB08();
    sub_22C90667C();

    v53 = v0[5];
    v54 = v0[6];
    sub_22C3AF348();
    v56 = v55;
    v57 = swift_task_alloc();
    *(v57 + 16) = v54;
    v58 = sub_22C6051A0(MEMORY[0x277D84FA0], sub_22C807434, v57, v53);
    v59 = v0[31];

    v60 = sub_22C805DD0(v58, v56, sub_22C8065EC, sub_22C8065EC);

    sub_22C903FCC();

    v61 = sub_22C9063CC();
    LOBYTE(v54) = sub_22C90AABC();

    v62 = os_log_type_enabled(v61, v54);
    v63 = v0[31];
    v64 = v0[27];
    v65 = v0[28];
    if (v62)
    {
      v66 = v0[18];
      sub_22C36FB44();
      v139 = v64;
      v67 = sub_22C385814();
      v146[0] = v67;
      *v65 = 136315138;
      sub_22C80760C(&qword_27D9BAA80, MEMORY[0x277D72238]);
      v68 = sub_22C90A8CC();
      v70 = sub_22C36F9F4(v68, v69, v146);

      *(v65 + 4) = v70;
      sub_22C376034(&dword_22C366000, v71, v72, "Stage 3 entity setters with type overlap for provided types: %s");
      sub_22C36FF94(v67);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v73 = v63;
      v74 = v139;
    }

    else
    {

      v73 = v63;
      v74 = v64;
    }

    v140(v73, v74);
    v75 = v0[3];
    v76 = v0[4];
    v77 = (v0[6] + *(v19 + 20));
    v78 = sub_22C374168(v77, v77[3]);
    sub_22C7FDECC(v60);

    v79 = *v78;
    v80 = sub_22C90715C();

    v81 = v0[30];
    sub_22C903FCC();

    v82 = sub_22C9063CC();
    v83 = sub_22C90AABC();

    v84 = os_log_type_enabled(v82, v83);
    v85 = v0[30];
    v87 = v0[27];
    v86 = v0[28];
    if (v84)
    {
      v88 = v0[21];
      v144 = v0[27];
      v89 = sub_22C36FB44();
      v90 = sub_22C370060();
      v146[0] = v90;
      *v89 = 136315138;
      v91 = MEMORY[0x2318B7AD0](v80, v88);
      v93 = v85;
      v94 = v80;
      v95 = sub_22C36F9F4(v91, v92, v146);

      *(v89 + 4) = v95;
      v80 = v94;
      _os_log_impl(&dword_22C366000, v82, v83, "Stage 3 semantic results: %s", v89, 0xCu);
      sub_22C36FF94(v90);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v140(v93, v144);
    }

    else
    {

      v140(v85, v87);
    }

    v96 = *(v80 + 16);
    if (v96)
    {
      v97 = v0[25];
      v98 = v0[22];
      v99 = v0[19];
      v100 = v0[15];
      v101 = v0[11];
      v102 = v0[8];
      v146[0] = MEMORY[0x277D84F90];
      sub_22C3B60C0(0, v96, 0);
      v103 = *(v98 + 16);
      v98 += 16;
      v128 = v103;
      v104 = *(v98 + 64);
      sub_22C36BA94();
      v106 = v80 + v105;
      v127 = (v100 + 104);
      v107 = v146[0];
      v126 = *(v98 + 56);
      v125 = *MEMORY[0x277D1ED40];
      v124 = (v100 + 16);
      v123 = (v100 + 8);
      v122 = (v98 - 8);
      v121 = *MEMORY[0x277D1ECD8];
      do
      {
        v142 = v96;
        v134 = v0[23];
        v135 = v0[21];
        v129 = v0[20];
        v108 = v0[17];
        v145 = v0[18];
        v132 = v0[16];
        v109 = v0[13];
        v110 = v0[14];
        v133 = v0[12];
        v111 = v0[10];
        v130 = v0[9];
        v131 = v0[7];
        v137 = v106;
        v128(v134, v106);
        sub_22C90641C();
        (*v127)(v108, v125, v110);
        v0[2] = MEMORY[0x277D84F90];
        sub_22C807BF4();
        sub_22C80760C(&qword_27D9BB820, v112);
        sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
        sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
        sub_22C90AE4C();
        (*(v99 + 16))(v130, v129, v145);
        (*(v102 + 104))(v130, v121, v131);
        (*v124)(v132, v108, v110);
        (*(v101 + 16))(v133, v109, v111);
        sub_22C9036FC();
        (*(v101 + 8))(v109, v111);
        (*v123)(v108, v110);
        (*(v99 + 8))(v129, v145);
        (*v122)(v134, v135);
        v146[0] = v107;
        v114 = *(v107 + 16);
        v113 = *(v107 + 24);
        if (v114 >= v113 >> 1)
        {
          v120 = sub_22C369AB0(v113);
          sub_22C3B60C0(v120, v114 + 1, 1);
          v107 = v146[0];
        }

        v115 = v0[26];
        v116 = v0[24];
        *(v107 + 16) = v114 + 1;
        v117 = *(v97 + 80);
        sub_22C36BA94();
        (*(v119 + 32))(v107 + v118 + *(v119 + 72) * v114);
        v106 = v137 + v126;
        v96 = v142 - 1;
      }

      while (v142 != 1);
    }
  }

  else
  {
    v29 = v0[29];
    sub_22C903FCC();
    v30 = sub_22C9063CC();
    v31 = sub_22C90AABC();
    if (sub_22C37B204(v31))
    {
      v32 = sub_22C36D240();
      sub_22C36C890(v32);
      sub_22C36BB14(&dword_22C366000, v33, v34, "Types list for stage 3 retrieval is empty. Emitting no tools.");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v36 = v0[28];
    v35 = v0[29];
    v37 = v0[27];

    v38 = sub_22C36BAFC();
    (v17)(v38);
  }

  sub_22C7F56F4();
  v141 = v40;
  v143 = v39;
  v42 = v0[31];
  v41 = v0[32];
  v44 = v0[29];
  v43 = v0[30];
  v45 = v0[26];
  v46 = v0[23];
  v47 = v0[20];
  v48 = v0[16];
  v49 = v0[17];
  v50 = v0[13];
  v136 = v0[12];
  v138 = v0[9];

  sub_22C37FCB8();

  return v51(v143, v141);
}

void sub_22C802FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a1;
  v5 = sub_22C90952C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a3 + *(type metadata accessor for ToolRetrievalStageThree(0) + 24));
  v11 = v10[4];
  sub_22C374168(v10, v10[3]);
  sub_22C90935C();
  sub_22C90668C();
  (*(v6 + 8))(v9, v5);
  if (!v3)
  {
    sub_22C8B58E8();
  }
}

uint64_t sub_22C803160()
{
  sub_22C36FB38();
  v3 = v2;
  v28 = *MEMORY[0x277D85DE8];
  v1[25] = v4;
  v1[26] = v0;
  v1[23] = v5;
  v1[24] = v6;
  v1[22] = v7;
  v8 = *(*(sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540) - 8) + 64);
  v1[27] = sub_22C3699D4();
  v9 = sub_22C9037EC();
  v1[28] = v9;
  sub_22C3699B8(v9);
  v1[29] = v10;
  v12 = *(v11 + 64);
  v1[30] = sub_22C36D0D4();
  v1[31] = swift_task_alloc();
  v13 = sub_22C90363C();
  v1[32] = v13;
  sub_22C3699B8(v13);
  v1[33] = v14;
  v16 = *(v15 + 64);
  v1[34] = sub_22C3699D4();
  v17 = sub_22C9063DC();
  v1[35] = v17;
  sub_22C3699B8(v17);
  v1[36] = v18;
  v20 = *(v19 + 64);
  v1[37] = sub_22C36D0D4();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v21 = swift_task_alloc();
  v22 = *v3;
  v1[41] = v21;
  v1[42] = v22;
  v23 = *MEMORY[0x277D85DE8];
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

void sub_22C803350()
{
  sub_22C3749D8();
  v186 = v0;
  v182 = *MEMORY[0x277D85DE8];
  v1 = 0;
  sub_22C7FE1F8(v0[42]);
  v3 = sub_22C3AF470(v2);
  v4 = *(v3 + 32);
  sub_22C807C50();
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v9 <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_2:
    MEMORY[0x28223BE20](v5);
    v10 = sub_22C807C3C();
    sub_22C88FAFC(v10, v7, v8);
    v11 = 0;
    v12 = 0;
    v13 = 1 << *(v3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v3 + 56);
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v17 = v16 | (v12 << 6);
LABEL_12:
      if (*(*(v3 + 48) + 24 * v17 + 16))
      {
        *(v8 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v11++, 1))
        {
          __break(1u);
LABEL_16:
          v21 = sub_22C377B94();
          sub_22C7ED290(v21, v22, v23, v3);
          v25 = v24;
          goto LABEL_17;
        }
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= ((v13 + 63) >> 6))
      {
        goto LABEL_16;
      }

      v19 = *(v3 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v15 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v12 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  swift_slowAlloc();

  v161 = sub_22C377B94();
  v165 = sub_22C805CC0(v161, v162, v3, v163, 0, v164);
  if (v1)
  {

    swift_bridgeObjectRelease_n();
    v166 = *MEMORY[0x277D85DE8];
    sub_22C369B50();
    sub_22C372034();

    JUMPOUT(0x2318B9880);
  }

  v25 = v165;
  swift_bridgeObjectRelease_n();
  sub_22C369B50();
  MEMORY[0x2318B9880]();
LABEL_17:
  v26 = v0[26];
  v27 = swift_task_alloc();
  v27[2] = v26;

  v176 = v25;
  v8 = sub_22C8070D4(sub_22C807450, v27, v25);

  v28 = swift_task_alloc();
  *(v28 + 16) = v26;
  sub_22C3B5114(sub_22C807470, v28, v8);
  v30 = v29;

  v7 = 0;
  v31 = *(v30 + 16);
  v3 = MEMORY[0x277D84F90];
LABEL_18:
  v32 = (v30 + 40 + 16 * v7);
  while (v31 != v7)
  {
    if (v7 >= *(v30 + 16))
    {
      goto LABEL_58;
    }

    v8 = *(v32 - 1);
    v33 = *v32;
    v32 += 2;
    ++v7;
    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v180 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = *(v3 + 16);
        sub_22C3B5E2C();
        v3 = v180;
      }

      v37 = *(v3 + 16);
      if (v37 >= *(v3 + 24) >> 1)
      {
        sub_22C3B5E2C();
        v3 = v180;
      }

      *(v3 + 16) = v37 + 1;
      v38 = v3 + 16 * v37;
      *(v38 + 32) = v8;
      *(v38 + 40) = v33;
      goto LABEL_18;
    }
  }

  v39 = v0[26];
  v178 = v3;
  v41 = v0[23];
  v40 = v0[24];
  v42 = v0[22];

  *(swift_task_alloc() + 16) = v39;
  sub_22C794D80();
  v44 = v43;

  v45 = sub_22C3AD928(v44);
  v180 = v42;
  v181 = v41;

  v46 = sub_22C38C500();
  MEMORY[0x2318B7850](v46);
  v179[0] = v178;

  sub_22C876C98(v179);
  if (!v1)
  {
    v48 = v0[41];
    v0[19] = v179[0];
    v49 = sub_22C38644C();
    sub_22C3A5908(v49, v50);
    sub_22C375144();
    sub_22C3D32C8(v51, &qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C38C500();
    v52 = sub_22C90A04C();
    v54 = v53;

    MEMORY[0x2318B7850](v52, v54);

    v55 = sub_22C38C500();
    MEMORY[0x2318B7850](v55);
    sub_22C8741B8(v45, v56, v57, v58, v59, v60, v61, v62, v168, v169, v170, v171, v172, v173, v45, v175, v176, v178, v179[0], v179[1], v180, v181, v182, v183, v184, v185);
    v0[20] = v63;
    sub_22C38C500();
    v64 = sub_22C90A04C();
    v66 = v65;

    MEMORY[0x2318B7850](v64, v66);

    v67 = v180;
    v68 = v181;
    sub_22C903FCC();

    v69 = sub_22C9063CC();
    v70 = sub_22C90AABC();

    v71 = os_log_type_enabled(v69, v70);
    v72 = v0[41];
    v74 = v0[35];
    v73 = v0[36];
    if (v71)
    {
      v75 = sub_22C36FB44();
      v64 = sub_22C370060();
      v180 = v64;
      *v75 = 136315138;
      *(v75 + 4) = sub_22C36F9F4(v67, v68, &v180);
      sub_22C3863B4(&dword_22C366000, v76, v70, "Modified tool retrieval query: %s");
      sub_22C36FF94(v64);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v175 = *(v73 + 8);
    v175(v72, v74);
    v77 = *(v0[25] + 96);
    sub_22C903CAC();
    if (v78)
    {
      v79 = v0[22];
      v80 = v0[23];
      sub_22C900F8C();
      v0[12] = v79;
      v0[13] = v80;
      v0[14] = v67;
      v0[15] = v68;
      sub_22C8074AC();
      sub_22C807500();

      sub_22C372FA4();
      sub_22C900F7C();

      v81 = v0[13];
      v82 = v0[15];
    }

    else
    {
      v83 = v0[40];
      sub_22C903FCC();
      v84 = sub_22C9063CC();
      v85 = sub_22C90AADC();
      v86 = os_log_type_enabled(v84, v85);
      v87 = v0[40];
      v89 = v0[35];
      v88 = v0[36];
      if (v86)
      {
        v90 = sub_22C36D240();
        sub_22C36C890(v90);
        _os_log_impl(&dword_22C366000, v84, v85, "Unable to retrieve a requestId for the Tool Retrieval request", v64, 2u);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v175(v87, v89);
    }

    v91 = v0[42];
    v92 = v0[33];
    v93 = v0[34];
    v94 = v0[32];
    sub_22C378A4C(v0[26], (v0 + 2));
    v95 = sub_22C374168(v0 + 2, v0[5]);
    sub_22C90850C();

    sub_22C3AE694(v96);
    (*(v92 + 104))(v93, *MEMORY[0x277D1EBD8], v94);
    LOBYTE(v91) = sub_22C90362C();
    (*(v92 + 8))(v93, v94);
    if (v91)
    {
      v97 = v0[26];
      v98 = *(v97 + 120);
      v99 = *(v97 + 128);
    }

    v100 = *v95;
    v3 = sub_22C90714C();
    v171 = v68;
    v1 = v0[29];

    sub_22C36FF94(v0 + 2);
    v7 = 0;
    v101 = *(v3 + 16);
    v170 = v1;
    v172 = v1 + 4;
    v173 = MEMORY[0x277D84F90];
    v8 = v3 + 32;
LABEL_41:
    for (i = v8 + 40 * v7; ; i += 40)
    {
      if (v101 == v7)
      {
        v122 = v0[38];
        v123 = v0[26];

        sub_22C7F56F4();
        v126 = sub_22C8127DC(*(v123 + 136), v124, v125);
        v128 = v127;
        v130 = v129;
        v132 = v131;

        sub_22C8019DC(v126, v128, v130, v132);
        v134 = v133;
        sub_22C903FCC();

        v135 = sub_22C9063CC();
        v136 = sub_22C90AABC();

        v137 = os_log_type_enabled(v135, v136);
        v138 = v0[38];
        v139 = v0[35];
        v140 = v0[36];
        if (v137)
        {
          v141 = sub_22C36FB44();
          v177 = v139;
          v142 = sub_22C370060();
          v180 = v142;
          *v141 = 136315138;
          v143 = sub_22C7FFE58(v142, v134);
          v174 = v138;
          v145 = sub_22C36F9F4(v143, v144, &v180);

          *(v141 + 4) = v145;
          sub_22C3863B4(&dword_22C366000, v146, v136, "Stage **combined 1 & 2** tools:\n%s");
          sub_22C36FF94(v142);
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          sub_22C369B50();
          MEMORY[0x2318B9880]();

          v147 = v174;
          v148 = v177;
        }

        else
        {

          v147 = v138;
          v148 = v139;
        }

        v175(v147, v148);
        v150 = v0[40];
        v149 = v0[41];
        v152 = v0[38];
        v151 = v0[39];
        v153 = v0[37];
        v154 = v0[34];
        v156 = v0[30];
        v155 = v0[31];
        v157 = v0[27];

        sub_22C37FCB8();
        v158 = *MEMORY[0x277D85DE8];
        sub_22C372034();

        __asm { BRAA            X3, X16 }
      }

      if (v7 >= *(v3 + 16))
      {
        break;
      }

      v103 = v0[42];
      v104 = v0[27];
      sub_22C378A4C(i, (v0 + 7));
      sub_22C804990((v0 + 7), v103, v104);
      v105 = v0[27];
      v1 = v0[28];
      sub_22C36FF94(v0 + 7);
      if (sub_22C370B74(v105, 1, v1) != 1)
      {
        v106 = v0[31];
        v168 = v0[30];
        v169 = v8;
        v107 = v0[28];
        v108 = *v172;
        (*v172)(v106, v0[27], v107);
        v108(v168, v106, v107);
        v109 = v173;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = *(v173 + 16);
          sub_22C590968();
          v109 = v120;
        }

        v111 = *(v109 + 16);
        v110 = *(v109 + 24);
        v112 = v109;
        v1 = (v111 + 1);
        if (v111 >= v110 >> 1)
        {
          sub_22C369AB0(v110);
          sub_22C590968();
          v112 = v121;
        }

        ++v7;
        v113 = v0[30];
        v114 = v0[28];
        v173 = v112;
        *(v112 + 16) = v1;
        v115 = *(v170 + 80);
        sub_22C36BA94();
        (v108)(v116 + v117 + *(v118 + 72) * v111);
        v8 = v169;
        goto LABEL_41;
      }

      sub_22C3AC228(v0[27], &qword_27D9BD2A8, &qword_22C920540);
      ++v7;
    }

    goto LABEL_59;
  }

  v47 = *MEMORY[0x277D85DE8];
  sub_22C372034();
}

uint64_t sub_22C8042F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144);
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (*(v6 + 16) && (v7 = sub_22C36E2BC(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + v7);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_22C580120();

    v10 = sub_22C7FE43C(a1, a2, 0);
    v9 = [v10 developerType];

    swift_beginAccess();
    v11 = *(v5 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + 32);
    sub_22C62DE00();
    *(v5 + 32) = v13;
    swift_endAccess();
  }

  return v9;
}

uint64_t sub_22C804454@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_22C374168(a2 + 5, a2[8]);
  v8 = a2[18];
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v8;
  v13[5] = v7;
  sub_22C4FB170(v5, v6, sub_22C430BE0, v13, v8);
  v9 = sub_22C90A1BC();
  v11 = v10;

  *a3 = v9;
  a3[1] = v11;
  return result;
}

uint64_t sub_22C8044FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a3;
  v48 = a2;
  v4 = sub_22C9093BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - v10;
  v12 = sub_22C9063DC();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C90952C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90935C();
  if ((*(v17 + 88))(v20, v16) != *MEMORY[0x277D72D28])
  {
    (*(v17 + 8))(v20, v16);
    sub_22C903FCC();
    v27 = *(v5 + 16);
    v27(v11, a1, v4);
    v28 = sub_22C9063CC();
    v29 = sub_22C90AADC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      LODWORD(v48) = v29;
      v31 = v30;
      v47 = swift_slowAlloc();
      v52 = v47;
      *v31 = 136315138;
      v27(v9, v11, v4);
      v32 = sub_22C90A1AC();
      v34 = v33;
      (*(v5 + 8))(v11, v4);
      v35 = sub_22C36F9F4(v32, v34, &v52);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_22C366000, v28, v48, "Ignoring non-entity type identifier: %s", v31, 0xCu);
      v36 = v47;
      sub_22C36FF94(v47);
      MEMORY[0x2318B9880](v36, -1, -1);
      MEMORY[0x2318B9880](v31, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    result = (*(v49 + 8))(v15, v50);
    goto LABEL_10;
  }

  (*(v17 + 96))(v20, v16);
  v21 = *v20;
  v22 = *(*v20 + 16);
  v23 = *(*v20 + 24);
  v25 = *(*v20 + 32);
  v24 = *(v21 + 40);

  LOWORD(v22) = sub_22C8042F4(v22, v23);

  if ((v22 & 0x1FF) == 3)
  {

LABEL_10:
    v45 = v51;
    *v51 = 0;
    v45[1] = 0;
    return result;
  }

  v37 = sub_22C90A2CC();
  v39 = v38;

  result = sub_22C90A43C();
  if (result)
  {
    v40 = sub_22C8E6684(7);
    v41 = MEMORY[0x2318B76D0](v40);
    v43 = v42;

    v44 = v51;
    *v51 = v41;
    v44[1] = v43;
  }

  else
  {
    v46 = v51;
    *v51 = v37;
    v46[1] = v39;
  }

  return result;
}

uint64_t sub_22C804990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v151 = a2;
  v165 = a3;
  v146 = sub_22C90848C();
  v138 = *(v146 - 8);
  v4 = *(v138 + 64);
  v5 = MEMORY[0x28223BE20](v146);
  v136 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v137 = &v136 - v8;
  MEMORY[0x28223BE20](v7);
  v142 = (&v136 - v9);
  v159 = sub_22C9084FC();
  v143 = *(v159 - 1);
  v10 = *(v143 + 64);
  v11 = MEMORY[0x28223BE20](v159);
  v140 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v141 = &v136 - v14;
  MEMORY[0x28223BE20](v13);
  v150 = &v136 - v15;
  v156 = sub_22C9036EC();
  v152 = *(v156 - 8);
  v16 = *(v152 + 64);
  MEMORY[0x28223BE20](v156);
  v158 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C3A5908(&qword_27D9BC908, &qword_22C915090);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v148 = &v136 - v20;
  v21 = sub_22C90377C();
  v169 = *(v21 - 8);
  v170 = v21;
  v22 = *(v169 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v155 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v171 = &v136 - v26;
  MEMORY[0x28223BE20](v25);
  v167 = &v136 - v27;
  v166 = sub_22C9037DC();
  v157 = *(v166 - 8);
  v28 = *(v157 + 64);
  v29 = MEMORY[0x28223BE20](v166);
  v153 = &v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v154 = &v136 - v32;
  MEMORY[0x28223BE20](v31);
  v168 = &v136 - v33;
  v164 = sub_22C90977C();
  v160 = *(v164 - 1);
  v34 = *(v160 + 64);
  v35 = MEMORY[0x28223BE20](v164);
  v139 = &v136 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v149 = &v136 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v136 - v39;
  v41 = sub_22C908EAC();
  v161 = *(v41 - 8);
  v42 = *(v161 + 64);
  v43 = MEMORY[0x28223BE20](v41);
  v147 = &v136 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v136 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v136 - v48;
  v50 = sub_22C90643C();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x28223BE20](v50);
  v162 = &v136 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v57 = &v136 - v56;
  MEMORY[0x28223BE20](v55);
  v59 = &v136 - v58;
  sub_22C378A4C(a1, &v173);
  sub_22C3A5908(&qword_27D9C03E8, &unk_22C927300);
  if (swift_dynamicCast())
  {
    v146 = v51;
    (*(v51 + 32))(v57, v59, v50);
    sub_22C90641C();
    sub_22C47FCDC();
    v60 = sub_22C9096FC();
    v62 = v61;
    v142 = *(v160 + 8);
    v142(v40, v164);
    v63 = *(v161 + 8);
    v144 = v49;
    v64 = v49;
    v65 = v63;
    v145 = v41;
    v150 = (v161 + 8);
    v63(v64, v41);
    v66 = v151;
    v67 = *(v151 + 16);
    v143 = v50;
    if (v67)
    {
      v68 = sub_22C36E2BC(v60, v62);
      v69 = v66;
      v71 = v70;

      if (v71)
      {
        v72 = 0;
        v73 = *(*(v69 + 56) + v68);
      }

      else
      {
        v73 = 0;
        v72 = 1;
      }

      v66 = v69;
    }

    else
    {

      v73 = 0;
      v72 = 1;
    }

    v89 = v164;
    v172[0] = v73;
    v172[1] = v72;
    sub_22C805A44(v172);
    v163 = v57;
    sub_22C90641C();
    v90 = v149;
    sub_22C908DDC();
    v91 = v145;
    v159 = v65;
    (v65)(v47);
    v92 = sub_22C9096FC();
    v94 = v93;
    v142(v90, v89);
    if (*(v66 + 16))
    {
      sub_22C36E2BC(v92, v94);
      v96 = v95;

      v97 = v144;
      if (v96)
      {
        v98 = MEMORY[0x277D1ED30];
        v99 = v169;
        v100 = v91;
        v101 = v163;
LABEL_26:
        (*(v99 + 104))(v167, *v98, v170);
        sub_22C90641C();
        v110 = sub_22C908E5C();
        v159(v97, v100);
        v111 = (v152 + 104);
        if (v110)
        {
          sub_22C90641C();
          v164 = *(v99 + 16);
          v112 = v170;
          v164(v171, v167, v170);
          v113 = v157;
          v114 = *(v157 + 16);
          v115 = v154;
          v114(v154, v168, v166);
          v116 = v100;
          v117 = v158;
          (*(v161 + 16))(v158, v97, v116);
          (*v111)(v117, *MEMORY[0x277D1ECD8], v156);
          v164(v155, v171, v112);
          v118 = v166;
          v114(v153, v115, v166);
          v75 = v165;
          sub_22C9036FC();
          v119 = *(v113 + 8);
          v119(v115, v118);
          v120 = v170;
          v121 = *(v169 + 8);
          v121(v171, v170);
          v159(v144, v145);
          v121(v167, v120);
          v119(v168, v118);
          (*(v146 + 8))(v163, v143);
        }

        else
        {
          (*(v146 + 16))(v162, v101, v143);
          v164 = *(v99 + 16);
          v122 = v170;
          v123 = v171;
          v164(v171, v167, v170);
          v124 = v157;
          v161 = *(v157 + 16);
          v125 = v154;
          (v161)(v154, v168, v166);
          v126 = v158;
          sub_22C90641C();
          (*v111)(v126, *MEMORY[0x277D1ECE0], v156);
          sub_22C90642C();
          v127 = v123;
          v128 = v122;
          v164(v155, v127, v122);
          v129 = v166;
          (v161)(v153, v125, v166);
          v75 = v165;
          sub_22C9036FC();
          v130 = *(v124 + 8);
          v130(v125, v129);
          v131 = *(v169 + 8);
          v131(v171, v128);
          v132 = *(v146 + 8);
          v133 = v143;
          v132(v162, v143);
          v131(v167, v128);
          v130(v168, v166);
          v132(v163, v133);
        }

        v88 = 0;
        goto LABEL_30;
      }
    }

    else
    {

      v97 = v144;
    }

    v102 = v147;
    sub_22C90641C();
    v103 = v148;
    sub_22C908E3C();
    v104 = v102;
    v100 = v91;
    v159(v104, v91);
    if (sub_22C370B74(v103, 1, v89) == 1)
    {
      sub_22C3AC228(v103, &qword_27D9BC908, &qword_22C915090);
      v99 = v169;
    }

    else
    {
      v105 = v139;
      (*(v160 + 32))(v139, v103, v89);
      v106 = sub_22C9096FC();
      if (*(v66 + 16))
      {
        sub_22C36E2BC(v106, v107);
        v109 = v108;

        v142(v105, v89);
        v99 = v169;
        v101 = v163;
        if (v109)
        {
          v98 = MEMORY[0x277D1ED30];
          goto LABEL_26;
        }

LABEL_25:
        v98 = MEMORY[0x277D1ED28];
        goto LABEL_26;
      }

      v142(v105, v89);
      v99 = v169;
    }

    v101 = v163;
    goto LABEL_25;
  }

  v74 = v171;
  v75 = v165;
  v76 = v150;
  v77 = v159;
  if (swift_dynamicCast())
  {
    v78 = v143;
    v79 = v141;
    (*(v143 + 32))(v141, v76, v77);
    v80 = v140;
    (*(v78 + 16))(v140, v79, v77);
    (*(v169 + 104))(v74, *MEMORY[0x277D1ED28], v170);
    sub_22C80037C(v80, v74, MEMORY[0x277D1E520], MEMORY[0x277D1ECE8], MEMORY[0x277D1E528], MEMORY[0x277D1E530]);
    (*(v78 + 8))(v79, v77);
  }

  else
  {
    v81 = v142;
    v82 = v146;
    v83 = swift_dynamicCast();
    v84 = v169;
    if (!v83)
    {
      v88 = 1;
      goto LABEL_30;
    }

    v85 = v138;
    v86 = v137;
    (*(v138 + 32))(v137, v81, v82);
    v87 = v136;
    (*(v85 + 16))(v136, v86, v82);
    (*(v84 + 104))(v74, *MEMORY[0x277D1ED28], v170);
    sub_22C80037C(v87, v74, MEMORY[0x277D1E4B0], MEMORY[0x277D1ECD0], MEMORY[0x277D1E4B8], MEMORY[0x277D1E4C0]);
    (*(v85 + 8))(v86, v82);
  }

  v88 = 0;
LABEL_30:
  v134 = sub_22C9037EC();
  sub_22C36C640(v75, v88, 1, v134);
  return sub_22C36FF94(&v173);
}

uint64_t sub_22C805A44(char *a1)
{
  v2 = sub_22C9037DC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = *a1;
  v12 = a1[1];
  v20[15] = 0;
  sub_22C807BF4();
  sub_22C80760C(v13, v14);
  result = sub_22C90B76C();
  if ((v12 & 1) == 0)
  {
    if (v11)
    {
      sub_22C9037AC();
      sub_22C8B5C28();
      v16 = *(v5 + 8);
      (v16)(v10, v2);
      v17 = sub_22C377B94();
      result = v16(v17);
    }

    if ((v11 & 2) != 0)
    {
      sub_22C9037CC();
      sub_22C8B5C28();
      v18 = *(v5 + 8);
      (v18)(v10, v2);
      v19 = sub_22C377B94();
      return v18(v19);
    }
  }

  return result;
}

void *sub_22C805C28(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_22C805CC0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a6(v11, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

uint64_t sub_22C805D60(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_22C805DD0(a1, a2, sub_22C805F84, sub_22C805F84);
}

uint64_t sub_22C805DD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 32);
  v7 = v6 & 0x3F;
  v8 = (((1 << v6) + 63) >> 6);

  if (v7 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v10 = sub_22C807C3C();
    sub_22C88FAFC(v10, v8, a4);
    sub_22C37BFCC();
    v11 = a3();
    if (!v8)
    {
      v12 = v11;

LABEL_4:
      v13 = *MEMORY[0x277D85DE8];
      return v12;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    swift_slowAlloc();

    sub_22C37BFCC();
    v12 = sub_22C805C28(v15, v16, v17, v18, a4);

    if (!v8)
    {

      sub_22C369B50();
      MEMORY[0x2318B9880]();
      goto LABEL_4;
    }
  }

  sub_22C369B50();
  result = MEMORY[0x2318B9880]();
  __break(1u);
  return result;
}

void sub_22C805F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a2;
  v65 = a1;
  v6 = sub_22C901FAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v73 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v72 = &v59 - v15;
  MEMORY[0x28223BE20](v14);
  v64 = &v59 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v76 = v7 + 16;
  v74 = a4;
  v75 = a3;
  v67 = v7;
  if (v18 >= v17)
  {
    v68 = 0;
    v40 = 0;
    v41 = *(a3 + 56);
    v64 = (a3 + 56);
    v42 = 1 << *(a3 + 32);
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v44 = v43 & v41;
    v45 = (v42 + 63) >> 6;
    v71 = a4 + 56;
    v72 = (v7 + 8);
    v66 = v45;
LABEL_24:
    while (v44)
    {
      v46 = __clz(__rbit64(v44));
      v70 = ((v44 - 1) & v44);
LABEL_31:
      v49 = v46 | (v40 << 6);
      v50 = *(a3 + 48);
      v51 = *(v7 + 72);
      v69 = v49;
      v52 = *(v7 + 16);
      v52(v73, v50 + v51 * v49, v6);
      v53 = *(a4 + 40);
      sub_22C80760C(&qword_2814357B0, MEMORY[0x277D1C338]);
      v54 = sub_22C909F7C();
      v55 = ~(-1 << *(a4 + 32));
      do
      {
        v56 = v54 & v55;
        if (((*(v71 + (((v54 & v55) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v54 & v55)) & 1) == 0)
        {
          (*v72)(v73, v6);
          a4 = v74;
          a3 = v75;
          v45 = v66;
          v7 = v67;
          v44 = v70;
          goto LABEL_24;
        }

        v52(v13, *(v74 + 48) + v56 * v51, v6);
        sub_22C80760C(&qword_27D9BAA28, MEMORY[0x277D1C338]);
        v57 = sub_22C90A0BC();
        v58 = *v72;
        (*v72)(v13, v6);
        v54 = v56 + 1;
      }

      while ((v57 & 1) == 0);
      v58(v73, v6);
      *(v65 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
      v7 = v67;
      v39 = __OFADD__(v68++, 1);
      a4 = v74;
      a3 = v75;
      v45 = v66;
      v44 = v70;
      if (v39)
      {
        goto LABEL_42;
      }
    }

    v47 = v40;
    while (1)
    {
      v40 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v40 >= v45)
      {
LABEL_38:

        sub_22C7EC3CC();
        return;
      }

      v48 = *&v64[8 * v40];
      ++v47;
      if (v48)
      {
        v46 = __clz(__rbit64(v48));
        v70 = ((v48 - 1) & v48);
        goto LABEL_31;
      }
    }
  }

  else
  {
    v19 = 0;
    v20 = *(a4 + 56);
    v60 = a4 + 56;
    v21 = 1 << *(a4 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v20;
    v24 = (v21 + 63) >> 6;
    v62 = v24;
    v63 = v7 + 32;
    v68 = 0;
    v69 = a3 + 56;
    v73 = (v7 + 8);
LABEL_6:
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v66 = (v23 - 1) & v23;
LABEL_13:
      v28 = *(v7 + 72);
      v29 = *(a4 + 48) + v28 * (v25 | (v19 << 6));
      v30 = v64;
      v70 = *(v7 + 16);
      v71 = v28;
      v70(v64, v29, v6);
      (*(v7 + 32))(v72, v30, v6);
      v31 = *(a3 + 40);
      sub_22C80760C(&qword_2814357B0, MEMORY[0x277D1C338]);
      v32 = sub_22C909F7C();
      v33 = ~(-1 << *(a3 + 32));
      do
      {
        v34 = v32 & v33;
        v35 = (v32 & v33) >> 6;
        v36 = 1 << (v32 & v33);
        if ((v36 & *(v69 + 8 * v35)) == 0)
        {
          (*v73)(v72, v6);
          a4 = v74;
          a3 = v75;
          v23 = v66;
          v7 = v67;
          v24 = v62;
          goto LABEL_6;
        }

        v70(v13, *(v75 + 48) + v34 * v71, v6);
        sub_22C80760C(&qword_27D9BAA28, MEMORY[0x277D1C338]);
        v37 = sub_22C90A0BC();
        v38 = *v73;
        (*v73)(v13, v6);
        v32 = v34 + 1;
      }

      while ((v37 & 1) == 0);
      v38(v72, v6);
      v23 = v66;
      *(v65 + 8 * v35) |= v36;
      v7 = v67;
      v39 = __OFADD__(v68++, 1);
      a4 = v74;
      a3 = v75;
      v24 = v62;
      if (v39)
      {
        goto LABEL_41;
      }
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {
        goto LABEL_38;
      }

      v27 = *(v60 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v66 = (v27 - 1) & v27;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_22C8065EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a2;
  v65 = a1;
  v6 = sub_22C908EAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v73 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v72 = &v59 - v15;
  MEMORY[0x28223BE20](v14);
  v64 = &v59 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v76 = v7 + 16;
  v74 = a4;
  v75 = a3;
  v67 = v7;
  if (v18 >= v17)
  {
    v68 = 0;
    v40 = 0;
    v41 = *(a3 + 56);
    v64 = (a3 + 56);
    v42 = 1 << *(a3 + 32);
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v44 = v43 & v41;
    v45 = (v42 + 63) >> 6;
    v71 = a4 + 56;
    v72 = (v7 + 8);
    v66 = v45;
LABEL_24:
    while (v44)
    {
      v46 = __clz(__rbit64(v44));
      v70 = ((v44 - 1) & v44);
LABEL_31:
      v49 = v46 | (v40 << 6);
      v50 = *(a3 + 48);
      v51 = *(v7 + 72);
      v69 = v49;
      v52 = *(v7 + 16);
      v52(v73, v50 + v51 * v49, v6);
      v53 = *(a4 + 40);
      sub_22C80760C(&qword_27D9BAA80, MEMORY[0x277D72238]);
      v54 = sub_22C909F7C();
      v55 = ~(-1 << *(a4 + 32));
      do
      {
        v56 = v54 & v55;
        if (((*(v71 + (((v54 & v55) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v54 & v55)) & 1) == 0)
        {
          (*v72)(v73, v6);
          a4 = v74;
          a3 = v75;
          v45 = v66;
          v7 = v67;
          v44 = v70;
          goto LABEL_24;
        }

        v52(v13, *(v74 + 48) + v56 * v51, v6);
        sub_22C80760C(&qword_27D9BC800, MEMORY[0x277D72238]);
        v57 = sub_22C90A0BC();
        v58 = *v72;
        (*v72)(v13, v6);
        v54 = v56 + 1;
      }

      while ((v57 & 1) == 0);
      v58(v73, v6);
      *(v65 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
      v7 = v67;
      v39 = __OFADD__(v68++, 1);
      a4 = v74;
      a3 = v75;
      v45 = v66;
      v44 = v70;
      if (v39)
      {
        goto LABEL_42;
      }
    }

    v47 = v40;
    while (1)
    {
      v40 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v40 >= v45)
      {
LABEL_38:

        sub_22C7ED08C();
        return;
      }

      v48 = *&v64[8 * v40];
      ++v47;
      if (v48)
      {
        v46 = __clz(__rbit64(v48));
        v70 = ((v48 - 1) & v48);
        goto LABEL_31;
      }
    }
  }

  else
  {
    v19 = 0;
    v20 = *(a4 + 56);
    v60 = a4 + 56;
    v21 = 1 << *(a4 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v20;
    v24 = (v21 + 63) >> 6;
    v62 = v24;
    v63 = v7 + 32;
    v68 = 0;
    v69 = a3 + 56;
    v73 = (v7 + 8);
LABEL_6:
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v66 = (v23 - 1) & v23;
LABEL_13:
      v28 = *(v7 + 72);
      v29 = *(a4 + 48) + v28 * (v25 | (v19 << 6));
      v30 = v64;
      v70 = *(v7 + 16);
      v71 = v28;
      v70(v64, v29, v6);
      (*(v7 + 32))(v72, v30, v6);
      v31 = *(a3 + 40);
      sub_22C80760C(&qword_27D9BAA80, MEMORY[0x277D72238]);
      v32 = sub_22C909F7C();
      v33 = ~(-1 << *(a3 + 32));
      do
      {
        v34 = v32 & v33;
        v35 = (v32 & v33) >> 6;
        v36 = 1 << (v32 & v33);
        if ((v36 & *(v69 + 8 * v35)) == 0)
        {
          (*v73)(v72, v6);
          a4 = v74;
          a3 = v75;
          v23 = v66;
          v7 = v67;
          v24 = v62;
          goto LABEL_6;
        }

        v70(v13, *(v75 + 48) + v34 * v71, v6);
        sub_22C80760C(&qword_27D9BC800, MEMORY[0x277D72238]);
        v37 = sub_22C90A0BC();
        v38 = *v73;
        (*v73)(v13, v6);
        v32 = v34 + 1;
      }

      while ((v37 & 1) == 0);
      v38(v72, v6);
      v23 = v66;
      *(v65 + 8 * v35) |= v36;
      v7 = v67;
      v39 = __OFADD__(v68++, 1);
      a4 = v74;
      a3 = v75;
      v24 = v62;
      if (v39)
      {
        goto LABEL_41;
      }
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {
        goto LABEL_38;
      }

      v27 = *(v60 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v66 = (v27 - 1) & v27;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void *sub_22C806C54(uint64_t (*a1)(char *), void *a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_22C806D64(a1, a2, a3, MEMORY[0x277D72D58], sub_22C7EC5C0, sub_22C7ED5A4);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_22C806CDC(uint64_t (*a1)(char *), void *a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_22C806D64(a1, a2, a3, MEMORY[0x277D1C338], sub_22C7EC3CC, sub_22C7ED5E4);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_22C806D64(uint64_t (*a1)(char *), void *a2, uint64_t a3, uint64_t (*a4)(void), char *a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v51 = a1;
  v55 = *MEMORY[0x277D85DE8];
  v10 = a4(0);
  v11 = sub_22C369824(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v42 - v16;
  v18 = *(a3 + 32);
  sub_22C807C50();
  v21 = v20 >> 6;
  v22 = 8 * (v20 >> 6);
  if (v23 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v49 = v17;
    v50 = v10;
    v42 = a5;
    v44 = &v42;
    MEMORY[0x28223BE20](v19);
    v46 = v21;
    v43 = &v42 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_22C88FAFC(0, v21, v43);
    v45 = 0;
    v22 = 0;
    v52 = a3;
    v25 = *(a3 + 56);
    a3 += 56;
    v24 = v25;
    v26 = 1 << *(a3 - 24);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & v24;
    v10 = (v26 + 63) >> 6;
    v47 = (v13 + 2);
    v48 = (v13 + 1);
    while (v28)
    {
      v29 = __clz(__rbit64(v28));
      v53 = (v28 - 1) & v28;
LABEL_12:
      v21 = v29 | (v22 << 6);
      v17 = v13;
      a5 = v49;
      v13[2](v49, *(v52 + 48) + v13[9] * v21, v50);
      v32 = v54;
      v33 = v51(a5);
      v54 = v32;
      if (v32)
      {
        v39 = sub_22C807C28();
        v40(v39);

        swift_willThrow();
        goto LABEL_18;
      }

      a6 = v33;
      v34 = sub_22C807C28();
      v35(v34);
      v28 = v53;
      if (a6)
      {
        *(v43 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        if (__OFADD__(v45++, 1))
        {
          __break(1u);
LABEL_17:
          a2 = (v42)(v43);
          goto LABEL_18;
        }
      }
    }

    v30 = v22;
    while (1)
    {
      v22 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v22 >= v10)
      {
        goto LABEL_17;
      }

      v31 = *(a3 + 8 * v22);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v53 = (v31 - 1) & v31;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v41 = swift_slowAlloc();
  a2 = sub_22C805CC0(v41, v21, a3, v51, a2, a6);

  sub_22C369B50();
  MEMORY[0x2318B9880]();
LABEL_18:
  v37 = *MEMORY[0x277D85DE8];
  return a2;
}

void *sub_22C8070D4(uint64_t (*a1)(void *), void *a2, uint64_t a3)
{
  v4 = v3;
  v33 = a1;
  v37 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  v9 = 8 * v8;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v34 = v4;
    v31 = &v29;
    MEMORY[0x28223BE20](a1);
    v29 = v8;
    v30 = (&v29 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_22C88FAFC(0, v8, v30);
    v32 = 0;
    v10 = 0;
    v8 = a3 + 56;
    v11 = 1 << *(a3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v9 = v12 & *(a3 + 56);
    v13 = (v11 + 63) >> 6;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v4 = a3;
      v18 = *(a3 + 48) + 24 * v17;
      v20 = *v18;
      v19 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 16);
      v35[0] = v20;
      v35[1] = v19;
      v36 = v18;

      v21 = v34;
      v22 = v33(v35);
      v34 = v21;
      if (v21)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      v23 = v22;

      if (v23)
      {
        *(v30 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_17:
          sub_22C7ED290(v30, v29, v32, a3);
          a2 = v25;
          goto LABEL_18;
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(v8 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();
  a2 = sub_22C805CC0(v28, v8, a3, v33, a2, sub_22C7ED9B0);

  MEMORY[0x2318B9880](v28, -1, -1);
LABEL_18:
  v26 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_22C8073A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C8074AC()
{
  result = qword_27D9C03F0;
  if (!qword_27D9C03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C03F0);
  }

  return result;
}

unint64_t sub_22C807500()
{
  result = qword_27D9C03F8;
  if (!qword_27D9C03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C03F8);
  }

  return result;
}

uint64_t sub_22C807574(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_22C36D548(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_22C36C730(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_22C80760C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C80766C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C8076AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C807748()
{
  result = sub_22C90377C();
  if (v1 <= 0x3F)
  {
    result = sub_22C457168(319, qword_281431738);
    if (v2 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_28142FAE8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}