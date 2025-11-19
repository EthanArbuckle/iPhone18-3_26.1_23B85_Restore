uint64_t sub_226E52104(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_226E635C0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_226E63240();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for IncomeInsights.IncomeInsight();
  v2[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v11 = sub_226E638E0();
  v2[15] = v11;
  v12 = *(v11 - 8);
  v2[16] = v12;
  v13 = *(v12 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E522E8, 0, 0);
}

uint64_t sub_226E522E8()
{
  v44 = v0;
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[2];
  v7 = sub_226E56FC8();
  v0[20] = v7;
  v8 = *(v3 + 16);
  v0[21] = v8;
  v0[22] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v2);
  sub_226E4CD44(v6, v4);
  sub_226E4CD44(v6, v5);
  v9 = sub_226E638C0();
  v10 = sub_226E63C80();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[19];
  v13 = v0[15];
  v14 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  if (v11)
  {
    v39 = v0[10];
    v17 = v0[4];
    v18 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v18 = 136315394;
    sub_226E23108(&qword_27D7B6920);
    v41 = v13;
    v42 = v12;
    v19 = sub_226E63FE0();
    v21 = v20;
    sub_226E4CDA8(v15);
    v22 = sub_226E1FC98(v19, v21, &v43);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = *(v16 + *(v39 + 20));
    sub_226E23108(&qword_280CEA228);
    v24 = sub_226E63C40();
    v26 = v25;
    sub_226E4CDA8(v16);
    v27 = sub_226E1FC98(v24, v26, &v43);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_226DD4000, v9, v10, "Saving Income Insight: %s\nTransaction Ids: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8E1B0](v40, -1, -1);
    MEMORY[0x22AA8E1B0](v18, -1, -1);

    v28 = *(v14 + 8);
    v28(v42, v41);
  }

  else
  {

    sub_226E4CDA8(v16);
    sub_226E4CDA8(v15);
    v28 = *(v14 + 8);
    v28(v12, v13);
  }

  v0[23] = v28;
  v29 = v0[9];
  v30 = v0[10];
  v31 = v0[6];
  v32 = v0[2];
  (*(v0[5] + 16))(v31, v32, v0[4]);
  MEMORY[0x22AA8C820](v31);
  v33 = *(v32 + *(v30 + 20));
  v34 = *(MEMORY[0x277CC67A8] + 4);
  v35 = swift_task_alloc();
  v0[24] = v35;
  *v35 = v0;
  v35[1] = sub_226E52618;
  v36 = v0[9];
  v37 = v0[3];

  return MEMORY[0x282116EE0](v36, v33);
}

uint64_t sub_226E52618()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 200) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_226E529E0;
  }

  else
  {
    v6 = sub_226E52788;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226E52788()
{
  v33 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 96);
  v3 = *(v0 + 16);
  (*(v0 + 168))(*(v0 + 144), *(v0 + 160), *(v0 + 120));
  sub_226E4CD44(v3, v2);
  v4 = sub_226E638C0();
  v5 = sub_226E63C80();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 184);
  v8 = *(v0 + 144);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 96);
  if (v6)
  {
    v12 = *(v0 + 32);
    v31 = *(v0 + 184);
    v13 = swift_slowAlloc();
    v30 = v8;
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315138;
    sub_226E23108(&qword_27D7B6920);
    v15 = sub_226E63FE0();
    v17 = v16;
    sub_226E4CDA8(v11);
    v18 = sub_226E1FC98(v15, v17, &v32);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_226DD4000, v4, v5, "Income Insight Saved: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x22AA8E1B0](v14, -1, -1);
    MEMORY[0x22AA8E1B0](v13, -1, -1);

    v31(v30, v10);
  }

  else
  {

    sub_226E4CDA8(v11);
    v7(v8, v10);
  }

  v20 = *(v0 + 144);
  v19 = *(v0 + 152);
  v21 = *(v0 + 136);
  v23 = *(v0 + 104);
  v22 = *(v0 + 112);
  v25 = *(v0 + 88);
  v24 = *(v0 + 96);
  v26 = *(v0 + 72);
  v27 = *(v0 + 48);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_226E529E0()
{
  v40 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 88);
  v4 = *(v0 + 16);
  (*(v0 + 168))(*(v0 + 136), *(v0 + 160), *(v0 + 120));
  sub_226E4CD44(v4, v3);
  v5 = v1;
  v6 = sub_226E638C0();
  v7 = sub_226E63CA0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 200);
  v10 = *(v0 + 184);
  v12 = *(v0 + 128);
  v11 = *(v0 + 136);
  v13 = *(v0 + 120);
  v14 = *(v0 + 88);
  if (v8)
  {
    v38 = *(v0 + 184);
    v15 = *(v0 + 32);
    v37 = *(v0 + 120);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v39 = v18;
    *v16 = 138412546;
    v19 = v9;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v20;
    *v17 = v20;
    *(v16 + 12) = 2080;
    sub_226E23108(&qword_27D7B6920);
    v21 = sub_226E63FE0();
    v36 = v11;
    v23 = v22;
    sub_226E4CDA8(v14);
    v24 = sub_226E1FC98(v21, v23, &v39);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_226DD4000, v6, v7, "Error: %@ when saving income insight: %s", v16, 0x16u);
    sub_226E15E98(v17, &qword_27D7B6918, &qword_226E68950);
    MEMORY[0x22AA8E1B0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x22AA8E1B0](v18, -1, -1);
    MEMORY[0x22AA8E1B0](v16, -1, -1);

    v38(v36, v37);
  }

  else
  {

    sub_226E4CDA8(v14);
    v10(v11, v13);
  }

  v26 = *(v0 + 144);
  v25 = *(v0 + 152);
  v27 = *(v0 + 136);
  v29 = *(v0 + 104);
  v28 = *(v0 + 112);
  v31 = *(v0 + 88);
  v30 = *(v0 + 96);
  v32 = *(v0 + 72);
  v33 = *(v0 + 48);

  v34 = *(v0 + 8);

  return v34();
}

Swift::String __swiftcall DASActivities.callAsFunction()()
{
  if (*v0)
  {
    v1 = 0xD000000000000025;
  }

  else
  {
    v1 = 0xD00000000000002FLL;
  }

  if (*v0)
  {
    v2 = "lth.finance-background-delivery";
  }

  else
  {
    v2 = "lth.generative_insights";
  }

  v3 = (v2 | 0x8000000000000000);
  result._object = v3;
  result._countAndFlagsBits = v1;
  return result;
}

FinHealthCore::DASActivities_optional __swiftcall DASActivities.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_226E63F80();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_226E52D90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000025;
  }

  else
  {
    v4 = 0xD00000000000002FLL;
  }

  if (v3)
  {
    v5 = "lth.generative_insights";
  }

  else
  {
    v5 = "lth.finance-background-delivery";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000025;
  }

  else
  {
    v7 = 0xD00000000000002FLL;
  }

  if (*a2)
  {
    v8 = "lth.finance-background-delivery";
  }

  else
  {
    v8 = "lth.generative_insights";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_226E63FF0();
  }

  return v10 & 1;
}

uint64_t sub_226E52E40()
{
  v1 = *v0;
  sub_226E640A0();
  sub_226E63A00();

  return sub_226E640C0();
}

uint64_t sub_226E52EC4()
{
  *v0;
  sub_226E63A00();
}

uint64_t sub_226E52F34()
{
  v1 = *v0;
  sub_226E640A0();
  sub_226E63A00();

  return sub_226E640C0();
}

uint64_t sub_226E52FB4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_226E63F80();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_226E53014(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000025;
  }

  else
  {
    v2 = 0xD00000000000002FLL;
  }

  if (*v1)
  {
    v3 = "lth.finance-background-delivery";
  }

  else
  {
    v3 = "lth.generative_insights";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

Swift::String __swiftcall FinanceActivities.callAsFunction()()
{
  v0 = 0x8000000226E73710;
  v1 = 0xD000000000000039;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t FinanceActivities.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_226E63F80();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_226E530E8()
{
  sub_226E640A0();
  sub_226E63A00();
  return sub_226E640C0();
}

uint64_t sub_226E5315C()
{
  sub_226E640A0();
  sub_226E63A00();
  return sub_226E640C0();
}

uint64_t sub_226E531B0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_226E63F80();

  *a2 = v5 != 0;
  return result;
}

uint64_t asUUID(rawString:lossy:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a3;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v40 = &v36 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BE8, &unk_226E690E0);
  v11 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v36 - v12;
  v14 = sub_226E63930();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20]();
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_226E63920();
  v38 = *(v19 - 8);
  v39 = v19;
  v20 = *(v38 + 64);
  result = MEMORY[0x28223BE20]();
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8 == 2)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    v24 = sub_226E1FEBC(a1, a2);
    goto LABEL_10;
  }

  v36 = a4;

  v25 = sub_226E536EC(a1, a2);
  v27 = v26;
  sub_226E568FC(&qword_27D7B6BF0, MEMORY[0x277CC5540]);
  sub_226E63910();
  sub_226E55ECC(v25, v27);
  sub_226E55CEC(v25, v27);
  sub_226E3437C(v25, v27);
  sub_226E63900();
  sub_226E3437C(v25, v27);
  (*(v15 + 8))(v18, v14);
  v29 = v38;
  v28 = v39;
  (*(v38 + 16))(v13, v23, v39);
  *&v13[*(v37 + 36)] = 16;
  v24 = sub_226E55A88(v13);
  sub_226E15E98(v13, &qword_27D7B6BE8, &unk_226E690E0);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_226E55954(v24);
    v24 = result;
  }

  v30 = *(v24 + 16);
  a4 = v36;
  if (v30 < 7)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v24 + 38) = *(v24 + 38) & 0xF | 0x50;
  if (v30 < 9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v24 + 40) &= 0x3Fu;
  result = (*(v29 + 8))(v23, v28);
  if (*(v24 + 16) < 9uLL)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v24 + 40) |= 0x80u;
LABEL_10:
  v31 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
  v32 = [v31 UUIDString];

  sub_226E639C0();
  v33 = v40;
  sub_226E635A0();

  v34 = sub_226E635C0();
  v35 = *(v34 - 8);
  result = (*(v35 + 48))(v33, 1, v34);
  if (result != 1)
  {

    return (*(v35 + 32))(a4, v33, v34);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_226E536EC(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6C40, &qword_226E694C8);
  if (swift_dynamicCast())
  {
    sub_226E49104(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_226E63440();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_226E15E98(__src, &qword_27D7B6C48, &unk_226E694D0);
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
    v4 = sub_226E63EB0();
  }

  sub_226E55454(v4, v5, &v42);
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
  *&__src[0] = sub_226E569FC(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20]();
  v10 = sub_226E5551C(sub_226E56A9C);
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
        sub_226E634D0();
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
      v28 = sub_226E56000(v16, v14, v15);
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
      v8 = sub_226E63A30();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_226E63A60();
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
        v30 = sub_226E63EB0();
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

    v16 = sub_226E56000(v16, v14, v15);
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

    v16 = sub_226E63A40();
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
      sub_226E634E0();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_226E634E0();
    sub_226E343D0(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_226E343D0(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_226E55ECC(*&__src[0], *(&__src[0] + 1));

  sub_226E3437C(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_226E53C2C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_226E53C5C(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_226E53CB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_226E53CE4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_226E53D3C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_226E53D6C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_226E53DC4()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_226E53DD0(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

void *sub_226E53E00()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t sub_226E53E74()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t sub_226E53E80(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t sub_226E53EB0()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t sub_226E53EBC(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t sub_226E53EEC()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t sub_226E53EF8(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t sub_226E53F28()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t sub_226E53F34(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t sub_226E53F64()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t sub_226E53F94(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144);

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t sub_226E53FEC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t sub_226E5401C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 160);

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t sub_226E54074()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t sub_226E54080(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t sub_226E540B0()
{
  result = *(v0 + 184);
  v2 = *(v0 + 192);
  return result;
}

uint64_t sub_226E540BC(uint64_t result, char a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t sub_226E540EC()
{
  result = *(v0 + 200);
  v2 = *(v0 + 208);
  return result;
}

uint64_t sub_226E540F8(uint64_t result, char a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t sub_226E54128@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v128 = 1;
  v127 = 1;
  v126 = 1;
  v125 = 1;
  v124 = 1;
  v123 = 1;
  v122 = 1;
  v121 = 1;
  v119 = sub_226E639C0();
  v120 = v6;

  MEMORY[0x22AA8D010](0x746E6564695F742ELL, 0xED00007265696669);

  v116 = a2;
  v7 = *(a2 + 16);
  v109 = a3;
  if (!v7)
  {
LABEL_90:

LABEL_91:

    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v49 = 0;
    v66 = 0;
    v13 = 0;
    v15 = 0;
    v10 = 0;
    v67 = 0;
    v68 = 0.0;
    goto LABEL_92;
  }

  v8 = 0;
  v9 = (a2 + 40);
  v10 = -32;
  while (1)
  {
    v11 = *(v9 - 1) == v119 && *v9 == v120;
    if (v11 || (sub_226E63FF0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1);
    v10 -= 32;
    v9 += 2;
    if (v7 == v8)
    {
      goto LABEL_90;
    }
  }

  v104 = @"transactions";
  v119 = sub_226E639C0();
  v120 = v12;

  MEMORY[0x22AA8D010](0xD000000000000014, 0x8000000226E73580);

  v13 = 0;
  v14 = (v116 + 40);
  v15 = -32;
  while (1)
  {
    if (v13 >= *(v116 + 16))
    {
      __break(1u);
      goto LABEL_136;
    }

    v16 = *(v14 - 1) == v119 && *v14 == v120;
    if (v16 || (sub_226E63FF0() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1);
    v15 -= 32;
    v14 += 2;
    if (v7 == v13)
    {
      goto LABEL_90;
    }
  }

  v101 = a1;

  v119 = sub_226E639C0();
  v120 = v17;

  MEMORY[0x22AA8D010](0x6E756F6D615F742ELL, 0xE900000000000074);

  v18 = 0;
  v19 = (v116 + 40);
  v20 = -32;
  while (1)
  {
    if (v18 >= *(v116 + 16))
    {
      __break(1u);
      goto LABEL_136;
    }

    v21 = *(v19 - 1) == v119 && *v19 == v120;
    if (v21 || (sub_226E63FF0() & 1) != 0)
    {
      break;
    }

    v18 = (v18 + 1);
    v20 -= 32;
    v19 += 2;
    if (v7 == v18)
    {
      goto LABEL_90;
    }
  }

  v119 = sub_226E639C0();
  v120 = v22;

  MEMORY[0x22AA8D010](0x657461645F742ELL, 0xE700000000000000);

  v23 = 0;
  v24 = (v116 + 40);
  v25 = -32;
  while (2)
  {
    if (v23 >= *(v116 + 16))
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_135;
    }

    v114 = v25;
    v115 = v23;
    v26 = *(v24 - 1) == v119 && *v24 == v120;
    if (!v26 && (sub_226E63FF0() & 1) == 0)
    {
      v23 = v115 + 1;
      v25 = v114 - 32;
      v24 += 2;
      if (v7 == (v115 + 1))
      {
        goto LABEL_90;
      }

      continue;
    }

    break;
  }

  v119 = sub_226E639C0();
  v120 = v27;

  MEMORY[0x22AA8D010](0x6C707369645F6D2ELL, 0xEE00656D616E7961);

  v28 = 0;
  v29 = (v116 + 40);
  v30 = -32;
  while (1)
  {
    if (v28 >= *(v116 + 16))
    {
      goto LABEL_129;
    }

    v110 = v30;
    v112 = v28;
    v31 = *(v29 - 1) == v119 && *v29 == v120;
    if (v31 || (sub_226E63FF0() & 1) != 0)
    {
      break;
    }

    v28 = v112 + 1;
    v30 = v110 - 32;
    v29 += 2;
    if (v7 == (v112 + 1))
    {
      goto LABEL_90;
    }
  }

  v119 = sub_226E639C0();
  v120 = v32;

  MEMORY[0x22AA8D010](0xD000000000000013, 0x8000000226E73770);

  v33 = 0;
  v34 = (v116 + 40);
  v35 = -32;
  while (1)
  {
    if (v33 >= *(v116 + 16))
    {
      goto LABEL_130;
    }

    v107 = v35;
    v108 = v33;
    v36 = *(v34 - 1) == v119 && *v34 == v120;
    if (v36 || (sub_226E63FF0() & 1) != 0)
    {
      break;
    }

    v33 = v108 + 1;
    v35 = v107 - 32;
    v34 += 2;
    if (v7 == (v108 + 1))
    {
      goto LABEL_90;
    }
  }

  v119 = sub_226E639C0();
  v120 = v37;

  MEMORY[0x22AA8D010](0xD000000000000019, 0x8000000226E73790);

  v38 = 0;
  v39 = (v116 + 40);
  v40 = -32;
  while (1)
  {
    if (v38 >= *(v116 + 16))
    {
      goto LABEL_131;
    }

    v105 = v40;
    v106 = v38;
    v41 = *(v39 - 1) == v119 && *v39 == v120;
    if (v41 || (sub_226E63FF0() & 1) != 0)
    {
      break;
    }

    v38 = v106 + 1;
    v40 = v105 - 32;
    v39 += 2;
    if (v7 == (v106 + 1))
    {
      goto LABEL_90;
    }
  }

  v119 = sub_226E639C0();
  v120 = v42;

  MEMORY[0x22AA8D010](0x695F70756F72672ELL, 0xE900000000000064);

  v43 = 0;
  v44 = (v116 + 40);
  v45 = -32;
  while (2)
  {
    if (v43 >= *(v116 + 16))
    {
      __break(1u);
LABEL_134:

LABEL_135:

LABEL_136:

      goto LABEL_91;
    }

    v102 = v45;
    v103 = v43;
    v46 = *(v44 - 1) == v119 && *v44 == v120;
    if (!v46 && (sub_226E63FF0() & 1) == 0)
    {
      v43 = v103 + 1;
      v45 = v102 - 32;
      v44 += 2;
      if (v7 == (v103 + 1))
      {
        goto LABEL_90;
      }

      continue;
    }

    break;
  }

  v119 = sub_226E639C0();
  v120 = v47;

  MEMORY[0x22AA8D010](0x65727275635F742ELL, 0xEF65646F6379636ELL);

  v48 = 0;
  v49 = (v116 + 40);
  v50 = -32;
  while (v48 < *(v116 + 16))
  {
    v99 = v50;
    v100 = v48;
    v51 = *(v49 - 1) == v119 && *v49 == v120;
    if (v51 || (sub_226E63FF0() & 1) != 0)
    {

      v119 = sub_226E639C0();
      v120 = v52;

      MEMORY[0x22AA8D010](0x657079745F742ELL, 0xE700000000000000);

      v53 = 0;
      v49 = (v116 + 40);
      v54 = -32;
      while (1)
      {
        v97 = v54;
        v98 = v53;
        if (v53 >= *(v116 + 16))
        {
          goto LABEL_138;
        }

        v55 = *(v49 - 1) == v119 && *v49 == v120;
        if (v55 || (sub_226E63FF0() & 1) != 0)
        {
          break;
        }

        v53 = v98 + 1;
        v54 = v97 - 32;
        v49 += 2;
        if (v7 == (v98 + 1))
        {
          goto LABEL_90;
        }
      }

      v119 = sub_226E639C0();
      v120 = v77;

      MEMORY[0x22AA8D010](0x657079745F612ELL, 0xE700000000000000);

      v78 = 0;
      v49 = (v116 + 40);
      v79 = -32;
      while (1)
      {
        v96 = v79;
        v104 = v78;
        if (v78 >= *(v116 + 16))
        {
          goto LABEL_139;
        }

        v80 = *(v49 - 1) == v119 && *v49 == v120;
        if (v80 || (sub_226E63FF0() & 1) != 0)
        {
          break;
        }

        v78 = (v104 + 1);
        v79 = v96 - 32;
        v49 += 2;
        if (v7 == (v104 + 1))
        {

          goto LABEL_136;
        }
      }

      v49 = v101;
      if (v8 >= v101[2])
      {
        __break(1u);
        goto LABEL_164;
      }

      sub_226E2233C(v101 - v10, &v119);
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_91;
      }

      if (v18 >= v101[2])
      {
        __break(1u);
      }

      else
      {
        sub_226E2233C(&v101[v20 / 0xFFFFFFFFFFFFFFF8], &v119);
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          goto LABEL_136;
        }

        v116 = v118;
        if (v115 < v101[2])
        {
          sub_226E2233C(v101 - v114, &v119);
          result = swift_dynamicCast();
          if ((result & 1) == 0)
          {
            goto LABEL_136;
          }

          if (v13 < v101[2])
          {
            sub_226E2233C(v101 - v15, &v119);
            result = swift_dynamicCast();
            if ((result & 1) == 0)
            {
              goto LABEL_136;
            }

            if (v100 < v101[2])
            {
              v49 = v118;
              sub_226E2233C(v101 - v99, &v119);
              result = swift_dynamicCast();
              if ((result & 1) == 0)
              {
                goto LABEL_135;
              }

              if (v98 < v101[2])
              {
                v13 = v118;
                sub_226E2233C(v101 - v97, &v119);
                result = swift_dynamicCast();
                if ((result & 1) == 0)
                {
                  goto LABEL_134;
                }

                v115 = v117;
                if (v104 < v101[2])
                {
                  v15 = v117;
                  sub_226E2233C(v101 - v96, &v119);
                  result = swift_dynamicCast();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_134;
                  }

                  v99 = v117;
                  v100 = v117;
                  v104 = v117;
                  v114 = v117;
                  if (v112 < v101[2])
                  {
                    v10 = v117;
                    sub_226E2233C(v101 - v110, &v119);
                    result = swift_dynamicCast();
                    if ((result & 1) == 0)
                    {
                      goto LABEL_141;
                    }

                    v58 = v117;
                    v113 = v118;
                    if ((v118 & 0x2000000000000000) != 0)
                    {
                      v81 = HIBYTE(v118) & 0xF;
                    }

                    else
                    {
                      v81 = v117 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v81)
                    {

                      v121 = 0;
                      v67 = 2;
                      goto LABEL_166;
                    }

                    goto LABEL_140;
                  }

LABEL_179:
                  __break(1u);
                  __break(1u);
                  __break(1u);
                  goto LABEL_180;
                }

LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

LABEL_177:
              __break(1u);
              goto LABEL_178;
            }

LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

LABEL_175:
          __break(1u);
          goto LABEL_176;
        }
      }

      __break(1u);
      goto LABEL_175;
    }

    v48 = v100 + 1;
    v50 = v99 - 32;
    v49 += 2;
    if (v7 == (v100 + 1))
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:

LABEL_141:
  if (v108 >= v101[2])
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  sub_226E2233C(v101 - v107, &v119);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_148;
  }

  v58 = v117;
  v113 = v118;
  if ((v118 & 0x2000000000000000) != 0)
  {
    v82 = HIBYTE(v118) & 0xF;
  }

  else
  {
    v82 = v117 & 0xFFFFFFFFFFFFLL;
  }

  if (v82)
  {
LABEL_154:

    v121 = 0;
    v67 = 1;
    goto LABEL_166;
  }

LABEL_148:
  if (v106 >= v101[2])
  {
    goto LABEL_181;
  }

  sub_226E2233C(v101 - v105, &v119);
  result = swift_dynamicCast();
  if (result)
  {
    v58 = v117;
    v113 = v118;
    if ((v118 & 0x2000000000000000) != 0)
    {
      v83 = HIBYTE(v118) & 0xF;
    }

    else
    {
      v83 = v117 & 0xFFFFFFFFFFFFLL;
    }

    if (v83)
    {
      goto LABEL_154;
    }
  }

  if (v103 >= v101[2])
  {
LABEL_182:
    __break(1u);
    return result;
  }

  sub_226E2233C(v101 - v102, &v119);

  if (swift_dynamicCast())
  {
    v58 = v117;
    v113 = v118;
    if ((v118 & 0x2000000000000000) != 0)
    {
      v84 = HIBYTE(v118) & 0xF;
    }

    else
    {
      v84 = v117 & 0xFFFFFFFFFFFFLL;
    }

    if (v84)
    {
      v121 = 0;
      v67 = 3;
      goto LABEL_166;
    }

LABEL_164:
  }

  v58 = 0;
  v113 = 0;
  v67 = 0;
LABEL_166:
  v128 = 0;
  v85 = [objc_allocWithZone(MEMORY[0x277CCA980]) initWithDouble_];
  v61 = v85;
  v127 = 0;
  v125 = 0;
  v62 = v104 / 86400;
  if (v85)
  {
    v86 = v85;
    sub_226E63C20();
    v88 = v87;

    v89 = log10(fabs(v88) + 1.0);
    v126 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BD0, &unk_226E68E50);
    v90 = swift_allocObject();
    v91 = MEMORY[0x277D839F8];
    *(v90 + 16) = xmmword_226E685F0;
    v92 = MEMORY[0x277D83A80];
    *(v90 + 56) = v91;
    *(v90 + 64) = v92;
    v111 = v89;
    *(v90 + 32) = v89;
    v93 = sub_226E639D0();
    v119 = 0;
    v95 = sub_226E560CC(v93, v94);

    if (v95)
    {
      v64 = v119;
    }

    else
    {
      v64 = 0;
    }

    v124 = !v95;
  }

  else
  {
    v64 = 0;
    v111 = 0.0;
  }

  v123 = 0;
  v122 = 0;
  v59 = v113;
  v60 = v114;
  v68 = v111;
  v56 = v99;
  v65 = v100;
  v63 = v104;
  v66 = v115;
  v57 = v116;
LABEL_92:
  v69 = v128;
  v70 = v127;
  v71 = v126;
  result = v125;
  v73 = v124;
  v74 = v123;
  v75 = v122;
  v76 = v121;
  *v109 = v56;
  *(v109 + 8) = v57;
  *(v109 + 16) = v58;
  *(v109 + 24) = v59;
  *(v109 + 32) = 0;
  *(v109 + 40) = 0;
  *(v109 + 48) = v60;
  *(v109 + 56) = v69;
  *(v109 + 64) = v61;
  *(v109 + 72) = v62;
  *(v109 + 80) = v70;
  *(v109 + 88) = v68;
  *(v109 + 96) = v71;
  *(v109 + 104) = v63;
  *(v109 + 112) = result;
  *(v109 + 120) = v64;
  *(v109 + 128) = v73;
  *(v109 + 136) = v65;
  *(v109 + 144) = v49;
  *(v109 + 152) = v66;
  *(v109 + 160) = v13;
  *(v109 + 168) = v15;
  *(v109 + 176) = v74;
  *(v109 + 184) = v10;
  *(v109 + 192) = v75;
  *(v109 + 200) = v67;
  *(v109 + 208) = v76;
  return result;
}

uint64_t IntermediatePrediction.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IntermediatePrediction.predictedTransaction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntermediatePrediction() + 20);
  v4 = sub_226E63040();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntermediatePrediction.transactionids.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntermediatePrediction() + 24));
}

uint64_t sub_226E550F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for IntermediatePrediction();
  v9 = *(v8 + 20);
  v10 = sub_226E63040();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[*(v8 + 24)] = a4;
  return result;
}

uint64_t FinHealthError.hashValue.getter()
{
  v1 = *v0;
  sub_226E640A0();
  MEMORY[0x22AA8D6A0](v1);
  return sub_226E640C0();
}

void sub_226E552D4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_226E639B0();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_280CEA480 = v2;
  }

  else
  {
    sub_226E63F30();
    __break(1u);
  }
}

uint64_t *sub_226E553A8()
{
  if (qword_280CEA300 != -1)
  {
    swift_once();
  }

  return &qword_280CEA480;
}

id sub_226E553F8()
{
  if (qword_280CEA300 != -1)
  {
    swift_once();
  }

  v0 = qword_280CEA480;

  return v0;
}

uint64_t sub_226E55454@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_226E56944(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_226E63400();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_226E633B0();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_226E634C0();
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

void *sub_226E5551C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_226E3437C(v6, v5);
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

    sub_226E3437C(v6, v5);
    *v3 = xmmword_226E69080;
    sub_226E3437C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_226E633C0() && __OFSUB__(v6, sub_226E633F0()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_226E63400();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_226E633A0();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_226E559D4(v6, v6 >> 32, a1);

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

    sub_226E3437C(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_226E69080;
    sub_226E3437C(0, 0xC000000000000000);
    sub_226E634A0();
    result = sub_226E559D4(v20[2], v20[3], a1);
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
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_226E558C0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_226E56944(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_226E56B04(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_226E56B80(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_226E55968(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_226E559D4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_226E633C0();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_226E633F0();
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

  v12 = sub_226E633E0();
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

uint64_t sub_226E55A88(uint64_t a1)
{
  v2 = sub_226E63920();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v5 + 16))(v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_226E568FC(&qword_27D7B6C38, MEMORY[0x277CC5290]);
  sub_226E63AB0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BE8, &unk_226E690E0);
  v7 = *(a1 + *(result + 36));
  v8 = v27[0];
  v9 = MEMORY[0x277D84F90];
  v10 = 0;
  if (v7)
  {
    v11 = v27[1];
    v12 = (MEMORY[0x277D84F90] + 32);
    do
    {
      v13 = *(v8 + 16);
      if (v11 == v13)
      {
        break;
      }

      if (v11 >= v13)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = *(v8 + v11 + 32);
      if (!v10)
      {
        v15 = *(v9 + 3);
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6958, qword_226E68B50);
        v18 = swift_allocObject();
        v19 = 2 * _swift_stdlib_malloc_size(v18) - 64;
        *(v18 + 2) = v17;
        *(v18 + 3) = v19;
        v20 = v18 + 32;
        v21 = *(v9 + 3) >> 1;
        if (*(v9 + 2))
        {
          v22 = v9 + 32;
          if (v18 != v9 || v20 >= &v22[v21])
          {
            memmove(v18 + 32, v22, v21);
          }

          *(v9 + 2) = 0;
        }

        v12 = &v20[v21];
        v10 = (v19 >> 1) - v21;

        v9 = v18;
      }

      v23 = __OFSUB__(v10--, 1);
      if (v23)
      {
        goto LABEL_23;
      }

      *v12++ = v14;
      ++v11;
      --v7;
    }

    while (v7);
  }

  v24 = *(v9 + 3);
  if (v24 < 2)
  {
    return v9;
  }

  v25 = v24 >> 1;
  v23 = __OFSUB__(v25, v10);
  v26 = v25 - v10;
  if (!v23)
  {
    *(v9 + 2) = v26;
    return v9;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_226E55CEC(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_226E63930();
      sub_226E568FC(&qword_27D7B6BF0, MEMORY[0x277CC5540]);
      result = sub_226E638F0();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_226E55F20(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226E55ECC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_226E55F20(uint64_t a1, uint64_t a2)
{
  result = sub_226E633C0();
  if (!result || (result = sub_226E633F0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_226E633E0();
      sub_226E63930();
      sub_226E568FC(&qword_27D7B6BF0, MEMORY[0x277CC5540]);
      return sub_226E638F0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_226E56000(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_226E63A70();
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
    v5 = MEMORY[0x22AA8D040](15, a1 >> 16);
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

uint64_t sub_226E5607C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_226E63E80();
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

BOOL sub_226E560CC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_226E63E60();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t type metadata accessor for IntermediatePrediction()
{
  result = qword_280CEA370;
  if (!qword_280CEA370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_226E56214()
{
  result = qword_27D7B6BF8;
  if (!qword_27D7B6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6BF8);
  }

  return result;
}

unint64_t sub_226E5629C()
{
  result = qword_27D7B6C10;
  if (!qword_27D7B6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6C10);
  }

  return result;
}

uint64_t sub_226E56320(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_226E56378()
{
  result = qword_27D7B6C28;
  if (!qword_27D7B6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6C28);
  }

  return result;
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_226E56434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 209))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_226E56490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_226E56554()
{
  sub_226E63040();
  if (v0 <= 0x3F)
  {
    sub_226E22054();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for FinHealthError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FinHealthError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FinHealthFeatureFlag(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FinHealthFeatureFlag(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void type metadata accessor for FHTransactionGroupingMethod()
{
  if (!qword_27D7B6C30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27D7B6C30);
    }
  }
}

_BYTE *sub_226E5687C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_226E568FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226E56944(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226E569FC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_226E63400();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_226E633D0();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_226E634C0();
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

void *sub_226E56A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_226E55968(sub_226E56C04, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_226E56B04(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_226E63400();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_226E633B0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_226E634C0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_226E56B80(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_226E63400();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_226E633B0();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_226E56C34()
{
  v0 = sub_226E639B0();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    v2 = swift_getObjCClassMetadata() != 0;
  }

  else
  {
    v2 = 0;
  }

  byte_27D7B7EE0 = v2;
}

char *sub_226E56C98()
{
  if (qword_27D7B7DB0 != -1)
  {
    swift_once();
  }

  return &byte_27D7B7EE0;
}

uint64_t sub_226E56CE8()
{
  if (qword_27D7B7DB0 != -1)
  {
    swift_once();
  }

  return byte_27D7B7EE0;
}

const char *FinHealthFeatureFlag.FinHealthFeatures.feature.getter()
{
  v1 = "FinHealthMapsDataDonation";
  if (*v0 != 1)
  {
    v1 = "TransactionDonation";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "FinHealthFinanceKitIntegration";
  }
}

uint64_t FinHealthFeatureFlag.FinHealthFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_226E640A0();
  MEMORY[0x22AA8D6A0](v1);
  return sub_226E640C0();
}

const char *sub_226E56E30()
{
  v1 = "FinHealthMapsDataDonation";
  if (*v0 != 1)
  {
    v1 = "TransactionDonation";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "FinHealthFinanceKitIntegration";
  }
}

uint64_t static FinHealthFeatureFlag.isEnabled(_:)(char *a1)
{
  v1 = *a1;
  v4[3] = &type metadata for FinHealthFeatureFlag.FinHealthFeatures;
  v4[4] = sub_226E56ED0();
  LOBYTE(v4[0]) = v1;
  v2 = sub_226E63620();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

unint64_t sub_226E56ED0()
{
  result = qword_280CEA220;
  if (!qword_280CEA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CEA220);
  }

  return result;
}

unint64_t sub_226E56F28()
{
  result = qword_27D7B6C50;
  if (!qword_27D7B6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6C50);
  }

  return result;
}

uint64_t sub_226E570BC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_226E638E0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_226E638D0();
}

uint64_t sub_226E571A4()
{
  v0 = sub_226E638E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226E63860();
  __swift_allocate_value_buffer(v5, qword_280CEA358);
  __swift_project_value_buffer(v5, qword_280CEA358);
  if (qword_280CEA310 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_280CEA318);
  (*(v1 + 16))(v4, v6, v0);
  return sub_226E63840();
}

uint64_t sub_226E57318(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t sub_226E573B0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_226E57504()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226E695D0;
  v14 = sub_226E639C0();
  v26 = v1;

  MEMORY[0x22AA8D010](0x746E6564695F742ELL, 0xED00007265696669);

  *(v0 + 32) = v14;
  *(v0 + 40) = v26;
  v15 = sub_226E639C0();
  v27 = v2;

  MEMORY[0x22AA8D010](0xD000000000000014, 0x8000000226E73580);

  *(v0 + 48) = v15;
  *(v0 + 56) = v27;
  v16 = sub_226E639C0();
  v28 = v3;

  MEMORY[0x22AA8D010](0x6E756F6D615F742ELL, 0xE900000000000074);

  *(v0 + 64) = v16;
  *(v0 + 72) = v28;
  v17 = sub_226E639C0();
  v29 = v4;

  MEMORY[0x22AA8D010](0x65727275635F742ELL, 0xEF65646F6379636ELL);

  *(v0 + 80) = v17;
  *(v0 + 88) = v29;
  v18 = sub_226E639C0();
  v30 = v5;

  MEMORY[0x22AA8D010](0x657461645F742ELL, 0xE700000000000000);

  *(v0 + 96) = v18;
  *(v0 + 104) = v30;
  v19 = sub_226E639C0();
  v31 = v6;

  MEMORY[0x22AA8D010](0x657079745F742ELL, 0xE700000000000000);

  *(v0 + 112) = v19;
  *(v0 + 120) = v31;
  v20 = sub_226E639C0();
  v32 = v7;

  MEMORY[0x22AA8D010](0x657079745F612ELL, 0xE700000000000000);

  *(v0 + 128) = v20;
  *(v0 + 136) = v32;
  v21 = sub_226E639C0();
  v33 = v8;

  MEMORY[0x22AA8D010](0x6C707369645F6D2ELL, 0xEE00656D616E7961);

  *(v0 + 144) = v21;
  *(v0 + 152) = v33;
  v22 = sub_226E639C0();
  v34 = v9;

  MEMORY[0x22AA8D010](0xD000000000000013, 0x8000000226E73770);

  *(v0 + 160) = v22;
  *(v0 + 168) = v34;
  v23 = sub_226E639C0();
  v35 = v10;

  MEMORY[0x22AA8D010](0xD000000000000019, 0x8000000226E73790);

  *(v0 + 176) = v23;
  *(v0 + 184) = v35;
  v24 = sub_226E639C0();
  v36 = v11;

  MEMORY[0x22AA8D010](0x72637365645F742ELL, 0xEE006E6F69747069);

  *(v0 + 192) = v24;
  *(v0 + 200) = v36;
  v25 = sub_226E639C0();
  v37 = v12;

  MEMORY[0x22AA8D010](0x695F70756F72672ELL, 0xE900000000000064);

  *(v0 + 208) = v25;
  *(v0 + 216) = v37;
  return v0;
}

void PredictionFeatures.init(accountTypes:transactionTypes:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_utilities;
  *&v2[v5] = sub_226E202A4(0, &qword_280CE9FA0, &off_2785CA860);
  v6 = OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_fields;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_226E695D0;
  aBlock = sub_226E639C0();
  v64 = v8;

  MEMORY[0x22AA8D010](0x746E6564695F742ELL, 0xED00007265696669);

  v9 = v64;
  *(v7 + 32) = aBlock;
  *(v7 + 40) = v9;
  aBlock = sub_226E639C0();
  v64 = v10;

  MEMORY[0x22AA8D010](0xD000000000000014, 0x8000000226E73580);

  v11 = v64;
  *(v7 + 48) = aBlock;
  *(v7 + 56) = v11;
  aBlock = sub_226E639C0();
  v64 = v12;

  MEMORY[0x22AA8D010](0x6E756F6D615F742ELL, 0xE900000000000074);

  v13 = v64;
  *(v7 + 64) = aBlock;
  *(v7 + 72) = v13;
  aBlock = sub_226E639C0();
  v64 = v14;

  MEMORY[0x22AA8D010](0x65727275635F742ELL, 0xEF65646F6379636ELL);

  v15 = v64;
  *(v7 + 80) = aBlock;
  *(v7 + 88) = v15;
  aBlock = sub_226E639C0();
  v64 = v16;

  MEMORY[0x22AA8D010](0x657461645F742ELL, 0xE700000000000000);

  v17 = v64;
  *(v7 + 96) = aBlock;
  *(v7 + 104) = v17;
  aBlock = sub_226E639C0();
  v64 = v18;

  MEMORY[0x22AA8D010](0x657079745F742ELL, 0xE700000000000000);

  v19 = v64;
  *(v7 + 112) = aBlock;
  *(v7 + 120) = v19;
  aBlock = sub_226E639C0();
  v64 = v20;

  MEMORY[0x22AA8D010](0x657079745F612ELL, 0xE700000000000000);

  v21 = v64;
  *(v7 + 128) = aBlock;
  *(v7 + 136) = v21;
  aBlock = sub_226E639C0();
  v64 = v22;

  MEMORY[0x22AA8D010](0x6C707369645F6D2ELL, 0xEE00656D616E7961);

  v23 = v64;
  *(v7 + 144) = aBlock;
  *(v7 + 152) = v23;
  aBlock = sub_226E639C0();
  v64 = v24;

  MEMORY[0x22AA8D010](0xD000000000000013, 0x8000000226E73770);

  v25 = v64;
  *(v7 + 160) = aBlock;
  *(v7 + 168) = v25;
  aBlock = sub_226E639C0();
  v64 = v26;

  MEMORY[0x22AA8D010](0xD000000000000019, 0x8000000226E73790);

  v27 = v64;
  *(v7 + 176) = aBlock;
  *(v7 + 184) = v27;
  aBlock = sub_226E639C0();
  v64 = v28;

  MEMORY[0x22AA8D010](0x72637365645F742ELL, 0xEE006E6F69747069);

  v29 = v64;
  *(v7 + 192) = aBlock;
  *(v7 + 200) = v29;
  aBlock = sub_226E639C0();
  v64 = v30;

  MEMORY[0x22AA8D010](0x695F70756F72672ELL, 0xE900000000000064);

  v31 = v64;
  *(v7 + 208) = aBlock;
  *(v7 + 216) = v31;
  v61 = v2;
  *&v2[v6] = v7;
  v32 = *(a2 + 16);
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_226E5D920(0, v32, 0);
    v34 = aBlock;
    v35 = *(aBlock + 16);
    v36 = 32;
    do
    {
      v37 = *(a2 + v36);
      aBlock = v34;
      v38 = *(v34 + 24);
      if (v35 >= v38 >> 1)
      {
        sub_226E5D920((v38 > 1), v35 + 1, 1);
        v34 = aBlock;
      }

      *(v34 + 16) = v35 + 1;
      *(v34 + 8 * v35 + 32) = v37;
      v36 += 8;
      ++v35;
      --v32;
    }

    while (v32);
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  v39 = sub_226E607F8(v34);

  v40 = *(a1 + 16);
  if (v40)
  {
    aBlock = v33;
    sub_226E5D920(0, v40, 0);
    v41 = v33;
    v42 = *(v33 + 16);
    v43 = 32;
    do
    {
      v44 = *(a1 + v43);
      aBlock = v41;
      v45 = *(v41 + 24);
      if (v42 >= v45 >> 1)
      {
        sub_226E5D920((v45 > 1), v42 + 1, 1);
        v41 = aBlock;
      }

      *(v41 + 16) = v42 + 1;
      *(v41 + 8 * v42 + 32) = v44;
      v43 += 8;
      ++v42;
      --v40;
    }

    while (v40);
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  v46 = sub_226E607F8(v41);

  v47 = objc_opt_self();
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  *(v48 + 24) = v39;
  v67 = sub_226E6086C;
  v68 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_226E23500;
  v66 = &block_descriptor_2;
  v49 = _Block_copy(&aBlock);

  v50 = [v47 initWithBuilder:v49 logicalOperator:@"AND"];
  _Block_release(v49);
  v67 = sub_226E58304;
  v68 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_226E23500;
  v66 = &block_descriptor_7;
  v51 = _Block_copy(&aBlock);
  v52 = [v47 initWithBuilder:v51 logicalOperator:@"OR"];
  _Block_release(v51);
  v67 = sub_226E585E0;
  v68 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_226E23500;
  v66 = &block_descriptor_10;
  v53 = _Block_copy(&aBlock);
  v54 = [v47 initWithBuilder:v53 logicalOperator:@"AND"];
  _Block_release(v53);
  v55 = swift_allocObject();
  v55[2] = v52;
  v55[3] = v50;
  v55[4] = v54;
  v67 = sub_226E60B58;
  v68 = v55;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_226E23500;
  v66 = &block_descriptor_16;
  v56 = _Block_copy(&aBlock);
  v57 = v52;
  v58 = v50;
  v59 = v54;

  v60 = [v47 initWithBuilder:v56 logicalOperator:@"AND"];
  _Block_release(v56);
  if (v60)
  {

    *&v61[OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_featuresClause] = v60;
    v62.receiver = v61;
    v62.super_class = type metadata accessor for PredictionFeatures();
    objc_msgSendSuper2(&v62, sel_init);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226E5820C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226E5D940(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_226E5D940((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_226E3D250(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_226E58304(void *a1)
{
  if (a1)
  {
    sub_226E639C0();
    v2 = a1;
    v3 = @"==";

    MEMORY[0x22AA8D010](0x745F70756F72672ELL, 0xEB00000000657079);

    v4 = sub_226E639B0();

    [v2 addIntegerClause:v3 fieldName:v4 expression:3];

    sub_226E639C0();
    v5 = @"!=";

    MEMORY[0x22AA8D010](0xD000000000000019, 0x8000000226E73790);

    v6 = sub_226E639B0();

    v7 = sub_226E639B0();
    [v2 addStringClause:v5 fieldName:v6 expression:v7];

    sub_226E639C0();
    v8 = v5;

    MEMORY[0x22AA8D010](0xD000000000000013, 0x8000000226E73770);

    v9 = sub_226E639B0();

    v10 = sub_226E639B0();
    [v2 addStringClause:v8 fieldName:v9 expression:v10];

    sub_226E639C0();
    v11 = v8;

    MEMORY[0x22AA8D010](0x6C707369645F6D2ELL, 0xEE00656D616E7961);

    v12 = sub_226E639B0();

    v13 = sub_226E639B0();
    [v2 addStringClause:v11 fieldName:v12 expression:v13];
  }
}

void sub_226E585E0(void *a1)
{
  if (a1)
  {
    sub_226E639C0();
    v2 = a1;
    v3 = @">=";

    MEMORY[0x22AA8D010](0x6E756F6D615F742ELL, 0xE900000000000074);

    v4 = sub_226E639B0();

    [v2 addIntegerClause:v3 fieldName:v4 expression:0];
  }
}

void sub_226E586CC()
{
  v1 = v0;
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  v54 = v2;
  *(v2 + 16) = sub_226E3A348(MEMORY[0x277D84F90], &qword_27D7B6CD0, &qword_226E696A0);
  v4 = (v2 + 16);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_226E3A348(v3, &qword_27D7B6CC8, &unk_226E69690);
  v52 = swift_allocObject();
  *(v52 + 16) = sub_226E3A348(v3, &qword_27D7B6930, &unk_226E696B0);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_226E60C08(v3);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_226E3A188(v3);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_226E3A348(v3, &qword_27D7B6930, &unk_226E696B0);
  v48 = swift_allocObject();
  *(v48 + 16) = sub_226E3A348(v3, &qword_27D7B6CB8, &qword_226E69678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6908, &unk_226E68A50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226E685D0;
  aBlock = sub_226E639C0();
  v60 = v6;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v7 = sub_226E639C0();
  MEMORY[0x22AA8D010](v7);

  sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
  v8 = sub_226E63CF0();
  v9 = objc_allocWithZone(FHSmartCompoundFeatureRankedValue);
  v10 = sub_226E639B0();

  v11 = [v9 initWithLabelAndRank:v10 featureRank:v8];

  if (v11)
  {
    *(v5 + 32) = v11;
    sub_226E639C0();
    v12 = objc_opt_self();
    v63 = sub_226E58ECC;
    v64 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_226E23500;
    v62 = &block_descriptor_38_0;
    v13 = _Block_copy(&aBlock);
    v14 = [v12 initWithBuilder_];
    _Block_release(v13);
    v15 = objc_allocWithZone(FHDatabaseEntity);
    v16 = sub_226E639B0();

    v17 = [v15 initWithEntity:v16 joinClause:v14];

    v18 = sub_226E59378(v17);
    v55 = v1;
    v47 = v17;
    if (v17)
    {
      v46 = *&v1[OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_featuresClause];
      v19 = *&v1[OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_fields];
      v45 = v17;
      v44 = @"AND";
      v43 = sub_226E63AE0();
      sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
      v42 = sub_226E63AE0();

      v20 = swift_allocObject();
      v20[2] = v1;
      v20[3] = v18;
      v20[4] = v54;
      v20[5] = v52;
      v20[6] = v53;
      v20[7] = v51;
      v20[8] = v50;
      v20[9] = v49;
      v20[10] = v48;
      v63 = sub_226E60D04;
      v64 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v60 = 1107296256;
      v61 = sub_226E1EB4C;
      v62 = &block_descriptor_44_0;
      v21 = _Block_copy(&aBlock);
      v22 = v1;

      [v45 queryDataWithBlock:v46 logicalOperator:v44 limit:-1 selectFields:v43 orderby:v42 usingBlock:v21];
      _Block_release(v21);
    }

    else
    {
    }

    swift_beginAccess();
    v23 = *v4;
    swift_beginAccess();
    v24 = *(v51 + 16);
    swift_beginAccess();
    v25 = *(v52 + 16);
    swift_beginAccess();
    v26 = *(v50 + 16);
    swift_beginAccess();
    v27 = *(v49 + 16);
    swift_beginAccess();
    v28 = *(v48 + 16);

    v29 = v24;

    v57 = v25;

    v56 = v27;

    v58 = sub_226E3A348(MEMORY[0x277D84F90], &qword_27D7B6B00, &unk_226E68B30);
    v30 = 1 << *(v23 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v23 + 64);
    v33 = (v30 + 63) >> 6;

    v34 = 0;
    while (v32)
    {
      v35 = v34;
LABEL_13:
      v36 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v37 = v36 | (v35 << 6);
      v38 = *(v23 + 48) + 16 * v37;
      v39 = *v38;
      v40 = *(v38 + 8);
      v41 = *(*(v23 + 56) + 8 * v37);

      sub_226E598F8(v39, v40, v41, v57, v55, v29, v26, v56, v28, &v58);
    }

    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v33)
      {

        return;
      }

      v32 = *(v23 + 64 + 8 * v35);
      ++v34;
      if (v32)
      {
        v34 = v35;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_226E58ECC(id result)
{
  if (result)
  {
    return [result addKeyPairsWithJoinType:@"left" leftEntity:@"transactions" rightEntity:@"fh_grouping" joinKey:@"t_identifier"];
  }

  return result;
}

uint64_t sub_226E58F10(uint64_t a1, void *a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_226E63DD0();
    sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
    sub_226E62500(&qword_27D7B6C88, &qword_280CE9F98, off_2785CA820);
    sub_226E63C60();
    v3 = v58;
    v4 = v59;
    v5 = v60;
    v6 = v61;
    v7 = v62;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v54 = v3;
  v55 = a2;
  v53 = v4;
  while (v3 < 0)
  {
    if (!sub_226E63E00())
    {
      return sub_226E33994();
    }

    sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
    swift_dynamicCast();
    v16 = v57;
    v14 = v6;
    v15 = v7;
    if (!v57)
    {
      return sub_226E33994();
    }

LABEL_20:
    v56 = v15;
    v17 = [v16 featureRank];
    if (!v17)
    {
      goto LABEL_47;
    }

    v18 = v17;
    v19 = [v17 integerValue];

    if (v19 == 7)
    {
      v20 = [v16 featureLabel];
      if (!v20)
      {
        goto LABEL_49;
      }

      v21 = v20;
      v22 = sub_226E639C0();
      v24 = v23;

      v25 = [v16 featureLabel];
      if (!v25)
      {
        goto LABEL_48;
      }

      v26 = v25;
      v27 = sub_226E639C0();
      v29 = v28;

      swift_beginAccess();
      v30 = *a2;
      if (*(*a2 + 16))
      {
        v31 = sub_226E20614(v27, v29);
        v33 = v32;

        if (v33)
        {
          v34 = *(*(v30 + 56) + 8 * v31);
        }

        else
        {
          v34 = 0;
        }

        a2 = v55;
      }

      else
      {

        v34 = 0;
      }

      swift_endAccess();
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_44;
      }

      swift_beginAccess();
      v36 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *a2;
      v63 = *a2;
      *a2 = 0x8000000000000000;
      v40 = sub_226E20614(v22, v24);
      v41 = *(v38 + 16);
      v42 = (v39 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        goto LABEL_45;
      }

      v44 = v39;
      if (*(v38 + 24) >= v43)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v47 = v63;
          if ((v39 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_226E5DF50();
          v47 = v63;
          if ((v44 & 1) == 0)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        sub_226E5DC24(v43, isUniquelyReferenced_nonNull_native);
        v45 = sub_226E20614(v22, v24);
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_50;
        }

        v40 = v45;
        v47 = v63;
        if ((v44 & 1) == 0)
        {
LABEL_38:
          v47[(v40 >> 6) + 8] |= 1 << v40;
          v48 = (v47[6] + 16 * v40);
          *v48 = v22;
          v48[1] = v24;
          *(v47[7] + 8 * v40) = v35;
          v49 = v47[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            goto LABEL_46;
          }

          v47[2] = v51;
          goto LABEL_9;
        }
      }

      *(v47[7] + 8 * v40) = v35;

LABEL_9:
      a2 = v55;
      *v55 = v47;
      swift_endAccess();
      v4 = v53;
      v3 = v54;
      v11 = (v5 + 64) >> 6;
    }

    v6 = v14;
    v7 = v56;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      return sub_226E33994();
    }

    goto LABEL_20;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      return sub_226E33994();
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_226E64010();
  __break(1u);
  return result;
}

uint64_t sub_226E59378(void *a1)
{
  v3 = sub_226E638E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_226E60C08(MEMORY[0x277D84F90]);
  if (a1)
  {
    v32 = *&v1[OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_featuresClause];
    v9 = *&v1[OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_fields];
    v31 = @"AND";
    v10 = sub_226E63AE0();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    *(v11 + 24) = v8;
    aBlock[4] = sub_226E62808;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_226E1EB4C;
    aBlock[3] = &block_descriptor_66;
    v12 = v7;
    v13 = v4;
    v14 = v3;
    v15 = _Block_copy(aBlock);
    v16 = v1;

    v17 = v31;
    [a1 queryDataWithBlock:v32 logicalOperator:v31 selectFields:v10 usingBlock:v15];
    v18 = v15;
    v3 = v14;
    v4 = v13;
    v7 = v12;
    _Block_release(v18);
  }

  swift_beginAccess();
  v19 = *(v8 + 16);

  v21 = sub_226E5E214(v20);

  v22 = sub_226E56FC8();
  (*(v4 + 16))(v7, v22, v3);

  v23 = sub_226E638C0();
  v24 = sub_226E63C80();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v26;
    *v25 = 136315138;
    v27 = sub_226E63970();
    v32 = v8;
    v29 = sub_226E1FC98(v27, v28, &v34);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_226DD4000, v23, v24, "filteredEntityCounter %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x22AA8E1B0](v26, -1, -1);
    MEMORY[0x22AA8E1B0](v25, -1, -1);
  }

  (*(v4 + 8))(v7, v3);

  return v21;
}

void sub_226E5971C(uint64_t a1)
{
  if (*(a1 + 24) && (v2 = *(a1 + 64)) != 0 && !((*(a1 + 144) == 0) | ((*(a1 + 176) | *(a1 + 192)) | *(a1 + 56)) & 1))
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 48);
    v5 = *(a1 + 136);
    v6 = *(a1 + 168);
    v7 = *(a1 + 184);
    v8 = *(v1 + OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_utilities);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = v2;
    v11 = sub_226E639B0();
    v12 = v10;
    v13 = sub_226E639B0();
    v14 = [ObjCClassFromMetadata histogramKeysForCardPurchaseTransaction:v11 transactionAmount:v12 transactionSourceIdentifier:v13 transactionType:v6 accountType:v7 amountFromDatabase:v4 receiptIdentifier:0];

    if (v14)
    {
      sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
      sub_226E62500(&qword_27D7B6C88, &qword_280CE9F98, off_2785CA820);
      sub_226E63C30();
    }

    else
    {
      __break(1u);
    }
  }

  else if (MEMORY[0x277D84F90] >> 62 && sub_226E63DE0())
  {
    v15 = MEMORY[0x277D84F90];

    sub_226E62210(v15);
  }
}

unint64_t sub_226E598F8(char *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t i, unint64_t a6, __CFString *a7, void *a8, uint64_t a9, uint64_t *a10)
{
  v123 = a8;
  v124 = a7;
  v127 = a6;
  v17 = sub_226E63590();
  length = v17[-1].length;
  v19 = length[8];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v110 - v23;
  if ((a3 & 0xC000000000000001) != 0)
  {
    result = sub_226E63DE0();
    if ((result & 0x8000000000000000) != 0)
    {
      return result;
    }
  }

  else
  {
    result = *(a3 + 16);
    if ((result & 0x8000000000000000) != 0)
    {
      return result;
    }
  }

  if (result >= 3)
  {
    v114 = v22;
    aBlock = sub_226E5DB74(a3);
    v26 = 0;
    sub_226E5AA90(&aBlock);
    v128 = aBlock;
    v27 = MEMORY[0x277D84F90];
    if (*(a4 + 16))
    {
      v28 = sub_226E20614(a1, a2);
      if (v29)
      {
        v113 = *(*(a4 + 56) + 8 * v28);
      }

      else
      {
        v113 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v113 = MEMORY[0x277D84F90];
    }

    v130[0] = v27;
    if (v128 < 0)
    {
      v30 = 1;
    }

    else
    {
      v30 = (v128 >> 62) & 1;
    }

    v115 = i;
    if (v30 == 1)
    {
      goto LABEL_110;
    }

    v31 = *(v128 + 16);
    v32 = v31 == 1;
    if (v31 < 1)
    {
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_16:
    LODWORD(v111) = v30;
    v121 = a1;
    v122 = a2;
    v125 = v24;
    v126 = length;
    v120 = v17;
    if (!v32)
    {
      a2 = v128 & 0xC000000000000001;
      if ((v128 & 0xC000000000000001) == 0)
      {
        v44 = *(v128 + 16);
        if (v44 < 2 || v31 > v44)
        {
          goto LABEL_128;
        }
      }

      v24 = (v128 + 32);
      a1 = (1 - v31);
      for (i = 5; &a1[i] != 5; ++i)
      {
        v17 = (i - 4);
        if (a2)
        {
          length = v128;
          v30 = MEMORY[0x22AA8D480](i - 4, v128);
          if (__OFSUB__(v17, 1))
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            v31 = sub_226E63DE0();
            v32 = v31 == 1;
            if (v31 < 1)
            {
              goto LABEL_111;
            }

            goto LABEL_16;
          }

          v45 = MEMORY[0x22AA8D480](i - 5, length);
        }

        else
        {
          v46 = i - 5;
          if (__OFSUB__(v17, 1))
          {
            goto LABEL_107;
          }

          if ((v46 & 0x8000000000000000) != 0)
          {
            goto LABEL_108;
          }

          if (v46 >= *(v128 + 16))
          {
            goto LABEL_109;
          }

          v47 = *&v24[8 * v46];
          v30 = *(v128 + 8 * i);
          v45 = v47;
        }

        length = v45;
        v48 = [v30 decimalNumberBySubtracting_];

        v30 = v130;
        MEMORY[0x22AA8D0C0]();
        if (*((v130[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          length = *((v130[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_226E63B10();
        }

        sub_226E63B30();
      }
    }

    sub_226E5A9F0(v130);
    v33 = *(v115 + OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_utilities);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    a2 = v130[0];
    sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);

    v35 = sub_226E63AE0();
    i = [ObjCClassFromMetadata rootMeanSquareError_];

    if (!i)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v36 = sub_226E63AE0();
    a1 = [ObjCClassFromMetadata mean_];

    if (!a1)
    {
LABEL_136:
      __break(1u);

      __break(1u);
      return result;
    }

    v30 = a2 >> 62;
    v17 = v124;
    if (!(a2 >> 62))
    {
      v37 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_22;
    }

LABEL_112:
    v37 = sub_226E63DE0();
LABEL_22:
    v39 = v121;
    v38 = v122;
    inited = v125;
    v41 = v37 / 2;
    v26 = (a2 & 0xC000000000000001);
    if ((a2 & 0xC000000000000001) == 0)
    {
      if (v37 < -1)
      {
        __break(1u);
      }

      else if (v41 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v42 = *(a2 + 8 * v41 + 32);
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_116;
    }

    v42 = MEMORY[0x22AA8D480](v41, a2);
LABEL_26:
    v119 = v42;
    if (v30)
    {
      v43 = sub_226E63DE0();
      if (v43)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v43 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
LABEL_28:
        if (v26)
        {
          v118 = MEMORY[0x22AA8D480](0, a2);
          if (__OFSUB__(v43, 1))
          {
            goto LABEL_131;
          }

          v117 = MEMORY[0x22AA8D480](v43 - 1, a2);

          goto LABEL_48;
        }

        v50 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v50)
        {
          goto LABEL_132;
        }

        v51 = v43 - 1;
        v26 = v123;
        if (__OFSUB__(v43, 1))
        {
LABEL_133:
          __break(1u);
        }

        else if (v51 < v50)
        {
          v52 = *(a2 + 32 + 8 * v51);
          v118 = *(a2 + 32);
          v117 = v52;

          goto LABEL_53;
        }

        __break(1u);
        goto LABEL_135;
      }
    }

    v49 = objc_opt_self();
    v118 = [v49 one];

    v117 = [v49 one];
LABEL_48:
    v26 = v123;
LABEL_53:
    v53 = v127;
    v123 = [i decimalNumberByDividingBy_];
    v11 = 1.0;
    v10 = 1.0;
    if (*(v53 + 16))
    {
      v54 = sub_226E20614(v39, v38);
      if (v55)
      {
        v10 = *(*(v127 + 56) + 8 * v54);
      }
    }

    if (v17->data)
    {
      v56 = sub_226E20614(v39, v38);
      if (v57)
      {
        v11 = *(v17[1].length + 8 * v56);
      }
    }

    if (v111)
    {
      v58 = sub_226E63DE0();
      if (v58)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v58 = *(v128 + 16);
      if (v58)
      {
LABEL_61:
        v59 = __OFSUB__(v58, 1);
        v41 = v58 - 1;
        if (v59)
        {
          goto LABEL_124;
        }

        if ((v128 & 0xC000000000000001) != 0)
        {
          goto LABEL_125;
        }

        if ((v41 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v41 < *(v128 + 16))
        {
          for (j = *(v128 + 8 * v41 + 32); ; j = MEMORY[0x22AA8D480](v41, v128))
          {
LABEL_68:
            v61 = j;
            [j doubleValue];

            v111 = 86400;
            v41 = sub_226E63500();
            v62 = v26[2];
            v110[1] = a2;
            if (v62 && (v41 = sub_226E20614(v39, v38), (v63 & 1) != 0))
            {
              a2 = *(v26[7] + 8 * v41);
            }

            else
            {
              a2 = MEMORY[0x277D84F90];
            }

            v64 = *(a9 + 16);
            v116 = a1;
            if (v64 && (v41 = sub_226E20614(v39, v38), (v65 & 1) != 0))
            {
              a1 = *(*(a9 + 56) + 8 * v41);
            }

            else
            {
              a1 = MEMORY[0x277D84F90];
            }

            v26 = v114;
            v66 = *(a1 + 2);
            v112 = i;
            v127 = v66;
            if (v66 == 5)
            {
              if (*(a1 + 8) != 3.0)
              {
                v84 = 0;
                v85 = 0xE000000000000000;
                goto LABEL_89;
              }

              v124 = @"transactions";
              sub_226E639C0();
              v67 = objc_allocWithZone(FHDatabaseEntity);
              v68 = sub_226E639B0();

              v69 = [v67 initWithEntity_];

              v70 = objc_opt_self();
              v71 = swift_allocObject();
              *(v71 + 16) = v113;
              v135 = sub_226E62648;
              v136 = v71;
              aBlock = MEMORY[0x277D85DD0];
              v132 = 1107296256;
              v133 = sub_226E23500;
              v134 = &block_descriptor_53;
              v72 = _Block_copy(&aBlock);

              v38 = [v70 initWithBuilder_];
              _Block_release(v72);
              v73 = swift_allocObject();
              *(v73 + 16) = 0;
              v39 = v73 + 16;
              *(v73 + 24) = 0;
              if (v69)
              {
                v110[0] = v38;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
                v74 = swift_allocObject();
                *(v74 + 16) = xmmword_226E685F0;
                aBlock = sub_226E639C0();
                v132 = v75;
                v124 = v69;
                v76 = @"AND";

                MEMORY[0x22AA8D010](0x72637365645F742ELL, 0xEE006E6F69747069);

                v77 = v132;
                *(v74 + 32) = aBlock;
                *(v74 + 40) = v77;
                v78 = sub_226E63AE0();

                v135 = sub_226E62768;
                v136 = v73;
                aBlock = MEMORY[0x277D85DD0];
                v132 = 1107296256;
                v133 = sub_226E1EB4C;
                v134 = &block_descriptor_59;
                v79 = _Block_copy(&aBlock);

                v80 = v124;
                v81 = v110[0];
                [(__CFString *)v124 queryDataWithBlock:v110[0] logicalOperator:v76 selectFields:v78 usingBlock:v79];

                _Block_release(v79);
                v38 = v78;
              }

              swift_beginAccess();
              v83 = *(v73 + 16);
              v82 = *(v73 + 24);

              if (v82)
              {
                v84 = v83;
              }

              else
              {
                v84 = 0;
              }

              if (v82)
              {
                v85 = v82;
              }

              else
              {
                v85 = 0xE000000000000000;
              }

              v66 = *(a1 + 2);
              inited = v125;
              i = v112;
              v26 = v114;
            }

            else
            {
              v84 = 0;
              v85 = 0xE000000000000000;
            }

            if (!v66)
            {
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
LABEL_119:
              __break(1u);
LABEL_120:
              __break(1u);
LABEL_121:
              __break(1u);
LABEL_122:
              __break(1u);
              goto LABEL_123;
            }

LABEL_89:
            v114 = v85;
            v124 = v84;
            v86 = *(a1 + 4);
            v87 = sub_226E63530();
            sub_226E63570();
            v88 = sub_226E63530();
            v38 = v126[1];
            ++v126;
            (v38)(v26, v120);
            v39 = FHNumberOfDaysBetweenDates(v87, v88, 1u);

            if (v127 >= 3)
            {
              if (*(a1 + 2) < 3uLL)
              {
                goto LABEL_129;
              }

              *&v90 = COERCE_DOUBLE((*((*MEMORY[0x277D85000] & *v115) + 0x98))(v128, inited, *(a1 + 6)));
              LODWORD(v127) = v91;

              v89 = *&v90;
            }

            else
            {

              LODWORD(v127) = 1;
              v89 = 0.0;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AF0, &qword_226E68B20);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_226E695E0;
            *(inited + 32) = 0x6474735F71657266;
            v128 = inited + 32;
            v26 = 0xE800000000000000;
            *(inited + 40) = 0xE800000000000000;
            sub_226E63C20();
            i = MEMORY[0x277D839F8];
            *(inited + 48) = v92;
            *(inited + 72) = i;
            *(inited + 80) = 0x61656D5F71657266;
            *(inited + 88) = 0xE90000000000006ELL;
            sub_226E63C20();
            *(inited + 96) = v93;
            *(inited + 120) = i;
            *(inited + 128) = 0x64656D5F71657266;
            *(inited + 136) = 0xEB000000006E6169;
            sub_226E63C20();
            *(inited + 144) = v94;
            *(inited + 168) = i;
            *(inited + 176) = 0x78616D5F71657266;
            *(inited + 184) = 0xE800000000000000;
            sub_226E63C20();
            *(inited + 192) = v95;
            *(inited + 216) = i;
            *(inited + 224) = 0x6E696D5F71657266;
            *(inited + 232) = 0xE800000000000000;
            sub_226E63C20();
            *(inited + 240) = v96;
            *(inited + 264) = i;
            *(inited + 272) = 0xD000000000000012;
            *(inited + 280) = 0x8000000226E72FC0;
            v41 = sub_226E63C20();
            *(inited + 288) = v97;
            *(inited + 312) = i;
            *(inited + 320) = 0x69735F70756F7267;
            *(inited + 328) = 0xEA0000000000657ALL;
            *(inited + 336) = v10;
            *(inited + 360) = i;
            *(inited + 368) = 0xD000000000000013;
            *(inited + 376) = 0x8000000226E72FE0;
            *(inited + 384) = v39;
            *(inited + 408) = i;
            *(inited + 416) = 0xD00000000000001BLL;
            *(inited + 424) = 0x8000000226E73000;
            *(inited + 456) = i;
            v98 = *(a1 + 2);
            if (v98 < 3)
            {
              goto LABEL_117;
            }

            *(inited + 432) = *(a1 + 6);
            *(inited + 464) = 0xD000000000000017;
            *(inited + 472) = 0x8000000226E73220;
            *(inited + 504) = i;
            if (v98 == 3)
            {
              goto LABEL_118;
            }

            *(inited + 480) = *(a1 + 7);
            *(inited + 512) = 0x676E6970756F7267;
            *(inited + 520) = 0xEF646F6874656D5FLL;
            *(inited + 552) = i;
            if (v98 < 5)
            {
              goto LABEL_119;
            }

            *(inited + 528) = *(a1 + 8);
            strcpy((inited + 560), "fuzzy_amount");
            *(inited + 573) = 0;
            *(inited + 574) = -5120;
            *(inited + 600) = i;
            *(inited + 576) = v11;
            *(inited + 608) = 0x695F656372756F73;
            *(inited + 616) = 0xE900000000000064;
            v26 = MEMORY[0x277D837D0];
            *(inited + 648) = MEMORY[0x277D837D0];
            v99 = *(a2 + 16);
            if (!v99)
            {
              goto LABEL_120;
            }

            v41 = *(a2 + 40);
            *(inited + 624) = *(a2 + 32);
            *(inited + 632) = v41;
            *(inited + 656) = 0x6E5F797469746E65;
            *(inited + 664) = 0xEB00000000656D61;
            *(inited + 696) = v26;
            if (v99 == 1)
            {
              goto LABEL_121;
            }

            v100 = *(a2 + 56);
            *(inited + 672) = *(a2 + 48);
            *(inited + 680) = v100;
            strcpy((inited + 704), "currency_code");
            *(inited + 718) = -4864;
            *(inited + 744) = v26;
            if (v99 < 3)
            {
              goto LABEL_122;
            }

            v115 = v38;
            v38 = *(a2 + 64);
            v39 = *(a2 + 72);
            v10 = v86 / v10;

            *(inited + 720) = v38;
            *(inited + 728) = v39;
            strcpy((inited + 752), "amount_average");
            *(inited + 767) = -18;
            *(inited + 792) = i;
            *(inited + 768) = v10;
            *(inited + 800) = 0xD000000000000010;
            *(inited + 808) = 0x8000000226E73260;
            *(inited + 840) = i;
            if (*(a1 + 2) >= 2uLL)
            {
              v101 = *(a1 + 5);

              *(inited + 816) = v101;
              *(inited + 848) = 0x746361736E617274;
              *(inited + 856) = 0xEF7364695F6E6F69;
              *(inited + 888) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AD0, &unk_226E68D40);
              *(inited + 864) = v113;
              *(inited + 896) = 0xD000000000000012;
              *(inited + 904) = 0x8000000226E73240;
              *(inited + 936) = v26;
              v102 = v125;
              *(inited + 912) = v124;
              *(inited + 920) = v114;
              *(inited + 944) = 0xD000000000000015;
              *(inited + 952) = 0x8000000226E732B0;
              *(inited + 984) = i;
              v104 = v121;
              v103 = v122;
              v105 = v112;
              if ((v127 & 1) == 0)
              {
                goto LABEL_103;
              }

              sub_226E63510();
              if (is_mul_ok(v111, 0x1EuLL))
              {
                v89 = v106 + (30 * v111);
LABEL_103:
                *(inited + 960) = v89;
                v107 = sub_226E3A558(inited);
                swift_setDeallocating();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AF8, &qword_226E68B28);
                swift_arrayDestroy();

                v108 = *a10;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v129 = *a10;
                *a10 = 0x8000000000000000;
                sub_226E39A20(v107, v104, v103, isUniquelyReferenced_nonNull_native, &qword_27D7B6B00, &unk_226E68B30);

                *a10 = v129;

                v115(v102, v120);
              }

LABEL_130:
              __break(1u);
LABEL_131:
              __break(1u);
LABEL_132:
              __break(1u);
              goto LABEL_133;
            }

LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            ;
          }
        }

        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }
    }

    j = [objc_opt_self() one];
    goto LABEL_68;
  }

  return result;
}

uint64_t sub_226E5A9F0(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_226E5DEEC(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_226E5E724(v5, sub_226E5E9FC, sub_226E5E848);
  *a1 = v2;
  return result;
}

uint64_t sub_226E5AA90(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_226E607E4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_226E5E724(v6, sub_226E5EFA0, sub_226E5E904);
  return sub_226E63ED0();
}

void sub_226E5AB34(unint64_t a1, uint64_t a2, double a3)
{
  v185 = a2;
  v6 = sub_226E63420();
  v183 = *(v6 - 8);
  v184 = v6;
  v7 = *(v183 + 64);
  MEMORY[0x28223BE20](v6);
  v182 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6C70, &unk_226E69600);
  v9 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v186 = &v158 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v177 = &v158 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v176 = &v158 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v174 = &v158 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v178 = &v158 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v170 = &v158 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v179 = &v158 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v175 = &v158 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v158 - v31;
  MEMORY[0x28223BE20](v30);
  v188 = &v158 - v33;
  v187 = sub_226E63590();
  v34 = *(v187 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v187);
  v168 = &v158 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v169 = &v158 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v172 = &v158 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v173 = &v158 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v171 = &v158 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v158 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v158 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v158 - v52;
  v54 = sub_226E63610();
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v54);
  v59 = &v158 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v60 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = v60 - 3;
    if (v60 < 3)
    {
      return;
    }

LABEL_3:
    v166 = v34;
    v180 = v57;
    v167 = v56;
    v62 = v59;
    sub_226E635F0();
    v63 = (*((*MEMORY[0x277D85000] & *v3) + 0xA0))(a1, v61);
    if (v64)
    {
      (*(v180 + 8))(v62, v167);
      return;
    }

    v165 = v62;
    v65 = v180;
    if ((v63 - 32) <= 0xFFFFFFFFFFFFFFE0)
    {
      goto LABEL_6;
    }

    v66 = v63;
    v67 = v60 - 2;
    v160 = v15;
    v162 = v66;
    v163 = (a1 & 0xC000000000000001);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v69 = MEMORY[0x22AA8D480](v67, a1);
      v68 = v166;
    }

    else
    {
      v68 = v166;
      if (v67 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v69 = *(a1 + 8 * v67 + 32);
    }

    sub_226E63C20();

    sub_226E63500();
    v70 = sub_226E63530();
    v73 = *(v68 + 8);
    v72 = v68 + 8;
    v71 = v73;
    v74 = v53;
    v75 = v187;
    v73(v74, v187);
    v76 = FHDateByAddingMonths(v70, 1);

    v164 = v73;
    if (v76)
    {
      sub_226E63560();

      v76 = sub_226E63530();
      v71(v51, v75);
    }

    v77 = FHDateStartOfMonth(v76);

    v78 = v186;
    if (v77)
    {
      v79 = v188;
      sub_226E63560();

      v80 = 0;
    }

    else
    {
      v80 = 1;
      v79 = v188;
    }

    v81 = v166 + 56;
    v82 = *(v166 + 56);
    v82(v79, v80, 1, v75);
    v83 = v60 - 1;
    if (v163)
    {
      v84 = MEMORY[0x22AA8D480](v83, a1);
    }

    else
    {
      if (v60 > *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v84 = *(a1 + 8 * v83 + 32);
    }

    v85 = v84;
    sub_226E63C20();

    sub_226E63500();
    v86 = sub_226E63530();
    v164(v48, v75);
    v87 = FHDateStartOfMonth(v86);

    v161 = v72;
    if (v87)
    {
      sub_226E63560();

      v88 = 0;
    }

    else
    {
      v88 = 1;
    }

    v89 = v181;
    v163 = v82;
    v181 = v81;
    v82(v32, v88, 1, v75);
    v90 = v75;
    v91 = *(v89 + 48);
    v92 = v188;
    sub_226E1A598(v188, v78, &qword_27D7B6858, &qword_226E688C0);
    sub_226E1A598(v32, v78 + v91, &qword_27D7B6858, &qword_226E688C0);
    v93 = v166;
    v94 = *(v166 + 48);
    v95 = v94(v78, 1, v90);
    v159 = v94;
    if (v95 == 1)
    {
      sub_226E15E98(v32, &qword_27D7B6858, &qword_226E688C0);
      sub_226E15E98(v92, &qword_27D7B6858, &qword_226E688C0);
      if (v94(v78 + v91, 1, v90) == 1)
      {
        sub_226E15E98(v78, &qword_27D7B6858, &qword_226E688C0);
        v96 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      v97 = v175;
      sub_226E1A598(v78, v175, &qword_27D7B6858, &qword_226E688C0);
      if (v94(v78 + v91, 1, v90) != 1)
      {
        v98 = v171;
        (*(v93 + 32))(v171, v78 + v91, v90);
        sub_226E62550(&qword_27D7B6C80, MEMORY[0x277CC9578]);
        v99 = sub_226E639A0();
        v100 = v78;
        v101 = v164;
        v164(v98, v90);
        sub_226E15E98(v32, &qword_27D7B6858, &qword_226E688C0);
        sub_226E15E98(v188, &qword_27D7B6858, &qword_226E688C0);
        v102 = v97;
        v96 = v99;
        v101(v102, v90);
        sub_226E15E98(v100, &qword_27D7B6858, &qword_226E688C0);
LABEL_29:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6C78, qword_226E69610);
        v103 = sub_226E63600();
        v104 = *(v103 - 8);
        v105 = *(v104 + 72);
        v106 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_226E685F0;
        (*(v104 + 104))(v107 + v106, *MEMORY[0x277CC9968], v103);
        sub_226E61D78(v107);
        swift_setDeallocating();
        (*(v104 + 8))(v107 + v106, v103);
        swift_deallocClassInstance();
        v108 = v182;
        v109 = v185;
        v110 = v165;
        sub_226E635D0();

        v111 = sub_226E63410();
        LOBYTE(v103) = v112;
        (*(v183 + 8))(v108, v184);
        if (v103)
        {
          (*(v180 + 8))(v110, v167);
          return;
        }

        v114 = v162 < 0x19 || v111 > 5;
        if ((v114 | v96))
        {
          v115 = sub_226E63530();
          v116 = 1;
          v117 = FHDateByAddingMonths(v115, 1);

          v118 = v179;
          v119 = v187;
          v120 = v176;
          if (v117)
          {
            v121 = v170;
            sub_226E63560();

            v116 = 0;
            v122 = v174;
          }

          else
          {
            v122 = v174;
            v121 = v170;
          }

          v163(v121, v116, 1, v119);
          sub_226E62098(v121, v118);
          v123 = v166;
        }

        else
        {
          v123 = v166;
          v118 = v179;
          v124 = v109;
          v119 = v187;
          (*(v166 + 16))(v179, v124, v187);
          v163(v118, 0, 1, v119);
          v120 = v176;
          v122 = v174;
        }

        v125 = v159;
        sub_226E1A598(v118, v122, &qword_27D7B6858, &qword_226E688C0);
        if (v125(v122, 1, v119) == 1)
        {
          v126 = 0;
        }

        else
        {
          v126 = sub_226E63530();
          v164(v122, v119);
        }

        v127 = FHDateStartOfMonth(v126);

        if (v127)
        {
          sub_226E63560();

          v128 = 0;
        }

        else
        {
          v128 = 1;
        }

        v129 = v177;
        v163(v120, v128, 1, v119);
        v130 = v178;
        sub_226E62098(v120, v178);
        sub_226E1A598(v118, v129, &qword_27D7B6858, &qword_226E688C0);
        if (v125(v129, 1, v119) == 1)
        {
          v131 = 0;
        }

        else
        {
          v131 = sub_226E63530();
          v164(v129, v119);
        }

        v132 = FHNumberOfDaysInMonthForDate(v131);

        v133 = v160;
        sub_226E1A598(v130, v160, &qword_27D7B6858, &qword_226E688C0);
        if (v125(v133, 1, v119) == 1)
        {
          v134 = 0;
        }

        else
        {
          v134 = sub_226E63530();
          v164(v133, v119);
        }

        if ((v132 & 0x8000000000000000) == 0)
        {
          v135 = v162;
          if (v162 >= v132)
          {
            v135 = v132;
          }

          v136 = FHDateFromNumberOfDays(v134, v135 - 1);

          if (v136)
          {
            v137 = v172;
            sub_226E63560();

            v140 = *(v123 + 32);
            v138 = v123 + 32;
            v139 = v140;
            v141 = v173;
            v140(v173, v137, v119);
            if (a3 != 20.0 && a3 != 19.0)
            {
              goto LABEL_69;
            }

            v142 = sub_226E63530();
            v143 = GetDayOfWeekFromSignalDate(v142);

            if (v143)
            {
              v144 = v164;
              v166 = v138;
              v145 = sub_226E639C0();
              v147 = v146;

              if ((v145 != 0x7961647275746153 || v147 != 0xE800000000000000) && (sub_226E63FF0() & 1) == 0)
              {
                if ((v145 != 0x7961646E7553 || v147 != 0xE600000000000000) && (sub_226E63FF0() & 1) == 0)
                {

                  v141 = v173;
                  goto LABEL_69;
                }

                v148 = v173;
                v153 = sub_226E63530();
                v150 = FHDateFromNumberOfDays(v153, 1);

                if (v150)
                {

                  v151 = &v189;
                  goto LABEL_68;
                }

LABEL_85:
                __break(1u);
                return;
              }

              v148 = v173;
              v149 = sub_226E63530();
              v150 = FHDateFromNumberOfDays(v149, 2);

              if (v150)
              {

                v151 = &v190;
LABEL_68:
                v152 = *(v151 - 32);
                sub_226E63560();

                v144(v148, v119);
                v139(v148, v152, v119);
                v141 = v148;
LABEL_69:
                sub_226E63510();
                v164(v141, v119);
                sub_226E15E98(v130, &qword_27D7B6858, &qword_226E688C0);
                sub_226E15E98(v118, &qword_27D7B6858, &qword_226E688C0);
                (*(v180 + 8))(v165, v167);
                return;
              }

LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            v164(v141, v119);
          }

          sub_226E15E98(v130, &qword_27D7B6858, &qword_226E688C0);
          sub_226E15E98(v118, &qword_27D7B6858, &qword_226E688C0);
          v65 = v180;
LABEL_6:
          (*(v65 + 8))(v165, v167);
          return;
        }

        goto LABEL_82;
      }

      sub_226E15E98(v32, &qword_27D7B6858, &qword_226E688C0);
      sub_226E15E98(v188, &qword_27D7B6858, &qword_226E688C0);
      v164(v97, v90);
    }

    sub_226E15E98(v78, &qword_27D7B6C70, &unk_226E69600);
    v96 = 0;
    goto LABEL_29;
  }

  v167 = v56;
  v154 = v57;
  v155 = v34;
  v156 = v59;
  v157 = sub_226E63DE0();
  v59 = v156;
  v34 = v155;
  v57 = v154;
  v60 = v157;
  v56 = v167;
  v61 = v60 - 3;
  if (v60 >= 3)
  {
    goto LABEL_3;
  }
}

void sub_226E5BD44(unint64_t a1, uint64_t a2)
{
  v61 = sub_226E63590();
  v4 = *(v61 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v61);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226E63610();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v13 = sub_226E63DE0();
    if (v13 < 3)
    {
      return;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 < 3)
    {
      return;
    }
  }

  sub_226E635F0();
  v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v15 = sub_226E639B0();
  [v14 setDateFormat_];

  v16 = sub_226E635E0();
  [v14 setCalendar_];

  if (v13 < a2)
  {
    goto LABEL_100;
  }

  v53 = v12;
  v54 = v9;
  v55 = v8;
  if (v13 == a2)
  {
LABEL_90:

LABEL_91:
    (*(v54 + 8))(v53, v55);
    return;
  }

  v59 = a1;
  v60 = a1 & 0xC000000000000001;
  v57 = a1 + 32;
  v58 = a1 & 0xFFFFFFFFFFFFFF8;
  v56 = v62 + 1;
  v17 = (v4 + 8);
  v18 = 0x8000000000000000;
  v19 = 0x8000000000000000;
  while (1)
  {
    if (a2 >= v13)
    {
      __break(1u);
LABEL_93:

      (*v17)(v7, v61);

      goto LABEL_91;
    }

    if (v60)
    {
      v20 = MEMORY[0x22AA8D480](a2, v59);
      goto LABEL_15;
    }

    if (a2 < 0)
    {
      break;
    }

    if (a2 >= *(v58 + 16))
    {
      goto LABEL_95;
    }

    v20 = *(v57 + 8 * a2);
LABEL_15:
    v21 = v20;
    sub_226E63C20();

    sub_226E63500();
    v22 = sub_226E63530();
    v23 = [v14 stringFromDate_];

    v24 = sub_226E639C0();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    v28 = v24 & 0xFFFFFFFFFFFFLL;
    if ((v26 & 0x2000000000000000) != 0)
    {
      v29 = HIBYTE(v26) & 0xF;
    }

    else
    {
      v29 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29)
    {
      goto LABEL_93;
    }

    if ((v26 & 0x1000000000000000) == 0)
    {
      if ((v26 & 0x2000000000000000) != 0)
      {
        v62[0] = v24;
        v62[1] = v26 & 0xFFFFFFFFFFFFFFLL;
        if (v24 == 43)
        {
          if (!v27)
          {
            goto LABEL_99;
          }

          if (--v27)
          {
            v32 = 0;
            v42 = v56;
            while (1)
            {
              v43 = *v42 - 48;
              if (v43 > 9)
              {
                break;
              }

              v44 = 10 * v32;
              if ((v32 * 10) >> 64 != (10 * v32) >> 63)
              {
                break;
              }

              v32 = v44 + v43;
              if (__OFADD__(v44, v43))
              {
                break;
              }

              ++v42;
              if (!--v27)
              {
                goto LABEL_76;
              }
            }
          }
        }

        else if (v24 == 45)
        {
          if (!v27)
          {
            goto LABEL_97;
          }

          if (--v27)
          {
            v32 = 0;
            v36 = v56;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v32;
              if ((v32 * 10) >> 64 != (10 * v32) >> 63)
              {
                break;
              }

              v32 = v38 - v37;
              if (__OFSUB__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v27)
              {
                goto LABEL_76;
              }
            }
          }
        }

        else if (v27)
        {
          v32 = 0;
          v47 = v62;
          while (1)
          {
            v48 = *v47 - 48;
            if (v48 > 9)
            {
              break;
            }

            v49 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              break;
            }

            v32 = v49 + v48;
            if (__OFADD__(v49, v48))
            {
              break;
            }

            ++v47;
            if (!--v27)
            {
              goto LABEL_76;
            }
          }
        }
      }

      else
      {
        if ((v24 & 0x1000000000000000) != 0)
        {
          v30 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v30 = sub_226E63EB0();
        }

        v31 = *v30;
        if (v31 == 43)
        {
          if (v28 < 1)
          {
            goto LABEL_98;
          }

          v27 = v28 - 1;
          if (v28 != 1)
          {
            v32 = 0;
            if (!v30)
            {
              goto LABEL_67;
            }

            v39 = v30 + 1;
            while (1)
            {
              v40 = *v39 - 48;
              if (v40 > 9)
              {
                break;
              }

              v41 = 10 * v32;
              if ((v32 * 10) >> 64 != (10 * v32) >> 63)
              {
                break;
              }

              v32 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                break;
              }

              ++v39;
              if (!--v27)
              {
                goto LABEL_76;
              }
            }
          }
        }

        else if (v31 == 45)
        {
          if (v28 < 1)
          {
            goto LABEL_96;
          }

          v27 = v28 - 1;
          if (v28 != 1)
          {
            v32 = 0;
            if (v30)
            {
              v33 = v30 + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_75;
                }

                v35 = 10 * v32;
                if ((v32 * 10) >> 64 != (10 * v32) >> 63)
                {
                  goto LABEL_75;
                }

                v32 = v35 - v34;
                if (__OFSUB__(v35, v34))
                {
                  goto LABEL_75;
                }

                ++v33;
                if (!--v27)
                {
                  goto LABEL_76;
                }
              }
            }

LABEL_67:
            LOBYTE(v27) = 0;
LABEL_76:
            v63 = v27;
            v50 = v27;
            goto LABEL_77;
          }
        }

        else
        {
          if (!v28)
          {
            goto LABEL_75;
          }

          v32 = 0;
          if (!v30)
          {
            goto LABEL_67;
          }

          while (1)
          {
            v45 = *v30 - 48;
            if (v45 > 9)
            {
              break;
            }

            v46 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              break;
            }

            v32 = v46 + v45;
            if (__OFADD__(v46, v45))
            {
              break;
            }

            ++v30;
            if (!--v28)
            {
              goto LABEL_67;
            }
          }
        }
      }

LABEL_75:
      v32 = 0;
      LOBYTE(v27) = 1;
      goto LABEL_76;
    }

    v63 = 0;
    v32 = sub_226E5FB20(v24, v26, 10);
    v50 = v52;
LABEL_77:
    (*v17)(v7, v61);

    if ((v50 & 1) == 0)
    {
      ++a2;
      v51 = (v32 <= v18 ? v18 : v32);
      v18 = v32 >= v19 ? v19 : v51;
      if (v32 > v19)
      {
        v19 = v32;
      }

      if (a2 != v13)
      {
        continue;
      }
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
}

id PredictionFeatures.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PredictionFeatures.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PredictionFeatures();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_226E5C49C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CC0, &unk_226E69680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_226E5C5A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CF0, &qword_226E696D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_226E5C624(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_226E64090();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_226E5CFFC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_226E5C704(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_226E63DF0();

    if (v9)
    {

      sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_226E63DE0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_226E5C93C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_226E5CD50(v22 + 1);
    }

    v20 = v8;
    sub_226E5CF78(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
  v11 = *(v6 + 40);
  v12 = sub_226E63D00();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_226E5D11C(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_226E63D10();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_226E5C93C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CD8, &qword_226E696A8);
    v2 = sub_226E63E30();
    v16 = v2;
    sub_226E63DD0();
    if (sub_226E63E00())
    {
      sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_226E5CD50(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_226E63D00();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_226E63E00());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_226E5CB2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CF8, &qword_226E696D8);
  result = sub_226E63E20();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_226E64090();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_226E5CD50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CD8, &qword_226E696A8);
  result = sub_226E63E20();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_226E63D00();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_226E5CF78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_226E63D00();
  v5 = -1 << *(a2 + 32);
  result = sub_226E63DC0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_226E5CFFC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_226E5CB2C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_226E5D28C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_226E5D51C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_226E64090();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_226E64000();
  __break(1u);
  return result;
}

void sub_226E5D11C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_226E5CD50(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_226E5D3CC();
      goto LABEL_12;
    }

    sub_226E5D70C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_226E63D00();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_226E63D10();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_226E64000();
  __break(1u);
}

void *sub_226E5D28C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CF8, &qword_226E696D8);
  v2 = *v0;
  v3 = sub_226E63E10();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_226E5D3CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CD8, &qword_226E696A8);
  v2 = *v0;
  v3 = sub_226E63E10();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_226E5D51C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CF8, &qword_226E696D8);
  result = sub_226E63E20();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_226E64090();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_226E5D70C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CD8, &qword_226E696A8);
  result = sub_226E63E20();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_226E63D00();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

char *sub_226E5D920(char *a1, int64_t a2, char a3)
{
  result = sub_226E5D960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226E5D940(char *a1, int64_t a2, char a3)
{
  result = sub_226E5DA64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226E5D960(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CF0, &qword_226E696D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_226E5DA64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CE8, &qword_226E696C8);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_226E5DB74(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_226E63DE0();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_226E33090(v2, 0);

    v1 = sub_226E605A4(&v5, v3 + 4, v2, v1);
    sub_226E33994();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_226E5DC24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CB0, &qword_226E69670);
  v38 = a2;
  result = sub_226E63F60();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226E5DEEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_226E63DE0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

void *sub_226E5DF50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CB0, &qword_226E69670);
  v2 = *v0;
  v3 = sub_226E63F50();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_226E5E0B8(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_226E20614(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_226E3906C(v16, a3 & 1);
      v20 = *v5;
      result = sub_226E20614(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_226E64010();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_226E39D48();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 8 * result) = a4;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_226E5E214(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_226E5E374(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_226E5E470(v9, v4, v2);
  result = MEMORY[0x22AA8E1B0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_226E5E374(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    v13 = *(*(a3 + 56) + 8 * v10);
    if ((v13 & 0x8000000000000000) == 0 && v13 >= 3)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_226E5E4E8(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_226E5E4E8(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_226E5E470(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_226E5E374(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_226E5E4E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CB0, &qword_226E69670);
  result = sub_226E63F70();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + 8 * v16);
    v21 = *(v9 + 40);
    sub_226E640A0();

    sub_226E63A00();
    result = sub_226E640C0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_226E5E724(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_226E63FD0();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
        v10 = sub_226E63B20();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

char *sub_226E5E848(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = &result[-a3];
LABEL_5:
    result = *(v6 + 8 * v4);
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = [result compare_];
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *v10;
      result = v10[1];
      *v10 = result;
      v10[1] = v11;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_226E5E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 integerValue];
      v13 = [v11 integerValue];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_226E5E9FC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v81 = a4;
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 8 * v6);
        v10 = 8 * v8;
        v11 = (*a3 + 8 * v8);
        v13 = *v11;
        v12 = (v11 + 2);
        result = [v9 compare_];
        v14 = result;
        v82 = v8;
        v15 = (v8 + 2);
        while (v5 != v15)
        {
          result = [*v12 compare_];
          ++v15;
          ++v12;
          if ((v14 == -1) == (result != -1))
          {
            v5 = (v15 - 1);
            break;
          }
        }

        v8 = v82;
        if (v14 == -1)
        {
          if (v5 < v82)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v82 < v5)
          {
            v16 = 8 * v5 - 8;
            v17 = v5;
            v18 = v82;
            do
            {
              if (v18 != --v17)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v19 = *(v20 + v10);
                *(v20 + v10) = *(v20 + v16);
                *(v20 + v16) = v19;
              }

              v18 = (v18 + 1);
              v16 -= 8;
              v10 += 8;
            }

            while (v18 < v17);
          }
        }

        v6 = v5;
      }

      v21 = a3[1];
      if (v6 < v21)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_116;
        }

        if (v6 - v8 < v81)
        {
          if (__OFADD__(v8, v81))
          {
            goto LABEL_117;
          }

          if (v8 + v81 >= v21)
          {
            v22 = a3[1];
          }

          else
          {
            v22 = (v8 + v81);
          }

          if (v22 < v8)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v6 != v22)
          {
            v23 = *a3;
            v24 = *a3 + 8 * v6 - 8;
            v83 = v8;
            v25 = (v8 - v6);
            do
            {
              v26 = *(v23 + 8 * v6);
              v27 = v25;
              v28 = v24;
              do
              {
                result = [v26 compare_];
                if (result != -1)
                {
                  break;
                }

                if (!v23)
                {
                  goto LABEL_121;
                }

                v29 = *v28;
                v26 = v28[1];
                *v28 = v26;
                v28[1] = v29;
                --v28;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v24 += 8;
              --v25;
            }

            while (v6 != v22);
            v6 = v22;
            v8 = v83;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_226E45B8C(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v32 = *(v7 + 2);
      v31 = *(v7 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_226E45B8C((v31 > 1), v32 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v33;
      v34 = &v7[16 * v32];
      *(v34 + 4) = v8;
      *(v34 + 5) = v6;
      v35 = *v84;
      if (!*v84)
      {
        goto LABEL_125;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v7 + 4);
            v38 = *(v7 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_57:
            if (v40)
            {
              goto LABEL_104;
            }

            v53 = &v7[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_107;
            }

            v59 = &v7[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_111;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v63 = &v7[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_71:
          if (v58)
          {
            goto LABEL_106;
          }

          v66 = &v7[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_109;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_78:
          v74 = v36 - 1;
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_100:
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
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*a3)
          {
            goto LABEL_122;
          }

          v8 = *&v7[16 * v74 + 32];
          v75 = *&v7[16 * v36 + 40];
          sub_226E5F608((*a3 + 8 * v8), (*a3 + 8 * *&v7[16 * v36 + 32]), (*a3 + 8 * v75), v35);
          if (v4)
          {
          }

          if (v75 < v8)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_226E472C4(v7);
          }

          if (v74 >= *(v7 + 2))
          {
            goto LABEL_101;
          }

          v76 = &v7[16 * v74];
          *(v76 + 4) = v8;
          *(v76 + 5) = v75;
          result = sub_226E47238(v36);
          v33 = *(v7 + 2);
          if (v33 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v7[16 * v33 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_102;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_103;
        }

        v48 = &v7[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_105;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_108;
        }

        if (v52 >= v44)
        {
          v70 = &v7[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_112;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_88;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_88:
  v8 = *v84;
  if (!*v84)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_226E472C4(v7);
    v7 = result;
  }

  v77 = *(v7 + 2);
  if (v77 >= 2)
  {
    while (*a3)
    {
      v78 = *&v7[16 * v77];
      v79 = *&v7[16 * v77 + 24];
      sub_226E5F608((*a3 + 8 * v78), (*a3 + 8 * *&v7[16 * v77 + 16]), (*a3 + 8 * v79), v8);
      if (v4)
      {
      }

      if (v79 < v78)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_226E472C4(v7);
      }

      if (v77 - 2 >= *(v7 + 2))
      {
        goto LABEL_114;
      }

      v80 = &v7[16 * v77];
      *v80 = v78;
      *(v80 + 1) = v79;
      result = sub_226E47238(v77 - 1);
      v77 = *(v7 + 2);
      if (v77 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

void sub_226E5EFA0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_226E472C4(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_226E5F83C((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_226E472C4(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_226E47238(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 integerValue];
      v104 = [v14 integerValue];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 integerValue];
        v7 = [v18 integerValue];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_226E45B8C(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_226E45B8C((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_226E5F83C((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_226E472C4(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_226E47238(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 integerValue];
    v41 = [v39 integerValue];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_226E5F608(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 1;
      --v5;
      v18 = v14;
      do
      {
        v19 = v5 + 1;
        v20 = *--v18;
        if ([v20 compare_] == -1)
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (--v6, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        --v5;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      while ([*v6 compare_] == -1)
      {
        v15 = v6;
        v16 = v7 == v6++;
        if (!v16)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v7;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v15 = v4;
      v16 = v7 == v4++;
      if (v16)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v7 = *v15;
      goto LABEL_14;
    }

LABEL_35:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_226E5F83C(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 integerValue];
          v35 = [v33 integerValue];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 integerValue];
          v20 = [v18 integerValue];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

unsigned __int8 *sub_226E5FB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_226E63A90();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_226E600AC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_226E63EB0();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_226E600AC()
{
  v0 = sub_226E63AA0();
  v4 = sub_226E6012C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_226E6012C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_226E639F0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_226E63D90();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_226E200D8(v9, 0);
  v12 = sub_226E60284(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_226E639F0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_226E63EB0();
LABEL_4:

  return sub_226E639F0();
}

unint64_t sub_226E60284(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_226E56000(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_226E63A60();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_226E63EB0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_226E56000(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_226E63A40();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_226E604A4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_226E605A4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  sub_226E63DD0();
  sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
  sub_226E62500(&qword_27D7B6CE0, &qword_280CE9FA8, 0x277CCA980);
  result = sub_226E63C60();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_226E63E00())
      {
        goto LABEL_30;
      }

      sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

uint64_t sub_226E607F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA8D240](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_226E5C624(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_226E6086C(void *a1)
{
  if (!a1)
  {
    return;
  }

  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v19 = sub_226E639C0();
  v20 = v5;
  v18 = a1;

  MEMORY[0x22AA8D010](0x657079745F612ELL, 0xE700000000000000);

  v6 = sub_226E639B0();

  v7 = *(v3 + 16);
  if (v7)
  {
    v17 = v4;
    v8 = sub_226E5C5A0(v7, 0);
    v9 = sub_226E604A4(&v19, v8 + 4, v7, v3);

    sub_226E33994();
    if (v9 != v7)
    {
      __break(1u);
      goto LABEL_15;
    }

    v4 = v17;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  sub_226E5820C(v8);

  v10 = sub_226E63AE0();

  [v18 addInClauseWithFieldName:v6 expressions:v10];

  v19 = sub_226E639C0();
  v20 = v11;

  MEMORY[0x22AA8D010](0x657079745F742ELL, 0xE700000000000000);

  v12 = sub_226E639B0();

  v13 = *(v4 + 16);
  if (v13)
  {
    v14 = sub_226E5C5A0(*(v4 + 16), 0);
    v15 = sub_226E604A4(&v19, v14 + 4, v13, v4);

    sub_226E33994();
    if (v15 == v13)
    {
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_11:
  sub_226E5820C(v14);

  v16 = sub_226E63AE0();

  [v18 addInClauseWithFieldName:v12 expressions:v16];
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_226E60B58(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = a1;
  [v5 addDatabaseClause_];
  [v5 addDatabaseClause_];
  [v5 addDatabaseClause_];
}

unint64_t sub_226E60C08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CB0, &qword_226E69670);
    v3 = sub_226E63F70();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226E20614(v5, v6);
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

uint64_t sub_226E60D04(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v2 = *(v1[2] + OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_fields);
  if (*(result + 16) != *(v2 + 16))
  {
    return result;
  }

  v187 = v1[3];
  v185 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v184 = v1[10];

  sub_226E54128(v8, v2, &v189);
  v213 = v199;
  v214 = v200;
  v215 = v201;
  v216 = v202;
  v209 = v195;
  v210 = v196;
  v211 = v197;
  v212 = v198;
  v205 = v191;
  v206 = v192;
  v207 = v193;
  v208 = v194;
  v203 = v189;
  v204 = v190;
  if (*(&v190 + 1) && (!v204 && *(&v190 + 1) == 0xE000000000000000 || (sub_226E63FF0() & 1) != 0))
  {
    return sub_226E625F4(&v203);
  }

  v180 = v5;
  v199 = v213;
  v200 = v214;
  v201 = v215;
  v202 = v216;
  v195 = v209;
  v196 = v210;
  v197 = v211;
  v198 = v212;
  v191 = v205;
  v192 = v206;
  v193 = v207;
  v194 = v208;
  v189 = v203;
  v190 = v204;
  sub_226E5971C(&v189);
  if ((v9 & 0xC000000000000001) != 0)
  {

    sub_226E62598(&v203, &v189);

    sub_226E63DD0();
    sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
    sub_226E62500(&qword_27D7B6C88, &qword_280CE9F98, off_2785CA820);
    sub_226E63C60();
    v10 = *(&v189 + 1);
    v11 = v189;
    v12 = *(&v190 + 1);
    v13 = v190;
    v14 = v191;
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v9 + 56);
    v11 = v9;

    sub_226E62598(&v203, &v189);

    v14 = v18;
    v12 = 0;
  }

  v181 = v4;
  v182 = v7;
  v179 = v6;
  v183 = v3;
  v19 = (v13 + 64) >> 6;
  v186 = v11;
  v20 = &selRef_columnNameAtIndex_;
  while (1)
  {
    v21 = v14;
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    v24 = sub_226E63E00();
    if (!v24 || (*&v221[0] = v24, sub_226E202A4(0, &qword_280CE9F98, off_2785CA820), swift_dynamicCast(), v23 = v219, v188 = v21, v20 = &selRef_columnNameAtIndex_, !v219))
    {
LABEL_108:
      sub_226E33994();
      sub_226E625F4(&v203);

      sub_226E625F4(&v203);
    }

LABEL_26:
    v25 = [v23 featureRank];
    if (!v25)
    {
      goto LABEL_111;
    }

    v26 = v25;
    v27 = [v25 integerValue];

    v28 = [v23 v20[129]];
    if (!v28)
    {
      goto LABEL_112;
    }

    v29 = v28;
    sub_226E639C0();

    sub_226E639C0();
    v30 = sub_226E63A80();

    v31 = [v23 v20[129]];
    if (!v31)
    {
      goto LABEL_113;
    }

    v32 = v31;
    v33 = sub_226E639C0();
    v35 = v34;

    if (!*(v187 + 16))
    {
      goto LABEL_35;
    }

    sub_226E20614(v33, v35);
    v37 = v36;

    v38 = v37 & v30 & (v27 == 7);
    v11 = v186;
    v20 = &selRef_columnNameAtIndex_;
    if ((v38 & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = [v23 featureLabel];
    if (!v39)
    {
      goto LABEL_114;
    }

    v40 = v39;
    v41 = sub_226E639C0();
    v43 = v42;

    swift_beginAccess();
    v44 = *(v185 + 16);
    if (!*(v44 + 16))
    {

LABEL_37:
      swift_endAccess();
      v220 = MEMORY[0x277D84FA0];
      goto LABEL_38;
    }

    v45 = sub_226E20614(v41, v43);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      goto LABEL_37;
    }

    v48 = *(*(v44 + 56) + 8 * v45);
    swift_endAccess();
    v220 = v48;

LABEL_38:
    v20 = &selRef_columnNameAtIndex_;
    if (!*(&v203 + 1) || (v208 & 1) != 0 || (v49 = *(&v207 + 1), v221[0] = v204, (v50 = *(&v204 + 1)) == 0) || (v211 & 1) != 0 || !v212 || (v51 = v213) == 0 || (BYTE8(v206) & 1) != 0 || (v210 & 1) != 0 || (v214 & 1) != 0 || (v215 & 1) != 0 || (v216 & 1) != 0)
    {

      goto LABEL_16;
    }

    v175 = v203;
    v176 = v212;
    v177 = *&v221[0];
    v52 = *(&v210 + 1);
    v173 = *(&v211 + 1);
    v53 = *(&v212 + 1);
    v170 = *(&v209 + 1);
    v171 = v206;
    v168 = *(&v214 + 1);
    v169 = *(&v213 + 1);
    v167 = *(&v215 + 1);
    v54 = [v23 featureLabel];
    if (!v54)
    {
      goto LABEL_131;
    }

    v55 = v54;
    v178 = v50;
    v174 = v51;
    v56 = sub_226E639C0();
    v58 = v57;

    swift_beginAccess();
    v59 = *(v183 + 16);
    if (*(v59 + 16))
    {
      v60 = sub_226E20614(v56, v58);
      v62 = v61;

      if (v62)
      {
        v63 = *(*(v59 + 56) + 8 * v60);
        swift_endAccess();

        goto LABEL_55;
      }
    }

    else
    {
    }

    swift_endAccess();
    v63 = MEMORY[0x277D84F90];
LABEL_55:
    v172 = v53;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_226E1FB8C(0, *(v63 + 2) + 1, 1, v63);
    }

    v65 = *(v63 + 2);
    v64 = *(v63 + 3);
    if (v65 >= v64 >> 1)
    {
      v63 = sub_226E1FB8C((v64 > 1), v65 + 1, 1, v63);
    }

    *(v63 + 2) = v65 + 1;
    *&v63[16 * v65 + 32] = v175;
    v66 = [v23 featureLabel];
    if (!v66)
    {
      goto LABEL_132;
    }

    v67 = v66;
    v68 = sub_226E639C0();
    v70 = v69;

    swift_beginAccess();

    v71 = *(v183 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v217 = *(v183 + 16);
    *(v183 + 16) = 0x8000000000000000;
    sub_226E39A20(v63, v68, v70, isUniquelyReferenced_nonNull_native, &qword_27D7B6930, &unk_226E696B0);

    *(v183 + 16) = v217;
    swift_endAccess();
    sub_226E5C704(&v219, [objc_allocWithZone(MEMORY[0x277CCA980]) initWithInteger_]);

    v73 = [v23 featureLabel];
    if (!v73)
    {
      goto LABEL_133;
    }

    v74 = v73;
    v75 = sub_226E639C0();
    v77 = v76;

    v78 = v220;
    swift_beginAccess();

    v79 = *(v185 + 16);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v217 = *(v185 + 16);
    *(v185 + 16) = 0x8000000000000000;
    sub_226E39A20(v78, v75, v77, v80, &qword_27D7B6CD0, &qword_226E696A0);

    *(v185 + 16) = v217;
    swift_endAccess();
    swift_beginAccess();
    v81 = *(v181 + 16);
    if (*(v81 + 16) && (v82 = sub_226E20614(v177, v178), (v83 & 1) != 0))
    {
      v84 = *(*(v81 + 56) + 8 * v82);
      swift_endAccess();
      v218 = v84;
    }

    else
    {
      swift_endAccess();
      v218 = MEMORY[0x277D84FA0];
    }

    v85 = [v23 featureLabel];
    if (!v85)
    {
      goto LABEL_134;
    }

    v86 = v85;
    v87 = sub_226E639C0();
    v89 = v88;

    sub_226E4B6D8(&v219, v87, v89);

    v90 = v218;
    swift_beginAccess();

    sub_226E1A598(v221, &v217, &qword_27D7B6B98, qword_226E68D60);
    v91 = *(v181 + 16);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v217 = *(v181 + 16);
    *(v181 + 16) = 0x8000000000000000;
    sub_226E39A20(v90, v177, v178, v92, &qword_27D7B6CC8, &unk_226E69690);
    sub_226E15E98(v221, &qword_27D7B6B98, qword_226E68D60);
    *(v181 + 16) = v217;
    swift_endAccess();
    v93 = [v23 featureLabel];
    if (!v93)
    {
      goto LABEL_135;
    }

    v94 = v93;
    v95 = sub_226E639C0();
    v97 = v96;

    swift_beginAccess();
    v98 = *(v180 + 16);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v217 = *(v180 + 16);
    v100 = v217;
    *(v180 + 16) = 0x8000000000000000;
    v102 = sub_226E20614(v95, v97);
    v103 = v100[2];
    v104 = (v101 & 1) == 0;
    v105 = v103 + v104;
    if (__OFADD__(v103, v104))
    {
      goto LABEL_115;
    }

    if (v100[3] >= v105)
    {
      if ((v99 & 1) == 0)
      {
        v165 = v101;
        sub_226E5DF50();
        v101 = v165;
      }
    }

    else
    {
      v166 = v101;
      sub_226E5DC24(v105, v99);
      v106 = sub_226E20614(v95, v97);
      v108 = v107 & 1;
      v101 = v166;
      if ((v166 & 1) != v108)
      {
        goto LABEL_136;
      }

      v102 = v106;
    }

    v109 = v217;
    *(v180 + 16) = v217;
    if ((v101 & 1) == 0)
    {
      v109[(v102 >> 6) + 8] |= 1 << v102;
      v110 = (v109[6] + 16 * v102);
      *v110 = v95;
      v110[1] = v97;
      *(v109[7] + 8 * v102) = 0;
      v111 = v109[2];
      v112 = __OFADD__(v111, 1);
      v113 = v111 + 1;
      if (v112)
      {
        goto LABEL_125;
      }

      v109[2] = v113;
    }

    v114 = v109[7];
    v115 = *(v114 + 8 * v102);
    v112 = __OFADD__(v115, 1);
    v116 = v115 + 1;
    if (v112)
    {
      goto LABEL_117;
    }

    *(v114 + 8 * v102) = v116;
    swift_endAccess();

    v117 = [v23 featureLabel];
    if (!v117)
    {
      goto LABEL_129;
    }

    v118 = v117;
    v119 = sub_226E639C0();
    v121 = v120;

    swift_beginAccess();
    v122 = *(v179 + 16);
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v217 = *(v179 + 16);
    *(v179 + 16) = 0x8000000000000000;
    sub_226E5E0B8(v119, v121, v123, v52);

    *(v179 + 16) = v217;
    swift_endAccess();
    v124 = [v23 featureLabel];
    if (!v124)
    {
      goto LABEL_130;
    }

    v125 = v124;
    v126 = sub_226E639C0();
    v128 = v127;

    swift_beginAccess();
    v129 = *(v182 + 16);
    if (*(v129 + 16))
    {
      v130 = sub_226E20614(v126, v128);
      v132 = v131;

      if (v132)
      {
        v133 = *(*(v129 + 56) + 8 * v130);
        swift_endAccess();

        goto LABEL_84;
      }
    }

    else
    {
    }

    swift_endAccess();
    v133 = &unk_283A7B378;
LABEL_84:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v133 = sub_226E5DED8(v133);
    }

    if (!*(v133 + 2))
    {
      goto LABEL_116;
    }

    v134 = *(v133 + 5);
    *(v133 + 4) = v173;
    *(v133 + 5) = v176;

    v135 = *(v133 + 2);

    if (v135 < 2)
    {
      goto LABEL_118;
    }

    v136 = *(v133 + 7);
    *(v133 + 6) = v177;
    *(v133 + 7) = v178;

    v137 = *(v133 + 2);

    if (v137 < 3)
    {
      goto LABEL_119;
    }

    v138 = *(v133 + 9);
    *(v133 + 8) = v172;
    *(v133 + 9) = v174;

    v139 = [v23 featureLabel];
    if (!v139)
    {
      goto LABEL_127;
    }

    v140 = v139;
    v141 = sub_226E639C0();
    v143 = v142;

    swift_beginAccess();

    v144 = *(v182 + 16);
    v145 = swift_isUniquelyReferenced_nonNull_native();
    v217 = *(v182 + 16);
    *(v182 + 16) = 0x8000000000000000;
    sub_226E39A20(v133, v141, v143, v145, &qword_27D7B6930, &unk_226E696B0);

    *(v182 + 16) = v217;
    swift_endAccess();
    v146 = [v23 featureLabel];
    if (!v146)
    {
      goto LABEL_128;
    }

    v147 = v146;
    v148 = sub_226E639C0();
    v150 = v149;

    swift_beginAccess();
    v151 = *(v184 + 16);
    if (!*(v151 + 16))
    {

LABEL_95:
      swift_endAccess();
      v155 = &unk_283A7B3C8;
      goto LABEL_96;
    }

    v152 = sub_226E20614(v148, v150);
    v154 = v153;

    if ((v154 & 1) == 0)
    {
      goto LABEL_95;
    }

    v155 = *(*(v151 + 56) + 8 * v152);
    swift_endAccess();

LABEL_96:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v156 = *(v155 + 2);
      if (!v156)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v155 = sub_226E5DEC4(v155);
      v156 = *(v155 + 2);
      if (!v156)
      {
        goto LABEL_121;
      }
    }

    *(v155 + 4) = *(v155 + 4) + v171;
    if (v156 == 1)
    {
      goto LABEL_120;
    }

    v157 = v170;
    if (*(v155 + 5) >= v170)
    {
      v157 = *(v155 + 5);
    }

    *(v155 + 5) = v157;
    if (v156 < 3)
    {
      goto LABEL_122;
    }

    *(v155 + 6) = v169;
    if (v156 == 3)
    {
      goto LABEL_124;
    }

    *(v155 + 7) = v168;
    if (v156 < 5)
    {
      goto LABEL_123;
    }

    *(v155 + 8) = v167;
    v158 = [v23 featureLabel];
    if (!v158)
    {
      goto LABEL_126;
    }

    v159 = v158;

    v160 = sub_226E639C0();
    v162 = v161;

    swift_beginAccess();

    v163 = *(v184 + 16);
    v164 = swift_isUniquelyReferenced_nonNull_native();
    v217 = *(v184 + 16);
    *(v184 + 16) = 0x8000000000000000;
    sub_226E39A20(v155, v160, v162, v164, &qword_27D7B6CB8, &qword_226E69678);

    *(v184 + 16) = v217;
    swift_endAccess();
LABEL_35:

    v11 = v186;
    v20 = &selRef_columnNameAtIndex_;
LABEL_16:

    v14 = v188;
  }

  v22 = v12;
  if (v14)
  {
LABEL_22:
    v188 = (v14 - 1) & v14;
    v23 = *(*(v11 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v23)
    {
      goto LABEL_108;
    }

    goto LABEL_26;
  }

  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_108;
    }

    v14 = *(v10 + 8 * v12);
    ++v22;
    if (v14)
    {
      goto LABEL_22;
    }
  }

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
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  result = sub_226E64010();
  __break(1u);
  return result;
}

uint64_t sub_226E61D78(uint64_t a1)
{
  v2 = sub_226E63600();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6C98, &qword_226E69668);
    v10 = sub_226E63E40();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_226E62550(&qword_27D7B6CA0, MEMORY[0x277CC99D0]);
      v18 = sub_226E63980();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226E62550(&qword_27D7B6CA8, MEMORY[0x277CC99D0]);
          v25 = sub_226E639A0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226E62098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_226E62210(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_226E63DE0())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6C90, &unk_226E69658);
      v3 = sub_226E63E40();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_226E63DE0();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x22AA8D480](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_226E63D00();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_226E63D10();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_226E63D00();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_226E63D10();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_226E62500(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_226E202A4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226E62550(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226E62648(void *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = *(v1 + 16);
  sub_226E639C0();
  v11 = @"==";
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v4 = sub_226E639C0();
  MEMORY[0x22AA8D010](v4);

  v5 = sub_226E639B0();

  v6 = *(v3 + 16);
  if (!v6)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v3 + 16 * (v6 >> 1);
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);

  v10 = sub_226E639B0();

  [a1 addStringClause:v11 fieldName:v5 expression:v10];
}

uint64_t sub_226E62768(uint64_t result)
{
  if (result && *(result + 16) == 1)
  {
    v11 = v1;
    v12 = v2;
    v13 = v3;
    sub_226E2233C(result + 32, v10);
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }

    swift_beginAccess();
    v7 = *(v1 + 24);
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
  }

  return result;
}

uint64_t sub_226E62808(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v2 + 24);
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v3 + OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_fields);

  sub_226E54128(v5, v6, &v11);
  if (!*(&v12 + 1))
  {
    return sub_226E625F4(&v11);
  }

  v9[10] = v21;
  v9[11] = v22;
  v9[12] = v23;
  v10 = v24;
  v9[6] = v17;
  v9[7] = v18;
  v9[8] = v19;
  v9[9] = v20;
  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v9[5] = v16;
  v9[0] = v11;
  v9[1] = v12;
  sub_226E5971C(v9);
  sub_226E58F10(v7, (v4 + 16));
  sub_226E625F4(&v11);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}