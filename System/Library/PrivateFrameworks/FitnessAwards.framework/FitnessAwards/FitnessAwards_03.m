unint64_t sub_24B417B48()
{
  result = qword_27EFE8820;
  if (!qword_27EFE8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8820);
  }

  return result;
}

unint64_t sub_24B417B9C()
{
  result = qword_27EFE8828;
  if (!qword_27EFE8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8828);
  }

  return result;
}

unint64_t sub_24B417BF0()
{
  result = qword_27EFE8830;
  if (!qword_27EFE8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8830);
  }

  return result;
}

uint64_t sub_24B417C60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B417D1C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t RemoteBrowsingIdentity.hashValue.getter(char a1)
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](a1 & 1);
  return sub_24B45926C();
}

uint64_t sub_24B417D1C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8878, &qword_24B4600B0);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8880, &qword_24B4600B8);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8888, &unk_24B4600C0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B417B48();
  v15 = v32;
  sub_24B45927C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_24B4590FC();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_24B3E3810();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_24B458FFC();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
    *v24 = &type metadata for RemoteBrowsingIdentity;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_24B417B9C();
    sub_24B45905C();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_24B417BF0();
    sub_24B45905C();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_24B4181DC()
{
  result = qword_27EFE8838;
  if (!qword_27EFE8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8838);
  }

  return result;
}

unint64_t sub_24B418274()
{
  result = qword_27EFE8840;
  if (!qword_27EFE8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8840);
  }

  return result;
}

unint64_t sub_24B4182CC()
{
  result = qword_27EFE8848;
  if (!qword_27EFE8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8848);
  }

  return result;
}

unint64_t sub_24B418324()
{
  result = qword_27EFE8850;
  if (!qword_27EFE8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8850);
  }

  return result;
}

unint64_t sub_24B41837C()
{
  result = qword_27EFE8858;
  if (!qword_27EFE8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8858);
  }

  return result;
}

unint64_t sub_24B4183D4()
{
  result = qword_27EFE8860;
  if (!qword_27EFE8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8860);
  }

  return result;
}

unint64_t sub_24B41842C()
{
  result = qword_27EFE8868;
  if (!qword_27EFE8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8868);
  }

  return result;
}

unint64_t sub_24B418484()
{
  result = qword_27EFE8870;
  if (!qword_27EFE8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8870);
  }

  return result;
}

uint64_t sub_24B4184F0(uint64_t a1)
{
  v2 = sub_24B418AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B41852C(uint64_t a1)
{
  v2 = sub_24B418AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24B418568()
{
  if (*v0)
  {
    result = 0x6570704177656976;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_24B4185B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000024B466F10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24B4591AC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24B41869C(uint64_t a1)
{
  v2 = sub_24B418A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4186D8(uint64_t a1)
{
  v2 = sub_24B418A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B418714(uint64_t a1)
{
  v2 = sub_24B418A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B418750(uint64_t a1)
{
  v2 = sub_24B418A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementEnvironmentCacheMonitorAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8890, &qword_24B4600D0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8898, &qword_24B4600D8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE88A0, &qword_24B4600E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B418A3C();
  sub_24B45928C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_24B418A90();
    v18 = v22;
    sub_24B45910C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_24B418AE4();
    sub_24B45910C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_24B418A3C()
{
  result = qword_2810E2948[0];
  if (!qword_2810E2948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E2948);
  }

  return result;
}

unint64_t sub_24B418A90()
{
  result = qword_2810E2930;
  if (!qword_2810E2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2930);
  }

  return result;
}

unint64_t sub_24B418AE4()
{
  result = qword_27EFE88A8;
  if (!qword_27EFE88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE88A8);
  }

  return result;
}

uint64_t AchievementEnvironmentCacheMonitorAction.hashValue.getter()
{
  v1 = *v0;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  return sub_24B45926C();
}

uint64_t AchievementEnvironmentCacheMonitorAction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE88B0, &qword_24B4600E8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE88B8, &qword_24B4600F0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE88C0, &unk_24B4600F8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B418A3C();
  v16 = v36;
  sub_24B45927C();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_24B4590FC();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_24B3E3810();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_24B458FFC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
      *v26 = &type metadata for AchievementEnvironmentCacheMonitorAction;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_24B418A90();
        sub_24B45905C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_24B418AE4();
        sub_24B45905C();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_24B41909C()
{
  result = qword_27EFE88C8;
  if (!qword_27EFE88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE88C8);
  }

  return result;
}

unint64_t sub_24B419134()
{
  result = qword_27EFE88D0;
  if (!qword_27EFE88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE88D0);
  }

  return result;
}

unint64_t sub_24B41918C()
{
  result = qword_2810E2910;
  if (!qword_2810E2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2910);
  }

  return result;
}

unint64_t sub_24B4191E4()
{
  result = qword_2810E2918;
  if (!qword_2810E2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2918);
  }

  return result;
}

unint64_t sub_24B41923C()
{
  result = qword_2810E2920;
  if (!qword_2810E2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2920);
  }

  return result;
}

unint64_t sub_24B419294()
{
  result = qword_2810E2928;
  if (!qword_2810E2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2928);
  }

  return result;
}

unint64_t sub_24B4192EC()
{
  result = qword_2810E2938;
  if (!qword_2810E2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2938);
  }

  return result;
}

unint64_t sub_24B419344()
{
  result = qword_2810E2940;
  if (!qword_2810E2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2940);
  }

  return result;
}

uint64_t AwardToastDetail.init(templateUniqueNames:title:subtitle:imageData:type:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t AwardToastDetail.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AwardToastDetail.subtitle.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

unint64_t sub_24B419424()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x656C746974627573;
  v4 = 0x7461446567616D69;
  if (v1 != 3)
  {
    v4 = 1701869940;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_24B4194BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B41BDD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4194E4(uint64_t a1)
{
  v2 = sub_24B41984C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B419520(uint64_t a1)
{
  v2 = sub_24B41984C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastDetail.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE88D8, &unk_24B460490);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v21 = v1[2];
  v22 = v9;
  v12 = v1[5];
  v19 = v1[4];
  v20 = v11;
  v18 = v12;
  v17 = *(v1 + 48);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B41984C();

  sub_24B45928C();
  v24 = v10;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84C8, &qword_24B45DE98);
  sub_24B40646C(&qword_27EFE84D0);
  sub_24B45918C();
  if (v2)
  {
  }

  else
  {
    v14 = v18;

    LOBYTE(v24) = 1;
    sub_24B45914C();
    LOBYTE(v24) = 2;
    sub_24B45911C();
    v24 = v14;
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE88E8, &qword_24B4604A0);
    sub_24B419D70(&qword_27EFE88F0, sub_24B4198A0);
    sub_24B45918C();
    LOBYTE(v24) = v17;
    v23 = 4;
    sub_24B4198F4();
    sub_24B45918C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B41984C()
{
  result = qword_27EFE88E0;
  if (!qword_27EFE88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE88E0);
  }

  return result;
}

unint64_t sub_24B4198A0()
{
  result = qword_27EFE88F8;
  if (!qword_27EFE88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE88F8);
  }

  return result;
}

unint64_t sub_24B4198F4()
{
  result = qword_27EFE8900;
  if (!qword_27EFE8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8900);
  }

  return result;
}

uint64_t AwardToastDetail.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8908, &qword_24B4604A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B41984C();
  sub_24B45927C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84C8, &qword_24B45DE98);
  v26 = 0;
  sub_24B40646C(&qword_27EFE8510);
  sub_24B4590EC();
  v11 = v27;
  LOBYTE(v27) = 1;
  v12 = sub_24B4590AC();
  v25 = v13;
  v23 = v12;
  LOBYTE(v27) = 2;
  v22 = sub_24B45907C();
  v24 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE88E8, &qword_24B4604A0);
  v26 = 3;
  sub_24B419D70(&qword_27EFE8910, sub_24B419DF4);
  sub_24B4590EC();
  v21 = v27;
  v26 = 4;
  sub_24B419E48();
  sub_24B4590EC();
  (*(v6 + 8))(v9, v5);
  v16 = v27;
  v17 = v22;
  v18 = v23;
  *a2 = v11;
  *(a2 + 8) = v18;
  v19 = v24;
  *(a2 + 16) = v25;
  *(a2 + 24) = v17;
  v20 = v21;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B419D70(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE88E8, &qword_24B4604A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B419DF4()
{
  result = qword_27EFE8918;
  if (!qword_27EFE8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8918);
  }

  return result;
}

unint64_t sub_24B419E48()
{
  result = qword_27EFE8920;
  if (!qword_27EFE8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8920);
  }

  return result;
}

uint64_t AwardToastDetail.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v14 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = *(v1 + 48);
  MEMORY[0x24C2403C0](*(*v1 + 16));
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = (v3 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      sub_24B458E6C();

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  sub_24B458E6C();
  sub_24B45924C();
  if (v7)
  {
    sub_24B458E6C();
  }

  sub_24B41B9E4(a1, v6);
  return MEMORY[0x24C2403C0](v8);
}

uint64_t AwardToastDetail.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *&v5[9] = *v0;
  v5[11] = v1;
  v6 = *(v0 + 24);
  v7 = v2;
  v8 = v3;
  sub_24B45922C();
  AwardToastDetail.hash(into:)(v5);
  return sub_24B45926C();
}

uint64_t sub_24B41A03C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *&v5[9] = *v0;
  v5[11] = v1;
  v6 = *(v0 + 24);
  v7 = v2;
  v8 = v3;
  sub_24B45922C();
  AwardToastDetail.hash(into:)(v5);
  return sub_24B45926C();
}

uint64_t sub_24B41A0AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *&v5[9] = *v0;
  v5[11] = v1;
  v6 = *(v0 + 24);
  v7 = v2;
  v8 = v3;
  sub_24B45922C();
  AwardToastDetail.hash(into:)(v5);
  return sub_24B45926C();
}

uint64_t sub_24B41A114(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
LABEL_12:
    v41 = v11;
    v14 = __clz(__rbit64(v7)) | (v11 << 6);
    v15 = (*(v2 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v2 + 56) + 8 * v14);
    v46 = a1[2];
    v47 = a1[3];
    v48 = *(a1 + 8);
    v44 = *a1;
    v45 = a1[1];

    sub_24B3D81E4(v18);
    sub_24B458E6C();

    if (!v18)
    {
      v12 = 0;
LABEL_5:
      MEMORY[0x24C2403C0](v12);
      goto LABEL_6;
    }

    if (v18 == 1)
    {
      v12 = 1;
      goto LABEL_5;
    }

    MEMORY[0x24C2403C0](2);
    MEMORY[0x24C2403C0](*(v18 + 16));
    v43 = *(v18 + 16);
    if (v43)
    {
      v35 = v7;
      v36 = v10;
      v37 = v8;
      v38 = v4;
      v39 = v2;
      v40 = a1;
      v19 = 0;
      v34 = v18;
      v42 = v18 + 32;
      do
      {
        v20 = (v42 + 40 * v19);
        v21 = *v20;
        v22 = v20[1];
        v24 = v20[2];
        v23 = v20[3];
        v25 = v20[4];

        sub_24B458E6C();
        sub_24B458E6C();
        MEMORY[0x24C2403C0](*(v25 + 16));
        v26 = *(v25 + 16);
        if (v26)
        {
          v27 = (v25 + 64);
          do
          {
            v29 = *(v27 - 4);
            v30 = *(v27 - 3);
            v31 = *(v27 - 16);
            v32 = *(v27 - 1);
            v33 = *v27;

            sub_24B458E6C();
            sub_24B458E6C();

            if (v33)
            {
              sub_24B45924C();
            }

            else
            {
              sub_24B45924C();
              if ((v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v28 = v32;
              }

              else
              {
                v28 = 0;
              }

              MEMORY[0x24C2403E0](v28);
            }

            v27 += 40;
            --v26;
          }

          while (v26);
        }

        ++v19;
      }

      while (v19 != v43);
      sub_24B3D8220(v34);
      v2 = v39;
      a1 = v40;
      v8 = v37;
      v4 = v38;
      v7 = v35;
      v10 = v36;
    }

    else
    {
      sub_24B3D8220(v18);
    }

LABEL_6:
    v7 &= v7 - 1;
    result = sub_24B45926C();
    v10 ^= result;
    v11 = v41;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return MEMORY[0x24C2403C0](v10);
    }

    v7 = *(v4 + 8 * v13);
    ++v11;
    if (v7)
    {
      v11 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B41A504(__int128 *a1, uint64_t a2)
{
  v68 = a1;
  v62 = sub_24B45836C();
  v3 = *(v62 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardProgressLoadState();
  v64 = *(State - 8);
  v6 = *(v64 + 64);
  v7 = MEMORY[0x28223BE20](State);
  v70 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v71 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v63 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8948, &qword_24B4606E8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v67 = &v59 - v17;
  v18 = a2 + 64;
  v19 = 1 << *(a2 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a2 + 64);
  v22 = (v19 + 63) >> 6;
  v60 = (v3 + 32);
  v59 = (v3 + 8);
  v65 = a2;

  v24 = 0;
  v25 = 0;
  v69 = v16;
  while (1)
  {
    v72 = v24;
    if (!v21)
    {
      break;
    }

    v28 = v25;
LABEL_16:
    v31 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v32 = v31 | (v28 << 6);
    v33 = (*(v65 + 48) + 16 * v32);
    v35 = *v33;
    v34 = v33[1];
    v36 = v63;
    sub_24B41BFE0(*(v65 + 56) + *(v64 + 72) * v32, v63, type metadata accessor for AwardProgressLoadState);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8950, &qword_24B4606F0);
    v38 = *(v37 + 48);
    v39 = v69;
    *v69 = v35;
    *(v39 + 1) = v34;
    v40 = v36;
    v16 = v39;
    sub_24B41C048(v40, &v39[v38], type metadata accessor for AwardProgressLoadState);
    (*(*(v37 - 8) + 56))(v16, 0, 1, v37);

LABEL_17:
    v41 = v67;
    sub_24B41C0B0(v16, v67, &qword_27EFE8948, &qword_24B4606E8);
    v42 = v41;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8950, &qword_24B4606F0);
    if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
    {

      return MEMORY[0x24C2403C0](v72);
    }

    v44 = *(v43 + 48);
    v45 = *v42;
    v46 = v42[1];
    v47 = v71;
    sub_24B41C048(v42 + v44, v71, type metadata accessor for AwardProgressLoadState);
    v48 = v68[3];
    v75 = v68[2];
    v76 = v48;
    v77 = *(v68 + 8);
    v49 = v68[1];
    v73 = *v68;
    v74 = v49;
    sub_24B458E6C();

    sub_24B41BFE0(v47, v70, type metadata accessor for AwardProgressLoadState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v52 = *v70;
        v51 = *(v70 + 8);
        v54 = *(v70 + 16);
        v53 = *(v70 + 24);
        v55 = *(v70 + 32);
        MEMORY[0x24C2403C0](2);
        if (v55)
        {
          MEMORY[0x24C2403C0](1);
          MEMORY[0x24C2403C0](v52);
          sub_24B45924C();
          MEMORY[0x24C2403C0](v54);
        }

        else
        {
          MEMORY[0x24C2403C0](0);
          sub_24B458E6C();
          if ((v54 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v57 = v54;
          }

          else
          {
            v57 = 0;
          }

          MEMORY[0x24C2403E0](v57);
          if ((v53 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v58 = v53;
          }

          else
          {
            v58 = 0;
          }

          MEMORY[0x24C2403E0](v58);
          sub_24B3DF468(v52, v51, v54, v53, 0);
        }

        v16 = v69;
      }

      else
      {
        MEMORY[0x24C2403C0](0);
      }
    }

    else
    {
      v27 = v61;
      v26 = v62;
      (*v60)(v61, v70, v62);
      MEMORY[0x24C2403C0](1);
      sub_24B41BF98(&qword_27EFE7E70, MEMORY[0x277CC95F0]);
      sub_24B458D9C();
      (*v59)(v27, v26);
    }

    sub_24B41C118(v71, type metadata accessor for AwardProgressLoadState);
    result = sub_24B45926C();
    v24 = result ^ v72;
  }

  if (v22 <= v25 + 1)
  {
    v29 = v25 + 1;
  }

  else
  {
    v29 = v22;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v28 >= v22)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8950, &qword_24B4606F0);
      (*(*(v56 - 8) + 56))(v16, 1, 1, v56);
      v21 = 0;
      v25 = v30;
      goto LABEL_17;
    }

    v21 = *(v18 + 8 * v28);
    ++v25;
    if (v21)
    {
      v25 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B41AB64(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);
    v7 &= v7 - 1;
    v18 = *(a1 + 48);
    v20[2] = *(a1 + 32);
    v20[3] = v18;
    v21 = *(a1 + 64);
    v19 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v19;

    sub_24B458E6C();

    sub_24B41ACC0(v20, v17);

    result = sub_24B45926C();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x24C2403C0](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B41ACC0(__int128 *a1, uint64_t a2)
{
  v70 = a1;
  v65 = sub_24B45830C();
  v3 = *(v65 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_24B45836C();
  v6 = *(v63 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardImageLoadState();
  v67 = *(State - 8);
  v9 = *(v67 + 64);
  v10 = MEMORY[0x28223BE20](State);
  v72 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v58 - v13;
  MEMORY[0x28223BE20](v12);
  v66 = &v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8958, &qword_24B4606F8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v71 = (&v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v21 = (&v58 - v20);
  v22 = a2 + 64;
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a2 + 64);
  v26 = (v23 + 63) >> 6;
  v61 = (v3 + 32);
  v60 = v3 + 8;
  v59 = (v6 + 32);
  v58 = v6 + 8;
  v68 = a2;

  v28 = 0;
  v29 = 0;
  v73 = v14;
  while (v25)
  {
    v33 = v28;
    v34 = v29;
LABEL_17:
    v37 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v38 = v37 | (v34 << 6);
    v39 = (*(v68 + 48) + 16 * v38);
    v40 = *v39;
    v41 = v39[1];
    v42 = v66;
    sub_24B41BFE0(*(v68 + 56) + *(v67 + 72) * v38, v66, type metadata accessor for AwardImageLoadState);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8960, &qword_24B460700);
    v44 = *(v43 + 48);
    v45 = v71;
    *v71 = v40;
    v45[1] = v41;
    v46 = v45;
    sub_24B41C048(v42, v45 + v44, type metadata accessor for AwardImageLoadState);
    (*(*(v43 - 8) + 56))(v46, 0, 1, v43);
    v28 = v33;
LABEL_18:
    sub_24B41C0B0(v46, v21, &qword_27EFE8958, &qword_24B4606F8);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8960, &qword_24B460700);
    if ((*(*(v47 - 8) + 48))(v21, 1, v47) == 1)
    {

      return MEMORY[0x24C2403C0](v28);
    }

    v48 = *v21;
    v49 = v21[1];
    v50 = v73;
    sub_24B41C048(v21 + *(v47 + 48), v73, type metadata accessor for AwardImageLoadState);
    v51 = v70[3];
    v76 = v70[2];
    v77 = v51;
    v78 = *(v70 + 8);
    v52 = v70[1];
    v74 = *v70;
    v75 = v52;
    if (v48 == 0.0)
    {
      v53 = 0.0;
    }

    else
    {
      v53 = v48;
    }

    MEMORY[0x24C2403E0](*&v53);
    if (v49 == 0.0)
    {
      v54 = 0.0;
    }

    else
    {
      v54 = v49;
    }

    MEMORY[0x24C2403E0](*&v54);
    sub_24B41BFE0(v50, v72, type metadata accessor for AwardImageLoadState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v30 = v62;
      v31 = v63;
      (*v59)(v62, v72, v63);
      MEMORY[0x24C2403C0](1);
      sub_24B41BF98(&qword_27EFE7E70, MEMORY[0x277CC95F0]);
      sub_24B458D9C();
      v32 = &v79;
LABEL_5:
      (**(v32 - 32))(v30, v31);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v30 = v64;
      v31 = v65;
      (*v61)(v64, v72, v65);
      MEMORY[0x24C2403C0](2);
      sub_24B41BF98(&qword_27EFE8968, MEMORY[0x277CC9260]);
      sub_24B458D9C();
      v32 = &v80;
      goto LABEL_5;
    }

    MEMORY[0x24C2403C0](0);
LABEL_6:
    sub_24B41C118(v73, type metadata accessor for AwardImageLoadState);
    result = sub_24B45926C();
    v28 ^= result;
  }

  if (v26 <= v29 + 1)
  {
    v35 = v29 + 1;
  }

  else
  {
    v35 = v26;
  }

  v36 = v35 - 1;
  while (1)
  {
    v34 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v34 >= v26)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8960, &qword_24B460700);
      v57 = v71;
      (*(*(v56 - 8) + 56))(v71, 1, 1, v56);
      v25 = 0;
      v29 = v36;
      v46 = v57;
      goto LABEL_18;
    }

    v25 = *(v22 + 8 * v34);
    ++v29;
    if (v25)
    {
      v33 = v28;
      v29 = v34;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B41B3E4(__int128 *a1, uint64_t a2)
{
  v63 = a1;
  v56 = sub_24B45836C();
  v3 = *(v56 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardEarnedLoadState();
  v59 = *(State - 8);
  v6 = *(v59 + 64);
  v7 = MEMORY[0x28223BE20](State);
  v65 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v66 = &v53 - v10;
  MEMORY[0x28223BE20](v9);
  v58 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8970, &qword_24B460708);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v64 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = (&v53 - v16);
  v18 = a2 + 64;
  v19 = 1 << *(a2 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a2 + 64);
  v22 = (v19 + 63) >> 6;
  v54 = (v3 + 32);
  v53 = (v3 + 8);
  v60 = a2;

  v24 = 0;
  v25 = 0;
  v57 = v17;
  v61 = a2 + 64;
  while (v21)
  {
    v28 = v24;
    v29 = v25;
LABEL_16:
    v33 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v34 = v33 | (v29 << 6);
    v35 = (*(v60 + 48) + 16 * v34);
    v36 = *v35;
    v37 = v35[1];
    v38 = v58;
    sub_24B41BFE0(*(v60 + 56) + *(v59 + 72) * v34, v58, type metadata accessor for AwardEarnedLoadState);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8978, &qword_24B460710);
    v40 = *(v39 + 48);
    v41 = v64;
    *v64 = v36;
    v41[1] = v37;
    v32 = v41;
    sub_24B41C048(v38, v41 + v40, type metadata accessor for AwardEarnedLoadState);
    (*(*(v39 - 8) + 56))(v32, 0, 1, v39);

    v24 = v28;
    v17 = v57;
LABEL_17:
    sub_24B41C0B0(v32, v17, &qword_27EFE8970, &qword_24B460708);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8978, &qword_24B460710);
    if ((*(*(v42 - 8) + 48))(v17, 1, v42) == 1)
    {

      return MEMORY[0x24C2403C0](v24);
    }

    v43 = *(v42 + 48);
    v44 = *v17;
    v45 = v17[1];
    v46 = v66;
    sub_24B41C048(v17 + v43, v66, type metadata accessor for AwardEarnedLoadState);
    v47 = v63[3];
    v69 = v63[2];
    v70 = v47;
    v71 = *(v63 + 8);
    v48 = v63[1];
    v67 = *v63;
    v68 = v48;
    sub_24B458E6C();

    sub_24B41BFE0(v46, v65, type metadata accessor for AwardEarnedLoadState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v18 = v61;
      if (EnumCaseMultiPayload == 1)
      {
        v50 = *v65;
        MEMORY[0x24C2403C0](2);
        v51 = v50;
      }

      else
      {
        v51 = 0;
      }

      MEMORY[0x24C2403C0](v51);
    }

    else
    {
      v27 = v55;
      v26 = v56;
      (*v54)(v55, v65, v56);
      MEMORY[0x24C2403C0](1);
      sub_24B41BF98(&qword_27EFE7E70, MEMORY[0x277CC95F0]);
      sub_24B458D9C();
      (*v53)(v27, v26);
      v18 = v61;
    }

    sub_24B41C118(v66, type metadata accessor for AwardEarnedLoadState);
    result = sub_24B45926C();
    v24 ^= result;
  }

  if (v22 <= v25 + 1)
  {
    v30 = v25 + 1;
  }

  else
  {
    v30 = v22;
  }

  v31 = v30 - 1;
  v32 = v64;
  while (1)
  {
    v29 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v29 >= v22)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8978, &qword_24B460710);
      (*(*(v52 - 8) + 56))(v32, 1, 1, v52);
      v21 = 0;
      v25 = v31;
      goto LABEL_17;
    }

    v21 = *(v18 + 8 * v29);
    ++v25;
    if (v21)
    {
      v28 = v24;
      v25 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B41B9E4(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v19 = 0;
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (v11 << 10) | (16 * __clz(__rbit64(v7)));
      v13 = (*(a2 + 48) + v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = (*(a2 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];

      sub_24B41C178(v17, v18);
      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v22 = a1[2];
      v23 = a1[3];
      v24 = *(a1 + 8);
      v20 = *a1;
      v21 = a1[1];
      sub_24B458E6C();

      sub_24B45832C();
      sub_24B41C1CC(v17, v18);
      result = sub_24B45926C();
      v19 ^= result;
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x24C2403C0](v19);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s13FitnessAwards16AwardToastDetailV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (sub_24B40EB18(*a1, *a2) & 1) != 0 && (v2 == v6 && v4 == v8 || (sub_24B4591AC()))
  {
    if (v5)
    {
      if (v10 && (v3 == v7 && v5 == v10 || (sub_24B4591AC() & 1) != 0))
      {
        return sub_24B45540C(v13, v9) & (v14 == v11);
      }
    }

    else if (!v10)
    {
      return sub_24B45540C(v13, v9) & (v14 == v11);
    }
  }

  return 0;
}

unint64_t sub_24B41BC6C()
{
  result = qword_27EFE8928;
  if (!qword_27EFE8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8928);
  }

  return result;
}

unint64_t sub_24B41BCD4()
{
  result = qword_27EFE8930;
  if (!qword_27EFE8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8930);
  }

  return result;
}

unint64_t sub_24B41BD2C()
{
  result = qword_27EFE8938;
  if (!qword_27EFE8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8938);
  }

  return result;
}

unint64_t sub_24B41BD84()
{
  result = qword_27EFE8940;
  if (!qword_27EFE8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8940);
  }

  return result;
}

uint64_t sub_24B41BDD8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000024B466F30 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24B41BF98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B41BFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B41C048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B41C0B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B41C118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B41C178(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24B41C1CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24B41C220(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(a1 + 48) + 40 * (v10 | (v8 << 6));
      if ((*(v11 + 32) & 1) == 0)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v14 = *v11;
    v13 = *(v11 + 8);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B3F13B4(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v15 = *(v9 + 16);
    v16 = *(v9 + 24);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v21 = v15 + 1;
      v19 = v9;
      v20 = *(v9 + 16);
      result = sub_24B3F13B4((v16 > 1), v15 + 1, 1, v19);
      v15 = v20;
      v17 = v21;
      v9 = result;
    }

    *(v9 + 16) = v17;
    v18 = v9 + 16 * v15;
    *(v18 + 32) = v14;
    *(v18 + 40) = v13;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v12);
    ++v8;
    if (v5)
    {
      v8 = v12;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B41C398(_OWORD *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(v2 + 304) = a2;
  v3 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v3;
  *(v2 + 144) = a1[8];
  v4 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v4;
  v5 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v5;
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24B41C450, 0, 0);
}

uint64_t sub_24B41C450()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 304);
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = 8 * v4;

  v7 = v1;
  if (v3 > 0xD)
  {
LABEL_41:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v7 = *(v0 + 304);
    if ((isStackAllocationSafe & 1) == 0)
    {
      v42 = swift_slowAlloc();
      v26 = sub_24B41D6FC(v42, v4, v7, sub_24B41D648);
      MEMORY[0x24C2408A0](v42, -1, -1);
      goto LABEL_27;
    }
  }

  MEMORY[0x28223BE20](isStackAllocationSafe);
  bzero(&v44[-1] - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0), v5);
  v8 = 0;
  v9 = 0;
  v10 = 1 << *(v1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 56);
  while (1)
  {
    if (!v12)
    {
      v15 = v9;
      while (1)
      {
        v9 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v9 >= ((v10 + 63) >> 6))
        {
          goto LABEL_26;
        }

        v16 = *(v7 + 56 + 8 * v9);
        ++v15;
        if (v16)
        {
          v12 = (v16 - 1) & v16;
          v14 = __clz(__rbit64(v16)) | (v9 << 6);
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v13 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v14 = v13 | (v9 << 6);
LABEL_12:
    v17 = *(v7 + 48) + 40 * v14;
    if ((*(v17 + 32) & 1) == 0)
    {
      v18 = *(v17 + 24);
      v19 = v18;
      if (v18 <= -9.22337204e18)
      {
        goto LABEL_35;
      }

      if (v18 >= 9.22337204e18)
      {
        goto LABEL_36;
      }

      v20 = *(v17 + 16);
      v21 = *&v18 & 0x7FF0000000000000;
      if ((~*&v20 & 0x7FF0000000000000) == 0 || v21 == 0x7FF0000000000000)
      {
        goto LABEL_37;
      }

      v23 = v20;
      if (v20 <= -9.22337204e18)
      {
        goto LABEL_38;
      }

      if (v20 >= 9.22337204e18)
      {
        goto LABEL_39;
      }

      v24 = v19 - v20;
      if (__OFSUB__(v19, v23))
      {
        goto LABEL_40;
      }

      if (v24 == 1)
      {
        *(&v44[-1] + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v14;
        if (__OFADD__(v8++, 1))
        {
          break;
        }
      }
    }
  }

  __break(1u);
LABEL_26:
  v26 = sub_24B41DC6C((&v44[-1] - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)), v4, v8, *(v0 + 304));
LABEL_27:
  *(v0 + 312) = v26;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v27 = sub_24B45847C();
  *(v0 + 320) = __swift_project_value_buffer(v27, qword_2810E3618);

  v28 = sub_24B45845C();
  v29 = sub_24B458F4C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v44[0] = v31;
    *v30 = 136315138;
    sub_24B41DF30();
    v32 = sub_24B458F2C();
    v34 = sub_24B3F17BC(v32, v33, v44);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_24B3CE000, v28, v29, "Earnable awards %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x24C2408A0](v31, -1, -1);
    MEMORY[0x24C2408A0](v30, -1, -1);
  }

  v35 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v35;
  *(v0 + 288) = *(v0 + 144);
  v36 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v36;
  v37 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v37;
  v38 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v38;
  v39 = swift_task_alloc();
  *(v0 + 328) = v39;
  *v39 = v0;
  v39[1] = sub_24B41C908;
  v40 = *MEMORY[0x277D85DE8];

  return sub_24B41CBE4(v0 + 160, v26);
}

uint64_t sub_24B41C908(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 336) = a1;

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24B41CA54, 0, 0);
}

uint64_t sub_24B41CA54()
{
  v16 = v0;
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = v0[42];
  v2 = v0[40];

  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[42];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136315138;
    sub_24B41DF30();
    v8 = sub_24B458F2C();
    v10 = sub_24B3F17BC(v8, v9, v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24B3CE000, v3, v4, "Awards eligible to present %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x24C2408A0](v7, -1, -1);
    MEMORY[0x24C2408A0](v6, -1, -1);
  }

  v11 = v0[1];
  v12 = v0[42];
  v13 = *MEMORY[0x277D85DE8];

  return v11(v12);
}

uint64_t sub_24B41CBE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a2;
  *(v2 + 184) = *(a1 + 128);
  return MEMORY[0x2822009F8](sub_24B41CC0C, 0, 0);
}

uint64_t sub_24B41CC0C()
{
  *(v0 + 160) = MEMORY[0x277D84FA0];
  v1 = *(v0 + 176);
  v2 = *(v1 + 32);
  *(v0 + 49) = v2;
  v3 = v1 + 56;
  v4 = 1 << v2;
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_10:
    *(v0 + 200) = v6;
    *(v0 + 208) = v10;
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(result + 48) + 40 * (v11 | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 16);
    *(v0 + 48) = *(v12 + 32);
    *(v0 + 16) = v13;
    *(v0 + 32) = v14;
    if ((*(v0 + 48) & 1) == 0)
    {
      v15 = *(v0 + 184);
      v16 = *(v0 + 16);
      v17 = *(v0 + 24);
      *(v0 + 216) = v16;
      *(v0 + 224) = v17;
      *(v0 + 232) = *(v12 + 8);

      v23 = (v15 + *v15);
      v18 = v15[1];
      v19 = swift_task_alloc();
      *(v0 + 240) = v19;
      *v19 = v0;
      v19[1] = sub_24B41CE20;
      v20 = *(v0 + 192);

      return v23(v16, v17);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  v21 = *(v0 + 160);
  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_24B41CE20(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v7 = sub_24B41D2A0;
  }

  else
  {
    *(v4 + 50) = a1 & 1;
    v7 = sub_24B41CF4C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24B41CF4C()
{
  v29 = v0;
  if (*(v0 + 50))
  {
    sub_24B41DF84(v0 + 96, v0 + 16);
    sub_24B3DF468(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));
  }

  else
  {
    if (qword_2810E3610 != -1)
    {
LABEL_23:
      swift_once();
    }

    v1 = *(v0 + 232);
    v2 = sub_24B45847C();
    __swift_project_value_buffer(v2, qword_2810E3618);

    v3 = sub_24B45845C();
    v4 = sub_24B458F4C();
    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 216);
      v5 = *(v0 + 224);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28 = v8;
      *v7 = 136315138;
      v9 = sub_24B3F17BC(v6, v5, &v28);
      sub_24B3EE5B0(v0 + 16);
      *(v7 + 4) = v9;
      _os_log_impl(&dword_24B3CE000, v3, v4, "%s has already been toasted, not notifying", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x24C2408A0](v8, -1, -1);
      MEMORY[0x24C2408A0](v7, -1, -1);
    }

    else
    {

      sub_24B3EE5B0(v0 + 16);
    }

    sub_24B3EE5B0(v0 + 16);
  }

  v10 = *(v0 + 208);
  v11 = (*(v0 + 200) - 1) & *(v0 + 200);
  while (v11)
  {
    v12 = *(v0 + 176);
LABEL_15:
    *(v0 + 200) = v11;
    *(v0 + 208) = v10;
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(v12 + 48) + 40 * (v14 | (v10 << 6));
    v16 = *v15;
    v17 = *(v15 + 16);
    *(v0 + 48) = *(v15 + 32);
    *(v0 + 16) = v16;
    *(v0 + 32) = v17;
    if ((*(v0 + 48) & 1) == 0)
    {
      v18 = *(v0 + 184);
      v19 = *(v0 + 16);
      v20 = *(v0 + 24);
      *(v0 + 216) = v19;
      *(v0 + 224) = v20;
      *(v0 + 232) = *(v15 + 8);

      v27 = (v18 + *v18);
      v21 = v18[1];
      v22 = swift_task_alloc();
      *(v0 + 240) = v22;
      *v22 = v0;
      v22[1] = sub_24B41CE20;
      v23 = *(v0 + 192);

      return v27(v19, v20);
    }
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    v12 = *(v0 + 176);
    if (v13 >= (((1 << *(v0 + 49)) + 63) >> 6))
    {
      break;
    }

    v11 = *(v12 + 8 * v13 + 56);
    ++v10;
    if (v11)
    {
      v10 = v13;
      goto LABEL_15;
    }
  }

  v25 = *(v0 + 160);
  v26 = *(v0 + 8);

  return v26(v25);
}

uint64_t sub_24B41D2A0()
{
  v38 = v0;
  if (qword_2810E3610 != -1)
  {
LABEL_20:
    swift_once();
  }

  v1 = *(v0 + 248);
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);
  sub_24B3F24BC(v0 + 16, v0 + 56);
  MEMORY[0x24C2406E0](v1);
  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();
  MEMORY[0x24C2406D0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 248);
  if (v5)
  {
    v8 = *(v0 + 216);
    v7 = *(v0 + 224);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315394;
    v11 = sub_24B3F17BC(v8, v7, &v37);
    sub_24B3EE5B0(v0 + 16);
    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 152);
    v15 = sub_24B4591DC();
    v17 = sub_24B3F17BC(v15, v16, &v37);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_24B3CE000, v3, v4, "Toast eligibility query for %s failed with error %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2408A0](v10, -1, -1);
    MEMORY[0x24C2408A0](v9, -1, -1);
    MEMORY[0x24C2406D0](v6);

    sub_24B3EE5B0(v0 + 16);
  }

  else
  {

    sub_24B3EE5B0(v0 + 16);
    sub_24B3EE5B0(v0 + 16);
    MEMORY[0x24C2406D0](v6);
  }

  v18 = *(v0 + 208);
  v19 = (*(v0 + 200) - 1) & *(v0 + 200);
  while (v19)
  {
    v20 = *(v0 + 176);
LABEL_12:
    *(v0 + 200) = v19;
    *(v0 + 208) = v18;
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v23 = *(v20 + 48) + 40 * (v22 | (v18 << 6));
    v24 = *v23;
    v25 = *(v23 + 16);
    *(v0 + 48) = *(v23 + 32);
    *(v0 + 16) = v24;
    *(v0 + 32) = v25;
    if ((*(v0 + 48) & 1) == 0)
    {
      v26 = *(v0 + 184);
      v27 = *(v0 + 16);
      v28 = *(v0 + 24);
      *(v0 + 216) = v27;
      *(v0 + 224) = v28;
      *(v0 + 232) = *(v23 + 8);

      v36 = (v26 + *v26);
      v29 = v26[1];
      v30 = swift_task_alloc();
      *(v0 + 240) = v30;
      *v30 = v0;
      v30[1] = sub_24B41CE20;
      v31 = *(v0 + 192);

      return v36(v27, v28);
    }
  }

  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v21 >= (((1 << *(v0 + 49)) + 63) >> 6))
    {
      break;
    }

    v20 = *(v0 + 176);
    v19 = *(v20 + 8 * v21 + 56);
    ++v18;
    if (v19)
    {
      v18 = v21;
      goto LABEL_12;
    }
  }

  v33 = *(v0 + 176);

  v34 = *(v0 + 160);
  v35 = *(v0 + 8);

  return v35(v34);
}

BOOL sub_24B41D648(_BOOL8 result)
{
  if (*(result + 32))
  {
    return 0;
  }

  v1 = *(result + 24);
  if (v1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = *(result + 16);
  if ((~*&v2 & 0x7FF0000000000000) == 0 || (*(result + 24) & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    goto LABEL_15;
  }

  v4 = *(result + 16);
  if (v2 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!__OFSUB__(v1, v4))
  {
    return v1 - v4 == 1;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24B41D6FC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_24B41DAA4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_24B41D78C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8980, &qword_24B460728);
  result = sub_24B458FBC();
  v6 = result;
  if (*(v3 + 16))
  {
    v39 = v2;
    v40 = v3;
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
    v41 = result;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v43 = (v11 - 1) & v11;
LABEL_17:
      v21 = *(v3 + 48) + 40 * (v18 | (v7 << 6));
      v23 = *v21;
      v22 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v21 + 32);
      v27 = *(v6 + 40);
      sub_24B45922C();
      v42 = v26;
      if (v26)
      {
        v28 = v25;
        MEMORY[0x24C2403C0](1);
        MEMORY[0x24C2403C0](v23);
        sub_24B45924C();
        MEMORY[0x24C2403C0](v24);
      }

      else
      {
        MEMORY[0x24C2403C0](0);
        sub_24B458E6C();
        if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v29 = v24;
        }

        else
        {
          v29 = 0;
        }

        MEMORY[0x24C2403E0](v29);
        v28 = v25;
        if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v30 = v25;
        }

        else
        {
          v30 = 0;
        }

        MEMORY[0x24C2403E0](v30);
      }

      result = sub_24B45926C();
      v6 = v41;
      v31 = -1 << *(v41 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v15 = v28;
        v16 = v23;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v13 + 8 * v33);
          if (v37 != -1)
          {
            v14 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v15 = v28;
      v16 = v23;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v17 = *(v41 + 48) + 40 * v14;
      *v17 = v16;
      *(v17 + 8) = v22;
      *(v17 + 16) = v24;
      *(v17 + 24) = v15;
      *(v17 + 32) = v42;
      ++*(v41 + 16);
      v3 = v40;
      v11 = v43;
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v38 = 1 << *(v3 + 32);
    if (v38 >= 64)
    {
      bzero(v8, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v38;
    }

    v2 = v39;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24B41DAA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v21 = result;
  v4 = 0;
  v24 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v22 = 0;
  v23 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v28 = (v7 - 1) & v7;
LABEL_11:
    v25 = v8 | (v4 << 6);
    v11 = *(a3 + 48) + 40 * v25;
    v13 = *v11;
    v12 = *(v11 + 8);
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    v16 = *(v11 + 32);
    v29[0] = v13;
    v29[1] = v12;
    v29[2] = v15;
    v29[3] = v14;
    v30 = v16;
    sub_24B3F1F54(v13, v12, v15, v14, v16);
    v17 = v31;
    v18 = a4(v29);
    result = sub_24B3DF468(v13, v12, v15, v14, v16);
    v31 = v17;
    if (v17)
    {
      return result;
    }

    v7 = v28;
    if (v18)
    {
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_24B41DC6C(v21, a2, v22, a3);
      }
    }
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v23)
    {
      goto LABEL_16;
    }

    v10 = *(v24 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v28 = (v10 - 1) & v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B41DC6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = MEMORY[0x277D84FA0];
LABEL_6:

    return v8;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8980, &qword_24B460728);
  result = sub_24B458FCC();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 56;
  v36 = v4;
  v37 = result;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v38 = (v9 - 1) & v9;
LABEL_17:
    v15 = *(v4 + 48) + 40 * (v12 | (v10 << 6));
    v17 = *v15;
    v16 = *(v15 + 8);
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    v20 = *(v15 + 32);
    v21 = *(v8 + 40);
    sub_24B45922C();
    v39 = v20;
    if (v20)
    {
      MEMORY[0x24C2403C0](1);
      v22 = v17;
      MEMORY[0x24C2403C0](v17);
      sub_24B45924C();
      MEMORY[0x24C2403C0](v19);
    }

    else
    {
      MEMORY[0x24C2403C0](0);

      v22 = v17;
      sub_24B458E6C();
      if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v23 = v19;
      }

      else
      {
        v23 = 0;
      }

      MEMORY[0x24C2403E0](v23);
      if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v24 = v18;
      }

      else
      {
        v24 = 0;
      }

      MEMORY[0x24C2403E0](v24);
    }

    result = sub_24B45926C();
    v8 = v37;
    v25 = -1 << *(v37 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v11 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_36;
        }
      }

      goto LABEL_40;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
    *(v11 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v37 + 48) + 40 * v28;
    *v33 = v22;
    *(v33 + 8) = v16;
    *(v33 + 16) = v19;
    *(v33 + 24) = v18;
    *(v33 + 32) = v39;
    ++*(v37 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_41;
    }

    v4 = v36;
    v9 = v38;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_6;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v38 = (v14 - 1) & v14;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_24B41DF30()
{
  result = qword_2810E35B8;
  if (!qword_2810E35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35B8);
  }

  return result;
}

uint64_t sub_24B41DF84(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_24B45922C();
  AwardProgress.hash(into:)();
  v7 = sub_24B45926C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_21:
    v21 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v2;
    sub_24B3F24BC(a2, v32);
    sub_24B41E168(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v31;
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }

  v10 = ~v8;
  v11 = *(v5 + 48);
  while (1)
  {
    v13 = (v11 + 40 * v9);
    v14 = *v13;
    v15 = *(v13 + 1);
    if ((v13[4] & 1) == 0)
    {
      break;
    }

    if ((*(a2 + 32) & 1) != 0 && *&v14 == *a2 && ((*(a2 + 8) ^ v15) & 1) == 0 && *(v13 + 2) == *(a2 + 16))
    {
      goto LABEL_23;
    }

LABEL_7:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(a2 + 32))
  {
    goto LABEL_7;
  }

  v16 = v13[3];
  v17 = v13[2];
  v19 = *(a2 + 16);
  v18 = *(a2 + 24);
  v20 = *&v14 == *a2 && v15 == *(a2 + 8);
  if (!v20 && (sub_24B4591AC() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v19 != v17 || v16 != v18)
  {
    goto LABEL_7;
  }

  sub_24B3EE5B0(a2);
LABEL_23:
  v25 = *(v5 + 48) + 40 * v9;
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v29 = *(v25 + 24);
  v30 = *(v25 + 32);
  *a1 = *v25;
  *(a1 + 8) = v27;
  *(a1 + 16) = v28;
  *(a1 + 24) = v29;
  *(a1 + 32) = v30;
  sub_24B3F1F54(v26, v27, v28, v29, v30);
  return 0;
}

uint64_t sub_24B41E168(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24B41D78C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_24B41E364();
        goto LABEL_28;
      }

      sub_24B41E4D4(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_24B45922C();
    AwardProgress.hash(into:)();
    result = sub_24B45926C();
    v11 = v9 + 56;
    v12 = -1 << *(v9 + 32);
    a2 = result & ~v12;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v13 = ~v12;
      v14 = *(v9 + 48);
      do
      {
        v16 = v14 + 40 * a2;
        result = *v16;
        v17 = *(v16 + 8);
        if (*(v16 + 32))
        {
          if ((*(v6 + 32) & 1) != 0 && result == *v6 && ((*(v6 + 8) ^ v17) & 1) == 0 && *(v16 + 16) == *(v6 + 16))
          {
            goto LABEL_31;
          }
        }

        else if ((*(v6 + 32) & 1) == 0)
        {
          v18 = *(v16 + 24);
          v19 = *(v16 + 16);
          v21 = *(v6 + 16);
          v20 = *(v6 + 24);
          v22 = result == *v6 && v17 == *(v6 + 8);
          if (v22 || (result = sub_24B4591AC(), (result & 1) != 0))
          {
            if (v21 == v19 && v18 == v20)
            {
              goto LABEL_31;
            }
          }
        }

        a2 = (a2 + 1) & v13;
      }

      while (((*(v11 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v24 = *(v23 + 48) + 40 * a2;
  v25 = *(v6 + 16);
  *v24 = *v6;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(v6 + 32);
  v26 = *(v23 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_31:
    result = sub_24B4591BC();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v28;
  }

  return result;
}

void *sub_24B41E364()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8980, &qword_24B460728);
  v2 = *v0;
  v3 = sub_24B458FAC();
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + v17;
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        result = sub_24B3F1F54(v19, v20, v21, v22, v23);
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

uint64_t sub_24B41E4D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8980, &qword_24B460728);
  result = sub_24B458FBC();
  v6 = result;
  if (*(v3 + 16))
  {
    v38 = v2;
    v39 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    v40 = result;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v43 = (v11 - 1) & v11;
LABEL_17:
      v20 = *(v3 + 48) + 40 * (v17 | (v7 << 6));
      v21 = *v20;
      v22 = *(v20 + 8);
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      v25 = *(v20 + 32);
      v26 = *(v6 + 40);
      sub_24B45922C();
      v42 = v21;
      v44 = v22;
      v41 = v25;
      if (v25)
      {
        v27 = v23;
        MEMORY[0x24C2403C0](1);
        MEMORY[0x24C2403C0](v21);
        sub_24B45924C();
        v28 = v24;
        MEMORY[0x24C2403C0](v24);
      }

      else
      {
        MEMORY[0x24C2403C0](0);

        sub_24B458E6C();
        v28 = v24;
        if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v29 = v24;
        }

        else
        {
          v29 = 0;
        }

        MEMORY[0x24C2403E0](v29);
        v27 = v23;
        if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v30 = v23;
        }

        else
        {
          v30 = 0;
        }

        MEMORY[0x24C2403E0](v30);
      }

      result = sub_24B45926C();
      v6 = v40;
      v31 = -1 << *(v40 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v15 = v44;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v13 + 8 * v33);
          if (v37 != -1)
          {
            v14 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_39;
      }

      v14 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v15 = v44;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v16 = *(v40 + 48) + 40 * v14;
      v11 = v43;
      *v16 = v42;
      *(v16 + 8) = v15;
      *(v16 + 16) = v28;
      *(v16 + 24) = v27;
      *(v16 + 32) = v41;
      ++*(v40 + 16);
      v3 = v39;
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v38;
        goto LABEL_37;
      }

      v19 = *(v8 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {

LABEL_37:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24B41E7D0(uint64_t a1)
{
  v2 = sub_24B41FFC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B41E80C(uint64_t a1)
{
  v2 = sub_24B41FFC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B41E860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C52556567616D69 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B4591AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B41E8E8(uint64_t a1)
{
  v2 = sub_24B420018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B41E924(uint64_t a1)
{
  v2 = sub_24B420018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B41E960(uint64_t a1)
{
  v2 = sub_24B42006C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B41E99C(uint64_t a1)
{
  v2 = sub_24B42006C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B41E9D8(uint64_t a1)
{
  v2 = sub_24B4200C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B41EA14(uint64_t a1)
{
  v2 = sub_24B4200C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardImageLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8988, &qword_24B460730);
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v41 - v4;
  v5 = sub_24B45830C();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8990, &qword_24B460738);
  v42 = *(v45 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v45);
  v52 = &v41 - v9;
  v10 = sub_24B45836C();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8998, &qword_24B460740);
  v41 = *(v14 - 8);
  v15 = *(v41 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  State = type metadata accessor for AwardImageLoadState();
  v19 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE89A0, &qword_24B460748);
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B41FFC4();
  sub_24B45928C();
  sub_24B412634(v53, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v34 = v42;
    v35 = v43;
    v36 = v21;
    v37 = v44;
    (*(v43 + 32))(v13, v36, v44);
    v57 = 1;
    sub_24B42006C();
    v32 = v55;
    sub_24B45910C();
    sub_24B42015C(&qword_27EFE7E38, MEMORY[0x277CC95F0]);
    v38 = v45;
    sub_24B45918C();
    (*(v34 + 8))(v52, v38);
    (*(v35 + 8))(v13, v37);
    return (*(v54 + 8))(v25, v32);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v29 = v48;
    v28 = v49;
    v30 = v46;
    (*(v48 + 32))(v46, v21, v49);
    v58 = 2;
    sub_24B420018();
    v31 = v47;
    v32 = v55;
    sub_24B45910C();
    sub_24B42015C(&qword_2810E36E0, MEMORY[0x277CC9260]);
    v33 = v51;
    sub_24B45918C();
    (*(v50 + 8))(v31, v33);
    (*(v29 + 8))(v30, v28);
    return (*(v54 + 8))(v25, v32);
  }

  v56 = 0;
  sub_24B4200C0();
  v40 = v55;
  sub_24B45910C();
  (*(v41 + 8))(v17, v14);
  return (*(v54 + 8))(v25, v40);
}

uint64_t AwardImageLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE89C8, &qword_24B460750);
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v72 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE89D0, &qword_24B460758);
  v8 = *(v7 - 8);
  v63 = v7;
  v64 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v71 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE89D8, &qword_24B460760);
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE89E0, &unk_24B460768);
  v73 = *(v70 - 8);
  v15 = *(v73 + 64);
  MEMORY[0x28223BE20](v70);
  v17 = &v59 - v16;
  State = type metadata accessor for AwardImageLoadState();
  v19 = *(*(State - 8) + 64);
  v20 = MEMORY[0x28223BE20](State);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v59 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v59 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_24B41FFC4();
  v30 = v74;
  sub_24B45927C();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  v32 = v68;
  v31 = v69;
  v60 = v25;
  v61 = v22;
  v34 = v71;
  v33 = v72;
  v74 = 0;
  v62 = v27;
  v35 = State;
  v36 = v70;
  v37 = sub_24B4590FC();
  v38 = (2 * *(v37 + 16)) | 1;
  v76 = v37;
  v77 = v37 + 32;
  v78 = 0;
  v79 = v38;
  v39 = sub_24B3E3808();
  v40 = v36;
  if (v39 == 3 || v78 != v79 >> 1)
  {
    v43 = sub_24B458FFC();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
    *v45 = v35;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    (*(v73 + 8))(v17, v40);
    goto LABEL_9;
  }

  if (v39)
  {
    if (v39 == 1)
    {
      v80 = 1;
      sub_24B42006C();
      v41 = v74;
      sub_24B45905C();
      v42 = v73;
      if (v41)
      {
LABEL_7:
        (*(v73 + 8))(v17, v36);
LABEL_9:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v75);
      }

      sub_24B45836C();
      sub_24B42015C(&qword_27EFE7E68, MEMORY[0x277CC95F0]);
      v55 = v60;
      v56 = v34;
      v57 = v63;
      sub_24B4590EC();
      (*(v64 + 8))(v56, v57);
      (*(v42 + 8))(v17, v36);
      swift_unknownObjectRelease();
      v74 = 0;
      swift_storeEnumTagMultiPayload();
      v58 = v62;
      sub_24B412848(v55, v62);
      v51 = v67;
    }

    else
    {
      v80 = 2;
      sub_24B420018();
      v49 = v36;
      v50 = v74;
      sub_24B45905C();
      v51 = v67;
      v52 = v73;
      if (v50)
      {
        (*(v73 + 8))(v17, v49);
        goto LABEL_9;
      }

      v71 = v35;
      sub_24B45830C();
      sub_24B42015C(&qword_27EFE89E8, MEMORY[0x277CC9260]);
      v53 = v61;
      v54 = v65;
      sub_24B4590EC();
      v74 = 0;
      (*(v66 + 8))(v33, v54);
      (*(v52 + 8))(v17, v49);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v58 = v62;
      sub_24B412848(v53, v62);
    }
  }

  else
  {
    v80 = 0;
    sub_24B4200C0();
    v48 = v74;
    sub_24B45905C();
    if (v48)
    {
      goto LABEL_7;
    }

    v74 = 0;
    (*(v32 + 8))(v14, v31);
    (*(v73 + 8))(v17, v36);
    swift_unknownObjectRelease();
    v58 = v62;
    swift_storeEnumTagMultiPayload();
    v51 = v67;
  }

  sub_24B412848(v58, v51);
  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t AwardImageLoadState.hash(into:)()
{
  v1 = sub_24B45830C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B45836C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardImageLoadState();
  v12 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B412634(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 32))(v5, v14, v1);
      MEMORY[0x24C2403C0](2);
      sub_24B42015C(&qword_27EFE8968, MEMORY[0x277CC9260]);
      sub_24B458D9C();
      return (*(v2 + 8))(v5, v1);
    }

    else
    {
      return MEMORY[0x24C2403C0](0);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    MEMORY[0x24C2403C0](1);
    sub_24B42015C(&qword_27EFE7E70, MEMORY[0x277CC95F0]);
    sub_24B458D9C();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t AwardImageLoadState.hashValue.getter()
{
  sub_24B45922C();
  AwardImageLoadState.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B41FBA8()
{
  sub_24B45922C();
  AwardImageLoadState.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B41FBEC()
{
  sub_24B45922C();
  AwardImageLoadState.hash(into:)();
  return sub_24B45926C();
}

uint64_t _s13FitnessAwards19AwardImageLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B45830C();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B45836C();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardImageLoadState();
  v13 = *(*(State - 8) + 64);
  v14 = MEMORY[0x28223BE20](State);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8A48, &qword_24B460C60);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  sub_24B412634(a1, &v33 - v22);
  sub_24B412634(a2, &v23[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v30 = v36;
    sub_24B412634(v23, v18);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v30 + 32))(v11, &v23[v24], v8);
      v28 = sub_24B45834C();
      v31 = *(v30 + 8);
      v31(v11, v8);
      v31(v18, v8);
      goto LABEL_12;
    }

    (*(v30 + 8))(v18, v8);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_24B412634(v23, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v34;
      v26 = v35;
      (*(v34 + 32))(v7, &v23[v24], v35);
      v28 = sub_24B4582EC();
      v29 = *(v27 + 8);
      v29(v7, v26);
      v29(v16, v26);
LABEL_12:
      sub_24B420614(v23);
      return v28 & 1;
    }

    (*(v34 + 8))(v16, v35);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_24B4205AC(v23);
    v28 = 0;
    return v28 & 1;
  }

  sub_24B420614(v23);
  v28 = 1;
  return v28 & 1;
}

unint64_t sub_24B41FFC4()
{
  result = qword_27EFE89A8;
  if (!qword_27EFE89A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE89A8);
  }

  return result;
}

unint64_t sub_24B420018()
{
  result = qword_27EFE89B0;
  if (!qword_27EFE89B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE89B0);
  }

  return result;
}

unint64_t sub_24B42006C()
{
  result = qword_27EFE89B8;
  if (!qword_27EFE89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE89B8);
  }

  return result;
}

unint64_t sub_24B4200C0()
{
  result = qword_27EFE89C0;
  if (!qword_27EFE89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE89C0);
  }

  return result;
}

uint64_t sub_24B42015C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B4201E8()
{
  result = qword_27EFE89F0;
  if (!qword_27EFE89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE89F0);
  }

  return result;
}

unint64_t sub_24B420240()
{
  result = qword_27EFE89F8;
  if (!qword_27EFE89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE89F8);
  }

  return result;
}

unint64_t sub_24B420298()
{
  result = qword_27EFE8A00;
  if (!qword_27EFE8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A00);
  }

  return result;
}

unint64_t sub_24B4202F0()
{
  result = qword_27EFE8A08;
  if (!qword_27EFE8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A08);
  }

  return result;
}

unint64_t sub_24B420348()
{
  result = qword_27EFE8A10;
  if (!qword_27EFE8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A10);
  }

  return result;
}

unint64_t sub_24B4203A0()
{
  result = qword_27EFE8A18;
  if (!qword_27EFE8A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A18);
  }

  return result;
}

unint64_t sub_24B4203F8()
{
  result = qword_27EFE8A20;
  if (!qword_27EFE8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A20);
  }

  return result;
}

unint64_t sub_24B420450()
{
  result = qword_27EFE8A28;
  if (!qword_27EFE8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A28);
  }

  return result;
}

unint64_t sub_24B4204A8()
{
  result = qword_27EFE8A30;
  if (!qword_27EFE8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A30);
  }

  return result;
}

unint64_t sub_24B420500()
{
  result = qword_27EFE8A38;
  if (!qword_27EFE8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A38);
  }

  return result;
}

unint64_t sub_24B420558()
{
  result = qword_27EFE8A40;
  if (!qword_27EFE8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A40);
  }

  return result;
}

uint64_t sub_24B4205AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8A48, &qword_24B460C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B420614(uint64_t a1)
{
  State = type metadata accessor for AwardImageLoadState();
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

uint64_t sub_24B42069C()
{
  if (*v0)
  {
    result = 0x746867696577;
  }

  else
  {
    result = 0x656C797473;
  }

  *v0;
  return result;
}

uint64_t sub_24B4206D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v6 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B4591AC();

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

uint64_t sub_24B4207A4(uint64_t a1)
{
  v2 = sub_24B4209B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4207E0(uint64_t a1)
{
  v2 = sub_24B4209B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FontDescriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8A50, &qword_24B460C68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4209B8();
  sub_24B45928C();
  v17 = v9;
  v16 = 0;
  sub_24B420A0C();
  sub_24B45918C();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_24B420A60();
    sub_24B45918C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B4209B8()
{
  result = qword_27EFE8A58;
  if (!qword_27EFE8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A58);
  }

  return result;
}

unint64_t sub_24B420A0C()
{
  result = qword_27EFE8A60;
  if (!qword_27EFE8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A60);
  }

  return result;
}

unint64_t sub_24B420A60()
{
  result = qword_27EFE8A68;
  if (!qword_27EFE8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A68);
  }

  return result;
}

uint64_t FontDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8A70, &qword_24B460C70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4209B8();
  sub_24B45927C();
  if (!v2)
  {
    v17 = 0;
    sub_24B420C88();
    sub_24B4590EC();
    v11 = v18;
    v15 = 1;
    sub_24B420CDC();
    sub_24B4590EC();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B420C88()
{
  result = qword_27EFE8A78;
  if (!qword_27EFE8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A78);
  }

  return result;
}

unint64_t sub_24B420CDC()
{
  result = qword_27EFE8A80;
  if (!qword_27EFE8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A80);
  }

  return result;
}

uint64_t FontDescriptor.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x24C2403C0](*v0);
  return MEMORY[0x24C2403C0](v1);
}

uint64_t FontDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  MEMORY[0x24C2403C0](v2);
  return sub_24B45926C();
}

uint64_t sub_24B420E28()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  MEMORY[0x24C2403C0](v2);
  return sub_24B45926C();
}

uint64_t sub_24B420E88()
{
  v1 = v0[1];
  MEMORY[0x24C2403C0](*v0);
  return MEMORY[0x24C2403C0](v1);
}

uint64_t sub_24B420EC8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  MEMORY[0x24C2403C0](v2);
  return sub_24B45926C();
}

unint64_t sub_24B420F50()
{
  result = qword_27EFE8A88;
  if (!qword_27EFE8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FontDescriptor(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FontDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B421118()
{
  result = qword_27EFE8A90;
  if (!qword_27EFE8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A90);
  }

  return result;
}

unint64_t sub_24B421170()
{
  result = qword_27EFE8A98;
  if (!qword_27EFE8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A98);
  }

  return result;
}

unint64_t sub_24B4211C8()
{
  result = qword_27EFE8AA0;
  if (!qword_27EFE8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8AA0);
  }

  return result;
}

uint64_t SectionDensityFactor.init(count:spacing:span:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

void static SectionDensityFactor.zero.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_24B421238()
{
  v1 = 0x676E6963617073;
  if (*v0 != 1)
  {
    v1 = 1851879539;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_24B421288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B421B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4212B0(uint64_t a1)
{
  v2 = sub_24B4214E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4212EC(uint64_t a1)
{
  v2 = sub_24B4214E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SectionDensityFactor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8AA8, &qword_24B460E80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v13 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4214E8();
  sub_24B45928C();
  v17 = 0;
  sub_24B45917C();
  if (!v2)
  {
    v16 = v10;
    v15 = 1;
    sub_24B3E3CF4();
    sub_24B45918C();
    v14 = 2;
    sub_24B45917C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B4214E8()
{
  result = qword_27EFE8AB0;
  if (!qword_27EFE8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8AB0);
  }

  return result;
}

uint64_t SectionDensityFactor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8AB8, &qword_24B460E88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4214E8();
  sub_24B45927C();
  if (!v2)
  {
    v17 = 0;
    v11 = sub_24B4590DC();
    v15[15] = 1;
    sub_24B3E4088();
    sub_24B4590EC();
    v13 = v16;
    v15[14] = 2;
    v14 = sub_24B4590DC();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SectionDensityFactor.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x24C2403C0](*v0);
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x24C2403E0](*&v3);
  return MEMORY[0x24C2403C0](v2);
}

uint64_t SectionDensityFactor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  sub_24B45922C();
  MEMORY[0x24C2403C0](*&v1);
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x24C2403E0](*&v4);
  MEMORY[0x24C2403C0](v3);
  return sub_24B45926C();
}

uint64_t sub_24B421880()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x24C2403C0](*v0);
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x24C2403E0](*&v3);
  return MEMORY[0x24C2403C0](v2);
}

uint64_t sub_24B4218E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  sub_24B45922C();
  MEMORY[0x24C2403C0](*&v1);
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x24C2403E0](*&v4);
  MEMORY[0x24C2403C0](v3);
  return sub_24B45926C();
}

unint64_t sub_24B421964()
{
  result = qword_27EFE8AC0;
  if (!qword_27EFE8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8AC0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SectionDensityFactor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SectionDensityFactor(uint64_t result, int a2, int a3)
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

unint64_t sub_24B421A74()
{
  result = qword_27EFE8AC8;
  if (!qword_27EFE8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8AC8);
  }

  return result;
}

unint64_t sub_24B421ACC()
{
  result = qword_27EFE8AD0;
  if (!qword_27EFE8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8AD0);
  }

  return result;
}

unint64_t sub_24B421B24()
{
  result = qword_27EFE8AD8;
  if (!qword_27EFE8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8AD8);
  }

  return result;
}

uint64_t sub_24B421B78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1851879539 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B4591AC();

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

uint64_t AwardLockupState.init(templateUniqueName:layout:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for AwardLockupState();
  sub_24B421D80(a3, &a5[*(v8 + 20)]);
  v9 = *(v8 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v11 = *(*(v10 - 8) + 32);

  return v11(&a5[v9], a4, v10);
}

uint64_t type metadata accessor for AwardLockupState()
{
  result = qword_2810E33C0;
  if (!qword_2810E33C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B421D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardLockupLayout();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AwardLockupState.templateUniqueName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AwardLockupState.layout.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AwardLockupState() + 20);

  return sub_24B421EA4(a1, v3);
}

uint64_t sub_24B421EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardLockupLayout();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AwardLockupState.description.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AwardLockupState() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AwardLockupState.description.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AwardLockupState() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t sub_24B4220A8()
{
  v1 = 0x74756F79616CLL;
  if (*v0 != 1)
  {
    v1 = 0x7470697263736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_24B42210C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B422E24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B422134(uint64_t a1)
{
  v2 = sub_24B4223C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B422170(uint64_t a1)
{
  v2 = sub_24B4223C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardLockupState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8AE0, &qword_24B4610A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4223C0();
  sub_24B45928C();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_24B45914C();
  if (!v2)
  {
    v13 = type metadata accessor for AwardLockupState();
    v14 = *(v13 + 20);
    v17[14] = 1;
    type metadata accessor for AwardLockupLayout();
    sub_24B4228E8(&qword_27EFE8AF0);
    sub_24B45918C();
    v15 = *(v13 + 24);
    v17[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
    sub_24B42292C(&qword_27EFE8AF8);
    sub_24B45918C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B4223C0()
{
  result = qword_27EFE8AE8;
  if (!qword_27EFE8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8AE8);
  }

  return result;
}

unint64_t sub_24B422414()
{
  result = qword_27EFE8B00;
  if (!qword_27EFE8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B00);
  }

  return result;
}

unint64_t sub_24B422468()
{
  result = qword_27EFE8B08;
  if (!qword_27EFE8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B08);
  }

  return result;
}

uint64_t AwardLockupState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v31 = *(v34 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v29 - v4;
  v5 = type metadata accessor for AwardLockupLayout();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8B10, &qword_24B4610B0);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = type metadata accessor for AwardLockupState();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4223C0();
  v37 = v12;
  v18 = v38;
  sub_24B45927C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = a1;
  v30 = v16;
  v41 = 0;
  v20 = v35;
  v21 = sub_24B4590AC();
  v22 = v30;
  *v30 = v21;
  v22[1] = v23;
  v38 = v23;
  v40 = 1;
  sub_24B4228E8(&qword_27EFE8B18);
  v24 = v8;
  sub_24B4590EC();
  v25 = v30;
  sub_24B421D80(v24, v30 + *(v13 + 20));
  v39 = 2;
  sub_24B42292C(&qword_27EFE8B20);
  v27 = v33;
  v26 = v34;
  sub_24B4590EC();
  (*(v20 + 8))(v37, v36);
  (*(v31 + 32))(v25 + *(v13 + 24), v27, v26);
  sub_24B4229A4(v25, v32, type metadata accessor for AwardLockupState);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_24B422A0C(v25, type metadata accessor for AwardLockupState);
}

uint64_t sub_24B4228E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AwardLockupLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B42292C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7DB8, &qword_24B4610A0);
    sub_24B422414();
    sub_24B422468();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B4229A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B422A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static AwardLockupState.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24B4591AC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for AwardLockupState();
  if (!_s13FitnessAwards17AwardLockupLayoutV2eeoiySbAC_ACtFZ_0((a1 + *(v5 + 20)), (a2 + *(v5 + 20))))
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = sub_24B3FB720();

  return MEMORY[0x282159AE8](a1 + v6, a2 + v6, &type metadata for AwardDescription, v7);
}

uint64_t sub_24B422B4C(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_24B4591AC() & 1) == 0 || !_s13FitnessAwards17AwardLockupLayoutV2eeoiySbAC_ACtFZ_0((a1 + *(a3 + 20)), (a2 + *(a3 + 20))))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = sub_24B3FB720();

  return MEMORY[0x282159AE8](a1 + v7, a2 + v7, &type metadata for AwardDescription, v8);
}

void sub_24B422C1C()
{
  type metadata accessor for AwardLockupLayout();
  if (v0 <= 0x3F)
  {
    sub_24B422CB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B422CB0()
{
  if (!qword_2810E27D8)
  {
    sub_24B3FB720();
    v0 = sub_24B458D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E27D8);
    }
  }
}

unint64_t sub_24B422D20()
{
  result = qword_27EFE8B28;
  if (!qword_27EFE8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B28);
  }

  return result;
}

unint64_t sub_24B422D78()
{
  result = qword_27EFE8B30;
  if (!qword_27EFE8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B30);
  }

  return result;
}

unint64_t sub_24B422DD0()
{
  result = qword_27EFE8B38;
  if (!qword_27EFE8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B38);
  }

  return result;
}

uint64_t sub_24B422E24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t AwardProgressState.init(fontDescriptor:templateUniqueName:loadState:storefrontLocale:)@<X0>(_WORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v9 = type metadata accessor for AwardProgressState();
  sub_24B3EDF64(a4, a6 + *(v9 + 24));
  v10 = *(v9 + 28);
  v11 = sub_24B45839C();
  v12 = *(*(v11 - 8) + 32);

  return v12(a6 + v10, a5, v11);
}

uint64_t type metadata accessor for AwardProgressState()
{
  result = qword_2810E30E8;
  if (!qword_2810E30E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardProgressState.templateUniqueName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AwardProgressState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AwardProgressState() + 24);

  return sub_24B423104(a1, v3);
}

uint64_t sub_24B423104(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardProgressLoadState();
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t AwardProgressState.storefrontLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AwardProgressState() + 28);
  v4 = sub_24B45839C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AwardProgressState.storefrontLocale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AwardProgressState() + 28);
  v4 = sub_24B45839C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t sub_24B4232F0()
{
  v1 = 0x63736544746E6F66;
  v2 = 0x7461745364616F6CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B423380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4243F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4233A8(uint64_t a1)
{
  v2 = sub_24B4236CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4233E4(uint64_t a1)
{
  v2 = sub_24B4236CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardProgressState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8B40, &qword_24B461280);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4236CC();
  sub_24B45928C();
  v18 = *v3;
  v17[13] = 0;
  sub_24B423720();
  sub_24B45918C();
  if (!v2)
  {
    v12 = *(v3 + 1);
    v13 = *(v3 + 2);
    v17[12] = 1;
    sub_24B45914C();
    v14 = type metadata accessor for AwardProgressState();
    v15 = *(v14 + 24);
    v17[11] = 2;
    type metadata accessor for AwardProgressLoadState();
    sub_24B4241D4(&qword_27EFE8B58, type metadata accessor for AwardProgressLoadState);
    sub_24B45918C();
    v16 = *(v14 + 28);
    v17[10] = 3;
    sub_24B45839C();
    sub_24B4241D4(&qword_27EFE8B60, MEMORY[0x277CC9788]);
    sub_24B45918C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B4236CC()
{
  result = qword_27EFE8B48;
  if (!qword_27EFE8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B48);
  }

  return result;
}

unint64_t sub_24B423720()
{
  result = qword_27EFE8B50;
  if (!qword_27EFE8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B50);
  }

  return result;
}

uint64_t AwardProgressState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v33 = sub_24B45839C();
  v29 = *(v33 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v33);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardProgressLoadState();
  v6 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8B68, &qword_24B461288);
  v32 = *(v34 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v11 = &v29 - v10;
  v12 = type metadata accessor for AwardProgressState();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24B4236CC();
  v18 = v35;
  sub_24B45927C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v35 = v8;
  v19 = v32;
  v20 = v33;
  v21 = v15;
  v40 = 0;
  sub_24B423C18();
  v22 = v34;
  sub_24B4590EC();
  v23 = v21;
  *v21 = v41;
  v39 = 1;
  *(v21 + 1) = sub_24B4590AC();
  *(v21 + 2) = v24;
  v38 = 2;
  sub_24B4241D4(&qword_27EFE8B78, type metadata accessor for AwardProgressLoadState);
  v25 = v35;
  sub_24B4590EC();
  sub_24B3EDF64(v25, v23 + *(v12 + 24));
  v37 = 3;
  sub_24B4241D4(&qword_27EFE8B80, MEMORY[0x277CC9788]);
  v26 = v23;
  v27 = v31;
  sub_24B4590EC();
  (*(v19 + 8))(v11, v22);
  (*(v29 + 32))(v26 + *(v12 + 28), v27, v20);
  sub_24B423C6C(v26, v30, type metadata accessor for AwardProgressState);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_24B423CD4(v26, type metadata accessor for AwardProgressState);
}

unint64_t sub_24B423C18()
{
  result = qword_27EFE8B70;
  if (!qword_27EFE8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B70);
  }

  return result;
}

uint64_t sub_24B423C6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B423CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AwardProgressState.hash(into:)()
{
  v1 = sub_24B45836C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardProgressLoadState();
  v7 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[1];
  MEMORY[0x24C2403C0](*v0);
  MEMORY[0x24C2403C0](v10);
  v11 = *(v0 + 1);
  v12 = *(v0 + 2);
  sub_24B458E6C();
  v13 = type metadata accessor for AwardProgressState();
  sub_24B423C6C(&v0[*(v13 + 24)], v9, type metadata accessor for AwardProgressLoadState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(v9 + 1);
      v18[0] = *v9;
      v18[1] = v15;
      v19 = v9[32];
      MEMORY[0x24C2403C0](2);
      AwardProgress.hash(into:)();
      sub_24B3EE5B0(v18);
    }

    else
    {
      MEMORY[0x24C2403C0](0);
    }
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x24C2403C0](1);
    sub_24B4241D4(&qword_27EFE7E70, MEMORY[0x277CC95F0]);
    sub_24B458D9C();
    (*(v2 + 8))(v5, v1);
  }

  v16 = *(v13 + 28);
  sub_24B45839C();
  sub_24B4241D4(&qword_27EFE8B88, MEMORY[0x277CC9788]);
  return sub_24B458D9C();
}

uint64_t AwardProgressState.hashValue.getter()
{
  sub_24B45922C();
  AwardProgressState.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B42404C()
{
  sub_24B45922C();
  AwardProgressState.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B424090()
{
  sub_24B45922C();
  AwardProgressState.hash(into:)();
  return sub_24B45926C();
}

uint64_t _s13FitnessAwards18AwardProgressStateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v5 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
    if (v5 || (sub_24B4591AC() & 1) != 0)
    {
      v6 = type metadata accessor for AwardProgressState();
      if (_s13FitnessAwards22AwardProgressLoadStateO2eeoiySbAC_ACtFZ_0(&a1[*(v6 + 24)], &a2[*(v6 + 24)]))
      {
        v7 = *(v6 + 28);

        JUMPOUT(0x24C23F500);
      }
    }
  }

  return 0;
}

uint64_t sub_24B4241D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B424244()
{
  result = type metadata accessor for AwardProgressLoadState();
  if (v1 <= 0x3F)
  {
    result = sub_24B45839C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24B4242F4()
{
  result = qword_27EFE8B90;
  if (!qword_27EFE8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B90);
  }

  return result;
}

unint64_t sub_24B42434C()
{
  result = qword_27EFE8B98;
  if (!qword_27EFE8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B98);
  }

  return result;
}

unint64_t sub_24B4243A4()
{
  result = qword_27EFE8BA0;
  if (!qword_27EFE8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8BA0);
  }

  return result;
}

uint64_t sub_24B4243F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63736544746E6F66 && a2 == 0xEE00726F74706972;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B466F50 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t PlaceholderReferenceType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6472617761;
    v6 = 0xD000000000000013;
    if (a1 != 2)
    {
      v6 = 0x7974696C61646F6DLL;
    }

    if (a1)
    {
      v5 = 0x6169726F74696465;
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
    v1 = 7367028;
    v2 = 0x72656E69617274;
    if (a1 != 7)
    {
      v2 = 0x74756F6B726F77;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7473696C79616C70;
    if (a1 != 4)
    {
      v3 = 0x6D6172676F7270;
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

uint64_t sub_24B42469C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = PlaceholderReferenceType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PlaceholderReferenceType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B4591AC();
  }

  return v8 & 1;
}

uint64_t sub_24B424724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s13FitnessAwards24PlaceholderReferenceTypeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_24B424754@<X0>(unint64_t *a1@<X8>)
{
  result = PlaceholderReferenceType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B424830()
{
  v1 = *v0;
  sub_24B45922C();
  PlaceholderReferenceType.rawValue.getter(v1);
  sub_24B458E6C();

  return sub_24B45926C();
}

uint64_t sub_24B424894()
{
  PlaceholderReferenceType.rawValue.getter(*v0);
  sub_24B458E6C();
}

uint64_t sub_24B4248E8()
{
  v1 = *v0;
  sub_24B45922C();
  PlaceholderReferenceType.rawValue.getter(v1);
  sub_24B458E6C();

  return sub_24B45926C();
}

uint64_t _s13FitnessAwards24PlaceholderReferenceTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_24B45904C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24B424998()
{
  result = qword_27EFE8BA8;
  if (!qword_27EFE8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8BA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaceholderReferenceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlaceholderReferenceType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B424B3C()
{
  result = qword_2810E2C68;
  if (!qword_2810E2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2C68);
  }

  return result;
}

id static NSBundle.awardsLocalization.getter()
{
  type metadata accessor for AwardsLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t AwardHeaderState.init(templateUniqueName:layout:tvLayout:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v18 = *(a4 + 32);
  v10 = *(a4 + 48);
  *a6 = a1;
  *(a6 + 1) = a2;
  v11 = type metadata accessor for AwardHeaderState();
  sub_24B424D54(a3, &a6[v11[5]]);
  v12 = &a6[v11[6]];
  v13 = *(a4 + 16);
  *v12 = *a4;
  *(v12 + 1) = v13;
  *(v12 + 2) = v18;
  *(v12 + 6) = v10;
  v14 = v11[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v16 = *(*(v15 - 8) + 32);

  return v16(&a6[v14], a5, v15);
}

uint64_t type metadata accessor for AwardHeaderState()
{
  result = qword_27EFE8BE8;
  if (!qword_27EFE8BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B424D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardHeaderLayout();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AwardHeaderState.templateUniqueName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double AwardHeaderState.tvLayout.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AwardHeaderState() + 24);
  result = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = result;
  return result;
}

uint64_t AwardHeaderState.description.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AwardHeaderState() + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AwardHeaderState.description.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AwardHeaderState() + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t sub_24B424FD4()
{
  v1 = 0x74756F79616CLL;
  v2 = 0x74756F79614C7674;
  if (*v0 != 2)
  {
    v2 = 0x7470697263736564;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B425058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B425D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B425080(uint64_t a1)
{
  v2 = sub_24B425364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4250BC(uint64_t a1)
{
  v2 = sub_24B425364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardHeaderState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8BB0, &qword_24B4615F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B425364();
  sub_24B45928C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v21) = 0;
  sub_24B45914C();
  if (!v2)
  {
    v13 = type metadata accessor for AwardHeaderState();
    v14 = v13[5];
    LOBYTE(v21) = 1;
    type metadata accessor for AwardHeaderLayout();
    sub_24B4258A4(&qword_27EFE8BC0);
    sub_24B45918C();
    v15 = v3 + v13[6];
    v16 = *(v15 + 6);
    v17 = *(v15 + 1);
    v21 = *v15;
    v22 = v17;
    v23 = *(v15 + 2);
    v24 = v16;
    v20[15] = 2;
    sub_24B4253B8();
    sub_24B45918C();
    v18 = v13[7];
    LOBYTE(v21) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
    sub_24B42292C(&qword_27EFE8AF8);
    sub_24B45918C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B425364()
{
  result = qword_27EFE8BB8;
  if (!qword_27EFE8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8BB8);
  }

  return result;
}

unint64_t sub_24B4253B8()
{
  result = qword_27EFE8BC8;
  if (!qword_27EFE8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8BC8);
  }

  return result;
}

uint64_t AwardHeaderState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v31 = *(v33 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v34 = v30 - v4;
  v5 = type metadata accessor for AwardHeaderLayout();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8BD0, &qword_24B461600);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - v11;
  v13 = type metadata accessor for AwardHeaderState();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B425364();
  v37 = v12;
  v18 = v38;
  sub_24B45927C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v8;
  v20 = v35;
  LOBYTE(v39) = 0;
  *v16 = sub_24B4590AC();
  v16[1] = v21;
  v30[1] = v21;
  v38 = v16;
  LOBYTE(v39) = 1;
  sub_24B4258A4(&qword_27EFE8BD8);
  sub_24B4590EC();
  sub_24B424D54(v19, v38 + v13[5]);
  v43 = 2;
  sub_24B4258E8();
  sub_24B4590EC();
  v22 = a1;
  v23 = v42;
  v24 = v38 + v13[6];
  v25 = v40;
  *v24 = v39;
  *(v24 + 1) = v25;
  *(v24 + 2) = v41;
  *(v24 + 6) = v23;
  LOBYTE(v39) = 3;
  sub_24B42292C(&qword_27EFE8B20);
  v26 = v33;
  v27 = v34;
  sub_24B4590EC();
  (*(v20 + 8))(v37, v36);
  v29 = v38;
  (*(v31 + 32))(v38 + v13[7], v27, v26);
  sub_24B42593C(v29, v32, type metadata accessor for AwardHeaderState);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_24B4259A4(v29, type metadata accessor for AwardHeaderState);
}

uint64_t sub_24B4258A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AwardHeaderLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B4258E8()
{
  result = qword_27EFE8BE0;
  if (!qword_27EFE8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8BE0);
  }

  return result;
}

uint64_t sub_24B42593C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4259A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13FitnessAwards16AwardHeaderStateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24B4591AC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for AwardHeaderState();
  if (!_s13FitnessAwards17AwardHeaderLayoutV2eeoiySbAC_ACtFZ_0((a1 + v5[5]), (a2 + v5[5])))
  {
    return 0;
  }

  v6 = a1 + v5[6];
  v7 = *(v6 + 6);
  v8 = *(v6 + 1);
  v17[0] = *v6;
  v17[1] = v8;
  v17[2] = *(v6 + 2);
  v18 = v7;
  v9 = a2 + v5[6];
  v10 = *(v9 + 6);
  v11 = *(v9 + 1);
  v15[0] = *v9;
  v15[1] = v11;
  v15[2] = *(v9 + 2);
  v16 = v10;
  if (!_s13FitnessAwards19TVAwardHeaderLayoutV2eeoiySbAC_ACtFZ_0(v17, v15))
  {
    return 0;
  }

  v12 = v5[7];
  v13 = sub_24B3FB720();

  return MEMORY[0x282159AE8](a1 + v12, a2 + v12, &type metadata for AwardDescription, v13);
}

void sub_24B425B70()
{
  type metadata accessor for AwardHeaderLayout();
  if (v0 <= 0x3F)
  {
    sub_24B422CB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24B425C20()
{
  result = qword_27EFE8BF8;
  if (!qword_27EFE8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8BF8);
  }

  return result;
}

unint64_t sub_24B425C78()
{
  result = qword_27EFE8C00;
  if (!qword_27EFE8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C00);
  }

  return result;
}

unint64_t sub_24B425CD0()
{
  result = qword_27EFE8C08;
  if (!qword_27EFE8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C08);
  }

  return result;
}

uint64_t sub_24B425D24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74756F79614C7674 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 3;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t AwardRemoteParticipantStatusMonitorState.earnedLoadStates.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AwardRemoteParticipantStatusMonitorState.imageLoadStates.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t AwardRemoteParticipantStatusMonitorState.progressLoadStates.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t AwardRemoteParticipantStatusMonitorState.suggestedWorkoutsStates.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t type metadata accessor for AwardRemoteParticipantStatusMonitorState()
{
  result = qword_27EFE8CB8;
  if (!qword_27EFE8CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardRemoteParticipantStatusMonitorState.toastLoadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AwardRemoteParticipantStatusMonitorState() + 32);

  return sub_24B4260C0(a1, v3);
}

uint64_t sub_24B4260C0(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardToastLoadState();
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t AwardRemoteParticipantStatusMonitorState.init(earnedLoadStates:imageLoadStates:progressLoadStates:suggestedWorkoutsStates:toastLoadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for AwardRemoteParticipantStatusMonitorState() + 32);

  return sub_24B3D00C4(a5, v7);
}

unint64_t sub_24B4261C0()
{
  v1 = *v0;
  v2 = 0x616F4C6567616D69;
  v3 = 0xD000000000000017;
  if (v1 != 3)
  {
    v3 = 0x616F4C7473616F74;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_24B426280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B42787C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4262A8(uint64_t a1)
{
  v2 = sub_24B426FC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4262E4(uint64_t a1)
{
  v2 = sub_24B426FC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardRemoteParticipantStatusMonitorState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C10, &qword_24B4617D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B426FC4();
  sub_24B45928C();
  v14 = *v3;
  HIBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C20, &qword_24B4617D8);
  sub_24B427018();
  sub_24B45918C();
  if (!v2)
  {
    v14 = v3[1];
    HIBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C30, &unk_24B4617E0);
    sub_24B4270D4(&qword_27EFE8C38, sub_24B427158);
    sub_24B45918C();
    v14 = v3[2];
    HIBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C50, &qword_24B4617F0);
    sub_24B427244();
    sub_24B45918C();
    v14 = v3[3];
    HIBYTE(v13) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C60, &qword_24B4617F8);
    sub_24B427300(&qword_27EFE8C68, sub_24B3D898C);
    sub_24B45918C();
    v11 = *(type metadata accessor for AwardRemoteParticipantStatusMonitorState() + 32);
    LOBYTE(v14) = 4;
    type metadata accessor for AwardToastLoadState();
    sub_24B4276F4(&qword_27EFE8C70, type metadata accessor for AwardToastLoadState);
    sub_24B45918C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AwardRemoteParticipantStatusMonitorState.hash(into:)(__int128 *a1)
{
  v3 = sub_24B45836C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardToastLoadState();
  v9 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B41B3E4(a1, *v1);
  sub_24B41AB64(a1, v1[1]);
  sub_24B41A504(a1, v1[2]);
  sub_24B41A114(a1, v1[3]);
  v12 = type metadata accessor for AwardRemoteParticipantStatusMonitorState();
  sub_24B4275E8(v1 + *(v12 + 32), v11, type metadata accessor for AwardToastLoadState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v11;
      v15 = *(v11 + 1);
      v16 = *(v11 + 2);
      v17 = *(v11 + 3);
      v18 = *(v11 + 4);
      v19 = *(v11 + 5);
      v20 = v11[48];
      MEMORY[0x24C2403C0](2);
      v22[1] = v14;
      v22[2] = v15;
      v22[3] = v16;
      v22[4] = v17;
      v22[5] = v18;
      v22[6] = v19;
      v23 = v20;
      AwardToastDetail.hash(into:)(a1);
    }

    else
    {
      return MEMORY[0x24C2403C0](0);
    }
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    MEMORY[0x24C2403C0](1);
    sub_24B4276F4(&qword_27EFE7E70, MEMORY[0x277CC95F0]);
    sub_24B458D9C();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t AwardRemoteParticipantStatusMonitorState.hashValue.getter()
{
  sub_24B45922C();
  AwardRemoteParticipantStatusMonitorState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t AwardRemoteParticipantStatusMonitorState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  State = type metadata accessor for AwardToastLoadState();
  v4 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C78, &qword_24B461800);
  v25 = *(v27 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v9 = v23 - v8;
  v10 = type metadata accessor for AwardRemoteParticipantStatusMonitorState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B426FC4();
  v26 = v9;
  v15 = v28;
  sub_24B45927C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v6;
  v16 = v25;
  v17 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C20, &qword_24B4617D8);
  v29 = 0;
  sub_24B427384();
  v18 = v27;
  v19 = v26;
  sub_24B4590EC();
  v23[1] = v30;
  *v17 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C30, &unk_24B4617E0);
  v29 = 1;
  sub_24B4270D4(&qword_27EFE8C88, sub_24B427440);
  sub_24B4590EC();
  v17[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C50, &qword_24B4617F0);
  v29 = 2;
  sub_24B42752C();
  v23[0] = 0;
  sub_24B4590EC();
  v20 = a1;
  v17[2] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C60, &qword_24B4617F8);
  v29 = 3;
  sub_24B427300(&qword_27EFE8CA8, sub_24B3D8E2C);
  sub_24B4590EC();
  v17[3] = v30;
  LOBYTE(v30) = 4;
  sub_24B4276F4(&qword_27EFE8CB0, type metadata accessor for AwardToastLoadState);
  v21 = v28;
  sub_24B4590EC();
  (*(v16 + 8))(v19, v18);
  sub_24B3D00C4(v21, v17 + *(v10 + 32));
  sub_24B4275E8(v17, v24, type metadata accessor for AwardRemoteParticipantStatusMonitorState);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_24B427650(v17);
}

uint64_t sub_24B426EA8()
{
  sub_24B45922C();
  AwardRemoteParticipantStatusMonitorState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B426EEC()
{
  sub_24B45922C();
  AwardRemoteParticipantStatusMonitorState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t _s13FitnessAwards40AwardRemoteParticipantStatusMonitorStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  if ((sub_24B3D0270(*a1, *a2) & 1) == 0 || (sub_24B3D1534(*(a1 + 8), a2[1]) & 1) == 0 || (sub_24B3D0A7C(*(a1 + 16), a2[2]) & 1) == 0 || (sub_24B3D1A04(*(a1 + 24), a2[3]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for AwardRemoteParticipantStatusMonitorState() + 32);

  return _s13FitnessAwards19AwardToastLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v4, a2 + v4);
}

unint64_t sub_24B426FC4()
{
  result = qword_27EFE8C18;
  if (!qword_27EFE8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C18);
  }

  return result;
}

unint64_t sub_24B427018()
{
  result = qword_27EFE8C28;
  if (!qword_27EFE8C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8C20, &qword_24B4617D8);
    sub_24B4276F4(&qword_27EFE7918, type metadata accessor for AwardEarnedLoadState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C28);
  }

  return result;
}

uint64_t sub_24B4270D4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8C30, &unk_24B4617E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B427158()
{
  result = qword_27EFE8C40;
  if (!qword_27EFE8C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8090, &qword_24B45C2C0);
    sub_24B4276F4(&qword_2810E2768, type metadata accessor for CGSize);
    sub_24B4276F4(&qword_27EFE8C48, type metadata accessor for AwardImageLoadState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C40);
  }

  return result;
}

unint64_t sub_24B427244()
{
  result = qword_27EFE8C58;
  if (!qword_27EFE8C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8C50, &qword_24B4617F0);
    sub_24B4276F4(&qword_27EFE8B58, type metadata accessor for AwardProgressLoadState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C58);
  }

  return result;
}

uint64_t sub_24B427300(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8C60, &qword_24B4617F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B427384()
{
  result = qword_27EFE8C80;
  if (!qword_27EFE8C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8C20, &qword_24B4617D8);
    sub_24B4276F4(&qword_27EFE7938, type metadata accessor for AwardEarnedLoadState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C80);
  }

  return result;
}

unint64_t sub_24B427440()
{
  result = qword_27EFE8C90;
  if (!qword_27EFE8C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8090, &qword_24B45C2C0);
    sub_24B4276F4(&qword_27EFE7A60, type metadata accessor for CGSize);
    sub_24B4276F4(&qword_27EFE8C98, type metadata accessor for AwardImageLoadState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C90);
  }

  return result;
}

unint64_t sub_24B42752C()
{
  result = qword_27EFE8CA0;
  if (!qword_27EFE8CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8C50, &qword_24B4617F0);
    sub_24B4276F4(&qword_27EFE8B78, type metadata accessor for AwardProgressLoadState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CA0);
  }

  return result;
}

uint64_t sub_24B4275E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B427650(uint64_t a1)
{
  v2 = type metadata accessor for AwardRemoteParticipantStatusMonitorState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4276F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B427778()
{
  result = qword_27EFE8CC8;
  if (!qword_27EFE8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CC8);
  }

  return result;
}

unint64_t sub_24B4277D0()
{
  result = qword_27EFE8CD0;
  if (!qword_27EFE8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CD0);
  }

  return result;
}

unint64_t sub_24B427828()
{
  result = qword_27EFE8CD8;
  if (!qword_27EFE8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CD8);
  }

  return result;
}

uint64_t sub_24B42787C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024B466FA0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616F4C6567616D69 && a2 == 0xEF73657461745364 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B466FC0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B466FE0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616F4C7473616F74 && a2 == 0xEE00657461745364)
  {

    return 4;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

__n128 AwardHeaderFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for AwardHeaderFeature() + 20);
  sub_24B45835C();
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata accessor for AwardHeaderFeature()
{
  result = qword_27EFE8D00;
  if (!qword_27EFE8D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardHeaderFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, void **a3)
{
  v34 = a3;
  v4 = type metadata accessor for AwardHeaderFeature();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F30, &qword_24B45BCB0);
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v30 - v9;
  v11 = *a2;
  v12 = a2[1];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
  v30 = v13[12];
  v14 = v13[16];
  v15 = v13[20];
  v16 = &v10[v13[24]];
  v35 = v11;
  v36 = v12;
  v37 = 0;
  sub_24B427E30();
  swift_bridgeObjectRetain_n();
  sub_24B458F9C();
  v17 = *MEMORY[0x277D04400];
  v18 = sub_24B458D4C();
  (*(*(v18 - 8) + 104))(&v10[v14], v17, v18);
  v19 = *MEMORY[0x277D043E0];
  v20 = sub_24B458D3C();
  (*(*(v20 - 8) + 104))(&v10[v15], v19, v20);
  sub_24B428140(v33, v6);
  v21 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v22 = v31;
  v23 = swift_allocObject();
  *(v23 + 16) = v11;
  *(v23 + 24) = v12;
  v24 = v23 + v21;
  v25 = v34;
  sub_24B4281A4(v6, v24);
  *v16 = &unk_24B461A28;
  *(v16 + 1) = v23;
  sub_24B458EFC();
  (*(v7 + 104))(v10, *MEMORY[0x277D043B0], v22);
  v26 = *v25;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_24B3F14C0(0, v26[2] + 1, 1, v26);
  }

  v28 = v26[2];
  v27 = v26[3];
  if (v28 >= v27 >> 1)
  {
    v26 = sub_24B3F14C0(v27 > 1, v28 + 1, 1, v26);
  }

  v26[2] = v28 + 1;
  result = (*(v7 + 32))(v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v28, v10, v22);
  *v25 = v26;
  return result;
}

unint64_t sub_24B427E30()
{
  result = qword_27EFE8CE0;
  if (!qword_27EFE8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CE0);
  }

  return result;
}

uint64_t sub_24B427E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_24B458EEC();
  v4[5] = sub_24B458EDC();
  v6 = sub_24B458EBC();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24B427F20, v6, v5);
}

uint64_t sub_24B427F20()
{
  v18 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);

  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24B3F17BC(v6, v5, &v17);
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardHeaderFeature] Resolving award description state on viewAppeared for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x24C2408A0](v8, -1, -1);
    MEMORY[0x24C2408A0](v7, -1, -1);
  }

  v9 = v0[4];
  v10 = v9[1];
  v16 = (*v9 + **v9);
  v11 = (*v9)[1];
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_24B40BE9C;
  v14 = v0[2];
  v13 = v0[3];

  return v16(v14, v13);
}

uint64_t sub_24B428140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardHeaderFeature();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4281A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardHeaderFeature();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B428208(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardHeaderFeature() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B3F1E60;

  return sub_24B427E84(a1, v6, v7, v1 + v5);
}

unint64_t sub_24B428300()
{
  result = qword_27EFE8CE8;
  if (!qword_27EFE8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CE8);
  }

  return result;
}

unint64_t sub_24B428358()
{
  result = qword_27EFE8CF0;
  if (!qword_27EFE8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CF0);
  }

  return result;
}

unint64_t sub_24B4283B0()
{
  result = qword_27EFE8CF8;
  if (!qword_27EFE8CF8)
  {
    type metadata accessor for AwardHeaderState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CF8);
  }

  return result;
}

uint64_t sub_24B428430()
{
  result = sub_24B45836C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B4284CC()
{
  result = qword_27EFE8D10;
  if (!qword_27EFE8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8D10);
  }

  return result;
}

uint64_t sub_24B428520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B458F6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_24B42858C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8E10, qword_24B461C90);
  sub_24B3DF11C(&qword_27EFE8E18, &qword_27EFE8E10, qword_24B461C90);

  return sub_24B45851C();
}

uint64_t sub_24B42862C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_24B4583AC();
}

uint64_t (*sub_24B4286CC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 16);
  swift_getFunctionTypeMetadata1();
  sub_24B4583CC();
  sub_24B4583BC();
  v4 = swift_allocObject();
  v5 = *(a1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 32) = v7;
  return sub_24B42D3A4;
}

uint64_t AwardToastView.init(store:imageViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *a7 = sub_24B3DB5A8;
  *(a7 + 8) = v14;
  *(a7 + 16) = 0;
  v15 = a7 + *(type metadata accessor for AwardToastView() + 36);
  return sub_24B42862C(a3, a4, a5, a6);
}

uint64_t AwardToastView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v191 = a2;
  v185 = sub_24B45873C();
  v3 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v185);
  v184 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B4584FC();
  v189 = *(v5 - 8);
  v190 = v5;
  v6 = *(v189 + 64);
  MEMORY[0x28223BE20](v5);
  v187 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8D18, &qword_24B461BA0);
  v188 = *(v202 - 8);
  v8 = *(v188 + 64);
  v9 = MEMORY[0x28223BE20](v202);
  v186 = &v136 - v10;
  v204 = a1;
  v11 = *(a1 - 8);
  a1 -= 8;
  v183 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v203 = v13;
  v182 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24B4584BC();
  v180 = *(v14 - 8);
  v181 = v14;
  v15 = *(v180 + 64);
  MEMORY[0x28223BE20](v14);
  v179 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24B458C8C();
  v177 = *(v17 - 8);
  v178 = v17;
  v18 = *(v177 + 64);
  MEMORY[0x28223BE20](v17);
  v176 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8D20, &qword_24B461BA8);
  v201 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v192 = &v136 - v22;
  v207 = *(a1 + 24);
  sub_24B4585BC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D28, &qword_24B461BB0);
  sub_24B4585BC();
  v24 = sub_24B458F6C();
  v25 = sub_24B42BE44();
  v211 = v23;
  v212 = MEMORY[0x277D83B88];
  v213 = v24;
  v214 = v25;
  v215 = MEMORY[0x277D83B98];
  sub_24B458C5C();
  v205 = *(a1 + 32);
  v235 = v205;
  v236 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v234 = MEMORY[0x277CDF748];
  v232 = swift_getWitnessTable();
  v231 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B458C3C();
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D50, &qword_24B461BC0);
  swift_getTupleTypeMetadata3();
  v198 = sub_24B458CDC();
  v197 = swift_getWitnessTable();
  v26 = sub_24B458BFC();
  v199 = *(v26 - 8);
  v27 = *(v199 + 64);
  MEMORY[0x28223BE20](v26);
  v196 = &v136 - v28;
  v194 = v26;
  v29 = sub_24B4585BC();
  v167 = *(v29 - 8);
  v30 = *(v167 + 64);
  MEMORY[0x28223BE20](v29);
  v195 = &v136 - v31;
  v193 = swift_getWitnessTable();
  v229 = v193;
  v230 = MEMORY[0x277CDF918];
  v32 = swift_getWitnessTable();
  v33 = sub_24B3DF11C(&qword_27EFE8D58, &qword_27EFE8D20, &qword_24B461BA8);
  v211 = v29;
  v212 = v20;
  v213 = v32;
  v214 = v33;
  v200 = MEMORY[0x277CE0D08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v157 = *(OpaqueTypeMetadata2 - 8);
  v35 = *(v157 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v154 = &v136 - v36;
  v158 = v37;
  v38 = sub_24B4585BC();
  v166 = *(v38 - 8);
  v39 = *(v166 + 64);
  MEMORY[0x28223BE20](v38);
  v163 = &v136 - v40;
  v41 = sub_24B4585BC();
  v169 = *(v41 - 8);
  v42 = *(v169 + 64);
  MEMORY[0x28223BE20](v41);
  v165 = &v136 - v43;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8050, &qword_24B45C190);
  v44 = sub_24B4585BC();
  v172 = *(v44 - 8);
  v45 = *(v172 + 64);
  MEMORY[0x28223BE20](v44);
  v168 = &v136 - v46;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D60, &qword_24B461BC8);
  v47 = sub_24B4585BC();
  v174 = *(v47 - 8);
  v48 = *(v174 + 64);
  MEMORY[0x28223BE20](v47);
  v173 = &v136 - v49;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8058, &qword_24B45C198);
  v50 = sub_24B4585BC();
  v170 = v29;
  v211 = v29;
  v212 = v201;
  v51 = v192;
  v151 = v33;
  v152 = v32;
  v213 = v32;
  v214 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v227 = OpaqueTypeConformance2;
  v228 = MEMORY[0x277CDFC60];
  v141 = v38;
  v138 = swift_getWitnessTable();
  v225 = v138;
  v226 = MEMORY[0x277CDF678];
  v164 = v41;
  v52 = swift_getWitnessTable();
  v53 = sub_24B3DF11C(&qword_2810E2810, &qword_27EFE8050, &qword_24B45C190);
  v139 = v52;
  v223 = v52;
  v224 = v53;
  v171 = v44;
  v54 = swift_getWitnessTable();
  v55 = sub_24B3DF11C(&qword_27EFE8D68, &qword_27EFE8D60, &qword_24B461BC8);
  v140 = v54;
  v221 = v54;
  v222 = v55;
  v56 = swift_getWitnessTable();
  v57 = sub_24B3DF11C(&qword_2810E28E0, &qword_27EFE8058, &qword_24B45C198);
  v219 = v56;
  v220 = v57;
  v58 = swift_getWitnessTable();
  v59 = MEMORY[0x277CE1350];
  v211 = v47;
  v212 = MEMORY[0x277CE1350];
  v213 = v50;
  v214 = v50;
  v60 = MEMORY[0x277CE1340];
  v215 = v56;
  v216 = MEMORY[0x277CE1340];
  v217 = v58;
  v218 = v58;
  v61 = swift_getOpaqueTypeMetadata2();
  v147 = *(v61 - 8);
  v62 = *(v147 + 64);
  MEMORY[0x28223BE20](v61);
  v144 = v56;
  v145 = &v136 - v63;
  v175 = v47;
  v211 = v47;
  v212 = v59;
  v213 = v50;
  v162 = v50;
  v214 = v50;
  v215 = v56;
  v216 = v60;
  v217 = v58;
  v218 = v58;
  v64 = swift_getOpaqueTypeConformance2();
  v211 = v61;
  v212 = v64;
  v65 = swift_getOpaqueTypeMetadata2();
  v148 = *(v65 - 8);
  v66 = *(v148 + 64);
  MEMORY[0x28223BE20](v65);
  v146 = &v136 - v67;
  v149 = v61;
  v211 = v61;
  v142 = v64;
  v212 = v64;
  v68 = swift_getOpaqueTypeConformance2();
  v211 = v65;
  v212 = v68;
  v69 = swift_getOpaqueTypeMetadata2();
  v153 = *(v69 - 8);
  v70 = *(v153 + 64);
  MEMORY[0x28223BE20](v69);
  v200 = &v136 - v71;
  v150 = v65;
  v211 = v65;
  v143 = v68;
  v212 = v68;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = sub_24B3DF11C(&qword_27EFE8D70, &qword_27EFE8D18, &qword_24B461BA0);
  v211 = v69;
  v212 = v202;
  v159 = v72;
  v213 = v72;
  v156 = v73;
  v214 = v73;
  v74 = swift_getOpaqueTypeMetadata2();
  v160 = *(v74 - 8);
  v161 = v74;
  v75 = *(v160 + 64);
  v76 = MEMORY[0x28223BE20](v74);
  v78 = &v136 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v155 = &v136 - v79;
  v208 = v207;
  v209 = v205;
  v210 = v206;
  sub_24B4586BC();
  v80 = v196;
  sub_24B458BEC();
  sub_24B4587BC();
  v81 = v194;
  v82 = v195;
  sub_24B458A9C();
  (*(v199 + 8))(v80, v81);
  v83 = *MEMORY[0x277CDFA10];
  v84 = sub_24B45859C();
  (*(*(v84 - 8) + 104))(v51, v83, v84);
  sub_24B42CFC8(&qword_27EFE8D78, MEMORY[0x277CDFA28]);
  result = sub_24B458DAC();
  if (result)
  {
    v196 = v78;
    v86 = v154;
    v87 = v170;
    sub_24B4589FC();
    sub_24B3DF4F0(v51, &qword_27EFE8D20, &qword_24B461BA8);
    (*(v167 + 8))(v82, v87);
    sub_24B458CBC();
    v88 = v158;
    v89 = v163;
    sub_24B458A5C();
    (*(v157 + 8))(v86, v88);
    sub_24B42858C();
    swift_getKeyPath();
    sub_24B458D5C();

    sub_24B458CBC();
    v90 = v165;
    v91 = v141;
    sub_24B458A4C();
    (*(v166 + 8))(v89, v91);
    v92 = v176;
    sub_24B458C7C();
    sub_24B4587CC();
    v93 = v168;
    v94 = v164;
    v95 = v178;
    sub_24B45897C();
    (*(v177 + 8))(v92, v95);
    (*(v169 + 8))(v90, v94);
    swift_getKeyPath();
    v96 = *MEMORY[0x277CDF3C0];
    v195 = v69;
    v98 = v179;
    v97 = v180;
    v99 = v181;
    (*(v180 + 104))(v179, v96, v181);
    v100 = v173;
    v101 = v171;
    sub_24B4589AC();

    (*(v97 + 8))(v98, v99);
    (*(v172 + 8))(v93, v101);
    v102 = sub_24B458C9C();
    v103 = MEMORY[0x28223BE20](v102);
    v104 = v205;
    MEMORY[0x28223BE20](v103);
    v106 = v105;
    swift_checkMetadataState();
    v107 = v145;
    v108 = v175;
    sub_24B458ADC();
    (*(v174 + 8))(v100, v108);
    v109 = v182;
    v110 = v183;
    v111 = *(v183 + 16);
    v199 = v183 + 16;
    v201 = v111;
    v112 = v206;
    v113 = v204;
    v111(v182, v206, v204);
    v198 = *(v110 + 80);
    v114 = (v198 + 32) & ~v198;
    v115 = swift_allocObject();
    *(v115 + 16) = v106;
    *(v115 + 24) = v104;
    v197 = *(v110 + 32);
    v197(v115 + v114, v109, v113);
    v116 = v146;
    v117 = v149;
    sub_24B4589DC();

    (*(v147 + 8))(v107, v117);
    v118 = v204;
    v201(v109, v112, v204);
    v119 = swift_allocObject();
    v120 = v205;
    *(v119 + 16) = v207;
    *(v119 + 24) = v120;
    v197(v119 + v114, v109, v118);
    v121 = v150;
    sub_24B458A1C();

    (*(v148 + 8))(v116, v121);
    sub_24B45876C();
    v122 = v187;
    sub_24B4584CC();
    v201(v109, v206, v118);
    v123 = swift_allocObject();
    *(v123 + 16) = v207;
    *(v123 + 24) = v120;
    v197(v123 + v114, v109, v118);
    sub_24B42CFC8(qword_27EFE8D80, MEMORY[0x277CDD730]);
    v124 = v186;
    v125 = v190;
    sub_24B458C6C();

    (*(v189 + 8))(v122, v125);
    sub_24B45850C();
    v127 = v195;
    v126 = v196;
    v128 = v202;
    v129 = v159;
    v130 = v156;
    v131 = v200;
    sub_24B458A7C();
    (*(v188 + 8))(v124, v128);
    (*(v153 + 8))(v131, v127);
    v211 = v127;
    v212 = v128;
    v213 = v129;
    v214 = v130;
    v132 = swift_getOpaqueTypeConformance2();
    v133 = v155;
    v134 = v161;
    sub_24B3ECD00(v126, v161, v132);
    v135 = *(v160 + 8);
    v135(v126, v134);
    sub_24B3ECD00(v133, v134, v132);
    return (v135)(v133, v134);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B429F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a3;
  v97 = a1;
  v92 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D28, &qword_24B461BB0);
  v7 = sub_24B4585BC();
  sub_24B4585BC();
  v8 = sub_24B458F6C();
  v9 = sub_24B42BE44();
  *&v159 = v6;
  *(&v159 + 1) = MEMORY[0x277D83B88];
  *&v160 = v8;
  *(&v160 + 1) = v9;
  *&v161 = MEMORY[0x277D83B98];
  v10 = sub_24B458C5C();
  v178 = a3;
  v179 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v176 = WitnessTable;
  v177 = MEMORY[0x277CDF748];
  v175 = swift_getWitnessTable();
  v174 = swift_getWitnessTable();
  v86 = swift_getWitnessTable();
  v88 = v10;
  v11 = sub_24B458C3C();
  v85 = *(v11 - 8);
  v12 = *(v85 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v87 = &v77 - v17;
  v80 = *(a2 - 8);
  v18 = *(v80 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v79 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v7 - 8);
  v21 = *(v82 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v81 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v83 = &v77 - v24;
  v94 = v7;
  v25 = sub_24B45872C();
  v90 = *(v25 - 8);
  v91 = v25;
  v26 = *(v90 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v89 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v98 = &v77 - v29;
  v30 = v100;
  v84 = type metadata accessor for AwardToastView();
  v31 = v97;
  sub_24B42858C();
  swift_getKeyPath();
  sub_24B458D5C();

  v32 = v159;

  v33 = v32[2];
  v93 = v33 - 1;
  v95 = a2;
  v96 = v11;
  v34 = a2;
  if (v33 == 1)
  {
    v78 = 1;
    v35 = v15;
    v37 = v32[4];
    v36 = v32[5];

    v38 = v84;
    sub_24B42858C();
    swift_getKeyPath();
    sub_24B458D5C();

    v39 = *(&v161 + 1);

    if (*(v39 + 16))
    {
      v40 = sub_24B412140(v37, v36);
      v42 = v41;

      if (v42)
      {

        v43 = (*(v39 + 56) + 16 * v40);
        v44 = *v43;
        v45 = v43[1];
        v87 = v45;
        v88 = v44;
        sub_24B41C178(v44, v45);

        v46 = v97;
        v47 = sub_24B4286CC(v38);
        v48 = v79;
        v47(v44, v45);

        sub_24B42858C();
        swift_getKeyPath();
        sub_24B458D5C();

        sub_24B42858C();
        swift_getKeyPath();
        sub_24B458D5C();

        sub_24B458CBC();
        v49 = v81;
        v50 = v95;
        sub_24B458A4C();
        (*(v80 + 8))(v48, v50);
        v51 = v83;
        v52 = v94;
        v53 = WitnessTable;
        sub_24B3ECD00(v49, v94, WitnessTable);
        v86 = *(v82 + 8);
        v86(v49, v52);
        sub_24B3ECD00(v51, v52, v53);
        swift_getWitnessTable();
        v54 = v98;
        sub_24B437B98(v49, v52);
        sub_24B41C1CC(v88, v87);
        v55 = v49;
        v56 = v54;
        v57 = v86;
        v86(v55, v52);
        result = v57(v83, v52);
        goto LABEL_8;
      }
    }

    else
    {
    }

    v34 = v95;
    v11 = v96;
    v30 = v100;
    v31 = v97;
    v15 = v35;
    v33 = v78;
  }

  v59 = sub_24B458CBC();
  MEMORY[0x28223BE20](v59);
  *(&v77 - 6) = v34;
  *(&v77 - 5) = v30;
  *(&v77 - 4) = v33;
  *(&v77 - 3) = v32;
  v46 = v31;
  *(&v77 - 2) = v31;
  sub_24B458C2C();

  v60 = swift_getWitnessTable();
  v61 = v87;
  sub_24B3ECD00(v15, v11, v60);
  v62 = v11;
  v63 = *(v85 + 8);
  v63(v15, v62);
  sub_24B3ECD00(v61, v62, v60);
  v56 = v98;
  sub_24B437C90(v15, v94, v62);
  v63(v15, v62);
  result = (v63)(v61, v62);
LABEL_8:
  if ((v93 * 7) >> 64 == (7 * v93) >> 63)
  {
    sub_24B458CBC();
    sub_24B45855C();
    v88 = v180;
    v97 = v184;
    v93 = v182;
    v94 = v185;
    v140 = 1;
    v138 = v181;
    v136 = v183;
    v64 = sub_24B4586FC();
    LOBYTE(v107) = 1;
    sub_24B42B8A4(v46, &v159);
    v149 = v167;
    v150 = v168;
    v151 = v169;
    v145 = v163;
    v146 = v164;
    v147 = v165;
    v148 = v166;
    v141 = v159;
    v142 = v160;
    v143 = v161;
    v144 = v162;
    v153[8] = v167;
    v153[9] = v168;
    v153[10] = v169;
    v153[4] = v163;
    v153[5] = v164;
    v153[6] = v165;
    v153[7] = v166;
    v153[0] = v159;
    v153[1] = v160;
    v152 = v170;
    v154 = v170;
    v153[2] = v161;
    v153[3] = v162;
    sub_24B3DF488(&v141, &v155, &qword_27EFE8E20, &qword_24B461CC8);
    sub_24B3DF4F0(v153, &qword_27EFE8E20, &qword_24B461CC8);
    *(&v134[8] + 7) = v149;
    *(&v134[9] + 7) = v150;
    *(&v134[10] + 7) = v151;
    *(&v134[4] + 7) = v145;
    *(&v134[5] + 7) = v146;
    *(&v134[6] + 7) = v147;
    *(&v134[7] + 7) = v148;
    *(v134 + 7) = v141;
    *(&v134[1] + 7) = v142;
    *(&v134[2] + 7) = v143;
    *(&v134[11] + 7) = v152;
    *(&v134[3] + 7) = v144;
    v65 = v107;
    v66 = sub_24B4587FC();
    sub_24B45848C();
    *(&v156[8] + 1) = v134[8];
    *(&v156[9] + 1) = v134[9];
    *(&v156[10] + 1) = v134[10];
    *(&v156[10] + 12) = *(&v134[10] + 11);
    *(&v156[4] + 1) = v134[4];
    *(&v156[5] + 1) = v134[5];
    *(&v156[6] + 1) = v134[6];
    *(&v156[7] + 1) = v134[7];
    *(v156 + 1) = v134[0];
    *(&v156[1] + 1) = v134[1];
    *(&v156[2] + 1) = v134[2];
    LOBYTE(v159) = 0;
    v155 = v64;
    LOBYTE(v156[0]) = v65;
    *(&v156[3] + 1) = v134[3];
    LOBYTE(v157) = v66;
    *(&v157 + 1) = v67;
    *&v158[0] = v68;
    *(&v158[0] + 1) = v69;
    *&v158[1] = v70;
    BYTE8(v158[1]) = 0;
    v72 = v89;
    v71 = v90;
    v73 = v56;
    v74 = v91;
    (*(v90 + 16))(v89, v73, v91);
    v122 = 0;
    v123 = v140;
    *v124 = *v139;
    *&v124[3] = *&v139[3];
    v125 = v88;
    v126 = v138;
    *v127 = *v137;
    *&v127[3] = *&v137[3];
    v128 = v93;
    v129 = v136;
    *v130 = *v135;
    *&v130[3] = *&v135[3];
    v131 = v97;
    v132 = v94;
    v133[0] = v72;
    v133[1] = &v122;
    v119 = v156[11];
    v120 = v157;
    v121[0] = v158[0];
    *(v121 + 9) = *(v158 + 9);
    v115 = v156[7];
    v116 = v156[8];
    v117 = v156[9];
    v118 = v156[10];
    v111 = v156[3];
    v112 = v156[4];
    v113 = v156[5];
    v114 = v156[6];
    v107 = v155;
    v108 = v156[0];
    v109 = v156[1];
    v110 = v156[2];
    v133[2] = &v107;
    sub_24B3DF488(&v155, &v159, &qword_27EFE8D50, &qword_24B461BC0);
    v106[0] = v74;
    v106[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7D08, &qword_24B45D850);
    v106[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8D50, &qword_24B461BC0);
    v75 = swift_getWitnessTable();
    v101 = WitnessTable;
    v102 = v75;
    v103 = swift_getWitnessTable();
    v104 = sub_24B3EC908();
    v105 = sub_24B42D1DC();
    sub_24B437D88(v133, 3uLL, v106);
    sub_24B3DF4F0(&v155, &qword_27EFE8D50, &qword_24B461BC0);
    v76 = *(v71 + 8);
    v76(v98, v74);
    v171 = v119;
    v172 = v120;
    v173[0] = v121[0];
    *(v173 + 9) = *(v121 + 9);
    v167 = v115;
    v168 = v116;
    v169 = v117;
    v170 = v118;
    v163 = v111;
    v164 = v112;
    v165 = v113;
    v166 = v114;
    v159 = v107;
    v160 = v108;
    v161 = v109;
    v162 = v110;
    sub_24B3DF4F0(&v159, &qword_27EFE8D50, &qword_24B461BC0);
    return (v76)(v72, v74);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B42ACA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v34 = a2;
  v36 = a4;
  v37 = a1;
  v7 = type metadata accessor for AwardToastView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D28, &qword_24B461BB0);
  v33[2] = sub_24B4585BC();
  v35 = sub_24B4585BC();
  v13 = sub_24B458F6C();
  v14 = sub_24B42BE44();
  v39 = v13;
  v40 = v12;
  v47 = v12;
  v48 = MEMORY[0x277D83B88];
  v49 = v13;
  v50 = v14;
  v38 = v14;
  v51 = MEMORY[0x277D83B98];
  v15 = sub_24B458C5C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v18);
  v24 = v33 - v23;
  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    v47 = 0;
    v48 = v22;
    v33[1] = swift_getKeyPath();
    (*(v8 + 16))(v11, v34, v7);
    v25 = *(v8 + 80);
    v34 = a5;
    v26 = (v25 + 40) & ~v25;
    v27 = swift_allocObject();
    v28 = v7;
    v29 = v36;
    *(v27 + 2) = a3;
    *(v27 + 3) = v29;
    *(v27 + 4) = v37;
    (*(v8 + 32))(&v27[v26], v11, v28);
    v45 = v29;
    v46 = MEMORY[0x277CDF678];

    WitnessTable = swift_getWitnessTable();
    v44 = MEMORY[0x277CDF748];
    v42 = swift_getWitnessTable();
    v32 = swift_getWitnessTable();
    sub_24B458C4C();
    v41 = v32;
    v30 = swift_getWitnessTable();
    sub_24B3ECD00(v20, v15, v30);
    v31 = *(v16 + 8);
    v31(v20, v15);
    sub_24B3ECD00(v24, v15, v30);
    return (v31)(v24, v15);
  }

  return result;
}

uint64_t sub_24B42B070@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v79 = a3;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v70 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24B4585BC();
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v14);
  v71 = &v64 - v16;
  v17 = sub_24B4585BC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v69 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v67 = &v64 - v22;
  v23 = sub_24B458F6C();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v78 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v25);
  v30 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v30 < *(a2 + 16))
  {
    v72 = result;
    v73 = v18;
    v74 = &v64 - v28;
    v76 = v29;
    v77 = v14;
    v75 = a6;
    v31 = a2 + 16 * v30;
    v32 = *(v31 + 32);
    v33 = *(v31 + 40);
    v80 = a5;
    v34 = type metadata accessor for AwardToastView();

    sub_24B42858C();
    swift_getKeyPath();
    sub_24B458D5C();

    v35 = v94;

    v36 = MEMORY[0x277CDF748];
    if (*(v35 + 16))
    {
      v37 = sub_24B412140(v32, v33);
      v39 = v38;

      if (v39)
      {
        v40 = (*(v35 + 56) + 16 * v37);
        v41 = *v40;
        v42 = v40[1];
        sub_24B41C178(*v40, v42);

        v43 = sub_24B4286CC(v34);
        v44 = v70;
        v66 = v41;
        v65 = v42;
        v43(v41, v42);

        sub_24B42858C();
        swift_getKeyPath();
        sub_24B458D5C();

        sub_24B42858C();
        swift_getKeyPath();
        sub_24B458D5C();

        sub_24B458CBC();
        v45 = v71;
        v46 = v80;
        sub_24B458A4C();
        result = (*(v11 + 8))(v44, a4);
        v47 = (v30 * 7) >> 64 == (7 * v30) >> 63;
        v48 = v77;
        v49 = v76;
        if (!v47)
        {
          goto LABEL_13;
        }

        v83 = v46;
        v50 = MEMORY[0x277CDF678];
        v84 = MEMORY[0x277CDF678];
        WitnessTable = swift_getWitnessTable();
        v52 = v69;
        sub_24B458A6C();
        sub_24B41C1CC(v66, v65);
        (*(v68 + 8))(v45, v48);
        v81 = WitnessTable;
        v82 = MEMORY[0x277CDF748];
        v53 = swift_getWitnessTable();
        v54 = v67;
        sub_24B3ECD00(v52, v17, v53);
        v55 = v73;
        v56 = *(v73 + 8);
        v56(v52, v17);
        sub_24B3ECD00(v54, v17, v53);
        v56(v54, v17);
        v57 = v78;
        v58 = v52;
        v36 = MEMORY[0x277CDF748];
        (*(v55 + 32))(v78, v58, v17);
        (*(v55 + 56))(v57, 0, 1, v17);
LABEL_10:
        v60 = v74;
        v61 = v72;
        (*(v49 + 16))(v74, v57, v72);
        v62 = *(v49 + 8);
        v62(v57, v61);
        v88 = v80;
        v89 = v50;
        v86 = swift_getWitnessTable();
        v87 = v36;
        v85 = swift_getWitnessTable();
        v63 = swift_getWitnessTable();
        sub_24B3ECD00(v60, v61, v63);
        return (v62)(v60, v61);
      }
    }

    else
    {
    }

    v59 = v80;
    v49 = v76;
    v57 = v78;
    (*(v73 + 56))(v78, 1, 1, v17);
    v92 = v59;
    v50 = MEMORY[0x277CDF678];
    v93 = MEMORY[0x277CDF678];
    v90 = swift_getWitnessTable();
    v91 = v36;
    swift_getWitnessTable();
    goto LABEL_10;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_24B42B8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v3 = sub_24B45888C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AwardToastView();
  sub_24B42858C();
  swift_getKeyPath();
  sub_24B458D5C();

  v8 = v97;
  v9 = v98;

  *&v90 = v8;
  *(&v90 + 1) = v9;
  v54 = sub_24B3EC9AC();
  v64 = sub_24B45892C();
  v60 = v10;
  v61 = v11;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v59 = swift_getKeyPath();
  v62 = v13 & 1;
  LOBYTE(v96) = v13 & 1;
  LOBYTE(v90) = 0;
  sub_24B45880C();
  sub_24B45882C();
  sub_24B45887C();

  v14 = v4[13];
  v53 = *MEMORY[0x277CE0A10];
  v52 = v14;
  v14(v7);
  v58 = sub_24B4588AC();

  v15 = v4[1];
  v55 = v3;
  v15(v7, v3);
  v57 = swift_getKeyPath();
  sub_24B42858C();
  swift_getKeyPath();
  sub_24B458D5C();

  v16 = v99;
  v17 = v100;

  if (v17)
  {
    *&v90 = v16;
    *(&v90 + 1) = v17;
    v56 = sub_24B45892C();
    v54 = v18;
    v20 = v19;
    v51 = v21;
    v50 = swift_getKeyPath();
    v49 = swift_getKeyPath();
    LOBYTE(v90) = v20 & 1;
    LOBYTE(v65[0]) = 0;
    sub_24B45880C();
    v22 = v55;
    v52(v7, v53, v55);
    v23 = sub_24B4588AC();

    v15(v7, v22);
    v24 = swift_getKeyPath();
    v25 = sub_24B45875C();
    v26 = v23;
    v27 = v20 & 1;
    v29 = v49;
    v28 = v50;
    v30 = v51;
    v31 = v54;
    v32 = v56;
    v33 = 2;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v30 = 0;
    v28 = 0;
    v29 = 0;
    v33 = 0;
    v24 = 0;
    v26 = 0;
    v25 = 0;
    v27 = 0;
  }

  v34 = v60;
  v35 = v61;
  *&v84 = v64;
  *(&v84 + 1) = v60;
  LOBYTE(v85) = v62;
  *(&v85 + 1) = v110[0];
  DWORD1(v85) = *(v110 + 3);
  *(&v85 + 1) = v61;
  *&v86 = KeyPath;
  BYTE8(v86) = 0;
  HIDWORD(v86) = *&v109[3];
  *(&v86 + 9) = *v109;
  v37 = v58;
  v36 = v59;
  *&v87 = v59;
  *(&v87 + 1) = 2;
  LOBYTE(v88) = 0;
  *(&v88 + 1) = *v108;
  DWORD1(v88) = *&v108[3];
  v38 = v57;
  *(&v88 + 1) = v57;
  v89 = v58;
  v78 = v84;
  v79 = v85;
  *&v83[0] = v58;
  v81 = v87;
  v82 = v88;
  v80 = v86;
  *&v90 = v32;
  *(&v90 + 1) = v31;
  *&v91 = v27;
  *(&v91 + 1) = v30;
  v92 = v28;
  v93 = 0;
  *&v94 = v29;
  *(&v94 + 1) = v33;
  *&v95[0] = 0;
  *(&v95[0] + 1) = v24;
  *&v95[1] = v26;
  DWORD2(v95[1]) = v25;
  *(&v83[1] + 8) = v91;
  *(v83 + 8) = v90;
  *(&v83[5] + 4) = *(v95 + 12);
  *(&v83[4] + 8) = v95[0];
  *(&v83[3] + 8) = v94;
  *(&v83[2] + 8) = v28;
  v39 = v84;
  v40 = v85;
  v41 = v87;
  *(a2 + 32) = v86;
  *(a2 + 48) = v41;
  *a2 = v39;
  *(a2 + 16) = v40;
  v42 = v82;
  v43 = v83[0];
  v44 = v83[2];
  *(a2 + 96) = v83[1];
  *(a2 + 112) = v44;
  *(a2 + 64) = v42;
  *(a2 + 80) = v43;
  v45 = v83[3];
  v46 = v83[4];
  v47 = v83[5];
  *(a2 + 176) = v83[6];
  *(a2 + 144) = v46;
  *(a2 + 160) = v47;
  *(a2 + 128) = v45;
  v96 = v32;
  v97 = v31;
  v98 = v27;
  v99 = v30;
  v100 = v28;
  v101 = 0;
  v102 = v29;
  v103 = v33;
  v104 = 0;
  v105 = v24;
  v106 = v26;
  v107 = v25;
  sub_24B3DF488(&v84, v65, &qword_27EFE8E40, &qword_24B461D68);
  sub_24B3DF488(&v90, v65, &qword_27EFE8E48, &unk_24B461D70);
  sub_24B3DF4F0(&v96, &qword_27EFE8E48, &unk_24B461D70);
  v65[0] = v64;
  v65[1] = v34;
  v66 = v62;
  *v67 = v110[0];
  *&v67[3] = *(v110 + 3);
  v68 = v35;
  v69 = KeyPath;
  v70 = 0;
  *v71 = *v109;
  *&v71[3] = *&v109[3];
  v72 = v36;
  v73 = 2;
  v74 = 0;
  *&v75[3] = *&v108[3];
  *v75 = *v108;
  v76 = v38;
  v77 = v37;
  return sub_24B3DF4F0(v65, &qword_27EFE8E40, &qword_24B461D68);
}

unint64_t sub_24B42BE44()
{
  result = qword_27EFE8D30;
  if (!qword_27EFE8D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D28, &qword_24B461BB0);
    sub_24B42BEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8D30);
  }

  return result;
}

unint64_t sub_24B42BEC8()
{
  result = qword_27EFE8D38;
  if (!qword_27EFE8D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D40, &qword_24B461BB8);
    sub_24B42BF54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8D38);
  }

  return result;
}

unint64_t sub_24B42BF54()
{
  result = qword_27EFE8D48;
  if (!qword_27EFE8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8D48);
  }

  return result;
}

uint64_t sub_24B42BFB4(uint64_t a1)
{
  v2 = sub_24B4584BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24B45864C();
}

uint64_t sub_24B42C07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a3;
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D28, &qword_24B461BB0);
  sub_24B4585BC();
  sub_24B458F6C();
  sub_24B42BE44();
  v52 = MEMORY[0x277D83B98];
  sub_24B458C5C();
  v46 = a2;
  v47 = MEMORY[0x277CDF678];
  v4 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v45 = MEMORY[0x277CDF748];
  v27 = v4;
  v43 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B458C3C();
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D50, &qword_24B461BC0);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  v5 = sub_24B4585BC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D20, &qword_24B461BA8);
  v40 = swift_getWitnessTable();
  v41 = MEMORY[0x277CDF918];
  v24 = swift_getWitnessTable();
  v6 = sub_24B3DF11C(&qword_27EFE8D58, &qword_27EFE8D20, &qword_24B461BA8);
  v48 = v5;
  v49 = v25;
  v50 = v24;
  v51 = v6;
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8050, &qword_24B45C190);
  v26 = sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D60, &qword_24B461BC8);
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8058, &qword_24B45C198);
  v7 = sub_24B4585BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  sub_24B4583DC();
  v48 = v5;
  v49 = v25;
  v50 = v24;
  v51 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = MEMORY[0x277CDFC60];
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x277CDF678];
  v15 = swift_getWitnessTable();
  v16 = sub_24B3DF11C(&qword_2810E2810, &qword_27EFE8050, &qword_24B45C190);
  v34 = v15;
  v35 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_24B3DF11C(&qword_27EFE8D68, &qword_27EFE8D60, &qword_24B461BC8);
  v32 = v17;
  v33 = v18;
  v19 = swift_getWitnessTable();
  sub_24B4589CC();
  v20 = sub_24B3DF11C(&qword_2810E28E0, &qword_27EFE8058, &qword_24B45C198);
  v30 = v19;
  v31 = v20;
  v21 = swift_getWitnessTable();
  sub_24B3ECD00(v12, v7, v21);
  v22 = *(v8 + 8);
  v22(v12, v7);
  sub_24B3ECD00(v14, v7, v21);
  return (v22)(v14, v7);
}

uint64_t sub_24B42C6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a3;
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D28, &qword_24B461BB0);
  sub_24B4585BC();
  sub_24B458F6C();
  sub_24B42BE44();
  v52 = MEMORY[0x277D83B98];
  sub_24B458C5C();
  v46 = a2;
  v47 = MEMORY[0x277CDF678];
  v4 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v45 = MEMORY[0x277CDF748];
  v27 = v4;
  v43 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B458C3C();
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D50, &qword_24B461BC0);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  v5 = sub_24B4585BC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D20, &qword_24B461BA8);
  v40 = swift_getWitnessTable();
  v41 = MEMORY[0x277CDF918];
  v24 = swift_getWitnessTable();
  v6 = sub_24B3DF11C(&qword_27EFE8D58, &qword_27EFE8D20, &qword_24B461BA8);
  v48 = v5;
  v49 = v25;
  v50 = v24;
  v51 = v6;
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8050, &qword_24B45C190);
  v26 = sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D60, &qword_24B461BC8);
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8058, &qword_24B45C198);
  v7 = sub_24B4585BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v48 = v5;
  v49 = v25;
  v50 = v24;
  v51 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = MEMORY[0x277CDFC60];
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x277CDF678];
  v15 = swift_getWitnessTable();
  v16 = sub_24B3DF11C(&qword_2810E2810, &qword_27EFE8050, &qword_24B45C190);
  v34 = v15;
  v35 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_24B3DF11C(&qword_27EFE8D68, &qword_27EFE8D60, &qword_24B461BC8);
  v32 = v17;
  v33 = v18;
  v19 = swift_getWitnessTable();
  sub_24B4589CC();
  v20 = sub_24B3DF11C(&qword_2810E28E0, &qword_27EFE8058, &qword_24B45C198);
  v30 = v19;
  v31 = v20;
  v21 = swift_getWitnessTable();
  sub_24B3ECD00(v12, v7, v21);
  v22 = *(v8 + 8);
  v22(v12, v7);
  sub_24B3ECD00(v14, v7, v21);
  return (v22)(v14, v7);
}

uint64_t sub_24B42CCCC()
{
  type metadata accessor for AwardToastView();
  sub_24B42858C();
  sub_24B458D6C();
}

uint64_t sub_24B42CD18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for AwardToastView() - 8) + 80);
  return sub_24B42CCCC();
}

uint64_t sub_24B42CD90()
{
  sub_24B4584EC();
  v1 = v0;
  result = sub_24B4584DC();
  if (v1 - v3 > 20.0)
  {
    type metadata accessor for AwardToastView();
    sub_24B42858C();
    sub_24B458D6C();
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for AwardToastView() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_24B3DE5B8();
  v9 = v3[11];
  swift_getFunctionTypeMetadata1();
  v10 = sub_24B4583CC();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_24B42CF3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for AwardToastView() - 8) + 80);

  return sub_24B42CD90();
}

uint64_t sub_24B42CFC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24B42D060(uint64_t a1)
{
  sub_24B42D128();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_getFunctionTypeMetadata1();
    sub_24B4583CC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B42D128()
{
  if (!qword_27EFE8E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8E10, qword_24B461C90);
    sub_24B3DF11C(&qword_27EFE8E18, &qword_27EFE8E10, qword_24B461C90);
    v0 = sub_24B45852C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFE8E08);
    }
  }
}

unint64_t sub_24B42D1DC()
{
  result = qword_27EFE8E28;
  if (!qword_27EFE8E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D50, &qword_24B461BC0);
    sub_24B3DF11C(&qword_27EFE8E30, &qword_27EFE8E38, &qword_24B461CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E28);
  }

  return result;
}

uint64_t sub_24B42D294@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B45865C();
  *a1 = result;
  return result;
}

uint64_t sub_24B42D2E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B45867C();
  *a1 = result;
  return result;
}

uint64_t sub_24B42D314(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B45868C();
}

uint64_t sub_24B42D340@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B45869C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B42D374(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24B4586AC();
}

uint64_t sub_24B42D3A4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_24B42D3DC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(type metadata accessor for AwardToastView() - 8);
  v8 = v2[4];
  v9 = v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return sub_24B42B070(a1, v8, v9, v5, v6, a2);
}

uint64_t sub_24B42D47C(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1, a1[1]);
}

__n128 AwardToastFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_24B42D4EC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  if (v2)
  {
    MEMORY[0x24C2403C0](0);
    sub_24B458E6C();
  }

  else
  {
    MEMORY[0x24C2403C0](1);
  }

  return sub_24B45926C();
}

uint64_t sub_24B42D55C()
{
  if (!v0[1])
  {
    return MEMORY[0x24C2403C0](1);
  }

  v1 = *v0;
  MEMORY[0x24C2403C0](0);

  return sub_24B458E6C();
}

uint64_t sub_24B42D5D4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  if (v2)
  {
    MEMORY[0x24C2403C0](0);
    sub_24B458E6C();
  }

  else
  {
    MEMORY[0x24C2403C0](1);
  }

  return sub_24B45926C();
}

uint64_t sub_24B42D640(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_24B4591AC();
  }
}

double AwardToastFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3, char a4)
{
  v99 = a3;
  v94 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F20, &qword_24B45BCA0);
  v96 = *(v6 - 8);
  v7 = v96[8];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v79 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v79 - v14;
  v17 = *v4;
  v16 = v4[1];
  v18 = v4[2];
  v97 = v4[3];
  v98 = v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
  v20 = v19[12];
  v21 = v19[16];
  v95 = v19[20];
  v22 = v19[24];
  if (a4)
  {
    v23 = &v10[v22];
    sub_24B42DE30();
    v100 = 0;
    v101 = 0;
    sub_24B458F9C();
    sub_24B458EFC();
    v24 = *MEMORY[0x277D043F0];
    v25 = sub_24B458D4C();
    (*(*(v25 - 8) + 104))(&v10[v21], v24, v25);
    v26 = swift_allocObject();
    v27 = v97;
    v28 = v98;
    v26[2] = v17;
    v26[3] = v28;
    v26[4] = v18;
    v26[5] = v27;
    *v23 = &unk_24B461DB8;
    *(v23 + 1) = v26;
    v29 = *MEMORY[0x277D043E8];
    v30 = sub_24B458D3C();
    (*(*(v30 - 8) + 104))(&v10[v95], v29, v30);
    v31 = v96;
    (v96[13])(v10, *MEMORY[0x277D043B0], v6);
    v32 = v99;
    v33 = *v99;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_24B3F14E4(0, v33[2] + 1, 1, v33);
    }

    v35 = v33[2];
    v34 = v33[3];
    if (v35 >= v34 >> 1)
    {
      v33 = sub_24B3F14E4(v34 > 1, v35 + 1, 1, v33);
    }

    v33[2] = v35 + 1;
    (v31[4])(v33 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + v31[9] * v35, v10);
    *v32 = v33;
  }

  else
  {
    v37 = v19;
    v93 = v13;
    v38 = &v15[v22];
    v39 = sub_24B42DE30();
    v100 = 0;
    v101 = 0;
    v90 = v39;
    sub_24B458F9C();
    sub_24B458EFC();
    v40 = *MEMORY[0x277D043F0];
    v41 = sub_24B458D4C();
    v42 = *(v41 - 8);
    v43 = *(v42 + 104);
    v89 = v40;
    v87 = v43;
    v88 = v41;
    v86 = v42 + 104;
    (v43)(&v15[v21], v40);
    v44 = swift_allocObject();
    v91 = v17;
    v92 = v18;
    v45 = v98;
    v44[2] = v17;
    v44[3] = v45;
    v46 = v97;
    v44[4] = v18;
    v44[5] = v46;
    *v38 = &unk_24B461DC8;
    *(v38 + 1) = v44;
    v47 = *MEMORY[0x277D043E8];
    v48 = sub_24B458D3C();
    v49 = *(v48 - 8);
    v82 = *(v49 + 104);
    v83 = v48;
    v81 = v49 + 104;
    v82(&v15[v95], v47);
    v50 = v96;
    v51 = v96[13];
    v85 = *MEMORY[0x277D043B0];
    v95 = v6;
    v84 = v51;
    v51(v15);
    v52 = v99;
    v53 = *v99;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_24B3F14E4(0, v53[2] + 1, 1, v53);
    }

    v55 = v53[2];
    v54 = v53[3];
    v56 = v93;
    if (v55 >= v54 >> 1)
    {
      v53 = sub_24B3F14E4(v54 > 1, v55 + 1, 1, v53);
    }

    v53[2] = v55 + 1;
    v58 = v50[4];
    v57 = v50 + 4;
    v80 = (*(v57 + 48) + 32) & ~*(v57 + 48);
    v79 = v57[5];
    v96 = v58;
    (v58)(v53 + v80 + v79 * v55, v15, v95);
    *v52 = v53;
    v59 = v94;
    *(v94 + 112) = 0;
    v60 = *v59;
    if (*(*v59 + 16) == 1)
    {
      v62 = *(v60 + 32);
      v61 = *(v60 + 40);
      v63 = v37[12];
      v64 = v97;
      v65 = v37[16];
      v94 = v37[20];
      v66 = &v56[v37[24]];
      v100 = v62;
      v101 = v61;
      swift_bridgeObjectRetain_n();
      sub_24B458F9C();
      sub_24B458EFC();
      v87(&v56[v65], v89, v88);
      (v82)(&v56[v94], *MEMORY[0x277D043E0], v83);
      v67 = swift_allocObject();
      v67[2] = v62;
      v67[3] = v61;
      v68 = v95;
      v69 = v92;
      v70 = v98;
      v67[4] = v91;
      v67[5] = v70;
      v67[6] = v69;
      v67[7] = v64;
      *v66 = &unk_24B461DD8;
      *(v66 + 1) = v67;
      v84(v56, v85, v68);
      v71 = v53[2];
      v72 = v53[3];

      if (v71 >= v72 >> 1)
      {
        v53 = sub_24B3F14E4(v72 > 1, v71 + 1, 1, v53);
      }

      v73 = v99;
      v53[2] = v71 + 1;
      (v96)(v53 + v80 + v71 * v79, v56, v68);
      *v73 = v53;
    }

    else
    {
      if (qword_2810E3610 != -1)
      {
        swift_once();
      }

      v74 = sub_24B45847C();
      __swift_project_value_buffer(v74, qword_2810E3618);
      v75 = sub_24B45845C();
      v76 = sub_24B458F4C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_24B3CE000, v75, v76, "[AwardToastFeature] Coalesced toast, setting scroll position identifier", v77, 2u);
        MEMORY[0x24C2408A0](v77, -1, -1);
      }

      *(v59 + 112) = 1;
      v78 = v59[13];

      *&result = 0x736472617761;
      *(v59 + 6) = xmmword_24B461DA0;
    }
  }

  return result;
}

unint64_t sub_24B42DE30()
{
  result = qword_27EFE8E50;
  if (!qword_27EFE8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E50);
  }

  return result;
}

uint64_t sub_24B42DE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_24B458EEC();
  v3[4] = sub_24B458EDC();
  v5 = sub_24B458EBC();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_24B42DF1C, v5, v4);
}

uint64_t sub_24B42DF1C()
{
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = sub_24B45847C();
  __swift_project_value_buffer(v1, qword_2810E3618);
  v2 = sub_24B45845C();
  v3 = sub_24B458F4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardToastFeature] toast tapped, requesting dismissal", v4, 2u);
    MEMORY[0x24C2408A0](v4, -1, -1);
  }

  v5 = v0[2];

  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_24B42E0C8;
  v8 = v0[3];

  return v10(0);
}

uint64_t sub_24B42E0C8()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24B42EF60, v4, v3);
}

uint64_t sub_24B42E1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a2;
  v7[3] = a3;
  sub_24B458EEC();
  v7[6] = sub_24B458EDC();
  v9 = sub_24B458EBC();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x2822009F8](sub_24B42E284, v9, v8);
}

uint64_t sub_24B42E284()
{
  v17 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);

  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24B3F17BC(v6, v5, &v16);
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardToastFeature] Presenting detail page for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x24C2408A0](v8, -1, -1);
    MEMORY[0x24C2408A0](v7, -1, -1);
  }

  v15 = (v0[4] + *v0[4]);
  v9 = *(v0[4] + 4);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_24B42E4A4;
  v11 = v0[5];
  v13 = v0[2];
  v12 = v0[3];

  return v15(v13, v12);
}

uint64_t sub_24B42E4A4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_24B42E644;
  }

  else
  {
    v7 = sub_24B42E5E0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24B42E5E0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B42E644()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_24B42E6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_24B458EEC();
  v3[4] = sub_24B458EDC();
  v5 = sub_24B458EBC();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_24B42E740, v5, v4);
}

uint64_t sub_24B42E740()
{
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = sub_24B45847C();
  __swift_project_value_buffer(v1, qword_2810E3618);
  v2 = sub_24B45845C();
  v3 = sub_24B458F4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardToastFeature] toast swiped, requesting dismissal", v4, 2u);
    MEMORY[0x24C2408A0](v4, -1, -1);
  }

  v5 = v0[2];

  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_24B42E8EC;
  v8 = v0[3];

  return v10(1);
}

uint64_t sub_24B42E8EC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24B42EA0C, v4, v3);
}

uint64_t sub_24B42EA0C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B42EA70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B3F2574;

  return sub_24B42E6A8(a1, v4, v5);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_24B42EB78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B3F2574;

  return sub_24B42DE84(a1, v4, v5);
}

uint64_t sub_24B42EC34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24B3F1E60;

  return sub_24B42E1E8(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_24B42ED08()
{
  result = qword_27EFE8E58;
  if (!qword_27EFE8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E58);
  }

  return result;
}

unint64_t sub_24B42ED60()
{
  result = qword_27EFE8E60;
  if (!qword_27EFE8E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E60);
  }

  return result;
}

unint64_t sub_24B42EDB8()
{
  result = qword_27EFE8E68;
  if (!qword_27EFE8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E68);
  }

  return result;
}

uint64_t sub_24B42EE1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B42EE6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24B42EEC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_24B42EED8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_24B42EF0C()
{
  result = qword_27EFE8E70;
  if (!qword_27EFE8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E70);
  }

  return result;
}

uint64_t sub_24B42EF74()
{
  if (*v0)
  {
    return 0x6977537473616F74;
  }

  else
  {
    return 0x7061547473616F74;
  }
}

uint64_t sub_24B42EFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7061547473616F74 && a2 == 0xEB00000000646570;
  if (v6 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6977537473616F74 && a2 == 0xEB00000000646570)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B4591AC();

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