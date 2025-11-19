uint64_t TabItemKind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD3E8);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD3F0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD3F8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD400);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3A054C();
  sub_20C3E952C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_20C3A05F4();
      v9 = v21;
      sub_20C3E934C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_20C3A05A0();
      v9 = v24;
      sub_20C3E934C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_20C3A0648();
    sub_20C3E934C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_20C3A054C()
{
  result = qword_27C7AD408;
  if (!qword_27C7AD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD408);
  }

  return result;
}

unint64_t sub_20C3A05A0()
{
  result = qword_27C7AD410;
  if (!qword_27C7AD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD410);
  }

  return result;
}

unint64_t sub_20C3A05F4()
{
  result = qword_27C7AD418;
  if (!qword_27C7AD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD418);
  }

  return result;
}

unint64_t sub_20C3A0648()
{
  result = qword_27C7AD420;
  if (!qword_27C7AD420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD420);
  }

  return result;
}

uint64_t TabItemKind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD428);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD430);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD438);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD440);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3A054C();
  v13 = v43;
  sub_20C3E951C();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_20C3E932C();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_20C3A05F4();
          v27 = v34;
          sub_20C3E92BC();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_20C3A05A0();
          v31 = v34;
          sub_20C3E92BC();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_20C3A0648();
        v29 = v34;
        sub_20C3E92BC();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_20C3E915C();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD840);
  *v23 = &type metadata for TabItemKind;
  sub_20C3E92CC();
  sub_20C3E914C();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t TabItemKind.hashValue.getter()
{
  v1 = *v0;
  sub_20C3E94BC();
  MEMORY[0x20F2F98F0](v1);
  return sub_20C3E950C();
}

unint64_t sub_20C3A0D04()
{
  result = qword_27C7AD448;
  if (!qword_27C7AD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD448);
  }

  return result;
}

unint64_t sub_20C3A0DAC()
{
  result = qword_27C7AD450;
  if (!qword_27C7AD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD450);
  }

  return result;
}

unint64_t sub_20C3A0E04()
{
  result = qword_27C7AD458;
  if (!qword_27C7AD458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD458);
  }

  return result;
}

unint64_t sub_20C3A0E5C()
{
  result = qword_27C7AD460;
  if (!qword_27C7AD460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD460);
  }

  return result;
}

unint64_t sub_20C3A0EB4()
{
  result = qword_27C7AD468;
  if (!qword_27C7AD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD468);
  }

  return result;
}

unint64_t sub_20C3A0F0C()
{
  result = qword_27C7AD470;
  if (!qword_27C7AD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD470);
  }

  return result;
}

unint64_t sub_20C3A0F64()
{
  result = qword_27C7AD478;
  if (!qword_27C7AD478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD478);
  }

  return result;
}

unint64_t sub_20C3A0FBC()
{
  result = qword_27C7AD480;
  if (!qword_27C7AD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD480);
  }

  return result;
}

unint64_t sub_20C3A1014()
{
  result = qword_27C7AD488;
  if (!qword_27C7AD488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD488);
  }

  return result;
}

unint64_t sub_20C3A106C()
{
  result = qword_27C7AD490;
  if (!qword_27C7AD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD490);
  }

  return result;
}

uint64_t sub_20C3A10C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_20C3E93EC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701273968 && a2 == 0xE400000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C3E93EC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t EnvironmentValues.enableDebuggableOverlay.getter()
{
  sub_20C3A1228();
  sub_20C3E858C();
  return v1;
}

unint64_t sub_20C3A1228()
{
  result = qword_27C7AD498;
  if (!qword_27C7AD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD498);
  }

  return result;
}

uint64_t sub_20C3A127C@<X0>(_BYTE *a1@<X8>)
{
  sub_20C3A1228();
  result = sub_20C3E858C();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.enableDebuggableOverlay.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_20C3A1228();
  sub_20C3E858C();
  *(a1 + 16) = *(a1 + 17);
  return sub_20C3A13BC;
}

id sub_20C3A13F8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_20C3E8BFC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_20C3E8BFC();
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t sub_20C3A14BC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_20C3E902C();

  return v1 & 1;
}

void *sub_20C3A150C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_20C3E8A2C();
  sub_20C3A1804(*(a1 + 32), v4, v30);

  sub_20C3E8B4C();
  sub_20C3E83CC();
  v5 = sub_20C3E8B4C();
  v7 = v6;
  sub_20C3A19B8(a1, &v22);
  v34[4] = v26;
  v34[5] = v27;
  v34[6] = v28;
  v34[0] = v22;
  v34[1] = v23;
  v34[2] = v24;
  v34[3] = v25;
  *&v35 = v29;
  *(&v35 + 1) = v5;
  __src[6] = v30[6];
  __src[7] = v30[7];
  __src[4] = v30[4];
  __src[5] = v30[5];
  __src[2] = v30[2];
  __src[3] = v30[3];
  __src[0] = v30[0];
  __src[1] = v30[1];
  *(&__src[13] + 8) = v27;
  *(&__src[14] + 8) = v28;
  *(&__src[15] + 8) = v35;
  *(&__src[9] + 8) = v23;
  *(&__src[10] + 8) = v24;
  *(&__src[11] + 8) = v25;
  *(&__src[12] + 8) = v26;
  *(&__src[8] + 8) = v22;
  v37[4] = v26;
  v37[5] = v27;
  v37[6] = v28;
  v37[0] = v22;
  v37[1] = v23;
  v36 = v7;
  *&__src[8] = v31;
  *(&__src[16] + 1) = v7;
  v37[2] = v24;
  v37[3] = v25;
  v38 = v29;
  v39 = v5;
  v40 = v7;
  sub_20C3A364C(v34, v19, &qword_27C7AD4E0);
  sub_20C3A36B4(v37, &qword_27C7AD4E0);
  v8 = sub_20C3E8B2C();
  v10 = v9;
  sub_20C3A1D0C(a1, &v13);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v22 = v13;
  v23 = v14;
  *&v28 = v8;
  *(&v28 + 1) = v10;
  memcpy(__dst, __src, 0x110uLL);
  __dst[21] = v17;
  __dst[22] = v18;
  __dst[23] = v28;
  __dst[17] = v13;
  __dst[18] = v14;
  __dst[20] = v16;
  __dst[19] = v15;
  v19[0] = v13;
  v19[1] = v14;
  v19[4] = v17;
  v19[5] = v18;
  v19[2] = v15;
  v19[3] = v16;
  v20 = v8;
  v21 = v10;
  sub_20C3A364C(&v22, &v12, &qword_27C7AD4E8);
  sub_20C3A36B4(v19, &qword_27C7AD4E8);

  return memcpy(a2, __dst, 0x180uLL);
}

uint64_t sub_20C3A1804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_20C3E837C();
  v6 = v30;
  v7 = v30 * 0.5;
  v8 = v31;
  v9 = DWORD1(v31);
  v10 = *(&v31 + 1);
  v11 = v32;

  v12 = sub_20C3E8B4C();
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v13 = *v29;
  v14 = *&v29[16];
  v36 = *v29;
  v37 = *&v29[16];
  v35[0] = v33[0];
  v35[1] = v31;
  *&v38 = v12;
  *(&v38 + 1) = v15;
  v16 = v31;
  *(a3 + 8) = v33[0];
  v17 = v37;
  *(a3 + 72) = v38;
  v18 = v36;
  *(a3 + 56) = v17;
  *a3 = a2;
  *(a3 + 40) = v18;
  *(a3 + 24) = v16;
  v39[2] = v13;
  v39[3] = v14;
  v39[0] = v27;
  v39[1] = v28;
  v40 = v12;
  v41 = v15;
  sub_20C3A364C(v33, v20, &qword_27C7AD500);

  sub_20C3A364C(v35, v20, &qword_27C7AD508);
  sub_20C3A36B4(v39, &qword_27C7AD508);
  *v20 = v7;
  *&v20[1] = v6;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = a1;
  v26 = 256;
  return sub_20C3A36B4(v20, &qword_27C7AD500);
}

uint64_t sub_20C3A19B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - v5;
  sub_20C3E8E3C();
  v7 = sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 24))
  {

    sub_20C3E889C();
    v8 = sub_20C3E88CC();
    v45 = v7;
    v10 = v9;
    v12 = v11;

    v13 = sub_20C3E888C();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    sub_20C3E88AC();
    sub_20C3A36B4(v6, &qword_27C7AD4F0);
    v14 = sub_20C3E88EC();
    v16 = v15;
    v44 = a1;
    v18 = v17;

    sub_20C3A31E0(v8, v10, v12 & 1);

    v46 = sub_20C3E8A3C();
    v43 = sub_20C3E88DC();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    sub_20C3A31E0(v14, v16, v18 & 1);

    LOBYTE(v16) = sub_20C3E883C();
    sub_20C3E834C();
    *(&v26 + 1) = v25;
    *(&v28 + 1) = v27;
    v41 = v28;
    v42 = v26;
    v48 = v22 & 1;
    v47 = 0;
    v29 = v22 & 1;
    KeyPath = swift_getKeyPath();
    v49 = 0;
    v31 = *(v44 + 32);
    v32 = sub_20C3E883C();

    v35 = v41;
    v34 = v42;
    v36 = v24;
    v37 = v43;
    v38 = 1;
    v39 = v32 | 0x10100;
    v40 = v16;
  }

  else
  {

    v37 = 0;
    v20 = 0;
    v36 = 0;
    KeyPath = 0;
    v38 = 0;
    v31 = 0;
    v39 = 0;
    v40 = 0;
    v29 = 0;
    v34 = 0uLL;
    v35 = 0uLL;
  }

  *a2 = v37;
  *(a2 + 8) = v20;
  *(a2 + 16) = v29;
  *(a2 + 24) = v36;
  *(a2 + 32) = v40;
  *(a2 + 40) = v34;
  *(a2 + 56) = v35;
  *(a2 + 72) = 0;
  *(a2 + 80) = KeyPath;
  *(a2 + 88) = v38;
  *(a2 + 96) = 0;
  *(a2 + 104) = v31;
  *(a2 + 112) = v39;
  *(a2 + 114) = BYTE2(v39);
  return result;
}

uint64_t sub_20C3A1D0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  sub_20C3E8E3C();
  v43 = sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ACF98);
  v6 = swift_allocObject();
  v42 = xmmword_20C3EBA20;
  *(v6 + 16) = xmmword_20C3EBA20;
  sub_20C3E83DC();
  v8 = v7;
  v9 = MEMORY[0x277D85048];
  *(v6 + 56) = MEMORY[0x277D85048];
  v10 = sub_20C3A318C();
  *(v6 + 64) = v10;
  *(v6 + 32) = v8;
  v45 = sub_20C3E8C3C();
  v46 = v11;
  MEMORY[0x20F2F90D0](2127904, 0xE300000000000000);
  v12 = swift_allocObject();
  *(v12 + 16) = v42;
  sub_20C3E83DC();
  *(v12 + 56) = v9;
  *(v12 + 64) = v10;
  *(v12 + 32) = v13;
  v14 = sub_20C3E8C3C();
  MEMORY[0x20F2F90D0](v14);

  v15 = sub_20C3E888C();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_20C3E88AC();
  sub_20C3A36B4(v5, &qword_27C7AD4F0);
  v16 = sub_20C3E88EC();
  v18 = v17;
  LOBYTE(v6) = v19;

  v45 = sub_20C3E8A3C();
  v20 = sub_20C3E88DC();
  v22 = v21;
  LOBYTE(v9) = v23;
  sub_20C3A31E0(v16, v18, v6 & 1);

  sub_20C3E889C();
  v24 = sub_20C3E88CC();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_20C3A31E0(v20, v22, v9 & 1);

  LOBYTE(v9) = sub_20C3E883C();
  sub_20C3E834C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  LOBYTE(v20) = v28 & 1;
  LOBYTE(v45) = v28 & 1;
  v47 = 0;
  v39 = *(v44 + 32);
  v40 = sub_20C3E883C();

  *a2 = v24;
  *(a2 + 8) = v26;
  *(a2 + 16) = v20;
  *(a2 + 24) = v30;
  *(a2 + 32) = v9;
  *(a2 + 40) = v32;
  *(a2 + 48) = v34;
  *(a2 + 56) = v36;
  *(a2 + 64) = v38;
  *(a2 + 72) = 0;
  *(a2 + 80) = v39;
  *(a2 + 88) = v40;
  *(a2 + 89) = 257;
  return result;
}

uint64_t sub_20C3A20C8()
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v1 = MEMORY[0x28223BE20](isCurrentExecutor);
  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4B8);
  sub_20C3960C8(&qword_2810F2170, &qword_27C7AD4A0);
  sub_20C3A2EC0();
  sub_20C3A2F14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD4C0);
  sub_20C3A30B0();
  sub_20C3A2FCC();
  swift_getOpaqueTypeConformance2();
  sub_20C3E89EC();
}

uint64_t sub_20C3A2308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD510);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  sub_20C3E8E3C();
  v29 = sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *a2;
  v14 = *(a2 + 8);
  if (sub_20C3A31F0(*a2, v14))
  {
    v27 = v4;
    v15 = sub_20C3E8B4C();
    v25 = v16;
    v26 = v15;
    sub_20C3E8E2C();
    sub_20C3E8E1C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v33 = *(a2 + 16);
    v32 = *(a2 + 32);
    v17 = swift_allocObject();
    v18 = *(a2 + 16);
    *(v17 + 16) = *a2;
    *(v17 + 32) = v18;
    *(v17 + 48) = *(a2 + 32);
    sub_20C3A3640(v13, v14);
    sub_20C3A364C(&v33, v31, &qword_27C7AD4D8);
    sub_20C3A3130(&v32, v31);

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4A0);
    (*(*(v19 - 8) + 16))(v9, v28, v19);
    v20 = &v9[*(v7 + 36)];
    *v20 = sub_20C3A3864;
    *(v20 + 1) = v17;
    v21 = v25;
    *(v20 + 2) = v26;
    *(v20 + 3) = v21;
    sub_20C3A364C(v9, v6, &qword_27C7AD4C0);
    swift_storeEnumTagMultiPayload();
    sub_20C3A2FCC();
    sub_20C3960C8(&qword_2810F2170, &qword_27C7AD4A0);
    sub_20C3E86CC();
    sub_20C3A36B4(v9, &qword_27C7AD4C0);
  }

  else
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4A0);
    (*(*(v22 - 8) + 16))(v6, v28, v22);
    swift_storeEnumTagMultiPayload();
    sub_20C3A2FCC();
    sub_20C3960C8(&qword_2810F2170, &qword_27C7AD4A0);
    sub_20C3E86CC();
  }

  sub_20C3A3584(v12, v30);
}

uint64_t sub_20C3A275C()
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4C0);
  sub_20C3960C8(&qword_2810F2170, &qword_27C7AD4A0);
  sub_20C3A30B0();
  sub_20C3A2FCC();
  sub_20C3E89FC();
}

uint64_t sub_20C3A28DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_20C3E8B4C();
  v8 = v7;
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *a2;
  v18 = *(a2 + 8);
  v16 = *(a2 + 1);
  v15 = a2[4];
  v9 = swift_allocObject();
  v10 = *(a2 + 1);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v10;
  *(v9 + 48) = a2[4];
  sub_20C3A364C(&v17, v14, &qword_27C7AD4D0);
  sub_20C3A364C(&v16, v14, &qword_27C7AD4D8);
  sub_20C3A3130(&v15, v14);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4A0);
  (*(*(v11 - 8) + 16))(a3, a1, v11);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4C0);
  v13 = (a3 + *(result + 36));
  *v13 = sub_20C3A3128;
  v13[1] = v9;
  v13[2] = v6;
  v13[3] = v8;
  return result;
}

uint64_t sub_20C3A2AF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4A8);
  sub_20C3960C8(&qword_2810F2170, &qword_27C7AD4A0);
  sub_20C3A2E6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD4B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD4B8);
  sub_20C3A2EC0();
  sub_20C3A2F14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD4C0);
  sub_20C3A30B0();
  sub_20C3A2FCC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_20C3E89FC();
}

uint64_t View.debuggable(_:highlight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v12 = 0;
  v13 = a1;
  v14 = a2;
  v15 = a3;

  MEMORY[0x20F2F8DF0](&KeyPath, a4, &type metadata for DebugOverlay, a5);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20C3A2DA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C3A2DF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20C3A2E6C()
{
  result = qword_2810F2358[0];
  if (!qword_2810F2358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810F2358);
  }

  return result;
}

unint64_t sub_20C3A2EC0()
{
  result = qword_2810F23E0;
  if (!qword_2810F23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F23E0);
  }

  return result;
}

unint64_t sub_20C3A2F14()
{
  result = qword_2810F2190;
  if (!qword_2810F2190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD4B0);
    sub_20C3A2FCC();
    sub_20C3960C8(&qword_2810F2170, &qword_27C7AD4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F2190);
  }

  return result;
}

unint64_t sub_20C3A2FCC()
{
  result = qword_2810F21D0;
  if (!qword_2810F21D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD4C0);
    sub_20C3960C8(&qword_2810F2170, &qword_27C7AD4A0);
    sub_20C3960C8(&qword_2810F21A0, &qword_27C7AD4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F21D0);
  }

  return result;
}

unint64_t sub_20C3A30B0()
{
  result = qword_2810F22B8[0];
  if (!qword_2810F22B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810F22B8);
  }

  return result;
}

uint64_t sub_20C3A311C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_20C3A318C()
{
  result = qword_27C7AD4F8;
  if (!qword_27C7AD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD4F8);
  }

  return result;
}

uint64_t sub_20C3A31E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20C3A31F0(uint64_t a1, char a2)
{
  v4 = sub_20C3E857C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = sub_20C3E8F2C();
    v9 = sub_20C3E87EC();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_20C3997A4(1819242306, 0xE400000000000000, &v13);
      _os_log_impl(&dword_20C38A000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x20F2FA030](v11, -1, -1);
      MEMORY[0x20F2FA030](v10, -1, -1);
    }

    sub_20C3E856C();
    swift_getAtKeyPath();
    sub_20C3A311C(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v14;
  }

  return a1 & 1;
}

uint64_t sub_20C3A33B0(uint64_t a1, char a2)
{
  v4 = sub_20C3E857C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
  }

  else
  {

    v8 = sub_20C3E8F2C();
    v9 = sub_20C3E87EC();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_20C3997A4(0xD000000000000040, 0x800000020C3F2DD0, &v14);
      _os_log_impl(&dword_20C38A000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x20F2FA030](v11, -1, -1);
      MEMORY[0x20F2FA030](v10, -1, -1);
    }

    sub_20C3E856C();
    swift_getAtKeyPath();
    sub_20C3A3714(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

uint64_t sub_20C3A3584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  sub_20C3A311C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20C3A3640(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_20C3A364C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C3A36B4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C3A3714(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_20C3A3750()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_20C3E8B9C();
  if (*(v2 + 16) && (sub_20C3DD9B8(0xD00000000000001ALL, 0x800000020C3F2E20), (v3 & 1) != 0))
  {

    v4 = sub_20C3E8BFC();

    v5 = [v4 BOOLValue];

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_20C3A38B8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_20C3A3924(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20C3963E8;
}

uint64_t sub_20C3A39C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_itemDescriptors;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_20C3A3A74()
{
  v1 = v0 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_selectedIndex;
  swift_beginAccess();
  return *v1;
}

char *sub_20C3A3AC0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_itemDescriptors] = MEMORY[0x277D84F90];
  v10 = &v4[OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_selectedIndex];
  *v10 = 0;
  v10[8] = 1;
  v11 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_imageView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v12 = &v4[OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_layout];
  *v12 = xmmword_20C3ECC00;
  *(v12 + 1) = xmmword_20C3ECC10;
  *(v12 + 4) = 0x402C000000000000;
  v13 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_titleLabel;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v4[OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_visibleItemDescriptors] = v9;
  v79.receiver = v4;
  v79.super_class = type metadata accessor for AccessibleFloatingTabBarControl();
  v14 = objc_msgSendSuper2(&v79, sel_initWithFrame_, a1, a2, a3, a4);
  [v14 setContextMenuInteractionEnabled_];
  [v14 setShowsMenuAsPrimaryAction_];
  v15 = [v14 layer];
  [v15 setCornerRadius_];

  v76 = objc_opt_self();
  v16 = [v76 systemFillColor];
  [v14 setBackgroundColor_];

  v17 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_titleLabel;
  [*&v14[OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_titleLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = v17;
  v19 = *&v14[v17];
  v20 = [v76 labelColor];
  [v19 setTintColor_];

  v21 = *&v14[v18];
  v75 = v18;
  v22 = objc_opt_self();
  v23 = *MEMORY[0x277D76988];
  v24 = *MEMORY[0x277D76838];
  v25 = v21;
  v26 = [v14 traitCollection];
  v27 = [v22 _preferredFontForTextStyle_maximumContentSizeCategory_compatibleWithTraitCollection_];

  [v25 setFont_];
  [v14 addSubview_];
  v74 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_imageView;
  [*&v14[OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_imageView] setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = *MEMORY[0x277D76968];
  v29 = *MEMORY[0x277D743F8];
  v30 = [v14 traitCollection];
  v31 = sub_20C3E8F7C();

  v32 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v28 compatibleWithTraitCollection:v31];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD558);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C3EBA20;
  v34 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD560);
  v35 = swift_initStackObject();
  v36 = MEMORY[0x277D74430];
  *(v35 + 16) = xmmword_20C3EBA20;
  v37 = *v36;
  *(v35 + 32) = *v36;
  *(v35 + 40) = v29;
  v38 = v34;
  v39 = v37;
  v40 = sub_20C3DDFA4(v35);
  swift_setDeallocating();
  sub_20C3A36B4(v35 + 32, &qword_27C7AD568);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD570);
  *(inited + 40) = v40;
  sub_20C3DE094(inited);
  swift_setDeallocating();
  sub_20C3A36B4(inited + 32, &qword_27C7AD578);
  type metadata accessor for AttributeName(0);
  sub_20C3A65DC();
  v41 = sub_20C3E8B8C();

  v42 = [v32 fontDescriptorByAddingAttributes_];

  v43 = [v22 fontWithDescriptor:v42 size:0.0];
  v44 = [objc_opt_self() configurationWithFont:v43 scale:1];

  v45 = *&v14[v74];
  v78 = v44;
  v46 = sub_20C3E8BFC();
  v47 = [objc_opt_self() systemImageNamed:v46 withConfiguration:v78];

  [v45 setImage_];
  v48 = *&v14[v74];
  v49 = [v76 labelColor];
  [v48 setTintColor_];

  [v14 addSubview_];
  v77 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD8A0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_20C3ECC20;
  v51 = [*&v14[v75] leadingAnchor];
  v52 = [v14 leadingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:16.0];

  *(v50 + 32) = v53;
  v54 = [*&v14[v75] topAnchor];
  v55 = [v14 &selRef_setNumberOfPages_];
  v56 = [v54 constraintEqualToAnchor:v55 constant:6.0];

  *(v50 + 40) = v56;
  v57 = [*&v14[v75] bottomAnchor];
  v58 = [v14 bottomAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:-6.0];

  *(v50 + 48) = v59;
  v60 = [*&v14[v74] leadingAnchor];
  v61 = [*&v14[v75] trailingAnchor];
  v62 = [v60 constraintGreaterThanOrEqualToAnchor:v61 constant:-8.0];

  *(v50 + 56) = v62;
  v63 = [*&v14[v74] trailingAnchor];
  v64 = [v14 trailingAnchor];
  v65 = [v63 constraintEqualToAnchor:v64 constant:-14.0];

  *(v50 + 64) = v65;
  v66 = [*&v14[v74] topAnchor];
  v67 = [v14 topAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:6.0];

  *(v50 + 72) = v68;
  v69 = [*&v14[v74] bottomAnchor];
  v70 = [v14 bottomAnchor];

  v71 = [v69 constraintEqualToAnchor:v70 constant:-6.0];
  *(v50 + 80) = v71;
  sub_20C38BD08(0, &qword_2810F2100);
  v72 = sub_20C3E8D9C();

  [v77 activateConstraints_];

  return v14;
}

uint64_t sub_20C3A469C(uint64_t a1, char *a2)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_itemDescriptors;
  swift_beginAccess();
  v3 = *&a2[v2];
  v4 = *(v3 + 16);

  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    v7 = 0;
    v8 = v3 + 32;
    do
    {
      v9 = (v8 + 104 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v11 = *v9;
        v12 = v9[2];
        *&v55[16] = v9[1];
        *&v55[32] = v12;
        *v55 = v11;
        v13 = v9[3];
        v14 = v9[4];
        v15 = v9[5];
        *&v55[96] = *(v9 + 12);
        *&v55[64] = v14;
        *&v55[80] = v15;
        *&v55[48] = v13;
        sub_20C39AF38(v55, v45);
        sub_20C3E8E2C();
        sub_20C3E8E1C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if ((v55[64] & 1) == 0)
        {
          break;
        }

        ++v10;
        result = sub_20C39AF94(v55);
        v9 = (v9 + 104);
        if (v4 == v10)
        {
          goto LABEL_17;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v44[0] = v6;
      if ((result & 1) == 0)
      {
        result = sub_20C3BA1F0(0, *(v6 + 16) + 1, 1);
        v6 = v44[0];
      }

      v16 = v6;
      v17 = *(v6 + 16);
      v18 = *(v16 + 24);
      if (v17 >= v18 >> 1)
      {
        result = sub_20C3BA1F0((v18 > 1), v17 + 1, 1);
        v16 = v44[0];
      }

      v7 = v10 + 1;
      *(v16 + 16) = v17 + 1;
      v19 = v16 + 104 * v17;
      v20 = *v55;
      v21 = *&v55[32];
      *(v19 + 48) = *&v55[16];
      *(v19 + 64) = v21;
      *(v19 + 32) = v20;
      v22 = *&v55[48];
      v23 = *&v55[64];
      v24 = *&v55[80];
      *(v19 + 128) = *&v55[96];
      *(v19 + 96) = v23;
      *(v19 + 112) = v24;
      *(v19 + 80) = v22;
      v6 = v16;
      v8 = v3 + 32;
    }

    while (v4 - 1 != v10);
  }

LABEL_17:

  v25 = *(v6 + 16);
  if (!v25)
  {

    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_27:

      sub_20C3E93FC();
      sub_20C38BD08(0, &qword_27C7AD580);
LABEL_28:

      sub_20C38BD08(0, &qword_27C7AD598);
      v40 = sub_20C3E8FBC();

      return v40;
    }

LABEL_30:
    sub_20C38BD08(0, &qword_27C7AD580);

    sub_20C3E922C();

    goto LABEL_28;
  }

  v57 = MEMORY[0x277D84F90];

  sub_20C3E919C();
  v26 = *(v6 + 16);
  sub_20C38BD08(0, &qword_27C7AD588);
  result = swift_beginAccess();
  v41 = v26;
  if (!v26)
  {
LABEL_25:
    __break(1u);
LABEL_26:

    if (!(v57 >> 62))
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v27 = 0;
  v28 = 32;
  v43 = v6;
  while (v27 < *(v6 + 16))
  {
    v29 = *(v6 + v28);
    v30 = *(v6 + v28 + 32);
    v53[1] = *(v6 + v28 + 16);
    v53[2] = v30;
    v53[0] = v29;
    v31 = *(v6 + v28 + 48);
    v32 = *(v6 + v28 + 64);
    v33 = *(v6 + v28 + 80);
    v54 = *(v6 + v28 + 96);
    v53[4] = v32;
    v53[5] = v33;
    v53[3] = v31;
    memmove(&v46, (v6 + v28), 0x68uLL);
    *&v55[56] = v49;
    *&v55[72] = v50;
    *&v55[88] = v51;
    v56 = v52;
    *&v55[8] = v46;
    *&v55[24] = v47;
    *&v55[40] = v48;
    *v55 = v27;
    v58 = v46;
    v59 = v47;
    v64 = v52;
    v60 = v48;
    v61 = v49;
    v62 = v50;
    v63 = v51;
    sub_20C39AF38(v53, v44);
    sub_20C3E8E2C();
    sub_20C3E8E1C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v34 = swift_allocObject();
    v35 = v63;
    *(v34 + 80) = v62;
    *(v34 + 96) = v35;
    v36 = v64;
    v37 = v59;
    *(v34 + 16) = v58;
    *(v34 + 32) = v37;
    v38 = v61;
    *(v34 + 48) = v60;
    *(v34 + 64) = v38;
    *(v34 + 112) = v36;
    *(v34 + 120) = v27;
    *(v34 + 128) = v43;
    *(v34 + 136) = a2;

    sub_20C3A6698(v55, v44);
    v39 = a2;
    sub_20C3E904C();

    sub_20C3A36B4(v55, &qword_27C7AD590);
    sub_20C3E917C();
    sub_20C3E91AC();
    sub_20C3E91BC();
    result = sub_20C3E918C();
    if (v25 - 1 == v27)
    {
      goto LABEL_26;
    }

    ++v27;
    v28 += 104;
    v6 = v43;
    if (v41 == v27)
    {
      goto LABEL_25;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20C3A4CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2810F2210 != -1)
  {
    swift_once();
  }

  v9 = sub_20C3E812C();
  __swift_project_value_buffer(v9, qword_2810F3B00);
  swift_bridgeObjectRetain_n();
  sub_20C39AF38(a2, v46);
  v10 = sub_20C3E810C();
  v11 = sub_20C3E8F3C();
  sub_20C39AF94(a2);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v46[0] = v13;
    *v12 = 136315650;
    v14 = 0xE400000000000000;
    v15 = 1701273936;
    if (*(a2 + 65) != 1)
    {
      v15 = 0x686372616553;
      v14 = 0xE600000000000000;
    }

    if (*(a2 + 65))
    {
      v16 = v15;
    }

    else
    {
      v16 = 0x6E6F69746341;
    }

    if (*(a2 + 65))
    {
      v17 = v14;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    v18 = sub_20C3997A4(v16, v17, v46);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a3;
    *(v12 + 22) = 2048;
    v19 = *(a4 + 16);

    *(v12 + 24) = v19;

    _os_log_impl(&dword_20C38A000, v10, v11, "[AccessibleFloatingTabBarControl] Selected item of kind %s at index %ld of %ld", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F2FA030](v13, -1, -1);
    MEMORY[0x20F2FA030](v12, -1, -1);

    v20 = *(a2 + 65);
    if (*(a2 + 65))
    {
LABEL_15:
      if (v20 == 1)
      {
        sub_20C3A5608(a3, 0, a4);
        v21 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_itemDescriptors;
        swift_beginAccess();
        v22 = *(a5 + v21);

        v23 = sub_20C3AA6FC(a2, v22);
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          v26 = a5 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_delegate;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v27 = *(v26 + 8);
            ObjectType = swift_getObjectType();
            (*(v27 + 32))(a5, &protocol witness table for AccessibleFloatingTabBarControl, v23, ObjectType, v27);
LABEL_26:

            return swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        v37 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_itemDescriptors;
        swift_beginAccess();
        v38 = *(a5 + v37);

        v39 = sub_20C3AA6FC(a2, v38);
        v41 = v40;

        if ((v41 & 1) == 0)
        {
          v42 = a5 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_delegate;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v43 = *(v42 + 8);
            v44 = swift_getObjectType();
            (*(v43 + 24))(a5, &protocol witness table for AccessibleFloatingTabBarControl, v39, v44, v43);
            goto LABEL_26;
          }
        }
      }
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v20 = *(a2 + 65);
    if (*(a2 + 65))
    {
      goto LABEL_15;
    }
  }

  v29 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_itemDescriptors;
  swift_beginAccess();
  v30 = *(a5 + v29);

  v31 = sub_20C3AA6FC(a2, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
    v34 = a5 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v35 = *(v34 + 8);
      v36 = swift_getObjectType();
      (*(v35 + 16))(a5, &protocol witness table for AccessibleFloatingTabBarControl, v31, v36, v35);
      goto LABEL_26;
    }
  }
}

id sub_20C3A5194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_20C3A5C2C;
  v16 = &block_descriptor_25;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_20C3A5C7C;
  v16 = &block_descriptor_22;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_20C38F958(a4);
  sub_20C38F958(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

uint64_t sub_20C3A546C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, const char **a7, SEL *a8)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24.receiver = a1;
  v24.super_class = type metadata accessor for AccessibleFloatingTabBarControl();
  v14 = *a7;
  v15 = a3;
  v16 = a4;
  swift_unknownObjectRetain();
  v17 = a1;
  objc_msgSendSuper2(&v24, v14, v15, v16, a5);
  v18 = *&v17[OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_titleLabel];
  v19 = objc_opt_self();
  v20 = [v19 *a8];
  [v18 setTextColor_];

  v21 = *&v17[OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_imageView];
  v22 = [v19 *a8];
  [v21 setTintColor_];

  return swift_unknownObjectRelease();
}

void sub_20C3A5608(uint64_t a1, char a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_selectedIndex);
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v9 != 1 || (v10 = 0, (a2 & 1) == 0))
  {
    v11 = *(a3 + 16);
    v12 = v11 - 1;
    if (v9)
    {
      if (v12 >= a1)
      {
        v13 = a1;
      }

      else
      {
        v13 = v11 - 1;
      }

      if (a2)
      {
        v10 = 0;
      }

      else
      {
        v10 = v13;
      }
    }

    else if (a2)
    {
      if (v12 >= v8)
      {
        v10 = *v7;
      }

      else
      {
        v10 = v11 - 1;
      }
    }

    else
    {
      if (v12 < v8)
      {
        v8 = v11 - 1;
      }

      if (v11 <= a1)
      {
        v10 = v8;
      }

      else
      {
        v10 = a1;
      }
    }
  }

  if (qword_2810F2210 != -1)
  {
    swift_once();
  }

  v14 = sub_20C3E812C();
  __swift_project_value_buffer(v14, qword_2810F3B00);
  v15 = sub_20C3E810C();
  v16 = sub_20C3E8F3C();
  if (os_log_type_enabled(v15, v16))
  {
    v26 = a3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 134218242;
    *(v17 + 4) = v10;
    *(v17 + 12) = 2080;
    if (a2)
    {
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      sub_20C3E920C();
      v20 = 0;
      v19 = 0xE000000000000000;
    }

    v21 = sub_20C3997A4(v20, v19, &v27);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_20C38A000, v15, v16, "[AccessibleFloatingTabBarControl] Selecting index: %ld. Proposed index: %s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x20F2FA030](v18, -1, -1);
    MEMORY[0x20F2FA030](v17, -1, -1);

    a3 = v26;
  }

  else
  {
  }

  *v7 = v10;
  *(v7 + 8) = 0;
  if ((v10 & 0x8000000000000000) != 0)
  {
    [*(v3 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_titleLabel) setText_];
    v23 = sub_20C3E810C();
    v24 = sub_20C3E8F1C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v10;
      _os_log_impl(&dword_20C38A000, v23, v24, "[AccessibleFloatingTabBarControl] Invalid index found: %ld", v25, 0xCu);
      MEMORY[0x20F2FA030](v25, -1, -1);
    }

    goto LABEL_32;
  }

  if (v10 < *(a3 + 16))
  {
    v22 = *(v3 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_titleLabel);

    v23 = sub_20C3E8BFC();

    [v22 setText_];
LABEL_32:

    return;
  }

  __break(1u);
}

id AccessibleFloatingTabBarControl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessibleFloatingTabBarControl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AccessibleFloatingTabBarControl.updateItemDescriptors(_:expectedSize:selectedIndex:visibleItemDescriptors:visibleItemSizes:reason:shouldNotifyDelegate:animated:)(Swift::OpaquePointer _, CGSize expectedSize, Swift::Int_optional selectedIndex, Swift::OpaquePointer visibleItemDescriptors, Swift::OpaquePointer visibleItemSizes, FitnessCoreUI::FloatingTabBarUpdateReason reason, Swift::Bool shouldNotifyDelegate, Swift::Bool animated)
{
  is_nil = selectedIndex.is_nil;
  value = selectedIndex.value;
  v13 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_itemDescriptors;
  swift_beginAccess();
  *(v8 + v13) = _;

  *(v8 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_visibleItemDescriptors) = visibleItemDescriptors;

  sub_20C3A5608(value, is_nil, visibleItemDescriptors._rawValue);
}

uint64_t (*sub_20C3A5ABC(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20C39B0E8;
}

void sub_20C3A5B80(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_itemDescriptors;
  swift_beginAccess();
  *(v4 + v9) = a1;

  *(v4 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_visibleItemDescriptors) = a4;

  sub_20C3A5608(a2, a3 & 1, a4);
}

id sub_20C3A5C2C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_20C3A5C7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_20C38BD08(0, &qword_27C7AD580);
  v2 = sub_20C3E8DAC();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_20C3A5D0C(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_2810F2210 != -1)
  {
    swift_once();
  }

  v6 = sub_20C3E812C();
  __swift_project_value_buffer(v6, qword_2810F3B00);
  v7 = sub_20C3E810C();
  v8 = sub_20C3E8F3C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_20C38A000, v7, v8, "[AccessibleFloatingTabBarControl] Selecting item at index %ld", v9, 0xCu);
    MEMORY[0x20F2FA030](v9, -1, -1);
  }

  if (a1 < 0 || (v10 = *&v3[OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_visibleItemDescriptors], *(v10 + 16) <= a1))
  {
    sub_20C3A6634();
    swift_allocError();
    v29 = 0;
LABEL_19:
    *v28 = v29;
    return swift_willThrow();
  }

  v11 = v10 + 104 * a1;
  v12 = *(v11 + 112);
  v13 = *(v11 + 128);
  v14 = *(v11 + 80);
  v43 = *(v11 + 96);
  v15 = *(v11 + 48);
  v16 = *(v11 + 64);
  v42[0] = *(v11 + 32);
  v42[1] = v15;
  v45 = v13;
  v44 = v12;
  v42[2] = v16;
  v42[3] = v14;
  if (!BYTE1(v43))
  {
    if (a2)
    {
      v30 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_itemDescriptors;
      swift_beginAccess();
      v31 = *&v3[v30];
      sub_20C39AF38(v42, v41);

      v32 = sub_20C3AA6FC(v42, v31);
      v34 = v33;

      sub_20C39AF94(v42);
      if ((v34 & 1) == 0)
      {
        v35 = &v3[OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v36 = *(v35 + 1);
          ObjectType = swift_getObjectType();
          (*(v36 + 16))(v3, &protocol witness table for AccessibleFloatingTabBarControl, v32, ObjectType, v36);
          swift_unknownObjectRelease();
        }
      }
    }

    sub_20C3A6634();
    swift_allocError();
    v29 = 4;
    goto LABEL_19;
  }

  sub_20C39AF38(v42, v41);
  sub_20C3A5608(a1, 0, v10);

  if ((a2 & 1) == 0)
  {
    return sub_20C39AF94(v42);
  }

  v17 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_itemDescriptors;
  swift_beginAccess();
  v18 = *&v3[v17];

  v19 = sub_20C3AA6FC(v42, v18);
  v21 = v20;
  sub_20C39AF94(v42);

  if ((v21 & 1) == 0)
  {
    v23 = v3;
    v24 = sub_20C3E810C();
    v25 = sub_20C3E8F3C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109376;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      *(v26 + 4) = v27;

      *(v26 + 8) = 2048;
      *(v26 + 10) = v19;
      _os_log_impl(&dword_20C38A000, v24, v25, "[AccessibleFloatingTabBarControl] Notifying delegate (%{BOOL}d) of selection at %ld", v26, 0x12u);
      MEMORY[0x20F2FA030](v26, -1, -1);
    }

    else
    {

      v24 = v23;
    }

    v38 = v23 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v39 = *(v38 + 1);
      v40 = swift_getObjectType();
      (*(v39 + 32))(v23, &protocol witness table for AccessibleFloatingTabBarControl, v19, v40, v39);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_20C3A6178()
{
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_itemDescriptors) = MEMORY[0x277D84F90];
  v2 = v0 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_selectedIndex;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_imageView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v4 = v0 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_layout;
  *v4 = xmmword_20C3ECC00;
  *(v4 + 16) = xmmword_20C3ECC10;
  *(v4 + 32) = 0x402C000000000000;
  v5 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_titleLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_visibleItemDescriptors) = v1;
  sub_20C3E921C();
  __break(1u);
}

double sub_20C3A6298()
{
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = v10;
    v12 = v8;
    v13 = v6;
    v14 = v4;
  }

  else
  {
    [v0 frame];
  }

  MinX = CGRectGetMinX(*&v14);
  v16 = [v0 superview];
  if (v16)
  {
    v17 = v16;
    [v16 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = v25;
    v27 = v23;
    v28 = v21;
    v29 = v19;
  }

  else
  {
    [v0 frame];
  }

  CGRectGetMaxY(*&v29);
  return MinX + -8.0;
}

uint64_t sub_20C3A6570(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C3A6590(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_20C3A65DC()
{
  result = qword_27C7ACF18;
  if (!qword_27C7ACF18)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACF18);
  }

  return result;
}

unint64_t sub_20C3A6634()
{
  result = qword_2810F23E8;
  if (!qword_2810F23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F23E8);
  }

  return result;
}

uint64_t sub_20C3A6698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_20C3A6AB0(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC13FitnessCoreUI36ContinuousSelectionGestureRecognizer_dragCoordinator + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = -70.0;
  if (v6 == 1)
  {
    v7 = -25.0;
  }

  v8 = &v2[OBJC_IVAR____TtC13FitnessCoreUI36ContinuousSelectionGestureRecognizer_additionalTouchInsets];
  *v8 = v7;
  v8[1] = v7;
  v8[2] = v7;
  v8[3] = v7;
  sub_20C3A6DE0(a1, v19);
  v9 = v20;
  if (v20)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v11 = *(v9 - 8);
    MEMORY[0x28223BE20](v10);
    v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    v14 = sub_20C3E93DC();
    (*(v11 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v14 = 0;
  }

  v15 = type metadata accessor for ContinuousSelectionGestureRecognizer();
  v18.receiver = v2;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, sel_initWithTarget_action_, v14, a2);
  swift_unknownObjectRelease();
  sub_20C3A6E50(a1);
  return v16;
}

id sub_20C3A6D78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContinuousSelectionGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20C3A6DE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C3A6E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD5B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20C3A6EB8(uint64_t a1)
{
  v3 = [v1 view];
  [v1 locationInView_];
  v5 = v4;
  v7 = v6;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v9 = *(Strong + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionShouldFollowGesture);
  swift_unknownObjectRelease();
  if (v9)
  {
    goto LABEL_7;
  }

  v10 = [v1 view];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  [v10 bounds];
  v21.origin.x = UIEdgeInsetsInsetRect_0(v12, v13, v14, v15, *&v1[OBJC_IVAR____TtC13FitnessCoreUI36ContinuousSelectionGestureRecognizer_additionalTouchInsets], *&v1[OBJC_IVAR____TtC13FitnessCoreUI36ContinuousSelectionGestureRecognizer_additionalTouchInsets + 8]);
  v20.x = v5;
  v20.y = v7;
  if (CGRectContainsPoint(v21, v20))
  {

    goto LABEL_7;
  }

  v16 = [v11 pointInside:a1 withEvent:{v5, v7}];

  if ((v16 & 1) == 0)
  {
LABEL_19:
    if ([v1 state])
    {
      v18 = 4;
    }

    else
    {
      v18 = 5;
    }

    goto LABEL_14;
  }

LABEL_7:
  if ([v1 state] != 1)
  {
    result = [v1 state];
    if (result != 2)
    {
      return result;
    }
  }

  v18 = 2;
LABEL_14:

  return [v1 setState_];
}

double DelayedLoadingView.init(message:internalMessage:isInternalInstall:delayDuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_20C3E8A4C();
  result = v17;
  *a8 = v17;
  *(a8 + 8) = v18;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = a7;
  return result;
}

uint64_t DelayedLoadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD5B8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17[-v4];
  v6 = v1[3];
  v23 = v1[2];
  v24 = v6;
  v25 = *(v1 + 8);
  v7 = v1[1];
  v21 = *v1;
  v22 = v7;
  v18 = &v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD5C0);
  sub_20C3A7438();
  sub_20C3E838C();
  v19[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD5D0);
  sub_20C3E8A5C();
  *&v5[*(v3 + 36)] = v20;
  sub_20C3A74E8();
  sub_20C3E8A0C();
  sub_20C3A75A0(v5);
  v8 = swift_allocObject();
  v9 = v24;
  *(v8 + 48) = v23;
  *(v8 + 64) = v9;
  *(v8 + 80) = v25;
  v10 = v22;
  *(v8 + 16) = v21;
  *(v8 + 32) = v10;
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD5E0) + 36));
  *v11 = sub_20C3A7948;
  v11[1] = v8;
  v11[2] = 0;
  v11[3] = 0;
  v12 = swift_allocObject();
  v13 = v24;
  *(v12 + 48) = v23;
  *(v12 + 64) = v13;
  *(v12 + 80) = v25;
  v14 = v22;
  *(v12 + 16) = v21;
  *(v12 + 32) = v14;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD5E8) + 36));
  *v15 = 0;
  v15[1] = 0;
  v15[2] = sub_20C3A8040;
  v15[3] = v12;
  sub_20C3A8048(&v21, v19);
  return sub_20C3A8048(&v21, v19);
}

uint64_t sub_20C3A731C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 24) || *(a1 + 40))
  {
    v4 = sub_20C3E85FC();
    v12 = 1;
    sub_20C3A7608(a1, v11);

    v7 = v11[0];
    v6 = v11[1];
    v8 = v11[2];
    v9 = v11[3];
    v10 = v12;
  }

  else
  {

    v4 = 0;
    v10 = 0;
    v6 = xmmword_20C3ECD80;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 24) = v7;
  *(a2 + 40) = v6;
  *(a2 + 56) = v8;
  *(a2 + 72) = v9;
  return result;
}

unint64_t sub_20C3A7438()
{
  result = qword_2810F2140;
  if (!qword_2810F2140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD5C0);
    sub_20C3960C8(&qword_2810F2148, &qword_27C7AD5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F2140);
  }

  return result;
}

unint64_t sub_20C3A74E8()
{
  result = qword_2810F21C8;
  if (!qword_2810F21C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD5B8);
    sub_20C3960C8(&qword_2810F21F8, &qword_27C7AD5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F21C8);
  }

  return result;
}

uint64_t sub_20C3A75A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD5B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C3A7608@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 32);
  v14 = *(a1 + 16);
  v5 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    v6 = v14;
  }

  else
  {
    v6 = 0;
  }

  if (*(&v14 + 1))
  {
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v7 = 0;
  }

  v13 = v4;
  v8 = *(&v4 + 1);
  if (*(&v4 + 1))
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (*(&v4 + 1))
  {
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v10 = 0;
  }

  sub_20C3A89CC(&v14, v12);
  sub_20C3A89CC(&v13, v12);
  sub_20C3A89CC(&v14, v12);
  sub_20C3A89CC(&v13, v12);
  sub_20C3A8A3C(v6, v5, 0, v7);
  sub_20C3A8A3C(v9, v8, 0, v10);
  sub_20C3A8A90(v6, v5, 0, v7);
  sub_20C3A8A90(v9, v8, 0, v10);
  *a2 = v6;
  a2[1] = v5;
  a2[2] = 0;
  a2[3] = v7;
  a2[4] = v9;
  a2[5] = v8;
  a2[6] = 0;
  a2[7] = v10;
  sub_20C3A8A90(v9, v8, 0, v10);
  sub_20C3A8A90(v6, v5, 0, v7);
}

uint64_t sub_20C3A7798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD5F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3 - 8];
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  v5 = MEMORY[0x277D85700];
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_20C3E8E5C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_20C3A8048(a1, v13);
  v7 = sub_20C3E8E2C();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  v9 = *(a1 + 48);
  *(v8 + 64) = *(a1 + 32);
  *(v8 + 80) = v9;
  *(v8 + 96) = *(a1 + 64);
  v10 = *(a1 + 16);
  *(v8 + 32) = *a1;
  *(v8 + 48) = v10;
  sub_20C3CFDD4(0, 0, v4, &unk_20C3ECE78, v8);
}

uint64_t sub_20C3A7950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_20C3E91DC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_20C3E8E3C();
  v4[6] = sub_20C3E8E2C();
  v7 = sub_20C3E8E1C();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_20C3A7A44, v7, v6);
}

uint64_t sub_20C3A7A44()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  sub_20C3E944C();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_20C3A7B14;

  return sub_20C3A84B0(v3, v2, 0, 0, 1);
}

uint64_t sub_20C3A7B14()
{
  v2 = *v1;
  v2[10] = v0;

  v3 = v2[5];
  v4 = v2[4];
  v5 = v2[3];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[7];
    v7 = v2[8];
    v8 = sub_20C3A7D84;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[7];
    v7 = v2[8];
    v8 = sub_20C3A7CAC;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_20C3A7CAC()
{
  v1 = *(v0 + 16);

  sub_20C3E8B5C();
  *(swift_task_alloc() + 16) = v1;
  sub_20C3E83FC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C3A7D84()
{
  v1 = *(v0 + 16);

  sub_20C3E8B5C();
  *(swift_task_alloc() + 16) = v1;
  sub_20C3E83FC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C3A7E5C()
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD5D0);
  sub_20C3E8A6C();
}

uint64_t sub_20C3A7F34()
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD5D0);
  sub_20C3E8A6C();
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_20C3A80E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_20C3A8144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_20C3A81B8()
{
  result = qword_2810F21A8;
  if (!qword_2810F21A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD5E8);
    sub_20C3A8244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F21A8);
  }

  return result;
}

unint64_t sub_20C3A8244()
{
  result = qword_2810F21C0;
  if (!qword_2810F21C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD5E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD5B8);
    sub_20C3A74E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F21C0);
  }

  return result;
}

uint64_t sub_20C3A830C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C3A83BC;

  return sub_20C3A7950(a1, v4, v5, v1 + 32);
}

uint64_t sub_20C3A83BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20C3A84B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_20C3E91CC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_20C3A85B0, 0, 0);
}

uint64_t sub_20C3A85B0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_20C3E91DC();
  v5 = sub_20C3A8984(&qword_2810F20B0, MEMORY[0x277D85928]);
  sub_20C3E942C();
  sub_20C3A8984(&qword_2810F20B8, MEMORY[0x277D858F8]);
  sub_20C3E91EC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_20C3A8740;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_20C3A8740()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C3A88FC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20C3A88FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C3A8984(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C3A89CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD4D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C3A8A3C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20C3A8A80(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_20C3A8A80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20C3A8A90(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20C3A31E0(result, a2, a3 & 1);
  }

  return result;
}

void sub_20C3A8AD4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField_backgroundVisualEffect;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_20C3A8B3C(v5);
}

void sub_20C3A8B3C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField_backgroundVisualEffect;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (sub_20C3A904C(), v6 = v5, v7 = a1, v8 = sub_20C3E903C(), v6, v7, (v8 & 1) == 0))
  {
LABEL_6:
    v9 = sub_20C3A8FD8();
    v10 = *&v2[v4];
    [v9 setEffect_];

    [v2 setNeedsLayout];
  }
}

void *sub_20C3A8C28()
{
  v1 = OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField_backgroundVisualEffect;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20C3A8C74(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField_backgroundVisualEffect;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = a1;
  if (a1)
  {
    if (v5)
    {
      sub_20C3A904C();
      a1 = a1;
      v6 = v5;
      v7 = sub_20C3E903C();

      if (v7)
      {

        v5 = v6;
LABEL_9:

        return;
      }
    }

    else
    {
      a1 = a1;
    }

LABEL_8:
    v8 = sub_20C3A8FD8();
    v9 = *&v2[v4];
    [v8 setEffect_];

    [v2 setNeedsLayout];
    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_8;
  }
}

void (*sub_20C3A8D78(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField_backgroundVisualEffect;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_20C3A8E14;
}

void sub_20C3A8E14(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v3)
    {
      if (v7)
      {
        sub_20C3A904C();
        v8 = v3;
        v9 = v7;
        v10 = sub_20C3E903C();

        if (v10)
        {

LABEL_16:
          goto LABEL_17;
        }
      }

      else
      {
        v8 = v3;
      }
    }

    else
    {
      if (!v7)
      {
LABEL_17:
        v11 = *v4;
        goto LABEL_20;
      }

      v8 = 0;
    }

    v14 = v2[4];
    v15 = v2[5];
    v16 = sub_20C3A8FD8();
    v17 = *&v14[v15];
    [v16 setEffect_];

    [v14 setNeedsLayout];
    v8 = v7;
    goto LABEL_16;
  }

  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    v11 = 0;
    goto LABEL_19;
  }

  if (!v7)
  {
    v11 = v3;
    goto LABEL_19;
  }

  sub_20C3A904C();
  v11 = v3;
  v12 = v7;
  v13 = sub_20C3E903C();

  if ((v13 & 1) == 0)
  {
LABEL_19:
    v18 = v2[4];
    v19 = v2[5];
    v20 = sub_20C3A8FD8();
    v21 = *&v18[v19];
    [v20 setEffect_];

    [v18 setNeedsLayout];
    v11 = v7;
    goto LABEL_20;
  }

LABEL_20:
LABEL_21:

  free(v2);
}

id sub_20C3A8FD8()
{
  v1 = OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField____lazy_storage___backgroundVisuallEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField____lazy_storage___backgroundVisuallEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField____lazy_storage___backgroundVisuallEffectView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_20C3A904C()
{
  result = qword_2810F2128;
  if (!qword_2810F2128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810F2128);
  }

  return result;
}

void sub_20C3A9098()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for VFXSearchTextField();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  [v0 setBackgroundColor_];
  v1 = [v0 _backgroundView];
  if (!v1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v2 = v1;
  [v1 setHidden_];

  v3 = sub_20C3A8FD8();
  [v3 setUserInteractionEnabled_];

  v4 = OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField____lazy_storage___backgroundVisuallEffectView;
  v5 = [*&v0[OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField____lazy_storage___backgroundVisuallEffectView] superview];
  if (v5)
  {

    [*&v0[v4] setAlpha_];
  }

  else
  {
    [v0 insertSubview:*&v0[v4] atIndex:0];
  }

  [*&v0[v4] setClipsToBounds_];
  v6 = *&v0[v4];
  [v0 bounds];
  [v6 setFrame_];

  v7 = [*&v0[v4] layer];
  v8 = [v0 _backgroundView];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v8 layer];

  [v10 cornerRadius];
  v12 = v11;

  [v0 frame];
  v13 = CGRectGetHeight(v15) * 0.5;
  if (v13 >= v12)
  {
    v13 = v12;
  }

  [v7 setCornerRadius_];
}

id VFXSearchTextField.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id VFXSearchTextField.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField_backgroundVisualEffect] = 0;
  *&v4[OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField____lazy_storage___backgroundVisuallEffectView] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for VFXSearchTextField();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id VFXSearchTextField.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id VFXSearchTextField.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField_backgroundVisualEffect] = 0;
  *&v1[OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField____lazy_storage___backgroundVisuallEffectView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VFXSearchTextField();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id VFXSearchTextField.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXSearchTextField();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

FitnessCoreUI::SizeClass_optional __swiftcall SizeClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20C3E92AC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SizeClass.rawValue.getter()
{
  v1 = 0x72616C75676572;
  if (*v0 != 1)
  {
    v1 = 0x6669636570736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

uint64_t sub_20C3A98F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x72616C75676572;
  if (v2 != 1)
  {
    v5 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x746361706D6F63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x72616C75676572;
  if (*a2 != 1)
  {
    v8 = 0x6669636570736E75;
    v3 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746361706D6F63;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20C3E93EC();
  }

  return v11 & 1;
}

void sub_20C3A9A0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x72616C75676572;
  if (v2 != 1)
  {
    v5 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746361706D6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_20C3A9B28()
{
  result = qword_27C7AD608;
  if (!qword_27C7AD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD608);
  }

  return result;
}

uint64_t sub_20C3A9B7C()
{
  sub_20C3E94BC();
  sub_20C3E8C7C();

  return sub_20C3E950C();
}

uint64_t sub_20C3A9C28()
{
  sub_20C3E8C7C();
}

uint64_t sub_20C3A9CC0()
{
  sub_20C3E94BC();
  sub_20C3E8C7C();

  return sub_20C3E950C();
}

unint64_t sub_20C3A9D78()
{
  result = qword_27C7AD610;
  if (!qword_27C7AD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD610);
  }

  return result;
}

id ColorDescriptor.uiColor.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v5 initWithRed:v4 green:v3 blue:v2 alpha:v1];
}

uint64_t NSDirectionalEdgeInsets.hash(into:)(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a3;
  }

  MEMORY[0x20F2F9920](*&v7);
  if (a2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a2;
  }

  MEMORY[0x20F2F9920](*&v8);
  if (a1 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a1;
  }

  MEMORY[0x20F2F9920](*&v9);
  if (a4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a4;
  }

  return MEMORY[0x20F2F9920](*&v10);
}

uint64_t NSDirectionalEdgeInsets.hashValue.getter(double a1, double a2, double a3, double a4)
{
  sub_20C3E94BC();
  NSDirectionalEdgeInsets.hash(into:)(a1, a2, a3, a4);
  return sub_20C3E950C();
}

uint64_t sub_20C3A9F1C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_20C3E94BC();
  NSDirectionalEdgeInsets.hash(into:)(v1, v2, v3, v4);
  return sub_20C3E950C();
}

uint64_t sub_20C3A9F90()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_20C3E94BC();
  NSDirectionalEdgeInsets.hash(into:)(v1, v2, v3, v4);
  return sub_20C3E950C();
}

unint64_t sub_20C3A9FF8()
{
  result = qword_27C7AD618;
  if (!qword_27C7AD618)
  {
    type metadata accessor for NSDirectionalEdgeInsets(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD618);
  }

  return result;
}

uint64_t sub_20C3AA050@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

FitnessCoreUI::TabItemEdge::Set __swiftcall TabItemEdge.Set.init(_:)(FitnessCoreUI::TabItemEdge a1)
{
  v2 = *a1;
  if (v2 <= 0x3F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  *v1 = v3;
  LOBYTE(result.rawValue) = a1;
  return result;
}

Swift::Bool __swiftcall TabItemEdge.Set.contains(_:)(FitnessCoreUI::TabItemEdge a1)
{
  v2 = *a1;
  if (v2 <= 0x3F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  return (v3 & ~*v1) == 0;
}

BOOL sub_20C3AA180(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_20C3AA1B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_20C3AA1DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

FitnessCoreUI::TabItemEdge_optional __swiftcall TabItemEdge.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_20C3AA328()
{
  result = qword_27C7AD620;
  if (!qword_27C7AD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD620);
  }

  return result;
}

unint64_t sub_20C3AA380()
{
  result = qword_27C7AD628;
  if (!qword_27C7AD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD628);
  }

  return result;
}

unint64_t sub_20C3AA3D8()
{
  result = qword_27C7AD630;
  if (!qword_27C7AD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD630);
  }

  return result;
}

unint64_t sub_20C3AA430()
{
  result = qword_27C7AD638;
  if (!qword_27C7AD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD638);
  }

  return result;
}

unint64_t sub_20C3AA538()
{
  result = qword_27C7AD640;
  if (!qword_27C7AD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TabItemEdge.Set(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TabItemEdge.Set(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_20C3AA600()
{
  result = qword_27C7AD648;
  if (!qword_27C7AD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD648);
  }

  return result;
}

char *FloatingTabBarContentView.__allocating_init(layoutProvider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_20C3B1BC0(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
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

uint64_t sub_20C3AA6FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v33[4] = *(a1 + 64);
  v33[5] = v2;
  v34 = *(a1 + 96);
  v3 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v3;
  v4 = *(a1 + 48);
  v33[2] = *(a1 + 32);
  v33[3] = v4;
  v5 = *(a2 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a2 + 32); ; i = (i + 104))
  {
    v8 = i[3];
    v9 = i[5];
    v28 = i[4];
    v29 = v9;
    v10 = i[1];
    v25[0] = *i;
    v25[1] = v10;
    v11 = i[3];
    v13 = *i;
    v12 = i[1];
    v26 = i[2];
    v27 = v11;
    v14 = i[5];
    v22 = v28;
    v23 = v14;
    v18 = v13;
    v19 = v12;
    v30 = *(i + 12);
    v24 = *(i + 12);
    v20 = v26;
    v21 = v8;
    v15 = _s13FitnessCoreUI17TabItemDescriptorV2eeoiySbAC_ACtFZ_0(&v18, v33);
    v31[4] = v22;
    v31[5] = v23;
    v32 = v24;
    v31[0] = v18;
    v31[1] = v19;
    v31[2] = v20;
    v31[3] = v21;
    sub_20C39AF38(v25, v17);
    sub_20C39AF94(v31);
    if (v15)
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_20C3AA864(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_20C3AA8D0(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20C3963E8;
}

uint64_t sub_20C3AA97C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_itemDescriptors;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_20C3AAA38(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_20C3AAA80()
{
  v1 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_itemDescriptors;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v2 + 32;
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = (v6 + 104 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= *(v2 + 16))
        {
          __break(1u);
          return result;
        }

        v10 = *v8;
        v11 = v8[1];
        v26 = v8[2];
        v24 = v10;
        v25 = v11;
        v12 = v8[3];
        v13 = v8[4];
        v14 = v8[5];
        v30 = *(v8 + 12);
        v28 = v13;
        v29 = v14;
        v27 = v12;
        sub_20C3E8E3C();
        sub_20C39AF38(&v24, v23);
        sub_20C3E8E2C();
        sub_20C3E8E1C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if ((v28 & 1) == 0)
        {
          break;
        }

        ++v9;
        result = sub_20C39AF94(&v24);
        v8 = (v8 + 104);
        if (v3 == v9)
        {
          goto LABEL_17;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v31 = v7;
      if ((result & 1) == 0)
      {
        result = sub_20C3BA1F0(0, *(v7 + 16) + 1, 1);
        v7 = v31;
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_20C3BA1F0((v15 > 1), v16 + 1, 1);
        v7 = v31;
      }

      v5 = v9 + 1;
      *(v7 + 16) = v16 + 1;
      v17 = v7 + 104 * v16;
      v18 = v24;
      v19 = v26;
      *(v17 + 48) = v25;
      *(v17 + 64) = v19;
      *(v17 + 32) = v18;
      v20 = v27;
      v21 = v28;
      v22 = v29;
      *(v17 + 128) = v30;
      *(v17 + 96) = v21;
      *(v17 + 112) = v22;
      *(v17 + 80) = v20;
      v6 = v2 + 32;
    }

    while (v3 - 1 != v9);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_17:

  return v7;
}

char *FloatingTabBarContentView.init(layoutProvider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_20C3B0F48(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

id sub_20C3AAD90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_items);
  v2 = Strong;

  v3 = *(v1 + 16);
  if (v3)
  {
    v52 = MEMORY[0x277D84F90];
    sub_20C3E919C();
    sub_20C3E8E3C();
    v4 = objc_opt_self();
    v42 = objc_opt_self();
    v41 = objc_opt_self();
    v5 = v3 - 1;
    v6 = 0.0;
    for (i = 32; ; i += 168)
    {
      v8 = v1;
      v9 = *(v1 + i);
      v10 = *(v1 + i + 32);
      v44[1] = *(v1 + i + 16);
      v44[2] = v10;
      v44[0] = v9;
      v11 = *(v1 + i + 48);
      v12 = *(v1 + i + 64);
      v13 = *(v1 + i + 96);
      v46 = *(v1 + i + 80);
      v47 = v13;
      v44[3] = v11;
      v45 = v12;
      v14 = *(v1 + i + 112);
      v15 = *(v1 + i + 128);
      v16 = *(v1 + i + 144);
      v51 = *(v1 + i + 160);
      v49 = v15;
      v50 = v16;
      v48 = v14;
      sub_20C39BDF4(v44, v43);
      sub_20C3E8E2C();
      sub_20C3E8E1C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v17 = *&v46;
      if (v6 < *&v46)
      {
        v6 = *&v46;
      }

      v18 = [v4 absoluteDimension_];
      v19 = [v4 absoluteDimension_];
      v20 = [v42 sizeWithWidthDimension:v18 heightDimension:v19];

      v21 = [v41 itemWithLayoutSize_];
      sub_20C39BE2C(v44);

      sub_20C3E917C();
      sub_20C3E91AC();
      sub_20C3E91BC();
      sub_20C3E918C();
      if (!v5)
      {
        break;
      }

      --v5;
      v1 = v8;
    }

    v22 = objc_opt_self();
    v23 = [v4 fractionalWidthDimension_];
    v24 = [v4 absoluteDimension_];
    v25 = [v42 sizeWithWidthDimension:v23 heightDimension:v24];

    sub_20C38BD08(0, &qword_2810F20D8);
    v26 = sub_20C3E8D9C();

    v27 = [v22 horizontalGroupWithLayoutSize:v25 subitems:v26];

    v28 = [objc_opt_self() sectionWithGroup_];
  }

  else
  {

    v29 = objc_opt_self();
    v30 = [v29 fractionalWidthDimension_];
    v31 = [v29 fractionalHeightDimension_];
    v32 = [objc_opt_self() sizeWithWidthDimension:v30 heightDimension:v31];

    v33 = [objc_opt_self() itemWithLayoutSize_];
    v34 = objc_opt_self();
    v35 = [v33 layoutSize];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD8A0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_20C3ED2E0;
    *(v36 + 32) = v33;
    sub_20C38BD08(0, &qword_2810F20D8);
    v37 = v33;
    v38 = sub_20C3E8D9C();

    v39 = [v34 horizontalGroupWithLayoutSize:v35 subitems:v38];

    v28 = [objc_opt_self() sectionWithGroup_];
  }

  return v28;
}

unint64_t sub_20C3AB2CC(void *a1)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_20C3E8BFC();
  v3 = sub_20C3E804C();
  v4 = [a1 dequeueReusableCellWithReuseIdentifier:v2 forIndexPath:v3];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v6 = Strong;
  v7 = *(Strong + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_items);

  v8 = sub_20C3E807C();
  if (v8)
  {
    v9 = 2 * (*(v7 + 16) - 1 == v8);
  }

  else
  {
    v9 = 1;
  }

  type metadata accessor for TabItemCell();
  if (!swift_dynamicCastClass())
  {

    return v4;
  }

  v10 = v4;
  result = sub_20C3E807C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = *(v7 + 16);
    if (result < v12)
    {
      v13 = v7 + 168 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 64);
      v35 = *(v13 + 48);
      v36 = v15;
      v34 = v14;
      v16 = *(v13 + 80);
      v17 = *(v13 + 96);
      v18 = *(v13 + 128);
      v39 = *(v13 + 112);
      v40 = v18;
      v37 = v16;
      v38 = v17;
      v19 = *(v13 + 144);
      v20 = *(v13 + 160);
      v21 = *(v13 + 176);
      v44 = *(v13 + 192);
      v42 = v20;
      v43 = v21;
      v41 = v19;
      sub_20C39BDF4(&v34, v45);

      v31 = v42;
      v32 = v43;
      v33 = v44;
      v27 = v38;
      v28 = v39;
      v29 = v40;
      v30 = v41;
      v23 = v34;
      v24 = v35;
      v25 = v36;
      v26 = v37;
      v22 = v9;
      sub_20C3B4284(&v23, &v22, v12);

      v45[8] = v31;
      v45[9] = v32;
      v46 = v33;
      v45[4] = v27;
      v45[5] = v28;
      v45[6] = v29;
      v45[7] = v30;
      v45[0] = v23;
      v45[1] = v24;
      v45[2] = v25;
      v45[3] = v26;
      sub_20C39BE2C(v45);
LABEL_11:

      return v4;
    }
  }

  __break(1u);
  return result;
}

void sub_20C3AB574()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_isAnimating) & 1) == 0)
    {
      v2 = Strong + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectedIndex;
      swift_beginAccess();
      if ((*(v2 + 8) & 1) == 0)
      {
        sub_20C3ADF18(*v2);
      }
    }
  }
}

void sub_20C3AB6B0()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for FloatingTabBarContentView();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  v2 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_currentWidth;
  if (Width != *&v0[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_currentWidth])
  {
    [v0 bounds];
    *&v0[v2] = CGRectGetWidth(v12);
    v3 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_itemDescriptors;
    swift_beginAccess();
    v4 = *&v0[v3];
    if (v0[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_pendingSelectedIndex + 8] == 1)
    {
      v5 = &v0[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectedIndex];
      swift_beginAccess();
      v6 = v5[8];
    }

    else
    {
      v6 = 0;
      v5 = &v0[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_pendingSelectedIndex];
    }

    v7 = *v5;
    LOBYTE(v9) = 1;

    v8 = [v0 traitCollection];
    sub_20C3ACE28(v4, v7, v6, &v9, 0, 0, v8);
  }
}

void sub_20C3ABB64(uint64_t a1, uint64_t a2, char a3, int a4, Swift::Int a5, char a6, char a7)
{
  *(a1 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_isAnimating) = 1;
  v40[0] = a3 & 1;
  sub_20C3AE818(a2, v40, a4);
  v12 = a1 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectedIndex;
  swift_beginAccess();
  v13 = *v12;
  v14 = *(v12 + 8);
  if (v14 != 1 || (v15 = 0, (a6 & 1) == 0))
  {
    v16 = *(a2 + 16);
    v17 = v16 - 1;
    if (v14)
    {
      if (v17 >= a5)
      {
        v18 = a5;
      }

      else
      {
        v18 = v16 - 1;
      }

      if (a6)
      {
        v15 = 0;
      }

      else
      {
        v15 = v18;
      }
    }

    else
    {
      if (v17 >= v13)
      {
        v19 = v13;
      }

      else
      {
        v19 = v16 - 1;
      }

      if (v16 <= a5)
      {
        v20 = v19;
      }

      else
      {
        v20 = a5;
      }

      if (a6)
      {
        v15 = v19;
      }

      else
      {
        v15 = v20;
      }

      if (v15 == v13)
      {
        sub_20C3ADF18(v13);
        return;
      }
    }
  }

  FloatingTabBarContentView.selectItem(at:animated:shouldNotifyDelegate:)(v15, 0, a7 & 1);
  if (v21)
  {
    v39 = v21;
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD170);
    if (swift_dynamicCast())
    {
      if (v38 == 4)
      {

        if (qword_2810F2210 != -1)
        {
          swift_once();
        }

        v37 = sub_20C3E812C();
        __swift_project_value_buffer(v37, qword_2810F3B00);
        v24 = sub_20C3E810C();
        v25 = sub_20C3E8F3C();
        if (!os_log_type_enabled(v24, v25))
        {
          goto LABEL_39;
        }

        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = v15;
        v27 = "[FloatingTabBarContentView] Index is not selectable: %ld";
        goto LABEL_38;
      }

      if (!v38)
      {

        if (qword_2810F2210 != -1)
        {
          swift_once();
        }

        v23 = sub_20C3E812C();
        __swift_project_value_buffer(v23, qword_2810F3B00);
        v24 = sub_20C3E810C();
        v25 = sub_20C3E8F1C();
        if (!os_log_type_enabled(v24, v25))
        {
          goto LABEL_39;
        }

        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = v15;
        v27 = "[FloatingTabBarContentView] Failed to select invalid index: %ld";
LABEL_38:
        _os_log_impl(&dword_20C38A000, v24, v25, v27, v26, 0xCu);
        MEMORY[0x20F2FA030](v26, -1, -1);
LABEL_39:

        v36 = v39;
LABEL_40:

        return;
      }
    }

    if (qword_2810F2210 != -1)
    {
      swift_once();
    }

    v28 = sub_20C3E812C();
    __swift_project_value_buffer(v28, qword_2810F3B00);
    v29 = v21;
    v30 = sub_20C3E810C();
    v31 = sub_20C3E8F1C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 134218242;
      *(v32 + 4) = v15;
      *(v32 + 12) = 2112;
      v34 = v21;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v35;
      *v33 = v35;
      _os_log_impl(&dword_20C38A000, v30, v31, "[FloatingTabBarContentView] Failed to select index %ld with error: %@", v32, 0x16u);
      sub_20C3A36B4(v33, &qword_27C7AD680);
      MEMORY[0x20F2FA030](v33, -1, -1);
      MEMORY[0x20F2FA030](v32, -1, -1);

      return;
    }

    v36 = v21;
    goto LABEL_40;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FloatingTabBarContentView.selectItem(at:animated:shouldNotifyDelegate:)(Swift::Int at, Swift::Bool animated, Swift::Bool shouldNotifyDelegate)
{
  v4 = v3;
  v141 = shouldNotifyDelegate;
  v145 = animated;
  v6 = sub_20C3E809C();
  v143 = *(v6 - 8);
  v144 = v6;
  v7 = *(v143 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v140 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v132 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v139 = &v132 - v13;
  MEMORY[0x28223BE20](v12);
  v142 = &v132 - v14;
  if (qword_2810F2210 != -1)
  {
    swift_once();
  }

  v15 = sub_20C3E812C();
  __swift_project_value_buffer(v15, qword_2810F3B00);
  v16 = sub_20C3E810C();
  v17 = sub_20C3E8F3C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = at;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v145;
    _os_log_impl(&dword_20C38A000, v16, v17, "[FloatingTabBarContentView] Selecting index %ld. Animated: %{BOOL}d", v18, 0x12u);
    MEMORY[0x20F2FA030](v18, -1, -1);
  }

  if (at < 0)
  {
    goto LABEL_30;
  }

  if (v3[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_isPendingLayout])
  {
    v19 = &v3[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_pendingSelectedIndex];
    *v19 = at;
    v19[8] = 0;
    sub_20C3A6634();
    swift_allocError();
    v21 = 3;
LABEL_31:
    *v20 = v21;
    swift_willThrow();
    return;
  }

  v22 = *&v3[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_items];
  if (*(v22 + 16) <= at)
  {
    v90 = sub_20C3E810C();
    v91 = sub_20C3E8F1C();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 134217984;
      *(v92 + 4) = at;
      _os_log_impl(&dword_20C38A000, v90, v91, "[FloatingTabBarContentView] Index %ld to select is beyond valid bounds. Returning.", v92, 0xCu);
      MEMORY[0x20F2FA030](v92, -1, -1);
    }

LABEL_30:
    sub_20C3A6634();
    swift_allocError();
    v21 = 0;
    goto LABEL_31;
  }

  v23 = v22 + 168 * at;
  v24 = *(v23 + 32);
  v25 = *(v23 + 64);
  v171 = *(v23 + 48);
  v172 = v25;
  v170 = v24;
  v26 = *(v23 + 80);
  v27 = *(v23 + 96);
  v28 = *(v23 + 128);
  v175 = *(v23 + 112);
  v176 = v28;
  v173 = v26;
  v174 = v27;
  v29 = *(v23 + 144);
  v30 = *(v23 + 160);
  v31 = *(v23 + 176);
  v180 = *(v23 + 192);
  v178 = v30;
  v179 = v31;
  v177 = v29;
  if (!v174)
  {
    v93 = v3;
    v94 = v144;
    if (v141)
    {
      v95 = sub_20C3AAA80();
      if (*(v95 + 16) <= at)
      {
        __break(1u);
        goto LABEL_57;
      }

      v96 = v95 + 104 * at;
      v97 = *(v96 + 32);
      v98 = *(v96 + 64);
      v166[1] = *(v96 + 48);
      v166[2] = v98;
      v166[0] = v97;
      v99 = *(v96 + 80);
      v100 = *(v96 + 96);
      v101 = *(v96 + 112);
      v167 = *(v96 + 128);
      v166[4] = v100;
      v166[5] = v101;
      v166[3] = v99;
      sub_20C39AF38(v166, &v155);

      v102 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_itemDescriptors;
      swift_beginAccess();
      v103 = *&v3[v102];

      v104 = sub_20C3AA6FC(v166, v103);
      v106 = v105;

      sub_20C39AF94(v166);
      if ((v106 & 1) == 0)
      {
        v107 = &v93[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v108 = *(v107 + 1);
          ObjectType = swift_getObjectType();
          (*(v108 + 16))(v93, &protocol witness table for FloatingTabBarContentView, v104, ObjectType, v108);
          swift_unknownObjectRelease();
        }
      }

      v110 = &v93[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_highlightedIndex];
      swift_beginAccess();
      if ((v110[8] & 1) == 0)
      {
        v111 = *v110;
        *v110 = 0;
        v110[8] = 1;
        v112 = *&v93[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView];
        v113 = v139;
        MEMORY[0x20F2F8490](v111, 0);
        v114 = sub_20C3E804C();
        (*(v143 + 8))(v113, v94);
        v115 = [v112 cellForItemAtIndexPath_];

        if (v115)
        {
          [v115 setHighlighted_];
        }
      }
    }

    v116 = &v93[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_pendingSelectedIndex];
    if ((v93[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_pendingSelectedIndex + 8] & 1) == 0 && *v116 == at)
    {
      *v116 = 0;
      v116[8] = 1;
    }

    sub_20C3A6634();
    swift_allocError();
    v21 = 4;
    goto LABEL_31;
  }

  v32 = &v3[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectedIndex];
  swift_beginAccess();
  v135 = *v32;
  v134 = v32[8];
  v138 = v4;
  v33 = &v4[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_highlightedIndex];
  swift_beginAccess();
  v137 = *v33;
  v136 = v33[8];
  *v32 = at;
  v32[8] = 0;
  v34 = *&v138[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView];
  sub_20C39BDF4(&v170, &v155);
  [v34 setHidden_];
  *v33 = 0;
  v33[8] = 1;
  v35 = v138;
  v36 = &v138[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_pendingSelectedIndex];
  *v36 = 0;
  v36[8] = 1;
  v37 = v142;
  MEMORY[0x20F2F8490](at, 0);
  v38 = *&v35[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_dataSource];
  if (!v38)
  {
    sub_20C39BE2C(&v170);
    (*(v143 + 8))(v37, v144);
    return;
  }

  v39 = v38;
  sub_20C3E825C();

  v146[4] = v152;
  v146[5] = v153;
  v147 = v154;
  v146[0] = v148;
  v146[1] = v149;
  v146[2] = v150;
  v146[3] = v151;
  if (!*(&v148 + 1) || (v132 = v34, sub_20C3A36B4(v146, &qword_27C7AD6B0), v40 = *&v35[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView], v41 = sub_20C3E804C(), v42 = [v40 cellForItemAtIndexPath_], v41, (v133 = v42) == 0))
  {
    (*(v143 + 8))(v37, v144);
    sub_20C39BE2C(&v170);
    return;
  }

  v43 = v134;
  if (v135 == at)
  {
    v43 = 1;
  }

  if ((v43 & 1) == 0)
  {
    v44 = v139;
    MEMORY[0x20F2F8490]();
    v45 = sub_20C3E804C();
    (*(v143 + 8))(v44, v144);
    v46 = v40;
    v47 = [v40 cellForItemAtIndexPath_];

    [v47 setSelected_];
    v40 = v46;
  }

  if (v137 == at)
  {
    v48 = 1;
  }

  else
  {
    v48 = v136;
  }

  if ((v48 & 1) == 0)
  {
    v49 = v139;
    MEMORY[0x20F2F8490]();
    v50 = sub_20C3E804C();
    (*(v143 + 8))(v49, v144);
    v51 = [v40 cellForItemAtIndexPath_];

    v52 = v51;
    [v52 setSelected_];
    [v52 setHighlighted_];
  }

  v53 = v143;
  v54 = *(v143 + 16);
  v55 = v37;
  v56 = v144;
  v54(v11, v55, v144);
  v54(v140, v11, v56);
  v57 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v58 = swift_allocObject();
  v59 = v133;
  *(v58 + 16) = v138;
  *(v58 + 24) = v59;
  v60 = v11;
  v61 = v56;
  (*(v53 + 32))(v58 + v57, v60, v56);
  v139 = v58;
  v62 = v58 + ((v7 + v57 + 7) & 0xFFFFFFFFFFFFFFF8);
  v63 = v179;
  *(v62 + 128) = v178;
  *(v62 + 144) = v63;
  *(v62 + 160) = v180;
  v64 = v175;
  *(v62 + 64) = v174;
  *(v62 + 80) = v64;
  v65 = v177;
  *(v62 + 96) = v176;
  *(v62 + 112) = v65;
  v66 = v171;
  *v62 = v170;
  *(v62 + 16) = v66;
  v67 = v173;
  *(v62 + 32) = v172;
  *(v62 + 48) = v67;
  v68 = swift_allocObject();
  *(v68 + 16) = at;
  v137 = v68;
  if (v141)
  {
    sub_20C39BDF4(&v170, &v155);
    v69 = v138;
    v70 = v133;
    v71 = sub_20C3AAA80();
    if (*(v71 + 16) > at)
    {
      v72 = v71 + 104 * at;
      v73 = *(v72 + 32);
      v74 = *(v72 + 64);
      v168[1] = *(v72 + 48);
      v168[2] = v74;
      v168[0] = v73;
      v75 = *(v72 + 80);
      v76 = *(v72 + 96);
      v77 = *(v72 + 112);
      v169 = *(v72 + 128);
      v168[4] = v76;
      v168[5] = v77;
      v168[3] = v75;
      sub_20C39AF38(v168, &v155);

      v78 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_itemDescriptors;
      swift_beginAccess();
      v79 = *&v69[v78];

      v80 = sub_20C3AA6FC(v168, v79);
      v82 = v81;

      sub_20C39AF94(v168);
      v83 = v138;
      v84 = v133;
      if ((v82 & 1) == 0)
      {
        v85 = &v69[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v86 = *(v85 + 1);
          v87 = swift_getObjectType();
          v88 = *(v86 + 32);
          v89 = v86;
          v83 = v138;
          v88(v69, &protocol witness table for FloatingTabBarContentView, v80, v87, v89);
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_47;
    }

LABEL_57:
    __break(1u);
    return;
  }

  sub_20C39BDF4(&v170, &v155);
  v83 = v138;
  v117 = v138;
  v84 = v133;
  v118 = v133;
LABEL_47:
  v119 = v140;
  if (v145)
  {
    v120 = *(v143 + 8);
    v120(v140, v61);
    sub_20C39BE2C(&v170);
    v121 = &v83[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v122 = *(v121 + 1);
      v123 = swift_getObjectType();
      v124 = (*(v122 + 8))(v123, v122);
      swift_unknownObjectRelease();
      [v124 layoutIfNeeded];
    }

    v125 = objc_opt_self();
    *&v157 = sub_20C3B1CC8;
    *(&v157 + 1) = v139;
    *&v155 = MEMORY[0x277D85DD0];
    *(&v155 + 1) = 1107296256;
    *&v156 = sub_20C3AFF18;
    *(&v156 + 1) = &block_descriptor_0;
    v126 = _Block_copy(&v155);

    *&v157 = sub_20C3B1D58;
    *(&v157 + 1) = v137;
    *&v155 = MEMORY[0x277D85DD0];
    *(&v155 + 1) = 1107296256;
    *&v156 = sub_20C3B0C64;
    *(&v156 + 1) = &block_descriptor_6;
    v127 = _Block_copy(&v155);

    [v125 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v127);
    _Block_release(v126);

    v61 = v144;
  }

  else
  {
    v163 = v178;
    v164 = v179;
    v165 = v180;
    v159 = v174;
    v160 = v175;
    v161 = v176;
    v162 = v177;
    v155 = v170;
    v156 = v171;
    v157 = v172;
    v158 = v173;
    sub_20C3AE488(v84, v140, &v155);
    sub_20C39BE2C(&v170);
    [v84 setSelected_];
    [v84 setHighlighted_];
    v155 = 0x3FF0000000000000uLL;
    *&v156 = 0;
    *(&v156 + 1) = 0x3FF0000000000000;
    v157 = 0uLL;
    [v132 setTransform_];
    v128 = &v83[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v129 = *(v128 + 1);
      v130 = swift_getObjectType();
      v131 = (*(v129 + 8))(v130, v129);
      swift_unknownObjectRelease();
      [v131 layoutIfNeeded];
    }

    else
    {
    }

    v120 = *(v143 + 8);
    v120(v119, v61);
  }

  v120(v142, v61);
}

uint64_t sub_20C3ACE28(uint64_t a1, Swift::Int a2, char a3, char *a4, char a5, char a6, objc_class *a7)
{
  v89 = *a4;
  v11 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_itemDescriptors;
  swift_beginAccess();
  *&v7[v11] = a1;

  [v7 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v94 = v7;
  v20 = &v7[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_layoutProvider];
  v21 = *&v7[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_layoutProvider + 24];
  v22 = *&v7[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_layoutProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_layoutProvider], v21);

  v24 = sub_20C3C41A4(v23);

  v25 = (*(v22 + 16))(v24, a7, v21, v22, v13, v15, v17, v19);

  v26 = *(v20 + 3);
  v27 = *(v20 + 4);
  __swift_project_boxed_opaque_existential_1(v20, v26);
  v93 = v25;
  v28 = (*(v27 + 24))(a1, v25, v26, v27);
  v29 = *(v20 + 3);
  v30 = *(v20 + 4);
  __swift_project_boxed_opaque_existential_1(v20, v29);
  v87 = a7;
  v31 = (*(v30 + 32))(v28, a7, v29, v30);

  v32 = *(a1 + 16);
  if (v32)
  {
    v33 = 0;
    v34 = MEMORY[0x277D84F90];
    v35 = a1 + 32;
    v85 = a1 + 32;
    do
    {
      v104 = v34;
      v36 = (v35 + 104 * v33);
      v37 = v33;
      while (1)
      {
        if (v37 >= v32)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v38 = v36[5];
        v100 = v36[4];
        v101 = v38;
        v102 = *(v36 + 12);
        v39 = v36[1];
        v96 = *v36;
        v97 = v39;
        v40 = v36[3];
        v98 = v36[2];
        v99 = v40;
        v33 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_45;
        }

        sub_20C3E8E3C();
        sub_20C39AF38(&v96, v95);
        sub_20C3E8E2C();
        sub_20C3E8E1C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if ((v100 & 1) == 0)
        {
          break;
        }

        sub_20C39AF94(&v96);
        ++v37;
        v36 = (v36 + 104);
        if (v33 == v32)
        {
          v34 = v104;
          goto LABEL_18;
        }
      }

      v34 = v104;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20C3BA1F0(0, *(v34 + 16) + 1, 1);
        v34 = v103;
      }

      v43 = *(v34 + 16);
      v42 = *(v34 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_20C3BA1F0((v42 > 1), v43 + 1, 1);
        v34 = v103;
      }

      *(v34 + 16) = v43 + 1;
      v44 = v34 + 104 * v43;
      v45 = v96;
      v46 = v98;
      *(v44 + 48) = v97;
      *(v44 + 64) = v46;
      *(v44 + 32) = v45;
      v47 = v99;
      v48 = v100;
      v49 = v101;
      *(v44 + 128) = v102;
      *(v44 + 96) = v48;
      *(v44 + 112) = v49;
      *(v44 + 80) = v47;
      v35 = v85;
    }

    while (v33 != v32);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

LABEL_18:
  v50 = *(v20 + 3);
  v51 = *(v20 + 4);
  __swift_project_boxed_opaque_existential_1(v20, v50);
  v52 = (*(v51 + 24))(v34, v93, v50, v51);

  [v7 bounds];
  Width = CGRectGetWidth(v105);
  if (v31 <= Width)
  {
    v104 = v34;
    if (qword_2810F2210 != -1)
    {
      swift_once();
    }

    v59 = sub_20C3E812C();
    __swift_project_value_buffer(v59, qword_2810F3B00);
    v60 = sub_20C3E810C();
    v61 = sub_20C3E8F3C();
    v62 = a2;
    if (os_log_type_enabled(v60, v61))
    {
      v63 = swift_slowAlloc();
      *v63 = 134218240;
      *(v63 + 4) = Width;
      *(v63 + 12) = 2048;
      *(v63 + 14) = v31;
      _os_log_impl(&dword_20C38A000, v60, v61, "[FloatingTabBarContentView] Bounds width (%f) fits minimum width (%f). Applying items", v63, 0x16u);
      MEMORY[0x20F2FA030](v63, -1, -1);
    }

    v64 = sub_20C3E810C();
    v65 = sub_20C3E8F3C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v95[0] = v67;
      *v66 = 134218242;
      v106.origin.x = v13;
      v106.origin.y = v15;
      v106.size.width = v17;
      v106.size.height = v19;
      *(v66 + 4) = CGRectGetWidth(v106);
      *(v66 + 12) = 2080;
      if (a3)
      {
        v68 = 0xE300000000000000;
        v69 = 7104878;
      }

      else
      {
        *&v96 = 0;
        *(&v96 + 1) = 0xE000000000000000;
        v103 = a2;
        sub_20C3E920C();
        v68 = *(&v96 + 1);
        v69 = v96;
      }

      v71 = sub_20C3997A4(v69, v68, v95);

      *(v66 + 14) = v71;
      _os_log_impl(&dword_20C38A000, v64, v65, "[FloatingTabBarContentView] Applying items. Rect width %f. Selected index %s", v66, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x20F2FA030](v67, -1, -1);
      MEMORY[0x20F2FA030](v66, -1, -1);

      v62 = a2;
    }

    else
    {
    }

    v94[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_isPendingLayout] = 0;
    v72 = &v94[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_pendingSelectedIndex];
    *v72 = 0;
    v72[8] = 1;
    v70.value.super.isa = v87;
    v73 = sub_20C3AF0A0(v52, v70, v13, v15, v17, v19);
    if (v88)
    {

      v74 = sub_20C3E810C();
      v75 = sub_20C3E8F1C();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_20C38A000, v74, v75, "[FloatingTabBarContentView] Failed to make size descriptors due to invalid item size", v76, 2u);
        MEMORY[0x20F2FA030](v76, -1, -1);
      }

      v77 = MEMORY[0x277D84F90];
    }

    else
    {
      v78 = v73;

      v77 = sub_20C3B1824(v104, v78);
    }

    *&v94[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_items] = v77;

    if (*(*&v94[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_items] + 16))
    {
      v79 = swift_allocObject();
      v80 = v104;
      *(v79 + 16) = v94;
      *(v79 + 24) = v80;
      *(v79 + 32) = v89;
      *(v79 + 33) = a6 & 1;
      *(v79 + 40) = v62;
      *(v79 + 48) = a3 & 1;
      *(v79 + 49) = a5 & 1;
      *(swift_allocObject() + 16) = v94;
      if (a6)
      {
        sub_20C38BD08(0, &qword_27C7AD6D0);
        v81 = v94;
        sub_20C3E900C();
      }

      else
      {
        v84 = v94;

        sub_20C3ABB64(v84, v80, v89, 0, a2, a3 & 1, a5 & 1);

        v84[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_isAnimating] = 0;
      }
    }

    else
    {

      v82 = &v94[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectedIndex];
      swift_beginAccess();
      *v82 = 0;
      v82[8] = 1;
      [*&v94[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView] setHidden_];
      v83 = &v94[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_highlightedIndex];
      swift_beginAccess();
      *v83 = 0;
      v83[8] = 1;
      LOBYTE(v103) = v89;
      return sub_20C3AE818(MEMORY[0x277D84F90], &v103, a6 & 1);
    }
  }

  else
  {

    if (qword_2810F2210 != -1)
    {
LABEL_46:
      swift_once();
    }

    v53 = sub_20C3E812C();
    __swift_project_value_buffer(v53, qword_2810F3B00);
    v54 = sub_20C3E810C();
    v55 = sub_20C3E8F1C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 134218240;
      *(v56 + 4) = Width;
      *(v56 + 12) = 2048;
      *(v56 + 14) = v31;
      _os_log_impl(&dword_20C38A000, v54, v55, "[FloatingTabBarContentView] Bounds width (%f) does not fit minimum width (%f)", v56, 0x16u);
      MEMORY[0x20F2FA030](v56, -1, -1);
    }

    sub_20C3A6634();
    swift_allocError();
    *v57 = 2;
    return swift_willThrow();
  }
}

unint64_t sub_20C3AD848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD750);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v57 - v11;
  v13 = sub_20C3E809C();
  v63 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v61 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v62 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD760);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  v24 = *(v5 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_dataSource);
  if (!v24)
  {
    v31 = *(v63 + 56);

    return v31(a3, 1, 1, v13);
  }

  v60 = a2;
  v25 = v24;
  sub_20C3E827C();

  (*(v18 + 32))(v23, v21, v17);
  v64 = sub_20C3E808C();
  v26 = sub_20C3E81DC();
  result = sub_20C3E807C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (result >= *(v26 + 16))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (*(v26 + 104 * result + 97))
  {
    (*(v18 + 8))(v23, v17);

    (*(v63 + 16))(a3, a1, v13);
    v28 = *(v63 + 56);
    v29 = a3;
LABEL_6:
    v30 = 0;
    return v28(v29, v30, 1, v13);
  }

  v59 = v12;
  result = sub_20C3E807C();
  v32 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_38;
  }

  v33 = sub_20C3E808C();
  MEMORY[0x20F2F8490](v32, v33);
  result = sub_20C3E807C();
  v34 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_39:
    __break(1u);
    return result;
  }

  v35 = sub_20C3E808C();
  MEMORY[0x20F2F8490](v34, v35);
  v58 = sub_20C3E807C();
  if (v58 < 1)
  {
    v40 = 0.0;
  }

  else
  {
    v57 = a3;
    v36 = *(v5 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView);
    v37 = sub_20C3E804C();
    v38 = [v36 cellForItemAtIndexPath_];

    if (v38)
    {
      [v38 frame];
      MaxX = CGRectGetMaxX(v66);
    }

    else
    {
      MaxX = 0.0;
    }

    a3 = v57;
    v40 = MaxX - a4;
  }

  v41 = sub_20C3E807C();
  v42 = *(v26 + 16);

  if (v41 >= v42 - 1)
  {
    (*(v18 + 8))(v23, v17);
LABEL_28:
    v53 = *(v63 + 8);
    v53(v61, v13);
    v53(v62, v13);
    v28 = *(v63 + 56);
    v29 = a3;
    v30 = 1;
    return v28(v29, v30, 1, v13);
  }

  v43 = *(v5 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView);
  v44 = sub_20C3E804C();
  v45 = [v43 cellForItemAtIndexPath_];

  if (v45)
  {
    [v45 frame];
    MinX = CGRectGetMinX(v67);
  }

  else
  {
    MinX = 0.0;
  }

  v47 = v58;
  v48 = v59;
  (*(v18 + 8))(v23, v17);
  if (v47 < 1)
  {
    goto LABEL_28;
  }

  if (v40 == MinX - a4)
  {
    v49 = a3;
    v50 = *(v63 + 8);
    v50(v61, v13);
    sub_20C3B2058(v60, v48);
    v51 = *(v63 + 48);
    if (v51(v48, 1, v13) == 1)
    {
      v52 = v49;
      (*(v63 + 32))(v49, v62, v13);
      if (v51(v48, 1, v13) != 1)
      {
        sub_20C3A36B4(v48, &unk_27C7AD750);
      }
    }

    else
    {
      v50(v62, v13);
      v52 = v49;
      (*(v63 + 32))(v49, v48, v13);
    }

    v28 = *(v63 + 56);
    v29 = v52;
    goto LABEL_6;
  }

  v54 = *(v63 + 8);
  v55 = (v63 + 32);
  v56 = (v63 + 56);
  if (MinX - a4 >= v40)
  {
    v54(v61, v13);
    (*v55)(a3, v62, v13);
  }

  else
  {
    v54(v62, v13);
    (*v55)(a3, v61, v13);
  }

  return (*v56)(a3, 0, 1, v13);
}

unint64_t sub_20C3ADF18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C3E809C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x20F2F8490](a1, 0);
  v8 = *(v2 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_dataSource);
  if (v8)
  {
    v9 = v8;
    sub_20C3E825C();

    v37[4] = v43;
    v37[5] = v44;
    v38 = v45;
    v37[0] = v39;
    v37[1] = v40;
    v37[2] = v41;
    v37[3] = v42;
    if (*(&v39 + 1))
    {
      sub_20C3A36B4(v37, &qword_27C7AD6B0);
      result = sub_20C3E807C();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v11 = *(v2 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_items);
        if (result < *(v11 + 16))
        {
          v12 = v11 + 168 * result;
          v13 = *(v12 + 32);
          v14 = *(v12 + 64);
          v27 = *(v12 + 48);
          v28 = v14;
          v26 = v13;
          v15 = *(v12 + 80);
          v16 = *(v12 + 96);
          v17 = *(v12 + 128);
          v31 = *(v12 + 112);
          v32 = v17;
          v29 = v15;
          v30 = v16;
          v18 = *(v12 + 144);
          v19 = *(v12 + 160);
          v20 = *(v12 + 176);
          v36 = *(v12 + 192);
          v34 = v19;
          v35 = v20;
          v33 = v18;
          v21 = *(v2 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView);
          sub_20C39BDF4(&v26, v24);
          v22 = sub_20C3E804C();
          v23 = [v21 cellForItemAtIndexPath_];

          if (!v23)
          {
            (*(v5 + 8))(v7, v4);
            return sub_20C39BE2C(&v26);
          }

          v24[8] = v34;
          v24[9] = v35;
          v25 = v36;
          v24[4] = v30;
          v24[5] = v31;
          v24[6] = v32;
          v24[7] = v33;
          v24[0] = v26;
          v24[1] = v27;
          v24[2] = v28;
          v24[3] = v29;
          sub_20C3AE488(v23, v7, v24);
          sub_20C39BE2C(&v26);
          [v23 setSelected_];

          return (*(v5 + 8))(v7, v4);
        }
      }

      __break(1u);
      return result;
    }
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_20C3AE1AC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = sub_20C3E809C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v4 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_highlightedIndex);
  swift_beginAccess();
  if (v13[1])
  {
    if (a2)
    {
      return;
    }

    *v13 = a1;
    *(v13 + 8) = 0;
    goto LABEL_12;
  }

  v14 = *v13;
  if ((a2 & 1) != 0 || v14 != a1)
  {
    if ((a4 & 1) != 0 || v14 != a3)
    {
      v16 = *(v4 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView);
      MEMORY[0x20F2F8490](v14, 0);
      v24 = a3;
      v17 = sub_20C3E804C();
      (*(v10 + 8))(v12, v9);
      v18 = [v16 cellForItemAtIndexPath_];

      a3 = v24;
      if (v18)
      {
        [v18 setSelected_];
        [v18 setHighlighted_];
      }
    }

    else
    {
      v15 = *(v4 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView);
      v25.a = 1.0;
      v25.b = 0.0;
      v25.c = 0.0;
      v25.d = 1.0;
      v25.tx = 0.0;
      v25.ty = 0.0;
      [v15 setTransform_];
    }

    *v13 = a1;
    *(v13 + 8) = a2 & 1;
    if ((a2 & 1) == 0)
    {
LABEL_12:
      if ((a4 & 1) != 0 || a1 != a3)
      {
        v20 = *(v4 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView);
        MEMORY[0x20F2F8490](a1, 0);
        v21 = sub_20C3E804C();
        (*(v10 + 8))(v12, v9);
        v22 = [v20 cellForItemAtIndexPath_];

        if (v22)
        {
          [v22 setHighlighted_];
        }
      }

      else
      {
        v19 = *(v4 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView);
        CGAffineTransformMakeScale(&v25, 0.95, 0.95);
        [v19 setTransform_];
      }
    }
  }
}

void sub_20C3AE488(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 120);
  v8 = *(a3 + 128);
  v9 = [v4 traitCollection];
  v10 = *(a3 + 104);
  v35 = *(a3 + 88);
  v36 = v10;
  v37 = v7;
  v38 = v8;
  v34 = 15;
  v39.value.super.isa = v9;
  *&v11 = *&TabItemSize.minimumSize(respecting:compatibleWith:)(&v34, v39);

  [a1 frame];
  Height = CGRectGetHeight(v40);
  v13 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView];
  v14 = 0.0;
  [v13 setFrame_];
  if (sub_20C3E807C())
  {
    v15 = sub_20C3E807C();
    v16 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView];
    v17 = [v16 numberOfItemsInSection_];
    v18 = v17 - 1;
    if (__OFSUB__(v17, 1))
    {
      __break(1u);
      return;
    }

    v19 = [v16 effectiveUserInterfaceLayoutDirection];
    v20 = [v16 collectionViewLayout];
    v21 = [v20 developmentLayoutDirection];

    if (v15 != v18)
    {
      if (v19 != v21)
      {
        [v16 frame];
        CGRectGetMaxX(v45);
        [a1 frame];
        [a1 frame];
        CGRectGetWidth(v46);
      }

      [a1 center];
      goto LABEL_10;
    }

    if (v19 == v21)
    {
      [a1 frame];
      MaxX = CGRectGetMaxX(v41);
      [v13 frame];
      v14 = MaxX - CGRectGetWidth(v42);
    }
  }

  else
  {
    v23 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView];
    v24 = [v23 effectiveUserInterfaceLayoutDirection];
    v25 = [v23 collectionViewLayout];
    v26 = [v25 developmentLayoutDirection];

    if (v24 != v26)
    {
      [v23 frame];
      v27 = CGRectGetMaxX(v43);
      [a1 frame];
      v29 = v27 - v28;
      [v13 frame];
      v14 = v29 - CGRectGetWidth(v44);
    }
  }

  [v13 frame];
  [v13 setFrame_];
  [a1 center];
  [v13 center];
LABEL_10:
  [v13 setCenter_];
  v30 = &v4[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v30 + 1);
    ObjectType = swift_getObjectType();
    v33 = (*(v31 + 8))(ObjectType, v31);
    swift_unknownObjectRelease();
    [v33 setNeedsLayout];
  }
}

uint64_t sub_20C3AE818(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD760);
  v9 = MEMORY[0x28223BE20](v8);
  v88 = &v84[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v84[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v90 = &v84[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v86 = &v84[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v87 = &v84[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v84[-v19];
  v22 = *a2;
  v23 = *(a1 + 16);
  v24 = MEMORY[0x277D84F90];
  v95 = v20;
  v96 = a1;
  v94 = a3;
  if (v23)
  {
    v85 = v22;
    v91 = &v84[-v19];
    v92 = v4;
    v93 = v8;
    v118 = MEMORY[0x277D84F90];
    sub_20C3BA1D0(0, v23, 0);
    v25 = a1 + 32;
    v24 = v118;
    sub_20C3E8E3C();
    for (i = v23 - 1; ; --i)
    {
      v27 = *(v25 + 64);
      v28 = *(v25 + 80);
      v29 = *(v25 + 32);
      v107 = *(v25 + 48);
      v108 = v27;
      v109 = v28;
      v110 = *(v25 + 96);
      v30 = *(v25 + 16);
      v104 = *v25;
      v105 = v30;
      v106 = v29;
      v111 = v104;
      v112 = v30;
      v113 = v29;
      v114 = v107;
      v115 = v27;
      v116 = v28;
      v117 = v110;
      sub_20C39AF38(&v104, &v97);
      sub_20C3E8E2C();
      sub_20C3E8E1C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v118 = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_20C3BA1D0((v31 > 1), v32 + 1, 1);
        v24 = v118;
      }

      v101 = v115;
      v102 = v116;
      v103 = v117;
      v99 = v113;
      v100 = v114;
      v33 = v111;
      v97 = v111;
      v98 = v112;
      *(v24 + 16) = v32 + 1;
      v34 = v24 + 104 * v32;
      v35 = v99;
      *(v34 + 48) = v98;
      *(v34 + 64) = v35;
      v36 = v100;
      v37 = v101;
      v38 = v102;
      *(v34 + 128) = v103;
      *(v34 + 96) = v37;
      *(v34 + 112) = v38;
      *(v34 + 80) = v36;
      *(v34 + 32) = v33;
      if (!i)
      {
        break;
      }

      v25 += 104;
    }

    v4 = v92;
    v8 = v93;
    v20 = v95;
    v21 = v91;
    LOBYTE(v22) = v85;
  }

  v39 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_dataSource;
  v40 = *(v4 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_dataSource);
  if ((v22 & 1) == 0)
  {
    v89 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_dataSource;
    if (v40)
    {
      v48 = v40;
      v49 = v87;
      sub_20C3E827C();

      v50 = v95;
      (*(v95 + 32))(v21, v49, v8);
      *&v111 = 0;
      sub_20C3E81CC();
      if ((v51 & 1) == 0)
      {
        v92 = v4;
        sub_20C3B2288();
        sub_20C3E821C();
        sub_20C3E81BC();
        *&v111 = 0;
        BYTE8(v111) = 1;
        sub_20C3E819C();
        v93 = v8;
        v91 = v21;
        result = sub_20C3E81EC();
        v96 = result;
        v57 = *(v24 + 16);
        if (v57)
        {
          v58 = 0;
          v59 = (v24 + 32);
          v87 = v57 - 1;
          v60 = MEMORY[0x277D84F90];
          v88 = (v24 + 32);
          do
          {
            v90 = v60;
            v61 = &v59[104 * v58];
            v62 = v58;
            while (1)
            {
              if (v62 >= *(v24 + 16))
              {
                __break(1u);
                return result;
              }

              v63 = *v61;
              v64 = *(v61 + 2);
              v112 = *(v61 + 1);
              v113 = v64;
              v111 = v63;
              v65 = *(v61 + 3);
              v66 = *(v61 + 4);
              v67 = *(v61 + 5);
              v117 = *(v61 + 12);
              v115 = v66;
              v116 = v67;
              v114 = v65;
              sub_20C3E8E3C();
              sub_20C3B22DC(&v111, &v104);
              sub_20C3E8E2C();
              sub_20C3E8E1C();
              isCurrentExecutor = swift_task_isCurrentExecutor();
              if ((isCurrentExecutor & 1) == 0)
              {
                isCurrentExecutor = swift_task_reportUnexpectedExecutor();
              }

              v107 = v114;
              v108 = v115;
              v109 = v116;
              v104 = v111;
              v110 = v117;
              v105 = v112;
              v106 = v113;
              MEMORY[0x28223BE20](isCurrentExecutor);
              *&v84[-16] = &v104;
              v69 = sub_20C3D4BC0(sub_20C3B2338, &v84[-32], v96);

              if (v69)
              {
                break;
              }

              ++v62;
              result = sub_20C3B2358(&v111);
              v61 += 104;
              if (v57 == v62)
              {
                goto LABEL_38;
              }
            }

            v70 = v90;
            result = swift_isUniquelyReferenced_nonNull_native();
            *&v97 = v70;
            if ((result & 1) == 0)
            {
              result = sub_20C3BA1D0(0, *(v70 + 2) + 1, 1);
              v70 = v97;
            }

            v72 = *(v70 + 2);
            v71 = *(v70 + 3);
            if (v72 >= v71 >> 1)
            {
              result = sub_20C3BA1D0((v71 > 1), v72 + 1, 1);
              v70 = v97;
            }

            v58 = v62 + 1;
            *(v70 + 2) = v72 + 1;
            v73 = &v70[104 * v72];
            v74 = v111;
            v75 = v113;
            *(v73 + 3) = v112;
            *(v73 + 4) = v75;
            *(v73 + 2) = v74;
            v76 = v114;
            v77 = v115;
            v78 = v116;
            *(v73 + 16) = v117;
            *(v73 + 6) = v77;
            *(v73 + 7) = v78;
            *(v73 + 5) = v76;
            v59 = v88;
            v60 = v70;
          }

          while (v87 != v62);
        }

LABEL_38:

        v79 = v93;
        v80 = v86;
        sub_20C3E820C();

        v81 = *&v89[v92];
        if (v81)
        {
          v82 = v81;
          sub_20C3E826C();
        }

        v83 = *(v95 + 8);
        v83(v80, v79);
        return (v83)(v91, v79);
      }

      (*(v50 + 8))(v21, v8);
    }

    sub_20C3B2288();
    v52 = v90;
    sub_20C3E821C();
    sub_20C3E81BC();
    *&v111 = 0;
    BYTE8(v111) = 1;
    sub_20C3E819C();

    v53 = *&v89[v4];
    if (v53)
    {
      v54 = v53;
      sub_20C3E826C();
    }

    return (*(v95 + 8))(v52, v8);
  }

  v41 = v96;
  if (!v40)
  {
LABEL_14:

    LOBYTE(v111) = 0;
    return sub_20C3AE818(v41, &v111, v94 & 1);
  }

  v42 = v20;
  v43 = v40;
  v44 = v88;
  sub_20C3E827C();

  v45 = v89;
  (*(v42 + 32))(v89, v44, v8);
  *&v111 = 0;
  sub_20C3E81CC();
  if (v46)
  {
    (*(v42 + 8))(v45, v8);
    goto LABEL_14;
  }

  sub_20C3E820C();

  v55 = *(v4 + v39);
  if (v55)
  {
    v56 = v55;
    sub_20C3E826C();
  }

  return (*(v42 + 8))(v45, v8);
}

uint64_t sub_20C3AF0A0(void *a1, UITraitCollection_optional a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v9 = a1[2];
  if (v9 < 2)
  {
    if (v9)
    {
      v28 = a1[4];
      v29 = a1[5];
      v30 = a1[6];
      v31 = a1[7];
      v32 = a1[8];
      v33 = a1[9];
      v49 = 15;
      v34 = TabItemSize.minimumSize(respecting:compatibleWith:)(&v49, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADAC0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_20C3EBA20;
      *(v7 + 32) = v34;
      *(v7 + 48) = v28;
      *(v7 + 56) = v29;
      *(v7 + 64) = v30;
      *(v7 + 72) = v31;
      *(v7 + 80) = v32;
      *(v7 + 88) = v33;
    }

    else
    {
      sub_20C3A6634();
      swift_allocError();
      *v44 = 1;
      swift_willThrow();
    }

    return v7;
  }

  else
  {
    v10 = (v6 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_layoutProvider);
    v11 = *(v6 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_layoutProvider + 24);
    v12 = *(v6 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_layoutProvider + 32);
    isa = a2.value.super.isa;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v12 + 32))(a1, isa, v11, v12);
    v19 = v18;
    v50.origin.x = a3;
    v50.origin.y = a4;
    v50.size.width = a5;
    v50.size.height = a6;
    CGRectGetWidth(v50);
    v49 = MEMORY[0x277D84F90];
    sub_20C3BA190(0, v9, 0);
    v20 = 0;
    v21 = v49;
    v22 = a1 + 8;
    do
    {
      v23 = *(v22 - 1);
      v48[0] = *(v22 - 2);
      v48[1] = v23;
      v48[2] = *v22;
      sub_20C3AF43C(v20, v48, a1);
      v49 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        v27 = v24;
        sub_20C3BA190((v25 > 1), v26 + 1, 1);
        v24 = v27;
        v21 = v49;
      }

      ++v20;
      *(v21 + 16) = v26 + 1;
      *(v21 + 8 * v26 + 32) = v24;
      v22 += 3;
    }

    while (v9 != v20);
    v47 = MEMORY[0x277D84F90];
    sub_20C3BA170(0, v9, 0);
    v7 = v47;
    sub_20C3E8E3C();
    v35 = 0;
    for (i = a1 + 9; ; i += 6)
    {
      v45 = *(i - 3);
      v46 = *(i - 5);
      v37 = *(i - 1);
      v38 = *i;
      sub_20C3E8E2C();
      sub_20C3E8E1C();
      result = swift_task_isCurrentExecutor();
      if ((result & 1) == 0)
      {
        result = swift_task_reportUnexpectedExecutor();
      }

      if (v35 >= *(v21 + 16))
      {
        break;
      }

      v40 = *(v21 + 8 * v35 + 32);

      v42 = *(v47 + 16);
      v41 = *(v47 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_20C3BA170((v41 > 1), v42 + 1, 1);
      }

      *(v47 + 16) = v42 + 1;
      ++v35;
      v43 = v47 + (v42 << 6);
      *(v43 + 32) = *&v46 + v40;
      *(v43 + 40) = v19;
      *(v43 + 48) = v46;
      *(v43 + 64) = v45;
      *(v43 + 80) = v37;
      *(v43 + 88) = v38;
      if (v9 == v35)
      {

        return v7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20C3AF43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a3 + 16);
  if (!a1)
  {
  }

  if (v6 - 1 == a1)
  {
    if (a1 - 1 < v6)
    {
    }

    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(a1, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a1 - 1 >= v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__OFADD__(a1, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a1 + 1 < v6)
  {
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_20C3AF5F8(void *a1)
{
  v3 = sub_20C3E809C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v59 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD750);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v56 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - v13;
  v60 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionShouldFollowGesture;
  v15 = v1[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionShouldFollowGesture];
  v16 = &v1[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_highlightedIndex];
  swift_beginAccess();
  v57 = *v16;
  v58 = v16[8];
  v17 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView];
  v61 = a1;
  [a1 locationInView_];
  v19 = v18;
  [v17 bounds];
  MidY = CGRectGetMidY(v70);
  [v17 bounds];
  v69.x = v19;
  v69.y = MidY;
  if (!CGRectContainsPoint(v71, v69))
  {
    goto LABEL_6;
  }

  v21 = [v17 indexPathForItemAtPoint_];
  if (v15)
  {
    if (v21)
    {
      v22 = v59;
      v23 = v21;
      sub_20C3E805C();

      if (v58)
      {
        v24 = 1;
      }

      else
      {
        MEMORY[0x20F2F8490](v57, 0);
        v24 = 0;
      }

      (*(v4 + 56))(v9, v24, 1, v3);
      sub_20C3AD848(v22, v9, v14, v19);
      sub_20C3A36B4(v9, &unk_27C7AD750);
      (*(v4 + 8))(v22, v3);
      goto LABEL_13;
    }

LABEL_6:
    (*(v4 + 56))(v14, 1, 1, v3);
LABEL_14:
    sub_20C3A36B4(v14, &unk_27C7AD750);
    v27 = *v16;
    v28 = v16[8];
    goto LABEL_16;
  }

  if (v21)
  {
    v25 = v21;
    sub_20C3E805C();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v4 + 56))(v12, v26, 1, v3);
  sub_20C3B1FE8(v12, v14);
LABEL_13:
  if ((*(v4 + 48))(v14, 1, v3) == 1)
  {
    goto LABEL_14;
  }

  v27 = sub_20C3E807C();
  (*(v4 + 8))(v14, v3);
  v28 = 0;
LABEL_16:
  v29 = [v61 state];
  if (v29 == 1)
  {
    if ((v28 & 1) == 0)
    {
      v42 = &v1[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectedIndex];
      swift_beginAccess();
      v30 = 0;
      v43 = (v27 == *v42) & ~v42[8];
      v1[v60] = v43;
      if (!v43)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }

    v31 = 0;
    goto LABEL_26;
  }

  if (v29 != 3)
  {
    if (v29 == 2)
    {
      v30 = v28;
      if (!v1[v60])
      {
        goto LABEL_28;
      }

LABEL_38:
      if ((v30 & 1) == 0)
      {
        v44 = swift_allocObject();
        *(v44 + 16) = v1;
        *(v44 + 24) = v27;
        *(v44 + 32) = v27;
        *(v44 + 40) = v28;
        v33 = objc_opt_self();
        v67 = sub_20C3B1F90;
        v68 = v44;
        aBlock = MEMORY[0x277D85DD0];
        v64 = 1107296256;
        v34 = &block_descriptor_64;
        goto LABEL_40;
      }

LABEL_28:
      v32 = swift_allocObject();
      *(v32 + 16) = v1;
      *(v32 + 24) = v27;
      *(v32 + 32) = v30;
      v33 = objc_opt_self();
      v67 = sub_20C3B1F84;
      v68 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v64 = 1107296256;
      v34 = &block_descriptor_58;
LABEL_40:
      v65 = sub_20C3AFF18;
      v66 = v34;
      v45 = _Block_copy(&aBlock);
      v46 = v1;

      [v33 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
      _Block_release(v45);

      return;
    }

    v27 = 0;
    v31 = 1;
LABEL_26:
    v1[v60] = v31;
    goto LABEL_27;
  }

  v1[v60] = 0;
  if (v28)
  {
    v27 = 0;
LABEL_27:
    v30 = 1;
    goto LABEL_28;
  }

  FloatingTabBarContentView.selectItem(at:animated:shouldNotifyDelegate:)(v27, 1, 1);
  if (!v35)
  {
    return;
  }

  aBlock = v35;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD170);
  if (swift_dynamicCast())
  {
    if (v62 == 4)
    {

      if (qword_2810F2210 != -1)
      {
        swift_once();
      }

      v55 = sub_20C3E812C();
      __swift_project_value_buffer(v55, qword_2810F3B00);
      v38 = sub_20C3E810C();
      v39 = sub_20C3E8F3C();
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_52;
      }

      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = v27;
      v41 = "[FloatingTabBarContentView] Index is not selectable: %ld";
      goto LABEL_51;
    }

    if (!v62)
    {

      if (qword_2810F2210 != -1)
      {
        swift_once();
      }

      v37 = sub_20C3E812C();
      __swift_project_value_buffer(v37, qword_2810F3B00);
      v38 = sub_20C3E810C();
      v39 = sub_20C3E8F1C();
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_52;
      }

      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = v27;
      v41 = "[FloatingTabBarContentView] Failed to select invalid index: %ld";
LABEL_51:
      _os_log_impl(&dword_20C38A000, v38, v39, v41, v40, 0xCu);
      MEMORY[0x20F2FA030](v40, -1, -1);
LABEL_52:

      return;
    }
  }

  if (qword_2810F2210 != -1)
  {
    swift_once();
  }

  v47 = sub_20C3E812C();
  __swift_project_value_buffer(v47, qword_2810F3B00);
  v48 = v35;
  v49 = sub_20C3E810C();
  v50 = sub_20C3E8F1C();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 134218242;
    *(v51 + 4) = v27;
    *(v51 + 12) = 2112;
    v53 = v35;
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v51 + 14) = v54;
    *v52 = v54;
    _os_log_impl(&dword_20C38A000, v49, v50, "[FloatingTabBarContentView] Failed to select index %ld with error: %@", v51, 0x16u);
    sub_20C3A36B4(v52, &qword_27C7AD680);
    MEMORY[0x20F2FA030](v52, -1, -1);
    MEMORY[0x20F2FA030](v51, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_20C3AFF18(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_20C3AFF5C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a1 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectedIndex;
  swift_beginAccess();
  sub_20C3AE1AC(a2, a3 & 1, *v5, *(v5 + 8));
}

id FloatingTabBarContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id FloatingTabBarContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingTabBarContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FloatingTabBarContentView.updateItemDescriptors(_:expectedSize:selectedIndex:visibleItemDescriptors:visibleItemSizes:reason:shouldNotifyDelegate:animated:)(Swift::OpaquePointer _, CGSize expectedSize, Swift::Int_optional selectedIndex, Swift::OpaquePointer visibleItemDescriptors, Swift::OpaquePointer visibleItemSizes, FitnessCoreUI::FloatingTabBarUpdateReason reason, Swift::Bool shouldNotifyDelegate, Swift::Bool animated)
{
  v10 = v8;
  is_nil = selectedIndex.is_nil;
  value = selectedIndex.value;
  width = expectedSize.width;
  v60 = *reason;
  v17 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_itemDescriptors;
  swift_beginAccess();
  *&v10[v17] = _;

  v18 = &v10[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_pendingSelectedIndex];
  *v18 = value;
  v18[8] = is_nil;

  [v10 bounds];
  x = v63.origin.x;
  y = v63.origin.y;
  v21 = v63.size.width;
  height = v63.size.height;
  v23 = CGRectGetWidth(v63);
  if (v23 == width)
  {
    v55 = value;
    if (qword_2810F2210 != -1)
    {
      swift_once();
    }

    v56 = is_nil;
    v54 = shouldNotifyDelegate;
    v24 = sub_20C3E812C();
    __swift_project_value_buffer(v24, qword_2810F3B00);
    v25 = sub_20C3E810C();
    v26 = sub_20C3E8F3C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134218240;
      *(v27 + 4) = v23;
      *(v27 + 12) = 2048;
      *(v27 + 14) = width;
      _os_log_impl(&dword_20C38A000, v25, v26, "[FloatingTabBarContentView] Bounds width (%f) matches expected width (%f). Applying items", v27, 0x16u);
      MEMORY[0x20F2FA030](v27, -1, -1);
    }

    v28 = [v10 traitCollection];
    v29 = sub_20C3E810C();
    v30 = sub_20C3E8F3C();
    v57 = v28;
    if (os_log_type_enabled(v29, v30))
    {
      v53 = animated;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v61[0] = v32;
      *v31 = 134218242;
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = v21;
      v64.size.height = height;
      *(v31 + 4) = CGRectGetWidth(v64);
      *(v31 + 12) = 2080;
      if (v56)
      {
        v33 = 0xE300000000000000;
        v34 = 7104878;
      }

      else
      {
        v61[3] = 0;
        v61[4] = 0xE000000000000000;
        v62 = value;
        sub_20C3E920C();
        v34 = 0;
        v33 = 0xE000000000000000;
      }

      v41 = sub_20C3997A4(v34, v33, v61);

      *(v31 + 14) = v41;
      _os_log_impl(&dword_20C38A000, v29, v30, "[FloatingTabBarContentView] Applying items. Rect width %f. Selected index %s", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x20F2FA030](v32, -1, -1);
      MEMORY[0x20F2FA030](v31, -1, -1);

      animated = v53;
      v28 = v57;
    }

    else
    {
    }

    v10[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_isPendingLayout] = 0;
    *v18 = 0;
    v18[8] = 1;
    v40.value.super.isa = v28;
    v42 = sub_20C3AF0A0(visibleItemSizes._rawValue, v40, x, y, v21, height);
    if (v9)
    {
      v43 = sub_20C3E810C();
      v44 = sub_20C3E8F1C();
      rawValue = visibleItemDescriptors._rawValue;
      if (os_log_type_enabled(v43, v44))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_20C38A000, v43, v44, "[FloatingTabBarContentView] Failed to make size descriptors due to invalid item size", v46, 2u);
        MEMORY[0x20F2FA030](v46, -1, -1);
      }

      v47 = MEMORY[0x277D84F90];
    }

    else
    {
      rawValue = visibleItemDescriptors._rawValue;
      v47 = sub_20C3B1824(visibleItemDescriptors._rawValue, v42);
    }

    *&v10[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_items] = v47;

    if (*(*&v10[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_items] + 16))
    {
      v48 = swift_allocObject();
      *(v48 + 16) = v10;
      *(v48 + 24) = rawValue;
      *(v48 + 32) = v60;
      *(v48 + 33) = animated;
      *(v48 + 40) = v55;
      *(v48 + 48) = v56;
      *(v48 + 49) = v54;
      *(swift_allocObject() + 16) = v10;
      if (animated)
      {
        sub_20C38BD08(0, &qword_27C7AD6D0);
        v49 = v10;

        sub_20C3E900C();
      }

      else
      {
        v52 = v10;

        sub_20C3ABB64(v52, rawValue, v60, 0, v55, v56, v54);

        v52[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_isAnimating] = 0;
      }
    }

    else
    {
      v50 = &v10[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectedIndex];
      swift_beginAccess();
      *v50 = 0;
      v50[8] = 1;
      [*&v10[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView] setHidden_];
      v51 = &v10[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_highlightedIndex];
      swift_beginAccess();
      *v51 = 0;
      v51[8] = 1;
      LOBYTE(v62) = v60;
      sub_20C3AE818(MEMORY[0x277D84F90], &v62, animated);
    }
  }

  else
  {
    if (qword_2810F2210 != -1)
    {
      swift_once();
    }

    v35 = sub_20C3E812C();
    __swift_project_value_buffer(v35, qword_2810F3B00);
    v36 = sub_20C3E810C();
    v37 = sub_20C3E8F3C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134218240;
      *(v38 + 4) = v23;
      *(v38 + 12) = 2048;
      *(v38 + 14) = width;
      _os_log_impl(&dword_20C38A000, v36, v37, "[FloatingTabBarContentView] Bounds width (%f) does not match expected width (%f). Deferring item creation until next layout pass", v38, 0x16u);
      MEMORY[0x20F2FA030](v38, -1, -1);
    }

    v10[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_isPendingLayout] = 1;
    sub_20C3A6634();
    swift_allocError();
    *v39 = 3;
    swift_willThrow();
  }
}

void sub_20C3B0A38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_20C3AE488(a2, a3, a4);
  [a2 setSelected_];
  [a2 setHighlighted_];
  v6 = *(a1 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView);
  v11[0] = 0x3FF0000000000000;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0x3FF0000000000000;
  v11[4] = 0;
  v11[5] = 0;
  [v6 setTransform_];
  v7 = a1 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 8))(ObjectType, v8);
    swift_unknownObjectRelease();
    [v10 layoutIfNeeded];
  }
}

void sub_20C3B0B38(char a1, char a2, uint64_t a3)
{
  if (qword_2810F2210 != -1)
  {
    swift_once();
  }

  v6 = sub_20C3E812C();
  __swift_project_value_buffer(v6, qword_2810F3B00);
  oslog = sub_20C3E810C();
  v7 = sub_20C3E8F3C();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218496;
    *(v8 + 4) = a3;
    *(v8 + 12) = 1024;
    *(v8 + 14) = a1 & 1;
    *(v8 + 18) = 1024;
    *(v8 + 20) = a2 & 1;
    _os_log_impl(&dword_20C38A000, oslog, v7, "[FloatingTabBarContentView] Finished selecting item %ld: %{BOOL}d. Retargeted: %{BOOL}d", v8, 0x18u);
    MEMORY[0x20F2FA030](v8, -1, -1);
  }
}

uint64_t sub_20C3B0C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t (*sub_20C3B0CC4(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20C39B0E8;
}

uint64_t sub_20C3B0D7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3 + *a3;
  swift_beginAccess();
  return *v4;
}

void *sub_20C3B0DC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionGestureRecognizer);
  v2 = v1;
  return v1;
}

char *sub_20C3B0F48(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v73[3] = a3;
  v73[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *&a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_highlightedIndex];
  *v8 = 0;
  v8[8] = 1;
  v9 = MEMORY[0x277D84F90];
  *&a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_itemDescriptors] = MEMORY[0x277D84F90];
  v10 = &a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectedIndex];
  *v10 = 0;
  v10[8] = 1;
  v11 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v13 = [objc_allocWithZone(type metadata accessor for FloatingCollectionView()) initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&a2[v11] = v13;
  v14 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionGestureRecognizer;
  type metadata accessor for ContinuousSelectionGestureRecognizer();
  *&a2[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView;
  *&a2[v15] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_currentWidth] = 0;
  *&a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_dataSource] = 0;
  a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_isAnimating] = 0;
  a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_isPendingLayout] = 1;
  *&a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_items] = v9;
  v16 = &a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_pendingSelectedIndex];
  *v16 = 0;
  v16[8] = 1;
  a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionShouldFollowGesture] = 0;
  sub_20C39B064(v73, &a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_layoutProvider]);
  v72.receiver = a2;
  v72.super_class = type metadata accessor for FloatingTabBarContentView();
  v17 = objc_msgSendSuper2(&v72, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = objc_allocWithZone(type metadata accessor for FloatingLayout());
  aBlock[4] = sub_20C39B0C8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C3C2298;
  aBlock[3] = &block_descriptor_79;
  v20 = _Block_copy(aBlock);
  v21 = v17;

  v69 = [v19 initWithSectionProvider_];
  _Block_release(v20);

  v22 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView;
  v23 = *&v21[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD770));
  v25 = v21;
  v26 = v23;
  v27 = sub_20C3E824C();
  v28 = *&v25[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_dataSource];
  *&v25[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_dataSource] = v27;

  v29 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView;
  v30 = *&v25[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 systemFillColor];
  [v32 setBackgroundColor_];

  v34 = [*&v25[v29] layer];
  [v34 setCornerRadius_];

  v35 = *&v25[v29];
  v36 = v25;
  [v36 addSubview_];
  v37 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionGestureRecognizer;
  [*&v36[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionGestureRecognizer] addTarget:v36 action:sel_handleSelectionGesture_];
  [*&v36[v37] setCancelsTouchesInView_];
  *(*&v36[v37] + OBJC_IVAR____TtC13FitnessCoreUI36ContinuousSelectionGestureRecognizer_dragCoordinator + 8) = &off_28235F740;
  swift_unknownObjectWeakAssign();
  [*&v36[v37] setDelegate_];
  v38 = *&v21[v22];
  v39 = [v31 clearColor];
  [v38 setBackgroundColor_];

  [*&v21[v22] setCollectionViewLayout_];
  [*&v21[v22] setAccessibilityContainerType_];
  v40 = *MEMORY[0x277D765C0];
  v41 = *&v21[v22];
  v42 = [v41 accessibilityTraits];
  if ((v40 & ~v42) != 0)
  {
    v43 = v40;
  }

  else
  {
    v43 = 0;
  }

  [v41 setAccessibilityTraits_];

  [*&v21[v22] setIsAccessibilityElement_];
  [*&v21[v22] setAllowsMultipleSelection_];
  [*&v21[v22] setAllowsSelection_];
  [*&v21[v22] setScrollEnabled_];
  [*&v21[v22] setTranslatesAutoresizingMaskIntoConstraints_];
  v44 = *&v21[v22];
  type metadata accessor for TabItemCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = v44;
  v47 = sub_20C3E8BFC();
  [v46 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v47];

  v48 = *&v21[v22];
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = v48;

  v51 = &v50[OBJC_IVAR____TtC13FitnessCoreUI22FloatingCollectionView_onLayoutUpdate];
  swift_beginAccess();
  v52 = *v51;
  *v51 = sub_20C39B0E0;
  v51[1] = v49;

  sub_20C38F958(v52);

  [v36 addSubview_];
  v53 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD8A0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_20C3EBA10;
  v55 = [*&v21[v22] leadingAnchor];
  v56 = [v36 leadingAnchor];

  v57 = [v55 constraintEqualToAnchor_];
  *(v54 + 32) = v57;
  v58 = [*&v21[v22] trailingAnchor];
  v59 = [v36 trailingAnchor];

  v60 = [v58 constraintEqualToAnchor_];
  *(v54 + 40) = v60;
  v61 = [*&v21[v22] topAnchor];
  v62 = [v36 topAnchor];

  v63 = [v61 constraintEqualToAnchor_];
  *(v54 + 48) = v63;
  v64 = [*&v21[v22] bottomAnchor];
  v65 = [v36 bottomAnchor];

  v66 = [v64 constraintEqualToAnchor_];
  *(v54 + 56) = v66;
  sub_20C38BD08(0, &qword_2810F2100);
  v67 = sub_20C3E8D9C();

  [v53 activateConstraints_];

  __swift_destroy_boxed_opaque_existential_1(v73);
  return v36;
}

uint64_t sub_20C3B1824(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v73 = MEMORY[0x277D84F90];
  sub_20C3BA1B0(0, v2, 0);
  v6 = a1 + 32;
  v3 = v73;
  sub_20C3E8E3C();
  v7 = 0;
  v34 = *(a2 + 16);
  v33 = a2 + 32;
  v32 = v2 - 1;
  while (1)
  {
    v8 = *(v6 + 16);
    v9 = v8;
    v49[0] = *v6;
    v49[1] = v8;
    v10 = *(v6 + 48);
    v50 = *(v6 + 32);
    v51 = v10;
    v67 = v8;
    v66 = v49[0];
    v68 = v50;
    v11 = *(v6 + 80);
    v13 = *(v6 + 32);
    v12 = *(v6 + 48);
    v70 = *(v6 + 64);
    v69 = v10;
    v52 = v70;
    v53 = v11;
    v54 = *(v6 + 96);
    v71 = v11;
    v72 = v54;
    v14 = *(v6 + 80);
    v56 = *(v6 + 64);
    v57 = v14;
    v58 = *(v6 + 96);
    v55[0] = v49[0];
    v55[1] = v9;
    v55[2] = v13;
    v55[3] = v12;
    *v61 = v9;
    v60 = v49[0];
    *&v61[16] = v13;
    v62 = v56;
    *&v61[32] = v12;
    v63 = v14;
    v64 = v58;
    v59 = v7;
    v65 = v7;
    sub_20C39AF38(v49, &v44);
    sub_20C39AF38(v55, &v44);
    sub_20C3A36B4(&v65, &qword_27C7AD590);
    v15 = v59;
    sub_20C3E8E2C();
    sub_20C3E8E1C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v16 = BYTE2(v62);
    if (BYTE2(v62) == 2)
    {
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v17 = *(&v62 + 1);
      v18 = v63;

      if (v16 == 1)
      {
        v20 = 0;
        v21 = 0;
        goto LABEL_10;
      }
    }

    v20 = *(&v63 + 1);
    v21 = v64;

LABEL_10:
    if (v15 >= v34)
    {
      break;
    }

    v38 = v20;
    v39 = v18;
    v22 = v60;
    v23 = *v61;
    v24 = *&v61[40];
    v35 = BYTE1(v62);
    v25 = (v33 + (v15 << 6));
    v40 = *v25;
    v41 = v25[1];
    v36 = *&v61[24];
    v37 = *&v61[8];
    v42 = v25[2];
    v43 = v25[3];

    sub_20C3A36B4(&v59, &qword_27C7AD590);
    *&v48[7] = v40;
    *&v48[23] = v41;
    *&v48[39] = v42;
    *&v48[55] = v43;
    *&v47[15] = *(&v43 + 1);
    v46 = *&v48[32];
    *v47 = *&v48[48];
    v44 = *v48;
    v45 = *&v48[16];
    v73 = v3;
    v27 = *(v3 + 16);
    v26 = *(v3 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_20C3BA1B0((v26 > 1), v27 + 1, 1);
      v3 = v73;
    }

    *(v3 + 16) = v27 + 1;
    v28 = v3 + 168 * v27;
    *(v28 + 32) = v22;
    *(v28 + 48) = v23;
    *(v28 + 56) = v37;
    *(v28 + 72) = v36;
    *(v28 + 88) = v24;
    *(v28 + 96) = v35;
    *(v28 + 97) = v44;
    v29 = v45;
    v30 = v46;
    v31 = *v47;
    *(v28 + 160) = *&v47[15];
    *(v28 + 145) = v31;
    *(v28 + 129) = v30;
    *(v28 + 113) = v29;
    *(v28 + 168) = v17;
    *(v28 + 176) = v39;
    *(v28 + 184) = v38;
    *(v28 + 192) = v21;
    if (v32 == v7)
    {
      return v3;
    }

    v6 += 104;
    ++v7;
  }

  __break(1u);
  return result;
}

char *sub_20C3B1BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for FloatingTabBarContentView());
  (*(v7 + 16))(v9, a1, a3);
  return sub_20C3B0F48(v9, v10, a3, a4);
}

void sub_20C3B1CC8()
{
  v1 = *(sub_20C3E809C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_20C3B0A38(v3, v4, v0 + v2, v5);
}

uint64_t keypath_get_13Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

void sub_20C3B1F90()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_20C3ADF18(v1);
  sub_20C3AE1AC(v1, 0, v2, v3);
}

uint64_t sub_20C3B1FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD750);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C3B2058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20C3B20C8()
{
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_highlightedIndex;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_itemDescriptors) = MEMORY[0x277D84F90];
  v3 = v0 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectedIndex;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v6 = [objc_allocWithZone(type metadata accessor for FloatingCollectionView()) initWithFrame:v5 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *(v0 + v4) = v6;
  v7 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionGestureRecognizer;
  type metadata accessor for ContinuousSelectionGestureRecognizer();
  *(v0 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_currentWidth) = 0;
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_isPendingLayout) = 1;
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_items) = v2;
  v9 = v0 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_pendingSelectedIndex;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionShouldFollowGesture) = 0;
  sub_20C3E921C();
  __break(1u);
}

unint64_t sub_20C3B2288()
{
  result = qword_2810F2350;
  if (!qword_2810F2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F2350);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_20C3B24D0(uint64_t a1)
{
  v2 = sub_20C3B2B98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3B250C(uint64_t a1)
{
  v2 = sub_20C3B2B98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3B2548()
{
  v1 = 0x676E696461656CLL;
  if (*v0 != 1)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265746E6563;
  }
}

uint64_t sub_20C3B25A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C3B56E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C3B25C8(uint64_t a1)
{
  v2 = sub_20C3B2A9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3B2604(uint64_t a1)
{
  v2 = sub_20C3B2A9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3B2640(uint64_t a1)
{
  v2 = sub_20C3B2B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3B267C(uint64_t a1)
{
  v2 = sub_20C3B2B44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3B26B8(uint64_t a1)
{
  v2 = sub_20C3B2AF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3B26F4(uint64_t a1)
{
  v2 = sub_20C3B2AF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TabItemCell.Position.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD7E0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD7E8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD7F0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD7F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3B2A9C();
  sub_20C3E952C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_20C3B2B44();
      v9 = v21;
      sub_20C3E934C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_20C3B2AF0();
      v9 = v24;
      sub_20C3E934C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_20C3B2B98();
    sub_20C3E934C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_20C3B2A9C()
{
  result = qword_27C7AD800;
  if (!qword_27C7AD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD800);
  }

  return result;
}

unint64_t sub_20C3B2AF0()
{
  result = qword_27C7AD808;
  if (!qword_27C7AD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD808);
  }

  return result;
}

unint64_t sub_20C3B2B44()
{
  result = qword_27C7AD810;
  if (!qword_27C7AD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD810);
  }

  return result;
}

unint64_t sub_20C3B2B98()
{
  result = qword_27C7AD818;
  if (!qword_27C7AD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD818);
  }

  return result;
}

uint64_t TabItemCell.Position.hashValue.getter()
{
  v1 = *v0;
  sub_20C3E94BC();
  MEMORY[0x20F2F98F0](v1);
  return sub_20C3E950C();
}

uint64_t TabItemCell.Position.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD820);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD828);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD830);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD838);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_20C3B2A9C();
  v15 = v36;
  sub_20C3E951C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_20C3E932C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_20C3A11D0();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_20C3E915C();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD840);
      *v24 = &type metadata for TabItemCell.Position;
      sub_20C3E92CC();
      sub_20C3E914C();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_20C3B2B44();
          sub_20C3E92BC();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_20C3B2AF0();
          v26 = v17;
          sub_20C3E92BC();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_20C3B2B98();
        sub_20C3E92BC();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

id sub_20C3B334C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for TabItemCell();
  v6 = objc_msgSendSuper2(&v8, *a4);

  return v6;
}

id TabItemCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *TabItemCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentLayoutGuide;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v10 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_imageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v11 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_stackView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v12 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_titleLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v13 = &v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem];
  sub_20C3B4FDC(v78);
  v14 = v78[7];
  v15 = v78[9];
  *(v13 + 8) = v78[8];
  *(v13 + 9) = v15;
  *(v13 + 20) = v79;
  v16 = v78[5];
  *(v13 + 4) = v78[4];
  *(v13 + 5) = v16;
  *(v13 + 6) = v78[6];
  *(v13 + 7) = v14;
  v17 = v78[1];
  *v13 = v78[0];
  *(v13 + 1) = v17;
  v18 = v78[3];
  *(v13 + 2) = v78[2];
  *(v13 + 3) = v18;
  v19 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentCenterXConstraint;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v20 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentLeadingConstraint;
  *&v4[v20] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v21 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentTrailingConstraint;
  *&v4[v21] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v22 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentWidthConstraint;
  *&v4[v22] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v23 = &v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItemCount];
  *v23 = 0;
  v23[8] = 1;
  v77.receiver = v4;
  v77.super_class = type metadata accessor for TabItemCell();
  v24 = objc_msgSendSuper2(&v77, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = *MEMORY[0x277D76548];
  v26 = v24;
  v27 = [v26 accessibilityTraits];
  if ((v25 & ~v27) != 0)
  {
    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  [v26 setAccessibilityTraits_];
  [v26 setIsAccessibilityElement_];
  v29 = *MEMORY[0x277D76838];
  [v26 setMaximumContentSizeCategory_];
  v30 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_stackView;
  [*&v26[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_stackView] setAxis_];
  [*&v26[v30] setDistribution_];
  [*&v26[v30] setSpacing_];
  [*&v26[v30] setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = [v26 contentView];
  [v31 addSubview_];

  v32 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_imageView;
  [*&v26[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_imageView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v26[v32] setContentMode_];
  [*&v26[v32] setMaximumContentSizeCategory_];
  [*&v26[v30] addArrangedSubview_];
  v33 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_titleLabel;
  [*&v26[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_titleLabel] setNumberOfLines_];
  [*&v26[v33] setMaximumContentSizeCategory_];
  [*&v26[v33] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v26[v30] addArrangedSubview_];
  v34 = [v26 contentView];
  v35 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentLayoutGuide;
  [v34 addLayoutGuide_];

  v36 = [*&v26[v35] centerXAnchor];
  v37 = [v26 contentView];
  v38 = [v37 0x277DA0FD2];

  v39 = [v36 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20C3B5688();
  sub_20C3E813C();
  LODWORD(v40) = v76;
  [v39 setPriority_];
  v41 = *&v26[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentCenterXConstraint];
  *&v26[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentCenterXConstraint] = v39;

  v42 = [*&v26[v35] leadingAnchor];
  v43 = [v26 contentView];
  v44 = [v43 &selRef_traitCollection + 1];

  v45 = [v42 constraintEqualToAnchor_];
  sub_20C3E813C();
  LODWORD(v46) = v76;
  [v45 setPriority_];
  v47 = *&v26[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentLeadingConstraint];
  *&v26[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentLeadingConstraint] = v45;

  v48 = [*&v26[v35] trailingAnchor];
  v49 = [v26 &selRef_setAlwaysBounceVertical_];
  v50 = [v49 &selRef_isEnabled + 4];

  v51 = [v48 constraintEqualToAnchor_];
  sub_20C3E813C();
  LODWORD(v52) = v76;
  [v51 setPriority_];
  v53 = *&v26[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentTrailingConstraint];
  *&v26[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentTrailingConstraint] = v51;

  v54 = [*&v26[v35] widthAnchor];
  v55 = [v54 constraintEqualToConstant_];

  v56 = *&v26[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentWidthConstraint];
  *&v26[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentWidthConstraint] = v55;

  v57 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD8A0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_20C3EBA10;
  v59 = [*&v26[v30] centerXAnchor];
  v60 = [*&v26[v35] centerXAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v58 + 32) = v61;
  v62 = [*&v26[v30] leadingAnchor];
  v63 = [v26 contentView];
  v64 = [v63 leadingAnchor];

  v65 = [v62 constraintGreaterThanOrEqualToAnchor_];
  *(v58 + 40) = v65;
  v66 = [*&v26[v30] &selRef_isEnabled + 4];
  v67 = [v26 contentView];
  v68 = [v67 &selRef_isEnabled + 4];

  v69 = [v66 constraintLessThanOrEqualToAnchor_];
  *(v58 + 48) = v69;
  v70 = [*&v26[v30] centerYAnchor];
  v71 = [v26 contentView];

  v72 = [v71 centerYAnchor];
  v73 = [v70 0x277DA0F65];

  *(v58 + 56) = v73;
  sub_20C38D4A8();
  v74 = sub_20C3E8D9C();

  [v57 activateConstraints_];

  return v26;
}

id TabItemCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_20C3B409C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for TabItemCell();
  objc_msgSendSuper2(&v14, sel_prepareForReuse);
  sub_20C3B4FDC(v15);
  v1 = &v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem];
  v2 = *&v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 144];
  v17[8] = *&v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 128];
  v17[9] = v2;
  v18 = *&v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 160];
  v3 = *&v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 80];
  v17[4] = *&v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 64];
  v17[5] = v3;
  v4 = *&v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 112];
  v17[6] = *&v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 96];
  v17[7] = v4;
  v5 = *&v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 16];
  v17[0] = *&v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem];
  v17[1] = v5;
  v6 = *&v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 48];
  v17[2] = *&v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 32];
  v17[3] = v6;
  v7 = v15[9];
  *(v1 + 8) = v15[8];
  *(v1 + 9) = v7;
  *(v1 + 20) = v16;
  v8 = v15[5];
  *(v1 + 4) = v15[4];
  *(v1 + 5) = v8;
  v9 = v15[7];
  *(v1 + 6) = v15[6];
  *(v1 + 7) = v9;
  v10 = v15[1];
  *v1 = v15[0];
  *(v1 + 1) = v10;
  v11 = v15[3];
  *(v1 + 2) = v15[2];
  *(v1 + 3) = v11;
  sub_20C3A36B4(v17, &qword_27C7AD8B0);
  v12 = &v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItemCount];
  *v12 = 0;
  v12[8] = 1;
  [*&v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_imageView] setImage_];
  return [*&v0[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_titleLabel] setText_];
}

id sub_20C3B4284(__int128 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1[7];
  v7 = a1[9];
  v109 = a1[8];
  v110 = v7;
  v8 = a1[3];
  v9 = a1[5];
  v105 = a1[4];
  v106 = v9;
  v10 = a1[5];
  v11 = a1[7];
  v107 = a1[6];
  v108 = v11;
  v12 = a1[1];
  v101 = *a1;
  v102 = v12;
  v13 = a1[3];
  v15 = *a1;
  v14 = a1[1];
  v103 = a1[2];
  v104 = v13;
  v16 = &v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem];
  v17 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 144];
  v120 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 128];
  v121 = v17;
  v18 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 80];
  v116 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 64];
  v117 = v18;
  v19 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 112];
  v118 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 96];
  v119 = v19;
  v20 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 16];
  v112 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem];
  v113 = v20;
  v21 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 48];
  v114 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 32];
  v115 = v21;
  v22 = a1[9];
  v131 = v109;
  v132 = v22;
  v127 = v105;
  v128 = v10;
  v129 = v107;
  v130 = v6;
  v123 = v15;
  v124 = v14;
  v111 = *(a1 + 20);
  v23 = *a2;
  v122 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 160];
  v133 = *(a1 + 20);
  v125 = v103;
  v126 = v8;
  CGSizeMake(&v123);
  __src[7] = v119;
  __src[8] = v120;
  __src[9] = v121;
  __src[3] = v115;
  __src[4] = v116;
  __src[5] = v117;
  __src[6] = v118;
  __src[0] = v112;
  __src[1] = v113;
  __src[2] = v114;
  *(&__src[18] + 8) = v131;
  *(&__src[19] + 8) = v132;
  *(&__src[16] + 8) = v129;
  *(&__src[17] + 8) = v130;
  *(&__src[13] + 8) = v126;
  *(&__src[14] + 8) = v127;
  *(&__src[15] + 8) = v128;
  *(&__src[10] + 8) = v123;
  *(&__src[11] + 8) = v124;
  *(&__src[12] + 8) = v125;
  v134[8] = v120;
  v134[9] = v121;
  v134[4] = v116;
  v134[5] = v117;
  v134[6] = v118;
  v134[7] = v119;
  v134[0] = v112;
  v134[1] = v113;
  *&__src[10] = v122;
  *(&__src[20] + 1) = v133;
  v135 = v122;
  v134[2] = v114;
  v134[3] = v115;
  if (sub_20C3B59C0(v134) == 1)
  {
    __dst[8] = *(&__src[18] + 8);
    __dst[9] = *(&__src[19] + 8);
    *&__dst[10] = *(&__src[20] + 1);
    __dst[4] = *(&__src[14] + 8);
    __dst[5] = *(&__src[15] + 8);
    __dst[6] = *(&__src[16] + 8);
    __dst[7] = *(&__src[17] + 8);
    __dst[0] = *(&__src[10] + 8);
    __dst[1] = *(&__src[11] + 8);
    __dst[2] = *(&__src[12] + 8);
    __dst[3] = *(&__src[13] + 8);
    if (sub_20C3B59C0(__dst) == 1)
    {
      v96 = __src[7];
      v97 = __src[8];
      v98 = __src[9];
      v92 = __src[3];
      v93 = __src[4];
      v94 = __src[5];
      v95 = __src[6];
      v89 = __src[0];
      v90 = __src[1];
      v99 = *&__src[10];
      v91 = __src[2];
      sub_20C39BDF4(&v101, &v77);
      sub_20C3B59D8(&v112, &v77);
      return sub_20C3A36B4(&v89, &qword_27C7AD8B0);
    }

    sub_20C39BDF4(&v101, &v89);
    sub_20C39BDF4(&v101, &v89);
    sub_20C3B59D8(&v112, &v89);
    goto LABEL_7;
  }

  v96 = __src[7];
  v97 = __src[8];
  v98 = __src[9];
  v92 = __src[3];
  v93 = __src[4];
  v94 = __src[5];
  v95 = __src[6];
  v89 = __src[0];
  v90 = __src[1];
  v91 = __src[2];
  v85 = __src[8];
  v86 = __src[9];
  v81 = __src[4];
  v82 = __src[5];
  v83 = __src[6];
  v84 = __src[7];
  v77 = __src[0];
  v78 = __src[1];
  v99 = *&__src[10];
  v87 = *&__src[10];
  v79 = __src[2];
  v80 = __src[3];
  __dst[8] = *(&__src[18] + 8);
  __dst[9] = *(&__src[19] + 8);
  *&__dst[10] = *(&__src[20] + 1);
  __dst[4] = *(&__src[14] + 8);
  __dst[5] = *(&__src[15] + 8);
  __dst[6] = *(&__src[16] + 8);
  __dst[7] = *(&__src[17] + 8);
  __dst[0] = *(&__src[10] + 8);
  __dst[1] = *(&__src[11] + 8);
  __dst[2] = *(&__src[12] + 8);
  __dst[3] = *(&__src[13] + 8);
  if (sub_20C3B59C0(__dst) == 1)
  {
    v74 = __src[8];
    v75 = __src[9];
    v76 = *&__src[10];
    v70 = __src[4];
    v71 = __src[5];
    v72 = __src[6];
    v73 = __src[7];
    v66 = __src[0];
    v67 = __src[1];
    v68 = __src[2];
    v69 = __src[3];
    sub_20C39BDF4(&v101, v64);
    sub_20C39BDF4(&v101, v64);
    sub_20C3B59D8(&v112, v64);
    sub_20C3B59D8(&v89, v64);
    sub_20C39BE2C(&v66);
LABEL_7:
    memcpy(__dst, __src, sizeof(__dst));
    sub_20C3A36B4(__dst, &qword_27C7AD8B8);
    goto LABEL_8;
  }

  v59 = *(&__src[18] + 8);
  v60 = *(&__src[19] + 8);
  v61 = *(&__src[20] + 1);
  v55 = *(&__src[14] + 8);
  v56 = *(&__src[15] + 8);
  v57 = *(&__src[16] + 8);
  v58 = *(&__src[17] + 8);
  v51 = *(&__src[10] + 8);
  v52 = *(&__src[11] + 8);
  v53 = *(&__src[12] + 8);
  v54 = *(&__src[13] + 8);
  v40 = _s13FitnessCoreUI7TabItemV2eeoiySbAC_ACtFZ_0(&v77, &v51);
  v62[8] = v59;
  v62[9] = v60;
  v63 = v61;
  v62[4] = v55;
  v62[5] = v56;
  v62[6] = v57;
  v62[7] = v58;
  v62[0] = v51;
  v62[1] = v52;
  v62[2] = v53;
  v62[3] = v54;
  sub_20C39BDF4(&v101, v50);
  sub_20C39BDF4(&v101, v50);
  sub_20C3B59D8(&v112, v50);
  sub_20C3B59D8(&v89, v50);
  sub_20C39BE2C(v62);
  v64[8] = v85;
  v64[9] = v86;
  v65 = v87;
  v64[4] = v81;
  v64[5] = v82;
  v64[6] = v83;
  v64[7] = v84;
  v64[0] = v77;
  v64[1] = v78;
  v64[2] = v79;
  v64[3] = v80;
  sub_20C39BE2C(v64);
  v74 = __src[8];
  v75 = __src[9];
  v76 = *&__src[10];
  v70 = __src[4];
  v71 = __src[5];
  v72 = __src[6];
  v73 = __src[7];
  v66 = __src[0];
  v67 = __src[1];
  v68 = __src[2];
  v69 = __src[3];
  sub_20C3A36B4(&v66, &qword_27C7AD8B0);
  if (v40)
  {
    return sub_20C39BE2C(&v101);
  }

LABEL_8:
  v25 = *(v16 + 9);
  __src[8] = *(v16 + 8);
  __src[9] = v25;
  *&__src[10] = *(v16 + 20);
  v26 = *(v16 + 5);
  __src[4] = *(v16 + 4);
  __src[5] = v26;
  v27 = *(v16 + 7);
  __src[6] = *(v16 + 6);
  __src[7] = v27;
  v28 = *(v16 + 1);
  __src[0] = *v16;
  __src[1] = v28;
  v29 = *(v16 + 3);
  __src[2] = *(v16 + 2);
  __src[3] = v29;
  v30 = v132;
  *(v16 + 8) = v131;
  *(v16 + 9) = v30;
  *(v16 + 20) = v133;
  v31 = v128;
  *(v16 + 4) = v127;
  *(v16 + 5) = v31;
  v32 = v130;
  *(v16 + 6) = v129;
  *(v16 + 7) = v32;
  v33 = v124;
  *v16 = v123;
  *(v16 + 1) = v33;
  v34 = v126;
  *(v16 + 2) = v125;
  *(v16 + 3) = v34;
  sub_20C3A36B4(__src, &qword_27C7AD8B0);
  v35 = &v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItemCount];
  *v35 = a3;
  v35[8] = 0;
  if (v23)
  {
    [*&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentCenterXConstraint] setActive_];
    if (v23 == 1)
    {
      [*&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentTrailingConstraint] setActive_];
      v36 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentLeadingConstraint;
      v37 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentLeadingConstraint];
      v38 = *(&v106 + 1);
      v39 = *&v108;
    }

    else
    {
      [*&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentLeadingConstraint] setActive_];
      v36 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentTrailingConstraint;
      v37 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentTrailingConstraint];
      v38 = *(&v106 + 1);
      v39 = -*&v109;
    }

    [v37 setConstant_];
    [*&v4[v36] setActive_];
    v41 = &v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentWidthConstraint];
    [*&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentWidthConstraint] setConstant_];
  }

  else
  {
    [*&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentLeadingConstraint] setActive_];
    [*&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentTrailingConstraint] setActive_];
    [*&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentCenterXConstraint] setActive_];
    v41 = &v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentWidthConstraint];
    [*&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentWidthConstraint] setConstant_];
  }

  [*v41 setActive_];
  if (v110)
  {
    sub_20C3B51AC(*(&v109 + 1), v110, *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_imageView]);
  }

  v42 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_imageView];
  v43 = [v42 image];
  v44 = v43;
  if (v43)
  {
  }

  [v42 setHidden_];
  v45 = *&v4[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_titleLabel];
  [v45 setIsAccessibilityElement_];
  v46 = v111;
  [v45 setHidden_];
  if (v46)
  {
    v47 = sub_20C3E8BFC();
  }

  else
  {
    v47 = 0;
  }

  [v45 setText_];

  if (*(&v102 + 1))
  {
    v48 = sub_20C3E8BFC();
  }

  else
  {
    v48 = 0;
  }

  [v4 setAccessibilityLabel_];

  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_20C3E90FC();

  *&__dst[0] = 0x2E7373656E746946;
  *(&__dst[0] + 1) = 0xEF2E726142626174;
  MEMORY[0x20F2F90D0](v101, *(&v101 + 1));
  v49 = sub_20C3E8BFC();

  [v4 setAccessibilityIdentifier_];

  sub_20C3B4B38([v4 isSelected]);
  return [v4 setNeedsUpdateConstraints];
}

void sub_20C3B4B38(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 112];
  v4 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 144];
  v60 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 128];
  v61 = v4;
  v5 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 48];
  v6 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 80];
  v56 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 64];
  v57 = v6;
  v7 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 80];
  v8 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 112];
  v58 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 96];
  v59 = v8;
  v9 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 16];
  v52 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem];
  v53 = v9;
  v10 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 48];
  v12 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem];
  v11 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 16];
  v54 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 32];
  v55 = v10;
  v13 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 144];
  v64 = v60;
  v65 = v13;
  v63[4] = v56;
  v63[5] = v7;
  v63[6] = v58;
  v63[7] = v3;
  v63[0] = v12;
  v63[1] = v11;
  v62 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 160];
  v66 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem + 160];
  v63[2] = v54;
  v63[3] = v5;
  if (sub_20C3B59C0(v63) != 1)
  {
    if (a1)
    {
      v14 = *MEMORY[0x277D76598];
      v49 = v60;
      v50 = v61;
      v51 = v62;
      v45 = v56;
      v46 = v57;
      v47 = v58;
      v48 = v59;
      v41 = v52;
      v42 = v53;
      v43 = v54;
      v44 = v55;
      sub_20C39BDF4(&v41, v40);
      v15 = [v1 accessibilityTraits];
      if ((v14 & ~v15) != 0)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      [v1 setAccessibilityTraits_];
      v17 = v65;
      if (v65)
      {
        v18 = *(&v64 + 1);

        sub_20C3A36B4(&v52, &qword_27C7AD8B0);
        sub_20C3B4FFC(v18, v17, *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_imageView]);
      }

      else
      {
        sub_20C3A36B4(&v52, &qword_27C7AD8B0);
      }

      v24 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_titleLabel];
      v25 = [objc_opt_self() labelColor];
      [v24 setTextColor_];

      v26 = objc_opt_self();
      v27 = *MEMORY[0x277D76988];
      v28 = [v1 traitCollection];
      MEMORY[0x28223BE20](v28);
      v29 = sub_20C3E8F7C();

      v30 = [v26 preferredFontForTextStyle:v27 compatibleWithTraitCollection:v29];
      [v24 setFont_];
    }

    else
    {
      v19 = *MEMORY[0x277D76598];
      v49 = v60;
      v50 = v61;
      v51 = v62;
      v45 = v56;
      v46 = v57;
      v47 = v58;
      v48 = v59;
      v41 = v52;
      v42 = v53;
      v43 = v54;
      v44 = v55;
      sub_20C39BDF4(&v41, v40);
      v20 = [v1 accessibilityTraits];
      v21 = -1;
      if ((v20 & v19) != 0)
      {
        v21 = ~v19;
      }

      [v1 setAccessibilityTraits_];
      v22 = v65;
      if (v65)
      {
        v23 = *(&v64 + 1);

        sub_20C3A36B4(&v52, &qword_27C7AD8B0);
        sub_20C3B51AC(v23, v22, *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_imageView]);
      }

      else
      {
        sub_20C3A36B4(&v52, &qword_27C7AD8B0);
      }

      v31 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_titleLabel];
      v32 = [objc_opt_self() secondaryLabelColor];
      [v31 setTextColor_];

      v33 = objc_opt_self();
      v34 = *MEMORY[0x277D76918];
      v35 = *MEMORY[0x277D74410];
      v36 = *MEMORY[0x277D76838];
      v37 = *MEMORY[0x277D74358];
      v38 = [v1 traitCollection];
      v39 = [v33 _preferredFontForTextStyle_design_variant_weight_maximumContentSizeCategory_compatibleWithTraitCollection_];

      [v31 setFont_];
    }
  }
}

double sub_20C3B4FDC(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_20C3B4FFC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D76988];
  v7 = [v3 traitCollection];
  v8 = sub_20C3E8F7C();

  v9 = [v5 preferredFontForTextStyle:v6 compatibleWithTraitCollection:v8];
  v10 = [objc_opt_self() configurationWithFont:v9 scale:2];

  v11 = v10;
  v12 = sub_20C3E8BFC();
  v13 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [a3 setImage_];
  v14 = [objc_opt_self() labelColor];
  [a3 setTintColor_];
}

void sub_20C3B51AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D76918];
  v7 = *MEMORY[0x277D74410];
  v8 = *MEMORY[0x277D76838];
  v9 = *MEMORY[0x277D74358];
  v10 = [v3 traitCollection];
  v11 = [v5 _preferredFontForTextStyle_design_variant_weight_maximumContentSizeCategory_compatibleWithTraitCollection_];

  if (v11)
  {
    v12 = [objc_opt_self() configurationWithFont:v11 scale:2];

    v13 = v12;
    v14 = sub_20C3E8BFC();
    v15 = [objc_opt_self() _systemImageNamed_withConfiguration_];

    [a3 setImage_];
    v16 = [objc_opt_self() secondaryLabelColor];
    [a3 setTintColor_];
  }

  else
  {
    __break(1u);
  }
}

id TabItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_NSRange __swiftcall TabItemCell.accessibilityColumnRange()()
{
  v0 = sub_20C3E801C();
  v1 = 0;
  result.length = v1;
  result.location = v0;
  return result;
}

_NSRange __swiftcall TabItemCell.accessibilityRowRange()()
{
  v1 = (v0 + OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItemCount);
  if ((*(v0 + OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItemCount + 8) & 1) != 0 || (v2 = *v1, *v1 <= 0))
  {
    v2 = 10;
    v3 = sub_20C3E801C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v2;
  result.length = v4;
  result.location = v3;
  return result;
}

unint64_t sub_20C3B5688()
{
  result = qword_2810F2118;
  if (!qword_2810F2118)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F2118);
  }

  return result;
}

uint64_t sub_20C3B56E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746E6563 && a2 == 0xE600000000000000;
  if (v4 || (sub_20C3E93EC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C3E93EC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void _s13FitnessCoreUI11TabItemCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentLayoutGuide;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v2 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_imageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v3 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_stackView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v4 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_titleLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = v0 + OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItem;
  sub_20C3B4FDC(v16);
  v6 = v16[9];
  *(v5 + 128) = v16[8];
  *(v5 + 144) = v6;
  *(v5 + 160) = v17;
  v7 = v16[5];
  *(v5 + 64) = v16[4];
  *(v5 + 80) = v7;
  v8 = v16[7];
  *(v5 + 96) = v16[6];
  *(v5 + 112) = v8;
  v9 = v16[1];
  *v5 = v16[0];
  *(v5 + 16) = v9;
  v10 = v16[3];
  *(v5 + 32) = v16[2];
  *(v5 + 48) = v10;
  v11 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentCenterXConstraint;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v12 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentLeadingConstraint;
  *(v0 + v12) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v13 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentTrailingConstraint;
  *(v0 + v13) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v14 = OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_contentWidthConstraint;
  *(v0 + v14) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v15 = v0 + OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItemCount;
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_20C3E921C();
  __break(1u);
}

uint64_t sub_20C3B59C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20C3B59D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD8B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C3B5A4C()
{
  result = qword_27C7AD8C0;
  if (!qword_27C7AD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD8C0);
  }

  return result;
}

unint64_t sub_20C3B5B48()
{
  result = qword_27C7AD930;
  if (!qword_27C7AD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD930);
  }

  return result;
}

unint64_t sub_20C3B5BA0()
{
  result = qword_27C7AD938;
  if (!qword_27C7AD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD938);
  }

  return result;
}

unint64_t sub_20C3B5BF8()
{
  result = qword_27C7AD940;
  if (!qword_27C7AD940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD940);
  }

  return result;
}

unint64_t sub_20C3B5C50()
{
  result = qword_27C7AD948;
  if (!qword_27C7AD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD948);
  }

  return result;
}

unint64_t sub_20C3B5CA8()
{
  result = qword_27C7AD950;
  if (!qword_27C7AD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD950);
  }

  return result;
}

unint64_t sub_20C3B5D00()
{
  result = qword_27C7AD958;
  if (!qword_27C7AD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD958);
  }

  return result;
}

unint64_t sub_20C3B5D58()
{
  result = qword_27C7AD960;
  if (!qword_27C7AD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD960);
  }

  return result;
}

unint64_t sub_20C3B5DB0()
{
  result = qword_27C7AD968;
  if (!qword_27C7AD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD968);
  }

  return result;
}

unint64_t sub_20C3B5E08()
{
  result = qword_27C7AD970;
  if (!qword_27C7AD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD970);
  }

  return result;
}

uint64_t TabItemDescriptor.accessibilityIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TabItemDescriptor.accessibilityLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TabItemDescriptor.accessibilityValue.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TabItemDescriptor.accessibilityHint.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TabItemDescriptor.systemImageName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t TabItemDescriptor.title.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

void __swiftcall TabItemDescriptor.init(accessibilityIdentifier:accessibilityLabel:accessibilityValue:accessibilityHint:isHidden:kind:preferredStyle:systemImageName:title:)(FitnessCoreUI::TabItemDescriptor *__return_ptr retstr, Swift::String accessibilityIdentifier, Swift::String_optional accessibilityLabel, Swift::String_optional accessibilityValue, Swift::String_optional accessibilityHint, Swift::Bool isHidden, FitnessCoreUI::TabItemKind kind, FitnessCoreUI::TabItemStyle preferredStyle, Swift::String_optional systemImageName, Swift::String title)
{
  v10 = *systemImageName.value._countAndFlagsBits;
  retstr->accessibilityIdentifier = accessibilityIdentifier;
  retstr->accessibilityLabel = accessibilityLabel;
  retstr->accessibilityValue = accessibilityValue;
  retstr->accessibilityHint = accessibilityHint;
  retstr->isHidden = isHidden;
  retstr->kind = v10;
  retstr->preferredStyle = systemImageName.value._object;
  retstr->systemImageName.value = title;
  retstr->title._countAndFlagsBits = v11;
  retstr->title._object = v12;
}

unint64_t sub_20C3B5FEC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000011;
    if (a1 == 2)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000017;
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E65646469487369;
    v2 = 0x6572726566657270;
    v3 = 0x6D496D6574737973;
    if (a1 != 7)
    {
      v3 = 0x656C746974;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    if (a1 != 4)
    {
      v1 = 1684957547;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_20C3B6128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C3B7430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C3B615C(uint64_t a1)
{
  v2 = sub_20C3B64E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3B6198(uint64_t a1)
{
  v2 = sub_20C3B64E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TabItemDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD980);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = *(v1 + 16);
  v23 = *(v1 + 24);
  v24 = v7;
  v8 = *(v1 + 32);
  v21 = *(v1 + 40);
  v22 = v8;
  v9 = *(v1 + 48);
  v19 = *(v1 + 56);
  v20 = v9;
  LODWORD(v9) = *(v1 + 64);
  v17 = *(v1 + 65);
  v18 = v9;
  v16 = *(v1 + 66);
  v10 = *(v1 + 80);
  v15[2] = *(v1 + 72);
  v15[3] = v10;
  v11 = *(v1 + 96);
  v15[0] = *(v1 + 88);
  v15[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3B64E0();
  sub_20C3E952C();
  v36 = 0;
  v12 = v25;
  sub_20C3E936C();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = v17;
  v35 = 1;
  sub_20C3E935C();
  v34 = 2;
  sub_20C3E935C();
  v33 = 3;
  sub_20C3E935C();
  v32 = 4;
  sub_20C3E937C();
  v31 = v13;
  v30 = 5;
  sub_20C39B754();
  sub_20C3E939C();
  v29 = v16;
  v28 = 6;
  sub_20C3B6534();
  sub_20C3E939C();
  v27 = 7;
  sub_20C3E935C();
  v26 = 8;
  sub_20C3E936C();
  return MEMORY[8](v6, v3);
}

unint64_t sub_20C3B64E0()
{
  result = qword_27C7AD988;
  if (!qword_27C7AD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD988);
  }

  return result;
}

unint64_t sub_20C3B6534()
{
  result = qword_27C7AD990;
  if (!qword_27C7AD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD990);
  }

  return result;
}

uint64_t TabItemDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD998);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3B64E0();
  sub_20C3E951C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v53[0]) = 0;
  v10 = sub_20C3E92EC();
  v45 = v11;
  LOBYTE(v53[0]) = 1;
  v12 = sub_20C3E92DC();
  v44 = v13;
  v14 = v12;
  LOBYTE(v53[0]) = 2;
  *&v42 = sub_20C3E92DC();
  *(&v42 + 1) = v15;
  LOBYTE(v53[0]) = 3;
  v39 = sub_20C3E92DC();
  v40 = v14;
  v43 = v16;
  LOBYTE(v53[0]) = 4;
  v17 = sub_20C3E92FC();
  LOBYTE(v46) = 5;
  sub_20C39BD4C();
  sub_20C3E931C();
  v41 = 0;
  v18 = LOBYTE(v53[0]);
  LOBYTE(v46) = 6;
  sub_20C3B6B9C();
  v19 = v41;
  sub_20C3E931C();
  if (v19)
  {
    v41 = v19;
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v64 = v18;
    v20 = LOBYTE(v53[0]);
    LOBYTE(v53[0]) = 7;
    v21 = sub_20C3E92DC();
    v38 = v20;
    v23 = v22;
    v36 = v21;
    v65 = 8;
    v24 = sub_20C3E92EC();
    v37 = v25;
    v41 = 0;
    v26 = v24;
    v27 = v17 & 1;
    v35 = v27;
    (*(v6 + 8))(v8, v5);
    *&v46 = v10;
    v28 = v45;
    *(&v46 + 1) = v45;
    *&v47 = v40;
    *(&v47 + 1) = v44;
    v48 = v42;
    *&v49 = v39;
    *(&v49 + 1) = v43;
    LOBYTE(v50) = v27;
    BYTE1(v50) = v64;
    BYTE2(v50) = v38;
    v29 = v36;
    *(&v50 + 1) = v36;
    *&v51 = v23;
    v30 = v37;
    *(&v51 + 1) = v26;
    v52 = v37;
    *(a2 + 96) = v37;
    v31 = v51;
    *(a2 + 64) = v50;
    *(a2 + 80) = v31;
    v32 = v47;
    *a2 = v46;
    *(a2 + 16) = v32;
    v33 = v49;
    *(a2 + 32) = v48;
    *(a2 + 48) = v33;
    sub_20C39AF38(&v46, v53);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v53[0] = v10;
    v53[1] = v28;
    v53[2] = v40;
    v53[3] = v44;
    v54 = v42;
    v55 = v39;
    v56 = v43;
    v57 = v35;
    v58 = v64;
    v59 = v38;
    v60 = v29;
    v61 = v23;
    v62 = v26;
    v63 = v30;
    return sub_20C39AF94(v53);
  }
}

unint64_t sub_20C3B6B9C()
{
  result = qword_27C7AD9A0;
  if (!qword_27C7AD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD9A0);
  }

  return result;
}

uint64_t TabItemDescriptor.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v4 = *(v0 + 65);
  v5 = *(v0 + 66);
  v6 = *(v0 + 80);
  sub_20C3E8C7C();
  if (v1)
  {
    sub_20C3E94DC();
    sub_20C3E8C7C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_20C3E94DC();
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_20C3E94DC();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_20C3E94DC();
  sub_20C3E8C7C();
  if (v3)
  {
LABEL_4:
    sub_20C3E94DC();
    sub_20C3E8C7C();
    goto LABEL_8;
  }

LABEL_7:
  sub_20C3E94DC();
LABEL_8:
  sub_20C3E94DC();
  MEMORY[0x20F2F98F0](v4);
  MEMORY[0x20F2F98F0](v5);
  sub_20C3E94DC();
  if (v6)
  {
    sub_20C3E8C7C();
  }

  return sub_20C3E8C7C();
}

uint64_t TabItemDescriptor.hashValue.getter()
{
  sub_20C3E94BC();
  TabItemDescriptor.hash(into:)();
  return sub_20C3E950C();
}

uint64_t sub_20C3B6DB0()
{
  sub_20C3E94BC();
  TabItemDescriptor.hash(into:)();
  return sub_20C3E950C();
}

uint64_t sub_20C3B6DF4()
{
  sub_20C3E94BC();
  TabItemDescriptor.hash(into:)();
  return sub_20C3E950C();
}

uint64_t _s13FitnessCoreUI17TabItemDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v23 = *(a1 + 48);
  v6 = *(a1 + 56);
  v29 = *(a1 + 64);
  v27 = *(a1 + 65);
  v25 = *(a1 + 66);
  v21 = *(a1 + 80);
  v15 = *(a1 + 72);
  v16 = *(a1 + 88);
  v18 = *(a1 + 96);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 56);
  v22 = *(a2 + 48);
  v28 = *(a2 + 64);
  v26 = *(a2 + 65);
  v24 = *(a2 + 66);
  v14 = *(a2 + 72);
  v19 = *(a2 + 88);
  v20 = *(a2 + 80);
  v17 = *(a2 + 96);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_20C3E93EC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8 || (v2 != v7 || v4 != v8) && (sub_20C3E93EC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v10 || v5 != v9) && (sub_20C3E93EC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    if (v23 == v22 && v6 == v11)
    {
      result = 0;
      if (v29 != v28)
      {
        return result;
      }

      goto LABEL_28;
    }

    v13 = sub_20C3E93EC();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v11)
    {
      return result;
    }
  }

  if (v29 != v28)
  {
    return result;
  }

LABEL_28:
  if (v27 != v26 || v25 != v24)
  {
    return result;
  }

  if (v21)
  {
    if (v20 && (v15 == v14 && v21 == v20 || (sub_20C3E93EC() & 1) != 0))
    {
      goto LABEL_35;
    }

    return 0;
  }

  if (v20)
  {
    return 0;
  }

LABEL_35:
  if (v16 == v19 && v18 == v17)
  {
    return 1;
  }

  return sub_20C3E93EC();
}

unint64_t sub_20C3B70B8()
{
  result = qword_2810F23F0;
  if (!qword_2810F23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F23F0);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20C3B7138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_20C3B7180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TabItemDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TabItemDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C3B732C()
{
  result = qword_27C7AD9A8;
  if (!qword_27C7AD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD9A8);
  }

  return result;
}

unint64_t sub_20C3B7384()
{
  result = qword_27C7AD9B0;
  if (!qword_27C7AD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD9B0);
  }

  return result;
}

unint64_t sub_20C3B73DC()
{
  result = qword_27C7AD9B8;
  if (!qword_27C7AD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD9B8);
  }

  return result;
}