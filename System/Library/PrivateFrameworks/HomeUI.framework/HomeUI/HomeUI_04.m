uint64_t sub_20CF1ED0C()
{
  if (v0[23])
  {
    v4 = (*MEMORY[0x277D18148] + MEMORY[0x277D18148]);
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = sub_20CF1EE4C;

    return v4();
  }

  else
  {
    (*(v0[17] + 56))(v0[7], 1, 1, v0[16]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_20CF1EE4C(char a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_20CF1EF4C, 0, 0);
}

uint64_t sub_20CF1EF4C()
{
  v1 = *(v0 + 184);
  v2 = sub_20D564BD8();
  v3 = sub_20D564B98();

  sub_20D564D28();
  sub_20D5636A8();

  v4 = objc_allocWithZone(type metadata accessor for UtilityConfigurationHelper());
  v5 = v1;
  v37 = sub_20D036ED0(v5);

  v6 = sub_20D564C08();
  if (v7)
  {
    v8 = v7;
    v36 = v6;
  }

  else
  {
    v36 = sub_20D564BE8();
    v8 = v9;
  }

  v35 = *(v0 + 240);
  v10 = *(v0 + 144);
  v11 = *(v0 + 128);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = sub_20D564BE8();
  v18 = v17;
  v34 = v11[8];
  (*(v12 + 56))(&v10[v34], 1, 1, v13);
  *v10 = v14;
  *(v10 + 1) = v15;
  *(v10 + 2) = v36;
  *(v10 + 3) = v8;
  *(v10 + 4) = v16;
  *(v10 + 5) = v18;
  *(v10 + 6) = 0;
  v10[v11[9]] = v35;
  *&v10[v11[10]] = v37;
  v19 = sub_20D564B68();
  *(v0 + 40) = v19;
  *(v0 + 48) = sub_20CF26DDC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v19 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07370], v19);
  sub_20D5663C8();
  LOBYTE(v19) = sub_20D563968();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v19)
  {
    sub_20CF26E88(*(v0 + 160), &v10[v34]);
  }

  v21 = *(v0 + 152);
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  sub_20CEF9178(*(v0 + 160), v21, &unk_27C81CDF0);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v24 = *(v0 + 184);
    v25 = *(v0 + 152);
    sub_20CEF928C(*(v0 + 160), &unk_27C81CDF0);

    sub_20CEF928C(v25, &unk_27C81CDF0);
    v27 = *(v0 + 136);
    v26 = *(v0 + 144);
    v28 = *(v0 + 128);
    v29 = *(v0 + 56);
    sub_20CF26D1C(v26, v29);
    (*(v27 + 56))(v29, 0, 1, v28);
    sub_20CF26D80(v26);

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 152), *(v0 + 104));
    *(v0 + 200) = [objc_opt_self() sharedSession];
    v32 = swift_task_alloc();
    *(v0 + 208) = v32;
    *v32 = v0;
    v32[1] = sub_20CF1F318;
    v33 = *(v0 + 120);

    return MEMORY[0x28211ED00](v33, 0);
  }
}

uint64_t sub_20CF1F318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[27] = a1;
  v6[28] = a2;
  v6[29] = a3;

  v7 = v5[25];
  if (v3)
  {

    v8 = sub_20CF1F464;
  }

  else
  {

    v8 = sub_20CF1F57C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20CF1F464()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);

  (*(v3 + 8))(v2, v4);
  sub_20CEF928C(v1, &unk_27C81CDF0);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 128);
  v8 = *(v0 + 56);
  sub_20CF26D1C(v5, v8);
  (*(v6 + 56))(v8, 0, 1, v7);
  sub_20CF26D80(v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20CF1F57C()
{
  v46 = v0;
  v2 = v0[27];
  v1 = v0[28];
  sub_20CF26E34(v2, v1);
  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v4 = sub_20D5636C8();
  v5 = [v3 initWithData_];

  sub_20CEF5EF8(v2, v1);
  if (v5)
  {
    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v6 = v0[23];
    v7 = qword_281120C18;
    sub_20D565998();
    v8 = v6;
    v9 = sub_20D565968();
    v10 = sub_20D567EC8();

    v11 = os_log_type_enabled(v9, v10);
    v40 = v0[27];
    v41 = v0[28];
    v12 = v0[23];
    v13 = v0[20];
    v14 = v0[14];
    v15 = v0[15];
    v16 = v0[13];
    v43 = v0[29];
    v44 = v0[12];
    v17 = v0[11];
    v42 = v0[10];
    if (v11)
    {
      v39 = v5;
      v18 = swift_slowAlloc();
      v38 = v13;
      v19 = swift_slowAlloc();
      v45 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_20CEE913C(0xD000000000000019, 0x800000020D5CE910, &v45);
      *(v18 + 12) = 2080;
      v20 = sub_20D564BE8();
      v37 = v16;
      v22 = sub_20CEE913C(v20, v21, &v45);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_20CEB6000, v9, v10, "%s Fetched logo for %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v19, -1, -1);
      v23 = v18;
      v5 = v39;
      MEMORY[0x20F31FC70](v23, -1, -1);

      sub_20CEF5EF8(v40, v41);
      (*(v17 + 8))(v44, v42);
      (*(v14 + 8))(v15, v37);
      v24 = v38;
    }

    else
    {

      sub_20CEF5EF8(v40, v41);
      (*(v17 + 8))(v44, v42);
      (*(v14 + 8))(v15, v16);
      v24 = v13;
    }

    sub_20CEF928C(v24, &unk_27C81CDF0);
    *(v0[18] + 48) = v5;
  }

  else
  {
    v25 = v0[29];
    v26 = v0[23];
    v27 = v0[20];
    v29 = v0[14];
    v28 = v0[15];
    v30 = v0[13];
    sub_20CEF5EF8(v0[27], v0[28]);

    (*(v29 + 8))(v28, v30);
    sub_20CEF928C(v27, &unk_27C81CDF0);
  }

  v32 = v0[17];
  v31 = v0[18];
  v33 = v0[16];
  v34 = v0[7];
  sub_20CF26D1C(v31, v34);
  (*(v32 + 56))(v34, 0, 1, v33);
  sub_20CF26D80(v31);

  v35 = v0[1];

  return v35();
}

uint64_t sub_20CF1F96C()
{
  (*(v0[17] + 56))(v0[7], 1, 1, v0[16]);

  v1 = v0[1];

  return v1();
}

BOOL sub_20CF1FA20(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

void sub_20CF1FAAC(void *a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v6 = sub_20D5649A8();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = sub_20D565988();
  v58 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDC8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - v15;
  v17 = sub_20D564DC8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v54 - v23;
  if (!a1)
  {
    (*(v18 + 56))(v16, 1, 1, v17, v22);
    v27 = &qword_27C81CDC8;
    v28 = v16;
LABEL_5:
    sub_20CEF928C(v28, v27);
    goto LABEL_6;
  }

  v62[0] = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
  if (swift_dynamicCast())
  {
    v26 = v60;
LABEL_29:
    *v59 = v26;
    return;
  }

  v62[0] = a1;
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
  v30 = swift_dynamicCast();
  (*(v18 + 56))(v16, v30 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v32 = *(v18 + 32);
    v32(v24, v16, v17);
    v32(v20, v24, v17);
    v33 = (*(v18 + 88))(v20, v17);
    if (v33 == *MEMORY[0x277D182A0] || v33 == *MEMORY[0x277D18290])
    {
      goto LABEL_27;
    }

    if (v33 != *MEMORY[0x277D182B0])
    {
      *v59 = 13;
      (*(v18 + 8))(v20, v17);
      return;
    }

    goto LABEL_28;
  }

  sub_20CEF928C(v16, &qword_27C81CDC8);
  v62[0] = a1;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
  if (swift_dynamicCast())
  {
    if (v60 <= 4)
    {
      if (v60 >= 2)
      {
        if (v60 == 4)
        {
          v26 = 8;
          goto LABEL_29;
        }

        goto LABEL_6;
      }

LABEL_27:
      v26 = 14;
      goto LABEL_29;
    }

    if (v60 != 5)
    {
      if (v60 == 6)
      {
        goto LABEL_27;
      }

LABEL_6:
      v26 = 13;
      goto LABEL_29;
    }

LABEL_28:
    v26 = 16;
    goto LABEL_29;
  }

  v62[0] = a1;
  v34 = a1;
  sub_20CECF940(0, &qword_27C81CDD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v35 = v60;
  v36 = [v60 domain];
  v37 = sub_20D567838();
  v39 = v38;

  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v40 = qword_281120C18;
  sub_20D565998();
  sub_20D5663C8();
  v41 = sub_20D565968();
  v42 = sub_20D567E88();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v54 = v35;
    v44 = v37;
    v45 = v43;
    v46 = swift_slowAlloc();
    v62[0] = v46;
    *v45 = 136315394;
    *(v45 + 4) = sub_20CEE913C(0xD000000000000014, 0x800000020D5CE400, v62);
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_20CEE913C(v44, v39, v62);
    _os_log_impl(&dword_20CEB6000, v41, v42, "%s Error domain: %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v46, -1, -1);
    v47 = v45;
    v37 = v44;
    v35 = v54;
    MEMORY[0x20F31FC70](v47, -1, -1);
  }

  (*(v58 + 8))(v13, v11);
  v62[0] = v37;
  v62[1] = v39;
  v60 = 0x72656E45656D6F48;
  v61 = 0xEF726F7272457967;
  sub_20CEF44D8();
  v48 = sub_20D568618();

  if ((v48 & 1) == 0)
  {

    goto LABEL_6;
  }

  [v35 code];
  sub_20D564998();

  v50 = v56;
  v49 = v57;
  if ((*(v56 + 48))(v5, 1, v57) == 1)
  {
    v27 = &qword_27C81CDC0;
    v28 = v5;
    goto LABEL_5;
  }

  v51 = *(v50 + 32);
  v51(v10, v5, v49);
  v52 = v55;
  v51(v55, v10, v49);
  v53 = (*(v50 + 88))(v52, v49);
  if (v53 == *MEMORY[0x277D07548])
  {
    v26 = 3;
    goto LABEL_29;
  }

  if (v53 == *MEMORY[0x277D07540])
  {
    v26 = 4;
    goto LABEL_29;
  }

  if (v53 == *MEMORY[0x277D07538])
  {
    v26 = 11;
    goto LABEL_29;
  }

  *v59 = 13;
  (*(v50 + 8))(v52, v49);
}

uint64_t sub_20CF20430()
{
  v15 = *MEMORY[0x277D85DE8];
  sub_20D563378();
  swift_allocObject();
  sub_20D563368();
  v1 = sub_20D563358();
  v3 = v2;

  v4 = objc_opt_self();
  v5 = sub_20D5636C8();
  *&v13 = 0;
  v6 = [v4 JSONObjectWithData:v5 options:0 error:&v13];

  v7 = v13;
  if (v6)
  {
    sub_20D568628();
    sub_20CEF5EF8(v1, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = v7;
    v9 = sub_20D5635D8();

    swift_willThrow();
    sub_20CEF5EF8(v1, v3);

    v13 = 0u;
    v14 = 0u;
  }

  v11[0] = v13;
  v11[1] = v14;
  if (!*(&v14 + 1))
  {
    return 0;
  }

  sub_20CEC80B0(v11, &v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E30);
  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

id HomeEnergyManagerHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HomeEnergyManagerHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeEnergyManagerHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CF2078C(uint64_t a1, uint64_t a2)
{
  if (*v2 == 8)
  {
    v5 = sub_20D5677F8();
    v6 = HULocalizedString(v5);

    sub_20D567838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20D5BC410;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_20CED4498();
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    sub_20D5663C8();
    v8 = sub_20D567808();
  }

  else
  {
    v10 = sub_20D5677F8();
    v11 = HULocalizedString(v10);

    v8 = sub_20D567838();
  }

  return v8;
}

HomeUI::UtilityOnboardingError_optional __swiftcall UtilityOnboardingError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20CF20A48()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  return sub_20D568D98();
}

uint64_t sub_20CF20A90()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  return sub_20D568D98();
}

uint64_t sub_20CF20AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20CF268BC();
  v5 = sub_20CED014C();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_20CF20B3C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_20D5663C8();
}

uint64_t sub_20CF20B48(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CF26EF8;

  return v6(a1);
}

uint64_t sub_20CF20C40(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CF20D38;

  return v6(a1);
}

uint64_t sub_20CF20D38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20CF20E30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF934C;

  return sub_20CF1AD10(a1, v4, v5, v6);
}

uint64_t sub_20CF20EE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF934C;

  return sub_20CF1CB48(a1, v4, v5, v7, v6);
}

uint64_t sub_20CF20FA4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_20CF21098;

  return v5(v2 + 32);
}

uint64_t sub_20CF21098()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_20CF211AC(unint64_t a1)
{
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_69;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_70;
  }

LABEL_3:
  if (v7 < 1)
  {
    __break(1u);
    return result;
  }

  v47 = v6;
  v48 = v3;
  v49 = v2;
  v8 = 0;
  v46[1] = *MEMORY[0x277CBD0C8];
  v46[2] = *MEMORY[0x277CBCFC0];
  v46[3] = *MEMORY[0x277CBD098];
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x20F31DD20](v8, a1);
    }

    else
    {
      v9 = *(a1 + 8 * v8 + 32);
    }

    v10 = v9;
    v12 = *&v9[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey];
    v11 = *&v9[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey + 8];
    v13 = v12 == 1701667150 && v11 == 0xE400000000000000;
    if (v13 || (sub_20D568BF8() & 1) != 0 || (v12 == 0x6D614E7473726946 ? (v14 = v11 == 0xE900000000000065) : (v14 = 0), v14 || (sub_20D568BF8() & 1) != 0 || (v12 == 0x656D614E7473614CLL ? (v15 = v11 == 0xE800000000000000) : (v15 = 0), v15 || (sub_20D568BF8() & 1) != 0)))
    {
      v16 = sub_20D567838();
      sub_20CEE9D8C(&v51, v16, v17);

      v18 = sub_20D567838();
      v20 = v19;
LABEL_24:
      sub_20CEE9D8C(&v51, v18, v20);

      goto LABEL_25;
    }

    v21 = v12 == 0x656E6F6850 && v11 == 0xE500000000000000;
    if (v21 || (sub_20D568BF8() & 1) != 0 || (v12 == 0x6C69616D45 ? (v23 = v11 == 0xE500000000000000) : (v23 = 0), v23 || (sub_20D568BF8() & 1) != 0 || v12 == 0x4C73736572646441 && v11 == 0xEC00000031656E69 || ((v24 = sub_20D568BF8(), v12 == 2037672259) ? (v25 = v11 == 0xE400000000000000) : (v25 = 0), !v25 ? (v26 = 0) : (v26 = 1), (v24 & 1) != 0 || (v26 & 1) != 0 || ((v27 = sub_20D568BF8(), v12 == 0x6574617453) ? (v28 = v11 == 0xE500000000000000) : (v28 = 0), !v28 ? (v29 = 0) : (v29 = 1), (v27 & 1) != 0 || (v29 & 1) != 0 || (sub_20D568BF8() & 1) != 0 || v12 == 0x6F436C6174736F50 && v11 == 0xEA00000000006564 || (sub_20D568BF8() & 1) != 0 || v12 == 0x7972746E756F43 && v11 == 0xE700000000000000 || (sub_20D568BF8() & 1) != 0))))
    {
      v18 = sub_20D567838();
      v20 = v22;
      goto LABEL_24;
    }

LABEL_25:
    ++v8;
  }

  while (v7 != v8);
  v30 = v52;
  v3 = v48;
  v2 = v49;
  v6 = v47;
  v31 = *(v52 + 16);
  if (v31)
  {
    while (1)
    {
      v32 = sub_20CF4A724(v31, 0);
      a1 = sub_20CF4FDC0(&v51, v32 + 4, v31, v30);
      sub_20CEC80DC();
      if (a1 == v31)
      {
        break;
      }

      __break(1u);
LABEL_69:
      result = sub_20D568768();
      v7 = result;
      if (result)
      {
        goto LABEL_3;
      }

LABEL_70:
      v30 = MEMORY[0x277D84FA0];
      v31 = *(MEMORY[0x277D84FA0] + 16);
      if (!v31)
      {
        goto LABEL_71;
      }
    }
  }

  else
  {
LABEL_71:

    v32 = MEMORY[0x277D84F90];
  }

  v51 = MEMORY[0x277D84F90];
  v33 = sub_20D07AC98(v32);

  sub_20CF6BDDC(v33);
  v34 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  MEMORY[0x20F31CEE0]();
  if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  v35 = v51;
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v36 = qword_281120C18;
  sub_20D565998();
  v37 = sub_20D565968();
  v38 = sub_20D567EC8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v50 = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_20CEE913C(0xD000000000000018, 0x800000020D5CE970, &v50);
    *(v39 + 12) = 2080;
    sub_20D5663C8();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820770);
    v42 = MEMORY[0x20F31CF30](v35, v41);
    v44 = v43;

    v45 = sub_20CEE913C(v42, v44, &v50);

    *(v39 + 14) = v45;
    _os_log_impl(&dword_20CEB6000, v37, v38, "%s Contact keys: %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v40, -1, -1);
    MEMORY[0x20F31FC70](v39, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return v35;
}

BOOL sub_20CF21958(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_20D565988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v29 - v13;
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v30[0] = a3;
    v30[1] = a4;
    v29[0] = a1;
    v29[1] = a2;
    v16 = sub_20D563838();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    sub_20CEF44D8();
    v17 = sub_20D5685E8();
    v19 = v18;
    v21 = v20;
    sub_20CEF928C(v14, &qword_27C81CE50);
    v22 = (v21 & 1) == 0 && ((v17 ^ v19) & 0xFFFFFFFFFFFFC000) != 0;
  }

  else
  {
    v22 = 1;
  }

  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v23 = qword_281120C18;
  sub_20D565998();
  sub_20D5663C8();
  v24 = sub_20D565968();
  v25 = sub_20D567EC8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30[0] = v27;
    *v26 = 136315650;
    *(v26 + 4) = sub_20CEE913C(0xD00000000000001ELL, 0x800000020D5CE950, v30);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_20CEE913C(a1, a2, v30);
    *(v26 + 22) = 1024;
    *(v26 + 24) = v22;
    _os_log_impl(&dword_20CEB6000, v24, v25, "%s Regex pattern: %s Validation: %{BOOL}d", v26, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v27, -1, -1);
    MEMORY[0x20F31FC70](v26, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  return v22;
}

uint64_t sub_20CF21CB4()
{
  v0 = sub_20D565988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(MEMORY[0x277CBDB70]);
  v5 = sub_20D5677F8();
  v6 = [v4 initWithStringValue_];

  v7 = [v6 fullyQualifiedDigits];
  if (!v7)
  {
    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v8 = qword_281120C18;
    sub_20D565998();
    v9 = sub_20D565968();
    v10 = sub_20D567EC8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_20CEE913C(0xD00000000000001ELL, 0x800000020D5CE930, &v17);
      _os_log_impl(&dword_20CEB6000, v9, v10, "%s could not get fullyQualifiedDigits", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x20F31FC70](v12, -1, -1);
      MEMORY[0x20F31FC70](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    v7 = [v6 digits];
  }

  v13 = v7;
  v14 = sub_20D567838();

  return v14;
}

uint64_t sub_20CF21F20(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  sub_20CEED668(0x4C73736572646441, 0xEC00000031656E69);
  if (v2)
  {
    sub_20D5663C8();
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  sub_20CEED668(0x4C73736572646441, 0xEC00000032656E69);
  if (v3)
  {
    sub_20D5663C8();
    if (*(a1 + 16))
    {
      goto LABEL_6;
    }

LABEL_18:
    if (!*(a1 + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

LABEL_6:
  sub_20CEED668(0x4C73736572646441, 0xEC00000033656E69);
  if (v4)
  {
    sub_20D5663C8();
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  sub_20CEED668(2037672259, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_20D5663C8();
  if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

LABEL_19:
  sub_20CEED668(0x6574617453, 0xE500000000000000);
  if (v6)
  {
    sub_20D5663C8();
    if (!*(a1 + 16))
    {
      goto LABEL_29;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

  sub_20CEED668(0x6F436C6174736F50, 0xEA00000000006564);
  if (v7)
  {
    sub_20D5663C8();
    if (!*(a1 + 16))
    {
      goto LABEL_29;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

  sub_20CEED668(0x7972746E756F43, 0xE700000000000000);
  if (v8)
  {
    sub_20D5663C8();
  }

LABEL_29:
  v9 = objc_allocWithZone(sub_20D564CA8());
  return sub_20D564C38();
}

uint64_t sub_20CF22204(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_20D565988();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CF222C4, 0, 0);
}

uint64_t sub_20CF222C4()
{
  sub_20D564D98();
  v1 = sub_20D564D58();
  v0[7] = v1;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_20CF22378;
  v4 = v0[2];
  v3 = v0[3];

  return MEMORY[0x282172640](v4, v3, v1);
}

uint64_t sub_20CF22378(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 72) = a1;

  v4 = *(v3 + 56);
  if (v1)
  {

    v5 = sub_20CF226B0;
  }

  else
  {

    v5 = sub_20CF224C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

char *sub_20CF224C0()
{
  v1 = *(v0 + 72);
  if (v1 >> 62)
  {
    v2 = sub_20D568768();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:

    v4 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v21 = MEMORY[0x277D84F90];
  result = sub_20CEF0AC8(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = v21;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    do
    {
      MEMORY[0x20F31DD20](v5, *(v0 + 72));
      v6 = sub_20D564D18();
      v8 = v7;
      swift_unknownObjectRelease();
      v10 = *(v21 + 16);
      v9 = *(v21 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_20CEF0AC8((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      *(v21 + 16) = v10 + 1;
      v11 = v21 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
    }

    while (v2 != v5);
  }

  else
  {
    v12 = (*(v0 + 72) + 32);
    do
    {
      v13 = *v12;
      v14 = sub_20D564D18();
      v16 = v15;

      v18 = *(v21 + 16);
      v17 = *(v21 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_20CEF0AC8((v17 > 1), v18 + 1, 1);
      }

      *(v21 + 16) = v18 + 1;
      v19 = v21 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      ++v12;
      --v2;
    }

    while (v2);
  }

LABEL_17:

  v20 = *(v0 + 8);

  return v20(v4);
}

uint64_t sub_20CF226B0()
{
  v14 = v0;
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v1 = qword_281120C18;
  sub_20D565998();
  v2 = sub_20D565968();
  v3 = sub_20D567EC8();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_20CEE913C(0xD000000000000018, 0x800000020D5CE750, &v13);
    _os_log_impl(&dword_20CEB6000, v2, v3, "%s No utilities found", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F31FC70](v9, -1, -1);
    MEMORY[0x20F31FC70](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);

  v10 = v0[1];
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_20CF2285C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_20D565988();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_20D563818();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CF22990, 0, 0);
}

uint64_t sub_20CF22990()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  sub_20D564A08();
  v5 = [v4 uniqueIdentifier];
  sub_20D5637E8();

  v6 = sub_20D5637B8();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_20CF22AA0;

  return MEMORY[0x28215C940](v6, v8);
}

uint64_t sub_20CF22AA0(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_20CF22BA0, 0, 0);
}

uint64_t sub_20CF22BA0()
{
  v35 = v0;
  if (*(v0 + 96))
  {
    v1 = sub_20D5649F8();
    *(v0 + 104) = v1;
    if (v1)
    {
      v2 = v1;
      if (qword_28111FAF0 != -1)
      {
        swift_once();
      }

      v3 = qword_281120C18;
      sub_20D565998();
      v4 = sub_20D565968();
      v5 = sub_20D567EC8();
      v6 = os_log_type_enabled(v4, v5);
      v7 = *(v0 + 56);
      v8 = *(v0 + 24);
      v9 = *(v0 + 32);
      if (v6)
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v34 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_20CEE913C(0xD000000000000014, 0x800000020D5CE770, &v34);
        _os_log_impl(&dword_20CEB6000, v4, v5, "%s Finding utilities for site's location.", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x20F31FC70](v11, -1, -1);
        MEMORY[0x20F31FC70](v10, -1, -1);
      }

      (*(v9 + 8))(v7, v8);
      sub_20D564D98();
      [v2 coordinate];
      v13 = v12;
      v15 = v14;
      v16 = sub_20D564D58();
      *(v0 + 112) = v16;
      v17 = swift_task_alloc();
      *(v0 + 120) = v17;
      *v17 = v0;
      v17[1] = sub_20CF23024;
      v18.n128_u64[0] = v13;
      v19.n128_u64[0] = v15;

      return MEMORY[0x282172610](v16, v18, v19);
    }

    else
    {
      *(v0 + 136) = [*(v0 + 16) hf_energyManager];
      v33 = (*MEMORY[0x277D13228] + MEMORY[0x277D13228]);
      v31 = swift_task_alloc();
      *(v0 + 144) = v31;
      *v31 = v0;
      v31[1] = sub_20CF232B0;

      return v33();
    }
  }

  else
  {
    if (qword_28111FAF0 != -1)
    {
      swift_once();
    }

    v20 = qword_281120C18;
    sub_20D565998();
    v21 = sub_20D565968();
    v22 = sub_20D567EA8();
    v23 = os_log_type_enabled(v21, v22);
    v25 = *(v0 + 32);
    v24 = *(v0 + 40);
    v26 = *(v0 + 24);
    if (v23)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_20CEE913C(0xD000000000000014, 0x800000020D5CE770, &v34);
      _os_log_impl(&dword_20CEB6000, v21, v22, "%s Could not get energy site!", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x20F31FC70](v28, -1, -1);
      MEMORY[0x20F31FC70](v27, -1, -1);
    }

    (*(v25 + 8))(v24, v26);

    v29 = *(v0 + 8);
    v30 = MEMORY[0x277D84F90];

    return v29(v30);
  }
}

uint64_t sub_20CF23024(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 112);
  if (v1)
  {

    v7 = sub_20CF23210;
  }

  else
  {

    *(v5 + 128) = a1;
    v7 = sub_20CF23170;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20CF23170()
{

  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_20CF23210()
{

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t sub_20CF232B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;

  return MEMORY[0x2822009F8](sub_20CF233CC, 0, 0);
}

uint64_t sub_20CF233CC()
{
  v19 = v0;
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v1 = qword_281120C18;
  sub_20D565998();
  sub_20D5663C8();
  v2 = sub_20D565968();
  v3 = sub_20D567EC8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[6];
    v7 = v0[3];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_20CEE913C(0xD000000000000014, 0x800000020D5CE770, &v18);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20CEE913C(v5, v4, &v18);
    _os_log_impl(&dword_20CEB6000, v2, v3, "%s Finding all utilities in %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);

    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v11 = v0[6];
    v12 = v0[3];
    v13 = v0[4];

    (*(v13 + 8))(v11, v12);
  }

  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_20CF2362C;
  v16 = v0[19];
  v15 = v0[20];

  return sub_20CF22204(v16, v15);
}

uint64_t sub_20CF2362C(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_20CF2374C, 0, 0);
}

uint64_t sub_20CF2374C()
{

  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_20CF237E4(uint64_t a1, char a2)
{
  *(v2 + 240) = a2;
  *(v2 + 16) = a1;
  v3 = sub_20D565988();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  v4 = sub_20D563818();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CF2391C, 0, 0);
}

uint64_t sub_20CF2391C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  v5 = [v4 name];
  v6 = sub_20D567838();
  v8 = v7;

  v0[11] = v6;
  v0[12] = v8;
  v9 = [v4 uniqueIdentifier];
  sub_20D5637E8();

  v10 = sub_20D5637B8();
  v12 = v11;
  v0[13] = v10;
  v0[14] = v11;
  (*(v2 + 8))(v1, v3);
  sub_20D564A08();
  sub_20D5663C8();
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_20CF23A70;

  return MEMORY[0x28215C940](v10, v12);
}

uint64_t sub_20CF23A70(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_20CF23B70, 0, 0);
}

uint64_t sub_20CF23B70()
{
  if (!v0[16])
  {
    v5 = v0[11];
    v4 = v0[12];

    sub_20CF1D0C8(0, 0xD000000000000019, 0x800000020D5CE790, v5, v4);
    goto LABEL_5;
  }

  sub_20D5649E8();
  if (v1)
  {
    v3 = v0[11];
    v2 = v0[12];

    sub_20CF1D0C8(0, 0xD000000000000011, 0x800000020D5CE8C0, v3, v2);

LABEL_5:

    v6 = v0[1];

    return v6(0);
  }

  sub_20D5649C8();
  v0[17] = sub_20D5649B8();
  v11 = (*MEMORY[0x277D07598] + MEMORY[0x277D07598]);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_20CF23D3C;
  v10 = v0[13];
  v9 = v0[14];

  return v11(v10, v9);
}

uint64_t sub_20CF23D3C(char a1)
{
  *(*v1 + 241) = a1;

  return MEMORY[0x2822009F8](sub_20CF23E78, 0, 0);
}

uint64_t sub_20CF23E78()
{
  if (*(v0 + 241) == 1)
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 96);
    v3 = 0x800000020D5CE8A0;
    v4 = 0xD000000000000014;
LABEL_10:
    sub_20CF1D0C8(0, v4, v3, v1, v2);

    v7 = *(v0 + 8);

    return v7(0);
  }

  if (([*(v0 + 16) hf_currentUserIsAdministrator] & 1) == 0)
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 96);
    v4 = 0x696D646120746F6ELL;
    v3 = 0xE90000000000006ELL;
    goto LABEL_10;
  }

  *(v0 + 152) = sub_20D564D98();
  if ((sub_20D564D38() & 1) == 0)
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 96);
    v4 = 0xD000000000000029;
    v3 = 0x800000020D5CE7B0;
    goto LABEL_10;
  }

  sub_20D567C18();
  *(v0 + 160) = sub_20D567C08();
  v6 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF2403C, v6, v5);
}

uint64_t sub_20CF2403C()
{

  *(v0 + 242) = [objc_opt_self() isUsingiCloud];

  return MEMORY[0x2822009F8](sub_20CF240C0, 0, 0);
}

uint64_t sub_20CF240C0()
{
  v57 = v0;
  if (*(v0 + 242))
  {
    v1 = [objc_opt_self() sharedDispatcher];
    v2 = [v1 homeManager];

    if (v2 && (v3 = [v2 hasOptedToHH2], v2, (v3 & 1) != 0))
    {
      if ((*(v0 + 240) & 1) == 0)
      {
        v13 = 1;
        sub_20CF1D0C8(1, 0xD000000000000018, 0x800000020D5CE800, *(v0 + 88), *(v0 + 96));
        goto LABEL_11;
      }

      v4 = sub_20D5649F8();
      v5 = *(v0 + 16);
      if (v4)
      {
        v6 = v4;
        v7 = [v5 location];
        if (v7)
        {
        }

        else
        {
          if (qword_28111FAF0 != -1)
          {
            swift_once();
          }

          v29 = qword_281120C18;
          sub_20D565998();
          sub_20D5663C8();
          v30 = sub_20D565968();
          v31 = sub_20D567EA8();

          if (os_log_type_enabled(v30, v31))
          {
            v33 = *(v0 + 88);
            v32 = *(v0 + 96);
            v54 = *(v0 + 56);
            v35 = *(v0 + 24);
            v34 = *(v0 + 32);
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v56 = v37;
            *v36 = 136315394;
            *(v36 + 4) = sub_20CEE913C(0xD000000000000032, 0x800000020D5CE860, &v56);
            *(v36 + 12) = 2080;
            *(v36 + 14) = sub_20CEE913C(v33, v32, &v56);
            _os_log_impl(&dword_20CEB6000, v30, v31, "%s have site.location BUT home.location is nil for home (%s)", v36, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F31FC70](v37, -1, -1);
            MEMORY[0x20F31FC70](v36, -1, -1);

            (*(v34 + 8))(v54, v35);
          }

          else
          {
            v42 = *(v0 + 56);
            v43 = *(v0 + 24);
            v44 = *(v0 + 32);

            (*(v44 + 8))(v42, v43);
          }
        }

        *(v0 + 208) = v6;
        [v6 coordinate];
        v46 = v45;
        v48 = v47;

        v49 = sub_20D564D58();
        *(v0 + 216) = v49;
        v50 = swift_task_alloc();
        *(v0 + 224) = v50;
        *v50 = v0;
        v50[1] = sub_20CF24988;
        v51.n128_u64[0] = v46;
        v52.n128_u64[0] = v48;

        return MEMORY[0x282172610](v49, v51, v52);
      }

      v12 = [*(v0 + 16) location];
      *(v0 + 168) = v12;
      if (v12)
      {
        v16 = qword_28111FAF0;
        v17 = v12;
        if (v16 != -1)
        {
          swift_once();
        }

        v18 = qword_281120C18;
        *(v0 + 176) = qword_281120C18;
        v19 = v18;
        sub_20D565998();
        sub_20D5663C8();
        v20 = sub_20D565968();
        v21 = sub_20D567EC8();

        if (os_log_type_enabled(v20, v21))
        {
          v23 = *(v0 + 88);
          v22 = *(v0 + 96);
          v53 = *(v0 + 48);
          v25 = *(v0 + 24);
          v24 = *(v0 + 32);
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v56 = v27;
          *v26 = 136315394;
          *(v26 + 4) = sub_20CEE913C(0xD000000000000032, 0x800000020D5CE860, &v56);
          *(v26 + 12) = 2080;
          *(v26 + 14) = sub_20CEE913C(v23, v22, &v56);
          _os_log_impl(&dword_20CEB6000, v20, v21, "%s updating site location for home (%s)", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F31FC70](v27, -1, -1);
          MEMORY[0x20F31FC70](v26, -1, -1);

          v28 = *(v24 + 8);
          v28(v53, v25);
        }

        else
        {
          v38 = *(v0 + 48);
          v39 = *(v0 + 24);
          v40 = *(v0 + 32);

          v28 = *(v40 + 8);
          v28(v38, v39);
        }

        *(v0 + 184) = v28;
        v55 = (*MEMORY[0x277D07640] + MEMORY[0x277D07640]);
        v41 = swift_task_alloc();
        *(v0 + 192) = v41;
        *v41 = v0;
        v41[1] = sub_20CF24798;

        return v55(v17);
      }

      v8 = *(v0 + 88);
      v9 = *(v0 + 96);
      v10 = 0x6E6F697461636F6CLL;
      v11 = 0xEF6C696E20736920;
    }

    else
    {
      v8 = *(v0 + 88);
      v9 = *(v0 + 96);
      v10 = 0x32686820746F6ELL;
      LOBYTE(v12) = 0;
      v11 = 0xE700000000000000;
    }
  }

  else
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    v10 = 0xD000000000000017;
    v11 = 0x800000020D5CE7E0;
    LOBYTE(v12) = 0;
  }

  sub_20CF1D0C8(v12, v10, v11, v8, v9);
  v13 = 0;
LABEL_11:

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_20CF24798()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_20CF24D00;
  }

  else
  {
    v2 = sub_20CF248AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CF248AC()
{
  v1 = v0[21];
  v0[26] = v1;
  [v1 coordinate];
  v3 = v2;
  v5 = v4;

  v6 = sub_20D564D58();
  v0[27] = v6;
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = sub_20CF24988;
  v8.n128_u64[0] = v3;
  v9.n128_u64[0] = v5;

  return MEMORY[0x282172610](v6, v8, v9);
}

uint64_t sub_20CF24988(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 216);
  if (v1)
  {

    v7 = sub_20CF24BE8;
  }

  else
  {

    *(v5 + 232) = a1;
    v7 = sub_20CF24AD4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20CF24AD4()
{
  v1 = *(v0[29] + 16);

  v2 = v0[26];
  if (v1)
  {
    v3 = 0x800000020D5CE820;
    v4 = 1;
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000018;
    v3 = 0x800000020D5CE840;
    v4 = 0;
  }

  sub_20CF1D0C8(v4, v5, v3, v0[11], v0[12]);

  v6 = v0[1];

  return v6(v1 != 0);
}

uint64_t sub_20CF24BE8()
{
  v1 = *(MEMORY[0x277D84F90] + 16);

  v2 = v0[26];
  if (v1)
  {
    v3 = 0x800000020D5CE820;
    v4 = 1;
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000018;
    v3 = 0x800000020D5CE840;
    v4 = 0;
  }

  sub_20CF1D0C8(v4, v5, v3, v0[11], v0[12]);

  v6 = v0[1];

  return v6(v1 != 0);
}

uint64_t sub_20CF24D00()
{
  v32 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  sub_20D565998();
  sub_20D5663C8();
  v3 = v1;
  v4 = sub_20D565968();
  v5 = sub_20D567EA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  if (v6)
  {
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v29 = *(v0 + 24);
    v30 = *(v0 + 40);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v8;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v11 = 136315650;
    *(v11 + 4) = sub_20CEE913C(0xD000000000000032, 0x800000020D5CE860, &v31);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_20CEE913C(v9, v10, &v31);
    *(v11 + 22) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v16;
    *v12 = v16;
    _os_log_impl(&dword_20CEB6000, v4, v5, "%s error updating location for home (%s): %@", v11, 0x20u);
    sub_20CEF928C(v12, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v14, -1, -1);
    MEMORY[0x20F31FC70](v11, -1, -1);

    v13(v30, v29);
  }

  else
  {
    v17 = *(v0 + 40);
    v18 = *(v0 + 24);

    v8(v17, v18);
  }

  v19 = *(v0 + 168);
  *(v0 + 208) = v19;
  [v19 coordinate];
  v21 = v20;
  v23 = v22;

  v24 = sub_20D564D58();
  *(v0 + 216) = v24;
  v25 = swift_task_alloc();
  *(v0 + 224) = v25;
  *v25 = v0;
  v25[1] = sub_20CF24988;
  v26.n128_u64[0] = v21;
  v27.n128_u64[0] = v23;

  return MEMORY[0x282172610](v24, v26, v27);
}

BOOL sub_20CF24FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20D565988();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D5678D8();
  v11 = v10;
  v13 = v10 >= a3 && v10 <= a4;
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v14 = qword_281120C18;
  sub_20D565998();
  v15 = sub_20D565968();
  v16 = sub_20D567EC8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v21 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136316162;
    *(v18 + 4) = sub_20CEE913C(0xD00000000000001ALL, 0x800000020D5CE5D0, &v22);
    *(v18 + 12) = 2048;
    *(v18 + 14) = a3;
    *(v18 + 22) = 2048;
    *(v18 + 24) = a4;
    *(v18 + 32) = 2048;
    *(v18 + 34) = v11;
    *(v18 + 42) = 1024;
    *(v18 + 44) = v13;
    _os_log_impl(&dword_20CEB6000, v15, v16, "%s Count validation: (min: %ld max: %ld length: %ld --> %{BOOL}d)", v18, 0x30u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x20F31FC70](v19, -1, -1);
    MEMORY[0x20F31FC70](v18, -1, -1);

    (*(v7 + 8))(v9, v21);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return v13;
}

BOOL _s6HomeUI0A19EnergyManagerHelperC15redirectToOAuthySbs5Error_pFZ_0(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
  result = 0;
  if (swift_dynamicCast())
  {
    v2 = sub_20D564DE8();
    if (v2 == sub_20D564DE8())
    {
      return 1;
    }

    v3 = sub_20D564DE8();
    if (v3 == sub_20D564DE8())
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_20CF252E8()
{
  result = qword_27C81CDE0;
  if (!qword_27C81CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CDE0);
  }

  return result;
}

uint64_t dispatch thunk of HomeEnergyManagerHelper.updateHomeEnergyAvailableFeatures()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CEF7788;

  return v5();
}

uint64_t dispatch thunk of HomeEnergyManagerHelper.fetchPillAdvice()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CF19BCC;

  return v5();
}

uint64_t dispatch thunk of HomeEnergyManagerHelper.updateHomeLocation()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CEF5FFC;

  return v5();
}

uint64_t dispatch thunk of HomeEnergyManagerHelper.homeLocationRegion()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CF26EFC;

  return v5();
}

uint64_t dispatch thunk of HomeEnergyManagerHelper.utilityDetails()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CF26F00;

  return v5();
}

uint64_t dispatch thunk of HomeEnergyManagerHelper.revokeSubscription()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CF1CFCC;

  return v5();
}

uint64_t dispatch thunk of static HomeEnergyManagerHelper.shouldShowConnectAccountBanner(for:checkLocation:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 176) + **(v2 + 176));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CF26F00;

  return v8(a1, a2);
}

uint64_t dispatch thunk of static HomeEnergyManagerHelper.utilityLookup(home:)(uint64_t a1)
{
  v6 = (*(v1 + 184) + **(v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CF1CFCC;

  return v6(a1);
}

uint64_t dispatch thunk of static HomeEnergyManagerHelper.allUtilitiesInRegion(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 192) + **(v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CF26F00;

  return v8(a1, a2);
}

uint64_t dispatch thunk of static HomeEnergyManagerHelper.utilityInformation(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 200) + **(v2 + 200));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CEF7788;

  return v8(a1, a2);
}

uint64_t getEnumTagSinglePayload for UtilityOnboardingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UtilityOnboardingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for Utility()
{
  result = qword_27C81CE00;
  if (!qword_27C81CE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CF260FC()
{
  sub_20CF261B8();
  if (v0 <= 0x3F)
  {
    sub_20CF26220();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UtilityConfigurationHelper();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20CF261B8()
{
  if (!qword_28111FB40)
  {
    sub_20CECF940(255, &unk_28111FB50);
    v0 = sub_20D568538();
    if (!v1)
    {
      atomic_store(v0, &qword_28111FB40);
    }
  }
}

void sub_20CF26220()
{
  if (!qword_27C81CE10)
  {
    sub_20D5636B8();
    v0 = sub_20D568538();
    if (!v1)
    {
      atomic_store(v0, &qword_27C81CE10);
    }
  }
}

uint64_t sub_20CF26284(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CEF934C;

  return sub_20CF20FA4(a1, v4);
}

uint64_t sub_20CF2633C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF934C;

  return sub_20CF1C6D4(v2, v3);
}

uint64_t sub_20CF263E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF934C;

  return sub_20CF1C184(v2, v3);
}

uint64_t sub_20CF26494()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF934C;

  return sub_20CF1BC00(v2, v3);
}

uint64_t sub_20CF26540()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF934C;

  return sub_20CF1AA2C(v2, v3);
}

uint64_t sub_20CF265EC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CEF934C;

  return sub_20CF19E44(v2);
}

uint64_t sub_20CF26698()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF934C;

  return sub_20CF197C4(v2, v3);
}

uint64_t sub_20CF26744()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF934C;

  return sub_20CF1DCA0(v2, v3);
}

uint64_t sub_20CF267F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20CEF934C;

  return sub_20CF1D4C0(v2, v3, v4);
}

unint64_t sub_20CF268BC()
{
  result = qword_27C81CE28;
  if (!qword_27C81CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CE28);
  }

  return result;
}

uint64_t sub_20CF26910(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CEF934C;

  return sub_20CF20B48(a1, v4);
}

uint64_t sub_20CF269C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CEF934C;

  return sub_20CF20B48(a1, v4);
}

uint64_t objectdestroy_9Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 40));

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_20CF26AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF934C;

  return sub_20CF1E950(a1, v4, v5, v7, v6);
}

uint64_t sub_20CF26B90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CEF5FFC;

  return sub_20CF20C40(a1, v4);
}

uint64_t sub_20CF26C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF26CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Utility();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF26D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Utility();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF26D80(uint64_t a1)
{
  v2 = type metadata accessor for Utility();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CF26DDC()
{
  result = qword_27C81BEB0;
  if (!qword_27C81BEB0)
  {
    sub_20D564B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81BEB0);
  }

  return result;
}

uint64_t sub_20CF26E34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20CF26E88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t HUControllableItemCollectionViewController.present(viewController:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_20D567C18();
  v2[5] = sub_20D567C08();
  v4 = sub_20D567BA8();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_20CF26FA0, v4, v3);
}

uint64_t sub_20CF26FA0()
{
  v1 = v0[2];
  v2 = sub_20D567C08();
  v0[8] = v2;
  v3 = swift_allocObject();
  v0[9] = v3;
  swift_unknownObjectWeakInit();
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_20CF270D8;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v2, v6, 0xD000000000000018, 0x800000020D5CE990, sub_20CF274D8, v4, v7);
}

uint64_t sub_20CF270D8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_20CF2725C, v3, v2);
}

uint64_t sub_20CF2725C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_20CF272BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E270);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v10 = Strong;
  if (sub_20D567C98())
  {

LABEL_4:
    sub_20D567BC8();
    return;
  }

  v11 = [v10 controlsWantSystemPresentationAnimations];
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  aBlock[4] = sub_20CF27D44;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CFFFE8C;
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);

  [v10 presentViewController:a3 animated:v11 completion:v14];
  _Block_release(v14);
}

uint64_t HUControllableItemCollectionViewController.presentPreloadable<A>(viewController:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_20D567C18();
  v3[7] = sub_20D567C08();
  v5 = sub_20D567BA8();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x2822009F8](sub_20CF27580, v5, v4);
}

uint64_t sub_20CF27580()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_20D567C08();
  v0[10] = v3;
  v4 = swift_allocObject();
  v0[11] = v4;
  swift_unknownObjectWeakInit();
  v5 = swift_task_alloc();
  v0[12] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE58);
  *v6 = v0;
  v6[1] = sub_20CF276D0;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 2, v3, v8, 0xD000000000000023, 0x800000020D5CE9B0, sub_20CF27B4C, v5, v7);
}

uint64_t sub_20CF276D0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_20CF27870;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_20CF27808;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20CF27808()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_20CF27870()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_20CF278FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v10 = Strong;
  if (sub_20D567C98())
  {

LABEL_4:
    aBlock[0] = 0;
    sub_20D567BC8();
    return;
  }

  v11 = [v10 hu:a3 presentPreloadableViewController:objc_msgSend(v10 animated:sel_controlsWantSystemPresentationAnimations)];
  if (v11)
  {
    v12 = v11;
    (*(v6 + 16))(v8, a1, v5);
    v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v14 = swift_allocObject();
    (*(v6 + 32))(v14 + v13, v8, v5);
    aBlock[4] = sub_20CF27C1C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20D0EB4F0;
    aBlock[3] = &block_descriptor_3;
    v15 = _Block_copy(aBlock);

    v16 = [v12 addCompletionBlock_];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CF27B58(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE60);
    return sub_20D567BB8();
  }

  else
  {
    if (a1)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE60);
    return sub_20D567BC8();
  }
}

uint64_t sub_20CF27C1C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE60);

  return sub_20CF27B58(a1, a2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_6Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

void sub_20CF27DE4(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_20CF27E80(a1);
  v3 = sub_20D567738();

  [v2 saveViewVisitEvent:51 withData:v3];
}

uint64_t sub_20CF27E80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C230);
    v2 = sub_20D568AD8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  result = sub_20D5663C8();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_20CED43FC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;
    sub_20D5663C8();
    swift_dynamicCast();
    sub_20CEC80B0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_20CEC80B0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_20CEC80B0(v31, v32);
    result = sub_20D5687D8();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_20CEC80B0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_20CF28148(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C230);
    v2 = sub_20D568AD8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  result = sub_20D5663C8();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;
    sub_20D5663C8();
    v16;
    swift_dynamicCast();
    sub_20CF28748();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_20CEC80B0(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_20CEC80B0(v31, v32);
    result = sub_20D5687D8();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_20CEC80B0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_20CF28408(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C230);
    v2 = sub_20D568AD8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  result = sub_20D5663C8();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;
    sub_20D5663C8();
    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_20CEC80B0(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_20CEC80B0(v29, v30);
    result = sub_20D5687D8();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_20CEC80B0(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_20CF286BC()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = v1;

  return MEMORY[0x282171368](0, 0, 0, sub_20CF28740, v2);
}

unint64_t sub_20CF28748()
{
  result = qword_28111FB20;
  if (!qword_28111FB20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28111FB20);
  }

  return result;
}

unint64_t sub_20CF28794()
{
  result = qword_2811209B0;
  if (!qword_2811209B0)
  {
    sub_20D563B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811209B0);
  }

  return result;
}

uint64_t GridFrame.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x20F31E200](*v0);
  MEMORY[0x20F31E200](v1);
  MEMORY[0x20F31E200](v2);
  return MEMORY[0x20F31E200](v3);
}

uint64_t GridFrame.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  MEMORY[0x20F31E200](v2);
  MEMORY[0x20F31E200](v3);
  MEMORY[0x20F31E200](v4);
  return sub_20D568D98();
}

uint64_t sub_20CF288D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  MEMORY[0x20F31E200](v2);
  MEMORY[0x20F31E200](v3);
  MEMORY[0x20F31E200](v4);
  return sub_20D568D98();
}

uint64_t sub_20CF28958()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x20F31E200](*v0);
  MEMORY[0x20F31E200](v1);
  MEMORY[0x20F31E200](v2);
  return MEMORY[0x20F31E200](v3);
}

uint64_t sub_20CF289B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  MEMORY[0x20F31E200](v2);
  MEMORY[0x20F31E200](v3);
  MEMORY[0x20F31E200](v4);
  return sub_20D568D98();
}

uint64_t sub_20CF28A68(uint64_t a1, uint64_t a2)
{
  sub_20D568D48();
  MEMORY[0x20F31E200](a1);
  MEMORY[0x20F31E200](a2);
  return sub_20D568D98();
}

uint64_t sub_20CF28AC8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  MEMORY[0x20F31E200](v2);
  return sub_20D568D98();
}

uint64_t sub_20CF28B24()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  MEMORY[0x20F31E200](v2);
  return sub_20D568D98();
}

BOOL _s6HomeUI9GridFrameV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  return a1[2] == a2[2] && a1[3] == a2[3];
}

unint64_t sub_20CF28BB4()
{
  result = qword_27C81CE68;
  if (!qword_27C81CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CE68);
  }

  return result;
}

uint64_t sub_20CF28C98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for CameraDashboardMosaicElement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7B)
  {
    goto LABEL_17;
  }

  if (a2 + 133 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 133) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 133;
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

      return (*a1 | (v4 << 8)) - 133;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 133;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x7A)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for CameraDashboardMosaicElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 133 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 133) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7B)
  {
    v4 = 0;
  }

  if (a2 > 0x7A)
  {
    v5 = ((a2 - 123) >> 8) + 1;
    *result = a2 - 123;
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
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20CF28E68(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 & 1) + 5;
  }
}

_BYTE *sub_20CF28E94(_BYTE *result, unsigned int a2)
{
  if (a2 < 5)
  {
    *result = *result & 1 | (32 * a2);
  }

  else
  {
    *result = a2 & 1 ^ 0xA1;
  }

  return result;
}

uint64_t sub_20CF28EE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1 >> 5;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if ((a2 & 0xE0) != 0x60)
      {
        return 0;
      }

      return ((a2 ^ a1) & 1) == 0;
    }

    if (v2 == 4)
    {
      if ((a2 & 0xE0) != 0x80)
      {
        return 0;
      }

      return ((a2 ^ a1) & 1) == 0;
    }

    if (a2 == 160)
    {
      return 1;
    }
  }

  else
  {
    if (!(a1 >> 5))
    {
      if (a2 >= 0x20u)
      {
        return 0;
      }

      return ((a2 ^ a1) & 1) == 0;
    }

    if (v2 == 1)
    {
      if ((a2 & 0xE0) != 0x20)
      {
        return 0;
      }

      return ((a2 ^ a1) & 1) == 0;
    }

    if ((a2 & 0xE0) == 0x40)
    {
      return ((a2 ^ a1) & 1) == 0;
    }
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for CameraDashboardMosaicFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraDashboardMosaicFormat(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20CF290D4()
{
  result = qword_27C81CE80;
  if (!qword_27C81CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CE80);
  }

  return result;
}

__n128 AdaptiveTileLayoutSolver.config.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  v4 = *(v1 + 34);
  result = *v1;
  v6 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  *(a1 + 34) = v4;
  return result;
}

uint64_t AdaptiveTileLayoutSolver.tileCountLimit.getter()
{
  v1 = v0[3];
  if (!v1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v2 = v0[1];
  if (v2 == 0x8000000000000000 && v1 == -1)
  {
    goto LABEL_14;
  }

  v4 = v0[2];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *v0;
  if (*v0 == 0x8000000000000000 && v4 == -1)
  {
    goto LABEL_15;
  }

  v6 = v2 / v1;
  result = v5 / v4 * v6;
  if ((v5 / v4 * v6) >> 64 != result >> 63)
  {
    goto LABEL_13;
  }

  return result;
}

__n128 AdaptiveTileLayoutSolver.init(config:items:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  v5 = *(a1 + 34);
  result = *a1;
  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v7;
  *(a3 + 32) = v3;
  *(a3 + 33) = v4;
  *(a3 + 34) = v5;
  *(a3 + 40) = a2;
  return result;
}

uint64_t AdaptiveTileLayoutSolver.createLayout()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 34);
  result = sub_20CF29354(a1, v15);
  if (v5)
  {
    swift_getTupleTypeMetadata2();
    v14 = sub_20D567AD8();
    v7 = type metadata accessor for AdaptiveTileLayout();
    AdaptiveTileLayout.layout(cuttingOffAfterRows:removedFrames:)(v4, &v14, v7, v12);

    result = (*(*(v7 - 8) + 8))(v15, v7);
    v8 = v12[3];
    *(a2 + 32) = v12[2];
    *(a2 + 48) = v8;
    *(a2 + 64) = v13;
    v9 = v12[1];
    v10 = v12[0];
  }

  else
  {
    v11 = v15[3];
    *(a2 + 32) = v15[2];
    *(a2 + 48) = v11;
    *(a2 + 64) = v16;
    v10 = v15[0];
    v9 = v15[1];
  }

  *a2 = v10;
  *(a2 + 16) = v9;
  return result;
}

uint64_t sub_20CF29354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v125 = a1;
  v3 = *(a1 + 16);
  type metadata accessor for HUGridSize(255);
  v126 = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_20D568538();
  v6 = MEMORY[0x28223BE20](v5);
  v117 = v103 - v7;
  v110 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v116 = v103 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v103 - v14;
  v16 = *v2;
  v17 = *(v2 + 8);
  v19 = *(v2 + 16);
  v18 = *(v2 + 24);
  v20 = *(v2 + 32);
  v21 = *(v2 + 33);
  v22 = *(v2 + 34);
  v23 = (v2 + 35);
  v146 = *(v2 + 35);
  v147 = *(v2 + 39);
  v24 = *(v2 + 40);
  LODWORD(v123) = v21;
  v122.i32[0] = v22;
  v121 = v16;
  v107 = v13;
  v106 = v25;
  if (v22)
  {
    v134 = v16;
    v135 = v17;
    v136 = v19;
    v137 = v18;
    v138 = v20;
    v139 = v21;
    v140 = v22;
    v141 = *v23;
    v142 = *(v23 + 4);
    v143 = v24;
    v26 = AdaptiveTileLayoutSolver.tileCountLimit.getter();
    v27 = sub_20D567B18();
    if (v27 >= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  result = sub_20D567B18();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_64;
  }

LABEL_8:
  v124 = v17;
  v120 = v24;
  v30 = sub_20D567B78();
  v31 = v30;
  v33 = v32;
  v109 = v34;
  v36 = v35;
  if (!v20)
  {
    v61 = v30;
    v62 = *(v125 + 24);
    v63 = v126;
    sub_20CF91E28(&v134);
    *&v130 = v134;
    BYTE8(v130) = v135;
    AdaptiveTileLayout.init(maxColumns:strategy:)(v124, &v130, v63, v62, v108);
    v134 = v61;
    v135 = v33;
    v136 = v109;
    v137 = v36;
    sub_20D568658();
    swift_unknownObjectRetain();
    swift_getWitnessTable();
    v64 = sub_20D567B68();
    type metadata accessor for AdaptiveTileLayout();
    v149.value.rowsDown = 0;
    v149.value.columnsAcross = 0;
    v149.is_nil = 1;
    AdaptiveTileLayout.fitSizesIntoGrid(_:allowingShrinkingToSize:)(v64, v149);

    return swift_unknownObjectRelease();
  }

  v127 = TupleTypeMetadata2;
  v119 = v18;
  v118 = v19;
  if (v20 == 1)
  {
    v134 = 2;
    LOBYTE(v135) = 0;
    v37 = v124;
    v125 = *(v125 + 24);
    AdaptiveTileLayout.init(maxColumns:strategy:)(v124, &v134, v126, v125, v128);
    v134 = v31;
    v135 = v33;
    v38 = v109;
    v136 = v109;
    v137 = v36;
    sub_20D568658();
    swift_unknownObjectRetain();
    swift_getWitnessTable();
    v39 = sub_20D567B68();
    *&v130 = v39;
    v40 = v108;
    if ((v123 & 1) == 0)
    {
LABEL_28:
      v58._rawValue = v130;
      type metadata accessor for AdaptiveTileLayout();
      v148.value.rowsDown = v118;
      v148.value.columnsAcross = v119;
      v148.is_nil = 0;
      AdaptiveTileLayout.fitSizesIntoGrid(_:allowingShrinkingToSize:)(v58, v148);

      result = swift_unknownObjectRelease();
      v59 = v128[3];
      *(v40 + 32) = v128[2];
      *(v40 + 48) = v59;
      *(v40 + 64) = v129;
      v60 = v128[1];
      *v40 = v128[0];
      *(v40 + 16) = v60;
      return result;
    }

    v134 = v31;
    v135 = v33;
    v136 = v38;
    v137 = v36;
    v103[1] = v36;
    MEMORY[0x28223BE20](v39);
    v101 = v126;
    v102 = v125;
    swift_unknownObjectRetain();
    swift_getWitnessTable();
    v41 = v31;
    sub_20D5688B8();
    v42 = v127;
    v43 = sub_20D567B18();

    v134 = v121;
    v135 = v37;
    v136 = v118;
    v137 = v119;
    v138 = 1;
    v139 = v123;
    v140 = v122.i8[0];
    v141 = v146;
    v142 = v147;
    v143 = v120;
    v44 = AdaptiveTileLayoutSolver.tileCountLimit.getter();
    v105 = v41;
    result = sub_20D568648();
    v45 = v44 - result;
    if (!__OFSUB__(v44, result))
    {
      v46 = v45 - v43;
      if (!__OFSUB__(v45, v43))
      {
        result = sub_20D568648();
        v47 = result - 1;
        v40 = v108;
        if (!__OFSUB__(result, 1))
        {
          if (v46 >= 1 && (v47 & 0x8000000000000000) == 0)
          {
            v48 = (v110 + 8);
            v124 = v110 + 16;
            v123 = v126 - 8;
            v122 = vdupq_n_s64(2uLL);
            do
            {
              while (1)
              {
                sub_20D568668();
                v49 = &v15[*(v42 + 48)];
                v51 = *v49;
                v50 = *(v49 + 1);
                if (v51 != 2 || v50 != 2)
                {
                  break;
                }

                (*v48)(v15, v42);
                v53 = v47-- <= 0;
                if (v53)
                {
                  goto LABEL_28;
                }
              }

              v54 = v110;
              (*(v110 + 16))(v116, v15, v42);
              v55 = sub_20D567B58();
              sub_20D567AC8();
              v56 = v130;
              sub_20CF9EA70(v47, v130);
              (*(v54 + 8))(v15, v42);
              v57 = v56 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v47;
              (*(*(v126 - 8) + 40))(v57, v116);
              *(v57 + *(v42 + 48)) = v122;
              v40 = v108;
              CGSizeMake(v55);
              if (v46 < 2)
              {
                break;
              }

              --v46;
              v53 = v47-- < 1;
            }

            while (!v53);
          }

          goto LABEL_28;
        }

        goto LABEL_67;
      }

LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      return result;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v134 = 2;
  LOBYTE(v135) = 0;
  v65 = v124;
  v104 = *(v125 + 24);
  AdaptiveTileLayout.init(maxColumns:strategy:)(v124, &v134, v126, v104, v144);
  v134 = v121;
  v135 = v65;
  v136 = v19;
  v137 = v18;
  v138 = 2;
  v139 = v123;
  v140 = v122.i8[0];
  v141 = v146;
  v142 = v147;
  v143 = v120;
  v66 = v31;
  v67 = AdaptiveTileLayoutSolver.tileCountLimit.getter();
  v68 = v36;
  result = sub_20D568648();
  v69 = __OFSUB__(v67, result);
  v70 = v67 - result;
  if (v69)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  swift_unknownObjectRetain();
  v105 = v66;
  if (v70 < 1)
  {
    v71 = v109;
  }

  else
  {
    v115 = v70;
    sub_20D568658();
    v114 = (v110 + 48);
    v113 = (v110 + 32);
    v112 = (v110 + 16);
    v111 = v126 - 8;
    v110 += 8;
    v71 = v109;
    while (1)
    {
      v134 = v66;
      v135 = v33;
      v136 = v71;
      v137 = v68;
      swift_getWitnessTable();
      v72 = v117;
      sub_20D567DE8();
      if ((*v114)(v72, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      (*v113)(v10, v72, TupleTypeMetadata2);
      v73 = v68;
      v74 = v71;
      v75 = v33;
      v76 = v116;
      (*v112)(v116, v10, v127);
      v77 = &v76[*(v127 + 48)];
      v79 = *v77;
      v78 = v77[1];
      v80 = v76;
      v81 = v75;
      v82 = v74;
      v83 = v73;
      TupleTypeMetadata2 = v127;
      (*(*(v126 - 8) + 8))(v80);
      v84 = sub_20D568648();
      if (v123)
      {
        v85 = 2;
      }

      else
      {
        v85 = v79;
      }

      v134 = v121;
      v135 = v124;
      if (v123)
      {
        v86 = 2;
      }

      else
      {
        v86 = v78;
      }

      if (v115 >= v84)
      {
        v87 = v85;
      }

      else
      {
        v87 = v79;
      }

      if (v115 >= v84)
      {
        v88 = v86;
      }

      else
      {
        v88 = v78;
      }

      v136 = v118;
      v137 = v119;
      v138 = 2;
      v139 = v123;
      v140 = v122.i8[0];
      v141 = v146;
      v142 = v147;
      v143 = v120;
      sub_20CF2A1AC(v10, v87, v88, v118, v119, 1, 1, &v130, v125);
      if (v133)
      {
        *&v130 = v66;
        *(&v130 + 1) = v81;
        v131 = v82;
        v132 = v83;
        sub_20D567E08();
        (*v110)(v10, TupleTypeMetadata2);
        v66 = v134;
        v33 = v135;
        v71 = v136;
        v68 = v137;
      }

      else
      {
        v90 = v131 != 1 || v132 != 2;
        v115 -= v90;
        *&v130 = v66;
        *(&v130 + 1) = v81;
        v131 = v82;
        v132 = v83;
        sub_20D567E08();
        (*v110)(v10, TupleTypeMetadata2);
        v66 = v134;
        v33 = v135;
        v71 = v136;
        v68 = v137;
        if (v115 <= 0)
        {
          goto LABEL_58;
        }
      }
    }

    (*(v106 + 8))(v72, v107);
  }

LABEL_58:
  v134 = v66;
  v135 = v33;
  v136 = v71;
  v137 = v68;
  v91 = v68;
  v92 = sub_20D568658();
  WitnessTable = swift_getWitnessTable();
  v94 = sub_20D567DF8();
  if (v94)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v134 = v66;
    v135 = v33;
    v136 = v71;
    v137 = v91;
    MEMORY[0x28223BE20](v94);
    v95 = v104;
    v103[-4] = v126;
    v103[-3] = v95;
    v101 = v118;
    v102 = v119;
    swift_unknownObjectRetain();
    v97 = sub_20CF91A08(sub_20CF2B38C, &v103[-6], v92, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v96);
    swift_unknownObjectRelease();
    type metadata accessor for AdaptiveTileLayout();
    v150.value.rowsDown = 0;
    v150.value.columnsAcross = 0;
    v150.is_nil = 1;
    AdaptiveTileLayout.fitSizesIntoGrid(_:allowingShrinkingToSize:)(v97, v150);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectRelease();
  v98 = v144[3];
  v99 = v108;
  *(v108 + 32) = v144[2];
  *(v99 + 48) = v98;
  *(v99 + 64) = v145;
  v100 = v144[1];
  *v99 = v144[0];
  *(v99 + 16) = v100;
  return result;
}

void sub_20CF2A1AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, uint64_t a9)
{
  v90 = a7;
  v91 = a6;
  v95 = a8;
  v85 = *(*(a9 + 16) - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v88 = &v79 - v17;
  v19 = *(v18 + 48);
  v20[7] = *(v18 + 32);
  v20[8] = v19;
  v112 = *(v18 + 64);
  v21 = *(v18 + 16);
  v20[5] = *v18;
  v20[6] = v21;
  v89 = v22;
  v23 = type metadata accessor for AdaptiveTileLayout();
  v24 = *(v23 - 8);
  v92 = *(v24 + 16);
  v92(&v103, &v108, v23);
  *&v94 = a1;
  v87 = a2;
  v86 = a3;
  AdaptiveTileLayout.fitIntoGrid(key:size:allowingShrinkingToSize:)(a1, a2, a3, a4, a5, 0, v23, &v97);
  if (v99)
  {
    if (qword_281120950 != -1)
    {
      swift_once();
    }

    v25 = sub_20D565988();
    v26 = __swift_project_value_buffer(v25, qword_281120958);
    v27 = v92;
    v92(&v103, &v108, v23);
    v27(&v103, &v108, v23);
    v84 = v26;
    v28 = sub_20D565968();
    v29 = sub_20D567EA8();
    v30 = os_log_type_enabled(v28, v29);
    v82 = v16;
    if (v30)
    {
      v31 = swift_slowAlloc();
      *&v93 = swift_slowAlloc();
      v102 = v93;
      *v31 = 136315650;
      *&v103 = 0x657A695364697267;
      *(&v103 + 1) = 0xE90000000000002DLL;
      *&v97 = v86;
      LODWORD(v81) = v29;
      v32 = sub_20D568BB8();
      MEMORY[0x20F31CDB0](v32);

      MEMORY[0x20F31CDB0](120, 0xE100000000000000);
      *&v97 = v87;
      v33 = sub_20D568BB8();
      MEMORY[0x20F31CDB0](v33);

      v34 = sub_20CEE913C(v103, *(&v103 + 1), &v102);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      v99 = v110;
      v100 = v111;
      v101 = v112;
      v98 = v109;
      v97 = v108;
      v35 = AdaptiveTileLayout.description.getter();
      v37 = v36;
      v83 = v24;
      v80 = v28;
      v38 = *(v24 + 8);
      v38(&v108, v23);
      v106 = v100;
      v107 = v101;
      v104 = v98;
      v105 = v99;
      v103 = v97;
      v38(&v103, v23);
      v39 = sub_20CEE913C(v35, v37, &v102);

      v40 = v31;
      *(v31 + 14) = v39;
      *(v31 + 22) = 2080;
      *&v97 = 0x657A695364697267;
      *(&v97 + 1) = 0xE90000000000002DLL;
      v41 = v90;
      v96 = v90;
      v42 = sub_20D568BB8();
      MEMORY[0x20F31CDB0](v42);

      MEMORY[0x20F31CDB0](120, 0xE100000000000000);
      v43 = v91;
      v96 = v91;
      v44 = v83;
      v45 = sub_20D568BB8();
      MEMORY[0x20F31CDB0](v45);

      v46 = sub_20CEE913C(v97, *(&v97 + 1), &v102);

      *(v40 + 24) = v46;
      v47 = v38;
      v48 = v80;
      _os_log_impl(&dword_20CEB6000, v80, v81, "AdaptiveTileLayoutSolver couldn't fit %s into %s; trying backup size %s", v40, 0x20u);
      v49 = v93;
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v49, -1, -1);
      MEMORY[0x20F31FC70](v40, -1, -1);
    }

    else
    {
      v44 = v24;
      v47 = *(v24 + 8);
      v47(&v108, v23);

      v47(&v108, v23);
      v43 = v91;
      v41 = v90;
    }

    v53 = v94;
    AdaptiveTileLayout.fitIntoGrid(key:size:allowingShrinkingToSize:)(v94, v43, v41, 0, 0, 1, v23, &v103);
    v93 = v103;
    v94 = v104;
    if (v105)
    {
      v54 = v85;
      v81 = *(v85 + 16);
      v81(v88, v53, v89);
      v92(&v103, &v108, v23);
      v55 = v54;
      v56 = sub_20D565968();
      v57 = sub_20D567EB8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v102 = v92;
        *v58 = 136315906;
        *&v103 = 0x657A695364697267;
        *(&v103 + 1) = 0xE90000000000002DLL;
        *&v97 = v86;
        v83 = v44;
        LODWORD(v86) = v57;
        v59 = sub_20D568BB8();
        v60 = v47;
        MEMORY[0x20F31CDB0](v59);

        MEMORY[0x20F31CDB0](120, 0xE100000000000000);
        *&v97 = v87;
        v61 = sub_20D568BB8();
        MEMORY[0x20F31CDB0](v61);

        v62 = sub_20CEE913C(v103, *(&v103 + 1), &v102);

        *(v58 + 4) = v62;
        *(v58 + 12) = 2080;
        *&v103 = 0x657A695364697267;
        *(&v103 + 1) = 0xE90000000000002DLL;
        *&v97 = v90;
        v63 = sub_20D568BB8();
        MEMORY[0x20F31CDB0](v63);

        MEMORY[0x20F31CDB0](120, 0xE100000000000000);
        *&v97 = v91;
        v64 = sub_20D568BB8();
        MEMORY[0x20F31CDB0](v64);

        v65 = sub_20CEE913C(v103, *(&v103 + 1), &v102);

        *(v58 + 14) = v65;
        *(v58 + 22) = 2080;
        v99 = v110;
        v100 = v111;
        v101 = v112;
        v98 = v109;
        v97 = v108;
        v66 = AdaptiveTileLayout.description.getter();
        v68 = v67;
        v60(&v108, v23);
        v106 = v100;
        v107 = v101;
        v104 = v98;
        v105 = v99;
        v103 = v97;
        v60(&v103, v23);
        v69 = sub_20CEE913C(v66, v68, &v102);

        *(v58 + 24) = v69;
        *(v58 + 32) = 2080;
        v70 = v88;
        v71 = v89;
        v81(v82, v88, v89);
        v72 = v71;
        v73 = sub_20D567858();
        v75 = v74;
        (*(v55 + 8))(v70, v72);
        v76 = sub_20CEE913C(v73, v75, &v102);

        *(v58 + 34) = v76;
        _os_log_impl(&dword_20CEB6000, v56, v86, "AdaptiveTileLayoutSolver failed to fit size %s or %s into %s for %s", v58, 0x2Au);
        v77 = v92;
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v77, -1, -1);
        MEMORY[0x20F31FC70](v58, -1, -1);
      }

      else
      {
        v47(&v108, v23);
        v47(&v108, v23);

        (*(v54 + 8))(v88, v89);
      }

      v52 = 1;
    }

    else
    {
      v47(&v108, v23);
      v52 = 0;
    }

    v51 = v94;
    v50 = v93;
  }

  else
  {
    v94 = v98;
    v93 = v97;
    (*(v24 + 8))(&v108, v23);
    v50 = v93;
    v51 = v94;
    v52 = 0;
  }

  v78 = v95;
  *v95 = v50;
  v78[1] = v51;
  *(v78 + 32) = v52;
}

uint64_t sub_20CF2AD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for HUGridSize(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v17 - v12;
  v14 = (a5 + *(v11 + 48));
  (*(v15 + 16))(&v17 - v12, a1);
  result = (*(*(a4 - 8) + 32))(a5, v13, a4);
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t AdaptiveTileLayoutSolverConfig.LayoutType.hashValue.getter()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  return sub_20D568D98();
}

void __swiftcall AdaptiveTileLayoutSolverConfig.init(availableGridSpace:smallestTileSize:layoutType:expandToFill:cropsLayoutToRows:)(HomeUI::AdaptiveTileLayoutSolverConfig *__return_ptr retstr, __C::HUGridSize availableGridSpace, __C::HUGridSize smallestTileSize, HomeUI::AdaptiveTileLayoutSolverConfig::LayoutType layoutType, Swift::Bool expandToFill, Swift::Bool cropsLayoutToRows)
{
  v6 = *layoutType;
  retstr->availableGridSpace = availableGridSpace;
  retstr->smallestTileSize = smallestTileSize;
  retstr->layoutType = v6;
  retstr->expandToFill = expandToFill;
  retstr->cropsLayoutToRows = cropsLayoutToRows;
}

uint64_t HUGridSize.description.getter()
{
  v0 = sub_20D568BB8();
  MEMORY[0x20F31CDB0](v0);

  MEMORY[0x20F31CDB0](120, 0xE100000000000000);
  v1 = sub_20D568BB8();
  MEMORY[0x20F31CDB0](v1);

  return 0x657A695364697267;
}

unint64_t sub_20CF2B01C()
{
  result = qword_27C81CE88[0];
  if (!qword_27C81CE88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C81CE88);
  }

  return result;
}

uint64_t sub_20CF2B070()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_20CF2B0CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20CF2B114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20CF2B18C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 35))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20CF2B1E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdaptiveTileLayoutSolverConfig.LayoutType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdaptiveTileLayoutSolverConfig.LayoutType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

BOOL sub_20CF2B3B0(uint64_t a1)
{
  type metadata accessor for HUGridSize(255);
  v2 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v4 = *v2;
  v3 = v2[1];
  return v4 == 2 && v3 == 2;
}

void sub_20CF2B41C(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_20D568718();
    sub_20CF2C85C();
    sub_20CF2C8A8(&qword_281120AB0, sub_20CF2C85C);
    sub_20D567D58();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_20CEC80DC();
      return;
    }

    while (1)
    {
      sub_20CEEA1BC(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_20D568798())
      {
        sub_20CF2C85C();
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20CF2B610()
{
  v1 = [v0 module];
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {

    return 0;
  }

  else
  {
    swift_getObjectType();
    v3 = sub_20D565EA8();

    return v3;
  }
}

uint64_t sub_20CF2B700(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC6HomeUI30SelectableItemModuleController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20CF2B76C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6HomeUI30SelectableItemModuleController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20CEC8420;
}

void sub_20CF2B80C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CF18);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - v7;
  v9 = sub_20D565B18();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v30 - v14;
  v16 = type metadata accessor for SelectableItemModuleController();
  v34.receiver = v3;
  v34.super_class = v16;
  objc_msgSendSuper2(&v34, sel_configureCell_forItem_, a1, a2);
  v33 = &unk_2824BFD88;
  v17 = swift_dynamicCastObjCProtocolConditional();
  if (v17)
  {
    v18 = v17;
    v31 = v10;
    v32 = a1;
    v19 = [v3 module];
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v19)
    {
      v20 = v3;
      swift_getObjectType();
      v21 = sub_20D565EA8();
      v23 = v22;

      if (v21)
      {
        v30[1] = v23;
        v24 = &v20[OBJC_IVAR____TtC6HomeUI30SelectableItemModuleController_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v25 = *(v24 + 1);
          ObjectType = swift_getObjectType();
          (*(v25 + 8))(a2, ObjectType, v25);
          swift_unknownObjectRelease();
          v27 = v31;
          if ((*(v31 + 48))(v8, 1, v9) != 1)
          {
            (*(v27 + 32))(v15, v8, v9);
LABEL_12:
            (*(v27 + 104))(v13, *MEMORY[0x277D13250], v9);
            sub_20CF2C8A8(&qword_27C81CF80, MEMORY[0x277D13260]);
            v28 = sub_20D5677E8();
            v29 = *(v27 + 8);
            v29(v13, v9);
            [v18 setDisabled_];
            swift_unknownObjectRelease();

            v29(v15, v9);
            return;
          }
        }

        else
        {
          v27 = v31;
          (*(v31 + 56))(v8, 1, 1, v9);
        }

        sub_20CF2C214(v8);
        swift_getObjectType();
        sub_20D565C68();
        goto LABEL_12;
      }
    }

    else
    {
    }

    [v18 setDisabled_];
  }
}

uint64_t sub_20CF2BC6C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CF18);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_20D565B18();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = [v1 module];
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
  }

  else
  {
    swift_getObjectType();
    v16 = sub_20D565EA8();

    if (v16)
    {
      v17 = &v2[OBJC_IVAR____TtC6HomeUI30SelectableItemModuleController_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 1);
        ObjectType = swift_getObjectType();
        (*(v18 + 8))(a1, ObjectType, v18);
        swift_unknownObjectRelease();
        if ((*(v8 + 48))(v6, 1, v7) != 1)
        {
          (*(v8 + 32))(v13, v6, v7);
LABEL_14:
          (*(v8 + 104))(v11, *MEMORY[0x277D13258], v7);
          sub_20CF2C8A8(&qword_27C81CF80, MEMORY[0x277D13260]);
          v21 = sub_20D5677E8();
          swift_unknownObjectRelease();
          v22 = *(v8 + 8);
          v22(v11, v7);
          v22(v13, v7);
          v20 = v21 ^ 1;
          return v20 & 1;
        }
      }

      else
      {
        (*(v8 + 56))(v6, 1, 1, v7);
      }

      sub_20CF2C214(v6);
      swift_getObjectType();
      sub_20D565C68();
      goto LABEL_14;
    }
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t sub_20CF2C014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CF18);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = v2 + OBJC_IVAR____TtC6HomeUI30SelectableItemModuleController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(a1, ObjectType, v9);
    swift_unknownObjectRelease();
    v11 = sub_20D565B18();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) != 1)
    {
      return (*(v12 + 32))(a2, v7, v11);
    }
  }

  else
  {
    v14 = sub_20D565B18();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  sub_20CF2C214(v7);
  swift_getObjectType();
  return sub_20D565C68();
}

uint64_t sub_20CF2C214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CF18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CF2C27C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CF18);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v38 - v5;
  v7 = sub_20D565B18();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &selRef_mediaServiceItemManager;
  v12 = [v1 module];
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
  }

  else
  {
    swift_getObjectType();
    v14 = sub_20D565EA8();
    v38[3] = v15;

    if (v14)
    {
      v16 = &v2[OBJC_IVAR____TtC6HomeUI30SelectableItemModuleController_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = a1;
        v18 = *(v16 + 1);
        ObjectType = swift_getObjectType();
        v20 = *(v18 + 8);
        v21 = v18;
        a1 = v17;
        v11 = &selRef_mediaServiceItemManager;
        v20(v17, ObjectType, v21);
        swift_unknownObjectRelease();
        if ((*(v8 + 48))(v6, 1, v7) != 1)
        {
          (*(v8 + 32))(v10, v6, v7);
          goto LABEL_13;
        }
      }

      else
      {
        (*(v8 + 56))(v6, 1, 1, v7);
      }

      sub_20CF2C214(v6);
      swift_getObjectType();
      sub_20D565C68();
LABEL_13:
      if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D13248])
      {
        (*(v8 + 96))(v10, v7);
        v22 = *v10;
        swift_willThrow();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v34 = *(v16 + 1);
          v35 = swift_getObjectType();
          LOBYTE(v34) = (*(v34 + 16))(v22, a1, v35, v34);
          swift_unknownObjectRelease();
          if (v34)
          {

LABEL_25:
            swift_unknownObjectRelease();
            return 0;
          }
        }

        v36 = [objc_opt_self() sharedHandler];
        v32 = sub_20D5635C8();
        [v36 handleError_];
      }

      else
      {
        (*(v8 + 8))(v10, v7);
        swift_getObjectType();
        v23 = [v2 v11[94]];
        v24 = [v23 allItems];

        v25 = sub_20CF2C85C();
        v38[1] = sub_20CF2C8A8(&qword_281120AB0, sub_20CF2C85C);
        v38[2] = v25;
        sub_20D567D08();

        v26 = sub_20D565C58();

        if (sub_20D565C48())
        {
          v27 = sub_20D565C88();
        }

        else
        {
          v27 = sub_20D565C78();
        }

        sub_20CF2B41C(v27, v26);
        v28 = [v2 module];
        v29 = [v28 itemUpdater];

        if (!v29)
        {
          swift_unknownObjectRelease();

          return 0;
        }

        v30 = sub_20D5638E8();
        v31 = sub_20D567CD8();

        v32 = [objc_opt_self() requestToUpdateItems:v31 senderSelector:v30];

        v33 = [v29 performItemUpdateRequest_];
        swift_unknownObjectRelease();
      }

      goto LABEL_25;
    }
  }

  return 0;
}

unint64_t sub_20CF2C85C()
{
  result = qword_281120AC0;
  if (!qword_281120AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281120AC0);
  }

  return result;
}

uint64_t sub_20CF2C8A8(unint64_t *a1, void (*a2)(uint64_t))
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

id SelectableItemModuleController.__allocating_init(module:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithModule_];

  return v3;
}

id SelectableItemModuleController.init(module:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC6HomeUI30SelectableItemModuleController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelectableItemModuleController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithModule_, a1);

  return v3;
}

id SelectableItemModuleController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelectableItemModuleController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20CF2CC00(unint64_t a1, id a2, void (*a3)(id *, id))
{
  v13 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x20F31DD20](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v7 = *(a1 + 8 * i + 32);
        }

        a2 = v7;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        a3(&v12, v7);

        if (v8 == v5)
        {
          return v13;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v10 = a2;
      v11 = sub_20D568768();
      a2 = v10;
      v5 = v11;
    }

    while (v11);
  }

  return a2;
}

id RecordingButton.__allocating_init(size:)(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithSize:0 backgroundColor:{a1, a2}];
}

id RecordingButton.__allocating_init(size:backgroundColor:)(void *a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_20CF2D2D4(a1, a2, a3);

  return v8;
}

id RecordingButton.init(size:backgroundColor:)(void *a1, double a2, double a3)
{
  v4 = sub_20CF2D2D4(a1, a2, a3);

  return v4;
}

void sub_20CF2CED4()
{
  v1 = sub_20D5677F8();
  v2 = [objc_opt_self() systemImageNamed_];

  [v0 setImage:v2 forState:0];
  v3 = sub_20D5677F8();
  v4 = HULocalizedString(v3);

  sub_20D567838();
  v5 = sub_20D5677F8();

  [v0 setAccessibilityLabel_];

  v6 = sub_20D5677F8();
  v7 = HULocalizedString(v6);

  sub_20D567838();
  v8 = sub_20D5677F8();

  [v0 setAccessibilityHint_];
}

void sub_20CF2D0D4()
{
  v1 = *(v0 + OBJC_IVAR___HURecordingButton_currentRecordingState);
  *(v0 + OBJC_IVAR___HURecordingButton_currentRecordingState) = 1;
  if ((v1 & 1) == 0)
  {
    sub_20CF2CED4();
  }
}

void sub_20CF2D158()
{
  v1 = *(v0 + OBJC_IVAR___HURecordingButton_currentRecordingState);
  *(v0 + OBJC_IVAR___HURecordingButton_currentRecordingState) = 0;
  if (v1 == 1)
  {
    sub_20CF2CED4();
  }
}

id RecordingButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id RecordingButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordingButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20CF2D2D4(void *a1, double a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CF98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20[-v8];
  v10 = sub_20D5684A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3[OBJC_IVAR___HURecordingButton_currentRecordingState] = 0;
  v14 = type metadata accessor for RecordingButton();
  v21.receiver = v3;
  v21.super_class = v14;
  v15 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, a2, a3);
  sub_20D568478();
  if (a1)
  {
    v16 = a1;
    sub_20D568488();
    v17 = sub_20D568448();
    sub_20D566158();
    v17(v20, 0);
  }

  (*(v11 + 16))(v9, v13, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v18 = v15;
  sub_20D5684C8();
  [v18 setIsAccessibilityElement_];

  sub_20CF2CED4();
  (*(v11 + 8))(v13, v10);
  return v18;
}

unint64_t sub_20CF2D610()
{
  result = qword_27C81CF90;
  if (!qword_27C81CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CF90);
  }

  return result;
}

uint64_t sub_20CF2D664@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *a1 = sub_20D566BA8();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CFC8);
  sub_20CF2D890(v1, (a1 + *(v4 + 44)));
  sub_20CF30EC8(v1, v19);
  v5 = swift_allocObject();
  sub_20CF30F00(v19, v5 + 16);
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CFD0) + 36));
  *v6 = sub_20CF30F38;
  v6[1] = v5;
  v6[2] = 0;
  v6[3] = 0;
  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  v9 = sub_20D568008();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CFD8);
  sub_20D5680F8();

  sub_20CF30EC8(v2, v19);
  v11 = swift_allocObject();
  sub_20CF30F00(v19, v11 + 16);
  v12 = (a1 + *(v10 + 56));
  *v12 = sub_20CF30F40;
  v12[1] = v11;
  v13 = [v7 defaultCenter];
  v14 = sub_20D568018();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CFE0);
  sub_20D5680F8();

  sub_20CF30EC8(v2, v19);
  v16 = swift_allocObject();
  result = sub_20CF30F00(v19, v16 + 16);
  v18 = (a1 + *(v15 + 56));
  *v18 = sub_20CF30F48;
  v18[1] = v16;
  return result;
}

uint64_t sub_20CF2D890@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = sub_20D563BC8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CFF8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D000);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = *(a1 + 8);
  LOBYTE(v33) = *a1;
  v34 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  sub_20D567448();
  v16 = 0;
  if (v35 == 1)
  {
    *v14 = sub_20D566B98();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D010);
    sub_20CF2EDBC(a1, &v14[*(v17 + 44)]);
    sub_20CF30EC8(a1, &v33);
    v18 = swift_allocObject();
    sub_20CF30F00(&v33, v18 + 16);
    v19 = &v14[*(v12 + 36)];
    *v19 = 0;
    *(v19 + 1) = 0;
    *(v19 + 2) = sub_20CF3110C;
    *(v19 + 3) = v18;
    sub_20CF31114();
    v16 = sub_20D5674C8();
  }

  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  LOBYTE(v33) = v20;
  v34 = v21;
  sub_20D567448();
  if (v35 == 1)
  {
    LOBYTE(v33) = v20;
    v34 = v21;
    sub_20D567448();
    v22 = *(a1 + 56);
    LOBYTE(v33) = *(a1 + 48);
    v34 = v22;
    sub_20D567448();
    v23 = *(a1 + 72);
    v33 = *(a1 + 64);
    v34 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CFF0);
    sub_20D567448();
    sub_20CF30EC8(a1, &v33);
    v24 = swift_allocObject();
    sub_20CF30F00(&v33, v24 + 16);
    swift_unknownObjectWeakLoadStrong();
    v25 = v31;
    sub_20D563BB8();
    (*(v4 + 32))(v11, v25, v3);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v4 + 56))(v11, v26, 1, v3);
  sub_20CF30FA0(v11, v9);
  v27 = v32;
  *v32 = v16;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D008);
  sub_20CF30FA0(v9, v27 + *(v28 + 48));
  sub_20CF31010(v11);
  sub_20CF31010(v9);
}

uint64_t sub_20CF2DC90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CF1CFCC;

  return sub_20CF2DD20();
}

uint64_t sub_20CF2DD20()
{
  v1[6] = v0;
  v2 = sub_20D565988();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_20D567C18();
  v1[10] = sub_20D567C08();
  v4 = sub_20D567BA8();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_20CF2DE14, v4, v3);
}

uint64_t sub_20CF2DE14()
{
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v1 = qword_281120C18;
  sub_20D565998();
  v2 = sub_20D565968();
  v3 = sub_20D567EC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v2, v3, "(#function) user chose Remove Provider", v4, 2u);
    MEMORY[0x20F31FC70](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];

  (*(v6 + 8))(v5, v7);
  v0[13] = [*(*(v8 + 80) + OBJC_IVAR___HUEnergyDashboardItemModule_home) hf_energyManager];
  v11 = (*MEMORY[0x277D13238] + MEMORY[0x277D13238]);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_20CF2DFC8;

  return v11();
}

uint64_t sub_20CF2DFC8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  *(*v1 + 122) = a1;

  v4 = *(v2 + 96);
  v5 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_20CF2E110, v5, v4);
}

uint64_t sub_20CF2E110()
{
  v1 = *(v0 + 122);

  if (v1 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong energyFeatureDidHide];
      swift_unknownObjectRelease();
    }

    v3 = *(v0 + 48);
    v4 = *(v3 + 40);
    *(v0 + 16) = *(v3 + 32);
    *(v0 + 24) = v4;
    *(v0 + 120) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
    sub_20D567458();
    v5 = *(v3 + 56);
    *(v0 + 32) = *(v3 + 48);
    *(v0 + 40) = v5;
    *(v0 + 121) = 0;
    sub_20D567458();
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 122);

  return v6(v7);
}

uint64_t sub_20CF2E21C(uint64_t a1)
{
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 80);
  v7 = OBJC_IVAR___HUEnergyDashboardItemModule_home;
  v8 = [*(v6 + OBJC_IVAR___HUEnergyDashboardItemModule_home) hf_energyManager];
  v9 = sub_20D565AA8();

  v10 = *(a1 + 8);
  LOBYTE(v33) = *a1;
  *(&v33 + 1) = v10;
  LOBYTE(v27) = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  sub_20D567458();
  v11 = [*(v6 + v7) hf_energyManager];
  v12 = sub_20D565AB8();

  v13 = *(a1 + 40);
  LOBYTE(v33) = *(a1 + 32);
  *(&v33 + 1) = v13;
  LOBYTE(v27) = v12 & 1;
  sub_20D567458();
  v14 = [*(v6 + v7) uniqueIdentifier];
  sub_20D5637E8();

  v15 = sub_20D5637B8();
  v17 = v16;
  (*(v3 + 8))(v5, v2);
  v34 = MEMORY[0x277D837D0];
  *&v33 = v15;
  *(&v33 + 1) = v17;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v30 = v18;
  v31 = v19;

  sub_20D5663C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CFF0);
  sub_20D567448();
  sub_20CEF935C(&v33, &v27);
  LOBYTE(v15) = swift_isUniquelyReferenced_nonNull_native();
  v29 = v32;
  v20 = __swift_mutable_project_boxed_opaque_existential_0(&v27, v28);
  MEMORY[0x28223BE20](v20);
  v22 = (&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  sub_20CF30768(*v22, v22[1], 0x4449656D6F68, 0xE600000000000000, v15, &v29);
  __swift_destroy_boxed_opaque_existential_1(&v27);
  v32 = v29;
  *&v27 = v18;
  *(&v27 + 1) = v19;
  sub_20D567458();
  v24 = [*(v6 + v7) hf_energyManager];
  LOBYTE(v17) = sub_20D565AC8();

  v34 = MEMORY[0x277D839B0];
  LOBYTE(v33) = v17 & 1;
  v30 = v18;
  v31 = v19;
  sub_20D567448();
  sub_20CEF935C(&v33, &v27);
  LOBYTE(v24) = swift_isUniquelyReferenced_nonNull_native();
  v29 = v32;
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v27, v28);
  sub_20CF3094C(*v25, 0x656B6F7665527369, 0xEF6465776F6C6C41, v24, &v29);
  __swift_destroy_boxed_opaque_existential_1(&v27);
  v32 = v29;
  *&v27 = v18;
  *(&v27 + 1) = v19;
  sub_20D567458();
}

uint64_t sub_20CF2E624(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D563418();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D565988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v12 = qword_281120C18;
  sub_20D565998();
  (*(v5 + 16))(v7, a1, v4);
  v13 = sub_20D565968();
  v14 = sub_20D567E98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = v9;
    v18 = v17;
    v32[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_20CEE913C(2036625250, 0xE400000000000000, v32);
    *(v16 + 12) = 2080;
    sub_20CF3131C(&qword_27C81CFE8, MEMORY[0x277CC8900]);
    v19 = sub_20D568BB8();
    v28 = v8;
    v21 = v20;
    (*(v5 + 8))(v7, v4);
    v22 = sub_20CEE913C(v19, v21, v32);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_20CEB6000, v13, v14, "%s onReceive: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v18, -1, -1);
    v23 = v16;
    a2 = v30;
    MEMORY[0x20F31FC70](v23, -1, -1);

    (*(v29 + 8))(v11, v28);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  v24 = [*(*(a2 + 80) + OBJC_IVAR___HUEnergyDashboardItemModule_home) hf_energyManager];
  v25 = sub_20D565AA8();

  v26 = *(a2 + 8);
  LOBYTE(v32[0]) = *a2;
  v32[1] = v26;
  v31 = v25 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  return sub_20D567458();
}

uint64_t sub_20CF2E9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D563418();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D565988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v12 = qword_281120C18;
  sub_20D565998();
  (*(v5 + 16))(v7, a1, v4);
  v13 = sub_20D565968();
  v14 = sub_20D567E98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = v9;
    v18 = v17;
    v32[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_20CEE913C(2036625250, 0xE400000000000000, v32);
    *(v16 + 12) = 2080;
    sub_20CF3131C(&qword_27C81CFE8, MEMORY[0x277CC8900]);
    v19 = sub_20D568BB8();
    v28 = v8;
    v21 = v20;
    (*(v5 + 8))(v7, v4);
    v22 = sub_20CEE913C(v19, v21, v32);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_20CEB6000, v13, v14, "%s onReceive: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v18, -1, -1);
    v23 = v16;
    a2 = v30;
    MEMORY[0x20F31FC70](v23, -1, -1);

    (*(v29 + 8))(v11, v28);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  v24 = [*(*(a2 + 80) + OBJC_IVAR___HUEnergyDashboardItemModule_home) hf_energyManager];
  v25 = sub_20D565AB8();

  v26 = *(a2 + 40);
  LOBYTE(v32[0]) = *(a2 + 32);
  v32[1] = v26;
  v31 = v25 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  return sub_20D567458();
}

uint64_t sub_20CF2EDBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v50 = sub_20D563B08();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D020);
  v5 = *(v4 - 8);
  v58 = v4;
  v59 = v5;
  MEMORY[0x28223BE20](v4);
  v47 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D028);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v60 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v47 - v10;
  v11 = sub_20D563C18();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_20D563B28();
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D030);
  v56 = *(v57 - 8);
  v16 = MEMORY[0x28223BE20](v57);
  v54 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  sub_20D563BF8();
  v51 = sub_20D563BE8();
  swift_unknownObjectWeakLoadStrong();
  sub_20CF30EC8(a1, &v64);
  v20 = swift_allocObject();
  sub_20CF30F00(&v64, v20 + 16);
  sub_20CF30EC8(a1, &v64);
  v21 = swift_allocObject();
  sub_20CF30F00(&v64, v21 + 16);
  sub_20CF30EC8(a1, &v64);
  v22 = swift_allocObject();
  sub_20CF30F00(&v64, v22 + 16);
  sub_20CF30EC8(a1, &v64);
  v23 = swift_allocObject();
  sub_20CF30F00(&v64, v23 + 16);
  sub_20CF2F8D8(v13);
  v24 = v19;
  sub_20D563B18();
  v25 = *(a1 + 24);
  v62 = *(a1 + 16);
  v63 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  sub_20D567468();
  sub_20CF30EC8(a1, &v64);
  v26 = swift_allocObject();
  sub_20CF30F00(&v64, v26 + 16);
  sub_20CF3131C(&qword_2811209B8, MEMORY[0x277D16FA0]);
  sub_20CF31238();
  v27 = v52;
  sub_20D567228();

  (*(v53 + 8))(v15, v27);
  if ([objc_opt_self() showEducationTip])
  {
    sub_20CF30EC8(a1, &v64);
    v28 = swift_allocObject();
    sub_20CF30F00(&v64, v28 + 16);
    v29 = v48;
    sub_20D563AF8();
    sub_20CF30EC8(a1, &v64);
    v30 = swift_allocObject();
    sub_20CF30F00(&v64, v30 + 16);
    sub_20CF3131C(&unk_2811209C0, MEMORY[0x277D16F90]);
    v31 = v47;
    v32 = v50;
    sub_20D567178();

    (*(v49 + 8))(v29, v32);
    v33 = v58;
    v34 = (v31 + *(v58 + 36));
    *v34 = sub_20CF2FED4;
    v34[1] = 0;
    v34[2] = 0;
    v34[3] = 0;
    v35 = v55;
    sub_20CEBCC6C(v31, v55);
    v36 = 0;
    v37 = v33;
  }

  else
  {
    v36 = 1;
    v37 = v58;
    v35 = v55;
  }

  (*(v59 + 56))(v35, v36, 1, v37);
  v38 = v56;
  v39 = *(v56 + 16);
  v40 = v54;
  v41 = v57;
  v39(v54, v24, v57);
  v42 = v60;
  sub_20CEBCB94(v35, v60);
  v43 = v61;
  v39(v61, v40, v41);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D038);
  sub_20CEBCB94(v42, &v43[*(v44 + 48)]);
  sub_20CEBCC04(v35);
  v45 = *(v38 + 8);
  v45(v24, v41);
  sub_20CEBCC04(v42);
  return (v45)(v40, v41);
}

uint64_t sub_20CF2F628()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v6 = qword_281120C18;
  sub_20D565998();
  v7 = sub_20D565968();
  v8 = sub_20D567EC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20CEB6000, v7, v8, "(#function) user chose Hide Grid Forecast", v9, 2u);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = [*(*(v1 + 80) + OBJC_IVAR___HUEnergyDashboardItemModule_home) hf_energyManager];
  sub_20D565A98();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong energyFeatureDidHide];
    swift_unknownObjectRelease();
  }

  v12 = *(v1 + 8);
  v14[16] = *v1;
  v15 = v12;
  v14[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  return sub_20D567458();
}

void sub_20CF2F83C(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_20CF27E80(a1);
  v3 = sub_20D567738();

  [v2 saveViewVisitEvent:44 withData:v3];
}

uint64_t sub_20CF2F8D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D565988();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D563C18();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 80);
  v11 = OBJC_IVAR___HUEnergyDashboardItemModule_home;
  if ([*(v10 + OBJC_IVAR___HUEnergyDashboardItemModule_home) hf_isHomeEnergyHomeEmpty])
  {
    v12 = MEMORY[0x277D17018];
  }

  else
  {
    v13 = [*(v10 + v11) hf_energyManager];
    v14 = sub_20D565A78();

    if (v14)
    {

      v12 = MEMORY[0x277D17020];
    }

    else
    {
      v12 = MEMORY[0x277D17028];
    }
  }

  (*(v7 + 104))(v9, *v12, v6);
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v15 = qword_281120C18;
  sub_20D565998();
  v16 = sub_20D565968();
  v17 = sub_20D567EC8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28 = v3;
    v21 = v20;
    v31[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_20CEE913C(0xD00000000000001CLL, 0x800000020D5CED00, v31);
    *(v19 + 12) = 2080;
    swift_beginAccess();
    sub_20CF3131C(&qword_2811209A8, MEMORY[0x277D17030]);
    v22 = sub_20D568BB8();
    v24 = sub_20CEE913C(v22, v23, v31);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_20CEB6000, v16, v17, "%s returns: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v21, -1, -1);
    v25 = v19;
    a1 = v29;
    MEMORY[0x20F31FC70](v25, -1, -1);

    (*(v30 + 8))(v5, v28);
  }

  else
  {

    (*(v30 + 8))(v5, v3);
  }

  swift_beginAccess();
  (*(v7 + 16))(a1, v9, v6);
  return (*(v7 + 8))(v9, v6);
}

id sub_20CF2FCCC()
{
  v0 = sub_20D565988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v4 = qword_281120C18;
  sub_20D565998();
  v5 = sub_20D565968();
  v6 = sub_20D567EC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v5, v6, "Energy Education Tip will not appear again.", v7, 2u);
    MEMORY[0x20F31FC70](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  [objc_opt_self() setShowEducationTip_];
  return [objc_opt_self() saveViewVisitEvent:48 withState:2];
}

id sub_20CF2FED4()
{
  sub_20D567E98();
  if (qword_28111FAC0 != -1)
  {
    swift_once();
  }

  sub_20D565868();
  v0 = objc_opt_self();

  return [v0 saveViewVisitEvent:48 withState:1];
}

void sub_20CF2FF88(uint64_t a1)
{
  sub_20D567E98();
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  sub_20D565868();
  v2 = [*(*(a1 + 80) + OBJC_IVAR___HUEnergyDashboardItemModule_home) hf_energyManager];
  sub_20D565A88();
}

id EnergyDashboardItemModuleController.__allocating_init(module:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithModule_];

  return v3;
}

id EnergyDashboardItemModuleController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnergyDashboardItemModuleController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20CF301B8()
{
  type metadata accessor for HomeEnergyEducationalPanelViewController();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return v1;
}

uint64_t sub_20CF30264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CF31384();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20CF302C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CF31384();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_20CF3032C()
{
  sub_20CF31384();
  sub_20D566E88();
  __break(1u);
}

unint64_t sub_20CF3035C()
{
  result = qword_28111FEA0;
  if (!qword_28111FEA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28111FEA0);
  }

  return result;
}

void sub_20CF303D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 module];
  swift_unknownObjectWeakLoadStrong();
  if ([a1 host])
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 module];
  v7 = *&v6[OBJC_IVAR___HUEnergyDashboardItemModule_home];

  LOBYTE(v6) = [v7 hf_isHomeEnergyHomeEmpty];
  sub_20D567438();
  *a2 = v8;
  *(a2 + 8) = v9;
  sub_20D567438();
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  sub_20D567438();
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  sub_20D567438();
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  sub_20CEF4550(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CFC0);
  sub_20D567438();
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  *(a2 + 80) = v4;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakInit();

  *(a2 + 104) = v6;
}

void EnergyDashboardItemModuleController.collectionLayoutSectionForSection(withIdentifier:layoutEnvironment:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = xmmword_20D5BE8F0;
  v4 = 2;
  sub_20CEFA3C8(a1, a2, &v3, a3);
}

_OWORD *sub_20CF30768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D837D0];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = sub_20CEED668(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_20CEF935C(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_20CF9C9B8();
    goto LABEL_7;
  }

  sub_20CF98418(v16, a5 & 1);
  v22 = sub_20CEED668(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_20D568C68();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_20CF30B28(v13, a3, a4, *v26, v26[1], v19);
  sub_20D5663C8();
  return __swift_destroy_boxed_opaque_existential_1(&v28);
}

_OWORD *sub_20CF3094C(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v23) = a1;
  v24 = MEMORY[0x277D839B0];
  v9 = *a5;
  v11 = sub_20CEED668(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_20CEF935C(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_20CF9C9B8();
    goto LABEL_7;
  }

  sub_20CF98418(v14, a4 & 1);
  v20 = sub_20CEED668(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_20D568C68();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x277D839B0]);
  sub_20CF30AA4(v11, a2, a3, *v22, v17);
  sub_20D5663C8();
  return __swift_destroy_boxed_opaque_existential_1(&v23);
}

_OWORD *sub_20CF30AA4(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20CEF935C(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_20CF30B28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_20CEF935C(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t _s6HomeUI35EnergyDashboardItemModuleControllerC13configureCell_3forySo016UICollectionViewI0C_So6HFItemCtF_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CFB8);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9[-1] - v4;
  v6 = OBJC_IVAR___HUEnergyDashboardItemModuleController_hasSentHomeEnergyAnalytics;
  if ((*(v0 + OBJC_IVAR___HUEnergyDashboardItemModuleController_hasSentHomeEnergyAnalytics) & 1) == 0)
  {
    v3 = [objc_opt_self() saveViewVisitEvent:44 withState:1];
    *(v0 + v6) = 1;
  }

  MEMORY[0x28223BE20](v3);
  *(&v8 - 2) = v0;
  sub_20CF30DA4();
  sub_20D566D88();
  sub_20D566F08();
  v9[3] = v1;
  v9[4] = sub_20CF156D0(&qword_281120080, &qword_27C81CFB8);
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_20D566D78();
  (*(v2 + 8))(v5, v1);
  return MEMORY[0x20F31D5C0](v9);
}

unint64_t sub_20CF30DA4()
{
  result = qword_2811202C0;
  if (!qword_2811202C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811202C0);
  }

  return result;
}

uint64_t sub_20CF30DF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20CF30E40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_20CF30FA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CFF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF31010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CFF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CF31078()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CF1CFCC;

  return sub_20CF2DC90();
}

unint64_t sub_20CF31114()
{
  result = qword_281120090;
  if (!qword_281120090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81D000);
    sub_20CF156D0(&qword_281120078, &qword_27C81D018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281120090);
  }

  return result;
}

unint64_t sub_20CF31238()
{
  result = qword_2811204B0;
  if (!qword_2811204B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811204B0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  MEMORY[0x20F31FD50](v0 + 104);
  MEMORY[0x20F31FD50](v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_20CF3131C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20CF31384()
{
  result = qword_27C81D040;
  if (!qword_27C81D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D040);
  }

  return result;
}

void sub_20CF313DC()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for BlurGroupingEffectView();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = OBJC_IVAR___HUBlurGroupingEffectView_visualEffectViews;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    [v0 bounds];
    [v10 setFrame_];
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_20CF31598(void *a1, void *a2)
{
  v4 = sub_20D567E98();
  if (qword_27C81A300 != -1)
  {
    swift_once();
  }

  v5 = qword_27C8382A0;
  if (os_log_type_enabled(qword_27C8382A0, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 138412546;
    *(v6 + 4) = a1;
    *v7 = a1;
    *(v6 + 12) = 2080;
    v9 = sub_20D567838();
    v11 = v10;
    v12 = a1;
    v13 = sub_20CEE913C(v9, v11, &v17);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_20CEB6000, v5, v4, "BlurGroupingEffectView backgroundEffectAddCaptureDependent: %@ %s", v6, 0x16u);
    sub_20CF31DFC(v7);
    MEMORY[0x20F31FC70](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F31FC70](v8, -1, -1);
    MEMORY[0x20F31FC70](v6, -1, -1);
  }

  v14 = [a1 _captureSource];
  [v14 _removeCaptureDependent_];

  v15 = sub_20CF318B4(a2);
  if (v15)
  {
    v16 = v15;
    [v15 _addCaptureDependent_];
  }

  else
  {

    [a1 hu:a2 configureEffectForIdentifier:?];
  }
}

id sub_20CF318B4(void *a1)
{
  v2 = v1;
  if ([objc_opt_self() isAMac])
  {
    return 0;
  }

  v5 = OBJC_IVAR___HUBlurGroupingEffectView_visualEffectViews;
  swift_beginAccess();
  v6 = *&v1[v5];
  if (*(v6 + 16))
  {
    sub_20D5663C8();
    v7 = sub_20CEF9358(a1);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      return v9;
    }
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  [v10 hu:a1 configureEffectForIdentifier:?];
  [v10 _setRenderMode_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20D5BC4B0;
  v12 = sub_20D567838();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_20CED4498();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = type metadata accessor for BlurGroupingEffectView();
  *(v11 + 104) = sub_20CF320A0();
  *(v11 + 72) = v2;
  v15 = v2;
  sub_20D567848();
  v16 = sub_20D5677F8();

  [v10 _setGroupName_];

  [v15 addSubview_];
  [v15 setNeedsLayout];
  swift_beginAccess();
  v17 = v10;
  v18 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *&v2[v5];
  *&v2[v5] = 0x8000000000000000;
  sub_20CEEF618(v17, v18, isUniquelyReferenced_nonNull_native);

  *&v2[v5] = v20;
  swift_endAccess();

  return v10;
}

id BlurGroupingEffectView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BlurGroupingEffectView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___HUBlurGroupingEffectView_visualEffectViews] = MEMORY[0x277D84F98];
  v10.receiver = v4;
  v10.super_class = type metadata accessor for BlurGroupingEffectView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id BlurGroupingEffectView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BlurGroupingEffectView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___HUBlurGroupingEffectView_visualEffectViews] = MEMORY[0x277D84F98];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BlurGroupingEffectView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id BlurGroupingEffectView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlurGroupingEffectView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CF31DFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CF31E64(void *a1)
{
  v2 = sub_20D567E98();
  if (qword_27C81A300 != -1)
  {
    swift_once();
  }

  v3 = qword_27C8382A0;
  if (os_log_type_enabled(qword_27C8382A0, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 138412546;
    *(v4 + 4) = a1;
    *v5 = a1;
    *(v4 + 12) = 2080;
    v7 = sub_20D567838();
    v9 = v8;
    v10 = a1;
    v11 = sub_20CEE913C(v7, v9, &v13);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_20CEB6000, v3, v2, "BlurGroupingEffectView backgroundEffectRemoveCaptureDependent: %@ %s", v4, 0x16u);
    sub_20CF31DFC(v5);
    MEMORY[0x20F31FC70](v5, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x20F31FC70](v6, -1, -1);
    MEMORY[0x20F31FC70](v4, -1, -1);
  }

  v12 = [a1 _captureSource];
  [v12 _removeCaptureDependent_];
}

unint64_t sub_20CF320A0()
{
  result = qword_27C81D058;
  if (!qword_27C81D058)
  {
    type metadata accessor for BlurGroupingEffectView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D058);
  }

  return result;
}

uint64_t sub_20CF32200(uint64_t a1)
{
  v3 = OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20CF32258(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

char *UtilityOnboardingOAuthLoginView.init(context:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  *&v1[OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_delegate] = 0;
  *&v1[OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_loginManager] = 0;
  *&v1[OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_context] = a1;
  swift_getKeyPath();
  v25 = a1;
  sub_20CF34968(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v6 = a1;
  sub_20D563908();

  v7 = &v6[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityID];
  swift_beginAccess();
  if (*(v7 + 1))
  {
    v8 = *v7;
    v9 = *(v7 + 1);
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = &v1[OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_utilityID];
  *v10 = v8;
  *(v10 + 1) = v9;
  v11 = type metadata accessor for UtilityOnboardingOAuthLoginView();
  v24.receiver = v1;
  v24.super_class = v11;
  sub_20D5663C8();
  v12 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
  swift_getKeyPath();
  v23 = v6;
  v13 = v12;
  sub_20D563908();

  v14 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v15 = *&v6[v14];
  if (v15)
  {
    v16 = v15;
    sub_20D564BF8();
  }

  else
  {
    v17 = sub_20D5636B8();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  }

  v18 = objc_allocWithZone(type metadata accessor for OAuthLoginManager());
  v19 = v13;
  v20 = sub_20CF34304(v5, v19, v18);

  v21 = *&v19[OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_loginManager];
  *&v19[OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_loginManager] = v20;

  return v19;
}

id sub_20CF326D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v38 - v3;
  v4 = sub_20D563BA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D565988();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v11 = qword_27C838280;
  sub_20D565998();
  v12 = sub_20D565968();
  v13 = sub_20D567EC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v4;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v42[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_20CEE913C(0x4C64694477656976, 0xED0000292864616FLL, v42);
    _os_log_impl(&dword_20CEB6000, v12, v13, "%s Loaded OAuthLoginView", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x20F31FC70](v16, -1, -1);
    v17 = v15;
    v4 = v14;
    MEMORY[0x20F31FC70](v17, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v18 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v18 startAnimating];
  v19 = v18;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = result;
  [result center];
  v23 = v22;
  v25 = v24;

  [v19 setCenter_];
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = result;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v27 = result;
  v28 = [objc_opt_self() systemBackgroundColor];
  [v27 setBackgroundColor_];

  v29 = *&v1[OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_context];
  v30 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__onboardingMethod;
  swift_beginAccess();
  if (*&v29[v30] != 2)
  {
    KeyPath = swift_getKeyPath();
    v38 = &v38;
    MEMORY[0x28223BE20](KeyPath);
    v41 = v29;
    sub_20CF34968(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    v32 = v29;
    sub_20D5638F8();
  }

  v33 = *&v1[OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_loginManager];
  if (v33)
  {
    v34 = v1;
    v35 = v33;
    sub_20CFD3A00(v34, v35, v34);
  }

  sub_20D563AE8();
  (*(v5 + 104))(v40, *MEMORY[0x277D16FC0], v4);
  sub_20D5663C8();
  v36 = v39;
  sub_20D563B78();
  v37 = sub_20D563B98();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

uint64_t sub_20CF32D78(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = 13;
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F98];
  v13 = sub_20D567C58();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_20D567C18();
  v14 = a3;
  sub_20D5663C8();
  v15 = a4;

  v16 = sub_20D567C08();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = a3;
  v17[5] = v11;
  v17[6] = v12;
  v17[7] = a1;
  v17[8] = a2;
  v17[9] = v15;
  sub_20CF18960(0, 0, v10, &unk_20D5BECC8, v17);
}

uint64_t sub_20CF32F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[35] = a8;
  v8[36] = v14;
  v8[33] = a6;
  v8[34] = a7;
  v8[31] = a4;
  v8[32] = a5;
  v9 = sub_20D565988();
  v8[37] = v9;
  v8[38] = *(v9 - 8);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = sub_20D567C18();
  v8[44] = sub_20D567C08();
  v11 = sub_20D567BA8();
  v8[45] = v11;
  v8[46] = v10;

  return MEMORY[0x2822009F8](sub_20CF33074, v11, v10);
}

uint64_t sub_20CF33074()
{
  v57 = v0;
  v1 = v0[31];
  if (v1)
  {
    v0[26] = v1;
    v2 = v1;
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
    type metadata accessor for ASWebAuthenticationSessionError(0);
    if (swift_dynamicCast())
    {
      v4 = v0[27];
      v0[29] = v4;
      sub_20CF34968(&qword_27C81B128, type metadata accessor for ASWebAuthenticationSessionError);
      sub_20D563598();
      if (v0[30] == 1)
      {
        if (qword_27C81A2D8 != -1)
        {
          swift_once();
        }

        v5 = qword_27C838280;
        sub_20D565998();
        v6 = sub_20D565968();
        v7 = sub_20D567EC8();
        v8 = os_log_type_enabled(v6, v7);
        v9 = v0[42];
        v10 = v0[37];
        v11 = v0[38];
        if (v8)
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v56[0] = v13;
          *v12 = 136315138;
          *(v12 + 4) = sub_20CEE913C(0x4C64694477656976, 0xED0000292864616FLL, v56);
          _os_log_impl(&dword_20CEB6000, v6, v7, "%s Canceled OAuth session", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x20F31FC70](v13, -1, -1);
          MEMORY[0x20F31FC70](v12, -1, -1);
        }

        else
        {
        }

        (*(v11 + 8))(v9, v10);
        v55 = v0[32];
        swift_beginAccess();
        *(v55 + 16) = 16;
        goto LABEL_25;
      }
    }

    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v33 = qword_27C838280;
    sub_20D565998();
    v34 = v1;
    v35 = sub_20D565968();
    v36 = sub_20D567EA8();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[41];
    v39 = v0[37];
    v40 = v0[38];
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v56[0] = v43;
      *v41 = 136315394;
      *(v41 + 4) = sub_20CEE913C(0x4C64694477656976, 0xED0000292864616FLL, v56);
      *(v41 + 12) = 2112;
      v44 = v1;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v45;
      *v42 = v45;
      _os_log_impl(&dword_20CEB6000, v35, v36, "%s OAuth Session failed. Error: %@", v41, 0x16u);
      sub_20CEF928C(v42, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v42, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x20F31FC70](v43, -1, -1);
      MEMORY[0x20F31FC70](v41, -1, -1);
    }

    (*(v40 + 8))(v38, v39);
    v46 = sub_20D567838();
    v48 = v47;
    swift_getErrorValue();
    v49 = v0[17];
    v50 = v0[18];
    v0[10] = v50;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    (*(*(v50 - 8) + 16))(boxed_opaque_existential_1, v49, v50);
    swift_beginAccess();
    sub_20CED9A44((v0 + 7), v46, v48);
    swift_endAccess();

    goto LABEL_25;
  }

  v14 = v0[35];
  if (!v14)
  {
    v52 = sub_20D567838();
    v54 = v53;
    v56[3] = &type metadata for UtilityOnboardingError;
    LOBYTE(v56[0]) = 2;
    swift_beginAccess();
    sub_20CED9A44(v56, v52, v54);
    swift_endAccess();
LABEL_25:
    v0[53] = 0;

    return MEMORY[0x2822009F8](sub_20CF33AA0, 0, 0);
  }

  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v15 = qword_27C838280;
  v0[47] = qword_27C838280;
  v16 = v15;
  sub_20D565998();
  sub_20D5663C8();
  v17 = sub_20D565968();
  v18 = sub_20D567EC8();

  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[40];
  v21 = v0[37];
  v22 = v0[38];
  if (v19)
  {
    v23 = v0[34];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v56[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_20CEE913C(0x4C64694477656976, 0xED0000292864616FLL, v56);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_20CEE913C(v23, v14, v56);
    _os_log_impl(&dword_20CEB6000, v17, v18, "%s Found code:%s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v25, -1, -1);
    MEMORY[0x20F31FC70](v24, -1, -1);
  }

  v26 = *(v22 + 8);
  v26(v20, v21);
  v27 = v0[36];
  v28 = OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_context;
  v0[48] = v26;
  v0[49] = v28;
  v29 = *(v27 + v28);
  v0[50] = v29;
  v29;
  v30 = swift_task_alloc();
  v0[51] = v30;
  *v30 = v0;
  v30[1] = sub_20CF337F8;
  v31 = v0[34];

  return sub_20CEE310C(v31, v14);
}

uint64_t sub_20CF337F8()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 368);
  v4 = *(v2 + 360);
  if (v0)
  {
    v5 = sub_20CF33C78;
  }

  else
  {
    v5 = sub_20CF3394C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20CF3394C()
{
  v1 = v0[49];
  v2 = v0[36];
  v3 = v0[32];
  v4 = sub_20D564B68();
  v0[5] = v4;
  v0[6] = sub_20CF34968(&qword_27C81BEB0, MEMORY[0x277D073A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07370], v4);
  LOBYTE(v4) = sub_20D563968();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v4)
  {
    v6 = 7;
  }

  else
  {
    v6 = 17;
  }

  swift_beginAccess();
  *(v3 + 16) = v6;
  v7 = *(v2 + v1);
  sub_20CEDA5BC();

  v0[53] = v0[52];

  return MEMORY[0x2822009F8](sub_20CF33AA0, 0, 0);
}

uint64_t sub_20CF33AA0()
{
  *(v0 + 432) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF33B2C, v2, v1);
}

void sub_20CF33B2C()
{
  v1 = v0[53];
  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];

  sub_20CF33EA8(v3 + 16, (v4 + 16), v2);
  if (v1)
  {
  }

  else
  {
    v5 = v0[45];
    v6 = v0[46];

    MEMORY[0x2822009F8](sub_20CF33BE8, v5, v6);
  }
}

uint64_t sub_20CF33BE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CF33C78()
{
  v19 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 376);
  sub_20D565998();
  v3 = v1;
  v4 = sub_20D565968();
  v5 = sub_20D567EA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 416);
  v8 = *(v0 + 384);
  v9 = *(v0 + 312);
  v10 = *(v0 + 296);
  if (v6)
  {
    v17 = *(v0 + 384);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_20CEE913C(0x4C64694477656976, 0xED0000292864616FLL, &v18);
    *(v11 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20CEB6000, v4, v5, "%s Couldn't generate tokens from OAuth. Error: %@", v11, 0x16u);
    sub_20CEF928C(v12, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F31FC70](v13, -1, -1);
    MEMORY[0x20F31FC70](v11, -1, -1);

    v17(v9, v10);
  }

  else
  {

    v8(v9, v10);
  }

  *(v0 + 424) = 0;

  return MEMORY[0x2822009F8](sub_20CF33AA0, 0, 0);
}

uint64_t sub_20CF33EA8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_20D567838();
  v7 = v6;
  swift_beginAccess();
  v8 = *a2;
  v14[3] = MEMORY[0x277D83E88];
  v14[0] = v8;
  swift_beginAccess();
  sub_20CED9A44(v14, v5, v7);
  swift_endAccess();
  v9 = OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_delegate;
  result = swift_beginAccess();
  v11 = *(a3 + v9);
  if (v11)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    v12 = sub_20D5663C8();
    sub_20CF27E80(v12);

    v13 = sub_20D567738();

    [v11 viewController:a3 didFinishWithConfigurationResults:v13];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20CF34064(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a1;
  v5 = [v8 navigationController];
  if (v5)
  {
    v6 = a4 & 1;
    v7 = v5;
    [v5 setNavigationBarHidden_];
  }
}

id UtilityOnboardingOAuthLoginView.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20D5677F8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id UtilityOnboardingOAuthLoginView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityOnboardingOAuthLoginView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20CF34304(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_20D563818();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authURL;
  v11 = sub_20D5636B8();
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  *&a3[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authSession] = 0;
  swift_beginAccess();
  sub_20CF26E88(a1, &a3[v10]);
  swift_endAccess();
  *&a3[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_presentingContext] = a2;
  sub_20D563808();
  v12 = sub_20D5637B8();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v15 = &a3[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_uuid];
  *v15 = v12;
  v15[1] = v14;
  v16 = type metadata accessor for OAuthLoginManager();
  v20.receiver = a3;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  sub_20CEF928C(a1, &unk_27C81CDF0);
  return v17;
}

id sub_20CF344C8()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 view];
  if (result)
  {
    v7 = result;
    v8 = [result window];

    result = v8;
    if (!v8)
    {
      if (qword_27C81A2D8 != -1)
      {
        swift_once();
      }

      v9 = qword_27C838280;
      sub_20D565998();
      v10 = sub_20D565968();
      v11 = sub_20D567EC8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v15 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_20CEE913C(0xD000000000000018, 0x800000020D5CEE80, &v15);
        _os_log_impl(&dword_20CEB6000, v10, v11, "%s OAuth presentation anchor with self.view.window == nil", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x20F31FC70](v13, -1, -1);
        MEMORY[0x20F31FC70](v12, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      return [objc_allocWithZone(MEMORY[0x277D75DA0]) init];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_20CF34700()
{
  result = qword_27C81E450;
  if (!qword_27C81E450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C81E450);
  }

  return result;
}

uint64_t sub_20CF3487C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20CEF5FFC;

  return sub_20CF32F48(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_20CF34968(unint64_t *a1, void (*a2)(uint64_t))
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

id TriggerActionPickerViewController.__allocating_init(triggerBuilder:mode:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = [objc_allocWithZone(HUTriggerActionFlow) initWithEditorMode_];
  v9 = [v7 initWithTriggerBuilder:a1 flow:v8 delegate:a3];

  swift_unknownObjectRelease();
  return v9;
}

id TriggerActionPickerViewController.init(triggerBuilder:mode:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(HUTriggerActionFlow) initWithEditorMode_];
  v7 = [v3 initWithTriggerBuilder:a1 flow:v6 delegate:a3];

  swift_unknownObjectRelease();
  return v7;
}

id TriggerActionPickerViewController.init(triggerBuilder:flow:delegate:)(void *a1, void *a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___HUTriggerActionPickerViewController_actionSetModule] = 0;
  *&v3[OBJC_IVAR___HUTriggerActionPickerViewController_accessoryModule] = 0;
  *&v3[OBJC_IVAR___HUTriggerActionPickerViewController_triggerBuilder] = a1;
  *&v3[OBJC_IVAR___HUTriggerActionPickerViewController_flow] = a2;
  *&v3[OBJC_IVAR___HUTriggerActionPickerViewController_delegate] = a3;
  v5 = a1;
  v32 = a2;
  swift_unknownObjectRetain();
  v6 = [v5 triggerActionSets];
  [v6 copy];

  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20CECF940(0, &qword_27C81EF70);
  swift_dynamicCast();
  v7 = [v5 home];
  v8 = v40;
  v9 = v7;
  v10 = [v9 hf_characteristicValueManager];
  if (qword_27C81A278 != -1)
  {
    swift_once();
  }

  v11 = byte_27C8381F0;
  v12 = qword_27C8381F8;
  v13 = unk_27C838200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D0D0);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D84F90];
  *(v14 + 16) = 0;
  *(v14 + 24) = v15;
  *(v14 + 80) = 0;
  *(v14 + 48) = v11;
  *(v14 + 56) = v12;
  *(v14 + 64) = v13;
  v31 = v8;
  *(v14 + 32) = v8;
  *(v14 + 40) = v9;
  *(v14 + 72) = v10;
  *&v3[OBJC_IVAR___HUTriggerActionPickerViewController_selectionController] = v14;
  v16 = objc_opt_self();
  v17 = v13;
  v18 = v12;
  if ([v16 isShortcuts])
  {
    v19 = [objc_opt_self() sharedDispatcher];
    [v19 setOverrideHome_];
  }

  v20 = sub_20CF39400(v5);
  v21 = [objc_allocWithZone(MEMORY[0x277D14B08]) initWithDelegate_];
  [objc_opt_self() preloadShortcutHomeManager];
  v39.receiver = v3;
  v39.super_class = type metadata accessor for TriggerActionPickerViewController();
  v22 = objc_msgSendSuper2(&v39, sel_initUsingCompositionalLayoutWithItemManager_, v21);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = sub_20CF396C0;
  v38 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_20CF351D8;
  v36 = &block_descriptor_4;
  v24 = _Block_copy(&aBlock);
  v25 = v22;

  [v21 setHomeCreator_];
  _Block_release(v24);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v20;
  v37 = sub_20CF396E0;
  v38 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_20CF35658;
  v36 = &block_descriptor_7;
  v28 = _Block_copy(&aBlock);
  v29 = v20;

  [v21 setItemModuleCreator_];
  _Block_release(v28);

  swift_unknownObjectRelease();
  return v25;
}

id sub_20CF350B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = *(Strong + OBJC_IVAR___HUTriggerActionPickerViewController_triggerBuilder), v1, v3 = [v2 home], v2, v3))
  {
    v4 = [objc_opt_self() futureWithResult_];
  }

  else
  {
    v5 = [objc_opt_self() hf:59 errorWithCode:?];
    v3 = sub_20D5635C8();
    v4 = [objc_opt_self() futureWithError_];
  }

  return v4;
}

id sub_20CF351D8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

double sub_20CF35228(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(type metadata accessor for SelectableActionSetItemModule());
  v8 = a1;
  swift_unknownObjectRetain();
  v9 = sub_20CF3B8B4(v8, a2);

  swift_unknownObjectRelease();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR___HUTriggerActionPickerViewController_selectionController);
    v12 = Strong;

    v13 = sub_20CF156D0(&qword_27C81D198, &qword_27C81D0D0);
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = &v9[OBJC_IVAR___HUSelectableActionSetItemModule_selectionController];
  swift_beginAccess();
  *v14 = v11;
  *(v14 + 1) = v13;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = *(v15 + OBJC_IVAR___HUTriggerActionPickerViewController_actionSetModule);
    *(v15 + OBJC_IVAR___HUTriggerActionPickerViewController_actionSetModule) = v9;
    v17 = v15;
    v18 = v9;
  }

  v19 = objc_allocWithZone(type metadata accessor for AccessoryRepresentableItemModule());
  v20 = &v19[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v19[OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider] = 0;
  *&v19[OBJC_IVAR___HUAccessoryRepresentableItemModule_context] = a4;
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType] = 1;
  swift_unknownObjectWeakAssign();
  v21 = &v19[OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_itemProviderBlock];
  *v21 = 0;
  *(v21 + 1) = 0;
  v44.receiver = v19;
  v44.super_class = type metadata accessor for AccessoryItemModule();
  v22 = a4;
  v23 = objc_msgSendSuper2(&v44, sel_initWithItemUpdater_, a2);
  v24 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v25 = *&v22[v24];
  v26 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  *&v23[v26] = v25;
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = *(v27 + OBJC_IVAR___HUTriggerActionPickerViewController_selectionController);
    v29 = v27;

    v30 = sub_20CF156D0(&qword_27C81D198, &qword_27C81D0D0);
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = &v23[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  swift_beginAccess();
  *v31 = v28;
  *(v31 + 1) = v30;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v32 = swift_unknownObjectWeakLoadStrong();
  if (v32)
  {
    v33 = *(v32 + OBJC_IVAR___HUTriggerActionPickerViewController_accessoryModule);
    *(v32 + OBJC_IVAR___HUTriggerActionPickerViewController_accessoryModule) = v23;
    v34 = v32;
    v35 = v23;
  }

  v36 = objc_allocWithZone(_s23ConvertToShortcutModuleCMa());
  v37 = v8;
  swift_unknownObjectRetain();
  v38 = sub_20CFA5AB4(v37, a2);

  swift_unknownObjectRelease();
  swift_beginAccess();
  v39 = swift_unknownObjectWeakLoadStrong();
  v40 = &off_2823D2438;
  if (!v39)
  {
    v40 = 0;
  }

  *&v38[OBJC_IVAR____TtCC6HomeUI33TriggerActionPickerViewController23ConvertToShortcutModule_delegate + 8] = v40;
  swift_unknownObjectWeakAssign();

  v41 = &v38[OBJC_IVAR____TtCC6HomeUI33TriggerActionPickerViewController23ConvertToShortcutModule_sectionHeader];
  *v41 = 0;
  *(v41 + 1) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v42 = swift_allocObject();
  *&result = 3;
  *(v42 + 16) = xmmword_20D5BECD0;
  *(v42 + 32) = v9;
  *(v42 + 40) = v23;
  *(v42 + 48) = v38;
  return result;
}

id sub_20CF35658(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();

  sub_20CECF940(0, &qword_28111FFE0);
  v7 = sub_20D567A58();

  return v7;
}

uint64_t sub_20CF35774(uint64_t a1, void *a2)
{
  v3 = sub_20D565DE8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v23[1] = &unk_2825BCA78;
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v11 = result;
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      swift_getObjectType();
      v23[0] = v11;
      swift_unknownObjectRetain();
      sub_20D565EC8();
      sub_20D565D98();
      sub_20CF39784(&qword_27C81F060, MEMORY[0x277D13288]);
      v12 = sub_20D568678();
      v13 = *(v4 + 8);
      v13(v7, v3);
      v13(v9, v3);
      if (v12)
      {
        v14 = [a2 asEventTriggerBuilder];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 characteristics];
          if (v16)
          {
            v17 = v16;
            sub_20CECF940(0, &unk_27C81AE40);
            sub_20CEF7F74(&qword_27C81FC10, &unk_27C81AE40);
            v18 = sub_20D567D08();

            v19 = sub_20D568218();
            v20 = sub_20CF842A0(v19, v18);

            if ((v20 & 0xC000000000000001) != 0)
            {
              v21 = sub_20D568768();
              swift_unknownObjectRelease();

              if (!v21)
              {
                return 1;
              }
            }

            else
            {
              swift_unknownObjectRelease();

              v22 = *(v20 + 16);

              if (!v22)
              {
                return 1;
              }
            }

            return 0;
          }
        }

        swift_unknownObjectRelease();
        return 1;
      }

      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void sub_20CF35A74()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TriggerActionPickerViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR___HUTriggerActionPickerViewController_triggerBuilder];
  v2 = [objc_msgSend(v1 context)];
  swift_unknownObjectRelease();
  if (v2 || (v2 = [v1 naturalLanguageNameOfType_]) != 0)
  {
    sub_20D567838();

    v2 = sub_20D5677F8();
  }

  [v0 setTitle_];

  v3 = [v0 navigationItem];
  v4 = [objc_msgSend(v1 context)];
  swift_unknownObjectRelease();
  if (!v4)
  {
    sub_20D567838();
    v4 = sub_20D5677F8();
  }

  [v3 setPrompt_];
}

uint64_t sub_20CF35CE8(uint64_t a1)
{
  sub_20D567EA8();
  if (qword_27C81A318 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20D5BC410;
  v4 = [v1 itemModuleControllers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D0E8);
  sub_20CF156D0(&qword_27C81D0F0, &qword_27C81D0E8);
  v5 = sub_20D567D08();

  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D0F8);
  *(v3 + 64) = sub_20CF156D0(&unk_27C81D100, &qword_27C81D0F8);
  *(v3 + 32) = v5;
  sub_20D565868();

  v6 = *&v1[OBJC_IVAR___HUTriggerActionPickerViewController_actionSetModule];
  if (v6 && [v6 containsItem_] || (v7 = *&v1[OBJC_IVAR___HUTriggerActionPickerViewController_accessoryModule]) != 0 && objc_msgSend(v7, sel_containsItem_, a1))
  {
    v8 = &unk_27C81D110;
  }

  else
  {
    v8 = &qword_28111FEA0;
  }

  return sub_20CECF940(0, v8);
}

uint64_t sub_20CF36008(void *a1)
{
  type metadata accessor for SelectableActionSetItemModule();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for SelectableActionSetItemModuleController();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR___HUSelectableActionSetItemModuleController_cellVerticalContentInset] = 0x4028000000000000;
    *&v5[OBJC_IVAR___HUSelectableActionSetItemModuleController_collectionLayoutManager] = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    v21.receiver = v5;
    v21.super_class = v4;
    v6 = objc_msgSendSuper2(&v21, sel_initWithModule_, v3);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v7 = &v6[OBJC_IVAR____TtC6HomeUI30SelectableItemModuleController_delegate];
    swift_beginAccess();
    *(v7 + 1) = &protocol witness table for TriggerActionPickerViewController;
    swift_unknownObjectWeakAssign();
    v8 = [v6 asGeneric];
LABEL_7:
    v15 = v8;

    return v15;
  }

  type metadata accessor for AccessoryRepresentableItemModule();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = type metadata accessor for AccessoryListModuleController();
    v12 = objc_allocWithZone(v11);
    *&v12[OBJC_IVAR___HUAccessoryListModuleController_cellVerticalContentInset] = 0x4028000000000000;
    *&v12[OBJC_IVAR___HUAccessoryListModuleController_collectionLayoutManager] = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    v22.receiver = v12;
    v22.super_class = v11;
    v6 = objc_msgSendSuper2(&v22, sel_initWithModule_, v10);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v13 = &v6[OBJC_IVAR____TtC6HomeUI30SelectableItemModuleController_delegate];
    swift_beginAccess();
    *(v13 + 1) = &protocol witness table for TriggerActionPickerViewController;
    swift_unknownObjectWeakAssign();
    v8 = [v6 asGeneric];
    goto LABEL_7;
  }

  _s23ConvertToShortcutModuleCMa();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v6 = [objc_allocWithZone(_s33ConvertToShortcutModuleControllerCMa()) initWithModule_];
    v8 = [v6 asGeneric];
    goto LABEL_7;
  }

  sub_20D568858();

  v17 = [a1 description];
  v18 = sub_20D567838();
  v20 = v19;

  MEMORY[0x20F31CDB0](v18, v20);

  result = sub_20D568A58();
  __break(1u);
  return result;
}

void sub_20CF364F4()
{
  v1 = *&v0[OBJC_IVAR___HUTriggerActionPickerViewController_flow];
  if (([v1 isStandalone] & 1) != 0 || objc_msgSend(v1, sel_isSingleFlow))
  {
    v2 = [v0 navigationItem];
    v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelWithSender_];
    [v2 setLeftBarButtonItem_];
  }

  v4 = [v1 isLastState];
  v5 = [v0 navigationItem];
  if (v4)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_nextWithSender_];
  }

  else
  {
    v7 = sub_20D5677F8();
    v8 = HULocalizedString(v7);

    if (!v8)
    {
      sub_20D567838();
      v8 = sub_20D5677F8();
    }

    v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v8 style:2 target:v0 action:sel_nextWithSender_];
  }

  [v5 setRightBarButtonItem_];

  sub_20CF366D4();
}

void sub_20CF366D4()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v3 = [v2 rightBarButtonItem];

  if (!v3)
  {
    return;
  }

  v4 = *&v1[OBJC_IVAR___HUTriggerActionPickerViewController_selectionController];
  swift_beginAccess();
  if (*(v4 + 80) == 1)
  {
    v5 = [v1 itemManager];
    v6 = [v5 allDisplayedItems];

    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    v7 = sub_20D567D08();

    if ((v7 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_20D568718();
      sub_20D567D58();
      v7 = v22;
      v8 = v23;
      v9 = v24;
      v10 = v25;
      v11 = v26;
    }

    else
    {
      v13 = -1 << *(v7 + 32);
      v8 = v7 + 56;
      v9 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v11 = v15 & *(v7 + 56);
      sub_20D5663C8();
      v10 = 0;
    }

    v20 = v9;
    while (1)
    {
      if (v7 < 0)
      {
        if (!sub_20D568798() || (swift_dynamicCast(), (v16 = v21) == 0))
        {
LABEL_21:
          v12 = 0;
LABEL_22:
          sub_20CEC80DC();

          goto LABEL_23;
        }
      }

      else
      {
        v18 = v10;
        v19 = v11;
        if (!v11)
        {
          while (1)
          {
            v10 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v10 >= ((v9 + 64) >> 6))
            {
              goto LABEL_21;
            }

            v19 = *(v8 + 8 * v10);
            ++v18;
            if (v19)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          return;
        }

LABEL_11:
        v11 = (v19 - 1) & v19;
        v16 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v19)))));
        if (!v16)
        {
          goto LABEL_21;
        }
      }

      v17 = sub_20CF385B8(v16);

      if (v17)
      {
        v12 = 1;
        goto LABEL_22;
      }
    }
  }

  v12 = 0;
LABEL_23:
  [v3 setEnabled_];
}

void sub_20CF36A50()
{
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItem];

  v3 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v4 = [v0 navigationItem];
  v5 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v4 setRightBarButtonItem_];

  [v3 startAnimating];

  v7 = sub_20D027B40(v6);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_20CF39714;
  v23 = v8;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_20D02C760;
  v21 = &block_descriptor_22_0;
  v9 = _Block_copy(&v18);

  v10 = [v7 flatMap_];
  _Block_release(v9);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v2;
  v22 = sub_20CF3975C;
  v23 = v12;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_20CF13714;
  v21 = &block_descriptor_29_0;
  v13 = _Block_copy(&v18);
  v14 = v2;

  v15 = [v10 addSuccessBlock_];
  _Block_release(v13);

  v22 = sub_20CF36F00;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_20D0261C0;
  v21 = &block_descriptor_32;
  v16 = _Block_copy(&v18);
  v17 = [v15 addFailureBlock_];
  _Block_release(v16);
}

void sub_20CF36DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR___HUTriggerActionPickerViewController_delegate;
    v7 = *(Strong + OBJC_IVAR___HUTriggerActionPickerViewController_delegate);
    if ([v7 respondsToSelector_])
    {
      [v7 triggerEditor:v5 didCommitTriggerBuilder:*&v5[OBJC_IVAR___HUTriggerActionPickerViewController_triggerBuilder] withError:0];
    }

    v8 = [v5 navigationItem];
    [v8 setRightBarButtonItem_];

    v9 = [*&v5[OBJC_IVAR___HUTriggerActionPickerViewController_flow] getNextState];
    if ([v9 isFinished])
    {
      v10 = *&v5[v6];
      v11 = *&v5[OBJC_IVAR___HUTriggerActionPickerViewController_triggerBuilder];
      swift_unknownObjectRetain();
      v12 = v11;
      [v10 triggerEditor:v5 didFinishWithTriggerBuilder:v12];

      swift_unknownObjectRelease();
      v5 = v12;
    }

    else
    {
      sub_20CF36FE4();
    }
  }
}

void sub_20CF36F00()
{
  v0 = [objc_opt_self() sharedHandler];
  v1 = sub_20D5635C8();
  [v0 handleError_];
}

void sub_20CF36FE4()
{
  v5 = [*&v0[OBJC_IVAR___HUTriggerActionPickerViewController_flow] getNextState];
  v1 = [objc_allocWithZone(HUTriggerSummaryViewController) initWithTriggerBuilder:*&v0[OBJC_IVAR___HUTriggerActionPickerViewController_triggerBuilder] flow:v5 delegate:*&v0[OBJC_IVAR___HUTriggerActionPickerViewController_delegate]];
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = v1;
  }
}

id sub_20CF370E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___HUTriggerActionPickerViewController_triggerBuilder;
    v3 = [*(Strong + OBJC_IVAR___HUTriggerActionPickerViewController_triggerBuilder) triggerActionSets];
    [v3 updateFromTriggerActionSetsBuilder_];

    v4 = [objc_opt_self() futureWithResult_];
  }

  else
  {
    v5 = [objc_opt_self() hf:30 errorWithCode:?];
    v1 = sub_20D5635C8();
    v4 = [objc_opt_self() futureWithError_];
  }

  return v4;
}

id TriggerActionPickerViewController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id TriggerActionPickerViewController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

id TriggerActionPickerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TriggerActionPickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TriggerActionPickerViewController.overrideSelectionBehavior(for:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (sub_20CF37810(a1) && (, v4 = sub_20CF385B8(a1), , (v4 & 1) == 0))
  {
    *a2 = [objc_opt_self() hf:85 errorWithCode:?];
    v10 = *MEMORY[0x277D13248];
    v11 = sub_20D565B18();
    v13 = *(v11 - 8);
    (*(v13 + 104))(a2, v10, v11);
    v6 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v7 = v11;
  }

  else
  {
    v5 = sub_20D565B18();
    v6 = *(*(v5 - 8) + 56);
    v7 = v5;
    v8 = a2;
    v9 = 1;
  }

  return v6(v8, v9, 1, v7);
}

uint64_t sub_20CF37810(void *a1)
{
  if ((sub_20CF3834C(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = [v1 itemManager];
  v3 = [v2 sourceItem];

  if (v3)
  {
    v4 = [v3 latestResults];

    if (v4)
    {
      v5 = sub_20D567758();

      v6 = sub_20D567838();
      if (*(v5 + 16))
      {
        v8 = sub_20CEED668(v6, v7);
        v10 = v9;

        if (v10)
        {
          sub_20CED43FC(*(v5 + 56) + 32 * v8, &v14);

          goto LABEL_10;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0u;
  v15 = 0u;
LABEL_10:
  v13[0] = v14;
  v13[1] = v15;
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      return v12;
    }
  }

  else
  {
    sub_20CEF928C(v13, &qword_27C81BF00);
  }

  return 0;
}

uint64_t TriggerActionPickerViewController.handle(selectionError:for:)(uint64_t a1, void *a2)
{
  v3 = sub_20D5635C8();
  v4 = [v3 domain];
  v5 = sub_20D567838();
  v7 = v6;

  if (v5 == sub_20D567838() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_20D568BF8();

    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v3 code] != 85)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  sub_20CF37A98(a2);
  v11 = 1;
LABEL_11:

  return v11;
}

void sub_20CF37A98(void *a1)
{
  v2 = sub_20CF37810(a1);
  v38 = a1;
  sub_20CECF940(0, &qword_281120AC0);
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820750);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v41 + 1));
    v4 = sub_20D5659A8();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v42 = 0;
    aBlock = 0u;
    v41 = 0u;
    sub_20CEF928C(&aBlock, &unk_27C81D120);
    v4 = v3;
  }

  objc_opt_self();
  swift_dynamicCastObjCClass();
  v5 = [v3 latestResults];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = sub_20D567758();

  v8 = sub_20D567838();
  if (!*(v7 + 16))
  {

    goto LABEL_10;
  }

  v10 = sub_20CEED668(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_20CED43FC(*(v7 + 56) + 32 * v10, &aBlock);

  v5 = swift_dynamicCast();
  if (v5)
  {
    v14 = v38;
    v13 = v39;
    goto LABEL_12;
  }

LABEL_11:
  v14 = 0;
  v13 = 0;
LABEL_12:
  v15 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v15);
  sub_20D5640A8();
  v16 = sub_20D5677F8();
  v17 = HULocalizedString(v16);

  sub_20D567838();
  v18 = sub_20D5677F8();

  v19 = HULocalizedString(v18);

  sub_20D567838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20D5BC410;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_20CED4498();
  v21 = 0x6E776F6E6B6E75;
  if (v13)
  {
    v21 = v14;
  }

  v22 = 0xE700000000000000;
  if (v13)
  {
    v22 = v13;
  }

  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  sub_20D567848();

  v23 = sub_20D5677F8();

  v24 = sub_20D5677F8();

  v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

  v26 = sub_20D5677F8();
  v27 = HULocalizedString(v26);

  sub_20D567838();
  v28 = sub_20D5677F8();

  v29 = objc_opt_self();
  v30 = [v29 actionWithTitle:v28 style:1 handler:0];

  [v25 addAction_];
  v31 = sub_20D5677F8();
  v32 = HULocalizedString(v31);

  sub_20D567838();
  v33 = swift_allocObject();
  *(v33 + 16) = v2;
  v34 = sub_20D5677F8();

  v42 = sub_20CF3977C;
  v43 = v33;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v41 = sub_20CF13714;
  *(&v41 + 1) = &block_descriptor_38;
  v35 = _Block_copy(&aBlock);

  v36 = [v29 actionWithTitle:v34 style:0 handler:v35];
  _Block_release(v35);

  [v25 addAction_];
  [v37 presentViewController:v25 animated:1 completion:0];
}

unint64_t sub_20CF3810C(void *a1)
{
  sub_20D568858();

  v2 = [a1 description];
  v3 = sub_20D567838();
  v5 = v4;

  MEMORY[0x20F31CDB0](v3, v5);

  return 0xD000000000000023;
}

id sub_20CF381BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_20D5636B8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  result = [objc_opt_self() settingsURLForForceDisableReasons_];
  if (result)
  {
    v11 = result;
    sub_20D563698();

    (*(v4 + 32))(v9, v7, v3);
    v12 = [objc_opt_self() sharedInstance];
    v13 = sub_20D563678();

    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

uint64_t sub_20CF3834C(void *a1)
{
  v1 = [a1 latestResults];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_20D567758();

  v4 = sub_20D567838();
  if (!*(v3 + 16))
  {

    goto LABEL_8;
  }

  v6 = sub_20CEED668(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_20CED43FC(*(v3 + 56) + 32 * v6, v11);

  if (swift_dynamicCast() & 1) != 0 && (v10)
  {
    return 1;
  }

LABEL_9:
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result actionsMayRequireDeviceUnlock];
  }

  return result;
}

id sub_20CF38494(void *a1)
{
  v8 = a1;
  sub_20CECF940(0, &qword_281120AC0);
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820750);
  if (swift_dynamicCast())
  {
    sub_20CF02B6C(v6, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v2 = sub_20D5659A8();
    v3 = sub_20CF38494();

    __swift_destroy_boxed_opaque_existential_1(v9);
    return v3;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_20CEF928C(v6, &unk_27C81D120);

    return v5;
  }
}

uint64_t sub_20CF385B8(void *a1)
{
  v3 = sub_20D563818();
  v117 = *(v3 - 1);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v104 - v7;
  v9 = sub_20D5642E8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v104 - v14;
  v16 = sub_20CF38494(a1);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = [v17 actionSet];
    v19 = sub_20D568298();

    return v19 & 1;
  }

  v114 = v8;
  v109 = v13;
  v110 = v15;
  v115 = v6;
  v120[6] = &unk_28251AFC0;
  v21 = swift_dynamicCastObjCProtocolConditional();
  if (!v21)
  {

    return 0;
  }

  v107 = v10;
  v108 = v9;
  j = v1;
  v118 = v3;
  v106 = v16;
  v113 = v21;
  v22 = [v21 accessories];
  v23 = sub_20CECF940(0, &qword_28111FFF0);
  v24 = sub_20CEF7F74(&qword_27C820660, &qword_28111FFF0);
  v25 = sub_20D567D08();

  v111 = v24;
  if ((v25 & 0xC000000000000001) != 0)
  {
    sub_20D568718();
    sub_20D567D58();
    v25 = v120[7];
    v26 = v120[8];
    v27 = v120[9];
    v28 = v120[10];
    v29 = v120[11];
  }

  else
  {
    v28 = 0;
    v30 = -1 << *(v25 + 32);
    v26 = v25 + 56;
    v27 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v29 = v32 & *(v25 + 56);
  }

  v112 = v27;
  v33 = (v27 + 64) >> 6;
  while (1)
  {
    if (v25 < 0)
    {
      v38 = sub_20D568798();
      if (!v38)
      {
        goto LABEL_27;
      }

      v119 = v38;
      swift_dynamicCast();
      v37 = v120[0];
      v36 = v28;
      v6 = v29;
      if (!v120[0])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v34 = v28;
      v35 = v29;
      v36 = v28;
      if (!v29)
      {
        while (1)
        {
          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            __break(1u);
            goto LABEL_42;
          }

          if (v36 >= v33)
          {
            break;
          }

          v35 = *(v26 + 8 * v36);
          ++v34;
          if (v35)
          {
            goto LABEL_18;
          }
        }

LABEL_27:
        v110 = v23;
        sub_20CEC80DC();
        v50 = [v113 services];
        sub_20CECF940(0, &qword_27C81AEC0);
        sub_20CEF7F74(&qword_27C81D290, &qword_27C81AEC0);
        v51 = sub_20D567D08();

        v6 = sub_20D07AFB4(v51);
        v112 = 0;

        if (v6 >> 62)
        {
          goto LABEL_44;
        }

        for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
        {
          v53 = 0;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v54 = MEMORY[0x20F31DD20](v53, v6);
            }

            else
            {
              if (v53 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_43;
              }

              v54 = *(v6 + 8 * v53 + 32);
            }

            v55 = v54;
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            sub_20CECF940(0, &qword_27C81EF70);
            v57 = sub_20D565BA8();
            if (v57)
            {
              v58 = v57;

              return 1;
            }

            ++v53;
            if (v56 == i)
            {
              goto LABEL_45;
            }
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          ;
        }

LABEL_45:

        v59 = [v113 accessories];
        v60 = sub_20D567D08();

        v61 = v112;
        sub_20D07A608(v60);
        v63 = v62;

        v64 = sub_20D568288();
        v65 = &selRef_isUserScrubbing;
        if (!v64)
        {
          goto LABEL_49;
        }

        v66 = v64;
        v67 = [v64 mediaProfiles];

        v68 = sub_20D567D08();
        v69 = *(v68 + 16);
        if (v69)
        {
          while (1)
          {
            v70 = sub_20CF4A7A8(v69, 0);
            v71 = sub_20CF4FF18(v120, (v70 + 4), v69, v68);
            sub_20CEC80DC();
            if (v71 == v69)
            {
              break;
            }

            __break(1u);
LABEL_49:
            v68 = MEMORY[0x277D84FA0];
            v69 = *(MEMORY[0x277D84FA0] + 16);
            if (!v69)
            {
              goto LABEL_50;
            }
          }
        }

        else
        {
LABEL_50:

          v70 = MEMORY[0x277D84F90];
        }

        v72 = sub_20D07AD8C(v70);

        if (v72 >> 62)
        {
          goto LABEL_104;
        }

        for (j = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_20D568768())
        {
          v110 = v63;
          if (j)
          {
            break;
          }

LABEL_77:
          v63 = MEMORY[0x277D84F90];
LABEL_78:

          v65 = sub_20CEF3148(v63);

          if (v110 >> 62)
          {
            v87 = sub_20D568768();
          }

          else
          {
            v87 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v88 = v117;
          v72 = v115;
          if (!v87)
          {
LABEL_95:

            return 0;
          }

          v104 = v61;
          v89 = 0;
          v109 = v110 & 0xC000000000000001;
          v108 = v110 & 0xFFFFFFFFFFFFFF8;
          v107 = v110 + 32;
          j = (v65 + 7);
          v113 = (v117 + 16);
          v61 = (v117 + 8);
          v105 = v87;
          while (1)
          {
            if (v109)
            {
              v90 = MEMORY[0x20F31DD20](v89, v110);
            }

            else
            {
              if (v89 >= *(v108 + 16))
              {
                goto LABEL_103;
              }

              v90 = *(v107 + 8 * v89);
            }

            v63 = v90;
            v85 = __OFADD__(v89, 1);
            v91 = v89 + 1;
            if (v85)
            {
              break;
            }

            v92 = [v90 uniqueIdentifier];
            sub_20D5637E8();

            v93 = v65[2];
            v111 = v91;
            v112 = v63;
            if (v93)
            {
              sub_20CF39784(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
              v94 = sub_20D5677B8();
              v95 = -1 << *(v65 + 32);
              v63 = v94 & ~v95;
              if ((*(j + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63))
              {
                v96 = ~v95;
                v97 = *(v88 + 72);
                v98 = *(v88 + 16);
                while (1)
                {
                  v99 = v65;
                  v100 = v114;
                  v101 = v118;
                  v98(v114, &v65[6][v97 * v63], v118);
                  sub_20CF39784(qword_27C820680, MEMORY[0x277CC95F0]);
                  v102 = sub_20D5677E8();
                  v103 = *v61;
                  (*v61)(v100, v101);
                  if (v102)
                  {
                    break;
                  }

                  v63 = (v63 + 1) & v96;
                  v72 = v115;
                  v65 = v99;
                  if (((*(j + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
                  {
                    goto LABEL_82;
                  }
                }

                v103(v115, v118);
                return 1;
              }
            }

LABEL_82:

            (*v61)(v72, v118);
            v89 = v111;
            v88 = v117;
            if (v111 == v105)
            {
              goto LABEL_95;
            }
          }

LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          ;
        }

        v73 = 0;
        v112 = (v72 & 0xFFFFFFFFFFFFFF8);
        v113 = (v72 & 0xC000000000000001);
        v63 = MEMORY[0x277D84F90];
        v111 = v72;
        while (1)
        {
          if (v113)
          {
            v74 = MEMORY[0x20F31DD20](v73, v72);
            v75 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
LABEL_76:
              __break(1u);
              goto LABEL_77;
            }
          }

          else
          {
            if (v73 >= v112[2])
            {
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
              goto LABEL_102;
            }

            v74 = *(v72 + 8 * v73 + 32);
            swift_unknownObjectRetain();
            v75 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              goto LABEL_76;
            }
          }

          v76 = v65;
          v77 = [v74 v65[499]];
          v120[0] = 0;
          v72 = 0x277CD1BD8uLL;
          sub_20CECF940(0, &qword_27C81D130);
          sub_20CEF7F74(&unk_27C820670, &qword_27C81D130);
          result = sub_20D567CE8();
          v78 = v120[0];
          if (!v120[0])
          {
            __break(1u);
            return result;
          }

          v79 = sub_20D07A88C(v78);

          swift_unknownObjectRelease();
          v80 = *(v79 + 16);
          v81 = *(v63 + 16);
          v65 = (v81 + v80);
          if (__OFADD__(v81, v80))
          {
            goto LABEL_98;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v65 <= *(v63 + 24) >> 1)
          {
            if (!*(v79 + 16))
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (v81 <= v65)
            {
              v83 = v81 + v80;
            }

            else
            {
              v83 = v81;
            }

            v63 = sub_20CEE8338(isUniquelyReferenced_nonNull_native, v83, 1, v63);
            if (!*(v79 + 16))
            {
LABEL_55:

              v65 = v76;
              if (v80)
              {
                goto LABEL_99;
              }

              goto LABEL_56;
            }
          }

          if ((*(v63 + 24) >> 1) - *(v63 + 16) < v80)
          {
            goto LABEL_100;
          }

          swift_arrayInitWithCopy();

          v65 = v76;
          if (v80)
          {
            v84 = *(v63 + 16);
            v85 = __OFADD__(v84, v80);
            v86 = v84 + v80;
            if (v85)
            {
              goto LABEL_101;
            }

            *(v63 + 16) = v86;
          }

LABEL_56:
          ++v73;
          v72 = v111;
          if (v75 == j)
          {
            goto LABEL_78;
          }
        }
      }

LABEL_18:
      v6 = (v35 - 1) & v35;
      v37 = *(*(v25 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
      if (!v37)
      {
        goto LABEL_27;
      }
    }

    if (sub_20D568208())
    {
      sub_20D567E38();
      if ((v39 & 1) == 0)
      {
        v40 = [v37 home];
        if (v40)
        {
          break;
        }
      }
    }

    v28 = v36;
    v29 = v6;
  }

  v118 = v40;
  v41 = [v40 uniqueIdentifier];
  sub_20D5637E8();

  v42 = v110;
  sub_20D5642D8();
  v43 = v107;
  v44 = v42;
  (*(v107 + 16))(v109, v42, v108);
  v45 = objc_allocWithZone(sub_20D565E38());
  v46 = v37;
  v47 = sub_20D565E18();
  sub_20CECF940(0, &qword_27C81EF70);
  v48 = sub_20D565BB8();
  if ((v48 & 0xC000000000000001) != 0)
  {
    v49 = sub_20D568768();
    sub_20CEC80DC();

    (*(v43 + 8))(v44, v108);
  }

  else
  {
    (*(v43 + 8))(v44, v108);

    sub_20CEC80DC();
    v49 = *(v48 + 16);
  }

  return v49 != 0;
}