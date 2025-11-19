unint64_t sub_22B9806A0()
{
  result = qword_27D8D5308;
  if (!qword_27D8D5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5308);
  }

  return result;
}

uint64_t sub_22B9806F4(uint64_t a1)
{
  v2 = sub_22B9349C8(&unk_27D8D5770, &qword_22BA135E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_22B98076C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B980780(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_22B9807C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22B980830()
{
  result = qword_27D8D5340;
  if (!qword_27D8D5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5340);
  }

  return result;
}

uint64_t type metadata accessor for MessageUpdateRecord()
{
  result = qword_281415518;
  if (!qword_281415518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B980908()
{
  sub_22B9651AC(319, &qword_281414C40);
  if (v0 <= 0x3F)
  {
    sub_22B934C68();
    if (v1 <= 0x3F)
    {
      sub_22B9651AC(319, &unk_281416C20);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22B9809D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v53 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v54 = v48 - v9;
  v10 = sub_22B9349C8(&qword_27D8D4B90, &qword_22BA12C40);
  v11 = *(v10 - 8);
  v55 = v10;
  v56 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v48 - v14;
  v16 = sub_22B9349C8(&qword_27D8D5348, &unk_22BA16868);
  v57 = *(v16 - 8);
  v17 = *(v57 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v48 - v19;
  updated = type metadata accessor for MessageUpdateRecord();
  v22 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated, v23);
  v25 = (v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B960C9C();
  v27 = v58;
  sub_22BA10D8C();
  if (v27)
  {
    return sub_22B936C4C(a1);
  }

  v58 = v20;
  v49 = updated;
  v50 = v25;
  v51 = v16;
  v28 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9358F8();
  sub_22BA10D8C();
  LOBYTE(v59) = 0;
  v29 = sub_22BA10ACC();
  v30 = v50;
  *v50 = v29;
  v30[1] = v31;
  LOBYTE(v59) = 1;
  v32 = v15;
  v30[2] = sub_22BA10ACC();
  v30[3] = v33;
  LOBYTE(v59) = 2;
  v48[1] = 0;
  v30[4] = sub_22BA10ACC();
  v30[5] = v34;
  LOBYTE(v59) = 3;
  v30[6] = sub_22BA10ACC();
  v30[7] = v35;
  LOBYTE(v59) = 4;
  v30[8] = sub_22BA10ACC();
  v30[9] = v36;
  LOBYTE(v59) = 5;
  v30[10] = sub_22BA10ACC();
  v30[11] = v37;
  sub_22BA0FD8C();
  LOBYTE(v59) = 6;
  v48[0] = sub_22B9817C8(&unk_281416C00, MEMORY[0x277CC9578]);
  sub_22BA10AFC();
  v38 = v49;
  sub_22B935A74(v54, v50 + v49[10]);
  LOBYTE(v59) = 7;
  v39 = v53;
  sub_22BA10AFC();
  sub_22B935A74(v39, v50 + v38[11]);
  LOBYTE(v59) = 8;
  v40 = sub_22BA10ACC();
  v41 = (v50 + v49[12]);
  *v41 = v40;
  v41[1] = v42;
  LOBYTE(v59) = 0;
  v43 = sub_22BA10ACC();
  v44 = (v50 + v49[13]);
  *v44 = v43;
  v44[1] = v45;
  v60 = 1;
  sub_22B9363C8();
  sub_22BA10AFC();
  (*(v56 + 8))(v32, v55);
  (*(v57 + 8))(v58, v51);
  v46 = v50;
  *(v50 + v49[14]) = v59;
  sub_22B981810(v46, v52);
  sub_22B936C4C(0);
  return sub_22B981874(v46);
}

uint64_t sub_22B981330(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 28789;
  }

  else
  {
    v2 = 29813;
  }

  if (*a2)
  {
    v3 = 28789;
  }

  else
  {
    v3 = 29813;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_22BA10C6C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_22B9813A0()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B981400()
{
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22B981444()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9814A0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22BA10AAC();

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

void sub_22B981500(uint64_t *a1@<X8>)
{
  v2 = 29813;
  if (*v1)
  {
    v2 = 28789;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t sub_22B981520()
{
  if (*v0)
  {
    return 28789;
  }

  else
  {
    return 29813;
  }
}

uint64_t sub_22B98153C@<X0>(char *a1@<X8>)
{
  v2 = sub_22BA10AAC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_22B9815A0(uint64_t a1)
{
  v2 = sub_22B960C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9815DC(uint64_t a1)
{
  v2 = sub_22B960C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B981630(void *a1)
{
  v2 = sub_22B9349C8(&qword_27D8D5018, &qword_22BA14750);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B960C9C();
  sub_22BA10D9C();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_22B981744(uint64_t a1)
{
  *(a1 + 8) = sub_22B9817C8(&qword_281415530, type metadata accessor for MessageUpdateRecord);
  result = sub_22B9817C8(&qword_281415538, type metadata accessor for MessageUpdateRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B9817C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B981810(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for MessageUpdateRecord();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_22B981874(uint64_t a1)
{
  updated = type metadata accessor for MessageUpdateRecord();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_22B9818E4()
{
  result = qword_27D8D5350;
  if (!qword_27D8D5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5350);
  }

  return result;
}

unint64_t sub_22B98193C()
{
  result = qword_281415540;
  if (!qword_281415540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415540);
  }

  return result;
}

unint64_t sub_22B981994()
{
  result = qword_281415548;
  if (!qword_281415548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415548);
  }

  return result;
}

uint64_t sub_22B9819E8()
{
  v1 = sub_22BA0FB5C();
  v2 = [v0 wasRecordArchived_];

  return v2 ^ 1;
}

uint64_t sub_22B981A2C()
{
  qword_2814160F0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_22B981A68()
{
  swift_beginAccess();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

uint64_t sub_22B981AE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B981B2C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_22B981B98(unint64_t a1, uint64_t *a2)
{
  v32 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = MEMORY[0x277D84F90];
    v26 = a1 & 0xC000000000000001;
    v24 = a1;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = a1 + 32;
    v27 = v3;
    v28 = a2;
    while (1)
    {
      if (v5)
      {
        a1 = MEMORY[0x231899FA0](v4, v24);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_26;
        }

        a1 = *(v30 + 8 * v4);
      }

      v7 = a1;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = *a2;
      if ((*a2 & 0xC000000000000001) == 0)
      {
        if (*(v9 + 16))
        {
          sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
          v14 = *(v9 + 40);

          v15 = sub_22BA1071C();
          v16 = -1 << *(v9 + 32);
          v17 = v15 & ~v16;
          if ((*(v9 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            v18 = ~v16;
            while (1)
            {
              v19 = *(*(v9 + 48) + 8 * v17);
              v20 = sub_22BA1072C();

              if (v20)
              {
                break;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v9 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v3 = v27;
            a2 = v28;
            v5 = v26;
            v6 = v29;
            goto LABEL_5;
          }

LABEL_20:

          v3 = v27;
          a2 = v28;
          v5 = v26;
          v6 = v29;
        }

LABEL_21:
        sub_22B9FF448(&v31, v7);

        MEMORY[0x231899830]();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22BA1022C();
          v6 = v29;
        }

        a1 = sub_22BA1026C();
        v25 = v32;
        goto LABEL_5;
      }

      if (v9 < 0)
      {
        v10 = *a2;
      }

      v11 = *a2;

      v12 = v7;
      v13 = sub_22BA1083C();

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v22 = a1;
    v3 = sub_22BA1080C();
    a1 = v22;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22B981E44(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    sub_22BA109CC();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_22BA107CC();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 72;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 48) + 8 * v6);
      sub_22BA1099C();
      v12 = *(v23 + 16);
      sub_22BA109DC();
      v1 = v21;
      sub_22BA109EC();
      result = sub_22BA109AC();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_22B951A48(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_22B951A48(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return v23;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22B982058(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  return MEMORY[0x2822009F8](sub_22B98207C, 0, 0);
}

uint64_t sub_22B98207C()
{
  v14 = *(v0 + 224);
  v1 = sub_22B9358B4((*(v0 + 240) + 24), *(*(v0 + 240) + 48));
  v3 = *(v1 + 1);
  v2 = *(v1 + 2);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = v1[12];
  v6 = *(v1 + 4);
  v5 = *(v1 + 5);
  *(v0 + 64) = *(v1 + 3);
  *(v0 + 80) = v6;
  *(v0 + 96) = v5;
  *(v0 + 112) = v4;
  v7 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v7;
  v8 = *(v0 + 64);
  *(v0 + 152) = *(v0 + 48);
  *(v0 + 168) = v8;
  v9 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v9;
  *(v0 + 216) = v4;
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *(v10 + 16) = v0 + 120;
  *(v10 + 24) = v14;
  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  *(v0 + 256) = v12;
  *v12 = v0;
  v12[1] = sub_22B9821E8;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_22B9821E8()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_22B982304;
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = sub_22B92BFF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B982304()
{
  v1 = v0[31];

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = v0[33];
  v3 = sub_22BA0FEFC();
  sub_22B936CA8(v3, qword_28141AD40);
  v4 = v2;
  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1044C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[33];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22B92A000, v5, v6, "Encountered error fetching record counts: %@", v9, 0xCu);
    sub_22B936BEC(v10, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v10, -1, -1);
    MEMORY[0x23189ADD0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_22B9824B0(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  return MEMORY[0x2822009F8](sub_22B9824D4, 0, 0);
}

uint64_t sub_22B9824D4()
{
  v15 = *(v0 + 224);
  v1 = sub_22B9358B4(*(v0 + 240), *(*(v0 + 240) + 24));
  v3 = *(v1 + 1);
  v2 = *(v1 + 2);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = v1[12];
  v6 = *(v1 + 4);
  v5 = *(v1 + 5);
  *(v0 + 64) = *(v1 + 3);
  *(v0 + 80) = v6;
  *(v0 + 96) = v5;
  *(v0 + 112) = v4;
  v7 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v7;
  v8 = *(v0 + 64);
  *(v0 + 152) = *(v0 + 48);
  *(v0 + 168) = v8;
  v9 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v9;
  *(v0 + 216) = v4;
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *(v10 + 16) = v0 + 120;
  *(v10 + 24) = v15;
  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  *(v0 + 256) = v12;
  *v12 = v0;
  v12[1] = sub_22B98263C;
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v12, 0, 0, 0x6F6328746E756F63, 0xEF293A747865746ELL, sub_22B9889B8, v10, v13);
}

uint64_t sub_22B98263C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_22B988D14;
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = sub_22B9475A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B982758(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B98277C, 0, 0);
}

uint64_t sub_22B98277C()
{
  v1 = sub_22B9358B4(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_22B9ECD2C(*(v1 + 16));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_22B982870;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_22B9E81AC(v4, v3, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneDeleter.swift", 109, 2);
}

uint64_t sub_22B982870()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B98296C, 0, 0);
}

uint64_t sub_22B98296C()
{
  v1 = sub_22B9358B4((*(v0 + 16) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 16) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v2 = *v1;
  v3 = *(*v1 + 56);
  if (v3)
  {
    [v3 startChanges];
    v4 = *(v2 + 56);
    if (v4)
    {
      [v4 setSyncJobStateWithState_];
      v5 = *(v2 + 56);
      if (v5)
      {
        [v5 commitChanges];
      }
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_22B982A24(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isInternalInstall];

    if (v4)
    {
      v5 = *(*sub_22B9358B4((a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24)) + 24);
      v6 = sub_22BA0FFCC();
      v7 = [v5 objectForKey_];

      if (v7)
      {
        sub_22BA107AC();
        swift_unknownObjectRelease();
        sub_22B936BEC(v15, &unk_27D8D5A30, qword_22BA13390);
        v8 = *MEMORY[0x277D19D08];
        sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22BA13CB0;
        v10 = *MEMORY[0x277CCA450];
        *(inited + 32) = sub_22BA0FFFC();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v11;
        *(inited + 48) = 0xD000000000000040;
        *(inited + 56) = 0x800000022BA1D820;
        v12 = v8;
        sub_22B9BBA8C(inited);
        swift_setDeallocating();
        sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
        v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v14 = sub_22BA0FF5C();

        [v13 initWithDomain:v12 code:1 userInfo:v14];

        swift_willThrow();
      }

      else
      {
        memset(v15, 0, sizeof(v15));
        sub_22B936BEC(v15, &unk_27D8D5A30, qword_22BA13390);
      }
    }
  }
}

uint64_t sub_22B982C88(uint64_t a1, uint64_t a2)
{
  v3[98] = v2;
  v3[97] = a2;
  v3[96] = a1;
  v4 = *(*(sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0) - 8) + 64) + 15;
  v3[99] = swift_task_alloc();
  v5 = sub_22B9349C8(&unk_27D8D53D0, &qword_22BA13DB8);
  v3[100] = v5;
  v6 = *(v5 - 8);
  v3[101] = v6;
  v7 = *(v6 + 64) + 15;
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v8 = sub_22B9349C8(&qword_27D8D4F28, &qword_22BA13DC0);
  v3[104] = v8;
  v9 = *(v8 - 8);
  v3[105] = v9;
  v10 = *(v9 + 64) + 15;
  v3[106] = swift_task_alloc();
  v11 = sub_22B9349C8(&unk_27D8D53E0, &unk_22BA13DC8);
  v3[107] = v11;
  v12 = *(v11 - 8);
  v3[108] = v12;
  v13 = *(v12 + 64) + 15;
  v3[109] = swift_task_alloc();
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B982E88, 0, 0);
}

uint64_t sub_22B982E88()
{
  v21 = v0;
  v1 = sub_22B9358B4(*(v0 + 784), *(*(v0 + 784) + 24));
  v2 = sub_22BA082E0(*(v1 + 16));
  v4 = v3;
  *(v0 + 896) = v2;
  *(v0 + 904) = v3;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 768);
  v6 = sub_22BA0FEFC();
  *(v0 + 912) = sub_22B936CA8(v6, qword_28141AD40);

  swift_unknownObjectRetain();
  v7 = sub_22BA0FEDC();
  v8 = sub_22BA1046C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 768);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_22B99153C(v2, v4, &v20);
    *(v10 + 12) = 2080;
    sub_22BA0FDCC();
    sub_22B988C18(&qword_281416BE0, MEMORY[0x277CC95F0]);
    v12 = sub_22BA10C1C();
    v14 = sub_22B99153C(v12, v13, &v20);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_22B92A000, v7, v8, "Starting deletes to %s (%s)", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v11, -1, -1);
    MEMORY[0x23189ADD0](v10, -1, -1);
  }

  v15 = swift_task_alloc();
  *(v0 + 920) = v15;
  *v15 = v0;
  v15[1] = sub_22B983118;
  v16 = *(v0 + 784);
  v17 = *(v0 + 776);
  v18 = *(v0 + 768);

  return sub_22B984FF0(v18, v17);
}

uint64_t sub_22B983118(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 920);
  v7 = *v2;
  *(v3 + 928) = a1;
  *(v3 + 936) = v1;

  if (v1)
  {
    v5 = sub_22B9837C4;
  }

  else
  {
    v5 = sub_22B983230;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B983230()
{
  v61 = v0;
  v1 = *(v0 + 928);
  v2 = *(v1 + 16);
  *(v0 + 944) = v2;
  if (v2)
  {
    v3 = *(v0 + 936);
    v54 = *(v0 + 880);
    v55 = *(v0 + 872);
    v4 = *(v0 + 864);
    v52 = *(v0 + 888);
    v53 = *(v0 + 856);
    v5 = *(v0 + 840);
    v50 = *(v0 + 848);
    v51 = *(v0 + 832);
    v56 = *(v0 + 824);
    v57 = *(v0 + 808);
    v58 = *(v0 + 800);
    v59 = *(v0 + 816);
    v6 = *(v0 + 784);
    v7 = *(v0 + 776);
    v8 = *(v0 + 768);
    v9 = sub_22B9358B4(v6, v6[3]);
    v10 = sub_22B981E44(v1);

    v11 = *v9;
    v12 = *(v9 + 2);
    *(v0 + 272) = *(v9 + 1);
    *(v0 + 288) = v12;
    *(v0 + 256) = v11;
    v13 = *(v9 + 3);
    v14 = *(v9 + 4);
    v15 = *(v9 + 5);
    *(v0 + 352) = v9[12];
    *(v0 + 320) = v14;
    *(v0 + 336) = v15;
    *(v0 + 304) = v13;
    v16 = sub_22B9874C8(v8, v7, v10);
    *(v0 + 952) = v16;

    v17 = sub_22B9358B4(v6, v6[3]);
    v18 = *v17;
    v19 = *(v17 + 2);
    *(v0 + 376) = *(v17 + 1);
    *(v0 + 392) = v19;
    *(v0 + 360) = v18;
    v20 = *(v17 + 3);
    v21 = *(v17 + 4);
    v22 = *(v17 + 5);
    *(v0 + 456) = v17[12];
    *(v0 + 424) = v21;
    *(v0 + 440) = v22;
    *(v0 + 408) = v20;
    *(v0 + 592) = &type metadata for SyncZoneInfo;
    *(v0 + 600) = &off_283F57268;
    v23 = swift_allocObject();
    *(v0 + 568) = v23;
    memmove((v23 + 16), v17, 0x68uLL);
    *(v0 + 697) = 0;
    v24 = swift_task_alloc();
    *(v24 + 16) = v16;
    *(v24 + 24) = 0;
    *(v24 + 32) = v0 + 697;
    *(v24 + 40) = v8;
    *(v24 + 48) = v7;
    *(v24 + 56) = v0 + 568;
    (*(v5 + 104))(v50, *MEMORY[0x277D858A0], v51);
    sub_22B951748(v0 + 360, v0 + 464);
    sub_22BA1035C();

    (*(v4 + 32))(v54, v52, v53);
    sub_22B936C4C((v0 + 568));
    (*(v4 + 16))(v55, v54, v53);
    sub_22B95194C(&qword_281414C10, &unk_27D8D53E0, &unk_22BA13DC8);
    sub_22BA1032C();
    (*(v57 + 32))(v59, v56, v58);
    (*(v4 + 8))(v54, v53);
    *(v0 + 1032) = 0;
    *(v0 + 1016) = 0u;

    return MEMORY[0x2822009F8](sub_22B983890, 0, 0);
  }

  else
  {
    v25 = *(v0 + 912);
    v26 = *(v0 + 904);
    v27 = *(v0 + 768);

    swift_unknownObjectRetain();
    v28 = sub_22BA0FEDC();
    v29 = sub_22BA1046C();

    swift_unknownObjectRelease();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 904);
    if (v30)
    {
      v32 = *(v0 + 896);
      v33 = *(v0 + 768);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v60[0] = v35;
      *v34 = 136315394;
      v36 = sub_22B99153C(v32, v31, v60);

      *(v34 + 4) = v36;
      *(v34 + 12) = 2080;
      sub_22BA0FDCC();
      sub_22B988C18(&qword_281416BE0, MEMORY[0x277CC95F0]);
      v37 = sub_22BA10C1C();
      v39 = sub_22B99153C(v37, v38, v60);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_22B92A000, v28, v29, "Nothing more to delete for %s (%s)", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v35, -1, -1);
      MEMORY[0x23189ADD0](v34, -1, -1);
    }

    else
    {
    }

    v40 = *(v0 + 888);
    v41 = *(v0 + 880);
    v42 = *(v0 + 872);
    v43 = *(v0 + 848);
    v44 = *(v0 + 824);
    v45 = *(v0 + 816);
    v46 = *(v0 + 792);
    v47 = *(v0 + 944) != 0;

    v48 = *(v0 + 8);

    return v48(0, v47);
  }
}

uint64_t sub_22B9837C4()
{
  v1 = v0[113];

  v2 = v0[117];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[109];
  v6 = v0[106];
  v7 = v0[103];
  v8 = v0[102];
  v9 = v0[99];

  v10 = v0[1];

  return v10();
}

uint64_t sub_22B983890()
{
  v1 = v0[102];
  swift_beginAccess();
  v2 = sub_22B95194C(&qword_281414C20, &unk_27D8D53D0, &qword_22BA13DB8);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[120] = v4;
  *v4 = v0;
  v4[1] = sub_22B98397C;
  v5 = v0[102];
  v6 = v0[100];

  return MEMORY[0x282200308](v0 + 85, v6, v2);
}

uint64_t sub_22B98397C()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v6 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v4 = sub_22B983F74;
  }

  else
  {
    swift_endAccess();
    *(v2 + 976) = *(v2 + 680);
    *(v2 + 698) = *(v2 + 696);
    v4 = sub_22B983AAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B983AAC(uint64_t (*a1)(), uint64_t a2)
{
  v46 = v2;
  v3 = *(v2 + 698);
  if (v3 > 0xFD)
  {
    v4 = *(v2 + 904);
    v5 = *(v2 + 816);
    v6 = *(v2 + 808);
    v7 = *(v2 + 800);

    (*(v6 + 8))(v5, v7);
    v8 = *(v2 + 912);
    v9 = *(v2 + 784);
    sub_22B988B5C(v9, v2 + 16);
    sub_22B988B5C(v9, v2 + 136);
    v10 = sub_22BA0FEDC();
    v11 = sub_22BA1046C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v2 + 1024);
      v13 = *(v2 + 1016);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v45 = v15;
      *v14 = 136315906;
      v16 = sub_22B9358B4((v2 + 16), *(v2 + 40));
      v17 = sub_22BA082E0(*(v16 + 16));
      v19 = v18;
      sub_22B988B94(v2 + 16);
      v20 = sub_22B99153C(v17, v19, &v45);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v12;
      *(v14 + 22) = 2080;
      v21 = sub_22B9358B4((v2 + 136), *(v2 + 160));
      v22 = sub_22BA082E0(*(v21 + 16));
      v24 = v23;
      sub_22B988B94(v2 + 136);
      v25 = sub_22B99153C(v22, v24, &v45);

      *(v14 + 24) = v25;
      *(v14 + 32) = 2048;
      *(v14 + 34) = v13;
      _os_log_impl(&dword_22B92A000, v10, v11, "%s: %lld records %s deleted, %lld failures", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v15, -1, -1);
      MEMORY[0x23189ADD0](v14, -1, -1);
    }

    else
    {

      sub_22B988B94(v2 + 136);
      sub_22B988B94(v2 + 16);
    }

    v36 = *sub_22B9358B4((*(v2 + 784) + 40), *(*(v2 + 784) + 64));
    v37 = swift_task_alloc();
    *(v2 + 1040) = v37;
    *v37 = v2;
    v37[1] = sub_22B9847F0;

    return sub_22B977290();
  }

  if ((v3 & 0xC0) != 0x40)
  {
    sub_22B9518D4(*(v2 + 976), *(v2 + 984), v3);
LABEL_13:
    a1 = sub_22B983890;
    a2 = 0;
    v3 = 0;

    return MEMORY[0x2822009F8](a1, a2, v3);
  }

  if (v3)
  {
    v26 = *(v2 + 1016);
    v27 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      v28 = *(v2 + 698);
      v29 = *(v2 + 984);
      v30 = *(v2 + 976);
      v31 = *(v2 + 904);
      v32 = *(v2 + 896);
      *(v2 + 720) = 0;
      *(v2 + 728) = 0xE000000000000000;
      v33 = v30;
      v34 = v29;
      sub_22BA108FC();
      v35 = *(v2 + 728);
      *(v2 + 704) = *(v2 + 720);
      *(v2 + 712) = v35;
      MEMORY[0x231899730](0xD00000000000001ELL, 0x800000022BA1D7E0);
      MEMORY[0x231899730](v32, v31);
      MEMORY[0x231899730](8250, 0xE200000000000000);
      *(v2 + 736) = v33;
      *(v2 + 744) = v29;
      sub_22BA10A2C();
      sub_22B975FD8(7, v29, *(v2 + 704), *(v2 + 712));
      sub_22B9518D4(v30, v29, v28);

      *(v2 + 1016) = v27;
      goto LABEL_13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, v3);
  }

  v39 = *(v2 + 1032);
  v40 = *(v2 + 976);
  *(v2 + 992) = v39 + 1;
  if (__OFADD__(v39, 1))
  {
    goto LABEL_21;
  }

  v41 = *sub_22B9358B4((*(v2 + 784) + 40), *(*(v2 + 784) + 64));
  v42 = swift_task_alloc();
  *(v2 + 1000) = v42;
  *v42 = v2;
  v42[1] = sub_22B984494;
  v43 = *(v2 + 776);
  v44 = *(v2 + 768);

  return sub_22B976B38(v44, v43, v40, 0, 0);
}

uint64_t sub_22B983F74()
{
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22B983FDC, 0, 0);
}

uint64_t sub_22B983FDC()
{
  *(v0 + 752) = *(v0 + 968);
  sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_22B98406C, 0, 0);
}

uint64_t sub_22B98406C()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 912);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v39 = *(v0 + 768);
  (*(*(v0 + 808) + 8))(*(v0 + 816), *(v0 + 800));
  v5 = *(sub_22B9358B4(v4, v4[3]) + 16);
  v6 = sub_22BA1030C();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v5;
  *(v7 + 40) = v39;
  swift_unknownObjectRetain();
  sub_22B989028(0, 0, v3, &unk_22BA16B48, v7);

  v8 = v1;
  v9 = sub_22BA0FEDC();
  v10 = sub_22BA1044C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 968);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_22B92A000, v9, v10, "Error handling batch completion with error %@", v12, 0xCu);
    sub_22B936BEC(v13, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v13, -1, -1);
    MEMORY[0x23189ADD0](v12, -1, -1);
  }

  v16 = *(v0 + 968);
  v17 = *(v0 + 768);

  v18 = *(*sub_22B9358B4((v17 + 16), *(v17 + 40)) + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v16) = sub_22B9819E8();
  swift_unknownObjectRelease();
  if (v16)
  {
    v19 = *(v0 + 968);
    v20 = *(v0 + 952);
    v21 = *(v0 + 904);
    v22 = *(v0 + 896);
    sub_22BA108FC();

    MEMORY[0x231899730](v22, v21);

    MEMORY[0x231899730](8250, 0xE200000000000000);
    swift_getErrorValue();
    v23 = *(v0 + 656);
    v24 = sub_22B958118(*(v0 + 664), *(v0 + 672));
    MEMORY[0x231899730](v24);

    sub_22B975FD8(7, v19, 0xD000000000000027, 0x800000022BA1D7B0);

    swift_willThrow();

    v25 = *(v0 + 968);
    v26 = *(v0 + 888);
    v27 = *(v0 + 880);
    v28 = *(v0 + 872);
    v29 = *(v0 + 848);
    v30 = *(v0 + 824);
    v31 = *(v0 + 816);
    v32 = *(v0 + 792);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    v35 = *(v0 + 904);

    v36 = swift_task_alloc();
    *(v0 + 1064) = v36;
    *v36 = v0;
    v36[1] = sub_22B984C84;
    v37 = *(v0 + 968);
    v38 = *(v0 + 768);

    return sub_22B97D504(v37);
  }
}

uint64_t sub_22B984494()
{
  v2 = *(*v1 + 1000);
  v5 = *v1;
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v3 = sub_22B984624;
  }

  else
  {
    v3 = sub_22B9845A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B9845A8()
{
  sub_22B9518D4(*(v0 + 976), *(v0 + 984), *(v0 + 698));
  v1 = *(v0 + 992);
  *(v0 + 1032) = v1;
  *(v0 + 1024) = v1;

  return MEMORY[0x2822009F8](sub_22B983890, 0, 0);
}

uint64_t sub_22B984624()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 912);
  sub_22B95190C(*(v0 + 976), *(v0 + 984), *(v0 + 698));
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1008);
  if (v6)
  {
    v8 = *(v0 + 976);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v12;
    v10[1] = v8;
    _os_log_impl(&dword_22B92A000, v4, v5, "Error handling record delete: %@ for record ID: %@", v9, 0x16u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v10, -1, -1);
    MEMORY[0x23189ADD0](v9, -1, -1);
  }

  else
  {
    v13 = *(v0 + 984);
    v14 = *(v0 + 976);
    v15 = *(v0 + 698);

    sub_22B9518D4(v14, v13, v15);
  }

  sub_22B9518D4(*(v0 + 976), *(v0 + 984), *(v0 + 698));
  v16 = *(v0 + 992);
  *(v0 + 1032) = v16;
  *(v0 + 1024) = v16;

  return MEMORY[0x2822009F8](sub_22B983890, 0, 0);
}

uint64_t sub_22B9847F0()
{
  v2 = *(*v1 + 1040);
  v5 = *v1;
  *(*v1 + 1048) = v0;

  if (v0)
  {
    v3 = sub_22B984AC4;
  }

  else
  {
    v3 = sub_22B984904;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B984904()
{
  v1 = *(v0 + 784);
  v2 = *(*(v0 + 768) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 1056) = v2;
  v3 = sub_22B9358B4(v1, v1[3]);
  *(v0 + 699) = sub_22BA08430(*(v3 + 16));

  return MEMORY[0x2822009F8](sub_22B984994, v2, 0);
}

uint64_t sub_22B984994()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 699);
  swift_beginAccess();
  v3 = sub_22B964498(v2);
  swift_endAccess();
  if (!*(v3 + 16))
  {
    goto LABEL_7;
  }

  v4 = sub_22B990B64(2u);
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(v0 + 1024);
  v8 = (*(v3 + 56) + 16 * v4);
  v9 = *v8 + v7;
  if (__OFADD__(*v8, v7))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = *(v0 + 1016);
  v11 = v8[1];
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
    __break(1u);
LABEL_7:
    v9 = *(v0 + 1024);
    v12 = *(v0 + 1016);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BB0F8(v9, v12, 2, isUniquelyReferenced_nonNull_native);
  v14 = *(v0 + 1056);
  v15 = *(v0 + 699);

  sub_22B9645F8(v16, v15);

  v4 = sub_22B984B90;
  v5 = 0;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22B984AC4()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);
  v5 = *(v0 + 848);
  v6 = *(v0 + 824);
  v7 = *(v0 + 816);
  v8 = *(v0 + 792);

  v9 = *(v0 + 8);

  return v9();
}

void sub_22B984B90()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);

  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 888);
    v6 = *(v0 + 880);
    v7 = *(v0 + 872);
    v8 = *(v0 + 848);
    v9 = *(v0 + 824);
    v10 = *(v0 + 816);
    v11 = *(v0 + 792);
    v12 = *(v0 + 944) != 0;

    v13 = *(v0 + 8);

    v13(v4, v12);
  }
}

uint64_t sub_22B984C84()
{
  v1 = *(*v0 + 1064);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B984D80, 0, 0);
}

uint64_t sub_22B984D80()
{
  v23 = v0;

  v1 = *(v0 + 912);
  v2 = *(v0 + 784);
  sub_22B988B5C(v2, v0 + 16);
  sub_22B988B5C(v2, v0 + 136);
  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1024);
    v6 = *(v0 + 1016);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315906;
    v9 = sub_22B9358B4((v0 + 16), *(v0 + 40));
    v10 = sub_22BA082E0(*(v9 + 16));
    v12 = v11;
    sub_22B988B94(v0 + 16);
    v13 = sub_22B99153C(v10, v12, &v22);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v5;
    *(v7 + 22) = 2080;
    v14 = sub_22B9358B4((v0 + 136), *(v0 + 160));
    v15 = sub_22BA082E0(*(v14 + 16));
    v17 = v16;
    sub_22B988B94(v0 + 136);
    v18 = sub_22B99153C(v15, v17, &v22);

    *(v7 + 24) = v18;
    *(v7 + 32) = 2048;
    *(v7 + 34) = v6;
    _os_log_impl(&dword_22B92A000, v3, v4, "%s: %lld records %s deleted, %lld failures", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  else
  {

    sub_22B988B94(v0 + 136);
    sub_22B988B94(v0 + 16);
  }

  v19 = *sub_22B9358B4((*(v0 + 784) + 40), *(*(v0 + 784) + 64));
  v20 = swift_task_alloc();
  *(v0 + 1040) = v20;
  *v20 = v0;
  v20[1] = sub_22B9847F0;

  return sub_22B977290();
}

uint64_t sub_22B984FF0(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  return MEMORY[0x2822009F8](sub_22B985014, 0, 0);
}

uint64_t sub_22B985014()
{
  v22 = v0;
  v1 = v0[32];
  if (*(v1 + 96) == 1)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
      v1 = v0[32];
    }

    v2 = sub_22BA0FEFC();
    sub_22B936CA8(v2, qword_28141AD40);
    sub_22B988B5C(v1, (v0 + 2));
    v3 = sub_22BA0FEDC();
    v4 = sub_22BA1046C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v21 = v6;
      *v5 = 136315138;
      v7 = sub_22B9358B4(v0 + 2, v0[5]);
      v8 = sub_22BA082E0(*(v7 + 16));
      v10 = v9;
      sub_22B988B94((v0 + 2));
      v11 = sub_22B99153C(v8, v10, &v21);

      *(v5 + 4) = v11;
      _os_log_impl(&dword_22B92A000, v3, v4, "Refetching records for delete operation in zone %s", v5, 0xCu);
      sub_22B936C4C(v6);
      MEMORY[0x23189ADD0](v6, -1, -1);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }

    else
    {

      sub_22B988B94((v0 + 2));
    }

    v17 = v0[32];
    v18 = sub_22B9358B4(v17 + 5, v17[8]);
    v13 = v17[11];
    v19 = *v18;
    v15 = swift_task_alloc();
    v0[34] = v15;
    *v15 = v0;
    v16 = sub_22B9853E4;
  }

  else
  {
    v12 = sub_22B9358B4((v1 + 40), *(v1 + 64));
    v13 = *(v1 + 88);
    v14 = *v12;
    v15 = swift_task_alloc();
    v0[33] = v15;
    *v15 = v0;
    v16 = sub_22B985288;
  }

  v15[1] = v16;

  return sub_22B9766D0(v13);
}

uint64_t sub_22B985288(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 264);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 360) = a2;
    *(v6 + 368) = a1;

    return MEMORY[0x2822009F8](sub_22B985C2C, 0, 0);
  }
}

uint64_t sub_22B9853E4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 272);
  v7 = *v3;
  v5[35] = a2;
  v5[36] = v2;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v5[37] = a1;

    return MEMORY[0x2822009F8](sub_22B985534, 0, 0);
  }
}

uint64_t sub_22B985534()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);

  if (*(v2 + 16))
  {
    v3 = *(v0 + 280);
    v4 = *(v0 + 288);
    v5 = *(v0 + 248);
    v6 = *(v0 + 240);
    v7 = sub_22B9358B4(*(v0 + 256), *(*(v0 + 256) + 24));
    sub_22B981E44(v3);
    v8 = *v7;
    v9 = *(v7 + 1);
    *(v0 + 168) = *(v7 + 2);
    *(v0 + 152) = v9;
    *(v0 + 136) = v8;
    v10 = *(v7 + 3);
    v11 = *(v7 + 4);
    v12 = *(v7 + 5);
    *(v0 + 232) = v7[12];
    *(v0 + 216) = v12;
    *(v0 + 200) = v11;
    *(v0 + 184) = v10;
    v13 = objc_allocWithZone(MEMORY[0x277CBC3E0]);
    sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
    v14 = sub_22BA101DC();

    v15 = [v13 initWithRecordIDs_];
    *(v0 + 304) = v15;

    v16 = v15;
    v17 = sub_22B99BA10(v6, v5, 0x6863746566, 0xE500000000000000);
    [v16 setGroup_];

    v18 = (v6 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
    v19 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
    [v19 setQualityOfService_];
    [v19 setAllowsCellularAccess_];
    v20 = v18[3];
    v21 = v18[4];
    sub_22B9358B4(v18, v20);
    v22 = (*(v21 + 8))(v20, v21);
    if (v22)
    {
      v23 = v22;
      [v19 setAllowsCellularAccess_];
      [v19 setXPCActivity_];
      swift_unknownObjectRelease();
    }

    [v16 setConfiguration_];

    v24 = swift_task_alloc();
    *(v0 + 312) = v24;
    *v24 = v0;
    v24[1] = sub_22B985814;
    v26 = *(v0 + 240);
    v25 = *(v0 + 248);

    return sub_22B9E4824(v26, v25);
  }

  else
  {
    v28 = *(v0 + 280);

    v29 = sub_22B9BBDF0(MEMORY[0x277D84F90]);
    v30 = *(v0 + 8);

    return v30(v29);
  }
}

uint64_t sub_22B985814(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  v4[40] = a1;
  v4[41] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B985AC8, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[42] = v7;
    *v7 = v6;
    v7[1] = sub_22B9859A0;
    v8 = v4[32];
    v9 = v4[35];

    return sub_22B98614C(v9, a1);
  }
}

uint64_t sub_22B9859A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v7 = sub_22B985BB4;
  }

  else
  {
    *(v4 + 352) = a1;
    v7 = sub_22B985B38;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B985AC8()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 328);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B985B38()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[35];

  v4 = v0[44];
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_22B985BB4()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[35];

  v4 = v0[43];
  v5 = v0[1];

  return v5();
}

uint64_t sub_22B985C2C()
{
  v1 = v0[46];

  v2 = v0[45];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22B985C94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 40) = a4;
  return MEMORY[0x2822009F8](sub_22B985CB8, 0, 0);
}

uint64_t sub_22B985CB8()
{
  sub_22B9ECD68(*(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22B94FC08;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22B9E81AC(v3, v2, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneDeleter.swift", 109, 2);
}

uint64_t sub_22B985DA0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_22B985E60;

  return sub_22B9824B0(a1, a2);
}

uint64_t sub_22B985E60()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B985F5C, 0, 0);
}

uint64_t sub_22B985F5C()
{
  v1 = sub_22B9358B4(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_22B9ECD68(*(v1 + 16));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_22B986050;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_22B9E81AC(v4, v3, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneDeleter.swift", 109, 2);
}

uint64_t sub_22B986050()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B947B40, 0, 0);
}

uint64_t sub_22B98614C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_22BA0FE1C();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = sub_22BA0FE2C();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v9 = *(*(sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v10 = sub_22BA0FD8C();
  v2[15] = v10;
  v11 = *(v10 - 8);
  v2[16] = v11;
  v12 = *(v11 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B986344, 0, 0);
}

unint64_t sub_22B986344()
{
  v169 = v0;
  v1 = v0[23];
  v2 = v0[16];
  v165 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];
  sub_22BA0FD7C();
  sub_22BA0FE0C();
  (*(v7 + 104))(v8, *MEMORY[0x277CC9968], v9);
  sub_22BA0FDFC();
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v165) == 1)
  {
    sub_22B936BEC(v0[14], &unk_27D8D4A90, &qword_22BA126A0);
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141AD40);
    v11 = sub_22BA0FEDC();
    v12 = sub_22BA1044C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22B92A000, v11, v12, "Error creating latest permitted modification date.", v13, 2u);
      MEMORY[0x23189ADD0](v13, -1, -1);
    }

    v15 = v0[22];
    v14 = v0[23];
    v16 = v0[20];
    v17 = v0[21];
    v18 = v0[19];
    v19 = v0[16];
    v156 = v0[18];
    v158 = v0[17];
    v20 = v0[15];
    v160 = v0[14];
    v162 = v0[13];
    v166 = v0[10];

    sub_22B988BC4();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    (*(v19 + 8))(v14, v20);

    v22 = v0[1];

    return v22();
  }

  (*(v0[16] + 32))(v0[22], v0[14], v0[15]);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v24 = v0[21];
  v25 = v0[22];
  v26 = v0[15];
  v27 = v0[16];
  v28 = sub_22BA0FEFC();
  sub_22B936CA8(v28, qword_28141AD40);
  v151 = *(v27 + 16);
  v151(v24, v25, v26);
  v29 = sub_22BA0FEDC();
  v30 = sub_22BA1046C();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[21];
  v33 = v0[15];
  v34 = v0[16];
  if (v31)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v168[0] = v36;
    *v35 = 136315138;
    sub_22B988C18(&qword_281416BF0, MEMORY[0x277CC9578]);
    v37 = sub_22BA10C1C();
    v39 = v38;
    v152 = *(v34 + 8);
    v152(v32, v33);
    v40 = sub_22B99153C(v37, v39, v168);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_22B92A000, v29, v30, "Filtering chat recordIDs to those with modification date after %s", v35, 0xCu);
    sub_22B936C4C(v36);
    MEMORY[0x23189ADD0](v36, -1, -1);
    MEMORY[0x23189ADD0](v35, -1, -1);
  }

  else
  {

    v152 = *(v34 + 8);
    v152(v32, v33);
  }

  v41 = v0[7];
  if ((v41 & 0xC000000000000001) != 0)
  {
    v42 = sub_22BA10A3C();
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v167 = v42 | 0x8000000000000000;
    v46 = v0[7];
  }

  else
  {
    v47 = -1 << *(v41 + 32);
    v44 = ~v47;
    v43 = v41 + 64;
    v48 = -v47;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v45 = v49 & *(v41 + 64);
    v167 = v0[7];
  }

  v146 = v0[6];
  v50 = (v44 + 64) >> 6;
  v159 = v0[16] + 8;

  v51 = 0;
  v145 = MEMORY[0x277D84F98];
  v153 = v50;
  v155 = v43;
  while (2)
  {
    v52 = v51;
    if ((v167 & 0x8000000000000000) != 0)
    {
LABEL_31:
      v69 = sub_22BA10A4C();
      if (v69)
      {
        v71 = v70;
        v0[3] = v69;
        sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
        swift_dynamicCast();
        v67 = v0[2];
        v0[5] = v71;
        sub_22B951A54(0, &qword_281414A30, 0x277CBC5A0);
        swift_dynamicCast();
        v68 = v0[4];
        v51 = v52;
        v64 = v45;
        if (v67)
        {
          goto LABEL_33;
        }
      }

LABEL_62:
      v133 = v0[22];
      v132 = v0[23];
      v135 = v0[20];
      v134 = v0[21];
      v137 = v0[18];
      v136 = v0[19];
      v154 = v0[17];
      v138 = v0[15];
      v157 = v0[14];
      v161 = v0[13];
      v164 = v0[10];
      sub_22B951944();
      v152(v133, v138);
      v152(v132, v138);

      v139 = v0[1];

      return v139(v145);
    }

    while (1)
    {
      while (1)
      {
        v62 = v52;
        v63 = v45;
        v51 = v52;
        if (!v45)
        {
          while (1)
          {
            v51 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              break;
            }

            if (v51 >= v50)
            {
              goto LABEL_62;
            }

            v63 = *(v43 + 8 * v51);
            ++v62;
            if (v63)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_66:
          sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);

          return sub_22BA10CBC();
        }

LABEL_29:
        v64 = (v63 - 1) & v63;
        v65 = (v51 << 9) | (8 * __clz(__rbit64(v63)));
        v66 = *(*(v167 + 56) + v65);
        v67 = *(*(v167 + 48) + v65);
        v68 = v66;
        if (!v67)
        {
          goto LABEL_62;
        }

LABEL_33:
        v72 = [v68 modificationDate];
        if (v72)
        {
          break;
        }

        v93 = v68;
        v94 = sub_22BA0FEDC();
        v95 = sub_22BA1044C();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          *v96 = 138412290;
          *(v96 + 4) = v93;
          *v97 = v68;
          v98 = v64;
          v99 = v93;
          _os_log_impl(&dword_22B92A000, v94, v95, "No modification date on record %@", v96, 0xCu);
          sub_22B936BEC(v97, &qword_27D8D4CD0, qword_22BA14360);
          v100 = v97;
          v50 = v153;
          MEMORY[0x23189ADD0](v100, -1, -1);
          v101 = v96;
          v43 = v155;
          MEMORY[0x23189ADD0](v101, -1, -1);
          v93 = v94;
          v94 = v99;
          v64 = v98;
        }

        v52 = v51;
        v45 = v64;
        if ((v167 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }
      }

      v73 = v0[22];
      v75 = v0[19];
      v74 = v0[20];
      v76 = v0[15];
      v77 = v72;
      sub_22BA0FD5C();

      if (sub_22BA0FD1C())
      {
        v78 = v74;
      }

      else
      {
        v78 = v73;
      }

      v151(v75, v78, v76);
      v163 = v64;
      if ((sub_22BA0FD4C() & 1) == 0)
      {
        v102 = v0[22];
        v103 = v0[17];
        v104 = v0[15];
        v151(v0[18], v0[20], v104);
        v151(v103, v102, v104);
        v105 = v67;
        v106 = sub_22BA0FEDC();
        v107 = sub_22BA1046C();

        v108 = os_log_type_enabled(v106, v107);
        v148 = v0[19];
        v150 = v0[20];
        v110 = v0[17];
        v109 = v0[18];
        v111 = v0[15];
        if (v108)
        {
          v144 = v68;
          v53 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v168[0] = v143;
          *v53 = 138412802;
          *(v53 + 4) = v105;
          *v141 = v67;
          *(v53 + 12) = 2080;
          sub_22B988C18(&qword_281416BF0, MEMORY[0x277CC9578]);
          v142 = v105;
          v54 = sub_22BA10C1C();
          v140 = v107;
          v56 = v55;
          v152(v109, v111);
          v57 = sub_22B99153C(v54, v56, v168);

          *(v53 + 14) = v57;
          *(v53 + 22) = 2080;
          v58 = sub_22BA10C1C();
          v60 = v59;
          v152(v110, v111);
          v61 = sub_22B99153C(v58, v60, v168);

          *(v53 + 24) = v61;
          _os_log_impl(&dword_22B92A000, v106, v140, "Filtering out chat with record ID %@ modification date %s since it is after %s", v53, 0x20u);
          sub_22B936BEC(v141, &qword_27D8D4CD0, qword_22BA14360);
          MEMORY[0x23189ADD0](v141, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x23189ADD0](v143, -1, -1);
          MEMORY[0x23189ADD0](v53, -1, -1);
        }

        else
        {

          v152(v110, v111);
          v152(v109, v111);
        }

        v152(v148, v111);
        v152(v150, v111);
        goto LABEL_24;
      }

      if (*(v146 + 16))
      {
        v79 = v0[6];
        v80 = sub_22B990B14(v67);
        if (v81)
        {
          break;
        }
      }

      v82 = v68;
      v83 = sub_22BA0FEDC();
      v84 = sub_22BA1044C();

      v85 = os_log_type_enabled(v83, v84);
      v86 = v0[19];
      v149 = v0[20];
      v87 = v0[15];
      if (v85)
      {
        v88 = v68;
        v89 = swift_slowAlloc();
        v147 = v86;
        v90 = swift_slowAlloc();
        *v89 = 138412290;
        *(v89 + 4) = v82;
        *v90 = v88;
        v91 = v82;
        _os_log_impl(&dword_22B92A000, v83, v84, "Fetched CKRecord with incorrect recordID, recordID not present in uniqueGuidsByRecordIDs: %@", v89, 0xCu);
        sub_22B936BEC(v90, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v90, -1, -1);
        MEMORY[0x23189ADD0](v89, -1, -1);

        v92 = v147;
      }

      else
      {

        v92 = v86;
      }

      v152(v92, v87);
      v152(v149, v87);
LABEL_24:
      v52 = v51;
      v45 = v163;
      v50 = v153;
      v43 = v155;
      if ((v167 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }
    }

    v112 = (*(v146 + 56) + 16 * v80);
    v114 = *v112;
    v113 = v112[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v168[0] = v145;
    result = sub_22B990B14(v67);
    v117 = v145[2];
    v118 = (v116 & 1) == 0;
    v119 = __OFADD__(v117, v118);
    v120 = v117 + v118;
    if (v119)
    {
      __break(1u);
    }

    else
    {
      v121 = v116;
      if (v145[3] >= v120)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v131 = result;
          sub_22B9EBDD0();
          result = v131;
          v145 = v168[0];
        }
      }

      else
      {
        sub_22B9D84F8(v120, isUniquelyReferenced_nonNull_native);
        v145 = v168[0];
        result = sub_22B990B14(v67);
        if ((v121 & 1) != (v122 & 1))
        {
          goto LABEL_66;
        }
      }

      v124 = v0[19];
      v123 = v0[20];
      v125 = v0[15];
      if (v121)
      {
        v126 = (v145[7] + 16 * result);
        v127 = v126[1];
        *v126 = v114;
        v126[1] = v113;

        v152(v124, v125);
        v152(v123, v125);
LABEL_61:
        v50 = v153;
        v43 = v155;
        v45 = v163;
        continue;
      }

      v145[(result >> 6) + 8] |= 1 << result;
      *(v145[6] + 8 * result) = v67;
      v128 = (v145[7] + 16 * result);
      *v128 = v114;
      v128[1] = v113;

      v152(v124, v125);
      result = (v152)(v123, v125);
      v129 = v145[2];
      v119 = __OFADD__(v129, 1);
      v130 = v129 + 1;
      if (!v119)
      {
        v145[2] = v130;
        goto LABEL_61;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B9872A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B945AC8;

  return sub_22B982758(a1, a2);
}

uint64_t sub_22B987358(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return sub_22B982C88(a1, a2);
}

uint64_t sub_22B987410(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B943E68;

  return sub_22B985DA0(a1, a2);
}

id sub_22B9874C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_22BA1080C())
  {
    sub_22B9579D4(MEMORY[0x277D84F90]);
    v6 = v16;
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  sub_22B951A54(0, &unk_281414AC0, 0x277CBC4A0);
  v17 = v6;
  sub_22B981B98(a3, &v17);

  v7 = sub_22BA105CC();
  v8 = sub_22B99BA10(a1, a2, 0x6574656C6564, 0xE600000000000000);
  [v7 setGroup_];

  v9 = (a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  v10 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  [v10 setQualityOfService_];
  [v10 setAllowsCellularAccess_];
  v11 = v9[3];
  v12 = v9[4];
  sub_22B9358B4(v9, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (v13)
  {
    v14 = v13;
    [v10 setAllowsCellularAccess_];
    [v10 setXPCActivity_];
    swift_unknownObjectRelease();
  }

  [v7 setConfiguration_];

  [v7 setAtomic_];
  [v7 setSavePolicy_];
  return v7;
}

void sub_22B9876E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v26[-v12 - 8];
  v14 = swift_allocObject();
  v15 = *(a2 + 80);
  *(v14 + 80) = *(a2 + 64);
  *(v14 + 96) = v15;
  v16 = *(a2 + 96);
  v17 = *(a2 + 16);
  *(v14 + 16) = *a2;
  *(v14 + 32) = v17;
  v18 = *(a2 + 48);
  *(v14 + 48) = *(a2 + 32);
  *(v14 + 64) = v18;
  *(v14 + 112) = v16;
  *(v14 + 120) = a3;
  *(v14 + 128) = a4;
  (*(v9 + 16))(v13, a1, v8);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  (*(v9 + 32))(v20 + v19, v13, v8);
  sub_22B951748(a2, v26);
  swift_unknownObjectRetain();
  v21 = sub_22B9A7124(sub_22B9889BC, v14, sub_22B988A08);

  v22 = (a3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase);
  v23 = *(a3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
  v24 = v22[4];
  sub_22B9358B4(v22, v23);
  (*(v24 + 8))(v21, v23, v24);
}

void sub_22B9878F4(void *a1, void *a2, char a3, _UNKNOWN **a4, uint64_t a5)
{
  if (a3)
  {
    if (qword_281414D30 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_199;
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v22 = sub_22BA0FEFC();
  sub_22B936CA8(v22, qword_28141AD40);
  sub_22B951748(a4, v144);
  v23 = a1;
  sub_22B930C44(a2);
  v24 = sub_22BA0FEDC();
  v25 = sub_22BA1046C();

  sub_22B930C58(a2);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v144[0] = v28;
    *v26 = 136315650;
    v29 = *(a4 + 16);
    if (v29 > 4)
    {
      v46 = 0x800000022BA1C160;
      v47 = 0x800000022BA1C180;
      v48 = 0xD000000000000015;
      if (v29 != 8)
      {
        v48 = 0xD000000000000023;
        v47 = 0x800000022BA1C1A0;
      }

      if (v29 == 7)
      {
        v48 = 0xD000000000000012;
      }

      else
      {
        v46 = v47;
      }

      v49 = 0x800000022BA1C120;
      v50 = 0xD00000000000001CLL;
      if (v29 != 5)
      {
        v50 = 0xD000000000000014;
        v49 = 0x800000022BA1C140;
      }

      if (*(a4 + 16) <= 6u)
      {
        v35 = v50;
      }

      else
      {
        v35 = v48;
      }

      if (*(a4 + 16) <= 6u)
      {
        v36 = v49;
      }

      else
      {
        v36 = v46;
      }
    }

    else
    {
      v30 = 0x616E614D74616863;
      v31 = 0xEF656E6F5A656574;
      v32 = 0x800000022BA1C0C0;
      v33 = 0x800000022BA1C0E0;
      v34 = 0xD000000000000015;
      if (v29 != 3)
      {
        v34 = 0xD000000000000011;
        v33 = 0x800000022BA1C100;
      }

      if (v29 == 2)
      {
        v34 = 0xD000000000000012;
      }

      else
      {
        v32 = v33;
      }

      if (*(a4 + 16))
      {
        v30 = 0xD000000000000010;
        v31 = 0x800000022BA1C0A0;
      }

      if (*(a4 + 16) <= 1u)
      {
        v35 = v30;
      }

      else
      {
        v35 = v34;
      }

      if (*(a4 + 16) <= 1u)
      {
        v36 = v31;
      }

      else
      {
        v36 = v32;
      }
    }

    sub_22B96F8A4(a4);
    v51 = sub_22B99153C(v35, v36, v144);

    *(v26 + 4) = v51;
    *(v26 + 12) = 2112;
    *(v26 + 14) = v23;
    *(v26 + 22) = 2112;
    *(v26 + 24) = a2;
    *v27 = v23;
    v27[1] = a2;
    v52 = v23;
    sub_22B930C44(a2);
    _os_log_impl(&dword_22B92A000, v24, v25, "Got %s MessagesSummary: %@ %@", v26, 0x20u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v27, -1, -1);
    sub_22B936C4C(v28);
    MEMORY[0x23189ADD0](v28, -1, -1);
    MEMORY[0x23189ADD0](v26, -1, -1);
  }

  else
  {

    sub_22B96F8A4(a4);
  }

  v53 = *(a4 + 16);
  v54 = sub_22BA08430(*(a4 + 16));
  v55 = 0xEF32766465747079;
  v56 = 0x72636E4574616863;
  v57 = 0xEF31566574616470;
  v58 = 0x556567617373656DLL;
  if (v54 != 5)
  {
    v58 = 0x6E776F6E6B6E75;
    v57 = 0xE700000000000000;
  }

  v59 = 0xEA0000000000746ELL;
  v60 = 0x656D686361747461;
  if (v54 != 3)
  {
    v60 = 0xD000000000000012;
    v59 = 0x800000022BA1BA10;
  }

  if (v54 <= 4)
  {
    v58 = v60;
    v57 = v59;
  }

  if (v54 != 1)
  {
    v56 = 0xD000000000000012;
    v55 = 0x800000022BA1B9F0;
  }

  if (!v54)
  {
    v56 = 0xD000000000000012;
    v55 = 0x800000022BA1B9C0;
  }

  if (v54 <= 2)
  {
    v61 = v56;
  }

  else
  {
    v61 = v58;
  }

  if (v54 <= 2)
  {
    v62 = v55;
  }

  else
  {
    v62 = v57;
  }

  v63 = MEMORY[0x231899D30](v61, v62);

  if (!v63)
  {
    sub_22B951748(a4, v144);
    v8 = sub_22BA0FEDC();
    v76 = sub_22BA1046C();
    if (os_log_type_enabled(v8, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v144[0] = v78;
      *v77 = 136315138;
      if (v53 > 4)
      {
        v108 = 0x800000022BA1C160;
        v109 = 0x800000022BA1C180;
        v110 = 0xD000000000000015;
        if (v53 != 8)
        {
          v110 = 0xD000000000000023;
          v109 = 0x800000022BA1C1A0;
        }

        if (v53 == 7)
        {
          v110 = 0xD000000000000012;
        }

        else
        {
          v108 = v109;
        }

        v111 = 0x800000022BA1C120;
        v112 = 0xD00000000000001CLL;
        if (v53 != 5)
        {
          v112 = 0xD000000000000014;
          v111 = 0x800000022BA1C140;
        }

        if (v53 <= 6)
        {
          v84 = v112;
        }

        else
        {
          v84 = v110;
        }

        if (v53 <= 6)
        {
          v85 = v111;
        }

        else
        {
          v85 = v108;
        }
      }

      else
      {
        v79 = 0x616E614D74616863;
        v80 = 0xEF656E6F5A656574;
        v81 = 0x800000022BA1C0C0;
        v82 = 0x800000022BA1C0E0;
        v83 = 0xD000000000000015;
        if (v53 != 3)
        {
          v83 = 0xD000000000000011;
          v82 = 0x800000022BA1C100;
        }

        if (v53 == 2)
        {
          v83 = 0xD000000000000012;
        }

        else
        {
          v81 = v82;
        }

        if (v53)
        {
          v79 = 0xD000000000000010;
          v80 = 0x800000022BA1C0A0;
        }

        if (v53 <= 1)
        {
          v84 = v79;
        }

        else
        {
          v84 = v83;
        }

        if (v53 <= 1)
        {
          v85 = v80;
        }

        else
        {
          v85 = v81;
        }
      }

      sub_22B96F8A4(a4);
      v113 = sub_22B99153C(v84, v85, v144);

      *(v77 + 4) = v113;
      _os_log_impl(&dword_22B92A000, v8, v76, "No value found for count of %s", v77, 0xCu);
      sub_22B936C4C(v78);
      MEMORY[0x23189ADD0](v78, -1, -1);
      v45 = v77;
      goto LABEL_163;
    }

    goto LABEL_114;
  }

  v144[0] = v63;
  swift_unknownObjectRetain();
  sub_22B9349C8(&unk_27D8D4F50, &unk_22BA17980);
  sub_22B9349C8(&qword_27D8D5600, &qword_22BA16B20);
  if (!swift_dynamicCast())
  {
    sub_22B951748(a4, v144);
    swift_unknownObjectRetain();
    v86 = sub_22BA0FEDC();
    v87 = sub_22BA1046C();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v86, v87))
    {

      swift_unknownObjectRelease();
      goto LABEL_115;
    }

    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v144[0] = v89;
    *v88 = 136315394;
    if (v53 > 4)
    {
      v114 = 0x800000022BA1C160;
      v115 = 0x800000022BA1C180;
      v116 = 0xD000000000000015;
      if (v53 != 8)
      {
        v116 = 0xD000000000000023;
        v115 = 0x800000022BA1C1A0;
      }

      if (v53 == 7)
      {
        v116 = 0xD000000000000012;
      }

      else
      {
        v114 = v115;
      }

      v117 = 0x800000022BA1C120;
      v118 = 0xD00000000000001CLL;
      if (v53 != 5)
      {
        v118 = 0xD000000000000014;
        v117 = 0x800000022BA1C140;
      }

      if (v53 <= 6)
      {
        v95 = v118;
      }

      else
      {
        v95 = v116;
      }

      if (v53 <= 6)
      {
        v96 = v117;
      }

      else
      {
        v96 = v114;
      }
    }

    else
    {
      v90 = 0x616E614D74616863;
      v91 = 0xEF656E6F5A656574;
      v92 = 0x800000022BA1C0C0;
      v93 = 0x800000022BA1C0E0;
      v94 = 0xD000000000000015;
      if (v53 != 3)
      {
        v94 = 0xD000000000000011;
        v93 = 0x800000022BA1C100;
      }

      if (v53 == 2)
      {
        v94 = 0xD000000000000012;
      }

      else
      {
        v92 = v93;
      }

      if (v53)
      {
        v90 = 0xD000000000000010;
        v91 = 0x800000022BA1C0A0;
      }

      if (v53 <= 1)
      {
        v95 = v90;
      }

      else
      {
        v95 = v94;
      }

      if (v53 <= 1)
      {
        v96 = v91;
      }

      else
      {
        v96 = v92;
      }
    }

    sub_22B96F8A4(a4);
    v119 = sub_22B99153C(v95, v96, v144);

    *(v88 + 4) = v119;
    *(v88 + 12) = 2080;
    v120 = [v63 description];
    v121 = sub_22BA0FFFC();
    v123 = v122;

    v124 = sub_22B99153C(v121, v123, v144);

    *(v88 + 14) = v124;
    _os_log_impl(&dword_22B92A000, v86, v87, "Unexpected type for count of %s:  %s", v88, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v89, -1, -1);
    MEMORY[0x23189ADD0](v88, -1, -1);

LABEL_196:
    swift_unknownObjectRelease();
    return;
  }

  v64 = v143;
  if (v143 >> 62)
  {
    v65 = sub_22BA1080C();
  }

  else
  {
    v65 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v139 = a4;
  v140 = v53;
  if (v65)
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    a2 = (v143 & 0xFFFFFFFFFFFFFF8);
    a4 = &off_27871A000;
    while (1)
    {
      if ((v143 & 0xC000000000000001) != 0)
      {
        v69 = v64;
        v70 = MEMORY[0x231899FA0](v66, v64);
      }

      else
      {
        if (v66 >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_198;
        }

        v69 = v64;
        v70 = *(v64 + 8 * v66 + 32);
      }

      v71 = v70;
      v72 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      v73 = [v70 longLongValue];
      if (v73 < v68)
      {
        v68 = v73;
      }

      v74 = [v71 longLongValue];

      if (v74 > v67)
      {
        v67 = v74;
      }

      ++v66;
      v75 = v72 == v65;
      v64 = v69;
      if (v75)
      {
        goto LABEL_133;
      }
    }

    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    swift_once();
LABEL_3:
    v7 = sub_22BA0FEFC();
    sub_22B936CA8(v7, qword_28141AD40);
    sub_22B951748(a4, v144);
    sub_22B930C44(a2);
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1046C();
    sub_22B930C58(a2);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v144[0] = v12;
      *v10 = 136315394;
      v13 = *(a4 + 16);
      if (v13 > 4)
      {
        v37 = 0x800000022BA1C160;
        v38 = 0x800000022BA1C180;
        v39 = 0xD000000000000015;
        if (v13 != 8)
        {
          v39 = 0xD000000000000023;
          v38 = 0x800000022BA1C1A0;
        }

        if (v13 == 7)
        {
          v39 = 0xD000000000000012;
        }

        else
        {
          v37 = v38;
        }

        v40 = 0x800000022BA1C120;
        v41 = 0xD000000000000014;
        if (v13 == 5)
        {
          v41 = 0xD00000000000001CLL;
        }

        else
        {
          v40 = 0x800000022BA1C140;
        }

        if (*(a4 + 16) <= 6u)
        {
          v19 = v41;
        }

        else
        {
          v19 = v39;
        }

        if (*(a4 + 16) <= 6u)
        {
          v20 = v40;
        }

        else
        {
          v20 = v37;
        }
      }

      else
      {
        v14 = 0x616E614D74616863;
        v15 = 0xEF656E6F5A656574;
        v16 = 0x800000022BA1C0C0;
        v17 = 0x800000022BA1C0E0;
        v18 = 0xD000000000000015;
        if (v13 != 3)
        {
          v18 = 0xD000000000000011;
          v17 = 0x800000022BA1C100;
        }

        if (v13 == 2)
        {
          v18 = 0xD000000000000012;
        }

        else
        {
          v16 = v17;
        }

        if (*(a4 + 16))
        {
          v14 = 0xD000000000000010;
          v15 = 0x800000022BA1C0A0;
        }

        if (*(a4 + 16) <= 1u)
        {
          v19 = v14;
        }

        else
        {
          v19 = v18;
        }

        if (*(a4 + 16) <= 1u)
        {
          v20 = v15;
        }

        else
        {
          v20 = v16;
        }
      }

      sub_22B96F8A4(a4);
      v42 = sub_22B99153C(v19, v20, v144);

      *(v10 + 4) = v42;
      *(v10 + 12) = 2112;
      v43 = a2;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v44;
      *v11 = v44;
      _os_log_impl(&dword_22B92A000, v8, v9, "Failed fetching MessagesSummary for %s %@", v10, 0x16u);
      sub_22B936BEC(v11, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v11, -1, -1);
      sub_22B936C4C(v12);
      MEMORY[0x23189ADD0](v12, -1, -1);
      v45 = v10;
LABEL_163:
      MEMORY[0x23189ADD0](v45, -1, -1);

      return;
    }

LABEL_114:

LABEL_115:
    sub_22B96F8A4(a4);
    return;
  }

  v68 = 0;
  v67 = 0;
LABEL_133:
  sub_22B951748(v139, v144);

  v97 = sub_22BA0FEDC();
  v98 = sub_22BA1046C();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v144[0] = v100;
    *v99 = 136315906;
    v142 = v100;
    if (v140 > 4)
    {
      v125 = 0x800000022BA1C160;
      v126 = 0x800000022BA1C180;
      v127 = 0xD000000000000015;
      if (v140 != 8)
      {
        v127 = 0xD000000000000023;
        v126 = 0x800000022BA1C1A0;
      }

      if (v140 == 7)
      {
        v127 = 0xD000000000000012;
      }

      else
      {
        v125 = v126;
      }

      v128 = 0x800000022BA1C120;
      v129 = 0xD00000000000001CLL;
      if (v140 != 5)
      {
        v129 = 0xD000000000000014;
        v128 = 0x800000022BA1C140;
      }

      if (v140 <= 6)
      {
        v106 = v129;
      }

      else
      {
        v106 = v127;
      }

      if (v140 <= 6)
      {
        v107 = v128;
      }

      else
      {
        v107 = v125;
      }
    }

    else
    {
      v101 = 0x616E614D74616863;
      v102 = 0xEF656E6F5A656574;
      v103 = 0x800000022BA1C0C0;
      v104 = 0x800000022BA1C0E0;
      v105 = 0xD000000000000015;
      if (v140 != 3)
      {
        v105 = 0xD000000000000011;
        v104 = 0x800000022BA1C100;
      }

      if (v140 == 2)
      {
        v105 = 0xD000000000000012;
      }

      else
      {
        v103 = v104;
      }

      if (v140)
      {
        v101 = 0xD000000000000010;
        v102 = 0x800000022BA1C0A0;
      }

      if (v140 <= 1)
      {
        v106 = v101;
      }

      else
      {
        v106 = v105;
      }

      if (v140 <= 1)
      {
        v107 = v102;
      }

      else
      {
        v107 = v103;
      }
    }

    sub_22B96F8A4(v139);
    v130 = sub_22B99153C(v106, v107, v144);

    *(v99 + 4) = v130;
    *(v99 + 12) = 2048;
    *(v99 + 14) = v67;
    *(v99 + 22) = 2048;
    *(v99 + 24) = v68;
    *(v99 + 32) = 2080;
    v131 = sub_22B951A54(0, &qword_281414A20, 0x277CCABB0);
    v132 = MEMORY[0x231899870](v64, v131);
    v134 = v133;

    v135 = sub_22B99153C(v132, v134, v144);

    *(v99 + 34) = v135;
    _os_log_impl(&dword_22B92A000, v97, v98, "Found count of %s: total %lld live %lld from %s", v99, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v142, -1, -1);
    MEMORY[0x23189ADD0](v99, -1, -1);
  }

  else
  {

    sub_22B96F8A4(v139);
  }

  if (v67 < 1)
  {
    goto LABEL_196;
  }

  sub_22B935B38(a5 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState, v144);
  v136 = sub_22B9358B4(v144, v144[3]);
  v137 = qword_281414B68;
  v138 = *(*v136 + 24);
  if (v137 != -1)
  {
    swift_once();
  }

  sub_22BA0AA94(v67, v140, qword_28141ACF0);
  swift_unknownObjectRelease();

  sub_22B936C4C(v144);
}

__n128 sub_22B9889BC(void *a1, void *a2, char a3)
{
  v4 = *(v3 + 120);
  v5 = *(v3 + 128);
  v6 = *(v3 + 96);
  v10[4] = *(v3 + 80);
  v10[5] = v6;
  v11 = *(v3 + 112);
  v7 = *(v3 + 32);
  v10[0] = *(v3 + 16);
  v10[1] = v7;
  v8 = *(v3 + 64);
  v10[2] = *(v3 + 48);
  v10[3] = v8;
  sub_22B9878F4(a1, a2, a3 & 1, v10, v4);
  return result;
}

uint64_t sub_22B988A08(void *a1, char a2)
{
  v4 = *(*(sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460) - 8) + 80);

  return sub_22B9DB4B8(a1, a2 & 1);
}

uint64_t sub_22B988A94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B943E68;

  return sub_22B985C94(a1, v4, v5, v8, v6, v7);
}

unint64_t sub_22B988BC4()
{
  result = qword_27D8D53F0;
  if (!qword_27D8D53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D53F0);
  }

  return result;
}

uint64_t sub_22B988C18(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_22B988C60(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = *(v3 + 80);
  v9[4] = *(v3 + 64);
  v9[5] = v5;
  v10 = *(v3 + 96);
  v6 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v6;
  v7 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v7;
  sub_22B9876E0(a1, v9, v2, v4);
  return result;
}

unint64_t sub_22B988CC0()
{
  result = qword_27D8D5400;
  if (!qword_27D8D5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5400);
  }

  return result;
}

uint64_t sub_22B988D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_22B9934AC(a3, v26 - v10, &unk_27D8D5780, &qword_22BA13DB0);
  v12 = sub_22BA1030C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B936BEC(v11, &unk_27D8D5780, &qword_22BA13DB0);
  }

  else
  {
    sub_22BA102FC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22BA1029C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a3;
      v20 = sub_22BA1006C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      type metadata accessor for SyncStore();

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_22B936BEC(v26[0], &unk_27D8D5780, &qword_22BA13DB0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  type metadata accessor for SyncStore();
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22B989028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_22B9934AC(a3, v28 - v12, &unk_27D8D5780, &qword_22BA13DB0);
  v14 = sub_22BA1030C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_22B936BEC(v13, &unk_27D8D5780, &qword_22BA13DB0);
  }

  else
  {
    sub_22BA102FC();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_22BA1029C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_22BA1006C() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_22B989328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_22B9934AC(a3, v28 - v12, &unk_27D8D5780, &qword_22BA13DB0);
  v14 = sub_22BA1030C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_22B936BEC(v13, &unk_27D8D5780, &qword_22BA13DB0);
  }

  else
  {
    sub_22BA102FC();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_22BA1029C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_22BA1006C() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      sub_22B9349C8(&qword_27D8D54D0, &qword_22BA16DB0);
      v24 = (v21 | v19);
      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v25 = swift_task_create();

      sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);

      return v25;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  sub_22B9349C8(&qword_27D8D54D0, &qword_22BA16DB0);
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

unint64_t sub_22B98963C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B9349C8(&qword_27D8D5510, &qword_22BA16DF0);
    v2 = sub_22BA10A8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_22B958068(*(a1 + 48) + 40 * v14, v29);
        sub_22B936B20(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_22B958068(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_22B936B20(v27 + 8, v22);
        sub_22B936BEC(v26, &qword_27D8D54B8, &unk_22BA16D60);
        v23 = v20;
        sub_22B936C98(v22, v24);
        v15 = v23;
        sub_22B936C98(v24, v25);
        sub_22B936C98(v25, &v23);
        result = sub_22B990A58(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_22B936C4C(v12);
          result = sub_22B936C98(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_22B936C98(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_22B936BEC(v26, &qword_27D8D54B8, &unk_22BA16D60);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_22B989918(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B9349C8(&qword_27D8D54B0, &qword_22BA16D58);
    v2 = sub_22BA10A8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_22B958068(*(a1 + 48) + 40 * v14, v27);
        sub_22B936B20(*(a1 + 56) + 32 * v14, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_22B958068(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_22B936BEC(v24, &qword_27D8D54B8, &unk_22BA16D60);

          goto LABEL_23;
        }

        sub_22B936B20(v25 + 8, v23);
        sub_22B936BEC(v24, &qword_27D8D54B8, &unk_22BA16D60);
        sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_22B990A58(v21, v22);
        v15 = result;
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;

          v11 = v2[7];
          v12 = *(v11 + 8 * v15);
          *(v11 + 8 * v15) = v21;

          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22B989BF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v184 = a2;
  v201 = *MEMORY[0x277D85DE8];
  v3 = sub_22B9349C8(&qword_27D8D54A0, &qword_22BA16D48);
  v185 = *(v3 - 8);
  v186 = v3;
  v4 = *(v185 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v187 = &v178 - v6;
  v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v191 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v178 - v13;
  v15 = sub_22B9349C8(&qword_27D8D4B90, &qword_22BA12C40);
  v188 = *(v15 - 8);
  v189 = v15;
  v16 = *(v188 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v178 - v18;
  v20 = type metadata accessor for ChatRecord(0);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = (&v178 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v23 + 40);
  v27 = sub_22BA0FD8C();
  v28 = *(*(v27 - 8) + 56);
  v194 = v26;
  v28(v25 + v26, 1, 1, v27);
  v193 = *(v20 + 44);
  v28(v25 + v193, 1, 1, v27);
  v192 = v20;
  v29 = *(v20 + 60);
  v197 = v25;
  *&v29[v25] = 0;
  v30 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9358F8();
  v31 = v19;
  v32 = v196;
  sub_22BA10D8C();
  if (v32)
  {
    v195 = v32;
    sub_22B936C4C(a1);
    v190 = 0;
    v191 = 0;
    LODWORD(v196) = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    LODWORD(v189) = 0;
    LODWORD(v188) = 0;
    LODWORD(v187) = 0;
    v39 = 0;
    goto LABEL_4;
  }

  v33 = v14;
  LOBYTE(v199) = 0;
  v34 = v189;
  v35 = sub_22BA10ACC();
  v196 = v29;
  v52 = v197;
  *v197 = v35;
  v52[1] = v53;
  LOBYTE(v199) = 1;
  v54 = sub_22BA10ACC();
  v183 = a1;
  v56 = v188;
  v52[2] = v54;
  v52[3] = v55;
  LOBYTE(v199) = 2;
  v52[4] = sub_22BA10ACC();
  v52[5] = v57;
  LOBYTE(v199) = 3;
  v52[6] = sub_22BA10ACC();
  v52[7] = v58;
  LOBYTE(v199) = 4;
  v52[8] = sub_22BA10ACC();
  v52[9] = v59;
  v182 = v59;
  LOBYTE(v199) = 5;
  v60 = sub_22BA10ACC();
  v195 = 0;
  v52[10] = v60;
  v52[11] = v61;
  LOBYTE(v199) = 6;
  sub_22B9921F8(&unk_281416C00, MEMORY[0x277CC9578]);
  v190 = v33;
  v62 = v195;
  sub_22BA10AFC();
  v195 = v62;
  if (v62)
  {
    goto LABEL_25;
  }

  v63 = v194;
  sub_22B936BEC(v52 + v194, &qword_27D8D5470, &qword_22BA16C80);
  sub_22B935A74(v190, v52 + v63);
  LOBYTE(v199) = 7;
  v64 = v191;
  v65 = v195;
  sub_22BA10AFC();
  v195 = v65;
  if (v65)
  {
LABEL_25:
    (*(v56 + 8))(v31, v34);
LABEL_26:
    v39 = 0;
    LODWORD(v187) = 0;
    LODWORD(v188) = 0;
    LODWORD(v189) = 0;
    LODWORD(v196) = 0;
    v190 = 0;
    v191 = 0;
LABEL_27:
    sub_22B936C4C(v183);
    v66 = v197;
    v67 = v197[1];

    v69 = v66[3];

    v68 = v197[5];

    v38 = v196;
    v36 = v196;
    v37 = v196;
LABEL_28:
    v70 = v197[7];

LABEL_4:

    v40 = v197;
    sub_22B936BEC(v197 + v194, &qword_27D8D5470, &qword_22BA16C80);
    sub_22B936BEC(v40 + v193, &qword_27D8D5470, &qword_22BA16C80);

    v41 = v192;
    if (v39)
    {
      v45 = *(v40 + v192[16] + 8);

      if (!v187)
      {
LABEL_6:
        if (!v188)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if (!v187)
    {
      goto LABEL_6;
    }

    v46 = *(v40 + v41[17] + 8);

    if (!v188)
    {
LABEL_7:
      if (!v189)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    v47 = *(v40 + v41[18] + 8);

    if (!v189)
    {
LABEL_8:
      if (!v38)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    v48 = *(v40 + v41[19] + 8);

    if (!v38)
    {
LABEL_9:
      if (!v37)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    v49 = *(v40 + v41[20]);

    if (!v37)
    {
LABEL_10:
      if (!v36)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

LABEL_20:
    v50 = *(v40 + v41[21] + 8);

    if (!v36)
    {
LABEL_11:
      if (!v196)
      {
LABEL_13:

LABEL_14:
        v44 = *MEMORY[0x277D85DE8];
        return result;
      }

LABEL_12:
      v42 = *(v40 + v41[27] + 8);

      goto LABEL_13;
    }

LABEL_21:
    v51 = *(v40 + v41[24] + 8);

    if (!v196)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v71 = v197;
  v72 = v64;
  v73 = v193;
  sub_22B936BEC(v197 + v193, &qword_27D8D5470, &qword_22BA16C80);
  sub_22B935A74(v72, v71 + v73);
  LOBYTE(v199) = 8;
  v181 = v31;
  v74 = v195;
  v75 = sub_22BA10ACC();
  v195 = v74;
  if (v74)
  {
    (*(v56 + 8))(v181, v189);
    goto LABEL_26;
  }

  v77 = (v197 + v192[12]);
  *v77 = v75;
  v77[1] = v76;
  v78 = v183[4];
  sub_22B9358B4(v183, v183[3]);
  sub_22B9930F0();
  v79 = v195;
  sub_22BA10D8C();
  v195 = v79;
  if (v79)
  {
LABEL_35:
    (*(v188 + 8))(v181, v189);
    v39 = 0;
    LODWORD(v187) = 0;
    LODWORD(v188) = 0;
    LODWORD(v189) = 0;
    LODWORD(v196) = 0;
    v190 = 0;
    v191 = 0;
    goto LABEL_27;
  }

  LOBYTE(v199) = 0;
  v80 = sub_22BA10AEC();
  v195 = 0;
  v81 = v80;
  v83 = v82;
  v84 = v197 + v192[13];
  *v84 = v80;
  v84[8] = v82 & 1;
  LOBYTE(v199) = 1;
  v85 = v195;
  v86 = sub_22BA10AEC();
  v195 = v85;
  if (v85)
  {
    goto LABEL_34;
  }

  v88 = v197 + v192[14];
  *v88 = v86;
  v88[8] = v87 & 1;
  LOBYTE(v198) = 2;
  v180 = sub_22B9363C8();
  v89 = v195;
  sub_22BA10AFC();
  v195 = v89;
  if (v89)
  {
LABEL_34:
    (*(v185 + 8))(v187, v186);
    goto LABEL_35;
  }

  v178 = v199;
  v179 = v200;
  if (v200 >> 60 == 15)
  {
    v90 = (v197 + v192[16]);
    *v90 = 0;
    v90[1] = 0;
    goto LABEL_49;
  }

  v91 = v178;
  v92 = v179;
  sub_22B936A50(v178, v179);
  v93 = sub_22BA0FC9C();
  v95 = v94;
  sub_22B9359A8(v91, v92);
  v96 = (v197 + v192[16]);
  *v96 = v93;
  v96[1] = v95;
  v97 = HIBYTE(v95) & 0xF;
  if ((v95 & 0x2000000000000000) == 0)
  {
    v97 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (v97)
  {

    v191 = sub_22BA0FC6C();
    if (v98 >> 60 == 15)
    {
    }

    else
    {
      v99 = v98;
      v100 = objc_opt_self();
      v101 = sub_22BA0FC8C();
      v199 = 0;
      v102 = [v100 propertyListWithData:v101 options:0 format:0 error:&v199];

      if (!v102)
      {
        v115 = v199;
        v116 = sub_22BA0FB6C();

        v195 = v116;
        swift_willThrow();

        sub_22B9359A8(v191, v99);
        sub_22B9359A8(v178, v179);
        (*(v185 + 8))(v187, v186);
        (*(v188 + 8))(v181, v189);
        LODWORD(v187) = 0;
        LODWORD(v188) = 0;
        LODWORD(v189) = 0;
        LODWORD(v196) = 0;
        v190 = 0;
        v191 = 0;
        goto LABEL_51;
      }

      v103 = v199;
      sub_22BA107AC();

      sub_22B9359A8(v191, v99);
      swift_unknownObjectRelease();
      sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
      if (swift_dynamicCast())
      {
        v104 = v198;
LABEL_48:
        *&v196[v197] = v104;
        goto LABEL_49;
      }
    }

    v104 = 0;
    goto LABEL_48;
  }

LABEL_49:
  LOBYTE(v199) = 3;
  v105 = v195;
  v191 = sub_22BA10ACC();
  v195 = v105;
  v196 = v106;
  if (v105)
  {
    sub_22B9359A8(v178, v179);
    (*(v185 + 8))(v187, v186);
    (*(v188 + 8))(v181, v189);
    LODWORD(v187) = 0;
    LODWORD(v188) = 0;
    LODWORD(v189) = 0;
    LODWORD(v196) = 0;
    v190 = 0;
    v191 = 0;
LABEL_51:
    v39 = 1;
    goto LABEL_27;
  }

  v107 = (v197 + v192[17]);
  v108 = v196;
  *v107 = v191;
  v107[1] = v108;
  LOBYTE(v199) = 4;
  v109 = sub_22BA10ACC();
  v195 = 0;
  v110 = (v197 + v192[18]);
  *v110 = v109;
  v110[1] = v111;
  LOBYTE(v199) = 5;
  v112 = v195;
  v113 = sub_22BA10ACC();
  v195 = v112;
  if (v112)
  {
    sub_22B9359A8(v178, v179);
    (*(v185 + 8))(v187, v186);
    (*(v188 + 8))(v181, v189);
    LODWORD(v189) = 0;
    LODWORD(v196) = 0;
    v190 = 0;
    v191 = 0;
    v39 = 1;
    LODWORD(v187) = 1;
    LODWORD(v188) = 1;
    goto LABEL_27;
  }

  v117 = (v197 + v192[19]);
  *v117 = v113;
  v117[1] = v114;
  sub_22B935B38(v183, &v199);
  v118 = v195;
  v119 = sub_22B9688AC(&v199);
  v195 = v118;
  if (v118)
  {
    sub_22B9359A8(v178, v179);
    (*(v185 + 8))(v187, v186);
    (*(v188 + 8))(v181, v189);
    LODWORD(v196) = 0;
    v190 = 0;
    v191 = 0;
    v39 = 1;
    LODWORD(v187) = 1;
    LODWORD(v188) = 1;
    LODWORD(v189) = 1;
    goto LABEL_27;
  }

  *(v197 + v192[20]) = v119;
  LOBYTE(v199) = 7;
  v120 = v195;
  v121 = sub_22BA10ACC();
  v37 = v120 == 0;
  v195 = v120;
  if (v120)
  {
    goto LABEL_61;
  }

  v123 = (v197 + v192[21]);
  *v123 = v121;
  v123[1] = v122;
  LOBYTE(v199) = 8;
  v124 = v195;
  v125 = sub_22BA10AEC();
  v195 = v124;
  if (v124)
  {
    goto LABEL_61;
  }

  v127 = v197 + v192[22];
  *v127 = v125;
  v127[8] = v126 & 1;
  LOBYTE(v199) = 9;
  v128 = v195;
  v129 = sub_22BA10AEC();
  v195 = v128;
  if (v128 || (v131 = v197 + v192[23], *v131 = v129, v131[8] = v130 & 1, LOBYTE(v199) = 10, v132 = v195, v133 = sub_22BA10ACC(), (v195 = v132) != 0))
  {
LABEL_61:
    sub_22B9359A8(v178, v179);
    (*(v185 + 8))(v187, v186);
    (*(v188 + 8))(v181, v189);
    v36 = 0;
LABEL_62:
    sub_22B936C4C(v183);
    v135 = v197;
    v136 = v197[1];

    v137 = v135[3];

    v138 = v135[5];

    v190 = 0;
    v191 = 0;
    LODWORD(v196) = 0;
    v38 = 1;
    LODWORD(v189) = 1;
    LODWORD(v188) = 1;
    LODWORD(v187) = 1;
    v39 = 1;
    goto LABEL_28;
  }

  v139 = (v197 + v192[24]);
  *v139 = v133;
  v139[1] = v134;
  LOBYTE(v199) = 11;
  v140 = v195;
  v141 = sub_22BA10B0C();
  v195 = v140;
  if (v140)
  {
LABEL_64:
    sub_22B9359A8(v178, v179);
    (*(v185 + 8))(v187, v186);
    (*(v188 + 8))(v181, v189);
    v36 = 1;
    goto LABEL_62;
  }

  v143 = v197 + v192[25];
  *v143 = v141;
  v143[8] = v142 & 1;
  sub_22B935B38(v183, &v199);
  v144 = v195;
  v145 = sub_22B9491D4(&v199);
  if (v144)
  {

    v145 = 0;
    v146 = 0;
    v148 = 0;
  }

  else
  {
    v148 = v147 & 1;
  }

  v195 = 0;
  v149 = v197 + v192[26];
  *v149 = v145;
  *(v149 + 1) = v146;
  v149[16] = v148;
  v149[17] = v144 != 0;
  LOBYTE(v199) = 13;
  if (sub_22BA10B5C())
  {
    LOBYTE(v199) = 13;
    v150 = v195;
    v151 = sub_22BA10ACC();
    v195 = v150;
    if (v150)
    {
      goto LABEL_64;
    }

    if (v152)
    {
      v153 = (v197 + v192[27]);
      *v153 = v151;
      v153[1] = v152;
LABEL_81:
      LOBYTE(v199) = 15;
      v155 = v195;
      v156 = sub_22BA10ACC();
      v191 = v157;
      v195 = v155;
      if (v155)
      {
        sub_22B9359A8(v178, v179);
        (*(v185 + 8))(v187, v186);
        (*(v188 + 8))(v181, v189);
        v190 = 0;
        v191 = 0;
      }

      else
      {
        v158 = (v197 + v192[29]);
        v159 = v191;
        *v158 = v156;
        v158[1] = v159;
        sub_22B9349C8(&qword_27D8D54A8, &qword_22BA18970);
        LOBYTE(v198) = 16;
        sub_22B993144();
        v160 = v195;
        sub_22BA10AFC();
        v195 = v160;
        if (v160)
        {
          sub_22B9359A8(v178, v179);
          (*(v185 + 8))(v187, v186);
          (*(v188 + 8))(v181, v189);
          v190 = 0;
        }

        else
        {
          v161 = v192[30];
          v190 = v199;
          *(v197 + v161) = v199;
          LOBYTE(v199) = 14;
          v162 = v195;
          v163 = sub_22BA10AEC();
          v195 = v162;
          if (!v162)
          {
            if (v164)
            {
              v165 = 1;
            }

            else
            {
              v165 = v163;
            }

            v166 = v197 + v192[28];
            *v166 = v165;
            v166[8] = 0;
            sub_22B935B38(v183, &v199);
            v167 = v195;
            v168 = sub_22B996330(&v199);
            if (v167)
            {

              v167 = 0;
              v168 = 1;
            }

            *(v197 + v192[31]) = v168;
            LOBYTE(v198) = 17;
            sub_22BA10AFC();
            v195 = v167;
            v169 = v199;
            v170 = v200;
            if (v200 >> 60 == 15)
            {
              v171 = 0;
            }

            else
            {
              sub_22B936A50(v199, v200);
              v171 = sub_22BA0FC8C();
              sub_22B9359A8(v169, v170);
            }

            v172 = JWDecodeDictionary();

            if (v172)
            {
              v173 = sub_22BA0FF6C();

              v174 = sub_22B989918(v173);
            }

            else
            {
              v174 = 0;
            }

            v175 = v197;
            *(v197 + v192[32]) = v174;
            sub_22B98D0C4(0xD000000000000024, 0x800000022BA1D930, 0x6F6E614674616843, 0xEF726F7272457475);
            sub_22B9359A8(v169, v170);
            sub_22B9359A8(v178, v179);
            (*(v185 + 8))(v187, v186);
            (*(v188 + 8))(v181, v189);
            sub_22B974E6C(v175, v184);
            sub_22B936C4C(v183);
            result = sub_22B974ED0(v175);
            goto LABEL_14;
          }

          sub_22B9359A8(v178, v179);
          (*(v185 + 8))(v187, v186);
          (*(v188 + 8))(v181, v189);
        }
      }

      v39 = 1;
      LODWORD(v187) = 1;
      LODWORD(v188) = 1;
      LODWORD(v189) = 1;
      LODWORD(v196) = 1;
      goto LABEL_27;
    }
  }

  if (v83)
  {
    goto LABEL_80;
  }

  if (sub_22BA10C6C())
  {
    if (v81 == 10)
    {
      goto LABEL_80;
    }

    goto LABEL_101;
  }

  if ((sub_22BA0FF9C() & 1) == 0)
  {
    goto LABEL_80;
  }

  result = sub_22B992240(0x2DuLL, 0xE100000000000000);
  if ((result & 0x100000000) != 0)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if ((result & 0xFFFFFF80) != 0)
  {
LABEL_80:
    v154 = (v197 + v192[27]);
    *v154 = 0;
    v154[1] = 0;
    goto LABEL_81;
  }

  result = sub_22B992240(0x2DuLL, 0xE100000000000000);
  if ((result & 0x100000000) == 0)
  {
    if ((result & 0xFFFFFF00) == 0)
    {
      if (v81 == result)
      {
        goto LABEL_80;
      }

LABEL_101:
      v176 = v196;
      v177 = (v197 + v192[27]);
      *v177 = v191;
      v177[1] = v176;

      goto LABEL_81;
    }

    __break(1u);
    goto LABEL_103;
  }

LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_22B98B2F8(void *a1)
{
  v2 = v1;
  v142 = *MEMORY[0x277D85DE8];
  v131 = sub_22B9349C8(&qword_27D8D54D8, &qword_22BA16DC0);
  v133 = *(v131 - 8);
  v4 = *(v133 + 64);
  MEMORY[0x28223BE20](v131, v5);
  v132 = &v127 - v6;
  v137 = sub_22B9349C8(&qword_27D8D54E0, &qword_22BA16DC8);
  v135 = *(v137 - 8);
  v7 = *(v135 + 64);
  MEMORY[0x28223BE20](v137, v8);
  v136 = &v127 - v9;
  v10 = sub_22B9349C8(&qword_27D8D5470, &qword_22BA16C80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v138 = &v127 - v13;
  v14 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v19 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v127 - v21;
  v23 = sub_22B9349C8(&qword_27D8D54E8, &unk_22BA16DD0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v127 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v134 = a1;
  sub_22B9358B4(a1, v29);
  sub_22B9358F8();
  v31 = v23;
  sub_22BA10D9C();
  v32 = *v2;
  v33 = *(v2 + 1);
  LOBYTE(v141) = 0;
  v34 = v139;
  sub_22BA10B7C();
  if (v34)
  {
    v139 = v34;
    result = (*(v24 + 8))(v28, v23);
    goto LABEL_6;
  }

  v36 = v22;
  v37 = v138;
  v130 = v24;
  v38 = *(v2 + 2);
  v39 = *(v2 + 3);
  LOBYTE(v141) = 1;
  sub_22BA10B7C();
  v40 = *(v2 + 4);
  v41 = *(v2 + 5);
  LOBYTE(v141) = 2;
  sub_22BA10B7C();
  v139 = 0;
  v141 = *(v2 + 3);
  v140 = 3;
  sub_22B9349C8(&qword_27D8D5478, &unk_22BA173E0);
  sub_22B993430();
  v43 = v139;
  sub_22BA10BEC();
  if (v43)
  {
    v139 = v43;
LABEL_5:
    result = (*(v130 + 8))(v28, v31);
    goto LABEL_6;
  }

  v141 = *(v2 + 4);
  v140 = 4;
  sub_22BA10BEC();
  v141 = *(v2 + 5);
  v140 = 5;
  sub_22BA10BEC();
  v139 = 0;
  v129 = type metadata accessor for ChatRecord(0);
  v44 = v37;
  sub_22B9934AC(&v2[*(v129 + 40)], v37, &qword_27D8D5470, &qword_22BA16C80);
  sub_22B935A74(v37, v36);
  LOBYTE(v141) = 6;
  sub_22BA0FD8C();
  sub_22B9921F8(&qword_27D8D5058, MEMORY[0x277CC9578]);
  v45 = v139;
  sub_22BA10BAC();
  v139 = v45;
  v46 = v36;
  if (v45)
  {
    goto LABEL_10;
  }

  sub_22B936BEC(v36, &unk_27D8D4A90, &qword_22BA126A0);
  v47 = v129;
  sub_22B9934AC(&v2[*(v129 + 44)], v44, &qword_27D8D5470, &qword_22BA16C80);
  sub_22B935A74(v44, v19);
  LOBYTE(v141) = 7;
  v48 = v139;
  sub_22BA10BAC();
  v139 = v48;
  v46 = v19;
  if (v48)
  {
LABEL_10:
    sub_22B936BEC(v46, &unk_27D8D4A90, &qword_22BA126A0);
    goto LABEL_5;
  }

  sub_22B936BEC(v19, &unk_27D8D4A90, &qword_22BA126A0);
  v49 = &v2[v47[12]];
  v50 = *v49;
  v51 = *(v49 + 1);
  LOBYTE(v141) = 8;
  v52 = v139;
  sub_22BA10B7C();
  v139 = v52;
  v53 = v130;
  if (v52)
  {
    goto LABEL_5;
  }

  v128 = v31;
  v54 = v134[3];
  v55 = v134[4];
  v138 = v2;
  sub_22B9358B4(v134, v54);
  sub_22B9930F0();
  v56 = v136;
  v57 = v138;
  sub_22BA10D9C();
  v58 = &v57[v47[13]];
  v59 = *v58;
  v60 = v58[8];
  LOBYTE(v141) = 0;
  v61 = v137;
  v62 = v139;
  sub_22BA10B9C();
  v139 = v62;
  if (v62)
  {
    (*(v135 + 8))(v56, v61);
    result = (*(v53 + 8))(v28, v128);
    goto LABEL_6;
  }

  v127 = v28;
  v63 = &v57[v47[14]];
  v64 = *v63;
  v65 = v63[8];
  LOBYTE(v141) = 1;
  sub_22BA10B9C();
  v139 = 0;
  if (*&v138[v47[15]])
  {
    v66 = objc_opt_self();
    v67 = sub_22BA0FF5C();
    *&v141 = 0;
    v68 = [v66 dataWithPropertyList:v67 format:200 options:0 error:&v141];

    v69 = v141;
    if (v68)
    {
      v70 = sub_22BA0FCAC();
      v72 = v71;

      sub_22BA0FC9C();
      LOBYTE(v141) = 2;
      v73 = v139;
      sub_22BA10BCC();
      v139 = v73;
      if (v73)
      {

        sub_22B9359BC(v70, v72);
LABEL_22:
        (*(v135 + 8))(v136, v137);
        result = (*(v130 + 8))(v127, v128);
        goto LABEL_6;
      }

      sub_22B9359BC(v70, v72);
    }

    else
    {
      v74 = v69;
      v75 = sub_22BA0FB6C();

      swift_willThrow();
      v139 = 0;
    }
  }

  v76 = &v138[v47[17]];
  v77 = *v76;
  v78 = *(v76 + 1);
  LOBYTE(v141) = 3;
  v79 = v139;
  sub_22BA10B7C();
  v139 = v79;
  if (v79)
  {
    goto LABEL_22;
  }

  v80 = &v138[v47[18]];
  v81 = *v80;
  v82 = *(v80 + 1);
  LOBYTE(v141) = 4;
  sub_22BA10B7C();
  v139 = 0;
  v83 = &v138[v47[19]];
  v84 = *v83;
  v85 = *(v83 + 1);
  LOBYTE(v141) = 5;
  sub_22BA10B7C();
  v139 = 0;
  v86 = &v138[v47[21]];
  v87 = *v86;
  v88 = *(v86 + 1);
  LOBYTE(v141) = 7;
  sub_22BA10B7C();
  v139 = 0;
  v89 = &v138[v47[22]];
  v90 = *v89;
  v91 = v89[8];
  LOBYTE(v141) = 8;
  sub_22BA10B9C();
  v139 = 0;
  v92 = &v138[v47[24]];
  v93 = *v92;
  v94 = *(v92 + 1);
  LOBYTE(v141) = 10;
  sub_22BA10B7C();
  v139 = 0;
  v95 = &v138[v47[25]];
  v96 = *v95;
  v97 = v95[8];
  LOBYTE(v141) = 11;
  sub_22BA10BBC();
  v139 = 0;
  v98 = &v138[v47[27]];
  v99 = *v98;
  v100 = *(v98 + 1);
  LOBYTE(v141) = 13;
  sub_22BA10B7C();
  v139 = 0;
  v101 = &v138[v47[28]];
  v102 = *v101;
  v103 = v101[8];
  LOBYTE(v141) = 14;
  sub_22BA10B9C();
  v139 = 0;
  v104 = *&v138[v47[20]];
  if (v104)
  {
    v105 = v139;
    sub_22B967D44(v134, v104);
    v139 = v105;
  }

  v106 = &v138[v47[26]];
  if ((v106[17] & 1) == 0)
  {
    v107 = v139;
    sub_22B948DD0(v134, *v106, *(v106 + 1), v106[16] & 1);
    v139 = v107;
  }

  v108 = *&v138[v47[31]];
  if (v108 != 1)
  {
    v109 = v134[4];
    sub_22B9358B4(v134, v134[3]);
    sub_22B993514();
    sub_22BA10D9C();
    if (v108)
    {
      v110 = [v108 data];
      if (v110)
      {
        v111 = v110;
        v112 = sub_22BA0FCAC();
        v114 = v113;
      }

      else
      {
        v112 = 0;
        v114 = 0xF000000000000000;
      }

      *&v141 = v112;
      *(&v141 + 1) = v114;
      sub_22B9349C8(&qword_27D8D54F8, &unk_22BA180B0);
      sub_22B993568();
      v116 = v131;
      v115 = v132;
      v117 = v139;
      sub_22BA10BEC();
      sub_22B9930E0(v108);
      sub_22B9359A8(v141, *(&v141 + 1));
      (*(v133 + 8))(v115, v116);
      v139 = v117;
      if (v117)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (*(v133 + 8))(v132, v131);
    }
  }

  v118 = *&v138[v47[32]];
  if (v118)
  {
    sub_22B98C510(v118);
    v119 = sub_22BA0FF5C();
  }

  else
  {
    v119 = 0;
  }

  v120 = JWEncodeDictionary();

  if (v120)
  {
    v121 = sub_22BA0FCAC();
    v123 = v122;
  }

  else
  {
    v121 = 0;
    v123 = 0xF000000000000000;
  }

  *&v141 = v121;
  *(&v141 + 1) = v123;
  v140 = 17;
  sub_22B968DB4();
  v124 = v136;
  v125 = v137;
  v126 = v139;
  sub_22BA10BAC();
  (*(v135 + 8))(v124, v125);
  (*(v130 + 8))(v127, v128);
  result = sub_22B9359A8(v121, v123);
  v139 = v126;
LABEL_6:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B98BF80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B9349C8(&qword_27D8D5508, &unk_22BA16DE0);
    v2 = sub_22BA10A8C();
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_22B936C98(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_22B936C98(v34, v35);
    v19 = *(v2 + 40);
    result = sub_22BA1084C();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_22B936C98(v35, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_22B98C248(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B9349C8(&qword_27D8D5508, &unk_22BA16DE0);
    v2 = sub_22BA10A8C();
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22B936B20(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_22B936C98(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22B936C98(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22B936C98(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22BA1084C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_22B936C98(v33, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_22B98C510(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B9349C8(&qword_27D8D5508, &unk_22BA16DE0);
    v2 = sub_22BA10A8C();
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22B936C98(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22B936C98(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22BA1084C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_22B936C98(v33, (*(v2 + 56) + 32 * v10));
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

unint64_t sub_22B98C7DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B9349C8(&qword_27D8D5510, &qword_22BA16DF0);
    v2 = sub_22BA10A8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
        swift_dynamicCast();
        sub_22B936C98(&v25, v27);
        sub_22B936C98(v27, v28);
        sub_22B936C98(v28, &v26);
        result = sub_22B990A58(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_22B936C4C(v12);
          result = sub_22B936C98(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_22B936C98(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_22B98CA3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B9349C8(&qword_27D8D5510, &qword_22BA16DF0);
    v2 = sub_22BA10A8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_22B936C98(&v27, v29);
        sub_22B936C98(v29, v30);
        sub_22B936C98(v30, &v28);
        result = sub_22B990A58(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_22B936C4C(v12);
          result = sub_22B936C98(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_22B936C98(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22B98CC94(char a1)
{
  result = 7107699;
  switch(a1)
  {
    case 1:
      result = 6648947;
      break;
    case 2:
      result = 1886351984;
      break;
    case 3:
      result = 6580579;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 6580583;
      break;
    case 6:
      result = 0x737470637470;
      break;
    case 7:
      result = 6840684;
      break;
    case 8:
      result = 1953261926;
      break;
    case 9:
      result = 2037543283;
      break;
    case 10:
      result = 1684629359;
      break;
    case 11:
      result = 7174002;
      break;
    case 12:
      result = 0x313030706F7270;
      break;
    case 13:
      result = 0x656D616E6D6F6F72;
      break;
    case 14:
      result = 0x74617453636E7973;
      break;
    case 15:
      result = 1684631655;
      break;
    case 16:
      result = 0x737465737361;
      break;
    case 17:
      result = 1935960420;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22B98CDF0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22B98CC94(*a1);
  v5 = v4;
  if (v3 == sub_22B98CC94(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22B98CE78()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B98CC94(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B98CEDC()
{
  sub_22B98CC94(*v0);
  sub_22BA1008C();
}

uint64_t sub_22B98CF30()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B98CC94(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B98CF90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B993AD4();
  *a2 = result;
  return result;
}

uint64_t sub_22B98CFC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B98CC94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22B98D008@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22B993AD4();
  *a1 = result;
  return result;
}

uint64_t sub_22B98D04C(uint64_t a1)
{
  v2 = sub_22B9930F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B98D088(uint64_t a1)
{
  v2 = sub_22B9930F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22B98D0C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4[1];
  if (v5)
  {
    v10 = *v4;
    v11 = objc_opt_self();

    v12 = [v11 sharedFeatureFlags];
    v13 = [v12 isOneChatEnabled];

    if (v13)
    {
      v29 = v10;
      v30 = v5;
      v14 = *MEMORY[0x277D1A5F8];
      sub_22BA0FFFC();
      sub_22B936ACC();
      v15 = sub_22BA1079C();

      if (v15)
      {
        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v16 = sub_22BA0FEFC();
        sub_22B936CA8(v16, qword_28141AD40);

        v17 = sub_22BA0FEDC();
        v18 = sub_22BA1044C();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v29 = v20;
          *v19 = 136315650;
          *(v19 + 4) = sub_22B99153C(a3, a4, &v29);
          *(v19 + 12) = 2080;
          *(v19 + 14) = sub_22B99153C(a1, a2, &v29);
          *(v19 + 22) = 2080;
          *(v19 + 24) = sub_22B99153C(v10, v5, &v29);
          _os_log_impl(&dword_22B92A000, v17, v18, "[%s] %s guid: %s", v19, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23189ADD0](v20, -1, -1);
          MEMORY[0x23189ADD0](v19, -1, -1);
        }

        v21 = [objc_opt_self() sharedInstance];
        if (v21)
        {
          v22 = v21;
          v28 = sub_22BA0FFCC();
          v27 = sub_22BA0FFCC();
          v29 = a3;
          v30 = a4;

          MEMORY[0x231899730](45, 0xE100000000000000);
          MEMORY[0x231899730](a1, a2);
          v23 = sub_22BA0FFCC();

          sub_22B9349C8(&qword_27D8D54C0, &qword_22BA16D70);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22BA13CB0;
          v29 = 1684632935;
          v30 = 0xE400000000000000;
          v25 = MEMORY[0x277D837D0];
          sub_22BA1086C();
          *(inited + 96) = v25;
          *(inited + 72) = v10;
          *(inited + 80) = v5;
          sub_22B9BBEF0(inited);
          swift_setDeallocating();
          sub_22B936BEC(inited + 32, &unk_27D8D57B0, &unk_22BA16D78);
          v26 = sub_22BA0FF5C();

          [v22 forceAutoBugCaptureWithSubType:v28 errorPayload:0 type:v27 context:v23 metadata:v26];

          sub_22B98FB4C(a1, a2, a3, a4);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_22B98D54C()
{
  v1 = type metadata accessor for ChatRecord(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B974E6C(v0 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord, v5);
  v6 = *(v5 + 8);
  v7 = *(v5 + 9);

  sub_22B974ED0(v5);
  return v6;
}

uint64_t sub_22B98D6D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + 48);
  v2 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + 56);

  return v1;
}

uint64_t sub_22B98D784()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + 32);
  v2 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + 40);

  return v1;
}

uint64_t sub_22B98D830()
{
  v1 = type metadata accessor for ChatRecord(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B974E6C(v0 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord, v5);
  v6 = *(v5 + 10);
  v7 = *(v5 + 11);

  sub_22B974ED0(v5);
  return v6;
}

uint64_t sub_22B98D8CC(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for ChatRecord(0);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      if (*(v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + 8))
      {
        v10 = *(v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord);

        v11 = sub_22BA0FFCC();
      }

      else
      {
        v11 = 0;
      }

      v12 = IMAnyServiceGUIDFromLegacyChatGUID();

      if (v12)
      {
        v13 = sub_22BA0FFFC();

        return v13;
      }

      return 0;
    }

    if (a1 == 6518387 && a2 == 0xE300000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      v16 = *(v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + 16);
      v15 = *(v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + 24);
LABEL_19:

      return v16;
    }

    if (a1 == 6580579 && a2 == 0xE300000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      v17 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
      v18 = v5[17];
LABEL_18:
      v19 = (v17 + v18);
      v16 = *v19;
      v20 = v19[1];
      goto LABEL_19;
    }

    if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      v17 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
      v18 = v5[18];
      goto LABEL_18;
    }

    if (a1 == 6580583 && a2 == 0xE300000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      v17 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
      v18 = v5[19];
      goto LABEL_18;
    }

    if (a1 == 6840684 && a2 == 0xE300000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      v17 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
      v18 = v5[21];
      goto LABEL_18;
    }

    if (a1 == 1684629359 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      v17 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
      v18 = v5[24];
      goto LABEL_18;
    }

    if (a1 == 1684631655 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      sub_22B974E6C(v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord, v9);
      v21 = &v9[v5[29]];
      v23 = *v21;
      v22 = *(v21 + 1);

      sub_22B974ED0(v9);
      return v23;
    }
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v24 = sub_22BA0FEFC();
  sub_22B936CA8(v24, qword_28141AD40);

  v25 = sub_22BA0FEDC();
  v26 = sub_22BA1044C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v28;
    *v27 = 136315138;
    if (a2)
    {
      v29 = a2;
    }

    else
    {
      a1 = 0x79656B206C696E28;
      v29 = 0xEE002921656D614ELL;
    }

    v30 = sub_22B99153C(a1, v29, &v32);

    *(v27 + 4) = v30;
    _os_log_impl(&dword_22B92A000, v25, v26, "While decoding ChatRecord, unexpected string(forKey:%s request", v27, 0xCu);
    sub_22B936C4C(v28);
    MEMORY[0x23189ADD0](v28, -1, -1);
    MEMORY[0x23189ADD0](v27, -1, -1);
  }

  return 0;
}

uint64_t sub_22B98DE60(uint64_t a1, unint64_t a2)
{
  v4 = a1;
  if (!a2)
  {
LABEL_31:
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v14 = sub_22BA0FEFC();
    sub_22B936CA8(v14, qword_28141AD40);

    v15 = sub_22BA0FEDC();
    v16 = sub_22BA1044C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      if (a2)
      {
        v19 = a2;
      }

      else
      {
        v4 = 0x79656B206C696E28;
        v19 = 0xEE002921656D614ELL;
      }

      v20 = sub_22B99153C(v4, v19, &v21);

      *(v17 + 4) = v20;
      _os_log_impl(&dword_22B92A000, v15, v16, "While decoding ChatRecord, unexpected number(forKey:%s) request", v17, 0xCu);
      sub_22B936C4C(v18);
      MEMORY[0x23189ADD0](v18, -1, -1);
      MEMORY[0x23189ADD0](v17, -1, -1);
    }

    return 0;
  }

  v5 = a1 == 7107699 && a2 == 0xE300000000000000;
  if (v5 || (sub_22BA10C6C() & 1) != 0)
  {
    v6 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
    v7 = *(type metadata accessor for ChatRecord(0) + 52);
    goto LABEL_8;
  }

  if (v4 == 6648947 && a2 == 0xE300000000000000 || (sub_22BA10C6C() & 1) != 0)
  {
    v6 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
    v7 = *(type metadata accessor for ChatRecord(0) + 56);
    goto LABEL_8;
  }

  if (v4 == 1953261926 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
  {
    v6 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
    v7 = *(type metadata accessor for ChatRecord(0) + 88);
    goto LABEL_8;
  }

  if (v4 == 2037543283 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
  {
    v6 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
    v7 = *(type metadata accessor for ChatRecord(0) + 92);
    goto LABEL_8;
  }

  if ((v4 != 7174002 || a2 != 0xE300000000000000) && (sub_22BA10C6C() & 1) == 0)
  {
    if (v4 == 0x74617453636E7973 && a2 == 0xE900000000000065 || (sub_22BA10C6C() & 1) != 0)
    {
      v6 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
      v7 = *(type metadata accessor for ChatRecord(0) + 112);
LABEL_8:
      v8 = (v6 + v7);
      if ((v8[1] & 1) == 0)
      {
        v9 = *v8;
        return sub_22BA1039C();
      }

      return 0;
    }

    goto LABEL_31;
  }

  v11 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
  v12 = (v11 + *(type metadata accessor for ChatRecord(0) + 100));
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    return sub_22BA10D2C();
  }

  return 0;
}

unint64_t sub_22B98E2A8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for ChatRecord(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_15;
  }

  if ((a1 != 1886351984 || a2 != 0xE400000000000000) && (sub_22BA10C6C() & 1) == 0)
  {
    if (a1 == 0x313030706F7270 && a2 == 0xE700000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      return sub_22B98E960();
    }

    if (a1 == 1935960420 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      if (*(v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + *(v5 + 128)))
      {

        v10 = sub_22B98C7DC(v11);

        return v10;
      }

      return 0;
    }

LABEL_15:
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v12 = sub_22BA0FEFC();
    sub_22B936CA8(v12, qword_28141AD40);

    v13 = sub_22BA0FEDC();
    v14 = sub_22BA1044C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      if (a2)
      {
        v17 = a2;
      }

      else
      {
        a1 = 0x79656B206C696E28;
        v17 = 0xEE002921656D614ELL;
      }

      v18 = sub_22B99153C(a1, v17, &v21);

      *(v15 + 4) = v18;
      _os_log_impl(&dword_22B92A000, v13, v14, "While decoding ChatRecord, unexpected dict(forKey:%s) request", v15, 0xCu);
      sub_22B936C4C(v16);
      MEMORY[0x23189ADD0](v16, -1, -1);
      MEMORY[0x23189ADD0](v15, -1, -1);
    }

    return 0;
  }

  sub_22B974E6C(v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord, v9);
  v10 = *&v9[*(v5 + 60)];

  sub_22B974ED0(v9);
  return v10;
}

id sub_22B98E674(uint64_t a1, unint64_t a2)
{
  v4 = a1;
  if (!a2 || (a1 != 0x3130306F746F7270 || a2 != 0xE800000000000000) && (sub_22BA10C6C() & 1) == 0)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141AD40);

    v11 = sub_22BA0FEDC();
    v12 = sub_22BA1044C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      if (a2)
      {
        v15 = a2;
      }

      else
      {
        v4 = 0x79656B206C696E28;
        v15 = 0xEE002921656D614ELL;
      }

      v16 = sub_22B99153C(v4, v15, &v17);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_22B92A000, v11, v12, "While decoding ChatRecord, unexpected data(forKey:%s) request", v13, 0xCu);
      sub_22B936C4C(v14);
      MEMORY[0x23189ADD0](v14, -1, -1);
      MEMORY[0x23189ADD0](v13, -1, -1);
    }

    return 0;
  }

  v5 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
  v6 = *(v5 + *(type metadata accessor for ChatRecord(0) + 124));
  if (v6 < 2)
  {
    return 0;
  }

  result = [v6 data];
  if (result)
  {
    v8 = result;
    v9 = sub_22BA0FCAC();

    return v9;
  }

  return result;
}

unint64_t sub_22B98E960()
{
  v1 = v0 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
  v2 = 0;
  v3 = (v1 + *(type metadata accessor for ChatRecord(0) + 104));
  if (*(v3 + 17) & 1) != 0 || (v2 = *v3, (v3[2]))
  {
    sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    *(inited + 32) = 29811;
    v5 = inited + 32;
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v2;
    v6 = sub_22B9BBA8C(inited);
    swift_setDeallocating();
    sub_22B936BEC(v5, &unk_27D8D5770, &qword_22BA135E0);
  }

  else
  {
    v7 = v3[1];
    sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_22BA13410;
    *(v8 + 32) = 29811;
    v9 = MEMORY[0x277D83B88];
    *(v8 + 40) = 0xE200000000000000;
    *(v8 + 48) = v2;
    *(v8 + 72) = v9;
    *(v8 + 80) = 25715;
    *(v8 + 120) = MEMORY[0x277D84A28];
    *(v8 + 88) = 0xE200000000000000;
    *(v8 + 96) = v7;
    v6 = sub_22B9BBA8C(v8);
    swift_setDeallocating();
    sub_22B9349C8(&unk_27D8D5770, &qword_22BA135E0);
    swift_arrayDestroy();
  }

  return v6;
}

void *sub_22B98EADC()
{
  v1 = v0 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
  v2 = *(v1 + *(type metadata accessor for ChatRecord(0) + 80));
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v25 = *MEMORY[0x277D193A8];
  v24 = *MEMORY[0x277D193C0];
  v23 = *MEMORY[0x277D193A0];
  v4 = ( + 72);
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = *(v4 - 5);
    v7 = *(v4 - 4);
    v8 = *(v4 - 2);
    v26 = *(v4 - 3);
    v9 = *(v4 - 1);
    v10 = *v4;
    sub_22B9349C8(&qword_27D8D5110, &unk_22BA15140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    *(inited + 32) = sub_22BA0FFFC();
    *(inited + 40) = v12;
    *(inited + 48) = v6;
    *(inited + 56) = v7;

    swift_bridgeObjectRetain_n();

    v13 = sub_22B9BB884(inited);
    swift_setDeallocating();
    sub_22B936BEC(inited + 32, &qword_27D8D5118, &qword_22BA16E30);
    v27 = v13;
    if (v10)
    {
      v14 = sub_22BA0FFFC();
      v16 = v15;

      sub_22B9B50CC(v9, v10, v14, v16);
    }

    if (v8)
    {
      v17 = sub_22BA0FFFC();
      sub_22B9B50CC(v26, v8, v17, v18);
    }

    v19 = sub_22B98CA3C(v27);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_22B980090(0, v5[2] + 1, 1, v5);
    }

    v21 = v5[2];
    v20 = v5[3];
    if (v21 >= v20 >> 1)
    {
      v5 = sub_22B980090((v20 > 1), v21 + 1, 1, v5);
    }

    v4 += 6;
    v5[2] = v21 + 1;
    v5[v21 + 4] = v19;
    --v3;
  }

  while (v3);

  return v5;
}

uint64_t sub_22B98ED44(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  if (a2 && (a1 == 0x737470637470 && a2 == 0xE600000000000000 || (sub_22BA10C6C() & 1) != 0))
  {
    v4 = sub_22B98EADC();
    v5 = sub_22B98EF34(v4);

    return v5;
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v7 = sub_22BA0FEFC();
    sub_22B936CA8(v7, qword_28141AD40);

    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1044C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      if (a2)
      {
        v12 = a2;
      }

      else
      {
        v3 = 0x79656B206C696E28;
        v12 = 0xEE002921656D614ELL;
      }

      v13 = sub_22B99153C(v3, v12, &v14);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_22B92A000, v8, v9, "While decoding ChatRecord, unexpected array(forKey:%s) request", v10, 0xCu);
      sub_22B936C4C(v11);
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_22B98EF34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_22B968160(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;

      sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22B968160((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_22B936C98(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22B98F0F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for ChatRecord(0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v72 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v72 - v18;
  if (!a2)
  {
    goto LABEL_29;
  }

  if (a1 == 28775 && a2 == 0xE200000000000000 || (sub_22BA10C6C() & 1) != 0)
  {
    v20 = OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
    sub_22B974E6C(v3 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord, v19);
    v21 = *&v19[*(v7 + 120)];

    sub_22B974ED0(v19);
    if (v21)
    {
      if (*(v21 + 16))
      {
        v22 = sub_22B990A58(28775, 0xE200000000000000);
        if (v23)
        {
          v24 = (*(v21 + 56) + (v22 << 6));
          v25 = *v24;
          v26 = v24[1];

          sub_22BA0FC1C();
        }
      }

      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v28 = sub_22BA0FEFC();
      sub_22B936CA8(v28, qword_28141AD40);
      v29 = v3;
      v30 = v3;

      v31 = sub_22BA0FEDC();
      v32 = sub_22BA1044C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v72 = a3;
        v73 = v34;
        v35 = v34;
        *v33 = 136315650;
        *(v33 + 4) = sub_22B99153C(28775, 0xE200000000000000, &v73);
        *(v33 + 12) = 2080;
        sub_22B974E6C(v29 + v20, v16);
        v36 = &v16[*(v7 + 116)];
        v37 = *v36;
        v38 = v36[1];

        sub_22B974ED0(v16);
        if (v38)
        {
          v39 = v37;
        }

        else
        {
          v39 = 0xD000000000000010;
        }

        if (!v38)
        {
          v38 = 0x800000022BA1D870;
        }

        v40 = sub_22B99153C(v39, v38, &v73);

        *(v33 + 14) = v40;
        *(v33 + 22) = 2080;

        v41 = sub_22B99153C(a1, a2, &v73);

        *(v33 + 24) = v41;
        _os_log_impl(&dword_22B92A000, v31, v32, "While decoding ChatRecord, assets found in CKRecord, but no GroupPhoto asset found for %s, id %s assetURL(forKey:%s) request", v33, 0x20u);
        swift_arrayDestroy();
        v42 = v35;
        a3 = v72;
        MEMORY[0x23189ADD0](v42, -1, -1);
        MEMORY[0x23189ADD0](v33, -1, -1);
      }
    }

    v43 = sub_22BA0FC4C();
    return (*(*(v43 - 8) + 56))(a3, 1, 1, v43);
  }

  if ((a1 != 0x6162617274 || a2 != 0xE500000000000000) && (sub_22BA10C6C() & 1) == 0)
  {
LABEL_29:
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v53 = sub_22BA0FEFC();
    sub_22B936CA8(v53, qword_28141AD40);

    v54 = sub_22BA0FEDC();
    v55 = sub_22BA1044C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v73 = v57;
      *v56 = 136315138;
      if (a2)
      {
        v58 = a2;
      }

      else
      {
        a1 = 0x79656B206C696E28;
        v58 = 0xEE002921656D614ELL;
      }

      v59 = sub_22B99153C(a1, v58, &v73);

      *(v56 + 4) = v59;
      _os_log_impl(&dword_22B92A000, v54, v55, "While decoding ChatRecord, unexpected assetURL(forKey:%s) request", v56, 0xCu);
      sub_22B936C4C(v57);
      MEMORY[0x23189ADD0](v57, -1, -1);
      MEMORY[0x23189ADD0](v56, -1, -1);
    }

    v60 = sub_22BA0FC4C();
    v61 = *(*(v60 - 8) + 56);
    v62 = v60;
    v63 = a3;
    goto LABEL_37;
  }

  v44 = a3;
  v45 = [objc_opt_self() sharedFeatureFlags];
  v46 = [v45 isTranscriptBackgroundsMicEnabled];

  if (!v46)
  {
    v64 = sub_22BA0FC4C();
    v61 = *(*(v64 - 8) + 56);
    v62 = v64;
    v63 = v44;
LABEL_37:

    return v61(v63, 1, 1, v62);
  }

  sub_22B974E6C(v3 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord, v12);
  v47 = *&v12[*(v7 + 120)];

  sub_22B974ED0(v12);
  if (v47)
  {
    if (*(v47 + 16))
    {
      v48 = sub_22B990A58(0x6162617274, 0xE500000000000000);
      if (v49)
      {
        v50 = (*(v47 + 56) + (v48 << 6));
        v51 = *v50;
        v52 = v50[1];

        sub_22BA0FC1C();
      }
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v65 = sub_22BA0FEFC();
    sub_22B936CA8(v65, qword_28141AD40);

    v66 = sub_22BA0FEDC();
    v67 = sub_22BA1044C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v73 = v69;
      *v68 = 136315394;
      *(v68 + 4) = sub_22B99153C(0x6162617274, 0xE500000000000000, &v73);
      *(v68 + 12) = 2080;

      v70 = sub_22B99153C(a1, a2, &v73);

      *(v68 + 14) = v70;
      _os_log_impl(&dword_22B92A000, v66, v67, "While decoding ChatRecord, assets found in CKRecord, but no transcript background asset found for %s) assetURL(forKey:%s) request", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v69, -1, -1);
      MEMORY[0x23189ADD0](v68, -1, -1);
    }
  }

  v71 = sub_22BA0FC4C();
  return (*(*(v71 - 8) + 56))(v44, 1, 1, v71);
}

id ChatRecordKeyedDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ChatRecordKeyedDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChatRecordKeyedDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22B98FB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a2;
  v80 = a1;
  v6 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v72 - v9;
  v11 = sub_22BA0FE6C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v87 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22BA0FEAC();
  v86 = *(v88 - 8);
  v16 = *(v86 + 64);
  MEMORY[0x28223BE20](v88, v17);
  v85 = v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22BA0FE7C();
  v83 = *(v93 - 8);
  v19 = *(v83 + 64);
  MEMORY[0x28223BE20](v93, v20);
  v91 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_22BA0FE5C();
  v90 = *(v92 - 8);
  v22 = *(v90 + 64);
  MEMORY[0x28223BE20](v92, v23);
  v89 = v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22BA0FEBC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v84 = v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v94 = v72 - v31;
  v32 = [objc_opt_self() sharedInstance];
  if (v32)
  {
    v33 = v32;
    v78 = v12;
    v79 = v11;
    v34 = [v32 isInternalInstall];

    if (v34)
    {
      v35 = [objc_opt_self() sharedInstance];
      v36 = sub_22BA0FFCC();
      v37 = sub_22BA0FFCC();
      v38 = [v35 getBoolFromDomain:v36 forKey:v37];

      if (v38)
      {
        v95 = 0x616E7265746E495BLL;
        v96 = 0xEB00000000205D6CLL;
        v39 = a3;
        MEMORY[0x231899730](a3, a4);
        v74 = v95;
        v73 = v96;
        v95 = 0x5B205D5254545BLL;
        v96 = 0xE700000000000000;
        MEMORY[0x231899730](a3, a4);
        MEMORY[0x231899730](8285, 0xE200000000000000);
        v40 = v80;
        v41 = v81;
        MEMORY[0x231899730](v80, v81);
        v72[1] = v95;
        v72[2] = v96;
        v95 = 0;
        v96 = 0xE000000000000000;
        sub_22BA108FC();
        MEMORY[0x231899730](0xD00000000000003CLL, 0x800000022BA1D9A0);
        MEMORY[0x231899730](v39, a4);
        MEMORY[0x231899730](0x657079746275530ALL, 0xEA0000000000203ALL);
        MEMORY[0x231899730](v40, v41);
        MEMORY[0x231899730](0x203A646975670ALL, 0xE700000000000000);
        v42 = v82[1];
        v76 = v25;
        v77 = v10;
        v75 = v26;
        if (v42)
        {
          v43 = *v82;
          v44 = v42;
        }

        else
        {
          v44 = 0xE500000000000000;
          v43 = 0x3E6C696E3CLL;
        }

        v82 = 0x800000022BA1D9E0;

        MEMORY[0x231899730](v43, v44);

        v81 = v95;
        (*(v90 + 104))(v89, *MEMORY[0x277D195A8], v92);
        v45 = *MEMORY[0x277D195D8];
        v46 = v83;
        (*(v83 + 104))();
        sub_22B9349C8(&qword_27D8D54C8, &qword_22BA16D88);
        v47 = sub_22BA0FE4C();
        v48 = *(v47 - 8);
        v49 = *(v48 + 72);
        v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_22BA13410;
        v52 = v51 + v50;
        v53 = *(v48 + 104);
        v53(v52, *MEMORY[0x277D195A0], v47);
        v53(v52 + v49, *MEMORY[0x277D19598], v47);
        v54 = v85;
        sub_22BA0FE9C();
        v56 = v78;
        v55 = v79;
        v57 = v87;
        (*(v78 + 104))(v87, *MEMORY[0x277D195C8], v79);
        v58 = v89;
        sub_22BA0FE3C();

        (*(v56 + 8))(v57, v55);
        (*(v86 + 8))(v54, v88);
        (*(v46 + 8))(v91, v93);
        (*(v90 + 8))(v58, v92);
        v59 = sub_22BA1030C();
        v60 = v77;
        (*(*(v59 - 8) + 56))(v77, 1, 1, v59);
        v61 = v75;
        v62 = v84;
        v63 = v94;
        v64 = v76;
        (*(v75 + 16))(v84, v94, v76);
        v65 = (*(v61 + 80) + 32) & ~*(v61 + 80);
        v66 = (v27 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
        v67 = swift_allocObject();
        *(v67 + 16) = 0;
        *(v67 + 24) = 0;
        (*(v61 + 32))(v67 + v65, v62, v64);
        v68 = (v67 + v66);
        v69 = v73;
        *v68 = v74;
        v68[1] = v69;
        v70 = (v67 + ((v66 + 23) & 0xFFFFFFFFFFFFFFF8));
        v71 = v82;
        *v70 = 0xD000000000000060;
        v70[1] = v71;
        sub_22B989328(0, 0, v60, &unk_22BA16D98, v67);

        (*(v61 + 8))(v63, v64);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B99045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v13 = *(MEMORY[0x277D195E0] + 4);
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_22B990568;

  return MEMORY[0x282173A00](0xD00000000000001ELL, 0x800000022BA1DA50, 0xD000000000000013, 0x800000022BA1D960, a5, a6, a7, a8);
}

uint64_t sub_22B990568()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {

    v3 = sub_22B993B28;
  }

  else
  {
    v3 = sub_22B990684;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B9906AC(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[9];
  v7 = a2[6];
  v6 = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  v20 = v8;
  v21 = a1[8];
  if (a1[4] != a2[4] || a1[5] != a2[5])
  {
    v10 = a1;
    v11 = a2;
    v12 = sub_22BA10C6C();
    a2 = v11;
    v13 = v12;
    a1 = v10;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = v2 - 1;
  v15 = a2 + 15;
  for (i = a1 + 15; ; i += 6)
  {
    if (v3)
    {
      if (!v6 || (v4 != v7 || v3 != v6) && (sub_22BA10C6C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }

    if (!v5)
    {
      break;
    }

    if (!v9)
    {
      goto LABEL_33;
    }

    if (v21 == v20 && v5 == v9)
    {
      goto LABEL_24;
    }

    v17 = sub_22BA10C6C();

    if ((v17 & 1) == 0)
    {
      return 0;
    }

LABEL_26:
    if (!v14)
    {
      return 1;
    }

    v4 = *(i - 3);
    v3 = *(i - 2);
    v5 = *i;
    v7 = *(v15 - 3);
    v6 = *(v15 - 2);
    v18 = *(v15 - 1);
    v9 = *v15;
    v20 = v18;
    v21 = *(i - 1);
    if ((*(i - 5) != *(v15 - 5) || *(i - 4) != *(v15 - 4)) && (sub_22BA10C6C() & 1) == 0)
    {
      return 0;
    }

    --v14;
    v15 += 6;
  }

  if (!v9)
  {

LABEL_24:

    goto LABEL_26;
  }

LABEL_33:

  return 0;
}

uint64_t sub_22B9908B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_22B990A58(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v20 + 40);
      v24 = (v16 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_22BA10C6C();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_22B990A58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22BA10D3C();
  sub_22BA1008C();
  v6 = sub_22BA10D6C();

  return sub_22B990DBC(a1, a2, v6);
}

unint64_t sub_22B990AD0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22BA1084C();

  return sub_22B990E74(a1, v5);
}

unint64_t sub_22B990B14(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22BA1071C();
  return sub_22B991214(a1, v5, &qword_281414BE0, 0x277CBC5D0);
}

unint64_t sub_22B990B64(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22BA10D3C();
  sub_22BA1008C();

  v4 = sub_22BA10D6C();

  return sub_22B990F3C(a1, v4);
}

unint64_t sub_22B990C6C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22BA0FFFC();
  sub_22BA10D3C();
  sub_22BA1008C();
  v4 = sub_22BA10D6C();

  return sub_22B991110(a1, v4);
}

unint64_t sub_22B990D00(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22BA1071C();
  return sub_22B991214(a1, v5, &qword_281414B80, 0x277CBC5F8);
}

unint64_t sub_22B990D50(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](a1);
  v4 = sub_22BA10D6C();

  return sub_22B9912E0(a1, v4);
}

unint64_t sub_22B990DBC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22BA10C6C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22B990E74(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22B958068(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x231899EC0](v9, a1);
      sub_22B9580C4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22B990F3C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v5 = *(*(v22 + 48) + v4);
      v6 = v5 == 2 ? 0xD000000000000011 : 0x646574726F706D69;
      v7 = v5 == 2 ? 0x800000022BA1C230 : 0xE800000000000000;
      v8 = *(*(v22 + 48) + v4) ? 0x546E657474697277 : 0x6D6F724664616572;
      v9 = *(*(v22 + 48) + v4) ? 0xEF64756F6C43696FLL : 0xEE0064756F6C4369;
      v10 = *(*(v22 + 48) + v4) <= 1u ? v8 : v6;
      v11 = *(*(v22 + 48) + v4) <= 1u ? v9 : v7;
      v12 = v21 == 2 ? 0xD000000000000011 : 0x646574726F706D69;
      v13 = v21 == 2 ? 0x800000022BA1C230 : 0xE800000000000000;
      v14 = v21 ? 0x546E657474697277 : 0x6D6F724664616572;
      v15 = v21 ? 0xEF64756F6C43696FLL : 0xEE0064756F6C4369;
      v16 = v21 <= 1 ? v14 : v12;
      v17 = v21 <= 1 ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = sub_22BA10C6C();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v20;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22B991110(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22BA0FFFC();
      v9 = v8;
      if (v7 == sub_22BA0FFFC() && v9 == v10)
      {
        break;
      }

      v12 = sub_22BA10C6C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22B991214(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_22B951A54(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_22BA1072C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_22B9912E0(uint64_t a1, uint64_t a2)
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

uint64_t sub_22B99134C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B991444;

  return v7(a1);
}

uint64_t sub_22B991444()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B99153C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22B991608(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22B936B20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_22B936C4C(v11);
  return v7;
}

unint64_t sub_22B991608(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22B991714(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22BA1098C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22B991714(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B991760(a1, a2);
  sub_22B991890(&unk_283F509C0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22B991760(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22B99197C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22BA1098C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22BA100EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22B99197C(v10, 0);
        result = sub_22BA108CC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22B991890(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22B9919F0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22B99197C(uint64_t a1, uint64_t a2)
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

  sub_22B9349C8(&qword_27D8D5518, &qword_22BA16E38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22B9919F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5518, &qword_22BA16E38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_22B991B04(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B991B44()
{
  result = type metadata accessor for ChatRecord(319);
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

void sub_22B991E1C()
{
  sub_22B9651AC(319, &qword_281414C40);
  if (v0 <= 0x3F)
  {
    sub_22B992110(319, &qword_281415D70, &qword_27D8D5478, &unk_22BA173E0, type metadata accessor for EquatableNoop);
    if (v1 <= 0x3F)
    {
      sub_22B992110(319, qword_281415D88, &unk_27D8D4A90, &qword_22BA126A0, type metadata accessor for EquatableNoop);
      if (v2 <= 0x3F)
      {
        sub_22B9651AC(319, &qword_281414BF8);
        if (v3 <= 0x3F)
        {
          sub_22B992110(319, &qword_281415D78, &qword_27D8D5480, &qword_22BA16C98, type metadata accessor for EquatableNoop);
          if (v4 <= 0x3F)
          {
            sub_22B9651AC(319, &qword_2814158B0);
            if (v5 <= 0x3F)
            {
              sub_22B9651AC(319, &qword_281414A10);
              if (v6 <= 0x3F)
              {
                sub_22B9651AC(319, &qword_2814158D8);
                if (v7 <= 0x3F)
                {
                  sub_22B992110(319, &qword_281415D80, &qword_27D8D5488, &qword_22BA16CA0, type metadata accessor for EquatableNoop);
                  if (v8 <= 0x3F)
                  {
                    sub_22B9651AC(319, &qword_281414DB8);
                    if (v9 <= 0x3F)
                    {
                      sub_22B992110(319, &qword_281414C58, &qword_27D8D5490, &qword_22BA16CA8, MEMORY[0x277D83D88]);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_22B992110(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22B948760(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22B992174(uint64_t a1)
{
  *(a1 + 8) = sub_22B9921F8(&qword_281416390, type metadata accessor for ChatRecord);
  result = sub_22B9921F8(&qword_281416398, type metadata accessor for ChatRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B9921F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22B992240(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_22B992390(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_22BA108EC();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_22BA1098C() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_22B992390(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_22B992428(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_22B99249C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22B992428(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_22B9925C0(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22B99249C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_22BA1098C();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_22B9925C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22BA1010C();
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
    v5 = MEMORY[0x231899760](15, a1 >> 16);
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

uint64_t sub_22B99263C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_22B992730;

  return v6(v2 + 16);
}

uint64_t sub_22B992730()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B992860(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_22B992954;

  return v6(v2 + 32);
}

uint64_t sub_22B992954()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

BOOL sub_22B992A68(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_22BA10C6C();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_22BA10C6C();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = sub_22BA10C6C();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = a2[7];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    v26 = a1;
    v27 = a2;
    if ((a1[6] != a2[6] || v24 != v25) && (sub_22BA10C6C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v26 = a1;
    v27 = a2;
    if (v25)
    {
      return 0;
    }
  }

  v28 = type metadata accessor for ChatRecord(0);
  v29 = v28[13];
  v30 = (v26 + v29);
  v31 = *(v26 + v29 + 8);
  v32 = (v27 + v29);
  v33 = *(v27 + v29 + 8);
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  v34 = v28[14];
  v35 = (v26 + v34);
  v36 = *(v26 + v34 + 8);
  v37 = (v27 + v34);
  v38 = *(v27 + v34 + 8);
  if (v36)
  {
    if (!v38)
    {
      return 0;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v38) = 1;
    }

    if (v38)
    {
      return 0;
    }
  }

  v39 = v28[16];
  v40 = (v26 + v39);
  v41 = *(v26 + v39 + 8);
  v42 = (v27 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43)
    {
      return 0;
    }

    if (*v40 != *v42 || v41 != v43)
    {
      v44 = v28;
      v45 = sub_22BA10C6C();
      v28 = v44;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v43)
  {
    return 0;
  }

  v46 = v28[17];
  v47 = (v26 + v46);
  v48 = *(v26 + v46 + 8);
  v49 = (v27 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (!v50)
    {
      return 0;
    }

    if (*v47 != *v49 || v48 != v50)
    {
      v51 = v28;
      v52 = sub_22BA10C6C();
      v28 = v51;
      if ((v52 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v50)
  {
    return 0;
  }

  v53 = v28[18];
  v54 = (v26 + v53);
  v55 = *(v26 + v53 + 8);
  v56 = (v27 + v53);
  v57 = v56[1];
  if (v55)
  {
    if (!v57)
    {
      return 0;
    }

    if (*v54 != *v56 || v55 != v57)
    {
      v58 = v28;
      v59 = sub_22BA10C6C();
      v28 = v58;
      if ((v59 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v57)
  {
    return 0;
  }

  v60 = v28[19];
  v61 = (v26 + v60);
  v62 = *(v26 + v60 + 8);
  v63 = (v27 + v60);
  v64 = v63[1];
  if (v62)
  {
    if (!v64)
    {
      return 0;
    }

    if (*v61 != *v63 || v62 != v64)
    {
      v65 = v28;
      v66 = sub_22BA10C6C();
      v28 = v65;
      if ((v66 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v64)
  {
    return 0;
  }

  v67 = v28[20];
  v68 = *(v26 + v67);
  v69 = *(v27 + v67);
  if (v68)
  {
    if (!v69)
    {
      return 0;
    }

    v70 = v28;
    v71 = *(v27 + v67);

    v72 = sub_22B9906AC(v68, v69);

    if ((v72 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v70 = v28;
    if (v69)
    {
      return 0;
    }
  }

  v73 = v70[21];
  v74 = (v26 + v73);
  v75 = *(v26 + v73 + 8);
  v76 = (v27 + v73);
  v77 = v76[1];
  if (v75)
  {
    if (!v77 || (*v74 != *v76 || v75 != v77) && (sub_22BA10C6C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v77)
  {
    return 0;
  }

  v78 = v70[22];
  v79 = (v26 + v78);
  v80 = *(v26 + v78 + 8);
  v81 = (v27 + v78);
  v82 = *(v27 + v78 + 8);
  if (v80)
  {
    if (!v82)
    {
      return 0;
    }
  }

  else
  {
    if (*v79 != *v81)
    {
      LOBYTE(v82) = 1;
    }

    if (v82)
    {
      return 0;
    }
  }

  v83 = v70[23];
  v84 = (v26 + v83);
  v85 = *(v26 + v83 + 8);
  v86 = (v27 + v83);
  v87 = *(v27 + v83 + 8);
  if (v85)
  {
    if (!v87)
    {
      return 0;
    }
  }

  else
  {
    if (*v84 != *v86)
    {
      LOBYTE(v87) = 1;
    }

    if (v87)
    {
      return 0;
    }
  }

  v88 = v70[24];
  v89 = (v26 + v88);
  v90 = *(v26 + v88 + 8);
  v91 = (v27 + v88);
  v92 = v91[1];
  if (v90)
  {
    if (!v92 || (*v89 != *v91 || v90 != v92) && (sub_22BA10C6C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v92)
  {
    return 0;
  }

  v93 = v70[25];
  v94 = (v26 + v93);
  v95 = *(v26 + v93 + 8);
  v96 = (v27 + v93);
  v97 = *(v27 + v93 + 8);
  if (v95)
  {
    if (!v97)
    {
      return 0;
    }
  }

  else
  {
    if (*v94 != *v96)
    {
      LOBYTE(v97) = 1;
    }

    if (v97)
    {
      return 0;
    }
  }

  v98 = v70[26];
  v99 = v26 + v98;
  v100 = *(v26 + v98 + 17);
  v101 = v27 + v98;
  v102 = v101[17];
  if (v100)
  {
    goto LABEL_109;
  }

  if ((v101[17] & 1) != 0 || *v99 != *v101)
  {
    return 0;
  }

  v102 = v101[16];
  if (v99[16])
  {
LABEL_109:
    if ((v102 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_110;
  }

  result = 0;
  if ((v101[16] & 1) == 0 && *(v99 + 1) == *(v101 + 1))
  {
LABEL_110:
    v103 = v70[27];
    v104 = (v26 + v103);
    v105 = *(v26 + v103 + 8);
    v106 = (v27 + v103);
    v107 = v106[1];
    if (v105)
    {
      if (!v107 || (*v104 != *v106 || v105 != v107) && (sub_22BA10C6C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v107)
    {
      return 0;
    }

    v109 = v70[28];
    v110 = (v26 + v109);
    v111 = *(v26 + v109 + 8);
    v112 = (v27 + v109);
    v113 = *(v27 + v109 + 8);
    if (v111)
    {
      if (!v113)
      {
        return 0;
      }
    }

    else
    {
      if (*v110 != *v112)
      {
        LOBYTE(v113) = 1;
      }

      if (v113)
      {
        return 0;
      }
    }

    v114 = v70[31];
    v115 = *(v26 + v114);
    v116 = *(v27 + v114);
    if (v115 == 1)
    {
      if (v116 != 1)
      {
        return 0;
      }
    }

    else
    {
      if (v116 == 1)
      {
        return 0;
      }

      if (v115)
      {
        if (!v116)
        {
          return 0;
        }

        sub_22B951A54(0, &qword_27D8D5498, 0x277D1ABD0);
        sub_22B9930D0(v116);
        sub_22B9930D0(v115);
        v122 = sub_22BA1072C();
        sub_22B9930E0(v115);
        sub_22B9930E0(v116);
        if ((v122 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v116)
      {
        return 0;
      }
    }

    v117 = v70[32];
    v118 = *(v26 + v117);
    v119 = *(v27 + v117);
    if (v118)
    {
      if (!v119)
      {
        return 0;
      }

      v120 = *(v27 + v117);

      v121 = sub_22B9908B0(v118, v119);

      return (v121 & 1) != 0;
    }

    return !v119;
  }

  return result;
}

id sub_22B9930D0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_22B9930E0(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_22B9930F0()
{
  result = qword_2814163B0;
  if (!qword_2814163B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814163B0);
  }

  return result;
}

unint64_t sub_22B993144()
{
  result = qword_281414C60;
  if (!qword_281414C60)
  {
    sub_22B948760(&qword_27D8D54A8, &qword_22BA18970);
    sub_22B9931D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414C60);
  }

  return result;
}

unint64_t sub_22B9931D0()
{
  result = qword_2814159E8;
  if (!qword_2814159E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814159E8);
  }

  return result;
}

uint64_t sub_22B993224(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22BA0FEBC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_22B943E68;

  return sub_22B99045C(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

uint64_t sub_22B993378(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B945AC8;

  return sub_22B992860(a1, v5);
}

unint64_t sub_22B993430()
{
  result = qword_27D8D54F0;
  if (!qword_27D8D54F0)
  {
    sub_22B948760(&qword_27D8D5478, &unk_22BA173E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D54F0);
  }

  return result;
}

uint64_t sub_22B9934AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22B9349C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_22B993514()
{
  result = qword_281414DD0;
  if (!qword_281414DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414DD0);
  }

  return result;
}

unint64_t sub_22B993568()
{
  result = qword_27D8D5500;
  if (!qword_27D8D5500)
  {
    sub_22B948760(&qword_27D8D54F8, &unk_22BA180B0);
    sub_22B968DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5500);
  }

  return result;
}

uint64_t sub_22B9935EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B945AC8;

  return sub_22B99134C(a1, v5);
}

uint64_t sub_22B9936A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B945AC8;

  return sub_22B99263C(a1, v5);
}

uint64_t sub_22B99375C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B943E68;

  return sub_22B99263C(a1, v5);
}

uint64_t getEnumTagSinglePayload for ChatRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChatRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B993968()
{
  result = qword_27D8D5520;
  if (!qword_27D8D5520)
  {
    sub_22B948760(&qword_27D8D5528, qword_22BA16EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5520);
  }

  return result;
}

unint64_t sub_22B9939D0()
{
  result = qword_27D8D5530;
  if (!qword_27D8D5530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5530);
  }

  return result;
}

unint64_t sub_22B993A28()
{
  result = qword_2814163A0;
  if (!qword_2814163A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814163A0);
  }

  return result;
}

unint64_t sub_22B993A80()
{
  result = qword_2814163A8;
  if (!qword_2814163A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814163A8);
  }

  return result;
}

uint64_t sub_22B993AD4()
{
  v0 = sub_22BA10C7C();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22B993B2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9605E0;

  return sub_22B9943A0();
}

unint64_t sub_22B993BCC()
{
  v1 = v0 + *(type metadata accessor for MessageUpdateRecord() + 56);
  v2 = *(v1 + 8);
  if (v2 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v3 = *v1;
  sub_22B936A50(*v1, *(v1 + 8));
  v4 = sub_22BA0FC8C();
  v5 = [v4 _FTOptionallyDecompressData];

  if (v5)
  {
    v6 = sub_22BA0FCAC();
    v8 = v7;

    v9 = sub_22BA0FC8C();
    sub_22B9359BC(v6, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D1AC20]) initWithData_];

  sub_22B9359A8(v3, v2);
  if (!v10)
  {
LABEL_9:
    v18 = MEMORY[0x277D84F90];

    return sub_22B9BBA8C(v18);
  }

  else
  {
    if ([v10 hasMsgid])
    {
      v11 = [v10 msgid];
      v12 = MEMORY[0x277D84F98];
      if (v11)
      {
        v13 = v11;
        v14 = sub_22BA0FFFC();
        v16 = v15;

        v34 = MEMORY[0x277D837D0];
        *&v33 = v14;
        *(&v33 + 1) = v16;
        sub_22B936C98(&v33, v32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_22B9BAE64(v32, 4475213, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F98];
    }

    if ([v10 hasThreadGuid])
    {
      v20 = [v10 threadGuid];
      if (v20)
      {
        v21 = v20;
        v22 = sub_22BA0FFFC();
        v24 = v23;

        v34 = MEMORY[0x277D837D0];
        *&v33 = v22;
        *(&v33 + 1) = v24;
        sub_22B936C98(&v33, v32);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        sub_22B9BAE64(v32, 1145655124, 0xE400000000000000, v25);
      }
    }

    if ([v10 hasThreadPart] && (v26 = objc_msgSend(v10, sel_threadPart)) != 0)
    {
      v27 = v26;
      v28 = sub_22BA0FFFC();
      v30 = v29;

      v34 = MEMORY[0x277D837D0];
      *&v33 = v28;
      *(&v33 + 1) = v30;
      sub_22B936C98(&v33, v32);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64(v32, 0x747261504F54, 0xE600000000000000, v31);
    }

    else
    {
    }

    return v12;
  }
}