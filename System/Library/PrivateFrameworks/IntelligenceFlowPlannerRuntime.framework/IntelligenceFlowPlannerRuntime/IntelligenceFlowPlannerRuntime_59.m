void sub_22C87DDC0()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);
  v7 = *(v0 + 416);
  v6 = *(v0 + 424);
  v9 = *(v0 + 400);
  v8 = *(v0 + 408);
  v13 = *(v0 + 376);
  v14 = *(v0 + 352);
  v15 = *(v0 + 328);
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);

  v1(v3, v4);

  sub_22C369A24();
  v10 = *(v0 + 504);
  sub_22C36EC40();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C87DED4()
{
  v1 = v0;
  v2 = sub_22C90687C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  (*(v5 + 16))(v9 - v8, v1, v2);
  v11 = (*(v5 + 88))(v10, v2);
  if (v11 == *MEMORY[0x277D1DC20])
  {
    return sub_22C90187C();
  }

  if (v11 == *MEMORY[0x277D1DC30])
  {
    return sub_22C90189C();
  }

  if (v11 == *MEMORY[0x277D1DC28])
  {
    return sub_22C90188C();
  }

  if (v11 == *MEMORY[0x277D1DC18])
  {
    return sub_22C90186C();
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C87E034()
{
  v0 = sub_22C90219C();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C36C5AC(v3);
  v10(v9);
  v11 = (*(v3 + 88))(v8, v0);
  if (v11 == *MEMORY[0x277D1C5F8])
  {
    return 0x6E776F6E6B6E75;
  }

  if (v11 == *MEMORY[0x277D1C608])
  {
    return 0x656C616D6566;
  }

  if (v11 == *MEMORY[0x277D1C600])
  {
    return 1701601645;
  }

  if (v11 == *MEMORY[0x277D1C610])
  {
    return 0x6C61727475656ELL;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

void sub_22C87E1A4()
{
  sub_22C5D37EC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_22C87E234()
{
  result = qword_27D9C0D18;
  if (!qword_27D9C0D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9C0D18);
  }

  return result;
}

unint64_t sub_22C87E278()
{
  result = qword_281435848;
  if (!qword_281435848)
  {
    sub_22C90046C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281435848);
  }

  return result;
}

uint64_t sub_22C87E2D0()
{
}

uint64_t type metadata accessor for DialogOutput()
{
  result = qword_27D9C0D20;
  if (!qword_27D9C0D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C87E35C()
{
  result = sub_22C90240C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C87E3C8()
{
  sub_22C369A48();
  v2 = sub_22C90793C();
  v3 = sub_22C369958(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C373C0C();
  v8 = (*(v5 + 88))(v1, v0);
  if (v8 == *MEMORY[0x277D1E168])
  {
    return sub_22C9022FC();
  }

  if (v8 != *MEMORY[0x277D1E160])
  {
    result = sub_22C90B4EC();
    __break(1u);
    return result;
  }

  result = sub_22C90228C();
  if (!v10)
  {
    return sub_22C9022FC();
  }

  return result;
}

uint64_t sub_22C87E4B8()
{
  sub_22C369A48();
  v2 = sub_22C90793C();
  v3 = sub_22C369958(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C373C0C();
  v8 = (*(v5 + 88))(v1, v0);
  if (v8 == *MEMORY[0x277D1E168])
  {
    return sub_22C90231C();
  }

  if (v8 != *MEMORY[0x277D1E160])
  {
    result = sub_22C90B4EC();
    __break(1u);
    return result;
  }

  result = sub_22C9022AC();
  if (!v10)
  {
    return sub_22C90231C();
  }

  return result;
}

uint64_t sub_22C87E5A8@<X0>(char *a1@<X8>)
{
  v33 = a1;
  v2 = sub_22C90240C();
  v3 = sub_22C369958(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (&v32 - v14);
  v16 = sub_22C87E3C8();
  v18 = v17;
  sub_22C9022CC();
  if (v19)
  {

    v20 = MEMORY[0x277D1C9D8];
  }

  else
  {
    v20 = MEMORY[0x277D1C9E0];
  }

  *v15 = v16;
  v15[1] = v18;
  v21 = *(v5 + 104);
  v21(v15, *v20, v1);
  v22 = sub_22C87E4B8();
  if (v23)
  {
    v24 = v22;
    v25 = v23;
    sub_22C9022CC();
    if (v26)
    {

      v27 = MEMORY[0x277D1C9D8];
    }

    else
    {
      v27 = MEMORY[0x277D1C9E0];
    }

    *v10 = v24;
    v10[1] = v25;
    v21(v10, *v27, v1);
    v28 = *(v5 + 32);
    v28(v13, v10, v1);
  }

  else
  {
    v21(v13, *MEMORY[0x277D1C9F0], v1);
    v28 = *(v5 + 32);
  }

  v29 = v33;
  v28(v33, v15, v1);
  v30 = type metadata accessor for DialogOutput();
  return (v28)(&v29[*(v30 + 20)], v13, v1);
}

void sub_22C87E814()
{
  sub_22C87E898();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TypedValueFormatter(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C87E898()
{
  if (!qword_27D9C0D40)
  {
    sub_22C9091CC();
    type metadata accessor for DialogValues.ResolvedValue(255);
    sub_22C88739C(&qword_27D9BF390, MEMORY[0x277D72900]);
    v0 = sub_22C909F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9C0D40);
    }
  }
}

uint64_t sub_22C87E98C()
{
  result = sub_22C9093BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C87E9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[2] = a3;
  return MEMORY[0x2822009F8](sub_22C87EA1C, 0, 0);
}

uint64_t sub_22C87EA1C()
{
  sub_22C36FB38();
  v1 = sub_22C3A5908(&qword_27D9BE220, &qword_22C91D728);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v0 + 16;
  *(v2 + 24) = v3;
  v4 = sub_22C3A5908(&qword_27D9C0DA0, &qword_22C92B270);
  v5 = *(MEMORY[0x277D859B8] + 4);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 56) = v6;
  *v6 = v7;
  v6[1] = sub_22C87EB38;

  return MEMORY[0x282200740](v0 + 24, v1, v4, 0, 0, &unk_22C92B268, v2, v1);
}

uint64_t sub_22C87EB38()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (!v0)
  {
    v9 = *(v3 + 48);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C87EC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_22C3A5908(&qword_27D9C0DA8, &unk_22C92B280);
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = sub_22C9093BC();
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v4[19] = *(v9 + 64);
  v4[20] = swift_task_alloc();
  v10 = *(*(sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C87EDBC, 0, 0);
}

uint64_t sub_22C87EDBC()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v37 = *(v0 + 152);
    v36 = **(v0 + 80);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v34 = (v3 + 16);
    v35 = *(v3 + 72);
    v33 = (v4 + 48) & ~v4;
    v32 = (v3 + 32);
    v6 = sub_22C90A75C();
    do
    {
      v39 = v2;
      v8 = *(v0 + 168);
      v7 = *(v0 + 176);
      v9 = *(v0 + 160);
      v10 = *(v0 + 136);
      v11 = *(v0 + 104);
      v38 = *(v0 + 96);
      sub_22C36C640(v7, 1, 1, v6);
      (*v34)(v9, v5, v10);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v38;
      v12[5] = v11;
      (*v32)(v12 + v33, v9, v10);
      sub_22C4E719C(v7, v8, &qword_27D9BBB48, &qword_22C910F00);
      v14 = sub_22C37EF1C();
      LODWORD(v8) = sub_22C370B74(v14, v15, v6);

      v16 = *(v0 + 168);
      if (v8 == 1)
      {
        v17 = sub_22C36BBCC();
        sub_22C36DD28(v17, v18, &qword_22C910F00);
      }

      else
      {
        sub_22C90A74C();
        (*(*(v6 - 8) + 8))(v16, v6);
      }

      if (*v13)
      {
        v19 = v12[3];
        v20 = *v13;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = sub_22C90A6DC();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      sub_22C3A5908(&qword_27D9BE220, &qword_22C91D728);
      v24 = v23 | v21;
      if (v23 | v21)
      {
        v24 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v21;
        *(v0 + 40) = v23;
      }

      v25 = *(v0 + 176);
      *(v0 + 48) = 1;
      *(v0 + 56) = v24;
      *(v0 + 64) = v36;
      swift_task_create();

      sub_22C36DD28(v25, &qword_27D9BBB48, &qword_22C910F00);
      v5 += v35;
      v2 = v39 - 1;
    }

    while (v39 != 1);
  }

  v26 = *(v0 + 128);
  v27 = **(v0 + 80);
  sub_22C3A5908(&qword_27D9BE220, &qword_22C91D728);
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C36BAFC();
  sub_22C90A81C();
  *(v0 + 184) = MEMORY[0x277D84F90];
  sub_22C88804C();
  v28 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 192) = v29;
  *v29 = v30;
  sub_22C37A48C(v29);

  return MEMORY[0x282200308](v0 + 72);
}

uint64_t sub_22C87F16C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  v3[25] = v0;

  if (v0)
  {
    v9 = v3[23];
    (*(v3[15] + 8))(v3[16], v3[14]);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C87F28C()
{
  sub_22C36FB38();
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[23];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v0[23];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v4 + 16);
      sub_22C36D270();
      sub_22C596FDC();
      v4 = v15;
    }

    v5 = *(v4 + 16);
    if (v5 >= *(v4 + 24) >> 1)
    {
      sub_22C596FDC();
      v4 = v16;
    }

    *(v4 + 16) = v5 + 1;
    *(v4 + 8 * v5 + 32) = v1;
    v0[23] = v4;
    sub_22C88804C();
    v6 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    sub_22C36CC90();
    v0[24] = v7;
    *v7 = v8;
    sub_22C37A48C();

    return MEMORY[0x282200308](v0 + 9);
  }

  else
  {
    v9 = v0[21];
    v10 = v0[22];
    v11 = v0[20];
    (*(v0[15] + 8))(v0[16], v0[14]);

    v12 = v0[1];
    v13 = v0[23];

    return v12(v13);
  }
}

uint64_t sub_22C87F404()
{
  sub_22C36FB38();
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[16];

  sub_22C369A24();
  v6 = v0[25];

  return v5();
}

uint64_t sub_22C87F488(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_22C87F588;

  return v10(v5 + 16, a5);
}

uint64_t sub_22C87F588()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 32) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C87F68C()
{
  sub_22C369A24();
  v1 = *(v0 + 32);
  return v2();
}

uint64_t sub_22C87F6B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(&qword_27D9C0D90, &qword_22C92B248);
    v3 = sub_22C90B1EC();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_22C887740(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_22C87F748()
{
  sub_22C36BA7C();
  v43[2] = v1;
  v2 = sub_22C3A5908(&qword_27D9C0D60, &qword_22C92B208);
  v3 = sub_22C36985C(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v43 - v10;
  v12 = sub_22C9001FC();
  v13 = sub_22C369824(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v20 = v19 - v18;
  v44 = sub_22C3A5908(&qword_27D9C0D68, &qword_22C92B210);
  sub_22C36985C(v44);
  v22 = *(v21 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  v45 = v43 - v24;
  v25 = sub_22C3A5908(&qword_27D9C0D70, &qword_22C92B218);
  sub_22C369914(v25);
  v27 = *(v26 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  v29 = sub_22C9001BC();
  v30 = sub_22C88739C(&qword_27D9C0068, MEMORY[0x277CC8B30]);
  v46 = v29;
  v31 = v30;
  sub_22C90A93C();
  sub_22C382A7C();
  sub_22C88739C(v32, v33);
  if (sub_22C90A0BC())
  {
    sub_22C90A97C();
    sub_22C382A7C();
    sub_22C88739C(v34, v35);
    if (sub_22C90A07C())
    {
      v43[0] = v0;
      v43[1] = v31;
      v36 = *(v15 + 32);
      v37 = sub_22C3726C4();
      v36(v37);
      (v36)(&v11[*(v2 + 48)], v20, v12);
      sub_22C4E719C(v11, v8, &qword_27D9C0D60, &qword_22C92B208);
      v38 = *(v2 + 48);
      v39 = v45;
      v40 = sub_22C36D264();
      v36(v40);
      v41 = *(v15 + 8);
      v41(v8 + v38, v12);
      sub_22C4E7208(v11, v8, &qword_27D9C0D60, &qword_22C92B208);
      (v36)(v39 + *(v44 + 36), v8 + *(v2 + 48), v12);
      v42 = sub_22C36ECB4();
      (v41)(v42);
      sub_22C90A9BC();
      sub_22C36DD28(v39, &qword_27D9C0D68, &qword_22C92B210);
      sub_22C36CC48();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_22C87FB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_22C370030();
  v16 = sub_22C37ADD4(v13, v14, v15);
  v17 = sub_22C369824(v16);
  v74 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v23 = v22 - v21;
  v24 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  sub_22C369914(v24);
  v26 = *(v25 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v27);
  v28 = sub_22C8885C8();
  v29 = sub_22C369824(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  v32 = sub_22C36EC5C();
  v33 = type metadata accessor for DialogValue(v32);
  v34 = sub_22C36985C(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C373C34();
  sub_22C887550(v10, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v38 = v74;
      v39 = sub_22C386E70(v74);
      v40(v39);
      sub_22C881B80(v23, v41, v42, v43, v44, v45, v46, v47, v72, v73, v74, v75, v76, v77, v78, v79, *(&v79 + 1), v80, v81, *(&v81 + 1));
      if (a10)
      {

        v50 = *(v38 + 8);
        v51 = sub_22C372158();
        v52(v51);
LABEL_14:
        *v76 = 0u;
        *(v76 + 16) = 0u;
        goto LABEL_15;
      }

      if (!v49)
      {
        v69 = *(v38 + 8);
        v70 = sub_22C372158();
        v71(v70);
        goto LABEL_14;
      }

      *(v76 + 24) = MEMORY[0x277D837D0];
      *v76 = v48;
      *(v76 + 8) = v49;
      v61 = *(v38 + 8);
      v62 = sub_22C372158();
      v63(v62);
    }

    else
    {
      v58 = *v12;
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      sub_22C888560();
      sub_22C7928B0();
      v60 = v59;

      *(v76 + 24) = sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
      *v76 = v60;
    }
  }

  else
  {
    v53 = sub_22C8884F4();
    v54(v53);
    v55 = sub_22C902F2C();

    sub_22C3818D4();
    sub_22C8885E8();
    if (v55)
    {
      v56 = sub_22C8884BC();
      v57(v56);
    }

    else
    {
      sub_22C386058();
      sub_22C4F5DF8(&v82);
      v81 = v79;
      sub_22C4F5DF8(&v81);

      sub_22C58B0C8(v11, v33);

      v64 = sub_22C902FBC();
      if (sub_22C370B74(v33, 1, v64) == 1)
      {
        v65 = sub_22C8884BC();
        v66(v65);

        sub_22C36DD28(v33, &qword_27D9C0AB8, &qword_22C92A190);
        goto LABEL_14;
      }

      sub_22C902F9C();
      *(v76 + 24) = MEMORY[0x277D837D0];

      v67 = sub_22C8885B4();
      v68(v67);
      (*(*(v64 - 8) + 8))(v33, v64);
    }
  }

LABEL_15:
  sub_22C36FB20();
}

void sub_22C87FF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_22C370030();
  v16 = sub_22C37ADD4(v13, v14, v15);
  v17 = sub_22C369824(v16);
  v77 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v23 = v22 - v21;
  v24 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  sub_22C369914(v24);
  v26 = *(v25 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v27);
  v28 = sub_22C8885C8();
  v29 = sub_22C369824(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  v32 = sub_22C36EC5C();
  v33 = type metadata accessor for DialogValue(v32);
  v34 = sub_22C36985C(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C373C34();
  sub_22C887550(v10, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v38 = v77;
      v39 = sub_22C386E70(v77);
      v40(v39);
      sub_22C88107C(v23, v41, v42, v43, v44, v45, v46, v47, v75, v76, v77, v78, v79, v81, v82, v83, *(&v83 + 1));
      if (a10)
      {

        v49 = *(v38 + 8);
        v50 = sub_22C372158();
        v51(v50);
LABEL_11:
        *v79 = 0u;
        *(v79 + 16) = 0u;
        goto LABEL_12;
      }

      v66 = v48;
      *(v79 + 24) = sub_22C3A5908(&qword_27D9BAB50, &qword_22C90D3F0);
      *v79 = v66;
      v67 = *(v38 + 8);
      v68 = sub_22C372158();
      v69(v68);
    }

    else
    {
      v57 = *v12;
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      sub_22C888560();
      sub_22C7951F8(sub_22C881B64, v58, v57, v59, v60, v61, v62, v63, v75, v76, v77, v78, v79, v81, v82, v83, *(&v83 + 1), v84, v85, *(&v85 + 1), v86[0], v86[1]);
      v65 = v64;

      v80[3] = sub_22C3A5908(&qword_27D9C0B90, &qword_22C92A970);
      *v80 = v65;
    }
  }

  else
  {
    v52 = sub_22C8884F4();
    v53(v52);
    v54 = sub_22C902F2C();

    sub_22C3818D4();
    sub_22C8885E8();
    if (!v54)
    {
      sub_22C386058();
      sub_22C4F5DF8(v86);
      v85 = v83;
      sub_22C4F5DF8(&v85);

      sub_22C58B0C8(v11, v33);

      v70 = sub_22C902FBC();
      if (sub_22C370B74(v33, 1, v70) != 1)
      {
        sub_22C902F9C();
        *(v79 + 24) = MEMORY[0x277D837D0];

        v73 = sub_22C8885B4();
        v74(v73);
        (*(*(v70 - 8) + 8))(v33, v70);
        goto LABEL_12;
      }

      v71 = sub_22C8884BC();
      v72(v71);

      sub_22C36DD28(v33, &qword_27D9C0AB8, &qword_22C92A190);
      goto LABEL_11;
    }

    v55 = sub_22C8884BC();
    v56(v55);
  }

LABEL_12:
  sub_22C36FB20();
}

void sub_22C880300()
{
  sub_22C370030();
  sub_22C369A48();
  v2 = sub_22C9093BC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for DialogValue(0);
  v15 = sub_22C36985C(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v20 = v19 - v18;
  sub_22C373C34();
  sub_22C887550(v0, v20);
  sub_22C3726C4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22C8880B0(v20, type metadata accessor for DialogValue);
    sub_22C590270();
    v24 = v23;
    v2 = *(v23 + 16);
    v25 = *(v23 + 24);
    v0 = v2 + 1;
    if (v2 < v25 >> 1)
    {
LABEL_7:
      *(v24 + 16) = v0;
      v26 = v24 + 16 * v2;
      *(v26 + 32) = 0x6966203A4F444F54;
      *(v26 + 40) = 0xEB00000000656D78;
      goto LABEL_20;
    }

LABEL_22:
    sub_22C36A958(v25);
    sub_22C590270();
    v24 = v46;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v27 = 0;
    v28 = *v20;
    v29 = *(*v20 + 16);
    v51 = v2;
    v52 = v29;
    v49 = v5 + 16;
    v50 = (v5 + 8);
    v48 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v52 == v27)
      {

        goto LABEL_20;
      }

      v25 = *(v28 + 16);
      if (v27 >= v25)
      {
        break;
      }

      v2 = v28;
      (*(v5 + 16))(v10, v28 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, v51);
      v30 = sub_22C8F6208(v10);
      if (v1)
      {
        v43 = *v50;
        v44 = sub_22C36ECB4();
        v45(v44);

        goto LABEL_20;
      }

      v32 = v30;
      v33 = v31;
      ++v27;
      v34 = *v50;
      v35 = sub_22C36ECB4();
      v36(v35);
      if (v33)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = *(v48 + 16);
          sub_22C36D270();
          sub_22C590270();
          v48 = v41;
        }

        v2 = *(v48 + 16);
        v37 = v2 + 1;
        if (v2 >= *(v48 + 24) >> 1)
        {
          v47 = v2 + 1;
          sub_22C590270();
          v37 = v47;
          v48 = v42;
        }

        v38 = v48;
        *(v48 + 16) = v37;
        v39 = v38 + 16 * v2;
        *(v39 + 32) = v32;
        *(v39 + 40) = v33;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  (*(v5 + 32))(v13, v20, v2);
  v22 = sub_22C8F4D3C(v13);
  if (!v1)
  {
    sub_22C3CC46C(v22);
  }

  (*(v5 + 8))(v13, v2);
LABEL_20:
  sub_22C36FB20();
}

void sub_22C8806A0()
{
  sub_22C36BA7C();
  v2 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = sub_22C9093BC();
  v9 = sub_22C369824(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v37 = v14 - v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = sub_22C90277C();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v25 = sub_22C36EC5C();
  v26 = type metadata accessor for DialogValue(v25);
  v27 = sub_22C36985C(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  v32 = (v31 - v30);
  sub_22C373C34();
  sub_22C887550(v0, v32);
  sub_22C3726C4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v11 + 32))(v18, v32, v8);
      sub_22C8809EC();
      (*(v11 + 8))(v18, v8);
    }

    else
    {
      sub_22C58B008(*v32, v7);

      if (sub_22C370B74(v7, 1, v8) == 1)
      {
        sub_22C36DD28(v7, &qword_27D9BB908, &qword_22C910960);
      }

      else
      {
        v34 = v37;
        (*(v11 + 32))(v37, v7, v8);
        v35 = sub_22C8809EC();
        v38 = 91;
        v39 = 0xE100000000000000;
        MEMORY[0x2318B7850](v35);

        MEMORY[0x2318B7850](93, 0xE100000000000000);

        (*(v11 + 8))(v34, v8);
      }
    }
  }

  else
  {
    (*(v22 + 32))(v1, v32, v19);
    sub_22C90274C();
    (*(v22 + 8))(v1, v19);
  }

  sub_22C36CC48();
}

uint64_t sub_22C8809EC()
{
  v0 = sub_22C9094EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C90952C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  sub_22C90935C();
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v10);
  v13 = *(v6 + 8);
  v13(v12, v5);
  v14 = (*(v6 + 88))(v10, v5);
  if (v14 == *MEMORY[0x277D72D50])
  {
    (*(v6 + 96))(v10, v5);
    v15 = *v10;
    v16 = swift_projectBox();
    (*(v1 + 16))(v4, v16, v0);
    v17 = sub_22C9094DC();
    (*(v1 + 8))(v4, v0);
  }

  else if (v14 == *MEMORY[0x277D72D28])
  {
    (*(v6 + 96))(v10, v5);
    v18 = *(*v10 + 24);
    v19 = *(*v10 + 32);
    v20 = *(*v10 + 40);
    v22[0] = *(*v10 + 16);
    v22[1] = v18;

    MEMORY[0x2318B7850](46, 0xE100000000000000);

    MEMORY[0x2318B7850](v19, v20);

    return v22[0];
  }

  else
  {
    v13(v10, v5);
    return 0x6E776F6E6B6E75;
  }

  return v17;
}

void sub_22C880CD0()
{
  sub_22C36BA7C();
  v43 = v1;
  v44 = v0;
  v3 = v2;
  v4 = type metadata accessor for DialogValues.ResolvedValue(0);
  v5 = sub_22C3699B8(v4);
  v52 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v51 = v10 - v9;
  sub_22C36BA0C();
  v50 = sub_22C9093BC();
  v11 = sub_22C369824(v50);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v49 = v17 - v16;
  sub_22C36BA0C();
  v48 = sub_22C9091CC();
  v18 = sub_22C369824(v48);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v47 = v24 - v23;
  sub_22C3A5908(&qword_27D9C0DB8, &qword_22C92B2C8);
  v25 = sub_22C90B1CC();
  v26 = v25;
  v27 = 0;
  v53 = v3;
  v30 = *(v3 + 64);
  v29 = v3 + 64;
  v28 = v30;
  v31 = 1 << *(v29 - 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v28;
  v34 = (v31 + 63) >> 6;
  v45 = v25 + 64;
  v46 = v25;
  if (v33)
  {
    while (1)
    {
      v35 = __clz(__rbit64(v33));
      v54 = (v33 - 1) & v33;
LABEL_10:
      v38 = v35 | (v27 << 6);
      v55 = *(v20 + 72) * v38;
      (*(v20 + 16))(v47, *(v53 + 48) + v55, v48);
      (*(v13 + 16))(v49, *(v53 + 56) + *(v13 + 72) * v38, v50);
      (*(v13 + 32))(v51, v49, v50);
      *(v45 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      v26 = v46;
      (*(v20 + 32))(v46[6] + v55, v47, v48);
      sub_22C888108(v51, v46[7] + *(v52 + 72) * v38);
      v39 = v46[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        break;
      }

      v46[2] = v41;
      v33 = v54;
      if (!v54)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v36 = v27;
    while (1)
    {
      v27 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v27 >= v34)
      {

        *v43 = v26;
        v42 = type metadata accessor for DialogValues(0);
        sub_22C888108(v44, v43 + *(v42 + 20));
        sub_22C36CC48();
        return;
      }

      v37 = *(v29 + 8 * v27);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v54 = (v37 - 1) & v37;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C88107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_22C370030();
  v149 = v18;
  v147 = v17;
  sub_22C369A48();
  v144 = sub_22C90952C();
  v20 = sub_22C369824(v144);
  v141 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v140 = v25 - v24;
  sub_22C36BA0C();
  v142 = sub_22C90993C();
  v26 = sub_22C369824(v142);
  v146 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v143 = v31 - v30;
  sub_22C36BA0C();
  v32 = type metadata accessor for TypedValueSalientContent();
  v33 = sub_22C36985C(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C369838();
  v38 = (v37 - v36);
  v39 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v39);
  v41 = *(v40 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v42);
  sub_22C37BDA4();
  v43 = sub_22C9093BC();
  v44 = sub_22C369824(v43);
  v145 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C369ABC();
  v50 = v48 - v49;
  v52 = MEMORY[0x28223BE20](v51);
  v54 = &v134 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = &v134 - v55;
  v57 = sub_22C909F0C();
  v148 = v56;
  v58 = v56;
  v59 = v147;
  v60 = v149;
  sub_22C8825EC(v17, v58);
  v149 = v60;
  if (v60)
  {
LABEL_2:
  }

  else
  {
    v138 = v32;
    v139 = v38;
    v136 = v50;
    v137 = v54;
    sub_22C90939C();
    v61 = sub_22C37EF1C();
    v62 = v142;
    v64 = v59;
    if (sub_22C370B74(v61, v63, v142) == 1)
    {
      sub_22C36DD28(v19, &qword_27D9BC390, &qword_22C912AC0);
      v65 = v43;
      v66 = MEMORY[0x277D837D0];
      v67 = v143;
      v68 = v57;
    }

    else
    {
      v69 = sub_22C9098BC();
      v71 = v70;
      v72 = *(v146 + 8);
      v73 = sub_22C36ECB4();
      v74(v73);
      v66 = MEMORY[0x277D837D0];
      v154 = MEMORY[0x277D837D0];
      v152 = v69;
      v153 = v71;
      v65 = v43;
      sub_22C374614();
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C62F20C();
      v68 = v57;
      v67 = v143;
    }

    v75 = v139;
    sub_22C8F90D0(v148, v139);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v77 = v144;
    v78 = v146;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v147 = v68;
        v91 = v75;
        v93 = *v75;
        v92 = v75[1];
        v94 = sub_22C3A5908(&qword_27D9C0D58, &unk_22C92B1E0);
        v95 = v145;
        v96 = v137;
        (*(v145 + 32))(v137, v91 + *(v94 + 48), v65);
        v97 = v136;
        v98 = v64;
        v99 = v149;
        sub_22C8825EC(v96, v136);
        v149 = v99;
        if (v99)
        {

          v100 = *(v95 + 8);
          v100(v96, v65);
          v100(v148, v65);
          goto LABEL_2;
        }

        v135 = v65;
        v154 = MEMORY[0x277D837D0];
        v152 = v93;
        v153 = v92;
        sub_22C374614();
        v103 = v147;
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C37B874();
        sub_22C62F20C();
        v104 = v103;
        v105 = v98 + *(type metadata accessor for DialogValues(0) + 20);
        v106 = v149;
        v107 = sub_22C8F6208(v97);
        v149 = v106;
        if (v106)
        {
          v109 = *(v145 + 8);
          v110 = v135;
          v109(v97, v135);
          v109(v137, v110);
          v109(v148, v110);
        }

        else
        {
          v121 = MEMORY[0x277D837D0];
          if (v108)
          {
            v154 = MEMORY[0x277D837D0];
            v152 = v107;
            v153 = v108;
            sub_22C374614();
            swift_isUniquelyReferenced_nonNull_native();
            sub_22C37B874();
            sub_22C62F20C();
          }

          v122 = v140;
          sub_22C90935C();
          v123 = sub_22C882998();
          v125 = v124;
          (*(v141 + 8))(v122, v144);
          v154 = v121;
          v152 = v123;
          v153 = v125;
          sub_22C374614();

          swift_isUniquelyReferenced_nonNull_native();
          sub_22C37B874();
          sub_22C386C08();
          sub_22C8830E8(&v152);
          if (v154)
          {
            sub_22C374614();
            swift_isUniquelyReferenced_nonNull_native();
            sub_22C37B874();
            sub_22C62F20C();

            v126 = v145;
            v127 = v135;
          }

          else
          {
            sub_22C36DD28(&v152, &qword_27D9BD5D8, &qword_22C918510);
            v128 = sub_22C36E2BC(v123, v125);
            if (v129)
            {
              v130 = v128;
              swift_isUniquelyReferenced_nonNull_native();
              v131 = *(v104 + 24);
              sub_22C3A5908(&qword_27D9BF388, &unk_22C92B1F0);
              v97 = v136;
              sub_22C90B15C();
              sub_22C37E81C();
              sub_22C456E34((a17 + 32 * v130), &v150);
              sub_22C90B17C();
            }

            else
            {
              v150 = 0u;
              v151 = 0u;
            }

            v126 = v145;
            v127 = v135;

            sub_22C36DD28(&v150, &qword_27D9BD5D8, &qword_22C918510);
          }

          v132 = v137;
          v133 = *(v126 + 8);
          v133(v97, v127);
          v133(v132, v127);
          v133(v148, v127);
        }

        break;
      case 2:
        v82 = v68;
        v83 = v64 + *(type metadata accessor for DialogValues(0) + 20);
        v84 = v149;
        v85 = sub_22C8F6208(v148);
        v149 = v84;
        if (v84)
        {
          v87 = sub_22C888578();
          v88(v87);
          goto LABEL_2;
        }

        v101 = v77;
        v135 = v65;
        if (v86)
        {
          v154 = v66;
          v152 = v85;
          v153 = v86;
          sub_22C374614();
          swift_isUniquelyReferenced_nonNull_native();
          sub_22C37B874();
          sub_22C62F20C();
        }

        v102 = v82;
        v111 = v140;
        sub_22C90935C();
        v112 = sub_22C882998();
        v114 = v113;
        (*(v141 + 8))(v111, v101);
        v154 = v66;
        v152 = v112;
        v153 = v114;
        sub_22C374614();

        swift_isUniquelyReferenced_nonNull_native();
        sub_22C37B874();
        sub_22C386C08();
        sub_22C8830E8(&v152);
        if (v154)
        {
          sub_22C374614();
          swift_isUniquelyReferenced_nonNull_native();
          sub_22C37B874();
          sub_22C62F20C();

          v115 = v145;
          v116 = v135;
        }

        else
        {
          sub_22C36DD28(&v152, &qword_27D9BD5D8, &qword_22C918510);
          v117 = sub_22C36E2BC(v112, v114);
          v116 = v135;
          if (v118)
          {
            v119 = v117;
            swift_isUniquelyReferenced_nonNull_native();
            v120 = *(v102 + 24);
            sub_22C3A5908(&qword_27D9BF388, &unk_22C92B1F0);
            sub_22C90B15C();
            sub_22C37E81C();
            sub_22C456E34((a17 + 32 * v119), &v150);
            sub_22C90B17C();
          }

          else
          {
            v150 = 0u;
            v151 = 0u;
          }

          v115 = v145;

          sub_22C36DD28(&v150, &qword_27D9BD5D8, &qword_22C918510);
        }

        (*(v115 + 8))(v148, v116);
        break;
      case 3:
        v89 = sub_22C888578();
        v90(v89);
        break;
      default:
        (*(v146 + 32))(v67, v75, v62);
        v154 = v66;
        v79 = v145;
        v152 = 0x676E69727473;
        v153 = 0xE600000000000000;
        sub_22C374614();
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C37B874();
        sub_22C386C08();
        v80 = sub_22C9098BC();
        v154 = v66;
        v152 = v80;
        v153 = v81;
        sub_22C374614();
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C37B874();
        sub_22C62F20C();
        (*(v78 + 8))(v67, v62);
        (*(v79 + 8))(v148, v65);
        break;
    }
  }

  sub_22C36FB20();
}

void sub_22C881B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  v155 = v21;
  v156 = v20;
  v163 = v24;
  v25 = sub_22C90993C();
  v26 = sub_22C369824(v25);
  v146 = v27;
  v147 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v145 = v31 - v30;
  sub_22C36BA0C();
  v148 = type metadata accessor for TypedValueSalientContent();
  v32 = sub_22C36985C(v148);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v149 = (v36 - v35);
  sub_22C36BA0C();
  v161 = sub_22C9093BC();
  v37 = sub_22C369824(v161);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C369ABC();
  v144 = (v42 - v43);
  sub_22C369930();
  MEMORY[0x28223BE20](v44);
  v157 = &v143 - v45;
  sub_22C369930();
  MEMORY[0x28223BE20](v46);
  v160 = &v143 - v47;
  sub_22C369930();
  MEMORY[0x28223BE20](v48);
  v154 = &v143 - v49;
  sub_22C36BA0C();
  v50 = sub_22C9063DC();
  v51 = sub_22C369824(v50);
  v158 = v52;
  v159 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C369ABC();
  v143 = (v55 - v56);
  sub_22C369930();
  MEMORY[0x28223BE20](v57);
  v162 = &v143 - v58;
  sub_22C36BA0C();
  v153 = sub_22C90634C();
  v59 = sub_22C369824(v153);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C369ABC();
  v152 = v64 - v65;
  sub_22C369930();
  MEMORY[0x28223BE20](v66);
  v68 = &v143 - v67;
  v69 = sub_22C90636C();
  v70 = sub_22C369824(v69);
  v72 = v71;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v75);
  v77 = &v143 - v76;
  sub_22C9036AC();
  sub_22C9036AC();
  sub_22C90635C();
  sub_22C90631C();
  v78 = *(v72 + 8);
  v79 = sub_22C36BBCC();
  v151 = v80;
  (v80)(v79);
  v81 = sub_22C90635C();
  v82 = sub_22C90AB6C();
  v83 = sub_22C90AC5C();
  v150 = v39;
  if (v83)
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    v85 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v81, v82, v85, "ResponseGeneration.valueFormatting", "", v84, 2u);
    v39 = v150;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v86 = v153;
  (*(v61 + 16))(v152, v68, v153);
  v87 = sub_22C9063AC();
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();
  sub_22C37EF1C();
  v90 = sub_22C90639C();
  (*(v61 + 8))(v68, v86);
  v151(v77, v69);
  v91 = v162;
  sub_22C90405C();
  v92 = v154;
  v93 = v163;
  v94 = v161;
  v151 = *(v39 + 16);
  v152 = v39 + 16;
  (v151)(v154, v163, v161);
  v95 = sub_22C9063CC();
  v96 = sub_22C90AACC();
  if (os_log_type_enabled(v95, v96))
  {
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C36FF40();
    v97 = swift_slowAlloc();
    v164[0] = v97;
    *v92 = 136642819;
    v98 = sub_22C90938C();
    v153 = v90;
    v100 = v99;
    v101 = *(v39 + 8);
    v101(v92, v94);
    v102 = sub_22C36F9F4(v98, v100, v164);
    v90 = v153;
    v93 = v163;

    *(v92 + 4) = v102;
    _os_log_impl(&dword_22C366000, v95, v96, "Formatting value: %{sensitive}s", v92, 0xCu);
    sub_22C36FF94(v97);
    v103 = v101;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v104 = *(v158 + 8);
    v104(v162, v159);
  }

  else
  {

    v103 = *(v39 + 8);
    v103(v92, v94);
    v104 = *(v158 + 8);
    v104(v91, v159);
  }

  v105 = v160;
  v107 = v155;
  v106 = v156;
  sub_22C8825EC(v93, v160);
  v108 = v157;
  if (!v107)
  {
    sub_22C8F90D0(v93, v149);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v153 = v90;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v117 = v149;
        v118 = v149[1];

        v119 = sub_22C3A5908(&qword_27D9C0D58, &unk_22C92B1E0);
        v120 = v144;
        v121 = v161;
        (*(v150 + 32))(v144, v117 + *(v119 + 48), v161);
        sub_22C881B80(v120);
        v103(v120, v121);
        v103(v160, v121);
        break;
      case 2:
        v115 = v106 + *(type metadata accessor for DialogValues(0) + 20);
        v122 = sub_22C8F6208(v105);
        v124 = v123;
        v163 = v103;
        v125 = v143;
        sub_22C90405C();
        v126 = v93;
        v127 = v161;
        (v151)(v108, v126, v161);

        v128 = sub_22C9063CC();
        v129 = sub_22C90AACC();

        LODWORD(v162) = v129;
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          a10 = v156;
          *v130 = 136643075;
          v131 = v157;
          v132 = sub_22C90938C();
          v155 = v128;
          v133 = v132;
          v134 = v127;
          v136 = v135;
          v163(v131, v134);
          v137 = sub_22C36F9F4(v133, v136, &a10);

          *(v130 + 4) = v137;
          *(v130 + 12) = 2085;
          v164[0] = v122;
          v164[1] = v124;

          sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
          v138 = sub_22C90A1AC();
          v140 = sub_22C36F9F4(v138, v139, &a10);

          *(v130 + 14) = v140;
          v141 = v155;
          _os_log_impl(&dword_22C366000, v155, v162, "Formatted value:\n%{sensitive}s\nto:\n%{sensitive}s", v130, 0x16u);
          swift_arrayDestroy();
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          sub_22C369B50();
          MEMORY[0x2318B9880]();

          v104(v143, v159);
          v163(v160, v161);
        }

        else
        {

          v142 = v163;
          v163(v157, v127);
          v104(v125, v159);
          v142(v105, v127);
        }

        break;
      case 3:
        v116 = sub_22C375C44();
        (v103)(v116);
        break;
      default:
        v110 = v146;
        (*(v146 + 32))(v145, v149, v147);
        sub_22C9098BC();
        v111 = *(v110 + 8);
        v112 = sub_22C36BBCC();
        v113(v112);
        v114 = sub_22C375C44();
        (v103)(v114);
        break;
    }
  }

  sub_22C8846E4();

  sub_22C36FB20();
}

uint64_t sub_22C8825EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_22C3A5908(&qword_27D9C0D80, &qword_22C92B220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v26 - v5;
  v29 = type metadata accessor for DialogValues.ResolvedValue(0);
  v6 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C9093BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_22C9091CC();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v27);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v9 + 16);
  v17(v12, a1, v8);
  if ((*(v9 + 88))(v12, v8) == *MEMORY[0x277D72A40])
  {
    v18 = v31;
    (*(v9 + 96))(v12, v8);
    v19 = *v12;
    v20 = swift_projectBox();
    v21 = v27;
    (*(v13 + 16))(v16, v20, v27);

    v22 = v28;
    sub_22C605E64(v16, *v30);
    if (sub_22C370B74(v22, 1, v29) == 1)
    {
      sub_22C36DD28(v22, &qword_27D9C0D80, &qword_22C92B220);
      sub_22C8873E4();
      swift_allocError();
      swift_willThrow();
      return (*(v13 + 8))(v16, v21);
    }

    else
    {
      (*(v13 + 8))(v16, v21);
      v24 = v22;
      v25 = v26;
      sub_22C888108(v24, v26);
      return (*(v9 + 32))(v18, v25, v8);
    }
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    return (v17)(v31, a1, v8);
  }
}

uint64_t sub_22C882998()
{
  v0 = sub_22C90952C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v47 - v7);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v47 - v10);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter((&v47 - v12));
  v14 = (*(v1 + 88))(v13, v0);
  if (v14 != *MEMORY[0x277D72D50])
  {
    if (v14 != *MEMORY[0x277D72D30])
    {
      if (v14 == *MEMORY[0x277D72D28])
      {
        (*(v1 + 16))(v8, v13, v0);
        (*(v1 + 96))(v8, v0);
        v25 = *v8;
        v19 = *(v25 + 32);
        v26 = *(v25 + 40);

        goto LABEL_91;
      }

      goto LABEL_89;
    }

    (*(v1 + 16))(v5, v13, v0);
    (*(v1 + 96))(v5, v0);
    v20 = *v5;
    v21 = sub_22C9094CC();
    v22 = swift_projectBox();
    v23 = (*(*(v21 - 8) + 88))(v22, v21);
    if (v23 == *MEMORY[0x277D72C00])
    {

      v19 = 0x7972657571;
      goto LABEL_91;
    }

    v27 = v23;
    if (v23 == *MEMORY[0x277D72BE0] || v23 == *MEMORY[0x277D72BC0] || v23 == *MEMORY[0x277D72C18] || v23 == *MEMORY[0x277D72BF8])
    {
      goto LABEL_22;
    }

    if (v23 != *MEMORY[0x277D72C20])
    {
      if (v23 == *MEMORY[0x277D72BF0])
      {

        v19 = 1701603686;
        goto LABEL_91;
      }

      if (v23 == *MEMORY[0x277D72C28] || v23 == *MEMORY[0x277D72BB8] || v23 == *MEMORY[0x277D72BD0] || v23 == *MEMORY[0x277D72C10])
      {
        goto LABEL_22;
      }

      if (v23 == *MEMORY[0x277D72C08])
      {
        goto LABEL_61;
      }

      if (v23 != *MEMORY[0x277D72C38])
      {
        if (v23 != *MEMORY[0x277D72BD8] && v23 != *MEMORY[0x277D72BE8] && v23 != *MEMORY[0x277D72C30])
        {
          v45 = *MEMORY[0x277D72BC8];

          if (v27 == v45)
          {
            v19 = 0x6D6572757361656DLL;
            goto LABEL_91;
          }

LABEL_89:
          v31 = 0x776F6E6B6E75;
          goto LABEL_90;
        }

LABEL_22:
        v19 = 0x657474616D726F66;

        goto LABEL_91;
      }

      goto LABEL_79;
    }

LABEL_26:

    v19 = 0x79636E6572727563;
    goto LABEL_91;
  }

  (*(v1 + 16))(v11, v13, v0);
  (*(v1 + 96))(v11, v0);
  v15 = *v11;
  v16 = sub_22C9094EC();
  v17 = swift_projectBox();
  v18 = (*(*(v16 - 8) + 88))(v17, v16);
  if (v18 != *MEMORY[0x277D72C50])
  {
    v24 = v18;
    if (v18 == *MEMORY[0x277D72CC8])
    {

      v19 = 1701736302;
      goto LABEL_91;
    }

    if (v18 == *MEMORY[0x277D72CB0])
    {

      v31 = 0x61656C6F6F62;
LABEL_90:
      v19 = v31 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
      goto LABEL_91;
    }

    if (v18 == *MEMORY[0x277D72CA0] || v18 == *MEMORY[0x277D72CD0] || v18 == *MEMORY[0x277D72CE8])
    {

      v19 = 0x7265626D756ELL;
      goto LABEL_91;
    }

    if (v18 == *MEMORY[0x277D72CE0] || v18 == *MEMORY[0x277D72CB8] || v18 == *MEMORY[0x277D72C70] || v18 == *MEMORY[0x277D72CA8])
    {
      goto LABEL_49;
    }

    if (v18 == *MEMORY[0x277D72C40])
    {

      v19 = 1952672100;
      goto LABEL_91;
    }

    if (v18 == *MEMORY[0x277D72C88])
    {
LABEL_49:

      v19 = 0x676E69727473;
      goto LABEL_91;
    }

    if (v18 != *MEMORY[0x277D72C68])
    {
      if (v18 == *MEMORY[0x277D72C60])
      {
        goto LABEL_22;
      }

      if (v18 != *MEMORY[0x277D72D00])
      {
        if (v18 != *MEMORY[0x277D72CD8])
        {
          if (v18 != *MEMORY[0x277D72CC0] && v18 != *MEMORY[0x277D72C98] && v18 != *MEMORY[0x277D72C80])
          {
            v42 = *MEMORY[0x277D72C48];

            if (v24 == v42)
            {
              v19 = 0x657474616D726F66;
              goto LABEL_91;
            }

            goto LABEL_89;
          }

          goto LABEL_22;
        }

LABEL_61:

        v19 = 0x6E6F73726570;
        goto LABEL_91;
      }

LABEL_79:

      v19 = 0x72616D6563616C70;
      goto LABEL_91;
    }

    goto LABEL_26;
  }

  v19 = 0x6D6572757361656DLL;

LABEL_91:
  (*(v1 + 8))(v13, v0);
  return v19;
}

uint64_t sub_22C8830E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C90922C();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v69 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  MEMORY[0x28223BE20](v6);
  v73 = &v67 - v8;
  v70 = sub_22C9092DC();
  v68 = *(v70 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C90063C();
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  MEMORY[0x28223BE20](v11);
  v82 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C3A5908(&qword_27D9BFE38, &qword_22C92B200);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v80 = &v67 - v16;
  v17 = sub_22C9001BC();
  v78 = *(v17 - 8);
  v79 = v17;
  v18 = *(v78 + 64);
  MEMORY[0x28223BE20](v17);
  v76 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22C90021C();
  v77 = *(v81 - 8);
  v20 = *(v77 + 64);
  MEMORY[0x28223BE20](v81);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22C90931C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v67 - v29;
  v31 = sub_22C9093BC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = (&v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v35, v1, v31);
  if ((*(v32 + 88))(v35, v31) != *MEMORY[0x277D72A58])
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return (*(v32 + 8))(v35, v31);
  }

  (*(v32 + 96))(v35, v31);
  v36 = *v35;
  v37 = swift_projectBox();
  v38 = *(v24 + 16);
  v38(v30, v37, v23);
  v38(v28, v30, v23);
  v39 = (*(v24 + 88))(v28, v23);
  if (v39 != *MEMORY[0x277D72988])
  {
    v42 = v39;
    v43 = v30;
    v44 = a1;
    if (v39 == *MEMORY[0x277D72978])
    {
      (*(v24 + 96))(v28, v23);
      v45 = *v28;
      *(a1 + 24) = MEMORY[0x277D83B88];
      *a1 = v45;
    }

    else if (v39 == *MEMORY[0x277D729A8])
    {
      (*(v24 + 96))(v28, v23);
      v46 = *v28;
      *(a1 + 24) = MEMORY[0x277D839F8];
      *a1 = v46;
    }

    else if (v39 == *MEMORY[0x277D729C0])
    {
      (*(v24 + 96))(v28, v23);
      type metadata accessor for Decimal(0);
      *(a1 + 24) = v47;
      *a1 = *v28;
      *(a1 + 16) = *(v28 + 4);
    }

    else if (v39 == *MEMORY[0x277D729B8])
    {
      (*(v24 + 96))(v28, v23);
      v48 = *v28;
      v49 = *(v28 + 1);
      *(a1 + 24) = MEMORY[0x277D837D0];
      *a1 = v48;
      *(a1 + 8) = v49;
    }

    else
    {
      if (v39 == *MEMORY[0x277D72990])
      {
        (*(v24 + 96))(v28, v23);
        v50 = v82;
        v51 = *(v83 + 32);
        v52 = v84;
        v51(v82, v28, v84);
      }

      else
      {
        if (v39 == *MEMORY[0x277D72968])
        {
          (*(v24 + 96))(v28, v23);
          v54 = v77;
          (*(v77 + 32))(v22, v28, v81);
          v55 = v76;
          sub_22C90019C();
          sub_22C87F748();
          (*(v78 + 8))(v55, v79);
          v56 = sub_22C90A19C();
          *(v44 + 24) = MEMORY[0x277D837D0];
          *v44 = v56;
          *(v44 + 8) = v57;
          (*(v54 + 8))(v22, v81);
          goto LABEL_18;
        }

        if (v39 == *MEMORY[0x277D72940])
        {
          (*(v24 + 96))(v28, v23);
          v50 = v73;
          v51 = *(v74 + 32);
          v52 = v75;
          v51(v73, v28, v75);
        }

        else
        {
          if (v39 != *MEMORY[0x277D72950])
          {
            if (v39 != *MEMORY[0x277D729B0])
            {
              v65 = *MEMORY[0x277D729A0];
              v66 = *(v24 + 8);
              v66(v30, v23);
              *v44 = 0u;
              *(v44 + 16) = 0u;
              if (v42 != v65)
              {
                v66(v28, v23);
              }
            }

            (*(v24 + 96))(v28, v23);
            v58 = v67;
            v59 = v68;
            (*(v68 + 32))(v67, v28, v70);
            v60 = sub_22C9092CC();
            v61 = [v60 displayName];

            v62 = sub_22C90A11C();
            v64 = v63;

            *(v44 + 24) = MEMORY[0x277D837D0];
            *v44 = v62;
            *(v44 + 8) = v64;
            (*(v59 + 8))(v58, v70);
            goto LABEL_18;
          }

          (*(v24 + 96))(v28, v23);
          v52 = v72;
          v51 = *(v71 + 32);
          v50 = v69;
          v51(v69, v28, v72);
        }
      }

      *(a1 + 24) = v52;
      v53 = sub_22C36D548(a1);
      v51(v53, v50, v52);
    }

LABEL_18:
    (*(v24 + 8))(v43, v23);
  }

  (*(v24 + 96))(v28, v23);
  v40 = *v28;
  *(a1 + 24) = MEMORY[0x277D839B0];
  *a1 = v40;
  (*(v24 + 8))(v30, v23);
}

uint64_t sub_22C883AD4(uint64_t a1)
{
  v2 = sub_22C8883D8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C883B10(uint64_t a1)
{
  v2 = sub_22C8883D8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C883B68()
{
  sub_22C369980();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_22C9093BC();
  v1[11] = v5;
  sub_22C3699B8(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = sub_22C3699D4();
  v9 = sub_22C9091CC();
  v1[14] = v9;
  sub_22C3699B8(v9);
  v1[15] = v10;
  v12 = *(v11 + 64);
  v1[16] = sub_22C3699D4();
  v13 = sub_22C3A5908(&qword_27D9BB668, &unk_22C90FA20);
  v1[17] = v13;
  sub_22C3699B8(v13);
  v1[18] = v14;
  v16 = *(v15 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v17 = type metadata accessor for TypedValueFormatter(0);
  sub_22C369914(v17);
  v19 = *(v18 + 64);
  v1[21] = sub_22C3699D4();
  v20 = sub_22C3A5908(&qword_27D9BB5E0, &qword_22C91D710);
  v1[22] = v20;
  sub_22C3699B8(v20);
  v1[23] = v21;
  v23 = *(v22 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v24 = sub_22C90634C();
  v1[27] = v24;
  sub_22C3699B8(v24);
  v1[28] = v25;
  v27 = *(v26 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v28 = sub_22C90636C();
  v1[31] = v28;
  sub_22C3699B8(v28);
  v1[32] = v29;
  v31 = *(v30 + 64);
  v1[33] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_22C883E10()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  sub_22C9036AC();
  sub_22C90633C();
  v3 = sub_22C90635C();
  v4 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v5 = *(v0 + 240);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v3, v4, v7, "ResponseGeneration.valueResolving", "", v6, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v11 = *(v0 + 240);
  v10 = *(v0 + 248);
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v14 = *(v0 + 216);
  v15 = *(v0 + 80);

  (*(v13 + 16))(v12, v11, v14);
  v16 = sub_22C9063AC();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 272) = sub_22C90639C();
  (*(v13 + 8))(v11, v14);
  v19 = *(v9 + 8);
  v20 = sub_22C36D264();
  v21(v20);
  sub_22C887454(v15, v0 + 16);
  v22 = swift_allocObject();
  *(v0 + 280) = v22;
  v23 = *(v0 + 32);
  *(v22 + 16) = *(v0 + 16);
  *(v22 + 32) = v23;
  *(v22 + 48) = *(v0 + 48);
  v24 = swift_task_alloc();
  *(v0 + 288) = v24;
  *v24 = v0;
  v24[1] = sub_22C884040;
  v25 = *(v0 + 64);

  return sub_22C87E9F8(&unk_22C92B238, v22, v25);
}

void sub_22C884040()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v6 = *(v5 + 288);
  *v4 = *v1;
  v3[37] = v7;
  v3[38] = v0;

  if (v0)
  {
  }

  else
  {
    v8 = v3[35];

    sub_22C36BB08();

    MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void sub_22C884170()
{
  v1 = 0;
  v2 = v0[37];
  v90 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v4 = v1 + 1;
    v5 = *(v2 + 32 + 8 * v1);

    sub_22C3CF0DC();
    v1 = v4;
  }

  v6 = v0[37];

  v7 = *(v90 + 16);
  if (v7)
  {
    v9 = v0[22];
    v8 = v0[23];
    v67 = v0[17];
    v68 = v0[18];
    v10 = v0[15];
    v11 = v0[12];
    v12 = v90 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    v84 = (v11 + 88);
    v82 = (v11 + 8);
    v73 = (v11 + 96);
    v72 = (v10 + 16);
    v65 = (v10 + 32);
    v66 = (v11 + 32);
    v64 = (v10 + 8);
    v75 = MEMORY[0x277D84F90];
    v80 = *MEMORY[0x277D72A40];
    v86 = v9;
    v74 = v13;
    while (1)
    {
      v15 = v0[25];
      v14 = v0[26];
      v16 = v0[11];
      v88 = v12;
      sub_22C4E719C(v12, v14, &qword_27D9BB5E0, &qword_22C91D710);
      sub_22C4E719C(v14, v15, &qword_27D9BB5E0, &qword_22C91D710);
      v17 = *(v9 + 48);
      v18 = (*v84)(v15, v16);
      v20 = v0[25];
      v19 = v0[26];
      if (v18 == v80)
      {
        v76 = v0[24];
        v78 = v7;
        v21 = v0[16];
        v22 = v0[14];
        v23 = v0[11];
        (*v73)(v20, v23);
        v24 = *v20;
        v25 = swift_projectBox();
        (*v72)(v21, v25, v22);

        sub_22C372EFC();
        sub_22C8880B0(v15 + v17, v26);
        sub_22C4E7208(v19, v76, &qword_27D9BB5E0, &qword_22C91D710);
        v27 = *(v86 + 48);
        v28 = sub_22C370B74(v76 + v27, 1, v23);
        v29 = v0[24];
        if (v28 != 1)
        {
          v40 = v0[19];
          v70 = v0[16];
          v71 = v0[20];
          v41 = v0[13];
          v69 = v0[14];
          v42 = v0[11];
          v43 = *v66;
          (*v66)(v41, v76 + v27, v42);
          (*v82)(v29, v42);
          v44 = *(v67 + 48);
          (*v65)(v40, v70, v69);
          v43(v40 + v44, v41, v42);
          sub_22C4E7208(v40, v71, &qword_27D9BB668, &unk_22C90FA20);
          v39 = v88;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v45 = v75;
          }

          else
          {
            v49 = *(v75 + 16);
            sub_22C36D270();
            sub_22C596E44();
            v45 = v50;
          }

          v47 = *(v45 + 16);
          v46 = *(v45 + 24);
          v7 = v78;
          if (v47 >= v46 >> 1)
          {
            sub_22C36A958(v46);
            sub_22C596E44();
            v45 = v51;
          }

          v48 = v0[20];
          *(v45 + 16) = v47 + 1;
          v75 = v45;
          sub_22C4E7208(v48, v45 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v47, &qword_27D9BB668, &unk_22C90FA20);
          v13 = v74;
          goto LABEL_17;
        }

        v30 = v0[11];
        (*v64)(v0[16], v0[14]);
        sub_22C372EFC();
        sub_22C8880B0(v76 + v27, v31);
        v32 = *v82;
        v33 = sub_22C36BBCC();
        v34(v33);
        v7 = v78;
        v13 = v74;
      }

      else
      {
        v35 = v13;
        v36 = v0[11];
        sub_22C36DD28(v0[26], &qword_27D9BB5E0, &qword_22C91D710);
        sub_22C372EFC();
        sub_22C8880B0(v15 + v17, v37);
        v38 = v36;
        v13 = v35;
        (*v82)(v20, v38);
      }

      v39 = v88;
LABEL_17:
      v12 = v39 + v13;
      --v7;
      v9 = v86;
      if (!v7)
      {

        v52 = v75;
        goto LABEL_21;
      }
    }
  }

  v52 = MEMORY[0x277D84F90];
LABEL_21:
  v53 = v0[38];
  v54 = v0[33];
  v55 = v0[34];
  v57 = v0[29];
  v56 = v0[30];
  v77 = v0[26];
  v79 = v0[25];
  v81 = v0[24];
  v58 = v0[21];
  v83 = v0[20];
  v85 = v0[19];
  v87 = v0[16];
  v89 = v0[13];
  v59 = v0[9];
  v60 = v0[7];
  sub_22C87F6B0(v52);
  v61 = sub_22C372158();
  sub_22C887550(v61, v62);
  sub_22C880CD0();
  sub_22C8846E4();

  sub_22C369A24();

  v63();
}

void sub_22C8846E4()
{
  sub_22C36BA7C();
  v40 = v1;
  v2 = sub_22C90637C();
  v3 = sub_22C369824(v2);
  v37 = v4;
  v38 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C90634C();
  v11 = sub_22C369824(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C37BDA4();
  v16 = sub_22C90636C();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v24 = v23 - v22;
  sub_22C9036AC();
  v25 = sub_22C90635C();
  sub_22C90638C();
  v36 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v35 = v13;

    sub_22C9063BC();

    if ((*(v37 + 88))(v9, v38) == *MEMORY[0x277D85B00])
    {
      v26 = 0;
      v27 = 0;
      v39 = "[Error] Interval already ended";
    }

    else
    {
      (*(v37 + 8))(v9, v38);
      v39 = "%s";
      v27 = 2;
      v26 = 1;
    }

    v28 = v19;
    sub_22C36BED8();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v41 = v30;
    *v29 = v27;
    *(v29 + 1) = v26;
    *(v29 + 2) = 2080;
    sub_22C90366C();
    v31 = sub_22C90AF7C();
    v33 = sub_22C36F9F4(v31, v32, &v41);

    *(v29 + 4) = v33;
    v34 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v25, v36, v34, v40, v39, v29, 0xCu);
    sub_22C36FF94(v30);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (*(v35 + 8))(v0, v10);
    (*(v28 + 8))(v24, v16);
  }

  else
  {

    (*(v13 + 8))(v0, v10);
    (*(v19 + 8))(v24, v16);
  }

  sub_22C36CC48();
}

uint64_t sub_22C884A20(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_22C884ABC;

  return sub_22C884BDC(a2);
}

uint64_t sub_22C884ABC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C884BAC()
{
  **(v0 + 16) = *(v0 + 32);
  sub_22C369A24();
  return v1();
}

uint64_t sub_22C884BDC(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22C884BFC, 0, 0);
}

uint64_t sub_22C884BFC()
{
  v1 = v0[4];
  v0[2] = MEMORY[0x277D84F98];
  sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
  v2 = sub_22C9093BC();
  sub_22C369824(v2);
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22C90F800;
  (*(v4 + 16))(v8 + v7, v1, v2);
  v0[3] = v8;
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_22C884D64;
  v10 = v0[5];

  return sub_22C884E84((v0 + 2), (v0 + 3));
}

uint64_t sub_22C884D64()
{
  sub_22C369980();
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = *(v1 + 24);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C884E84(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_22C3A5908(&qword_27D9BB908, &qword_22C910960) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v3[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = sub_22C90919C();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = sub_22C90906C();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v13 = sub_22C9063DC();
  v3[16] = v13;
  v14 = *(v13 - 8);
  v3[17] = v14;
  v15 = *(v14 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v16 = sub_22C9091CC();
  v3[21] = v16;
  v17 = *(v16 - 8);
  v3[22] = v17;
  v18 = *(v17 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v19 = *(*(sub_22C3A5908(&qword_27D9BF3A8, &qword_22C922668) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v20 = sub_22C9093BC();
  v3[29] = v20;
  v21 = *(v20 - 8);
  v3[30] = v21;
  v22 = *(v21 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C885224, 0, 0);
}

uint64_t sub_22C885224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_22C4E7844();
  a33 = v35;
  a34 = v36;
  sub_22C375EC8();
  a32 = v34;
  v37 = **(v34 + 24);
  *(v34 + 320) = v37;
  v38 = *(v37 + 16);
  if (!v38)
  {
    goto LABEL_8;
  }

  v39 = *(v34 + 312);
  v40 = *(v34 + 232);
  v41 = *(v34 + 240);
  v42 = *(v34 + 224);
  v43 = *(v34 + 16);
  v45 = *(v41 + 16);
  v41 += 16;
  v44 = v45;
  v46 = *(v41 + 64);
  *(v34 + 520) = v46;
  v47 = *(v41 + 56);
  *(v34 + 328) = v47;
  *(v34 + 336) = v45;
  *(v34 + 344) = v41 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v45(v39, v37 + ((v46 + 32) & ~v46) + v47 * (v38 - 1), v40);
  sub_22C605F0C(v39, *v43);
  v48 = type metadata accessor for DialogValuesResolver.CollectedValue(0);
  *(v34 + 352) = v48;
  v49 = sub_22C37EF1C();
  v51 = sub_22C370B74(v49, v50, v48);
  v52 = *(v34 + 312);
  if (v51 == 1)
  {
    v53 = *(v34 + 304);
    v54 = *(v34 + 232);
    v55 = *(v34 + 240);
    sub_22C36DD28(*(v34 + 224), &qword_27D9BF3A8, &qword_22C922668);
    v44(v53, v52, v54);
    *(v34 + 360) = *(v55 + 88);
    *(v34 + 368) = (v55 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
    v56 = sub_22C36ECB4();
    v58 = v57(v56);
    v59 = *(v34 + 304);
    v60 = *(v34 + 232);
    v61 = *(v34 + 240);
    if (v58 == *MEMORY[0x277D72A40])
    {
      v62 = *(v34 + 208);
      v63 = *(v34 + 168);
      v64 = *(v34 + 176);
      v65 = *(v34 + 32);
      (*(v61 + 96))(*(v34 + 304), v60);
      v66 = *v59;
      v67 = swift_projectBox();
      v68 = *(v64 + 16);
      *(v34 + 376) = v68;
      *(v34 + 384) = (v64 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v69 = v63;
      v70 = v68;
      (v68)(v62, v67, v69);

      if (sub_22C886EB0(v37))
      {
        v71 = *(v34 + 200);
        v73 = *(v34 + 160);
        v72 = *(v34 + 168);
        sub_22C90405C();
        v74 = sub_22C36BA00();
        (v70)(v74);
        v75 = sub_22C9063CC();
        LOBYTE(v73) = sub_22C90AACC();
        v76 = os_log_type_enabled(v75, v73);
        v77 = *(v34 + 200);
        if (v76)
        {
          v78 = *(v34 + 192);
          v79 = *(v34 + 168);
          v80 = *(v34 + 176);
          a22 = *(v34 + 160);
          a20 = *(v34 + 136);
          a21 = *(v34 + 128);
          sub_22C36BED8();
          swift_slowAlloc();
          sub_22C36FF40();
          a19 = swift_slowAlloc();
          a23 = a19;
          *v70 = 136380675;
          (v70)(v78, v77, v79);
          v81 = sub_22C90A1AC();
          v83 = v82;
          v84 = *(v80 + 8);
          v84(v77, v79);
          v85 = sub_22C36F9F4(v81, v83, &a23);

          *(v70 + 4) = v85;
          sub_22C7E4DDC(&dword_22C366000, v86, v87, "Resolving deferred value:\n%{private}s");
          sub_22C36FF94(a19);
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          sub_22C369B50();
          MEMORY[0x2318B9880]();

          v88 = *(a20 + 8);
          v88(a22, a21);
        }

        else
        {
          v150 = *(v34 + 168);
          v151 = *(v34 + 176);
          v152 = *(v34 + 160);
          v153 = *(v34 + 128);
          v154 = *(v34 + 136);

          v84 = *(v151 + 8);
          v84(v77, v150);
          v88 = *(v154 + 8);
          v155 = sub_22C36D264();
          (v88)(v155);
        }

        *(v34 + 392) = v88;
        *(v34 + 400) = v84;
        v156 = *(v34 + 32);
        v157 = v156[4];
        sub_22C374168(v156, v156[3]);
        v158 = *(MEMORY[0x277D1E550] + 4);
        swift_task_alloc();
        sub_22C36CC90();
        *(v34 + 408) = v159;
        *v159 = v160;
        v159[1] = sub_22C885A7C;
        v161 = *(v34 + 296);
        v162 = *(v34 + 208);
        sub_22C377448();

        return MEMORY[0x282178340](v163, v164, v165, v166, v167, v168, v169, v170, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
      }

      (*(*(v34 + 176) + 8))(*(v34 + 208), *(v34 + 168));
    }

    else
    {
      (*(v61 + 8))(*(v34 + 304), v60);
    }

    v99 = *(v34 + 280);
    v100 = *(v34 + 232);
    v101 = *(v34 + 216);
    v102 = *(v34 + 16);
    v44(v99, *(v34 + 312), v100);
    sub_22C36C640(v101, 1, 1, v100);
    sub_22C36C640(v101, 0, 1, v48);
    sub_22C6042A4();
    v103 = sub_22C37C014();
    v104(v103);
    v105 = (v101)(v102, v48);
    if (v105 == *MEMORY[0x277D72A38])
    {
      v106 = sub_22C88852C();
      v107(v106);
      *(v34 + 464) = *v102;
      swift_projectBox();
      v108 = sub_22C370AD0();
      v109(v108);
      v110 = sub_22C90914C();
      sub_22C37FB44(v110);
      v113 = v112 & v111;
      if (v113)
      {
LABEL_27:
        v134 = sub_22C36DC18(v113);
        v135(v134);
        v136 = sub_22C385860();
        v137(v136);
        sub_22C4E719C(v100, a22, &qword_27D9BADA0, &unk_22C90FA80);
        v138 = *(a22 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v182 = *(v37 + 16);
          sub_22C36D270();
          sub_22C5903C0();
          v37 = v183;
        }

        sub_22C379BD0();
        if (v123)
        {
          sub_22C36A958(v139);
          sub_22C5903C0();
          v37 = v184;
        }

        v140 = sub_22C376AD4();
        v99(v140);
        *v100 = v37;
        v141 = swift_task_alloc();
        *(v34 + 512) = v141;
        *v141 = v34;
        sub_22C38C270();
LABEL_32:
        *(v128 + 8) = v129;
        sub_22C389344();
        sub_22C377448();

        return sub_22C884E84(v142, v143, v144, v145, v146, v147, v148, v149, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
      }

      sub_22C388470();
      while (v133 != v132)
      {
        sub_22C88858C();
        if (v113)
        {
          goto LABEL_27;
        }
      }

      v171 = *(v34 + 464);
      v172 = sub_22C38AC38();
      v173(v172);
      v174 = *(v101 + 8);
      v175 = sub_22C36D264();
      v176(v175);

LABEL_41:

      goto LABEL_8;
    }

    if (v105 == *MEMORY[0x277D729E0])
    {
      v114 = sub_22C888510();
      v115(v114);
      *(v34 + 424) = *v102;
      swift_projectBox();
      v116 = sub_22C370AD0();
      v117(v116);
      v118 = sub_22C90905C();
      *(v34 + 432) = v118;
      v119 = *(v118 + 16);
      *(v34 + 440) = v119;
      if (v119)
      {
        v120 = sub_22C8884CC();
        v121(v120);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v185 = *(v37 + 16);
          sub_22C36D270();
          sub_22C5903C0();
          v37 = v186;
        }

        sub_22C379BD0();
        if (v123)
        {
          sub_22C36A958(v122);
          sub_22C5903C0();
          v37 = v187;
        }

        sub_22C888434();
        v125 = sub_22C8885A0(v124);
        v126(v125);
        *v100 = v37;
        v127 = swift_task_alloc();
        *(v34 + 456) = v127;
        *v127 = v34;
        sub_22C36C5C0();
        goto LABEL_32;
      }

      v177 = sub_22C888454();
      v178(v177);
      v179 = *(v100 + 8);
      v180 = sub_22C36BAFC();
      v181(v180);
      goto LABEL_41;
    }

    v130 = sub_22C888548();
    (v100)(v130);
    v131 = sub_22C36BBCC();
    (v100)(v131);
  }

  else
  {
    v89 = *(v34 + 224);
    (*(*(v34 + 240) + 8))(*(v34 + 312), *(v34 + 232));
    sub_22C36DD28(v89, &qword_27D9BF3A8, &qword_22C922668);
  }

LABEL_8:
  sub_22C36A524();
  sub_22C371F08();

  sub_22C369A24();
  sub_22C377448();

  return v91(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22C885A7C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 408);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 416) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C885B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_22C4E7844();
  a33 = v35;
  a34 = v36;
  sub_22C375EC8();
  a32 = v34;
  v38 = *(v34 + 336);
  v37 = *(v34 + 344);
  v39 = *(v34 + 288);
  v40 = *(v34 + 296);
  v41 = *(v34 + 232);
  v42 = *(v34 + 152);
  sub_22C90405C();
  v43 = sub_22C36BA00();
  v38(v43);
  v44 = sub_22C9063CC();
  v45 = sub_22C90AACC();
  v46 = os_log_type_enabled(v44, v45);
  v47 = *(v34 + 392);
  if (v46)
  {
    v48 = *(v34 + 336);
    v170 = *(v34 + 344);
    v167 = *(v34 + 392);
    v50 = *(v34 + 280);
    v49 = *(v34 + 288);
    v52 = *(v34 + 232);
    v51 = *(v34 + 240);
    v161 = *(v34 + 136);
    v163 = *(v34 + 128);
    v165 = *(v34 + 152);
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C36FF40();
    v53 = swift_slowAlloc();
    a23 = v53;
    *v37 = 136642819;
    v54 = sub_22C372158();
    v48(v54);
    v55 = sub_22C90A1AC();
    v57 = v56;
    v169 = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v171 = *(v51 + 8);
    (v171)(v49, v52);
    v58 = sub_22C36F9F4(v55, v57, &a23);

    *(v37 + 4) = v58;
    sub_22C7E4DDC(&dword_22C366000, v59, v60, "Deferred value resolved to:\n%{sensitive}s");
    sub_22C36FF94(v53);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v167(v165, v163);
  }

  else
  {
    v61 = *(v34 + 288);
    v62 = *(v34 + 232);
    v63 = *(v34 + 240);
    v64 = *(v34 + 152);
    v65 = *(v34 + 128);
    v66 = *(v34 + 136);

    v67 = *(v63 + 8);
    v169 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v68 = sub_22C36BAFC();
    v171 = v69;
    v69(v68);
    v70 = sub_22C36ECB4();
    v47(v70);
  }

  v71 = *(v34 + 344);
  v156 = *(v34 + 352);
  v72 = *(v34 + 336);
  v166 = *(v34 + 400);
  v168 = *(v34 + 328);
  v74 = *(v34 + 312);
  v73 = *(v34 + 320);
  v75 = *(v34 + 296);
  v76 = *(v34 + 232);
  v77 = *(v34 + 216);
  v158 = v73;
  v159 = *(v34 + 176);
  v160 = *(v34 + 168);
  v162 = *(v34 + 208);
  v164 = (*(v34 + 520) + 32) & ~*(v34 + 520);
  v78 = *(v34 + 16);
  v79 = *(v34 + 24);
  v72(*(v34 + 280), v74, v76);
  v72(v77, v75, v76);
  v157 = v71;
  sub_22C36C640(v77, 0, 1, v76);
  sub_22C36C640(v77, 0, 1, v156);
  sub_22C6042A4();
  v80 = sub_22C36D264();
  (v171)(v80);
  v72(v74, v75, v76);

  sub_22C46BED4(1, v158);
  swift_unknownObjectRelease();
  sub_22C3D0EF0();
  v81 = *(*v79 + 16);
  sub_22C3D10CC(v81);
  (v171)(v75, v76);
  v166(v162, v160);
  v82 = *v79;
  *(v82 + 16) = v81 + 1;
  v72(v82 + v164 + v81 * v168, v74, v76);
  *v79 = v82;
  v83 = sub_22C37C014();
  v84(v83);
  v85 = v79(v79, v74);
  if (v85 == *MEMORY[0x277D72A38])
  {
    v86 = sub_22C88852C();
    v87(v86);
    *(v34 + 464) = *v79;
    swift_projectBox();
    v88 = sub_22C370AD0();
    v89(v88);
    v90 = sub_22C90914C();
    sub_22C37FB44(v90);
    v93 = v92 & v91;
    if (v93)
    {
LABEL_18:
      v114 = sub_22C36DC18(v93);
      v115(v114);
      v116 = sub_22C385860();
      v117(v116);
      sub_22C4E719C(v76, v171, &qword_27D9BADA0, &unk_22C90FA80);
      v118 = *(v171 + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v150 = *(v82 + 16);
        sub_22C36D270();
        sub_22C5903C0();
        v82 = v151;
      }

      sub_22C379BD0();
      if (v103)
      {
        sub_22C36A958(v119);
        sub_22C5903C0();
        v82 = v152;
      }

      v120 = sub_22C376AD4();
      (v81)(v120);
      *v76 = v82;
      v121 = swift_task_alloc();
      *(v34 + 512) = v121;
      *v121 = v34;
      sub_22C38C270();
LABEL_23:
      *(v108 + 8) = v109;
      sub_22C389344();
      sub_22C377448();

      return sub_22C884E84(v122, v123, v124, v125, v126, v127, v128, v129, a9, a10, a11, v156, v157, v158, v159, v160, v162, v164, v166, v168, v169, v171, a23, a24, a25, a26);
    }

    sub_22C388470();
    while (v113 != v112)
    {
      sub_22C88858C();
      if (v93)
      {
        goto LABEL_18;
      }
    }

    v131 = *(v34 + 464);
    v132 = sub_22C38AC38();
    v133(v132);
    v134 = *(v79 + 1);
    v135 = sub_22C36D264();
    v136(v135);

LABEL_28:

    goto LABEL_29;
  }

  if (v85 == *MEMORY[0x277D729E0])
  {
    v94 = sub_22C888510();
    v95(v94);
    *(v34 + 424) = *v79;
    swift_projectBox();
    v96 = sub_22C370AD0();
    v97(v96);
    v98 = sub_22C90905C();
    *(v34 + 432) = v98;
    v99 = *(v98 + 16);
    *(v34 + 440) = v99;
    if (v99)
    {
      v100 = sub_22C8884CC();
      v101(v100);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v153 = *(v82 + 16);
        sub_22C36D270();
        sub_22C5903C0();
        v82 = v154;
      }

      sub_22C379BD0();
      if (v103)
      {
        sub_22C36A958(v102);
        sub_22C5903C0();
        v82 = v155;
      }

      sub_22C888434();
      v105 = sub_22C8885A0(v104);
      v106(v105);
      *v76 = v82;
      v107 = swift_task_alloc();
      *(v34 + 456) = v107;
      *v107 = v34;
      sub_22C36C5C0();
      goto LABEL_23;
    }

    v137 = sub_22C888454();
    v138(v137);
    v139 = *(v76 + 8);
    v140 = sub_22C36BAFC();
    v141(v140);
    goto LABEL_28;
  }

  v110 = sub_22C888548();
  (v76)(v110);
  v111 = sub_22C36BBCC();
  (v76)(v111);
LABEL_29:
  sub_22C36A524();
  sub_22C371F08();

  sub_22C369A24();
  sub_22C377448();

  return v143(v142, v143, v144, v145, v146, v147, v148, v149, a9, a10, a11, v156, v157, v158, v159, v160, v162, v164, v166, v168, v169, v171, a23, a24, a25, a26);
}

uint64_t sub_22C886268()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 456);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C886350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C4E7844();
  sub_22C375EC8();
  v28 = *(v26 + 448) + 1;
  if (v28 == *(v26 + 440))
  {
    v29 = *(v26 + 432);

    v30 = sub_22C888454();
    v31(v30);
    v32 = v27[1];
    v33 = sub_22C36BAFC();
    v34(v33);

    sub_22C36A524();
    sub_22C888470();

    sub_22C369A24();
    sub_22C377448();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }

  else
  {
    v44 = **(v26 + 24);
    *(v26 + 448) = v28;
    v45 = *(v26 + 344);
    (*(v26 + 336))(*(v26 + 264), *(v26 + 432) + ((*(v26 + 520) + 32) & ~*(v26 + 520)) + *(v26 + 328) * v28, *(v26 + 232));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = *(v44 + 16);
      sub_22C36D270();
      sub_22C5903C0();
      v44 = v62;
    }

    v46 = *(v44 + 16);
    if (v46 >= *(v44 + 24) >> 1)
    {
      sub_22C5903C0();
      v44 = v63;
    }

    sub_22C888434();
    *(v44 + 16) = v46 + 1;
    (*(v49 + 32))(v44 + v47 + v48 * v46);
    *v27 = v44;
    v50 = swift_task_alloc();
    *(v26 + 456) = v50;
    *v50 = v26;
    v51 = sub_22C36C5C0();
    *(v51 + 8) = v52;
    sub_22C389344();
    sub_22C377448();

    return sub_22C884E84(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }
}

uint64_t sub_22C8865B0()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 512);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_22C886698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C4E7844();
  sub_22C375EC8();
  v29 = **(v26 + 24);
  if (*(v29 + 16))
  {
    v30 = **(v26 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C88772C(v29);
      v29 = v99;
    }

    v31 = *(v29 + 16);
    if (!v31)
    {
      __break(1u);
      return;
    }

    v28 = *(v26 + 496);
    v32 = *(v26 + 504);
    v33 = *(v26 + 256);
    v34 = *(v26 + 232);
    v27 = *(v26 + 64);
    a22 = *(v26 + 40);
    v35 = *(v26 + 24);
    v36 = v31 - 1;
    (v28)(*(v26 + 248), v29 + ((*(v26 + 520) + 32) & ~*(v26 + 520)) + *(v26 + 328) * (v31 - 1), v34);
    *(v29 + 16) = v36;
    v100 = v29;
    *v35 = v29;
    sub_22C36DD28(v27, &qword_27D9BADA0, &unk_22C90FA80);
    v37 = sub_22C36BAFC();
    v28(v37);
    (v28)(a22, v33, v34);
    v38 = 0;
  }

  else
  {
    v100 = **(v26 + 24);
    sub_22C36DD28(*(v26 + 64), &qword_27D9BADA0, &unk_22C90FA80);
    v38 = 1;
  }

  v39 = *(v26 + 40);
  sub_22C36C640(v39, v38, 1, *(v26 + 232));
  sub_22C36DD28(v39, &qword_27D9BB908, &qword_22C910960);
  v40 = *(v26 + 488);
  v41 = (*(v26 + 480) - 1) & *(v26 + 480);
  if (v41)
  {
    v42 = *(v26 + 472);
LABEL_13:
    *(v26 + 480) = v41;
    *(v26 + 488) = v40;
    v44 = *(v26 + 344);
    v45 = *(v26 + 232);
    v46 = *(v26 + 240);
    v47 = *(v26 + 64);
    v48 = *(v26 + 72);
    v50 = *(v26 + 48);
    v49 = *(v26 + 56);
    v51 = __clz(__rbit64(v41)) | (v40 << 6);
    v52 = *(v42 + 56);
    v53 = (*(v42 + 48) + 16 * v51);
    v55 = *v53;
    v54 = v53[1];
    v56 = *(v50 + 48);
    (*(v26 + 336))(v48 + v56, v52 + *(v26 + 328) * v51, v45);
    v57 = *(v46 + 32);
    v58 = *(v50 + 48);
    *v47 = v55;
    v47[1] = v54;
    v28 = v57;
    *(v26 + 496) = v57;
    *(v26 + 504) = (v46 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    (v57)(v47 + v58, v48 + v56, v45);
    v59 = sub_22C36ECB4();
    sub_22C4E719C(v59, v60, v61, v62);
    v63 = *(v49 + 8);

    v29 = v100;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_23:
      v96 = *(v29 + 16);
      sub_22C36D270();
      sub_22C5903C0();
      v29 = v97;
    }

    v64 = *(v29 + 16);
    if (v64 >= *(v29 + 24) >> 1)
    {
      sub_22C5903C0();
      v29 = v98;
    }

    v65 = *(v26 + 328);
    v66 = *(v26 + 520);
    v67 = *(v26 + 232);
    v68 = *(v26 + 56);
    v69 = *(v26 + 24);
    v70 = *(*(v26 + 48) + 48);
    *(v29 + 16) = v64 + 1;
    (v28)(v29 + ((v66 + 32) & ~v66) + v65 * v64, v68 + v70, v67);
    *v69 = v29;
    v71 = swift_task_alloc();
    *(v26 + 512) = v71;
    *v71 = v26;
    v72 = sub_22C38C270();
    *(v72 + 8) = v73;
    sub_22C389344();
    sub_22C377448();

    sub_22C884E84(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v100, a24, a25, a26);
  }

  else
  {
    while (1)
    {
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      v42 = *(v26 + 472);
      if (v43 >= (((1 << *(v26 + 524)) + 63) >> 6))
      {
        break;
      }

      v41 = *(v42 + 8 * v43 + 64);
      ++v40;
      if (v41)
      {
        v40 = v43;
        goto LABEL_13;
      }
    }

    v82 = *(v26 + 464);
    v83 = sub_22C38AC38();
    v84(v83);
    v85 = *(v27 + 8);
    v86 = sub_22C36D264();
    v87(v86);

    sub_22C36A524();
    sub_22C888470();

    sub_22C369A24();
    sub_22C377448();

    v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v100, a24, a25, a26);
  }
}

uint64_t sub_22C886ADC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  sub_22C4E7844();
  a33 = v35;
  a34 = v36;
  sub_22C375EC8();
  a32 = v34;
  v37 = v34[52];
  v39 = v34[47];
  v38 = v34[48];
  v40 = v34[26];
  v41 = v34[23];
  v42 = v34[21];
  v43 = v34[18];
  sub_22C90405C();
  v39(v41, v40, v42);
  v44 = v37;
  v45 = sub_22C9063CC();
  v46 = sub_22C90AAEC();

  v84 = v45;
  v47 = os_log_type_enabled(v45, v46);
  v48 = v34[49];
  v49 = v34[50];
  v82 = v48;
  v83 = v34[52];
  if (v47)
  {
    v50 = v34[47];
    a11 = v34[48];
    v80 = v34[29];
    v81 = v34[39];
    a16 = v34[26];
    a17 = v34[30];
    v52 = v34[23];
    v51 = v34[24];
    v54 = v34[21];
    v53 = v34[22];
    a13 = v34[17];
    a14 = v34[16];
    a15 = v34[18];
    LODWORD(a12) = v46;
    v55 = swift_slowAlloc();
    swift_slowAlloc();
    sub_22C36FF40();
    v56 = swift_slowAlloc();
    a23 = v56;
    *v55 = 136380931;
    v50(v51, v52, v54);
    sub_22C3726C4();
    v57 = sub_22C90A1AC();
    v59 = v58;
    v49(v52, v54);
    v60 = sub_22C36F9F4(v57, v59, &a23);

    *(v55 + 4) = v60;
    *(v55 + 12) = 2112;
    v61 = v83;
    v62 = _swift_stdlib_bridgeErrorToNSError();
    *(v55 + 14) = v62;
    *v43 = v62;
    _os_log_impl(&dword_22C366000, v84, a12, "Could not resolve deferred value:\n%{private}s\n%@", v55, 0x16u);
    sub_22C36DD28(v43, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C36FF94(v56);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v82(a15, a14);
    v49(a16, v54);
    (*(a17 + 8))(v81, v80);
  }

  else
  {
    v63 = v34[39];
    v64 = v34[30];
    v80 = v34[26];
    v81 = v34[29];
    v65 = v34[22];
    v66 = v34[23];
    v67 = v34[21];
    v68 = v34[17];
    v69 = v34[18];
    v70 = v34[16];

    v49(v66, v67);
    v82(v69, v70);
    v49(v80, v67);
    (*(v64 + 8))(v63, v81);
  }

  sub_22C36A524();
  sub_22C371F08();

  sub_22C369A24();
  sub_22C377448();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, v80, v81, v82, v83, v84, a23, a24, a25, a26);
}

uint64_t sub_22C886EB0(uint64_t a1)
{
  v2 = type metadata accessor for TypedValueSalientContent();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22C90919C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9093BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v14);
  v58 = &v49 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v17);
  v22 = *(a1 + 16);
  if (v22)
  {
    v51 = v21;
    v52 = v2;
    v53 = v10;
    v54 = v7;
    v55 = v5;
    v56 = v6;
    v23 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v24 = *(v12 + 72);
    v57 = v23;
    v25 = *(v12 + 16);
    v26 = &v49 - v20;
    v25(&v49 - v20, v23 + v24 * (v22 - 1), v11);
    v25(v19, v26, v11);
    v27 = *(v12 + 88);
    v28 = v27(v19, v11);
    v29 = *(v12 + 8);
    if (v28 == *MEMORY[0x277D72A40])
    {
      v50 = v26;
      v30 = v29;
      v29(v19, v11);
      if (v22 == 1)
      {
        v30(v50, v11);
      }

      else
      {
        v49 = v30;
        v34 = v58;
        v25(v58, v57 + v24 * (v22 - 2), v11);
        if (v27(v34, v11) == *MEMORY[0x277D72A38])
        {
          (*(v12 + 96))(v34, v11);
          v35 = *v34;
          v36 = swift_projectBox();
          v38 = v53;
          v37 = v54;
          v39 = v56;
          (*(v54 + 16))(v53, v36, v56);

          v40 = v55;
          sub_22C8F9454(v38, MEMORY[0x277D84F90], v55);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v41 = v40[1];

            v42 = sub_22C3A5908(&qword_27D9C0D58, &unk_22C92B1E0);
            v43 = v51;
            (*(v12 + 32))(v51, v40 + *(v42 + 48), v11);
            v44 = v50;
            v45 = sub_22C9093AC();
            v46 = v43;
            v47 = v49;
            v49(v46, v11);
            (*(v37 + 8))(v38, v39);
            v47(v44, v11);
            if (v45)
            {
              return 1;
            }
          }

          else
          {
            (*(v37 + 8))(v38, v39);
            v49(v50, v11);
            sub_22C8880B0(v40, type metadata accessor for TypedValueSalientContent);
          }
        }

        else
        {
          v48 = v49;
          v49(v50, v11);
          v48(v34, v11);
        }
      }
    }

    else
    {
      v31 = v26;
      v32 = *(v12 + 8);
      v29(v31, v11);
      v32(v19, v11);
    }
  }

  return 0;
}

uint64_t sub_22C88739C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22C8873E4()
{
  result = qword_27D9C0D88;
  if (!qword_27D9C0D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0D88);
  }

  return result;
}

uint64_t sub_22C88748C()
{
  sub_22C36FB38();
  v2 = v1;
  v4 = v3;
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_22C382AF4;

  return sub_22C884A20(v4, v2);
}

uint64_t sub_22C887550(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C8876C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22C90B1BC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_22C90AF9C();
}

uint64_t sub_22C887740(uint64_t a1, char a2, uint64_t *a3)
{
  v64 = a3;
  v5 = sub_22C9093BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v52 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v47 - v10;
  v62 = sub_22C9091CC();
  v12 = *(v62 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v62);
  v63 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9BB668, &unk_22C90FA20);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = v47 - v19;
  v58 = *(a1 + 16);
  if (!v58)
  {
  }

  v20 = 0;
  v57 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v21 = *(v17 + 48);
  v55 = v6;
  v56 = v21;
  v60 = (v6 + 32);
  v61 = (v12 + 32);
  v49 = v6 + 8;
  v50 = v6 + 16;
  v51 = v12;
  v47[1] = v6 + 40;
  v48 = (v12 + 8);
  v53 = v18;
  v54 = a1;
  while (v20 < *(a1 + 16))
  {
    v22 = v59;
    sub_22C4E719C(v57 + *(v18 + 72) * v20, v59, &qword_27D9BB668, &unk_22C90FA20);
    v23 = *v61;
    (*v61)(v63, v22, v62);
    v24 = *v60;
    v25 = v22 + v56;
    v26 = v5;
    (*v60)(v11, v25, v5);
    v27 = *v64;
    sub_22C628FF0();
    v30 = v29;
    v31 = *(v27 + 16);
    v32 = (v28 & 1) == 0;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_18;
    }

    v33 = v28;
    if (*(v27 + 24) >= v31 + v32)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9C0D98, &unk_22C92B250);
        sub_22C90B16C();
      }
    }

    else
    {
      v34 = v64;
      sub_22C88F874();
      v35 = *v34;
      sub_22C628FF0();
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_20;
      }

      v30 = v36;
    }

    v38 = *v64;
    if (v33)
    {
      v39 = v55;
      v40 = *(v55 + 72) * v30;
      v41 = v52;
      v5 = v26;
      (*(v55 + 16))(v52, v38[7] + v40, v26);
      (*(v39 + 8))(v11, v26);
      (*v48)(v63, v62);
      (*(v39 + 40))(v38[7] + v40, v41, v26);
    }

    else
    {
      v38[(v30 >> 6) + 8] |= 1 << v30;
      v23((v38[6] + *(v51 + 72) * v30), v63, v62);
      v42 = v38[7] + *(v55 + 72) * v30;
      v5 = v26;
      v24(v42, v11, v26);
      v43 = v38[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_19;
      }

      v38[2] = v45;
    }

    ++v20;
    a2 = 1;
    v18 = v53;
    a1 = v54;
    if (v58 == v20)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C887BFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_22C887CB4;

  return sub_22C87EC44(a2, v9, a4, a5);
}

uint64_t sub_22C887CB4()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_22C887DB0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  swift_task_alloc();
  sub_22C36CC90();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_22C46BC08;

  return sub_22C887BFC(a1, a2, v6, v7, v8);
}

uint64_t sub_22C887E7C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_22C888430;

  return sub_22C87F488(a2, a3, a4, a5, a6);
}

uint64_t sub_22C887F44(uint64_t a1)
{
  v4 = sub_22C9093BC();
  sub_22C369914(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  swift_task_alloc();
  sub_22C36CC90();
  *(v2 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_22C46BC08;

  return sub_22C887E7C(a1, v7, v8, v9, v10, v1 + v6);
}

unint64_t sub_22C88804C()
{
  result = qword_27D9C0DB0;
  if (!qword_27D9C0DB0)
  {
    sub_22C3AC1A0(&qword_27D9C0DA8, &unk_22C92B280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0DB0);
  }

  return result;
}

uint64_t sub_22C8880B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C888108(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C888188()
{
  v0 = sub_22C9093BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

_BYTE *storeEnumTagSinglePayload for DialogValues.DialogValuesError(_BYTE *result, int a2, int a3)
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

void sub_22C88829C()
{
  sub_22C90277C();
  if (v0 <= 0x3F)
  {
    sub_22C9093BC();
    if (v1 <= 0x3F)
    {
      sub_22C888324();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22C888324()
{
  if (!qword_27D9C0DE0)
  {
    sub_22C9093BC();
    v0 = sub_22C90A68C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9C0DE0);
    }
  }
}

unint64_t sub_22C888384()
{
  result = qword_27D9C0DE8;
  if (!qword_27D9C0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0DE8);
  }

  return result;
}

unint64_t sub_22C8883D8()
{
  result = qword_27D9C0DF0;
  if (!qword_27D9C0DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0DF0);
  }

  return result;
}

void sub_22C888434()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 520);
  v3 = *(v0 + 264);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = *(v0 + 24);
}

uint64_t sub_22C888454()
{
  v1 = v0[53];
  v2 = v0[39];
  v3 = v0[29];
  v4 = v0[30];
  result = v0[15];
  v6 = v0[13];
  v7 = *(v0[14] + 8);
  return result;
}

uint64_t sub_22C888470()
{
  v5 = v0[24];
  v6 = v0[23];
  v7 = v0[20];
  v8 = v0[19];
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[12];
  v12 = v0[9];
  v13 = v0[8];
  v3 = v0[5];
  *(v1 - 88) = v0[7];
  *(v1 - 80) = v3;
}

uint64_t sub_22C8884CC()
{
  v1 = (*(v0 + 520) + 32) & ~*(v0 + 520);
  *(v0 + 448) = 0;
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 232);
  return *(v0 + 264);
}

uint64_t sub_22C888510()
{
  v1 = v0[29];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = *(v0[30] + 96);
  return v0[34];
}

uint64_t sub_22C88852C()
{
  v1 = v0[29];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = *(v0[30] + 96);
  return v0[34];
}

uint64_t sub_22C888548()
{
  result = v0[39];
  v2 = v0[34];
  v3 = v0[29];
  v4 = *(v0[30] + 8);
  return result;
}

uint64_t sub_22C8885A0@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 16) = v4;
  result = v3 + v1 + a1 * v5;
  v7 = *(v2 + 32);
  return result;
}

uint64_t sub_22C8885B4()
{
  *v1 = v0;
  v1[1] = v4;
  v6 = *(v2 + 8);
  result = v3;
  v8 = *(v5 - 72);
  return result;
}

uint64_t sub_22C8885C8()
{

  return sub_22C90277C();
}

void sub_22C8885E8()
{
  v2 = *(v0 - 72);

  sub_22C8E6744();
}

void sub_22C888618()
{
  sub_22C370030();
  v70 = v0;
  v2 = v1;
  v65 = v3;
  v66 = v4;
  v5 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v68 = sub_22C90981C();
  v11 = sub_22C369824(v68);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v64 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA64();
  v60 = v16;
  v18 = v2 + 64;
  v17 = *(v2 + 64);
  v69 = MEMORY[0x277D84F98];
  v72 = MEMORY[0x277D84F98];
  v19 = *(v2 + 32);
  sub_22C36AD3C();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v58 = v25;
  v63 = (v25 + 32);
  v67 = v2;
  v26 = v10;

  v27 = 0;
  v61 = v10;
  v59 = v18;
  while (1)
  {
    if (!v22)
    {
      while (1)
      {
        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v28 >= v24)
        {

          goto LABEL_22;
        }

        v22 = *(v18 + 8 * v28);
        ++v27;
        if (v22)
        {
          v27 = v28;
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_7:
    v29 = (v27 << 10) | (16 * __clz(__rbit64(v22)));
    v30 = (*(v67 + 48) + v29);
    v32 = *v30;
    v31 = v30[1];
    v33 = (*(v67 + 56) + v29);
    v34 = v33[1];
    v71[0] = *v33;
    v71[1] = v34;

    v35 = v70;
    v65(v71);
    v70 = v35;
    if (v35)
    {
      break;
    }

    v22 &= v22 - 1;

    v36 = v68;
    if (sub_22C370B74(v26, 1, v68) == 1)
    {

      sub_22C36DD28(v26, &qword_27D9BC0C0, &unk_22C911FA0);
    }

    else
    {
      v62 = v32;
      v37 = *v63;
      v38 = v60;
      v39 = sub_22C37F760();
      v37(v39);
      (v37)(v64, v38, v36);
      v40 = v37;
      v41 = v69[2];
      if (v69[3] <= v41)
      {
        sub_22C892384(v41);
        sub_22C88F3F8();
      }

      v42 = *(v72 + 40);
      sub_22C90B62C();
      v43 = v62;
      sub_22C909FFC();
      v44 = sub_22C90B66C();
      v69 = v72;
      v45 = *(v72 + 32);
      sub_22C375C58(v44, v72 + 64);
      v18 = v59;
      if (v46)
      {
        sub_22C381420();
        v26 = v61;
        while (1)
        {
          sub_22C892510();
          if (v46)
          {
            if (v49)
            {
              break;
            }
          }

          sub_22C892374(v48);
          if (!v46)
          {
            sub_22C892200();
            goto LABEL_20;
          }
        }

LABEL_25:
        __break(1u);
        return;
      }

      sub_22C383974();
      v26 = v61;
LABEL_20:
      sub_22C892214(v47);
      *(v52 + v53) = v50 | v51;
      v54 = v69;
      v56 = (v69[6] + 16 * v55);
      *v56 = v43;
      v56[1] = v31;
      v40(v54[7] + *(v58 + 72) * v55, v64);
      sub_22C892158();
    }
  }

LABEL_22:
  sub_22C36FB20();
}

void sub_22C8889DC()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v89 = v4;
  v90 = v5;
  v6 = sub_22C3A5908(&qword_27D9BF430, &unk_22C9226F0);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = &v77 - v10;
  v91 = sub_22C9086BC();
  v12 = sub_22C369824(v91);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  v82 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  v80 = v19;
  v92 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
  v20 = sub_22C36985C(v92);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  v83 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  v94 = &v77 - v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA64();
  v88 = v27;
  v29 = v3 + 64;
  v28 = *(v3 + 64);
  v84 = MEMORY[0x277D84F98];
  v95 = MEMORY[0x277D84F98];
  v30 = *(v3 + 32);
  sub_22C36AD3C();
  v33 = v32 & v31;
  v35 = (v34 + 63) >> 6;
  v79 = v14;
  v81 = (v14 + 32);
  v93 = v3;

  v36 = 0;
  v87 = v35;
LABEL_2:
  v37 = v36;
  if (!v33)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v38 = v11;
    v39 = v1;
    v36 = v37;
LABEL_8:
    v40 = __clz(__rbit64(v33)) | (v36 << 6);
    v41 = *(v93 + 56);
    v42 = (*(v93 + 48) + 16 * v40);
    v44 = *v42;
    v43 = v42[1];
    v45 = sub_22C901FAC();
    v46 = sub_22C369824(v45);
    v48 = v41 + *(v47 + 72) * v40;
    v49 = v92;
    v51 = sub_22C3815A4(v46, v48, v50);
    v52(v51);
    *v41 = v44;
    v41[1] = v43;
    v53 = v94;
    sub_22C5E71BC(v41, v94, &qword_27D9BAA30, &unk_22C911F70);
    v54 = *(v49 + 48);

    v11 = v38;
    v89(v53 + v54);
    v1 = v39;
    if (v39)
    {
      break;
    }

    v33 &= v33 - 1;
    if (sub_22C370B74(v38, 1, v91) != 1)
    {
      v55 = *v81;
      v56 = v80;
      v57 = v91;
      (*v81)(v80, v38, v91);
      sub_22C5E71BC(v94, v83, &qword_27D9BAA30, &unk_22C911F70);
      v55(v82, v56, v57);
      v58 = v84[2];
      if (v84[3] <= v58)
      {
        sub_22C892384(v58);
        sub_22C88F3F8();
      }

      v60 = *v83;
      v59 = v83[1];
      v61 = *(v95 + 40);
      sub_22C90B62C();
      v78 = v59;
      sub_22C909FFC();
      v62 = sub_22C90B66C();
      v84 = v95;
      v63 = *(v95 + 32);
      sub_22C375C58(v62, v95 + 64);
      if (v64)
      {
        sub_22C381420();
        while (1)
        {
          sub_22C892510();
          if (v64)
          {
            if (v67)
            {
              goto LABEL_27;
            }
          }

          sub_22C892374(v66);
          if (!v64)
          {
            sub_22C892200();
            goto LABEL_22;
          }
        }
      }

      sub_22C383974();
LABEL_22:
      v68 = *(v92 + 48);
      sub_22C892214(v65);
      *(v71 + v72) = v70 | v69;
      v73 = v84;
      v75 = (v84[6] + 16 * v74);
      v76 = v78;
      *v75 = v60;
      v75[1] = v76;
      v55(v73[7] + *(v79 + 72) * v74, v82, v91);
      ++v73[2];
      (*(v85 + 8))(v83 + v68, v86);
      v35 = v87;
      goto LABEL_2;
    }

    sub_22C36DD28(v94, &qword_27D9BAA30, &unk_22C911F70);
    sub_22C36DD28(v38, &qword_27D9BF430, &unk_22C9226F0);
    v37 = v36;
    v35 = v87;
    if (!v33)
    {
LABEL_4:
      while (1)
      {
        v36 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v36 >= v35)
        {

          goto LABEL_24;
        }

        v33 = *(v29 + 8 * v36);
        ++v37;
        if (v33)
        {
          v38 = v11;
          v39 = v1;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }
  }

  sub_22C36DD28(v94, &qword_27D9BAA30, &unk_22C911F70);

LABEL_24:
  sub_22C36FB20();
}

void sub_22C888F24()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v72 = v4;
  v73 = v5;
  v6 = &qword_27D9BF450;
  v7 = &qword_22C922710;
  v74 = sub_22C3A5908(&qword_27D9BF450, &qword_22C922710);
  v8 = sub_22C36985C(v74);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v66 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v77 = &v64 - v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v71 = v15;
  v67 = MEMORY[0x277D84F98];
  v80 = MEMORY[0x277D84F98];
  v17 = v3 + 64;
  v16 = *(v3 + 64);
  v18 = *(v3 + 32);
  sub_22C36AD3C();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v75 = v3;

  v24 = 0;
  v70 = v23;
LABEL_2:
  v25 = v24;
  if (!v21)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v26 = v7;
    v27 = v6;
    v76 = v1;
    v24 = v25;
LABEL_8:
    v28 = __clz(__rbit64(v21)) | (v24 << 6);
    v29 = *(v75 + 56);
    v30 = (*(v75 + 48) + 16 * v28);
    v32 = *v30;
    v31 = v30[1];
    v33 = sub_22C9086BC();
    v34 = sub_22C369824(v33);
    v36 = v29 + *(v35 + 72) * v28;
    v37 = v74;
    v39 = sub_22C3815A4(v34, v36, v38);
    v40(v39);
    *v28 = v32;
    *(v28 + 8) = v31;
    v41 = v28;
    v42 = v77;
    v6 = v27;
    v43 = v27;
    v7 = v26;
    sub_22C5E71BC(v41, v77, v43, v26);
    v44 = *(v37 + 48);

    v45 = v42 + v44;
    v46 = v76;
    v72(&v78, v45);
    v1 = v46;
    if (v46)
    {
      break;
    }

    v21 &= v21 - 1;
    v47 = v79;
    if (v79)
    {
      v65 = v78;
      sub_22C5E71BC(v77, v66, v6, v26);
      v48 = v67[2];
      if (v67[3] <= v48)
      {
        v49 = sub_22C892384(v48);
        sub_22C88E938(v49);
      }

      v50 = *v66;
      v76 = v66[1];
      v51 = *(v80 + 40);
      sub_22C90B62C();
      v64 = v50;
      sub_22C909FFC();
      v52 = sub_22C90B66C();
      v67 = v80;
      v53 = *(v80 + 32);
      sub_22C375C58(v52, v80 + 64);
      if (v54)
      {
        sub_22C381420();
        while (1)
        {
          sub_22C892510();
          if (v54)
          {
            if (v58)
            {
              goto LABEL_27;
            }
          }

          sub_22C892374(v57);
          if (!v54)
          {
            sub_22C892200();
            goto LABEL_22;
          }
        }
      }

      sub_22C383974();
LABEL_22:
      v59 = *(v74 + 48);
      *(v55 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
      v60 = v67;
      v61 = (v67[6] + 16 * v56);
      v62 = v76;
      *v61 = v64;
      v61[1] = v62;
      v63 = (v60[7] + 16 * v56);
      *v63 = v65;
      v63[1] = v47;
      ++v60[2];
      (*(v68 + 8))(v66 + v59, v69);
      v23 = v70;
      goto LABEL_2;
    }

    sub_22C36DD28(v77, v6, v26);
    v25 = v24;
    v23 = v70;
    if (!v21)
    {
LABEL_4:
      while (1)
      {
        v24 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v24 >= v23)
        {

          goto LABEL_24;
        }

        v21 = *(v17 + 8 * v24);
        ++v25;
        if (v21)
        {
          v26 = v7;
          v27 = v6;
          v76 = v1;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }
  }

  sub_22C36DD28(v77, &qword_27D9BF450, &qword_22C922710);

LABEL_24:
  sub_22C36FB20();
}

void sub_22C8892F4()
{
  sub_22C370030();
  v66 = v0;
  v2 = v1;
  v61 = v3;
  v60 = v4;
  v63 = sub_22C3A5908(&qword_27D9C0E30, &qword_22C92B4C8);
  v5 = sub_22C36985C(v63);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  v64 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  v65 = &v59 - v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v59 = v12;
  v13 = MEMORY[0x277D84F98];
  v71 = MEMORY[0x277D84F98];
  v15 = v2 + 64;
  v14 = *(v2 + 64);
  v16 = *(v2 + 32);
  sub_22C36AD3C();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;
  v62 = v2;

  v22 = 0;
  while (1)
  {
    if (!v19)
    {
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v23 >= v21)
        {
          goto LABEL_22;
        }

        v19 = *(v15 + 8 * v23);
        ++v22;
        if (v19)
        {
          v22 = v23;
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_7:
    v24 = __clz(__rbit64(v19)) | (v22 << 6);
    v25 = *(v62 + 56);
    v26 = (*(v62 + 48) + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = type metadata accessor for DialogValue(0);
    sub_22C369914(v29);
    v31 = v25 + *(v30 + 72) * v24;
    v32 = v63;
    v33 = *(v63 + 48);
    sub_22C37B10C();
    v34 = v59;
    sub_22C891FEC(v36, v59 + v35);
    *v34 = v27;
    v34[1] = v28;
    v37 = v65;
    sub_22C5E71BC(v34, v65, &qword_27D9C0E30, &qword_22C92B4C8);
    v38 = *(v32 + 48);

    v39 = v37 + v38;
    v40 = v66;
    v60(&v67, v39);
    v66 = v40;
    if (v40)
    {
      break;
    }

    v19 &= v19 - 1;
    if (v68)
    {
      sub_22C456E34(&v67, v70);
      sub_22C5E71BC(v65, v64, &qword_27D9C0E30, &qword_22C92B4C8);
      sub_22C456E34(v70, v69);
      v41 = *(v13 + 16);
      if (*(v13 + 24) <= v41)
      {
        v42 = sub_22C892384(v41);
        sub_22C88F6B8(v42);
        v13 = v71;
      }

      v43 = *v64;
      v44 = v64[1];
      v45 = *(v13 + 40);
      sub_22C90B62C();
      sub_22C909FFC();
      v46 = sub_22C90B66C();
      v47 = *(v13 + 32);
      sub_22C375C58(v46, v13 + 64);
      if (v48)
      {
        sub_22C381420();
        while (1)
        {
          sub_22C892510();
          if (v48)
          {
            if (v51)
            {
              break;
            }
          }

          sub_22C892374(v50);
          if (!v48)
          {
            sub_22C892200();
            goto LABEL_20;
          }
        }

LABEL_24:
        __break(1u);
        return;
      }

      sub_22C383974();
LABEL_20:
      v52 = *(v63 + 48);
      sub_22C892214(v49);
      *(v55 + v56) = v54 | v53;
      v58 = (*(v13 + 48) + 16 * v57);
      *v58 = v43;
      v58[1] = v44;
      sub_22C456E34(v69, (*(v13 + 56) + 32 * v57));
      ++*(v13 + 16);
      sub_22C891D88(v64 + v52);
    }

    else
    {
      sub_22C36DD28(v65, &qword_27D9C0E30, &qword_22C92B4C8);
      sub_22C36DD28(&v67, &qword_27D9BD5D8, &qword_22C918510);
    }
  }

  sub_22C36DD28(v65, &qword_27D9C0E30, &qword_22C92B4C8);

LABEL_22:

  sub_22C36FB20();
}

uint64_t sub_22C88965C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_22C890040(a1, sub_22C890008, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_22C8896E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_task_alloc();
  sub_22C36CC90();
  *(v3 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_22C889794;

  return sub_22C88987C(a1, a2, a3, 0, 0);
}

uint64_t sub_22C889794()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_22C369970();
  *v3 = v2;

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C88987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22C9021BC();
  v6[8] = v7;
  sub_22C3699B8(v7);
  v6[9] = v8;
  v10 = *(v9 + 64);
  v6[10] = sub_22C3699D4();
  v11 = sub_22C90687C();
  v6[11] = v11;
  sub_22C3699B8(v11);
  v6[12] = v12;
  v14 = *(v13 + 64);
  v6[13] = sub_22C3699D4();
  v15 = sub_22C90077C();
  v6[14] = v15;
  sub_22C3699B8(v15);
  v6[15] = v16;
  v18 = *(v17 + 64);
  v6[16] = sub_22C3699D4();
  v19 = sub_22C907C5C();
  v6[17] = v19;
  sub_22C3699B8(v19);
  v6[18] = v20;
  v22 = *(v21 + 64);
  v6[19] = sub_22C3699D4();
  v23 = sub_22C9063DC();
  v6[20] = v23;
  sub_22C3699B8(v23);
  v6[21] = v24;
  v26 = *(v25 + 64);
  v6[22] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_22C889A60()
{
  v1 = v0[22];
  sub_22C90405C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22C366000, v2, v3, "DefaultFallbackDialogGenerator.generateFallback: Generating fallback for ResponseGenerationInput", v4, 2u);
    sub_22C372FB0();
  }

  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[3];

  (*(v6 + 8))(v5, v7);
  sub_22C90803C();
  sub_22C907FFC();
  sub_22C907FDC();
  sub_22C907FEC();
  swift_task_alloc();
  sub_22C36CC90();
  v0[23] = v13;
  *v13 = v14;
  v13[1] = sub_22C889BE4;
  v15 = v0[19];
  v16 = v0[16];
  v17 = v0[13];
  v18 = v0[10];
  v19 = v0[6];
  v20 = v0[7];
  v21 = v0[4];
  v22 = v0[5];
  v23 = v0[2];

  return sub_22C889F54(v23, v15, v21, v22, v19, v16, v17, v18);
}

uint64_t sub_22C889BE4()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v35 = *(*v1 + 152);
  sub_22C807C64();
  v5 = *(v4 + 144);
  v34 = *(v6 + 136);
  sub_22C807C64();
  v33 = *(v7 + 128);
  sub_22C807C64();
  v9 = *(v8 + 120);
  v32 = *(v10 + 112);
  sub_22C807C64();
  v31 = *(v11 + 104);
  sub_22C807C64();
  v13 = *(v12 + 96);
  v15 = v14[11];
  v16 = v14[10];
  v17 = v14[9];
  v18 = v14[8];
  v19 = *v1;
  sub_22C369970();
  *v20 = v19;
  v2[24] = v0;

  (*(v17 + 8))(v16, v18);
  (*(v13 + 8))(v31, v15);
  (*(v9 + 8))(v33, v32);
  (*(v5 + 8))(v35, v34);
  if (v0)
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v21, v22, v23);
  }

  else
  {
    v24 = v2[22];
    v25 = v2[19];
    v26 = v2[16];
    v27 = v2[13];
    v28 = v2[10];

    sub_22C369A24();

    return v29();
  }
}

uint64_t sub_22C889EBC()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[10];

  sub_22C369A24();
  v7 = v0[24];

  return v6();
}

uint64_t sub_22C889F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = sub_22C906A7C();
  v9[11] = v10;
  sub_22C3699B8(v10);
  v9[12] = v11;
  v13 = *(v12 + 64);
  v9[13] = sub_22C3699D4();
  v14 = sub_22C3A5908(&qword_27D9C0DF8, &qword_22C92B498);
  v9[14] = v14;
  sub_22C369914(v14);
  v16 = *(v15 + 64);
  v9[15] = sub_22C3699D4();
  v17 = sub_22C3A5908(&qword_27D9C0E00, &unk_22C92B4A0);
  sub_22C369914(v17);
  v19 = *(v18 + 64);
  v9[16] = sub_22C36D0D4();
  v9[17] = swift_task_alloc();
  v9[18] = swift_task_alloc();
  v20 = sub_22C9026BC();
  v9[19] = v20;
  sub_22C3699B8(v20);
  v9[20] = v21;
  v23 = *(v22 + 64);
  v9[21] = sub_22C36D0D4();
  v9[22] = swift_task_alloc();
  v9[23] = swift_task_alloc();
  v9[24] = swift_task_alloc();
  v24 = sub_22C907C5C();
  v9[25] = v24;
  sub_22C3699B8(v24);
  v9[26] = v25;
  v27 = *(v26 + 64);
  v9[27] = sub_22C36D0D4();
  v9[28] = swift_task_alloc();
  v28 = sub_22C9063DC();
  v9[29] = v28;
  sub_22C3699B8(v28);
  v9[30] = v29;
  v31 = *(v30 + 64);
  v9[31] = sub_22C36D0D4();
  v9[32] = swift_task_alloc();
  v9[33] = swift_task_alloc();
  v9[34] = swift_task_alloc();
  v32 = sub_22C907DEC();
  v9[35] = v32;
  sub_22C3699B8(v32);
  v9[36] = v33;
  v35 = *(v34 + 64);
  v9[37] = sub_22C36D0D4();
  v9[38] = swift_task_alloc();
  v36 = sub_22C906ECC();
  v9[39] = v36;
  sub_22C3699B8(v36);
  v9[40] = v37;
  v39 = *(v38 + 64);
  v9[41] = sub_22C36D0D4();
  v9[42] = swift_task_alloc();
  v40 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v40);
  v42 = *(v41 + 64);
  v9[43] = sub_22C3699D4();
  v43 = sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400);
  sub_22C369914(v43);
  v45 = *(v44 + 64);
  v9[44] = sub_22C3699D4();
  v46 = sub_22C90234C();
  v9[45] = v46;
  sub_22C3699B8(v46);
  v9[46] = v47;
  v49 = *(v48 + 64);
  v9[47] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v50, v51, v52);
}

uint64_t sub_22C88A310()
{
  v219 = v0;
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[38];
  v6 = v0[35];
  v7 = v0[36];
  v8 = v0[3];
  sub_22C907C0C();
  sub_22C906EBC();
  v9 = *(v4 + 8);
  (v9)(v2, v3);
  sub_22C907DDC();
  v205 = *(v7 + 8);
  (v205)(v5, v6);
  v10 = sub_22C9026AC();
  v11 = sub_22C370B74(v1, 1, v10);
  v13 = v0[44];
  v12 = v0[45];
  v14 = v0[43];
  if (v11 == 1)
  {
    sub_22C36DD28(v0[43], &qword_27D9BF328, &qword_22C9225C0);
    sub_22C36A748();
    sub_22C36C640(v15, v16, v17, v12);
  }

  else
  {
    v18 = v0[44];
    sub_22C90265C();
    (*(*(v10 - 8) + 8))(v14, v10);
    sub_22C36D0A8(v13, 1, v12);
    if (!v38)
    {
      v55 = v0[34];
      v56 = *(v0[46] + 32);
      v56(v0[47], v0[44], v0[45]);
      sub_22C90405C();
      v57 = sub_22C9063CC();
      v58 = sub_22C90AABC();
      if (os_log_type_enabled(v57, v58))
      {
        *swift_slowAlloc() = 0;
        sub_22C36BB14(&dword_22C366000, v60, v61, "DefaultFallbackDialogGenerator.generateFallback: generating fallback with provided fallback dialog.");
        sub_22C372FB0();
      }

      v62 = v0[47];
      v63 = v0[45];
      v64 = v0[34];
      v65 = v0[29];
      v66 = v0[30];
      v67 = v0[2];

      (*(v66 + 8))(v64, v65);
      v56(v67, v62, v63);
      sub_22C386078();
      v206 = v0[16];
      v210 = v0[15];
      v215 = v0[13];

      sub_22C369A24();
LABEL_19:
      sub_22C377448();

      __asm { BRAA            X1, X16 }
    }
  }

  v19 = v0[33];
  v20 = v0[28];
  v21 = v0[25];
  v22 = v0[26];
  v23 = v0[6];
  v24 = v0[3];
  sub_22C36DD28(v0[44], &qword_27D9BAB60, &unk_22C90D400);
  sub_22C90405C();
  v25 = v24;
  v26 = v23;
  v209 = *(v22 + 16);
  v209(v20, v25, v21);

  v27 = sub_22C9063CC();
  v28 = sub_22C90AABC();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[33];
  v31 = v0[30];
  v214 = v0[29];
  v32 = v0[28];
  buf = v9;
  if (v29)
  {
    v194 = v0[27];
    v198 = v0[33];
    v34 = v0[25];
    v33 = v0[26];
    v197 = v28;
    v36 = v0[5];
    v35 = v0[6];
    log = v27;
    v37 = swift_slowAlloc();
    v196 = swift_slowAlloc();
    v218[0] = v196;
    *v37 = 136315395;
    v38 = v35 == 0;
    if (v35)
    {
      v39 = v36;
    }

    else
    {
      v39 = 7104878;
    }

    if (v38)
    {
      v40 = 0xE300000000000000;
    }

    else
    {
      v40 = v26;
    }

    v41 = sub_22C36F9F4(v39, v40, v218);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2085;
    v209(v194, v32, v34);
    v42 = sub_22C90A1AC();
    v44 = v43;
    (*(v33 + 8))(v32, v34);
    v45 = sub_22C36F9F4(v42, v44, v218);

    *(v37 + 14) = v45;
    _os_log_impl(&dword_22C366000, log, v197, "Generating fallback:\ncustomCatId: %s\ntoolResult: %{sensitive}s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v196, -1, -1);
    MEMORY[0x2318B9880](v37, -1, -1);

    v46 = *(v31 + 8);
    v46(v198, v214);
  }

  else
  {
    v47 = v0[25];
    v48 = v0[26];

    (*(v48 + 8))(v32, v47);
    v46 = *(v31 + 8);
    v46(v30, v214);
  }

  v49 = v0[3];
  sub_22C8EBCC4();
  v50 = v0[7];
  v51 = v0[4];
  v52 = swift_task_alloc();
  *(v52 + 16) = v51;
  *(v52 + 24) = v50;
  sub_22C36D468();
  v54 = v53;

  v70 = v0[3];
  v71 = sub_22C8EBE00();
  v72 = v0[7];
  v73 = v0[4];
  sub_22C8EF95C(v71, v75, v74 & 1, v76);

  v77 = swift_task_alloc();
  *(v77 + 16) = v73;
  *(v77 + 24) = v72;
  sub_22C36D468();
  v78 = v0[6];

  v79 = sub_22C3806B8();
  v81 = sub_22C88965C(v79, v80);
  v0[48] = v81;
  if (v78)
  {
    v82 = v0[10];

    v83 = *sub_22C374168(v82, v82[3]);
    swift_task_alloc();
    sub_22C36CC90();
    v0[49] = v84;
    *v84 = v85;
    v84[1] = sub_22C88B478;
    v86 = v0[8];
    v87 = v0[9];
    v88 = v0[7];
    v89 = v0[5];
    v90 = v0[2];
    goto LABEL_50;
  }

  v91 = v0[41];
  v203 = v0[39];
  v92 = v0[37];
  v211 = v0[35];
  v216 = v81;
  v93 = v0[23];
  v94 = v0[24];
  v96 = v0[19];
  v95 = v0[20];
  v97 = v0[3];
  sub_22C907C0C();
  sub_22C906EBC();
  (buf)(v91, v203);
  sub_22C907DAC();
  (v205)(v92, v211);
  v98 = *(v95 + 16);
  v98(v93, v94, v96);
  v99 = (*(v95 + 88))(v93, v96);
  if (v99 != *MEMORY[0x277D1CBF0])
  {
    if (v99 == *MEMORY[0x277D1CB98])
    {
      v114 = v0[32];

      sub_22C90405C();
      v115 = sub_22C9063CC();
      v116 = sub_22C90AADC();
      if (os_log_type_enabled(v115, v116))
      {
        *swift_slowAlloc() = 0;
        sub_22C36BB14(&dword_22C366000, v117, v118, "No fallback for outcome snippetStream");
        sub_22C372FB0();
      }

      v119 = v0[32];
      v120 = v0[29];
      v121 = v0[30];
      v123 = v0[23];
      v122 = v0[24];
      v124 = v0[19];
      v125 = v0[20];

      v46(v119, v120);
      sub_22C88BDD0();
      swift_allocError();
      swift_willThrow();
      v126 = *(v125 + 8);
      v126(v122, v124);
      v126(v123, v124);
      goto LABEL_15;
    }

    if (v99 == *MEMORY[0x277D1CBA8])
    {
      goto LABEL_47;
    }

    if (v99 == *MEMORY[0x277D1CBB0])
    {
LABEL_43:

      v54 = "on#parameterNotAllowed";
LABEL_48:
      v113 = v216;
      goto LABEL_49;
    }

    if (v99 != *MEMORY[0x277D1CBB8] && v99 != *MEMORY[0x277D1CBD0])
    {
      if (v99 == *MEMORY[0x277D1CBD8])
      {
        goto LABEL_43;
      }

      if (v99 != *MEMORY[0x277D1CBC0] && v99 != *MEMORY[0x277D1CBE0] && v99 != *MEMORY[0x277D1CBA0])
      {
        if (v99 == *MEMORY[0x277D1CBC8])
        {
          goto LABEL_43;
        }

        if (v99 != *MEMORY[0x277D1CBE8])
        {
          v172 = v0[31];
          v173 = v0[24];
          v174 = v0[22];
          v175 = v0[19];

          sub_22C90405C();
          v98(v174, v173, v175);
          v176 = sub_22C9063CC();
          v202 = sub_22C90AADC();
          v208 = v176;
          v177 = os_log_type_enabled(v176, v202);
          v204 = v0[30];
          v178 = v0[29];
          v213 = v178;
          v217 = v0[31];
          v179 = v0[22];
          if (v177)
          {
            v180 = v0[20];
            v181 = v0[21];
            v182 = v0[19];
            bufa = swift_slowAlloc();
            v201 = swift_slowAlloc();
            v218[0] = v201;
            *bufa = 136315138;
            v98(v181, v179, v182);
            v183 = sub_22C90A1AC();
            v185 = v184;
            v186 = *(v180 + 8);
            v186(v179, v182);
            v187 = sub_22C36F9F4(v183, v185, v218);

            *(bufa + 4) = v187;
            _os_log_impl(&dword_22C366000, v208, v202, "No fallback for unknown outcome %s", bufa, 0xCu);
            sub_22C36FF94(v201);
            sub_22C372FB0();
            MEMORY[0x2318B9880](bufa, -1, -1);
          }

          else
          {
            v188 = v0[19];
            v189 = v0[20];

            v186 = *(v189 + 8);
            v190 = sub_22C36BA00();
            (v186)(v190);
          }

          v46(v217, v213);
          v191 = v0[23];
          v192 = v0[24];
          v193 = v0[19];
          sub_22C88BDD0();
          swift_allocError();
          swift_willThrow();
          v186(v192, v193);
          v186(v191, v193);
LABEL_15:
          sub_22C892284();

          sub_22C369A24();
          goto LABEL_19;
        }
      }
    }

LABEL_47:

    sub_22C8921A0();
    goto LABEL_48;
  }

  v101 = v0[17];
  v100 = v0[18];
  v103 = v0[14];
  v102 = v0[15];
  v104 = v0[11];
  v105 = v0[12];
  v106 = v0[3];
  sub_22C907C1C();
  (*(v105 + 104))(v101, *MEMORY[0x277D1DD48], v104);
  sub_22C36BECC();
  sub_22C36C640(v107, v108, v109, v104);
  v110 = *(v103 + 48);
  sub_22C88BE24(v100, v102);
  sub_22C88BE24(v101, v102 + v110);
  sub_22C36D0A8(v102, 1, v104);
  if (v38)
  {
    v111 = v0[18];
    v112 = v0[11];
    sub_22C36DD28(v0[17], &qword_27D9C0E00, &unk_22C92B4A0);
    sub_22C36DD28(v111, &qword_27D9C0E00, &unk_22C92B4A0);
    sub_22C36D0A8(v102 + v110, 1, v112);
    if (!v38)
    {
      goto LABEL_36;
    }

    sub_22C36DD28(v0[15], &qword_27D9C0E00, &unk_22C92B4A0);
    v113 = v216;
LABEL_41:

    sub_22C8921A0();
    goto LABEL_49;
  }

  v127 = v0[11];
  sub_22C88BE24(v0[15], v0[16]);
  v128 = sub_22C370B74(v102 + v110, 1, v127);
  v130 = v0[17];
  v129 = v0[18];
  v131 = v0[16];
  if (v128 != 1)
  {
    v212 = v0[15];
    v139 = v0[12];
    (*(v139 + 32))(v0[13], v102 + v110, v0[11]);
    sub_22C891E48(&qword_27D9C0E10, MEMORY[0x277D1DD50]);
    v207 = sub_22C90A0BC();
    v140 = *(v139 + 8);
    v141 = sub_22C36BA00();
    v140(v141);
    sub_22C36DD28(v130, &qword_27D9C0E00, &unk_22C92B4A0);
    sub_22C36DD28(v129, &qword_27D9C0E00, &unk_22C92B4A0);
    v142 = sub_22C37F760();
    v140(v142);
    sub_22C36DD28(v212, &qword_27D9C0E00, &unk_22C92B4A0);
    v113 = v216;
    if ((v207 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  v132 = v0[11];
  v133 = v0[12];
  sub_22C36DD28(v0[17], &qword_27D9C0E00, &unk_22C92B4A0);
  sub_22C36DD28(v129, &qword_27D9C0E00, &unk_22C92B4A0);
  v134 = *(v133 + 8);
  v135 = sub_22C37F760();
  v136(v135);
LABEL_36:
  sub_22C36DD28(v0[15], &qword_27D9C0DF8, &qword_22C92B498);
LABEL_37:
  v137 = v0[3];

  v138 = sub_22C8EBE00();
  v143 = v0[7];
  v144 = v0[4];
  sub_22C8EF95C(v138, v146, v145 & 1, v147);

  v148 = swift_task_alloc();
  *(v148 + 16) = v144;
  *(v148 + 24) = v143;
  sub_22C36D468();

  v149 = sub_22C3806B8();
  v113 = sub_22C88965C(v149, v150);
  sub_22C8921A0();
LABEL_49:
  v0[50] = v113;
  v0[51] = v54;
  v151 = v0[23];
  v152 = v0[19];
  v153 = v0[20];
  v154 = v0[10];
  v155 = *(v153 + 8);
  v0[52] = v155;
  v0[53] = (v153 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v155(v151, v152);
  v156 = *sub_22C374168(v154, v154[3]);
  swift_task_alloc();
  sub_22C36CC90();
  v0[54] = v157;
  *v157 = v158;
  v157[1] = sub_22C88B804;
  v159 = v0[8];
  v160 = v0[9];
  v161 = v0[7];
  v162 = v0[2];
LABEL_50:
  sub_22C377448();

  return sub_22C87CD94(v163, v164, v165, v166, v167, v168, v169);
}

void sub_22C88B478()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 384);
  v41 = *v0;

  sub_22C6343B0();
  v5 = *(v4 + 376);
  v6 = v1[44];
  v7 = v1[43];
  v8 = v1[42];
  v9 = v1[41];
  v10 = v1[38];
  v11 = v1[37];
  v12 = v1[34];
  v13 = v1[33];
  v29 = v1[32];
  sub_22C6343B0();
  v30 = *(v14 + 248);
  sub_22C6343B0();
  v31 = *(v15 + 224);
  sub_22C6343B0();
  v32 = *(v16 + 216);
  sub_22C6343B0();
  v33 = *(v17 + 192);
  sub_22C6343B0();
  v34 = *(v18 + 184);
  sub_22C6343B0();
  v35 = *(v19 + 176);
  sub_22C6343B0();
  v36 = *(v20 + 168);
  sub_22C6343B0();
  v37 = *(v21 + 144);
  sub_22C6343B0();
  v38 = *(v22 + 136);
  sub_22C6343B0();
  v39 = *(v23 + 128);
  sub_22C6343B0();
  v40 = *(v24 + 120);
  sub_22C6343B0();
  v26 = *(v25 + 104);

  sub_22C369A24();
  sub_22C377448();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C88B804()
{
  v2 = *(*v1 + 432);
  v3 = *(*v1 + 408);
  v4 = *(*v1 + 400);
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v7 + 440) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C88B94C()
{
  v1 = *(v0 + 424);
  (*(v0 + 416))(*(v0 + 192), *(v0 + 152));
  sub_22C386078();
  v4 = *(v0 + 128);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C88BA98()
{
  v1 = *(v0 + 424);
  (*(v0 + 416))(*(v0 + 192), *(v0 + 152));
  v4 = *(v0 + 440);
  sub_22C892284();

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C88BBD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_22C9006BC();
  a4(a1, v6, v7);
}

uint64_t sub_22C88BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C89209C;

  return sub_22C8896E0(a1, a2, a3);
}

uint64_t sub_22C88BD0C(uint64_t a1)
{
  v2 = sub_22C891F98();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C88BD48(uint64_t a1)
{
  v2 = sub_22C891F98();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22C88BDD0()
{
  result = qword_27D9C0E08;
  if (!qword_27D9C0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0E08);
  }

  return result;
}

uint64_t sub_22C88BE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C0E00, &unk_22C92B4A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C88BF00()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C369A48();
  v3 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(v2);
  v4 = sub_22C3699B8(v3);
  v62 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  v67 = v8;
  v9 = sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
  sub_22C369824(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  v66 = v59 - v15;
  v16 = *v0;
  v17 = *(*v0 + 24);
  sub_22C3868D4();
  sub_22C3A5908(&qword_27D9C0E88, &qword_22C92B550);
  sub_22C36BA00();
  v18 = sub_22C892394();
  if (!*(v16 + 16))
  {
LABEL_30:

LABEL_31:
    *v1 = v18;
    sub_22C36CC48();
    return;
  }

  v59[0] = v0;
  v19 = 0;
  v21 = (v16 + 64);
  v20 = *(v16 + 64);
  v22 = *(v16 + 32);
  sub_22C36AD3C();
  v25 = v24 & v23;
  v27 = (v26 + 63) >> 6;
  v59[1] = v11 + 16;
  v60 = v11;
  v64 = (v11 + 32);
  v61 = v16;
  if ((v24 & v23) == 0)
  {
LABEL_4:
    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v19 >= v27)
      {
        break;
      }

      ++v28;
      if (v21[v19])
      {
        sub_22C375A38();
        v25 = v30 & v29;
        goto LABEL_9;
      }
    }

    if ((v63 & 1) == 0)
    {

      v1 = v59[0];
      goto LABEL_31;
    }

    v53 = *(v16 + 32);
    sub_22C36ED64();
    v1 = v59[0];
    if (v54 != v55)
    {
      sub_22C386A8C();
      *v21 = v56;
    }

    else
    {
      v57 = sub_22C3856F8();
      sub_22C88FAFC(v57, v58, v21);
    }

    *(v16 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_22C70CF34();
LABEL_9:
    v31 = *(v16 + 48);
    v65 = *(v11 + 72);
    if (v63)
    {
      v32 = sub_22C8924E8();
      v33(v32);
      v34 = *(v16 + 56);
      v35 = *(v62 + 72);
      sub_22C380668();
      sub_22C892044(v36, v67);
    }

    else
    {
      v37 = sub_22C8924E8();
      v38(v37);
      v39 = *(v16 + 56);
      v40 = *(v62 + 72);
      sub_22C380668();
      sub_22C891FEC(v41, v67);
    }

    v42 = *(v18 + 40);
    sub_22C891DE4();
    sub_22C37DA2C();
    sub_22C909F7C();
    v43 = *(v18 + 32);
    sub_22C36C03C();
    v45 = *(v18 + 64 + 8 * v44);
    sub_22C37AC88();
    if (v46)
    {
      break;
    }

    sub_22C38AC50();
LABEL_22:
    sub_22C376B08();
    sub_22C892338(v50);
    (*v64)(*(v18 + 48) + v65 * v11, v66, v9);
    v51 = *(v18 + 56);
    sub_22C380668();
    sub_22C892044(v67, v52);
    ++*(v18 + 16);
    v11 = v60;
    v16 = v61;
    if (!v25)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v46)
    {
      if (v48)
      {
        break;
      }
    }

    if (v47 == v49)
    {
      v47 = 0;
    }

    sub_22C386D30(v47);
    if (!v46)
    {
      sub_22C37F630();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_22C88C24C()
{
  sub_22C36BA7C();
  v2 = sub_22C389358();
  v3 = type metadata accessor for PromptTreeIdentifier.Label(v2);
  v4 = sub_22C3699B8(v3);
  v51 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v8);
  v10 = v49 - v9;
  v11 = *v0;
  v12 = *(*v0 + 24);
  sub_22C3868D4();
  sub_22C3A5908(&qword_27D9C0E80, &unk_22C92B540);
  sub_22C37F760();
  v52 = v1;
  v13 = sub_22C38B2D4();
  if (!*(v11 + 16))
  {
LABEL_30:

    sub_22C387D08();
    sub_22C36CC48();
    return;
  }

  v49[1] = v0;
  v50 = v11;
  v14 = 0;
  v16 = v11 + 64;
  v15 = *(v11 + 64);
  v17 = *(v11 + 32);
  sub_22C36AD3C();
  v21 = (v20 + 63) >> 6;
  v22 = v13 + 64;
  if ((v19 & v18) == 0)
  {
LABEL_4:
    v25 = v14;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v14 >= v21)
      {
        break;
      }

      ++v25;
      if (*(v16 + 8 * v14))
      {
        sub_22C375A38();
        v54 = v27 & v26;
        goto LABEL_9;
      }
    }

    if (v52)
    {
      v43 = *(v11 + 32);
      sub_22C36ED64();
      if (v45 != v46)
      {
        sub_22C36EEAC(v44);
      }

      else
      {
        v47 = sub_22C3856F8();
        sub_22C88FAFC(v47, v48, v16);
      }

      *(v11 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    sub_22C36C050();
    v54 = v24;
LABEL_9:
    v28 = *(v11 + 48);
    v53 = *(v51 + 72);
    v29 = v53 * (v23 | (v14 << 6));
    if (v52)
    {
      sub_22C892044(v28 + v29, v10);
      v30 = sub_22C37DA90();
      sub_22C892044(v30, v31);
    }

    else
    {
      sub_22C891FEC(v28 + v29, v10);
      v32 = sub_22C37DA90();
      sub_22C891FEC(v32, v33);
    }

    sub_22C892544();
    sub_22C48640C();
    sub_22C90B66C();
    v34 = *(v13 + 32);
    sub_22C36C03C();
    v36 = *(v22 + 8 * v35);
    sub_22C37AC88();
    if (v37)
    {
      break;
    }

    sub_22C37F394();
LABEL_22:
    *(v22 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v42 = v53 * v38;
    sub_22C892044(v10, *(v13 + 48) + v53 * v38);
    sub_22C892044(v29, *(v13 + 56) + v42);
    sub_22C892158();
    v11 = v50;
    if (!v54)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v37)
    {
      if (v40)
      {
        break;
      }
    }

    if (v39 == v41)
    {
      v39 = 0;
    }

    sub_22C5E7554(v39);
    if (!v37)
    {
      sub_22C36D900();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_22C88C544()
{
  sub_22C36BA7C();
  sub_22C389358();
  v4 = sub_22C90963C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C377D60();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9C0E78, &qword_22C92B538);
  sub_22C375F14();
  sub_22C892394();
  sub_22C892438();
  if (!v10)
  {
LABEL_30:

    sub_22C387D08();
    sub_22C36CC48();
    return;
  }

  v11 = 0;
  v13 = v0 + 64;
  v12 = *(v0 + 64);
  v14 = *(v0 + 32);
  sub_22C36AD3C();
  sub_22C892168();
  if (!v3)
  {
LABEL_4:
    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v2)
      {
        break;
      }

      ++v15;
      if (*(v13 + 8 * v11))
      {
        sub_22C375A38();
        v3 = v17 & v16;
        goto LABEL_9;
      }
    }

    if (v40)
    {
      sub_22C37F8D8();
      if (v35 != v36)
      {
        sub_22C36EEAC(v34);
      }

      else
      {
        v37 = sub_22C3856F8();
        sub_22C88FAFC(v37, v38, v13);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    sub_22C70CF34();
LABEL_9:
    sub_22C37462C();
    if (v18)
    {
      v19 = sub_22C3863E8();
      v20(v19);
      sub_22C892244();
    }

    else
    {
      v21 = sub_22C3863E8();
      v22(v21);
      sub_22C387DA8();
    }

    v23 = *(v1 + 40);
    sub_22C891E48(&qword_27D9BC850, MEMORY[0x277D72E18]);
    sub_22C37DA2C();
    sub_22C892488();
    v24 = *(v1 + 32);
    sub_22C36C03C();
    v26 = *(v7 + 8 * v25);
    sub_22C37AC88();
    if (v27)
    {
      break;
    }

    sub_22C38AC50();
LABEL_22:
    sub_22C376B08();
    sub_22C892338(v31);
    v32 = sub_22C37C034();
    v33(v32);
    sub_22C892364();
    sub_22C892158();
    v0 = v39;
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v27)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    sub_22C386D30(v28);
    if (!v27)
    {
      sub_22C37F630();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_22C88C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v25;
  a20 = v26;
  v27 = sub_22C389358();
  v28 = type metadata accessor for PromptTreeIdentifier.Label(v27);
  v29 = sub_22C3699B8(v28);
  v69 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C377D60();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9C0E68, &unk_22C92B518);
  sub_22C375F14();
  sub_22C38B2D4();
  v33 = v21;
  sub_22C892438();
  if (!v34)
  {
LABEL_30:

    sub_22C387D08();
    sub_22C36CC48();
    return;
  }

  v68 = v21;
  v35 = 0;
  v37 = (v21 + 64);
  v36 = *(v21 + 64);
  v38 = *(v21 + 32);
  sub_22C36AD3C();
  v41 = v40 & v39;
  sub_22C5E7630();
  v42 = v23 + 64;
  if (!v41)
  {
LABEL_4:
    v44 = v35;
    while (1)
    {
      v35 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v35 >= v20)
      {
        break;
      }

      ++v44;
      if (v37[v35])
      {
        sub_22C375A38();
        v41 = v46 & v45;
        goto LABEL_9;
      }
    }

    if (v22)
    {
      v62 = *(v33 + 32);
      sub_22C36ED64();
      if (v63 != v64)
      {
        sub_22C386A8C();
        *v37 = v65;
      }

      else
      {
        v66 = sub_22C3856F8();
        sub_22C88FAFC(v66, v67, v37);
      }

      *(v33 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    sub_22C382D5C();
LABEL_9:
    v47 = v43 | (v35 << 6);
    v48 = *(v33 + 48) + *(v69 + 72) * v47;
    if (v22)
    {
      sub_22C892044(v48, v24);
      v49 = *(v33 + 56);
      v50 = v24;
      v51 = *(v49 + 8 * v47);
    }

    else
    {
      sub_22C891FEC(v48, v24);
      v52 = *(v33 + 56);
      v50 = v24;
      v51 = *(v52 + 8 * v47);
    }

    sub_22C892544();
    sub_22C48640C();
    sub_22C90B66C();
    v53 = *(v23 + 32);
    sub_22C36C03C();
    v55 = *(v42 + 8 * v54);
    sub_22C37AC88();
    if (v56)
    {
      break;
    }

    sub_22C38AC50();
LABEL_22:
    *(v42 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (&a19 + 104);
    v60 = *(v23 + 48);
    sub_22C892320();
    sub_22C892044(v50, v61);
    *(*(v23 + 56) + 8 * v70) = v51;
    v24 = v50;
    sub_22C892158();
    v33 = v68;
    if (!v41)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v56)
    {
      if (v58)
      {
        break;
      }
    }

    if (v57 == v59)
    {
      v57 = 0;
    }

    sub_22C386D30(v57);
    if (!v56)
    {
      sub_22C37F630();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_22C88CA14()
{
  sub_22C36BA7C();
  sub_22C389358();
  v4 = sub_22C902D0C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  v53 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9C0980, &unk_22C929500);
  sub_22C375F14();
  v49 = v2;
  v54 = sub_22C38B2D4();
  if (!*(v1 + 16))
  {
LABEL_27:

LABEL_28:
    *v0 = v54;
    sub_22C36CC48();
    return;
  }

  v46 = v0;
  v12 = 0;
  v14 = (v1 + 64);
  v13 = *(v1 + 64);
  v15 = *(v1 + 32);
  sub_22C36AD3C();
  v19 = (v18 + 63) >> 6;
  v47 = v1;
  v48 = v7;
  v50 = (v7 + 32);
  v20 = v54 + 64;
  if ((v17 & v16) == 0)
  {
LABEL_4:
    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v12 >= v19)
      {
        break;
      }

      ++v22;
      if (v14[v12])
      {
        sub_22C375A38();
        v52 = v24 & v23;
        goto LABEL_9;
      }
    }

    if ((v49 & 1) == 0)
    {

      v0 = v46;
      goto LABEL_28;
    }

    sub_22C37F8D8();
    v0 = v46;
    if (v41 != v42)
    {
      sub_22C386A8C();
      *v14 = v43;
    }

    else
    {
      v44 = sub_22C3856F8();
      sub_22C88FAFC(v44, v45, v14);
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    sub_22C36C050();
    v52 = v21;
LABEL_9:
    v25 = *(v1 + 48);
    v51 = *(v48 + 72);
    v26 = sub_22C892470();
    v2(v26);
    v27 = sub_22C89251C();
    v2(v27);
    v28 = *(v54 + 40);
    sub_22C891E48(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
    sub_22C37DA2C();
    sub_22C909F7C();
    v29 = *(v54 + 32);
    sub_22C36C03C();
    v31 = *(v20 + 8 * v30);
    sub_22C37AC88();
    if (v32)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C36D914();
    *(v20 + v36) |= v37;
    v2 = v54;
    v39 = v51 * v38;
    v40 = *v50;
    (*v50)(*(v54 + 48) + v51 * v38, v3, v4);
    v40(*(v54 + 56) + v39, v53, v4);
    sub_22C37B32C();
    v1 = v47;
    if (!v52)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v32)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    if (*(v20 + 8 * v33) != -1)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_22C88CD3C()
{
  sub_22C36BA7C();
  sub_22C389358();
  v4 = sub_22C90941C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C377D60();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9C0E98, &qword_22C92B560);
  sub_22C375F14();
  sub_22C892394();
  sub_22C892438();
  if (!v10)
  {
LABEL_30:

    sub_22C387D08();
    sub_22C36CC48();
    return;
  }

  v11 = 0;
  v13 = v0 + 64;
  v12 = *(v0 + 64);
  v14 = *(v0 + 32);
  sub_22C36AD3C();
  sub_22C892168();
  if (!v3)
  {
LABEL_4:
    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v2)
      {
        break;
      }

      ++v15;
      if (*(v13 + 8 * v11))
      {
        sub_22C375A38();
        v3 = v17 & v16;
        goto LABEL_9;
      }
    }

    if (v40)
    {
      sub_22C37F8D8();
      if (v35 != v36)
      {
        sub_22C36EEAC(v34);
      }

      else
      {
        v37 = sub_22C3856F8();
        sub_22C88FAFC(v37, v38, v13);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    sub_22C70CF34();
LABEL_9:
    sub_22C37462C();
    if (v18)
    {
      v19 = sub_22C3863E8();
      v20(v19);
      sub_22C892244();
    }

    else
    {
      v21 = sub_22C3863E8();
      v22(v21);
      sub_22C387DA8();
    }

    v23 = *(v1 + 40);
    sub_22C891E48(&qword_27D9BAAA0, MEMORY[0x277D72B00]);
    sub_22C37DA2C();
    sub_22C892488();
    v24 = *(v1 + 32);
    sub_22C36C03C();
    v26 = *(v7 + 8 * v25);
    sub_22C37AC88();
    if (v27)
    {
      break;
    }

    sub_22C38AC50();
LABEL_22:
    sub_22C376B08();
    sub_22C892338(v31);
    v32 = sub_22C37C034();
    v33(v32);
    sub_22C892364();
    sub_22C892158();
    v0 = v39;
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v27)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    sub_22C386D30(v28);
    if (!v27)
    {
      sub_22C37F630();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_22C88CF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_22C3806F4();
  sub_22C3751E0(v17);
  sub_22C3A5908(&qword_27D9C0EC8, &qword_22C92B688);
  sub_22C375F14();
  sub_22C892348();
  sub_22C5E76A0();
  if (!v18)
  {
LABEL_31:

    *v12 = v14;
    sub_22C5E78F0();
    return;
  }

  v19 = 0;
  sub_22C8922DC();
  v20 = *(v16 - 32);
  sub_22C36AD3C();
  sub_22C892130();
  if (!v15)
  {
LABEL_4:
    v21 = v19;
    while (1)
    {
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v19 >= v12)
      {
        break;
      }

      sub_22C8923F4();
      if (v22)
      {
        sub_22C375A38();
        v15 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_22C37F8D8();
      if (v39 != v40)
      {
        sub_22C37B880(v38);
      }

      else
      {
        v41 = sub_22C3856F8();
        sub_22C88FAFC(v41, v42, v16);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_31;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    sub_22C8923E8();
    v27 = *(v26 + v25);
    sub_22C8923DC(v25);
    if ((v28 & 1) == 0)
    {
    }

    sub_22C375D08();
    sub_22C90B64C();
    if (v27 != 3)
    {
      MEMORY[0x2318B8B10](v27);
    }

    sub_22C90B66C();
    v29 = *(v14 + 32);
    sub_22C36C03C();
    sub_22C8921F0(v30);
    if (v31)
    {
      break;
    }

    sub_22C37F394();
LABEL_23:
    sub_22C372F14(v32);
    *(v37 + v36) = v27;
    sub_22C379BE0(v36);
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v31)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    sub_22C375F24(v33);
    if (!v31)
    {
      sub_22C36D900();
      goto LABEL_23;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_22C88D114()
{
  sub_22C36BA7C();
  v3 = sub_22C389358();
  v4 = type metadata accessor for _PromptMapper._ToolPromptMap(v3);
  v5 = sub_22C3699B8(v4);
  v44 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v46 = v9;
  sub_22C370854();
  sub_22C3A5908(&qword_27D9C0ED0, &qword_22C92B690);
  sub_22C375F14();
  v45 = v1;
  sub_22C38B2D4();
  sub_22C892438();
  if (!v10)
  {
LABEL_30:

    sub_22C387D08();
    sub_22C36CC48();
    return;
  }

  v11 = 0;
  v13 = (v0 + 64);
  v12 = *(v0 + 64);
  v14 = *(v0 + 32);
  sub_22C36AD3C();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v20 = v2 + 64;
  if ((v16 & v15) == 0)
  {
LABEL_4:
    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v19)
      {
        break;
      }

      ++v22;
      if (v13[v11])
      {
        sub_22C375A38();
        v17 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (v45)
    {
      sub_22C37F8D8();
      if (v39 != v40)
      {
        sub_22C386A8C();
        *v13 = v41;
      }

      else
      {
        v42 = sub_22C3856F8();
        sub_22C88FAFC(v42, v43, v0 + 64);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_9:
    v25 = v21 | (v11 << 6);
    v26 = *(*(v0 + 48) + 8 * v25);
    v27 = *(v44 + 72);
    v28 = *(v0 + 56) + v27 * v25;
    if (v45)
    {
      sub_22C892044(v28, v46);
    }

    else
    {
      sub_22C891FEC(v28, v46);
    }

    sub_22C892544();
    sub_22C48A9B4(&v47, v26);
    sub_22C90B66C();
    v29 = *(v2 + 32);
    sub_22C36C03C();
    v31 = *(v20 + 8 * v30);
    sub_22C37AC88();
    if (v32)
    {
      break;
    }

    sub_22C37F394();
LABEL_22:
    sub_22C36D914();
    *(v20 + v36) |= v37;
    *(*(v2 + 48) + 8 * v38) = v26;
    sub_22C892044(v46, *(v2 + 56) + v27 * v38);
    sub_22C892158();
    if (!v17)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v32)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    sub_22C5E7554(v33);
    if (!v32)
    {
      sub_22C36D900();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_22C88D394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_22C3806F4();
  a33 = v39;
  a34 = v40;
  sub_22C3751E0(v41);
  sub_22C3A5908(&qword_27D9C0ED8, &qword_22C92B698);
  sub_22C375F14();
  sub_22C892348();
  sub_22C5E76A0();
  if (!v42)
  {
LABEL_29:

    *v34 = v36;
    sub_22C5E78F0();
    return;
  }

  v43 = 0;
  sub_22C8922DC();
  v44 = *(v38 - 32);
  sub_22C36AD3C();
  sub_22C892130();
  if (!v37)
  {
LABEL_4:
    v45 = v43;
    while (1)
    {
      v43 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v43 >= v34)
      {
        break;
      }

      sub_22C8923F4();
      if (v46)
      {
        sub_22C375A38();
        v37 = v48 & v47;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_22C37F8D8();
      if (v63 != v64)
      {
        sub_22C37B880(v62);
      }

      else
      {
        v65 = sub_22C3856F8();
        sub_22C88FAFC(v65, v66, v38);
      }

      *(v35 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    sub_22C8923E8();
    v51 = *(v50 + 8 * v49);
    sub_22C8923DC(v49);
    if ((v52 & 1) == 0)
    {
    }

    sub_22C375D08();
    sub_22C48A9B4(&a14, v51);
    sub_22C90B66C();
    v53 = *(v36 + 32);
    sub_22C36C03C();
    sub_22C8921F0(v54);
    if (v55)
    {
      break;
    }

    sub_22C37F394();
LABEL_21:
    sub_22C372F14(v56);
    *(v61 + 8 * v60) = v51;
    sub_22C379BE0(v60);
    if (!v37)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v55)
    {
      if (v58)
      {
        break;
      }
    }

    if (v57 == v59)
    {
      v57 = 0;
    }

    sub_22C375F24(v57);
    if (!v55)
    {
      sub_22C36D900();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C88D50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_22C3806F4();
  sub_22C3751E0(v16);
  sub_22C3A5908(&qword_27D9C0EE0, &qword_22C92B6A0);
  sub_22C375F14();
  sub_22C892348();
  sub_22C5E76A0();
  if (!v17)
  {
LABEL_31:

LABEL_32:
    *v12 = v14;
    sub_22C5E78F0();
    return;
  }

  v49 = v12;
  v18 = 0;
  sub_22C8922DC();
  v19 = *(v15 - 32);
  sub_22C36AD3C();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v25 = v14 + 64;
  if ((v21 & v20) == 0)
  {
LABEL_4:
    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v18 >= v24)
      {
        break;
      }

      ++v27;
      if (*(v15 + 8 * v18))
      {
        sub_22C375A38();
        v22 = v29 & v28;
        goto LABEL_9;
      }
    }

    if ((a12 & 1) == 0)
    {

      v12 = v49;
      goto LABEL_32;
    }

    sub_22C37F8D8();
    v12 = v49;
    if (v45 != v46)
    {
      sub_22C37B880(v44);
    }

    else
    {
      v47 = sub_22C3856F8();
      sub_22C88FAFC(v47, v48, v15);
    }

    v13[2] = 0;
    goto LABEL_31;
  }

  while (1)
  {
    sub_22C382D5C();
LABEL_9:
    v30 = v26 | (v18 << 6);
    v31 = v13[7];
    v32 = *(v13[6] + v30);
    sub_22C8923DC(v30);
    if ((v33 & 1) == 0)
    {
    }

    sub_22C375D08();
    sub_22C90B64C();
    if (!v32)
    {
      MEMORY[0x2318B8B10](0);
    }

    sub_22C90B66C();
    v34 = *(v14 + 32);
    sub_22C36C03C();
    v36 = *(v25 + 8 * v35);
    sub_22C37AC88();
    if (v37)
    {
      break;
    }

    sub_22C37F394();
LABEL_23:
    sub_22C36D914();
    *(v25 + v41) |= v42;
    *(*(v14 + 48) + v43) = v32;
    sub_22C379BE0(v43);
    if (!v22)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v37)
    {
      if (v39)
      {
        break;
      }
    }

    if (v38 == v40)
    {
      v38 = 0;
    }

    sub_22C5E7554(v38);
    if (!v37)
    {
      sub_22C36D900();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_22C88D6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_22C3806F4();
  sub_22C3751E0(v17);
  sub_22C3A5908(&qword_27D9C0EE8, &qword_22C92B6A8);
  sub_22C375F14();
  sub_22C892348();
  sub_22C5E76A0();
  if (!v18)
  {
LABEL_29:

    *v12 = v14;
    sub_22C5E78F0();
    return;
  }

  v19 = 0;
  sub_22C8922DC();
  v20 = *(v16 - 32);
  sub_22C36AD3C();
  sub_22C892130();
  if (!v15)
  {
LABEL_4:
    v21 = v19;
    while (1)
    {
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v19 >= v12)
      {
        break;
      }

      sub_22C8923F4();
      if (v22)
      {
        sub_22C375A38();
        v15 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_22C37F8D8();
      if (v39 != v40)
      {
        sub_22C37B880(v38);
      }

      else
      {
        v41 = sub_22C3856F8();
        sub_22C88FAFC(v41, v42, v16);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    sub_22C8923E8();
    v27 = *(v26 + v25);
    sub_22C8923DC(v25);
    if ((v28 & 1) == 0)
    {
    }

    sub_22C375D08();
    MEMORY[0x2318B8B10](v27);
    sub_22C90B66C();
    v29 = *(v14 + 32);
    sub_22C36C03C();
    sub_22C8921F0(v30);
    if (v31)
    {
      break;
    }

    sub_22C37F394();
LABEL_21:
    sub_22C372F14(v32);
    *(v37 + v36) = v27;
    sub_22C379BE0(v36);
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v31)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    sub_22C375F24(v33);
    if (!v31)
    {
      sub_22C36D900();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C88D830(uint64_t a1)
{
  sub_22C3751E0(a1);
  sub_22C3A5908(&qword_27D9C0E40, &qword_22C92B4E0);
  sub_22C375F14();
  sub_22C38B2D4();
  sub_22C5E76A0();
  if (!v6)
  {
LABEL_29:

    *v1 = v3;
    return;
  }

  v7 = 0;
  sub_22C8922DC();
  v8 = *(v5 - 32);
  sub_22C36AD3C();
  sub_22C892130();
  if (!v4)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v1)
      {
        break;
      }

      sub_22C8923F4();
      if (v10)
      {
        sub_22C375A38();
        v4 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v3)
    {
      sub_22C37F8D8();
      if (v31 != v32)
      {
        sub_22C37B880(v30);
      }

      else
      {
        v33 = sub_22C3856F8();
        sub_22C88FAFC(v33, v34, v5);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    sub_22C8923E8();
    v15 = (v14 + 16 * v13);
    v16 = *v15;
    v17 = v15[1];
    v35 = *(v18 + 16 * v13);
    if ((v3 & 1) == 0)
    {
    }

    v19 = *(v3 + 40);
    sub_22C90B62C();
    sub_22C909FFC();
    sub_22C90B66C();
    v20 = *(v3 + 32);
    sub_22C36C03C();
    sub_22C8921F0(v21);
    if (v22)
    {
      break;
    }

    sub_22C37F394();
LABEL_21:
    sub_22C372F14(v23);
    v29 = (v28 + 16 * v27);
    *v29 = v16;
    v29[1] = v17;
    *(*(v3 + 56) + 16 * v27) = v35;
    sub_22C37B32C();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v22)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    sub_22C375F24(v24);
    if (!v22)
    {
      sub_22C36D900();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C88DA7C()
{
  sub_22C36BA7C();
  v61 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v9 = sub_22C369A48();
  v11 = v10(v9);
  sub_22C3699B8(v11);
  v58 = v12;
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  v60 = &v55 - v16;
  v17 = *v0;
  v18 = *(*v0 + 24);
  sub_22C3868D4();
  sub_22C3A5908(v5, v3);
  v59 = v8;
  v19 = sub_22C38B2D4();
  if (!*(v17 + 16))
  {
LABEL_30:

LABEL_31:
    *v6 = v19;
    sub_22C36CC48();
    return;
  }

  v56 = v0;
  v57 = v17;
  v20 = 0;
  v22 = v17 + 64;
  v21 = *(v17 + 64);
  v23 = *(v17 + 32);
  sub_22C36AD3C();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v29 = v19 + 64;
  if ((v25 & v24) == 0)
  {
LABEL_4:
    v31 = v20;
    while (1)
    {
      v20 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v20 >= v28)
      {
        break;
      }

      ++v31;
      if (*(v22 + 8 * v20))
      {
        sub_22C375A38();
        v26 = v33 & v32;
        goto LABEL_9;
      }
    }

    if ((v59 & 1) == 0)
    {

      v6 = v56;
      goto LABEL_31;
    }

    v49 = *(v17 + 32);
    sub_22C36ED64();
    v6 = v56;
    if (v51 != v52)
    {
      sub_22C36EEAC(v50);
    }

    else
    {
      v53 = sub_22C3856F8();
      sub_22C88FAFC(v53, v54, v22);
    }

    *(v17 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_22C70CF34();
LABEL_9:
    sub_22C380754(v30);
    v34 = *(v58 + 72);
    v37 = v36 + v34 * v35;
    if (v59)
    {
      sub_22C892044(v37, v60);
    }

    else
    {
      sub_22C891FEC(v37, v60);
    }

    sub_22C892544();
    sub_22C909FFC();
    sub_22C90B66C();
    v38 = *(v19 + 32);
    sub_22C36C03C();
    v40 = *(v29 + 8 * v39);
    sub_22C37AC88();
    if (v41)
    {
      break;
    }

    sub_22C37F394();
LABEL_22:
    sub_22C36D914();
    *(v29 + v45) |= v46;
    v48 = (*(v19 + 48) + 16 * v47);
    *v48 = v17;
    v48[1] = v3;
    sub_22C892044(v60, *(v19 + 56) + v34 * v47);
    sub_22C892158();
    v17 = v57;
    if (!v26)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v41)
    {
      if (v43)
      {
        break;
      }
    }

    if (v42 == v44)
    {
      v42 = 0;
    }

    if (*(v29 + 8 * v42) != -1)
    {
      sub_22C36D900();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_22C88DCEC()
{
  sub_22C36BA7C();
  sub_22C389358();
  v46 = sub_22C90832C();
  v5 = sub_22C369824(v46);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C388488(v8);
  v9 = sub_22C901FAC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C8920BC(v15, v44);
  sub_22C3A5908(&qword_27D9C0E48, &qword_22C92B4E8);
  sub_22C375F14();
  sub_22C383E94();
  sub_22C892444();
  if (v16)
  {
    sub_22C373C4C();
    while (v3)
    {
      sub_22C36D6B8();
LABEL_10:
      sub_22C377780();
      if (v21)
      {
        v22 = sub_22C38190C();
        v23(v22);
        v24 = sub_22C38768C();
      }

      else
      {
        v26 = sub_22C38190C();
        v27(v26);
        v24 = sub_22C8920E8();
      }

      v25(v24);
      v28 = *(v2 + 40);
      sub_22C892108();
      sub_22C891E48(&qword_2814357B0, v29);
      v30 = sub_22C38C53C();
      sub_22C378950(v30, *(v2 + 32));
      if (v31)
      {
        sub_22C370840();
        while (1)
        {
          sub_22C36D130();
          if (v31)
          {
            if (v33)
            {
              break;
            }
          }

          if (v32 == v34)
          {
            v32 = 0;
          }

          sub_22C892190(v32);
          if (!v31)
          {
            sub_22C37F630();
            goto LABEL_23;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      sub_22C38AC50();
LABEL_23:
      v35 = sub_22C36A544();
      v36(v35);
      v37 = sub_22C383524();
      v38(v37);
      sub_22C892144();
    }

    v17 = v4;
    while (1)
    {
      v4 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= v1)
      {
        break;
      }

      sub_22C36CC00();
      if (v18)
      {
        sub_22C375A38();
        v3 = v20 & v19;
        goto LABEL_10;
      }
    }

    if (v45)
    {
      sub_22C37F8D8();
      if (v40 != v41)
      {
        sub_22C37B880(v39);
      }

      else
      {
        v42 = sub_22C3856F8();
        sub_22C88FAFC(v42, v43, v12);
      }

      *(v0 + 16) = 0;
    }
  }

  sub_22C3864C8();
  sub_22C36CC48();
}

void sub_22C88DF64()
{
  sub_22C36BA7C();
  sub_22C389358();
  v46 = sub_22C9070DC();
  v5 = sub_22C369824(v46);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C388488(v8);
  v9 = sub_22C901FAC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C8920BC(v15, v44);
  sub_22C3A5908(&qword_27D9C0E50, &qword_22C92B4F0);
  sub_22C375F14();
  sub_22C383E94();
  sub_22C892444();
  if (v16)
  {
    sub_22C373C4C();
    while (v3)
    {
      sub_22C36D6B8();
LABEL_10:
      sub_22C377780();
      if (v21)
      {
        v22 = sub_22C38190C();
        v23(v22);
        v24 = sub_22C38768C();
      }

      else
      {
        v26 = sub_22C38190C();
        v27(v26);
        v24 = sub_22C8920E8();
      }

      v25(v24);
      v28 = *(v2 + 40);
      sub_22C892108();
      sub_22C891E48(&qword_2814357B0, v29);
      v30 = sub_22C38C53C();
      sub_22C378950(v30, *(v2 + 32));
      if (v31)
      {
        sub_22C370840();
        while (1)
        {
          sub_22C36D130();
          if (v31)
          {
            if (v33)
            {
              break;
            }
          }

          if (v32 == v34)
          {
            v32 = 0;
          }

          sub_22C892190(v32);
          if (!v31)
          {
            sub_22C37F630();
            goto LABEL_23;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      sub_22C38AC50();
LABEL_23:
      v35 = sub_22C36A544();
      v36(v35);
      v37 = sub_22C383524();
      v38(v37);
      sub_22C892144();
    }

    v17 = v4;
    while (1)
    {
      v4 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= v1)
      {
        break;
      }

      sub_22C36CC00();
      if (v18)
      {
        sub_22C375A38();
        v3 = v20 & v19;
        goto LABEL_10;
      }
    }

    if (v45)
    {
      sub_22C37F8D8();
      if (v40 != v41)
      {
        sub_22C37B880(v39);
      }

      else
      {
        v42 = sub_22C3856F8();
        sub_22C88FAFC(v42, v43, v12);
      }

      *(v0 + 16) = 0;
    }
  }

  sub_22C3864C8();
  sub_22C36CC48();
}

void sub_22C88E1DC()
{
  sub_22C36BA7C();
  sub_22C389358();
  v4 = sub_22C901FAC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C377D60();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9C0E58, &qword_22C92B4F8);
  sub_22C375F14();
  sub_22C892394();
  sub_22C892438();
  if (!v10)
  {
LABEL_30:

    sub_22C387D08();
    sub_22C36CC48();
    return;
  }

  v11 = 0;
  v13 = v0 + 64;
  v12 = *(v0 + 64);
  v14 = *(v0 + 32);
  sub_22C36AD3C();
  sub_22C892168();
  if (!v3)
  {
LABEL_4:
    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v2)
      {
        break;
      }

      ++v15;
      if (*(v13 + 8 * v11))
      {
        sub_22C375A38();
        v3 = v17 & v16;
        goto LABEL_9;
      }
    }

    if (v41)
    {
      sub_22C37F8D8();
      if (v36 != v37)
      {
        sub_22C36EEAC(v35);
      }

      else
      {
        v38 = sub_22C3856F8();
        sub_22C88FAFC(v38, v39, v13);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    sub_22C70CF34();
LABEL_9:
    sub_22C37462C();
    if (v18)
    {
      v19 = sub_22C3863E8();
      v20(v19);
      sub_22C892244();
    }

    else
    {
      v21 = sub_22C3863E8();
      v22(v21);
      sub_22C387DA8();
    }

    v23 = *(v1 + 40);
    sub_22C892108();
    sub_22C891E48(&qword_2814357B0, v24);
    sub_22C37DA2C();
    sub_22C892488();
    v25 = *(v1 + 32);
    sub_22C36C03C();
    v27 = *(v7 + 8 * v26);
    sub_22C37AC88();
    if (v28)
    {
      break;
    }

    sub_22C38AC50();
LABEL_22:
    sub_22C376B08();
    sub_22C892338(v32);
    v33 = sub_22C37C034();
    v34(v33);
    sub_22C892364();
    sub_22C892158();
    v0 = v40;
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v28)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    sub_22C386D30(v29);
    if (!v28)
    {
      sub_22C37F630();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_22C88E450()
{
  sub_22C36BA7C();
  sub_22C389358();
  v45 = sub_22C902D0C();
  v5 = sub_22C369824(v45);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C388488(v8);
  v9 = sub_22C902C9C();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C8920BC(v15, v43);
  sub_22C3A5908(&qword_27D9BC1F8, &qword_22C9126D0);
  sub_22C375F14();
  sub_22C383E94();
  sub_22C892444();
  if (v16)
  {
    sub_22C373C4C();
    while (v3)
    {
      sub_22C36D6B8();
LABEL_10:
      sub_22C377780();
      if (v21)
      {
        v22 = sub_22C38190C();
        v23(v22);
        v24 = sub_22C38768C();
      }

      else
      {
        v26 = sub_22C38190C();
        v27(v26);
        v24 = sub_22C8920E8();
      }

      v25(v24);
      sub_22C38B564();
      sub_22C891E48(&qword_27D9BC1A8, v28);
      v29 = sub_22C38C53C();
      sub_22C378950(v29, *(v2 + 32));
      if (v30)
      {
        sub_22C370840();
        while (1)
        {
          sub_22C36D130();
          if (v30)
          {
            if (v32)
            {
              break;
            }
          }

          if (v31 == v33)
          {
            v31 = 0;
          }

          sub_22C892190(v31);
          if (!v30)
          {
            sub_22C37F630();
            goto LABEL_23;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      sub_22C38AC50();
LABEL_23:
      v34 = sub_22C36A544();
      v35(v34);
      v36 = sub_22C383524();
      v37(v36);
      sub_22C892144();
    }

    v17 = v4;
    while (1)
    {
      v4 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= v1)
      {
        break;
      }

      sub_22C36CC00();
      if (v18)
      {
        sub_22C375A38();
        v3 = v20 & v19;
        goto LABEL_10;
      }
    }

    if (v44)
    {
      sub_22C37F8D8();
      if (v39 != v40)
      {
        sub_22C37B880(v38);
      }

      else
      {
        v41 = sub_22C3856F8();
        sub_22C88FAFC(v41, v42, v12);
      }

      *(v0 + 16) = 0;
    }
  }

  sub_22C3864C8();
  sub_22C36CC48();
}

void sub_22C88E6C4()
{
  sub_22C36BA7C();
  sub_22C389358();
  v45 = sub_22C902C4C();
  v5 = sub_22C369824(v45);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C388488(v8);
  v9 = sub_22C902C9C();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C8920BC(v15, v43);
  sub_22C3A5908(&qword_27D9BC240, &unk_22C9126E0);
  sub_22C375F14();
  sub_22C383E94();
  sub_22C892444();
  if (v16)
  {
    sub_22C373C4C();
    while (v3)
    {
      sub_22C36D6B8();
LABEL_10:
      sub_22C377780();
      if (v21)
      {
        v22 = sub_22C38190C();
        v23(v22);
        v24 = sub_22C38768C();
      }

      else
      {
        v26 = sub_22C38190C();
        v27(v26);
        v24 = sub_22C8920E8();
      }

      v25(v24);
      sub_22C38B564();
      sub_22C891E48(&qword_27D9BC1A8, v28);
      v29 = sub_22C38C53C();
      sub_22C378950(v29, *(v2 + 32));
      if (v30)
      {
        sub_22C370840();
        while (1)
        {
          sub_22C36D130();
          if (v30)
          {
            if (v32)
            {
              break;
            }
          }

          if (v31 == v33)
          {
            v31 = 0;
          }

          sub_22C892190(v31);
          if (!v30)
          {
            sub_22C37F630();
            goto LABEL_23;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      sub_22C38AC50();
LABEL_23:
      v34 = sub_22C36A544();
      v35(v34);
      v36 = sub_22C383524();
      v37(v36);
      sub_22C892144();
    }

    v17 = v4;
    while (1)
    {
      v4 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= v1)
      {
        break;
      }

      sub_22C36CC00();
      if (v18)
      {
        sub_22C375A38();
        v3 = v20 & v19;
        goto LABEL_10;
      }
    }

    if (v44)
    {
      sub_22C37F8D8();
      if (v39 != v40)
      {
        sub_22C37B880(v38);
      }

      else
      {
        v41 = sub_22C3856F8();
        sub_22C88FAFC(v41, v42, v12);
      }

      *(v0 + 16) = 0;
    }
  }

  sub_22C3864C8();
  sub_22C36CC48();
}

void sub_22C88E938(uint64_t a1)
{
  sub_22C89241C(a1);
  sub_22C3A5908(&qword_27D9BC3C0, qword_22C912B08);
  sub_22C37F760();
  v41 = v2;
  v6 = sub_22C90B1DC();
  if (!*(v3 + 16))
  {
LABEL_29:

    *v1 = v6;
    return;
  }

  v40 = v3;
  v7 = 0;
  v9 = v3 + 64;
  v8 = *(v3 + 64);
  v10 = *(v3 + 32);
  sub_22C36AD3C();
  v13 = v12 & v11;
  sub_22C5E7630();
  if (!v13)
  {
LABEL_4:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v1)
      {
        break;
      }

      sub_22C36CC00();
      if (v16)
      {
        sub_22C375A38();
        v13 = v18 & v17;
        goto LABEL_9;
      }
    }

    if (v41)
    {
      v34 = *(v3 + 32);
      sub_22C36ED64();
      if (v36 != v37)
      {
        sub_22C37B880(v35);
      }

      else
      {
        v38 = sub_22C3856F8();
        sub_22C88FAFC(v38, v39, v9);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_22C383840();
LABEL_9:
    sub_22C892530(v14);
    v21 = (v20 + 16 * v19);
    v22 = v21[1];
    v42 = *v21;
    if ((v41 & 1) == 0)
    {
    }

    v23 = *(v6 + 40);
    sub_22C90B62C();
    sub_22C909FFC();
    v24 = sub_22C90B66C();
    sub_22C378950(v24, *(v6 + 32));
    if (v25)
    {
      break;
    }

    sub_22C37F394();
LABEL_21:
    sub_22C36D914();
    *(v6 + 64 + v29) |= v30;
    v32 = (*(v6 + 48) + 16 * v31);
    *v32 = v4;
    v32[1] = v5;
    v33 = (*(v6 + 56) + 16 * v31);
    *v33 = v42;
    v33[1] = v22;
    sub_22C37B32C();
    v3 = v40;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v25)
    {
      if (v27)
      {
        break;
      }
    }

    if (v26 == v28)
    {
      v26 = 0;
    }

    sub_22C892190(v26);
    if (!v25)
    {
      sub_22C36D900();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C88EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_22C3806F4();
  sub_22C3751E0(v17);
  sub_22C3A5908(&qword_27D9C0E90, &qword_22C92B558);
  sub_22C375F14();
  sub_22C892348();
  sub_22C5E76A0();
  if (!v18)
  {
LABEL_29:

    *v12 = v14;
    sub_22C5E78F0();
    return;
  }

  v19 = 0;
  sub_22C8922DC();
  v20 = *(v16 - 32);
  sub_22C36AD3C();
  sub_22C892130();
  if (!v15)
  {
LABEL_4:
    v21 = v19;
    while (1)
    {
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v19 >= v12)
      {
        break;
      }

      sub_22C8923F4();
      if (v22)
      {
        sub_22C375A38();
        v15 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_22C37F8D8();
      if (v39 != v40)
      {
        sub_22C37B880(v38);
      }

      else
      {
        v41 = sub_22C3856F8();
        sub_22C88FAFC(v41, v42, v16);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    sub_22C8923E8();
    v27 = *(v26 + v25);
    sub_22C8923DC(v25);
    if ((v28 & 1) == 0)
    {
    }

    sub_22C375D08();
    sub_22C90B64C();
    sub_22C90B66C();
    v29 = *(v14 + 32);
    sub_22C36C03C();
    sub_22C8921F0(v30);
    if (v31)
    {
      break;
    }

    sub_22C37F394();
LABEL_21:
    sub_22C372F14(v32);
    *(v37 + v36) = v27;
    sub_22C379BE0(v36);
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v31)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    sub_22C375F24(v33);
    if (!v31)
    {
      sub_22C36D900();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C88EC94()
{
  sub_22C36BA7C();
  sub_22C389358();
  v3 = sub_22C901FAC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9BD7C0, &unk_22C92B700);
  sub_22C375F14();
  sub_22C892394();
  sub_22C892438();
  if (!v9)
  {
LABEL_29:

    sub_22C387D08();
    sub_22C36CC48();
    return;
  }

  v10 = 0;
  v12 = v1 + 64;
  v11 = *(v1 + 64);
  v13 = *(v1 + 32);
  sub_22C36AD3C();
  v16 = v15 & v14;
  sub_22C5E7630();
  v43 = v6;
  v17 = v2 + 64;
  v44 = v1;
  if (!v16)
  {
LABEL_4:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v10 >= v0)
      {
        break;
      }

      ++v19;
      if (*(v12 + 8 * v10))
      {
        sub_22C375A38();
        v16 = v21 & v20;
        goto LABEL_9;
      }
    }

    if (v45)
    {
      sub_22C37F8D8();
      if (v39 != v40)
      {
        sub_22C36EEAC(v38);
      }

      else
      {
        v41 = sub_22C3856F8();
        sub_22C88FAFC(v41, v42, v12);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_22C3D34C8();
LABEL_9:
    v22 = *(v1 + 48) + *(v6 + 72) * (v18 | (v10 << 6));
    v23 = sub_22C8924FC();
    v24(v23);
    sub_22C892244();
    if ((v45 & 1) == 0)
    {
    }

    v25 = *(v2 + 40);
    sub_22C892108();
    sub_22C891E48(&qword_2814357B0, v26);
    sub_22C37DA2C();
    sub_22C909F7C();
    v27 = *(v2 + 32);
    sub_22C36C03C();
    v29 = *(v17 + 8 * v28);
    sub_22C37AC88();
    if (v30)
    {
      break;
    }

    sub_22C38AC50();
LABEL_21:
    sub_22C376B08();
    *(v17 + v34) |= v35;
    v36 = sub_22C37C034();
    v37(v36);
    sub_22C892364();
    sub_22C892158();
    v6 = v43;
    v1 = v44;
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v30)
    {
      if (v32)
      {
        break;
      }
    }

    if (v31 == v33)
    {
      v31 = 0;
    }

    if (*(v17 + 8 * v31) != -1)
    {
      sub_22C37F630();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C88EF3C()
{
  sub_22C3806F4();
  sub_22C89241C(v5);
  sub_22C3A5908(v6, v7);
  sub_22C37F760();
  v39 = v1;
  v8 = sub_22C90B1DC();
  if (!*(v2 + 16))
  {
LABEL_29:

    *v0 = v8;
    sub_22C5E78F0();
    return;
  }

  v38 = v2;
  v9 = 0;
  v11 = v2 + 64;
  v10 = *(v2 + 64);
  v12 = *(v2 + 32);
  sub_22C36AD3C();
  v15 = v14 & v13;
  sub_22C5E7630();
  if (!v15)
  {
LABEL_4:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v9 >= v0)
      {
        break;
      }

      sub_22C36CC00();
      if (v18)
      {
        sub_22C375A38();
        v15 = v20 & v19;
        goto LABEL_9;
      }
    }

    if (v39)
    {
      v32 = *(v2 + 32);
      sub_22C36ED64();
      if (v34 != v35)
      {
        sub_22C37B880(v33);
      }

      else
      {
        v36 = sub_22C3856F8();
        sub_22C88FAFC(v36, v37, v11);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_22C383840();
LABEL_9:
    sub_22C892530(v16);
    sub_22C8923DC(v21);
    if ((v22 & 1) == 0)
    {
    }

    sub_22C375D08();
    sub_22C909FFC();
    v23 = sub_22C90B66C();
    sub_22C378950(v23, *(v8 + 32));
    if (v24)
    {
      break;
    }

    sub_22C37F394();
LABEL_21:
    sub_22C36D914();
    *(v8 + 64 + v28) |= v29;
    v31 = (*(v8 + 48) + 16 * v30);
    *v31 = v3;
    v31[1] = v4;
    sub_22C379BE0(v30);
    v2 = v38;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v24)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    sub_22C892190(v25);
    if (!v24)
    {
      sub_22C36D900();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C88F148()
{
  sub_22C36BA7C();
  sub_22C389358();
  v45 = sub_22C908C5C();
  v5 = sub_22C369824(v45);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C388488(v8);
  v9 = sub_22C9069BC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C8920BC(v15, v43);
  sub_22C3A5908(&qword_27D9C07A0, &qword_22C92B510);
  sub_22C375F14();
  sub_22C383E94();
  sub_22C892444();
  if (v16)
  {
    sub_22C373C4C();
    while (v3)
    {
      sub_22C36D6B8();
LABEL_10:
      sub_22C377780();
      if (v21)
      {
        v22 = sub_22C38190C();
        v23(v22);
        v24 = sub_22C38768C();
      }

      else
      {
        v26 = sub_22C38190C();
        v27(v26);
        v24 = sub_22C8920E8();
      }

      v25(v24);
      v28 = *(v2 + 40);
      sub_22C891E48(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
      v29 = sub_22C38C53C();
      sub_22C378950(v29, *(v2 + 32));
      if (v30)
      {
        sub_22C370840();
        while (1)
        {
          sub_22C36D130();
          if (v30)
          {
            if (v32)
            {
              break;
            }
          }

          if (v31 == v33)
          {
            v31 = 0;
          }

          sub_22C892190(v31);
          if (!v30)
          {
            sub_22C37F630();
            goto LABEL_23;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      sub_22C38AC50();
LABEL_23:
      v34 = sub_22C36A544();
      v35(v34);
      v36 = sub_22C383524();
      v37(v36);
      sub_22C892144();
    }

    v17 = v4;
    while (1)
    {
      v4 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= v1)
      {
        break;
      }

      sub_22C36CC00();
      if (v18)
      {
        sub_22C375A38();
        v3 = v20 & v19;
        goto LABEL_10;
      }
    }

    if (v44)
    {
      sub_22C37F8D8();
      if (v39 != v40)
      {
        sub_22C37B880(v38);
      }

      else
      {
        v41 = sub_22C3856F8();
        sub_22C88FAFC(v41, v42, v12);
      }

      *(v0 + 16) = 0;
    }
  }

  sub_22C3864C8();
  sub_22C36CC48();
}

void sub_22C88F3F8()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v8 = sub_22C369A48();
  v63 = v9(v8);
  sub_22C369824(v63);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  v62 = &v55 - v15;
  v16 = *v0;
  v17 = *(*v0 + 24);
  sub_22C3868D4();
  sub_22C3A5908(v4, v2);
  v60 = v7;
  v18 = sub_22C90B1DC();
  if (!*(v16 + 16))
  {
LABEL_30:

LABEL_31:
    *v5 = v18;
    sub_22C36CC48();
    return;
  }

  v19 = 0;
  v21 = v16 + 64;
  v20 = *(v16 + 64);
  v22 = *(v16 + 32);
  sub_22C36AD3C();
  v25 = v24 & v23;
  v27 = (v26 + 63) >> 6;
  v56 = v0;
  v57 = (v11 + 16);
  v58 = v16;
  v59 = v11;
  v61 = (v11 + 32);
  v28 = v18 + 64;
  if ((v24 & v23) == 0)
  {
LABEL_4:
    v30 = v19;
    while (1)
    {
      v19 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v19 >= v27)
      {
        break;
      }

      ++v30;
      if (*(v21 + 8 * v19))
      {
        sub_22C375A38();
        v25 = v32 & v31;
        goto LABEL_9;
      }
    }

    if ((v60 & 1) == 0)
    {

      v5 = v56;
      goto LABEL_31;
    }

    v49 = *(v16 + 32);
    sub_22C36ED64();
    v5 = v56;
    if (v51 != v52)
    {
      sub_22C36EEAC(v50);
    }

    else
    {
      v53 = sub_22C3856F8();
      sub_22C88FAFC(v53, v54, v21);
    }

    *(v16 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_22C3D34C8();
LABEL_9:
    sub_22C380754(v29);
    v33 = *(v59 + 72);
    v36 = v35 + v33 * v34;
    if (v60)
    {
      (*v61)(v62, v36, v63);
    }

    else
    {
      (*v57)(v62, v36, v63);
    }

    v37 = *(v18 + 40);
    sub_22C90B62C();
    sub_22C909FFC();
    sub_22C90B66C();
    v38 = *(v18 + 32);
    sub_22C36C03C();
    v40 = *(v28 + 8 * v39);
    sub_22C37AC88();
    if (v41)
    {
      break;
    }

    sub_22C37F394();
LABEL_22:
    sub_22C36D914();
    *(v28 + v45) |= v46;
    v48 = (*(v18 + 48) + 16 * v47);
    *v48 = v16;
    v48[1] = v2;
    (*v61)((*(v18 + 56) + v33 * v47), v62, v63);
    sub_22C37B32C();
    v16 = v58;
    if (!v25)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v41)
    {
      if (v43)
      {
        break;
      }
    }

    if (v42 == v44)
    {
      v42 = 0;
    }

    if (*(v28 + 8 * v42) != -1)
    {
      sub_22C36D900();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_22C88F6B8(uint64_t a1)
{
  sub_22C3751E0(a1);
  sub_22C3A5908(&qword_27D9C0E18, &qword_22C92B4B0);
  sub_22C375F14();
  sub_22C892348();
  sub_22C5E76A0();
  if (!v6)
  {
LABEL_30:

    *v1 = v3;
    return;
  }

  v7 = 0;
  sub_22C8922DC();
  v8 = *(v5 - 32);
  sub_22C36AD3C();
  sub_22C892130();
  if (!v4)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v1)
      {
        break;
      }

      sub_22C8923F4();
      if (v10)
      {
        sub_22C375A38();
        v4 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v35)
    {
      sub_22C37F8D8();
      if (v31 != v32)
      {
        sub_22C37B880(v30);
      }

      else
      {
        v33 = sub_22C3856F8();
        sub_22C88FAFC(v33, v34, v5);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    sub_22C8923E8();
    v15 = (v14 + 16 * v13);
    v16 = *v15;
    v17 = v15[1];
    v19 = (v18 + 32 * v13);
    if (v35)
    {
      sub_22C456E34(v19, v36);
    }

    else
    {
      sub_22C36F998(v19, v36);
    }

    sub_22C375D08();
    sub_22C909FFC();
    sub_22C90B66C();
    v20 = *(v3 + 32);
    sub_22C36C03C();
    sub_22C8921F0(v21);
    if (v22)
    {
      break;
    }

    sub_22C37F394();
LABEL_22:
    sub_22C372F14(v23);
    v29 = (v28 + 16 * v27);
    *v29 = v16;
    v29[1] = v17;
    sub_22C456E34(v36, (*(v3 + 56) + 32 * v27));
    sub_22C37B32C();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v22)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    sub_22C375F24(v24);
    if (!v22)
    {
      sub_22C36D900();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}